@interface BSUISeriesStackImageBoxLayout
- (id)_newImageResourcesWithContext:(id)context;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)computeLayout;
@end

@implementation BSUISeriesStackImageBoxLayout

- (void)computeLayout
{
  [(BSUISeriesStackImageBoxLayout *)self computeWidth];
  v4 = v3;
  objc_opt_class();
  v5 = [(BSUISeriesStackImageBoxLayout *)self box];
  v6 = TUIDynamicCast();

  filter = [v6 filter];
  v8 = filter;
  if (filter)
  {
    v9 = filter;
  }

  else
  {
    resourceOptions = [v6 resourceOptions];
    v9 = [resourceOptions objectForKeyedSubscript:@"filter"];
  }

  if ([v9 isEqualToString:BCUCoverEffectsIdentifierSeriesStackHorizontal])
  {
    if (v4 <= 50.0)
    {
      v11 = 26.0;
    }

    else
    {
      v11 = 52.0;
    }

    if (v4 <= 50.0)
    {
      v12 = 50.0;
    }

    else
    {
      v12 = 97.0;
    }

    coverURLStrings = [v6 coverURLStrings];
    v14 = [coverURLStrings count];

    if (v14 == &dword_0 + 1)
    {
      v15 = v11;
    }

    else
    {
      v15 = v12;
    }

    width = fmax(v15, v4);
    v17 = width;
    if (v14 != &dword_0 + 1)
    {
      v17 = v11 / v12 * width;
    }

    v18 = COERCE_FLOAT([v6 intrinsicHeight]);
    LODWORD(v19) = [v6 intrinsicWidth];
    if (v18 <= 0.0 || (*&v20 = v19, v19 <= 0.0))
    {
      [v6 maxAspectRatio];
    }

    else
    {
      v21 = v18 / v19;
    }

    v30 = v17 * v21;
    v31 = 40.0;
    if (v4 > 50.0)
    {
      v31 = 81.0;
    }

    height = fmin(v31, v30);
  }

  else
  {
    if ([v9 isEqualToString:BCUCoverEffectsIdentifierSeriesStackDiagonal])
    {
      width = fmax(v4, 69.0);
      v22 = +[BCCacheManager defaultCacheManager];
      resourceInstance = [v6 resourceInstance];
      v24 = [v22 metadataForIdentifier:resourceInstance];

      if (v24)
      {
        intrinsicAspectRatio = [v24 intrinsicAspectRatio];
        [intrinsicAspectRatio floatValue];
        if (v26 <= 0.0)
        {
          [v6 maxAspectRatio];
          v29 = v34;
        }

        else
        {
          intrinsicAspectRatio2 = [v24 intrinsicAspectRatio];
          [intrinsicAspectRatio2 floatValue];
          v29 = v28;
        }
      }

      else
      {
        [v6 maxAspectRatio];
        v29 = v33;
      }

      height = fmax(width * v29, 1.0);
    }

    else
    {
      v24 = BSUITemplateLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_2BE0F0(v9, v24);
      }

      width = CGSizeZero.width;
      height = CGSizeZero.height;
    }
  }

  [(BSUISeriesStackImageBoxLayout *)self setComputedNaturalSize:width, height];
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  v31 = [(BSUISeriesStackImageBoxLayout *)self _newImageResourcesWithContext:contextCopy];
  objc_opt_class();
  v6 = [(BSUISeriesStackImageBoxLayout *)self box];
  v7 = TUIDynamicCast();

  [v7 cornerRadius];
  v9 = v8;
  fallbackColor = [v7 fallbackColor];
  contentsGravity = [v7 contentsGravity];
  [v7 opacity];
  v13 = v12;
  crossfadesContents = [v7 crossfadesContents];
  v15 = [BSUISeriesStackImageLayerConfig alloc];
  [contextCopy contentsScale];
  v17 = v16;
  continuousCorners = [v7 continuousCorners];
  shouldRasterize = [v7 shouldRasterize];
  blendMode = [v7 blendMode];
  BYTE1(v30) = shouldRasterize;
  LOBYTE(v30) = continuousCorners;
  v21 = [(BSUISeriesStackImageLayerConfig *)v15 initWithContentsScale:v31 resource:2 load:fallbackColor cornerRadius:contentsGravity fallbackColor:0 contentsGravity:crossfadesContents hflip:v17 crossfadesContents:v9 opacity:v13 continuousCorners:v30 shouldRasterize:blendMode blendMode:?];

  v22 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v21 erasableInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [(BSUISeriesStackImageBoxLayout *)self renderModelSizeWithContext:contextCopy];
  v24 = v23;
  v26 = v25;

  [v22 setSize:{v24, v26}];
  identifier = [v7 identifier];
  [v22 setIdentifier:identifier];

  v28 = v22;
  return v28;
}

- (id)_newImageResourcesWithContext:(id)context
{
  contextCopy = context;
  [(BSUISeriesStackImageBoxLayout *)self renderModelSizeWithContext:contextCopy];
  v7 = v6;
  v9 = v8;
  [contextCopy contentsScale];
  v11 = v10;
  computedLayoutDirection = [(BSUISeriesStackImageBoxLayout *)self computedLayoutDirection];
  controller = [(BSUISeriesStackImageBoxLayout *)self controller];
  manager = [controller manager];
  imageResourceCache = [manager imageResourceCache];

  objc_opt_class();
  v16 = [(BSUISeriesStackImageBoxLayout *)self box];
  v17 = TUIDynamicCast();

  coverURLStrings = [v17 coverURLStrings];

  if (coverURLStrings)
  {
    v56 = computedLayoutDirection;
    v57 = contextCopy;
    coverURLStrings2 = [v17 coverURLStrings];
    v20 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [coverURLStrings2 count]);

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    coverURLStrings3 = [v17 coverURLStrings];
    v22 = [coverURLStrings3 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v22)
    {
      coverFilters = v22;
      v23 = *v60;
      do
      {
        for (i = 0; i != coverFilters; i = i + 1)
        {
          if (*v60 != v23)
          {
            objc_enumerationMutation(coverURLStrings3);
          }

          v25 = *(*(&v59 + 1) + 8 * i);
          baseURL = [v17 baseURL];
          v27 = [imageResourceCache imageResourceForTemplatedURL:v25 baseURL:baseURL naturalSize:v9 contentsScale:{v9, v11}];
          [v20 addObject:v27];
        }

        coverFilters = [coverURLStrings3 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (coverFilters);
    }

    coverURLStrings4 = [v17 coverURLStrings];
    if ([coverURLStrings4 count] == &dword_0 + 1)
    {
      coverFilters = [v17 coverFilters];
      v29 = [coverFilters count];

      contextCopy = v57;
      if (v29 == &dword_0 + 1)
      {
        coverURLStrings5 = [v17 coverURLStrings];
        v31 = [coverURLStrings5 objectAtIndexedSubscript:0];
        baseURL2 = [v17 baseURL];
        v33 = [imageResourceCache imageResourceForTemplatedURL:v31 baseURL:baseURL2 naturalSize:v9 contentsScale:{v9, v11}];

        coverFilters2 = [v17 coverFilters];
        coverFilters3 = [coverFilters2 objectAtIndexedSubscript:0];
        v36 = [imageResourceCache imageResource:v33 naturalSize:coverFilters3 contentsScale:&__NSDictionary0__struct withFilter:v9 filterOptions:{v9, v11}];

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {

      contextCopy = v57;
    }

    if (v56 == &dword_0 + 2 && ([v17 filter], coverFilters = objc_claimAutoreleasedReturnValue(), objc_msgSend(coverFilters, "isEqualToString:", BCUCoverEffectsIdentifierSeriesStackHorizontal)))
    {
      coverFilters2 = BCUCoverEffectsIdentifierSeriesStackHorizontalRTL;
    }

    else
    {
      coverFilters2 = [v17 filter];
      if (v56 != &dword_0 + 2)
      {
LABEL_23:
        coverFilters3 = [v17 coverFilters];
        v36 = [imageResourceCache imageResourceForImageResources:v20 filters:coverFilters3 imageSetFilter:coverFilters2 naturalSize:v7 contentsScale:{v9, v11}];
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  v37 = [(BSUISeriesStackImageBoxLayout *)self box];
  resourceKind = [v37 resourceKind];

  if (resourceKind)
  {
    objc_opt_class();
    v39 = [(BSUISeriesStackImageBoxLayout *)self box];
    resourceOptions = [v39 resourceOptions];
    v41 = BUDynamicCast();

    v58 = contextCopy;
    if (computedLayoutDirection == &dword_0 + 2)
    {
      v42 = [v41 objectForKeyedSubscript:@"filter"];
      v43 = [v42 isEqualToString:BCUCoverEffectsIdentifierSeriesStackHorizontal];

      if (v43)
      {
        v44 = [v41 mutableCopy];
        [v44 setObject:BCUCoverEffectsIdentifierSeriesStackHorizontalRTL forKeyedSubscript:@"filter"];
        v45 = [v44 copy];

        v41 = v45;
      }
    }

    controller2 = [(BSUISeriesStackImageBoxLayout *)self controller];
    v47 = [(BSUISeriesStackImageBoxLayout *)self box];
    resourceKind2 = [v47 resourceKind];
    v49 = [(BSUISeriesStackImageBoxLayout *)self box];
    resourceInstance = [v49 resourceInstance];
    v36 = [controller2 imageResourceForKind:resourceKind2 naturalSize:resourceInstance contentsScale:v41 instance:v7 options:{v9, v11}];

    contextCopy = v58;
  }

  else
  {
    v36 = 0;
  }

LABEL_25:
  v51 = [(BSUISeriesStackImageBoxLayout *)self box];
  maskColor = [v51 maskColor];

  if (maskColor)
  {
    maskColor2 = [v17 maskColor];
    v54 = [imageResourceCache imageResource:v36 tintedWithColor:maskColor2];

    v36 = v54;
  }

  return v36;
}

@end