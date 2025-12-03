@interface BKThumbnailScrubber
- (BKThumbnailScrubberDelegate)delegate;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (CGPoint)accessibilityActivationPoint;
- (CGPoint)gravitationalPoint;
- (CGPoint)pointForValue:(double)value;
- (CGRect)hitRectForThumb;
- (CGRect)thumbRect;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (CGSize)_idealTrackSize;
- (CGSize)_segmentSizeForMaxScrubberSize:(CGSize)result orientation:(int)orientation cellAspectRatio:(double)ratio spread:(BOOL)spread;
- (CGSize)calloutImageSize;
- (CGSize)intrinsicContentSize;
- (CGSize)segmentSize;
- (_NSRange)_pageRangeAtIndex:(unint64_t)index segmentCount:(unint64_t)count pageCount:(unint64_t)pageCount orientation:(int)orientation layoutDirection:(int64_t)direction spread:(BOOL)spread;
- (_NSRange)_pageRangeForPageNumber:(int64_t)number pageCount:(unint64_t)count spread:(BOOL)spread;
- (_NSRange)pageRangeAtIndex:(unint64_t)index;
- (_NSRange)pageRangeForPageNumber:(int64_t)number;
- (double)value;
- (double)valueForPoint:(CGPoint)point;
- (id)thumb;
- (id)track;
- (int64_t)leftCalloutPageNumber;
- (int64_t)pageNumber;
- (int64_t)pageNumberForValue:(double)value;
- (int64_t)rightCalloutPageNumber;
- (unint64_t)_computeSegmentCountForRect:(CGSize)rect segmentSize:(CGSize)size idealCount:(unint64_t)count orientation:(int)orientation;
- (unint64_t)idealCellCount;
- (unint64_t)segmentIndexForPage:(int64_t)page;
- (void)_bkAccessibilityAnnounceValue;
- (void)_updateCalloutPageView;
- (void)_updateThumb;
- (void)_updateThumbnails;
- (void)accessibilityDecrement;
- (void)accessibilityElementDidLoseFocus;
- (void)accessibilityIncrement;
- (void)cancelPendingRenderRequests;
- (void)configureCell:(id)cell pageRange:(_NSRange)range context:(id)context;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)prewarmThumbnailsForScrubberSize:(CGSize)size;
- (void)setCallout:(id)callout;
- (void)setCellAspectRatio:(double)ratio;
- (void)setFrame:(CGRect)frame;
- (void)setHideThumbView:(BOOL)view;
- (void)setIsWithinGravitationalPointReach:(BOOL)reach;
- (void)setPageCount:(unint64_t)count;
- (void)setPageNumber:(int64_t)number;
- (void)setShowSpreads:(BOOL)spreads;
- (void)setStrokeColor:(id)color;
- (void)setThumbnail:(id)thumbnail forPage:(int64_t)page context:(id)context;
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
    track = [(BKThumbnailScrubber *)self track];
    [track bounds];
    MaxY = CGRectGetMaxY(v13);
    [(BKThumbnailScrubber *)self bounds];
    v5 = CGRectGetMaxY(v14);

    if (MaxY != v5)
    {
      [(BKThumbnailScrubber *)self center];
      v7 = v6;
      track2 = [(BKThumbnailScrubber *)self track];
      [track2 frame];
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

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  v11.receiver = self;
  v11.super_class = BKThumbnailScrubber;
  [(BKThumbnailScrubber *)&v11 beginTrackingWithTouch:touchCopy withEvent:event];
  track = [(BKThumbnailScrubber *)self track];
  if (track)
  {
    [touchCopy locationInView:track];
    [(BKThumbnailScrubber *)self valueForPoint:?];
    *&v8 = v8;
    v9 = *&v8;
    [(BKThumbnailScrubber *)self setValue:*&v8];
    [(BKThumbnailScrubber *)self setPageNumber:[(BKThumbnailScrubber *)self pageNumberForValue:v9]];
  }

  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  pageNumber = [(BKThumbnailScrubber *)self pageNumber];
  v18.receiver = self;
  v18.super_class = BKThumbnailScrubber;
  v9 = [(BKThumbnailScrubber *)&v18 continueTrackingWithTouch:touchCopy withEvent:eventCopy];

  y = CGPointZero.y;
  v11 = CGPointZero.x == self->_gravitationalPoint.x && y == self->_gravitationalPoint.y;
  if (!v11 && pageNumber != [(BKThumbnailScrubber *)self pageNumber:CGPointZero.x])
  {
    [touchCopy locationInView:self];
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

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = BKThumbnailScrubber;
  [(BKThumbnailScrubber *)&v5 endTrackingWithTouch:touch withEvent:event];
  [(BKThumbnailScrubber *)self setBkAccessibilityAnnouncementString:0];
}

- (double)value
{
  pageCount = [(BKThumbnailScrubber *)self pageCount];
  result = 0.0;
  if (pageCount >= 2)
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

- (void)setPageNumber:(int64_t)number
{
  if (*&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__pageNumber] != number)
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

- (void)setPageCount:(unint64_t)count
{
  if ([(BKThumbnailScrubber *)self pageCount]!= count)
  {
    v5.receiver = self;
    v5.super_class = BKThumbnailScrubber;
    [(BKThumbnailScrubber *)&v5 setPageCount:count];
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
    strokeColor = [(BKThumbnailScrubber *)self strokeColor];
    [(BKThumbnailScrubberTrack *)v6 setSegmentStrokeColor:strokeColor];

    [(BKThumbnailScrubber *)self showSpreads];
    [(BKThumbnailScrubberTrack *)v6 setCellClass:objc_opt_class()];
    v8 = *&self->BKScrubberControl_opaque[v3];
    *&self->BKScrubberControl_opaque[v3] = v6;

    v4 = *&self->BKScrubberControl_opaque[v3];
  }

  return v4;
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  track = [(BKThumbnailScrubber *)self track];
  [track sizeThatFits:{width, height}];
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

    strokeColor = [(BKThumbnailScrubber *)self strokeColor];
    [(BKThumbnailScrubberCell *)self->_imageThumb setStrokeColor:strokeColor];

    [(BKThumbnailScrubberCell *)self->_imageThumb setAlpha:([(BKThumbnailScrubber *)self hideThumbView]^ 1)];
    [(BKThumbnailScrubber *)self _updateThumb];
  }

  v6 = self->_imageThumb;

  return v6;
}

- (CGRect)hitRectForThumb
{
  track = [(BKThumbnailScrubber *)self track];
  [track frame];
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
  track = [(BKThumbnailScrubber *)self track];
  [track frame];
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

  track2 = [(BKThumbnailScrubber *)self track];
  [track2 segmentSize];
  v18 = v17 * 0.5;
  [track2 segmentSize];
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
      [track2 segmentSize];
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

  orientation = [(BKThumbnailScrubber *)self orientation];
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
  if (orientation == 1)
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

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  if (self->_strokeColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_strokeColor, color);
    [*&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track] setSegmentStrokeColor:v6];
    colorCopy = [(BKThumbnailScrubberCell *)self->_imageThumb setStrokeColor:v6];
  }

  _objc_release_x2(colorCopy);
}

- (void)setShowSpreads:(BOOL)spreads
{
  if (self->_showSpreads != spreads)
  {
    self->_showSpreads = spreads;
    v5 = *&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track];
    [(BKThumbnailScrubber *)self showSpreads];
    [v5 setCellClass:objc_opt_class()];
    delegate = [(BKThumbnailScrubber *)self delegate];
    [delegate thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:self->_imageThumb];

    [(BKThumbnailScrubberCell *)self->_imageThumb removeFromSuperview];
    imageThumb = self->_imageThumb;
    self->_imageThumb = 0;

    thumb = [(BKThumbnailScrubber *)self thumb];
    [(BKThumbnailScrubber *)self addSubview:thumb];
  }
}

- (void)setCellAspectRatio:(double)ratio
{
  if (self->_cellAspectRatio != ratio)
  {
    self->_cellAspectRatio = ratio;
    v5 = *&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track];
    [(BKThumbnailScrubber *)self segmentSize];
    [v5 setSegmentSize:?];
  }
}

- (void)setHideThumbView:(BOOL)view
{
  if (self->_hideThumbView != view)
  {
    self->_hideThumbView = view;
    if (view)
    {
      [(BKThumbnailScrubberCell *)self->_imageThumb removeFromSuperview];
      imageThumb = self->_imageThumb;
      self->_imageThumb = 0;
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    orientation = [(BKThumbnailScrubber *)self orientation];
  }

  else
  {
    orientation = 0;
  }

  [(BKThumbnailScrubber *)self bounds];
  v5 = v4;
  v7 = v6;
  [(BKThumbnailScrubber *)self cellAspectRatio];
  v9 = v8;
  showSpreads = [(BKThumbnailScrubber *)self showSpreads];

  [(BKThumbnailScrubber *)self _segmentSizeForMaxScrubberSize:orientation orientation:showSpreads cellAspectRatio:v5 spread:v7, v9];
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)_segmentSizeForMaxScrubberSize:(CGSize)result orientation:(int)orientation cellAspectRatio:(double)ratio spread:(BOOL)spread
{
  if (orientation == 1)
  {
    width = result.width * 0.5;
    if (!spread)
    {
      width = result.width;
    }

    v7 = floor(width / ratio);
    if (ratio > 0.0)
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

    v8 = floor(result.height * ratio);
    if (ratio > 0.0)
    {
      result.width = v8;
    }

    if (spread)
    {
      result.width = result.width + result.width;
    }
  }

  return result;
}

- (unint64_t)idealCellCount
{
  showSpreads = [(BKThumbnailScrubber *)self showSpreads];
  pageCount = [(BKThumbnailScrubber *)self pageCount];
  v5 = ceilf((pageCount + 1.0) * 0.5);
  if (showSpreads)
  {
    return v5;
  }

  return pageCount;
}

- (_NSRange)_pageRangeForPageNumber:(int64_t)number pageCount:(unint64_t)count spread:(BOOL)spread
{
  numberCopy = number;
  if (spread)
  {
    if (number >= 2 && number < count)
    {
      v6 = -(number & 1);
LABEL_9:
      numberCopy = v6 + number;
      v7 = 2;
      goto LABEL_10;
    }

    v7 = 1;
    if (number == count && (number & 0x8000000000000001) == 1)
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
  result.location = numberCopy;
  return result;
}

- (_NSRange)pageRangeForPageNumber:(int64_t)number
{
  pageCount = [(BKThumbnailScrubber *)self pageCount];
  showSpreads = [(BKThumbnailScrubber *)self showSpreads];

  v7 = [(BKThumbnailScrubber *)self _pageRangeForPageNumber:number pageCount:pageCount spread:showSpreads];
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)_pageRangeAtIndex:(unint64_t)index segmentCount:(unint64_t)count pageCount:(unint64_t)pageCount orientation:(int)orientation layoutDirection:(int64_t)direction spread:(BOOL)spread
{
  if (count < 2)
  {
    v11 = &dword_0 + 1;
    v12 = 1;
  }

  else
  {
    v8 = roundf(((pageCount + -1.0) / (count - 1)) * index) + 1.0;
    if (direction == 1 && orientation == 0)
    {
      v10 = pageCount - v8 + 1;
    }

    else
    {
      v10 = v8;
    }

    v11 = [(BKThumbnailScrubber *)self _pageRangeForPageNumber:v10 pageCount:pageCount spread:spread, *&orientation];
  }

  result.length = v12;
  result.location = v11;
  return result;
}

- (_NSRange)pageRangeAtIndex:(unint64_t)index
{
  track = [(BKThumbnailScrubber *)self track];
  v6 = -[BKThumbnailScrubber _pageRangeAtIndex:segmentCount:pageCount:orientation:layoutDirection:spread:](self, "_pageRangeAtIndex:segmentCount:pageCount:orientation:layoutDirection:spread:", index, [track segmentCount], -[BKThumbnailScrubber pageCount](self, "pageCount"), -[BKThumbnailScrubber orientation](self, "orientation"), -[BKThumbnailScrubber layoutDirection](self, "layoutDirection"), -[BKThumbnailScrubber showSpreads](self, "showSpreads"));
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (unint64_t)segmentIndexForPage:(int64_t)page
{
  track = [(BKThumbnailScrubber *)self track];
  segmentCount = [track segmentCount];
  pageCount = [(BKThumbnailScrubber *)self pageCount];
  layoutDirection = [(BKThumbnailScrubber *)self layoutDirection];
  v9 = page - 1;
  if (page == 1 || !pageCount)
  {
    if (layoutDirection == &dword_0 + 1)
    {
      if ([(BKThumbnailScrubber *)self orientation])
      {
        v10 = 0;
      }

      else
      {
        v10 = segmentCount - 1;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if (layoutDirection == &dword_0 + 1 && ![(BKThumbnailScrubber *)self orientation])
    {
      v9 = pageCount - page;
    }

    v10 = llround(v9 / (pageCount - 1) * (segmentCount - 1));
  }

  return v10;
}

- (void)configureCell:(id)cell pageRange:(_NSRange)range context:(id)context
{
  length = range.length;
  location = range.location;
  cellCopy = cell;
  contextCopy = context;
  track = [(BKThumbnailScrubber *)self track];
  imageThumb = self->_imageThumb;
  if (imageThumb == contextCopy)
  {
    [(BKThumbnailScrubberCell *)imageThumb bounds];
    v13 = v16;
    v15 = v17;
  }

  else
  {
    [track segmentSize];
    v13 = v12;
    v15 = v14;
  }

  delegate = [(BKThumbnailScrubber *)self delegate];
  if ([(BKThumbnailScrubber *)self showSpreads])
  {
    v19 = v13 * 0.5;
    v20 = cellCopy;
    if (length == 2)
    {
      v21 = [delegate pageNumberFromRange:{location, 2}];
      v22 = [delegate thumbnailScrubber:self thumbnailForPage:v21 size:contextCopy context:{v19, v15}];
      v23 = [delegate thumbnailScrubber:self thumbnailForPage:v21 + 1 size:contextCopy context:{v19, v15}];
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
      v22 = [delegate thumbnailScrubber:self thumbnailForPage:location size:contextCopy context:{v19, v15}];
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
    v20 = [delegate thumbnailScrubber:self thumbnailForPage:location size:contextCopy context:{v13, v15}];
    [cellCopy setImage:v20];
  }
}

- (void)prewarmThumbnailsForScrubberSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  orientation = [(BKThumbnailScrubber *)self orientation];
  [(BKThumbnailScrubber *)self cellAspectRatio];
  [(BKThumbnailScrubber *)self _segmentSizeForMaxScrubberSize:orientation orientation:[(BKThumbnailScrubber *)self showSpreads] cellAspectRatio:width spread:height, v7];
  v9 = v8;
  v11 = v10;
  v12 = [(BKThumbnailScrubber *)self _computeSegmentCountForRect:[(BKThumbnailScrubber *)self idealCellCount] segmentSize:[(BKThumbnailScrubber *)self orientation] idealCount:width orientation:height, v8, v10];
  pageCount = [(BKThumbnailScrubber *)self pageCount];
  orientation2 = [(BKThumbnailScrubber *)self orientation];
  layoutDirection = [(BKThumbnailScrubber *)self layoutDirection];
  showSpreads = [(BKThumbnailScrubber *)self showSpreads];
  if (v12)
  {
    v16 = showSpreads;
    for (i = 0; i != v12; ++i)
    {
      v18 = [(BKThumbnailScrubber *)self _pageRangeAtIndex:i segmentCount:v12 pageCount:pageCount orientation:orientation2 layoutDirection:layoutDirection spread:v16];
      v20 = v19;
      delegate = [(BKThumbnailScrubber *)self delegate];
      v22 = OBJC_IVAR___BKScrubberControl__track;
      v23 = [delegate thumbnailScrubber:self thumbnailForPage:v18 size:*&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track] context:{v9, v11}];

      if (v20 >= 2)
      {
        delegate2 = [(BKThumbnailScrubber *)self delegate];
        v25 = [delegate2 thumbnailScrubber:self thumbnailForPage:v18 + 1 size:*&self->BKScrubberControl_opaque[v22] context:{v9, v11}];
      }
    }
  }
}

- (void)cancelPendingRenderRequests
{
  delegate = [(BKThumbnailScrubber *)self delegate];
  [delegate thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:self->_imageThumb];

  delegate2 = [(BKThumbnailScrubber *)self delegate];
  [delegate2 thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:*&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track]];
}

- (void)setThumbnail:(id)thumbnail forPage:(int64_t)page context:(id)context
{
  thumbnailCopy = thumbnail;
  contextCopy = context;
  if (thumbnailCopy && page && page != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_imageThumb == contextCopy)
    {
      v17 = [(BKThumbnailScrubber *)self pageRangeForPageNumber:[(BKThumbnailScrubber *)self pageNumber]];
      if (page >= v17 && page - v17 < v18)
      {
        [(BKThumbnailScrubber *)self configureCell:self->_imageThumb pageRange:v17 context:v18, self->_imageThumb];
      }
    }

    else
    {
      v9 = OBJC_IVAR___BKScrubberControl__track;
      if (*&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track] == contextCopy)
      {
        track = [(BKThumbnailScrubber *)self track];
        v19 = [(BKThumbnailScrubber *)self segmentIndexForPage:page];
        v20 = [track cellAtIndex:v19];
        v21 = [(BKThumbnailScrubber *)self pageRangeAtIndex:v19];
        [(BKThumbnailScrubber *)self configureCell:v20 pageRange:v21 context:v22, *&self->BKScrubberControl_opaque[v9]];

        goto LABEL_25;
      }

      callout = [(BKThumbnailScrubber *)self callout];
      pageView = [callout pageView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      callout2 = [(BKThumbnailScrubber *)self callout];
      track = [callout2 pageView];
      if (isKindOfClass)
      {

        leftPageView = [track leftPageView];
        v16 = leftPageView;
        if (leftPageView == contextCopy)
        {
          leftPageView2 = [track leftPageView];
          pageNumber = [leftPageView2 pageNumber];

          if (pageNumber == page)
          {
            leftPageView3 = [track leftPageView];
LABEL_23:
            rightPageView = leftPageView3;
            [(BKThumbnailScrubberCell *)leftPageView3 setImage:thumbnailCopy];
            goto LABEL_24;
          }
        }

        else
        {
        }

        rightPageView = [track rightPageView];
        if (rightPageView != contextCopy)
        {
LABEL_24:

          goto LABEL_25;
        }

        rightPageView2 = [track rightPageView];
        pageNumber2 = [rightPageView2 pageNumber];

        if (pageNumber2 == page)
        {
          leftPageView3 = [track rightPageView];
          goto LABEL_23;
        }

LABEL_25:

        goto LABEL_26;
      }

      objc_opt_class();
      v23 = objc_opt_isKindOfClass();

      if (v23)
      {
        callout3 = [(BKThumbnailScrubber *)self callout];
        pageView2 = [callout3 pageView];

        if (pageView2 == contextCopy && [(BKThumbnailScrubberCell *)pageView2 pageNumber]== page)
        {
          [(BKThumbnailScrubberCell *)pageView2 setImage:thumbnailCopy];
        }
      }
    }
  }

LABEL_26:
}

- (unint64_t)_computeSegmentCountForRect:(CGSize)rect segmentSize:(CGSize)size idealCount:(unint64_t)count orientation:(int)orientation
{
  if (!orientation)
  {
    v6 = rect.width / (size.width + 2.0);
    goto LABEL_5;
  }

  if (size.height > 0.0)
  {
    v6 = rect.height / size.height;
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  if (v7 >= count)
  {
    return count;
  }

  else
  {
    return v7;
  }
}

- (CGSize)_idealTrackSize
{
  track = [(BKThumbnailScrubber *)self track];
  [track segmentSize];
  v5 = v4;
  v7 = v6;
  CGRectMakeWithSize();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  orientation = [(BKThumbnailScrubber *)self orientation];
  v17 = v9;
  v18 = v11;
  v19 = v13;
  v20 = v15;
  if (orientation)
  {
    v21 = CGRectGetHeight(*&v17) / v7;
  }

  else
  {
    v21 = CGRectGetWidth(*&v17) / (v5 + 2.0);
  }

  v22 = v21;
  idealCellCount = [(BKThumbnailScrubber *)self idealCellCount];
  if (idealCellCount >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = idealCellCount;
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
    track = [(BKThumbnailScrubber *)self track];
    delegate = [(BKThumbnailScrubber *)self delegate];
    [delegate thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:track];

    [track segmentSize];
    v5 = v4;
    v7 = v6;
    [(BKThumbnailScrubber *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    orientation = [(BKThumbnailScrubber *)self orientation];
    v17 = v9;
    v18 = v11;
    v19 = v13;
    v20 = v15;
    if (orientation)
    {
      v21 = CGRectGetHeight(*&v17) / v7;
    }

    else
    {
      v21 = CGRectGetWidth(*&v17) / (v5 + 2.0);
    }

    v22 = v21;
    idealCellCount = [(BKThumbnailScrubber *)self idealCellCount];
    if (idealCellCount < v22)
    {
      v22 = idealCellCount;
    }

    [track setSegmentCount:v22];
    [track sizeToFit];
    [track layoutIfNeeded];
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

        v26 = [track cellAtIndex:v25];
        v27 = [(BKThumbnailScrubber *)self pageRangeAtIndex:v25];
        [(BKThumbnailScrubber *)self configureCell:v26 pageRange:v27 context:v28, *&self->BKScrubberControl_opaque[OBJC_IVAR___BKScrubberControl__track]];
      }
    }
  }
}

- (void)_updateThumb
{
  delegate = [(BKThumbnailScrubber *)self delegate];
  [delegate thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:self->_imageThumb];

  if (![(BKThumbnailScrubber *)self hideThumbView])
  {
    v5 = [(BKThumbnailScrubber *)self pageRangeForPageNumber:[(BKThumbnailScrubber *)self pageNumber]];
    imageThumb = self->_imageThumb;

    [(BKThumbnailScrubber *)self configureCell:imageThumb pageRange:v5 context:v4, imageThumb];
  }
}

- (void)setIsWithinGravitationalPointReach:(BOOL)reach
{
  if (self->_isWithinGravitationalPointReach != reach)
  {
    self->_isWithinGravitationalPointReach = reach;
    if (reach)
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

- (void)setCallout:(id)callout
{
  calloutCopy = callout;
  if (self->_callout != calloutCopy)
  {
    v6 = calloutCopy;
    objc_storeStrong(&self->_callout, callout);
    [(BKScrubberCalloutView *)self->_callout setUsesMonospacedDigitFontForSubtitle:1];
    calloutCopy = v6;
  }
}

- (CGSize)calloutImageSize
{
  callout = [(BKThumbnailScrubber *)self callout];

  if (callout)
  {
    callout2 = [(BKThumbnailScrubber *)self callout];
    [(BKThumbnailScrubber *)self cellAspectRatio];
    [callout2 thumbnailSizeForAspectRatio:-[BKThumbnailScrubber showSpreads](self showSpreads:{"showSpreads"), v5}];
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
  pageNumber = [(BKThumbnailScrubber *)self pageNumber];
  if ([(BKThumbnailScrubber *)self layoutDirection])
  {
    v4 = pageNumber | 1;
  }

  else
  {
    v4 = pageNumber & 0xFFFFFFFFFFFFFFFELL;
  }

  pageCount = [(BKThumbnailScrubber *)self pageCount];
  if (v4 < 1 || v4 > pageCount)
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
  pageNumber = [(BKThumbnailScrubber *)self pageNumber];
  if ([(BKThumbnailScrubber *)self layoutDirection])
  {
    v4 = pageNumber & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v4 = pageNumber | 1;
  }

  pageCount = [(BKThumbnailScrubber *)self pageCount];
  if (v4 < 1 || v4 > pageCount)
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
  callout = [(BKThumbnailScrubber *)self callout];
  pageView = [callout pageView];
  showSpreads = [(BKThumbnailScrubber *)self showSpreads];
  [(BKThumbnailScrubber *)self calloutImageSize];
  v6 = v5;
  v8 = v7;
  if (!showSpreads)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = pageView;
      [(BKPageThumbnailView *)v9 setFrame:0.0, 0.0, v6, v8];
    }

    else
    {
      v9 = [[BKPageThumbnailView alloc] initWithFrame:0.0, 0.0, v6, v8];
      [callout setPageView:v9];
    }

    delegate = [(BKThumbnailScrubber *)self delegate];
    [delegate thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:v9];

    delegate2 = [(BKThumbnailScrubber *)self delegate];
    v33 = [delegate2 thumbnailScrubber:self pageTitleForPageNumber:{-[BKThumbnailScrubber pageNumber](self, "pageNumber")}];

    [(BKPageThumbnailView *)v9 setPageNumber:[(BKThumbnailScrubber *)self pageNumber]];
    [(BKPageThumbnailView *)v9 setPageTitle:v33];
    delegate3 = [(BKThumbnailScrubber *)self delegate];
    v50 = [delegate3 thumbnailScrubber:self thumbnailForPage:-[BKThumbnailScrubber pageNumber](self size:"pageNumber") context:{v9, v6, v8}];
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

    [callout setLeftPageText:v19 shortenString:v42];
    [(BKPageThumbnailView *)v9 setNeedsLayout];
    goto LABEL_38;
  }

  objc_opt_class();
  v99 = pageView;
  if (objc_opt_isKindOfClass())
  {
    v9 = pageView;
    [(BKPageThumbnailView *)v9 setFrame:0.0, 0.0, v6 + v6, v8];
  }

  else
  {
    v9 = [[BKSpreadThumbnailView alloc] initWithFrame:0.0, 0.0, v6 + v6, v8];
    [callout setPageView:v9];
  }

  [(BKPageThumbnailView *)v9 setPageSize:v6, v8];
  delegate4 = [(BKThumbnailScrubber *)self delegate];
  leftPageView = [(BKPageThumbnailView *)v9 leftPageView];
  [delegate4 thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:leftPageView];

  delegate5 = [(BKThumbnailScrubber *)self delegate];
  rightPageView = [(BKPageThumbnailView *)v9 rightPageView];
  [delegate5 thumbnailScrubber:self cancelPreviousRenderRequestsWithContext:rightPageView];

  leftCalloutPageNumber = [(BKThumbnailScrubber *)self leftCalloutPageNumber];
  rightCalloutPageNumber = [(BKThumbnailScrubber *)self rightCalloutPageNumber];
  delegate6 = [(BKThumbnailScrubber *)self delegate];
  v17 = [delegate6 thumbnailScrubber:self pageTitleForPageNumber:leftCalloutPageNumber];

  delegate7 = [(BKThumbnailScrubber *)self delegate];
  v19 = [delegate7 thumbnailScrubber:self pageTitleForPageNumber:rightCalloutPageNumber];

  leftPageView2 = [(BKPageThumbnailView *)v9 leftPageView];
  [leftPageView2 setPageNumber:leftCalloutPageNumber];

  leftPageView3 = [(BKPageThumbnailView *)v9 leftPageView];
  [leftPageView3 setPageTitle:v17];

  delegate8 = [(BKThumbnailScrubber *)self delegate];
  leftPageView4 = [(BKPageThumbnailView *)v9 leftPageView];
  v24 = [delegate8 thumbnailScrubber:self thumbnailForPage:leftCalloutPageNumber size:leftPageView4 context:{v6, v8}];
  leftPageView5 = [(BKPageThumbnailView *)v9 leftPageView];
  [leftPageView5 setImage:v24];

  leftPageView6 = [(BKPageThumbnailView *)v9 leftPageView];
  [leftPageView6 setShowsPageNumber:0];

  rightPageView2 = [(BKPageThumbnailView *)v9 rightPageView];
  [rightPageView2 setPageNumber:rightCalloutPageNumber];

  rightPageView3 = [(BKPageThumbnailView *)v9 rightPageView];
  [rightPageView3 setPageTitle:v19];

  delegate9 = [(BKThumbnailScrubber *)self delegate];
  rightPageView4 = [(BKPageThumbnailView *)v9 rightPageView];
  v31 = [delegate9 thumbnailScrubber:self thumbnailForPage:rightCalloutPageNumber size:rightPageView4 context:{v6, v8}];
  rightPageView5 = [(BKPageThumbnailView *)v9 rightPageView];
  [rightPageView5 setImage:v31];

  v33 = v17;
  rightPageView6 = [(BKPageThumbnailView *)v9 rightPageView];
  [rightPageView6 setShowsPageNumber:0];

  if (v17 | v19)
  {
    if ([v17 length] && objc_msgSend(v19, "length"))
    {
      if (leftCalloutPageNumber <= rightCalloutPageNumber)
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

  if (leftCalloutPageNumber == 0x7FFFFFFFFFFFFFFFLL || rightCalloutPageNumber == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (leftCalloutPageNumber == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (rightCalloutPageNumber == 0x7FFFFFFFFFFFFFFFLL)
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
      v91 = [NSNumberFormatter imaxLocalizedUnsignedInteger:rightCalloutPageNumber usesGroupingSeparator:0];
      v42 = [v87 initWithFormat:v90, v91];

      v19 = v89;
      v78 = [NSString alloc];
      v79 = rightCalloutPageNumber;
    }

    else
    {
      v73 = [NSString alloc];
      v74 = AEBundle();
      [v74 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
      v76 = v75 = v19;
      v77 = [NSNumberFormatter imaxLocalizedUnsignedInteger:leftCalloutPageNumber usesGroupingSeparator:0];
      v42 = [v73 initWithFormat:v76, v77];

      v19 = v75;
      v78 = [NSString alloc];
      v79 = leftCalloutPageNumber;
    }

    v92 = [NSNumberFormatter imaxLocalizedUnsignedInteger:v79 usesGroupingSeparator:0];
    v46 = [v78 initWithFormat:@"%@", v92];

    goto LABEL_36;
  }

  v55 = [NSString alloc];
  AEBundle();
  v56 = v98 = v17;
  v57 = [v56 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
  [NSNumberFormatter imaxLocalizedUnsignedInteger:leftCalloutPageNumber usesGroupingSeparator:0];
  v58 = v96 = v19;
  v42 = [v55 initWithFormat:v57, v58];

  v59 = [NSString alloc];
  v60 = [NSNumberFormatter imaxLocalizedUnsignedInteger:leftCalloutPageNumber usesGroupingSeparator:0];
  v46 = [v59 initWithFormat:@"%@", v60];

  v61 = [NSString alloc];
  v62 = AEBundle();
  v63 = [v62 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
  v64 = [NSNumberFormatter imaxLocalizedUnsignedInteger:rightCalloutPageNumber usesGroupingSeparator:0];
  v65 = [v61 initWithFormat:v63, v64];

  v33 = v98;
  v19 = v96;
  v66 = [NSString alloc];
  v67 = [NSNumberFormatter imaxLocalizedUnsignedInteger:rightCalloutPageNumber usesGroupingSeparator:0];
  v68 = [v66 initWithFormat:@"%@", v67];

LABEL_37:
  [callout setLeftPageText:v42 shortenString:v46];
  [callout setRightPageText:v65 shortenString:v68];
  [(BKPageThumbnailView *)v9 setHidesSpine:[(BKThumbnailScrubber *)self hidesSpine]];
  [(BKPageThumbnailView *)v9 setNeedsLayout];

  pageView = v99;
LABEL_38:
}

- (double)valueForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  track = [(BKThumbnailScrubber *)self track];
  if ([(BKThumbnailScrubber *)self orientation])
  {
    if ([(BKThumbnailScrubber *)self orientation]== 1)
    {
      [track frame];
      v7 = y / CGRectGetHeight(v13);
    }

    else
    {
      v7 = NAN;
    }
  }

  else
  {
    [track frame];
    v8 = x / CGRectGetWidth(v14);
    if (v8 > 1.0)
    {
      v8 = 1.0;
    }

    v9 = fmax(v8, 0.0);
    layoutDirection = [(BKThumbnailScrubber *)self layoutDirection];
    v7 = 1.0 - v9;
    if (layoutDirection != &dword_0 + 1)
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

- (CGPoint)pointForValue:(double)value
{
  track = [(BKThumbnailScrubber *)self track];
  [track frame];
  v5 = CGRectGetWidth(v10) * value;
  [track frame];
  v6 = CGRectGetHeight(v11) * value;

  v7 = v5;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (int64_t)pageNumberForValue:(double)value
{
  pageCount = [(BKThumbnailScrubber *)self pageCount];
  v6 = value * [(BKThumbnailScrubber *)self pageCount]+ 1.0;
  if (v6 > pageCount)
  {
    v6 = pageCount;
  }

  return fmax(v6, 1.0);
}

- (CGPoint)accessibilityActivationPoint
{
  track = [(BKThumbnailScrubber *)self track];
  v4 = [track cellAtIndex:{-[BKThumbnailScrubber pageNumber](self, "pageNumber") - 1}];
  superview = [v4 superview];
  [v4 center];
  [superview convertPoint:0 toView:?];
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
  bkAccessibilityAnnouncementString = [(BKThumbnailScrubber *)self bkAccessibilityAnnouncementString];
  v4 = [argument isEqualToString:bkAccessibilityAnnouncementString];

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
    selfCopy = self;
    v3 = &selRef_accessibilityDecrement;
    v4 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v3 = &selRef_accessibilityIncrement;
    v4 = &selfCopy2;
  }

  v4[1] = BKThumbnailScrubber;
  objc_msgSendSuper2(v4, *v3, selfCopy2);
  callout = [(BKThumbnailScrubber *)self callout];
  [callout setAlpha:0.0];
}

- (void)accessibilityDecrement
{
  if ([(BKThumbnailScrubber *)self layoutDirection]== &dword_0 + 1)
  {
    selfCopy = self;
    v3 = &selRef_accessibilityIncrement;
    v4 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v3 = &selRef_accessibilityDecrement;
    v4 = &selfCopy2;
  }

  v4[1] = BKThumbnailScrubber;
  objc_msgSendSuper2(v4, *v3, selfCopy2);
  callout = [(BKThumbnailScrubber *)self callout];
  [callout setAlpha:0.0];
}

- (void)accessibilityElementDidLoseFocus
{
  v4.receiver = self;
  v4.super_class = BKThumbnailScrubber;
  [(BKThumbnailScrubber *)&v4 accessibilityElementDidLoseFocus];
  callout = [(BKThumbnailScrubber *)self callout];
  [callout setAlpha:0.0];
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