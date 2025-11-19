@interface BKScrubberControl
- (BKAccessibilityScrubberControlDelegate)bkAccessibilityDelegate;
- (BKScrubberControl)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (BKScrubberTrack)track;
- (BKShapeView)thumb;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_classicThumbRect;
- (CGRect)_modernThumbRect;
- (CGRect)hitRectForThumb;
- (CGRect)thumbRect;
- (double)_xPositionFromPercentage:(double)a3;
- (double)progress;
- (double)value;
- (id)_makeScrollerPartLayer;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (int)orientation;
- (int64_t)layoutDirection;
- (int64_t)pageNumberForValue:(double)a3;
- (int64_t)validateHoverState:(int64_t)a3;
- (void)_setValue:(double)a3 updateScrollView:(BOOL)a4;
- (void)_setupCommon:(int64_t)a3;
- (void)_setupCommonLayerProperties:(id)a3;
- (void)_touchMovedAtPoint:(CGPoint)a3 refresh:(BOOL)a4;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateScrollviewValue:(double)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrubToValue:(double)a3 refresh:(BOOL)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setHoverState:(int64_t)a3;
- (void)setLayoutDirection:(int64_t)a3;
- (void)setOrientation:(int)a3;
- (void)setPageCount:(unint64_t)a3;
- (void)setPageCount:(unint64_t)a3 refresh:(BOOL)a4;
- (void)setPageNumber:(int64_t)a3;
- (void)setPageNumber:(int64_t)a3 refresh:(BOOL)a4;
- (void)setProgress:(double)a3;
- (void)setThemeInterfaceStyle:(int64_t)a3;
- (void)updateHoverState;
- (void)updateValue;
- (void)updateValueAndRefresh:(BOOL)a3;
@end

@implementation BKScrubberControl

- (void)_setupCommon:(int64_t)a3
{
  self->_isClassic = a3 == 0;
  [(BKScrubberControl *)self setUserInteractionEnabled:1];
  v17 = [(BKScrubberControl *)self track];
  [(BKScrubberControl *)self bounds];
  [v17 setFrame:?];
  [v17 setAutoresizingMask:18];
  [(BKScrubberControl *)self addSubview:v17];
  v4 = [(BKScrubberControl *)self thumb];
  [(BKScrubberControl *)self addSubview:v4];

  [(BKScrubberControl *)self addTarget:self action:"_updateInteractions:" forControlEvents:4096];
  [(BKScrubberControl *)self addTarget:self action:"_updateInteractions:" forControlEvents:64];
  [(BKScrubberControl *)self addTarget:self action:"_updateInteractions:" forControlEvents:256];
  self->_pageNumber = 0x7FFFFFFFFFFFFFFFLL;
  [(BKScrubberControl *)self setProgress:0.0];
  [(BKScrubberControl *)self setLayoutDirection:0];
  [(BKScrubberControl *)self setOrientation:0];
  if (!self->_isClassic)
  {
    v5 = [(BKScrubberControl *)self _makeScrollerPartLayer];
    modernKnobLayer = self->_modernKnobLayer;
    self->_modernKnobLayer = v5;

    v7 = [(BKShapeView *)self->_thumb layer];
    [v7 addSublayer:self->_modernKnobLayer];

    [(BKScrubberControl *)self _setupCommonLayerProperties:self->_modernKnobLayer];
    v8 = [[BKScrubberLayerImp alloc] initWithLayer:self->_modernKnobLayer orientation:[(BKScrubberControl *)self orientation]];
    modernKnobImp = self->_modernKnobImp;
    self->_modernKnobImp = v8;

    [(BKScrubberLayerImp *)self->_modernKnobImp setIsKnob:1];
    v10 = [(BKScrubberControl *)self _makeScrollerPartLayer];
    modernTrackLayer = self->_modernTrackLayer;
    self->_modernTrackLayer = v10;

    v12 = [(BKScrubberTrack *)self->_track layer];
    [v12 addSublayer:self->_modernTrackLayer];

    [(BKScrubberControl *)self _setupCommonLayerProperties:self->_modernTrackLayer];
    v13 = [[BKScrubberLayerImp alloc] initWithLayer:self->_modernTrackLayer orientation:[(BKScrubberControl *)self orientation]];
    modernTrackImp = self->_modernTrackImp;
    self->_modernTrackImp = v13;
  }

  v15 = +[UITraitCollection bc_allAPITraits];
  v16 = [(BKScrubberControl *)self registerForTraitChanges:v15 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = BKScrubberControl;
  [(BKScrubberControl *)&v5 didMoveToWindow];
  if (!self->_hoverController && !self->_isClassic)
  {
    v3 = [[BKScrubberHoverController alloc] initWithScrubber:self];
    hoverController = self->_hoverController;
    self->_hoverController = v3;
  }
}

- (void)setThemeInterfaceStyle:(int64_t)a3
{
  self->_themeInterfaceStyle = a3;
  [(BKScrubberLayerImp *)self->_modernKnobImp setThemeInterfaceStyle:?];
  [(BKScrubberLayerImp *)self->_modernTrackImp setThemeInterfaceStyle:a3];
  [(CALayer *)self->_modernKnobLayer setNeedsDisplay];
  modernTrackLayer = self->_modernTrackLayer;

  [(CALayer *)modernTrackLayer setNeedsDisplay];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [(BKScrubberControl *)self traitCollection:a3];
  [(BKScrubberLayerImp *)self->_modernKnobImp setTraitCollection:v5];

  v6 = [(BKScrubberControl *)self traitCollection];
  [(BKScrubberLayerImp *)self->_modernTrackImp setTraitCollection:v6];
}

- (void)_setupCommonLayerProperties:(id)a3
{
  y = CGPointZero.y;
  v5 = a3;
  [v5 setAnchorPoint:{CGPointZero.x, y}];
  [v5 setGeometryFlipped:1];
  v6 = [(BKScrubberTrack *)self->_track layer];
  [v6 contentsScale];
  [v5 setContentsScale:?];
}

- (id)_makeScrollerPartLayer
{
  v2 = +[CALayer layer];
  [v2 setBounds:{0.0, 0.0, 8.0, 8.0}];
  [v2 setNeedsDisplayOnBoundsChange:0];
  [v2 setNeedsDisplay];

  return v2;
}

- (BKScrubberControl)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = BKScrubberControl;
  v5 = [(BKScrubberControl *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(BKScrubberControl *)v5 _setupCommon:a4];
  }

  return v6;
}

- (void)dealloc
{
  track = self->_track;
  self->_track = 0;

  thumb = self->_thumb;
  self->_thumb = 0;

  scrollView = self->_scrollView;
  self->_scrollView = 0;

  v6.receiver = self;
  v6.super_class = BKScrubberControl;
  [(BKScrubberControl *)&v6 dealloc];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(BKScrubberControl *)self hitRectForThumb];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = BKScrubberControl;
  v5 = [(BKScrubberControl *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if ([v5 isDescendantOfView:self])
  {
    v6 = self;

    v5 = v6;
  }

  return v5;
}

- (double)_xPositionFromPercentage:(double)a3
{
  v5 = [(BKScrubberControl *)self track];
  v6 = [v5 layoutDirection];

  if (v6 == &dword_0 + 1)
  {
    [(BKScrubberControl *)self bounds];
    return (1.0 - a3) * CGRectGetWidth(v9);
  }

  else
  {
    result = 0.0;
    if (!v6)
    {
      [(BKScrubberControl *)self bounds];
      return CGRectGetWidth(v8) * a3;
    }
  }

  return result;
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = BKScrubberControl;
  [(BKScrubberControl *)&v32 layoutSubviews];
  [(BKScrubberControl *)self bounds];
  [(BKScrubberControl *)self trackRectForBounds:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BKScrubberControl *)self track];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(BKScrubberControl *)self track];
  [v12 bounds];
  [(CALayer *)self->_modernTrackLayer setFrame:?];

  [(BKScrubberControl *)self thumbRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(BKScrubberControl *)self thumb];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [(BKScrubberControl *)self thumb];
  [v22 bounds];
  [(CALayer *)self->_modernKnobLayer setFrame:?];

  v23 = [(BKScrubberControl *)self thumb];
  [(BKScrubberControl *)self progress];
  if (v24 == 1.0 && [(BKScrubberControl *)self isEnabled]&& ([(BKScrubberControl *)self value], v25 >= 0.0) && ([(BKScrubberControl *)self value], v26 <= 1.0) || [(BKScrubberControl *)self hideThumbView])
  {
    [v23 bounds];
    v28 = v27;
    [(BKScrubberControl *)self value];
    [(BKScrubberControl *)self _xPositionFromPercentage:?];
    v30 = v29;
    [(BKScrubberControl *)self bounds];
    v31 = v30 > v28 * 0.5 + CGRectGetWidth(v33) || v30 < -(v28 * 0.5);
  }

  else
  {
    v31 = 1;
  }

  [v23 setHidden:v31];
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v13.receiver = self;
  v13.super_class = BKScrubberControl;
  v6 = a3;
  [(BKScrubberControl *)&v13 beginTrackingWithTouch:v6 withEvent:a4];
  [v6 locationInView:{self, v13.receiver, v13.super_class}];
  v8 = v7;
  v10 = v9;

  [(BKScrubberControl *)self hitRectForThumb];
  v14.x = v8;
  v14.y = v10;
  v11 = CGRectContainsPoint(v15, v14);
  if (v11)
  {
    LOBYTE(v11) = [(BKScrubberControl *)self _touchBeganAtPoint:v8, v10];
  }

  return v11;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v13.receiver = self;
  v13.super_class = BKScrubberControl;
  v6 = a3;
  [(BKScrubberControl *)&v13 continueTrackingWithTouch:v6 withEvent:a4];
  v7 = [(BKScrubberControl *)self track:v13.receiver];
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;

  [(BKScrubberControl *)self _touchMovedAtPoint:[(BKScrubberControl *)self isTracking]^ 1 refresh:v9, v11];
  return 1;
}

- (void)_touchMovedAtPoint:(CGPoint)a3 refresh:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v11 = [(BKScrubberControl *)self track];
  if ([(BKScrubberControl *)self orientation])
  {
    v8 = [(BKScrubberControl *)self orientation];
    v9 = 0.0;
    if (v8 == 1)
    {
      [v11 frame];
      v9 = y / CGRectGetHeight(v13);
    }
  }

  else
  {
    v10 = [(BKScrubberControl *)self layoutDirection];
    if (v10 == 1)
    {
      [v11 frame];
      v9 = 1.0 - x / CGRectGetWidth(v15);
    }

    else
    {
      v9 = 0.0;
      if (!v10)
      {
        [v11 frame];
        v9 = x / CGRectGetWidth(v14);
      }
    }
  }

  [(BKScrubberControl *)self scrubToValue:v4 refresh:v9];
  [(BKScrubberControl *)self layoutIfNeeded];
}

- (int64_t)pageNumberForValue:(double)a3
{
  v4 = [(BKScrubberControl *)self pageCount];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v6 = v4;
  if (v4 * a3 <= v4)
  {
    v6 = v4 * a3;
  }

  return fmax(v6, 1.0);
}

- (void)scrubToValue:(double)a3 refresh:(BOOL)a4
{
  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  v5 = fmax(a3, 0.0);
  [(BKScrubberControl *)self _setValue:0 updateScrollView:v5];
  v6 = [(BKScrubberControl *)self pageCount];
  v7 = v5 * [(BKScrubberControl *)self pageCount]+ 1.0;
  if (v7 > v6)
  {
    v7 = v6;
  }

  v8 = fmax(v7, 1.0);
  if (v8 != [(BKScrubberControl *)self pageNumber])
  {
    [(BKScrubberControl *)self setPageNumber:v8];

    [(BKScrubberControl *)self sendActionsForControlEvents:4096];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(BKScrubberControl *)self isEnabled]!= a3)
  {
    v7.receiver = self;
    v7.super_class = BKScrubberControl;
    [(BKScrubberControl *)&v7 setEnabled:v3];
    [(BKScrubberControl *)self setNeedsLayout];
    if (self->_isClassic)
    {
      v5 = [(BKScrubberControl *)self track];
      [v5 setHidden:v3 ^ 1];
    }

    v6 = [(BKScrubberControl *)self scrollView];
    [v6 setHidden:v3 ^ 1];

    [(BKScrubberControl *)self updateHoverState];
  }
}

- (CGRect)hitRectForThumb
{
  v2 = [(BKScrubberControl *)self thumb];
  [v2 center];
  CGRectMakeWithCenterAndSize();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_setValue:(double)a3 updateScrollView:(BOOL)a4
{
  v6 = [(BKScrubberControl *)self track];
  [v6 readingProgress];
  v8 = v7;

  if (v8 != a3)
  {
    v9 = [(BKScrubberControl *)self track];
    [v9 setReadingProgress:a3];

    if (![(BKScrubberControl *)self hideThumbView])
    {

      [(BKScrubberControl *)self setNeedsLayout];
    }
  }
}

- (void)setPageNumber:(int64_t)a3
{
  v5 = [(BKScrubberControl *)self isTracking]^ 1;

  [(BKScrubberControl *)self setPageNumber:a3 refresh:v5];
}

- (void)setPageNumber:(int64_t)a3 refresh:(BOOL)a4
{
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 >= 1)
  {
    v5 = a3;
  }

  if (v5 != self->_pageNumber)
  {
    v6 = a4;
    self->_pageNumber = v5;
    if (![(BKScrubberControl *)self hideThumbView])
    {
      [(BKScrubberControl *)self setNeedsLayout];
    }

    [(BKScrubberControl *)self updateValueAndRefresh:v6];
  }
}

- (void)setPageCount:(unint64_t)a3
{
  v5 = [(BKScrubberControl *)self isTracking]^ 1;

  [(BKScrubberControl *)self setPageCount:a3 refresh:v5];
}

- (void)setPageCount:(unint64_t)a3 refresh:(BOOL)a4
{
  if (self->_pageCount != a3)
  {
    v4 = a4;
    self->_pageCount = a3;
    [(BKScrubberControl *)self setNeedsLayout];
    [(BKScrubberControl *)self updateValueAndRefresh:v4];
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      height = CGSizeZero.height;
      scrollView = self->_scrollView;

      [(UIScrollView *)scrollView setContentSize:CGSizeZero.width, height];
    }
  }
}

- (void)updateValue
{
  v3 = [(BKScrubberControl *)self isTracking]^ 1;

  [(BKScrubberControl *)self updateValueAndRefresh:v3];
}

- (void)updateValueAndRefresh:(BOOL)a3
{
  if (a3)
  {
    pageNumber = self->_pageNumber;
    v4 = 0.0;
    if (pageNumber != 1 && pageNumber != 0x7FFFFFFFFFFFFFFFLL)
    {
      pageCount = self->_pageCount;
      v4 = 1.0;
      if (pageNumber != pageCount)
      {
        v4 = 0.0;
        if (pageCount)
        {
          v4 = pageNumber / pageCount;
        }
      }
    }

    [(BKScrubberControl *)self setValue:v4];
  }
}

- (void)setLayoutDirection:(int64_t)a3
{
  v5 = [(BKScrubberControl *)self track];
  v6 = [v5 layoutDirection];

  if (v6 != a3)
  {
    v7 = [(BKScrubberControl *)self track];
    [v7 setLayoutDirection:a3];

    [(BKScrubberControl *)self setNeedsLayout];
  }
}

- (void)setOrientation:(int)a3
{
  v3 = *&a3;
  v5 = [(BKScrubberControl *)self track];
  v6 = [v5 trackOrientation];

  if (v6 != v3)
  {
    v7 = [(BKScrubberControl *)self track];
    [v7 setTrackOrientation:v3];

    [(BKScrubberLayerImp *)self->_modernKnobImp setOrientation:v3];
    [(BKScrubberLayerImp *)self->_modernTrackImp setOrientation:v3];

    [(BKScrubberControl *)self setNeedsLayout];
  }
}

- (void)setProgress:(double)a3
{
  v5 = [(BKScrubberControl *)self track];
  [v5 loadingProgress];
  v7 = v6;

  if (v7 != a3)
  {
    v8 = [(BKScrubberControl *)self track];
    [v8 setLoadingProgress:a3];

    [(BKScrubberControl *)self setNeedsLayout];

    [(BKScrubberControl *)self updateHoverState];
  }
}

- (CGRect)thumbRect
{
  v3 = [(BKScrubberControl *)self track];
  [v3 loadingProgress];
  v5 = v4;

  if (v5 == 1.0)
  {
    if (self->_isClassic)
    {
      [(BKScrubberControl *)self _classicThumbRect];
    }

    else
    {
      [(BKScrubberControl *)self _modernThumbRect];
    }
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_classicThumbRect
{
  v3 = [(BKScrubberControl *)self track];
  [v3 loadingProgress];
  v5 = v4;

  if (v5 == 1.0)
  {
    if ([(BKScrubberControl *)self orientation])
    {
      if ([(BKScrubberControl *)self orientation]!= 1)
      {
LABEL_8:
        v13 = +[UIScreen mainScreen];
        [v13 scale];

        CGRectMakeWithOriginSize();
        goto LABEL_9;
      }

      v6 = [(BKScrubberControl *)self track];
      [v6 frame];
      CGRectGetMidX(v14);

      [(BKScrubberControl *)self value];
      v7 = [(BKScrubberControl *)self track];
      [v7 frame];
      CGRectGetHeight(v15);
    }

    else
    {
      [(BKScrubberControl *)self value];
      v12 = [(BKScrubberControl *)self track];
      [v12 frame];
      CGRectGetWidth(v16);

      v7 = [(BKScrubberControl *)self track];
      [v7 frame];
      CGRectGetMidY(v17);
    }

    goto LABEL_8;
  }

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
LABEL_9:
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_modernThumbRect
{
  [(BKScrubberControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BKScrubberControl *)self orientation];
  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  if (v11)
  {
    v16 = CGRectGetHeight(*&v12) + -2.0;
    [(BKScrubberControl *)self _knobProportion];
    v18 = fmax(v17 * v16, 26.0);
    v19 = 1.0;
    [(BKScrubberControl *)self _knobOffsetForInset:1.0 knobLength:v18 knobTravelLength:v16];
    v21 = v20;
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    v22 = CGRectGetWidth(v30) + -2.0;
  }

  else
  {
    v23 = CGRectGetWidth(*&v12) + -2.0;
    [(BKScrubberControl *)self _knobProportion];
    v22 = fmax(v24 * v23, 26.0);
    v21 = 1.0;
    [(BKScrubberControl *)self _knobOffsetForInset:1.0 knobLength:v22 knobTravelLength:v23];
    v19 = v25;
    v31.origin.x = v4;
    v31.origin.y = v6;
    v31.size.width = v8;
    v31.size.height = v10;
    v18 = CGRectGetHeight(v31) + -2.0;
  }

  v26 = v19;
  v27 = v21;
  v28 = v22;
  v29 = v18;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (BKShapeView)thumb
{
  if (!self->_thumb && ![(BKScrubberControl *)self hideThumbView])
  {
    v3 = [[BKShapeView alloc] initWithFrame:0.0, 0.0, 8.0, 8.0];
    v4 = v3;
    if (self->_isClassic)
    {
      [(BKShapeView *)v3 bounds];
      v5 = [UIBezierPath bezierPathWithOvalInRect:?];
      [(BKShapeView *)v4 setPath:v5];
    }

    [(BKShapeView *)v4 setFillColorUsesTintColor:1];
    [(BKShapeView *)v4 setIgnoresTintColorAlpha:1];
    thumb = self->_thumb;
    self->_thumb = v4;
    v7 = v4;

    [(BKShapeView *)self->_thumb setAlpha:0.01];
  }

  v8 = self->_thumb;

  return v8;
}

- (BKScrubberTrack)track
{
  track = self->_track;
  if (!track)
  {
    v4 = objc_alloc_init(BKClassicScrubberTrack);
    v5 = self->_track;
    self->_track = &v4->super;

    [(BKScrubberTrack *)self->_track setAlpha:0.01];
    track = self->_track;
    if (!self->_isClassic)
    {
      [(BKScrubberTrack *)track setModern:1];
      track = self->_track;
    }
  }

  return track;
}

- (int64_t)layoutDirection
{
  v2 = [(BKScrubberControl *)self track];
  v3 = [v2 layoutDirection];

  return v3;
}

- (double)progress
{
  v2 = [(BKScrubberControl *)self track];
  [v2 loadingProgress];
  v4 = v3;

  return v4;
}

- (double)value
{
  v3 = [(BKScrubberControl *)self layoutDirection];
  v4 = [(BKScrubberControl *)self track];
  [v4 readingProgress];
  if (v3)
  {
    v6 = 1.0 - v5;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (int)orientation
{
  v2 = [(BKScrubberControl *)self track];
  v3 = [v2 trackOrientation];

  return v3;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(BKScrubberControl *)self pointerInteraction];

  if (v9 == v8)
  {
    [(BKShapeView *)self->_thumb frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v7 location];
    v24.x = v18;
    v24.y = v19;
    v25.origin.x = v11;
    v25.origin.y = v13;
    v25.size.width = v15;
    v25.size.height = v17;
    v20 = CGRectContainsPoint(v25, v24);

    if (v20)
    {
      [(BKShapeView *)self->_thumb frame];
      v21 = [UIPointerRegion regionWithRect:@"thumb" identifier:?];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v21 = 0;
LABEL_6:

  return v21;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKScrubberControl *)self pointerInteraction];

  if (v8 == v7)
  {
    v10 = [v6 identifier];
    v11 = [v10 isEqual:@"thumb"];

    if (!v11)
    {
      v9 = 0;
      goto LABEL_10;
    }

    if ([(BKScrubberControl *)self isTracking])
    {
      v8 = +[UIBezierPath bezierPath];
      v12 = [UIPointerShape shapeWithPath:v8];
      [UIPointerStyle styleWithShape:v12 constrainedAxes:0];
    }

    else
    {
      v8 = [[UITargetedPreview alloc] initWithView:self->_thumb];
      v12 = [UIPointerHighlightEffect effectWithPreview:v8];
      [UIPointerStyle styleWithEffect:v12 shape:0];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (BKAccessibilityScrubberControlDelegate)bkAccessibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bkAccessibilityDelegate);

  return WeakRetained;
}

- (void)updateHoverState
{
  hoverController = self->_hoverController;
  if (hoverController)
  {
    v4 = [(BKScrubberHoverController *)hoverController gestureHoverState];
  }

  else
  {
    v4 = &dword_0 + 2;
  }

  [(BKScrubberControl *)self setHoverState:v4];
}

- (void)setHoverState:(int64_t)a3
{
  v4 = [(BKScrubberControl *)self validateHoverState:a3];
  hoverState = self->_hoverState;
  if (hoverState != v4)
  {
    v6 = v4;
    self->_hoverState = v4;
    v7 = v4 == 2;
    v8 = v4 != 0;
    [(BKScrubberControl *)self progress];
    if (v9 == 1.0)
    {
      v10 = 0.25;
    }

    else
    {
      v10 = 0.0;
    }

    if (v9 == 1.0)
    {
      v11 = 0.5;
    }

    else
    {
      v11 = 0.0;
    }

    if (((v7 ^ (hoverState != 2)) & 1) == 0)
    {
      if (v6 == 2)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_14A1FC;
      v16[3] = &unk_2C9330;
      v16[4] = self;
      v17 = v6 == 2;
      [UIView animateWithDuration:v16 animations:v12];
    }

    if ((v6 != 0) == (hoverState == 0))
    {
      if (v6)
      {
        v13 = v10;
      }

      else
      {
        v13 = v11;
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_14A264;
      v14[3] = &unk_2C9330;
      v14[4] = self;
      v15 = v8;
      [UIView animateWithDuration:v14 animations:v13];
    }
  }
}

- (int64_t)validateHoverState:(int64_t)a3
{
  if (![(BKScrubberControl *)self isEnabled])
  {
    return 0;
  }

  [(BKScrubberControl *)self progress];
  if (v5 != 1.0)
  {
    return 0;
  }

  return a3;
}

- (void)_updateScrollviewValue:(double)a3
{
  if ([(BKScrubberControl *)self orientation])
  {
    [(UIScrollView *)self->_scrollView contentSize];
    v6 = v5 * a3;
    scrollView = self->_scrollView;
    v8 = 0.0;
  }

  else
  {
    v9 = [(BKScrubberControl *)self track];
    v10 = [v9 layoutDirection];

    if (v10 == &dword_0 + 1)
    {
      [(UIScrollView *)self->_scrollView contentSize];
      v13 = v12;
      [(UIScrollView *)self->_scrollView contentSize];
      v8 = v13 - v14 * a3;
    }

    else
    {
      if (v10)
      {
        return;
      }

      [(UIScrollView *)self->_scrollView contentSize];
      v8 = v11 * a3;
    }

    scrollView = self->_scrollView;
    v6 = 0.0;
  }

  [(UIScrollView *)scrollView setContentOffset:v8, v6];
}

- (void)scrollViewDidScroll:(id)a3
{
  scrollView = self->_scrollView;
  v5 = a3;
  [(UIScrollView *)scrollView frame];
  v7 = v6;
  v9 = v8;
  v10 = [(BKScrubberControl *)self orientation];
  [(UIScrollView *)self->_scrollView contentOffset];
  v12 = v11;
  v14 = v13;
  [(UIScrollView *)self->_scrollView contentSize];
  v16 = v9 * (v14 / (v15 - v9));
  v18 = v7 * (v12 / (v17 - v7));
  if (v10)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v18;
  }

  if (v10)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = [v5 panGestureRecognizer];

  v22 = [v21 state];
  if (v22 == &dword_0 + 2)
  {

    [(BKScrubberControl *)self _touchMovedAtPoint:0 refresh:v19, v20];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_14A5B0;
  v4[3] = &unk_2C8FF8;
  objc_copyWeak(&v5, &location);
  dispatch_async(&_dispatch_main_q, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end