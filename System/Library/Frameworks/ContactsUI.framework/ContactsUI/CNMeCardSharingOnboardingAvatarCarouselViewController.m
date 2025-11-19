@interface CNMeCardSharingOnboardingAvatarCarouselViewController
- (CNMeCardSharingOnboardingAvatarCarouselItem)selectedItem;
- (CNMeCardSharingOnboardingAvatarCarouselViewController)initWithContact:(id)a3 avatarRecord:(id)a4 logger:(id)a5;
- (CNMeCardSharingOnboardingAvatarCarouselViewControllerDelegate)delegate;
- (id)animojiItemWithRecord:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)contactImageItemWithContact:(id)a3;
- (id)itemsForNoAnimojiAndNoPhoto;
- (id)monogramImageItemWithContact:(id)a3;
- (id)standardItems;
- (void)buildItems;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)notifyDelegateOfUpdateToCenterMostItem;
- (void)reloadForUpdatedContactPhoto;
- (void)reloadForUpdatedMonogram;
- (void)scrollToItemAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CNMeCardSharingOnboardingAvatarCarouselViewController

- (CNMeCardSharingOnboardingAvatarCarouselViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v13 = a4;
  v5 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self layout];
  v6 = [v5 selectedPageIndex];

  v7 = [(NSArray *)self->_items indexOfObject:self->_photoPickerItem];
  if (v6 < [(NSArray *)self->_items count])
  {
    v8 = [(NSArray *)self->_items objectAtIndexedSubscript:v6];
    v9 = v8;
    if (v8 == self->_photoPickerItem)
    {
      v10 = [v13 row];

      if (v10 == v7)
      {
        v11 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self delegate];
        [v11 avatarCarouselViewControllerDidTapPhotoPickerCell:self];
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
    }

    collectionView = self->_collectionView;
    v11 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self layout];
    [v11 pageOffsetForIndex:{objc_msgSend(v13, "row")}];
    [(UICollectionView *)collectionView setContentOffset:1 animated:?];
    goto LABEL_7;
  }

LABEL_8:
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CNMeCardSharingOnboardingAvatarCarouselCell cellIdentifier];
  v9 = [v6 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v7];

  v10 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [v7 item]);
  v11 = [MEMORY[0x1E696AFB0] UUID];
  [v10 imageInsetPercentage];
  [v9 setImageInsetPercentage:?];
  [v9 setDisplaySessionUUID:v11];
  v12 = [v10 cachedImage];

  if (v12)
  {
    v13 = [v10 cachedImage];
    [v9 setImage:v13];
  }

  else
  {
    [v9 setImage:0];
    objc_initWeak(&location, v10);
    v14 = [v10 imageProvider];

    if (v14)
    {
      v15 = [v10 imageProvider];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __95__CNMeCardSharingOnboardingAvatarCarouselViewController_collectionView_cellForItemAtIndexPath___block_invoke;
      v21 = &unk_1E74E2F50;
      objc_copyWeak(&v24, &location);
      v22 = v9;
      v23 = v11;
      (v15)[2](v15, &v18);

      objc_destroyWeak(&v24);
    }

    objc_destroyWeak(&location);
  }

  v16 = [v10 title];
  [v9 setTitle:v16];

  return v9;
}

void __95__CNMeCardSharingOnboardingAvatarCarouselViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCachedImage:v6];
  v4 = [*(a1 + 32) displaySessionUUID];
  v5 = *(a1 + 40);

  if (v4 == v5)
  {
    [*(a1 + 32) setImage:v6];
  }
}

- (void)scrollToItemAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(NSArray *)self->_items count]> a3)
  {
    collectionView = self->_collectionView;
    v8 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self layout];
    [v8 pageOffsetForIndex:a3];
    [(UICollectionView *)collectionView setContentOffset:v4 animated:?];
  }
}

- (CNMeCardSharingOnboardingAvatarCarouselItem)selectedItem
{
  v3 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self layout];
  v4 = [v3 selectedPageIndex];

  if (v4 >= [(NSArray *)self->_items count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_items objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (void)notifyDelegateOfUpdateToCenterMostItem
{
  v3 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self selectedItem];
  if (v3)
  {
    v5 = v3;
    v4 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self delegate];
    [v4 avatarCarouselViewControllerDidUpdateCenterMostItem:v5];

    v3 = v5;
  }
}

- (id)animojiItemWithRecord:(id)a3
{
  v3 = a3;
  v4 = [CNMeCardSharingOnboardingAvatarCarouselItem alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__CNMeCardSharingOnboardingAvatarCarouselViewController_animojiItemWithRecord___block_invoke;
  v8[3] = &unk_1E74E2F28;
  v9 = v3;
  v5 = v3;
  v6 = [(CNMeCardSharingOnboardingAvatarCarouselItem *)v4 initWithImageInsetPercentage:v8 imageProvider:0.1];
  [(CNMeCardSharingOnboardingAvatarCarouselItem *)v6 setImageType:3];

  return v6;
}

void __79__CNMeCardSharingOnboardingAvatarCarouselViewController_animojiItemWithRecord___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v4 = getAVTAvatarRecordImageProviderClass_softClass_19906;
  v18 = getAVTAvatarRecordImageProviderClass_softClass_19906;
  if (!getAVTAvatarRecordImageProviderClass_softClass_19906)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getAVTAvatarRecordImageProviderClass_block_invoke_19907;
    v13 = &unk_1E74E7518;
    v14 = &v15;
    __getAVTAvatarRecordImageProviderClass_block_invoke_19907(&v10);
    v4 = v16[3];
  }

  v5 = v4;
  _Block_object_dispose(&v15, 8);
  v6 = objc_alloc_init(v4);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v7 = getAVTRenderingScopeClass_softClass_19908;
  v18 = getAVTRenderingScopeClass_softClass_19908;
  if (!getAVTRenderingScopeClass_softClass_19908)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getAVTRenderingScopeClass_block_invoke_19909;
    v13 = &unk_1E74E7518;
    v14 = &v15;
    __getAVTRenderingScopeClass_block_invoke_19909(&v10);
    v7 = v16[3];
  }

  v8 = v7;
  _Block_object_dispose(&v15, 8);
  v9 = [v7 largeThumbnailScope];
  [v6 imageForRecord:*(a1 + 32) scope:v9 handler:v3];
}

- (id)monogramImageItemWithContact:(id)a3
{
  v4 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self contact];
  v5 = [v4 mutableCopy];

  [v5 removePhoto];
  v6 = +[CNAvatarImageRendererSettings defaultSettings];
  v7 = [[CNAvatarImageRenderer alloc] initWithSettings:v6];
  v8 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self monogramColor];
  v9 = self->_layout;
  v10 = [CNMeCardSharingOnboardingAvatarCarouselItem alloc];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __86__CNMeCardSharingOnboardingAvatarCarouselViewController_monogramImageItemWithContact___block_invoke;
  v20 = &unk_1E74E2F00;
  v21 = v9;
  v22 = v8;
  v23 = v7;
  v24 = v5;
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = [(CNMeCardSharingOnboardingAvatarCarouselItem *)v10 initWithImageInsetPercentage:&v17 imageProvider:0.0];
  [(CNMeCardSharingOnboardingAvatarCarouselItem *)v15 setImageType:2, v17, v18, v19, v20];

  return v15;
}

void __86__CNMeCardSharingOnboardingAvatarCarouselViewController_monogramImageItemWithContact___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) itemSize];
  v4 = [CNAvatarImageRenderingScope scopeWithPointSize:"scopeWithPointSize:scale:rightToLeft:style:color:" scale:0 rightToLeft:0 style:*(a1 + 40) color:?];
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 56);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__CNMeCardSharingOnboardingAvatarCarouselViewController_monogramImageItemWithContact___block_invoke_2;
  v9[3] = &unk_1E74E4E10;
  v10 = v3;
  v7 = v3;
  v8 = [v5 renderAvatarsForContacts:v6 scope:v4 imageHandler:v9];
}

void __86__CNMeCardSharingOnboardingAvatarCarouselViewController_monogramImageItemWithContact___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__CNMeCardSharingOnboardingAvatarCarouselViewController_monogramImageItemWithContact___block_invoke_3;
  v6[3] = &unk_1E74E6DD0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (id)contactImageItemWithContact:(id)a3
{
  v4 = a3;
  v5 = [[CNMeCardSharingContactAvatarProvider alloc] initWithContact:v4];

  v6 = self->_layout;
  v7 = [CNMeCardSharingOnboardingAvatarCarouselItem alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__CNMeCardSharingOnboardingAvatarCarouselViewController_contactImageItemWithContact___block_invoke;
  v12[3] = &unk_1E74E2ED8;
  v13 = v5;
  v14 = v6;
  v15 = self;
  v8 = v6;
  v9 = v5;
  v10 = [(CNMeCardSharingOnboardingAvatarCarouselItem *)v7 initWithImageInsetPercentage:v12 imageProvider:0.0];
  [(CNMeCardSharingOnboardingAvatarCarouselItem *)v10 setImageType:[(CNContact *)self->_contact rawImageType]];

  return v10;
}

void __85__CNMeCardSharingOnboardingAvatarCarouselViewController_contactImageItemWithContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  [*(a1 + 40) itemSize];
  v6 = v5;
  v8 = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__CNMeCardSharingOnboardingAvatarCarouselViewController_contactImageItemWithContact___block_invoke_2;
  v10[3] = &unk_1E74E2EB0;
  v10[4] = *(a1 + 48);
  v11 = v3;
  v9 = v3;
  [v4 generateAvatarImageOfSize:v10 imageHandler:{v6, v8}];
}

void __85__CNMeCardSharingOnboardingAvatarCarouselViewController_contactImageItemWithContact___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(*(a1 + 32) + 1080);
    v7 = [a3 localizedDescription];
    [v6 logOnboardingAvatarCarouselErrorCreatingContactImageWithDescription:v7];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__CNMeCardSharingOnboardingAvatarCarouselViewController_contactImageItemWithContact___block_invoke_3;
  v10[3] = &unk_1E74E6DD0;
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

- (void)reloadForUpdatedMonogram
{
  monogramItem = self->_monogramItem;
  self->_monogramItem = 0;

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self buildItems];
  collectionView = self->_collectionView;

  [(UICollectionView *)collectionView reloadData];
}

- (void)reloadForUpdatedContactPhoto
{
  p_photoItem = &self->_photoItem;
  photoItem = self->_photoItem;
  self->_photoItem = 0;

  monogramItem = self->_monogramItem;
  self->_monogramItem = 0;

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self buildItems];
  [(UICollectionView *)self->_collectionView reloadData];
  if (![(CNContact *)self->_contact imageDataAvailable]|| [(CNContact *)self->_contact rawImageType]== 2)
  {
    p_photoItem = &self->_monogramItem;
  }

  v10 = *p_photoItem;
  v6 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self layout];
  [v6 pageOffsetForIndex:{-[NSArray indexOfObject:](self->_items, "indexOfObject:", v10)}];
  v8 = v7;

  [(UICollectionView *)self->_collectionView contentOffset];
  if (v9 == v8)
  {
    [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self notifyDelegateOfUpdateToCenterMostItem];
  }

  else
  {
    [(UICollectionView *)self->_collectionView setContentOffset:v8, 0.0];
  }
}

- (id)standardItems
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(CNContact *)self->_contact imageDataAvailable])
  {
    v4 = [(CNContact *)self->_contact rawImageType]!= 2;
  }

  else
  {
    v4 = 0;
  }

  if (self->_avatarRecord && (![(CNContact *)self->_contact imageDataAvailable]|| [(CNContact *)self->_contact imageDataAvailable]&& ![(CNContact *)self->_contact hasImageOfType:3]))
  {
    animojiItem = self->_animojiItem;
    if (!animojiItem)
    {
      v6 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self animojiItemWithRecord:self->_avatarRecord];
      [(CNMeCardSharingOnboardingAvatarCarouselItem *)v6 setShouldShowVariants:1];
      v7 = self->_animojiItem;
      self->_animojiItem = v6;

      animojiItem = self->_animojiItem;
    }

    [v3 addObject:animojiItem];
  }

  if (v4)
  {
    photoItem = self->_photoItem;
    if (!photoItem)
    {
      v9 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self contactImageItemWithContact:self->_contact];
      [(CNMeCardSharingOnboardingAvatarCarouselItem *)v9 setShouldShowVariants:0];
      v10 = self->_photoItem;
      self->_photoItem = v9;

      photoItem = self->_photoItem;
    }

    [v3 addObject:photoItem];
  }

  monogramItem = self->_monogramItem;
  if (!monogramItem)
  {
    v12 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self monogramImageItemWithContact:self->_contact];
    [(CNMeCardSharingOnboardingAvatarCarouselItem *)v12 setShouldShowVariants:1];
    v13 = self->_monogramItem;
    self->_monogramItem = v12;

    monogramItem = self->_monogramItem;
  }

  [v3 addObject:monogramItem];
  v14 = [CNMeCardSharingOnboardingAvatarCarouselItem alloc];
  v15 = CNContactsUIBundle();
  v16 = [v15 localizedStringForKey:@"SHARING_ONBOARDING_VIEW_MORE" value:&stru_1F0CE7398 table:@"Localized"];
  v17 = [(CNMeCardSharingOnboardingAvatarCarouselItem *)v14 initWithTitle:v16];

  photoPickerItem = self->_photoPickerItem;
  self->_photoPickerItem = v17;
  v19 = v17;

  [v3 addObject:v19];
  v20 = [v3 copy];

  return v20;
}

- (id)itemsForNoAnimojiAndNoPhoto
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [CNMeCardSharingOnboardingAvatarCarouselItem alloc];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SHARING_ONBOARDING_ADD_PHOTO" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = [(CNMeCardSharingOnboardingAvatarCarouselItem *)v3 initWithTitle:v5];

  objc_storeStrong(&self->_photoPickerItem, v6);
  monogramItem = self->_monogramItem;
  if (!monogramItem)
  {
    v8 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self monogramImageItemWithContact:self->_contact];
    [(CNMeCardSharingOnboardingAvatarCarouselItem *)v8 setShouldShowVariants:1];
    v9 = self->_monogramItem;
    self->_monogramItem = v8;

    monogramItem = self->_monogramItem;
  }

  v12[0] = self->_photoPickerItem;
  v12[1] = monogramItem;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  return v10;
}

- (void)buildItems
{
  if (self->_avatarRecord || [(CNContact *)self->_contact imageDataAvailable])
  {
    v3 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self standardItems];
  }

  else
  {
    v3 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self itemsForNoAnimojiAndNoPhoto];
  }

  items = self->_items;
  self->_items = v3;

  MEMORY[0x1EEE66BB8](v3, items);
}

- (void)viewWillLayoutSubviews
{
  v27.receiver = self;
  v27.super_class = CNMeCardSharingOnboardingAvatarCarouselViewController;
  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)&v27 viewWillLayoutSubviews];
  v3 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v6 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [v6 bounds];
  v8 = floor(v5 - v7);

  v9 = floor(v8 * 0.5 * 0.5) + -10.0;
  v10 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [v10 bounds];
  v12 = v11;
  v13 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [v13 bounds];
  [(UICollectionViewFlowLayout *)self->_layout setItemSize:v12, v14];

  [(UICollectionViewFlowLayout *)self->_layout setMinimumLineSpacing:v9];
  [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self->_layout invalidateLayout];
  v15 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [v15 bounds];
  [(UICollectionView *)self->_collectionView setFrame:?];

  [(UICollectionView *)self->_collectionView setContentInset:0.0, 0.0, 0.0, v8 * 0.5];
  [(UICollectionViewFlowLayout *)self->_layout itemSize];
  v17 = v9 + v16;
  [(UICollectionView *)self->_collectionView bounds];
  v19 = v18;
  v20 = -(v18 - v17);
  [(UICollectionViewFlowLayout *)self->_layout itemSize];
  v22 = v19 - v21;
  v23 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self collectionView];
  [v23 _setInterpageSpacing:{v20, 0.0}];

  v24 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self collectionView];
  [v24 _setPagingOrigin:{v22 * -0.5, 0.0}];

  v25 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self collectionView];
  [v25 _setFirstPageOffset:{-(v8 * 0.5), 0.0}];

  v26 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self collectionView];
  [v26 setContentOffset:{-(v8 * 0.5), 0.0}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNMeCardSharingOnboardingAvatarCarouselViewController;
  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)&v4 viewWillAppear:a3];
  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self notifyDelegateOfUpdateToCenterMostItem];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = CNMeCardSharingOnboardingAvatarCarouselViewController;
  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)&v14 viewDidLoad];
  v3 = objc_alloc_init(CNMeCardSharingOnboardingAvatarCarouselLayout);
  layout = self->_layout;
  self->_layout = v3;

  [(UICollectionViewFlowLayout *)self->_layout setScrollDirection:1];
  [(UICollectionViewFlowLayout *)self->_layout setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)self->_layout setMinimumLineSpacing:0.0];
  v5 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v6 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [v6 bounds];
  v7 = [v5 initWithFrame:self->_layout collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v7;

  v9 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v9];

  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setPagingEnabled:1];
  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  v10 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [v10 addSubview:self->_collectionView];

  v11 = self->_collectionView;
  v12 = objc_opt_class();
  v13 = +[CNMeCardSharingOnboardingAvatarCarouselCell cellIdentifier];
  [(UICollectionView *)v11 registerClass:v12 forCellWithReuseIdentifier:v13];

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self buildItems];
}

- (CNMeCardSharingOnboardingAvatarCarouselViewController)initWithContact:(id)a3 avatarRecord:(id)a4 logger:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = CNMeCardSharingOnboardingAvatarCarouselViewController;
  v12 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarRecord, a4);
    objc_storeStrong(&v13->_contact, a3);
    objc_storeStrong(&v13->_logger, a5);
    v14 = [MEMORY[0x1E69BDC50] availableColors];
    v15 = [v14 firstObject];
    monogramColor = v13->_monogramColor;
    v13->_monogramColor = v15;

    v17 = v13;
  }

  return v13;
}

@end