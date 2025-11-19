@interface BKEndOfBookCardTransitionAnimationController
- (BKEndOfBookCardTransitionAnimationController)initWithCompactViewController:(id)a3 cardViewController:(id)a4;
- (BKEndOfBookCardViewController)cardViewController;
- (BKEndOfBookCompactViewController)compactViewController;
- (BOOL)isCompositeCompactArtwork;
- (BOOL)isCoverTransition;
- (double)_cardInitialTopOffset;
- (id)createCardArtworkSource;
- (id)createCompactArtworkSource;
- (void)_animateContentCrossfade:(BOOL)a3;
- (void)_finalizePresentation:(BOOL)a3;
- (void)_prepareForPresentation:(id)a3;
- (void)_removeTransitioningViews;
- (void)_setupCardDropShadowForPresented:(BOOL)a3;
- (void)dealloc;
- (void)finalizeAnimationsForDismissal:(BOOL)a3;
- (void)finalizeAnimationsForPresentation:(BOOL)a3;
- (void)hideCovers;
- (void)prepareForDismissal;
- (void)prepareForPresentation:(id)a3;
- (void)setCoverController:(id)a3;
- (void)setDropShadowView:(id)a3;
- (void)setSnapshotView:(id)a3;
- (void)setupAnimationsForDismissal;
- (void)setupAnimationsForPresentation;
- (void)unhideCovers;
@end

@implementation BKEndOfBookCardTransitionAnimationController

- (BKEndOfBookCardTransitionAnimationController)initWithCompactViewController:(id)a3 cardViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BKEndOfBookCardTransitionAnimationController;
  v8 = [(BKEndOfBookCardTransitionAnimationController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_compactViewController, v6);
    objc_storeWeak(&v9->_cardViewController, v7);
  }

  return v9;
}

- (BOOL)isCoverTransition
{
  v3 = [(BKEndOfBookCardTransitionAnimationController *)self cardContent];
  if (v3)
  {
    v4 = v3;
    v5 = [(BKEndOfBookCardTransitionAnimationController *)self compactArtworkSource];
    if (!v5)
    {
      v15 = 0;
LABEL_8:

      return v15;
    }

    v6 = v5;
    v7 = [(BKEndOfBookCardTransitionAnimationController *)self cardArtworkSource];

    if (v7)
    {
      v8 = [(BKEndOfBookCardTransitionAnimationController *)self compactArtworkSource];
      v9 = [v8 isCover];

      if (!v9)
      {
        return 1;
      }

      v4 = [(BKEndOfBookCardTransitionAnimationController *)self compactArtworkSource];
      v10 = [v4 identifier];
      v11 = [v10 refInstance];
      v12 = [(BKEndOfBookCardTransitionAnimationController *)self cardArtworkSource];
      v13 = [v12 identifier];
      v14 = [v13 refInstance];
      v15 = [v11 isEqualToString:v14];

      goto LABEL_8;
    }
  }

  return 0;
}

- (BOOL)isCompositeCompactArtwork
{
  v2 = [(BKEndOfBookCardTransitionAnimationController *)self compactArtworkSource];
  v3 = [v2 isCover];

  return v3 ^ 1;
}

- (void)setDropShadowView:(id)a3
{
  v5 = a3;
  dropShadowView = self->_dropShadowView;
  p_dropShadowView = &self->_dropShadowView;
  v6 = dropShadowView;
  if (dropShadowView != v5)
  {
    v9 = v5;
    [(UIView *)v6 removeFromSuperview];
    objc_storeStrong(p_dropShadowView, a3);
    v5 = v9;
  }
}

- (void)setSnapshotView:(id)a3
{
  v5 = a3;
  snapshotView = self->_snapshotView;
  p_snapshotView = &self->_snapshotView;
  v6 = snapshotView;
  if (snapshotView != v5)
  {
    v9 = v5;
    [(_BKEndOfBookCardTransitionSnapshotView *)v6 removeFromSuperview];
    objc_storeStrong(p_snapshotView, a3);
    v5 = v9;
  }
}

- (void)setCoverController:(id)a3
{
  v5 = a3;
  coverController = self->_coverController;
  p_coverController = &self->_coverController;
  v6 = coverController;
  if (coverController != v5)
  {
    v10 = v5;
    v9 = [(BCSheetTransitionCoverController *)v6 coverView];
    [v9 removeFromSuperview];

    objc_storeStrong(p_coverController, a3);
    v5 = v10;
  }
}

- (id)createCompactArtworkSource
{
  v3 = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
  v4 = [v3 feedViewController];
  v5 = [v4 artworkSourceInEntryWithIndex:0 refId:@"featured-cover" refInstance:0 isCover:1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
    v9 = [v8 feedViewController];
    v7 = [v9 artworkSourceInEntryWithIndex:0 refId:@"featured-artwork" refInstance:0 isCover:0];
  }

  return v7;
}

- (id)createCardArtworkSource
{
  objc_opt_class();
  v3 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
  v4 = [v3 cardNavigationController];
  v5 = [v4 topViewController];
  v6 = BUDynamicCast();

  v7 = [v6 sheetTransitioningCardContentArtworkSourceInEntryWithIndex:1];

  return v7;
}

- (void)hideCovers
{
  v3 = [(BKEndOfBookCardTransitionAnimationController *)self compactUnhideBlock];
  if (!v3)
  {
    v4 = [(BKEndOfBookCardTransitionAnimationController *)self compactArtworkSource];
    v5 = [v4 isCover];

    if (!v5)
    {
      goto LABEL_5;
    }

    v3 = [(BKEndOfBookCardTransitionAnimationController *)self compactArtworkSource];
    v6 = [v3 hide];
    [(BKEndOfBookCardTransitionAnimationController *)self setCompactUnhideBlock:v6];
  }

LABEL_5:
  v7 = [(BKEndOfBookCardTransitionAnimationController *)self cardUnhideBlock];
  if (!v7)
  {
    v8 = [(BKEndOfBookCardTransitionAnimationController *)self cardArtworkSource];
    v9 = [v8 isCover];

    if (!v9)
    {
      return;
    }

    v11 = [(BKEndOfBookCardTransitionAnimationController *)self cardArtworkSource];
    v10 = [v11 hide];
    [(BKEndOfBookCardTransitionAnimationController *)self setCardUnhideBlock:v10];

    v7 = v11;
  }
}

- (void)unhideCovers
{
  v3 = [(BKEndOfBookCardTransitionAnimationController *)self compactUnhideBlock];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
  }

  [(BKEndOfBookCardTransitionAnimationController *)self setCompactUnhideBlock:0];

  v5 = [(BKEndOfBookCardTransitionAnimationController *)self cardUnhideBlock];
  if (v5)
  {
    v5[2]();
  }

  [(BKEndOfBookCardTransitionAnimationController *)self setCardUnhideBlock:0];
}

- (void)_setupCardDropShadowForPresented:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKEndOfBookCardTransitionAnimationController *)self dropShadowView];

  if (!v5)
  {
    v6 = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
    v7 = [v6 dropShadowView];

    v8 = [v7 layer];
    v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v10 = [v9 layer];
    v11 = [v8 cornerCurve];
    [v10 setCornerCurve:v11];

    [v8 cornerRadius];
    [v10 setCornerRadius:?];
    [v8 shadowOffset];
    [v10 setShadowOffset:?];
    [v8 shadowRadius];
    [v10 setShadowRadius:?];
    [v10 setShadowColor:{objc_msgSend(v8, "shadowColor")}];
    [v8 shadowOpacity];
    [v10 setShadowOpacity:?];
    [v10 setShadowPathIsBounds:1];
    v12 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
    v13 = [v12 presentationController];
    v14 = [v13 containerView];

    v15 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
    v16 = [v15 presentationController];
    v17 = [v16 presentedView];

    v18 = [v17 superview];

    if (v18 == v14)
    {
      [v14 insertSubview:v9 belowSubview:v17];
    }

    else
    {
      [v14 insertSubview:v9 atIndex:0];
    }

    [(BKEndOfBookCardTransitionAnimationController *)self setDropShadowView:v9];
  }

  if (v3)
  {
    v19 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
    v20 = [v19 view];

    v21 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
    v22 = [v21 presentationController];
    [v22 containerView];
  }

  else
  {
    v23 = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
    v20 = [v23 dropShadowView];

    v21 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
    v22 = [v21 bc_ancestorFullScreenPresentingViewController];
    [v22 view];
  }
  v24 = ;

  [v20 bounds];
  [v24 convertRect:v20 fromView:?];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = [(BKEndOfBookCardTransitionAnimationController *)self dropShadowView];
  [v33 setFrame:{v26, v28, v30, v32}];
  [v33 setAlpha:!v3];
}

- (void)prepareForPresentation:(id)a3
{
  v8 = a3;
  v4 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
  v5 = [v4 transitioningCardContent];

  if (v5)
  {
    [(BKEndOfBookCardTransitionAnimationController *)self setCardContent:v5];
    [(BKEndOfBookCardTransitionAnimationController *)self _prepareForPresentation:v8];
  }

  else
  {
    v6 = objc_retainBlock(v8);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }
}

- (void)_prepareForPresentation:(id)a3
{
  v53 = a3;
  v4 = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
  v5 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
  v6 = [(BKEndOfBookCardTransitionAnimationController *)self createCompactArtworkSource];
  [(BKEndOfBookCardTransitionAnimationController *)self setCompactArtworkSource:v6];

  v7 = [v4 bc_windowForViewController];
  [v5 preferredContentSize];
  _UISheetFormSize();
  v9 = v8;
  v11 = v10;
  CGRectMakeWithSize();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v5 view];
  [v20 setBounds:{v13, v15, v17, v19}];

  objc_opt_class();
  v21 = [v5 cardNavigationController];
  v22 = [v21 topViewController];
  v23 = BUDynamicCast();

  v24 = [v23 scrollView];
  [v24 setContentOffset:{0.0, 0.0}];

  v25 = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
  v26 = [v25 tui_effectiveSyncLayoutController];
  v54 = v23;
  [v23 configureWithSyncLayoutController:v26];

  v27 = v4;
  v52 = [v4 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCardStackTransitioningCoverHost includePresented:0];
  if (v52)
  {
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1001BF330;
    v72[3] = &unk_100A033C8;
    v73 = v5;
    [UIView performWithoutAnimation:v72];
  }

  v55 = v5;
  v28 = dispatch_group_create();
  v29 = [(BKEndOfBookCardTransitionAnimationController *)self cardContent];
  dispatch_group_enter(v28);
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1001BF374;
  v70[3] = &unk_100A033C8;
  v30 = v28;
  v71 = v30;
  v31 = [v29 cardStackTransitionSuspendUpdatesAssertionUntilContentExceedsHeightWithCompletion:v70];
  v32 = [v29 cardStackTransitionSuspendLayoutAssertion];
  [(BKEndOfBookCardTransitionAnimationController *)self setSuspendLayoutAssertion:v32];

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
  v66 = v7;
  v42 = v7;
  v43 = objc_retainBlock(v65);
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1001BF4CC;
  v62[3] = &unk_100A03440;
  v63 = v29;
  v44 = v41;
  v64 = v44;
  v45 = v29;
  [v45 sheetTransitioningCardContentPrepareForOpenWithViewController:v4 viewSize:v43 overrideTraitsBlock:3 numEntries:v62 completion:{v9, v11}];
  v46 = +[UIApplication sharedApplication];
  v47 = [v46 isRunningTest];

  v48 = dispatch_get_global_queue(25, 0);
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1001BF5AC;
  v57[3] = &unk_100A09798;
  v61 = v47;
  v58 = v44;
  v59 = v53;
  v60 = v38;
  v49 = v53;
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
  v3 = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
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
  v5 = v3;
  v23 = v5;
  v25 = &v38;
  v26 = &v31;
  [UIView performWithoutAnimation:v21];
  [(BKEndOfBookCardTransitionAnimationController *)self _setupCardDropShadowForPresented:1];
  [v4 updateCardSize];
  v6 = [(BKEndOfBookCardTransitionAnimationController *)self snapshotView];
  [v6 setupConstraintsToSuperview];

  v7 = v28[3];
  v8 = [(BKEndOfBookCardTransitionAnimationController *)self snapshotView];
  [v8 setSnapshotTopOffset:v7];

  if ([(BKEndOfBookCardTransitionAnimationController *)self isCoverTransition])
  {
    v9 = v39[4];
    v10 = v39[5];
    v11 = [(BKEndOfBookCardTransitionAnimationController *)self coverController];
    v12 = [v11 coverView];
    [v12 setCenter:{v9, v10}];

    v13 = *(v32 + 3);
    v18 = *(v32 + 2);
    v19 = v13;
    v20 = *(v32 + 4);
    v14 = [(BKEndOfBookCardTransitionAnimationController *)self coverController];
    v15 = [v14 coverView];
    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    [v15 setTransform:v17];
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
  v3 = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
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
  v5 = v3;
  v40 = v5;
  v41 = &v50;
  v42 = &v43;
  [UIView performWithoutAnimation:v38];
  [(BKEndOfBookCardTransitionAnimationController *)self _setupCardDropShadowForPresented:0];
  v6 = [(BKEndOfBookCardTransitionAnimationController *)self snapshotView];
  [v6 setupConstraintsToSuperview];

  v7 = [(BKEndOfBookCardTransitionAnimationController *)self snapshotView];
  [v7 snapshotTopOffset];
  v9 = v8;

  if (v9 != 0.0)
  {
    v10 = [v4 cardNavigationController];
    v11 = [v10 view];
    [v11 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [(BKEndOfBookCardTransitionAnimationController *)self snapshotView];
    [v20 snapshotTopOffset];
    v22 = v21;

    v23 = [v4 cardNavigationController];
    v24 = [v23 view];
    [v24 setFrame:{v13, v15 - v22, v17, v19}];

    v25 = [(BKEndOfBookCardTransitionAnimationController *)self snapshotView];
    [v25 setSnapshotTopOffset:0.0];
  }

  if ([(BKEndOfBookCardTransitionAnimationController *)self isCoverTransition])
  {
    v26 = v51[4];
    v27 = v51[5];
    v28 = [(BKEndOfBookCardTransitionAnimationController *)self coverController];
    v29 = [v28 coverView];
    [v29 setCenter:{v26, v27}];

    v30 = *(v44 + 3);
    v35 = *(v44 + 2);
    v36 = v30;
    v37 = *(v44 + 4);
    v31 = [(BKEndOfBookCardTransitionAnimationController *)self coverController];
    v32 = [v31 coverView];
    v34[0] = v35;
    v34[1] = v36;
    v34[2] = v37;
    [v32 setTransform:v34];
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

- (void)finalizeAnimationsForPresentation:(BOOL)a3
{
  v3 = a3;
  [(BKEndOfBookCardTransitionAnimationController *)self setSuspendLayoutAssertion:0];
  v5 = [(BKEndOfBookCardTransitionAnimationController *)self cardContent];
  [v5 cardStackTransitioningCardContentFinalizeForOpen];

  [(BKEndOfBookCardTransitionAnimationController *)self setCardContent:0];

  [(BKEndOfBookCardTransitionAnimationController *)self _finalizePresentation:v3];
}

- (void)finalizeAnimationsForDismissal:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKEndOfBookCardTransitionAnimationController *)self cardContent];
  [v5 cardStackTransitioningCardContentFinalizeForDismiss];

  [(BKEndOfBookCardTransitionAnimationController *)self setCardContent:0];

  [(BKEndOfBookCardTransitionAnimationController *)self _finalizePresentation:!v3];
}

- (double)_cardInitialTopOffset
{
  objc_opt_class();
  v3 = [(BKEndOfBookCardTransitionAnimationController *)self cardViewController];
  v4 = [v3 cardNavigationController];
  v5 = [v4 topViewController];
  v6 = BUDynamicCast();

  v7 = [(BKEndOfBookCardTransitionAnimationController *)self cardContent];

  v8 = 0.0;
  if (v7 && v6)
  {
    v9 = [v6 content];
    v10 = [v9 entries];
    v11 = [v10 firstObject];

    v12 = [v11 uuid];
    v13 = [TUIRenderReferenceQuery queryWithUUID:v12 uid:0 refId:@"root-box" refInstance:0];

    v14 = [v6 renderReferencesMatchingQuery:v13];
    v15 = [v14 allKeys];
    v16 = [v15 firstObject];

    if (v16)
    {
      v17 = [v14 objectForKeyedSubscript:v16];
      v18 = [v17 firstObject];

      if (v18)
      {
        [v18 size];
        v8 = v19;
      }
    }
  }

  return v8;
}

- (void)_animateContentCrossfade:(BOOL)a3
{
  v6 = a3;
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
  v21 = v6;
  [v10 addAnimations:v20];
  v11 = [[UIViewPropertyAnimator alloc] initWithDuration:v9 timingParameters:0.17];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001C0DC4;
  v18[3] = &unk_100A044C8;
  v18[4] = self;
  v19 = v6;
  [v11 addAnimations:v18];
  if (v6)
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

- (void)_finalizePresentation:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKEndOfBookCardTransitionAnimationController *)self compactViewController];
  v6 = [v5 view];
  [v6 setHidden:v3];

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