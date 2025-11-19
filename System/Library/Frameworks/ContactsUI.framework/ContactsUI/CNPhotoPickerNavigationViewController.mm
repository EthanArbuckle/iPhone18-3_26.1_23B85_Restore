@interface CNPhotoPickerNavigationViewController
- (BOOL)isDisplayingTrapView;
- (BOOL)shouldDisplayTrapOverlayView;
- (CGSize)previousSize;
- (CNPhotoPickerNavigationViewController)initWithRootViewController:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)beginDisablingAutorotation;
- (void)dealloc;
- (void)endDisablingAutorotation;
- (void)endDisablingAutorotationIfNeeded;
- (void)setAllowRotation:(BOOL)a3;
- (void)setupTrapOverlayView;
- (void)updateTrapOverlayViewIfNecessaryWithCoordinator:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNPhotoPickerNavigationViewController

- (CGSize)previousSize
{
  width = self->_previousSize.width;
  height = self->_previousSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

- (void)updateTrapOverlayViewIfNecessaryWithCoordinator:(id)a3
{
  if (a3)
  {
    v4[4] = self;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __89__CNPhotoPickerNavigationViewController_updateTrapOverlayViewIfNecessaryWithCoordinator___block_invoke;
    v5[3] = &unk_1E74E3CC8;
    v5[4] = self;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __89__CNPhotoPickerNavigationViewController_updateTrapOverlayViewIfNecessaryWithCoordinator___block_invoke_3;
    v4[3] = &unk_1E74E3CC8;
    [a3 animateAlongsideTransition:v5 completion:v4];
  }

  else
  {

    [(CNPhotoPickerNavigationViewController *)self setupTrapOverlayView];
  }
}

void __89__CNPhotoPickerNavigationViewController_updateTrapOverlayViewIfNecessaryWithCoordinator___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldDisplayTrapOverlayView])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __89__CNPhotoPickerNavigationViewController_updateTrapOverlayViewIfNecessaryWithCoordinator___block_invoke_2;
    v6[3] = &unk_1E74E6A88;
    v6[4] = *(a1 + 32);
    [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
    v2 = [*(a1 + 32) trapOverlayView];
    v3 = [v2 label];
    [v3 setAlpha:1.0];
  }

  else
  {
    v5 = [*(a1 + 32) trapOverlayView];
    v4 = [v5 label];
    [v4 setAlpha:0.0];
  }
}

void __89__CNPhotoPickerNavigationViewController_updateTrapOverlayViewIfNecessaryWithCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setupTrapOverlayView];
  v3 = [*(a1 + 32) trapOverlayView];
  v2 = [v3 label];
  [v2 setAlpha:0.0];
}

- (void)setupTrapOverlayView
{
  v43[4] = *MEMORY[0x1E69E9840];
  if ([(CNPhotoPickerNavigationViewController *)self shouldDisplayTrapOverlayView])
  {
    v3 = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];

    if (v3)
    {
      v4 = [(CNPhotoPickerNavigationViewController *)self view];
      [(CNPhotoPickerTrapView *)v4 bringSubviewToFront:self->_trapOverlayView];
    }

    else
    {
      v10 = [CNPhotoPickerTrapView alloc];
      v4 = [(CNPhotoPickerTrapView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v11 = +[CNUIColorRepository photoPickerBackgroundColor];
      [(CNPhotoPickerTrapView *)v4 setBackgroundColor:v11];

      v12 = +[CNUIColorRepository photoPickerTrapViewMessageTextColor];
      v13 = [(CNPhotoPickerTrapView *)v4 label];
      [v13 setTextColor:v12];

      [(CNPhotoPickerTrapView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      v14 = [(CNPhotoPickerNavigationViewController *)self view];
      [v14 addSubview:v4];

      v41 = [(CNPhotoPickerTrapView *)v4 leadingAnchor];
      v42 = [(CNPhotoPickerNavigationViewController *)self view];
      v40 = [v42 leadingAnchor];
      v39 = [v41 constraintEqualToAnchor:v40];
      v43[0] = v39;
      v37 = [(CNPhotoPickerTrapView *)v4 trailingAnchor];
      v38 = [(CNPhotoPickerNavigationViewController *)self view];
      v36 = [v38 trailingAnchor];
      v35 = [v37 constraintEqualToAnchor:v36];
      v43[1] = v35;
      v33 = [(CNPhotoPickerTrapView *)v4 topAnchor];
      v34 = [(CNPhotoPickerNavigationViewController *)self view];
      v15 = [v34 safeAreaLayoutGuide];
      v16 = [v15 topAnchor];
      v17 = [v33 constraintEqualToAnchor:v16];
      v43[2] = v17;
      v18 = [(CNPhotoPickerTrapView *)v4 bottomAnchor];
      v19 = [(CNPhotoPickerNavigationViewController *)self view];
      v20 = [v19 bottomAnchor];
      v21 = [v18 constraintEqualToAnchor:v20];
      v43[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
      [(CNPhotoPickerNavigationViewController *)self setTrapOverlayConstraints:v22];

      v23 = MEMORY[0x1E696ACD8];
      v24 = [(CNPhotoPickerNavigationViewController *)self trapOverlayConstraints];
      [v23 activateConstraints:v24];

      [(CNPhotoPickerNavigationViewController *)self setTrapOverlayView:v4];
    }

    v25 = [(CNPhotoPickerNavigationViewController *)self interfaceOrientation]- 3;
    v26 = CNContactsUIBundle();
    v27 = v26;
    if (v25 >= 2)
    {
      v28 = @"PHOTO_TRAP_VIEW_MESSAGE";
    }

    else
    {
      v28 = @"PHOTO_TRAP_VIEW_LANDSCAPE_MESSAGE";
    }

    v29 = [v26 localizedStringForKey:v28 value:&stru_1F0CE7398 table:@"Localized"];
    v30 = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];
    v31 = [v30 label];
    [v31 setText:v29];

    v32 = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];
    [v32 layoutIfNeeded];
  }

  else
  {
    v5 = [(CNPhotoPickerNavigationViewController *)self trapOverlayConstraints];

    if (v5)
    {
      v6 = MEMORY[0x1E696ACD8];
      v7 = [(CNPhotoPickerNavigationViewController *)self trapOverlayConstraints];
      [v6 deactivateConstraints:v7];

      [(CNPhotoPickerNavigationViewController *)self setTrapOverlayConstraints:0];
    }

    v8 = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];

    if (v8)
    {
      v9 = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];
      [v9 removeFromSuperview];

      [(CNPhotoPickerNavigationViewController *)self setTrapOverlayView:0];
    }
  }
}

- (BOOL)isDisplayingTrapView
{
  v2 = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)shouldDisplayTrapOverlayView
{
  if ([(CNPhotoPickerNavigationViewController *)self allowRotation])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(CNPhotoPickerNavigationViewController *)self view];
    v5 = [(CNPhotoPickerNavigationViewController *)self traitCollection];
    if ([(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController canShowPhotoPickerForView:v4 withTraitCollection:v5])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = ![(CNPhotoPickerNavigationViewController *)self isShowingKeyboard];
    }
  }

  return v3;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = CNPhotoPickerNavigationViewController;
  v7 = a4;
  [(CNPhotoPickerNavigationViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(CNPhotoPickerNavigationViewController *)self setPreviousSize:width, height, v8.receiver, v8.super_class];
  [(CNPhotoPickerNavigationViewController *)self updateTrapOverlayViewIfNecessaryWithCoordinator:v7];
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = CNPhotoPickerNavigationViewController;
  [(CNPhotoPickerNavigationViewController *)&v10 viewWillLayoutSubviews];
  v3 = [(CNPhotoPickerNavigationViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  if (self->_previousSize.width == v5 && self->_previousSize.height == v7)
  {
    v9 = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];

    if (((v9 == 0) ^ [(CNPhotoPickerNavigationViewController *)self shouldDisplayTrapOverlayView]))
    {
      return;
    }
  }

  else
  {
    [(CNPhotoPickerNavigationViewController *)self setPreviousSize:v5, v7];
  }

  [(CNPhotoPickerNavigationViewController *)self updateTrapOverlayViewIfNecessaryWithCoordinator:0];
}

- (void)beginDisablingAutorotation
{
  [(CNPhotoPickerNavigationViewController *)self setDisablingRotation:1];

  [(CNPhotoPickerNavigationViewController *)self _beginDisablingInterfaceAutorotation];
}

- (void)endDisablingAutorotation
{
  [(CNPhotoPickerNavigationViewController *)self setDisablingRotation:0];

  [(CNPhotoPickerNavigationViewController *)self _endDisablingInterfaceAutorotation];
}

- (void)endDisablingAutorotationIfNeeded
{
  if ([(CNPhotoPickerNavigationViewController *)self disablingRotation])
  {

    [(CNPhotoPickerNavigationViewController *)self endDisablingAutorotation];
  }
}

- (void)setAllowRotation:(BOOL)a3
{
  if (self->_allowRotation != a3)
  {
    self->_allowRotation = a3;
    [(CNPhotoPickerNavigationViewController *)self updateTrapOverlayViewIfNecessaryWithCoordinator:0];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerNavigationViewController;
  [(CNPhotoPickerNavigationViewController *)&v5 viewWillDisappear:a3];
  if ([(CNPhotoPickerNavigationViewController *)self disablingRotation]&& [(CNPhotoPickerNavigationViewController *)self _isInterfaceAutorotationDisabled])
  {
    v4 = [(CNPhotoPickerNavigationViewController *)self presentedViewController];

    if (!v4)
    {
      [(CNPhotoPickerNavigationViewController *)self endDisablingAutorotation];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = CNPhotoPickerNavigationViewController;
  [(CNPhotoPickerNavigationViewController *)&v14 viewDidAppear:a3];
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    if ([(CNPhotoPickerNavigationViewController *)self disablingRotation])
    {
      v6 = [(CNPhotoPickerNavigationViewController *)self view];
      v7 = [v6 window];
      v8 = [v7 windowScene];
      if (([v8 interfaceOrientation] - 3) > 1)
      {
      }

      else
      {
        v9 = [(CNPhotoPickerNavigationViewController *)self _isInterfaceAutorotationDisabled];

        if (v9)
        {
          [(CNPhotoPickerNavigationViewController *)self endDisablingAutorotation];
        }
      }
    }

    else if (![(CNPhotoPickerNavigationViewController *)self allowRotation])
    {
      v10 = [(CNPhotoPickerNavigationViewController *)self view];
      v11 = [v10 window];
      v12 = [v11 windowScene];
      v13 = [v12 interfaceOrientation];

      if (v13 == 1)
      {
        [(CNPhotoPickerNavigationViewController *)self beginDisablingAutorotation];
      }
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPhotoPickerNavigationViewController;
  [(CNPhotoPickerNavigationViewController *)&v4 dealloc];
}

- (CNPhotoPickerNavigationViewController)initWithRootViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerNavigationViewController;
  v3 = [(CNPhotoPickerNavigationViewController *)&v9 initWithRootViewController:a3];
  v4 = v3;
  if (v3)
  {
    *(v3 + 1496) = *MEMORY[0x1E695F060];
    v3[1473] = 0;
    v3[1474] = 0;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v4 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

    v7 = v4;
  }

  return v4;
}

@end