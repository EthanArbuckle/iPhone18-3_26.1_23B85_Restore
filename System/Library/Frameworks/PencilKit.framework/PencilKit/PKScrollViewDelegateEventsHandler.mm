@interface PKScrollViewDelegateEventsHandler
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
@end

@implementation PKScrollViewDelegateEventsHandler

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v6 = a3;
  v4 = [(PKScrollViewDelegateEventsHandler *)self scrollViewDidEndScrollingAnimationHandler];

  if (v4)
  {
    v5 = [(PKScrollViewDelegateEventsHandler *)self scrollViewDidEndScrollingAnimationHandler];
    (v5)[2](v5, self, v6);
  }
}

@end