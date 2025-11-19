@interface AUViewController
- (void)beginRequestWithExtensionContext:(id)a3;
@end

@implementation AUViewController

- (void)beginRequestWithExtensionContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = AUViewController;
  v4 = a3;
  [(AUViewController *)&v5 beginRequestWithExtensionContext:v4];
  [(AUViewController *)self setContext:v4, v5.receiver, v5.super_class];
}

@end