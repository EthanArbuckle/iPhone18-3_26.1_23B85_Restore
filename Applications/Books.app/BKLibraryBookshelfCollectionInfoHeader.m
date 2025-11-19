@interface BKLibraryBookshelfCollectionInfoHeader
+ (double)_cachedHeight:(id)a3 withDataSource:(id)a4;
+ (void)adjustHeight:(id)a3 withDataSource:(id)a4;
- (BKLibraryActionHandler)actionHandler;
- (BKLibraryBookshelfCollectionInfoHeader)initWithFrame:(CGRect)a3;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (id)bookTypeStringFromBookType:(signed __int16)a3 count:(unint64_t)a4;
- (id)importStatusString;
- (id)libraryUploadStatusPresentingViewController;
- (id)presentationController:(id)a3 viewControllerForAdaptivePresentationStyle:(int64_t)a4;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)_delayedHideCloudStatus;
- (void)_mocWillSave:(id)a3;
- (void)_ownershipDidChange:(id)a3;
- (void)_updateMetricsForUploadStatusViewController;
- (void)applyLayoutAttributes:(id)a3;
- (void)controllerDidChangeContent:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)networkReachabilityChanged:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setActionHandler:(id)a3;
- (void)setDataSource:(id)a3;
- (void)sortModeDidChange;
- (void)updateAndLayoutCloudButtonAnimated;
- (void)updateCloudButton;
- (void)updateCounts;
- (void)uploadProgressButtonPressed:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation BKLibraryBookshelfCollectionInfoHeader

+ (double)_cachedHeight:(id)a3 withDataSource:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_100AF76E0 != -1)
  {
    sub_10079084C();
  }

  v7 = [v5 mainHeaderMetrics];
  v8 = [v7 collectionInfoLabelFontAttributes];
  v9 = [TUIFontSpec attributedStringWith:@" " attributes:v8];

  v10 = [v7 cloudButtonFontAttributes];
  v11 = [TUIFontSpec attributedStringWith:@" " attributes:v10];

  [v7 collectionInfoHeaderVerticalMargin];
  v13 = v12;
  [v7 cloudButtonSpacing];
  v15 = 0;
  if (v9 && v11 && (v16 = v14, v37[0] = @"attributedInfoText", v37[1] = @"attributedCloudText", v38[0] = v9, v38[1] = v11, v37[2] = @"vertMargin", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v13), v17 = objc_claimAutoreleasedReturnValue(), v38[2] = v17, v37[3] = @"spacing", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v16), v18 = objc_claimAutoreleasedReturnValue(), v38[3] = v18, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v38, v37, 4), v15 = objc_claimAutoreleasedReturnValue(), v18, v17, [qword_100AF76E8 objectForKeyedSubscript:v15], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v20 = v19;
    [v19 doubleValue];
    v22 = v21;
  }

  else
  {
    v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v20 setAttributedText:v9];
    v23 = objc_alloc_init(IMTouchInsetsButton);
    [v23 setContentEdgeInsets:{0.0, 0.0, 0.0, -1.0}];
    [v23 setAttributedTitle:v11 forState:0];
    [v5 frame];
    v25 = v24;
    v27 = v26;
    [v20 sizeThatFits:{v24, v26}];
    v29 = v28;
    [v23 sizeThatFits:{v25, v27}];
    v31 = v29 + v30;
    [v7 collectionInfoHeaderVerticalMargin];
    v33 = v31 + v32 * 2.0;
    [v7 cloudButtonSpacing];
    v22 = ceil(v34 + v33);
    if (v15)
    {
      v35 = [NSNumber numberWithDouble:v22];
      [qword_100AF76E8 setObject:v35 forKeyedSubscript:v15];
    }
  }

  return v22;
}

+ (void)adjustHeight:(id)a3 withDataSource:(id)a4
{
  v6 = a4;
  v15 = a3;
  [v15 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [a1 _cachedHeight:v15 withDataSource:v6];
  v14 = v13;

  [v15 setFrame:{v8, v10, v12, v14}];
}

- (BKLibraryBookshelfCollectionInfoHeader)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = BKLibraryBookshelfCollectionInfoHeader;
  v3 = [(BKLibraryBookshelfCollectionInfoHeader *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKLibraryBookshelfCollectionInfoHeader *)v3 setTag:47];
    v5 = objc_alloc_init(UILabel);
    infoLabel = v4->_infoLabel;
    v4->_infoLabel = v5;

    [(BKLibraryBookshelfCollectionInfoHeader *)v4 addSubview:v4->_infoLabel];
    v7 = objc_alloc_init(IMTouchInsetsButton);
    cloudButton = v4->_cloudButton;
    v4->_cloudButton = v7;

    [(IMTouchInsetsButton *)v4->_cloudButton setContentEdgeInsets:0.0, 0.0, 0.0, -1.0];
    [(BKLibraryBookshelfCollectionInfoHeader *)v4 addSubview:v4->_cloudButton];
    [(BKLibraryBookshelfCollectionInfoHeader *)v4 updateCloudButton];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v4 selector:"networkReachabilityChanged:" name:@"kNetworkReachabilityChangedNotification" object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v4 selector:"_mocWillSave:" name:NSManagedObjectContextWillSaveNotification object:0];

    v11 = [NSSet setWithObjects:@"expectedDate", @"isSample", @"state", @"purchasedAndLocalParent", @"seriesContainer", 0];
    [(BKLibraryBookshelfCollectionInfoHeader *)v4 setPropertiesOfInterest:v11];

    objc_initWeak(&location, v4);
    v12 = [BUCoalescingCallBlock alloc];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100128268;
    v16[3] = &unk_100A04820;
    objc_copyWeak(&v17, &location);
    v13 = [v12 initWithNotifyBlock:v16 blockDescription:@"BKLibraryBookshelfCollectionInfoHeader"];
    coalescedReloadData = v4->_coalescedReloadData;
    v4->_coalescedReloadData = v13;

    [(BUCoalescingCallBlock *)v4->_coalescedReloadData setCoalescingDelay:1.0];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];
  [v4 removeObserver:self forKeyPath:@"sortMode" context:off_100ACEB98];

  if ([(BKLibraryBookshelfCollectionInfoHeader *)self isObservingPropertyChanges])
  {
    v5 = +[BKLibraryAssetStatusController sharedController];
    v6 = [v5 uploadAssets];
    [v6 removeObserver:self forKeyPath:@"arrangedObjects" context:off_100ACEBA0];
    [v5 removeObserver:self forKeyPath:@"uploadStatus" context:off_100ACEBA8];
    v7 = +[BKLibraryImportStatusController sharedController];
    [v7 removeObserver:self forKeyPath:@"totalImportOperationsProcessed" context:off_100ACEBB0];
  }

  uploadProgressNavigationController = self->_uploadProgressNavigationController;
  if (uploadProgressNavigationController)
  {
    v9 = [(UINavigationController *)uploadProgressNavigationController popoverPresentationController];
    [v9 setDelegate:0];

    v10 = [(BKLibraryBookshelfCollectionInfoHeader *)self actionHandler];
    v11 = [v10 presentationController];
    [v11 dismissViewControllerAnimated:0 completion:0];
  }

  v12.receiver = self;
  v12.super_class = BKLibraryBookshelfCollectionInfoHeader;
  [(BKLibraryBookshelfCollectionInfoHeader *)&v12 dealloc];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfCollectionInfoHeader *)self window];
  v6 = v5;
  if (v4 && !v5)
  {
    if (![(BKLibraryBookshelfCollectionInfoHeader *)self isObservingPropertyChanges])
    {
      v7 = +[BKLibraryAssetStatusController sharedController];
      v8 = [v7 uploadAssets];
      [v8 addObserver:self forKeyPath:@"arrangedObjects" options:1 context:off_100ACEBA0];
      [v7 addObserver:self forKeyPath:@"uploadStatus" options:1 context:off_100ACEBA8];
      v9 = +[BKLibraryImportStatusController sharedController];
      [v9 addObserver:self forKeyPath:@"totalImportOperationsProcessed" options:1 context:off_100ACEBB0];

      [(BKLibraryBookshelfCollectionInfoHeader *)self setIsObservingPropertyChanges:1];
    }

    goto LABEL_10;
  }

  if (v4 || !v5)
  {
    if (v4)
    {
LABEL_10:
      [(BKLibraryBookshelfCollectionInfoHeader *)self updateCounts];
      [(BKLibraryBookshelfCollectionInfoHeader *)self updateCloudButton];
      [(BKLibraryBookshelfCollectionInfoHeader *)self setNeedsLayout];
    }
  }

  else if ([(BKLibraryBookshelfCollectionInfoHeader *)self isObservingPropertyChanges])
  {
    v10 = +[BKLibraryAssetStatusController sharedController];
    v11 = [v10 uploadAssets];
    [v11 removeObserver:self forKeyPath:@"arrangedObjects" context:off_100ACEBA0];
    [v10 removeObserver:self forKeyPath:@"uploadStatus" context:off_100ACEBA8];
    v12 = +[BKLibraryImportStatusController sharedController];
    [v12 removeObserver:self forKeyPath:@"totalImportOperationsProcessed" context:off_100ACEBB0];

    [(BKLibraryBookshelfCollectionInfoHeader *)self setIsObservingPropertyChanges:0];
  }

  v13.receiver = self;
  v13.super_class = BKLibraryBookshelfCollectionInfoHeader;
  [(BKLibraryBookshelfCollectionInfoHeader *)&v13 willMoveToWindow:v4];
}

- (void)setActionHandler:(id)a3
{
  objc_storeWeak(&self->_actionHandler, a3);
  v4 = [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButton];
  [v4 removeTarget:0 action:0 forControlEvents:64];
  [v4 addTarget:self action:"uploadProgressButtonPressed:" forControlEvents:64];
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = BKLibraryBookshelfCollectionInfoHeader;
  [(BKLibraryBookshelfCollectionInfoHeader *)&v27 layoutSubviews];
  [(BKLibraryBookshelfCollectionInfoHeader *)self bounds];
  v4 = v3;
  v25 = v5;
  v7 = v6;
  v9 = v8;
  v10 = [(BKLibraryBookshelfCollectionInfoHeader *)self infoLabel];
  v11 = [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButton];
  [v10 sizeThatFits:{v7, v9}];
  v13 = v12;
  [v11 sizeThatFits:{v7, v9}];
  v26 = v14;
  v16 = v15;
  if ([(BKLibraryBookshelfCollectionInfoHeader *)self wantsCloudButton])
  {
    [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButtonSpacing];
    v18 = v17;
LABEL_4:
    v22 = v13 + v16 + v18;
    v21 = 1.0;
    goto LABEL_5;
  }

  v19 = [(BKLibraryBookshelfCollectionInfoHeader *)self waitingForCloudButtonHideDelay];
  [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButtonSpacing];
  v18 = v20;
  v21 = 0.0;
  v22 = v13;
  if (v19)
  {
    goto LABEL_4;
  }

LABEL_5:
  v28.origin.x = v4;
  v28.origin.y = v25;
  v28.size.width = v7;
  v28.size.height = v9;
  v23 = floor((CGRectGetHeight(v28) - v22) * 0.5);
  [v11 setAlpha:v21];
  v29.origin.x = v4;
  v29.origin.y = v25;
  v29.size.width = v7;
  v29.size.height = v9;
  [v10 setFrame:{v4, v23, CGRectGetWidth(v29), v13}];
  v30.origin.x = v4;
  v30.origin.y = v25;
  v30.size.width = v7;
  v30.size.height = v9;
  [v11 setFrame:{v4, v18 + v13 + v23, CGRectGetWidth(v30), v16}];
  v31.origin.x = v4;
  v31.origin.y = v25;
  v31.size.width = v7;
  v31.size.height = v9;
  Width = CGRectGetWidth(v31);
  [v11 setTouchInsets:{0.0, (Width - v26) * 0.5, 0.0, (Width - v26) * 0.5}];
}

- (id)importStatusString
{
  v2 = +[BKLibraryImportStatusController sharedController];
  v3 = [v2 totalImportOperations];
  v4 = [v2 completedImportOperations];
  v5 = [v2 failedImportOperations];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Importing: %ld of %ld. Failed: %ld" value:&stru_100A30A68 table:0];

  if (v3)
  {
    v3 = [NSString stringWithFormat:v7, v4, v3, v5];
  }

  return v3;
}

- (void)updateCloudButton
{
  v9 = [(BKLibraryBookshelfCollectionInfoHeader *)self importStatusString];
  if ([v9 length])
  {
    v3 = v9;
  }

  else
  {
    v4 = +[BKLibraryUploadStatusViewController titleForUploadButton];

    v3 = v4;
  }

  v10 = v3;
  if ([v3 length])
  {
    v5 = [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButton];
    v6 = [(BKLibraryBookshelfCollectionInfoHeader *)self mainHeaderMetrics];
    v7 = [v6 cloudButtonFontAttributes];
    v8 = [TUIFontSpec attributedStringWith:v10 attributes:v7];
    [v5 setAttributedTitle:v8 forState:0];

    [(BKLibraryBookshelfCollectionInfoHeader *)self setWantsCloudButton:1];
    [(BKLibraryBookshelfCollectionInfoHeader *)self setWaitingForCloudButtonHideDelay:0];
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_delayedHideCloudStatus" object:0];
  }

  else if ([(BKLibraryBookshelfCollectionInfoHeader *)self wantsCloudButton])
  {
    [(BKLibraryBookshelfCollectionInfoHeader *)self setWantsCloudButton:0];
    if (![(BKLibraryBookshelfCollectionInfoHeader *)self waitingForCloudButtonHideDelay])
    {
      [(BKLibraryBookshelfCollectionInfoHeader *)self setWaitingForCloudButtonHideDelay:1];
      [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_delayedHideCloudStatus" object:0];
      [(BKLibraryBookshelfCollectionInfoHeader *)self performSelector:"_delayedHideCloudStatus" withObject:0 afterDelay:10.0];
    }
  }
}

- (void)_delayedHideCloudStatus
{
  if ([(BKLibraryBookshelfCollectionInfoHeader *)self waitingForCloudButtonHideDelay])
  {
    [(BKLibraryBookshelfCollectionInfoHeader *)self setWaitingForCloudButtonHideDelay:0];
    v3 = [(BKLibraryBookshelfCollectionInfoHeader *)self superview];

    if (v3)
    {

      [(BKLibraryBookshelfCollectionInfoHeader *)self updateAndLayoutCloudButtonAnimated];
    }
  }
}

- (id)bookTypeStringFromBookType:(signed __int16)a3 count:(unint64_t)a4
{
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if ((a3 - 1) > 3u)
  {
    v8 = @"%lu unknown";
  }

  else
  {
    v8 = *(&off_100A08030 + (a3 - 1));
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_100A30A68 table:0];

  v10 = [NSString localizedStringWithFormat:v9, a4];

  return v10;
}

- (void)updateCounts
{
  v2 = self;
  if ([(BKLibraryBookshelfCollectionInfoHeader *)self isSeriesCollection])
  {
    v3 = +[BKLibraryManager defaultManager];
    v79 = 0;
    v80 = 0;
    v4 = [(BKLibraryBookshelfCollectionInfoHeader *)v2 dataSource];
    v5 = [v4 seriesID];

    v6 = [v3 uiChildContext];
    [v3 countOfSeriesLibraryAssetsWithSeriesID:v5 total:&v80 purchased:&v79 context:v6];

    if (v79)
    {
      if (v79 != v80)
      {
        v70 = v3;
        v54 = [NSNumber numberWithUnsignedInteger:?];
        v11 = [NSNumberFormatter localizedStringFromNumber:v54 numberStyle:1];

        v55 = [NSNumber numberWithUnsignedInteger:v80];
        v15 = [NSNumberFormatter localizedStringFromNumber:v55 numberStyle:1];

        v56 = +[NSBundle mainBundle];
        v8 = [v56 localizedStringForKey:@"You’ve purchased %@ of %@ books in this series." value:&stru_100A30A68 table:0];

        v44 = [NSString stringWithFormat:v8, v11, v15];
        v57 = [(BKLibraryBookshelfCollectionInfoHeader *)v2 mainHeaderMetrics];
        v58 = [v57 collectionInfoLabelFontAttributes];
        v59 = [TUIFontSpec attributedStringWith:v44 attributes:v58];

        [v59 size];
        v61 = v60;
        [(BKLibraryBookshelfCollectionInfoHeader *)v2 bounds];
        if (v61 > CGRectGetWidth(v85))
        {
          v62 = +[NSBundle mainBundle];
          v63 = [v62 localizedStringForKey:@"%@ of %@ Purchased." value:&stru_100A30A68 table:0];

          v64 = [NSString stringWithFormat:v63, v11, v15];

          v44 = v64;
        }

        v3 = v70;
        goto LABEL_45;
      }

      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"You’ve purchased all the books in this series." value:&stru_100A30A68 table:0];

      v9 = [(BKLibraryBookshelfCollectionInfoHeader *)v2 mainHeaderMetrics];
      v10 = [v9 collectionInfoLabelFontAttributes];
      v11 = [TUIFontSpec attributedStringWith:v8 attributes:v10];

      [v11 size];
      v13 = v12;
      [(BKLibraryBookshelfCollectionInfoHeader *)v2 bounds];
      if (v13 > CGRectGetWidth(v82))
      {
        v14 = +[NSBundle mainBundle];
        v15 = v14;
        v16 = @"All books purchased.";
LABEL_36:
        v44 = [v14 localizedStringForKey:v16 value:&stru_100A30A68 table:0];
LABEL_45:

        v8 = v44;
      }
    }

    else
    {
      v39 = +[NSBundle mainBundle];
      v8 = [v39 localizedStringForKey:@"You haven’t purchased any books in this series." value:&stru_100A30A68 table:0];

      v40 = [(BKLibraryBookshelfCollectionInfoHeader *)v2 mainHeaderMetrics];
      v41 = [v40 collectionInfoLabelFontAttributes];
      v11 = [TUIFontSpec attributedStringWith:v8 attributes:v41];

      [v11 size];
      v43 = v42;
      [(BKLibraryBookshelfCollectionInfoHeader *)v2 bounds];
      if (v43 > CGRectGetWidth(v83))
      {
        v14 = +[NSBundle mainBundle];
        v15 = v14;
        v16 = @"No books purchased.";
        goto LABEL_36;
      }
    }

    v65 = [(BKLibraryBookshelfCollectionInfoHeader *)v2 mainHeaderMetrics];
    v66 = [v65 collectionInfoLabelFontAttributes];
    v67 = [TUIFontSpec attributedStringWith:v8 attributes:v66];
    [(UILabel *)v2->_infoLabel setAttributedText:v67];

    goto LABEL_47;
  }

  v17 = +[NSBundle mainBundle];
  v3 = [v17 localizedStringForKey:@" value:" table:{&stru_100A30A68, 0}];

  v18 = +[NSMutableArray array];
  v19 = [(BKLibraryBookshelfCollectionInfoHeader *)v2 frc];
  v20 = [v19 sections];
  v21 = [v20 mutableCopy];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v23)
  {
    v24 = v23;
    v69 = v3;
    v71 = v18;
    v68 = v2;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = *v76;
    while (1)
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v76 != v28)
        {
          objc_enumerationMutation(v22);
        }

        v30 = *(*(&v75 + 1) + 8 * i);
        v31 = [v30 numberOfObjects];
        v32 = [v30 name];
        v33 = [v32 integerValue];

        if (v33 <= 3)
        {
          if ((v33 - 1) < 2)
          {
            goto LABEL_19;
          }

          if (v33 == 3)
          {
            v73 += v31;
            goto LABEL_22;
          }

          goto LABEL_20;
        }

        if (v33 == 4)
        {
LABEL_19:
          v26 += v31;
          goto LABEL_22;
        }

        if (v33 != 5)
        {
          if (v33 == 6)
          {
            v72 += v31;
            goto LABEL_22;
          }

LABEL_20:
          v74 += v31;
          goto LABEL_22;
        }

        v25 += v31;
LABEL_22:
        v27 += v31;
      }

      v24 = [v22 countByEnumeratingWithState:&v75 objects:v81 count:16];
      if (!v24)
      {

        if (v26)
        {
          v34 = [(BKLibraryBookshelfCollectionInfoHeader *)v68 bookTypeStringFromBookType:1 count:v26];
          [v71 addObject:v34];
        }

        v2 = v68;
        if (v25)
        {
          v35 = [(BKLibraryBookshelfCollectionInfoHeader *)v68 bookTypeStringFromBookType:4 count:v25];
          [v71 addObject:v35];
        }

        v18 = v71;
        if (v72)
        {
          v36 = [(BKLibraryBookshelfCollectionInfoHeader *)v68 bookTypeStringFromBookType:3 count:?];
          [v71 addObject:v36];
        }

        v3 = v69;
        if (v73)
        {
          v37 = [(BKLibraryBookshelfCollectionInfoHeader *)v68 bookTypeStringFromBookType:2 count:?];
          [v71 addObject:v37];
        }

        if (v74)
        {
          v38 = [(BKLibraryBookshelfCollectionInfoHeader *)v68 bookTypeStringFromBookType:0 count:?];
          [v71 addObject:v38];
          goto LABEL_38;
        }

        goto LABEL_39;
      }
    }
  }

  v27 = 0;
  v38 = v22;
LABEL_38:

LABEL_39:
  v8 = [v18 componentsJoinedByString:v3];
  v45 = [(BKLibraryBookshelfCollectionInfoHeader *)v2 mainHeaderMetrics];
  v46 = [v45 collectionInfoLabelFontAttributes];
  v47 = [TUIFontSpec attributedStringWith:v8 attributes:v46];

  [v47 size];
  v49 = v48;
  [(BKLibraryBookshelfCollectionInfoHeader *)v2 bounds];
  if (v49 > CGRectGetWidth(v84))
  {
    v50 = [(BKLibraryBookshelfCollectionInfoHeader *)v2 bookTypeStringFromBookType:1 count:v27];

    v51 = [(BKLibraryBookshelfCollectionInfoHeader *)v2 mainHeaderMetrics];
    v52 = [v51 collectionInfoLabelFontAttributes];
    v53 = [TUIFontSpec attributedStringWith:v50 attributes:v52];

    v47 = v53;
    v8 = v50;
  }

  [(UILabel *)v2->_infoLabel setAttributedText:v47];

LABEL_47:
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BKLibraryBookshelfCollectionInfoHeader;
  [(BKLibraryBookshelfCollectionInfoHeader *)&v35 applyLayoutAttributes:v4];
  v5 = v4;
  v6 = [(BKLibraryBookshelfCollectionInfoHeader *)self attrs];
  v7 = [v6 isEqual:v5];

  if ((v7 & 1) == 0)
  {
    [(BKLibraryBookshelfCollectionInfoHeader *)self setAttrs:v5];
    v8 = +[UIApplication sharedApplication];
    -[BKLibraryBookshelfCollectionInfoHeader setIsRTL:](self, "setIsRTL:", [v8 userInterfaceLayoutDirection] == 1);

    v9 = [(BKLibraryBookshelfCollectionInfoHeader *)self infoLabel];
    v10 = [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButton];
    v11 = [(BKLibraryBookshelfCollectionInfoHeader *)self attrs];
    v12 = [v11 layoutDebugMode];

    if (v12)
    {
      v13 = +[UIColor redColor];
      v14 = [v13 colorWithAlphaComponent:0.2];
      v15 = [v14 CGColor];
      v16 = [(BKLibraryBookshelfCollectionInfoHeader *)self layer];
      [v16 setBorderColor:v15];

      v17 = [(BKLibraryBookshelfCollectionInfoHeader *)self layer];
      v18 = 0.5;
      [v17 setBorderWidth:0.5];

      v19 = +[UIColor redColor];
      v20 = [v19 colorWithAlphaComponent:0.2];
      v21 = [v20 CGColor];
      v22 = [v9 layer];
      [v22 setBorderColor:v21];

      v23 = [v9 layer];
      [v23 setBorderWidth:0.5];

      v24 = +[UIColor redColor];
      v25 = [v24 colorWithAlphaComponent:0.2];
      v26 = [v25 CGColor];
      v27 = [v10 layer];
      [v27 setBorderColor:v26];
    }

    else
    {
      v28 = [(BKLibraryBookshelfCollectionInfoHeader *)self layer];
      v18 = 0.0;
      [v28 setBorderWidth:0.0];

      v24 = [v9 layer];
      [v24 setBorderWidth:0.0];
    }

    v29 = [v10 layer];
    [v29 setBorderWidth:v18];

    v30 = [(BKLibraryBookshelfCollectionInfoHeader *)self attrs];
    v31 = [v30 mainHeaderMetrics];

    [(BKLibraryBookshelfCollectionInfoHeader *)self setMainHeaderMetrics:v31];
    v32 = [(BKLibraryBookshelfCollectionInfoHeader *)self backgroundColor];
    v33 = [v31 headerBackgroundColor];

    if (v32 != v33)
    {
      v34 = [v31 headerBackgroundColor];
      [(BKLibraryBookshelfCollectionInfoHeader *)self setBackgroundColor:v34];
    }

    [v10 setContentHorizontalAlignment:0];
    [v31 cloudButtonSpacing];
    [(BKLibraryBookshelfCollectionInfoHeader *)self setCloudButtonSpacing:?];
    [(BKLibraryBookshelfCollectionInfoHeader *)self updateCloudButton];
    [(BKLibraryBookshelfCollectionInfoHeader *)self updateCounts];
    [(BKLibraryBookshelfCollectionInfoHeader *)self _updateMetricsForUploadStatusViewController];
  }
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != obj)
  {
    v5 = +[BKLibraryManager defaultManager];
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];
    [v7 removeObserver:self forKeyPath:@"sortMode" context:off_100ACEB98];

    v8 = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];

    if (v8)
    {
      [v6 removeObserver:self name:BKLibraryOwnershipDidChangeNotification object:v5];
    }

    objc_storeWeak(&self->_dataSource, obj);
    v9 = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];
    -[BKLibraryBookshelfCollectionInfoHeader setIsSeriesCollection:](self, "setIsSeriesCollection:", [v9 collectionIsSeries]);

    v10 = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];
    if (v10)
    {
      v11 = v10;
      v12 = [(BKLibraryBookshelfCollectionInfoHeader *)self isSeriesCollection];

      if (v12)
      {
        [v6 addObserver:self selector:"_ownershipDidChange:" name:BKLibraryOwnershipDidChangeNotification object:v5];
      }
    }

    v13 = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];
    [v13 addObserver:self forKeyPath:@"sortMode" options:0 context:off_100ACEB98];

    [(BKLibraryBookshelfCollectionInfoHeader *)self sortModeDidChange];
  }
}

- (void)_ownershipDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100129B4C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_mocWillSave:(id)a3
{
  v4 = a3;
  if (![(BKLibraryBookshelfCollectionInfoHeader *)self isSeriesCollection])
  {
    v5 = [(BKLibraryBookshelfCollectionInfoHeader *)self frc];
    v6 = [v5 fetchRequest];
    v7 = [v6 entityName];
    v8 = [v7 isEqualToString:@"BKCollectionMember"];

    if (v8)
    {
      v9 = [v4 object];
      [v9 updatedObjects];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = v31 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v12 = v10;
      if (v11)
      {
        v13 = v11;
        v25 = v9;
        v26 = v4;
        v27 = self;
        v14 = *v29;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v28 + 1) + 8 * i);
            v17 = [v16 entity];
            v18 = [v17 name];
            v19 = [v18 isEqualToString:@"BKLibraryAsset"];

            if (v19)
            {
              v20 = [v16 changedValues];
              v21 = [v20 allKeys];
              v22 = [NSSet setWithArray:v21];
              v23 = [(BKLibraryBookshelfCollectionInfoHeader *)v27 propertiesOfInterest];
              v24 = [v22 intersectsSet:v23];

              if (v24)
              {

                v12 = [(BKLibraryBookshelfCollectionInfoHeader *)v27 coalescedReloadData];
                [v12 signalWithCompletion:&stru_100A08010];
                goto LABEL_14;
              }
            }
          }

          v13 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

        v12 = v10;
LABEL_14:
        v9 = v25;
        v4 = v26;
      }
    }
  }
}

- (void)sortModeDidChange
{
  if ([(BKLibraryBookshelfCollectionInfoHeader *)self isSeriesCollection])
  {
    [(BKLibraryBookshelfCollectionInfoHeader *)self updateCounts];
    [(BKLibraryBookshelfCollectionInfoHeader *)self updateCloudButton];

    [(BKLibraryBookshelfCollectionInfoHeader *)self setNeedsLayout];
  }

  else
  {
    v3 = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];
    v4 = [v3 currentSortMode];

    v5 = [v4 predicate];
    v6 = [(BKLibraryBookshelfCollectionInfoHeader *)self frc];
    v7 = [v6 fetchRequest];
    v8 = [v7 predicate];
    v9 = [v5 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [NSFetchRequest alloc];
      v11 = [v4 entityName];
      v12 = [v10 initWithEntityName:v11];

      v13 = [v4 entityName];
      v14 = [v13 isEqualToString:@"BKLibraryAsset"];

      [v12 setPredicate:v5];
      if (v14)
      {
        v15 = @"contentType";
      }

      else
      {
        v15 = @"asset.contentType";
      }

      v16 = [NSSortDescriptor sortDescriptorWithKey:v15 ascending:1];
      v24 = v16;
      v17 = [NSArray arrayWithObjects:&v24 count:1];
      [v12 setSortDescriptors:v17];

      v18 = [NSFetchedResultsController alloc];
      v19 = +[BKLibraryManager defaultManager];
      v20 = [v19 uiChildContext];
      v21 = [v18 initWithFetchRequest:v12 managedObjectContext:v20 sectionNameKeyPath:v15 cacheName:0];
      [(BKLibraryBookshelfCollectionInfoHeader *)self setFrc:v21];

      v22 = [(BKLibraryBookshelfCollectionInfoHeader *)self frc];
      [v22 performFetch:0];

      v23 = [(BKLibraryBookshelfCollectionInfoHeader *)self frc];
      [v23 setDelegate:self];

      [(BKLibraryBookshelfCollectionInfoHeader *)self updateCounts];
      [(BKLibraryBookshelfCollectionInfoHeader *)self updateCloudButton];
      [(BKLibraryBookshelfCollectionInfoHeader *)self setNeedsLayout];
    }
  }
}

- (void)controllerDidChangeContent:(id)a3
{
  [(BKLibraryBookshelfCollectionInfoHeader *)self updateCounts];
  [(BKLibraryBookshelfCollectionInfoHeader *)self updateCloudButton];

  [(BKLibraryBookshelfCollectionInfoHeader *)self setNeedsLayout];
}

- (void)updateAndLayoutCloudButtonAnimated
{
  [(BKLibraryBookshelfCollectionInfoHeader *)self updateCloudButton];
  v3 = [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButton];
  [v3 layoutIfNeeded];

  [(BKLibraryBookshelfCollectionInfoHeader *)self setNeedsLayout];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012A1A8;
  v4[3] = &unk_100A033C8;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:0.3];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_100ACEB98 == a6)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10012A3E8;
    v18[3] = &unk_100A033C8;
    v18[4] = self;
    v13 = v18;
LABEL_10:
    dispatch_async(&_dispatch_main_q, v13);
    goto LABEL_11;
  }

  if (off_100ACEBA0 == a6)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10012A3F0;
    v17[3] = &unk_100A033C8;
    v17[4] = self;
    v13 = v17;
    goto LABEL_10;
  }

  if (off_100ACEBA8 == a6)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10012A3F8;
    v16[3] = &unk_100A033C8;
    v16[4] = self;
    v13 = v16;
    goto LABEL_10;
  }

  if (off_100ACEBB0 == a6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012A47C;
    block[3] = &unk_100A033C8;
    block[4] = self;
    v13 = block;
    goto LABEL_10;
  }

  v14.receiver = self;
  v14.super_class = BKLibraryBookshelfCollectionInfoHeader;
  [(BKLibraryBookshelfCollectionInfoHeader *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_11:
}

- (void)networkReachabilityChanged:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012A4F8;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateMetricsForUploadStatusViewController
{
  objc_opt_class();
  v3 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];
  v4 = [v3 topViewController];
  v6 = BUDynamicCast();

  v5 = [(BKLibraryBookshelfCollectionInfoHeader *)self mainHeaderMetrics];
  [v6 setMainHeaderMetrics:v5];
}

- (void)uploadProgressButtonPressed:(id)a3
{
  if ([(BKLibraryBookshelfCollectionInfoHeader *)self wantsCloudButton])
  {
    v4 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];

    if (!v4)
    {
      v5 = [BKLibraryUploadStatusViewController alloc];
      v6 = [(BKLibraryBookshelfCollectionInfoHeader *)self mainHeaderMetrics];
      v27 = [(BKLibraryUploadStatusViewController *)v5 initWithMetrics:v6];

      [(BKLibraryUploadStatusViewController *)v27 setDelegate:self];
      v7 = [[BKLibraryUploadStatusNavigationController alloc] initWithRootViewController:v27];
      [(BKLibraryBookshelfCollectionInfoHeader *)self setUploadProgressNavigationController:v7];

      v8 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];
      [v8 setModalPresentationStyle:7];

      v9 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];
      v10 = [v9 popoverPresentationController];

      [v10 setDelegate:self];
      v11 = [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButton];
      [v10 setSourceView:v11];
      [v11 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [v11 touchInsets];
      [v10 setSourceRect:{v13 + v23, v15 + v20, v17 - (v23 + v21), v19 - (v20 + v22)}];
      v24 = [(BKLibraryBookshelfCollectionInfoHeader *)self actionHandler];
      v25 = [v24 presentationController];
      v26 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];
      [v25 presentViewController:v26 animated:1 completion:0];
    }
  }
}

- (id)libraryUploadStatusPresentingViewController
{
  v2 = [(BKLibraryBookshelfCollectionInfoHeader *)self actionHandler];
  v3 = [v2 presentationController];

  return v3;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v6 = a3;
  v4 = [v6 presentedViewController];
  v5 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];

  if (v4 == v5)
  {
    [v6 setDelegate:0];
    [(BKLibraryBookshelfCollectionInfoHeader *)self setUploadProgressNavigationController:0];
  }
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v4 = [a3 presentedViewController];
  v5 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];

  if (v4 == v5)
  {
    objc_opt_class();
    v6 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];
    v7 = [v6 topViewController];
    v8 = BUDynamicCast();

    [v8 setPresentedInPopover:1];
  }
}

- (id)presentationController:(id)a3 viewControllerForAdaptivePresentationStyle:(int64_t)a4
{
  v5 = [a3 presentedViewController];
  v6 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];

  if (v5 == v6)
  {
    objc_opt_class();
    v7 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];
    v8 = [v7 topViewController];
    v9 = BUDynamicCast();

    [v9 setPresentedInPopover:0];
  }

  return 0;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  v5 = [v4 horizontalSizeClass];
  v6 = [v4 verticalSizeClass];

  if (v6 == 1 || v5 == 1)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

- (BKLibraryBookshelfSupplementaryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BKLibraryActionHandler)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

@end