@interface _TUIImageResourceReadyWaiter
- (_TUIImageResourceReadyWaiter)initWithImageResources:(id)resources assertion:(id)assertion assertionQueue:(id)queue;
- (void)dealloc;
- (void)imageResourceDidChangeImage:(id)image;
@end

@implementation _TUIImageResourceReadyWaiter

- (_TUIImageResourceReadyWaiter)initWithImageResources:(id)resources assertion:(id)assertion assertionQueue:(id)queue
{
  resourcesCopy = resources;
  assertionCopy = assertion;
  queueCopy = queue;
  v31.receiver = self;
  v31.super_class = _TUIImageResourceReadyWaiter;
  v11 = [(_TUIImageResourceReadyWaiter *)&v31 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    v13 = dispatch_group_create();
    group = v12->_group;
    v12->_group = v13;

    v15 = [resourcesCopy copy];
    imageResources = v12->_imageResources;
    v12->_imageResources = v15;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = resourcesCopy;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        v21 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * v21);
          dispatch_group_enter(v12->_group);
          [v22 addObserver:v12];
          if (([v22 isImageLoading] & 1) == 0)
          {
            dispatch_group_leave(v12->_group);
            [v22 removeObserver:v12];
            [(NSHashTable *)v12->_imageResources removeObject:v22];
          }

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v19);
    }

    objc_storeStrong(&v12->_assertion, assertion);
    v23 = v12->_group;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_116768;
    v25[3] = &unk_25DE30;
    v26 = assertionCopy;
    TUIDispatchGroupNotifyViaRunloopIfMain(v23, queueCopy, v25);
  }

  return v12;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_imageResources;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) removeObserver:self];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = _TUIImageResourceReadyWaiter;
  [(_TUIImageResourceReadyWaiter *)&v8 dealloc];
}

- (void)imageResourceDidChangeImage:(id)image
{
  imageCopy = image;
  isImageLoaded = [imageCopy isImageLoaded];
  os_unfair_lock_lock(&self->_lock);
  if (isImageLoaded && [(NSHashTable *)self->_imageResources containsObject:imageCopy])
  {
    [(NSHashTable *)self->_imageResources removeObject:imageCopy];
    os_unfair_lock_unlock(&self->_lock);
    [imageCopy removeObserver:self];
    dispatch_group_leave(self->_group);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

@end