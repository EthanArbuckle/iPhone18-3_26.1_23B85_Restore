@interface AVTStickerViewController
+ (double)headerEdgeMarginForEnvironment:(id)a3;
+ (double)headerHeightForWidth:(double)a3 interitemSpacing:(double)a4 environment:(id)a5;
+ (id)inUseStickerPack;
+ (id)stickerViewControllerForStore:(id)a3 allowEditing:(BOOL)a4 allowPeel:(BOOL)a5;
+ (id)stickerViewControllerForStore:(id)a3 fetchRequest:(id)a4 stickerPacks:(id)a5 stickerConfigurationNames:(id)a6 avtViewSessionProvider:(id)a7 allowEditing:(BOOL)a8 allowPeel:(BOOL)a9;
+ (id)stickersAvatarsFetchRequest;
+ (unint64_t)minimumNumberOfVisibleItemForWidth:(double)a3 environment:(id)a4;
- (AVTPresenterDelegate)presenterDelegate;
- (AVTStickerDisclosureValidationDelegate)disclosureValidationDelegate;
- (AVTStickerSelectionDelegate)stickerSelectionDelegate;
- (AVTStickerSheetControllerProvider)stickerSheetControllerProvider;
- (AVTStickerViewController)initWithStore:(id)a3 fetchRequest:(id)a4 stickerPacks:(id)a5 stickerConfigurationNames:(id)a6 selectedRecordIdentifier:(id)a7 allowEditing:(BOOL)a8 allowPeel:(BOOL)a9 environment:(id)a10;
- (AVTStickerViewControllerImageDelegate)imageDelegate;
- (BOOL)avatarPicker:(id)a3 shouldPresentMemojiEditorForAvatarRecord:(id)a4;
- (BOOL)shouldPresentPaddleView;
- (double)headerMaxY;
- (void)avatarPicker:(id)a3 didSelectAvatarRecord:(id)a4;
- (void)clearStickerSelection;
- (void)dataSource:(id)a3 didAddRecord:(id)a4 atIndex:(unint64_t)a5;
- (void)dataSource:(id)a3 didEditRecord:(id)a4 atIndex:(unint64_t)a5;
- (void)dataSource:(id)a3 didRemoveRecord:(id)a4 atIndex:(unint64_t)a5;
- (void)dismissAvatarUIControllerAnimated:(BOOL)a3;
- (void)dismissPaddleViewIfNecessary;
- (void)editCurrentMemoji;
- (void)paddleViewTapped:(id)a3;
- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4;
- (void)presentMemojiEditorForCreation;
- (void)presentPaddleViewIfNeeded;
- (void)reloadData;
- (void)reloadPickerView;
- (void)selectAvatarRecordAtIndex:(int64_t)a3 hideHeader:(BOOL)a4;
- (void)selectDefaultAvatarIfNeeded;
- (void)selectRecordForIdentifier:(id)a3;
- (void)setAllowEditing:(BOOL)a3;
- (void)snapshotInBlock:(id)a3;
- (void)stickerControllerDidEnterBackground;
- (void)stickerControllerWillEnterForeground;
- (void)swipeLeftWithDelay:(int64_t)a3 forCompletionHandler:(id)a4;
- (void)swipeRightWithDelay:(int64_t)a3 forCompletionHandler:(id)a4;
- (void)updateHeaderPositionWithContentOffset:(CGPoint)a3;
- (void)updateHeaderSize;
- (void)updatePaddleViewLayoutIfNecessary;
- (void)updatePagingControllerInsets;
- (void)updateScrollToShowAvatarPicker:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AVTStickerViewController

+ (id)stickerViewControllerForStore:(id)a3 allowEditing:(BOOL)a4 allowPeel:(BOOL)a5
{
  v6 = a4;
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = +[AVTUIEnvironment defaultEnvironment];
  v9 = AVTUIStickersLastSelected();
  v10 = [AVTStickerViewController alloc];
  v11 = +[AVTStickerViewController stickersAvatarsFetchRequest];
  v12 = +[AVTStickerViewController inUseStickerPack];
  v17[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  LOBYTE(v16) = a5;
  v14 = [(AVTStickerViewController *)v10 initWithStore:v7 fetchRequest:v11 stickerPacks:v13 stickerConfigurationNames:0 selectedRecordIdentifier:v9 allowEditing:v6 allowPeel:v16 environment:v8];

  return v14;
}

+ (id)stickerViewControllerForStore:(id)a3 fetchRequest:(id)a4 stickerPacks:(id)a5 stickerConfigurationNames:(id)a6 avtViewSessionProvider:(id)a7 allowEditing:(BOOL)a8 allowPeel:(BOOL)a9
{
  v9 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = +[AVTUIEnvironment defaultEnvironment];
  v20 = AVTUIStickersLastSelected();
  LOBYTE(v23) = a9;
  v21 = [[AVTStickerViewController alloc] initWithStore:v18 fetchRequest:v17 stickerPacks:v16 stickerConfigurationNames:v15 selectedRecordIdentifier:v20 allowEditing:v9 allowPeel:v23 environment:v19];

  [(AVTStickerViewController *)v21 setViewSessionProvider:v14];

  return v21;
}

+ (double)headerEdgeMarginForEnvironment:(id)a3
{
  v3 = a3;
  v4 = 10.0;
  if (([v3 deviceIsMac] & 1) == 0 && (objc_msgSend(v3, "deviceIsPad") & 1) == 0)
  {
    if ([v3 deviceIsVision])
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

+ (unint64_t)minimumNumberOfVisibleItemForWidth:(double)a3 environment:(id)a4
{
  if ([a4 deviceIsMac])
  {
    v5 = 56.0;
  }

  else if (a3 <= 490.0)
  {
    v5 = 62.5;
  }

  else
  {
    v5 = 70.2352941;
  }

  return vcvtmd_u64_f64(a3 / v5);
}

+ (double)headerHeightForWidth:(double)a3 interitemSpacing:(double)a4 environment:(id)a5
{
  v8 = a5;
  v9 = [a1 minimumNumberOfVisibleItemForWidth:v8 environment:a3];
  [a1 headerEdgeMarginForEnvironment:v8];
  v11 = v10;

  return fmin((a3 - a4 * v9 + v11 * -2.0) / (v9 + 0.5), 70.0);
}

+ (id)stickersAvatarsFetchRequest
{
  v2 = MEMORY[0x1E698E2C0];
  v3 = [a1 inUseStickerPack];
  v4 = [v2 unavailableAnimojiNamesForStickerPack:v3];

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

- (AVTStickerViewController)initWithStore:(id)a3 fetchRequest:(id)a4 stickerPacks:(id)a5 stickerConfigurationNames:(id)a6 selectedRecordIdentifier:(id)a7 allowEditing:(BOOL)a8 allowPeel:(BOOL)a9 environment:(id)a10
{
  v16 = a3;
  v17 = a4;
  v29 = a5;
  v28 = a6;
  v18 = a7;
  v19 = a10;
  v30.receiver = self;
  v30.super_class = AVTStickerViewController;
  v20 = [(AVTStickerViewController *)&v30 initWithNibName:0 bundle:0];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_store, a3);
    v22 = [[AVTAvatarRecordDataSource alloc] initWithRecordStore:v16 fetchRequest:v17 environment:v19];
    recordDataSource = v21->_recordDataSource;
    v21->_recordDataSource = v22;

    objc_storeStrong(&v21->_stickerPacks, a5);
    objc_storeStrong(&v21->_stickerConfigurationNames, a6);
    v24 = [v19 logger];
    logger = v21->_logger;
    v21->_logger = v24;

    objc_storeStrong(&v21->_environment, a10);
    v21->_allowEditing = a8;
    v21->_allowPeel = a9;
    objc_storeStrong(&v21->_selectedRecordIdentifier, a7);
  }

  return v21;
}

- (void)viewDidLoad
{
  v71.receiver = self;
  v71.super_class = AVTStickerViewController;
  [(AVTStickerViewController *)&v71 viewDidLoad];
  v3 = [(AVTStickerViewController *)self view];
  [v3 setClipsToBounds:1];

  v4 = [AVTAvatarPickerDataSource alloc];
  v5 = [(AVTStickerViewController *)self recordDataSource];
  v6 = [(AVTStickerViewController *)self environment];
  v7 = [(AVTAvatarPickerDataSource *)v4 initWithRecordDataSource:v5 environment:v6 allowAddItem:0];
  [(AVTStickerViewController *)self setAvatarPickerDataSource:v7];

  v8 = [(AVTStickerViewController *)self avatarPickerDataSource];
  [v8 reloadModel];

  v9 = [(AVTStickerViewController *)self recordDataSource];
  [v9 addObserver:self];

  v10 = [(AVTStickerViewController *)self recordDataSource];
  v11 = [AVTStickerTaskScheduler schedulerWithRecordDataSource:v10];
  [(AVTStickerViewController *)self setTaskScheduler:v11];

  v12 = [_AVTAvatarRecordImageProvider alloc];
  v13 = [(AVTStickerViewController *)self environment];
  v14 = [(_AVTAvatarRecordImageProvider *)v12 initWithEnvironment:v13 taskScheduler:0];

  v15 = [AVTStickerConfigurationProvider alloc];
  v16 = [(AVTStickerViewController *)self environment];
  stickerPacks = self->_stickerPacks;
  v18 = [(AVTStickerViewController *)self stickerConfigurationNames];
  v19 = [(AVTStickerConfigurationProvider *)v15 initWithEnvironment:v16 forStickerPacks:stickerPacks stickerConfigurationNames:v18];

  v20 = [AVTStickerPagingController alloc];
  v21 = [(AVTStickerViewController *)self recordDataSource];
  v22 = [(AVTStickerViewController *)self taskScheduler];
  v23 = [(AVTStickerViewController *)self environment];
  v24 = [(AVTStickerPagingController *)v20 initWithRecordDataSource:v21 recordImageProvider:v14 stickerConfigurationProvider:v19 taskScheduler:v22 environment:v23 allowsPeel:[(AVTStickerViewController *)self allowPeel]];

  [(AVTStickerPagingController *)v24 setAvatarPickerDelegate:self];
  [(AVTStickerPagingController *)v24 setPresenterDelegate:self];
  [(AVTStickerPagingController *)v24 setDelegate:self];
  v25 = [(AVTStickerViewController *)self disclosureValidationDelegate];
  [(AVTStickerPagingController *)v24 setDisclosureValidationDelegate:v25];

  v26 = [(AVTStickerViewController *)self stickerSelectionDelegate];
  [(AVTStickerPagingController *)v24 setStickerSelectionDelegate:v26];

  v27 = [(AVTStickerViewController *)self stickerSheetControllerProvider];
  [(AVTStickerPagingController *)v24 setStickerSheetControllerProvider:v27];

  v28 = [MEMORY[0x1E69DC888] clearColor];
  v29 = [(AVTStickerPagingController *)v24 view];
  [v29 setBackgroundColor:v28];

  v30 = [(AVTStickerViewController *)self view];
  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [(AVTStickerPagingController *)v24 view];
  [v39 setFrame:{v32, v34, v36, v38}];

  v40 = [(AVTStickerPagingController *)v24 view];
  [v40 setAutoresizingMask:18];

  v41 = [(AVTStickerViewController *)self view];
  v42 = [(AVTStickerPagingController *)v24 view];
  [v41 addSubview:v42];

  [(AVTStickerViewController *)self setPagingController:v24];
  v43 = [(AVTStickerViewController *)self viewSessionProvider];
  if (!v43)
  {
    v44 = [AVTViewSessionProvider alloc];
    v45 = [(AVTStickerViewController *)self avatarPickerDataSource];
    v46 = [v45 environment];
    [AVTViewSessionProvider backingSizeForEnvironment:v46];
    v48 = v47;
    v50 = v49;
    v51 = +[AVTViewSessionProvider creatorForAVTView];
    v52 = [(AVTStickerViewController *)self avatarPickerDataSource];
    v53 = [v52 environment];
    v43 = [(AVTViewSessionProvider *)v44 initWithAVTViewBackingSize:v51 viewCreator:v53 environment:v48, v50];
  }

  v54 = [AVTSimpleAvatarPicker alloc];
  v55 = [(AVTStickerViewController *)self avatarPickerDataSource];
  v56 = [(AVTStickerViewController *)self taskScheduler];
  v57 = [(AVTSimpleAvatarPicker *)v54 initWithDataSource:v55 recordImageProvider:v14 avtViewSessionProvider:v43 taskScheduler:v56 allowEditing:[(AVTStickerViewController *)self allowEditing]];

  [(AVTSimpleAvatarPicker *)v57 setAvatarPickerDelegate:self];
  [(AVTSimpleAvatarPicker *)v57 setPresenterDelegate:self];
  v58 = [(AVTStickerViewController *)self imageDelegate];
  [(AVTSimpleAvatarPicker *)v57 setImageDelegate:v58];

  [(AVTSimpleAvatarPicker *)v57 setShouldHideUserInfoView:[(AVTStickerViewController *)self shouldHideUserInfoView]];
  v59 = objc_opt_class();
  v60 = [(AVTStickerViewController *)self environment];
  [v59 headerEdgeMarginForEnvironment:v60];
  v62 = v61;

  v63 = [(AVTStickerViewController *)self environment];
  if ([v63 deviceIsMac])
  {
    v64 = 10.0;
  }

  else
  {
    v64 = 0.0;
  }

  [(AVTSimpleAvatarPicker *)v57 setContentInset:0.0, v62, v64, v62];
  v65 = [MEMORY[0x1E69DC888] clearColor];
  v66 = [(AVTSimpleAvatarPicker *)v57 view];
  [v66 setBackgroundColor:v65];

  v67 = [(AVTSimpleAvatarPicker *)v57 view];
  [v67 setAutoresizingMask:34];

  v68 = [(AVTStickerViewController *)self view];
  v69 = [(AVTSimpleAvatarPicker *)v57 view];
  [v68 addSubview:v69];

  [(AVTStickerViewController *)self setAvatarPicker:v57];
  [(AVTStickerViewController *)self updateHeaderSize];
  [(AVTStickerViewController *)self updatePagingControllerInsets];
  v70 = [(AVTStickerViewController *)self paddleView];
  if (v70)
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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AVTStickerViewController;
  [(AVTStickerViewController *)&v4 viewDidAppear:a3];
  [(AVTStickerViewController *)self presentPaddleViewIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = AVTStickerViewController;
  [(AVTStickerViewController *)&v10 viewWillLayoutSubviews];
  v3 = [(AVTStickerViewController *)self environment];
  v4 = [v3 deviceIsVision];

  if (v4)
  {
    v5 = [(AVTStickerViewController *)self avatarPicker];
    [v5 setMinimumInteritemSpacing:12.0];
  }

  else
  {
    v5 = [(AVTStickerViewController *)self view];
    [v5 bounds];
    if (v6 <= 490.0)
    {
      v7 = 8.0;
    }

    else
    {
      v7 = 16.0;
    }

    v8 = [(AVTStickerViewController *)self avatarPicker];
    [v8 setMinimumInteritemSpacing:v7];
  }

  [(AVTStickerViewController *)self updateHeaderSize];
  [(AVTStickerViewController *)self updatePagingControllerInsets];
  v9 = [(AVTStickerViewController *)self pagingController];
  [v9 pageContentOffset];
  [(AVTStickerViewController *)self updateHeaderPositionWithContentOffset:?];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTStickerViewController;
  [(AVTStickerViewController *)&v3 viewDidLayoutSubviews];
  [(AVTStickerViewController *)self updatePaddleViewLayoutIfNecessary];
}

- (void)setAllowEditing:(BOOL)a3
{
  if (self->_allowEditing != a3)
  {
    v4 = a3;
    self->_allowEditing = a3;
    v5 = [(AVTStickerViewController *)self avatarPicker];
    [v5 setAllowEditing:v4];
  }
}

- (void)reloadPickerView
{
  v3 = [(AVTStickerViewController *)self avatarPickerDataSource];
  [v3 reloadModel];

  v4 = [(AVTStickerViewController *)self taskScheduler];
  [v4 reloadData];

  v5 = [(AVTStickerViewController *)self avatarPicker];
  if (v5)
  {
    v6 = v5;
    v7 = [(AVTStickerViewController *)self pagingController];

    if (v7)
    {
      v8 = [(AVTStickerViewController *)self avatarPicker];
      [v8 reloadData];
    }
  }
}

- (void)reloadData
{
  v3 = [(AVTStickerViewController *)self avatarPickerDataSource];
  [v3 reloadModel];

  v4 = [(AVTStickerViewController *)self taskScheduler];
  [v4 reloadData];

  v5 = [(AVTStickerViewController *)self avatarPicker];
  if (v5)
  {
    v6 = v5;
    v7 = [(AVTStickerViewController *)self pagingController];

    if (v7)
    {
      v8 = [(AVTStickerViewController *)self avatarPicker];
      [v8 reloadData];

      v9 = [(AVTStickerViewController *)self pagingController];
      [v9 reloadData];

      [(AVTStickerViewController *)self selectDefaultAvatarIfNeeded];
    }
  }
}

- (void)selectDefaultAvatarIfNeeded
{
  v3 = [(AVTStickerViewController *)self avatarPicker];
  if ([v3 indexForSelectedAvatar] == 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  else
  {
    v4 = [(AVTStickerViewController *)self recordDataSource];
    v5 = [v4 numberOfRecords];

    if (!v5)
    {
      return;
    }
  }

  v6 = [(AVTStickerViewController *)self selectedRecordIdentifier];
  if (!v6 || (-[AVTStickerViewController recordDataSource](self, "recordDataSource"), v7 = objc_claimAutoreleasedReturnValue(), v9[0] = MEMORY[0x1E69E9820], v9[1] = 3221225472, v9[2] = __55__AVTStickerViewController_selectDefaultAvatarIfNeeded__block_invoke, v9[3] = &unk_1E7F3B3B0, v10 = v6, v8 = [v7 indexOfRecordPassingTest:v9], v7, v10, v8 == 0x7FFFFFFFFFFFFFFFLL))
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

- (void)selectAvatarRecordAtIndex:(int64_t)a3 hideHeader:(BOOL)a4
{
  v4 = a4;
  v7 = [(AVTStickerViewController *)self recordDataSource];
  v9 = [v7 recordAtIndex:a3];

  v8 = [v9 identifier];
  if (v8)
  {
    [(AVTStickerViewController *)self selectRecordForIdentifier:v8];
    if (v4)
    {
      [(AVTStickerViewController *)self updateScrollToShowAvatarPicker:0];
    }
  }
}

- (void)selectRecordForIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(AVTStickerViewController *)self pagingController];
  [v4 selectAvatarRecordWithIdentifier:v7 animated:0];

  v5 = [(AVTStickerViewController *)self avatarPicker];
  [v5 selectAvatarRecordWithIdentifier:v7 animated:0];

  v6 = [(AVTStickerViewController *)self taskScheduler];
  [v6 setSelectedAvatarRecordIdentifier:v7];

  [(AVTStickerViewController *)self setSelectedRecordIdentifier:v7];
}

- (void)updateHeaderSize
{
  v3 = [(AVTStickerViewController *)self environment];
  v4 = [v3 deviceIsVision];

  if (v4)
  {
    v5 = 64.0;
  }

  else
  {
    v6 = [(AVTStickerViewController *)self view];
    [v6 bounds];
    v8 = v7;

    v9 = objc_opt_class();
    v10 = [(AVTStickerViewController *)self avatarPicker];
    [v10 minimumInteritemSpacing];
    v12 = v11;
    v13 = [(AVTStickerViewController *)self environment];
    [v9 headerHeightForWidth:v13 interitemSpacing:v8 environment:v12];
    v5 = v14;
  }

  v15 = [(AVTStickerViewController *)self environment];
  if ([v15 deviceIsVision])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 10.0;
  }

  v17 = [(AVTStickerViewController *)self avatarPicker];
  [v17 contentInset];
  v19 = v18;
  v20 = [(AVTStickerViewController *)self avatarPicker];
  [v20 contentInset];
  v22 = v5 + v19 + v21;

  v27 = [(AVTStickerViewController *)self view];
  [v27 bounds];
  v24 = v23;
  v25 = [(AVTStickerViewController *)self avatarPicker];
  v26 = [v25 view];
  [v26 setFrame:{0.0, v16, v24, v22}];
}

- (void)updateHeaderPositionWithContentOffset:(CGPoint)a3
{
  y = a3.y;
  v5 = [(AVTStickerViewController *)self environment];
  if ([v5 deviceIsVision])
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 10.0;
  }

  v7 = [(AVTStickerViewController *)self view];
  [v7 safeAreaInsets];
  v9 = v6 + v8 - y;

  v10 = [(AVTStickerViewController *)self avatarPicker];
  v11 = [v10 view];
  [v11 frame];
  v12 = -CGRectGetHeight(v24);

  if (v9 < v12)
  {
    v9 = v12;
  }

  v13 = [(AVTStickerViewController *)self avatarPicker];
  v14 = [v13 view];
  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v22 = [(AVTStickerViewController *)self avatarPicker];
  v21 = [v22 view];
  [v21 setFrame:{v16, v9, v18, v20}];
}

- (double)headerMaxY
{
  v3 = [(AVTStickerViewController *)self environment];
  if ([v3 deviceIsVision])
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 10.0;
  }

  v5 = [(AVTStickerViewController *)self avatarPicker];
  v6 = [v5 view];
  [v6 frame];
  v8 = v4 + v7;
  v9 = [(AVTStickerViewController *)self view];
  [v9 safeAreaInsets];
  v11 = v8 + v10;
  v12 = [(AVTStickerViewController *)self avatarPicker];
  [v12 contentInset];
  v14 = v11 - v13;

  return v14;
}

- (void)updatePagingControllerInsets
{
  [(AVTStickerViewController *)self headerMaxY];
  v4 = v3;
  v5 = [(AVTStickerViewController *)self pagingController];
  [v5 setPageContentInsets:{v4, 0.0, 0.0, 0.0}];
}

- (void)updateScrollToShowAvatarPicker:(BOOL)a3
{
  if (a3)
  {
    v4 = [(AVTStickerViewController *)self pagingController];
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
    v9 = v4;
  }

  else
  {
    [(AVTStickerViewController *)self headerMaxY];
    v8 = v7;
    v4 = [(AVTStickerViewController *)self pagingController];
    v5 = 0.0;
    v9 = v4;
    v6 = v8;
  }

  [v4 setPageContentOffset:{v5, v6}];
}

- (void)presentMemojiEditorForCreation
{
  v2 = [(AVTStickerViewController *)self avatarPicker];
  [v2 presentMemojiEditorForCreation];
}

- (void)stickerControllerDidEnterBackground
{
  v3 = [(AVTStickerViewController *)self paddleView];

  if (v3)
  {
    v4 = [(AVTStickerViewController *)self paddleView];
    [v4 pauseVideo];
  }
}

- (void)stickerControllerWillEnterForeground
{
  v3 = [(AVTStickerViewController *)self paddleView];

  if (v3)
  {
    v4 = [(AVTStickerViewController *)self paddleView];
    [v4 playVideo];
  }
}

- (void)snapshotInBlock:(id)a3
{
  v4 = a3;
  v5 = [(AVTStickerViewController *)self pagingController];
  [v5 pageContentOffset];
  v7 = v6;
  v9 = v8;

  v10 = [(AVTStickerViewController *)self logger];
  v11 = [(AVTStickerViewController *)self view];
  [v11 bounds];
  v12 = NSStringFromCGRect(v17);
  [v10 logStickerViewSnapshotForBounds:v12 offset:{v7, v9}];

  if (v9 > 0.0)
  {
    v13 = [(AVTStickerViewController *)self pagingController];
    [v13 setPageContentOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }

  v14 = [(AVTStickerViewController *)self view];
  v4[2](v4, v14);

  v15 = [(AVTStickerViewController *)self pagingController];
  [v15 setPageContentOffset:{v7, v9}];
}

- (void)clearStickerSelection
{
  v2 = [(AVTStickerViewController *)self pagingController];
  [v2 clearStickerSelection];
}

- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(AVTStickerViewController *)self pagingController];
  [v7 willEndDisplaying];

  v8 = [(AVTStickerViewController *)self presenterDelegate];
  [v8 presentAvatarUIController:v6 animated:v4];

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

- (void)dismissAvatarUIControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTStickerViewController *)self pagingController];
  [v5 willStartDisplaying];

  v6 = [(AVTStickerViewController *)self presenterDelegate];
  [v6 dismissAvatarUIControllerAnimated:v3];
}

- (void)avatarPicker:(id)a3 didSelectAvatarRecord:(id)a4
{
  v17 = a4;
  v6 = a3;
  v7 = [v17 identifier];
  [(AVTStickerViewController *)self setSelectedRecordIdentifier:v7];

  v8 = [(AVTStickerViewController *)self taskScheduler];
  v9 = [(AVTStickerViewController *)self selectedRecordIdentifier];
  [v8 setSelectedAvatarRecordIdentifier:v9];

  v10 = [(AVTStickerViewController *)self selectedRecordIdentifier];
  AVTUISetStickersLastSelected();

  v11 = [(AVTStickerViewController *)self environment];
  v12 = [v11 usageTrackingSession];
  [v12 didChangeCurrentAvatarInStickers:v17];

  v13 = [(AVTStickerViewController *)self avatarPicker];

  if (v13 == v6)
  {
    [(AVTStickerViewController *)self pagingController];
  }

  else
  {
    [(AVTStickerViewController *)self avatarPicker];
  }
  v14 = ;
  v15 = v13 != v6;
  v16 = [v17 identifier];
  [v14 selectAvatarRecordWithIdentifier:v16 animated:v15];
}

- (BOOL)avatarPicker:(id)a3 shouldPresentMemojiEditorForAvatarRecord:(id)a4
{
  v5 = a4;
  v6 = [(AVTStickerViewController *)self stickerSelectionDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(AVTStickerViewController *)self stickerSelectionDelegate];
    v9 = [v8 stickerViewController:self shouldPresentMemojiEditorForSelectedAvatar:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)dataSource:(id)a3 didAddRecord:(id)a4 atIndex:(unint64_t)a5
{
  v7 = a4;
  v8 = [(AVTStickerViewController *)self pagingController];
  [v8 insertPageForRecord:v7 atIndex:a5];

  [(AVTStickerViewController *)self reloadPickerView];
  v9 = [v7 identifier];

  [(AVTStickerViewController *)self selectRecordForIdentifier:v9];
  [(AVTStickerViewController *)self updateScrollToShowAvatarPicker:0];
  v10 = [(AVTStickerViewController *)self selectedRecordIdentifier];
  AVTUISetStickersLastSelected();
}

- (void)dataSource:(id)a3 didEditRecord:(id)a4 atIndex:(unint64_t)a5
{
  v7 = a4;
  v8 = [(AVTStickerViewController *)self pagingController];
  [v8 reloadPageForRecord:v7 atIndex:a5];

  [(AVTStickerViewController *)self updateScrollToShowAvatarPicker:0];

  [(AVTStickerViewController *)self reloadPickerView];
}

- (void)dataSource:(id)a3 didRemoveRecord:(id)a4 atIndex:(unint64_t)a5
{
  v14 = a3;
  v8 = a4;
  v9 = [(AVTStickerViewController *)self pagingController];
  [v9 deletePageForRecord:v8 atIndex:a5];

  [(AVTStickerViewController *)self reloadPickerView];
  v10 = [v14 indexSetForEditableRecords];
  if (![v10 count])
  {
    v11 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];

    v10 = v11;
  }

  v12 = [v14 recordAtIndex:{objc_msgSend(v10, "closestIndexToIndex:greaterIndexesFirst:", a5, 1)}];
  v13 = [v12 identifier];
  [(AVTStickerViewController *)self selectRecordForIdentifier:v13];

  [(AVTStickerViewController *)self updateScrollToShowAvatarPicker:0];
}

- (BOOL)shouldPresentPaddleView
{
  if ((AVTUIAlwaysShowPaddleView() & 1) == 0 && (AVTUIHasDisplayedPaddleView() & 1) != 0 || ![(AVTStickerViewController *)self allowAvatarCreation])
  {
    return 0;
  }

  v3 = [(AVTStickerViewController *)self paddleView];
  v4 = v3 == 0;

  return v4;
}

- (void)presentPaddleViewIfNeeded
{
  if ([(AVTStickerViewController *)self shouldPresentPaddleView])
  {
    v3 = [[AVTPaddleView alloc] initWithLayoutDirection:1];
    [(AVTStickerViewController *)self setPaddleView:v3];

    v4 = [(AVTStickerViewController *)self paddleView];
    [v4 setDelegate:self];

    v5 = [(AVTStickerViewController *)self view];
    v6 = [(AVTStickerViewController *)self paddleView];
    [v5 addSubview:v6];

    [(AVTStickerViewController *)self updatePaddleViewLayoutIfNecessary];
    v7 = [(AVTStickerViewController *)self paddleView];
    [v7 setAlpha:0.0];

    v8 = [(AVTStickerViewController *)self paddleView];
    [v8 showAnimated:1];

    MEMORY[0x1EEDEFCF0](1);
  }
}

- (void)updatePaddleViewLayoutIfNecessary
{
  v3 = [(AVTStickerViewController *)self paddleView];

  if (v3)
  {
    v4 = [(AVTStickerViewController *)self pagingController];
    v5 = [v4 view];
    [v5 layoutIfNeeded];

    v6 = [(AVTStickerViewController *)self avatarPicker];
    v7 = [v6 view];
    [v7 layoutIfNeeded];

    v8 = [(AVTStickerViewController *)self avatarPicker];
    v17 = [v8 viewForAddItem];

    if (v17)
    {
      [v17 bounds];
      Width = CGRectGetWidth(v19);
      v10 = [v17 button];
      [v10 bounds];
      v11 = (Width - CGRectGetWidth(v20)) * 0.5;
      v12 = [(AVTStickerViewController *)self paddleView];
      [v12 setPadding:v11];

      v13 = [(AVTStickerViewController *)self pagingController];
      v14 = [v13 firstPageItemView];

      v15 = [(AVTStickerViewController *)self paddleView];
      v16 = [v17 button];
      [v15 updateLayoutFromPlusButtonView:v16 videoView:v14];
    }
  }
}

- (void)dismissPaddleViewIfNecessary
{
  v3 = [(AVTStickerViewController *)self paddleView];

  if (v3)
  {
    v4 = [(AVTStickerViewController *)self paddleView];
    [v4 dismissAnimated:1];

    [(AVTStickerViewController *)self setPaddleView:0];
  }
}

- (void)paddleViewTapped:(id)a3
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
  v3 = [(AVTStickerViewController *)self pagingController];
  v4 = [(AVTStickerViewController *)self selectedRecordIdentifier];
  v5 = [v3 pageIndexForAvatarRecordIdentifierForPPT:v4];

  v8 = [(AVTStickerViewController *)self avatarPicker];
  v6 = [(AVTStickerViewController *)self recordDataSource];
  v7 = [v6 recordAtIndex:v5];
  [v8 presentActionsForAvatarForPPT:v7];
}

- (void)swipeRightWithDelay:(int64_t)a3 forCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(AVTStickerViewController *)self pagingController];
  v8 = [(AVTStickerViewController *)self selectedRecordIdentifier];
  v9 = [v7 pageIndexForAvatarRecordIdentifierForPPT:v8];

  v10 = v9 + 1;
  v11 = [(AVTStickerViewController *)self recordDataSource];
  v12 = [v11 numberOfRecords];

  if (v10 < v12)
  {
    v13 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:0];
    v14 = [(AVTStickerViewController *)self pagingController];
    v15 = [v14 collectionViewForPPT];
    [v15 scrollToItemAtIndexPath:v13 atScrollPosition:8 animated:1];
  }

  if (v6)
  {
    if (a3 < 1)
    {
      v6[2](v6);
    }

    else
    {
      v16 = dispatch_time(0, 1000000000 * a3);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__AVTStickerViewController_PPT__swipeRightWithDelay_forCompletionHandler___block_invoke;
      block[3] = &unk_1E7F3AFF8;
      v18 = v6;
      dispatch_after(v16, MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)swipeLeftWithDelay:(int64_t)a3 forCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(AVTStickerViewController *)self pagingController];
  v8 = [(AVTStickerViewController *)self selectedRecordIdentifier];
  v9 = [v7 pageIndexForAvatarRecordIdentifierForPPT:v8];

  if (v9 >= 1)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForItem:v9 - 1 inSection:0];
    v11 = [(AVTStickerViewController *)self pagingController];
    v12 = [v11 collectionViewForPPT];
    [v12 scrollToItemAtIndexPath:v10 atScrollPosition:8 animated:1];
  }

  if (v6)
  {
    if (a3 < 1)
    {
      v6[2](v6);
    }

    else
    {
      v13 = dispatch_time(0, 1000000000 * a3);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__AVTStickerViewController_PPT__swipeLeftWithDelay_forCompletionHandler___block_invoke;
      block[3] = &unk_1E7F3AFF8;
      v15 = v6;
      dispatch_after(v13, MEMORY[0x1E69E96A0], block);
    }
  }
}

@end