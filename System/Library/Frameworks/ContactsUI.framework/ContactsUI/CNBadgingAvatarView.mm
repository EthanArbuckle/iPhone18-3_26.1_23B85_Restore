@interface CNBadgingAvatarView
- (CNBadgingAvatarView)initWithAvatarViewController:(id)controller;
- (UIImage)badgeImage;
- (id)currentLikenessScope;
- (id)imageRenderer;
- (id)schedulerProvider;
- (void)dealloc;
- (void)layoutSubviews;
- (void)renderLikenessBadge:(id)badge;
- (void)renderMediaContextBadgeImage;
- (void)setBadgeImage:(id)image;
- (void)setBadgeStyleSettings:(id)settings;
- (void)setImage:(id)image forAccessoryViewType:(unint64_t)type;
- (void)setIsDoNotDisturb:(BOOL)disturb;
- (void)setIsMarkedForSyndication:(BOOL)syndication;
- (void)setMediaContextBadge:(id)badge;
- (void)updateBadgeCropStyle;
- (void)updateBadgeImageViewBackgroundColor;
- (void)updateBadgeImageViewContentMode;
- (void)updateBadgeImageViewFrame;
- (void)updateBadgeImageViewPosition;
- (void)updateBadgeTintColor;
@end

@implementation CNBadgingAvatarView

- (void)renderLikenessBadge:(id)badge
{
  badgeCopy = badge;
  currentLikenessScope = [(CNBadgingAvatarView *)self currentLikenessScope];
  if (currentLikenessScope)
  {
    imageRenderer = [(CNBadgingAvatarView *)self imageRenderer];
    schedulerProvider = [(CNBadgingAvatarView *)self schedulerProvider];
    backgroundScheduler = [schedulerProvider backgroundScheduler];
    v9 = [imageRenderer renderedLikenessForBadge:badgeCopy scope:currentLikenessScope workScheduler:backgroundScheduler];

    v23 = 0;
    v24 = &v23;
    v25 = 0x3042000000;
    v26 = __Block_byref_object_copy__48813;
    v27 = __Block_byref_object_dispose__48814;
    v28 = 0;
    objc_initWeak(&location, self);
    schedulerProvider2 = [(CNBadgingAvatarView *)self schedulerProvider];
    mainThreadScheduler = [schedulerProvider2 mainThreadScheduler];

    v12 = MEMORY[0x1E69967A0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __43__CNBadgingAvatarView_renderLikenessBadge___block_invoke;
    v17[3] = &unk_1E74E54A0;
    objc_copyWeak(&v21, &location);
    v13 = mainThreadScheduler;
    v18 = v13;
    v20 = &v23;
    v19 = badgeCopy;
    v14 = [v12 observerWithResultBlock:v17];
    v15 = [v9 subscribe:v14];
    [(CNBadgingAvatarView *)self setLikenessBadgeRendererToken:v15];

    likenessBadgeRendererToken = [(CNBadgingAvatarView *)self likenessBadgeRendererToken];
    objc_storeWeak(v24 + 5, likenessBadgeRendererToken);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v23, 8);
    objc_destroyWeak(&v28);
  }
}

void __43__CNBadgingAvatarView_renderLikenessBadge___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__CNBadgingAvatarView_renderLikenessBadge___block_invoke_2;
  v9[3] = &unk_1E74E5478;
  v9[4] = WeakRetained;
  v10 = v3;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v7 = v3;
  [v5 performBlock:v9];
}

void __43__CNBadgingAvatarView_renderLikenessBadge___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) likenessBadgeRendererToken];

  v3 = [*(a1 + 32) likenessBadgeRendererToken];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));

  if (v2)
  {
    v5 = v3 == WeakRetained;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) badgeType];

    [v6 setImage:v7 forAccessoryViewType:v8];
  }
}

- (void)renderMediaContextBadgeImage
{
  likenessBadgeRendererToken = [(CNBadgingAvatarView *)self likenessBadgeRendererToken];
  [likenessBadgeRendererToken cancel];

  [(CNBadgingAvatarView *)self setLikenessBadgeRendererToken:0];
  mediaContextBadge = [(CNBadgingAvatarView *)self mediaContextBadge];

  if (mediaContextBadge)
  {
    mediaContextBadge2 = [(CNBadgingAvatarView *)self mediaContextBadge];
    [(CNBadgingAvatarView *)self renderLikenessBadge:mediaContextBadge2];
  }

  else
  {
    mediaContextBadgeView = [(CNBadgingAvatarView *)self mediaContextBadgeView];
    [mediaContextBadgeView removeFromSuperview];

    badgeImage = [(CNBadgingAvatarView *)self badgeImage];

    if (badgeImage)
    {

      [(CNBadgingAvatarView *)self updateBadgeImageViewPosition];
    }
  }
}

- (void)setMediaContextBadge:(id)badge
{
  badgeCopy = badge;
  if (([badgeCopy isEqual:self->_mediaContextBadge] & 1) == 0)
  {
    objc_storeStrong(&self->_mediaContextBadge, badge);
    [(CNBadgingAvatarView *)self renderMediaContextBadgeImage];
  }
}

- (void)setIsDoNotDisturb:(BOOL)disturb
{
  if (self->_isDoNotDisturb != disturb)
  {
    self->_isDoNotDisturb = disturb;
    if (disturb)
    {
      v4 = [MEMORY[0x1E69DCAB8] cnui_symbolImageNamed:@"moon.fill" scale:-1 withColor:0 useFixedSize:1 compatibleWithTextStyle:*MEMORY[0x1E69DDD28]];
      [(CNBadgingAvatarView *)self setBadgeImage:v4];

      v5 = +[CNBadgingAvatarBadgeStyleSettings doNotDisturbBadgeSettings];
      [(CNBadgingAvatarView *)self setBadgeStyleSettings:v5];
    }

    else
    {

      [(CNBadgingAvatarView *)self setBadgeImage:0];
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
      [(CNBadgingAvatarView *)self setBadgeImage:v4];

      v5 = +[CNBadgingAvatarBadgeStyleSettings markedForSyndicationBadgeSettings];
      [(CNBadgingAvatarView *)self setBadgeStyleSettings:v5];
    }

    else
    {

      [(CNBadgingAvatarView *)self setBadgeImage:0];
    }
  }
}

- (void)updateBadgeImageViewPosition
{
  effectiveUserInterfaceLayoutDirection = [(CNBadgingAvatarView *)self effectiveUserInterfaceLayoutDirection];
  v5 = MEMORY[0x1E6996AB0];
  badgeImageView = [(CNBadgingAvatarView *)self badgeImageView];
  [badgeImageView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  avatarViewController = [(CNBadgingAvatarView *)self avatarViewController];
  view = [avatarViewController view];
  [view frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  badgeStyleSettings = [(CNBadgingAvatarView *)self badgeStyleSettings];
  cnuiBadgePosition = [badgeStyleSettings cnuiBadgePosition];
  mediaContextBadge = [(CNBadgingAvatarView *)self mediaContextBadge];
  if (mediaContextBadge)
  {
    mediaContextBadgeView = [(CNBadgingAvatarView *)self mediaContextBadgeView];
    [mediaContextBadgeView frame];
  }

  else
  {
    v28 = *MEMORY[0x1E695F058];
    v29 = *(MEMORY[0x1E695F058] + 8);
    v30 = *(MEMORY[0x1E695F058] + 16);
    v31 = *(MEMORY[0x1E695F058] + 24);
  }

  [v5 frameForBadgeWithFrame:cnuiBadgePosition onAvatarFrame:effectiveUserInterfaceLayoutDirection == 1 withPosition:v8 mediaContextFrame:v10 isRTL:{v12, v14, v18, v20, v22, v24, v28, v29, v30, v31}];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  badgeImageView2 = [(CNBadgingAvatarView *)self badgeImageView];
  [badgeImageView2 setFrame:{v33, v35, v37, v39}];

  if (mediaContextBadge)
  {
  }

  badgeImageView3 = [(CNBadgingAvatarView *)self badgeImageView];
  [badgeImageView3 setAutoresizingMask:18];

  badgeStyleSettings2 = [(CNBadgingAvatarView *)self badgeStyleSettings];
  position = [badgeStyleSettings2 position];

  if (position <= 3)
  {
    v44 = qword_199E43EE8[position];
    badgeImageView4 = [(CNBadgingAvatarView *)self badgeImageView];
    [badgeImageView4 setAutoresizingMask:{objc_msgSend(badgeImageView4, "autoresizingMask") | v44}];
  }
}

- (void)updateBadgeImageViewContentMode
{
  badgeStyleSettings = [(CNBadgingAvatarView *)self badgeStyleSettings];
  contentMode = [badgeStyleSettings contentMode];
  badgeImageView = [(CNBadgingAvatarView *)self badgeImageView];
  [badgeImageView setContentMode:contentMode];
}

- (void)updateBadgeImageViewBackgroundColor
{
  badgeStyleSettings = [(CNBadgingAvatarView *)self badgeStyleSettings];
  backgroundColor = [badgeStyleSettings backgroundColor];
  badgeImageView = [(CNBadgingAvatarView *)self badgeImageView];
  [badgeImageView setBackgroundColor:backgroundColor];
}

- (void)updateBadgeCropStyle
{
  v3 = MEMORY[0x1E6996AB0];
  badgeImageView = [(CNBadgingAvatarView *)self badgeImageView];
  layer = [badgeImageView layer];
  badgeStyleSettings = [(CNBadgingAvatarView *)self badgeStyleSettings];
  [v3 cropAvatarBadgeLayer:layer withCropStyle:{objc_msgSend(badgeStyleSettings, "cropStyle")}];
}

- (void)updateBadgeTintColor
{
  badgeStyleSettings = [(CNBadgingAvatarView *)self badgeStyleSettings];
  color = [badgeStyleSettings color];
  badgeImageView = [(CNBadgingAvatarView *)self badgeImageView];
  [badgeImageView setTintColor:color];
}

- (void)setBadgeStyleSettings:(id)settings
{
  settingsCopy = settings;
  if (![(CNBadgingAvatarBadgeStyleSettings *)self->_badgeStyleSettings isEqual:?])
  {
    objc_storeStrong(&self->_badgeStyleSettings, settings);
    badgeImage = [(CNBadgingAvatarView *)self badgeImage];

    if (badgeImage)
    {
      [(CNBadgingAvatarView *)self updateBadgeImageViewPosition];
      [(CNBadgingAvatarView *)self updateBadgeTintColor];
      [(CNBadgingAvatarView *)self updateBadgeCropStyle];
      [(CNBadgingAvatarView *)self updateBadgeImageViewBackgroundColor];
      [(CNBadgingAvatarView *)self updateBadgeImageViewContentMode];
    }
  }
}

- (void)setImage:(id)image forAccessoryViewType:(unint64_t)type
{
  imageCopy = image;
  if (type < 2)
  {
    badgeImageView = [(CNBadgingAvatarView *)self badgeImageView];

    if (!badgeImageView)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [(CNBadgingAvatarView *)self setBadgeImageView:v7];

      badgeImageView2 = [(CNBadgingAvatarView *)self badgeImageView];
      [badgeImageView2 setClipsToBounds:1];
    }

    badgeImageView3 = [(CNBadgingAvatarView *)self badgeImageView];
    mediaContextBadgeView = [(CNBadgingAvatarView *)self mediaContextBadgeView];

    badgeImageView4 = [(CNBadgingAvatarView *)self badgeImageView];
    if (mediaContextBadgeView)
    {
      mediaContextBadgeView2 = [(CNBadgingAvatarView *)self mediaContextBadgeView];
      [(CNBadgingAvatarView *)self insertSubview:badgeImageView4 aboveSubview:mediaContextBadgeView2];
LABEL_13:

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (type == 2)
  {
    mediaContextBadgeView3 = [(CNBadgingAvatarView *)self mediaContextBadgeView];

    if (!mediaContextBadgeView3)
    {
      v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [(CNBadgingAvatarView *)self setMediaContextBadgeView:v14];
    }

    badgeImageView3 = [(CNBadgingAvatarView *)self mediaContextBadgeView];
    badgeImageView5 = [(CNBadgingAvatarView *)self badgeImageView];

    badgeImageView4 = [(CNBadgingAvatarView *)self mediaContextBadgeView];
    if (badgeImageView5)
    {
      mediaContextBadgeView2 = [(CNBadgingAvatarView *)self badgeImageView];
      [(CNBadgingAvatarView *)self insertSubview:badgeImageView4 belowSubview:mediaContextBadgeView2];
      goto LABEL_13;
    }

LABEL_12:
    mediaContextBadgeView2 = [(CNBadgingAvatarView *)self avatarViewController];
    view = [mediaContextBadgeView2 view];
    [(CNBadgingAvatarView *)self insertSubview:badgeImageView4 aboveSubview:view];

    goto LABEL_13;
  }

  badgeImageView3 = 0;
LABEL_14:
  v17 = [(CNBadgingAvatarView *)self effectiveUserInterfaceLayoutDirection]== 1;
  v18 = MEMORY[0x1E6996AB0];
  avatarViewController = [(CNBadgingAvatarView *)self avatarViewController];
  view2 = [avatarViewController view];
  [view2 bounds];
  [v18 avatarBadgeRectForAvatarInRect:type badgeType:v17 isRTL:?];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [badgeImageView3 setImage:imageCopy];
  [badgeImageView3 setFrame:{v22, v24, v26, v28}];
  mediaContextBadge = [(CNBadgingAvatarView *)self mediaContextBadge];
  if (mediaContextBadge)
  {
    v30 = mediaContextBadge;
    badgeImage = [(CNBadgingAvatarView *)self badgeImage];

    if (badgeImage)
    {
      [(CNBadgingAvatarView *)self updateBadgeImageViewPosition];
    }
  }
}

- (void)updateBadgeImageViewFrame
{
  v3 = [(CNBadgingAvatarView *)self effectiveUserInterfaceLayoutDirection]== 1;
  v4 = MEMORY[0x1E6996AB0];
  avatarViewController = [(CNBadgingAvatarView *)self avatarViewController];
  view = [avatarViewController view];
  [view bounds];
  [v4 avatarBadgeRectForAvatarInRect:0 badgeType:v3 isRTL:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  badgeImageView = [(CNBadgingAvatarView *)self badgeImageView];
  [badgeImageView setFrame:{v8, v10, v12, v14}];

  [(CNBadgingAvatarView *)self updateBadgeImageViewPosition];
}

- (id)schedulerProvider
{
  objc_opt_class();
  avatarViewController = [(CNBadgingAvatarView *)self avatarViewController];
  view = [avatarViewController view];
  if (objc_opt_isKindOfClass())
  {
    v5 = view;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  schedulerProvider = [v6 schedulerProvider];

  return schedulerProvider;
}

- (id)imageRenderer
{
  objc_opt_class();
  avatarViewController = [(CNBadgingAvatarView *)self avatarViewController];
  view = [avatarViewController view];
  if (objc_opt_isKindOfClass())
  {
    v5 = view;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  imageRenderer = [v6 imageRenderer];

  return imageRenderer;
}

- (id)currentLikenessScope
{
  objc_opt_class();
  avatarViewController = [(CNBadgingAvatarView *)self avatarViewController];
  view = [avatarViewController view];
  if (objc_opt_isKindOfClass())
  {
    v5 = view;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  currentLikenessScope = [v6 currentLikenessScope];

  return currentLikenessScope;
}

- (UIImage)badgeImage
{
  badgeImageView = [(CNBadgingAvatarView *)self badgeImageView];
  image = [badgeImageView image];

  return image;
}

- (void)setBadgeImage:(id)image
{
  if (image)
  {
    [(CNBadgingAvatarView *)self setImage:image forAccessoryViewType:0];

    [(CNBadgingAvatarView *)self updateBadgeImageViewBackgroundColor];
  }

  else
  {
    badgeImageView = [(CNBadgingAvatarView *)self badgeImageView];
    [badgeImageView setImage:0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    badgeImageView2 = [(CNBadgingAvatarView *)self badgeImageView];
    [badgeImageView2 setBackgroundColor:clearColor];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CNBadgingAvatarView;
  [(CNBadgingAvatarView *)&v3 layoutSubviews];
  [(CNBadgingAvatarView *)self updateBadgeImageViewFrame];
  [(CNBadgingAvatarView *)self updateBadgeCropStyle];
}

- (void)dealloc
{
  likenessBadgeRendererToken = [(CNBadgingAvatarView *)self likenessBadgeRendererToken];
  [likenessBadgeRendererToken cancel];

  v4.receiver = self;
  v4.super_class = CNBadgingAvatarView;
  [(CNBadgingAvatarView *)&v4 dealloc];
}

- (CNBadgingAvatarView)initWithAvatarViewController:(id)controller
{
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = CNBadgingAvatarView;
  v6 = [(CNBadgingAvatarView *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avatarViewController, controller);
    [(CNBadgingAvatarView *)v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    view = [(CNAvatarViewController *)v7->_avatarViewController view];
    [view setFrame:{v9, v11, v13, v15}];

    view2 = [(CNAvatarViewController *)v7->_avatarViewController view];
    [view2 setAutoresizingMask:18];

    view3 = [(CNAvatarViewController *)v7->_avatarViewController view];
    [(CNBadgingAvatarView *)v7 addSubview:view3];

    v19 = v7;
  }

  return v7;
}

@end