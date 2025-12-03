@interface CNMeCardSharingContactAvatarProvider
+ (id)log;
- (CGRect)cropRect;
- (CNMeCardSharingContactAvatarProvider)initWithContact:(id)contact;
- (CNMeCardSharingContactAvatarProvider)initWithContact:(id)contact renderer:(id)renderer;
- (void)generateAvatarImageOfSize:(CGSize)size imageHandler:(id)handler;
- (void)generatePosterAnimationControllerWithWindowScene:(id)scene imageHandler:(id)handler;
- (void)generatePosterImageWithWindowScene:(id)scene imageHandler:(id)handler;
@end

@implementation CNMeCardSharingContactAvatarProvider

- (void)generatePosterAnimationControllerWithWindowScene:(id)scene imageHandler:(id)handler
{
  handlerCopy = handler;
  sceneCopy = scene;
  contact = [(CNMeCardSharingContactAvatarProvider *)self contact];
  v9 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__CNMeCardSharingContactAvatarProvider_generatePosterAnimationControllerWithWindowScene_imageHandler___block_invoke;
  v11[3] = &unk_1E74E2E40;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [_TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController controllerFor:contact isRTL:v9 windowScene:sceneCopy shouldDefaultToCleanState:1 completion:v11];
}

- (void)generatePosterImageWithWindowScene:(id)scene imageHandler:(id)handler
{
  sceneCopy = scene;
  handlerCopy = handler;
  v7 = *MEMORY[0x1E6996540];
  wallpaper = [(CNContact *)self->_contact wallpaper];
  posterArchiveData = [wallpaper posterArchiveData];
  LOBYTE(v7) = (*(v7 + 16))(v7, posterArchiveData);

  if (v7)
  {
    [CNIncomingCallSnapshotViewController incomingCallPlaceholderSnapshotForContact:self->_contact windowScene:sceneCopy completionBlock:handlerCopy];
  }

  else
  {
    wallpaper2 = [(CNContact *)self->_contact wallpaper];
    posterArchiveData2 = [wallpaper2 posterArchiveData];
    [CNIncomingCallSnapshotViewController incomingCallSnapshotForPosterArchiveData:posterArchiveData2 contact:self->_contact includingCallButtons:1 windowScene:sceneCopy completionBlock:handlerCopy];
  }
}

- (void)generateAvatarImageOfSize:(CGSize)size imageHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v42 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  contact = self->_contact;
  if (!contact)
  {
    goto LABEL_12;
  }

  imageData = [(CNContact *)contact imageData];
  if (!imageData)
  {
    givenName = [(CNContact *)self->_contact givenName];
    if (givenName)
    {
      v30 = givenName;
      familyName = [(CNContact *)self->_contact familyName];

      if (familyName)
      {
        goto LABEL_4;
      }
    }

LABEL_12:
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_13;
  }

LABEL_4:
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v12 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:width style:height, v11];

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v15 = [featureFlags isFeatureEnabled:6];

  if (v15)
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_contact;
      *buf = 138412290;
      v41 = v17;
      _os_log_impl(&dword_199A75000, v16, OS_LOG_TYPE_DEFAULT, "Requesting to render contact %@", buf, 0xCu);
    }

    renderer = self->_renderer;
    v39 = self->_contact;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    schedulerProvider = [currentEnvironment2 schedulerProvider];
    immediateScheduler = [schedulerProvider immediateScheduler];
    v23 = MEMORY[0x1E69967A0];
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __79__CNMeCardSharingContactAvatarProvider_generateAvatarImageOfSize_imageHandler___block_invoke;
    v35 = &unk_1E74E2E18;
    selfCopy = self;
    v37 = handlerCopy;
    v24 = [v23 observerWithCompletionHandler:&v32];
    selfCopy = [(CNAvatarImageRenderer *)renderer renderAvatarsForContacts:v19 withBadges:0 scope:v12 placeholder:0 workScheduler:immediateScheduler observer:v24, v32, v33, v34, v35, selfCopy];
  }

  else
  {
    v26 = self->_renderer;
    v38 = self->_contact;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    v28 = [(CNAvatarImageRenderer *)v26 avatarImageForContacts:v27 scope:v12];

    (*(handlerCopy + 2))(handlerCopy, v28, 0);
  }

LABEL_13:
}

void __79__CNMeCardSharingContactAvatarProvider_generateAvatarImageOfSize_imageHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "Completed rendering avatars. results: %@, error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  v9 = [v5 lastObject];
  (*(v8 + 16))(v8, v9, v6);
}

- (CGRect)cropRect
{
  [(CNContact *)self->_contact cropRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CNMeCardSharingContactAvatarProvider)initWithContact:(id)contact renderer:(id)renderer
{
  contactCopy = contact;
  rendererCopy = renderer;
  v13.receiver = self;
  v13.super_class = CNMeCardSharingContactAvatarProvider;
  v9 = [(CNMeCardSharingContactAvatarProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, contact);
    objc_storeStrong(&v10->_renderer, renderer);
    v11 = v10;
  }

  return v10;
}

- (CNMeCardSharingContactAvatarProvider)initWithContact:(id)contact
{
  contactCopy = contact;
  v5 = +[CNAvatarImageRendererSettings defaultSettings];
  v6 = [[CNAvatarImageRenderer alloc] initWithSettings:v5];
  v7 = [(CNMeCardSharingContactAvatarProvider *)self initWithContact:contactCopy renderer:v6];

  return v7;
}

+ (id)log
{
  if (log_cn_once_token_1_19715 != -1)
  {
    dispatch_once(&log_cn_once_token_1_19715, &__block_literal_global_19716);
  }

  v3 = log_cn_once_object_1_19717;

  return v3;
}

uint64_t __43__CNMeCardSharingContactAvatarProvider_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNMeCardSharingContactAvatarProvider");
  v1 = log_cn_once_object_1_19717;
  log_cn_once_object_1_19717 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end