@interface RideBookingImageCache
+ (id)sharedCache;
- (id)imageForKey:(id)a3;
- (void)cacheINImageData:(id)a3 withKey:(id)a4;
@end

@implementation RideBookingImageCache

- (id)imageForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    imageCache = v5->_imageCache;
    if (imageCache)
    {
      v7 = [(NSMutableDictionary *)imageCache objectForKey:v4];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v10 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/Utils/RideBookingImageCache.m");
          v12 = [[NSString alloc] initWithFormat:@"image in the cache is nil."];
          v14 = 136315394;
          v15 = v11;
          v16 = 2112;
          v17 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", &v14, 0x16u);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    objc_sync_exit(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)cacheINImageData:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = self;
    objc_sync_enter(v8);
    imageCache = v8->_imageCache;
    if (!imageCache)
    {
      v10 = objc_opt_new();
      v11 = v8->_imageCache;
      v8->_imageCache = v10;

      imageCache = v8->_imageCache;
    }

    v12 = [(NSMutableDictionary *)imageCache objectForKeyedSubscript:v7];

    if (!v12)
    {
      if (qword_10195CC00 != -1)
      {
        dispatch_once(&qword_10195CC00, &stru_1016234B8);
      }

      v13 = [UIImage imageWithData:v6 scale:*&qword_10195CBF8];
      if (v13)
      {
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Ride Booking/Utils/RideBookingImageCache.m");
          v16 = [NSString alloc];
          [v13 size];
          v17 = NSStringFromCGSize(v23);
          v18 = [v16 initWithFormat:@"Caching image for key %@. Size: %@, Scale: %g", v7, v17, qword_10195CBF8];
          *buf = 136315394;
          v20 = v15;
          v21 = 2112;
          v22 = v18;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        [(NSMutableDictionary *)v8->_imageCache setObject:v13 forKeyedSubscript:v7];
      }
    }

    objc_sync_exit(v8);
  }
}

+ (id)sharedCache
{
  if (qword_10195CBF0 != -1)
  {
    dispatch_once(&qword_10195CBF0, &stru_101623498);
  }

  v3 = qword_10195CBE8;

  return v3;
}

@end