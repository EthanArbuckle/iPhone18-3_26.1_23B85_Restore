@interface PKScrollViewDelegateEventsHandler
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
@end

@implementation PKScrollViewDelegateEventsHandler

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  scrollViewDidEndScrollingAnimationHandler = [(PKScrollViewDelegateEventsHandler *)self scrollViewDidEndScrollingAnimationHandler];

  if (scrollViewDidEndScrollingAnimationHandler)
  {
    scrollViewDidEndScrollingAnimationHandler2 = [(PKScrollViewDelegateEventsHandler *)self scrollViewDidEndScrollingAnimationHandler];
    (scrollViewDidEndScrollingAnimationHandler2)[2](scrollViewDidEndScrollingAnimationHandler2, self, animationCopy);
  }
}

@end