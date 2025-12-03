@interface AVTStickerViewController
+ (double)headerEdgeMarginForEnvironment:(id)environment;
+ (double)headerHeightForWidth:(double)width interitemSpacing:(double)spacing environment:(id)environment;
+ (id)inUseStickerPack;
+ (id)stickerViewControllerForStore:(id)store allowEditing:(BOOL)editing allowPeel:(BOOL)peel;
+ (id)stickerViewControllerForStore:(id)store fetchRequest:(id)request stickerPacks:(id)packs stickerConfigurationNames:(id)names avtViewSessionProvider:(id)provider allowEditing:(BOOL)editing allowPeel:(BOOL)peel;
+ (id)stickersAvatarsFetchRequest;
+ (unint64_t)minimumNumberOfVisibleItemForWidth:(double)width environment:(id)environment;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate;
- (AVTStickerSelectionDelegate)stickerSelectionDelegate;
- (AVTStickerSheetControllerProvider)stickerSheetControllerProvider;
- (AVTStickerViewController)initWithStore:(id)store fetchRequest:(id)request stickerPacks:(id)packs stickerConfigurationNames:(id)names selectedRecordIdentifier:(id)identifier allowEditing:(BOOL)editing allowPeel:(BOOL)peel environment:(id)self0;
- (AVTStickerViewControllerImageDelegate)imageDelegate;
- (BOOL)avatarPicker:(id)picker shouldPresentMemojiEditorForAvatarRecord:(id)record;
- (BOOL)shouldPresentPaddleView;
- (double)headerMaxY;
- (void)avatarPicker:(id)picker didSelectAvatarRecord:(id)record;
- (void)clearStickerSelection;
- (void)dataSource:(id)source didAddRecord:(id)record atIndex:(unint64_t)index;
- (void)dataSource:(id)source didEditRecord:(id)record atIndex:(unint64_t)index;
- (void)dataSource:(id)source didRemoveRecord:(id)record atIndex:(unint64_t)index;
- (void)dismissAvatarUIControllerAnimated:(BOOL)animated;
- (void)dismissPaddleViewIfNecessary;
- (void)editCurrentMemoji;
- (void)paddleViewTapped:(id)tapped;
- (void)presentAvatarUIController:(id)controller animated:(BOOL)animated;
- (void)presentMemojiEditorForCreation;
- (void)presentPaddleViewIfNeeded;
- (void)reloadData;
- (void)reloadPickerView;
- (void)selectAvatarRecordAtIndex:(int64_t)index hideHeader:(BOOL)header;
- (void)selectDefaultAvatarIfNeeded;
- (void)selectRecordForIdentifier:(id)identifier;
- (void)setAllowEditing:(BOOL)editing;
- (void)snapshotInBlock:(id)block;
- (void)stickerControllerDidEnterBackground;
- (void)stickerControllerWillEnterForeground;
- (void)swipeLeftWithDelay:(int64_t)delay forCompletionHandler:(id)handler;
- (void)swipeRightWithDelay:(int64_t)delay forCompletionHandler:(id)handler;
- (void)updateHeaderPositionWithContentOffset:(CGPoint)offset;
- (void)updateHeaderSize;
- (void)updatePaddleViewLayoutIfNecessary;
- (void)updatePagingControllerInsets;
- (void)updateScrollToShowAvatarPicker:(BOOL)picker;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AVTStickerViewController

+ (id)stickerViewControllerForStore:(id)store allowEditing:(BOOL)editing allowPeel:(BOOL)peel
{
  editingCopy = editing;
  v17[1] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v8 = +[AVTUIEnvironment defaultEnvironment];
  v9 = AVTUIStickersLastSelected();
  v10 = [AVTStickerViewController alloc];
  v11 = +[AVTStickerViewController stickersAvatarsFetchRequest];
  v12 = +[AVTStickerViewController inUseStickerPack];
  v17[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  LOBYTE(v16) = peel;
  v14 = [(AVTStickerViewController *)v10 initWithStore:storeCopy fetchRequest:v11 stickerPacks:v13 stickerConfigurationNames:0 selectedRecordIdentifier:v9 allowEditing:editingCopy allowPeel:v16 environment:v8];

  return v14;
}

+ (id)stickerViewControllerForStore:(id)store fetchRequest:(id)request stickerPacks:(id)packs stickerConfigurationNames:(id)names avtViewSessionProvider:(id)provider allowEditing:(BOOL)editing allowPeel:(BOOL)peel
{
  editingCopy = editing;
  providerCopy = provider;
  namesCopy = names;
  packsCopy = packs;
  requestCopy = request;
  storeCopy = store;
  v19 = +[AVTUIEnvironment defaultEnvironment];
  v20 = AVTUIStickersLastSelected();
  LOBYTE(v23) = peel;
  v21 = [[AVTStickerViewController alloc] initWithStore:storeCopy fetchRequest:requestCopy stickerPacks:packsCopy stickerConfigurationNames:namesCopy selectedRecordIdentifier:v20 allowEditing:editingCopy allowPeel:v23 environment:v19];

  [(AVTStickerViewController *)v21 setViewSessionProvider:providerCopy];

  return v21;
}

+ (double)headerEdgeMarginForEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = 10.0;
  if (([environmentCopy deviceIsMac] & 1) == 0 && (objc_msgSend(environmentCopy, "deviceIsPad") & 1) == 0)
  {
    if ([environmentCopy deviceIsVision])
    {
      v4 = 24.0;
    }

    else
    {
      v4 = 8.0;
    }
  }

  return v4;
}

+ (unint64_t)minimumNumberOfVisibleItemForWidth:(double)width environment:(id)environment
{
  if ([environment deviceIsMac])
  {
    v5 = 56.0;
  }

  else if (width <= 490.0)
  {
    v5 = 62.5;
  }

  else
  {
    v5 = 70.2352941;
  }

  return vcvtmd_u64_f64(width / v5);
}

+ (double)headerHeightForWidth:(double)width interitemSpacing:(double)spacing environment:(id)environment
{
  environmentCopy = environment;
  v9 = [self minimumNumberOfVisibleItemForWidth:environmentCopy environment:width];
  [self headerEdgeMarginForEnvironment:environmentCopy];
  v11 = v10;

  return fmin((width - spacing * v9 + v11 * -2.0) / (v9 + 0.5), 70.0);
}

+ (id)stickersAvatarsFetchRequest
{
  v2 = MEMORY[0x1E698E2C0];
  inUseStickerPack = [self inUseStickerPack];
  v4 = [v2 unavailableAnimojiNamesForStickerPack:inUseStickerPack];

  v5 = [MEMORY[0x1E698E310] requestForAllAvatarsExcluding:v4];

  return v5;
}

+ (id)inUseStickerPack
{
  v2 = AVTUIShowPrereleaseStickerPack_once();
  v3 = *MEMORY[0x1E698E300];
  if (v2 && ([MEMORY[0x1E698E2C0] availableStickerNamesForMemojiInStickerPack:*MEMORY[0x1E698E300]], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, !v5))
  {
    AVTUISetShowPrereleaseStickerPack();
    v6 = *MEMORY[0x1E698E2E0];
  }

  else if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = *MEMORY[0x1E698E2E0];
  }

  return v6;
}

- (AVTStickerViewController)initWithStore:(id)store fetchRequest:(id)request stickerPacks:(id)packs stickerConfigurationNames:(id)names selectedRecordIdentifier:(id)identifier allowEditing:(BOOL)editing allowPeel:(BOOL)peel environment:(id)self0
{
  storeCopy = store;
  requestCopy = request;
  packsCopy = packs;
  namesCopy = names;
  identifierCopy = identifier;
  environmentCopy = environment;
  v30.receiver = self;
  v30.super_class = AVTStickerViewController;
  v20 = [(AVTStickerViewController *)&v30 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_store, store);
    v22 = [[AVTAvatarRecordDataSource alloc] initWithRecordStore:storeCopy fetchRequest:requestCopy environment:environmentCopy];
    recordDataSource = v21->_recordDataSource;
    v21->_recordDataSource = v22;

    objc_storeStrong(&v21->_stickerPacks, packs);
    objc_storeStrong(&v21->_stickerConfigurationNames, names);
    logger = [environmentCopy logger];
    logger = v21->_logger;
    v21->_logger = logger;

    objc_storeStrong(&v21->_environment, environment);
    v21->_allowEditing = editing;
    v21->_allowPeel = peel;
    objc_storeStrong(&v21->_selectedRecordIdentifier, identifier);
  }

  return v21;
}

- (void)viewDidLoad
{
  v71.receiver = self;
  v71.super_class = AVTStickerViewController;
  [(AVTStickerViewController *)&v71 viewDidLoad];
  view = [(AVTStickerViewController *)self view];
  [view setClipsToBounds:1];

  v4 = [AVTAvatarPickerDataSource alloc];
  recordDataSource = [(AVTStickerViewController *)self recordDataSource];
  environment = [(AVTStickerViewController *)self environment];
  v7 = [(AVTAvatarPickerDataSource *)v4 initWithRecordDataSource:recordDataSource environment:environment allowAddItem:0];
  [(AVTStickerViewController *)self setAvatarPickerDataSource:v7];

  avatarPickerDataSource = [(AVTStickerViewController *)self avatarPickerDataSource];
  [avatarPickerDataSource reloadModel];

  recordDataSource2 = [(AVTStickerViewController *)self recordDataSource];
  [recordDataSource2 addObserver:self];

  recordDataSource3 = [(AVTStickerViewController *)self recordDataSource];
  v11 = [AVTStickerTaskScheduler schedulerWithRecordDataSource:recordDataSource3];
  [(AVTStickerViewController *)self setTaskScheduler:v11];

  v12 = [_AVTAvatarRecordImageProvider alloc];
  environment2 = [(AVTStickerViewController *)self environment];
  v14 = [(_AVTAvatarRecordImageProvider *)v12 initWithEnvironment:environment2 taskScheduler:0];

  v15 = [AVTStickerConfigurationProvider alloc];
  environment3 = [(AVTStickerViewController *)self environment];
  stickerPacks = self->_stickerPacks;
  stickerConfigurationNames = [(AVTStickerViewController *)self stickerConfigurationNames];
  v19 = [(AVTStickerConfigurationProvider *)v15 initWithEnvironment:environment3 forStickerPacks:stickerPacks stickerConfigurationNames:stickerConfigurationNames];

  v20 = [AVTStickerPagingController alloc];
  recordDataSource4 = [(AVTStickerViewController *)self recordDataSource];
  taskScheduler = [(AVTStickerViewController *)self taskScheduler];
  environment4 = [(AVTStickerViewController *)self environment];
  v24 = [(AVTStickerPagingController *)v20 initWithRecordDataSource:recordDataSource4 recordImageProvider:v14 stickerConfigurationProvider:v19 taskScheduler:taskScheduler environment:environment4 allowsPeel:[(AVTStickerViewController *)self allowPeel]];

  [(AVTStickerPagingController *)v24 setAvatarPickerDelegate:self];
  [(AVTStickerPagingController *)v24 setPresenterDelegate:self];
  [(AVTStickerPagingController *)v24 setDelegate:self];
  disclosureValidationDelegate = [(AVTStickerViewController *)self disclosureValidationDelegate];
  [(AVTStickerPagingController *)v24 setDisclosureValidationDelegate:disclosureValidationDelegate];

  stickerSelectionDelegate = [(AVTStickerViewController *)self stickerSelectionDelegate];
  [(AVTStickerPagingController *)v24 setStickerSelectionDelegate:stickerSelectionDelegate];

  stickerSheetControllerProvider = [(AVTStickerViewController *)self stickerSheetControllerProvider];
  [(AVTStickerPagingController *)v24 setStickerSheetControllerProvider:stickerSheetControllerProvider];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view2 = [(AVTStickerPagingController *)v24 view];
  [view2 setBackgroundColor:clearColor];

  view3 = [(AVTStickerViewController *)self view];
  [view3 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  view4 = [(AVTStickerPagingController *)v24 view];
  [view4 setFrame:{v32, v34, v36, v38}];

  view5 = [(AVTStickerPagingController *)v24 view];
  [view5 setAutoresizingMask:18];

  view6 = [(AVTStickerViewController *)self view];
  view7 = [(AVTStickerPagingController *)v24 view];
  [view6 addSubview:view7];

  [(AVTStickerViewController *)self setPagingController:v24];
  viewSessionProvider = [(AVTStickerViewController *)self viewSessionProvider];
  if (!viewSessionProvider)
  {
    v44 = [AVTViewSessionProvider alloc];
    avatarPickerDataSource2 = [(AVTStickerViewController *)self avatarPickerDataSource];
    environment5 = [avatarPickerDataSource2 environment];
    [AVTViewSessionProvider backingSizeForEnvironment:environment5];
    v48 = v47;
    v50 = v49;
    v51 = +[AVTViewSessionProvider creatorForAVTView];
    avatarPickerDataSource3 = [(AVTStickerViewController *)self avatarPickerDataSource];
    environment6 = [avatarPickerDataSource3 environment];
    viewSessionProvider = [(AVTViewSessionProvider *)v44 initWithAVTViewBackingSize:v51 viewCreator:environment6 environment:v48, v50];
  }

  v54 = [AVTSimpleAvatarPicker alloc];
  avatarPickerDataSource4 = [(AVTStickerViewController *)self avatarPickerDataSource];
  taskScheduler2 = [(AVTStickerViewController *)self taskScheduler];
  v57 = [(AVTSimpleAvatarPicker *)v54 initWithDataSource:avatarPickerDataSource4 recordImageProvider:v14 avtViewSessionProvider:viewSessionProvider taskScheduler:taskScheduler2 allowEditing:[(AVTStickerViewController *)self allowEditing]];

  [(AVTSimpleAvatarPicker *)v57 setAvatarPickerDelegate:self];
  [(AVTSimpleAvatarPicker *)v57 setPresenterDelegate:self];
  imageDelegate = [(AVTStickerViewController *)self imageDelegate];
  [(AVTSimpleAvatarPicker *)v57 setImageDelegate:imageDelegate];

  [(AVTSimpleAvatarPicker *)v57 setShouldHideUserInfoView:[(AVTStickerViewController *)self shouldHideUserInfoView]];
  v59 = objc_opt_class();
  environment7 = [(AVTStickerViewController *)self environment];
  [v59 headerEdgeMarginForEnvironment:environment7];
  v62 = v61;

  environment8 = [(AVTStickerViewController *)self environment];
  if ([environment8 deviceIsMac])
  {
    v64 = 10.0;
  }

  else
  {
    v64 = 0.0;
  }

  [(AVTSimpleAvatarPicker *)v57 setContentInset:0.0, v62, v64, v62];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  view8 = [(AVTSimpleAvatarPicker *)v57 view];
  [view8 setBackgroundColor:clearColor2];

  view9 = [(AVTSimpleAvatarPicker *)v57 view];
  [view9 setAutoresizingMask:34];

  view10 = [(AVTStickerViewController *)self view];
  view11 = [(AVTSimpleAvatarPicker *)v57 view];
  [view10 addSubview:view11];

  [(AVTStickerViewController *)self setAvatarPicker:v57];
  [(AVTStickerViewController *)self updateHeaderSize];
  [(AVTStickerViewController *)self updatePagingControllerInsets];
  paddleView = [(AVTStickerViewController *)self paddleView];
  if (paddleView)
  {
  }

  else if (![(AVTStickerViewController *)self shouldPresentPaddleView])
  {
    [(AVTStickerViewController *)self selectDefaultAvatarIfNeeded];
    goto LABEL_10;
  }

  [(AVTStickerViewController *)self selectAvatarRecordAtIndex:0 hideHeader:0];
LABEL_10:
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AVTStickerViewController;
  [(AVTStickerViewController *)&v4 viewDidAppear:appear];
  [(AVTStickerViewController *)self presentPaddleViewIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = AVTStickerViewController;
  [(AVTStickerViewController *)&v10 viewWillLayoutSubviews];
  environment = [(AVTStickerViewController *)self environment];
  deviceIsVision = [environment deviceIsVision];

  if (deviceIsVision)
  {
    avatarPicker = [(AVTStickerViewController *)self avatarPicker];
    [avatarPicker setMinimumInteritemSpacing:12.0];
  }

  else
  {
    avatarPicker = [(AVTStickerViewController *)self view];
    [avatarPicker bounds];
    if (v6 <= 490.0)
    {
      v7 = 8.0;
    }

    else
    {
      v7 = 16.0;
    }

    avatarPicker2 = [(AVTStickerViewController *)self avatarPicker];
    [avatarPicker2 setMinimumInteritemSpacing:v7];
  }

  [(AVTStickerViewController *)self updateHeaderSize];
  [(AVTStickerViewController *)self updatePagingControllerInsets];
  pagingController = [(AVTStickerViewController *)self pagingController];
  [pagingController pageContentOffset];
  [(AVTStickerViewController *)self updateHeaderPositionWithContentOffset:?];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTStickerViewController;
  [(AVTStickerViewController *)&v3 viewDidLayoutSubviews];
  [(AVTStickerViewController *)self updatePaddleViewLayoutIfNecessary];
}

- (void)setAllowEditing:(BOOL)editing
{
  if (self->_allowEditing != editing)
  {
    editingCopy = editing;
    self->_allowEditing = editing;
    avatarPicker = [(AVTStickerViewController *)self avatarPicker];
    [avatarPicker setAllowEditing:editingCopy];
  }
}

- (void)reloadPickerView
{
  avatarPickerDataSource = [(AVTStickerViewController *)self avatarPickerDataSource];
  [avatarPickerDataSource reloadModel];

  taskScheduler = [(AVTStickerViewController *)self taskScheduler];
  [taskScheduler reloadData];

  avatarPicker = [(AVTStickerViewController *)self avatarPicker];
  if (avatarPicker)
  {
    v6 = avatarPicker;
    pagingController = [(AVTStickerViewController *)self pagingController];

    if (pagingController)
    {
      avatarPicker2 = [(AVTStickerViewController *)self avatarPicker];
      [avatarPicker2 reloadData];
    }
  }
}

- (void)reloadData
{
  avatarPickerDataSource = [(AVTStickerViewController *)self avatarPickerDataSource];
  [avatarPickerDataSource reloadModel];

  taskScheduler = [(AVTStickerViewController *)self taskScheduler];
  [taskScheduler reloadData];

  avatarPicker = [(AVTStickerViewController *)self avatarPicker];
  if (avatarPicker)
  {
    v6 = avatarPicker;
    pagingController = [(AVTStickerViewController *)self pagingController];

    if (pagingController)
    {
      avatarPicker2 = [(AVTStickerViewController *)self avatarPicker];
      [avatarPicker2 reloadData];

      pagingController2 = [(AVTStickerViewController *)self pagingController];
      [pagingController2 reloadData];

      [(AVTStickerViewController *)self selectDefaultAvatarIfNeeded];
    }
  }
}

- (void)selectDefaultAvatarIfNeeded
{
  avatarPicker = [(AVTStickerViewController *)self avatarPicker];
  if ([avatarPicker indexForSelectedAvatar] == 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  else
  {
    recordDataSource = [(AVTStickerViewController *)self recordDataSource];
    numberOfRecords = [recordDataSource numberOfRecords];

    if (!numberOfRecords)
    {
      return;
    }
  }

  selectedRecordIdentifier = [(AVTStickerViewController *)self selectedRecordIdentifier];
  if (!selectedRecordIdentifier || (-[AVTStickerViewController recordDataSource](self, "recordDataSource"), v7 = objc_claimAutoreleasedReturnValue(), v9[0] = MEMORY[0x1E69E9820], v9[1] = 3221225472, v9[2] = __55__AVTStickerViewController_selectDefaultAvatarIfNeeded__block_invoke, v9[3] = &unk_1E7F3B3B0, v10 = selectedRecordIdentifier, v8 = [v7 indexOfRecordPassingTest:v9], v7, v10, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = 0;
  }

  [(AVTStickerViewController *)self selectAvatarRecordAtIndex:v8 hideHeader:0];
}

uint64_t __55__AVTStickerViewController_selectDefaultAvatarIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)selectAvatarRecordAtIndex:(int64_t)index hideHeader:(BOOL)header
{
  headerCopy = header;
  recordDataSource = [(AVTStickerViewController *)self recordDataSource];
  v9 = [recordDataSource recordAtIndex:index];

  identifier = [v9 identifier];
  if (identifier)
  {
    [(AVTStickerViewController *)self selectRecordForIdentifier:identifier];
    if (headerCopy)
    {
      [(AVTStickerViewController *)self updateScrollToShowAvatarPicker:0];
    }
  }
}

- (void)selectRecordForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pagingController = [(AVTStickerViewController *)self pagingController];
  [pagingController selectAvatarRecordWithIdentifier:identifierCopy animated:0];

  avatarPicker = [(AVTStickerViewController *)self avatarPicker];
  [avatarPicker selectAvatarRecordWithIdentifier:identifierCopy animated:0];

  taskScheduler = [(AVTStickerViewController *)self taskScheduler];
  [taskScheduler setSelectedAvatarRecordIdentifier:identifierCopy];

  [(AVTStickerViewController *)self setSelectedRecordIdentifier:identifierCopy];
}

- (void)updateHeaderSize
{
  environment = [(AVTStickerViewController *)self environment];
  deviceIsVision = [environment deviceIsVision];

  if (deviceIsVision)
  {
    v5 = 64.0;
  }

  else
  {
    view = [(AVTStickerViewController *)self view];
    [view bounds];
    v8 = v7;

    v9 = objc_opt_class();
    avatarPicker = [(AVTStickerViewController *)self avatarPicker];
    [avatarPicker minimumInteritemSpacing];
    v12 = v11;
    environment2 = [(AVTStickerViewController *)self environment];
    [v9 headerHeightForWidth:environment2 interitemSpacing:v8 environment:v12];
    v5 = v14;
  }

  environment3 = [(AVTStickerViewController *)self environment];
  if ([environment3 deviceIsVision])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 10.0;
  }

  avatarPicker2 = [(AVTStickerViewController *)self avatarPicker];
  [avatarPicker2 contentInset];
  v19 = v18;
  avatarPicker3 = [(AVTStickerViewController *)self avatarPicker];
  [avatarPicker3 contentInset];
  v22 = v5 + v19 + v21;

  view2 = [(AVTStickerViewController *)self view];
  [view2 bounds];
  v24 = v23;
  avatarPicker4 = [(AVTStickerViewController *)self avatarPicker];
  view3 = [avatarPicker4 view];
  [view3 setFrame:{0.0, v16, v24, v22}];
}

- (void)updateHeaderPositionWithContentOffset:(CGPoint)offset
{
  y = offset.y;
  environment = [(AVTStickerViewController *)self environment];
  if ([environment deviceIsVision])
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 10.0;
  }

  view = [(AVTStickerViewController *)self view];
  [view safeAreaInsets];
  v9 = v6 + v8 - y;

  avatarPicker = [(AVTStickerViewController *)self avatarPicker];
  view2 = [avatarPicker view];
  [view2 frame];
  v12 = -CGRectGetHeight(v24);

  if (v9 < v12)
  {
    v9 = v12;
  }

  avatarPicker2 = [(AVTStickerViewController *)self avatarPicker];
  view3 = [avatarPicker2 view];
  [view3 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;

  avatarPicker3 = [(AVTStickerViewController *)self avatarPicker];
  view4 = [avatarPicker3 view];
  [view4 setFrame:{v16, v9, v18, v20}];
}

- (double)headerMaxY
{
  environment = [(AVTStickerViewController *)self environment];
  if ([environment deviceIsVision])
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 10.0;
  }

  avatarPicker = [(AVTStickerViewController *)self avatarPicker];
  view = [avatarPicker view];
  [view frame];
  v8 = v4 + v7;
  view2 = [(AVTStickerViewController *)self view];
  [view2 safeAreaInsets];
  v11 = v8 + v10;
  avatarPicker2 = [(AVTStickerViewController *)self avatarPicker];
  [avatarPicker2 contentInset];
  v14 = v11 - v13;

  return v14;
}

- (void)updatePagingControllerInsets
{
  [(AVTStickerViewController *)self headerMaxY];
  v4 = v3;
  pagingController = [(AVTStickerViewController *)self pagingController];
  [pagingController setPageContentInsets:{v4, 0.0, 0.0, 0.0}];
}

- (void)updateScrollToShowAvatarPicker:(BOOL)picker
{
  if (picker)
  {
    pagingController = [(AVTStickerViewController *)self pagingController];
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
    v9 = pagingController;
  }

  else
  {
    [(AVTStickerViewController *)self headerMaxY];
    v8 = v7;
    pagingController = [(AVTStickerViewController *)self pagingController];
    v5 = 0.0;
    v9 = pagingController;
    v6 = v8;
  }

  [pagingController setPageContentOffset:{v5, v6}];
}

- (void)presentMemojiEditorForCreation
{
  avatarPicker = [(AVTStickerViewController *)self avatarPicker];
  [avatarPicker presentMemojiEditorForCreation];
}

- (void)stickerControllerDidEnterBackground
{
  paddleView = [(AVTStickerViewController *)self paddleView];

  if (paddleView)
  {
    paddleView2 = [(AVTStickerViewController *)self paddleView];
    [paddleView2 pauseVideo];
  }
}

- (void)stickerControllerWillEnterForeground
{
  paddleView = [(AVTStickerViewController *)self paddleView];

  if (paddleView)
  {
    paddleView2 = [(AVTStickerViewController *)self paddleView];
    [paddleView2 playVideo];
  }
}

- (void)snapshotInBlock:(id)block
{
  blockCopy = block;
  pagingController = [(AVTStickerViewController *)self pagingController];
  [pagingController pageContentOffset];
  v7 = v6;
  v9 = v8;

  logger = [(AVTStickerViewController *)self logger];
  view = [(AVTStickerViewController *)self view];
  [view bounds];
  v12 = NSStringFromCGRect(v17);
  [logger logStickerViewSnapshotForBounds:v12 offset:{v7, v9}];

  if (v9 > 0.0)
  {
    pagingController2 = [(AVTStickerViewController *)self pagingController];
    [pagingController2 setPageContentOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }

  view2 = [(AVTStickerViewController *)self view];
  blockCopy[2](blockCopy, view2);

  pagingController3 = [(AVTStickerViewController *)self pagingController];
  [pagingController3 setPageContentOffset:{v7, v9}];
}

- (void)clearStickerSelection
{
  pagingController = [(AVTStickerViewController *)self pagingController];
  [pagingController clearStickerSelection];
}

- (void)presentAvatarUIController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  pagingController = [(AVTStickerViewController *)self pagingController];
  [pagingController willEndDisplaying];

  presenterDelegate = [(AVTStickerViewController *)self presenterDelegate];
  [presenterDelegate presentAvatarUIController:controllerCopy animated:animatedCopy];

  v9 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVTStickerViewController_presentAvatarUIController_animated___block_invoke;
  block[3] = &unk_1E7F3A9B8;
  block[4] = self;
  dispatch_after(v9, MEMORY[0x1E69E96A0], block);
}

void __63__AVTStickerViewController_presentAvatarUIController_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) pagingController];
  [v1 didEndDisplaying];
}

- (void)dismissAvatarUIControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  pagingController = [(AVTStickerViewController *)self pagingController];
  [pagingController willStartDisplaying];

  presenterDelegate = [(AVTStickerViewController *)self presenterDelegate];
  [presenterDelegate dismissAvatarUIControllerAnimated:animatedCopy];
}

- (void)avatarPicker:(id)picker didSelectAvatarRecord:(id)record
{
  recordCopy = record;
  pickerCopy = picker;
  identifier = [recordCopy identifier];
  [(AVTStickerViewController *)self setSelectedRecordIdentifier:identifier];

  taskScheduler = [(AVTStickerViewController *)self taskScheduler];
  selectedRecordIdentifier = [(AVTStickerViewController *)self selectedRecordIdentifier];
  [taskScheduler setSelectedAvatarRecordIdentifier:selectedRecordIdentifier];

  selectedRecordIdentifier2 = [(AVTStickerViewController *)self selectedRecordIdentifier];
  AVTUISetStickersLastSelected();

  environment = [(AVTStickerViewController *)self environment];
  usageTrackingSession = [environment usageTrackingSession];
  [usageTrackingSession didChangeCurrentAvatarInStickers:recordCopy];

  avatarPicker = [(AVTStickerViewController *)self avatarPicker];

  if (avatarPicker == pickerCopy)
  {
    [(AVTStickerViewController *)self pagingController];
  }

  else
  {
    [(AVTStickerViewController *)self avatarPicker];
  }
  v14 = ;
  v15 = avatarPicker != pickerCopy;
  identifier2 = [recordCopy identifier];
  [v14 selectAvatarRecordWithIdentifier:identifier2 animated:v15];
}

- (BOOL)avatarPicker:(id)picker shouldPresentMemojiEditorForAvatarRecord:(id)record
{
  recordCopy = record;
  stickerSelectionDelegate = [(AVTStickerViewController *)self stickerSelectionDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    stickerSelectionDelegate2 = [(AVTStickerViewController *)self stickerSelectionDelegate];
    v9 = [stickerSelectionDelegate2 stickerViewController:self shouldPresentMemojiEditorForSelectedAvatar:recordCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)dataSource:(id)source didAddRecord:(id)record atIndex:(unint64_t)index
{
  recordCopy = record;
  pagingController = [(AVTStickerViewController *)self pagingController];
  [pagingController insertPageForRecord:recordCopy atIndex:index];

  [(AVTStickerViewController *)self reloadPickerView];
  identifier = [recordCopy identifier];

  [(AVTStickerViewController *)self selectRecordForIdentifier:identifier];
  [(AVTStickerViewController *)self updateScrollToShowAvatarPicker:0];
  selectedRecordIdentifier = [(AVTStickerViewController *)self selectedRecordIdentifier];
  AVTUISetStickersLastSelected();
}

- (void)dataSource:(id)source didEditRecord:(id)record atIndex:(unint64_t)index
{
  recordCopy = record;
  pagingController = [(AVTStickerViewController *)self pagingController];
  [pagingController reloadPageForRecord:recordCopy atIndex:index];

  [(AVTStickerViewController *)self updateScrollToShowAvatarPicker:0];

  [(AVTStickerViewController *)self reloadPickerView];
}

- (void)dataSource:(id)source didRemoveRecord:(id)record atIndex:(unint64_t)index
{
  sourceCopy = source;
  recordCopy = record;
  pagingController = [(AVTStickerViewController *)self pagingController];
  [pagingController deletePageForRecord:recordCopy atIndex:index];

  [(AVTStickerViewController *)self reloadPickerView];
  indexSetForEditableRecords = [sourceCopy indexSetForEditableRecords];
  if (![indexSetForEditableRecords count])
  {
    v11 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];

    indexSetForEditableRecords = v11;
  }

  v12 = [sourceCopy recordAtIndex:{objc_msgSend(indexSetForEditableRecords, "closestIndexToIndex:greaterIndexesFirst:", index, 1)}];
  identifier = [v12 identifier];
  [(AVTStickerViewController *)self selectRecordForIdentifier:identifier];

  [(AVTStickerViewController *)self updateScrollToShowAvatarPicker:0];
}

- (BOOL)shouldPresentPaddleView
{
  if ((AVTUIAlwaysShowPaddleView() & 1) == 0 && (AVTUIHasDisplayedPaddleView() & 1) != 0 || ![(AVTStickerViewController *)self allowAvatarCreation])
  {
    return 0;
  }

  paddleView = [(AVTStickerViewController *)self paddleView];
  v4 = paddleView == 0;

  return v4;
}

- (void)presentPaddleViewIfNeeded
{
  if ([(AVTStickerViewController *)self shouldPresentPaddleView])
  {
    v3 = [[AVTPaddleView alloc] initWithLayoutDirection:1];
    [(AVTStickerViewController *)self setPaddleView:v3];

    paddleView = [(AVTStickerViewController *)self paddleView];
    [paddleView setDelegate:self];

    view = [(AVTStickerViewController *)self view];
    paddleView2 = [(AVTStickerViewController *)self paddleView];
    [view addSubview:paddleView2];

    [(AVTStickerViewController *)self updatePaddleViewLayoutIfNecessary];
    paddleView3 = [(AVTStickerViewController *)self paddleView];
    [paddleView3 setAlpha:0.0];

    paddleView4 = [(AVTStickerViewController *)self paddleView];
    [paddleView4 showAnimated:1];

    MEMORY[0x1EEDEFCF0](1);
  }
}

- (void)updatePaddleViewLayoutIfNecessary
{
  paddleView = [(AVTStickerViewController *)self paddleView];

  if (paddleView)
  {
    pagingController = [(AVTStickerViewController *)self pagingController];
    view = [pagingController view];
    [view layoutIfNeeded];

    avatarPicker = [(AVTStickerViewController *)self avatarPicker];
    view2 = [avatarPicker view];
    [view2 layoutIfNeeded];

    avatarPicker2 = [(AVTStickerViewController *)self avatarPicker];
    viewForAddItem = [avatarPicker2 viewForAddItem];

    if (viewForAddItem)
    {
      [viewForAddItem bounds];
      Width = CGRectGetWidth(v19);
      button = [viewForAddItem button];
      [button bounds];
      v11 = (Width - CGRectGetWidth(v20)) * 0.5;
      paddleView2 = [(AVTStickerViewController *)self paddleView];
      [paddleView2 setPadding:v11];

      pagingController2 = [(AVTStickerViewController *)self pagingController];
      firstPageItemView = [pagingController2 firstPageItemView];

      paddleView3 = [(AVTStickerViewController *)self paddleView];
      button2 = [viewForAddItem button];
      [paddleView3 updateLayoutFromPlusButtonView:button2 videoView:firstPageItemView];
    }
  }
}

- (void)dismissPaddleViewIfNecessary
{
  paddleView = [(AVTStickerViewController *)self paddleView];

  if (paddleView)
  {
    paddleView2 = [(AVTStickerViewController *)self paddleView];
    [paddleView2 dismissAnimated:1];

    [(AVTStickerViewController *)self setPaddleView:0];
  }
}

- (void)paddleViewTapped:(id)tapped
{
  [(AVTStickerViewController *)self dismissPaddleViewIfNecessary];

  [(AVTStickerViewController *)self presentMemojiEditorForCreation];
}

- (AVTPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presenterDelegate);

  return WeakRetained;
}

- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_disclosureValidationDelegate);

  return WeakRetained;
}

- (AVTStickerViewControllerImageDelegate)imageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_imageDelegate);

  return WeakRetained;
}

- (AVTStickerSelectionDelegate)stickerSelectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stickerSelectionDelegate);

  return WeakRetained;
}

- (AVTStickerSheetControllerProvider)stickerSheetControllerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_stickerSheetControllerProvider);

  return WeakRetained;
}

- (void)editCurrentMemoji
{
  pagingController = [(AVTStickerViewController *)self pagingController];
  selectedRecordIdentifier = [(AVTStickerViewController *)self selectedRecordIdentifier];
  v5 = [pagingController pageIndexForAvatarRecordIdentifierForPPT:selectedRecordIdentifier];

  avatarPicker = [(AVTStickerViewController *)self avatarPicker];
  recordDataSource = [(AVTStickerViewController *)self recordDataSource];
  v7 = [recordDataSource recordAtIndex:v5];
  [avatarPicker presentActionsForAvatarForPPT:v7];
}

- (void)swipeRightWithDelay:(int64_t)delay forCompletionHandler:(id)handler
{
  handlerCopy = handler;
  pagingController = [(AVTStickerViewController *)self pagingController];
  selectedRecordIdentifier = [(AVTStickerViewController *)self selectedRecordIdentifier];
  v9 = [pagingController pageIndexForAvatarRecordIdentifierForPPT:selectedRecordIdentifier];

  v10 = v9 + 1;
  recordDataSource = [(AVTStickerViewController *)self recordDataSource];
  numberOfRecords = [recordDataSource numberOfRecords];

  if (v10 < numberOfRecords)
  {
    v13 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:0];
    pagingController2 = [(AVTStickerViewController *)self pagingController];
    collectionViewForPPT = [pagingController2 collectionViewForPPT];
    [collectionViewForPPT scrollToItemAtIndexPath:v13 atScrollPosition:8 animated:1];
  }

  if (handlerCopy)
  {
    if (delay < 1)
    {
      handlerCopy[2](handlerCopy);
    }

    else
    {
      v16 = dispatch_time(0, 1000000000 * delay);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__AVTStickerViewController_PPT__swipeRightWithDelay_forCompletionHandler___block_invoke;
      block[3] = &unk_1E7F3AFF8;
      v18 = handlerCopy;
      dispatch_after(v16, MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)swipeLeftWithDelay:(int64_t)delay forCompletionHandler:(id)handler
{
  handlerCopy = handler;
  pagingController = [(AVTStickerViewController *)self pagingController];
  selectedRecordIdentifier = [(AVTStickerViewController *)self selectedRecordIdentifier];
  v9 = [pagingController pageIndexForAvatarRecordIdentifierForPPT:selectedRecordIdentifier];

  if (v9 >= 1)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForItem:v9 - 1 inSection:0];
    pagingController2 = [(AVTStickerViewController *)self pagingController];
    collectionViewForPPT = [pagingController2 collectionViewForPPT];
    [collectionViewForPPT scrollToItemAtIndexPath:v10 atScrollPosition:8 animated:1];
  }

  if (handlerCopy)
  {
    if (delay < 1)
    {
      handlerCopy[2](handlerCopy);
    }

    else
    {
      v13 = dispatch_time(0, 1000000000 * delay);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__AVTStickerViewController_PPT__swipeLeftWithDelay_forCompletionHandler___block_invoke;
      block[3] = &unk_1E7F3AFF8;
      v15 = handlerCopy;
      dispatch_after(v13, MEMORY[0x1E69E96A0], block);
    }
  }
}

@end