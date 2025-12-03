@interface PartialDownloadPurgeCoordinator
- (PartialDownloadPurgeCoordinator)init;
- (id)allPurgeablesForVolume:(id)volume reason:(id)reason client:(id)client;
- (int64_t)_calculatePurgeableSpace;
- (int64_t)_purgeForDesiredSpace:(int64_t)space;
- (int64_t)purgeForVolume:(id)volume urgency:(int64_t)urgency desiredPurge:(id)purge client:(id)client;
- (int64_t)purgeableForVolume:(id)volume urgency:(int64_t)urgency client:(id)client;
@end

@implementation PartialDownloadPurgeCoordinator

- (PartialDownloadPurgeCoordinator)init
{
  v9.receiver = self;
  v9.super_class = PartialDownloadPurgeCoordinator;
  v2 = [(PartialDownloadPurgeCoordinator *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.AppPurgeCoordinator.dispatch", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = sub_1003C27BC();
    databaseStore = v2->_databaseStore;
    v2->_databaseStore = v6;
  }

  return v2;
}

- (id)allPurgeablesForVolume:(id)volume reason:(id)reason client:(id)client
{
  volumeCopy = volume;
  reasonCopy = reason;
  clientCopy = client;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002D50A0;
  block[3] = &unk_10051B638;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(dispatchQueue, block);
  v21[0] = &off_100547BD8;
  v21[1] = &off_100547C08;
  v22[0] = &off_100547BF0;
  v22[1] = &off_100547BF0;
  v21[2] = &off_100547C20;
  v12 = [NSNumber numberWithLongLong:v18[3]];
  v22[2] = v12;
  v21[3] = &off_100547C38;
  v13 = [NSNumber numberWithLongLong:v18[3]];
  v22[3] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];

  _Block_object_dispose(&v17, 8);

  return v14;
}

- (int64_t)purgeForVolume:(id)volume urgency:(int64_t)urgency desiredPurge:(id)purge client:(id)client
{
  purgeCopy = purge;
  v9 = purgeCopy;
  v10 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (urgency >= 3)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002D51BC;
    block[3] = &unk_10051AE98;
    v15 = &v16;
    block[4] = self;
    v14 = purgeCopy;
    dispatch_sync(dispatchQueue, block);

    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);

  return v10;
}

- (int64_t)purgeableForVolume:(id)volume urgency:(int64_t)urgency client:(id)client
{
  v5 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (urgency >= 3)
  {
    dispatchQueue = self->_dispatchQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1002D52B4;
    v8[3] = &unk_10051B638;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(dispatchQueue, v8);
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  return v5;
}

- (int64_t)_calculatePurgeableSpace
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  databaseStore = self->_databaseStore;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002D53A8;
  v5[3] = &unk_10051CCC8;
  v5[4] = &v6;
  [(AppInstallsDatabaseStore *)databaseStore readUsingSession:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)_purgeForDesiredSpace:(int64_t)space
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1002D58B4;
  v28 = sub_1002D58C4;
  v29 = +[NSMutableArray array];
  databaseStore = self->_databaseStore;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1002D58CC;
  v23[3] = &unk_10051CCC8;
  v23[4] = &v24;
  [(AppInstallsDatabaseStore *)databaseStore readUsingSession:v23];
  v6 = [[NSSortDescriptor alloc] initWithKey:@"date" ascending:1];
  v30 = v6;
  v7 = [NSArray arrayWithObjects:&v30 count:1];

  [v25[5] sortUsingDescriptors:v7];
  v8 = +[BagService appstoredService];
  lastBag = [v8 lastBag];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = sub_1003C27BC();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002D5BE4;
  v14[3] = &unk_100521980;
  v16 = &v24;
  v11 = lastBag;
  v15 = v11;
  v17 = &v19;
  spaceCopy = space;
  [v10 modifyUsingTransaction:v14];

  v12 = v20[3];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v24, 8);
  return v12;
}

@end