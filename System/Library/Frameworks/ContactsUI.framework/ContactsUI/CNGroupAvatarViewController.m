@interface CNGroupAvatarViewController
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)contactsEqualToContactsFromGroup:(id)a3;
- (CALayer)sourceAvatarLayer;
- (CGSize)primaryAvatarSize;
- (CNGroupAvatarViewController)initWithGroup:(id)a3 avatarViewControllerSettings:(id)a4 avatarLayoutType:(unint64_t)a5;
- (UIImageView)destinationAvatarImageView;
- (id)avatarLayerForIdentifier:(id)a3;
- (id)avatarLayers;
- (void)groupIdentityDidUpdate:(id)a3 shouldAnimateRemovals:(BOOL)a4;
- (void)loadView;
- (void)performTransitionAnimationWithStartHandler:(id)a3 completion:(id)a4;
- (void)setBadgeImage:(id)a3;
- (void)setBadgeStyleSettings:(id)a3;
- (void)setIsDoNotDisturb:(BOOL)a3;
- (void)setIsMarkedForSyndication:(BOOL)a3;
- (void)setIsPerformingTransition:(BOOL)a3;
- (void)setMediaContextBadge:(id)a3;
@end

@implementation CNGroupAvatarViewController

- (void)performTransitionAnimationWithStartHandler:(id)a3 completion:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CNGroupAvatarViewController *)self group];
  v9 = [v8 numberOfContacts];

  if (v9 != 1)
  {
    v11 = CNUILogAvatarView();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(CNGroupAvatarViewController *)self group];
      *buf = 134217984;
      v33 = [v12 numberOfContacts];
      _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_INFO, "Skipping transition animation, not supported for groups of %ld", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v10 = [(CNGroupAvatarViewController *)self sharedProfileStateOracle];

  if (!v10)
  {
    v11 = CNUILogAvatarView();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_199A75000, v11, OS_LOG_TYPE_DEBUG, "Skipping transition animation, no state oracle", buf, 2u);
    }

    goto LABEL_10;
  }

  if (![(CNGroupAvatarViewController *)self isPerformingTransition])
  {
    v13 = objc_alloc_init(CNSharedProfileAnimationGenerator);
    v14 = [(CNGroupAvatarViewController *)self sharedProfileStateOracle];
    v15 = [v14 avatarViewAnimationTypeForEffectiveState];

    if (v6)
    {
      v6[2](v6, v15);
    }

    if (v15 == 2)
    {
      v27 = CNUILogAvatarView();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v27, OS_LOG_TYPE_DEFAULT, "No transition animation to perform", buf, 2u);
      }

      if (v7)
      {
        v7[2](v7, 2);
      }

      goto LABEL_28;
    }

    if (v15 == 1)
    {
      v22 = CNUILogAvatarView();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v22, OS_LOG_TYPE_DEFAULT, "Performing transition animation (peek-a-boo)", buf, 2u);
      }

      [(CNGroupAvatarViewController *)self setIsPerformingTransition:1];
      v23 = [(CNGroupAvatarViewController *)self sharedProfileStateOracle];
      v24 = [v23 pendingNickname];
      v25 = [(CNGroupAvatarViewController *)self sharedProfileStateOracle];
      v26 = [v25 contact];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __85__CNGroupAvatarViewController_performTransitionAnimationWithStartHandler_completion___block_invoke_37;
      v28[3] = &unk_1E74E6DD0;
      v28[4] = self;
      v29 = v7;
      [(CNSharedProfileAnimationGenerator *)v13 performPeekABooAnimationForAnimatingAvatarView:self pendingNickname:v24 contact:v26 completionHandler:v28];

      v21 = v29;
    }

    else
    {
      if (v15)
      {
LABEL_28:

        goto LABEL_29;
      }

      v16 = CNUILogAvatarView();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v16, OS_LOG_TYPE_DEFAULT, "Performing transition animation (coin flip)", buf, 2u);
      }

      [(CNGroupAvatarViewController *)self setIsPerformingTransition:1];
      v17 = [(CNGroupAvatarViewController *)self sharedProfileStateOracle];
      v18 = [v17 pendingNickname];
      v19 = [(CNGroupAvatarViewController *)self sharedProfileStateOracle];
      v20 = [v19 contact];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __85__CNGroupAvatarViewController_performTransitionAnimationWithStartHandler_completion___block_invoke;
      v30[3] = &unk_1E74E6DD0;
      v30[4] = self;
      v31 = v7;
      [(CNSharedProfileAnimationGenerator *)v13 performCoinFlipAnimationForAnimatingAvatarView:self pendingNickname:v18 contact:v20 completionHandler:v30];

      v21 = v31;
    }

    goto LABEL_28;
  }

  v11 = CNUILogAvatarView();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_DEFAULT, "Skipping transition animation, animation already in progress", buf, 2u);
  }

LABEL_10:

  if (v7)
  {
    v7[2](v7, 2);
  }

LABEL_29:
}

uint64_t __85__CNGroupAvatarViewController_performTransitionAnimationWithStartHandler_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsPerformingTransition:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __85__CNGroupAvatarViewController_performTransitionAnimationWithStartHandler_completion___block_invoke_37(uint64_t a1)
{
  [*(a1 + 32) setIsPerformingTransition:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setIsPerformingTransition:(BOOL)a3
{
  if (self->_isPerformingTransition != a3)
  {
    v4 = a3;
    self->_isPerformingTransition = a3;
    v5 = [(CNGroupAvatarViewController *)self avatarViewController];
    [v5 setIsPerformingTransition:v4];
  }
}

- (UIImageView)destinationAvatarImageView
{
  v2 = [(CNGroupAvatarViewController *)self avatarViewController];
  v3 = [v2 primaryAvatarAlternativeImageView];

  return v3;
}

- (CALayer)sourceAvatarLayer
{
  v2 = [(CNGroupAvatarViewController *)self avatarViewController];
  v3 = [v2 primaryAvatarLayer];

  return v3;
}

- (CGSize)primaryAvatarSize
{
  v2 = [(CNGroupAvatarViewController *)self avatarViewController];
  [v2 primaryAvatarSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setIsDoNotDisturb:(BOOL)a3
{
  if (self->_isDoNotDisturb != a3)
  {
    self->_isDoNotDisturb = a3;
    if (a3)
    {
      v4 = [MEMORY[0x1E69DCAB8] cnui_symbolImageNamed:@"moon.fill" scale:-1 withColor:0 useFixedSize:1 compatibleWithTextStyle:*MEMORY[0x1E69DDD28]];
      [(CNGroupAvatarViewController *)self setBadgeImage:v4];

      v5 = +[CNBadgingAvatarBadgeStyleSettings doNotDisturbBadgeSettings];
      [(CNGroupAvatarViewController *)self setBadgeStyleSettings:v5];
    }

    else
    {

      [(CNGroupAvatarViewController *)self setBadgeImage:0];
    }
  }
}

- (void)setIsMarkedForSyndication:(BOOL)a3
{
  if (self->_isMarkedForSyndication != a3)
  {
    self->_isMarkedForSyndication = a3;
    if (a3)
    {
      v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"star.circle.fill"];
      [(CNGroupAvatarViewController *)self setBadgeImage:v4];

      v5 = +[CNBadgingAvatarBadgeStyleSettings markedForSyndicationBadgeSettings];
      [(CNGroupAvatarViewController *)self setBadgeStyleSettings:v5];
    }

    else
    {

      [(CNGroupAvatarViewController *)self setBadgeImage:0];
    }
  }
}

- (void)setMediaContextBadge:(id)a3
{
  objc_storeStrong(&self->_mediaContextBadge, a3);
  v5 = a3;
  v6 = [(CNGroupAvatarViewController *)self avatarViewController];
  [v6 setMediaContextBadge:v5];
}

- (void)setBadgeStyleSettings:(id)a3
{
  objc_storeStrong(&self->_badgeStyleSettings, a3);
  v5 = a3;
  v6 = [(CNGroupAvatarViewController *)self avatarViewController];
  [v6 setBadgeStyleSettings:v5];
}

- (void)setBadgeImage:(id)a3
{
  objc_storeStrong(&self->_badgeImage, a3);
  v5 = a3;
  v6 = [(CNGroupAvatarViewController *)self avatarViewController];
  [v6 setBadgeImage:v5];
}

- (BOOL)contactsEqualToContactsFromGroup:(id)a3
{
  v4 = a3;
  v5 = [(CNGroupAvatarViewController *)self group];
  v6 = [v5 contacts];
  v7 = [v6 count];
  v8 = [v4 contacts];
  v9 = [v8 count];

  if (v7 == v9)
  {
    v10 = [(CNGroupAvatarViewController *)self group];
    v11 = [v10 contacts];
    v12 = [v4 contacts];
    v13 = [v11 _cn_zip:v12];

    v14 = [v13 _cn_all:&__block_literal_global_29_45174];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __64__CNGroupAvatarViewController_contactsEqualToContactsFromGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  v4 = [v2 second];

  v5 = [v3 isEqualIgnoringIdentifiers:v4];
  return v5;
}

- (void)groupIdentityDidUpdate:(id)a3 shouldAnimateRemovals:(BOOL)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [v8 groupPhoto];
  if (!v9)
  {
    v4 = [(CNGroupAvatarViewController *)self group];
    v5 = [v4 groupPhoto];
    if (!v5)
    {
      v13 = 0;
LABEL_6:

      goto LABEL_7;
    }
  }

  v10 = [v8 groupPhoto];
  v11 = [(CNGroupAvatarViewController *)self group];
  v12 = [v11 groupPhoto];
  v13 = [v10 isEqualToData:v12] ^ 1;

  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_7:

  v14 = [(CNGroupAvatarViewController *)self contactsEqualToContactsFromGroup:v8];
  v15 = [v8 mutableCopy];
  [(CNGroupAvatarViewController *)self setGroup:v15];

  v16 = [objc_opt_class() log];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if ((v13 & 1) != 0 || !v14)
  {
    if (v17)
    {
      v23 = [v8 contacts];
      v24 = [v23 count];
      v25 = [(CNGroupAvatarViewController *)self avatarViewController];
      v26 = [v25 containingCellView];
      *buf = 134218242;
      v32 = v24;
      v33 = 2114;
      v34 = v26;
      _os_log_impl(&dword_199A75000, v16, OS_LOG_TYPE_INFO, "Group identity did update. itemCount:%lu, containingCell:%{public}@", buf, 0x16u);
    }

    v27 = [[CNVisualIdentity alloc] initWithGroupIdentity:v8];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__CNGroupAvatarViewController_groupIdentityDidUpdate_shouldAnimateRemovals___block_invoke;
    v28[3] = &unk_1E74E5118;
    v28[4] = self;
    v29 = v27;
    v30 = a4;
    v22 = v27;
    [(CNGroupAvatarViewController *)self performTransitionAnimationWithCompletion:v28];
  }

  else
  {
    if (v17)
    {
      v18 = [v8 contacts];
      v19 = [v18 count];
      v20 = [(CNGroupAvatarViewController *)self avatarViewController];
      v21 = [v20 containingCellView];
      *buf = 134218242;
      v32 = v19;
      v33 = 2114;
      v34 = v21;
      _os_log_impl(&dword_199A75000, v16, OS_LOG_TYPE_INFO, "Skipping group identity update - no photo or contact changes. itemCount:%lu, containingCell:%{public}@", buf, 0x16u);
    }

    v22 = [(CNGroupAvatarViewController *)self avatarViewController];
    [(CNVisualIdentity *)v22 logSublayersContent];
  }
}

void __76__CNGroupAvatarViewController_groupIdentityDidUpdate_shouldAnimateRemovals___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) avatarViewController];
  [v2 visualIdentityDidUpdate:*(a1 + 40) shouldAnimateRemoval:*(a1 + 48)];
}

- (void)loadView
{
  v3 = [CNGroupAvatarContainerView alloc];
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v7 = [(CNGroupAvatarContainerView *)v3 initWithFrame:?];

  v5 = [(CNGroupAvatarViewController *)self avatarViewController];
  v6 = [v5 view];
  [(CNGroupAvatarContainerView *)v7 setUnderlyingContainerView:v6];

  [(CNGroupAvatarViewController *)self setView:v7];
}

- (id)avatarLayerForIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CNGroupAvatarViewController *)self avatarViewController];
  v6 = [v5 avatarLayoutManager];
  v7 = [v6 avatarLayerItems];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v8 = [v11 layer];
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)avatarLayers
{
  v2 = [(CNGroupAvatarViewController *)self avatarViewController];
  v3 = [v2 avatarLayoutManager];
  v4 = [v3 avatarLayerItems];
  v5 = [v4 _cn_map:&__block_literal_global_23_45183];

  return v5;
}

- (CNGroupAvatarViewController)initWithGroup:(id)a3 avatarViewControllerSettings:(id)a4 avatarLayoutType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v27.receiver = self;
  v27.super_class = CNGroupAvatarViewController;
  v10 = [(CNGroupAvatarViewController *)&v27 init];
  if (v10)
  {
    v11 = [v8 mutableCopy];
    group = v10->_group;
    v10->_group = v11;

    if (v9)
    {
      v13 = [CNAvatarImageRendererSettings alloc];
      v14 = [v9 likenessResolver];
      v15 = [v9 likenessRenderer];
      v16 = [v9 schedulerProvider];
      v17 = [(CNAvatarImageRendererSettings *)v13 initWithLikenessResolver:v14 likenessRenderer:v15 schedulerProvider:v16];
    }

    else
    {
      v17 = 0;
    }

    v18 = [CNVisualIdentityAvatarViewController alloc];
    v19 = [[CNVisualIdentity alloc] initWithGroupIdentity:v8];
    v20 = [(CNVisualIdentityAvatarViewController *)v18 initWithVisualIdentity:v19 primaryAvatarProvider:0 avatarImageRendererSettings:v17 avatarLayoutType:a5];
    avatarViewController = v10->_avatarViewController;
    v10->_avatarViewController = v20;

    v22 = [(CNVisualIdentityAvatarViewController *)v10->_avatarViewController view];
    [v22 setAutoresizingMask:18];

    v23 = [(CNGroupAvatarViewController *)v10 view];
    v24 = [(CNVisualIdentityAvatarViewController *)v10->_avatarViewController view];
    [v23 addSubview:v24];

    [(CNGroupAvatarViewController *)v10 addChildViewController:v10->_avatarViewController];
    [(CNVisualIdentityAvatarViewController *)v10->_avatarViewController didMoveToParentViewController:v10];
    v25 = v10;
  }

  return v10;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_2_45196 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_2_45196, &__block_literal_global_14_45197);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_2_45198;

  return v3;
}

void __56__CNGroupAvatarViewController_descriptorForRequiredKeys__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v1 = +[CNVisualIdentityAvatarViewController descriptorForRequiredKeys];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNGroupAvatarViewController descriptorForRequiredKeys]_block_invoke"];
  v4 = [v0 descriptorWithKeyDescriptors:v2 description:v3];
  v5 = descriptorForRequiredKeys_cn_once_object_2_45198;
  descriptorForRequiredKeys_cn_once_object_2_45198 = v4;
}

+ (id)log
{
  if (log_cn_once_token_1_45203 != -1)
  {
    dispatch_once(&log_cn_once_token_1_45203, &__block_literal_global_45204);
  }

  v3 = log_cn_once_object_1_45205;

  return v3;
}

uint64_t __34__CNGroupAvatarViewController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNGroupAvatarViewController");
  v1 = log_cn_once_object_1_45205;
  log_cn_once_object_1_45205 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end