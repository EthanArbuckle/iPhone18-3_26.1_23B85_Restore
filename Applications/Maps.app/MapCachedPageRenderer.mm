@interface MapCachedPageRenderer
- (MapCachedPageRenderer)init;
- (NSString)currentCacheKey;
- (id)currentPrintInfo;
@end

@implementation MapCachedPageRenderer

- (id)currentPrintInfo
{
  currentCacheKey = [(MapCachedPageRenderer *)self currentCacheKey];
  v4 = [(NSCache *)self->_printAreaToPrintInfoCache objectForKey:currentCacheKey];
  if (!v4)
  {
    computeCurrentPrintInfo = [(MapCachedPageRenderer *)self computeCurrentPrintInfo];
    if (computeCurrentPrintInfo)
    {
      v4 = computeCurrentPrintInfo;
      [(NSCache *)self->_printAreaToPrintInfoCache setObject:computeCurrentPrintInfo forKey:currentCacheKey];
    }

    else
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [NSString stringWithFormat:@"Unexpectedly could not generate print info for key: %@", currentCacheKey];
        *buf = 136316162;
        v12 = "[MapCachedPageRenderer currentPrintInfo]";
        v13 = 2080;
        v14 = "MapCachedPageRenderer.m";
        v15 = 1024;
        v16 = 37;
        v17 = 2080;
        v18 = "printingInfo != nil";
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
      }

      if (sub_100E03634())
      {
        v9 = sub_10006D178();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v12 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v4 = 0;
    }
  }

  return v4;
}

- (NSString)currentCacheKey
{
  [(MapCachedPageRenderer *)self headerHeight];
  v4 = v3;
  [(MapCachedPageRenderer *)self footerHeight];
  v6 = v5;
  [(MapCachedPageRenderer *)self paperRect];
  v7 = NSStringFromCGRect(v12);
  [(MapCachedPageRenderer *)self printableRect];
  v8 = NSStringFromCGRect(v13);
  v9 = [NSString stringWithFormat:@"%.2f_%.2f_%@_%@", v4, v6, v7, v8];

  return v9;
}

- (MapCachedPageRenderer)init
{
  v6.receiver = self;
  v6.super_class = MapCachedPageRenderer;
  v2 = [(MapPageRenderer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCache);
    printAreaToPrintInfoCache = v2->_printAreaToPrintInfoCache;
    v2->_printAreaToPrintInfoCache = v3;
  }

  return v2;
}

@end