@interface CNMeCardSharingOnboardingAvatarCarouselViewController
- (CNMeCardSharingOnboardingAvatarCarouselItem)selectedItem;
- (CNMeCardSharingOnboardingAvatarCarouselViewController)initWithContact:(id)contact avatarRecord:(id)record logger:(id)logger;
- (CNMeCardSharingOnboardingAvatarCarouselViewControllerDelegate)delegate;
- (id)animojiItemWithRecord:(id)record;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)contactImageItemWithContact:(id)contact;
- (id)itemsForNoAnimojiAndNoPhoto;
- (id)monogramImageItemWithContact:(id)contact;
- (id)standardItems;
- (void)buildItems;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)notifyDelegateOfUpdateToCenterMostItem;
- (void)reloadForUpdatedContactPhoto;
- (void)reloadForUpdatedMonogram;
- (void)scrollToItemAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CNMeCardSharingOnboardingAvatarCarouselViewController

- (CNMeCardSharingOnboardingAvatarCarouselViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  layout = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self layout];
  selectedPageIndex = [layout selectedPageIndex];

  v7 = [(NSArray *)self->_items indexOfObject:self->_photoPickerItem];
  if (selectedPageIndex < [(NSArray *)self->_items count])
  {
    v8 = [(NSArray *)self->_items objectAtIndexedSubscript:selectedPageIndex];
    v9 = v8;
    if (v8 == self->_photoPickerItem)
    {
      v10 = [pathCopy row];

      if (v10 == v7)
      {
        delegate = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self delegate];
        [delegate avatarCarouselViewControllerDidTapPhotoPickerCell:self];
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
    }

    collectionView = self->_collectionView;
    delegate = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self layout];
    [delegate pageOffsetForIndex:{objc_msgSend(pathCopy, "row")}];
    [(UICollectionView *)collectionView setContentOffset:1 animated:?];
    goto LABEL_7;
  }

LABEL_8:
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = +[CNMeCardSharingOnboardingAvatarCarouselCell cellIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  v10 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [pathCopy item]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [v10 imageInsetPercentage];
  [v9 setImageInsetPercentage:?];
  [v9 setDisplaySessionUUID:uUID];
  cachedImage = [v10 cachedImage];

  if (cachedImage)
  {
    cachedImage2 = [v10 cachedImage];
    [v9 setImage:cachedImage2];
  }

  else
  {
    [v9 setImage:0];
    objc_initWeak(&location, v10);
    imageProvider = [v10 imageProvider];

    if (imageProvider)
    {
      imageProvider2 = [v10 imageProvider];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __95__CNMeCardSharingOnboardingAvatarCarouselViewController_collectionView_cellForItemAtIndexPath___block_invoke;
      v21 = &unk_1E74E2F50;
      objc_copyWeak(&v24, &location);
      v22 = v9;
      v23 = uUID;
      (imageProvider2)[2](imageProvider2, &v18);

      objc_destroyWeak(&v24);
    }

    objc_destroyWeak(&location);
  }

  title = [v10 title];
  [v9 setTitle:title];

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

- (void)scrollToItemAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(NSArray *)self->_items count]> index)
  {
    collectionView = self->_collectionView;
    layout = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self layout];
    [layout pageOffsetForIndex:index];
    [(UICollectionView *)collectionView setContentOffset:animatedCopy animated:?];
  }
}

- (CNMeCardSharingOnboardingAvatarCarouselItem)selectedItem
{
  layout = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self layout];
  selectedPageIndex = [layout selectedPageIndex];

  if (selectedPageIndex >= [(NSArray *)self->_items count])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_items objectAtIndexedSubscript:selectedPageIndex];
  }

  return v5;
}

- (void)notifyDelegateOfUpdateToCenterMostItem
{
  selectedItem = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self selectedItem];
  if (selectedItem)
  {
    v5 = selectedItem;
    delegate = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self delegate];
    [delegate avatarCarouselViewControllerDidUpdateCenterMostItem:v5];

    selectedItem = v5;
  }
}

- (id)animojiItemWithRecord:(id)record
{
  recordCopy = record;
  v4 = [CNMeCardSharingOnboardingAvatarCarouselItem alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__CNMeCardSharingOnboardingAvatarCarouselViewController_animojiItemWithRecord___block_invoke;
  v8[3] = &unk_1E74E2F28;
  v9 = recordCopy;
  v5 = recordCopy;
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

- (id)monogramImageItemWithContact:(id)contact
{
  contact = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self contact];
  v5 = [contact mutableCopy];

  [v5 removePhoto];
  v6 = +[CNAvatarImageRendererSettings defaultSettings];
  v7 = [[CNAvatarImageRenderer alloc] initWithSettings:v6];
  monogramColor = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self monogramColor];
  v9 = self->_layout;
  v10 = [CNMeCardSharingOnboardingAvatarCarouselItem alloc];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __86__CNMeCardSharingOnboardingAvatarCarouselViewController_monogramImageItemWithContact___block_invoke;
  v20 = &unk_1E74E2F00;
  v21 = v9;
  v22 = monogramColor;
  v23 = v7;
  v24 = v5;
  v11 = v5;
  v12 = v7;
  v13 = monogramColor;
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

- (id)contactImageItemWithContact:(id)contact
{
  contactCopy = contact;
  v5 = [[CNMeCardSharingContactAvatarProvider alloc] initWithContact:contactCopy];

  v6 = self->_layout;
  v7 = [CNMeCardSharingOnboardingAvatarCarouselItem alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__CNMeCardSharingOnboardingAvatarCarouselViewController_contactImageItemWithContact___block_invoke;
  v12[3] = &unk_1E74E2ED8;
  v13 = v5;
  v14 = v6;
  selfCopy = self;
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
  layout = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self layout];
  [layout pageOffsetForIndex:{-[NSArray indexOfObject:](self->_items, "indexOfObject:", v10)}];
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
  array = [MEMORY[0x1E695DF70] array];
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

    [array addObject:animojiItem];
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

    [array addObject:photoItem];
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

  [array addObject:monogramItem];
  v14 = [CNMeCardSharingOnboardingAvatarCarouselItem alloc];
  v15 = CNContactsUIBundle();
  v16 = [v15 localizedStringForKey:@"SHARING_ONBOARDING_VIEW_MORE" value:&stru_1F0CE7398 table:@"Localized"];
  v17 = [(CNMeCardSharingOnboardingAvatarCarouselItem *)v14 initWithTitle:v16];

  photoPickerItem = self->_photoPickerItem;
  self->_photoPickerItem = v17;
  v19 = v17;

  [array addObject:v19];
  v20 = [array copy];

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
    standardItems = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self standardItems];
  }

  else
  {
    standardItems = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self itemsForNoAnimojiAndNoPhoto];
  }

  items = self->_items;
  self->_items = standardItems;

  MEMORY[0x1EEE66BB8](standardItems, items);
}

- (void)viewWillLayoutSubviews
{
  v27.receiver = self;
  v27.super_class = CNMeCardSharingOnboardingAvatarCarouselViewController;
  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)&v27 viewWillLayoutSubviews];
  view = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [view bounds];
  v5 = v4;
  view2 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [view2 bounds];
  v8 = floor(v5 - v7);

  v9 = floor(v8 * 0.5 * 0.5) + -10.0;
  view3 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [view3 bounds];
  v12 = v11;
  view4 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [view4 bounds];
  [(UICollectionViewFlowLayout *)self->_layout setItemSize:v12, v14];

  [(UICollectionViewFlowLayout *)self->_layout setMinimumLineSpacing:v9];
  [(CNMeCardSharingOnboardingAvatarCarouselLayout *)self->_layout invalidateLayout];
  view5 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [view5 bounds];
  [(UICollectionView *)self->_collectionView setFrame:?];

  [(UICollectionView *)self->_collectionView setContentInset:0.0, 0.0, 0.0, v8 * 0.5];
  [(UICollectionViewFlowLayout *)self->_layout itemSize];
  v17 = v9 + v16;
  [(UICollectionView *)self->_collectionView bounds];
  v19 = v18;
  v20 = -(v18 - v17);
  [(UICollectionViewFlowLayout *)self->_layout itemSize];
  v22 = v19 - v21;
  collectionView = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self collectionView];
  [collectionView _setInterpageSpacing:{v20, 0.0}];

  collectionView2 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self collectionView];
  [collectionView2 _setPagingOrigin:{v22 * -0.5, 0.0}];

  collectionView3 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self collectionView];
  [collectionView3 _setFirstPageOffset:{-(v8 * 0.5), 0.0}];

  collectionView4 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self collectionView];
  [collectionView4 setContentOffset:{-(v8 * 0.5), 0.0}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CNMeCardSharingOnboardingAvatarCarouselViewController;
  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)&v4 viewWillAppear:appear];
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
  view = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [view bounds];
  v7 = [v5 initWithFrame:self->_layout collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v7;

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor];

  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setPagingEnabled:1];
  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  view2 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self view];
  [view2 addSubview:self->_collectionView];

  v11 = self->_collectionView;
  v12 = objc_opt_class();
  v13 = +[CNMeCardSharingOnboardingAvatarCarouselCell cellIdentifier];
  [(UICollectionView *)v11 registerClass:v12 forCellWithReuseIdentifier:v13];

  [(CNMeCardSharingOnboardingAvatarCarouselViewController *)self buildItems];
}

- (CNMeCardSharingOnboardingAvatarCarouselViewController)initWithContact:(id)contact avatarRecord:(id)record logger:(id)logger
{
  contactCopy = contact;
  recordCopy = record;
  loggerCopy = logger;
  v19.receiver = self;
  v19.super_class = CNMeCardSharingOnboardingAvatarCarouselViewController;
  v12 = [(CNMeCardSharingOnboardingAvatarCarouselViewController *)&v19 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avatarRecord, record);
    objc_storeStrong(&v13->_contact, contact);
    objc_storeStrong(&v13->_logger, logger);
    availableColors = [MEMORY[0x1E69BDC50] availableColors];
    firstObject = [availableColors firstObject];
    monogramColor = v13->_monogramColor;
    v13->_monogramColor = firstObject;

    v17 = v13;
  }

  return v13;
}

@end