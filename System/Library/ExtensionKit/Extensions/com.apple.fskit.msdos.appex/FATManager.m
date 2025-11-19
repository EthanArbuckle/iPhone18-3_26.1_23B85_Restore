@interface FATManager
- (BOOL)isEOFCluster:(unint64_t)a3;
- (id)syncMetaReadFromFAT:(void *)a3 startingAt:(int64_t)a4;
- (id)updateFATStats;
- (unsigned)clustersPerBlock;
- (void)allocateClusters:(unsigned int)a3 searchFromCluster:(unsigned int)a4 allowPartial:(BOOL)a5 zeroFill:(BOOL)a6 mustBeContig:(BOOL)a7 replyHandler:(id)a8;
- (void)clusterChainLength:(id)a3 replyHandler:(id)a4;
- (void)findNextFreeCluster:(unsigned int)a3 replyHandler:(id)a4;
- (void)freeClusterFrom:(unsigned int)a3 numClusters:(unsigned int)a4 replyHandler:(id)a5;
- (void)freeClusters:(unsigned int)a3 ofItem:(id)a4 replyHandler:(id)a5;
- (void)getContigClusterChainLengthStartingAt:(unsigned int)a3 replyHandler:(id)a4;
- (void)getDirtyBitValue:(id)a3;
- (void)iterateClusterChainOfItem:(id)a3 replyHandler:(id)a4;
- (void)setDirtyBitValue:(unsigned __int8)a3 forceWriteToDisk:(BOOL)a4 replyHandler:(id)a5;
@end

@implementation FATManager

- (unsigned)clustersPerBlock
{
  v3 = [(FATManager *)self fsInfo];
  v4 = [v3 type];

  v5 = [(FATManager *)self rwSize];
  v6 = v5 >> 2;
  if (!v4)
  {
    v6 = 2 * v5 / 3;
  }

  if (v4 == 1)
  {
    return v5 >> 1;
  }

  else
  {
    return v6;
  }
}

- (id)syncMetaReadFromFAT:(void *)a3 startingAt:(int64_t)a4
{
  v7 = a4 + [(FATManager *)self rwSize];
  v8 = [(FATManager *)self fsInfo];
  v9 = [v8 fatOffset];
  v10 = [(FATManager *)self fsInfo];
  v11 = &v9[[v10 fatSize]];

  if (v7 <= v11)
  {
    v15 = [(FATManager *)self rwSize];
  }

  else
  {
    v12 = [(FATManager *)self fsInfo];
    v13 = [v12 fatOffset];
    v14 = [(FATManager *)self fsInfo];
    v15 = &v13[[v14 fatSize] - a4];
  }

  v16 = [(FATManager *)self device];
  v17 = [Utilities syncMetaReadFromDevice:v16 into:a3 startingAt:a4 length:v15];

  return v17;
}

- (id)updateFATStats
{
  v3 = [FATBlock alloc];
  v4 = [(FATManager *)self fsInfo];
  v5 = -[FATBlock initWithOffset:andLength:](v3, "initWithOffset:andLength:", [v4 fatOffset], -[FATManager rwSize](self, "rwSize"));

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v6 = [(FATManager *)self fsInfo];
  v7 = [v6 fatOffset];

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
    v9 = [(FATManager *)self fsInfo];
    v10 = [v9 fatOffset];
    v11 = [(FATManager *)self fsInfo];
    LOBYTE(v10) = v7 > &v10[[v11 fatSize]];

    if (v10)
    {
      break;
    }

    v12 = [(FATBlock *)v5 data];
    v13 = v12;
    v14 = -[FATManager syncMetaReadFromFAT:startingAt:](self, "syncMetaReadFromFAT:startingAt:", [v12 mutableBytes], v7);

    if (v14)
    {
      goto LABEL_19;
    }

    [(FATBlock *)v5 setStartOffset:v7];
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
    v7 += [(FATManager *)self rwSize];
  }

  v16 = [(FATManager *)self fsInfo];
  if ([v16 freeClusters])
  {
    v17 = [(FATManager *)self fsInfo];
    v18 = [v17 freeClusters];
    v19 = v18 == *(v39 + 6);

    if (v19)
    {
      goto LABEL_13;
    }

    v16 = &_os_log_default;
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(v39 + 6);
      v22 = [(FATManager *)self fsInfo];
      sub_10003223C(v47, v21, [v22 freeClusters], v22);
      v16 = &_os_log_default;
    }
  }

LABEL_13:
  v23 = *(v39 + 6);
  v24 = [(FATManager *)self fsInfo];
  [v24 setFreeClusters:v23];

  v25 = [(FATManager *)self fsInfo];
  if (![v25 firstFreeCluster])
  {
LABEL_17:

    goto LABEL_18;
  }

  v26 = [(FATManager *)self fsInfo];
  v27 = [v26 firstFreeCluster];
  v28 = v27 == *(v43 + 6);

  if (!v28)
  {
    v25 = &_os_log_default;
    v29 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(v43 + 6);
      v31 = [(FATManager *)self fsInfo];
      sub_1000322AC(v46, v30, [v31 firstFreeCluster], v31);
      v25 = &_os_log_default;
    }

    goto LABEL_17;
  }

LABEL_18:
  v32 = *(v43 + 6);
  v33 = [(FATManager *)self fsInfo];
  [v33 setFirstFreeCluster:v32];

  v14 = 0;
LABEL_19:
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v14;
}

- (void)allocateClusters:(unsigned int)a3 searchFromCluster:(unsigned int)a4 allowPartial:(BOOL)a5 zeroFill:(BOOL)a6 mustBeContig:(BOOL)a7 replyHandler:(id)a8
{
  v13 = a8;
  v14 = [(FATManager *)self fatQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001B6CC;
  v16[3] = &unk_100051168;
  v20 = a5;
  v16[4] = self;
  v17 = v13;
  v18 = a3;
  v19 = a4;
  v21 = a7;
  v15 = v13;
  dispatch_barrier_sync(v14, v16);
}

- (void)freeClusters:(unsigned int)a3 ofItem:(id)a4 replyHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(FATManager *)self fatQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001C988;
  v13[3] = &unk_1000511E0;
  v13[4] = self;
  v14 = v8;
  v16 = a3;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_barrier_sync(v10, v13);
}

- (void)freeClusterFrom:(unsigned int)a3 numClusters:(unsigned int)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = [(FATManager *)self fatQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D270;
  block[3] = &unk_100050E00;
  v13 = a3;
  v14 = a4;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_barrier_sync(v9, block);
}

- (void)getContigClusterChainLengthStartingAt:(unsigned int)a3 replyHandler:(id)a4
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001D8CC;
  v11[3] = &unk_100051230;
  v13 = a3;
  v11[4] = self;
  v12 = a4;
  v5 = v12;
  v6 = objc_retainBlock(v11);
  label = dispatch_queue_get_label(0);
  v8 = [(FATManager *)self fatQueue];
  v9 = dispatch_queue_get_label(v8);
  LODWORD(label) = strcmp(label, v9);

  if (label)
  {
    v10 = [(FATManager *)self fatQueue];
    dispatch_sync(v10, v6);
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)clusterChainLength:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001DAD0;
  v14[3] = &unk_100051280;
  v16 = self;
  v17 = a4;
  v15 = v6;
  v7 = v17;
  v8 = v6;
  v9 = objc_retainBlock(v14);
  label = dispatch_queue_get_label(0);
  v11 = [(FATManager *)self fatQueue];
  v12 = dispatch_queue_get_label(v11);
  LODWORD(label) = strcmp(label, v12);

  if (label)
  {
    v13 = [(FATManager *)self fatQueue];
    dispatch_sync(v13, v9);
  }

  else
  {
    (v9[2])(v9);
  }
}

- (void)iterateClusterChainOfItem:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FATManager *)self fatQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001DDD8;
  block[3] = &unk_100051280;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)getDirtyBitValue:(id)a3
{
  v4 = a3;
  v5 = [(FATManager *)self fatQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001DFD0;
  v7[3] = &unk_100050E90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)setDirtyBitValue:(unsigned __int8)a3 forceWriteToDisk:(BOOL)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = [(FATManager *)self fatQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E23C;
  block[3] = &unk_1000512A8;
  v13 = a4;
  block[4] = self;
  v12 = v8;
  v14 = a3;
  v10 = v8;
  dispatch_barrier_sync(v9, block);
}

- (BOOL)isEOFCluster:(unint64_t)a3
{
  v5 = [(FATManager *)self fsInfo];
  if (([v5 FATMask] & 0xFFFFFFF8) <= a3)
  {
    v7 = [(FATManager *)self fsInfo];
    v6 = [v7 FATMask] >= a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)findNextFreeCluster:(unsigned int)a3 replyHandler:(id)a4
{
  v6 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = a3;
  v7 = [[FATBlock alloc] initWithOffset:0 andLength:[(FATManager *)self rwSize]];
  v21 = v6;
  v8 = [(FATManager *)self getRWOffsetForClusterEntry:*(v24 + 6)];
  v9 = 0;
  while (1)
  {
    [(FATBlock *)v7 setStartOffset:[(FATManager *)self getRWOffsetForClusterEntry:*(v24 + 6)]];
    v10 = [(FATBlock *)v7 data];
    v11 = -[FATManager syncMetaReadFromFAT:startingAt:](self, "syncMetaReadFromFAT:startingAt:", [v10 mutableBytes], -[FATBlock startOffset](v7, "startOffset"));

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
    v14 = [(FATManager *)self clustersPerBlock];
    *(v24 + 6) += v13 / v14 * v14 - v13;
    v15 = [(FATManager *)self clustersPerBlock];
    v16 = *(v24 + 6) + v15;
    *(v24 + 6) = v16;
    v17 = [(FATManager *)self fsInfo];
    v18 = [v17 maxValidCluster];

    if (v18 < v16)
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