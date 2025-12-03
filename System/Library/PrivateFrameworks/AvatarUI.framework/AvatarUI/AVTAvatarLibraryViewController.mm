@interface AVTAvatarLibraryViewController
- (AVTAvatarLibraryViewController)initWithAvatarStore:(id)store;
- (AVTAvatarLibraryViewController)initWithAvatarStore:(id)store environment:(id)environment;
- (AVTAvatarLibraryViewController)initWithModel:(id)model imageProvider:(id)provider environment:(id)environment;
- (AVTAvatarLibraryViewControllerDelegate)delegate;
- (BOOL)shouldUseLargeLayout;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didAddRecord:(id)record;
- (void)didDeleteRecord:(id)record;
- (void)didEditRecord:(id)record;
- (void)didLongPress:(id)press;
- (void)didTapDoneButton:(id)button;
- (void)didUpdateLibraryItems:(id)items;
- (void)insertItemsAtIndexes:(id)indexes deleteItemsAtIndexes:(id)atIndexes reloadItemsAtIndexes:(id)itemsAtIndexes;
- (void)loadView;
- (void)presentUIViewController:(id)controller forItem:(id)item;
- (void)presetEditorViewController:(id)controller;
- (void)updateVisibleHeaders;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AVTAvatarLibraryViewController

- (AVTAvatarLibraryViewController)initWithAvatarStore:(id)store
{
  storeCopy = store;
  v5 = +[AVTUIEnvironment defaultEnvironment];
  v6 = [(AVTAvatarLibraryViewController *)self initWithAvatarStore:storeCopy environment:v5];

  return v6;
}

- (AVTAvatarLibraryViewController)initWithAvatarStore:(id)store environment:(id)environment
{
  storeCopy = store;
  environmentCopy = environment;
  if (([storeCopy conformsToProtocol:&unk_1F39DD3B0] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Store %@ isn't valid", storeCopy}];
  }

  v8 = storeCopy;
  v9 = [AVTViewSessionProvider alloc];
  [AVTViewSessionProvider backingSizeForEnvironment:environmentCopy];
  v11 = v10;
  v13 = v12;
  v14 = +[AVTViewSessionProvider creatorForAVTView];
  v15 = [(AVTViewSessionProvider *)v9 initWithAVTViewBackingSize:v14 viewCreator:environmentCopy environment:v11, v13];

  v16 = [[AVTAvatarLibraryModel alloc] initWithAvatarStore:v8 avtViewSessionProvider:v15 environment:environmentCopy];
  v17 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:environmentCopy];
  v18 = [(AVTAvatarLibraryViewController *)self initWithModel:v16 imageProvider:v17 environment:environmentCopy];

  return v18;
}

- (AVTAvatarLibraryViewController)initWithModel:(id)model imageProvider:(id)provider environment:(id)environment
{
  modelCopy = model;
  providerCopy = provider;
  environmentCopy = environment;
  v15.receiver = self;
  v15.super_class = AVTAvatarLibraryViewController;
  v12 = [(AVTAvatarLibraryViewController *)&v15 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageProvider, provider);
    objc_storeStrong(&v13->_model, model);
    v13->_environment = environmentCopy;
    [(AVTAvatarLibraryModel *)v13->_model setDelegate:v13];
    [(AVTAvatarLibraryModel *)v13->_model load];
  }

  return v13;
}

- (BOOL)shouldUseLargeLayout
{
  environment = [(AVTAvatarLibraryViewController *)self environment];
  if ([environment deviceIsPad])
  {
    deviceIsMac = 1;
  }

  else
  {
    environment2 = [(AVTAvatarLibraryViewController *)self environment];
    deviceIsMac = [environment2 deviceIsMac];
  }

  return deviceIsMac;
}

- (void)loadView
{
  v8 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v8 setScrollDirection:0];
  [v8 setItemSize:{102.0, 102.0}];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = [v3 initWithFrame:v8 collectionViewLayout:?];

  [v8 setMinimumInteritemSpacing:14.0];
  [v8 setMinimumLineSpacing:14.0];
  if (![(AVTAvatarLibraryViewController *)self shouldUseLargeLayout])
  {
    [(UICollectionView *)v5 setContentInset:40.0, 20.0, 0.0, 20.0];
  }

  [(UICollectionView *)v5 setAutoresizingMask:18];
  [(UICollectionView *)v5 setDelegate:self];
  [(UICollectionView *)v5 setDataSource:self];
  collectionView = self->_collectionView;
  self->_collectionView = v5;
  v7 = v5;

  [(AVTAvatarLibraryViewController *)self setView:v7];
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = AVTAvatarLibraryViewController;
  [(AVTAvatarLibraryViewController *)&v23 viewDidLayoutSubviews];
  collectionView = [(AVTAvatarLibraryViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  if ([(AVTAvatarLibraryViewController *)self shouldUseLargeLayout])
  {
    [collectionViewLayout minimumInteritemSpacing];
    v6 = v5 + v5 + 459.0;
    collectionView2 = [(AVTAvatarLibraryViewController *)self collectionView];
    [collectionView2 bounds];
    v9 = (v8 - v6) * 0.5;

    collectionView3 = [(AVTAvatarLibraryViewController *)self collectionView];
    [collectionView3 setContentInset:{40.0, v9, 0.0, v9}];

    v11 = 153.0;
  }

  else
  {
    collectionView4 = [(AVTAvatarLibraryViewController *)self collectionView];
    [collectionView4 bounds];
    v14 = v13;
    collectionView5 = [(AVTAvatarLibraryViewController *)self collectionView];
    [collectionView5 contentInset];
    v17 = v14 - v16;
    collectionView6 = [(AVTAvatarLibraryViewController *)self collectionView];
    [collectionView6 contentInset];
    v20 = v17 - v19;
    [collectionViewLayout minimumInteritemSpacing];
    v22 = v20 + v21 * -2.0;

    v11 = floor(v22 / 3.0);
  }

  [collectionViewLayout setItemSize:{v11, v11}];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = AVTAvatarLibraryViewController;
  [(AVTAvatarLibraryViewController *)&v19 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_didTapDoneButton_];
  navigationItem = [(AVTAvatarLibraryViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  collectionView = [(AVTAvatarLibraryViewController *)self collectionView];
  [collectionView setBackgroundColor:systemBackgroundColor];

  collectionView2 = [(AVTAvatarLibraryViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[AVTAvatarLibraryCollectionViewCell cellIdentifier];
  [collectionView2 registerClass:v8 forCellWithReuseIdentifier:v9];

  collectionView3 = [(AVTAvatarLibraryViewController *)self collectionView];
  v11 = objc_opt_class();
  v12 = +[AVTAvatarLibraryCollectionViewAddCell cellIdentifier];
  [collectionView3 registerClass:v11 forCellWithReuseIdentifier:v12];

  collectionView4 = [(AVTAvatarLibraryViewController *)self collectionView];
  v14 = objc_opt_class();
  v15 = *MEMORY[0x1E69DDC08];
  v16 = +[AVTAvatarLibraryHeaderView reuseIdentifier];
  [collectionView4 registerClass:v14 forSupplementaryViewOfKind:v15 withReuseIdentifier:v16];

  v17 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_didLongPress_];
  [v17 setDelaysTouchesBegan:1];
  collectionView5 = [(AVTAvatarLibraryViewController *)self collectionView];
  [collectionView5 addGestureRecognizer:v17];
}

- (void)didLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    collectionView = [(AVTAvatarLibraryViewController *)self collectionView];
    [pressCopy locationInView:collectionView];
    v6 = v5;
    v8 = v7;

    collectionView2 = [(AVTAvatarLibraryViewController *)self collectionView];
    v10 = [collectionView2 indexPathForItemAtPoint:{v6, v8}];

    model = [(AVTAvatarLibraryViewController *)self model];
    [model performActionOnItemAtIndex:{objc_msgSend(v10, "item")}];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(AVTAvatarLibraryViewController *)self model:view];
  libraryItems = [v4 libraryItems];
  v6 = [libraryItems count];

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  model = [(AVTAvatarLibraryViewController *)self model];
  libraryItems = [model libraryItems];
  v10 = [libraryItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  cellIdentifier = [objc_opt_class() cellIdentifier];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:pathCopy];

  imageProvider = [(AVTAvatarLibraryViewController *)self imageProvider];
  [v10 configureCell:v12 imageProvider:imageProvider];

  return v12;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v8 = *MEMORY[0x1E69DDC08];
  pathCopy = path;
  kindCopy = kind;
  viewCopy = view;
  if (([kindCopy isEqual:v8] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Only registered for headers!"];
  }

  v12 = +[AVTAvatarLibraryHeaderView reuseIdentifier];
  v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v12 forIndexPath:pathCopy];

  model = [(AVTAvatarLibraryViewController *)self model];
  updateCountLabel(v13, model);

  return v13;
}

- (void)updateVisibleHeaders
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  collectionView = [(AVTAvatarLibraryViewController *)self collectionView];
  v4 = *MEMORY[0x1E69DDC08];
  v5 = [collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x1E69DDC08]];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        collectionView2 = [(AVTAvatarLibraryViewController *)self collectionView];
        v12 = [collectionView2 supplementaryViewForElementKind:v4 atIndexPath:v10];

        model = [(AVTAvatarLibraryViewController *)self model];
        updateCountLabel(v12, model);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  v5 = *MEMORY[0x1E695F060];
  v6 = 25.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  model = [(AVTAvatarLibraryViewController *)self model];
  item = [pathCopy item];

  [model performActionOnItemAtIndex:item];
}

- (void)didTapDoneButton:(id)button
{
  delegate = [(AVTAvatarLibraryViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AVTAvatarLibraryViewController *)self delegate];
    [delegate2 avatarLibraryControllerDidFinish:self];
  }
}

- (void)didAddRecord:(id)record
{
  recordCopy = record;
  [(AVTAvatarLibraryViewController *)self updateVisibleHeaders];
  delegate = [(AVTAvatarLibraryViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AVTAvatarLibraryViewController *)self delegate];
    [delegate2 avatarLibraryController:self didChange:0 avatar:recordCopy];
  }
}

- (void)didDeleteRecord:(id)record
{
  recordCopy = record;
  [(AVTAvatarLibraryViewController *)self updateVisibleHeaders];
  delegate = [(AVTAvatarLibraryViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AVTAvatarLibraryViewController *)self delegate];
    [delegate2 avatarLibraryController:self didChange:1 avatar:recordCopy];
  }
}

- (void)didEditRecord:(id)record
{
  recordCopy = record;
  delegate = [(AVTAvatarLibraryViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AVTAvatarLibraryViewController *)self delegate];
    [delegate2 avatarLibraryController:self didChange:2 avatar:recordCopy];
  }
}

- (void)didUpdateLibraryItems:(id)items
{
  collectionView = [(AVTAvatarLibraryViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)presetEditorViewController:(id)controller
{
  v4 = MEMORY[0x1E69DCCD8];
  controllerCopy = controller;
  v6 = [[v4 alloc] initWithRootViewController:controllerCopy];

  [(AVTAvatarLibraryViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)presentUIViewController:(id)controller forItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  model = [(AVTAvatarLibraryViewController *)self model];
  libraryItems = [model libraryItems];
  v10 = [libraryItems indexOfObject:itemCopy];

  collectionView = [(AVTAvatarLibraryViewController *)self collectionView];
  v12 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:0];
  v23 = [collectionView cellForItemAtIndexPath:v12];

  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setSourceView:v23];

  [v23 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  popoverPresentationController2 = [controllerCopy popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v15, v17, v19, v21}];

  [(AVTAvatarLibraryViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)insertItemsAtIndexes:(id)indexes deleteItemsAtIndexes:(id)atIndexes reloadItemsAtIndexes:(id)itemsAtIndexes
{
  indexesCopy = indexes;
  atIndexesCopy = atIndexes;
  itemsAtIndexesCopy = itemsAtIndexes;
  collectionView = [(AVTAvatarLibraryViewController *)self collectionView];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__AVTAvatarLibraryViewController_insertItemsAtIndexes_deleteItemsAtIndexes_reloadItemsAtIndexes___block_invoke;
  v15[3] = &unk_1E7F3C078;
  v16 = indexesCopy;
  selfCopy = self;
  v18 = atIndexesCopy;
  v19 = itemsAtIndexesCopy;
  v12 = itemsAtIndexesCopy;
  v13 = atIndexesCopy;
  v14 = indexesCopy;
  [collectionView performBatchUpdates:v15 completion:0];
}

void __97__AVTAvatarLibraryViewController_insertItemsAtIndexes_deleteItemsAtIndexes_reloadItemsAtIndexes___block_invoke(void **a1)
{
  if (a1[4])
  {
    v2 = [a1[5] collectionView];
    v3 = (*(sIndexSetToIndexPaths + 2))(sIndexSetToIndexPaths, a1[4]);
    [v2 insertItemsAtIndexPaths:v3];
  }

  if (a1[6])
  {
    v4 = [a1[5] collectionView];
    v5 = (*(sIndexSetToIndexPaths + 2))(sIndexSetToIndexPaths, a1[6]);
    [v4 deleteItemsAtIndexPaths:v5];
  }

  if (a1[7])
  {
    v7 = [a1[5] collectionView];
    v6 = (*(sIndexSetToIndexPaths + 2))(sIndexSetToIndexPaths, a1[7]);
    [v7 reloadItemsAtIndexPaths:v6];
  }
}

- (AVTAvatarLibraryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end