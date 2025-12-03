@interface AVTCombinedPickerViewController
- (AVTCombinedPickerViewController)initWithSelectedRecord:(id)record;
- (AVTCombinedPickerViewControllerDelegate)delegate;
- (id)defaultAvatar;
- (id)keyCommands;
- (void)actionsController:(id)controller didDeleteRecord:(id)record withRecordUpdate:(id)update completionBlock:(id)block;
- (void)actionsController:(id)controller didDuplicateToRecord:(id)record completionBlock:(id)block;
- (void)beginObservingAvatarStoreChanges;
- (void)dealloc;
- (void)didSelectAvatarRecord:(id)record;
- (void)didTapCancel:(id)cancel;
- (void)didTapDone:(id)done;
- (void)endObservingAvatarStoreChanges;
- (void)poseSelectionController:(id)controller didSelectPoseWithConfiguration:(id)configuration;
- (void)poseSelectionController:(id)controller didSetMode:(unint64_t)mode withConfiguration:(id)configuration;
- (void)poseSelectionControllerDidCancel:(id)cancel;
- (void)presentAvatarUIController:(id)controller animated:(BOOL)animated;
- (void)presentUpdatedAvatarRecord:(id)record animated:(BOOL)animated completion:(id)completion;
- (void)refreshPickerForStoreUpdate;
- (void)returnPressed:(id)pressed;
- (void)setBackgroundColorOverride:(id)override;
- (void)updateActionModel;
- (void)viewDidLoad;
- (void)wrapAndPresentViewController:(id)controller animated:(BOOL)animated;
@end

@implementation AVTCombinedPickerViewController

- (AVTCombinedPickerViewController)initWithSelectedRecord:(id)record
{
  recordCopy = record;
  v47.receiver = self;
  v47.super_class = AVTCombinedPickerViewController;
  v6 = [(AVTCombinedPickerViewController *)&v47 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = +[AVTUIEnvironment defaultEnvironment];
    environment = v6->_environment;
    v6->_environment = v7;

    v9 = objc_alloc_init(AVTAvatarStore);
    avatarStore = v6->_avatarStore;
    v6->_avatarStore = v9;

    v11 = [AVTAvatarRecordDataSource alloc];
    v12 = v6->_avatarStore;
    requestForAllAvatars = [MEMORY[0x1E698E310] requestForAllAvatars];
    v14 = [(AVTAvatarRecordDataSource *)v11 initWithRecordStore:v12 fetchRequest:requestForAllAvatars environment:v6->_environment];
    recordDataSource = v6->_recordDataSource;
    v6->_recordDataSource = v14;

    v16 = [[AVTAvatarPickerDataSource alloc] initWithRecordDataSource:v6->_recordDataSource environment:v6->_environment allowAddItem:0];
    v17 = [AVTStickerTaskScheduler schedulerWithRecordDataSource:v6->_recordDataSource];
    v18 = [_AVTAvatarRecordImageProvider alloc];
    environment = [(AVTAvatarPickerDataSource *)v16 environment];
    v20 = [(_AVTAvatarRecordImageProvider *)v18 initWithEnvironment:environment taskScheduler:0];

    v21 = recordCopy;
    v22 = [AVTViewSessionProvider alloc];
    environment2 = [(AVTAvatarPickerDataSource *)v16 environment];
    [AVTViewSessionProvider backingSizeForEnvironment:environment2];
    v25 = v24;
    v27 = v26;
    v28 = +[AVTViewSessionProvider creatorForAVTView];
    environment3 = [(AVTAvatarPickerDataSource *)v16 environment];
    v30 = [(AVTViewSessionProvider *)v22 initWithAVTViewBackingSize:v28 viewCreator:environment3 environment:v25, v27];

    recordCopy = v21;
    v31 = v17;
    v32 = [[AVTSimpleAvatarPicker alloc] initWithDataSource:v16 recordImageProvider:v20 avtViewSessionProvider:v30 taskScheduler:v17 allowEditing:1 interItemSpacing:2.0];
    avatarPicker = v6->_avatarPicker;
    v6->_avatarPicker = v32;

    [(AVTSimpleAvatarPicker *)v6->_avatarPicker setDoesDisplayEditIconWhenAvailable:0];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      v35 = 15.0;
    }

    else
    {
      v35 = 45.0;
    }

    [(AVTSimpleAvatarPicker *)v6->_avatarPicker setContentInset:15.0, 10.0, v35, 10.0];
    objc_storeStrong(&v6->_avatarRecord, record);
    v36 = [[AVTPoseSelectionViewController alloc] initWithSelectedRecord:recordCopy];
    poseController = v6->_poseController;
    v6->_poseController = v36;

    [(AVTPoseSelectionViewController *)v6->_poseController setShouldNotifyDelegateOnSelection:1];
    [(AVTPoseSelectionViewController *)v6->_poseController setUsesSingleButtonCaptureReview:1];
    [(AVTPoseSelectionViewController *)v6->_poseController setDelegate:v6];
    v38 = [[AVTAvatarActionsProvider alloc] initWithAvatarRecord:v6->_avatarRecord dataSource:v6->_recordDataSource allowCreate:1];
    actionsModel = v6->_actionsModel;
    v6->_actionsModel = v38;

    v40 = [AVTAvatarInlineActionsController alloc];
    recordDataSource = [(AVTAvatarPickerDataSource *)v16 recordDataSource];
    environment4 = [(AVTAvatarPickerDataSource *)v16 environment];
    v43 = [(AVTAvatarInlineActionsController *)v40 initWithDataSource:recordDataSource avtViewProvider:v30 environment:environment4];
    actionsViewHandler = v6->_actionsViewHandler;
    v6->_actionsViewHandler = v43;

    [(AVTAvatarInlineActionsController *)v6->_actionsViewHandler setDelegate:v6];
    stickerConfiguration = v6->_stickerConfiguration;
    v6->_stickerConfiguration = 0;
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;

  v5.receiver = self;
  v5.super_class = AVTCombinedPickerViewController;
  [(AVTCombinedPickerViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v80[8] = *MEMORY[0x1E69E9840];
  v79.receiver = self;
  v79.super_class = AVTCombinedPickerViewController;
  [(AVTCombinedPickerViewController *)&v79 viewDidLoad];
  navigationItem = [(AVTCombinedPickerViewController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];

  navigationController = [(AVTCombinedPickerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  isTranslucent = [navigationBar isTranslucent];

  if ((isTranslucent & 1) == 0)
  {
    [(AVTCombinedPickerViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  }

  navigationItem2 = [(AVTCombinedPickerViewController *)self navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:2];

  view = [(AVTPoseSelectionViewController *)self->_poseController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  [(AVTCombinedPickerViewController *)self addChildViewController:self->_poseController];
  view2 = [(AVTCombinedPickerViewController *)self view];
  view3 = [(AVTPoseSelectionViewController *)self->_poseController view];
  [view2 addSubview:view3];

  [(AVTPoseSelectionViewController *)self->_poseController didMoveToParentViewController:self];
  view4 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(AVTSimpleAvatarPicker *)self->_avatarPicker setAvatarPickerDelegate:self];
  [(AVTSimpleAvatarPicker *)self->_avatarPicker setPresenterDelegate:self];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view5 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  [view5 setBackgroundColor:systemBackgroundColor];

  view6 = [(AVTCombinedPickerViewController *)self view];
  view7 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  [view6 addSubview:view7];

  backgroundColorOverride = self->_backgroundColorOverride;
  if (backgroundColorOverride)
  {
    view8 = [(AVTPoseSelectionViewController *)self->_poseController view];
    [view8 setBackgroundColor:backgroundColorOverride];

    v18 = self->_backgroundColorOverride;
    view9 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
    [view9 setBackgroundColor:v18];
  }

  layer = [MEMORY[0x1E6979398] layer];
  view10 = [(AVTCombinedPickerViewController *)self view];
  [view10 frame];
  [layer setFrame:{0.0, 0.0}];

  [layer setBorderWidth:1.0];
  v22 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
  v23 = layer;
  v78 = layer;
  [layer setBorderColor:{objc_msgSend(v22, "CGColor")}];

  view11 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  layer2 = [view11 layer];
  [layer2 addSublayer:v23];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    v27 = 80.0;
  }

  else
  {
    v27 = 110.0;
  }

  view12 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  leadingAnchor = [view12 leadingAnchor];
  view13 = [(AVTCombinedPickerViewController *)self view];
  leadingAnchor2 = [view13 leadingAnchor];
  v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v80[0] = v73;
  view14 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  trailingAnchor = [view14 trailingAnchor];
  view15 = [(AVTCombinedPickerViewController *)self view];
  trailingAnchor2 = [view15 trailingAnchor];
  v68 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v80[1] = v68;
  view16 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  bottomAnchor = [view16 bottomAnchor];
  view17 = [(AVTCombinedPickerViewController *)self view];
  bottomAnchor2 = [view17 bottomAnchor];
  v63 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v80[2] = v63;
  view18 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  heightAnchor = [view18 heightAnchor];
  v60 = [heightAnchor constraintEqualToConstant:v27];
  v80[3] = v60;
  view19 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  topAnchor = [view19 topAnchor];
  view20 = [(AVTPoseSelectionViewController *)self->_poseController view];
  bottomAnchor3 = [view20 bottomAnchor];
  v55 = [topAnchor constraintEqualToAnchor:bottomAnchor3];
  v80[4] = v55;
  view21 = [(AVTPoseSelectionViewController *)self->_poseController view];
  leadingAnchor3 = [view21 leadingAnchor];
  view22 = [(AVTCombinedPickerViewController *)self view];
  leadingAnchor4 = [view22 leadingAnchor];
  v49 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v80[5] = v49;
  view23 = [(AVTPoseSelectionViewController *)self->_poseController view];
  trailingAnchor3 = [view23 trailingAnchor];
  view24 = [(AVTCombinedPickerViewController *)self view];
  trailingAnchor4 = [view24 trailingAnchor];
  v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v80[6] = v31;
  view25 = [(AVTPoseSelectionViewController *)self->_poseController view];
  topAnchor2 = [view25 topAnchor];
  view26 = [(AVTCombinedPickerViewController *)self view];
  topAnchor3 = [view26 topAnchor];
  v36 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v80[7] = v36;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:8];

  [MEMORY[0x1E696ACD8] activateConstraints:v54];
  v37 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_didTapCancel_];
  navigationItem3 = [(AVTCombinedPickerViewController *)self navigationItem];
  [navigationItem3 setLeftBarButtonItem:v37];

  v39 = objc_alloc(MEMORY[0x1E69DC708]);
  v40 = AVTAvatarUIBundle();
  v41 = [v40 localizedStringForKey:@"NEXT" value:&stru_1F39618F0 table:@"Localized"];
  v42 = [v39 initWithTitle:v41 style:2 target:self action:sel_didTapDone_];
  doneButton = self->_doneButton;
  self->_doneButton = v42;

  v44 = self->_doneButton;
  navigationItem4 = [(AVTCombinedPickerViewController *)self navigationItem];
  [navigationItem4 setRightBarButtonItem:v44];

  [(UIBarButtonItem *)self->_doneButton setEnabled:0];
  [(AVTSimpleAvatarPicker *)self->_avatarPicker reloadDataSource];
  avatarPicker = self->_avatarPicker;
  identifier = [(AVTAvatarRecord *)self->_avatarRecord identifier];
  [(AVTSimpleAvatarPicker *)avatarPicker selectAvatarRecordWithIdentifier:identifier animated:0];

  [(AVTCombinedPickerViewController *)self updateActionModel];
  [(AVTCombinedPickerViewController *)self beginObservingAvatarStoreChanges];
}

- (id)defaultAvatar
{
  avatarStore = self->_avatarStore;
  requestForStorePrimaryAvatar = [MEMORY[0x1E698E310] requestForStorePrimaryAvatar];
  v4 = [(AVTAvatarStore *)avatarStore avatarsForFetchRequest:requestForStorePrimaryAvatar error:0];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (void)setBackgroundColorOverride:(id)override
{
  objc_storeStrong(&self->_backgroundColorOverride, override);
  overrideCopy = override;
  view = [(AVTCombinedPickerViewController *)self view];
  [view setBackgroundColor:overrideCopy];

  view2 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  [view2 setBackgroundColor:overrideCopy];

  [(AVTPoseSelectionViewController *)self->_poseController setBackgroundColorOverride:overrideCopy];
}

- (void)beginObservingAvatarStoreChanges
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E698E308];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__AVTCombinedPickerViewController_beginObservingAvatarStoreChanges__block_invoke;
  v7[3] = &unk_1E7F3B248;
  objc_copyWeak(&v8, &location);
  v5 = [defaultCenter addObserverForName:v4 object:0 queue:0 usingBlock:v7];
  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __67__AVTCombinedPickerViewController_beginObservingAvatarStoreChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshPickerForStoreUpdate];
}

- (void)refreshPickerForStoreUpdate
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__AVTCombinedPickerViewController_refreshPickerForStoreUpdate__block_invoke;
  v2[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __62__AVTCombinedPickerViewController_refreshPickerForStoreUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained avatarPicker];

  if (v1)
  {
    v2 = [WeakRetained avatarPicker];
    [v2 reloadDataSource];

    v3 = [WeakRetained avatarPicker];
    v4 = [v3 selectedAvatar];
    v5 = [WeakRetained avatarRecord];

    if (v4 != v5)
    {
      v6 = [WeakRetained avatarPicker];
      v7 = [WeakRetained avatarRecord];
      v8 = [v7 identifier];
      [v6 selectAvatarRecordWithIdentifier:v8 animated:1];
    }
  }
}

- (void)endObservingAvatarStoreChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;
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

- (void)returnPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([(UIBarButtonItem *)self->_doneButton isEnabled])
  {
    [(AVTCombinedPickerViewController *)self didTapDone:pressedCopy];
  }
}

- (void)didTapDone:(id)done
{
  delegate = [(AVTCombinedPickerViewController *)self delegate];
  [delegate combinedPickerViewController:self didSelectRecord:self->_avatarRecord withStickerConfiguration:self->_stickerConfiguration];
}

- (void)didTapCancel:(id)cancel
{
  delegate = [(AVTCombinedPickerViewController *)self delegate];
  [delegate combinedPickerViewControllerDidCancel:self];
}

- (void)didSelectAvatarRecord:(id)record
{
  recordCopy = record;
  if (recordCopy && self->_avatarRecord != recordCopy)
  {
    v6 = recordCopy;
    objc_storeStrong(&self->_avatarRecord, record);
    [(AVTPoseSelectionViewController *)self->_poseController setNewAvatarRecord:v6];
    [(AVTCombinedPickerViewController *)self updateActionModel];
    recordCopy = v6;
  }
}

- (void)updateActionModel
{
  v3 = [[AVTAvatarActionsProvider alloc] initWithAvatarRecord:self->_avatarRecord dataSource:self->_recordDataSource allowCreate:0];
  actionsModel = self->_actionsModel;
  self->_actionsModel = v3;

  [(AVTAvatarInlineActionsController *)self->_actionsViewHandler updateWithActionsModel:self->_actionsModel];
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(AVTAvatarActionsProvider *)self->_actionsModel canPerformActionType:0])
  {
    editAction = [(AVTAvatarActionsProvider *)self->_actionsModel editAction];
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil"];
    [editAction setImage:v6];

    [v12 addObject:editAction];
  }

  if ([(AVTAvatarActionsProvider *)self->_actionsModel canPerformActionType:1])
  {
    duplicateAction = [(AVTAvatarActionsProvider *)self->_actionsModel duplicateAction];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
    [duplicateAction setImage:v8];

    [v12 addObject:duplicateAction];
  }

  if ([(AVTAvatarActionsProvider *)self->_actionsModel canPerformActionType:2])
  {
    deleteAction = [(AVTAvatarActionsProvider *)self->_actionsModel deleteAction];
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    [deleteAction setImage:v10];

    [v12 addObject:deleteAction];
  }

  if ([v12 count])
  {
    v11 = [MEMORY[0x1E69DCC60] menuWithChildren:v12];
    [(AVTPoseSelectionViewController *)self->_poseController setHeaderMenu:v11];
  }

  else
  {
    [(AVTPoseSelectionViewController *)self->_poseController setHeaderMenu:0];
  }
}

- (void)presentUpdatedAvatarRecord:(id)record animated:(BOOL)animated completion:(id)completion
{
  recordCopy = record;
  completionCopy = completion;
  if (recordCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__AVTCombinedPickerViewController_presentUpdatedAvatarRecord_animated_completion___block_invoke;
    v10[3] = &unk_1E7F3CD18;
    v10[4] = self;
    v11 = recordCopy;
    animatedCopy = animated;
    v12 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

uint64_t __82__AVTCombinedPickerViewController_presentUpdatedAvatarRecord_animated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) avatarPicker];
  v3 = [v2 selectedAvatar];
  v4 = *(a1 + 40);

  if (v3 != v4)
  {
    v5 = [*(a1 + 32) avatarPicker];
    v6 = [*(a1 + 40) identifier];
    [v5 selectAvatarRecordWithIdentifier:v6 animated:*(a1 + 56)];
  }

  [*(a1 + 32) didSelectAvatarRecord:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)wrapAndPresentViewController:(id)controller animated:(BOOL)animated
{
  animated = [AVTUIControllerPresentation presentationWithWrappingForController:controller, animated];
  [(AVTCombinedPickerViewController *)self presentAvatarUIController:animated animated:1];
}

- (void)poseSelectionController:(id)controller didSelectPoseWithConfiguration:(id)configuration
{
  objc_storeStrong(&self->_stickerConfiguration, configuration);
  configurationCopy = configuration;
  [(UIBarButtonItem *)self->_doneButton setEnabled:1];
}

- (void)poseSelectionControllerDidCancel:(id)cancel
{
  delegate = [(AVTCombinedPickerViewController *)self delegate];
  [delegate combinedPickerViewControllerDidCancel:self];
}

- (void)poseSelectionController:(id)controller didSetMode:(unint64_t)mode withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_storeStrong(&self->_stickerConfiguration, configuration);
  if (self->_stickerConfiguration)
  {
    v8 = mode == 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  [(UIBarButtonItem *)self->_doneButton setEnabled:v9];
}

- (void)presentAvatarUIController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controller = [controller controller];
  view = [controller view];
  traitCollection = [view traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    [controller setPreferredContentSize:{624.0, 746.0}];
    [controller setModalInPresentation:1];
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [controller setModalPresentationStyle:v9];
  [(AVTCombinedPickerViewController *)self presentViewController:controller animated:animatedCopy completion:0];
}

- (void)actionsController:(id)controller didDeleteRecord:(id)record withRecordUpdate:(id)update completionBlock:(id)block
{
  if (update)
  {
    avatarRecord = [update avatarRecord];
    if (avatarRecord || ([(AVTCombinedPickerViewController *)self defaultAvatar], (avatarRecord = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = avatarRecord;
      [(AVTCombinedPickerViewController *)self presentUpdatedAvatarRecord:avatarRecord animated:1];
    }
  }
}

- (void)actionsController:(id)controller didDuplicateToRecord:(id)record completionBlock:(id)block
{
  controllerCopy = controller;
  recordCopy = record;
  blockCopy = block;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__AVTCombinedPickerViewController_actionsController_didDuplicateToRecord_completionBlock___block_invoke;
  v11[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v12, &location);
  [(AVTCombinedPickerViewController *)self presentUpdatedAvatarRecord:recordCopy animated:1 completion:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __90__AVTCombinedPickerViewController_actionsController_didDuplicateToRecord_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained actionsModel];
  [v1 didTapEdit];
}

- (AVTCombinedPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end