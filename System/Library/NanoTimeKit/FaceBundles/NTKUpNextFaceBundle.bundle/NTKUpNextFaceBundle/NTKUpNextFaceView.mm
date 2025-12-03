@interface NTKUpNextFaceView
+ (id)_reuseIdentifierForContent:(id)content;
- (BOOL)_applyShowIdealizedContent;
- (BOOL)_shouldDeferUpdate;
- (BOOL)_shouldUseCanonicalContent;
- (BOOL)_snapshotHasChangesToVisibleItems:(id)items;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)engineController:(id)controller isElementAtIndexPathVisible:(id)visible;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGPoint)_defaultPointForDefaultMode;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (NTKUpNextFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_configureCellForItemWithElement:(id)element atIndexPath:(id)path inCollectionView:(id)view;
- (id)_configureSupplementaryViewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path inCollectionView:(id)view;
- (id)_contentAtIndexPath:(id)path;
- (id)_detachedComplicationDisplays;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_sectionEnumerationOrder;
- (id)_swatchImageForColorOption:(id)option size:(CGSize)size;
- (unint64_t)_distanceForIndexPathFromNow:(id)now;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyShowsLockedUI;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionWithFraction:(double)fraction interpolatedPalette:(id)palette onCell:(id)cell;
- (void)_availableDataSourcesDidChange;
- (void)_becameActiveFace;
- (void)_becameInactiveFace;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterSettingViewMode:(int64_t)mode scroll:(BOOL)scroll targetOffset:(CGPoint)offset needsLayout:(BOOL)layout;
- (void)_configureCollectionViewDataSource;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureVisibleCell:(id)cell;
- (void)_finalizeForSnapshotting:(id)snapshotting;
- (void)_handleOrdinaryScreenWake;
- (void)_handleViewModeTapGesture:(id)gesture;
- (void)_layoutTimeLabelForViewMode:(int64_t)mode;
- (void)_layoutTimeLabelPlatterViewMode:(int64_t)mode;
- (void)_loadContentViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContent:(id)content;
- (void)_loadSnapshotContentViews;
- (void)_logContent:(id)content withIdentifier:(id)identifier;
- (void)_logDataSourceSnapshot:(id)snapshot withName:(id)name;
- (void)_performWristRaiseAnimation;
- (void)_prepareForEditing;
- (void)_prepareWristRaiseAnimation;
- (void)_reloadContentIfNeeded;
- (void)_replaceDataSourceElement:(id)element withReloadedREElement:(id)eElement;
- (void)_setSiriBlurColor;
- (void)_setupCell:(id)cell withContent:(id)content representedIdentifier:(id)identifier;
- (void)_showSiriUnavailableAlert:(id)alert;
- (void)_startPositiveDwellForTopElementsTimerIfNeeded;
- (void)_startViewResetTimer;
- (void)_stopPositiveDwellForTopElementsTimer;
- (void)_stopViewResetTimer;
- (void)_switchViewModeToDefault;
- (void)_unloadContentViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateApplicationIdentifiersAndLocationAuthorization;
- (void)_updateDisabledDataSources;
- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionViewDeferralStateChanged;
- (void)dealloc;
- (void)elementAction:(id)action didFinishTask:(BOOL)task;
- (void)elementAction:(id)action wantsToPerformTapActionForComplicationSlot:(id)slot;
- (void)elementAction:(id)action wantsViewControllerDisplayed:(id)displayed;
- (void)engineController:(id)controller didReloadContent:(id)content withIdentifier:(id)identifier;
- (void)engineController:(id)controller didReloadElement:(id)element;
- (void)engineController:(id)controller didRemoveContent:(id)content atIndexPath:(id)path;
- (void)engineController:(id)controller performBatchUpdateBlock:(id)block completion:(id)completion;
- (void)engineControllerDidFinishUpdatingRelevance:(id)relevance;
- (void)layoutSubviews;
- (void)performScrollTestNamed:(id)named completion:(id)completion;
- (void)screenDidTurnOffAnimated:(BOOL)animated;
- (void)screenWillTurnOnAnimated:(BOOL)animated;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTimeLabelBackground;
@end

@implementation NTKUpNextFaceView

- (NTKUpNextFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  v41.receiver = self;
  v41.super_class = NTKUpNextFaceView;
  v10 = [(NTKUpNextFaceView *)&v41 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifierCopy];
  v11 = v10;
  if (v10)
  {
    v10->_interactiveState = 0;
    v12 = +[NSSet set];
    dwellIndexPathes = v11->_dwellIndexPathes;
    v11->_dwellIndexPathes = v12;

    v14 = +[NSMutableSet set];
    reloadedElements = v11->_reloadedElements;
    v11->_reloadedElements = v14;

    v16 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    utilityComplicationFactory = v11->_utilityComplicationFactory;
    v11->_utilityComplicationFactory = v16;

    [(NTKUtilityComplicationFactory *)v11->_utilityComplicationFactory setForegroundAlpha:1.0];
    [(NTKUtilityComplicationFactory *)v11->_utilityComplicationFactory setForegroundImageAlpha:1.0];
    [(NTKUpNextFaceView *)v11 setClipsToBounds:1];
    [(NTKUpNextFaceView *)v11 _setSiriBlurColor];
    objc_initWeak(&location, v11);
    v18 = &_dispatch_main_q;
    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_2FF8;
    v38 = &unk_18610;
    objc_copyWeak(&v39, &location);
    v19 = [REUpNextScheduler schedulerWithQueue:&_dispatch_main_q updateBlock:&v35];
    applicationIdentifierUpdateScheduler = v11->_applicationIdentifierUpdateScheduler;
    v11->_applicationIdentifierUpdateScheduler = v19;

    v21 = [UIView alloc];
    [(NTKUpNextFaceView *)v11 bounds:v35];
    Width = CGRectGetWidth(v42);
    [(NTKUpNextFaceView *)v11 bounds];
    v23 = [v21 initWithFrame:{0.0, 0.0, Width, CGRectGetHeight(v43)}];
    scalableView = v11->_scalableView;
    v11->_scalableView = v23;

    [(UIView *)v11->_scalableView setAutoresizingMask:18];
    contentView = [(NTKUpNextFaceView *)v11 contentView];
    [contentView addSubview:v11->_scalableView];

    [(UIView *)v11->_scalableView setOpaque:0];
    v26 = +[UIColor clearColor];
    [(UIView *)v11->_scalableView setBackgroundColor:v26];

    [(NTKUpNextFaceView *)v11 _updateCrownInvertedSetting];
    v27 = +[CLKSensitiveUIMonitor sharedMonitor];
    [v27 addSensitiveUIObserver:v11];

    device = [(NTKUpNextFaceView *)v11 device];
    deviceCategory = [device deviceCategory];

    if (deviceCategory != &dword_0 + 1)
    {
      v30 = +[NSNotificationCenter defaultCenter];
      [v30 addObserver:v11 selector:"updateTimeLabelBackground" name:UIAccessibilityReduceTransparencyStatusDidChangeNotification object:0];
    }

    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v11 selector:"_availableDataSourcesDidChange" name:REAvailableDataSourceIdentifiersDidChange object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v11, sub_3038, NTKSiriDefaultsDisabledDataSourcesDidChangeNotification_Remote, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v33 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v33, v11, sub_3040, NTKSiriDefaultsThirdPartyDataSourcesDidChangeNotification_Remote, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)_showSiriUnavailableAlert:(id)alert
{
  alertCopy = alert;
  v4 = [(NTKUpNextFaceView *)self dataMode]== &dword_0 + 1;
  v5 = alertCopy;
  if (v4)
  {
    object = [alertCopy object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate = [(NTKUpNextFaceView *)self delegate];
      [delegate faceViewWantsToPresentViewController:object];
    }

    v5 = alertCopy;
  }
}

- (void)dealloc
{
  v3 = +[CLKSensitiveUIMonitor sharedMonitor];
  [v3 removeSensitiveUIObserver:self];

  device = [(NTKUpNextFaceView *)self device];
  deviceCategory = [device deviceCategory];

  if (deviceCategory != &dword_0 + 1)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:UIAccessibilityReduceTransparencyStatusDidChangeNotification object:0];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:REAvailableDataSourceIdentifiersDidChange object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, 0, 0);
  v9.receiver = self;
  v9.super_class = NTKUpNextFaceView;
  [(NTKUpNextFaceView *)&v9 dealloc];
}

- (void)screenWillTurnOnAnimated:(BOOL)animated
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_325C;
  block[3] = &unk_18638;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)screenDidTurnOffAnimated:(BOOL)animated
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3394;
  block[3] = &unk_18638;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  if (!animated)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_33E0;
    v5[3] = &unk_18638;
    v5[4] = self;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)layoutSubviews
{
  if (([(NTKUpNextFaceView *)self zooming]& 1) == 0 && !self->_isAnimating)
  {
    v20.receiver = self;
    v20.super_class = NTKUpNextFaceView;
    [(NTKUpNextFaceView *)&v20 layoutSubviews];
    [(NTKUpNextFaceView *)self _layoutTimeLabelForViewMode:[(NTKUpNextFaceView *)self viewMode]];
    [(NTKUpNextFaceView *)self _layoutTimeLabelPlatterViewMode:[(NTKUpNextFaceView *)self viewMode]];
    [(UIView *)self->_scalableView bounds];
    x = v3;
    y = v5;
    width = v7;
    height = v9;
    device = [(NTKUpNextFaceView *)self device];
    sub_B3F4(device, v18);
    v12 = v19;

    if (v12 > 0.0)
    {
      v13 = v12 * 0.5;
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v22 = CGRectInset(v21, 0.0, v13);
      v23 = CGRectOffset(v22, 0.0, v13);
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
    }

    device2 = [(NTKUpNextFaceView *)self device];
    sub_B3F4(device2, &v17);
    [(NTKUpNextFaceView *)self bounds];
    CGRectGetWidth(v24);
    CLKRoundForDevice();
    v16 = v15;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v26 = CGRectInset(v25, v16, 0.0);
    [(NTKUpNextCollectionView *)self->_collectionView setFrame:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  timeLabelDefaultStyle = self->_timeLabelDefaultStyle;
  self->_timeLabelDefaultStyle = 0;
  changeCopy = change;

  timeLabelSmallInUpperRightCornerStyle = self->_timeLabelSmallInUpperRightCornerStyle;
  self->_timeLabelSmallInUpperRightCornerStyle = 0;

  v7.receiver = self;
  v7.super_class = NTKUpNextFaceView;
  [(NTKUpNextFaceView *)&v7 traitCollectionDidChange:changeCopy];
}

- (id)_detachedComplicationDisplays
{
  v3 = +[NSMutableArray array];
  engine = [(REUIRelevanceEngineController *)self->_engineController engine];
  dataSourceCatalog = [engine dataSourceCatalog];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_37B4;
  v8[3] = &unk_186A0;
  v6 = v3;
  v9 = v6;
  [dataSourceCatalog enumerateDataSources:v8];

  return v6;
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  slotCopy = slot;
  v9 = NTKComplicationSlotTopRight;
  complicationCopy = complication;
  if ([slotCopy isEqualToString:v9])
  {
    v11 = [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory newViewForComplication:complicationCopy family:family forSlot:13];

    [(NTKUpNextFaceView *)self _configureComplicationView:v11 forSlot:slotCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKUpNextFaceView;
    v11 = [(NTKUpNextFaceView *)&v13 _newLegacyViewForComplication:complicationCopy family:family slot:slotCopy];
  }

  return v11;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  faceColorPalette = [(NTKUpNextFaceView *)self faceColorPalette];
  v8 = [NTKPigmentEditOption pigmentNamed:ntk_special_multicolor];
  v9 = [faceColorPalette copyWithOption:v8];

  LODWORD(faceColorPalette) = [slotCopy isEqualToString:NTKComplicationSlotTopRight];
  if (faceColorPalette)
  {
    v10 = viewCopy;
    [v10 setFontWeight:UIFontWeightBold];
    v11 = +[UIColor whiteColor];
    [v10 setForegroundColor:v11];

    [v10 setShadowColor:0];
    [v10 setForegroundAlpha:1.0];
    [v10 setForegroundImageAlpha:1.0];
    [v10 setUsesLegibility:0];
    [v10 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", 5)}];
    [v10 setSuppressesInternalColorOverrides:1];
    [v10 setHidden:0];
    v12 = +[UIColor clearColor];
    [v10 setBackgroundColor:v12];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v13 = viewCopy;
    v14 = +[UIColor clearColor];
    [v13 setBackgroundColor:v14];

    device = [(NTKUpNextFaceView *)self device];
    sub_B3F4(device, v17);
    [v13 setContentHeight:v18];

    v12 = +[UIColor whiteColor];
    [v13 setForegroundColor:v12];
  }

  [viewCopy applyFaceColorPalette:v9 units:1095];
LABEL_6:
}

- (void)_reloadContentIfNeeded
{
  if (self->_engineInitiallyLoaded && (!NTKIsDaemonOrFaceSnapshotService() || self->_engineInitiallyLoaded))
  {
    v3 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      needsReloadedContent = self->_needsReloadedContent;
      *buf = 67109120;
      v9 = needsReloadedContent;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[datasource] requested full reload with (_needsReloadedContent=%d)", buf, 8u);
    }

    if (self->_isApplyingSnapshot)
    {
      v5 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[datasource] deferring full reload to completion block of current reload", buf, 2u);
      }
    }

    else if (self->_needsReloadedContent)
    {
      v6 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[datasource] non-animated reload being performed", buf, 2u);
      }

      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_3D4C;
      v7[3] = &unk_18638;
      v7[4] = self;
      [(NTKUpNextFaceView *)self updateCollectionViewSnapshotAnimated:0 completion:v7];
    }
  }
}

- (void)_loadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKUpNextFaceView;
  [(NTKUpNextFaceView *)&v4 _loadSnapshotContentViews];
  [(NTKUpNextFaceView *)self _loadEngineController];
  [(NTKUpNextFaceView *)self _loadContentViews];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3E74;
  block[3] = &unk_18638;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_loadContentViews
{
  if (!self->_collectionView)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    memset(v41, 0, sizeof(v41));
    device = [(NTKUpNextFaceView *)self device];
    sub_B3F4(device, v41);

    v4 = objc_alloc_init(NTKUpNextCollectionViewFlowLayout);
    layout = self->_layout;
    self->_layout = v4;

    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setScrollDirection:0];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setMinimumLineSpacing:*(&v42 + 1)];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setShowingAllAttributes:0];
    v6 = self->_layout;
    v7 = [NSIndexPath indexPathForItem:0 inSection:2];
    [(NTKUpNextCollectionViewFlowLayout *)v6 setTopElementIndexPath:v7];

    v8 = self->_layout;
    v9 = [NSIndexPath indexPathForItem:1 inSection:2];
    [(NTKUpNextCollectionViewFlowLayout *)v8 setBottomElementIndexPath:v9];

    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setTopOffsetForSnapping:*(&v46 + 1)];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setTopOffsetForScrolling:*(&v44 + 1)];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setStatusBarDecorationHeight:*(&v49 + 1)];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setLowTransitionScale:*(&v50 + 1)];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setHighTransitionScale:*(&v51 + 1)];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setHighTransitionShift:*(&v52 + 1)];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setLowTransitionShift:*(&v53 + 1)];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setTopOffsetForScrolling:*&v45];
    [(NTKUpNextFaceView *)self bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(NTKUpNextFaceView *)self bounds];
    v18 = (CGRectGetWidth(v57) - *&v49) * 0.5;
    v58.origin.x = v11;
    v58.origin.y = v13;
    v58.size.width = v15;
    v58.size.height = v17;
    v59 = CGRectInset(v58, v18, 0.0);
    v19 = [[NTKUpNextCollectionView alloc] initWithFrame:self->_layout collectionViewLayout:v59.origin.x, v59.origin.y, v59.size.width, v59.size.height];
    collectionView = self->_collectionView;
    self->_collectionView = v19;

    v21 = self->_collectionView;
    v22 = +[UIColor blackColor];
    [(NTKUpNextCollectionView *)v21 setBackgroundColor:v22];

    [(NTKUpNextCollectionView *)self->_collectionView _setAutomaticContentOffsetAdjustmentEnabled:0];
    layer = [(NTKUpNextCollectionView *)self->_collectionView layer];
    [layer setAllowsGroupOpacity:1];

    [(NTKUpNextCollectionView *)self->_collectionView setDelegate:self];
    [(NTKUpNextCollectionView *)self->_collectionView setPrefetchingEnabled:0];
    [(NTKUpNextCollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
    [(NTKUpNextCollectionView *)self->_collectionView setClipsToBounds:0];
    [(NTKUpNextCollectionView *)self->_collectionView _setResetsBoundingPathForSubtree:0];
    [(NTKUpNextCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NTKUpNextLargeTextCellReuseIdentifier"];
    [(NTKUpNextCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NTKUpNextMultilineCellReuseIdentifier"];
    [(NTKUpNextCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NTKUpNextMatchupCellReuseIdentifier"];
    [(NTKUpNextCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NTKUpNextPhotoCellReuseIdentifier"];
    [(NTKUpNextCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NTKUpNextThumbnailCellReuseIdentifier"];
    [(NTKUpNextCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NTKUpNextLargeWithDetailTextCellReuseIdentifier"];
    [(NTKUpNextCollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"NTKUpNextHeaderReuseIdentifier"];
    [(NTKUpNextCollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NTKUpNextGaugeCellReuseIdentifier"];
    device2 = [(NTKUpNextFaceView *)self device];
    deviceCategory = [device2 deviceCategory];

    v26 = &off_18330;
    if (deviceCategory != &dword_0 + 1)
    {
      v26 = off_18328;
    }

    v27 = *v26;
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout registerClass:objc_opt_class() forDecorationViewOfKind:NTKUpNextCollectionViewFlowLayoutStatusBarDecorationKind];
    v28 = self->_layout;
    [(NTKUpNextCollectionView *)self->_collectionView bounds];
    [(NTKUpNextCollectionViewFlowLayout *)v28 setItemSize:CGRectGetWidth(v60), *(&v48 + 1)];
    [(NTKUpNextCollectionView *)self->_collectionView setDecelerationRate:UIScrollViewDecelerationRateFast];
    [(UIView *)self->_scalableView addSubview:self->_collectionView];
    [(NTKUpNextCollectionView *)self->_collectionView setAlwaysBounceVertical:1];
    [(NTKUpNextFaceView *)self _configureCollectionViewDataSource];
    [(NTKUpNextFaceView *)self _reloadCollectionViewData];
    v29 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    timeLabelPlatter = self->_timeLabelPlatter;
    self->_timeLabelPlatter = v29;

    layer2 = [(UIView *)self->_timeLabelPlatter layer];
    [layer2 setCornerRadius:*v41];

    layer3 = [(UIView *)self->_timeLabelPlatter layer];
    [layer3 setCornerCurve:kCACornerCurveContinuous];

    layer4 = [(UIView *)self->_timeLabelPlatter layer];
    [layer4 setMasksToBounds:1];

    device3 = [(NTKUpNextFaceView *)self device];
    deviceCategory2 = [device3 deviceCategory];

    if (deviceCategory2 == &dword_0 + 1)
    {
      layer5 = [(UIView *)self->_timeLabelPlatter layer];
      v37 = +[UIColor _externalSystemDarkGrayColor];
      [layer5 setBackgroundColor:{objc_msgSend(v37, "CGColor")}];
    }

    else
    {
      [(NTKUpNextFaceView *)self updateTimeLabelBackground];
    }

    [(UIView *)self->_scalableView addSubview:self->_timeLabelPlatter];
    timeView = [(NTKUpNextFaceView *)self timeView];
    [(NTKUpNextFaceView *)self addSubview:timeView];

    v39 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleViewModeTapGesture:"];
    viewModeTapGesture = self->_viewModeTapGesture;
    self->_viewModeTapGesture = v39;

    [(UITapGestureRecognizer *)self->_viewModeTapGesture setNumberOfTouchesRequired:1];
    [(UITapGestureRecognizer *)self->_viewModeTapGesture setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)self->_viewModeTapGesture setEnabled:1];
    [(UITapGestureRecognizer *)self->_viewModeTapGesture setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)self->_viewModeTapGesture setDelegate:self];
    [(NTKUpNextFaceView *)self addGestureRecognizer:self->_viewModeTapGesture];
  }
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKUpNextFaceView;
  [(NTKUpNextFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKUpNextFaceView *)self _unloadContentViews];
}

- (void)_unloadContentViews
{
  collectionView = self->_collectionView;
  if (collectionView)
  {
    [(NTKUpNextCollectionView *)collectionView removeFromSuperview];
    v4 = self->_collectionView;
    self->_collectionView = 0;

    collectionViewDataSource = self->_collectionViewDataSource;
    self->_collectionViewDataSource = 0;

    layout = self->_layout;
    self->_layout = 0;

    [(UIView *)self->_timeLabelPlatter removeFromSuperview];
    timeLabelPlatter = self->_timeLabelPlatter;
    self->_timeLabelPlatter = 0;

    [(NTKUpNextFaceView *)self removeGestureRecognizer:self->_viewModeTapGesture];
    viewModeTapGesture = self->_viewModeTapGesture;
    self->_viewModeTapGesture = 0;
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v9.receiver = self;
  v9.super_class = NTKUpNextFaceView;
  [NTKUpNextFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  CLKInterpolateBetweenFloatsClipped();
  v7 = v6;
  [(NTKUpNextCollectionView *)self->_collectionView setAlpha:?];
  timeView = [(NTKUpNextFaceView *)self timeView];
  [timeView setAlpha:v7];
}

- (void)_switchViewModeToDefault
{
  [(NTKUpNextFaceView *)self _defaultPointForDefaultMode];
  y = CGPointZero.y;

  [NTKUpNextFaceView _setViewMode:"_setViewMode:scroll:scrollToPoint:secondaryPoint:force:velocity:animated:" scroll:0 scrollToPoint:1 secondaryPoint:0 force:0 velocity:? animated:?];
}

- (void)performScrollTestNamed:(id)named completion:(id)completion
{
  namedCopy = named;
  completionCopy = completion;
  [(NTKUpNextFaceView *)self _setViewMode:2 scroll:0 scrollToPoint:1 secondaryPoint:0 force:CGPointZero.x velocity:CGPointZero.y animated:CGPointZero.x, CGPointZero.y, 0.0];
  [(NTKUpNextFaceView *)self setNeedsLayout];
  [(NTKUpNextFaceView *)self layoutIfNeeded];
  objc_initWeak(&location, self);
  v8 = dispatch_time(0, 5000000000);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_4870;
  v11[3] = &unk_186F0;
  objc_copyWeak(&v14, &location);
  v12 = namedCopy;
  v13 = completionCopy;
  v9 = namedCopy;
  v10 = completionCopy;
  dispatch_after(v8, &_dispatch_main_q, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)collectionViewDeferralStateChanged
{
  [(NTKUpNextFaceView *)self _shouldDeferUpdate];
  if (self->_needsReloadedContent)
  {
    v3 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[datasource] applying a deferred reload", v4, 2u);
    }

    [(NTKUpNextFaceView *)self _reloadContentIfNeeded];
  }

  else if (self->_hasDeferredUpdate)
  {
    self->_hasDeferredUpdate = 0;
    self->_needsReloadedContent = 1;

    [(NTKUpNextFaceView *)self _reloadContentIfNeeded];
  }
}

- (BOOL)_snapshotHasChangesToVisibleItems:(id)items
{
  itemsCopy = items;
  snapshot = [(UICollectionViewDiffableDataSource *)self->_collectionViewDataSource snapshot];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(NTKUpNextCollectionView *)self->_collectionView indexPathsForVisibleItems];
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [(UICollectionViewDiffableDataSource *)self->_collectionViewDataSource itemIdentifierForIndexPath:*(*(&v16 + 1) + 8 * i)];
        v11 = [snapshot indexOfItemIdentifier:v10];
        v12 = [itemsCopy indexOfItemIdentifier:v10];

        if (v11 != v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)_replaceDataSourceElement:(id)element withReloadedREElement:(id)eElement
{
  elementCopy = element;
  eElementCopy = eElement;
  v8 = [(UICollectionViewDiffableDataSource *)self->_collectionViewDataSource indexPathForItemIdentifier:elementCopy];
  v9 = [(UICollectionViewDiffableDataSource *)self->_collectionViewDataSource itemIdentifierForIndexPath:v8];
  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = elementCopy;
    v13 = 2112;
    v14 = eElementCopy;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Replacing element %@ with element %@ for index path %@", &v11, 0x20u);
  }

  [v9 setElement:eElementCopy];
}

- (void)_availableDataSourcesDidChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_579C;
  block[3] = &unk_18638;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_sectionEnumerationOrder
{
  sectionOrder = [(REUIRelevanceEngineController *)self->_engineController sectionOrder];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [sectionOrder count]);
  v4 = REDefaultSectionIdentifier;
  if ([sectionOrder containsObject:REDefaultSectionIdentifier])
  {
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [sectionOrder indexOfObject:v4]);
    [v3 addObject:v5];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_5928;
  v9[3] = &unk_18768;
  v10 = v3;
  v6 = v3;
  [sectionOrder enumerateObjectsUsingBlock:v9];
  v7 = [v6 copy];

  return v7;
}

- (void)_updateApplicationIdentifiersAndLocationAuthorization
{
  numberOfSections = [(REUIRelevanceEngineController *)self->_engineController numberOfSections];
  if (numberOfSections)
  {
    v4 = numberOfSections;
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      v5 += [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:i];
    }
  }

  else
  {
    v5 = 0;
  }

  v58 = v5;
  v56 = +[NSMutableOrderedSet orderedSet];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = [(NTKUpNextFaceView *)self _sectionEnumerationOrder];
  v55 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v55)
  {
    v54 = *v68;
    v7 = v5;
    v60 = REMetadataBundleIdentifierKey;
    do
    {
      v8 = 0;
      do
      {
        if (*v68 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v57 = v8;
        unsignedIntegerValue = [*(*(&v67 + 1) + 8 * v8) unsignedIntegerValue];
        v9 = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:?];
        v59 = +[NSMutableDictionary dictionary];
        v61 = v9;
        if (v9)
        {
          v10 = 0;
          do
          {
            v11 = [NSIndexPath indexPathWithElement:v10 inUpNextSection:unsignedIntegerValue];
            v12 = [(REUIRelevanceEngineController *)self->_engineController identifierForElementAtIndexPath:v11];
            v13 = [(REUIRelevanceEngineController *)self->_engineController metadataForElementWithIdentifier:v12];
            v14 = [v13 objectForKeyedSubscript:v60];

            engine = [(REUIRelevanceEngineController *)self->_engineController engine];
            dataSourceCatalog = [engine dataSourceCatalog];
            v17 = [dataSourceCatalog applicationIdentifierForDataSourceWithIdentifier:v14];

            engine2 = [(REUIRelevanceEngineController *)self->_engineController engine];
            dataSourceCatalog2 = [engine2 dataSourceCatalog];
            v20 = [dataSourceCatalog2 wantsApplicationPrewarmForDataSourceWithIdentifier:v14];

            if (v17)
            {
              v21 = v20 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (!v21)
            {
              v22 = [(NTKUpNextFaceView *)self _distanceForIndexPathFromNow:v11];
              v23 = ((v58 - v22) / v7) * ((v58 - v22) / v7);
              v24 = [v59 objectForKeyedSubscript:v17];
              [v24 floatValue];
              v26 = v25 + v23;

              *&v27 = v26;
              v28 = [NSNumber numberWithFloat:v27];
              [v59 setObject:v28 forKeyedSubscript:v17];
            }

            ++v10;
          }

          while (v61 != v10);
        }

        v29 = [v59 keysSortedByValueUsingComparator:&stru_187A8];
        [v56 addObjectsFromArray:v29];

        v8 = v57 + 1;
      }

      while ((v57 + 1) != v55);
      v55 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v55);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  engine3 = [(REUIRelevanceEngineController *)self->_engineController engine];
  dataSourceCatalog3 = [engine3 dataSourceCatalog];
  dataSourceIdentifiers = [dataSourceCatalog3 dataSourceIdentifiers];

  v33 = [dataSourceIdentifiers countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v64;
    do
    {
      for (j = 0; j != v34; j = j + 1)
      {
        if (*v64 != v35)
        {
          objc_enumerationMutation(dataSourceIdentifiers);
        }

        v37 = *(*(&v63 + 1) + 8 * j);
        disabledDataSources = [(REUIRelevanceEngineController *)self->_engineController disabledDataSources];
        v39 = [disabledDataSources containsObject:v37];

        if ((v39 & 1) == 0)
        {
          engine4 = [(REUIRelevanceEngineController *)self->_engineController engine];
          dataSourceCatalog4 = [engine4 dataSourceCatalog];
          v42 = [dataSourceCatalog4 requiresLocationInUseAssertonForDataSourceWithIdentifier:v37];

          if (v42)
          {
            engine5 = [(REUIRelevanceEngineController *)self->_engineController engine];
            dataSourceCatalog5 = [engine5 dataSourceCatalog];
            v45 = [dataSourceCatalog5 applicationIdentifierForDataSourceWithIdentifier:v37];

            [v56 addObject:v45];
          }
        }
      }

      v34 = [dataSourceIdentifiers countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v34);
  }

  v46 = [v56 set];
  v47 = [(NSOrderedSet *)self->_currentApplicationIdentifiers set];
  v48 = [v46 isEqualToSet:v47];

  v49 = [(NTKUpNextFaceView *)self dataMode]!= &dword_0 + 1 && [(NTKUpNextFaceView *)self dataMode]!= &dword_0 + 2;
  v50 = [v56 copy];
  currentApplicationIdentifiers = self->_currentApplicationIdentifiers;
  self->_currentApplicationIdentifiers = v50;

  if (((v48 | v49) & 1) == 0)
  {
    v52 = +[CLKComplicationObserver sharedObserver];
    [v52 complicationListDidChange];
  }
}

- (unint64_t)_distanceForIndexPathFromNow:(id)now
{
  nowCopy = now;
  upNextSection = [nowCopy upNextSection];
  element = 0;
  if (upNextSection <= 1)
  {
    if (upNextSection)
    {
      if (upNextSection == (&dword_0 + 1))
      {
        v10 = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:1];
        element = (v10 - [nowCopy element]);
      }
    }

    else
    {
      v12 = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:0];
      v13 = v12 - [nowCopy element];
      element = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:1]+ v13;
    }
  }

  else if (upNextSection == (&dword_0 + 2))
  {
    element = [nowCopy element];
  }

  else if (upNextSection == (&dword_0 + 3))
  {
    element2 = [nowCopy element];
    element = &element2[[(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:2]];
  }

  else if (upNextSection == &dword_4)
  {
    v7 = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:4];
    v8 = v7 - [nowCopy element];
    v9 = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:2];
    element = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:3]+ v9 + v8;
  }

  return element;
}

- (void)_startViewResetTimer
{
  viewResetTimer = self->_viewResetTimer;
  if (viewResetTimer)
  {
    [(NSTimer *)viewResetTimer invalidate];
  }

  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6154;
  v6[3] = &unk_187D0;
  objc_copyWeak(&v7, &location);
  v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:30.0];
  v5 = self->_viewResetTimer;
  self->_viewResetTimer = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_stopViewResetTimer
{
  [(NSTimer *)self->_viewResetTimer invalidate];
  viewResetTimer = self->_viewResetTimer;
  self->_viewResetTimer = 0;
}

- (void)_configureCollectionViewDataSource
{
  objc_initWeak(&location, self);
  v3 = [UICollectionViewDiffableDataSource alloc];
  collectionView = self->_collectionView;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_63B4;
  v9[3] = &unk_187F8;
  objc_copyWeak(&v10, &location);
  v5 = [v3 initWithCollectionView:collectionView cellProvider:v9];
  collectionViewDataSource = self->_collectionViewDataSource;
  self->_collectionViewDataSource = v5;

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6464;
  v7[3] = &unk_18820;
  objc_copyWeak(&v8, &location);
  [(UICollectionViewDiffableDataSource *)self->_collectionViewDataSource setSupplementaryViewProvider:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_logDataSourceSnapshot:(id)snapshot withName:(id)name
{
  snapshotCopy = snapshot;
  nameCopy = name;
  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = nameCopy;
    v35 = 2112;
    v36 = snapshotCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[datasource] (%@):(%@)", buf, 0x16u);
  }

  v17 = nameCopy;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [snapshotCopy sectionIdentifiers];
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v19 = *v28;
    v20 = snapshotCopy;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v8;
        v9 = *(*(&v27 + 1) + 8 * v8);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v10 = [snapshotCopy itemIdentifiersInSectionWithIdentifier:{v9, v17}];
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * i);
              v16 = _NTKLoggingObjectForDomain();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v34 = v9;
                v35 = 2112;
                v36 = v15;
                _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[datasource] %@:%@", buf, 0x16u);
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v12);
        }

        v8 = v22 + 1;
        snapshotCopy = v20;
      }

      while ((v22 + 1) != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }
}

- (void)_logContent:(id)content withIdentifier:(id)identifier
{
  contentCopy = content;
  identifierCopy = identifier;
  headerTextProvider = [contentCopy headerTextProvider];
  attributedString = [headerTextProvider attributedString];
  string = [attributedString string];

  description1TextProvider = [contentCopy description1TextProvider];
  attributedString2 = [description1TextProvider attributedString];
  string2 = [attributedString2 string];

  description2TextProvider = [contentCopy description2TextProvider];
  attributedString3 = [description2TextProvider attributedString];
  string3 = [attributedString3 string];

  description3TextProvider = [contentCopy description3TextProvider];
  attributedString4 = [description3TextProvider attributedString];
  string4 = [attributedString4 string];

  v19 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138413570;
    v21 = identifierCopy;
    v22 = 1024;
    style = [contentCopy style];
    v24 = 2112;
    v25 = string;
    v26 = 2112;
    v27 = string2;
    v28 = 2112;
    v29 = string3;
    v30 = 2112;
    v31 = string4;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[datasource] %@ content=(style=%d, headerText=%@, description1=%@, description2=%@, description3=%@)", &v20, 0x3Au);
  }
}

- (id)_configureCellForItemWithElement:(id)element atIndexPath:(id)path inCollectionView:(id)view
{
  elementCopy = element;
  pathCopy = path;
  viewCopy = view;
  v11 = [(NTKUpNextFaceView *)self _contentAtIndexPath:pathCopy];
  v12 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [elementCopy identifier];
    v19 = 138412546;
    v20 = identifier;
    v21 = 2112;
    v22 = pathCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[datasource] loaded identifier (%@) into cell at index path: (%@)", &v19, 0x16u);
  }

  identifier2 = [elementCopy identifier];
  [(NTKUpNextFaceView *)self _logContent:v11 withIdentifier:identifier2];

  v15 = [NTKUpNextFaceView _reuseIdentifierForContent:v11];
  v16 = [viewCopy dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:pathCopy];

  identifier3 = [elementCopy identifier];
  [(NTKUpNextFaceView *)self _setupCell:v16 withContent:v11 representedIdentifier:identifier3];

  return v16;
}

- (id)_configureSupplementaryViewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path inCollectionView:(id)view
{
  pathCopy = path;
  v7 = [view dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"NTKUpNextHeaderReuseIdentifier" forIndexPath:pathCopy];
  upNextSection = [pathCopy upNextSection];

  v9 = 0;
  if (upNextSection > 1)
  {
    if (upNextSection == (&dword_0 + 2))
    {
      v10 = @"UP_NEXT_HEADER";
      v11 = @"Up Next";
    }

    else if (upNextSection == (&dword_0 + 3))
    {
      v10 = @"UP_NEXT_TOMORROW_HEADER";
      v11 = @"Tomorrow";
    }

    else
    {
      if (upNextSection != &dword_4)
      {
        goto LABEL_15;
      }

      v10 = @"UP_NEXT_UPCOMING_HEADER";
      v11 = @"Upcoming";
    }
  }

  else
  {
    if (upNextSection == -1)
    {
      v9 = &stru_189F0;
      goto LABEL_15;
    }

    if (upNextSection)
    {
      if (upNextSection != (&dword_0 + 1))
      {
        goto LABEL_15;
      }

      v10 = @"UP_NEXT_RECENT_HEADER";
      v11 = @"Recent";
    }

    else
    {
      v10 = @"UP_NEXT_ALL_DAY_HEADER";
      v11 = @"All-Day";
    }
  }

  v9 = [NTKUpNextFaceBundle localizedStringForKey:v10 comment:v11];
LABEL_15:
  v12 = [CLKSimpleTextProvider textProviderWithText:v9];
  [v12 finalize];
  [v7 setTextProvider:v12];

  return v7;
}

- (void)_configureVisibleCell:(id)cell
{
  cellContentBackground = self->_cellContentBackground;
  cellCopy = cell;
  [cellCopy setContentImage:cellContentBackground animated:0];
  [cellCopy setFilterProvider:self];
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([viewCopy numberOfItemsInSection:section])
  {
    [viewCopy bounds];
    Width = CGRectGetWidth(v16);
    device = [(NTKUpNextFaceView *)self device];
    sub_B3F4(device, v13);
    height = v14;
  }

  else
  {
    Width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v11 = Width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKUpNextFaceView *)self _configureVisibleCell:cellCopy];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(NTKUpNextFaceView *)self _updateVisibilityForCells];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(NTKUpNextFaceView *)self _updateVisibilityForCells];
  if (self->_isInflightScroll && !self->_isProgramaticScrollEvent && self->_modeTransitionApplier && self->_modeTransitionCompletion)
  {
    self->_cancelInflightScroll = 1;
    y = self->_startOffsetForModeTransition.y;
    v5 = self->_targetOffsetForModeTransition.y;
    [scrollCopy contentOffset];
    CLKReverseInterpolateFromFloats();
    v7 = v6;
    v8 = self->_startOffsetForModeTransition.y;
    v9 = self->_secondaryOffsetForModeTransition.y;
    [scrollCopy contentOffset];
    CLKReverseInterpolateFromFloats();
    if (v7 < v10)
    {
      v7 = v10;
    }

    (*(self->_modeTransitionApplier + 2))(v7);
    v11 = CLKFloatEqualsFloat();
    if (v7 > 1.0 || v11 != 0)
    {
      (*(self->_modeTransitionCompletion + 2))();
      self->_scrollingStoppedTransition = 1;
    }
  }
}

- (void)_startPositiveDwellForTopElementsTimerIfNeeded
{
  [(NTKUpNextFaceView *)self _stopPositiveDwellForTopElementsTimer];

  [(NTKUpNextFaceView *)self dataMode];
}

- (void)_stopPositiveDwellForTopElementsTimer
{
  [(NSTimer *)self->_positiveDwellForTopElementsTimer invalidate];
  positiveDwellForTopElementsTimer = self->_positiveDwellForTopElementsTimer;
  self->_positiveDwellForTopElementsTimer = 0;
}

+ (id)_reuseIdentifierForContent:(id)content
{
  style = [content style];
  if (style > 6)
  {
    return @"NTKUpNextMultilineCellReuseIdentifier";
  }

  else
  {
    return *(&off_189B8 + style);
  }
}

- (id)_contentAtIndexPath:(id)path
{
  v4 = [(UICollectionViewDiffableDataSource *)self->_collectionViewDataSource itemIdentifierForIndexPath:path];
  element = [v4 element];
  if ([(REUIRelevanceEngineController *)self->_engineController wantsIdealizedContent])
  {
    idealizedContent = [element idealizedContent];
    v7 = idealizedContent;
    if (idealizedContent)
    {
      content = idealizedContent;
    }

    else
    {
      content = [element content];
    }

    content2 = content;
  }

  else
  {
    content2 = [element content];
  }

  return content2;
}

- (void)_setupCell:(id)cell withContent:(id)content representedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cellCopy = cell;
  [cellCopy configureWithContent:content];
  [cellCopy setRepresentedElementIdentifier:identifierCopy];

  [cellCopy setContentImage:self->_cellContentBackground animated:0];
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v4 = [(REUIRelevanceEngineController *)self->_engineController actionAtIndexPath:path];
  v5 = v4 != 0;

  return v5;
}

- (void)collectionView:(id)view didHighlightItemAtIndexPath:(id)path
{
  collectionView = self->_collectionView;
  pathCopy = path;
  v7 = [(NTKUpNextCollectionView *)collectionView cellForItemAtIndexPath:pathCopy];
  v8 = [(NTKUpNextCollectionViewFlowLayout *)self->_layout layoutAttributesForItemAtIndexPath:pathCopy];

  memset(&v15, 0, sizeof(v15));
  if (v8)
  {
    [v8 transform3D];
  }

  v13 = v15;
  CATransform3DScale(&v14, &v13, 0.95, 0.95, 1.0);
  v15 = v14;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v12 = v14;
  v10[2] = sub_7424;
  v10[3] = &unk_18848;
  v11 = v7;
  v9 = v7;
  [UIView animateWithDuration:v10 animations:0.1];
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  collectionView = self->_collectionView;
  pathCopy = path;
  v7 = [(NTKUpNextCollectionView *)collectionView cellForItemAtIndexPath:pathCopy];
  v8 = [(NTKUpNextCollectionViewFlowLayout *)self->_layout layoutAttributesForItemAtIndexPath:pathCopy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (v8)
  {
    [v8 transform3D];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v12 = v20;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v10[2] = sub_75E0;
  v10[3] = &unk_18848;
  v11 = v7;
  v9 = v7;
  [UIView animateWithDuration:v10 animations:0.2];
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  v8 = 0.0;
  if ([viewCopy numberOfItemsInSection:index] >= 1 && objc_msgSend(viewCopy, "numberOfSections") - 1 != index)
  {
    device = [(NTKUpNextFaceView *)self device];
    sub_B3F4(device, v17);
    v10 = v18;
    device2 = [(NTKUpNextFaceView *)self device];
    sub_B3F4(device2, v16);
    v8 = v10 + v16[5];
  }

  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = v8;
  result.right = v14;
  result.bottom = v15;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)_loadLayoutRules
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  device = [(NTKUpNextFaceView *)self device];
  sub_B3F4(device, v13);

  v4 = [(NTKUpNextFaceView *)self complicationLayoutforSlot:NTKComplicationSlotTopRight];
  utilityComplicationFactory = self->_utilityComplicationFactory;
  [(NTKUpNextFaceView *)self bounds];
  [(NTKUtilityComplicationFactory *)utilityComplicationFactory configureComplicationLayout:v4 forSlot:13 withBounds:?];
  v12 = [(NTKUpNextFaceView *)self complicationLayoutforSlot:NTKComplicationSlotTopLeft];

  v6 = *(&v25 + 1);
  v8 = *(&v14 + 1);
  v7 = *&v15;
  v9 = *&v14;
  device2 = [(NTKUpNextFaceView *)self device];
  v11 = [NTKComplicationLayoutRule layoutRuleForDevice:device2 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v6 keylinePadding:v7, v8, v9, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];

  [v12 setDefaultLayoutRule:v11 forState:0];
}

- (void)_applyDataMode
{
  dataMode = [(NTKUpNextFaceView *)self dataMode];
  if (dataMode == self->_previousDataMode)
  {
    return;
  }

  v4 = dataMode;
  v5 = 1;
  if (dataMode <= 2)
  {
    if (dataMode == (&dword_0 + 1))
    {
      [(REUIRelevanceEngineController *)self->_engineController setWantsLiveDataSources:1];
      [(UITapGestureRecognizer *)self->_viewModeTapGesture setEnabled:1];
      [(NTKUpNextCollectionView *)self->_collectionView setUserInteractionEnabled:1];
      if ([(NTKUpNextFaceView *)self viewMode]== &dword_0 + 2)
      {
        [(NTKUpNextFaceView *)self _allowContentViewInteractive:1];
      }

      else
      {
        [(NTKUpNextFaceView *)self _allowContentViewInteractive:0];
        [(NTKUpNextFaceView *)self _switchViewModeToDefault];
      }

      [(NTKUpNextFaceView *)self _stopViewResetTimer];
      [(REUIRelevanceEngineController *)self->_engineController makeCurrent];
      goto LABEL_17;
    }

    if (dataMode != (&dword_0 + 2))
    {
      goto LABEL_18;
    }

    [(REUIRelevanceEngineController *)self->_engineController setWantsLiveDataSources:0];
    [(UITapGestureRecognizer *)self->_viewModeTapGesture setEnabled:0];
    [(NTKUpNextFaceView *)self _allowContentViewInteractive:0];
    [(NTKUpNextCollectionView *)self->_collectionView setUserInteractionEnabled:0];
    [(NTKUpNextFaceView *)self _startViewResetTimer];
  }

  else
  {
    if (dataMode == (&dword_0 + 3))
    {
      [(UITapGestureRecognizer *)self->_viewModeTapGesture setEnabled:0];
      [(NTKUpNextCollectionView *)self->_collectionView setUserInteractionEnabled:0];
      [(NTKUpNextFaceView *)self _allowContentViewInteractive:0];
      [(NTKUpNextFaceView *)self _switchViewModeToDefault];
      [(REUIRelevanceEngineController *)self->_engineController setWantsLiveDataSources:0];
      [(NTKUpNextFaceView *)self _stopPositiveDwellForTopElementsTimer];
      goto LABEL_18;
    }

    if (dataMode == (&dword_4 + 1))
    {
      [(REUIRelevanceEngineController *)self->_engineController setWantsLiveDataSources:1];
      [(UITapGestureRecognizer *)self->_viewModeTapGesture setEnabled:0];
      [(NTKUpNextCollectionView *)self->_collectionView setUserInteractionEnabled:0];
      [(NTKUpNextFaceView *)self _allowContentViewInteractive:0];
      [(NTKUpNextFaceView *)self _switchViewModeToDefault];
      goto LABEL_18;
    }

    if (dataMode != &dword_4)
    {
      goto LABEL_18;
    }

    [(REUIRelevanceEngineController *)self->_engineController setWantsLiveDataSources:0];
    [(UITapGestureRecognizer *)self->_viewModeTapGesture setEnabled:0];
    [(NTKUpNextCollectionView *)self->_collectionView setUserInteractionEnabled:0];
    [(NTKUpNextFaceView *)self _allowContentViewInteractive:0];
    [(NTKUpNextFaceView *)self _switchViewModeToDefault];
  }

  [(REUIRelevanceEngineController *)self->_engineController resignCurrent];
  [(NTKUpNextFaceView *)self _stopPositiveDwellForTopElementsTimer];
LABEL_17:
  v5 = 0;
LABEL_18:
  [(NTKUpNextFaceView *)self _updateVisibilityForCells];
  _applyShouldUseCanonicalContent = [(NTKUpNextFaceView *)self _applyShouldUseCanonicalContent];
  _applyShowIdealizedContent = [(NTKUpNextFaceView *)self _applyShowIdealizedContent];
  if (v5 & 1) != 0 || (_applyShouldUseCanonicalContent & 1) != 0 || (_applyShowIdealizedContent)
  {
    [(NTKUpNextFaceView *)self collectionViewDeferralStateChanged];
  }

  else
  {
    [(NTKUpNextFaceView *)self _reloadContentIfNeeded];
  }

  self->_previousDataMode = v4;
}

- (void)_handleOrdinaryScreenWake
{
  [(NTKUpNextFaceView *)self _prepareWristRaiseAnimation];

  [(NTKUpNextFaceView *)self _performWristRaiseAnimation];
}

- (void)_prepareWristRaiseAnimation
{
  visibleCells = [(NTKUpNextCollectionView *)self->_collectionView visibleCells];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [visibleCells countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v7 + 1) + 8 * v6) setContentBrightness:0 animated:0.25];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [visibleCells countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_performWristRaiseAnimation
{
  visibleCells = [(NTKUpNextCollectionView *)self->_collectionView visibleCells];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [visibleCells countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v7 + 1) + 8 * v6) setContentBrightness:1 animated:1.0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [visibleCells countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_loadSnapshotContent:(id)content
{
  contentCopy = content;
  if (self->_snapshotSnapshot)
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "NTKUpNextFaceView reload data and immediatly call completion", buf, 2u);
    }

    self->_needsReloadedContent = 1;
    [(NTKUpNextFaceView *)self _reloadContentIfNeeded];
    [(NTKUpNextFaceView *)self setNeedsLayout];
    [(NTKUpNextFaceView *)self layoutIfNeeded];
    [(NTKUpNextCollectionView *)self->_collectionView setNeedsLayout];
    [(NTKUpNextCollectionView *)self->_collectionView layoutIfNeeded];
    if (contentCopy)
    {
      contentCopy[2](contentCopy);
    }
  }

  else
  {
    v6 = +[NTKRelevanceEngineCache sharedCache];
    canonicalRelevanceEngineIgnoringAppInstallations = [v6 canonicalRelevanceEngineIgnoringAppInstallations];

    *buf = 0;
    v25 = buf;
    v26 = 0x3032000000;
    v27 = sub_80D0;
    v28 = sub_80E0;
    v29 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = sub_80D0;
    v22[4] = sub_80E0;
    v23 = 0;
    v8 = dispatch_group_create();
    configuration = [canonicalRelevanceEngineIgnoringAppInstallations configuration];
    dataSourceLoader = [configuration dataSourceLoader];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_80E8;
    v16[3] = &unk_18898;
    v17 = @"com.apple.weather.relevance-engine";
    v11 = v8;
    v18 = v11;
    v19 = @"com.apple.NanoCalendar";
    v20 = v22;
    v21 = buf;
    [dataSourceLoader enumerateDataSourceClassesWithBlock:v16];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_846C;
    block[3] = &unk_188E8;
    v14 = v22;
    v15 = buf;
    block[4] = self;
    v13 = contentCopy;
    dispatch_group_notify(v11, &_dispatch_main_q, block);

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (void)_finalizeForSnapshotting:(id)snapshotting
{
  snapshottingCopy = snapshotting;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "NTKUpNextFaceView _finalizeForSnapshotting", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_883C;
  v7[3] = &unk_188C0;
  v8 = snapshottingCopy;
  v6 = snapshottingCopy;
  [(NTKUpNextFaceView *)self _loadSnapshotContent:v7];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    [(NTKUpNextFaceView *)self _setSiriBlurColor:option];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    visibleCells = [(NTKUpNextCollectionView *)self->_collectionView visibleCells];
    v7 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(visibleCells);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v11 setContentImage:self->_cellContentBackground animated:0];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_updateDisabledDataSources
{
  v3 = +[NTKSiriDefaults sharedInstance];
  disabledDataSources = [v3 disabledDataSources];
  v5 = [NSMutableSet setWithSet:disabledDataSources];

  disabledDataSources2 = [(REUIRelevanceEngineController *)self->_engineController disabledDataSources];
  v7 = [v5 mutableCopy];
  [v7 minusSet:disabledDataSources2];
  v8 = [disabledDataSources2 mutableCopy];
  [v8 minusSet:v5];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(REUIRelevanceEngineController *)self->_engineController setDataSource:*(*(&v23 + 1) + 8 * v13) enabled:0];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v11);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(REUIRelevanceEngineController *)self->_engineController setDataSource:*(*(&v19 + 1) + 8 * v18) enabled:1, v19];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }

  self->_needsReloadedContent = 1;
  [(NTKUpNextFaceView *)self _reloadContentIfNeeded];
}

- (BOOL)_shouldUseCanonicalContent
{
  if (self->_collectionView)
  {
    showsCanonicalContent = [(NTKUpNextFaceView *)self showsCanonicalContent];
    if (showsCanonicalContent)
    {
      LOBYTE(showsCanonicalContent) = [(NTKUpNextFaceView *)self dataMode]== &dword_0 + 3;
    }
  }

  else
  {
    LOBYTE(showsCanonicalContent) = 1;
  }

  return showsCanonicalContent;
}

- (BOOL)_applyShowIdealizedContent
{
  dataMode = [(NTKUpNextFaceView *)self dataMode];
  v4 = (dataMode == &dword_0 + 3) ^ [(REUIRelevanceEngineController *)self->_engineController wantsIdealizedContent];
  if (v4 == 1)
  {
    [(REUIRelevanceEngineController *)self->_engineController setWantsIdealizedContent:dataMode == &dword_0 + 3];
    self->_needsReloadedContent = 1;
    [(NTKUpNextFaceView *)self _reloadContentIfNeeded];
  }

  return v4;
}

- (void)_applyShowsLockedUI
{
  if ([(NTKUpNextFaceView *)self showsLockedUI]&& [(NTKUpNextFaceView *)self viewMode]== &dword_0 + 2)
  {
    [(NTKUpNextFaceView *)self _switchViewModeForCurrentMode:2 animated:0];
  }

  [(NTKUpNextFaceView *)self _dismissPresentedViewControllerIfNecessary:0];
}

- (void)_becameActiveFace
{
  [(REUIRelevanceEngineController *)self->_engineController setAllowsLocationUse:1];
  engineController = self->_engineController;

  [(REUIRelevanceEngineController *)engineController makeCurrent];
}

- (void)_becameInactiveFace
{
  [(REUIRelevanceEngineController *)self->_engineController setAllowsLocationUse:0];
  engineController = self->_engineController;

  [(REUIRelevanceEngineController *)engineController resignCurrent];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  if ([(NTKUpNextFaceView *)self viewMode]== &dword_0 + 2)
  {
    timeView = [(NTKUpNextFaceView *)self timeView];
    [timeView bounds];
    v18 = CGRectInset(v17, -6.0, -6.0);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    timeView2 = [(NTKUpNextFaceView *)self timeView];
    [touchCopy locationInView:timeView2];
    v16.x = v12;
    v16.y = v13;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v14 = CGRectContainsPoint(v19, v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_applyShowContentForUnadornedSnapshot
{
  timeView = [(NTKUpNextFaceView *)self timeView];
  [timeView setHidden:0];
}

- (BOOL)_shouldDeferUpdate
{
  dataMode = [(NTKUpNextFaceView *)self dataMode];
  if (dataMode <= 4 && ((1 << dataMode) & 0x16) != 0)
  {
    [(NTKUpNextFaceView *)self isFrozen];
  }

  else if (([(NTKUpNextFaceView *)self isFrozen]& 1) != 0)
  {
    return 1;
  }

  if (!self->_collectionView || self->_isInflightScroll)
  {
    return 1;
  }

  return self->_isApplyingSnapshot;
}

- (void)engineController:(id)controller performBatchUpdateBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  v9 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[datasource] engine requested batch update", v10, 2u);
  }

  if (blockCopy)
  {
    self->_isApplyingBatchUpdate = 1;
    blockCopy[2](blockCopy);
    self->_isApplyingBatchUpdate = 0;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  self->_hasDeferredUpdate = 1;
  [(NTKUpNextFaceView *)self collectionViewDeferralStateChanged];
}

- (BOOL)engineController:(id)controller isElementAtIndexPathVisible:(id)visible
{
  if (self->_needsReloadedContent)
  {
    return 0;
  }

  collectionView = self->_collectionView;
  visibleCopy = visible;
  indexPathsForVisibleItems = [(NTKUpNextCollectionView *)collectionView indexPathsForVisibleItems];
  v8 = [NSSet setWithArray:indexPathsForVisibleItems];

  LOBYTE(indexPathsForVisibleItems) = [v8 containsObject:visibleCopy];
  return indexPathsForVisibleItems;
}

- (void)engineController:(id)controller didReloadContent:(id)content withIdentifier:(id)identifier
{
  controllerCopy = controller;
  contentCopy = content;
  identifierCopy = identifier;
  v10 = [controllerCopy indexPathForElementWithIdentifier:identifierCopy];
  v11 = [controllerCopy _elementAtIndexPath:v10];
  if (v11)
  {
    v12 = [NTKUpNextElement elementWithREElement:v11];
    if (self->_isApplyingBatchUpdate)
    {
      [(NSMutableSet *)self->_reloadedElements addObject:v12];
    }

    else
    {
      v13 = [(UICollectionViewDiffableDataSource *)self->_collectionViewDataSource indexPathForItemIdentifier:v12];
      v14 = [(NTKUpNextCollectionView *)self->_collectionView cellForItemAtIndexPath:v13];
      [v14 configureWithContent:contentCopy];
      v15 = [controllerCopy indexPathForElementWithIdentifier:identifierCopy];
      v16 = [controllerCopy elementAtIndexPath:v15];
      [(NTKUpNextFaceView *)self _replaceDataSourceElement:v12 withReloadedREElement:v16];
    }
  }
}

- (void)engineController:(id)controller didReloadElement:(id)element
{
  controllerCopy = controller;
  elementCopy = element;
  if (elementCopy)
  {
    if (self->_isApplyingBatchUpdate)
    {
      v7 = [NTKUpNextElement elementWithREElement:elementCopy];
      [(NSMutableSet *)self->_reloadedElements addObject:v7];
    }

    else
    {
      self->_hasDeferredUpdate = 1;
      [(NTKUpNextFaceView *)self collectionViewDeferralStateChanged];
    }
  }
}

- (void)engineController:(id)controller didRemoveContent:(id)content atIndexPath:(id)path
{
  v6 = [controller _elementAtIndexPath:{path, content}];
  if (v6)
  {
    v7 = [NTKUpNextElement elementWithREElement:v6];
    [(NSMutableSet *)self->_reloadedElements removeObject:v7];
  }

  _objc_release_x1();
}

- (void)engineControllerDidFinishUpdatingRelevance:(id)relevance
{
  if (!self->_engineInitiallyLoaded)
  {
    self->_engineInitiallyLoaded = 1;
    v4 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "NTKUpNextFaceView engine loaded, can snapshot now", v5, 2u);
    }

    self->_needsReloadedContent = 1;
    [(NTKUpNextFaceView *)self _reloadContentIfNeeded];
  }
}

- (CGPoint)_defaultPointForDefaultMode
{
  if (self->_engineInitiallyLoaded && (!NTKIsDaemonOrFaceSnapshotService() || self->_engineInitiallyLoaded) && [(NTKUpNextCollectionView *)self->_collectionView numberOfItemsInSection:2])
  {
    device = [(NTKUpNextFaceView *)self device];
    sub_B3F4(device, v14);
    v4 = v15;

    layout = self->_layout;
    v6 = [NSIndexPath indexPathForItem:0 inSection:2];
    v7 = [(NTKUpNextCollectionViewFlowLayout *)layout flowLayoutAttributesForItemAtIndexPath:v6];
    [v7 frame];
    x = v8;
    v11 = v10;

    y = v11 - v4;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v13 = x;
  result.y = y;
  result.x = v13;
  return result;
}

- (void)_cleanupAfterSettingViewMode:(int64_t)mode scroll:(BOOL)scroll targetOffset:(CGPoint)offset needsLayout:(BOOL)layout
{
  layoutCopy = layout;
  scrollCopy = scroll;
  y = offset.y;
  x = offset.x;
  self->_cancelInflightScroll = 0;
  isInflightScroll = self->_isInflightScroll;
  self->_isInflightScroll = 0;
  self->_isAnimating = 0;
  modeTransitionCompletion = self->_modeTransitionCompletion;
  self->_modeTransitionCompletion = 0;

  modeTransitionApplier = self->_modeTransitionApplier;
  self->_modeTransitionApplier = 0;

  [(NTKUpNextFaceView *)self _allowContentViewInteractive:mode == 2];
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  memset(v29, 0, sizeof(v29));
  device = [(NTKUpNextFaceView *)self device];
  sub_B3F4(device, v29);

  [(NTKUpNextCollectionViewFlowLayout *)self->_layout setUseFixedLowTransitionLayout:0];
  if (layoutCopy)
  {
    v16 = &v34 + 1;
    if (mode)
    {
      v16 = &v35;
      v17 = &v36;
    }

    else
    {
      v17 = &v35 + 1;
    }

    if (mode)
    {
      v18 = &v37;
    }

    else
    {
      v18 = &v36 + 1;
    }

    if (mode)
    {
      v19 = v38;
    }

    else
    {
      v19 = &v37 + 1;
    }

    v20 = 1.0;
    if (mode)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = 0.0;
    }

    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setLowTransitionScale:*v16];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setHighTransitionScale:*v17];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setHighTransitionShift:*v18];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setLowTransitionShift:*v19];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setTopItemsAlpha:v21];
    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setHeaderAlpha:v21];
    layout = self->_layout;
    if (mode)
    {
      device2 = [(NTKUpNextFaceView *)self device];
      [(NTKUpNextCollectionViewFlowLayout *)layout setTopItemsShift:sub_BE5C(device2, device2)];

      v20 = 0.0;
    }

    else
    {
      [(NTKUpNextCollectionViewFlowLayout *)self->_layout setTopItemsShift:*(&v32 + 1)];
    }

    complicationContainerView = [(NTKUpNextFaceView *)self complicationContainerView];
    v25 = *&CGAffineTransformIdentity.c;
    v28[0] = *&CGAffineTransformIdentity.a;
    v28[1] = v25;
    v28[2] = *&CGAffineTransformIdentity.tx;
    [complicationContainerView setTransform:v28];

    [(NTKUpNextFaceView *)self _layoutTimeLabelForViewMode:mode];
    [(NTKUpNextFaceView *)self _layoutTimeLabelPlatterViewMode:mode];
    v26 = v31;
    if (!mode)
    {
      v26 = &v30 + 1;
    }

    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setTopOffsetForScrolling:*v26];
    complicationContainerView2 = [(NTKUpNextFaceView *)self complicationContainerView];
    [complicationContainerView2 setAlpha:v20];

    if (scrollCopy)
    {
      [(NTKUpNextCollectionView *)self->_collectionView setContentOffset:0 animated:x, y];
    }
  }

  [(NTKUpNextFaceView *)self _updateVisibilityForCells];
  if (isInflightScroll)
  {
    [(NTKUpNextFaceView *)self collectionViewDeferralStateChanged];
  }
}

- (void)_layoutTimeLabelPlatterViewMode:(int64_t)mode
{
  [(NTKUpNextFaceView *)self bounds];
  v23 = [(NTKUpNextFaceView *)self _digitalTimeLabelStyleFromViewMode:mode faceBounds:?];
  timeView = [(NTKUpNextFaceView *)self timeView];
  [timeView frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  device = [(NTKUpNextFaceView *)self device];
  sub_B3F4(device, v24);
  v15 = v7 + v26;
  v16 = v9 + v25;
  v17 = v11 - (v26 + v28);
  v18 = v13 - (v25 + v27);

  [(UIView *)self->_timeLabelPlatter setFrame:v15, v16, v17, v18];
  layer = [(UIView *)self->_timeLabelPlatter layer];
  [(UIView *)self->_timeLabelPlatter frame];
  [(NTKUpNextFaceView *)self bounds];
  NTKUpNextUnitRectForFrameInBounds();
  [layer setContentsRect:?];

  v20 = [v23 isEqual:self->_timeLabelSmallInUpperRightCornerStyle];
  timeLabelPlatter = self->_timeLabelPlatter;
  v22 = 0.0;
  if (v20)
  {
    v22 = 1.0;
  }

  [(UIView *)self->_timeLabelPlatter setAlpha:v22];
}

- (void)_layoutTimeLabelForViewMode:(int64_t)mode
{
  [(NTKUpNextFaceView *)self bounds];
  v11 = [(NTKUpNextFaceView *)self _digitalTimeLabelStyleFromViewMode:mode faceBounds:?];
  timeView = [(NTKUpNextFaceView *)self timeView];
  [timeView setStyle:v11];

  timeView2 = [(NTKUpNextFaceView *)self timeView];
  layoutRule = [v11 layoutRule];
  timeView3 = [(NTKUpNextFaceView *)self timeView];
  [timeView3 bounds];
  [layoutRule calculateLayoutFrameForBoundsSize:{v9, v10}];
  [timeView2 ntk_setBoundsAndPositionFromFrame:?];
}

- (void)updateTimeLabelBackground
{
  v2 = self->_timeLabelPlatter;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  layer = [(UIView *)v2 layer];

  if (IsReduceTransparencyEnabled)
  {
    +[UIColor _externalSystemDarkGrayColor];
  }

  else
  {
    [UIColor colorWithWhite:0.333 alpha:0.75];
  }
  v4 = ;
  [layer setBackgroundColor:{objc_msgSend(v4, "CGColor")}];
}

- (void)_handleViewModeTapGesture:(id)gesture
{
  if ([gesture state] == &dword_0 + 3 && !self->_isAnimating)
  {
    viewMode = [(NTKUpNextFaceView *)self viewMode];

    [(NTKUpNextFaceView *)self _switchViewModeForCurrentMode:viewMode animated:1];
  }
}

- (void)elementAction:(id)action didFinishTask:(BOOL)task
{
  actionCopy = action;
  [actionCopy setDelegate:0];
  if (NTKInternalBuild())
  {
    if (CFPreferencesGetAppBooleanValue(@"EnableDemoMode", NTKFacePreferencesDomain, 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = REUpNextDemoUserDefaults();
        v6 = [v5 arrayForKey:@"IntentsPerformed"];
        v7 = v6;
        v8 = &__NSArray0__struct;
        if (v6)
        {
          v8 = v6;
        }

        v9 = v8;

        bundleIdentifier = [actionCopy bundleIdentifier];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          while (2)
          {
            v15 = 0;
            do
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v18 + 1) + 8 * v15);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ([v16 isEqualToString:{bundleIdentifier, v18}])
              {
                v17 = v11;
                goto LABEL_17;
              }

              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v17 = [v11 arrayByAddingObject:bundleIdentifier];
        [v5 willChangeValueForKey:@"IntentsPerformed"];
        [v5 setObject:v17 forKey:@"IntentsPerformed"];
        [v5 didChangeValueForKey:@"IntentsPerformed"];
LABEL_17:
      }
    }
  }
}

- (void)elementAction:(id)action wantsViewControllerDisplayed:(id)displayed
{
  displayedCopy = displayed;
  delegate = [(NTKUpNextFaceView *)self delegate];
  [delegate faceViewWantsToPresentViewController:displayedCopy];
}

- (void)elementAction:(id)action wantsToPerformTapActionForComplicationSlot:(id)slot
{
  v4 = [(NTKUpNextFaceView *)self detachedComplicationDisplayWrapperForSlot:slot];
  [v4 performTap];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v12.receiver = self;
  v12.super_class = NTKUpNextFaceView;
  [(NTKUpNextFaceView *)&v12 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode != 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeScale(&v11, v7, v7);
    foregroundContainerView = [(NTKUpNextFaceView *)self foregroundContainerView];
    v10 = v11;
    [foregroundContainerView setTransform:&v10];

    scalableView = self->_scalableView;
    v10 = v11;
    [(UIView *)scalableView setTransform:&v10];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v15.receiver = self;
  v15.super_class = NTKUpNextFaceView;
  [(NTKUpNextFaceView *)&v15 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v7, v7);
    foregroundContainerView = [(NTKUpNextFaceView *)self foregroundContainerView];
    v13 = v14;
    [foregroundContainerView setTransform:&v13];

    scalableView = self->_scalableView;
    v13 = v14;
    [(UIView *)scalableView setTransform:&v13];
    NTKAlphaForRubberBandingFraction();
    v11 = v10;
    foregroundContainerView2 = [(NTKUpNextFaceView *)self foregroundContainerView];
    [foregroundContainerView2 setAlpha:v11];

    [(UIView *)self->_scalableView setAlpha:v11];
  }
}

- (void)_setSiriBlurColor
{
  faceColorPalette = [(NTKUpNextFaceView *)self faceColorPalette];
  v4 = SiriBlurImageForColor(faceColorPalette);
  cellContentBackground = self->_cellContentBackground;
  self->_cellContentBackground = v4;

  layout = self->_layout;
  faceColorPalette2 = [(NTKUpNextFaceView *)self faceColorPalette];
  isSiriColor = [faceColorPalette2 isSiriColor];
  v9 = 0.25;
  if (isSiriColor)
  {
    v9 = 0.5;
  }

  [(NTKUpNextCollectionViewFlowLayout *)layout setMaximumDarkeningAmount:v9];

  faceColorPalette3 = [(NTKUpNextFaceView *)self faceColorPalette];
  [faceColorPalette3 isSiriColor];

  v11 = +[UIColor whiteColor];
  [(NTKUpNextFaceView *)self setInterpolatedComplicationColor:v11];

  v12 = +[UIColor whiteColor];
  [(NTKUpNextFaceView *)self setComplicationColor:v12];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    CLKCompressFraction();
    v9 = v8;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    visibleCells = [(NTKUpNextCollectionView *)self->_collectionView visibleCells];
    v11 = [visibleCells countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(visibleCells);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
            interpolatedColorPalette = [(NTKUpNextFaceView *)self interpolatedColorPalette];
            [(NTKUpNextFaceView *)self _applyTransitionWithFraction:interpolatedColorPalette interpolatedPalette:v16 onCell:v9];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [visibleCells countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

- (void)_prepareForEditing
{
  v5.receiver = self;
  v5.super_class = NTKUpNextFaceView;
  [(NTKUpNextFaceView *)&v5 _prepareForEditing];
  scalableView = self->_scalableView;
  timeView = [(NTKUpNextFaceView *)self timeView];
  [(UIView *)scalableView addSubview:timeView];
}

- (void)_cleanupAfterEditing
{
  v14.receiver = self;
  v14.super_class = NTKUpNextFaceView;
  [(NTKUpNextFaceView *)&v14 _cleanupAfterEditing];
  timeView = [(NTKUpNextFaceView *)self timeView];
  [(NTKUpNextFaceView *)self addSubview:timeView];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  visibleCells = [(NTKUpNextCollectionView *)self->_collectionView visibleCells];
  v5 = [visibleCells countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 enumerateContentsLayersWithBlock:&stru_18928];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_applyTransitionWithFraction:(double)fraction interpolatedPalette:(id)palette onCell:(id)cell
{
  cellCopy = cell;
  paletteCopy = palette;
  fromPalette = [paletteCopy fromPalette];
  v10 = SiriBlurImageForColor(fromPalette);

  toPalette = [paletteCopy toPalette];

  v12 = SiriBlurImageForColor(toPalette);

  [cellCopy enumerateContentsLayersWithBlock:&stru_18948];
  if (fraction > 1.0 || fabs(fraction + -1.0) < 2.22044605e-16)
  {
    [cellCopy setContentImage:v12 animated:0];
  }

  else
  {
    v13 = [CABasicAnimation animationWithKeyPath:@"contents"];
    [v13 setDuration:1.0];
    [v13 setSpeed:0.0];
    [v13 setToValue:{objc_msgSend(v12, "CGImage")}];
    [v13 setFromValue:{objc_msgSend(v10, "CGImage")}];
    v14 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v13 setTimingFunction:v14];

    [v13 setBeginTime:CACurrentMediaTime()];
    [v13 setTimeOffset:fraction];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_AB50;
    v16[3] = &unk_18970;
    v17 = v13;
    v15 = v13;
    [cellCopy enumerateContentsLayersWithBlock:v16];
  }
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v10 = [(NTKUpNextFaceView *)self device:0];
  sub_B3F4(v10, &v25);

  if ((mode - 2) < 2)
  {
    p_timeLabelSmallInUpperRightCornerStyle = &self->_timeLabelSmallInUpperRightCornerStyle;
    timeLabelSmallInUpperRightCornerStyle = self->_timeLabelSmallInUpperRightCornerStyle;
    if (!timeLabelSmallInUpperRightCornerStyle)
    {
      v14 = [CLKFont compactSoftFontOfSize:*&v27 weight:UIFontWeightSemibold];
      if (*(&v36 + 1) > 0.0)
      {
        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = width;
        v39.size.height = height;
        v40 = CGRectInset(v39, *(&v36 + 1) * 0.5, 0.0);
        x = v40.origin.x;
        y = v40.origin.y;
        width = v40.size.width;
        height = v40.size.height;
      }

      v22 = *&v29;
      device = [(NTKUpNextFaceView *)self device];
      v23 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:v14 withBaselineY:device withFont:x forDevice:y, width, height, v22];
      device2 = *p_timeLabelSmallInUpperRightCornerStyle;
      *p_timeLabelSmallInUpperRightCornerStyle = v23;
      goto LABEL_9;
    }

LABEL_10:
    v11 = timeLabelSmallInUpperRightCornerStyle;
    goto LABEL_11;
  }

  if (mode <= 1)
  {
    p_timeLabelSmallInUpperRightCornerStyle = &self->_timeLabelDefaultStyle;
    timeLabelSmallInUpperRightCornerStyle = self->_timeLabelDefaultStyle;
    if (!timeLabelSmallInUpperRightCornerStyle)
    {
      v14 = [CLKFont compactSoftFontOfSize:*(&v26 + 1) weight:UIFontWeightMedium];
      device = [(NTKUpNextFaceView *)self device];
      NTKDigitalTimeLabelStyleWideRightSideMargin();
      v17 = v16;
      v18 = *(&v28 + 1);
      device2 = [(NTKUpNextFaceView *)self device];
      v20 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:v14 applyAdvanceFudge:device2 withBaselineY:x withFont:y forDevice:width, height, v17, v18];
      v21 = *p_timeLabelSmallInUpperRightCornerStyle;
      *p_timeLabelSmallInUpperRightCornerStyle = v20;

LABEL_9:
      timeLabelSmallInUpperRightCornerStyle = *p_timeLabelSmallInUpperRightCornerStyle;
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_11:

  return v11;
}

- (id)_swatchImageForColorOption:(id)option size:(CGSize)size
{
  height = size.height;
  width = size.width;
  optionCopy = option;
  pigmentEditOption = [optionCopy pigmentEditOption];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_80D0;
  v21 = sub_80E0;
  v22 = 0;
  faceColorPalette = [(NTKUpNextFaceView *)self faceColorPalette];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_AF64;
  v16[3] = &unk_18998;
  v16[4] = &v17;
  [faceColorPalette executeWithOption:pigmentEditOption block:v16];

  v10 = v18[5];
  if (!v10)
  {
    v15.receiver = self;
    v15.super_class = NTKUpNextFaceView;
    height = [(NTKUpNextFaceView *)&v15 _swatchImageForColorOption:pigmentEditOption size:width, height];
    v12 = v18[5];
    v18[5] = height;

    v10 = v18[5];
  }

  v13 = v10;
  _Block_object_dispose(&v17, 8);

  return v13;
}

@end