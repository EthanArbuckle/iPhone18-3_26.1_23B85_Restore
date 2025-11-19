@interface UIScrollView
- (void)scrollToTopAnimated:(BOOL)a3;
@end

@implementation UIScrollView

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  [(UIScrollView *)self contentOffset];
  v6 = v5;
  [(UIScrollView *)self adjustedContentInset];

  [(UIScrollView *)self setContentOffset:v3 animated:v6, -v7];
}

@end