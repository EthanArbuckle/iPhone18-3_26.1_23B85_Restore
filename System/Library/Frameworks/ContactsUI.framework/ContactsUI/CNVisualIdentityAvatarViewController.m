@interface CNVisualIdentityAvatarViewController
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)shouldDisplayPrimaryAvatarImage;
- (CGRect)avatarFrameForFocusedAvatarInView:(id)a3;
- (CGSize)estimatedSizeThatFits:(CGSize)a3;
- (CGSize)previousSize;
- (CGSize)primaryAvatarSize;
- (CNVisualIdentityAvatarViewController)initWithVisualIdentity:(id)a3 primaryAvatarProvider:(id)a4 avatarImageRendererSettings:(id)a5;
- (CNVisualIdentityAvatarViewController)initWithVisualIdentity:(id)a3 primaryAvatarProvider:(id)a4 avatarImageRendererSettings:(id)a5 avatarLayoutType:(unint64_t)a6;
- (UIImage)badgeImage;
- (id)containingCellView;
- (id)layerForPrimaryAvatar;
- (id)primaryAvatarLayer;
- (int64_t)itemCount;
- (void)beginDropAppearance;
- (void)contactDidChange:(id)a3;
- (void)createPrimaryAvatarLayerIfNeeded;
- (void)dealloc;
- (void)endDropAppearance;
- (void)layoutAvatarsWithIdentifiers:(id)a3 shouldAnimateRemoval:(BOOL)a4;
- (void)layoutPrimaryAvatar;
- (void)loadView;
- (void)logSublayersContent;
- (void)removeAllSublayers;
- (void)removeBadgeTapGestureRecognizer;
- (void)setBadgeImage:(id)a3;
- (void)setBadgeStyleSettings:(id)a3;
- (void)setBadgeTarget:(id)a3 action:(SEL)a4;
- (void)setBadgeViewImage:(id)a3;
- (void)setIsPerformingTransition:(BOOL)a3;
- (void)setMediaContextBadge:(id)a3;
- (void)updateAvatarSublayersAndAddToView;
- (void)updateBadgeCropStyle;
- (void)updateBadgeImageViewBackgroundColor;
- (void)updateBadgeImageViewContentMode;
- (void)updateBadgeImageViewPosition;
- (void)updateBadgeStyling;
- (void)updateBadgeTintColor;
- (void)updateBadgeViewFrame;
- (void)updateContactChangesNotifierRegistration;
- (void)updateImageForLayerItem:(id)a3 atIndex:(int64_t)a4 includePlaceholder:(BOOL)a5 animated:(BOOL)a6;
- (void)updateImageForPrimaryAvatar;
- (void)updateMediaContextBadgeFrame;
- (void)updateMediaContextBadgeImage;
- (void)updatePrimaryAvatar;
- (void)updateViewForContact:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)visualIdentityDidUpdate:(id)a3 shouldAnimateRemoval:(BOOL)a4;
@end

@implementation CNVisualIdentityAvatarViewController

- (CGSize)previousSize
{
  width = self->_previousSize.width;
  height = self->_previousSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)primaryAvatarLayer
{
  v3 = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
  v4 = [v3 layer];

  if (![(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage])
  {
    v5 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    v6 = [v5 avatarLayerItems];
    v7 = [v6 firstObject];
    v8 = [v7 layer];

    v4 = v8;
  }

  return v4;
}

- (CGSize)estimatedSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CNVisualIdentityAvatarViewController *)self itemCount];
  if (v6 <= 0)
  {
    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v7 = v6;
    v8 = [(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage];
    v9 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    v10 = v9;
    if (v8)
    {
      [v9 avatarFrameInBounds:v7 forItemCount:{0.0, 0.0, width, height}];
    }

    else
    {
      [v9 adHocAvatarFrameInBounds:v7 forItemCount:{0.0, 0.0, width, height}];
    }

    v13 = v11;
    v14 = v12;
  }

  v15 = v13;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)primaryAvatarSize
{
  v2 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
  [v2 frame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)avatarFrameForFocusedAvatarInView:(id)a3
{
  v4 = a3;
  v5 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  [v5 avatarFrameForFocusedAvatarInView:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)visualIdentityDidUpdate:(id)a3 shouldAnimateRemoval:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  v7 = [v6 layoutType];

  [(CNVisualIdentityAvatarViewController *)self setVisualIdentity:v12];
  if (v7 == 3)
  {
    v8 = [v12 contacts];
    v9 = [v8 _cn_map:*MEMORY[0x1E695C408]];
    [(CNVisualIdentityAvatarViewController *)self layoutAvatarsWithIdentifiers:v9 shouldAnimateRemoval:v4];
  }

  else
  {
    v10 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

    if (v10)
    {
      v11 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];
      [v11 updatePrimaryAvatarForVisualIdentity:v12];
    }

    [(CNVisualIdentityAvatarViewController *)self layoutAvatars];
    if ([(CNVisualIdentityAvatarViewController *)self shouldUseBadgeButton])
    {
      [(CNVisualIdentityAvatarViewController *)self updateBadgeButtonFrame];
    }

    else
    {
      [(CNVisualIdentityAvatarViewController *)self updateMediaContextBadgeFrame];
      [(CNVisualIdentityAvatarViewController *)self updateBadgeViewFrame];
    }

    v8 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
    [v8 setImage:0];
  }
}

- (BOOL)shouldDisplayPrimaryAvatarImage
{
  v3 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

  if (v3)
  {
    v4 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];
    v5 = [v4 primaryAvatarShouldDisplay];
  }

  else
  {
    v4 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    v5 = [v4 hasImageDataAvailable];
  }

  v6 = v5;

  return v6;
}

- (void)endDropAppearance
{
  if ([(CNVisualIdentityAvatarViewController *)self usingDropAppearance])
  {
    [(CNVisualIdentityAvatarViewController *)self setUsingDropAppearance:0];

    [(CNVisualIdentityAvatarViewController *)self layoutAvatars];
  }
}

- (void)beginDropAppearance
{
  if (![(CNVisualIdentityAvatarViewController *)self usingDropAppearance]&& [(CNVisualIdentityAvatarViewController *)self itemCount]>= 2)
  {
    [(CNVisualIdentityAvatarViewController *)self setUsingDropAppearance:1];

    [(CNVisualIdentityAvatarViewController *)self layoutAvatars];
  }
}

- (id)layerForPrimaryAvatar
{
  v3 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    [(CNVisualIdentityAvatarViewController *)self createPrimaryAvatarLayerIfNeeded];
    v5 = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
    v4 = [v5 layer];
  }

  return v4;
}

- (int64_t)itemCount
{
  v3 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  v4 = [v3 maxAvatarCount];

  v5 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
  v6 = [v5 contacts];
  v7 = [v6 count];

  if (v4 >= v7)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

- (void)updateImageForLayerItem:(id)a3 atIndex:(int64_t)a4 includePlaceholder:(BOOL)a5 animated:(BOOL)a6
{
  v7 = a5;
  v56 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
  v12 = [v11 contacts];
  v13 = [v12 objectAtIndexedSubscript:a4];

  v46 = 0;
  v47 = &v46;
  v48 = 0x3042000000;
  v49 = __Block_byref_object_copy__16484;
  v50 = __Block_byref_object_dispose__16485;
  v51 = 0;
  v14 = [v10 layer];
  [v14 size];
  v16 = v15;
  v17 = [v10 layer];
  [v17 size];
  v19 = v18;

  v20 = v16;
  v21 = floorf(v20);
  v22 = v19;
  v23 = floorf(v22);
  if (*MEMORY[0x1E695F060] == v21 && *(MEMORY[0x1E695F060] + 8) == v23)
  {
    v33 = [objc_opt_class() log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [(CNVisualIdentityAvatarViewController *)self itemCount];
      v35 = [(CNVisualIdentityAvatarViewController *)self containingCellView];
      *buf = 134218242;
      v53 = v34;
      v54 = 2114;
      v55 = v35;
      _os_log_impl(&dword_199A75000, v33, OS_LOG_TYPE_INFO, "Skipping image update for layer with size zero, itemCount: %lu, containingCell:%{public}@", buf, 0x16u);
    }

    [(CNVisualIdentityAvatarViewController *)self logSublayersContent];
  }

  else
  {
    v25 = [objc_opt_class() log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [MEMORY[0x1E6996B80] publicFingerprintForContact:v13];
      *buf = 138543362;
      v53 = v26;
      _os_log_impl(&dword_199A75000, v25, OS_LOG_TYPE_INFO, "Fetching image for contact %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    objc_initWeak(&location, v10);
    v27 = [v13 identifier];
    [v10 setIdentifier:v27];

    v28 = [(CNVisualIdentityAvatarViewController *)self avatarProvider];
    v29 = [(CNVisualIdentityAvatarViewController *)self traitCollection];
    v30 = [v29 userInterfaceStyle];
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __100__CNVisualIdentityAvatarViewController_updateImageForLayerItem_atIndex_includePlaceholder_animated___block_invoke;
    v39 = &unk_1E74E2C30;
    objc_copyWeak(&v42, buf);
    objc_copyWeak(&v43, &location);
    v41 = &v46;
    v40 = v13;
    v44 = a6;
    v31 = [v28 avatarImageForContact:v40 withSize:v7 includePlaceholder:v30 userInterfaceStyle:&v36 imageHandler:{v21, v23}];
    [v10 setAvatarImageRendererToken:{v31, v36, v37, v38, v39}];

    v32 = [v10 avatarImageRendererToken];
    objc_storeWeak(v47 + 5, v32);

    objc_destroyWeak(&v43);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v46, 8);
  objc_destroyWeak(&v51);
}

void __100__CNVisualIdentityAvatarViewController_updateImageForLayerItem_atIndex_includePlaceholder_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __100__CNVisualIdentityAvatarViewController_updateImageForLayerItem_atIndex_includePlaceholder_animated___block_invoke_2;
  v6[3] = &unk_1E74E2C08;
  objc_copyWeak(&v10, (a1 + 48));
  objc_copyWeak(&v11, (a1 + 56));
  v4 = *(a1 + 32);
  v9 = *(a1 + 40);
  v7 = v4;
  v8 = v3;
  v12 = *(a1 + 64);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
}

void __100__CNVisualIdentityAvatarViewController_updateImageForLayerItem_atIndex_includePlaceholder_animated___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_loadWeakRetained((a1 + 64));
  v4 = [v3 avatarImageRendererToken];

  v5 = [v3 avatarImageRendererToken];
  v6 = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));

  if (v4)
  {
    v7 = v5 == v6;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v9 = [objc_opt_class() log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [MEMORY[0x1E6996B80] publicFingerprintForContact:*(a1 + 32)];
    [*(a1 + 40) size];
    v11 = NSStringFromSize(v30);
    v23 = 138543874;
    v24 = v10;
    v25 = 2114;
    v26 = v11;
    v27 = 1024;
    v28 = v8;
    _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_INFO, "Received image for contact %{public}@, image size:%{public}@, shouldRender:%d", &v23, 0x1Cu);
  }

  if (*(a1 + 40))
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v12 = [objc_opt_class() log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
  }

  if (v8)
  {
LABEL_15:
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v13 = *MEMORY[0x1E6979DE8];
    v14 = [v3 layer];
    [v14 setContentsGravity:v13];

    [*(a1 + 40) scale];
    v16 = v15;
    v17 = [v3 layer];
    [v17 setContentsScale:v16];

    v18 = [*(a1 + 40) CGImage];
    v19 = [v3 layer];
    [v19 setContents:v18];

    v20 = [v3 layer];
    [v20 setAllowsEdgeAntialiasing:1];

    [MEMORY[0x1E6979518] commit];
    if ([WeakRetained shouldDisplayPrimaryAvatarImage] && *(a1 + 72) == 1)
    {
      v21 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      [v21 setDuration:0.3];
      [v21 setFromValue:&unk_1F0D4B4C0];
      [v21 setToValue:&unk_1F0D4B4D8];
      [v21 setRemovedOnCompletion:1];
      v22 = [v3 layer];
      [v22 addAnimation:v21 forKey:0];
    }
  }

LABEL_18:
}

- (void)layoutPrimaryAvatar
{
  v3 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

  v23 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  v4 = [(CNVisualIdentityAvatarViewController *)self contentView];
  [v23 avatarFrameForFocusedAvatarInView:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v3)
  {
    v13 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];
    v14 = [v13 viewForPrimaryAvatar];
    [v14 setFrame:{v6, v8, v10, v12}];
  }

  else
  {
    v15 = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
    v16 = [v15 layer];
    [v16 setFrame:{v6, v8, v10, v12}];

    v17 = MEMORY[0x1E69DC728];
    v23 = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
    v4 = [v23 layer];
    [v4 frame];
    v19 = v18;
    v13 = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
    v14 = [v13 layer];
    [v14 frame];
    v20 = [v17 bezierPathWithOvalInRect:{0.0, 0.0, v19}];
    v21 = [v20 CGPath];
    v22 = [(CNVisualIdentityAvatarViewController *)self avatarClippingLayer];
    [v22 setPath:v21];
  }
}

- (void)updateImageForPrimaryAvatar
{
  v3 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

  if (!v3 && ![(CNVisualIdentityAvatarViewController *)self usingDropAppearance])
  {
    v4 = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
    v5 = [v4 layer];

    v6 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    v7 = [(CNVisualIdentityAvatarViewController *)self renderingQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__CNVisualIdentityAvatarViewController_updateImageForPrimaryAvatar__block_invoke;
    v10[3] = &unk_1E74E6EE8;
    v11 = v6;
    v12 = self;
    v13 = v5;
    v8 = v5;
    v9 = v6;
    [v7 performBlock:v10];
  }
}

void __67__CNVisualIdentityAvatarViewController_updateImageForPrimaryAvatar__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) avatarImage];
  v3 = [*(a1 + 40) callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CNVisualIdentityAvatarViewController_updateImageForPrimaryAvatar__block_invoke_2;
  v7[3] = &unk_1E74E6EE8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  [v3 performBlock:v7];
}

void __67__CNVisualIdentityAvatarViewController_updateImageForPrimaryAvatar__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) visualIdentity];

  if (v2 != v3)
  {
    v4 = [objc_opt_class() log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) visualIdentity];
      v14 = 134218240;
      v15 = v5;
      v16 = 2048;
      v17 = v6;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_INFO, "Refusing to update CNVisualIdentityAvatarViewController after renderingQueue rendered because CNVisualIdentity changed from %p to %p", &v14, 0x16u);
    }

LABEL_9:

    return;
  }

  v7 = [*(a1 + 40) visualIdentity];
  v8 = [v7 avatarImage];
  [*(a1 + 48) setContents:{objc_msgSend(v8, "CGImage")}];

  v9 = [objc_opt_class() log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 40) itemCount];
    v11 = [*(a1 + 40) containingCellView];
    v14 = 134218242;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_INFO, "Updating image for primary avatar, itemCount: %lu, containingCell:%{public}@", &v14, 0x16u);
  }

  v12 = [*(a1 + 40) visualIdentity];
  v13 = [v12 avatarImage];

  if (!v13)
  {
    v4 = [objc_opt_class() log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
    }

    goto LABEL_9;
  }
}

- (void)createPrimaryAvatarLayerIfNeeded
{
  v3 = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];

  if (!v3)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6979398]);
    v4 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    [v8 setZPosition:{(objc_msgSend(v4, "maxAvatarCount") + 1)}];

    [v8 setContentsGravity:*MEMORY[0x1E6979DF0]];
    v5 = [objc_alloc(MEMORY[0x1E6996AA8]) initWithLayer:v8];
    [(CNVisualIdentityAvatarViewController *)self setAvatarLayerItem:v5];

    v6 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(CNVisualIdentityAvatarViewController *)self setAvatarClippingLayer:v6];

    v7 = [(CNVisualIdentityAvatarViewController *)self avatarClippingLayer];
    [v8 setMask:v7];
  }
}

- (void)updatePrimaryAvatar
{
  if ([(CNVisualIdentityAvatarViewController *)self usingDropAppearance])
  {
    return;
  }

  v3 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

  if (v3)
  {
    v4 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];
    v5 = [v4 viewForPrimaryAvatar];

    v6 = [v5 superview];
    v7 = [(CNVisualIdentityAvatarViewController *)self view];

    if (v6 != v7)
    {
      v8 = [(CNVisualIdentityAvatarViewController *)self view];
      v9 = [(CNVisualIdentityAvatarViewController *)self contentView];
      [v8 insertSubview:v5 belowSubview:v9];
LABEL_7:
    }
  }

  else
  {
    v5 = [(CNVisualIdentityAvatarViewController *)self layerForPrimaryAvatar];
    v10 = [v5 superlayer];
    v11 = [(CNVisualIdentityAvatarViewController *)self view];
    v12 = [v11 layer];

    if (v10 != v12)
    {
      v8 = [(CNVisualIdentityAvatarViewController *)self contentView];
      v9 = [v8 layer];
      [v9 addSublayer:v5];
      goto LABEL_7;
    }
  }

  [(CNVisualIdentityAvatarViewController *)self updateImageForPrimaryAvatar];

  [(CNVisualIdentityAvatarViewController *)self layoutPrimaryAvatar];
}

- (void)updateAvatarSublayersAndAddToView
{
  v3 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  v4 = [v3 avatarLayerItems];
  v5 = [v4 count];

  v6 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  v7 = [v6 avatarLayerItems];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      v11 = [v10 avatarLayerItems];
      v12 = [v11 objectAtIndexedSubscript:v9];

      v13 = [v12 layer];
      v14 = [v13 superlayer];

      if (!v14)
      {
        v15 = [(CNVisualIdentityAvatarViewController *)self contentView];
        v16 = [v15 layer];
        v17 = [v12 layer];
        [v16 addSublayer:v17];
      }

      [(CNVisualIdentityAvatarViewController *)self updateImageForLayerItem:v12 atIndex:v9 includePlaceholder:v5 == 1 animated:v14 == 0];

      ++v9;
      v18 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      v19 = [v18 avatarLayerItems];
      v20 = [v19 count];
    }

    while (v9 < v20);
  }
}

- (void)layoutAvatarsWithIdentifiers:(id)a3 shouldAnimateRemoval:(BOOL)a4
{
  v4 = a4;
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage]|| [(CNVisualIdentityAvatarViewController *)self usingDropAppearance])
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(CNVisualIdentityAvatarViewController *)self itemCount];
      v9 = [(CNVisualIdentityAvatarViewController *)self containingCellView];
      v61 = 134218242;
      v62 = v8;
      v63 = 2114;
      v64 = v9;
      _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_INFO, "Laying out avatars with primary avatar image, itemCount: %lu, containingCell:%{public}@", &v61, 0x16u);
    }

    if ([(CNVisualIdentityAvatarViewController *)self itemCount]< 2)
    {
      [(CNVisualIdentityAvatarViewController *)self removeAllSublayers];
      [(CNVisualIdentityAvatarViewController *)self updatePrimaryAvatar];
    }

    else
    {
      v10 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      v11 = [(CNVisualIdentityAvatarViewController *)self itemCount];
      v12 = [(CNVisualIdentityAvatarViewController *)self contentView];
      [v10 updateAvatarLayersWithPrimaryAvatarForItemCount:v11 inView:v12];

      [(CNVisualIdentityAvatarViewController *)self updateAvatarSublayersAndAddToView];
      [(CNVisualIdentityAvatarViewController *)self updatePrimaryAvatar];
      v13 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];
      [v13 layoutPrimaryAvatar];
    }
  }

  else
  {
    v14 = [objc_opt_class() log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(CNVisualIdentityAvatarViewController *)self itemCount];
      v16 = [(CNVisualIdentityAvatarViewController *)self containingCellView];
      v61 = 134218242;
      v62 = v15;
      v63 = 2114;
      v64 = v16;
      _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_INFO, "Laying out avatars with no primary avatar image, itemCount: %lu, containingCell:%{public}@", &v61, 0x16u);
    }

    v17 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

    if (v17)
    {
      v18 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];
      v19 = [v18 viewForPrimaryAvatar];
      [v19 removeFromSuperview];
    }

    else
    {
      v20 = [(CNVisualIdentityAvatarViewController *)self layerForPrimaryAvatar];
      [v20 removeFromSuperlayer];

      v18 = [(CNVisualIdentityAvatarViewController *)self layerForPrimaryAvatar];
      [v18 setContents:0];
    }

    v21 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    v22 = [(CNVisualIdentityAvatarViewController *)self itemCount];
    v23 = [(CNVisualIdentityAvatarViewController *)self contentView];
    [v21 updateAvatarLayersForItemCount:v22 inView:v23 identifiers:v6 shouldAnimateRemoval:v4];

    [(CNVisualIdentityAvatarViewController *)self updateAvatarSublayersAndAddToView];
  }

  v24 = [(CNVisualIdentityAvatarViewController *)self itemCount];
  v25 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
  v26 = v25;
  if (v24 == 1)
  {

    if (!v26)
    {
      v27 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [(CNVisualIdentityAvatarViewController *)self setAvatarAlternativeImageView:v27];

      v28 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
      [v28 setContentMode:2];

      v29 = objc_alloc_init(MEMORY[0x1E69794A0]);
      [(CNVisualIdentityAvatarViewController *)self setAvatarAlternativeImageViewClippingLayer:v29];

      v30 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageViewClippingLayer];
      v31 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
      v32 = [v31 layer];
      [v32 setMask:v30];
    }

    v33 = [(CNVisualIdentityAvatarViewController *)self contentView];
    v34 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
    [v33 addSubview:v34];

    if ([(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage])
    {
      v35 = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
      v36 = [v35 layer];
      [v36 frame];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
    }

    else
    {
      v35 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      v36 = [v35 avatarLayerItems];
      v45 = [v36 firstObject];
      v46 = [v45 layer];
      [v46 frame];
      v38 = v47;
      v40 = v48;
      v42 = v49;
      v44 = v50;
    }

    v51 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
    [v51 setFrame:{v38, v40, v42, v44}];

    v52 = MEMORY[0x1E69DC728];
    v26 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
    v53 = [v26 layer];
    [v53 frame];
    v55 = v54;
    v56 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
    v57 = [v56 layer];
    [v57 frame];
    v58 = [v52 bezierPathWithOvalInRect:{0.0, 0.0, v55}];
    v59 = [v58 CGPath];
    v60 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageViewClippingLayer];
    [v60 setPath:v59];
  }

  else
  {
    [v25 removeFromSuperview];
  }
}

- (void)logSublayersContent
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(CNVisualIdentityAvatarViewController *)self contentView];
  v3 = [v2 layer];
  v4 = [v3 sublayers];
  v5 = [v4 _cn_map:&__block_literal_global_42];

  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_debug_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEBUG, "Sublayers content: %{public}@", &v7, 0xCu);
  }
}

id __59__CNVisualIdentityAvatarViewController_logSublayersContent__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  [v3 size];
  v4 = NSStringFromSize(v9);
  v5 = [v3 contents];

  v6 = [v2 stringWithFormat:@"Layer size:%@, contents:%@", v4, v5];

  return v6;
}

- (id)containingCellView
{
  v2 = [(CNVisualIdentityAvatarViewController *)self view];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (void)updateViewForContact:(id)a3
{
  v4 = a3;
  [(CNVisualIdentityAvatarViewController *)self setPendingViewUpdate:0];
  if ([(CNVisualIdentityAvatarViewController *)self itemCount]== 1)
  {
    v5 = [v4 imageData];
    v6 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    [v6 setImageData:v5];

    [v4 cropRect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    [v15 setCropRect:{v8, v10, v12, v14}];

    v16 = [v4 thumbnailImageData];
    v17 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    [v17 setThumbnailImageData:v16];

    v18 = [v4 fullscreenImageData];
    v19 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    [v19 setFullscreenImageData:v18];

    if ([(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage])
    {
      v20 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      v21 = [v20 avatarLayerItems];
      v22 = [v21 count];

      if (v22 == 1)
      {
        [(CNVisualIdentityAvatarViewController *)self removeAllSublayers];
        [(CNVisualIdentityAvatarViewController *)self updatePrimaryAvatar];
      }

      [(CNVisualIdentityAvatarViewController *)self updateImageForPrimaryAvatar];
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v24 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    v25 = [v24 avatarLayerItems];
    v26 = [v25 count];

    if (!v26)
    {
      goto LABEL_13;
    }

    v27 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    v28 = [v27 contacts];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __61__CNVisualIdentityAvatarViewController_updateViewForContact___block_invoke;
    v38[3] = &unk_1E74E7880;
    v39 = v4;
    v23 = [v28 _cn_indexOfFirstObjectPassingTest:v38];
  }

  v29 = [(CNVisualIdentityAvatarViewController *)self view];
  v30 = [v29 window];

  if (v30)
  {
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      v32 = [v31 avatarLayerItems];
      v33 = [v32 count];

      if (v23 < v33)
      {
        v34 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
        v35 = [v34 avatarLayerItems];
        v36 = [v35 objectAtIndexedSubscript:v23];

        [(CNVisualIdentityAvatarViewController *)self updateImageForLayerItem:v36 atIndex:v23 includePlaceholder:0 animated:0];
        v37 = [(CNVisualIdentityAvatarViewController *)self view];
        [v37 setNeedsLayout];
      }
    }
  }

LABEL_13:
}

uint64_t __61__CNVisualIdentityAvatarViewController_updateViewForContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (void)contactDidChange:(id)a3
{
  v4 = a3;
  if ([(CNVisualIdentityAvatarViewController *)self isPerformingTransition])
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__CNVisualIdentityAvatarViewController_contactDidChange___block_invoke;
    v5[3] = &unk_1E74E6D30;
    objc_copyWeak(&v7, &location);
    v6 = v4;
    [(CNVisualIdentityAvatarViewController *)self setPendingViewUpdate:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    [(CNVisualIdentityAvatarViewController *)self updateViewForContact:v4];
  }
}

void __57__CNVisualIdentityAvatarViewController_contactDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateViewForContact:*(a1 + 32)];
}

- (void)updateContactChangesNotifierRegistration
{
  v3 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
  v4 = [v3 contacts];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__CNVisualIdentityAvatarViewController_updateContactChangesNotifierRegistration__block_invoke;
  v5[3] = &unk_1E74E6AD0;
  v5[4] = self;
  [v4 _cn_each:v5];
}

void __80__CNVisualIdentityAvatarViewController_updateContactChangesNotifierRegistration__block_invoke(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[CNUIContactsEnvironment currentEnvironment];
  v5 = [v4 contactChangesNotifier];
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() descriptorForRequiredKeys];
  v10[0] = v7;
  v8 = +[CNVisualIdentity descriptorForImageKeys];
  v10[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [v5 registerObserver:v6 forContact:v3 keysToFetch:v9];
}

- (void)setIsPerformingTransition:(BOOL)a3
{
  if (self->_isPerformingTransition != a3)
  {
    self->_isPerformingTransition = a3;
    if (!a3)
    {
      v4 = [(CNVisualIdentityAvatarViewController *)self pendingViewUpdate];

      if (v4)
      {
        v5 = [(CNVisualIdentityAvatarViewController *)self pendingViewUpdate];
        v5[2]();
      }
    }
  }
}

- (void)updateMediaContextBadgeFrame
{
  v3 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];

  if (v3)
  {
    v4 = [(CNVisualIdentityAvatarViewController *)self contentView];
    v5 = [v4 effectiveUserInterfaceLayoutDirection];

    v6 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    v7 = [(CNVisualIdentityAvatarViewController *)self contentView];
    [v6 avatarFrameForFocusedAvatarInView:v7];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    if (![(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage])
    {
      v16 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      v17 = [(CNVisualIdentityAvatarViewController *)self contentView];
      [v16 adHocAvatarFrameInView:v17 forItemCount:{-[CNVisualIdentityAvatarViewController itemCount](self, "itemCount")}];
      v9 = v18;
      v13 = v19;

      if (v5 != 1)
      {
        v9 = v9 + v13 * 0.15;
      }
    }

    v20 = MEMORY[0x1E6996AB0];
    v30 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadge];
    [v20 avatarBadgeRectForAvatarInRect:objc_msgSend(v30 badgeType:"badgeType") isRTL:{v5 == 1, v9, v11, v13, v15}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
    [v29 setFrame:{v22, v24, v26, v28}];
  }
}

- (void)updateMediaContextBadgeImage
{
  v3 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadge];
  v4 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  [v4 setMediaContextBadge:v3];

  v5 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadge];

  v6 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
  v7 = v6;
  if (v5)
  {

    if (!v7)
    {
      v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(CNVisualIdentityAvatarViewController *)self setMediaContextBadgeView:v9];

      v10 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];

      v11 = [(CNVisualIdentityAvatarViewController *)self view];
      v12 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
      if (v10)
      {
        v13 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
        [v11 insertSubview:v12 belowSubview:v13];
      }

      else
      {
        [v11 addSubview:v12];
      }
    }

    [(CNVisualIdentityAvatarViewController *)self updateMediaContextBadgeFrame];
    v7 = [(CNVisualIdentityAvatarViewController *)self avatarProvider];
    v14 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadge];
    v15 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
    [v15 bounds];
    v18 = [v7 imageForAvatarAccessoryView:v14 withSize:{v16, v17}];
    v19 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
    [v19 setImage:v18];
  }

  else
  {
    [v6 setImage:0];
  }

  [(CNVisualIdentityAvatarViewController *)self layoutAvatars];

  [(CNVisualIdentityAvatarViewController *)self updateBadgeViewFrame];
}

- (void)setMediaContextBadge:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_mediaContextBadge] & 1) == 0)
  {
    objc_storeStrong(&self->_mediaContextBadge, a3);
    [(CNVisualIdentityAvatarViewController *)self updateMediaContextBadgeImage];
  }
}

- (UIImage)badgeImage
{
  v2 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  v3 = [v2 image];

  return v3;
}

- (void)updateBadgeViewFrame
{
  v3 = [(CNVisualIdentityAvatarViewController *)self view];
  v4 = [v3 effectiveUserInterfaceLayoutDirection] == 1;

  v5 = MEMORY[0x1E6996AB0];
  v6 = [(CNVisualIdentityAvatarViewController *)self view];
  [(CNVisualIdentityAvatarViewController *)self avatarFrameForFocusedAvatarInView:v6];
  [v5 avatarBadgeRectForAvatarInRect:1 badgeType:v4 isRTL:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [v15 setFrame:{v8, v10, v12, v14}];

  [(CNVisualIdentityAvatarViewController *)self updateBadgeImageViewPosition];
}

- (void)removeBadgeTapGestureRecognizer
{
  v3 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  v4 = [(CNVisualIdentityAvatarViewController *)self badgeTapGestureRecognizer];
  [v3 removeGestureRecognizer:v4];

  [(CNVisualIdentityAvatarViewController *)self setBadgeTapGestureRecognizer:0];
}

- (void)setBadgeTarget:(id)a3 action:(SEL)a4
{
  v6 = MEMORY[0x1E69DD060];
  v7 = a3;
  v10 = [[v6 alloc] initWithTarget:v7 action:a4];

  v8 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [v8 addGestureRecognizer:v10];

  v9 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [v9 setUserInteractionEnabled:1];

  [(CNVisualIdentityAvatarViewController *)self setBadgeTapGestureRecognizer:v10];
}

- (void)setBadgeViewImage:(id)a3
{
  v4 = a3;
  v5 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(CNVisualIdentityAvatarViewController *)self setBadgeImageView:v6];

    v7 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
    [v7 setClipsToBounds:1];
  }

  v8 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];

  v9 = [(CNVisualIdentityAvatarViewController *)self view];
  v10 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  if (v8)
  {
    v11 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
    [v9 insertSubview:v10 aboveSubview:v11];
  }

  else
  {
    [v9 addSubview:v10];
  }

  v12 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [v12 setImage:v4];

  [(CNVisualIdentityAvatarViewController *)self updateBadgeViewFrame];
}

- (void)setBadgeImage:(id)a3
{
  if (a3)
  {
    [(CNVisualIdentityAvatarViewController *)self setBadgeViewImage:?];

    [(CNVisualIdentityAvatarViewController *)self updateBadgeImageViewBackgroundColor];
  }

  else
  {
    v4 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
    [v4 setImage:0];

    v6 = [MEMORY[0x1E69DC888] clearColor];
    v5 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
    [v5 setBackgroundColor:v6];
  }
}

- (void)updateBadgeImageViewPosition
{
  v4 = [(CNVisualIdentityAvatarViewController *)self view];
  v5 = [v4 effectiveUserInterfaceLayoutDirection];

  LOBYTE(v4) = [(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage];
  v6 = [(CNVisualIdentityAvatarViewController *)self view];
  [(CNVisualIdentityAvatarViewController *)self avatarFrameForFocusedAvatarInView:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if ((v4 & 1) == 0 && [(CNVisualIdentityAvatarViewController *)self itemCount]>= 2)
  {
    v15 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    v16 = [(CNVisualIdentityAvatarViewController *)self contentView];
    [v15 adHocAvatarFrameInView:v16 forItemCount:{-[CNVisualIdentityAvatarViewController itemCount](self, "itemCount")}];
    v8 = v17;
    v12 = v18;
  }

  v19 = MEMORY[0x1E6996AB0];
  v44 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [v44 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [(CNVisualIdentityAvatarViewController *)self badgeStyleSettings];
  v29 = [v28 cnuiBadgePosition];
  v30 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadge];
  if (v30)
  {
    v2 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
    [v2 frame];
  }

  else
  {
    v31 = *MEMORY[0x1E695F058];
    v32 = *(MEMORY[0x1E695F058] + 8);
    v33 = *(MEMORY[0x1E695F058] + 16);
    v34 = *(MEMORY[0x1E695F058] + 24);
  }

  [v19 frameForBadgeWithFrame:v29 onAvatarFrame:v5 == 1 withPosition:v21 mediaContextFrame:v23 isRTL:{v25, v27, v8, v10, v12, v14, v31, v32, v33, v34}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [v43 setFrame:{v36, v38, v40, v42}];

  if (v30)
  {
  }
}

- (void)updateBadgeImageViewContentMode
{
  v5 = [(CNVisualIdentityAvatarViewController *)self badgeStyleSettings];
  v3 = [v5 contentMode];
  v4 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [v4 setContentMode:v3];
}

- (void)updateBadgeImageViewBackgroundColor
{
  v3 = [(CNVisualIdentityAvatarViewController *)self badgeImage];

  if (v3)
  {
    v6 = [(CNVisualIdentityAvatarViewController *)self badgeStyleSettings];
    v4 = [v6 backgroundColor];
    v5 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
    [v5 setBackgroundColor:v4];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] clearColor];
    v4 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
    [v4 setBackgroundColor:v6];
  }
}

- (void)updateBadgeCropStyle
{
  v3 = MEMORY[0x1E6996AB0];
  v6 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  v4 = [v6 layer];
  v5 = [(CNVisualIdentityAvatarViewController *)self badgeStyleSettings];
  [v3 cropAvatarBadgeLayer:v4 withCropStyle:{objc_msgSend(v5, "cropStyle")}];
}

- (void)updateBadgeTintColor
{
  v5 = [(CNVisualIdentityAvatarViewController *)self badgeStyleSettings];
  v3 = [v5 color];
  v4 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [v4 setTintColor:v3];
}

- (void)updateBadgeStyling
{
  [(CNVisualIdentityAvatarViewController *)self updateBadgeImageViewPosition];
  [(CNVisualIdentityAvatarViewController *)self updateBadgeTintColor];
  [(CNVisualIdentityAvatarViewController *)self updateBadgeCropStyle];
  [(CNVisualIdentityAvatarViewController *)self updateBadgeImageViewBackgroundColor];

  [(CNVisualIdentityAvatarViewController *)self updateBadgeImageViewContentMode];
}

- (void)setBadgeStyleSettings:(id)a3
{
  v6 = a3;
  if (![(CNBadgingAvatarBadgeStyleSettings *)self->_badgeStyleSettings isEqual:?])
  {
    objc_storeStrong(&self->_badgeStyleSettings, a3);
    v5 = [(CNVisualIdentityAvatarViewController *)self badgeImage];

    if (v5)
    {
      [(CNVisualIdentityAvatarViewController *)self updateBadgeStyling];
    }
  }
}

- (void)removeAllSublayers
{
  v3 = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
  v4 = [v3 layer];
  [v4 removeFromSuperlayer];

  v5 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  v6 = [v5 avatarLayerItems];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      v10 = [v9 avatarLayerItems];
      v11 = [v10 objectAtIndexedSubscript:v8];

      v12 = [v11 layer];
      [v12 removeFromSuperlayer];

      ++v8;
      v13 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      v14 = [v13 avatarLayerItems];
      v15 = [v14 count];
    }

    while (v8 < v15);
  }
}

- (void)viewDidLayoutSubviews
{
  v19 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CNVisualIdentityAvatarViewController;
  [(CNVisualIdentityAvatarViewController *)&v14 viewDidLayoutSubviews];
  v3 = [(CNVisualIdentityAvatarViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  [(CNVisualIdentityAvatarViewController *)self previousSize];
  if (v9 == v5 && v8 == v7)
  {
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(CNVisualIdentityAvatarViewController *)self itemCount];
      v13 = [(CNVisualIdentityAvatarViewController *)self containingCellView];
      *buf = 134218242;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_debug_impl(&dword_199A75000, v11, OS_LOG_TYPE_DEBUG, "Skipping layout - no change in view size, itemCount:%lu, containingCell:%{public}@", buf, 0x16u);
    }

    [(CNVisualIdentityAvatarViewController *)self logSublayersContent];
  }

  else
  {
    [(CNVisualIdentityAvatarViewController *)self setPreviousSize:v5, v7];
    [(CNVisualIdentityAvatarViewController *)self layoutAvatars];
    if ([(CNVisualIdentityAvatarViewController *)self shouldUseBadgeButton])
    {
      [(CNVisualIdentityAvatarViewController *)self updateBadgeButtonFrame];
    }

    else
    {
      [(CNVisualIdentityAvatarViewController *)self updateBadgeViewFrame];
      [(CNVisualIdentityAvatarViewController *)self updateBadgeStyling];
      [(CNVisualIdentityAvatarViewController *)self updateMediaContextBadgeFrame];
    }
  }
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = CNVisualIdentityAvatarViewController;
  [(CNVisualIdentityAvatarViewController *)&v11 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [(CNVisualIdentityAvatarViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  [(CNVisualIdentityAvatarViewController *)self setContentView:v5];

  v6 = [(CNVisualIdentityAvatarViewController *)self contentView];
  [v6 setAutoresizingMask:18];

  v7 = [MEMORY[0x1E69DC888] clearColor];
  v8 = [(CNVisualIdentityAvatarViewController *)self contentView];
  [v8 setBackgroundColor:v7];

  v9 = [(CNVisualIdentityAvatarViewController *)self view];
  v10 = [(CNVisualIdentityAvatarViewController *)self contentView];
  [v9 addSubview:v10];

  [(CNVisualIdentityAvatarViewController *)self updateContactChangesNotifierRegistration];
}

- (void)loadView
{
  v3 = [CNVisualIdentityAvatarContainerView alloc];
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v5 = [(CNVisualIdentityAvatarContainerView *)v3 initWithFrame:?];

  [(CNVisualIdentityAvatarContainerView *)v5 setDelegate:self];
  [(CNVisualIdentityAvatarViewController *)self setView:v5];
}

- (void)dealloc
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  v4 = [v3 contactChangesNotifier];
  [v4 unregisterObserver:self forContact:0];

  v5.receiver = self;
  v5.super_class = CNVisualIdentityAvatarViewController;
  [(CNVisualIdentityAvatarViewController *)&v5 dealloc];
}

- (CNVisualIdentityAvatarViewController)initWithVisualIdentity:(id)a3 primaryAvatarProvider:(id)a4 avatarImageRendererSettings:(id)a5 avatarLayoutType:(unint64_t)a6
{
  v7 = [(CNVisualIdentityAvatarViewController *)self initWithVisualIdentity:a3 primaryAvatarProvider:a4 avatarImageRendererSettings:a5];
  if (v7)
  {
    v8 = [[CNVisualIdentityAvatarLayoutManager alloc] initWithLayoutType:a6];
    avatarLayoutManager = v7->_avatarLayoutManager;
    v7->_avatarLayoutManager = v8;

    v10 = v7;
  }

  return v7;
}

- (CNVisualIdentityAvatarViewController)initWithVisualIdentity:(id)a3 primaryAvatarProvider:(id)a4 avatarImageRendererSettings:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = CNVisualIdentityAvatarViewController;
  v12 = [(CNVisualIdentityAvatarViewController *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_visualIdentity, a3);
    v14 = [[CNVisualIdentityContactAvatarProvider alloc] initWithSettings:v11];
    avatarProvider = v13->_avatarProvider;
    v13->_avatarProvider = v14;

    v16 = objc_alloc_init(CNVisualIdentityAvatarLayoutManager);
    avatarLayoutManager = v13->_avatarLayoutManager;
    v13->_avatarLayoutManager = v16;

    objc_storeStrong(&v13->_primaryAvatarProvider, a4);
    v18 = +[CNUIContactsEnvironment currentEnvironment];
    v19 = [v18 defaultSchedulerProvider];
    v20 = [v19 newSerialSchedulerWithName:@"com.apple.contactsui.visualIdentityAvatarView.renderingQueue"];
    renderingQueue = v13->_renderingQueue;
    v13->_renderingQueue = v20;

    v22 = [v19 mainThreadScheduler];
    callbackQueue = v13->_callbackQueue;
    v13->_callbackQueue = v22;

    v24 = v13;
  }

  return v13;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_2_16546 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_2_16546, &__block_literal_global_14);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_2_16547;

  return v3;
}

void __65__CNVisualIdentityAvatarViewController_descriptorForRequiredKeys__block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v1 = +[CNVisualIdentity descriptorForRequiredKeys];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNVisualIdentityAvatarViewController descriptorForRequiredKeys]_block_invoke"];
  v4 = [v0 descriptorWithKeyDescriptors:v2 description:v3];
  v5 = descriptorForRequiredKeys_cn_once_object_2_16547;
  descriptorForRequiredKeys_cn_once_object_2_16547 = v4;
}

+ (id)log
{
  if (log_cn_once_token_1_16549 != -1)
  {
    dispatch_once(&log_cn_once_token_1_16549, &__block_literal_global_16550);
  }

  v3 = log_cn_once_object_1_16551;

  return v3;
}

uint64_t __43__CNVisualIdentityAvatarViewController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNVisualIdentityAvatarViewController");
  v1 = log_cn_once_object_1_16551;
  log_cn_once_object_1_16551 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end