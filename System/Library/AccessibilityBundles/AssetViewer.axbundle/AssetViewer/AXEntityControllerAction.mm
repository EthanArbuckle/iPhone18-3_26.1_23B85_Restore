@interface AXEntityControllerAction
- (id)entityController;
@end

@implementation AXEntityControllerAction

- (id)entityController
{
  WeakRetained = objc_loadWeakRetained(&self->_entityController);

  return WeakRetained;
}

@end