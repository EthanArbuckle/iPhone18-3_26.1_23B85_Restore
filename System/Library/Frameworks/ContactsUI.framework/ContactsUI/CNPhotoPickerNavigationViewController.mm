@interface CNPhotoPickerNavigationViewController
- (BOOL)isDisplayingTrapView;
- (BOOL)shouldDisplayTrapOverlayView;
- (CGSize)previousSize;
- (CNPhotoPickerNavigationViewController)initWithRootViewController:(id)controller;
- (unint64_t)supportedInterfaceOrientations;
- (void)beginDisablingAutorotation;
- (void)dealloc;
- (void)endDisablingAutorotation;
- (void)endDisablingAutorotationIfNeeded;
- (void)setAllowRotation:(BOOL)rotation;
- (void)setupTrapOverlayView;
- (void)updateTrapOverlayViewIfNecessaryWithCoordinator:(id)coordinator;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

- (void)updateTrapOverlayViewIfNecessaryWithCoordinator:(id)coordinator
{
  if (coordinator)
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
    [coordinator animateAlongsideTransition:v5 completion:v4];
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
    trapOverlayView = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];

    if (trapOverlayView)
    {
      view = [(CNPhotoPickerNavigationViewController *)self view];
      [(CNPhotoPickerTrapView *)view bringSubviewToFront:self->_trapOverlayView];
    }

    else
    {
      v10 = [CNPhotoPickerTrapView alloc];
      view = [(CNPhotoPickerTrapView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v11 = +[CNUIColorRepository photoPickerBackgroundColor];
      [(CNPhotoPickerTrapView *)view setBackgroundColor:v11];

      v12 = +[CNUIColorRepository photoPickerTrapViewMessageTextColor];
      label = [(CNPhotoPickerTrapView *)view label];
      [label setTextColor:v12];

      [(CNPhotoPickerTrapView *)view setTranslatesAutoresizingMaskIntoConstraints:0];
      view2 = [(CNPhotoPickerNavigationViewController *)self view];
      [view2 addSubview:view];

      leadingAnchor = [(CNPhotoPickerTrapView *)view leadingAnchor];
      view3 = [(CNPhotoPickerNavigationViewController *)self view];
      leadingAnchor2 = [view3 leadingAnchor];
      v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v43[0] = v39;
      trailingAnchor = [(CNPhotoPickerTrapView *)view trailingAnchor];
      view4 = [(CNPhotoPickerNavigationViewController *)self view];
      trailingAnchor2 = [view4 trailingAnchor];
      v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v43[1] = v35;
      topAnchor = [(CNPhotoPickerTrapView *)view topAnchor];
      view5 = [(CNPhotoPickerNavigationViewController *)self view];
      safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
      topAnchor2 = [safeAreaLayoutGuide topAnchor];
      v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v43[2] = v17;
      bottomAnchor = [(CNPhotoPickerTrapView *)view bottomAnchor];
      view6 = [(CNPhotoPickerNavigationViewController *)self view];
      bottomAnchor2 = [view6 bottomAnchor];
      v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v43[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
      [(CNPhotoPickerNavigationViewController *)self setTrapOverlayConstraints:v22];

      v23 = MEMORY[0x1E696ACD8];
      trapOverlayConstraints = [(CNPhotoPickerNavigationViewController *)self trapOverlayConstraints];
      [v23 activateConstraints:trapOverlayConstraints];

      [(CNPhotoPickerNavigationViewController *)self setTrapOverlayView:view];
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
    trapOverlayView2 = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];
    label2 = [trapOverlayView2 label];
    [label2 setText:v29];

    trapOverlayView3 = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];
    [trapOverlayView3 layoutIfNeeded];
  }

  else
  {
    trapOverlayConstraints2 = [(CNPhotoPickerNavigationViewController *)self trapOverlayConstraints];

    if (trapOverlayConstraints2)
    {
      v6 = MEMORY[0x1E696ACD8];
      trapOverlayConstraints3 = [(CNPhotoPickerNavigationViewController *)self trapOverlayConstraints];
      [v6 deactivateConstraints:trapOverlayConstraints3];

      [(CNPhotoPickerNavigationViewController *)self setTrapOverlayConstraints:0];
    }

    trapOverlayView4 = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];

    if (trapOverlayView4)
    {
      trapOverlayView5 = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];
      [trapOverlayView5 removeFromSuperview];

      [(CNPhotoPickerNavigationViewController *)self setTrapOverlayView:0];
    }
  }
}

- (BOOL)isDisplayingTrapView
{
  trapOverlayView = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];
  v3 = trapOverlayView != 0;

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
    view = [(CNPhotoPickerNavigationViewController *)self view];
    traitCollection = [(CNPhotoPickerNavigationViewController *)self traitCollection];
    if ([(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController canShowPhotoPickerForView:view withTraitCollection:traitCollection])
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = CNPhotoPickerNavigationViewController;
  coordinatorCopy = coordinator;
  [(CNPhotoPickerNavigationViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(CNPhotoPickerNavigationViewController *)self setPreviousSize:width, height, v8.receiver, v8.super_class];
  [(CNPhotoPickerNavigationViewController *)self updateTrapOverlayViewIfNecessaryWithCoordinator:coordinatorCopy];
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = CNPhotoPickerNavigationViewController;
  [(CNPhotoPickerNavigationViewController *)&v10 viewWillLayoutSubviews];
  view = [(CNPhotoPickerNavigationViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;

  if (self->_previousSize.width == v5 && self->_previousSize.height == v7)
  {
    trapOverlayView = [(CNPhotoPickerNavigationViewController *)self trapOverlayView];

    if (((trapOverlayView == 0) ^ [(CNPhotoPickerNavigationViewController *)self shouldDisplayTrapOverlayView]))
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

- (void)setAllowRotation:(BOOL)rotation
{
  if (self->_allowRotation != rotation)
  {
    self->_allowRotation = rotation;
    [(CNPhotoPickerNavigationViewController *)self updateTrapOverlayViewIfNecessaryWithCoordinator:0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerNavigationViewController;
  [(CNPhotoPickerNavigationViewController *)&v5 viewWillDisappear:disappear];
  if ([(CNPhotoPickerNavigationViewController *)self disablingRotation]&& [(CNPhotoPickerNavigationViewController *)self _isInterfaceAutorotationDisabled])
  {
    presentedViewController = [(CNPhotoPickerNavigationViewController *)self presentedViewController];

    if (!presentedViewController)
    {
      [(CNPhotoPickerNavigationViewController *)self endDisablingAutorotation];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = CNPhotoPickerNavigationViewController;
  [(CNPhotoPickerNavigationViewController *)&v14 viewDidAppear:appear];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    if ([(CNPhotoPickerNavigationViewController *)self disablingRotation])
    {
      view = [(CNPhotoPickerNavigationViewController *)self view];
      window = [view window];
      windowScene = [window windowScene];
      if (([windowScene interfaceOrientation] - 3) > 1)
      {
      }

      else
      {
        _isInterfaceAutorotationDisabled = [(CNPhotoPickerNavigationViewController *)self _isInterfaceAutorotationDisabled];

        if (_isInterfaceAutorotationDisabled)
        {
          [(CNPhotoPickerNavigationViewController *)self endDisablingAutorotation];
        }
      }
    }

    else if (![(CNPhotoPickerNavigationViewController *)self allowRotation])
    {
      view2 = [(CNPhotoPickerNavigationViewController *)self view];
      window2 = [view2 window];
      windowScene2 = [window2 windowScene];
      interfaceOrientation = [windowScene2 interfaceOrientation];

      if (interfaceOrientation == 1)
      {
        [(CNPhotoPickerNavigationViewController *)self beginDisablingAutorotation];
      }
    }
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNPhotoPickerNavigationViewController;
  [(CNPhotoPickerNavigationViewController *)&v4 dealloc];
}

- (CNPhotoPickerNavigationViewController)initWithRootViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerNavigationViewController;
  v3 = [(CNPhotoPickerNavigationViewController *)&v9 initWithRootViewController:controller];
  v4 = v3;
  if (v3)
  {
    *(v3 + 1496) = *MEMORY[0x1E695F060];
    v3[1473] = 0;
    v3[1474] = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

    v7 = v4;
  }

  return v4;
}

@end