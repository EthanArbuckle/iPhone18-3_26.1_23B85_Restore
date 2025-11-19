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

  v3 = [(_SearchResultChildItemGridView *)self subviews];
  [v3 makeObjectsPerformSelector:"removeFromSuperview"];
}

@end