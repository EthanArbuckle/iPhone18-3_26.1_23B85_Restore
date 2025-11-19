@interface CNContactHeaderEditView
+ (BOOL)useSwiftUIPosterAndAvatarEditor;
+ (id)contactHeaderViewWithContact:(id)a3 shouldAllowTakePhotoAction:(BOOL)a4 showingNavBar:(BOOL)a5 monogramOnly:(BOOL)a6 isOutOfProcess:(BOOL)a7 delegate:(id)a8;
+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)a3 shouldAllowImageDrops:(BOOL)a4 monogramOnly:(BOOL)a5;
+ (id)sizeAttributesShowingNavBar:(BOOL)a3;
- (BOOL)_shouldShowPhoto;
- (BOOL)hasPhoto;
- (BOOL)hasWallpaper;
- (BOOL)photoIsModified;
- (BOOL)shouldShowPoster;
- (BOOL)shouldUseStaticHeader;
- (BOOL)wallpaperIsModified;
- (CGSize)maxButtonSize;
- (CNContactHeaderEditView)initWithContact:(id)a3 frame:(CGRect)a4 shouldAllowTakePhotoAction:(BOOL)a5 delegate:(id)a6 showingNavBar:(BOOL)a7 monogramOnly:(BOOL)a8 isOutOfProcess:(BOOL)a9;
- (double)defaultMaxHeight;
- (double)maxHeight;
- (double)minHeight;
- (double)staticEditingHeaderHeight;
- (double)staticHeaderPhotoAvatarAndPosterTopMargin;
- (double)staticHeaderPhotoAvatarOnlyTopMargin;
- (double)staticHeaderPhotoHeight;
- (double)staticHeaderPhotoTopMargin;
- (double)staticHeaderPhotoTopMarginOffset;
- (id)mutableContact;
- (id)posterPlaceholderImage;
- (void)_presentRemotePosterAndAvatarEditorWithMode:(int64_t)a3 isEditing:(BOOL)a4;
- (void)avatarPosterEditorFromFlowManager:(id)a3 didUpdateContact:(id)a4 withVisualIdentity:(id)a5;
- (void)avatarPosterEditorFromFlowManagerDidCancel:(id)a3;
- (void)calculateLabelSizesIfNeeded;
- (void)didFinishUsing;
- (void)didTapPhotoViewWhileEditing:(BOOL)a3;
- (void)discardPendingAvatarPosterEdits;
- (void)editAvatar;
- (void)editButtonTappedWhileEditing:(BOOL)a3;
- (void)editPoster;
- (void)layoutSubviews;
- (void)preWarmPosterAndAvatarEditor;
- (void)presentAvatarPickerWithImageData:(id)a3;
- (void)presentPosterAndAvatarEditorWithMode:(int64_t)a3 isEditing:(BOOL)a4;
- (void)presentSwiftUIAvatarEditorWithPoster:(BOOL)a3 isEditing:(BOOL)a4;
- (void)reloadDataPreservingChanges:(BOOL)a3;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)saveContactPhoto;
- (void)setAllowsEditPhoto:(BOOL)a3 preservingChanges:(BOOL)a4;
- (void)setPresenterDelegate:(id)a3;
- (void)setUpEditButton;
- (void)setUpPosterView;
- (void)updateConstraints;
- (void)updateContactWithEditedPropertyItem:(id)a3;
- (void)updateEditButtonTitle;
- (void)updateFontSizes;
- (void)updatePendingWallpaperContactWithEditedPropertyItem:(id)a3;
- (void)updatePosterViewImageWithNewPosterConfiguration:(BOOL)a3;
- (void)updatePosterVisibility;
- (void)updateSizeDependentAttributes;
- (void)updateWithContacts:(id)a3;
- (void)visualIdentityEditorViewControllerDidFinishEditing:(id)a3;
@end

@implementation CNContactHeaderEditView

- (CGSize)maxButtonSize
{
  width = self->_maxButtonSize.width;
  height = self->_maxButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)avatarPosterEditorFromFlowManagerDidCancel:(id)a3
{
  [(CNContactHeaderEditView *)self setFlowManager:0];

  [(CNContactHeaderEditView *)self discardPendingAvatarPosterEdits];
}

- (void)avatarPosterEditorFromFlowManager:(id)a3 didUpdateContact:(id)a4 withVisualIdentity:(id)a5
{
  v6 = a4;
  [(CNContactHeaderEditView *)self updatePosterViewImageWithNewPosterConfiguration:1];
  v7 = [(CNContactHeaderView *)self photoView];
  [v7 updatePendingContactWithEditedContact:v6];

  [(CNContactHeaderEditView *)self updatePosterVisibility];

  [(CNContactHeaderEditView *)self setFlowManager:0];
}

- (void)discardPendingAvatarPosterEdits
{
  v3 = MEMORY[0x1E695CDB0];
  v5 = [(CNContactHeaderEditView *)self editingWallpaperContact];
  v4 = [(CNContactHeaderEditView *)self mutableContact];
  [v3 updateMutableContact:v5 withImageAndWallpaperPropertiesFromContact:v4];
}

- (void)didTapPhotoViewWhileEditing:(BOOL)a3
{
  v3 = a3;
  if ([(CNContactHeaderEditView *)self allowsEditPhoto])
  {
    v5 = [(CNContactHeaderEditView *)self shouldUseStaticHeader];
    if ([objc_opt_class() useSwiftUIPosterAndAvatarEditor])
    {

      [(CNContactHeaderEditView *)self presentSwiftUIAvatarEditorWithPoster:v5 isEditing:v3];
    }

    else if (v5)
    {

      [(CNContactHeaderEditView *)self presentPosterAndAvatarEditorWithMode:1 isEditing:v3];
    }

    else
    {

      [(CNContactHeaderEditView *)self editAvatar];
    }
  }
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v4 localizedDescription];
    v7 = 138412290;
    v8 = v6;
    _os_log_error_impl(&dword_199A75000, v5, OS_LOG_TYPE_ERROR, "Remote alert handle did invalidate: %@", &v7, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v3 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Remote alert handle did deactivate", v4, 2u);
  }
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Remote alert handle did activate", v4, 2u);
  }
}

- (void)_presentRemotePosterAndAvatarEditorWithMode:(int64_t)a3 isEditing:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:@"com.apple.ContactsUI.Carousel" viewControllerClassName:@"CNContactPhotoCarouselRemoteAlertViewController"];
  v8 = objc_alloc_init(MEMORY[0x1E69D4298]);
  v9 = objc_alloc(MEMORY[0x1E698E5F0]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __81__CNContactHeaderEditView__presentRemotePosterAndAvatarEditorWithMode_isEditing___block_invoke;
  v25[3] = &unk_1E74E26B0;
  v25[4] = self;
  v10 = [MEMORY[0x1E698E5F8] responderWithHandler:v25];
  v11 = [v9 initWithInfo:0 responder:v10];

  v12 = [MEMORY[0x1E695DFD8] setWithObject:v11];
  [v8 setActions:v12];

  v13 = MEMORY[0x1E696ACC8];
  v14 = [(CNContactHeaderEditView *)self editingWallpaperContact];
  v24 = 0;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v24];
  v16 = v24;

  if (!(*(*MEMORY[0x1E6996540] + 16))())
  {
    v19 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v7 configurationContext:v8];
    [(CNContactHeaderEditView *)self setRemoteAlertHandle:v19];

    v17 = objc_alloc_init(MEMORY[0x1E69D4288]);
    [v17 setReason:@"EditButtonTapped"];
    v26[0] = @"mode";
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v27[0] = v20;
    v27[1] = v15;
    v26[1] = @"contactData";
    v26[2] = @"isEditing";
    v21 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v27[2] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    [v17 setUserInfo:v22];

    v23 = [(CNContactHeaderEditView *)self remoteAlertHandle];
    [v23 registerObserver:self];

    v18 = [(CNContactHeaderEditView *)self remoteAlertHandle];
    [v18 activateWithContext:v17];
    goto LABEL_5;
  }

  v17 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = [v16 localizedDescription];
    *buf = 138412290;
    v29 = v18;
    _os_log_error_impl(&dword_199A75000, v17, OS_LOG_TYPE_ERROR, "Could not archive editing wallpaper contact: %@", buf, 0xCu);
LABEL_5:
  }
}

void __81__CNContactHeaderEditView__presentRemotePosterAndAvatarEditorWithMode_isEditing___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [a2 info];
  v4 = [v3 objectForSetting:0];

  if ((*(*MEMORY[0x1E6996540] + 16))())
  {
    v5 = CNUILogRemoteAlert();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v5, OS_LOG_TYPE_ERROR, "Response data returned from the remote Contacts carousel was empty", buf, 2u);
    }
  }

  else
  {
    v11 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v11];
    v5 = v11;
    if (v6)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81__CNContactHeaderEditView__presentRemotePosterAndAvatarEditorWithMode_isEditing___block_invoke_882;
      block[3] = &unk_1E74E77C0;
      block[4] = *(a1 + 32);
      v10 = v6;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v7 = CNUILogRemoteAlert();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v5 localizedDescription];
        *buf = 138412290;
        v13 = v8;
        _os_log_error_impl(&dword_199A75000, v7, OS_LOG_TYPE_ERROR, "Contact returned from the remote Contacts carousel could not be decoded: %@", buf, 0xCu);
      }
    }
  }
}

uint64_t __81__CNContactHeaderEditView__presentRemotePosterAndAvatarEditorWithMode_isEditing___block_invoke_882(uint64_t a1)
{
  v2 = [*(a1 + 40) wallpaper];
  [*(*(a1 + 32) + 640) setWallpaper:v2];

  v3 = [*(a1 + 32) photoView];
  [v3 updatePendingContactWithEditedContact:*(a1 + 40)];

  [*(a1 + 32) updatePosterViewImageWithNewPosterConfiguration:1];
  v4 = *(a1 + 32);

  return [v4 updatePosterVisibility];
}

- (void)preWarmPosterAndAvatarEditor
{
  v3 = [(CNContactHeaderEditView *)self window];
  v13 = [v3 windowScene];

  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1 && v13 != 0)
  {
    v7 = [(CNContactHeaderEditView *)self editingWallpaperContact];
    v8 = [MEMORY[0x1E69966E8] currentEnvironment];
    v9 = [v8 nicknameProvider];
    v10 = [v9 nicknameAsContactForContact:v7];

    v11 = [[_TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer alloc] initWithContact:v7 contactForSharedProfile:v10];
    [(CNContactHeaderEditView *)self setCarouselPreWarmer:v11];

    v12 = [(CNContactHeaderEditView *)self carouselPreWarmer];
    [v12 preWarmFirstPosterSnapshotIn:v13];
  }
}

- (void)presentSwiftUIAvatarEditorWithPoster:(BOOL)a3 isEditing:(BOOL)a4
{
  v5 = [CNUIVisualIdentityEditorViewController alloc];
  v6 = [(CNContactHeaderEditView *)self editingWallpaperContact];
  v7 = [(CNUIVisualIdentityEditorViewController *)v5 initWithContact:v6];
  [(CNContactHeaderEditView *)self setVisualIdentityEditor:v7];

  v8 = [(CNContactHeaderEditView *)self visualIdentityEditor];
  [v8 setDelegate:self];

  v9 = [MEMORY[0x1E69DC938] currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v11 = -2;
  }

  else
  {
    v11 = 5;
  }

  v13 = [(CNContactHeaderView *)self presenterDelegate];
  v12 = [(CNContactHeaderEditView *)self visualIdentityEditor];
  [v13 sender:self presentViewController:v12 modalPresentationStyle:v11];
}

- (void)visualIdentityEditorViewControllerDidFinishEditing:(id)a3
{
  v4 = a3;
  [(CNContactHeaderEditView *)self updatePosterViewImageWithNewPosterConfiguration:1];
  v5 = [(CNContactHeaderView *)self photoView];
  v6 = [v4 contact];
  [v5 updatePendingContactWithEditedContact:v6];

  [(CNContactHeaderEditView *)self updatePosterVisibility];
  v7 = [(CNContactHeaderView *)self presenterDelegate];
  [v7 sender:self dismissViewController:v4];
}

- (void)presentPosterAndAvatarEditorWithMode:(int64_t)a3 isEditing:(BOOL)a4
{
  v4 = a4;
  if (-[CNContactHeaderEditView isOutOfProcess](self, "isOutOfProcess") && ([MEMORY[0x1E69DC938] currentDevice], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "userInterfaceIdiom"), v7, (v8 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {

    [(CNContactHeaderEditView *)self _presentRemotePosterAndAvatarEditorWithMode:a3 isEditing:v4];
  }

  else
  {
    v9 = +[CNUIContactsEnvironment currentEnvironment];
    v16 = [v9 inProcessContactStore];

    v10 = [CNSNaPSetupFlowManager alloc];
    v11 = [(CNContactHeaderView *)self presenterDelegate];
    v12 = [(CNSNaPSetupFlowManager *)v10 initWithPresenterDelegate:v11 contactStore:v16 mode:a3];
    [(CNContactHeaderEditView *)self setFlowManager:v12];

    v13 = [(CNContactHeaderEditView *)self flowManager];
    [v13 setDelegate:self];

    v14 = [(CNContactHeaderEditView *)self flowManager];
    v15 = [(CNContactHeaderEditView *)self editingWallpaperContact];
    [v14 startContactCardFlowForContact:v15 isEditing:v4];
  }
}

- (void)editPoster
{
  if ([(CNContactHeaderEditView *)self allowsEditPhoto])
  {
    if ([objc_opt_class() useSwiftUIPosterAndAvatarEditor])
    {

      [(CNContactHeaderEditView *)self presentSwiftUIAvatarEditorWithPoster:1 isEditing:1];
    }

    else
    {

      [(CNContactHeaderEditView *)self presentPosterAndAvatarEditorWithMode:1 isEditing:1];
    }
  }
}

- (void)editAvatar
{
  v2 = [(CNContactHeaderView *)self photoView];
  [v2 presentPhotoPicker];
}

- (void)editButtonTappedWhileEditing:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactHeaderEditView *)self shouldShowPoster]|| [(CNContactHeaderEditView *)self shouldUseStaticHeader];
  if ([objc_opt_class() useSwiftUIPosterAndAvatarEditor])
  {

    [(CNContactHeaderEditView *)self presentSwiftUIAvatarEditorWithPoster:v5 isEditing:v3];
  }

  else if (v5)
  {

    [(CNContactHeaderEditView *)self presentPosterAndAvatarEditorWithMode:1 isEditing:v3];
  }

  else
  {

    [(CNContactHeaderEditView *)self editAvatar];
  }
}

- (void)updatePendingWallpaperContactWithEditedPropertyItem:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 property];
  v6 = [v5 isEqualToString:*MEMORY[0x1E695C240]];
  v7 = MEMORY[0x1E695C330];
  if (v6)
  {
    goto LABEL_8;
  }

  v8 = [v4 property];
  if ([v8 isEqualToString:*MEMORY[0x1E695C230]])
  {
LABEL_7:

LABEL_8:
    v11 = *v7;
    goto LABEL_9;
  }

  v9 = [v4 property];
  if ([v9 isEqualToString:*MEMORY[0x1E695C208]])
  {
LABEL_6:

    goto LABEL_7;
  }

  v10 = [v4 property];
  v11 = *v7;
  if ([v10 isEqualToString:*v7])
  {

    goto LABEL_6;
  }

  v22 = [v4 property];
  v23 = [v22 isEqualToString:*MEMORY[0x1E695C328]];

  if ((v23 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v12 = [v4 property];
  if (([v12 isEqualToString:v11] & 1) == 0)
  {

LABEL_13:
    v18 = [v4 property];
    if ([v18 isEqualToString:*MEMORY[0x1E695C208]])
    {
      v19 = [v4 labeledValue];

      if (v19)
      {
        v14 = [(CNContactHeaderEditView *)self editingWallpaperContact];
        v15 = [v4 labeledValue];
        v24 = v15;
        v16 = MEMORY[0x1E695DEC8];
        v17 = &v24;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v14 = [(CNContactHeaderEditView *)self editingWallpaperContact];
    v15 = [v4 editingStringValue];
    v20 = [v4 property];
    [v14 setValue:v15 forKey:v20];
    goto LABEL_19;
  }

  v13 = [v4 labeledValue];

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = [(CNContactHeaderEditView *)self editingWallpaperContact];
  v15 = [v4 labeledValue];
  v25[0] = v15;
  v16 = MEMORY[0x1E695DEC8];
  v17 = v25;
LABEL_16:
  v20 = [v16 arrayWithObjects:v17 count:1];
  v21 = [v4 property];
  [v14 setValue:v20 forKey:v21];

LABEL_19:
LABEL_20:
}

- (void)updateContactWithEditedPropertyItem:(id)a3
{
  v4 = a3;
  [(CNContactHeaderEditView *)self updatePendingWallpaperContactWithEditedPropertyItem:v4];
  v5 = [(CNContactHeaderView *)self photoView];
  [v5 updatePendingContactWithEditedPropertyItem:v4];
}

- (void)presentAvatarPickerWithImageData:(id)a3
{
  v4 = a3;
  v5 = [(CNContactHeaderView *)self photoView];
  [v5 presentPhotoPickerWithImageData:v4];
}

- (void)saveContactPhoto
{
  v30 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() useSwiftUIPosterAndAvatarEditor])
  {
    v3 = [(CNContactHeaderEditView *)self visualIdentityEditor];

    if (v3)
    {
      v4 = CNUILogContactCard();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Using edited contact from visual identity editor", &v26, 2u);
      }

      v5 = [(CNContactHeaderEditView *)self visualIdentityEditor];
      v6 = [v5 contact];

      if (!v6)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }
  }

  if (![(CNContactHeaderEditView *)self wallpaperIsModified])
  {
    v6 = 0;
    goto LABEL_18;
  }

  v7 = CNUILogContactCard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Using edited contact from legacy wallpaper editor", &v26, 2u);
  }

  v6 = self->_editingWallpaperContact;
  if (v6)
  {
LABEL_11:
    v8 = CNUILogContactCard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Contact wallpaper modified, will save edits", &v26, 2u);
    }

    v9 = [(CNContactHeaderEditView *)self mutableContact];
    [v9 setSharedPhotoDisplayPreference:2];

    v10 = MEMORY[0x1E695CDB0];
    v11 = [(CNContactHeaderEditView *)self mutableContact];
    [v10 updateMutableContact:v11 withWallpaperPropertiesFromContact:v6];

    v12 = CNUILogContactCard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v21 = [(CNMutableContact *)v6 wallpaper];
      v22 = [v21 posterArchiveData];
      v23 = [v22 length];
      v24 = [(CNMutableContact *)v6 watchWallpaperImageData];
      v25 = [v24 length];
      v26 = 134218240;
      v27 = v23;
      v28 = 2048;
      v29 = v25;
      _os_log_debug_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEBUG, "[Likeness Update] Wallpaper updated to archive data of length %ld, watch snapshot of length %ld", &v26, 0x16u);
    }

    v13 = *MEMORY[0x1E6996540];
    v14 = [(CNMutableContact *)v6 imageData];
    LOBYTE(v13) = (*(v13 + 16))(v13, v14);

    if ((v13 & 1) == 0)
    {
      v15 = MEMORY[0x1E695CDB0];
      v16 = [(CNContactHeaderEditView *)self mutableContact];
      [v15 updateMutableContact:v16 withImagePropertiesFromContact:v6];
LABEL_22:

      goto LABEL_23;
    }
  }

LABEL_18:
  v17 = [(CNContactHeaderView *)self photoView];
  v18 = [v17 modified];

  if (v18)
  {
    v19 = CNUILogContactCard();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Contact image modified, will save edits", &v26, 2u);
    }

    v20 = [(CNContactHeaderView *)self photoView];
    [v20 saveEdits];

    v16 = [(CNContactHeaderEditView *)self mutableContact];
    [v16 setSharedPhotoDisplayPreference:2];
    goto LABEL_22;
  }

LABEL_23:
}

- (id)mutableContact
{
  objc_opt_class();
  v3 = [(CNContactHeaderView *)self contacts];
  v4 = [v3 firstObject];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (BOOL)wallpaperIsModified
{
  if ([(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {
    v5 = [(CNContactHeaderEditView *)self mutableContact];
    v6 = [v5 wallpaper];
    if (v6 || (-[CNContactHeaderEditView editingWallpaperContact](self, "editingWallpaperContact"), v2 = objc_claimAutoreleasedReturnValue(), [v2 wallpaper], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = [(CNContactHeaderEditView *)self mutableContact];
      v8 = [v7 wallpaper];
      v9 = [(CNContactHeaderEditView *)self editingWallpaperContact];
      v10 = [v9 wallpaper];
      v11 = [v8 isEqual:v10] ^ 1;

      if (v6)
      {
LABEL_9:

        return v11;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    goto LABEL_9;
  }

  LOBYTE(v11) = 0;
  return v11;
}

- (BOOL)photoIsModified
{
  v2 = [(CNContactHeaderView *)self photoView];
  v3 = [v2 modified];

  return v3;
}

- (BOOL)hasWallpaper
{
  v2 = [(CNMutableContact *)self->_editingWallpaperContact wallpaper];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasPhoto
{
  v2 = [(CNContactHeaderView *)self photoView];
  v3 = [v2 hasPhoto];

  return v3;
}

- (void)updateEditButtonTitle
{
  if ([(CNContactHeaderEditView *)self shouldShowPoster])
  {
    v3 = [(CNContactHeaderEditView *)self hasWallpaper];
    v4 = CNContactsUIBundle();
    if (!v3)
    {
      v5 = @"WALLPAPER_ADD_LABEL";
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v6 = [(CNContactHeaderEditView *)self hasPhoto];
  v4 = CNContactsUIBundle();
  if (v6)
  {
LABEL_5:
    v5 = @"PHOTO_EDIT_LABEL";
    goto LABEL_7;
  }

  v5 = @"PHOTO_ADD_LABEL";
LABEL_7:
  v8 = [v4 localizedStringForKey:v5 value:&stru_1F0CE7398 table:@"Localized"];

  v7 = [(CNContactHeaderEditView *)self editButton];
  [v7 setTitle:v8 forState:0];
}

- (void)updatePosterViewImageWithNewPosterConfiguration:(BOOL)a3
{
  v49 = *MEMORY[0x1E69E9840];
  if ([(CNContactHeaderEditView *)self shouldShowPoster])
  {
    v5 = [(CNContactHeaderEditView *)self posterPlaceholderImage];
    v6 = [(CNContactHeaderEditView *)self editingPosterView];
    [v6 setImage:v5];

    v7 = [(CNMutableContact *)self->_editingWallpaperContact wallpaper];
    v8 = [v7 posterArchiveData];
    v9 = (*(*MEMORY[0x1E6996540] + 16))();

    if (v9)
    {
      return;
    }

    v10 = [(CNContactHeaderEditView *)self editingWallpaperContact];
    v11 = [v10 wallpaper];
    v12 = [v11 contentIsSensitive];

    v13 = [(CNContactHeaderEditView *)self sensitiveContentManager];
    v14 = [v13 shouldShowUIForPosterWithSensitiveContent:v12 forContact:v10];

    v15 = [(CNContactHeaderEditView *)self editingPosterView];
    [v15 setIsSensitiveContent:v14];

    self->_needsPosterCarouselPreWarming = 1;
    if (a3 || ([(CNContactHeaderEditView *)self cachedPosterConfiguration], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
      v17 = [(CNMutableContact *)self->_editingWallpaperContact wallpaper];
      v18 = [v17 posterArchiveData];
      v46 = 0;
      v19 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:v18 error:&v46];
      v20 = v46;
      cachedPosterConfiguration = self->_cachedPosterConfiguration;
      self->_cachedPosterConfiguration = v19;

      if (!self->_cachedPosterConfiguration)
      {
        v22 = CNUILogPosters();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v36 = [v20 localizedDescription];
          *buf = 138412290;
          v48 = v36;
          _os_log_error_impl(&dword_199A75000, v22, OS_LOG_TYPE_ERROR, "Unable to unarchive poster configuration from data, %@", buf, 0xCu);
        }
      }
    }

    v23 = [(CNContactHeaderEditView *)self cachedPosterConfiguration];
    if (!v23)
    {
      goto LABEL_26;
    }

    v38 = [[CNPRUISIncomingCallPosterContext alloc] initWithContact:self->_editingWallpaperContact showName:0];
    v24 = [CNPRUISIncomingCallSnapshotDefinition contentsOnlySnapshotDefinitionWithContext:v38 attachmentIdentifiers:0];
    v25 = [CNPRUISPosterSnapshotRequest requestForConfiguration:v23 definition:v24 interfaceOrientation:1];
    v26 = objc_alloc_init(CNPRUISPosterSnapshotController);
    v45 = 0;
    v27 = [(CNPRUISPosterSnapshotController *)v26 latestSnapshotBundleForRequest:v25 error:&v45];
    v37 = v45;
    if (v27)
    {
      v28 = [v24 levelSets];
      v29 = [v28 firstObject];
      v30 = [v27 snapshotForLevelSet:v29];

      v31 = CNUILogPosters();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_199A75000, v31, OS_LOG_TYPE_DEBUG, "Returning cached snapshot", buf, 2u);
      }

      if (v30)
      {
        v32 = [MEMORY[0x1E6996818] mainThreadScheduler];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __75__CNContactHeaderEditView_updatePosterViewImageWithNewPosterConfiguration___block_invoke;
        v43[3] = &unk_1E74E77C0;
        v43[4] = self;
        v44 = v30;
        v33 = v30;
        [v32 performBlock:v43];

LABEL_25:
LABEL_26:

        return;
      }
    }

    else
    {
      v34 = CNUILogPosters();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v34, OS_LOG_TYPE_DEFAULT, "No snapshot found in cache", buf, 2u);
      }
    }

    v35 = CNUILogPosters();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v35, OS_LOG_TYPE_DEFAULT, "Requesting poster snapshot", buf, 2u);
    }

    objc_initWeak(buf, self);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __75__CNContactHeaderEditView_updatePosterViewImageWithNewPosterConfiguration___block_invoke_858;
    v40[3] = &unk_1E74E2688;
    objc_copyWeak(&v42, buf);
    v41 = v24;
    [(CNPRUISPosterSnapshotController *)v26 executeSnapshotRequest:v25 completion:v40];

    objc_destroyWeak(&v42);
    objc_destroyWeak(buf);
    goto LABEL_25;
  }

  v39 = [(CNContactHeaderEditView *)self editingPosterView];
  [v39 setImage:0];
}

void __75__CNContactHeaderEditView_updatePosterViewImageWithNewPosterConfiguration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) editingPosterView];
  [v2 setImage:v1];
}

void __75__CNContactHeaderEditView_updatePosterViewImageWithNewPosterConfiguration___block_invoke_858(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [v4 snapshotBundle];
    v7 = [*(a1 + 32) levelSets];
    v8 = [v7 firstObject];
    v9 = [v6 snapshotForLevelSet:v8];

    if (v9)
    {
      v10 = [MEMORY[0x1E6996818] mainThreadScheduler];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __75__CNContactHeaderEditView_updatePosterViewImageWithNewPosterConfiguration___block_invoke_2;
      v13[3] = &unk_1E74E77C0;
      v13[4] = WeakRetained;
      v14 = v9;
      [v10 performBlock:v13];
    }

    else
    {
      v11 = CNUILogPosters();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Snapshot result returned a nil image", v12, 2u);
      }
    }
  }

  else
  {
    WeakRetained = CNUILogPosters();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_199A75000, WeakRetained, OS_LOG_TYPE_ERROR, "Snapshot request returned no result", v12, 2u);
    }
  }
}

void __75__CNContactHeaderEditView_updatePosterViewImageWithNewPosterConfiguration___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) editingPosterView];
  [v2 setImage:v1];
}

- (void)setPresenterDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNContactHeaderEditView;
  v4 = a3;
  [(CNContactHeaderView *)&v5 setPresenterDelegate:v4];
  [(CNSNaPSetupFlowManager *)self->_flowManager setPresenterDelegate:v4, v5.receiver, v5.super_class];
}

- (void)updateWithContacts:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNContactHeaderEditView;
  [(CNContactHeaderView *)&v10 updateWithContacts:v4];
  v5 = [v4 firstObject];
  v6 = [(CNContactHeaderEditView *)self visualIdentityEditor];
  [v6 setContact:v5];

  if (-[CNContactHeaderEditView shouldUseStaticHeader](self, "shouldUseStaticHeader") && [v4 count] == 1)
  {
    v7 = [v4 firstObject];
    v8 = [v7 mutableCopy];
    editingWallpaperContact = self->_editingWallpaperContact;
    self->_editingWallpaperContact = v8;

    [(CNContactHeaderEditView *)self updatePosterViewImageWithNewPosterConfiguration:1];
  }

  [(CNContactHeaderEditView *)self updateEditButtonTitle];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CNContactHeaderEditView;
  [(CNContactHeaderView *)&v11 layoutSubviews];
  if ([(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {
    [(CNContactHeaderEditView *)self staticHeaderPhotoTopMargin];
    v4 = v3;
    v5 = [(CNContactHeaderView *)self photoTopConstraint];
    [v5 constant];
    v7 = v6;

    if (v7 != v4)
    {
      v8 = [(CNContactHeaderView *)self photoTopConstraint];
      [v8 setConstant:v4];
    }

    if (self->_needsPosterCarouselPreWarming)
    {
      self->_needsPosterCarouselPreWarming = 0;
      v9 = CNUILogPosters();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "Pre-warming carousel poster snapshot", v10, 2u);
      }

      [(CNContactHeaderEditView *)self preWarmPosterAndAvatarEditor];
    }
  }
}

- (void)updateSizeDependentAttributes
{
  if (![(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {
    v12.receiver = self;
    v12.super_class = CNContactHeaderEditView;
    [(CNContactHeaderView *)&v12 updateSizeDependentAttributes];
    [(CNContactHeaderEditView *)self bounds];
    if (v3 > 0.0)
    {
      [(CNContactHeaderView *)self currentHeightPercentMaximized];
      v5 = v4;
      v6 = pow(v4, 3.0);
      v7 = [(CNContactHeaderEditView *)self editButton];
      [v7 setAlpha:v6];

      [sCurrentTaglineFont _scaledValueForValue:16.0];
      v9 = [sCurrentTaglineFont fontWithSize:v5 * v8];
      v10 = [(CNContactHeaderEditView *)self editButton];
      v11 = [v10 titleLabel];
      [v11 setFont:v9];
    }
  }
}

- (double)staticHeaderPhotoHeight
{
  v3 = 0.0;
  if ([(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {
    if ([(CNContactHeaderEditView *)self _shouldShowPhoto])
    {
      v4 = [(CNContactHeaderEditView *)self shouldShowPoster];
      v5 = [(CNContactHeaderView *)self sizeAttributes];
      v6 = v5;
      if (v4)
      {
        [v5 photoMinHeight];
      }

      else
      {
        [v5 photoMaxHeight];
      }

      v3 = v7;
    }

    if ([(CNContactHeaderView *)self isPhotoLowQuality])
    {
      v8 = [(CNContactHeaderView *)self sizeAttributes];
      [v8 photoMaxHeightLowQuality];
      v10 = v9;

      if (v3 >= v10)
      {
        return v10;
      }
    }
  }

  return v3;
}

- (void)updateConstraints
{
  v86[2] = *MEMORY[0x1E69E9840];
  v81.receiver = self;
  v81.super_class = CNContactHeaderEditView;
  [(CNContactHeaderView *)&v81 updateConstraints];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(CNContactHeaderView *)self activatedConstraints];
  v80 = [v3 arrayWithArray:v4];

  if (![(CNContactHeaderEditView *)self _shouldShowPhoto])
  {
    v5 = [(CNContactHeaderView *)self photoTopConstraint];
    [v80 removeObject:v5];

    v6 = [(CNContactHeaderView *)self photoHeightConstraint];
    [v6 setConstant:0.0];
  }

  if ([(CNContactHeaderEditView *)self _shouldShowPhoto])
  {
    v7 = [(CNContactHeaderView *)self photoView];
    v8 = [v7 centerXAnchor];
    v9 = [(CNContactHeaderEditView *)self centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v80 addObject:v10];
  }

  v11 = 0x1E695D000;
  if ([(CNContactHeaderEditView *)self shouldShowPoster])
  {
    v12 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v12 bounds];
    v14 = v13;

    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v15 bounds];
    v17 = v16;

    if (v14 / v17 >= v17 / v14)
    {
      v18 = v14 / v17;
    }

    else
    {
      v18 = v17 / v14;
    }

    v77 = [(CNContactHeaderEditView *)self editingPosterView];
    v75 = [v77 view];
    v74 = [v75 topAnchor];
    v19 = [(CNContactHeaderView *)self photoView];
    v20 = [v19 bottomAnchor];
    v21 = [v74 constraintEqualToAnchor:v20 constant:16.0];
    v86[0] = v21;
    v22 = [(CNContactHeaderEditView *)self editingPosterView];
    v23 = [v22 view];
    v24 = [v23 centerXAnchor];
    v25 = [(CNContactHeaderEditView *)self centerXAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v86[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
    [v80 addObjectsFromArray:v27];

    v78 = [(CNContactHeaderEditView *)self editingPosterView];
    v76 = [v78 view];
    v28 = [v76 heightAnchor];
    v29 = [(CNContactHeaderView *)self sizeAttributes];
    [v29 posterMaxHeight];
    v30 = [v28 constraintEqualToConstant:?];
    v85[0] = v30;
    v31 = MEMORY[0x1E696ACD8];
    v32 = [(CNContactHeaderEditView *)self editingPosterView];
    v33 = [v32 view];
    v34 = [(CNContactHeaderEditView *)self editingPosterView];
    v35 = [v34 view];
    v36 = [v31 constraintWithItem:v33 attribute:8 relatedBy:0 toItem:v35 attribute:7 multiplier:v18 constant:0.0];
    v85[1] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    [v80 addObjectsFromArray:v37];

    v11 = 0x1E695D000uLL;
  }

  if ([(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {
    [(CNContactHeaderEditView *)self staticHeaderPhotoTopMargin];
    v39 = v38;
    v40 = [(CNContactHeaderView *)self photoTopConstraint];
    [v40 setConstant:v39];

    v41 = [(CNContactHeaderView *)self photoTopConstraint];
    LODWORD(v42) = 1148846080;
    [v41 setPriority:v42];

    [(CNContactHeaderEditView *)self staticHeaderPhotoHeight];
    v44 = v43;
    v45 = [(CNContactHeaderView *)self photoHeightConstraint];
    [v45 setConstant:v44];
  }

  if ([(CNContactHeaderEditView *)self shouldShowPoster])
  {
    v46 = [(CNContactHeaderEditView *)self editingPosterView];
    v47 = [v46 view];
    v79 = [v47 bottomAnchor];
  }

  else
  {
    v46 = [(CNContactHeaderView *)self photoView];
    v79 = [v46 bottomAnchor];
  }

  v48 = [(CNContactHeaderEditView *)self shouldUseStaticHeader];
  v49 = [(CNContactHeaderEditView *)self editButton];
  v50 = [v49 leadingAnchor];
  v51 = [(CNContactHeaderEditView *)self leadingAnchor];
  if (v48)
  {
    v52 = [v50 constraintGreaterThanOrEqualToAnchor:v51];
    v84[0] = v52;
    v53 = [(CNContactHeaderEditView *)self editButton];
    v54 = [v53 trailingAnchor];
    v55 = [(CNContactHeaderEditView *)self trailingAnchor];
    v56 = [v54 constraintLessThanOrEqualToAnchor:v55];
    v84[1] = v56;
    v57 = [*(v11 + 3784) arrayWithObjects:v84 count:2];
    [v80 addObjectsFromArray:v57];

    v58 = 22.0;
    if (![(CNContactHeaderEditView *)self _shouldShowPhoto])
    {
      goto LABEL_20;
    }

    v49 = [(CNContactHeaderEditView *)self editButton];
    v50 = [v49 heightAnchor];
    v51 = [v50 constraintEqualToConstant:48.0];
    v83[0] = v51;
    v59 = [(CNContactHeaderEditView *)self editButton];
    v60 = [v59 widthAnchor];
    v61 = [v60 constraintGreaterThanOrEqualToConstant:88.0];
    v83[1] = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
    [v80 addObjectsFromArray:v62];
    v58 = 12.0;
  }

  else
  {
    v59 = [v50 constraintEqualToAnchor:v51];
    v82[0] = v59;
    v60 = [(CNContactHeaderEditView *)self editButton];
    v61 = [v60 trailingAnchor];
    v62 = [(CNContactHeaderEditView *)self trailingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    v82[1] = v63;
    v64 = [*(v11 + 3784) arrayWithObjects:v82 count:2];
    [v80 addObjectsFromArray:v64];

    v58 = 0.0;
  }

LABEL_20:
  if ([(CNContactHeaderEditView *)self _shouldShowPhoto])
  {
    v65 = [(CNContactHeaderEditView *)self editButton];
    v66 = [v65 centerXAnchor];
    v67 = [(CNContactHeaderView *)self photoView];
    v68 = [v67 centerXAnchor];
    v69 = [v66 constraintEqualToAnchor:v68];
    [v80 addObject:v69];
LABEL_24:

    goto LABEL_25;
  }

  if ([(CNContactHeaderEditView *)self shouldShowPoster])
  {
    v65 = [(CNContactHeaderEditView *)self editButton];
    v66 = [v65 centerXAnchor];
    v67 = [(CNContactHeaderEditView *)self editingPosterView];
    v68 = [v67 view];
    v69 = [v68 centerXAnchor];
    v70 = [v66 constraintEqualToAnchor:v69];
    [v80 addObject:v70];

    goto LABEL_24;
  }

LABEL_25:
  v71 = [(CNContactHeaderEditView *)self editButton];
  v72 = [v71 topAnchor];
  v73 = [v72 constraintEqualToAnchor:v79 constant:v58];
  [v80 addObject:v73];

  [MEMORY[0x1E696ACD8] activateConstraints:v80];
  [(CNContactHeaderView *)self setActivatedConstraints:v80];
}

- (BOOL)_shouldShowPhoto
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  if ([v4 isFeatureEnabled:29])
  {
    v5 = ![(CNContactHeaderEditView *)self shouldShowPoster];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)updatePosterVisibility
{
  v3 = [(CNContactHeaderEditView *)self shouldShowPoster];
  v4 = [(CNContactHeaderEditView *)self editingPosterView];
  v5 = [v4 view];
  v6 = [v5 isHidden];

  if (v3 == v6)
  {
    v7 = [(CNContactHeaderEditView *)self shouldShowPoster];
    v8 = [(CNContactHeaderEditView *)self editingPosterView];
    v9 = [v8 view];
    [v9 setHidden:!v7];

    v10 = [(CNContactHeaderView *)self delegate];
    [v10 headerViewDidChangeHeight:self];
  }
}

- (void)updateFontSizes
{
  v14.receiver = self;
  v14.super_class = CNContactHeaderEditView;
  [(CNContactHeaderView *)&v14 updateFontSizes];
  v3 = [(CNContactHeaderView *)self photoView];
  [v3 updateFontSizes];

  if ([(CNContactHeaderView *)self needsLabelSizeCalculation])
  {
    [(CNContactHeaderView *)self setNeedsLabelSizeCalculation:0];
    if (![(CNContactHeaderEditView *)self shouldUseStaticHeader])
    {
      v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
      v5 = sCurrentTaglineFont;
      sCurrentTaglineFont = v4;

      [sCurrentTaglineFont _scaledValueForValue:16.0];
      v6 = [sCurrentTaglineFont fontWithSize:?];
      v7 = [(CNContactHeaderEditView *)self editButton];
      v8 = [v7 titleLabel];
      [v8 setFont:v6];
    }

    v9 = [(CNContactHeaderEditView *)self editButton];
    v10 = [v9 titleLabel];
    [(CNContactHeaderEditView *)self bounds];
    [v10 sizeThatFits:{v11, v12}];
    [(CNContactHeaderEditView *)self setMaxButtonSize:?];

    v13 = [(CNContactHeaderView *)self delegate];
    [v13 headerViewDidUpdateLabelSizes];
  }
}

- (void)calculateLabelSizesIfNeeded
{
  v3.receiver = self;
  v3.super_class = CNContactHeaderEditView;
  [(CNContactHeaderView *)&v3 calculateLabelSizesIfNeeded];
  [(CNContactHeaderEditView *)self updateFontSizes];
}

- (double)staticHeaderPhotoAvatarOnlyTopMargin
{
  [(CNContactHeaderEditView *)self staticHeaderPhotoTopMarginOffset];
  v4 = v3;
  v5 = [(CNContactHeaderView *)self sizeAttributes];
  [v5 photoMaxTopMargin];
  v7 = v6;

  return v4 + v7;
}

- (double)staticHeaderPhotoAvatarAndPosterTopMargin
{
  [(CNContactHeaderEditView *)self staticHeaderPhotoTopMarginOffset];
  v4 = v3;
  v5 = [(CNContactHeaderView *)self sizeAttributes];
  [v5 photoMinTopMargin];
  v7 = v6;

  return v4 + v7;
}

- (double)staticHeaderPhotoTopMargin
{
  if ([(CNContactHeaderEditView *)self shouldShowPoster])
  {

    [(CNContactHeaderEditView *)self staticHeaderPhotoAvatarAndPosterTopMargin];
  }

  else
  {

    [(CNContactHeaderEditView *)self staticHeaderPhotoAvatarOnlyTopMargin];
  }

  return result;
}

- (double)staticHeaderPhotoTopMarginOffset
{
  v3 = [(CNContactHeaderView *)self delegate];
  [v3 navigationBarHeight];
  v5 = v4;

  v6 = [(CNContactHeaderView *)self delegate];
  [v6 headerViewSafeAreaInsets];
  v8 = v7;

  return v5 + v8;
}

- (double)staticEditingHeaderHeight
{
  [(CNContactHeaderEditView *)self maxButtonSize];
  if (v3 == 0.0)
  {
    [(CNContactHeaderEditView *)self calculateLabelSizesIfNeeded];
  }

  [(CNContactHeaderEditView *)self staticHeaderPhotoTopMargin];
  v5 = v4;
  [(CNContactHeaderEditView *)self staticHeaderPhotoHeight];
  v7 = v5 + v6;
  v8 = [(CNContactHeaderEditView *)self editButton];
  v9 = [v8 isHidden];

  if ((v9 & 1) == 0)
  {
    [(CNContactHeaderEditView *)self maxButtonSize];
    v7 = v7 + v10 + 12.0 + 16.0;
  }

  v11 = [(CNContactHeaderEditView *)self shouldShowPoster];
  v12 = [(CNContactHeaderView *)self sizeAttributes];
  v13 = v12;
  if (v11)
  {
    [v12 posterMaxHeight];
    v15 = v14 + 16.0;
    v16 = [(CNContactHeaderView *)self sizeAttributes];
    [v16 photoMinBottomMargin];
    v18 = v15 + v17;
  }

  else
  {
    [v12 photoMaxBottomMargin];
    v18 = v19;
  }

  return v7 + v18;
}

- (double)defaultMaxHeight
{
  if ([(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {

    [(CNContactHeaderEditView *)self staticEditingHeaderHeight];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNContactHeaderEditView;
    [(CNContactHeaderView *)&v7 defaultMaxHeight];
    v5 = v4;
    [(CNContactHeaderEditView *)self maxButtonSize];
    return v5 + v6;
  }

  return result;
}

- (double)maxHeight
{
  if ([(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {

    [(CNContactHeaderEditView *)self staticEditingHeaderHeight];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNContactHeaderEditView;
    [(CNContactHeaderView *)&v7 maxHeight];
    v5 = v4;
    [(CNContactHeaderEditView *)self maxButtonSize];
    return v5 + v6;
  }

  return result;
}

- (double)minHeight
{
  if ([(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {

    [(CNContactHeaderEditView *)self staticEditingHeaderHeight];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CNContactHeaderEditView;
    [(CNContactHeaderView *)&v4 minHeight];
  }

  return result;
}

- (BOOL)shouldUseStaticHeader
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:28];

  return v4;
}

- (BOOL)shouldShowPoster
{
  if ([(CNContactHeaderView *)self showMonogramsOnly]|| ![(CNContactHeaderEditView *)self shouldUseStaticHeader]|| [(CNContactHeaderView *)self isPad])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v5 = [(CNContactHeaderView *)self contacts];
    if ([v5 count] == 1)
    {
      v6 = *MEMORY[0x1E6996540];
      v7 = [(CNContactHeaderEditView *)self editingWallpaperContact];
      v8 = [v7 wallpaper];
      v9 = [v8 posterArchiveData];
      v3 = (*(v6 + 16))(v6, v9) ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)setAllowsEditPhoto:(BOOL)a3 preservingChanges:(BOOL)a4
{
  if (self->_allowsEditPhoto != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_allowsEditPhoto = a3;
    v8 = [(CNContactHeaderView *)self photoView];
    [v8 setEditing:v6 preservingChanges:v5];

    v9 = [(CNContactHeaderEditView *)self editButton];
    [v9 setHidden:v6 ^ 1];
  }
}

- (void)didFinishUsing
{
  if (sEditingContactHeaderView == self)
  {
    sEditingContactHeaderView = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (id)posterPlaceholderImage
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v11.width = v4;
  v11.height = v6;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  v7 = [MEMORY[0x1E69DC888] lightGrayColor];
  [v7 setFill];

  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = v4;
  v12.size.height = v6;
  UIRectFill(v12);
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

- (void)setUpPosterView
{
  v3 = [_TtC10ContactsUI32CNHostingPosterSnapshotImageView alloc];
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v13 = -[CNHostingPosterSnapshotImageView initWithIsEditContactView:](v3, "initWithIsEditContactView:", [v5 isFeatureEnabled:29]);

  v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_editPoster];
  v7 = [(CNHostingPosterSnapshotImageView *)v13 view];
  [v7 addGestureRecognizer:v6];

  v8 = [(CNHostingPosterSnapshotImageView *)v13 view];
  [v8 setUserInteractionEnabled:1];

  v9 = [(CNHostingPosterSnapshotImageView *)v13 view];
  [v9 setHidden:1];

  if (![(CNContactHeaderEditView *)self _shouldShowPhoto])
  {
    v10 = [(CNHostingPosterSnapshotImageView *)v13 view];
    v11 = [v10 layer];
    [v11 setCornerRadius:31.0];
  }

  v12 = [(CNHostingPosterSnapshotImageView *)v13 view];
  [(CNContactHeaderEditView *)self addSubview:v12];

  [(CNContactHeaderEditView *)self setEditingPosterView:v13];
}

- (void)setUpEditButton
{
  if ([(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {
    v3 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [v3 setCornerStyle:4];
    [v3 setContentInsets:{8.0, 24.0, 8.0, 24.0}];
    v4 = [MEMORY[0x1E69DC888] labelColor];
    [v3 setBaseForegroundColor:v4];

    v5 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [v3 setBaseBackgroundColor:v5];

    [v3 setTitleTextAttributesTransformer:&__block_literal_global_850];
    v6 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v3 primaryAction:0];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v7 = [(UIButton *)v6 titleLabel];
    [v7 setNumberOfLines:3];

    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    v9 = [(UIButton *)v6 titleLabel];
    [v9 setFont:v8];

    v10 = [(UIButton *)v6 titleLabel];
    [v10 setAdjustsFontForContentSizeCategory:1];

    [(UIButton *)v6 setPointerInteractionEnabled:1];
  }

  [(UIButton *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)v6 addTarget:self action:sel_editButtonTapped forControlEvents:64];
  [(CNContactHeaderEditView *)self addSubview:v6];
  editButton = self->_editButton;
  self->_editButton = v6;
}

id __42__CNContactHeaderEditView_setUpEditButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v3 _scaledValueForValue:16.0];
  v4 = [v3 fontWithSize:?];

  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

- (void)reloadDataPreservingChanges:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CNContactHeaderEditView;
  [(CNContactHeaderView *)&v7 reloadDataPreservingChanges:?];
  if ([(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {
    if (!a3)
    {
      v5 = [(CNContactHeaderEditView *)self mutableContact];
      v6 = [v5 mutableCopy];
      [(CNContactHeaderEditView *)self setEditingWallpaperContact:v6];
    }

    [(CNContactHeaderEditView *)self updatePosterViewImage];
    [(CNContactHeaderEditView *)self updatePosterVisibility];
  }
}

- (CNContactHeaderEditView)initWithContact:(id)a3 frame:(CGRect)a4 shouldAllowTakePhotoAction:(BOOL)a5 delegate:(id)a6 showingNavBar:(BOOL)a7 monogramOnly:(BOOL)a8 isOutOfProcess:(BOOL)a9
{
  v10 = a8;
  v11 = a7;
  v13 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v19 = a3;
  v29.receiver = self;
  v29.super_class = CNContactHeaderEditView;
  v20 = [(CNContactHeaderView *)&v29 initWithContact:v19 frame:v13 shouldAllowTakePhotoAction:1 shouldAllowImageDrops:v11 showingNavBar:v10 monogramOnly:a6 delegate:x, y, width, height];
  v21 = v20;
  if (v20)
  {
    v22 = [(CNContactHeaderView *)v20 photoView];
    [v22 setEditing:1];

    v21->_allowsEditPhoto = 1;
    v21->_isOutOfProcess = a9;
    v23 = +[CNSensitiveContentAnalysisManager defaultManager];
    sensitiveContentManager = v21->_sensitiveContentManager;
    v21->_sensitiveContentManager = v23;

    [(CNContactHeaderEditView *)v21 setUpEditButton];
    if ([(CNContactHeaderEditView *)v21 shouldUseStaticHeader])
    {
      v25 = [v19 mutableCopy];
      editingWallpaperContact = v21->_editingWallpaperContact;
      v21->_editingWallpaperContact = v25;

      [(CNContactHeaderEditView *)v21 setUpPosterView];
    }

    v27 = v21;
  }

  return v21;
}

+ (BOOL)useSwiftUIPosterAndAvatarEditor
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  if ([v3 isFeatureEnabled:6])
  {
    v4 = [MEMORY[0x1E69966E8] currentEnvironment];
    v5 = [v4 featureFlags];
    v6 = [v5 isFeatureEnabled:7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)sizeAttributesShowingNavBar:(BOOL)a3
{
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:28];

  if (v6)
  {
    if (a3)
    {
      +[CNContactHeaderViewSizeAttributes staticEditingAttributesWithNavBar];
    }

    else
    {
      +[CNContactHeaderViewSizeAttributes staticEditingAttributes];
    }
  }

  else if (a3)
  {
    +[CNContactHeaderViewSizeAttributes editingAttributesWithNavBar];
  }

  else
  {
    +[CNContactHeaderViewSizeAttributes editingAttributes];
  }
  v7 = ;

  return v7;
}

+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)a3 shouldAllowImageDrops:(BOOL)a4 monogramOnly:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = +[CNUIContactsEnvironment currentEnvironment];
  v9 = objc_alloc(MEMORY[0x1E6996BB0]);
  v10 = [v8 inProcessContactStore];
  v11 = [v8 defaultSchedulerProvider];
  v12 = [v9 initWithContactStore:v10 schedulerProvider:v11];

  [v12 setProhibitedSources:8];
  if (v5)
  {
    v13 = [v8 cachingMonogramRenderer];
  }

  else
  {
    v14 = MEMORY[0x1E6996B90];
    v15 = [v8 defaultSchedulerProvider];
    v13 = [v14 rendererWithLikenessResolver:v12 schedulerProvider:v15];
  }

  v16 = [CNContactPhotoView alloc];
  v17 = [v8 inProcessContactStore];
  v18 = [(CNContactPhotoView *)v16 initWithFrame:v7 shouldAllowTakePhotoAction:1 threeDTouchEnabled:v17 contactStore:v6 allowsImageDrops:v13 imageRenderer:1 allowStaleRendering:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v18;
}

+ (id)contactHeaderViewWithContact:(id)a3 shouldAllowTakePhotoAction:(BOOL)a4 showingNavBar:(BOOL)a5 monogramOnly:(BOOL)a6 isOutOfProcess:(BOOL)a7 delegate:(id)a8
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v15 = a8;
  v16 = [sEditingContactHeaderView delegate];

  if (v16)
  {
    v17 = [a1 alloc];
    v18 = [v17 initWithContact:v14 frame:v12 shouldAllowTakePhotoAction:v15 delegate:v11 showingNavBar:v10 monogramOnly:v9 isOutOfProcess:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
LABEL_3:
    v19 = v18;
    [v18 updateEditButtonTitle];
    goto LABEL_6;
  }

  if (!sEditingContactHeaderView)
  {
    v21 = [a1 alloc];
    v22 = [v21 initWithContact:v14 frame:v12 shouldAllowTakePhotoAction:v15 delegate:v11 showingNavBar:v10 monogramOnly:v9 isOutOfProcess:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v23 = sEditingContactHeaderView;
    sEditingContactHeaderView = v22;

    v18 = sEditingContactHeaderView;
    goto LABEL_3;
  }

  v19 = sEditingContactHeaderView;
  [v19 setDelegate:v15];
  [v19 prepareForReuse];
  [v19 updateForShowingNavBar:v11];
  [v19 updateWithNewContact:v14];
LABEL_6:

  return v19;
}

@end