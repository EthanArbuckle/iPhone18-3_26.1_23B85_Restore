@interface BKThumbnailScrubber
- (BKThumbnailScrubberDelegate)delegate;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGPoint)accessibilityActivationPoint;
- (CGPoint)gravitationalPoint;
- (CGPoint)pointForValue:(double)a3;
- (CGRect)hitRectForThumb;
- (CGRect)thumbRect;
- (CGRect)trackRectForBounds:(CGRect)a3;
- (CGSize)_idealTrackSize;
- (CGSize)_segmentSizeForMaxScrubberSize:(CGSize)result orientation:(int)a4 cellAspectRatio:(double)a5 spread:(BOOL)a6;
- (CGSize)calloutImageSize;
- (CGSize)intrinsicContentSize;
- (CGSize)segmentSize;
- (_NSRange)_pageRangeAtIndex:(unint64_t)a3 segmentCount:(unint64_t)a4 pageCount:(unint64_t)a5 orientation:(int)a6 layoutDirection:(int64_t)a7 spread:(BOOL)a8;
- (_NSRange)_pageRangeForPageNumber:(int64_t)a3 pageCount:(unint64_t)a4 spread:(BOOL)a5;
- (_NSRange)pageRangeAtIndex:(unint64_t)a3;
- (_NSRange)pageRangeForPageNumber:(int64_t)a3;
- (double)value;
- (double)valueForPoint:(CGPoint)a3;
- (id)thumb;
- (id)track;
- (int64_t)leftCalloutPageNumber;
- (int64_t)pageNumber;
- (int64_t)pageNumberForValue:(double)a3;
- (int64_t)rightCalloutPageNumber;
- (unint64_t)_computeSegmentCountForRect:(CGSize)a3 segmentSize:(CGSize)a4 idealCount:(unint64_t)a5 orientation:(int)a6;
- (unint64_t)idealCellCount;
- (unint64_t)segmentIndexForPage:(int64_t)a3;
- (void)_bkAccessibilityAnnounceValue;
- (void)_updateCalloutPageView;
- (void)_updateThumb;
- (void)_updateThumbnails;
- (void)accessibilityDecrement;
- (void)accessibilityElementDidLoseFocus;
- (void)accessibilityIncrement;
- (void)cancelPendingRenderRequests;
- (void)configureCell:(id)a3 pageRange:(_NSRange)a4 context:(id)a5;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)prewarmThumbnailsForScrubberSize:(CGSize)a3;
- (void)setCallout:(id)a3;
- (void)setCellAspectRatio:(double)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHideThumbView:(BOOL)a3;
- (void)setIsWithinGravitationalPointReach:(BOOL)a3;
- (void)setPageCount:(unint64_t)a3;
- (void)setPageNumber:(int64_t)a3;
- (void)setShowSpreads:(BOOL)a3;
- (void)setStrokeColor:(id)a3;
- (void)setThumbnail:(id)a3 forPage:(int64_t)a4 context:(id)a5;
- (void)snapToGravitationalPoint;
@end

@implementation BKThumbnailScrubber

- (void)layoutSubviews
{
  [(BKThumbnailScrubber *)self _updateThumbnails];
  v12.receiver = self;
  v12.super_class = BKThumbnailScrubber;
  [(BKThumbnailScrubber *)&v12 layoutSubviews];
  if ([(BKThumbnailScrubber *)self orientation]== 1)
  {
    v3 = [(BKThumbnailScrubber *)self track];
    [v3 bounds];
    MaxY = CGRectGetMaxY(v13);
    [(BKThumbnailScrubber *)self bounds];
    v5 = CGRectGetMaxY(v14);

    if (MaxY != v5)
    {
      [(BKThumbnailScrubber *)self center];
      v7 = v6;
      v8 = [(BKThumbnailScrubber *)self track];
      [v8 frame];
      Height = CGRectGetHeight(v15);

      [(BKThumbnailScrubber *)self frame];
      v11 = v10;
      [(BKThumbnailScrubber *)self frame];
      [(BKThumbnailScrubber *)self setFrame:v11, v7 + Height * -0.5, floor(CGRectGetWidth(v16)), floor(Height)];
      [(BKThumbnailScrubber *)self setNeedsLayout];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  if (_UISolariumEnabled())
  {
    [(BKThumbnailScrubber *)self _idealTrackSize];
  }

  else
  {
    width = UILayoutFittingExpandedSize.width;
    height = UILayoutFittingExpandedSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = BKThumbnailScrubber;
  [(BKThumbnailScrubber *)&v11 beginTrackingWithTouch:v6 withEvent:a4];
  v7 = [(BKThumbnailScrubber *)self track];
  if (v7)
  {
    [v6 locationInView:v7];
    [(BKThumbnailScrubber *)self valueForPoint:?];
    *&v8 = v8;
    v9 = *&v8;
    [(BKThumbnailScrubber *)self setValue:*&v8];
    [(BKThumbnailScrubber *)self setPageNumber:[(BKThumbnailScrubber *)self pageNumberForValue:v9]];
  }

  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKThumbnailScrubber *)self pageNumber];
  v18.receiver = self;
  v18.super_class = BKThumbnailScrubber;
  v9 = [(BKThumbnailScrubber *)&v18 continueTrackingWithTouch:v6 withEvent:v7];

  y = CGPointZero.y;
  v11 = CGPointZero.x == self->_gravitationalPoint.x && y == self->_gravitationalPoint.y;
  if (!v11 && v8 != [(BKThumbnailScrubber *)self pageNumber:CGPointZero.x])
  {
    [v6 locationInView:self];
    v13 = self->_gravitationalPoint.y;
    v14 = v13 + -10.0;
    v15 = v13 + 10.0;
    if (v12 > v14 && v12 < v15)
    {
      [(BKThumbnailScrubber *)self setIsWithinGravitationalPointReach:1];
      [(BKThumbnailScrubber *)self snapToGravitationalPoint];
      if (!v9)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    [(BKThumbnailScrubber *)self setIsWithinGravitationalPointReach:0];
  }

  if (v9)
  {
LABEL_12:
    [(BKThumbnailScrubber *)self _bkAccessibilityValueDidChange];
  }

LABEL_13:

  return v9;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = BKThumbnailScrubber;
  [(BKThumbnailScrubber *)&v5 endTrackingWithTouch:a3 withEvent:a4];
  [(BKThumbnailScrubber *)self setBkAccessibilityAnnouncementString:0];
}

- (double)value
{
  v3 = [(BKThumbnailScrubber *)self pageCount];
  result = 0.0;
  if (v3 >= 2)
  {
    v5 = ([(BKThumbnailScrubber *)self pageNumber]- 1);
    return (v5 / ([(BKThumbnailScrubber *)self pageCount]- 1));
  }

  return result;
}

- (int64_t)pageNumber
{
  v3.receiver = self;
  v3.super_class = BKThumbnailScrubber;
  return [(BKThumbnailScrubber *)self pageRangeForPageNumber:[(BKThumbnailScrubber *)&v3 pageNumber]];
}

- (void)setPageNumber:(int64_t)a3
{
  if (*&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__pageNumber] != a3)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = BKThumbnailScrubber;
    [(BKThumbnailScrubber *)&v6 setPageNumber:?];
    [(BKThumbnailScrubber *)self _updateThumb];
    [(BKThumbnailScrubber *)self _updateCalloutPageView];
    if (![(BKThumbnailScrubber *)self hideThumbView])
    {
      [(BKThumbnailScrubber *)self setNeedsLayout];
    }
  }
}

- (void)setPageCount:(unint64_t)a3
{
  if ([(BKThumbnailScrubber *)self pageCount]!= a3)
  {
    v5.receiver = self;
    v5.super_class = BKThumbnailScrubber;
    [(BKThumbnailScrubber *)&v5 setPageCount:a3];
    [(BKThumbnailScrubber *)self _updateCalloutPageView];
  }
}

- (id)track
{
  v3 = OBJC_IVAR___BKScrubberControl__track;
  v4 = *&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track];
  if (!v4)
  {
    v5 = [BKThumbnailScrubberTrack alloc];
    [(BKThumbnailScrubber *)self bounds];
    v6 = [(BKThumbnailScrubberTrack *)v5 initWithFrame:?];
    [(BKThumbnailScrubberTrack *)v6 setAutoresizingMask:18];
    [(BKThumbnailScrubber *)self segmentSize];
    [(BKThumbnailScrubberTrack *)v6 setSegmentSize:?];
    v7 = [(BKThumbnailScrubber *)self strokeColor];
    [(BKThumbnailScrubberTrack *)v6 setSegmentStrokeColor:v7];

    [(BKThumbnailScrubber *)self showSpreads];
    [(BKThumbnailScrubberTrack *)v6 setCellClass:objc_opt_class()];
    v8 = *&self->BKScrubberControl_opaque[v3];
    *&self->BKScrubberControl_opaque[v3] = v6;

    v4 = *&self->BKScrubberControl_opaque[v3];
  }

  return v4;
}

- (CGRect)trackRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(BKThumbnailScrubber *)self track];
  [v8 sizeThatFits:{width, height}];
  v10 = v9;
  v12 = v11;

  if ([(BKThumbnailScrubber *)self orientation]== 1)
  {
    v14 = CGPointZero.x;
    v13 = CGPointZero.y;
  }

  else
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v14 = round((CGRectGetWidth(v18) - v10) * 0.5);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v13 = round((CGRectGetHeight(v19) - v12) * 0.5);
  }

  v15 = v14;
  v16 = v10;
  v17 = v12;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v13;
  result.origin.x = v15;
  return result;
}

- (id)thumb
{
  if (!self->_imageThumb && ![(BKThumbnailScrubber *)self hideThumbView])
  {
    [(BKThumbnailScrubber *)self showSpreads];
    v3 = [objc_alloc(objc_opt_class()) initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    imageThumb = self->_imageThumb;
    self->_imageThumb = v3;

    v5 = [(BKThumbnailScrubber *)self strokeColor];
    [(BKThumbnailScrubberCell *)self->_imageThumb setStrokeColor:v5];

    [(BKThumbnailScrubberCell *)self->_imageThumb setAlpha:([(BKThumbnailScrubber *)self hideThumbView]^ 1)];
    [(BKThumbnailScrubber *)self _updateThumb];
  }

  v6 = self->_imageThumb;

  return v6;
}

- (CGRect)hitRectForThumb
{
  v2 = [(BKThumbnailScrubber *)self track];
  [v2 frame];
  v12 = CGRectInset(v11, -20.0, -20.0);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)thumbRect
{
  v3 = [(BKThumbnailScrubber *)self track];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (self->_inMiniBar)
  {
    v12 = 25.0;
  }

  else
  {
    v12 = 33.0;
  }

  if (self->_inMiniBar)
  {
    v13 = 19.0;
  }

  else
  {
    v13 = 26.0;
  }

  [(BKThumbnailScrubber *)self cellAspectRatio];
  if (v14 != 0.0)
  {
    [(BKThumbnailScrubber *)self cellAspectRatio];
    v13 = floor(v12 * v15);
    if ([(BKThumbnailScrubber *)self showSpreads])
    {
      v13 = v13 + v13;
    }
  }

  v16 = [(BKThumbnailScrubber *)self track];
  [v16 segmentSize];
  v18 = v17 * 0.5;
  [v16 segmentSize];
  v40 = v19 * 0.5;
  if ([(BKThumbnailScrubber *)self pageCount]>= 2)
  {
    v20 = [(BKThumbnailScrubber *)self pageRangeForPageNumber:[(BKThumbnailScrubber *)self pageNumber]];
    v22 = v21;
    if ([(BKThumbnailScrubber *)self orientation]== 1)
    {
      [(BKThumbnailScrubber *)self value];
      [(BKThumbnailScrubber *)self pointForValue:?];
      v40 = v23;
    }

    else
    {
      v24 = [(BKThumbnailScrubber *)self pageCount]- 1;
      if (v24 <= 1)
      {
        v24 = (&dword_0 + 1);
      }

      v39 = ((v22 + -1.0) * 0.5 + v20 + -1.0) / v24;
      v41.origin.x = v5;
      v41.origin.y = v7;
      v41.size.width = v9;
      v41.size.height = v11;
      Width = CGRectGetWidth(v41);
      [v16 segmentSize];
      v18 = v18 + v39 * (Width - v26);
    }
  }

  if ([(BKThumbnailScrubber *)self layoutDirection]== &dword_0 + 1 && ![(BKThumbnailScrubber *)self orientation])
  {
    v42.origin.x = v5;
    v42.origin.y = v7;
    v42.size.width = v9;
    v42.size.height = v11;
    v18 = CGRectGetWidth(v42) - v18;
  }

  v27 = [(BKThumbnailScrubber *)self orientation];
  v43.origin.x = v5;
  v43.origin.y = v7;
  v43.size.width = v9;
  v43.size.height = v11;
  MinX = CGRectGetMinX(v43);
  v44.origin.x = v5;
  v44.origin.y = v7;
  v44.size.width = v9;
  v44.size.height = v11;
  MinY = CGRectGetMinY(v44);
  v30 = round(v18 - v13 * 0.5);
  v31 = round((v9 - v13) * 0.5);
  v32 = v40 - v12 * 0.5;
  if (v27 == 1)
  {
    v30 = v31;
  }

  else
  {
    v32 = (v11 - v12) * 0.5;
  }

  v33 = v30 + MinX;
  v34 = round(v32) + MinY;

  v35 = v33;
  v36 = v34;
  v37 = v13;
  v38 = v12;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  if (self->_strokeColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_strokeColor, a3);
    [*&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track] setSegmentStrokeColor:v6];
    v5 = [(BKThumbnailScrubberCell *)self->_imageThumb setStrokeColor:v6];
  }

  _objc_release_x2(v5);
}

- (void)setShowSpreads:(BOOL)a3
{
  if (self->_showSpreads != a3)
  {
    self->_showSpreads = a3;
    v5 = *&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track];
    [(BKThumbnailScrubber *)self showSpreads];
    [v5 setCellClass:objc_opt_class()];
    v6 = [(BKThumbnailScrubber *)self delegate];
    [v6 thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:self->_imageThumb];

    [(BKThumbnailScrubberCell *)self->_imageThumb removeFromSuperview];
    imageThumb = self->_imageThumb;
    self->_imageThumb = 0;

    v8 = [(BKThumbnailScrubber *)self thumb];
    [(BKThumbnailScrubber *)self addSubview:v8];
  }
}

- (void)setCellAspectRatio:(double)a3
{
  if (self->_cellAspectRatio != a3)
  {
    self->_cellAspectRatio = a3;
    v5 = *&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track];
    [(BKThumbnailScrubber *)self segmentSize];
    [v5 setSegmentSize:?];
  }
}

- (void)setHideThumbView:(BOOL)a3
{
  if (self->_hideThumbView != a3)
  {
    self->_hideThumbView = a3;
    if (a3)
    {
      [(BKThumbnailScrubberCell *)self->_imageThumb removeFromSuperview];
      imageThumb = self->_imageThumb;
      self->_imageThumb = 0;
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(BKThumbnailScrubber *)self frame];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = CGRectEqualToRect(v11, v12);
  v10.receiver = self;
  v10.super_class = BKThumbnailScrubber;
  [(BKThumbnailScrubber *)&v10 setFrame:x, y, width, height];
  if (!v8)
  {
    v9 = *&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track];
    [(BKThumbnailScrubber *)self segmentSize];
    [v9 setSegmentSize:?];
    [(BKThumbnailScrubber *)self _updateThumbnails];
  }
}

- (CGSize)segmentSize
{
  if (*&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track])
  {
    v3 = [(BKThumbnailScrubber *)self orientation];
  }

  else
  {
    v3 = 0;
  }

  [(BKThumbnailScrubber *)self bounds];
  v5 = v4;
  v7 = v6;
  [(BKThumbnailScrubber *)self cellAspectRatio];
  v9 = v8;
  v10 = [(BKThumbnailScrubber *)self showSpreads];

  [(BKThumbnailScrubber *)self _segmentSizeForMaxScrubberSize:v3 orientation:v10 cellAspectRatio:v5 spread:v7, v9];
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)_segmentSizeForMaxScrubberSize:(CGSize)result orientation:(int)a4 cellAspectRatio:(double)a5 spread:(BOOL)a6
{
  if (a4 == 1)
  {
    width = result.width * 0.5;
    if (!a6)
    {
      width = result.width;
    }

    v7 = floor(width / a5);
    if (a5 > 0.0)
    {
      result.height = v7;
    }
  }

  else
  {
    result.height = 16.0;
    if (!self->_inMiniBar)
    {
      result.height = 22.0;
    }

    result.width = 18.0;
    if (self->_inMiniBar)
    {
      result.width = 14.0;
    }

    v8 = floor(result.height * a5);
    if (a5 > 0.0)
    {
      result.width = v8;
    }

    if (a6)
    {
      result.width = result.width + result.width;
    }
  }

  return result;
}

- (unint64_t)idealCellCount
{
  v3 = [(BKThumbnailScrubber *)self showSpreads];
  v4 = [(BKThumbnailScrubber *)self pageCount];
  v5 = ceilf((v4 + 1.0) * 0.5);
  if (v3)
  {
    return v5;
  }

  return v4;
}

- (_NSRange)_pageRangeForPageNumber:(int64_t)a3 pageCount:(unint64_t)a4 spread:(BOOL)a5
{
  v5 = a3;
  if (a5)
  {
    if (a3 >= 2 && a3 < a4)
    {
      v6 = -(a3 & 1);
LABEL_9:
      v5 = v6 + a3;
      v7 = 2;
      goto LABEL_10;
    }

    v7 = 1;
    if (a3 == a4 && (a3 & 0x8000000000000001) == 1)
    {
      v6 = -1;
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_10:
  result.length = v7;
  result.location = v5;
  return result;
}

- (_NSRange)pageRangeForPageNumber:(int64_t)a3
{
  v5 = [(BKThumbnailScrubber *)self pageCount];
  v6 = [(BKThumbnailScrubber *)self showSpreads];

  v7 = [(BKThumbnailScrubber *)self _pageRangeForPageNumber:a3 pageCount:v5 spread:v6];
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)_pageRangeAtIndex:(unint64_t)a3 segmentCount:(unint64_t)a4 pageCount:(unint64_t)a5 orientation:(int)a6 layoutDirection:(int64_t)a7 spread:(BOOL)a8
{
  if (a4 < 2)
  {
    v11 = &dword_0 + 1;
    v12 = 1;
  }

  else
  {
    v8 = roundf(((a5 + -1.0) / (a4 - 1)) * a3) + 1.0;
    if (a7 == 1 && a6 == 0)
    {
      v10 = a5 - v8 + 1;
    }

    else
    {
      v10 = v8;
    }

    v11 = [(BKThumbnailScrubber *)self _pageRangeForPageNumber:v10 pageCount:a5 spread:a8, *&a6];
  }

  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)pageRangeAtIndex:(unint64_t)a3
{
  v5 = [(BKThumbnailScrubber *)self track];
  v6 = -[BKThumbnailScrubber _pageRangeAtIndex:segmentCount:pageCount:orientation:layoutDirection:spread:](self, "_pageRangeAtIndex:segmentCount:pageCount:orientation:layoutDirection:spread:", a3, [v5 segmentCount], -[BKThumbnailScrubber pageCount](self, "pageCount"), -[BKThumbnailScrubber orientation](self, "orientation"), -[BKThumbnailScrubber layoutDirection](self, "layoutDirection"), -[BKThumbnailScrubber showSpreads](self, "showSpreads"));
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (unint64_t)segmentIndexForPage:(int64_t)a3
{
  v5 = [(BKThumbnailScrubber *)self track];
  v6 = [v5 segmentCount];
  v7 = [(BKThumbnailScrubber *)self pageCount];
  v8 = [(BKThumbnailScrubber *)self layoutDirection];
  v9 = a3 - 1;
  if (a3 == 1 || !v7)
  {
    if (v8 == &dword_0 + 1)
    {
      if ([(BKThumbnailScrubber *)self orientation])
      {
        v10 = 0;
      }

      else
      {
        v10 = v6 - 1;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if (v8 == &dword_0 + 1 && ![(BKThumbnailScrubber *)self orientation])
    {
      v9 = v7 - a3;
    }

    v10 = llround(v9 / (v7 - 1) * (v6 - 1));
  }

  return v10;
}

- (void)configureCell:(id)a3 pageRange:(_NSRange)a4 context:(id)a5
{
  length = a4.length;
  location = a4.location;
  v28 = a3;
  v9 = a5;
  v10 = [(BKThumbnailScrubber *)self track];
  imageThumb = self->_imageThumb;
  if (imageThumb == v9)
  {
    [(BKThumbnailScrubberCell *)imageThumb bounds];
    v13 = v16;
    v15 = v17;
  }

  else
  {
    [v10 segmentSize];
    v13 = v12;
    v15 = v14;
  }

  v18 = [(BKThumbnailScrubber *)self delegate];
  if ([(BKThumbnailScrubber *)self showSpreads])
  {
    v19 = v13 * 0.5;
    v20 = v28;
    if (length == 2)
    {
      v21 = [v18 pageNumberFromRange:{location, 2}];
      v22 = [v18 thumbnailScrubber:self thumbnailForPage:v21 size:v9 context:{v19, v15}];
      v23 = [v18 thumbnailScrubber:self thumbnailForPage:v21 + 1 size:v9 context:{v19, v15}];
      if ([(BKThumbnailScrubber *)self layoutDirection]== &dword_0 + 1)
      {
        [v20 setRightImage:v22];
        [v20 setLeftImage:v23];
      }

      else
      {
        [v20 setLeftImage:v22];
        [v20 setRightImage:v23];
      }

      [v20 setShouldHaveRightImage:1];
      [v20 setShouldHaveLeftImage:1];
    }

    else
    {
      v22 = [v18 thumbnailScrubber:self thumbnailForPage:location size:v9 context:{v19, v15}];
      if (location == &dword_0 + 1 && ![(BKThumbnailScrubber *)self layoutDirection]|| location == [(BKThumbnailScrubber *)self pageCount]&& [(BKThumbnailScrubber *)self layoutDirection]== &dword_0 + 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = 1;
        v27 = v22;
      }

      else
      {
        v27 = 0;
        v26 = 0;
        v25 = 1;
        v24 = v22;
      }

      [v20 setLeftImage:v24];
      [v20 setRightImage:v27];
      [v20 setShouldHaveLeftImage:v25];
      [v20 setShouldHaveRightImage:v26];
    }
  }

  else
  {
    v20 = [v18 thumbnailScrubber:self thumbnailForPage:location size:v9 context:{v13, v15}];
    [v28 setImage:v20];
  }
}

- (void)prewarmThumbnailsForScrubberSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(BKThumbnailScrubber *)self orientation];
  [(BKThumbnailScrubber *)self cellAspectRatio];
  [(BKThumbnailScrubber *)self _segmentSizeForMaxScrubberSize:v6 orientation:[(BKThumbnailScrubber *)self showSpreads] cellAspectRatio:width spread:height, v7];
  v9 = v8;
  v11 = v10;
  v12 = [(BKThumbnailScrubber *)self _computeSegmentCountForRect:[(BKThumbnailScrubber *)self idealCellCount] segmentSize:[(BKThumbnailScrubber *)self orientation] idealCount:width orientation:height, v8, v10];
  v26 = [(BKThumbnailScrubber *)self pageCount];
  v13 = [(BKThumbnailScrubber *)self orientation];
  v14 = [(BKThumbnailScrubber *)self layoutDirection];
  v15 = [(BKThumbnailScrubber *)self showSpreads];
  if (v12)
  {
    v16 = v15;
    for (i = 0; i != v12; ++i)
    {
      v18 = [(BKThumbnailScrubber *)self _pageRangeAtIndex:i segmentCount:v12 pageCount:v26 orientation:v13 layoutDirection:v14 spread:v16];
      v20 = v19;
      v21 = [(BKThumbnailScrubber *)self delegate];
      v22 = OBJC_IVAR___BKScrubberControl__track;
      v23 = [v21 thumbnailScrubber:self thumbnailForPage:v18 size:*&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track] context:{v9, v11}];

      if (v20 >= 2)
      {
        v24 = [(BKThumbnailScrubber *)self delegate];
        v25 = [v24 thumbnailScrubber:self thumbnailForPage:v18 + 1 size:*&self->BKScrubberControl_opaque[v22] context:{v9, v11}];
      }
    }
  }
}

- (void)cancelPendingRenderRequests
{
  v3 = [(BKThumbnailScrubber *)self delegate];
  [v3 thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:self->_imageThumb];

  v4 = [(BKThumbnailScrubber *)self delegate];
  [v4 thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:*&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track]];
}

- (void)setThumbnail:(id)a3 forPage:(int64_t)a4 context:(id)a5
{
  v32 = a3;
  v8 = a5;
  if (v32 && a4 && a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_imageThumb == v8)
    {
      v17 = [(BKThumbnailScrubber *)self pageRangeForPageNumber:[(BKThumbnailScrubber *)self pageNumber]];
      if (a4 >= v17 && a4 - v17 < v18)
      {
        [(BKThumbnailScrubber *)self configureCell:self->_imageThumb pageRange:v17 context:v18, self->_imageThumb];
      }
    }

    else
    {
      v9 = OBJC_IVAR___BKScrubberControl__track;
      if (*&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track] == v8)
      {
        v14 = [(BKThumbnailScrubber *)self track];
        v19 = [(BKThumbnailScrubber *)self segmentIndexForPage:a4];
        v20 = [v14 cellAtIndex:v19];
        v21 = [(BKThumbnailScrubber *)self pageRangeAtIndex:v19];
        [(BKThumbnailScrubber *)self configureCell:v20 pageRange:v21 context:v22, *&self->BKScrubberControl_opaque[v9]];

        goto LABEL_25;
      }

      v10 = [(BKThumbnailScrubber *)self callout];
      v11 = [v10 pageView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v13 = [(BKThumbnailScrubber *)self callout];
      v14 = [v13 pageView];
      if (isKindOfClass)
      {

        v15 = [v14 leftPageView];
        v16 = v15;
        if (v15 == v8)
        {
          v26 = [v14 leftPageView];
          v27 = [v26 pageNumber];

          if (v27 == a4)
          {
            v28 = [v14 leftPageView];
LABEL_23:
            v29 = v28;
            [(BKThumbnailScrubberCell *)v28 setImage:v32];
            goto LABEL_24;
          }
        }

        else
        {
        }

        v29 = [v14 rightPageView];
        if (v29 != v8)
        {
LABEL_24:

          goto LABEL_25;
        }

        v30 = [v14 rightPageView];
        v31 = [v30 pageNumber];

        if (v31 == a4)
        {
          v28 = [v14 rightPageView];
          goto LABEL_23;
        }

LABEL_25:

        goto LABEL_26;
      }

      objc_opt_class();
      v23 = objc_opt_isKindOfClass();

      if (v23)
      {
        v24 = [(BKThumbnailScrubber *)self callout];
        v25 = [v24 pageView];

        if (v25 == v8 && [(BKThumbnailScrubberCell *)v25 pageNumber]== a4)
        {
          [(BKThumbnailScrubberCell *)v25 setImage:v32];
        }
      }
    }
  }

LABEL_26:
}

- (unint64_t)_computeSegmentCountForRect:(CGSize)a3 segmentSize:(CGSize)a4 idealCount:(unint64_t)a5 orientation:(int)a6
{
  if (!a6)
  {
    v6 = a3.width / (a4.width + 2.0);
    goto LABEL_5;
  }

  if (a4.height > 0.0)
  {
    v6 = a3.height / a4.height;
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  if (v7 >= a5)
  {
    return a5;
  }

  else
  {
    return v7;
  }
}

- (CGSize)_idealTrackSize
{
  v3 = [(BKThumbnailScrubber *)self track];
  [v3 segmentSize];
  v5 = v4;
  v7 = v6;
  CGRectMakeWithSize();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(BKThumbnailScrubber *)self orientation];
  v17 = v9;
  v18 = v11;
  v19 = v13;
  v20 = v15;
  if (v16)
  {
    v21 = CGRectGetHeight(*&v17) / v7;
  }

  else
  {
    v21 = CGRectGetWidth(*&v17) / (v5 + 2.0);
  }

  v22 = v21;
  v23 = [(BKThumbnailScrubber *)self idealCellCount];
  if (v23 >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  [*&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track] sizeForThumbnailCount:v24];
  v26 = v25;
  v28 = v27;

  v29 = v26;
  v30 = v28;
  result.height = v30;
  result.width = v29;
  return result;
}

- (void)_updateThumbnails
{
  if ([(BKThumbnailScrubber *)self pageCount]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = [(BKThumbnailScrubber *)self track];
    v3 = [(BKThumbnailScrubber *)self delegate];
    [v3 thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:v29];

    [v29 segmentSize];
    v5 = v4;
    v7 = v6;
    [(BKThumbnailScrubber *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(BKThumbnailScrubber *)self orientation];
    v17 = v9;
    v18 = v11;
    v19 = v13;
    v20 = v15;
    if (v16)
    {
      v21 = CGRectGetHeight(*&v17) / v7;
    }

    else
    {
      v21 = CGRectGetWidth(*&v17) / (v5 + 2.0);
    }

    v22 = v21;
    v23 = [(BKThumbnailScrubber *)self idealCellCount];
    if (v23 < v22)
    {
      v22 = v23;
    }

    [v29 setSegmentCount:v22];
    [v29 sizeToFit];
    [v29 layoutIfNeeded];
    if (v22 >= 1)
    {
      for (i = 0; i != v22; ++i)
      {
        v25 = i;
        if ([(BKThumbnailScrubber *)self layoutDirection]== &dword_0 + 1)
        {
          if ([(BKThumbnailScrubber *)self orientation])
          {
            v25 = i;
          }

          else
          {
            v25 = v22 + ~i;
          }
        }

        v26 = [v29 cellAtIndex:v25];
        v27 = [(BKThumbnailScrubber *)self pageRangeAtIndex:v25];
        [(BKThumbnailScrubber *)self configureCell:v26 pageRange:v27 context:v28, *&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track]];
      }
    }
  }
}

- (void)_updateThumb
{
  v3 = [(BKThumbnailScrubber *)self delegate];
  [v3 thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:self->_imageThumb];

  if (![(BKThumbnailScrubber *)self hideThumbView])
  {
    v5 = [(BKThumbnailScrubber *)self pageRangeForPageNumber:[(BKThumbnailScrubber *)self pageNumber]];
    imageThumb = self->_imageThumb;

    [(BKThumbnailScrubber *)self configureCell:imageThumb pageRange:v5 context:v4, imageThumb];
  }
}

- (void)setIsWithinGravitationalPointReach:(BOOL)a3
{
  if (self->_isWithinGravitationalPointReach != a3)
  {
    self->_isWithinGravitationalPointReach = a3;
    if (a3)
    {
      v4 = [[UIImpactFeedbackGenerator alloc] initWithStyle:0];
      [v4 impactOccurred];
    }
  }
}

- (void)snapToGravitationalPoint
{
  [(BKThumbnailScrubber *)self valueForPoint:self->_gravitationalPoint.x, self->_gravitationalPoint.y];
  v4 = v3;
  [(BKThumbnailScrubber *)self setValue:?];
  v5 = [(BKThumbnailScrubber *)self pageNumberForValue:v4];

  [(BKThumbnailScrubber *)self setPageNumber:v5];
}

- (void)setCallout:(id)a3
{
  v5 = a3;
  if (self->_callout != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_callout, a3);
    [(BKScrubberCalloutView *)self->_callout setUsesMonospacedDigitFontForSubtitle:1];
    v5 = v6;
  }
}

- (CGSize)calloutImageSize
{
  v3 = [(BKThumbnailScrubber *)self callout];

  if (v3)
  {
    v4 = [(BKThumbnailScrubber *)self callout];
    [(BKThumbnailScrubber *)self cellAspectRatio];
    [v4 thumbnailSizeForAspectRatio:-[BKThumbnailScrubber showSpreads](self showSpreads:{"showSpreads"), v5}];
    v7 = v6;
    v9 = v8;

    v10 = v7;
    v11 = v9;
  }

  else
  {
    if ([(BKThumbnailScrubber *)self im_isCompactWidth])
    {
      v12 = 75.0;
    }

    else
    {
      v12 = 184.0;
    }

    [(BKThumbnailScrubber *)self cellAspectRatio];
    v14 = v12 / v13;
    v10 = ceil(v12);
    v11 = ceil(v14);
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (int64_t)leftCalloutPageNumber
{
  v3 = [(BKThumbnailScrubber *)self pageNumber];
  if ([(BKThumbnailScrubber *)self layoutDirection])
  {
    v4 = v3 | 1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
  }

  v5 = [(BKThumbnailScrubber *)self pageCount];
  if (v4 < 1 || v4 > v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v4;
  }
}

- (int64_t)rightCalloutPageNumber
{
  v3 = [(BKThumbnailScrubber *)self pageNumber];
  if ([(BKThumbnailScrubber *)self layoutDirection])
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v4 = v3 | 1;
  }

  v5 = [(BKThumbnailScrubber *)self pageCount];
  if (v4 < 1 || v4 > v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v4;
  }
}

- (void)_updateCalloutPageView
{
  v100 = [(BKThumbnailScrubber *)self callout];
  v3 = [v100 pageView];
  v4 = [(BKThumbnailScrubber *)self showSpreads];
  [(BKThumbnailScrubber *)self calloutImageSize];
  v6 = v5;
  v8 = v7;
  if (!v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v3;
      [(BKPageThumbnailView *)v9 setFrame:0.0, 0.0, v6, v8];
    }

    else
    {
      v9 = [[BKPageThumbnailView alloc] initWithFrame:0.0, 0.0, v6, v8];
      [v100 setPageView:v9];
    }

    v47 = [(BKThumbnailScrubber *)self delegate];
    [v47 thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:v9];

    v48 = [(BKThumbnailScrubber *)self delegate];
    v33 = [v48 thumbnailScrubber:self pageTitleForPageNumber:{-[BKThumbnailScrubber pageNumber](self, "pageNumber")}];

    [(BKPageThumbnailView *)v9 setPageNumber:[(BKThumbnailScrubber *)self pageNumber]];
    [(BKPageThumbnailView *)v9 setPageTitle:v33];
    v49 = [(BKThumbnailScrubber *)self delegate];
    v50 = [v49 thumbnailScrubber:self thumbnailForPage:-[BKThumbnailScrubber pageNumber](self size:"pageNumber") context:{v9, v6, v8}];
    [(BKPageThumbnailView *)v9 setImage:v50];

    if (v33)
    {
      if ([v33 length])
      {
        v51 = [NSString alloc];
        v52 = AEBundle();
        v53 = [v52 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
        v54 = [v51 initWithFormat:v53, v33];

        v19 = v54;
        v42 = [[NSString alloc] initWithFormat:@"%@", v33];
      }

      else
      {
        v19 = &stru_1E7188;
        v42 = &stru_1E7188;
      }
    }

    else if ([(BKThumbnailScrubber *)self pageNumber]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
      v42 = 0;
    }

    else
    {
      v80 = [NSString alloc];
      v81 = AEBundle();
      v82 = [v81 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
      v83 = [NSNumberFormatter imaxLocalizedUnsignedInteger:[(BKThumbnailScrubber *)self pageNumber] usesGroupingSeparator:0];
      v84 = [v80 initWithFormat:v82, v83];

      v19 = v84;
      v85 = [NSString alloc];
      v86 = [NSNumberFormatter imaxLocalizedUnsignedInteger:[(BKThumbnailScrubber *)self pageNumber] usesGroupingSeparator:0];
      v42 = [v85 initWithFormat:@"%@", v86];
    }

    [v100 setLeftPageText:v19 shortenString:v42];
    [(BKPageThumbnailView *)v9 setNeedsLayout];
    goto LABEL_38;
  }

  objc_opt_class();
  v99 = v3;
  if (objc_opt_isKindOfClass())
  {
    v9 = v3;
    [(BKPageThumbnailView *)v9 setFrame:0.0, 0.0, v6 + v6, v8];
  }

  else
  {
    v9 = [[BKSpreadThumbnailView alloc] initWithFrame:0.0, 0.0, v6 + v6, v8];
    [v100 setPageView:v9];
  }

  [(BKPageThumbnailView *)v9 setPageSize:v6, v8];
  v10 = [(BKThumbnailScrubber *)self delegate];
  v11 = [(BKPageThumbnailView *)v9 leftPageView];
  [v10 thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:v11];

  v12 = [(BKThumbnailScrubber *)self delegate];
  v13 = [(BKPageThumbnailView *)v9 rightPageView];
  [v12 thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:v13];

  v14 = [(BKThumbnailScrubber *)self leftCalloutPageNumber];
  v15 = [(BKThumbnailScrubber *)self rightCalloutPageNumber];
  v16 = [(BKThumbnailScrubber *)self delegate];
  v17 = [v16 thumbnailScrubber:self pageTitleForPageNumber:v14];

  v18 = [(BKThumbnailScrubber *)self delegate];
  v19 = [v18 thumbnailScrubber:self pageTitleForPageNumber:v15];

  v20 = [(BKPageThumbnailView *)v9 leftPageView];
  [v20 setPageNumber:v14];

  v21 = [(BKPageThumbnailView *)v9 leftPageView];
  [v21 setPageTitle:v17];

  v22 = [(BKThumbnailScrubber *)self delegate];
  v23 = [(BKPageThumbnailView *)v9 leftPageView];
  v24 = [v22 thumbnailScrubber:self thumbnailForPage:v14 size:v23 context:{v6, v8}];
  v25 = [(BKPageThumbnailView *)v9 leftPageView];
  [v25 setImage:v24];

  v26 = [(BKPageThumbnailView *)v9 leftPageView];
  [v26 setShowsPageNumber:0];

  v27 = [(BKPageThumbnailView *)v9 rightPageView];
  [v27 setPageNumber:v15];

  v28 = [(BKPageThumbnailView *)v9 rightPageView];
  [v28 setPageTitle:v19];

  v29 = [(BKThumbnailScrubber *)self delegate];
  v30 = [(BKPageThumbnailView *)v9 rightPageView];
  v31 = [v29 thumbnailScrubber:self thumbnailForPage:v15 size:v30 context:{v6, v8}];
  v32 = [(BKPageThumbnailView *)v9 rightPageView];
  [v32 setImage:v31];

  v33 = v17;
  v34 = [(BKPageThumbnailView *)v9 rightPageView];
  [v34 setShowsPageNumber:0];

  if (v17 | v19)
  {
    if ([v17 length] && objc_msgSend(v19, "length"))
    {
      if (v14 <= v15)
      {
        v35 = v19;
      }

      else
      {
        v17 = v19;
        v35 = v33;
      }

      v36 = v35;
      v37 = v17;
      v38 = [NSString alloc];
      v39 = AEBundle();
      [v39 localizedStringForKey:@"Pages %@-%@" value:&stru_1E7188 table:0];
      v40 = v97 = v33;
      v41 = v36;
      v42 = [v38 initWithFormat:v40, v37, v36];

      v43 = [NSString alloc];
      v44 = AEBundle();
      v45 = [v44 localizedStringForKey:@"%@-%@" value:&stru_1E7188 table:0];
      v46 = [v43 initWithFormat:v45, v37, v41];

      v33 = v97;
    }

    else
    {
      if ([v17 length])
      {
        v69 = [NSString alloc];
        v70 = AEBundle();
        v71 = [v70 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
        v42 = [v69 initWithFormat:v71, v17];

        v72 = [[NSString alloc] initWithFormat:@"%@", v17];
      }

      else
      {
        if (![v19 length])
        {
          v68 = 0;
          v65 = 0;
          v46 = &stru_1E7188;
          v42 = &stru_1E7188;
          goto LABEL_37;
        }

        v93 = [NSString alloc];
        v94 = AEBundle();
        v95 = [v94 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
        v42 = [v93 initWithFormat:v95, v19];

        v72 = [[NSString alloc] initWithFormat:@"%@", v19];
      }

      v46 = v72;
    }

LABEL_36:
    v68 = 0;
    v65 = 0;
    goto LABEL_37;
  }

  if (v14 == 0x7FFFFFFFFFFFFFFFLL || v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v68 = 0;
        v46 = 0;
        v65 = 0;
        v42 = 0;
        goto LABEL_37;
      }

      v87 = [NSString alloc];
      v88 = AEBundle();
      [v88 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
      v90 = v89 = v19;
      v91 = [NSNumberFormatter imaxLocalizedUnsignedInteger:v15 usesGroupingSeparator:0];
      v42 = [v87 initWithFormat:v90, v91];

      v19 = v89;
      v78 = [NSString alloc];
      v79 = v15;
    }

    else
    {
      v73 = [NSString alloc];
      v74 = AEBundle();
      [v74 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
      v76 = v75 = v19;
      v77 = [NSNumberFormatter imaxLocalizedUnsignedInteger:v14 usesGroupingSeparator:0];
      v42 = [v73 initWithFormat:v76, v77];

      v19 = v75;
      v78 = [NSString alloc];
      v79 = v14;
    }

    v92 = [NSNumberFormatter imaxLocalizedUnsignedInteger:v79 usesGroupingSeparator:0];
    v46 = [v78 initWithFormat:@"%@", v92];

    goto LABEL_36;
  }

  v55 = [NSString alloc];
  AEBundle();
  v56 = v98 = v17;
  v57 = [v56 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
  [NSNumberFormatter imaxLocalizedUnsignedInteger:v14 usesGroupingSeparator:0];
  v58 = v96 = v19;
  v42 = [v55 initWithFormat:v57, v58];

  v59 = [NSString alloc];
  v60 = [NSNumberFormatter imaxLocalizedUnsignedInteger:v14 usesGroupingSeparator:0];
  v46 = [v59 initWithFormat:@"%@", v60];

  v61 = [NSString alloc];
  v62 = AEBundle();
  v63 = [v62 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
  v64 = [NSNumberFormatter imaxLocalizedUnsignedInteger:v15 usesGroupingSeparator:0];
  v65 = [v61 initWithFormat:v63, v64];

  v33 = v98;
  v19 = v96;
  v66 = [NSString alloc];
  v67 = [NSNumberFormatter imaxLocalizedUnsignedInteger:v15 usesGroupingSeparator:0];
  v68 = [v66 initWithFormat:@"%@", v67];

LABEL_37:
  [v100 setLeftPageText:v42 shortenString:v46];
  [v100 setRightPageText:v65 shortenString:v68];
  [(BKPageThumbnailView *)v9 setHidesSpine:[(BKThumbnailScrubber *)self hidesSpine]];
  [(BKPageThumbnailView *)v9 setNeedsLayout];

  v3 = v99;
LABEL_38:
}

- (double)valueForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(BKThumbnailScrubber *)self track];
  if ([(BKThumbnailScrubber *)self orientation])
  {
    if ([(BKThumbnailScrubber *)self orientation]== 1)
    {
      [v6 frame];
      v7 = y / CGRectGetHeight(v13);
    }

    else
    {
      v7 = NAN;
    }
  }

  else
  {
    [v6 frame];
    v8 = x / CGRectGetWidth(v14);
    if (v8 > 1.0)
    {
      v8 = 1.0;
    }

    v9 = fmax(v8, 0.0);
    v10 = [(BKThumbnailScrubber *)self layoutDirection];
    v7 = 1.0 - v9;
    if (v10 != &dword_0 + 1)
    {
      v7 = v9;
    }
  }

  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  v11 = fmax(v7, 0.0);

  return v11;
}

- (CGPoint)pointForValue:(double)a3
{
  v4 = [(BKThumbnailScrubber *)self track];
  [v4 frame];
  v5 = CGRectGetWidth(v10) * a3;
  [v4 frame];
  v6 = CGRectGetHeight(v11) * a3;

  v7 = v5;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (int64_t)pageNumberForValue:(double)a3
{
  v5 = [(BKThumbnailScrubber *)self pageCount];
  v6 = a3 * [(BKThumbnailScrubber *)self pageCount]+ 1.0;
  if (v6 > v5)
  {
    v6 = v5;
  }

  return fmax(v6, 1.0);
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(BKThumbnailScrubber *)self track];
  v4 = [v3 cellAtIndex:{-[BKThumbnailScrubber pageNumber](self, "pageNumber") - 1}];
  v5 = [v4 superview];
  [v4 center];
  [v5 convertPoint:0 toView:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_bkAccessibilityAnnounceValue
{
  argument = [(BKThumbnailScrubber *)self accessibilityValue];
  v3 = [(BKThumbnailScrubber *)self bkAccessibilityAnnouncementString];
  v4 = [argument isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    [(BKThumbnailScrubber *)self setBkAccessibilityAnnouncementString:argument];
    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, argument);
  }
}

- (void)accessibilityIncrement
{
  if ([(BKThumbnailScrubber *)self layoutDirection]== &dword_0 + 1)
  {
    v7 = self;
    v3 = &selRef_accessibilityDecrement;
    v4 = &v7;
  }

  else
  {
    v6 = self;
    v3 = &selRef_accessibilityIncrement;
    v4 = &v6;
  }

  v4[1] = BKThumbnailScrubber;
  objc_msgSendSuper2(v4, *v3, v6);
  v5 = [(BKThumbnailScrubber *)self callout];
  [v5 setAlpha:0.0];
}

- (void)accessibilityDecrement
{
  if ([(BKThumbnailScrubber *)self layoutDirection]== &dword_0 + 1)
  {
    v7 = self;
    v3 = &selRef_accessibilityIncrement;
    v4 = &v7;
  }

  else
  {
    v6 = self;
    v3 = &selRef_accessibilityDecrement;
    v4 = &v6;
  }

  v4[1] = BKThumbnailScrubber;
  objc_msgSendSuper2(v4, *v3, v6);
  v5 = [(BKThumbnailScrubber *)self callout];
  [v5 setAlpha:0.0];
}

- (void)accessibilityElementDidLoseFocus
{
  v4.receiver = self;
  v4.super_class = BKThumbnailScrubber;
  [(BKThumbnailScrubber *)&v4 accessibilityElementDidLoseFocus];
  v3 = [(BKThumbnailScrubber *)self callout];
  [v3 setAlpha:0.0];
}

- (BKThumbnailScrubberDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)gravitationalPoint
{
  x = self->_gravitationalPoint.x;
  y = self->_gravitationalPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end