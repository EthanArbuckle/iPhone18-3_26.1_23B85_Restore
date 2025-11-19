@interface AMPButton
- (AMPButton)initWithFrame:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation AMPButton

- (AMPButton)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = AMPButton;
  v3 = [(AMPButton *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(AMPButton *)v3 tintColor];
    [(AMPButton *)v4 setBackgroundColor:v5];

    v6 = [(AMPButton *)v4 layer];
    [v6 setCornerRadius:8.0];

    [(AMPButton *)v4 setClipsToBounds:1];
    v7 = [MEMORY[0x277D75348] whiteColor];
    [(AMPButton *)v4 setTitleColor:v7 forState:0];
  }

  return v4;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = AMPButton;
  [(AMPButton *)&v4 tintColorDidChange];
  v3 = [(AMPButton *)self tintColor];
  [(AMPButton *)self setBackgroundColor:v3];
}

@end