@interface CNGroupAvatarViewController
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)contactsEqualToContactsFromGroup:(id)group;
- (CALayer)sourceAvatarLayer;
- (CGSize)primaryAvatarSize;
- (CNGroupAvatarViewController)initWithGroup:(id)group avatarViewControllerSettings:(id)settings avatarLayoutType:(unint64_t)type;
- (UIImageView)destinationAvatarImageView;
- (id)avatarLayerForIdentifier:(id)identifier;
- (id)avatarLayers;
- (void)groupIdentityDidUpdate:(id)update shouldAnimateRemovals:(BOOL)removals;
- (void)loadView;
- (void)performTransitionAnimationWithStartHandler:(id)handler completion:(id)completion;
- (void)setBadgeImage:(id)image;
- (void)setBadgeStyleSettings:(id)settings;
- (void)setIsDoNotDisturb:(BOOL)disturb;
- (void)setIsMarkedForSyndication:(BOOL)syndication;
- (void)setIsPerformingTransition:(BOOL)transition;
- (void)setMediaContextBadge:(id)badge;
@end

@implementation CNGroupAvatarViewController

- (void)performTransitionAnimationWithStartHandler:(id)handler completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  completionCopy = completion;
  group = [(CNGroupAvatarViewController *)self group];
  numberOfContacts = [group numberOfContacts];

  if (numberOfContacts != 1)
  {
    v11 = CNUILogAvatarView();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      group2 = [(CNGroupAvatarViewController *)self group];
      *buf = 134217984;
      numberOfContacts2 = [group2 numberOfContacts];
      _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_INFO, "Skipping transition animation, not supported for groups of %ld", buf, 0xCu);
    }

    goto LABEL_10;
  }

  sharedProfileStateOracle = [(CNGroupAvatarViewController *)self sharedProfileStateOracle];

  if (!sharedProfileStateOracle)
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
    sharedProfileStateOracle2 = [(CNGroupAvatarViewController *)self sharedProfileStateOracle];
    avatarViewAnimationTypeForEffectiveState = [sharedProfileStateOracle2 avatarViewAnimationTypeForEffectiveState];

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, avatarViewAnimationTypeForEffectiveState);
    }

    if (avatarViewAnimationTypeForEffectiveState == 2)
    {
      v27 = CNUILogAvatarView();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v27, OS_LOG_TYPE_DEFAULT, "No transition animation to perform", buf, 2u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 2);
      }

      goto LABEL_28;
    }

    if (avatarViewAnimationTypeForEffectiveState == 1)
    {
      v22 = CNUILogAvatarView();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v22, OS_LOG_TYPE_DEFAULT, "Performing transition animation (peek-a-boo)", buf, 2u);
      }

      [(CNGroupAvatarViewController *)self setIsPerformingTransition:1];
      sharedProfileStateOracle3 = [(CNGroupAvatarViewController *)self sharedProfileStateOracle];
      pendingNickname = [sharedProfileStateOracle3 pendingNickname];
      sharedProfileStateOracle4 = [(CNGroupAvatarViewController *)self sharedProfileStateOracle];
      contact = [sharedProfileStateOracle4 contact];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __85__CNGroupAvatarViewController_performTransitionAnimationWithStartHandler_completion___block_invoke_37;
      v28[3] = &unk_1E74E6DD0;
      v28[4] = self;
      v29 = completionCopy;
      [(CNSharedProfileAnimationGenerator *)v13 performPeekABooAnimationForAnimatingAvatarView:self pendingNickname:pendingNickname contact:contact completionHandler:v28];

      v21 = v29;
    }

    else
    {
      if (avatarViewAnimationTypeForEffectiveState)
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
      sharedProfileStateOracle5 = [(CNGroupAvatarViewController *)self sharedProfileStateOracle];
      pendingNickname2 = [sharedProfileStateOracle5 pendingNickname];
      sharedProfileStateOracle6 = [(CNGroupAvatarViewController *)self sharedProfileStateOracle];
      contact2 = [sharedProfileStateOracle6 contact];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __85__CNGroupAvatarViewController_performTransitionAnimationWithStartHandler_completion___block_invoke;
      v30[3] = &unk_1E74E6DD0;
      v30[4] = self;
      v31 = completionCopy;
      [(CNSharedProfileAnimationGenerator *)v13 performCoinFlipAnimationForAnimatingAvatarView:self pendingNickname:pendingNickname2 contact:contact2 completionHandler:v30];

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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 2);
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

- (void)setIsPerformingTransition:(BOOL)transition
{
  if (self->_isPerformingTransition != transition)
  {
    transitionCopy = transition;
    self->_isPerformingTransition = transition;
    avatarViewController = [(CNGroupAvatarViewController *)self avatarViewController];
    [avatarViewController setIsPerformingTransition:transitionCopy];
  }
}

- (UIImageView)destinationAvatarImageView
{
  avatarViewController = [(CNGroupAvatarViewController *)self avatarViewController];
  primaryAvatarAlternativeImageView = [avatarViewController primaryAvatarAlternativeImageView];

  return primaryAvatarAlternativeImageView;
}

- (CALayer)sourceAvatarLayer
{
  avatarViewController = [(CNGroupAvatarViewController *)self avatarViewController];
  primaryAvatarLayer = [avatarViewController primaryAvatarLayer];

  return primaryAvatarLayer;
}

- (CGSize)primaryAvatarSize
{
  avatarViewController = [(CNGroupAvatarViewController *)self avatarViewController];
  [avatarViewController primaryAvatarSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setIsDoNotDisturb:(BOOL)disturb
{
  if (self->_isDoNotDisturb != disturb)
  {
    self->_isDoNotDisturb = disturb;
    if (disturb)
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

- (void)setIsMarkedForSyndication:(BOOL)syndication
{
  if (self->_isMarkedForSyndication != syndication)
  {
    self->_isMarkedForSyndication = syndication;
    if (syndication)
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

- (void)setMediaContextBadge:(id)badge
{
  objc_storeStrong(&self->_mediaContextBadge, badge);
  badgeCopy = badge;
  avatarViewController = [(CNGroupAvatarViewController *)self avatarViewController];
  [avatarViewController setMediaContextBadge:badgeCopy];
}

- (void)setBadgeStyleSettings:(id)settings
{
  objc_storeStrong(&self->_badgeStyleSettings, settings);
  settingsCopy = settings;
  avatarViewController = [(CNGroupAvatarViewController *)self avatarViewController];
  [avatarViewController setBadgeStyleSettings:settingsCopy];
}

- (void)setBadgeImage:(id)image
{
  objc_storeStrong(&self->_badgeImage, image);
  imageCopy = image;
  avatarViewController = [(CNGroupAvatarViewController *)self avatarViewController];
  [avatarViewController setBadgeImage:imageCopy];
}

- (BOOL)contactsEqualToContactsFromGroup:(id)group
{
  groupCopy = group;
  group = [(CNGroupAvatarViewController *)self group];
  contacts = [group contacts];
  v7 = [contacts count];
  contacts2 = [groupCopy contacts];
  v9 = [contacts2 count];

  if (v7 == v9)
  {
    group2 = [(CNGroupAvatarViewController *)self group];
    contacts3 = [group2 contacts];
    contacts4 = [groupCopy contacts];
    v13 = [contacts3 _cn_zip:contacts4];

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

- (void)groupIdentityDidUpdate:(id)update shouldAnimateRemovals:(BOOL)removals
{
  v35 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  groupPhoto = [updateCopy groupPhoto];
  if (!groupPhoto)
  {
    group = [(CNGroupAvatarViewController *)self group];
    groupPhoto2 = [group groupPhoto];
    if (!groupPhoto2)
    {
      v13 = 0;
LABEL_6:

      goto LABEL_7;
    }
  }

  groupPhoto3 = [updateCopy groupPhoto];
  group2 = [(CNGroupAvatarViewController *)self group];
  groupPhoto4 = [group2 groupPhoto];
  v13 = [groupPhoto3 isEqualToData:groupPhoto4] ^ 1;

  if (!groupPhoto)
  {
    goto LABEL_6;
  }

LABEL_7:

  v14 = [(CNGroupAvatarViewController *)self contactsEqualToContactsFromGroup:updateCopy];
  v15 = [updateCopy mutableCopy];
  [(CNGroupAvatarViewController *)self setGroup:v15];

  v16 = [objc_opt_class() log];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
  if ((v13 & 1) != 0 || !v14)
  {
    if (v17)
    {
      contacts = [updateCopy contacts];
      v24 = [contacts count];
      avatarViewController = [(CNGroupAvatarViewController *)self avatarViewController];
      containingCellView = [avatarViewController containingCellView];
      *buf = 134218242;
      v32 = v24;
      v33 = 2114;
      v34 = containingCellView;
      _os_log_impl(&dword_199A75000, v16, OS_LOG_TYPE_INFO, "Group identity did update. itemCount:%lu, containingCell:%{public}@", buf, 0x16u);
    }

    v27 = [[CNVisualIdentity alloc] initWithGroupIdentity:updateCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __76__CNGroupAvatarViewController_groupIdentityDidUpdate_shouldAnimateRemovals___block_invoke;
    v28[3] = &unk_1E74E5118;
    v28[4] = self;
    v29 = v27;
    removalsCopy = removals;
    avatarViewController3 = v27;
    [(CNGroupAvatarViewController *)self performTransitionAnimationWithCompletion:v28];
  }

  else
  {
    if (v17)
    {
      contacts2 = [updateCopy contacts];
      v19 = [contacts2 count];
      avatarViewController2 = [(CNGroupAvatarViewController *)self avatarViewController];
      containingCellView2 = [avatarViewController2 containingCellView];
      *buf = 134218242;
      v32 = v19;
      v33 = 2114;
      v34 = containingCellView2;
      _os_log_impl(&dword_199A75000, v16, OS_LOG_TYPE_INFO, "Skipping group identity update - no photo or contact changes. itemCount:%lu, containingCell:%{public}@", buf, 0x16u);
    }

    avatarViewController3 = [(CNGroupAvatarViewController *)self avatarViewController];
    [(CNVisualIdentity *)avatarViewController3 logSublayersContent];
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
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v7 = [(CNGroupAvatarContainerView *)v3 initWithFrame:?];

  avatarViewController = [(CNGroupAvatarViewController *)self avatarViewController];
  view = [avatarViewController view];
  [(CNGroupAvatarContainerView *)v7 setUnderlyingContainerView:view];

  [(CNGroupAvatarViewController *)self setView:v7];
}

- (id)avatarLayerForIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  avatarViewController = [(CNGroupAvatarViewController *)self avatarViewController];
  avatarLayoutManager = [avatarViewController avatarLayoutManager];
  avatarLayerItems = [avatarLayoutManager avatarLayerItems];

  layer = [avatarLayerItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (layer)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != layer; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(avatarLayerItems);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [identifier isEqualToString:identifierCopy];

        if (v13)
        {
          layer = [v11 layer];
          goto LABEL_11;
        }
      }

      layer = [avatarLayerItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (layer)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return layer;
}

- (id)avatarLayers
{
  avatarViewController = [(CNGroupAvatarViewController *)self avatarViewController];
  avatarLayoutManager = [avatarViewController avatarLayoutManager];
  avatarLayerItems = [avatarLayoutManager avatarLayerItems];
  v5 = [avatarLayerItems _cn_map:&__block_literal_global_23_45183];

  return v5;
}

- (CNGroupAvatarViewController)initWithGroup:(id)group avatarViewControllerSettings:(id)settings avatarLayoutType:(unint64_t)type
{
  groupCopy = group;
  settingsCopy = settings;
  v27.receiver = self;
  v27.super_class = CNGroupAvatarViewController;
  v10 = [(CNGroupAvatarViewController *)&v27 init];
  if (v10)
  {
    v11 = [groupCopy mutableCopy];
    group = v10->_group;
    v10->_group = v11;

    if (settingsCopy)
    {
      v13 = [CNAvatarImageRendererSettings alloc];
      likenessResolver = [settingsCopy likenessResolver];
      likenessRenderer = [settingsCopy likenessRenderer];
      schedulerProvider = [settingsCopy schedulerProvider];
      v17 = [(CNAvatarImageRendererSettings *)v13 initWithLikenessResolver:likenessResolver likenessRenderer:likenessRenderer schedulerProvider:schedulerProvider];
    }

    else
    {
      v17 = 0;
    }

    v18 = [CNVisualIdentityAvatarViewController alloc];
    v19 = [[CNVisualIdentity alloc] initWithGroupIdentity:groupCopy];
    v20 = [(CNVisualIdentityAvatarViewController *)v18 initWithVisualIdentity:v19 primaryAvatarProvider:0 avatarImageRendererSettings:v17 avatarLayoutType:type];
    avatarViewController = v10->_avatarViewController;
    v10->_avatarViewController = v20;

    view = [(CNVisualIdentityAvatarViewController *)v10->_avatarViewController view];
    [view setAutoresizingMask:18];

    view2 = [(CNGroupAvatarViewController *)v10 view];
    view3 = [(CNVisualIdentityAvatarViewController *)v10->_avatarViewController view];
    [view2 addSubview:view3];

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