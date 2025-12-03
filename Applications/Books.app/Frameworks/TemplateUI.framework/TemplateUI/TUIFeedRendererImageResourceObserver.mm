@interface TUIFeedRendererImageResourceObserver
- (TUIFeedRendererImageResourceObserver)initWithRenderModel:(id)model timeout:(double)timeout;
- (void)_leaveGroupIfImageResourceLoaded:(id)loaded;
- (void)waitForImageResources:(id)resources;
@end

@implementation TUIFeedRendererImageResourceObserver

- (TUIFeedRendererImageResourceObserver)initWithRenderModel:(id)model timeout:(double)timeout
{
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = TUIFeedRendererImageResourceObserver;
  v8 = [(TUIFeedRendererImageResourceObserver *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_renderModel, model);
    v10 = dispatch_group_create();
    group = v9->_group;
    v9->_group = v10;

    v12 = objc_alloc_init(NSHashTable);
    enteredImageResources = v9->_enteredImageResources;
    v9->_enteredImageResources = v12;

    v14 = dispatch_queue_create("TUIFeedRendererImageResourceObserver.completionQueue", 0);
    completionQueue = v9->_completionQueue;
    v9->_completionQueue = v14;

    v9->_timeout = timeout;
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (void)waitForImageResources:(id)resources
{
  resourcesCopy = resources;
  v5 = *&CGAffineTransformIdentity.c;
  v28 = *&CGAffineTransformIdentity.a;
  v29 = v5;
  v30 = *&CGAffineTransformIdentity.tx;
  v6 = +[TUIResourceCollector createImageResourceCollector];
  [(TUIRenderModelLayer *)self->_renderModel appendResourcesToCollector:v6 transform:&v28];
  imageResources = [v6 imageResources];
  v8 = [imageResources copy];
  imageResources = self->_imageResources;
  self->_imageResources = v8;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_imageResources;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v11)
  {
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        [v14 addInterest];
        [v14 addNonVolatileInterest];
        v15 = [v14 imageContentWithOptions:1];
        image = [v15 image];
        v17 = image == 0;

        if (v17)
        {
          os_unfair_lock_lock(&self->_lock);
          if ([(NSHashTable *)self->_enteredImageResources containsObject:v14])
          {
            os_unfair_lock_unlock(&self->_lock);
          }

          else
          {
            [(NSHashTable *)self->_enteredImageResources addObject:v14];
            dispatch_group_enter(self->_group);
            os_unfair_lock_unlock(&self->_lock);
            [v14 addObserver:self];
          }
        }
      }

      v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v11);
  }

  *&v28 = 0;
  *(&v28 + 1) = &v28;
  *&v29 = 0x3032000000;
  *(&v29 + 1) = sub_8FAB8;
  *&v30 = sub_8FAE4;
  *(&v30 + 1) = objc_retainBlock(resourcesCopy);
  v18 = dispatch_time(0, (self->_timeout * 1000000000.0));
  completionQueue = self->_completionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8FAEC;
  block[3] = &unk_2607A8;
  block[4] = &v28;
  dispatch_after(v18, completionQueue, block);
  group = self->_group;
  v21 = self->_completionQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_8FB58;
  v22[3] = &unk_2607A8;
  v22[4] = &v28;
  TUIDispatchGroupNotifyViaRunloopIfMain(group, v21, v22);
  _Block_object_dispose(&v28, 8);
}

- (void)_leaveGroupIfImageResourceLoaded:(id)loaded
{
  loadedCopy = loaded;
  v5 = [loadedCopy imageContentWithOptions:1];
  image = [v5 image];

  if (image)
  {
    os_unfair_lock_lock(&self->_lock);
    if ([(NSHashTable *)self->_enteredImageResources containsObject:loadedCopy])
    {
      [(NSHashTable *)self->_enteredImageResources removeObject:loadedCopy];
      dispatch_group_leave(self->_group);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = TUIDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_19A23C(loadedCopy, v7);
    }
  }
}

@end