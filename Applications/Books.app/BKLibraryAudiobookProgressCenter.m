@interface BKLibraryAudiobookProgressCenter
- (BKLibraryAudiobookProgressCenter)init;
- (id)dynamicProgressForKind:(id)a3 instance:(id)a4 parameters:(id)a5;
- (void)_minifiedAssetPresentersChangedNotification:(id)a3;
- (void)dealloc;
@end

@implementation BKLibraryAudiobookProgressCenter

- (BKLibraryAudiobookProgressCenter)init
{
  v11.receiver = self;
  v11.super_class = BKLibraryAudiobookProgressCenter;
  v2 = [(BKLibraryAudiobookProgressCenter *)&v11 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    progressInstanceMap = v2->_progressInstanceMap;
    v2->_progressInstanceMap = v3;

    v5 = +[NSMapTable strongToWeakObjectsMapTable];
    timeRemainingInstanceMap = v2->_timeRemainingInstanceMap;
    v2->_timeRemainingInstanceMap = v5;

    v7 = dispatch_queue_create("BKLibraryAudiobookProgressCenter.access", 0);
    access = v2->_access;
    v2->_access = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_minifiedAssetPresentersChangedNotification:" name:@"BKMnifiedPresentersUpdatedNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"BKMnifiedPresentersUpdatedNotification" object:0];

  v4.receiver = self;
  v4.super_class = BKLibraryAudiobookProgressCenter;
  [(BKLibraryAudiobookProgressCenter *)&v4 dealloc];
}

- (void)_minifiedAssetPresentersChangedNotification:(id)a3
{
  [(NSMapTable *)self->_progressInstanceMap removeAllObjects];
  timeRemainingInstanceMap = self->_timeRemainingInstanceMap;

  [(NSMapTable *)timeRemainingInstanceMap removeAllObjects];
}

- (id)dynamicProgressForKind:(id)a3 instance:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_10002750C;
  v27 = sub_1000276B0;
  v28 = 0;
  access = self->_access;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DEFE0;
  block[3] = &unk_100A0B6C8;
  v21 = v10;
  v22 = &v23;
  v18 = v8;
  v19 = self;
  v20 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(access, block);
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

@end