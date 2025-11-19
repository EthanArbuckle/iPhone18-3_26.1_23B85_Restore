@interface BEAccessibilityRemoteHostElement
- (id)accessibilityContainer;
@end

@implementation BEAccessibilityRemoteHostElement

- (id)accessibilityContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityContainer);

  return WeakRetained;
}

@end