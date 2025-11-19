@interface AVTPoseSelectionViewController
+ (id)poseConfigurationsForTypes:(unint64_t)a3 avatarRecord:(id)a4;
- (AVTPoseSelectionViewController)initWithSelectedRecord:(id)a3 poseConfigurations:(id)a4;
- (AVTPoseSelectionViewController)initWithSelectedRecord:(id)a3 poseTypes:(unint64_t)a4;
- (AVTPoseSelectionViewControllerDelegate)delegate;
- (double)buttonEdgeLength;
- (double)buttonSymbolWeight;
- (double)captureButtonEdgeLength;
- (double)discardButtonEdgeLength;
- (double)discardButtonSymbolWeight;
- (id)keyCommands;
- (id)selectedPoseConfiguration;
- (void)animateButtonConfiguration:(id)a3;
- (void)clearHeaderMenu;
- (void)configureButtonsForCapture;
- (void)configureButtonsForReview;
- (void)createCaptureButtonIfNeeded;
- (void)createDiscardButtonIfNeeded;
- (void)createMenuButtonIfNeeded;
- (void)didFinishMenuPresentationWithCompletion:(id)a3;
- (void)didTapCancel:(id)a3;
- (void)didTapCaptureButton:(id)a3;
- (void)didTapDiscardButton:(id)a3;
- (void)notifyDelegateOfModeChange:(unint64_t)a3;
- (void)notifyDelegateOfSelectedPose;
- (void)poseSelectionGridController:(id)a3 didSelectConfiguration:(id)a4;
- (void)poseSelectionGridControllerDidSelectCameraItem:(id)a3;
- (void)prepareForMenuPresentation;
- (void)returnPressed:(id)a3;
- (void)setBackgroundColorOverride:(id)a3;
- (void)setHeaderMenu:(id)a3;
- (void)setMode:(unint64_t)a3;
- (void)setNewAvatarRecord:(id)a3;
- (void)updateForPoseConfiguration:(id)a3 animated:(BOOL)a4;
- (void)updateHeaderHeightConstraint;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AVTPoseSelectionViewController

+ (id)poseConfigurationsForTypes:(unint64_t)a3 avatarRecord:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  if (a3 != 1)
  {
    v8 = MEMORY[0x1E698E2F8];
    if (a3 != 2)
    {
      goto LABEL_5;
    }

    [v6 addObject:*MEMORY[0x1E698E2F8]];
  }

  v8 = MEMORY[0x1E698E2E0];
LABEL_5:
  [v6 addObject:*v8];
  if (AVTUIShowPrereleaseStickerPack_once())
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = AVTPrereleaseStickerPackForStickerPack();
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = v6;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * j);
        v22 = [v5 isEditable];
        v23 = MEMORY[0x1E698E2C0];
        if (v22)
        {
          v24 = [MEMORY[0x1E698E2C0] stickerConfigurationsForMemojiInStickerPack:v21];
          [v7 addObjectsFromArray:v24];
        }

        else
        {
          v24 = [v5 identifier];
          v25 = [v23 stickerConfigurationsForAnimojiNamed:v24 inStickerPack:v21];
          [v7 addObjectsFromArray:v25];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

  v26 = [v7 copy];

  return v26;
}

- (AVTPoseSelectionViewController)initWithSelectedRecord:(id)a3 poseTypes:(unint64_t)a4
{
  v6 = a3;
  v7 = [objc_opt_class() poseConfigurationsForTypes:a4 avatarRecord:v6];
  v8 = [(AVTPoseSelectionViewController *)self initWithSelectedRecord:v6 poseConfigurations:v7];

  return v8;
}

- (AVTPoseSelectionViewController)initWithSelectedRecord:(id)a3 poseConfigurations:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = AVTPoseSelectionViewController;
  v9 = [(AVTPoseSelectionViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_avatarRecord, a3);
    objc_storeStrong(&v10->_stickerConfigurations, a4);
    headerMenu = v10->_headerMenu;
    v10->_headerMenu = 0;
  }

  return v10;
}

- (void)viewDidLoad
{
  v120[12] = *MEMORY[0x1E69E9840];
  v119.receiver = self;
  v119.super_class = AVTPoseSelectionViewController;
  [(AVTPoseSelectionViewController *)&v119 viewDidLoad];
  v3 = [(AVTPoseSelectionViewController *)self navigationItem];
  [v3 _setBackgroundHidden:1];

  v4 = [(AVTPoseSelectionViewController *)self navigationController];
  v5 = [v4 navigationBar];
  v6 = [v5 isTranslucent];

  if ((v6 & 1) == 0)
  {
    [(AVTPoseSelectionViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  }

  v7 = [(AVTPoseSelectionViewController *)self navigationItem];
  [v7 setLargeTitleDisplayMode:2];

  v8 = [AVTAnimojiPoseSelectionHeaderViewController alloc];
  v9 = [(AVTPoseSelectionViewController *)self avatarRecord];
  v10 = [(AVTAnimojiPoseSelectionHeaderViewController *)v8 initWithRecord:v9];
  headerViewController = self->_headerViewController;
  self->_headerViewController = v10;

  v12 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(AVTPoseSelectionViewController *)self addChildViewController:self->_headerViewController];
  v13 = [(AVTPoseSelectionViewController *)self view];
  v14 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  [v13 addSubview:v14];

  [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController didMoveToParentViewController:self];
  v15 = [(AVTPoseSelectionViewController *)self allowsCameraCapture];
  v16 = [AVTPoseSelectionGridViewController alloc];
  v17 = [(AVTPoseSelectionViewController *)self avatarRecord];
  v18 = [(AVTPoseSelectionViewController *)self stickerConfigurations];
  v75 = v15;
  v19 = [(AVTPoseSelectionGridViewController *)v16 initWithAvatarRecord:v17 poseConfigurations:v18 allowsCameraCapture:v15];
  gridViewController = self->_gridViewController;
  self->_gridViewController = v19;

  [(AVTPoseSelectionGridViewController *)self->_gridViewController setDelegate:self];
  v21 = [(AVTPoseSelectionGridViewController *)self->_gridViewController view];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(AVTPoseSelectionViewController *)self addChildViewController:self->_gridViewController];
  v22 = [(AVTPoseSelectionViewController *)self view];
  v23 = [(AVTPoseSelectionGridViewController *)self->_gridViewController view];
  [v22 addSubview:v23];

  [(AVTPoseSelectionGridViewController *)self->_gridViewController didMoveToParentViewController:self];
  backgroundColorOverride = self->_backgroundColorOverride;
  if (backgroundColorOverride)
  {
    v25 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
    [v25 setBackgroundColor:backgroundColorOverride];

    [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController setCaptureBackgroundColor:self->_backgroundColorOverride];
    [(AVTPoseSelectionGridViewController *)self->_gridViewController setBackgroundColor:self->_backgroundColorOverride];
  }

  v26 = objc_alloc(MEMORY[0x1E69DD250]);
  v27 = [v26 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  headerDropShadowView = self->_headerDropShadowView;
  self->_headerDropShadowView = v27;

  v29 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.25];
  [(UIView *)self->_headerDropShadowView setBackgroundColor:v29];

  [(UIView *)self->_headerDropShadowView setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [(AVTPoseSelectionViewController *)self view];
  [v30 addSubview:self->_headerDropShadowView];

  v31 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v31 scale];
  v33 = v32;
  v34 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v34 nativeScale];
  v36 = v35;

  if (v33 != v36)
  {
    v37 = objc_alloc(MEMORY[0x1E69DD250]);
    v38 = objc_opt_class();
    v39 = [(AVTPoseSelectionViewController *)self view];
    [v39 bounds];
    [v38 borderMaskRectForContentRect:?];
    v40 = [v37 initWithFrame:?];
    borderMaskView = self->_borderMaskView;
    self->_borderMaskView = v40;

    v42 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)self->_borderMaskView setBackgroundColor:v42];

    v43 = self->_borderMaskView;
    v44 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
    [v44 setMaskView:v43];
  }

  v45 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_didTapCancel_];
  v46 = [(AVTPoseSelectionViewController *)self navigationItem];
  v118 = v45;
  [v46 setLeftBarButtonItem:v45];

  v47 = objc_alloc(MEMORY[0x1E69DC708]);
  v48 = AVTAvatarUIBundle();
  v49 = [v48 localizedStringForKey:@"NEXT" value:&stru_1F39618F0 table:@"Localized"];
  v50 = [v47 initWithTitle:v49 style:2 target:self action:sel_didTapDone_];
  doneButton = self->_doneButton;
  self->_doneButton = v50;

  v52 = self->_doneButton;
  v53 = [(AVTPoseSelectionViewController *)self navigationItem];
  [v53 setRightBarButtonItem:v52];

  v54 = [(AVTPoseSelectionViewController *)self view];
  v55 = [v54 window];
  v56 = [v55 screen];
  [v56 scale];
  v58 = v57;

  if (v58 <= 0.0)
  {
    v59 = 1.0;
  }

  else
  {
    v59 = 1.0 / v58;
  }

  [(AVTPoseSelectionViewController *)self updateHeaderHeightConstraint];
  v117 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  v115 = [v117 topAnchor];
  v116 = [(AVTPoseSelectionViewController *)self view];
  v114 = [v116 topAnchor];
  v113 = [v115 constraintEqualToAnchor:v114];
  v120[0] = v113;
  v112 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  v110 = [v112 leadingAnchor];
  v111 = [(AVTPoseSelectionViewController *)self view];
  v109 = [v111 leadingAnchor];
  v108 = [v110 constraintEqualToAnchor:v109];
  v120[1] = v108;
  v107 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  v105 = [v107 trailingAnchor];
  v106 = [(AVTPoseSelectionViewController *)self view];
  v104 = [v106 trailingAnchor];
  v103 = [v105 constraintEqualToAnchor:v104];
  v120[2] = v103;
  v102 = [(AVTPoseSelectionViewController *)self headerHeightConstraint];
  v120[3] = v102;
  v100 = [(UIView *)self->_headerDropShadowView leadingAnchor];
  v101 = [(AVTPoseSelectionViewController *)self view];
  v99 = [v101 leadingAnchor];
  v98 = [v100 constraintEqualToAnchor:v99];
  v120[4] = v98;
  v96 = [(UIView *)self->_headerDropShadowView trailingAnchor];
  v97 = [(AVTPoseSelectionViewController *)self view];
  v95 = [v97 trailingAnchor];
  v94 = [v96 constraintEqualToAnchor:v95];
  v120[5] = v94;
  v92 = [(UIView *)self->_headerDropShadowView topAnchor];
  v93 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  v91 = [v93 bottomAnchor];
  v90 = [v92 constraintEqualToAnchor:v91];
  v120[6] = v90;
  v89 = [(UIView *)self->_headerDropShadowView heightAnchor];
  v88 = [v89 constraintEqualToConstant:v59];
  v120[7] = v88;
  v87 = [(AVTPoseSelectionGridViewController *)self->_gridViewController view];
  v85 = [v87 topAnchor];
  v86 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  v84 = [v86 bottomAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v120[8] = v83;
  v82 = [(AVTPoseSelectionGridViewController *)self->_gridViewController view];
  v80 = [v82 leadingAnchor];
  v81 = [(AVTPoseSelectionViewController *)self view];
  v79 = [v81 leadingAnchor];
  v78 = [v80 constraintEqualToAnchor:v79];
  v120[9] = v78;
  v77 = [(AVTPoseSelectionGridViewController *)self->_gridViewController view];
  v76 = [v77 trailingAnchor];
  v60 = [(AVTPoseSelectionViewController *)self view];
  v61 = [v60 trailingAnchor];
  v62 = [v76 constraintEqualToAnchor:v61];
  v120[10] = v62;
  v63 = [(AVTPoseSelectionGridViewController *)self->_gridViewController view];
  v64 = [v63 bottomAnchor];
  v65 = [(AVTPoseSelectionViewController *)self view];
  v66 = [v65 bottomAnchor];
  v67 = [v64 constraintEqualToAnchor:v66];
  v120[11] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:12];

  [MEMORY[0x1E696ACD8] activateConstraints:v68];
  if ((AVTUIForceCameraDisclosures_once() & 1) != 0 || (IsGreenTea = AVTDeviceIsGreenTea(), !v75) || IsGreenTea)
  {
    [(AVTPoseSelectionViewController *)self setMode:0];
    v69 = [(AVTPoseSelectionViewController *)self stickerConfigurations];
    v70 = [v69 objectAtIndexedSubscript:0];
    v71 = [(AVTPoseSelectionViewController *)self gridViewController];
    [v71 setSelectedStickerConfiguration:v70];

    v72 = [(AVTPoseSelectionViewController *)self stickerConfigurations];
    v73 = [v72 objectAtIndexedSubscript:0];
    [(AVTPoseSelectionViewController *)self updateForPoseConfiguration:v73 animated:0];
  }

  else
  {
    [(AVTPoseSelectionViewController *)self setMode:1];
    [(UIBarButtonItem *)self->_doneButton setEnabled:0];
  }
}

- (void)setNewAvatarRecord:(id)a3
{
  v5 = a3;
  if (self->_avatarRecord != v5)
  {
    objc_storeStrong(&self->_avatarRecord, a3);
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__AVTPoseSelectionViewController_setNewAvatarRecord___block_invoke;
    v7[3] = &unk_1E7F3A990;
    objc_copyWeak(&v9, &location);
    v6 = v5;
    v8 = v6;
    [(AVTPoseSelectionViewController *)self didFinishMenuPresentationWithCompletion:v7];
    if (self->_menuButton)
    {
      [(AVTCircularButton *)self->_menuButton setHidden:[(AVTAvatarRecord *)v6 isEditable]^ 1];
    }

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __53__AVTPoseSelectionViewController_setNewAvatarRecord___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [objc_opt_class() poseConfigurationsForTypes:0 avatarRecord:*(a1 + 32)];
  [WeakRetained setStickerConfigurations:v2];

  v3 = [WeakRetained gridViewController];
  v4 = *(a1 + 32);
  v5 = [WeakRetained stickerConfigurations];
  [v3 updateWithAvatarRecord:v4 stickerConfigurations:v5];

  v6 = [WeakRetained mode];
  v7 = [WeakRetained headerViewController];
  [v7 updateForAvatarRecord:*(a1 + 32) discardPose:v6 == 0];

  v8 = WeakRetained;
  if (!v6)
  {
    v9 = [WeakRetained doneButton];
    [v9 setEnabled:0];

    if ([WeakRetained allowsCameraCapture] && (AVTDeviceIsGreenTea() & 1) == 0)
    {
      [WeakRetained setMode:1];
      v11 = [WeakRetained gridViewController];
      [v11 setSelectedStickerConfiguration:0];
    }

    else
    {
      v10 = [WeakRetained stickerConfigurations];
      v11 = [v10 firstObject];

      v12 = [WeakRetained headerViewController];
      [v12 updateForStickerConfiguration:v11 animated:0];

      v13 = [WeakRetained gridViewController];
      [v13 setSelectedStickerConfiguration:v11];

      [WeakRetained notifyDelegateOfSelectedPose];
    }

    v8 = WeakRetained;
  }
}

- (id)keyCommands
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_didTapCancel_];
  v4 = [v3 _nonRepeatableKeyCommand];
  [v2 addObject:v4];

  v5 = MEMORY[0x1E69DCBA0];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\r"];
  v7 = [v5 keyCommandWithInput:v6 modifierFlags:0 action:sel_returnPressed_];

  v8 = [v7 _nonRepeatableKeyCommand];
  [v2 addObject:v8];

  return v2;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = AVTPoseSelectionViewController;
  v7 = a4;
  [(AVTPoseSelectionViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__AVTPoseSelectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7F3A9E0;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)updateHeaderHeightConstraint
{
  v3 = [(AVTPoseSelectionViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v6 = [(AVTPoseSelectionViewController *)self view];
  [v6 bounds];
  v8 = v7;

  v9 = 336.0;
  if (v5 > v8)
  {
    v9 = 162.666667;
  }

  v10 = fmax(v9, 272.0);
  v11 = [(AVTPoseSelectionViewController *)self headerHeightConstraint];

  if (v11)
  {
    v14 = [(AVTPoseSelectionViewController *)self headerHeightConstraint];
    [v14 setConstant:v10];
  }

  else
  {
    v14 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
    v12 = [v14 heightAnchor];
    v13 = [v12 constraintEqualToConstant:v10];
    [(AVTPoseSelectionViewController *)self setHeaderHeightConstraint:v13];
  }
}

- (void)setBackgroundColorOverride:(id)a3
{
  objc_storeStrong(&self->_backgroundColorOverride, a3);
  v5 = a3;
  v6 = [(AVTPoseSelectionViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [(AVTPoseSelectionViewController *)self headerViewController];
  v8 = [v7 view];
  [v8 setBackgroundColor:v5];

  [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController setCaptureBackgroundColorOverride:self->_backgroundColorOverride];
  v9 = [(AVTPoseSelectionViewController *)self gridViewController];
  [v9 setBackgroundColor:v5];
}

- (void)setMode:(unint64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    if (a3 != 2)
    {
      if (a3 == 1)
      {
        objc_initWeak(&location, self);
        v7 = [(AVTPoseSelectionViewController *)self headerViewController];
        v8 = MEMORY[0x1E69E9820];
        v9 = 3221225472;
        v10 = __42__AVTPoseSelectionViewController_setMode___block_invoke;
        v11 = &unk_1E7F3AFD0;
        objc_copyWeak(&v12, &location);
        [v7 beginFaceTrackingWithCompletionBlock:&v8];

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }

      else if (!a3)
      {
        v5 = [(AVTPoseSelectionViewController *)self discardButton];
        [v5 setHidden:1];

        v6 = [(AVTPoseSelectionViewController *)self captureButton];
        [v6 setHidden:1];
LABEL_8:
      }

      [(AVTPoseSelectionViewController *)self notifyDelegateOfModeChange:a3, v8, v9, v10, v11];
      return;
    }

    [(AVTPoseSelectionViewController *)self createCaptureButtonIfNeeded];
    [(AVTPoseSelectionViewController *)self createDiscardButtonIfNeeded];
    [(AVTPoseSelectionViewController *)self configureButtonsForReview];
    v6 = [(AVTPoseSelectionViewController *)self headerViewController];
    [v6 pauseFaceTracking];
    goto LABEL_8;
  }
}

void __42__AVTPoseSelectionViewController_setMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained mode] == 1)
  {
    [WeakRetained createCaptureButtonIfNeeded];
    [WeakRetained configureButtonsForCapture];
  }
}

- (void)configureButtonsForReview
{
  CGAffineTransformMakeScale(&v6, 0.75, 0.75);
  v3 = [(AVTPoseSelectionViewController *)self discardButton];
  v5 = v6;
  [v3 setTransform:&v5];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__AVTPoseSelectionViewController_configureButtonsForReview__block_invoke;
  v4[3] = &unk_1E7F3A9B8;
  v4[4] = self;
  [(AVTPoseSelectionViewController *)self animateButtonConfiguration:v4];
}

void __59__AVTPoseSelectionViewController_configureButtonsForReview__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) discardButton];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  *&v8.a = *MEMORY[0x1E695EFD0];
  *&v8.c = v3;
  *&v8.tx = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:&v8];

  CGAffineTransformMakeScale(&v7, 0.5, 0.5);
  v4 = [*(a1 + 32) captureButton];
  v8 = v7;
  [v4 setTransform:&v8];

  v5 = [*(a1 + 32) captureButton];
  [v5 setHidden:1];

  v6 = [*(a1 + 32) discardButton];
  [v6 setHidden:0];
}

- (void)configureButtonsForCapture
{
  CGAffineTransformMakeScale(&v7, 0.5, 0.5);
  v3 = [(AVTPoseSelectionViewController *)self captureButton];
  v6 = v7;
  [v3 setTransform:&v6];

  v4 = [(AVTPoseSelectionViewController *)self captureButton];
  [v4 setHidden:0];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__AVTPoseSelectionViewController_configureButtonsForCapture__block_invoke;
  v5[3] = &unk_1E7F3A9B8;
  v5[4] = self;
  [(AVTPoseSelectionViewController *)self animateButtonConfiguration:v5];
}

void __60__AVTPoseSelectionViewController_configureButtonsForCapture__block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v7, 0.5, 0.5);
  v2 = [*(a1 + 32) discardButton];
  v6 = v7;
  [v2 setTransform:&v6];

  v3 = [*(a1 + 32) captureButton];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&v6.a = *MEMORY[0x1E695EFD0];
  *&v6.c = v4;
  *&v6.tx = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:&v6];

  v5 = [*(a1 + 32) discardButton];
  [v5 setHidden:1];
}

- (void)animateButtonConfiguration:(id)a3
{
  v3 = MEMORY[0x1E69DCF88];
  v4 = a3;
  v6 = [[v3 alloc] initWithMass:1.0 stiffness:325.0 damping:32.0 initialVelocity:{0.0, 0.0}];
  v5 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v6 timingParameters:0.4];
  [v5 addAnimations:v4];

  [v5 startAnimation];
}

- (void)createCaptureButtonIfNeeded
{
  v32[4] = *MEMORY[0x1E69E9840];
  v3 = [(AVTPoseSelectionViewController *)self captureButton];

  if (!v3)
  {
    v4 = objc_alloc_init(AVTRecordingButton);
    [(AVTPoseSelectionViewController *)self setCaptureButton:v4];

    v5 = [MEMORY[0x1E69DC888] systemBlueColor];
    v6 = [(AVTPoseSelectionViewController *)self captureButton];
    [v6 setCenterCircleColor:v5];

    v7 = [(AVTPoseSelectionViewController *)self captureButton];
    [v7 setIgnoresLongPress:1];

    v8 = [(AVTPoseSelectionViewController *)self captureButton];
    [v8 addTarget:self action:sel_didTapCaptureButton_ forControlEvents:64];

    v9 = [(AVTPoseSelectionViewController *)self captureButton];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(AVTPoseSelectionViewController *)self view];
    v11 = [(AVTPoseSelectionViewController *)self captureButton];
    [v10 addSubview:v11];

    v31 = [(AVTPoseSelectionViewController *)self captureButton];
    v30 = [v31 widthAnchor];
    [(AVTPoseSelectionViewController *)self captureButtonEdgeLength];
    v29 = [v30 constraintEqualToConstant:?];
    v32[0] = v29;
    v28 = [(AVTPoseSelectionViewController *)self captureButton];
    v26 = [v28 heightAnchor];
    v27 = [(AVTPoseSelectionViewController *)self captureButton];
    v25 = [v27 widthAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v32[1] = v24;
    v23 = [(AVTPoseSelectionViewController *)self captureButton];
    v22 = [v23 bottomAnchor];
    v12 = [(AVTPoseSelectionViewController *)self headerViewController];
    v13 = [v12 view];
    v14 = [v13 bottomAnchor];
    v15 = [v22 constraintEqualToAnchor:v14 constant:-20.0];
    v32[2] = v15;
    v16 = [(AVTPoseSelectionViewController *)self captureButton];
    v17 = [v16 trailingAnchor];
    v18 = [(AVTPoseSelectionViewController *)self view];
    v19 = [v18 trailingAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:-20.0];
    v32[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v21];
  }
}

- (void)createDiscardButtonIfNeeded
{
  v3 = [(AVTPoseSelectionViewController *)self discardButton];

  if (!v3)
  {
    v4 = [AVTCircularButton alloc];
    v5 = [(AVTCircularButton *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(AVTPoseSelectionViewController *)self setDiscardButton:v5];

    v6 = [(AVTPoseSelectionViewController *)self discardButton];
    [v6 addTarget:self action:sel_didTapDiscardButton_ forControlEvents:64];

    v7 = [(AVTPoseSelectionViewController *)self discardButton];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = MEMORY[0x1E69DCAD8];
    [(AVTPoseSelectionViewController *)self discardButtonSymbolWeight];
    v40 = [v8 configurationWithPointSize:5 weight:?];
    if (self->_usesSingleButtonCaptureReview)
    {
      v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v10 = [(AVTPoseSelectionViewController *)self discardButton];
      [v10 setTintColor:v9];

      v11 = [(AVTPoseSelectionViewController *)self discardButton];
      [v11 setSymbolImageWithName:@"gobackward" configuration:v40];

      v12 = [(AVTPoseSelectionViewController *)self discardButton];
      v13 = [MEMORY[0x1E69DC888] systemBlueColor];
      [v12 setSymbolTintColor:v13];
    }

    else
    {
      v14 = [MEMORY[0x1E69DC888] redColor];
      v15 = [(AVTPoseSelectionViewController *)self discardButton];
      [v15 setTintColor:v14];

      v12 = [(AVTPoseSelectionViewController *)self discardButton];
      [v12 setSymbolImageWithName:@"trash.fill" configuration:v40];
    }

    v16 = [(AVTPoseSelectionViewController *)self view];
    v17 = [(AVTPoseSelectionViewController *)self discardButton];
    [v16 addSubview:v17];

    v38 = objc_alloc(MEMORY[0x1E695DF70]);
    v37 = [(AVTPoseSelectionViewController *)self discardButton];
    v36 = [v37 widthAnchor];
    [(AVTPoseSelectionViewController *)self discardButtonEdgeLength];
    v18 = [v36 constraintEqualToConstant:?];
    v35 = [(AVTPoseSelectionViewController *)self discardButton];
    v34 = [v35 heightAnchor];
    v19 = [(AVTPoseSelectionViewController *)self discardButton];
    v20 = [v19 widthAnchor];
    v21 = [v34 constraintEqualToAnchor:v20];
    v22 = [(AVTPoseSelectionViewController *)self discardButton];
    v23 = [v22 centerYAnchor];
    v24 = [(AVTPoseSelectionViewController *)self captureButton];
    v25 = [v24 centerYAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    v39 = [v38 initWithObjects:{v18, v21, v26, 0}];

    if (self->_usesSingleButtonCaptureReview || self->_headerMenu)
    {
      v27 = [(AVTPoseSelectionViewController *)self discardButton];
      v28 = [v27 centerXAnchor];
      v29 = [(AVTPoseSelectionViewController *)self captureButton];
      v30 = [v29 centerXAnchor];
      v31 = [v28 constraintEqualToAnchor:v30];
      v32 = v39;
      [v39 addObject:v31];
    }

    else
    {
      v27 = [(AVTPoseSelectionViewController *)self discardButton];
      v28 = [v27 leadingAnchor];
      v29 = [(AVTPoseSelectionViewController *)self headerViewController];
      v30 = [v29 view];
      v31 = [v30 leadingAnchor];
      v33 = [v28 constraintEqualToAnchor:v31 constant:20.0];
      v32 = v39;
      [v39 addObject:v33];
    }

    [MEMORY[0x1E696ACD8] activateConstraints:v32];
  }
}

- (void)createMenuButtonIfNeeded
{
  v38[4] = *MEMORY[0x1E69E9840];
  if (!self->_menuButton)
  {
    v3 = [AVTCircularButton alloc];
    v4 = [(AVTCircularButton *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    menuButton = self->_menuButton;
    self->_menuButton = v4;

    v6 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
    [(AVTCircularButton *)self->_menuButton setTintColor:v6];

    [(AVTCircularButton *)self->_menuButton setShowsMenuAsPrimaryAction:1];
    v7 = MEMORY[0x1E69DCAD8];
    [(AVTPoseSelectionViewController *)self buttonSymbolWeight];
    v37 = [v7 configurationWithPointSize:5 weight:?];
    [(AVTCircularButton *)self->_menuButton setSymbolImageWithName:@"ellipsis" configuration:v37];
    v8 = self->_menuButton;
    v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(AVTCircularButton *)v8 setSymbolTintColor:v9];

    [(AVTCircularButton *)self->_menuButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(AVTPoseSelectionViewController *)self view];
    v11 = [(AVTPoseSelectionViewController *)self menuButton];
    [v10 addSubview:v11];

    [(AVTPoseSelectionViewController *)self buttonEdgeLength];
    v13 = v12;
    [(AVTPoseSelectionViewController *)self captureButtonEdgeLength];
    v15 = (v14 - v13) * 0.5 + 20.0;
    v36 = [(AVTPoseSelectionViewController *)self menuButton];
    v35 = [v36 widthAnchor];
    v34 = [v35 constraintEqualToConstant:v13];
    v38[0] = v34;
    v33 = [(AVTPoseSelectionViewController *)self menuButton];
    v31 = [v33 heightAnchor];
    v32 = [(AVTPoseSelectionViewController *)self menuButton];
    v30 = [v32 widthAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v38[1] = v29;
    v28 = [(AVTPoseSelectionViewController *)self menuButton];
    v26 = [v28 bottomAnchor];
    v27 = [(AVTPoseSelectionViewController *)self headerViewController];
    v16 = [v27 view];
    v17 = [v16 bottomAnchor];
    v18 = [v26 constraintEqualToAnchor:v17 constant:-v15];
    v38[2] = v18;
    v19 = [(AVTPoseSelectionViewController *)self menuButton];
    v20 = [v19 leadingAnchor];
    v21 = [(AVTPoseSelectionViewController *)self view];
    v22 = [v21 leadingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22 constant:20.0];
    v38[3] = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v25];
    v24 = [[AVTTouchDownGestureRecognizer alloc] initWithTarget:self action:sel_prepareForMenuPresentation];
    [(AVTCircularButton *)self->_menuButton addGestureRecognizer:v24];
  }
}

- (double)buttonSymbolWeight
{
  IsMacOrIPad = AVTDeviceIsMacOrIPad();
  result = 18.0;
  if (IsMacOrIPad)
  {
    return 31.0;
  }

  return result;
}

- (double)discardButtonSymbolWeight
{
  if (self->_usesSingleButtonCaptureReview)
  {
    IsMacOrIPad = AVTDeviceIsMacOrIPad();
    result = 32.0;
    if (IsMacOrIPad)
    {
      return 56.0;
    }
  }

  else
  {

    [(AVTPoseSelectionViewController *)self buttonSymbolWeight];
  }

  return result;
}

- (double)buttonEdgeLength
{
  IsMacOrIPad = AVTDeviceIsMacOrIPad();
  result = 32.0;
  if (IsMacOrIPad)
  {
    return 56.0;
  }

  return result;
}

- (double)discardButtonEdgeLength
{
  if (self->_usesSingleButtonCaptureReview)
  {
    [(AVTPoseSelectionViewController *)self captureButtonEdgeLength];
  }

  else
  {
    [(AVTPoseSelectionViewController *)self buttonEdgeLength];
  }

  return result;
}

- (double)captureButtonEdgeLength
{
  IsMacOrIPad = AVTDeviceIsMacOrIPad();
  result = 52.0;
  if (IsMacOrIPad)
  {
    return 72.0;
  }

  return result;
}

- (void)setHeaderMenu:(id)a3
{
  v5 = a3;
  if (self->_headerMenu != v5)
  {
    v6 = v5;
    if (v5)
    {
      [(AVTPoseSelectionViewController *)self createMenuButtonIfNeeded];
      objc_storeStrong(&self->_headerMenu, a3);
      [(AVTCircularButton *)self->_menuButton setMenu:self->_headerMenu];
      [(AVTCircularButton *)self->_menuButton setHidden:[(AVTAvatarRecord *)self->_avatarRecord isEditable]^ 1];
    }

    else
    {
      [(AVTPoseSelectionViewController *)self clearHeaderMenu];
    }

    v5 = v6;
  }
}

- (void)clearHeaderMenu
{
  menuButton = self->_menuButton;
  if (menuButton)
  {
    [(AVTCircularButton *)menuButton removeFromSuperview];
    v4 = self->_menuButton;
    self->_menuButton = 0;
  }

  headerMenu = self->_headerMenu;
  self->_headerMenu = 0;
}

- (void)prepareForMenuPresentation
{
  headerViewController = self->_headerViewController;
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(AVTAnimojiPoseSelectionHeaderViewController *)headerViewController setCaptureBackgroundColor:v3];
}

- (void)didFinishMenuPresentationWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__AVTPoseSelectionViewController_didFinishMenuPresentationWithCompletion___block_invoke;
  block[3] = &unk_1E7F3B020;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __74__AVTPoseSelectionViewController_didFinishMenuPresentationWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained headerViewController];
  [v3 setCaptureBackgroundColor:0];

  if (*(a1 + 32))
  {
    v4 = dispatch_time(0, 10000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__AVTPoseSelectionViewController_didFinishMenuPresentationWithCompletion___block_invoke_2;
    block[3] = &unk_1E7F3AFF8;
    v6 = *(a1 + 32);
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }
}

- (void)didTapCaptureButton:(id)a3
{
  [(AVTPoseSelectionViewController *)self setMode:2];
  doneButton = self->_doneButton;

  [(UIBarButtonItem *)doneButton setEnabled:1];
}

- (void)didTapDiscardButton:(id)a3
{
  [(AVTPoseSelectionViewController *)self setMode:1];
  doneButton = self->_doneButton;

  [(UIBarButtonItem *)doneButton setEnabled:0];
}

- (void)didTapCancel:(id)a3
{
  v4 = [(AVTPoseSelectionViewController *)self delegate];
  [v4 poseSelectionControllerDidCancel:self];
}

- (void)returnPressed:(id)a3
{
  v4 = a3;
  if ([(UIBarButtonItem *)self->_doneButton isEnabled])
  {
    [(AVTPoseSelectionViewController *)self didTapDone:v4];
  }
}

- (void)notifyDelegateOfSelectedPose
{
  v4 = [(AVTPoseSelectionViewController *)self selectedPoseConfiguration];
  v3 = [(AVTPoseSelectionViewController *)self delegate];
  [v3 poseSelectionController:self didSelectPoseWithConfiguration:v4];
}

- (id)selectedPoseConfiguration
{
  v3 = [(AVTPoseSelectionViewController *)self gridViewController];
  v4 = [v3 selectedStickerConfiguration];

  if (!v4)
  {
    v5 = [(AVTPoseSelectionViewController *)self headerViewController];
    v4 = [v5 newStickerConfigurationFromCurrentPose];
  }

  return v4;
}

- (void)notifyDelegateOfModeChange:(unint64_t)a3
{
  v5 = [(AVTPoseSelectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (a3 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = [(AVTPoseSelectionViewController *)self selectedPoseConfiguration];
    }

    v7 = [(AVTPoseSelectionViewController *)self delegate];
    [v7 poseSelectionController:self didSetMode:a3 withConfiguration:v8];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTPoseSelectionViewController;
  [(AVTPoseSelectionViewController *)&v3 viewWillLayoutSubviews];
  [(AVTPoseSelectionViewController *)self updateHeaderHeightConstraint];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AVTPoseSelectionViewController;
  [(AVTPoseSelectionViewController *)&v5 viewWillDisappear:a3];
  v4 = [(AVTPoseSelectionViewController *)self headerViewController];
  [v4 endFaceTracking];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AVTPoseSelectionViewController;
  [(AVTPoseSelectionViewController *)&v5 viewWillAppear:a3];
  if ([(AVTPoseSelectionViewController *)self mode]== 1)
  {
    v4 = [(AVTPoseSelectionViewController *)self headerViewController];
    [v4 beginFaceTrackingWithCompletionBlock:0];
  }
}

- (void)updateForPoseConfiguration:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __70__AVTPoseSelectionViewController_updateForPoseConfiguration_animated___block_invoke;
  v11 = &unk_1E7F3B048;
  objc_copyWeak(&v13, &location);
  v7 = v6;
  v12 = v7;
  v14 = a4;
  [(AVTPoseSelectionViewController *)self didFinishMenuPresentationWithCompletion:&v8];
  [(UIBarButtonItem *)self->_doneButton setEnabled:1, v8, v9, v10, v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __70__AVTPoseSelectionViewController_updateForPoseConfiguration_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained headerViewController];
  [v2 updateForStickerConfiguration:*(a1 + 32) animated:*(a1 + 48)];
}

- (void)poseSelectionGridControllerDidSelectCameraItem:(id)a3
{
  [(AVTPoseSelectionViewController *)self setMode:1];
  doneButton = self->_doneButton;

  [(UIBarButtonItem *)doneButton setEnabled:0];
}

- (void)poseSelectionGridController:(id)a3 didSelectConfiguration:(id)a4
{
  v5 = a4;
  [(AVTPoseSelectionViewController *)self setMode:0];
  [(AVTPoseSelectionViewController *)self updateForPoseConfiguration:v5 animated:1];

  if ([(AVTPoseSelectionViewController *)self shouldNotifyDelegateOnSelection])
  {

    [(AVTPoseSelectionViewController *)self notifyDelegateOfSelectedPose];
  }
}

- (AVTPoseSelectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end