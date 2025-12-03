@interface AMPButton
- (AMPButton)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation AMPButton

- (AMPButton)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = AMPButton;
  v3 = [(AMPButton *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    tintColor = [(AMPButton *)v3 tintColor];
    [(AMPButton *)v4 setBackgroundColor:tintColor];

    layer = [(AMPButton *)v4 layer];
    [layer setCornerRadius:8.0];

    [(AMPButton *)v4 setClipsToBounds:1];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(AMPButton *)v4 setTitleColor:whiteColor forState:0];
  }

  return v4;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = AMPButton;
  [(AMPButton *)&v4 tintColorDidChange];
  tintColor = [(AMPButton *)self tintColor];
  [(AMPButton *)self setBackgroundColor:tintColor];
}

@end