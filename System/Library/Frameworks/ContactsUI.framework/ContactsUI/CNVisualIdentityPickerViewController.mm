@interface CNVisualIdentityPickerViewController
+ (BOOL)canShowPhotoPickerForView:(id)view withTraitCollection:(id)collection;
+ (CGSize)defaultContentSize;
+ (CGSize)defaultItemSize;
+ (double)itemsPerRowForWidth:(double)width;
+ (id)descriptorForRequiredKeys;
+ (id)imagePickerForContact:(id)contact;
+ (id)imagePickerForGroupIdentity:(id)identity;
+ (id)imagePickerForVisualIdentity:(id)identity;
+ (id)log;
+ (id)makeDescriptorForRequiredKeys;
+ (id)navigationControllerForPicker:(id)picker;
- (BOOL)hasPendingChanges;
- (BOOL)isEditingOrDuplicatingItem;
- (BOOL)isModalInPresentation;
- (BOOL)isPresentingModalViewController;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CNVisualIdentity)pendingVisualIdentity;
- (CNVisualIdentityPickerPresenterDelegate)presenterDelegate;
- (CNVisualIdentityPickerViewController)initWithPhotosDataSource:(id)source style:(id)style allowRotation:(BOOL)rotation;
- (CNVisualIdentityPickerViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)collectionViewPaddingForCatalyst;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)contactImageForCurrentActiveItem;
- (id)insertNewItem:(id)item toGroupType:(int64_t)type updateActive:(BOOL)active scrollToItem:(BOOL)toItem;
- (id)photoPickerNavigationControllerForRootController:(id)controller;
- (id)visualIdentity;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)defaultModalPresentationStyle;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)avatarEditingManager:(id)manager didFinishWithProviderItem:(id)item;
- (void)avatarEditorViewController:(id)controller didFinishWithAvatarRecord:(id)record;
- (void)avatarEditorViewControllerDidCancel:(id)cancel;
- (void)buildCollectionView;
- (void)buildHeaderView;
- (void)cancel:(id)cancel;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)deleteExistingItem:(id)item;
- (void)deleteItemFromRecentsImageStore:(id)store;
- (void)didCancelEditingProviderItemFromViewController:(id)controller;
- (void)didSelectSuggestionsAddItemAtIndexPath:(id)path;
- (void)done:(id)done;
- (void)editableAvatarViewController:(id)controller didUpdateWithProviderItem:(id)item;
- (void)headerActionPressedAtIndexPath:(id)path;
- (void)imagePickerController:(id)controller didFinishWithProviderItem:(id)item;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)initializeHeaderView;
- (void)insertNewItemIntoSuggestions:(id)suggestions;
- (void)photoPickerActionsViewController:(id)controller didPerformAction:(int64_t)action withProviderItem:(id)item atIndexPath:(id)path;
- (void)photoPickerActionsViewControllerDidFinish:(id)finish;
- (void)photoPickerHeaderView:(id)view didUpdateIdentityNameTextField:(id)field withText:(id)text;
- (void)photoPickerHeaderViewDidReceiveDroppedImageData:(id)data;
- (void)photoPickerHeaderViewDidTapClearAvatarImageButton:(id)button;
- (void)photoPickerProviderGroup:(id)group didUpdateItem:(id)item;
- (void)photoPickerProviderGroupDidUpdate:(id)update requiresFullReload:(BOOL)reload;
- (void)presentActionsViewControllerForProviderItem:(id)item atIndexPath:(id)path;
- (void)presentCameraImagePicker;
- (void)presentDismissConfirmation;
- (void)presentEditItemViewController:(id)controller fromViewController:(id)viewController;
- (void)presentEmojiEditor;
- (void)presentLibraryImagePickerForIndexPath:(id)path;
- (void)presentMonogramEditorFromIndexPath:(id)path;
- (void)presentVisualIdentityItemEditorForItem:(id)item fromViewController:(id)controller;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)reloadItemsForUpdatedSuggestionsGroup:(id)group atSectionIndex:(int64_t)index;
- (void)saveItemToRecentsImageStore:(id)store;
- (void)scrollViewDidScroll:(id)scroll;
- (void)selectItem:(id)item presentFromViewControllerIfNeeded:(id)needed;
- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler;
- (void)sender:(id)sender presentViewController:(id)controller;
- (void)setPresenterDelegate:(id)delegate;
- (void)setSuggestionsProviderItemAsActiveItem:(id)item;
- (void)setUpViews;
- (void)showAvatarCropAndScaleForItem:(id)item fromViewController:(id)controller;
- (void)showAvatarEditorForCreation;
- (void)showAvatarPosePickerFromItem:(id)item atIndexPath:(id)path;
- (void)updateActiveIndexPath:(id)path reload:(BOOL)reload;
- (void)updateActiveIndexPathForUpdatedSuggestionsGroup:(id)group atSectionIndex:(int64_t)index;
- (void)updateDoneButtonEnabledStateForEditingProviderItem:(id)item;
- (void)updateEmojiSuggestionsForUpdatedVisualIdentity:(id)identity locale:(id)locale;
- (void)updateForSelectedProviderItem:(id)item;
- (void)updateHeaderViewAvatar;
- (void)updateInjectedItemsSectionForProviderItem:(id)item;
- (void)updateMonogramsForUpdatedVisualIdentity:(id)identity;
- (void)updateVisualIdentityWithName:(id)name locale:(id)locale;
- (void)updateVisualIdentityWithProposedImageData:(id)data;
- (void)updateVisualIdentityWithProviderItem:(id)item;
- (void)viewController:(id)controller didSelectUpdatedProviderItem:(id)item completionHandler:(id)handler;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CNVisualIdentityPickerViewController

+ (id)descriptorForRequiredKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CNVisualIdentityPickerViewController_descriptorForRequiredKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  descriptorForRequiredKeys = [MEMORY[0x1E6996B90] descriptorForRequiredKeys];
  v4 = *MEMORY[0x1E695C258];
  v15[1] = descriptorForRequiredKeys;
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

- (void)viewController:(id)controller didSelectUpdatedProviderItem:(id)item completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  [(CNVisualIdentityPickerViewController *)self updateForSelectedProviderItem:item];
  v18 = controllerCopy;
  presentedViewController = [(CNVisualIdentityPickerViewController *)self presentedViewController];
  if (presentedViewController)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  presentedViewController2 = [(CNVisualIdentityPickerViewController *)self presentedViewController];
  presentingViewController = [(CNVisualIdentityPickerViewController *)v18 presentingViewController];

  if (presentedViewController2 == presentingViewController || (selfCopy = v18, (isKindOfClass & 1) != 0))
  {
    selfCopy = self;

    objc_opt_class();
    presentedViewController3 = [(CNVisualIdentityPickerViewController *)selfCopy presentedViewController];
    if (objc_opt_isKindOfClass())
    {
      v16 = presentedViewController3;
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

  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:selfCopy completionHandler:handlerCopy];
}

- (void)updateForSelectedProviderItem:(id)item
{
  itemCopy = item;
  visualIdentity = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  identityType = [visualIdentity identityType];

  if (!identityType)
  {
    objc_opt_class();
    v6 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    actionsViewController = v7;

    isGrayMonogramItem = [actionsViewController isGrayMonogramItem];
    monogramText = [actionsViewController monogramText];
    visualIdentity2 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
    abbreviatedName = [visualIdentity2 abbreviatedName];
    v13 = [monogramText isEqualToString:abbreviatedName];

    if (isGrayMonogramItem && v13)
    {
      [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:0];
      [(CNVisualIdentityPickerViewController *)self updateActiveIndexPath:0];
      goto LABEL_14;
    }
  }

  [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:itemCopy];
  if ([(CNVisualIdentityPickerViewController *)self isEditingOrDuplicatingItem])
  {
    editingProviderItem = [(CNVisualIdentityPickerViewController *)self editingProviderItem];

    if (editingProviderItem)
    {
      editingProviderItem2 = [(CNVisualIdentityPickerViewController *)self editingProviderItem];
      [(CNVisualIdentityPickerViewController *)self deleteExistingItem:editingProviderItem2];

      editingProviderItem3 = [(CNVisualIdentityPickerViewController *)self editingProviderItem];
      [(CNVisualIdentityPickerViewController *)self deleteItemFromRecentsImageStore:editingProviderItem3];

      [(CNVisualIdentityPickerViewController *)self setEditingProviderItem:0];
    }

    else
    {
      duplicatingProviderItem = [(CNVisualIdentityPickerViewController *)self duplicatingProviderItem];
      [(CNVisualIdentityPickerViewController *)self deleteExistingItem:duplicatingProviderItem];

      [(CNVisualIdentityPickerViewController *)self setDuplicatingProviderItem:0];
    }
  }

  v18 = [(CNVisualIdentityPickerViewController *)self insertNewItem:itemCopy toGroupType:1 updateActive:1];
  [(CNVisualIdentityPickerViewController *)self saveItemToRecentsImageStore:itemCopy];
  actionsViewController = [(CNVisualIdentityPickerViewController *)self actionsViewController];
  [actionsViewController updateActionsModelWithProviderItem:itemCopy];
LABEL_14:
}

- (void)didCancelEditingProviderItemFromViewController:(id)controller
{
  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:controller];

  [(CNVisualIdentityPickerViewController *)self setEditingProviderItem:0];
}

- (void)presentEditItemViewController:(id)controller fromViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v7 = [(CNVisualIdentityPickerViewController *)self photoPickerNavigationControllerForRootController:controllerCopy];
  [v7 setModalPresentationStyle:-2];
  contactStyle = [(CNVisualIdentityPickerViewController *)self contactStyle];
  [v7 setModalTransitionStyle:{objc_msgSend(contactStyle, "modalTransitionStyle")}];

  [(CNVisualIdentityPickerViewController *)self preferredContentSize];
  [controllerCopy setPreferredContentSize:?];

  presenterDelegate = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
  LOBYTE(contactStyle) = objc_opt_respondsToSelector();

  if (contactStyle)
  {
    presenterDelegate2 = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
    [presenterDelegate2 visualIdentityPicker:self presentViewController:v7];
  }

  else
  {
    [viewControllerCopy presentViewController:v7 animated:1 completion:0];
  }
}

- (void)editableAvatarViewController:(id)controller didUpdateWithProviderItem:(id)item
{
  itemCopy = item;
  imageData = [itemCopy imageData];
  pendingVisualIdentity = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  imageData2 = [pendingVisualIdentity imageData];
  v8 = imageData2;
  if (imageData != imageData2)
  {

LABEL_4:
    pendingVisualIdentity2 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    if (itemCopy)
    {
      [itemCopy updateVisualIdentity:pendingVisualIdentity2];
    }

    else
    {
      [pendingVisualIdentity2 clearImage];
    }

    [(CNVisualIdentityPickerViewController *)self updateInjectedItemsSectionForProviderItem:itemCopy];
    [(CNVisualIdentityPickerViewController *)self updateDoneButtonEnabledStateForEditingProviderItem:itemCopy];
    goto LABEL_8;
  }

  [itemCopy cropRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  pendingVisualIdentity3 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  [pendingVisualIdentity3 cropRect];
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

- (void)scrollViewDidScroll:(id)scroll
{
  headerView = [(CNVisualIdentityPickerViewController *)self headerView];
  [headerView resignFirstResponder];
}

- (void)saveItemToRecentsImageStore:(id)store
{
  v22 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  visualIdentity = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  identifier = [visualIdentity identifier];

  if (identifier)
  {
    contactImageForMetadataStore = [storeCopy contactImageForMetadataStore];
    imageData = [contactImageForMetadataStore imageData];
    if (imageData)
    {
    }

    else
    {
      variant = [contactImageForMetadataStore variant];

      if (!variant)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    v10 = objc_alloc_init(MEMORY[0x1E695CDA8]);
    v11 = MEMORY[0x1E695CD90];
    visualIdentity2 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
    identifier2 = [visualIdentity2 identifier];
    v14 = [v11 requestToCreateImage:contactImageForMetadataStore forContactIdentifier:identifier2];

    v19 = 0;
    [v10 performCreateRequest:v14 error:&v19];
    v15 = v19;
    if (v15)
    {
      identifier4 = [objc_opt_class() log];
      if (os_log_type_enabled(identifier4, OS_LOG_TYPE_INFO))
      {
        visualIdentity3 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
        identifier3 = [visualIdentity3 identifier];
        *buf = 138412290;
        v21 = identifier3;
        _os_log_impl(&dword_199A75000, identifier4, OS_LOG_TYPE_INFO, "Failed to save item to recent image store for contact identifier <%@>", buf, 0xCu);
      }
    }

    else
    {
      identifier4 = [contactImageForMetadataStore identifier];
      [storeCopy setRecentsIdentifier:identifier4];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)deleteItemFromRecentsImageStore:(id)store
{
  storeCopy = store;
  recentsIdentifier = [storeCopy recentsIdentifier];

  if (recentsIdentifier)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CDA8]);
    v6 = MEMORY[0x1E695CD98];
    recentsIdentifier2 = [storeCopy recentsIdentifier];
    v8 = [v6 requestToDeleteImageForIdentifier:recentsIdentifier2];

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

    navigationItem = [(CNVisualIdentityPickerViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    popoverPresentationController = [v6 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:leftBarButtonItem];

    [(CNVisualIdentityPickerViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {

    [(CNVisualIdentityPickerViewController *)self cancel:0];
  }
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  presenterDelegate = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
  [presenterDelegate visualIdentityPicker:self presentationControllerWillDismiss:dismissCopy];
}

- (BOOL)isModalInPresentation
{
  navigationItem = [(CNVisualIdentityPickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  isEnabled = [rightBarButtonItem isEnabled];

  return isEnabled;
}

- (void)avatarEditorViewController:(id)controller didFinishWithAvatarRecord:(id)record
{
  controllerCopy = controller;
  recordCopy = record;
  v8 = [CNPhotoPickerAnimojiProvider providerItemForAvatarRecord:recordCopy];
  v9 = [(CNVisualIdentityPickerViewController *)self insertNewItem:v8 toGroupType:2 updateActive:0];
  objc_initWeak(&location, self);
  presentingViewController = [controllerCopy presentingViewController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__CNVisualIdentityPickerViewController_avatarEditorViewController_didFinishWithAvatarRecord___block_invoke;
  v13[3] = &unk_1E74E7290;
  objc_copyWeak(&v16, &location);
  v11 = v8;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:presentingViewController completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __93__CNVisualIdentityPickerViewController_avatarEditorViewController_didFinishWithAvatarRecord___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained showAvatarPosePickerFromItem:*(a1 + 32) atIndexPath:*(a1 + 40)];
}

- (void)avatarEditorViewControllerDidCancel:(id)cancel
{
  presentingViewController = [cancel presentingViewController];
  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:presentingViewController];
}

- (void)avatarEditingManager:(id)manager didFinishWithProviderItem:(id)item
{
  itemCopy = item;
  viewController = [manager viewController];
  if (itemCopy)
  {
    navigationController = [viewController navigationController];
    [(CNVisualIdentityPickerViewController *)self selectItem:itemCopy presentFromViewControllerIfNeeded:navigationController];
  }

  else
  {
    navigationController = [viewController presentingViewController];
    [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:navigationController];
  }
}

- (void)photoPickerActionsViewControllerDidFinish:(id)finish
{
  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:finish];
  [(CNVisualIdentityPickerViewController *)self setEditingProviderItem:0];
  [(CNVisualIdentityPickerViewController *)self setDuplicatingProviderItem:0];

  [(CNVisualIdentityPickerViewController *)self setActionsViewController:0];
}

- (void)photoPickerActionsViewController:(id)controller didPerformAction:(int64_t)action withProviderItem:(id)item atIndexPath:(id)path
{
  controllerCopy = controller;
  itemCopy = item;
  pathCopy = path;
  if (action > 1)
  {
    if (action == 2)
    {
      v14 = [itemCopy copy];
      actionsViewController = [(CNVisualIdentityPickerViewController *)self actionsViewController];
      [actionsViewController updateActionsModelWithProviderItem:v14];

      [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:v14];
      v31 = [(CNVisualIdentityPickerViewController *)self insertNewItem:v14 toGroupType:1 updateActive:1];
      [(CNVisualIdentityPickerViewController *)self setDuplicatingProviderItem:v14];
      [(CNVisualIdentityPickerViewController *)self selectItem:v14 presentFromViewControllerIfNeeded:controllerCopy];
    }

    else
    {
      if (action != 3)
      {
        goto LABEL_38;
      }

      [(CNVisualIdentityPickerViewController *)self deleteExistingItem:itemCopy];
      dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
      v14 = [dataSource providerItemAtIndexPath:pathCopy];

      dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
      activePhotoIndexPath = [dataSource2 activePhotoIndexPath];

      if (activePhotoIndexPath == pathCopy)
      {
        dataSource3 = [(CNVisualIdentityPickerViewController *)self dataSource];
        v19 = [dataSource3 providerGroupAtIndexPath:pathCopy];

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
          v24 = pathCopy;
        }

        else if (v22)
        {
          v24 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v22 inSection:{"indexForDefaultMonogram"), 0}];
          dataSource4 = [(CNVisualIdentityPickerViewController *)self dataSource];
          v23 = [dataSource4 providerItemAtIndexPath:pathCopy];
        }

        else
        {
          v24 = 0;
          v23 = 0;
        }

        [(CNVisualIdentityPickerViewController *)self updateActiveIndexPath:v24 reload:0];
        [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:v23];
      }

      recentsIdentifier = [itemCopy recentsIdentifier];

      if (recentsIdentifier)
      {
        [(CNVisualIdentityPickerViewController *)self deleteItemFromRecentsImageStore:itemCopy];
      }

      if (v14)
      {
        [controllerCopy performDeleteTransitionToItem:v14];
      }

      else
      {
        [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:controllerCopy];
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (action)
  {
    if (action != 1)
    {
      goto LABEL_38;
    }

    [(CNVisualIdentityPickerViewController *)self setEditingProviderItem:itemCopy];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(CNVisualIdentityPickerViewController *)self selectItem:itemCopy presentFromViewControllerIfNeeded:controllerCopy];
      goto LABEL_38;
    }

    objc_opt_class();
    v12 = itemCopy;
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
      [(CNVisualIdentityPickerViewController *)self showAvatarCropAndScaleForItem:v14 fromViewController:controllerCopy];
    }

    goto LABEL_37;
  }

  objc_opt_class();
  dataSource5 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v26 = [dataSource5 providerGroupAtIndexPath:pathCopy];
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  indexForDefaultMonogram = [v28 indexForDefaultMonogram];
  if ([pathCopy row] == indexForDefaultMonogram)
  {
    [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:itemCopy];
    [(CNVisualIdentityPickerViewController *)self updateActiveIndexPath:pathCopy];
  }

  else
  {
    dataSource6 = [(CNVisualIdentityPickerViewController *)self dataSource];
    activePhotoIndexPath2 = [dataSource6 activePhotoIndexPath];

    if (activePhotoIndexPath2 != pathCopy)
    {
      [(CNVisualIdentityPickerViewController *)self setSuggestionsProviderItemAsActiveItem:itemCopy];
      [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:itemCopy];
    }
  }

  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:controllerCopy];
LABEL_38:
}

- (void)presentActionsViewControllerForProviderItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  v8 = [dataSource providerGroupAtIndexPath:pathCopy];

  groupType = [v8 groupType];
  if (groupType == 3)
  {
    v21 = [CNPhotoPickerActionsModel alloc];
    assignActionTitleOverride = [(CNVisualIdentityPickerViewController *)self assignActionTitleOverride];
    v18 = v21;
    v19 = itemCopy;
    v20 = assignActionTitleOverride;
    v17 = 0;
  }

  else
  {
    if (groupType != 1)
    {
      goto LABEL_9;
    }

    objc_opt_class();
    dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v11 = [dataSource2 providerGroupAtIndexPath:pathCopy];
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    indexForDefaultMonogram = [v13 indexForDefaultMonogram];
    v15 = [CNPhotoPickerActionsModel alloc];
    assignActionTitleOverride = [(CNVisualIdentityPickerViewController *)self assignActionTitleOverride];
    v17 = [pathCopy row] > indexForDefaultMonogram;
    v18 = v15;
    v19 = itemCopy;
    v20 = assignActionTitleOverride;
  }

  v22 = [(CNPhotoPickerActionsModel *)v18 initWithProviderItem:v19 assignActionTitleOverride:v20 canDelete:v17 atIndexPath:pathCopy];

  v23 = [[CNPhotoPickerActionsViewController alloc] initWithActionsModel:v22];
  [(CNPhotoPickerActionsViewController *)v23 setDelegate:self];
  [(CNVisualIdentityPickerViewController *)self setActionsViewController:v23];
  v24 = [(CNVisualIdentityPickerViewController *)self photoPickerNavigationControllerForRootController:v23];
  [v24 setModalPresentationStyle:{-[CNVisualIdentityPickerViewController defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
  contactStyle = [(CNVisualIdentityPickerViewController *)self contactStyle];
  [v24 setModalTransitionStyle:{objc_msgSend(contactStyle, "modalTransitionStyle")}];

  [(CNVisualIdentityPickerViewController *)self sender:0 presentViewController:v24];
LABEL_9:
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:cancel];
  [(CNVisualIdentityPickerViewController *)self setActionsViewController:0];

  [(CNVisualIdentityPickerViewController *)self setEditingProviderItem:0];
}

- (void)imagePickerController:(id)controller didFinishWithProviderItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  getPHPickerViewControllerClass();
  objc_opt_class();
  presentingViewController = [controllerCopy presentingViewController];
  if (objc_opt_isKindOfClass())
  {
    v9 = presentingViewController;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (itemCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__CNVisualIdentityPickerViewController_imagePickerController_didFinishWithProviderItem___block_invoke;
    aBlock[3] = &unk_1E74E77C0;
    aBlock[4] = self;
    v23 = itemCopy;
    v11 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __88__CNVisualIdentityPickerViewController_imagePickerController_didFinishWithProviderItem___block_invoke_2;
    v19[3] = &unk_1E74E6DD0;
    v20 = v10;
    v21 = v11;
    v12 = v10;
    v13 = v11;
    [controllerCopy dismissViewControllerAnimated:1 completion:v19];

    v14 = v23;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__CNVisualIdentityPickerViewController_imagePickerController_didFinishWithProviderItem___block_invoke_3;
    v16[3] = &unk_1E74E77C0;
    v17 = v10;
    selfCopy = self;
    v15 = v10;
    [(CNVisualIdentityPickerViewController *)self sender:0 dismissViewController:controllerCopy completionHandler:v16];
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
  presentedViewController = [(CNVisualIdentityPickerViewController *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  presenterDelegate = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    presenterDelegate2 = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
    [presenterDelegate2 visualIdentityPicker:self dismissViewController:controllerCopy];
  }

  else
  {
    [controllerCopy dismissViewControllerAnimated:1 completion:handlerCopy];
  }
}

- (void)sender:(id)sender presentViewController:(id)controller
{
  senderCopy = sender;
  controllerCopy = controller;
  contactStyle = [(CNVisualIdentityPickerViewController *)self contactStyle];
  [controllerCopy setModalTransitionStyle:{objc_msgSend(contactStyle, "modalTransitionStyle")}];

  v22 = senderCopy;
  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setSourceView:v22];

  [v22 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  popoverPresentationController2 = [controllerCopy popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v11, v13, v15, v17}];

  popoverPresentationController3 = [controllerCopy popoverPresentationController];
  [popoverPresentationController3 setPermittedArrowDirections:15];

  [(CNVisualIdentityPickerViewController *)self preferredContentSize];
  [controllerCopy setPreferredContentSize:?];
  presenterDelegate = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
  LOBYTE(contactStyle) = objc_opt_respondsToSelector();

  if (contactStyle)
  {
    presenterDelegate2 = [(CNVisualIdentityPickerViewController *)self presenterDelegate];
    [presenterDelegate2 visualIdentityPicker:self presentViewController:controllerCopy];
  }

  else
  {
    [(CNVisualIdentityPickerViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }
}

- (void)updateEmojiSuggestionsForUpdatedVisualIdentity:(id)identity locale:(id)locale
{
  identityCopy = identity;
  localeCopy = locale;
  if ([(CNVisualIdentityPickerViewController *)self shouldUpdateEmojiSuggestions])
  {
    name = [identityCopy name];
    dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
    variantsManager = [dataSource variantsManager];
    [objc_opt_class() defaultItemSize];
    v11 = [CNPhotoPickerEmojiProviderItem suggestedEmojiItemsForString:name variantsManager:variantsManager size:localeCopy locale:?];

    dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v13 = [dataSource2 uniqueEmojiSuggestionItems:v11];

    if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
    {
      dataSource3 = [(CNVisualIdentityPickerViewController *)self dataSource];
      emojiSuggestionItems = [dataSource3 emojiSuggestionItems];
      v16 = [emojiSuggestionItems count];

      if (v16 <= 2)
      {
        v20 = [v13 _cn_takeLast:3 - v16];

        dataSource4 = [(CNVisualIdentityPickerViewController *)self dataSource];
        emojiSuggestionItems2 = [dataSource4 emojiSuggestionItems];
        v23 = [emojiSuggestionItems2 arrayByAddingObjectsFromArray:v20];
        dataSource5 = [(CNVisualIdentityPickerViewController *)self dataSource];
        [dataSource5 setEmojiSuggestionItems:v23];

        v13 = v20;
      }

      else
      {
        dataSource6 = [(CNVisualIdentityPickerViewController *)self dataSource];
        emojiSuggestionItems3 = [dataSource6 emojiSuggestionItems];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __94__CNVisualIdentityPickerViewController_updateEmojiSuggestionsForUpdatedVisualIdentity_locale___block_invoke;
        v30[3] = &unk_1E74E4560;
        v30[4] = self;
        [emojiSuggestionItems3 _cn_each:v30];

        dataSource7 = [(CNVisualIdentityPickerViewController *)self dataSource];
        [dataSource7 setEmojiSuggestionItems:v13];
      }

      dataSource8 = [(CNVisualIdentityPickerViewController *)self dataSource];
      dataSource9 = [(CNVisualIdentityPickerViewController *)self dataSource];
      activePhotoIndexPath = [dataSource9 activePhotoIndexPath];
      v28 = [dataSource8 providerItemAtIndexPath:activePhotoIndexPath];

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

- (void)updateMonogramsForUpdatedVisualIdentity:(id)identity
{
  identityCopy = identity;
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  suggestionsGroup = [dataSource suggestionsGroup];

  [objc_opt_class() defaultItemSize];
  v7 = v6;
  v9 = v8;
  view = [(CNVisualIdentityPickerViewController *)self view];
  v11 = [view effectiveUserInterfaceLayoutDirection] == 1;

  [suggestionsGroup reloadMonogramProviderGroupWithVisualIdentity:identityCopy size:v11 RTL:{v7, v9}];
}

- (void)updateVisualIdentityWithName:(id)name locale:(id)locale
{
  nameCopy = name;
  localeCopy = locale;
  pendingVisualIdentity = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  canUpdateGroupName = [pendingVisualIdentity canUpdateGroupName];

  if (canUpdateGroupName)
  {
    pendingVisualIdentity2 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    abbreviatedName = [pendingVisualIdentity2 abbreviatedName];

    pendingVisualIdentity3 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    [pendingVisualIdentity3 updateGroupName:nameCopy];

    pendingVisualIdentity4 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    [(CNVisualIdentityPickerViewController *)self updateEmojiSuggestionsForUpdatedVisualIdentity:pendingVisualIdentity4 locale:localeCopy];

    pendingVisualIdentity5 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    abbreviatedName2 = [pendingVisualIdentity5 abbreviatedName];
    v15 = [abbreviatedName isEqualToString:abbreviatedName2];

    v16 = *MEMORY[0x1E6996570];
    pendingVisualIdentity6 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    abbreviatedName3 = [pendingVisualIdentity6 abbreviatedName];
    v19 = (*(v16 + 16))(v16, abbreviatedName3);

    if ((v15 & 1) == 0 && v19)
    {
      pendingVisualIdentity7 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
      [(CNVisualIdentityPickerViewController *)self updateMonogramsForUpdatedVisualIdentity:pendingVisualIdentity7];
    }
  }
}

- (void)photoPickerHeaderViewDidReceiveDroppedImageData:(id)data
{
  v4 = MEMORY[0x1E69DCAB8];
  dataCopy = data;
  v19 = [[v4 alloc] initWithData:dataCopy];
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
  v18 = [[CNPhotoPickerProviderItem alloc] initWithImageData:dataCopy thumbnailImageData:0 fullscreenImageData:0 cropRect:v14, v15, v16, v17];

  if ([(CNPhotoPickerProviderItem *)v18 allowsVariants])
  {
    [(CNVisualIdentityPickerViewController *)self presentVisualIdentityItemEditorForItem:v18 fromViewController:self];
  }
}

- (void)photoPickerHeaderViewDidTapClearAvatarImageButton:(id)button
{
  [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:0];
  [(CNVisualIdentityPickerViewController *)self updateInjectedItemsSectionForProviderItem:0];

  [(CNVisualIdentityPickerViewController *)self updateActiveIndexPath:0];
}

- (void)photoPickerHeaderView:(id)view didUpdateIdentityNameTextField:(id)field withText:(id)text
{
  textCopy = text;
  textInputMode = [field textInputMode];
  primaryLanguage = [textInputMode primaryLanguage];

  v9 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:primaryLanguage];
  [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithName:textCopy locale:v9];

  [(CNVisualIdentityPickerViewController *)self updateDoneButtonEnabledState];
}

- (void)updateActiveIndexPathForUpdatedSuggestionsGroup:(id)group atSectionIndex:(int64_t)index
{
  groupCopy = group;
  pendingVisualIdentity = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  imageData = [pendingVisualIdentity imageData];

  objc_opt_class();
  v13 = groupCopy;
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
    if (imageData)
    {
      dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
      v12 = [dataSource findActiveIndexPathInGroup:v13 withImageData:imageData];
    }

    else
    {
      v12 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v10 inSection:{"indexForDefaultMonogram"), index}];
    }
  }

  else
  {
    v12 = 0;
  }

  [(CNVisualIdentityPickerViewController *)self updateActiveIndexPath:v12];
}

- (void)reloadItemsForUpdatedSuggestionsGroup:(id)group atSectionIndex:(int64_t)index
{
  groupCopy = group;
  collectionView = [(CNVisualIdentityPickerViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__CNVisualIdentityPickerViewController_reloadItemsForUpdatedSuggestionsGroup_atSectionIndex___block_invoke;
  v19[3] = &unk_1E74E44C8;
  indexCopy = index;
  v9 = groupCopy;
  v20 = v9;
  v10 = [indexPathsForVisibleItems _cn_filter:v19];

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    collectionView2 = [(CNVisualIdentityPickerViewController *)self collectionView];
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:index];
    [collectionView2 reloadSections:v12];
  }

  else
  {
    dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
    v14 = [dataSource indexPathsToReloadForUpdatedGroup:v9];

    collectionView3 = [(CNVisualIdentityPickerViewController *)self collectionView];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93__CNVisualIdentityPickerViewController_reloadItemsForUpdatedSuggestionsGroup_atSectionIndex___block_invoke_2;
    v16[3] = &unk_1E74E6EE8;
    v16[4] = self;
    v17 = v10;
    v18 = v14;
    collectionView2 = v14;
    [collectionView3 performBatchUpdates:v16 completion:0];
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

- (void)photoPickerProviderGroup:(id)group didUpdateItem:(id)item
{
  v13[1] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  itemCopy = item;
  if ([(CNVisualIdentityPickerViewController *)self isViewLoaded])
  {
    if ([groupCopy groupType] == 1)
    {
      dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
      imageData = [itemCopy imageData];
      v10 = [dataSource findActiveIndexPathInGroup:groupCopy withImageData:imageData];

      if (v10)
      {
        collectionView = [(CNVisualIdentityPickerViewController *)self collectionView];
        v13[0] = v10;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
        [collectionView reloadItemsAtIndexPaths:v12];
      }
    }

    else
    {
      [(CNVisualIdentityPickerViewController *)self photoPickerProviderGroupDidUpdate:groupCopy requiresFullReload:0];
    }
  }
}

- (void)photoPickerProviderGroupDidUpdate:(id)update requiresFullReload:(BOOL)reload
{
  reloadCopy = reload;
  updateCopy = update;
  if ([(CNVisualIdentityPickerViewController *)self isViewLoaded])
  {
    dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
    v7 = [dataSource sectionIndexForProviderGroup:updateCopy];

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      groupType = [updateCopy groupType];
      if ((groupType - 2) >= 2)
      {
        if (groupType == 1)
        {
          if (reloadCopy)
          {
            collectionView = [(CNVisualIdentityPickerViewController *)self collectionView];
            [collectionView reloadData];
          }

          else
          {
            [(CNVisualIdentityPickerViewController *)self reloadItemsForUpdatedSuggestionsGroup:updateCopy atSectionIndex:v7];
          }

          [(CNVisualIdentityPickerViewController *)self updateActiveIndexPathForUpdatedSuggestionsGroup:updateCopy atSectionIndex:v7];
          v11 = *MEMORY[0x1E6996530];
          pendingInjectedSuggestionItems = [(CNVisualIdentityPickerViewController *)self pendingInjectedSuggestionItems];
          LOBYTE(v11) = (*(v11 + 16))(v11, pendingInjectedSuggestionItems);

          if ((v11 & 1) == 0)
          {
            pendingInjectedSuggestionItems2 = [(CNVisualIdentityPickerViewController *)self pendingInjectedSuggestionItems];
            [pendingInjectedSuggestionItems2 _cn_each:&__block_literal_global_279];

            [(CNVisualIdentityPickerViewController *)self setPendingInjectedSuggestionItems:MEMORY[0x1E695E0F0]];
          }
        }
      }

      else
      {
        collectionView2 = [(CNVisualIdentityPickerViewController *)self collectionView];
        [collectionView2 reloadData];
      }
    }
  }
}

- (void)presentCameraImagePicker
{
  if (+[CNPhotoPickerCapabilities allowsCameraAccess])
  {
    imagePickerController = [(CNVisualIdentityPickerViewController *)self imagePickerController];
    [imagePickerController presentCameraImagePickerFromViewController:self];
  }
}

- (void)presentLibraryImagePickerForIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(CNVisualIdentityPickerViewController *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];

  imagePickerController = [(CNVisualIdentityPickerViewController *)self imagePickerController];
  [imagePickerController presentPhotoLibraryPickerFromViewController:self sourceView:v7];
}

- (void)showAvatarCropAndScaleForItem:(id)item fromViewController:(id)controller
{
  controllerCopy = controller;
  itemCopy = item;
  v8 = [CNAvatarEditingManager alloc];
  avatarRecord = [itemCopy avatarRecord];
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  variantsManager = [dataSource variantsManager];
  v14 = [(CNAvatarEditingManager *)v8 initForEditingWithAvatarRecord:avatarRecord variantsManager:variantsManager fromViewController:controllerCopy];

  [v14 setDelegate:self];
  [v14 setOriginalItem:itemCopy];
  [(CNVisualIdentityPickerViewController *)self setAvatarEditingManager:v14];
  v12 = [v14 imagePickerForItem:itemCopy];

  imagePickerController = [(CNVisualIdentityPickerViewController *)self imagePickerController];
  [imagePickerController presentImagePicker:v12 withStyle:6 fromViewController:controllerCopy forVisualIdentityPicker:self];
}

- (void)showAvatarPosePickerFromItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  if (+[CNPhotoPickerCapabilities allowsAvatarUI])
  {
    v5 = [CNAvatarEditingManager alloc];
    avatarRecord = [itemCopy avatarRecord];
    dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
    variantsManager = [dataSource variantsManager];
    v9 = [(CNAvatarEditingManager *)v5 initWithAvatarRecord:avatarRecord variantsManager:variantsManager];

    [(CNAvatarEditingManager *)v9 setDelegate:self];
    [(CNAvatarEditingManager *)v9 setOriginalItem:itemCopy];
    [(CNVisualIdentityPickerViewController *)self setAvatarEditingManager:v9];
    view = [(CNVisualIdentityPickerViewController *)self view];
    backgroundColor = [view backgroundColor];
    viewController = [(CNAvatarEditingManager *)v9 viewController];
    view2 = [viewController view];
    [view2 setBackgroundColor:backgroundColor];

    viewController2 = [(CNAvatarEditingManager *)v9 viewController];
    v15 = [(CNVisualIdentityPickerViewController *)self photoPickerNavigationControllerForRootController:viewController2];

    [v15 setModalPresentationStyle:{-[CNVisualIdentityPickerViewController defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
    contactStyle = [(CNVisualIdentityPickerViewController *)self contactStyle];
    [v15 setModalTransitionStyle:{objc_msgSend(contactStyle, "modalTransitionStyle")}];

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
    dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
    avatarStore = [dataSource avatarStore];
    v7 = [v3 viewControllerForCreatingAvatarInStore:avatarStore];

    [v7 setDelegate:self];
    [v7 setEditorPresentationContext:1];
    navigationItem = [v7 navigationItem];
    [navigationItem _setBackgroundHidden:1];

    v9 = [(CNVisualIdentityPickerViewController *)self photoPickerNavigationControllerForRootController:v7];
    [v9 setModalPresentationStyle:{-[CNVisualIdentityPickerViewController defaultModalPresentationStyle](self, "defaultModalPresentationStyle")}];
    contactStyle = [(CNVisualIdentityPickerViewController *)self contactStyle];
    [v9 setModalTransitionStyle:{objc_msgSend(contactStyle, "modalTransitionStyle")}];

    [(CNVisualIdentityPickerViewController *)self sender:0 presentViewController:v9];
  }
}

- (int64_t)defaultModalPresentationStyle
{
  contactStyle = [(CNVisualIdentityPickerViewController *)self contactStyle];
  if ([contactStyle shouldPresentInCurrentContext])
  {
    v3 = 3;
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
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

- (void)presentVisualIdentityItemEditorForItem:(id)item fromViewController:(id)controller
{
  controllerCopy = controller;
  itemCopy = item;
  v8 = [CNVisualIdentityItemEditorViewController alloc];
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  variantsManager = [dataSource variantsManager];
  v11 = [(CNVisualIdentityItemEditorViewController *)v8 initWithProviderItem:itemCopy variantsManager:variantsManager];

  [(CNVisualIdentityItemEditorViewController *)v11 setDelegate:self];
  [(CNVisualIdentityPickerViewController *)self presentEditItemViewController:v11 fromViewController:controllerCopy];
}

- (void)selectItem:(id)item presentFromViewControllerIfNeeded:(id)needed
{
  itemCopy = item;
  neededCopy = needed;
  if ([itemCopy allowsMoveAndScale])
  {
    isEditingOrDuplicatingItem = [(CNVisualIdentityPickerViewController *)self isEditingOrDuplicatingItem];
    imagePickerController = [(CNVisualIdentityPickerViewController *)self imagePickerController];
    if (isEditingOrDuplicatingItem)
    {
      [itemCopy originalImageData];
    }

    else
    {
      [itemCopy imageData];
    }
    v9 = ;
    [itemCopy cropRect];
    [imagePickerController presentMoveAndScaleForImageData:v9 withCropRect:neededCopy fromViewController:?];
  }

  else if ([itemCopy allowsVariants])
  {
    [(CNVisualIdentityPickerViewController *)self presentVisualIdentityItemEditorForItem:itemCopy fromViewController:neededCopy];
  }
}

- (BOOL)isEditingOrDuplicatingItem
{
  editingProviderItem = [(CNVisualIdentityPickerViewController *)self editingProviderItem];
  if (editingProviderItem)
  {
    v4 = 1;
  }

  else
  {
    duplicatingProviderItem = [(CNVisualIdentityPickerViewController *)self duplicatingProviderItem];
    v4 = duplicatingProviderItem != 0;
  }

  return v4;
}

- (void)presentMonogramEditorFromIndexPath:(id)path
{
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  [objc_opt_class() defaultItemSize];
  v5 = [dataSource monogramProviderMonogramItemWithSize:?];

  [(CNVisualIdentityPickerViewController *)self selectItem:v5 presentFromViewControllerIfNeeded:self];
}

- (void)presentEmojiEditor
{
  [objc_opt_class() defaultItemSize];
  v3 = [CNPhotoPickerEmojiProviderItem addNewEmojiProviderItemWithSize:?];
  [(CNVisualIdentityPickerViewController *)self selectItem:v3 presentFromViewControllerIfNeeded:self];
}

- (void)didSelectSuggestionsAddItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  v5 = [dataSource providerItemAtIndexPath:pathCopy];

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
    addItemType = [v8 addItemType];
    if (addItemType > 1)
    {
      if (addItemType == 2)
      {
        [(CNVisualIdentityPickerViewController *)self handleAddEmojiItemSelectedWithIndexPath:pathCopy];
      }

      else if (addItemType == 3)
      {
        [(CNVisualIdentityPickerViewController *)self presentMonogramEditorFromIndexPath:pathCopy];
      }
    }

    else if (addItemType)
    {
      if (addItemType == 1)
      {
        [(CNVisualIdentityPickerViewController *)self presentLibraryImagePickerForIndexPath:pathCopy];
      }
    }

    else
    {
      [(CNVisualIdentityPickerViewController *)self presentCameraImagePicker];
    }
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  v6 = [dataSource providerGroupAtIndexPath:pathCopy];

  dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v8 = [dataSource2 isItemAtIndexPathAddItem:pathCopy];

  groupType = [v6 groupType];
  if (groupType <= 1)
  {
    if (!groupType)
    {
      goto LABEL_10;
    }

    if (groupType != 1)
    {
      goto LABEL_22;
    }

    if (v8)
    {
LABEL_10:
      [(CNVisualIdentityPickerViewController *)self didSelectSuggestionsAddItemAtIndexPath:pathCopy];
      goto LABEL_22;
    }

    dataSource3 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v11 = [dataSource3 providerItemAtIndexPath:pathCopy];

    [(CNVisualIdentityPickerViewController *)self processSelectionForSuggestionsProviderItem:v11 atIndexPath:pathCopy];
    goto LABEL_21;
  }

  switch(groupType)
  {
    case 4:
      dataSource4 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v11 = [dataSource4 providerItemAtIndexPath:pathCopy];

      [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProviderItem:v11];
LABEL_21:

      break;
    case 3:
      if (v8)
      {
        [(CNVisualIdentityPickerViewController *)self handleAddEmojiItemSelectedWithIndexPath:pathCopy];
        break;
      }

      dataSource5 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v11 = [dataSource5 providerItemAtIndexPath:pathCopy];

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
        dataSource6 = [(CNVisualIdentityPickerViewController *)self dataSource];
        v14 = [dataSource6 providerItemAtIndexPath:pathCopy];
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
          [(CNVisualIdentityPickerViewController *)self showAvatarPosePickerFromItem:v16 atIndexPath:pathCopy];
        }
      }

      break;
  }

LABEL_22:
}

- (void)headerActionPressedAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  v6 = [dataSource providerGroupAtIndexPath:pathCopy];

  if ([v6 groupType] == 2)
  {
    dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
    [dataSource2 updateGroupCollapsedStateForSection:{objc_msgSend(pathCopy, "section")}];

    v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(pathCopy, "section")}];
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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v12 = *MEMORY[0x1E69DDC08];
  if (*MEMORY[0x1E69DDC08] != kindCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNVisualIdentityPickerViewController.m" lineNumber:1005 description:{@"%@ asked to provide a supplementary element for an unsupported kind %@ at %@", v26, kindCopy, pathCopy}];
  }

  v13 = +[CNPhotoPickerSectionHeader reusableIdentifier];
  v14 = [viewCopy dequeueReusableSupplementaryViewOfKind:v12 withReuseIdentifier:v13 forIndexPath:pathCopy];

  contactStyle = [(CNVisualIdentityPickerViewController *)self contactStyle];
  [v14 updateStyle:contactStyle];

  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  v17 = [dataSource titleForSection:{objc_msgSend(pathCopy, "section")}];

  titleLabel = [v14 titleLabel];
  [titleLabel setText:v17];

  actionButton = [v14 actionButton];
  dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v21 = [dataSource2 actionTitleForSection:{objc_msgSend(pathCopy, "section")}];
  [actionButton setTitle:v21 forState:0];

  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __101__CNVisualIdentityPickerViewController_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke;
  v27[3] = &unk_1E74E6D30;
  objc_copyWeak(&v29, &location);
  v22 = pathCopy;
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

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  collectionViewLayout = [viewCopy collectionViewLayout];
  [collectionViewLayout sectionInset];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  view = [(CNVisualIdentityPickerViewController *)self view];
  traitCollection = [view traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  v23 = [dataSource providerGroupAtSection:index];

  groupType = [v23 groupType];
  if (userInterfaceIdiom || horizontalSizeClass != 1)
  {
    if (!groupType)
    {
      v31 = [viewCopy numberOfItemsInSection:index];
      [collectionViewLayout itemSize];
      v33 = v32 * v31;
      [collectionViewLayout minimumInteritemSpacing];
      v35 = v34 * (v31 + -1.0);
      [viewCopy bounds];
      v37 = v36;
      view2 = [(CNVisualIdentityPickerViewController *)self view];
      [view2 safeAreaInsets];
      v40 = v39;
      view3 = [(CNVisualIdentityPickerViewController *)self view];
      [view3 safeAreaInsets];
      v43 = v37 - (v40 + v42);

      v16 = (v43 - (v33 + v35)) * 0.5;
      v12 = v16;
    }
  }

  else
  {
    if (groupType == 1)
    {
      dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v26 = [dataSource2 providerGroupAtSection:index - 1];

      if (![v26 groupType])
      {
        [collectionViewLayout minimumInteritemSpacing];
        v10 = v27 * 0.5;
      }
    }

    if (![v23 groupType])
    {
      dataSource3 = [(CNVisualIdentityPickerViewController *)self dataSource];
      v29 = [dataSource3 providerGroupAtSection:index + 1];

      if ([v29 groupType] == 1)
      {
        [collectionViewLayout minimumInteritemSpacing];
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

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  if ([view numberOfItemsInSection:{section, layout}] < 0)
  {
    v16 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
    v8 = [dataSource providerGroupAtSection:section];

    groupType = [v8 groupType];
    groupType2 = [v8 groupType];
    groupType3 = [v8 groupType];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (!groupType || (!userInterfaceIdiom ? (v14 = groupType2 == 1) : (v14 = 0), !v14 ? (v15 = groupType3 == 4) : (v15 = 1), v15))
    {
      v16 = *MEMORY[0x1E695F060];
      v17 = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      v16 = 0.0;
      if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
      {
        dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
        v21 = [dataSource2 actionTitleForSection:section];
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  v10 = [dataSource providerItemAtIndexPath:pathCopy];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
  v13 = [dataSource2 providerGroupAtIndexPath:pathCopy];

  if (isKindOfClass)
  {
    v14 = [v8 stringByAppendingFormat:@"-Add"];

    v8 = v14;
  }

  v15 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:{pathCopy, viewCopy}];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [v15 setDisplaySessionUUID:uUID];
  dataSource3 = [(CNVisualIdentityPickerViewController *)self dataSource];
  activePhotoIndexPath = [dataSource3 activePhotoIndexPath];
  [v15 setSelected:{objc_msgSend(pathCopy, "isEqual:", activePhotoIndexPath)}];

  if (isKindOfClass & 1) != 0 && (objc_opt_respondsToSelector())
  {
    view = [(CNVisualIdentityPickerViewController *)self view];
    tintColor = [view tintColor];
    [v10 updateTintColorIfNeeded:tintColor];

    [v15 setDisplaysBorder:1];
    view2 = [(CNVisualIdentityPickerViewController *)self view];
    tintColor2 = [view2 tintColor];
    [v15 updateBorderTintColor:tintColor2];
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
  v24 = uUID;
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

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  v6 = [dataSource numberOfItemsInSection:section];

  return v6;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  numberOfSections = [dataSource numberOfSections];

  return numberOfSections;
}

- (id)contactImageForCurrentActiveItem
{
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
  activePhotoIndexPath = [dataSource2 activePhotoIndexPath];
  v6 = [dataSource providerItemAtIndexPath:activePhotoIndexPath];

  contactImageForMetadataStore = [v6 contactImageForMetadataStore];

  return contactImageForMetadataStore;
}

- (void)setSuggestionsProviderItemAsActiveItem:(id)item
{
  itemCopy = item;
  [(CNVisualIdentityPickerViewController *)self deleteExistingItem:itemCopy];
  v4 = [(CNVisualIdentityPickerViewController *)self insertNewItem:itemCopy toGroupType:1 updateActive:1];
}

- (void)deleteExistingItem:(id)item
{
  itemCopy = item;
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  v6 = [dataSource removeItem:itemCopy];

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

- (id)insertNewItem:(id)item toGroupType:(int64_t)type updateActive:(BOOL)active scrollToItem:(BOOL)toItem
{
  toItemCopy = toItem;
  activeCopy = active;
  itemCopy = item;
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  v12 = [dataSource indexOfAddedItem:itemCopy inGroupOfType:type];

  if (v12)
  {
    v13 = MEMORY[0x1E69DD250];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __92__CNVisualIdentityPickerViewController_insertNewItem_toGroupType_updateActive_scrollToItem___block_invoke;
    v21 = &unk_1E74E77C0;
    selfCopy = self;
    v14 = v12;
    v23 = v14;
    [v13 performWithoutAnimation:&v18];
    if (toItemCopy)
    {
      v15 = [(CNVisualIdentityPickerViewController *)self collectionView:v18];
      [v15 scrollToItemAtIndexPath:v14 atScrollPosition:2 animated:1];
    }

    if (activeCopy)
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

- (void)insertNewItemIntoSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __69__CNVisualIdentityPickerViewController_insertNewItemIntoSuggestions___block_invoke;
  v14 = &unk_1E74E77C0;
  selfCopy = self;
  v16 = suggestionsCopy;
  v5 = suggestionsCopy;
  v6 = _Block_copy(&v11);
  if ([(CNVisualIdentityPickerViewController *)self isViewLoaded:v11])
  {
    v6[2](v6);
  }

  else
  {
    pendingInjectedSuggestionItems = [(CNVisualIdentityPickerViewController *)self pendingInjectedSuggestionItems];
    v8 = [v6 copy];
    v9 = _Block_copy(v8);
    v10 = [pendingInjectedSuggestionItems arrayByAddingObject:v9];
    [(CNVisualIdentityPickerViewController *)self setPendingInjectedSuggestionItems:v10];
  }
}

- (void)updateHeaderViewAvatar
{
  headerView = [(CNVisualIdentityPickerViewController *)self headerView];
  placeholderProviderItem = [headerView placeholderProviderItem];
  if (placeholderProviderItem)
  {
    headerView2 = placeholderProviderItem;
LABEL_3:

    goto LABEL_5;
  }

  visualIdentity = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  identityType = [visualIdentity identityType];

  if (!identityType)
  {
    dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
    [objc_opt_class() defaultItemSize];
    headerView = [dataSource monogramProviderDefaultItemWithSize:?];

    headerView2 = [(CNVisualIdentityPickerViewController *)self headerView];
    [headerView2 setPlaceholderProviderItem:headerView];
    goto LABEL_3;
  }

LABEL_5:
  headerView3 = [(CNVisualIdentityPickerViewController *)self headerView];
  pendingVisualIdentity = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  [headerView3 updatePhotoViewWithUpdatedIdentity:pendingVisualIdentity];
}

- (void)updateDoneButtonEnabledStateForEditingProviderItem:(id)item
{
  hasPendingChanges = [(CNVisualIdentityPickerViewController *)self hasPendingChanges];
  navigationItem = [(CNVisualIdentityPickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:hasPendingChanges];
}

- (void)updateInjectedItemsSectionForProviderItem:(id)item
{
  v40 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  v6 = [dataSource sectionIndexForProviderGroupType:4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
    injectedItemsGroup = [dataSource2 injectedItemsGroup];
    [injectedItemsGroup removeAllAddedProviderItems];

    if (itemCopy)
    {
      v30 = v6;
      dataSource3 = [(CNVisualIdentityPickerViewController *)self dataSource];
      variantsManager = [dataSource3 variantsManager];
      v31 = itemCopy;
      v11 = [itemCopy createVariantsItemsWithVariantsManager:variantsManager];
      _cn_reversed = [v11 _cn_reversed];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = _cn_reversed;
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

      dataSource4 = [(CNVisualIdentityPickerViewController *)self dataSource];
      injectedItemsGroup2 = [dataSource4 injectedItemsGroup];
      hasAddedProviderItems = [injectedItemsGroup2 hasAddedProviderItems];

      if ((hasAddedProviderItems & 1) == 0)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __82__CNVisualIdentityPickerViewController_updateInjectedItemsSectionForProviderItem___block_invoke;
        v34[3] = &unk_1E74E4478;
        v34[4] = self;
        v34[5] = v30;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v34];
      }

      itemCopy = v31;
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

- (void)updateVisualIdentityWithProviderItem:(id)item
{
  itemCopy = item;
  pendingVisualIdentity = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  if (itemCopy)
  {
    [itemCopy updateVisualIdentity:pendingVisualIdentity];
  }

  else
  {
    [pendingVisualIdentity clearImage];
  }

  [(CNVisualIdentityPickerViewController *)self updateHeaderViewAvatar];
  [(CNVisualIdentityPickerViewController *)self updateDoneButtonEnabledState];
}

- (BOOL)hasPendingChanges
{
  visualIdentity = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  [visualIdentity cropRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  pendingVisualIdentity = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  [pendingVisualIdentity cropRect];
  v41.origin.x = v13;
  v41.origin.y = v14;
  v41.size.width = v15;
  v41.size.height = v16;
  v40.origin.x = v5;
  v40.origin.y = v7;
  v40.size.width = v9;
  v40.size.height = v11;
  v17 = CGRectEqualToRect(v40, v41);

  visualIdentity2 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  imageData = [visualIdentity2 imageData];
  pendingVisualIdentity2 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  imageData2 = [pendingVisualIdentity2 imageData];

  visualIdentity3 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  thumbnailImageData = [visualIdentity3 thumbnailImageData];
  pendingVisualIdentity3 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  thumbnailImageData2 = [pendingVisualIdentity3 thumbnailImageData];

  visualIdentity4 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  fullscreenImageData = [visualIdentity4 fullscreenImageData];
  pendingVisualIdentity4 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  fullscreenImageData2 = [pendingVisualIdentity4 fullscreenImageData];

  v30 = 1;
  if (v17 && imageData == imageData2)
  {
    v30 = thumbnailImageData != thumbnailImageData2 || fullscreenImageData != fullscreenImageData2;
  }

  visualIdentity5 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  name = [visualIdentity5 name];
  if (!name)
  {
    imageData2 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    thumbnailImageData = [imageData2 name];
    if (!thumbnailImageData)
    {
      LOBYTE(v38) = 0;
LABEL_14:

      goto LABEL_15;
    }
  }

  visualIdentity6 = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  name2 = [visualIdentity6 name];
  pendingVisualIdentity5 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  name3 = [pendingVisualIdentity5 name];
  v38 = [name2 isEqual:name3] ^ 1;

  if (!name)
  {
    goto LABEL_14;
  }

LABEL_15:

  return (v30 | v38) & 1;
}

- (void)updateActiveIndexPath:(id)path reload:(BOOL)reload
{
  reloadCopy = reload;
  pathCopy = path;
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  activePhotoIndexPath = [dataSource activePhotoIndexPath];
  v8 = [activePhotoIndexPath isEqual:pathCopy];

  if ((v8 & 1) == 0)
  {
    v9 = objc_opt_new();
    dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
    activePhotoIndexPath2 = [dataSource2 activePhotoIndexPath];

    dataSource3 = [(CNVisualIdentityPickerViewController *)self dataSource];
    [dataSource3 setActivePhotoIndexPath:pathCopy];

    if (pathCopy)
    {
      [v9 addObject:pathCopy];
    }

    dataSource4 = [(CNVisualIdentityPickerViewController *)self dataSource];
    v14 = [dataSource4 numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];
    v15 = [activePhotoIndexPath2 row];

    if (v14 > v15 && activePhotoIndexPath2)
    {
      [v9 addObject:activePhotoIndexPath2];
    }

    if (reloadCopy)
    {
      collectionView = [(CNVisualIdentityPickerViewController *)self collectionView];
      [collectionView reloadItemsAtIndexPaths:v9];
    }
  }
}

- (id)photoPickerNavigationControllerForRootController:(id)controller
{
  controllerCopy = controller;
  v5 = [[CNPhotoPickerNavigationViewController alloc] initWithRootViewController:controllerCopy];

  [(CNPhotoPickerNavigationViewController *)v5 setAllowRotation:[(CNVisualIdentityPickerViewController *)self allowRotation]];

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = CNVisualIdentityPickerViewController;
  [(CNVisualIdentityPickerViewController *)&v7 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  collectionView = [(CNVisualIdentityPickerViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)viewDidLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = CNVisualIdentityPickerViewController;
  [(CNVisualIdentityPickerViewController *)&v19 viewDidLayoutSubviews];
  collectionView = [(CNVisualIdentityPickerViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  v5 = objc_opt_class();
  view = [(CNVisualIdentityPickerViewController *)self view];
  [view bounds];
  [v5 itemsPerRowForWidth:v7];
  v9 = v8;

  view2 = [(CNVisualIdentityPickerViewController *)self view];
  [view2 bounds];
  v12 = (v11 + (v9 + 1.0) * -20.0) / v9;

  v13 = fmin(v12, 90.0);
  [collectionViewLayout setItemSize:{v13, v13}];
  collectionView2 = [(CNVisualIdentityPickerViewController *)self collectionView];
  collectionViewLayout2 = [collectionView2 collectionViewLayout];
  [collectionViewLayout2 invalidateLayout];

  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  itemsPerRow = [dataSource itemsPerRow];

  dataSource2 = [(CNVisualIdentityPickerViewController *)self dataSource];
  [dataSource2 setItemsPerRow:v9 requiresFullReload:v9 != itemsPerRow];
}

- (void)initializeHeaderView
{
  v3 = [CNPhotoPickerHeaderView alloc];
  visualIdentity = [(CNVisualIdentityPickerViewController *)self visualIdentity];
  v4 = [(CNPhotoPickerHeaderView *)v3 initWithVisualIdentity:visualIdentity];
  headerView = self->_headerView;
  self->_headerView = v4;
}

- (void)buildHeaderView
{
  v24[3] = *MEMORY[0x1E69E9840];
  [(CNVisualIdentityPickerViewController *)self initializeHeaderView];
  headerView = [(CNVisualIdentityPickerViewController *)self headerView];
  [headerView setDelegate:self];

  headerView2 = [(CNVisualIdentityPickerViewController *)self headerView];
  [headerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(CNVisualIdentityPickerViewController *)self view];
  headerView3 = [(CNVisualIdentityPickerViewController *)self headerView];
  [view addSubview:headerView3];

  headerView4 = [(CNVisualIdentityPickerViewController *)self headerView];
  topAnchor = [headerView4 topAnchor];
  view2 = [(CNVisualIdentityPickerViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v18;
  headerView5 = [(CNVisualIdentityPickerViewController *)self headerView];
  leadingAnchor = [headerView5 leadingAnchor];
  view3 = [(CNVisualIdentityPickerViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[1] = v10;
  headerView6 = [(CNVisualIdentityPickerViewController *)self headerView];
  trailingAnchor = [headerView6 trailingAnchor];
  view4 = [(CNVisualIdentityPickerViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
  view = [(CNVisualIdentityPickerViewController *)self view];
  [view bounds];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];
  [(CNVisualIdentityPickerViewController *)self setCollectionView:v6];

  collectionView = [(CNVisualIdentityPickerViewController *)self collectionView];
  [collectionView setDelegate:self];

  collectionView2 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [collectionView2 setDataSource:self];

  collectionView3 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v10 = objc_opt_class();
  v11 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
  [collectionView3 registerClass:v10 forCellWithReuseIdentifier:v11];

  collectionView4 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v13 = objc_opt_class();
  v14 = +[CNPhotoPickerCollectionViewCell cellIdentifier];
  v15 = [v14 stringByAppendingFormat:@"-Add"];
  [collectionView4 registerClass:v13 forCellWithReuseIdentifier:v15];

  collectionView5 = [(CNVisualIdentityPickerViewController *)self collectionView];
  v17 = objc_opt_class();
  v18 = *MEMORY[0x1E69DDC08];
  v19 = +[CNPhotoPickerSectionHeader reusableIdentifier];
  [collectionView5 registerClass:v17 forSupplementaryViewOfKind:v18 withReuseIdentifier:v19];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  collectionView6 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [collectionView6 setBackgroundColor:clearColor];

  collectionView7 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [collectionView7 setAlwaysBounceVertical:1];

  collectionView8 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [collectionView8 setContentInsetAdjustmentBehavior:2];

  collectionView9 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [collectionView9 setContentInset:{0.0, 20.0, 0.0, 20.0}];

  collectionView10 = [(CNVisualIdentityPickerViewController *)self collectionView];
  [collectionView10 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(CNVisualIdentityPickerViewController *)self view];
  collectionView11 = [(CNVisualIdentityPickerViewController *)self collectionView];
  headerView = [(CNVisualIdentityPickerViewController *)self headerView];
  [view2 insertSubview:collectionView11 below:headerView];

  headerView2 = [(CNVisualIdentityPickerViewController *)self headerView];
  bottomAnchor = [headerView2 bottomAnchor];

  collectionView12 = [(CNVisualIdentityPickerViewController *)self collectionView];
  topAnchor = [collectionView12 topAnchor];
  v46 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v51[0] = v46;
  collectionView13 = [(CNVisualIdentityPickerViewController *)self collectionView];
  leadingAnchor = [collectionView13 leadingAnchor];
  view3 = [(CNVisualIdentityPickerViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v51[1] = v41;
  collectionView14 = [(CNVisualIdentityPickerViewController *)self collectionView];
  trailingAnchor = [collectionView14 trailingAnchor];
  view4 = [(CNVisualIdentityPickerViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v51[2] = v33;
  collectionView15 = [(CNVisualIdentityPickerViewController *)self collectionView];
  bottomAnchor2 = [collectionView15 bottomAnchor];
  view5 = [(CNVisualIdentityPickerViewController *)self view];
  bottomAnchor3 = [view5 bottomAnchor];
  v38 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v51[3] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v39];
}

- (double)collectionViewPaddingForCatalyst
{
  v3 = objc_opt_class();
  view = [(CNVisualIdentityPickerViewController *)self view];
  [view bounds];
  [v3 itemsPerRowForWidth:v5];
  v7 = v6;

  view2 = [(CNVisualIdentityPickerViewController *)self view];
  [view2 bounds];
  v10 = (v9 - ((v7 + -1.0) * 16.0 + v7 * 48.0 + 1.0)) * 0.5;

  return v10;
}

- (void)updateVisualIdentityWithProposedImageData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy)
  {
    v20 = dataCopy;
    v6 = [MEMORY[0x1E69DCAB8] imageWithData:dataCopy];
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

  MEMORY[0x1EEE66BB8](dataCopy, v5);
}

- (void)done:(id)done
{
  v40 = *MEMORY[0x1E69E9840];
  [(CNVisualIdentityPickerViewController *)self setShouldUpdateEmojiSuggestions:0];
  headerView = [(CNVisualIdentityPickerViewController *)self headerView];
  [headerView resignFirstResponder];

  contactImageForCurrentActiveItem = [(CNVisualIdentityPickerViewController *)self contactImageForCurrentActiveItem];
  delegate = [(CNVisualIdentityPickerViewController *)self delegate];
  pendingVisualIdentity = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
  [delegate visualIdentityPicker:self didUpdatePhotoForVisualIdentity:pendingVisualIdentity withContactImage:contactImageForCurrentActiveItem];

  v8 = [objc_opt_class() log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    pendingVisualIdentity2 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    [pendingVisualIdentity2 cropRect];
    v11 = v10;
    pendingVisualIdentity3 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    [pendingVisualIdentity3 cropRect];
    v14 = v13;
    pendingVisualIdentity4 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    [pendingVisualIdentity4 cropRect];
    v17 = v16;
    pendingVisualIdentity5 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    [pendingVisualIdentity5 cropRect];
    v20 = v19;
    pendingVisualIdentity6 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    avatarImage = [pendingVisualIdentity6 avatarImage];
    [avatarImage size];
    v24 = v23;
    pendingVisualIdentity7 = [(CNVisualIdentityPickerViewController *)self pendingVisualIdentity];
    avatarImage2 = [pendingVisualIdentity7 avatarImage];
    [avatarImage2 size];
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

- (void)cancel:(id)cancel
{
  delegate = [(CNVisualIdentityPickerViewController *)self delegate];
  [delegate visualIdentityPickerDidCancel:self];
}

- (void)setUpViews
{
  [(CNVisualIdentityPickerViewController *)self buildHeaderView];
  [(CNVisualIdentityPickerViewController *)self buildCollectionView];
  [objc_opt_class() defaultItemSize];
  v4 = v3;
  v6 = v5;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v9 = v8;

  view = [(CNVisualIdentityPickerViewController *)self view];
  v11 = [view effectiveUserInterfaceLayoutDirection] == 1;

  v12 = objc_opt_class();
  view2 = [(CNVisualIdentityPickerViewController *)self view];
  [view2 bounds];
  [v12 itemsPerRowForWidth:v14];
  v16 = v15;

  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  [dataSource loadProviderGroupsItemsForSize:v11 itemsPerRow:v4 scale:v6 RTL:{v16, v9}];

  contactStyle = [(CNVisualIdentityPickerViewController *)self contactStyle];
  backgroundColor = [contactStyle backgroundColor];

  if (backgroundColor)
  {
    contactStyle2 = [(CNVisualIdentityPickerViewController *)self contactStyle];
    backgroundColor2 = [contactStyle2 backgroundColor];
    view3 = [(CNVisualIdentityPickerViewController *)self view];
    [view3 setBackgroundColor:backgroundColor2];
  }

  else
  {
    contactStyle2 = +[CNUIColorRepository photoPickerBackgroundColor];
    backgroundColor2 = [(CNVisualIdentityPickerViewController *)self view];
    [backgroundColor2 setBackgroundColor:contactStyle2];
  }

  v23 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_confirmCancelAction];
  navigationItem = [(CNVisualIdentityPickerViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v23];

  v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
  navigationItem2 = [(CNVisualIdentityPickerViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v25];

  navigationItem3 = [(CNVisualIdentityPickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem3 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  navigationItem4 = [(CNVisualIdentityPickerViewController *)self navigationItem];
  [navigationItem4 setLargeTitleDisplayMode:2];

  navigationController = [(CNVisualIdentityPickerViewController *)self navigationController];
  presentationController = [navigationController presentationController];
  [presentationController setDelegate:self];

  v32 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_confirmCancelAction];
  [(CNVisualIdentityPickerViewController *)self addKeyCommand:v32];

  navigationItem5 = [(CNVisualIdentityPickerViewController *)self navigationItem];
  [navigationItem5 _setBackgroundHidden:1];

  navigationController2 = [(CNVisualIdentityPickerViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  LOBYTE(presentationController) = [navigationBar isTranslucent];

  if ((presentationController & 1) == 0)
  {
    [(CNVisualIdentityPickerViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
  }

  [(CNVisualIdentityPickerViewController *)self setShouldUpdateEmojiSuggestions:1];
  proposedImageData = [(CNVisualIdentityPickerViewController *)self proposedImageData];

  if (proposedImageData)
  {
    proposedImageData2 = [(CNVisualIdentityPickerViewController *)self proposedImageData];
    [(CNVisualIdentityPickerViewController *)self updateVisualIdentityWithProposedImageData:proposedImageData2];
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
    visualIdentity = [(CNVisualIdentityPickerViewController *)self visualIdentity];
    v5 = [visualIdentity mutableCopy];
    v6 = self->_pendingVisualIdentity;
    self->_pendingVisualIdentity = v5;

    pendingVisualIdentity = self->_pendingVisualIdentity;
  }

  return pendingVisualIdentity;
}

- (id)visualIdentity
{
  dataSource = [(CNVisualIdentityPickerViewController *)self dataSource];
  visualIdentity = [dataSource visualIdentity];

  return visualIdentity;
}

- (void)setPresenterDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_presenterDelegate, delegateCopy);
  [(CNVisualIdentityImagePickerController *)self->_imagePickerController setPresenterDelegate:delegateCopy];
}

- (CNVisualIdentityPickerViewController)initWithPhotosDataSource:(id)source style:(id)style allowRotation:(BOOL)rotation
{
  sourceCopy = source;
  styleCopy = style;
  v23.receiver = self;
  v23.super_class = CNVisualIdentityPickerViewController;
  v11 = [(CNVisualIdentityPickerViewController *)&v23 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dataSource, source);
    [(CNPhotoPickerDataSource *)v12->_dataSource setDelegate:v12];
    objc_storeStrong(&v12->_contactStyle, style);
    v12->_allowRotation = rotation;
    pendingInjectedSuggestionItems = v12->_pendingInjectedSuggestionItems;
    v12->_pendingInjectedSuggestionItems = MEMORY[0x1E695E0F0];

    v14 = [[CNVisualIdentityImagePickerController alloc] initWithContactStyle:styleCopy];
    imagePickerController = v12->_imagePickerController;
    v12->_imagePickerController = v14;

    unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    visualIdentity = [sourceCopy visualIdentity];
    contacts = [visualIdentity contacts];
    firstObject = [contacts firstObject];
    -[CNVisualIdentityImagePickerController setIsMeContact:](v12->_imagePickerController, "setIsMeContact:", [unifiedMeContactMonitor isMeContact:firstObject]);

    [(CNVisualIdentityImagePickerController *)v12->_imagePickerController setDelegate:v12];
    presenterDelegate = [(CNVisualIdentityPickerViewController *)v12 presenterDelegate];
    [(CNVisualIdentityImagePickerController *)v12->_imagePickerController setPresenterDelegate:presenterDelegate];

    v21 = v12;
  }

  return v12;
}

+ (id)imagePickerForVisualIdentity:(id)identity
{
  identityCopy = identity;
  v5 = objc_alloc_init(CNContactViewCache);
  v6 = +[CNPhotoPickerConfiguration defaultConfiguration];
  v7 = [[CNPhotoPickerDataSource alloc] initWithVisualIdentity:identityCopy contactViewCache:v5 photoPickerConfiguration:v6];

  v8 = [self alloc];
  v9 = +[CNContactStyle currentStyle];
  v10 = [v8 initWithPhotosDataSource:v7 style:v9 allowRotation:{objc_msgSend(v6, "allowRotation")}];

  return v10;
}

+ (id)imagePickerForGroupIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [[CNVisualIdentity alloc] initWithGroupIdentity:identityCopy];
  v6 = [self imagePickerForVisualIdentity:v5];
  numberOfContacts = [identityCopy numberOfContacts];

  v8 = CNContactsUIBundle();
  v9 = v8;
  if (numberOfContacts >= 2)
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

+ (id)imagePickerForContact:(id)contact
{
  contactCopy = contact;
  v5 = [[CNVisualIdentity alloc] initWithContact:contactCopy];

  v6 = [self imagePickerForVisualIdentity:v5];

  return v6;
}

+ (double)itemsPerRowForWidth:(double)width
{
  v3 = width <= 460.0;
  result = 4.0;
  if (!v3)
  {
    return 6.0;
  }

  return result;
}

+ (id)navigationControllerForPicker:(id)picker
{
  pickerCopy = picker;
  v4 = [[CNPhotoPickerNavigationViewController alloc] initWithRootViewController:pickerCopy];
  allowRotation = [pickerCopy allowRotation];

  [(CNPhotoPickerNavigationViewController *)v4 setAllowRotation:allowRotation];

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

+ (BOOL)canShowPhotoPickerForView:(id)view withTraitCollection:(id)collection
{
  viewCopy = view;
  collectionCopy = collection;
  window = [viewCopy window];

  if (window)
  {
    window2 = [viewCopy window];
    windowScene = [window2 windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];
  }

  else
  {
    [viewCopy bounds];
    v12 = v11;
    [viewCopy bounds];
    if (v12 <= v13)
    {
      interfaceOrientation = 1;
    }

    else
    {
      interfaceOrientation = 3;
    }
  }

  [viewCopy bounds];
  v14 = 1;
  if (v15 >= 320.0)
  {
    [viewCopy bounds];
    v14 = v16 < 454.4;
  }

  if ([collectionCopy userInterfaceIdiom])
  {
    v17 = v14;
  }

  else
  {
    v17 = (interfaceOrientation - 3) < 2 || v14;
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