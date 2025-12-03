@interface OfflineRegionSelectorCropHandleView
+ (id)allHandles;
- (CGSize)intrinsicContentSize;
- (OfflineRegionSelectorCropHandleView)initWithHandle:(unint64_t)handle;
- (id)constraintsForHandlePinnedToView:(id)view;
- (void)_commonInit;
- (void)_setupCornerHandle;
- (void)_setupEdgeHandle;
@end

@implementation OfflineRegionSelectorCropHandleView

- (id)constraintsForHandlePinnedToView:(id)view
{
  viewCopy = view;
  handle = [(OfflineRegionSelectorCropHandleView *)self handle];
  v6 = &__NSArray0__struct;
  if (handle > 3)
  {
    if (handle > 5)
    {
      if (handle == 6)
      {
        leftAnchor = [(OfflineRegionSelectorCropHandleView *)self leftAnchor];
        leftAnchor2 = [viewCopy leftAnchor];
        v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:-4.0];
        v16[0] = v9;
        bottomAnchor = [(OfflineRegionSelectorCropHandleView *)self bottomAnchor];
        bottomAnchor2 = [viewCopy bottomAnchor];
        v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:4.0];
        v16[1] = v12;
        v13 = v16;
      }

      else
      {
        if (handle != 7)
        {
          goto LABEL_19;
        }

        leftAnchor = [(OfflineRegionSelectorCropHandleView *)self rightAnchor];
        leftAnchor2 = [viewCopy rightAnchor];
        v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:4.0];
        v15[0] = v9;
        bottomAnchor = [(OfflineRegionSelectorCropHandleView *)self bottomAnchor];
        bottomAnchor2 = [viewCopy bottomAnchor];
        v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:4.0];
        v15[1] = v12;
        v13 = v15;
      }
    }

    else if (handle == 4)
    {
      leftAnchor = [(OfflineRegionSelectorCropHandleView *)self leftAnchor];
      leftAnchor2 = [viewCopy leftAnchor];
      v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:-4.0];
      v18[0] = v9;
      bottomAnchor = [(OfflineRegionSelectorCropHandleView *)self topAnchor];
      bottomAnchor2 = [viewCopy topAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
      v18[1] = v12;
      v13 = v18;
    }

    else
    {
      leftAnchor = [(OfflineRegionSelectorCropHandleView *)self rightAnchor];
      leftAnchor2 = [viewCopy rightAnchor];
      v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:4.0];
      v17[0] = v9;
      bottomAnchor = [(OfflineRegionSelectorCropHandleView *)self topAnchor];
      bottomAnchor2 = [viewCopy topAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
      v17[1] = v12;
      v13 = v17;
    }
  }

  else if (handle > 1)
  {
    if (handle == 2)
    {
      leftAnchor = [(OfflineRegionSelectorCropHandleView *)self centerXAnchor];
      leftAnchor2 = [viewCopy centerXAnchor];
      v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v20[0] = v9;
      bottomAnchor = [(OfflineRegionSelectorCropHandleView *)self topAnchor];
      bottomAnchor2 = [viewCopy bottomAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v20[1] = v12;
      v13 = v20;
    }

    else
    {
      leftAnchor = [(OfflineRegionSelectorCropHandleView *)self leftAnchor];
      leftAnchor2 = [viewCopy rightAnchor];
      v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v19[0] = v9;
      bottomAnchor = [(OfflineRegionSelectorCropHandleView *)self centerYAnchor];
      bottomAnchor2 = [viewCopy centerYAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v19[1] = v12;
      v13 = v19;
    }
  }

  else if (handle)
  {
    if (handle != 1)
    {
      goto LABEL_19;
    }

    leftAnchor = [(OfflineRegionSelectorCropHandleView *)self rightAnchor];
    leftAnchor2 = [viewCopy leftAnchor];
    v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v21[0] = v9;
    bottomAnchor = [(OfflineRegionSelectorCropHandleView *)self centerYAnchor];
    bottomAnchor2 = [viewCopy centerYAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v21[1] = v12;
    v13 = v21;
  }

  else
  {
    leftAnchor = [(OfflineRegionSelectorCropHandleView *)self centerXAnchor];
    leftAnchor2 = [viewCopy centerXAnchor];
    v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v22[0] = v9;
    bottomAnchor = [(OfflineRegionSelectorCropHandleView *)self bottomAnchor];
    bottomAnchor2 = [viewCopy topAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v22[1] = v12;
    v13 = v22;
  }

  v6 = [NSArray arrayWithObjects:v13 count:2];

LABEL_19:

  return v6;
}

- (CGSize)intrinsicContentSize
{
  [(CAShapeLayer *)self->_handleLayer bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)_setupCornerHandle
{
  v3 = +[UIBezierPath bezierPath];
  [v3 moveToPoint:{20.0, 0.0}];
  [v3 addLineToPoint:{23.0, 0.0}];
  [v3 _addRoundedCornerWithTrueCorner:2 radius:0 corner:0 clockwise:0 leadInIsContinuous:24.0 leadOutIsContinuous:{0.0, 1.0, 1.0}];
  [v3 addLineToPoint:{24.0, 4.0}];
  [v3 addLineToPoint:{22.0, 4.0}];
  [v3 _addRoundedCornerWithTrueCorner:1 radius:1 corner:0 clockwise:0 leadInIsContinuous:4.0 leadOutIsContinuous:{4.0, 18.0, 18.0}];
  [v3 addLineToPoint:{4.0, 24.0}];
  [v3 _addRoundedCornerWithTrueCorner:4 radius:0 corner:0 clockwise:0 leadInIsContinuous:0.0 leadOutIsContinuous:{24.0, 1.0, 1.0}];
  [v3 addLineToPoint:{0.0, 20.0}];
  [v3 _addRoundedCornerWithTrueCorner:1 radius:0 corner:0 clockwise:0 leadInIsContinuous:0.0 leadOutIsContinuous:{0.0, 20.0, 20.0}];
  [v3 addLineToPoint:{20.0, 0.0}];
  [v3 closePath];
  -[CAShapeLayer setPath:](self->_handleLayer, "setPath:", [v3 CGPath]);
  PathBoundingBox = CGPathGetPathBoundingBox([(CAShapeLayer *)self->_handleLayer path]);
  width = PathBoundingBox.size.width;
  height = PathBoundingBox.size.height;
  *&PathBoundingBox.origin.y = *&CATransform3DIdentity.m33;
  v16 = *&CATransform3DIdentity.m31;
  *&v26.m31 = v16;
  *&v26.m33 = *&PathBoundingBox.origin.y;
  v18 = *&PathBoundingBox.origin.y;
  *&PathBoundingBox.origin.y = *&CATransform3DIdentity.m43;
  v17 = *&CATransform3DIdentity.m41;
  *&v26.m41 = v17;
  *&v26.m43 = *&PathBoundingBox.origin.y;
  v20 = *&PathBoundingBox.origin.y;
  *&PathBoundingBox.origin.y = *&CATransform3DIdentity.m13;
  v19 = *&CATransform3DIdentity.m11;
  *&v26.m11 = *&CATransform3DIdentity.m11;
  *&v26.m13 = *&PathBoundingBox.origin.y;
  v22 = *&PathBoundingBox.origin.y;
  *&PathBoundingBox.origin.y = *&CATransform3DIdentity.m23;
  v21 = *&CATransform3DIdentity.m21;
  *&v26.m21 = v21;
  *&v26.m23 = *&PathBoundingBox.origin.y;
  v23 = *&PathBoundingBox.origin.y;
  if ([(OfflineRegionSelectorCropHandleView *)self handle]== 5)
  {
    *&v25.m31 = v16;
    *&v25.m33 = v18;
    *&v25.m41 = v17;
    *&v25.m43 = v20;
    *&v25.m11 = v19;
    *&v25.m13 = v22;
    *&v25.m21 = v21;
    *&v25.m23 = v23;
    CATransform3DTranslate(&v26, &v25, 0.0, height, 0.0);
    CATransform3DMakeRotation(&v25, 1.57079633, 0.0, 0.0, 1.0);
    v26 = v25;
    v6 = -width;
    v24 = v25;
    v7 = 0.0;
LABEL_5:
    CATransform3DTranslate(&v25, &v24, v7, v6, 0.0);
    v26 = v25;
    goto LABEL_6;
  }

  if ([(OfflineRegionSelectorCropHandleView *)self handle]== 7)
  {
    *&v25.m31 = v16;
    *&v25.m33 = v18;
    *&v25.m41 = v17;
    *&v25.m43 = v20;
    *&v25.m11 = v19;
    *&v25.m13 = v22;
    *&v25.m21 = v21;
    *&v25.m23 = v23;
    CATransform3DTranslate(&v26, &v25, width, height, 0.0);
    CATransform3DMakeRotation(&v25, 3.14159265, 0.0, 0.0, 1.0);
    v26 = v25;
    v7 = -width;
    v24 = v25;
    v6 = -width;
    goto LABEL_5;
  }

  if ([(OfflineRegionSelectorCropHandleView *)self handle]!= 6)
  {
    v11 = -24.0;
    v15 = 0.0;
    v13 = 0.0;
    v9 = -24.0;
    goto LABEL_7;
  }

  *&v25.m31 = v16;
  *&v25.m33 = v18;
  *&v25.m41 = v17;
  *&v25.m43 = v20;
  *&v25.m11 = v19;
  *&v25.m13 = v22;
  *&v25.m21 = v21;
  *&v25.m23 = v23;
  CATransform3DTranslate(&v26, &v25, width, 0.0, 0.0);
  CATransform3DMakeRotation(&v25, 4.71238898, 0.0, 0.0, 1.0);
  v26 = v25;
  v24 = v25;
  CATransform3DTranslate(&v25, &v24, -width, 0.0, 0.0);
  v26 = v25;
LABEL_6:
  UIEdgeInsetsRotate();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
LABEL_7:
  v25 = v26;
  [(CAShapeLayer *)self->_handleLayer setTransform:&v25];
  [(OfflineRegionSelectorCropHandleView *)self _setTouchInsets:v9, v11, v13, v15];
}

- (void)_setupEdgeHandle
{
  handle = [(OfflineRegionSelectorCropHandleView *)self handle];
  if (handle > 3)
  {
    v6 = 0;
    v4 = 0.0;
    v5 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v4 = dbl_101212DB0[handle];
    v5 = dbl_101212DD0[handle];
    v6 = qword_101212DF0[handle];
    v7 = dbl_101212E10[handle];
    v8 = dbl_101212E30[handle];
  }

  v10 = [UIBezierPath bezierPathWithRoundedRect:v6 byRoundingCorners:0.0 cornerRadii:0.0, v4, v5, 1.0, 1.0];
  v9 = v10;
  -[CAShapeLayer setPath:](self->_handleLayer, "setPath:", [v10 CGPath]);
  [(OfflineRegionSelectorCropHandleView *)self _setTouchInsets:v7, v8, v7, v8];
}

- (void)_commonInit
{
  v3 = +[CAShapeLayer layer];
  handleLayer = self->_handleLayer;
  self->_handleLayer = v3;

  [(CAShapeLayer *)self->_handleLayer setAnchorPoint:CGPointZero.x, CGPointZero.y];
  v5 = +[UIColor whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.850000024];
  -[CAShapeLayer setFillColor:](self->_handleLayer, "setFillColor:", [v6 CGColor]);

  layer = [(OfflineRegionSelectorCropHandleView *)self layer];
  [layer addSublayer:self->_handleLayer];

  handle = self->_handle;
  if (handle > 3)
  {
    if ((handle & 0xFFFFFFFFFFFFFFFCLL) == 4)
    {
      [(OfflineRegionSelectorCropHandleView *)self _setupCornerHandle];
    }
  }

  else
  {
    [(OfflineRegionSelectorCropHandleView *)self _setupEdgeHandle];
  }

  PathBoundingBox = CGPathGetPathBoundingBox([(CAShapeLayer *)self->_handleLayer path]);
  v9 = self->_handleLayer;

  [(CAShapeLayer *)v9 setBounds:PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height];
}

- (OfflineRegionSelectorCropHandleView)initWithHandle:(unint64_t)handle
{
  v7.receiver = self;
  v7.super_class = OfflineRegionSelectorCropHandleView;
  v4 = [(OfflineRegionSelectorCropHandleView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_handle = handle;
    [(OfflineRegionSelectorCropHandleView *)v4 _commonInit];
  }

  return v5;
}

+ (id)allHandles
{
  if (qword_10195CA50 != -1)
  {
    dispatch_once(&qword_10195CA50, &stru_101621F38);
  }

  v3 = qword_10195CA48;

  return v3;
}

@end