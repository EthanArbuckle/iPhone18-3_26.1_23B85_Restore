@interface RowSeparatorView
- (void)tintColorDidChange;
@end

@implementation RowSeparatorView

- (void)tintColorDidChange
{
  if ([(RowSeparatorView *)self vibrant])
  {
    tintColor = [(RowSeparatorView *)self tintColor];
    [(RowSeparatorView *)self setBackgroundColor:tintColor];
  }
}

@end