@interface RowSeparatorView
- (void)tintColorDidChange;
@end

@implementation RowSeparatorView

- (void)tintColorDidChange
{
  if ([(RowSeparatorView *)self vibrant])
  {
    v3 = [(RowSeparatorView *)self tintColor];
    [(RowSeparatorView *)self setBackgroundColor:v3];
  }
}

@end