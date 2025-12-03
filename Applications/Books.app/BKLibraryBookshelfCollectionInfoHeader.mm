@interface BKLibraryBookshelfCollectionInfoHeader
+ (double)_cachedHeight:(id)height withDataSource:(id)source;
+ (void)adjustHeight:(id)height withDataSource:(id)source;
- (BKLibraryActionHandler)actionHandler;
- (BKLibraryBookshelfCollectionInfoHeader)initWithFrame:(CGRect)frame;
- (BKLibraryBookshelfSupplementaryDataSource)dataSource;
- (id)bookTypeStringFromBookType:(signed __int16)type count:(unint64_t)count;
- (id)importStatusString;
- (id)libraryUploadStatusPresentingViewController;
- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)_delayedHideCloudStatus;
- (void)_mocWillSave:(id)save;
- (void)_ownershipDidChange:(id)change;
- (void)_updateMetricsForUploadStatusViewController;
- (void)applyLayoutAttributes:(id)attributes;
- (void)controllerDidChangeContent:(id)content;
- (void)dealloc;
- (void)layoutSubviews;
- (void)networkReachabilityChanged:(id)changed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setActionHandler:(id)handler;
- (void)setDataSource:(id)source;
- (void)sortModeDidChange;
- (void)updateAndLayoutCloudButtonAnimated;
- (void)updateCloudButton;
- (void)updateCounts;
- (void)uploadProgressButtonPressed:(id)pressed;
- (void)willMoveToWindow:(id)window;
@end

@implementation BKLibraryBookshelfCollectionInfoHeader

+ (double)_cachedHeight:(id)height withDataSource:(id)source
{
  heightCopy = height;
  sourceCopy = source;
  if (qword_100AF76E0 != -1)
  {
    sub_10079084C();
  }

  mainHeaderMetrics = [heightCopy mainHeaderMetrics];
  collectionInfoLabelFontAttributes = [mainHeaderMetrics collectionInfoLabelFontAttributes];
  v9 = [TUIFontSpec attributedStringWith:@" " attributes:collectionInfoLabelFontAttributes];

  cloudButtonFontAttributes = [mainHeaderMetrics cloudButtonFontAttributes];
  v11 = [TUIFontSpec attributedStringWith:@" " attributes:cloudButtonFontAttributes];

  [mainHeaderMetrics collectionInfoHeaderVerticalMargin];
  v13 = v12;
  [mainHeaderMetrics cloudButtonSpacing];
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
    [heightCopy frame];
    v25 = v24;
    v27 = v26;
    [v20 sizeThatFits:{v24, v26}];
    v29 = v28;
    [v23 sizeThatFits:{v25, v27}];
    v31 = v29 + v30;
    [mainHeaderMetrics collectionInfoHeaderVerticalMargin];
    v33 = v31 + v32 * 2.0;
    [mainHeaderMetrics cloudButtonSpacing];
    v22 = ceil(v34 + v33);
    if (v15)
    {
      v35 = [NSNumber numberWithDouble:v22];
      [qword_100AF76E8 setObject:v35 forKeyedSubscript:v15];
    }
  }

  return v22;
}

+ (void)adjustHeight:(id)height withDataSource:(id)source
{
  sourceCopy = source;
  heightCopy = height;
  [heightCopy frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [self _cachedHeight:heightCopy withDataSource:sourceCopy];
  v14 = v13;

  [heightCopy setFrame:{v8, v10, v12, v14}];
}

- (BKLibraryBookshelfCollectionInfoHeader)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = BKLibraryBookshelfCollectionInfoHeader;
  v3 = [(BKLibraryBookshelfCollectionInfoHeader *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

  dataSource = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];
  [dataSource removeObserver:self forKeyPath:@"sortMode" context:off_100ACEB98];

  if ([(BKLibraryBookshelfCollectionInfoHeader *)self isObservingPropertyChanges])
  {
    v5 = +[BKLibraryAssetStatusController sharedController];
    uploadAssets = [v5 uploadAssets];
    [uploadAssets removeObserver:self forKeyPath:@"arrangedObjects" context:off_100ACEBA0];
    [v5 removeObserver:self forKeyPath:@"uploadStatus" context:off_100ACEBA8];
    v7 = +[BKLibraryImportStatusController sharedController];
    [v7 removeObserver:self forKeyPath:@"totalImportOperationsProcessed" context:off_100ACEBB0];
  }

  uploadProgressNavigationController = self->_uploadProgressNavigationController;
  if (uploadProgressNavigationController)
  {
    popoverPresentationController = [(UINavigationController *)uploadProgressNavigationController popoverPresentationController];
    [popoverPresentationController setDelegate:0];

    actionHandler = [(BKLibraryBookshelfCollectionInfoHeader *)self actionHandler];
    presentationController = [actionHandler presentationController];
    [presentationController dismissViewControllerAnimated:0 completion:0];
  }

  v12.receiver = self;
  v12.super_class = BKLibraryBookshelfCollectionInfoHeader;
  [(BKLibraryBookshelfCollectionInfoHeader *)&v12 dealloc];
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  window = [(BKLibraryBookshelfCollectionInfoHeader *)self window];
  v6 = window;
  if (windowCopy && !window)
  {
    if (![(BKLibraryBookshelfCollectionInfoHeader *)self isObservingPropertyChanges])
    {
      v7 = +[BKLibraryAssetStatusController sharedController];
      uploadAssets = [v7 uploadAssets];
      [uploadAssets addObserver:self forKeyPath:@"arrangedObjects" options:1 context:off_100ACEBA0];
      [v7 addObserver:self forKeyPath:@"uploadStatus" options:1 context:off_100ACEBA8];
      v9 = +[BKLibraryImportStatusController sharedController];
      [v9 addObserver:self forKeyPath:@"totalImportOperationsProcessed" options:1 context:off_100ACEBB0];

      [(BKLibraryBookshelfCollectionInfoHeader *)self setIsObservingPropertyChanges:1];
    }

    goto LABEL_10;
  }

  if (windowCopy || !window)
  {
    if (windowCopy)
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
    uploadAssets2 = [v10 uploadAssets];
    [uploadAssets2 removeObserver:self forKeyPath:@"arrangedObjects" context:off_100ACEBA0];
    [v10 removeObserver:self forKeyPath:@"uploadStatus" context:off_100ACEBA8];
    v12 = +[BKLibraryImportStatusController sharedController];
    [v12 removeObserver:self forKeyPath:@"totalImportOperationsProcessed" context:off_100ACEBB0];

    [(BKLibraryBookshelfCollectionInfoHeader *)self setIsObservingPropertyChanges:0];
  }

  v13.receiver = self;
  v13.super_class = BKLibraryBookshelfCollectionInfoHeader;
  [(BKLibraryBookshelfCollectionInfoHeader *)&v13 willMoveToWindow:windowCopy];
}

- (void)setActionHandler:(id)handler
{
  objc_storeWeak(&self->_actionHandler, handler);
  cloudButton = [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButton];
  [cloudButton removeTarget:0 action:0 forControlEvents:64];
  [cloudButton addTarget:self action:"uploadProgressButtonPressed:" forControlEvents:64];
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
  infoLabel = [(BKLibraryBookshelfCollectionInfoHeader *)self infoLabel];
  cloudButton = [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButton];
  [infoLabel sizeThatFits:{v7, v9}];
  v13 = v12;
  [cloudButton sizeThatFits:{v7, v9}];
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

  waitingForCloudButtonHideDelay = [(BKLibraryBookshelfCollectionInfoHeader *)self waitingForCloudButtonHideDelay];
  [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButtonSpacing];
  v18 = v20;
  v21 = 0.0;
  v22 = v13;
  if (waitingForCloudButtonHideDelay)
  {
    goto LABEL_4;
  }

LABEL_5:
  v28.origin.x = v4;
  v28.origin.y = v25;
  v28.size.width = v7;
  v28.size.height = v9;
  v23 = floor((CGRectGetHeight(v28) - v22) * 0.5);
  [cloudButton setAlpha:v21];
  v29.origin.x = v4;
  v29.origin.y = v25;
  v29.size.width = v7;
  v29.size.height = v9;
  [infoLabel setFrame:{v4, v23, CGRectGetWidth(v29), v13}];
  v30.origin.x = v4;
  v30.origin.y = v25;
  v30.size.width = v7;
  v30.size.height = v9;
  [cloudButton setFrame:{v4, v18 + v13 + v23, CGRectGetWidth(v30), v16}];
  v31.origin.x = v4;
  v31.origin.y = v25;
  v31.size.width = v7;
  v31.size.height = v9;
  Width = CGRectGetWidth(v31);
  [cloudButton setTouchInsets:{0.0, (Width - v26) * 0.5, 0.0, (Width - v26) * 0.5}];
}

- (id)importStatusString
{
  v2 = +[BKLibraryImportStatusController sharedController];
  totalImportOperations = [v2 totalImportOperations];
  completedImportOperations = [v2 completedImportOperations];
  failedImportOperations = [v2 failedImportOperations];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Importing: %ld of %ld. Failed: %ld" value:&stru_100A30A68 table:0];

  if (totalImportOperations)
  {
    totalImportOperations = [NSString stringWithFormat:v7, completedImportOperations, totalImportOperations, failedImportOperations];
  }

  return totalImportOperations;
}

- (void)updateCloudButton
{
  importStatusString = [(BKLibraryBookshelfCollectionInfoHeader *)self importStatusString];
  if ([importStatusString length])
  {
    v3 = importStatusString;
  }

  else
  {
    v4 = +[BKLibraryUploadStatusViewController titleForUploadButton];

    v3 = v4;
  }

  v10 = v3;
  if ([v3 length])
  {
    cloudButton = [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButton];
    mainHeaderMetrics = [(BKLibraryBookshelfCollectionInfoHeader *)self mainHeaderMetrics];
    cloudButtonFontAttributes = [mainHeaderMetrics cloudButtonFontAttributes];
    v8 = [TUIFontSpec attributedStringWith:v10 attributes:cloudButtonFontAttributes];
    [cloudButton setAttributedTitle:v8 forState:0];

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
    superview = [(BKLibraryBookshelfCollectionInfoHeader *)self superview];

    if (superview)
    {

      [(BKLibraryBookshelfCollectionInfoHeader *)self updateAndLayoutCloudButtonAnimated];
    }
  }
}

- (id)bookTypeStringFromBookType:(signed __int16)type count:(unint64_t)count
{
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if ((type - 1) > 3u)
  {
    v8 = @"%lu unknown";
  }

  else
  {
    v8 = *(&off_100A08030 + (type - 1));
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_100A30A68 table:0];

  v10 = [NSString localizedStringWithFormat:v9, count];

  return v10;
}

- (void)updateCounts
{
  selfCopy = self;
  if ([(BKLibraryBookshelfCollectionInfoHeader *)self isSeriesCollection])
  {
    v3 = +[BKLibraryManager defaultManager];
    v79 = 0;
    v80 = 0;
    dataSource = [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy dataSource];
    seriesID = [dataSource seriesID];

    uiChildContext = [v3 uiChildContext];
    [v3 countOfSeriesLibraryAssetsWithSeriesID:seriesID total:&v80 purchased:&v79 context:uiChildContext];

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
        mainHeaderMetrics = [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy mainHeaderMetrics];
        collectionInfoLabelFontAttributes = [mainHeaderMetrics collectionInfoLabelFontAttributes];
        v59 = [TUIFontSpec attributedStringWith:v44 attributes:collectionInfoLabelFontAttributes];

        [v59 size];
        v61 = v60;
        [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy bounds];
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

      mainHeaderMetrics2 = [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy mainHeaderMetrics];
      collectionInfoLabelFontAttributes2 = [mainHeaderMetrics2 collectionInfoLabelFontAttributes];
      v11 = [TUIFontSpec attributedStringWith:v8 attributes:collectionInfoLabelFontAttributes2];

      [v11 size];
      v13 = v12;
      [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy bounds];
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

      mainHeaderMetrics3 = [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy mainHeaderMetrics];
      collectionInfoLabelFontAttributes3 = [mainHeaderMetrics3 collectionInfoLabelFontAttributes];
      v11 = [TUIFontSpec attributedStringWith:v8 attributes:collectionInfoLabelFontAttributes3];

      [v11 size];
      v43 = v42;
      [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy bounds];
      if (v43 > CGRectGetWidth(v83))
      {
        v14 = +[NSBundle mainBundle];
        v15 = v14;
        v16 = @"No books purchased.";
        goto LABEL_36;
      }
    }

    mainHeaderMetrics4 = [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy mainHeaderMetrics];
    collectionInfoLabelFontAttributes4 = [mainHeaderMetrics4 collectionInfoLabelFontAttributes];
    v67 = [TUIFontSpec attributedStringWith:v8 attributes:collectionInfoLabelFontAttributes4];
    [(UILabel *)selfCopy->_infoLabel setAttributedText:v67];

    goto LABEL_47;
  }

  v17 = +[NSBundle mainBundle];
  v3 = [v17 localizedStringForKey:@" value:" table:{&stru_100A30A68, 0}];

  v18 = +[NSMutableArray array];
  v19 = [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy frc];
  sections = [v19 sections];
  v21 = [sections mutableCopy];

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
    v68 = selfCopy;
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
        numberOfObjects = [v30 numberOfObjects];
        name = [v30 name];
        integerValue = [name integerValue];

        if (integerValue <= 3)
        {
          if ((integerValue - 1) < 2)
          {
            goto LABEL_19;
          }

          if (integerValue == 3)
          {
            v73 += numberOfObjects;
            goto LABEL_22;
          }

          goto LABEL_20;
        }

        if (integerValue == 4)
        {
LABEL_19:
          v26 += numberOfObjects;
          goto LABEL_22;
        }

        if (integerValue != 5)
        {
          if (integerValue == 6)
          {
            v72 += numberOfObjects;
            goto LABEL_22;
          }

LABEL_20:
          v74 += numberOfObjects;
          goto LABEL_22;
        }

        v25 += numberOfObjects;
LABEL_22:
        v27 += numberOfObjects;
      }

      v24 = [v22 countByEnumeratingWithState:&v75 objects:v81 count:16];
      if (!v24)
      {

        if (v26)
        {
          v34 = [(BKLibraryBookshelfCollectionInfoHeader *)v68 bookTypeStringFromBookType:1 count:v26];
          [v71 addObject:v34];
        }

        selfCopy = v68;
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
  mainHeaderMetrics5 = [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy mainHeaderMetrics];
  collectionInfoLabelFontAttributes5 = [mainHeaderMetrics5 collectionInfoLabelFontAttributes];
  v47 = [TUIFontSpec attributedStringWith:v8 attributes:collectionInfoLabelFontAttributes5];

  [v47 size];
  v49 = v48;
  [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy bounds];
  if (v49 > CGRectGetWidth(v84))
  {
    v50 = [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy bookTypeStringFromBookType:1 count:v27];

    mainHeaderMetrics6 = [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy mainHeaderMetrics];
    collectionInfoLabelFontAttributes6 = [mainHeaderMetrics6 collectionInfoLabelFontAttributes];
    v53 = [TUIFontSpec attributedStringWith:v50 attributes:collectionInfoLabelFontAttributes6];

    v47 = v53;
    v8 = v50;
  }

  [(UILabel *)selfCopy->_infoLabel setAttributedText:v47];

LABEL_47:
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v35.receiver = self;
  v35.super_class = BKLibraryBookshelfCollectionInfoHeader;
  [(BKLibraryBookshelfCollectionInfoHeader *)&v35 applyLayoutAttributes:attributesCopy];
  v5 = attributesCopy;
  attrs = [(BKLibraryBookshelfCollectionInfoHeader *)self attrs];
  v7 = [attrs isEqual:v5];

  if ((v7 & 1) == 0)
  {
    [(BKLibraryBookshelfCollectionInfoHeader *)self setAttrs:v5];
    v8 = +[UIApplication sharedApplication];
    -[BKLibraryBookshelfCollectionInfoHeader setIsRTL:](self, "setIsRTL:", [v8 userInterfaceLayoutDirection] == 1);

    infoLabel = [(BKLibraryBookshelfCollectionInfoHeader *)self infoLabel];
    cloudButton = [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButton];
    attrs2 = [(BKLibraryBookshelfCollectionInfoHeader *)self attrs];
    layoutDebugMode = [attrs2 layoutDebugMode];

    if (layoutDebugMode)
    {
      v13 = +[UIColor redColor];
      v14 = [v13 colorWithAlphaComponent:0.2];
      cGColor = [v14 CGColor];
      layer = [(BKLibraryBookshelfCollectionInfoHeader *)self layer];
      [layer setBorderColor:cGColor];

      layer2 = [(BKLibraryBookshelfCollectionInfoHeader *)self layer];
      v18 = 0.5;
      [layer2 setBorderWidth:0.5];

      v19 = +[UIColor redColor];
      v20 = [v19 colorWithAlphaComponent:0.2];
      cGColor2 = [v20 CGColor];
      layer3 = [infoLabel layer];
      [layer3 setBorderColor:cGColor2];

      layer4 = [infoLabel layer];
      [layer4 setBorderWidth:0.5];

      layer7 = +[UIColor redColor];
      v25 = [layer7 colorWithAlphaComponent:0.2];
      cGColor3 = [v25 CGColor];
      layer5 = [cloudButton layer];
      [layer5 setBorderColor:cGColor3];
    }

    else
    {
      layer6 = [(BKLibraryBookshelfCollectionInfoHeader *)self layer];
      v18 = 0.0;
      [layer6 setBorderWidth:0.0];

      layer7 = [infoLabel layer];
      [layer7 setBorderWidth:0.0];
    }

    layer8 = [cloudButton layer];
    [layer8 setBorderWidth:v18];

    attrs3 = [(BKLibraryBookshelfCollectionInfoHeader *)self attrs];
    mainHeaderMetrics = [attrs3 mainHeaderMetrics];

    [(BKLibraryBookshelfCollectionInfoHeader *)self setMainHeaderMetrics:mainHeaderMetrics];
    backgroundColor = [(BKLibraryBookshelfCollectionInfoHeader *)self backgroundColor];
    headerBackgroundColor = [mainHeaderMetrics headerBackgroundColor];

    if (backgroundColor != headerBackgroundColor)
    {
      headerBackgroundColor2 = [mainHeaderMetrics headerBackgroundColor];
      [(BKLibraryBookshelfCollectionInfoHeader *)self setBackgroundColor:headerBackgroundColor2];
    }

    [cloudButton setContentHorizontalAlignment:0];
    [mainHeaderMetrics cloudButtonSpacing];
    [(BKLibraryBookshelfCollectionInfoHeader *)self setCloudButtonSpacing:?];
    [(BKLibraryBookshelfCollectionInfoHeader *)self updateCloudButton];
    [(BKLibraryBookshelfCollectionInfoHeader *)self updateCounts];
    [(BKLibraryBookshelfCollectionInfoHeader *)self _updateMetricsForUploadStatusViewController];
  }
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != obj)
  {
    v5 = +[BKLibraryManager defaultManager];
    v6 = +[NSNotificationCenter defaultCenter];
    dataSource = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];
    [dataSource removeObserver:self forKeyPath:@"sortMode" context:off_100ACEB98];

    dataSource2 = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];

    if (dataSource2)
    {
      [v6 removeObserver:self name:BKLibraryOwnershipDidChangeNotification object:v5];
    }

    objc_storeWeak(&self->_dataSource, obj);
    dataSource3 = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];
    -[BKLibraryBookshelfCollectionInfoHeader setIsSeriesCollection:](self, "setIsSeriesCollection:", [dataSource3 collectionIsSeries]);

    dataSource4 = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];
    if (dataSource4)
    {
      v11 = dataSource4;
      isSeriesCollection = [(BKLibraryBookshelfCollectionInfoHeader *)self isSeriesCollection];

      if (isSeriesCollection)
      {
        [v6 addObserver:self selector:"_ownershipDidChange:" name:BKLibraryOwnershipDidChangeNotification object:v5];
      }
    }

    dataSource5 = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];
    [dataSource5 addObserver:self forKeyPath:@"sortMode" options:0 context:off_100ACEB98];

    [(BKLibraryBookshelfCollectionInfoHeader *)self sortModeDidChange];
  }
}

- (void)_ownershipDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100129B4C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_mocWillSave:(id)save
{
  saveCopy = save;
  if (![(BKLibraryBookshelfCollectionInfoHeader *)self isSeriesCollection])
  {
    v5 = [(BKLibraryBookshelfCollectionInfoHeader *)self frc];
    fetchRequest = [v5 fetchRequest];
    entityName = [fetchRequest entityName];
    v8 = [entityName isEqualToString:@"BKCollectionMember"];

    if (v8)
    {
      object = [saveCopy object];
      [object updatedObjects];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = v31 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      coalescedReloadData = v10;
      if (v11)
      {
        v13 = v11;
        v25 = object;
        v26 = saveCopy;
        selfCopy = self;
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
            entity = [v16 entity];
            name = [entity name];
            v19 = [name isEqualToString:@"BKLibraryAsset"];

            if (v19)
            {
              changedValues = [v16 changedValues];
              allKeys = [changedValues allKeys];
              v22 = [NSSet setWithArray:allKeys];
              propertiesOfInterest = [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy propertiesOfInterest];
              v24 = [v22 intersectsSet:propertiesOfInterest];

              if (v24)
              {

                coalescedReloadData = [(BKLibraryBookshelfCollectionInfoHeader *)selfCopy coalescedReloadData];
                [coalescedReloadData signalWithCompletion:&stru_100A08010];
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

        coalescedReloadData = v10;
LABEL_14:
        object = v25;
        saveCopy = v26;
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
    dataSource = [(BKLibraryBookshelfCollectionInfoHeader *)self dataSource];
    currentSortMode = [dataSource currentSortMode];

    predicate = [currentSortMode predicate];
    v6 = [(BKLibraryBookshelfCollectionInfoHeader *)self frc];
    fetchRequest = [v6 fetchRequest];
    predicate2 = [fetchRequest predicate];
    v9 = [predicate isEqual:predicate2];

    if ((v9 & 1) == 0)
    {
      v10 = [NSFetchRequest alloc];
      entityName = [currentSortMode entityName];
      v12 = [v10 initWithEntityName:entityName];

      entityName2 = [currentSortMode entityName];
      v14 = [entityName2 isEqualToString:@"BKLibraryAsset"];

      [v12 setPredicate:predicate];
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
      uiChildContext = [v19 uiChildContext];
      v21 = [v18 initWithFetchRequest:v12 managedObjectContext:uiChildContext sectionNameKeyPath:v15 cacheName:0];
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

- (void)controllerDidChangeContent:(id)content
{
  [(BKLibraryBookshelfCollectionInfoHeader *)self updateCounts];
  [(BKLibraryBookshelfCollectionInfoHeader *)self updateCloudButton];

  [(BKLibraryBookshelfCollectionInfoHeader *)self setNeedsLayout];
}

- (void)updateAndLayoutCloudButtonAnimated
{
  [(BKLibraryBookshelfCollectionInfoHeader *)self updateCloudButton];
  cloudButton = [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButton];
  [cloudButton layoutIfNeeded];

  [(BKLibraryBookshelfCollectionInfoHeader *)self setNeedsLayout];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012A1A8;
  v4[3] = &unk_100A033C8;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:0.3];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_100ACEB98 == context)
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

  if (off_100ACEBA0 == context)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10012A3F0;
    v17[3] = &unk_100A033C8;
    v17[4] = self;
    v13 = v17;
    goto LABEL_10;
  }

  if (off_100ACEBA8 == context)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10012A3F8;
    v16[3] = &unk_100A033C8;
    v16[4] = self;
    v13 = v16;
    goto LABEL_10;
  }

  if (off_100ACEBB0 == context)
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
  [(BKLibraryBookshelfCollectionInfoHeader *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_11:
}

- (void)networkReachabilityChanged:(id)changed
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
  uploadProgressNavigationController = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];
  topViewController = [uploadProgressNavigationController topViewController];
  v6 = BUDynamicCast();

  mainHeaderMetrics = [(BKLibraryBookshelfCollectionInfoHeader *)self mainHeaderMetrics];
  [v6 setMainHeaderMetrics:mainHeaderMetrics];
}

- (void)uploadProgressButtonPressed:(id)pressed
{
  if ([(BKLibraryBookshelfCollectionInfoHeader *)self wantsCloudButton])
  {
    uploadProgressNavigationController = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];

    if (!uploadProgressNavigationController)
    {
      v5 = [BKLibraryUploadStatusViewController alloc];
      mainHeaderMetrics = [(BKLibraryBookshelfCollectionInfoHeader *)self mainHeaderMetrics];
      v27 = [(BKLibraryUploadStatusViewController *)v5 initWithMetrics:mainHeaderMetrics];

      [(BKLibraryUploadStatusViewController *)v27 setDelegate:self];
      v7 = [[BKLibraryUploadStatusNavigationController alloc] initWithRootViewController:v27];
      [(BKLibraryBookshelfCollectionInfoHeader *)self setUploadProgressNavigationController:v7];

      uploadProgressNavigationController2 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];
      [uploadProgressNavigationController2 setModalPresentationStyle:7];

      uploadProgressNavigationController3 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];
      popoverPresentationController = [uploadProgressNavigationController3 popoverPresentationController];

      [popoverPresentationController setDelegate:self];
      cloudButton = [(BKLibraryBookshelfCollectionInfoHeader *)self cloudButton];
      [popoverPresentationController setSourceView:cloudButton];
      [cloudButton bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [cloudButton touchInsets];
      [popoverPresentationController setSourceRect:{v13 + v23, v15 + v20, v17 - (v23 + v21), v19 - (v20 + v22)}];
      actionHandler = [(BKLibraryBookshelfCollectionInfoHeader *)self actionHandler];
      presentationController = [actionHandler presentationController];
      uploadProgressNavigationController4 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];
      [presentationController presentViewController:uploadProgressNavigationController4 animated:1 completion:0];
    }
  }
}

- (id)libraryUploadStatusPresentingViewController
{
  actionHandler = [(BKLibraryBookshelfCollectionInfoHeader *)self actionHandler];
  presentationController = [actionHandler presentationController];

  return presentationController;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presentedViewController = [dismissCopy presentedViewController];
  uploadProgressNavigationController = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];

  if (presentedViewController == uploadProgressNavigationController)
  {
    [dismissCopy setDelegate:0];
    [(BKLibraryBookshelfCollectionInfoHeader *)self setUploadProgressNavigationController:0];
  }
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentedViewController = [presentation presentedViewController];
  uploadProgressNavigationController = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];

  if (presentedViewController == uploadProgressNavigationController)
  {
    objc_opt_class();
    uploadProgressNavigationController2 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];
    topViewController = [uploadProgressNavigationController2 topViewController];
    v8 = BUDynamicCast();

    [v8 setPresentedInPopover:1];
  }
}

- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style
{
  presentedViewController = [controller presentedViewController];
  uploadProgressNavigationController = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];

  if (presentedViewController == uploadProgressNavigationController)
  {
    objc_opt_class();
    uploadProgressNavigationController2 = [(BKLibraryBookshelfCollectionInfoHeader *)self uploadProgressNavigationController];
    topViewController = [uploadProgressNavigationController2 topViewController];
    v9 = BUDynamicCast();

    [v9 setPresentedInPopover:0];
  }

  return 0;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  if (!collection)
  {
    return 0;
  }

  collectionCopy = collection;
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  verticalSizeClass = [collectionCopy verticalSizeClass];

  if (verticalSizeClass == 1 || horizontalSizeClass == 1)
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