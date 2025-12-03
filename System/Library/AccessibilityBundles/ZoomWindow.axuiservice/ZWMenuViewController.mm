@interface ZWMenuViewController
- (UIEdgeInsets)contentInset;
- (ZWMenuViewControllerDelegate)delegate;
- (id)_localizedTitleForMenuItemTag:(unint64_t)tag;
- (id)_menuOptionArray;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_handleZoomFactorSliderDidChange:(id)change;
- (void)_handleZoomFactorSliderTouchDidEnd:(id)end;
- (void)_invertColorsChange;
- (void)_reloadMenuOptions;
- (void)_reloadTableData;
- (void)_setBackgroundStyleWithInvertColors;
- (void)loadView;
- (void)menuDockPositionChooserViewController:(id)controller didChooseDockPosition:(id)position;
- (void)menuLensEffectChooserViewController:(id)controller didChooseLensEffect:(id)effect;
- (void)menuZoomModeChooserViewController:(id)controller didChooseZoomMode:(id)mode;
- (void)preferredLensModesDidChange;
- (void)standbyModeDidChange;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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
  contentView = [v6 contentView];
  [contentView addSubview:v3];

  [v6 setAccessibilityIgnoresInvertColors:1];
  [(ZWMenuViewController *)self setView:v6];
  if (_UISolariumEnabled())
  {
    [v6 setEffect:0];
    traitOverrides = [v6 traitOverrides];
    [traitOverrides setUserInterfaceStyle:2];

    [v6 ax_setWantsGlassAppearance:1];
    [(ZWMenuViewController *)self setContentInset:10.0, 0.0, 10.0, 0.0];
    [(ZWMenuViewController *)self contentInset];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    tableView = [(ZWMenuViewController *)self tableView];
    [tableView setContentInset:{v10, v12, v14, v16}];

    [(ZWMenuViewController *)self contentInset];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    tableView2 = [(ZWMenuViewController *)self tableView];
    [tableView2 setScrollIndicatorInsets:{v19, v21, v23, v25}];

    tableView3 = [(ZWMenuViewController *)self tableView];
    [tableView3 setSeparatorStyle:0];
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
  zoomPeekZoomEverEnabled = [v6 zoomPeekZoomEverEnabled];

  if (zoomPeekZoomEverEnabled)
  {
    v8 = self->_fullscreenMenuOptions;
    self->_fullscreenMenuOptions = &off_7B638;

    v9 = self->_pipMenuOptions;
    self->_pipMenuOptions = &off_7B650;

    v10 = self->_dockMenuOptions;
    self->_dockMenuOptions = &off_7B668;
  }

  tableView = [(ZWMenuViewController *)self tableView];
  [tableView reloadData];
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

  tableView = [(ZWMenuViewController *)self tableView];
  [tableView setEstimatedRowHeight:v3];

  tableView2 = [(ZWMenuViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = ZWMenuViewController;
  [(ZWMenuViewController *)&v9 viewWillAppear:appear];
  if (ZWUseVibrantBlendModes())
  {
    v4 = [UIColor colorWithWhite:0.25 alpha:1.0];
    tableView = [(ZWMenuViewController *)self tableView];
    [tableView setSeparatorColor:v4];

    v6 = [UIBlurEffect effectWithStyle:2];
    tableView3 = [UIVibrancyEffect effectForBlurEffect:v6];
    tableView2 = [(ZWMenuViewController *)self tableView];
    [tableView2 setSeparatorEffect:tableView3];
  }

  else
  {
    v6 = [UIColor colorWithWhite:0.5 alpha:1.0];
    tableView3 = [(ZWMenuViewController *)self tableView];
    [tableView3 setSeparatorColor:v6];
  }

  [(ZWMenuViewController *)self _reloadTableData];
  [(ZWMenuViewController *)self _setBackgroundStyleWithInvertColors];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = ZWMenuViewController;
  [(ZWMenuViewController *)&v6 viewDidAppear:appear];
  v4 = [AXAssertion assertionWithType:AXAssertionTypeDisableDashboardSystemGestures identifier:@"Zoom: menu is visible"];
  [(ZWMenuViewController *)self setDisableDashBoardGesturesAssertion:v4];

  delegate = [(ZWMenuViewController *)self delegate];
  [delegate menuDidAppear:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = ZWMenuViewController;
  [(ZWMenuViewController *)&v8 viewDidDisappear:disappear];
  [(ZWMenuViewController *)self setDisableDashBoardGesturesAssertion:0];
  view = [(ZWMenuViewController *)self view];
  superview = [view superview];
  if (superview)
  {
  }

  else
  {
    presentedViewController = [(ZWMenuViewController *)self presentedViewController];

    if (presentedViewController)
    {
      goto LABEL_5;
    }

    view = [(ZWMenuViewController *)self delegate];
    [view menuDidDisappear:self];
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
  tableView = [(ZWMenuViewController *)self tableView];
  [tableView contentSize];
  v5 = v4;
  tableView2 = [(ZWMenuViewController *)self tableView];
  [tableView2 bounds];
  v8 = v5 > v7;
  tableView3 = [(ZWMenuViewController *)self tableView];
  [tableView3 setScrollEnabled:v8];
}

- (void)_invertColorsChange
{
  [(ZWMenuViewController *)self _reloadTableData];

  [(ZWMenuViewController *)self _setBackgroundStyleWithInvertColors];
}

- (id)_menuOptionArray
{
  delegate = [(ZWMenuViewController *)self delegate];
  v4 = [delegate inFullscreenModeForMenuViewController:self];

  if (v4)
  {
    v5 = &OBJC_IVAR___ZWMenuViewController__fullscreenMenuOptions;
LABEL_7:
    v10 = *(&self->super.super.super.super.isa + *v5);
    goto LABEL_8;
  }

  delegate2 = [(ZWMenuViewController *)self delegate];
  v7 = [delegate2 inPIPModeForMenuViewController:self];

  if (v7)
  {
    v5 = &OBJC_IVAR___ZWMenuViewController__pipMenuOptions;
    goto LABEL_7;
  }

  delegate3 = [(ZWMenuViewController *)self delegate];
  v9 = [delegate3 inDockedModeForMenuViewController:self];

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
  tableView = [(ZWMenuViewController *)self tableView];
  [tableView reloadData];

  tableView2 = [(ZWMenuViewController *)self tableView];
  [tableView2 layoutIfNeeded];

  tableView3 = [(ZWMenuViewController *)self tableView];
  [tableView3 contentSize];
  v7 = v6;
  v9 = v8;

  [(ZWMenuViewController *)self contentInset];
  v11 = v10;
  [(ZWMenuViewController *)self contentInset];
  [(ZWMenuViewController *)self setPreferredContentSize:v7, v9 + v11 + v12];
  tableView4 = [(ZWMenuViewController *)self tableView];
  [tableView4 frame];
  ZWCornerRadiusForBackgroundWithSize(v13, v14);
  v16 = v15;
  view = [(ZWMenuViewController *)self view];
  layer = [view layer];
  [layer setCornerRadius:v16];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(ZWMenuViewController *)self _menuOptionArray:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  _menuOptionArray = [(ZWMenuViewController *)self _menuOptionArray];
  v7 = [pathCopy row];

  v8 = [_menuOptionArray objectAtIndex:v7];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if (unsignedIntegerValue == &dword_4 + 3)
  {
    v10 = [[ZWMenuItemZoomLevelSliderTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 setSelectionStyle:0];
    zoomLevelSlider = [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 zoomLevelSlider];

    [zoomLevelSlider addTarget:self action:"_handleZoomFactorSliderTouchDidBegin:" forControlEvents:65537];
    [zoomLevelSlider addTarget:self action:"_handleZoomFactorSliderDidChange:" forControlEvents:4096];
    [zoomLevelSlider addTarget:self action:"_handleZoomFactorSliderTouchDidEnd:" forControlEvents:262336];
    HIDWORD(v12) = *(&AXZoomMinimumZoomLevel + 1);
    *&v12 = AXZoomMinimumZoomLevel;
    [zoomLevelSlider setMinimumValue:v12];
    v13 = +[AXSettings sharedInstance];
    [v13 zoomPreferredMaximumZoomScale];
    *&v14 = v14;
    [zoomLevelSlider setMaximumValue:v14];

    delegate = [(ZWMenuViewController *)self delegate];
    [delegate zoomFactorForMenuViewController:self];
    *&v16 = v16;
    [zoomLevelSlider setValue:v16];
  }

  else
  {
    v10 = [[ZWMenuItemSimpleButtonTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v17 = _UISolariumEnabled();
    zoomLevelSlider = [(ZWMenuViewController *)self _localizedTitleForMenuItemTag:unsignedIntegerValue];
    if (v17)
    {
      cellLabel = [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 cellLabel];
      [cellLabel setText:zoomLevelSlider];
    }

    else
    {
      textLabel = [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 textLabel];
      [textLabel setText:zoomLevelSlider];

      textLabel2 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 textLabel];
      [textLabel2 setNumberOfLines:0];

      textLabel3 = [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 textLabel];
      [textLabel3 setLineBreakMode:0];

      if (ZWUseVibrantBlendModes())
      {
        if (!UIAccessibilityIsInvertColorsEnabled())
        {
          [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 _setDrawsAsBackdropOverlayWithBlendMode:3];
        }

        zoomLevelSlider = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        [zoomLevelSlider setAutoresizingMask:18];
        v22 = 0.25;
      }

      else
      {
        zoomLevelSlider = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        [zoomLevelSlider setAutoresizingMask:18];
        v22 = 0.5;
      }

      v23 = [UIColor colorWithWhite:v22 alpha:1.0];
      [zoomLevelSlider setBackgroundColor:v23];

      [(ZWMenuItemZoomLevelSliderTableViewCell *)v10 setSelectedBackgroundView:zoomLevelSlider];
    }
  }

  return v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v6 = +[UIColor clearColor];
  [cellCopy setBackgroundColor:v6];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  _menuOptionArray = [(ZWMenuViewController *)self _menuOptionArray];
  v8 = [_menuOptionArray objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if (unsignedIntegerValue <= 2)
  {
    if (!unsignedIntegerValue)
    {
      delegate = [(ZWMenuViewController *)self delegate];
      [delegate toggleLensVisibilityWithMenuViewController:self];
LABEL_15:

      goto LABEL_16;
    }

    if (unsignedIntegerValue != &dword_0 + 1)
    {
      if (unsignedIntegerValue != &dword_0 + 2)
      {
        goto LABEL_16;
      }

      delegate = [(ZWMenuViewController *)self delegate];
      [delegate toggleLensResizeModeWithMenuViewController:self];
      goto LABEL_15;
    }

LABEL_14:
    delegate = objc_opt_new();
    v12 = [[UINavigationController alloc] initWithRootViewController:delegate];
    [delegate setDelegate:self];
    [v12 setModalPresentationStyle:3];
    [v12 setModalTransitionStyle:2];
    [v12 setNavigationBarHidden:1];
    [(ZWMenuViewController *)self presentViewController:v12 animated:1 completion:0];

    goto LABEL_15;
  }

  if (unsignedIntegerValue <= 4)
  {
    goto LABEL_14;
  }

  if (unsignedIntegerValue == &dword_4 + 1)
  {
    delegate2 = [(ZWMenuViewController *)self delegate];
    [delegate2 toggleSlugVisibilityWithMenuViewController:self];
  }

  else
  {
    if (unsignedIntegerValue != &dword_4 + 2)
    {
      goto LABEL_16;
    }

    delegate2 = [(ZWMenuViewController *)self delegate];
    [delegate2 togglePeekZoomWithMenuViewController:self];
  }

  [(ZWMenuViewController *)self _reloadTableData];
LABEL_16:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)zoomCurrentLensEffectDidChange
{
  delegate = [(ZWMenuViewController *)self delegate];
  v3 = +[AXSettings sharedInstance];
  zoomCurrentLensEffect = [v3 zoomCurrentLensEffect];
  [delegate menuViewController:self didChooseLensEffect:zoomCurrentLensEffect];
}

- (id)_localizedTitleForMenuItemTag:(unint64_t)tag
{
  v3 = 0;
  if (tag <= 2)
  {
    switch(tag)
    {
      case 0uLL:
        delegate = [(ZWMenuViewController *)self delegate];
        if ([delegate inStandByForMenuViewController:self])
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

  if (tag <= 4)
  {
    if (tag == 3)
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

  if (tag == 5)
  {
    v10 = +[AXSettings sharedInstance];
    zoomShouldShowSlug = [v10 zoomShouldShowSlug];

    if (zoomShouldShowSlug)
    {
      v4 = @"ZW_MENU_BUTTON_HIDE_SLUG_LABEL";
    }

    else
    {
      v4 = @"ZW_MENU_BUTTON_SHOW_SLUG_LABEL";
    }

    goto LABEL_23;
  }

  if (tag == 6)
  {
    v5 = +[AXSettings sharedInstance];
    zoomPeekZoomEnabled = [v5 zoomPeekZoomEnabled];

    if (zoomPeekZoomEnabled)
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
  popoverPresentationController = [(ZWMenuViewController *)self popoverPresentationController];
  [popoverPresentationController _setBackgroundBlurDisabled:1];
}

- (void)_handleZoomFactorSliderDidChange:(id)change
{
  changeCopy = change;
  delegate = [(ZWMenuViewController *)self delegate];
  [changeCopy value];
  v6 = v5;

  [delegate menuViewController:self adjustZoomFactor:1 animated:v6];
}

- (void)_handleZoomFactorSliderTouchDidEnd:(id)end
{
  endCopy = end;
  [(ZWMenuViewController *)self setUserIsInteractingWithMenu:0];
  delegate = [(ZWMenuViewController *)self delegate];
  [endCopy value];
  v6 = v5;

  [delegate menuViewController:self finishedAdjustingZoomFactor:v6];
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
  tableView = [(ZWMenuViewController *)self tableView];
  v4 = [NSIndexPath indexPathForRow:0 inSection:0];
  v5 = [tableView cellForRowAtIndexPath:v4];

  if (_UISolariumEnabled() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(ZWMenuViewController *)self _localizedTitleForMenuItemTag:0];
    cellLabel = [v5 cellLabel];
  }

  else
  {
    v6 = [(ZWMenuViewController *)self _localizedTitleForMenuItemTag:0];
    cellLabel = [v5 textLabel];
  }

  v8 = cellLabel;
  [cellLabel setText:v6];
}

- (void)menuLensEffectChooserViewController:(id)controller didChooseLensEffect:(id)effect
{
  effectCopy = effect;
  delegate = [(ZWMenuViewController *)self delegate];
  [delegate menuViewController:self didChooseLensEffect:effectCopy];
}

- (void)menuZoomModeChooserViewController:(id)controller didChooseZoomMode:(id)mode
{
  modeCopy = mode;
  delegate = [(ZWMenuViewController *)self delegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __76__ZWMenuViewController_menuZoomModeChooserViewController_didChooseZoomMode___block_invoke;
  v7[3] = &unk_78D00;
  v7[4] = self;
  [delegate menuViewController:self didChooseZoomMode:modeCopy withCompletion:v7];
}

- (void)menuDockPositionChooserViewController:(id)controller didChooseDockPosition:(id)position
{
  positionCopy = position;
  delegate = [(ZWMenuViewController *)self delegate];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __84__ZWMenuViewController_menuDockPositionChooserViewController_didChooseDockPosition___block_invoke;
  v7[3] = &unk_78D00;
  v7[4] = self;
  [delegate menuViewController:self didChooseDockPosition:positionCopy withCompletion:v7];
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