@interface CSLUIFieldOfIconsView
- ($153C3A5BC4E016D58A1B9CA554FFC462)originalLayoutAttributesForHex:(Hex)hex;
- (BOOL)isDragging;
- (CGPoint)contentOffset;
- (CGPoint)contentOffsetToCenterHex:(Hex)hex;
- (CGPoint)inertialUpdater:(id)updater willDecelerateWithTarget:(CGPoint)target;
- (CSLHexAppNode)draggingNode;
- (CSLLauncherViewModeDelegate)launcherDelegate;
- (CSLUIFieldOfIconsView)initWithFrame:(CGRect)frame iconGraph:(id)graph viewFactory:(id)factory options:(unint64_t)options;
- (CSLUIFieldOfIconsViewScrollDelegate)scrollDelegate;
- (CSLUIHexIconActionDelegate)actionDelegate;
- (Hex)closestIconHexToHex:(Hex)hex;
- (Hex)targetHex;
- (id)createApplierToAnimateToContentOffset:(CGPoint)offset;
- (id)iconViewForBundleIdentifier:(id)identifier;
- (id)scrolledCenterBundleIdentifier;
- (void)PPTPanAround:(id)around panDistance:(double)distance panCount:(int64_t)count;
- (void)autoScroll;
- (void)dealloc;
- (void)enableGestureRecognizers:(BOOL)recognizers;
- (void)endDragging;
- (void)endPressing;
- (void)enumerateIconViewsWithBlock:(id)block;
- (void)forceIconAttributesAndSubviewForView:(id)view;
- (void)handleIconTap:(id)tap;
- (void)handlePanGesture:(id)gesture;
- (void)handlePinch:(id)pinch;
- (void)hexAppGraph:(id)graph addedNodes:(id)nodes removedNodes:(id)removedNodes movedNodes:(id)movedNodes;
- (void)inertialUpdaterFinishedScrolling:(id)scrolling;
- (void)layoutAnimated:(BOOL)animated;
- (void)layoutIconView:(id)view forcedApply:(BOOL)apply forcedSubview:(BOOL)subview;
- (void)layoutIconsForcedApply:(BOOL)apply forcedSubview:(BOOL)subview;
- (void)layoutSubviews;
- (void)setTargetBundleIdentifier:(id)identifier;
- (void)setTargetHexToScrolledCenterForReason:(id)reason;
- (void)updatePPT:(id)t;
@end

@implementation CSLUIFieldOfIconsView

- (CSLUIFieldOfIconsView)initWithFrame:(CGRect)frame iconGraph:(id)graph viewFactory:(id)factory options:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  graphCopy = graph;
  factoryCopy = factory;
  v68.receiver = self;
  v68.super_class = CSLUIFieldOfIconsView;
  height = [(CSLUIFieldOfIconsView *)&v68 initWithFrame:x, y, width, height];
  v16 = height;
  v17 = height;
  if (height)
  {
    height->_options = 0;
    v18 = objc_storeWeak(&height->_iconGraph, graphCopy);
    [graphCopy setDelegate:v17];

    v19 = objc_storeWeak(&v16->_viewFactory, factoryCopy);
    [factoryCopy defaultPixelDiameter];
    *(v17 + 64) = v20;

    v21 = [CSLUniformHexLayout alloc];
    __asm { FMOV            V8.2S, #1.0 }

    v58 = 0;
    v59 = _D8;
    v60 = 0;
    v61 = _D8;
    v27 = *(v17 + 64);
    v62 = v27;
    v63 = 0x40000000;
    v64 = vdup_n_s32(0x43960000u);
    v28 = (v27 * 0.5) + 2.5;
    v29 = v27;
    v30 = 1.0;
    if (v29 >= 35)
    {
      v30 = (v29 / 0x23u);
    }

    v65 = v28 + (v30 * 5.0);
    v66 = vmul_f32(vrndm_f32(vdup_lane_s32(COERCE_UNSIGNED_INT((v65 * 0.0) + (v65 * 0.0)), 0)), 0x3F0000003F000000);
    v67 = v66;
    v31 = [(CSLUniformHexLayout *)v21 initWithConfiguration:&v58];
    v32 = *(v17 + 72);
    *(v17 + 72) = v31;

    WeakRetained = objc_loadWeakRetained(&v16->_iconGraph);
    v34 = [WeakRetained nodeAtHex:0];
    bundleIdentifier = [v34 bundleIdentifier];
    v36 = *(v17 + 368);
    *(v17 + 368) = bundleIdentifier;

    v37 = +[NSMutableDictionary dictionary];
    v38 = *(v17 + 32);
    *(v17 + 32) = v37;

    *(v17 + 168) = 0;
    *(v17 + 176) = 0;
    [v17 setAutoresizingMask:18];
    v39 = objc_alloc_init(UIView);
    v40 = *(v17 + 16);
    *(v17 + 16) = v39;

    [v17 addSubview:{*(v17 + 16), sub_24FFC(v17)}];
    *(v17 + 112) = CGPointZero;
    *(v17 + 96) = CGPointZero;
    sub_1D688(v17);
    v41 = objc_alloc_init(CSLUIInertialUpdater);
    v42 = *(v17 + 88);
    *(v17 + 88) = v41;

    [*(v17 + 88) setDelegate:v17];
    v43 = [[CSLIconTapGestureRecognizer alloc] initWithTarget:v17 action:"handleIconTap:"];
    v44 = *(v17 + 192);
    *(v17 + 192) = v43;

    [*(v17 + 192) setEnabled:0];
    [v17 addGestureRecognizer:*(v17 + 192)];
    v45 = [[CSLPanGestureRecognizer alloc] initWithTarget:v17 action:"handlePanGesture:"];
    v46 = *(v17 + 80);
    *(v17 + 80) = v45;

    [v17 addGestureRecognizer:*(v17 + 80)];
    v47 = [[UIPinchGestureRecognizer alloc] initWithTarget:v17 action:"handlePinch:"];
    v48 = *(v17 + 264);
    *(v17 + 264) = v47;

    [*(v17 + 264) setEnabled:0];
    [v17 addGestureRecognizer:*(v17 + 264)];
    *(v17 + 56) = 0;
    v49 = [CSLScrollableUniformHexLayout alloc];
    v58 = 0;
    v59 = _D8;
    v60 = 0;
    v61 = _D8;
    v50 = *(v17 + 64);
    v62 = v50;
    v63 = 0x40000000;
    v64 = vdup_n_s32(0x43960000u);
    v51 = (v50 * 0.5) + 2.5;
    v52 = v50;
    v53 = 1.0;
    if (v52 >= 35)
    {
      v53 = (v52 / 0x23u);
    }

    v65 = v51 + (v53 * 5.0);
    v66 = vmul_f32(vrndm_f32(vdup_lane_s32(COERCE_UNSIGNED_INT((v65 * 0.0) + (v65 * 0.0)), 0)), 0x3F0000003F000000);
    v67 = v66;
    v54 = [(CSLUniformHexLayout *)v49 initWithConfiguration:&v58];
    [v17 setLayout:v54 percentComplete:0 animated:options options:0.0];

    v55 = objc_opt_new();
    v56 = *(v17 + 216);
    *(v17 + 216) = v55;

    [*(v17 + 216) setDelegate:v17];
  }

  return v17;
}

- (void)dealloc
{
  [(CSLUIInertialUpdater *)self->_inertialUpdater setDelegate:0];
  v3.receiver = self;
  v3.super_class = CSLUIFieldOfIconsView;
  [(CSLUIFieldOfIconsView *)&v3 dealloc];
}

- (void)setTargetBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = cslprf_ui_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained(&self->_iconGraph);
    v8 = [WeakRetained nodeWithBundleIdentifier:self->_targetBundleIdentifier];
    v9 = objc_loadWeakRetained(&self->_iconGraph);
    v10 = [v9 nodeWithBundleIdentifier:identifierCopy];
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "changing locked target %@ to %@", &v13, 0x16u);
  }

  targetHex = [(CSLUIFieldOfIconsView *)self targetHex];
  objc_storeStrong(&self->_targetBundleIdentifier, identifier);
  targetHex2 = [(CSLUIFieldOfIconsView *)self targetHex];
  [(CSLHexLayout *)self->_layout setTargetHex:targetHex2];
  if (targetHex != targetHex2)
  {
    [(CSLUIFieldOfIconsView *)self setNeedsLayout];
  }
}

- (Hex)targetHex
{
  WeakRetained = objc_loadWeakRetained(&self->_iconGraph);
  v4 = [WeakRetained nodeWithBundleIdentifier:self->_targetBundleIdentifier];
  v5 = [v4 hex];

  return v5;
}

- (id)iconViewForBundleIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_iconViewDict objectForKeyedSubscript:identifier];

  return v3;
}

- (void)enumerateIconViewsWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    iconViewDict = self->_iconViewDict;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1DED4;
    v7[3] = &unk_3CE50;
    v8 = blockCopy;
    [(NSMutableDictionary *)iconViewDict enumerateKeysAndObjectsUsingBlock:v7];
  }
}

- (void)hexAppGraph:(id)graph addedNodes:(id)nodes removedNodes:(id)removedNodes movedNodes:(id)movedNodes
{
  nodesCopy = nodes;
  removedNodesCopy = removedNodes;
  movedNodesCopy = movedNodes;
  layout = self->_layout;
  [(CSLUIFieldOfIconsView *)self bounds];
  [(CSLHexLayout *)layout updateWithBounds:?];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = nodesCopy;
  v12 = [v11 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v12)
  {
    v13 = *v52;
    do
    {
      v14 = 0;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v11);
        }

        bundleIdentifier = [*(*(&v51 + 1) + 8 * v14) bundleIdentifier];
        v16 = [(CSLUIFieldOfIconsView *)self iconViewForBundleIdentifier:bundleIdentifier];
        [(CSLUIFieldOfIconsView *)self forceIconAttributesAndSubviewForView:v16];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v12);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v17 = removedNodesCopy;
  v18 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v18)
  {
    v19 = *v48;
    do
    {
      v20 = 0;
      do
      {
        if (*v48 != v19)
        {
          objc_enumerationMutation(v17);
        }

        bundleIdentifier2 = [*(*(&v47 + 1) + 8 * v20) bundleIdentifier];
        v22 = [(CSLUIFieldOfIconsView *)self iconViewForBundleIdentifier:bundleIdentifier2];
        [(CSLUIFieldOfIconsView *)self forceIconAttributesAndSubviewForView:v22];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v18);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = movedNodesCopy;
  v24 = [v23 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v24)
  {
    v25 = *v44;
    do
    {
      v26 = 0;
      do
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v23);
        }

        bundleIdentifier3 = [*(*(&v43 + 1) + 8 * v26) bundleIdentifier];
        v28 = [(CSLUIFieldOfIconsView *)self iconViewForBundleIdentifier:bundleIdentifier3];
        [(CSLUIFieldOfIconsView *)self forceIconAttributesAndSubviewForView:v28];

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [v23 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v24);
  }

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_1E44C;
  v41[4] = sub_1E45C;
  v42 = sub_1E464(self, v11);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_1E44C;
  v39[4] = sub_1E45C;
  v40 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1E66C;
  v34[3] = &unk_3CE78;
  v34[4] = self;
  v37 = v41;
  v38 = v39;
  v29 = v17;
  v35 = v29;
  v30 = v23;
  v36 = v30;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1ED08;
  v33[3] = &unk_3CEA0;
  v33[4] = self;
  v33[5] = v39;
  [UIView _animateUsingDefaultTimingWithOptions:4 animations:v34 completion:v33];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
}

- (void)layoutAnimated:(BOOL)animated
{
  if (animated)
  {
    sub_1EF18(self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1F650;
    v4[3] = &unk_3CE28;
    v4[4] = self;
    [UIView _animateUsingDefaultTimingWithOptions:4 animations:v4 completion:0];
  }

  else
  {

    [(CSLUIFieldOfIconsView *)self setNeedsLayout];
  }
}

- (void)layoutIconsForcedApply:(BOOL)apply forcedSubview:(BOOL)subview
{
  layout = self->_layout;
  [(CSLUIFieldOfIconsView *)self bounds];
  [(CSLHexLayout *)layout updateWithBounds:?];
  [(CSLPressStateApplier *)self->_pressApplier prepareForLayout];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1F768;
  v8[3] = &unk_3CF10;
  v8[4] = self;
  applyCopy = apply;
  subviewCopy = subview;
  [(CSLUIFieldOfIconsView *)self enumerateIconViewsWithBlock:v8];
  [(CSLPressStateApplier *)self->_pressApplier cleanupAfterLayout];
}

- (void)forceIconAttributesAndSubviewForView:(id)view
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    [viewCopy layoutAttributes];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [v5 applyLayoutAttributes:v8];
  superview = [v5 superview];

  if (!superview)
  {
    node = [v5 node];
    [node hex];
    sub_1DC80(self, v5);
  }
}

- (void)layoutIconView:(id)view forcedApply:(BOOL)apply forcedSubview:(BOOL)subview
{
  subviewCopy = subview;
  applyCopy = apply;
  viewCopy = view;
  node = [viewCopy node];
  v10 = [node hex];
  if (![(CSLPressStateApplier *)self->_pressApplier isEnabledForHex:v10])
  {
    [(CSLUIFieldOfIconsView *)self originalLayoutAttributesForHex:v10];
    goto LABEL_5;
  }

  pressApplier = self->_pressApplier;
  if (pressApplier)
  {
    [(CSLPressStateApplier *)pressApplier layoutAttributesForHex:v10];
LABEL_5:
    v12 = v19[0];
    goto LABEL_6;
  }

  v12 = 0uLL;
  memset(v19, 0, sizeof(v19));
LABEL_6:
  v20 = *(v19 + 12);
  v21 = HIDWORD(v19[1]);
  DWORD2(v19[0]) = DWORD2(v12);
  *&v19[0] = v12;
  [viewCopy setLayoutAttributes:{v19, v12}];
  if (*&v18.i32[2] < 0.2)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v14 = vcgt_f32(vabs_f32(*v18.i8), vadd_f32(vdup_laneq_s32(v18, 2), qword_465D0));
  v14.i32[0] = vpmax_u32(v14, v14).u32[0];
  v13 = v14.i32[0] >= 0;
  if (v14.i32[0] < 0)
  {
LABEL_9:
    if (!applyCopy)
    {
      goto LABEL_11;
    }
  }

  DWORD2(v19[0]) = v18.i32[2];
  *&v19[0] = v18.i64[0];
  *(v19 + 12) = v20;
  HIDWORD(v19[1]) = v21;
  [viewCopy applyLayoutAttributes:v19];
LABEL_11:
  WeakRetained = objc_loadWeakRetained(&self->_dragView);
  v16 = WeakRetained == viewCopy;

  if (!v16)
  {
    superview = [viewCopy superview];

    if (v13 != (superview != 0))
    {
      if (!v13)
      {
        sub_1FAEC(self, viewCopy);
        goto LABEL_18;
      }

LABEL_17:
      sub_1DC80(self, viewCopy);
      goto LABEL_18;
    }

    if (subviewCopy && !superview)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
}

- (void)handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([(CSLUIFieldOfIconsView *)self isDragging])
  {
    sub_1FBCC(self, gestureCopy);
  }

  else
  {
    sub_1FE58(self, gestureCopy);
  }
}

- (void)endPressing
{
  pressedIcon = self->_pressedIcon;
  self->_pressedIcon = 0;

  [(CSLPressStateApplier *)self->_pressApplier clearAllPresses];

  [(CSLUIFieldOfIconsView *)self setNeedsLayout];
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)originalLayoutAttributesForHex:(Hex)hex
{
  layout = self->_layout;
  if (layout)
  {
    [(CSLHexLayout *)layout layoutAttributesForItemAtHex:hex];
  }

  else
  {
    *&v5.var0 = 0;
    *v3 = 0u;
    v3[1] = 0u;
  }

  return v5;
}

- (void)handleIconTap:(id)tap
{
  tapCopy = tap;
  if (self)
  {
    [(CSLUIPointAnimator *)self->_contentOffsetAnimator cancel];
  }

  state = [tapCopy state];
  if (state > 2)
  {
    if (state != (&dword_0 + 3))
    {
      if (state == &dword_4)
      {
        isDragging = [(CSLUIFieldOfIconsView *)self isDragging];
        v17 = cslprf_icon_field_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          isEditing = [(CSLUIFieldOfIconsView *)self isEditing];
          didPanDrag = self->_didPanDrag;
          *buf = 67109632;
          *&buf[4] = isEditing;
          *&buf[8] = 1024;
          *&buf[10] = isDragging;
          *&buf[14] = 1024;
          LODWORD(v36) = didPanDrag;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "handleIconTap:stateCancelled isEditing:%{BOOL}u isDragging:%{BOOL}u didPanDrag:%{BOOL}u", buf, 0x14u);
        }

        if (!self->_didPanDrag && ((isDragging ^ 1) & 1) == 0)
        {
          [(CSLUIFieldOfIconsView *)self endDragging];
        }

        sub_20254(self, @"gesture cancelled");
      }

      goto LABEL_40;
    }

    node = [(CSLUIIconView *)self->_pressedIcon node];
    isLongPress = [tapCopy isLongPress];
    v25 = cslprf_icon_field_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *&buf[4] = [(CSLUIFieldOfIconsView *)self isEditing];
      *&buf[8] = 1024;
      *&buf[10] = isLongPress;
      *&buf[14] = 2114;
      *&v36 = node;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "handleIconTap:stateEnded isEditing:%{BOOL}u isLongPress:%{BOOL}u node:%{public}@", buf, 0x18u);
    }

    sub_20254(self, @"touch up");
    if ([tapCopy isLongPress])
    {
      if (!self->_didPanDrag && [(CSLUIFieldOfIconsView *)self isDragging])
      {
        [(CSLUIFieldOfIconsView *)self endDragging];
      }

      goto LABEL_39;
    }

    if (node)
    {
      bundleIdentifier = [node bundleIdentifier];
      if (bundleIdentifier)
      {
        [(CSLUIFieldOfIconsView *)self setTargetBundleIdentifier:bundleIdentifier];
        WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
        [WeakRetained tappedIconWithBundleIdentifier:bundleIdentifier];
      }
    }

    else
    {
      if ((self->_options & 0x40) == 0)
      {
LABEL_39:

        goto LABEL_40;
      }

      bundleIdentifier = objc_loadWeakRetained(&self->_actionDelegate);
      [bundleIdentifier tappedEmptyHex:*&self->_touchedHex];
    }

    goto LABEL_39;
  }

  if (state == (&dword_0 + 1))
  {
    [(CSLUIInertialUpdater *)self->_inertialUpdater endUpdating];
    [tapCopy locationInView:self->_contentView];
    v22 = sub_1DA9C(self, v20, v21);
    self->_touchedHex = v22;
    *buf = 0u;
    v36 = 0u;
    [(CSLUIFieldOfIconsView *)self originalLayoutAttributesForHex:v22];
    if (0.0 >= 0.2)
    {
      v26 = vcgt_f32(vabs_f32(*buf), vadd_f32(vdup_laneq_s32(*buf, 2), qword_465D0));
      v23 = vpmax_u32(v26, v26).i32[0] >= 0;
    }

    else
    {
      v23 = 0;
    }

    v27 = cslprf_icon_field_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v32[0] = 67109376;
      v32[1] = [(CSLUIFieldOfIconsView *)self isEditing];
      v33 = 1024;
      v34 = v23;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "handleIconTap:stateBegan isEditing:%{BOOL}u isOnScreen:%{BOOL}u", v32, 0xEu);
    }

    if (v23)
    {
      v28 = objc_loadWeakRetained(&self->_iconGraph);
      v29 = [v28 nodeAtHex:*&self->_touchedHex];

      sub_1FF38(self, v29);
    }
  }

  else if (state == (&dword_0 + 2))
  {
    isLongPress2 = [tapCopy isLongPress];
    node = [(CSLUIIconView *)self->_pressedIcon node];
    v8 = cslprf_icon_field_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      isEditing2 = [(CSLUIFieldOfIconsView *)self isEditing];
      v10 = objc_loadWeakRetained(&self->_dragView);
      *buf = 67109890;
      *&buf[4] = isEditing2;
      *&buf[8] = 1024;
      *&buf[10] = isLongPress2;
      *&buf[14] = 1024;
      LODWORD(v36) = v10 == 0;
      WORD2(v36) = 2114;
      *(&v36 + 6) = node;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "handleIconTap:stateChanged isEditing:%{BOOL}u isLongPress:%{BOOL}u _dragView nil:%{BOOL}u, node:%{public}@", buf, 0x1Eu);
    }

    if (isLongPress2)
    {
      v11 = objc_loadWeakRetained(&self->_dragView);
      v12 = v11 == 0;

      if (v12)
      {
        sub_20254(self, @"long press");
        v13 = objc_loadWeakRetained(&self->_actionDelegate);
        [v13 handleLongPress];

        [tapCopy locationInView:self];
        sub_20B14(self, node, v14, v15);
      }
    }

    goto LABEL_39;
  }

LABEL_40:
}

- (void)handlePinch:(id)pinch
{
  pinchCopy = pinch;
  state = [pinchCopy state];
  if ((state - 3) >= 3)
  {
    if (state == &dword_0 + 1)
    {
      sub_1EF18(self);
    }

    else if (state != &dword_0 + 2)
    {
      goto LABEL_8;
    }

    [pinchCopy scale];
    v7 = v6;
    layer = [(CSLUIFieldOfIconsView *)self layer];
    CATransform3DMakeScale(&v10, v7, v7, 1.0);
    [layer setTransform:&v10];
  }

  else
  {
    sub_1EF18(self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_20D4C;
    v9[3] = &unk_3CE28;
    v9[4] = self;
    [UIView _animateUsingDefaultTimingWithOptions:4 animations:v9 completion:0];
  }

LABEL_8:
}

- (CGPoint)inertialUpdater:(id)updater willDecelerateWithTarget:(CGPoint)target
{
  if ((self->_options & 0x20) != 0)
  {
    v14 = -self->_rawTouchContentOffset.x;
    v15 = -self->_rawTouchContentOffset.y;
  }

  else
  {
    y = target.y;
    x = target.x;
    v24 = sub_21090(self, target.x, target.y);
    [(CSLUIFieldOfIconsView *)self contentOffsetToCenterHex:v24];
    v8 = v7;
    v10 = v9;
    v11 = self->_rawTouchContentOffset.x;
    v12 = self->_rawTouchContentOffset.y;
    v13 = cslprf_ui_log();
    v14 = v8 - v11;
    v15 = v10 - v12;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_F530(&v24, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v19 = self->_rawTouchContentOffset.x;
      v20 = self->_rawTouchContentOffset.y;
      v22 = self->_contentOffset.x;
      v21 = self->_contentOffset.y;
      *buf = 134220546;
      v26 = x;
      v27 = 2048;
      v28 = y;
      v29 = 2048;
      v30 = v8;
      v31 = 2048;
      v32 = v10;
      v33 = 2082;
      v34 = p_p;
      v35 = 2048;
      v36 = v14;
      v37 = 2048;
      v38 = v15;
      v39 = 2048;
      v40 = v19;
      v41 = 2048;
      v42 = v20;
      v43 = 2048;
      v44 = v22;
      v45 = 2048;
      v46 = v21;
      _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "inertial updater: willDecelerateWithTarget:{%.4f, %.4f} to bestTargetPoint:{%.4f, %.4f} for hex:%{public}s resulting in clientTarget delta:{%.4f, %.4f} for current rawContentOffset:{%.4f, %.4f} contentOffset:{%.4f, %.4f}", buf, 0x70u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v16 = v14;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)inertialUpdaterFinishedScrolling:(id)scrolling
{
  if ((self->_options & 0x20) == 0)
  {
    [(CSLUIFieldOfIconsView *)self setTargetHexToScrolledCenterForReason:@"finishedScrolling"];
  }
}

- (id)createApplierToAnimateToContentOffset:(CGPoint)offset
{
  x = offset.x;
  y = offset.y;
  [(CSLUIInertialUpdater *)self->_inertialUpdater endUpdating];
  v4 = vcvt_f32_f64(self->_contentOffset);
  v5.f64[0] = x;
  v5.f64[1] = y;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_219D4;
  v10[3] = &unk_3CF88;
  v10[5] = v4;
  v10[6] = vcvt_f32_f64(v5);
  v10[4] = self;
  v6 = objc_retainBlock(v10);

  return v6;
}

- (id)scrolledCenterBundleIdentifier
{
  v2 = sub_21AA4(&self->super.super.super.isa, [(CSLUIFieldOfIconsView *)self centeredHex]);
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (void)setTargetHexToScrolledCenterForReason:(id)reason
{
  reasonCopy = reason;
  centeredHex = [(CSLUIFieldOfIconsView *)self centeredHex];
  v6 = sub_21AA4(&self->super.super.super.isa, *&centeredHex);
  if (v6)
  {
    v7 = cslprf_icon_field_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138544130;
      v10 = reasonCopy;
      v11 = 1024;
      q = centeredHex.q;
      v13 = 1024;
      r = centeredHex.r;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Setting target hex to scrolled center reason:%{public}@ centeredHex:{%d,%d} node:%{public}@", &v9, 0x22u);
    }

    bundleIdentifier = [v6 bundleIdentifier];
    [(CSLUIFieldOfIconsView *)self setTargetBundleIdentifier:bundleIdentifier];
  }

  else
  {
    bundleIdentifier = cslprf_icon_field_log();
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_ERROR))
    {
      v9 = 138544130;
      v10 = reasonCopy;
      v11 = 1024;
      q = centeredHex.q;
      v13 = 1024;
      r = centeredHex.r;
      v15 = 2114;
      v16 = 0;
      _os_log_error_impl(&dword_0, bundleIdentifier, OS_LOG_TYPE_ERROR, "Cannot set target hex to scrolled center reason:%{public}@ centeredHex:{%d,%d} node:%{public}@", &v9, 0x22u);
    }
  }
}

- (void)autoScroll
{
  y = CGPointZero.y;
  autoScrollDirection = self->_autoScrollDirection;
  if (autoScrollDirection)
  {
    if (sub_21EC0(self, 1))
    {
      v5 = -4.0;
      goto LABEL_8;
    }

    autoScrollDirection = self->_autoScrollDirection;
  }

  if ((autoScrollDirection & 2) == 0 || !sub_21EC0(self, 2))
  {
    return;
  }

  v5 = 4.0;
LABEL_8:
  v6 = y + v5;
  v7 = CGPointZero.x + self->_contentOffset.x;
  v8 = v6 + self->_contentOffset.y;

  [(CSLUIFieldOfIconsView *)self setContentOffset:v7, v8];
}

- (CGPoint)contentOffsetToCenterHex:(Hex)hex
{
  v4 = sub_1F330(self, *&hex);
  contentOffsetLayout = self->_contentOffsetLayout;
  if (contentOffsetLayout)
  {
    [(CSLUniformHexLayout *)contentOffsetLayout layoutAttributesForItemAtHex:v4];
  }

  v6 = sub_1DB08(self);
  v7 = 0.0;
  if (!v6)
  {
    v7 = 0.0;
  }

  v8 = 0.0;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)isDragging
{
  WeakRetained = objc_loadWeakRetained(&self->_dragView);
  v3 = WeakRetained != 0;

  return v3;
}

- (CSLHexAppNode)draggingNode
{
  WeakRetained = objc_loadWeakRetained(&self->_dragView);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_dragView);
    node = [v4 node];
  }

  else
  {
    node = 0;
  }

  return node;
}

- (Hex)closestIconHexToHex:(Hex)hex
{
  layout = [(CSLUIFieldOfIconsView *)self layout];
  v6 = layout;
  if (layout)
  {
    [layout layoutAttributesForItemAtHex:hex];
    v7 = v15;
  }

  else
  {
    v7 = 0;
  }

  layout2 = [(CSLUIFieldOfIconsView *)self layout];
  v9 = layout2;
  if (layout2)
  {
    [layout2 layoutAttributesForItemAtHex:hex];
    v10 = v14;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = sub_21090(self, v13, v10);

  return v11;
}

- (void)updatePPT:(id)t
{
  tCopy = t;
  v21 = tCopy;
  if (self->_pptPanStartTime == 0.0)
  {
    [tCopy timestamp];
    self->_pptPanStartTime = v5;
    v6 = +[UIApplication sharedApplication];
    [v6 startedTest:self->_pptPanTestName];

    tCopy = v21;
  }

  [tCopy timestamp];
  v8 = v7 - self->_pptPanStartTime;
  if (v8 >= self->_pptPanCount)
  {
    v16 = +[UIApplication sharedApplication];
    [v16 finishedTest:self->_pptPanTestName];

    pptPanDisplayLink = self->_pptPanDisplayLink;
    v18 = +[NSRunLoop mainRunLoop];
    [(CADisplayLink *)pptPanDisplayLink removeFromRunLoop:v18 forMode:NSRunLoopCommonModes];

    v19 = self->_pptPanDisplayLink;
    self->_pptPanDisplayLink = 0;

    pptPanTestName = self->_pptPanTestName;
    self->_pptPanTestName = 0;

    [(CSLUIFieldOfIconsView *)self setContentOffset:self->_pptPanStartContentOffset.x, self->_pptPanStartContentOffset.y];
  }

  else
  {
    v9 = __sincos_stret(v8 * 3.14159265);
    pptPanDistance = self->_pptPanDistance;
    x = self->_pptPanStartContentOffset.x;
    y = self->_pptPanStartContentOffset.y;
    v13 = sub_1DB08(self);
    v14 = x + v9.__sinval * pptPanDistance;
    v15 = y + v9.__cosval * pptPanDistance;
    if (v13)
    {
      sub_212D0(self, COERCE_FLOAT32X2_T(v14 - self->_rawTouchContentOffset.x), COERCE_FLOAT32X2_T(v15 - self->_rawTouchContentOffset.y));
    }

    else
    {
      [(CSLUIFieldOfIconsView *)self setContentOffset:v14, v15];
    }
  }
}

- (void)PPTPanAround:(id)around panDistance:(double)distance panCount:(int64_t)count
{
  aroundCopy = around;
  self->_pptPanStartTime = 0.0;
  self->_rawTouchContentOffset = self->_contentOffset;
  self->_pptPanStartContentOffset = self->_contentOffset;
  self->_pptPanDistance = distance;
  objc_storeStrong(&self->_pptPanTestName, around);
  self->_pptPanCount = count;
  v9 = [CADisplayLink displayLinkWithTarget:self selector:"updatePPT:"];
  pptPanDisplayLink = self->_pptPanDisplayLink;
  self->_pptPanDisplayLink = v9;

  v11 = self->_pptPanDisplayLink;
  v12 = +[NSRunLoop mainRunLoop];
  [(CADisplayLink *)v11 addToRunLoop:v12 forMode:NSRunLoopCommonModes];
}

- (CSLUIHexIconActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (CSLLauncherViewModeDelegate)launcherDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_launcherDelegate);

  return WeakRetained;
}

- (CSLUIFieldOfIconsViewScrollDelegate)scrollDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollDelegate);

  return WeakRetained;
}

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSLUIFieldOfIconsView;
  [(CSLUIFieldOfIconsView *)&v3 layoutSubviews];
  [(CSLUIFieldOfIconsView *)self layoutIconsForcedApply:0 forcedSubview:0, sub_24FFC(self)];
}

- (void)enableGestureRecognizers:(BOOL)recognizers
{
  recognizersCopy = recognizers;
  self->_recognizersEnabled = recognizers;
  v5 = cslprf_fluidui_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = recognizersCopy;
    _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "CSLUIFieldOfIconsView gesture recognizers enabled: %{BOOL}u", v6, 8u);
  }

  sub_2533C(&self->super.super.super.isa);
}

- (void)endDragging
{
  self->_didPanDrag = 0;
  sub_25668(self);
  WeakRetained = objc_loadWeakRetained(&self->_dragView);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_dragView);
    node = [v4 node];

    v6 = [node hex];
    v7 = objc_loadWeakRetained(&self->_iconGraph);
    [v7 moveNode:node toHex:v6 final:1];

    v8 = objc_loadWeakRetained(&self->_iconGraph);
    [v8 commitMovedNode:node withReason:2];

    v9 = objc_loadWeakRetained(&self->_dragView);
    [v9 center];
    [(CSLUIFieldOfIconsView *)self convertPoint:self->_contentView toView:?];
    v11 = v10;
    v13 = v12;

    contentView = self->_contentView;
    v15 = objc_loadWeakRetained(&self->_dragView);
    [(UIView *)contentView addSubview:v15];

    v16 = objc_loadWeakRetained(&self->_dragView);
    [v16 setCenter:{v11, v13}];

    v20 = 0u;
    v21 = 0u;
    layout = self->_layout;
    if (layout)
    {
      [(CSLHexLayout *)layout layoutAttributesForItemAtHex:v6];
    }

    v18 = objc_loadWeakRetained(&self->_dragView);
    v19[0] = v20;
    v19[1] = v21;
    [v18 endDraggingToLayoutAttributes:v19];
  }

  objc_storeWeak(&self->_dragView, 0);
}

@end