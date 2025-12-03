@interface AVRoutePickerView
+ (id)_airPlayStatusQueue;
- (AVRoutePickerView)initWithCoder:(id)coder;
- (AVRoutePickerView)initWithFrame:(CGRect)frame;
- (BOOL)_isAirPlayOrCustomRouteActive;
- (CGRect)_normalizedRect:(CGRect)rect fromView:(id)view;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)alignmentRectInsets;
- (double)baselineOffsetFromBottom;
- (id)delegate;
- (id)topViewControllerForPresentingAlert;
- (void)_addCustomRoutingItemsToRoutePickingControls;
- (void)_createOrUpdateRoutePickerButton;
- (void)_registerNotifications;
- (void)_routePickerButtonTapped:(id)tapped;
- (void)_setRoutePickerButtonAlpha:(double)alpha animated:(BOOL)animated;
- (void)_setupOutputContext;
- (void)_updateAirPlayActive;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setActiveTintColor:(UIColor *)activeTintColor;
- (void)setAirPlayActive:(BOOL)active;
- (void)setCustomButton:(id)button;
- (void)setCustomRoutingController:(AVCustomRoutingController *)customRoutingController;
- (void)setFrame:(CGRect)frame;
- (void)setPrioritizesVideoDevices:(BOOL)prioritizesVideoDevices;
- (void)tintColorDidChange;
- (void)updateButtonAppearance;
@end

@implementation AVRoutePickerView

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_addCustomRoutingItemsToRoutePickingControls
{
  v38 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_routePickingControls);

  if (WeakRetained)
  {
    selfCopy = self;
    customRoutingController = [(AVRoutePickerView *)self customRoutingController];
    customActionItems = [customRoutingController customActionItems];

    if ([customActionItems count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = customActionItems;
      v7 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v7)
      {
        v8 = *v26;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v26 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v25 + 1) + 8 * i);
            v11 = _AVLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              type = [v10 type];
              overrideTitle = [v10 overrideTitle];
              identifier = [v10 identifier];
              *buf = 136315906;
              v30 = "[AVRoutePickerView _addCustomRoutingItemsToRoutePickingControls]";
              v31 = 2112;
              v32 = type;
              v33 = 2112;
              v34 = overrideTitle;
              v35 = 2112;
              v36 = identifier;
              _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s Adding custom row with type: %@, titleOverride: %@, identifier: %@", buf, 0x2Au);
            }

            v15 = objc_loadWeakRetained(&selfCopy->_routePickingControls);
            type2 = [v10 type];
            overrideTitle2 = [v10 overrideTitle];
            identifier2 = [v10 identifier];
            [v15 addCustomRowWithType:type2 titleOverride:overrideTitle2 identifier:identifier2];
          }

          v7 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
        }

        while (v7);
      }

      objc_initWeak(buf, selfCopy);
      v19 = objc_loadWeakRetained(&selfCopy->_routePickingControls);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __65__AVRoutePickerView__addCustomRoutingItemsToRoutePickingControls__block_invoke;
      v22[3] = &unk_1E7208BB0;
      objc_copyWeak(&v24, buf);
      customActionItems = obj;
      v23 = customActionItems;
      [v19 setCustomRowDidTapHandler:v22];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    else
    {
      v20 = _AVLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v30 = "[AVRoutePickerView _addCustomRoutingItemsToRoutePickingControls]";
        _os_log_impl(&dword_18B49C000, v20, OS_LOG_TYPE_DEFAULT, "%s No custom rows to be added to MPMediaControls.", buf, 0xCu);
      }
    }
  }

  else
  {
    customActionItems = _AVLog();
    if (os_log_type_enabled(customActionItems, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[AVRoutePickerView _addCustomRoutingItemsToRoutePickingControls]";
      _os_log_impl(&dword_18B49C000, customActionItems, OS_LOG_TYPE_DEFAULT, "%s Can't add custom rows to MPMediaControls because MPMediaControls instance doesn't exist.", buf, 0xCu);
    }
  }
}

void __65__AVRoutePickerView__addCustomRoutingItemsToRoutePickingControls__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 identifier];
          v12 = [v11 isEqualToString:v3];

          if (v12)
          {
            v13 = [WeakRetained customRoutingController];
            [v13 handleCustomActionItemSelected:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (CGRect)_normalizedRect:(CGRect)rect fromView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  window = [viewCopy window];
  [window bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [window convertRect:viewCopy fromView:{x, y, width, height}];
  v32 = v19;
  v33 = v18;
  v30 = v21;
  v31 = v20;

  v22 = *MEMORY[0x1E695F058];
  v23 = *(MEMORY[0x1E695F058] + 8);
  v24 = *(MEMORY[0x1E695F058] + 16);
  v25 = *(MEMORY[0x1E695F058] + 24);
  v34.origin.x = v11;
  v34.origin.y = v13;
  v34.size.width = v15;
  v34.size.height = v17;
  if (!CGRectIsEmpty(v34))
  {
    v35.origin.x = v11;
    v35.origin.y = v13;
    v35.size.width = v15;
    v35.size.height = v17;
    if (!CGRectIsInfinite(v35))
    {
      v22 = v33 / v15;
      v23 = v32 / v17;
      v24 = v31 / v15;
      v25 = v30 / v17;
    }
  }

  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (BOOL)_isAirPlayOrCustomRouteActive
{
  v33 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v20 = _AVMethodProem(self);
      *buf = 138412290;
      v32 = v20;
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "%@ should be called from a background thread", buf, 0xCu);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  outputDevices = [(AVOutputContext *)self->_outputContext outputDevices];
  v5 = [outputDevices countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(outputDevices);
        }

        if ([*(*(&v25 + 1) + 8 * i) deviceType] < 2)
        {
          v9 = 1;
          goto LABEL_15;
        }
      }

      v6 = [outputDevices countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_15:

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  customRoutingController = [(AVRoutePickerView *)self customRoutingController];
  authorizedRoutes = [customRoutingController authorizedRoutes];

  v12 = [authorizedRoutes countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(authorizedRoutes);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        customRoutingController2 = [(AVRoutePickerView *)self customRoutingController];
        LOBYTE(v16) = [customRoutingController2 isRouteActive:v16];

        if (v16)
        {
          v18 = 1;
          goto LABEL_25;
        }
      }

      v13 = [authorizedRoutes countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_25:

  return v9 | v18;
}

- (void)_setupOutputContext
{
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  routingContextUID = [mEMORY[0x1E6958460] routingContextUID];

  v4 = [MEMORY[0x1E69587F0] outputContextForID:routingContextUID];
  outputContext = self->_outputContext;
  self->_outputContext = v4;
}

- (void)_updateAirPlayActive
{
  objc_initWeak(&location, self);
  v2 = +[AVRoutePickerView _airPlayStatusQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__AVRoutePickerView__updateAirPlayActive__block_invoke;
  v3[3] = &unk_1E7209EA8;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __41__AVRoutePickerView__updateAirPlayActive__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _isAirPlayOrCustomRouteActive];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __41__AVRoutePickerView__updateAirPlayActive__block_invoke_2;
    v4[3] = &unk_1E7208B88;
    v4[4] = v2;
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

- (void)_registerNotifications
{
  objc_initWeak(&location, self);
  v3 = +[AVRoutePickerView _airPlayStatusQueue];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __43__AVRoutePickerView__registerNotifications__block_invoke;
  v7 = &unk_1E7209EA8;
  objc_copyWeak(&v8, &location);
  dispatch_async(v3, &v4);

  [(AVObservationController *)self->_observationController startObservingNotificationForName:*MEMORY[0x1E6958640] object:0 notificationCenter:0 observationHandler:&__block_literal_global_62, v4, v5, v6, v7];
  [(AVObservationController *)self->_observationController startObservingNotificationForName:*MEMORY[0x1E6958638] object:0 notificationCenter:0 observationHandler:&__block_literal_global_64_21230];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __43__AVRoutePickerView__registerNotifications__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVRoutePickerView__registerNotifications__block_invoke_2;
  block[3] = &unk_1E7209EA8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __43__AVRoutePickerView__registerNotifications__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[57] startObservingNotificationForName:*MEMORY[0x1E69587A0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_56_21233];
    [v2[57] startObservingNotificationForName:*MEMORY[0x1E69586B0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_58_21234];
    [v2[57] startObservingNotificationForName:*MEMORY[0x1E69586A8] object:0 notificationCenter:0 observationHandler:&__block_literal_global_60_21235];
    WeakRetained = v2;
  }
}

- (void)_setRoutePickerButtonAlpha:(double)alpha animated:(BOOL)animated
{
  animatedCopy = animated;
  [(UIButton *)self->_routePickerButton alpha];
  if (v7 != alpha)
  {
    if ([(UIViewPropertyAnimator *)self->_buttonHighlightAnimator isRunning]&& [(UIViewPropertyAnimator *)self->_buttonHighlightAnimator isInterruptible])
    {
      [(UIViewPropertyAnimator *)self->_buttonHighlightAnimator stopAnimation:0];
      [(UIViewPropertyAnimator *)self->_buttonHighlightAnimator finishAnimationAtPosition:2];
    }

    if (([(UIViewPropertyAnimator *)self->_buttonHighlightAnimator isRunning]& 1) == 0)
    {
      if (animatedCopy)
      {
        objc_initWeak(&location, self);
        v8 = objc_alloc(MEMORY[0x1E69DD278]);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __57__AVRoutePickerView__setRoutePickerButtonAlpha_animated___block_invoke;
        v12[3] = &unk_1E7209A38;
        objc_copyWeak(v13, &location);
        v13[1] = *&alpha;
        v9 = [v8 initWithDuration:3 curve:v12 animations:0.25];
        buttonHighlightAnimator = self->_buttonHighlightAnimator;
        self->_buttonHighlightAnimator = v9;

        [(UIViewPropertyAnimator *)self->_buttonHighlightAnimator startAnimation];
        objc_destroyWeak(v13);
        objc_destroyWeak(&location);
      }

      else
      {
        routePickerButton = self->_routePickerButton;

        [(UIButton *)routePickerButton setAlpha:alpha];
      }
    }
  }
}

void __57__AVRoutePickerView__setRoutePickerButtonAlpha_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[52] setAlpha:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_routePickerButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(AVRoutePickerView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AVRoutePickerView *)self delegate];
    [delegate2 routePickerViewWillBeginPresentingRoutes:self];
  }

  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_routePickingControls);

  if (!WeakRetained)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__21241;
    v31 = __Block_byref_object_dispose__21242;
    v32 = 0;
    routingConfiguration = [(AVRoutePickerView *)self routingConfiguration];
    v10 = routingConfiguration;
    if (routingConfiguration && ![routingConfiguration isDefault])
    {
      v13 = objc_alloc(getMPMediaControlsClass());
      sharingPolicy = [v10 sharingPolicy];
      outputContextID = [v10 outputContextID];
      v15 = [v13 initWithRouteSharingPolicy:sharingPolicy routingContextUID:outputContextID];
      v16 = v28[5];
      v28[5] = v15;
    }

    else
    {
      v11 = objc_alloc_init(getMPMediaControlsClass());
      outputContextID = v28[5];
      v28[5] = v11;
    }

    objc_storeWeak(&self->_routePickingControls, v28[5]);
    [(AVRoutePickerView *)self _addCustomRoutingItemsToRoutePickingControls];
    configuration = [v28[5] configuration];
    [configuration setSortByIsVideoRoute:{-[AVRoutePickerView prioritizesVideoDevices](self, "prioritizesVideoDevices")}];

    configuration2 = [v28[5] configuration];
    NSSelectorFromString(&cfstr_Usegenericdevi.isa);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      configuration3 = [v28[5] configuration];
      v21 = MEMORY[0x1E696AD98];
      customRoutingController = [(AVRoutePickerView *)self customRoutingController];
      v23 = [v21 numberWithBool:customRoutingController != 0];
      [configuration3 setValue:v23 forKey:@"useGenericDevicesIconInHeader"];
    }

    [v28[5] startPrewarming];
    v24 = v28[5];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __46__AVRoutePickerView__routePickerButtonTapped___block_invoke;
    v25[3] = &unk_1E7208B40;
    objc_copyWeak(&v26, &location);
    v25[4] = &v27;
    [v24 setDismissHandler:v25];
    [v28[5] present];
    objc_destroyWeak(&v26);

    _Block_object_dispose(&v27, 8);
  }

  objc_destroyWeak(&location);
}

void __46__AVRoutePickerView__routePickerButtonTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [WeakRetained delegate];
      [v4 routePickerViewDidEndPresentingRoutes:WeakRetained];
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (id)topViewControllerForPresentingAlert
{
  window = [(AVRoutePickerView *)self window];
  rootViewController = [window rootViewController];

  if (rootViewController)
  {
    presentedViewController = [rootViewController presentedViewController];
    if (presentedViewController)
    {
      presentedViewController2 = presentedViewController;
      do
      {
        v6 = presentedViewController2;

        presentedViewController2 = [v6 presentedViewController];

        rootViewController = v6;
      }

      while (presentedViewController2);
    }

    else
    {
      v6 = rootViewController;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_createOrUpdateRoutePickerButton
{
  [(UIButton *)self->_routePickerButton removeFromSuperview];
  self->_oldSize = *MEMORY[0x1E695F060];
  customButton = [(AVRoutePickerView *)self customButton];
  routePickerButton = self->_routePickerButton;
  self->_routePickerButton = customButton;

  v5 = self->_routePickerButton;
  if (!v5)
  {
    v6 = [MEMORY[0x1E69DC738] buttonWithType:0];
    v7 = self->_routePickerButton;
    self->_routePickerButton = v6;

    [(UIButton *)self->_routePickerButton setAccessibilityIdentifier:@"AirPlay"];
    v8 = self->_routePickerButton;
    v9 = AVLocalizedString(@"AirPlay");
    [(UIButton *)v8 setAccessibilityLabel:v9];

    [(UIButton *)self->_routePickerButton setContentEdgeInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UIButton *)self->_routePickerButton setContentHorizontalAlignment:3];
    [(UIButton *)self->_routePickerButton setContentVerticalAlignment:3];
    customRoutingController = [(AVRoutePickerView *)self customRoutingController];

    if (customRoutingController)
    {
      v11 = @"AVRoutePickerViewCustomDevicesGlyph";
    }

    else
    {
      prioritizesVideoDevices = [(AVRoutePickerView *)self prioritizesVideoDevices];
      v11 = @"AVRoutePickerViewCircularAirPlayGlyph";
      if (prioritizesVideoDevices)
      {
        v11 = @"AVRoutePickerViewSquareAirPlayGlyph";
      }
    }

    v13 = v11;
    v14 = [[AVMicaPackage alloc] initWithPackageName:v13 layoutDirection:[(AVRoutePickerView *)self effectiveUserInterfaceLayoutDirection]];
    routePickerButtonMicaPackage = self->_routePickerButtonMicaPackage;
    self->_routePickerButtonMicaPackage = v14;

    [(AVMicaPackage *)self->_routePickerButtonMicaPackage removeCompositingFiltersWithName:@"plusL"];
    layer = [(UIButton *)self->_routePickerButton layer];
    rootLayer = [(AVMicaPackage *)self->_routePickerButtonMicaPackage rootLayer];
    [layer addSublayer:rootLayer];

    v5 = self->_routePickerButton;
  }

  [(UIButton *)v5 addTarget:self action:sel__routePickerButtonTapped_ forControlEvents:0x2000];
  customButton2 = [(AVRoutePickerView *)self customButton];

  if (!customButton2)
  {
    [(UIButton *)self->_routePickerButton addTarget:self action:sel__routePickerButtonTouchDown_ forControlEvents:1];
    [(UIButton *)self->_routePickerButton addTarget:self action:sel__routePickerButtonTouchDragEnter_ forControlEvents:16];
    [(UIButton *)self->_routePickerButton addTarget:self action:sel__routePickerButtonTouchUp_ forControlEvents:480];
  }

  [(UIButton *)self->_routePickerButton setPointerInteractionEnabled:1];
  [(UIButton *)self->_routePickerButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AVRoutePickerView *)self addSubview:self->_routePickerButton];
  array = [MEMORY[0x1E695DF70] array];
  topAnchor = [(UIButton *)self->_routePickerButton topAnchor];
  topAnchor2 = [(AVRoutePickerView *)self topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v21];

  bottomAnchor = [(UIButton *)self->_routePickerButton bottomAnchor];
  bottomAnchor2 = [(AVRoutePickerView *)self bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v24];

  leadingAnchor = [(UIButton *)self->_routePickerButton leadingAnchor];
  leadingAnchor2 = [(AVRoutePickerView *)self leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v27];

  trailingAnchor = [(UIButton *)self->_routePickerButton trailingAnchor];
  trailingAnchor2 = [(AVRoutePickerView *)self trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v30];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
  [(AVRoutePickerView *)self updateButtonAppearance];
}

- (void)setCustomRoutingController:(AVCustomRoutingController *)customRoutingController
{
  objc_storeStrong(&self->_customRoutingController, customRoutingController);

  [(AVRoutePickerView *)self _createOrUpdateRoutePickerButton];
}

- (void)setPrioritizesVideoDevices:(BOOL)prioritizesVideoDevices
{
  if (self->_prioritizesVideoDevices != prioritizesVideoDevices)
  {
    v4 = prioritizesVideoDevices;
    self->_prioritizesVideoDevices = prioritizesVideoDevices;
    WeakRetained = objc_loadWeakRetained(&self->_routePickingControls);
    configuration = [WeakRetained configuration];
    [configuration setSortByIsVideoRoute:v4];

    [(AVRoutePickerView *)self _createOrUpdateRoutePickerButton];
  }
}

- (void)updateButtonAppearance
{
  v38 = *MEMORY[0x1E69E9840];
  customButton = [(AVRoutePickerView *)self customButton];

  if (!customButton)
  {
    routePickerButton = self->_routePickerButton;
    if ([(AVRoutePickerView *)self isAirPlayActive])
    {
      activeTintColor = [(AVRoutePickerView *)self activeTintColor];
      [(UIButton *)routePickerButton setTintColor:activeTintColor];
    }

    else
    {
      [(UIButton *)routePickerButton setTintColor:0];
    }
  }

  isAirPlayActive = [(AVRoutePickerView *)self isAirPlayActive];
  v7 = @"off";
  if (isAirPlayActive)
  {
    v7 = @"on";
  }

  v8 = v7;
  tintColor = [(AVRoutePickerView *)self tintColor];
  if ([(AVRoutePickerView *)self isAirPlayActive])
  {
    activeTintColor2 = [(AVRoutePickerView *)self activeTintColor];
  }

  else
  {
    activeTintColor2 = tintColor;
  }

  v11 = activeTintColor2;
  v24 = 0.0;
  v25 = 0.0;
  v22 = 0;
  v23 = 0.0;
  [activeTintColor2 getRed:&v25 green:&v24 blue:&v23 alpha:&v22];
  v12 = _AVLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v25 * 255.0;
    v14 = v24 * 255.0;
    v15 = v23 * 255.0;
    v16 = v22;
    isAirPlayActive2 = [(AVRoutePickerView *)self isAirPlayActive];
    *buf = 136316418;
    v27 = "[AVRoutePickerView updateButtonAppearance]";
    v18 = @"Inactive";
    v28 = 2048;
    v29 = v13;
    if (isAirPlayActive2)
    {
      v18 = @"Active";
    }

    v30 = 2048;
    v31 = v14;
    v32 = 2048;
    v33 = v15;
    v34 = 2048;
    v35 = v16;
    v36 = 2112;
    v37 = v18;
    _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s Setting mica color: (R: %.2f G: %.2f B: %.2f Alpha: %.2f) and state: %@.", buf, 0x3Eu);
  }

  routePickerButtonMicaPackage = self->_routePickerButtonMicaPackage;
  isAirPlayActive3 = [(AVRoutePickerView *)self isAirPlayActive];
  activeTintColor3 = tintColor;
  if (isAirPlayActive3)
  {
    activeTintColor3 = [(AVRoutePickerView *)self activeTintColor];
  }

  -[AVMicaPackage setState:color:](routePickerButtonMicaPackage, "setState:color:", v8, [activeTintColor3 CGColor]);

  if (isAirPlayActive3)
  {
  }
}

- (void)setCustomButton:(id)button
{
  buttonCopy = button;
  if (self->_customButton != buttonCopy)
  {
    v6 = buttonCopy;
    objc_storeStrong(&self->_customButton, button);
    [(AVRoutePickerView *)self _createOrUpdateRoutePickerButton];
    buttonCopy = v6;
  }
}

- (void)setAirPlayActive:(BOOL)active
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_airPlayActive != active)
  {
    activeCopy = active;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVRoutePickerView setAirPlayActive:]";
      v10 = "airPlayActive";
      v9 = 2080;
      if (activeCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_airPlayActive = activeCopy;
    [(AVRoutePickerView *)self updateButtonAppearance];
  }
}

- (void)setActiveTintColor:(UIColor *)activeTintColor
{
  _defaultActiveTintColor = activeTintColor;
  if (!_defaultActiveTintColor)
  {
    _defaultActiveTintColor = [(AVRoutePickerView *)self _defaultActiveTintColor];
  }

  obj = _defaultActiveTintColor;
  if (self->_activeTintColor != _defaultActiveTintColor)
  {
    objc_storeStrong(&self->_activeTintColor, _defaultActiveTintColor);
  }

  [(AVRoutePickerView *)self updateButtonAppearance];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AVRoutePickerView;
  [(AVRoutePickerView *)&v3 didMoveToWindow];
  [(AVRoutePickerView *)self updateButtonAppearance];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = AVRoutePickerView;
  [(AVRoutePickerView *)&v3 tintColorDidChange];
  [(AVRoutePickerView *)self updateButtonAppearance];
}

- (double)baselineOffsetFromBottom
{
  [(UIButton *)self->_routePickerButton intrinsicContentSize];
  [(AVMicaPackage *)self->_routePickerButtonMicaPackage targetSize];

  UIRoundToViewScale();
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  [(AVMicaPackage *)self->_routePickerButtonMicaPackage targetSize];
  v3 = v2 * 0.1;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UIButton *)self->_routePickerButton intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (dyld_program_sdk_at_least())
  {
    routePickerButton = self->_routePickerButton;

    [(UIButton *)routePickerButton sizeThatFits:width, height];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AVRoutePickerView;
    [(AVRoutePickerView *)&v9 sizeThatFits:width, height];
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = AVRoutePickerView;
  [(AVRoutePickerView *)&v28 layoutSubviews];
  [(AVRoutePickerView *)self bounds];
  if (v3 != self->_oldSize.width || v4 != self->_oldSize.height)
  {
    v6 = v3;
    v7 = v4;
    self->_oldSize.width = v3;
    self->_oldSize.height = v4;
    [(AVMicaPackage *)self->_routePickerButtonMicaPackage unscaledSize];
    v9 = (44.0 - v8) * 0.5;
    [(AVMicaPackage *)self->_routePickerButtonMicaPackage unscaledSize];
    v11 = (44.0 - v10) * 0.5;
    [(AVMicaPackage *)self->_routePickerButtonMicaPackage unscaledSize];
    v13 = fmax((v6 - v12) * 0.5, 0.0);
    if (v13 >= v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = v13;
    }

    [(AVMicaPackage *)self->_routePickerButtonMicaPackage unscaledSize];
    v16 = fmax((v7 - v15) * 0.5, 0.0);
    if (v16 >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v16;
    }

    [(AVRoutePickerView *)self bounds];
    v30 = CGRectInset(v29, v14, v17);
    width = v30.size.width;
    height = v30.size.height;
    IsNull = CGRectIsNull(v30);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
    if (!IsNull)
    {
      v22 = height;
      v21 = width;
    }

    [(AVMicaPackage *)self->_routePickerButtonMicaPackage setTargetSize:v21, v22];
  }

  customButton = [(AVRoutePickerView *)self customButton];

  if (!customButton)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    rootLayer = [(AVMicaPackage *)self->_routePickerButtonMicaPackage rootLayer];
    layer = [(UIButton *)self->_routePickerButton layer];
    [layer bounds];
    MidX = CGRectGetMidX(v31);
    layer2 = [(UIButton *)self->_routePickerButton layer];
    [layer2 bounds];
    [rootLayer setPosition:{MidX, CGRectGetMidY(v32)}];

    [MEMORY[0x1E6979518] commit];
  }

  [(AVRoutePickerView *)self updateButtonAppearance];
}

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = AVRoutePickerView;
  [(AVRoutePickerView *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)dealloc
{
  [(AVObservationController *)self->_observationController stopAllObservation];
  v3.receiver = self;
  v3.super_class = AVRoutePickerView;
  [(AVRoutePickerView *)&v3 dealloc];
}

- (AVRoutePickerView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AVRoutePickerView;
  v3 = [(AVRoutePickerView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    _CommonInit_21292(v3);
  }

  return v4;
}

- (AVRoutePickerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AVRoutePickerView;
  v3 = [(AVRoutePickerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _CommonInit_21292(v3);
  }

  return v4;
}

+ (id)_airPlayStatusQueue
{
  if (_airPlayStatusQueue_onceToken != -1)
  {
    dispatch_once(&_airPlayStatusQueue_onceToken, &__block_literal_global_21299);
  }

  v3 = _airPlayStatusQueue_statusQueue;

  return v3;
}

void __40__AVRoutePickerView__airPlayStatusQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v1 = dispatch_queue_create("com.apple.avkit.avroutepickerview", attr);
  v2 = _airPlayStatusQueue_statusQueue;
  _airPlayStatusQueue_statusQueue = v1;
}

@end