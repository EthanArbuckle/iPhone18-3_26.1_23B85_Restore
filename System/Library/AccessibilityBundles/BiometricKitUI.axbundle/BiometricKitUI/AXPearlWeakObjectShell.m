@interface AXPearlWeakObjectShell
- (id)weakObjectReference;
- (id)weakSpatialProfileReference;
@end

@implementation AXPearlWeakObjectShell

- (id)weakObjectReference
{
  WeakRetained = objc_loadWeakRetained(&self->_weakObjectReference);

  return WeakRetained;
}

- (id)weakSpatialProfileReference
{
  WeakRetained = objc_loadWeakRetained(&self->_weakSpatialProfileReference);

  return WeakRetained;
}

@end