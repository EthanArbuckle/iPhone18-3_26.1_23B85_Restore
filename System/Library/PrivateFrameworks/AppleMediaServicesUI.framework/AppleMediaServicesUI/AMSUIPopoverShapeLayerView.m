@interface AMSUIPopoverShapeLayerView
- (AMSUIPopoverShapeLayerView)initWithFrame:(CGRect)a3;
- (BOOL)wouldPinForOffset:(double)a3;
- (CGSize)_shadowOffset;
- (UIEdgeInsets)_shadowInsets;
- (UIView)viewToMaskWhenContentExtendsOverArrow;
- (double)_leftAndRightStartYLocationForBounds:(CGRect)a3;
- (double)_upAndDownStartingXLocationForBounds:(CGRect)a3;
- (double)maxNonPinnedOffset;
- (double)minNonPinnedOffset;
- (void)_addLeadingPinnedCurveToPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5;
- (void)_addLeadingPinnedCurveToPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6;
- (void)_addLeftRightArrowCurveForPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 isPinned:(BOOL)a8;
- (void)_addLeftRightRoundedRectWithGapForPath:(id)a3 bounds:(CGRect)a4;
- (void)_addRoundedRectExcludingTopLeftCornerForPath:(id)a3 bounds:(CGRect)a4;
- (void)_addTopBottomArrowCurveForPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 isPinned:(BOOL)a8;
- (void)_addTopBottomRoundedRectWithGapForPath:(id)a3 bounds:(CGRect)a4;
- (void)_loadNecessaryViews;
- (void)_updateShapeLayerPath;
- (void)_updateShapeLayerPathIfNeeded;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setArrowDirection:(unint64_t)a3;
- (void)setArrowOffset:(double)a3;
- (void)setNeedsLayout;
@end

@implementation AMSUIPopoverShapeLayerView

- (AMSUIPopoverShapeLayerView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = AMSUIPopoverShapeLayerView;
  v3 = [(AMSUIPopoverShapeLayerView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_arrowDirection = -1;
    v3->_shapeLayerPathNeedsUpdate = 1;
    v5 = objc_alloc_init(AMSUIPopoverShapeLayerMaskView);
    shapeLayerMaskView = v4->_shapeLayerMaskView;
    v4->_shapeLayerMaskView = v5;
  }

  return v4;
}

- (double)minNonPinnedOffset
{
  v3 = [(AMSUIPopoverShapeLayerView *)self arrowDirection];
  if (v3 - 1 < 2)
  {
    [(AMSUIPopoverShapeLayerView *)self bounds];
    v6 = v7 * 0.5;
    return -(floor(v6) + -26.0 + -15.0);
  }

  if (v3 == 4 || (result = 0.0, v3 == 8))
  {
    [(AMSUIPopoverShapeLayerView *)self bounds];
    v6 = v5 * 0.5;
    return -(floor(v6) + -26.0 + -15.0);
  }

  return result;
}

- (double)maxNonPinnedOffset
{
  v3 = [(AMSUIPopoverShapeLayerView *)self arrowDirection];
  if (v3 - 1 < 2)
  {
    [(AMSUIPopoverShapeLayerView *)self bounds];
    v6 = v7 * 0.5;
    return floor(v6) + -26.0 + -15.0;
  }

  if (v3 == 4 || (result = 0.0, v3 == 8))
  {
    [(AMSUIPopoverShapeLayerView *)self bounds];
    v6 = v5 * 0.5;
    return floor(v6) + -26.0 + -15.0;
  }

  return result;
}

- (UIEdgeInsets)_shadowInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)_shadowOffset
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateShapeLayerPathIfNeeded
{
  if (self->_shapeLayerPathNeedsUpdate)
  {
    [(AMSUIPopoverShapeLayerView *)self _updateShapeLayerPath];
    self->_shapeLayerPathNeedsUpdate = 0;
  }
}

- (BOOL)wouldPinForOffset:(double)a3
{
  if (a3 >= 0.0)
  {
    [(AMSUIPopoverShapeLayerView *)self maxNonPinnedOffset];
    return v6 < a3;
  }

  else
  {
    [(AMSUIPopoverShapeLayerView *)self minNonPinnedOffset];
    return v4 > a3;
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = AMSUIPopoverShapeLayerView;
  [(AMSUIPopoverShapeLayerView *)&v6 layoutSubviews];
  v3 = [(AMSUIPopoverShapeLayerView *)self layer];
  v4 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v3 setBorderColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [(AMSUIPopoverShapeLayerView *)self layer];
  [v5 setBorderWidth:10.0];

  [(AMSUIPopoverShapeLayerView *)self _updateShapeLayerPathIfNeeded];
}

- (void)setArrowDirection:(unint64_t)a3
{
  self->_arrowDirectionWasFlipped = [(AMSUIPopoverShapeLayerView *)self arrowDirection]!= a3;
  self->_arrowDirection = a3;
  [(AMSUIPopoverShapeLayerView *)self _updatePathAnimationState];

  [(AMSUIPopoverShapeLayerView *)self setNeedsLayout];
}

- (void)setNeedsLayout
{
  self->_shapeLayerPathNeedsUpdate = 1;
  v2.receiver = self;
  v2.super_class = AMSUIPopoverShapeLayerView;
  [(AMSUIPopoverShapeLayerView *)&v2 setNeedsLayout];
}

- (void)setArrowOffset:(double)a3
{
  [(AMSUIPopoverShapeLayerView *)self arrowOffset];
  self->_arrowOffsetWasFlipped = v5 * a3 <= 0.0;
  self->_arrowOffset = a3;
  [(AMSUIPopoverShapeLayerView *)self _updatePathAnimationState];
  self->_shapeLayerPathNeedsUpdate = 1;

  [(AMSUIPopoverShapeLayerView *)self setNeedsLayout];
}

- (void)_addRoundedRectExcludingTopLeftCornerForPath:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  v5 = a4.origin.y;
  x = a4.origin.x;
  v15 = a3;
  [objc_opt_class() cornerRadius];
  v8 = v7;
  v9 = v5 + v7;
  [v15 moveToPoint:{x, v5 + v7 + 6.0}];
  v10 = v5 + height;
  [v15 addLineToPoint:{x, v10 - v8}];
  v11 = x + v8;
  [v15 addArcWithCenter:0 radius:x + v8 startAngle:v10 - v8 endAngle:v8 clockwise:{3.14159265, 1.57079633}];
  v12 = x + width;
  [v15 addLineToPoint:{v12 - v8, v10}];
  [v15 addArcWithCenter:0 radius:v12 - v8 startAngle:v10 - v8 endAngle:v8 clockwise:{1.57079633, 0.0}];
  [v15 addLineToPoint:{v12, v9}];
  [v15 addArcWithCenter:0 radius:v12 - v8 startAngle:v9 endAngle:v8 clockwise:{0.0, 4.71238898}];
  [v15 addLineToPoint:{v11 + 26.0 + 6.0, y}];
}

- (void)_addLeftRightRoundedRectWithGapForPath:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v21 = a3;
  [objc_opt_class() cornerRadius];
  v9 = v8;
  v18 = y;
  [(AMSUIPopoverShapeLayerView *)self arrowOffset];
  v11 = y + height * 0.5 + v10;
  [objc_opt_class() arrowBase];
  v13 = v11 - v12 * 0.5;
  v20 = v13;
  [objc_opt_class() arrowBase];
  [v21 moveToPoint:{x, v13 + v14}];
  v15 = y + height;
  v16 = y + height - v9;
  [v21 addLineToPoint:{x, v16}];
  [v21 addArcWithCenter:0 radius:x + v9 startAngle:v16 endAngle:v9 clockwise:?];
  v17 = x + width - v9;
  [v21 addLineToPoint:{v17, v15}];
  [v21 addArcWithCenter:0 radius:v17 startAngle:v16 endAngle:v9 clockwise:{1.57079633, 0.0}];
  [v21 addLineToPoint:{x + width, v18 + v9}];
  [v21 addArcWithCenter:0 radius:v17 startAngle:v18 + v9 endAngle:v9 clockwise:{0.0, 4.71238898}];
  [v21 addLineToPoint:{x + v9 + 26.0 + 6.0, v18}];
  [v21 addArcWithCenter:0 radius:x + v9 startAngle:v18 + v9 endAngle:v9 clockwise:{4.71238898, 3.14159265}];
  [v21 addLineToPoint:{x, v20}];
}

- (void)_addTopBottomRoundedRectWithGapForPath:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  v19 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v21 = a3;
  [objc_opt_class() cornerRadius];
  v10 = v9;
  [(AMSUIPopoverShapeLayerView *)self arrowOffset];
  v12 = x + width * 0.5 + v11;
  [objc_opt_class() arrowBase];
  v14 = v12 - v13 * 0.5;
  [objc_opt_class() arrowBase];
  v20 = v14 + v15;
  [v21 moveToPoint:{v14, y}];
  [v21 addLineToPoint:{x + v10, y}];
  [v21 addArcWithCenter:0 radius:x + v10 startAngle:y + v10 endAngle:v10 clockwise:?];
  v16 = y + height;
  v17 = y + height - v10;
  [v21 addLineToPoint:{x, v17}];
  [v21 addArcWithCenter:0 radius:x + v10 startAngle:v17 endAngle:v10 clockwise:{3.14159265, 1.57079633}];
  v18 = x + v19;
  [v21 addLineToPoint:{v18 - v10, v16}];
  [v21 addArcWithCenter:0 radius:v18 - v10 startAngle:v17 endAngle:v10 clockwise:{1.57079633, 0.0}];
  [v21 addLineToPoint:{v18, y + v10}];
  [v21 addArcWithCenter:0 radius:v18 - v10 startAngle:y + v10 endAngle:v10 clockwise:{0.0, 4.71238898}];
  [v21 addLineToPoint:{v20, y}];
}

- (void)_addLeadingPinnedCurveToPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.origin.y;
  v8 = a4.origin.x;
  v13 = a3;
  [objc_opt_class() cornerRadius];
  v10 = v7 + v9 + 6.0;
  [objc_opt_class() cornerRadius];
  v12 = fmin(v8 + v11, x);
  [v13 moveToPoint:{x, y}];
  [v13 addLineToPoint:{v12, v7}];
  [v13 addCurveToPoint:v8 controlPoint1:v10 controlPoint2:{v8, v7, v8, v10}];
}

- (void)_addLeadingPinnedCurveToPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6
{
  y = a5.y;
  x = a5.x;
  v8 = a4.origin.y;
  v9 = a4.origin.x;
  v14 = a3;
  [objc_opt_class() cornerRadius];
  v11 = v9 + v10 + 6.0;
  [objc_opt_class() cornerRadius];
  v13 = fmin(v8 + v12, y);
  [v14 addLineToPoint:{v11, v8}];
  [v14 addCurveToPoint:v9 controlPoint1:v13 controlPoint2:{v9, v8, v9, v13}];
  [v14 addLineToPoint:{x, y}];
}

- (void)_addTopBottomArrowCurveForPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 isPinned:(BOOL)a8
{
  x_low = LODWORD(a7.x);
  y = a6.y;
  x = a6.x;
  v11 = a5.y;
  v12 = a5.x;
  width = a4.size.width;
  height = a4.size.height;
  v27 = a4.origin.y;
  v28 = a4.origin.x;
  v29 = a3;
  [objc_opt_class() cornerRadius];
  v26 = v14;
  if ((x_low & 1) == 0)
  {
    [v29 moveToPoint:{x + 6.0, y}];
  }

  [v29 addCurveToPoint:x + -2.5 controlPoint1:y + -2.0 controlPoint2:{x + -0.5, y, x + -0.5, y, *&width, *&height}];
  [v29 addLineToPoint:{v31 + 2.0, v32 + 1.0}];
  [v29 addCurveToPoint:v31 + -2.0 controlPoint1:v32 + 1.0 controlPoint2:{v31, v32 + -0.5, v31, v32 + -0.5}];
  if (x_low)
  {
    if (v12 > v28 + 1.0)
    {
      [v29 addLineToPoint:{v12, v11}];
      [(AMSUIPopoverShapeLayerView *)self _addLeadingPinnedCurveToPath:v29 bounds:v28 startPoint:v27, v23, v25, v12, v11];
      [v29 addLineToPoint:{v28, v27 + v26 + 6.0}];
      goto LABEL_9;
    }

    [v29 addLineToPoint:{v12 + 2.0, v11 + -2.0}];
    v19 = v11 + 1.0;
    v18 = v27 + v26 + 6.0;
    v17 = v29;
    v16 = v28;
    v15 = v12;
    v20 = v12;
    v21 = v11 + 1.0;
  }

  else
  {
    [v29 addLineToPoint:{v12 + 2.0, v11 + -2.0}];
    v15 = v12 + -0.5;
    v16 = v12 + -6.0;
    v17 = v29;
    v18 = v11;
    v19 = v11;
    v20 = v12 + -0.5;
    v21 = v11;
  }

  [v17 addCurveToPoint:v16 controlPoint1:v18 controlPoint2:{v15, v19, v20, v21}];
LABEL_9:
}

- (void)_addLeftRightArrowCurveForPath:(id)a3 bounds:(CGRect)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7 isPinned:(BOOL)a8
{
  x_low = LODWORD(a7.x);
  y = a6.y;
  x = a6.x;
  v11 = a5.y;
  v12 = a5.x;
  width = a4.size.width;
  height = a4.size.height;
  v13 = a4.origin.y;
  v14 = a4.origin.x;
  v16 = a3;
  v22 = v16;
  if (x_low)
  {
    if (v11 > v13 + 1.0)
    {
      [(AMSUIPopoverShapeLayerView *)self _addLeadingPinnedCurveToPath:v16 bounds:v14 startPoint:v13 endPoint:width, height, v12, v11, x, y];
      goto LABEL_7;
    }

    [v16 addLineToPoint:{v12 + 2.0, v11}];
    v19 = v11 + 1.0;
    v17 = v12 + -2.0;
    v18 = v11 + 2.0;
  }

  else
  {
    [v16 moveToPoint:{v12, fmax(v11 + -6.0, 0.0)}];
    v17 = v12 + -1.5;
    v18 = v11 + 3.0;
    v19 = v11 + 0.5;
  }

  [v22 addCurveToPoint:v17 controlPoint1:v18 controlPoint2:{v12, v19, v12, v19}];
LABEL_7:
  [v22 addLineToPoint:{v24 + 1.0, v25 + -2.0}];
  [v22 addCurveToPoint:v24 + 1.0 controlPoint1:v25 + 2.0 controlPoint2:{v24 + -0.5, v25, v24 + -0.5, v25}];
  [v22 addLineToPoint:{x + -1.5, y + -3.0}];
  [v22 addCurveToPoint:x controlPoint1:y + 6.0 controlPoint2:{x, y + 0.5, x, y + 0.5}];
}

- (double)_upAndDownStartingXLocationForBounds:(CGRect)a3
{
  width = a3.size.width;
  x = a3.origin.x;
  [objc_opt_class() arrowBase];
  v7 = v6 * 0.5;
  [objc_opt_class() arrowBase];
  v9 = x + width - v8;
  [(AMSUIPopoverShapeLayerView *)self arrowOffset];
  return fmin(fmax(x, x + width * 0.5 - fabs(v10) - v7), v9);
}

- (double)_leftAndRightStartYLocationForBounds:(CGRect)a3
{
  height = a3.size.height;
  y = a3.origin.y;
  v6 = a3.origin.y + a3.size.height;
  [objc_opt_class() arrowBase];
  v8 = v6 - v7;
  [(AMSUIPopoverShapeLayerView *)self arrowOffset];
  v10 = y + height * 0.5 - fabs(v9);
  [objc_opt_class() arrowBase];
  return fmin(fmax(y, v10 - v11 * 0.5), v8);
}

- (void)_updateShapeLayerPath
{
  v3 = [(AMSUIPopoverShapeLayerView *)self layer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [MEMORY[0x1E69DC728] bezierPath];
  [v12 setUsesEvenOddFillRule:1];
  [(AMSUIPopoverShapeLayerView *)self arrowOffset];
  v13 = [(AMSUIPopoverShapeLayerView *)self wouldPinForOffset:?];
  v14 = [(AMSUIPopoverShapeLayerView *)self arrowDirection];
  if (v14 - 1 < 2)
  {
    [(AMSUIPopoverShapeLayerView *)self arrowHeight];
    v21 = v7 + v20;
    [(AMSUIPopoverShapeLayerView *)self arrowHeight];
    v23 = v11 - v22;
    if (v13)
    {
      [(AMSUIPopoverShapeLayerView *)self _addRoundedRectExcludingTopLeftCornerForPath:v12 bounds:v5, v21, v9, v23];
    }

    else
    {
      [(AMSUIPopoverShapeLayerView *)self _addTopBottomRoundedRectWithGapForPath:v12 bounds:v5, v21, v9, v23];
    }

    [(AMSUIPopoverShapeLayerView *)self _upAndDownStartingXLocationForBounds:v5, v21, v9, v23];
    v34 = v33;
    [objc_opt_class() arrowBase];
    v36 = v34 + v35;
    [objc_opt_class() arrowBase];
    v38 = v34 + v37 * 0.5;
    [(AMSUIPopoverShapeLayerView *)self arrowHeight];
    [(AMSUIPopoverShapeLayerView *)self _addTopBottomArrowCurveForPath:v12 bounds:v13 startPoint:v5 endPoint:v21 peakPoint:v9 isPinned:v23, v34, v21, v36, v21, *&v38, v21 - v39];
    v51 = *(MEMORY[0x1E695EFD0] + 16);
    v53 = *MEMORY[0x1E695EFD0];
    *&v56.a = *MEMORY[0x1E695EFD0];
    *&v56.c = v51;
    v49 = *(MEMORY[0x1E695EFD0] + 32);
    *&v56.tx = v49;
    [(AMSUIPopoverShapeLayerView *)self arrowOffset];
    if (v40 >= 0.0)
    {
      *&v54.a = v53;
      *&v54.c = v51;
      *&v54.tx = v49;
      CGAffineTransformScale(&v55, &v54, -1.0, 1.0);
      CGAffineTransformTranslate(&v56, &v55, -v9, 0.0);
    }

    if ([(AMSUIPopoverShapeLayerView *)self arrowDirection]== 2)
    {
      v55 = v56;
      CGAffineTransformScale(&v54, &v55, 1.0, -1.0);
      [(AMSUIPopoverShapeLayerView *)self arrowHeight];
      CGAffineTransformTranslate(&v55, &v54, 0.0, -v23 - v41);
      v56 = v55;
    }

    v55 = v56;
    [v12 applyTransform:&v55];
  }

  else if (v14 == 4 || v14 == 8)
  {
    [(AMSUIPopoverShapeLayerView *)self arrowHeight];
    v16 = v5 + v15;
    [(AMSUIPopoverShapeLayerView *)self arrowHeight];
    v18 = v9 - v17;
    v19 = [MEMORY[0x1E69DC728] bezierPath];

    if (v13)
    {
      [(AMSUIPopoverShapeLayerView *)self _addRoundedRectExcludingTopLeftCornerForPath:v19 bounds:v16, v7, v18, v11];
    }

    else
    {
      [(AMSUIPopoverShapeLayerView *)self _addLeftRightRoundedRectWithGapForPath:v19 bounds:v16, v7, v18, v11];
    }

    [(AMSUIPopoverShapeLayerView *)self _leftAndRightStartYLocationForBounds:v16, v7, v18, v11];
    v25 = v24;
    [objc_opt_class() arrowBase];
    v27 = v25 + v26;
    [objc_opt_class() arrowBase];
    v29 = v25 + v28 * 0.5;
    [(AMSUIPopoverShapeLayerView *)self arrowHeight];
    [(AMSUIPopoverShapeLayerView *)self _addLeftRightArrowCurveForPath:v19 bounds:v13 startPoint:v16 endPoint:v7 peakPoint:v18 isPinned:v11, v16, v25, v16, v27, v16 - v30, *&v29];
    v50 = *(MEMORY[0x1E695EFD0] + 16);
    v52 = *MEMORY[0x1E695EFD0];
    *&v56.a = *MEMORY[0x1E695EFD0];
    *&v56.c = v50;
    v48 = *(MEMORY[0x1E695EFD0] + 32);
    *&v56.tx = v48;
    [(AMSUIPopoverShapeLayerView *)self arrowOffset];
    if (v31 >= 0.0)
    {
      *&v54.a = v52;
      *&v54.c = v50;
      *&v54.tx = v48;
      CGAffineTransformScale(&v55, &v54, 1.0, -1.0);
      CGAffineTransformTranslate(&v56, &v55, 0.0, -v11);
    }

    if ([(AMSUIPopoverShapeLayerView *)self arrowDirection]== 8)
    {
      [(AMSUIPopoverShapeLayerView *)self arrowHeight];
      v55 = v56;
      CGAffineTransformTranslate(&v54, &v55, v18 + v32, 0.0);
      CGAffineTransformScale(&v55, &v54, -1.0, 1.0);
      v56 = v55;
    }

    v55 = v56;
    [v19 applyTransform:&v55];
    v12 = v19;
  }

  else
  {
    [(AMSUIPopoverShapeLayerView *)self arrowHeight];
    v43 = v11 - v42;
    v44 = MEMORY[0x1E69DC728];
    [objc_opt_class() cornerRadius];
    v46 = [v44 bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v43, v45}];

    v12 = v46;
  }

  v47 = [(AMSUIPopoverShapeLayerMaskView *)self->_shapeLayerMaskView layer];
  [v47 setPath:{objc_msgSend(v12, "CGPath")}];
}

- (void)_loadNecessaryViews
{
  v3 = [(AMSUIPopoverShapeLayerView *)self viewToMaskWhenContentExtendsOverArrow];

  shapeLayerMaskView = self->_shapeLayerMaskView;
  if (v3)
  {
    v5 = [(AMSUIPopoverShapeLayerView *)self viewToMaskWhenContentExtendsOverArrow];
    [v5 setMaskView:shapeLayerMaskView];
  }

  else
  {
    [(AMSUIPopoverShapeLayerView *)self setMaskView:self->_shapeLayerMaskView];
  }

  [(AMSUIPopoverShapeLayerView *)self _updateShapeLayerPathIfNeeded];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = AMSUIPopoverShapeLayerView;
  [(AMSUIPopoverShapeLayerView *)&v5 didMoveToWindow];
  v3 = [(AMSUIPopoverShapeLayerView *)self window];

  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __45__AMSUIPopoverShapeLayerView_didMoveToWindow__block_invoke;
    v4[3] = &unk_1E7F242D0;
    v4[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
  }
}

- (UIView)viewToMaskWhenContentExtendsOverArrow
{
  WeakRetained = objc_loadWeakRetained(&self->_viewToMaskWhenContentExtendsOverArrow);

  return WeakRetained;
}

@end