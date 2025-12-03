@interface CNMeCardSharingSettingsHeaderViewController
+ (double)avatarEdgeLengthForTraitCollection:(id)collection;
- (CGRect)avatarViewControllerFrame;
- (CGRect)toggleAnimationButtonFrame;
- (CNMeCardSharingSettingsHeaderViewController)initWithAvatarProvider:(id)provider mode:(int64_t)mode;
- (CNMeCardSharingSettingsHeaderViewControllerDelegate)delegate;
- (double)availableAvatarSpace;
- (double)desiredHeightForTraitCollection:(id)collection;
- (double)maxAvatarHeight;
- (double)maxHeight;
- (double)minAvatarHeight;
- (double)minHeight;
- (double)separatorHeight;
- (id)toggleAnimationButtonImageName;
- (void)avatarViewControllerDidUpdateImage:(id)image needsLayout:(BOOL)layout;
- (void)avatarViewControllerWasTapped:(id)tapped;
- (void)labelButtonTapped:(id)tapped;
- (void)updateButtonLabel;
- (void)updateLabelButtonFrame;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CNMeCardSharingSettingsHeaderViewController

- (CNMeCardSharingSettingsHeaderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)avatarViewControllerWasTapped:(id)tapped
{
  delegate = [(CNMeCardSharingSettingsHeaderViewController *)self delegate];
  [delegate sharingSettingsHeaderWasTapped:self];
}

- (void)avatarViewControllerDidUpdateImage:(id)image needsLayout:(BOOL)layout
{
  if (layout)
  {
    view = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [view setNeedsLayout];
  }

  [(CNMeCardSharingSettingsHeaderViewController *)self updateButtonLabel];
}

- (void)labelButtonTapped:(id)tapped
{
  delegate = [(CNMeCardSharingSettingsHeaderViewController *)self delegate];
  [delegate sharingSettingsHeaderWasTapped:self];
}

- (void)updateButtonLabel
{
  avatarViewController = [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewController];
  showsPosterAnimation = [avatarViewController showsPosterAnimation];

  hasImage = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController hasImage];
  if (showsPosterAnimation)
  {
    if (hasImage || [(CNMeCardSharingAvatarViewController *)self->_avatarViewController isWaitingForPosterPreviews])
    {
      v6 = @"SNAP_SHARING_POSTER_EDIT";
    }

    else
    {
      v6 = @"SNAP_SHARING_POSTER_ADD";
    }
  }

  else if (hasImage || [(CNMeCardSharingAvatarViewController *)self->_avatarViewController isWaitingForPosterPreviews])
  {
    v6 = @"SHARING_EDIT";
  }

  else
  {
    v6 = @"SHARING_ADD_PHOTO";
  }

  v7 = CNContactsUIBundle();
  v11 = [v7 localizedStringForKey:v6 value:&stru_1F0CE7398 table:@"Localized"];

  titleLabel = [(UIButton *)self->_labelButton titleLabel];
  text = [titleLabel text];
  v10 = [v11 isEqualToString:text];

  if ((v10 & 1) == 0)
  {
    [(UIButton *)self->_labelButton setTitle:v11 forState:0];
    [(CNMeCardSharingSettingsHeaderViewController *)self updateLabelButtonFrame];
  }
}

- (double)maxHeight
{
  [(CNMeCardSharingSettingsHeaderViewController *)self maxAvatarHeight];
  v4 = v3;
  view = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view layoutIfNeeded];

  view2 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view2 bounds];
  v7 = CGRectGetWidth(v15) + -40.0;

  [(UIButton *)self->_labelButton sizeThatFits:v7, 100.0];
  v9 = v8;
  view3 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view3 safeAreaInsets];
  v12 = v11;

  v13 = 44.0;
  if (v12 >= 44.0)
  {
    v13 = v12;
  }

  return v9 + v4 + v13 + 32.0;
}

- (double)minHeight
{
  [(CNMeCardSharingSettingsHeaderViewController *)self minAvatarHeight];
  v4 = v3;
  view = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view layoutIfNeeded];

  view2 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view2 bounds];
  v7 = CGRectGetWidth(v15) + -40.0;

  [(UIButton *)self->_labelButton sizeThatFits:v7, 100.0];
  v9 = v8;
  view3 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view3 safeAreaInsets];
  v12 = v11;

  v13 = 44.0;
  if (v12 >= 44.0)
  {
    v13 = v12;
  }

  return v9 + v4 + v13 + 32.0;
}

- (double)maxAvatarHeight
{
  view = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view bounds];
  v5 = v4 + -10.0;

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (v5 > 320.0)
    {
      return 320.0;
    }
  }

  else if (![(CNMeCardSharingSettingsHeaderViewController *)self mode])
  {
    view2 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [view2 bounds];
    v5 = v9 + -40.0;
  }

  return v5;
}

- (double)minAvatarHeight
{
  avatarViewController = [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewController];
  showsPosterAnimation = [avatarViewController showsPosterAnimation];

  if (!showsPosterAnimation)
  {
    return 130.0;
  }

  delegate = [(CNMeCardSharingSettingsHeaderViewController *)self delegate];
  [delegate viewHeight];
  v7 = v6;

  return ceil(v7 / 3.0);
}

- (double)availableAvatarSpace
{
  view = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view frame];
  v5 = v4;

  result = 0.0;
  if (v5 > 0.0)
  {
    view2 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [view2 layoutIfNeeded];

    view3 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [view3 bounds];
    v9 = CGRectGetWidth(v16) + -40.0;

    [(UIButton *)self->_labelButton sizeThatFits:v9, 100.0];
    v11 = v10;
    view4 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [view4 safeAreaInsets];
    v14 = v13;

    v15 = 44.0;
    if (v14 >= 44.0)
    {
      v15 = v14;
    }

    return v5 - v15 - v11 + -32.0;
  }

  return result;
}

- (double)desiredHeightForTraitCollection:(id)collection
{
  [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewControllerFrame];
  v5 = v4;
  view = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view layoutIfNeeded];

  view2 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view2 bounds];
  v8 = CGRectGetWidth(v16) + -40.0;

  [(UIButton *)self->_labelButton sizeThatFits:v8, 100.0];
  v10 = v9;
  view3 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view3 safeAreaInsets];
  v13 = v12;

  v14 = 44.0;
  if (v13 >= 44.0)
  {
    v14 = v13;
  }

  return v10 + v5 + v14 + 32.0;
}

- (void)updateLabelButtonFrame
{
  if ([(CNMeCardSharingSettingsHeaderViewController *)self isViewLoaded]&& self->_labelButton)
  {
    view = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [view bounds];
    v4 = CGRectGetWidth(v16) + -40.0;

    [(UIButton *)self->_labelButton sizeThatFits:v4, 100.0];
    v6 = v5;
    v8 = v7;
    avatarViewController = [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewController];
    [avatarViewController showsPosterAnimation];

    v10 = v6 + 40.0;
    view2 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [view2 bounds];
    v12 = (CGRectGetWidth(v17) - v10) * 0.5;
    view3 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController view];
    [view3 frame];
    [(UIButton *)self->_labelButton setFrame:v12, CGRectGetMaxY(v18) + 16.0, v10, v8];

    labelButton = self->_labelButton;

    [(UIButton *)labelButton _setCornerRadius:v8 * 0.5];
  }
}

- (void)viewDidLayoutSubviews
{
  [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewControllerFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController view];
  [view setFrame:{v4, v6, v8, v10}];

  [(CNMeCardSharingSettingsHeaderViewController *)self toggleAnimationButtonFrame];
  v13 = v12;
  [(UIButton *)self->_toggleAnimationButton setFrame:?];
  layer = [(UIButton *)self->_toggleAnimationButton layer];
  [layer setCornerRadius:v13 * 0.5];

  v15 = 1;
  [(UIButton *)self->_toggleAnimationButton setClipsToBounds:1];
  if ([(CNMeCardSharingAvatarViewController *)self->_avatarViewController showsPosterAnimation])
  {
    v15 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController isPosterAnimationPausable]^ 1;
  }

  [(UIButton *)self->_toggleAnimationButton setHidden:v15];
  [(CNMeCardSharingSettingsHeaderViewController *)self updateLabelButtonFrame];
  [(CNMeCardSharingSettingsHeaderViewController *)self separatorHeight];
  v17 = v16;
  view2 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view2 bounds];
  v19 = CGRectGetMaxY(v22) - v17;
  view3 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view3 bounds];
  [(UIView *)self->_separatorView setFrame:0.0, v19, CGRectGetWidth(v23), v17];

  v21.receiver = self;
  v21.super_class = CNMeCardSharingSettingsHeaderViewController;
  [(CNMeCardSharingSettingsHeaderViewController *)&v21 viewDidLayoutSubviews];
}

- (id)toggleAnimationButtonImageName
{
  avatarViewController = [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewController];
  if ([avatarViewController isPosterAnimationPaused])
  {
    v3 = @"play.circle.fill";
  }

  else
  {
    v3 = @"pause.circle.fill";
  }

  v4 = v3;

  return v3;
}

- (CGRect)toggleAnimationButtonFrame
{
  avatarViewController = [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewController];
  isPosterAnimationPausable = [avatarViewController isPosterAnimationPausable];

  if (isPosterAnimationPausable)
  {
    [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewControllerFrame];
    v7 = v5 + v6 + -44.0 + -7.0;
    view = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [view bounds];
    v10 = v9 + -44.0 + -25.0;

    v11 = 44.0;
    v12 = 44.0;
  }

  else
  {
    v10 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = v10;
  v14 = v7;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)avatarViewControllerFrame
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = v4;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 bounds];
  v8 = v7;

  [(CNMeCardSharingSettingsHeaderViewController *)self availableAvatarSpace];
  v10 = v9;
  [(CNMeCardSharingSettingsHeaderViewController *)self maxAvatarHeight];
  v12 = v11;
  [(CNMeCardSharingSettingsHeaderViewController *)self minAvatarHeight];
  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  if (v13 >= v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  avatarViewController = [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewController];
  v17 = v15;
  if ([avatarViewController showsPosterAnimation])
  {
    v18 = v5 / v8;
    if (v5 / v8 < v8 / v5)
    {
      v18 = v8 / v5;
    }

    v17 = v15 / v18;
  }

  view = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view bounds];
  v20 = floor((CGRectGetWidth(v28) - v17) * 0.5);

  view2 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view2 safeAreaInsets];
  v23 = v22;

  if (v23 >= 44.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 44.0;
  }

  v25 = v20;
  v26 = v17;
  v27 = v15;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v24;
  result.origin.x = v25;
  return result;
}

- (double)separatorHeight
{
  view = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  window = [view window];
  if (window)
  {
    view2 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    window2 = [view2 window];
    screen = [window2 screen];
    [screen scale];
    v9 = 1.0 / v8;
  }

  else
  {
    v9 = 1.0;
  }

  return v9;
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = CNMeCardSharingSettingsHeaderViewController;
  [(CNMeCardSharingSettingsHeaderViewController *)&v35 viewDidLoad];
  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  view = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view setBackgroundColor:systemGroupedBackgroundColor];

  v5 = [[CNMeCardSharingAvatarViewController alloc] initWithAvatarProvider:self->_avatarProvider mode:self->_mode];
  avatarViewController = self->_avatarViewController;
  self->_avatarViewController = v5;

  [(CNMeCardSharingAvatarViewController *)self->_avatarViewController setDelegate:self];
  view2 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  view3 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController view];
  [view2 addSubview:view3];

  [(CNMeCardSharingSettingsHeaderViewController *)self addChildViewController:self->_avatarViewController];
  [(CNMeCardSharingAvatarViewController *)self->_avatarViewController didMoveToParentViewController:self];
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [plainButtonConfiguration setButtonSize:3];
  v10 = MEMORY[0x1E69DCAD8];
  tintColor = [MEMORY[0x1E69DC888] tintColor];
  v12 = [v10 configurationWithHierarchicalColor:tintColor];
  v13 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD58]];
  v14 = [v12 configurationByApplyingConfiguration:v13];
  [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v14];

  v15 = MEMORY[0x1E69DCAB8];
  toggleAnimationButtonImageName = [(CNMeCardSharingSettingsHeaderViewController *)self toggleAnimationButtonImageName];
  v17 = [v15 systemImageNamed:toggleAnimationButtonImageName];
  [plainButtonConfiguration setImage:v17];

  objc_initWeak(&location, self);
  v18 = MEMORY[0x1E69DC628];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __58__CNMeCardSharingSettingsHeaderViewController_viewDidLoad__block_invoke;
  v32[3] = &unk_1E74E4BD0;
  objc_copyWeak(&v33, &location);
  v19 = [v18 actionWithHandler:v32];
  v20 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v19];
  toggleAnimationButton = self->_toggleAnimationButton;
  self->_toggleAnimationButton = v20;

  [(UIButton *)self->_toggleAnimationButton setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
  v22 = self->_toggleAnimationButton;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __58__CNMeCardSharingSettingsHeaderViewController_viewDidLoad__block_invoke_2;
  v30[3] = &unk_1E74E3C58;
  objc_copyWeak(&v31, &location);
  [(UIButton *)v22 setConfigurationUpdateHandler:v30];
  view4 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view4 addSubview:self->_toggleAnimationButton];

  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  [filledButtonConfiguration setButtonSize:1];
  [filledButtonConfiguration setCornerStyle:4];
  [filledButtonConfiguration setContentInsets:{8.0, 10.0, 8.0, 10.0}];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [filledButtonConfiguration setBaseForegroundColor:labelColor];

  tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  [filledButtonConfiguration setBaseBackgroundColor:tertiarySystemFillColor];

  [filledButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_29115];
  v27 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:0];
  labelButton = self->_labelButton;
  self->_labelButton = v27;

  [(CNMeCardSharingSettingsHeaderViewController *)self updateButtonLabel];
  [(UIButton *)self->_labelButton addTarget:self action:sel_labelButtonTapped_ forControlEvents:64];
  view5 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [view5 addSubview:self->_labelButton];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

void __58__CNMeCardSharingSettingsHeaderViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained avatarViewController];
  [v3 togglePosterAnimation];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 toggleAnimationButton];
  [v4 setNeedsUpdateConfiguration];
}

void __58__CNMeCardSharingSettingsHeaderViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 configuration];
  v4 = MEMORY[0x1E69DCAB8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained toggleAnimationButtonImageName];
  v7 = [v4 systemImageNamed:v6];
  [v8 setImage:v7];

  [v3 setConfiguration:v8];
}

id __58__CNMeCardSharingSettingsHeaderViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

- (CNMeCardSharingSettingsHeaderViewController)initWithAvatarProvider:(id)provider mode:(int64_t)mode
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CNMeCardSharingSettingsHeaderViewController;
  v8 = [(CNMeCardSharingSettingsHeaderViewController *)&v12 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_avatarProvider, provider);
    v9->_mode = mode;
    v10 = v9;
  }

  return v9;
}

+ (double)avatarEdgeLengthForTraitCollection:(id)collection
{
  verticalSizeClass = [collection verticalSizeClass];
  result = 168.0;
  if (verticalSizeClass == 1)
  {
    return 120.0;
  }

  return result;
}

@end