@interface THOffscreenLayoutController
- (id)ancestorLayoutOfLayout:(id)a3 orDelegateConformingToProtocol:(id)a4;
@end

@implementation THOffscreenLayoutController

- (id)ancestorLayoutOfLayout:(id)a3 orDelegateConformingToProtocol:(id)a4
{
  v7.receiver = self;
  v7.super_class = THOffscreenLayoutController;
  result = [(THOffscreenLayoutController *)&v7 ancestorLayoutOfLayout:a3 orDelegateConformingToProtocol:?];
  if (!result)
  {
    if ([self->_delegate conformsToProtocol:a4])
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