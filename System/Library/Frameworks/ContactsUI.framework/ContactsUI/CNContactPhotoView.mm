@interface CNContactPhotoView
+ (CGSize)defaultSize;
+ (id)descriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)enabled;
+ (id)supportedPasteboardTypes;
- (BOOL)_isUsingCuratedPhoto;
- (BOOL)_isUsingSilhouette;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (BOOL)hasPhoto;
- (BOOL)isPresentingModalViewController;
- (CGRect)previewController:(id)controller frameForPreviewItem:(id)item inSourceView:(id *)view;
- (CNContactPhotoView)initWithFrame:(CGRect)frame shouldAllowTakePhotoAction:(BOOL)action threeDTouchEnabled:(BOOL)enabled contactStore:(id)store allowsImageDrops:(BOOL)drops imageRenderer:(id)renderer allowStaleRendering:(BOOL)rendering;
- (CNContactPhotoViewDelegate)delegate;
- (CNMutableContact)mutableContact;
- (CNMutableContact)pendingEditContact;
- (CNPresenterDelegate)presenterDelegate;
- (id)contact;
- (id)currentImageData;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)newPendingContactPreservingChangesFrom:(id)from;
- (id)presentingViewControllerForAvatarView:(id)view;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (id)previewController:(id)controller transitionImageForPreviewItem:(id)item contentRect:(CGRect *)rect;
- (id)previewPath;
- (void)_bounceSmallPhoto;
- (void)_presentFullScreenPhoto:(id)photo;
- (void)_zoomContactPhoto;
- (void)avatarTapped:(id)tapped;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)didUpdateContentForAvatarView:(id)view;
- (void)disablePhotoTapGesture;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)longPressGesture:(id)gesture;
- (void)menuWillHide:(id)hide;
- (void)paste:(id)paste;
- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image;
- (void)photoPickerDidCancel:(id)cancel;
- (void)presentPhotoPickerWithImageData:(id)data;
- (void)previewControllerDidDismiss:(id)dismiss;
- (void)resetPhoto;
- (void)saveChangesFromPendingContact:(id)contact toContact:(id)toContact;
- (void)saveEdits;
- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler;
- (void)sender:(id)sender presentViewController:(id)controller;
- (void)setContacts:(id)contacts;
- (void)setEditing:(BOOL)editing preservingChanges:(BOOL)changes;
- (void)setHighlightedFrame:(BOOL)frame;
- (void)setLabelAlpha:(double)alpha;
- (void)updateEditPhotoButton;
- (void)updateFontSizes;
- (void)updatePendingContactWithEditedContact:(id)contact;
- (void)updatePendingContactWithEditedPropertyItem:(id)item;
- (void)updatePhoto;
- (void)updateViewsAndNotifyDelegate:(BOOL)delegate;
- (void)visualIdentityPicker:(id)picker presentationControllerWillDismiss:(id)dismiss;
- (void)willBeginPreviewInteractionForAvatarView:(id)view;
@end

@implementation CNContactPhotoView

- (CNContactPhotoViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNPresenterDelegate)presenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presenterDelegate);

  return WeakRetained;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  dropCopy = drop;
  items = [dropCopy items];
  v7 = [items count];

  if (v7)
  {
    items2 = [dropCopy items];
    v9 = [items2 objectAtIndexedSubscript:0];

    v10 = *MEMORY[0x1E69637F8];
    itemProvider = [v9 itemProvider];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__CNContactPhotoView_dropInteraction_performDrop___block_invoke;
    v13[3] = &unk_1E74E61D8;
    v13[4] = self;
    v12 = [itemProvider loadDataRepresentationForTypeIdentifier:v10 completionHandler:v13];
  }
}

void __50__CNContactPhotoView_dropInteraction_performDrop___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = [a3 localizedDescription];
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPhotoView.m", 964, 3, @"Unable to copy data for avatar photo drop operation: %@", v8, v9, v10, v11, v7);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__CNContactPhotoView_dropInteraction_performDrop___block_invoke_2;
    block[3] = &unk_1E74E77C0;
    block[4] = *(a1 + 32);
    v13 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __50__CNContactPhotoView_dropInteraction_performDrop___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 photoView:*(a1 + 32) didAcceptDropOfImageData:*(a1 + 40)];
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  updateCopy = update;
  if ([(CNContactPhotoView *)self acceptsImageDrop])
  {
    items = [updateCopy items];
    v7 = [items count] == 1;

    v8 = 2 * v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:v8];

  return v9;
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  v12[5] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v5 = getkUTTypePNG();
  v12[0] = v5;
  v6 = getkUTTypeJPEG();
  v7 = *MEMORY[0x1E6963810];
  v12[1] = v6;
  v12[2] = v7;
  v8 = *MEMORY[0x1E69637F8];
  v12[3] = *MEMORY[0x1E6963760];
  v12[4] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v10 = [sessionCopy hasItemsConformingToTypeIdentifiers:{v9, v12[0]}];

  return v10;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  v5 = objc_alloc_init(CNContactPhotoPreviewItem);
  v6 = MEMORY[0x1E695CD80];
  contact = [(CNContactPhotoView *)self contact];
  v8 = [v6 stringFromContact:contact style:0];
  [(CNContactPhotoPreviewItem *)v5 setPreviewItemTitle:v8];

  v9 = MEMORY[0x1E695DFF8];
  v10 = MEMORY[0x1E696AEC0];
  previewPath = [(CNContactPhotoView *)self previewPath];
  v12 = [v10 stringWithFormat:@"file://%@", previewPath];
  v13 = [v9 URLWithString:v12];
  [(CNContactPhotoPreviewItem *)v5 setPreviewItemURL:v13];

  return v5;
}

- (void)previewControllerDidDismiss:(id)dismiss
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  previewPath = [(CNContactPhotoView *)self previewPath];
  [defaultManager removeItemAtPath:previewPath error:0];
}

- (CGRect)previewController:(id)controller frameForPreviewItem:(id)item inSourceView:(id *)view
{
  if (view)
  {
    selfCopy = self;
    *view = self;
  }

  v8 = [(CNContactPhotoView *)self avatarView:controller];
  avatarView = [(CNContactPhotoView *)self avatarView];
  [avatarView bounds];
  [v8 convertRect:self toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)previewController:(id)controller transitionImageForPreviewItem:(id)item contentRect:(CGRect *)rect
{
  if (rect)
  {
    v7 = [(CNContactPhotoView *)self avatarView:controller];
    [v7 frame];
    rect->origin.x = v8;
    rect->origin.y = v9;
    rect->size.width = v10;
    rect->size.height = v11;
  }

  v12 = [(CNContactPhotoView *)self avatarView:controller];
  backgroundColor = [v12 backgroundColor];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  avatarView = [(CNContactPhotoView *)self avatarView];
  [avatarView setBackgroundColor:clearColor];

  avatarView2 = [(CNContactPhotoView *)self avatarView];
  [avatarView2 bounds];
  v25.width = v17;
  v25.height = v18;
  UIGraphicsBeginImageContext(v25);

  avatarView3 = [(CNContactPhotoView *)self avatarView];
  layer = [avatarView3 layer];
  [layer renderInContext:UIGraphicsGetCurrentContext()];

  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  avatarView4 = [(CNContactPhotoView *)self avatarView];
  [avatarView4 setBackgroundColor:backgroundColor];

  return v21;
}

- (void)didUpdateContentForAvatarView:(id)view
{
  v4 = +[CNUIContactsEnvironment currentEnvironment];
  launchCheckinRegistrar = [v4 launchCheckinRegistrar];
  [launchCheckinRegistrar checkInLaunchTasks:4];
}

- (void)willBeginPreviewInteractionForAvatarView:(id)view
{
  longPressGestureRecognizer = [(CNContactPhotoView *)self longPressGestureRecognizer];
  [longPressGestureRecognizer setEnabled:0];

  longPressGestureRecognizer2 = [(CNContactPhotoView *)self longPressGestureRecognizer];
  [longPressGestureRecognizer2 setEnabled:1];

  window = [(CNContactPhotoView *)self window];
  [window endEditing:1];
}

- (id)presentingViewControllerForAvatarView:(id)view
{
  delegate = [(CNContactPhotoView *)self delegate];
  v5 = [delegate viewControllerForPhotoView:self];

  return v5;
}

- (void)_bounceSmallPhoto
{
  if (![(CNContactPhotoView *)self isAnimatingBounce])
  {
    avatarView = [(CNContactPhotoView *)self avatarView];
    [avatarView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    avatarView2 = [(CNContactPhotoView *)self avatarView];
    [avatarView2 frame];
    v20 = CGRectInset(v19, -5.0, -5.0);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;

    [(CNContactPhotoView *)self setIsAnimatingBounce:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __39__CNContactPhotoView__bounceSmallPhoto__block_invoke;
    v18[3] = &unk_1E74E5400;
    v18[4] = self;
    *&v18[5] = x;
    *&v18[6] = y;
    *&v18[7] = width;
    *&v18[8] = height;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __39__CNContactPhotoView__bounceSmallPhoto__block_invoke_2;
    v17[3] = &unk_1E74E2748;
    v17[4] = self;
    v17[5] = v5;
    v17[6] = v7;
    v17[7] = v9;
    v17[8] = v11;
    [MEMORY[0x1E69DD250] animateWithDuration:v18 animations:v17 completion:0.15];
  }
}

void __39__CNContactPhotoView__bounceSmallPhoto__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) avatarView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

uint64_t __39__CNContactPhotoView__bounceSmallPhoto__block_invoke_2(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__CNContactPhotoView__bounceSmallPhoto__block_invoke_3;
  v4[3] = &unk_1E74E5400;
  v5 = *(a1 + 32);
  v1 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__CNContactPhotoView__bounceSmallPhoto__block_invoke_4;
  v3[3] = &unk_1E74E67A8;
  v3[4] = v5;
  return [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:v3 completion:0.15];
}

void __39__CNContactPhotoView__bounceSmallPhoto__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) avatarView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

- (void)_presentFullScreenPhoto:(id)photo
{
  v8 = UIImageJPEGRepresentation(photo, 0.0);
  previewPath = [(CNContactPhotoView *)self previewPath];
  v5 = [v8 writeToFile:previewPath atomically:0];

  if (v5)
  {
    v6 = [objc_alloc(getQLPreviewControllerClass()) initWithNibName:0 bundle:0];
    [v6 setDelegate:self];
    [v6 setDataSource:self];
    [v6 setModalPresentationStyle:0];
    presenterDelegate = [(CNContactPhotoView *)self presenterDelegate];
    [presenterDelegate sender:self presentViewController:v6];
  }
}

- (void)_zoomContactPhoto
{
  avatarView = [(CNContactPhotoView *)self avatarView];
  imageForTransitioningToFullScreen = [avatarView imageForTransitioningToFullScreen];

  v4 = imageForTransitioningToFullScreen;
  if (imageForTransitioningToFullScreen || (-[CNContactPhotoView contact](self, "contact"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isKeyAvailable:*MEMORY[0x1E695C238]], v9, v10) && (v11 = MEMORY[0x1E69DCAB8], -[CNContactPhotoView contact](self, "contact"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "fullscreenImageData"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "imageWithData:", v13), v20 = objc_claimAutoreleasedReturnValue(), v13, v12, (v4 = v20) != 0) || (-[CNContactPhotoView contact](self, "contact"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isKeyAvailable:", *MEMORY[0x1E695C278]), v14, v15) && (-[CNContactPhotoView contact](self, "contact"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "imageData"), v17 = objc_claimAutoreleasedReturnValue(), v16, v17) && (objc_msgSend(MEMORY[0x1E69DCAB8], "imageWithData:", v17), v21 = objc_claimAutoreleasedReturnValue(), v17, (v4 = v21) != 0))
  {
    v19 = v4;
    [v4 size];
    v6 = v5;
    window = [(CNContactPhotoView *)self window];
    [window bounds];
    v8 = CGRectGetWidth(v23) * 0.75;

    if (v6 >= v8)
    {
      [(CNContactPhotoView *)self _presentFullScreenPhoto:v19];
      goto LABEL_11;
    }
  }

  else
  {
    v19 = 0;
  }

  [(CNContactPhotoView *)self _bounceSmallPhoto];
LABEL_11:
}

- (id)previewPath
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"ABContactPhotoView_FullscreenPhoto.jpg"];

  return v3;
}

- (void)visualIdentityPicker:(id)picker presentationControllerWillDismiss:(id)dismiss
{
  pickerCopy = picker;
  dismissCopy = dismiss;
  presenterDelegate = [(CNContactPhotoView *)self presenterDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    presenterDelegate2 = [(CNContactPhotoView *)self presenterDelegate];
    navigationController = [pickerCopy navigationController];
    [presenterDelegate2 viewController:navigationController presentationControllerWillDismiss:dismissCopy];
  }
}

- (void)updatePendingContactWithEditedContact:(id)contact
{
  contactCopy = contact;
  wallpaper = [contactCopy wallpaper];
  pendingEditContact = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact setWallpaper:wallpaper];

  watchWallpaperImageData = [contactCopy watchWallpaperImageData];
  pendingEditContact2 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact2 setWatchWallpaperImageData:watchWallpaperImageData];

  imageData = [contactCopy imageData];
  pendingEditContact3 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact3 setImageData:imageData];

  imageType = [contactCopy imageType];
  pendingEditContact4 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact4 setImageType:imageType];

  imageHash = [contactCopy imageHash];
  pendingEditContact5 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact5 setImageHash:imageHash];

  [contactCopy cropRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  pendingEditContact6 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact6 setCropRect:{v16, v18, v20, v22}];

  thumbnailImageData = [contactCopy thumbnailImageData];
  pendingEditContact7 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact7 setThumbnailImageData:thumbnailImageData];

  fullscreenImageData = [contactCopy fullscreenImageData];
  pendingEditContact8 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact8 setFullscreenImageData:fullscreenImageData];

  preferredLikenessSource = [contactCopy preferredLikenessSource];
  pendingEditContact9 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact9 setPreferredLikenessSource:preferredLikenessSource];

  memojiMetadata = [contactCopy memojiMetadata];
  pendingEditContact10 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact10 setMemojiMetadata:memojiMetadata];

  avatarRecipeData = [contactCopy avatarRecipeData];

  pendingEditContact11 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact11 setAvatarRecipeData:avatarRecipeData];

  pendingEditContact12 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact12 setSharedPhotoDisplayPreference:2];

  [(CNContactPhotoView *)self setModified:1];

  [(CNContactPhotoView *)self reloadData];
}

- (void)photoPicker:(id)picker didUpdatePhotoForContact:(id)contact withContactImage:(id)image
{
  pickerCopy = picker;
  if (contact)
  {
    [(CNContactPhotoView *)self updatePendingContactWithEditedContact:contact];
  }

  presenterDelegate = [(CNContactPhotoView *)self presenterDelegate];
  [presenterDelegate sender:0 dismissViewController:pickerCopy];

  [(CNContactPhotoView *)self setPhotoPicker:0];
}

- (void)photoPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presenterDelegate = [(CNContactPhotoView *)self presenterDelegate];
  [presenterDelegate sender:0 dismissViewController:cancelCopy];

  [(CNContactPhotoView *)self setPhotoPicker:0];
}

- (BOOL)isPresentingModalViewController
{
  presenterDelegate = [(CNContactPhotoView *)self presenterDelegate];
  isPresentingModalViewController = [presenterDelegate isPresentingModalViewController];

  return isPresentingModalViewController;
}

- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  senderCopy = sender;
  presenterDelegate = [(CNContactPhotoView *)self presenterDelegate];
  [presenterDelegate sender:senderCopy dismissViewController:controllerCopy completionHandler:handlerCopy];
}

- (void)sender:(id)sender presentViewController:(id)controller
{
  controllerCopy = controller;
  senderCopy = sender;
  presenterDelegate = [(CNContactPhotoView *)self presenterDelegate];
  v10 = presenterDelegate;
  if (senderCopy)
  {
    selfCopy = senderCopy;
  }

  else
  {
    selfCopy = self;
  }

  [presenterDelegate sender:selfCopy presentViewController:controllerCopy];
}

- (void)presentPhotoPickerWithImageData:(id)data
{
  dataCopy = data;
  v4 = [CNPhotoPickerViewController alloc];
  pendingEditContact = [(CNContactPhotoView *)self pendingEditContact];
  v6 = +[CNContactStyle currentStyle];
  v7 = +[CNPhotoPickerConfiguration contactsConfiguration];
  v8 = [v7 configurationBySettingAllowsPhotoCapture:{-[CNContactPhotoView shouldAllowTakePhotoAction](self, "shouldAllowTakePhotoAction")}];
  v9 = [(CNPhotoPickerViewController *)v4 initWithContact:pendingEditContact style:v6 configuration:v8];

  [(CNPhotoPickerViewController *)v9 setDelegate:self];
  [(CNVisualIdentityPickerViewController *)v9 setPresenterDelegate:self];
  +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  [(CNPhotoPickerViewController *)v9 setPreferredContentSize:?];
  if (dataCopy)
  {
    [(CNVisualIdentityPickerViewController *)v9 setProposedImageData:dataCopy];
  }

  [(CNContactPhotoView *)self setPhotoPicker:v9];
  window = [(CNContactPhotoView *)self window];
  [window endEditing:1];

  photoPicker = [(CNContactPhotoView *)self photoPicker];
  v12 = [CNPhotoPickerViewController navigationControllerForPicker:photoPicker];

  presenterDelegate = [(CNContactPhotoView *)self presenterDelegate];
  [presenterDelegate sender:self presentViewController:v12];
}

- (BOOL)_isUsingSilhouette
{
  if (self->_pendingEditContact)
  {
    [(CNContactPhotoView *)self pendingEditContact];
  }

  else
  {
    [(CNContactPhotoView *)self contact];
  }
  v3 = ;
  if ([(CNContactPhotoView *)self hasPhoto])
  {
    v4 = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E6996568];
    givenName = [v3 givenName];
    if ((*(v5 + 16))(v5, givenName))
    {
      familyName = [v3 familyName];
      v4 = (*(v5 + 16))(v5, familyName);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)_isUsingCuratedPhoto
{
  if (self->_pendingEditContact)
  {
    [(CNContactPhotoView *)self pendingEditContact];
  }

  else
  {
    [(CNContactPhotoView *)self contact];
  }
  v3 = ;
  preferredLikenessSource = [v3 preferredLikenessSource];
  if ([(CNContactPhotoView *)self hasPhoto])
  {
    if (preferredLikenessSource)
    {
      v5 = [preferredLikenessSource isEqualToString:*MEMORY[0x1E695C2D0]];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updatePendingContactWithEditedPropertyItem:(id)item
{
  itemCopy = item;
  property = [itemCopy property];
  if ([property isEqualToString:*MEMORY[0x1E695C240]])
  {
  }

  else
  {
    property2 = [itemCopy property];
    v6 = [property2 isEqualToString:*MEMORY[0x1E695C230]];

    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v7 = MEMORY[0x1E695CD80];
  pendingEditContact = [(CNContactPhotoView *)self pendingEditContact];
  v9 = [v7 abbreviatedStringFromContact:pendingEditContact trimmingWhitespace:1];

  editingStringValue = [itemCopy editingStringValue];
  pendingEditContact2 = [(CNContactPhotoView *)self pendingEditContact];
  property3 = [itemCopy property];
  [pendingEditContact2 setValue:editingStringValue forKey:property3];

  v13 = MEMORY[0x1E695CD80];
  pendingEditContact3 = [(CNContactPhotoView *)self pendingEditContact];
  v15 = [v13 stringFromContact:pendingEditContact3 style:1002];

  if (!-[CNContactPhotoView hasPhoto](self, "hasPhoto") && ([v15 isEqualToString:v9] & 1) == 0)
  {
    [(CNContactPhotoView *)self updateViewsAndNotifyDelegate:0];
  }

LABEL_8:
}

- (void)updateEditPhotoButton
{
  v22[1] = *MEMORY[0x1E69E9840];
  if ([(CNContactPhotoView *)self isEditing]&& [(CNContactPhotoView *)self showEditingLabel])
  {
    editPhotoButton = [(CNContactPhotoView *)self editPhotoButton];
    [editPhotoButton setHidden:0];

    if ([(CNContactPhotoView *)self _isUsingSilhouette])
    {
      [(CNContactPhotoView *)self tintColor];
    }

    else
    {
      +[CNUIColorRepository contactCardPhotoEditButtonColor];
    }
    v4 = ;
    editPhotoButton2 = [(CNContactPhotoView *)self editPhotoButton];
    [editPhotoButton2 setTintColor:v4];

    [(CNContactPhotoView *)self labelAlpha];
    v7 = v6;
    editPhotoButton3 = [(CNContactPhotoView *)self editPhotoButton];
    [editPhotoButton3 setAlpha:v7];

    if ([(CNContactPhotoView *)self _isUsingCuratedPhoto])
    {
      v9 = @"PHOTO_EDIT_LABEL";
    }

    else
    {
      v9 = @"PHOTO_ADD_LABEL";
    }

    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:v9 value:&stru_1F0CE7398 table:@"Localized"];

    v12 = [v11 componentsSeparatedByString:@"\n"];
    v13 = [v12 count];

    if (v13 > 2)
    {
      v14 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
      [v14 setAlignment:1];
      [v14 setMaximumLineHeight:14.0];
      [v14 setMinimumLineHeight:14.0];
      v16 = *MEMORY[0x1E69DB610];
      v19[0] = *MEMORY[0x1E69DB688];
      v19[1] = v16;
      v20[0] = v14;
      v20[1] = &unk_1F0D4B3C8;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
      v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v15];
      [(UIButton *)self->_editPhotoButton setAttributedTitle:v17 forState:0];
    }

    else
    {
      v21 = *MEMORY[0x1E69DB610];
      v22[0] = &unk_1F0D4B3C8;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v14];
      [(UIButton *)self->_editPhotoButton setAttributedTitle:v15 forState:0];
    }
  }

  else
  {
    editPhotoButton4 = [(CNContactPhotoView *)self editPhotoButton];
    [editPhotoButton4 setHidden:1];
  }
}

- (void)updateViewsAndNotifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v20[1] = *MEMORY[0x1E69E9840];
  if (self->_pendingEditContact)
  {
    v20[0] = self->_pendingEditContact;
    contacts2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
LABEL_5:
    v7 = contacts2;
    goto LABEL_6;
  }

  contacts = [(CNContactPhotoView *)self contacts];

  if (contacts)
  {
    contacts2 = [(CNContactPhotoView *)self contacts];
    goto LABEL_5;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_6:
  [(CNContactPhotoView *)self setProhibitsPersonaFetch:0];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v10 = [featureFlags isFeatureEnabled:6];

  avatarView = [(CNContactPhotoView *)self avatarView];
  v12 = avatarView;
  if (v10)
  {
    [avatarView setContacts:v7];

    v13 = &__block_literal_global_131;
  }

  else
  {
    contacts3 = [avatarView contacts];
    v15 = [contacts3 isEqualToArray:v7];

    avatarView2 = [(CNContactPhotoView *)self avatarView];
    avatarView3 = avatarView2;
    if (v15)
    {
      [avatarView2 contactDidChange];
      goto LABEL_12;
    }

    [avatarView2 setContacts:v7];

    v13 = &__block_literal_global_134;
  }

  v18 = [v7 _cn_any:v13];
  avatarView3 = [(CNContactPhotoView *)self avatarView];
  [avatarView3 setShouldFetchSharedMeContactPhoto:v18];
LABEL_12:

  [(CNContactPhotoView *)self setNeedsUpdateConstraints];
  [(CNContactPhotoView *)self updateEditPhotoButton];
  if (delegateCopy)
  {
    delegate = [(CNContactPhotoView *)self delegate];
    [delegate photoViewDidUpdate:self];
  }
}

uint64_t __51__CNContactPhotoView_updateViewsAndNotifyDelegate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6996BA8];
  v3 = a2;
  v4 = [v2 unifiedMeContactMonitor];
  v5 = [v4 isMeContact:v3];

  return v5;
}

uint64_t __51__CNContactPhotoView_updateViewsAndNotifyDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6996BA8];
  v3 = a2;
  v4 = [v2 unifiedMeContactMonitor];
  v5 = [v4 isMeContact:v3];

  return v5;
}

- (void)updatePhoto
{
  if ([(CNContactPhotoView *)self isEditing]&& self->_pendingEditContact)
  {
    pendingEditContact = [(CNContactPhotoView *)self pendingEditContact];
    v4 = [(CNContactPhotoView *)self newPendingContactPreservingChangesFrom:pendingEditContact];
    [(CNContactPhotoView *)self setPendingEditContact:v4];
  }

  [(CNContactPhotoView *)self reloadData];
}

- (void)resetPhoto
{
  [(CNContactPhotoView *)self setPendingEditContact:0];
  [(CNContactPhotoView *)self setModified:0];
  [(CNContactPhotoView *)self setCurrentLikeness:0];
  [(CNContactPhotoView *)self setOriginalLikeness:0];

  [(CNContactPhotoView *)self reloadData];
}

- (void)paste:(id)paste
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  supportedPasteboardTypes = [objc_opt_class() supportedPasteboardTypes];
  v6 = [supportedPasteboardTypes countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(supportedPasteboardTypes);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
      v12 = [generalPasteboard dataForPasteboardType:v10];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [supportedPasteboardTypes countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    supportedPasteboardTypes = [MEMORY[0x1E696AAA8] currentHandler];
    [supportedPasteboardTypes handleFailureInMethod:a2 object:self file:@"CNContactPhotoView.m" lineNumber:511 description:@"We are supposed to have an image in the pasteboard when we get here."];
    v12 = 0;
  }

  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  pendingEditContact = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact setCropRect:{v13, v14, v15, v16}];

  pendingEditContact2 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact2 setThumbnailImageData:0];

  pendingEditContact3 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact3 setFullscreenImageData:0];

  pendingEditContact4 = [(CNContactPhotoView *)self pendingEditContact];
  [pendingEditContact4 setImageData:v12];

  [(CNContactPhotoView *)self setModified:1];
  [(CNContactPhotoView *)self reloadData];
}

- (void)copy:(id)copy
{
  v10[1] = *MEMORY[0x1E69E9840];
  currentImageData = [(CNContactPhotoView *)self currentImageData];
  if (currentImageData)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    v5 = getkUTTypeJPEG();
    v8 = v5;
    v9 = currentImageData;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [generalPasteboard setItems:v7];
  }
}

- (void)menuWillHide:(id)hide
{
  if ([(CNContactPhotoView *)self isFirstResponder])
  {

    [(CNContactPhotoView *)self setHighlightedFrame:0];
  }
}

- (BOOL)canBecomeFirstResponder
{
  if ([(CNContactPhotoView *)self hasPhoto])
  {
    LOBYTE(isEditing) = 1;
  }

  else
  {
    isEditing = [(CNContactPhotoView *)self isEditing];
    if (isEditing)
    {
      generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
      supportedPasteboardTypes = [objc_opt_class() supportedPasteboardTypes];
      v6 = [generalPasteboard containsPasteboardTypes:supportedPasteboardTypes];

      LOBYTE(isEditing) = v6;
    }
  }

  return isEditing;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_copy_ == action)
  {
    hasPhoto = [(CNContactPhotoView *)self hasPhoto];
  }

  else if (sel_paste_ == action && [(CNContactPhotoView *)self isEditing])
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    supportedPasteboardTypes = [objc_opt_class() supportedPasteboardTypes];
    hasPhoto = [generalPasteboard containsPasteboardTypes:supportedPasteboardTypes];
  }

  else
  {
    hasPhoto = 0;
  }

  return hasPhoto;
}

- (void)longPressGesture:(id)gesture
{
  if ([gesture state] == 1 && -[CNContactPhotoView becomeFirstResponder](self, "becomeFirstResponder"))
  {
    mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
    [(CNContactPhotoView *)self bounds];
    [mEMORY[0x1E69DCC68] showMenuFromView:self rect:?];
    [(CNContactPhotoView *)self setHighlightedFrame:1];
  }
}

- (void)avatarTapped:(id)tapped
{
  delegate = [(CNContactPhotoView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactPhotoView *)self delegate];
    [delegate2 didTapPhotoViewWhileEditing:{-[CNContactPhotoView isEditing](self, "isEditing")}];
LABEL_8:

    return;
  }

  if (![(CNContactPhotoView *)self isEditing])
  {
    delegate2 = [MEMORY[0x1E69DCC68] sharedMenuController];
    [delegate2 hideMenu];
    goto LABEL_8;
  }

  [(CNContactPhotoView *)self _presentPhotoPicker];
}

- (void)disablePhotoTapGesture
{
  tapGestureRecognizer = [(CNContactPhotoView *)self tapGestureRecognizer];
  [tapGestureRecognizer setEnabled:0];
}

- (void)setHighlightedFrame:(BOOL)frame
{
  if (frame)
  {
    tintColor = [(CNContactPhotoView *)self tintColor];
    cGColor = [tintColor CGColor];
    avatarView = [(CNContactPhotoView *)self avatarView];
    layer = [avatarView layer];
    [layer setBorderColor:cGColor];

    avatarView2 = [(CNContactPhotoView *)self avatarView];
    layer2 = [avatarView2 layer];
    [layer2 setBorderWidth:1.0];

    avatarView3 = [(CNContactPhotoView *)self avatarView];
    [avatarView3 frame];
    v10 = CGRectGetWidth(v15) * 0.5;
    avatarView4 = [(CNContactPhotoView *)self avatarView];
    layer3 = [avatarView4 layer];
    [layer3 setCornerRadius:v10];
  }

  else
  {
    avatarView3 = [(CNContactPhotoView *)self avatarView];
    avatarView4 = [avatarView3 layer];
    [avatarView4 setBorderWidth:0.0];
  }
}

- (void)setEditing:(BOOL)editing preservingChanges:(BOOL)changes
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    if (changes)
    {
      [(CNContactPhotoView *)self reloadData];
    }

    else
    {
      [(CNContactPhotoView *)self resetPhoto];
    }
  }
}

- (BOOL)hasPhoto
{
  pendingEditContact = self->_pendingEditContact;
  if (!pendingEditContact)
  {
    contact = [(CNContactPhotoView *)self contact];
    thumbnailImageData = [contact thumbnailImageData];
    if (thumbnailImageData)
    {
      v6 = 1;
    }

    else
    {
      contact2 = [(CNContactPhotoView *)self contact];
      if ([contact2 isKeyAvailable:*MEMORY[0x1E695C278]])
      {
        contact3 = [(CNContactPhotoView *)self contact];
        imageData = [contact3 imageData];
        v6 = imageData != 0;
      }

      else
      {
        v6 = 0;
      }

      thumbnailImageData = 0;
    }

    goto LABEL_13;
  }

  thumbnailImageData2 = [(CNMutableContact *)pendingEditContact thumbnailImageData];
  if (!thumbnailImageData2)
  {
    if (![(CNMutableContact *)self->_pendingEditContact isKeyAvailable:*MEMORY[0x1E695C278]])
    {
      contact = 0;
      v6 = 0;
      goto LABEL_14;
    }

    thumbnailImageData = [(CNMutableContact *)self->_pendingEditContact imageData];
    contact = 0;
    v6 = thumbnailImageData != 0;
LABEL_13:

    goto LABEL_14;
  }

  contact = thumbnailImageData2;
  v6 = 1;
LABEL_14:

  return v6;
}

- (void)saveEdits
{
  pendingEditContact = [(CNContactPhotoView *)self pendingEditContact];
  mutableContact = [(CNContactPhotoView *)self mutableContact];
  [(CNContactPhotoView *)self saveChangesFromPendingContact:pendingEditContact toContact:mutableContact];
}

- (void)saveChangesFromPendingContact:(id)contact toContact:(id)toContact
{
  v56 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  toContactCopy = toContact;
  mutableContact = [(CNContactPhotoView *)self mutableContact];
  if (mutableContact)
  {
    avatarRecipeData = mutableContact;
    mutableContact2 = [(CNContactPhotoView *)self mutableContact];
    if (([mutableContact2 isKeyAvailable:*MEMORY[0x1E695C278]] & 1) == 0)
    {

LABEL_9:
      goto LABEL_10;
    }

    mutableContact3 = [(CNContactPhotoView *)self mutableContact];
    v12 = [mutableContact3 isKeyAvailable:*MEMORY[0x1E695C1E8]];

    if (contactCopy && v12)
    {
      imageData = [contactCopy imageData];
      [toContactCopy setImageData:imageData];

      imageType = [contactCopy imageType];
      [toContactCopy setImageType:imageType];

      imageHash = [contactCopy imageHash];
      [toContactCopy setImageHash:imageHash];

      fullscreenImageData = [contactCopy fullscreenImageData];
      [toContactCopy setFullscreenImageData:fullscreenImageData];

      thumbnailImageData = [contactCopy thumbnailImageData];
      [toContactCopy setThumbnailImageData:thumbnailImageData];

      [contactCopy cropRect];
      [toContactCopy setCropRect:?];
      preferredLikenessSource = [contactCopy preferredLikenessSource];
      [toContactCopy setPreferredLikenessSource:preferredLikenessSource];

      v19 = CNUILogContactCard();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        imageData2 = [toContactCopy imageData];
        v20 = [imageData2 length];
        fullscreenImageData2 = [toContactCopy fullscreenImageData];
        v21 = [fullscreenImageData2 length];
        thumbnailImageData2 = [toContactCopy thumbnailImageData];
        v23 = [thumbnailImageData2 length];
        [toContactCopy cropRect];
        v25 = v24;
        [toContactCopy cropRect];
        v27 = v26;
        [toContactCopy cropRect];
        v29 = v28;
        [toContactCopy cropRect];
        v31 = v30;
        imageType2 = [toContactCopy imageType];
        imageHash2 = [toContactCopy imageHash];
        _cn_hexString = [imageHash2 _cn_hexString];
        *buf = 134220034;
        v39 = v20;
        v40 = 2048;
        v41 = v21;
        v42 = 2048;
        v43 = v23;
        v44 = 2048;
        v45 = v25;
        v46 = 2048;
        v47 = v27;
        v48 = 2048;
        v49 = v29;
        v50 = 2048;
        v51 = v31;
        v52 = 2114;
        v53 = imageType2;
        v54 = 2114;
        v55 = _cn_hexString;
        _os_log_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Saving contact image - bytes: imageData %ld, fullscreen %ld, thumbnail %ld, cropRect {%.2f, %.2f, %.2f, %.2f}, imageType %{public}@ imageHash %{public}@", buf, 0x5Cu);
      }

      memojiMetadata = [contactCopy memojiMetadata];
      [toContactCopy setMemojiMetadata:memojiMetadata];

      avatarRecipeData = [contactCopy avatarRecipeData];
      [toContactCopy setAvatarRecipeData:avatarRecipeData];
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (id)currentImageData
{
  pendingEditContact = self->_pendingEditContact;
  if (pendingEditContact)
  {
    contact = pendingEditContact;
  }

  else
  {
    contact = [(CNContactPhotoView *)self contact];
  }

  v4 = contact;
  imageData = [(CNMutableContact *)contact imageData];

  return imageData;
}

- (void)updateFontSizes
{
  v3 = [MEMORY[0x1E69DB878] ab_preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  titleLabel = [(UIButton *)self->_editPhotoButton titleLabel];
  [titleLabel setFont:v3];

  [(UIButton *)self->_editPhotoButton sizeToFit];

  [(CNContactPhotoView *)self setNeedsLayout];
}

- (id)newPendingContactPreservingChangesFrom:(id)from
{
  fromCopy = from;
  mutableContact = [(CNContactPhotoView *)self mutableContact];
  v6 = [mutableContact mutableCopy];

  if (fromCopy)
  {
    [(CNContactPhotoView *)self saveChangesFromPendingContact:fromCopy toContact:v6];
  }

  return v6;
}

- (CNMutableContact)pendingEditContact
{
  if ([(CNContactPhotoView *)self isEditing]&& !self->_pendingEditContact)
  {
    v3 = [(CNContactPhotoView *)self newPendingContactPreservingChangesFrom:0];
    pendingEditContact = self->_pendingEditContact;
    self->_pendingEditContact = v3;
  }

  v5 = self->_pendingEditContact;

  return v5;
}

- (CNMutableContact)mutableContact
{
  contact = [(CNContactPhotoView *)self contact];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contact2 = [(CNContactPhotoView *)self contact];
  }

  else
  {
    contact2 = 0;
  }

  return contact2;
}

- (id)contact
{
  contacts = [(CNContactPhotoView *)self contacts];
  v4 = [contacts count];

  if (v4 == 1)
  {
    contacts2 = [(CNContactPhotoView *)self contacts];
    firstObject = [contacts2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)setLabelAlpha:(double)alpha
{
  if (self->_labelAlpha != alpha)
  {
    self->_labelAlpha = alpha;
    editPhotoButton = [(CNContactPhotoView *)self editPhotoButton];
    isHidden = [editPhotoButton isHidden];

    if ((isHidden & 1) == 0)
    {
      editPhotoButton2 = [(CNContactPhotoView *)self editPhotoButton];
      [editPhotoButton2 setAlpha:alpha];
    }
  }
}

- (void)setContacts:(id)contacts
{
  contactsCopy = contacts;
  if ((-[NSArray count](self->_contacts, "count") || [contactsCopy count]) && (objc_msgSend(contactsCopy, "_cn_isIdenticalToArray:", self->_contacts) & 1) == 0)
  {
    objc_storeStrong(&self->_contacts, contacts);
    dropInteraction = [(CNContactPhotoView *)self dropInteraction];

    if (dropInteraction)
    {
      if ([contactsCopy count] == 1)
      {
        delegate = [(CNContactPhotoView *)self delegate];
        contactViewCache = [delegate contactViewCache];

        contact = [(CNContactPhotoView *)self contact];
        v9 = [contactViewCache policyForContact:contact];

        -[CNContactPhotoView setAcceptsImageDrop:](self, "setAcceptsImageDrop:", [v9 isReadonly] ^ 1);
      }

      else
      {
        [(CNContactPhotoView *)self setAcceptsImageDrop:0];
      }
    }

    [(CNContactPhotoView *)self resetPhoto];
  }
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_presenterDelegate, 0);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContactPhotoView;
  [(CNContactPhotoView *)&v4 dealloc];
}

- (CNContactPhotoView)initWithFrame:(CGRect)frame shouldAllowTakePhotoAction:(BOOL)action threeDTouchEnabled:(BOOL)enabled contactStore:(id)store allowsImageDrops:(BOOL)drops imageRenderer:(id)renderer allowStaleRendering:(BOOL)rendering
{
  renderingCopy = rendering;
  dropsCopy = drops;
  enabledCopy = enabled;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v66[2] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  rendererCopy = renderer;
  v64.receiver = self;
  v64.super_class = CNContactPhotoView;
  height = [(CNContactPhotoView *)&v64 initWithFrame:x, y, width, height];
  if (height)
  {
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v62 = dropsCopy;
    actionCopy = action;
    if (CGRectIsEmpty(v67))
    {
      [objc_opt_class() defaultSize];
      width = v22;
      height = v23;
      x = 0.0;
      y = 0.0;
    }

    v24 = [[CNAvatarView alloc] initWithImageRenderer:rendererCopy threeDTouchEnabled:enabledCopy contactStore:storeCopy];
    avatarView = height->_avatarView;
    height->_avatarView = v24;

    [(CNAvatarView *)height->_avatarView setFrame:x, y, width, height];
    [(CNAvatarView *)height->_avatarView setAutoUpdateContact:0];
    [(CNAvatarView *)height->_avatarView setAllowStaleRendering:renderingCopy];
    [(CNAvatarView *)height->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNAvatarView *)height->_avatarView setDelegate:height];
    [(CNContactPhotoView *)height addSubview:height->_avatarView];
    v26 = [MEMORY[0x1E69DC738] buttonWithType:1];
    editPhotoButton = height->_editPhotoButton;
    height->_editPhotoButton = v26;

    v28 = +[CNUIColorRepository contactCardPhotoEditButtonColor];
    [(UIButton *)height->_editPhotoButton setTintColor:v28];

    [(UIButton *)height->_editPhotoButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)height->_editPhotoButton addTarget:height action:sel__presentPhotoPicker forControlEvents:64];
    titleLabel = [(UIButton *)height->_editPhotoButton titleLabel];
    [titleLabel setTextAlignment:1];

    [(UIButton *)height->_editPhotoButton setContentVerticalAlignment:0];
    v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v31 = [v30 fontWithSize:12.0];
    titleLabel2 = [(UIButton *)height->_editPhotoButton titleLabel];
    [titleLabel2 setFont:v31];

    titleLabel3 = [(UIButton *)height->_editPhotoButton titleLabel];
    [titleLabel3 setNumberOfLines:3];

    v34 = height->_editPhotoButton;
    v35 = CNContactsUIBundle();
    v36 = [v35 localizedStringForKey:@"PHOTO_EDIT_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
    [(UIButton *)v34 setTitle:v36 forState:0];

    [(UIButton *)height->_editPhotoButton setHidden:1];
    [(CNContactPhotoView *)height addSubview:height->_editPhotoButton];
    v37 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:height action:sel_avatarTapped_];
    [(CNContactPhotoView *)height setTapGestureRecognizer:v37];

    v38 = height->_avatarView;
    tapGestureRecognizer = [(CNContactPhotoView *)height tapGestureRecognizer];
    [(CNAvatarView *)v38 addGestureRecognizer:tapGestureRecognizer];

    v40 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:height action:sel_longPressGesture_];
    [(CNContactPhotoView *)height addGestureRecognizer:v40];
    [(CNContactPhotoView *)height setLongPressGestureRecognizer:v40];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:height selector:sel_menuWillHide_ name:*MEMORY[0x1E69DE0E8] object:0];

    array = [MEMORY[0x1E695DF70] array];
    v65[0] = @"avatar";
    v43 = height->_avatarView;
    v65[1] = @"editButton";
    v66[0] = v43;
    v66[1] = height->_editPhotoButton;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v45 = [MEMORY[0x1E696ACD8] constraintWithItem:height->_avatarView attribute:9 relatedBy:0 toItem:height attribute:9 multiplier:1.0 constant:0.0];
    [array addObject:v45];

    v46 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[avatar]|" options:0 metrics:0 views:v44];
    [array addObjectsFromArray:v46];

    v47 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[avatar]|" options:0 metrics:0 views:v44];
    [array addObjectsFromArray:v47];

    v48 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[avatar]" options:0 metrics:0 views:v44];
    [array addObjectsFromArray:v48];

    v49 = [MEMORY[0x1E696ACD8] constraintWithItem:height->_avatarView attribute:8 relatedBy:0 toItem:height->_avatarView attribute:7 multiplier:1.0 constant:0.0];
    [array addObject:v49];

    v50 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[editButton]|" options:0 metrics:0 views:v44];
    [array addObjectsFromArray:v50];

    editPhotoButton = [(CNContactPhotoView *)height editPhotoButton];
    bottomAnchor = [editPhotoButton bottomAnchor];
    bottomAnchor2 = [(CNContactPhotoView *)height bottomAnchor];
    v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v54];

    editPhotoButton2 = [(CNContactPhotoView *)height editPhotoButton];
    heightAnchor = [editPhotoButton2 heightAnchor];
    heightAnchor2 = [(CNContactPhotoView *)height heightAnchor];
    v58 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2 multiplier:0.35];
    [array addObject:v58];

    [MEMORY[0x1E696ACD8] activateConstraints:array];
    [(CNContactPhotoView *)height resetPhoto];
    [(CNContactPhotoView *)height updateFontSizes];
    if (v62)
    {
      v59 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:height];
      dropInteraction = height->_dropInteraction;
      height->_dropInteraction = v59;

      [(CNContactPhotoView *)height addInteraction:height->_dropInteraction];
    }

    height->_shouldAllowTakePhotoAction = actionCopy;
  }

  return height;
}

+ (id)supportedPasteboardTypes
{
  if (supportedPasteboardTypes_cn_once_token_8 != -1)
  {
    dispatch_once(&supportedPasteboardTypes_cn_once_token_8, &__block_literal_global_12393);
  }

  v3 = supportedPasteboardTypes_cn_once_object_8;

  return v3;
}

void __46__CNContactPhotoView_supportedPasteboardTypes__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = getkUTTypePNG();
  v4[0] = v0;
  v1 = getkUTTypeJPEG();
  v4[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v3 = supportedPasteboardTypes_cn_once_object_8;
  supportedPasteboardTypes_cn_once_object_8 = v2;
}

+ (id)descriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)enabled
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = [CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:enabled];
  v4 = +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  v5 = *MEMORY[0x1E695C3C8];
  v11[1] = v4;
  v11[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];

  v7 = MEMORY[0x1E695CD58];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactPhotoView descriptorForRequiredKeysWithThreeDTouchEnabled:]"];
  v9 = [v7 descriptorWithKeyDescriptors:v6 description:v8];

  return v9;
}

+ (CGSize)defaultSize
{
  v2 = 60.0;
  v3 = 60.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end