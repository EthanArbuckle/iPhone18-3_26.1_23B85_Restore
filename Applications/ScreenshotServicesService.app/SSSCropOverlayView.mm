@interface SSSCropOverlayView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_frameForGrabberAtEdge:(unint64_t)a3 inSize:(CGSize)a4 dimension:(double)a5;
- (CGRect)_frameForLineAtEdge:(unint64_t)a3 inSize:(CGSize)a4 dimension:(double)a5;
- (CGRect)_frameForViewInCorner:(unint64_t)a3 inSize:(CGSize)a4 cornerSize:(CGSize)a5;
- (SSSCropOverlayGrabPosition)grabPositionForLocation:(CGPoint)a3;
- (SSSCropOverlayView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateCropOverlayVisibility;
- (void)_updateUI;
- (void)layoutSubviews;
- (void)setCornerGrabberAlpha:(double)a3;
- (void)setEditMode:(int64_t)a3;
- (void)setLineAlpha:(double)a3;
- (void)setLineGrabberAlpha:(double)a3;
- (void)setShowRoundedCorners:(BOOL)a3;
@end

@implementation SSSCropOverlayView

- (SSSCropOverlayView)initWithFrame:(CGRect)a3
{
  v55.receiver = self;
  v55.super_class = SSSCropOverlayView;
  v3 = [(SSSCropOverlayView *)&v55 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SSSCropOverlayView *)v3 setClipsToBounds:0];
  v4 = [(SSSCropOverlayView *)v3 layer];
  [v4 setAllowsGroupOpacity:0];

  v3->_cornerGrabberAlpha = 1.0;
  v3->_lineGrabberAlpha = 1.0;
  v3->_lineAlpha = 1.0;
  v3->_showRoundedCorners = 0;
  v5 = objc_alloc_init(UIView);
  containerView = v3->_containerView;
  v3->_containerView = v5;

  v7 = [(UIView *)v3->_containerView layer];
  [v7 setAllowsGroupOpacity:0];

  [(SSSCropOverlayView *)v3 addSubview:v3->_containerView];
  v46 = +[NSMutableArray array];
  v45 = +[NSMutableArray array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = [(SSSCropOverlayView *)v3 _orderedRectEdges];
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v58 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v51 + 1) + 8 * v12) integerValue];
        v14 = [[SSSCropOverlayLineView alloc] initWithEdge:v13];
        v15 = [[SSSCropOverlayGrabberView alloc] initWithEdge:v13];
        [v46 addObject:v14];
        [v45 addObject:v15];
        [(UIView *)v3->_containerView addSubview:v14];
        [(UIView *)v3->_containerView addSubview:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v51 objects:v58 count:16];
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
  v21 = [(SSSCropOverlayView *)v3 _orderedRectCorners];
  v22 = [v21 countByEnumeratingWithState:&v47 objects:v57 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = -[SSSCropOverlayCornerView initForCorner:]([SSSCropOverlayCornerView alloc], "initForCorner:", [*(*(&v47 + 1) + 8 * v25) integerValue]);
        [v20 addObject:v26];
        [(UIView *)v3->_containerView addSubview:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v23);
  }

  v27 = [v20 copy];
  cornerViews = v3->_cornerViews;
  v3->_cornerViews = v27;

  v29 = [(UIView *)v3->_containerView layer];
  v30 = +[SSMaterial cropHandle];
  v31 = [v30 filter];
  v56 = v31;
  v32 = [NSArray arrayWithObjects:&v56 count:1];
  [v29 setFilters:v32];

  v33 = v3->_containerView;
  v34 = +[SSMaterial cropHandle];
  [v34 colorAlpha];
  [(UIView *)v33 setAlpha:?];

  v35 = +[SSMaterial cropHandle];
  v36 = [v35 color];
  v37 = [v36 colorWithAlphaComponent:1.0];
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
    v43 = [v42 color];
    [(SSSRoundedCropOverlayView *)v41 setBorderColor:v43];

    [(SSSCropOverlayView *)v3 addSubview:v3->_overlayWithRoundedResizeHandlesView];
    [(SSSCropOverlayView *)v3 _updateUI];
  }

  [(SSSCropOverlayView *)v3 _updateCropOverlayVisibility];

  return v3;
}

- (void)setEditMode:(int64_t)a3
{
  if (self->_editMode != a3)
  {
    self->_editMode = a3;
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

- (void)setShowRoundedCorners:(BOOL)a3
{
  v3 = a3;
  if (_SSScreenshotsRedesign2025Enabled() && self->_showRoundedCorners != v3)
  {
    self->_showRoundedCorners = v3;

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
        v8 = [(SSSCropOverlayView *)self traitCollection];
        [v8 displayCornerRadius];
        v3 = v9;
      }
    }

    [(SSSRoundedCropOverlayView *)self->_overlayWithRoundedResizeHandlesView setCornerRadius:v3];

    [(SSSCropOverlayView *)self _updateCropOverlayVisibility];
  }
}

- (CGRect)_frameForViewInCorner:(unint64_t)a3 inSize:(CGSize)a4 cornerSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  +[SSSCropOverlayGrabberView preferredDimension];
  v11 = v10;
  [objc_opt_class() _outsetAmountForHandles];
  v13 = v11 + v12;
  if (a3 == 4 || a3 == 1)
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
  if (a3 - 1 < 2)
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

- (CGRect)_frameForLineAtEdge:(unint64_t)a3 inSize:(CGSize)a4 dimension:(double)a5
{
  height = a4.height;
  width = a4.width;
  [objc_opt_class() _outsetAmountForHandles];
  v10 = v9;
  v11 = -a5;
  IsHorizontal = SSRectEdgeIsHorizontal();
  v13 = height + v10;
  v14 = width + v10;
  if (a3 != 8)
  {
    v14 = -a5;
  }

  if (a3 == 4)
  {
    v15 = -a5;
  }

  else
  {
    v13 = -a5;
    v15 = v14;
  }

  v16 = v11 - v10;
  if (a3 == 2)
  {
    v17 = v11 - v10;
  }

  else
  {
    v17 = -a5;
  }

  if (a3 == 1)
  {
    v17 = -a5;
  }

  else
  {
    v16 = -a5;
  }

  if (a3 <= 3)
  {
    v18 = v17;
  }

  else
  {
    v16 = v13;
    v18 = v15;
  }

  v19 = width + a5 * 2.0;
  if (!IsHorizontal)
  {
    v19 = a5;
  }

  v20 = height + a5 * 2.0;
  if (IsHorizontal)
  {
    v20 = a5;
  }

  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v16;
  result.origin.x = v18;
  return result;
}

- (CGRect)_frameForGrabberAtEdge:(unint64_t)a3 inSize:(CGSize)a4 dimension:(double)a5
{
  [(SSSCropOverlayView *)self _frameForLineAtEdge:a4.width inSize:a4.height dimension:?];
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
  if (a3 > 3)
  {
    if (a3 != 4)
    {
      if (a3 == 8)
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
    height = a5;
    goto LABEL_17;
  }

  if (a3 == 1)
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
    y = CGRectGetMaxY(v27) - a5;
    goto LABEL_16;
  }

  if (a3 != 2)
  {
    goto LABEL_13;
  }

  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  MinX = CGRectGetMaxX(v23) - a5;
LABEL_12:
  v25.origin.x = v9;
  v25.origin.y = v11;
  v25.size.width = v13;
  v25.size.height = v15;
  y = CGRectGetMidY(v25) + height * -0.5;
  width = a5;
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
  v8 = [(SSSCropOverlayView *)self _orderedRectCorners];
  if ([(NSArray *)self->_cornerViews count])
  {
    v9 = 0;
    do
    {
      v10 = [(NSArray *)self->_cornerViews objectAtIndex:v9];
      v11 = [v8 objectAtIndex:v9];
      v12 = [v11 integerValue];

      [v10 intrinsicContentSize];
      [(SSSCropOverlayView *)self _frameForViewInCorner:v12 inSize:v5 cornerSize:v7, v13, v14];
      [v10 sss_setFrameUnanimatingIfChangingFromCGSizeZero:?];

      ++v9;
    }

    while (v9 < [(NSArray *)self->_cornerViews count]);
  }

  v41 = v8;
  v15 = [(SSSCropOverlayView *)self _orderedRectEdges];
  if ([(NSArray *)self->_grabberViews count])
  {
    v16 = 0;
    do
    {
      v17 = [(NSArray *)self->_grabberViews objectAtIndex:v16];
      v18 = [(NSArray *)self->_lineViews objectAtIndex:v16];
      v19 = [v15 objectAtIndex:v16];
      v20 = [v19 integerValue];

      +[SSSCropOverlayGrabberView preferredDimension];
      [(SSSCropOverlayView *)self _frameForGrabberAtEdge:v20 inSize:v5 dimension:v7, v21];
      v42 = v23;
      v43 = v22;
      v25 = v24;
      v27 = v26;
      +[SSSCropOverlayLineView preferredDimension];
      [(SSSCropOverlayView *)self _frameForLineAtEdge:v20 inSize:v5 dimension:v7, v28];
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

- (SSSCropOverlayGrabPosition)grabPositionForLocation:(CGPoint)a3
{
  v3 = [(SSSCropOverlayView *)self hitTest:0 withEvent:a3.x, a3.y];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 corner];
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v5 = [v3 edge];
  v4 = 0;
LABEL_7:

  v6 = v5;
  v7 = v4;
  result.corner = v7;
  result.edge = v6;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(SSSCropOverlayView *)self _viewsToHitTest];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v13 convertPoint:self fromView:{x, y}];
        if ([v13 pointInside:v7 withEvent:?])
        {

          v14 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16.receiver = self;
  v16.super_class = SSSCropOverlayView;
  v14 = [(SSSCropOverlayView *)&v16 pointInside:v7 withEvent:x, y];
LABEL_11:

  return v14;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (UIViewIgnoresTouchEvents())
  {
    v8 = 0;
    goto LABEL_17;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(SSSCropOverlayView *)self _viewsToHitTest];
  v10 = [(SSSCropOverlayView *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v17 + 1) + 8 * v13);
      [(SSSCropOverlayView *)v14 convertPoint:self fromView:x, y];
      if ([(SSSCropOverlayView *)v14 pointInside:v7 withEvent:?])
      {
        goto LABEL_15;
      }

      if (v11 == ++v13)
      {
        v11 = [(SSSCropOverlayView *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v14 = [(SSSCropOverlayView *)&v16 hitTest:v7 withEvent:x, y];
  if (v14 != self && ([(SSSCropOverlayView *)self containsView:v14]& 1) == 0)
  {
    v9 = v14;
LABEL_15:
    v8 = v14;
    v14 = v9;
    goto LABEL_16;
  }

  v8 = 0;
LABEL_16:

LABEL_17:

  return v8;
}

- (void)setCornerGrabberAlpha:(double)a3
{
  self->_cornerGrabberAlpha = a3;
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

        [*(*(&v9 + 1) + 8 * v8) setAlpha:{a3, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setLineAlpha:(double)a3
{
  self->_lineAlpha = a3;
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

        [*(*(&v9 + 1) + 8 * v8) setAlpha:{a3, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setLineGrabberAlpha:(double)a3
{
  self->_lineGrabberAlpha = a3;
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

        [*(*(&v9 + 1) + 8 * v8) setAlpha:{a3, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end