@interface THOffscreenLayoutController
- (id)ancestorLayoutOfLayout:(id)layout orDelegateConformingToProtocol:(id)protocol;
@end

@implementation THOffscreenLayoutController

- (id)ancestorLayoutOfLayout:(id)layout orDelegateConformingToProtocol:(id)protocol
{
  v7.receiver = self;
  v7.super_class = THOffscreenLayoutController;
  result = [(THOffscreenLayoutController *)&v7 ancestorLayoutOfLayout:layout orDelegateConformingToProtocol:?];
  if (!result)
  {
    if ([self->_delegate conformsToProtocol:protocol])
    {
      return self->_delegate;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end