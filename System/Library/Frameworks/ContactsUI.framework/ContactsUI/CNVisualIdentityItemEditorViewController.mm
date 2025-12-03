@interface CNVisualIdentityItemEditorViewController
- (BOOL)editorViewOverlapsWindowBasedKeyboardRect:(CGRect)rect;
- (BOOL)isEmojiProviderItemType;
- (BOOL)shouldBeginEditing;
- (BOOL)shouldShowStyleCollectionView;
- (CNVisualIdentityItemEditorViewController)initWithProviderItem:(id)item variantsManager:(id)manager;
- (CNVisualIdentityItemEditorViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)editableAvatarViewEdgeLength;
- (double)editorViewBottomYForAvatarSize:(double)size withContainerTopMargin:(double)margin;
- (double)fontSizeForContainerSize:(double)size;
- (double)segmentedControlTopMargin;
- (double)styleContainerTopMargin;
- (double)textFieldFontSize;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)updatedProviderItem;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfItemsPerRow;
- (void)adjustAvatarViewConstraintsForKeyboardFrame:(CGRect)frame;
- (void)beginEditingAvatar;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didTapCancel;
- (void)didTapDone;
- (void)didTapEditableAvatar:(id)avatar;
- (void)didTapSegmentedControl:(id)control;
- (void)editableAvatarViewController:(id)controller didUpdateWithProviderItem:(id)item;
- (void)forceEmojiKeyboardIfNeeded;
- (void)generateProviderItems;
- (void)hideStyleCollectionView;
- (void)keyboardWillShow:(id)show;
- (void)providerItemDidUpdate:(id)update;
- (void)setUpFirstResponderForProviderItem:(id)item;
- (void)setupBarButtonItems;
- (void)setupEditableAvatarViewController;
- (void)setupSegmentedControl;
- (void)setupStyleCollectionView;
- (void)setupViewWithProviderItem:(id)item;
- (void)switchEditorToMode:(unint64_t)mode;
- (void)updateDoneButtonEnabledStateForText:(id)text;
- (void)updateFlowLayoutItemSize;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CNVisualIdentityItemEditorViewController

- (CNVisualIdentityItemEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)styleContainerTopMargin
{
  view = [(CNVisualIdentityItemEditorViewController *)self view];
  [view bounds];
  if (v3 <= 667.0)
  {
    v4 = 36.0;
  }

  else
  {
    v4 = 43.0;
  }

  return v4;
}

- (double)segmentedControlTopMargin
{
  view = [(CNVisualIdentityItemEditorViewController *)self view];
  [view bounds];
  if (v3 <= 667.0)
  {
    v4 = 20.0;
  }

  else
  {
    v4 = 30.0;
  }

  return v4;
}

- (double)fontSizeForContainerSize:(double)size
{
  if ([(CNVisualIdentityItemEditorViewController *)self isEmojiProviderItemType])
  {
    return size * 0.631578947;
  }

  if (size == 240.0)
  {
    return 120.0;
  }

  result = 60.0;
  if (size == 200.0)
  {
    return 100.0;
  }

  return result;
}

- (double)textFieldFontSize
{
  [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewEdgeLength];

  [(CNVisualIdentityItemEditorViewController *)self fontSizeForContainerSize:?];
  return result;
}

- (double)editableAvatarViewEdgeLength
{
  view = [(CNVisualIdentityItemEditorViewController *)self view];
  [view bounds];
  if (v3 <= 667.0)
  {
    v4 = 200.0;
  }

  else
  {
    v4 = 240.0;
  }

  return v4;
}

- (void)editableAvatarViewController:(id)controller didUpdateWithProviderItem:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_1F0DD51E0])
  {
    v5 = itemCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    itemText = [v6 itemText];
    [(CNVisualIdentityItemEditorViewController *)self updateDoneButtonEnabledStateForText:itemText];
  }
}

- (void)providerItemDidUpdate:(id)update
{
  updateCopy = update;
  variantProviderItems = [(CNVisualIdentityItemEditorViewController *)self variantProviderItems];
  v6 = [variantProviderItems indexOfObject:updateCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__CNVisualIdentityItemEditorViewController_providerItemDidUpdate___block_invoke;
    v9[3] = &unk_1E74E77C0;
    v9[4] = self;
    v10 = v7;
    v8 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

void __66__CNVisualIdentityItemEditorViewController_providerItemDidUpdate___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) styleCollectionView];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 reloadItemsAtIndexPaths:v3];
}

- (void)generateProviderItems
{
  providerItem = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  [providerItem conformsToProtocol:&unk_1F0DD51E0];

  providerItem2 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  variantsManager = [(CNVisualIdentityItemEditorViewController *)self variantsManager];
  v6 = [providerItem2 createVariantsItemsWithVariantsManager:variantsManager];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__CNVisualIdentityItemEditorViewController_generateProviderItems__block_invoke;
  v8[3] = &unk_1E74E4560;
  v8[4] = self;
  [v6 _cn_each:v8];
  [(CNVisualIdentityItemEditorViewController *)self setVariantProviderItems:v6];
  styleCollectionView = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
  [styleCollectionView reloadData];
}

void __65__CNVisualIdentityItemEditorViewController_generateProviderItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [*(a1 + 32) providerItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  objc_opt_class();
  v10 = v3;
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [v6 originalImageSize];
    [v8 setOriginalImageSize:?];
  }

  [v10 setDelegate:*(a1 + 32)];
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v6 = [(CNVisualIdentityItemEditorViewController *)self view:view];
  [v6 layoutMargins];
  v8 = v7;
  view = [(CNVisualIdentityItemEditorViewController *)self view];
  [view layoutMargins];
  v11 = v10;

  v12 = 0.0;
  v13 = 0.0;
  v14 = v8;
  v15 = v11;
  result.right = v15;
  result.bottom = v13;
  result.left = v14;
  result.top = v12;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  variantProviderItems = [(CNVisualIdentityItemEditorViewController *)self variantProviderItems];
  v7 = [pathCopy row];

  v8 = [variantProviderItems objectAtIndexedSubscript:v7];
  [(CNVisualIdentityItemEditorViewController *)self setProviderItem:v8];

  objc_opt_class();
  providerItem = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  if (objc_opt_isKindOfClass())
  {
    v10 = providerItem;
  }

  else
  {
    v10 = 0;
  }

  v14 = v10;

  if (v14)
  {
    generateImageDataIfNeeded = [v14 generateImageDataIfNeeded];
  }

  editableAvatarViewController = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  providerItem2 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  [editableAvatarViewController updateWithProviderItem:providerItem2];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 setCellStyle:1];
  if (v12)
  {
    variantProviderItems = [(CNVisualIdentityItemEditorViewController *)self variantProviderItems];
    v14 = [variantProviderItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__CNVisualIdentityItemEditorViewController_collectionView_cellForItemAtIndexPath___block_invoke;
    v19[3] = &unk_1E74E73E8;
    v15 = v12;
    v20 = v15;
    [v14 thumbnailViewWithCompletion:v19];
    v16 = v15;
  }

  else
  {
    v17 = v10;
  }

  return v10;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(CNVisualIdentityItemEditorViewController *)self variantProviderItems:view];
  v5 = [v4 count];

  return v5;
}

- (void)didTapSegmentedControl:(id)control
{
  selectedSegmentIndex = [control selectedSegmentIndex];
  if (selectedSegmentIndex == 1)
  {
    updatedProviderItem = [(CNVisualIdentityItemEditorViewController *)self updatedProviderItem];
    [(CNVisualIdentityItemEditorViewController *)self setProviderItem:updatedProviderItem];

    editableAvatarViewController = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
    [editableAvatarViewController endEditing];

    [(CNVisualIdentityItemEditorViewController *)self setupStyleCollectionView];
  }

  else if (!selectedSegmentIndex)
  {
    [(CNVisualIdentityItemEditorViewController *)self beginEditingAvatar];

    [(CNVisualIdentityItemEditorViewController *)self hideStyleCollectionView];
  }
}

- (void)didTapDone
{
  delegate = [(CNVisualIdentityItemEditorViewController *)self delegate];

  if (delegate)
  {
    updatedProviderItem = [(CNVisualIdentityItemEditorViewController *)self updatedProviderItem];
    delegate2 = [(CNVisualIdentityItemEditorViewController *)self delegate];
    [delegate2 visualIdentityEditorController:self didFinishWithProviderItem:updatedProviderItem];
  }

  else
  {

    [(CNVisualIdentityItemEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didTapCancel
{
  delegate = [(CNVisualIdentityItemEditorViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CNVisualIdentityItemEditorViewController *)self delegate];
    [delegate2 visualIdentityEditorControllerDidCancel:self];
  }

  else
  {

    [(CNVisualIdentityItemEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)isEmojiProviderItemType
{
  providerItem = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  v3 = [providerItem imageType] == 4;

  return v3;
}

- (id)updatedProviderItem
{
  providerItem = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  if ([providerItem conformsToProtocol:&unk_1F0DD51E0])
  {
    v4 = providerItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    editableAvatarViewController = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
    text = [editableAvatarViewController text];
    v8 = [v5 updatedProviderItemWithText:text];
  }

  else
  {
    editableAvatarViewController = [(CNVisualIdentityItemEditorViewController *)self providerItem];
    v8 = [editableAvatarViewController copy];
  }

  return v8;
}

- (int64_t)numberOfItemsPerRow
{
  view = [(CNVisualIdentityItemEditorViewController *)self view];
  [view bounds];
  if (v3 <= 460.0)
  {
    v4 = 4;
  }

  else
  {
    v4 = 6;
  }

  return v4;
}

- (void)updateFlowLayoutItemSize
{
  if ([(CNVisualIdentityItemEditorViewController *)self shouldShowStyleCollectionView])
  {
    styleCollectionView = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
    collectionViewLayout = [styleCollectionView collectionViewLayout];

    numberOfItemsPerRow = [(CNVisualIdentityItemEditorViewController *)self numberOfItemsPerRow];
    view = [(CNVisualIdentityItemEditorViewController *)self view];
    [view bounds];
    v7 = (v6 + (numberOfItemsPerRow + 1) * -20.0) / numberOfItemsPerRow;

    [collectionViewLayout setItemSize:{v7, v7}];
    [collectionViewLayout invalidateLayout];
  }
}

- (BOOL)shouldShowStyleCollectionView
{
  segmentedControl = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  v3 = [segmentedControl selectedSegmentIndex] == 1;

  return v3;
}

- (void)hideStyleCollectionView
{
  styleCollectionView = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
  [styleCollectionView removeFromSuperview];

  styleDividerView = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
  [styleDividerView removeFromSuperview];
}

- (void)setUpFirstResponderForProviderItem:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_1F0DD51E0])
  {
    v4 = itemCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    [(CNVisualIdentityItemEditorViewController *)self beginEditingAvatar];
  }
}

- (void)setupViewWithProviderItem:(id)item
{
  providerItem = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  if ([providerItem conformsToProtocol:&unk_1F0DD51E0])
  {
    v5 = providerItem;
  }

  else
  {
    v5 = 0;
  }

  v8 = v5;

  segmentedControl = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  if (v8)
  {
    [segmentedControl setTextAndStyleMode];

    segmentedControl = [v8 itemText];
    [(CNVisualIdentityItemEditorViewController *)self updateDoneButtonEnabledStateForText:segmentedControl];
  }

  else
  {
    [segmentedControl setStyleOnlyMode];
  }

  segmentedControl2 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  [(CNVisualIdentityItemEditorViewController *)self didTapSegmentedControl:segmentedControl2];
}

- (void)setupStyleCollectionView
{
  v83[8] = *MEMORY[0x1E69E9840];
  if ([(CNVisualIdentityItemEditorViewController *)self shouldShowStyleCollectionView])
  {
    styleCollectionView = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];

    if (!styleCollectionView)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DC840]);
      [v4 setMinimumLineSpacing:8.0];
      [v4 setScrollDirection:0];
      v5 = objc_alloc(MEMORY[0x1E69DC7F0]);
      v6 = *MEMORY[0x1E695F058];
      v7 = *(MEMORY[0x1E695F058] + 8);
      v8 = *(MEMORY[0x1E695F058] + 16);
      v9 = *(MEMORY[0x1E695F058] + 24);
      v10 = [v5 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x1E695F058], v7, v8, v9}];
      [(CNVisualIdentityItemEditorViewController *)self setStyleCollectionView:v10];

      styleCollectionView2 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      [styleCollectionView2 setTranslatesAutoresizingMaskIntoConstraints:0];

      styleCollectionView3 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      [styleCollectionView3 setDelegate:self];

      styleCollectionView4 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      [styleCollectionView4 setDataSource:self];

      styleCollectionView5 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      v15 = objc_opt_class();
      v16 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
      [styleCollectionView5 registerClass:v15 forCellWithReuseIdentifier:v16];

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      styleCollectionView6 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      [styleCollectionView6 setBackgroundColor:clearColor];

      styleCollectionView7 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      [styleCollectionView7 setAlwaysBounceVertical:1];

      styleCollectionView8 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      [styleCollectionView8 setContentInsetAdjustmentBehavior:3];

      [(CNVisualIdentityItemEditorViewController *)self updateFlowLayoutItemSize];
      v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
      [(CNVisualIdentityItemEditorViewController *)self setStyleDividerView:v21];

      styleDividerView = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
      [styleDividerView setTranslatesAutoresizingMaskIntoConstraints:0];

      v23 = +[CNUIColorRepository visualIdentityEditorDividerColor];
      styleDividerView2 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
      [styleDividerView2 setBackgroundColor:v23];

      v25 = +[CNUIColorRepository photoPickerBackgroundShadowColor];
      cGColor = [v25 CGColor];
      styleDividerView3 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
      layer = [styleDividerView3 layer];
      [layer setShadowColor:cGColor];

      styleDividerView4 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
      layer2 = [styleDividerView4 layer];
      LODWORD(v31) = 1.0;
      [layer2 setShadowOpacity:v31];

      styleDividerView5 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
      layer3 = [styleDividerView5 layer];
      [layer3 setShadowOffset:{0.0, 1.0}];

      styleDividerView6 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
      layer4 = [styleDividerView6 layer];
      [layer4 setShadowRadius:0.5];
    }

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v38 = v37;

    if (v38 <= 0.0)
    {
      v39 = 1.0;
    }

    else
    {
      v39 = 1.0 / v38;
    }

    view = [(CNVisualIdentityItemEditorViewController *)self view];
    styleDividerView7 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
    [view addSubview:styleDividerView7];

    view2 = [(CNVisualIdentityItemEditorViewController *)self view];
    styleCollectionView9 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
    [view2 addSubview:styleCollectionView9];

    styleDividerView8 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
    topAnchor = [styleDividerView8 topAnchor];
    segmentedControl = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
    bottomAnchor = [segmentedControl bottomAnchor];
    [(CNVisualIdentityItemEditorViewController *)self styleContainerTopMargin];
    v78 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
    v83[0] = v78;
    styleDividerView9 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
    leadingAnchor = [styleDividerView9 leadingAnchor];
    view3 = [(CNVisualIdentityItemEditorViewController *)self view];
    leadingAnchor2 = [view3 leadingAnchor];
    v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v83[1] = v73;
    styleDividerView10 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
    trailingAnchor = [styleDividerView10 trailingAnchor];
    view4 = [(CNVisualIdentityItemEditorViewController *)self view];
    trailingAnchor2 = [view4 trailingAnchor];
    v68 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v83[2] = v68;
    styleDividerView11 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
    heightAnchor = [styleDividerView11 heightAnchor];
    v65 = [heightAnchor constraintEqualToConstant:v39];
    v83[3] = v65;
    styleCollectionView10 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
    topAnchor2 = [styleCollectionView10 topAnchor];
    styleDividerView12 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
    bottomAnchor2 = [styleDividerView12 bottomAnchor];
    v59 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:12.0];
    v83[4] = v59;
    styleCollectionView11 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
    leadingAnchor3 = [styleCollectionView11 leadingAnchor];
    view5 = [(CNVisualIdentityItemEditorViewController *)self view];
    leadingAnchor4 = [view5 leadingAnchor];
    v54 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v83[5] = v54;
    styleCollectionView12 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
    trailingAnchor3 = [styleCollectionView12 trailingAnchor];
    view6 = [(CNVisualIdentityItemEditorViewController *)self view];
    trailingAnchor4 = [view6 trailingAnchor];
    v47 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v83[6] = v47;
    styleCollectionView13 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
    bottomAnchor3 = [styleCollectionView13 bottomAnchor];
    view7 = [(CNVisualIdentityItemEditorViewController *)self view];
    bottomAnchor4 = [view7 bottomAnchor];
    v52 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v83[7] = v52;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:8];

    [MEMORY[0x1E696ACD8] activateConstraints:v60];
    [(CNVisualIdentityItemEditorViewController *)self generateProviderItems];
  }
}

- (void)setupSegmentedControl
{
  v41[5] = *MEMORY[0x1E69E9840];
  providerItem = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  if ([providerItem conformsToProtocol:&unk_1F0DD51E0])
  {
    v4 = providerItem;
  }

  else
  {
    v4 = 0;
  }

  providerItem2 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  v6 = +[CNVisualIdentityItemEditorSegmentedControl segmentedControlForItemType:](CNVisualIdentityItemEditorSegmentedControl, "segmentedControlForItemType:", [providerItem2 imageType]);
  [(CNVisualIdentityItemEditorViewController *)self setSegmentedControl:v6];

  segmentedControl = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  v8 = segmentedControl;
  if (v4)
  {
    v9 = 30.0;
  }

  else
  {
    v9 = 0.0;
  }

  [segmentedControl setHidden:v4 == 0];

  segmentedControl2 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  [segmentedControl2 addTarget:self action:sel_didTapSegmentedControl_ forControlEvents:4096];

  view = [(CNVisualIdentityItemEditorViewController *)self view];
  segmentedControl3 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  [view addSubview:segmentedControl3];

  segmentedControl4 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  heightAnchor = [segmentedControl4 heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:v9];
  [(CNVisualIdentityItemEditorViewController *)self setSegmentedControlHeightConstraint:v15];

  segmentedControl5 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  topAnchor = [segmentedControl5 topAnchor];
  editableAvatarViewController = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  view2 = [editableAvatarViewController view];
  bottomAnchor = [view2 bottomAnchor];
  [(CNVisualIdentityItemEditorViewController *)self segmentedControlTopMargin];
  v35 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
  v41[0] = v35;
  segmentedControlHeightConstraint = [(CNVisualIdentityItemEditorViewController *)self segmentedControlHeightConstraint];
  v41[1] = segmentedControlHeightConstraint;
  segmentedControl6 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  centerXAnchor = [segmentedControl6 centerXAnchor];
  view3 = [(CNVisualIdentityItemEditorViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v41[2] = v29;
  segmentedControl7 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  leadingAnchor = [segmentedControl7 leadingAnchor];
  view4 = [(CNVisualIdentityItemEditorViewController *)self view];
  layoutMarginsGuide = [view4 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v41[3] = v18;
  segmentedControl8 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  trailingAnchor = [segmentedControl8 trailingAnchor];
  view5 = [(CNVisualIdentityItemEditorViewController *)self view];
  layoutMarginsGuide2 = [view5 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v41[4] = v24;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:5];

  [MEMORY[0x1E696ACD8] activateConstraints:v27];
  [(CNVisualIdentityItemEditorViewController *)self setupStyleCollectionView];
}

- (void)switchEditorToMode:(unint64_t)mode
{
  segmentedControl = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  [segmentedControl setSelectedSegmentIndex:mode];

  segmentedControl2 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  [(CNVisualIdentityItemEditorViewController *)self didTapSegmentedControl:segmentedControl2];
}

- (BOOL)shouldBeginEditing
{
  if ([(CNVisualIdentityItemEditorViewController *)self canBeginEditing])
  {
    segmentedControl = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
    allowsTextInputForCurrentEditorType = [segmentedControl allowsTextInputForCurrentEditorType];
  }

  else
  {
    allowsTextInputForCurrentEditorType = 0;
  }

  navigationController = [(CNVisualIdentityItemEditorViewController *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    navigationController2 = [(CNVisualIdentityItemEditorViewController *)self navigationController];
    if (objc_opt_isKindOfClass())
    {
      v8 = navigationController2;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    isDisplayingTrapView = [v9 isDisplayingTrapView];
    return isDisplayingTrapView ^ 1;
  }

  return allowsTextInputForCurrentEditorType;
}

- (void)beginEditingAvatar
{
  if ([(CNVisualIdentityItemEditorViewController *)self shouldBeginEditing])
  {
    editableAvatarViewController = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
    [editableAvatarViewController beginEditing];
  }
}

- (void)forceEmojiKeyboardIfNeeded
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
  normalizedIdentifier = [currentInputMode normalizedIdentifier];

  if (([normalizedIdentifier isEqualToString:*MEMORY[0x1E69DDFB8]] & 1) == 0)
  {
    editableAvatarViewController = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
    [editableAvatarViewController endEditing];
  }

  [(CNVisualIdentityItemEditorViewController *)self beginEditingAvatar];
}

- (void)didTapEditableAvatar:(id)avatar
{
  segmentedControl = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  selectedSegmentIndex = [segmentedControl selectedSegmentIndex];

  if (selectedSegmentIndex == 1)
  {
    segmentedControl2 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
    v7 = [segmentedControl2 isEnabledForSegmentAtIndex:0];

    if (v7)
    {

      [(CNVisualIdentityItemEditorViewController *)self switchEditorToMode:0];
    }
  }

  else if (!selectedSegmentIndex)
  {
    if ([(CNVisualIdentityItemEditorViewController *)self isEmojiProviderItemType])
    {

      [(CNVisualIdentityItemEditorViewController *)self forceEmojiKeyboardIfNeeded];
    }

    else
    {

      [(CNVisualIdentityItemEditorViewController *)self beginEditingAvatar];
    }
  }
}

- (void)setupEditableAvatarViewController
{
  v47[4] = *MEMORY[0x1E69E9840];
  v3 = [CNVisualIdentityEditablePrimaryAvatarViewController alloc];
  providerItem = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  variantsManager = [(CNVisualIdentityItemEditorViewController *)self variantsManager];
  v6 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)v3 initWithProviderItem:providerItem variantsManager:variantsManager];
  [(CNVisualIdentityItemEditorViewController *)self setEditableAvatarViewController:v6];

  editableAvatarViewController = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  [editableAvatarViewController setDelegate:self];

  [(CNVisualIdentityItemEditorViewController *)self textFieldFontSize];
  v9 = v8;
  editableAvatarViewController2 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  [editableAvatarViewController2 setDesiredFontSize:v9];

  editableAvatarViewController3 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  view = [editableAvatarViewController3 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  editableAvatarViewController4 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  [(CNVisualIdentityItemEditorViewController *)self addChildViewController:editableAvatarViewController4];

  view2 = [(CNVisualIdentityItemEditorViewController *)self view];
  editableAvatarViewController5 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  view3 = [editableAvatarViewController5 view];
  [view2 addSubview:view3];

  editableAvatarViewController6 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  [editableAvatarViewController6 didMoveToParentViewController:self];

  editableAvatarViewController7 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  view4 = [editableAvatarViewController7 view];
  widthAnchor = [view4 widthAnchor];
  [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewEdgeLength];
  v21 = [widthAnchor constraintEqualToConstant:?];
  [(CNVisualIdentityItemEditorViewController *)self setAvatarViewSizeConstraint:v21];

  editableAvatarViewController8 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  view5 = [editableAvatarViewController8 view];
  topAnchor = [view5 topAnchor];
  view6 = [(CNVisualIdentityItemEditorViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:100.0];
  [(CNVisualIdentityItemEditorViewController *)self setAvatarViewTopConstraint:v27];

  avatarViewSizeConstraint = [(CNVisualIdentityItemEditorViewController *)self avatarViewSizeConstraint];
  v47[0] = avatarViewSizeConstraint;
  avatarViewTopConstraint = [(CNVisualIdentityItemEditorViewController *)self avatarViewTopConstraint];
  v47[1] = avatarViewTopConstraint;
  editableAvatarViewController9 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  view7 = [editableAvatarViewController9 view];
  heightAnchor = [view7 heightAnchor];
  editableAvatarViewController10 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  view8 = [editableAvatarViewController10 view];
  widthAnchor2 = [view8 widthAnchor];
  v30 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v47[2] = v30;
  editableAvatarViewController11 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  view9 = [editableAvatarViewController11 view];
  centerXAnchor = [view9 centerXAnchor];
  view10 = [(CNVisualIdentityItemEditorViewController *)self view];
  centerXAnchor2 = [view10 centerXAnchor];
  v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v47[3] = v36;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v40];
  v37 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapEditableAvatar_];
  editableAvatarViewController12 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  view11 = [editableAvatarViewController12 view];
  [view11 addGestureRecognizer:v37];
}

- (void)updateDoneButtonEnabledStateForText:(id)text
{
  v4 = *MEMORY[0x1E6996570];
  _cn_trimmedString = [text _cn_trimmedString];
  v5 = (*(v4 + 16))(v4, _cn_trimmedString);
  navigationItem = [(CNVisualIdentityItemEditorViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v5];
}

- (void)setupBarButtonItems
{
  if ([(CNVisualIdentityItemEditorViewController *)self canCancel])
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_didTapCancel];
    navigationItem = [(CNVisualIdentityItemEditorViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v3];
  }

  v5 = *MEMORY[0x1E6996570];
  doneButtonTitle = [(CNVisualIdentityItemEditorViewController *)self doneButtonTitle];
  LODWORD(v5) = (*(v5 + 16))(v5, doneButtonTitle);

  v7 = objc_alloc(MEMORY[0x1E69DC708]);
  v8 = v7;
  if (v5)
  {
    doneButtonTitle2 = [(CNVisualIdentityItemEditorViewController *)self doneButtonTitle];
    navigationItem3 = [v8 initWithTitle:doneButtonTitle2 style:2 target:self action:sel_didTapDone];
    navigationItem2 = [(CNVisualIdentityItemEditorViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:navigationItem3];
  }

  else
  {
    doneButtonTitle2 = [v7 initWithBarButtonSystemItem:0 target:self action:sel_didTapDone];
    navigationItem3 = [(CNVisualIdentityItemEditorViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:doneButtonTitle2];
  }

  navigationItem4 = [(CNVisualIdentityItemEditorViewController *)self navigationItem];
  [navigationItem4 _setBackgroundHidden:1];

  navigationController = [(CNVisualIdentityItemEditorViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  isTranslucent = [navigationBar isTranslucent];

  if ((isTranslucent & 1) == 0)
  {

    [(CNVisualIdentityItemEditorViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = CNVisualIdentityItemEditorViewController;
  [(CNVisualIdentityItemEditorViewController *)&v7 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  styleCollectionView = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
  collectionViewLayout = [styleCollectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (BOOL)editorViewOverlapsWindowBasedKeyboardRect:(CGRect)rect
{
  y = rect.origin.y;
  v5 = [(CNVisualIdentityItemEditorViewController *)self avatarViewSizeConstraint:rect.origin.x];
  [v5 constant];
  v7 = v6;
  avatarViewTopConstraint = [(CNVisualIdentityItemEditorViewController *)self avatarViewTopConstraint];
  [avatarViewTopConstraint constant];
  [(CNVisualIdentityItemEditorViewController *)self editorViewBottomYForAvatarSize:v7 withContainerTopMargin:v9];
  v11 = v10;

  return v11 > y;
}

- (double)editorViewBottomYForAvatarSize:(double)size withContainerTopMargin:(double)margin
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v9 = v8;
  view = [(CNVisualIdentityItemEditorViewController *)self view];
  [view bounds];
  v12 = v9 - v11;

  v13 = 30.0;
  if (size <= 200.0)
  {
    v13 = 20.0;
  }

  v14 = v13 + v12 + margin + size;
  segmentedControlHeightConstraint = [(CNVisualIdentityItemEditorViewController *)self segmentedControlHeightConstraint];
  [segmentedControlHeightConstraint constant];
  v17 = v16 + v14;

  return v17;
}

- (void)adjustAvatarViewConstraintsForKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  view = [(CNVisualIdentityItemEditorViewController *)self view];
  window = [view window];
  [window convertRect:0 fromWindow:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if ([(CNVisualIdentityItemEditorViewController *)self editorViewOverlapsWindowBasedKeyboardRect:v11, v13, v15, v17])
  {
    avatarViewSizeConstraint = [(CNVisualIdentityItemEditorViewController *)self avatarViewSizeConstraint];
    [avatarViewSizeConstraint setConstant:200.0];

    avatarViewTopConstraint = [(CNVisualIdentityItemEditorViewController *)self avatarViewTopConstraint];
    [avatarViewTopConstraint setConstant:64.0];

    if ([(CNVisualIdentityItemEditorViewController *)self editorViewOverlapsWindowBasedKeyboardRect:v11, v13, v15, v17])
    {
      if ([(CNVisualIdentityItemEditorViewController *)self isEmojiProviderItemType])
      {
        avatarViewTopConstraint2 = [(CNVisualIdentityItemEditorViewController *)self avatarViewTopConstraint];
        [avatarViewTopConstraint2 setConstant:32.0];
      }

      if ([(CNVisualIdentityItemEditorViewController *)self editorViewOverlapsWindowBasedKeyboardRect:v11, v13, v15, v17])
      {
        avatarViewSizeConstraint2 = [(CNVisualIdentityItemEditorViewController *)self avatarViewSizeConstraint];
        [avatarViewSizeConstraint2 setConstant:120.0];

        avatarViewTopConstraint3 = [(CNVisualIdentityItemEditorViewController *)self avatarViewTopConstraint];
        [avatarViewTopConstraint3 setConstant:42.0];

        if ([(CNVisualIdentityItemEditorViewController *)self editorViewOverlapsWindowBasedKeyboardRect:v11, v13, v15, v17])
        {
          if ([(CNVisualIdentityItemEditorViewController *)self isEmojiProviderItemType])
          {
            avatarViewTopConstraint4 = [(CNVisualIdentityItemEditorViewController *)self avatarViewTopConstraint];
            [avatarViewTopConstraint4 setConstant:24.0];
          }
        }
      }
    }

    editableAvatarViewController = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
    avatarViewSizeConstraint3 = [(CNVisualIdentityItemEditorViewController *)self avatarViewSizeConstraint];
    [avatarViewSizeConstraint3 constant];
    [(CNVisualIdentityItemEditorViewController *)self fontSizeForContainerSize:?];
    [editableAvatarViewController updateTextFieldFontSize:?];
  }
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(CNVisualIdentityItemEditorViewController *)self adjustAvatarViewConstraintsForKeyboardFrame:v7, v9, v11, v13];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CNVisualIdentityItemEditorViewController;
  [(CNVisualIdentityItemEditorViewController *)&v3 viewDidLayoutSubviews];
  [(CNVisualIdentityItemEditorViewController *)self updateFlowLayoutItemSize];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CNVisualIdentityItemEditorViewController;
  [(CNVisualIdentityItemEditorViewController *)&v5 viewDidAppear:appear];
  [(CNVisualIdentityItemEditorViewController *)self setCanBeginEditing:1];
  providerItem = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  [(CNVisualIdentityItemEditorViewController *)self setUpFirstResponderForProviderItem:providerItem];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CNVisualIdentityItemEditorViewController;
  [(CNVisualIdentityItemEditorViewController *)&v7 viewDidLoad];
  [(CNVisualIdentityItemEditorViewController *)self setupBarButtonItems];
  [(CNVisualIdentityItemEditorViewController *)self setupEditableAvatarViewController];
  [(CNVisualIdentityItemEditorViewController *)self setupSegmentedControl];
  providerItem = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  [(CNVisualIdentityItemEditorViewController *)self setupViewWithProviderItem:providerItem];

  v4 = +[CNUIColorRepository visualIdentityEditorBackgroundColor];
  view = [(CNVisualIdentityItemEditorViewController *)self view];
  [view setBackgroundColor:v4];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
}

- (CNVisualIdentityItemEditorViewController)initWithProviderItem:(id)item variantsManager:(id)manager
{
  itemCopy = item;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = CNVisualIdentityItemEditorViewController;
  v9 = [(CNVisualIdentityItemEditorViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_providerItem, item);
    objc_storeStrong(&v10->_variantsManager, manager);
    v10->_canCancel = 1;
    v11 = v10;
  }

  return v10;
}

@end