@interface QLErrorView
- (QLErrorView)initWithTitle:(id)a3;
@end

@implementation QLErrorView

- (QLErrorView)initWithTitle:(id)a3
{
  v4 = MEMORY[0x277D75390];
  v5 = a3;
  v6 = [v4 emptyConfiguration];
  [v6 setText:v5];

  v9.receiver = self;
  v9.super_class = QLErrorView;
  v7 = [(UIContentUnavailableView *)&v9 initWithConfiguration:v6];

  return v7;
}

@end