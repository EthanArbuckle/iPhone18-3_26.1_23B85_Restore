@interface AVRoutePickerView
+ (id)_airPlayStatusQueue;
- (AVRoutePickerView)initWithCoder:(id)a3;
- (AVRoutePickerView)initWithFrame:(CGRect)a3;
- (BOOL)_isAirPlayOrCustomRouteActive;
- (CGRect)_normalizedRect:(CGRect)a3 fromView:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (double)baselineOffsetFromBottom;
- (id)delegate;
- (id)topViewControllerForPresentingAlert;
- (void)_addCustomRoutingItemsToRoutePickingControls;
- (void)_createOrUpdateRoutePickerButton;
- (void)_registerNotifications;
- (void)_routePickerButtonTapped:(id)a3;
- (void)_setRoutePickerButtonAlpha:(double)a3 animated:(BOOL)a4;
- (void)_setupOutputContext;
- (void)_updateAirPlayActive;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setActiveTintColor:(UIColor *)activeTintColor;
- (void)setAirPlayActive:(BOOL)a3;
- (void)setCustomButton:(id)a3;
- (void)setCustomRoutingController:(AVCustomRoutingController *)customRoutingController;
- (void)setFrame:(CGRect)a3;
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
    v4 = self;
    v5 = [(AVRoutePickerView *)self customRoutingController];
    v6 = [v5 customActionItems];

    if ([v6 count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = v6;
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
              v12 = [v10 type];
              v13 = [v10 overrideTitle];
              v14 = [v10 identifier];
              *buf = 136315906;
              v30 = "[AVRoutePickerView _addCustomRoutingItemsToRoutePickingControls]";
              v31 = 2112;
              v32 = v12;
              v33 = 2112;
              v34 = v13;
              v35 = 2112;
              v36 = v14;
              _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s Adding custom row with type: %@, titleOverride: %@, identifier: %@", buf, 0x2Au);
            }

            v15 = objc_loadWeakRetained(&v4->_routePickingControls);
            v16 = [v10 type];
            v17 = [v10 overrideTitle];
            v18 = [v10 identifier];
            [v15 addCustomRowWithType:v16 titleOverride:v17 identifier:v18];
          }

          v7 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
        }

        while (v7);
      }

      objc_initWeak(buf, v4);
      v19 = objc_loadWeakRetained(&v4->_routePickingControls);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __65__AVRoutePickerView__addCustomRoutingItemsToRoutePickingControls__block_invoke;
      v22[3] = &unk_1E7208BB0;
      objc_copyWeak(&v24, buf);
      v6 = obj;
      v23 = v6;
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
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[AVRoutePickerView _addCustomRoutingItemsToRoutePickingControls]";
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s Can't add custom rows to MPMediaControls because MPMediaControls instance doesn't exist.", buf, 0xCu);
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

- (CGRect)_normalizedRect:(CGRect)a3 fromView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [v8 window];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v9 convertRect:v8 fromView:{x, y, width, height}];
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
  v4 = [(AVOutputContext *)self->_outputContext outputDevices];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v25 + 1) + 8 * i) deviceType] < 2)
        {
          v9 = 1;
          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
  v10 = [(AVRoutePickerView *)self customRoutingController];
  v11 = [v10 authorizedRoutes];

  v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        v17 = [(AVRoutePickerView *)self customRoutingController];
        LOBYTE(v16) = [v17 isRouteActive:v16];

        if (v16)
        {
          v18 = 1;
          goto LABEL_25;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
  v3 = [MEMORY[0x1E6958460] sharedInstance];
  v6 = [v3 routingContextUID];

  v4 = [MEMORY[0x1E69587F0] outputContextForID:v6];
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

- (void)_setRoutePickerButtonAlpha:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(UIButton *)self->_routePickerButton alpha];
  if (v7 != a3)
  {
    if ([(UIViewPropertyAnimator *)self->_buttonHighlightAnimator isRunning]&& [(UIViewPropertyAnimator *)self->_buttonHighlightAnimator isInterruptible])
    {
      [(UIViewPropertyAnimator *)self->_buttonHighlightAnimator stopAnimation:0];
      [(UIViewPropertyAnimator *)self->_buttonHighlightAnimator finishAnimationAtPosition:2];
    }

    if (([(UIViewPropertyAnimator *)self->_buttonHighlightAnimator isRunning]& 1) == 0)
    {
      if (v4)
      {
        objc_initWeak(&location, self);
        v8 = objc_alloc(MEMORY[0x1E69DD278]);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __57__AVRoutePickerView__setRoutePickerButtonAlpha_animated___block_invoke;
        v12[3] = &unk_1E7209A38;
        objc_copyWeak(v13, &location);
        v13[1] = *&a3;
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

        [(UIButton *)routePickerButton setAlpha:a3];
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

- (void)_routePickerButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(AVRoutePickerView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AVRoutePickerView *)self delegate];
    [v7 routePickerViewWillBeginPresentingRoutes:self];
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
    v9 = [(AVRoutePickerView *)self routingConfiguration];
    v10 = v9;
    if (v9 && ![v9 isDefault])
    {
      v13 = objc_alloc(getMPMediaControlsClass());
      v14 = [v10 sharingPolicy];
      v12 = [v10 outputContextID];
      v15 = [v13 initWithRouteSharingPolicy:v14 routingContextUID:v12];
      v16 = v28[5];
      v28[5] = v15;
    }

    else
    {
      v11 = objc_alloc_init(getMPMediaControlsClass());
      v12 = v28[5];
      v28[5] = v11;
    }

    objc_storeWeak(&self->_routePickingControls, v28[5]);
    [(AVRoutePickerView *)self _addCustomRoutingItemsToRoutePickingControls];
    v17 = [v28[5] configuration];
    [v17 setSortByIsVideoRoute:{-[AVRoutePickerView prioritizesVideoDevices](self, "prioritizesVideoDevices")}];

    v18 = [v28[5] configuration];
    NSSelectorFromString(&cfstr_Usegenericdevi.isa);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [v28[5] configuration];
      v21 = MEMORY[0x1E696AD98];
      v22 = [(AVRoutePickerView *)self customRoutingController];
      v23 = [v21 numberWithBool:v22 != 0];
      [v20 setValue:v23 forKey:@"useGenericDevicesIconInHeader"];
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
  v2 = [(AVRoutePickerView *)self window];
  v3 = [v2 rootViewController];

  if (v3)
  {
    v4 = [v3 presentedViewController];
    if (v4)
    {
      v5 = v4;
      do
      {
        v6 = v5;

        v5 = [v6 presentedViewController];

        v3 = v6;
      }

      while (v5);
    }

    else
    {
      v6 = v3;
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
  v3 = [(AVRoutePickerView *)self customButton];
  routePickerButton = self->_routePickerButton;
  self->_routePickerButton = v3;

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
    v10 = [(AVRoutePickerView *)self customRoutingController];

    if (v10)
    {
      v11 = @"AVRoutePickerViewCustomDevicesGlyph";
    }

    else
    {
      v12 = [(AVRoutePickerView *)self prioritizesVideoDevices];
      v11 = @"AVRoutePickerViewCircularAirPlayGlyph";
      if (v12)
      {
        v11 = @"AVRoutePickerViewSquareAirPlayGlyph";
      }
    }

    v13 = v11;
    v14 = [[AVMicaPackage alloc] initWithPackageName:v13 layoutDirection:[(AVRoutePickerView *)self effectiveUserInterfaceLayoutDirection]];
    routePickerButtonMicaPackage = self->_routePickerButtonMicaPackage;
    self->_routePickerButtonMicaPackage = v14;

    [(AVMicaPackage *)self->_routePickerButtonMicaPackage removeCompositingFiltersWithName:@"plusL"];
    v16 = [(UIButton *)self->_routePickerButton layer];
    v17 = [(AVMicaPackage *)self->_routePickerButtonMicaPackage rootLayer];
    [v16 addSublayer:v17];

    v5 = self->_routePickerButton;
  }

  [(UIButton *)v5 addTarget:self action:sel__routePickerButtonTapped_ forControlEvents:0x2000];
  v18 = [(AVRoutePickerView *)self customButton];

  if (!v18)
  {
    [(UIButton *)self->_routePickerButton addTarget:self action:sel__routePickerButtonTouchDown_ forControlEvents:1];
    [(UIButton *)self->_routePickerButton addTarget:self action:sel__routePickerButtonTouchDragEnter_ forControlEvents:16];
    [(UIButton *)self->_routePickerButton addTarget:self action:sel__routePickerButtonTouchUp_ forControlEvents:480];
  }

  [(UIButton *)self->_routePickerButton setPointerInteractionEnabled:1];
  [(UIButton *)self->_routePickerButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(AVRoutePickerView *)self addSubview:self->_routePickerButton];
  v31 = [MEMORY[0x1E695DF70] array];
  v19 = [(UIButton *)self->_routePickerButton topAnchor];
  v20 = [(AVRoutePickerView *)self topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v31 addObject:v21];

  v22 = [(UIButton *)self->_routePickerButton bottomAnchor];
  v23 = [(AVRoutePickerView *)self bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v31 addObject:v24];

  v25 = [(UIButton *)self->_routePickerButton leadingAnchor];
  v26 = [(AVRoutePickerView *)self leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v31 addObject:v27];

  v28 = [(UIButton *)self->_routePickerButton trailingAnchor];
  v29 = [(AVRoutePickerView *)self trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [v31 addObject:v30];

  [MEMORY[0x1E696ACD8] activateConstraints:v31];
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
    v7 = [WeakRetained configuration];
    [v7 setSortByIsVideoRoute:v4];

    [(AVRoutePickerView *)self _createOrUpdateRoutePickerButton];
  }
}

- (void)updateButtonAppearance
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(AVRoutePickerView *)self customButton];

  if (!v3)
  {
    routePickerButton = self->_routePickerButton;
    if ([(AVRoutePickerView *)self isAirPlayActive])
    {
      v5 = [(AVRoutePickerView *)self activeTintColor];
      [(UIButton *)routePickerButton setTintColor:v5];
    }

    else
    {
      [(UIButton *)routePickerButton setTintColor:0];
    }
  }

  v6 = [(AVRoutePickerView *)self isAirPlayActive];
  v7 = @"off";
  if (v6)
  {
    v7 = @"on";
  }

  v8 = v7;
  v9 = [(AVRoutePickerView *)self tintColor];
  if ([(AVRoutePickerView *)self isAirPlayActive])
  {
    v10 = [(AVRoutePickerView *)self activeTintColor];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;
  v24 = 0.0;
  v25 = 0.0;
  v22 = 0;
  v23 = 0.0;
  [v10 getRed:&v25 green:&v24 blue:&v23 alpha:&v22];
  v12 = _AVLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v25 * 255.0;
    v14 = v24 * 255.0;
    v15 = v23 * 255.0;
    v16 = v22;
    v17 = [(AVRoutePickerView *)self isAirPlayActive];
    *buf = 136316418;
    v27 = "[AVRoutePickerView updateButtonAppearance]";
    v18 = @"Inactive";
    v28 = 2048;
    v29 = v13;
    if (v17)
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
  v20 = [(AVRoutePickerView *)self isAirPlayActive];
  v21 = v9;
  if (v20)
  {
    v21 = [(AVRoutePickerView *)self activeTintColor];
  }

  -[AVMicaPackage setState:color:](routePickerButtonMicaPackage, "setState:color:", v8, [v21 CGColor]);

  if (v20)
  {
  }
}

- (void)setCustomButton:(id)a3
{
  v5 = a3;
  if (self->_customButton != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customButton, a3);
    [(AVRoutePickerView *)self _createOrUpdateRoutePickerButton];
    v5 = v6;
  }
}

- (void)setAirPlayActive:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_airPlayActive != a3)
  {
    v3 = a3;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVRoutePickerView setAirPlayActive:]";
      v10 = "airPlayActive";
      v9 = 2080;
      if (v3)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_airPlayActive = v3;
    [(AVRoutePickerView *)self updateButtonAppearance];
  }
}

- (void)setActiveTintColor:(UIColor *)activeTintColor
{
  v4 = activeTintColor;
  if (!v4)
  {
    v4 = [(AVRoutePickerView *)self _defaultActiveTintColor];
  }

  obj = v4;
  if (self->_activeTintColor != v4)
  {
    objc_storeStrong(&self->_activeTintColor, v4);
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

  v23 = [(AVRoutePickerView *)self customButton];

  if (!v23)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v24 = [(AVMicaPackage *)self->_routePickerButtonMicaPackage rootLayer];
    v25 = [(UIButton *)self->_routePickerButton layer];
    [v25 bounds];
    MidX = CGRectGetMidX(v31);
    v27 = [(UIButton *)self->_routePickerButton layer];
    [v27 bounds];
    [v24 setPosition:{MidX, CGRectGetMidY(v32)}];

    [MEMORY[0x1E6979518] commit];
  }

  [(AVRoutePickerView *)self updateButtonAppearance];
}

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = AVRoutePickerView;
  [(AVRoutePickerView *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)dealloc
{
  [(AVObservationController *)self->_observationController stopAllObservation];
  v3.receiver = self;
  v3.super_class = AVRoutePickerView;
  [(AVRoutePickerView *)&v3 dealloc];
}

- (AVRoutePickerView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVRoutePickerView;
  v3 = [(AVRoutePickerView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    _CommonInit_21292(v3);
  }

  return v4;
}

- (AVRoutePickerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AVRoutePickerView;
  v3 = [(AVRoutePickerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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