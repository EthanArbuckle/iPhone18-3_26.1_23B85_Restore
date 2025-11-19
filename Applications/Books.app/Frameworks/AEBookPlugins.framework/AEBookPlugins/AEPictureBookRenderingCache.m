@interface AEPictureBookRenderingCache
- (AEPaginatedBookSnapshotWebViewBuilder)webViewBuilder;
- (AEPictureBookRenderingCache)initWithIdentifier:(id)a3 configuration:(id)a4 webViewBuilder:(id)a5;
- (id)_applyMaskAndGutter:(CGImage *)a3 isRight:(BOOL)a4 contentSize:(CGSize)a5 containerBounds:(CGRect)a6;
- (id)_scheduleRenderWithKey:(id)a3 options:(unint64_t)a4 size:(CGSize)a5 bookInfoSnapshot:(id)a6 documentUrl:(id)a7 pageNumber:(int64_t)a8 priority:(int64_t)a9 target:(id)a10 context:(id)a11;
- (id)anySnapshotForBookInfo:(id)a3 pageNumber:(int64_t)a4 containerBounds:(CGRect)a5;
- (id)generateMasterImageForPageNumber:(int64_t)a3 asset:(id)a4 priority:(int64_t)a5 callbackBlock:(id)a6;
- (id)persistentCacheFileName;
- (id)thumbnailForPage:(int64_t)a3 asset:(id)a4 size:(CGSize)a5 renderingCacheCallbackTarget:(id)a6 renderingCacheCallbackContext:(id)a7 priority:(int64_t)a8 containerBounds:(CGRect)a9;
- (id)upsellThumbnailForAsset:(id)a3 size:(CGSize)a4;
- (id)whitePageForSize:(CGSize)a3 right:(BOOL)a4 scale:(double)a5 contentSize:(CGSize)a6 applyMaskAndGutter:(BOOL)a7 containerBounds:(CGRect)a8;
- (void)_gotSnapshotWithMask:(BOOL)a3 bookInfo:(id)a4 containerBounds:(CGRect)a5 contentSize:(CGSize)a6 isRight:(BOOL)a7 key:(id)a8 pageNumber:(int64_t)a9 snapshot:(id)a10 scale:(double)a11 size:(CGSize)a12 completion:(id)a13;
- (void)_uncheckedSnapshotWithMask:(BOOL)a3 assetID:(id)a4 bookInfo:(id)a5 containerBounds:(CGRect)a6 contentSize:(CGSize)a7 isRight:(BOOL)a8 pageNumber:(int64_t)a9 scale:(double)a10 size:(CGSize)a11 completion:(id)a12;
- (void)generateSnapshotWithAsset:(id)a3 size:(CGSize)a4 pageNumber:(int64_t)a5;
- (void)renderQueuesEmptied;
- (void)renderingPiggyBackForPageNumber:(int64_t)a3 asset:(id)a4 priority:(int64_t)a5;
- (void)snapshotForBookInfo:(id)a3 pageNumber:(int64_t)a4 size:(CGSize)a5 maxSize:(CGSize)a6 isRight:(BOOL)a7 zoomScale:(double)a8 applyMaskAndGutter:(BOOL)a9 containerBounds:(CGRect)a10 completion:(id)a11;
@end

@implementation AEPictureBookRenderingCache

- (AEPictureBookRenderingCache)initWithIdentifier:(id)a3 configuration:(id)a4 webViewBuilder:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AEPictureBookRenderingCache;
  v11 = [(AEHTMLBookRenderingCache *)&v14 initWithIdentifier:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a4);
    objc_storeWeak(&v12->_webViewBuilder, v10);
    v12->_upsellPageNumber = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (id)persistentCacheFileName
{
  v2 = [(AEPictureBookRenderingCache *)self identifier];
  v3 = [NSString stringWithFormat:@"%@-%@", v2, @"v20210729"];

  return v3;
}

- (id)upsellThumbnailForAsset:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [v7 sampleContent];
  v9 = [v8 BOOLValue];

  v10 = &stru_1E7188;
  if (v9)
  {
    v10 = @"sample";
  }

  v11 = v10;
  v12 = [v7 assetID];

  v13 = [(AEPictureBookRenderingCache *)self keyForAssetID:v12 prefix:v11 size:width, height];

  v14 = [(AEPictureBookRenderingCache *)self fetchImageForKey:v13];
  if (!v14)
  {
    v15 = +[UIGraphicsImageRendererFormat preferredFormat];
    v16 = [[UIGraphicsImageRenderer alloc] initWithSize:v15 format:{width, height}];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_D50A4;
    v19[3] = &unk_1E5498;
    v21 = width;
    v22 = height;
    v20 = v15;
    v17 = v15;
    v14 = [v16 imageWithActions:v19];
    [(AEPictureBookRenderingCache *)self storeImage:v14 forKey:v13 size:[(AEPictureBookRenderingCache *)self serializeFormat] format:width, height];
  }

  return v14;
}

- (void)generateSnapshotWithAsset:(id)a3 size:(CGSize)a4 pageNumber:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  if ((a5 - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000002)
  {
    v10 = height;
    v11 = floorf(v10);
    v20 = v9;
    v12 = [(AEPictureBookRenderingCache *)self keyPrefixForPage:a5];
    v13 = [v20 assetID];
    v14 = [(AEPictureBookRenderingCache *)self keyForAssetID:v13 prefix:v12 size:width, v11];

    if (([(AEPictureBookRenderingCache *)self hasImageForKey:v14]& 1) == 0)
    {
      v15 = [v20 documentWithOrdinal:a5 - 1];
      v16 = [v20 urlForDocument:v15];
      if (v16)
      {
        if ([v20 shouldDisableOptimizeSpeed])
        {
          v17 = 0x10000;
        }

        else
        {
          v17 = 0;
        }

        v18 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:v20 ordinal:a5 - 1];
        v19 = [(AEPictureBookRenderingCache *)self _scheduleRenderWithKey:v14 options:v17 size:v18 bookInfoSnapshot:v16 documentUrl:a5 pageNumber:4 priority:width target:v11 context:0, 0];
      }
    }

    v9 = v20;
  }
}

- (id)_scheduleRenderWithKey:(id)a3 options:(unint64_t)a4 size:(CGSize)a5 bookInfoSnapshot:(id)a6 documentUrl:(id)a7 pageNumber:(int64_t)a8 priority:(int64_t)a9 target:(id)a10 context:(id)a11
{
  height = a5.height;
  width = a5.width;
  v19 = a3;
  v20 = a6;
  v21 = a7;
  v22 = a10;
  v23 = a11;
  if (([(AEPictureBookRenderingCache *)self hasImageForKey:v19]& 1) != 0)
  {
    v24 = 0;
  }

  else
  {
    v31 = a9;
    v25 = [(AEPictureBookRenderingCache *)self findRenderingCacheOperationWithStorageKey:v19 target:0 selector:0 context:0];
    objc_opt_class();
    v26 = BUDynamicCast();
    if (v25 && ![v25 isCancelled])
    {
      if (v26)
      {
        [v25 addExtraCompletion:v26];
      }

      v24 = v25;
    }

    else
    {
      v24 = [AEPictureBookRenderingCacheOperation2 renderCacheWithOptions:a4];

      [v24 setSelector:0];
      [v24 setContext:v23];
      [v24 setPageNumber:a8];
      v27 = [(AEPictureBookRenderingCache *)self renderingPiggyBack];
      [v24 setPiggyBack:v27];

      [v24 setUrl:v21];
      [v24 setBookInfoSnapshot:v20];
      v28 = [v20 assetID];
      [v24 setAssetID:v28];

      WeakRetained = objc_loadWeakRetained(&self->_webViewBuilder);
      [v24 setWebViewBuilder:WeakRetained];

      [v24 setSnapshotSize:{width, height}];
      [v24 setTarget:v22];
      if (v26)
      {
        [v24 addExtraCompletion:v26];
      }

      [v24 setImageCache:self];
      [v24 setDesiredSize:{width, height}];
      [v24 setStorageKey:v19];
      [v24 setMasterImageKey:0];
      [v24 setSerializeFormat:-[AEPictureBookRenderingCache serializeFormat](self, "serializeFormat")];
      [v24 setQueuePriority:v31];
      [(AEPictureBookRenderingCache *)self enqueueRenderingCacheOperation:v24];
    }
  }

  return v24;
}

- (id)thumbnailForPage:(int64_t)a3 asset:(id)a4 size:(CGSize)a5 renderingCacheCallbackTarget:(id)a6 renderingCacheCallbackContext:(id)a7 priority:(int64_t)a8 containerBounds:(CGRect)a9
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v16 = a5.height;
  v17 = a5.width;
  v20 = a4;
  v21 = a6;
  v22 = a7;
  if ((a3 - 0x7FFFFFFFFFFFFFFFLL) < 0x8000000000000002)
  {
    v23 = 0;
    goto LABEL_42;
  }

  v24 = [v20 assetID];
  v25 = [v20 url];
  if (v20)
  {
    v23 = 0;
    if (![v24 length] || !v25)
    {
      goto LABEL_41;
    }

    v26 = [v20 shouldDisableOptimizeSpeed];
    v27 = 0x10000;
    if (!v26)
    {
      v27 = 0;
    }

    v28 = v16;
    v29 = floorf(v28);
    v30 = v17;
    v31 = floorf(v30);
    if (v29 > 1.0 && v31 > 1.0)
    {
      v85 = a8;
      v86 = v27;
      v33 = v31;
      v34 = v29;
      [(AEPictureBookRenderingCache *)self scaleAdjustedImageSize:v31, v29];
      v36 = v35;
      v38 = v37;
      v39 = [(AEPictureBookRenderingCache *)self keyPrefixForPage:a3];
      v40 = [(AEPictureBookRenderingCache *)self keyForAssetID:v24 prefix:v39 size:v36, v38];
      v23 = [(AEHTMLBookRenderingCache *)self _fetchImageForKey:v40 size:v33, v34];
      v41 = v20;
      if (v23)
      {
LABEL_40:

        goto LABEL_41;
      }

      v78 = v38;
      v79 = v36;
      v89 = a3;
      v80 = v25;
      v81 = v22;
      v82 = v21;
      v83 = v20;
      v42 = v41;
      [(AEPictureBookRenderingCache *)self primaryImageSize];
      v44 = v43;
      *&v43 = v45;
      v46 = floorf(*&v43);
      v47 = +[IMPersistentCacheManager sharedInstance];
      v48 = [(AEPictureBookRenderingCache *)self persistentCachePath];
      v90 = [v47 cacheForPath:v48 maxSize:0];

      v49 = [(AEPictureBookRenderingCache *)self configuration];
      v88 = v42;
      v50 = +[BKPictureBookViewGeometry geometryWithContentSize:configuration:drawsSpine:containerBounds:](BKPictureBookViewGeometry, "geometryWithContentSize:configuration:drawsSpine:containerBounds:", v49, [v42 hidesSpine] ^ 1, v44, v46, x, y, width, height);

      v77 = v50;
      v51 = [v50 sizes];
      v91 = [(AEPictureBookRenderingCache *)self keyForAssetID:v24 prefix:v39 size:v44, v46];
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      obj = v51;
      v52 = [obj countByEnumeratingWithState:&v93 objects:v97 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = 0;
        v55 = *v94;
        do
        {
          for (i = 0; i != v53; i = i + 1)
          {
            if (*v94 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v57 = *(*(&v93 + 1) + 8 * i);
            [v57 CGSizeValue];
            v58 = [(AEPictureBookRenderingCache *)self keyForAssetID:v24 prefix:v39 size:?];
            if ([v40 compare:v58] + 1 <= 1 && objc_msgSend(v90, "hasItemForKey:", v58))
            {
              [v57 CGSizeValue];
              v44 = v59;
              v46 = v60;
              v61 = v58;

              v54 = 1;
              v91 = v61;
            }
          }

          v53 = [obj countByEnumeratingWithState:&v93 objects:v97 count:16];
        }

        while (v53);
      }

      else
      {
        v54 = 0;
      }

      v74 = v89 - 1;
      v76 = [v88 documentWithOrdinal:?];
      v62 = [v88 urlForDocument:?];
      if (v54)
      {
        v63 = v62;
        v75 = 0;
        v21 = v82;
        v20 = v83;
        v22 = v81;
      }

      else
      {
        v63 = v62;
        v21 = v82;
        v20 = v83;
        v22 = v81;
        if ([v40 compare:v91] == -1)
        {
          v73 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:v88 ordinal:v74];
          v64 = v86;
          v75 = [(AEPictureBookRenderingCache *)self _scheduleRenderWithKey:v91 options:v86 size:v73 bookInfoSnapshot:v63 documentUrl:v89 pageNumber:v85 priority:v44 target:v46 context:v82, v81];
          [v75 setPageNumber:v89];

LABEL_31:
          v87 = [(AEPictureBookRenderingCache *)self selectorForTarget:v21];
          v65 = [AEPictureBookRenderingCache findRenderingCacheOperationWithStorageKey:"findRenderingCacheOperationWithStorageKey:target:selector:context:" target:v40 selector:v21 context:?];
          v66 = v65;
          if (v65 && ![v65 isCancelled])
          {
            v67 = v66;
            v69 = v75;
          }

          else
          {
            v67 = [AEPictureBookRenderingCacheOperation2 renderCacheWithOptions:v64];

            v84 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:v88 ordinal:v74];
            [v67 setBookInfoSnapshot:?];
            WeakRetained = objc_loadWeakRetained(&self->_webViewBuilder);
            [v67 setWebViewBuilder:WeakRetained];

            [v67 setSnapshotSize:{v33, v34}];
            [v67 setPageNumber:v89];
            [v67 setUrl:v63];
            [v67 setTarget:v21];
            [v67 setSelector:v87];
            [v67 setContext:v22];
            [v67 setImageCache:self];
            [v67 setDesiredSize:{v79, v78}];
            [v67 setAssetID:v24];
            [v67 setStorageKey:v40];
            [v67 setMasterImageKey:v91];
            [v67 setSerializeFormat:-[AEPictureBookRenderingCache serializeFormat](self, "serializeFormat")];
            [v67 setQueuePriority:v85];
            v69 = v75;
            if (v75)
            {
              [v67 addDependency:v75];
            }

            [(AEPictureBookRenderingCache *)self enqueueRenderingCacheOperation:v67];
          }

          v70 = +[IMPersistentCacheManager sharedInstance];
          v71 = [(AEPictureBookRenderingCache *)self persistentCachePath];
          [v70 purgeFromCache:v71];

          if ([(AEPictureBookRenderingCache *)self upsellPageNumber]== v89)
          {
            v23 = [(AEPictureBookRenderingCache *)self upsellThumbnailForAsset:v88 size:v33, v34];
            v41 = v88;
            v25 = v80;
          }

          else
          {
            v23 = 0;
            v25 = v80;
            v41 = v88;
          }

          goto LABEL_40;
        }

        v75 = 0;
      }

      v64 = v86;
      goto LABEL_31;
    }
  }

  v23 = 0;
LABEL_41:

LABEL_42:

  return v23;
}

- (id)anySnapshotForBookInfo:(id)a3 pageNumber:(int64_t)a4 containerBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = v11;
  if ((a4 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v18 = 0;
  }

  else
  {
    v13 = [v11 assetID];
    [v12 fixedLayoutSizeForDocumentWithOrdinal:a4 - 1];
    v15 = v14;
    v17 = v16;
    v18 = 0;
    if ([v13 length] && v15 > 0.0 && v17 > 0.0)
    {
      [(AEPictureBookRenderingCache *)self primaryImageSize];
      v20 = v19;
      v22 = v21;
      v23 = [(AEPictureBookRenderingCache *)self keyPrefixForPage:a4];
      v24 = [(AEPictureBookRenderingCache *)self keyForAssetID:v13 prefix:v23 size:v20, v22];
      v25 = [(AEPictureBookRenderingCache *)self fetchImageForKey:v24];
      if (v25)
      {
        v18 = v25;
      }

      else
      {
        v26 = [(AEPictureBookRenderingCache *)self configuration];
        v27 = +[BKPictureBookViewGeometry geometryWithContentSize:configuration:drawsSpine:containerBounds:](BKPictureBookViewGeometry, "geometryWithContentSize:configuration:drawsSpine:containerBounds:", v26, [v12 hidesSpine] ^ 1, v15, v17, x, y, width, height);

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v28 = [v27 sizes];
        v29 = [v28 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v29)
        {
          v30 = v29;
          v36 = v27;
          v31 = *v38;
          while (2)
          {
            v32 = 0;
            v33 = v24;
            do
            {
              if (*v38 != v31)
              {
                objc_enumerationMutation(v28);
              }

              [*(*(&v37 + 1) + 8 * v32) CGSizeValue];
              v24 = [(AEPictureBookRenderingCache *)self keyForAssetID:v13 prefix:v23 size:?];

              v34 = [(AEPictureBookRenderingCache *)self fetchImageForKey:v24];
              if (v34)
              {
                v18 = v34;
                goto LABEL_18;
              }

              v32 = v32 + 1;
              v33 = v24;
            }

            while (v30 != v32);
            v30 = [v28 countByEnumeratingWithState:&v37 objects:v41 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }

          v18 = 0;
LABEL_18:
          v27 = v36;
        }

        else
        {
          v18 = 0;
        }
      }
    }
  }

  return v18;
}

- (void)snapshotForBookInfo:(id)a3 pageNumber:(int64_t)a4 size:(CGSize)a5 maxSize:(CGSize)a6 isRight:(BOOL)a7 zoomScale:(double)a8 applyMaskAndGutter:(BOOL)a9 containerBounds:(CGRect)a10 completion:(id)a11
{
  v12 = a9;
  v13 = a7;
  height = a5.height;
  width = a5.width;
  v18 = a3;
  v19 = a11;
  [v18 fixedLayoutSizeForDocumentWithOrdinal:a4 - 1];
  v21 = v20;
  v23 = v22;
  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    v27 = _AELog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "Requesting zero size snapshot", buf, 2u);
    }

    v26 = [(AEPictureBookRenderingCache *)self whitePageForSize:v13 right:v12 scale:width contentSize:height applyMaskAndGutter:a8 containerBounds:v21, v23, *&a10.origin.x, *&a10.origin.y, *&a10.size.width, *&a10.size.height];
    v19[2](v19, v26);
  }

  else
  {
    v25 = [v18 assetID];
    v26 = v25;
    if (a4 <= 0x7FFFFFFFFFFFFFFELL && [v25 length])
    {
      [(AEPictureBookRenderingCache *)self _uncheckedSnapshotWithMask:v12 assetID:v26 bookInfo:v18 containerBounds:v13 contentSize:a4 isRight:v19 pageNumber:a10.origin.x scale:a10.origin.y size:a10.size.width completion:a10.size.height, v21, v23, a8, *&width, *&height];
    }

    else
    {
      v28 = _AELog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v31 = a4;
        v32 = 2112;
        v33 = v26;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "snapshot needs pageNumber and assetID. pageNumber: %ld. assetID: %@", buf, 0x16u);
      }

      v19[2](v19, 0);
    }
  }
}

- (void)_uncheckedSnapshotWithMask:(BOOL)a3 assetID:(id)a4 bookInfo:(id)a5 containerBounds:(CGRect)a6 contentSize:(CGSize)a7 isRight:(BOOL)a8 pageNumber:(int64_t)a9 scale:(double)a10 size:(CGSize)a11 completion:(id)a12
{
  v14 = a8;
  height = a7.height;
  width = a7.width;
  v18 = a6.size.height;
  v19 = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v22 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a12;
  context = objc_autoreleasePoolPush();
  v27 = [(AEPictureBookRenderingCache *)self keyPrefixForPage:a9];
  v28 = [(AEPictureBookRenderingCache *)self keyForAssetID:v24 prefix:v27 size:a11.width, a11.height];
  v29 = [(AEHTMLBookRenderingCache *)self _fetchImageForKey:v28 size:a11.width, a11.height];
  if (v29)
  {
    [(AEPictureBookRenderingCache *)self _gotSnapshotWithMask:v22 bookInfo:v25 containerBounds:v14 contentSize:v28 isRight:a9 key:v29 pageNumber:x snapshot:y scale:v19 size:v18 completion:width, height, a10, *&a11.width, *&a11.height, v26];
  }

  else
  {
    v35 = [v25 documentWithOrdinal:a9 - 1];
    v38 = [v25 urlForDocument:?];
    v30 = [v25 shouldDisableOptimizeSpeed];
    v31 = 0x10000;
    if (!v30)
    {
      v31 = 0;
    }

    v36 = v31;
    v37 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:v25 ordinal:a9 - 1];
    objc_initWeak(location, self);
    v39 = [BCRenderingCacheBlockCallback alloc];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_D65FC;
    v42[3] = &unk_1E54C0;
    objc_copyWeak(v46, location);
    v48 = v22;
    v43 = v25;
    v46[1] = *&x;
    v46[2] = *&y;
    v46[3] = *&v19;
    v46[4] = *&v18;
    v46[5] = *&width;
    v46[6] = *&height;
    v49 = v14;
    v32 = v28;
    v44 = v32;
    v46[7] = a9;
    v46[8] = *&a10;
    v47 = a11;
    v45 = v26;
    v33 = [v39 initWithCompletion:v42];
    v34 = [(AEPictureBookRenderingCache *)self _scheduleRenderWithKey:v32 options:v36 size:v37 bookInfoSnapshot:v38 documentUrl:a9 pageNumber:4 priority:a11.width target:a11.height context:v33, v33];

    objc_destroyWeak(v46);
    objc_destroyWeak(location);
  }

  objc_autoreleasePoolPop(context);
}

- (void)_gotSnapshotWithMask:(BOOL)a3 bookInfo:(id)a4 containerBounds:(CGRect)a5 contentSize:(CGSize)a6 isRight:(BOOL)a7 key:(id)a8 pageNumber:(int64_t)a9 snapshot:(id)a10 scale:(double)a11 size:(CGSize)a12 completion:(id)a13
{
  v16 = a7;
  height = a6.height;
  width = a6.width;
  v19 = a5.size.height;
  v20 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v23 = a3;
  v30 = a4;
  v25 = a8;
  v26 = a10;
  v27 = a13;
  if (!v26)
  {
    v26 = [(AEPictureBookRenderingCache *)self anySnapshotForBookInfo:v30 pageNumber:a9 containerBounds:x, y, v20, v19];
  }

  if (v23 && v26)
  {
    v28 = -[AEPictureBookRenderingCache _applyMaskAndGutter:isRight:contentSize:containerBounds:](self, "_applyMaskAndGutter:isRight:contentSize:containerBounds:", [v26 CGImage], v16, width, height, x, y, v20, v19);

    v26 = v28;
  }

  if (!v26)
  {
    v26 = [(AEPictureBookRenderingCache *)self whitePageForSize:v16 right:v23 scale:a12.width contentSize:a12.height applyMaskAndGutter:a11 containerBounds:width, height, *&x, *&y, *&v20, *&v19];
  }

  v27[2](v27, v26);
}

- (id)generateMasterImageForPageNumber:(int64_t)a3 asset:(id)a4 priority:(int64_t)a5 callbackBlock:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = v11;
  v13 = 0;
  if (a3 >= 1 && v10 && v11)
  {
    v14 = [v10 assetID];
    if ([v14 length])
    {
      v15 = [v10 url];

      if (!v15)
      {
        v13 = 0;
        goto LABEL_16;
      }

      [(AEPictureBookRenderingCache *)self primaryImageSize];
      v17 = v16;
      v19 = v18;
      v14 = [(AEHTMLBookRenderingCache *)self _keyForAsset:v10 size:a3 pageNumber:?];
      v20 = [(AEPictureBookRenderingCache *)self fetchImageForKey:v14];
      if (v20)
      {
        (v12)[2](v12, v20);
        v13 = 0;
      }

      else
      {
        v29 = [v10 documentWithOrdinal:a3 - 1];
        v28 = [v10 urlForDocument:v29];
        v21 = [[AEBookRenderingCallbackTarget alloc] initWithCallbackBlock:v12];
        if ([v10 shouldDisableOptimizeSpeed])
        {
          v22 = 0x10000;
        }

        else
        {
          v22 = 0;
        }

        v13 = [AEPictureBookRenderingCacheOperation2 renderCacheWithOptions:v22];
        [v13 setTarget:v21];
        [v13 setSelector:{-[AEPictureBookRenderingCache selectorForTarget:](self, "selectorForTarget:", v21)}];
        [v13 setContext:v21];
        v27 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:v10 ordinal:a3 - 1];
        [v13 setBookInfoSnapshot:v27];
        WeakRetained = objc_loadWeakRetained(&self->_webViewBuilder);
        [v13 setWebViewBuilder:WeakRetained];

        [v13 setSnapshotSize:{v17, v19}];
        [v13 setPageNumber:a3];
        v24 = [(AEPictureBookRenderingCache *)self renderingPiggyBack];
        [v13 setPiggyBack:v24];

        [v13 setUrl:v28];
        [v13 setImageCache:self];
        [v13 setDesiredSize:{v17, v19}];
        v25 = [v10 assetID];
        [v13 setAssetID:v25];

        [v13 setStorageKey:v14];
        [v13 setSerializeFormat:-[AEPictureBookRenderingCache serializeFormat](self, "serializeFormat")];
        [v13 setQueuePriority:a5];
        [(AEPictureBookRenderingCache *)self enqueueRenderingCacheOperation:v13];
      }
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_16:

  return v13;
}

- (void)renderingPiggyBackForPageNumber:(int64_t)a3 asset:(id)a4 priority:(int64_t)a5
{
  v17 = a4;
  v8 = [(AEPictureBookRenderingCache *)self renderingPiggyBack];
  v9 = [v8 needPiggyBackOperationForOrdinal:a3 - 1];

  if (v9)
  {
    v10 = [v17 documentWithOrdinal:a3 - 1];
    v11 = [v17 urlForDocument:v10];
    if ([v17 shouldDisableOptimizeSpeed])
    {
      v12 = 0x10000;
    }

    else
    {
      v12 = 0;
    }

    v13 = [AEPictureBookRenderingCacheOperation2 renderCacheWithOptions:v12];
    v14 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:v17 ordinal:a3 - 1];
    [v13 setBookInfoSnapshot:v14];

    [v13 setPageNumber:a3];
    v15 = [(AEPictureBookRenderingCache *)self renderingPiggyBack];
    [v13 setPiggyBack:v15];

    [v13 setUrl:v11];
    [v13 setImageCache:self];
    [v13 setDesiredSize:{100.0, 100.0}];
    v16 = [v17 assetID];
    [v13 setAssetID:v16];

    [v13 setStorageKey:0];
    [v13 setSerializeFormat:-[AEPictureBookRenderingCache serializeFormat](self, "serializeFormat")];
    [v13 setQueuePriority:a5];
    [(AEPictureBookRenderingCache *)self enqueueRenderingCacheOperation:v13];
  }
}

- (id)whitePageForSize:(CGSize)a3 right:(BOOL)a4 scale:(double)a5 contentSize:(CGSize)a6 applyMaskAndGutter:(BOOL)a7 containerBounds:(CGRect)a8
{
  v8 = a7;
  height = a6.height;
  width = a6.width;
  v11 = a4;
  v12 = a3.height;
  v13 = a3.width;
  v15 = NSStringFromCGSize(a3);
  v16 = v15;
  v17 = @"left";
  if (v11)
  {
    v17 = @"right";
  }

  v18 = &stru_1E7188;
  if (v8)
  {
    v18 = @"-m";
  }

  v19 = [NSString stringWithFormat:@"white-%@-%@-%0.5f%@", v15, v17, *&a5, v18];

  v20 = [(AEPictureBookRenderingCache *)self fetchImageForKey:v19];
  if (!v20)
  {
    v21 = objc_autoreleasePoolPush();
    [(AEPictureBookRenderingCache *)self scale];
    v23 = v22;
    v32.width = v13;
    v32.height = v12;
    UIGraphicsBeginImageContextWithOptions(v32, 0, v23);
    CurrentContext = UIGraphicsGetCurrentContext();
    v25 = +[UIColor whiteColor];
    [v25 set];

    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    v33.size.width = v13;
    v33.size.height = v12;
    CGContextFillRect(CurrentContext, v33);
    v26 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v8)
    {
      v27 = -[AEPictureBookRenderingCache _applyMaskAndGutter:isRight:contentSize:containerBounds:](self, "_applyMaskAndGutter:isRight:contentSize:containerBounds:", [v26 CGImage], v11, width, height, a8.origin.x, a8.origin.y, a8.size.width, a8.size.height);
    }

    else
    {
      v27 = v26;
    }

    v20 = v27;
    v28 = UIImagePNGRepresentation(v27);
    if ([v28 length])
    {
      [(AEPictureBookRenderingCache *)self storeImage:v20 forKey:v19 size:0 format:width, height];
    }

    objc_autoreleasePoolPop(v21);
  }

  return v20;
}

- (id)_applyMaskAndGutter:(CGImage *)a3 isRight:(BOOL)a4 contentSize:(CGSize)a5 containerBounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5.height;
  v11 = a5.width;
  v12 = a4;
  v15 = CGImageGetWidth(a3);
  v16 = CGImageGetHeight(a3);
  v17 = [(AEPictureBookRenderingCache *)self configuration];
  v18 = [BKPictureBookViewGeometry geometryWithContentSize:v17 configuration:1 drawsSpine:v11 containerBounds:v10, x, y, width, height];

  [v18 scaleForSize:{v15, v16}];
  v20 = v19;
  v21 = [UIImage imageNamed:@"PictureBookSpine.png"];
  v22 = CGImageAddAlphaAndAddBookMask(a3, [v21 CGImage], v12, v20);

  v23 = [UIImage imageWithCGImage:v22];
  CGImageRelease(v22);

  return v23;
}

- (void)renderQueuesEmptied
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewBuilder);
  [WeakRetained finishedSnapshottingForCache:self];
}

- (AEPaginatedBookSnapshotWebViewBuilder)webViewBuilder
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewBuilder);

  return WeakRetained;
}

@end