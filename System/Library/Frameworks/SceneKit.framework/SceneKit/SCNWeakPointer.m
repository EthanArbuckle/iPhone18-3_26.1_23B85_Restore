@interface SCNWeakPointer
- (id)weakRef;
@end

@implementation SCNWeakPointer

- (id)weakRef
{
  WeakRetained = objc_loadWeakRetained(&self->weakRef);

  return WeakRetained;
}

@end