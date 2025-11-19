@interface BCUIAvocadoViewController
+ (id)avocadoViewControllerForWidgetFamily:(int64_t)a3;
+ (void)initialize;
- (id)_newBatteryDeviceView;
- (id)_synthesizedDebugIdentifier;
- (unint64_t)_maximumNumberOfBatteryDeviceViews;
- (void)_configureBatteryDeviceView:(id)a3 withBatteryDevice:(id)a4 transitionCoordinator:(id)a5;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_validateBatteryDeviceViewsIfNecessary;
- (void)invalidateBatteryDeviceState;
- (void)setBatteryDevices:(id)a3;
- (void)setScaleFactor:(double)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation BCUIAvocadoViewController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    MEMORY[0x1EEDF0450]();
  }
}

+ (id)avocadoViewControllerForWidgetFamily:(int64_t)a3
{
  if (a3 == 3 || a3 == 2 || a3 == 1)
  {
    v3 = objc_opt_class();
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromWidgetFamily();
    [v6 handleFailureInMethod:a2 object:a1 file:@"BCUIAvocadoViewController.m" lineNumber:61 description:{@"Unsupported size: %@", v7}];

    v3 = 0;
  }

  v8 = objc_alloc_init(v3);

  return v8;
}

- (void)setBatteryDevices:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = *MEMORY[0x1E698E830];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(BCUIAvocadoViewController *)v5 _synthesizedDebugIdentifier];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1C1C4A000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@) Updating battery devices : %{public}@", &v10, 0x16u);
    }

    v8 = [v4 copy];
    batteryDevices = v5->_batteryDevices;
    v5->_batteryDevices = v8;

    [(BCUIAvocadoViewController *)v5 invalidateBatteryDeviceState];
  }

  objc_sync_exit(v5);
}

- (void)setScaleFactor:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_scaleFactor != a3)
  {
    self->_scaleFactor = a3;
    if (self->_batteryDeviceViewsValid)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v4 = self->_batteryDeviceViews;
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

            [*(*(&v10 + 1) + 8 * v8++) setScaleFactor:{self->_scaleFactor, v10}];
          }

          while (v6 != v8);
          v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }

      v9 = [(BCUIAvocadoViewController *)self viewIfLoaded];
      [v9 setNeedsLayout];
    }
  }
}

- (void)invalidateBatteryDeviceState
{
  self->_batteryDeviceViewsValid = 0;
  v2 = [(BCUIAvocadoViewController *)self view];
  [v2 setNeedsLayout];
}

- (void)viewDidLoad
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = BCUIAvocadoViewController;
  [(BCUIAvocadoViewController *)&v7 viewDidLoad];
  v3 = objc_opt_self();
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__BCUIAvocadoViewController_viewDidLoad__block_invoke;
  v6[3] = &unk_1E814ECC0;
  v6[4] = self;
  v5 = [(BCUIAvocadoViewController *)self registerForTraitChanges:v4 withHandler:v6];
}

void __40__BCUIAvocadoViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 traitCollection];
  v2 = [v3 preferredContentSizeCategory];
  [v1 _contentSizeCategoryDidChange:v2];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BCUIAvocadoViewController;
  [(BCUIAvocadoViewController *)&v3 viewWillLayoutSubviews];
  [(BCUIAvocadoViewController *)self _validateBatteryDeviceViewsIfNecessary];
}

- (void)_validateBatteryDeviceViewsIfNecessary
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_batteryDeviceViewsValid)
  {
    v4 = *MEMORY[0x1E698E830];
    if (os_log_type_enabled(*MEMORY[0x1E698E830], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(BCUIAvocadoViewController *)self _synthesizedDebugIdentifier];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1C1C4A000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) Validating device views", &buf, 0xCu);
    }

    objc_initWeak(&location, self);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    v7 = objc_alloc_init(MEMORY[0x1E69DD808]);
    [v7 _setIsAnimated:1];
    v8 = MEMORY[0x1E69DD250];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__BCUIAvocadoViewController__validateBatteryDeviceViewsIfNecessary__block_invoke;
    v13[3] = &unk_1E814ED10;
    objc_copyWeak(v16, &location);
    v13[4] = self;
    v16[1] = a2;
    v14 = v7;
    p_buf = &buf;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__BCUIAvocadoViewController__validateBatteryDeviceViewsIfNecessary__block_invoke_3;
    v10[3] = &unk_1E814ED38;
    v12 = &buf;
    v9 = v14;
    v11 = v9;
    [v8 _animateUsingDefaultDampedSpringWithDelay:4 initialSpringVelocity:v13 options:v10 animations:0.0 completion:0.0];

    objc_destroyWeak(v16);
    _Block_object_dispose(&buf, 8);

    objc_destroyWeak(&location);
  }
}

void __67__BCUIAvocadoViewController__validateBatteryDeviceViewsIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    v5 = [v4[126] copy];
    objc_sync_exit(v4);

    v6 = [*(a1 + 32) _includeEmptyDevices];
    v30 = (a1 + 32);
    v7 = [*(a1 + 32) _maximumNumberOfBatteryDeviceViews];
    if ((v6 & 1) == 0)
    {
      v8 = [v5 count];
      if (v7 >= v8)
      {
        v7 = v8;
      }
    }

    v28 = v3;
    if (v7)
    {
      v9 = 0;
      v29 = v5;
      do
      {
        v10 = v7;
        if (v9 >= [v5 count])
        {
          v11 = 0;
        }

        else
        {
          v11 = [v5 objectAtIndex:v9];
        }

        v12 = [v4[125] count];
        if (v12 <= v9)
        {
          v13 = [*v30 _newBatteryDeviceView];
        }

        else
        {
          v13 = [v4[125] objectAtIndex:v9];
        }

        v14 = v13;
        if (!v13)
        {
          __67__BCUIAvocadoViewController__validateBatteryDeviceViewsIfNecessary__block_invoke_cold_1((a1 + 64), v30);
        }

        v15 = v4[125];
        if (v12 <= v9)
        {
          if (!v15)
          {
            v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v17 = v4[125];
            v4[125] = v16;

            v15 = v4[125];
          }

          [v15 addObject:v14];
          v18 = [*v30 view];
          [v18 addSubview:v14];
        }

        else
        {
          [v15 replaceObjectAtIndex:v9 withObject:v14];
        }

        v19 = *(a1 + 32);
        v20 = [*(a1 + 40) _transitionCoordinator];
        [v19 _configureBatteryDeviceView:v14 withBatteryDevice:v11 transitionCoordinator:v20];

        if (v12 <= v9)
        {
          v21 = MEMORY[0x1E69DD250];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __67__BCUIAvocadoViewController__validateBatteryDeviceViewsIfNecessary__block_invoke_2;
          v31[3] = &unk_1E814ECE8;
          v22 = v14;
          v32 = v22;
          [v21 performWithoutAnimation:v31];
          [v22 setAlpha:1.0];
        }

        else
        {
          [v14 layoutIfNeeded];
        }

        v5 = v29;

        ++v9;
        v7 = v10;
      }

      while (v10 != v9);
    }

    while ([v4[125] count] > v7)
    {
      v23 = [v4[125] lastObject];
      v24 = *(*(*(a1 + 48) + 8) + 40);
      if (!v24)
      {
        v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v26 = *(*(a1 + 48) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;

        v24 = *(*(*(a1 + 48) + 8) + 40);
      }

      [v24 addObject:v23];
      [v23 setAlpha:0.0];
      [v4[125] removeObject:v23];
    }

    [*(a1 + 40) __runAlongsideAnimations];

    v3 = v28;
  }
}

uint64_t __67__BCUIAvocadoViewController__validateBatteryDeviceViewsIfNecessary__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

uint64_t __67__BCUIAvocadoViewController__validateBatteryDeviceViewsIfNecessary__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [*(a1 + 32) completeTransition:a2];
}

- (id)_synthesizedDebugIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = v4;
  if (self->_debugIdentifier)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" [%@]", self->_debugIdentifier];
    v7 = [v3 stringWithFormat:@"<%@%@: %p>", v5, v6, self];
  }

  else
  {
    v7 = [v3 stringWithFormat:@"<%@%@: %p>", v4, &stru_1F41678D8, self];
  }

  return v7;
}

- (unint64_t)_maximumNumberOfBatteryDeviceViews
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BCUIAvocadoViewController.m" lineNumber:195 description:@"ABSTRACT"];

  return 0;
}

- (id)_newBatteryDeviceView
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BCUIAvocadoViewController.m" lineNumber:204 description:@"ABSTRACT"];

  return 0;
}

- (void)_configureBatteryDeviceView:(id)a3 withBatteryDevice:(id)a4 transitionCoordinator:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [BCUIAvocadoViewController(SubclassOverrides) _configureBatteryDeviceView:a2 withBatteryDevice:self transitionCoordinator:?];
  }

  v12 = *MEMORY[0x1E698E830];
  if (os_log_type_enabled(*MEMORY[0x1E698E830], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [(BCUIAvocadoViewController *)self _synthesizedDebugIdentifier];
    v18 = 138543874;
    v19 = v14;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_1C1C4A000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) Configuring battery device view '%{public}@' with battery device: %{public}@", &v18, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v9 setTransitionCoordinator:v11];
  }

  if (objc_opt_respondsToSelector())
  {
    [v9 setEmpty:v10 == 0];
  }

  if (v10)
  {
    [v9 setPercentCharge:{objc_msgSend(v10, "percentCharge")}];
    [v9 setLowCharge:{objc_msgSend(v10, "isLowBattery")}];
    [v9 setCharging:{objc_msgSend(v10, "isCharging")}];
    v15 = [v10 isLowPowerModeActive];
  }

  else
  {
    [v9 setPercentCharge:0];
    [v9 setLowCharge:0];
    [v9 setCharging:0];
    v15 = 0;
  }

  [v9 setLowPowerModeEnabled:v15];
  v16 = [v10 batteryWidgetGlyph];
  [v9 setGlyph:v16];

  if (objc_opt_respondsToSelector())
  {
    v17 = [v10 name];
    [v9 setName:v17];
  }

  [v9 setScaleFactor:self->_scaleFactor];
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v3 = [(BCUIAvocadoViewController *)self view];
  [v3 setNeedsLayout];
}

void __67__BCUIAvocadoViewController__validateBatteryDeviceViewsIfNecessary__block_invoke_cold_1(void *a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*a1 object:*a2 file:@"BCUIAvocadoViewController.m" lineNumber:133 description:@"Failed to obtain a battery device view"];
}

@end