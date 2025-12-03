@interface CNVisualIdentityAvatarStyleEditorViewController
- (BOOL)editableAvatarViewControllerShouldBecomeFirstResponder:(id)responder;
- (BOOL)isEmojiProviderItemType;
- (BOOL)shouldBeginEditing;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CNVisualIdentityAvatarStyleEditorViewController)initWithProviderItem:(id)item variantsManager:(id)manager;
- (CNVisualIdentityAvatarStyleEditorViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)calculateSectionSideInset;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)updatedProviderItem;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)beginEditingAvatar;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didTapEditableAvatar:(id)avatar;
- (void)dismissEmojiKeyboardIfNeeded;
- (void)dismissTextKeyboardIfNeeded;
- (void)editableAvatarViewController:(id)controller didUpdateWithProviderItem:(id)item;
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

- (BOOL)editableAvatarViewControllerShouldBecomeFirstResponder:(id)responder
{
  view = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  window = [view window];
  if (window)
  {
    view2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
    v7 = ([view2 isHidden] & 1) == 0 && -[CNVisualIdentityAvatarStyleEditorViewController shouldBeginEditing](self, "shouldBeginEditing");
  }

  else
  {
    v7 = 0;
  }

  return v7;
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
  if (v6)
  {
    v7 = [itemCopy copy];
    providerItem = self->_providerItem;
    self->_providerItem = v7;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained avatarStyleEditor:self didUpdateItem:self->_providerItem];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v16 = self->_providerItem;
  pathCopy = path;
  variantProviderItems = [(CNVisualIdentityAvatarStyleEditorViewController *)self variantProviderItems];
  v8 = [pathCopy row];

  v9 = [variantProviderItems objectAtIndexedSubscript:v8];
  v10 = [v9 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      monogramText = [(CNPhotoPickerProviderItem *)v16 monogramText];
      [(CNPhotoPickerProviderItem *)v10 setMonogramText:monogramText];
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
      monogramText = [(CNPhotoPickerProviderItem *)v16 stringRepresentation];
      v12 = [(CNPhotoPickerProviderItem *)v10 copyWithStringRepresentation:monogramText];

      v10 = v12;
      goto LABEL_7;
    }
  }

LABEL_8:
  providerItem = self->_providerItem;
  self->_providerItem = v10;

  editableAvatarViewController = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  providerItem = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
  [editableAvatarViewController updateWithProviderItem:providerItem];
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  if (section)
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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  styleCollectionView = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
  v10 = +[CNVisualIdentityAvatarStyleSectionHeaderView reuseID];
  v11 = [styleCollectionView dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v10 forIndexPath:pathCopy];

  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"PHOTO_TEXT_STYLE_EDITOR_STYLE_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  label = [v11 label];
  [label setText:v13];

  [(CNVisualIdentityAvatarStyleEditorViewController *)self calculateSectionSideInset];
  [v11 setDirectionalLayoutMargins:{0.0, v15 + 24.0, 0.0, 0.0}];

  return v11;
}

- (double)calculateSectionSideInset
{
  styleCollectionView = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
  collectionViewLayout = [styleCollectionView collectionViewLayout];

  [collectionViewLayout setItemSize:{86.0, 86.0}];
  [collectionViewLayout itemSize];
  v6 = v5 * 4.0 + 48.0;
  styleCollectionView2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
  [styleCollectionView2 frame];
  v9 = (v8 - v6) * 0.5;

  return v9;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [(CNVisualIdentityAvatarStyleEditorViewController *)self calculateSectionSideInset:view];
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
    variantProviderItems = [(CNVisualIdentityAvatarStyleEditorViewController *)self variantProviderItems];
    v14 = [variantProviderItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

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

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v5 = 86.0;
  v6 = 86.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(CNVisualIdentityAvatarStyleEditorViewController *)self variantProviderItems:view];
  v5 = [v4 count];

  return v5;
}

- (BOOL)isEmojiProviderItemType
{
  providerItem = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
  v3 = [providerItem imageType] == 4;

  return v3;
}

- (BOOL)shouldBeginEditing
{
  navigationController = [(CNVisualIdentityAvatarStyleEditorViewController *)self navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  objc_opt_class();
  navigationController2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self navigationController];
  if (objc_opt_isKindOfClass())
  {
    v6 = navigationController2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  isDisplayingTrapView = [v7 isDisplayingTrapView];
  return isDisplayingTrapView ^ 1;
}

- (void)beginEditingAvatar
{
  if ([(CNVisualIdentityAvatarStyleEditorViewController *)self shouldBeginEditing])
  {
    editableAvatarViewController = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
    [editableAvatarViewController beginEditing];
  }
}

- (void)dismissEmojiKeyboardIfNeeded
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
  normalizedIdentifier = [currentInputMode normalizedIdentifier];

  if ([normalizedIdentifier isEqualToString:*MEMORY[0x1E69DDFB8]])
  {
    editableAvatarViewController = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
    [editableAvatarViewController endEditing];
  }
}

- (void)dismissTextKeyboardIfNeeded
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
  normalizedIdentifier = [currentInputMode normalizedIdentifier];

  if (([normalizedIdentifier isEqualToString:*MEMORY[0x1E69DDFB8]] & 1) == 0)
  {
    editableAvatarViewController = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
    [editableAvatarViewController endEditing];
  }
}

- (void)didTapEditableAvatar:(id)avatar
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
  providerItem = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
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
    editableAvatarViewController = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
    text = [editableAvatarViewController text];
    v8 = [v5 updatedProviderItemWithText:text];
  }

  else
  {
    editableAvatarViewController = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
    v8 = [editableAvatarViewController copy];
  }

  return v8;
}

- (void)generateProviderItems
{
  providerItem = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
  [providerItem conformsToProtocol:&unk_1F0DD51E0];

  providerItem2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [providerItem2 copy];
    [v4 setMonogramText:&stru_1F0CE7398];
    visualIdentity = [v4 visualIdentity];
    [visualIdentity setAbbreviatedName:@" "];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = [providerItem2 copyWithStringRepresentation:&stru_1F0CE7398];
  }

  providerItem2 = v4;
LABEL_6:
  variantsManager = [(CNVisualIdentityAvatarStyleEditorViewController *)self variantsManager];
  v7 = [providerItem2 createVariantsItemsWithVariantsManager:variantsManager];

  [(CNVisualIdentityAvatarStyleEditorViewController *)self setVariantProviderItems:v7];
  styleCollectionView = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
  [styleCollectionView reloadData];
}

- (void)setupStyleCollectionView
{
  v46[4] = *MEMORY[0x1E69E9840];
  styleCollectionView = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];

  if (!styleCollectionView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DC840]);
    [v4 setMinimumLineSpacing:16.0];
    v45 = v4;
    [v4 setScrollDirection:0];
    v5 = objc_alloc(MEMORY[0x1E69DC7F0]);
    v6 = [v5 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CNVisualIdentityAvatarStyleEditorViewController *)self setStyleCollectionView:v6];

    styleCollectionView2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [styleCollectionView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    styleCollectionView3 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [styleCollectionView3 setDelegate:self];

    styleCollectionView4 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [styleCollectionView4 setDataSource:self];

    styleCollectionView5 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    v11 = objc_opt_class();
    v12 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
    [styleCollectionView5 registerClass:v11 forCellWithReuseIdentifier:v12];

    styleCollectionView6 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    v14 = objc_opt_class();
    v15 = *MEMORY[0x1E69DDC08];
    v16 = +[CNVisualIdentityAvatarStyleSectionHeaderView reuseID];
    [styleCollectionView6 registerClass:v14 forSupplementaryViewOfKind:v15 withReuseIdentifier:v16];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    styleCollectionView7 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [styleCollectionView7 setBackgroundColor:clearColor];

    styleCollectionView8 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [styleCollectionView8 setAlwaysBounceVertical:1];

    styleCollectionView9 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [styleCollectionView9 setContentInsetAdjustmentBehavior:2];

    view = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
    styleCollectionView10 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    [view addSubview:styleCollectionView10];

    styleCollectionView11 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    topAnchor = [styleCollectionView11 topAnchor];
    editableAvatarViewController = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
    view2 = [editableAvatarViewController view];
    bottomAnchor = [view2 bottomAnchor];
    v39 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:24.0];
    v46[0] = v39;
    styleCollectionView12 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    leadingAnchor = [styleCollectionView12 leadingAnchor];
    view3 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
    leadingAnchor2 = [view3 leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v46[1] = v34;
    styleCollectionView13 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    trailingAnchor = [styleCollectionView13 trailingAnchor];
    view4 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
    trailingAnchor2 = [view4 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v46[2] = v26;
    styleCollectionView14 = [(CNVisualIdentityAvatarStyleEditorViewController *)self styleCollectionView];
    bottomAnchor2 = [styleCollectionView14 bottomAnchor];
    view5 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
    bottomAnchor3 = [view5 bottomAnchor];
    v31 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v46[3] = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v32];
    [(CNVisualIdentityAvatarStyleEditorViewController *)self generateProviderItems];
  }
}

- (void)viewDidLayoutSubviews
{
  view = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  [view frame];
  v5 = v4;
  view2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  [view2 frame];
  v8 = v5 + v7;

  avatarViewSizeConstraint = [(CNVisualIdentityAvatarStyleEditorViewController *)self avatarViewSizeConstraint];
  v10 = avatarViewSizeConstraint;
  v11 = 240.0;
  if (v8 < 490.0)
  {
    v11 = 200.0;
  }

  v12 = dbl_199E43DC0[v8 < 490.0];
  [avatarViewSizeConstraint setConstant:v11];

  editableAvatarViewController = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  [editableAvatarViewController setDesiredFontSize:v12];

  editableAvatarViewController2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  [editableAvatarViewController2 updateTextFieldFontSize:v12];

  avatarViewSizeConstraint2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self avatarViewSizeConstraint];
  [avatarViewSizeConstraint2 setActive:1];

  v16.receiver = self;
  v16.super_class = CNVisualIdentityAvatarStyleEditorViewController;
  [(CNVisualIdentityAvatarStyleEditorViewController *)&v16 viewDidLayoutSubviews];
}

- (void)setupEditableAvatarViewController
{
  v46[4] = *MEMORY[0x1E69E9840];
  v3 = [CNVisualIdentityEditablePrimaryAvatarViewController alloc];
  providerItem = [(CNVisualIdentityAvatarStyleEditorViewController *)self providerItem];
  variantsManager = [(CNVisualIdentityAvatarStyleEditorViewController *)self variantsManager];
  v6 = [(CNVisualIdentityEditablePrimaryAvatarViewController *)v3 initWithProviderItem:providerItem variantsManager:variantsManager];
  editableAvatarViewController = self->_editableAvatarViewController;
  self->_editableAvatarViewController = v6;

  editableAvatarViewController = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  [editableAvatarViewController setDelegate:self];

  editableAvatarViewController2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  [editableAvatarViewController2 setDesiredFontSize:110.0];

  editableAvatarViewController3 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  view = [editableAvatarViewController3 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  editableAvatarViewController4 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  [(CNVisualIdentityAvatarStyleEditorViewController *)self addChildViewController:editableAvatarViewController4];

  view2 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  editableAvatarViewController5 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  view3 = [editableAvatarViewController5 view];
  [view2 addSubview:view3];

  editableAvatarViewController6 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  [editableAvatarViewController6 didMoveToParentViewController:self];

  editableAvatarViewController7 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  view4 = [editableAvatarViewController7 view];
  widthAnchor = [view4 widthAnchor];
  v20 = [widthAnchor constraintEqualToConstant:240.0];
  [(CNVisualIdentityAvatarStyleEditorViewController *)self setAvatarViewSizeConstraint:v20];

  editableAvatarViewController8 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  view5 = [editableAvatarViewController8 view];
  topAnchor = [view5 topAnchor];
  view6 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:24.0];
  [(CNVisualIdentityAvatarStyleEditorViewController *)self setAvatarViewTopConstraint:v26];

  avatarViewSizeConstraint = [(CNVisualIdentityAvatarStyleEditorViewController *)self avatarViewSizeConstraint];
  v46[0] = avatarViewSizeConstraint;
  avatarViewTopConstraint = [(CNVisualIdentityAvatarStyleEditorViewController *)self avatarViewTopConstraint];
  v46[1] = avatarViewTopConstraint;
  editableAvatarViewController9 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  view7 = [editableAvatarViewController9 view];
  heightAnchor = [view7 heightAnchor];
  editableAvatarViewController10 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  view8 = [editableAvatarViewController10 view];
  widthAnchor2 = [view8 widthAnchor];
  v29 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v46[2] = v29;
  editableAvatarViewController11 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  view9 = [editableAvatarViewController11 view];
  centerXAnchor = [view9 centerXAnchor];
  view10 = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  centerXAnchor2 = [view10 centerXAnchor];
  v35 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v46[3] = v35;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v39];
  v36 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapEditableAvatar_];
  editableAvatarViewController12 = [(CNVisualIdentityAvatarStyleEditorViewController *)self editableAvatarViewController];
  view11 = [editableAvatarViewController12 view];
  [view11 addGestureRecognizer:v36];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CNVisualIdentityAvatarStyleEditorViewController;
  [(CNVisualIdentityAvatarStyleEditorViewController *)&v5 viewDidLoad];
  [(CNVisualIdentityAvatarStyleEditorViewController *)self setupEditableAvatarViewController];
  [(CNVisualIdentityAvatarStyleEditorViewController *)self setupStyleCollectionView];
  v3 = +[CNUIColorRepository visualIdentityEditorBackgroundColor];
  view = [(CNVisualIdentityAvatarStyleEditorViewController *)self view];
  [view setBackgroundColor:v3];
}

- (CNVisualIdentityAvatarStyleEditorViewController)initWithProviderItem:(id)item variantsManager:(id)manager
{
  itemCopy = item;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = CNVisualIdentityAvatarStyleEditorViewController;
  v9 = [(CNVisualIdentityAvatarStyleEditorViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_providerItem, item);
    objc_storeStrong(&v10->_variantsManager, manager);
    v11 = v10;
  }

  return v10;
}

@end