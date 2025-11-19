@interface BKPageAnimation
- (BKPageAnimationDelegate)pageAnimationDelegate;
@end

@implementation BKPageAnimation

- (BKPageAnimationDelegate)pageAnimationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pageAnimationDelegate);

  return WeakRetained;
}

@end