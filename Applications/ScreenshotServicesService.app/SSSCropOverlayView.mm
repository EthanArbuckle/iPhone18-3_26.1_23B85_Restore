@interface SSSCropOverlayView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_frameForGrabberAtEdge:(unint64_t)edge inSize:(CGSize)size dimension:(double)dimension;
- (CGRect)_frameForLineAtEdge:(unint64_t)edge inSize:(CGSize)size dimension:(double)dimension;
- (CGRect)_frameForViewInCorner:(unint64_t)corner inSize:(CGSize)size cornerSize:(CGSize)cornerSize;
- (SSSCropOverlayGrabPosition)grabPositionForLocation:(CGPoint)location;
- (SSSCropOverlayView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateCropOverlayVisibility;
- (void)_updateUI;
- (void)layoutSubviews;
- (void)setCornerGrabberAlpha:(double)alpha;
- (void)setEditMode:(int64_t)mode;
- (void)setLineAlpha:(double)alpha;
- (void)setLineGrabberAlpha:(double)alpha;
- (void)setShowRoundedCorners:(BOOL)corners;
@end

@implementation SSSCropOverlayView

- (SSSCropOverlayView)initWithFrame:(CGRect)frame
{
  v55.receiver = self;
  v55.super_class = SSSCropOverlayView;
  v3 = [(SSSCropOverlayView *)&v55 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SSSCropOverlayView *)v3 setClipsToBounds:0];
  layer = [(SSSCropOverlayView *)v3 layer];
  [layer setAllowsGroupOpacity:0];

  v3->_cornerGrabberAlpha = 1.0;
  v3->_lineGrabberAlpha = 1.0;
  v3->_lineAlpha = 1.0;
  v3->_showRoundedCorners = 0;
  v5 = objc_alloc_init(UIView);
  containerView = v3->_containerView;
  v3->_containerView = v5;

  layer2 = [(UIView *)v3->_containerView layer];
  [layer2 setAllowsGroupOpacity:0];

  [(SSSCropOverlayView *)v3 addSubview:v3->_containerView];
  v46 = +[NSMutableArray array];
  v45 = +[NSMutableArray array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  _orderedRectEdges = [(SSSCropOverlayView *)v3 _orderedRectEdges];
  v9 = [_orderedRectEdges countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    do
    {
      v12 = 0;
      do
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(_orderedRectEdges);
        }

        integerValue = [*(*(&v51 + 1) + 8 * v12) integerValue];
        v14 = [[SSSCropOverlayLineView alloc] initWithEdge:integerValue];
        v15 = [[SSSCropOverlayGrabberView alloc] initWithEdge:integerValue];
        [v46 addObject:v14];
        [v45 addObject:v15];
        [(UIView *)v3->_containerView addSubview:v14];
        [(UIView *)v3->_containerView addSubview:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [_orderedRectEdges countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v10);
  }

  v16 = [v46 copy];
  lineViews = v3->_lineViews;
  v3->_lineViews = v16;

  v18 = [v45 copy];
  grabberViews = v3->_grabberViews;
  v3->_grabberViews = v18;

  v20 = +[NSMutableArray array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  _orderedRectCorners = [(SSSCropOverlayView *)v3 _orderedRectCorners];
  v22 = [_orderedRectCorners countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v48;
    do
    {
      v25 = 0;
      do
      {
        if (*v48 != v24)
        {
          objc_enumerationMutation(_orderedRectCorners);
        }

        v26 = -[SSSCropOverlayCornerView initForCorner:]([SSSCropOverlayCornerView alloc], "initForCorner:", [*(*(&v47 + 1) + 8 * v25) integerValue]);
        [v20 addObject:v26];
        [(UIView *)v3->_containerView addSubview:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [_orderedRectCorners countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v23);
  }

  v27 = [v20 copy];
  cornerViews = v3->_cornerViews;
  v3->_cornerViews = v27;

  layer3 = [(UIView *)v3->_containerView layer];
  v30 = +[SSMaterial cropHandle];
  filter = [v30 filter];
  v56 = filter;
  v32 = [NSArray arrayWithObjects:&v56 count:1];
  [layer3 setFilters:v32];

  v33 = v3->_containerView;
  v34 = +[SSMaterial cropHandle];
  [v34 colorAlpha];
  [(UIView *)v33 setAlpha:?];

  v35 = +[SSMaterial cropHandle];
  color = [v35 color];
  v37 = [color colorWithAlphaComponent:1.0];
  [(SSSCropOverlayView *)v3 setTintColor:v37];

  if (_SSScreenshotsRedesign2025Enabled())
  {
    v38 = objc_alloc_init(SSSRoundedCropOverlayView);
    overlayWithRoundedResizeHandlesView = v3->_overlayWithRoundedResizeHandlesView;
    v3->_overlayWithRoundedResizeHandlesView = v38;

    v40 = v3->_overlayWithRoundedResizeHandlesView;
    +[SSChromeHelper cropsCornerWidth];
    [(SSSRoundedCropOverlayView *)v40 setBorderWidth:?];
    v41 = v3->_overlayWithRoundedResizeHandlesView;
    v42 = +[SSMaterial cropHandle];
    color2 = [v42 color];
    [(SSSRoundedCropOverlayView *)v41 setBorderColor:color2];

    [(SSSCropOverlayView *)v3 addSubview:v3->_overlayWithRoundedResizeHandlesView];
    [(SSSCropOverlayView *)v3 _updateUI];
  }

  [(SSSCropOverlayView *)v3 _updateCropOverlayVisibility];

  return v3;
}

- (void)setEditMode:(int64_t)mode
{
  if (self->_editMode != mode)
  {
    self->_editMode = mode;
    [(SSSCropOverlayView *)self _updateCropOverlayVisibility];

    [(SSSCropOverlayView *)self setNeedsLayout];
  }
}

- (void)_updateCropOverlayVisibility
{
  editMode = self->_editMode;
  [(SSSRoundedCropOverlayView *)self->_overlayWithRoundedResizeHandlesView setHidden:editMode != 0];
  if ([(NSArray *)self->_cornerViews count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_cornerViews objectAtIndex:v4];
      [v5 setHidden:editMode == 0];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_cornerViews count]);
  }

  if ([(NSArray *)self->_grabberViews count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_grabberViews objectAtIndex:v6];
      [v7 setPrefersRoundedEdges:self->_showRoundedCorners];
      [v7 setHidden:editMode == 0];

      ++v6;
    }

    while (v6 < [(NSArray *)self->_grabberViews count]);
  }

  if ([(NSArray *)self->_lineViews count])
  {
    v8 = 0;
    do
    {
      v9 = [(NSArray *)self->_lineViews objectAtIndex:v8];
      [v9 setHidden:editMode == 0];

      ++v8;
    }

    while (v8 < [(NSArray *)self->_lineViews count]);
  }
}

- (void)setShowRoundedCorners:(BOOL)corners
{
  cornersCopy = corners;
  if (_SSScreenshotsRedesign2025Enabled() && self->_showRoundedCorners != cornersCopy)
  {
    self->_showRoundedCorners = cornersCopy;

    [(SSSCropOverlayView *)self setNeedsLayout];
  }
}

- (void)_updateUI
{
  if (_SSScreenshotsRedesign2025Enabled())
  {
    v3 = 0.0;
    if (self->_showRoundedCorners)
    {
      [(SSSCropOverlayView *)self frame];
      v5 = v4;
      v6 = +[UIScreen mainScreen];
      [v6 bounds];
      if (vabdd_f64(v5, v7) >= 5.0)
      {
        sub_10000F578();
        v3 = v10;
      }

      else
      {
        traitCollection = [(SSSCropOverlayView *)self traitCollection];
        [traitCollection displayCornerRadius];
        v3 = v9;
      }
    }

    [(SSSRoundedCropOverlayView *)self->_overlayWithRoundedResizeHandlesView setCornerRadius:v3];

    [(SSSCropOverlayView *)self _updateCropOverlayVisibility];
  }
}

- (CGRect)_frameForViewInCorner:(unint64_t)corner inSize:(CGSize)size cornerSize:(CGSize)cornerSize
{
  height = cornerSize.height;
  width = cornerSize.width;
  v7 = size.height;
  v8 = size.width;
  +[SSSCropOverlayGrabberView preferredDimension];
  v11 = v10;
  [objc_opt_class() _outsetAmountForHandles];
  v13 = v11 + v12;
  if (corner == 4 || corner == 1)
  {
    v14 = -v13;
    v15 = -v13;
  }

  else
  {
    v15 = v8 - width + v13;
    v14 = -v13;
  }

  v16 = v7 - height + v13;
  if (corner - 1 < 2)
  {
    v16 = v14;
  }

  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_frameForLineAtEdge:(unint64_t)edge inSize:(CGSize)size dimension:(double)dimension
{
  height = size.height;
  width = size.width;
  [objc_opt_class() _outsetAmountForHandles];
  v10 = v9;
  v11 = -dimension;
  IsHorizontal = SSRectEdgeIsHorizontal();
  v13 = height + v10;
  v14 = width + v10;
  if (edge != 8)
  {
    v14 = -dimension;
  }

  if (edge == 4)
  {
    v15 = -dimension;
  }

  else
  {
    v13 = -dimension;
    v15 = v14;
  }

  v16 = v11 - v10;
  if (edge == 2)
  {
    v17 = v11 - v10;
  }

  else
  {
    v17 = -dimension;
  }

  if (edge == 1)
  {
    v17 = -dimension;
  }

  else
  {
    v16 = -dimension;
  }

  if (edge <= 3)
  {
    v18 = v17;
  }

  else
  {
    v16 = v13;
    v18 = v15;
  }

  dimensionCopy = width + dimension * 2.0;
  if (!IsHorizontal)
  {
    dimensionCopy = dimension;
  }

  dimensionCopy2 = height + dimension * 2.0;
  if (IsHorizontal)
  {
    dimensionCopy2 = dimension;
  }

  result.size.height = dimensionCopy2;
  result.size.width = dimensionCopy;
  result.origin.y = v16;
  result.origin.x = v18;
  return result;
}

- (CGRect)_frameForGrabberAtEdge:(unint64_t)edge inSize:(CGSize)size dimension:(double)dimension
{
  [(SSSCropOverlayView *)self _frameForLineAtEdge:size.width inSize:size.height dimension:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (self->_showRoundedCorners || !self->_editMode)
  {
    +[SSChromeHelper cropsCornerLengthLong];
  }

  else
  {
    +[SSSCropOverlayGrabberView preferredOtherDimension];
  }

  height = v16;
  if (edge > 3)
  {
    if (edge != 4)
    {
      if (edge == 8)
      {
        v24.origin.x = v9;
        v24.origin.y = v11;
        v24.size.width = v13;
        v24.size.height = v15;
        MinX = CGRectGetMinX(v24);
        goto LABEL_12;
      }

LABEL_13:
      MinX = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      goto LABEL_17;
    }

    v28.origin.x = v9;
    v28.origin.y = v11;
    v28.size.width = v13;
    v28.size.height = v15;
    MinX = CGRectGetMidX(v28) + height * -0.5;
    v29.origin.x = v9;
    v29.origin.y = v11;
    v29.size.width = v13;
    v29.size.height = v15;
    y = CGRectGetMinY(v29);
LABEL_16:
    width = height;
    height = dimension;
    goto LABEL_17;
  }

  if (edge == 1)
  {
    v26.origin.x = v9;
    v26.origin.y = v11;
    v26.size.width = v13;
    v26.size.height = v15;
    MinX = CGRectGetMidX(v26) + height * -0.5;
    v27.origin.x = v9;
    v27.origin.y = v11;
    v27.size.width = v13;
    v27.size.height = v15;
    y = CGRectGetMaxY(v27) - dimension;
    goto LABEL_16;
  }

  if (edge != 2)
  {
    goto LABEL_13;
  }

  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  MinX = CGRectGetMaxX(v23) - dimension;
LABEL_12:
  v25.origin.x = v9;
  v25.origin.y = v11;
  v25.size.width = v13;
  v25.size.height = v15;
  y = CGRectGetMidY(v25) + height * -0.5;
  width = dimension;
LABEL_17:
  v21 = MinX;
  v22 = height;
  result.size.height = v22;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = v21;
  return result;
}

- (void)layoutSubviews
{
  v44.receiver = self;
  v44.super_class = SSSCropOverlayView;
  [(SSSCropOverlayView *)&v44 layoutSubviews];
  containerView = self->_containerView;
  [(SSSCropOverlayView *)self bounds];
  [(UIView *)containerView setFrame:?];
  [(SSSCropOverlayView *)self bounds];
  v5 = floor(v4);
  [(SSSCropOverlayView *)self bounds];
  v7 = floor(v6);
  _orderedRectCorners = [(SSSCropOverlayView *)self _orderedRectCorners];
  if ([(NSArray *)self->_cornerViews count])
  {
    v9 = 0;
    do
    {
      v10 = [(NSArray *)self->_cornerViews objectAtIndex:v9];
      v11 = [_orderedRectCorners objectAtIndex:v9];
      integerValue = [v11 integerValue];

      [v10 intrinsicContentSize];
      [(SSSCropOverlayView *)self _frameForViewInCorner:integerValue inSize:v5 cornerSize:v7, v13, v14];
      [v10 sss_setFrameUnanimatingIfChangingFromCGSizeZero:?];

      ++v9;
    }

    while (v9 < [(NSArray *)self->_cornerViews count]);
  }

  v41 = _orderedRectCorners;
  _orderedRectEdges = [(SSSCropOverlayView *)self _orderedRectEdges];
  if ([(NSArray *)self->_grabberViews count])
  {
    v16 = 0;
    do
    {
      v17 = [(NSArray *)self->_grabberViews objectAtIndex:v16];
      v18 = [(NSArray *)self->_lineViews objectAtIndex:v16];
      v19 = [_orderedRectEdges objectAtIndex:v16];
      integerValue2 = [v19 integerValue];

      +[SSSCropOverlayGrabberView preferredDimension];
      [(SSSCropOverlayView *)self _frameForGrabberAtEdge:integerValue2 inSize:v5 dimension:v7, v21];
      v42 = v23;
      v43 = v22;
      v25 = v24;
      v27 = v26;
      +[SSSCropOverlayLineView preferredDimension];
      [(SSSCropOverlayView *)self _frameForLineAtEdge:integerValue2 inSize:v5 dimension:v7, v28];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      [v17 sss_setFrameUnanimatingIfChangingFromCGSizeZero:{v43, v42, v25, v27}];
      [v18 sss_setFrameUnanimatingIfChangingFromCGSizeZero:{v30, v32, v34, v36}];

      ++v16;
    }

    while (v16 < [(NSArray *)self->_grabberViews count]);
  }

  +[SSChromeHelper roundedCropHandleThickness];
  v38 = v37;
  +[SSChromeHelper cropsHandleOutset];
  v40 = v38 + v39;
  [(SSSCropOverlayView *)self bounds];
  v46 = CGRectInset(v45, -v40, -v40);
  [(SSSRoundedCropOverlayView *)self->_overlayWithRoundedResizeHandlesView setFrame:v46.origin.x, v46.origin.y, v46.size.width, v46.size.height];
  [(SSSCropOverlayView *)self _updateUI];
}

- (SSSCropOverlayGrabPosition)grabPositionForLocation:(CGPoint)location
{
  v3 = [(SSSCropOverlayView *)self hitTest:0 withEvent:location.x, location.y];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    corner = [v3 corner];
LABEL_6:
    edge = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    corner = 0;
    goto LABEL_6;
  }

  edge = [v3 edge];
  corner = 0;
LABEL_7:

  v6 = edge;
  v7 = corner;
  result.corner = v7;
  result.edge = v6;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  _viewsToHitTest = [(SSSCropOverlayView *)self _viewsToHitTest];
  v9 = [_viewsToHitTest countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(_viewsToHitTest);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v13 convertPoint:self fromView:{x, y}];
        if ([v13 pointInside:eventCopy withEvent:?])
        {

          v14 = 1;
          goto LABEL_11;
        }
      }

      v10 = [_viewsToHitTest countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16.receiver = self;
  v16.super_class = SSSCropOverlayView;
  v14 = [(SSSCropOverlayView *)&v16 pointInside:eventCopy withEvent:x, y];
LABEL_11:

  return v14;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (UIViewIgnoresTouchEvents())
  {
    v8 = 0;
    goto LABEL_17;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  _viewsToHitTest = [(SSSCropOverlayView *)self _viewsToHitTest];
  v10 = [(SSSCropOverlayView *)_viewsToHitTest countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(_viewsToHitTest);
      }

      v14 = *(*(&v17 + 1) + 8 * v13);
      [(SSSCropOverlayView *)v14 convertPoint:self fromView:x, y];
      if ([(SSSCropOverlayView *)v14 pointInside:eventCopy withEvent:?])
      {
        goto LABEL_15;
      }

      if (v11 == ++v13)
      {
        v11 = [(SSSCropOverlayView *)_viewsToHitTest countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v16.receiver = self;
  v16.super_class = SSSCropOverlayView;
  v14 = [(SSSCropOverlayView *)&v16 hitTest:eventCopy withEvent:x, y];
  if (v14 != self && ([(SSSCropOverlayView *)self containsView:v14]& 1) == 0)
  {
    _viewsToHitTest = v14;
LABEL_15:
    v8 = v14;
    v14 = _viewsToHitTest;
    goto LABEL_16;
  }

  v8 = 0;
LABEL_16:

LABEL_17:

  return v8;
}

- (void)setCornerGrabberAlpha:(double)alpha
{
  self->_cornerGrabberAlpha = alpha;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_cornerViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) setAlpha:{alpha, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setLineAlpha:(double)alpha
{
  self->_lineAlpha = alpha;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_lineViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) setAlpha:{alpha, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setLineGrabberAlpha:(double)alpha
{
  self->_lineGrabberAlpha = alpha;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_grabberViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) setAlpha:{alpha, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end