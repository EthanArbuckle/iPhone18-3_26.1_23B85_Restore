@interface CNPhotoPickerVariantListController
+ (CGRect)frameForHeaderInBounds:(CGRect)result;
+ (int64_t)topMarginForBounds:(CGRect)bounds shouldShowCaptions:(BOOL)captions;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CNPhotoPickerVariantListController)initWithVariantsManager:(id)manager originalItem:(id)item selectedVariantIdentifier:(id)identifier;
- (CNPhotoPickerVariantListControllerDelegate)delegate;
- (NSString)variantsDisplayTitle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)buildCollectionView;
- (void)buildHeader;
- (void)cancel:(id)cancel;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didFinishSelectingVariant;
- (void)generateProviderItems;
- (void)providerItemDidUpdate:(id)update;
- (void)updateFlowLayoutItemSize;
- (void)updateForNewOriginalItem:(id)item;
- (void)updatePreviewWithItem:(id)item;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CNPhotoPickerVariantListController

- (CNPhotoPickerVariantListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)providerItemDidUpdate:(id)update
{
  v14[1] = *MEMORY[0x1E69E9840];
  updateCopy = update;
  providerItems = [(CNPhotoPickerVariantListController *)self providerItems];
  v6 = [providerItems indexOfObject:updateCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
    collectionView = [(CNPhotoPickerVariantListController *)self collectionView];
    v14[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [collectionView reloadItemsAtIndexPaths:v9];

    if ([(CNPhotoPickerVariantListController *)self showPreview])
    {
      collectionView2 = [(CNPhotoPickerVariantListController *)self collectionView];
      indexPathsForSelectedItems = [collectionView2 indexPathsForSelectedItems];
      firstObject = [indexPathsForSelectedItems firstObject];
      v13 = [firstObject isEqual:v7];

      if (v13)
      {
        [(CNPhotoPickerVariantListController *)self updatePreviewWithItem:updateCopy];
      }
    }
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  providerItems = [(CNPhotoPickerVariantListController *)self providerItems];
  item = [pathCopy item];

  v8 = [providerItems objectAtIndex:item];
  [(CNPhotoPickerVariantListController *)self updatePreviewWithItem:v8];

  navigationItem = [(CNPhotoPickerVariantListController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  if ([(CNPhotoPickerVariantListController *)self commitsChangesOnSelection])
  {

    [(CNPhotoPickerVariantListController *)self didFinishSelectingVariant];
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  indexPathsForSelectedItems = [view indexPathsForSelectedItems];
  v7 = [indexPathsForSelectedItems containsObject:pathCopy];

  return v7 ^ 1;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [v9 setCellStyle:{-[CNPhotoPickerVariantListController cellStyle](self, "cellStyle")}];
  [v9 setDisplaySelection:{-[CNPhotoPickerVariantListController showsSelection](self, "showsSelection")}];
  v10 = +[CNUIColorRepository photoPickerAvatarBackgroundDefaultColor];
  [v9 setTintColor:v10];

  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];

  [v9 setSelected:{objc_msgSend(indexPathsForSelectedItems, "containsObject:", pathCopy)}];
  providerItems = [(CNPhotoPickerVariantListController *)self providerItems];
  v13 = [pathCopy row];

  v14 = [providerItems objectAtIndexedSubscript:v13];

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
    localizedVariantDisplayName = [v14 localizedVariantDisplayName];
    [v15 updateWithCaption:localizedVariantDisplayName];
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

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(CNPhotoPickerVariantListController *)self providerItems:view];
  v5 = [v4 count];

  return v5;
}

- (void)updatePreviewWithItem:(id)item
{
  itemCopy = item;
  if ([(CNPhotoPickerVariantListController *)self showPreview])
  {
    posePreview = [(CNPhotoPickerVariantListController *)self posePreview];
    [posePreview updatePreviewWithItem:itemCopy];
  }
}

- (void)didFinishSelectingVariant
{
  delegate = [(CNPhotoPickerVariantListController *)self delegate];

  if (delegate)
  {
    collectionView = [(CNPhotoPickerVariantListController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    firstObject = [indexPathsForSelectedItems firstObject];

    providerItems = [(CNPhotoPickerVariantListController *)self providerItems];
    v8 = [providerItems objectAtIndexedSubscript:{objc_msgSend(firstObject, "item")}];

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

- (void)cancel:(id)cancel
{
  delegate = [(CNPhotoPickerVariantListController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CNPhotoPickerVariantListController *)self delegate];
    [delegate2 photoPickerVariantListControllerDidCancel:self];
  }

  else
  {

    [(CNPhotoPickerVariantListController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)generateProviderItems
{
  originalItem = [(CNPhotoPickerVariantListController *)self originalItem];
  variantsManager = [(CNPhotoPickerVariantListController *)self variantsManager];
  v5 = [originalItem createVariantsItemsWithVariantsManager:variantsManager];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CNPhotoPickerVariantListController_generateProviderItems__block_invoke;
  v7[3] = &unk_1E74E4560;
  v7[4] = self;
  [v5 _cn_each:v7];
  [(CNPhotoPickerVariantListController *)self setProviderItems:v5];
  collectionView = [(CNPhotoPickerVariantListController *)self collectionView];
  [collectionView reloadData];
}

- (void)updateFlowLayoutItemSize
{
  collectionView = [(CNPhotoPickerVariantListController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  numberOfItemsPerRowProvider = [(CNPhotoPickerVariantListController *)self numberOfItemsPerRowProvider];
  view = [(CNPhotoPickerVariantListController *)self view];
  [view bounds];
  v6 = numberOfItemsPerRowProvider[2](numberOfItemsPerRowProvider);

  view2 = [(CNPhotoPickerVariantListController *)self view];
  [view2 bounds];
  v9 = v8;

  [collectionViewLayout minimumInteritemSpacing];
  *&v10 = (v9 - (v6 - 1) * v10 + -64.0) / v6;
  v11 = floorf(*&v10);
  v12 = v11;
  if ([(CNPhotoPickerVariantListController *)self shouldShowCaptions])
  {
    v13 = +[CNUIFontRepository contactCardPhotoPickerCaptionFont];
    [v13 lineHeight];
    v12 = v14 * 2.0 + 8.0 + v11;
  }

  [collectionViewLayout setItemSize:{v11, v12}];
  [collectionViewLayout invalidateLayout];
}

- (void)updateForNewOriginalItem:(id)item
{
  itemCopy = item;
  collectionView = [(CNPhotoPickerVariantListController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  objc_storeStrong(&self->_originalItem, item);
  [(CNPhotoPickerVariantListController *)self generateProviderItems];
  if ([indexPathsForSelectedItems count])
  {
    v7 = [(NSArray *)self->_providerItems count];
    v8 = [indexPathsForSelectedItems objectAtIndexedSubscript:0];
    item = [v8 item];

    if (v7 > item)
    {
      collectionView2 = [(CNPhotoPickerVariantListController *)self collectionView];
      v11 = [indexPathsForSelectedItems objectAtIndexedSubscript:0];
      [collectionView2 selectItemAtIndexPath:v11 animated:0 scrollPosition:0];
    }
  }
}

- (NSString)variantsDisplayTitle
{
  originalItem = [(CNPhotoPickerVariantListController *)self originalItem];
  localizedVariantsTitle = [originalItem localizedVariantsTitle];

  return localizedVariantsTitle;
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerVariantListController;
  [(CNPhotoPickerVariantListController *)&v5 viewDidLayoutSubviews];
  [(CNPhotoPickerVariantListController *)self updateFlowLayoutItemSize];
  posePreview = [(CNPhotoPickerVariantListController *)self posePreview];

  if (posePreview)
  {
    posePreview2 = [(CNPhotoPickerVariantListController *)self posePreview];
    [posePreview2 layoutIfNeeded];
  }
}

- (void)buildCollectionView
{
  v41[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  shouldShowCaptions = [(CNPhotoPickerVariantListController *)self shouldShowCaptions];
  v5 = 20.0;
  if (shouldShowCaptions)
  {
    v5 = 18.0;
  }

  [v3 setMinimumLineSpacing:v5];
  [v3 setMinimumInteritemSpacing:20.0];
  [v3 setScrollDirection:0];
  [v3 setSectionInsetReference:1];
  sectionHeaderView = [(CNPhotoPickerVariantListController *)self sectionHeaderView];

  if (sectionHeaderView)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    [v3 setHeaderReferenceSize:{CGRectGetWidth(v42), 50.0}];
  }

  v8 = objc_opt_class();
  view = [(CNPhotoPickerVariantListController *)self view];
  [view bounds];
  v14 = [v8 topMarginForBounds:-[CNPhotoPickerVariantListController shouldShowCaptions](self shouldShowCaptions:{"shouldShowCaptions"), v10, v11, v12, v13}];

  [v3 setSectionInset:{v14, 16.0, 20.0, 16.0}];
  v15 = objc_alloc(MEMORY[0x1E69DC7F0]);
  view2 = [(CNPhotoPickerVariantListController *)self view];
  [view2 bounds];
  v17 = [v15 initWithFrame:v3 collectionViewLayout:?];

  [v17 setDelegate:self];
  [v17 setDataSource:self];
  v18 = objc_opt_class();
  v19 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
  [v17 registerClass:v18 forCellWithReuseIdentifier:v19];

  [v17 setClipsToBounds:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v17 setBackgroundColor:clearColor];

  [v17 setAlwaysBounceVertical:1];
  [v17 setContentInsetAdjustmentBehavior:2];
  [v17 setContentInset:{0.0, 16.0, 0.0, 16.0}];
  view3 = [(CNPhotoPickerVariantListController *)self view];
  [view3 addSubview:v17];

  headerView = [(CNPhotoPickerVariantListController *)self headerView];

  if (headerView)
  {
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    view4 = [(CNPhotoPickerVariantListController *)self view];
    topAnchor = [v17 topAnchor];
    headerView2 = [(CNPhotoPickerVariantListController *)self headerView];
    bottomAnchor = [headerView2 bottomAnchor];
    v36 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v41[0] = v36;
    leftAnchor = [v17 leftAnchor];
    view5 = [(CNPhotoPickerVariantListController *)self view];
    leftAnchor2 = [view5 leftAnchor];
    v32 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v41[1] = v32;
    rightAnchor = [v17 rightAnchor];
    view6 = [(CNPhotoPickerVariantListController *)self view];
    rightAnchor2 = [view6 rightAnchor];
    v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v41[2] = v24;
    bottomAnchor2 = [v17 bottomAnchor];
    view7 = [(CNPhotoPickerVariantListController *)self view];
    bottomAnchor3 = [view7 bottomAnchor];
    v28 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v41[3] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
    [view4 addConstraints:v29];
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
  view = [(CNPhotoPickerVariantListController *)self view];
  [view bounds];
  v5 = v4;

  v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v5, 100.0}];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v6 setBackgroundColor:clearColor];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(CNPhotoPickerVariantListController *)self view];
  [view2 addSubview:v6];

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
  originalItem = [(CNPhotoPickerVariantListController *)self originalItem];
  height = [CNPhotoPickerPreviewView pickerPreviewWithFrame:originalItem forItem:x, y, width, height];

  [height setTranslatesAutoresizingMaskIntoConstraints:0];
  [height setClipsToBounds:1];
  [v6 addSubview:height];
  v15 = height;
  [(CNPhotoPickerVariantListController *)self setPosePreview:height];
  view3 = [(CNPhotoPickerVariantListController *)self view];
  window = [view3 window];
  screen = [window screen];
  [screen scale];
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
  cGColor = [v26 CGColor];
  layer = [v24 layer];
  [layer setShadowColor:cGColor];

  layer2 = [v24 layer];
  LODWORD(v30) = 1.0;
  [layer2 setShadowOpacity:v30];

  layer3 = [v24 layer];
  [layer3 setShadowOffset:{0.0, 1.0}];

  layer4 = [v24 layer];
  [layer4 setShadowRadius:0.5];

  layer5 = [v24 layer];
  [layer5 setMasksToBounds:0];

  v64 = v24;
  [v24 setAutoresizingMask:10];
  [v6 addSubview:v24];
  view4 = [(CNPhotoPickerVariantListController *)self view];
  view5 = [(CNPhotoPickerVariantListController *)self view];
  topAnchor = [v6 topAnchor];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v60 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v66[0] = v60;
  heightAnchor = [v6 heightAnchor];
  heightAnchor2 = [view4 heightAnchor];
  v56 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.3];
  v66[1] = v56;
  leftAnchor = [v6 leftAnchor];
  v57 = view4;
  leftAnchor2 = [view4 leftAnchor];
  v53 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v66[2] = v53;
  rightAnchor = [v6 rightAnchor];
  rightAnchor2 = [view4 rightAnchor];
  v49 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v66[3] = v49;
  v35 = v15;
  topAnchor3 = [v15 topAnchor];
  topAnchor4 = [v6 topAnchor];
  v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:20.0];
  v66[4] = v46;
  v50 = v15;
  bottomAnchor = [v15 bottomAnchor];
  bottomAnchor2 = [v6 bottomAnchor];
  v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
  v66[5] = v37;
  centerXAnchor = [v15 centerXAnchor];
  centerXAnchor2 = [v6 centerXAnchor];
  v40 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v66[6] = v40;
  widthAnchor = [v35 widthAnchor];
  heightAnchor3 = [v35 heightAnchor];
  v43 = [widthAnchor constraintEqualToAnchor:heightAnchor3];
  v66[7] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:8];
  [view5 addConstraints:v44];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerVariantListController;
  [(CNPhotoPickerVariantListController *)&v9 viewDidAppear:appear];
  collectionView = [(CNPhotoPickerVariantListController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  if (![indexPathsForSelectedItems count])
  {
    selectedVariantIdentifier = [(CNPhotoPickerVariantListController *)self selectedVariantIdentifier];
    if (selectedVariantIdentifier)
    {
    }

    else
    {
      commitsChangesOnSelection = [(CNPhotoPickerVariantListController *)self commitsChangesOnSelection];

      if (commitsChangesOnSelection)
      {
        return;
      }

      collectionView = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
      collectionView2 = [(CNPhotoPickerVariantListController *)self collectionView];
      [collectionView2 selectItemAtIndexPath:collectionView animated:0 scrollPosition:0];

      indexPathsForSelectedItems = [(CNPhotoPickerVariantListController *)self collectionView];
      [(CNPhotoPickerVariantListController *)self collectionView:indexPathsForSelectedItems didSelectItemAtIndexPath:collectionView];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = CNPhotoPickerVariantListController;
  [(CNPhotoPickerVariantListController *)&v15 viewWillAppear:appear];
  selectedVariantIdentifier = [(CNPhotoPickerVariantListController *)self selectedVariantIdentifier];
  if (selectedVariantIdentifier)
  {

    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    originalItem = [(CNPhotoPickerVariantListController *)self originalItem];
    imageType = [originalItem imageType];

    if (imageType == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  collectionView = [(CNPhotoPickerVariantListController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  if ([indexPathsForSelectedItems count])
  {
  }

  else
  {
    selectedVariantIdentifier2 = [(CNPhotoPickerVariantListController *)self selectedVariantIdentifier];

    if (!selectedVariantIdentifier2)
    {
      goto LABEL_11;
    }

    collectionView = [(CNPhotoPickerVariantListController *)self providerItems];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__CNPhotoPickerVariantListController_viewWillAppear___block_invoke;
    v14[3] = &unk_1E74E66D0;
    v14[4] = self;
    v5 = [collectionView _cn_indexOfFirstObjectPassingTest:v14];
  }

LABEL_11:
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:v5 inSection:0];
    collectionView2 = [(CNPhotoPickerVariantListController *)self collectionView];
    [collectionView2 selectItemAtIndexPath:v11 animated:0 scrollPosition:2];

    collectionView3 = [(CNPhotoPickerVariantListController *)self collectionView];
    [(CNPhotoPickerVariantListController *)self collectionView:collectionView3 didSelectItemAtIndexPath:v11];
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(CNPhotoPickerVariantListController *)self view];
  [view setBackgroundColor:clearColor];

  view2 = [(CNPhotoPickerVariantListController *)self view];
  [view2 setInsetsLayoutMarginsFromSafeArea:0];

  originalItem = [(CNPhotoPickerVariantListController *)self originalItem];

  if (originalItem)
  {
    originalItem2 = [(CNPhotoPickerVariantListController *)self originalItem];
    localizedVariantsTitle = [originalItem2 localizedVariantsTitle];
    navigationItem = [(CNPhotoPickerVariantListController *)self navigationItem];
    [navigationItem setTitle:localizedVariantsTitle];
  }

  if ([(CNPhotoPickerVariantListController *)self showPreview])
  {
    [(CNPhotoPickerVariantListController *)self buildHeader];
    originalItem3 = [(CNPhotoPickerVariantListController *)self originalItem];
    [(CNPhotoPickerVariantListController *)self updatePreviewWithItem:originalItem3];
  }

  [(CNPhotoPickerVariantListController *)self buildCollectionView];
  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
  navigationItem2 = [(CNPhotoPickerVariantListController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v11];

  v13 = objc_alloc(MEMORY[0x1E69DC708]);
  rightBarButtonTitle = [(CNPhotoPickerVariantListController *)self rightBarButtonTitle];
  v15 = [v13 initWithTitle:rightBarButtonTitle style:2 target:self action:sel_didFinishSelectingVariant];
  navigationItem3 = [(CNPhotoPickerVariantListController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v15];

  navigationItem4 = [(CNPhotoPickerVariantListController *)self navigationItem];
  rightBarButtonItem = [navigationItem4 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  [(CNPhotoPickerVariantListController *)self generateProviderItems];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (CNPhotoPickerVariantListController)initWithVariantsManager:(id)manager originalItem:(id)item selectedVariantIdentifier:(id)identifier
{
  managerCopy = manager;
  itemCopy = item;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = CNPhotoPickerVariantListController;
  v12 = [(CNPhotoPickerVariantListController *)&v18 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_variantsManager, manager);
    objc_storeStrong(&v13->_originalItem, item);
    v14 = [&__block_literal_global_34895 copy];
    numberOfItemsPerRowProvider = v13->_numberOfItemsPerRowProvider;
    v13->_numberOfItemsPerRowProvider = v14;

    v13->_cellStyle = 1;
    v13->_shouldShowCaptions = [itemCopy shouldShowCaption];
    objc_storeStrong(&v13->_selectedVariantIdentifier, identifier);
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

+ (int64_t)topMarginForBounds:(CGRect)bounds shouldShowCaptions:(BOOL)captions
{
  if (bounds.size.width > 460.0 || captions)
  {
    return 20;
  }

  else
  {
    return 40;
  }
}

@end