@interface AVTAvatarLibraryViewController
- (AVTAvatarLibraryViewController)initWithAvatarStore:(id)a3;
- (AVTAvatarLibraryViewController)initWithAvatarStore:(id)a3 environment:(id)a4;
- (AVTAvatarLibraryViewController)initWithModel:(id)a3 imageProvider:(id)a4 environment:(id)a5;
- (AVTAvatarLibraryViewControllerDelegate)delegate;
- (BOOL)shouldUseLargeLayout;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didAddRecord:(id)a3;
- (void)didDeleteRecord:(id)a3;
- (void)didEditRecord:(id)a3;
- (void)didLongPress:(id)a3;
- (void)didTapDoneButton:(id)a3;
- (void)didUpdateLibraryItems:(id)a3;
- (void)insertItemsAtIndexes:(id)a3 deleteItemsAtIndexes:(id)a4 reloadItemsAtIndexes:(id)a5;
- (void)loadView;
- (void)presentUIViewController:(id)a3 forItem:(id)a4;
- (void)presetEditorViewController:(id)a3;
- (void)updateVisibleHeaders;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AVTAvatarLibraryViewController

- (AVTAvatarLibraryViewController)initWithAvatarStore:(id)a3
{
  v4 = a3;
  v5 = +[AVTUIEnvironment defaultEnvironment];
  v6 = [(AVTAvatarLibraryViewController *)self initWithAvatarStore:v4 environment:v5];

  return v6;
}

- (AVTAvatarLibraryViewController)initWithAvatarStore:(id)a3 environment:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 conformsToProtocol:&unk_1F39DD3B0] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Store %@ isn't valid", v6}];
  }

  v8 = v6;
  v9 = [AVTViewSessionProvider alloc];
  [AVTViewSessionProvider backingSizeForEnvironment:v7];
  v11 = v10;
  v13 = v12;
  v14 = +[AVTViewSessionProvider creatorForAVTView];
  v15 = [(AVTViewSessionProvider *)v9 initWithAVTViewBackingSize:v14 viewCreator:v7 environment:v11, v13];

  v16 = [[AVTAvatarLibraryModel alloc] initWithAvatarStore:v8 avtViewSessionProvider:v15 environment:v7];
  v17 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:v7];
  v18 = [(AVTAvatarLibraryViewController *)self initWithModel:v16 imageProvider:v17 environment:v7];

  return v18;
}

- (AVTAvatarLibraryViewController)initWithModel:(id)a3 imageProvider:(id)a4 environment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AVTAvatarLibraryViewController;
  v12 = [(AVTAvatarLibraryViewController *)&v15 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_imageProvider, a4);
    objc_storeStrong(&v13->_model, a3);
    v13->_environment = v11;
    [(AVTAvatarLibraryModel *)v13->_model setDelegate:v13];
    [(AVTAvatarLibraryModel *)v13->_model load];
  }

  return v13;
}

- (BOOL)shouldUseLargeLayout
{
  v3 = [(AVTAvatarLibraryViewController *)self environment];
  if ([v3 deviceIsPad])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(AVTAvatarLibraryViewController *)self environment];
    v4 = [v5 deviceIsMac];
  }

  return v4;
}

- (void)loadView
{
  v8 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v8 setScrollDirection:0];
  [v8 setItemSize:{102.0, 102.0}];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
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
  v3 = [(AVTAvatarLibraryViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];

  if ([(AVTAvatarLibraryViewController *)self shouldUseLargeLayout])
  {
    [v4 minimumInteritemSpacing];
    v6 = v5 + v5 + 459.0;
    v7 = [(AVTAvatarLibraryViewController *)self collectionView];
    [v7 bounds];
    v9 = (v8 - v6) * 0.5;

    v10 = [(AVTAvatarLibraryViewController *)self collectionView];
    [v10 setContentInset:{40.0, v9, 0.0, v9}];

    v11 = 153.0;
  }

  else
  {
    v12 = [(AVTAvatarLibraryViewController *)self collectionView];
    [v12 bounds];
    v14 = v13;
    v15 = [(AVTAvatarLibraryViewController *)self collectionView];
    [v15 contentInset];
    v17 = v14 - v16;
    v18 = [(AVTAvatarLibraryViewController *)self collectionView];
    [v18 contentInset];
    v20 = v17 - v19;
    [v4 minimumInteritemSpacing];
    v22 = v20 + v21 * -2.0;

    v11 = floor(v22 / 3.0);
  }

  [v4 setItemSize:{v11, v11}];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = AVTAvatarLibraryViewController;
  [(AVTAvatarLibraryViewController *)&v19 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_didTapDoneButton_];
  v4 = [(AVTAvatarLibraryViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v6 = [(AVTAvatarLibraryViewController *)self collectionView];
  [v6 setBackgroundColor:v5];

  v7 = [(AVTAvatarLibraryViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[AVTAvatarLibraryCollectionViewCell cellIdentifier];
  [v7 registerClass:v8 forCellWithReuseIdentifier:v9];

  v10 = [(AVTAvatarLibraryViewController *)self collectionView];
  v11 = objc_opt_class();
  v12 = +[AVTAvatarLibraryCollectionViewAddCell cellIdentifier];
  [v10 registerClass:v11 forCellWithReuseIdentifier:v12];

  v13 = [(AVTAvatarLibraryViewController *)self collectionView];
  v14 = objc_opt_class();
  v15 = *MEMORY[0x1E69DDC08];
  v16 = +[AVTAvatarLibraryHeaderView reuseIdentifier];
  [v13 registerClass:v14 forSupplementaryViewOfKind:v15 withReuseIdentifier:v16];

  v17 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_didLongPress_];
  [v17 setDelaysTouchesBegan:1];
  v18 = [(AVTAvatarLibraryViewController *)self collectionView];
  [v18 addGestureRecognizer:v17];
}

- (void)didLongPress:(id)a3
{
  v12 = a3;
  if ([v12 state] == 1)
  {
    v4 = [(AVTAvatarLibraryViewController *)self collectionView];
    [v12 locationInView:v4];
    v6 = v5;
    v8 = v7;

    v9 = [(AVTAvatarLibraryViewController *)self collectionView];
    v10 = [v9 indexPathForItemAtPoint:{v6, v8}];

    v11 = [(AVTAvatarLibraryViewController *)self model];
    [v11 performActionOnItemAtIndex:{objc_msgSend(v10, "item")}];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(AVTAvatarLibraryViewController *)self model:a3];
  v5 = [v4 libraryItems];
  v6 = [v5 count];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarLibraryViewController *)self model];
  v9 = [v8 libraryItems];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

  v11 = [objc_opt_class() cellIdentifier];
  v12 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v6];

  v13 = [(AVTAvatarLibraryViewController *)self imageProvider];
  [v10 configureCell:v12 imageProvider:v13];

  return v12;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = *MEMORY[0x1E69DDC08];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if (([v10 isEqual:v8] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Only registered for headers!"];
  }

  v12 = +[AVTAvatarLibraryHeaderView reuseIdentifier];
  v13 = [v11 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v12 forIndexPath:v9];

  v14 = [(AVTAvatarLibraryViewController *)self model];
  updateCountLabel(v13, v14);

  return v13;
}

- (void)updateVisibleHeaders
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(AVTAvatarLibraryViewController *)self collectionView];
  v4 = *MEMORY[0x1E69DDC08];
  v5 = [v3 visibleSupplementaryViewsOfKind:*MEMORY[0x1E69DDC08]];

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
        v11 = [(AVTAvatarLibraryViewController *)self collectionView];
        v12 = [v11 supplementaryViewForElementKind:v4 atIndexPath:v10];

        v13 = [(AVTAvatarLibraryViewController *)self model];
        updateCountLabel(v12, v13);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v5 = *MEMORY[0x1E695F060];
  v6 = 25.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v7 = [(AVTAvatarLibraryViewController *)self model];
  v6 = [v5 item];

  [v7 performActionOnItemAtIndex:v6];
}

- (void)didTapDoneButton:(id)a3
{
  v4 = [(AVTAvatarLibraryViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVTAvatarLibraryViewController *)self delegate];
    [v6 avatarLibraryControllerDidFinish:self];
  }
}

- (void)didAddRecord:(id)a3
{
  v7 = a3;
  [(AVTAvatarLibraryViewController *)self updateVisibleHeaders];
  v4 = [(AVTAvatarLibraryViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVTAvatarLibraryViewController *)self delegate];
    [v6 avatarLibraryController:self didChange:0 avatar:v7];
  }
}

- (void)didDeleteRecord:(id)a3
{
  v7 = a3;
  [(AVTAvatarLibraryViewController *)self updateVisibleHeaders];
  v4 = [(AVTAvatarLibraryViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVTAvatarLibraryViewController *)self delegate];
    [v6 avatarLibraryController:self didChange:1 avatar:v7];
  }
}

- (void)didEditRecord:(id)a3
{
  v7 = a3;
  v4 = [(AVTAvatarLibraryViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVTAvatarLibraryViewController *)self delegate];
    [v6 avatarLibraryController:self didChange:2 avatar:v7];
  }
}

- (void)didUpdateLibraryItems:(id)a3
{
  v3 = [(AVTAvatarLibraryViewController *)self collectionView];
  [v3 reloadData];
}

- (void)presetEditorViewController:(id)a3
{
  v4 = MEMORY[0x1E69DCCD8];
  v5 = a3;
  v6 = [[v4 alloc] initWithRootViewController:v5];

  [(AVTAvatarLibraryViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)presentUIViewController:(id)a3 forItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarLibraryViewController *)self model];
  v9 = [v8 libraryItems];
  v10 = [v9 indexOfObject:v6];

  v11 = [(AVTAvatarLibraryViewController *)self collectionView];
  v12 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:0];
  v23 = [v11 cellForItemAtIndexPath:v12];

  v13 = [v7 popoverPresentationController];
  [v13 setSourceView:v23];

  [v23 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v7 popoverPresentationController];
  [v22 setSourceRect:{v15, v17, v19, v21}];

  [(AVTAvatarLibraryViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)insertItemsAtIndexes:(id)a3 deleteItemsAtIndexes:(id)a4 reloadItemsAtIndexes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AVTAvatarLibraryViewController *)self collectionView];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__AVTAvatarLibraryViewController_insertItemsAtIndexes_deleteItemsAtIndexes_reloadItemsAtIndexes___block_invoke;
  v15[3] = &unk_1E7F3C078;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performBatchUpdates:v15 completion:0];
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