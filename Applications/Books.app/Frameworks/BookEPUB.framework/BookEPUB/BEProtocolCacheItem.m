@interface BEProtocolCacheItem
- (BEProtocolCacheItem)init;
- (id)cachedSVGForURL:(id)a3;
- (unint64_t)contentBlockingRule;
- (void)cacheSVG:(id)a3 url:(id)a4;
@end

@implementation BEProtocolCacheItem

- (BEProtocolCacheItem)init
{
  v6.receiver = self;
  v6.super_class = BEProtocolCacheItem;
  v2 = [(BEProtocolCacheItem *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    svgCache = v2->_svgCache;
    v2->_svgCache = v3;

    v2->_svgCacheLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)cachedSVGForURL:(id)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_8548;
  v18 = sub_8558;
  v19 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_8560;
  v10 = &unk_3281C0;
  v13 = &v14;
  v11 = self;
  v4 = a3;
  v12 = v4;
  v5 = v8;
  os_unfair_lock_lock(&self->_svgCacheLock);
  v9(v5);
  os_unfair_lock_unlock(&self->_svgCacheLock);

  v6 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v6;
}

- (void)cacheSVG:(id)a3 url:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_8684;
  v9[3] = &unk_3281E8;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  os_unfair_lock_lock(&self->_svgCacheLock);
  sub_8684(v9);
  os_unfair_lock_unlock(&self->_svgCacheLock);
}

- (unint64_t)contentBlockingRule
{
  v3 = +[BEDocumentExternalLoadApprovalCache sharedInstance];
  LODWORD(self) = [v3 didApproveLoadingExternalContentForBookID:self->_bookID];

  if (self)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end