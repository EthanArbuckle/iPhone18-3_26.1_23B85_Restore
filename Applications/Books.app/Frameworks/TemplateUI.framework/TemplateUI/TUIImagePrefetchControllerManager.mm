@interface TUIImagePrefetchControllerManager
+ (id)sharedManager;
- (TUIImagePrefetchControllerManager)init;
- (id)_controllerWithID:(id)d;
- (void)prefetchResources:(id)resources controllerID:(id)d loader:(id)loader;
- (void)registerPrefetchController:(id)controller;
- (void)unregisterPrefetchController:(id)controller;
@end

@implementation TUIImagePrefetchControllerManager

+ (id)sharedManager
{
  if (qword_2E60E0 != -1)
  {
    sub_199A88();
  }

  v3 = qword_2E60D8;

  return v3;
}

- (TUIImagePrefetchControllerManager)init
{
  v13.receiver = self;
  v13.super_class = TUIImagePrefetchControllerManager;
  v2 = [(TUIImagePrefetchControllerManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("TUIImagePrefetchControllerManager.workQueue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_create("TUIImagePrefetchControllerManager.access", 0);
    access = v2->_access;
    v2->_access = v6;

    v8 = objc_opt_new();
    map = v2->_map;
    v2->_map = v8;

    v10 = +[NSHashTable weakObjectsHashTable];
    controllers = v2->_controllers;
    v2->_controllers = v10;
  }

  return v2;
}

- (void)registerPrefetchController:(id)controller
{
  controllerCopy = controller;
  access = self->_access;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_39CC0;
  v7[3] = &unk_25DCA0;
  v7[4] = self;
  v8 = controllerCopy;
  v6 = controllerCopy;
  dispatch_sync(access, v7);
}

- (void)unregisterPrefetchController:(id)controller
{
  controllerCopy = controller;
  controllerID = [controllerCopy controllerID];
  v6 = [controllerID copy];

  access = self->_access;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_39DF4;
  block[3] = &unk_25DCA0;
  block[4] = self;
  v14 = controllerCopy;
  v8 = controllerCopy;
  dispatch_sync(access, block);
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_39E00;
  v11[3] = &unk_25DCA0;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_async(queue, v11);
}

- (id)_controllerWithID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_3A0D4;
  v16 = sub_3A0E4;
  v17 = 0;
  access = self->_access;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3A0EC;
  block[3] = &unk_25DC78;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(access, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)prefetchResources:(id)resources controllerID:(id)d loader:(id)loader
{
  resourcesCopy = resources;
  dCopy = d;
  loaderCopy = loader;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_3A314;
  v15[3] = &unk_25EB18;
  v15[4] = self;
  v16 = dCopy;
  v17 = resourcesCopy;
  v18 = loaderCopy;
  v12 = loaderCopy;
  v13 = resourcesCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

@end