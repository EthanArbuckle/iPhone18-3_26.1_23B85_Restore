@interface CNVisualIdentityAvatarViewController
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)shouldDisplayPrimaryAvatarImage;
- (CGRect)avatarFrameForFocusedAvatarInView:(id)view;
- (CGSize)estimatedSizeThatFits:(CGSize)fits;
- (CGSize)previousSize;
- (CGSize)primaryAvatarSize;
- (CNVisualIdentityAvatarViewController)initWithVisualIdentity:(id)identity primaryAvatarProvider:(id)provider avatarImageRendererSettings:(id)settings;
- (CNVisualIdentityAvatarViewController)initWithVisualIdentity:(id)identity primaryAvatarProvider:(id)provider avatarImageRendererSettings:(id)settings avatarLayoutType:(unint64_t)type;
- (UIImage)badgeImage;
- (id)containingCellView;
- (id)layerForPrimaryAvatar;
- (id)primaryAvatarLayer;
- (int64_t)itemCount;
- (void)beginDropAppearance;
- (void)contactDidChange:(id)change;
- (void)createPrimaryAvatarLayerIfNeeded;
- (void)dealloc;
- (void)endDropAppearance;
- (void)layoutAvatarsWithIdentifiers:(id)identifiers shouldAnimateRemoval:(BOOL)removal;
- (void)layoutPrimaryAvatar;
- (void)loadView;
- (void)logSublayersContent;
- (void)removeAllSublayers;
- (void)removeBadgeTapGestureRecognizer;
- (void)setBadgeImage:(id)image;
- (void)setBadgeStyleSettings:(id)settings;
- (void)setBadgeTarget:(id)target action:(SEL)action;
- (void)setBadgeViewImage:(id)image;
- (void)setIsPerformingTransition:(BOOL)transition;
- (void)setMediaContextBadge:(id)badge;
- (void)updateAvatarSublayersAndAddToView;
- (void)updateBadgeCropStyle;
- (void)updateBadgeImageViewBackgroundColor;
- (void)updateBadgeImageViewContentMode;
- (void)updateBadgeImageViewPosition;
- (void)updateBadgeStyling;
- (void)updateBadgeTintColor;
- (void)updateBadgeViewFrame;
- (void)updateContactChangesNotifierRegistration;
- (void)updateImageForLayerItem:(id)item atIndex:(int64_t)index includePlaceholder:(BOOL)placeholder animated:(BOOL)animated;
- (void)updateImageForPrimaryAvatar;
- (void)updateMediaContextBadgeFrame;
- (void)updateMediaContextBadgeImage;
- (void)updatePrimaryAvatar;
- (void)updateViewForContact:(id)contact;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)visualIdentityDidUpdate:(id)update shouldAnimateRemoval:(BOOL)removal;
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
  avatarLayerItem = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
  layer = [avatarLayerItem layer];

  if (![(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage])
  {
    avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    avatarLayerItems = [avatarLayoutManager avatarLayerItems];
    firstObject = [avatarLayerItems firstObject];
    layer2 = [firstObject layer];

    layer = layer2;
  }

  return layer;
}

- (CGSize)estimatedSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  itemCount = [(CNVisualIdentityAvatarViewController *)self itemCount];
  if (itemCount <= 0)
  {
    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v7 = itemCount;
    shouldDisplayPrimaryAvatarImage = [(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage];
    avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    v10 = avatarLayoutManager;
    if (shouldDisplayPrimaryAvatarImage)
    {
      [avatarLayoutManager avatarFrameInBounds:v7 forItemCount:{0.0, 0.0, width, height}];
    }

    else
    {
      [avatarLayoutManager adHocAvatarFrameInBounds:v7 forItemCount:{0.0, 0.0, width, height}];
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
  avatarAlternativeImageView = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
  [avatarAlternativeImageView frame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)avatarFrameForFocusedAvatarInView:(id)view
{
  viewCopy = view;
  avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  [avatarLayoutManager avatarFrameForFocusedAvatarInView:viewCopy];
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

- (void)visualIdentityDidUpdate:(id)update shouldAnimateRemoval:(BOOL)removal
{
  removalCopy = removal;
  updateCopy = update;
  avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  layoutType = [avatarLayoutManager layoutType];

  [(CNVisualIdentityAvatarViewController *)self setVisualIdentity:updateCopy];
  if (layoutType == 3)
  {
    contacts = [updateCopy contacts];
    v9 = [contacts _cn_map:*MEMORY[0x1E695C408]];
    [(CNVisualIdentityAvatarViewController *)self layoutAvatarsWithIdentifiers:v9 shouldAnimateRemoval:removalCopy];
  }

  else
  {
    primaryAvatarProvider = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

    if (primaryAvatarProvider)
    {
      primaryAvatarProvider2 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];
      [primaryAvatarProvider2 updatePrimaryAvatarForVisualIdentity:updateCopy];
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

    contacts = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
    [contacts setImage:0];
  }
}

- (BOOL)shouldDisplayPrimaryAvatarImage
{
  primaryAvatarProvider = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

  if (primaryAvatarProvider)
  {
    primaryAvatarProvider2 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];
    primaryAvatarShouldDisplay = [primaryAvatarProvider2 primaryAvatarShouldDisplay];
  }

  else
  {
    primaryAvatarProvider2 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    primaryAvatarShouldDisplay = [primaryAvatarProvider2 hasImageDataAvailable];
  }

  v6 = primaryAvatarShouldDisplay;

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
  primaryAvatarProvider = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

  if (primaryAvatarProvider)
  {
    layer = 0;
  }

  else
  {
    [(CNVisualIdentityAvatarViewController *)self createPrimaryAvatarLayerIfNeeded];
    avatarLayerItem = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
    layer = [avatarLayerItem layer];
  }

  return layer;
}

- (int64_t)itemCount
{
  avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  maxAvatarCount = [avatarLayoutManager maxAvatarCount];

  visualIdentity = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
  contacts = [visualIdentity contacts];
  v7 = [contacts count];

  if (maxAvatarCount >= v7)
  {
    return v7;
  }

  else
  {
    return maxAvatarCount;
  }
}

- (void)updateImageForLayerItem:(id)item atIndex:(int64_t)index includePlaceholder:(BOOL)placeholder animated:(BOOL)animated
{
  placeholderCopy = placeholder;
  v56 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  visualIdentity = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
  contacts = [visualIdentity contacts];
  v13 = [contacts objectAtIndexedSubscript:index];

  v46 = 0;
  v47 = &v46;
  v48 = 0x3042000000;
  v49 = __Block_byref_object_copy__16484;
  v50 = __Block_byref_object_dispose__16485;
  v51 = 0;
  layer = [itemCopy layer];
  [layer size];
  v16 = v15;
  layer2 = [itemCopy layer];
  [layer2 size];
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
      itemCount = [(CNVisualIdentityAvatarViewController *)self itemCount];
      containingCellView = [(CNVisualIdentityAvatarViewController *)self containingCellView];
      *buf = 134218242;
      v53 = itemCount;
      v54 = 2114;
      v55 = containingCellView;
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
    objc_initWeak(&location, itemCopy);
    identifier = [v13 identifier];
    [itemCopy setIdentifier:identifier];

    avatarProvider = [(CNVisualIdentityAvatarViewController *)self avatarProvider];
    traitCollection = [(CNVisualIdentityAvatarViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __100__CNVisualIdentityAvatarViewController_updateImageForLayerItem_atIndex_includePlaceholder_animated___block_invoke;
    v39 = &unk_1E74E2C30;
    objc_copyWeak(&v42, buf);
    objc_copyWeak(&v43, &location);
    v41 = &v46;
    v40 = v13;
    animatedCopy = animated;
    v31 = [avatarProvider avatarImageForContact:v40 withSize:placeholderCopy includePlaceholder:userInterfaceStyle userInterfaceStyle:&v36 imageHandler:{v21, v23}];
    [itemCopy setAvatarImageRendererToken:{v31, v36, v37, v38, v39}];

    avatarImageRendererToken = [itemCopy avatarImageRendererToken];
    objc_storeWeak(v47 + 5, avatarImageRendererToken);

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
  primaryAvatarProvider = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

  avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  contentView = [(CNVisualIdentityAvatarViewController *)self contentView];
  [avatarLayoutManager avatarFrameForFocusedAvatarInView:contentView];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (primaryAvatarProvider)
  {
    primaryAvatarProvider2 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];
    viewForPrimaryAvatar = [primaryAvatarProvider2 viewForPrimaryAvatar];
    [viewForPrimaryAvatar setFrame:{v6, v8, v10, v12}];
  }

  else
  {
    avatarLayerItem = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
    layer = [avatarLayerItem layer];
    [layer setFrame:{v6, v8, v10, v12}];

    v17 = MEMORY[0x1E69DC728];
    avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
    contentView = [avatarLayoutManager layer];
    [contentView frame];
    v19 = v18;
    primaryAvatarProvider2 = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
    viewForPrimaryAvatar = [primaryAvatarProvider2 layer];
    [viewForPrimaryAvatar frame];
    v20 = [v17 bezierPathWithOvalInRect:{0.0, 0.0, v19}];
    cGPath = [v20 CGPath];
    avatarClippingLayer = [(CNVisualIdentityAvatarViewController *)self avatarClippingLayer];
    [avatarClippingLayer setPath:cGPath];
  }
}

- (void)updateImageForPrimaryAvatar
{
  primaryAvatarProvider = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

  if (!primaryAvatarProvider && ![(CNVisualIdentityAvatarViewController *)self usingDropAppearance])
  {
    avatarLayerItem = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
    layer = [avatarLayerItem layer];

    visualIdentity = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    renderingQueue = [(CNVisualIdentityAvatarViewController *)self renderingQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__CNVisualIdentityAvatarViewController_updateImageForPrimaryAvatar__block_invoke;
    v10[3] = &unk_1E74E6EE8;
    v11 = visualIdentity;
    selfCopy = self;
    v13 = layer;
    v8 = layer;
    v9 = visualIdentity;
    [renderingQueue performBlock:v10];
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
  avatarLayerItem = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];

  if (!avatarLayerItem)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6979398]);
    avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    [v8 setZPosition:{(objc_msgSend(avatarLayoutManager, "maxAvatarCount") + 1)}];

    [v8 setContentsGravity:*MEMORY[0x1E6979DF0]];
    v5 = [objc_alloc(MEMORY[0x1E6996AA8]) initWithLayer:v8];
    [(CNVisualIdentityAvatarViewController *)self setAvatarLayerItem:v5];

    v6 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(CNVisualIdentityAvatarViewController *)self setAvatarClippingLayer:v6];

    avatarClippingLayer = [(CNVisualIdentityAvatarViewController *)self avatarClippingLayer];
    [v8 setMask:avatarClippingLayer];
  }
}

- (void)updatePrimaryAvatar
{
  if ([(CNVisualIdentityAvatarViewController *)self usingDropAppearance])
  {
    return;
  }

  primaryAvatarProvider = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

  if (primaryAvatarProvider)
  {
    primaryAvatarProvider2 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];
    viewForPrimaryAvatar = [primaryAvatarProvider2 viewForPrimaryAvatar];

    superview = [viewForPrimaryAvatar superview];
    view = [(CNVisualIdentityAvatarViewController *)self view];

    if (superview != view)
    {
      view2 = [(CNVisualIdentityAvatarViewController *)self view];
      contentView = [(CNVisualIdentityAvatarViewController *)self contentView];
      [view2 insertSubview:viewForPrimaryAvatar belowSubview:contentView];
LABEL_7:
    }
  }

  else
  {
    viewForPrimaryAvatar = [(CNVisualIdentityAvatarViewController *)self layerForPrimaryAvatar];
    superlayer = [viewForPrimaryAvatar superlayer];
    view3 = [(CNVisualIdentityAvatarViewController *)self view];
    layer = [view3 layer];

    if (superlayer != layer)
    {
      view2 = [(CNVisualIdentityAvatarViewController *)self contentView];
      contentView = [view2 layer];
      [contentView addSublayer:viewForPrimaryAvatar];
      goto LABEL_7;
    }
  }

  [(CNVisualIdentityAvatarViewController *)self updateImageForPrimaryAvatar];

  [(CNVisualIdentityAvatarViewController *)self layoutPrimaryAvatar];
}

- (void)updateAvatarSublayersAndAddToView
{
  avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  avatarLayerItems = [avatarLayoutManager avatarLayerItems];
  v5 = [avatarLayerItems count];

  avatarLayoutManager2 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  avatarLayerItems2 = [avatarLayoutManager2 avatarLayerItems];
  v8 = [avatarLayerItems2 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      avatarLayoutManager3 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      avatarLayerItems3 = [avatarLayoutManager3 avatarLayerItems];
      v12 = [avatarLayerItems3 objectAtIndexedSubscript:v9];

      layer = [v12 layer];
      superlayer = [layer superlayer];

      if (!superlayer)
      {
        contentView = [(CNVisualIdentityAvatarViewController *)self contentView];
        layer2 = [contentView layer];
        layer3 = [v12 layer];
        [layer2 addSublayer:layer3];
      }

      [(CNVisualIdentityAvatarViewController *)self updateImageForLayerItem:v12 atIndex:v9 includePlaceholder:v5 == 1 animated:superlayer == 0];

      ++v9;
      avatarLayoutManager4 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      avatarLayerItems4 = [avatarLayoutManager4 avatarLayerItems];
      v20 = [avatarLayerItems4 count];
    }

    while (v9 < v20);
  }
}

- (void)layoutAvatarsWithIdentifiers:(id)identifiers shouldAnimateRemoval:(BOOL)removal
{
  removalCopy = removal;
  v65 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage]|| [(CNVisualIdentityAvatarViewController *)self usingDropAppearance])
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      itemCount = [(CNVisualIdentityAvatarViewController *)self itemCount];
      containingCellView = [(CNVisualIdentityAvatarViewController *)self containingCellView];
      v61 = 134218242;
      v62 = itemCount;
      v63 = 2114;
      v64 = containingCellView;
      _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_INFO, "Laying out avatars with primary avatar image, itemCount: %lu, containingCell:%{public}@", &v61, 0x16u);
    }

    if ([(CNVisualIdentityAvatarViewController *)self itemCount]< 2)
    {
      [(CNVisualIdentityAvatarViewController *)self removeAllSublayers];
      [(CNVisualIdentityAvatarViewController *)self updatePrimaryAvatar];
    }

    else
    {
      avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      itemCount2 = [(CNVisualIdentityAvatarViewController *)self itemCount];
      contentView = [(CNVisualIdentityAvatarViewController *)self contentView];
      [avatarLayoutManager updateAvatarLayersWithPrimaryAvatarForItemCount:itemCount2 inView:contentView];

      [(CNVisualIdentityAvatarViewController *)self updateAvatarSublayersAndAddToView];
      [(CNVisualIdentityAvatarViewController *)self updatePrimaryAvatar];
      primaryAvatarProvider = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];
      [primaryAvatarProvider layoutPrimaryAvatar];
    }
  }

  else
  {
    v14 = [objc_opt_class() log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      itemCount3 = [(CNVisualIdentityAvatarViewController *)self itemCount];
      containingCellView2 = [(CNVisualIdentityAvatarViewController *)self containingCellView];
      v61 = 134218242;
      v62 = itemCount3;
      v63 = 2114;
      v64 = containingCellView2;
      _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_INFO, "Laying out avatars with no primary avatar image, itemCount: %lu, containingCell:%{public}@", &v61, 0x16u);
    }

    primaryAvatarProvider2 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];

    if (primaryAvatarProvider2)
    {
      primaryAvatarProvider3 = [(CNVisualIdentityAvatarViewController *)self primaryAvatarProvider];
      viewForPrimaryAvatar = [primaryAvatarProvider3 viewForPrimaryAvatar];
      [viewForPrimaryAvatar removeFromSuperview];
    }

    else
    {
      layerForPrimaryAvatar = [(CNVisualIdentityAvatarViewController *)self layerForPrimaryAvatar];
      [layerForPrimaryAvatar removeFromSuperlayer];

      primaryAvatarProvider3 = [(CNVisualIdentityAvatarViewController *)self layerForPrimaryAvatar];
      [primaryAvatarProvider3 setContents:0];
    }

    avatarLayoutManager2 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    itemCount4 = [(CNVisualIdentityAvatarViewController *)self itemCount];
    contentView2 = [(CNVisualIdentityAvatarViewController *)self contentView];
    [avatarLayoutManager2 updateAvatarLayersForItemCount:itemCount4 inView:contentView2 identifiers:identifiersCopy shouldAnimateRemoval:removalCopy];

    [(CNVisualIdentityAvatarViewController *)self updateAvatarSublayersAndAddToView];
  }

  itemCount5 = [(CNVisualIdentityAvatarViewController *)self itemCount];
  avatarAlternativeImageView = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
  avatarAlternativeImageView6 = avatarAlternativeImageView;
  if (itemCount5 == 1)
  {

    if (!avatarAlternativeImageView6)
    {
      v27 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [(CNVisualIdentityAvatarViewController *)self setAvatarAlternativeImageView:v27];

      avatarAlternativeImageView2 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
      [avatarAlternativeImageView2 setContentMode:2];

      v29 = objc_alloc_init(MEMORY[0x1E69794A0]);
      [(CNVisualIdentityAvatarViewController *)self setAvatarAlternativeImageViewClippingLayer:v29];

      avatarAlternativeImageViewClippingLayer = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageViewClippingLayer];
      avatarAlternativeImageView3 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
      layer = [avatarAlternativeImageView3 layer];
      [layer setMask:avatarAlternativeImageViewClippingLayer];
    }

    contentView3 = [(CNVisualIdentityAvatarViewController *)self contentView];
    avatarAlternativeImageView4 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
    [contentView3 addSubview:avatarAlternativeImageView4];

    if ([(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage])
    {
      avatarLayerItem = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
      layer2 = [avatarLayerItem layer];
      [layer2 frame];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
    }

    else
    {
      avatarLayerItem = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      layer2 = [avatarLayerItem avatarLayerItems];
      firstObject = [layer2 firstObject];
      layer3 = [firstObject layer];
      [layer3 frame];
      v38 = v47;
      v40 = v48;
      v42 = v49;
      v44 = v50;
    }

    avatarAlternativeImageView5 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
    [avatarAlternativeImageView5 setFrame:{v38, v40, v42, v44}];

    v52 = MEMORY[0x1E69DC728];
    avatarAlternativeImageView6 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
    layer4 = [avatarAlternativeImageView6 layer];
    [layer4 frame];
    v55 = v54;
    avatarAlternativeImageView7 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageView];
    layer5 = [avatarAlternativeImageView7 layer];
    [layer5 frame];
    v58 = [v52 bezierPathWithOvalInRect:{0.0, 0.0, v55}];
    cGPath = [v58 CGPath];
    avatarAlternativeImageViewClippingLayer2 = [(CNVisualIdentityAvatarViewController *)self avatarAlternativeImageViewClippingLayer];
    [avatarAlternativeImageViewClippingLayer2 setPath:cGPath];
  }

  else
  {
    [avatarAlternativeImageView removeFromSuperview];
  }
}

- (void)logSublayersContent
{
  v9 = *MEMORY[0x1E69E9840];
  contentView = [(CNVisualIdentityAvatarViewController *)self contentView];
  layer = [contentView layer];
  sublayers = [layer sublayers];
  v5 = [sublayers _cn_map:&__block_literal_global_42];

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
  view = [(CNVisualIdentityAvatarViewController *)self view];
  if (view)
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

      superview = [view superview];

      view = superview;
    }

    while (superview);
  }

  return view;
}

- (void)updateViewForContact:(id)contact
{
  contactCopy = contact;
  [(CNVisualIdentityAvatarViewController *)self setPendingViewUpdate:0];
  if ([(CNVisualIdentityAvatarViewController *)self itemCount]== 1)
  {
    imageData = [contactCopy imageData];
    visualIdentity = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    [visualIdentity setImageData:imageData];

    [contactCopy cropRect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    visualIdentity2 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    [visualIdentity2 setCropRect:{v8, v10, v12, v14}];

    thumbnailImageData = [contactCopy thumbnailImageData];
    visualIdentity3 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    [visualIdentity3 setThumbnailImageData:thumbnailImageData];

    fullscreenImageData = [contactCopy fullscreenImageData];
    visualIdentity4 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    [visualIdentity4 setFullscreenImageData:fullscreenImageData];

    if ([(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage])
    {
      avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      avatarLayerItems = [avatarLayoutManager avatarLayerItems];
      v22 = [avatarLayerItems count];

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
    avatarLayoutManager2 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    avatarLayerItems2 = [avatarLayoutManager2 avatarLayerItems];
    v26 = [avatarLayerItems2 count];

    if (!v26)
    {
      goto LABEL_13;
    }

    visualIdentity5 = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
    contacts = [visualIdentity5 contacts];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __61__CNVisualIdentityAvatarViewController_updateViewForContact___block_invoke;
    v38[3] = &unk_1E74E7880;
    v39 = contactCopy;
    v23 = [contacts _cn_indexOfFirstObjectPassingTest:v38];
  }

  view = [(CNVisualIdentityAvatarViewController *)self view];
  window = [view window];

  if (window)
  {
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      avatarLayoutManager3 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      avatarLayerItems3 = [avatarLayoutManager3 avatarLayerItems];
      v33 = [avatarLayerItems3 count];

      if (v23 < v33)
      {
        avatarLayoutManager4 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
        avatarLayerItems4 = [avatarLayoutManager4 avatarLayerItems];
        v36 = [avatarLayerItems4 objectAtIndexedSubscript:v23];

        [(CNVisualIdentityAvatarViewController *)self updateImageForLayerItem:v36 atIndex:v23 includePlaceholder:0 animated:0];
        view2 = [(CNVisualIdentityAvatarViewController *)self view];
        [view2 setNeedsLayout];
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

- (void)contactDidChange:(id)change
{
  changeCopy = change;
  if ([(CNVisualIdentityAvatarViewController *)self isPerformingTransition])
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__CNVisualIdentityAvatarViewController_contactDidChange___block_invoke;
    v5[3] = &unk_1E74E6D30;
    objc_copyWeak(&v7, &location);
    v6 = changeCopy;
    [(CNVisualIdentityAvatarViewController *)self setPendingViewUpdate:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    [(CNVisualIdentityAvatarViewController *)self updateViewForContact:changeCopy];
  }
}

void __57__CNVisualIdentityAvatarViewController_contactDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained updateViewForContact:*(a1 + 32)];
}

- (void)updateContactChangesNotifierRegistration
{
  visualIdentity = [(CNVisualIdentityAvatarViewController *)self visualIdentity];
  contacts = [visualIdentity contacts];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__CNVisualIdentityAvatarViewController_updateContactChangesNotifierRegistration__block_invoke;
  v5[3] = &unk_1E74E6AD0;
  v5[4] = self;
  [contacts _cn_each:v5];
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

- (void)setIsPerformingTransition:(BOOL)transition
{
  if (self->_isPerformingTransition != transition)
  {
    self->_isPerformingTransition = transition;
    if (!transition)
    {
      pendingViewUpdate = [(CNVisualIdentityAvatarViewController *)self pendingViewUpdate];

      if (pendingViewUpdate)
      {
        pendingViewUpdate2 = [(CNVisualIdentityAvatarViewController *)self pendingViewUpdate];
        pendingViewUpdate2[2]();
      }
    }
  }
}

- (void)updateMediaContextBadgeFrame
{
  mediaContextBadgeView = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];

  if (mediaContextBadgeView)
  {
    contentView = [(CNVisualIdentityAvatarViewController *)self contentView];
    effectiveUserInterfaceLayoutDirection = [contentView effectiveUserInterfaceLayoutDirection];

    avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    contentView2 = [(CNVisualIdentityAvatarViewController *)self contentView];
    [avatarLayoutManager avatarFrameForFocusedAvatarInView:contentView2];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    if (![(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage])
    {
      avatarLayoutManager2 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      contentView3 = [(CNVisualIdentityAvatarViewController *)self contentView];
      [avatarLayoutManager2 adHocAvatarFrameInView:contentView3 forItemCount:{-[CNVisualIdentityAvatarViewController itemCount](self, "itemCount")}];
      v9 = v18;
      v13 = v19;

      if (effectiveUserInterfaceLayoutDirection != 1)
      {
        v9 = v9 + v13 * 0.15;
      }
    }

    v20 = MEMORY[0x1E6996AB0];
    mediaContextBadge = [(CNVisualIdentityAvatarViewController *)self mediaContextBadge];
    [v20 avatarBadgeRectForAvatarInRect:objc_msgSend(mediaContextBadge badgeType:"badgeType") isRTL:{effectiveUserInterfaceLayoutDirection == 1, v9, v11, v13, v15}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    mediaContextBadgeView2 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
    [mediaContextBadgeView2 setFrame:{v22, v24, v26, v28}];
  }
}

- (void)updateMediaContextBadgeImage
{
  mediaContextBadge = [(CNVisualIdentityAvatarViewController *)self mediaContextBadge];
  avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  [avatarLayoutManager setMediaContextBadge:mediaContextBadge];

  mediaContextBadge2 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadge];

  mediaContextBadgeView = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
  avatarProvider = mediaContextBadgeView;
  if (mediaContextBadge2)
  {

    if (!avatarProvider)
    {
      v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(CNVisualIdentityAvatarViewController *)self setMediaContextBadgeView:v9];

      badgeImageView = [(CNVisualIdentityAvatarViewController *)self badgeImageView];

      view = [(CNVisualIdentityAvatarViewController *)self view];
      mediaContextBadgeView2 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
      if (badgeImageView)
      {
        badgeImageView2 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
        [view insertSubview:mediaContextBadgeView2 belowSubview:badgeImageView2];
      }

      else
      {
        [view addSubview:mediaContextBadgeView2];
      }
    }

    [(CNVisualIdentityAvatarViewController *)self updateMediaContextBadgeFrame];
    avatarProvider = [(CNVisualIdentityAvatarViewController *)self avatarProvider];
    mediaContextBadge3 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadge];
    mediaContextBadgeView3 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
    [mediaContextBadgeView3 bounds];
    v18 = [avatarProvider imageForAvatarAccessoryView:mediaContextBadge3 withSize:{v16, v17}];
    mediaContextBadgeView4 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
    [mediaContextBadgeView4 setImage:v18];
  }

  else
  {
    [mediaContextBadgeView setImage:0];
  }

  [(CNVisualIdentityAvatarViewController *)self layoutAvatars];

  [(CNVisualIdentityAvatarViewController *)self updateBadgeViewFrame];
}

- (void)setMediaContextBadge:(id)badge
{
  badgeCopy = badge;
  if (([badgeCopy isEqual:self->_mediaContextBadge] & 1) == 0)
  {
    objc_storeStrong(&self->_mediaContextBadge, badge);
    [(CNVisualIdentityAvatarViewController *)self updateMediaContextBadgeImage];
  }
}

- (UIImage)badgeImage
{
  badgeImageView = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  image = [badgeImageView image];

  return image;
}

- (void)updateBadgeViewFrame
{
  view = [(CNVisualIdentityAvatarViewController *)self view];
  v4 = [view effectiveUserInterfaceLayoutDirection] == 1;

  v5 = MEMORY[0x1E6996AB0];
  view2 = [(CNVisualIdentityAvatarViewController *)self view];
  [(CNVisualIdentityAvatarViewController *)self avatarFrameForFocusedAvatarInView:view2];
  [v5 avatarBadgeRectForAvatarInRect:1 badgeType:v4 isRTL:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  badgeImageView = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [badgeImageView setFrame:{v8, v10, v12, v14}];

  [(CNVisualIdentityAvatarViewController *)self updateBadgeImageViewPosition];
}

- (void)removeBadgeTapGestureRecognizer
{
  badgeImageView = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  badgeTapGestureRecognizer = [(CNVisualIdentityAvatarViewController *)self badgeTapGestureRecognizer];
  [badgeImageView removeGestureRecognizer:badgeTapGestureRecognizer];

  [(CNVisualIdentityAvatarViewController *)self setBadgeTapGestureRecognizer:0];
}

- (void)setBadgeTarget:(id)target action:(SEL)action
{
  v6 = MEMORY[0x1E69DD060];
  targetCopy = target;
  v10 = [[v6 alloc] initWithTarget:targetCopy action:action];

  badgeImageView = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [badgeImageView addGestureRecognizer:v10];

  badgeImageView2 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [badgeImageView2 setUserInteractionEnabled:1];

  [(CNVisualIdentityAvatarViewController *)self setBadgeTapGestureRecognizer:v10];
}

- (void)setBadgeViewImage:(id)image
{
  imageCopy = image;
  badgeImageView = [(CNVisualIdentityAvatarViewController *)self badgeImageView];

  if (!badgeImageView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(CNVisualIdentityAvatarViewController *)self setBadgeImageView:v6];

    badgeImageView2 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
    [badgeImageView2 setClipsToBounds:1];
  }

  mediaContextBadgeView = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];

  view = [(CNVisualIdentityAvatarViewController *)self view];
  badgeImageView3 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  if (mediaContextBadgeView)
  {
    mediaContextBadgeView2 = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
    [view insertSubview:badgeImageView3 aboveSubview:mediaContextBadgeView2];
  }

  else
  {
    [view addSubview:badgeImageView3];
  }

  badgeImageView4 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [badgeImageView4 setImage:imageCopy];

  [(CNVisualIdentityAvatarViewController *)self updateBadgeViewFrame];
}

- (void)setBadgeImage:(id)image
{
  if (image)
  {
    [(CNVisualIdentityAvatarViewController *)self setBadgeViewImage:?];

    [(CNVisualIdentityAvatarViewController *)self updateBadgeImageViewBackgroundColor];
  }

  else
  {
    badgeImageView = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
    [badgeImageView setImage:0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    badgeImageView2 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
    [badgeImageView2 setBackgroundColor:clearColor];
  }
}

- (void)updateBadgeImageViewPosition
{
  view = [(CNVisualIdentityAvatarViewController *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  LOBYTE(view) = [(CNVisualIdentityAvatarViewController *)self shouldDisplayPrimaryAvatarImage];
  view2 = [(CNVisualIdentityAvatarViewController *)self view];
  [(CNVisualIdentityAvatarViewController *)self avatarFrameForFocusedAvatarInView:view2];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if ((view & 1) == 0 && [(CNVisualIdentityAvatarViewController *)self itemCount]>= 2)
  {
    avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
    contentView = [(CNVisualIdentityAvatarViewController *)self contentView];
    [avatarLayoutManager adHocAvatarFrameInView:contentView forItemCount:{-[CNVisualIdentityAvatarViewController itemCount](self, "itemCount")}];
    v8 = v17;
    v12 = v18;
  }

  v19 = MEMORY[0x1E6996AB0];
  badgeImageView = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [badgeImageView frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  badgeStyleSettings = [(CNVisualIdentityAvatarViewController *)self badgeStyleSettings];
  cnuiBadgePosition = [badgeStyleSettings cnuiBadgePosition];
  mediaContextBadge = [(CNVisualIdentityAvatarViewController *)self mediaContextBadge];
  if (mediaContextBadge)
  {
    mediaContextBadgeView = [(CNVisualIdentityAvatarViewController *)self mediaContextBadgeView];
    [mediaContextBadgeView frame];
  }

  else
  {
    v31 = *MEMORY[0x1E695F058];
    v32 = *(MEMORY[0x1E695F058] + 8);
    v33 = *(MEMORY[0x1E695F058] + 16);
    v34 = *(MEMORY[0x1E695F058] + 24);
  }

  [v19 frameForBadgeWithFrame:cnuiBadgePosition onAvatarFrame:effectiveUserInterfaceLayoutDirection == 1 withPosition:v21 mediaContextFrame:v23 isRTL:{v25, v27, v8, v10, v12, v14, v31, v32, v33, v34}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  badgeImageView2 = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [badgeImageView2 setFrame:{v36, v38, v40, v42}];

  if (mediaContextBadge)
  {
  }
}

- (void)updateBadgeImageViewContentMode
{
  badgeStyleSettings = [(CNVisualIdentityAvatarViewController *)self badgeStyleSettings];
  contentMode = [badgeStyleSettings contentMode];
  badgeImageView = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [badgeImageView setContentMode:contentMode];
}

- (void)updateBadgeImageViewBackgroundColor
{
  badgeImage = [(CNVisualIdentityAvatarViewController *)self badgeImage];

  if (badgeImage)
  {
    badgeStyleSettings = [(CNVisualIdentityAvatarViewController *)self badgeStyleSettings];
    backgroundColor = [badgeStyleSettings backgroundColor];
    badgeImageView = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
    [badgeImageView setBackgroundColor:backgroundColor];
  }

  else
  {
    badgeStyleSettings = [MEMORY[0x1E69DC888] clearColor];
    backgroundColor = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
    [backgroundColor setBackgroundColor:badgeStyleSettings];
  }
}

- (void)updateBadgeCropStyle
{
  v3 = MEMORY[0x1E6996AB0];
  badgeImageView = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  layer = [badgeImageView layer];
  badgeStyleSettings = [(CNVisualIdentityAvatarViewController *)self badgeStyleSettings];
  [v3 cropAvatarBadgeLayer:layer withCropStyle:{objc_msgSend(badgeStyleSettings, "cropStyle")}];
}

- (void)updateBadgeTintColor
{
  badgeStyleSettings = [(CNVisualIdentityAvatarViewController *)self badgeStyleSettings];
  color = [badgeStyleSettings color];
  badgeImageView = [(CNVisualIdentityAvatarViewController *)self badgeImageView];
  [badgeImageView setTintColor:color];
}

- (void)updateBadgeStyling
{
  [(CNVisualIdentityAvatarViewController *)self updateBadgeImageViewPosition];
  [(CNVisualIdentityAvatarViewController *)self updateBadgeTintColor];
  [(CNVisualIdentityAvatarViewController *)self updateBadgeCropStyle];
  [(CNVisualIdentityAvatarViewController *)self updateBadgeImageViewBackgroundColor];

  [(CNVisualIdentityAvatarViewController *)self updateBadgeImageViewContentMode];
}

- (void)setBadgeStyleSettings:(id)settings
{
  settingsCopy = settings;
  if (![(CNBadgingAvatarBadgeStyleSettings *)self->_badgeStyleSettings isEqual:?])
  {
    objc_storeStrong(&self->_badgeStyleSettings, settings);
    badgeImage = [(CNVisualIdentityAvatarViewController *)self badgeImage];

    if (badgeImage)
    {
      [(CNVisualIdentityAvatarViewController *)self updateBadgeStyling];
    }
  }
}

- (void)removeAllSublayers
{
  avatarLayerItem = [(CNVisualIdentityAvatarViewController *)self avatarLayerItem];
  layer = [avatarLayerItem layer];
  [layer removeFromSuperlayer];

  avatarLayoutManager = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
  avatarLayerItems = [avatarLayoutManager avatarLayerItems];
  v7 = [avatarLayerItems count];

  if (v7)
  {
    v8 = 0;
    do
    {
      avatarLayoutManager2 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      avatarLayerItems2 = [avatarLayoutManager2 avatarLayerItems];
      v11 = [avatarLayerItems2 objectAtIndexedSubscript:v8];

      layer2 = [v11 layer];
      [layer2 removeFromSuperlayer];

      ++v8;
      avatarLayoutManager3 = [(CNVisualIdentityAvatarViewController *)self avatarLayoutManager];
      avatarLayerItems3 = [avatarLayoutManager3 avatarLayerItems];
      v15 = [avatarLayerItems3 count];
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
  view = [(CNVisualIdentityAvatarViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;

  [(CNVisualIdentityAvatarViewController *)self previousSize];
  if (v9 == v5 && v8 == v7)
  {
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      itemCount = [(CNVisualIdentityAvatarViewController *)self itemCount];
      containingCellView = [(CNVisualIdentityAvatarViewController *)self containingCellView];
      *buf = 134218242;
      v16 = itemCount;
      v17 = 2114;
      v18 = containingCellView;
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
  view = [(CNVisualIdentityAvatarViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:?];
  [(CNVisualIdentityAvatarViewController *)self setContentView:v5];

  contentView = [(CNVisualIdentityAvatarViewController *)self contentView];
  [contentView setAutoresizingMask:18];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  contentView2 = [(CNVisualIdentityAvatarViewController *)self contentView];
  [contentView2 setBackgroundColor:clearColor];

  view2 = [(CNVisualIdentityAvatarViewController *)self view];
  contentView3 = [(CNVisualIdentityAvatarViewController *)self contentView];
  [view2 addSubview:contentView3];

  [(CNVisualIdentityAvatarViewController *)self updateContactChangesNotifierRegistration];
}

- (void)loadView
{
  v3 = [CNVisualIdentityAvatarContainerView alloc];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = [(CNVisualIdentityAvatarContainerView *)v3 initWithFrame:?];

  [(CNVisualIdentityAvatarContainerView *)v5 setDelegate:self];
  [(CNVisualIdentityAvatarViewController *)self setView:v5];
}

- (void)dealloc
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  contactChangesNotifier = [v3 contactChangesNotifier];
  [contactChangesNotifier unregisterObserver:self forContact:0];

  v5.receiver = self;
  v5.super_class = CNVisualIdentityAvatarViewController;
  [(CNVisualIdentityAvatarViewController *)&v5 dealloc];
}

- (CNVisualIdentityAvatarViewController)initWithVisualIdentity:(id)identity primaryAvatarProvider:(id)provider avatarImageRendererSettings:(id)settings avatarLayoutType:(unint64_t)type
{
  v7 = [(CNVisualIdentityAvatarViewController *)self initWithVisualIdentity:identity primaryAvatarProvider:provider avatarImageRendererSettings:settings];
  if (v7)
  {
    v8 = [[CNVisualIdentityAvatarLayoutManager alloc] initWithLayoutType:type];
    avatarLayoutManager = v7->_avatarLayoutManager;
    v7->_avatarLayoutManager = v8;

    v10 = v7;
  }

  return v7;
}

- (CNVisualIdentityAvatarViewController)initWithVisualIdentity:(id)identity primaryAvatarProvider:(id)provider avatarImageRendererSettings:(id)settings
{
  identityCopy = identity;
  providerCopy = provider;
  settingsCopy = settings;
  v26.receiver = self;
  v26.super_class = CNVisualIdentityAvatarViewController;
  v12 = [(CNVisualIdentityAvatarViewController *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_visualIdentity, identity);
    v14 = [[CNVisualIdentityContactAvatarProvider alloc] initWithSettings:settingsCopy];
    avatarProvider = v13->_avatarProvider;
    v13->_avatarProvider = v14;

    v16 = objc_alloc_init(CNVisualIdentityAvatarLayoutManager);
    avatarLayoutManager = v13->_avatarLayoutManager;
    v13->_avatarLayoutManager = v16;

    objc_storeStrong(&v13->_primaryAvatarProvider, provider);
    v18 = +[CNUIContactsEnvironment currentEnvironment];
    defaultSchedulerProvider = [v18 defaultSchedulerProvider];
    v20 = [defaultSchedulerProvider newSerialSchedulerWithName:@"com.apple.contactsui.visualIdentityAvatarView.renderingQueue"];
    renderingQueue = v13->_renderingQueue;
    v13->_renderingQueue = v20;

    mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];
    callbackQueue = v13->_callbackQueue;
    v13->_callbackQueue = mainThreadScheduler;

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