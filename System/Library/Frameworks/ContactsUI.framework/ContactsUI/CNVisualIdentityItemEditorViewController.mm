@interface CNVisualIdentityItemEditorViewController
- (BOOL)editorViewOverlapsWindowBasedKeyboardRect:(CGRect)a3;
- (BOOL)isEmojiProviderItemType;
- (BOOL)shouldBeginEditing;
- (BOOL)shouldShowStyleCollectionView;
- (CNVisualIdentityItemEditorViewController)initWithProviderItem:(id)a3 variantsManager:(id)a4;
- (CNVisualIdentityItemEditorViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)editableAvatarViewEdgeLength;
- (double)editorViewBottomYForAvatarSize:(double)a3 withContainerTopMargin:(double)a4;
- (double)fontSizeForContainerSize:(double)a3;
- (double)segmentedControlTopMargin;
- (double)styleContainerTopMargin;
- (double)textFieldFontSize;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)updatedProviderItem;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfItemsPerRow;
- (void)adjustAvatarViewConstraintsForKeyboardFrame:(CGRect)a3;
- (void)beginEditingAvatar;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didTapCancel;
- (void)didTapDone;
- (void)didTapEditableAvatar:(id)a3;
- (void)didTapSegmentedControl:(id)a3;
- (void)editableAvatarViewController:(id)a3 didUpdateWithProviderItem:(id)a4;
- (void)forceEmojiKeyboardIfNeeded;
- (void)generateProviderItems;
- (void)hideStyleCollectionView;
- (void)keyboardWillShow:(id)a3;
- (void)providerItemDidUpdate:(id)a3;
- (void)setUpFirstResponderForProviderItem:(id)a3;
- (void)setupBarButtonItems;
- (void)setupEditableAvatarViewController;
- (void)setupSegmentedControl;
- (void)setupStyleCollectionView;
- (void)setupViewWithProviderItem:(id)a3;
- (void)switchEditorToMode:(unint64_t)a3;
- (void)updateDoneButtonEnabledStateForText:(id)a3;
- (void)updateFlowLayoutItemSize;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNVisualIdentityItemEditorViewController

- (CNVisualIdentityItemEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)styleContainerTopMargin
{
  v2 = [(CNVisualIdentityItemEditorViewController *)self view];
  [v2 bounds];
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
  v2 = [(CNVisualIdentityItemEditorViewController *)self view];
  [v2 bounds];
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

- (double)fontSizeForContainerSize:(double)a3
{
  if ([(CNVisualIdentityItemEditorViewController *)self isEmojiProviderItemType])
  {
    return a3 * 0.631578947;
  }

  if (a3 == 240.0)
  {
    return 120.0;
  }

  result = 60.0;
  if (a3 == 200.0)
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
  v2 = [(CNVisualIdentityItemEditorViewController *)self view];
  [v2 bounds];
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

- (void)editableAvatarViewController:(id)a3 didUpdateWithProviderItem:(id)a4
{
  v9 = a4;
  if ([v9 conformsToProtocol:&unk_1F0DD51E0])
  {
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 itemText];
    [(CNVisualIdentityItemEditorViewController *)self updateDoneButtonEnabledStateForText:v8];
  }
}

- (void)providerItemDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(CNVisualIdentityItemEditorViewController *)self variantProviderItems];
  v6 = [v5 indexOfObject:v4];

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
  v3 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  [v3 conformsToProtocol:&unk_1F0DD51E0];

  v4 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  v5 = [(CNVisualIdentityItemEditorViewController *)self variantsManager];
  v6 = [v4 createVariantsItemsWithVariantsManager:v5];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__CNVisualIdentityItemEditorViewController_generateProviderItems__block_invoke;
  v8[3] = &unk_1E74E4560;
  v8[4] = self;
  [v6 _cn_each:v8];
  [(CNVisualIdentityItemEditorViewController *)self setVariantProviderItems:v6];
  v7 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
  [v7 reloadData];
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

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = [(CNVisualIdentityItemEditorViewController *)self view:a3];
  [v6 layoutMargins];
  v8 = v7;
  v9 = [(CNVisualIdentityItemEditorViewController *)self view];
  [v9 layoutMargins];
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CNVisualIdentityItemEditorViewController *)self variantProviderItems];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  [(CNVisualIdentityItemEditorViewController *)self setProviderItem:v8];

  objc_opt_class();
  v9 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v14 = v10;

  if (v14)
  {
    v11 = [v14 generateImageDataIfNeeded];
  }

  v12 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  v13 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  [v12 updateWithProviderItem:v13];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

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
    v13 = [(CNVisualIdentityItemEditorViewController *)self variantProviderItems];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(CNVisualIdentityItemEditorViewController *)self variantProviderItems:a3];
  v5 = [v4 count];

  return v5;
}

- (void)didTapSegmentedControl:(id)a3
{
  v4 = [a3 selectedSegmentIndex];
  if (v4 == 1)
  {
    v5 = [(CNVisualIdentityItemEditorViewController *)self updatedProviderItem];
    [(CNVisualIdentityItemEditorViewController *)self setProviderItem:v5];

    v6 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
    [v6 endEditing];

    [(CNVisualIdentityItemEditorViewController *)self setupStyleCollectionView];
  }

  else if (!v4)
  {
    [(CNVisualIdentityItemEditorViewController *)self beginEditingAvatar];

    [(CNVisualIdentityItemEditorViewController *)self hideStyleCollectionView];
  }
}

- (void)didTapDone
{
  v3 = [(CNVisualIdentityItemEditorViewController *)self delegate];

  if (v3)
  {
    v5 = [(CNVisualIdentityItemEditorViewController *)self updatedProviderItem];
    v4 = [(CNVisualIdentityItemEditorViewController *)self delegate];
    [v4 visualIdentityEditorController:self didFinishWithProviderItem:v5];
  }

  else
  {

    [(CNVisualIdentityItemEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didTapCancel
{
  v3 = [(CNVisualIdentityItemEditorViewController *)self delegate];

  if (v3)
  {
    v4 = [(CNVisualIdentityItemEditorViewController *)self delegate];
    [v4 visualIdentityEditorControllerDidCancel:self];
  }

  else
  {

    [(CNVisualIdentityItemEditorViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)isEmojiProviderItemType
{
  v2 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  v3 = [v2 imageType] == 4;

  return v3;
}

- (id)updatedProviderItem
{
  v3 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  if ([v3 conformsToProtocol:&unk_1F0DD51E0])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
    v7 = [v6 text];
    v8 = [v5 updatedProviderItemWithText:v7];
  }

  else
  {
    v6 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
    v8 = [v6 copy];
  }

  return v8;
}

- (int64_t)numberOfItemsPerRow
{
  v2 = [(CNVisualIdentityItemEditorViewController *)self view];
  [v2 bounds];
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
    v3 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
    v8 = [v3 collectionViewLayout];

    v4 = [(CNVisualIdentityItemEditorViewController *)self numberOfItemsPerRow];
    v5 = [(CNVisualIdentityItemEditorViewController *)self view];
    [v5 bounds];
    v7 = (v6 + (v4 + 1) * -20.0) / v4;

    [v8 setItemSize:{v7, v7}];
    [v8 invalidateLayout];
  }
}

- (BOOL)shouldShowStyleCollectionView
{
  v2 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  v3 = [v2 selectedSegmentIndex] == 1;

  return v3;
}

- (void)hideStyleCollectionView
{
  v3 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
  [v3 removeFromSuperview];

  v4 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
  [v4 removeFromSuperview];
}

- (void)setUpFirstResponderForProviderItem:(id)a3
{
  v6 = a3;
  if ([v6 conformsToProtocol:&unk_1F0DD51E0])
  {
    v4 = v6;
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

- (void)setupViewWithProviderItem:(id)a3
{
  v4 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  if ([v4 conformsToProtocol:&unk_1F0DD51E0])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v8 = v5;

  v6 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  if (v8)
  {
    [v6 setTextAndStyleMode];

    v6 = [v8 itemText];
    [(CNVisualIdentityItemEditorViewController *)self updateDoneButtonEnabledStateForText:v6];
  }

  else
  {
    [v6 setStyleOnlyMode];
  }

  v7 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  [(CNVisualIdentityItemEditorViewController *)self didTapSegmentedControl:v7];
}

- (void)setupStyleCollectionView
{
  v83[8] = *MEMORY[0x1E69E9840];
  if ([(CNVisualIdentityItemEditorViewController *)self shouldShowStyleCollectionView])
  {
    v3 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];

    if (!v3)
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

      v11 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

      v12 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      [v12 setDelegate:self];

      v13 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      [v13 setDataSource:self];

      v14 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      v15 = objc_opt_class();
      v16 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
      [v14 registerClass:v15 forCellWithReuseIdentifier:v16];

      v17 = [MEMORY[0x1E69DC888] clearColor];
      v18 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      [v18 setBackgroundColor:v17];

      v19 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      [v19 setAlwaysBounceVertical:1];

      v20 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
      [v20 setContentInsetAdjustmentBehavior:3];

      [(CNVisualIdentityItemEditorViewController *)self updateFlowLayoutItemSize];
      v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
      [(CNVisualIdentityItemEditorViewController *)self setStyleDividerView:v21];

      v22 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

      v23 = +[CNUIColorRepository visualIdentityEditorDividerColor];
      v24 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
      [v24 setBackgroundColor:v23];

      v25 = +[CNUIColorRepository photoPickerBackgroundShadowColor];
      v26 = [v25 CGColor];
      v27 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
      v28 = [v27 layer];
      [v28 setShadowColor:v26];

      v29 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
      v30 = [v29 layer];
      LODWORD(v31) = 1.0;
      [v30 setShadowOpacity:v31];

      v32 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
      v33 = [v32 layer];
      [v33 setShadowOffset:{0.0, 1.0}];

      v34 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
      v35 = [v34 layer];
      [v35 setShadowRadius:0.5];
    }

    v36 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v36 scale];
    v38 = v37;

    if (v38 <= 0.0)
    {
      v39 = 1.0;
    }

    else
    {
      v39 = 1.0 / v38;
    }

    v40 = [(CNVisualIdentityItemEditorViewController *)self view];
    v41 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
    [v40 addSubview:v41];

    v42 = [(CNVisualIdentityItemEditorViewController *)self view];
    v43 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
    [v42 addSubview:v43];

    v82 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
    v80 = [v82 topAnchor];
    v81 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
    v79 = [v81 bottomAnchor];
    [(CNVisualIdentityItemEditorViewController *)self styleContainerTopMargin];
    v78 = [v80 constraintEqualToAnchor:v79 constant:?];
    v83[0] = v78;
    v77 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
    v75 = [v77 leadingAnchor];
    v76 = [(CNVisualIdentityItemEditorViewController *)self view];
    v74 = [v76 leadingAnchor];
    v73 = [v75 constraintEqualToAnchor:v74];
    v83[1] = v73;
    v72 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
    v70 = [v72 trailingAnchor];
    v71 = [(CNVisualIdentityItemEditorViewController *)self view];
    v69 = [v71 trailingAnchor];
    v68 = [v70 constraintEqualToAnchor:v69];
    v83[2] = v68;
    v67 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
    v66 = [v67 heightAnchor];
    v65 = [v66 constraintEqualToConstant:v39];
    v83[3] = v65;
    v64 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
    v62 = [v64 topAnchor];
    v63 = [(CNVisualIdentityItemEditorViewController *)self styleDividerView];
    v61 = [v63 bottomAnchor];
    v59 = [v62 constraintEqualToAnchor:v61 constant:12.0];
    v83[4] = v59;
    v58 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
    v56 = [v58 leadingAnchor];
    v57 = [(CNVisualIdentityItemEditorViewController *)self view];
    v55 = [v57 leadingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v83[5] = v54;
    v53 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
    v44 = [v53 trailingAnchor];
    v45 = [(CNVisualIdentityItemEditorViewController *)self view];
    v46 = [v45 trailingAnchor];
    v47 = [v44 constraintEqualToAnchor:v46];
    v83[6] = v47;
    v48 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
    v49 = [v48 bottomAnchor];
    v50 = [(CNVisualIdentityItemEditorViewController *)self view];
    v51 = [v50 bottomAnchor];
    v52 = [v49 constraintEqualToAnchor:v51];
    v83[7] = v52;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:8];

    [MEMORY[0x1E696ACD8] activateConstraints:v60];
    [(CNVisualIdentityItemEditorViewController *)self generateProviderItems];
  }
}

- (void)setupSegmentedControl
{
  v41[5] = *MEMORY[0x1E69E9840];
  v3 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  if ([v3 conformsToProtocol:&unk_1F0DD51E0])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  v6 = +[CNVisualIdentityItemEditorSegmentedControl segmentedControlForItemType:](CNVisualIdentityItemEditorSegmentedControl, "segmentedControlForItemType:", [v5 imageType]);
  [(CNVisualIdentityItemEditorViewController *)self setSegmentedControl:v6];

  v7 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  v8 = v7;
  if (v4)
  {
    v9 = 30.0;
  }

  else
  {
    v9 = 0.0;
  }

  [v7 setHidden:v4 == 0];

  v10 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  [v10 addTarget:self action:sel_didTapSegmentedControl_ forControlEvents:4096];

  v11 = [(CNVisualIdentityItemEditorViewController *)self view];
  v12 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  [v11 addSubview:v12];

  v13 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  v14 = [v13 heightAnchor];
  v15 = [v14 constraintEqualToConstant:v9];
  [(CNVisualIdentityItemEditorViewController *)self setSegmentedControlHeightConstraint:v15];

  v40 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  v37 = [v40 topAnchor];
  v39 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  v38 = [v39 view];
  v36 = [v38 bottomAnchor];
  [(CNVisualIdentityItemEditorViewController *)self segmentedControlTopMargin];
  v35 = [v37 constraintEqualToAnchor:v36 constant:?];
  v41[0] = v35;
  v34 = [(CNVisualIdentityItemEditorViewController *)self segmentedControlHeightConstraint];
  v41[1] = v34;
  v33 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  v31 = [v33 centerXAnchor];
  v32 = [(CNVisualIdentityItemEditorViewController *)self view];
  v30 = [v32 centerXAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v41[2] = v29;
  v28 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  v25 = [v28 leadingAnchor];
  v26 = [(CNVisualIdentityItemEditorViewController *)self view];
  v16 = [v26 layoutMarginsGuide];
  v17 = [v16 leadingAnchor];
  v18 = [v25 constraintEqualToAnchor:v17];
  v41[3] = v18;
  v19 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  v20 = [v19 trailingAnchor];
  v21 = [(CNVisualIdentityItemEditorViewController *)self view];
  v22 = [v21 layoutMarginsGuide];
  v23 = [v22 trailingAnchor];
  v24 = [v20 constraintEqualToAnchor:v23];
  v41[4] = v24;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:5];

  [MEMORY[0x1E696ACD8] activateConstraints:v27];
  [(CNVisualIdentityItemEditorViewController *)self setupStyleCollectionView];
}

- (void)switchEditorToMode:(unint64_t)a3
{
  v5 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  [v5 setSelectedSegmentIndex:a3];

  v6 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  [(CNVisualIdentityItemEditorViewController *)self didTapSegmentedControl:v6];
}

- (BOOL)shouldBeginEditing
{
  if ([(CNVisualIdentityItemEditorViewController *)self canBeginEditing])
  {
    v3 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
    v4 = [v3 allowsTextInputForCurrentEditorType];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CNVisualIdentityItemEditorViewController *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    v7 = [(CNVisualIdentityItemEditorViewController *)self navigationController];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v9 isDisplayingTrapView];
    return v10 ^ 1;
  }

  return v4;
}

- (void)beginEditingAvatar
{
  if ([(CNVisualIdentityItemEditorViewController *)self shouldBeginEditing])
  {
    v3 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
    [v3 beginEditing];
  }
}

- (void)forceEmojiKeyboardIfNeeded
{
  v3 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v4 = [v3 currentInputMode];
  v6 = [v4 normalizedIdentifier];

  if (([v6 isEqualToString:*MEMORY[0x1E69DDFB8]] & 1) == 0)
  {
    v5 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
    [v5 endEditing];
  }

  [(CNVisualIdentityItemEditorViewController *)self beginEditingAvatar];
}

- (void)didTapEditableAvatar:(id)a3
{
  v4 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
  v5 = [v4 selectedSegmentIndex];

  if (v5 == 1)
  {
    v6 = [(CNVisualIdentityItemEditorViewController *)self segmentedControl];
    v7 = [v6 isEnabledForSegmentAtIndex:0];

    if (v7)
    {

      [(CNVisualIdentityItemEditorViewController *)self switchEditorToMode:0];
    }
  }

  else if (!v5)
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
  v4 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  v5 = [(CNVisualIdentityItemEditorViewController *)self variantsManager];
  v6 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)v3 initWithProviderItem:v4 variantsManager:v5];
  [(CNVisualIdentityItemEditorViewController *)self setEditableAvatarViewController:v6];

  v7 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  [v7 setDelegate:self];

  [(CNVisualIdentityItemEditorViewController *)self textFieldFontSize];
  v9 = v8;
  v10 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  [v10 setDesiredFontSize:v9];

  v11 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  v12 = [v11 view];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  [(CNVisualIdentityItemEditorViewController *)self addChildViewController:v13];

  v14 = [(CNVisualIdentityItemEditorViewController *)self view];
  v15 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  v16 = [v15 view];
  [v14 addSubview:v16];

  v17 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  [v17 didMoveToParentViewController:self];

  v18 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  v19 = [v18 view];
  v20 = [v19 widthAnchor];
  [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewEdgeLength];
  v21 = [v20 constraintEqualToConstant:?];
  [(CNVisualIdentityItemEditorViewController *)self setAvatarViewSizeConstraint:v21];

  v22 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  v23 = [v22 view];
  v24 = [v23 topAnchor];
  v25 = [(CNVisualIdentityItemEditorViewController *)self view];
  v26 = [v25 topAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:100.0];
  [(CNVisualIdentityItemEditorViewController *)self setAvatarViewTopConstraint:v27];

  v46 = [(CNVisualIdentityItemEditorViewController *)self avatarViewSizeConstraint];
  v47[0] = v46;
  v45 = [(CNVisualIdentityItemEditorViewController *)self avatarViewTopConstraint];
  v47[1] = v45;
  v44 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  v43 = [v44 view];
  v41 = [v43 heightAnchor];
  v42 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  v28 = [v42 view];
  v29 = [v28 widthAnchor];
  v30 = [v41 constraintEqualToAnchor:v29];
  v47[2] = v30;
  v31 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  v32 = [v31 view];
  v33 = [v32 centerXAnchor];
  v34 = [(CNVisualIdentityItemEditorViewController *)self view];
  v35 = [v34 centerXAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  v47[3] = v36;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v40];
  v37 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapEditableAvatar_];
  v38 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
  v39 = [v38 view];
  [v39 addGestureRecognizer:v37];
}

- (void)updateDoneButtonEnabledStateForText:(id)a3
{
  v4 = *MEMORY[0x1E6996570];
  v8 = [a3 _cn_trimmedString];
  v5 = (*(v4 + 16))(v4, v8);
  v6 = [(CNVisualIdentityItemEditorViewController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:v5];
}

- (void)setupBarButtonItems
{
  if ([(CNVisualIdentityItemEditorViewController *)self canCancel])
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_didTapCancel];
    v4 = [(CNVisualIdentityItemEditorViewController *)self navigationItem];
    [v4 setLeftBarButtonItem:v3];
  }

  v5 = *MEMORY[0x1E6996570];
  v6 = [(CNVisualIdentityItemEditorViewController *)self doneButtonTitle];
  LODWORD(v5) = (*(v5 + 16))(v5, v6);

  v7 = objc_alloc(MEMORY[0x1E69DC708]);
  v8 = v7;
  if (v5)
  {
    v9 = [(CNVisualIdentityItemEditorViewController *)self doneButtonTitle];
    v10 = [v8 initWithTitle:v9 style:2 target:self action:sel_didTapDone];
    v11 = [(CNVisualIdentityItemEditorViewController *)self navigationItem];
    [v11 setRightBarButtonItem:v10];
  }

  else
  {
    v9 = [v7 initWithBarButtonSystemItem:0 target:self action:sel_didTapDone];
    v10 = [(CNVisualIdentityItemEditorViewController *)self navigationItem];
    [v10 setRightBarButtonItem:v9];
  }

  v12 = [(CNVisualIdentityItemEditorViewController *)self navigationItem];
  [v12 _setBackgroundHidden:1];

  v13 = [(CNVisualIdentityItemEditorViewController *)self navigationController];
  v14 = [v13 navigationBar];
  v15 = [v14 isTranslucent];

  if ((v15 & 1) == 0)
  {

    [(CNVisualIdentityItemEditorViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = CNVisualIdentityItemEditorViewController;
  [(CNVisualIdentityItemEditorViewController *)&v7 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(CNVisualIdentityItemEditorViewController *)self styleCollectionView];
  v6 = [v5 collectionViewLayout];
  [v6 invalidateLayout];
}

- (BOOL)editorViewOverlapsWindowBasedKeyboardRect:(CGRect)a3
{
  y = a3.origin.y;
  v5 = [(CNVisualIdentityItemEditorViewController *)self avatarViewSizeConstraint:a3.origin.x];
  [v5 constant];
  v7 = v6;
  v8 = [(CNVisualIdentityItemEditorViewController *)self avatarViewTopConstraint];
  [v8 constant];
  [(CNVisualIdentityItemEditorViewController *)self editorViewBottomYForAvatarSize:v7 withContainerTopMargin:v9];
  v11 = v10;

  return v11 > y;
}

- (double)editorViewBottomYForAvatarSize:(double)a3 withContainerTopMargin:(double)a4
{
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 bounds];
  v9 = v8;
  v10 = [(CNVisualIdentityItemEditorViewController *)self view];
  [v10 bounds];
  v12 = v9 - v11;

  v13 = 30.0;
  if (a3 <= 200.0)
  {
    v13 = 20.0;
  }

  v14 = v13 + v12 + a4 + a3;
  v15 = [(CNVisualIdentityItemEditorViewController *)self segmentedControlHeightConstraint];
  [v15 constant];
  v17 = v16 + v14;

  return v17;
}

- (void)adjustAvatarViewConstraintsForKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CNVisualIdentityItemEditorViewController *)self view];
  v9 = [v8 window];
  [v9 convertRect:0 fromWindow:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if ([(CNVisualIdentityItemEditorViewController *)self editorViewOverlapsWindowBasedKeyboardRect:v11, v13, v15, v17])
  {
    v18 = [(CNVisualIdentityItemEditorViewController *)self avatarViewSizeConstraint];
    [v18 setConstant:200.0];

    v19 = [(CNVisualIdentityItemEditorViewController *)self avatarViewTopConstraint];
    [v19 setConstant:64.0];

    if ([(CNVisualIdentityItemEditorViewController *)self editorViewOverlapsWindowBasedKeyboardRect:v11, v13, v15, v17])
    {
      if ([(CNVisualIdentityItemEditorViewController *)self isEmojiProviderItemType])
      {
        v20 = [(CNVisualIdentityItemEditorViewController *)self avatarViewTopConstraint];
        [v20 setConstant:32.0];
      }

      if ([(CNVisualIdentityItemEditorViewController *)self editorViewOverlapsWindowBasedKeyboardRect:v11, v13, v15, v17])
      {
        v21 = [(CNVisualIdentityItemEditorViewController *)self avatarViewSizeConstraint];
        [v21 setConstant:120.0];

        v22 = [(CNVisualIdentityItemEditorViewController *)self avatarViewTopConstraint];
        [v22 setConstant:42.0];

        if ([(CNVisualIdentityItemEditorViewController *)self editorViewOverlapsWindowBasedKeyboardRect:v11, v13, v15, v17])
        {
          if ([(CNVisualIdentityItemEditorViewController *)self isEmojiProviderItemType])
          {
            v23 = [(CNVisualIdentityItemEditorViewController *)self avatarViewTopConstraint];
            [v23 setConstant:24.0];
          }
        }
      }
    }

    v25 = [(CNVisualIdentityItemEditorViewController *)self editableAvatarViewController];
    v24 = [(CNVisualIdentityItemEditorViewController *)self avatarViewSizeConstraint];
    [v24 constant];
    [(CNVisualIdentityItemEditorViewController *)self fontSizeForContainerSize:?];
    [v25 updateTextFieldFontSize:?];
  }
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
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

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNVisualIdentityItemEditorViewController;
  [(CNVisualIdentityItemEditorViewController *)&v5 viewDidAppear:a3];
  [(CNVisualIdentityItemEditorViewController *)self setCanBeginEditing:1];
  v4 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  [(CNVisualIdentityItemEditorViewController *)self setUpFirstResponderForProviderItem:v4];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CNVisualIdentityItemEditorViewController;
  [(CNVisualIdentityItemEditorViewController *)&v7 viewDidLoad];
  [(CNVisualIdentityItemEditorViewController *)self setupBarButtonItems];
  [(CNVisualIdentityItemEditorViewController *)self setupEditableAvatarViewController];
  [(CNVisualIdentityItemEditorViewController *)self setupSegmentedControl];
  v3 = [(CNVisualIdentityItemEditorViewController *)self providerItem];
  [(CNVisualIdentityItemEditorViewController *)self setupViewWithProviderItem:v3];

  v4 = +[CNUIColorRepository visualIdentityEditorBackgroundColor];
  v5 = [(CNVisualIdentityItemEditorViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
}

- (CNVisualIdentityItemEditorViewController)initWithProviderItem:(id)a3 variantsManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNVisualIdentityItemEditorViewController;
  v9 = [(CNVisualIdentityItemEditorViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_providerItem, a3);
    objc_storeStrong(&v10->_variantsManager, a4);
    v10->_canCancel = 1;
    v11 = v10;
  }

  return v10;
}

@end