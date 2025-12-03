@interface _PFGarbageManager
+ (void)initialize;
- (uint64_t)doCleanupForURL:(uint64_t)result;
- (void)temporaryLinksDirectoryForStore:(id *)store;
@end

@implementation _PFGarbageManager

+ (void)initialize
{
  objc_opt_self();
  if (!_NSTheOneGarbageManager)
  {
    v3 = NSAllocateObject(self, 0, 0);
    _NSTheOneGarbageManager = v3;
    if (v3)
    {
      v6.receiver = v3;
      v6.super_class = _PFGarbageManager;
      v4 = objc_msgSendSuper2(&v6, sel_init);
      if (v4)
      {
        v5 = v4;
        v4[2] = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v5[1] = objc_alloc_init(MEMORY[0x1E695DF90]);
      }
    }
  }
}

- (void)temporaryLinksDirectoryForStore:(id *)store
{
  if (!store)
  {
    return 0;
  }

  objc_sync_enter(store);
  externalDataReferencesDirectory = [a2 externalDataReferencesDirectory];
  stringByDeletingLastPathComponent = [store[1] objectForKey:externalDataReferencesDirectory];
  if (!stringByDeletingLastPathComponent)
  {
    stringByDeletingLastPathComponent = NSTemporaryDirectory();
    if (!stringByDeletingLastPathComponent)
    {
      stringByDeletingLastPathComponent = [externalDataReferencesDirectory stringByDeletingLastPathComponent];
    }

    [store[1] setObject:stringByDeletingLastPathComponent forKey:externalDataReferencesDirectory];
  }

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:-[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](stringByDeletingLastPathComponent isDirectory:{"stringByAppendingPathComponent:", @".LINKS", "stringByAppendingPathComponent:", +[_PFRoutines _getUUID]()), 1}];
  if (v6)
  {
    if ([objc_msgSend(MEMORY[0x1E696AC08] defaultManager])
    {
      v7 = [objc_msgSend(v6 "path")];
      v8 = store[2];
      objc_sync_enter(v8);
      [store[2] addObject:{objc_msgSend(v6, "path")}];
      v9 = [store[2] copy];
      objc_sync_exit(v8);
      if (v9)
      {
        global_queue = dispatch_get_global_queue(-32768, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49___PFGarbageManager__doCleanupForDir_exceptURLs___block_invoke;
        block[3] = &unk_1E6EC19D8;
        block[4] = v7;
        block[5] = v9;
        block[6] = store;
        dispatch_async(global_queue, block);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  objc_sync_exit(store);
  return v6;
}

- (uint64_t)doCleanupForURL:(uint64_t)result
{
  if (result && a2)
  {
    v2 = result;
    path = [a2 path];
    v4 = *(v2 + 16);
    objc_sync_enter(v4);
    if ([*(v2 + 16) containsObject:path])
    {
      [*(v2 + 16) removeObject:path];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager removeItemAtPath:path error:0];
      stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
      if ([objc_msgSend(stringByDeletingLastPathComponent "lastPathComponent")])
      {
        v7 = [defaultManager contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:0];
        if (v7)
        {
          if (![v7 count])
          {
            [defaultManager removeItemAtPath:stringByDeletingLastPathComponent error:0];
          }
        }
      }
    }

    return objc_sync_exit(v4);
  }

  return result;
}

@end