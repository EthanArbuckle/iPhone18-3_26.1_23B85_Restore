@interface UIScrollView
- (void)scrollToTopAnimated:(BOOL)animated;
@end

@implementation UIScrollView

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(UIScrollView *)self contentOffset];
  v6 = v5;
  [(UIScrollView *)self adjustedContentInset];

  [(UIScrollView *)self setContentOffset:animatedCopy animated:v6, -v7];
}

@end