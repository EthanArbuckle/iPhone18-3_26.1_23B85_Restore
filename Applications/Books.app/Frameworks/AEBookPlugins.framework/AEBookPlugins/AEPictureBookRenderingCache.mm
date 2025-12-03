@interface AEPictureBookRenderingCache
- (AEPaginatedBookSnapshotWebViewBuilder)webViewBuilder;
- (AEPictureBookRenderingCache)initWithIdentifier:(id)identifier configuration:(id)configuration webViewBuilder:(id)builder;
- (id)_applyMaskAndGutter:(CGImage *)gutter isRight:(BOOL)right contentSize:(CGSize)size containerBounds:(CGRect)bounds;
- (id)_scheduleRenderWithKey:(id)key options:(unint64_t)options size:(CGSize)size bookInfoSnapshot:(id)snapshot documentUrl:(id)url pageNumber:(int64_t)number priority:(int64_t)priority target:(id)self0 context:(id)self1;
- (id)anySnapshotForBookInfo:(id)info pageNumber:(int64_t)number containerBounds:(CGRect)bounds;
- (id)generateMasterImageForPageNumber:(int64_t)number asset:(id)asset priority:(int64_t)priority callbackBlock:(id)block;
- (id)persistentCacheFileName;
- (id)thumbnailForPage:(int64_t)page asset:(id)asset size:(CGSize)size renderingCacheCallbackTarget:(id)target renderingCacheCallbackContext:(id)context priority:(int64_t)priority containerBounds:(CGRect)bounds;
- (id)upsellThumbnailForAsset:(id)asset size:(CGSize)size;
- (id)whitePageForSize:(CGSize)size right:(BOOL)right scale:(double)scale contentSize:(CGSize)contentSize applyMaskAndGutter:(BOOL)gutter containerBounds:(CGRect)bounds;
- (void)_gotSnapshotWithMask:(BOOL)mask bookInfo:(id)info containerBounds:(CGRect)bounds contentSize:(CGSize)size isRight:(BOOL)right key:(id)key pageNumber:(int64_t)number snapshot:(id)self0 scale:(double)self1 size:(CGSize)self2 completion:(id)self3;
- (void)_uncheckedSnapshotWithMask:(BOOL)mask assetID:(id)d bookInfo:(id)info containerBounds:(CGRect)bounds contentSize:(CGSize)size isRight:(BOOL)right pageNumber:(int64_t)number scale:(double)self0 size:(CGSize)self1 completion:(id)self2;
- (void)generateSnapshotWithAsset:(id)asset size:(CGSize)size pageNumber:(int64_t)number;
- (void)renderQueuesEmptied;
- (void)renderingPiggyBackForPageNumber:(int64_t)number asset:(id)asset priority:(int64_t)priority;
- (void)snapshotForBookInfo:(id)info pageNumber:(int64_t)number size:(CGSize)size maxSize:(CGSize)maxSize isRight:(BOOL)right zoomScale:(double)scale applyMaskAndGutter:(BOOL)gutter containerBounds:(CGRect)self0 completion:(id)self1;
@end

@implementation AEPictureBookRenderingCache

- (AEPictureBookRenderingCache)initWithIdentifier:(id)identifier configuration:(id)configuration webViewBuilder:(id)builder
{
  configurationCopy = configuration;
  builderCopy = builder;
  v14.receiver = self;
  v14.super_class = AEPictureBookRenderingCache;
  v11 = [(AEHTMLBookRenderingCache *)&v14 initWithIdentifier:identifier];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, configuration);
    objc_storeWeak(&v12->_webViewBuilder, builderCopy);
    v12->_upsellPageNumber = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (id)persistentCacheFileName
{
  identifier = [(AEPictureBookRenderingCache *)self identifier];
  v3 = [NSString stringWithFormat:@"%@-%@", identifier, @"v20210729"];

  return v3;
}

- (id)upsellThumbnailForAsset:(id)asset size:(CGSize)size
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  sampleContent = [assetCopy sampleContent];
  bOOLValue = [sampleContent BOOLValue];

  v10 = &stru_1E7188;
  if (bOOLValue)
  {
    v10 = @"sample";
  }

  v11 = v10;
  assetID = [assetCopy assetID];

  height = [(AEPictureBookRenderingCache *)self keyForAssetID:assetID prefix:v11 size:width, height];

  v14 = [(AEPictureBookRenderingCache *)self fetchImageForKey:height];
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
    [(AEPictureBookRenderingCache *)self storeImage:v14 forKey:height size:[(AEPictureBookRenderingCache *)self serializeFormat] format:width, height];
  }

  return v14;
}

- (void)generateSnapshotWithAsset:(id)asset size:(CGSize)size pageNumber:(int64_t)number
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  if ((number - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000002)
  {
    v10 = height;
    v11 = floorf(v10);
    v20 = assetCopy;
    v12 = [(AEPictureBookRenderingCache *)self keyPrefixForPage:number];
    assetID = [v20 assetID];
    v14 = [(AEPictureBookRenderingCache *)self keyForAssetID:assetID prefix:v12 size:width, v11];

    if (([(AEPictureBookRenderingCache *)self hasImageForKey:v14]& 1) == 0)
    {
      v15 = [v20 documentWithOrdinal:number - 1];
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

        v18 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:v20 ordinal:number - 1];
        v19 = [(AEPictureBookRenderingCache *)self _scheduleRenderWithKey:v14 options:v17 size:v18 bookInfoSnapshot:v16 documentUrl:number pageNumber:4 priority:width target:v11 context:0, 0];
      }
    }

    assetCopy = v20;
  }
}

- (id)_scheduleRenderWithKey:(id)key options:(unint64_t)options size:(CGSize)size bookInfoSnapshot:(id)snapshot documentUrl:(id)url pageNumber:(int64_t)number priority:(int64_t)priority target:(id)self0 context:(id)self1
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  snapshotCopy = snapshot;
  urlCopy = url;
  targetCopy = target;
  contextCopy = context;
  if (([(AEPictureBookRenderingCache *)self hasImageForKey:keyCopy]& 1) != 0)
  {
    v24 = 0;
  }

  else
  {
    priorityCopy = priority;
    v25 = [(AEPictureBookRenderingCache *)self findRenderingCacheOperationWithStorageKey:keyCopy target:0 selector:0 context:0];
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
      v24 = [AEPictureBookRenderingCacheOperation2 renderCacheWithOptions:options];

      [v24 setSelector:0];
      [v24 setContext:contextCopy];
      [v24 setPageNumber:number];
      renderingPiggyBack = [(AEPictureBookRenderingCache *)self renderingPiggyBack];
      [v24 setPiggyBack:renderingPiggyBack];

      [v24 setUrl:urlCopy];
      [v24 setBookInfoSnapshot:snapshotCopy];
      assetID = [snapshotCopy assetID];
      [v24 setAssetID:assetID];

      WeakRetained = objc_loadWeakRetained(&self->_webViewBuilder);
      [v24 setWebViewBuilder:WeakRetained];

      [v24 setSnapshotSize:{width, height}];
      [v24 setTarget:targetCopy];
      if (v26)
      {
        [v24 addExtraCompletion:v26];
      }

      [v24 setImageCache:self];
      [v24 setDesiredSize:{width, height}];
      [v24 setStorageKey:keyCopy];
      [v24 setMasterImageKey:0];
      [v24 setSerializeFormat:-[AEPictureBookRenderingCache serializeFormat](self, "serializeFormat")];
      [v24 setQueuePriority:priorityCopy];
      [(AEPictureBookRenderingCache *)self enqueueRenderingCacheOperation:v24];
    }
  }

  return v24;
}

- (id)thumbnailForPage:(int64_t)page asset:(id)asset size:(CGSize)size renderingCacheCallbackTarget:(id)target renderingCacheCallbackContext:(id)context priority:(int64_t)priority containerBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v16 = size.height;
  v17 = size.width;
  assetCopy = asset;
  targetCopy = target;
  contextCopy = context;
  if ((page - 0x7FFFFFFFFFFFFFFFLL) < 0x8000000000000002)
  {
    v23 = 0;
    goto LABEL_42;
  }

  assetID = [assetCopy assetID];
  v25 = [assetCopy url];
  if (assetCopy)
  {
    v23 = 0;
    if (![assetID length] || !v25)
    {
      goto LABEL_41;
    }

    shouldDisableOptimizeSpeed = [assetCopy shouldDisableOptimizeSpeed];
    v27 = 0x10000;
    if (!shouldDisableOptimizeSpeed)
    {
      v27 = 0;
    }

    v28 = v16;
    v29 = floorf(v28);
    v30 = v17;
    v31 = floorf(v30);
    if (v29 > 1.0 && v31 > 1.0)
    {
      priorityCopy = priority;
      v86 = v27;
      v33 = v31;
      v34 = v29;
      [(AEPictureBookRenderingCache *)self scaleAdjustedImageSize:v31, v29];
      v36 = v35;
      v38 = v37;
      v39 = [(AEPictureBookRenderingCache *)self keyPrefixForPage:page];
      v40 = [(AEPictureBookRenderingCache *)self keyForAssetID:assetID prefix:v39 size:v36, v38];
      v23 = [(AEHTMLBookRenderingCache *)self _fetchImageForKey:v40 size:v33, v34];
      v41 = assetCopy;
      if (v23)
      {
LABEL_40:

        goto LABEL_41;
      }

      v78 = v38;
      v79 = v36;
      pageCopy = page;
      v80 = v25;
      v81 = contextCopy;
      v82 = targetCopy;
      v83 = assetCopy;
      v42 = v41;
      [(AEPictureBookRenderingCache *)self primaryImageSize];
      v44 = v43;
      *&v43 = v45;
      v46 = floorf(*&v43);
      v47 = +[IMPersistentCacheManager sharedInstance];
      persistentCachePath = [(AEPictureBookRenderingCache *)self persistentCachePath];
      v90 = [v47 cacheForPath:persistentCachePath maxSize:0];

      configuration = [(AEPictureBookRenderingCache *)self configuration];
      v88 = v42;
      v50 = +[BKPictureBookViewGeometry geometryWithContentSize:configuration:drawsSpine:containerBounds:](BKPictureBookViewGeometry, "geometryWithContentSize:configuration:drawsSpine:containerBounds:", configuration, [v42 hidesSpine] ^ 1, v44, v46, x, y, width, height);

      v77 = v50;
      sizes = [v50 sizes];
      v91 = [(AEPictureBookRenderingCache *)self keyForAssetID:assetID prefix:v39 size:v44, v46];
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      obj = sizes;
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
            v58 = [(AEPictureBookRenderingCache *)self keyForAssetID:assetID prefix:v39 size:?];
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

      v74 = pageCopy - 1;
      v76 = [v88 documentWithOrdinal:?];
      v62 = [v88 urlForDocument:?];
      if (v54)
      {
        v63 = v62;
        v75 = 0;
        targetCopy = v82;
        assetCopy = v83;
        contextCopy = v81;
      }

      else
      {
        v63 = v62;
        targetCopy = v82;
        assetCopy = v83;
        contextCopy = v81;
        if ([v40 compare:v91] == -1)
        {
          v73 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:v88 ordinal:v74];
          v64 = v86;
          v75 = [(AEPictureBookRenderingCache *)self _scheduleRenderWithKey:v91 options:v86 size:v73 bookInfoSnapshot:v63 documentUrl:pageCopy pageNumber:priorityCopy priority:v44 target:v46 context:v82, v81];
          [v75 setPageNumber:pageCopy];

LABEL_31:
          v87 = [(AEPictureBookRenderingCache *)self selectorForTarget:targetCopy];
          v65 = [AEPictureBookRenderingCache findRenderingCacheOperationWithStorageKey:"findRenderingCacheOperationWithStorageKey:target:selector:context:" target:v40 selector:targetCopy context:?];
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
            [v67 setPageNumber:pageCopy];
            [v67 setUrl:v63];
            [v67 setTarget:targetCopy];
            [v67 setSelector:v87];
            [v67 setContext:contextCopy];
            [v67 setImageCache:self];
            [v67 setDesiredSize:{v79, v78}];
            [v67 setAssetID:assetID];
            [v67 setStorageKey:v40];
            [v67 setMasterImageKey:v91];
            [v67 setSerializeFormat:-[AEPictureBookRenderingCache serializeFormat](self, "serializeFormat")];
            [v67 setQueuePriority:priorityCopy];
            v69 = v75;
            if (v75)
            {
              [v67 addDependency:v75];
            }

            [(AEPictureBookRenderingCache *)self enqueueRenderingCacheOperation:v67];
          }

          v70 = +[IMPersistentCacheManager sharedInstance];
          persistentCachePath2 = [(AEPictureBookRenderingCache *)self persistentCachePath];
          [v70 purgeFromCache:persistentCachePath2];

          if ([(AEPictureBookRenderingCache *)self upsellPageNumber]== pageCopy)
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

- (id)anySnapshotForBookInfo:(id)info pageNumber:(int64_t)number containerBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  infoCopy = info;
  v12 = infoCopy;
  if ((number - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v18 = 0;
  }

  else
  {
    assetID = [infoCopy assetID];
    [v12 fixedLayoutSizeForDocumentWithOrdinal:number - 1];
    v15 = v14;
    v17 = v16;
    v18 = 0;
    if ([assetID length] && v15 > 0.0 && v17 > 0.0)
    {
      [(AEPictureBookRenderingCache *)self primaryImageSize];
      v20 = v19;
      v22 = v21;
      v23 = [(AEPictureBookRenderingCache *)self keyPrefixForPage:number];
      v24 = [(AEPictureBookRenderingCache *)self keyForAssetID:assetID prefix:v23 size:v20, v22];
      v25 = [(AEPictureBookRenderingCache *)self fetchImageForKey:v24];
      if (v25)
      {
        v18 = v25;
      }

      else
      {
        configuration = [(AEPictureBookRenderingCache *)self configuration];
        v27 = +[BKPictureBookViewGeometry geometryWithContentSize:configuration:drawsSpine:containerBounds:](BKPictureBookViewGeometry, "geometryWithContentSize:configuration:drawsSpine:containerBounds:", configuration, [v12 hidesSpine] ^ 1, v15, v17, x, y, width, height);

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        sizes = [v27 sizes];
        v29 = [sizes countByEnumeratingWithState:&v37 objects:v41 count:16];
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
                objc_enumerationMutation(sizes);
              }

              [*(*(&v37 + 1) + 8 * v32) CGSizeValue];
              v24 = [(AEPictureBookRenderingCache *)self keyForAssetID:assetID prefix:v23 size:?];

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
            v30 = [sizes countByEnumeratingWithState:&v37 objects:v41 count:16];
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

- (void)snapshotForBookInfo:(id)info pageNumber:(int64_t)number size:(CGSize)size maxSize:(CGSize)maxSize isRight:(BOOL)right zoomScale:(double)scale applyMaskAndGutter:(BOOL)gutter containerBounds:(CGRect)self0 completion:(id)self1
{
  gutterCopy = gutter;
  rightCopy = right;
  height = size.height;
  width = size.width;
  infoCopy = info;
  completionCopy = completion;
  [infoCopy fixedLayoutSizeForDocumentWithOrdinal:number - 1];
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

    v26 = [(AEPictureBookRenderingCache *)self whitePageForSize:rightCopy right:gutterCopy scale:width contentSize:height applyMaskAndGutter:scale containerBounds:v21, v23, *&bounds.origin.x, *&bounds.origin.y, *&bounds.size.width, *&bounds.size.height];
    completionCopy[2](completionCopy, v26);
  }

  else
  {
    assetID = [infoCopy assetID];
    v26 = assetID;
    if (number <= 0x7FFFFFFFFFFFFFFELL && [assetID length])
    {
      [(AEPictureBookRenderingCache *)self _uncheckedSnapshotWithMask:gutterCopy assetID:v26 bookInfo:infoCopy containerBounds:rightCopy contentSize:number isRight:completionCopy pageNumber:bounds.origin.x scale:bounds.origin.y size:bounds.size.width completion:bounds.size.height, v21, v23, scale, *&width, *&height];
    }

    else
    {
      v28 = _AELog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        numberCopy = number;
        v32 = 2112;
        v33 = v26;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "snapshot needs pageNumber and assetID. pageNumber: %ld. assetID: %@", buf, 0x16u);
      }

      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)_uncheckedSnapshotWithMask:(BOOL)mask assetID:(id)d bookInfo:(id)info containerBounds:(CGRect)bounds contentSize:(CGSize)size isRight:(BOOL)right pageNumber:(int64_t)number scale:(double)self0 size:(CGSize)self1 completion:(id)self2
{
  rightCopy = right;
  height = size.height;
  width = size.width;
  v18 = bounds.size.height;
  v19 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  maskCopy = mask;
  dCopy = d;
  infoCopy = info;
  completionCopy = completion;
  context = objc_autoreleasePoolPush();
  v27 = [(AEPictureBookRenderingCache *)self keyPrefixForPage:number];
  v28 = [(AEPictureBookRenderingCache *)self keyForAssetID:dCopy prefix:v27 size:a11.width, a11.height];
  v29 = [(AEHTMLBookRenderingCache *)self _fetchImageForKey:v28 size:a11.width, a11.height];
  if (v29)
  {
    [(AEPictureBookRenderingCache *)self _gotSnapshotWithMask:maskCopy bookInfo:infoCopy containerBounds:rightCopy contentSize:v28 isRight:number key:v29 pageNumber:x snapshot:y scale:v19 size:v18 completion:width, height, scale, *&a11.width, *&a11.height, completionCopy];
  }

  else
  {
    v35 = [infoCopy documentWithOrdinal:number - 1];
    v38 = [infoCopy urlForDocument:?];
    shouldDisableOptimizeSpeed = [infoCopy shouldDisableOptimizeSpeed];
    v31 = 0x10000;
    if (!shouldDisableOptimizeSpeed)
    {
      v31 = 0;
    }

    v36 = v31;
    v37 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:infoCopy ordinal:number - 1];
    objc_initWeak(location, self);
    v39 = [BCRenderingCacheBlockCallback alloc];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_D65FC;
    v42[3] = &unk_1E54C0;
    objc_copyWeak(v46, location);
    v48 = maskCopy;
    v43 = infoCopy;
    v46[1] = *&x;
    v46[2] = *&y;
    v46[3] = *&v19;
    v46[4] = *&v18;
    v46[5] = *&width;
    v46[6] = *&height;
    v49 = rightCopy;
    v32 = v28;
    v44 = v32;
    v46[7] = number;
    v46[8] = *&scale;
    v47 = a11;
    v45 = completionCopy;
    v33 = [v39 initWithCompletion:v42];
    v34 = [(AEPictureBookRenderingCache *)self _scheduleRenderWithKey:v32 options:v36 size:v37 bookInfoSnapshot:v38 documentUrl:number pageNumber:4 priority:a11.width target:a11.height context:v33, v33];

    objc_destroyWeak(v46);
    objc_destroyWeak(location);
  }

  objc_autoreleasePoolPop(context);
}

- (void)_gotSnapshotWithMask:(BOOL)mask bookInfo:(id)info containerBounds:(CGRect)bounds contentSize:(CGSize)size isRight:(BOOL)right key:(id)key pageNumber:(int64_t)number snapshot:(id)self0 scale:(double)self1 size:(CGSize)self2 completion:(id)self3
{
  rightCopy = right;
  height = size.height;
  width = size.width;
  v19 = bounds.size.height;
  v20 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  maskCopy = mask;
  infoCopy = info;
  keyCopy = key;
  snapshotCopy = snapshot;
  completionCopy = completion;
  if (!snapshotCopy)
  {
    snapshotCopy = [(AEPictureBookRenderingCache *)self anySnapshotForBookInfo:infoCopy pageNumber:number containerBounds:x, y, v20, v19];
  }

  if (maskCopy && snapshotCopy)
  {
    v28 = -[AEPictureBookRenderingCache _applyMaskAndGutter:isRight:contentSize:containerBounds:](self, "_applyMaskAndGutter:isRight:contentSize:containerBounds:", [snapshotCopy CGImage], rightCopy, width, height, x, y, v20, v19);

    snapshotCopy = v28;
  }

  if (!snapshotCopy)
  {
    snapshotCopy = [(AEPictureBookRenderingCache *)self whitePageForSize:rightCopy right:maskCopy scale:a12.width contentSize:a12.height applyMaskAndGutter:scale containerBounds:width, height, *&x, *&y, *&v20, *&v19];
  }

  completionCopy[2](completionCopy, snapshotCopy);
}

- (id)generateMasterImageForPageNumber:(int64_t)number asset:(id)asset priority:(int64_t)priority callbackBlock:(id)block
{
  assetCopy = asset;
  blockCopy = block;
  v12 = blockCopy;
  v13 = 0;
  if (number >= 1 && assetCopy && blockCopy)
  {
    assetID = [assetCopy assetID];
    if ([assetID length])
    {
      v15 = [assetCopy url];

      if (!v15)
      {
        v13 = 0;
        goto LABEL_16;
      }

      [(AEPictureBookRenderingCache *)self primaryImageSize];
      v17 = v16;
      v19 = v18;
      assetID = [(AEHTMLBookRenderingCache *)self _keyForAsset:assetCopy size:number pageNumber:?];
      v20 = [(AEPictureBookRenderingCache *)self fetchImageForKey:assetID];
      if (v20)
      {
        (v12)[2](v12, v20);
        v13 = 0;
      }

      else
      {
        v29 = [assetCopy documentWithOrdinal:number - 1];
        v28 = [assetCopy urlForDocument:v29];
        v21 = [[AEBookRenderingCallbackTarget alloc] initWithCallbackBlock:v12];
        if ([assetCopy shouldDisableOptimizeSpeed])
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
        v27 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:assetCopy ordinal:number - 1];
        [v13 setBookInfoSnapshot:v27];
        WeakRetained = objc_loadWeakRetained(&self->_webViewBuilder);
        [v13 setWebViewBuilder:WeakRetained];

        [v13 setSnapshotSize:{v17, v19}];
        [v13 setPageNumber:number];
        renderingPiggyBack = [(AEPictureBookRenderingCache *)self renderingPiggyBack];
        [v13 setPiggyBack:renderingPiggyBack];

        [v13 setUrl:v28];
        [v13 setImageCache:self];
        [v13 setDesiredSize:{v17, v19}];
        assetID2 = [assetCopy assetID];
        [v13 setAssetID:assetID2];

        [v13 setStorageKey:assetID];
        [v13 setSerializeFormat:-[AEPictureBookRenderingCache serializeFormat](self, "serializeFormat")];
        [v13 setQueuePriority:priority];
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

- (void)renderingPiggyBackForPageNumber:(int64_t)number asset:(id)asset priority:(int64_t)priority
{
  assetCopy = asset;
  renderingPiggyBack = [(AEPictureBookRenderingCache *)self renderingPiggyBack];
  v9 = [renderingPiggyBack needPiggyBackOperationForOrdinal:number - 1];

  if (v9)
  {
    v10 = [assetCopy documentWithOrdinal:number - 1];
    v11 = [assetCopy urlForDocument:v10];
    if ([assetCopy shouldDisableOptimizeSpeed])
    {
      v12 = 0x10000;
    }

    else
    {
      v12 = 0;
    }

    v13 = [AEPictureBookRenderingCacheOperation2 renderCacheWithOptions:v12];
    v14 = [AEBookInfoSnapshot aeBookInfoSnapshotFromBookInfo:assetCopy ordinal:number - 1];
    [v13 setBookInfoSnapshot:v14];

    [v13 setPageNumber:number];
    renderingPiggyBack2 = [(AEPictureBookRenderingCache *)self renderingPiggyBack];
    [v13 setPiggyBack:renderingPiggyBack2];

    [v13 setUrl:v11];
    [v13 setImageCache:self];
    [v13 setDesiredSize:{100.0, 100.0}];
    assetID = [assetCopy assetID];
    [v13 setAssetID:assetID];

    [v13 setStorageKey:0];
    [v13 setSerializeFormat:-[AEPictureBookRenderingCache serializeFormat](self, "serializeFormat")];
    [v13 setQueuePriority:priority];
    [(AEPictureBookRenderingCache *)self enqueueRenderingCacheOperation:v13];
  }
}

- (id)whitePageForSize:(CGSize)size right:(BOOL)right scale:(double)scale contentSize:(CGSize)contentSize applyMaskAndGutter:(BOOL)gutter containerBounds:(CGRect)bounds
{
  gutterCopy = gutter;
  height = contentSize.height;
  width = contentSize.width;
  rightCopy = right;
  v12 = size.height;
  v13 = size.width;
  v15 = NSStringFromCGSize(size);
  v16 = v15;
  v17 = @"left";
  if (rightCopy)
  {
    v17 = @"right";
  }

  v18 = &stru_1E7188;
  if (gutterCopy)
  {
    v18 = @"-m";
  }

  v19 = [NSString stringWithFormat:@"white-%@-%@-%0.5f%@", v15, v17, *&scale, v18];

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
    if (gutterCopy)
    {
      v27 = -[AEPictureBookRenderingCache _applyMaskAndGutter:isRight:contentSize:containerBounds:](self, "_applyMaskAndGutter:isRight:contentSize:containerBounds:", [v26 CGImage], rightCopy, width, height, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height);
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

- (id)_applyMaskAndGutter:(CGImage *)gutter isRight:(BOOL)right contentSize:(CGSize)size containerBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = size.height;
  v11 = size.width;
  rightCopy = right;
  v15 = CGImageGetWidth(gutter);
  v16 = CGImageGetHeight(gutter);
  configuration = [(AEPictureBookRenderingCache *)self configuration];
  height = [BKPictureBookViewGeometry geometryWithContentSize:configuration configuration:1 drawsSpine:v11 containerBounds:v10, x, y, width, height];

  [height scaleForSize:{v15, v16}];
  v20 = v19;
  v21 = [UIImage imageNamed:@"PictureBookSpine.png"];
  v22 = CGImageAddAlphaAndAddBookMask(gutter, [v21 CGImage], rightCopy, v20);

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