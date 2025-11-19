@interface MKMapItemView
- ($F24F406B2B787EFB06265DBA3D28CBD5)_clampCoordinateSpan:(id)result;
- (BOOL)_areBoundsValid;
- (MKMapItemView)initWithFrame:(CGRect)a3;
- (id)_annotationView;
- (id)_customAnnotation;
- (id)_deriveSnapshotOptions:(BOOL)a3;
- (void)_addAttributionViews;
- (void)_addTapRecognizerForAttributionView:(id)a3;
- (void)_callCompletionHandler;
- (void)_callCompletionHandlerWithInvalidBoundsError;
- (void)_callCompletionHandlerWithInvalidCoordinateSpanError;
- (void)_fetchLookAroundViewforMapItem:(id)a3;
- (void)_getParentItem;
- (void)_handleTapOnAttribution:(id)a3;
- (void)_handleTapOnLookAroundView:(id)a3;
- (void)_handleTapOnSnapshot:(id)a3;
- (void)_loadMapItem:(id)a3 camera:(id)a4 coordinateSpan:(id)a5 completionHandler:(id)a6;
- (void)_receivedFullyDrawnNotification:(id)a3;
- (void)_reloadSnapshot;
- (void)_renderMapItem;
- (void)_resetAttributionViewState;
- (void)_resetLookAroundContainerViewState;
- (void)_resetState;
- (void)_setupLookAroundConstraints;
- (void)_setupObserver;
- (void)_setupSnapshotConstraints;
- (void)_takeSnapshotCompleted;
- (void)_takeSnapshotWithCompletionHandler:(id)a3 isReload:(BOOL)a4;
- (void)_updateBorders;
- (void)cancel;
- (void)dealloc;
- (void)infoCardThemeChanged;
- (void)layoutSubviews;
- (void)loadMapItem:(id)a3 completionHandler:(id)a4;
- (void)loadMapItem:(id)a3 coordinateSpan:(id)a4 completionHandler:(id)a5;
- (void)setShouldShowBorders:(BOOL)a3;
- (void)setShouldShowMapAttribution:(BOOL)a3;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)triggerAnimation;
@end

@implementation MKMapItemView

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MKMapItemView;
  [(MKMapItemView *)&v4 dealloc];
}

- (void)triggerAnimation
{
  v3 = MKGetMKMapItemViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_INFO, "BEGIN triggerAnimation", buf, 2u);
  }

  v4 = [(MKLookAroundContainerView *)self->_lookAroundContainerView lookAroundViewIfPresent];
  [v4 moveToCloseUpView];

  v5 = MKGetMKMapItemViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "END triggerAnimation", v6, 2u);
  }
}

- (void)_resetAttributionViewState
{
  attributionURL = self->_attributionURL;
  self->_attributionURL = 0;

  [(MKAppleLogoLabel *)self->_attributionAppleLogo removeFromSuperview];
  attributionAppleLogo = self->_attributionAppleLogo;
  self->_attributionAppleLogo = 0;

  [(MKAttributionLabel *)self->_attributionLabel removeFromSuperview];
  attributionLabel = self->_attributionLabel;
  self->_attributionLabel = 0;

  [(UIImageView *)self->_attributionBadgeView removeFromSuperview];
  attributionBadgeView = self->_attributionBadgeView;
  self->_attributionBadgeView = 0;
}

- (void)_resetLookAroundContainerViewState
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [(MKLookAroundContainerView *)self->_lookAroundContainerView lookAroundViewIfPresent];
  [v3 removeObserver:self name:@"MKLookAroundViewDidBecomeFullyDrawn" object:v4];

  [(MKMapItemView *)self removeConstraints:self->_lookAroundConstraints];
  [(MKLookAroundContainerView *)self->_lookAroundContainerView removeFromSuperview];
  lookAroundContainerView = self->_lookAroundContainerView;
  self->_lookAroundContainerView = 0;
}

- (void)_resetState
{
  snapshotError = self->_snapshotError;
  self->_snapshotError = 0;

  [(MKMapSnapshotView *)self->_snapshotView setHidden:1];
  [(MKMapSnapshotView *)self->_snapshotView setImage:0];
  [(NSLayoutConstraint *)self->_snapshotWidthConstraint setActive:1];
  [(MKMapItemView *)self _resetLookAroundContainerViewState];
  [(MKMapItemView *)self _resetAttributionViewState];

  [MKMapItemView cancelPreviousPerformRequestsWithTarget:self selector:sel__reloadSnapshot object:0];
}

- (void)cancel
{
  v3 = MKGetMKMapItemViewLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_INFO, "BEGIN cancel", buf, 2u);
  }

  [(MKLookAroundContainerView *)self->_lookAroundContainerView cancelIfPresent];
  [(MKMapSnapshotView *)self->_snapshotView cancel];
  [(MKMapItemView *)self _resetState];
  v4 = MKGetMKMapItemViewLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "END cancel", v5, 2u);
  }
}

- (void)_callCompletionHandler
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_mapItemloadedCompletionHandler)
  {
    v3 = MKGetMKMapItemViewLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      if (self->_snapshotError)
      {
        v4 = @"(with error)";
      }

      else
      {
        v4 = @"(with success)";
      }

      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_INFO, "END loadMapItem: %@", &v13, 0xCu);
    }

    v5 = MKGetMKMapItemViewLog();
    v6 = v5;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v6, OS_SIGNPOST_INTERVAL_END, signpostID, "Load", &unk_1A30FEA0E, &v13, 2u);
    }

    v8 = MEMORY[0x1A58E9F30](self->_mapItemloadedCompletionHandler);
    mapItemloadedCompletionHandler = self->_mapItemloadedCompletionHandler;
    self->_mapItemloadedCompletionHandler = 0;

    if (self->_snapshotError)
    {
      v10 = MKGetMKMapItemViewLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        snapshotError = self->_snapshotError;
        v13 = 138412290;
        v14 = snapshotError;
        _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_ERROR, "SnapshotError: %@", &v13, 0xCu);
      }

      v12 = self->_snapshotError;
    }

    else
    {
      v12 = 0;
    }

    (v8)[2](v8, v12);
  }
}

- (void)_renderMapItem
{
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(MKMapItemView *)self setBackgroundColor:v3];

  v4 = [(MKMapSnapshotView *)self->_snapshotView image];
  if (v4 && (v5 = self->_lookAroundContainerView, v4, v5))
  {
    [(NSLayoutConstraint *)self->_snapshotWidthConstraint setActive:0];
    [(MKLookAroundContainerView *)self->_lookAroundContainerView setHidden:0];
  }

  else
  {
    v6 = [(MKMapSnapshotView *)self->_snapshotView image];
    if (!v6)
    {
      return;
    }

    lookAroundContainerView = self->_lookAroundContainerView;

    if (lookAroundContainerView)
    {
      return;
    }
  }

  snapshotView = self->_snapshotView;

  [(MKMapSnapshotView *)snapshotView setHidden:0];
}

- (void)_takeSnapshotCompleted
{
  [(MKMapItemView *)self _renderMapItem];

  [(MKMapItemView *)self _callCompletionHandler];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = a4;
  v6 = MKGetMKMapItemViewLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "BEGIN traitCollectionDidChange", buf, 2u);
  }

  if (self->_loadCalledOnce)
  {
    v7 = [(MKMapItemView *)self traitCollection];
    v8 = [v7 userInterfaceStyle];
    if (v8 == [v5 userInterfaceStyle] || (-[MKMapItemView bounds](self, "bounds"), v9 == 0.0))
    {
    }

    else
    {
      [(MKMapItemView *)self bounds];
      v11 = v10;

      if (v11 != 0.0)
      {
        [(MKMapItemView *)self _reloadSnapshot];
      }
    }
  }

  v12 = MKGetMKMapItemViewLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_INFO, "END traitCollectionDidChange", v13, 2u);
  }
}

- (void)_reloadSnapshot
{
  if ([(MKMapItemView *)self _areBoundsValid])
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __32__MKMapItemView__reloadSnapshot__block_invoke;
    v3[3] = &unk_1E76C9CC0;
    objc_copyWeak(&v4, &location);
    [(MKMapItemView *)self _takeSnapshotWithCompletionHandler:v3 isReload:1];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }

  else
  {

    [(MKMapItemView *)self _callCompletionHandlerWithInvalidBoundsError];
  }
}

void __32__MKMapItemView__reloadSnapshot__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (!a2 && WeakRetained)
  {
    [WeakRetained[58] setHidden:0];
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _takeSnapshotCompleted];
}

- (void)_setupSnapshotConstraints
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v19 = [(MKMapSnapshotView *)self->_snapshotView topAnchor];
  v18 = [(MKMapItemView *)self topAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v20[0] = v17;
  v4 = [(MKMapSnapshotView *)self->_snapshotView trailingAnchor];
  v5 = [(MKMapItemView *)self trailingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  v20[1] = v6;
  v7 = [(MKMapSnapshotView *)self->_snapshotView heightAnchor];
  v8 = [(MKMapItemView *)self heightAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v20[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v11 = [v3 arrayWithArray:v10];
  snapshotConstraints = self->_snapshotConstraints;
  self->_snapshotConstraints = v11;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_snapshotConstraints];
  v13 = [(MKMapSnapshotView *)self->_snapshotView widthAnchor];
  v14 = [(MKMapItemView *)self widthAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  snapshotWidthConstraint = self->_snapshotWidthConstraint;
  self->_snapshotWidthConstraint = v15;

  [(NSLayoutConstraint *)self->_snapshotWidthConstraint setActive:1];
}

- (void)setShouldShowMapAttribution:(BOOL)a3
{
  if (self->_shouldShowMapAttribution != a3)
  {
    self->_shouldShowMapAttribution = a3;
    [(MKMapItemView *)self _resetAttributionViewState];
    if (self->_shouldShowMapAttribution)
    {

      [(MKMapItemView *)self _addAttributionViews];
    }
  }
}

- (void)_addAttributionViews
{
  v53[2] = *MEMORY[0x1E69E9840];
  if (self->_snapshotView)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [MKMapAttributionImage badgeImageForView:self];
    v49 = v4;
    if (v4)
    {
      v5 = v4;
      v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      attributionBadgeView = self->_attributionBadgeView;
      self->_attributionBadgeView = v7;

      [(UIImageView *)self->_attributionBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIImageView *)self->_attributionBadgeView setImage:v5];
      [(MKMapSnapshotView *)self->_snapshotView addSubview:self->_attributionBadgeView];
      v50 = self->_attributionBadgeView;
      v9 = [(UIImageView *)self->_attributionBadgeView widthAnchor];
      [v5 size];
      v10 = [v9 constraintEqualToConstant:?];
      v53[0] = v10;
      v11 = [(UIImageView *)self->_attributionBadgeView heightAnchor];
      [v5 size];
      v13 = [v11 constraintEqualToConstant:v12];
      v53[1] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
      [v3 addObjectsFromArray:v14];

      v15 = 10.0;
    }

    else
    {
      v16 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
      v17 = [v16 userInterfaceStyle] == 2;

      v18 = [[MKAppleLogoLabel alloc] initForMapType:0 forDarkMode:v17];
      attributionAppleLogo = self->_attributionAppleLogo;
      self->_attributionAppleLogo = v18;

      [(MKAppleLogoLabel *)self->_attributionAppleLogo setTranslatesAutoresizingMaskIntoConstraints:0];
      [(MKMapSnapshotView *)self->_snapshotView addSubview:self->_attributionAppleLogo];
      v50 = self->_attributionAppleLogo;
      [(MKAppleLogoLabel *)self->_attributionAppleLogo bottomLayoutAdjustment];
      v15 = 7.0 - v20;
    }

    v21 = v3;
    v22 = [(UIImageView *)v50 leadingAnchor];
    v23 = [(MKMapSnapshotView *)self->_snapshotView leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:10.0];
    v52[0] = v24;
    v25 = [(MKMapSnapshotView *)self->_snapshotView bottomAnchor];
    v26 = [(UIImageView *)v50 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:v15];
    v52[1] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    [v21 addObjectsFromArray:v28];

    v29 = [MEMORY[0x1E69A2478] modernManager];
    v30 = [v29 activeTileGroup];
    [(MKMapItem *)self->_mapItem _coordinate];
    v31 = [v30 mapAttributionURLForCoordinate:?];
    v32 = v21;
    attributionURL = self->_attributionURL;
    self->_attributionURL = v31;

    if (self->_attributionURL)
    {
      v34 = objc_alloc_init(MKAttributionLabel);
      attributionLabel = self->_attributionLabel;
      self->_attributionLabel = v34;

      [(MKAttributionLabel *)self->_attributionLabel setMapType:0];
      [(MKAttributionLabel *)self->_attributionLabel sizeToFit];
      [(MKAttributionLabel *)self->_attributionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(MKMapSnapshotView *)self->_snapshotView addSubview:self->_attributionLabel];
      [(MKMapItemView *)self _addTapRecognizerForAttributionView:self->_attributionLabel];
      v48 = [(MKAttributionLabel *)self->_attributionLabel widthAnchor];
      [(MKAttributionLabel *)self->_attributionLabel bounds];
      v47 = [v48 constraintEqualToConstant:v36];
      v51[0] = v47;
      v37 = [(MKAttributionLabel *)self->_attributionLabel heightAnchor];
      [(MKAttributionLabel *)self->_attributionLabel bounds];
      v39 = [v37 constraintEqualToConstant:v38];
      v51[1] = v39;
      v40 = [(MKAttributionLabel *)self->_attributionLabel leadingAnchor];
      v41 = [(UIImageView *)v50 trailingAnchor];
      v42 = [v40 constraintEqualToAnchor:v41 constant:10.0];
      v51[2] = v42;
      v43 = [(MKMapSnapshotView *)self->_snapshotView bottomAnchor];
      v44 = [(MKAttributionLabel *)self->_attributionLabel bottomAnchor];
      v45 = [v43 constraintEqualToAnchor:v44 constant:10.0];
      v51[3] = v45;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];
      [v32 addObjectsFromArray:v46];
    }

    [MEMORY[0x1E696ACD8] activateConstraints:v32];
  }
}

- (void)_addTapRecognizerForAttributionView:(id)a3
{
  v4 = MEMORY[0x1E69DD060];
  v5 = a3;
  v6 = [[v4 alloc] initWithTarget:self action:sel__handleTapOnAttribution_];
  [v5 addGestureRecognizer:v6];
}

- (void)_setupLookAroundConstraints
{
  v28[6] = *MEMORY[0x1E69E9840];
  v3 = +[MKSystemController sharedInstance];
  v4 = [v3 isGlassEnabled];

  v5 = MEMORY[0x1E695DF70];
  v27 = [(MKLookAroundContainerView *)self->_lookAroundContainerView topAnchor];
  v26 = [(MKMapItemView *)self topAnchor];
  v25 = [v27 constraintGreaterThanOrEqualToAnchor:v26];
  v28[0] = v25;
  v24 = [(MKLookAroundContainerView *)self->_lookAroundContainerView bottomAnchor];
  v23 = [(MKMapItemView *)self bottomAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:-8.0];
  v28[1] = v22;
  v21 = [(MKLookAroundContainerView *)self->_lookAroundContainerView leadingAnchor];
  v20 = [(MKMapItemView *)self leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20 constant:8.0];
  v28[2] = v19;
  v6 = [(MKLookAroundContainerView *)self->_lookAroundContainerView widthAnchor];
  v7 = v6;
  v8 = 124.0;
  if (v4)
  {
    v8 = 112.0;
    v9 = 76.0;
  }

  else
  {
    v9 = 91.0;
  }

  v10 = [v6 constraintEqualToConstant:v8];
  v28[3] = v10;
  v11 = [(MKLookAroundContainerView *)self->_lookAroundContainerView heightAnchor];
  v12 = [v11 constraintEqualToConstant:v9];
  v28[4] = v12;
  v13 = [(MKLookAroundContainerView *)self->_lookAroundContainerView trailingAnchor];
  v14 = [(MKMapItemView *)self trailingAnchor];
  v15 = [v13 constraintLessThanOrEqualToAnchor:v14];
  v28[5] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:6];
  v17 = [v5 arrayWithArray:v16];
  lookAroundConstraints = self->_lookAroundConstraints;
  self->_lookAroundConstraints = v17;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_lookAroundConstraints];
}

- (void)_receivedFullyDrawnNotification:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5 = [(MKLookAroundContainerView *)self->_lookAroundContainerView lookAroundViewIfPresent];
  v6 = [v5 isLoading];

  v7 = MKGetMKMapItemViewLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_ERROR, "Received fully-drawn notification, but view still claims to be loading", v11, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_INFO, "END _fetchLookAroundViewforMapItem: (Received fully-drawn notification)", buf, 2u);
    }

    v9 = MKGetMKMapItemViewLog();
    v8 = v9;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v8, OS_SIGNPOST_INTERVAL_END, signpostID, "LoadLookAround", &unk_1A30FEA0E, v12, 2u);
    }
  }
}

- (void)_setupObserver
{
  v3 = [(MKLookAroundContainerView *)self->_lookAroundContainerView lookAroundViewIfPresent];
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__receivedFullyDrawnNotification_ name:@"MKLookAroundViewDidBecomeFullyDrawn" object:v5];

    v3 = v5;
  }
}

- (void)_handleTapOnLookAroundView:(id)a3
{
  v3 = [(MKLookAroundContainerView *)self->_lookAroundContainerView lookAroundViewIfPresent];
  [v3 openInMapsWithCompletionHandler:0];
}

- (void)_handleTapOnAttribution:(id)a3
{
  if (self->_attributionURL)
  {
    v4 = +[MKSystemController sharedInstance];
    [v4 openURL:self->_attributionURL completionHandler:0];
  }
}

- (void)_handleTapOnSnapshot:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_shouldLaunchDefaultNavigation)
  {
    v5[0] = self->_mapItem;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [MKMapItem _openDefaultNavigationWithItems:v3 launchOptions:0 fromScene:0 completionHandler:&__block_literal_global_25552];
  }

  else
  {
    mapItem = self->_mapItem;

    [(MKMapItem *)mapItem openInMapsWithLaunchOptions:0 completionHandler:&__block_literal_global_47];
  }
}

void __38__MKMapItemView__handleTapOnSnapshot___block_invoke_45(uint64_t a1, int a2)
{
  v3 = MKGetMKMapItemViewLog();
  v4 = v3;
  if (a2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v5 = "Punch into Maps successful";
      v6 = &v10;
      v7 = v4;
      v8 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_1A2EA0000, v7, v8, v5, v6, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v5 = "Punch into Maps was not successful";
    v6 = &v9;
    v7 = v4;
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

void __38__MKMapItemView__handleTapOnSnapshot___block_invoke(uint64_t a1, int a2)
{
  v3 = MKGetMKMapItemViewLog();
  v4 = v3;
  if (a2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v5 = "Punch into Default Navigation successful";
      v6 = &v10;
      v7 = v4;
      v8 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_1A2EA0000, v7, v8, v5, v6, 2u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v5 = "Punch into Default Navigation was not successful";
    v6 = &v9;
    v7 = v4;
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

- (id)_annotationView
{
  v3 = objc_alloc_init(MKPointAnnotation);
  [(MKMapItem *)self->_mapItem _coordinate];
  [(MKPointAnnotation *)v3 setCoordinate:?];
  v4 = [(MKMapItem *)self->_mapItem name];
  [(MKShape *)v3 setTitle:v4];

  v5 = [[MKMarkerAnnotationView alloc] initWithAnnotation:v3 reuseIdentifier:0];
  v6 = [(MKMapItem *)self->_mapItem _styleAttributes];
  [(MKMarkerAnnotationView *)v5 _setStyleAttributes:v6];

  return v5;
}

- (id)_customAnnotation
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DF408]);
  [(MKMapItem *)self->_mapItem _coordinate];
  v4 = [v3 initWithCoordinate:?];
  v5 = [(MKMapItem *)self->_mapItem name];
  [v4 setText:v5 locale:0];

  v6 = [(MKMapItem *)self->_mapItem _styleAttributes];
  v7 = [v6 copy];

  if (!v7)
  {
    v7 = [MEMORY[0x1E69A1DB0] markerStyleAttributes];
  }

  v10 = xmmword_1A30F71B0;
  [v7 replaceAttributes:&v10 count:2];
  [v4 setStyleAttributes:v7];
  v8 = objc_alloc_init(_MKAnnotationViewCustomFeatureAnnotation);
  [(MKMapItem *)self->_mapItem _coordinate];
  [(_MKAnnotationViewCustomFeatureAnnotation *)v8 setCoordinate:?];
  [(_MKAnnotationViewCustomFeatureAnnotation *)v8 setCustomFeature:v4];

  return v8;
}

- (id)_deriveSnapshotOptions:(BOOL)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MKMapSnapshotOptions);
  v6 = v5;
  if (v3)
  {
    [(MKMapSnapshotOptions *)v5 setMapType:105];
  }

  else
  {
    v7 = [[MKStandardMapConfiguration alloc] initWithElevationStyle:1];
    [(MKMapSnapshotOptions *)v6 setPreferredConfiguration:v7];
    v8 = [(MKMapItemView *)self _customAnnotation];
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(MKMapSnapshotOptions *)v6 _setCustomFeatureAnnotations:v9];
  }

  if (self->_camera)
  {
    [(MKMapSnapshotOptions *)v6 setCamera:?];
  }

  else
  {
    [(MKMapItem *)self->_mapItem _coordinate];
    [(MKMapSnapshotOptions *)v6 setRegion:?];
  }

  [(MKMapItemView *)self bounds];
  [(MKMapSnapshotOptions *)v6 setSize:v10, v11];
  v12 = [(MKMapItemView *)self traitCollection];
  [(MKMapSnapshotOptions *)v6 setTraitCollection:v12];

  [(MKMapSnapshotOptions *)v6 _setSearchResultsType:1];
  [(MKMapSnapshotOptions *)v6 _setShowsAppleLogo:0];
  [(MKMapSnapshotOptions *)v6 _setAuditToken:self->_auditToken];

  return v6;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = MKMapItemView;
  [(MKMapItemView *)&v8 layoutSubviews];
  if (self->_loadCalledOnce)
  {
    [(MKMapItemView *)self bounds];
    if (v4 != self->_sizeWhenLastLoaded.width || v3 != self->_sizeWhenLastLoaded.height)
    {
      [(MKMapItemView *)self bounds];
      if (v6 != 0.0)
      {
        [(MKMapItemView *)self bounds];
        if (v7 != 0.0)
        {
          [(MKMapSnapshotView *)self->_snapshotView setHidden:1];
          [(MKMapSnapshotView *)self->_snapshotView cancel];
          [MKMapItemView cancelPreviousPerformRequestsWithTarget:self selector:sel__reloadSnapshot object:0];
          [(MKMapItemView *)self performSelector:sel__reloadSnapshot withObject:0 afterDelay:0.1];
        }
      }
    }
  }
}

- (void)_takeSnapshotWithCompletionHandler:(id)a3 isReload:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(MKMapItemView *)self bounds];
  self->_sizeWhenLastLoaded.width = v7;
  self->_sizeWhenLastLoaded.height = v8;
  if (!self->_snapshotView)
  {
    v9 = objc_alloc_init(MKMapSnapshotView);
    snapshotView = self->_snapshotView;
    self->_snapshotView = v9;

    [(MKMapSnapshotView *)self->_snapshotView setClipsToBounds:1];
    v11 = +[MKSystemController sharedInstance];
    if ([v11 isGlassEnabled])
    {
      v12 = 16.0;
    }

    else
    {
      v12 = 8.0;
    }

    v13 = [(MKMapSnapshotView *)self->_snapshotView layer];
    [v13 setCornerRadius:v12];

    [(MKMapSnapshotView *)self->_snapshotView setHidden:1];
    v14 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapOnSnapshot_];
    [(MKMapSnapshotView *)self->_snapshotView addGestureRecognizer:v14];
    [(MKMapItemView *)self addSubview:self->_snapshotView];
    [(MKMapItemView *)self _setupSnapshotConstraints];
    [(MKMapItemView *)self infoCardThemeChanged];
    [(MKMapItemView *)self _updateBorders];
  }

  [(MKMapItemView *)self _resetAttributionViewState];
  if (self->_shouldShowMapAttribution)
  {
    [(MKMapItemView *)self _addAttributionViews];
  }

  objc_initWeak(&location, self);
  v15 = MKGetMKMapItemViewLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = @"NO";
    if (v4)
    {
      v16 = @"YES";
    }

    *buf = 138412290;
    v31 = v16;
    _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_INFO, "BEGIN _takeSnapshotWithCompletionHandler:isReload: %@", buf, 0xCu);
  }

  v17 = MKGetMKMapItemViewLog();
  v18 = v17;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v18, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MapSnapshot", &unk_1A30FEA0E, buf, 2u);
  }

  if (v4)
  {
    v20 = [(MKMapItemView *)self _deriveSnapshotOptions:1];
  }

  else
  {
    v20 = 0;
  }

  v21 = self->_signpostID;
  v22 = self->_snapshotView;
  v23 = [(MKMapItemView *)self _deriveSnapshotOptions:0];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __61__MKMapItemView__takeSnapshotWithCompletionHandler_isReload___block_invoke;
  v25[3] = &unk_1E76C9CE8;
  objc_copyWeak(v27, &location);
  v28 = v4;
  v27[1] = v21;
  v24 = v6;
  v26 = v24;
  [(MKMapSnapshotView *)v22 takeSnapshotWithOptions:v23 gridOptions:v20 completionHandler:v25];

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
}

void __61__MKMapItemView__takeSnapshotWithCompletionHandler_isReload___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 65, a2);
    if (!v4)
    {
      [v6[58] setHidden:0];
      goto LABEL_9;
    }
  }

  else if (!v4)
  {
LABEL_9:
    v7 = MKGetMKMapItemViewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 56))
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v18 = 138412290;
      v19 = v13;
      v9 = "END _takeSnapshotWithCompletionHandler:isReload: %@ didCompleteSuccessfully";
      v10 = v7;
      v11 = OS_LOG_TYPE_INFO;
      v12 = 12;
LABEL_14:
      _os_log_impl(&dword_1A2EA0000, v10, v11, v9, &v18, v12);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v7 = MKGetMKMapItemViewLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = @"NO";
    if (*(a1 + 56))
    {
      v8 = @"YES";
    }

    v18 = 138412546;
    v19 = v8;
    v20 = 2112;
    v21 = v4;
    v9 = "END _takeSnapshotWithCompletionHandler:isReload: %@ didCompleteWithError: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_14;
  }

LABEL_15:

  v14 = MKGetMKMapItemViewLog();
  v15 = v14;
  v16 = *(a1 + 48);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v15, OS_SIGNPOST_INTERVAL_END, v16, "MapSnapshot", &unk_1A30FEA0E, &v18, 2u);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, v4);
  }
}

- (void)_fetchLookAroundViewforMapItem:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A2478] modernManager];
  v6 = [v5 isMuninEnabled];
  if (!v4 || !v6)
  {
LABEL_14:

    goto LABEL_15;
  }

  v7 = [v4 _hasLookAroundStorefront];

  if (v7 && !self->_hideLookAroundView)
  {
    v8 = MKGetMKMapItemViewLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = _MKDebugNameForMapItem(v4);
      v18 = 138477827;
      v19 = v9;
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_INFO, "BEGIN _fetchLookAroundViewforMapItem: %{private}@", &v18, 0xCu);
    }

    v10 = MKGetMKMapItemViewLog();
    v11 = v10;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v11, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "LoadLookAround", &unk_1A30FEA0E, &v18, 2u);
    }

    v13 = objc_alloc_init(MKLookAroundContainerView);
    lookAroundContainerView = self->_lookAroundContainerView;
    self->_lookAroundContainerView = v13;

    [(MKLookAroundContainerView *)self->_lookAroundContainerView setMapItem:v4];
    [(MKLookAroundContainerView *)self->_lookAroundContainerView setClipsToBounds:1];
    v15 = +[MKSystemController sharedInstance];
    if ([v15 isGlassEnabled])
    {
      v16 = 16.0;
    }

    else
    {
      v16 = 8.0;
    }

    v17 = [(MKLookAroundContainerView *)self->_lookAroundContainerView layer];
    [v17 setCornerRadius:v16];

    [(MKLookAroundContainerView *)self->_lookAroundContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKLookAroundContainerView *)self->_lookAroundContainerView setHidden:1];
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapOnLookAroundView_];
    [(MKLookAroundContainerView *)self->_lookAroundContainerView addGestureRecognizer:v5];
    [(MKMapItemView *)self addSubview:self->_lookAroundContainerView];
    [(MKMapItemView *)self _setupLookAroundConstraints];
    [(MKMapItemView *)self _setupObserver];
    [(MKMapItemView *)self infoCardThemeChanged];
    [(MKMapItemView *)self _updateBorders];
    goto LABEL_14;
  }

LABEL_15:
}

- (void)_getParentItem
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ([(MKMapItem *)self->_mapItem _hasLookAroundStorefront])
  {
    mapItem = self->_mapItem;

    [(MKMapItemView *)self _fetchLookAroundViewforMapItem:mapItem];
  }

  else if ([(MKMapItemView *)self shouldResolveMapItem])
  {
    v4 = [(MKMapItem *)self->_mapItem _identifier];
    v5 = v4 == 0;

    v6 = +[MKMapService sharedService];
    v7 = self->_mapItem;
    if (v5)
    {
      [(MKMapItem *)v7 _coordinate];
      v10 = [v6 ticketForReverseGeocodeCoordinate:0 traits:?];
    }

    else
    {
      v8 = [(MKMapItem *)v7 _identifier];
      v14[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v10 = [v6 ticketForIdentifiers:v9 traits:0];
    }

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __31__MKMapItemView__getParentItem__block_invoke;
    v11[3] = &unk_1E76CA508;
    objc_copyWeak(&v12, &location);
    [v10 submitWithHandler:v11 networkActivity:0];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __31__MKMapItemView__getParentItem__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v7 = MKGetMKMapItemViewLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "Unable to resolve MapItem %@", &v10, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = [v5 firstObject];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchLookAroundViewforMapItem:v8];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_clampCoordinateSpan:(id)result
{
  v3 = result.var1 >= 0.0;
  var0 = 0.02;
  if (result.var1 <= 0.0)
  {
    var1 = 0.02;
  }

  else
  {
    var1 = result.var1;
  }

  v6 = result.var0 >= 0.0;
  if (result.var0 > 0.0)
  {
    var0 = result.var0;
  }

  if (result.var0 > 180.0)
  {
    v6 = 0;
  }

  if (result.var1 > 360.0)
  {
    v3 = 0;
  }

  if (v6 && v3)
  {
    result.var0 = var0;
    result.var1 = var1;
  }

  return result;
}

- (void)_callCompletionHandlerWithInvalidCoordinateSpanError
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696ABC0]);
  v4 = MKErrorDomain;
  v8 = *MEMORY[0x1E696A278];
  v9[0] = @"CoordinateSpan is invalid";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 initWithDomain:v4 code:1 userInfo:v5];
  snapshotError = self->_snapshotError;
  self->_snapshotError = v6;

  [(MKMapItemView *)self _callCompletionHandler];
}

- (void)_callCompletionHandlerWithInvalidBoundsError
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696ABC0]);
  v4 = MKErrorDomain;
  v8 = *MEMORY[0x1E696A278];
  v9[0] = @"Height or width cannot be zero";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 initWithDomain:v4 code:1 userInfo:v5];
  snapshotError = self->_snapshotError;
  self->_snapshotError = v6;

  [(MKMapItemView *)self _callCompletionHandler];
}

- (BOOL)_areBoundsValid
{
  [(MKMapItemView *)self bounds];
  if (v3 <= 0.0)
  {
    return 0;
  }

  [(MKMapItemView *)self bounds];
  return v4 > 0.0;
}

- (void)_loadMapItem:(id)a3 camera:(id)a4 coordinateSpan:(id)a5 completionHandler:(id)a6
{
  var1 = a5.var1;
  var0 = a5.var0;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = MKGetMKMapItemViewLog();
  v16 = v15;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v16, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "Load", &unk_1A30FEA0E, buf, 2u);
  }

  v18 = MEMORY[0x1A58E9F30](v14);
  mapItemloadedCompletionHandler = self->_mapItemloadedCompletionHandler;
  self->_mapItemloadedCompletionHandler = v18;

  if ([(MKMapItemView *)self _areBoundsValid])
  {
    if (v13 || var0 >= 0.0 && var0 <= 180.0 && var1 >= 0.0 && var1 <= 360.0)
    {
      self->_loadCalledOnce = 1;
      objc_storeStrong(&self->_mapItem, a3);
      objc_storeStrong(&self->_camera, a4);
      [(MKMapItemView *)self _clampCoordinateSpan:var0, var1];
      self->_coordinateSpan.latitudeDelta = v20;
      self->_coordinateSpan.longitudeDelta = v21;
      [(MKMapItemView *)self cancel];
      objc_initWeak(buf, self);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __70__MKMapItemView__loadMapItem_camera_coordinateSpan_completionHandler___block_invoke;
      v22[3] = &unk_1E76C9CC0;
      objc_copyWeak(&v23, buf);
      [(MKMapItemView *)self _takeSnapshotWithCompletionHandler:v22 isReload:0];
      [(MKMapItemView *)self _getParentItem];
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      [(MKMapItemView *)self _callCompletionHandlerWithInvalidCoordinateSpanError];
    }
  }

  else
  {
    [(MKMapItemView *)self _callCompletionHandlerWithInvalidBoundsError];
  }
}

void __70__MKMapItemView__loadMapItem_camera_coordinateSpan_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _takeSnapshotCompleted];
}

- (void)loadMapItem:(id)a3 coordinateSpan:(id)a4 completionHandler:(id)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  [v9 _coordinate];
  v12 = v11;
  v14 = v13;
  v15 = MKGetMKMapItemViewLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = _MKDebugNameForMapItem(v9);
    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v12, v14];
    v19 = [v17 stringWithFormat:@"<center:%@ span:%+.8f, %+.8f>", v18, *&var0, *&var1];

    *buf = 138478083;
    v21 = v16;
    v22 = 2113;
    v23 = v19;
    _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_INFO, "BEGIN loadMapItem: %{private}@ region: %{private}@", buf, 0x16u);
  }

  [(MKMapItemView *)self _loadMapItem:v9 camera:0 coordinateSpan:v10 completionHandler:var0, var1];
}

- (void)loadMapItem:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(MKMapItemView *)self bounds];
  v10 = [MKMapCamera cameraLookingAtMapItem:v6 forViewSize:1 allowPitch:v8, v9];
  v11 = MKGetMKMapItemViewLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = _MKDebugNameForMapItem(v6);
    v13 = [v10 description];
    v14 = 138478083;
    v15 = v12;
    v16 = 2113;
    v17 = v13;
    _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_INFO, "BEGIN loadMapItem: %{private}@ camera: %{private}@", &v14, 0x16u);
  }

  [(MKMapItemView *)self _loadMapItem:v6 camera:v10 coordinateSpan:v7 completionHandler:NAN, NAN];
}

- (void)_updateBorders
{
  v3 = 0.0;
  if (self->_shouldShowBorders)
  {
    v4 = [(MKMapItemView *)self window];
    v5 = [v4 screen];
    v6 = v5;
    if (v5)
    {
      [v5 nativeScale];
      v8 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v9 nativeScale];
      v8 = v10;
    }

    v11 = +[MKSystemController sharedInstance];
    v3 = 0.5;
    if (([v11 isGlassEnabled] & 1) == 0)
    {
      v3 = 1.0 / fmax(v8, 1.0);
    }
  }

  [(MKLookAroundContainerView *)self->_lookAroundContainerView setBorderWidth:v3];
  v12 = [(MKMapSnapshotView *)self->_snapshotView layer];
  [v12 setBorderWidth:v3];
}

- (void)setShouldShowBorders:(BOOL)a3
{
  if (self->_shouldShowBorders != a3)
  {
    self->_shouldShowBorders = a3;
    [(MKMapItemView *)self _updateBorders];
  }
}

- (void)infoCardThemeChanged
{
  v11.receiver = self;
  v11.super_class = MKMapItemView;
  [(UIView *)&v11 infoCardThemeChanged];
  v3 = [(UIView *)self mk_theme];
  v4 = [v3 separatorLineColor];
  v5 = [v4 CGColor];
  v6 = [(MKLookAroundContainerView *)self->_lookAroundContainerView layer];
  [v6 setBorderColor:v5];

  v7 = [(UIView *)self mk_theme];
  v8 = [v7 separatorLineColor];
  v9 = [v8 CGColor];
  v10 = [(MKMapSnapshotView *)self->_snapshotView layer];
  [v10 setBorderColor:v9];
}

- (MKMapItemView)initWithFrame:(CGRect)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MKMapItemView;
  v3 = [(MKMapItemView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_shouldResolveMapItem = 1;
    v5 = MKGetMKMapItemViewLog();
    v4->_signpostID = os_signpost_id_generate(v5);

    v10[0] = objc_opt_class();
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(MKMapItemView *)v4 registerForTraitChanges:v6 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v4;
}

@end