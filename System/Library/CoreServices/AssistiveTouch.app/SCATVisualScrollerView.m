@interface SCATVisualScrollerView
+ (CGSize)scrollerSize;
- (BOOL)scatHidesGroupCursorWhenFocused;
- (BOOL)scatPerformAction:(int)a3;
- (BOOL)updateFocusState:(int64_t)a3;
- (SCATVisualScrollerView)initWithTriangle:(unint64_t)a3;
- (id)description;
- (void)layoutSubviews;
@end

@implementation SCATVisualScrollerView

- (SCATVisualScrollerView)initWithTriangle:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = SCATVisualScrollerView;
  v4 = [(SCATCustomFocusingView *)&v14 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    [(SCATVisualScrollerView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SCATVisualScrollerView *)v5 setTriangle:a3];
    v6 = [(SCATVisualScrollerView *)v5 layer];
    [v6 setMasksToBounds:1];

    v7 = +[CAShapeLayer layer];
    [v7 setLineWidth:1.0];
    v8 = [(SCATVisualScrollerView *)v5 triangleKnockoutLayer];
    [v8 setFillRule:kCAFillRuleEvenOdd];

    v9 = [(SCATVisualScrollerView *)v5 layer];
    [v9 addSublayer:v7];

    [(SCATVisualScrollerView *)v5 setTriangleKnockoutLayer:v7];
    [v7 setLineCap:kCALineCapRound];
    [v7 setLineJoin:kCALineJoinRound];
    v10 = +[CAShapeLayer layer];
    v11 = +[UIColor clearColor];
    [v10 setFillColor:{objc_msgSend(v11, "CGColor")}];

    v12 = [(SCATVisualScrollerView *)v5 layer];
    [v12 addSublayer:v10];

    [(SCATVisualScrollerView *)v5 setTriangleStrokeLayer:v10];
    [v10 setLineCap:kCALineCapRound];
    [v10 setLineJoin:kCALineJoinRound];
  }

  return v5;
}

- (id)description
{
  triangle = self->_triangle;
  if (triangle > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1001D3980[triangle];
  }

  [(SCATVisualScrollerView *)self frame];
  v5 = NSStringFromCGRect(v9);
  v6 = [NSString stringWithFormat:@"SCATVisualScrollerView: %p. %@. frame:%@ ", self, v4, v5];

  return v6;
}

+ (CGSize)scrollerSize
{
  v2 = 20.0;
  v3 = 20.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = SCATVisualScrollerView;
  [(SCATVisualScrollerView *)&v53 layoutSubviews];
  [(SCATVisualScrollerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SCATVisualScrollerView *)self triangleKnockoutLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(SCATVisualScrollerView *)self triangleStrokeLayer];
  [v12 setFrame:{v4, v6, v8, v10}];

  if (v8 >= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  v14 = [UIBezierPath bezierPathWithRect:v4, v6, v8, v10];
  v15 = +[UIBezierPath bezierPath];
  v16 = v13 * 0.5 + -4.0;
  v17 = [(SCATVisualScrollerView *)self triangle];
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v72.size.width = v16 + v16;
      v72.origin.x = 4.0;
      v72.origin.y = 0.0;
      v72.size.height = v16 * 1.73205081;
      v73 = CGRectIntegral(v72);
      x = v73.origin.x;
      width = v73.size.width;
      height = v73.size.height;
      v45 = v10 - v73.size.height + -4.0;
      v73.origin.y = v45;
      MinX = CGRectGetMinX(v73);
      v74.origin.x = x;
      v74.origin.y = v45;
      v74.size.width = width;
      v74.size.height = height;
      [v15 moveToPoint:{MinX, CGRectGetMinY(v74)}];
      v75.origin.x = x;
      v75.origin.y = v45;
      v75.size.width = width;
      v75.size.height = height;
      MidX = CGRectGetMidX(v75);
      v76.origin.x = x;
      v76.origin.y = v45;
      v76.size.width = width;
      v76.size.height = height;
      [v15 addLineToPoint:{MidX, CGRectGetMaxY(v76)}];
      v77.origin.x = x;
      v77.origin.y = v45;
      v77.size.width = width;
      v77.size.height = height;
      MaxX = CGRectGetMaxX(v77);
      v78.origin.x = x;
      v78.origin.y = v45;
      v78.size.width = width;
      v78.size.height = height;
      MinY = CGRectGetMinY(v78);
      goto LABEL_14;
    }

    if (v17 == 3)
    {
      v60.size.width = v16 + v16;
      v60.origin.x = 4.0;
      v60.origin.y = 4.0;
      v60.size.height = v16 * 1.73205081;
      v61 = CGRectIntegral(v60);
      v29 = v61.origin.x;
      y = v61.origin.y;
      v31 = v61.size.width;
      v32 = v61.size.height;
      v61.size.width = v61.size.height;
      v61.size.height = v31;
      v33 = CGRectGetMinX(v61);
      v62.origin.x = v29;
      v62.origin.y = y;
      v62.size.width = v32;
      v62.size.height = v31;
      [v15 moveToPoint:{v33, CGRectGetMidY(v62)}];
      v63.origin.x = v29;
      v63.origin.y = y;
      v63.size.width = v32;
      v63.size.height = v31;
      v34 = CGRectGetMaxX(v63);
      v64.origin.x = v29;
      v64.origin.y = y;
      v64.size.width = v32;
      v64.size.height = v31;
      [v15 addLineToPoint:{v34, CGRectGetMinY(v64)}];
      v65.origin.x = v29;
      v65.origin.y = y;
      v65.size.width = v32;
      v65.size.height = v31;
      MaxX = CGRectGetMaxX(v65);
      v25 = v29;
      v26 = y;
      v27 = v32;
      v28 = v31;
      goto LABEL_12;
    }
  }

  else
  {
    if (!v17)
    {
      v66.size.width = v16 + v16;
      v66.origin.x = 4.0;
      v66.origin.y = 4.0;
      v66.size.height = v16 * 1.73205081;
      v67 = CGRectIntegral(v66);
      v35 = v67.origin.x;
      v36 = v67.origin.y;
      v37 = v67.size.width;
      v38 = v67.size.height;
      v39 = CGRectGetMinX(v67);
      v68.origin.x = v35;
      v68.origin.y = v36;
      v68.size.width = v37;
      v68.size.height = v38;
      [v15 moveToPoint:{v39, CGRectGetMaxY(v68)}];
      v69.origin.x = v35;
      v69.origin.y = v36;
      v69.size.width = v37;
      v69.size.height = v38;
      v40 = CGRectGetMidX(v69);
      v70.origin.x = v35;
      v70.origin.y = v36;
      v70.size.width = v37;
      v70.size.height = v38;
      [v15 addLineToPoint:{v40, CGRectGetMinY(v70)}];
      v71.origin.x = v35;
      v71.origin.y = v36;
      v71.size.width = v37;
      v71.size.height = v38;
      MaxX = CGRectGetMaxX(v71);
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v28 = v38;
      goto LABEL_12;
    }

    if (v17 == 1)
    {
      v54.size.width = v16 + v16;
      v54.origin.x = 0.0;
      v54.origin.y = 4.0;
      v54.size.height = v16 * 1.73205081;
      v55 = CGRectIntegral(v54);
      v18 = v55.origin.y;
      v19 = v55.size.width;
      v20 = v55.size.height;
      v21 = v8 - v55.size.width + -4.0;
      v55.origin.x = v21;
      v55.size.width = v55.size.height;
      v55.size.height = v19;
      v22 = CGRectGetMinX(v55);
      v56.origin.x = v21;
      v56.origin.y = v18;
      v56.size.width = v20;
      v56.size.height = v19;
      [v15 moveToPoint:{v22, CGRectGetMinY(v56)}];
      v57.origin.x = v21;
      v57.origin.y = v18;
      v57.size.width = v20;
      v57.size.height = v19;
      v23 = CGRectGetMaxX(v57);
      v58.origin.x = v21;
      v58.origin.y = v18;
      v58.size.width = v20;
      v58.size.height = v19;
      [v15 addLineToPoint:{v23, CGRectGetMidY(v58)}];
      v59.origin.x = v21;
      v59.origin.y = v18;
      v59.size.width = v20;
      v59.size.height = v19;
      MaxX = CGRectGetMinX(v59);
      v25 = v21;
      v26 = v18;
      v27 = v20;
      v28 = v19;
LABEL_12:
      MinY = CGRectGetMaxY(*&v25);
LABEL_14:
      [v15 addLineToPoint:{MaxX, MinY}];
      [v15 closePath];
    }
  }

  [v14 appendPath:v15];
  [v14 setUsesEvenOddFillRule:1];
  v48 = [(SCATVisualScrollerView *)self triangleKnockoutLayer];
  [v48 setFillRule:kCAFillRuleEvenOdd];

  v49 = [v14 CGPath];
  v50 = [(SCATVisualScrollerView *)self triangleKnockoutLayer];
  [v50 setPath:v49];

  v51 = [v15 CGPath];
  v52 = [(SCATVisualScrollerView *)self triangleStrokeLayer];
  [v52 setPath:v51];
}

- (BOOL)updateFocusState:(int64_t)a3
{
  v28.receiver = self;
  v28.super_class = SCATVisualScrollerView;
  v5 = [(SCATCustomFocusingView *)&v28 updateFocusState:?];
  if (!v5)
  {
    return v5;
  }

  switch(a3)
  {
    case 0:
      v17 = +[UIColor clearColor];
      v18 = [v17 CGColor];
      v19 = [(SCATVisualScrollerView *)self triangleKnockoutLayer];
      [v19 setFillColor:v18];

      v16 = [objc_opt_class() unfocusedStateColor];
      goto LABEL_8;
    case 2:
      v13 = +[UIColor clearColor];
      v14 = [v13 CGColor];
      v15 = [(SCATVisualScrollerView *)self triangleKnockoutLayer];
      [v15 setFillColor:v14];

      v16 = [objc_opt_class() focusedGroupStateColor];
LABEL_8:
      v20 = v16;
      v21 = [v16 CGColor];
      v22 = [(SCATVisualScrollerView *)self triangleStrokeLayer];
      [v22 setStrokeColor:v21];

      [objc_opt_class() unfocusedStateBorderThickness];
      v24 = v23;
      v9 = [(SCATVisualScrollerView *)self triangleStrokeLayer];
      [v9 setLineWidth:v24];
      v12 = 0.4;
      goto LABEL_9;
    case 1:
      v6 = [objc_opt_class() focusedStateColor];
      v7 = [v6 CGColor];
      v8 = [(SCATVisualScrollerView *)self triangleKnockoutLayer];
      [v8 setFillColor:v7];

      v9 = +[UIColor clearColor];
      v10 = [v9 CGColor];
      v11 = [(SCATVisualScrollerView *)self triangleStrokeLayer];
      [v11 setStrokeColor:v10];

      v12 = 1.0;
LABEL_9:

      v25 = [(SCATVisualScrollerView *)self triangleStrokeLayer];
      *&v26 = v12;
      [v25 setOpacity:v26];

      break;
  }

  return v5;
}

- (BOOL)scatPerformAction:(int)a3
{
  v3 = *&a3;
  v5 = [(SCATVisualScrollerView *)self activateActionHandler];

  if (v5)
  {
    v6 = [(SCATVisualScrollerView *)self activateActionHandler];
    v6[2]();

    return 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SCATVisualScrollerView;
    return [(SCATVisualScrollerView *)&v8 scatPerformAction:v3];
  }
}

- (BOOL)scatHidesGroupCursorWhenFocused
{
  v3 = [(SCATVisualScrollerView *)self scatAuxiliaryElementManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  result = 0;
  if (isKindOfClass)
  {
    v5 = [(SCATVisualScrollerView *)self scatAuxiliaryElementManager];
    v6 = [v5 isTopLevel];

    if (v6)
    {
      return 1;
    }
  }

  return result;
}

@end