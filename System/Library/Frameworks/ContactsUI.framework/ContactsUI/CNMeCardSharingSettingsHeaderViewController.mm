@interface CNMeCardSharingSettingsHeaderViewController
+ (double)avatarEdgeLengthForTraitCollection:(id)a3;
- (CGRect)avatarViewControllerFrame;
- (CGRect)toggleAnimationButtonFrame;
- (CNMeCardSharingSettingsHeaderViewController)initWithAvatarProvider:(id)a3 mode:(int64_t)a4;
- (CNMeCardSharingSettingsHeaderViewControllerDelegate)delegate;
- (double)availableAvatarSpace;
- (double)desiredHeightForTraitCollection:(id)a3;
- (double)maxAvatarHeight;
- (double)maxHeight;
- (double)minAvatarHeight;
- (double)minHeight;
- (double)separatorHeight;
- (id)toggleAnimationButtonImageName;
- (void)avatarViewControllerDidUpdateImage:(id)a3 needsLayout:(BOOL)a4;
- (void)avatarViewControllerWasTapped:(id)a3;
- (void)labelButtonTapped:(id)a3;
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

- (void)avatarViewControllerWasTapped:(id)a3
{
  v4 = [(CNMeCardSharingSettingsHeaderViewController *)self delegate];
  [v4 sharingSettingsHeaderWasTapped:self];
}

- (void)avatarViewControllerDidUpdateImage:(id)a3 needsLayout:(BOOL)a4
{
  if (a4)
  {
    v5 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [v5 setNeedsLayout];
  }

  [(CNMeCardSharingSettingsHeaderViewController *)self updateButtonLabel];
}

- (void)labelButtonTapped:(id)a3
{
  v4 = [(CNMeCardSharingSettingsHeaderViewController *)self delegate];
  [v4 sharingSettingsHeaderWasTapped:self];
}

- (void)updateButtonLabel
{
  v3 = [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewController];
  v4 = [v3 showsPosterAnimation];

  v5 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController hasImage];
  if (v4)
  {
    if (v5 || [(CNMeCardSharingAvatarViewController *)self->_avatarViewController isWaitingForPosterPreviews])
    {
      v6 = @"SNAP_SHARING_POSTER_EDIT";
    }

    else
    {
      v6 = @"SNAP_SHARING_POSTER_ADD";
    }
  }

  else if (v5 || [(CNMeCardSharingAvatarViewController *)self->_avatarViewController isWaitingForPosterPreviews])
  {
    v6 = @"SHARING_EDIT";
  }

  else
  {
    v6 = @"SHARING_ADD_PHOTO";
  }

  v7 = CNContactsUIBundle();
  v11 = [v7 localizedStringForKey:v6 value:&stru_1F0CE7398 table:@"Localized"];

  v8 = [(UIButton *)self->_labelButton titleLabel];
  v9 = [v8 text];
  v10 = [v11 isEqualToString:v9];

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
  v5 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v5 layoutIfNeeded];

  v6 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v6 bounds];
  v7 = CGRectGetWidth(v15) + -40.0;

  [(UIButton *)self->_labelButton sizeThatFits:v7, 100.0];
  v9 = v8;
  v10 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v10 safeAreaInsets];
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
  v5 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v5 layoutIfNeeded];

  v6 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v6 bounds];
  v7 = CGRectGetWidth(v15) + -40.0;

  [(UIButton *)self->_labelButton sizeThatFits:v7, 100.0];
  v9 = v8;
  v10 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v10 safeAreaInsets];
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
  v3 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v3 bounds];
  v5 = v4 + -10.0;

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (v5 > 320.0)
    {
      return 320.0;
    }
  }

  else if (![(CNMeCardSharingSettingsHeaderViewController *)self mode])
  {
    v8 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [v8 bounds];
    v5 = v9 + -40.0;
  }

  return v5;
}

- (double)minAvatarHeight
{
  v3 = [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewController];
  v4 = [v3 showsPosterAnimation];

  if (!v4)
  {
    return 130.0;
  }

  v5 = [(CNMeCardSharingSettingsHeaderViewController *)self delegate];
  [v5 viewHeight];
  v7 = v6;

  return ceil(v7 / 3.0);
}

- (double)availableAvatarSpace
{
  v3 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v3 frame];
  v5 = v4;

  result = 0.0;
  if (v5 > 0.0)
  {
    v7 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [v7 layoutIfNeeded];

    v8 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [v8 bounds];
    v9 = CGRectGetWidth(v16) + -40.0;

    [(UIButton *)self->_labelButton sizeThatFits:v9, 100.0];
    v11 = v10;
    v12 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [v12 safeAreaInsets];
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

- (double)desiredHeightForTraitCollection:(id)a3
{
  [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewControllerFrame];
  v5 = v4;
  v6 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v6 layoutIfNeeded];

  v7 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v7 bounds];
  v8 = CGRectGetWidth(v16) + -40.0;

  [(UIButton *)self->_labelButton sizeThatFits:v8, 100.0];
  v10 = v9;
  v11 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v11 safeAreaInsets];
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
    v3 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [v3 bounds];
    v4 = CGRectGetWidth(v16) + -40.0;

    [(UIButton *)self->_labelButton sizeThatFits:v4, 100.0];
    v6 = v5;
    v8 = v7;
    v9 = [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewController];
    [v9 showsPosterAnimation];

    v10 = v6 + 40.0;
    v11 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [v11 bounds];
    v12 = (CGRectGetWidth(v17) - v10) * 0.5;
    v13 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController view];
    [v13 frame];
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
  v11 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController view];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(CNMeCardSharingSettingsHeaderViewController *)self toggleAnimationButtonFrame];
  v13 = v12;
  [(UIButton *)self->_toggleAnimationButton setFrame:?];
  v14 = [(UIButton *)self->_toggleAnimationButton layer];
  [v14 setCornerRadius:v13 * 0.5];

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
  v18 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v18 bounds];
  v19 = CGRectGetMaxY(v22) - v17;
  v20 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v20 bounds];
  [(UIView *)self->_separatorView setFrame:0.0, v19, CGRectGetWidth(v23), v17];

  v21.receiver = self;
  v21.super_class = CNMeCardSharingSettingsHeaderViewController;
  [(CNMeCardSharingSettingsHeaderViewController *)&v21 viewDidLayoutSubviews];
}

- (id)toggleAnimationButtonImageName
{
  v2 = [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewController];
  if ([v2 isPosterAnimationPaused])
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
  v3 = [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewController];
  v4 = [v3 isPosterAnimationPausable];

  if (v4)
  {
    [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewControllerFrame];
    v7 = v5 + v6 + -44.0 + -7.0;
    v8 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    [v8 bounds];
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
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  v5 = v4;

  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 bounds];
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

  v16 = [(CNMeCardSharingSettingsHeaderViewController *)self avatarViewController];
  v17 = v15;
  if ([v16 showsPosterAnimation])
  {
    v18 = v5 / v8;
    if (v5 / v8 < v8 / v5)
    {
      v18 = v8 / v5;
    }

    v17 = v15 / v18;
  }

  v19 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v19 bounds];
  v20 = floor((CGRectGetWidth(v28) - v17) * 0.5);

  v21 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v21 safeAreaInsets];
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
  v3 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  v4 = [v3 window];
  if (v4)
  {
    v5 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
    v6 = [v5 window];
    v7 = [v6 screen];
    [v7 scale];
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
  v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  v4 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [[CNMeCardSharingAvatarViewController alloc] initWithAvatarProvider:self->_avatarProvider mode:self->_mode];
  avatarViewController = self->_avatarViewController;
  self->_avatarViewController = v5;

  [(CNMeCardSharingAvatarViewController *)self->_avatarViewController setDelegate:self];
  v7 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  v8 = [(CNMeCardSharingAvatarViewController *)self->_avatarViewController view];
  [v7 addSubview:v8];

  [(CNMeCardSharingSettingsHeaderViewController *)self addChildViewController:self->_avatarViewController];
  [(CNMeCardSharingAvatarViewController *)self->_avatarViewController didMoveToParentViewController:self];
  v9 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [v9 setButtonSize:3];
  v10 = MEMORY[0x1E69DCAD8];
  v11 = [MEMORY[0x1E69DC888] tintColor];
  v12 = [v10 configurationWithHierarchicalColor:v11];
  v13 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD58]];
  v14 = [v12 configurationByApplyingConfiguration:v13];
  [v9 setPreferredSymbolConfigurationForImage:v14];

  v15 = MEMORY[0x1E69DCAB8];
  v16 = [(CNMeCardSharingSettingsHeaderViewController *)self toggleAnimationButtonImageName];
  v17 = [v15 systemImageNamed:v16];
  [v9 setImage:v17];

  objc_initWeak(&location, self);
  v18 = MEMORY[0x1E69DC628];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __58__CNMeCardSharingSettingsHeaderViewController_viewDidLoad__block_invoke;
  v32[3] = &unk_1E74E4BD0;
  objc_copyWeak(&v33, &location);
  v19 = [v18 actionWithHandler:v32];
  v20 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v9 primaryAction:v19];
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
  v23 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v23 addSubview:self->_toggleAnimationButton];

  v24 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  [v24 setButtonSize:1];
  [v24 setCornerStyle:4];
  [v24 setContentInsets:{8.0, 10.0, 8.0, 10.0}];
  v25 = [MEMORY[0x1E69DC888] labelColor];
  [v24 setBaseForegroundColor:v25];

  v26 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  [v24 setBaseBackgroundColor:v26];

  [v24 setTitleTextAttributesTransformer:&__block_literal_global_29115];
  v27 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v24 primaryAction:0];
  labelButton = self->_labelButton;
  self->_labelButton = v27;

  [(CNMeCardSharingSettingsHeaderViewController *)self updateButtonLabel];
  [(UIButton *)self->_labelButton addTarget:self action:sel_labelButtonTapped_ forControlEvents:64];
  v29 = [(CNMeCardSharingSettingsHeaderViewController *)self view];
  [v29 addSubview:self->_labelButton];

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

- (CNMeCardSharingSettingsHeaderViewController)initWithAvatarProvider:(id)a3 mode:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CNMeCardSharingSettingsHeaderViewController;
  v8 = [(CNMeCardSharingSettingsHeaderViewController *)&v12 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_avatarProvider, a3);
    v9->_mode = a4;
    v10 = v9;
  }

  return v9;
}

+ (double)avatarEdgeLengthForTraitCollection:(id)a3
{
  v3 = [a3 verticalSizeClass];
  result = 168.0;
  if (v3 == 1)
  {
    return 120.0;
  }

  return result;
}

@end