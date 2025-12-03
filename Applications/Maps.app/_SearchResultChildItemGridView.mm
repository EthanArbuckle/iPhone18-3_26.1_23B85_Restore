@interface _SearchResultChildItemGridView
- (void)removeAllArrangedSubviews;
@end

@implementation _SearchResultChildItemGridView

- (void)removeAllArrangedSubviews
{
  if ([(_SearchResultChildItemGridView *)self numberOfRows]>= 1)
  {
    do
    {
      [(_SearchResultChildItemGridView *)self removeRowAtIndex:0];
    }

    while ([(_SearchResultChildItemGridView *)self numberOfRows]> 0);
  }

  subviews = [(_SearchResultChildItemGridView *)self subviews];
  [subviews makeObjectsPerformSelector:"removeFromSuperview"];
}

@end