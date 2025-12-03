@interface HydrateGeoMapItemCache
+ (id)sharedCache;
- (HydrateGeoMapItemCache)init;
- (void)performCompletionsFor:(id)for mapItem:(id)item error:(id)error;
- (void)resolveRTMapItem:(id)item shouldUpdateAttributes:(BOOL)attributes completionHandler:(id)handler;
@end

@implementation HydrateGeoMapItemCache

- (void)performCompletionsFor:(id)for mapItem:(id)item error:(id)error
{
  forCopy = for;
  itemCopy = item;
  errorCopy = error;
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
  v16 = itemCopy;
  selfCopy = self;
  v19 = errorCopy;
  v20 = v21;
  v18 = forCopy;
  v12 = errorCopy;
  v13 = forCopy;
  v14 = itemCopy;
  dispatch_async(serialQueue, block);

  _Block_object_dispose(v21, 8);
}

- (void)resolveRTMapItem:(id)item shouldUpdateAttributes:(BOOL)attributes completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B17DD4;
  v13[3] = &unk_101661068;
  v14 = itemCopy;
  selfCopy = self;
  v16 = handlerCopy;
  attributesCopy = attributes;
  v11 = handlerCopy;
  v12 = itemCopy;
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