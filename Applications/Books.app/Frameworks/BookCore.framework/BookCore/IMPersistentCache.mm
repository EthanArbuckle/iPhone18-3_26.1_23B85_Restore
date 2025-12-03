@interface IMPersistentCache
- (BOOL)_createStorageForDb:(id)db;
- (BOOL)_insertCGImage:(CGImage *)image forKey:(id)key;
- (BOOL)_insertCGImage:(CGImage *)image forKey:(id)key mimeType:(id)type scale:(double)scale properties:(id)properties;
- (BOOL)_unknownKeysContainsObject:(id)object;
- (BOOL)hasItemForKey:(id)key;
- (BOOL)insertCGImage:(CGImage *)image forKey:(id)key mimeType:(id)type scale:(double)scale properties:(id)properties;
- (BOOL)insertCGImages:(id)images forKey:(id)key mimeType:(id)type baseSize:(CGSize)size properties:(id)properties;
- (CGImage)_copyCGImageForRow:(id)row size:(CGSize *)size resourceSize:(int64_t *)resourceSize scale:(double *)scale;
- (CGImage)copyCGImageForKey:(id)key resourceSize:(int64_t *)size scale:(double *)scale;
- (IMPersistentCache)initWithPath:(id)path maxSize:(unint64_t)size;
- (id)CGImagesForKey:(id)key size:(CGSize *)size resourceSize:(int64_t *)resourceSize;
- (id)dataForKey:(id)key;
- (id)dataForKey:(id)key mimeType:(id)type;
- (id)deleteItemsForMimeType:(id)type;
- (id)firstImageKeyWithRootKey:(id)key;
- (id)itemsForMimeType:(id)type;
- (id)metadataForKey:(id)key;
- (int64_t)version;
- (unint64_t)_loadCacheSize;
- (unint64_t)resourceSizeForKey:(id)key;
- (void)_LRUCleanupForMimeType:(id)type;
- (void)_accessedIdsAddObject:(id)object;
- (void)_accessedIdsRemoveAllObjects;
- (void)_adjustCacheSizeBy:(int64_t)by;
- (void)_createCacheTable:(id)table;
- (void)_saveCacheSize:(int64_t)size;
- (void)_unknownKeysAddObject:(id)object;
- (void)_unknownKeysRemoveObject:(id)object;
- (void)_updateCaches:(id)caches;
- (void)clear;
- (void)deleteItemForKey:(id)key;
- (void)deleteItemsWithAllKeysContaining:(id)containing;
- (void)deleteItemsWithKeyLike:(id)like;
- (void)insertData:(id)data forKey:(id)key mimeType:(id)type;
- (void)replaceDataForKey:(id)key withData:(id)data mimeType:(id)type;
@end

@implementation IMPersistentCache

- (IMPersistentCache)initWithPath:(id)path maxSize:(unint64_t)size
{
  pathCopy = path;
  v43.receiver = self;
  v43.super_class = IMPersistentCache;
  v7 = [(IMPersistentCache *)&v43 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_18;
  }

  v7->_maxSize = size;
  v9 = objc_opt_new();
  accessedIds = v8->_accessedIds;
  v8->_accessedIds = v9;

  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [NSNumber numberWithBool:0];
  v13 = [NSDictionary dictionaryWithObject:v12 forKey:@"RemoveImageCacheFiles"];
  [v11 registerDefaults:v13];

  v14 = +[NSProcessInfo processInfo];
  environment = [v14 environment];
  v16 = [environment objectForKey:@"RemoveImageCacheFiles"];
  if ([v16 BOOLValue])
  {
  }

  else
  {
    v17 = [v11 BOOLForKey:@"RemoveImageCacheFiles"];

    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v18 = objc_alloc_init(NSFileManager);
  [v18 removeItemAtPath:pathCopy error:0];
  [v11 setBool:0 forKey:@"RemoveImageCacheFiles"];

LABEL_6:
  v19 = [[IMDatabaseHandle alloc] initWithPath:pathCopy];
  db = v8->_db;
  v8->_db = v19;

  v21 = [[IMAdminTable alloc] initWithDatabaseHandle:v8->_db];
  adminTable = v8->_adminTable;
  v8->_adminTable = v21;

  if (![(IMAdminTable *)v8->_adminTable hasDatabaseVersion])
  {
    tableNames = [(IMDatabaseHandle *)v8->_db tableNames];
    v24 = [tableNames valueForKey:@"name"];
    v25 = [v24 containsObject:@"items"];

    if (v25)
    {
      [(IMAdminTable *)v8->_adminTable setDatabaseVersion:1];
    }
  }

  if (![(IMPersistentCache *)v8 _createStorageForDb:v8->_db])
  {
    v26 = v8->_db;
    v8->_db = 0;

    v27 = +[NSFileManager defaultManager];
    [v27 removeItemAtPath:pathCopy error:0];

    v28 = [[IMDatabaseHandle alloc] initWithPath:pathCopy];
    v29 = v8->_db;
    v8->_db = v28;

    [(IMPersistentCache *)v8 _createStorageForDb:v8->_db];
    v30 = BCIMLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v45 = "[IMPersistentCache initWithPath:maxSize:]";
      v46 = 2080;
      v47 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Cache/BCPersistentCache.m";
      v48 = 1024;
      v49 = 113;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v31 = BCIMLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "@Could not create cache structure, reinitialized backing store", buf, 2u);
    }
  }

  v8->_cacheSize = [(IMPersistentCache *)v8 _loadCacheSize];
  v32 = objc_opt_new();
  unknownKeys = v8->_unknownKeys;
  v8->_unknownKeys = v32;

  v8->_accessedIdsLock._os_unfair_lock_opaque = 0;
  v8->_unknownKeysLock._os_unfair_lock_opaque = 0;
  v8->_cacheSizeLock._os_unfair_lock_opaque = 0;
  v34 = v8->_adminTable;
  v35 = +[NSDate date];
  [(IMAdminTable *)v34 setLastAccessDate:v35];

  if (size)
  {
    v36 = [NSTimer alloc];
    v37 = [NSDate dateWithTimeIntervalSinceNow:2.0];
    v38 = [v36 initWithFireDate:v37 interval:v8 target:"_updateCaches:" selector:0 userInfo:1 repeats:300.0];
    scanTimer = v8->_scanTimer;
    v8->_scanTimer = v38;

    v40 = +[NSRunLoop currentRunLoop];
    [v40 addTimer:v8->_scanTimer forMode:NSDefaultRunLoopMode];
  }

  v41 = v8;

LABEL_18:
  return v8;
}

- (void)_createCacheTable:(id)table
{
  tableCopy = table;
  v5 = [NSString stringWithFormat:@"create table if not exists items (pk %@, key %@, accessDate %@, width %@, height %@, bpc %@, bpp %@, bpr %@, scale %@, mimeType %@, resourceSize %@, resourceData %@)", @"integer primary key", @"text", @"date", @"integer", @"integer", @"integer", @"integer", @"integer", @"float", @"text", @"integer", @"blob"];
  [tableCopy addObject:v5];
  [tableCopy addObject:@"create index if not exists items_key_index on items (key)"];

  [(IMAdminTable *)self->_adminTable setDatabaseVersion:2];
}

- (BOOL)_createStorageForDb:(id)db
{
  dbCopy = db;
  v5 = objc_opt_new();
  databaseVersion = [(IMAdminTable *)self->_adminTable databaseVersion];
  if (databaseVersion == 1)
  {
    v7 = [NSString stringWithFormat:@"alter table items add column scale %@", @"integer"];
    [v5 addObject:v7];

    v8 = +[UIScreen mainScreen];
    [v8 scale];
    v10 = v9;

    v11 = [NSString stringWithFormat:@"update items set scale = %ld", v10];
    [v5 addObject:v11];

    [(IMAdminTable *)self->_adminTable setDatabaseVersion:2];
  }

  else if (!databaseVersion)
  {
    [(IMPersistentCache *)self _createCacheTable:v5];
  }

  [dbCopy runStatement:@"pragma page_size=32768" arguments:0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [dbCopy runStatement:*(*(&v17 + 1) + 8 * v15) arguments:0];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  [dbCopy runStatement:@"pragma journal_mode=WAL" arguments:0];
  [dbCopy runStatement:@"pragma synchronous=normal" arguments:0];

  return 1;
}

- (void)insertData:(id)data forKey:(id)key mimeType:(id)type
{
  dataCopy = data;
  keyCopy = key;
  typeCopy = type;
  v11 = [NSString stringWithFormat:@"insert into items (key, accessDate, mimeType, resourceSize, resourceData) values (?, ?, ?, ?, ?)"];
  v12 = +[NSDate date];
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [dataCopy length]);
  v14 = [NSArray arrayWithObjects:keyCopy, v12, typeCopy, v13, dataCopy, 0];

  if ([(IMDatabaseHandle *)self->_db runStatement:v11 arguments:v14])
  {
    -[IMPersistentCache _adjustCacheSizeBy:](self, "_adjustCacheSizeBy:", [dataCopy length]);
    [(IMPersistentCache *)self _unknownKeysRemoveObject:keyCopy];
  }
}

- (BOOL)_insertCGImage:(CGImage *)image forKey:(id)key mimeType:(id)type scale:(double)scale properties:(id)properties
{
  keyCopy = key;
  typeCopy = type;
  propertiesCopy = properties;
  v13 = objc_alloc_init(NSMutableData);
  if ([typeCopy isEqualToString:@"image/jpeg"])
  {
    identifier = kUTTypeJPEG;
  }

  else
  {
    identifier = [UTTypePNG identifier];
  }

  v15 = CGImageDestinationCreateWithData(v13, identifier, 1uLL, 0);
  if (v15)
  {
    v16 = v15;
    CGImageDestinationAddImage(v15, image, propertiesCopy);
    CGImageDestinationFinalize(v16);
    CFRelease(v16);
  }

  v27 = [NSNumber numberWithInteger:CGImageGetWidth(image)];
  v17 = [NSNumber numberWithInteger:CGImageGetHeight(image)];
  v18 = [NSString stringWithFormat:@"insert into items (key, accessDate, width, height, scale, mimeType, resourceSize, resourceData) values (?, ?, ?, ?, ?, ?, ?, ?)"];
  v19 = +[NSDate date];
  *&v20 = scale;
  v21 = [NSNumber numberWithFloat:v20];
  v22 = [NSNumber numberWithInteger:[(__CFData *)v13 length]];
  v23 = [NSArray arrayWithObjects:keyCopy, v19, v27, v17, v21, typeCopy, v22, v13, 0];

  if ([(IMDatabaseHandle *)self->_db runStatement:v18 arguments:v23])
  {
    [(IMPersistentCache *)self _adjustCacheSizeBy:[(__CFData *)v13 length]];
    [(IMPersistentCache *)self _unknownKeysRemoveObject:keyCopy];
    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)insertCGImage:(CGImage *)image forKey:(id)key mimeType:(id)type scale:(double)scale properties:(id)properties
{
  keyCopy = key;
  typeCopy = type;
  propertiesCopy = properties;
  if (([typeCopy isEqualToString:@"image/jpeg"] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"image/png"))
  {
    v15 = [(IMPersistentCache *)self _insertCGImage:image forKey:keyCopy mimeType:typeCopy scale:propertiesCopy properties:scale];
  }

  else
  {
    v15 = [(IMPersistentCache *)self _insertCGImage:image forKey:keyCopy];
  }

  v16 = v15;

  return v16;
}

- (BOOL)_insertCGImage:(CGImage *)image forKey:(id)key
{
  keyCopy = key;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v10 = ((14 * Width) & 0xE) + 2 * Width;
  v11 = v10 * Height;
  v12 = malloc_type_calloc(1uLL, v10 * Height, 0x12CB1BDCuLL);
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  v14 = CGBitmapContextCreate(v12, Width, Height, 5uLL, v10, DeviceRGB, 0x1006u);
  if (!v14)
  {
    free(v13);
LABEL_7:
    CGColorSpaceRelease(DeviceRGB);
    v26 = 0;
    goto LABEL_12;
  }

  v15 = v14;
  CGColorSpaceRelease(DeviceRGB);
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = Width;
  v33.size.height = Height;
  CGContextDrawImage(v15, v33, image);
  Data = CGBitmapContextGetData(v15);
  if (Data)
  {
    selfCopy = self;
    v32 = [[NSData alloc] initWithBytes:Data length:v11];
    v31 = [NSString stringWithFormat:@"insert into items (key, accessDate, width, height, bpc, bpp, bpr, mimeType, resourceSize, resourceData) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"];
    v29 = [NSArray alloc];
    v17 = +[NSDate date];
    v18 = [NSNumber numberWithInteger:Width];
    v19 = [NSNumber numberWithInteger:Height];
    v20 = [NSNumber numberWithInteger:5];
    v21 = [NSNumber numberWithInteger:2];
    v22 = [NSNumber numberWithInteger:v10];
    v23 = [NSNumber numberWithInteger:v11];
    v28 = v15;
    v24 = v17;
    v25 = [v29 initWithObjects:{keyCopy, v17, v18, v19, v20, v21, v22, @"image/argb1555", v23, v32, 0}];

    if ([(IMDatabaseHandle *)selfCopy->_db runStatement:v31 arguments:v25])
    {
      -[IMPersistentCache _adjustCacheSizeBy:](selfCopy, "_adjustCacheSizeBy:", [v32 length]);
      [(IMPersistentCache *)selfCopy _unknownKeysRemoveObject:keyCopy];
      v26 = 1;
    }

    else
    {
      v26 = 0;
    }

    v15 = v28;
  }

  else
  {
    v26 = 0;
  }

  free(v13);
  CGContextRelease(v15);
LABEL_12:

  return v26;
}

- (CGImage)_copyCGImageForRow:(id)row size:(CGSize *)size resourceSize:(int64_t *)resourceSize scale:(double *)scale
{
  rowCopy = row;
  if ([rowCopy count])
  {
    v11 = [rowCopy objectAtIndex:0];
    [(IMPersistentCache *)self _accessedIdsAddObject:v11];

    v12 = [rowCopy objectAtIndex:9];
    if (v12)
    {
      v13 = [rowCopy objectAtIndex:1];
      integerValue = [v13 integerValue];

      v14 = [rowCopy objectAtIndex:2];
      integerValue2 = [v14 integerValue];

      v15 = [rowCopy objectAtIndex:3];
      bitsPerComponent = [v15 integerValue];

      v16 = [rowCopy objectAtIndex:4];
      integerValue3 = [v16 integerValue];

      v18 = [rowCopy objectAtIndex:5];
      integerValue4 = [v18 integerValue];

      v20 = [rowCopy objectAtIndex:6];
      [v20 floatValue];
      v22 = v21;

      v23 = [rowCopy objectAtIndex:7];
      v24 = +[NSNull null];
      if ([v23 isEqual:v24])
      {
        v25 = 0;
      }

      else
      {
        v25 = [rowCopy objectAtIndex:7];
      }

      v27 = v12;
      v28 = CGDataProviderCreateWithData(v27, [v27 bytes], objc_msgSend(v27, "length"), sub_C3C08);
      if ([v25 isEqualToString:@"image/argb1555"])
      {
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v30 = 8 * integerValue3;
        v31 = integerValue;
        v26 = CGImageCreate(integerValue, integerValue2, bitsPerComponent, v30, integerValue4, DeviceRGB, 0x1006u, v28, 0, 0, kCGRenderingIntentDefault);
        CGColorSpaceRelease(DeviceRGB);
      }

      else if ([v25 isEqualToString:@"image/jpeg"])
      {
        v26 = CGImageCreateWithJPEGDataProvider(v28, 0, 1, kCGRenderingIntentDefault);
        v31 = integerValue;
      }

      else
      {
        v31 = integerValue;
        if ([v25 isEqualToString:@"image/png"])
        {
          v26 = CGImageCreateWithPNGDataProvider(v28, 0, 1, kCGRenderingIntentDefault);
        }

        else
        {
          v26 = 0;
        }
      }

      v32 = v22;
      CGDataProviderRelease(v28);
      if (size)
      {
        size->width = v31 / v32;
        size->height = integerValue2 / v32;
      }

      if (scale)
      {
        *scale = v32;
      }

      if (resourceSize)
      {
        v33 = [rowCopy objectAtIndex:8];
        *resourceSize = [v33 integerValue];
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (CGImage)copyCGImageForKey:(id)key resourceSize:(int64_t *)size scale:(double *)scale
{
  keyCopy = key;
  if (keyCopy)
  {
    if ([(IMPersistentCache *)self _unknownKeysContainsObject:keyCopy])
    {
      v9 = 0;
    }

    else
    {
      db = self->_db;
      v12 = [NSArray arrayWithObject:keyCopy];
      v9 = [(IMDatabaseHandle *)db arrayForQuery:@"select pk arguments:width rawRows:height, bpc, bpp, bpr, scale, mimeType, resourceSize, resourcedata from items where key = ? limit 1", v12, 1];
    }

    if ([v9 count])
    {
      v13 = [v9 objectAtIndex:0];
      v10 = [(IMPersistentCache *)self _copyCGImageForRow:v13 size:0 resourceSize:size scale:scale];
    }

    else
    {
      [(IMPersistentCache *)self _unknownKeysAddObject:keyCopy];
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)insertCGImages:(id)images forKey:(id)key mimeType:(id)type baseSize:(CGSize)size properties:(id)properties
{
  width = size.width;
  imagesCopy = images;
  keyCopy = key;
  typeCopy = type;
  propertiesCopy = properties;
  v31 = imagesCopy;
  if (([typeCopy isEqualToString:@"image/jpeg"] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"image/png"))
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = imagesCopy;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v37;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          v23 = CGImageGetWidth(v22);
          if (v23)
          {
            v24 = round(v23 / width);
            if (v24 < 1.0)
            {
              v24 = 1.0;
            }
          }

          else
          {
            v24 = 1.0;
          }

          v19 |= [(IMPersistentCache *)self _insertCGImage:v22 forKey:keyCopy mimeType:typeCopy scale:propertiesCopy properties:v24];
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v18);
      goto LABEL_25;
    }

LABEL_24:
    LOBYTE(v19) = 0;
    goto LABEL_25;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = imagesCopy;
  v26 = [v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (!v26)
  {
    goto LABEL_24;
  }

  v27 = v26;
  v19 = 0;
  v28 = *v33;
  do
  {
    for (j = 0; j != v27; j = j + 1)
    {
      if (*v33 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v19 |= [(IMPersistentCache *)self _insertCGImage:*(*(&v32 + 1) + 8 * j) forKey:keyCopy];
    }

    v27 = [v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
  }

  while (v27);
LABEL_25:

  return v19 & 1;
}

- (id)CGImagesForKey:(id)key size:(CGSize *)size resourceSize:(int64_t *)resourceSize
{
  keyCopy = key;
  if (keyCopy)
  {
    if ([(IMPersistentCache *)self _unknownKeysContainsObject:keyCopy])
    {
      v7 = 0;
    }

    else
    {
      db = self->_db;
      v10 = [NSArray arrayWithObject:keyCopy];
      v7 = [(IMDatabaseHandle *)db arrayForQuery:@"select pk arguments:width rawRows:height, bpc, bpp, bpr, scale, mimeType, resourceSize, resourcedata from items where key = ?", v10, 1];
    }

    if ([v7 count])
    {
      v27 = v7;
      v28 = keyCopy;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v12)
      {
        v13 = v12;
        v8 = 0;
        v14 = 0;
        v15 = 0;
        v16 = *v32;
LABEL_9:
        v17 = 0;
        while (1)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v11);
          }

          if (v14 & v15)
          {
            break;
          }

          v18 = *(*(&v31 + 1) + 8 * v17);
          v19 = [v18 objectAtIndex:6];
          [v19 floatValue];
          v21 = v20;

          if ((v14 & (v21 == 1.0)) != 0)
          {
            v14 = 1;
          }

          else if ((v21 != 2.0) | (v15 ^ 1) & 1)
          {
            v22 = [(IMPersistentCache *)self _copyCGImageForRow:v18 size:size resourceSize:resourceSize scale:0];
            if (v22)
            {
              v23 = v22;
              if (!v8)
              {
                v8 = +[NSMutableArray array];
              }

              v24 = v21 != 2.0 || v21 == 1.0;
              v14 |= v21 == 1.0;
              v25 = !v24;
              v15 |= v25;
              [v8 addObject:{v23, v27, v28}];
              CFRelease(v23);
            }
          }

          if (v13 == ++v17)
          {
            v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
            if (v13)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      else
      {
        v8 = 0;
      }

      v7 = v27;
      keyCopy = v28;
    }

    else
    {
      [(IMPersistentCache *)self _unknownKeysAddObject:keyCopy];
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)firstImageKeyWithRootKey:(id)key
{
  keyCopy = key;
  keyCopy = [[NSString alloc] initWithFormat:@"%%%@%%", keyCopy];

  db = self->_db;
  v7 = [NSArray arrayWithObject:keyCopy];
  v8 = [(IMDatabaseHandle *)db arrayForQuery:@"select key from items where key like ? order by width desc limit 1" arguments:v7 rawRows:1];

  if ([v8 count])
  {
    firstObject = [v8 firstObject];
    v9FirstObject = [firstObject firstObject];
  }

  else
  {
    v9FirstObject = 0;
  }

  return v9FirstObject;
}

- (id)itemsForMimeType:(id)type
{
  db = self->_db;
  v4 = [NSArray arrayWithObject:type];
  v5 = [(IMDatabaseHandle *)db arrayForQuery:@"select * from items where mimeType = ?" arguments:v4 rawRows:0];

  return v5;
}

- (id)deleteItemsForMimeType:(id)type
{
  v4 = [type stringByAppendingString:@"%%"];
  db = self->_db;
  v6 = [NSArray arrayWithObject:v4];
  [(IMDatabaseHandle *)db runStatement:@"delete from items where mimeType like ?" arguments:v6];

  [(IMDatabaseHandle *)self->_db runStatement:@"vacuum" arguments:0];
  return 0;
}

- (BOOL)hasItemForKey:(id)key
{
  keyCopy = key;
  if ([(IMPersistentCache *)self _unknownKeysContainsObject:keyCopy])
  {
    v5 = 0;
  }

  else
  {
    v6 = [[NSArray alloc] initWithObjects:{keyCopy, 0}];
    v7 = [(IMDatabaseHandle *)self->_db arrayForQuery:@"select pk from items where key = ? limit 1" arguments:v6 rawRows:1];
    v8 = [v7 count];
    v5 = v8 != 0;
    if (!v8)
    {
      [(IMPersistentCache *)self _unknownKeysAddObject:keyCopy];
    }
  }

  return v5;
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    v6 = 0;
    goto LABEL_13;
  }

  if ([(IMPersistentCache *)self _unknownKeysContainsObject:keyCopy])
  {
    v5 = 0;
  }

  else
  {
    db = self->_db;
    v8 = [NSArray arrayWithObject:keyCopy];
    v5 = [(IMDatabaseHandle *)db arrayForQuery:@"select pk arguments:resourcedata from items where key = ? limit 1" rawRows:v8, 1];
  }

  if (![v5 count])
  {
    [(IMPersistentCache *)self _unknownKeysAddObject:keyCopy];
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v9 = [v5 objectAtIndex:0];
  if (![v9 count])
  {

    goto LABEL_11;
  }

  v10 = [v9 objectAtIndex:0];
  [(IMPersistentCache *)self _accessedIdsAddObject:v10];

  v6 = [v9 objectAtIndex:1];

LABEL_12:
LABEL_13:

  return v6;
}

- (void)deleteItemForKey:(id)key
{
  keyCopy = key;
  if ([(IMPersistentCache *)self hasItemForKey:keyCopy])
  {
    db = self->_db;
    v6 = [NSArray arrayWithObject:keyCopy];
    v7 = [(IMDatabaseHandle *)db arrayForQuery:@"select resourceSize from items where key = ?" arguments:v6 rawRows:1];

    if ([v7 count])
    {
      v8 = [v7 objectAtIndex:0];
      if ([v8 count])
      {
        v9 = [v8 objectAtIndex:0];
        integerValue = [v9 integerValue];

        if (integerValue >= 1)
        {
          v11 = self->_db;
          v12 = [NSArray arrayWithObject:keyCopy];
          LODWORD(v11) = [(IMDatabaseHandle *)v11 runStatement:@"delete from items where key = ?" arguments:v12];

          if (v11)
          {
            [(IMPersistentCache *)self _adjustCacheSizeBy:-integerValue];
          }
        }
      }
    }
  }
}

- (void)deleteItemsWithKeyLike:(id)like
{
  likeCopy = like;
  if ([likeCopy length])
  {
    v4 = [NSArray arrayWithObject:likeCopy];
    [(IMPersistentCache *)self deleteItemsWithAllKeysContaining:v4];
  }
}

- (void)deleteItemsWithAllKeysContaining:(id)containing
{
  containingCopy = containing;
  if ([containingCopy count])
  {
    v27 = containingCopy;
    if ([containingCopy count])
    {
      v4 = 0;
      v5 = &stru_2D2930;
      do
      {
        if ([(__CFString *)v5 length])
        {
          v6 = [(__CFString *)v5 stringByAppendingString:@" AND "];

          v5 = v6;
        }

        v7 = [(__CFString *)v5 stringByAppendingString:@" key like ? "];

        ++v4;
        v5 = v7;
      }

      while (v4 < [v27 count]);
    }

    else
    {
      v7 = &stru_2D2930;
    }

    v24 = [@"select resourceSize pk from items where "];
    v26 = [(IMDatabaseHandle *)self->_db arrayForQuery:v24 arguments:v27 rawRows:1];
    if ([v26 count])
    {
      v8 = +[NSMutableSet set];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v9 = v26;
      v10 = 0;
      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        v12 = *v29;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            if ([v14 count] == &dword_0 + 2)
            {
              v15 = [v14 objectAtIndex:0];
              integerValue = [v15 integerValue];

              v17 = [v14 objectAtIndex:1];
              [v8 addObject:v17];

              v10 += integerValue;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v11);
      }

      if ([v8 count])
      {
        v18 = [IMDatabaseHandle questionMarkListForCollection:v8];
        v19 = [NSString stringWithFormat:@"delete from items where pk in %@", v18];

        db = self->_db;
        allObjects = [v8 allObjects];
        v22 = [(IMDatabaseHandle *)db runStatement:v19 arguments:allObjects];

        if (v10)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        if (v23 == 1)
        {
          [(IMPersistentCache *)self _adjustCacheSizeBy:-v10];
        }
      }

      else
      {
        v19 = v24;
      }
    }

    else
    {
      v19 = v24;
    }

    containingCopy = v27;
  }
}

- (void)replaceDataForKey:(id)key withData:(id)data mimeType:(id)type
{
  typeCopy = type;
  dataCopy = data;
  keyCopy = key;
  [(IMPersistentCache *)self deleteItemForKey:keyCopy];
  [(IMPersistentCache *)self insertData:dataCopy forKey:keyCopy mimeType:typeCopy];
}

- (id)dataForKey:(id)key mimeType:(id)type
{
  keyCopy = key;
  typeCopy = type;
  if (!keyCopy)
  {
    v9 = 0;
    goto LABEL_13;
  }

  if ([(IMPersistentCache *)self _unknownKeysContainsObject:keyCopy])
  {
    v8 = 0;
  }

  else
  {
    db = self->_db;
    v11 = [NSArray arrayWithObjects:keyCopy, typeCopy, 0];
    v8 = [(IMDatabaseHandle *)db arrayForQuery:@"select pk arguments:resourcedata from items where key = ? and mimeType = ? limit 1" rawRows:v11, 1];
  }

  if (![v8 count])
  {
    [(IMPersistentCache *)self _unknownKeysAddObject:keyCopy];
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v12 = [v8 objectAtIndex:0];
  if (![v12 count])
  {

    goto LABEL_11;
  }

  v13 = [v12 objectAtIndex:0];
  [(IMPersistentCache *)self _accessedIdsAddObject:v13];

  v9 = [v12 objectAtIndex:1];

LABEL_12:
LABEL_13:

  return v9;
}

- (unint64_t)resourceSizeForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    db = self->_db;
    v6 = [NSArray arrayWithObject:keyCopy];
    v7 = [(IMDatabaseHandle *)db arrayForQuery:@"select resourceSize from items where key = ?" arguments:v6 rawRows:1];

    if (v7)
    {
      firstObject = [v7 firstObject];
      v9 = firstObject;
      if (firstObject)
      {
        v8FirstObject = [firstObject firstObject];
        unsignedIntegerValue = [v8FirstObject unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)clear
{
  if ([(IMDatabaseHandle *)self->_db runStatement:@"delete from items" arguments:0])
  {
    os_unfair_lock_lock(&self->_cacheSizeLock);
    self->_cacheSize = 0;
    os_unfair_lock_unlock(&self->_cacheSizeLock);
    [(IMPersistentCache *)self _saveCacheSize:0];

    [(IMPersistentCache *)self _accessedIdsRemoveAllObjects];
  }
}

- (id)metadataForKey:(id)key
{
  keyCopy = key;
  db = self->_db;
  v6 = [NSArray arrayWithObject:keyCopy];
  v7 = [(IMDatabaseHandle *)db arrayForQuery:@"select key arguments:accessDate rawRows:width, height, mimeType, scale, resourceSize from items where key = ?", v6, 0];

  firstObject = [v7 firstObject];

  return firstObject;
}

- (void)_adjustCacheSizeBy:(int64_t)by
{
  os_unfair_lock_lock(&self->_cacheSizeLock);
  v5 = self->_cacheSize + by;
  self->_cacheSize = v5;
  os_unfair_lock_unlock(&self->_cacheSizeLock);

  [(IMPersistentCache *)self _saveCacheSize:v5];
}

- (void)_saveCacheSize:(int64_t)size
{
  adminTable = self->_adminTable;
  v4 = [NSNumber numberWithInteger:size];
  [(IMAdminTable *)adminTable setProperty:v4 forKey:@"cacheSize" domain:@"statistics"];
}

- (unint64_t)_loadCacheSize
{
  v2 = [(IMAdminTable *)self->_adminTable numberValueForKey:@"cacheSize" domain:@"statistics"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)_LRUCleanupForMimeType:(id)type
{
  typeCopy = type;
  v5 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  v23 = [typeCopy stringByAppendingString:@"%%"];

  context = objc_autoreleasePoolPush();
  v6 = @"select pk, accessDate, resourceSize from items where mimeType like ?";
  if (!v23)
  {
    v6 = @"select pk, accessDate, resourceSize from items";
  }

  v25 = v6;
  if (v23)
  {
    v7 = [NSArray arrayWithObject:v23];
  }

  else
  {
    v7 = 0;
  }

  v22 = v7;
  v24 = [IMDatabaseHandle arrayForQuery:"arrayForQuery:arguments:rawRows:" arguments:v25 rawRows:?];
  v26 = +[NSMutableSet set];
  os_unfair_lock_lock(&self->_cacheSizeLock);
  cacheSize = self->_cacheSize;
  os_unfair_lock_unlock(&self->_cacheSizeLock);
  objectEnumerator = [v24 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    do
    {
      v11 = [nextObject objectForKey:@"accessDate"];
      v12 = [v11 compare:v5];

      if (v12 == -1)
      {
        v13 = [nextObject objectForKey:@"resourceSize"];
        integerValue = [v13 integerValue];

        v15 = [nextObject objectForKey:@"pk"];
        cacheSize -= integerValue;
        [v26 addObject:v15];

        if (cacheSize < self->_maxSize)
        {
          break;
        }
      }

      nextObject2 = [objectEnumerator nextObject];

      nextObject = nextObject2;
    }

    while (nextObject2);
  }

  if ([v26 count])
  {
    v17 = [IMDatabaseHandle questionMarkListForCollection:v26];
    v18 = [NSString stringWithFormat:@"delete from items where pk in %@", v17];

    db = self->_db;
    allObjects = [v26 allObjects];
    LODWORD(db) = [(IMDatabaseHandle *)db runStatement:v18 arguments:allObjects];

    [(IMDatabaseHandle *)self->_db runStatement:@"vacuum" arguments:0];
    if (db)
    {
      os_unfair_lock_lock(&self->_cacheSizeLock);
      self->_cacheSize = cacheSize;
      os_unfair_lock_unlock(&self->_cacheSizeLock);
      [(IMPersistentCache *)self _saveCacheSize:cacheSize];
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)_updateCaches:(id)caches
{
  cachesCopy = caches;
  os_unfair_lock_lock(&self->_accessedIdsLock);
  v5 = [(NSMutableSet *)self->_accessedIds copy];
  os_unfair_lock_unlock(&self->_accessedIdsLock);
  if ([v5 count])
  {
    v6 = [IMDatabaseHandle questionMarkListForCollection:v5];
    v7 = [NSString stringWithFormat:@"update items set accessDate = ? where pk in %@", v6];

    v8 = +[NSDate date];
    v9 = [NSMutableArray arrayWithObject:v8];

    allObjects = [v5 allObjects];
    [v9 addObjectsFromArray:allObjects];

    if ([(IMDatabaseHandle *)self->_db runStatement:v7 arguments:v9])
    {
      [(IMPersistentCache *)self _accessedIdsRemoveAllObjects];
    }
  }

  os_unfair_lock_lock(&self->_cacheSizeLock);
  cacheSize = self->_cacheSize;
  os_unfair_lock_unlock(&self->_cacheSizeLock);
  if (cacheSize > self->_maxSize)
  {
    [(IMPersistentCache *)self _LRUCleanupForMimeType:0];
  }
}

- (int64_t)version
{
  v2 = [(IMAdminTable *)self->_adminTable numberValueForKey:@"version" domain:@"database"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)_unknownKeysContainsObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_unknownKeysLock);
  v5 = [(NSMutableSet *)self->_unknownKeys containsObject:objectCopy];

  os_unfair_lock_unlock(&self->_unknownKeysLock);
  return v5;
}

- (void)_unknownKeysRemoveObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_unknownKeysLock);
  [(NSMutableSet *)self->_unknownKeys removeObject:objectCopy];

  os_unfair_lock_unlock(&self->_unknownKeysLock);
}

- (void)_unknownKeysAddObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_unknownKeysLock);
  [(NSMutableSet *)self->_unknownKeys addObject:objectCopy];

  os_unfair_lock_unlock(&self->_unknownKeysLock);
}

- (void)_accessedIdsRemoveAllObjects
{
  os_unfair_lock_lock(&self->_accessedIdsLock);
  [(NSMutableSet *)self->_accessedIds removeAllObjects];

  os_unfair_lock_unlock(&self->_accessedIdsLock);
}

- (void)_accessedIdsAddObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_accessedIdsLock);
  [(NSMutableSet *)self->_accessedIds addObject:objectCopy];

  os_unfair_lock_unlock(&self->_accessedIdsLock);
}

@end