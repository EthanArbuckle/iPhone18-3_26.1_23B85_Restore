@interface _SFWebClipViewController
- (BOOL)_canAddWebClip;
- (BOOL)_shouldUseTranslucentAppearance;
- (BOOL)_showDemoModeFeatureDisabledAlert;
- (BOOL)createAndAddToHomeScreenBundle;
- (BOOL)textFieldShouldReturn:(id)return;
- (CGPoint)_centerForIconView;
- (UIEdgeInsets)_cellInset;
- (_SFWebClipViewController)initWithStyle:(int64_t)style;
- (_SFWebClipViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_add;
- (void)_cancel;
- (void)_textFieldChanged:(id)changed;
- (void)bookmarkTextEntryTableViewController:(id)controller dismissedWithText:(id)text;
- (void)dealloc;
- (void)loadView;
- (void)setCanEditAndSave:(BOOL)save;
- (void)switchTableViewCell:(id)cell didChangeSwitchState:(BOOL)state;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateUIAnimated:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation _SFWebClipViewController

- (_SFWebClipViewController)initWithStyle:(int64_t)style
{
  v14.receiver = self;
  v14.super_class = _SFWebClipViewController;
  v3 = [(_SFWebClipViewController *)&v14 initWithStyle:1];
  if (v3)
  {
    v4 = _WBSLocalizedString();
    [(_SFWebClipViewController *)v3 setTitle:v4];

    v5 = objc_alloc(MEMORY[0x1E69DC708]);
    v6 = _WBSLocalizedString();
    v7 = [v5 initWithTitle:v6 style:2 target:v3 action:sel__add];

    navigationItem = [(_SFWebClipViewController *)v3 navigationItem];
    [navigationItem setRightBarButtonItem:v7];

    [v7 setEnabled:0];
    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = [v9 initWithBarButtonSystemItem:objc_msgSend(MEMORY[0x1E69DC708] target:"_sf_popoverCancelButtonItem") action:{v3, sel__cancel}];
    navigationItem2 = [(_SFWebClipViewController *)v3 navigationItem];
    [navigationItem2 setLeftBarButtonItem:v10];

    v3->_canEditAndSave = 0;
    v12 = v3;
  }

  return v3;
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = _SFWebClipViewController;
  [(_SFWebClipViewController *)&v20 loadView];
  v3 = [[_SFBookmarkTextEntryTableViewCell alloc] initWithText:0 autocapitalizationType:2 autocorrectionType:0];
  titleCell = self->_titleCell;
  self->_titleCell = &v3->super;

  [(UITableViewCell *)self->_titleCell setSelectionStyle:0];
  editableTextField = [(UITableViewCell *)self->_titleCell editableTextField];
  [editableTextField setEnabled:self->_canEditAndSave];

  v6 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  addressCell = self->_addressCell;
  self->_addressCell = v6;

  [(UITableViewCell *)self->_addressCell setSelectionStyle:0];
  textLabel = [(UITableViewCell *)self->_addressCell textLabel];
  [textLabel setEnabled:0];

  self->_shouldOpenAsWebApp = 1;
  v9 = [[SFSwitchTableViewCell alloc] initWithReuseIdentifier:0];
  opensAsWebAppSwitchCell = self->_opensAsWebAppSwitchCell;
  self->_opensAsWebAppSwitchCell = v9;

  [(SFSwitchTableViewCell *)self->_opensAsWebAppSwitchCell setDelegate:self];
  v11 = _WBSLocalizedString();
  textLabel2 = [(SFSwitchTableViewCell *)self->_opensAsWebAppSwitchCell textLabel];
  [textLabel2 setText:v11];

  [(SFSwitchTableViewCell *)self->_opensAsWebAppSwitchCell setSelectionStyle:0];
  [(SFSwitchTableViewCell *)self->_opensAsWebAppSwitchCell setSwitchOn:self->_shouldOpenAsWebApp];
  editableTextField2 = [(UITableViewCell *)self->_titleCell editableTextField];
  [editableTextField2 setDelegate:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__textFieldChanged_ name:*MEMORY[0x1E69DE5C0] object:editableTextField2];

  tableView = [(_SFWebClipViewController *)self tableView];
  v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 60.0, 60.0}];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v16;

  layer = [(UIImageView *)self->_iconImageView layer];
  [layer setZPosition:1.0];

  [tableView addSubview:self->_iconImageView];
  if ([(_SFWebClipViewController *)self _shouldUseTranslucentAppearance])
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [tableView setBackgroundColor:clearColor];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = _SFWebClipViewController;
  [(_SFWebClipViewController *)&v3 viewDidLoad];
  [(_SFWebClipViewController *)self updateUIAnimated:0];
}

- (void)updateUIAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(_SFWebClipViewController *)self isViewLoaded])
  {
    title = [(UIWebClip *)self->_webClip title];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v7 = [title stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    editableTextField = [(UITableViewCell *)self->_titleCell editableTextField];
    [editableTextField setText:v7];

    pageURL = [(UIWebClip *)self->_webClip pageURL];
    safari_userVisibleString = [pageURL safari_userVisibleString];
    textLabel = [(UITableViewCell *)self->_addressCell textLabel];
    [textLabel setText:safari_userVisibleString];

    tableView = [(_SFWebClipViewController *)self tableView];
    v13 = [tableView footerViewForSection:0];

    defaultContentConfiguration = [v13 defaultContentConfiguration];
    tableView2 = [(_SFWebClipViewController *)self tableView];
    v16 = [(_SFWebClipViewController *)self tableView:tableView2 titleForFooterInSection:0];
    [defaultContentConfiguration setText:v16];

    [v13 setContentConfiguration:defaultContentConfiguration];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45___SFWebClipViewController_updateUIAnimated___block_invoke;
    aBlock[3] = &unk_1E848F810;
    aBlock[4] = self;
    v17 = _Block_copy(aBlock);
    v18 = v17;
    if (animatedCopy)
    {
      v19 = MEMORY[0x1E69DD250];
      view = [(_SFWebClipViewController *)self view];
      [v19 transitionWithView:view duration:5242880 options:v18 animations:0 completion:0.349999994];
    }

    else
    {
      (*(v17 + 2))(v17);
    }
  }
}

- (void)setCanEditAndSave:(BOOL)save
{
  if (self->_canEditAndSave != save)
  {
    self->_canEditAndSave = save;
    editableTextField = [(UITableViewCell *)self->_titleCell editableTextField];
    [editableTextField setEnabled:self->_canEditAndSave];

    navigationItem = [(_SFWebClipViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:{-[_SFWebClipViewController _canAddWebClip](self, "_canAddWebClip")}];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = _SFWebClipViewController;
  [(_SFWebClipViewController *)&v9 viewWillAppear:appear];
  [(_SFWebClipViewController *)self updateUIAnimated:0];
  self->_suspendAfterDismiss = 0;
  tableView = [(_SFWebClipViewController *)self tableView];
  [tableView reloadData];

  tableView2 = [(_SFWebClipViewController *)self tableView];
  v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v7 = [tableView2 cellForRowAtIndexPath:v6];

  if (([(_SFWebClipViewController *)self _isInPopoverPresentation]& 1) == 0)
  {
    editableTextField = [(UITableViewCell *)self->_titleCell editableTextField];
    [editableTextField becomeFirstResponder];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  editableTextField = [(UITableViewCell *)self->_titleCell editableTextField];
  [editableTextField resignFirstResponder];

  v6.receiver = self;
  v6.super_class = _SFWebClipViewController;
  [(_SFWebClipViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  navigationController = [(_SFWebClipViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    if (self->_suspendAfterDismiss)
    {
      self->_suspendAfterDismiss = 0;
      [*MEMORY[0x1E69DDA98] suspend];
    }

    v8.receiver = self;
    v8.super_class = _SFWebClipViewController;
    [(_SFWebClipViewController *)&v8 viewDidDisappear:disappearCopy];
    if (!self->_delegateNotifiedOfResult)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained webClipViewController:self didFinishWithResult:0];
    }
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  section = [pathCopy section];

  v8 = &OBJC_IVAR____SFWebClipViewController__addressCell;
  if (!v6)
  {
    v8 = &OBJC_IVAR____SFWebClipViewController__titleCell;
  }

  if (section)
  {
    v8 = &OBJC_IVAR____SFWebClipViewController__opensAsWebAppSwitchCell;
  }

  v9 = *(&self->super.super.super.super.isa + *v8);

  return v9;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    if (self->_webClip && self->_shouldOpenAsWebApp)
    {
      [MEMORY[0x1E69C8880] isWAPEnabled];
    }

    v7 = _WBSLocalizedString();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = pathCopy;
  if (self->_canEditAndSave && ![pathCopy row])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  if (![path section])
  {
    v5 = [_SFBookmarkTextEntryTableViewController alloc];
    editableTextField = [(UITableViewCell *)self->_titleCell editableTextField];
    text = [editableTextField text];
    v9 = [(_SFBookmarkTextEntryTableViewController *)v5 initWithBookmarkInfoViewField:0 text:text autocapitalizationType:2 autocorrectionType:0 delegate:self];

    navigationController = [(_SFWebClipViewController *)self navigationController];
    [navigationController pushViewController:v9 animated:1];
  }
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(_SFWebClipViewController *)self tableView:view];
  [v4 safeAreaInsets];
  v6 = v5;

  result = *MEMORY[0x1E69DE3D0];
  if (v6 <= 0.0)
  {
    return 80.5;
  }

  return result;
}

- (UIEdgeInsets)_cellInset
{
  view = [(_SFWebClipViewController *)self view];
  [view _sf_safeAreaInsetsFlippedForLayoutDirectionality];
  v4 = v3 + 90.0;

  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = v4;
  result.right = v7;
  result.bottom = v6;
  result.left = v8;
  result.top = v5;
  return result;
}

- (CGPoint)_centerForIconView
{
  tableView = [(_SFWebClipViewController *)self tableView];
  [tableView rectForSection:0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [tableView rectForHeaderInSection:0];
  v13 = v12;
  [tableView rectForFooterInSection:0];
  v15 = v14;
  view = [(_SFWebClipViewController *)self view];
  [view _sf_usesLeftToRightLayout];

  [tableView safeAreaInsets];
  v24.size.height = v11 + v13 - v15;
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  CGRectGetMidY(v24);
  _SFRoundPointToPixels();
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.y = v22;
  result.x = v21;
  return result;
}

- (void)viewDidLayoutSubviews
{
  iconImageView = self->_iconImageView;
  [(_SFWebClipViewController *)self _centerForIconView];
  [(UIImageView *)iconImageView setCenter:?];
  tableView = [(_SFWebClipViewController *)self tableView];
  view = [(_SFWebClipViewController *)self view];
  [view bounds];
  [tableView sizeThatFits:{CGRectGetWidth(v7), 1.79769313e308}];
  [(_SFWebClipViewController *)self setPreferredContentSize:0.0];
}

- (void)viewWillLayoutSubviews
{
  editableTextField = [(UITableViewCell *)self->_titleCell editableTextField];
  [editableTextField setUserInteractionEnabled:1];

  [(UITableViewCell *)self->_titleCell setAccessoryType:0];
  [(UITableViewCell *)self->_titleCell setSelectionStyle:0];
  [(_SFWebClipViewController *)self _cellInset];
  [(UITableViewCell *)self->_titleCell setSeparatorInset:?];
  [(_SFWebClipViewController *)self _cellInset];
  addressCell = self->_addressCell;

  [(UITableViewCell *)addressCell setSeparatorInset:?];
}

- (void)_cancel
{
  [(UIWebClip *)self->_webClip cancelMediaUpdate];
  self->_delegateNotifiedOfResult = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained webClipViewController:self didFinishWithResult:0];
}

- (void)_add
{
  if (![(_SFWebClipViewController *)self _showDemoModeFeatureDisabledAlert])
  {
    editableTextField = [(UITableViewCell *)self->_titleCell editableTextField];
    [editableTextField resignFirstResponder];

    [(UIWebClip *)self->_webClip setFullScreen:self->_shouldOpenAsWebApp];
    createAndAddToHomeScreenBundle = [(_SFWebClipViewController *)self createAndAddToHomeScreenBundle];
    if (createAndAddToHomeScreenBundle)
    {
      self->_suspendAfterDismiss = 1;
    }

    else
    {
      v5 = MEMORY[0x1E69DC650];
      v6 = _WBSLocalizedString();
      v7 = _WBSLocalizedString();
      v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

      v9 = MEMORY[0x1E69DC648];
      v10 = _WBSLocalizedString();
      v11 = [v9 actionWithTitle:v10 style:0 handler:0];

      [v8 addAction:v11];
      [(_SFWebClipViewController *)self presentViewController:v8 animated:1 completion:0];
    }

    [(UIWebClip *)self->_webClip cancelMediaUpdate];
    self->_delegateNotifiedOfResult = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained webClipViewController:self didFinishWithResult:createAndAddToHomeScreenBundle];
  }
}

- (BOOL)_showDemoModeFeatureDisabledAlert
{
  isRunningInStoreDemoMode = [MEMORY[0x1E69DC668] isRunningInStoreDemoMode];
  if (isRunningInStoreDemoMode && !self->_showingDemoModeAlert)
  {
    self->_showingDemoModeAlert = 1;
    v4 = MEMORY[0x1E69DC650];
    v5 = _WBSLocalizedString();
    v6 = [v4 alertControllerWithTitle:v5 message:0 preferredStyle:1];

    v7 = MEMORY[0x1E69DC648];
    v8 = _WBSLocalizedString();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61___SFWebClipViewController__showDemoModeFeatureDisabledAlert__block_invoke;
    v11[3] = &unk_1E848FBF8;
    v11[4] = self;
    v9 = [v7 actionWithTitle:v8 style:1 handler:v11];
    [v6 addAction:v9];

    [(_SFWebClipViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  return isRunningInStoreDemoMode;
}

- (BOOL)createAndAddToHomeScreenBundle
{
  pageURL = [(UIWebClip *)self->_webClip pageURL];
  absoluteString = [pageURL absoluteString];

  if (![absoluteString length] || (-[UIWebClip title](self->_webClip, "title"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, !v6))
  {
    v16 = WBS_LOG_CHANNEL_PREFIXWebApp();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(_SFWebClipViewController *)v16 createAndAddToHomeScreenBundle];
    }

    goto LABEL_9;
  }

  if (![(UIWebClip *)self->_webClip createOnDisk])
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v7 = *MEMORY[0x1E69DDA98];
  identifier = [(UIWebClip *)self->_webClip identifier];
  [v7 addWebClipToHomeScreen:identifier];

  _sf_applicationManifest = [(UIWebClip *)self->_webClip _sf_applicationManifest];

  if (_sf_applicationManifest)
  {
    v10 = MEMORY[0x1E696ACC8];
    _sf_applicationManifest2 = [(UIWebClip *)self->_webClip _sf_applicationManifest];
    v12 = [v10 archivedDataWithRootObject:_sf_applicationManifest2 requiringSecureCoding:0 error:0];

    _sf_applicationManifestPath = [(UIWebClip *)self->_webClip _sf_applicationManifestPath];
    [v12 writeToURL:_sf_applicationManifestPath atomically:1];
  }

  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  [mEMORY[0x1E69C8810] didAddWebClip];

  v15 = 1;
LABEL_10:

  return v15;
}

- (BOOL)_canAddWebClip
{
  if (!self->_canEditAndSave)
  {
    return 0;
  }

  title = [(UIWebClip *)self->_webClip title];
  v3 = [title length] != 0;

  return v3;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  _canAddWebClip = [(_SFWebClipViewController *)self _canAddWebClip];
  if (_canAddWebClip)
  {
    [(_SFWebClipViewController *)self _add];
  }

  return _canAddWebClip;
}

- (void)_textFieldChanged:(id)changed
{
  webClip = self->_webClip;
  editableTextField = [(UITableViewCell *)self->_titleCell editableTextField];
  text = [editableTextField text];
  _web_stringByTrimmingWhitespace = [text _web_stringByTrimmingWhitespace];
  [(UIWebClip *)webClip setTitle:_web_stringByTrimmingWhitespace];

  _canAddWebClip = [(_SFWebClipViewController *)self _canAddWebClip];
  navigationItem = [(_SFWebClipViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:_canAddWebClip];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  editableTextField = [(UITableViewCell *)self->_titleCell editableTextField];
  [editableTextField setDelegate:0];

  v5.receiver = self;
  v5.super_class = _SFWebClipViewController;
  [(_SFWebClipViewController *)&v5 dealloc];
}

- (BOOL)_shouldUseTranslucentAppearance
{
  if (([(_SFWebClipViewController *)self safari_isPresentedByActivityViewController]& 1) != 0)
  {
    return 0;
  }

  return [(_SFWebClipViewController *)self _isInPopoverPresentation];
}

- (void)bookmarkTextEntryTableViewController:(id)controller dismissedWithText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    [(UIWebClip *)self->_webClip setTitle:textCopy];
  }
}

- (void)switchTableViewCell:(id)cell didChangeSwitchState:(BOOL)state
{
  self->_shouldOpenAsWebApp = state;
  tableView = [(_SFWebClipViewController *)self tableView];
  [tableView reloadData];
}

- (_SFWebClipViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end