@interface CRLCollaboratorCursorHUDController
- (CGPoint)p_cachedAnchorPointForDirection:(unint64_t)direction;
- (CGRect)p_unscaledHUDFrame;
- (CGRect)scaledFrameForHUDAtPoint:(CGPoint)point withDirection:(unint64_t)direction;
- (CGSize)p_avatarSize;
- (CGSize)p_displayStringSize;
- (CGSize)p_followButtonSize;
- (CGSize)p_followButtonStringSize;
- (CGSize)p_sizeForString:(id)string font:(id)font;
- (CRLCollaboratorCursorHUDController)initWithCollaboratorPresence:(id)presence delegate:(id)delegate hudSize:(unint64_t)size shouldAutoShrink:(BOOL)shrink shouldAutoHide:(BOOL)hide isFollowing:(BOOL)following isLocalParticipant:(BOOL)participant;
- (CRLCollaboratorCursorHUDController)initWithCollaboratorPresence:(id)presence delegate:(id)delegate string:(id)string hudSize:(unint64_t)size shouldAutoTimeout:(BOOL)timeout;
- (NSArray)decoratorOverlayRenderables;
- (double)p_avatarLeadingSpace;
- (double)p_avatarTrailingSpace;
- (double)p_currentDesiredOpacity;
- (double)p_displayStringTrailingSpace;
- (double)p_followButtonInternalHorizontalPadding;
- (double)p_followButtonTrailingSpace;
- (double)p_maximumDisplayStringWidth;
- (double)p_totalHeight;
- (double)p_widthOfEverythingExceptDisplayString;
- (id)decoratorOverlayViews;
- (id)p_bezierPathForHUDWithFrame:(CGRect)frame direction:(unint64_t)direction outAnchorPoint:(CGPoint *)point;
- (id)p_cachedPath;
- (id)p_decoratorOverlayRenderablesLegacy;
- (id)p_decoratorOverlayRenderablesWithFollow;
- (id)p_delegate;
- (id)p_followToggleOverlayView;
- (id)p_fontForDisplayString;
- (id)p_fontForFollowButtonString;
- (id)p_sizeToggleOverlayView;
- (id)p_stringToDisplay;
- (int64_t)p_getAccessibilitySizeFromTraitCollection;
- (void)dealloc;
- (void)didEndZoomingOperation;
- (void)hideHUD;
- (void)moveHUDToPoint:(CGPoint)point withDirection:(unint64_t)direction;
- (void)p_autoHideHUD;
- (void)p_autoShrinkHUD;
- (void)p_clearPathAndAnchorPointCaches;
- (void)p_followButtonPressed:(id)pressed;
- (void)p_hideFollowHUD;
- (void)p_hideHUDLegacy;
- (void)p_stringFontSize:(double *)size fontWeight:(double *)weight isDisplayString:(BOOL)string;
- (void)p_toggleSize;
- (void)p_updateButtonRenderableFillColor;
- (void)resetAutoHideTimer;
- (void)resetAutoShrinkTimer;
- (void)resetFadeOutTimer;
- (void)showHUDAtPoint:(CGPoint)point withDirection:(unint64_t)direction;
- (void)startAutoHideTimer;
- (void)startAutoShrinkTimer;
- (void)stopAutoHideTimer;
- (void)stopAutoShrinkTimer;
- (void)teardown;
- (void)userInteractionEndedForView:(id)view;
@end

@implementation CRLCollaboratorCursorHUDController

- (CRLCollaboratorCursorHUDController)initWithCollaboratorPresence:(id)presence delegate:(id)delegate string:(id)string hudSize:(unint64_t)size shouldAutoTimeout:(BOOL)timeout
{
  presenceCopy = presence;
  delegateCopy = delegate;
  stringCopy = string;
  v16 = stringCopy;
  if (presenceCopy)
  {
    if (stringCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10134739C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013473B0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10134744C();
  }

  v17 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v17);
  }

  v18 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController initWithCollaboratorPresence:delegate:string:hudSize:shouldAutoTimeout:]"];
  v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
  [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:110 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "collaboratorPresence != nil"];

  if (!v16)
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101347474();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134749C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101347538();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v20);
    }

    v21 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController initWithCollaboratorPresence:delegate:string:hudSize:shouldAutoTimeout:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:111 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "string != nil"];
  }

LABEL_22:
  v44.receiver = self;
  v44.super_class = CRLCollaboratorCursorHUDController;
  v23 = [(CRLCollaboratorCursorHUDController *)&v44 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->mCollaboratorPresence, presence);
    objc_storeWeak(&v24->mDelegate, delegateCopy);
    v25 = [v16 copy];
    mFullNameString = v24->mFullNameString;
    v24->mFullNameString = v25;

    mShortNameString = v24->mShortNameString;
    v24->mShortNameString = 0;

    mFollowString = v24->mFollowString;
    v24->mFollowString = 0;

    v24->mHUDSize = size;
    v29 = objc_alloc_init(CRLOnce);
    mPreferredSizeOfFullNameStringOnce = v24->mPreferredSizeOfFullNameStringOnce;
    v24->mPreferredSizeOfFullNameStringOnce = v29;

    v31 = objc_alloc_init(CRLOnce);
    mPreferredSizeOfShortNameStringOnce = v24->mPreferredSizeOfShortNameStringOnce;
    v24->mPreferredSizeOfShortNameStringOnce = v31;

    v24->mIsFollowing = 0;
    v24->mShouldAutoTimeout = timeout;
    mFollowButtonRenderable = v24->mFollowButtonRenderable;
    v24->mFollowButtonRenderable = 0;

    [(CRLCollaboratorCursorHUDController *)v24 p_avatarSize];
    v35 = v34;
    v37 = v36;
    v38 = [_TtC8Freeform29CRLCollaboratorAvatarRenderer alloc];
    owner = [presenceCopy owner];
    contact = [owner contact];
    v41 = [(CRLCollaboratorAvatarRenderer *)v38 initWithContact:contact size:v35, v37];
    mAvatarRenderer = v24->mAvatarRenderer;
    v24->mAvatarRenderer = v41;

    v24->mFollowEnabled = 0;
    *&v24->mShouldAutoHide = 0;
  }

  return v24;
}

- (CRLCollaboratorCursorHUDController)initWithCollaboratorPresence:(id)presence delegate:(id)delegate hudSize:(unint64_t)size shouldAutoShrink:(BOOL)shrink shouldAutoHide:(BOOL)hide isFollowing:(BOOL)following isLocalParticipant:(BOOL)participant
{
  shrinkCopy = shrink;
  presenceCopy = presence;
  delegateCopy = delegate;
  if (!presenceCopy)
  {
    HIDWORD(v48) = shrinkCopy;
    LODWORD(v48) = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101347560();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101347574();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101347610();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v18);
    }

    v19 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController initWithCollaboratorPresence:delegate:hudSize:shouldAutoShrink:shouldAutoHide:isFollowing:isLocalParticipant:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:138 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "collaboratorPresence != nil", v48];

    LOBYTE(shrinkCopy) = v49;
  }

  v50.receiver = self;
  v50.super_class = CRLCollaboratorCursorHUDController;
  v21 = [(CRLCollaboratorCursorHUDController *)&v50 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->mCollaboratorPresence, presence);
    objc_storeWeak(&v22->mDelegate, delegateCopy);
    v22->mHUDSize = size;
    v23 = objc_alloc_init(CRLOnce);
    mPreferredSizeOfFullNameStringOnce = v22->mPreferredSizeOfFullNameStringOnce;
    v22->mPreferredSizeOfFullNameStringOnce = v23;

    v25 = objc_alloc_init(CRLOnce);
    mPreferredSizeOfShortNameStringOnce = v22->mPreferredSizeOfShortNameStringOnce;
    v22->mPreferredSizeOfShortNameStringOnce = v25;

    v27 = objc_alloc_init(CRLOnce);
    mPreferredSizeOfFollowStringOnce = v22->mPreferredSizeOfFollowStringOnce;
    v22->mPreferredSizeOfFollowStringOnce = v27;

    v22->mIsFollowing = following;
    v22->mIsLocalParticipant = participant;
    v22->mShouldAutoHide = hide;
    v22->mShouldAutoShrink = shrinkCopy;
    v22->mShouldAutoTimeout = 0;
    v22->mFollowEnabled = 1;
    shortDisplayName = [presenceCopy shortDisplayName];
    v30 = [shortDisplayName copy];
    mShortNameString = v22->mShortNameString;
    v22->mShortNameString = v30;

    displayName = [presenceCopy displayName];
    v33 = [displayName copy];
    mFullNameString = v22->mFullNameString;
    v22->mFullNameString = v33;

    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:@"Follow" value:0 table:0];
    mFollowString = v22->mFollowString;
    v22->mFollowString = v36;

    [(CRLCollaboratorCursorHUDController *)v22 p_avatarSize];
    v39 = v38;
    v41 = v40;
    v42 = [_TtC8Freeform29CRLCollaboratorAvatarRenderer alloc];
    owner = [presenceCopy owner];
    contact = [owner contact];
    v45 = [(CRLCollaboratorAvatarRenderer *)v42 initWithContact:contact size:v39, v41];
    mAvatarRenderer = v22->mAvatarRenderer;
    v22->mAvatarRenderer = v45;
  }

  return v22;
}

- (void)dealloc
{
  [(NSTimer *)self->mHideHUDTimer invalidate];
  [(NSTimer *)self->mAbsoluteTimeTimer invalidate];
  [(NSTimer *)self->mAutoShrinkTimer invalidate];
  [(NSTimer *)self->mAutoHideTimer invalidate];
  v3.receiver = self;
  v3.super_class = CRLCollaboratorCursorHUDController;
  [(CRLCollaboratorCursorHUDController *)&v3 dealloc];
}

- (void)teardown
{
  [(NSTimer *)self->mHideHUDTimer invalidate];
  mHideHUDTimer = self->mHideHUDTimer;
  self->mHideHUDTimer = 0;

  [(NSTimer *)self->mAbsoluteTimeTimer invalidate];
  mAbsoluteTimeTimer = self->mAbsoluteTimeTimer;
  self->mAbsoluteTimeTimer = 0;

  [(CRLCollaboratorCursorHUDController *)self stopAutoHideTimer];
  [(CRLCollaboratorCursorHUDController *)self stopAutoShrinkTimer];
  p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
  [p_delegate removeCollaboratorHUDController:self];

  mHUDRenderable = self->mHUDRenderable;
  self->mHUDRenderable = 0;

  mSizeToggleOverlayView = self->mSizeToggleOverlayView;
  self->mSizeToggleOverlayView = 0;

  mFollowToggleOverlayView = self->mFollowToggleOverlayView;
  self->mFollowToggleOverlayView = 0;

  self->mShouldAutoTimeout = 0;
}

- (void)showHUDAtPoint:(CGPoint)point withDirection:(unint64_t)direction
{
  y = point.y;
  x = point.x;
  p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
  [p_delegate addCollaboratorHUDController:self];

  if (sub_1001228B4())
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101347638();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134764C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134770C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController showHUDAtPoint:withDirection:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
    v15.x = x;
    v15.y = y;
    v12 = NSStringFromCGPoint(v15);
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:189 isFatal:0 description:"Invalid target point for collaborator HUD! %@", v12];

    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  self->mTargetPoint.x = x;
  self->mTargetPoint.y = y;
  self->mDirection = direction;
  if (self->mFollowEnabled)
  {
    if (!self->mHUDSize)
    {
      if (self->mShouldAutoShrink)
      {
        [(CRLCollaboratorCursorHUDController *)self resetAutoShrinkTimer];
      }

      if (self->mShouldAutoHide)
      {
        [(CRLCollaboratorCursorHUDController *)self resetAutoHideTimer];
      }
    }
  }

  else
  {
    [(CRLCollaboratorCursorHUDController *)self resetFadeOutTimer];
    if (self->mShouldUnconditionallyFadeOutHUD && self->mShouldAutoTimeout && !self->mAbsoluteTimeTimer && self->mHUDSize == 1)
    {
      v13 = [NSTimer scheduledTimerWithTimeInterval:self target:"hideHUD" selector:0 userInfo:0 repeats:7.0];
      mAbsoluteTimeTimer = self->mAbsoluteTimeTimer;
      self->mAbsoluteTimeTimer = v13;
    }

    if (!self->mHUDSize && !self->mShouldAutoTimeout && !self->mAutoShrinkTimer)
    {
      [(CRLCollaboratorCursorHUDController *)self resetAutoShrinkTimer];
    }
  }
}

- (void)hideHUD
{
  if (self->mFollowEnabled)
  {
    [(CRLCollaboratorCursorHUDController *)self p_hideFollowHUD];
  }

  else
  {
    [(CRLCollaboratorCursorHUDController *)self p_hideHUDLegacy];
  }
}

- (void)resetFadeOutTimer
{
  if (self->mShouldUnconditionallyFadeOutHUD && self->mShouldAutoTimeout)
  {
    [(NSTimer *)self->mHideHUDTimer invalidate];
    v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"hideHUD" selector:0 userInfo:0 repeats:1.75];
    mHideHUDTimer = self->mHideHUDTimer;
    self->mHideHUDTimer = v3;
  }
}

- (void)moveHUDToPoint:(CGPoint)point withDirection:(unint64_t)direction
{
  y = point.y;
  x = point.x;
  if (sub_1001228B4())
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101347734();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101347748();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101347808();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController moveHUDToPoint:withDirection:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
    v18.x = x;
    v18.y = y;
    v11 = NSStringFromCGPoint(v18);
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:249 isFatal:0 description:"Invalid target point for collaborator HUD! %@", v11];
  }

  else
  {
    if (self->mTargetPoint.x == x && self->mTargetPoint.y == y)
    {
      mDirection = self->mDirection;
      self->mTargetPoint.x = x;
      self->mTargetPoint.y = y;
      self->mDirection = direction;
      mHUDRenderable = self->mHUDRenderable;
      self->mHUDRenderable = 0;

      if (mDirection == direction)
      {
        return;
      }
    }

    else
    {
      self->mTargetPoint.x = x;
      self->mTargetPoint.y = y;
      self->mDirection = direction;
      v13 = self->mHUDRenderable;
      self->mHUDRenderable = 0;
    }

    p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
    [p_delegate positionDidUpdateForCollaboratorHUDController:self];
  }
}

- (CGRect)scaledFrameForHUDAtPoint:(CGPoint)point withDirection:(unint64_t)direction
{
  y = point.y;
  x = point.x;
  if (sub_1001228B4())
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101347830();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101347844();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101347904();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController scaledFrameForHUDAtPoint:withDirection:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
    v35.x = x;
    v35.y = y;
    v11 = NSStringFromCGPoint(v35);
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:265 isFatal:0 description:"Invalid target point for collaborator HUD! %@", v11];

    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  [(CRLCollaboratorCursorHUDController *)self p_unscaledHUDFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = +[CRLCanvasShapeRenderable renderable];
  v34 = CGPointZero;
  v21 = [(CRLCollaboratorCursorHUDController *)self p_bezierPathForHUDWithFrame:direction direction:&v34 outAnchorPoint:v13, v15, v17, v19];
  [v20 setPath:{objc_msgSend(v21, "CGPath")}];
  [v21 bounds];
  [v20 setBounds:?];
  [v20 setAnchorPoint:v34];
  [v20 setPosition:{x, y}];
  [v20 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (id)p_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);

  return WeakRetained;
}

- (void)didEndZoomingOperation
{
  p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
  [p_delegate updatePositionForCollaboratorHUDController:self];
}

- (void)p_hideFollowHUD
{
  [(CRLCollaboratorCursorHUDController *)self stopAutoHideTimer];
  [(CRLCanvasRenderable *)self->mHUDRenderable setOpacity:0.0];
  [(CRLCollaboratorCursorOverlayView *)self->mSizeToggleOverlayView setAlpha:0.0];
  [(CRLCollaboratorCursorOverlayView *)self->mFollowToggleOverlayView setAlpha:0.0];
  p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
  [p_delegate removeCollaboratorHUDController:self];
}

- (void)p_hideHUDLegacy
{
  [(NSTimer *)self->mHideHUDTimer invalidate];
  mHideHUDTimer = self->mHideHUDTimer;
  self->mHideHUDTimer = 0;

  [(NSTimer *)self->mAbsoluteTimeTimer invalidate];
  mAbsoluteTimeTimer = self->mAbsoluteTimeTimer;
  self->mAbsoluteTimeTimer = 0;

  if (self->mFadeStartTime == 0.0)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    self->mFadeStartTime = v5;
  }

  [(CRLCollaboratorCursorHUDController *)self p_currentDesiredOpacity];
  v7 = v6;
  *&v6 = v6;
  [(CRLCanvasRenderable *)self->mHUDRenderable setOpacity:v6];
  [(CRLCollaboratorCursorOverlayView *)self->mSizeToggleOverlayView setAlpha:v7];
  [(CRLCollaboratorCursorOverlayView *)self->mFollowToggleOverlayView setAlpha:v7];
  +[CATransaction begin];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002AF514;
  v11[3] = &unk_10183AB38;
  v11[4] = self;
  [CATransaction setCompletionBlock:v11];
  [(CRLCanvasRenderable *)self->mHUDRenderable opacity];
  v9 = sub_100120944(0.0, 0.200000003, v8);
  [CATransaction setAnimationDuration:?];
  [(CRLCanvasRenderable *)self->mHUDRenderable setOpacity:0.0];
  +[CATransaction commit];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002AF5BC;
  v10[3] = &unk_10183AB38;
  v10[4] = self;
  [UIView animateWithDuration:v10 animations:v9];
}

- (double)p_currentDesiredOpacity
{
  if (self->mFadeStartTime == 0.0)
  {
    return 1.0;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  result = (v3 - self->mFadeStartTime) / -0.200000003 + 1.0;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)p_followButtonPressed:(id)pressed
{
  p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
  [p_delegate beginFollowing:self->mCollaboratorPresence forHUDController:self];
}

- (id)p_stringToDisplay
{
  if (self->mFollowEnabled && !self->mIsFollowing)
  {
    v2 = 112;
  }

  else
  {
    v2 = 104;
  }

  return *(&self->super.isa + v2);
}

- (NSArray)decoratorOverlayRenderables
{
  if (self->mFollowEnabled)
  {
    [(CRLCollaboratorCursorHUDController *)self p_decoratorOverlayRenderablesWithFollow];
  }

  else
  {
    [(CRLCollaboratorCursorHUDController *)self p_decoratorOverlayRenderablesLegacy];
  }
  v2 = ;

  return v2;
}

- (id)p_decoratorOverlayRenderablesLegacy
{
  mHideHUDTimer = self->mHideHUDTimer;
  p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
  [(CRLCollaboratorCursorHUDController *)self p_currentDesiredOpacity];
  v6 = v5;
  [p_delegate updatePositionForCollaboratorHUDController:self];
  if (self->mHideHUDTimer)
  {
    v7 = 1;
  }

  else
  {
    v7 = mHideHUDTimer == 0;
  }

  if (v7)
  {
    mHUDRenderable = self->mHUDRenderable;
    if (!mHUDRenderable)
    {
      v9 = sub_1004A48FC();
      [(CRLCollaboratorCursorHUDController *)self p_unscaledHUDFrame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      p_stringToDisplay = [(CRLCollaboratorCursorHUDController *)self p_stringToDisplay];
      v19 = +[CRLCanvasShapeRenderable renderable];
      v20 = self->mHUDRenderable;
      self->mHUDRenderable = v19;

      [(CRLCanvasRenderable *)self->mHUDRenderable setZPosition:1.0];
      if (sub_1001207D0(v11, v13, v15, v17))
      {
        v74 = CGPointZero;
        v21 = [(CRLCollaboratorCursorHUDController *)self p_bezierPathForHUDWithFrame:self->mDirection direction:&v74 outAnchorPoint:v11, v13, v15, v17];
        if ([v21 isEmpty])
        {
          v22 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101347968();
          }

          v23 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v69 = v23;
            v95.origin.x = v11;
            v95.origin.y = v13;
            v95.size.width = v15;
            v95.size.height = v17;
            v70 = NSStringFromCGRect(v95);
            mDirection = self->mDirection;
            mHUDSize = self->mHUDSize;
            *buf = 67110914;
            *&buf[4] = v22;
            v77 = 2082;
            v78 = "[CRLCollaboratorCursorHUDController p_decoratorOverlayRenderablesLegacy]";
            v79 = 2082;
            v80 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m";
            v81 = 1024;
            v82 = 432;
            v83 = 2114;
            v84 = v70;
            v85 = 2048;
            v86 = mDirection;
            v87 = 2048;
            v88 = mHUDSize;
            v89 = 2112;
            v90 = p_stringToDisplay;
            _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Produced an empty bezier path for HUD with frame %{public}@ direction %zi HUD size %zi string %@", buf, 0x4Au);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101347990();
          }

          v24 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v24);
          }

          v25 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController p_decoratorOverlayRenderablesLegacy]"];
          v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
          v92.origin.x = v11;
          v92.origin.y = v13;
          v92.size.width = v15;
          v92.size.height = v17;
          v27 = NSStringFromCGRect(v92);
          [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:432 isFatal:0 description:"Produced an empty bezier path for HUD with frame %{public}@ direction %zi HUD size %zi string %@", v27, self->mDirection, self->mHUDSize, p_stringToDisplay];
        }

        else
        {
          -[CRLCanvasShapeRenderable setPath:](self->mHUDRenderable, "setPath:", [v21 CGPath]);
          [v21 bounds];
          [(CRLCanvasRenderable *)self->mHUDRenderable setBounds:?];
          [(CRLCanvasRenderable *)self->mHUDRenderable setAnchorPoint:v74];
          if ((sub_1001228B4() & 1) == 0)
          {
            [(CRLCanvasRenderable *)self->mHUDRenderable setPosition:self->mTargetPoint.x, self->mTargetPoint.y];
            [(CRLCanvasRenderable *)self->mHUDRenderable frame];
            v36 = v35;
            v38 = v37;
            v40 = v39;
            v42 = v41;
            [p_delegate contentsScale];
            [(CRLCanvasRenderable *)self->mHUDRenderable setFrame:sub_1001221E8(v36, v38, v40, v42, v43)];
          }

          if ([(CRLCollaboratorCursorHUDController *)self p_isCompact])
          {
            v25 = +[CRLColor clearColor];
          }

          else
          {
            owner = [(CRLCollaboratorPresence *)self->mCollaboratorPresence owner];
            v25 = [owner collaboratorColorForType:1];
          }

          -[CRLCanvasShapeRenderable setFillColor:](self->mHUDRenderable, "setFillColor:", [v25 CGColor]);
          *&v45 = v6;
          [(CRLCanvasRenderable *)self->mHUDRenderable setOpacity:v45];
          v26 = +[CRLCanvasRenderable renderable];
          mAvatarRenderer = self->mAvatarRenderer;
          [p_delegate contentsScale];
          v27 = [(CRLCollaboratorAvatarRenderer *)mAvatarRenderer renderAvatarImageWithContentsScale:?];
          [(CRLCollaboratorCursorHUDController *)self p_avatarSize];
          v48 = v47;
          v50 = v49;
          [(CRLCollaboratorCursorHUDController *)self p_avatarLeadingSpace];
          if (v9)
          {
            v52 = v15 - v51 - v48;
          }

          else
          {
            v52 = v51;
          }

          [v26 setContents:{objc_msgSend(v27, "CGImage")}];
          [v26 setFrame:{v52, (v17 - v50) * 0.5, v48, v50}];
          [p_delegate contentsScale];
          [v26 setContentsScale:?];
          [(CRLCanvasRenderable *)self->mHUDRenderable addSubrenderable:v26];
          if (![(CRLCollaboratorCursorHUDController *)self p_isCompact])
          {
            [(CRLCollaboratorCursorHUDController *)self p_displayStringSize];
            v54 = v53;
            v56 = v55;
            v57 = +[CRLCanvasTextRenderable renderable];
            [(CRLCollaboratorCursorHUDController *)self p_avatarLeadingSpace];
            v59 = v48 + v58;
            [(CRLCollaboratorCursorHUDController *)self p_avatarTrailingSpace];
            v61 = v59 + v60;
            if (v9)
            {
              v62 = v15 - (v54 + v61);
            }

            else
            {
              v62 = v61;
            }

            [v57 setString:p_stringToDisplay];
            [p_delegate contentsScale];
            [v57 setFrame:{sub_1001221E8(v62, (v17 - v56) * 0.5, v54, v56, v63)}];
            *buf = 0;
            v73 = 0.0;
            [(CRLCollaboratorCursorHUDController *)self p_stringFontSize:buf fontWeight:&v73 isDisplayString:1];
            [v57 setFontSize:*buf];
            if ([p_stringToDisplay length] >= 4)
            {
              [v57 setTruncationMode:kCATruncationEnd];
            }

            v64 = [UIFont systemFontOfSize:*buf weight:v73];
            [v57 setFont:v64];
            v65 = +[CRLColor whiteColor];
            [v57 setForegroundColor:{objc_msgSend(v65, "CGColor")}];

            [p_delegate contentsScale];
            [v57 setContentsScale:?];
            [(CRLCanvasRenderable *)self->mHUDRenderable addSubrenderable:v57];
          }
        }
      }

      else
      {
        v29 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10134792C();
        }

        v30 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v67 = v30;
          v94.origin.x = v11;
          v94.origin.y = v13;
          v94.size.width = v15;
          v94.size.height = v17;
          v68 = NSStringFromCGRect(v94);
          *buf = 67110402;
          *&buf[4] = v29;
          v77 = 2082;
          v78 = "[CRLCollaboratorCursorHUDController p_decoratorOverlayRenderablesLegacy]";
          v79 = 2082;
          v80 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m";
          v81 = 1024;
          v82 = 427;
          v83 = 2114;
          v84 = v68;
          v85 = 2112;
          v86 = p_stringToDisplay;
          _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Not creating cursor HUD because frame is %{public}@ for string %@", buf, 0x36u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101347940();
        }

        v31 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v31);
        }

        v32 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController p_decoratorOverlayRenderablesLegacy]"];
        v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
        v93.origin.x = v11;
        v93.origin.y = v13;
        v93.size.width = v15;
        v93.size.height = v17;
        v34 = NSStringFromCGRect(v93);
        [CRLAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:427 isFatal:0 description:"Not creating cursor HUD because frame is %{public}@ for string %@", v34, p_stringToDisplay];
      }

      if (v6 < 1.0)
      {
        [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"hideHUD" object:0];
        [(CRLCollaboratorCursorHUDController *)self performSelector:"hideHUD" withObject:0 afterDelay:0.0];
      }

      mHUDRenderable = self->mHUDRenderable;
    }

    v75 = mHUDRenderable;
    v28 = [NSArray arrayWithObjects:&v75 count:1];
  }

  else
  {
    v28 = &__NSArray0__struct;
  }

  return v28;
}

- (id)p_decoratorOverlayRenderablesWithFollow
{
  p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
  [p_delegate updatePositionForCollaboratorHUDController:self];
  mHUDRenderable = self->mHUDRenderable;
  if (!mHUDRenderable)
  {
    v5 = sub_1004A48FC();
    [(CRLCollaboratorCursorHUDController *)self p_unscaledHUDFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = +[CRLCanvasShapeRenderable renderable];
    v15 = self->mHUDRenderable;
    self->mHUDRenderable = v14;

    p_stringToDisplay = [(CRLCollaboratorCursorHUDController *)self p_stringToDisplay];
    mFollowButtonRenderable = self->mFollowButtonRenderable;
    self->mFollowButtonRenderable = 0;

    [(CRLCanvasRenderable *)self->mHUDRenderable setZPosition:1.0];
    if (sub_1001207D0(v7, v9, v11, v13))
    {
      v123 = CGPointZero;
      v18 = [(CRLCollaboratorCursorHUDController *)self p_bezierPathForHUDWithFrame:self->mDirection direction:&v123 outAnchorPoint:v7, v9, v11, v13];
      if ([v18 isEmpty])
      {
        v19 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101347A1C();
        }

        v20 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v111 = v20;
          v143.origin.x = v7;
          v143.origin.y = v9;
          v143.size.width = v11;
          v143.size.height = v13;
          v112 = NSStringFromCGRect(v143);
          mDirection = self->mDirection;
          mHUDSize = self->mHUDSize;
          *buf = 67110914;
          *&buf[4] = v19;
          *&buf[8] = 2082;
          *&buf[10] = "[CRLCollaboratorCursorHUDController p_decoratorOverlayRenderablesWithFollow]";
          *&buf[18] = 2082;
          *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m";
          v126 = 1024;
          v127 = 530;
          v128 = 2114;
          v129 = v112;
          v130 = 2048;
          v131 = mDirection;
          v132 = 2048;
          v133 = mHUDSize;
          v134 = 2112;
          v135 = p_stringToDisplay;
          _os_log_error_impl(&_mh_execute_header, v111, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Produced an empty bezier path for HUD with frame %{public}@ direction %zi HUD size %zi string %@", buf, 0x4Au);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101347A44();
        }

        v21 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v21);
        }

        v22 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController p_decoratorOverlayRenderablesWithFollow]"];
        v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
        v137.origin.x = v7;
        v137.origin.y = v9;
        v137.size.width = v11;
        v137.size.height = v13;
        v24 = NSStringFromCGRect(v137);
        [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:530 isFatal:0 description:"Produced an empty bezier path for HUD with frame %{public}@ direction %zi HUD size %zi string %@", v24, self->mDirection, self->mHUDSize, p_stringToDisplay];
      }

      else
      {
        -[CRLCanvasShapeRenderable setPath:](self->mHUDRenderable, "setPath:", [v18 CGPath]);
        [v18 bounds];
        [(CRLCanvasRenderable *)self->mHUDRenderable setBounds:?];
        [(CRLCanvasRenderable *)self->mHUDRenderable setAnchorPoint:v123];
        if ((sub_1001228B4() & 1) == 0)
        {
          [(CRLCanvasRenderable *)self->mHUDRenderable setPosition:self->mTargetPoint.x, self->mTargetPoint.y];
          [(CRLCanvasRenderable *)self->mHUDRenderable frame];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;
          [p_delegate contentsScale];
          [(CRLCanvasRenderable *)self->mHUDRenderable setFrame:sub_1001221E8(v32, v34, v36, v38, v39)];
        }

        owner = [(CRLCollaboratorPresence *)self->mCollaboratorPresence owner];
        v41 = [owner collaboratorColorForType:1];

        if (!v41)
        {
          if (qword_101AD5B90 != -1)
          {
            sub_1013479F4();
          }

          v42 = off_1019EDBE8;
          if (os_log_type_enabled(off_1019EDBE8, OS_LOG_TYPE_INFO))
          {
            mCollaboratorPresence = self->mCollaboratorPresence;
            v44 = v42;
            owner2 = [(CRLCollaboratorPresence *)mCollaboratorPresence owner];
            *buf = 138543618;
            *&buf[4] = mCollaboratorPresence;
            *&buf[12] = 2114;
            *&buf[14] = owner2;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Collaborator Cursor: Unable to load collaborator color for presence: %{public}@ %{public}@", buf, 0x16u);
          }
        }

        v119 = v41;
        -[CRLCanvasShapeRenderable setFillColor:](self->mHUDRenderable, "setFillColor:", [v41 CGColor]);
        v46 = +[CRLColor blackColor];
        -[CRLCanvasRenderable setShadowColor:](self->mHUDRenderable, "setShadowColor:", [v46 CGColor]);

        LODWORD(v47) = 1045220557;
        [(CRLCanvasRenderable *)self->mHUDRenderable setShadowOpacity:v47];
        [(CRLCanvasRenderable *)self->mHUDRenderable setShadowRadius:12.0];
        [(CRLCanvasRenderable *)self->mHUDRenderable setShadowOffset:0.0, 2.0];
        v23 = +[CRLCanvasRenderable renderable];
        mAvatarRenderer = self->mAvatarRenderer;
        [p_delegate contentsScale];
        v24 = [(CRLCollaboratorAvatarRenderer *)mAvatarRenderer renderAvatarImageWithContentsScale:?];
        [(CRLCollaboratorCursorHUDController *)self p_avatarSize];
        v50 = v49;
        v52 = v51;
        [(CRLCollaboratorCursorHUDController *)self p_avatarLeadingSpace];
        if (v5)
        {
          v54 = v11 - v53 - v50;
        }

        else
        {
          v54 = v53;
        }

        [v23 setContents:{objc_msgSend(v24, "CGImage")}];
        [v23 setFrame:{v54, (v13 - v52) * 0.5, v50, v52}];
        [p_delegate contentsScale];
        [v23 setContentsScale:?];
        v55 = +[CRLCanvasShapeRenderable renderable];
        v56 = [CRLColor colorWithWhite:0.0 alpha:0.100000001];
        [v55 setFillColor:{objc_msgSend(v56, "CGColor")}];

        v139.origin.x = v54;
        v139.origin.y = (v13 - v52) * 0.5;
        v139.size.width = v50;
        v139.size.height = v52;
        v140 = CGRectInset(v139, -1.0, -1.0);
        v57 = [CRLBezierPath bezierPathWithOvalInRect:v140.origin.x, v140.origin.y, v140.size.width, v140.size.height];
        [v55 setPath:{objc_msgSend(v57, "CGPath")}];
        [v23 anchorPoint];
        [v55 setAnchorPoint:?];
        [(CRLCanvasRenderable *)self->mHUDRenderable addSubrenderable:v55];
        [(CRLCanvasRenderable *)self->mHUDRenderable addSubrenderable:v23];
        if (![(CRLCollaboratorCursorHUDController *)self p_isCompact])
        {
          v118 = v18;
          [(CRLCollaboratorCursorHUDController *)self p_displayStringSize];
          v59 = v58;
          v61 = v60;
          v62 = +[CRLCanvasTextRenderable renderable];
          [v62 setString:p_stringToDisplay];
          [(CRLCollaboratorCursorHUDController *)self p_avatarLeadingSpace];
          v64 = v50 + v63;
          [(CRLCollaboratorCursorHUDController *)self p_avatarTrailingSpace];
          v66 = v64 + v65;
          v67 = v59 + v66;
          if (v5)
          {
            v68 = v11 - (v59 + v66);
          }

          else
          {
            v68 = v66;
          }

          [p_delegate contentsScale];
          [v62 setFrame:{sub_1001221E8(v68, (v13 - v61) * 0.5, v59, v61, v69)}];
          [v62 frame];
          v71 = v70;
          [v62 frame];
          v73 = v72;
          [v62 frame];
          v75 = v74;
          [v62 frame];
          [v62 setFrame:{v71, v73, v75, v13 - v76}];
          *buf = 0;
          v122 = 0;
          [(CRLCollaboratorCursorHUDController *)self p_stringFontSize:buf fontWeight:&v122 isDisplayString:1];
          [v62 setFontSize:*buf];
          if ([p_stringToDisplay length] >= 4)
          {
            [v62 setTruncationMode:kCATruncationEnd];
          }

          [v62 setFont:{-[CRLCollaboratorCursorHUDController p_fontForDisplayString](self, "p_fontForDisplayString")}];
          v77 = +[CRLColor whiteColor];
          [v62 setForegroundColor:{objc_msgSend(v77, "CGColor")}];

          [p_delegate contentsScale];
          [v62 setContentsScale:?];
          [(CRLCanvasRenderable *)self->mHUDRenderable addSubrenderable:v62];
          if (!self->mIsFollowing && !self->mIsLocalParticipant)
          {
            [(CRLCollaboratorCursorHUDController *)self p_followButtonSize];
            v79 = v78;
            v81 = v80;
            [(CRLCollaboratorCursorHUDController *)self p_displayStringTrailingSpace];
            v83 = v67 + v82;
            if (v5)
            {
              v84 = v11 - (v79 + v83);
            }

            else
            {
              v84 = v83;
            }

            [p_delegate contentsScale];
            v86 = sub_1001221E8(v84, (v13 - v81) * 0.5, v79, v81, v85);
            v88 = v87;
            v90 = v89;
            v92 = v91;
            v93 = +[CRLCanvasShapeRenderable renderable];
            v116 = [CRLBezierPath bezierPathWithContinuousCornerRoundedRect:v86 cornerRadius:v88, v90, v92, v92 * 0.5];
            -[CRLCanvasShapeRenderable setPath:](v93, "setPath:", [v116 CGPath]);
            [(CRLCanvasRenderable *)self->mHUDRenderable addSubrenderable:v93];
            v117 = v57;
            v94 = self->mFollowButtonRenderable;
            self->mFollowButtonRenderable = v93;
            v115 = v93;

            [(CRLCollaboratorCursorHUDController *)self p_updateButtonRenderableFillColor];
            [(CRLCollaboratorCursorHUDController *)self p_followButtonStringSize];
            v96 = v95;
            v98 = v97;
            v141.origin.x = v86;
            v141.origin.y = v88;
            v141.size.width = v90;
            v141.size.height = v92;
            MinX = CGRectGetMinX(v141);
            [(CRLCollaboratorCursorHUDController *)self p_followButtonInternalHorizontalPadding];
            v101 = MinX + v100;
            [(CRLCollaboratorCursorHUDController *)self p_verticalTextOffset];
            v103 = (v13 - v98) * 0.5 - v102;
            v104 = +[CRLCanvasTextRenderable renderable];
            [v104 setString:self->mFollowString];
            [p_delegate contentsScale];
            [v104 setFrame:{sub_1001221E8(v101, v103, v96, v98, v105)}];
            v120 = 0;
            v121 = 0.0;
            [(CRLCollaboratorCursorHUDController *)self p_stringFontSize:&v121 fontWeight:&v120 isDisplayString:0];
            [v104 setFontSize:v121];
            [v104 setFont:{-[CRLCollaboratorCursorHUDController p_fontForFollowButtonString](self, "p_fontForFollowButtonString")}];
            v106 = +[CRLColor whiteColor];
            [v104 setForegroundColor:{objc_msgSend(v106, "CGColor")}];

            v57 = v117;
            [p_delegate contentsScale];
            [v104 setContentsScale:?];
            [(CRLCanvasRenderable *)self->mHUDRenderable addSubrenderable:v104];
          }

          v18 = v118;
        }

        v22 = v119;
      }
    }

    else
    {
      v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013479B8();
      }

      v26 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v109 = v26;
        v142.origin.x = v7;
        v142.origin.y = v9;
        v142.size.width = v11;
        v142.size.height = v13;
        v110 = NSStringFromCGRect(v142);
        *buf = 67110402;
        *&buf[4] = v25;
        *&buf[8] = 2082;
        *&buf[10] = "[CRLCollaboratorCursorHUDController p_decoratorOverlayRenderablesWithFollow]";
        *&buf[18] = 2082;
        *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m";
        v126 = 1024;
        v127 = 525;
        v128 = 2114;
        v129 = v110;
        v130 = 2112;
        v131 = p_stringToDisplay;
        _os_log_error_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Not creating cursor HUD because frame is %{public}@ for string %@", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013479CC();
      }

      v27 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v27);
      }

      v28 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController p_decoratorOverlayRenderablesWithFollow]"];
      v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
      v138.origin.x = v7;
      v138.origin.y = v9;
      v138.size.width = v11;
      v138.size.height = v13;
      v30 = NSStringFromCGRect(v138);
      [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:525 isFatal:0 description:"Not creating cursor HUD because frame is %{public}@ for string %@", v30, p_stringToDisplay];
    }

    mHUDRenderable = self->mHUDRenderable;
  }

  v124 = mHUDRenderable;
  v107 = [NSArray arrayWithObjects:&v124 count:1];

  return v107;
}

- (void)p_updateButtonRenderableFillColor
{
  v3 = 0.5;
  if (!self->mInteractionInProgress)
  {
    v3 = 0.300000012;
  }

  v4 = [CRLColor colorWithWhite:0.0 alpha:v3];
  -[CRLCanvasShapeRenderable setFillColor:](self->mFollowButtonRenderable, "setFillColor:", [v4 CGColor]);
}

- (id)p_followToggleOverlayView
{
  mFollowToggleOverlayView = self->mFollowToggleOverlayView;
  if (!mFollowToggleOverlayView)
  {
    v4 = [[CRLCollaboratorCursorOverlayView alloc] initWithFrame:NSZeroRect.origin.x, NSZeroRect.origin.y, NSZeroRect.size.width, NSZeroRect.size.height];
    v5 = self->mFollowToggleOverlayView;
    self->mFollowToggleOverlayView = v4;

    mFollowToggleOverlayView = self->mFollowToggleOverlayView;
  }

  return mFollowToggleOverlayView;
}

- (id)p_sizeToggleOverlayView
{
  mSizeToggleOverlayView = self->mSizeToggleOverlayView;
  if (!mSizeToggleOverlayView)
  {
    v4 = [[CRLCollaboratorCursorOverlayView alloc] initWithFrame:NSZeroRect.origin.x, NSZeroRect.origin.y, NSZeroRect.size.width, NSZeroRect.size.height];
    v5 = self->mSizeToggleOverlayView;
    self->mSizeToggleOverlayView = v4;

    mSizeToggleOverlayView = self->mSizeToggleOverlayView;
  }

  return mSizeToggleOverlayView;
}

- (id)decoratorOverlayViews
{
  if (!self->mFollowEnabled || !self->mHUDRenderable || (-[CRLCollaboratorCursorHUDController p_delegate](self, "p_delegate"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 shouldSuppressCollaboratorCursorHUDForController:self], v3, (v4 & 1) != 0))
  {
    v5 = &__NSArray0__struct;
    goto LABEL_5;
  }

  p_isCompact = [(CRLCollaboratorCursorHUDController *)self p_isCompact];
  v8 = sub_1004A48FC();
  [(CRLCollaboratorCursorHUDController *)self p_unscaledHUDFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (sub_1001207D0(v9, v11, v13, v15))
  {
    if ((p_isCompact & 1) == 0)
    {
LABEL_30:
      p_sizeToggleOverlayView2 = +[NSMutableArray array];
      [(CRLCollaboratorCursorHUDController *)self p_avatarLeadingSpace];
      v29 = v28;
      [(CRLCollaboratorCursorHUDController *)self p_avatarSize];
      v31 = v29 + v30;
      [(CRLCollaboratorCursorHUDController *)self p_avatarTrailingSpace];
      v33 = v32 + v31;
      if (v8)
      {
        v34 = v14 - v33;
      }

      else
      {
        v34 = 0.0;
      }

      if (!sub_1001207D0(v34, 0.0, v33, v16))
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101347C18();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101347C40();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101347CD0();
        }

        v35 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v35);
        }

        v36 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController decoratorOverlayViews]"];
        v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
        [CRLAssertionHandler handleFailureInFunction:v36 file:v37 lineNumber:716 isFatal:0 description:"Non-finite sizeOverlayFrameInRenderable."];
      }

      [(CRLCanvasRenderable *)self->mHUDRenderable frame];
      v39 = sub_10011F334(v34, 0.0, v38);
      v41 = v40;
      p_sizeToggleOverlayView = [(CRLCollaboratorCursorHUDController *)self p_sizeToggleOverlayView];
      [p_sizeToggleOverlayView setInteractionDelegate:self];
      [p_sizeToggleOverlayView setFrame:{v39, v41, v33, v16}];
      [p_sizeToggleOverlayView2 addObject:p_sizeToggleOverlayView];
      if (!self->mIsFollowing)
      {
        [(CRLCollaboratorCursorHUDController *)self p_followButtonSize];
        v44 = v43;
        [(CRLCollaboratorCursorHUDController *)self p_displayStringSize];
        v46 = v33 + v45;
        [(CRLCollaboratorCursorHUDController *)self p_displayStringTrailingSpace];
        v48 = v47 + v46;
        if (v8)
        {
          v49 = v14 - (v44 + v48);
        }

        else
        {
          v49 = v48;
        }

        if (!sub_1001207D0(v49, 0.0, v44, v16))
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101347CF8();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101347D20();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101347DB0();
          }

          v50 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v50);
          }

          v51 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController decoratorOverlayViews]"];
          v52 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
          [CRLAssertionHandler handleFailureInFunction:v51 file:v52 lineNumber:734 isFatal:0 description:"Non-finite followButtonFrameInRenderable."];
        }

        [(CRLCanvasRenderable *)self->mHUDRenderable frame];
        v54 = sub_10011F334(v49, 0.0, v53);
        v56 = v55;
        p_followToggleOverlayView = [(CRLCollaboratorCursorHUDController *)self p_followToggleOverlayView];
        [p_followToggleOverlayView setInteractionDelegate:self];
        [p_followToggleOverlayView setFrame:{v54, v56, v44, v16}];
        [p_sizeToggleOverlayView2 addObject:p_followToggleOverlayView];
      }

      v5 = [p_sizeToggleOverlayView2 copy];

      goto LABEL_59;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101347A6C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101347A80();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101347B10();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController decoratorOverlayViews]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:689 isFatal:0 description:"Non-finite standardHUDFrame."];

    if (!p_isCompact)
    {
      goto LABEL_30;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101347B38();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101347B60();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101347BF0();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v20);
    }

    v21 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController decoratorOverlayViews]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:696 isFatal:0 description:"Non-finite avatarFrameInRenderable."];
  }

  [(CRLCanvasRenderable *)self->mHUDRenderable frame];
  v24 = sub_10011F334(v10, v12, v23);
  v26 = v25;
  p_sizeToggleOverlayView2 = [(CRLCollaboratorCursorHUDController *)self p_sizeToggleOverlayView];
  [p_sizeToggleOverlayView2 setInteractionDelegate:self];
  [p_sizeToggleOverlayView2 setFrame:{v24, v26, v14, v16}];
  v58 = p_sizeToggleOverlayView2;
  v5 = [NSArray arrayWithObjects:&v58 count:1];
LABEL_59:

LABEL_5:

  return v5;
}

- (id)p_cachedPath
{
  v3 = self->mCachedPath;
  v4 = v3;
  if (v3 && [(CRLBezierPath *)v3 isEmpty])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101347DD8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101347DEC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101347E7C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController p_cachedPath]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:759 isFatal:0 description:"Retrieving cached path which is empty! Ignoring."];

    mCachedPath = self->mCachedPath;
    self->mCachedPath = 0;

    v4 = 0;
  }

  return v4;
}

- (CGPoint)p_cachedAnchorPointForDirection:(unint64_t)direction
{
  if (self->mCachedPathDirection == direction)
  {
    x = self->mCachedAnchorPoint.x;
    y = self->mCachedAnchorPoint.y;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101347EA4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101347EB8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101347F48();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    x = CGPointZero.x;
    y = CGPointZero.y;
    v6 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController p_cachedAnchorPointForDirection:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:773 isFatal:0 description:"p_cachedAnchorPointIfAvailableForDirection should only be called when p_cachedPathIfAvailableForDirection is not nil for the same direction"];
  }

  v8 = x;
  v9 = y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)p_clearPathAndAnchorPointCaches
{
  mCachedPath = self->mCachedPath;
  self->mCachedPath = 0;
}

- (id)p_bezierPathForHUDWithFrame:(CGRect)frame direction:(unint64_t)direction outAnchorPoint:(CGPoint *)point
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_cachedPath = [(CRLCollaboratorCursorHUDController *)self p_cachedPath];
  if (p_cachedPath)
  {
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    if (CGRectEqualToRect(v29, self->mCachedFrameForPaths) && self->mCachedPathDirection == direction)
    {
      v13 = [p_cachedPath copy];
      [(CRLCollaboratorCursorHUDController *)self p_cachedAnchorPointForDirection:direction];
      v15 = v14;
      v17 = v16;
      if (!point)
      {
        goto LABEL_25;
      }

LABEL_24:
      point->x = v15;
      point->y = v17;
      goto LABEL_25;
    }
  }

  v15 = 0.5;
  v18 = [CRLBezierPath bezierPathWithContinuousCornerRoundedRect:x cornerRadius:y, width, height, height * 0.5];
  MidX = CGPointZero.x;
  MidY = CGPointZero.y;
  if (direction > 1)
  {
    switch(direction)
    {
      case 4uLL:
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = height;
        v23 = CGRectGetMaxX(v34) + -2.0;
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = height;
        MidY = CGRectGetMidY(v35);
        v24 = 7.0;
        break;
      case 3uLL:
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        v23 = CGRectGetMinX(v36) + 2.0;
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        MidY = CGRectGetMidY(v37);
        v24 = -7.0;
        break;
      case 2uLL:
        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = height;
        MidX = CGRectGetMidX(v30);
        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        MaxY = CGRectGetMaxY(v31);
        v22 = 7.0;
LABEL_14:
        MidY = MaxY + v22;
        goto LABEL_18;
      default:
        goto LABEL_18;
    }

    MidX = v23 + v24;
    goto LABEL_18;
  }

  v17 = 0.5;
  if (!direction)
  {
    goto LABEL_19;
  }

  if (direction == 1)
  {
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    MidX = CGRectGetMidX(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    MaxY = CGRectGetMinY(v33);
    v22 = -7.0;
    goto LABEL_14;
  }

LABEL_18:
  [v18 bounds];
  v15 = MidX / v25;
  v17 = MidY / v26;
LABEL_19:
  v13 = v18;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  if (!CGRectEqualToRect(v38, self->mCachedFrameForPaths))
  {
    self->mCachedFrameForPaths.origin.x = x;
    self->mCachedFrameForPaths.origin.y = y;
    self->mCachedFrameForPaths.size.width = width;
    self->mCachedFrameForPaths.size.height = height;
    [(CRLCollaboratorCursorHUDController *)self p_clearPathAndAnchorPointCaches];
  }

  if (([v13 isEmpty] & 1) == 0)
  {
    objc_storeStrong(&self->mCachedPath, v18);
    self->mCachedPathDirection = direction;
    self->mCachedAnchorPoint.x = v15;
    self->mCachedAnchorPoint.y = v17;
  }

  if (point)
  {
    goto LABEL_24;
  }

LABEL_25:

  return v13;
}

- (void)userInteractionEndedForView:(id)view
{
  viewCopy = view;
  self->mInteractionInProgress = 0;
  [(CRLCollaboratorCursorHUDController *)self p_updateButtonRenderableFillColor];
  v4 = viewCopy;
  if (self->mSizeToggleOverlayView == viewCopy)
  {
    [(CRLCollaboratorCursorHUDController *)self p_toggleSize];
    goto LABEL_6;
  }

  if (self->mFollowToggleOverlayView == viewCopy && !self->mIsFollowing)
  {
    [(CRLCollaboratorCursorHUDController *)self p_followButtonPressed:viewCopy];
LABEL_6:
    v4 = viewCopy;
  }
}

- (void)p_toggleSize
{
  if (self->mFollowEnabled || !self->mShouldAutoTimeout)
  {
    p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
    [p_delegate toggleSizeForCollaboratorHUDController:self];
  }
}

- (CGRect)p_unscaledHUDFrame
{
  [(CRLCollaboratorCursorHUDController *)self p_avatarLeadingSpace];
  v4 = v3;
  [(CRLCollaboratorCursorHUDController *)self p_avatarSize];
  v6 = v4 + v5;
  [(CRLCollaboratorCursorHUDController *)self p_avatarTrailingSpace];
  v8 = v7 + v6;
  [(CRLCollaboratorCursorHUDController *)self p_displayStringSize];
  v10 = v8 + v9;
  [(CRLCollaboratorCursorHUDController *)self p_displayStringTrailingSpace];
  v12 = v11 + v10;
  [(CRLCollaboratorCursorHUDController *)self p_followButtonSize];
  v14 = v12 + v13;
  [(CRLCollaboratorCursorHUDController *)self p_followButtonTrailingSpace];
  v16 = v15 + v14;
  [(CRLCollaboratorCursorHUDController *)self p_totalHeight];
  v18 = v17;
  *&v17 = v16;
  v19 = fmaxf(*&v17, 22.0);
  v20 = 0.0;
  v21 = 0.0;
  result.size.height = v18;
  result.size.width = v19;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (double)p_avatarLeadingSpace
{
  p_isCompact = [(CRLCollaboratorCursorHUDController *)self p_isCompact];
  result = 8.0;
  if (p_isCompact)
  {
    result = 4.0;
  }

  v5 = 3.0;
  if (p_isCompact)
  {
    v5 = 0.0;
  }

  if (!self->mFollowEnabled)
  {
    return v5;
  }

  return result;
}

- (double)p_avatarTrailingSpace
{
  p_isCompact = [(CRLCollaboratorCursorHUDController *)self p_isCompact];
  result = 8.0;
  if (p_isCompact)
  {
    result = 4.0;
  }

  v5 = 5.0;
  if (p_isCompact)
  {
    v5 = 0.0;
  }

  if (!self->mFollowEnabled)
  {
    return v5;
  }

  return result;
}

- (CGSize)p_avatarSize
{
  p_isCompact = [(CRLCollaboratorCursorHUDController *)self p_isCompact];
  if (self->mFollowEnabled)
  {
    v4 = 30.0;
    if ((p_isCompact & 1) == 0)
    {
      p_getAccessibilitySizeFromTraitCollection = [(CRLCollaboratorCursorHUDController *)self p_getAccessibilitySizeFromTraitCollection];
      v4 = 0.0;
      if (p_getAccessibilitySizeFromTraitCollection < 5)
      {
        v4 = dbl_1014647F8[p_getAccessibilitySizeFromTraitCollection];
      }
    }
  }

  else
  {
    v4 = 24.0;
    if (p_isCompact)
    {
      v4 = 30.0;
    }
  }

  v6 = v4;
  result.height = v6;
  result.width = v4;
  return result;
}

- (CGSize)p_sizeForString:(id)string font:(id)font
{
  v17 = NSFontAttributeName;
  fontCopy = font;
  fontCopy2 = font;
  stringCopy = string;
  v7 = [NSDictionary dictionaryWithObjects:&fontCopy forKeys:&v17 count:1];
  v8 = [NSAttributedString alloc];

  v9 = [v8 initWithString:stringCopy attributes:v7];
  v10 = CTLineCreateWithAttributedString(v9);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v10, 0);
  width = BoundsWithOptions.size.width;
  if (v10)
  {
    CFRelease(v10);
  }

  v12 = sub_10012211C(width);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (id)p_fontForFollowButtonString
{
  v4 = 0.0;
  v5 = 0.0;
  [(CRLCollaboratorCursorHUDController *)self p_stringFontSize:&v5 fontWeight:&v4 isDisplayString:0];
  v2 = [UIFont systemFontOfSize:v5 weight:v4];

  return v2;
}

- (id)p_fontForDisplayString
{
  v4 = 0.0;
  v5 = 0.0;
  [(CRLCollaboratorCursorHUDController *)self p_stringFontSize:&v5 fontWeight:&v4 isDisplayString:1];
  v2 = [UIFont systemFontOfSize:v5 weight:v4];

  return v2;
}

- (CGSize)p_followButtonStringSize
{
  if (self->mFollowString)
  {
    mPreferredSizeOfFollowStringOnce = self->mPreferredSizeOfFollowStringOnce;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1002B2404;
    v6[3] = &unk_10183AB38;
    v6[4] = self;
    [(CRLOnce *)mPreferredSizeOfFollowStringOnce performBlockOnce:v6];
  }

  else
  {
    self->mCachedPreferredSizeOfFollowString = CGSizeZero;
  }

  width = self->mCachedPreferredSizeOfFollowString.width;
  height = self->mCachedPreferredSizeOfFollowString.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)p_displayStringSize
{
  mPreferredSizeOfFullNameStringOnce = self->mPreferredSizeOfFullNameStringOnce;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002B25BC;
  v15[3] = &unk_10183AB38;
  v15[4] = self;
  [(CRLOnce *)mPreferredSizeOfFullNameStringOnce performBlockOnce:v15];
  p_mCachedPreferredSizeOfFullNameString = &CGSizeZero;
  if (self->mShortNameString)
  {
    mPreferredSizeOfShortNameStringOnce = self->mPreferredSizeOfShortNameStringOnce;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1002B2620;
    v14[3] = &unk_10183AB38;
    v14[4] = self;
    [(CRLOnce *)mPreferredSizeOfShortNameStringOnce performBlockOnce:v14];
  }

  else
  {
    self->mCachedPreferredSizeOfShortNameString = CGSizeZero;
  }

  if ([(CRLCollaboratorCursorHUDController *)self p_isCompact])
  {
    p_height = &CGSizeZero.height;
  }

  else
  {
    p_mCachedPreferredSizeOfShortNameString = &self->mCachedPreferredSizeOfShortNameString;
    if (self->mIsFollowing)
    {
      p_height = &self->mCachedPreferredSizeOfFullNameString.height;
    }

    else
    {
      p_height = &self->mCachedPreferredSizeOfShortNameString.height;
    }

    if (self->mIsFollowing)
    {
      p_mCachedPreferredSizeOfShortNameString = &self->mCachedPreferredSizeOfFullNameString;
    }

    if (self->mFollowEnabled)
    {
      p_mCachedPreferredSizeOfFullNameString = p_mCachedPreferredSizeOfShortNameString;
    }

    else
    {
      p_height = &self->mCachedPreferredSizeOfFullNameString.height;
      p_mCachedPreferredSizeOfFullNameString = &self->mCachedPreferredSizeOfFullNameString;
    }
  }

  width = p_mCachedPreferredSizeOfFullNameString->width;
  v9 = *p_height;
  [(CRLCollaboratorCursorHUDController *)self p_maximumDisplayStringWidth];
  *&v10 = v10;
  v11 = width;
  v12 = fminf(*&v10, v11);
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (double)p_maximumDisplayStringWidth
{
  p_isCompact = [(CRLCollaboratorCursorHUDController *)self p_isCompact];
  result = 0.0;
  if ((p_isCompact & 1) == 0)
  {
    p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
    [p_delegate visibleCanvasWidth];
    v7 = v6;

    [(CRLCollaboratorCursorHUDController *)self p_widthOfEverythingExceptDisplayString];
    return v7 + -40.0 - v8;
  }

  return result;
}

- (double)p_widthOfEverythingExceptDisplayString
{
  [(CRLCollaboratorCursorHUDController *)self p_avatarLeadingSpace];
  v4 = v3;
  [(CRLCollaboratorCursorHUDController *)self p_avatarSize];
  v6 = v4 + v5;
  [(CRLCollaboratorCursorHUDController *)self p_avatarTrailingSpace];
  v8 = v7 + v6;
  [(CRLCollaboratorCursorHUDController *)self p_displayStringTrailingSpace];
  v10 = v9 + v8;
  [(CRLCollaboratorCursorHUDController *)self p_followButtonSize];
  v12 = v10 + v11;
  [(CRLCollaboratorCursorHUDController *)self p_followButtonTrailingSpace];
  return v13 + v12;
}

- (double)p_displayStringTrailingSpace
{
  p_isCompact = [(CRLCollaboratorCursorHUDController *)self p_isCompact];
  result = 8.0;
  if (p_isCompact)
  {
    return 0.0;
  }

  return result;
}

- (CGSize)p_followButtonSize
{
  p_isCompact = [(CRLCollaboratorCursorHUDController *)self p_isCompact];
  if (!self->mFollowEnabled || ((p_isCompact | self->mIsFollowing) & 1) != 0 || self->mIsLocalParticipant)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    if ([(CRLCollaboratorCursorHUDController *)self p_getAccessibilitySizeFromTraitCollection]<= 1)
    {
      height = 24.0;
    }

    else
    {
      height = 28.0;
    }

    [(CRLCollaboratorCursorHUDController *)self p_followButtonStringSize];
    width = v5 + 8.0 + 8.0;
  }

  v7 = height;
  result.height = v7;
  result.width = width;
  return result;
}

- (double)p_followButtonTrailingSpace
{
  p_isCompact = [(CRLCollaboratorCursorHUDController *)self p_isCompact];
  result = 8.0;
  if (p_isCompact & 1 | !self->mFollowEnabled | self->mIsFollowing)
  {
    return 0.0;
  }

  return result;
}

- (double)p_followButtonInternalHorizontalPadding
{
  result = 0.0;
  if (self->mFollowEnabled & ~self->mIsFollowing)
  {
    return 8.0;
  }

  return result;
}

- (double)p_totalHeight
{
  p_isCompact = [(CRLCollaboratorCursorHUDController *)self p_isCompact];
  mFollowEnabled = self->mFollowEnabled;
  [(CRLCollaboratorCursorHUDController *)self p_avatarSize];
  v6 = v5;
  if (mFollowEnabled)
  {
    if (p_isCompact)
    {
      return v5 + 8.0;
    }

    else if ([(CRLCollaboratorCursorHUDController *)self p_getAccessibilitySizeFromTraitCollection]<= 1)
    {
      return 40.0;
    }

    else
    {
      return 42.0;
    }
  }

  else
  {
    [(CRLCollaboratorCursorHUDController *)self p_displayStringSize];
    if ((p_isCompact & 1) == 0)
    {
      v8 = v6 + 6.0;
      v9 = v7 + 2.0;
      return fmaxf(v8, v9);
    }
  }

  return v6;
}

- (void)p_stringFontSize:(double *)size fontWeight:(double *)weight isDisplayString:(BOOL)string
{
  stringCopy = string;
  p_isCompact = [(CRLCollaboratorCursorHUDController *)self p_isCompact];
  if (self->mFollowEnabled)
  {
    if (stringCopy)
    {
      v10 = UIFontWeightMedium;
      p_getAccessibilitySizeFromTraitCollection = [(CRLCollaboratorCursorHUDController *)self p_getAccessibilitySizeFromTraitCollection];
      v12 = 0.0;
      v13 = 19.0;
      v14 = 21.0;
      v15 = 23.0;
      if (p_getAccessibilitySizeFromTraitCollection != 4)
      {
        v15 = 0.0;
      }

      if (p_getAccessibilitySizeFromTraitCollection != 3)
      {
        v14 = v15;
      }

      if (p_getAccessibilitySizeFromTraitCollection != 2)
      {
        v13 = v14;
      }

      v16 = 13.0;
      v17 = p_getAccessibilitySizeFromTraitCollection == 1;
      v18 = 15.0;
    }

    else
    {
      v10 = UIFontWeightBold;
      p_getAccessibilitySizeFromTraitCollection = [(CRLCollaboratorCursorHUDController *)self p_getAccessibilitySizeFromTraitCollection];
      v12 = 0.0;
      v13 = 15.0;
      v19 = 17.0;
      v20 = 20.0;
      if (p_getAccessibilitySizeFromTraitCollection != 4)
      {
        v20 = 0.0;
      }

      if (p_getAccessibilitySizeFromTraitCollection != 3)
      {
        v19 = v20;
      }

      if (p_getAccessibilitySizeFromTraitCollection != 2)
      {
        v13 = v19;
      }

      v16 = 11.0;
      v17 = p_getAccessibilitySizeFromTraitCollection == 1;
      v18 = 13.0;
    }

    if (v17)
    {
      v12 = v18;
    }

    if (!p_getAccessibilitySizeFromTraitCollection)
    {
      v12 = v16;
    }

    if (p_getAccessibilitySizeFromTraitCollection > 1)
    {
      v12 = v13;
    }

    if (size)
    {
LABEL_28:
      *size = v12;
    }
  }

  else
  {
    v10 = UIFontWeightMedium;
    v12 = 15.0;
    if (p_isCompact)
    {
      v12 = 10.0;
    }

    if (size)
    {
      goto LABEL_28;
    }
  }

  if (weight)
  {
    *weight = v10;
  }
}

- (int64_t)p_getAccessibilitySizeFromTraitCollection
{
  p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
  currentTraitCollection = [p_delegate currentTraitCollection];

  preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];
  if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryExtraLarge])
  {
    v5 = 1;
  }

  else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryExtraExtraLarge])
  {
    v5 = 2;
  }

  else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge])
  {
    v5 = 3;
  }

  else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryAccessibilityMedium] & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", UIContentSizeCategoryAccessibilityLarge) & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", UIContentSizeCategoryAccessibilityExtraLarge) & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", UIContentSizeCategoryAccessibilityExtraExtraLarge))
  {
    v5 = 4;
  }

  else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryAccessibilityExtraExtraExtraLarge])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)resetAutoHideTimer
{
  if (self->mAutoHideTimer)
  {
    [(CRLCollaboratorCursorHUDController *)self stopAutoHideTimer];
  }

  [(CRLCollaboratorCursorHUDController *)self startAutoHideTimer];
}

- (void)stopAutoHideTimer
{
  mAutoHideTimer = self->mAutoHideTimer;
  if (mAutoHideTimer)
  {
    [(NSTimer *)mAutoHideTimer invalidate];
    v4 = self->mAutoHideTimer;
    self->mAutoHideTimer = 0;
  }
}

- (void)startAutoHideTimer
{
  if (self->mAutoHideTimer)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101347F70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101347F84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101348020();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController startAutoHideTimer]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1398 isFatal:0 description:"expected nil value for '%{public}s'", "mAutoHideTimer"];
  }

  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"p_autoHideHUD" selector:0 userInfo:0 repeats:7.0];
  mAutoHideTimer = self->mAutoHideTimer;
  self->mAutoHideTimer = v6;
}

- (void)resetAutoShrinkTimer
{
  if (self->mAutoShrinkTimer)
  {
    [(CRLCollaboratorCursorHUDController *)self stopAutoShrinkTimer];
  }

  [(CRLCollaboratorCursorHUDController *)self startAutoShrinkTimer];
}

- (void)stopAutoShrinkTimer
{
  mAutoShrinkTimer = self->mAutoShrinkTimer;
  if (mAutoShrinkTimer)
  {
    [(NSTimer *)mAutoShrinkTimer invalidate];
    v4 = self->mAutoShrinkTimer;
    self->mAutoShrinkTimer = 0;
  }
}

- (void)startAutoShrinkTimer
{
  if (self->mAutoShrinkTimer)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101348048();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134805C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013480F8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCollaboratorCursorHUDController startAutoShrinkTimer]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCollaboratorCursorHUDController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1421 isFatal:0 description:"expected nil value for '%{public}s'", "mAutoShrinkTimer"];
  }

  v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"p_autoShrinkHUD" selector:0 userInfo:0 repeats:7.0];
  mAutoShrinkTimer = self->mAutoShrinkTimer;
  self->mAutoShrinkTimer = v6;
}

- (void)p_autoShrinkHUD
{
  if (!self->mShouldAutoTimeout)
  {
    if (self->mShouldUnconditionallyFadeOutHUD)
    {

      [(CRLCollaboratorCursorHUDController *)self hideHUD];
    }

    else
    {
      p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
      [p_delegate toggleSizeForCollaboratorHUDController:self];
    }
  }
}

- (void)p_autoHideHUD
{
  p_delegate = [(CRLCollaboratorCursorHUDController *)self p_delegate];
  [p_delegate removeCollaboratorHUDController:self];

  mHUDRenderable = self->mHUDRenderable;
  self->mHUDRenderable = 0;

  mSizeToggleOverlayView = self->mSizeToggleOverlayView;
  self->mSizeToggleOverlayView = 0;

  mFollowToggleOverlayView = self->mFollowToggleOverlayView;
  self->mFollowToggleOverlayView = 0;
}

@end