@interface CNVisualIdentityPickerViewController
+ (BOOL)canShowPhotoPickerForView:(id)a3 withTraitCollection:(id)a4;
+ (CGSize)defaultContentSize;
+ (CGSize)defaultItemSize;
+ (double)itemsPerRowForWidth:(double)a3;
+ (id)descriptorForRequiredKeys;
+ (id)imagePickerForContact:(id)a3;
+ (id)imagePickerForGroupIdentity:(id)a3;
+ (id)imagePickerForVisualIdentity:(id)a3;
+ (id)log;
+ (id)makeDescriptorForRequiredKeys;
+ (id)navigationControllerForPicker:(id)a3;
- (BOOL)hasPendingChanges;
- (BOOL)isEditingOrDuplicatingItem;
- (BOOL)isModalInPresentation;
- (BOOL)isPresentingModalViewController;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CNVisualIdentity)pendingVisualIdentity;
- (CNVisualIdentityPickerPresenterDelegate)presenterDelegate;
- (CNVisualIdentityPickerViewController)initWithPhotosDataSource:(id)a3 style:(id)a4 allowRotation:(BOOL)a5;
- (CNVisualIdentityPickerViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)collectionViewPaddingForCatalyst;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)contactImageForCurrentActiveItem;
- (id)insertNewItem:(id)a3 toGroupType:(int64_t)a4 updateActive:(BOOL)a5 scrollToItem:(BOOL)a6;
- (id)photoPickerNavigationControllerForRootController:(id)a3;
- (id)visualIdentity;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)defaultModalPresentationStyle;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)avatarEditingManager:(id)a3 didFinishWithProviderItem:(id)a4;
- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4;
- (void)avatarEditorViewControllerDidCancel:(id)a3;
- (void)buildCollectionView;
- (void)buildHeaderView;
- (void)cancel:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)deleteExistingItem:(id)a3;
- (void)deleteItemFromRecentsImageStore:(id)a3;
- (void)didCancelEditingProviderItemFromViewController:(id)a3;
- (void)didSelectSuggestionsAddItemAtIndexPath:(id)a3;
- (void)done:(id)a3;
- (void)editableAvatarViewController:(id)a3 didUpdateWithProviderItem:(id)a4;
- (void)headerActionPressedAtIndexPath:(id)a3;
- (void)imagePickerController:(id)a3 didFinishWithProviderItem:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)initializeHeaderView;
- (void)insertNewItemIntoSuggestions:(id)a3;
- (void)photoPickerActionsViewController:(id)a3 didPerformAction:(int64_t)a4 withProviderItem:(id)a5 atIndexPath:(id)a6;
- (void)photoPickerActionsViewControllerDidFinish:(id)a3;
- (void)photoPickerHeaderView:(id)a3 didUpdateIdentityNameTextField:(id)a4 withText:(id)a5;
- (void)photoPickerHeaderViewDidReceiveDroppedImageData:(id)a3;
- (void)photoPickerHeaderViewDidTapClearAvatarImageButton:(id)a3;
- (void)photoPickerProviderGroup:(id)a3 didUpdateItem:(id)a4;
- (void)photoPickerProviderGroupDidUpdate:(id)a3 requiresFullReload:(BOOL)a4;
- (void)presentActionsViewControllerForProviderItem:(id)a3 atIndexPath:(id)a4;
- (void)presentCameraImagePicker;
- (void)presentDismissConfirmation;
- (void)presentEditItemViewController:(id)a3 fromViewController:(id)a4;
- (void)presentEmojiEditor;
- (void)presentLibraryImagePickerForIndexPath:(id)a3;
- (void)presentMonogramEditorFromIndexPath:(id)a3;
- (void)presentVisualIdentityItemEditorForItem:(id)a3 fromViewController:(id)a4;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)reloadItemsForUpdatedSuggestionsGroup:(id)a3 atSectionIndex:(int64_t)a4;
- (void)saveItemToRecentsImageStore:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)selectItem:(id)a3 presentFromViewControllerIfNeeded:(id)a4;
- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (void)sender:(id)a3 presentViewController:(id)a4;
- (void)setPresenterDelegate:(id)a3;
- (void)setSuggestionsProviderItemAsActiveItem:(id)a3;
- (void)setUpViews;
- (void)showAvatarCropAndScaleForItem:(id)a3 fromViewController:(id)a4;
- (void)showAvatarEditorForCreation;
- (void)showAvatarPosePickerFromItem:(id)a3 atIndexPath:(id)a4;
- (void)updateActiveIndexPath:(id)a3 reload:(BOOL)a4;
- (void)updateActiveIndexPathForUpdatedSuggestionsGroup:(id)a3 atSectionIndex:(int64_t)a4;
- (void)updateDoneButtonEnabledStateForEditingProviderItem:(id)a3;
- (void)updateEmojiSuggestionsForUpdatedVisualIdentity:(id)a3 locale:(id)a4;
- (void)updateForSelectedProviderItem:(id)a3;
- (void)updateHeaderViewAvatar;
- (void)updateInjectedItemsSectionForProviderItem:(id)a3;
- (void)updateMonogramsForUpdatedVisualIdentity:(id)a3;
- (void)updateVisualIdentityWithName:(id)a3 locale:(id)a4;
- (void)updateVisualIdentityWithProposedImageData:(id)a3;
- (void)updateVisualIdentityWithProviderItem:(id)a3;
- (void)viewController:(id)a3 didSelectUpdatedProviderItem:(id)a4 completionHandler:(id)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CNVisualIdentityPickerViewController

+ (id)descriptorForRequiredKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CNVisualIdentityPickerViewController_descriptorForRequiredKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (descriptorForRequiredKeys_cn_once_token_26 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_26, block);
  }

  v2 = descriptorForRequiredKeys_cn_once_object_26;

  return v2;
}

uint64_t __65__CNVisualIdentityPickerViewController_descriptorForRequiredKeys__block_invoke(uint64_t a1)
{
  descriptorForRequiredKeys_cn_once_object_26 = [*(a1 + 32) makeDescriptorForRequiredKeys];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)makeDescriptorForRequiredKeys
{
  v15[14] = *MEMORY[0x1E69E9840];
  v2 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:1];
  v15[0] = v2;
  v3 = [MEMORY[0x1E6996B90] descriptorForRequiredKeys];
  v4 = *MEMORY[0x1E695C258];
  v15[1] = v3;
  v15[2] = v4;
  v5 = *MEMORY[0x1E695C278];
  v15[3] = *MEMORY[0x1E695C2D8];
  v15[4] = v5;
  v6 = *MEMORY[0x1E695C270];
  v15[5] = *MEMORY[0x1E695C400];
  v15[6] = v6;
  v7 = *MEMORY[0x1E695C1E8];
  v15[7] = *MEMORY[0x1E695C410];
  v15[8] = v7;
  v8 = *MEMORY[0x1E695C298];
  v15[9] = *MEMORY[0x1E695C238];
  v15[10] = v8;
  v9 = *MEMORY[0x1E695C2E8];
  v15[11] = *MEMORY[0x1E695C280];
  v15[12] = v9;
  v15[13] = *MEMORY[0x1E695C420];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:14];

  v11 = MEMORY[0x1E695CD58];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNVisualIdentityPickerViewController makeDescriptorForRequiredKeys]"];
  v13 = [v11 descriptorWithKeyDescriptors:v10 description:v12];

  return v13;
}

- (CNVisualIdentityPickerPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

  return WeakRetained;
}

- (CNVisualIdentityPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewController:(id)a3 didSelectUpdatedProviderItem:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(CNVisualIdentityPickerViewController *)self updateForSelectedProviderItem:a4];
  v18 = v8;
  v10 = [(CNVisualIdentityPickerViewController *)self presentedViewController];
  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v12 = [(CNVisualIdentityPickerViewController *)self presentedViewController];
  v13 = [(CNVisualIdentityPickerViewController *)v18 presentingViewController];

  if (v12 == v13 || (v14 = v18, (isKindOfClass & 1) != 0))
  {
    v14 = self;

    objc_opt_class();
    v15 = [(CNVisualIdentityPickerViewController *)v14 presentedViewController];
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      [v17 endDisablingAutorotationIfNeeded];
    }
  }

  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:v14 completionHandler:v9];
}

- (void)updateForSelectedProviderItem:(id)a3
{
  v19 = a3;
  v4 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  v5 = [v4 identityType];

  if (!v5)
  {
    objc_opt_class();
    v6 = v19;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 isGrayMonogramItem];
    v10 = [v8 monogramText];
    v11 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
    v12 = [v11 abbreviatedName];
    v13 = [v10 isEqualToString:v12];

    if (v9 && v13)
    {
      [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:0];
      [(CNVisualIdentityPickerViewController *)self updateActiveIndexPath:0];
      goto LABEL_14;
    }
  }

  [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:v19];
  if ([(CNVisualIdentityPickerViewController *)self isEditingOrDuplicatingItem])
  {
    v14 = [(CNVisualIdentityPickerViewController *)self editingProviderItem];

    if (v14)
    {
      v15 = [(CNVisualIdentityPickerViewController *)self editingProviderItem];
      [(CNVisualIdentityPickerViewController *)self deleteExistingItem:v15];

      v16 = [(CNVisualIdentityPickerViewController *)self editingProviderItem];
      [(CNVisualIdentityPickerViewController *)self deleteItemFromRecentsImageStore:v16];

      [(CNVisualIdentityPickerViewController *)self setEditingProviderItem:0];
    }

    else
    {
      v17 = [(CNVisualIdentityPickerViewController *)self duplicatingProviderItem];
      [(CNVisualIdentityPickerViewController *)self deleteExistingItem:v17];

      [(CNVisualIdentityPickerViewController *)self setDuplicatingProviderItem:0];
    }
  }

  v18 = [(CNVisualIdentityPickerViewController *)self insertNewItem:v19 toGroupType:1 updateActive:1];
  [(CNVisualIdentityPickerViewController *)self saveItemToRecentsImageStore:v19];
  v8 = [(CNVisualIdentityPickerViewController *)self actionsViewController];
  [v8 updateActionsModelWithProviderItem:v19];
LABEL_14:
}

- (void)didCancelEditingProviderItemFromViewController:(id)a3
{
  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:a3];

  [(CNVisualIdentityPickerViewController *)self setEditingProviderItem:0];
}

- (void)presentEditItemViewController:(id)a3 fromViewController:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = [(CNVisualIdentityPickerViewController *)self photoPickerNavigationControllerForRootController:v6];
  [v7 setModalPresentationStyle:-2];
  v8 = [(CNVisualIdentityPickerViewController *)self contactStyle];
  [v7 setModalTransitionStyle:{objc_msgSend(v8, "modalTransitionStyle")}];

  [(CNVisualIdentityPickerViewController *)self preferredContentSize];
  [v6 setPreferredContentSize:?];

  v9 = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v10 = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
    [v10 visualIdentityPicker:self presentViewController:v7];
  }

  else
  {
    [v11 presentViewController:v7 animated:1 completion:0];
  }
}

- (void)editableAvatarViewController:(id)a3 didUpdateWithProviderItem:(id)a4
{
  v24 = a4;
  v5 = [v24 imageData];
  v6 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v7 = [v6 imageData];
  v8 = v7;
  if (v5 != v7)
  {

LABEL_4:
    v23 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    if (v24)
    {
      [v24 updateVisualIdentity:v23];
    }

    else
    {
      [v23 clearImage];
    }

    [(CNVisualIdentityPickerViewController *)self updateInjectedItemsSectionForProviderItem:v24];
    [(CNVisualIdentityPickerViewController *)self updateDoneButtonEnabledStateForEditingProviderItem:v24];
    goto LABEL_8;
  }

  [v24 cropRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  [v17 cropRect];
  v27.origin.x = v18;
  v27.origin.y = v19;
  v27.size.width = v20;
  v27.size.height = v21;
  v26.origin.x = v10;
  v26.origin.y = v12;
  v26.size.width = v14;
  v26.size.height = v16;
  v22 = CGRectEqualToRect(v26, v27);

  if (!v22)
  {
    goto LABEL_4;
  }

LABEL_8:
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(CNVisualIdentityPickerViewController *)self headerView];
  [v3 resignFirstResponder];
}

- (void)saveItemToRecentsImageStore:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  v6 = [v5 identifier];

  if (v6)
  {
    v7 = [v4 contactImageForMetadataStore];
    v8 = [v7 imageData];
    if (v8)
    {
    }

    else
    {
      v9 = [v7 variant];

      if (!v9)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    v10 = objc_alloc_init(MEMORY[0x1E695CDA8]);
    v11 = MEMORY[0x1E695CD90];
    v12 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
    v13 = [v12 identifier];
    v14 = [v11 requestToCreateImage:v7 forContactIdentifier:v13];

    v19 = 0;
    [v10 performCreateRequest:v14 error:&v19];
    v15 = v19;
    if (v15)
    {
      v16 = [objc_opt_class() log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
        v18 = [v17 identifier];
        *buf = 138412290;
        v21 = v18;
        _os_log_impl(&dword_199A75000, v16, OS_LOG_TYPE_INFO, "Failed to save item to recent image store for contact identifier <%@>", buf, 0xCu);
      }
    }

    else
    {
      v16 = [v7 identifier];
      [v4 setRecentsIdentifier:v16];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)deleteItemFromRecentsImageStore:(id)a3
{
  v3 = a3;
  v4 = [v3 recentsIdentifier];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CDA8]);
    v6 = MEMORY[0x1E695CD98];
    v7 = [v3 recentsIdentifier];
    v8 = [v6 requestToDeleteImageForIdentifier:v7];

    v9 = 0;
    [v5 performDeleteRequest:v8 error:&v9];
  }
}

- (void)presentDismissConfirmation
{
  if ([(CNVisualIdentityPickerViewController *)self hasPendingChanges])
  {
    v3 = MEMORY[0x1E69DC650];
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:@"PHOTO_EDITING_DISCARD_CONFIRMATION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    v6 = [v3 alertControllerWithTitle:v5 message:0 preferredStyle:0];

    v7 = MEMORY[0x1E69DC648];
    v8 = CNContactsUIBundle();
    v9 = [v8 localizedStringForKey:@"PHOTO_EDITING_DISCARD_CONFIRM" value:&stru_1F0CE7398 table:@"Localized"];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __66__CNVisualIdentityPickerViewController_presentDismissConfirmation__block_invoke;
    v18[3] = &unk_1E74E6C28;
    v18[4] = self;
    v10 = [v7 actionWithTitle:v9 style:2 handler:v18];
    [v6 addAction:v10];

    v11 = MEMORY[0x1E69DC648];
    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:@"PHOTO_EDITING_DISCARD_CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
    v14 = [v11 actionWithTitle:v13 style:1 handler:0];
    [v6 addAction:v14];

    v15 = [(CNVisualIdentityPickerViewController *)self navigationItem];
    v16 = [v15 leftBarButtonItem];
    v17 = [v6 popoverPresentationController];
    [v17 setBarButtonItem:v16];

    [(CNVisualIdentityPickerViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {

    [(CNVisualIdentityPickerViewController *)self cancel:0];
  }
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
  [v5 visualIdentityPicker:self presentationControllerWillDismiss:v4];
}

- (BOOL)isModalInPresentation
{
  v2 = [(CNVisualIdentityPickerViewController *)self navigationItem];
  v3 = [v2 rightBarButtonItem];
  v4 = [v3 isEnabled];

  return v4;
}

- (void)avatarEditorViewController:(id)a3 didFinishWithAvatarRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CNPhotoPickerAnimojiProvider providerItemForAvatarRecord:v7];
  v9 = [(CNVisualIdentityPickerViewController *)self insertNewItem:v8 toGroupType:2 updateActive:0];
  objc_initWeak(&location, self);
  v10 = [v6 presentingViewController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__CNVisualIdentityPickerViewController_avatarEditorViewController_didFinishWithAvatarRecord___block_invoke;
  v13[3] = &unk_1E74E7290;
  objc_copyWeak(&v16, &location);
  v11 = v8;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:v10 completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __93__CNVisualIdentityPickerViewController_avatarEditorViewController_didFinishWithAvatarRecord___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained showAvatarPosePickerFromItem:*(a1 + 32) atIndexPath:*(a1 + 40)];
}

- (void)avatarEditorViewControllerDidCancel:(id)a3
{
  v4 = [a3 presentingViewController];
  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:v4];
}

- (void)avatarEditingManager:(id)a3 didFinishWithProviderItem:(id)a4
{
  v8 = a4;
  v6 = [a3 viewController];
  if (v8)
  {
    v7 = [v6 navigationController];
    [(CNVisualIdentityPickerViewController *)self selectItem:v8 presentFromViewControllerIfNeeded:v7];
  }

  else
  {
    v7 = [v6 presentingViewController];
    [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:v7];
  }
}

- (void)photoPickerActionsViewControllerDidFinish:(id)a3
{
  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:a3];
  [(CNVisualIdentityPickerViewController *)self setEditingProviderItem:0];
  [(CNVisualIdentityPickerViewController *)self setDuplicatingProviderItem:0];

  [(CNVisualIdentityPickerViewController *)self setActionsViewController:0];
}

- (void)photoPickerActionsViewController:(id)a3 didPerformAction:(int64_t)a4 withProviderItem:(id)a5 atIndexPath:(id)a6
{
  v36 = a3;
  v10 = a5;
  v11 = a6;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v14 = [v10 copy];
      v30 = [(CNVisualIdentityPickerViewController *)self actionsViewController];
      [v30 updateActionsModelWithProviderItem:v14];

      [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:v14];
      v31 = [(CNVisualIdentityPickerViewController *)self insertNewItem:v14 toGroupType:1 updateActive:1];
      [(CNVisualIdentityPickerViewController *)self setDuplicatingProviderItem:v14];
      [(CNVisualIdentityPickerViewController *)self selectItem:v14 presentFromViewControllerIfNeeded:v36];
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_38;
      }

      [(CNVisualIdentityPickerViewController *)self deleteExistingItem:v10];
      v15 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v14 = [v15 providerItemAtIndexPath:v11];

      v16 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v17 = [v16 activePhotoIndexPath];

      if (v17 == v11)
      {
        v18 = [(CNVisualIdentityPickerViewController *)self dataSource];
        v19 = [v18 providerGroupAtIndexPath:v11];

        objc_opt_class();
        v20 = v19;
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        if (v14)
        {
          v23 = v14;
          v24 = v11;
        }

        else if (v22)
        {
          v24 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v22 inSection:{"indexForDefaultMonogram"), 0}];
          v34 = [(CNVisualIdentityPickerViewController *)self dataSource];
          v23 = [v34 providerItemAtIndexPath:v11];
        }

        else
        {
          v24 = 0;
          v23 = 0;
        }

        [(CNVisualIdentityPickerViewController *)self updateActiveIndexPath:v24 reload:0];
        [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:v23];
      }

      v35 = [v10 recentsIdentifier];

      if (v35)
      {
        [(CNVisualIdentityPickerViewController *)self deleteItemFromRecentsImageStore:v10];
      }

      if (v14)
      {
        [v36 performDeleteTransitionToItem:v14];
      }

      else
      {
        [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:v36];
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_38;
    }

    [(CNVisualIdentityPickerViewController *)self setEditingProviderItem:v10];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(CNVisualIdentityPickerViewController *)self selectItem:v10 presentFromViewControllerIfNeeded:v36];
      goto LABEL_38;
    }

    objc_opt_class();
    v12 = v10;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      [(CNVisualIdentityPickerViewController *)self showAvatarCropAndScaleForItem:v14 fromViewController:v36];
    }

    goto LABEL_37;
  }

  objc_opt_class();
  v25 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v26 = [v25 providerGroupAtIndexPath:v11];
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  v29 = [v28 indexForDefaultMonogram];
  if ([v11 row] == v29)
  {
    [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:v10];
    [(CNVisualIdentityPickerViewController *)self updateActiveIndexPath:v11];
  }

  else
  {
    v32 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v33 = [v32 activePhotoIndexPath];

    if (v33 != v11)
    {
      [(CNVisualIdentityPickerViewController *)self setSuggestionsProviderItemAsActiveItem:v10];
      [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:v10];
    }
  }

  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:v36];
LABEL_38:
}

- (void)presentActionsViewControllerForProviderItem:(id)a3 atIndexPath:(id)a4
{
  v26 = a3;
  v6 = a4;
  v7 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v8 = [v7 providerGroupAtIndexPath:v6];

  v9 = [v8 groupType];
  if (v9 == 3)
  {
    v21 = [CNPhotoPickerActionsModel alloc];
    v16 = [(CNVisualIdentityPickerViewController *)self assignActionTitleOverride];
    v18 = v21;
    v19 = v26;
    v20 = v16;
    v17 = 0;
  }

  else
  {
    if (v9 != 1)
    {
      goto LABEL_9;
    }

    objc_opt_class();
    v10 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v11 = [v10 providerGroupAtIndexPath:v6];
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v13 indexForDefaultMonogram];
    v15 = [CNPhotoPickerActionsModel alloc];
    v16 = [(CNVisualIdentityPickerViewController *)self assignActionTitleOverride];
    v17 = [v6 row] > v14;
    v18 = v15;
    v19 = v26;
    v20 = v16;
  }

  v22 = [(CNPhotoPickerActionsModel *)v18 initWithProviderItem:v19 assignActionTitleOverride:v20 canDelete:v17 atIndexPath:v6];

  v23 = [[CNPhotoPickerActionsViewController alloc] initWithActionsModel:v22];
  [(CNPhotoPickerActionsViewController *)v23 setDelegate:self];
  [(CNVisualIdentityPickerViewController *)self setActionsViewController:v23];
  v24 = [(CNVisualIdentityPickerViewController *)self photoPickerNavigationControllerForRootController:v23];
  [v24 setModalPresentationStyle:{-[CNVisualIdentityPickerViewController defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
  v25 = [(CNVisualIdentityPickerViewController *)self contactStyle];
  [v24 setModalTransitionStyle:{objc_msgSend(v25, "modalTransitionStyle")}];

  [(CNVisualIdentityPickerViewController *)self sender:0 presentViewController:v24];
LABEL_9:
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:a3];
  [(CNVisualIdentityPickerViewController *)self setActionsViewController:0];

  [(CNVisualIdentityPickerViewController *)self setEditingProviderItem:0];
}

- (void)imagePickerController:(id)a3 didFinishWithProviderItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  getPHPickerViewControllerClass();
  objc_opt_class();
  v8 = [v6 presentingViewController];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__CNVisualIdentityPickerViewController_imagePickerController_didFinishWithProviderItem___block_invoke;
    aBlock[3] = &unk_1E74E77C0;
    aBlock[4] = self;
    v23 = v7;
    v11 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __88__CNVisualIdentityPickerViewController_imagePickerController_didFinishWithProviderItem___block_invoke_2;
    v19[3] = &unk_1E74E6DD0;
    v20 = v10;
    v21 = v11;
    v12 = v10;
    v13 = v11;
    [v6 dismissViewControllerAnimated:1 completion:v19];

    v14 = v23;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__CNVisualIdentityPickerViewController_imagePickerController_didFinishWithProviderItem___block_invoke_3;
    v16[3] = &unk_1E74E77C0;
    v17 = v10;
    v18 = self;
    v15 = v10;
    [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:v6 completionHandler:v16];
    v14 = v17;
  }
}

void __88__CNVisualIdentityPickerViewController_imagePickerController_didFinishWithProviderItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isEditingOrDuplicatingItem];
  v3 = [*(a1 + 40) allowsVariants];
  if (v2)
  {
    if (v3)
    {
      v5 = *(a1 + 32);
      v4 = *(a1 + 40);
      v8 = [v5 presentedViewController];
      [v5 presentVisualIdentityItemEditorForItem:v4 fromViewController:v8];
    }
  }

  else if (v3)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    [v6 presentVisualIdentityItemEditorForItem:v7 fromViewController:v6];
  }
}

uint64_t __88__CNVisualIdentityPickerViewController_imagePickerController_didFinishWithProviderItem___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    return [v2 dismissViewControllerAnimated:1 completion:v3];
  }

  else
  {
    return (*(v3 + 16))(*(a1 + 40));
  }
}

uint64_t __88__CNVisualIdentityPickerViewController_imagePickerController_didFinishWithProviderItem___block_invoke_3(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) sender:0 dismissViewController:?];
  }

  return result;
}

- (BOOL)isPresentingModalViewController
{
  v2 = [(CNVisualIdentityPickerViewController *)self presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
    [v10 visualIdentityPicker:self dismissViewController:v11];
  }

  else
  {
    [v11 dismissViewControllerAnimated:1 completion:v7];
  }
}

- (void)sender:(id)a3 presentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNVisualIdentityPickerViewController *)self contactStyle];
  [v7 setModalTransitionStyle:{objc_msgSend(v8, "modalTransitionStyle")}];

  v22 = v6;
  v9 = [v7 popoverPresentationController];
  [v9 setSourceView:v22];

  [v22 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v7 popoverPresentationController];
  [v18 setSourceRect:{v11, v13, v15, v17}];

  v19 = [v7 popoverPresentationController];
  [v19 setPermittedArrowDirections:15];

  [(CNVisualIdentityPickerViewController *)self preferredContentSize];
  [v7 setPreferredContentSize:?];
  v20 = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v21 = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
    [v21 visualIdentityPicker:self presentViewController:v7];
  }

  else
  {
    [(CNVisualIdentityPickerViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)updateEmojiSuggestionsForUpdatedVisualIdentity:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CNVisualIdentityPickerViewController *)self shouldUpdateEmojiSuggestions])
  {
    v8 = [v6 name];
    v9 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v10 = [v9 variantsManager];
    [objc_opt_class() defaultItemSize];
    v11 = [CNPhotoPickerEmojiProviderItem suggestedEmojiItemsForString:v8 variantsManager:v10 size:v7 locale:?];

    v12 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v13 = [v12 uniqueEmojiSuggestionItems:v11];

    if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
    {
      v14 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v15 = [v14 emojiSuggestionItems];
      v16 = [v15 count];

      if (v16 <= 2)
      {
        v20 = [v13 _cn_takeLast:3 - v16];

        v21 = [(CNVisualIdentityPickerViewController *)self dataSource];
        v22 = [v21 emojiSuggestionItems];
        v23 = [v22 arrayByAddingObjectsFromArray:v20];
        v24 = [(CNVisualIdentityPickerViewController *)self dataSource];
        [v24 setEmojiSuggestionItems:v23];

        v13 = v20;
      }

      else
      {
        v17 = [(CNVisualIdentityPickerViewController *)self dataSource];
        v18 = [v17 emojiSuggestionItems];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __94__CNVisualIdentityPickerViewController_updateEmojiSuggestionsForUpdatedVisualIdentity_locale___block_invoke;
        v30[3] = &unk_1E74E4560;
        v30[4] = self;
        [v18 _cn_each:v30];

        v19 = [(CNVisualIdentityPickerViewController *)self dataSource];
        [v19 setEmojiSuggestionItems:v13];
      }

      v25 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v26 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v27 = [v26 activePhotoIndexPath];
      v28 = [v25 providerItemAtIndexPath:v27];

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __94__CNVisualIdentityPickerViewController_updateEmojiSuggestionsForUpdatedVisualIdentity_locale___block_invoke_2;
      v29[3] = &unk_1E74E4560;
      v29[4] = self;
      [v13 _cn_each:v29];
      [(CNVisualIdentityPickerViewController *)self setSuggestionsProviderItemAsActiveItem:v28];
    }
  }
}

- (void)updateMonogramsForUpdatedVisualIdentity:(id)a3
{
  v4 = a3;
  v5 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v12 = [v5 suggestionsGroup];

  [objc_opt_class() defaultItemSize];
  v7 = v6;
  v9 = v8;
  v10 = [(CNVisualIdentityPickerViewController *)self view];
  v11 = [v10 effectiveUserInterfaceLayoutDirection] == 1;

  [v12 reloadMonogramProviderGroupWithVisualIdentity:v4 size:v11 RTL:{v7, v9}];
}

- (void)updateVisualIdentityWithName:(id)a3 locale:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v8 = [v7 canUpdateGroupName];

  if (v8)
  {
    v9 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    v10 = [v9 abbreviatedName];

    v11 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    [v11 updateGroupName:v21];

    v12 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    [(CNVisualIdentityPickerViewController *)self updateEmojiSuggestionsForUpdatedVisualIdentity:v12 locale:v6];

    v13 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    v14 = [v13 abbreviatedName];
    v15 = [v10 isEqualToString:v14];

    v16 = *MEMORY[0x1E6996570];
    v17 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    v18 = [v17 abbreviatedName];
    v19 = (*(v16 + 16))(v16, v18);

    if ((v15 & 1) == 0 && v19)
    {
      v20 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
      [(CNVisualIdentityPickerViewController *)self updateMonogramsForUpdatedVisualIdentity:v20];
    }
  }
}

- (void)photoPickerHeaderViewDidReceiveDroppedImageData:(id)a3
{
  v4 = MEMORY[0x1E69DCAB8];
  v5 = a3;
  v19 = [[v4 alloc] initWithData:v5];
  [v19 size];
  v7 = v6;
  [v19 scale];
  v9 = v7 / v8;
  [v19 size];
  v11 = v10;
  [v19 scale];
  v13 = v11 / v12;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v9;
  v21.size.height = v13;
  CGRectGetWidth(v21);
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v9;
  v22.size.height = v13;
  CGRectGetHeight(v22);
  UIRectGetCenter();
  [v19 scale];
  UIRectCenteredAboutPointScale();
  v18 = [[CNPhotoPickerProviderItem alloc] initWithImageData:v5 thumbnailImageData:0 fullscreenImageData:0 cropRect:v14, v15, v16, v17];

  if ([(CNPhotoPickerProviderItem *)v18 allowsVariants])
  {
    [(CNVisualIdentityPickerViewController *)self presentVisualIdentityItemEditorForItem:v18 fromViewController:self];
  }
}

- (void)photoPickerHeaderViewDidTapClearAvatarImageButton:(id)a3
{
  [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:0];
  [(CNVisualIdentityPickerViewController *)self updateInjectedItemsSectionForProviderItem:0];

  [(CNVisualIdentityPickerViewController *)self updateActiveIndexPath:0];
}

- (void)photoPickerHeaderView:(id)a3 didUpdateIdentityNameTextField:(id)a4 withText:(id)a5
{
  v7 = a5;
  v8 = [a4 textInputMode];
  v10 = [v8 primaryLanguage];

  v9 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v10];
  [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithName:v7 locale:v9];

  [(CNVisualIdentityPickerViewController *)self updateDoneButtonEnabledState];
}

- (void)updateActiveIndexPathForUpdatedSuggestionsGroup:(id)a3 atSectionIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v8 = [v7 imageData];

  objc_opt_class();
  v13 = v6;
  if (objc_opt_isKindOfClass())
  {
    v9 = v13;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    if (v8)
    {
      v11 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v12 = [v11 findActiveIndexPathInGroup:v13 withImageData:v8];
    }

    else
    {
      v12 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v10 inSection:{"indexForDefaultMonogram"), a4}];
    }
  }

  else
  {
    v12 = 0;
  }

  [(CNVisualIdentityPickerViewController *)self updateActiveIndexPath:v12];
}

- (void)reloadItemsForUpdatedSuggestionsGroup:(id)a3 atSectionIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v8 = [v7 indexPathsForVisibleItems];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__CNVisualIdentityPickerViewController_reloadItemsForUpdatedSuggestionsGroup_atSectionIndex___block_invoke;
  v19[3] = &unk_1E74E44C8;
  v21 = a4;
  v9 = v6;
  v20 = v9;
  v10 = [v8 _cn_filter:v19];

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v11 = [(CNVisualIdentityPickerViewController *)self collectionView];
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:a4];
    [v11 reloadSections:v12];
  }

  else
  {
    v13 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v14 = [v13 indexPathsToReloadForUpdatedGroup:v9];

    v15 = [(CNVisualIdentityPickerViewController *)self collectionView];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93__CNVisualIdentityPickerViewController_reloadItemsForUpdatedSuggestionsGroup_atSectionIndex___block_invoke_2;
    v16[3] = &unk_1E74E6EE8;
    v16[4] = self;
    v17 = v10;
    v18 = v14;
    v11 = v14;
    [v15 performBatchUpdates:v16 completion:0];
  }
}

uint64_t __93__CNVisualIdentityPickerViewController_reloadItemsForUpdatedSuggestionsGroup_atSectionIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 section];
  v5 = *(a1 + 40);
  if ([*(a1 + 32) allowAddItem])
  {
    v6 = [v3 row] != 0;
  }

  else
  {
    v6 = 1;
  }

  return (v4 == v5) & v6;
}

void __93__CNVisualIdentityPickerViewController_reloadItemsForUpdatedSuggestionsGroup_atSectionIndex___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 deleteItemsAtIndexPaths:*(a1 + 40)];

  v3 = [*(a1 + 32) collectionView];
  [v3 insertItemsAtIndexPaths:*(a1 + 48)];
}

- (void)photoPickerProviderGroup:(id)a3 didUpdateItem:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CNVisualIdentityPickerViewController *)self isViewLoaded])
  {
    if ([v6 groupType] == 1)
    {
      v8 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v9 = [v7 imageData];
      v10 = [v8 findActiveIndexPathInGroup:v6 withImageData:v9];

      if (v10)
      {
        v11 = [(CNVisualIdentityPickerViewController *)self collectionView];
        v13[0] = v10;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
        [v11 reloadItemsAtIndexPaths:v12];
      }
    }

    else
    {
      [(CNVisualIdentityPickerViewController *)self photoPickerProviderGroupDidUpdate:v6 requiresFullReload:0];
    }
  }
}

- (void)photoPickerProviderGroupDidUpdate:(id)a3 requiresFullReload:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  if ([(CNVisualIdentityPickerViewController *)self isViewLoaded])
  {
    v6 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v7 = [v6 sectionIndexForProviderGroup:v14];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [v14 groupType];
      if ((v8 - 2) >= 2)
      {
        if (v8 == 1)
        {
          if (v4)
          {
            v10 = [(CNVisualIdentityPickerViewController *)self collectionView];
            [v10 reloadData];
          }

          else
          {
            [(CNVisualIdentityPickerViewController *)self reloadItemsForUpdatedSuggestionsGroup:v14 atSectionIndex:v7];
          }

          [(CNVisualIdentityPickerViewController *)self updateActiveIndexPathForUpdatedSuggestionsGroup:v14 atSectionIndex:v7];
          v11 = *MEMORY[0x1E6996530];
          v12 = [(CNVisualIdentityPickerViewController *)self pendingInjectedSuggestionItems];
          LOBYTE(v11) = (*(v11 + 16))(v11, v12);

          if ((v11 & 1) == 0)
          {
            v13 = [(CNVisualIdentityPickerViewController *)self pendingInjectedSuggestionItems];
            [v13 _cn_each:&__block_literal_global_279];

            [(CNVisualIdentityPickerViewController *)self setPendingInjectedSuggestionItems:MEMORY[0x1E695E0F0]];
          }
        }
      }

      else
      {
        v9 = [(CNVisualIdentityPickerViewController *)self collectionView];
        [v9 reloadData];
      }
    }
  }
}

- (void)presentCameraImagePicker
{
  if (+[CNPhotoPickerCapabilities allowsCameraAccess])
  {
    v3 = [(CNVisualIdentityPickerViewController *)self imagePickerController];
    [v3 presentCameraImagePickerFromViewController:self];
  }
}

- (void)presentLibraryImagePickerForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v7 = [v5 cellForItemAtIndexPath:v4];

  v6 = [(CNVisualIdentityPickerViewController *)self imagePickerController];
  [v6 presentPhotoLibraryPickerFromViewController:self sourceView:v7];
}

- (void)showAvatarCropAndScaleForItem:(id)a3 fromViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CNAvatarEditingManager alloc];
  v9 = [v7 avatarRecord];
  v10 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v11 = [v10 variantsManager];
  v14 = [(CNAvatarEditingManager *)v8 initForEditingWithAvatarRecord:v9 variantsManager:v11 fromViewController:v6];

  [v14 setDelegate:self];
  [v14 setOriginalItem:v7];
  [(CNVisualIdentityPickerViewController *)self setAvatarEditingManager:v14];
  v12 = [v14 imagePickerForItem:v7];

  v13 = [(CNVisualIdentityPickerViewController *)self imagePickerController];
  [v13 presentImagePicker:v12 withStyle:6 fromViewController:v6 forVisualIdentityPicker:self];
}

- (void)showAvatarPosePickerFromItem:(id)a3 atIndexPath:(id)a4
{
  v17 = a3;
  if (+[CNPhotoPickerCapabilities allowsAvatarUI])
  {
    v5 = [CNAvatarEditingManager alloc];
    v6 = [v17 avatarRecord];
    v7 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v8 = [v7 variantsManager];
    v9 = [(CNAvatarEditingManager *)v5 initWithAvatarRecord:v6 variantsManager:v8];

    [(CNAvatarEditingManager *)v9 setDelegate:self];
    [(CNAvatarEditingManager *)v9 setOriginalItem:v17];
    [(CNVisualIdentityPickerViewController *)self setAvatarEditingManager:v9];
    v10 = [(CNVisualIdentityPickerViewController *)self view];
    v11 = [v10 backgroundColor];
    v12 = [(CNAvatarEditingManager *)v9 viewController];
    v13 = [v12 view];
    [v13 setBackgroundColor:v11];

    v14 = [(CNAvatarEditingManager *)v9 viewController];
    v15 = [(CNVisualIdentityPickerViewController *)self photoPickerNavigationControllerForRootController:v14];

    [v15 setModalPresentationStyle:{-[CNVisualIdentityPickerViewController defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
    v16 = [(CNVisualIdentityPickerViewController *)self contactStyle];
    [v15 setModalTransitionStyle:{objc_msgSend(v16, "modalTransitionStyle")}];

    [(CNVisualIdentityPickerViewController *)self sender:0 presentViewController:v15];
  }
}

- (void)showAvatarEditorForCreation
{
  if ([objc_opt_class() canShowAvatarEditor])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v3 = getAVTAvatarEditorViewControllerClass_softClass;
    v15 = getAVTAvatarEditorViewControllerClass_softClass;
    if (!getAVTAvatarEditorViewControllerClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getAVTAvatarEditorViewControllerClass_block_invoke;
      v11[3] = &unk_1E74E7518;
      v11[4] = &v12;
      __getAVTAvatarEditorViewControllerClass_block_invoke(v11);
      v3 = v13[3];
    }

    v4 = v3;
    _Block_object_dispose(&v12, 8);
    v5 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v6 = [v5 avatarStore];
    v7 = [v3 viewControllerForCreatingAvatarInStore:v6];

    [v7 setDelegate:self];
    [v7 setEditorPresentationContext:1];
    v8 = [v7 navigationItem];
    [v8 _setBackgroundHidden:1];

    v9 = [(CNVisualIdentityPickerViewController *)self photoPickerNavigationControllerForRootController:v7];
    [v9 setModalPresentationStyle:{-[CNVisualIdentityPickerViewController defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
    v10 = [(CNVisualIdentityPickerViewController *)self contactStyle];
    [v9 setModalTransitionStyle:{objc_msgSend(v10, "modalTransitionStyle")}];

    [(CNVisualIdentityPickerViewController *)self sender:0 presentViewController:v9];
  }
}

- (int64_t)defaultModalPresentationStyle
{
  v2 = [(CNVisualIdentityPickerViewController *)self contactStyle];
  if ([v2 shouldPresentInCurrentContext])
  {
    v3 = 3;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v4 userInterfaceIdiom] == 1)
    {
      v3 = 2;
    }

    else
    {
      v3 = -2;
    }
  }

  return v3;
}

- (void)presentVisualIdentityItemEditorForItem:(id)a3 fromViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CNVisualIdentityItemEditorViewController alloc];
  v9 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v10 = [v9 variantsManager];
  v11 = [(CNVisualIdentityItemEditorViewController *)v8 initWithProviderItem:v7 variantsManager:v10];

  [(CNVisualIdentityItemEditorViewController *)v11 setDelegate:self];
  [(CNVisualIdentityPickerViewController *)self presentEditItemViewController:v11 fromViewController:v6];
}

- (void)selectItem:(id)a3 presentFromViewControllerIfNeeded:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 allowsMoveAndScale])
  {
    v7 = [(CNVisualIdentityPickerViewController *)self isEditingOrDuplicatingItem];
    v8 = [(CNVisualIdentityPickerViewController *)self imagePickerController];
    if (v7)
    {
      [v10 originalImageData];
    }

    else
    {
      [v10 imageData];
    }
    v9 = ;
    [v10 cropRect];
    [v8 presentMoveAndScaleForImageData:v9 withCropRect:v6 fromViewController:?];
  }

  else if ([v10 allowsVariants])
  {
    [(CNVisualIdentityPickerViewController *)self presentVisualIdentityItemEditorForItem:v10 fromViewController:v6];
  }
}

- (BOOL)isEditingOrDuplicatingItem
{
  v3 = [(CNVisualIdentityPickerViewController *)self editingProviderItem];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CNVisualIdentityPickerViewController *)self duplicatingProviderItem];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)presentMonogramEditorFromIndexPath:(id)a3
{
  v4 = [(CNVisualIdentityPickerViewController *)self dataSource];
  [objc_opt_class() defaultItemSize];
  v5 = [v4 monogramProviderMonogramItemWithSize:?];

  [(CNVisualIdentityPickerViewController *)self selectItem:v5 presentFromViewControllerIfNeeded:self];
}

- (void)presentEmojiEditor
{
  [objc_opt_class() defaultItemSize];
  v3 = [CNPhotoPickerEmojiProviderItem addNewEmojiProviderItemWithSize:?];
  [(CNVisualIdentityPickerViewController *)self selectItem:v3 presentFromViewControllerIfNeeded:self];
}

- (void)didSelectSuggestionsAddItemAtIndexPath:(id)a3
{
  v10 = a3;
  v4 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v5 = [v4 providerItemAtIndexPath:v10];

  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 addItemType];
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        [(CNVisualIdentityPickerViewController *)self handleAddEmojiItemSelectedWithIndexPath:v10];
      }

      else if (v9 == 3)
      {
        [(CNVisualIdentityPickerViewController *)self presentMonogramEditorFromIndexPath:v10];
      }
    }

    else if (v9)
    {
      if (v9 == 1)
      {
        [(CNVisualIdentityPickerViewController *)self presentLibraryImagePickerForIndexPath:v10];
      }
    }

    else
    {
      [(CNVisualIdentityPickerViewController *)self presentCameraImagePicker];
    }
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v18 = a4;
  v5 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v6 = [v5 providerGroupAtIndexPath:v18];

  v7 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v8 = [v7 isItemAtIndexPathAddItem:v18];

  v9 = [v6 groupType];
  if (v9 <= 1)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    if (v9 != 1)
    {
      goto LABEL_22;
    }

    if (v8)
    {
LABEL_10:
      [(CNVisualIdentityPickerViewController *)self didSelectSuggestionsAddItemAtIndexPath:v18];
      goto LABEL_22;
    }

    v17 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v11 = [v17 providerItemAtIndexPath:v18];

    [(CNVisualIdentityPickerViewController *)self processSelectionForSuggestionsProviderItem:v11 atIndexPath:v18];
    goto LABEL_21;
  }

  switch(v9)
  {
    case 4:
      v10 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v11 = [v10 providerItemAtIndexPath:v18];

      [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:v11];
LABEL_21:

      break;
    case 3:
      if (v8)
      {
        [(CNVisualIdentityPickerViewController *)self handleAddEmojiItemSelectedWithIndexPath:v18];
        break;
      }

      v12 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v11 = [v12 providerItemAtIndexPath:v18];

      [(CNVisualIdentityPickerViewController *)self selectItem:v11 presentFromViewControllerIfNeeded:self];
      goto LABEL_21;
    case 2:
      if (v8)
      {
        [(CNVisualIdentityPickerViewController *)self showAvatarEditorForCreation];
      }

      else
      {
        objc_opt_class();
        v13 = [(CNVisualIdentityPickerViewController *)self dataSource];
        v14 = [v13 providerItemAtIndexPath:v18];
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if (v16)
        {
          [(CNVisualIdentityPickerViewController *)self showAvatarPosePickerFromItem:v16 atIndexPath:v18];
        }
      }

      break;
  }

LABEL_22:
}

- (void)headerActionPressedAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v6 = [v5 providerGroupAtIndexPath:v4];

  if ([v6 groupType] == 2)
  {
    v7 = [(CNVisualIdentityPickerViewController *)self dataSource];
    [v7 updateGroupCollapsedStateForSection:{objc_msgSend(v4, "section")}];

    v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v4, "section")}];
    v9 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__CNVisualIdentityPickerViewController_headerActionPressedAtIndexPath___block_invoke;
    v11[3] = &unk_1E74E77C0;
    v11[4] = self;
    v12 = v8;
    v10 = v8;
    [v9 performWithoutAnimation:v11];
  }
}

void __71__CNVisualIdentityPickerViewController_headerActionPressedAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadSections:*(a1 + 40)];
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *MEMORY[0x1E69DDC08];
  if (*MEMORY[0x1E69DDC08] != v10)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [v24 handleFailureInMethod:a2 object:self file:@"CNVisualIdentityPickerViewController.m" lineNumber:1005 description:{@"%@ asked to provide a supplementary element for an unsupported kind %@ at %@", v26, v10, v11}];
  }

  v13 = +[CNPhotoPickerSectionHeader reusableIdentifier];
  v14 = [v9 dequeueReusableSupplementaryViewOfKind:v12 withReuseIdentifier:v13 forIndexPath:v11];

  v15 = [(CNVisualIdentityPickerViewController *)self contactStyle];
  [v14 updateStyle:v15];

  v16 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v17 = [v16 titleForSection:{objc_msgSend(v11, "section")}];

  v18 = [v14 titleLabel];
  [v18 setText:v17];

  v19 = [v14 actionButton];
  v20 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v21 = [v20 actionTitleForSection:{objc_msgSend(v11, "section")}];
  [v19 setTitle:v21 forState:0];

  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __101__CNVisualIdentityPickerViewController_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke;
  v27[3] = &unk_1E74E6D30;
  objc_copyWeak(&v29, &location);
  v22 = v11;
  v28 = v22;
  [v14 setActionBlock:v27];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

  return v14;
}

void __101__CNVisualIdentityPickerViewController_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained headerActionPressedAtIndexPath:*(a1 + 32)];
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = a3;
  v8 = [v7 collectionViewLayout];
  [v8 sectionInset];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [MEMORY[0x1E69DC938] currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v19 = [(CNVisualIdentityPickerViewController *)self view];
  v20 = [v19 traitCollection];
  v21 = [v20 horizontalSizeClass];

  v22 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v23 = [v22 providerGroupAtSection:a5];

  v24 = [v23 groupType];
  if (v18 || v21 != 1)
  {
    if (!v24)
    {
      v31 = [v7 numberOfItemsInSection:a5];
      [v8 itemSize];
      v33 = v32 * v31;
      [v8 minimumInteritemSpacing];
      v35 = v34 * (v31 + -1.0);
      [v7 bounds];
      v37 = v36;
      v38 = [(CNVisualIdentityPickerViewController *)self view];
      [v38 safeAreaInsets];
      v40 = v39;
      v41 = [(CNVisualIdentityPickerViewController *)self view];
      [v41 safeAreaInsets];
      v43 = v37 - (v40 + v42);

      v16 = (v43 - (v33 + v35)) * 0.5;
      v12 = v16;
    }
  }

  else
  {
    if (v24 == 1)
    {
      v25 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v26 = [v25 providerGroupAtSection:a5 - 1];

      if (![v26 groupType])
      {
        [v8 minimumInteritemSpacing];
        v10 = v27 * 0.5;
      }
    }

    if (![v23 groupType])
    {
      v28 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v29 = [v28 providerGroupAtSection:a5 + 1];

      if ([v29 groupType] == 1)
      {
        [v8 minimumInteritemSpacing];
        v14 = v30 * 0.5;
      }
    }
  }

  v44 = v10;
  v45 = v12;
  v46 = v14;
  v47 = v16;
  result.right = v47;
  result.bottom = v46;
  result.left = v45;
  result.top = v44;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  if ([a3 numberOfItemsInSection:{a5, a4}] < 0)
  {
    v16 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v7 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v8 = [v7 providerGroupAtSection:a5];

    v9 = [v8 groupType];
    v10 = [v8 groupType];
    v11 = [v8 groupType];
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (!v9 || (!v13 ? (v14 = v10 == 1) : (v14 = 0), !v14 ? (v15 = v11 == 4) : (v15 = 1), v15))
    {
      v16 = *MEMORY[0x1E695F060];
      v17 = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      v16 = 0.0;
      if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
      {
        v20 = [(CNVisualIdentityPickerViewController *)self dataSource];
        v21 = [v20 actionTitleForSection:a5];
        +[CNPhotoPickerSectionHeader heightNeededForAccessibilityLayoutIncludingActionButton:](CNPhotoPickerSectionHeader, "heightNeededForAccessibilityLayoutIncludingActionButton:", [v21 length] != 0);
        v17 = v22;
      }

      else
      {
        *&v17 = 44.0;
      }
    }
  }

  v18 = v16;
  v19 = *&v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
  v9 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v10 = [v9 providerItemAtIndexPath:v7];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v13 = [v12 providerGroupAtIndexPath:v7];

  if (isKindOfClass)
  {
    v14 = [v8 stringByAppendingFormat:@"-Add"];

    v8 = v14;
  }

  v15 = [v6 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:{v7, v6}];
  v16 = [MEMORY[0x1E696AFB0] UUID];
  [v15 setDisplaySessionUUID:v16];
  v17 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v18 = [v17 activePhotoIndexPath];
  [v15 setSelected:{objc_msgSend(v7, "isEqual:", v18)}];

  if (isKindOfClass & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v19 = [(CNVisualIdentityPickerViewController *)self view];
    v20 = [v19 tintColor];
    [v10 updateTintColorIfNeeded:v20];

    [v15 setDisplaysBorder:1];
    v21 = [(CNVisualIdentityPickerViewController *)self view];
    v22 = [v21 tintColor];
    [v15 updateBorderTintColor:v22];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __78__CNVisualIdentityPickerViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v29[3] = &unk_1E74E44A0;
  v23 = v15;
  v30 = v23;
  v24 = v16;
  v31 = v24;
  v32 = &v33;
  [v10 thumbnailViewWithCompletion:v29];
  [v23 setCellStyle:{(objc_msgSend(v13, "groupType") != 2) | (isKindOfClass & 1)}];
  *(v34 + 24) = 0;
  v25 = v31;
  v26 = v23;

  _Block_object_dispose(&v33, 8);

  return v26;
}

void __78__CNVisualIdentityPickerViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) displaySessionUUID];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    [*(a1 + 32) updateWithView:v5 animation:*(*(*(a1 + 48) + 8) + 24) ^ 1];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v6 = [v5 numberOfItemsInSection:a4];

  return v6;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v4 = [v3 numberOfSections];

  return v4;
}

- (id)contactImageForCurrentActiveItem
{
  v3 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v4 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v5 = [v4 activePhotoIndexPath];
  v6 = [v3 providerItemAtIndexPath:v5];

  v7 = [v6 contactImageForMetadataStore];

  return v7;
}

- (void)setSuggestionsProviderItemAsActiveItem:(id)a3
{
  v5 = a3;
  [(CNVisualIdentityPickerViewController *)self deleteExistingItem:v5];
  v4 = [(CNVisualIdentityPickerViewController *)self insertNewItem:v5 toGroupType:1 updateActive:1];
}

- (void)deleteExistingItem:(id)a3
{
  v4 = a3;
  v5 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v6 = [v5 removeItem:v4];

  if (v6)
  {
    v7 = MEMORY[0x1E69DD250];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__CNVisualIdentityPickerViewController_deleteExistingItem___block_invoke;
    v8[3] = &unk_1E74E77C0;
    v8[4] = self;
    v9 = v6;
    [v7 performWithoutAnimation:v8];
  }
}

void __59__CNVisualIdentityPickerViewController_deleteExistingItem___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) collectionView];
  v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
  [v3 reloadSections:v2];
}

- (id)insertNewItem:(id)a3 toGroupType:(int64_t)a4 updateActive:(BOOL)a5 scrollToItem:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v12 = [v11 indexOfAddedItem:v10 inGroupOfType:a4];

  if (v12)
  {
    v13 = MEMORY[0x1E69DD250];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __92__CNVisualIdentityPickerViewController_insertNewItem_toGroupType_updateActive_scrollToItem___block_invoke;
    v21 = &unk_1E74E77C0;
    v22 = self;
    v14 = v12;
    v23 = v14;
    [v13 performWithoutAnimation:&v18];
    if (v6)
    {
      v15 = [(CNVisualIdentityPickerViewController *)self collectionView:v18];
      [v15 scrollToItemAtIndexPath:v14 atScrollPosition:2 animated:1];
    }

    if (v7)
    {
      [(CNVisualIdentityPickerViewController *)self updateActiveIndexPath:v14];
    }

    v16 = v14;
  }

  return v12;
}

void __92__CNVisualIdentityPickerViewController_insertNewItem_toGroupType_updateActive_scrollToItem___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) collectionView];
  v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
  [v3 reloadSections:v2];
}

- (void)insertNewItemIntoSuggestions:(id)a3
{
  v4 = a3;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __69__CNVisualIdentityPickerViewController_insertNewItemIntoSuggestions___block_invoke;
  v14 = &unk_1E74E77C0;
  v15 = self;
  v16 = v4;
  v5 = v4;
  v6 = _Block_copy(&v11);
  if ([(CNVisualIdentityPickerViewController *)self isViewLoaded:v11])
  {
    v6[2](v6);
  }

  else
  {
    v7 = [(CNVisualIdentityPickerViewController *)self pendingInjectedSuggestionItems];
    v8 = [v6 copy];
    v9 = _Block_copy(v8);
    v10 = [v7 arrayByAddingObject:v9];
    [(CNVisualIdentityPickerViewController *)self setPendingInjectedSuggestionItems:v10];
  }
}

- (void)updateHeaderViewAvatar
{
  v3 = [(CNVisualIdentityPickerViewController *)self headerView];
  v4 = [v3 placeholderProviderItem];
  if (v4)
  {
    v5 = v4;
LABEL_3:

    goto LABEL_5;
  }

  v6 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  v7 = [v6 identityType];

  if (!v7)
  {
    v9 = [(CNVisualIdentityPickerViewController *)self dataSource];
    [objc_opt_class() defaultItemSize];
    v3 = [v9 monogramProviderDefaultItemWithSize:?];

    v5 = [(CNVisualIdentityPickerViewController *)self headerView];
    [v5 setPlaceholderProviderItem:v3];
    goto LABEL_3;
  }

LABEL_5:
  v10 = [(CNVisualIdentityPickerViewController *)self headerView];
  v8 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  [v10 updatePhotoViewWithUpdatedIdentity:v8];
}

- (void)updateDoneButtonEnabledStateForEditingProviderItem:(id)a3
{
  v4 = [(CNVisualIdentityPickerViewController *)self hasPendingChanges];
  v6 = [(CNVisualIdentityPickerViewController *)self navigationItem];
  v5 = [v6 rightBarButtonItem];
  [v5 setEnabled:v4];
}

- (void)updateInjectedItemsSectionForProviderItem:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v6 = [v5 sectionIndexForProviderGroupType:4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v8 = [v7 injectedItemsGroup];
    [v8 removeAllAddedProviderItems];

    if (v4)
    {
      v30 = v6;
      v9 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v10 = [v9 variantsManager];
      v31 = v4;
      v11 = [v4 createVariantsItemsWithVariantsManager:v10];
      v12 = [v11 _cn_reversed];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v12;
      v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        v16 = *MEMORY[0x1E6996570];
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v35 + 1) + 8 * i);
            v19 = &unk_1F0DD51E0;
            if ([v18 conformsToProtocol:v19])
            {
              v20 = v18;
            }

            else
            {
              v20 = 0;
            }

            v21 = v20;

            if (!v21 || ([v21 itemText], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "_cn_trimmedString"), v23 = self, v24 = objc_claimAutoreleasedReturnValue(), v25 = (*(v16 + 16))(v16, v24), v24, self = v23, v22, v25))
            {
              v26 = [(CNVisualIdentityPickerViewController *)self insertNewItem:v18 toGroupType:4 updateActive:0];
            }
          }

          v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v14);
      }

      v27 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v28 = [v27 injectedItemsGroup];
      v29 = [v28 hasAddedProviderItems];

      if ((v29 & 1) == 0)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __82__CNVisualIdentityPickerViewController_updateInjectedItemsSectionForProviderItem___block_invoke;
        v34[3] = &unk_1E74E4478;
        v34[4] = self;
        v34[5] = v30;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v34];
      }

      v4 = v31;
    }

    else
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __82__CNVisualIdentityPickerViewController_updateInjectedItemsSectionForProviderItem___block_invoke_2;
      v33[3] = &unk_1E74E4478;
      v33[4] = self;
      v33[5] = v6;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v33];
    }
  }
}

void __82__CNVisualIdentityPickerViewController_updateInjectedItemsSectionForProviderItem___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) collectionView];
  v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:*(a1 + 40)];
  [v3 reloadSections:v2];
}

void __82__CNVisualIdentityPickerViewController_updateInjectedItemsSectionForProviderItem___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) collectionView];
  v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:*(a1 + 40)];
  [v3 reloadSections:v2];
}

- (void)updateVisualIdentityWithProviderItem:(id)a3
{
  v5 = a3;
  v4 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  if (v5)
  {
    [v5 updateVisualIdentity:v4];
  }

  else
  {
    [v4 clearImage];
  }

  [(CNVisualIdentityPickerViewController *)self updateHeaderViewAvatar];
  [(CNVisualIdentityPickerViewController *)self updateDoneButtonEnabledState];
}

- (BOOL)hasPendingChanges
{
  v3 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  [v3 cropRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  [v12 cropRect];
  v41.origin.x = v13;
  v41.origin.y = v14;
  v41.size.width = v15;
  v41.size.height = v16;
  v40.origin.x = v5;
  v40.origin.y = v7;
  v40.size.width = v9;
  v40.size.height = v11;
  v17 = CGRectEqualToRect(v40, v41);

  v18 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  v19 = [v18 imageData];
  v20 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v21 = [v20 imageData];

  v22 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  v23 = [v22 thumbnailImageData];
  v24 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v25 = [v24 thumbnailImageData];

  v26 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  v27 = [v26 fullscreenImageData];
  v28 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v29 = [v28 fullscreenImageData];

  v30 = 1;
  if (v17 && v19 == v21)
  {
    v30 = v23 != v25 || v27 != v29;
  }

  v32 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  v33 = [v32 name];
  if (!v33)
  {
    v21 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    v23 = [v21 name];
    if (!v23)
    {
      LOBYTE(v38) = 0;
LABEL_14:

      goto LABEL_15;
    }
  }

  v34 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  v35 = [v34 name];
  v36 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  v37 = [v36 name];
  v38 = [v35 isEqual:v37] ^ 1;

  if (!v33)
  {
    goto LABEL_14;
  }

LABEL_15:

  return (v30 | v38) & 1;
}

- (void)updateActiveIndexPath:(id)a3 reload:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  v6 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v7 = [v6 activePhotoIndexPath];
  v8 = [v7 isEqual:v17];

  if ((v8 & 1) == 0)
  {
    v9 = objc_opt_new();
    v10 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v11 = [v10 activePhotoIndexPath];

    v12 = [(CNVisualIdentityPickerViewController *)self dataSource];
    [v12 setActivePhotoIndexPath:v17];

    if (v17)
    {
      [v9 addObject:v17];
    }

    v13 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v14 = [v13 numberOfItemsInSection:{objc_msgSend(v17, "section")}];
    v15 = [v11 row];

    if (v14 > v15 && v11)
    {
      [v9 addObject:v11];
    }

    if (v4)
    {
      v16 = [(CNVisualIdentityPickerViewController *)self collectionView];
      [v16 reloadItemsAtIndexPaths:v9];
    }
  }
}

- (id)photoPickerNavigationControllerForRootController:(id)a3
{
  v4 = a3;
  v5 = [[CNPhotoPickerNavigationViewController alloc] initWithRootViewController:v4];

  [(CNPhotoPickerNavigationViewController *)v5 setAllowRotation:[(CNVisualIdentityPickerViewController *)self allowRotation]];

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = CNVisualIdentityPickerViewController;
  [(CNVisualIdentityPickerViewController *)&v7 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v6 = [v5 collectionViewLayout];
  [v6 invalidateLayout];
}

- (void)viewDidLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = CNVisualIdentityPickerViewController;
  [(CNVisualIdentityPickerViewController *)&v19 viewDidLayoutSubviews];
  v3 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];

  v5 = objc_opt_class();
  v6 = [(CNVisualIdentityPickerViewController *)self view];
  [v6 bounds];
  [v5 itemsPerRowForWidth:v7];
  v9 = v8;

  v10 = [(CNVisualIdentityPickerViewController *)self view];
  [v10 bounds];
  v12 = (v11 + (v9 + 1.0) * -20.0) / v9;

  v13 = fmin(v12, 90.0);
  [v4 setItemSize:{v13, v13}];
  v14 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v15 = [v14 collectionViewLayout];
  [v15 invalidateLayout];

  v16 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v17 = [v16 itemsPerRow];

  v18 = [(CNVisualIdentityPickerViewController *)self dataSource];
  [v18 setItemsPerRow:v9 requiresFullReload:v9 != v17];
}

- (void)initializeHeaderView
{
  v3 = [CNPhotoPickerHeaderView alloc];
  v6 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  v4 = [(CNPhotoPickerHeaderView *)v3 initWithVisualIdentity:v6];
  headerView = self->_headerView;
  self->_headerView = v4;
}

- (void)buildHeaderView
{
  v24[3] = *MEMORY[0x1E69E9840];
  [(CNVisualIdentityPickerViewController *)self initializeHeaderView];
  v3 = [(CNVisualIdentityPickerViewController *)self headerView];
  [v3 setDelegate:self];

  v4 = [(CNVisualIdentityPickerViewController *)self headerView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(CNVisualIdentityPickerViewController *)self view];
  v6 = [(CNVisualIdentityPickerViewController *)self headerView];
  [v5 addSubview:v6];

  v23 = [(CNVisualIdentityPickerViewController *)self headerView];
  v21 = [v23 topAnchor];
  v22 = [(CNVisualIdentityPickerViewController *)self view];
  v20 = [v22 safeAreaLayoutGuide];
  v19 = [v20 topAnchor];
  v18 = [v21 constraintEqualToAnchor:v19];
  v24[0] = v18;
  v17 = [(CNVisualIdentityPickerViewController *)self headerView];
  v7 = [v17 leadingAnchor];
  v8 = [(CNVisualIdentityPickerViewController *)self view];
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v24[1] = v10;
  v11 = [(CNVisualIdentityPickerViewController *)self headerView];
  v12 = [v11 trailingAnchor];
  v13 = [(CNVisualIdentityPickerViewController *)self view];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v24[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];

  [MEMORY[0x1E696ACD8] activateConstraints:v16];
}

- (void)buildCollectionView
{
  v51[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  [v3 setScrollDirection:0];
  [v3 setSectionHeadersPinToVisibleBounds:1];
  [v3 setSectionInsetReference:1];
  [v3 setSectionInset:{14.0, 20.0, 30.0, 20.0}];
  v50 = v3;
  [v3 setSectionHeadersPinToVisibleBounds:0];
  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v5 = [(CNVisualIdentityPickerViewController *)self view];
  [v5 bounds];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];
  [(CNVisualIdentityPickerViewController *)self setCollectionView:v6];

  v7 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [v7 setDelegate:self];

  v8 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [v8 setDataSource:self];

  v9 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v10 = objc_opt_class();
  v11 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
  [v9 registerClass:v10 forCellWithReuseIdentifier:v11];

  v12 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v13 = objc_opt_class();
  v14 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
  v15 = [v14 stringByAppendingFormat:@"-Add"];
  [v12 registerClass:v13 forCellWithReuseIdentifier:v15];

  v16 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v17 = objc_opt_class();
  v18 = *MEMORY[0x1E69DDC08];
  v19 = +[CNPhotoPickerSectionHeader reusableIdentifier];
  [v16 registerClass:v17 forSupplementaryViewOfKind:v18 withReuseIdentifier:v19];

  v20 = [MEMORY[0x1E69DC888] clearColor];
  v21 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [v21 setBackgroundColor:v20];

  v22 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [v22 setAlwaysBounceVertical:1];

  v23 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [v23 setContentInsetAdjustmentBehavior:2];

  v24 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [v24 setContentInset:{0.0, 20.0, 0.0, 20.0}];

  v25 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  v26 = [(CNVisualIdentityPickerViewController *)self view];
  v27 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v28 = [(CNVisualIdentityPickerViewController *)self headerView];
  [v26 insertSubview:v27 below:v28];

  v29 = [(CNVisualIdentityPickerViewController *)self headerView];
  v49 = [v29 bottomAnchor];

  v48 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v47 = [v48 topAnchor];
  v46 = [v47 constraintEqualToAnchor:v49];
  v51[0] = v46;
  v45 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v43 = [v45 leadingAnchor];
  v44 = [(CNVisualIdentityPickerViewController *)self view];
  v42 = [v44 leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v51[1] = v41;
  v40 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v30 = [v40 trailingAnchor];
  v31 = [(CNVisualIdentityPickerViewController *)self view];
  v32 = [v31 trailingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  v51[2] = v33;
  v34 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v35 = [v34 bottomAnchor];
  v36 = [(CNVisualIdentityPickerViewController *)self view];
  v37 = [v36 bottomAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
  v51[3] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v39];
}

- (double)collectionViewPaddingForCatalyst
{
  v3 = objc_opt_class();
  v4 = [(CNVisualIdentityPickerViewController *)self view];
  [v4 bounds];
  [v3 itemsPerRowForWidth:v5];
  v7 = v6;

  v8 = [(CNVisualIdentityPickerViewController *)self view];
  [v8 bounds];
  v10 = (v9 - ((v7 + -1.0) * 16.0 + v7 * 48.0 + 1.0)) * 0.5;

  return v10;
}

- (void)updateVisualIdentityWithProposedImageData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v20 = v4;
    v6 = [MEMORY[0x1E69DCAB8] imageWithData:v4];
    v7 = v6;
    if (v6)
    {
      [v6 size];
      if (v9 != *MEMORY[0x1E695F060] || v8 != *(MEMORY[0x1E695F060] + 8))
      {
        v11 = MEMORY[0x1E6996738];
        [v7 size];
        v13 = v12;
        [v7 size];
        [v11 centeredSquareCropRectInRect:{0.0, 0.0, v13, v14}];
        v19 = [[CNPhotoPickerProviderItem alloc] initWithImageData:v20 thumbnailImageData:0 fullscreenImageData:0 cropRect:v15, v16, v17, v18];
        [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:v19];
      }
    }

    v5 = v20;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)done:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  [(CNVisualIdentityPickerViewController *)self setShouldUpdateEmojiSuggestions:0];
  v4 = [(CNVisualIdentityPickerViewController *)self headerView];
  [v4 resignFirstResponder];

  v5 = [(CNVisualIdentityPickerViewController *)self contactImageForCurrentActiveItem];
  v6 = [(CNVisualIdentityPickerViewController *)self delegate];
  v7 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  [v6 visualIdentityPicker:self didUpdatePhotoForVisualIdentity:v7 withContactImage:v5];

  v8 = [objc_opt_class() log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    [v9 cropRect];
    v11 = v10;
    v12 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    [v12 cropRect];
    v14 = v13;
    v15 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    [v15 cropRect];
    v17 = v16;
    v18 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    [v18 cropRect];
    v20 = v19;
    v21 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    v22 = [v21 avatarImage];
    [v22 size];
    v24 = v23;
    v25 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    v26 = [v25 avatarImage];
    [v26 size];
    v28 = 134219264;
    v29 = v11;
    v30 = 2048;
    v31 = v14;
    v32 = 2048;
    v33 = v17;
    v34 = 2048;
    v35 = v20;
    v36 = 2048;
    v37 = v24;
    v38 = 2048;
    v39 = v27;
    _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Updated likeness selected with cropRect {%.2f, %.2f, %.2f, %.2f}, image size {%.2f, %.2f}", &v28, 0x3Eu);
  }
}

- (void)cancel:(id)a3
{
  v4 = [(CNVisualIdentityPickerViewController *)self delegate];
  [v4 visualIdentityPickerDidCancel:self];
}

- (void)setUpViews
{
  [(CNVisualIdentityPickerViewController *)self buildHeaderView];
  [(CNVisualIdentityPickerViewController *)self buildCollectionView];
  [objc_opt_class() defaultItemSize];
  v4 = v3;
  v6 = v5;
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [(CNVisualIdentityPickerViewController *)self view];
  v11 = [v10 effectiveUserInterfaceLayoutDirection] == 1;

  v12 = objc_opt_class();
  v13 = [(CNVisualIdentityPickerViewController *)self view];
  [v13 bounds];
  [v12 itemsPerRowForWidth:v14];
  v16 = v15;

  v17 = [(CNVisualIdentityPickerViewController *)self dataSource];
  [v17 loadProviderGroupsItemsForSize:v11 itemsPerRow:v4 scale:v6 RTL:{v16, v9}];

  v18 = [(CNVisualIdentityPickerViewController *)self contactStyle];
  v19 = [v18 backgroundColor];

  if (v19)
  {
    v20 = [(CNVisualIdentityPickerViewController *)self contactStyle];
    v21 = [v20 backgroundColor];
    v22 = [(CNVisualIdentityPickerViewController *)self view];
    [v22 setBackgroundColor:v21];
  }

  else
  {
    v20 = +[CNUIColorRepository photoPickerBackgroundColor];
    v21 = [(CNVisualIdentityPickerViewController *)self view];
    [v21 setBackgroundColor:v20];
  }

  v23 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_confirmCancelAction];
  v24 = [(CNVisualIdentityPickerViewController *)self navigationItem];
  [v24 setLeftBarButtonItem:v23];

  v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
  v26 = [(CNVisualIdentityPickerViewController *)self navigationItem];
  [v26 setRightBarButtonItem:v25];

  v27 = [(CNVisualIdentityPickerViewController *)self navigationItem];
  v28 = [v27 rightBarButtonItem];
  [v28 setEnabled:0];

  v29 = [(CNVisualIdentityPickerViewController *)self navigationItem];
  [v29 setLargeTitleDisplayMode:2];

  v30 = [(CNVisualIdentityPickerViewController *)self navigationController];
  v31 = [v30 presentationController];
  [v31 setDelegate:self];

  v32 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_confirmCancelAction];
  [(CNVisualIdentityPickerViewController *)self addKeyCommand:v32];

  v33 = [(CNVisualIdentityPickerViewController *)self navigationItem];
  [v33 _setBackgroundHidden:1];

  v34 = [(CNVisualIdentityPickerViewController *)self navigationController];
  v35 = [v34 navigationBar];
  LOBYTE(v31) = [v35 isTranslucent];

  if ((v31 & 1) == 0)
  {
    [(CNVisualIdentityPickerViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  }

  [(CNVisualIdentityPickerViewController *)self setShouldUpdateEmojiSuggestions:1];
  v36 = [(CNVisualIdentityPickerViewController *)self proposedImageData];

  if (v36)
  {
    v37 = [(CNVisualIdentityPickerViewController *)self proposedImageData];
    [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProposedImageData:v37];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNVisualIdentityPickerViewController;
  [(CNVisualIdentityPickerViewController *)&v3 viewDidLoad];
  [(CNVisualIdentityPickerViewController *)self setUpViews];
}

- (CNVisualIdentity)pendingVisualIdentity
{
  pendingVisualIdentity = self->_pendingVisualIdentity;
  if (!pendingVisualIdentity)
  {
    v4 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
    v5 = [v4 mutableCopy];
    v6 = self->_pendingVisualIdentity;
    self->_pendingVisualIdentity = v5;

    pendingVisualIdentity = self->_pendingVisualIdentity;
  }

  return pendingVisualIdentity;
}

- (id)visualIdentity
{
  v2 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v3 = [v2 visualIdentity];

  return v3;
}

- (void)setPresenterDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_presenterDelegate, v4);
  [(CNVisualIdentityImagePickerController *)self->_imagePickerController setPresenterDelegate:v4];
}

- (CNVisualIdentityPickerViewController)initWithPhotosDataSource:(id)a3 style:(id)a4 allowRotation:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v23.receiver = self;
  v23.super_class = CNVisualIdentityPickerViewController;
  v11 = [(CNVisualIdentityPickerViewController *)&v23 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataSource, a3);
    [(CNPhotoPickerDataSource *)v12->_dataSource setDelegate:v12];
    objc_storeStrong(&v12->_contactStyle, a4);
    v12->_allowRotation = a5;
    pendingInjectedSuggestionItems = v12->_pendingInjectedSuggestionItems;
    v12->_pendingInjectedSuggestionItems = MEMORY[0x1E695E0F0];

    v14 = [[CNVisualIdentityImagePickerController alloc] initWithContactStyle:v10];
    imagePickerController = v12->_imagePickerController;
    v12->_imagePickerController = v14;

    v16 = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    v17 = [v9 visualIdentity];
    v18 = [v17 contacts];
    v19 = [v18 firstObject];
    -[CNVisualIdentityImagePickerController setIsMeContact:](v12->_imagePickerController, "setIsMeContact:", [v16 isMeContact:v19]);

    [(CNVisualIdentityImagePickerController *)v12->_imagePickerController setDelegate:v12];
    v20 = [(CNVisualIdentityPickerViewController *)v12 presenterDelegate];
    [(CNVisualIdentityImagePickerController *)v12->_imagePickerController setPresenterDelegate:v20];

    v21 = v12;
  }

  return v12;
}

+ (id)imagePickerForVisualIdentity:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNContactViewCache);
  v6 = +[CNPhotoPickerConfiguration defaultConfiguration];
  v7 = [[CNPhotoPickerDataSource alloc] initWithVisualIdentity:v4 contactViewCache:v5 photoPickerConfiguration:v6];

  v8 = [a1 alloc];
  v9 = +[CNContactStyle currentStyle];
  v10 = [v8 initWithPhotosDataSource:v7 style:v9 allowRotation:{objc_msgSend(v6, "allowRotation")}];

  return v10;
}

+ (id)imagePickerForGroupIdentity:(id)a3
{
  v4 = a3;
  v5 = [[CNVisualIdentity alloc] initWithGroupIdentity:v4];
  v6 = [a1 imagePickerForVisualIdentity:v5];
  v7 = [v4 numberOfContacts];

  v8 = CNContactsUIBundle();
  v9 = v8;
  if (v7 >= 2)
  {
    v10 = @"PHOTO_ACTION_SELECT_GROUP";
  }

  else
  {
    v10 = @"PHOTO_ACTION_SELECT_CONTACT";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_1F0CE7398 table:@"Localized"];
  [v6 setAssignActionTitleOverride:v11];

  return v6;
}

+ (id)imagePickerForContact:(id)a3
{
  v4 = a3;
  v5 = [[CNVisualIdentity alloc] initWithContact:v4];

  v6 = [a1 imagePickerForVisualIdentity:v5];

  return v6;
}

+ (double)itemsPerRowForWidth:(double)a3
{
  v3 = a3 <= 460.0;
  result = 4.0;
  if (!v3)
  {
    return 6.0;
  }

  return result;
}

+ (id)navigationControllerForPicker:(id)a3
{
  v3 = a3;
  v4 = [[CNPhotoPickerNavigationViewController alloc] initWithRootViewController:v3];
  v5 = [v3 allowRotation];

  [(CNPhotoPickerNavigationViewController *)v4 setAllowRotation:v5];

  return v4;
}

+ (CGSize)defaultItemSize
{
  v2 = 212.0;
  v3 = 212.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)defaultContentSize
{
  v2 = 624.0;
  v3 = 746.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (BOOL)canShowPhotoPickerForView:(id)a3 withTraitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 window];

  if (v7)
  {
    v8 = [v5 window];
    v9 = [v8 windowScene];
    v10 = [v9 interfaceOrientation];
  }

  else
  {
    [v5 bounds];
    v12 = v11;
    [v5 bounds];
    if (v12 <= v13)
    {
      v10 = 1;
    }

    else
    {
      v10 = 3;
    }
  }

  [v5 bounds];
  v14 = 1;
  if (v15 >= 320.0)
  {
    [v5 bounds];
    v14 = v16 < 454.4;
  }

  if ([v6 userInterfaceIdiom])
  {
    v17 = v14;
  }

  else
  {
    v17 = (v10 - 3) < 2 || v14;
  }

  return !v17;
}

+ (id)log
{
  if (log_cn_once_token_25 != -1)
  {
    dispatch_once(&log_cn_once_token_25, &__block_literal_global_33799);
  }

  v3 = log_cn_once_object_25;

  return v3;
}

uint64_t __43__CNVisualIdentityPickerViewController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNVisualIdentityPicker");
  v1 = log_cn_once_object_25;
  log_cn_once_object_25 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end