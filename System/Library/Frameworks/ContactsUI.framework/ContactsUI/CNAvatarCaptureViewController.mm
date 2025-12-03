@interface CNAvatarCaptureViewController
- (BOOL)shouldUseLandscapeLayout;
- (CNAvatarCaptureViewController)initWithAvatarRecord:(id)record;
- (CNAvatarCaptureViewControllerDelegate)delegate;
- (void)addPromptLabel;
- (void)didTapCaptureButton:(id)button;
- (void)dismissCaptureController;
- (void)layoutFooterView;
- (void)loadAvatarView;
- (void)setupFooterView;
- (void)updateAvtViewAspectRatioConstraint;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CNAvatarCaptureViewController

- (CNAvatarCaptureViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didTapCaptureButton:(id)button
{
  delegate = [(CNAvatarCaptureViewController *)self delegate];

  if (delegate)
  {
    avtView = [(CNAvatarCaptureViewController *)self avtView];
    view = [(CNAvatarCaptureViewController *)self view];
    [view bounds];
    v10 = [avtView snapshotWithSize:{v7, v8}];

    delegate2 = [(CNAvatarCaptureViewController *)self delegate];
    [delegate2 avatarCaptureController:self didCaptureImage:v10];
  }
}

- (void)dismissCaptureController
{
  presentingViewController = [(CNAvatarCaptureViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CNAvatarCaptureViewController;
  coordinatorCopy = coordinator;
  [(CNAvatarCaptureViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__CNAvatarCaptureViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E74E3CC8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
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
  view = [(CNAvatarCaptureViewController *)self view];
  [view addSubview:self->_captureFooter];

  [(CNCaptureButtonView *)self->_captureButtonView setAutoresizingMask:10];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(CNCaptureButtonView *)self->_captureButtonView setBackgroundColor:clearColor];

  button = [(CNCaptureButtonView *)self->_captureButtonView button];
  [button addTarget:self action:sel_didTapCaptureButton_ forEvents:64];

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
  titleLabel = [(UIButton *)self->_cancelButton titleLabel];
  [titleLabel setFont:v25];

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
    interfaceOrientation = [(CNAvatarCaptureViewController *)self interfaceOrientation];
    view = [(CNAvatarCaptureViewController *)self view];
    [view bounds];
    if (interfaceOrientation == 4)
    {
      v7 = v6;
      captureFooter = [(CNAvatarCaptureViewController *)self captureFooter];
      [captureFooter setFrame:{0.0, 0.0, 190.0, v7}];

      view2 = [(CNAvatarCaptureViewController *)self view];
      [view2 bounds];
      v11 = v10;
      captureButtonView = [(CNAvatarCaptureViewController *)self captureButtonView];
      [captureButtonView setFrame:{0.0, 0.0, 190.0, v11}];

      view3 = [(CNAvatarCaptureViewController *)self view];
      [view3 bounds];
      v15 = v14 + -190.0;
      view4 = [(CNAvatarCaptureViewController *)self view];
      [view4 bounds];
      v18 = v17 * 0.5;
      promptLabel = [(CNAvatarCaptureViewController *)self promptLabel];
      [promptLabel setCenter:{v15, v18}];

      CGAffineTransformMakeRotation(&v59, 1.57079633);
      promptLabel2 = [(CNAvatarCaptureViewController *)self promptLabel];
      view11 = promptLabel2;
      v56 = *&v59.a;
      v57 = *&v59.c;
      v22 = *&v59.tx;
    }

    else
    {
      v42 = v5 + -190.0;
      view5 = [(CNAvatarCaptureViewController *)self view];
      [view5 bounds];
      v45 = v44;
      captureFooter2 = [(CNAvatarCaptureViewController *)self captureFooter];
      [captureFooter2 setFrame:{v42, 0.0, 190.0, v45}];

      view6 = [(CNAvatarCaptureViewController *)self view];
      [view6 bounds];
      v49 = v48;
      captureButtonView2 = [(CNAvatarCaptureViewController *)self captureButtonView];
      [captureButtonView2 setFrame:{0.0, 0.0, 190.0, v49}];

      view7 = [(CNAvatarCaptureViewController *)self view];
      [view7 bounds];
      v53 = v52 * 0.5;
      promptLabel3 = [(CNAvatarCaptureViewController *)self promptLabel];
      [promptLabel3 setCenter:{190.0, v53}];

      CGAffineTransformMakeRotation(&v55, -1.57079633);
      promptLabel2 = [(CNAvatarCaptureViewController *)self promptLabel];
      view11 = promptLabel2;
      v56 = *&v55.a;
      v57 = *&v55.c;
      v22 = *&v55.tx;
    }

    v58 = v22;
    [promptLabel2 setTransform:&v56];
  }

  else
  {
    view8 = [(CNAvatarCaptureViewController *)self view];
    [view8 bounds];
    v25 = v24 + -190.0;
    view9 = [(CNAvatarCaptureViewController *)self view];
    [view9 bounds];
    v28 = v27;
    captureFooter3 = [(CNAvatarCaptureViewController *)self captureFooter];
    [captureFooter3 setFrame:{0.0, v25, v28, 190.0}];

    view10 = [(CNAvatarCaptureViewController *)self view];
    [view10 bounds];
    v32 = v31;
    captureButtonView3 = [(CNAvatarCaptureViewController *)self captureButtonView];
    [captureButtonView3 setFrame:{0.0, 0.0, v32, 190.0}];

    promptLabel4 = [(CNAvatarCaptureViewController *)self promptLabel];
    v35 = *(MEMORY[0x1E695EFD0] + 16);
    v56 = *MEMORY[0x1E695EFD0];
    v57 = v35;
    v58 = *(MEMORY[0x1E695EFD0] + 32);
    [promptLabel4 setTransform:&v56];

    promptLabel5 = [(CNAvatarCaptureViewController *)self promptLabel];
    [promptLabel5 sizeToFit];

    view11 = [(CNAvatarCaptureViewController *)self view];
    [view11 bounds];
    v37 = CGRectGetWidth(v60) + -40.0;
    promptLabel6 = [(CNAvatarCaptureViewController *)self promptLabel];
    [promptLabel6 frame];
    v40 = v39;
    promptLabel7 = [(CNAvatarCaptureViewController *)self promptLabel];
    [promptLabel7 setFrame:{20.0, 64.0, v37, v40}];
  }
}

- (BOOL)shouldUseLandscapeLayout
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && ([(CNAvatarCaptureViewController *)self interfaceOrientation]- 3) < 0xFFFFFFFFFFFFFFFELL;
}

- (void)updateAvtViewAspectRatioConstraint
{
  avtViewHeightConstraint = [(CNAvatarCaptureViewController *)self avtViewHeightConstraint];

  if (avtViewHeightConstraint)
  {
    view = [(CNAvatarCaptureViewController *)self view];
    avtViewHeightConstraint2 = [(CNAvatarCaptureViewController *)self avtViewHeightConstraint];
    [view removeConstraint:avtViewHeightConstraint2];
  }

  view2 = [(CNAvatarCaptureViewController *)self view];
  [view2 bounds];
  v8 = v7;
  view3 = [(CNAvatarCaptureViewController *)self view];
  [view3 bounds];
  v11 = v8 / v10;

  avtView = [(CNAvatarCaptureViewController *)self avtView];
  heightAnchor = [avtView heightAnchor];
  avtView2 = [(CNAvatarCaptureViewController *)self avtView];
  widthAnchor = [avtView2 widthAnchor];
  v16 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:v11];
  [(CNAvatarCaptureViewController *)self setAvtViewHeightConstraint:v16];

  view4 = [(CNAvatarCaptureViewController *)self view];
  avtViewHeightConstraint3 = [(CNAvatarCaptureViewController *)self avtViewHeightConstraint];
  [view4 addConstraint:avtViewHeightConstraint3];
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = CNAvatarCaptureViewController;
  [(CNAvatarCaptureViewController *)&v23 viewDidLayoutSubviews];
  cancelButton = [(CNAvatarCaptureViewController *)self cancelButton];
  [cancelButton frame];
  v5 = v4;
  v7 = v6;

  cancelButton2 = [(CNAvatarCaptureViewController *)self cancelButton];
  titleLabel = [cancelButton2 titleLabel];
  cancelButton3 = [(CNAvatarCaptureViewController *)self cancelButton];
  [cancelButton3 bounds];
  [titleLabel textRectForBounds:1 limitedToNumberOfLines:?];
  v12 = v11;

  v13 = 13.0;
  if ([(CNAvatarCaptureViewController *)self shouldUseLandscapeLayout])
  {
    view = [(CNAvatarCaptureViewController *)self view];
    [view safeAreaInsets];
    v13 = v15 + 13.0;
  }

  captureFooter = [(CNAvatarCaptureViewController *)self captureFooter];
  [captureFooter bounds];
  v18 = v17 - v12;
  view2 = [(CNAvatarCaptureViewController *)self view];
  [view2 safeAreaInsets];
  v21 = v18 - v20 + -32.0;

  cancelButton4 = [(CNAvatarCaptureViewController *)self cancelButton];
  [cancelButton4 setFrame:{v13, v21, v5, v7}];
}

- (void)addPromptLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(CNAvatarCaptureViewController *)self setPromptLabel:v4];

  promptLabel = [(CNAvatarCaptureViewController *)self promptLabel];
  [promptLabel setTextAlignment:1];

  v6 = +[CNUIColorRepository photoPickerCapturePromptLabelTextColor];
  promptLabel2 = [(CNAvatarCaptureViewController *)self promptLabel];
  [promptLabel2 setTextColor:v6];

  v8 = MEMORY[0x1E69DB878];
  v9 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v10 = [v8 fontWithDescriptor:v9 size:18.0];
  promptLabel3 = [(CNAvatarCaptureViewController *)self promptLabel];
  [promptLabel3 setFont:v10];

  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"AVATAR_POSE_PROMPT" value:&stru_1F0CE7398 table:@"Localized"];
  promptLabel4 = [(CNAvatarCaptureViewController *)self promptLabel];
  [promptLabel4 setText:v13];

  promptLabel5 = [(CNAvatarCaptureViewController *)self promptLabel];
  [promptLabel5 sizeToFit];

  view = [(CNAvatarCaptureViewController *)self view];
  [view bounds];
  v17 = CGRectGetWidth(v26) + -40.0;
  promptLabel6 = [(CNAvatarCaptureViewController *)self promptLabel];
  [promptLabel6 frame];
  v20 = v19;
  promptLabel7 = [(CNAvatarCaptureViewController *)self promptLabel];
  [promptLabel7 setFrame:{20.0, 64.0, v17, v20}];

  promptLabel8 = [(CNAvatarCaptureViewController *)self promptLabel];
  [promptLabel8 setAutoresizingMask:34];

  view2 = [(CNAvatarCaptureViewController *)self view];
  promptLabel9 = [(CNAvatarCaptureViewController *)self promptLabel];
  [view2 addSubview:promptLabel9];
}

- (void)loadAvatarView
{
  v48[3] = *MEMORY[0x1E69E9840];
  view = [(CNAvatarCaptureViewController *)self view];
  [view frame];
  v5 = v4;
  view2 = [(CNAvatarCaptureViewController *)self view];
  [view2 frame];
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

  avtView = [(CNAvatarCaptureViewController *)self avtView];
  [avtView setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(CNAvatarCaptureViewController *)self view];
  backgroundColor = [view3 backgroundColor];
  avtView2 = [(CNAvatarCaptureViewController *)self avtView];
  [avtView2 setBackgroundColor:backgroundColor];

  view4 = [(CNAvatarCaptureViewController *)self view];
  [view4 addSubview:self->_avtView];

  view5 = [(CNAvatarCaptureViewController *)self view];
  avtView3 = [(CNAvatarCaptureViewController *)self avtView];
  leftAnchor = [avtView3 leftAnchor];
  view6 = [(CNAvatarCaptureViewController *)self view];
  leftAnchor2 = [view6 leftAnchor];
  v34 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v48[0] = v34;
  avtView4 = [(CNAvatarCaptureViewController *)self avtView];
  rightAnchor = [avtView4 rightAnchor];
  view7 = [(CNAvatarCaptureViewController *)self view];
  rightAnchor2 = [view7 rightAnchor];
  v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v48[1] = v19;
  avtView5 = [(CNAvatarCaptureViewController *)self avtView];
  centerYAnchor = [avtView5 centerYAnchor];
  view8 = [(CNAvatarCaptureViewController *)self view];
  centerYAnchor2 = [view8 centerYAnchor];
  v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v48[2] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
  [view5 addConstraints:v25];

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
  avatarRecord = [(CNAvatarCaptureViewController *)self avatarRecord];
  v29 = [v26 avatarForRecord:avatarRecord];
  avtView6 = [(CNAvatarCaptureViewController *)self avtView];
  [avtView6 setAvatar:v29];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CNAvatarCaptureViewController;
  [(CNAvatarCaptureViewController *)&v5 viewWillDisappear:disappear];
  avtView = [(CNAvatarCaptureViewController *)self avtView];
  [avtView setEnableFaceTracking:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CNAvatarCaptureViewController;
  [(CNAvatarCaptureViewController *)&v5 viewDidAppear:appear];
  avtView = [(CNAvatarCaptureViewController *)self avtView];
  [avtView updateInterfaceOrientation];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CNAvatarCaptureViewController;
  [(CNAvatarCaptureViewController *)&v7 viewWillAppear:appear];
  avtView = [(CNAvatarCaptureViewController *)self avtView];
  enableFaceTracking = [avtView enableFaceTracking];

  if ((enableFaceTracking & 1) == 0)
  {
    avtView2 = [(CNAvatarCaptureViewController *)self avtView];
    [avtView2 setEnableFaceTracking:1];
  }

  [(CNAvatarCaptureViewController *)self updateAvtViewAspectRatioConstraint];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CNAvatarCaptureViewController;
  [(CNAvatarCaptureViewController *)&v11 viewDidLoad];
  v3 = +[CNUIColorRepository photoPickerCaptureBackgroundColor];
  view = [(CNAvatarCaptureViewController *)self view];
  [view setTintColor:v3];

  v5 = +[CNUIColorRepository photoPickerCaptureBackgroundColor];
  view2 = [(CNAvatarCaptureViewController *)self view];
  [view2 setBackgroundColor:v5];

  navigationItem = [(CNAvatarCaptureViewController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];

  navigationController = [(CNAvatarCaptureViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  isTranslucent = [navigationBar isTranslucent];

  if ((isTranslucent & 1) == 0)
  {
    [(CNAvatarCaptureViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  }

  [(CNAvatarCaptureViewController *)self loadAvatarView];
  [(CNAvatarCaptureViewController *)self addPromptLabel];
  [(CNAvatarCaptureViewController *)self setupFooterView];
  [(CNAvatarCaptureViewController *)self layoutFooterView];
}

- (CNAvatarCaptureViewController)initWithAvatarRecord:(id)record
{
  recordCopy = record;
  v10.receiver = self;
  v10.super_class = CNAvatarCaptureViewController;
  v6 = [(CNAvatarCaptureViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avatarRecord, record);
    v8 = v7;
  }

  return v7;
}

@end