@interface BKEndOfBookCardTransitionAnimationController
- (BKEndOfBookCardTransitionAnimationController)initWithCompactViewController:(id)controller cardViewController:(id)viewController;
- (BKEndOfBookCardViewController)cardViewController;
- (BKEndOfBookCompactViewController)compactViewController;
- (BOOL)isCompositeCompactArtwork;
- (BOOL)isCoverTransition;
- (double)_cardInitialTopOffset;
- (id)createCardArtworkSource;
- (id)createCompactArtworkSource;
- (void)_animateContentCrossfade:(BOOL)crossfade;
- (void)_finalizePresentation:(BOOL)presentation;
- (void)_prepareForPresentation:(id)presentation;
- (void)_removeTransitioningViews;
- (void)_setupCardDropShadowForPresented:(BOOL)presented;
- (void)dealloc;
- (void)finalizeAnimationsForDismissal:(BOOL)dismissal;
- (void)finalizeAnimationsForPresentation:(BOOL)presentation;
- (void)hideCovers;
- (void)prepareForDismissal;
- (void)prepareForPresentation:(id)presentation;
- (void)setCoverController:(id)controller;
- (void)setDropShadowView:(id)view;
- (void)setSnapshotView:(id)view;
- (void)setupAnimationsForDismissal;
- (void)setupAnimationsForPresentation;
- (void)unhideCovers;
@end

@implementation BKEndOfBookCardTransitionAnimationController

- (BKEndOfBookCardTransitionAnimationController)initWithCompactViewController:(id)controller cardViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v11.receiver = self;
  v11.super_class = BKEndOfBookCardTransitionAnimationController;
  v8 = [(BKEndOfBookCardTransitionAnimationController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_compactViewController, controllerCopy);
    objc_storeWeak(&v9->_cardViewController, viewControllerCopy);
  }

  return v9;
}

- (BOOL)isCoverTransition
{
  cardContent = [(BKEndOfBookCardTransitionAnimationController *)self cardContent];
  if (cardContent)
  {
    compactArtworkSource3 = cardContent;
    compactArtworkSource = [(BKEndOfBookCardTransitionAnimationController *)self compactArtworkSource];
    if (!compactArtworkSource)
    {
      v15 = 0;
LABEL_8:

      return v15;
    }

    v6 = compactArtworkSource;
    cardArtworkSource = [(BKEndOfBookCardTransitionAnimationController *)self cardArtworkSource];

    if (cardArtworkSource)
    {
      compactArtworkSource2 = [(BKEndOfBookCardTransitionAnimationController *)self compactArtworkSource];
      isCover = [compactArtworkSource2 isCover];

      if (!isCover)
      {
        return 1;
      }

      compactArtworkSource3 = [(BKEndOfBookCardTransitionAnimationController *)self compactArtworkSource];
      identifier = [compactArtworkSource3 identifier];
      refInstance = [identifier refInstance];
      cardArtworkSource2 = [(BKEndOfBookCardTransitionAnimationController *)self cardArtworkSource];
      identifier2 = [cardArtworkSource2 identifier];
      refInstance2 = [identifier2 refInstance];
      v15 = [refInstance isEqualToString:refInstance2];

      goto LABEL_8;
    }
  }

  return 0;
}

- (BOOL)isCompositeCompactArtwork
{
  compactArtworkSource = [(BKEndOfBookCardTransitionAnimationController *)self compactArtworkSource];
  isCover = [compactArtworkSource isCover];

  return isCover ^ 1;
}

- (void)setDropShadowView:(id)view
{
  viewCopy = view;
  dropShadowView = self->_dropShadowView;
  p_dropShadowView = &self->_dropShadowView;
  v6 = dropShadowView;
  if (dropShadowView != viewCopy)
  {
    v9 = viewCopy;
    [(UIView *)v6 removeFromSuperview];
    objc_storeStrong(p_dropShadowView, view);
    viewCopy = v9;
  }
}

- (void)setSnapshotView:(id)view
{
  viewCopy = view;
  snapshotView = self->_snapshotView;
  p_snapshotView = &self->_snapshotView;
  v6 = snapshotView;
  if (snapshotView != viewCopy)
  {
    v9 = viewCopy;
    [(_BKEndOfBookCardTransitionSnapshotView *)v6 removeFromSuperview];
    objc_storeStrong(p_snapshotView, view);
    viewCopy = v9;
  }
}

- (void)setCoverController:(id)controller
{
  controllerCopy = controller;
  coverController = self->_coverController;
  p_coverController = &self->_coverController;
  v6 = coverController;
  if (coverController != controllerCopy)
  {
    v10 = controllerCopy;
    coverView = [(BCSheetTransitionCoverController *)v6 coverView];
    [coverView removeFromSuperview];

    objc_storeStrong(p_coverController, controller);
    controllerCopy = v10;
  }
}

- (id)createCompactArtworkSource
{
  compactViewController = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
  feedViewController = [compactViewController feedViewController];
  v5 = [feedViewController artworkSourceInEntryWithIndex:0 refId:@"featured-cover" refInstance:0 isCover:1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    compactViewController2 = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
    feedViewController2 = [compactViewController2 feedViewController];
    v7 = [feedViewController2 artworkSourceInEntryWithIndex:0 refId:@"featured-artwork" refInstance:0 isCover:0];
  }

  return v7;
}

- (id)createCardArtworkSource
{
  objc_opt_class();
  cardViewController = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
  cardNavigationController = [cardViewController cardNavigationController];
  topViewController = [cardNavigationController topViewController];
  v6 = BUDynamicCast();

  v7 = [v6 sheetTransitioningCardContentArtworkSourceInEntryWithIndex:1];

  return v7;
}

- (void)hideCovers
{
  compactUnhideBlock = [(BKEndOfBookCardTransitionAnimationController *)self compactUnhideBlock];
  if (!compactUnhideBlock)
  {
    compactArtworkSource = [(BKEndOfBookCardTransitionAnimationController *)self compactArtworkSource];
    isCover = [compactArtworkSource isCover];

    if (!isCover)
    {
      goto LABEL_5;
    }

    compactUnhideBlock = [(BKEndOfBookCardTransitionAnimationController *)self compactArtworkSource];
    hide = [compactUnhideBlock hide];
    [(BKEndOfBookCardTransitionAnimationController *)self setCompactUnhideBlock:hide];
  }

LABEL_5:
  cardUnhideBlock = [(BKEndOfBookCardTransitionAnimationController *)self cardUnhideBlock];
  if (!cardUnhideBlock)
  {
    cardArtworkSource = [(BKEndOfBookCardTransitionAnimationController *)self cardArtworkSource];
    isCover2 = [cardArtworkSource isCover];

    if (!isCover2)
    {
      return;
    }

    cardArtworkSource2 = [(BKEndOfBookCardTransitionAnimationController *)self cardArtworkSource];
    hide2 = [cardArtworkSource2 hide];
    [(BKEndOfBookCardTransitionAnimationController *)self setCardUnhideBlock:hide2];

    cardUnhideBlock = cardArtworkSource2;
  }
}

- (void)unhideCovers
{
  compactUnhideBlock = [(BKEndOfBookCardTransitionAnimationController *)self compactUnhideBlock];
  v4 = compactUnhideBlock;
  if (compactUnhideBlock)
  {
    (*(compactUnhideBlock + 16))(compactUnhideBlock);
  }

  [(BKEndOfBookCardTransitionAnimationController *)self setCompactUnhideBlock:0];

  cardUnhideBlock = [(BKEndOfBookCardTransitionAnimationController *)self cardUnhideBlock];
  if (cardUnhideBlock)
  {
    cardUnhideBlock[2]();
  }

  [(BKEndOfBookCardTransitionAnimationController *)self setCardUnhideBlock:0];
}

- (void)_setupCardDropShadowForPresented:(BOOL)presented
{
  presentedCopy = presented;
  dropShadowView = [(BKEndOfBookCardTransitionAnimationController *)self dropShadowView];

  if (!dropShadowView)
  {
    compactViewController = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
    dropShadowView2 = [compactViewController dropShadowView];

    layer = [dropShadowView2 layer];
    v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    layer2 = [v9 layer];
    cornerCurve = [layer cornerCurve];
    [layer2 setCornerCurve:cornerCurve];

    [layer cornerRadius];
    [layer2 setCornerRadius:?];
    [layer shadowOffset];
    [layer2 setShadowOffset:?];
    [layer shadowRadius];
    [layer2 setShadowRadius:?];
    [layer2 setShadowColor:{objc_msgSend(layer, "shadowColor")}];
    [layer shadowOpacity];
    [layer2 setShadowOpacity:?];
    [layer2 setShadowPathIsBounds:1];
    cardViewController = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
    presentationController = [cardViewController presentationController];
    containerView = [presentationController containerView];

    cardViewController2 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
    presentationController2 = [cardViewController2 presentationController];
    presentedView = [presentationController2 presentedView];

    superview = [presentedView superview];

    if (superview == containerView)
    {
      [containerView insertSubview:v9 belowSubview:presentedView];
    }

    else
    {
      [containerView insertSubview:v9 atIndex:0];
    }

    [(BKEndOfBookCardTransitionAnimationController *)self setDropShadowView:v9];
  }

  if (presentedCopy)
  {
    cardViewController3 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
    view = [cardViewController3 view];

    cardViewController4 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
    presentationController3 = [cardViewController4 presentationController];
    [presentationController3 containerView];
  }

  else
  {
    compactViewController2 = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
    view = [compactViewController2 dropShadowView];

    cardViewController4 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
    presentationController3 = [cardViewController4 bc_ancestorFullScreenPresentingViewController];
    [presentationController3 view];
  }
  v24 = ;

  [view bounds];
  [v24 convertRect:view fromView:?];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  dropShadowView3 = [(BKEndOfBookCardTransitionAnimationController *)self dropShadowView];
  [dropShadowView3 setFrame:{v26, v28, v30, v32}];
  [dropShadowView3 setAlpha:!presentedCopy];
}

- (void)prepareForPresentation:(id)presentation
{
  presentationCopy = presentation;
  cardViewController = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
  transitioningCardContent = [cardViewController transitioningCardContent];

  if (transitioningCardContent)
  {
    [(BKEndOfBookCardTransitionAnimationController *)self setCardContent:transitioningCardContent];
    [(BKEndOfBookCardTransitionAnimationController *)self _prepareForPresentation:presentationCopy];
  }

  else
  {
    v6 = objc_retainBlock(presentationCopy);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }
}

- (void)_prepareForPresentation:(id)presentation
{
  presentationCopy = presentation;
  compactViewController = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
  cardViewController = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
  createCompactArtworkSource = [(BKEndOfBookCardTransitionAnimationController *)self createCompactArtworkSource];
  [(BKEndOfBookCardTransitionAnimationController *)self setCompactArtworkSource:createCompactArtworkSource];

  bc_windowForViewController = [compactViewController bc_windowForViewController];
  [cardViewController preferredContentSize];
  _UISheetFormSize();
  v9 = v8;
  v11 = v10;
  CGRectMakeWithSize();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  view = [cardViewController view];
  [view setBounds:{v13, v15, v17, v19}];

  objc_opt_class();
  cardNavigationController = [cardViewController cardNavigationController];
  topViewController = [cardNavigationController topViewController];
  v23 = BUDynamicCast();

  scrollView = [v23 scrollView];
  [scrollView setContentOffset:{0.0, 0.0}];

  compactViewController2 = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
  tui_effectiveSyncLayoutController = [compactViewController2 tui_effectiveSyncLayoutController];
  v54 = v23;
  [v23 configureWithSyncLayoutController:tui_effectiveSyncLayoutController];

  v27 = compactViewController;
  v52 = [compactViewController im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCardStackTransitioningCoverHost includePresented:0];
  if (v52)
  {
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1001BF330;
    v72[3] = &unk_100A033C8;
    v73 = cardViewController;
    [UIView performWithoutAnimation:v72];
  }

  v55 = cardViewController;
  v28 = dispatch_group_create();
  cardContent = [(BKEndOfBookCardTransitionAnimationController *)self cardContent];
  dispatch_group_enter(v28);
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1001BF374;
  v70[3] = &unk_100A033C8;
  v30 = v28;
  v71 = v30;
  v31 = [cardContent cardStackTransitionSuspendUpdatesAssertionUntilContentExceedsHeightWithCompletion:v70];
  cardStackTransitionSuspendLayoutAssertion = [cardContent cardStackTransitionSuspendLayoutAssertion];
  [(BKEndOfBookCardTransitionAnimationController *)self setSuspendLayoutAssertion:cardStackTransitionSuspendLayoutAssertion];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BF37C;
  block[3] = &unk_100A033C8;
  v69 = v31;
  v51 = v31;
  dispatch_group_notify(v30, &_dispatch_main_q, block);
  v33 = BCAugmentedExperienceSignpost();
  v34 = os_signpost_id_generate(v33);

  v35 = BCAugmentedExperienceSignpost();
  v36 = v35;
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v36, OS_SIGNPOST_INTERVAL_BEGIN, v34, "EOB.CardAnimation.prepareForOpen", "", buf, 2u);
  }

  v37 = BCAugmentedExperienceSignpost();
  v38 = os_signpost_id_generate(v37);

  v39 = BCAugmentedExperienceSignpost();
  v40 = v39;
  if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "EOB.CardAnimation.prepareForOpen.wait", "", buf, 2u);
  }

  kdebug_trace();
  v41 = dispatch_group_create();
  dispatch_group_enter(v41);
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1001BF458;
  v65[3] = &unk_100A0AA18;
  v66 = bc_windowForViewController;
  v42 = bc_windowForViewController;
  v43 = objc_retainBlock(v65);
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1001BF4CC;
  v62[3] = &unk_100A03440;
  v63 = cardContent;
  v44 = v41;
  v64 = v44;
  v45 = cardContent;
  [v45 sheetTransitioningCardContentPrepareForOpenWithViewController:compactViewController viewSize:v43 overrideTraitsBlock:3 numEntries:v62 completion:{v9, v11}];
  v46 = +[UIApplication sharedApplication];
  isRunningTest = [v46 isRunningTest];

  v48 = dispatch_get_global_queue(25, 0);
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1001BF5AC;
  v57[3] = &unk_100A09798;
  v61 = isRunningTest;
  v58 = v44;
  v59 = presentationCopy;
  v60 = v38;
  v49 = presentationCopy;
  v50 = v44;
  dispatch_async(v48, v57);

  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1001BF7A4;
  v56[3] = &unk_100A03560;
  v56[4] = v34;
  dispatch_group_notify(v50, &_dispatch_main_q, v56);
}

- (void)prepareForDismissal
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001BF8A4;
  v2[3] = &unk_100A033C8;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)setupAnimationsForPresentation
{
  compactViewController = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
  [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3010000000;
  v42 = 0;
  v43 = 0;
  v41 = &unk_1008EB423;
  v31 = 0;
  v32 = &v31;
  v33 = 0x5010000000;
  v34 = &unk_1008EB423;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001BFB9C;
  v21[3] = &unk_100A0AA40;
  v4 = v21[4] = self;
  v22 = v4;
  v24 = &v27;
  v5 = compactViewController;
  v23 = v5;
  v25 = &v38;
  v26 = &v31;
  [UIView performWithoutAnimation:v21];
  [(BKEndOfBookCardTransitionAnimationController *)self _setupCardDropShadowForPresented:1];
  [v4 updateCardSize];
  snapshotView = [(BKEndOfBookCardTransitionAnimationController *)self snapshotView];
  [snapshotView setupConstraintsToSuperview];

  v7 = v28[3];
  snapshotView2 = [(BKEndOfBookCardTransitionAnimationController *)self snapshotView];
  [snapshotView2 setSnapshotTopOffset:v7];

  if ([(BKEndOfBookCardTransitionAnimationController *)self isCoverTransition])
  {
    v9 = v39[4];
    v10 = v39[5];
    coverController = [(BKEndOfBookCardTransitionAnimationController *)self coverController];
    coverView = [coverController coverView];
    [coverView setCenter:{v9, v10}];

    v13 = *(v32 + 3);
    v18 = *(v32 + 2);
    v19 = v13;
    v20 = *(v32 + 4);
    coverController2 = [(BKEndOfBookCardTransitionAnimationController *)self coverController];
    coverView2 = [coverController2 coverView];
    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    [coverView2 setTransform:v17];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C010C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v38, 8);
}

- (void)setupAnimationsForDismissal
{
  compactViewController = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
  [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3010000000;
  v54 = 0;
  v55 = 0;
  v53 = &unk_1008EB423;
  v43 = 0;
  v44 = &v43;
  v45 = 0x5010000000;
  v46 = &unk_1008EB423;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1001C047C;
  v38[3] = &unk_100A0AA68;
  v4 = v38[4] = self;
  v39 = v4;
  v5 = compactViewController;
  v40 = v5;
  v41 = &v50;
  v42 = &v43;
  [UIView performWithoutAnimation:v38];
  [(BKEndOfBookCardTransitionAnimationController *)self _setupCardDropShadowForPresented:0];
  snapshotView = [(BKEndOfBookCardTransitionAnimationController *)self snapshotView];
  [snapshotView setupConstraintsToSuperview];

  snapshotView2 = [(BKEndOfBookCardTransitionAnimationController *)self snapshotView];
  [snapshotView2 snapshotTopOffset];
  v9 = v8;

  if (v9 != 0.0)
  {
    cardNavigationController = [v4 cardNavigationController];
    view = [cardNavigationController view];
    [view frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    snapshotView3 = [(BKEndOfBookCardTransitionAnimationController *)self snapshotView];
    [snapshotView3 snapshotTopOffset];
    v22 = v21;

    cardNavigationController2 = [v4 cardNavigationController];
    view2 = [cardNavigationController2 view];
    [view2 setFrame:{v13, v15 - v22, v17, v19}];

    snapshotView4 = [(BKEndOfBookCardTransitionAnimationController *)self snapshotView];
    [snapshotView4 setSnapshotTopOffset:0.0];
  }

  if ([(BKEndOfBookCardTransitionAnimationController *)self isCoverTransition])
  {
    v26 = v51[4];
    v27 = v51[5];
    coverController = [(BKEndOfBookCardTransitionAnimationController *)self coverController];
    coverView = [coverController coverView];
    [coverView setCenter:{v26, v27}];

    v30 = *(v44 + 3);
    v35 = *(v44 + 2);
    v36 = v30;
    v37 = *(v44 + 4);
    coverController2 = [(BKEndOfBookCardTransitionAnimationController *)self coverController];
    coverView2 = [coverController2 coverView];
    v34[0] = v35;
    v34[1] = v36;
    v34[2] = v37;
    [coverView2 setTransform:v34];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C089C;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v50, 8);
}

- (void)finalizeAnimationsForPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  [(BKEndOfBookCardTransitionAnimationController *)self setSuspendLayoutAssertion:0];
  cardContent = [(BKEndOfBookCardTransitionAnimationController *)self cardContent];
  [cardContent cardStackTransitioningCardContentFinalizeForOpen];

  [(BKEndOfBookCardTransitionAnimationController *)self setCardContent:0];

  [(BKEndOfBookCardTransitionAnimationController *)self _finalizePresentation:presentationCopy];
}

- (void)finalizeAnimationsForDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  cardContent = [(BKEndOfBookCardTransitionAnimationController *)self cardContent];
  [cardContent cardStackTransitioningCardContentFinalizeForDismiss];

  [(BKEndOfBookCardTransitionAnimationController *)self setCardContent:0];

  [(BKEndOfBookCardTransitionAnimationController *)self _finalizePresentation:!dismissalCopy];
}

- (double)_cardInitialTopOffset
{
  objc_opt_class();
  cardViewController = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
  cardNavigationController = [cardViewController cardNavigationController];
  topViewController = [cardNavigationController topViewController];
  v6 = BUDynamicCast();

  cardContent = [(BKEndOfBookCardTransitionAnimationController *)self cardContent];

  v8 = 0.0;
  if (cardContent && v6)
  {
    content = [v6 content];
    entries = [content entries];
    firstObject = [entries firstObject];

    uuid = [firstObject uuid];
    v13 = [TUIRenderReferenceQuery queryWithUUID:uuid uid:0 refId:@"root-box" refInstance:0];

    v14 = [v6 renderReferencesMatchingQuery:v13];
    allKeys = [v14 allKeys];
    firstObject2 = [allKeys firstObject];

    if (firstObject2)
    {
      v17 = [v14 objectForKeyedSubscript:firstObject2];
      firstObject3 = [v17 firstObject];

      if (firstObject3)
      {
        [firstObject3 size];
        v8 = v19;
      }
    }
  }

  return v8;
}

- (void)_animateContentCrossfade:(BOOL)crossfade
{
  crossfadeCopy = crossfade;
  LODWORD(v3) = 1051260355;
  LODWORD(v4) = 1059816735;
  LODWORD(v5) = 1.0;
  v8 = [CAMediaTimingFunction functionWithControlPoints:v3];
  v9 = [[UICubicTimingParameters alloc] initWithCustomCurve:v8];
  v10 = [[UIViewPropertyAnimator alloc] initWithDuration:v9 timingParameters:0.12];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001C0D0C;
  v20[3] = &unk_100A044C8;
  v20[4] = self;
  v21 = crossfadeCopy;
  [v10 addAnimations:v20];
  v11 = [[UIViewPropertyAnimator alloc] initWithDuration:v9 timingParameters:0.17];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001C0DC4;
  v18[3] = &unk_100A044C8;
  v18[4] = self;
  v19 = crossfadeCopy;
  [v11 addAnimations:v18];
  if (crossfadeCopy)
  {
    [v10 startAnimation];
    v12 = 0.1;
    v13 = v11;
  }

  else
  {
    [UITransitionView defaultDurationForTransition:8];
    v15 = v14;
    [v11 duration];
    [v11 startAnimationAfterDelay:v15 - v16 + -0.2];
    [v10 duration];
    v12 = v15 - v17 + -0.1;
    v13 = v10;
  }

  [v13 startAnimationAfterDelay:v12];
}

- (void)_removeTransitioningViews
{
  [(BKEndOfBookCardTransitionAnimationController *)self setDropShadowView:0];
  [(BKEndOfBookCardTransitionAnimationController *)self setSnapshotView:0];
  [(BKEndOfBookCardTransitionAnimationController *)self setCoverController:0];
  [(BKEndOfBookCardTransitionAnimationController *)self setCompactArtworkSource:0];

  [(BKEndOfBookCardTransitionAnimationController *)self setCardArtworkSource:0];
}

- (void)_finalizePresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  compactViewController = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
  view = [compactViewController view];
  [view setHidden:presentationCopy];

  [(BKEndOfBookCardTransitionAnimationController *)self unhideCovers];

  [(BKEndOfBookCardTransitionAnimationController *)self _removeTransitioningViews];
}

- (void)dealloc
{
  [(BKEndOfBookCardTransitionAnimationController *)self unhideCovers];
  [(BKEndOfBookCardTransitionAnimationController *)self _removeTransitioningViews];
  v3.receiver = self;
  v3.super_class = BKEndOfBookCardTransitionAnimationController;
  [(BKEndOfBookCardTransitionAnimationController *)&v3 dealloc];
}

- (BKEndOfBookCompactViewController)compactViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_compactViewController);

  return WeakRetained;
}

- (BKEndOfBookCardViewController)cardViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_cardViewController);

  return WeakRetained;
}

@end