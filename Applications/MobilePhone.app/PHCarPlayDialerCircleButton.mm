@interface PHCarPlayDialerCircleButton
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)drawRect:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
- (void)setSelected:(BOOL)a3;
@end

@implementation PHCarPlayDialerCircleButton

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  if ([(PHCarPlayDialerCircleButton *)self isHighlighted])
  {
    +[UIColor systemDarkGreenColor];
  }

  else
  {
    +[UIColor systemGreenColor];
  }
  v5 = ;
  [v5 set];

  if ([(PHCarPlayDialerCircleButton *)self isSelected])
  {
    CGContextSetLineWidth(CurrentContext, 0.0);
    v17.size.width = 42.0;
    v17.origin.x = 5.0;
    v17.origin.y = 5.0;
    v17.size.height = 42.0;
    CGContextFillEllipseInRect(CurrentContext, v17);
    v6 = +[UIColor clearColor];
    [v6 set];

    v7 = +[UIColor dynamicCarFocusedColor];
    [v7 setStroke];

    CGContextSetLineWidth(CurrentContext, 3.0);
    v8 = 0x4048800000000000;
    v9 = 1.5;
    v10 = 1.5;
    v11 = 0x4048800000000000;

    CGContextStrokeEllipseInRect(CurrentContext, *&v9);
  }

  else
  {
    v12 = 0x404A000000000000;
    v13 = 0;
    v14 = 0;
    v15 = 0x404A000000000000;

    CGContextFillEllipseInRect(CurrentContext, *&v13);
  }
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PHCarPlayDialerCircleButton;
  [(PHCarPlayDialerCircleButton *)&v4 setSelected:a3];
  [(PHCarPlayDialerCircleButton *)self setNeedsDisplay];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PHCarPlayDialerCircleButton;
  [(PHCarPlayDialerCircleButton *)&v4 setHighlighted:a3];
  [(PHCarPlayDialerCircleButton *)self setNeedsDisplay];
}

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = +[UIColor whiteColor];
  v8 = [v6 _flatImageWithColor:v7];

  v9.receiver = self;
  v9.super_class = PHCarPlayDialerCircleButton;
  [(PHCarPlayDialerCircleButton *)&v9 setImage:v8 forState:a4];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];
  [(PHCarPlayDialerCircleButton *)self setSelected:v5 == self];
}

@end