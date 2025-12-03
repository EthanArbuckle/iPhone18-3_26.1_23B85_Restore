@interface NTKProteusFontLoader
+ (id)neptuneSharpFontDescriptorWithWeight:(double)weight notch:(double)notch;
+ (id)neptuneSoftFontDescriptorWithWeight:(double)weight notch:(double)notch;
+ (id)sharedInstanceWithSize:(double)size;
- (NTKProteusFontLoader)initWithSize:(double)size;
- (id)_neptuneFont:(unint64_t)font weight:(double)weight notch:(double)notch;
- (id)neptuneFont:(unint64_t)font weight:(double)weight notch:(double)notch;
- (void)_logSize;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)cacheFonts:(BOOL)fonts ofType:(unint64_t)type forClient:(id)client;
- (void)clearMotionCache;
- (void)clearStatusCache;
- (void)dealloc;
@end

@implementation NTKProteusFontLoader

+ (id)sharedInstanceWithSize:(double)size
{
  WeakRetained = objc_loadWeakRetained(&qword_16350);
  if (!WeakRetained)
  {
    WeakRetained = [[NTKProteusFontLoader alloc] initWithSize:size];
    objc_storeWeak(&qword_16350, WeakRetained);
  }

  return WeakRetained;
}

+ (id)neptuneSharpFontDescriptorWithWeight:(double)weight notch:(double)notch
{
  if (qword_16360 != -1)
  {
    sub_8650();
  }

  v6 = qword_16358;
  v17 = kCTFontVariationAttribute;
  v7 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
  v15[0] = v7;
  v8 = [NSNumber numberWithDouble:weight];
  v16[0] = v8;
  v9 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
  v15[1] = v9;
  v10 = [NSNumber numberWithDouble:notch];
  v16[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v13 = [v6 fontDescriptorByAddingAttributes:v12];

  return v13;
}

+ (id)neptuneSoftFontDescriptorWithWeight:(double)weight notch:(double)notch
{
  if (qword_16370 != -1)
  {
    sub_8664();
  }

  v6 = qword_16368;
  v17 = kCTFontVariationAttribute;
  v7 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
  v15[0] = v7;
  v8 = [NSNumber numberWithDouble:weight];
  v16[0] = v8;
  v9 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
  v15[1] = v9;
  v10 = [NSNumber numberWithDouble:notch];
  v16[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v13 = [v6 fontDescriptorByAddingAttributes:v12];

  return v13;
}

- (NTKProteusFontLoader)initWithSize:(double)size
{
  v11.receiver = self;
  v11.super_class = NTKProteusFontLoader;
  v4 = [(NTKProteusFontLoader *)&v11 init];
  if (v4)
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Proteus font loader-init [%p]", buf, 0xCu);
    }

    v4->_size = size;
    v6 = +[NSHashTable weakObjectsHashTable];
    sharpClients = v4->_sharpClients;
    v4->_sharpClients = v6;

    v8 = +[NSHashTable weakObjectsHashTable];
    softClients = v4->_softClients;
    v4->_softClients = v8;
  }

  return v4;
}

- (void)dealloc
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Proteus font loader-going away [%p]", buf, 0xCu);
  }

  [(NSCache *)self->_sharpMotionCache setDelegate:0];
  [(NSCache *)self->_sharpMotionCache setDelegate:0];
  [(NSCache *)self->_softMotionCache setDelegate:0];
  [(NSCache *)self->_softStatusCache setDelegate:0];
  v4.receiver = self;
  v4.super_class = NTKProteusFontLoader;
  [(NTKProteusFontLoader *)&v4 dealloc];
}

- (id)_neptuneFont:(unint64_t)font weight:(double)weight notch:(double)notch
{
  v6 = weight * weight;
  if (font == 1)
  {
    v7 = [NTKProteusFontLoader neptuneSoftFontDescriptorWithWeight:v6 notch:notch];
  }

  else
  {
    if (font)
    {
      goto LABEL_7;
    }

    v7 = [NTKProteusFontLoader neptuneSharpFontDescriptorWithWeight:v6 notch:notch];
  }

  v8 = v7;
  if (v7)
  {
    v9 = [CLKFont fontWithDescriptor:v7 size:self->_size];

    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
LABEL_8:

  return v9;
}

- (id)neptuneFont:(unint64_t)font weight:(double)weight notch:(double)notch
{
  [(NTKProteusFontLoader *)self _discretizeWeight:weight];
  v9 = v8;
  [(NTKProteusFontLoader *)self _discretizeNotch:notch];
  v11 = v10;
  v12 = [(NTKProteusFontLoader *)self _keyForWeight:v9 notch:v10];
  v13 = 16;
  if (font == 1)
  {
    v13 = 8;
  }

  v14 = *(&self->super.isa + v13);
  v15 = [v14 objectForKey:v12];
  if (!v15)
  {
    v25 = 24;
    if (font == 1)
    {
      v25 = 32;
    }

    v26 = *(&self->super.isa + v25);
    v27 = [v26 objectForKey:v12];
    if (v27)
    {
      v28 = v27;
      v29 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_86E4(v12, v29, v30, v31, v32, v33, v34, v35);
      }

      ++self->_cacheHits;
      v24 = v28;
      goto LABEL_43;
    }

    v36 = 40;
    if (font == 1)
    {
      v36 = 48;
    }

    v37 = *(&self->super.isa + v36);
    v38 = [v37 objectForKey:v12];
    if (v38)
    {
      v39 = v38;
      v40 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        sub_8750(v12, v40, v41, v42, v43, v44, v45, v46);
      }

      ++self->_cacheHits;
      goto LABEL_42;
    }

    v39 = [(NTKProteusFontLoader *)self _neptuneFont:font weight:v9 notch:v11];
    if (!v39)
    {
LABEL_41:
      [(NTKProteusFontLoader *)self _logSize];
LABEL_42:
      v24 = v39;

LABEL_43:
      goto LABEL_44;
    }

    v47 = _NTKLoggingObjectForDomain();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
    if (notch == 0.0 || notch == 1.0)
    {
      if (v48)
      {
        *v52 = 138412290;
        *&v52[4] = v12;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "Proteus font loader-caching font with key %@", v52, 0xCu);
      }

      if (v26)
      {
        [v26 setObject:v39 forKey:v12];
        if (font == 1)
        {
          ++self->_softMotionCacheSize;
        }

        else
        {
          ++self->_sharpMotionCacheSize;
        }

        goto LABEL_40;
      }

      v49 = _NTKLoggingObjectForDomain();
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      *v52 = 0;
      v50 = "Proteus font loader-! no motion cache";
    }

    else
    {
      if (v48)
      {
        *v52 = 138412290;
        *&v52[4] = v12;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "Proteus font loader-caching notch-transition font with key %@", v52, 0xCu);
      }

      if (v37)
      {
        [v37 setObject:v39 forKey:v12];
        if (font == 1)
        {
          ++self->_softStatusCacheSize;
        }

        else
        {
          ++self->_sharpStatusCacheSize;
        }

        goto LABEL_40;
      }

      v49 = _NTKLoggingObjectForDomain();
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
LABEL_37:

LABEL_40:
        ++self->_cacheMisses;
        goto LABEL_41;
      }

      *v52 = 0;
      v50 = "Proteus font loader-! no status cache";
    }

    _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, v50, v52, 2u);
    goto LABEL_37;
  }

  v16 = v15;
  v17 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_8678(v12, v17, v18, v19, v20, v21, v22, v23);
  }

  ++self->_cacheHits;
  v24 = v16;
LABEL_44:

  return v24;
}

- (void)_logSize
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self->_softPermanentSet != 0;
    v5 = self->_sharpPermanentSet != 0;
    v6 = [(NSHashTable *)self->_softClients count];
    v7 = [(NSHashTable *)self->_sharpClients count];
    v8 = [(NSMutableDictionary *)self->_softPermanentSet count];
    v9 = [(NSMutableDictionary *)self->_sharpPermanentSet count];
    softMotionCacheSize = self->_softMotionCacheSize;
    softStatusCacheSize = self->_softStatusCacheSize;
    sharpMotionCacheSize = self->_sharpMotionCacheSize;
    sharpStatusCacheSize = self->_sharpStatusCacheSize;
    evictions = self->_evictions;
    cacheHits = self->_cacheHits;
    v16 = cacheHits;
    v17 = self->_cacheMisses + cacheHits;
    v18[0] = 67112192;
    v18[1] = v4;
    v19 = 1024;
    v20 = v5;
    v21 = 2048;
    v22 = v6;
    v23 = 2048;
    v24 = v7;
    v25 = 2048;
    v26 = v8;
    v27 = 2048;
    v28 = v9;
    v29 = 2048;
    v30 = softStatusCacheSize;
    v31 = 2048;
    v32 = sharpStatusCacheSize;
    v33 = 2048;
    v34 = softMotionCacheSize;
    v35 = 2048;
    v36 = sharpMotionCacheSize;
    v37 = 2048;
    v38 = evictions;
    v39 = 2048;
    v40 = v16 / v17;
    v41 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Proteus font loader-cache size: active?%d/%d clients %lu/%lu perm %lu/%lu status %lu/%lu motion %lu/%lu evict %lu hitrate %f [%p]", v18, 0x7Cu);
  }
}

- (void)cacheFonts:(BOOL)fonts ofType:(unint64_t)type forClient:(id)client
{
  fontsCopy = fonts;
  clientCopy = client;
  v9 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v51 = 67109376;
    LODWORD(v52[0]) = fontsCopy;
    WORD2(v52[0]) = 2048;
    *(v52 + 6) = type;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Proteus font loader-cache %d for style %lu", &v51, 0x12u);
  }

  if (type)
  {
    if (type == 1)
    {
      softClients = self->_softClients;
      if (fontsCopy)
      {
        [(NSHashTable *)softClients addObject:clientCopy];
        v11 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v51 = 134217984;
          v52[0] = clientCopy;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Proteus font loader-added soft client [%p]", &v51, 0xCu);
        }

        if (!self->_softPermanentSet)
        {
          v12 = [[NSMutableDictionary alloc] initWithCapacity:24];
          softPermanentSet = self->_softPermanentSet;
          self->_softPermanentSet = v12;

          v14 = 0.0;
          v15 = 12;
          do
          {
            v16 = self->_softPermanentSet;
            v17 = [(NTKProteusFontLoader *)self _neptuneFont:1 weight:v14 / 11.0 notch:0.0];
            v18 = [(NTKProteusFontLoader *)self _keyForWeight:v14 / 11.0 notch:0.0];
            [(NSMutableDictionary *)v16 setObject:v17 forKey:v18];

            v19 = self->_softPermanentSet;
            v20 = [(NTKProteusFontLoader *)self _neptuneFont:1 weight:v14 / 11.0 notch:1.0];
            v21 = [(NTKProteusFontLoader *)self _keyForWeight:v14 / 11.0 notch:1.0];
            [(NSMutableDictionary *)v19 setObject:v20 forKey:v21];

            v14 = v14 + 1.0;
            --v15;
          }

          while (v15);
          v22 = objc_alloc_init(NSCache);
          softStatusCache = self->_softStatusCache;
          self->_softStatusCache = v22;

          [(NSCache *)self->_softStatusCache setDelegate:self];
          v24 = objc_alloc_init(NSCache);
          softMotionCache = self->_softMotionCache;
          self->_softMotionCache = v24;

          v26 = self->_softMotionCache;
LABEL_19:
          [(NSCache *)v26 setDelegate:self];
        }
      }

      else
      {
        [(NSHashTable *)softClients removeObject:clientCopy];
        if (![(NSHashTable *)self->_softClients count])
        {
          v43 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v51) = 0;
            _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Proteus font loader-Soft cache purge", &v51, 2u);
          }

          v44 = self->_softPermanentSet;
          self->_softPermanentSet = 0;

          [(NSCache *)self->_softStatusCache removeAllObjects];
          v45 = self->_softStatusCache;
          self->_softStatusCache = 0;

          self->_softStatusCacheSize = 0;
          [(NSCache *)self->_softMotionCache removeAllObjects];
          v46 = self->_softMotionCache;
          self->_softMotionCache = 0;

          self->_softMotionCacheSize = 0;
        }
      }
    }
  }

  else
  {
    sharpClients = self->_sharpClients;
    if (fontsCopy)
    {
      [(NSHashTable *)sharpClients addObject:clientCopy];
      v28 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v51 = 134217984;
        v52[0] = clientCopy;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Proteus font loader-added sharp client [%p]", &v51, 0xCu);
      }

      if (!self->_sharpPermanentSet)
      {
        v29 = [[NSMutableDictionary alloc] initWithCapacity:24];
        sharpPermanentSet = self->_sharpPermanentSet;
        self->_sharpPermanentSet = v29;

        v31 = 0.0;
        v32 = 12;
        do
        {
          v33 = self->_sharpPermanentSet;
          v34 = [(NTKProteusFontLoader *)self _neptuneFont:0 weight:v31 / 11.0 notch:0.0];
          v35 = [(NTKProteusFontLoader *)self _keyForWeight:v31 / 11.0 notch:0.0];
          [(NSMutableDictionary *)v33 setObject:v34 forKey:v35];

          v36 = self->_sharpPermanentSet;
          v37 = [(NTKProteusFontLoader *)self _neptuneFont:0 weight:v31 / 11.0 notch:1.0];
          v38 = [(NTKProteusFontLoader *)self _keyForWeight:v31 / 11.0 notch:1.0];
          [(NSMutableDictionary *)v36 setObject:v37 forKey:v38];

          v31 = v31 + 1.0;
          --v32;
        }

        while (v32);
        v39 = objc_alloc_init(NSCache);
        sharpStatusCache = self->_sharpStatusCache;
        self->_sharpStatusCache = v39;

        [(NSCache *)self->_sharpStatusCache setDelegate:self];
        v41 = objc_alloc_init(NSCache);
        sharpMotionCache = self->_sharpMotionCache;
        self->_sharpMotionCache = v41;

        v26 = self->_sharpMotionCache;
        goto LABEL_19;
      }
    }

    else
    {
      [(NSHashTable *)sharpClients removeObject:clientCopy];
      if (![(NSHashTable *)self->_sharpClients count])
      {
        v47 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v51) = 0;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "Proteus font loader-Sharp cache purge", &v51, 2u);
        }

        v48 = self->_sharpPermanentSet;
        self->_sharpPermanentSet = 0;

        [(NSCache *)self->_sharpStatusCache removeAllObjects];
        v49 = self->_sharpStatusCache;
        self->_sharpStatusCache = 0;

        self->_sharpStatusCacheSize = 0;
        [(NSCache *)self->_sharpMotionCache removeAllObjects];
        v50 = self->_sharpMotionCache;
        self->_sharpMotionCache = 0;

        self->_sharpMotionCacheSize = 0;
      }
    }
  }

  [(NTKProteusFontLoader *)self _logSize];
}

- (void)clearStatusCache
{
  [(NSCache *)self->_sharpStatusCache removeAllObjects];
  [(NSCache *)self->_softStatusCache removeAllObjects];

  [(NTKProteusFontLoader *)self _logSize];
}

- (void)clearMotionCache
{
  [(NSCache *)self->_sharpMotionCache removeAllObjects];
  [(NSCache *)self->_softMotionCache removeAllObjects];

  [(NTKProteusFontLoader *)self _logSize];
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  cacheCopy = cache;
  v6 = cacheCopy;
  ++self->_evictions;
  if (self->_softMotionCache == cacheCopy)
  {
    --self->_softMotionCacheSize;
  }

  else if (self->_sharpMotionCache == cacheCopy)
  {
    --self->_sharpMotionCacheSize;
  }

  else if (self->_softStatusCache == cacheCopy)
  {
    --self->_softStatusCacheSize;
  }

  else if (self->_sharpStatusCache == cacheCopy)
  {
    --self->_sharpStatusCacheSize;
  }

  else
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Proteus font loader-! evicting from unrecognized cache [%p]", &v8, 0xCu);
    }
  }
}

@end