@interface CNBadgingAvatarView
- (CNBadgingAvatarView)initWithAvatarViewController:(id)a3;
- (UIImage)badgeImage;
- (id)currentLikenessScope;
- (id)imageRenderer;
- (id)schedulerProvider;
- (void)dealloc;
- (void)layoutSubviews;
- (void)renderLikenessBadge:(id)a3;
- (void)renderMediaContextBadgeImage;
- (void)setBadgeImage:(id)a3;
- (void)setBadgeStyleSettings:(id)a3;
- (void)setImage:(id)a3 forAccessoryViewType:(unint64_t)a4;
- (void)setIsDoNotDisturb:(BOOL)a3;
- (void)setIsMarkedForSyndication:(BOOL)a3;
- (void)setMediaContextBadge:(id)a3;
- (void)updateBadgeCropStyle;
- (void)updateBadgeImageViewBackgroundColor;
- (void)updateBadgeImageViewContentMode;
- (void)updateBadgeImageViewFrame;
- (void)updateBadgeImageViewPosition;
- (void)updateBadgeTintColor;
@end

@implementation CNBadgingAvatarView

- (void)renderLikenessBadge:(id)a3
{
  v4 = a3;
  v5 = [(CNBadgingAvatarView *)self currentLikenessScope];
  if (v5)
  {
    v6 = [(CNBadgingAvatarView *)self imageRenderer];
    v7 = [(CNBadgingAvatarView *)self schedulerProvider];
    v8 = [v7 backgroundScheduler];
    v9 = [v6 renderedLikenessForBadge:v4 scope:v5 workScheduler:v8];

    v23 = 0;
    v24 = &v23;
    v25 = 0x3042000000;
    v26 = __Block_byref_object_copy__48813;
    v27 = __Block_byref_object_dispose__48814;
    v28 = 0;
    objc_initWeak(&location, self);
    v10 = [(CNBadgingAvatarView *)self schedulerProvider];
    v11 = [v10 mainThreadScheduler];

    v12 = MEMORY[0x1E69967A0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __43__CNBadgingAvatarView_renderLikenessBadge___block_invoke;
    v17[3] = &unk_1E74E54A0;
    objc_copyWeak(&v21, &location);
    v13 = v11;
    v18 = v13;
    v20 = &v23;
    v19 = v4;
    v14 = [v12 observerWithResultBlock:v17];
    v15 = [v9 subscribe:v14];
    [(CNBadgingAvatarView *)self setLikenessBadgeRendererToken:v15];

    v16 = [(CNBadgingAvatarView *)self likenessBadgeRendererToken];
    objc_storeWeak(v24 + 5, v16);

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
  v3 = [(CNBadgingAvatarView *)self likenessBadgeRendererToken];
  [v3 cancel];

  [(CNBadgingAvatarView *)self setLikenessBadgeRendererToken:0];
  v4 = [(CNBadgingAvatarView *)self mediaContextBadge];

  if (v4)
  {
    v7 = [(CNBadgingAvatarView *)self mediaContextBadge];
    [(CNBadgingAvatarView *)self renderLikenessBadge:v7];
  }

  else
  {
    v5 = [(CNBadgingAvatarView *)self mediaContextBadgeView];
    [v5 removeFromSuperview];

    v6 = [(CNBadgingAvatarView *)self badgeImage];

    if (v6)
    {

      [(CNBadgingAvatarView *)self updateBadgeImageViewPosition];
    }
  }
}

- (void)setMediaContextBadge:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_mediaContextBadge] & 1) == 0)
  {
    objc_storeStrong(&self->_mediaContextBadge, a3);
    [(CNBadgingAvatarView *)self renderMediaContextBadgeImage];
  }
}

- (void)setIsDoNotDisturb:(BOOL)a3
{
  if (self->_isDoNotDisturb != a3)
  {
    self->_isDoNotDisturb = a3;
    if (a3)
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

- (void)setIsMarkedForSyndication:(BOOL)a3
{
  if (self->_isMarkedForSyndication != a3)
  {
    self->_isMarkedForSyndication = a3;
    if (a3)
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
  v4 = [(CNBadgingAvatarView *)self effectiveUserInterfaceLayoutDirection];
  v5 = MEMORY[0x1E6996AB0];
  v6 = [(CNBadgingAvatarView *)self badgeImageView];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(CNBadgingAvatarView *)self avatarViewController];
  v16 = [v15 view];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(CNBadgingAvatarView *)self badgeStyleSettings];
  v26 = [v25 cnuiBadgePosition];
  v27 = [(CNBadgingAvatarView *)self mediaContextBadge];
  if (v27)
  {
    v2 = [(CNBadgingAvatarView *)self mediaContextBadgeView];
    [v2 frame];
  }

  else
  {
    v28 = *MEMORY[0x1E695F058];
    v29 = *(MEMORY[0x1E695F058] + 8);
    v30 = *(MEMORY[0x1E695F058] + 16);
    v31 = *(MEMORY[0x1E695F058] + 24);
  }

  [v5 frameForBadgeWithFrame:v26 onAvatarFrame:v4 == 1 withPosition:v8 mediaContextFrame:v10 isRTL:{v12, v14, v18, v20, v22, v24, v28, v29, v30, v31}];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [(CNBadgingAvatarView *)self badgeImageView];
  [v40 setFrame:{v33, v35, v37, v39}];

  if (v27)
  {
  }

  v41 = [(CNBadgingAvatarView *)self badgeImageView];
  [v41 setAutoresizingMask:18];

  v42 = [(CNBadgingAvatarView *)self badgeStyleSettings];
  v43 = [v42 position];

  if (v43 <= 3)
  {
    v44 = qword_199E43EE8[v43];
    v45 = [(CNBadgingAvatarView *)self badgeImageView];
    [v45 setAutoresizingMask:{objc_msgSend(v45, "autoresizingMask") | v44}];
  }
}

- (void)updateBadgeImageViewContentMode
{
  v5 = [(CNBadgingAvatarView *)self badgeStyleSettings];
  v3 = [v5 contentMode];
  v4 = [(CNBadgingAvatarView *)self badgeImageView];
  [v4 setContentMode:v3];
}

- (void)updateBadgeImageViewBackgroundColor
{
  v5 = [(CNBadgingAvatarView *)self badgeStyleSettings];
  v3 = [v5 backgroundColor];
  v4 = [(CNBadgingAvatarView *)self badgeImageView];
  [v4 setBackgroundColor:v3];
}

- (void)updateBadgeCropStyle
{
  v3 = MEMORY[0x1E6996AB0];
  v6 = [(CNBadgingAvatarView *)self badgeImageView];
  v4 = [v6 layer];
  v5 = [(CNBadgingAvatarView *)self badgeStyleSettings];
  [v3 cropAvatarBadgeLayer:v4 withCropStyle:{objc_msgSend(v5, "cropStyle")}];
}

- (void)updateBadgeTintColor
{
  v5 = [(CNBadgingAvatarView *)self badgeStyleSettings];
  v3 = [v5 color];
  v4 = [(CNBadgingAvatarView *)self badgeImageView];
  [v4 setTintColor:v3];
}

- (void)setBadgeStyleSettings:(id)a3
{
  v6 = a3;
  if (![(CNBadgingAvatarBadgeStyleSettings *)self->_badgeStyleSettings isEqual:?])
  {
    objc_storeStrong(&self->_badgeStyleSettings, a3);
    v5 = [(CNBadgingAvatarView *)self badgeImage];

    if (v5)
    {
      [(CNBadgingAvatarView *)self updateBadgeImageViewPosition];
      [(CNBadgingAvatarView *)self updateBadgeTintColor];
      [(CNBadgingAvatarView *)self updateBadgeCropStyle];
      [(CNBadgingAvatarView *)self updateBadgeImageViewBackgroundColor];
      [(CNBadgingAvatarView *)self updateBadgeImageViewContentMode];
    }
  }
}

- (void)setImage:(id)a3 forAccessoryViewType:(unint64_t)a4
{
  v32 = a3;
  if (a4 < 2)
  {
    v6 = [(CNBadgingAvatarView *)self badgeImageView];

    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [(CNBadgingAvatarView *)self setBadgeImageView:v7];

      v8 = [(CNBadgingAvatarView *)self badgeImageView];
      [v8 setClipsToBounds:1];
    }

    v9 = [(CNBadgingAvatarView *)self badgeImageView];
    v10 = [(CNBadgingAvatarView *)self mediaContextBadgeView];

    v11 = [(CNBadgingAvatarView *)self badgeImageView];
    if (v10)
    {
      v12 = [(CNBadgingAvatarView *)self mediaContextBadgeView];
      [(CNBadgingAvatarView *)self insertSubview:v11 aboveSubview:v12];
LABEL_13:

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a4 == 2)
  {
    v13 = [(CNBadgingAvatarView *)self mediaContextBadgeView];

    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [(CNBadgingAvatarView *)self setMediaContextBadgeView:v14];
    }

    v9 = [(CNBadgingAvatarView *)self mediaContextBadgeView];
    v15 = [(CNBadgingAvatarView *)self badgeImageView];

    v11 = [(CNBadgingAvatarView *)self mediaContextBadgeView];
    if (v15)
    {
      v12 = [(CNBadgingAvatarView *)self badgeImageView];
      [(CNBadgingAvatarView *)self insertSubview:v11 belowSubview:v12];
      goto LABEL_13;
    }

LABEL_12:
    v12 = [(CNBadgingAvatarView *)self avatarViewController];
    v16 = [v12 view];
    [(CNBadgingAvatarView *)self insertSubview:v11 aboveSubview:v16];

    goto LABEL_13;
  }

  v9 = 0;
LABEL_14:
  v17 = [(CNBadgingAvatarView *)self effectiveUserInterfaceLayoutDirection]== 1;
  v18 = MEMORY[0x1E6996AB0];
  v19 = [(CNBadgingAvatarView *)self avatarViewController];
  v20 = [v19 view];
  [v20 bounds];
  [v18 avatarBadgeRectForAvatarInRect:a4 badgeType:v17 isRTL:?];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v9 setImage:v32];
  [v9 setFrame:{v22, v24, v26, v28}];
  v29 = [(CNBadgingAvatarView *)self mediaContextBadge];
  if (v29)
  {
    v30 = v29;
    v31 = [(CNBadgingAvatarView *)self badgeImage];

    if (v31)
    {
      [(CNBadgingAvatarView *)self updateBadgeImageViewPosition];
    }
  }
}

- (void)updateBadgeImageViewFrame
{
  v3 = [(CNBadgingAvatarView *)self effectiveUserInterfaceLayoutDirection]== 1;
  v4 = MEMORY[0x1E6996AB0];
  v5 = [(CNBadgingAvatarView *)self avatarViewController];
  v6 = [v5 view];
  [v6 bounds];
  [v4 avatarBadgeRectForAvatarInRect:0 badgeType:v3 isRTL:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(CNBadgingAvatarView *)self badgeImageView];
  [v15 setFrame:{v8, v10, v12, v14}];

  [(CNBadgingAvatarView *)self updateBadgeImageViewPosition];
}

- (id)schedulerProvider
{
  objc_opt_class();
  v3 = [(CNBadgingAvatarView *)self avatarViewController];
  v4 = [v3 view];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 schedulerProvider];

  return v7;
}

- (id)imageRenderer
{
  objc_opt_class();
  v3 = [(CNBadgingAvatarView *)self avatarViewController];
  v4 = [v3 view];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 imageRenderer];

  return v7;
}

- (id)currentLikenessScope
{
  objc_opt_class();
  v3 = [(CNBadgingAvatarView *)self avatarViewController];
  v4 = [v3 view];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 currentLikenessScope];

  return v7;
}

- (UIImage)badgeImage
{
  v2 = [(CNBadgingAvatarView *)self badgeImageView];
  v3 = [v2 image];

  return v3;
}

- (void)setBadgeImage:(id)a3
{
  if (a3)
  {
    [(CNBadgingAvatarView *)self setImage:a3 forAccessoryViewType:0];

    [(CNBadgingAvatarView *)self updateBadgeImageViewBackgroundColor];
  }

  else
  {
    v4 = [(CNBadgingAvatarView *)self badgeImageView];
    [v4 setImage:0];

    v6 = [MEMORY[0x1E69DC888] clearColor];
    v5 = [(CNBadgingAvatarView *)self badgeImageView];
    [v5 setBackgroundColor:v6];
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
  v3 = [(CNBadgingAvatarView *)self likenessBadgeRendererToken];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = CNBadgingAvatarView;
  [(CNBadgingAvatarView *)&v4 dealloc];
}

- (CNBadgingAvatarView)initWithAvatarViewController:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = CNBadgingAvatarView;
  v6 = [(CNBadgingAvatarView *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avatarViewController, a3);
    [(CNBadgingAvatarView *)v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(CNAvatarViewController *)v7->_avatarViewController view];
    [v16 setFrame:{v9, v11, v13, v15}];

    v17 = [(CNAvatarViewController *)v7->_avatarViewController view];
    [v17 setAutoresizingMask:18];

    v18 = [(CNAvatarViewController *)v7->_avatarViewController view];
    [(CNBadgingAvatarView *)v7 addSubview:v18];

    v19 = v7;
  }

  return v7;
}

@end