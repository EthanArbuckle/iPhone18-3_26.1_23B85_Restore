@interface SSSUncroppedOccludingView
- (BOOL)_pointInsideAnOccludingView:(CGPoint)view;
- (CGRect)unoccludedRect;
- (SSSUncroppedOccludingView)initWithFrame:(CGRect)frame;
- (id)_occludingViews;
- (void)layoutSubviews;
- (void)setUnoccludedRect:(CGRect)rect;
@end

@implementation SSSUncroppedOccludingView

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = SSSUncroppedOccludingView;
  [(SSSUncroppedOccludingView *)&v28 layoutSubviews];
  [(SSSUncroppedOccludingView *)self bounds];
  x = v29.origin.x;
  width = v29.size.width;
  height = v29.size.height;
  y = v29.origin.y;
  if (!CGRectIsEmpty(v29))
  {
    [(SSSUncroppedOccludingView *)self unoccludedRect];
    traitCollection = [(SSSUncroppedOccludingView *)self traitCollection];
    [traitCollection displayScale];
    SSRoundRectToScale();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v30.origin.x = v9;
    v30.origin.y = v11;
    v30.size.width = v13;
    v30.size.height = v15;
    MinY = CGRectGetMinY(v30);
    [(SSSOccludingCoveringView *)self->_topView sss_setFrameUnanimatingIfChangingFromCGSizeZero:x, y, width, MinY];
    v31.origin.x = v9;
    v31.origin.y = v11;
    v31.size.width = v13;
    v31.size.height = v15;
    v25 = height;
    MaxY = CGRectGetMaxY(v31);
    v32.origin.x = v9;
    v32.origin.y = v11;
    v32.size.width = v13;
    v32.size.height = v15;
    v26 = v25 - CGRectGetMaxY(v32);
    v27 = MaxY;
    [(SSSOccludingCoveringView *)self->_bottomView sss_setFrameUnanimatingIfChangingFromCGSizeZero:x, MaxY, width, v26];
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = MinY;
    v23 = CGRectGetMaxY(v33);
    v34.origin.x = x;
    v34.origin.y = MaxY;
    v34.size.width = width;
    v34.size.height = v26;
    v17 = CGRectGetMinY(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = MinY;
    v18 = v17 - CGRectGetMaxY(v35);
    v36.origin.x = v9;
    v36.origin.y = v11;
    v36.size.width = v13;
    v36.size.height = v15;
    [(SSSOccludingCoveringView *)self->_leftView sss_setFrameUnanimatingIfChangingFromCGSizeZero:x, v23, CGRectGetMinX(v36), v18];
    v37.origin.x = v9;
    v37.origin.y = v11;
    v37.size.width = v13;
    v37.size.height = v15;
    MaxX = CGRectGetMaxX(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = MinY;
    v21 = CGRectGetMaxY(v38);
    v39.origin.x = v9;
    v39.origin.y = v11;
    v39.size.width = v13;
    v39.size.height = v15;
    v19 = width - CGRectGetMaxX(v39);
    v40.origin.x = x;
    v40.size.height = v26;
    v40.origin.y = v27;
    v40.size.width = width;
    v20 = CGRectGetMinY(v40);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = MinY;
    [(SSSOccludingCoveringView *)self->_rightView sss_setFrameUnanimatingIfChangingFromCGSizeZero:MaxX, v21, v19, v20 - CGRectGetMaxY(v41)];
  }
}

- (id)_occludingViews
{
  bottomView = self->_bottomView;
  v6[0] = self->_topView;
  v6[1] = bottomView;
  rightView = self->_rightView;
  v6[2] = self->_leftView;
  v6[3] = rightView;
  v4 = [NSArray arrayWithObjects:v6 count:4];

  return v4;
}

- (BOOL)_pointInsideAnOccludingView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _occludingViews = [(SSSUncroppedOccludingView *)self _occludingViews];
  v7 = [_occludingViews countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(_occludingViews);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 convertPoint:self fromView:{x, y}];
        if ([v11 pointInside:0 withEvent:?])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v8 = [_occludingViews countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)setUnoccludedRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_unoccludedRect = &self->_unoccludedRect;
  if (!CGRectEqualToRect(self->_unoccludedRect, rect))
  {
    p_unoccludedRect->origin.x = x;
    p_unoccludedRect->origin.y = y;
    p_unoccludedRect->size.width = width;
    p_unoccludedRect->size.height = height;

    [(SSSUncroppedOccludingView *)self setNeedsLayout];
  }
}

- (SSSUncroppedOccludingView)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = SSSUncroppedOccludingView;
  v3 = [(SSSUncroppedOccludingView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SSSUncroppedOccludingView *)v3 setClipsToBounds:1];
  v4 = objc_opt_new();
  topView = v3->_topView;
  v3->_topView = v4;

  v6 = objc_opt_new();
  bottomView = v3->_bottomView;
  v3->_bottomView = v6;

  v8 = objc_opt_new();
  leftView = v3->_leftView;
  v3->_leftView = v8;

  v10 = objc_opt_new();
  rightView = v3->_rightView;
  v3->_rightView = v10;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  _occludingViews = [(SSSUncroppedOccludingView *)v3 _occludingViews];
  v13 = [_occludingViews countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(_occludingViews);
        }

        [(SSSUncroppedOccludingView *)v3 addSubview:*(*(&v18 + 1) + 8 * v16)];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [_occludingViews countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v14);
  }

  return v3;
}

- (CGRect)unoccludedRect
{
  x = self->_unoccludedRect.origin.x;
  y = self->_unoccludedRect.origin.y;
  width = self->_unoccludedRect.size.width;
  height = self->_unoccludedRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end