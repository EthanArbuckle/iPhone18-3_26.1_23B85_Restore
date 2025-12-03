@interface AUViewController
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation AUViewController

- (void)beginRequestWithExtensionContext:(id)context
{
  v5.receiver = self;
  v5.super_class = AUViewController;
  contextCopy = context;
  [(AUViewController *)&v5 beginRequestWithExtensionContext:contextCopy];
  [(AUViewController *)self setContext:contextCopy, v5.receiver, v5.super_class];
}

@end