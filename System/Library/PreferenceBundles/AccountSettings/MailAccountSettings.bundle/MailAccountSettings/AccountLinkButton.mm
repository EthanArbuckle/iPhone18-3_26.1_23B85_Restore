@interface AccountLinkButton
- (AccountLinkButton)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation AccountLinkButton

- (AccountLinkButton)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = AccountLinkButton;
  v3 = [(AccountLinkButton *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    titleLabel = [(AccountLinkButton *)v3 titleLabel];
    [titleLabel setShadowOffset:{0.0, 1.0}];

    v6 = [UIFont boldSystemFontOfSize:16.0];
    titleLabel2 = [(AccountLinkButton *)v4 titleLabel];
    [titleLabel2 setFont:v6];

    v8 = [UIColor colorWithRed:0.298039228 green:0.337254912 blue:0.423529416 alpha:1.0];
    [(AccountLinkButton *)v4 setTitleColor:v8 forState:0];

    v9 = +[UIColor whiteColor];
    [(AccountLinkButton *)v4 setTitleShadowColor:v9 forState:0];

    v10 = +[UIColor whiteColor];
    [(AccountLinkButton *)v4 setTitleColor:v10 forState:1];

    v11 = +[UIColor clearColor];
    [(AccountLinkButton *)v4 setTitleShadowColor:v11 forState:1];
  }

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = AccountLinkButton;
  [(AccountLinkButton *)&v4 setHighlighted:highlighted];
  [(AccountLinkButton *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  [(AccountLinkButton *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(AccountLinkButton *)self isHighlighted])
  {
    v12 = [UIColor colorWithWhite:0.0 alpha:0.400000006];
    [v12 set];

    v13 = [UIBezierPath roundedRectBezierPath:-1 withRoundedCorners:v5 withCornerRadius:v7, v9, v11, 4.0];
    [v13 fill];
  }

  CurrentContext = UIGraphicsGetCurrentContext();
  state = [(AccountLinkButton *)self state];
  v16 = [(AccountLinkButton *)self titleColorForState:state];
  [v16 set];

  [(AccountLinkButton *)self contentRectForBounds:v5, v7, v9, v11];
  [(AccountLinkButton *)self titleRectForContentRect:?];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v22 = CGRectGetMaxY(v31) + -2.0;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v23 = CGRectGetWidth(v32);
  v33.size.height = 1.0;
  v33.origin.x = MinX;
  v33.origin.y = v22;
  v33.size.width = v23;
  CGContextFillRect(CurrentContext, v33);
  v24 = [(AccountLinkButton *)self titleShadowColorForState:state];
  [v24 set];

  v26 = 1.0;
  v27 = MinX;
  v28 = v23;

  v25 = v22 + 1.0;
  CGContextFillRect(CurrentContext, *&v27);
}

@end