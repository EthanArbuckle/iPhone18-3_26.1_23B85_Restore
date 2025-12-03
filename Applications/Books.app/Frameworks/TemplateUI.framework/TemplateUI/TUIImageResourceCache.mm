@interface TUIImageResourceCache
- (BOOL)shouldDeferLoadForResource:(id)resource;
- (TUIImageResourceCache)initWithLoader:(id)loader filters:(id)filters customImageBundle:(id)bundle;
- (id)_largestResourceWithContentAndNaturalSize:(CGSize)size contentsScale:(double)scale cachedResources:(id)resources;
- (id)_symbolImageForKey:(id)key;
- (id)imageResource:(id)resource naturalSize:(CGSize)size contentsScale:(double)scale withFilter:(id)filter filterOptions:(id)options;
- (id)imageResource:(id)resource tintedWithColor:(id)color;
- (id)imageResourceForImageResources:(id)resources filters:(id)filters imageSetFilter:(id)filter naturalSize:(CGSize)size contentsScale:(double)scale;
- (id)imageResourceForTemplatedURL:(id)l baseURL:(id)rL naturalSize:(CGSize)size contentsScale:(double)scale;
- (id)imageResourceForURL:(id)l contentsScale:(double)scale;
- (id)mediaBackdropImageResourceFrom:(id)from naturalSize:(CGSize)size contentScale:(double)scale;
- (id)symbolImageWithName:(id)name compatibleWithFontSize:(double)size weight:(int64_t)weight scale:(int64_t)scale renderingMode:(unint64_t)mode colors:(id)colors style:(unint64_t)style contentsScale:(double)self0 layoutDirection:(unint64_t)self1 insets:(UIEdgeInsets)self2 baseline:(BOOL)self3;
- (void)debugDumpFilteredResources:(BOOL)resources;
- (void)deferLoadsBegin;
- (void)deferLoadsEnd;
- (void)refreshAllResources;
@end

@implementation TUIImageResourceCache

- (TUIImageResourceCache)initWithLoader:(id)loader filters:(id)filters customImageBundle:(id)bundle
{
  loaderCopy = loader;
  filtersCopy = filters;
  bundleCopy = bundle;
  v43.receiver = self;
  v43.super_class = TUIImageResourceCache;
  v12 = [(TUIImageResourceCache *)&v43 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_loader, loader);
    objc_storeStrong(&v13->_filters, filters);
    objc_storeStrong(&v13->_customImageBundle, bundle);
    v14 = dispatch_queue_create("TUIImageResourceCache.cacheQueue", 0);
    cacheQueue = v13->_cacheQueue;
    v13->_cacheQueue = v14;

    v16 = dispatch_queue_create("TUIImageResourceCache.resourceQueue", 0);
    resourceQueue = v13->_resourceQueue;
    v13->_resourceQueue = v16;

    v18 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:517];
    cachedURLResources = v13->_cachedURLResources;
    v13->_cachedURLResources = v18;

    v20 = objc_opt_new();
    allCachedURLResources = v13->_allCachedURLResources;
    v13->_allCachedURLResources = v20;

    v22 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:517];
    cachedTintedResources = v13->_cachedTintedResources;
    v13->_cachedTintedResources = v22;

    v24 = objc_opt_new();
    allCachedTintedResources = v13->_allCachedTintedResources;
    v13->_allCachedTintedResources = v24;

    v26 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:517];
    cachedFilteredResources = v13->_cachedFilteredResources;
    v13->_cachedFilteredResources = v26;

    v28 = objc_opt_new();
    allCachedFilteredResources = v13->_allCachedFilteredResources;
    v13->_allCachedFilteredResources = v28;

    v30 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:517];
    cachedSeriesStackResources = v13->_cachedSeriesStackResources;
    v13->_cachedSeriesStackResources = v30;

    v32 = objc_opt_new();
    allCachedSeriesStackResources = v13->_allCachedSeriesStackResources;
    v13->_allCachedSeriesStackResources = v32;

    v34 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:517];
    cachedMediaBackdropResources = v13->_cachedMediaBackdropResources;
    v13->_cachedMediaBackdropResources = v34;

    v36 = objc_opt_new();
    allCachedMediaBackdropResources = v13->_allCachedMediaBackdropResources;
    v13->_allCachedMediaBackdropResources = v36;

    v38 = [NSHashTable hashTableWithOptions:517];
    deferLoadResources = v13->_deferLoadResources;
    v13->_deferLoadResources = v38;

    v40 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:5];
    cachedSymbolImages = v13->_cachedSymbolImages;
    v13->_cachedSymbolImages = v40;
  }

  return v13;
}

- (void)debugDumpFilteredResources:(BOOL)resources
{
  cacheQueue = self->_cacheQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_A7434;
  v4[3] = &unk_25EF60;
  v4[4] = self;
  resourcesCopy = resources;
  dispatch_sync(cacheQueue, v4);
}

- (BOOL)shouldDeferLoadForResource:(id)resource
{
  resourceCopy = resource;
  os_unfair_lock_lock(&self->_deferLoadLock);
  deferLoadCount = self->_deferLoadCount;
  if (deferLoadCount)
  {
    deferLoadResources = self->_deferLoadResources;
    ++self->_deferStats;
    [(NSHashTable *)deferLoadResources addObject:resourceCopy];
  }

  os_unfair_lock_unlock(&self->_deferLoadLock);

  return deferLoadCount != 0;
}

- (void)deferLoadsBegin
{
  os_unfair_lock_lock(&self->_deferLoadLock);
  deferLoadCount = self->_deferLoadCount;
  self->_deferLoadCount = deferLoadCount + 1;
  if (!deferLoadCount)
  {
    self->_deferStats = 0;
    v4 = TUIImageCacheLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Pausing Loads", v5, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_deferLoadLock);
}

- (void)deferLoadsEnd
{
  os_unfair_lock_lock(&self->_deferLoadLock);
  v3 = self->_deferLoadCount - 1;
  self->_deferLoadCount = v3;
  if (v3)
  {

    os_unfair_lock_unlock(&self->_deferLoadLock);
  }

  else
  {
    allObjects = [(NSHashTable *)self->_deferLoadResources allObjects];
    [(NSHashTable *)self->_deferLoadResources removeAllObjects];
    deferStats = self->_deferStats;
    os_unfair_lock_unlock(&self->_deferLoadLock);
    if (allObjects)
    {
      v6 = TUIImageCacheLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [NSNumber numberWithUnsignedInteger:deferStats];
        v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allObjects count]);
        *buf = 138412546;
        v21 = v7;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Resuming Loads: deferred-loads / post-loads : %@ / %@", buf, 0x16u);
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = allObjects;
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            loadImage = [*(*(&v15 + 1) + 8 * i) loadImage];
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }
}

- (id)_largestResourceWithContentAndNaturalSize:(CGSize)size contentsScale:(double)scale cachedResources:(id)resources
{
  height = size.height;
  width = size.width;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  resourcesCopy = resources;
  v9 = [resourcesCopy countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = width * scale;
    v13 = height * scale;
    v14 = *v34;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(resourcesCopy);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        [v17 naturalSize];
        v19 = v18;
        v21 = v20;
        [v17 contentsScale];
        v23 = v22;
        v24 = [v17 imageContentWithOptions:1];
        image = [v24 image];

        if (image)
        {
          v26 = v19 * v23;
          v27 = v21 * v23;
          if (v19 * v23 >= v12 && v27 >= v13)
          {
            v31 = v17;

            v11 = v31;
            goto LABEL_18;
          }

          v29 = v26 * v27;
          if (v26 * v27 > v15)
          {
            v30 = v17;

            v15 = v29;
            v11 = v30;
          }
        }
      }

      v10 = [resourcesCopy countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (id)imageResourceForTemplatedURL:(id)l baseURL:(id)rL naturalSize:(CGSize)size contentsScale:(double)scale
{
  height = size.height;
  width = size.width;
  lCopy = l;
  rLCopy = rL;
  scale = [_TUICachedURLImageResource sizedURLFromTemplatedURL:lCopy baseURL:rLCopy naturalSize:width contentsScale:height, scale];
  v14 = [[TUIImageResourceCacheKey alloc] initWithURL:scale];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_A2610;
  v34 = sub_A2620;
  v35 = 0;
  cacheQueue = self->_cacheQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_A7CCC;
  v21[3] = &unk_260B98;
  v25 = rLCopy;
  v26 = &v30;
  v22 = v14;
  selfCopy = self;
  v24 = lCopy;
  v27 = width;
  v28 = height;
  scaleCopy = scale;
  v16 = rLCopy;
  v17 = lCopy;
  v18 = v14;
  dispatch_sync(cacheQueue, v21);
  v19 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v19;
}

- (id)imageResourceForURL:(id)l contentsScale:(double)scale
{
  lCopy = l;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_A2610;
  v23 = sub_A2620;
  v24 = 0;
  v7 = [_TUICachedURLImageResource sizedKeyFromURL:lCopy];
  cacheQueue = self->_cacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A803C;
  block[3] = &unk_260BC0;
  v14 = v7;
  selfCopy = self;
  v16 = lCopy;
  v17 = &v19;
  scaleCopy = scale;
  v9 = lCopy;
  v10 = v7;
  dispatch_sync(cacheQueue, block);
  v11 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v11;
}

- (id)imageResource:(id)resource tintedWithColor:(id)color
{
  resourceCopy = resource;
  colorCopy = color;
  v8 = [_TUICachedTintedImageResource sizedKeyForColor:colorCopy imageResource:resourceCopy];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_A2610;
  v24 = sub_A2620;
  v25 = 0;
  cacheQueue = self->_cacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A82F4;
  block[3] = &unk_260BE8;
  v18 = resourceCopy;
  v19 = &v20;
  block[4] = self;
  v16 = v8;
  v17 = colorCopy;
  v10 = resourceCopy;
  v11 = colorCopy;
  v12 = v8;
  dispatch_sync(cacheQueue, block);
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (id)imageResource:(id)resource naturalSize:(CGSize)size contentsScale:(double)scale withFilter:(id)filter filterOptions:(id)options
{
  height = size.height;
  width = size.width;
  resourceCopy = resource;
  filterCopy = filter;
  optionsCopy = options;
  v16 = [(TUIFilterRegistry *)self->_filters imageFilterWithIdentifier:filterCopy];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_A2610;
  v35 = sub_A2620;
  v36 = 0;
  if (v16)
  {
    scale = [_TUICachedFilterImageResource sizedKeyForFilter:v16 naturalSize:resourceCopy contentsScale:width imageResource:height, scale];
    cacheQueue = self->_cacheQueue;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_A85FC;
    v23[3] = &unk_260B98;
    v27 = &v31;
    v23[4] = self;
    v24 = scale;
    v25 = v16;
    scaleCopy = scale;
    v26 = resourceCopy;
    v29 = width;
    v30 = height;
    v19 = scale;
    dispatch_sync(cacheQueue, v23);

    v20 = v32[5];
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    v20 = resourceCopy;
  }

  v21 = v20;
  _Block_object_dispose(&v31, 8);

  return v21;
}

- (id)imageResourceForImageResources:(id)resources filters:(id)filters imageSetFilter:(id)filter naturalSize:(CGSize)size contentsScale:(double)scale
{
  height = size.height;
  width = size.width;
  resourcesCopy = resources;
  filtersCopy = filters;
  filterCopy = filter;
  v16 = [(TUIFilterRegistry *)self->_filters imageSetFilterWithIdentifier:filterCopy];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_A2610;
  v36 = sub_A2620;
  v37 = 0;
  if (v16)
  {
    scale = [_TUICachedSeriesStackImageResource sizedKeyForNaturalSize:resourcesCopy contentsScale:width imageResources:height, scale];
    cacheQueue = self->_cacheQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A8914;
    block[3] = &unk_260C10;
    v28 = &v32;
    block[4] = self;
    v24 = scale;
    scaleCopy = scale;
    v25 = resourcesCopy;
    v26 = filtersCopy;
    v30 = width;
    v31 = height;
    v27 = v16;
    v19 = scale;
    dispatch_sync(cacheQueue, block);

    v20 = v33[5];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  _Block_object_dispose(&v32, 8);

  return v21;
}

- (id)symbolImageWithName:(id)name compatibleWithFontSize:(double)size weight:(int64_t)weight scale:(int64_t)scale renderingMode:(unint64_t)mode colors:(id)colors style:(unint64_t)style contentsScale:(double)self0 layoutDirection:(unint64_t)self1 insets:(UIEdgeInsets)self2 baseline:(BOOL)self3
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  nameCopy = name;
  colorsCopy = colors;
  if ([nameCopy length])
  {
    v27 = [UIImageSymbolConfiguration tui_configurationWithPointSize:weight weight:scale scale:mode renderingMode:colorsCopy colors:size];
    v28 = [[_TUISymbolImageKey alloc] initWithName:nameCopy configuration:v27 style:style contentsScale:direction layoutDirection:mode renderingMode:contentsScale];
    v29 = v28;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = sub_A2610;
    v59 = sub_A2620;
    v60 = 0;
    if (!mode || (v30 = self->_cacheQueue, block[0] = _NSConcreteStackBlock, block[1] = 3221225472, block[2] = sub_A8F6C, block[3] = &unk_25ED40, v54 = &v55, block[4] = self, v53 = v28, dispatch_sync(v30, block), v53, !v56[5]))
    {
      v31 = [(TUIImageResourceCache *)self _symbolImageForKey:v29];
      v32 = v56[5];
      v56[5] = v31;

      v33 = v56[5];
      if (v33)
      {
        if ([v33 isMulticolor])
        {
          cacheQueue = self->_cacheQueue;
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_A8FBC;
          v49[3] = &unk_25DC78;
          v49[4] = self;
          v50 = v29;
          v51 = &v55;
          dispatch_sync(cacheQueue, v49);
        }
      }
    }

    v35 = v56[5];
    if (v35)
    {
      v48 = bottom;
      if (direction == 2)
      {
        v36 = right;
      }

      else
      {
        v36 = left;
      }

      if (direction != 2)
      {
        left = right;
      }

      [v35 alignmentInsets];
      [v56[5] contentInsets];
      v38 = v37;
      [v56[5] size];
      v40 = v39;
      [v56[5] baselineOffsetFromBottom];
      v42 = v40 - v41 - (v38 - top);
      v43 = [v56[5] symbolImageWithContentInsets:top alignmentInsets:{v36, v48, left, 0.0, 0.0, 0.0, 0.0}];
      v44 = v43;
      if (baseline)
      {
        [v43 size];
        [v44 symbolImageWithBaselineOffsetFromBottom:v45 - v42];
      }

      else
      {
        [v43 symbolImageWithoutBaseline];
      }
      v46 = ;
    }

    else
    {
      v46 = 0;
    }

    _Block_object_dispose(&v55, 8);
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

- (id)_symbolImageForKey:(id)key
{
  keyCopy = key;
  name = [keyCopy name];
  style = [keyCopy style];
  [keyCopy contentsScale];
  v8 = v7;
  layoutDirection = [keyCopy layoutDirection];
  configuration = [keyCopy configuration];
  renderingMode = [keyCopy renderingMode];

  v12 = style == &dword_0 + 1;
  if (style == &dword_0 + 2)
  {
    v12 = 2;
  }

  if (layoutDirection == &dword_0 + 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_A93BC;
  v53[3] = &unk_260C30;
  v53[4] = v12;
  if (layoutDirection == &dword_0 + 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  *&v53[5] = v8;
  v53[6] = v14;
  v15 = [UITraitCollection traitCollectionWithTraits:v53];
  v16 = [UIImage systemImageNamed:name compatibleWithTraitCollection:v15];
  v17 = [v16 imageWithConfiguration:configuration];

  if (!v17)
  {
    v18 = [UIImage imageNamed:name inBundle:self->_customImageBundle withConfiguration:configuration];
    if (!v18)
    {
      v18 = [UIImage _systemImageNamed:name withConfiguration:configuration];
    }

    v17 = v18;
  }

  if ([v17 tui_isMulticolorSymbolWithSymbolRenderingMode:renderingMode])
  {
    [v17 size];
    v21 = TUISizeRoundedForScale(v19, v20, v8);
    v23 = v22;
    [v17 contentInsets];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = v21 - (v26 + v30);
    v33 = v23 - (v24 + v28);
    v34 = [UIGraphicsImageRendererFormat formatForTraitCollection:v15];
    v35 = [[UIGraphicsImageRenderer alloc] initWithSize:v34 format:{v32, v33}];
    v42 = _NSConcreteStackBlock;
    v43 = 3221225472;
    v44 = sub_A9424;
    v45 = &unk_260C58;
    v47 = v25;
    v48 = v27;
    v49 = v29;
    v50 = v31;
    v51 = v32;
    v52 = v33;
    v36 = v17;
    v46 = v36;
    v37 = [v35 imageWithActions:&v42];

    if ([v36 hasBaseline])
    {
      [v36 baselineOffsetFromBottom];
      v38 = [v37 imageWithBaselineOffsetFromBottom:?];

      v37 = v38;
    }

    [v36 alignmentRectInsets];
    v39 = [v37 imageWithAlignmentRectInsets:?];

    v40 = [[_TUISymbolImage alloc] initWithImage:v39 contentInsets:1 isMulticolor:v25, v27, v29, v31];
  }

  else
  {
    v40 = [[_TUISymbolImage alloc] initWithImage:v17];
  }

  return v40;
}

- (id)mediaBackdropImageResourceFrom:(id)from naturalSize:(CGSize)size contentScale:(double)scale
{
  height = size.height;
  width = size.width;
  fromCopy = from;
  scale = [_TUICachedMediaBackdropImageResource sizedKeyForNaturalSize:fromCopy contentsScale:width imageResource:height, scale];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_A2610;
  v27 = sub_A2620;
  v28 = 0;
  cacheQueue = self->_cacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A9624;
  block[3] = &unk_260C80;
  block[4] = self;
  v17 = scale;
  v18 = fromCopy;
  v19 = &v23;
  scaleCopy = scale;
  v21 = width;
  v22 = height;
  v12 = fromCopy;
  v13 = scale;
  dispatch_sync(cacheQueue, block);
  v14 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v14;
}

- (void)refreshAllResources
{
  cacheQueue = self->_cacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A97A8;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_sync(cacheQueue, block);
}

@end