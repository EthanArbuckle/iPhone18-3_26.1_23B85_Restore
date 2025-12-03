@interface AVTPoseSelectionViewController
+ (id)poseConfigurationsForTypes:(unint64_t)types avatarRecord:(id)record;
- (AVTPoseSelectionViewController)initWithSelectedRecord:(id)record poseConfigurations:(id)configurations;
- (AVTPoseSelectionViewController)initWithSelectedRecord:(id)record poseTypes:(unint64_t)types;
- (AVTPoseSelectionViewControllerDelegate)delegate;
- (double)buttonEdgeLength;
- (double)buttonSymbolWeight;
- (double)captureButtonEdgeLength;
- (double)discardButtonEdgeLength;
- (double)discardButtonSymbolWeight;
- (id)keyCommands;
- (id)selectedPoseConfiguration;
- (void)animateButtonConfiguration:(id)configuration;
- (void)clearHeaderMenu;
- (void)configureButtonsForCapture;
- (void)configureButtonsForReview;
- (void)createCaptureButtonIfNeeded;
- (void)createDiscardButtonIfNeeded;
- (void)createMenuButtonIfNeeded;
- (void)didFinishMenuPresentationWithCompletion:(id)completion;
- (void)didTapCancel:(id)cancel;
- (void)didTapCaptureButton:(id)button;
- (void)didTapDiscardButton:(id)button;
- (void)notifyDelegateOfModeChange:(unint64_t)change;
- (void)notifyDelegateOfSelectedPose;
- (void)poseSelectionGridController:(id)controller didSelectConfiguration:(id)configuration;
- (void)poseSelectionGridControllerDidSelectCameraItem:(id)item;
- (void)prepareForMenuPresentation;
- (void)returnPressed:(id)pressed;
- (void)setBackgroundColorOverride:(id)override;
- (void)setHeaderMenu:(id)menu;
- (void)setMode:(unint64_t)mode;
- (void)setNewAvatarRecord:(id)record;
- (void)updateForPoseConfiguration:(id)configuration animated:(BOOL)animated;
- (void)updateHeaderHeightConstraint;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AVTPoseSelectionViewController

+ (id)poseConfigurationsForTypes:(unint64_t)types avatarRecord:(id)record
{
  v38 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if (types != 1)
  {
    v8 = MEMORY[0x1E698E2F8];
    if (types != 2)
    {
      goto LABEL_5;
    }

    [array addObject:*MEMORY[0x1E698E2F8]];
  }

  v8 = MEMORY[0x1E698E2E0];
LABEL_5:
  [array addObject:*v8];
  if (AVTUIShowPrereleaseStickerPack_once())
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(array, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = array;
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
    v9 = array;
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
        isEditable = [recordCopy isEditable];
        v23 = MEMORY[0x1E698E2C0];
        if (isEditable)
        {
          identifier = [MEMORY[0x1E698E2C0] stickerConfigurationsForMemojiInStickerPack:v21];
          [array2 addObjectsFromArray:identifier];
        }

        else
        {
          identifier = [recordCopy identifier];
          v25 = [v23 stickerConfigurationsForAnimojiNamed:identifier inStickerPack:v21];
          [array2 addObjectsFromArray:v25];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

  v26 = [array2 copy];

  return v26;
}

- (AVTPoseSelectionViewController)initWithSelectedRecord:(id)record poseTypes:(unint64_t)types
{
  recordCopy = record;
  v7 = [objc_opt_class() poseConfigurationsForTypes:types avatarRecord:recordCopy];
  v8 = [(AVTPoseSelectionViewController *)self initWithSelectedRecord:recordCopy poseConfigurations:v7];

  return v8;
}

- (AVTPoseSelectionViewController)initWithSelectedRecord:(id)record poseConfigurations:(id)configurations
{
  recordCopy = record;
  configurationsCopy = configurations;
  v13.receiver = self;
  v13.super_class = AVTPoseSelectionViewController;
  v9 = [(AVTPoseSelectionViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_avatarRecord, record);
    objc_storeStrong(&v10->_stickerConfigurations, configurations);
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
  navigationItem = [(AVTPoseSelectionViewController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];

  navigationController = [(AVTPoseSelectionViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  isTranslucent = [navigationBar isTranslucent];

  if ((isTranslucent & 1) == 0)
  {
    [(AVTPoseSelectionViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  }

  navigationItem2 = [(AVTPoseSelectionViewController *)self navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:2];

  v8 = [AVTAnimojiPoseSelectionHeaderViewController alloc];
  avatarRecord = [(AVTPoseSelectionViewController *)self avatarRecord];
  v10 = [(AVTAnimojiPoseSelectionHeaderViewController *)v8 initWithRecord:avatarRecord];
  headerViewController = self->_headerViewController;
  self->_headerViewController = v10;

  view = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  [(AVTPoseSelectionViewController *)self addChildViewController:self->_headerViewController];
  view2 = [(AVTPoseSelectionViewController *)self view];
  view3 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  [view2 addSubview:view3];

  [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController didMoveToParentViewController:self];
  allowsCameraCapture = [(AVTPoseSelectionViewController *)self allowsCameraCapture];
  v16 = [AVTPoseSelectionGridViewController alloc];
  avatarRecord2 = [(AVTPoseSelectionViewController *)self avatarRecord];
  stickerConfigurations = [(AVTPoseSelectionViewController *)self stickerConfigurations];
  v75 = allowsCameraCapture;
  v19 = [(AVTPoseSelectionGridViewController *)v16 initWithAvatarRecord:avatarRecord2 poseConfigurations:stickerConfigurations allowsCameraCapture:allowsCameraCapture];
  gridViewController = self->_gridViewController;
  self->_gridViewController = v19;

  [(AVTPoseSelectionGridViewController *)self->_gridViewController setDelegate:self];
  view4 = [(AVTPoseSelectionGridViewController *)self->_gridViewController view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(AVTPoseSelectionViewController *)self addChildViewController:self->_gridViewController];
  view5 = [(AVTPoseSelectionViewController *)self view];
  view6 = [(AVTPoseSelectionGridViewController *)self->_gridViewController view];
  [view5 addSubview:view6];

  [(AVTPoseSelectionGridViewController *)self->_gridViewController didMoveToParentViewController:self];
  backgroundColorOverride = self->_backgroundColorOverride;
  if (backgroundColorOverride)
  {
    view7 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
    [view7 setBackgroundColor:backgroundColorOverride];

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
  view8 = [(AVTPoseSelectionViewController *)self view];
  [view8 addSubview:self->_headerDropShadowView];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v33 = v32;
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 nativeScale];
  v36 = v35;

  if (v33 != v36)
  {
    v37 = objc_alloc(MEMORY[0x1E69DD250]);
    v38 = objc_opt_class();
    view9 = [(AVTPoseSelectionViewController *)self view];
    [view9 bounds];
    [v38 borderMaskRectForContentRect:?];
    v40 = [v37 initWithFrame:?];
    borderMaskView = self->_borderMaskView;
    self->_borderMaskView = v40;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)self->_borderMaskView setBackgroundColor:whiteColor];

    v43 = self->_borderMaskView;
    view10 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
    [view10 setMaskView:v43];
  }

  v45 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_didTapCancel_];
  navigationItem3 = [(AVTPoseSelectionViewController *)self navigationItem];
  v118 = v45;
  [navigationItem3 setLeftBarButtonItem:v45];

  v47 = objc_alloc(MEMORY[0x1E69DC708]);
  v48 = AVTAvatarUIBundle();
  v49 = [v48 localizedStringForKey:@"NEXT" value:&stru_1F39618F0 table:@"Localized"];
  v50 = [v47 initWithTitle:v49 style:2 target:self action:sel_didTapDone_];
  doneButton = self->_doneButton;
  self->_doneButton = v50;

  v52 = self->_doneButton;
  navigationItem4 = [(AVTPoseSelectionViewController *)self navigationItem];
  [navigationItem4 setRightBarButtonItem:v52];

  view11 = [(AVTPoseSelectionViewController *)self view];
  window = [view11 window];
  screen = [window screen];
  [screen scale];
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
  view12 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  topAnchor = [view12 topAnchor];
  view13 = [(AVTPoseSelectionViewController *)self view];
  topAnchor2 = [view13 topAnchor];
  v113 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v120[0] = v113;
  view14 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  leadingAnchor = [view14 leadingAnchor];
  view15 = [(AVTPoseSelectionViewController *)self view];
  leadingAnchor2 = [view15 leadingAnchor];
  v108 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v120[1] = v108;
  view16 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  trailingAnchor = [view16 trailingAnchor];
  view17 = [(AVTPoseSelectionViewController *)self view];
  trailingAnchor2 = [view17 trailingAnchor];
  v103 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v120[2] = v103;
  headerHeightConstraint = [(AVTPoseSelectionViewController *)self headerHeightConstraint];
  v120[3] = headerHeightConstraint;
  leadingAnchor3 = [(UIView *)self->_headerDropShadowView leadingAnchor];
  view18 = [(AVTPoseSelectionViewController *)self view];
  leadingAnchor4 = [view18 leadingAnchor];
  v98 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v120[4] = v98;
  trailingAnchor3 = [(UIView *)self->_headerDropShadowView trailingAnchor];
  view19 = [(AVTPoseSelectionViewController *)self view];
  trailingAnchor4 = [view19 trailingAnchor];
  v94 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v120[5] = v94;
  topAnchor3 = [(UIView *)self->_headerDropShadowView topAnchor];
  view20 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  bottomAnchor = [view20 bottomAnchor];
  v90 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v120[6] = v90;
  heightAnchor = [(UIView *)self->_headerDropShadowView heightAnchor];
  v88 = [heightAnchor constraintEqualToConstant:v59];
  v120[7] = v88;
  view21 = [(AVTPoseSelectionGridViewController *)self->_gridViewController view];
  topAnchor4 = [view21 topAnchor];
  view22 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
  bottomAnchor2 = [view22 bottomAnchor];
  v83 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
  v120[8] = v83;
  view23 = [(AVTPoseSelectionGridViewController *)self->_gridViewController view];
  leadingAnchor5 = [view23 leadingAnchor];
  view24 = [(AVTPoseSelectionViewController *)self view];
  leadingAnchor6 = [view24 leadingAnchor];
  v78 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v120[9] = v78;
  view25 = [(AVTPoseSelectionGridViewController *)self->_gridViewController view];
  trailingAnchor5 = [view25 trailingAnchor];
  view26 = [(AVTPoseSelectionViewController *)self view];
  trailingAnchor6 = [view26 trailingAnchor];
  v62 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v120[10] = v62;
  view27 = [(AVTPoseSelectionGridViewController *)self->_gridViewController view];
  bottomAnchor3 = [view27 bottomAnchor];
  view28 = [(AVTPoseSelectionViewController *)self view];
  bottomAnchor4 = [view28 bottomAnchor];
  v67 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v120[11] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:12];

  [MEMORY[0x1E696ACD8] activateConstraints:v68];
  if ((AVTUIForceCameraDisclosures_once() & 1) != 0 || (IsGreenTea = AVTDeviceIsGreenTea(), !v75) || IsGreenTea)
  {
    [(AVTPoseSelectionViewController *)self setMode:0];
    stickerConfigurations2 = [(AVTPoseSelectionViewController *)self stickerConfigurations];
    v70 = [stickerConfigurations2 objectAtIndexedSubscript:0];
    gridViewController = [(AVTPoseSelectionViewController *)self gridViewController];
    [gridViewController setSelectedStickerConfiguration:v70];

    stickerConfigurations3 = [(AVTPoseSelectionViewController *)self stickerConfigurations];
    v73 = [stickerConfigurations3 objectAtIndexedSubscript:0];
    [(AVTPoseSelectionViewController *)self updateForPoseConfiguration:v73 animated:0];
  }

  else
  {
    [(AVTPoseSelectionViewController *)self setMode:1];
    [(UIBarButtonItem *)self->_doneButton setEnabled:0];
  }
}

- (void)setNewAvatarRecord:(id)record
{
  recordCopy = record;
  if (self->_avatarRecord != recordCopy)
  {
    objc_storeStrong(&self->_avatarRecord, record);
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__AVTPoseSelectionViewController_setNewAvatarRecord___block_invoke;
    v7[3] = &unk_1E7F3A990;
    objc_copyWeak(&v9, &location);
    v6 = recordCopy;
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
  array = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_didTapCancel_];
  _nonRepeatableKeyCommand = [v3 _nonRepeatableKeyCommand];
  [array addObject:_nonRepeatableKeyCommand];

  v5 = MEMORY[0x1E69DCBA0];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\r"];
  v7 = [v5 keyCommandWithInput:v6 modifierFlags:0 action:sel_returnPressed_];

  _nonRepeatableKeyCommand2 = [v7 _nonRepeatableKeyCommand];
  [array addObject:_nonRepeatableKeyCommand2];

  return array;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = AVTPoseSelectionViewController;
  coordinatorCopy = coordinator;
  [(AVTPoseSelectionViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__AVTPoseSelectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7F3A9E0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)updateHeaderHeightConstraint
{
  view = [(AVTPoseSelectionViewController *)self view];
  [view bounds];
  v5 = v4;
  view2 = [(AVTPoseSelectionViewController *)self view];
  [view2 bounds];
  v8 = v7;

  v9 = 336.0;
  if (v5 > v8)
  {
    v9 = 162.666667;
  }

  v10 = fmax(v9, 272.0);
  headerHeightConstraint = [(AVTPoseSelectionViewController *)self headerHeightConstraint];

  if (headerHeightConstraint)
  {
    headerHeightConstraint2 = [(AVTPoseSelectionViewController *)self headerHeightConstraint];
    [headerHeightConstraint2 setConstant:v10];
  }

  else
  {
    headerHeightConstraint2 = [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController view];
    heightAnchor = [headerHeightConstraint2 heightAnchor];
    v13 = [heightAnchor constraintEqualToConstant:v10];
    [(AVTPoseSelectionViewController *)self setHeaderHeightConstraint:v13];
  }
}

- (void)setBackgroundColorOverride:(id)override
{
  objc_storeStrong(&self->_backgroundColorOverride, override);
  overrideCopy = override;
  view = [(AVTPoseSelectionViewController *)self view];
  [view setBackgroundColor:overrideCopy];

  headerViewController = [(AVTPoseSelectionViewController *)self headerViewController];
  view2 = [headerViewController view];
  [view2 setBackgroundColor:overrideCopy];

  [(AVTAnimojiPoseSelectionHeaderViewController *)self->_headerViewController setCaptureBackgroundColorOverride:self->_backgroundColorOverride];
  gridViewController = [(AVTPoseSelectionViewController *)self gridViewController];
  [gridViewController setBackgroundColor:overrideCopy];
}

- (void)setMode:(unint64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    if (mode != 2)
    {
      if (mode == 1)
      {
        objc_initWeak(&location, self);
        headerViewController = [(AVTPoseSelectionViewController *)self headerViewController];
        v8 = MEMORY[0x1E69E9820];
        v9 = 3221225472;
        v10 = __42__AVTPoseSelectionViewController_setMode___block_invoke;
        v11 = &unk_1E7F3AFD0;
        objc_copyWeak(&v12, &location);
        [headerViewController beginFaceTrackingWithCompletionBlock:&v8];

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }

      else if (!mode)
      {
        discardButton = [(AVTPoseSelectionViewController *)self discardButton];
        [discardButton setHidden:1];

        captureButton = [(AVTPoseSelectionViewController *)self captureButton];
        [captureButton setHidden:1];
LABEL_8:
      }

      [(AVTPoseSelectionViewController *)self notifyDelegateOfModeChange:mode, v8, v9, v10, v11];
      return;
    }

    [(AVTPoseSelectionViewController *)self createCaptureButtonIfNeeded];
    [(AVTPoseSelectionViewController *)self createDiscardButtonIfNeeded];
    [(AVTPoseSelectionViewController *)self configureButtonsForReview];
    captureButton = [(AVTPoseSelectionViewController *)self headerViewController];
    [captureButton pauseFaceTracking];
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
  discardButton = [(AVTPoseSelectionViewController *)self discardButton];
  v5 = v6;
  [discardButton setTransform:&v5];

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
  captureButton = [(AVTPoseSelectionViewController *)self captureButton];
  v6 = v7;
  [captureButton setTransform:&v6];

  captureButton2 = [(AVTPoseSelectionViewController *)self captureButton];
  [captureButton2 setHidden:0];

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

- (void)animateButtonConfiguration:(id)configuration
{
  v3 = MEMORY[0x1E69DCF88];
  configurationCopy = configuration;
  v6 = [[v3 alloc] initWithMass:1.0 stiffness:325.0 damping:32.0 initialVelocity:{0.0, 0.0}];
  v5 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v6 timingParameters:0.4];
  [v5 addAnimations:configurationCopy];

  [v5 startAnimation];
}

- (void)createCaptureButtonIfNeeded
{
  v32[4] = *MEMORY[0x1E69E9840];
  captureButton = [(AVTPoseSelectionViewController *)self captureButton];

  if (!captureButton)
  {
    v4 = objc_alloc_init(AVTRecordingButton);
    [(AVTPoseSelectionViewController *)self setCaptureButton:v4];

    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    captureButton2 = [(AVTPoseSelectionViewController *)self captureButton];
    [captureButton2 setCenterCircleColor:systemBlueColor];

    captureButton3 = [(AVTPoseSelectionViewController *)self captureButton];
    [captureButton3 setIgnoresLongPress:1];

    captureButton4 = [(AVTPoseSelectionViewController *)self captureButton];
    [captureButton4 addTarget:self action:sel_didTapCaptureButton_ forControlEvents:64];

    captureButton5 = [(AVTPoseSelectionViewController *)self captureButton];
    [captureButton5 setTranslatesAutoresizingMaskIntoConstraints:0];

    view = [(AVTPoseSelectionViewController *)self view];
    captureButton6 = [(AVTPoseSelectionViewController *)self captureButton];
    [view addSubview:captureButton6];

    captureButton7 = [(AVTPoseSelectionViewController *)self captureButton];
    widthAnchor = [captureButton7 widthAnchor];
    [(AVTPoseSelectionViewController *)self captureButtonEdgeLength];
    v29 = [widthAnchor constraintEqualToConstant:?];
    v32[0] = v29;
    captureButton8 = [(AVTPoseSelectionViewController *)self captureButton];
    heightAnchor = [captureButton8 heightAnchor];
    captureButton9 = [(AVTPoseSelectionViewController *)self captureButton];
    widthAnchor2 = [captureButton9 widthAnchor];
    v24 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v32[1] = v24;
    captureButton10 = [(AVTPoseSelectionViewController *)self captureButton];
    bottomAnchor = [captureButton10 bottomAnchor];
    headerViewController = [(AVTPoseSelectionViewController *)self headerViewController];
    view2 = [headerViewController view];
    bottomAnchor2 = [view2 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
    v32[2] = v15;
    captureButton11 = [(AVTPoseSelectionViewController *)self captureButton];
    trailingAnchor = [captureButton11 trailingAnchor];
    view3 = [(AVTPoseSelectionViewController *)self view];
    trailingAnchor2 = [view3 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v32[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v21];
  }
}

- (void)createDiscardButtonIfNeeded
{
  discardButton = [(AVTPoseSelectionViewController *)self discardButton];

  if (!discardButton)
  {
    v4 = [AVTCircularButton alloc];
    v5 = [(AVTCircularButton *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(AVTPoseSelectionViewController *)self setDiscardButton:v5];

    discardButton2 = [(AVTPoseSelectionViewController *)self discardButton];
    [discardButton2 addTarget:self action:sel_didTapDiscardButton_ forControlEvents:64];

    discardButton3 = [(AVTPoseSelectionViewController *)self discardButton];
    [discardButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = MEMORY[0x1E69DCAD8];
    [(AVTPoseSelectionViewController *)self discardButtonSymbolWeight];
    v40 = [v8 configurationWithPointSize:5 weight:?];
    if (self->_usesSingleButtonCaptureReview)
    {
      systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
      discardButton4 = [(AVTPoseSelectionViewController *)self discardButton];
      [discardButton4 setTintColor:systemBackgroundColor];

      discardButton5 = [(AVTPoseSelectionViewController *)self discardButton];
      [discardButton5 setSymbolImageWithName:@"gobackward" configuration:v40];

      discardButton6 = [(AVTPoseSelectionViewController *)self discardButton];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      [discardButton6 setSymbolTintColor:systemBlueColor];
    }

    else
    {
      redColor = [MEMORY[0x1E69DC888] redColor];
      discardButton7 = [(AVTPoseSelectionViewController *)self discardButton];
      [discardButton7 setTintColor:redColor];

      discardButton6 = [(AVTPoseSelectionViewController *)self discardButton];
      [discardButton6 setSymbolImageWithName:@"trash.fill" configuration:v40];
    }

    view = [(AVTPoseSelectionViewController *)self view];
    discardButton8 = [(AVTPoseSelectionViewController *)self discardButton];
    [view addSubview:discardButton8];

    v38 = objc_alloc(MEMORY[0x1E695DF70]);
    discardButton9 = [(AVTPoseSelectionViewController *)self discardButton];
    widthAnchor = [discardButton9 widthAnchor];
    [(AVTPoseSelectionViewController *)self discardButtonEdgeLength];
    v18 = [widthAnchor constraintEqualToConstant:?];
    discardButton10 = [(AVTPoseSelectionViewController *)self discardButton];
    heightAnchor = [discardButton10 heightAnchor];
    discardButton11 = [(AVTPoseSelectionViewController *)self discardButton];
    widthAnchor2 = [discardButton11 widthAnchor];
    v21 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    discardButton12 = [(AVTPoseSelectionViewController *)self discardButton];
    centerYAnchor = [discardButton12 centerYAnchor];
    captureButton = [(AVTPoseSelectionViewController *)self captureButton];
    centerYAnchor2 = [captureButton centerYAnchor];
    v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v39 = [v38 initWithObjects:{v18, v21, v26, 0}];

    if (self->_usesSingleButtonCaptureReview || self->_headerMenu)
    {
      discardButton13 = [(AVTPoseSelectionViewController *)self discardButton];
      centerXAnchor = [discardButton13 centerXAnchor];
      captureButton2 = [(AVTPoseSelectionViewController *)self captureButton];
      centerXAnchor2 = [captureButton2 centerXAnchor];
      leadingAnchor = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v32 = v39;
      [v39 addObject:leadingAnchor];
    }

    else
    {
      discardButton13 = [(AVTPoseSelectionViewController *)self discardButton];
      centerXAnchor = [discardButton13 leadingAnchor];
      captureButton2 = [(AVTPoseSelectionViewController *)self headerViewController];
      centerXAnchor2 = [captureButton2 view];
      leadingAnchor = [centerXAnchor2 leadingAnchor];
      v33 = [centerXAnchor constraintEqualToAnchor:leadingAnchor constant:20.0];
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

    secondarySystemFillColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
    [(AVTCircularButton *)self->_menuButton setTintColor:secondarySystemFillColor];

    [(AVTCircularButton *)self->_menuButton setShowsMenuAsPrimaryAction:1];
    v7 = MEMORY[0x1E69DCAD8];
    [(AVTPoseSelectionViewController *)self buttonSymbolWeight];
    v37 = [v7 configurationWithPointSize:5 weight:?];
    [(AVTCircularButton *)self->_menuButton setSymbolImageWithName:@"ellipsis" configuration:v37];
    v8 = self->_menuButton;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(AVTCircularButton *)v8 setSymbolTintColor:secondaryLabelColor];

    [(AVTCircularButton *)self->_menuButton setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(AVTPoseSelectionViewController *)self view];
    menuButton = [(AVTPoseSelectionViewController *)self menuButton];
    [view addSubview:menuButton];

    [(AVTPoseSelectionViewController *)self buttonEdgeLength];
    v13 = v12;
    [(AVTPoseSelectionViewController *)self captureButtonEdgeLength];
    v15 = (v14 - v13) * 0.5 + 20.0;
    menuButton2 = [(AVTPoseSelectionViewController *)self menuButton];
    widthAnchor = [menuButton2 widthAnchor];
    v34 = [widthAnchor constraintEqualToConstant:v13];
    v38[0] = v34;
    menuButton3 = [(AVTPoseSelectionViewController *)self menuButton];
    heightAnchor = [menuButton3 heightAnchor];
    menuButton4 = [(AVTPoseSelectionViewController *)self menuButton];
    widthAnchor2 = [menuButton4 widthAnchor];
    v29 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v38[1] = v29;
    menuButton5 = [(AVTPoseSelectionViewController *)self menuButton];
    bottomAnchor = [menuButton5 bottomAnchor];
    headerViewController = [(AVTPoseSelectionViewController *)self headerViewController];
    view2 = [headerViewController view];
    bottomAnchor2 = [view2 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v15];
    v38[2] = v18;
    menuButton6 = [(AVTPoseSelectionViewController *)self menuButton];
    leadingAnchor = [menuButton6 leadingAnchor];
    view3 = [(AVTPoseSelectionViewController *)self view];
    leadingAnchor2 = [view3 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
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

- (void)setHeaderMenu:(id)menu
{
  menuCopy = menu;
  if (self->_headerMenu != menuCopy)
  {
    v6 = menuCopy;
    if (menuCopy)
    {
      [(AVTPoseSelectionViewController *)self createMenuButtonIfNeeded];
      objc_storeStrong(&self->_headerMenu, menu);
      [(AVTCircularButton *)self->_menuButton setMenu:self->_headerMenu];
      [(AVTCircularButton *)self->_menuButton setHidden:[(AVTAvatarRecord *)self->_avatarRecord isEditable]^ 1];
    }

    else
    {
      [(AVTPoseSelectionViewController *)self clearHeaderMenu];
    }

    menuCopy = v6;
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(AVTAnimojiPoseSelectionHeaderViewController *)headerViewController setCaptureBackgroundColor:clearColor];
}

- (void)didFinishMenuPresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__AVTPoseSelectionViewController_didFinishMenuPresentationWithCompletion___block_invoke;
  block[3] = &unk_1E7F3B020;
  objc_copyWeak(&v8, &location);
  v7 = completionCopy;
  v5 = completionCopy;
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

- (void)didTapCaptureButton:(id)button
{
  [(AVTPoseSelectionViewController *)self setMode:2];
  doneButton = self->_doneButton;

  [(UIBarButtonItem *)doneButton setEnabled:1];
}

- (void)didTapDiscardButton:(id)button
{
  [(AVTPoseSelectionViewController *)self setMode:1];
  doneButton = self->_doneButton;

  [(UIBarButtonItem *)doneButton setEnabled:0];
}

- (void)didTapCancel:(id)cancel
{
  delegate = [(AVTPoseSelectionViewController *)self delegate];
  [delegate poseSelectionControllerDidCancel:self];
}

- (void)returnPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([(UIBarButtonItem *)self->_doneButton isEnabled])
  {
    [(AVTPoseSelectionViewController *)self didTapDone:pressedCopy];
  }
}

- (void)notifyDelegateOfSelectedPose
{
  selectedPoseConfiguration = [(AVTPoseSelectionViewController *)self selectedPoseConfiguration];
  delegate = [(AVTPoseSelectionViewController *)self delegate];
  [delegate poseSelectionController:self didSelectPoseWithConfiguration:selectedPoseConfiguration];
}

- (id)selectedPoseConfiguration
{
  gridViewController = [(AVTPoseSelectionViewController *)self gridViewController];
  selectedStickerConfiguration = [gridViewController selectedStickerConfiguration];

  if (!selectedStickerConfiguration)
  {
    headerViewController = [(AVTPoseSelectionViewController *)self headerViewController];
    selectedStickerConfiguration = [headerViewController newStickerConfigurationFromCurrentPose];
  }

  return selectedStickerConfiguration;
}

- (void)notifyDelegateOfModeChange:(unint64_t)change
{
  delegate = [(AVTPoseSelectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (change == 1)
    {
      selectedPoseConfiguration = 0;
    }

    else
    {
      selectedPoseConfiguration = [(AVTPoseSelectionViewController *)self selectedPoseConfiguration];
    }

    delegate2 = [(AVTPoseSelectionViewController *)self delegate];
    [delegate2 poseSelectionController:self didSetMode:change withConfiguration:selectedPoseConfiguration];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTPoseSelectionViewController;
  [(AVTPoseSelectionViewController *)&v3 viewWillLayoutSubviews];
  [(AVTPoseSelectionViewController *)self updateHeaderHeightConstraint];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = AVTPoseSelectionViewController;
  [(AVTPoseSelectionViewController *)&v5 viewWillDisappear:disappear];
  headerViewController = [(AVTPoseSelectionViewController *)self headerViewController];
  [headerViewController endFaceTracking];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = AVTPoseSelectionViewController;
  [(AVTPoseSelectionViewController *)&v5 viewWillAppear:appear];
  if ([(AVTPoseSelectionViewController *)self mode]== 1)
  {
    headerViewController = [(AVTPoseSelectionViewController *)self headerViewController];
    [headerViewController beginFaceTrackingWithCompletionBlock:0];
  }
}

- (void)updateForPoseConfiguration:(id)configuration animated:(BOOL)animated
{
  configurationCopy = configuration;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __70__AVTPoseSelectionViewController_updateForPoseConfiguration_animated___block_invoke;
  v11 = &unk_1E7F3B048;
  objc_copyWeak(&v13, &location);
  v7 = configurationCopy;
  v12 = v7;
  animatedCopy = animated;
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

- (void)poseSelectionGridControllerDidSelectCameraItem:(id)item
{
  [(AVTPoseSelectionViewController *)self setMode:1];
  doneButton = self->_doneButton;

  [(UIBarButtonItem *)doneButton setEnabled:0];
}

- (void)poseSelectionGridController:(id)controller didSelectConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(AVTPoseSelectionViewController *)self setMode:0];
  [(AVTPoseSelectionViewController *)self updateForPoseConfiguration:configurationCopy animated:1];

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