@interface AFUIASPCoverView
+ (double)screenScale;
- (id)initCoverViewWithFrame:(CGRect)frame isRightToLeft:(BOOL)left withTextWidth:(double)width;
- (void)layoutSubviews;
@end

@implementation AFUIASPCoverView

+ (double)screenScale
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  return v4;
}

- (id)initCoverViewWithFrame:(CGRect)frame isRightToLeft:(BOOL)left withTextWidth:(double)width
{
  leftCopy = left;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v55[2] = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = AFUIASPCoverView;
  v11 = [(AFUIASPCoverView *)&v52 initWithFrame:?];
  p_isa = &v11->super.super.super.isa;
  if (v11)
  {
    [(AFUIASPCoverView *)v11 setUserInteractionEnabled:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    cGColor = [clearColor CGColor];
    layer = [p_isa layer];
    [layer setBackgroundColor:cGColor];

    layer2 = [MEMORY[0x1E6979380] layer];
    v17 = p_isa[51];
    p_isa[51] = layer2;

    [objc_opt_class() screenScale];
    if (v18 == 3.0)
    {
      v19 = 4.0;
    }

    else
    {
      v19 = 6.0;
    }

    [p_isa bounds];
    v51 = v19;
    v21 = v20 - v19;
    [p_isa bounds];
    [p_isa[51] setFrame:{0.0, 0.0, v21}];
    v22 = [MEMORY[0x1E69DC888] colorWithRed:0.980392157 green:1.0 blue:0.741176471 alpha:0.0];
    v55[0] = [v22 CGColor];
    v23 = [MEMORY[0x1E69DC888] colorWithRed:0.980392157 green:1.0 blue:0.741176471 alpha:1.0];
    v55[1] = [v23 CGColor];
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];

    [p_isa[51] setColors:v24];
    [p_isa[51] frame];
    v25 = CGRectGetWidth(v56);
    v26 = 0.45;
    if (v25 * 0.45 <= width)
    {
      v27 = 0.1;
    }

    else
    {
      v27 = width * 0.1 / v25;
      v26 = width * 0.65 / v25;
    }

    v28 = 1.0 - v27;
    if (!leftCopy)
    {
      v28 = v27;
    }

    v29 = 1.0 - v26;
    if (leftCopy)
    {
      v30 = 1.0 - v26;
    }

    else
    {
      v30 = v26;
    }

    [p_isa[51] setStartPoint:{v28, 0.0}];
    [p_isa[51] setEndPoint:{v30, 0.0}];
    layer3 = [p_isa layer];
    [layer3 addSublayer:p_isa[51]];

    v32 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"Strong Password" value:@"Automatic Strong Password cover view text" table:0];

    v34 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0 weight:*MEMORY[0x1E69DB970]];
    v35 = *MEMORY[0x1E69DB648];
    v54[0] = v34;
    v36 = *MEMORY[0x1E69DB650];
    v53[0] = v35;
    v53[1] = v36;
    v37 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8];
    v54[1] = v37;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];

    [v33 sizeWithAttributes:v38];
    v40 = v39;
    [p_isa[51] frame];
    v41 = v29 * CGRectGetWidth(v57);
    if (v40 < v41)
    {
      v42 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v33 attributes:v38];
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      v43 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, v41, CGRectGetHeight(v58)}];
      [v43 setUserInteractionEnabled:0];
      [v43 setAttributedText:v42];
      [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
      [p_isa addSubview:v43];
      array = [MEMORY[0x1E695DF70] array];
      if (leftCopy)
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }

      v46 = -v51;
      if (leftCopy)
      {
        v46 = leftCopy;
      }

      v47 = [MEMORY[0x1E696ACD8] constraintWithItem:v43 attribute:v45 relatedBy:0 toItem:p_isa attribute:v45 multiplier:1.0 constant:v46];
      [array addObject:v47];

      v48 = [MEMORY[0x1E696ACD8] constraintWithItem:v43 attribute:10 relatedBy:0 toItem:p_isa attribute:10 multiplier:1.0 constant:0.0];
      [array addObject:v48];

      [MEMORY[0x1E696ACD8] activateConstraints:array];
    }
  }

  v49 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = AFUIASPCoverView;
  [(AFUIASPCoverView *)&v10 layoutSubviews];
  [objc_opt_class() screenScale];
  if (v3 == 3.0)
  {
    v4 = 4.0;
  }

  else
  {
    v4 = 6.0;
  }

  [(AFUIASPCoverView *)self bounds];
  v6 = v5 - v4;
  [(AFUIASPCoverView *)self bounds];
  v8 = v7;
  gradientLayer = [(AFUIASPCoverView *)self gradientLayer];
  [gradientLayer setFrame:{0.0, 0.0, v6, v8}];
}

@end