@interface CNMeCardSharingContactAvatarProvider
+ (id)log;
- (CGRect)cropRect;
- (CNMeCardSharingContactAvatarProvider)initWithContact:(id)a3;
- (CNMeCardSharingContactAvatarProvider)initWithContact:(id)a3 renderer:(id)a4;
- (void)generateAvatarImageOfSize:(CGSize)a3 imageHandler:(id)a4;
- (void)generatePosterAnimationControllerWithWindowScene:(id)a3 imageHandler:(id)a4;
- (void)generatePosterImageWithWindowScene:(id)a3 imageHandler:(id)a4;
@end

@implementation CNMeCardSharingContactAvatarProvider

- (void)generatePosterAnimationControllerWithWindowScene:(id)a3 imageHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNMeCardSharingContactAvatarProvider *)self contact];
  v9 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__CNMeCardSharingContactAvatarProvider_generatePosterAnimationControllerWithWindowScene_imageHandler___block_invoke;
  v11[3] = &unk_1E74E2E40;
  v12 = v6;
  v10 = v6;
  [_TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController controllerFor:v8 isRTL:v9 windowScene:v7 shouldDefaultToCleanState:1 completion:v11];
}

- (void)generatePosterImageWithWindowScene:(id)a3 imageHandler:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E6996540];
  v8 = [(CNContact *)self->_contact wallpaper];
  v9 = [v8 posterArchiveData];
  LOBYTE(v7) = (*(v7 + 16))(v7, v9);

  if (v7)
  {
    [CNIncomingCallSnapshotViewController incomingCallPlaceholderSnapshotForContact:self->_contact windowScene:v12 completionBlock:v6];
  }

  else
  {
    v10 = [(CNContact *)self->_contact wallpaper];
    v11 = [v10 posterArchiveData];
    [CNIncomingCallSnapshotViewController incomingCallSnapshotForPosterArchiveData:v11 contact:self->_contact includingCallButtons:1 windowScene:v12 completionBlock:v6];
  }
}

- (void)generateAvatarImageOfSize:(CGSize)a3 imageHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v42 = *MEMORY[0x1E69E9840];
  v7 = a4;
  contact = self->_contact;
  if (!contact)
  {
    goto LABEL_12;
  }

  v9 = [(CNContact *)contact imageData];
  if (!v9)
  {
    v29 = [(CNContact *)self->_contact givenName];
    if (v29)
    {
      v30 = v29;
      v31 = [(CNContact *)self->_contact familyName];

      if (v31)
      {
        goto LABEL_4;
      }
    }

LABEL_12:
    (*(v7 + 2))(v7, 0, 0);
    goto LABEL_13;
  }

LABEL_4:
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  v12 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:width style:height, v11];

  v13 = [MEMORY[0x1E69966E8] currentEnvironment];
  v14 = [v13 featureFlags];
  v15 = [v14 isFeatureEnabled:6];

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
    v20 = [MEMORY[0x1E69966E8] currentEnvironment];
    v21 = [v20 schedulerProvider];
    v22 = [v21 immediateScheduler];
    v23 = MEMORY[0x1E69967A0];
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __79__CNMeCardSharingContactAvatarProvider_generateAvatarImageOfSize_imageHandler___block_invoke;
    v35 = &unk_1E74E2E18;
    v36 = self;
    v37 = v7;
    v24 = [v23 observerWithCompletionHandler:&v32];
    v25 = [(CNAvatarImageRenderer *)renderer renderAvatarsForContacts:v19 withBadges:0 scope:v12 placeholder:0 workScheduler:v22 observer:v24, v32, v33, v34, v35, v36];
  }

  else
  {
    v26 = self->_renderer;
    v38 = self->_contact;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    v28 = [(CNAvatarImageRenderer *)v26 avatarImageForContacts:v27 scope:v12];

    (*(v7 + 2))(v7, v28, 0);
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

- (CNMeCardSharingContactAvatarProvider)initWithContact:(id)a3 renderer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNMeCardSharingContactAvatarProvider;
  v9 = [(CNMeCardSharingContactAvatarProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, a3);
    objc_storeStrong(&v10->_renderer, a4);
    v11 = v10;
  }

  return v10;
}

- (CNMeCardSharingContactAvatarProvider)initWithContact:(id)a3
{
  v4 = a3;
  v5 = +[CNAvatarImageRendererSettings defaultSettings];
  v6 = [[CNAvatarImageRenderer alloc] initWithSettings:v5];
  v7 = [(CNMeCardSharingContactAvatarProvider *)self initWithContact:v4 renderer:v6];

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