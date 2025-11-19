@interface _SFWebClipViewController
- (BOOL)_canAddWebClip;
- (BOOL)_shouldUseTranslucentAppearance;
- (BOOL)_showDemoModeFeatureDisabledAlert;
- (BOOL)createAndAddToHomeScreenBundle;
- (BOOL)textFieldShouldReturn:(id)a3;
- (CGPoint)_centerForIconView;
- (UIEdgeInsets)_cellInset;
- (_SFWebClipViewController)initWithStyle:(int64_t)a3;
- (_SFWebClipViewControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_add;
- (void)_cancel;
- (void)_textFieldChanged:(id)a3;
- (void)bookmarkTextEntryTableViewController:(id)a3 dismissedWithText:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)setCanEditAndSave:(BOOL)a3;
- (void)switchTableViewCell:(id)a3 didChangeSwitchState:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateUIAnimated:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation _SFWebClipViewController

- (_SFWebClipViewController)initWithStyle:(int64_t)a3
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

    v8 = [(_SFWebClipViewController *)v3 navigationItem];
    [v8 setRightBarButtonItem:v7];

    [v7 setEnabled:0];
    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = [v9 initWithBarButtonSystemItem:objc_msgSend(MEMORY[0x1E69DC708] target:"_sf_popoverCancelButtonItem") action:{v3, sel__cancel}];
    v11 = [(_SFWebClipViewController *)v3 navigationItem];
    [v11 setLeftBarButtonItem:v10];

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
  v5 = [(UITableViewCell *)self->_titleCell editableTextField];
  [v5 setEnabled:self->_canEditAndSave];

  v6 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  addressCell = self->_addressCell;
  self->_addressCell = v6;

  [(UITableViewCell *)self->_addressCell setSelectionStyle:0];
  v8 = [(UITableViewCell *)self->_addressCell textLabel];
  [v8 setEnabled:0];

  self->_shouldOpenAsWebApp = 1;
  v9 = [[SFSwitchTableViewCell alloc] initWithReuseIdentifier:0];
  opensAsWebAppSwitchCell = self->_opensAsWebAppSwitchCell;
  self->_opensAsWebAppSwitchCell = v9;

  [(SFSwitchTableViewCell *)self->_opensAsWebAppSwitchCell setDelegate:self];
  v11 = _WBSLocalizedString();
  v12 = [(SFSwitchTableViewCell *)self->_opensAsWebAppSwitchCell textLabel];
  [v12 setText:v11];

  [(SFSwitchTableViewCell *)self->_opensAsWebAppSwitchCell setSelectionStyle:0];
  [(SFSwitchTableViewCell *)self->_opensAsWebAppSwitchCell setSwitchOn:self->_shouldOpenAsWebApp];
  v13 = [(UITableViewCell *)self->_titleCell editableTextField];
  [v13 setDelegate:self];
  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 addObserver:self selector:sel__textFieldChanged_ name:*MEMORY[0x1E69DE5C0] object:v13];

  v15 = [(_SFWebClipViewController *)self tableView];
  v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 60.0, 60.0}];
  iconImageView = self->_iconImageView;
  self->_iconImageView = v16;

  v18 = [(UIImageView *)self->_iconImageView layer];
  [v18 setZPosition:1.0];

  [v15 addSubview:self->_iconImageView];
  if ([(_SFWebClipViewController *)self _shouldUseTranslucentAppearance])
  {
    v19 = [MEMORY[0x1E69DC888] clearColor];
    [v15 setBackgroundColor:v19];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = _SFWebClipViewController;
  [(_SFWebClipViewController *)&v3 viewDidLoad];
  [(_SFWebClipViewController *)self updateUIAnimated:0];
}

- (void)updateUIAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(_SFWebClipViewController *)self isViewLoaded])
  {
    v5 = [(UIWebClip *)self->_webClip title];
    v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:v6];

    v8 = [(UITableViewCell *)self->_titleCell editableTextField];
    [v8 setText:v7];

    v9 = [(UIWebClip *)self->_webClip pageURL];
    v10 = [v9 safari_userVisibleString];
    v11 = [(UITableViewCell *)self->_addressCell textLabel];
    [v11 setText:v10];

    v12 = [(_SFWebClipViewController *)self tableView];
    v13 = [v12 footerViewForSection:0];

    v14 = [v13 defaultContentConfiguration];
    v15 = [(_SFWebClipViewController *)self tableView];
    v16 = [(_SFWebClipViewController *)self tableView:v15 titleForFooterInSection:0];
    [v14 setText:v16];

    [v13 setContentConfiguration:v14];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45___SFWebClipViewController_updateUIAnimated___block_invoke;
    aBlock[3] = &unk_1E848F810;
    aBlock[4] = self;
    v17 = _Block_copy(aBlock);
    v18 = v17;
    if (v3)
    {
      v19 = MEMORY[0x1E69DD250];
      v20 = [(_SFWebClipViewController *)self view];
      [v19 transitionWithView:v20 duration:5242880 options:v18 animations:0 completion:0.349999994];
    }

    else
    {
      (*(v17 + 2))(v17);
    }
  }
}

- (void)setCanEditAndSave:(BOOL)a3
{
  if (self->_canEditAndSave != a3)
  {
    self->_canEditAndSave = a3;
    v4 = [(UITableViewCell *)self->_titleCell editableTextField];
    [v4 setEnabled:self->_canEditAndSave];

    v6 = [(_SFWebClipViewController *)self navigationItem];
    v5 = [v6 rightBarButtonItem];
    [v5 setEnabled:{-[_SFWebClipViewController _canAddWebClip](self, "_canAddWebClip")}];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = _SFWebClipViewController;
  [(_SFWebClipViewController *)&v9 viewWillAppear:a3];
  [(_SFWebClipViewController *)self updateUIAnimated:0];
  self->_suspendAfterDismiss = 0;
  v4 = [(_SFWebClipViewController *)self tableView];
  [v4 reloadData];

  v5 = [(_SFWebClipViewController *)self tableView];
  v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v7 = [v5 cellForRowAtIndexPath:v6];

  if (([(_SFWebClipViewController *)self _isInPopoverPresentation]& 1) == 0)
  {
    v8 = [(UITableViewCell *)self->_titleCell editableTextField];
    [v8 becomeFirstResponder];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(UITableViewCell *)self->_titleCell editableTextField];
  [v5 resignFirstResponder];

  v6.receiver = self;
  v6.super_class = _SFWebClipViewController;
  [(_SFWebClipViewController *)&v6 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(_SFWebClipViewController *)self navigationController];
  v6 = [v5 topViewController];

  if (v6 == self)
  {
    if (self->_suspendAfterDismiss)
    {
      self->_suspendAfterDismiss = 0;
      [*MEMORY[0x1E69DDA98] suspend];
    }

    v8.receiver = self;
    v8.super_class = _SFWebClipViewController;
    [(_SFWebClipViewController *)&v8 viewDidDisappear:v3];
    if (!self->_delegateNotifiedOfResult)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained webClipViewController:self didFinishWithResult:0];
    }
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 row];
  v7 = [v5 section];

  v8 = &OBJC_IVAR____SFWebClipViewController__addressCell;
  if (!v6)
  {
    v8 = &OBJC_IVAR____SFWebClipViewController__titleCell;
  }

  if (v7)
  {
    v8 = &OBJC_IVAR____SFWebClipViewController__opensAsWebAppSwitchCell;
  }

  v9 = *(&self->super.super.super.super.isa + *v8);

  return v9;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
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

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (self->_canEditAndSave && ![v5 row])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  if (![a4 section])
  {
    v5 = [_SFBookmarkTextEntryTableViewController alloc];
    v6 = [(UITableViewCell *)self->_titleCell editableTextField];
    v7 = [v6 text];
    v9 = [(_SFBookmarkTextEntryTableViewController *)v5 initWithBookmarkInfoViewField:0 text:v7 autocapitalizationType:2 autocorrectionType:0 delegate:self];

    v8 = [(_SFWebClipViewController *)self navigationController];
    [v8 pushViewController:v9 animated:1];
  }
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = [(_SFWebClipViewController *)self tableView:a3];
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
  v2 = [(_SFWebClipViewController *)self view];
  [v2 _sf_safeAreaInsetsFlippedForLayoutDirectionality];
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
  v3 = [(_SFWebClipViewController *)self tableView];
  [v3 rectForSection:0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 rectForHeaderInSection:0];
  v13 = v12;
  [v3 rectForFooterInSection:0];
  v15 = v14;
  v16 = [(_SFWebClipViewController *)self view];
  [v16 _sf_usesLeftToRightLayout];

  [v3 safeAreaInsets];
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
  v5 = [(_SFWebClipViewController *)self tableView];
  v4 = [(_SFWebClipViewController *)self view];
  [v4 bounds];
  [v5 sizeThatFits:{CGRectGetWidth(v7), 1.79769313e308}];
  [(_SFWebClipViewController *)self setPreferredContentSize:0.0];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(UITableViewCell *)self->_titleCell editableTextField];
  [v3 setUserInteractionEnabled:1];

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
    v3 = [(UITableViewCell *)self->_titleCell editableTextField];
    [v3 resignFirstResponder];

    [(UIWebClip *)self->_webClip setFullScreen:self->_shouldOpenAsWebApp];
    v4 = [(_SFWebClipViewController *)self createAndAddToHomeScreenBundle];
    if (v4)
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
    [WeakRetained webClipViewController:self didFinishWithResult:v4];
  }
}

- (BOOL)_showDemoModeFeatureDisabledAlert
{
  v3 = [MEMORY[0x1E69DC668] isRunningInStoreDemoMode];
  if (v3 && !self->_showingDemoModeAlert)
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

  return v3;
}

- (BOOL)createAndAddToHomeScreenBundle
{
  v3 = [(UIWebClip *)self->_webClip pageURL];
  v4 = [v3 absoluteString];

  if (![v4 length] || (-[UIWebClip title](self->_webClip, "title"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, !v6))
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
  v8 = [(UIWebClip *)self->_webClip identifier];
  [v7 addWebClipToHomeScreen:v8];

  v9 = [(UIWebClip *)self->_webClip _sf_applicationManifest];

  if (v9)
  {
    v10 = MEMORY[0x1E696ACC8];
    v11 = [(UIWebClip *)self->_webClip _sf_applicationManifest];
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:0 error:0];

    v13 = [(UIWebClip *)self->_webClip _sf_applicationManifestPath];
    [v12 writeToURL:v13 atomically:1];
  }

  v14 = [MEMORY[0x1E69C8810] sharedLogger];
  [v14 didAddWebClip];

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

  v2 = [(UIWebClip *)self->_webClip title];
  v3 = [v2 length] != 0;

  return v3;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [(_SFWebClipViewController *)self _canAddWebClip];
  if (v4)
  {
    [(_SFWebClipViewController *)self _add];
  }

  return v4;
}

- (void)_textFieldChanged:(id)a3
{
  webClip = self->_webClip;
  v5 = [(UITableViewCell *)self->_titleCell editableTextField];
  v6 = [v5 text];
  v7 = [v6 _web_stringByTrimmingWhitespace];
  [(UIWebClip *)webClip setTitle:v7];

  v8 = [(_SFWebClipViewController *)self _canAddWebClip];
  v10 = [(_SFWebClipViewController *)self navigationItem];
  v9 = [v10 rightBarButtonItem];
  [v9 setEnabled:v8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(UITableViewCell *)self->_titleCell editableTextField];
  [v4 setDelegate:0];

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

- (void)bookmarkTextEntryTableViewController:(id)a3 dismissedWithText:(id)a4
{
  v5 = a4;
  if ([v5 length])
  {
    [(UIWebClip *)self->_webClip setTitle:v5];
  }
}

- (void)switchTableViewCell:(id)a3 didChangeSwitchState:(BOOL)a4
{
  self->_shouldOpenAsWebApp = a4;
  v4 = [(_SFWebClipViewController *)self tableView];
  [v4 reloadData];
}

- (_SFWebClipViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end