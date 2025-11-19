@interface BKBookProgressController
+ (void)preWarmWithAnnotationProvider:(id)a3;
+ (void)progressStringForLibraryAsset:(id)a3 completion:(id)a4;
- (AEAnnotationProvider)annotationProvider;
- (double)_progressForAssetID:(id)a3 moc:(id)a4;
- (void)_progressStringForLibraryAsset:(id)a3 annotationMOC:(id)a4 completion:(id)a5;
@end

@implementation BKBookProgressController

+ (void)preWarmWithAnnotationProvider:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9BD4;
  block[3] = &unk_100A033C8;
  v6 = a3;
  v3 = qword_100AF75A8;
  v4 = v6;
  if (v3 != -1)
  {
    dispatch_once(&qword_100AF75A8, block);
  }
}

- (double)_progressForAssetID:(id)a3 moc:(id)a4
{
  v5 = a4;
  v6 = [AEAnnotation predicateForGlobalAnnotationWithAssetID:a3];
  v7 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:v5];
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
  v12 = [v5 executeFetchRequest:v8 error:&v25];

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

- (void)_progressStringForLibraryAsset:(id)a3 annotationMOC:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 isNew];
  if ([v8 isSample])
  {
    v12 = objc_retainBlock(v10);
    if (v12)
    {
      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"Sample" value:&stru_100A30A68 table:0];
      v12[2](v12, v14);
    }

    goto LABEL_19;
  }

  if ([v8 isAudiobook])
  {
    v15 = [v8 isCloud];
    v16 = +[BKMediaLibraryCache sharedCache];
    v17 = [v8 assetID];
    v35 = v17;
    v18 = [NSArray arrayWithObjects:&v35 count:1];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000EA2B4;
    v32[3] = &unk_100A07018;
    v34 = v11;
    v33 = v10;
    [v16 fetchAssetsWithIDs:v18 type:v15 completion:v32];

    goto LABEL_19;
  }

  v19 = objc_opt_new();
  [v19 setNumberStyle:3];
  [v19 setMaximumFractionDigits:0];
  v20 = [v8 assetID];
  [(BKBookProgressController *)self _progressForAssetID:v20 moc:v9];
  v22 = v21;

  if (v11)
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
  v27 = objc_retainBlock(v10);
  v28 = v27;
  if (v27)
  {
    (*(v27 + 2))(v27, v26);
  }

LABEL_19:
}

+ (void)progressStringForLibraryAsset:(id)a3 completion:(id)a4
{
  v5 = qword_100AF75A0;
  v6 = a4;
  v7 = a3;
  v8 = [v5 annotationProvider];
  v9 = [v8 newManagedObjectContext];

  [qword_100AF75A0 _progressStringForLibraryAsset:v7 annotationMOC:v9 completion:v6];
}

- (AEAnnotationProvider)annotationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationProvider);

  return WeakRetained;
}

@end