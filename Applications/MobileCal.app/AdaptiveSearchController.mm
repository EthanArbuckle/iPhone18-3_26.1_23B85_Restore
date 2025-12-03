@interface AdaptiveSearchController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation AdaptiveSearchController

- (unint64_t)supportedInterfaceOrientations
{
  view = [(AdaptiveSearchController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return 1 << interfaceOrientation;
}

@end