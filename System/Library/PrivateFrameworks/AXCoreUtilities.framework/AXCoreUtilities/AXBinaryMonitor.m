@interface AXBinaryMonitor
+ (id)sharedInstance;
- (AXBinaryMonitor)init;
- (BOOL)_loadImageIsApp:(id)a3;
- (BOOL)_loadImageIsAppExtension:(id)a3;
- (BOOL)_loadImageIsBundle:(id)a3;
- (BOOL)_loadImageIsDylib:(id)a3;
- (BOOL)_loadImageIsFramework:(id)a3;
- (id)_appExtensionNameForImage:(id)a3;
- (id)_appNameForImage:(id)a3;
- (id)_bundleNameAndType:(id)a3;
- (id)_bundleNameForImage:(id)a3;
- (id)_dylibNameForImage:(id)a3;
- (id)_frameworkNameForImage:(id)a3;
- (void)_addHandler:(id)a3 withName:(id)a4 toMap:(id *)a5;
- (void)_applyHandlerBlocks:(id)a3 handlerMap:(id)a4;
- (void)_handleLoadedImagePath:(id)a3;
- (void)addHandler:(id)a3 forApp:(id)a4;
- (void)addHandler:(id)a3 forAppExtension:(id)a4;
- (void)addHandler:(id)a3 forBundleName:(id)a4;
- (void)addHandler:(id)a3 forDylib:(id)a4;
- (void)addHandler:(id)a3 forFramework:(id)a4;
- (void)evaluateExistingBinaries;
@end

@implementation AXBinaryMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[AXBinaryMonitor sharedInstance];
  }

  v3 = sharedInstance__shared;

  return v3;
}

uint64_t __33__AXBinaryMonitor_sharedInstance__block_invoke()
{
  sharedInstance__shared = objc_alloc_init(AXBinaryMonitor);

  return MEMORY[0x1EEE66BB8]();
}

- (AXBinaryMonitor)init
{
  v13.receiver = self;
  v13.super_class = AXBinaryMonitor;
  v2 = [(AXBinaryMonitor *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    [(AXBinaryMonitor *)v2 setBundleHandlerMap:v3];

    v4 = [MEMORY[0x1E695DF90] dictionary];
    [(AXBinaryMonitor *)v2 setFrameworkHandlerMap:v4];

    v5 = [MEMORY[0x1E695DF90] dictionary];
    [(AXBinaryMonitor *)v2 setDylibHandlerMap:v5];

    v6 = [MEMORY[0x1E695DF90] dictionary];
    [(AXBinaryMonitor *)v2 setAppHandlerMap:v6];

    v7 = [MEMORY[0x1E695DF90] dictionary];
    [(AXBinaryMonitor *)v2 setAppExtensionHandlerMap:v7];

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);

    v10 = dispatch_queue_create("AXBinaryMonitorQueue", v9);
    [(AXBinaryMonitor *)v2 setBinaryMonitorQueue:v10];

    AXPerformBlockAsynchronouslyOnMainThread(&__block_literal_global_4);
    v11 = v2;
  }

  return v2;
}

- (void)evaluateExistingBinaries
{
  v2 = [(AXBinaryMonitor *)self binaryMonitorQueue];
  dispatch_async(v2, &__block_literal_global_6);
}

void __43__AXBinaryMonitor_evaluateExistingBinaries__block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = [MEMORY[0x1E696AAE8] allFrameworks];
  v2 = [MEMORY[0x1E696AAE8] allBundles];
  v3 = [v1 arrayByAddingObjectsFromArray:v2];

  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 safeStringForKey:@"_resolvedPath"];
        if (!v9)
        {
          v9 = [v8 bundlePath];
        }

        [v0 axSafelyAddObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AXBinaryMonitor_evaluateExistingBinaries__block_invoke_2;
  block[3] = &unk_1E735AD18;
  v13 = v0;
  v10 = v0;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v11 = *MEMORY[0x1E69E9840];
}

void __43__AXBinaryMonitor_evaluateExistingBinaries__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[AXBinaryMonitor sharedInstance];
  [v3 _handleLoadedImagePath:v2];
}

- (void)addHandler:(id)a3 forBundleName:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v6 pathExtension];
  v8 = [v7 length];

  if (!v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.bundle", v6];

    v6 = v9;
  }

  [(AXBinaryMonitor *)self _addHandler:v10 withName:v6 toMap:&self->_bundleHandlerMap];
}

- (void)addHandler:(id)a3 forFramework:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (([v6 hasSuffix:@".bundle"] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.framework", v6];

    v6 = v7;
  }

  [(AXBinaryMonitor *)self _addHandler:v8 withName:v6 toMap:&self->_frameworkHandlerMap];
}

- (void)addHandler:(id)a3 forDylib:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (([v6 hasSuffix:@".dylib"] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.dylib", v6];

    v6 = v7;
  }

  [(AXBinaryMonitor *)self _addHandler:v8 withName:v6 toMap:&self->_dylibHandlerMap];
}

- (void)addHandler:(id)a3 forAppExtension:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (([v6 hasSuffix:@".appex"] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.appex", v6];

    v6 = v7;
  }

  [(AXBinaryMonitor *)self _addHandler:v8 withName:v6 toMap:&self->_appExtensionHandlerMap];
}

- (void)addHandler:(id)a3 forApp:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (([v6 hasSuffix:@".app"] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.app", v6];

    v6 = v7;
  }

  [(AXBinaryMonitor *)self _addHandler:v8 withName:v6 toMap:&self->_appHandlerMap];
}

- (void)_addHandler:(id)a3 withName:(id)a4 toMap:(id *)a5
{
  v8 = a4;
  v9 = [a3 copy];
  v10 = *a5;
  v11 = v10;
  if (!a3)
  {
    v14 = @"not adding handler, block was null";
LABEL_6:
    _AXLogWithFacility(0, 0, 1, 0, 0, 0, 0, 0.0, 0, 1, v14);
    goto LABEL_7;
  }

  if (!v8)
  {
    v14 = @"not adding handler, binary name was nil";
    goto LABEL_6;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__AXBinaryMonitor__addHandler_withName_toMap___block_invoke;
  v18[3] = &unk_1E735BAF8;
  v19 = v10;
  v12 = v8;
  v20 = v12;
  v21 = v9;
  AXPerformBlockSynchronouslyOnMainThread(v18);
  v13 = [(AXBinaryMonitor *)self binaryMonitorQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AXBinaryMonitor__addHandler_withName_toMap___block_invoke_2;
  block[3] = &unk_1E735B7E8;
  v16 = v12;
  v17 = self;
  dispatch_async(v13, block);

LABEL_7:
}

void __46__AXBinaryMonitor__addHandler_withName_toMap___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  v4 = [v2 mutableCopy];

  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF70] array];
  }

  v3 = _Block_copy(*(a1 + 48));
  [v4 addObject:v3];

  [*(a1 + 32) setObject:v4 forKey:*(a1 + 40)];
}

void __46__AXBinaryMonitor__addHandler_withName_toMap___block_invoke_2(uint64_t a1)
{
  v2 = _dyld_image_count();
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = MEMORY[0x1E69E96A0];
    do
    {
      image_name = _dyld_get_image_name(v4);
      if (image_name)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:image_name];
        v8 = v7;
        if (v7)
        {
          if ([v7 rangeOfString:*(a1 + 32)] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v9[0] = MEMORY[0x1E69E9820];
            v9[1] = 3221225472;
            v9[2] = __46__AXBinaryMonitor__addHandler_withName_toMap___block_invoke_3;
            v9[3] = &unk_1E735B7E8;
            v9[4] = *(a1 + 40);
            v10 = v8;
            dispatch_async(v5, v9);
          }
        }
      }

      ++v4;
    }

    while (v3 != v4);
  }
}

- (id)_bundleNameAndType:(id)a3
{
  v3 = [a3 stringByDeletingLastPathComponent];
  v4 = [v3 lastPathComponent];

  return v4;
}

- (BOOL)_loadImageIsFramework:(id)a3
{
  v3 = [(AXBinaryMonitor *)self _bundleNameAndType:a3];
  v4 = [v3 hasSuffix:@".framework"];

  return v4;
}

- (BOOL)_loadImageIsBundle:(id)a3
{
  v3 = [(AXBinaryMonitor *)self _bundleNameAndType:a3];
  if ([v3 hasSuffix:@"bundle"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasSuffix:@"Bundle"];
  }

  return v4;
}

- (BOOL)_loadImageIsDylib:(id)a3
{
  v3 = [(AXBinaryMonitor *)self _bundleNameAndType:a3];
  v4 = [v3 hasSuffix:@".dylib"];

  return v4;
}

- (BOOL)_loadImageIsApp:(id)a3
{
  v3 = [(AXBinaryMonitor *)self _bundleNameAndType:a3];
  v4 = [v3 hasSuffix:@".app"];

  return v4;
}

- (BOOL)_loadImageIsAppExtension:(id)a3
{
  v3 = [(AXBinaryMonitor *)self _bundleNameAndType:a3];
  v4 = [v3 hasSuffix:@".appex"];

  return v4;
}

- (id)_frameworkNameForImage:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a3 pathComponents];
  v4 = [v3 reverseObjectEnumerator];
  v5 = [v4 allObjects];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 hasSuffix:@"framework"])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_bundleNameForImage:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a3 pathComponents];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 lowercaseString];
        v10 = [v9 hasSuffix:@"bundle"];

        if (v10)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_appExtensionNameForImage:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 pathComponents];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasSuffix:@"appex"])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_appNameForImage:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 pathComponents];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasSuffix:@"app"])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_dylibNameForImage:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 pathComponents];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasSuffix:@"dylib"])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)_applyHandlerBlocks:(id)a3 handlerMap:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 objectForKey:{v5, 0}];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v13 + 1) + 8 * v11++) + 16))();
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [v6 removeObjectForKey:v5];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleLoadedImagePath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    if ([(AXBinaryMonitor *)self _loadImageIsFramework:v4])
    {
      v5 = [(AXBinaryMonitor *)self _frameworkNameForImage:v8];
      v6 = [(AXBinaryMonitor *)self frameworkHandlerMap];
    }

    else if ([(AXBinaryMonitor *)self _loadImageIsBundle:v8])
    {
      v5 = [(AXBinaryMonitor *)self _bundleNameForImage:v8];
      v6 = [(AXBinaryMonitor *)self bundleHandlerMap];
    }

    else if ([(AXBinaryMonitor *)self _loadImageIsDylib:v8])
    {
      v5 = [(AXBinaryMonitor *)self _dylibNameForImage:v8];
      v6 = [(AXBinaryMonitor *)self dylibHandlerMap];
    }

    else if ([(AXBinaryMonitor *)self _loadImageIsAppExtension:v8])
    {
      v5 = [(AXBinaryMonitor *)self _appExtensionNameForImage:v8];
      v6 = [(AXBinaryMonitor *)self appExtensionHandlerMap];
    }

    else
    {
      if (![(AXBinaryMonitor *)self _loadImageIsApp:v8])
      {
        goto LABEL_13;
      }

      v5 = [(AXBinaryMonitor *)self _appNameForImage:v8];
      v6 = [(AXBinaryMonitor *)self appHandlerMap];
    }

    v7 = v6;
    [(AXBinaryMonitor *)self _applyHandlerBlocks:v5 handlerMap:v6];
  }

LABEL_13:

  MEMORY[0x1EEE66BB8]();
}

@end