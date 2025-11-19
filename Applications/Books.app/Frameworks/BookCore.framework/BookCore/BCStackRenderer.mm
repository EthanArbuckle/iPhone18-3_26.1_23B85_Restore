@interface BCStackRenderer
- (BCStackRenderer)init;
- (id)_bookFilter:(id)a3;
- (id)_seriesFilter:(id)a3;
- (void)_applySeriesFilter:(id)a3 toImages:(id)a4 filters:(id)a5 size:(CGSize)a6 completion:(id)a7;
- (void)_renderStackFromSource:(id)a3 images:(id)a4 forRequest:(id)a5 onQueue:(id)a6 withCompletion:(id)a7;
- (void)renderStackFromSource:(id)a3 forRequest:(id)a4 onQueue:(id)a5 completion:(id)a6;
@end

@implementation BCStackRenderer

- (BCStackRenderer)init
{
  v7.receiver = self;
  v7.super_class = BCStackRenderer;
  v2 = [(BCStackRenderer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableArray array];
    renderOperations = v3->_renderOperations;
    v3->_renderOperations = v4;
  }

  return v3;
}

- (id)_bookFilter:(id)a3
{
  v3 = a3;
  v4 = +[BCCoverEffects sharedInstance];
  v5 = [v4 bookCoverEffectFilters];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v3];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_seriesFilter:(id)a3
{
  v3 = a3;
  v4 = +[BCCoverEffects sharedInstance];
  v5 = [v4 seriesCoverEffectFilters];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v3];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)renderStackFromSource:(id)a3 forRequest:(id)a4 onQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[NSMutableArray array];
  v15 = [(BCStackRenderer *)self seriesDecomposer];
  v16 = [v10 identifier];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_14424C;
  v22[3] = &unk_2CE128;
  v23 = v11;
  v24 = v12;
  v25 = v10;
  v26 = self;
  v27 = v14;
  v28 = v13;
  v17 = v14;
  v18 = v10;
  v19 = v12;
  v20 = v13;
  v21 = v11;
  [v15 assetIDsAndOptionsForBooksInSeries:v16 completion:v22];
}

- (void)_renderStackFromSource:(id)a3 images:(id)a4 forRequest:(id)a5 onQueue:(id)a6 withCompletion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v54 = objc_opt_new();
  v53 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v16 = v12;
  v58 = [v16 countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v58)
  {
    v49 = v15;
    v50 = v14;
    v51 = v11;
    v52 = v13;
    v17 = 0;
    v18 = 0;
    v56 = *v66;
    v19 = &stru_B8 + 24;
    do
    {
      for (i = 0; i != v58; i = i + 1)
      {
        if (*v66 != v56)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v65 + 1) + 8 * i);
        v22 = ([v21 processingOptions] >> 7) & 1;
        v23 = [v21 processingOptions];
        v24 = v23;
        v25 = (v23 >> 6) & 1;
        if (([v21 processingOptions] & 8) != 0)
        {
          v26 = 2;
        }

        else
        {
          v26 = 1;
        }

        v27 = [BCUCoverEffects effectIdentifierWithRTL:v22 style:v26 content:1 nightMode:v25];
        v28 = [(BCStackRenderer *)self _bookFilter:v27];
        v29 = v28;
        if (v21)
        {
          v30 = v28 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          [v21 image];
          v55 = v17;
          v31 = v19;
          v33 = v32 = v16;
          v34 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [v33 CGImage]);
          [v54 addObject:v34];

          v16 = v32;
          v19 = v31;
          v17 = v55;
          [v53 addObject:v29];
        }

        if ([v21 quality] < v19)
        {
          v19 = [v21 quality];
        }

        v18 |= [v21 isGeneric];
        v17 |= v24 & 0x40;
      }

      v58 = [v16 countByEnumeratingWithState:&v65 objects:v69 count:16];
    }

    while (v58);

    if (v18)
    {
      v35 = 2;
    }

    else
    {
      v35 = v19;
    }

    v11 = v51;
    v13 = v52;
    v15 = v49;
    v14 = v50;
  }

  else
  {

    LOWORD(v17) = 0;
    v35 = 208;
  }

  v36 = mainScreenScaleFactor();
  [v11 imageSize];
  v38 = v37;
  v40 = v39;
  v41 = BCUCoverEffectsIdentifierSeriesStackDiagonal;
  v42 = v16;
  if (([v13 processingOptions] & 0x1000) != 0)
  {
    v43 = [v13 processingOptions];
    v44 = &BCUCoverEffectsIdentifierSeriesStackHorizontal;
    if ((v43 & 0x80) != 0)
    {
      v44 = &BCUCoverEffectsIdentifierSeriesStackHorizontalRTL;
    }

    v45 = *v44;

    v41 = v45;
  }

  v59[1] = 3221225472;
  v59[0] = _NSConcreteStackBlock;
  v59[2] = sub_145280;
  v59[3] = &unk_2CE178;
  v60 = v14;
  v61 = v11;
  v63 = v17;
  v64 = v35;
  v62 = v15;
  v46 = v15;
  v47 = v11;
  v48 = v14;
  [(BCStackRenderer *)self _applySeriesFilter:v41 toImages:v54 filters:v53 size:v59 completion:v38 / v36, v40 / v36];
}

- (void)_applySeriesFilter:(id)a3 toImages:(id)a4 filters:(id)a5 size:(CGSize)a6 completion:(id)a7
{
  height = a6.height;
  width = a6.width;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(BCStackRenderer *)self _seriesFilter:a3];
  v17 = [v13 count];
  v18 = [v14 count];
  if (v16 && v17 && v18 == v17)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_145748;
    v29[3] = &unk_2CE1A0;
    v30 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
    v19 = v30;
    [v13 enumerateObjectsUsingBlock:v29];
    v20 = mainScreenScaleFactor();
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_145794;
    v27[3] = &unk_2CE1C8;
    v27[4] = self;
    v28 = v15;
    v21 = [v16 newOperationWithImages:v19 filters:v14 size:1 contentsScale:v27 waitForCPUSynchronization:width completion:{height, v20}];
    [v21 start];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1459AC;
    v25[3] = &unk_2C7BE8;
    v25[4] = self;
    v26 = v21;
    v22 = v21;
    os_unfair_lock_lock(&self->_accessLock);
    sub_1459AC(v25);
    os_unfair_lock_unlock(&self->_accessLock);
  }

  else
  {
    v23 = objc_retainBlock(v15);
    v24 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0, 0);
    }
  }
}

@end