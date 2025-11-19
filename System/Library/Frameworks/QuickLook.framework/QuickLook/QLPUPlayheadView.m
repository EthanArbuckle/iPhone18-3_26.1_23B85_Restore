@interface QLPUPlayheadView
- (QLPUPlayheadView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation QLPUPlayheadView

- (QLPUPlayheadView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = QLPUPlayheadView;
  v3 = [(QLPUPlayheadView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(QLPUPlayheadView *)v3 setBackgroundColor:v4];

    [(QLPUPlayheadView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  CGContextClipToRect(CurrentContext, v32);
  [(QLPUPlayheadView *)self bounds];
  v9 = v33.origin.x;
  v10 = v33.origin.y;
  v11 = v33.size.width;
  v12 = v33.size.height;
  v13 = (CGRectGetWidth(v33) + -2.0) * 0.5;
  v34.origin.x = v9;
  v34.origin.y = v10;
  v34.size.width = v11;
  v34.size.height = v12;
  v14 = CGRectGetMinY(v34) + 2.0;
  v35.origin.x = v9;
  v35.origin.y = v10;
  v35.size.width = v11;
  v35.size.height = v12;
  v15 = CGRectGetHeight(v35) + -4.0;
  v16 = [(QLPUPlayheadView *)self traitCollection];
  [v16 displayScale];
  v18 = v17;
  v36.size.width = 2.0;
  v36.origin.x = v13;
  v36.origin.y = v14;
  v36.size.height = v15;
  v19 = round(v18 * CGRectGetMaxX(v36)) / v18;
  v37.size.width = 2.0;
  v37.origin.x = v13;
  v37.origin.y = v14;
  v37.size.height = v15;
  v20 = round(v18 * CGRectGetMaxY(v37)) / v18;
  v21 = round(v13 * v18) / v18;
  v22 = round(v14 * v18) / v18;
  v23 = v19 - v21;
  v24 = v20 - v22;

  v38.origin.x = v21;
  v38.origin.y = v22;
  v38.size.width = v23;
  v38.size.height = v24;
  v39 = CGRectInset(v38, -1.5, -1.5);
  v30 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v39.origin.x cornerRadius:{v39.origin.y, v39.size.width, v39.size.height, 2.5}];
  v25 = v30;
  CGContextAddPath(CurrentContext, [v30 CGPath]);
  v26 = [MEMORY[0x277D75348] blackColor];
  v27 = [v26 colorWithAlphaComponent:0.400000006];
  CGContextSetFillColorWithColor(CurrentContext, [v27 CGColor]);

  CGContextDrawPath(CurrentContext, kCGPathFill);
  v28 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v21 cornerRadius:{v22, v23, v24, 1.0}];
  CGContextAddPath(CurrentContext, [v28 CGPath]);
  v29 = [MEMORY[0x277D75348] whiteColor];
  CGContextSetFillColorWithColor(CurrentContext, [v29 CGColor]);

  CGContextDrawPath(CurrentContext, kCGPathFill);
  CGContextRestoreGState(CurrentContext);
}

@end