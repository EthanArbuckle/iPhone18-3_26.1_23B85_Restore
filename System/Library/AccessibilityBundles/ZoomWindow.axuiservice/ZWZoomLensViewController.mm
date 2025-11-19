@interface ZWZoomLensViewController
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)shouldPanZoomContentForAxis:(int64_t)a3 delta:(CGPoint)a4 edgeMask:(unint64_t)a5;
- (CGPoint)_lensDragMultiplier;
- (CGPoint)dummyScrollViewDefaultOffset;
- (CGPoint)dummyScrollViewOffsetForSlug;
- (CGPoint)maximumPanOffsetWithZoomFactor:(double)a3;
- (CGPoint)offsetByPanningToPoint:(CGPoint)a3 zoomFactor:(double)a4;
- (CGPoint)offsetByPanningToRect:(CGRect)a3 zoomFactor:(double)a4;
- (CGPoint)offsetByPanningWithDelta:(CGPoint)a3 axis:(int64_t)a4 zoomFactor:(double)a5;
- (CGPoint)offsetIgnoringValidOffsetConstraintsByPanningToRect:(CGRect)a3 zoomFacotr:(double)a4;
- (CGPoint)offsetIgnoringValidOffsetConstraintsByPanningWithDelta:(CGPoint)a3 axis:(int64_t)a4 zoomFacotr:(double)a5;
- (CGPoint)validPanOffsetForProposedOffset:(CGPoint)a3 proposedZoomFactor:(double)a4;
- (CGPoint)zoomPanOffset;
- (CGSize)dummyScrollViewContentSize;
- (NSString)identifier;
- (UIScreen)screen;
- (ZWZoomLensViewController)initWithZoomFactor:(double)a3 zoomPanOffset:(CGPoint)a4 lensEffect:(id)a5 screen:(id)a6;
- (ZWZoomLensViewControllerDelegate)delegate;
- (id)dummyScrollViewPanGestureRecognizer;
- (void)_handleLongPress:(id)a3;
- (void)_updateLensChromeVisibility:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)dealloc;
- (void)loadView;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setInStandbyMode:(BOOL)a3;
- (void)updateLensEffect:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)updateStandbyMode:(BOOL)a3 zoomFactor:(double)a4 panOffset:(CGPoint)a5 lensEffect:(id)a6 animated:(BOOL)a7 completion:(id)a8;
- (void)updateZoomFactor:(double)a3 panOffset:(CGPoint)a4 animated:(BOOL)a5 animationDuration:(double)a6 completion:(id)a7;
- (void)viewDidLoad;
@end

@implementation ZWZoomLensViewController

- (ZWZoomLensViewController)initWithZoomFactor:(double)a3 zoomPanOffset:(CGPoint)a4 lensEffect:(id)a5 screen:(id)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a5;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = ZWZoomLensViewController;
  v13 = [(ZWZoomLensViewController *)&v25 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    [(ZWZoomLensViewController *)v13 setZoomFactor:a3];
    [(ZWZoomLensViewController *)v14 setZoomPanOffset:x, y];
    [(ZWZoomLensViewController *)v14 setLensEffect:v11];
    [(ZWZoomLensViewController *)v14 setScreen:v12];
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
  v8 = [(ZWLensZoomView *)v4 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ZWZoomLensViewController *)self setLensZoomView:v8];
  [(ZWLensRootView *)v24 addSubview:v8];
  v9 = +[AXSettings sharedInstance];
  v10 = [v9 zoomCurrentLensEffect];
  [(ZWLensZoomView *)v8 updateLensEffect:v10 animated:0 completion:0];

  [(ZWLensZoomView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [[ZWCancelButtonTouchesScrollView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ZWLensRootView *)v24 addSubview:v11];
  [(ZWCancelButtonTouchesScrollView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ZWCancelButtonTouchesScrollView *)v11 setCanCancelContentTouches:1];
  [(ZWCancelButtonTouchesScrollView *)v11 setContentInsetAdjustmentBehavior:2];
  LODWORD(v12) = AXResistAllCompressingAndStretching[0];
  LODWORD(v13) = AXResistAllCompressingAndStretching[1];
  LODWORD(v14) = AXResistAllCompressingAndStretching[2];
  LODWORD(v15) = AXResistAllCompressingAndStretching[3];
  [(ZWCancelButtonTouchesScrollView *)v11 ax_setContentHuggingAndCompressionResistance:v12, v13, v14, v15];
  v16 = [(ZWCancelButtonTouchesScrollView *)v11 ax_pinConstraintsInAllDimensionsToView:v24];
  [(ZWZoomLensViewController *)self setDummyScrollView:v11];
  [(ZWCancelButtonTouchesScrollView *)v11 setDelegate:self];
  [(ZWZoomLensViewController *)self dummyScrollViewContentSize];
  [(ZWCancelButtonTouchesScrollView *)v11 setContentSize:?];
  [(ZWZoomLensViewController *)self dummyScrollViewDefaultOffset];
  [(ZWCancelButtonTouchesScrollView *)v11 setContentOffset:?];
  [(ZWCancelButtonTouchesScrollView *)v11 setBounces:0];
  [(ZWCancelButtonTouchesScrollView *)v11 setHidden:1];
  v17 = [(ZWCancelButtonTouchesScrollView *)v11 panGestureRecognizer];
  [(ZWLensRootView *)v24 addGestureRecognizer:v17];

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
  v4 = [(ZWZoomLensViewController *)self screenshotActionHandlerIdentifier];
  [v3 removeActionHandler:v4];

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

- (void)updateZoomFactor:(double)a3 panOffset:(CGPoint)a4 animated:(BOOL)a5 animationDuration:(double)a6 completion:(id)a7
{
  v8 = a5;
  y = a4.y;
  x = a4.x;
  v17 = a7;
  [(ZWZoomLensViewController *)self setZoomFactor:a3];
  [(ZWZoomLensViewController *)self setZoomPanOffset:x, y];
  [(ZWZoomLensViewController *)self zoomFactor];
  if (vabdd_f64(v13, AXZoomMinimumZoomLevel) <= 0.0001 && [(ZWZoomLensViewController *)self _minimumZoomIndistinguishableFromStandbyMode])
  {
    [(ZWZoomLensViewController *)self setInStandbyMode:1];
  }

  v14 = [(ZWZoomLensViewController *)self lensZoomView];

  if (v14)
  {
    v15 = [(ZWZoomLensViewController *)self lensZoomView];
    [v15 updateZoomPanOffset:-[ZWZoomLensViewController _shouldRoundLensCorners](self zoomFactor:"_shouldRoundLensCorners") roundedLensCorners:v8 animated:v17 animationDuration:x completion:{y, a3, a6}];
  }

  else
  {
    v16 = v17;
    if (!v17)
    {
      goto LABEL_9;
    }

    (*(v17 + 2))(v17);
  }

  v16 = v17;
LABEL_9:
}

- (void)updateLensEffect:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v11 = a3;
  v8 = a5;
  [(ZWZoomLensViewController *)self setLensEffect:v11];
  v9 = [(ZWZoomLensViewController *)self lensZoomView];

  if (v9)
  {
    v10 = [(ZWZoomLensViewController *)self lensZoomView];
    [v10 updateLensEffect:v11 animated:v6 completion:v8];
  }

  else if (v8)
  {
    v8[2](v8);
  }
}

- (void)setInStandbyMode:(BOOL)a3
{
  v3 = a3;
  inStandbyMode = self->_inStandbyMode;
  self->_inStandbyMode = a3;
  v6 = +[ZWCoalescedSettings sharedInstance];
  [v6 setZoomInStandby:v3];

  if (inStandbyMode != v3)
  {
    v7 = [(ZWZoomLensViewController *)self delegate];
    [v7 zoomLensViewControllerDidChangeStandbyMode:self];
  }

  v9 = [(ZWZoomLensViewController *)self dummyScrollView];
  v8 = [(ZWZoomLensViewController *)self dummyScrollView];
  [v8 contentOffset];
  [v9 setContentOffset:0 animated:?];
}

- (void)updateStandbyMode:(BOOL)a3 zoomFactor:(double)a4 panOffset:(CGPoint)a5 lensEffect:(id)a6 animated:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  y = a5.y;
  x = a5.x;
  v13 = a3;
  v15 = a6;
  v16 = a8;
  if (v16)
  {
    v17 = ZOOMLogCommon();
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UpdateStandbyMode", &unk_76116, buf, 2u);
    }
  }

  if (vabdd_f64(a4, AXZoomMinimumZoomLevel) <= 0.0001)
  {
    v13 = [(ZWZoomLensViewController *)self _minimumZoomIndistinguishableFromStandbyMode]| v13;
  }

  [(ZWZoomLensViewController *)self setInStandbyMode:v13];
  [(ZWZoomLensViewController *)self setZoomFactor:a4];
  [(ZWZoomLensViewController *)self setZoomPanOffset:x, y];
  [(ZWZoomLensViewController *)self setLensEffect:v15];
  v18 = [(ZWZoomLensViewController *)self standbyFinishedTransitioningUnitTestCallback];

  if (!v18)
  {
LABEL_10:
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v16)
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke;
    v39[3] = &unk_79040;
    v39[4] = self;
    v40 = v16;
    v16 = objc_retainBlock(v39);

    goto LABEL_10;
  }

  v16 = [(ZWZoomLensViewController *)self standbyFinishedTransitioningUnitTestCallback];
  if (v9)
  {
LABEL_11:
    v19 = [(ZWZoomLensViewController *)self delegate];
    [v19 didStartAnimation];
  }

LABEL_12:
  if (v16)
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_2;
    v37[3] = &unk_79040;
    v37[4] = self;
    v38 = v16;
    v16 = objc_retainBlock(v37);
  }

  v20 = [(ZWZoomLensViewController *)self view];
  v21 = [v20 window];

  if (v21)
  {
    v22 = [(ZWZoomLensViewController *)self view];
    [v22 layoutIfNeeded];
  }

  if (v13)
  {
    v23 = [(ZWZoomLensViewController *)self _shouldDisableLensEffectsForStandbyMode];
    v24 = [(ZWZoomLensViewController *)self lensZoomView];
    if (v23)
    {
      v25 = AXZoomLensEffectNone;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_303;
      v34[3] = &unk_78F80;
      v34[4] = self;
      v36 = v9;
      v26 = &v35;
      v35 = v16;
      [v24 updateLensEffect:v25 animated:v9 completion:v34];
    }

    else
    {
      v27 = AXZoomMinimumZoomLevel;
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_4;
      v31[3] = &unk_78F80;
      v31[4] = self;
      v33 = v9;
      v26 = &v32;
      v32 = v16;
      [v24 updateZoomPanOffset:0 zoomFactor:v9 roundedLensCorners:v31 animated:CGPointZero.x animationDuration:CGPointZero.y completion:{v27, -1.0}];
    }
  }

  else
  {
    [(ZWZoomLensViewController *)self _updateLensChromeVisibility:1 animated:v9 completion:0];
    v24 = [(ZWZoomLensViewController *)self delegate];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __98__ZWZoomLensViewController_updateStandbyMode_zoomFactor_panOffset_lensEffect_animated_completion___block_invoke_6;
    v28[3] = &unk_78F80;
    v28[4] = self;
    v30 = v9;
    v26 = &v29;
    v29 = v16;
    [v24 zoomLensViewControllerUpdateUIForStandby:self completion:v28];
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

- (void)_updateLensChromeVisibility:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5);
  }
}

- (BOOL)shouldPanZoomContentForAxis:(int64_t)a3 delta:(CGPoint)a4 edgeMask:(unint64_t)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  [(ZWZoomLensViewController *)self zoomPanOffset];
  if (a3 == 2)
  {
    if ((v5 & 8) == 0 || (result = 1, x >= 0.0) && x + v9 > 0.0)
    {
      if ((v5 & 2) != 0)
      {
        v12 = x > 0.0;
        v13 = x + v9;
        return v13 >= 0.0 || v12;
      }

      return 0;
    }
  }

  else if ((v5 & 1) == 0 || (result = 1, y >= 0.0) && y + v10 > 0.0)
  {
    if ((v5 & 4) != 0)
    {
      v12 = y > 0.0;
      v13 = y + v10;
      return v13 >= 0.0 || v12;
    }

    return 0;
  }

  return result;
}

- (CGPoint)offsetIgnoringValidOffsetConstraintsByPanningWithDelta:(CGPoint)a3 axis:(int64_t)a4 zoomFacotr:(double)a5
{
  if ((a4 & 2) != 0)
  {
    x = a3.x;
  }

  else
  {
    x = 0.0;
  }

  if ((a4 & 4) != 0)
  {
    y = a3.y;
  }

  else
  {
    y = 0.0;
  }

  [(ZWZoomLensViewController *)self zoomPanOffset:a3.x];
  v9 = x + v8;
  [(ZWZoomLensViewController *)self zoomPanOffset];
  v11 = y + v10;
  v12 = v9;
  result.y = v11;
  result.x = v12;
  return result;
}

- (CGPoint)offsetByPanningWithDelta:(CGPoint)a3 axis:(int64_t)a4 zoomFactor:(double)a5
{
  v5 = a4;
  [(ZWZoomLensViewController *)self offsetIgnoringValidOffsetConstraintsByPanningWithDelta:a3.x axis:a3.y zoomFacotr:?];
  [ZWZoomLensViewController validPanOffsetForProposedOffset:"validPanOffsetForProposedOffset:proposedZoomFactor:" proposedZoomFactor:?];
  v8 = v7;
  v10 = v9;
  [(ZWZoomLensViewController *)self zoomPanOffset];
  if ((v5 & 2) != 0)
  {
    v11 = v8;
  }

  if ((v5 & 4) != 0)
  {
    v12 = v10;
  }

  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)offsetByPanningToPoint:(CGPoint)a3 zoomFactor:(double)a4
{
  [(ZWZoomLensViewController *)self offsetByPanningToRect:a3.x zoomFactor:a3.y, 0.0, 0.0, a4];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)offsetIgnoringValidOffsetConstraintsByPanningToRect:(CGRect)a3 zoomFacotr:(double)a4
{
  AX_CGRectGetCenter();
  v6 = v5;
  v8 = v7;
  v9 = [(ZWZoomLensViewController *)self view];
  [v9 frame];
  AX_CGRectGetCenter();
  v11 = v10;
  v13 = v12;

  v14 = v6 - v11;
  v15 = v8 - v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)offsetByPanningToRect:(CGRect)a3 zoomFactor:(double)a4
{
  [(ZWZoomLensViewController *)self offsetIgnoringValidOffsetConstraintsByPanningToRect:a3.origin.x zoomFacotr:a3.origin.y, a3.size.width, a3.size.height];

  [ZWZoomLensViewController validPanOffsetForProposedOffset:"validPanOffsetForProposedOffset:proposedZoomFactor:" proposedZoomFactor:?];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)validPanOffsetForProposedOffset:(CGPoint)a3 proposedZoomFactor:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(ZWZoomLensViewController *)self maximumPanOffsetWithZoomFactor:a4];
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
  v2 = [(ZWZoomLensViewController *)self dummyScrollView];
  v3 = [v2 panGestureRecognizer];

  return v3;
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
  v7 = [(ZWZoomLensViewController *)self dummyScrollView];
  [v7 contentOffset];
  v9 = v8;
  v11 = v10;

  v12 = v4 - v9;
  v13 = v6 - v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)_handleLongPress:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 3) >= 3)
  {
    if (v4 != &dword_0 + 1)
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
    v5 = self;
    v6 = 1;
  }

  else
  {
    v5 = self;
    v6 = 0;
  }

  [(ZWZoomLensViewController *)v5 setUserIsInteractingWithLens:v6];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v6 = a3;
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    [(ZWZoomLensViewController *)self setUserIsMovingLens:1];
    self->_lastDragOffset = CGPointZero;
    self->_shouldNotifyDelegateOfDrag = 0;
    [(ZWZoomLensViewController *)self dummyScrollViewDefaultOffset];
    [v6 setContentOffset:?];
    self->_shouldNotifyDelegateOfDrag = 1;
    v4 = [(ZWZoomLensViewController *)self delegate];
    v5 = [(ZWZoomLensViewController *)self view];
    [v4 zoomLensViewController:self willBeginMovingLens:v5];
  }
}

- (void)scrollViewDidScroll:(id)a3
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
      v14 = [(ZWZoomLensViewController *)self delegate];
      v15 = [(ZWZoomLensViewController *)self view];
      [v14 zoomLensViewController:self didMoveLens:v15 withDelta:{v11, v13}];
    }

    self->_lastDragOffset.x = v6;
    self->_lastDragOffset.y = v7;
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (![(ZWZoomLensViewController *)self inStandbyMode]&& !a4)
  {
    [(ZWZoomLensViewController *)self setUserIsMovingLens:0];
    v7 = [(ZWZoomLensViewController *)self delegate];
    v6 = [(ZWZoomLensViewController *)self view];
    [v7 zoomLensViewController:self didFinishMovingLens:v6];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  if (![(ZWZoomLensViewController *)self inStandbyMode])
  {
    [(ZWZoomLensViewController *)self setUserIsMovingLens:0];
    v5 = [(ZWZoomLensViewController *)self delegate];
    v4 = [(ZWZoomLensViewController *)self view];
    [v5 zoomLensViewController:self didFinishMovingLens:v4];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ZWZoomLensViewController *)self longPressGestureRecognizer];

  v9 = [(ZWZoomLensViewController *)self dummyScrollView];
  v10 = [v9 panGestureRecognizer];
  v11 = v10;
  if (v8 == v6)
  {
    if (v10 != v7)
    {
      v14 = [(ZWZoomLensViewController *)self tapGestureRecognizer];
LABEL_11:
      v13 = v14 == v7;

      goto LABEL_13;
    }

LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  if (v11 == v6)
  {
    v9 = [(ZWZoomLensViewController *)self longPressGestureRecognizer];
    if (v9 == v7)
    {
      v13 = 1;
      goto LABEL_14;
    }

    v11 = [(ZWZoomLensViewController *)self tapGestureRecognizer];
    v13 = v11 == v7;
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  v12 = [(ZWZoomLensViewController *)self tapGestureRecognizer];

  if (v12 == v6)
  {
    v9 = [(ZWZoomLensViewController *)self dummyScrollView];
    v11 = [v9 panGestureRecognizer];
    if (v11 != v7)
    {
      v14 = [(ZWZoomLensViewController *)self longPressGestureRecognizer];
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

- (CGPoint)maximumPanOffsetWithZoomFactor:(double)a3
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