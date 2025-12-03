@interface FATManager
- (BOOL)isEOFCluster:(unint64_t)cluster;
- (id)syncMetaReadFromFAT:(void *)t startingAt:(int64_t)at;
- (id)updateFATStats;
- (unsigned)clustersPerBlock;
- (void)allocateClusters:(unsigned int)clusters searchFromCluster:(unsigned int)cluster allowPartial:(BOOL)partial zeroFill:(BOOL)fill mustBeContig:(BOOL)contig replyHandler:(id)handler;
- (void)clusterChainLength:(id)length replyHandler:(id)handler;
- (void)findNextFreeCluster:(unsigned int)cluster replyHandler:(id)handler;
- (void)freeClusterFrom:(unsigned int)from numClusters:(unsigned int)clusters replyHandler:(id)handler;
- (void)freeClusters:(unsigned int)clusters ofItem:(id)item replyHandler:(id)handler;
- (void)getContigClusterChainLengthStartingAt:(unsigned int)at replyHandler:(id)handler;
- (void)getDirtyBitValue:(id)value;
- (void)iterateClusterChainOfItem:(id)item replyHandler:(id)handler;
- (void)setDirtyBitValue:(unsigned __int8)value forceWriteToDisk:(BOOL)disk replyHandler:(id)handler;
@end

@implementation FATManager

- (unsigned)clustersPerBlock
{
  fsInfo = [(FATManager *)self fsInfo];
  type = [fsInfo type];

  rwSize = [(FATManager *)self rwSize];
  v6 = rwSize >> 2;
  if (!type)
  {
    v6 = 2 * rwSize / 3;
  }

  if (type == 1)
  {
    return rwSize >> 1;
  }

  else
  {
    return v6;
  }
}

- (id)syncMetaReadFromFAT:(void *)t startingAt:(int64_t)at
{
  v7 = at + [(FATManager *)self rwSize];
  fsInfo = [(FATManager *)self fsInfo];
  fatOffset = [fsInfo fatOffset];
  fsInfo2 = [(FATManager *)self fsInfo];
  v11 = &fatOffset[[fsInfo2 fatSize]];

  if (v7 <= v11)
  {
    rwSize = [(FATManager *)self rwSize];
  }

  else
  {
    fsInfo3 = [(FATManager *)self fsInfo];
    fatOffset2 = [fsInfo3 fatOffset];
    fsInfo4 = [(FATManager *)self fsInfo];
    rwSize = &fatOffset2[[fsInfo4 fatSize] - at];
  }

  device = [(FATManager *)self device];
  v17 = [Utilities syncMetaReadFromDevice:device into:t startingAt:at length:rwSize];

  return v17;
}

- (id)updateFATStats
{
  v3 = [FATBlock alloc];
  fsInfo = [(FATManager *)self fsInfo];
  v5 = -[FATBlock initWithOffset:andLength:](v3, "initWithOffset:andLength:", [fsInfo fatOffset], -[FATManager rwSize](self, "rwSize"));

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  fsInfo2 = [(FATManager *)self fsInfo];
  fatOffset = [fsInfo2 fatOffset];

  v8 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v36[2] = 0x2020000000;
  v37 = 1;
  v36[0] = 0;
  v36[1] = v36;
  while (1)
  {
    fsInfo3 = [(FATManager *)self fsInfo];
    fatOffset2 = [fsInfo3 fatOffset];
    fsInfo4 = [(FATManager *)self fsInfo];
    LOBYTE(fatOffset2) = fatOffset > &fatOffset2[[fsInfo4 fatSize]];

    if (fatOffset2)
    {
      break;
    }

    data = [(FATBlock *)v5 data];
    v13 = data;
    v14 = -[FATManager syncMetaReadFromFAT:startingAt:](self, "syncMetaReadFromFAT:startingAt:", [data mutableBytes], fatOffset);

    if (v14)
    {
      goto LABEL_19;
    }

    [(FATBlock *)v5 setStartOffset:fatOffset];
    v35[0] = _NSConcreteStackBlock;
    if (v8)
    {
      v15 = v8;
    }

    else
    {
      v15 = 2;
    }

    v35[1] = 3221225472;
    v35[2] = sub_10001AD90;
    v35[3] = &unk_1000510C8;
    v35[4] = &v38;
    v35[5] = v36;
    v35[6] = &v42;
    [(FATManager *)self countFreeClustersInBlock:v5 startingAt:v15 replyHandler:v35];
    v8 += [(FATManager *)self clustersPerBlock];
    fatOffset += [(FATManager *)self rwSize];
  }

  fsInfo5 = [(FATManager *)self fsInfo];
  if ([fsInfo5 freeClusters])
  {
    fsInfo6 = [(FATManager *)self fsInfo];
    freeClusters = [fsInfo6 freeClusters];
    v19 = freeClusters == *(v39 + 6);

    if (v19)
    {
      goto LABEL_13;
    }

    fsInfo5 = &_os_log_default;
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(v39 + 6);
      fsInfo7 = [(FATManager *)self fsInfo];
      sub_10003223C(v47, v21, [fsInfo7 freeClusters], fsInfo7);
      fsInfo5 = &_os_log_default;
    }
  }

LABEL_13:
  v23 = *(v39 + 6);
  fsInfo8 = [(FATManager *)self fsInfo];
  [fsInfo8 setFreeClusters:v23];

  fsInfo9 = [(FATManager *)self fsInfo];
  if (![fsInfo9 firstFreeCluster])
  {
LABEL_17:

    goto LABEL_18;
  }

  fsInfo10 = [(FATManager *)self fsInfo];
  firstFreeCluster = [fsInfo10 firstFreeCluster];
  v28 = firstFreeCluster == *(v43 + 6);

  if (!v28)
  {
    fsInfo9 = &_os_log_default;
    v29 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(v43 + 6);
      fsInfo11 = [(FATManager *)self fsInfo];
      sub_1000322AC(v46, v30, [fsInfo11 firstFreeCluster], fsInfo11);
      fsInfo9 = &_os_log_default;
    }

    goto LABEL_17;
  }

LABEL_18:
  v32 = *(v43 + 6);
  fsInfo12 = [(FATManager *)self fsInfo];
  [fsInfo12 setFirstFreeCluster:v32];

  v14 = 0;
LABEL_19:
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v14;
}

- (void)allocateClusters:(unsigned int)clusters searchFromCluster:(unsigned int)cluster allowPartial:(BOOL)partial zeroFill:(BOOL)fill mustBeContig:(BOOL)contig replyHandler:(id)handler
{
  handlerCopy = handler;
  fatQueue = [(FATManager *)self fatQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001B6CC;
  v16[3] = &unk_100051168;
  partialCopy = partial;
  v16[4] = self;
  v17 = handlerCopy;
  clustersCopy = clusters;
  clusterCopy = cluster;
  contigCopy = contig;
  v15 = handlerCopy;
  dispatch_barrier_sync(fatQueue, v16);
}

- (void)freeClusters:(unsigned int)clusters ofItem:(id)item replyHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  fatQueue = [(FATManager *)self fatQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001C988;
  v13[3] = &unk_1000511E0;
  v13[4] = self;
  v14 = itemCopy;
  clustersCopy = clusters;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = itemCopy;
  dispatch_barrier_sync(fatQueue, v13);
}

- (void)freeClusterFrom:(unsigned int)from numClusters:(unsigned int)clusters replyHandler:(id)handler
{
  handlerCopy = handler;
  fatQueue = [(FATManager *)self fatQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D270;
  block[3] = &unk_100050E00;
  fromCopy = from;
  clustersCopy = clusters;
  block[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_barrier_sync(fatQueue, block);
}

- (void)getContigClusterChainLengthStartingAt:(unsigned int)at replyHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D8CC;
  v11[3] = &unk_100051230;
  atCopy = at;
  v11[4] = self;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = objc_retainBlock(v11);
  label = dispatch_queue_get_label(0);
  fatQueue = [(FATManager *)self fatQueue];
  v9 = dispatch_queue_get_label(fatQueue);
  LODWORD(label) = strcmp(label, v9);

  if (label)
  {
    fatQueue2 = [(FATManager *)self fatQueue];
    dispatch_sync(fatQueue2, v6);
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)clusterChainLength:(id)length replyHandler:(id)handler
{
  lengthCopy = length;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001DAD0;
  v14[3] = &unk_100051280;
  selfCopy = self;
  handlerCopy = handler;
  v15 = lengthCopy;
  v7 = handlerCopy;
  v8 = lengthCopy;
  v9 = objc_retainBlock(v14);
  label = dispatch_queue_get_label(0);
  fatQueue = [(FATManager *)self fatQueue];
  v12 = dispatch_queue_get_label(fatQueue);
  LODWORD(label) = strcmp(label, v12);

  if (label)
  {
    fatQueue2 = [(FATManager *)self fatQueue];
    dispatch_sync(fatQueue2, v9);
  }

  else
  {
    (v9[2])(v9);
  }
}

- (void)iterateClusterChainOfItem:(id)item replyHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  fatQueue = [(FATManager *)self fatQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DDD8;
  block[3] = &unk_100051280;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = itemCopy;
  v9 = handlerCopy;
  v10 = itemCopy;
  dispatch_sync(fatQueue, block);
}

- (void)getDirtyBitValue:(id)value
{
  valueCopy = value;
  fatQueue = [(FATManager *)self fatQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001DFD0;
  v7[3] = &unk_100050E90;
  v7[4] = self;
  v8 = valueCopy;
  v6 = valueCopy;
  dispatch_sync(fatQueue, v7);
}

- (void)setDirtyBitValue:(unsigned __int8)value forceWriteToDisk:(BOOL)disk replyHandler:(id)handler
{
  handlerCopy = handler;
  fatQueue = [(FATManager *)self fatQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E23C;
  block[3] = &unk_1000512A8;
  diskCopy = disk;
  block[4] = self;
  v12 = handlerCopy;
  valueCopy = value;
  v10 = handlerCopy;
  dispatch_barrier_sync(fatQueue, block);
}

- (BOOL)isEOFCluster:(unint64_t)cluster
{
  fsInfo = [(FATManager *)self fsInfo];
  if (([fsInfo FATMask] & 0xFFFFFFF8) <= cluster)
  {
    fsInfo2 = [(FATManager *)self fsInfo];
    v6 = [fsInfo2 FATMask] >= cluster;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)findNextFreeCluster:(unsigned int)cluster replyHandler:(id)handler
{
  handlerCopy = handler;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  clusterCopy = cluster;
  v7 = [[FATBlock alloc] initWithOffset:0 andLength:[(FATManager *)self rwSize]];
  v21 = handlerCopy;
  v8 = [(FATManager *)self getRWOffsetForClusterEntry:*(v24 + 6)];
  v9 = 0;
  while (1)
  {
    [(FATBlock *)v7 setStartOffset:[(FATManager *)self getRWOffsetForClusterEntry:*(v24 + 6)]];
    data = [(FATBlock *)v7 data];
    v11 = -[FATManager syncMetaReadFromFAT:startingAt:](self, "syncMetaReadFromFAT:startingAt:", [data mutableBytes], -[FATBlock startOffset](v7, "startOffset"));

    if (v11)
    {
      v19 = v21;
      (*(v21 + 2))(v21, v11, 0, 0);
      goto LABEL_10;
    }

    v12 = *(v24 + 6);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001E87C;
    v22[3] = &unk_1000512D0;
    v22[4] = &v23;
    v22[5] = &v27;
    [(FATManager *)self findFreeClustersInBlock:v7 ofLength:1 contig:0 startCluster:v12 replyHandler:v22];
    if (*(v28 + 6))
    {
      v19 = v21;
      (*(v21 + 2))(v21, 0, *(v24 + 6));
      goto LABEL_10;
    }

    if (v8 == [(FATBlock *)v7 startOffset]&& (v9 & 1) != 0)
    {
      break;
    }

    v13 = *(v24 + 6);
    clustersPerBlock = [(FATManager *)self clustersPerBlock];
    *(v24 + 6) += v13 / clustersPerBlock * clustersPerBlock - v13;
    clustersPerBlock2 = [(FATManager *)self clustersPerBlock];
    v16 = *(v24 + 6) + clustersPerBlock2;
    *(v24 + 6) = v16;
    fsInfo = [(FATManager *)self fsInfo];
    maxValidCluster = [fsInfo maxValidCluster];

    if (maxValidCluster < v16)
    {
      *(v24 + 6) = 2;
      v9 = 1;
    }
  }

  fs_errorForPOSIXError();
  v20 = v19 = v21;
  (*(v21 + 2))(v21, v20, 0, 0);

LABEL_10:
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

@end