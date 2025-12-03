@interface _MKIconDiskCache
- (_MKIconDiskCache)initWithDirectoryURL:(id)l;
- (id)imageForStyleAttributes:(id)attributes size:(unint64_t)size scale:(double)scale drawingBlock:(id)block;
- (id)imageForStyleAttributes:(id)attributes size:(unint64_t)size scale:(double)scale isCarplay:(BOOL)carplay isTransit:(BOOL)transit isTransparent:(BOOL)transparent isNightMode:(BOOL)mode drawingBlock:(id)self0;
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
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  allResourcePaths = [modernManager allResourcePaths];
  v7 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"self" ascending:1];
  v29[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v9 = [allResourcePaths sortedArrayUsingDescriptors:v8];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v9 forKeyedSubscript:@"ResourceVersions"];
  if (([dictionary isEqualToDictionary:v4] & 1) == 0)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [(NSURL *)self->_directoryURL path];
    v13 = [defaultManager fileExistsAtPath:path];

    if (v13)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      directoryURL = self->_directoryURL;
      v26 = 0;
      v16 = [defaultManager2 removeItemAtURL:directoryURL error:&v26];
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
    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = self->_directoryURL;
    v25 = 0;
    v21 = [defaultManager3 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v25];
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

    if (([dictionary writeToURL:v3 atomically:1] & 1) == 0)
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

- (id)imageForStyleAttributes:(id)attributes size:(unint64_t)size scale:(double)scale isCarplay:(BOOL)carplay isTransit:(BOOL)transit isTransparent:(BOOL)transparent isNightMode:(BOOL)mode drawingBlock:(id)self0
{
  modeCopy = mode;
  transparentCopy = transparent;
  transitCopy = transit;
  carplayCopy = carplay;
  v52 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  blockCopy = block;
  v19 = blockCopy;
  v20 = 0;
  if (attributesCopy && blockCopy)
  {
    v43 = blockCopy;
    [MEMORY[0x1E696AFB0] UUID];
    v41 = transparentCopy;
    v42 = transitCopy;
    v40 = modeCopy;
    v46 = v44 = attributesCopy;
    [(NSLock *)self->_lock lock];
    [(NSMutableArray *)self->_inProgressUUIDs addObject:v46];
    [(NSLock *)self->_lock unlock];
    v45 = attributesCopy;
    featureStyleAttributes = [v45 featureStyleAttributes];
    v22 = [MEMORY[0x1E695DFA8] set];
    if (*(featureStyleAttributes + 33))
    {
      v23 = 0;
      v24 = 0;
      do
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u_%i", *(*featureStyleAttributes + v23), *(*featureStyleAttributes + v23 + 4)];
        [v22 addObject:v25];

        ++v24;
        v23 += 8;
      }

      while (v24 < *(featureStyleAttributes + 33));
    }

    v26 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"self" ascending:1];
    *buf = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    attributesCopy = v44;
    v28 = [v22 sortedArrayUsingDescriptors:v27];

    v29 = [v28 componentsJoinedByString:@"-"];
    v30 = [v29 mutableCopy];

    if (size < 6)
    {
      [v30 appendString:off_1E76C7E60[size]];
    }

    if (carplayCopy)
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

    if (scale > 1.0)
    {
      [v30 appendFormat:@"@%lux", vcvtpd_u64_f64(scale)];
    }

    [v30 appendString:@".png"];

    v31 = [(NSURL *)self->_directoryURL URLByAppendingPathComponent:v30];
    path = [v31 path];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v34 = [defaultManager fileExistsAtPath:path];

    if (v34 && ([MEMORY[0x1E69DCAB8] imageWithContentsOfFile:path], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v35 = GEOGetMKIconManagerLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = path;
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
        v50 = path;
        dispatch_async(storingQueue, block);
        v38 = v37;
      }
    }
  }

  return v20;
}

- (id)imageForStyleAttributes:(id)attributes size:(unint64_t)size scale:(double)scale drawingBlock:(id)block
{
  v6 = [(_MKIconDiskCache *)self imageForStyleAttributes:attributes size:size scale:0 isCarplay:0 isTransit:0 isTransparent:0 isNightMode:scale drawingBlock:block];

  return v6;
}

- (void)dealloc
{
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  [modernManager removeTileGroupObserver:self];

  v4.receiver = self;
  v4.super_class = _MKIconDiskCache;
  [(_MKIconDiskCache *)&v4 dealloc];
}

- (_MKIconDiskCache)initWithDirectoryURL:(id)l
{
  lCopy = l;
  v19.receiver = self;
  v19.super_class = _MKIconDiskCache;
  v6 = [(_MKIconDiskCache *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directoryURL, l);
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

    modernManager = [MEMORY[0x1E69A2478] modernManager];
    [modernManager addTileGroupObserver:v7 queue:v7->_storingQueue];

    [(_MKIconDiskCache *)v7 _updateVersionsInfo];
    v17 = v7;
  }

  return v7;
}

@end