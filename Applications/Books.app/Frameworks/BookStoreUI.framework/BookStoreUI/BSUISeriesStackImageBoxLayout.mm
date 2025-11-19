@interface BSUISeriesStackImageBoxLayout
- (id)_newImageResourcesWithContext:(id)a3;
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
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

  v7 = [v6 filter];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [v6 resourceOptions];
    v9 = [v10 objectForKeyedSubscript:@"filter"];
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

    v13 = [v6 coverURLStrings];
    v14 = [v13 count];

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
      v23 = [v6 resourceInstance];
      v24 = [v22 metadataForIdentifier:v23];

      if (v24)
      {
        v25 = [v24 intrinsicAspectRatio];
        [v25 floatValue];
        if (v26 <= 0.0)
        {
          [v6 maxAspectRatio];
          v29 = v34;
        }

        else
        {
          v27 = [v24 intrinsicAspectRatio];
          [v27 floatValue];
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

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  v5 = a4;
  v31 = [(BSUISeriesStackImageBoxLayout *)self _newImageResourcesWithContext:v5];
  objc_opt_class();
  v6 = [(BSUISeriesStackImageBoxLayout *)self box];
  v7 = TUIDynamicCast();

  [v7 cornerRadius];
  v9 = v8;
  v10 = [v7 fallbackColor];
  v11 = [v7 contentsGravity];
  [v7 opacity];
  v13 = v12;
  v14 = [v7 crossfadesContents];
  v15 = [BSUISeriesStackImageLayerConfig alloc];
  [v5 contentsScale];
  v17 = v16;
  v18 = [v7 continuousCorners];
  v19 = [v7 shouldRasterize];
  v20 = [v7 blendMode];
  BYTE1(v30) = v19;
  LOBYTE(v30) = v18;
  v21 = [(BSUISeriesStackImageLayerConfig *)v15 initWithContentsScale:v31 resource:2 load:v10 cornerRadius:v11 fallbackColor:0 contentsGravity:v14 hflip:v17 crossfadesContents:v9 opacity:v13 continuousCorners:v30 shouldRasterize:v20 blendMode:?];

  v22 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v21 erasableInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [(BSUISeriesStackImageBoxLayout *)self renderModelSizeWithContext:v5];
  v24 = v23;
  v26 = v25;

  [v22 setSize:{v24, v26}];
  v27 = [v7 identifier];
  [v22 setIdentifier:v27];

  v28 = v22;
  return v28;
}

- (id)_newImageResourcesWithContext:(id)a3
{
  v5 = a3;
  [(BSUISeriesStackImageBoxLayout *)self renderModelSizeWithContext:v5];
  v7 = v6;
  v9 = v8;
  [v5 contentsScale];
  v11 = v10;
  v12 = [(BSUISeriesStackImageBoxLayout *)self computedLayoutDirection];
  v13 = [(BSUISeriesStackImageBoxLayout *)self controller];
  v14 = [v13 manager];
  v15 = [v14 imageResourceCache];

  objc_opt_class();
  v16 = [(BSUISeriesStackImageBoxLayout *)self box];
  v17 = TUIDynamicCast();

  v18 = [v17 coverURLStrings];

  if (v18)
  {
    v56 = v12;
    v57 = v5;
    v19 = [v17 coverURLStrings];
    v20 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v19 count]);

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v21 = [v17 coverURLStrings];
    v22 = [v21 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v22)
    {
      v3 = v22;
      v23 = *v60;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v60 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v59 + 1) + 8 * i);
          v26 = [v17 baseURL];
          v27 = [v15 imageResourceForTemplatedURL:v25 baseURL:v26 naturalSize:v9 contentsScale:{v9, v11}];
          [v20 addObject:v27];
        }

        v3 = [v21 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v3);
    }

    v28 = [v17 coverURLStrings];
    if ([v28 count] == &dword_0 + 1)
    {
      v3 = [v17 coverFilters];
      v29 = [v3 count];

      v5 = v57;
      if (v29 == &dword_0 + 1)
      {
        v30 = [v17 coverURLStrings];
        v31 = [v30 objectAtIndexedSubscript:0];
        v32 = [v17 baseURL];
        v33 = [v15 imageResourceForTemplatedURL:v31 baseURL:v32 naturalSize:v9 contentsScale:{v9, v11}];

        v34 = [v17 coverFilters];
        v35 = [v34 objectAtIndexedSubscript:0];
        v36 = [v15 imageResource:v33 naturalSize:v35 contentsScale:&__NSDictionary0__struct withFilter:v9 filterOptions:{v9, v11}];

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {

      v5 = v57;
    }

    if (v56 == &dword_0 + 2 && ([v17 filter], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", BCUCoverEffectsIdentifierSeriesStackHorizontal)))
    {
      v34 = BCUCoverEffectsIdentifierSeriesStackHorizontalRTL;
    }

    else
    {
      v34 = [v17 filter];
      if (v56 != &dword_0 + 2)
      {
LABEL_23:
        v35 = [v17 coverFilters];
        v36 = [v15 imageResourceForImageResources:v20 filters:v35 imageSetFilter:v34 naturalSize:v7 contentsScale:{v9, v11}];
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  v37 = [(BSUISeriesStackImageBoxLayout *)self box];
  v38 = [v37 resourceKind];

  if (v38)
  {
    objc_opt_class();
    v39 = [(BSUISeriesStackImageBoxLayout *)self box];
    v40 = [v39 resourceOptions];
    v41 = BUDynamicCast();

    v58 = v5;
    if (v12 == &dword_0 + 2)
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

    v46 = [(BSUISeriesStackImageBoxLayout *)self controller];
    v47 = [(BSUISeriesStackImageBoxLayout *)self box];
    v48 = [v47 resourceKind];
    v49 = [(BSUISeriesStackImageBoxLayout *)self box];
    v50 = [v49 resourceInstance];
    v36 = [v46 imageResourceForKind:v48 naturalSize:v50 contentsScale:v41 instance:v7 options:{v9, v11}];

    v5 = v58;
  }

  else
  {
    v36 = 0;
  }

LABEL_25:
  v51 = [(BSUISeriesStackImageBoxLayout *)self box];
  v52 = [v51 maskColor];

  if (v52)
  {
    v53 = [v17 maskColor];
    v54 = [v15 imageResource:v36 tintedWithColor:v53];

    v36 = v54;
  }

  return v36;
}

@end