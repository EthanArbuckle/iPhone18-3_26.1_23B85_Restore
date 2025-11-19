@interface SecureViewController
- (SecureViewController)init;
@end

@implementation SecureViewController

- (SecureViewController)init
{
  v3.receiver = self;
  v3.super_class = SecureViewController;
  return [(SecureViewController *)&v3 init];
}

@end