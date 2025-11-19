@interface CNContactPhotoView
+ (CGSize)defaultSize;
+ (id)descriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)a3;
+ (id)supportedPasteboardTypes;
- (BOOL)_isUsingCuratedPhoto;
- (BOOL)_isUsingSilhouette;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)hasPhoto;
- (BOOL)isPresentingModalViewController;
- (CGRect)previewController:(id)a3 frameForPreviewItem:(id)a4 inSourceView:(id *)a5;
- (CNContactPhotoView)initWithFrame:(CGRect)a3 shouldAllowTakePhotoAction:(BOOL)a4 threeDTouchEnabled:(BOOL)a5 contactStore:(id)a6 allowsImageDrops:(BOOL)a7 imageRenderer:(id)a8 allowStaleRendering:(BOOL)a9;
- (CNContactPhotoViewDelegate)delegate;
- (CNMutableContact)mutableContact;
- (CNMutableContact)pendingEditContact;
- (CNPresenterDelegate)presenterDelegate;
- (id)contact;
- (id)currentImageData;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)newPendingContactPreservingChangesFrom:(id)a3;
- (id)presentingViewControllerForAvatarView:(id)a3;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (id)previewController:(id)a3 transitionImageForPreviewItem:(id)a4 contentRect:(CGRect *)a5;
- (id)previewPath;
- (void)_bounceSmallPhoto;
- (void)_presentFullScreenPhoto:(id)a3;
- (void)_zoomContactPhoto;
- (void)avatarTapped:(id)a3;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)didUpdateContentForAvatarView:(id)a3;
- (void)disablePhotoTapGesture;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)longPressGesture:(id)a3;
- (void)menuWillHide:(id)a3;
- (void)paste:(id)a3;
- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5;
- (void)photoPickerDidCancel:(id)a3;
- (void)presentPhotoPickerWithImageData:(id)a3;
- (void)previewControllerDidDismiss:(id)a3;
- (void)resetPhoto;
- (void)saveChangesFromPendingContact:(id)a3 toContact:(id)a4;
- (void)saveEdits;
- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (void)sender:(id)a3 presentViewController:(id)a4;
- (void)setContacts:(id)a3;
- (void)setEditing:(BOOL)a3 preservingChanges:(BOOL)a4;
- (void)setHighlightedFrame:(BOOL)a3;
- (void)setLabelAlpha:(double)a3;
- (void)updateEditPhotoButton;
- (void)updateFontSizes;
- (void)updatePendingContactWithEditedContact:(id)a3;
- (void)updatePendingContactWithEditedPropertyItem:(id)a3;
- (void)updatePhoto;
- (void)updateViewsAndNotifyDelegate:(BOOL)a3;
- (void)visualIdentityPicker:(id)a3 presentationControllerWillDismiss:(id)a4;
- (void)willBeginPreviewInteractionForAvatarView:(id)a3;
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

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = a4;
  v6 = [v5 items];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 items];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = *MEMORY[0x1E69637F8];
    v11 = [v9 itemProvider];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__CNContactPhotoView_dropInteraction_performDrop___block_invoke;
    v13[3] = &unk_1E74E61D8;
    v13[4] = self;
    v12 = [v11 loadDataRepresentationForTypeIdentifier:v10 completionHandler:v13];
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

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v5 = a4;
  if ([(CNContactPhotoView *)self acceptsImageDrop])
  {
    v6 = [v5 items];
    v7 = [v6 count] == 1;

    v8 = 2 * v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:v8];

  return v9;
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v12[5] = *MEMORY[0x1E69E9840];
  v4 = a4;
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
  v10 = [v4 hasItemsConformingToTypeIdentifiers:{v9, v12[0]}];

  return v10;
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v5 = objc_alloc_init(CNContactPhotoPreviewItem);
  v6 = MEMORY[0x1E695CD80];
  v7 = [(CNContactPhotoView *)self contact];
  v8 = [v6 stringFromContact:v7 style:0];
  [(CNContactPhotoPreviewItem *)v5 setPreviewItemTitle:v8];

  v9 = MEMORY[0x1E695DFF8];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(CNContactPhotoView *)self previewPath];
  v12 = [v10 stringWithFormat:@"file://%@", v11];
  v13 = [v9 URLWithString:v12];
  [(CNContactPhotoPreviewItem *)v5 setPreviewItemURL:v13];

  return v5;
}

- (void)previewControllerDidDismiss:(id)a3
{
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(CNContactPhotoView *)self previewPath];
  [v5 removeItemAtPath:v4 error:0];
}

- (CGRect)previewController:(id)a3 frameForPreviewItem:(id)a4 inSourceView:(id *)a5
{
  if (a5)
  {
    v7 = self;
    *a5 = self;
  }

  v8 = [(CNContactPhotoView *)self avatarView:a3];
  v9 = [(CNContactPhotoView *)self avatarView];
  [v9 bounds];
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

- (id)previewController:(id)a3 transitionImageForPreviewItem:(id)a4 contentRect:(CGRect *)a5
{
  if (a5)
  {
    v7 = [(CNContactPhotoView *)self avatarView:a3];
    [v7 frame];
    a5->origin.x = v8;
    a5->origin.y = v9;
    a5->size.width = v10;
    a5->size.height = v11;
  }

  v12 = [(CNContactPhotoView *)self avatarView:a3];
  v13 = [v12 backgroundColor];

  v14 = [MEMORY[0x1E69DC888] clearColor];
  v15 = [(CNContactPhotoView *)self avatarView];
  [v15 setBackgroundColor:v14];

  v16 = [(CNContactPhotoView *)self avatarView];
  [v16 bounds];
  v25.width = v17;
  v25.height = v18;
  UIGraphicsBeginImageContext(v25);

  v19 = [(CNContactPhotoView *)self avatarView];
  v20 = [v19 layer];
  [v20 renderInContext:UIGraphicsGetCurrentContext()];

  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v22 = [(CNContactPhotoView *)self avatarView];
  [v22 setBackgroundColor:v13];

  return v21;
}

- (void)didUpdateContentForAvatarView:(id)a3
{
  v4 = +[CNUIContactsEnvironment currentEnvironment];
  v3 = [v4 launchCheckinRegistrar];
  [v3 checkInLaunchTasks:4];
}

- (void)willBeginPreviewInteractionForAvatarView:(id)a3
{
  v4 = [(CNContactPhotoView *)self longPressGestureRecognizer];
  [v4 setEnabled:0];

  v5 = [(CNContactPhotoView *)self longPressGestureRecognizer];
  [v5 setEnabled:1];

  v6 = [(CNContactPhotoView *)self window];
  [v6 endEditing:1];
}

- (id)presentingViewControllerForAvatarView:(id)a3
{
  v4 = [(CNContactPhotoView *)self delegate];
  v5 = [v4 viewControllerForPhotoView:self];

  return v5;
}

- (void)_bounceSmallPhoto
{
  if (![(CNContactPhotoView *)self isAnimatingBounce])
  {
    v3 = [(CNContactPhotoView *)self avatarView];
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(CNContactPhotoView *)self avatarView];
    [v12 frame];
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

- (void)_presentFullScreenPhoto:(id)a3
{
  v8 = UIImageJPEGRepresentation(a3, 0.0);
  v4 = [(CNContactPhotoView *)self previewPath];
  v5 = [v8 writeToFile:v4 atomically:0];

  if (v5)
  {
    v6 = [objc_alloc(getQLPreviewControllerClass()) initWithNibName:0 bundle:0];
    [v6 setDelegate:self];
    [v6 setDataSource:self];
    [v6 setModalPresentationStyle:0];
    v7 = [(CNContactPhotoView *)self presenterDelegate];
    [v7 sender:self presentViewController:v6];
  }
}

- (void)_zoomContactPhoto
{
  v3 = [(CNContactPhotoView *)self avatarView];
  v18 = [v3 imageForTransitioningToFullScreen];

  v4 = v18;
  if (v18 || (-[CNContactPhotoView contact](self, "contact"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isKeyAvailable:*MEMORY[0x1E695C238]], v9, v10) && (v11 = MEMORY[0x1E69DCAB8], -[CNContactPhotoView contact](self, "contact"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "fullscreenImageData"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "imageWithData:", v13), v20 = objc_claimAutoreleasedReturnValue(), v13, v12, (v4 = v20) != 0) || (-[CNContactPhotoView contact](self, "contact"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isKeyAvailable:", *MEMORY[0x1E695C278]), v14, v15) && (-[CNContactPhotoView contact](self, "contact"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "imageData"), v17 = objc_claimAutoreleasedReturnValue(), v16, v17) && (objc_msgSend(MEMORY[0x1E69DCAB8], "imageWithData:", v17), v21 = objc_claimAutoreleasedReturnValue(), v17, (v4 = v21) != 0))
  {
    v19 = v4;
    [v4 size];
    v6 = v5;
    v7 = [(CNContactPhotoView *)self window];
    [v7 bounds];
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

- (void)visualIdentityPicker:(id)a3 presentationControllerWillDismiss:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CNContactPhotoView *)self presenterDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNContactPhotoView *)self presenterDelegate];
    v10 = [v11 navigationController];
    [v9 viewController:v10 presentationControllerWillDismiss:v6];
  }
}

- (void)updatePendingContactWithEditedContact:(id)a3
{
  v4 = a3;
  v5 = [v4 wallpaper];
  v6 = [(CNContactPhotoView *)self pendingEditContact];
  [v6 setWallpaper:v5];

  v7 = [v4 watchWallpaperImageData];
  v8 = [(CNContactPhotoView *)self pendingEditContact];
  [v8 setWatchWallpaperImageData:v7];

  v9 = [v4 imageData];
  v10 = [(CNContactPhotoView *)self pendingEditContact];
  [v10 setImageData:v9];

  v11 = [v4 imageType];
  v12 = [(CNContactPhotoView *)self pendingEditContact];
  [v12 setImageType:v11];

  v13 = [v4 imageHash];
  v14 = [(CNContactPhotoView *)self pendingEditContact];
  [v14 setImageHash:v13];

  [v4 cropRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(CNContactPhotoView *)self pendingEditContact];
  [v23 setCropRect:{v16, v18, v20, v22}];

  v24 = [v4 thumbnailImageData];
  v25 = [(CNContactPhotoView *)self pendingEditContact];
  [v25 setThumbnailImageData:v24];

  v26 = [v4 fullscreenImageData];
  v27 = [(CNContactPhotoView *)self pendingEditContact];
  [v27 setFullscreenImageData:v26];

  v28 = [v4 preferredLikenessSource];
  v29 = [(CNContactPhotoView *)self pendingEditContact];
  [v29 setPreferredLikenessSource:v28];

  v30 = [v4 memojiMetadata];
  v31 = [(CNContactPhotoView *)self pendingEditContact];
  [v31 setMemojiMetadata:v30];

  v32 = [v4 avatarRecipeData];

  v33 = [(CNContactPhotoView *)self pendingEditContact];
  [v33 setAvatarRecipeData:v32];

  v34 = [(CNContactPhotoView *)self pendingEditContact];
  [v34 setSharedPhotoDisplayPreference:2];

  [(CNContactPhotoView *)self setModified:1];

  [(CNContactPhotoView *)self reloadData];
}

- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5
{
  v8 = a3;
  if (a4)
  {
    [(CNContactPhotoView *)self updatePendingContactWithEditedContact:a4];
  }

  v7 = [(CNContactPhotoView *)self presenterDelegate];
  [v7 sender:0 dismissViewController:v8];

  [(CNContactPhotoView *)self setPhotoPicker:0];
}

- (void)photoPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(CNContactPhotoView *)self presenterDelegate];
  [v5 sender:0 dismissViewController:v4];

  [(CNContactPhotoView *)self setPhotoPicker:0];
}

- (BOOL)isPresentingModalViewController
{
  v2 = [(CNContactPhotoView *)self presenterDelegate];
  v3 = [v2 isPresentingModalViewController];

  return v3;
}

- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CNContactPhotoView *)self presenterDelegate];
  [v11 sender:v10 dismissViewController:v9 completionHandler:v8];
}

- (void)sender:(id)a3 presentViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNContactPhotoView *)self presenterDelegate];
  v10 = v8;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = self;
  }

  [v8 sender:v9 presentViewController:v6];
}

- (void)presentPhotoPickerWithImageData:(id)a3
{
  v14 = a3;
  v4 = [CNPhotoPickerViewController alloc];
  v5 = [(CNContactPhotoView *)self pendingEditContact];
  v6 = +[CNContactStyle currentStyle];
  v7 = +[CNPhotoPickerConfiguration contactsConfiguration];
  v8 = [v7 configurationBySettingAllowsPhotoCapture:{-[CNContactPhotoView shouldAllowTakePhotoAction](self, "shouldAllowTakePhotoAction")}];
  v9 = [(CNPhotoPickerViewController *)v4 initWithContact:v5 style:v6 configuration:v8];

  [(CNPhotoPickerViewController *)v9 setDelegate:self];
  [(CNVisualIdentityPickerViewController *)v9 setPresenterDelegate:self];
  +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  [(CNPhotoPickerViewController *)v9 setPreferredContentSize:?];
  if (v14)
  {
    [(CNVisualIdentityPickerViewController *)v9 setProposedImageData:v14];
  }

  [(CNContactPhotoView *)self setPhotoPicker:v9];
  v10 = [(CNContactPhotoView *)self window];
  [v10 endEditing:1];

  v11 = [(CNContactPhotoView *)self photoPicker];
  v12 = [CNPhotoPickerViewController navigationControllerForPicker:v11];

  v13 = [(CNContactPhotoView *)self presenterDelegate];
  [v13 sender:self presentViewController:v12];
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
    v6 = [v3 givenName];
    if ((*(v5 + 16))(v5, v6))
    {
      v7 = [v3 familyName];
      v4 = (*(v5 + 16))(v5, v7);
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
  v4 = [v3 preferredLikenessSource];
  if ([(CNContactPhotoView *)self hasPhoto])
  {
    if (v4)
    {
      v5 = [v4 isEqualToString:*MEMORY[0x1E695C2D0]];
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

- (void)updatePendingContactWithEditedPropertyItem:(id)a3
{
  v16 = a3;
  v4 = [v16 property];
  if ([v4 isEqualToString:*MEMORY[0x1E695C240]])
  {
  }

  else
  {
    v5 = [v16 property];
    v6 = [v5 isEqualToString:*MEMORY[0x1E695C230]];

    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v7 = MEMORY[0x1E695CD80];
  v8 = [(CNContactPhotoView *)self pendingEditContact];
  v9 = [v7 abbreviatedStringFromContact:v8 trimmingWhitespace:1];

  v10 = [v16 editingStringValue];
  v11 = [(CNContactPhotoView *)self pendingEditContact];
  v12 = [v16 property];
  [v11 setValue:v10 forKey:v12];

  v13 = MEMORY[0x1E695CD80];
  v14 = [(CNContactPhotoView *)self pendingEditContact];
  v15 = [v13 stringFromContact:v14 style:1002];

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
    v3 = [(CNContactPhotoView *)self editPhotoButton];
    [v3 setHidden:0];

    if ([(CNContactPhotoView *)self _isUsingSilhouette])
    {
      [(CNContactPhotoView *)self tintColor];
    }

    else
    {
      +[CNUIColorRepository contactCardPhotoEditButtonColor];
    }
    v4 = ;
    v5 = [(CNContactPhotoView *)self editPhotoButton];
    [v5 setTintColor:v4];

    [(CNContactPhotoView *)self labelAlpha];
    v7 = v6;
    v8 = [(CNContactPhotoView *)self editPhotoButton];
    [v8 setAlpha:v7];

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
    v18 = [(CNContactPhotoView *)self editPhotoButton];
    [v18 setHidden:1];
  }
}

- (void)updateViewsAndNotifyDelegate:(BOOL)a3
{
  v3 = a3;
  v20[1] = *MEMORY[0x1E69E9840];
  if (self->_pendingEditContact)
  {
    v20[0] = self->_pendingEditContact;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v6 = [(CNContactPhotoView *)self contacts];

  if (v6)
  {
    v5 = [(CNContactPhotoView *)self contacts];
    goto LABEL_5;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_6:
  [(CNContactPhotoView *)self setProhibitsPersonaFetch:0];
  v8 = [MEMORY[0x1E69966E8] currentEnvironment];
  v9 = [v8 featureFlags];
  v10 = [v9 isFeatureEnabled:6];

  v11 = [(CNContactPhotoView *)self avatarView];
  v12 = v11;
  if (v10)
  {
    [v11 setContacts:v7];

    v13 = &__block_literal_global_131;
  }

  else
  {
    v14 = [v11 contacts];
    v15 = [v14 isEqualToArray:v7];

    v16 = [(CNContactPhotoView *)self avatarView];
    v17 = v16;
    if (v15)
    {
      [v16 contactDidChange];
      goto LABEL_12;
    }

    [v16 setContacts:v7];

    v13 = &__block_literal_global_134;
  }

  v18 = [v7 _cn_any:v13];
  v17 = [(CNContactPhotoView *)self avatarView];
  [v17 setShouldFetchSharedMeContactPhoto:v18];
LABEL_12:

  [(CNContactPhotoView *)self setNeedsUpdateConstraints];
  [(CNContactPhotoView *)self updateEditPhotoButton];
  if (v3)
  {
    v19 = [(CNContactPhotoView *)self delegate];
    [v19 photoViewDidUpdate:self];
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
    v3 = [(CNContactPhotoView *)self pendingEditContact];
    v4 = [(CNContactPhotoView *)self newPendingContactPreservingChangesFrom:v3];
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

- (void)paste:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [objc_opt_class() supportedPasteboardTypes];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      v11 = [MEMORY[0x1E69DCD50] generalPasteboard];
      v12 = [v11 dataForPasteboardType:v10];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"CNContactPhotoView.m" lineNumber:511 description:@"We are supposed to have an image in the pasteboard when we get here."];
    v12 = 0;
  }

  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  v17 = [(CNContactPhotoView *)self pendingEditContact];
  [v17 setCropRect:{v13, v14, v15, v16}];

  v18 = [(CNContactPhotoView *)self pendingEditContact];
  [v18 setThumbnailImageData:0];

  v19 = [(CNContactPhotoView *)self pendingEditContact];
  [v19 setFullscreenImageData:0];

  v20 = [(CNContactPhotoView *)self pendingEditContact];
  [v20 setImageData:v12];

  [(CNContactPhotoView *)self setModified:1];
  [(CNContactPhotoView *)self reloadData];
}

- (void)copy:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactPhotoView *)self currentImageData];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v5 = getkUTTypeJPEG();
    v8 = v5;
    v9 = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v4 setItems:v7];
  }
}

- (void)menuWillHide:(id)a3
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
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(CNContactPhotoView *)self isEditing];
    if (v3)
    {
      v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
      v5 = [objc_opt_class() supportedPasteboardTypes];
      v6 = [v4 containsPasteboardTypes:v5];

      LOBYTE(v3) = v6;
    }
  }

  return v3;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_copy_ == a3)
  {
    v9 = [(CNContactPhotoView *)self hasPhoto];
  }

  else if (sel_paste_ == a3 && [(CNContactPhotoView *)self isEditing])
  {
    v7 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v8 = [objc_opt_class() supportedPasteboardTypes];
    v9 = [v7 containsPasteboardTypes:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)longPressGesture:(id)a3
{
  if ([a3 state] == 1 && -[CNContactPhotoView becomeFirstResponder](self, "becomeFirstResponder"))
  {
    v4 = [MEMORY[0x1E69DCC68] sharedMenuController];
    [(CNContactPhotoView *)self bounds];
    [v4 showMenuFromView:self rect:?];
    [(CNContactPhotoView *)self setHighlightedFrame:1];
  }
}

- (void)avatarTapped:(id)a3
{
  v4 = [(CNContactPhotoView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactPhotoView *)self delegate];
    [v6 didTapPhotoViewWhileEditing:{-[CNContactPhotoView isEditing](self, "isEditing")}];
LABEL_8:

    return;
  }

  if (![(CNContactPhotoView *)self isEditing])
  {
    v6 = [MEMORY[0x1E69DCC68] sharedMenuController];
    [v6 hideMenu];
    goto LABEL_8;
  }

  [(CNContactPhotoView *)self _presentPhotoPicker];
}

- (void)disablePhotoTapGesture
{
  v2 = [(CNContactPhotoView *)self tapGestureRecognizer];
  [v2 setEnabled:0];
}

- (void)setHighlightedFrame:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CNContactPhotoView *)self tintColor];
    v5 = [v4 CGColor];
    v6 = [(CNContactPhotoView *)self avatarView];
    v7 = [v6 layer];
    [v7 setBorderColor:v5];

    v8 = [(CNContactPhotoView *)self avatarView];
    v9 = [v8 layer];
    [v9 setBorderWidth:1.0];

    v13 = [(CNContactPhotoView *)self avatarView];
    [v13 frame];
    v10 = CGRectGetWidth(v15) * 0.5;
    v11 = [(CNContactPhotoView *)self avatarView];
    v12 = [v11 layer];
    [v12 setCornerRadius:v10];
  }

  else
  {
    v13 = [(CNContactPhotoView *)self avatarView];
    v11 = [v13 layer];
    [v11 setBorderWidth:0.0];
  }
}

- (void)setEditing:(BOOL)a3 preservingChanges:(BOOL)a4
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    if (a4)
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
    v5 = [(CNContactPhotoView *)self contact];
    v7 = [v5 thumbnailImageData];
    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v8 = [(CNContactPhotoView *)self contact];
      if ([v8 isKeyAvailable:*MEMORY[0x1E695C278]])
      {
        v9 = [(CNContactPhotoView *)self contact];
        v10 = [v9 imageData];
        v6 = v10 != 0;
      }

      else
      {
        v6 = 0;
      }

      v7 = 0;
    }

    goto LABEL_13;
  }

  v4 = [(CNMutableContact *)pendingEditContact thumbnailImageData];
  if (!v4)
  {
    if (![(CNMutableContact *)self->_pendingEditContact isKeyAvailable:*MEMORY[0x1E695C278]])
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_14;
    }

    v7 = [(CNMutableContact *)self->_pendingEditContact imageData];
    v5 = 0;
    v6 = v7 != 0;
LABEL_13:

    goto LABEL_14;
  }

  v5 = v4;
  v6 = 1;
LABEL_14:

  return v6;
}

- (void)saveEdits
{
  v4 = [(CNContactPhotoView *)self pendingEditContact];
  v3 = [(CNContactPhotoView *)self mutableContact];
  [(CNContactPhotoView *)self saveChangesFromPendingContact:v4 toContact:v3];
}

- (void)saveChangesFromPendingContact:(id)a3 toContact:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CNContactPhotoView *)self mutableContact];
  if (v8)
  {
    v9 = v8;
    v10 = [(CNContactPhotoView *)self mutableContact];
    if (([v10 isKeyAvailable:*MEMORY[0x1E695C278]] & 1) == 0)
    {

LABEL_9:
      goto LABEL_10;
    }

    v11 = [(CNContactPhotoView *)self mutableContact];
    v12 = [v11 isKeyAvailable:*MEMORY[0x1E695C1E8]];

    if (v6 && v12)
    {
      v13 = [v6 imageData];
      [v7 setImageData:v13];

      v14 = [v6 imageType];
      [v7 setImageType:v14];

      v15 = [v6 imageHash];
      [v7 setImageHash:v15];

      v16 = [v6 fullscreenImageData];
      [v7 setFullscreenImageData:v16];

      v17 = [v6 thumbnailImageData];
      [v7 setThumbnailImageData:v17];

      [v6 cropRect];
      [v7 setCropRect:?];
      v18 = [v6 preferredLikenessSource];
      [v7 setPreferredLikenessSource:v18];

      v19 = CNUILogContactCard();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v7 imageData];
        v20 = [v37 length];
        v36 = [v7 fullscreenImageData];
        v21 = [v36 length];
        v22 = [v7 thumbnailImageData];
        v23 = [v22 length];
        [v7 cropRect];
        v25 = v24;
        [v7 cropRect];
        v27 = v26;
        [v7 cropRect];
        v29 = v28;
        [v7 cropRect];
        v31 = v30;
        v32 = [v7 imageType];
        v33 = [v7 imageHash];
        v34 = [v33 _cn_hexString];
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
        v53 = v32;
        v54 = 2114;
        v55 = v34;
        _os_log_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Saving contact image - bytes: imageData %ld, fullscreen %ld, thumbnail %ld, cropRect {%.2f, %.2f, %.2f, %.2f}, imageType %{public}@ imageHash %{public}@", buf, 0x5Cu);
      }

      v35 = [v6 memojiMetadata];
      [v7 setMemojiMetadata:v35];

      v9 = [v6 avatarRecipeData];
      [v7 setAvatarRecipeData:v9];
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
    v3 = pendingEditContact;
  }

  else
  {
    v3 = [(CNContactPhotoView *)self contact];
  }

  v4 = v3;
  v5 = [(CNMutableContact *)v3 imageData];

  return v5;
}

- (void)updateFontSizes
{
  v3 = [MEMORY[0x1E69DB878] ab_preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v4 = [(UIButton *)self->_editPhotoButton titleLabel];
  [v4 setFont:v3];

  [(UIButton *)self->_editPhotoButton sizeToFit];

  [(CNContactPhotoView *)self setNeedsLayout];
}

- (id)newPendingContactPreservingChangesFrom:(id)a3
{
  v4 = a3;
  v5 = [(CNContactPhotoView *)self mutableContact];
  v6 = [v5 mutableCopy];

  if (v4)
  {
    [(CNContactPhotoView *)self saveChangesFromPendingContact:v4 toContact:v6];
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
  v3 = [(CNContactPhotoView *)self contact];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CNContactPhotoView *)self contact];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contact
{
  v3 = [(CNContactPhotoView *)self contacts];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(CNContactPhotoView *)self contacts];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLabelAlpha:(double)a3
{
  if (self->_labelAlpha != a3)
  {
    self->_labelAlpha = a3;
    v5 = [(CNContactPhotoView *)self editPhotoButton];
    v6 = [v5 isHidden];

    if ((v6 & 1) == 0)
    {
      v7 = [(CNContactPhotoView *)self editPhotoButton];
      [v7 setAlpha:a3];
    }
  }
}

- (void)setContacts:(id)a3
{
  v10 = a3;
  if ((-[NSArray count](self->_contacts, "count") || [v10 count]) && (objc_msgSend(v10, "_cn_isIdenticalToArray:", self->_contacts) & 1) == 0)
  {
    objc_storeStrong(&self->_contacts, a3);
    v5 = [(CNContactPhotoView *)self dropInteraction];

    if (v5)
    {
      if ([v10 count] == 1)
      {
        v6 = [(CNContactPhotoView *)self delegate];
        v7 = [v6 contactViewCache];

        v8 = [(CNContactPhotoView *)self contact];
        v9 = [v7 policyForContact:v8];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNContactPhotoView;
  [(CNContactPhotoView *)&v4 dealloc];
}

- (CNContactPhotoView)initWithFrame:(CGRect)a3 shouldAllowTakePhotoAction:(BOOL)a4 threeDTouchEnabled:(BOOL)a5 contactStore:(id)a6 allowsImageDrops:(BOOL)a7 imageRenderer:(id)a8 allowStaleRendering:(BOOL)a9
{
  v9 = a9;
  v11 = a7;
  v12 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v66[2] = *MEMORY[0x1E69E9840];
  v19 = a6;
  v20 = a8;
  v64.receiver = self;
  v64.super_class = CNContactPhotoView;
  v21 = [(CNContactPhotoView *)&v64 initWithFrame:x, y, width, height];
  if (v21)
  {
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v62 = v11;
    v63 = a4;
    if (CGRectIsEmpty(v67))
    {
      [objc_opt_class() defaultSize];
      width = v22;
      height = v23;
      x = 0.0;
      y = 0.0;
    }

    v24 = [[CNAvatarView alloc] initWithImageRenderer:v20 threeDTouchEnabled:v12 contactStore:v19];
    avatarView = v21->_avatarView;
    v21->_avatarView = v24;

    [(CNAvatarView *)v21->_avatarView setFrame:x, y, width, height];
    [(CNAvatarView *)v21->_avatarView setAutoUpdateContact:0];
    [(CNAvatarView *)v21->_avatarView setAllowStaleRendering:v9];
    [(CNAvatarView *)v21->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNAvatarView *)v21->_avatarView setDelegate:v21];
    [(CNContactPhotoView *)v21 addSubview:v21->_avatarView];
    v26 = [MEMORY[0x1E69DC738] buttonWithType:1];
    editPhotoButton = v21->_editPhotoButton;
    v21->_editPhotoButton = v26;

    v28 = +[CNUIColorRepository contactCardPhotoEditButtonColor];
    [(UIButton *)v21->_editPhotoButton setTintColor:v28];

    [(UIButton *)v21->_editPhotoButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v21->_editPhotoButton addTarget:v21 action:sel__presentPhotoPicker forControlEvents:64];
    v29 = [(UIButton *)v21->_editPhotoButton titleLabel];
    [v29 setTextAlignment:1];

    [(UIButton *)v21->_editPhotoButton setContentVerticalAlignment:0];
    v30 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v31 = [v30 fontWithSize:12.0];
    v32 = [(UIButton *)v21->_editPhotoButton titleLabel];
    [v32 setFont:v31];

    v33 = [(UIButton *)v21->_editPhotoButton titleLabel];
    [v33 setNumberOfLines:3];

    v34 = v21->_editPhotoButton;
    v35 = CNContactsUIBundle();
    v36 = [v35 localizedStringForKey:@"PHOTO_EDIT_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
    [(UIButton *)v34 setTitle:v36 forState:0];

    [(UIButton *)v21->_editPhotoButton setHidden:1];
    [(CNContactPhotoView *)v21 addSubview:v21->_editPhotoButton];
    v37 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v21 action:sel_avatarTapped_];
    [(CNContactPhotoView *)v21 setTapGestureRecognizer:v37];

    v38 = v21->_avatarView;
    v39 = [(CNContactPhotoView *)v21 tapGestureRecognizer];
    [(CNAvatarView *)v38 addGestureRecognizer:v39];

    v40 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v21 action:sel_longPressGesture_];
    [(CNContactPhotoView *)v21 addGestureRecognizer:v40];
    [(CNContactPhotoView *)v21 setLongPressGestureRecognizer:v40];
    v41 = [MEMORY[0x1E696AD88] defaultCenter];
    [v41 addObserver:v21 selector:sel_menuWillHide_ name:*MEMORY[0x1E69DE0E8] object:0];

    v42 = [MEMORY[0x1E695DF70] array];
    v65[0] = @"avatar";
    v43 = v21->_avatarView;
    v65[1] = @"editButton";
    v66[0] = v43;
    v66[1] = v21->_editPhotoButton;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v45 = [MEMORY[0x1E696ACD8] constraintWithItem:v21->_avatarView attribute:9 relatedBy:0 toItem:v21 attribute:9 multiplier:1.0 constant:0.0];
    [v42 addObject:v45];

    v46 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[avatar]|" options:0 metrics:0 views:v44];
    [v42 addObjectsFromArray:v46];

    v47 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[avatar]|" options:0 metrics:0 views:v44];
    [v42 addObjectsFromArray:v47];

    v48 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[avatar]" options:0 metrics:0 views:v44];
    [v42 addObjectsFromArray:v48];

    v49 = [MEMORY[0x1E696ACD8] constraintWithItem:v21->_avatarView attribute:8 relatedBy:0 toItem:v21->_avatarView attribute:7 multiplier:1.0 constant:0.0];
    [v42 addObject:v49];

    v50 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[editButton]|" options:0 metrics:0 views:v44];
    [v42 addObjectsFromArray:v50];

    v51 = [(CNContactPhotoView *)v21 editPhotoButton];
    v52 = [v51 bottomAnchor];
    v53 = [(CNContactPhotoView *)v21 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    [v42 addObject:v54];

    v55 = [(CNContactPhotoView *)v21 editPhotoButton];
    v56 = [v55 heightAnchor];
    v57 = [(CNContactPhotoView *)v21 heightAnchor];
    v58 = [v56 constraintGreaterThanOrEqualToAnchor:v57 multiplier:0.35];
    [v42 addObject:v58];

    [MEMORY[0x1E696ACD8] activateConstraints:v42];
    [(CNContactPhotoView *)v21 resetPhoto];
    [(CNContactPhotoView *)v21 updateFontSizes];
    if (v62)
    {
      v59 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:v21];
      dropInteraction = v21->_dropInteraction;
      v21->_dropInteraction = v59;

      [(CNContactPhotoView *)v21 addInteraction:v21->_dropInteraction];
    }

    v21->_shouldAllowTakePhotoAction = v63;
  }

  return v21;
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

+ (id)descriptorForRequiredKeysWithThreeDTouchEnabled:(BOOL)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = [CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:a3];
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