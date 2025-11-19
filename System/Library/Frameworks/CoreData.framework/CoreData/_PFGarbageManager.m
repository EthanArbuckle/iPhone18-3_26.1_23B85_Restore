@interface _PFGarbageManager
+ (void)initialize;
- (uint64_t)doCleanupForURL:(uint64_t)result;
- (void)temporaryLinksDirectoryForStore:(id *)a1;
@end

@implementation _PFGarbageManager

+ (void)initialize
{
  objc_opt_self();
  if (!_NSTheOneGarbageManager)
  {
    v3 = NSAllocateObject(a1, 0, 0);
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

- (void)temporaryLinksDirectoryForStore:(id *)a1
{
  if (!a1)
  {
    return 0;
  }

  objc_sync_enter(a1);
  v4 = [a2 externalDataReferencesDirectory];
  v5 = [a1[1] objectForKey:v4];
  if (!v5)
  {
    v5 = NSTemporaryDirectory();
    if (!v5)
    {
      v5 = [v4 stringByDeletingLastPathComponent];
    }

    [a1[1] setObject:v5 forKey:v4];
  }

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:-[NSString stringByAppendingPathComponent:](-[NSString stringByAppendingPathComponent:](v5 isDirectory:{"stringByAppendingPathComponent:", @".LINKS", "stringByAppendingPathComponent:", +[_PFRoutines _getUUID]()), 1}];
  if (v6)
  {
    if ([objc_msgSend(MEMORY[0x1E696AC08] defaultManager])
    {
      v7 = [objc_msgSend(v6 "path")];
      v8 = a1[2];
      objc_sync_enter(v8);
      [a1[2] addObject:{objc_msgSend(v6, "path")}];
      v9 = [a1[2] copy];
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
        block[6] = a1;
        dispatch_async(global_queue, block);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  objc_sync_exit(a1);
  return v6;
}

- (uint64_t)doCleanupForURL:(uint64_t)result
{
  if (result && a2)
  {
    v2 = result;
    v3 = [a2 path];
    v4 = *(v2 + 16);
    objc_sync_enter(v4);
    if ([*(v2 + 16) containsObject:v3])
    {
      [*(v2 + 16) removeObject:v3];
      v5 = [MEMORY[0x1E696AC08] defaultManager];
      [v5 removeItemAtPath:v3 error:0];
      v6 = [v3 stringByDeletingLastPathComponent];
      if ([objc_msgSend(v6 "lastPathComponent")])
      {
        v7 = [v5 contentsOfDirectoryAtPath:v6 error:0];
        if (v7)
        {
          if (![v7 count])
          {
            [v5 removeItemAtPath:v6 error:0];
          }
        }
      }
    }

    return objc_sync_exit(v4);
  }

  return result;
}

@end