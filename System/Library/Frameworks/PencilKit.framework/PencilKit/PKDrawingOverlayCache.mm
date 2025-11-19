@interface PKDrawingOverlayCache
+ (id)sharedCache;
- (PKDrawingOverlayCache)init;
- (id)cacheDirectory;
- (id)cachePathForDrawingUUID:(uint64_t)a1;
- (void)clearMemoryCache;
- (void)overlayDrawingForDrawingUUID:(id)a3 tintColor:(id)a4 completion:(id)a5;
- (void)setOverlayDrawing:(void *)a3 forDrawingUUID:;
@end

@implementation PKDrawingOverlayCache

+ (id)sharedCache
{
  if (_MergedGlobals_146 != -1)
  {
    dispatch_once(&_MergedGlobals_146, &__block_literal_global_53);
  }

  v3 = qword_1ED6A5190;

  return v3;
}

void __36__PKDrawingOverlayCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(PKDrawingOverlayCache);
  v1 = qword_1ED6A5190;
  qword_1ED6A5190 = v0;
}

- (PKDrawingOverlayCache)init
{
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = PKDrawingOverlayCache;
  v2 = [(PKDrawingOverlayCache *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.pencilkit.overlaydrawingqueue", v4);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    memoryCache = v2->_memoryCache;
    v2->_memoryCache = v7;

    [(NSCache *)v2->_memoryCache setCountLimit:4];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [PKDrawingOverlayCache cacheDirectory];
    v18 = 0;
    v11 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v18];
    v12 = v18;

    v13 = os_log_create("com.apple.pencilkit", "Math");
    v14 = v13;
    if (v11)
    {
      v15 = v13;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [PKDrawingOverlayCache cacheDirectory];
        *buf = 138412290;
        v21 = v16;
        _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "Create drawing overlay cache directory at: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_ERROR, "Error creating cache directory", buf, 2u);
    }
  }

  return v2;
}

- (id)cacheDirectory
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v0 firstObject];

  v2 = MEMORY[0x1E695DFF8];
  v6[0] = v1;
  v6[1] = @"com.apple.pencilkit.overlaydrawings";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 fileURLWithPathComponents:v3];

  return v4;
}

- (id)cachePathForDrawingUUID:(uint64_t)a1
{
  v10[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a2 uniqueCacheFilePath];
    v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v4 = [v3 firstObject];

    v5 = 0;
    if (v4 && v2)
    {
      v6 = [v2 stringByAppendingPathExtension:@".drawing"];
      v7 = MEMORY[0x1E695DFF8];
      v10[0] = v4;
      v10[1] = @"com.apple.pencilkit.overlaydrawings";
      v10[2] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
      v5 = [v7 fileURLWithPathComponents:v8];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)overlayDrawingForDrawingUUID:(id)a3 tintColor:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 uniqueCacheFilePath];
  v12 = [(PKDrawingOverlayCache *)self cachePathForDrawingUUID:v10];
  v13 = [v12 path];
  v14 = [v10 AES128Key];

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKDrawingOverlayCache_overlayDrawingForDrawingUUID_tintColor_completion___block_invoke;
  block[3] = &unk_1E82DA358;
  block[4] = self;
  v23 = v11;
  v24 = v13;
  v25 = v12;
  v26 = v14;
  v27 = v8;
  v28 = v9;
  v16 = v9;
  v17 = v8;
  v18 = v14;
  v19 = v12;
  v20 = v13;
  v21 = v11;
  dispatch_async(accessQueue, block);
}

void __75__PKDrawingOverlayCache_overlayDrawingForDrawingUUID_tintColor_completion___block_invoke(void *a1)
{
  v1 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKey:v1[5]];
  if (!v4)
  {
    if (!v1[6] || ([MEMORY[0x1E696AC08] defaultManager], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "fileExistsAtPath:", v1[6]), v21, !v22))
    {
      v4 = 0;
      goto LABEL_24;
    }

    v23 = v1[7];
    v24 = v1[8];
    v38 = 0;
    v25 = [PKDataEncryption decryptFile:v23 key:v24 error:&v38];
    v26 = v38;
    if (v25)
    {
      v4 = [[PKDrawingConcrete alloc] initWithData:v25 error:0];
      v27 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v1[5];
        v29 = [v25 length];
        v30 = [(PKDrawing *)v4 strokes];
        v31 = [v30 count];
        *buf = 138412802;
        *&buf[4] = v28;
        *&buf[12] = 2048;
        *&buf[14] = v29;
        *&buf[22] = 2048;
        *&buf[24] = v31;
        _os_log_impl(&dword_1C7CCA000, v27, OS_LOG_TYPE_DEFAULT, "Loaded overlay cache for: %@ (%lu) => %lu", buf, 0x20u);
      }
    }

    else
    {
      v27 = os_log_create("com.apple.pencilkit", "Math");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v1[5];
        *buf = 138412546;
        *&buf[4] = v32;
        *&buf[12] = 2112;
        *&buf[14] = v26;
        _os_log_impl(&dword_1C7CCA000, v27, OS_LOG_TYPE_DEFAULT, "Failed to load overlay cache for: %@ %@", buf, 0x16u);
      }

      v4 = 0;
    }
  }

  if (v1[9] && v4)
  {
    v5 = MEMORY[0x1E695DF70];
    v6 = [(PKDrawing *)v4 strokes];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = v4;
    obj = [(PKDrawing *)v4 strokes];
    v9 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = [v13 ink];
          v15 = v1;
          v16 = [PKInk inkFromInk:v14 color:v1[9]];

          v17 = objc_alloc([(PKDrawingConcrete *)v8 strokeClass]);
          v18 = [v13 _strokeData];
          if (v13)
          {
            [v13 transform];
          }

          else
          {
            v40 = 0u;
            memset(buf, 0, sizeof(buf));
          }

          v19 = [v13 mask];
          v20 = [v17 initWithInk:v16 strokePath:v18 transform:buf mask:v19];

          [v7 addObject:v20];
          v1 = v15;
        }

        v10 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v10);
    }

    v4 = [objc_alloc(objc_opt_class()) initWithStrokes:v7 fromDrawing:v8];
  }

LABEL_24:
  (*(v1[10] + 16))();
}

- (void)setOverlayDrawing:(void *)a3 forDrawingUUID:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 uniqueCacheFilePath];
    v9 = [(PKDrawingOverlayCache *)a1 cachePathForDrawingUUID:v7];
    v10 = [v5 copy];

    v11 = *(a1 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PKDrawingOverlayCache_setOverlayDrawing_forDrawingUUID___block_invoke;
    block[3] = &unk_1E82DA380;
    v5 = v10;
    v15 = v5;
    v16 = a1;
    v17 = v8;
    v18 = v7;
    v19 = v9;
    v12 = v9;
    v13 = v8;
    dispatch_async(v11, block);
  }
}

void __58__PKDrawingOverlayCache_setOverlayDrawing_forDrawingUUID___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v2)
    {
      v3 = *(v2 + 8);
    }

    else
    {
      v3 = 0;
    }

    [v3 setObject:? forKey:?];
  }

  else
  {
    if (v2)
    {
      v4 = *(v2 + 8);
    }

    else
    {
      v4 = 0;
    }

    [v4 removeObjectForKey:*(a1 + 48)];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [v5 serializeTransiently];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 length])
  {
    v7 = [*(a1 + 56) AES128Key];
    v8 = [PKDataEncryption encryptData:v6 to:*(a1 + 64) key:v7 error:0];
    v9 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v11 = [*(a1 + 32) strokes];
      *buf = 138412802;
      v22 = v10;
      v23 = 2048;
      v24 = [v11 count];
      v25 = 1024;
      v26 = v8;
      _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "Updated overlay cache for: %@, %lu => %{BOOL}d", buf, 0x1Cu);
    }

LABEL_15:
    goto LABEL_16;
  }

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = [*(a1 + 64) path];
  v14 = [v12 fileExistsAtPath:v13];

  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = os_log_create("com.apple.pencilkit", "Math");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 48);
    *buf = 138412290;
    v22 = v16;
    _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "Deleting overlay cache for %@", buf, 0xCu);
  }

  v17 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = *(a1 + 64);
  v20 = 0;
  [v17 removeItemAtURL:v18 error:&v20];
  v7 = v20;

  if (v7)
  {
    v9 = os_log_create("com.apple.pencilkit", "Math");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 48);
      *buf = 138412290;
      v22 = v19;
      _os_log_error_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_ERROR, "Unable to delete overlay cache for: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
}

- (void)clearMemoryCache
{
  if (self)
  {
    self = self->_memoryCache;
  }

  [(PKDrawingOverlayCache *)self removeAllObjects];
}

@end