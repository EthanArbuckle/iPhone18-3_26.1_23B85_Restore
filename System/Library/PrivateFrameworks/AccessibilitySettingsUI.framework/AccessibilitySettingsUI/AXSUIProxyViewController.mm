@interface AXSUIProxyViewController
- (AXSUIProxyViewController)init;
@end

@implementation AXSUIProxyViewController

- (AXSUIProxyViewController)init
{
  makeController = [(AXSUIProxyViewController *)self makeController];

  return makeController;
}

@end