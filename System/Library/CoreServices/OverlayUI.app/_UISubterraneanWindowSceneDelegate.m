@interface _UISubterraneanWindowSceneDelegate
- (id)rootViewController;
@end

@implementation _UISubterraneanWindowSceneDelegate

- (id)rootViewController
{
  rootViewController = self->_rootViewController;
  if (!rootViewController)
  {
    v4 = [[_UIOSubterraneanViewController alloc] initWithNibName:0 bundle:0];
    v5 = self->_rootViewController;
    self->_rootViewController = v4;

    rootViewController = self->_rootViewController;
  }

  return rootViewController;
}

@end