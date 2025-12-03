@interface BKBookProgressController
+ (void)preWarmWithAnnotationProvider:(id)provider;
+ (void)progressStringForLibraryAsset:(id)asset completion:(id)completion;
- (AEAnnotationProvider)annotationProvider;
- (double)_progressForAssetID:(id)d moc:(id)moc;
- (void)_progressStringForLibraryAsset:(id)asset annotationMOC:(id)c completion:(id)completion;
@end

@implementation BKBookProgressController

+ (void)preWarmWithAnnotationProvider:(id)provider
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9BD4;
  block[3] = &unk_100A033C8;
  providerCopy = provider;
  v3 = qword_100AF75A8;
  v4 = providerCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_100AF75A8, block);
  }
}

- (double)_progressForAssetID:(id)d moc:(id)moc
{
  mocCopy = moc;
  v6 = [AEAnnotation predicateForGlobalAnnotationWithAssetID:d];
  v7 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:mocCopy];
  v8 = objc_alloc_init(NSFetchRequest);
  [v8 setEntity:v7];
  v9 = kAEAnnotationReadingProgressHighWaterMark;
  v10 = kAEAnnotationReadingProgress;
  v26[0] = kAEAnnotationReadingProgressHighWaterMark;
  v26[1] = kAEAnnotationReadingProgress;
  v11 = [NSArray arrayWithObjects:v26 count:2];
  [v8 setPropertiesToFetch:v11];

  [v8 setResultType:2];
  [v8 setPredicate:v6];
  v25 = 0;
  v12 = [mocCopy executeFetchRequest:v8 error:&v25];

  v13 = v25;
  v14 = v13;
  if (v13)
  {
    [v13 logRecursively];
  }

  v15 = 0.0;
  if ([v12 count] == 1)
  {
    objc_opt_class();
    v16 = [v12 objectAtIndex:0];
    v17 = BUDynamicCast();

    objc_opt_class();
    v18 = [v17 objectForKeyedSubscript:v10];
    v19 = BUDynamicCast();

    if (v19 || (objc_opt_class(), [v17 objectForKeyedSubscript:v9], v20 = objc_claimAutoreleasedReturnValue(), BUDynamicCast(), v19 = objc_claimAutoreleasedReturnValue(), v20, v19))
    {
      [v19 floatValue];
      v22 = fmin(v21, 1.0);
      if (v22 < 0.0)
      {
        v22 = 0.0;
      }

      v23 = v22;
      v15 = v23;
    }

    else
    {
      v15 = 1.79769313e308;
    }
  }

  return v15;
}

- (void)_progressStringForLibraryAsset:(id)asset annotationMOC:(id)c completion:(id)completion
{
  assetCopy = asset;
  cCopy = c;
  completionCopy = completion;
  isNew = [assetCopy isNew];
  if ([assetCopy isSample])
  {
    v12 = objc_retainBlock(completionCopy);
    if (v12)
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"Sample" value:&stru_100A30A68 table:0];
      v12[2](v12, v14);
    }

    goto LABEL_19;
  }

  if ([assetCopy isAudiobook])
  {
    isCloud = [assetCopy isCloud];
    v16 = +[BKMediaLibraryCache sharedCache];
    assetID = [assetCopy assetID];
    v35 = assetID;
    v18 = [NSArray arrayWithObjects:&v35 count:1];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000EA2B4;
    v32[3] = &unk_100A07018;
    v34 = isNew;
    v33 = completionCopy;
    [v16 fetchAssetsWithIDs:v18 type:isCloud completion:v32];

    goto LABEL_19;
  }

  v19 = objc_opt_new();
  [v19 setNumberStyle:3];
  [v19 setMaximumFractionDigits:0];
  assetID2 = [assetCopy assetID];
  [(BKBookProgressController *)self _progressForAssetID:assetID2 moc:cCopy];
  v22 = v21;

  if (isNew)
  {
    v23 = +[NSBundle mainBundle];
    v24 = v23;
    v25 = @"New";
  }

  else
  {
    v26 = &stru_100A30A68;
    if (v22 < 0.0 || v22 > 1.0)
    {
      goto LABEL_16;
    }

    if (v22 >= 0.01 && fabs(v22 + -0.01) >= 0.005)
    {
      v23 = +[NSBundle mainBundle];
      v24 = v23;
      if (fabs(v22 + -1.0) >= 0.005)
      {
        v29 = [v23 localizedStringForKey:@"%@ read" value:&stru_100A30A68 table:0];

        v30 = [NSNumber numberWithDouble:v22];
        v31 = [v19 stringFromNumber:v30];
        v26 = [NSString stringWithFormat:v29, v31];

        v24 = v29;
        goto LABEL_15;
      }

      v25 = @"Finished";
    }

    else
    {
      v23 = +[NSBundle mainBundle];
      v24 = v23;
      v25 = @"Just started";
    }
  }

  v26 = [v23 localizedStringForKey:v25 value:&stru_100A30A68 table:0];
LABEL_15:

LABEL_16:
  v27 = objc_retainBlock(completionCopy);
  v28 = v27;
  if (v27)
  {
    (*(v27 + 2))(v27, v26);
  }

LABEL_19:
}

+ (void)progressStringForLibraryAsset:(id)asset completion:(id)completion
{
  v5 = qword_100AF75A0;
  completionCopy = completion;
  assetCopy = asset;
  annotationProvider = [v5 annotationProvider];
  newManagedObjectContext = [annotationProvider newManagedObjectContext];

  [qword_100AF75A0 _progressStringForLibraryAsset:assetCopy annotationMOC:newManagedObjectContext completion:completionCopy];
}

- (AEAnnotationProvider)annotationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationProvider);

  return WeakRetained;
}

@end