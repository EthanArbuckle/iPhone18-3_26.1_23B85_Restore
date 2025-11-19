@interface CNSharingProfilePhotoPickerViewController
- (CNSharingProfilePhotoPickerViewController)initWithContact:(id)a3 avatarRecord:(id)a4 avatarItemProviderConfiguration:(id)a5 logger:(id)a6;
- (CNSharingProfilePhotoPickerViewControllerDelegate)delegate;
- (double)previewEdgeSize;
- (id)buildItems;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didSelectCustomizeButton:(id)a3;
- (void)reloadData;
- (void)reloadItems;
- (void)setupConstraints;
- (void)updateInteritemSpacing;
- (void)updatePreviewForSelectedItem;
- (void)updateWithContact:(id)a3 fromFullPhotoPicker:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CNSharingProfilePhotoPickerViewController

- (CNSharingProfilePhotoPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v15 = a3;
  v6 = [v15 cellForItemAtIndexPath:a4];
  v7 = [v6 pickerItem];
  v8 = [v7 avatarItem];

  if (v8)
  {
    v9 = [v6 pickerItem];
    selectedItem = self->_selectedItem;
    self->_selectedItem = v9;

    [(CNSharingProfilePhotoPickerViewController *)self updatePreviewForSelectedItem];
  }

  else
  {
    v11 = [(CNSharingProfilePhotoPickerViewController *)self delegate];
    [v11 sharingPhotoPickerDidSelectAddItem:self];

    v12 = [(NSArray *)self->_items indexOfObject:self->_selectedItem];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    v14 = [MEMORY[0x1E696AC88] indexPathForItem:v13 inSection:0];
    [v15 selectItemAtIndexPath:v14 animated:0 scrollPosition:0];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CNSharingProfilePhotoPickerItemCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  v10 = [(NSArray *)self->_items count];
  if (v10 > [v6 item])
  {
    v11 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [v6 item]);
    [v9 setIsSmallScreen:self->_isSmallScreenDevice];
    [v9 setPickerItem:v11];
  }

  return v9;
}

- (void)didSelectCustomizeButton:(id)a3
{
  v4 = [(CNSharingProfilePhotoPickerViewController *)self delegate];
  [v4 sharingPhotoPickerDidSelectAddItem:self];
}

- (void)updatePreviewForSelectedItem
{
  v3 = [(CNSharingProfilePhotoPickerItem *)self->_selectedItem avatarItem];

  if (v3)
  {
    v4 = [(CNSharingProfilePhotoPickerItem *)self->_selectedItem cachedPreviewImage];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      selectedItem = self->_selectedItem;
      [(UIImageView *)self->_previewView bounds];
      v9 = [(CNSharingProfilePhotoPickerItem *)selectedItem compositeImageWithSize:v7, v8];
      [(CNSharingProfilePhotoPickerItem *)self->_selectedItem setCachedPreviewImage:v9];
      v5 = v9;
    }

    v10 = v5;
    [(UIImageView *)self->_previewView setImage:v5];
  }
}

- (void)updateWithContact:(id)a3 fromFullPhotoPicker:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CNSharingProfileAvatarItemProvider *)self->_itemProvider updateWithContact:v6 fromFullPhotoPicker:v4];
  [(CNSharingProfilePhotoPickerViewController *)self reloadItems];
  v7 = [(CNSharingProfilePhotoPickerViewController *)self view];
  [v7 setNeedsLayout];

  if ([v6 imageDataAvailable])
  {
    v8 = [v6 rawImageType];
    itemProvider = self->_itemProvider;
    if (v8 == 1 || v8 == 4)
    {
      v10 = [(CNSharingProfileAvatarItemProvider *)itemProvider photoItem];
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    else if (v8 == 2)
    {
      v10 = [(CNSharingProfileAvatarItemProvider *)itemProvider monogramItem];
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = [(CNSharingProfileAvatarItemProvider *)itemProvider animojiItem];
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    items = self->_items;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__CNSharingProfilePhotoPickerViewController_updateWithContact_fromFullPhotoPicker___block_invoke;
    v19[3] = &unk_1E74E23F0;
    v12 = v10;
    v20 = v12;
    v13 = [(NSArray *)items _cn_indexOfFirstObjectPassingTest:v19];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v13;
      v15 = [(NSArray *)self->_items objectAtIndexedSubscript:v13];
      selectedItem = self->_selectedItem;
      self->_selectedItem = v15;

      selectorView = self->_selectorView;
      v18 = [MEMORY[0x1E696AC88] indexPathForItem:v14 inSection:0];
      [(UICollectionView *)selectorView selectItemAtIndexPath:v18 animated:0 scrollPosition:0];

      [(CNSharingProfilePhotoPickerViewController *)self updatePreviewForSelectedItem];
    }
  }

LABEL_13:
}

BOOL __83__CNSharingProfilePhotoPickerViewController_updateWithContact_fromFullPhotoPicker___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 avatarItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)buildItems
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(CNSharingProfileAvatarItemProvider *)self->_itemProvider avatarItems];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count") + 1}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = objc_alloc_init(CNSharingProfilePhotoPickerItem);
        [(CNSharingProfilePhotoPickerItem *)v10 setAvatarItem:v9, v14];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = objc_alloc_init(CNSharingProfilePhotoPickerItem);
  [(CNSharingProfilePhotoPickerItem *)v11 setSymbolImageName:@"ellipsis"];
  [v3 addObject:v11];
  v12 = [v3 copy];

  return v12;
}

- (void)reloadItems
{
  v3 = [(CNSharingProfilePhotoPickerViewController *)self buildItems];
  items = self->_items;
  self->_items = v3;

  selectorView = self->_selectorView;

  [(UICollectionView *)selectorView reloadData];
}

- (double)previewEdgeSize
{
  result = 200.0;
  if (self->_isSmallScreenDevice)
  {
    return 160.0;
  }

  return result;
}

- (void)reloadData
{
  v4 = [(UICollectionView *)self->_selectorView indexPathsForSelectedItems];
  if ([v4 count])
  {
    v3 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v3 = 0;
  }

  [(CNSharingProfileAvatarItemProvider *)self->_itemProvider clearCachedItems];
  [(CNSharingProfilePhotoPickerViewController *)self reloadItems];
  [(CNSharingProfilePhotoPickerViewController *)self updateInteritemSpacing];
  if (v3)
  {
    [(UICollectionView *)self->_selectorView selectItemAtIndexPath:v3 animated:0 scrollPosition:0];
  }
}

- (void)updateInteritemSpacing
{
  if ([(NSArray *)self->_items count])
  {
    if ([(NSArray *)self->_items count]> 3)
    {
      v4 = [(NSArray *)self->_items count];
      [(UICollectionViewFlowLayout *)self->_selectorLayout itemSize];
      v6 = v5 * v4;
      v7 = [(CNSharingProfilePhotoPickerViewController *)self view];
      [v7 bounds];
      v8 = CGRectGetWidth(v11) - v6;

      v3 = floor(v8 / [(NSArray *)self->_items count]);
      if (v3 < 0.0)
      {
        v3 = 0.0;
      }
    }

    else
    {
      v3 = 13.0;
    }

    [(UICollectionViewFlowLayout *)self->_selectorLayout setMinimumLineSpacing:v3];
    selectorLayout = self->_selectorLayout;

    [(UICollectionViewFlowLayout *)selectorLayout invalidateLayout];
  }
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = CNSharingProfilePhotoPickerViewController;
  [(CNSharingProfilePhotoPickerViewController *)&v16 viewDidLayoutSubviews];
  if ([(NSArray *)self->_items count])
  {
    [(CNSharingProfilePhotoPickerViewController *)self updateInteritemSpacing];
    v3 = [(NSArray *)self->_items count];
    [(UICollectionViewFlowLayout *)self->_selectorLayout itemSize];
    v5 = v4;
    [(UICollectionViewFlowLayout *)self->_selectorLayout minimumLineSpacing];
    v7 = v6 * ([(NSArray *)self->_items count]- 1) + v3 * v5;
    v8 = [(CNSharingProfilePhotoPickerViewController *)self view];
    [v8 bounds];
    v9 = CGRectGetWidth(v17) - v7;

    v10 = floor(v9 * 0.5);
    if (v10 >= 0.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0.0;
    }

    [(UICollectionView *)self->_selectorView contentInset];
    if (v15 != v11 || v12 != 0.0 || v14 != 0.0 || v13 != 0.0)
    {
      [(UICollectionView *)self->_selectorView setContentInset:0.0, v11, 0.0, 0.0];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CNSharingProfilePhotoPickerViewController;
  [(CNSharingProfilePhotoPickerViewController *)&v10 viewWillAppear:a3];
  v4 = [(CNSharingProfilePhotoPickerViewController *)self view];
  [v4 layoutIfNeeded];

  [(CNSharingProfilePhotoPickerViewController *)self updatePreviewForSelectedItem];
  if ([(NSArray *)self->_items count])
  {
    v5 = [(NSArray *)self->_items indexOfObject:self->_selectedItem];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      if (v5 < [(NSArray *)self->_items count])
      {
        selectorView = self->_selectorView;
        v8 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
        [(UICollectionView *)selectorView selectItemAtIndexPath:v8 animated:0 scrollPosition:0];

        [(UICollectionView *)self->_selectorView contentInset];
        [(UICollectionView *)self->_selectorView setContentOffset:-v9, 0.0];
      }
    }
  }
}

- (void)setupConstraints
{
  v33 = [MEMORY[0x1E695DF70] array];
  v3 = [(UIImageView *)self->_previewView widthAnchor];
  [(CNSharingProfilePhotoPickerViewController *)self previewEdgeSize];
  v4 = [v3 constraintEqualToConstant:?];
  [v33 addObject:v4];

  v5 = [(UIImageView *)self->_previewView widthAnchor];
  v6 = [(UIImageView *)self->_previewView heightAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v33 addObject:v7];

  v8 = [(UIImageView *)self->_previewView centerXAnchor];
  v9 = [(CNSharingProfilePhotoPickerViewController *)self view];
  v10 = [v9 centerXAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v33 addObject:v11];

  v12 = [(UIImageView *)self->_previewView topAnchor];
  v13 = [(CNSharingProfilePhotoPickerViewController *)self view];
  v14 = [v13 topAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:28.0];
  [v33 addObject:v15];

  v16 = [(UICollectionView *)self->_selectorView leadingAnchor];
  v17 = [(CNSharingProfilePhotoPickerViewController *)self view];
  v18 = [v17 leadingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v33 addObject:v19];

  v20 = [(UICollectionView *)self->_selectorView trailingAnchor];
  v21 = [(CNSharingProfilePhotoPickerViewController *)self view];
  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v33 addObject:v23];

  v24 = [(UICollectionView *)self->_selectorView topAnchor];
  v25 = [(UIImageView *)self->_previewView bottomAnchor];
  [(CNSharingProfilePhotoPickerViewController *)self previewToSelectorSpacing];
  v26 = [v24 constraintEqualToAnchor:v25 constant:?];
  [v33 addObject:v26];

  v27 = [(UICollectionView *)self->_selectorView heightAnchor];
  v28 = [v27 constraintEqualToConstant:100.0];
  [v33 addObject:v28];

  v29 = [(UICollectionView *)self->_selectorView bottomAnchor];
  v30 = [(CNSharingProfilePhotoPickerViewController *)self view];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v33 addObject:v32];

  [MEMORY[0x1E696ACD8] activateConstraints:v33];
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = CNSharingProfilePhotoPickerViewController;
  [(CNSharingProfilePhotoPickerViewController *)&v31 viewDidLoad];
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  v5 = v4;

  self->_isSmallScreenDevice = v5 <= 568.0;
  v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
  previewView = self->_previewView;
  self->_previewView = v11;

  [(UIImageView *)self->_previewView setContentMode:1];
  [(UIImageView *)self->_previewView setClipsToBounds:1];
  [(UIImageView *)self->_previewView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNSharingProfilePhotoPickerViewController *)self previewEdgeSize];
  v14 = floor(v13 * 0.5);
  v15 = [(UIImageView *)self->_previewView layer];
  [v15 setCornerRadius:v14];

  v16 = [(CNSharingProfilePhotoPickerViewController *)self view];
  [v16 addSubview:self->_previewView];

  v17 = objc_alloc_init(MEMORY[0x1E69DC840]);
  selectorLayout = self->_selectorLayout;
  self->_selectorLayout = v17;

  [(UICollectionViewFlowLayout *)self->_selectorLayout setScrollDirection:1];
  v19 = 75.0;
  if (self->_isSmallScreenDevice)
  {
    v19 = 65.0;
  }

  [(UICollectionViewFlowLayout *)self->_selectorLayout setItemSize:v19, v19];
  [(UICollectionViewFlowLayout *)self->_selectorLayout setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)self->_selectorLayout setMinimumLineSpacing:0.0];
  v20 = [objc_alloc(MEMORY[0x1E69DC7F0]) initWithFrame:self->_selectorLayout collectionViewLayout:{v7, v8, v9, v10}];
  selectorView = self->_selectorView;
  self->_selectorView = v20;

  v22 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_selectorView setBackgroundColor:v22];

  [(UICollectionView *)self->_selectorView setContentInsetAdjustmentBehavior:2];
  [(UICollectionView *)self->_selectorView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_selectorView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_selectorView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_selectorView setDataSource:self];
  [(UICollectionView *)self->_selectorView setDelegate:self];
  v23 = [(CNSharingProfilePhotoPickerViewController *)self view];
  [v23 addSubview:self->_selectorView];

  v24 = self->_selectorView;
  v25 = objc_opt_class();
  v26 = +[CNSharingProfilePhotoPickerItemCell reuseIdentifier];
  [(UICollectionView *)v24 registerClass:v25 forCellWithReuseIdentifier:v26];

  v27 = [[CNSharingProfileAvatarItemProvider alloc] initWithContact:self->_contact avatarRecord:self->_avatarRecord logger:0];
  itemProvider = self->_itemProvider;
  self->_itemProvider = v27;

  [(CNSharingProfileAvatarItemProvider *)self->_itemProvider setConfiguration:self->_avatarItemProviderConfiguration];
  [(CNSharingProfilePhotoPickerViewController *)self reloadItems];
  [(CNSharingProfilePhotoPickerViewController *)self updateInteritemSpacing];
  if ([(NSArray *)self->_items count])
  {
    v29 = [(NSArray *)self->_items objectAtIndexedSubscript:0];
    selectedItem = self->_selectedItem;
    self->_selectedItem = v29;
  }

  [(CNSharingProfilePhotoPickerViewController *)self setupConstraints];
}

- (CNSharingProfilePhotoPickerViewController)initWithContact:(id)a3 avatarRecord:(id)a4 avatarItemProviderConfiguration:(id)a5 logger:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = CNSharingProfilePhotoPickerViewController;
  v15 = [(CNSharingProfilePhotoPickerViewController *)&v19 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contact, a3);
    objc_storeStrong(&v16->_avatarRecord, a4);
    objc_storeStrong(&v16->_avatarItemProviderConfiguration, a5);
    objc_storeStrong(&v16->_logger, a6);
    v17 = v16;
  }

  return v16;
}

@end