@interface TUIImagePrefetchController
- (TUIImagePrefetchController)initWithResourceLoader:(id)a3;
- (TUIImagePrefetchControllerDelegate)delegate;
- (float)_adjustedPriority:(float)result;
- (void)_checkInitialResourcesAndInvokeDelegateIfNeeded;
- (void)dealloc;
- (void)updatePrioritiesForRenderModel:(id)a3 visibleRect:(CGRect)a4 viewState:(id)a5;
- (void)urlLoaded:(id)a3;
@end

@implementation TUIImagePrefetchController

- (TUIImagePrefetchController)initWithResourceLoader:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = TUIImagePrefetchController;
  v6 = [(TUIImagePrefetchController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_priority = 0.5;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("TUIImagePrefetchController.workQueue", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = dispatch_queue_create("TUIImagePrefetchController.access", 0);
    access = v7->_access;
    v7->_access = v11;

    objc_storeStrong(&v7->_resourceLoader, a3);
    v13 = +[NSUUID UUID];
    controllerID = v7->_controllerID;
    v7->_controllerID = v13;

    v15 = [NSDate dateWithTimeIntervalSince1970:0.0];
    lastUpdate = v7->_lastUpdate;
    v7->_lastUpdate = v15;

    v17 = +[TUIImagePrefetchControllerManager sharedManager];
    [v17 registerPrefetchController:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[TUIImagePrefetchControllerManager sharedManager];
  [v3 unregisterPrefetchController:self];

  v4.receiver = self;
  v4.super_class = TUIImagePrefetchController;
  [(TUIImagePrefetchController *)&v4 dealloc];
}

- (float)_adjustedPriority:(float)result
{
  priority = self->_priority;
  v4 = 0.75;
  if (priority < 0.5)
  {
    return TUIPriorityClamp(v4 * result);
  }

  v4 = 1.25;
  if (priority > 0.5)
  {
    return TUIPriorityClamp(v4 * result);
  }

  return result;
}

- (void)updatePrioritiesForRenderModel:(id)a3 visibleRect:(CGRect)a4 viewState:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  [(NSDate *)self->_lastUpdate timeIntervalSinceNow];
  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -v13;
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (!CGRectIsEmpty(v27) && v14 > 0.25)
  {
    v15 = +[NSDate date];
    lastUpdate = self->_lastUpdate;
    self->_lastUpdate = v15;

    v17 = [v12 copy];
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_6AE8;
    block[3] = &unk_25DC50;
    v20 = v11;
    v23 = x;
    v24 = y;
    v25 = width;
    v26 = height;
    v12 = v17;
    v21 = v12;
    v22 = self;
    dispatch_async(queue, block);
  }
}

- (void)urlLoaded:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_72E4;
  v7[3] = &unk_25DCA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_checkInitialResourcesAndInvokeDelegateIfNeeded
{
  if (![(NSMutableSet *)self->_initialResourcesToLoad count])
  {
    initialResources = self->_initialResources;
    self->_initialResources = 0;

    initialResourcesToLoad = self->_initialResourcesToLoad;
    self->_initialResourcesToLoad = 0;

    initialResourcesLoaded = self->_initialResourcesLoaded;
    self->_initialResourcesLoaded = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 imagePrefetchControllerDidLoadInitialResources:self];
    }

    self->_hasNotifyInitialResourcesLoad = 1;
  }
}

- (TUIImagePrefetchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end