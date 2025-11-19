@interface CNAvatarCaptureViewController
- (BOOL)shouldUseLandscapeLayout;
- (CNAvatarCaptureViewController)initWithAvatarRecord:(id)a3;
- (CNAvatarCaptureViewControllerDelegate)delegate;
- (void)addPromptLabel;
- (void)didTapCaptureButton:(id)a3;
- (void)dismissCaptureController;
- (void)layoutFooterView;
- (void)loadAvatarView;
- (void)setupFooterView;
- (void)updateAvtViewAspectRatioConstraint;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNAvatarCaptureViewController

- (CNAvatarCaptureViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapCaptureButton:(id)a3
{
  v4 = [(CNAvatarCaptureViewController *)self delegate];

  if (v4)
  {
    v5 = [(CNAvatarCaptureViewController *)self avtView];
    v6 = [(CNAvatarCaptureViewController *)self view];
    [v6 bounds];
    v10 = [v5 snapshotWithSize:{v7, v8}];

    v9 = [(CNAvatarCaptureViewController *)self delegate];
    [v9 avatarCaptureController:self didCaptureImage:v10];
  }
}

- (void)dismissCaptureController
{
  v2 = [(CNAvatarCaptureViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CNAvatarCaptureViewController;
  v7 = a4;
  [(CNAvatarCaptureViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__CNAvatarCaptureViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E74E3CC8;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

uint64_t __84__CNAvatarCaptureViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __84__CNAvatarCaptureViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v2[3] = &unk_1E74E6A88;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

uint64_t __84__CNAvatarCaptureViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) updateAvtViewAspectRatioConstraint];
  v2 = [*(a1 + 32) avtView];
  [v2 updateInterfaceOrientation];

  v3 = *(a1 + 32);

  return [v3 layoutFooterView];
}

- (void)setupFooterView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  captureFooter = self->_captureFooter;
  self->_captureFooter = v8;

  v10 = [[CNCaptureButtonView alloc] initWithFrame:v4, v5, v6, v7];
  captureButtonView = self->_captureButtonView;
  self->_captureButtonView = v10;

  v12 = +[CNUIColorRepository photoPickerCropOverlayColor];
  [(UIView *)self->_captureFooter setBackgroundColor:v12];

  [(UIView *)self->_captureFooter setAutoresizingMask:10];
  v13 = [(CNAvatarCaptureViewController *)self view];
  [v13 addSubview:self->_captureFooter];

  [(CNCaptureButtonView *)self->_captureButtonView setAutoresizingMask:10];
  v14 = [MEMORY[0x1E69DC888] clearColor];
  [(CNCaptureButtonView *)self->_captureButtonView setBackgroundColor:v14];

  v15 = [(CNCaptureButtonView *)self->_captureButtonView button];
  [v15 addTarget:self action:sel_didTapCaptureButton_ forEvents:64];

  [(UIView *)self->_captureFooter addSubview:self->_captureButtonView];
  v16 = [MEMORY[0x1E69DC738] buttonWithType:1];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v16;

  v18 = self->_cancelButton;
  v19 = CNContactsUIBundle();
  v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  [(UIButton *)v18 setTitle:v20 forState:0];

  v21 = self->_cancelButton;
  v22 = +[CNUIColorRepository photoPickerCaptureCancelButtonTextColor];
  [(UIButton *)v21 setTitleColor:v22 forState:0];

  v23 = MEMORY[0x1E69DB878];
  v24 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v25 = [v23 fontWithDescriptor:v24 size:18.0];
  v26 = [(UIButton *)self->_cancelButton titleLabel];
  [v26 setFont:v25];

  [(UIButton *)self->_cancelButton sizeToFit];
  [(UIButton *)self->_cancelButton addTarget:self action:sel_didTapCancelButton_ forEvents:64];
  v27 = self->_captureFooter;
  v28 = self->_cancelButton;

  [(UIView *)v27 addSubview:v28];
}

- (void)layoutFooterView
{
  if ([(CNAvatarCaptureViewController *)self shouldUseLandscapeLayout])
  {
    v3 = [(CNAvatarCaptureViewController *)self interfaceOrientation];
    v4 = [(CNAvatarCaptureViewController *)self view];
    [v4 bounds];
    if (v3 == 4)
    {
      v7 = v6;
      v8 = [(CNAvatarCaptureViewController *)self captureFooter];
      [v8 setFrame:{0.0, 0.0, 190.0, v7}];

      v9 = [(CNAvatarCaptureViewController *)self view];
      [v9 bounds];
      v11 = v10;
      v12 = [(CNAvatarCaptureViewController *)self captureButtonView];
      [v12 setFrame:{0.0, 0.0, 190.0, v11}];

      v13 = [(CNAvatarCaptureViewController *)self view];
      [v13 bounds];
      v15 = v14 + -190.0;
      v16 = [(CNAvatarCaptureViewController *)self view];
      [v16 bounds];
      v18 = v17 * 0.5;
      v19 = [(CNAvatarCaptureViewController *)self promptLabel];
      [v19 setCenter:{v15, v18}];

      CGAffineTransformMakeRotation(&v59, 1.57079633);
      v20 = [(CNAvatarCaptureViewController *)self promptLabel];
      v21 = v20;
      v56 = *&v59.a;
      v57 = *&v59.c;
      v22 = *&v59.tx;
    }

    else
    {
      v42 = v5 + -190.0;
      v43 = [(CNAvatarCaptureViewController *)self view];
      [v43 bounds];
      v45 = v44;
      v46 = [(CNAvatarCaptureViewController *)self captureFooter];
      [v46 setFrame:{v42, 0.0, 190.0, v45}];

      v47 = [(CNAvatarCaptureViewController *)self view];
      [v47 bounds];
      v49 = v48;
      v50 = [(CNAvatarCaptureViewController *)self captureButtonView];
      [v50 setFrame:{0.0, 0.0, 190.0, v49}];

      v51 = [(CNAvatarCaptureViewController *)self view];
      [v51 bounds];
      v53 = v52 * 0.5;
      v54 = [(CNAvatarCaptureViewController *)self promptLabel];
      [v54 setCenter:{190.0, v53}];

      CGAffineTransformMakeRotation(&v55, -1.57079633);
      v20 = [(CNAvatarCaptureViewController *)self promptLabel];
      v21 = v20;
      v56 = *&v55.a;
      v57 = *&v55.c;
      v22 = *&v55.tx;
    }

    v58 = v22;
    [v20 setTransform:&v56];
  }

  else
  {
    v23 = [(CNAvatarCaptureViewController *)self view];
    [v23 bounds];
    v25 = v24 + -190.0;
    v26 = [(CNAvatarCaptureViewController *)self view];
    [v26 bounds];
    v28 = v27;
    v29 = [(CNAvatarCaptureViewController *)self captureFooter];
    [v29 setFrame:{0.0, v25, v28, 190.0}];

    v30 = [(CNAvatarCaptureViewController *)self view];
    [v30 bounds];
    v32 = v31;
    v33 = [(CNAvatarCaptureViewController *)self captureButtonView];
    [v33 setFrame:{0.0, 0.0, v32, 190.0}];

    v34 = [(CNAvatarCaptureViewController *)self promptLabel];
    v35 = *(MEMORY[0x1E695EFD0] + 16);
    v56 = *MEMORY[0x1E695EFD0];
    v57 = v35;
    v58 = *(MEMORY[0x1E695EFD0] + 32);
    [v34 setTransform:&v56];

    v36 = [(CNAvatarCaptureViewController *)self promptLabel];
    [v36 sizeToFit];

    v21 = [(CNAvatarCaptureViewController *)self view];
    [v21 bounds];
    v37 = CGRectGetWidth(v60) + -40.0;
    v38 = [(CNAvatarCaptureViewController *)self promptLabel];
    [v38 frame];
    v40 = v39;
    v41 = [(CNAvatarCaptureViewController *)self promptLabel];
    [v41 setFrame:{20.0, 64.0, v37, v40}];
  }
}

- (BOOL)shouldUseLandscapeLayout
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  return (v4 & 0xFFFFFFFFFFFFFFFBLL) != 1 && ([(CNAvatarCaptureViewController *)self interfaceOrientation]- 3) < 0xFFFFFFFFFFFFFFFELL;
}

- (void)updateAvtViewAspectRatioConstraint
{
  v3 = [(CNAvatarCaptureViewController *)self avtViewHeightConstraint];

  if (v3)
  {
    v4 = [(CNAvatarCaptureViewController *)self view];
    v5 = [(CNAvatarCaptureViewController *)self avtViewHeightConstraint];
    [v4 removeConstraint:v5];
  }

  v6 = [(CNAvatarCaptureViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v9 = [(CNAvatarCaptureViewController *)self view];
  [v9 bounds];
  v11 = v8 / v10;

  v12 = [(CNAvatarCaptureViewController *)self avtView];
  v13 = [v12 heightAnchor];
  v14 = [(CNAvatarCaptureViewController *)self avtView];
  v15 = [v14 widthAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 multiplier:v11];
  [(CNAvatarCaptureViewController *)self setAvtViewHeightConstraint:v16];

  v18 = [(CNAvatarCaptureViewController *)self view];
  v17 = [(CNAvatarCaptureViewController *)self avtViewHeightConstraint];
  [v18 addConstraint:v17];
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = CNAvatarCaptureViewController;
  [(CNAvatarCaptureViewController *)&v23 viewDidLayoutSubviews];
  v3 = [(CNAvatarCaptureViewController *)self cancelButton];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = [(CNAvatarCaptureViewController *)self cancelButton];
  v9 = [v8 titleLabel];
  v10 = [(CNAvatarCaptureViewController *)self cancelButton];
  [v10 bounds];
  [v9 textRectForBounds:1 limitedToNumberOfLines:?];
  v12 = v11;

  v13 = 13.0;
  if ([(CNAvatarCaptureViewController *)self shouldUseLandscapeLayout])
  {
    v14 = [(CNAvatarCaptureViewController *)self view];
    [v14 safeAreaInsets];
    v13 = v15 + 13.0;
  }

  v16 = [(CNAvatarCaptureViewController *)self captureFooter];
  [v16 bounds];
  v18 = v17 - v12;
  v19 = [(CNAvatarCaptureViewController *)self view];
  [v19 safeAreaInsets];
  v21 = v18 - v20 + -32.0;

  v22 = [(CNAvatarCaptureViewController *)self cancelButton];
  [v22 setFrame:{v13, v21, v5, v7}];
}

- (void)addPromptLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(CNAvatarCaptureViewController *)self setPromptLabel:v4];

  v5 = [(CNAvatarCaptureViewController *)self promptLabel];
  [v5 setTextAlignment:1];

  v6 = +[CNUIColorRepository photoPickerCapturePromptLabelTextColor];
  v7 = [(CNAvatarCaptureViewController *)self promptLabel];
  [v7 setTextColor:v6];

  v8 = MEMORY[0x1E69DB878];
  v9 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v10 = [v8 fontWithDescriptor:v9 size:18.0];
  v11 = [(CNAvatarCaptureViewController *)self promptLabel];
  [v11 setFont:v10];

  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"AVATAR_POSE_PROMPT" value:&stru_1F0CE7398 table:@"Localized"];
  v14 = [(CNAvatarCaptureViewController *)self promptLabel];
  [v14 setText:v13];

  v15 = [(CNAvatarCaptureViewController *)self promptLabel];
  [v15 sizeToFit];

  v16 = [(CNAvatarCaptureViewController *)self view];
  [v16 bounds];
  v17 = CGRectGetWidth(v26) + -40.0;
  v18 = [(CNAvatarCaptureViewController *)self promptLabel];
  [v18 frame];
  v20 = v19;
  v21 = [(CNAvatarCaptureViewController *)self promptLabel];
  [v21 setFrame:{20.0, 64.0, v17, v20}];

  v22 = [(CNAvatarCaptureViewController *)self promptLabel];
  [v22 setAutoresizingMask:34];

  v24 = [(CNAvatarCaptureViewController *)self view];
  v23 = [(CNAvatarCaptureViewController *)self promptLabel];
  [v24 addSubview:v23];
}

- (void)loadAvatarView
{
  v48[3] = *MEMORY[0x1E69E9840];
  v3 = [(CNAvatarCaptureViewController *)self view];
  [v3 frame];
  v5 = v4;
  v6 = [(CNAvatarCaptureViewController *)self view];
  [v6 frame];
  v8 = v7;

  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v9 = getAVTViewClass_softClass;
  v47 = getAVTViewClass_softClass;
  if (!getAVTViewClass_softClass)
  {
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __getAVTViewClass_block_invoke;
    v42 = &unk_1E74E7518;
    v43 = &v44;
    __getAVTViewClass_block_invoke(&v39);
    v9 = v45[3];
  }

  v10 = v9;
  _Block_object_dispose(&v44, 8);
  v11 = [[v9 alloc] initWithFrame:{0.0, 0.0, v5, v8}];
  [(CNAvatarCaptureViewController *)self setAvtView:v11];

  v12 = [(CNAvatarCaptureViewController *)self avtView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(CNAvatarCaptureViewController *)self view];
  v14 = [v13 backgroundColor];
  v15 = [(CNAvatarCaptureViewController *)self avtView];
  [v15 setBackgroundColor:v14];

  v16 = [(CNAvatarCaptureViewController *)self view];
  [v16 addSubview:self->_avtView];

  v31 = [(CNAvatarCaptureViewController *)self view];
  v38 = [(CNAvatarCaptureViewController *)self avtView];
  v36 = [v38 leftAnchor];
  v37 = [(CNAvatarCaptureViewController *)self view];
  v35 = [v37 leftAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v48[0] = v34;
  v33 = [(CNAvatarCaptureViewController *)self avtView];
  v32 = [v33 rightAnchor];
  v17 = [(CNAvatarCaptureViewController *)self view];
  v18 = [v17 rightAnchor];
  v19 = [v32 constraintEqualToAnchor:v18];
  v48[1] = v19;
  v20 = [(CNAvatarCaptureViewController *)self avtView];
  v21 = [v20 centerYAnchor];
  v22 = [(CNAvatarCaptureViewController *)self view];
  v23 = [v22 centerYAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v48[2] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
  [v31 addConstraints:v25];

  [(CNAvatarCaptureViewController *)self updateAvtViewAspectRatioConstraint];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2050000000;
  v26 = getAVTAvatarRecordRenderingClass_softClass;
  v47 = getAVTAvatarRecordRenderingClass_softClass;
  if (!getAVTAvatarRecordRenderingClass_softClass)
  {
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __getAVTAvatarRecordRenderingClass_block_invoke;
    v42 = &unk_1E74E7518;
    v43 = &v44;
    __getAVTAvatarRecordRenderingClass_block_invoke(&v39);
    v26 = v45[3];
  }

  v27 = v26;
  _Block_object_dispose(&v44, 8);
  v28 = [(CNAvatarCaptureViewController *)self avatarRecord];
  v29 = [v26 avatarForRecord:v28];
  v30 = [(CNAvatarCaptureViewController *)self avtView];
  [v30 setAvatar:v29];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNAvatarCaptureViewController;
  [(CNAvatarCaptureViewController *)&v5 viewWillDisappear:a3];
  v4 = [(CNAvatarCaptureViewController *)self avtView];
  [v4 setEnableFaceTracking:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNAvatarCaptureViewController;
  [(CNAvatarCaptureViewController *)&v5 viewDidAppear:a3];
  v4 = [(CNAvatarCaptureViewController *)self avtView];
  [v4 updateInterfaceOrientation];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CNAvatarCaptureViewController;
  [(CNAvatarCaptureViewController *)&v7 viewWillAppear:a3];
  v4 = [(CNAvatarCaptureViewController *)self avtView];
  v5 = [v4 enableFaceTracking];

  if ((v5 & 1) == 0)
  {
    v6 = [(CNAvatarCaptureViewController *)self avtView];
    [v6 setEnableFaceTracking:1];
  }

  [(CNAvatarCaptureViewController *)self updateAvtViewAspectRatioConstraint];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CNAvatarCaptureViewController;
  [(CNAvatarCaptureViewController *)&v11 viewDidLoad];
  v3 = +[CNUIColorRepository photoPickerCaptureBackgroundColor];
  v4 = [(CNAvatarCaptureViewController *)self view];
  [v4 setTintColor:v3];

  v5 = +[CNUIColorRepository photoPickerCaptureBackgroundColor];
  v6 = [(CNAvatarCaptureViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [(CNAvatarCaptureViewController *)self navigationItem];
  [v7 _setBackgroundHidden:1];

  v8 = [(CNAvatarCaptureViewController *)self navigationController];
  v9 = [v8 navigationBar];
  v10 = [v9 isTranslucent];

  if ((v10 & 1) == 0)
  {
    [(CNAvatarCaptureViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  }

  [(CNAvatarCaptureViewController *)self loadAvatarView];
  [(CNAvatarCaptureViewController *)self addPromptLabel];
  [(CNAvatarCaptureViewController *)self setupFooterView];
  [(CNAvatarCaptureViewController *)self layoutFooterView];
}

- (CNAvatarCaptureViewController)initWithAvatarRecord:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNAvatarCaptureViewController;
  v6 = [(CNAvatarCaptureViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avatarRecord, a3);
    v8 = v7;
  }

  return v7;
}

@end