@interface UIWindow
- (id)im_ancestorConformingToProtocol:(id)protocol;
@end

@implementation UIWindow

- (id)im_ancestorConformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  windowScene = [(UIWindow *)self windowScene];
  delegate = [windowScene delegate];
  if (![delegate conformsToProtocol:protocolCopy] || (controller = delegate) == 0)
  {
    objc_opt_class();
    v8 = BUDynamicCast();
    controller = [v8 controller];
    if (([controller conformsToProtocol:protocolCopy] & 1) == 0)
    {

LABEL_7:
      v9 = +[UIApplication jsa_sharedApplicationIfNotExtension];
      delegate2 = [v9 delegate];

      if ([delegate2 conformsToProtocol:protocolCopy])
      {
        controller = delegate2;
      }

      else
      {
        controller = 0;
      }

      goto LABEL_11;
    }

    if (!controller)
    {
      goto LABEL_7;
    }
  }

LABEL_11:

  return controller;
}

@end