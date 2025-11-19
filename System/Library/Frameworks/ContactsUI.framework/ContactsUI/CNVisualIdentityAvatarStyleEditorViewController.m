@interface CNVisualIdentityAvatarStyleEditorViewController
- (BOOL)editableAvatarViewControllerShouldBecomeFirstResponder:(id)a3;
- (BOOL)isEmojiProviderItemType;
- (BOOL)shouldBeginEditing;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CNVisualIdentityAvatarStyleEditorViewController)initWithProviderItem:(id)a3 variantsManager:(id)a4;
- (CNVisualIdentityAvatarStyleEditorViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)calculateSectionSideInset;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)updatedProviderItem;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)beginEditingAvatar;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didTapEditableAvatar:(id)a3;
- (void)dismissEmojiKeyboardIfNeeded;
- (void)dismissTextKeyboardIfNeeded;
- (void)editableAvatarViewController:(id)a3 didUpdateWithProviderItem:(id)a4;
- (void)generateProviderItems;
- (void)setupEditableAvatarViewController;
- (void)setupStyleCollectionView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CNVisualIdentityAvatarStyleEditorViewController

- (CNVisualIdentityAvatarStyleEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)editableAvatarViewControllerShouldBecomeFirstResponder:(id)a3
{
  v4 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  v5 = [v4 window];
  if (v5)
  {
    v6 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
    v7 = ([v6 isHidden] & 1) == 0 && -[CNVisualIdentityAvatarStyleEditorViewController shouldBeginEditing](self, "shouldBeginEditing");
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)editableAvatarViewController:(id)a3 didUpdateWithProviderItem:(id)a4
{
  v10 = a4;
  if ([v10 conformsToProtocol:&unk_1F0DD51E0])
  {
    v5 = v10;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [v10 copy];
    providerItem = self->_providerItem;
    self->_providerItem = v7;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained avatarStyleEditor:self didUpdateItem:self->_providerItem];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v16 = self->_providerItem;
  v6 = a4;
  v7 = [(CNVisualIdentityAvatarStyleEditorViewController *)self variantProviderItems];
  v8 = [v6 row];

  v9 = [v7 objectAtIndexedSubscript:v8];
  v10 = [v9 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(CNPhotoPickerProviderItem *)v16 monogramText];
      [(CNPhotoPickerProviderItem *)v10 setMonogramText:v11];
LABEL_7:

      goto LABEL_8;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(CNPhotoPickerProviderItem *)v16 stringRepresentation];
      v12 = [(CNPhotoPickerProviderItem *)v10 copyWithStringRepresentation:v11];

      v10 = v12;
      goto LABEL_7;
    }
  }

LABEL_8:
  providerItem = self->_providerItem;
  self->_providerItem = v10;

  v14 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  v15 = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
  [v14 updateWithProviderItem:v15];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  if (a5)
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"PHOTO_TEXT_STYLE_EDITOR_STYLE_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
    [CNVisualIdentityAvatarStyleSectionHeaderView sizeWithText:v8];
    v5 = v9;
    v6 = v10;
  }

  v11 = v5;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
  v10 = +[CNVisualIdentityAvatarStyleSectionHeaderView reuseID];
  v11 = [v9 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v10 forIndexPath:v7];

  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"PHOTO_TEXT_STYLE_EDITOR_STYLE_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  v14 = [v11 label];
  [v14 setText:v13];

  [(CNVisualIdentityAvatarStyleEditorViewController *)self calculateSectionSideInset];
  [v11 setDirectionalLayoutMargins:{0.0, v15 + 24.0, 0.0, 0.0}];

  return v11;
}

- (double)calculateSectionSideInset
{
  v3 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
  v4 = [v3 collectionViewLayout];

  [v4 setItemSize:{86.0, 86.0}];
  [v4 itemSize];
  v6 = v5 * 4.0 + 48.0;
  v7 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
  [v7 frame];
  v9 = (v8 - v6) * 0.5;

  return v9;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [(CNVisualIdentityAvatarStyleEditorViewController *)self calculateSectionSideInset:a3];
  v6 = v5;
  v7 = 12.0;
  v8 = 24.0;
  v9 = v6;
  result.right = v9;
  result.bottom = v8;
  result.left = v6;
  result.top = v7;
  return result;
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
    v13 = [(CNVisualIdentityAvatarStyleEditorViewController *)self variantProviderItems];
    v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __89__CNVisualIdentityAvatarStyleEditorViewController_collectionView_cellForItemAtIndexPath___block_invoke;
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = 86.0;
  v6 = 86.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(CNVisualIdentityAvatarStyleEditorViewController *)self variantProviderItems:a3];
  v5 = [v4 count];

  return v5;
}

- (BOOL)isEmojiProviderItemType
{
  v2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
  v3 = [v2 imageType] == 4;

  return v3;
}

- (BOOL)shouldBeginEditing
{
  v3 = [(CNVisualIdentityAvatarStyleEditorViewController *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  objc_opt_class();
  v5 = [(CNVisualIdentityAvatarStyleEditorViewController *)self navigationController];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 isDisplayingTrapView];
  return v8 ^ 1;
}

- (void)beginEditingAvatar
{
  if ([(CNVisualIdentityAvatarStyleEditorViewController *)self shouldBeginEditing])
  {
    v3 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
    [v3 beginEditing];
  }
}

- (void)dismissEmojiKeyboardIfNeeded
{
  v3 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v4 = [v3 currentInputMode];
  v6 = [v4 normalizedIdentifier];

  if ([v6 isEqualToString:*MEMORY[0x1E69DDFB8]])
  {
    v5 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
    [v5 endEditing];
  }
}

- (void)dismissTextKeyboardIfNeeded
{
  v3 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v4 = [v3 currentInputMode];
  v6 = [v4 normalizedIdentifier];

  if (([v6 isEqualToString:*MEMORY[0x1E69DDFB8]] & 1) == 0)
  {
    v5 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
    [v5 endEditing];
  }
}

- (void)didTapEditableAvatar:(id)a3
{
  if ([(CNVisualIdentityAvatarStyleEditorViewController *)self isEmojiProviderItemType])
  {
    [(CNVisualIdentityAvatarStyleEditorViewController *)self dismissTextKeyboardIfNeeded];
  }

  else
  {
    [(CNVisualIdentityAvatarStyleEditorViewController *)self dismissEmojiKeyboardIfNeeded];
  }

  [(CNVisualIdentityAvatarStyleEditorViewController *)self beginEditingAvatar];
}

- (id)updatedProviderItem
{
  v3 = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
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
    v6 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
    v7 = [v6 text];
    v8 = [v5 updatedProviderItemWithText:v7];
  }

  else
  {
    v6 = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
    v8 = [v6 copy];
  }

  return v8;
}

- (void)generateProviderItems
{
  v3 = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
  [v3 conformsToProtocol:&unk_1F0DD51E0];

  v9 = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v9 copy];
    [v4 setMonogramText:&stru_1F0CE7398];
    v5 = [v4 visualIdentity];
    [v5 setAbbreviatedName:@" "];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = [v9 copyWithStringRepresentation:&stru_1F0CE7398];
  }

  v9 = v4;
LABEL_6:
  v6 = [(CNVisualIdentityAvatarStyleEditorViewController *)self variantsManager];
  v7 = [v9 createVariantsItemsWithVariantsManager:v6];

  [(CNVisualIdentityAvatarStyleEditorViewController *)self setVariantProviderItems:v7];
  v8 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
  [v8 reloadData];
}

- (void)setupStyleCollectionView
{
  v46[4] = *MEMORY[0x1E69E9840];
  v3 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC840]);
    [v4 setMinimumLineSpacing:16.0];
    v45 = v4;
    [v4 setScrollDirection:0];
    v5 = objc_alloc(MEMORY[0x1E69DC7F0]);
    v6 = [v5 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CNVisualIdentityAvatarStyleEditorViewController *)self setStyleCollectionView:v6];

    v7 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [v8 setDelegate:self];

    v9 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [v9 setDataSource:self];

    v10 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    v11 = objc_opt_class();
    v12 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
    [v10 registerClass:v11 forCellWithReuseIdentifier:v12];

    v13 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    v14 = objc_opt_class();
    v15 = *MEMORY[0x1E69DDC08];
    v16 = +[CNVisualIdentityAvatarStyleSectionHeaderView reuseID];
    [v13 registerClass:v14 forSupplementaryViewOfKind:v15 withReuseIdentifier:v16];

    v17 = [MEMORY[0x1E69DC888] clearColor];
    v18 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [v18 setBackgroundColor:v17];

    v19 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [v19 setAlwaysBounceVertical:1];

    v20 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [v20 setContentInsetAdjustmentBehavior:2];

    v21 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
    v22 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [v21 addSubview:v22];

    v44 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    v42 = [v44 topAnchor];
    v43 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
    v41 = [v43 view];
    v40 = [v41 bottomAnchor];
    v39 = [v42 constraintEqualToAnchor:v40 constant:24.0];
    v46[0] = v39;
    v38 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    v36 = [v38 leadingAnchor];
    v37 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
    v35 = [v37 leadingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:20.0];
    v46[1] = v34;
    v33 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    v23 = [v33 trailingAnchor];
    v24 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
    v25 = [v24 trailingAnchor];
    v26 = [v23 constraintEqualToAnchor:v25 constant:-20.0];
    v46[2] = v26;
    v27 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    v28 = [v27 bottomAnchor];
    v29 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
    v30 = [v29 bottomAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    v46[3] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v32];
    [(CNVisualIdentityAvatarStyleEditorViewController *)self generateProviderItems];
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  [v3 frame];
  v5 = v4;
  v6 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  [v6 frame];
  v8 = v5 + v7;

  v9 = [(CNVisualIdentityAvatarStyleEditorViewController *)self avatarViewSizeConstraint];
  v10 = v9;
  v11 = 240.0;
  if (v8 < 490.0)
  {
    v11 = 200.0;
  }

  v12 = dbl_199E43DC0[v8 < 490.0];
  [v9 setConstant:v11];

  v13 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  [v13 setDesiredFontSize:v12];

  v14 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  [v14 updateTextFieldFontSize:v12];

  v15 = [(CNVisualIdentityAvatarStyleEditorViewController *)self avatarViewSizeConstraint];
  [v15 setActive:1];

  v16.receiver = self;
  v16.super_class = CNVisualIdentityAvatarStyleEditorViewController;
  [(CNVisualIdentityAvatarStyleEditorViewController *)&v16 viewDidLayoutSubviews];
}

- (void)setupEditableAvatarViewController
{
  v46[4] = *MEMORY[0x1E69E9840];
  v3 = [CNVisualIdentityEditablePrimaryAvatarViewController alloc];
  v4 = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
  v5 = [(CNVisualIdentityAvatarStyleEditorViewController *)self variantsManager];
  v6 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)v3 initWithProviderItem:v4 variantsManager:v5];
  editableAvatarViewController = self->_editableAvatarViewController;
  self->_editableAvatarViewController = v6;

  v8 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  [v8 setDelegate:self];

  v9 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  [v9 setDesiredFontSize:110.0];

  v10 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  v11 = [v10 view];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  [(CNVisualIdentityAvatarStyleEditorViewController *)self addChildViewController:v12];

  v13 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  v14 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  v15 = [v14 view];
  [v13 addSubview:v15];

  v16 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  [v16 didMoveToParentViewController:self];

  v17 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  v18 = [v17 view];
  v19 = [v18 widthAnchor];
  v20 = [v19 constraintEqualToConstant:240.0];
  [(CNVisualIdentityAvatarStyleEditorViewController *)self setAvatarViewSizeConstraint:v20];

  v21 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  v22 = [v21 view];
  v23 = [v22 topAnchor];
  v24 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  v25 = [v24 topAnchor];
  v26 = [v23 constraintEqualToAnchor:v25 constant:24.0];
  [(CNVisualIdentityAvatarStyleEditorViewController *)self setAvatarViewTopConstraint:v26];

  v45 = [(CNVisualIdentityAvatarStyleEditorViewController *)self avatarViewSizeConstraint];
  v46[0] = v45;
  v44 = [(CNVisualIdentityAvatarStyleEditorViewController *)self avatarViewTopConstraint];
  v46[1] = v44;
  v43 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  v42 = [v43 view];
  v40 = [v42 heightAnchor];
  v41 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  v27 = [v41 view];
  v28 = [v27 widthAnchor];
  v29 = [v40 constraintEqualToAnchor:v28];
  v46[2] = v29;
  v30 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  v31 = [v30 view];
  v32 = [v31 centerXAnchor];
  v33 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  v34 = [v33 centerXAnchor];
  v35 = [v32 constraintEqualToAnchor:v34];
  v46[3] = v35;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v39];
  v36 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapEditableAvatar_];
  v37 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  v38 = [v37 view];
  [v38 addGestureRecognizer:v36];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CNVisualIdentityAvatarStyleEditorViewController;
  [(CNVisualIdentityAvatarStyleEditorViewController *)&v5 viewDidLoad];
  [(CNVisualIdentityAvatarStyleEditorViewController *)self setupEditableAvatarViewController];
  [(CNVisualIdentityAvatarStyleEditorViewController *)self setupStyleCollectionView];
  v3 = +[CNUIColorRepository visualIdentityEditorBackgroundColor];
  v4 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (CNVisualIdentityAvatarStyleEditorViewController)initWithProviderItem:(id)a3 variantsManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNVisualIdentityAvatarStyleEditorViewController;
  v9 = [(CNVisualIdentityAvatarStyleEditorViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_providerItem, a3);
    objc_storeStrong(&v10->_variantsManager, a4);
    v11 = v10;
  }

  return v10;
}

@end