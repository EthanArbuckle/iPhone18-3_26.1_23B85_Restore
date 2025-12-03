@interface CNSharingProfilePhotoPickerViewController
- (CNSharingProfilePhotoPickerViewController)initWithContact:(id)contact avatarRecord:(id)record avatarItemProviderConfiguration:(id)configuration logger:(id)logger;
- (CNSharingProfilePhotoPickerViewControllerDelegate)delegate;
- (double)previewEdgeSize;
- (id)buildItems;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didSelectCustomizeButton:(id)button;
- (void)reloadData;
- (void)reloadItems;
- (void)setupConstraints;
- (void)updateInteritemSpacing;
- (void)updatePreviewForSelectedItem;
- (void)updateWithContact:(id)contact fromFullPhotoPicker:(BOOL)picker;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CNSharingProfilePhotoPickerViewController

- (CNSharingProfilePhotoPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = [viewCopy cellForItemAtIndexPath:path];
  pickerItem = [v6 pickerItem];
  avatarItem = [pickerItem avatarItem];

  if (avatarItem)
  {
    pickerItem2 = [v6 pickerItem];
    selectedItem = self->_selectedItem;
    self->_selectedItem = pickerItem2;

    [(CNSharingProfilePhotoPickerViewController *)self updatePreviewForSelectedItem];
  }

  else
  {
    delegate = [(CNSharingProfilePhotoPickerViewController *)self delegate];
    [delegate sharingPhotoPickerDidSelectAddItem:self];

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
    [viewCopy selectItemAtIndexPath:v14 animated:0 scrollPosition:0];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CNSharingProfilePhotoPickerItemCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  v10 = [(NSArray *)self->_items count];
  if (v10 > [pathCopy item])
  {
    v11 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [pathCopy item]);
    [v9 setIsSmallScreen:self->_isSmallScreenDevice];
    [v9 setPickerItem:v11];
  }

  return v9;
}

- (void)didSelectCustomizeButton:(id)button
{
  delegate = [(CNSharingProfilePhotoPickerViewController *)self delegate];
  [delegate sharingPhotoPickerDidSelectAddItem:self];
}

- (void)updatePreviewForSelectedItem
{
  avatarItem = [(CNSharingProfilePhotoPickerItem *)self->_selectedItem avatarItem];

  if (avatarItem)
  {
    cachedPreviewImage = [(CNSharingProfilePhotoPickerItem *)self->_selectedItem cachedPreviewImage];
    if (cachedPreviewImage)
    {
      v5 = cachedPreviewImage;
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

- (void)updateWithContact:(id)contact fromFullPhotoPicker:(BOOL)picker
{
  pickerCopy = picker;
  contactCopy = contact;
  [(CNSharingProfileAvatarItemProvider *)self->_itemProvider updateWithContact:contactCopy fromFullPhotoPicker:pickerCopy];
  [(CNSharingProfilePhotoPickerViewController *)self reloadItems];
  view = [(CNSharingProfilePhotoPickerViewController *)self view];
  [view setNeedsLayout];

  if ([contactCopy imageDataAvailable])
  {
    rawImageType = [contactCopy rawImageType];
    itemProvider = self->_itemProvider;
    if (rawImageType == 1 || rawImageType == 4)
    {
      photoItem = [(CNSharingProfileAvatarItemProvider *)itemProvider photoItem];
      if (!photoItem)
      {
        goto LABEL_13;
      }
    }

    else if (rawImageType == 2)
    {
      photoItem = [(CNSharingProfileAvatarItemProvider *)itemProvider monogramItem];
      if (!photoItem)
      {
        goto LABEL_13;
      }
    }

    else
    {
      photoItem = [(CNSharingProfileAvatarItemProvider *)itemProvider animojiItem];
      if (!photoItem)
      {
        goto LABEL_13;
      }
    }

    items = self->_items;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __83__CNSharingProfilePhotoPickerViewController_updateWithContact_fromFullPhotoPicker___block_invoke;
    v19[3] = &unk_1E74E23F0;
    v12 = photoItem;
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
  avatarItems = [(CNSharingProfileAvatarItemProvider *)self->_itemProvider avatarItems];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(avatarItems, "count") + 1}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = avatarItems;
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
  buildItems = [(CNSharingProfilePhotoPickerViewController *)self buildItems];
  items = self->_items;
  self->_items = buildItems;

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
  indexPathsForSelectedItems = [(UICollectionView *)self->_selectorView indexPathsForSelectedItems];
  if ([indexPathsForSelectedItems count])
  {
    v3 = [indexPathsForSelectedItems objectAtIndexedSubscript:0];
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
      view = [(CNSharingProfilePhotoPickerViewController *)self view];
      [view bounds];
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
    view = [(CNSharingProfilePhotoPickerViewController *)self view];
    [view bounds];
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

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = CNSharingProfilePhotoPickerViewController;
  [(CNSharingProfilePhotoPickerViewController *)&v10 viewWillAppear:appear];
  view = [(CNSharingProfilePhotoPickerViewController *)self view];
  [view layoutIfNeeded];

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
  array = [MEMORY[0x1E695DF70] array];
  widthAnchor = [(UIImageView *)self->_previewView widthAnchor];
  [(CNSharingProfilePhotoPickerViewController *)self previewEdgeSize];
  v4 = [widthAnchor constraintEqualToConstant:?];
  [array addObject:v4];

  widthAnchor2 = [(UIImageView *)self->_previewView widthAnchor];
  heightAnchor = [(UIImageView *)self->_previewView heightAnchor];
  v7 = [widthAnchor2 constraintEqualToAnchor:heightAnchor];
  [array addObject:v7];

  centerXAnchor = [(UIImageView *)self->_previewView centerXAnchor];
  view = [(CNSharingProfilePhotoPickerViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v11];

  topAnchor = [(UIImageView *)self->_previewView topAnchor];
  view2 = [(CNSharingProfilePhotoPickerViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:28.0];
  [array addObject:v15];

  leadingAnchor = [(UICollectionView *)self->_selectorView leadingAnchor];
  view3 = [(CNSharingProfilePhotoPickerViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v19];

  trailingAnchor = [(UICollectionView *)self->_selectorView trailingAnchor];
  view4 = [(CNSharingProfilePhotoPickerViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v23];

  topAnchor3 = [(UICollectionView *)self->_selectorView topAnchor];
  bottomAnchor = [(UIImageView *)self->_previewView bottomAnchor];
  [(CNSharingProfilePhotoPickerViewController *)self previewToSelectorSpacing];
  v26 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:?];
  [array addObject:v26];

  heightAnchor2 = [(UICollectionView *)self->_selectorView heightAnchor];
  v28 = [heightAnchor2 constraintEqualToConstant:100.0];
  [array addObject:v28];

  bottomAnchor2 = [(UICollectionView *)self->_selectorView bottomAnchor];
  view5 = [(CNSharingProfilePhotoPickerViewController *)self view];
  bottomAnchor3 = [view5 bottomAnchor];
  v32 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  [array addObject:v32];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = CNSharingProfilePhotoPickerViewController;
  [(CNSharingProfilePhotoPickerViewController *)&v31 viewDidLoad];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
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
  layer = [(UIImageView *)self->_previewView layer];
  [layer setCornerRadius:v14];

  view = [(CNSharingProfilePhotoPickerViewController *)self view];
  [view addSubview:self->_previewView];

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

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_selectorView setBackgroundColor:clearColor];

  [(UICollectionView *)self->_selectorView setContentInsetAdjustmentBehavior:2];
  [(UICollectionView *)self->_selectorView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_selectorView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_selectorView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_selectorView setDataSource:self];
  [(UICollectionView *)self->_selectorView setDelegate:self];
  view2 = [(CNSharingProfilePhotoPickerViewController *)self view];
  [view2 addSubview:self->_selectorView];

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

- (CNSharingProfilePhotoPickerViewController)initWithContact:(id)contact avatarRecord:(id)record avatarItemProviderConfiguration:(id)configuration logger:(id)logger
{
  contactCopy = contact;
  recordCopy = record;
  configurationCopy = configuration;
  loggerCopy = logger;
  v19.receiver = self;
  v19.super_class = CNSharingProfilePhotoPickerViewController;
  v15 = [(CNSharingProfilePhotoPickerViewController *)&v19 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_contact, contact);
    objc_storeStrong(&v16->_avatarRecord, record);
    objc_storeStrong(&v16->_avatarItemProviderConfiguration, configuration);
    objc_storeStrong(&v16->_logger, logger);
    v17 = v16;
  }

  return v16;
}

@end