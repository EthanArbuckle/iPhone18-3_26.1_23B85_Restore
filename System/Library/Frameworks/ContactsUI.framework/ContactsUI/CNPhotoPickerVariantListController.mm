@interface CNPhotoPickerVariantListController
+ (CGRect)frameForHeaderInBounds:(CGRect)result;
+ (int64_t)topMarginForBounds:(CGRect)a3 shouldShowCaptions:(BOOL)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CNPhotoPickerVariantListController)initWithVariantsManager:(id)a3 originalItem:(id)a4 selectedVariantIdentifier:(id)a5;
- (CNPhotoPickerVariantListControllerDelegate)delegate;
- (NSString)variantsDisplayTitle;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)buildCollectionView;
- (void)buildHeader;
- (void)cancel:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didFinishSelectingVariant;
- (void)generateProviderItems;
- (void)providerItemDidUpdate:(id)a3;
- (void)updateFlowLayoutItemSize;
- (void)updateForNewOriginalItem:(id)a3;
- (void)updatePreviewWithItem:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CNPhotoPickerVariantListController

- (CNPhotoPickerVariantListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)providerItemDidUpdate:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNPhotoPickerVariantListController *)self providerItems];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
    v8 = [(CNPhotoPickerVariantListController *)self collectionView];
    v14[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v8 reloadItemsAtIndexPaths:v9];

    if ([(CNPhotoPickerVariantListController *)self showPreview])
    {
      v10 = [(CNPhotoPickerVariantListController *)self collectionView];
      v11 = [v10 indexPathsForSelectedItems];
      v12 = [v11 firstObject];
      v13 = [v12 isEqual:v7];

      if (v13)
      {
        [(CNPhotoPickerVariantListController *)self updatePreviewWithItem:v4];
      }
    }
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CNPhotoPickerVariantListController *)self providerItems];
  v7 = [v5 item];

  v8 = [v6 objectAtIndex:v7];
  [(CNPhotoPickerVariantListController *)self updatePreviewWithItem:v8];

  v9 = [(CNPhotoPickerVariantListController *)self navigationItem];
  v10 = [v9 rightBarButtonItem];
  [v10 setEnabled:1];

  if ([(CNPhotoPickerVariantListController *)self commitsChangesOnSelection])
  {

    [(CNPhotoPickerVariantListController *)self didFinishSelectingVariant];
  }
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 indexPathsForSelectedItems];
  v7 = [v6 containsObject:v5];

  return v7 ^ 1;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [v9 setCellStyle:{-[CNPhotoPickerVariantListController cellStyle](self, "cellStyle")}];
  [v9 setDisplaySelection:{-[CNPhotoPickerVariantListController showsSelection](self, "showsSelection")}];
  v10 = +[CNUIColorRepository photoPickerAvatarBackgroundDefaultColor];
  [v9 setTintColor:v10];

  v11 = [v7 indexPathsForSelectedItems];

  [v9 setSelected:{objc_msgSend(v11, "containsObject:", v6)}];
  v12 = [(CNPhotoPickerVariantListController *)self providerItems];
  v13 = [v6 row];

  v14 = [v12 objectAtIndexedSubscript:v13];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __76__CNPhotoPickerVariantListController_collectionView_cellForItemAtIndexPath___block_invoke;
  v25[3] = &unk_1E74E73E8;
  v26 = v9;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __76__CNPhotoPickerVariantListController_collectionView_cellForItemAtIndexPath___block_invoke_2;
  v23 = &unk_1E74E4588;
  v15 = v26;
  v24 = v15;
  [v14 thumbnailViewWithPlaceholderProvider:v25 completion:&v20];
  if ([(CNPhotoPickerVariantListController *)self shouldShowCaptions:v20])
  {
    v16 = [v14 localizedVariantDisplayName];
    [v15 updateWithCaption:v16];
  }

  v17 = v24;
  v18 = v15;

  return v15;
}

uint64_t __76__CNPhotoPickerVariantListController_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return [v3 updateWithView:a2 animation:v4];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(CNPhotoPickerVariantListController *)self providerItems:a3];
  v5 = [v4 count];

  return v5;
}

- (void)updatePreviewWithItem:(id)a3
{
  v5 = a3;
  if ([(CNPhotoPickerVariantListController *)self showPreview])
  {
    v4 = [(CNPhotoPickerVariantListController *)self posePreview];
    [v4 updatePreviewWithItem:v5];
  }
}

- (void)didFinishSelectingVariant
{
  v3 = [(CNPhotoPickerVariantListController *)self delegate];

  if (v3)
  {
    v4 = [(CNPhotoPickerVariantListController *)self collectionView];
    v5 = [v4 indexPathsForSelectedItems];
    v6 = [v5 firstObject];

    v7 = [(CNPhotoPickerVariantListController *)self providerItems];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__CNPhotoPickerVariantListController_didFinishSelectingVariant__block_invoke;
    v10[3] = &unk_1E74E77C0;
    v10[4] = self;
    v11 = v8;
    v9 = v8;
    [v9 applyVariantEffectToFullsizeImageWithCompletion:v10];
  }
}

void __63__CNPhotoPickerVariantListController_didFinishSelectingVariant__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photoPickerVariantListController:*(a1 + 32) didSelectProviderItem:*(a1 + 40)];
}

- (void)cancel:(id)a3
{
  v4 = [(CNPhotoPickerVariantListController *)self delegate];

  if (v4)
  {
    v5 = [(CNPhotoPickerVariantListController *)self delegate];
    [v5 photoPickerVariantListControllerDidCancel:self];
  }

  else
  {

    [(CNPhotoPickerVariantListController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)generateProviderItems
{
  v3 = [(CNPhotoPickerVariantListController *)self originalItem];
  v4 = [(CNPhotoPickerVariantListController *)self variantsManager];
  v5 = [v3 createVariantsItemsWithVariantsManager:v4];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CNPhotoPickerVariantListController_generateProviderItems__block_invoke;
  v7[3] = &unk_1E74E4560;
  v7[4] = self;
  [v5 _cn_each:v7];
  [(CNPhotoPickerVariantListController *)self setProviderItems:v5];
  v6 = [(CNPhotoPickerVariantListController *)self collectionView];
  [v6 reloadData];
}

- (void)updateFlowLayoutItemSize
{
  v3 = [(CNPhotoPickerVariantListController *)self collectionView];
  v15 = [v3 collectionViewLayout];

  v4 = [(CNPhotoPickerVariantListController *)self numberOfItemsPerRowProvider];
  v5 = [(CNPhotoPickerVariantListController *)self view];
  [v5 bounds];
  v6 = v4[2](v4);

  v7 = [(CNPhotoPickerVariantListController *)self view];
  [v7 bounds];
  v9 = v8;

  [v15 minimumInteritemSpacing];
  *&v10 = (v9 - (v6 - 1) * v10 + -64.0) / v6;
  v11 = floorf(*&v10);
  v12 = v11;
  if ([(CNPhotoPickerVariantListController *)self shouldShowCaptions])
  {
    v13 = +[CNUIFontRepository contactCardPhotoPickerCaptionFont];
    [v13 lineHeight];
    v12 = v14 * 2.0 + 8.0 + v11;
  }

  [v15 setItemSize:{v11, v12}];
  [v15 invalidateLayout];
}

- (void)updateForNewOriginalItem:(id)a3
{
  v12 = a3;
  v5 = [(CNPhotoPickerVariantListController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];

  objc_storeStrong(&self->_originalItem, a3);
  [(CNPhotoPickerVariantListController *)self generateProviderItems];
  if ([v6 count])
  {
    v7 = [(NSArray *)self->_providerItems count];
    v8 = [v6 objectAtIndexedSubscript:0];
    v9 = [v8 item];

    if (v7 > v9)
    {
      v10 = [(CNPhotoPickerVariantListController *)self collectionView];
      v11 = [v6 objectAtIndexedSubscript:0];
      [v10 selectItemAtIndexPath:v11 animated:0 scrollPosition:0];
    }
  }
}

- (NSString)variantsDisplayTitle
{
  v2 = [(CNPhotoPickerVariantListController *)self originalItem];
  v3 = [v2 localizedVariantsTitle];

  return v3;
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerVariantListController;
  [(CNPhotoPickerVariantListController *)&v5 viewDidLayoutSubviews];
  [(CNPhotoPickerVariantListController *)self updateFlowLayoutItemSize];
  v3 = [(CNPhotoPickerVariantListController *)self posePreview];

  if (v3)
  {
    v4 = [(CNPhotoPickerVariantListController *)self posePreview];
    [v4 layoutIfNeeded];
  }
}

- (void)buildCollectionView
{
  v41[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  v4 = [(CNPhotoPickerVariantListController *)self shouldShowCaptions];
  v5 = 20.0;
  if (v4)
  {
    v5 = 18.0;
  }

  [v3 setMinimumLineSpacing:v5];
  [v3 setMinimumInteritemSpacing:20.0];
  [v3 setScrollDirection:0];
  [v3 setSectionInsetReference:1];
  v6 = [(CNPhotoPickerVariantListController *)self sectionHeaderView];

  if (v6)
  {
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 bounds];
    [v3 setHeaderReferenceSize:{CGRectGetWidth(v42), 50.0}];
  }

  v8 = objc_opt_class();
  v9 = [(CNPhotoPickerVariantListController *)self view];
  [v9 bounds];
  v14 = [v8 topMarginForBounds:-[CNPhotoPickerVariantListController shouldShowCaptions](self shouldShowCaptions:{"shouldShowCaptions"), v10, v11, v12, v13}];

  [v3 setSectionInset:{v14, 16.0, 20.0, 16.0}];
  v15 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v16 = [(CNPhotoPickerVariantListController *)self view];
  [v16 bounds];
  v17 = [v15 initWithFrame:v3 collectionViewLayout:?];

  [v17 setDelegate:self];
  [v17 setDataSource:self];
  v18 = objc_opt_class();
  v19 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
  [v17 registerClass:v18 forCellWithReuseIdentifier:v19];

  [v17 setClipsToBounds:0];
  v20 = [MEMORY[0x1E69DC888] clearColor];
  [v17 setBackgroundColor:v20];

  [v17 setAlwaysBounceVertical:1];
  [v17 setContentInsetAdjustmentBehavior:2];
  [v17 setContentInset:{0.0, 16.0, 0.0, 16.0}];
  v21 = [(CNPhotoPickerVariantListController *)self view];
  [v21 addSubview:v17];

  v22 = [(CNPhotoPickerVariantListController *)self headerView];

  if (v22)
  {
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [(CNPhotoPickerVariantListController *)self view];
    v38 = [v17 topAnchor];
    v39 = [(CNPhotoPickerVariantListController *)self headerView];
    v37 = [v39 bottomAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v41[0] = v36;
    v34 = [v17 leftAnchor];
    v35 = [(CNPhotoPickerVariantListController *)self view];
    v33 = [v35 leftAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v41[1] = v32;
    v30 = [v17 rightAnchor];
    v31 = [(CNPhotoPickerVariantListController *)self view];
    v23 = [v31 rightAnchor];
    v24 = [v30 constraintEqualToAnchor:v23];
    v41[2] = v24;
    v25 = [v17 bottomAnchor];
    v26 = [(CNPhotoPickerVariantListController *)self view];
    v27 = [v26 bottomAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    v41[3] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
    [v40 addConstraints:v29];
  }

  else
  {
    [v17 setAutoresizingMask:18];
  }

  [(CNPhotoPickerVariantListController *)self setCollectionView:v17];
}

- (void)buildHeader
{
  v66[8] = *MEMORY[0x1E69E9840];
  v3 = [(CNPhotoPickerVariantListController *)self view];
  [v3 bounds];
  v5 = v4;

  v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v5, 100.0}];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:v7];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(CNPhotoPickerVariantListController *)self view];
  [v8 addSubview:v6];

  [(CNPhotoPickerVariantListController *)self setHeaderView:v6];
  v67.origin.x = 0.0;
  v67.origin.y = 0.0;
  v67.size.width = v5;
  v67.size.height = 100.0;
  v68 = CGRectInset(v67, 20.0, 20.0);
  x = v68.origin.x;
  y = v68.origin.y;
  width = v68.size.width;
  height = v68.size.height;
  v13 = [(CNPhotoPickerVariantListController *)self originalItem];
  v14 = [CNPhotoPickerPreviewView pickerPreviewWithFrame:v13 forItem:x, y, width, height];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v14 setClipsToBounds:1];
  [v6 addSubview:v14];
  v15 = v14;
  [(CNPhotoPickerVariantListController *)self setPosePreview:v14];
  v16 = [(CNPhotoPickerVariantListController *)self view];
  v17 = [v16 window];
  v18 = [v17 screen];
  [v18 scale];
  v20 = v19;

  if (v20 <= 0.0)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 1.0 / v20;
  }

  v22 = objc_alloc(MEMORY[0x1E69DD250]);
  [v6 frame];
  v23 = CGRectGetMaxY(v69) - v21;
  [v6 bounds];
  v24 = [v22 initWithFrame:{0.0, v23}];
  v25 = +[CNUIColorRepository photoPickerBackgroundColor];
  [v24 setBackgroundColor:v25];

  v26 = +[CNUIColorRepository photoPickerBackgroundShadowColor];
  v27 = [v26 CGColor];
  v28 = [v24 layer];
  [v28 setShadowColor:v27];

  v29 = [v24 layer];
  LODWORD(v30) = 1.0;
  [v29 setShadowOpacity:v30];

  v31 = [v24 layer];
  [v31 setShadowOffset:{0.0, 1.0}];

  v32 = [v24 layer];
  [v32 setShadowRadius:0.5];

  v33 = [v24 layer];
  [v33 setMasksToBounds:0];

  v64 = v24;
  [v24 setAutoresizingMask:10];
  [v6 addSubview:v24];
  v34 = [(CNPhotoPickerVariantListController *)self view];
  v65 = [(CNPhotoPickerVariantListController *)self view];
  v62 = [v6 topAnchor];
  v63 = [v34 safeAreaLayoutGuide];
  v61 = [v63 topAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v66[0] = v60;
  v59 = [v6 heightAnchor];
  v58 = [v34 heightAnchor];
  v56 = [v59 constraintEqualToAnchor:v58 multiplier:0.3];
  v66[1] = v56;
  v55 = [v6 leftAnchor];
  v57 = v34;
  v54 = [v34 leftAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v66[2] = v53;
  v52 = [v6 rightAnchor];
  v51 = [v34 rightAnchor];
  v49 = [v52 constraintEqualToAnchor:v51];
  v66[3] = v49;
  v35 = v15;
  v48 = [v15 topAnchor];
  v47 = [v6 topAnchor];
  v46 = [v48 constraintEqualToAnchor:v47 constant:20.0];
  v66[4] = v46;
  v50 = v15;
  v45 = [v15 bottomAnchor];
  v36 = [v6 bottomAnchor];
  v37 = [v45 constraintEqualToAnchor:v36 constant:-20.0];
  v66[5] = v37;
  v38 = [v15 centerXAnchor];
  v39 = [v6 centerXAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v66[6] = v40;
  v41 = [v35 widthAnchor];
  v42 = [v35 heightAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  v66[7] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:8];
  [v65 addConstraints:v44];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerVariantListController;
  [(CNPhotoPickerVariantListController *)&v9 viewDidAppear:a3];
  v4 = [(CNPhotoPickerVariantListController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];
  if (![v5 count])
  {
    v6 = [(CNPhotoPickerVariantListController *)self selectedVariantIdentifier];
    if (v6)
    {
    }

    else
    {
      v7 = [(CNPhotoPickerVariantListController *)self commitsChangesOnSelection];

      if (v7)
      {
        return;
      }

      v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
      v8 = [(CNPhotoPickerVariantListController *)self collectionView];
      [v8 selectItemAtIndexPath:v4 animated:0 scrollPosition:0];

      v5 = [(CNPhotoPickerVariantListController *)self collectionView];
      [(CNPhotoPickerVariantListController *)self collectionView:v5 didSelectItemAtIndexPath:v4];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = CNPhotoPickerVariantListController;
  [(CNPhotoPickerVariantListController *)&v15 viewWillAppear:a3];
  v4 = [(CNPhotoPickerVariantListController *)self selectedVariantIdentifier];
  if (v4)
  {

    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = [(CNPhotoPickerVariantListController *)self originalItem];
    v7 = [v6 imageType];

    if (v7 == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v8 = [(CNPhotoPickerVariantListController *)self collectionView];
  v9 = [v8 indexPathsForSelectedItems];
  if ([v9 count])
  {
  }

  else
  {
    v10 = [(CNPhotoPickerVariantListController *)self selectedVariantIdentifier];

    if (!v10)
    {
      goto LABEL_11;
    }

    v8 = [(CNPhotoPickerVariantListController *)self providerItems];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__CNPhotoPickerVariantListController_viewWillAppear___block_invoke;
    v14[3] = &unk_1E74E66D0;
    v14[4] = self;
    v5 = [v8 _cn_indexOfFirstObjectPassingTest:v14];
  }

LABEL_11:
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:v5 inSection:0];
    v12 = [(CNPhotoPickerVariantListController *)self collectionView];
    [v12 selectItemAtIndexPath:v11 animated:0 scrollPosition:2];

    v13 = [(CNPhotoPickerVariantListController *)self collectionView];
    [(CNPhotoPickerVariantListController *)self collectionView:v13 didSelectItemAtIndexPath:v11];
  }
}

uint64_t __53__CNPhotoPickerVariantListController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 variantIdentifier];
  v4 = [*(a1 + 32) selectedVariantIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = CNPhotoPickerVariantListController;
  [(CNPhotoPickerVariantListController *)&v20 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(CNPhotoPickerVariantListController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(CNPhotoPickerVariantListController *)self view];
  [v5 setInsetsLayoutMarginsFromSafeArea:0];

  v6 = [(CNPhotoPickerVariantListController *)self originalItem];

  if (v6)
  {
    v7 = [(CNPhotoPickerVariantListController *)self originalItem];
    v8 = [v7 localizedVariantsTitle];
    v9 = [(CNPhotoPickerVariantListController *)self navigationItem];
    [v9 setTitle:v8];
  }

  if ([(CNPhotoPickerVariantListController *)self showPreview])
  {
    [(CNPhotoPickerVariantListController *)self buildHeader];
    v10 = [(CNPhotoPickerVariantListController *)self originalItem];
    [(CNPhotoPickerVariantListController *)self updatePreviewWithItem:v10];
  }

  [(CNPhotoPickerVariantListController *)self buildCollectionView];
  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
  v12 = [(CNPhotoPickerVariantListController *)self navigationItem];
  [v12 setLeftBarButtonItem:v11];

  v13 = objc_alloc(MEMORY[0x1E69DC708]);
  v14 = [(CNPhotoPickerVariantListController *)self rightBarButtonTitle];
  v15 = [v13 initWithTitle:v14 style:2 target:self action:sel_didFinishSelectingVariant];
  v16 = [(CNPhotoPickerVariantListController *)self navigationItem];
  [v16 setRightBarButtonItem:v15];

  v17 = [(CNPhotoPickerVariantListController *)self navigationItem];
  v18 = [v17 rightBarButtonItem];
  [v18 setEnabled:0];

  [(CNPhotoPickerVariantListController *)self generateProviderItems];
  v19 = [MEMORY[0x1E696AD88] defaultCenter];
  [v19 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (CNPhotoPickerVariantListController)initWithVariantsManager:(id)a3 originalItem:(id)a4 selectedVariantIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = CNPhotoPickerVariantListController;
  v12 = [(CNPhotoPickerVariantListController *)&v18 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_variantsManager, a3);
    objc_storeStrong(&v13->_originalItem, a4);
    v14 = [&__block_literal_global_34895 copy];
    numberOfItemsPerRowProvider = v13->_numberOfItemsPerRowProvider;
    v13->_numberOfItemsPerRowProvider = v14;

    v13->_cellStyle = 1;
    v13->_shouldShowCaptions = [v10 shouldShowCaption];
    objc_storeStrong(&v13->_selectedVariantIdentifier, a5);
    v13->_showsSelection = 1;
    v16 = v13;
  }

  return v13;
}

uint64_t __101__CNPhotoPickerVariantListController_initWithVariantsManager_originalItem_selectedVariantIdentifier___block_invoke(double a1, double a2, double a3)
{
  if (a3 <= 460.0)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

+ (CGRect)frameForHeaderInBounds:(CGRect)result
{
  v3 = result.size.height / 3.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v3;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (int64_t)topMarginForBounds:(CGRect)a3 shouldShowCaptions:(BOOL)a4
{
  if (a3.size.width > 460.0 || a4)
  {
    return 20;
  }

  else
  {
    return 40;
  }
}

@end