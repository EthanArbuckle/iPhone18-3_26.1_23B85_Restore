@interface THPageThumbnailView
+ (CGImage)thumbnailPlaceholder;
+ (id)thumbnailQueue;
- (CGRect)highlightedRelativeRect;
- (NSString)description;
- (THPageThumbnailView)initWithFrame:(CGRect)frame isFirstThumbnail:(BOOL)thumbnail delegate:(id)delegate;
- (id)p_createSideBorderView;
- (void)clearHighlightRect;
- (void)dealloc;
- (void)gestureReset:(id)reset;
- (void)hideExtrasAnimated:(BOOL)animated duration:(double)duration;
- (void)p_clearTimer;
- (void)p_handleTap:(id)tap;
- (void)p_setBorderMode:(int)mBorderMode;
- (void)p_tapGestureTimerFired:(id)fired;
- (void)setBorderVisible:(BOOL)visible;
- (void)setCanvasScrollView:(id)view rasterize:(BOOL)rasterize;
- (void)setHasLeftBorder:(BOOL)border;
- (void)setHasRightBorder:(BOOL)border;
- (void)setHighlightRelativeRect:(CGRect)rect;
- (void)setImage:(CGImage *)image;
- (void)setImageData:(id)data immediate:(BOOL)immediate;
- (void)setShowCanvas:(BOOL)canvas animated:(BOOL)animated;
- (void)setupFreeTransformWithDelegate:(id)delegate;
- (void)showExtrasAnimated:(BOOL)animated duration:(double)duration;
- (void)teardown;
- (void)touchesBeganFromTap:(id)tap;
@end

@implementation THPageThumbnailView

+ (id)thumbnailQueue
{
  if (qword_5677D8 != -1)
  {
    sub_29CF94();
  }

  return qword_5677D0;
}

+ (CGImage)thumbnailPlaceholder
{
  if (qword_5677E8 != -1)
  {
    sub_29CFA8();
  }

  return qword_5677E0;
}

- (THPageThumbnailView)initWithFrame:(CGRect)frame isFirstThumbnail:(BOOL)thumbnail delegate:(id)delegate
{
  thumbnailCopy = thumbnail;
  v15.receiver = self;
  v15.super_class = THPageThumbnailView;
  v7 = [(THPageThumbnailView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v8 = v7;
  if (v7)
  {
    v7->mChapterIndex = 0x7FFFFFFFFFFFFFFFLL;
    v9 = [[THPageThumbnailViewTapGestureRecognizer alloc] initWithTarget:v7 action:"p_handleTap:"];
    v8->mSingleTapGR = v9;
    v10 = 1;
    [(THPageThumbnailViewTapGestureRecognizer *)v9 setNumberOfTapsRequired:1];
    [(THPageThumbnailViewTapGestureRecognizer *)v8->mSingleTapGR setDelegate:v8];
    [(THPageThumbnailView *)v8 addGestureRecognizer:v8->mSingleTapGR];
    v8->mImageLayer = objc_alloc_init(CALayer);
    [(THPageThumbnailView *)v8 bounds];
    [(CALayer *)v8->mImageLayer setFrame:?];
    [-[THPageThumbnailView layer](v8 "layer")];
    [(CALayer *)v8->mImageLayer setHidden:1];

    v8->mDelegate = delegate;
    if (thumbnailCopy)
    {
      [-[THPageThumbnailView layer](v8 "layer")];
      v10 = 2;
    }

    [(THPageThumbnailView *)v8 p_setBorderMode:v10];
    [(THPageThumbnailView *)v8 frame];
    v8->mPageNumberView = [[THPageNumberView alloc] initWithPosition:v11 + -3.0, 23.0 + 3.0];
    [(UILabel *)[(THPageNumberView *)v8->mPageNumberView label] setTextColor:[UIColor colorWithWhite:0.156862745 alpha:1.0]];
    [(THPageThumbnailView *)v8 addSubview:v8->mPageNumberView];

    [(THPageThumbnailView *)v8 setOpaque:1];
    size = CGRectZero.size;
    v8->mHighlightedRelativeRect.origin = CGRectZero.origin;
    v8->mHighlightedRelativeRect.size = size;
    v13 = CGRectZero.size;
    v8->mHighlightedActualRect.origin = CGRectZero.origin;
    v8->mHighlightedActualRect.size = v13;
  }

  return v8;
}

- (void)dealloc
{
  [(THPageThumbnailView *)self p_clearTimer];
  [(THWFreeTransformController *)self->mFreeTransformController setTargetLayer:0];
  [(THWFreeTransformController *)self->mFreeTransformController setTransformGR:0];
  [(THWFreeTransformController *)self->mFreeTransformController clearGestureRecognizer];

  self->mFreeTransformController = 0;
  [-[THWFreeTransformGestureRecognizer view](-[THPageThumbnailView freeTransformGestureRecognizer](self "freeTransformGestureRecognizer")];
  [(THPageThumbnailView *)self setFreeTransformGestureRecognizer:0];

  self->mSingleTapGR = 0;
  self->mBorderView = 0;
  [(UIView *)self->mLeftBorderView removeFromSuperview];

  self->mLeftBorderView = 0;
  [(UIView *)self->mRightBorderView removeFromSuperview];

  self->mRightBorderView = 0;
  self->mCanvasWrapperView = 0;
  [(UIView *)self->mHighlightView removeFromSuperview];

  self->mHighlightView = 0;
  self->_freeTransformController = 0;
  v3.receiver = self;
  v3.super_class = THPageThumbnailView;
  [(THPageThumbnailView *)&v3 dealloc];
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = THPageThumbnailView;
  return [(NSString *)[(THPageThumbnailView *)&v3 description] stringByAppendingString:[NSString stringWithFormat:@" ch: %lu p: %lu", self->mChapterIndex, self->mPageIndex]];
}

- (void)setupFreeTransformWithDelegate:(id)delegate
{
  if (self->mFreeTransformController)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v5 = objc_alloc_init(THWFreeTransformController);
  self->mFreeTransformController = v5;
  [(THWFreeTransformController *)v5 setDelegate:delegate];
  [(THWFreeTransformController *)self->mFreeTransformController setScaleThreshold:1.5];
  [(THWFreeTransformController *)self->mFreeTransformController setTargetLayer:[(THPageThumbnailView *)self layer]];
  [(THWFreeTransformController *)self->mFreeTransformController setSmoothEdges:1];
  [-[THPageThumbnailView superview](self "superview")];
  v7 = v6;
  [(THPageThumbnailView *)self frame];
  [(THWFreeTransformController *)self->mFreeTransformController setTransformScale:v7 / v8];
  [(THPageThumbnailView *)self setFreeTransformGestureRecognizer:[[THWFreeTransformGestureRecognizer alloc] initWithTarget:self->mFreeTransformController action:"transformGRChanged:"]];
  [(THPageThumbnailView *)self addGestureRecognizer:[(THPageThumbnailView *)self freeTransformGestureRecognizer]];
  -[THWFreeTransformGestureRecognizer setUnmovingParentView:](-[THPageThumbnailView freeTransformGestureRecognizer](self, "freeTransformGestureRecognizer"), "setUnmovingParentView:", [delegate unmovingParentViewForFreeTransformController:self->mFreeTransformController]);
  [(THWFreeTransformGestureRecognizer *)[(THPageThumbnailView *)self freeTransformGestureRecognizer] setFreeTransformDelegate:self->mFreeTransformController];
  [(THWFreeTransformGestureRecognizer *)[(THPageThumbnailView *)self freeTransformGestureRecognizer] setUseGestureViewForReCentering:1];
  freeTransformGestureRecognizer = [(THPageThumbnailView *)self freeTransformGestureRecognizer];
  mFreeTransformController = self->mFreeTransformController;

  [(THWFreeTransformController *)mFreeTransformController setTransformGR:freeTransformGestureRecognizer];
}

- (void)teardown
{
  [(THPageThumbnailView *)self setDelegate:0];
  [(THWFreeTransformController *)self->mFreeTransformController setTargetLayer:0];
  mFreeTransformController = self->mFreeTransformController;

  [(THWFreeTransformController *)mFreeTransformController clearGestureRecognizer];
}

- (void)setBorderVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (visible)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(UIView *)self->mBorderView setAlpha:v5];
  [(UIView *)self->mLeftBorderView setAlpha:v5];
  [(UIView *)self->mRightBorderView setAlpha:v5];
  mPageNumberView = self->mPageNumberView;

  [(THPageNumberView *)mPageNumberView setHidden:!visibleCopy];
}

- (void)p_setBorderMode:(int)mBorderMode
{
  if (self->mBorderMode != mBorderMode)
  {
    self->mBorderMode = mBorderMode;
    if (!self->mBorderView)
    {
      v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      self->mBorderView = v4;
      [(THPageThumbnailView *)self addSubview:v4];
      mBorderMode = self->mBorderMode;
    }

    if (mBorderMode == 1)
    {
      [(THPageThumbnailView *)self bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      TSUScreenScale();
      v26 = v22 - 1.0 / v25;
      TSUScreenScale();
      [(UIView *)self->mBorderView setFrame:v20, v26, v24, 1.0 / v27];
      [(CALayer *)[(UIView *)self->mBorderView layer] setBorderWidth:0.0];
      v18 = [UIColor colorWithWhite:0.0 alpha:0.3];
    }

    else
    {
      if (mBorderMode != 2)
      {
        [(UIView *)self->mBorderView removeFromSuperview];

        self->mBorderView = 0;
        return;
      }

      [(THPageThumbnailView *)self bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      TSUScreenScale();
      v14 = -1.0 / v13;
      TSUScreenScale();
      v16 = -1.0 / v15;
      v31.origin.x = v6;
      v31.origin.y = v8;
      v31.size.width = v10;
      v31.size.height = v12;
      v32 = CGRectInset(v31, v14, v16);
      [(UIView *)self->mBorderView setFrame:v32.origin.x, v32.origin.y, v32.size.width, v32.size.height];
      -[CALayer setBorderColor:]([(UIView *)self->mBorderView layer], "setBorderColor:", [+[UIColor colorWithWhite:alpha:](UIColor CGColor:0.0]);
      TSUScreenScale();
      [(CALayer *)[(UIView *)self->mBorderView layer] setBorderWidth:1.0 / v17];
      v18 = +[UIColor clearColor];
    }

    v28 = v18;
    mBorderView = self->mBorderView;

    [(UIView *)mBorderView setBackgroundColor:v28];
  }
}

- (id)p_createSideBorderView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(THPageThumbnailView *)self addSubview:v3];
  [v3 setBackgroundColor:{+[UIColor colorWithWhite:alpha:](UIColor, "colorWithWhite:alpha:", 0.0, 0.3)}];
  return v3;
}

- (void)setHasLeftBorder:(BOOL)border
{
  borderCopy = border;
  if ([(THPageThumbnailView *)self hasLeftBorder]!= border)
  {
    if (borderCopy)
    {
      if (self->mBorderMode == 2)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      self->mLeftBorderView = [(THPageThumbnailView *)self p_createSideBorderView];
      [(THPageThumbnailView *)self bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      TSUScreenScale();
      v12 = v6 - 1.0 / v11;
      TSUScreenScale();
      v14 = 1.0 / v13;
      TSUScreenScale();
      v16 = v8 - 1.0 / v15;
      TSUScreenScale();
      mLeftBorderView = self->mLeftBorderView;

      [(UIView *)mLeftBorderView setFrame:v12, v16, v14, v10 + 1.0 / v17];
    }

    else
    {
      [(UIView *)self->mLeftBorderView removeFromSuperview];

      self->mLeftBorderView = 0;
    }
  }
}

- (void)setHasRightBorder:(BOOL)border
{
  borderCopy = border;
  if ([(THPageThumbnailView *)self hasRightBorder]!= border)
  {
    if (borderCopy)
    {
      if (self->mBorderMode == 2)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      self->mRightBorderView = [(THPageThumbnailView *)self p_createSideBorderView];
      [(THPageThumbnailView *)self bounds];
      y = v15.origin.y;
      height = v15.size.height;
      MaxX = CGRectGetMaxX(v15);
      TSUScreenScale();
      v9 = 1.0 / v8;
      TSUScreenScale();
      v11 = y - 1.0 / v10;
      TSUScreenScale();
      mRightBorderView = self->mRightBorderView;

      [(UIView *)mRightBorderView setFrame:MaxX, v11, v9, height + 1.0 / v12];
    }

    else
    {
      [(UIView *)self->mRightBorderView removeFromSuperview];

      self->mRightBorderView = 0;
    }
  }
}

- (void)setImage:(CGImage *)image
{
  +[CATransaction begin];
  [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
  [(CALayer *)self->mImageLayer setContents:image];
  [(CALayer *)self->mImageLayer setHidden:0];

  +[CATransaction commit];
}

- (void)setImageData:(id)data immediate:(BOOL)immediate
{
  immediateCopy = immediate;
  objc_sync_enter(self);
  if (immediateCopy)
  {
    [(THPageThumbnailView *)self setWillSetImageFromQueue:0];
    [(THPageThumbnailView *)self setImage:[TSDBitmapImageProvider CGImageForImageData:data]];

    self->mImageData = 0;

    objc_sync_exit(self);
  }

  else
  {
    +[CATransaction begin];
    [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
    [(CALayer *)self->mImageLayer setHidden:1];
    +[CATransaction commit];
    dataCopy = data;

    self->mImageData = data;
    [(THPageThumbnailView *)self setWillSetImageFromQueue:1];
    objc_sync_exit(self);
    thumbnailQueue = [objc_opt_class() thumbnailQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_AF924;
    block[3] = &unk_45AE00;
    block[4] = self;
    dispatch_async(thumbnailQueue, block);
  }
}

- (void)setCanvasScrollView:(id)view rasterize:(BOOL)rasterize
{
  rasterizeCopy = rasterize;
  if (!self->mCanvasWrapperView)
  {
    v7 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    self->mCanvasWrapperView = v7;
    [(THPageThumbnailView *)self addSubview:v7];
  }

  layer = [(UIView *)self->mCanvasWrapperView layer];
  if (rasterizeCopy)
  {
    [(CALayer *)layer setShouldRasterize:1];
    [view bounds];
    v10 = v9;
    [(THPageThumbnailView *)self bounds];
    [(CALayer *)[(UIView *)self->mCanvasWrapperView layer] setRasterizationScale:v10 / v11];
  }

  else
  {
    [(CALayer *)layer setShouldRasterize:0];
  }

  mCanvasWrapperView = self->mCanvasWrapperView;

  [(UIView *)mCanvasWrapperView addSubview:view];
}

- (void)setShowCanvas:(BOOL)canvas animated:(BOOL)animated
{
  animatedCopy = animated;
  if (canvas)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  [(UIView *)self->mCanvasWrapperView alpha];
  if (v7 != v6)
  {
    v8 = 0.15;
    if (!animatedCopy)
    {
      v8 = 0.0;
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_AFC4C;
    v9[3] = &unk_45B298;
    v9[4] = self;
    *&v9[5] = v6;
    [UIView animateWithDuration:v9 animations:v8];
  }
}

- (CGRect)highlightedRelativeRect
{
  x = self->mHighlightedRelativeRect.origin.x;
  y = self->mHighlightedRelativeRect.origin.y;
  width = self->mHighlightedRelativeRect.size.width;
  height = self->mHighlightedRelativeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setHighlightRelativeRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsEmpty(rect))
  {

    [(THPageThumbnailView *)self clearHighlightRect];
  }

  else
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (!CGRectEqualToRect(v20, self->mHighlightedRelativeRect))
    {
      [(THPageThumbnailView *)self clearHighlightRect];
      [(THPageThumbnailView *)self frame];
      self->mHighlightedRelativeRect.origin.x = x;
      self->mHighlightedRelativeRect.origin.y = y;
      self->mHighlightedRelativeRect.size.width = width;
      self->mHighlightedRelativeRect.size.height = height;
      v9 = x * v8;
      v11 = y * v10;
      v12 = width * v8;
      v13 = height * v10;
      p_mHighlightedActualRect = &self->mHighlightedActualRect;
      self->mHighlightedActualRect.origin.x = v9;
      self->mHighlightedActualRect.origin.y = v11;
      self->mHighlightedActualRect.size.width = v12;
      self->mHighlightedActualRect.size.height = v13;
      if (fabs(height + -1.0) >= 0.00999999978)
      {
        *&v9 = CGRectInset(*&v9, 0.0, -3.0);
      }

      p_mHighlightedActualRect->origin.x = v9;
      self->mHighlightedActualRect.origin.y = v11;
      self->mHighlightedActualRect.size.width = v12;
      self->mHighlightedActualRect.size.height = v13;
      v15 = fabs(width + -1.0);
      v16 = 0.0;
      if (v15 >= 0.00999999978)
      {
        *&v9 = CGRectInset(*&v9, -3.0, 0.0);
        v16 = 3.0;
      }

      p_mHighlightedActualRect->origin.x = v9;
      self->mHighlightedActualRect.origin.y = v11;
      self->mHighlightedActualRect.size.width = v12;
      self->mHighlightedActualRect.size.height = v13;
      v17 = [[UIView alloc] initWithFrame:{p_mHighlightedActualRect->origin.x, self->mHighlightedActualRect.origin.y, self->mHighlightedActualRect.size.width, self->mHighlightedActualRect.size.height}];
      [v17 setBackgroundColor:{+[UIColor colorWithWhite:alpha:](UIColor, "colorWithWhite:alpha:", 0.0, 0.200000003)}];
      [objc_msgSend(v17 "layer")];
      [objc_msgSend(v17 "layer")];
      [v17 setAlpha:0.0];
      [(THPageThumbnailView *)self setHighlightView:v17];
      [(THPageThumbnailView *)self addSubview:v17];

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_AFEAC;
      v18[3] = &unk_45AE00;
      v18[4] = self;
      [UIView animateWithDuration:v18 animations:0.150000006];
    }
  }
}

- (void)clearHighlightRect
{
  if ([(THPageThumbnailView *)self highlightView])
  {
    [(UIView *)[(THPageThumbnailView *)self highlightView] removeFromSuperview];
    [(THPageThumbnailView *)self setHighlightView:0];
    size = CGRectZero.size;
    self->mHighlightedRelativeRect.origin = CGRectZero.origin;
    self->mHighlightedRelativeRect.size = size;
    v4 = CGRectZero.size;
    self->mHighlightedActualRect.origin = CGRectZero.origin;
    self->mHighlightedActualRect.size = v4;
  }
}

- (void)hideExtrasAnimated:(BOOL)animated duration:(double)duration
{
  if (animated)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_B003C;
    v6[3] = &unk_45AE00;
    v6[4] = self;
    [UIView animateWithDuration:v6 animations:duration];
  }

  else
  {
    [(UIView *)self->mBorderView setAlpha:0.0];
    [(UIView *)self->mLeftBorderView setAlpha:0.0];
    [(UIView *)self->mRightBorderView setAlpha:0.0];
    mPageNumberView = self->mPageNumberView;

    [(THPageNumberView *)mPageNumberView setAlpha:0.0];
  }
}

- (void)showExtrasAnimated:(BOOL)animated duration:(double)duration
{
  if (animated)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_B01B8;
    v6[3] = &unk_45AE00;
    v6[4] = self;
    [UIView animateWithDuration:v6 animations:duration];
  }

  else
  {
    [(UIView *)self->mBorderView setAlpha:1.0];
    [(UIView *)self->mLeftBorderView setAlpha:1.0];
    [(UIView *)self->mRightBorderView setAlpha:1.0];
    mPageNumberView = self->mPageNumberView;

    [(THPageNumberView *)mPageNumberView setAlpha:1.0];
  }
}

- (void)p_clearTimer
{
  [(NSTimer *)self->mTapTimer invalidate];

  self->mTapTimer = 0;
}

- (void)p_tapGestureTimerFired:(id)fired
{
  mSingleTapGR = self->mSingleTapGR;
  if (![(THPageThumbnailViewTapGestureRecognizer *)mSingleTapGR state]|| [(THPageThumbnailViewTapGestureRecognizer *)mSingleTapGR state]== &dword_0 + 1 || [(THPageThumbnailViewTapGestureRecognizer *)mSingleTapGR state]== &dword_0 + 2)
  {
    [(THPageThumbnailViewTapGestureRecognizer *)mSingleTapGR locationInView:self];
    [(THPageThumbnailViewDelegate *)self->mDelegate thumbnailWasPressed:self atPoint:1 forLong:?];
  }

  [(THPageThumbnailView *)self p_clearTimer];
}

- (void)p_handleTap:(id)tap
{
  state = [tap state];
  if ((state - 1) >= 2)
  {
    if ((state - 4) >= 2)
    {
      if (state == &dword_0 + 3)
      {
        if (self->mTapTimer)
        {
          [(THPageThumbnailView *)self p_clearTimer];
          mDelegate = self->mDelegate;
          [tap locationInView:self];
          v7 = mDelegate;
          selfCopy2 = self;
          v9 = 0;
        }

        else
        {
          v13 = self->mDelegate;
          [tap locationInView:self];
          v7 = v13;
          selfCopy2 = self;
          v9 = 1;
        }

        [(THPageThumbnailViewDelegate *)v7 thumbnailWasTapped:selfCopy2 atPoint:v9 forLong:?];
      }

      else
      {
        v10 = +[TSUAssertionHandler currentHandler];
        v11 = [NSString stringWithUTF8String:"[THPageThumbnailView p_handleTap:]"];
        v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THPageThumbnailView.mm"];

        [v10 handleFailureInFunction:v11 file:v12 lineNumber:608 description:@"Unexpected gesture state"];
      }
    }

    else
    {
      [(THPageThumbnailView *)self p_clearTimer];

      [(THPageThumbnailView *)self clearHighlightRect];
    }
  }
}

- (void)touchesBeganFromTap:(id)tap
{
  [tap locationInView:{-[THPageThumbnailView superview](self, "superview")}];
  v6 = v5;
  v8 = v7;
  [(THPageThumbnailView *)self frame];
  v11.x = v6;
  v11.y = v8;
  if (CGRectContainsPoint(v12, v11))
  {
    if (!self->mTapTimer || ([+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")], !self->mTapTimer))
    {
      self->mTapTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"p_tapGestureTimerFired:" selector:0 userInfo:0 repeats:0.5];
    }

    mDelegate = self->mDelegate;
    [tap locationInView:self];

    [(THPageThumbnailViewDelegate *)mDelegate thumbnailWasPressed:self atPoint:0 forLong:?];
  }

  else
  {

    [(THPageThumbnailView *)self clearHighlightRect];
  }
}

- (void)gestureReset:(id)reset
{
  if (self->mTapTimer && [reset state] != &dword_4 + 1)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THPageThumbnailView *)self p_clearTimer];
  if ([reset state] != &dword_0 + 3)
  {

    [(THPageThumbnailView *)self clearHighlightRect];
  }
}

@end