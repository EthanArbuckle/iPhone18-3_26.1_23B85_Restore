@interface CRLiOSImageHUDViewController
- (BOOL)accessibilityPerformEscape;
- (CGRect)p_viewPositionAtTop:(BOOL)top inside:(BOOL)inside ofUnscaledRect:(CGRect)rect;
- (CRLiOSImageHUDViewController)init;
- (double)p_overlapOfViewRectWithKnobs:(CGRect)knobs;
- (void)buttonPressed:(id)pressed;
- (void)closeHUDWithAnimation:(BOOL)animation;
- (void)dealloc;
- (void)didEndDynamicOperation;
- (void)didEndScrollingOperation;
- (void)didEndZoomingOperation;
- (void)hideHUDForRep:(id)rep;
- (void)i_observedTraitsDidUpdate;
- (void)loadView;
- (void)p_didEndDynamicOperation:(id)operation;
- (void)p_resumeCollaborationIfNeeded;
- (void)p_startIgnoringKeyboardIfNeeded;
- (void)p_stopIgnoringKeyboardIfNeeded;
- (void)p_suspendCollaborationIfNeeded;
- (void)p_updateHUDAppearance;
- (void)p_updateHUDSize;
- (void)p_updateViewPosition;
- (void)setView:(id)view;
- (void)showHUDForRep:(id)rep;
- (void)sliderChanged:(id)changed;
- (void)sliderEnd:(id)end;
- (void)sliderStart:(id)start;
- (void)updateControlsForRep:(id)rep;
- (void)viewDidLoad;
- (void)willBeginDynamicOperation;
- (void)willBeginZoomingOperation;
@end

@implementation CRLiOSImageHUDViewController

- (CRLiOSImageHUDViewController)init
{
  v3.receiver = self;
  v3.super_class = CRLiOSImageHUDViewController;
  return [(CRLiOSImageHUDViewController *)&v3 initWithNibName:0 bundle:0];
}

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v3;

  [(UIView *)self->_backgroundView setUserInteractionEnabled:1];
  [(CRLiOSImageHUDViewController *)self p_updateHUDAppearance];
  [(UIButton *)self->_doneButton addTarget:self action:"buttonPressed:" forControlEvents:64];
  LODWORD(v5) = 1148846080;
  [(UIButton *)self->_doneButton setContentCompressionResistancePriority:0 forAxis:v5];
  topAnchor = [(UIButton *)self->_doneButton topAnchor];
  topAnchor2 = [(UIView *)self->_backgroundView topAnchor];
  v53 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];

  bottomAnchor = [(UIButton *)self->_doneButton bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_backgroundView bottomAnchor];
  v52 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];

  v10 = objc_alloc_init(CRLiOSImageHUDSlider);
  slider = self->_slider;
  self->_slider = v10;

  [(CRLiOSImageHUDSlider *)self->_slider setParentHUDViewController:self];
  LODWORD(v12) = 0.25;
  [(CRLiOSImageHUDSlider *)self->_slider setMinimumValue:v12];
  LODWORD(v13) = 3.0;
  [(CRLiOSImageHUDSlider *)self->_slider setMaximumValue:v13];
  [(CRLiOSImageHUDSlider *)self->_slider setExclusiveTouch:1];
  [(CRLiOSImageHUDSlider *)self->_slider addTarget:self action:"sliderStart:" forControlEvents:1];
  [(CRLiOSImageHUDSlider *)self->_slider addTarget:self action:"sliderChanged:" forControlEvents:4096];
  [(CRLiOSImageHUDSlider *)self->_slider addTarget:self action:"sliderEnd:" forControlEvents:448];
  [(CRLiOSImageHUDSlider *)self->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [(CRLiOSImageHUDSlider *)self->_slider widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:150.0];

  LODWORD(v16) = 1144766464;
  [v15 setPriority:v16];
  v51 = v15;
  [v15 setActive:1];
  v17 = objc_alloc_init(UIView);
  [v17 addSubview:self->_slider];
  v18 = [UIStackView alloc];
  doneButton = self->_doneButton;
  v56[0] = v17;
  v56[1] = doneButton;
  v20 = [NSArray arrayWithObjects:v56 count:2];
  v21 = [v18 initWithArrangedSubviews:v20];

  v22 = +[UIColor clearColor];
  [v21 setBackgroundColor:v22];

  v23 = 9.0;
  [v21 setSpacing:9.0];
  [v21 setDistribution:2];
  [v21 setLayoutMarginsRelativeArrangement:1];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_backgroundView addSubview:v21];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    [v21 setAlignment:3];
    v23 = 0.0;
  }

  [v21 setLayoutMargins:{0.0, v23, 0.0, v23}];
  topAnchor3 = [v17 topAnchor];
  topAnchor4 = [(CRLiOSImageHUDSlider *)self->_slider topAnchor];
  v47 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v55[0] = v47;
  bottomAnchor3 = [v17 bottomAnchor];
  bottomAnchor4 = [(CRLiOSImageHUDSlider *)self->_slider bottomAnchor];
  v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v55[1] = v44;
  leftAnchor = [v17 leftAnchor];
  leftAnchor2 = [(CRLiOSImageHUDSlider *)self->_slider leftAnchor];
  v41 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:-9.0];
  v55[2] = v41;
  v50 = v17;
  rightAnchor = [v17 rightAnchor];
  rightAnchor2 = [(CRLiOSImageHUDSlider *)self->_slider rightAnchor];
  v38 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0];
  v55[3] = v38;
  topAnchor5 = [v21 topAnchor];
  topAnchor6 = [(UIView *)self->_backgroundView topAnchor];
  v35 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v55[4] = v35;
  bottomAnchor5 = [v21 bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_backgroundView bottomAnchor];
  v24 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v55[5] = v24;
  leftAnchor3 = [v21 leftAnchor];
  leftAnchor4 = [(UIView *)self->_backgroundView leftAnchor];
  v27 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v55[6] = v27;
  rightAnchor3 = [v21 rightAnchor];
  rightAnchor4 = [(UIView *)self->_backgroundView rightAnchor];
  v30 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v55[7] = v30;
  v31 = [NSArray arrayWithObjects:v55 count:8];
  [NSLayoutConstraint activateConstraints:v31];

  if (!+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    v54[0] = v53;
    v54[1] = v52;
    v32 = [NSArray arrayWithObjects:v54 count:2];
    [NSLayoutConstraint activateConstraints:v32];
  }

  [(CRLiOSImageHUDViewController *)self setView:self->_backgroundView];
  [(CRLiOSImageHUDViewController *)self p_updateHUDSize];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CRLiOSImageHUDViewController;
  [(CRLiOSImageHUDViewController *)&v5 viewDidLoad];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v6 count:3];
  v4 = [(CRLiOSImageHUDViewController *)self registerForTraitChanges:v3 withTarget:self action:"i_observedTraitsDidUpdate"];
}

- (void)dealloc
{
  if (self->_ignoringKeyboard)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133F9E4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133F9F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133FA88();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSImageHUDViewController dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSImageHUDViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:201 isFatal:0 description:"CRLiOSImageHUDViewController still ignoring keyboard on dealloc"];
  }

  v6.receiver = self;
  v6.super_class = CRLiOSImageHUDViewController;
  [(CRLiOSImageHUDViewController *)&v6 dealloc];
}

- (void)setView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    slider = self->_slider;
    self->_slider = 0;

    maskResizer = self->_maskResizer;
    self->_maskResizer = 0;
  }

  v7.receiver = self;
  v7.super_class = CRLiOSImageHUDViewController;
  [(CRLiOSImageHUDViewController *)&v7 setView:viewCopy];
}

- (void)i_observedTraitsDidUpdate
{
  [(CRLiOSImageHUDSlider *)self->_slider layoutIfNeeded];

  [(CRLiOSImageHUDViewController *)self p_updateHUDAppearance];
}

- (void)buttonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  [WeakRetained endEditingMask];
}

- (void)p_startIgnoringKeyboardIfNeeded
{
  if (!self->_ignoringKeyboard)
  {
    self->_ignoringKeyboard = 1;
  }
}

- (void)p_stopIgnoringKeyboardIfNeeded
{
  if (self->_ignoringKeyboard)
  {
    self->_ignoringKeyboard = 0;
  }
}

- (void)p_suspendCollaborationIfNeeded
{
  if (!self->_didSuspendCollaboration)
  {
    self->_didSuspendCollaboration = 1;
    WeakRetained = objc_loadWeakRetained(&self->_rep);
    interactiveCanvasController = [WeakRetained interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    [editingCoordinator suspendCollaborationWithReason:@"CRLImageHUDSliderDrag"];
  }
}

- (void)p_resumeCollaborationIfNeeded
{
  if (self->_didSuspendCollaboration)
  {
    WeakRetained = objc_loadWeakRetained(&self->_rep);
    interactiveCanvasController = [WeakRetained interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    [editingCoordinator resumeCollaborationWithReason:@"CRLImageHUDSliderDrag"];

    self->_didSuspendCollaboration = 0;
  }
}

- (void)sliderStart:(id)start
{
  [(CRLiOSImageHUDViewController *)self p_startIgnoringKeyboardIfNeeded];
  [(CRLiOSImageHUDViewController *)self p_suspendCollaborationIfNeeded];
  if (!self->_maskResizer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_rep);
    newMaskResizer = [WeakRetained newMaskResizer];
    maskResizer = self->_maskResizer;
    self->_maskResizer = newMaskResizer;

    v7 = self->_maskResizer;
    v8 = objc_loadWeakRetained(&self->_rep);
    [(CRLMaskResizing *)v7 beginResizingRep:v8];

    v10 = objc_loadWeakRetained(&self->_rep);
    [v10 maskScale];
    self->_lastValue = v9;
  }
}

- (void)sliderChanged:(id)changed
{
  maskResizer = self->_maskResizer;
  if (maskResizer)
  {
    [(CRLiOSImageHUDSlider *)self->_slider value];
    [(CRLMaskResizing *)maskResizer updateResizeToScale:v5];
    [(CRLiOSImageHUDSlider *)self->_slider value];
    self->_lastValue = v6;
  }
}

- (void)sliderEnd:(id)end
{
  maskResizer = self->_maskResizer;
  if (maskResizer)
  {
    [(CRLMaskResizing *)maskResizer endResizingRepAtScale:end, self->_lastValue];
    self->_animateNextTransition = 1;
    v5 = self->_maskResizer;
    self->_maskResizer = 0;
  }

  [(CRLiOSImageHUDViewController *)self p_stopIgnoringKeyboardIfNeeded];

  [(CRLiOSImageHUDViewController *)self p_resumeCollaborationIfNeeded];
}

- (void)updateControlsForRep:(id)rep
{
  repCopy = rep;
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  maskScaleDetents = objc_loadWeakRetained(&self->_rep);
  if (maskScaleDetents == repCopy && !self->_maskResizer)
  {
    isInDynamicOperation = [interactiveCanvasController isInDynamicOperation];

    if (isInDynamicOperation)
    {
      goto LABEL_4;
    }

    v22 = 0;
    v21 = 0;
    [repCopy maskScaleLimitsReturningMin:&v22 max:&v21];
    maskScaleDetents = [repCopy maskScaleDetents];
    v9 = 0;
    if ([repCopy isMaskScaleFromLayout])
    {
      [repCopy maskScale];
      v9 = v10;
    }

    v11 = +[NSThread isMainThread];
    v13 = sub_100271108;
    v14 = &unk_10184DF70;
    v17 = v22;
    v18 = v21;
    selfCopy = self;
    v16 = maskScaleDetents;
    v19 = v9;
    v20 = v11;
    if ([NSThread isMainThread:_NSConcreteStackBlock])
    {
      v13(&v12);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, &v12);
    }
  }

LABEL_4:
}

- (void)showHUDForRep:(id)rep
{
  repCopy = rep;
  if (!repCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133FAB0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133FAC4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133FB68();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSImageHUDViewController showHUDForRep:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSImageHUDViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:347 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
  }

  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133FB90();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133FBB8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133FC48();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSImageHUDViewController showHUDForRep:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSImageHUDViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:348 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_rep);

  if (WeakRetained != repCopy)
  {
    objc_storeWeak(&self->_rep, repCopy);
    self->_pinnedToTopOfImage = 0;
    interactiveCanvasController = [repCopy interactiveCanvasController];
    [interactiveCanvasController addDecorator:self];
    view = [(CRLiOSImageHUDViewController *)self view];
    canvasView = [interactiveCanvasController canvasView];
    [view setHidden:0];
    superview = [view superview];

    if (superview != canvasView)
    {
      [view removeFromSuperview];
      [canvasView addSubview:view];
    }

    [(CRLiOSImageHUDViewController *)self updateControlsForRep:repCopy];
    if ([interactiveCanvasController isInDynamicOperation])
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1002717CC;
      v18[3] = &unk_10183AB38;
      v18[4] = view;
      [UIView animateWithDuration:0 delay:v18 options:0 animations:*&qword_1019F08B8 completion:*&qword_1019F08C0];
    }

    else
    {
      [(CRLiOSImageHUDViewController *)self p_updateViewPosition];
      [view setAlpha:1.0];
    }

    v16 = UIAccessibilityLayoutChangedNotification;
    view2 = [(CRLiOSImageHUDViewController *)self view];
    UIAccessibilityPostNotification(v16, view2);
  }
}

- (void)hideHUDForRep:(id)rep
{
  repCopy = rep;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133FC70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133FC84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133FD14();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSImageHUDViewController hideHUDForRep:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSImageHUDViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:395 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_rep);
  if (WeakRetained != repCopy || ![(CRLiOSImageHUDViewController *)self isViewLoaded])
  {
    goto LABEL_15;
  }

  notAllowedToHideHUD = [(CRLiOSImageHUDViewController *)self notAllowedToHideHUD];

  if ((notAllowedToHideHUD & 1) == 0)
  {
    [(CRLiOSImageHUDViewController *)self p_stopIgnoringKeyboardIfNeeded];
    [(CRLiOSImageHUDViewController *)self p_resumeCollaborationIfNeeded];
    objc_storeWeak(&self->_rep, 0);
    WeakRetained = [repCopy interactiveCanvasController];
    [WeakRetained removeDecorator:self];
    view = [(CRLiOSImageHUDViewController *)self view];
    superview = [view superview];
    v12 = *&qword_1019F08B0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100271AD4;
    v14[3] = &unk_10183AB38;
    v15 = view;
    v13 = view;
    [UIView transitionWithView:superview duration:5242880 options:v14 animations:0 completion:v12];

LABEL_15:
  }
}

- (void)closeHUDWithAnimation:(BOOL)animation
{
  if (![(CRLiOSImageHUDViewController *)self notAllowedToHideHUD])
  {
    WeakRetained = objc_loadWeakRetained(&self->_rep);
    [(CRLiOSImageHUDViewController *)self hideHUDForRep:WeakRetained];

    if (!animation)
    {
      if ([(CRLiOSImageHUDViewController *)self isViewLoaded])
      {
        view = [(CRLiOSImageHUDViewController *)self view];
        [view removeFromSuperview];
      }
    }
  }
}

- (void)willBeginDynamicOperation
{
  if (!self->_maskResizer)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100271C2C;
    v4[3] = &unk_10183AB38;
    v4[4] = self;
    [UIView animateWithDuration:v4 animations:0.200000003];
  }
}

- (void)didEndDynamicOperation
{
  if (!self->_maskResizer)
  {
    [(CRLiOSImageHUDViewController *)self performSelector:"p_didEndDynamicOperation:" withObject:0 afterDelay:0.0];
  }
}

- (void)didEndScrollingOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  [(CRLiOSImageHUDViewController *)self updateControlsForRep:WeakRetained];
}

- (void)willBeginZoomingOperation
{
  view = [(CRLiOSImageHUDViewController *)self view];
  [view setHidden:1];
}

- (void)didEndZoomingOperation
{
  view = [(CRLiOSImageHUDViewController *)self view];
  [view setHidden:0];

  [(CRLiOSImageHUDViewController *)self p_updateViewPosition];
}

- (void)p_updateHUDSize
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  [interactiveCanvasController visibleScaledRectForCanvasUI];
  v6 = v5;
  doneStringWidth = self->_doneStringWidth;
  view = [(CRLiOSImageHUDViewController *)self view];
  [view frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133FD3C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133FD50();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133FDE0();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLiOSImageHUDViewController p_updateHUDSize]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSImageHUDViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:493 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (doneStringWidth + 220.0 >= v6 + -8.0)
  {
    v18 = v6 + -8.0;
  }

  else
  {
    v18 = doneStringWidth + 220.0;
  }

  if (v6 + -8.0 <= 0.0)
  {
    v19 = doneStringWidth + 220.0;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19 - (doneStringWidth + 220.0) + 150.0;
  if (v20 >= 75.0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v19 + 75.0 - v20;
  }

  view2 = [(CRLiOSImageHUDViewController *)self view];
  [view2 setFrame:{v10, v12, v21, v14}];
}

- (CGRect)p_viewPositionAtTop:(BOOL)top inside:(BOOL)inside ofUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  rect = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  insideCopy = inside;
  topCopy = top;
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  canvasView = [interactiveCanvasController canvasView];
  view = [(CRLiOSImageHUDViewController *)self view];
  [view frame];
  v90 = v16;
  v91 = v15;
  v17 = objc_loadWeakRetained(&self->_rep);
  v18 = [v17 knobForTag:1];

  [v18 unscaledBoundingBoxOfHitRegionWithAdditionalScale:0.7];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = objc_loadWeakRetained(&self->_rep);
  [v18 position];
  [v27 convertNaturalPointToUnscaledCanvas:?];
  v29 = v28;
  v88 = v30;

  v92.origin.x = v20;
  v92.origin.y = v22;
  v92.size.width = v24;
  v92.size.height = v26;
  MaxX = CGRectGetMaxX(v92);
  v93.origin.x = v20;
  v93.origin.y = v22;
  v93.size.width = v24;
  v93.size.height = v26;
  MinX = CGRectGetMinX(v93);
  v94.origin.x = v20;
  v94.origin.y = v22;
  v94.size.width = v24;
  v94.size.height = v26;
  MaxY = CGRectGetMaxY(v94);
  v95.origin.x = v20;
  v95.origin.y = v22;
  v95.size.width = v24;
  v95.size.height = v26;
  MinY = CGRectGetMinY(v95);
  [interactiveCanvasController viewScale];
  v33 = v32;
  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = rect;
  v96.size.height = height;
  MidX = CGRectGetMidX(v96);
  v35 = x;
  v36 = y;
  rectCopy = rect;
  v38 = height;
  if (topCopy)
  {
    v39 = CGRectGetMinY(*&v35);
  }

  else
  {
    v39 = CGRectGetMaxY(*&v35);
  }

  v40 = fmax(fmax(fmax(MaxX - v29, v29 - MinX), fmax(MaxY - v88, v88 - MinY)) * v33 + 1.0, 16.0);
  v41 = topCopy ^ insideCopy;
  [interactiveCanvasController convertUnscaledToBoundsPoint:{MidX, v39}];
  v43 = v42;
  v45 = v44;
  canvasView2 = [interactiveCanvasController canvasView];
  [canvasView2 convertPoint:canvasView toView:{v43, v45}];
  v48 = v47;
  v50 = v49;

  v51 = -v40 - v90;
  if (!v41)
  {
    v51 = v40;
  }

  v52 = v51 + v50;
  [interactiveCanvasController visibleScaledRectForCanvasUI];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  canvasView3 = [interactiveCanvasController canvasView];
  [canvasView3 convertRect:canvasView toView:{v54, v56, v58, v60}];
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;

  v97.origin.x = v63;
  v97.origin.y = v65;
  v97.size.width = v67;
  v97.size.height = v69;
  v98 = CGRectInset(v97, 5.0, 5.0);
  v70 = sub_100120B08(v48 + v91 * -0.5, v52, v91, v90, v98.origin.x, v98.origin.y, v98.size.width, v98.size.height);
  v74 = sub_1001221E0(v70, v71, v72, v73);
  v76 = v75;
  v78 = v77;
  v80 = v79;

  v81 = v74;
  v82 = v76;
  v83 = v78;
  v84 = v80;
  result.size.height = v84;
  result.size.width = v83;
  result.origin.y = v82;
  result.origin.x = v81;
  return result;
}

- (void)p_updateViewPosition
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  view = [(CRLiOSImageHUDViewController *)self view];
  v6 = objc_loadWeakRetained(&self->_rep);
  if ([v6 isInDynamicOperation])
  {
  }

  else
  {
    [view frame];
    v8 = v7;
    [interactiveCanvasController visibleScaledRectForCanvasUI];
    v10 = v9;

    if (v8 <= v10)
    {
      [(CRLiOSImageHUDViewController *)self p_updateHUDSize];
      v11 = objc_loadWeakRetained(&self->_rep);
      [v11 frameInUnscaledCanvas];
      v13 = v12;
      v15 = v14;

      v16 = objc_loadWeakRetained(&self->_rep);
      layout = [v16 layout];
      [layout frameInRoot];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v94 = v15;
      v95 = v13;
      [(CRLiOSImageHUDViewController *)self p_viewPositionAtTop:self->_pinnedToTopOfImage inside:0 ofUnscaledRect:v19, v13, v23, v15];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      [(CRLiOSImageHUDViewController *)self p_overlapOfViewRectWithKnobs:?];
      if (v34 > 0.0)
      {
        [(CRLiOSImageHUDViewController *)self p_viewPositionAtTop:self->_pinnedToTopOfImage inside:0 ofUnscaledRect:v19, v21, v23, v25];
        v27 = v35;
        v29 = v36;
        v31 = v37;
        v33 = v38;
        [(CRLiOSImageHUDViewController *)self p_overlapOfViewRectWithKnobs:?];
        if (v39 > 0.0)
        {
          self->_pinnedToTopOfImage = !self->_pinnedToTopOfImage;
          [(CRLiOSImageHUDViewController *)self p_viewPositionAtTop:v19 inside:v95 ofUnscaledRect:v23, v94];
          v27 = v40;
          v29 = v41;
          v31 = v42;
          v33 = v43;
          [(CRLiOSImageHUDViewController *)self p_overlapOfViewRectWithKnobs:?];
          if (v44 > 0.0)
          {
            [(CRLiOSImageHUDViewController *)self p_viewPositionAtTop:self->_pinnedToTopOfImage inside:0 ofUnscaledRect:v19, v21, v23, v25];
            v27 = v45;
            v29 = v46;
            v31 = v47;
            v33 = v48;
            [(CRLiOSImageHUDViewController *)self p_overlapOfViewRectWithKnobs:?];
            if (v49 > 0.0)
            {
              self->_pinnedToTopOfImage = !self->_pinnedToTopOfImage;
              [(CRLiOSImageHUDViewController *)self p_viewPositionAtTop:v19 inside:v95 ofUnscaledRect:v23, v94];
              v27 = v50;
              v29 = v51;
              v31 = v52;
              v33 = v53;
            }
          }
        }
      }

      canvasView = [interactiveCanvasController canvasView];
      if (!canvasView)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10133FE08();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10133FE1C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10133FEC0();
        }

        v55 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v55);
        }

        v56 = [NSString stringWithUTF8String:"[CRLiOSImageHUDViewController p_updateViewPosition]"];
        v57 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSImageHUDViewController.m"];
        [CRLAssertionHandler handleFailureInFunction:v56 file:v57 lineNumber:609 isFatal:0 description:"invalid nil value for '%{public}s'", "canvasView"];
      }

      layerHost = [interactiveCanvasController layerHost];
      asiOSCVC = [layerHost asiOSCVC];
      view2 = [asiOSCVC view];
      window = [view2 window];
      rootViewController = [window rootViewController];
      view3 = [rootViewController view];

      if (view3)
      {
        if (canvasView)
        {
          [view3 safeAreaInsets];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;
          [view3 convertRect:canvasView fromCoordinateSpace:{v27, v29, v31, v33}];
          v73 = v72;
          v75 = v74;
          v77 = v76;
          v79 = v78;
          [view3 bounds];
          [canvasView convertRect:view3 fromCoordinateSpace:{sub_100120B08(v73, v75, v77, v79, v67 + v80, v65 + v81, v82 - (v67 + v71), v83 - (v65 + v69))}];
          v27 = v84;
          v29 = v85;
          v31 = v86;
          v33 = v87;
        }
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10133FEE8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10133FF10();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10133FFB4();
        }

        v88 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v88);
        }

        v89 = [NSString stringWithUTF8String:"[CRLiOSImageHUDViewController p_updateViewPosition]"];
        v90 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSImageHUDViewController.m"];
        [CRLAssertionHandler handleFailureInFunction:v89 file:v90 lineNumber:611 isFatal:0 description:"invalid nil value for '%{public}s'", "rootView"];
      }

      if (!+[NSThread isMainThread])
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10133FFDC();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101340004();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101340094();
        }

        v91 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v91);
        }

        v92 = [NSString stringWithUTF8String:"[CRLiOSImageHUDViewController p_updateViewPosition]"];
        v93 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSImageHUDViewController.m"];
        [CRLAssertionHandler handleFailureInFunction:v92 file:v93 lineNumber:620 isFatal:0 description:"This operation must only be performed on the main thread."];
      }

      [view setFrame:{v27, v29, v31, v33}];
    }
  }
}

- (double)p_overlapOfViewRectWithKnobs:(CGRect)knobs
{
  height = knobs.size.height;
  width = knobs.size.width;
  y = knobs.origin.y;
  x = knobs.origin.x;
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  canvasView = [interactiveCanvasController canvasView];
  canvasView2 = [interactiveCanvasController canvasView];
  [canvasView convertRect:canvasView2 toView:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [interactiveCanvasController convertBoundsToUnscaledRect:{v13, v15, v17, v19}];
  v83 = v21;
  v84 = v20;
  v81 = v23;
  v82 = v22;
  v24 = objc_loadWeakRetained(&self->_rep);
  v25 = [v24 knobForTag:1];
  [v25 unscaledBoundingBoxOfHitRegionWithAdditionalScale:0.7];
  v77 = v26;
  v78 = v27;
  v79 = v29;
  v80 = v28;

  v30 = objc_loadWeakRetained(&self->_rep);
  v31 = [v30 knobForTag:3];
  [v31 unscaledBoundingBoxOfHitRegionWithAdditionalScale:0.7];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  r1_8 = v38;

  v39 = objc_loadWeakRetained(&self->_rep);
  v40 = [v39 knobForTag:7];
  [v40 unscaledBoundingBoxOfHitRegionWithAdditionalScale:0.7];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v49 = objc_loadWeakRetained(&self->_rep);
  v50 = [v49 knobForTag:9];
  [v50 unscaledBoundingBoxOfHitRegionWithAdditionalScale:0.7];
  v75 = v52;
  v76 = v51;
  r1_16 = v54;
  r1_24 = v53;

  v55 = objc_loadWeakRetained(&self->_rep);
  info = [v55 info];

  geometry = [info geometry];
  [geometry angle];
  sub_1001208E0(v58);
  v60 = v59;

  if (v60 <= 45.0)
  {
    v63 = v33;
    v64 = v35;
    v65 = v37;
    v66 = r1_8;
    r1 = v42;
    v67 = v44;
    goto LABEL_11;
  }

  v61 = v46;
  v62 = v60 >= 135.0;
  if (v60 > 225.0)
  {
    v62 = 0;
  }

  if (v60 > 315.0)
  {
    v63 = v33;
    v64 = v35;
    v65 = v37;
    v66 = r1_8;
    goto LABEL_10;
  }

  v46 = v37;
  if (v62)
  {
    v63 = v33;
    v64 = v35;
    v65 = v37;
    v66 = r1_8;
LABEL_10:
    r1 = v42;
    v67 = v44;
    v46 = v61;
    goto LABEL_11;
  }

  v63 = v42;
  v64 = v44;
  v65 = v61;
  v66 = v48;
  v67 = v35;
  v48 = r1_8;
  r1 = v33;
LABEL_11:
  v85.origin.x = v77;
  v85.size.height = v78;
  v85.size.width = v79;
  v85.origin.y = v80;
  v90 = CGRectUnion(v85, *&v63);
  v86.origin.x = v84;
  v86.origin.y = v83;
  v86.size.width = v82;
  v86.size.height = v81;
  v87 = CGRectIntersection(v86, v90);
  v68 = v87.size.width * v87.size.height + 0.0;
  v87.origin.x = r1;
  v87.origin.y = v67;
  v87.size.width = v46;
  v87.size.height = v48;
  v91.origin.y = v75;
  v91.origin.x = v76;
  v91.size.height = r1_16;
  v91.size.width = r1_24;
  v92 = CGRectUnion(v87, v91);
  v88.origin.x = v84;
  v88.origin.y = v83;
  v88.size.width = v82;
  v88.size.height = v81;
  v89 = CGRectIntersection(v88, v92);
  v69 = v68 + v89.size.width * v89.size.height;

  return v69;
}

- (void)p_didEndDynamicOperation:(id)operation
{
  [(CRLiOSImageHUDViewController *)self p_updateViewPosition];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100272FF8;
  v4[3] = &unk_10183AB38;
  v4[4] = self;
  [UIView animateWithDuration:0 delay:v4 options:0 animations:0.200000003 completion:*&qword_1019F08C0];
}

- (void)p_updateHUDAppearance
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Done" value:0 table:0];

  if (+[_TtC8Freeform19CRLFeatureFlagGroup isSolariumEnabled])
  {
    [(UIView *)self->_backgroundView crl_setGlassBackground];
    layer = [(UIView *)self->_backgroundView layer];
    [layer setCornerRadius:22.0];

    layer2 = [(UIView *)self->_backgroundView layer];
    [layer2 setCornerCurve:kCACornerCurveContinuous];

    v7 = [UIImageSymbolConfiguration configurationWithPointSize:UIFontWeightMedium weight:24.0];
    v8 = [UIImage systemImageNamed:@"checkmark.circle.fill" withConfiguration:v7];
    v9 = +[UIColor tintColor];
    v10 = [v8 imageWithTintColor:v9];

    v11 = [UIButton systemButtonWithImage:v10 target:0 action:0];
    doneButton = self->_doneButton;
    self->_doneButton = v11;

    [(UIButton *)self->_doneButton setAccessibilityLabel:v4];
    [v10 size];
    self->_doneStringWidth = v13;
    self->_viewSize.width = v13 + 220.0;
    self->_viewSize.height = 44.0;
  }

  else
  {
    v14 = +[UIColor systemBackgroundColor];
    [(UIView *)self->_backgroundView setBackgroundColor:v14];

    layer3 = [(UIView *)self->_backgroundView layer];
    [layer3 crl_applyDefaultCanvasOverlayUIShadowSettings];

    layer4 = [(UIView *)self->_backgroundView layer];
    [layer4 setCornerRadius:22.0];

    layer5 = [(UIView *)self->_backgroundView layer];
    [layer5 setCornerCurve:kCACornerCurveContinuous];

    v33 = [UIFont systemFontOfSize:18.0];
    v18 = +[UIColor labelColor];
    v34[0] = NSFontAttributeName;
    v34[1] = NSForegroundColorAttributeName;
    v35[0] = v33;
    v35[1] = v18;
    v32 = v18;
    v19 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    [v4 sizeWithAttributes:v19];
    self->_doneStringWidth = v20;
    self->_viewSize.width = v20 + 220.0;
    self->_viewSize.height = 44.0;
    v21 = +[UIButtonConfiguration filledButtonConfiguration];
    v22 = [UIButton buttonWithType:1];
    v23 = self->_doneButton;
    self->_doneButton = v22;

    v24 = [[NSAttributedString alloc] initWithString:v4 attributes:v19];
    v25 = [v19 mutableCopy];
    v26 = [v18 colorWithAlphaComponent:0.5];
    [v25 setValue:v26 forKey:NSForegroundColorAttributeName];

    v27 = [NSAttributedString alloc];
    v28 = [v25 copy];
    v29 = [v27 initWithString:v4 attributes:v28];

    [(UIButton *)self->_doneButton setAttributedTitle:v24 forState:0];
    [(UIButton *)self->_doneButton setAttributedTitle:v29 forState:1];
    [v21 setCornerStyle:4];
    v30 = +[UIColor quaternarySystemFillColor];
    [(UIButton *)self->_doneButton setTintColor:v30];

    v31 = +[UIColor blackColor];
    [v21 setBaseForegroundColor:v31];

    [(UIButton *)self->_doneButton setConfiguration:v21];
  }
}

- (BOOL)accessibilityPerformEscape
{
  WeakRetained = objc_loadWeakRetained(&self->_rep);
  [WeakRetained endEditingMask];

  return 1;
}

@end