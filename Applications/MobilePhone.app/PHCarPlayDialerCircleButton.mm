@interface PHCarPlayDialerCircleButton
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)drawRect:(CGRect)rect;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image forState:(unint64_t)state;
- (void)setSelected:(BOOL)selected;
@end

@implementation PHCarPlayDialerCircleButton

- (void)drawRect:(CGRect)rect
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

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = PHCarPlayDialerCircleButton;
  [(PHCarPlayDialerCircleButton *)&v4 setSelected:selected];
  [(PHCarPlayDialerCircleButton *)self setNeedsDisplay];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = PHCarPlayDialerCircleButton;
  [(PHCarPlayDialerCircleButton *)&v4 setHighlighted:highlighted];
  [(PHCarPlayDialerCircleButton *)self setNeedsDisplay];
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  v7 = +[UIColor whiteColor];
  v8 = [imageCopy _flatImageWithColor:v7];

  v9.receiver = self;
  v9.super_class = PHCarPlayDialerCircleButton;
  [(PHCarPlayDialerCircleButton *)&v9 setImage:v8 forState:state];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  [(PHCarPlayDialerCircleButton *)self setSelected:nextFocusedItem == self];
}

@end