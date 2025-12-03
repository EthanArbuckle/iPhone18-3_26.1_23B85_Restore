@interface ZWZoomLensViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)shouldPanZoomContentForAxis:(int64_t)axis delta:(CGPoint)delta edgeMask:(unint64_t)mask;
- (CGPoint)_lensDragMultiplier;
- (CGPoint)dummyScrollViewDefaultOffset;
- (CGPoint)dummyScrollViewOffsetForSlug;
- (CGPoint)maximumPanOffsetWithZoomFactor:(double)factor;
- (CGPoint)offsetByPanningToPoint:(CGPoint)point zoomFactor:(double)factor;
- (CGPoint)offsetByPanningToRect:(CGRect)rect zoomFactor:(double)factor;
- (CGPoint)offsetByPanningWithDelta:(CGPoint)delta axis:(int64_t)axis zoomFactor:(double)factor;
- (CGPoint)offsetIgnoringValidOffsetConstraintsByPanningToRect:(CGRect)rect zoomFacotr:(double)facotr;
- (CGPoint)offsetIgnoringValidOffsetConstraintsByPanningWithDelta:(CGPoint)delta axis:(int64_t)axis zoomFacotr:(double)facotr;
- (CGPoint)validPanOffsetForProposedOffset:(CGPoint)offset proposedZoomFactor:(double)factor;
- (CGPoint)zoomPanOffset;
- (CGSize)dummyScrollViewContentSize;
- (NSString)identifier;
- (UIScreen)screen;
- (ZWZoomLensViewController)initWithZoomFactor:(double)factor zoomPanOffset:(CGPoint)offset lensEffect:(id)effect screen:(id)screen;
- (ZWZoomLensViewControllerDelegate)delegate;
- (id)dummyScrollViewPanGestureRecognizer;
- (void)_handleLongPress:(id)press;
- (void)_updateLensChromeVisibility:(BOOL)visibility animated:(BOOL)animated completion:(id)completion;
- (void)dealloc;
- (void)loadView;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setInStandbyMode:(BOOL)mode;
- (void)updateLensEffect:(id)effect animated:(BOOL)animated completion:(id)completion;
- (void)updateStandbyMode:(BOOL)mode zoomFactor:(double)factor panOffset:(CGPoint)offset lensEffect:(id)effect animated:(BOOL)animated completion:(id)completion;
- (void)updateZoomFactor:(double)factor panOffset:(CGPoint)offset animated:(BOOL)animated animationDuration:(double)duration completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation ZWZoomLensViewController

- (ZWZoomLensViewController)initWithZoomFactor:(double)factor zoomPanOffset:(CGPoint)offset lensEffect:(id)effect screen:(id)screen
{
  y = offset.y;
  x = offset.x;
  effectCopy = effect;
  screenCopy = screen;
  v25.receiver = self;
  v25.super_class = ZWZoomLensViewController;
  v13 = [(ZWZoomLensViewController *)&v25 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    [(ZWZoomLensViewController *)v13 setZoomFactor:factor];
    [(ZWZoomLensViewController *)v14 setZoomPanOffset:x, y];
    [(ZWZoomLensViewController *)v14 setLensEffect:effectCopy];
    [(ZWZoomLensViewController *)v14 setScreen:screenCopy];
    v14->_inStandbyMode = 1;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__0;
    v23[4] = __Block_byref_object_dispose__0;
    v15 = v14;
    v24 = v15;
    v16 = +[AXSpringBoardServer server];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __79__ZWZoomLensViewController_initWithZoomFactor_zoomPanOffset_lensEffect_screen___block_invoke;
    v20[3] = &unk_79228;
    v21 = v15;
    v22 = v23;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __79__ZWZoomLensViewController_initWithZoomFactor_zoomPanOffset_lensEffect_screen___block_invoke_5;
    v18[3] = &unk_79250;
    v19 = v21;
    [v16 registerSpringBoardActionHandler:v20 withIdentifierCallback:v18];

    _Block_object_dispose(v23, 8);
  }

  return v14;
}

void __79__ZWZoomLensViewController_initWithZoomFactor_zoomPanOffset_lensEffect_screen___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 6)
  {
    v3 = [*(a1 + 32) lensEffect];
    v4 = [v3 isEqualToString:AXZoomLensEffectLowLight];

    if (v4)
    {
      [*(*(*(a1 + 40) + 8) + 40) updateLensEffect:AXZoomLensEffectNone animated:0 completion:&__block_literal_global_4];
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

- (void)loadView
{
  v24 = [[ZWLensRootView alloc] initWithDelegate:self];
  [(ZWZoomLensViewController *)self setView:v24];
  [(ZWLensRootView *)v24 setAccessibilityContainerType:4];
  v3 = ZWLocString(@"ZW_LENS_TOUCH_CONTAINER_LABEL");
  [(ZWLensRootView *)v24 setAccessibilityLabel:v3];

  [(ZWLensRootView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [ZWLensZoomView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(ZWLensZoomView *)v4 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ZWZoomLensViewController *)self setLensZoomView:height];
  [(ZWLensRootView *)v24 addSubview:height];
  v9 = +[AXSettings sharedInstance];
  zoomCurrentLensEffect = [v9 zoomCurrentLensEffect];
  [(ZWLensZoomView *)height updateLensEffect:zoomCurrentLensEffect animated:0 completion:0];

  [(ZWLensZoomView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  height2 = [[ZWCancelButtonTouchesScrollView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ZWLensRootView *)v24 addSubview:height2];
  [(ZWCancelButtonTouchesScrollView *)height2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ZWCancelButtonTouchesScrollView *)height2 setCanCancelContentTouches:1];
  [(ZWCancelButtonTouchesScrollView *)height2 setContentInsetAdjustmentBehavior:2];
  LODWORD(v12) = AXResistAllCompressingAndStretching[0];
  LODWORD(v13) = AXResistAllCompressingAndStretching[1];
  LODWORD(v14) = AXResistAllCompressingAndStretching[2];
  LODWORD(v15) = AXResistAllCompressingAndStretching[3];
  [(ZWCancelButtonTouchesScrollView *)height2 ax_setContentHuggingAndCompressionResistance:v12, v13, v14, v15];
  v16 = [(ZWCancelButtonTouchesScrollView *)height2 ax_pinConstraintsInAllDimensionsToView:v24];
  [(ZWZoomLensViewController *)self setDummyScrollView:height2];
  [(ZWCancelButtonTouchesScrollView *)height2 setDelegate:self];
  [(ZWZoomLensViewController *)self dummyScrollViewContentSize];
  [(ZWCancelButtonTouchesScrollView *)height2 setContentSize:?];
  [(ZWZoomLensViewController *)self dummyScrollViewDefaultOffset];
  [(ZWCancelButtonTouchesScrollView *)height2 setContentOffset:?];
  [(ZWCancelButtonTouchesScrollView *)height2 setBounces:0];
  [(ZWCancelButtonTouchesScrollView *)height2 setHidden:1];
  panGestureRecognizer = [(ZWCancelButtonTouchesScrollView *)height2 panGestureRecognizer];
  [(ZWLensRootView *)v24 addGestureRecognizer:panGestureRecognizer];

  v18 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_handleLongPress:"];
  [(ZWZoomLensViewController *)self setLongPressGestureRecognizer:v18];
  [v18 setDelegate:self];
  [v18 setMinimumPressDuration:0.02];
  [v18 setAllowableMovement:10000.0];
  [(ZWLensRootView *)v24 addGestureRecognizer:v18];
  v19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTap:"];
  [(ZWZoomLensViewController *)self setTapGestureRecognizer:v19];
  [(ZWLensRootView *)v24 addGestureRecognizer:v19];
  [v19 setDelegate:self];
  [(ZWZoomLensViewController *)self zoomFactor];
  v21 = v20;
  [(ZWZoomLensViewController *)self zoomPanOffset];
  [(ZWZoomLensViewController *)self updateZoomFactor:0 panOffset:0 animated:v21 animationDuration:v22 completion:v23, -1.0];
}

- (void)dealloc
{
  v3 = +[AXSpringBoardServer server];
  screenshotActionHandlerIdentifier = [(ZWZoomLensViewController *)self screenshotActionHandlerIdentifier];
  [v3 removeActionHandler:screenshotActionHandlerIdentifier];

  v5.receiver = self;
  v5.super_class = ZWZoomLensViewController;
  [(ZWZoomLensViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ZWZoomLensViewController;
  [(ZWZoomLensViewController *)&v3 viewDidLoad];
  [(ZWZoomLensViewController *)self _applyInitialLayoutConstraints];
}

- (void)updateZoomFactor:(double)factor panOffset:(CGPoint)offset animated:(BOOL)animated animationDuration:(double)duration completion:(id)completion
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  completionCopy = completion;
  [(ZWZoomLensViewController *)self setZoomFactor:factor];
  [(ZWZoomLensViewController *)self setZoomPanOffset:x, y];
  [(ZWZoomLensViewController *)self zoomFactor];
  if (vabdd_f64(v13, AXZoomMinimumZoomLevel) <= 0.0001 && [(ZWZoomLensViewController *)self _minimumZoomIndistinguishableFromStandbyMode])
  {
    [(ZWZoomLensViewController *)self setInStandbyMode:1];
  }

  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];

  if (lensZoomView)
  {
    lensZoomView2 = [(ZWZoomLensViewController *)self lensZoomView];
    [lensZoomView2 updateZoomPanOffset:-[ZWZoomLensViewController _shouldRoundLensCorners](self zoomFactor:"_shouldRoundLensCorners") roundedLensCorners:animatedCopy animated:completionCopy animationDuration:x completion:{y, factor, duration}];
  }

  else
  {
    v16 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    (*(completionCopy + 2))(completionCopy);
  }

  v16 = completionCopy;
LABEL_9:
}

- (void)updateLensEffect:(id)effect animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  effectCopy = effect;
  completionCopy = completion;
  [(ZWZoomLensViewController *)self setLensEffect:effectCopy];
  lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];

  if (lensZoomView)
  {
    lensZoomView2 = [(ZWZoomLensViewController *)self lensZoomView];
    [lensZoomView2 updateLensEffect:effectCopy animated:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)setInStandbyMode:(BOOL)mode
{
  modeCopy = mode;
  inStandbyMode = self->_inStandbyMode;
  self->_inStandbyMode = mode;
  v6 = +[ZWCoalescedSettings sharedInstance];
  [v6 setZoomInStandby:modeCopy];

  if (inStandbyMode != modeCopy)
  {
    delegate = [(ZWZoomLensViewController *)self delegate];
    [delegate zoomLensViewControllerDidChangeStandbyMode:self];
  }

  dummyScrollView = [(ZWZoomLensViewController *)self dummyScrollView];
  dummyScrollView2 = [(ZWZoomLensViewController *)self dummyScrollView];
  [dummyScrollView2 contentOffset];
  [dummyScrollView setContentOffset:0 animated:?];
}

- (void)updateStandbyMode:(BOOL)mode zoomFactor:(double)factor panOffset:(CGPoint)offset lensEffect:(id)effect animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  modeCopy = mode;
  effectCopy = effect;
  completionCopy = completion;
  if (completionCopy)
  {
    v17 = ZOOMLogCommon();
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UpdateStandbyMode", &unk_76116, buf, 2u);
    }
  }

  if (vabdd_f64(factor, AXZoomMinimumZoomLevel) <= 0.0001)
  {
    modeCopy = [(ZWZoomLensViewController *)self _minimumZoomIndistinguishableFromStandbyMode]| modeCopy;
  }

  [(ZWZoomLensViewController *)self setInStandbyMode:modeCopy];
  [(ZWZoomLensViewController *)self setZoomFactor:factor];
  [(ZWZoomLensViewController *)self setZoomPanOffset:x, y];
  [(ZWZoomLensViewController *)self setLensEffect:effectCopy];
  standbyFinishedTransitioningUnitTestCallback = [(ZWZoomLensViewController *)self standbyFinishedTransitioningUnitTestCallback];

  if (!standbyFinishedTransitioningUnitTestCallback)
  {
LABEL_10:
    if (!animatedCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (completionCopy)
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke;
    v39[3] = &unk_79040;
    v39[4] = self;
    v40 = completionCopy;
    completionCopy = objc_retainBlock(v39);

    goto LABEL_10;
  }

  completionCopy = [(ZWZoomLensViewController *)self standbyFinishedTransitioningUnitTestCallback];
  if (animatedCopy)
  {
LABEL_11:
    delegate = [(ZWZoomLensViewController *)self delegate];
    [delegate didStartAnimation];
  }

LABEL_12:
  if (completionCopy)
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_2;
    v37[3] = &unk_79040;
    v37[4] = self;
    v38 = completionCopy;
    completionCopy = objc_retainBlock(v37);
  }

  view = [(ZWZoomLensViewController *)self view];
  window = [view window];

  if (window)
  {
    view2 = [(ZWZoomLensViewController *)self view];
    [view2 layoutIfNeeded];
  }

  if (modeCopy)
  {
    _shouldDisableLensEffectsForStandbyMode = [(ZWZoomLensViewController *)self _shouldDisableLensEffectsForStandbyMode];
    lensZoomView = [(ZWZoomLensViewController *)self lensZoomView];
    if (_shouldDisableLensEffectsForStandbyMode)
    {
      v25 = AXZoomLensEffectNone;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_303;
      v34[3] = &unk_78F80;
      v34[4] = self;
      v36 = animatedCopy;
      v26 = &v35;
      v35 = completionCopy;
      [lensZoomView updateLensEffect:v25 animated:animatedCopy completion:v34];
    }

    else
    {
      v27 = AXZoomMinimumZoomLevel;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_4;
      v31[3] = &unk_78F80;
      v31[4] = self;
      v33 = animatedCopy;
      v26 = &v32;
      v32 = completionCopy;
      [lensZoomView updateZoomPanOffset:0 zoomFactor:animatedCopy roundedLensCorners:v31 animated:CGPointZero.x animationDuration:CGPointZero.y completion:{v27, -1.0}];
    }
  }

  else
  {
    [(ZWZoomLensViewController *)self _updateLensChromeVisibility:1 animated:animatedCopy completion:0];
    lensZoomView = [(ZWZoomLensViewController *)self delegate];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_6;
    v28[3] = &unk_78F80;
    v28[4] = self;
    v30 = animatedCopy;
    v26 = &v29;
    v29 = completionCopy;
    [lensZoomView zoomLensViewControllerUpdateUIForStandby:self completion:v28];
  }
}

void __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) standbyFinishedTransitioningUnitTestCallback];
  v2[2]();
}

void __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) delegate];
  [v2 didEndAnimation];

  v3 = ZOOMLogCommon();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UpdateStandbyMode", &unk_76116, v4, 2u);
  }
}

void __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_303(uint64_t a1)
{
  v2 = [*(a1 + 32) lensZoomView];
  v3 = AXZoomMinimumZoomLevel;
  v4 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_2_304;
  v6[3] = &unk_78F80;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v8 = v4;
  v7 = v5;
  [v2 updateZoomPanOffset:0 zoomFactor:v4 roundedLensCorners:v6 animated:CGPointZero.x animationDuration:CGPointZero.y completion:{v3, -1.0}];
}

void __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_2_304(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_3;
  v3[3] = &unk_79018;
  v3[4] = v1;
  v4 = *(a1 + 40);
  [v1 _updateLensChromeVisibility:0 animated:v2 completion:v3];
}

void __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 zoomLensViewControllerUpdateUIForStandby:*(a1 + 32) completion:*(a1 + 40)];
}

void __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_5;
  v3[3] = &unk_79018;
  v3[4] = v1;
  v4 = *(a1 + 40);
  [v1 _updateLensChromeVisibility:0 animated:v2 completion:v3];
}

void __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 zoomLensViewControllerUpdateUIForStandby:*(a1 + 32) completion:*(a1 + 40)];
}

void __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) lensZoomView];
  [*(a1 + 32) zoomPanOffset];
  v4 = v3;
  v6 = v5;
  [*(a1 + 32) zoomFactor];
  v8 = v7;
  v9 = [*(a1 + 32) _shouldRoundLensCorners];
  v10 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_7;
  v12[3] = &unk_78F80;
  v11 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v14 = v10;
  v13 = v11;
  [v2 updateZoomPanOffset:v9 zoomFactor:v10 roundedLensCorners:v12 animated:v4 animationDuration:v6 completion:{v8, -1.0}];
}

void __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_7(uint64_t a1)
{
  v3 = [*(a1 + 32) lensZoomView];
  v2 = [*(a1 + 32) lensEffect];
  [v3 updateLensEffect:v2 animated:*(a1 + 48) completion:*(a1 + 40)];
}

- (CGPoint)_lensDragMultiplier
{
  v2 = 1.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_updateLensChromeVisibility:(BOOL)visibility animated:(BOOL)animated completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (BOOL)shouldPanZoomContentForAxis:(int64_t)axis delta:(CGPoint)delta edgeMask:(unint64_t)mask
{
  maskCopy = mask;
  y = delta.y;
  x = delta.x;
  [(ZWZoomLensViewController *)self zoomPanOffset];
  if (axis == 2)
  {
    if ((maskCopy & 8) == 0 || (result = 1, x >= 0.0) && x + v9 > 0.0)
    {
      if ((maskCopy & 2) != 0)
      {
        v12 = x > 0.0;
        v13 = x + v9;
        return v13 >= 0.0 || v12;
      }

      return 0;
    }
  }

  else if ((maskCopy & 1) == 0 || (result = 1, y >= 0.0) && y + v10 > 0.0)
  {
    if ((maskCopy & 4) != 0)
    {
      v12 = y > 0.0;
      v13 = y + v10;
      return v13 >= 0.0 || v12;
    }

    return 0;
  }

  return result;
}

- (CGPoint)offsetIgnoringValidOffsetConstraintsByPanningWithDelta:(CGPoint)delta axis:(int64_t)axis zoomFacotr:(double)facotr
{
  if ((axis & 2) != 0)
  {
    x = delta.x;
  }

  else
  {
    x = 0.0;
  }

  if ((axis & 4) != 0)
  {
    y = delta.y;
  }

  else
  {
    y = 0.0;
  }

  [(ZWZoomLensViewController *)self zoomPanOffset:delta.x];
  v9 = x + v8;
  [(ZWZoomLensViewController *)self zoomPanOffset];
  v11 = y + v10;
  v12 = v9;
  result.y = v11;
  result.x = v12;
  return result;
}

- (CGPoint)offsetByPanningWithDelta:(CGPoint)delta axis:(int64_t)axis zoomFactor:(double)factor
{
  axisCopy = axis;
  [(ZWZoomLensViewController *)self offsetIgnoringValidOffsetConstraintsByPanningWithDelta:delta.x axis:delta.y zoomFacotr:?];
  [ZWZoomLensViewController validPanOffsetForProposedOffset:"validPanOffsetForProposedOffset:proposedZoomFactor:" proposedZoomFactor:?];
  v8 = v7;
  v10 = v9;
  [(ZWZoomLensViewController *)self zoomPanOffset];
  if ((axisCopy & 2) != 0)
  {
    v11 = v8;
  }

  if ((axisCopy & 4) != 0)
  {
    v12 = v10;
  }

  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)offsetByPanningToPoint:(CGPoint)point zoomFactor:(double)factor
{
  [(ZWZoomLensViewController *)self offsetByPanningToRect:point.x zoomFactor:point.y, 0.0, 0.0, factor];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)offsetIgnoringValidOffsetConstraintsByPanningToRect:(CGRect)rect zoomFacotr:(double)facotr
{
  AX_CGRectGetCenter();
  v6 = v5;
  v8 = v7;
  view = [(ZWZoomLensViewController *)self view];
  [view frame];
  AX_CGRectGetCenter();
  v11 = v10;
  v13 = v12;

  v14 = v6 - v11;
  v15 = v8 - v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)offsetByPanningToRect:(CGRect)rect zoomFactor:(double)factor
{
  [(ZWZoomLensViewController *)self offsetIgnoringValidOffsetConstraintsByPanningToRect:rect.origin.x zoomFacotr:rect.origin.y, rect.size.width, rect.size.height];

  [ZWZoomLensViewController validPanOffsetForProposedOffset:"validPanOffsetForProposedOffset:proposedZoomFactor:" proposedZoomFactor:?];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)validPanOffsetForProposedOffset:(CGPoint)offset proposedZoomFactor:(double)factor
{
  y = offset.y;
  x = offset.x;
  [(ZWZoomLensViewController *)self maximumPanOffsetWithZoomFactor:factor];
  v8 = -v6;
  if (x >= -v6)
  {
    v8 = x;
  }

  if (x <= v6)
  {
    v6 = v8;
  }

  v9 = -v7;
  if (y >= -v7)
  {
    v9 = y;
  }

  if (y <= v7)
  {
    v7 = v9;
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (id)dummyScrollViewPanGestureRecognizer
{
  dummyScrollView = [(ZWZoomLensViewController *)self dummyScrollView];
  panGestureRecognizer = [dummyScrollView panGestureRecognizer];

  return panGestureRecognizer;
}

- (CGSize)dummyScrollViewContentSize
{
  v2 = 10000.0;
  v3 = 10000.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)dummyScrollViewDefaultOffset
{
  v2 = 5000.0;
  v3 = 5000.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)dummyScrollViewOffsetForSlug
{
  [(ZWZoomLensViewController *)self dummyScrollViewDefaultOffset];
  v4 = v3;
  v6 = v5;
  dummyScrollView = [(ZWZoomLensViewController *)self dummyScrollView];
  [dummyScrollView contentOffset];
  v9 = v8;
  v11 = v10;

  v12 = v4 - v9;
  v13 = v6 - v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)_handleLongPress:(id)press
{
  state = [press state];
  if ((state - 3) >= 3)
  {
    if (state != &dword_0 + 1)
    {
      return;
    }

    +[NSDate timeIntervalSinceReferenceDate];
    if (v7 - self->_lastTapTime <= 1.0)
    {
      v8 = (self->_prescrollTaps + 1);
    }

    else
    {
      v8 = 0;
    }

    self->_prescrollTaps = v8;
    self->_lastTapTime = v7;
    selfCopy2 = self;
    v6 = 1;
  }

  else
  {
    selfCopy2 = self;
    v6 = 0;
  }

  [(ZWZoomLensViewController *)selfCopy2 setUserIsInteractingWithLens:v6];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    [(ZWZoomLensViewController *)self setUserIsMovingLens:1];
    self->_lastDragOffset = CGPointZero;
    self->_shouldNotifyDelegateOfDrag = 0;
    [(ZWZoomLensViewController *)self dummyScrollViewDefaultOffset];
    [draggingCopy setContentOffset:?];
    self->_shouldNotifyDelegateOfDrag = 1;
    delegate = [(ZWZoomLensViewController *)self delegate];
    view = [(ZWZoomLensViewController *)self view];
    [delegate zoomLensViewController:self willBeginMovingLens:view];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    [(ZWZoomLensViewController *)self dummyScrollViewOffsetForSlug];
    v6 = v4;
    v7 = v5;
    if (self->_shouldNotifyDelegateOfDrag)
    {
      v8 = v4 - self->_lastDragOffset.x;
      v9 = v5 - self->_lastDragOffset.y;
      [(ZWZoomLensViewController *)self _lensDragMultiplier];
      v11 = v8 * v10;
      v13 = v9 * v12;
      delegate = [(ZWZoomLensViewController *)self delegate];
      view = [(ZWZoomLensViewController *)self view];
      [delegate zoomLensViewController:self didMoveLens:view withDelta:{v11, v13}];
    }

    self->_lastDragOffset.x = v6;
    self->_lastDragOffset.y = v7;
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (![(ZWZoomLensViewController *)self inStandbyMode]&& !decelerate)
  {
    [(ZWZoomLensViewController *)self setUserIsMovingLens:0];
    delegate = [(ZWZoomLensViewController *)self delegate];
    view = [(ZWZoomLensViewController *)self view];
    [delegate zoomLensViewController:self didFinishMovingLens:view];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    [(ZWZoomLensViewController *)self setUserIsMovingLens:0];
    delegate = [(ZWZoomLensViewController *)self delegate];
    view = [(ZWZoomLensViewController *)self view];
    [delegate zoomLensViewController:self didFinishMovingLens:view];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  longPressGestureRecognizer = [(ZWZoomLensViewController *)self longPressGestureRecognizer];

  dummyScrollView = [(ZWZoomLensViewController *)self dummyScrollView];
  panGestureRecognizer = [dummyScrollView panGestureRecognizer];
  tapGestureRecognizer2 = panGestureRecognizer;
  if (longPressGestureRecognizer == recognizerCopy)
  {
    if (panGestureRecognizer != gestureRecognizerCopy)
    {
      tapGestureRecognizer = [(ZWZoomLensViewController *)self tapGestureRecognizer];
LABEL_11:
      v13 = tapGestureRecognizer == gestureRecognizerCopy;

      goto LABEL_13;
    }

LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  if (tapGestureRecognizer2 == recognizerCopy)
  {
    dummyScrollView = [(ZWZoomLensViewController *)self longPressGestureRecognizer];
    if (dummyScrollView == gestureRecognizerCopy)
    {
      v13 = 1;
      goto LABEL_14;
    }

    tapGestureRecognizer2 = [(ZWZoomLensViewController *)self tapGestureRecognizer];
    v13 = tapGestureRecognizer2 == gestureRecognizerCopy;
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  tapGestureRecognizer3 = [(ZWZoomLensViewController *)self tapGestureRecognizer];

  if (tapGestureRecognizer3 == recognizerCopy)
  {
    dummyScrollView = [(ZWZoomLensViewController *)self dummyScrollView];
    tapGestureRecognizer2 = [dummyScrollView panGestureRecognizer];
    if (tapGestureRecognizer2 != gestureRecognizerCopy)
    {
      tapGestureRecognizer = [(ZWZoomLensViewController *)self longPressGestureRecognizer];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (ZWZoomLensViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)zoomPanOffset
{
  x = self->_zoomPanOffset.x;
  y = self->_zoomPanOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIScreen)screen
{
  WeakRetained = objc_loadWeakRetained(&self->_screen);

  return WeakRetained;
}

- (NSString)identifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (CGPoint)maximumPanOffsetWithZoomFactor:(double)factor
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

@end