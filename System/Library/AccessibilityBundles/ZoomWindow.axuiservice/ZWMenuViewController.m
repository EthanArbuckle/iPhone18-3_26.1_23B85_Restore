@interface ZWMenuViewController
- (UIEdgeInsets)contentInset;
- (ZWMenuViewControllerDelegate)delegate;
- (id)_localizedTitleForMenuItemTag:(unint64_t)a3;
- (id)_menuOptionArray;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_handleZoomFactorSliderDidChange:(id)a3;
- (void)_handleZoomFactorSliderTouchDidEnd:(id)a3;
- (void)_invertColorsChange;
- (void)_reloadMenuOptions;
- (void)_reloadTableData;
- (void)_setBackgroundStyleWithInvertColors;
- (void)loadView;
- (void)menuDockPositionChooserViewController:(id)a3 didChooseDockPosition:(id)a4;
- (void)menuLensEffectChooserViewController:(id)a3 didChooseLensEffect:(id)a4;
- (void)menuZoomModeChooserViewController:(id)a3 didChooseZoomMode:(id)a4;
- (void)preferredLensModesDidChange;
- (void)standbyModeDidChange;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)zoomCurrentLensEffectDidChange;
@end

@implementation ZWMenuViewController

- (void)loadView
{
  v3 = [[UITableView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v4 = [UIVisualEffectView alloc];
  v5 = [UIBlurEffect effectWithStyle:19];
  v6 = [v4 initWithEffect:v5];

  [(ZWMenuViewController *)self setTableView:v3];
  v7 = [v6 contentView];
  [v7 addSubview:v3];

  [v6 setAccessibilityIgnoresInvertColors:1];
  [(ZWMenuViewController *)self setView:v6];
  if (_UISolariumEnabled())
  {
    [v6 setEffect:0];
    v8 = [v6 traitOverrides];
    [v8 setUserInterfaceStyle:2];

    [v6 ax_setWantsGlassAppearance:1];
    [(ZWMenuViewController *)self setContentInset:10.0, 0.0, 10.0, 0.0];
    [(ZWMenuViewController *)self contentInset];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(ZWMenuViewController *)self tableView];
    [v17 setContentInset:{v10, v12, v14, v16}];

    [(ZWMenuViewController *)self contentInset];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [(ZWMenuViewController *)self tableView];
    [v26 setScrollIndicatorInsets:{v19, v21, v23, v25}];

    v27 = [(ZWMenuViewController *)self tableView];
    [v27 setSeparatorStyle:0];
  }

  [v3 setDelegate:self];
  [v3 setDataSource:self];
  [v3 setAutoresizingMask:18];
  v28 = +[UIColor clearColor];
  [v3 setBackgroundColor:v28];

  [v3 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v3 setAccessibilityContainerType:4];
  v29 = ZWLocString(@"ZW_MENU_TOUCH_CONTAINER_LABEL");
  [v3 setAccessibilityLabel:v29];

  [(ZWMenuViewController *)self _reloadMenuOptions];
  objc_initWeak(&location, self);
  v30 = +[AXSettings sharedInstance];
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = __32__ZWMenuViewController_loadView__block_invoke;
  v35 = &unk_78CD8;
  objc_copyWeak(&v36, &location);
  [v30 registerUpdateBlock:&v32 forRetrieveSelector:"zoomPeekZoomEverEnabled" withListener:self];

  v31 = [NSNotificationCenter defaultCenter:v32];
  [v31 addObserver:self selector:"_invertColorsChange" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void __32__ZWMenuViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadMenuOptions];
}

- (void)_reloadMenuOptions
{
  fullscreenMenuOptions = self->_fullscreenMenuOptions;
  self->_fullscreenMenuOptions = &off_7B5F0;

  pipMenuOptions = self->_pipMenuOptions;
  self->_pipMenuOptions = &off_7B608;

  dockMenuOptions = self->_dockMenuOptions;
  self->_dockMenuOptions = &off_7B620;

  v6 = +[AXSettings sharedInstance];
  v7 = [v6 zoomPeekZoomEverEnabled];

  if (v7)
  {
    v8 = self->_fullscreenMenuOptions;
    self->_fullscreenMenuOptions = &off_7B638;

    v9 = self->_pipMenuOptions;
    self->_pipMenuOptions = &off_7B650;

    v10 = self->_dockMenuOptions;
    self->_dockMenuOptions = &off_7B668;
  }

  v11 = [(ZWMenuViewController *)self tableView];
  [v11 reloadData];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ZWMenuViewController;
  [(ZWMenuViewController *)&v6 viewDidLoad];
  if (_UISolariumEnabled())
  {
    v3 = 69.0;
  }

  else
  {
    v3 = 44.0;
  }

  v4 = [(ZWMenuViewController *)self tableView];
  [v4 setEstimatedRowHeight:v3];

  v5 = [(ZWMenuViewController *)self tableView];
  [v5 setRowHeight:UITableViewAutomaticDimension];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = ZWMenuViewController;
  [(ZWMenuViewController *)&v9 viewWillAppear:a3];
  if (ZWUseVibrantBlendModes())
  {
    v4 = [UIColor colorWithWhite:0.25 alpha:1.0];
    v5 = [(ZWMenuViewController *)self tableView];
    [v5 setSeparatorColor:v4];

    v6 = [UIBlurEffect effectWithStyle:2];
    v7 = [UIVibrancyEffect effectForBlurEffect:v6];
    v8 = [(ZWMenuViewController *)self tableView];
    [v8 setSeparatorEffect:v7];
  }

  else
  {
    v6 = [UIColor colorWithWhite:0.5 alpha:1.0];
    v7 = [(ZWMenuViewController *)self tableView];
    [v7 setSeparatorColor:v6];
  }

  [(ZWMenuViewController *)self _reloadTableData];
  [(ZWMenuViewController *)self _setBackgroundStyleWithInvertColors];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ZWMenuViewController;
  [(ZWMenuViewController *)&v6 viewDidAppear:a3];
  v4 = [AXAssertion assertionWithType:AXAssertionTypeDisableDashboardSystemGestures identifier:@"Zoom: menu is visible"];
  [(ZWMenuViewController *)self setDisableDashBoardGesturesAssertion:v4];

  v5 = [(ZWMenuViewController *)self delegate];
  [v5 menuDidAppear:self];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ZWMenuViewController;
  [(ZWMenuViewController *)&v8 viewDidDisappear:a3];
  [(ZWMenuViewController *)self setDisableDashBoardGesturesAssertion:0];
  v4 = [(ZWMenuViewController *)self view];
  v5 = [v4 superview];
  if (v5)
  {
  }

  else
  {
    v6 = [(ZWMenuViewController *)self presentedViewController];

    if (v6)
    {
      goto LABEL_5;
    }

    v4 = [(ZWMenuViewController *)self delegate];
    [v4 menuDidDisappear:self];
  }

LABEL_5:
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self];

  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = ZWMenuViewController;
  [(ZWMenuViewController *)&v10 viewDidLayoutSubviews];
  v3 = [(ZWMenuViewController *)self tableView];
  [v3 contentSize];
  v5 = v4;
  v6 = [(ZWMenuViewController *)self tableView];
  [v6 bounds];
  v8 = v5 > v7;
  v9 = [(ZWMenuViewController *)self tableView];
  [v9 setScrollEnabled:v8];
}

- (void)_invertColorsChange
{
  [(ZWMenuViewController *)self _reloadTableData];

  [(ZWMenuViewController *)self _setBackgroundStyleWithInvertColors];
}

- (id)_menuOptionArray
{
  v3 = [(ZWMenuViewController *)self delegate];
  v4 = [v3 inFullscreenModeForMenuViewController:self];

  if (v4)
  {
    v5 = &OBJC_IVAR___ZWMenuViewController__fullscreenMenuOptions;
LABEL_7:
    v10 = *(&self->super.super.super.super.isa + *v5);
    goto LABEL_8;
  }

  v6 = [(ZWMenuViewController *)self delegate];
  v7 = [v6 inPIPModeForMenuViewController:self];

  if (v7)
  {
    v5 = &OBJC_IVAR___ZWMenuViewController__pipMenuOptions;
    goto LABEL_7;
  }

  v8 = [(ZWMenuViewController *)self delegate];
  v9 = [v8 inDockedModeForMenuViewController:self];

  if (v9)
  {
    v5 = &OBJC_IVAR___ZWMenuViewController__dockMenuOptions;
    goto LABEL_7;
  }

  v10 = &__NSArray0__struct;
LABEL_8:

  return v10;
}

- (void)_reloadTableData
{
  v3 = [(ZWMenuViewController *)self tableView];
  [v3 reloadData];

  v4 = [(ZWMenuViewController *)self tableView];
  [v4 layoutIfNeeded];

  v5 = [(ZWMenuViewController *)self tableView];
  [v5 contentSize];
  v7 = v6;
  v9 = v8;

  [(ZWMenuViewController *)self contentInset];
  v11 = v10;
  [(ZWMenuViewController *)self contentInset];
  [(ZWMenuViewController *)self setPreferredContentSize:v7, v9 + v11 + v12];
  v19 = [(ZWMenuViewController *)self tableView];
  [v19 frame];
  ZWCornerRadiusForBackgroundWithSize(v13, v14);
  v16 = v15;
  v17 = [(ZWMenuViewController *)self view];
  v18 = [v17 layer];
  [v18 setCornerRadius:v16];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(ZWMenuViewController *)self _menuOptionArray:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ZWMenuViewController *)self _menuOptionArray];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];
  v9 = [v8 unsignedIntegerValue];

  if (v9 == &dword_4 + 3)
  {
    v10 = [[ZWMenuItemZoomLevelSliderTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 setSelectionStyle:0];
    v11 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 zoomLevelSlider];

    [v11 addTarget:self action:"_handleZoomFactorSliderTouchDidBegin:" forControlEvents:65537];
    [v11 addTarget:self action:"_handleZoomFactorSliderDidChange:" forControlEvents:4096];
    [v11 addTarget:self action:"_handleZoomFactorSliderTouchDidEnd:" forControlEvents:262336];
    HIDWORD(v12) = *(&AXZoomMinimumZoomLevel + 1);
    *&v12 = AXZoomMinimumZoomLevel;
    [v11 setMinimumValue:v12];
    v13 = +[AXSettings sharedInstance];
    [v13 zoomPreferredMaximumZoomScale];
    *&v14 = v14;
    [v11 setMaximumValue:v14];

    v15 = [(ZWMenuViewController *)self delegate];
    [v15 zoomFactorForMenuViewController:self];
    *&v16 = v16;
    [v11 setValue:v16];
  }

  else
  {
    v10 = [[ZWMenuItemSimpleButtonTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v17 = _UISolariumEnabled();
    v11 = [(ZWMenuViewController *)self _localizedTitleForMenuItemTag:v9];
    if (v17)
    {
      v18 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 cellLabel];
      [v18 setText:v11];
    }

    else
    {
      v19 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 textLabel];
      [v19 setText:v11];

      v20 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 textLabel];
      [v20 setNumberOfLines:0];

      v21 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 textLabel];
      [v21 setLineBreakMode:0];

      if (ZWUseVibrantBlendModes())
      {
        if (!UIAccessibilityIsInvertColorsEnabled())
        {
          [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 _setDrawsAsBackdropOverlayWithBlendMode:3];
        }

        v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        [v11 setAutoresizingMask:18];
        v22 = 0.25;
      }

      else
      {
        v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        [v11 setAutoresizingMask:18];
        v22 = 0.5;
      }

      v23 = [UIColor colorWithWhite:v22 alpha:1.0];
      [v11 setBackgroundColor:v23];

      [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 setSelectedBackgroundView:v11];
    }
  }

  return v10;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  v6 = +[UIColor clearColor];
  [v5 setBackgroundColor:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(ZWMenuViewController *)self _menuOptionArray];
  v8 = [v7 objectAtIndex:{objc_msgSend(v6, "row")}];
  v9 = [v8 unsignedIntegerValue];

  if (v9 <= 2)
  {
    if (!v9)
    {
      v10 = [(ZWMenuViewController *)self delegate];
      [v10 toggleLensVisibilityWithMenuViewController:self];
LABEL_15:

      goto LABEL_16;
    }

    if (v9 != &dword_0 + 1)
    {
      if (v9 != &dword_0 + 2)
      {
        goto LABEL_16;
      }

      v10 = [(ZWMenuViewController *)self delegate];
      [v10 toggleLensResizeModeWithMenuViewController:self];
      goto LABEL_15;
    }

LABEL_14:
    v10 = objc_opt_new();
    v12 = [[UINavigationController alloc] initWithRootViewController:v10];
    [v10 setDelegate:self];
    [v12 setModalPresentationStyle:3];
    [v12 setModalTransitionStyle:2];
    [v12 setNavigationBarHidden:1];
    [(ZWMenuViewController *)self presentViewController:v12 animated:1 completion:0];

    goto LABEL_15;
  }

  if (v9 <= 4)
  {
    goto LABEL_14;
  }

  if (v9 == &dword_4 + 1)
  {
    v11 = [(ZWMenuViewController *)self delegate];
    [v11 toggleSlugVisibilityWithMenuViewController:self];
  }

  else
  {
    if (v9 != &dword_4 + 2)
    {
      goto LABEL_16;
    }

    v11 = [(ZWMenuViewController *)self delegate];
    [v11 togglePeekZoomWithMenuViewController:self];
  }

  [(ZWMenuViewController *)self _reloadTableData];
LABEL_16:
  [v13 deselectRowAtIndexPath:v6 animated:1];
}

- (void)zoomCurrentLensEffectDidChange
{
  v5 = [(ZWMenuViewController *)self delegate];
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 zoomCurrentLensEffect];
  [v5 menuViewController:self didChooseLensEffect:v4];
}

- (id)_localizedTitleForMenuItemTag:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0uLL:
        v8 = [(ZWMenuViewController *)self delegate];
        if ([v8 inStandByForMenuViewController:self])
        {
          v9 = @"ZW_MENU_BUTTON_TOGGLE_ZOOM_IN";
        }

        else
        {
          v9 = @"ZW_MENU_BUTTON_TOGGLE_ZOOM_OUT";
        }

        v3 = ZWLocString(v9);

        goto LABEL_24;
      case 1uLL:
        v4 = @"ZW_MENU_BUTTON_LENS_MODE_LABEL";
        break;
      case 2uLL:
        v4 = @"ZW_MENU_BUTTON_RESIZE_LENS_LABEL";
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (a3 <= 4)
  {
    if (a3 == 3)
    {
      v4 = @"ZW_MENU_BUTTON_DOCK_POSITION_LABEL";
    }

    else
    {
      v4 = @"ZW_MENU_BUTTON_LENS_EFFECT_LABEL";
    }

LABEL_23:
    v3 = ZWLocString(v4);
    goto LABEL_24;
  }

  if (a3 == 5)
  {
    v10 = +[AXSettings sharedInstance];
    v11 = [v10 zoomShouldShowSlug];

    if (v11)
    {
      v4 = @"ZW_MENU_BUTTON_HIDE_SLUG_LABEL";
    }

    else
    {
      v4 = @"ZW_MENU_BUTTON_SHOW_SLUG_LABEL";
    }

    goto LABEL_23;
  }

  if (a3 == 6)
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 zoomPeekZoomEnabled];

    if (v6)
    {
      v3 = @"Enable Force Touch Zoom";
    }

    else
    {
      v3 = @"Disable Force Touch Zoom";
    }
  }

LABEL_24:

  return v3;
}

- (void)_setBackgroundStyleWithInvertColors
{
  v2 = [(ZWMenuViewController *)self popoverPresentationController];
  [v2 _setBackgroundBlurDisabled:1];
}

- (void)_handleZoomFactorSliderDidChange:(id)a3
{
  v4 = a3;
  v7 = [(ZWMenuViewController *)self delegate];
  [v4 value];
  v6 = v5;

  [v7 menuViewController:self adjustZoomFactor:1 animated:v6];
}

- (void)_handleZoomFactorSliderTouchDidEnd:(id)a3
{
  v4 = a3;
  [(ZWMenuViewController *)self setUserIsInteractingWithMenu:0];
  v7 = [(ZWMenuViewController *)self delegate];
  [v4 value];
  v6 = v5;

  [v7 menuViewController:self finishedAdjustingZoomFactor:v6];
}

- (void)preferredLensModesDidChange
{
  v2.receiver = self;
  v2.super_class = ZWMenuViewController;
  [(ZWZoomViewController *)&v2 preferredLensModesDidChange];
}

- (void)standbyModeDidChange
{
  v9.receiver = self;
  v9.super_class = ZWMenuViewController;
  [(ZWZoomViewController *)&v9 standbyModeDidChange];
  v3 = [(ZWMenuViewController *)self tableView];
  v4 = [NSIndexPath indexPathForRow:0 inSection:0];
  v5 = [v3 cellForRowAtIndexPath:v4];

  if (_UISolariumEnabled() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(ZWMenuViewController *)self _localizedTitleForMenuItemTag:0];
    v7 = [v5 cellLabel];
  }

  else
  {
    v6 = [(ZWMenuViewController *)self _localizedTitleForMenuItemTag:0];
    v7 = [v5 textLabel];
  }

  v8 = v7;
  [v7 setText:v6];
}

- (void)menuLensEffectChooserViewController:(id)a3 didChooseLensEffect:(id)a4
{
  v5 = a4;
  v6 = [(ZWMenuViewController *)self delegate];
  [v6 menuViewController:self didChooseLensEffect:v5];
}

- (void)menuZoomModeChooserViewController:(id)a3 didChooseZoomMode:(id)a4
{
  v5 = a4;
  v6 = [(ZWMenuViewController *)self delegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __76__ZWMenuViewController_menuZoomModeChooserViewController_didChooseZoomMode___block_invoke;
  v7[3] = &unk_78D00;
  v7[4] = self;
  [v6 menuViewController:self didChooseZoomMode:v5 withCompletion:v7];
}

- (void)menuDockPositionChooserViewController:(id)a3 didChooseDockPosition:(id)a4
{
  v5 = a4;
  v6 = [(ZWMenuViewController *)self delegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __84__ZWMenuViewController_menuDockPositionChooserViewController_didChooseDockPosition___block_invoke;
  v7[3] = &unk_78D00;
  v7[4] = self;
  [v6 menuViewController:self didChooseDockPosition:v5 withCompletion:v7];
}

- (ZWMenuViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end