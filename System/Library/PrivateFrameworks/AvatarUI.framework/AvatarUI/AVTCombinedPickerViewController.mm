@interface AVTCombinedPickerViewController
- (AVTCombinedPickerViewController)initWithSelectedRecord:(id)a3;
- (AVTCombinedPickerViewControllerDelegate)delegate;
- (id)defaultAvatar;
- (id)keyCommands;
- (void)actionsController:(id)a3 didDeleteRecord:(id)a4 withRecordUpdate:(id)a5 completionBlock:(id)a6;
- (void)actionsController:(id)a3 didDuplicateToRecord:(id)a4 completionBlock:(id)a5;
- (void)beginObservingAvatarStoreChanges;
- (void)dealloc;
- (void)didSelectAvatarRecord:(id)a3;
- (void)didTapCancel:(id)a3;
- (void)didTapDone:(id)a3;
- (void)endObservingAvatarStoreChanges;
- (void)poseSelectionController:(id)a3 didSelectPoseWithConfiguration:(id)a4;
- (void)poseSelectionController:(id)a3 didSetMode:(unint64_t)a4 withConfiguration:(id)a5;
- (void)poseSelectionControllerDidCancel:(id)a3;
- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4;
- (void)presentUpdatedAvatarRecord:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)refreshPickerForStoreUpdate;
- (void)returnPressed:(id)a3;
- (void)setBackgroundColorOverride:(id)a3;
- (void)updateActionModel;
- (void)viewDidLoad;
- (void)wrapAndPresentViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation AVTCombinedPickerViewController

- (AVTCombinedPickerViewController)initWithSelectedRecord:(id)a3
{
  v5 = a3;
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
    v13 = [MEMORY[0x1E698E310] requestForAllAvatars];
    v14 = [(AVTAvatarRecordDataSource *)v11 initWithRecordStore:v12 fetchRequest:v13 environment:v6->_environment];
    recordDataSource = v6->_recordDataSource;
    v6->_recordDataSource = v14;

    v16 = [[AVTAvatarPickerDataSource alloc] initWithRecordDataSource:v6->_recordDataSource environment:v6->_environment allowAddItem:0];
    v17 = [AVTStickerTaskScheduler schedulerWithRecordDataSource:v6->_recordDataSource];
    v18 = [_AVTAvatarRecordImageProvider alloc];
    v19 = [(AVTAvatarPickerDataSource *)v16 environment];
    v20 = [(_AVTAvatarRecordImageProvider *)v18 initWithEnvironment:v19 taskScheduler:0];

    v21 = v5;
    v22 = [AVTViewSessionProvider alloc];
    v23 = [(AVTAvatarPickerDataSource *)v16 environment];
    [AVTViewSessionProvider backingSizeForEnvironment:v23];
    v25 = v24;
    v27 = v26;
    v28 = +[AVTViewSessionProvider creatorForAVTView];
    v29 = [(AVTAvatarPickerDataSource *)v16 environment];
    v30 = [(AVTViewSessionProvider *)v22 initWithAVTViewBackingSize:v28 viewCreator:v29 environment:v25, v27];

    v5 = v21;
    v31 = v17;
    v32 = [[AVTSimpleAvatarPicker alloc] initWithDataSource:v16 recordImageProvider:v20 avtViewSessionProvider:v30 taskScheduler:v17 allowEditing:1 interItemSpacing:2.0];
    avatarPicker = v6->_avatarPicker;
    v6->_avatarPicker = v32;

    [(AVTSimpleAvatarPicker *)v6->_avatarPicker setDoesDisplayEditIconWhenAvailable:0];
    v34 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v34 userInterfaceIdiom] == 1)
    {
      v35 = 15.0;
    }

    else
    {
      v35 = 45.0;
    }

    [(AVTSimpleAvatarPicker *)v6->_avatarPicker setContentInset:15.0, 10.0, v35, 10.0];
    objc_storeStrong(&v6->_avatarRecord, a3);
    v36 = [[AVTPoseSelectionViewController alloc] initWithSelectedRecord:v5];
    poseController = v6->_poseController;
    v6->_poseController = v36;

    [(AVTPoseSelectionViewController *)v6->_poseController setShouldNotifyDelegateOnSelection:1];
    [(AVTPoseSelectionViewController *)v6->_poseController setUsesSingleButtonCaptureReview:1];
    [(AVTPoseSelectionViewController *)v6->_poseController setDelegate:v6];
    v38 = [[AVTAvatarActionsProvider alloc] initWithAvatarRecord:v6->_avatarRecord dataSource:v6->_recordDataSource allowCreate:1];
    actionsModel = v6->_actionsModel;
    v6->_actionsModel = v38;

    v40 = [AVTAvatarInlineActionsController alloc];
    v41 = [(AVTAvatarPickerDataSource *)v16 recordDataSource];
    v42 = [(AVTAvatarPickerDataSource *)v16 environment];
    v43 = [(AVTAvatarInlineActionsController *)v40 initWithDataSource:v41 avtViewProvider:v30 environment:v42];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_avatarStoreChangeObserver];

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
  v3 = [(AVTCombinedPickerViewController *)self navigationItem];
  [v3 _setBackgroundHidden:1];

  v4 = [(AVTCombinedPickerViewController *)self navigationController];
  v5 = [v4 navigationBar];
  v6 = [v5 isTranslucent];

  if ((v6 & 1) == 0)
  {
    [(AVTCombinedPickerViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  }

  v7 = [(AVTCombinedPickerViewController *)self navigationItem];
  [v7 setLargeTitleDisplayMode:2];

  v8 = [(AVTPoseSelectionViewController *)self->_poseController view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(AVTCombinedPickerViewController *)self addChildViewController:self->_poseController];
  v9 = [(AVTCombinedPickerViewController *)self view];
  v10 = [(AVTPoseSelectionViewController *)self->_poseController view];
  [v9 addSubview:v10];

  [(AVTPoseSelectionViewController *)self->_poseController didMoveToParentViewController:self];
  v11 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(AVTSimpleAvatarPicker *)self->_avatarPicker setAvatarPickerDelegate:self];
  [(AVTSimpleAvatarPicker *)self->_avatarPicker setPresenterDelegate:self];
  v12 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v13 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  [v13 setBackgroundColor:v12];

  v14 = [(AVTCombinedPickerViewController *)self view];
  v15 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  [v14 addSubview:v15];

  backgroundColorOverride = self->_backgroundColorOverride;
  if (backgroundColorOverride)
  {
    v17 = [(AVTPoseSelectionViewController *)self->_poseController view];
    [v17 setBackgroundColor:backgroundColorOverride];

    v18 = self->_backgroundColorOverride;
    v19 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
    [v19 setBackgroundColor:v18];
  }

  v20 = [MEMORY[0x1E6979398] layer];
  v21 = [(AVTCombinedPickerViewController *)self view];
  [v21 frame];
  [v20 setFrame:{0.0, 0.0}];

  [v20 setBorderWidth:1.0];
  v22 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
  v23 = v20;
  v78 = v20;
  [v20 setBorderColor:{objc_msgSend(v22, "CGColor")}];

  v24 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  v25 = [v24 layer];
  [v25 addSublayer:v23];

  v26 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v26 userInterfaceIdiom] == 1)
  {
    v27 = 80.0;
  }

  else
  {
    v27 = 110.0;
  }

  v77 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  v75 = [v77 leadingAnchor];
  v76 = [(AVTCombinedPickerViewController *)self view];
  v74 = [v76 leadingAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v80[0] = v73;
  v72 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  v70 = [v72 trailingAnchor];
  v71 = [(AVTCombinedPickerViewController *)self view];
  v69 = [v71 trailingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v80[1] = v68;
  v67 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  v65 = [v67 bottomAnchor];
  v66 = [(AVTCombinedPickerViewController *)self view];
  v64 = [v66 bottomAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v80[2] = v63;
  v62 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  v61 = [v62 heightAnchor];
  v60 = [v61 constraintEqualToConstant:v27];
  v80[3] = v60;
  v59 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  v57 = [v59 topAnchor];
  v58 = [(AVTPoseSelectionViewController *)self->_poseController view];
  v56 = [v58 bottomAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v80[4] = v55;
  v53 = [(AVTPoseSelectionViewController *)self->_poseController view];
  v51 = [v53 leadingAnchor];
  v52 = [(AVTCombinedPickerViewController *)self view];
  v50 = [v52 leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v80[5] = v49;
  v48 = [(AVTPoseSelectionViewController *)self->_poseController view];
  v28 = [v48 trailingAnchor];
  v29 = [(AVTCombinedPickerViewController *)self view];
  v30 = [v29 trailingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  v80[6] = v31;
  v32 = [(AVTPoseSelectionViewController *)self->_poseController view];
  v33 = [v32 topAnchor];
  v34 = [(AVTCombinedPickerViewController *)self view];
  v35 = [v34 topAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  v80[7] = v36;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:8];

  [MEMORY[0x1E696ACD8] activateConstraints:v54];
  v37 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_didTapCancel_];
  v38 = [(AVTCombinedPickerViewController *)self navigationItem];
  [v38 setLeftBarButtonItem:v37];

  v39 = objc_alloc(MEMORY[0x1E69DC708]);
  v40 = AVTAvatarUIBundle();
  v41 = [v40 localizedStringForKey:@"NEXT" value:&stru_1F39618F0 table:@"Localized"];
  v42 = [v39 initWithTitle:v41 style:2 target:self action:sel_didTapDone_];
  doneButton = self->_doneButton;
  self->_doneButton = v42;

  v44 = self->_doneButton;
  v45 = [(AVTCombinedPickerViewController *)self navigationItem];
  [v45 setRightBarButtonItem:v44];

  [(UIBarButtonItem *)self->_doneButton setEnabled:0];
  [(AVTSimpleAvatarPicker *)self->_avatarPicker reloadDataSource];
  avatarPicker = self->_avatarPicker;
  v47 = [(AVTAvatarRecord *)self->_avatarRecord identifier];
  [(AVTSimpleAvatarPicker *)avatarPicker selectAvatarRecordWithIdentifier:v47 animated:0];

  [(AVTCombinedPickerViewController *)self updateActionModel];
  [(AVTCombinedPickerViewController *)self beginObservingAvatarStoreChanges];
}

- (id)defaultAvatar
{
  avatarStore = self->_avatarStore;
  v3 = [MEMORY[0x1E698E310] requestForStorePrimaryAvatar];
  v4 = [(AVTAvatarStore *)avatarStore avatarsForFetchRequest:v3 error:0];
  v5 = [v4 firstObject];

  return v5;
}

- (void)setBackgroundColorOverride:(id)a3
{
  objc_storeStrong(&self->_backgroundColorOverride, a3);
  v7 = a3;
  v5 = [(AVTCombinedPickerViewController *)self view];
  [v5 setBackgroundColor:v7];

  v6 = [(AVTSimpleAvatarPicker *)self->_avatarPicker view];
  [v6 setBackgroundColor:v7];

  [(AVTPoseSelectionViewController *)self->_poseController setBackgroundColorOverride:v7];
}

- (void)beginObservingAvatarStoreChanges
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E698E308];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__AVTCombinedPickerViewController_beginObservingAvatarStoreChanges__block_invoke;
  v7[3] = &unk_1E7F3B248;
  objc_copyWeak(&v8, &location);
  v5 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v7];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_avatarStoreChangeObserver];

  avatarStoreChangeObserver = self->_avatarStoreChangeObserver;
  self->_avatarStoreChangeObserver = 0;
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

- (void)returnPressed:(id)a3
{
  v4 = a3;
  if ([(UIBarButtonItem *)self->_doneButton isEnabled])
  {
    [(AVTCombinedPickerViewController *)self didTapDone:v4];
  }
}

- (void)didTapDone:(id)a3
{
  v4 = [(AVTCombinedPickerViewController *)self delegate];
  [v4 combinedPickerViewController:self didSelectRecord:self->_avatarRecord withStickerConfiguration:self->_stickerConfiguration];
}

- (void)didTapCancel:(id)a3
{
  v4 = [(AVTCombinedPickerViewController *)self delegate];
  [v4 combinedPickerViewControllerDidCancel:self];
}

- (void)didSelectAvatarRecord:(id)a3
{
  v5 = a3;
  if (v5 && self->_avatarRecord != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_avatarRecord, a3);
    [(AVTPoseSelectionViewController *)self->_poseController setNewAvatarRecord:v6];
    [(AVTCombinedPickerViewController *)self updateActionModel];
    v5 = v6;
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
    v5 = [(AVTAvatarActionsProvider *)self->_actionsModel editAction];
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil"];
    [v5 setImage:v6];

    [v12 addObject:v5];
  }

  if ([(AVTAvatarActionsProvider *)self->_actionsModel canPerformActionType:1])
  {
    v7 = [(AVTAvatarActionsProvider *)self->_actionsModel duplicateAction];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
    [v7 setImage:v8];

    [v12 addObject:v7];
  }

  if ([(AVTAvatarActionsProvider *)self->_actionsModel canPerformActionType:2])
  {
    v9 = [(AVTAvatarActionsProvider *)self->_actionsModel deleteAction];
    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    [v9 setImage:v10];

    [v12 addObject:v9];
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

- (void)presentUpdatedAvatarRecord:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__AVTCombinedPickerViewController_presentUpdatedAvatarRecord_animated_completion___block_invoke;
    v10[3] = &unk_1E7F3CD18;
    v10[4] = self;
    v11 = v8;
    v13 = a4;
    v12 = v9;
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

- (void)wrapAndPresentViewController:(id)a3 animated:(BOOL)a4
{
  v5 = [AVTUIControllerPresentation presentationWithWrappingForController:a3, a4];
  [(AVTCombinedPickerViewController *)self presentAvatarUIController:v5 animated:1];
}

- (void)poseSelectionController:(id)a3 didSelectPoseWithConfiguration:(id)a4
{
  objc_storeStrong(&self->_stickerConfiguration, a4);
  v6 = a4;
  [(UIBarButtonItem *)self->_doneButton setEnabled:1];
}

- (void)poseSelectionControllerDidCancel:(id)a3
{
  v4 = [(AVTCombinedPickerViewController *)self delegate];
  [v4 combinedPickerViewControllerDidCancel:self];
}

- (void)poseSelectionController:(id)a3 didSetMode:(unint64_t)a4 withConfiguration:(id)a5
{
  v10 = a5;
  objc_storeStrong(&self->_stickerConfiguration, a5);
  if (self->_stickerConfiguration)
  {
    v8 = a4 == 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  [(UIBarButtonItem *)self->_doneButton setEnabled:v9];
}

- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = [a3 controller];
  v6 = [v10 view];
  v7 = [v6 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 == 2)
  {
    [v10 setPreferredContentSize:{624.0, 746.0}];
    [v10 setModalInPresentation:1];
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [v10 setModalPresentationStyle:v9];
  [(AVTCombinedPickerViewController *)self presentViewController:v10 animated:v4 completion:0];
}

- (void)actionsController:(id)a3 didDeleteRecord:(id)a4 withRecordUpdate:(id)a5 completionBlock:(id)a6
{
  if (a5)
  {
    v7 = [a5 avatarRecord];
    if (v7 || ([(AVTCombinedPickerViewController *)self defaultAvatar], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      [(AVTCombinedPickerViewController *)self presentUpdatedAvatarRecord:v7 animated:1];
    }
  }
}

- (void)actionsController:(id)a3 didDuplicateToRecord:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__AVTCombinedPickerViewController_actionsController_didDuplicateToRecord_completionBlock___block_invoke;
  v11[3] = &unk_1E7F3AFD0;
  objc_copyWeak(&v12, &location);
  [(AVTCombinedPickerViewController *)self presentUpdatedAvatarRecord:v9 animated:1 completion:v11];
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