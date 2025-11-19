@interface CarMapControlsOverlay
- (CarAudioControlButton)audioControlButton;
- (CarAudioControlView)audioControlView;
- (CarCameraToggleButton)cameraToggleButton;
- (CarFloatingControlsButtonView)floatingControls;
- (CarFocusableImageButton)recenterButton;
- (CarFocusableImageButton)reportIncidentButton;
- (CarMapControlsDelegate)delegate;
- (CarMapControlsOverlay)init;
- (CarZoomButtonView)zoomControls;
- (ChromeOverlayHosting)host;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (NavAudioControlViewDelegate)audioControlDelegate;
- (id)_viewForElement:(unint64_t)a3;
- (unint64_t)audioControlButtonType;
- (unint64_t)cameraToggleButtonState;
- (void)_audioControlButtonPressed;
- (void)_cameraToggleButtonPressed;
- (void)_configureContainer:(id)a3 withElement:(unint64_t)a4 preferredEdgeLocation:(unint64_t)a5 priority:(float)a6;
- (void)_navRecenterButtonPressed;
- (void)_reportIncidentButtonPressed;
- (void)audioControlView:(id)a3 didSelectAudioType:(unint64_t)a4;
- (void)audioControlView:(id)a3 willChangeSizeWithAnimation:(id)a4;
- (void)dealloc;
- (void)mode3DButtonPressed;
- (void)panButtonPressed;
- (void)reload;
- (void)setAudioControlButtonType:(unint64_t)a3;
- (void)setAudioSettings:(unint64_t)a3;
- (void)setCameraToggleButtonState:(unint64_t)a3;
- (void)setConfiguration:(id *)a3;
- (void)setConfiguration:(id *)a3 withAnimation:(id)a4;
- (void)setContentView:(id)a3 layoutGuide:(id)a4;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setHost:(id)a3;
- (void)setMode3DEnabled:(BOOL)a3;
- (void)setMode3DState:(unint64_t)a3;
- (void)setTrackingButtonEnabled:(BOOL)a3;
- (void)setTrackingController:(id)a3;
- (void)setZoomInEnabled:(BOOL)a3;
- (void)setZoomOutEnabled:(BOOL)a3;
- (void)zoomInButtonPressed;
- (void)zoomOutButtonPressed;
@end

@implementation CarMapControlsOverlay

- (void)reload
{
  if (self->_mapControlsStackView)
  {
    LODWORD(v2) = 1148846080;
    [(CarMapControlsOverlay *)self _configureContainer:self->_topContainerView withElement:self->_configuration.topElement preferredEdgeLocation:1 priority:v2];
    LODWORD(v4) = 1148846080;
    [(CarMapControlsOverlay *)self _configureContainer:self->_centerContainerView withElement:self->_configuration.centerElement preferredEdgeLocation:1 priority:v4];
    LODWORD(v5) = 1144750080;
    [(CarMapControlsOverlay *)self _configureContainer:self->_bottomContainerView withElement:self->_configuration.bottomElement preferredEdgeLocation:4 priority:v5];
    [(NSLayoutConstraint *)self->_stackViewTopConstraint setActive:self->_configuration.topElement != 0];
    if ([(CarMapControlsOverlay *)self isHidden])
    {
      v6 = 0;
    }

    else
    {
      v6 = *&self->_configuration.topElement != 0 || self->_configuration.bottomElement != 0;
    }

    v8 = [(CarMapControlsOverlay *)self host];
    [v8 setCollisionConstraintsEnabled:v6 forOverlay:self];
  }

  else
  {
    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Will not reload map controls, overlay is not active", buf, 2u);
    }
  }
}

- (CarFloatingControlsButtonView)floatingControls
{
  floatingControls = self->_floatingControls;
  if (!floatingControls)
  {
    v4 = [[CarFloatingControlsButtonView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_floatingControls;
    self->_floatingControls = v4;

    [(CarFloatingControlsButtonView *)self->_floatingControls setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarFloatingControlsButtonView *)self->_floatingControls setDelegate:self];
    [(CarMultiButtonView *)self->_floatingControls setCombineButtons:0];
    v6 = self->_floatingControls;
    v7 = [(CarMapControlsOverlay *)self trackingController];
    [(CarFloatingControlsButtonView *)v6 setTrackingController:v7];

    [(CarFloatingControlsButtonView *)self->_floatingControls setEnableTrackingButton:[(CarMapControlsOverlay *)self trackingButtonEnabled]];
    [(CarFloatingControlsButtonView *)self->_floatingControls setEnable3DButton:[(CarMapControlsOverlay *)self mode3DEnabled]];
    [(CarFloatingControlsButtonView *)self->_floatingControls set3DButtonState:[(CarMapControlsOverlay *)self mode3DState]];
    floatingControls = self->_floatingControls;
  }

  return floatingControls;
}

- (ChromeOverlayHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (CarFocusableImageButton)reportIncidentButton
{
  reportIncidentButton = self->_reportIncidentButton;
  if (!reportIncidentButton)
  {
    v4 = [CarFocusableImageButton alloc];
    v5 = [UIImage _mapsCar_systemImageNamed:@"exclamationmark.bubble.fill" textStyle:UIFontTextStyleSubheadline];
    v6 = [(CarFocusableImageButton *)v4 initWithImage:v5];
    v7 = self->_reportIncidentButton;
    self->_reportIncidentButton = v6;

    [(CarFocusableImageButton *)self->_reportIncidentButton setAccessibilityIdentifier:@"ReportIncidentButton"];
    [(CarFocusableBlurControl *)self->_reportIncidentButton setCastsShadow:0];
    [(CarFocusableImageButton *)self->_reportIncidentButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1132068864;
    [(CarFocusableImageButton *)self->_reportIncidentButton setContentCompressionResistancePriority:1 forAxis:v8];
    [(CarFocusableImageButton *)self->_reportIncidentButton addTarget:self action:"_reportIncidentButtonPressed" forControlEvents:64];
    if (_os_feature_enabled_impl())
    {
      [(CarFocusableImageButton *)self->_reportIncidentButton setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
    }

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"CarPlay_Report_Incident" value:@"localized string not found" table:0];
    v15[0] = v10;
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"CarPlay_Exclamation" value:@"localized string not found" table:0];
    v15[1] = v12;
    v13 = [NSArray arrayWithObjects:v15 count:2];
    [(CarFocusableImageButton *)self->_reportIncidentButton setAccessibilityUserInputLabels:v13];

    reportIncidentButton = self->_reportIncidentButton;
  }

  return reportIncidentButton;
}

- (CarZoomButtonView)zoomControls
{
  zoomControls = self->_zoomControls;
  if (!zoomControls)
  {
    v4 = [[CarZoomButtonView alloc] initWithVisiblePanButton:1];
    v5 = self->_zoomControls;
    self->_zoomControls = v4;

    [(CarZoomButtonView *)self->_zoomControls setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarZoomButtonView *)self->_zoomControls setDelegate:self];
    LODWORD(v6) = 1132068864;
    [(CarZoomButtonView *)self->_zoomControls setContentHuggingPriority:1 forAxis:v6];
    LODWORD(v7) = 1132068864;
    [(CarZoomButtonView *)self->_zoomControls setContentCompressionResistancePriority:1 forAxis:v7];
    [(CarZoomButtonView *)self->_zoomControls setZoomInEnabled:[(CarMapControlsOverlay *)self zoomInEnabled]];
    [(CarZoomButtonView *)self->_zoomControls setZoomOutEnabled:[(CarMapControlsOverlay *)self zoomOutEnabled]];
    zoomControls = self->_zoomControls;
  }

  return zoomControls;
}

- (NSArray)focusOrderSubItems
{
  v3 = [(UIStackView *)self->_mapControlsStackView arrangedSubviews];
  v4 = [v3 count];

  if (v4)
  {
    v42 = *&self->_topContainerView;
    bottomContainerView = self->_bottomContainerView;
    v5 = [NSArray arrayWithObjects:&v42 count:3];
    v6 = sub_1000282CC(v5, &stru_101632948);

    v30 = [NSMutableArray arrayWithCapacity:7];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v6;
    v31 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v31)
    {
      v29 = *v34;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v33 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v8 arrangedSubviews];
            v10 = +[NSMutableArray array];
            v32 = v9;
            v11 = [v9 sortedArrayUsingComparator:&stru_1016329C8];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v12 = [v11 countByEnumeratingWithState:&v37 objects:v44 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v38;
              do
              {
                for (j = 0; j != v13; j = j + 1)
                {
                  if (*v38 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v37 + 1) + 8 * j);
                  if (objc_opt_respondsToSelector())
                  {
                    v17 = [v16 focusOrderSubItems];
                    [v10 addObjectsFromArray:v17];
                  }

                  else
                  {
                    [v10 addObject:v16];
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v37 objects:v44 count:16];
              }

              while (v13);
            }
          }

          else
          {
            v18 = [v8 subviews];
            v10 = +[NSMutableArray array];
            v32 = v18;
            v11 = [v18 sortedArrayUsingComparator:&stru_1016329C8];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v19 = [v11 countByEnumeratingWithState:&v37 objects:v44 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v38;
              do
              {
                for (k = 0; k != v20; k = k + 1)
                {
                  if (*v38 != v21)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v23 = *(*(&v37 + 1) + 8 * k);
                  if (objc_opt_respondsToSelector())
                  {
                    v24 = [v23 focusOrderSubItems];
                    [v10 addObjectsFromArray:v24];
                  }

                  else
                  {
                    [v10 addObject:v23];
                  }
                }

                v20 = [v11 countByEnumeratingWithState:&v37 objects:v44 count:16];
              }

              while (v20);
            }
          }

          v25 = [v10 copy];

          [v30 addObjectsFromArray:v25];
        }

        v31 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v31);
    }

    v26 = sub_1000282CC(v30, &stru_101632988);
  }

  else
  {
    v26 = &__NSArray0__struct;
  }

  return v26;
}

- (CarAudioControlView)audioControlView
{
  audioControlView = self->_audioControlView;
  if (!audioControlView)
  {
    v4 = [(NavAudioControlView *)[CarAudioControlView alloc] initWithDelegate:self];
    v5 = self->_audioControlView;
    self->_audioControlView = v4;

    [(NavAudioControlView *)self->_audioControlView setAvailableAudioTypes:&off_1016ED328];
    [(CarAudioControlView *)self->_audioControlView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1148846080;
    [(CarAudioControlView *)self->_audioControlView setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(CarAudioControlView *)self->_audioControlView setContentHuggingPriority:1 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(CarAudioControlView *)self->_audioControlView setContentHuggingPriority:0 forAxis:v8];
    [(CarAudioControlView *)self->_audioControlView _setTouchInsets:-4.0, -4.0, -4.0, -4.0];
    audioControlView = self->_audioControlView;
  }

  return audioControlView;
}

- (CarAudioControlButton)audioControlButton
{
  audioControlButton = self->_audioControlButton;
  if (!audioControlButton)
  {
    v4 = [[CarAudioControlButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_audioControlButton;
    self->_audioControlButton = v4;

    [(CarAudioControlButton *)self->_audioControlButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1148846080;
    [(CarAudioControlButton *)self->_audioControlButton setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(CarAudioControlButton *)self->_audioControlButton setContentHuggingPriority:1 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(CarAudioControlButton *)self->_audioControlButton setContentHuggingPriority:0 forAxis:v8];
    [(CarAudioControlButton *)self->_audioControlButton addTarget:self action:"_audioControlButtonPressed" forControlEvents:64];
    audioControlButton = self->_audioControlButton;
  }

  return audioControlButton;
}

- (CarCameraToggleButton)cameraToggleButton
{
  cameraToggleButton = self->_cameraToggleButton;
  if (!cameraToggleButton)
  {
    v4 = [[CarCameraToggleButton alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_cameraToggleButton;
    self->_cameraToggleButton = v4;

    [(CarCameraToggleButton *)self->_cameraToggleButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1148846080;
    [(CarCameraToggleButton *)self->_cameraToggleButton setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(CarCameraToggleButton *)self->_cameraToggleButton setContentHuggingPriority:1 forAxis:v7];
    [(CarCameraToggleButton *)self->_cameraToggleButton addTarget:self action:"_cameraToggleButtonPressed" forControlEvents:64];
    cameraToggleButton = self->_cameraToggleButton;
  }

  return cameraToggleButton;
}

- (unint64_t)cameraToggleButtonState
{
  v2 = [(CarMapControlsOverlay *)self cameraToggleButton];
  v3 = [v2 buttonState];

  return v3;
}

- (NavAudioControlViewDelegate)audioControlDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audioControlDelegate);

  return WeakRetained;
}

- (CarMapControlsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)mode3DButtonPressed
{
  v3 = [(CarMapControlsOverlay *)self delegate];
  [v3 carMapControls:self didTriggerAction:5];
}

- (void)zoomOutButtonPressed
{
  v3 = [(CarMapControlsOverlay *)self delegate];
  [v3 carMapControls:self didTriggerAction:4];
}

- (void)zoomInButtonPressed
{
  v3 = [(CarMapControlsOverlay *)self delegate];
  [v3 carMapControls:self didTriggerAction:3];
}

- (void)panButtonPressed
{
  v3 = [(CarMapControlsOverlay *)self delegate];
  [v3 carMapControls:self didTriggerAction:2];
}

- (void)_reportIncidentButtonPressed
{
  v3 = [(CarMapControlsOverlay *)self delegate];
  [v3 carMapControls:self didTriggerAction:8];
}

- (void)_audioControlButtonPressed
{
  v3 = [(CarMapControlsOverlay *)self delegate];
  [v3 carMapControls:self didTriggerAction:7];
}

- (void)_cameraToggleButtonPressed
{
  v3 = [(CarMapControlsOverlay *)self delegate];
  [v3 carMapControls:self didTriggerAction:6];
}

- (void)_navRecenterButtonPressed
{
  v3 = [(CarMapControlsOverlay *)self delegate];
  [v3 carMapControls:self didTriggerAction:1];
}

- (NSArray)preferredFocusEnvironments
{
  v3 = [(UIStackView *)self->_mapControlsStackView arrangedSubviews];
  v4 = [v3 count];

  if (v4)
  {
    mapControlsStackView = self->_mapControlsStackView;
    v5 = [NSArray arrayWithObjects:&mapControlsStackView count:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (void)audioControlView:(id)a3 willChangeSizeWithAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CarMapControlsOverlay *)self audioControlDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CarMapControlsOverlay *)self audioControlDelegate];
    [v10 audioControlView:v6 willChangeSizeWithAnimation:v7];
  }

  if ([v6 isDescendantOfView:self->_mapControlsStackView])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100A5D70C;
    v14[3] = &unk_101661B18;
    v14[4] = self;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100A5D718;
    v11[3] = &unk_101661A90;
    v12 = v6;
    v13 = self;
    [v7 addPreparation:v14 animations:v11 completion:0];
  }
}

- (void)audioControlView:(id)a3 didSelectAudioType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CarMapControlsOverlay *)self audioControlDelegate];
  [v7 audioControlView:v6 didSelectAudioType:a4];
}

- (void)setContentView:(id)a3 layoutGuide:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIStackView *)self->_mapControlsStackView superview];
  if (v8 != v6)
  {
    [(UIStackView *)self->_mapControlsStackView removeFromSuperview];
    mapControlsStackView = self->_mapControlsStackView;
    self->_mapControlsStackView = 0;

    if (v6)
    {
      v10 = sub_100006E1C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Will create new map control container view", buf, 2u);
      }

      v78 = v8;

      v11 = [[PassThroughStackView alloc] initWithArrangedSubviews:&__NSArray0__struct];
      v12 = self->_mapControlsStackView;
      self->_mapControlsStackView = &v11->super;

      [(UIStackView *)self->_mapControlsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIStackView *)self->_mapControlsStackView setAxis:1];
      [(UIStackView *)self->_mapControlsStackView setAlignment:3];
      [(UIStackView *)self->_mapControlsStackView setDistribution:3];
      [(UIStackView *)self->_mapControlsStackView setSpacing:4.0];
      [(UIStackView *)self->_mapControlsStackView setLayoutMarginsRelativeArrangement:1];
      [(UIStackView *)self->_mapControlsStackView setDirectionalLayoutMargins:4.0, 0.0, 4.0, 0.0];
      [(UIStackView *)self->_mapControlsStackView setAlpha:0.0];
      v13 = self->_mapControlsStackView;
      v14 = [(UIStackView *)v13 heightAnchor];
      LODWORD(v15) = 1112014848;
      v16 = [v14 constraintEqualToConstant:0.0 priority:v15];
      v86[0] = v16;
      v17 = [(UIStackView *)self->_mapControlsStackView widthAnchor];
      [(CarMapControlsOverlay *)self _mapControlGutterWidth];
      v18 = [v17 constraintEqualToConstant:?];
      v86[1] = v18;
      v19 = [NSArray arrayWithObjects:v86 count:2];
      [(UIStackView *)v13 addConstraints:v19];

      LODWORD(v20) = 1148846080;
      [(UIStackView *)self->_mapControlsStackView setContentCompressionResistancePriority:1 forAxis:v20];
      LODWORD(v21) = 1148846080;
      [(UIStackView *)self->_mapControlsStackView setContentCompressionResistancePriority:0 forAxis:v21];
      if (!self->_disableGlass)
      {
        [(UIStackView *)self->_mapControlsStackView _maps_applyGlassGroup];
      }

      [v6 addSubview:self->_mapControlsStackView];
      v22 = [(UIStackView *)self->_mapControlsStackView topAnchor];
      v23 = [v7 topAnchor];
      LODWORD(v24) = 1148846080;
      v25 = [v22 constraintEqualToAnchor:v23 constant:0.0 priority:v24];
      stackViewTopConstraint = self->_stackViewTopConstraint;
      self->_stackViewTopConstraint = v25;

      v85[0] = self->_stackViewTopConstraint;
      v76 = [(UIStackView *)self->_mapControlsStackView topAnchor];
      v27 = [v7 topAnchor];
      v28 = [v76 constraintGreaterThanOrEqualToAnchor:v27 constant:0.0];
      v85[1] = v28;
      v29 = [(UIStackView *)self->_mapControlsStackView bottomAnchor];
      [v7 bottomAnchor];
      v30 = v80 = v7;
      v31 = [v29 constraintEqualToAnchor:v30 constant:-0.0];
      v85[2] = v31;
      v32 = [(UIStackView *)self->_mapControlsStackView _maps_rightRHDAnchor];
      [v80 _maps_rightRHDAnchor];
      v33 = v79 = v6;
      LODWORD(v34) = 1148846080;
      v35 = [v32 _maps_constraintWithRHDAnchor:v33 relation:0 constant:-0.0 priority:v34];
      v85[3] = v35;
      v36 = [NSArray arrayWithObjects:v85 count:4];
      [NSLayoutConstraint activateConstraints:v36];

      v37 = +[MapsExternalDevice sharedInstance];
      if ([v37 rightHandDrive])
      {
        v38 = 2;
      }

      else
      {
        v38 = 8;
      }

      v39 = [(CarMapControlsOverlay *)self host];
      v77 = [v39 collisionGuideForEdge:v38];

      v40 = [(CarMapControlsOverlay *)self host];
      v41 = [v40 collisionGuideForEdge:4];

      v42 = [(CarMapControlsOverlay *)self host];
      v43 = [(UIStackView *)self->_mapControlsStackView topAnchor];
      v44 = [v77 bottomAnchor];
      v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44];
      v84[0] = v45;
      v46 = [(UIStackView *)self->_mapControlsStackView _maps_leftRHDAnchor];
      v47 = [v41 _maps_rightRHDAnchor];
      LODWORD(v48) = 1148846080;
      v49 = [v46 _maps_constraintWithRHDAnchor:v47 relation:1 constant:0.0 priority:v48];
      v84[1] = v49;
      v50 = [NSArray arrayWithObjects:v84 count:2];
      [v42 setCollisionConstraints:v50 forOverlay:self];

      v7 = v80;
      v51 = objc_alloc_init(CarMapControlsAutohidingContainerView);
      topContainerView = self->_topContainerView;
      self->_topContainerView = v51;

      [(CarMapControlsAutohidingContainerView *)self->_topContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v53) = 1148846080;
      [(CarMapControlsAutohidingContainerView *)self->_topContainerView setContentHuggingPriority:1 forAxis:v53];
      v54 = objc_alloc_init(CarMapControlsAutohidingContainerView);
      centerContainerView = self->_centerContainerView;
      self->_centerContainerView = v54;

      [(CarMapControlsAutohidingContainerView *)self->_centerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v56) = 1148846080;
      [(CarMapControlsAutohidingContainerView *)self->_centerContainerView setContentHuggingPriority:1 forAxis:v56];
      v57 = objc_alloc_init(CarMapControlsAutohidingContainerView);
      bottomContainerView = self->_bottomContainerView;
      self->_bottomContainerView = v57;

      [(CarMapControlsAutohidingContainerView *)self->_bottomContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v59) = 1148846080;
      [(CarMapControlsAutohidingContainerView *)self->_bottomContainerView setContentHuggingPriority:1 forAxis:v59];
      v60 = self->_mapControlsStackView;
      v82 = *&self->_topContainerView;
      v83 = self->_bottomContainerView;
      v61 = [NSArray arrayWithObjects:&v82 count:3];
      [(UIStackView *)v60 _maps_setArrangedSubviews:v61];

      v62 = [(CarMapControlsAutohidingContainerView *)self->_centerContainerView centerYAnchor];
      v63 = [v80 centerYAnchor];
      LODWORD(v64) = 1144750080;
      v65 = [v62 constraintEqualToAnchor:v63 constant:0.0 priority:v64];
      [v65 setActive:1];

      v6 = v79;
      [(CarMapControlsOverlay *)self reload];

      v8 = v78;
    }

    else
    {
      v66 = self->_topContainerView;
      self->_topContainerView = 0;

      v67 = self->_centerContainerView;
      self->_centerContainerView = 0;

      v68 = self->_bottomContainerView;
      self->_bottomContainerView = 0;

      floatingControls = self->_floatingControls;
      self->_floatingControls = 0;

      zoomControls = self->_zoomControls;
      self->_zoomControls = 0;

      cameraToggleButton = self->_cameraToggleButton;
      self->_cameraToggleButton = 0;

      audioControlButton = self->_audioControlButton;
      self->_audioControlButton = 0;

      audioControlView = self->_audioControlView;
      self->_audioControlView = 0;

      recenterButton = self->_recenterButton;
      self->_recenterButton = 0;

      reportIncidentButton = self->_reportIncidentButton;
      self->_reportIncidentButton = 0;
    }
  }
}

- (void)setHost:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_host);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_host, v4);
    if (v4)
    {
      v6 = [v4 overlayContentView];
      v7 = [v4 layoutGuideForOverlay:self];
      [(CarMapControlsOverlay *)self setContentView:v6 layoutGuide:v7];

      v8 = [(UIStackView *)self->_mapControlsStackView _maps_leftRHDAnchor];
      v9 = [v4 mapInsetsLayoutGuide];
      v10 = [v9 _maps_rightRHDAnchor];
      LODWORD(v11) = 1148846080;
      v12 = [v8 _maps_constraintWithRHDAnchor:v10 relation:1 constant:0.0 priority:v11];
      v21 = v12;
      v13 = [NSArray arrayWithObjects:&v21 count:1];
      [v4 setMapInsetsConstraints:v13 forOverlay:self];

      v14 = [(UIStackView *)self->_mapControlsStackView _maps_leftRHDAnchor];
      v15 = [v4 viewportLayoutGuide];
      v16 = [v15 _maps_rightRHDAnchor];
      LODWORD(v17) = 1148846080;
      v18 = [v14 _maps_constraintWithRHDAnchor:v16 relation:1 constant:0.0 priority:v17];
      v20 = v18;
      v19 = [NSArray arrayWithObjects:&v20 count:1];
      [v4 setViewportConstraints:v19 forOverlay:self];
    }

    else
    {
      [(CarMapControlsOverlay *)self setContentView:0 layoutGuide:0];
    }
  }
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (!self->_mapControlsStackView)
  {
    return;
  }

  v4 = a3;
  if (!a4)
  {
    goto LABEL_12;
  }

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v6 = sub_100006E1C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_11:

LABEL_12:
      v13 = 0;
      goto LABEL_14;
    }

    v7 = self;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CarMapControlsOverlay *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_10;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_10:

    *buf = 138543362;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Reduce motion enabled, running map controls update without animation", buf, 0xCu);

    goto LABEL_11;
  }

  v13 = 1;
LABEL_14:
  if (v4)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  [(UIStackView *)self->_mapControlsStackView alpha];
  if (v14 != v15)
  {
    v16 = sub_100006E1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      if (v4)
      {
        v17 = "hide";
      }

      else
      {
        v17 = "show";
      }

      v18 = [(UIStackView *)self->_mapControlsStackView arrangedSubviews];
      v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 count]);
      *buf = 136315394;
      v24 = v17;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Will %s map control view using alpha (controls: %@)", buf, 0x16u);
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100A5E43C;
    v21[3] = &unk_101654728;
    v21[4] = self;
    *&v21[5] = v14;
    v22 = v4;
    v20 = objc_retainBlock(v21);
    if (v13)
    {
      if (+[UIView _isInAnimationBlock])
      {
        (v20[2])(v20);
      }

      else
      {
        [UIView animateWithDuration:4 delay:v20 options:0 animations:0.1 completion:0.0];
      }
    }

    else
    {
      [UIView performWithoutAnimation:v20];
    }
  }
}

- (void)_configureContainer:(id)a3 withElement:(unint64_t)a4 preferredEdgeLocation:(unint64_t)a5 priority:(float)a6
{
  v10 = a3;
  if (a5 == 1 || a5 == 4)
  {
    v11 = [(CarMapControlsOverlay *)self _viewForElement:a4];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v12 = [v10 subviews];
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      do
      {
        v16 = 0;
        do
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v38 + 1) + 8 * v16);
          if (v17 != v11)
          {
            [v17 removeFromSuperview];
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v14);
    }

    [v10 invalidateIntrinsicContentSize];
    if (v11)
    {
      v18 = [v10 subviews];
      v19 = [v18 containsObject:v11];

      if ((v19 & 1) == 0)
      {
        [v10 addSubview:v11];
        v37 = [NSMutableArray arrayWithCapacity:4];
        v20 = [v11 leadingAnchor];
        v21 = [v10 leadingAnchor];
        v22 = [v20 constraintEqualToAnchor:v21];
        v45[0] = v22;
        v23 = [v11 trailingAnchor];
        v24 = [v10 trailingAnchor];
        v25 = [v23 constraintEqualToAnchor:v24];
        v45[1] = v25;
        v26 = [NSArray arrayWithObjects:v45 count:2];
        [NSLayoutConstraint activateConstraints:v26];

        v27 = [v11 topAnchor];
        v28 = [v10 topAnchor];
        if (a5 == 1)
        {
          v30 = [v27 constraintEqualToAnchor:v28];
          v44[0] = v30;
          v31 = [v11 bottomAnchor];
          v32 = [v10 bottomAnchor];
          *&v33 = a6;
          v34 = [v31 constraintLessThanOrEqualToAnchor:v32 constant:0.0 priority:v33];
          v44[1] = v34;
          v35 = v44;
        }

        else
        {
          *&v29 = a6;
          v30 = [v27 constraintGreaterThanOrEqualToAnchor:v28 constant:0.0 priority:v29];
          v43[0] = v30;
          v31 = [v11 bottomAnchor];
          v32 = [v10 bottomAnchor];
          v34 = [v31 constraintEqualToAnchor:v32];
          v43[1] = v34;
          v35 = v43;
        }

        v36 = [NSArray arrayWithObjects:v35 count:2];
        [v37 addObjectsFromArray:v36];

        [NSLayoutConstraint activateConstraints:v37];
      }
    }
  }

  else
  {
    v11 = sub_100006E1C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Unsupported edge location.", buf, 2u);
    }
  }
}

- (id)_viewForElement:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 3)
  {
    if (a3 == 6)
    {
      v7 = [(CarMapControlsOverlay *)self recenterButton];
    }

    else
    {
      if (a3 == 5)
      {
        v8 = [(CarMapControlsOverlay *)self zoomControls];
        v9 = v8;
        v10 = 1;
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_18;
        }

        v8 = [(CarMapControlsOverlay *)self zoomControls];
        v9 = v8;
        v10 = 0;
      }

      [v8 setPanButtonVisible:v10];

      v7 = [(CarMapControlsOverlay *)self zoomControls];
    }

    goto LABEL_17;
  }

  switch(a3)
  {
    case 1uLL:
      v7 = [(CarMapControlsOverlay *)self floatingControls];
      goto LABEL_17;
    case 2uLL:
      if (MapsFeature_IsEnabled_MoreReportTypes())
      {
        [(CarMapControlsOverlay *)self audioControlButton];
      }

      else
      {
        [(CarMapControlsOverlay *)self audioControlView];
      }
      v12 = ;
      v13 = [CarMapControlsStackView alloc];
      v14 = [(CarMapControlsOverlay *)self cameraToggleButton];
      v16[0] = v14;
      v16[1] = v12;
      v15 = [NSArray arrayWithObjects:v16 count:2];
      v4 = [(CarMapControlsStackView *)v13 initWithArrangedSubviews:v15];

      [(CarMapControlsStackView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CarMapControlsStackView *)v4 setAxis:1];
      [(CarMapControlsStackView *)v4 setDistribution:0];
      [(CarMapControlsStackView *)v4 setAlignment:0];
      [(CarMapControlsStackView *)v4 setSpacing:4.0];

      break;
    case 3uLL:
      v5 = [MapsSettings valueForConfigKey:NavigationConfig_ReportAndVerifyIncidentsWhileNavigating[0], NavigationConfig_ReportAndVerifyIncidentsWhileNavigating[1]];
      v6 = [v5 BOOLValue];

      if (v6)
      {
        v7 = [(CarMapControlsOverlay *)self reportIncidentButton];
LABEL_17:
        v4 = v7;
        break;
      }

      v4 = 0;
      break;
  }

LABEL_18:

  return v4;
}

- (void)setAudioSettings:(unint64_t)a3
{
  v5 = [(CarMapControlsOverlay *)self audioControlView];
  v6 = [v5 currentAudioType];

  if (v6 != a3)
  {
    v7 = [(CarMapControlsOverlay *)self audioControlView];
    [v7 setCurrentAudioType:a3];
  }
}

- (void)setZoomOutEnabled:(BOOL)a3
{
  if (self->_zoomOutEnabled != a3)
  {
    self->_zoomOutEnabled = a3;
    v5 = [(CarMapControlsOverlay *)self zoomControls];
    [v5 setZoomOutEnabled:self->_zoomOutEnabled];
  }
}

- (void)setZoomInEnabled:(BOOL)a3
{
  if (self->_zoomInEnabled != a3)
  {
    self->_zoomInEnabled = a3;
    v5 = [(CarMapControlsOverlay *)self zoomControls];
    [v5 setZoomInEnabled:self->_zoomInEnabled];
  }
}

- (void)setTrackingController:(id)a3
{
  v5 = a3;
  if (self->_trackingController != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_trackingController, a3);
    v6 = [(CarMapControlsOverlay *)self floatingControls];
    [v6 setTrackingController:self->_trackingController];

    v5 = v7;
  }
}

- (void)setAudioControlButtonType:(unint64_t)a3
{
  v4 = [(CarMapControlsOverlay *)self audioControlButton];
  [v4 setButtonAudioType:a3];
}

- (unint64_t)audioControlButtonType
{
  v2 = [(CarMapControlsOverlay *)self audioControlButton];
  v3 = [v2 buttonAudioType];

  return v3;
}

- (void)setCameraToggleButtonState:(unint64_t)a3
{
  v4 = [(CarMapControlsOverlay *)self cameraToggleButton];
  [v4 setButtonState:a3];
}

- (void)setMode3DState:(unint64_t)a3
{
  if (self->_mode3DState != a3)
  {
    self->_mode3DState = a3;
    v5 = [(CarMapControlsOverlay *)self floatingControls];
    [v5 set3DButtonState:a3];
  }
}

- (void)setMode3DEnabled:(BOOL)a3
{
  if (self->_mode3DEnabled != a3)
  {
    v4 = a3;
    self->_mode3DEnabled = a3;
    v5 = [(CarMapControlsOverlay *)self floatingControls];
    [v5 setEnable3DButton:v4];
  }
}

- (void)setTrackingButtonEnabled:(BOOL)a3
{
  if (self->_trackingButtonEnabled != a3)
  {
    v4 = a3;
    self->_trackingButtonEnabled = a3;
    v5 = [(CarMapControlsOverlay *)self floatingControls];
    [v5 setEnableTrackingButton:v4];
  }
}

- (CarFocusableImageButton)recenterButton
{
  recenterButton = self->_recenterButton;
  if (!recenterButton)
  {
    v4 = [CarFocusableImageButton alloc];
    v5 = [UIImage _mapsCar_systemImageNamed:@"location" textStyle:UIFontTextStyleSubheadline];
    v6 = [(CarFocusableImageButton *)v4 initWithImage:v5];
    v7 = self->_recenterButton;
    self->_recenterButton = v6;

    [(CarFocusableImageButton *)self->_recenterButton setAccessibilityIdentifier:@"RecenterButton"];
    [(CarFocusableImageButton *)self->_recenterButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarFocusableImageButton *)self->_recenterButton addTarget:self action:"_navRecenterButtonPressed" forControlEvents:64];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"CarPlay_Recenter" value:@"localized string not found" table:0];
    v12 = v9;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    [(CarFocusableImageButton *)self->_recenterButton setAccessibilityUserInputLabels:v10];

    recenterButton = self->_recenterButton;
  }

  return recenterButton;
}

- (void)setConfiguration:(id *)a3 withAnimation:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3->var0 != self->_configuration.topElement || a3->var1 != self->_configuration.centerElement || a3->var2 != self->_configuration.bottomElement)
  {
    if ([v6 isAnimated])
    {
      v10 = *&self->_configuration.topElement == 0 && self->_configuration.bottomElement == 0;
      v11 = *&a3->var0 == 0 && a3->var2 == 0;
      v12 = *&a3->var0;
      self->_configuration.bottomElement = a3->var2;
      *&self->_configuration.topElement = v12;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100A5F26C;
      v19[3] = &unk_101660130;
      v20 = v10;
      v21 = v11;
      v19[4] = self;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100A5F28C;
      v15[3] = &unk_101632908;
      v16 = v10;
      v17 = v11;
      v15[4] = self;
      v18 = 1;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100A5F330;
      v13[3] = &unk_1016574C0;
      v14 = v11;
      v13[4] = self;
      [v7 addPreparation:v19 animations:v15 completion:v13];
    }

    else
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100A5F230;
      v22[3] = &unk_1016328E0;
      v22[4] = self;
      v23 = *&a3->var0;
      var2 = a3->var2;
      [v7 addPreparation:v22];
    }
  }
}

- (void)setConfiguration:(id *)a3
{
  if (a3->var0 != self->_configuration.topElement || a3->var1 != self->_configuration.centerElement || a3->var2 != self->_configuration.bottomElement)
  {
    v5 = *&a3->var0;
    self->_configuration.bottomElement = a3->var2;
    *&self->_configuration.topElement = v5;
    [(CarMapControlsOverlay *)self reload];
  }
}

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  [(CarMapControlsOverlay *)self setContentView:0 layoutGuide:0];
  v3.receiver = self;
  v3.super_class = CarMapControlsOverlay;
  [(CarMapControlsOverlay *)&v3 dealloc];
}

- (CarMapControlsOverlay)init
{
  v9.receiver = self;
  v9.super_class = CarMapControlsOverlay;
  v2 = [(CarMapControlsOverlay *)&v9 init];
  v2->_disableGlass = GEOConfigGetBOOL();
  objc_initWeak(&location, v2);
  v3 = &_dispatch_main_q;
  objc_copyWeak(&v7, &location);
  v4 = _GEOConfigAddBlockListenerForKey();
  geoConfigIncidentReportingListener = v2->_geoConfigIncidentReportingListener;
  v2->_geoConfigIncidentReportingListener = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  return v2;
}

@end