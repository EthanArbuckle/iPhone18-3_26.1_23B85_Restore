@interface HydrateGeoMapItemCache
+ (id)sharedCache;
- (HydrateGeoMapItemCache)init;
- (void)performCompletionsFor:(id)a3 mapItem:(id)a4 error:(id)a5;
- (void)resolveRTMapItem:(id)a3 shouldUpdateAttributes:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation HydrateGeoMapItemCache

- (void)performCompletionsFor:(id)a3 mapItem:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_100B17AF4;
  v21[4] = sub_100B17B04;
  v22 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B17B0C;
  block[3] = &unk_1016562A0;
  v16 = v9;
  v17 = self;
  v19 = v10;
  v20 = v21;
  v18 = v8;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(serialQueue, block);

  _Block_object_dispose(v21, 8);
}

- (void)resolveRTMapItem:(id)a3 shouldUpdateAttributes:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  serialQueue = self->_serialQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B17DD4;
  v13[3] = &unk_101661068;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(serialQueue, v13);
}

- (HydrateGeoMapItemCache)init
{
  v10.receiver = self;
  v10.super_class = HydrateGeoMapItemCache;
  v2 = [(HydrateGeoMapItemCache *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    inProgressCompletionsByHandle = v2->_inProgressCompletionsByHandle;
    v2->_inProgressCompletionsByHandle = v3;

    v5 = +[NSMutableDictionary dictionary];
    resolvedMapItemByHandle = v2->_resolvedMapItemByHandle;
    v2->_resolvedMapItemByHandle = v5;

    v7 = dispatch_queue_create("com.apple.Maps.HydrateGeoMapItemCache", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v7;
  }

  return v2;
}

+ (id)sharedCache
{
  if (qword_10195E6B8 != -1)
  {
    dispatch_once(&qword_10195E6B8, &stru_101638400);
  }

  v3 = qword_10195E6B0;

  return v3;
}

@end