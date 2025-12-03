@interface QLErrorView
- (QLErrorView)initWithTitle:(id)title;
@end

@implementation QLErrorView

- (QLErrorView)initWithTitle:(id)title
{
  v4 = MEMORY[0x277D75390];
  titleCopy = title;
  emptyConfiguration = [v4 emptyConfiguration];
  [emptyConfiguration setText:titleCopy];

  v9.receiver = self;
  v9.super_class = QLErrorView;
  v7 = [(UIContentUnavailableView *)&v9 initWithConfiguration:emptyConfiguration];

  return v7;
}

@end