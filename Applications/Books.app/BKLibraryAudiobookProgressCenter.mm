@interface BKLibraryAudiobookProgressCenter
- (BKLibraryAudiobookProgressCenter)init;
- (id)dynamicProgressForKind:(id)kind instance:(id)instance parameters:(id)parameters;
- (void)_minifiedAssetPresentersChangedNotification:(id)notification;
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

- (void)_minifiedAssetPresentersChangedNotification:(id)notification
{
  [(NSMapTable *)self->_progressInstanceMap removeAllObjects];
  timeRemainingInstanceMap = self->_timeRemainingInstanceMap;

  [(NSMapTable *)timeRemainingInstanceMap removeAllObjects];
}

- (id)dynamicProgressForKind:(id)kind instance:(id)instance parameters:(id)parameters
{
  kindCopy = kind;
  instanceCopy = instance;
  parametersCopy = parameters;
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
  v21 = parametersCopy;
  v22 = &v23;
  v18 = kindCopy;
  selfCopy = self;
  v20 = instanceCopy;
  v12 = parametersCopy;
  v13 = instanceCopy;
  v14 = kindCopy;
  dispatch_sync(access, block);
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

@end