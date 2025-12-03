@interface AXBinaryMonitor
+ (id)sharedInstance;
- (AXBinaryMonitor)init;
- (BOOL)_loadImageIsApp:(id)app;
- (BOOL)_loadImageIsAppExtension:(id)extension;
- (BOOL)_loadImageIsBundle:(id)bundle;
- (BOOL)_loadImageIsDylib:(id)dylib;
- (BOOL)_loadImageIsFramework:(id)framework;
- (id)_appExtensionNameForImage:(id)image;
- (id)_appNameForImage:(id)image;
- (id)_bundleNameAndType:(id)type;
- (id)_bundleNameForImage:(id)image;
- (id)_dylibNameForImage:(id)image;
- (id)_frameworkNameForImage:(id)image;
- (void)_addHandler:(id)handler withName:(id)name toMap:(id *)map;
- (void)_applyHandlerBlocks:(id)blocks handlerMap:(id)map;
- (void)_handleLoadedImagePath:(id)path;
- (void)addHandler:(id)handler forApp:(id)app;
- (void)addHandler:(id)handler forAppExtension:(id)extension;
- (void)addHandler:(id)handler forBundleName:(id)name;
- (void)addHandler:(id)handler forDylib:(id)dylib;
- (void)addHandler:(id)handler forFramework:(id)framework;
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(AXBinaryMonitor *)v2 setBundleHandlerMap:dictionary];

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(AXBinaryMonitor *)v2 setFrameworkHandlerMap:dictionary2];

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    [(AXBinaryMonitor *)v2 setDylibHandlerMap:dictionary3];

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    [(AXBinaryMonitor *)v2 setAppHandlerMap:dictionary4];

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    [(AXBinaryMonitor *)v2 setAppExtensionHandlerMap:dictionary5];

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
  binaryMonitorQueue = [(AXBinaryMonitor *)self binaryMonitorQueue];
  dispatch_async(binaryMonitorQueue, &__block_literal_global_6);
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

- (void)addHandler:(id)handler forBundleName:(id)name
{
  handlerCopy = handler;
  nameCopy = name;
  pathExtension = [nameCopy pathExtension];
  v8 = [pathExtension length];

  if (!v8)
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.bundle", nameCopy];

    nameCopy = nameCopy;
  }

  [(AXBinaryMonitor *)self _addHandler:handlerCopy withName:nameCopy toMap:&self->_bundleHandlerMap];
}

- (void)addHandler:(id)handler forFramework:(id)framework
{
  handlerCopy = handler;
  frameworkCopy = framework;
  if (([frameworkCopy hasSuffix:@".bundle"] & 1) == 0)
  {
    frameworkCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.framework", frameworkCopy];

    frameworkCopy = frameworkCopy;
  }

  [(AXBinaryMonitor *)self _addHandler:handlerCopy withName:frameworkCopy toMap:&self->_frameworkHandlerMap];
}

- (void)addHandler:(id)handler forDylib:(id)dylib
{
  handlerCopy = handler;
  dylibCopy = dylib;
  if (([dylibCopy hasSuffix:@".dylib"] & 1) == 0)
  {
    dylibCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.dylib", dylibCopy];

    dylibCopy = dylibCopy;
  }

  [(AXBinaryMonitor *)self _addHandler:handlerCopy withName:dylibCopy toMap:&self->_dylibHandlerMap];
}

- (void)addHandler:(id)handler forAppExtension:(id)extension
{
  handlerCopy = handler;
  extensionCopy = extension;
  if (([extensionCopy hasSuffix:@".appex"] & 1) == 0)
  {
    extensionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.appex", extensionCopy];

    extensionCopy = extensionCopy;
  }

  [(AXBinaryMonitor *)self _addHandler:handlerCopy withName:extensionCopy toMap:&self->_appExtensionHandlerMap];
}

- (void)addHandler:(id)handler forApp:(id)app
{
  handlerCopy = handler;
  appCopy = app;
  if (([appCopy hasSuffix:@".app"] & 1) == 0)
  {
    appCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.app", appCopy];

    appCopy = appCopy;
  }

  [(AXBinaryMonitor *)self _addHandler:handlerCopy withName:appCopy toMap:&self->_appHandlerMap];
}

- (void)_addHandler:(id)handler withName:(id)name toMap:(id *)map
{
  nameCopy = name;
  v9 = [handler copy];
  v10 = *map;
  v11 = v10;
  if (!handler)
  {
    v14 = @"not adding handler, block was null";
LABEL_6:
    _AXLogWithFacility(0, 0, 1, 0, 0, 0, 0, 0.0, 0, 1, v14);
    goto LABEL_7;
  }

  if (!nameCopy)
  {
    v14 = @"not adding handler, binary name was nil";
    goto LABEL_6;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__AXBinaryMonitor__addHandler_withName_toMap___block_invoke;
  v18[3] = &unk_1E735BAF8;
  v19 = v10;
  v12 = nameCopy;
  v20 = v12;
  v21 = v9;
  AXPerformBlockSynchronouslyOnMainThread(v18);
  binaryMonitorQueue = [(AXBinaryMonitor *)self binaryMonitorQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AXBinaryMonitor__addHandler_withName_toMap___block_invoke_2;
  block[3] = &unk_1E735B7E8;
  v16 = v12;
  selfCopy = self;
  dispatch_async(binaryMonitorQueue, block);

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

- (id)_bundleNameAndType:(id)type
{
  stringByDeletingLastPathComponent = [type stringByDeletingLastPathComponent];
  lastPathComponent = [stringByDeletingLastPathComponent lastPathComponent];

  return lastPathComponent;
}

- (BOOL)_loadImageIsFramework:(id)framework
{
  v3 = [(AXBinaryMonitor *)self _bundleNameAndType:framework];
  v4 = [v3 hasSuffix:@".framework"];

  return v4;
}

- (BOOL)_loadImageIsBundle:(id)bundle
{
  v3 = [(AXBinaryMonitor *)self _bundleNameAndType:bundle];
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

- (BOOL)_loadImageIsDylib:(id)dylib
{
  v3 = [(AXBinaryMonitor *)self _bundleNameAndType:dylib];
  v4 = [v3 hasSuffix:@".dylib"];

  return v4;
}

- (BOOL)_loadImageIsApp:(id)app
{
  v3 = [(AXBinaryMonitor *)self _bundleNameAndType:app];
  v4 = [v3 hasSuffix:@".app"];

  return v4;
}

- (BOOL)_loadImageIsAppExtension:(id)extension
{
  v3 = [(AXBinaryMonitor *)self _bundleNameAndType:extension];
  v4 = [v3 hasSuffix:@".appex"];

  return v4;
}

- (id)_frameworkNameForImage:(id)image
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  pathComponents = [image pathComponents];
  reverseObjectEnumerator = [pathComponents reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v6 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 hasSuffix:@"framework"])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_bundleNameForImage:(id)image
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  pathComponents = [image pathComponents];
  v4 = [pathComponents countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(pathComponents);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        lowercaseString = [v8 lowercaseString];
        v10 = [lowercaseString hasSuffix:@"bundle"];

        if (v10)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v5 = [pathComponents countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_appExtensionNameForImage:(id)image
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pathComponents = [image pathComponents];
  v4 = [pathComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(pathComponents);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasSuffix:@"appex"])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [pathComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)_appNameForImage:(id)image
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pathComponents = [image pathComponents];
  v4 = [pathComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(pathComponents);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasSuffix:@"app"])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [pathComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)_dylibNameForImage:(id)image
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pathComponents = [image pathComponents];
  v4 = [pathComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(pathComponents);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasSuffix:@"dylib"])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [pathComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)_applyHandlerBlocks:(id)blocks handlerMap:(id)map
{
  v18 = *MEMORY[0x1E69E9840];
  blocksCopy = blocks;
  mapCopy = map;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [mapCopy objectForKey:{blocksCopy, 0}];
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

  [mapCopy removeObjectForKey:blocksCopy];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleLoadedImagePath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v8 = pathCopy;
    if ([(AXBinaryMonitor *)self _loadImageIsFramework:pathCopy])
    {
      v5 = [(AXBinaryMonitor *)self _frameworkNameForImage:v8];
      frameworkHandlerMap = [(AXBinaryMonitor *)self frameworkHandlerMap];
    }

    else if ([(AXBinaryMonitor *)self _loadImageIsBundle:v8])
    {
      v5 = [(AXBinaryMonitor *)self _bundleNameForImage:v8];
      frameworkHandlerMap = [(AXBinaryMonitor *)self bundleHandlerMap];
    }

    else if ([(AXBinaryMonitor *)self _loadImageIsDylib:v8])
    {
      v5 = [(AXBinaryMonitor *)self _dylibNameForImage:v8];
      frameworkHandlerMap = [(AXBinaryMonitor *)self dylibHandlerMap];
    }

    else if ([(AXBinaryMonitor *)self _loadImageIsAppExtension:v8])
    {
      v5 = [(AXBinaryMonitor *)self _appExtensionNameForImage:v8];
      frameworkHandlerMap = [(AXBinaryMonitor *)self appExtensionHandlerMap];
    }

    else
    {
      if (![(AXBinaryMonitor *)self _loadImageIsApp:v8])
      {
        goto LABEL_13;
      }

      v5 = [(AXBinaryMonitor *)self _appNameForImage:v8];
      frameworkHandlerMap = [(AXBinaryMonitor *)self appHandlerMap];
    }

    v7 = frameworkHandlerMap;
    [(AXBinaryMonitor *)self _applyHandlerBlocks:v5 handlerMap:frameworkHandlerMap];
  }

LABEL_13:

  MEMORY[0x1EEE66BB8]();
}

@end