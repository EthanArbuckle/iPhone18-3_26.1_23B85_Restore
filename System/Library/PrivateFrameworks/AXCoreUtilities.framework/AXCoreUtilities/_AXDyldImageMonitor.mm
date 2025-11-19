@interface _AXDyldImageMonitor
+ (id)sharedInstance;
- (_AXDyldImageMonitor)init;
- (id)loadedImagePaths;
- (void)_dyldDidAddImage:(id)a3;
- (void)addImageMonitorObserver:(id)a3;
- (void)enumerateLoadedImagePaths:(id)a3;
- (void)removeImageMonitorObserver:(id)a3;
@end

@implementation _AXDyldImageMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[_AXDyldImageMonitor sharedInstance];
  }

  v3 = _Shared;

  return v3;
}

- (_AXDyldImageMonitor)init
{
  v7.receiver = self;
  v7.super_class = _AXDyldImageMonitor;
  v2 = [(_AXDyldImageMonitor *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("_AXDyldImageMonitor", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)_dyldDidAddImage:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_imageMonitorObservers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) imageMonitor:self didAddImage:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)enumerateLoadedImagePaths:(id)a3
{
  v10 = a3;
  v3 = _dyld_image_count();
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      image_name = _dyld_get_image_name(i);
      if (image_name)
      {
        v7 = image_name;
        v8 = objc_alloc(MEMORY[0x1E696AEC0]);
        v9 = [v8 initWithCString:v7 encoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];
        v10[2](v10, v9);
      }
    }
  }
}

- (id)loadedImagePaths
{
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:_dyld_image_count()];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39___AXDyldImageMonitor_loadedImagePaths__block_invoke;
  v6[3] = &unk_1E735B7C0;
  v4 = v3;
  v7 = v4;
  [(_AXDyldImageMonitor *)self enumerateLoadedImagePaths:v6];

  return v4;
}

- (void)addImageMonitorObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47___AXDyldImageMonitor_addImageMonitorObserver___block_invoke;
  v7[3] = &unk_1E735B7E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeImageMonitorObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___AXDyldImageMonitor_removeImageMonitorObserver___block_invoke;
  v7[3] = &unk_1E735B7E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

@end