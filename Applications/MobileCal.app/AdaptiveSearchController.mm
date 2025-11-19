@interface AdaptiveSearchController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation AdaptiveSearchController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(AdaptiveSearchController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 interfaceOrientation];

  return 1 << v5;
}

@end