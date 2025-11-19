@interface _MKIconDiskCache
- (_MKIconDiskCache)initWithDirectoryURL:(id)a3;
- (id)imageForStyleAttributes:(id)a3 size:(unint64_t)a4 scale:(double)a5 drawingBlock:(id)a6;
- (id)imageForStyleAttributes:(id)a3 size:(unint64_t)a4 scale:(double)a5 isCarplay:(BOOL)a6 isTransit:(BOOL)a7 isTransparent:(BOOL)a8 isNightMode:(BOOL)a9 drawingBlock:(id)a10;
- (void)_updateVersionsInfo;
- (void)dealloc;
@end

@implementation _MKIconDiskCache

- (void)_updateVersionsInfo
{
  v29[1] = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  v3 = [(NSURL *)self->_directoryURL URLByAppendingPathComponent:@"version.plist"];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v3 error:0];
  v5 = [MEMORY[0x1E69A2478] modernManager];
  v6 = [v5 allResourcePaths];
  v7 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"self" ascending:1];
  v29[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v9 = [v6 sortedArrayUsingDescriptors:v8];

  v10 = [MEMORY[0x1E695DF90] dictionary];
  [v10 setObject:v9 forKeyedSubscript:@"ResourceVersions"];
  if (([v10 isEqualToDictionary:v4] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [(NSURL *)self->_directoryURL path];
    v13 = [v11 fileExistsAtPath:v12];

    if (v13)
    {
      v14 = [MEMORY[0x1E696AC08] defaultManager];
      directoryURL = self->_directoryURL;
      v26 = 0;
      v16 = [v14 removeItemAtURL:directoryURL error:&v26];
      v17 = v26;

      if ((v16 & 1) == 0)
      {
        v18 = GEOGetMKIconManagerLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = v17;
          _os_log_impl(&dword_1A2EA0000, v18, OS_LOG_TYPE_ERROR, "Failed to remove stale Maps images: %@", buf, 0xCu);
        }
      }
    }

    [(NSMutableArray *)self->_inProgressUUIDs removeAllObjects];
    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = self->_directoryURL;
    v25 = 0;
    v21 = [v19 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v25];
    v22 = v25;

    if ((v21 & 1) == 0)
    {
      v23 = GEOGetMKIconManagerLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v22;
        _os_log_impl(&dword_1A2EA0000, v23, OS_LOG_TYPE_ERROR, "Failed to create Maps image cache directory: %@", buf, 0xCu);
      }
    }

    if (([v10 writeToURL:v3 atomically:1] & 1) == 0)
    {
      v24 = GEOGetMKIconManagerLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v3;
        _os_log_impl(&dword_1A2EA0000, v24, OS_LOG_TYPE_ERROR, "Failed to write Maps image cache version plist to %@", buf, 0xCu);
      }
    }
  }

  [(NSLock *)self->_lock unlock];
}

- (id)imageForStyleAttributes:(id)a3 size:(unint64_t)a4 scale:(double)a5 isCarplay:(BOOL)a6 isTransit:(BOOL)a7 isTransparent:(BOOL)a8 isNightMode:(BOOL)a9 drawingBlock:(id)a10
{
  v10 = a9;
  v11 = a8;
  v12 = a7;
  v13 = a6;
  v52 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a10;
  v19 = v18;
  v20 = 0;
  if (v17 && v18)
  {
    v43 = v18;
    [MEMORY[0x1E696AFB0] UUID];
    v41 = v11;
    v42 = v12;
    v40 = v10;
    v46 = v44 = v17;
    [(NSLock *)self->_lock lock];
    [(NSMutableArray *)self->_inProgressUUIDs addObject:v46];
    [(NSLock *)self->_lock unlock];
    v45 = v17;
    v21 = [v45 featureStyleAttributes];
    v22 = [MEMORY[0x1E695DFA8] set];
    if (*(v21 + 33))
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u_%i", *(*v21 + v23), *(*v21 + v23 + 4)];
        [v22 addObject:v25];

        ++v24;
        v23 += 8;
      }

      while (v24 < *(v21 + 33));
    }

    v26 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"self" ascending:1];
    *buf = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v17 = v44;
    v28 = [v22 sortedArrayUsingDescriptors:v27];

    v29 = [v28 componentsJoinedByString:@"-"];
    v30 = [v29 mutableCopy];

    if (a4 < 6)
    {
      [v30 appendString:off_1E76C7E60[a4]];
    }

    if (v13)
    {
      [v30 appendString:@"-carplay"];
    }

    if (v42)
    {
      [v30 appendString:@"-transit"];
    }

    if (v41)
    {
      [v30 appendString:@"-t"];
    }

    if (v40)
    {
      [v30 appendString:@"-n"];
    }

    if (a5 > 1.0)
    {
      [v30 appendFormat:@"@%lux", vcvtpd_u64_f64(a5)];
    }

    [v30 appendString:@".png"];

    v31 = [(NSURL *)self->_directoryURL URLByAppendingPathComponent:v30];
    v32 = [v31 path];
    v33 = [MEMORY[0x1E696AC08] defaultManager];
    v34 = [v33 fileExistsAtPath:v32];

    if (v34 && ([MEMORY[0x1E69DCAB8] imageWithContentsOfFile:v32], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v35 = GEOGetMKIconManagerLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v32;
        _os_log_impl(&dword_1A2EA0000, v35, OS_LOG_TYPE_DEBUG, "Get image at %@", buf, 0xCu);
      }

      [(NSLock *)self->_lock lock];
      [(NSMutableArray *)self->_inProgressUUIDs removeObject:v46];
      [(NSLock *)self->_lock unlock];
    }

    else
    {
      v20 = v43[2](v43);
      if (v20)
      {
        storingQueue = self->_storingQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __114___MKIconDiskCache_imageForStyleAttributes_size_scale_isCarplay_isTransit_isTransparent_isNightMode_drawingBlock___block_invoke;
        block[3] = &unk_1E76CD0D0;
        block[4] = self;
        v48 = v46;
        v37 = v20;
        v49 = v37;
        v50 = v32;
        dispatch_async(storingQueue, block);
        v38 = v37;
      }
    }
  }

  return v20;
}

- (id)imageForStyleAttributes:(id)a3 size:(unint64_t)a4 scale:(double)a5 drawingBlock:(id)a6
{
  v6 = [(_MKIconDiskCache *)self imageForStyleAttributes:a3 size:a4 scale:0 isCarplay:0 isTransit:0 isTransparent:0 isNightMode:a5 drawingBlock:a6];

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69A2478] modernManager];
  [v3 removeTileGroupObserver:self];

  v4.receiver = self;
  v4.super_class = _MKIconDiskCache;
  [(_MKIconDiskCache *)&v4 dealloc];
}

- (_MKIconDiskCache)initWithDirectoryURL:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = _MKIconDiskCache;
  v6 = [(_MKIconDiskCache *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directoryURL, a3);
    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v7->_lock;
    v7->_lock = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    inProgressUUIDs = v7->_inProgressUUIDs;
    v7->_inProgressUUIDs = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_UTILITY, 0);

    v14 = dispatch_queue_create("com.apple.Maps.MKIconDiskCache", v13);
    storingQueue = v7->_storingQueue;
    v7->_storingQueue = v14;

    v16 = [MEMORY[0x1E69A2478] modernManager];
    [v16 addTileGroupObserver:v7 queue:v7->_storingQueue];

    [(_MKIconDiskCache *)v7 _updateVersionsInfo];
    v17 = v7;
  }

  return v7;
}

@end