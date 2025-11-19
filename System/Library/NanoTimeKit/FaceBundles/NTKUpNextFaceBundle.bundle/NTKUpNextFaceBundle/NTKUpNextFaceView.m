@interface NTKUpNextFaceView
+ (id)_reuseIdentifierForContent:(id)a3;
- (BOOL)_applyShowIdealizedContent;
- (BOOL)_shouldDeferUpdate;
- (BOOL)_shouldUseCanonicalContent;
- (BOOL)_snapshotHasChangesToVisibleItems:(id)a3;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)engineController:(id)a3 isElementAtIndexPathVisible:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGPoint)_defaultPointForDefaultMode;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (NTKUpNextFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)_configureCellForItemWithElement:(id)a3 atIndexPath:(id)a4 inCollectionView:(id)a5;
- (id)_configureSupplementaryViewForSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4 inCollectionView:(id)a5;
- (id)_contentAtIndexPath:(id)a3;
- (id)_detachedComplicationDisplays;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_sectionEnumerationOrder;
- (id)_swatchImageForColorOption:(id)a3 size:(CGSize)a4;
- (unint64_t)_distanceForIndexPathFromNow:(id)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyShowsLockedUI;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_applyTransitionWithFraction:(double)a3 interpolatedPalette:(id)a4 onCell:(id)a5;
- (void)_availableDataSourcesDidChange;
- (void)_becameActiveFace;
- (void)_becameInactiveFace;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterSettingViewMode:(int64_t)a3 scroll:(BOOL)a4 targetOffset:(CGPoint)a5 needsLayout:(BOOL)a6;
- (void)_configureCollectionViewDataSource;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureVisibleCell:(id)a3;
- (void)_finalizeForSnapshotting:(id)a3;
- (void)_handleOrdinaryScreenWake;
- (void)_handleViewModeTapGesture:(id)a3;
- (void)_layoutTimeLabelForViewMode:(int64_t)a3;
- (void)_layoutTimeLabelPlatterViewMode:(int64_t)a3;
- (void)_loadContentViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContent:(id)a3;
- (void)_loadSnapshotContentViews;
- (void)_logContent:(id)a3 withIdentifier:(id)a4;
- (void)_logDataSourceSnapshot:(id)a3 withName:(id)a4;
- (void)_performWristRaiseAnimation;
- (void)_prepareForEditing;
- (void)_prepareWristRaiseAnimation;
- (void)_reloadContentIfNeeded;
- (void)_replaceDataSourceElement:(id)a3 withReloadedREElement:(id)a4;
- (void)_setSiriBlurColor;
- (void)_setupCell:(id)a3 withContent:(id)a4 representedIdentifier:(id)a5;
- (void)_showSiriUnavailableAlert:(id)a3;
- (void)_startPositiveDwellForTopElementsTimerIfNeeded;
- (void)_startViewResetTimer;
- (void)_stopPositiveDwellForTopElementsTimer;
- (void)_stopViewResetTimer;
- (void)_switchViewModeToDefault;
- (void)_unloadContentViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateApplicationIdentifiersAndLocationAuthorization;
- (void)_updateDisabledDataSources;
- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionViewDeferralStateChanged;
- (void)dealloc;
- (void)elementAction:(id)a3 didFinishTask:(BOOL)a4;
- (void)elementAction:(id)a3 wantsToPerformTapActionForComplicationSlot:(id)a4;
- (void)elementAction:(id)a3 wantsViewControllerDisplayed:(id)a4;
- (void)engineController:(id)a3 didReloadContent:(id)a4 withIdentifier:(id)a5;
- (void)engineController:(id)a3 didReloadElement:(id)a4;
- (void)engineController:(id)a3 didRemoveContent:(id)a4 atIndexPath:(id)a5;
- (void)engineController:(id)a3 performBatchUpdateBlock:(id)a4 completion:(id)a5;
- (void)engineControllerDidFinishUpdatingRelevance:(id)a3;
- (void)layoutSubviews;
- (void)performScrollTestNamed:(id)a3 completion:(id)a4;
- (void)screenDidTurnOffAnimated:(BOOL)a3;
- (void)screenWillTurnOnAnimated:(BOOL)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTimeLabelBackground;
@end

@implementation NTKUpNextFaceView

- (NTKUpNextFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v41.receiver = self;
  v41.super_class = NTKUpNextFaceView;
  v10 = [(NTKUpNextFaceView *)&v41 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:v9];
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

    v16 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
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
    v25 = [(NTKUpNextFaceView *)v11 contentView];
    [v25 addSubview:v11->_scalableView];

    [(UIView *)v11->_scalableView setOpaque:0];
    v26 = +[UIColor clearColor];
    [(UIView *)v11->_scalableView setBackgroundColor:v26];

    [(NTKUpNextFaceView *)v11 _updateCrownInvertedSetting];
    v27 = +[CLKSensitiveUIMonitor sharedMonitor];
    [v27 addSensitiveUIObserver:v11];

    v28 = [(NTKUpNextFaceView *)v11 device];
    v29 = [v28 deviceCategory];

    if (v29 != &dword_0 + 1)
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

- (void)_showSiriUnavailableAlert:(id)a3
{
  v8 = a3;
  v4 = [(NTKUpNextFaceView *)self dataMode]== &dword_0 + 1;
  v5 = v8;
  if (v4)
  {
    v6 = [v8 object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(NTKUpNextFaceView *)self delegate];
      [v7 faceViewWantsToPresentViewController:v6];
    }

    v5 = v8;
  }
}

- (void)dealloc
{
  v3 = +[CLKSensitiveUIMonitor sharedMonitor];
  [v3 removeSensitiveUIObserver:self];

  v4 = [(NTKUpNextFaceView *)self device];
  v5 = [v4 deviceCategory];

  if (v5 != &dword_0 + 1)
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

- (void)screenWillTurnOnAnimated:(BOOL)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_325C;
  block[3] = &unk_18638;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)screenDidTurnOffAnimated:(BOOL)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3394;
  block[3] = &unk_18638;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  if (!a3)
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
    v11 = [(NTKUpNextFaceView *)self device];
    sub_B3F4(v11, v18);
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

    v14 = [(NTKUpNextFaceView *)self device];
    sub_B3F4(v14, &v17);
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

- (void)traitCollectionDidChange:(id)a3
{
  timeLabelDefaultStyle = self->_timeLabelDefaultStyle;
  self->_timeLabelDefaultStyle = 0;
  v5 = a3;

  timeLabelSmallInUpperRightCornerStyle = self->_timeLabelSmallInUpperRightCornerStyle;
  self->_timeLabelSmallInUpperRightCornerStyle = 0;

  v7.receiver = self;
  v7.super_class = NTKUpNextFaceView;
  [(NTKUpNextFaceView *)&v7 traitCollectionDidChange:v5];
}

- (id)_detachedComplicationDisplays
{
  v3 = +[NSMutableArray array];
  v4 = [(REUIRelevanceEngineController *)self->_engineController engine];
  v5 = [v4 dataSourceCatalog];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_37B4;
  v8[3] = &unk_186A0;
  v6 = v3;
  v9 = v6;
  [v5 enumerateDataSources:v8];

  return v6;
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  v9 = NTKComplicationSlotTopRight;
  v10 = a3;
  if ([v8 isEqualToString:v9])
  {
    v11 = [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory newViewForComplication:v10 family:a4 forSlot:13];

    [(NTKUpNextFaceView *)self _configureComplicationView:v11 forSlot:v8];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKUpNextFaceView;
    v11 = [(NTKUpNextFaceView *)&v13 _newLegacyViewForComplication:v10 family:a4 slot:v8];
  }

  return v11;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(NTKUpNextFaceView *)self faceColorPalette];
  v8 = [NTKPigmentEditOption pigmentNamed:ntk_special_multicolor];
  v9 = [v7 copyWithOption:v8];

  LODWORD(v7) = [v6 isEqualToString:NTKComplicationSlotTopRight];
  if (v7)
  {
    v10 = v16;
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

    v13 = v16;
    v14 = +[UIColor clearColor];
    [v13 setBackgroundColor:v14];

    v15 = [(NTKUpNextFaceView *)self device];
    sub_B3F4(v15, v17);
    [v13 setContentHeight:v18];

    v12 = +[UIColor whiteColor];
    [v13 setForegroundColor:v12];
  }

  [v16 applyFaceColorPalette:v9 units:1095];
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
    v3 = [(NTKUpNextFaceView *)self device];
    sub_B3F4(v3, v41);

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
    v23 = [(NTKUpNextCollectionView *)self->_collectionView layer];
    [v23 setAllowsGroupOpacity:1];

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
    v24 = [(NTKUpNextFaceView *)self device];
    v25 = [v24 deviceCategory];

    v26 = &off_18330;
    if (v25 != &dword_0 + 1)
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

    v31 = [(UIView *)self->_timeLabelPlatter layer];
    [v31 setCornerRadius:*v41];

    v32 = [(UIView *)self->_timeLabelPlatter layer];
    [v32 setCornerCurve:kCACornerCurveContinuous];

    v33 = [(UIView *)self->_timeLabelPlatter layer];
    [v33 setMasksToBounds:1];

    v34 = [(NTKUpNextFaceView *)self device];
    v35 = [v34 deviceCategory];

    if (v35 == &dword_0 + 1)
    {
      v36 = [(UIView *)self->_timeLabelPlatter layer];
      v37 = +[UIColor _externalSystemDarkGrayColor];
      [v36 setBackgroundColor:{objc_msgSend(v37, "CGColor")}];
    }

    else
    {
      [(NTKUpNextFaceView *)self updateTimeLabelBackground];
    }

    [(UIView *)self->_scalableView addSubview:self->_timeLabelPlatter];
    v38 = [(NTKUpNextFaceView *)self timeView];
    [(NTKUpNextFaceView *)self addSubview:v38];

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

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = NTKUpNextFaceView;
  [NTKUpNextFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  CLKInterpolateBetweenFloatsClipped();
  v7 = v6;
  [(NTKUpNextCollectionView *)self->_collectionView setAlpha:?];
  v8 = [(NTKUpNextFaceView *)self timeView];
  [v8 setAlpha:v7];
}

- (void)_switchViewModeToDefault
{
  [(NTKUpNextFaceView *)self _defaultPointForDefaultMode];
  y = CGPointZero.y;

  [NTKUpNextFaceView _setViewMode:"_setViewMode:scroll:scrollToPoint:secondaryPoint:force:velocity:animated:" scroll:0 scrollToPoint:1 secondaryPoint:0 force:0 velocity:? animated:?];
}

- (void)performScrollTestNamed:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
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

- (BOOL)_snapshotHasChangesToVisibleItems:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewDiffableDataSource *)self->_collectionViewDataSource snapshot];
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
        v11 = [v5 indexOfItemIdentifier:v10];
        v12 = [v4 indexOfItemIdentifier:v10];

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

- (void)_replaceDataSourceElement:(id)a3 withReloadedREElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UICollectionViewDiffableDataSource *)self->_collectionViewDataSource indexPathForItemIdentifier:v6];
  v9 = [(UICollectionViewDiffableDataSource *)self->_collectionViewDataSource itemIdentifierForIndexPath:v8];
  v10 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Replacing element %@ with element %@ for index path %@", &v11, 0x20u);
  }

  [v9 setElement:v7];
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
  v2 = [(REUIRelevanceEngineController *)self->_engineController sectionOrder];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v4 = REDefaultSectionIdentifier;
  if ([v2 containsObject:REDefaultSectionIdentifier])
  {
    v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 indexOfObject:v4]);
    [v3 addObject:v5];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_5928;
  v9[3] = &unk_18768;
  v10 = v3;
  v6 = v3;
  [v2 enumerateObjectsUsingBlock:v9];
  v7 = [v6 copy];

  return v7;
}

- (void)_updateApplicationIdentifiersAndLocationAuthorization
{
  v3 = [(REUIRelevanceEngineController *)self->_engineController numberOfSections];
  if (v3)
  {
    v4 = v3;
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
        v62 = [*(*(&v67 + 1) + 8 * v8) unsignedIntegerValue];
        v9 = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:?];
        v59 = +[NSMutableDictionary dictionary];
        v61 = v9;
        if (v9)
        {
          v10 = 0;
          do
          {
            v11 = [NSIndexPath indexPathWithElement:v10 inUpNextSection:v62];
            v12 = [(REUIRelevanceEngineController *)self->_engineController identifierForElementAtIndexPath:v11];
            v13 = [(REUIRelevanceEngineController *)self->_engineController metadataForElementWithIdentifier:v12];
            v14 = [v13 objectForKeyedSubscript:v60];

            v15 = [(REUIRelevanceEngineController *)self->_engineController engine];
            v16 = [v15 dataSourceCatalog];
            v17 = [v16 applicationIdentifierForDataSourceWithIdentifier:v14];

            v18 = [(REUIRelevanceEngineController *)self->_engineController engine];
            v19 = [v18 dataSourceCatalog];
            v20 = [v19 wantsApplicationPrewarmForDataSourceWithIdentifier:v14];

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
  v30 = [(REUIRelevanceEngineController *)self->_engineController engine];
  v31 = [v30 dataSourceCatalog];
  v32 = [v31 dataSourceIdentifiers];

  v33 = [v32 countByEnumeratingWithState:&v63 objects:v71 count:16];
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
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v63 + 1) + 8 * j);
        v38 = [(REUIRelevanceEngineController *)self->_engineController disabledDataSources];
        v39 = [v38 containsObject:v37];

        if ((v39 & 1) == 0)
        {
          v40 = [(REUIRelevanceEngineController *)self->_engineController engine];
          v41 = [v40 dataSourceCatalog];
          v42 = [v41 requiresLocationInUseAssertonForDataSourceWithIdentifier:v37];

          if (v42)
          {
            v43 = [(REUIRelevanceEngineController *)self->_engineController engine];
            v44 = [v43 dataSourceCatalog];
            v45 = [v44 applicationIdentifierForDataSourceWithIdentifier:v37];

            [v56 addObject:v45];
          }
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v63 objects:v71 count:16];
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

- (unint64_t)_distanceForIndexPathFromNow:(id)a3
{
  v4 = a3;
  v5 = [v4 upNextSection];
  v6 = 0;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == (&dword_0 + 1))
      {
        v10 = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:1];
        v6 = (v10 - [v4 element]);
      }
    }

    else
    {
      v12 = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:0];
      v13 = v12 - [v4 element];
      v6 = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:1]+ v13;
    }
  }

  else if (v5 == (&dword_0 + 2))
  {
    v6 = [v4 element];
  }

  else if (v5 == (&dword_0 + 3))
  {
    v11 = [v4 element];
    v6 = &v11[[(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:2]];
  }

  else if (v5 == &dword_4)
  {
    v7 = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:4];
    v8 = v7 - [v4 element];
    v9 = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:2];
    v6 = [(REUIRelevanceEngineController *)self->_engineController numberOfItemsInSectionAtIndex:3]+ v9 + v8;
  }

  return v6;
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

- (void)_logDataSourceSnapshot:(id)a3 withName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = v6;
    v35 = 2112;
    v36 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[datasource] (%@):(%@)", buf, 0x16u);
  }

  v17 = v6;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [v5 sectionIdentifiers];
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v19 = *v28;
    v20 = v5;
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
        v10 = [v5 itemIdentifiersInSectionWithIdentifier:{v9, v17}];
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
        v5 = v20;
      }

      while ((v22 + 1) != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }
}

- (void)_logContent:(id)a3 withIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 headerTextProvider];
  v8 = [v7 attributedString];
  v9 = [v8 string];

  v10 = [v5 description1TextProvider];
  v11 = [v10 attributedString];
  v12 = [v11 string];

  v13 = [v5 description2TextProvider];
  v14 = [v13 attributedString];
  v15 = [v14 string];

  v16 = [v5 description3TextProvider];
  v17 = [v16 attributedString];
  v18 = [v17 string];

  v19 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138413570;
    v21 = v6;
    v22 = 1024;
    v23 = [v5 style];
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v18;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[datasource] %@ content=(style=%d, headerText=%@, description1=%@, description2=%@, description3=%@)", &v20, 0x3Au);
  }
}

- (id)_configureCellForItemWithElement:(id)a3 atIndexPath:(id)a4 inCollectionView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NTKUpNextFaceView *)self _contentAtIndexPath:v9];
  v12 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 identifier];
    v19 = 138412546;
    v20 = v13;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[datasource] loaded identifier (%@) into cell at index path: (%@)", &v19, 0x16u);
  }

  v14 = [v8 identifier];
  [(NTKUpNextFaceView *)self _logContent:v11 withIdentifier:v14];

  v15 = [NTKUpNextFaceView _reuseIdentifierForContent:v11];
  v16 = [v10 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v9];

  v17 = [v8 identifier];
  [(NTKUpNextFaceView *)self _setupCell:v16 withContent:v11 representedIdentifier:v17];

  return v16;
}

- (id)_configureSupplementaryViewForSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4 inCollectionView:(id)a5
{
  v6 = a4;
  v7 = [a5 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"NTKUpNextHeaderReuseIdentifier" forIndexPath:v6];
  v8 = [v6 upNextSection];

  v9 = 0;
  if (v8 > 1)
  {
    if (v8 == (&dword_0 + 2))
    {
      v10 = @"UP_NEXT_HEADER";
      v11 = @"Up Next";
    }

    else if (v8 == (&dword_0 + 3))
    {
      v10 = @"UP_NEXT_TOMORROW_HEADER";
      v11 = @"Tomorrow";
    }

    else
    {
      if (v8 != &dword_4)
      {
        goto LABEL_15;
      }

      v10 = @"UP_NEXT_UPCOMING_HEADER";
      v11 = @"Upcoming";
    }
  }

  else
  {
    if (v8 == -1)
    {
      v9 = &stru_189F0;
      goto LABEL_15;
    }

    if (v8)
    {
      if (v8 != (&dword_0 + 1))
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

- (void)_configureVisibleCell:(id)a3
{
  cellContentBackground = self->_cellContentBackground;
  v5 = a3;
  [v5 setContentImage:cellContentBackground animated:0];
  [v5 setFilterProvider:self];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v7 = a3;
  if ([v7 numberOfItemsInSection:a5])
  {
    [v7 bounds];
    Width = CGRectGetWidth(v16);
    v9 = [(NTKUpNextFaceView *)self device];
    sub_B3F4(v9, v13);
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

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKUpNextFaceView *)self _configureVisibleCell:v6];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(NTKUpNextFaceView *)self _updateVisibilityForCells];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v13 = a3;
  [(NTKUpNextFaceView *)self _updateVisibilityForCells];
  if (self->_isInflightScroll && !self->_isProgramaticScrollEvent && self->_modeTransitionApplier && self->_modeTransitionCompletion)
  {
    self->_cancelInflightScroll = 1;
    y = self->_startOffsetForModeTransition.y;
    v5 = self->_targetOffsetForModeTransition.y;
    [v13 contentOffset];
    CLKReverseInterpolateFromFloats();
    v7 = v6;
    v8 = self->_startOffsetForModeTransition.y;
    v9 = self->_secondaryOffsetForModeTransition.y;
    [v13 contentOffset];
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

+ (id)_reuseIdentifierForContent:(id)a3
{
  v3 = [a3 style];
  if (v3 > 6)
  {
    return @"NTKUpNextMultilineCellReuseIdentifier";
  }

  else
  {
    return *(&off_189B8 + v3);
  }
}

- (id)_contentAtIndexPath:(id)a3
{
  v4 = [(UICollectionViewDiffableDataSource *)self->_collectionViewDataSource itemIdentifierForIndexPath:a3];
  v5 = [v4 element];
  if ([(REUIRelevanceEngineController *)self->_engineController wantsIdealizedContent])
  {
    v6 = [v5 idealizedContent];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v5 content];
    }

    v9 = v8;
  }

  else
  {
    v9 = [v5 content];
  }

  return v9;
}

- (void)_setupCell:(id)a3 withContent:(id)a4 representedIdentifier:(id)a5
{
  v8 = a5;
  v9 = a3;
  [v9 configureWithContent:a4];
  [v9 setRepresentedElementIdentifier:v8];

  [v9 setContentImage:self->_cellContentBackground animated:0];
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v4 = [(REUIRelevanceEngineController *)self->_engineController actionAtIndexPath:a4];
  v5 = v4 != 0;

  return v5;
}

- (void)collectionView:(id)a3 didHighlightItemAtIndexPath:(id)a4
{
  collectionView = self->_collectionView;
  v6 = a4;
  v7 = [(NTKUpNextCollectionView *)collectionView cellForItemAtIndexPath:v6];
  v8 = [(NTKUpNextCollectionViewFlowLayout *)self->_layout layoutAttributesForItemAtIndexPath:v6];

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

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  collectionView = self->_collectionView;
  v6 = a4;
  v7 = [(NTKUpNextCollectionView *)collectionView cellForItemAtIndexPath:v6];
  v8 = [(NTKUpNextCollectionViewFlowLayout *)self->_layout layoutAttributesForItemAtIndexPath:v6];

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

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = a3;
  v8 = 0.0;
  if ([v7 numberOfItemsInSection:a5] >= 1 && objc_msgSend(v7, "numberOfSections") - 1 != a5)
  {
    v9 = [(NTKUpNextFaceView *)self device];
    sub_B3F4(v9, v17);
    v10 = v18;
    v11 = [(NTKUpNextFaceView *)self device];
    sub_B3F4(v11, v16);
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
  v3 = [(NTKUpNextFaceView *)self device];
  sub_B3F4(v3, v13);

  v4 = [(NTKUpNextFaceView *)self complicationLayoutforSlot:NTKComplicationSlotTopRight];
  utilityComplicationFactory = self->_utilityComplicationFactory;
  [(NTKUpNextFaceView *)self bounds];
  [(NTKUtilityComplicationFactory *)utilityComplicationFactory configureComplicationLayout:v4 forSlot:13 withBounds:?];
  v12 = [(NTKUpNextFaceView *)self complicationLayoutforSlot:NTKComplicationSlotTopLeft];

  v6 = *(&v25 + 1);
  v8 = *(&v14 + 1);
  v7 = *&v15;
  v9 = *&v14;
  v10 = [(NTKUpNextFaceView *)self device];
  v11 = [NTKComplicationLayoutRule layoutRuleForDevice:v10 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v6 keylinePadding:v7, v8, v9, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];

  [v12 setDefaultLayoutRule:v11 forState:0];
}

- (void)_applyDataMode
{
  v3 = [(NTKUpNextFaceView *)self dataMode];
  if (v3 == self->_previousDataMode)
  {
    return;
  }

  v4 = v3;
  v5 = 1;
  if (v3 <= 2)
  {
    if (v3 == (&dword_0 + 1))
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

    if (v3 != (&dword_0 + 2))
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
    if (v3 == (&dword_0 + 3))
    {
      [(UITapGestureRecognizer *)self->_viewModeTapGesture setEnabled:0];
      [(NTKUpNextCollectionView *)self->_collectionView setUserInteractionEnabled:0];
      [(NTKUpNextFaceView *)self _allowContentViewInteractive:0];
      [(NTKUpNextFaceView *)self _switchViewModeToDefault];
      [(REUIRelevanceEngineController *)self->_engineController setWantsLiveDataSources:0];
      [(NTKUpNextFaceView *)self _stopPositiveDwellForTopElementsTimer];
      goto LABEL_18;
    }

    if (v3 == (&dword_4 + 1))
    {
      [(REUIRelevanceEngineController *)self->_engineController setWantsLiveDataSources:1];
      [(UITapGestureRecognizer *)self->_viewModeTapGesture setEnabled:0];
      [(NTKUpNextCollectionView *)self->_collectionView setUserInteractionEnabled:0];
      [(NTKUpNextFaceView *)self _allowContentViewInteractive:0];
      [(NTKUpNextFaceView *)self _switchViewModeToDefault];
      goto LABEL_18;
    }

    if (v3 != &dword_4)
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
  v6 = [(NTKUpNextFaceView *)self _applyShouldUseCanonicalContent];
  v7 = [(NTKUpNextFaceView *)self _applyShowIdealizedContent];
  if (v5 & 1) != 0 || (v6 & 1) != 0 || (v7)
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
  v2 = [(NTKUpNextCollectionView *)self->_collectionView visibleCells];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) setContentBrightness:0 animated:0.25];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_performWristRaiseAnimation
{
  v2 = [(NTKUpNextCollectionView *)self->_collectionView visibleCells];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) setContentBrightness:1 animated:1.0];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_loadSnapshotContent:(id)a3
{
  v4 = a3;
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
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v6 = +[NTKRelevanceEngineCache sharedCache];
    v7 = [v6 canonicalRelevanceEngineIgnoringAppInstallations];

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
    v9 = [v7 configuration];
    v10 = [v9 dataSourceLoader];

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
    [v10 enumerateDataSourceClassesWithBlock:v16];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_846C;
    block[3] = &unk_188E8;
    v14 = v22;
    v15 = buf;
    block[4] = self;
    v13 = v4;
    dispatch_group_notify(v11, &_dispatch_main_q, block);

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(buf, 8);
  }
}

- (void)_finalizeForSnapshotting:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  [(NTKUpNextFaceView *)self _loadSnapshotContent:v7];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    [(NTKUpNextFaceView *)self _setSiriBlurColor:a3];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NTKUpNextCollectionView *)self->_collectionView visibleCells];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v6);
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
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_updateDisabledDataSources
{
  v3 = +[NTKSiriDefaults sharedInstance];
  v4 = [v3 disabledDataSources];
  v5 = [NSMutableSet setWithSet:v4];

  v6 = [(REUIRelevanceEngineController *)self->_engineController disabledDataSources];
  v7 = [v5 mutableCopy];
  [v7 minusSet:v6];
  v8 = [v6 mutableCopy];
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
    v3 = [(NTKUpNextFaceView *)self showsCanonicalContent];
    if (v3)
    {
      LOBYTE(v3) = [(NTKUpNextFaceView *)self dataMode]== &dword_0 + 3;
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)_applyShowIdealizedContent
{
  v3 = [(NTKUpNextFaceView *)self dataMode];
  v4 = (v3 == &dword_0 + 3) ^ [(REUIRelevanceEngineController *)self->_engineController wantsIdealizedContent];
  if (v4 == 1)
  {
    [(REUIRelevanceEngineController *)self->_engineController setWantsIdealizedContent:v3 == &dword_0 + 3];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  if ([(NTKUpNextFaceView *)self viewMode]== &dword_0 + 2)
  {
    v6 = [(NTKUpNextFaceView *)self timeView];
    [v6 bounds];
    v18 = CGRectInset(v17, -6.0, -6.0);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    v11 = [(NTKUpNextFaceView *)self timeView];
    [v5 locationInView:v11];
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
  v2 = [(NTKUpNextFaceView *)self timeView];
  [v2 setHidden:0];
}

- (BOOL)_shouldDeferUpdate
{
  v3 = [(NTKUpNextFaceView *)self dataMode];
  if (v3 <= 4 && ((1 << v3) & 0x16) != 0)
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

- (void)engineController:(id)a3 performBatchUpdateBlock:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[datasource] engine requested batch update", v10, 2u);
  }

  if (v7)
  {
    self->_isApplyingBatchUpdate = 1;
    v7[2](v7);
    self->_isApplyingBatchUpdate = 0;
  }

  if (v8)
  {
    v8[2](v8);
  }

  self->_hasDeferredUpdate = 1;
  [(NTKUpNextFaceView *)self collectionViewDeferralStateChanged];
}

- (BOOL)engineController:(id)a3 isElementAtIndexPathVisible:(id)a4
{
  if (self->_needsReloadedContent)
  {
    return 0;
  }

  collectionView = self->_collectionView;
  v6 = a4;
  v7 = [(NTKUpNextCollectionView *)collectionView indexPathsForVisibleItems];
  v8 = [NSSet setWithArray:v7];

  LOBYTE(v7) = [v8 containsObject:v6];
  return v7;
}

- (void)engineController:(id)a3 didReloadContent:(id)a4 withIdentifier:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v17 indexPathForElementWithIdentifier:v9];
  v11 = [v17 _elementAtIndexPath:v10];
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
      [v14 configureWithContent:v8];
      v15 = [v17 indexPathForElementWithIdentifier:v9];
      v16 = [v17 elementAtIndexPath:v15];
      [(NTKUpNextFaceView *)self _replaceDataSourceElement:v12 withReloadedREElement:v16];
    }
  }
}

- (void)engineController:(id)a3 didReloadElement:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    if (self->_isApplyingBatchUpdate)
    {
      v7 = [NTKUpNextElement elementWithREElement:v6];
      [(NSMutableSet *)self->_reloadedElements addObject:v7];
    }

    else
    {
      self->_hasDeferredUpdate = 1;
      [(NTKUpNextFaceView *)self collectionViewDeferralStateChanged];
    }
  }
}

- (void)engineController:(id)a3 didRemoveContent:(id)a4 atIndexPath:(id)a5
{
  v6 = [a3 _elementAtIndexPath:{a5, a4}];
  if (v6)
  {
    v7 = [NTKUpNextElement elementWithREElement:v6];
    [(NSMutableSet *)self->_reloadedElements removeObject:v7];
  }

  _objc_release_x1();
}

- (void)engineControllerDidFinishUpdatingRelevance:(id)a3
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
    v3 = [(NTKUpNextFaceView *)self device];
    sub_B3F4(v3, v14);
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

- (void)_cleanupAfterSettingViewMode:(int64_t)a3 scroll:(BOOL)a4 targetOffset:(CGPoint)a5 needsLayout:(BOOL)a6
{
  v6 = a6;
  v7 = a4;
  y = a5.y;
  x = a5.x;
  self->_cancelInflightScroll = 0;
  isInflightScroll = self->_isInflightScroll;
  self->_isInflightScroll = 0;
  self->_isAnimating = 0;
  modeTransitionCompletion = self->_modeTransitionCompletion;
  self->_modeTransitionCompletion = 0;

  modeTransitionApplier = self->_modeTransitionApplier;
  self->_modeTransitionApplier = 0;

  [(NTKUpNextFaceView *)self _allowContentViewInteractive:a3 == 2];
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
  v15 = [(NTKUpNextFaceView *)self device];
  sub_B3F4(v15, v29);

  [(NTKUpNextCollectionViewFlowLayout *)self->_layout setUseFixedLowTransitionLayout:0];
  if (v6)
  {
    v16 = &v34 + 1;
    if (a3)
    {
      v16 = &v35;
      v17 = &v36;
    }

    else
    {
      v17 = &v35 + 1;
    }

    if (a3)
    {
      v18 = &v37;
    }

    else
    {
      v18 = &v36 + 1;
    }

    if (a3)
    {
      v19 = v38;
    }

    else
    {
      v19 = &v37 + 1;
    }

    v20 = 1.0;
    if (a3)
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
    if (a3)
    {
      v23 = [(NTKUpNextFaceView *)self device];
      [(NTKUpNextCollectionViewFlowLayout *)layout setTopItemsShift:sub_BE5C(v23, v23)];

      v20 = 0.0;
    }

    else
    {
      [(NTKUpNextCollectionViewFlowLayout *)self->_layout setTopItemsShift:*(&v32 + 1)];
    }

    v24 = [(NTKUpNextFaceView *)self complicationContainerView];
    v25 = *&CGAffineTransformIdentity.c;
    v28[0] = *&CGAffineTransformIdentity.a;
    v28[1] = v25;
    v28[2] = *&CGAffineTransformIdentity.tx;
    [v24 setTransform:v28];

    [(NTKUpNextFaceView *)self _layoutTimeLabelForViewMode:a3];
    [(NTKUpNextFaceView *)self _layoutTimeLabelPlatterViewMode:a3];
    v26 = v31;
    if (!a3)
    {
      v26 = &v30 + 1;
    }

    [(NTKUpNextCollectionViewFlowLayout *)self->_layout setTopOffsetForScrolling:*v26];
    v27 = [(NTKUpNextFaceView *)self complicationContainerView];
    [v27 setAlpha:v20];

    if (v7)
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

- (void)_layoutTimeLabelPlatterViewMode:(int64_t)a3
{
  [(NTKUpNextFaceView *)self bounds];
  v23 = [(NTKUpNextFaceView *)self _digitalTimeLabelStyleFromViewMode:a3 faceBounds:?];
  v5 = [(NTKUpNextFaceView *)self timeView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(NTKUpNextFaceView *)self device];
  sub_B3F4(v14, v24);
  v15 = v7 + v26;
  v16 = v9 + v25;
  v17 = v11 - (v26 + v28);
  v18 = v13 - (v25 + v27);

  [(UIView *)self->_timeLabelPlatter setFrame:v15, v16, v17, v18];
  v19 = [(UIView *)self->_timeLabelPlatter layer];
  [(UIView *)self->_timeLabelPlatter frame];
  [(NTKUpNextFaceView *)self bounds];
  NTKUpNextUnitRectForFrameInBounds();
  [v19 setContentsRect:?];

  v20 = [v23 isEqual:self->_timeLabelSmallInUpperRightCornerStyle];
  timeLabelPlatter = self->_timeLabelPlatter;
  v22 = 0.0;
  if (v20)
  {
    v22 = 1.0;
  }

  [(UIView *)self->_timeLabelPlatter setAlpha:v22];
}

- (void)_layoutTimeLabelForViewMode:(int64_t)a3
{
  [(NTKUpNextFaceView *)self bounds];
  v11 = [(NTKUpNextFaceView *)self _digitalTimeLabelStyleFromViewMode:a3 faceBounds:?];
  v5 = [(NTKUpNextFaceView *)self timeView];
  [v5 setStyle:v11];

  v6 = [(NTKUpNextFaceView *)self timeView];
  v7 = [v11 layoutRule];
  v8 = [(NTKUpNextFaceView *)self timeView];
  [v8 bounds];
  [v7 calculateLayoutFrameForBoundsSize:{v9, v10}];
  [v6 ntk_setBoundsAndPositionFromFrame:?];
}

- (void)updateTimeLabelBackground
{
  v2 = self->_timeLabelPlatter;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v5 = [(UIView *)v2 layer];

  if (IsReduceTransparencyEnabled)
  {
    +[UIColor _externalSystemDarkGrayColor];
  }

  else
  {
    [UIColor colorWithWhite:0.333 alpha:0.75];
  }
  v4 = ;
  [v5 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];
}

- (void)_handleViewModeTapGesture:(id)a3
{
  if ([a3 state] == &dword_0 + 3 && !self->_isAnimating)
  {
    v4 = [(NTKUpNextFaceView *)self viewMode];

    [(NTKUpNextFaceView *)self _switchViewModeForCurrentMode:v4 animated:1];
  }
}

- (void)elementAction:(id)a3 didFinishTask:(BOOL)a4
{
  v4 = a3;
  [v4 setDelegate:0];
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

        v10 = [v4 bundleIdentifier];
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
              if (objc_opt_isKindOfClass() & 1) != 0 && ([v16 isEqualToString:{v10, v18}])
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

        v17 = [v11 arrayByAddingObject:v10];
        [v5 willChangeValueForKey:@"IntentsPerformed"];
        [v5 setObject:v17 forKey:@"IntentsPerformed"];
        [v5 didChangeValueForKey:@"IntentsPerformed"];
LABEL_17:
      }
    }
  }
}

- (void)elementAction:(id)a3 wantsViewControllerDisplayed:(id)a4
{
  v5 = a4;
  v6 = [(NTKUpNextFaceView *)self delegate];
  [v6 faceViewWantsToPresentViewController:v5];
}

- (void)elementAction:(id)a3 wantsToPerformTapActionForComplicationSlot:(id)a4
{
  v4 = [(NTKUpNextFaceView *)self detachedComplicationDisplayWrapperForSlot:a4];
  [v4 performTap];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v12.receiver = self;
  v12.super_class = NTKUpNextFaceView;
  [(NTKUpNextFaceView *)&v12 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 != 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeScale(&v11, v7, v7);
    v8 = [(NTKUpNextFaceView *)self foregroundContainerView];
    v10 = v11;
    [v8 setTransform:&v10];

    scalableView = self->_scalableView;
    v10 = v11;
    [(UIView *)scalableView setTransform:&v10];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v15.receiver = self;
  v15.super_class = NTKUpNextFaceView;
  [(NTKUpNextFaceView *)&v15 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v7, v7);
    v8 = [(NTKUpNextFaceView *)self foregroundContainerView];
    v13 = v14;
    [v8 setTransform:&v13];

    scalableView = self->_scalableView;
    v13 = v14;
    [(UIView *)scalableView setTransform:&v13];
    NTKAlphaForRubberBandingFraction();
    v11 = v10;
    v12 = [(NTKUpNextFaceView *)self foregroundContainerView];
    [v12 setAlpha:v11];

    [(UIView *)self->_scalableView setAlpha:v11];
  }
}

- (void)_setSiriBlurColor
{
  v3 = [(NTKUpNextFaceView *)self faceColorPalette];
  v4 = SiriBlurImageForColor(v3);
  cellContentBackground = self->_cellContentBackground;
  self->_cellContentBackground = v4;

  layout = self->_layout;
  v7 = [(NTKUpNextFaceView *)self faceColorPalette];
  v8 = [v7 isSiriColor];
  v9 = 0.25;
  if (v8)
  {
    v9 = 0.5;
  }

  [(NTKUpNextCollectionViewFlowLayout *)layout setMaximumDarkeningAmount:v9];

  v10 = [(NTKUpNextFaceView *)self faceColorPalette];
  [v10 isSiriColor];

  v11 = +[UIColor whiteColor];
  [(NTKUpNextFaceView *)self setInterpolatedComplicationColor:v11];

  v12 = +[UIColor whiteColor];
  [(NTKUpNextFaceView *)self setComplicationColor:v12];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a6 == 10)
  {
    CLKCompressFraction();
    v9 = v8;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [(NTKUpNextCollectionView *)self->_collectionView visibleCells];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
            v17 = [(NTKUpNextFaceView *)self interpolatedColorPalette];
            [(NTKUpNextFaceView *)self _applyTransitionWithFraction:v17 interpolatedPalette:v16 onCell:v9];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v4 = [(NTKUpNextFaceView *)self timeView];
  [(UIView *)scalableView addSubview:v4];
}

- (void)_cleanupAfterEditing
{
  v14.receiver = self;
  v14.super_class = NTKUpNextFaceView;
  [(NTKUpNextFaceView *)&v14 _cleanupAfterEditing];
  v3 = [(NTKUpNextFaceView *)self timeView];
  [(NTKUpNextFaceView *)self addSubview:v3];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NTKUpNextCollectionView *)self->_collectionView visibleCells];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_applyTransitionWithFraction:(double)a3 interpolatedPalette:(id)a4 onCell:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [v8 fromPalette];
  v10 = SiriBlurImageForColor(v9);

  v11 = [v8 toPalette];

  v12 = SiriBlurImageForColor(v11);

  [v7 enumerateContentsLayersWithBlock:&stru_18948];
  if (a3 > 1.0 || fabs(a3 + -1.0) < 2.22044605e-16)
  {
    [v7 setContentImage:v12 animated:0];
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
    [v13 setTimeOffset:a3];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_AB50;
    v16[3] = &unk_18970;
    v17 = v13;
    v15 = v13;
    [v7 enumerateContentsLayersWithBlock:v16];
  }
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
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

  if ((a3 - 2) < 2)
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
      v15 = [(NTKUpNextFaceView *)self device];
      v23 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:v14 withBaselineY:v15 withFont:x forDevice:y, width, height, v22];
      v19 = *p_timeLabelSmallInUpperRightCornerStyle;
      *p_timeLabelSmallInUpperRightCornerStyle = v23;
      goto LABEL_9;
    }

LABEL_10:
    v11 = timeLabelSmallInUpperRightCornerStyle;
    goto LABEL_11;
  }

  if (a3 <= 1)
  {
    p_timeLabelSmallInUpperRightCornerStyle = &self->_timeLabelDefaultStyle;
    timeLabelSmallInUpperRightCornerStyle = self->_timeLabelDefaultStyle;
    if (!timeLabelSmallInUpperRightCornerStyle)
    {
      v14 = [CLKFont compactSoftFontOfSize:*(&v26 + 1) weight:UIFontWeightMedium];
      v15 = [(NTKUpNextFaceView *)self device];
      NTKDigitalTimeLabelStyleWideRightSideMargin();
      v17 = v16;
      v18 = *(&v28 + 1);
      v19 = [(NTKUpNextFaceView *)self device];
      v20 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:v14 applyAdvanceFudge:v19 withBaselineY:x withFont:y forDevice:width, height, v17, v18];
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

- (id)_swatchImageForColorOption:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [v7 pigmentEditOption];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_80D0;
  v21 = sub_80E0;
  v22 = 0;
  v9 = [(NTKUpNextFaceView *)self faceColorPalette];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_AF64;
  v16[3] = &unk_18998;
  v16[4] = &v17;
  [v9 executeWithOption:v8 block:v16];

  v10 = v18[5];
  if (!v10)
  {
    v15.receiver = self;
    v15.super_class = NTKUpNextFaceView;
    v11 = [(NTKUpNextFaceView *)&v15 _swatchImageForColorOption:v8 size:width, height];
    v12 = v18[5];
    v18[5] = v11;

    v10 = v18[5];
  }

  v13 = v10;
  _Block_object_dispose(&v17, 8);

  return v13;
}

@end