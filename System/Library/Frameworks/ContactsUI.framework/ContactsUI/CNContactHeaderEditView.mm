@interface CNContactHeaderEditView
+ (BOOL)useSwiftUIPosterAndAvatarEditor;
+ (id)contactHeaderViewWithContact:(id)contact shouldAllowTakePhotoAction:(BOOL)action showingNavBar:(BOOL)bar monogramOnly:(BOOL)only isOutOfProcess:(BOOL)process delegate:(id)delegate;
+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)action shouldAllowImageDrops:(BOOL)drops monogramOnly:(BOOL)only;
+ (id)sizeAttributesShowingNavBar:(BOOL)bar;
- (BOOL)_shouldShowPhoto;
- (BOOL)hasPhoto;
- (BOOL)hasWallpaper;
- (BOOL)photoIsModified;
- (BOOL)shouldShowPoster;
- (BOOL)shouldUseStaticHeader;
- (BOOL)wallpaperIsModified;
- (CGSize)maxButtonSize;
- (CNContactHeaderEditView)initWithContact:(id)contact frame:(CGRect)frame shouldAllowTakePhotoAction:(BOOL)action delegate:(id)delegate showingNavBar:(BOOL)bar monogramOnly:(BOOL)only isOutOfProcess:(BOOL)process;
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
- (void)_presentRemotePosterAndAvatarEditorWithMode:(int64_t)mode isEditing:(BOOL)editing;
- (void)avatarPosterEditorFromFlowManager:(id)manager didUpdateContact:(id)contact withVisualIdentity:(id)identity;
- (void)avatarPosterEditorFromFlowManagerDidCancel:(id)cancel;
- (void)calculateLabelSizesIfNeeded;
- (void)didFinishUsing;
- (void)didTapPhotoViewWhileEditing:(BOOL)editing;
- (void)discardPendingAvatarPosterEdits;
- (void)editAvatar;
- (void)editButtonTappedWhileEditing:(BOOL)editing;
- (void)editPoster;
- (void)layoutSubviews;
- (void)preWarmPosterAndAvatarEditor;
- (void)presentAvatarPickerWithImageData:(id)data;
- (void)presentPosterAndAvatarEditorWithMode:(int64_t)mode isEditing:(BOOL)editing;
- (void)presentSwiftUIAvatarEditorWithPoster:(BOOL)poster isEditing:(BOOL)editing;
- (void)reloadDataPreservingChanges:(BOOL)changes;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)saveContactPhoto;
- (void)setAllowsEditPhoto:(BOOL)photo preservingChanges:(BOOL)changes;
- (void)setPresenterDelegate:(id)delegate;
- (void)setUpEditButton;
- (void)setUpPosterView;
- (void)updateConstraints;
- (void)updateContactWithEditedPropertyItem:(id)item;
- (void)updateEditButtonTitle;
- (void)updateFontSizes;
- (void)updatePendingWallpaperContactWithEditedPropertyItem:(id)item;
- (void)updatePosterViewImageWithNewPosterConfiguration:(BOOL)configuration;
- (void)updatePosterVisibility;
- (void)updateSizeDependentAttributes;
- (void)updateWithContacts:(id)contacts;
- (void)visualIdentityEditorViewControllerDidFinishEditing:(id)editing;
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

- (void)avatarPosterEditorFromFlowManagerDidCancel:(id)cancel
{
  [(CNContactHeaderEditView *)self setFlowManager:0];

  [(CNContactHeaderEditView *)self discardPendingAvatarPosterEdits];
}

- (void)avatarPosterEditorFromFlowManager:(id)manager didUpdateContact:(id)contact withVisualIdentity:(id)identity
{
  contactCopy = contact;
  [(CNContactHeaderEditView *)self updatePosterViewImageWithNewPosterConfiguration:1];
  photoView = [(CNContactHeaderView *)self photoView];
  [photoView updatePendingContactWithEditedContact:contactCopy];

  [(CNContactHeaderEditView *)self updatePosterVisibility];

  [(CNContactHeaderEditView *)self setFlowManager:0];
}

- (void)discardPendingAvatarPosterEdits
{
  v3 = MEMORY[0x1E695CDB0];
  editingWallpaperContact = [(CNContactHeaderEditView *)self editingWallpaperContact];
  mutableContact = [(CNContactHeaderEditView *)self mutableContact];
  [v3 updateMutableContact:editingWallpaperContact withImageAndWallpaperPropertiesFromContact:mutableContact];
}

- (void)didTapPhotoViewWhileEditing:(BOOL)editing
{
  editingCopy = editing;
  if ([(CNContactHeaderEditView *)self allowsEditPhoto])
  {
    shouldUseStaticHeader = [(CNContactHeaderEditView *)self shouldUseStaticHeader];
    if ([objc_opt_class() useSwiftUIPosterAndAvatarEditor])
    {

      [(CNContactHeaderEditView *)self presentSwiftUIAvatarEditorWithPoster:shouldUseStaticHeader isEditing:editingCopy];
    }

    else if (shouldUseStaticHeader)
    {

      [(CNContactHeaderEditView *)self presentPosterAndAvatarEditorWithMode:1 isEditing:editingCopy];
    }

    else
    {

      [(CNContactHeaderEditView *)self editAvatar];
    }
  }
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    localizedDescription = [errorCopy localizedDescription];
    v7 = 138412290;
    v8 = localizedDescription;
    _os_log_error_impl(&dword_199A75000, v5, OS_LOG_TYPE_ERROR, "Remote alert handle did invalidate: %@", &v7, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v3 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Remote alert handle did deactivate", v4, 2u);
  }
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  v3 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Remote alert handle did activate", v4, 2u);
  }
}

- (void)_presentRemotePosterAndAvatarEditorWithMode:(int64_t)mode isEditing:(BOOL)editing
{
  editingCopy = editing;
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
  editingWallpaperContact = [(CNContactHeaderEditView *)self editingWallpaperContact];
  v24 = 0;
  v15 = [v13 archivedDataWithRootObject:editingWallpaperContact requiringSecureCoding:1 error:&v24];
  v16 = v24;

  if (!(*(*MEMORY[0x1E6996540] + 16))())
  {
    v19 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v7 configurationContext:v8];
    [(CNContactHeaderEditView *)self setRemoteAlertHandle:v19];

    v17 = objc_alloc_init(MEMORY[0x1E69D4288]);
    [v17 setReason:@"EditButtonTapped"];
    v26[0] = @"mode";
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    v27[0] = v20;
    v27[1] = v15;
    v26[1] = @"contactData";
    v26[2] = @"isEditing";
    v21 = [MEMORY[0x1E696AD98] numberWithBool:editingCopy];
    v27[2] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    [v17 setUserInfo:v22];

    remoteAlertHandle = [(CNContactHeaderEditView *)self remoteAlertHandle];
    [remoteAlertHandle registerObserver:self];

    remoteAlertHandle2 = [(CNContactHeaderEditView *)self remoteAlertHandle];
    [remoteAlertHandle2 activateWithContext:v17];
    goto LABEL_5;
  }

  v17 = CNUILogRemoteAlert();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    remoteAlertHandle2 = [v16 localizedDescription];
    *buf = 138412290;
    v29 = remoteAlertHandle2;
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
  window = [(CNContactHeaderEditView *)self window];
  windowScene = [window windowScene];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && windowScene != 0)
  {
    editingWallpaperContact = [(CNContactHeaderEditView *)self editingWallpaperContact];
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    nicknameProvider = [currentEnvironment nicknameProvider];
    v10 = [nicknameProvider nicknameAsContactForContact:editingWallpaperContact];

    v11 = [[_TtC10ContactsUI37CNAvatarPosterPairCollectionPreWarmer alloc] initWithContact:editingWallpaperContact contactForSharedProfile:v10];
    [(CNContactHeaderEditView *)self setCarouselPreWarmer:v11];

    carouselPreWarmer = [(CNContactHeaderEditView *)self carouselPreWarmer];
    [carouselPreWarmer preWarmFirstPosterSnapshotIn:windowScene];
  }
}

- (void)presentSwiftUIAvatarEditorWithPoster:(BOOL)poster isEditing:(BOOL)editing
{
  v5 = [CNUIVisualIdentityEditorViewController alloc];
  editingWallpaperContact = [(CNContactHeaderEditView *)self editingWallpaperContact];
  v7 = [(CNUIVisualIdentityEditorViewController *)v5 initWithContact:editingWallpaperContact];
  [(CNContactHeaderEditView *)self setVisualIdentityEditor:v7];

  visualIdentityEditor = [(CNContactHeaderEditView *)self visualIdentityEditor];
  [visualIdentityEditor setDelegate:self];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v11 = -2;
  }

  else
  {
    v11 = 5;
  }

  presenterDelegate = [(CNContactHeaderView *)self presenterDelegate];
  visualIdentityEditor2 = [(CNContactHeaderEditView *)self visualIdentityEditor];
  [presenterDelegate sender:self presentViewController:visualIdentityEditor2 modalPresentationStyle:v11];
}

- (void)visualIdentityEditorViewControllerDidFinishEditing:(id)editing
{
  editingCopy = editing;
  [(CNContactHeaderEditView *)self updatePosterViewImageWithNewPosterConfiguration:1];
  photoView = [(CNContactHeaderView *)self photoView];
  contact = [editingCopy contact];
  [photoView updatePendingContactWithEditedContact:contact];

  [(CNContactHeaderEditView *)self updatePosterVisibility];
  presenterDelegate = [(CNContactHeaderView *)self presenterDelegate];
  [presenterDelegate sender:self dismissViewController:editingCopy];
}

- (void)presentPosterAndAvatarEditorWithMode:(int64_t)mode isEditing:(BOOL)editing
{
  editingCopy = editing;
  if (-[CNContactHeaderEditView isOutOfProcess](self, "isOutOfProcess") && ([MEMORY[0x1E69DC938] currentDevice], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "userInterfaceIdiom"), v7, (v8 & 0xFFFFFFFFFFFFFFFBLL) != 1))
  {

    [(CNContactHeaderEditView *)self _presentRemotePosterAndAvatarEditorWithMode:mode isEditing:editingCopy];
  }

  else
  {
    v9 = +[CNUIContactsEnvironment currentEnvironment];
    inProcessContactStore = [v9 inProcessContactStore];

    v10 = [CNSNaPSetupFlowManager alloc];
    presenterDelegate = [(CNContactHeaderView *)self presenterDelegate];
    v12 = [(CNSNaPSetupFlowManager *)v10 initWithPresenterDelegate:presenterDelegate contactStore:inProcessContactStore mode:mode];
    [(CNContactHeaderEditView *)self setFlowManager:v12];

    flowManager = [(CNContactHeaderEditView *)self flowManager];
    [flowManager setDelegate:self];

    flowManager2 = [(CNContactHeaderEditView *)self flowManager];
    editingWallpaperContact = [(CNContactHeaderEditView *)self editingWallpaperContact];
    [flowManager2 startContactCardFlowForContact:editingWallpaperContact isEditing:editingCopy];
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
  photoView = [(CNContactHeaderView *)self photoView];
  [photoView presentPhotoPicker];
}

- (void)editButtonTappedWhileEditing:(BOOL)editing
{
  editingCopy = editing;
  shouldUseStaticHeader = [(CNContactHeaderEditView *)self shouldShowPoster]|| [(CNContactHeaderEditView *)self shouldUseStaticHeader];
  if ([objc_opt_class() useSwiftUIPosterAndAvatarEditor])
  {

    [(CNContactHeaderEditView *)self presentSwiftUIAvatarEditorWithPoster:shouldUseStaticHeader isEditing:editingCopy];
  }

  else if (shouldUseStaticHeader)
  {

    [(CNContactHeaderEditView *)self presentPosterAndAvatarEditorWithMode:1 isEditing:editingCopy];
  }

  else
  {

    [(CNContactHeaderEditView *)self editAvatar];
  }
}

- (void)updatePendingWallpaperContactWithEditedPropertyItem:(id)item
{
  v25[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  property = [itemCopy property];
  v6 = [property isEqualToString:*MEMORY[0x1E695C240]];
  v7 = MEMORY[0x1E695C330];
  if (v6)
  {
    goto LABEL_8;
  }

  property2 = [itemCopy property];
  if ([property2 isEqualToString:*MEMORY[0x1E695C230]])
  {
LABEL_7:

LABEL_8:
    v11 = *v7;
    goto LABEL_9;
  }

  property3 = [itemCopy property];
  if ([property3 isEqualToString:*MEMORY[0x1E695C208]])
  {
LABEL_6:

    goto LABEL_7;
  }

  property4 = [itemCopy property];
  v11 = *v7;
  if ([property4 isEqualToString:*v7])
  {

    goto LABEL_6;
  }

  property5 = [itemCopy property];
  v23 = [property5 isEqualToString:*MEMORY[0x1E695C328]];

  if ((v23 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  property6 = [itemCopy property];
  if (([property6 isEqualToString:v11] & 1) == 0)
  {

LABEL_13:
    property7 = [itemCopy property];
    if ([property7 isEqualToString:*MEMORY[0x1E695C208]])
    {
      labeledValue = [itemCopy labeledValue];

      if (labeledValue)
      {
        editingWallpaperContact = [(CNContactHeaderEditView *)self editingWallpaperContact];
        labeledValue2 = [itemCopy labeledValue];
        v24 = labeledValue2;
        v16 = MEMORY[0x1E695DEC8];
        v17 = &v24;
        goto LABEL_16;
      }
    }

    else
    {
    }

    editingWallpaperContact = [(CNContactHeaderEditView *)self editingWallpaperContact];
    labeledValue2 = [itemCopy editingStringValue];
    property8 = [itemCopy property];
    [editingWallpaperContact setValue:labeledValue2 forKey:property8];
    goto LABEL_19;
  }

  labeledValue3 = [itemCopy labeledValue];

  if (!labeledValue3)
  {
    goto LABEL_13;
  }

  editingWallpaperContact = [(CNContactHeaderEditView *)self editingWallpaperContact];
  labeledValue2 = [itemCopy labeledValue];
  v25[0] = labeledValue2;
  v16 = MEMORY[0x1E695DEC8];
  v17 = v25;
LABEL_16:
  property8 = [v16 arrayWithObjects:v17 count:1];
  property9 = [itemCopy property];
  [editingWallpaperContact setValue:property8 forKey:property9];

LABEL_19:
LABEL_20:
}

- (void)updateContactWithEditedPropertyItem:(id)item
{
  itemCopy = item;
  [(CNContactHeaderEditView *)self updatePendingWallpaperContactWithEditedPropertyItem:itemCopy];
  photoView = [(CNContactHeaderView *)self photoView];
  [photoView updatePendingContactWithEditedPropertyItem:itemCopy];
}

- (void)presentAvatarPickerWithImageData:(id)data
{
  dataCopy = data;
  photoView = [(CNContactHeaderView *)self photoView];
  [photoView presentPhotoPickerWithImageData:dataCopy];
}

- (void)saveContactPhoto
{
  v30 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() useSwiftUIPosterAndAvatarEditor])
  {
    visualIdentityEditor = [(CNContactHeaderEditView *)self visualIdentityEditor];

    if (visualIdentityEditor)
    {
      v4 = CNUILogContactCard();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Using edited contact from visual identity editor", &v26, 2u);
      }

      visualIdentityEditor2 = [(CNContactHeaderEditView *)self visualIdentityEditor];
      contact = [visualIdentityEditor2 contact];

      if (!contact)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }
  }

  if (![(CNContactHeaderEditView *)self wallpaperIsModified])
  {
    contact = 0;
    goto LABEL_18;
  }

  v7 = CNUILogContactCard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Using edited contact from legacy wallpaper editor", &v26, 2u);
  }

  contact = self->_editingWallpaperContact;
  if (contact)
  {
LABEL_11:
    v8 = CNUILogContactCard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Contact wallpaper modified, will save edits", &v26, 2u);
    }

    mutableContact = [(CNContactHeaderEditView *)self mutableContact];
    [mutableContact setSharedPhotoDisplayPreference:2];

    v10 = MEMORY[0x1E695CDB0];
    mutableContact2 = [(CNContactHeaderEditView *)self mutableContact];
    [v10 updateMutableContact:mutableContact2 withWallpaperPropertiesFromContact:contact];

    v12 = CNUILogContactCard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      wallpaper = [(CNMutableContact *)contact wallpaper];
      posterArchiveData = [wallpaper posterArchiveData];
      v23 = [posterArchiveData length];
      watchWallpaperImageData = [(CNMutableContact *)contact watchWallpaperImageData];
      v25 = [watchWallpaperImageData length];
      v26 = 134218240;
      v27 = v23;
      v28 = 2048;
      v29 = v25;
      _os_log_debug_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEBUG, "[Likeness Update] Wallpaper updated to archive data of length %ld, watch snapshot of length %ld", &v26, 0x16u);
    }

    v13 = *MEMORY[0x1E6996540];
    imageData = [(CNMutableContact *)contact imageData];
    LOBYTE(v13) = (*(v13 + 16))(v13, imageData);

    if ((v13 & 1) == 0)
    {
      v15 = MEMORY[0x1E695CDB0];
      mutableContact3 = [(CNContactHeaderEditView *)self mutableContact];
      [v15 updateMutableContact:mutableContact3 withImagePropertiesFromContact:contact];
LABEL_22:

      goto LABEL_23;
    }
  }

LABEL_18:
  photoView = [(CNContactHeaderView *)self photoView];
  modified = [photoView modified];

  if (modified)
  {
    v19 = CNUILogContactCard();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Contact image modified, will save edits", &v26, 2u);
    }

    photoView2 = [(CNContactHeaderView *)self photoView];
    [photoView2 saveEdits];

    mutableContact3 = [(CNContactHeaderEditView *)self mutableContact];
    [mutableContact3 setSharedPhotoDisplayPreference:2];
    goto LABEL_22;
  }

LABEL_23:
}

- (id)mutableContact
{
  objc_opt_class();
  contacts = [(CNContactHeaderView *)self contacts];
  firstObject = [contacts firstObject];
  if (objc_opt_isKindOfClass())
  {
    v5 = firstObject;
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
    mutableContact = [(CNContactHeaderEditView *)self mutableContact];
    wallpaper = [mutableContact wallpaper];
    if (wallpaper || (-[CNContactHeaderEditView editingWallpaperContact](self, "editingWallpaperContact"), v2 = objc_claimAutoreleasedReturnValue(), [v2 wallpaper], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      mutableContact2 = [(CNContactHeaderEditView *)self mutableContact];
      wallpaper2 = [mutableContact2 wallpaper];
      editingWallpaperContact = [(CNContactHeaderEditView *)self editingWallpaperContact];
      wallpaper3 = [editingWallpaperContact wallpaper];
      v11 = [wallpaper2 isEqual:wallpaper3] ^ 1;

      if (wallpaper)
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
  photoView = [(CNContactHeaderView *)self photoView];
  modified = [photoView modified];

  return modified;
}

- (BOOL)hasWallpaper
{
  wallpaper = [(CNMutableContact *)self->_editingWallpaperContact wallpaper];
  v3 = wallpaper != 0;

  return v3;
}

- (BOOL)hasPhoto
{
  photoView = [(CNContactHeaderView *)self photoView];
  hasPhoto = [photoView hasPhoto];

  return hasPhoto;
}

- (void)updateEditButtonTitle
{
  if ([(CNContactHeaderEditView *)self shouldShowPoster])
  {
    hasWallpaper = [(CNContactHeaderEditView *)self hasWallpaper];
    v4 = CNContactsUIBundle();
    if (!hasWallpaper)
    {
      v5 = @"WALLPAPER_ADD_LABEL";
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  hasPhoto = [(CNContactHeaderEditView *)self hasPhoto];
  v4 = CNContactsUIBundle();
  if (hasPhoto)
  {
LABEL_5:
    v5 = @"PHOTO_EDIT_LABEL";
    goto LABEL_7;
  }

  v5 = @"PHOTO_ADD_LABEL";
LABEL_7:
  v8 = [v4 localizedStringForKey:v5 value:&stru_1F0CE7398 table:@"Localized"];

  editButton = [(CNContactHeaderEditView *)self editButton];
  [editButton setTitle:v8 forState:0];
}

- (void)updatePosterViewImageWithNewPosterConfiguration:(BOOL)configuration
{
  v49 = *MEMORY[0x1E69E9840];
  if ([(CNContactHeaderEditView *)self shouldShowPoster])
  {
    posterPlaceholderImage = [(CNContactHeaderEditView *)self posterPlaceholderImage];
    editingPosterView = [(CNContactHeaderEditView *)self editingPosterView];
    [editingPosterView setImage:posterPlaceholderImage];

    wallpaper = [(CNMutableContact *)self->_editingWallpaperContact wallpaper];
    posterArchiveData = [wallpaper posterArchiveData];
    v9 = (*(*MEMORY[0x1E6996540] + 16))();

    if (v9)
    {
      return;
    }

    editingWallpaperContact = [(CNContactHeaderEditView *)self editingWallpaperContact];
    wallpaper2 = [editingWallpaperContact wallpaper];
    contentIsSensitive = [wallpaper2 contentIsSensitive];

    sensitiveContentManager = [(CNContactHeaderEditView *)self sensitiveContentManager];
    v14 = [sensitiveContentManager shouldShowUIForPosterWithSensitiveContent:contentIsSensitive forContact:editingWallpaperContact];

    editingPosterView2 = [(CNContactHeaderEditView *)self editingPosterView];
    [editingPosterView2 setIsSensitiveContent:v14];

    self->_needsPosterCarouselPreWarming = 1;
    if (configuration || ([(CNContactHeaderEditView *)self cachedPosterConfiguration], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
      wallpaper3 = [(CNMutableContact *)self->_editingWallpaperContact wallpaper];
      posterArchiveData2 = [wallpaper3 posterArchiveData];
      v46 = 0;
      v19 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:posterArchiveData2 error:&v46];
      v20 = v46;
      cachedPosterConfiguration = self->_cachedPosterConfiguration;
      self->_cachedPosterConfiguration = v19;

      if (!self->_cachedPosterConfiguration)
      {
        v22 = CNUILogPosters();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v20 localizedDescription];
          *buf = 138412290;
          v48 = localizedDescription;
          _os_log_error_impl(&dword_199A75000, v22, OS_LOG_TYPE_ERROR, "Unable to unarchive poster configuration from data, %@", buf, 0xCu);
        }
      }
    }

    cachedPosterConfiguration = [(CNContactHeaderEditView *)self cachedPosterConfiguration];
    if (!cachedPosterConfiguration)
    {
      goto LABEL_26;
    }

    v38 = [[CNPRUISIncomingCallPosterContext alloc] initWithContact:self->_editingWallpaperContact showName:0];
    v24 = [CNPRUISIncomingCallSnapshotDefinition contentsOnlySnapshotDefinitionWithContext:v38 attachmentIdentifiers:0];
    v25 = [CNPRUISPosterSnapshotRequest requestForConfiguration:cachedPosterConfiguration definition:v24 interfaceOrientation:1];
    v26 = objc_alloc_init(CNPRUISPosterSnapshotController);
    v45 = 0;
    v27 = [(CNPRUISPosterSnapshotController *)v26 latestSnapshotBundleForRequest:v25 error:&v45];
    v37 = v45;
    if (v27)
    {
      levelSets = [v24 levelSets];
      firstObject = [levelSets firstObject];
      v30 = [v27 snapshotForLevelSet:firstObject];

      v31 = CNUILogPosters();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_199A75000, v31, OS_LOG_TYPE_DEBUG, "Returning cached snapshot", buf, 2u);
      }

      if (v30)
      {
        mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __75__CNContactHeaderEditView_updatePosterViewImageWithNewPosterConfiguration___block_invoke;
        v43[3] = &unk_1E74E77C0;
        v43[4] = self;
        v44 = v30;
        v33 = v30;
        [mainThreadScheduler performBlock:v43];

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

  editingPosterView3 = [(CNContactHeaderEditView *)self editingPosterView];
  [editingPosterView3 setImage:0];
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

- (void)setPresenterDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = CNContactHeaderEditView;
  delegateCopy = delegate;
  [(CNContactHeaderView *)&v5 setPresenterDelegate:delegateCopy];
  [(CNSNaPSetupFlowManager *)self->_flowManager setPresenterDelegate:delegateCopy, v5.receiver, v5.super_class];
}

- (void)updateWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v10.receiver = self;
  v10.super_class = CNContactHeaderEditView;
  [(CNContactHeaderView *)&v10 updateWithContacts:contactsCopy];
  firstObject = [contactsCopy firstObject];
  visualIdentityEditor = [(CNContactHeaderEditView *)self visualIdentityEditor];
  [visualIdentityEditor setContact:firstObject];

  if (-[CNContactHeaderEditView shouldUseStaticHeader](self, "shouldUseStaticHeader") && [contactsCopy count] == 1)
  {
    firstObject2 = [contactsCopy firstObject];
    v8 = [firstObject2 mutableCopy];
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
    photoTopConstraint = [(CNContactHeaderView *)self photoTopConstraint];
    [photoTopConstraint constant];
    v7 = v6;

    if (v7 != v4)
    {
      photoTopConstraint2 = [(CNContactHeaderView *)self photoTopConstraint];
      [photoTopConstraint2 setConstant:v4];
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
      editButton = [(CNContactHeaderEditView *)self editButton];
      [editButton setAlpha:v6];

      [sCurrentTaglineFont _scaledValueForValue:16.0];
      v9 = [sCurrentTaglineFont fontWithSize:v5 * v8];
      editButton2 = [(CNContactHeaderEditView *)self editButton];
      titleLabel = [editButton2 titleLabel];
      [titleLabel setFont:v9];
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
      shouldShowPoster = [(CNContactHeaderEditView *)self shouldShowPoster];
      sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
      v6 = sizeAttributes;
      if (shouldShowPoster)
      {
        [sizeAttributes photoMinHeight];
      }

      else
      {
        [sizeAttributes photoMaxHeight];
      }

      v3 = v7;
    }

    if ([(CNContactHeaderView *)self isPhotoLowQuality])
    {
      sizeAttributes2 = [(CNContactHeaderView *)self sizeAttributes];
      [sizeAttributes2 photoMaxHeightLowQuality];
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
  activatedConstraints = [(CNContactHeaderView *)self activatedConstraints];
  v80 = [v3 arrayWithArray:activatedConstraints];

  if (![(CNContactHeaderEditView *)self _shouldShowPhoto])
  {
    photoTopConstraint = [(CNContactHeaderView *)self photoTopConstraint];
    [v80 removeObject:photoTopConstraint];

    photoHeightConstraint = [(CNContactHeaderView *)self photoHeightConstraint];
    [photoHeightConstraint setConstant:0.0];
  }

  if ([(CNContactHeaderEditView *)self _shouldShowPhoto])
  {
    photoView = [(CNContactHeaderView *)self photoView];
    centerXAnchor = [photoView centerXAnchor];
    centerXAnchor2 = [(CNContactHeaderEditView *)self centerXAnchor];
    v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v80 addObject:v10];
  }

  v11 = 0x1E695D000;
  if ([(CNContactHeaderEditView *)self shouldShowPoster])
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v14 = v13;

    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 bounds];
    v17 = v16;

    if (v14 / v17 >= v17 / v14)
    {
      v18 = v14 / v17;
    }

    else
    {
      v18 = v17 / v14;
    }

    editingPosterView = [(CNContactHeaderEditView *)self editingPosterView];
    view = [editingPosterView view];
    topAnchor = [view topAnchor];
    photoView2 = [(CNContactHeaderView *)self photoView];
    bottomAnchor = [photoView2 bottomAnchor];
    v21 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:16.0];
    v86[0] = v21;
    editingPosterView2 = [(CNContactHeaderEditView *)self editingPosterView];
    view2 = [editingPosterView2 view];
    centerXAnchor3 = [view2 centerXAnchor];
    centerXAnchor4 = [(CNContactHeaderEditView *)self centerXAnchor];
    v26 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v86[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
    [v80 addObjectsFromArray:v27];

    editingPosterView3 = [(CNContactHeaderEditView *)self editingPosterView];
    view3 = [editingPosterView3 view];
    heightAnchor = [view3 heightAnchor];
    sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes posterMaxHeight];
    v30 = [heightAnchor constraintEqualToConstant:?];
    v85[0] = v30;
    v31 = MEMORY[0x1E696ACD8];
    editingPosterView4 = [(CNContactHeaderEditView *)self editingPosterView];
    view4 = [editingPosterView4 view];
    editingPosterView5 = [(CNContactHeaderEditView *)self editingPosterView];
    view5 = [editingPosterView5 view];
    v36 = [v31 constraintWithItem:view4 attribute:8 relatedBy:0 toItem:view5 attribute:7 multiplier:v18 constant:0.0];
    v85[1] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    [v80 addObjectsFromArray:v37];

    v11 = 0x1E695D000uLL;
  }

  if ([(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {
    [(CNContactHeaderEditView *)self staticHeaderPhotoTopMargin];
    v39 = v38;
    photoTopConstraint2 = [(CNContactHeaderView *)self photoTopConstraint];
    [photoTopConstraint2 setConstant:v39];

    photoTopConstraint3 = [(CNContactHeaderView *)self photoTopConstraint];
    LODWORD(v42) = 1148846080;
    [photoTopConstraint3 setPriority:v42];

    [(CNContactHeaderEditView *)self staticHeaderPhotoHeight];
    v44 = v43;
    photoHeightConstraint2 = [(CNContactHeaderView *)self photoHeightConstraint];
    [photoHeightConstraint2 setConstant:v44];
  }

  if ([(CNContactHeaderEditView *)self shouldShowPoster])
  {
    editingPosterView6 = [(CNContactHeaderEditView *)self editingPosterView];
    view6 = [editingPosterView6 view];
    bottomAnchor2 = [view6 bottomAnchor];
  }

  else
  {
    editingPosterView6 = [(CNContactHeaderView *)self photoView];
    bottomAnchor2 = [editingPosterView6 bottomAnchor];
  }

  shouldUseStaticHeader = [(CNContactHeaderEditView *)self shouldUseStaticHeader];
  editButton = [(CNContactHeaderEditView *)self editButton];
  leadingAnchor = [editButton leadingAnchor];
  leadingAnchor2 = [(CNContactHeaderEditView *)self leadingAnchor];
  if (shouldUseStaticHeader)
  {
    v52 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v84[0] = v52;
    editButton2 = [(CNContactHeaderEditView *)self editButton];
    trailingAnchor = [editButton2 trailingAnchor];
    trailingAnchor2 = [(CNContactHeaderEditView *)self trailingAnchor];
    v56 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v84[1] = v56;
    v57 = [*(v11 + 3784) arrayWithObjects:v84 count:2];
    [v80 addObjectsFromArray:v57];

    v58 = 22.0;
    if (![(CNContactHeaderEditView *)self _shouldShowPhoto])
    {
      goto LABEL_20;
    }

    editButton = [(CNContactHeaderEditView *)self editButton];
    leadingAnchor = [editButton heightAnchor];
    leadingAnchor2 = [leadingAnchor constraintEqualToConstant:48.0];
    v83[0] = leadingAnchor2;
    editButton3 = [(CNContactHeaderEditView *)self editButton];
    widthAnchor = [editButton3 widthAnchor];
    trailingAnchor3 = [widthAnchor constraintGreaterThanOrEqualToConstant:88.0];
    v83[1] = trailingAnchor3;
    trailingAnchor4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
    [v80 addObjectsFromArray:trailingAnchor4];
    v58 = 12.0;
  }

  else
  {
    editButton3 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v82[0] = editButton3;
    widthAnchor = [(CNContactHeaderEditView *)self editButton];
    trailingAnchor3 = [widthAnchor trailingAnchor];
    trailingAnchor4 = [(CNContactHeaderEditView *)self trailingAnchor];
    v63 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v82[1] = v63;
    v64 = [*(v11 + 3784) arrayWithObjects:v82 count:2];
    [v80 addObjectsFromArray:v64];

    v58 = 0.0;
  }

LABEL_20:
  if ([(CNContactHeaderEditView *)self _shouldShowPhoto])
  {
    editButton4 = [(CNContactHeaderEditView *)self editButton];
    centerXAnchor5 = [editButton4 centerXAnchor];
    photoView3 = [(CNContactHeaderView *)self photoView];
    centerXAnchor6 = [photoView3 centerXAnchor];
    v68CenterXAnchor = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v80 addObject:v68CenterXAnchor];
LABEL_24:

    goto LABEL_25;
  }

  if ([(CNContactHeaderEditView *)self shouldShowPoster])
  {
    editButton4 = [(CNContactHeaderEditView *)self editButton];
    centerXAnchor5 = [editButton4 centerXAnchor];
    photoView3 = [(CNContactHeaderEditView *)self editingPosterView];
    centerXAnchor6 = [photoView3 view];
    v68CenterXAnchor = [centerXAnchor6 centerXAnchor];
    v70 = [centerXAnchor5 constraintEqualToAnchor:v68CenterXAnchor];
    [v80 addObject:v70];

    goto LABEL_24;
  }

LABEL_25:
  editButton5 = [(CNContactHeaderEditView *)self editButton];
  topAnchor2 = [editButton5 topAnchor];
  v73 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:v58];
  [v80 addObject:v73];

  [MEMORY[0x1E696ACD8] activateConstraints:v80];
  [(CNContactHeaderView *)self setActivatedConstraints:v80];
}

- (BOOL)_shouldShowPhoto
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:29])
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
  shouldShowPoster = [(CNContactHeaderEditView *)self shouldShowPoster];
  editingPosterView = [(CNContactHeaderEditView *)self editingPosterView];
  view = [editingPosterView view];
  isHidden = [view isHidden];

  if (shouldShowPoster == isHidden)
  {
    shouldShowPoster2 = [(CNContactHeaderEditView *)self shouldShowPoster];
    editingPosterView2 = [(CNContactHeaderEditView *)self editingPosterView];
    view2 = [editingPosterView2 view];
    [view2 setHidden:!shouldShowPoster2];

    delegate = [(CNContactHeaderView *)self delegate];
    [delegate headerViewDidChangeHeight:self];
  }
}

- (void)updateFontSizes
{
  v14.receiver = self;
  v14.super_class = CNContactHeaderEditView;
  [(CNContactHeaderView *)&v14 updateFontSizes];
  photoView = [(CNContactHeaderView *)self photoView];
  [photoView updateFontSizes];

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
      editButton = [(CNContactHeaderEditView *)self editButton];
      titleLabel = [editButton titleLabel];
      [titleLabel setFont:v6];
    }

    editButton2 = [(CNContactHeaderEditView *)self editButton];
    titleLabel2 = [editButton2 titleLabel];
    [(CNContactHeaderEditView *)self bounds];
    [titleLabel2 sizeThatFits:{v11, v12}];
    [(CNContactHeaderEditView *)self setMaxButtonSize:?];

    delegate = [(CNContactHeaderView *)self delegate];
    [delegate headerViewDidUpdateLabelSizes];
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
  sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
  [sizeAttributes photoMaxTopMargin];
  v7 = v6;

  return v4 + v7;
}

- (double)staticHeaderPhotoAvatarAndPosterTopMargin
{
  [(CNContactHeaderEditView *)self staticHeaderPhotoTopMarginOffset];
  v4 = v3;
  sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
  [sizeAttributes photoMinTopMargin];
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
  delegate = [(CNContactHeaderView *)self delegate];
  [delegate navigationBarHeight];
  v5 = v4;

  delegate2 = [(CNContactHeaderView *)self delegate];
  [delegate2 headerViewSafeAreaInsets];
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
  editButton = [(CNContactHeaderEditView *)self editButton];
  isHidden = [editButton isHidden];

  if ((isHidden & 1) == 0)
  {
    [(CNContactHeaderEditView *)self maxButtonSize];
    v7 = v7 + v10 + 12.0 + 16.0;
  }

  shouldShowPoster = [(CNContactHeaderEditView *)self shouldShowPoster];
  sizeAttributes = [(CNContactHeaderView *)self sizeAttributes];
  v13 = sizeAttributes;
  if (shouldShowPoster)
  {
    [sizeAttributes posterMaxHeight];
    v15 = v14 + 16.0;
    sizeAttributes2 = [(CNContactHeaderView *)self sizeAttributes];
    [sizeAttributes2 photoMinBottomMargin];
    v18 = v15 + v17;
  }

  else
  {
    [sizeAttributes photoMaxBottomMargin];
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v4 = [featureFlags isFeatureEnabled:28];

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
    contacts = [(CNContactHeaderView *)self contacts];
    if ([contacts count] == 1)
    {
      v6 = *MEMORY[0x1E6996540];
      editingWallpaperContact = [(CNContactHeaderEditView *)self editingWallpaperContact];
      wallpaper = [editingWallpaperContact wallpaper];
      posterArchiveData = [wallpaper posterArchiveData];
      v3 = (*(v6 + 16))(v6, posterArchiveData) ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)setAllowsEditPhoto:(BOOL)photo preservingChanges:(BOOL)changes
{
  if (self->_allowsEditPhoto != photo)
  {
    changesCopy = changes;
    photoCopy = photo;
    self->_allowsEditPhoto = photo;
    photoView = [(CNContactHeaderView *)self photoView];
    [photoView setEditing:photoCopy preservingChanges:changesCopy];

    editButton = [(CNContactHeaderEditView *)self editButton];
    [editButton setHidden:photoCopy ^ 1];
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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  v11.width = v4;
  v11.height = v6;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  [lightGrayColor setFill];

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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v13 = -[CNHostingPosterSnapshotImageView initWithIsEditContactView:](v3, "initWithIsEditContactView:", [featureFlags isFeatureEnabled:29]);

  v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_editPoster];
  view = [(CNHostingPosterSnapshotImageView *)v13 view];
  [view addGestureRecognizer:v6];

  view2 = [(CNHostingPosterSnapshotImageView *)v13 view];
  [view2 setUserInteractionEnabled:1];

  view3 = [(CNHostingPosterSnapshotImageView *)v13 view];
  [view3 setHidden:1];

  if (![(CNContactHeaderEditView *)self _shouldShowPhoto])
  {
    view4 = [(CNHostingPosterSnapshotImageView *)v13 view];
    layer = [view4 layer];
    [layer setCornerRadius:31.0];
  }

  view5 = [(CNHostingPosterSnapshotImageView *)v13 view];
  [(CNContactHeaderEditView *)self addSubview:view5];

  [(CNContactHeaderEditView *)self setEditingPosterView:v13];
}

- (void)setUpEditButton
{
  if ([(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [filledButtonConfiguration setCornerStyle:4];
    [filledButtonConfiguration setContentInsets:{8.0, 24.0, 8.0, 24.0}];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [filledButtonConfiguration setBaseForegroundColor:labelColor];

    tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [filledButtonConfiguration setBaseBackgroundColor:tertiarySystemFillColor];

    [filledButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_850];
    v6 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:0];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
    titleLabel = [(UIButton *)v6 titleLabel];
    [titleLabel setNumberOfLines:3];

    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    titleLabel2 = [(UIButton *)v6 titleLabel];
    [titleLabel2 setFont:v8];

    titleLabel3 = [(UIButton *)v6 titleLabel];
    [titleLabel3 setAdjustsFontForContentSizeCategory:1];

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

- (void)reloadDataPreservingChanges:(BOOL)changes
{
  v7.receiver = self;
  v7.super_class = CNContactHeaderEditView;
  [(CNContactHeaderView *)&v7 reloadDataPreservingChanges:?];
  if ([(CNContactHeaderEditView *)self shouldUseStaticHeader])
  {
    if (!changes)
    {
      mutableContact = [(CNContactHeaderEditView *)self mutableContact];
      v6 = [mutableContact mutableCopy];
      [(CNContactHeaderEditView *)self setEditingWallpaperContact:v6];
    }

    [(CNContactHeaderEditView *)self updatePosterViewImage];
    [(CNContactHeaderEditView *)self updatePosterVisibility];
  }
}

- (CNContactHeaderEditView)initWithContact:(id)contact frame:(CGRect)frame shouldAllowTakePhotoAction:(BOOL)action delegate:(id)delegate showingNavBar:(BOOL)bar monogramOnly:(BOOL)only isOutOfProcess:(BOOL)process
{
  onlyCopy = only;
  barCopy = bar;
  actionCopy = action;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  contactCopy = contact;
  v29.receiver = self;
  v29.super_class = CNContactHeaderEditView;
  height = [(CNContactHeaderView *)&v29 initWithContact:contactCopy frame:actionCopy shouldAllowTakePhotoAction:1 shouldAllowImageDrops:barCopy showingNavBar:onlyCopy monogramOnly:delegate delegate:x, y, width, height];
  v21 = height;
  if (height)
  {
    photoView = [(CNContactHeaderView *)height photoView];
    [photoView setEditing:1];

    v21->_allowsEditPhoto = 1;
    v21->_isOutOfProcess = process;
    v23 = +[CNSensitiveContentAnalysisManager defaultManager];
    sensitiveContentManager = v21->_sensitiveContentManager;
    v21->_sensitiveContentManager = v23;

    [(CNContactHeaderEditView *)v21 setUpEditButton];
    if ([(CNContactHeaderEditView *)v21 shouldUseStaticHeader])
    {
      v25 = [contactCopy mutableCopy];
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
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:6])
  {
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags2 = [currentEnvironment2 featureFlags];
    v6 = [featureFlags2 isFeatureEnabled:7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)sizeAttributesShowingNavBar:(BOOL)bar
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:28];

  if (v6)
  {
    if (bar)
    {
      +[CNContactHeaderViewSizeAttributes staticEditingAttributesWithNavBar];
    }

    else
    {
      +[CNContactHeaderViewSizeAttributes staticEditingAttributes];
    }
  }

  else if (bar)
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

+ (id)makePhotoViewWithShouldAllowTakePhotoAction:(BOOL)action shouldAllowImageDrops:(BOOL)drops monogramOnly:(BOOL)only
{
  onlyCopy = only;
  dropsCopy = drops;
  actionCopy = action;
  v8 = +[CNUIContactsEnvironment currentEnvironment];
  v9 = objc_alloc(MEMORY[0x1E6996BB0]);
  inProcessContactStore = [v8 inProcessContactStore];
  defaultSchedulerProvider = [v8 defaultSchedulerProvider];
  v12 = [v9 initWithContactStore:inProcessContactStore schedulerProvider:defaultSchedulerProvider];

  [v12 setProhibitedSources:8];
  if (onlyCopy)
  {
    cachingMonogramRenderer = [v8 cachingMonogramRenderer];
  }

  else
  {
    v14 = MEMORY[0x1E6996B90];
    defaultSchedulerProvider2 = [v8 defaultSchedulerProvider];
    cachingMonogramRenderer = [v14 rendererWithLikenessResolver:v12 schedulerProvider:defaultSchedulerProvider2];
  }

  v16 = [CNContactPhotoView alloc];
  inProcessContactStore2 = [v8 inProcessContactStore];
  v18 = [(CNContactPhotoView *)v16 initWithFrame:actionCopy shouldAllowTakePhotoAction:1 threeDTouchEnabled:inProcessContactStore2 contactStore:dropsCopy allowsImageDrops:cachingMonogramRenderer imageRenderer:1 allowStaleRendering:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v18;
}

+ (id)contactHeaderViewWithContact:(id)contact shouldAllowTakePhotoAction:(BOOL)action showingNavBar:(BOOL)bar monogramOnly:(BOOL)only isOutOfProcess:(BOOL)process delegate:(id)delegate
{
  processCopy = process;
  onlyCopy = only;
  barCopy = bar;
  actionCopy = action;
  contactCopy = contact;
  delegateCopy = delegate;
  delegate = [sEditingContactHeaderView delegate];

  if (delegate)
  {
    v17 = [self alloc];
    v18 = [v17 initWithContact:contactCopy frame:actionCopy shouldAllowTakePhotoAction:delegateCopy delegate:barCopy showingNavBar:onlyCopy monogramOnly:processCopy isOutOfProcess:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
LABEL_3:
    v19 = v18;
    [v18 updateEditButtonTitle];
    goto LABEL_6;
  }

  if (!sEditingContactHeaderView)
  {
    v21 = [self alloc];
    v22 = [v21 initWithContact:contactCopy frame:actionCopy shouldAllowTakePhotoAction:delegateCopy delegate:barCopy showingNavBar:onlyCopy monogramOnly:processCopy isOutOfProcess:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v23 = sEditingContactHeaderView;
    sEditingContactHeaderView = v22;

    v18 = sEditingContactHeaderView;
    goto LABEL_3;
  }

  v19 = sEditingContactHeaderView;
  [v19 setDelegate:delegateCopy];
  [v19 prepareForReuse];
  [v19 updateForShowingNavBar:barCopy];
  [v19 updateWithNewContact:contactCopy];
LABEL_6:

  return v19;
}

@end