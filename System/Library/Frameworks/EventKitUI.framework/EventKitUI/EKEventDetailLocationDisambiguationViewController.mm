@interface EKEventDetailLocationDisambiguationViewController
- (EKEventDetailLocationDisambiguationViewController)initWithLocation:(id)location pois:(id)pois completionBlock:(id)block;
@end

@implementation EKEventDetailLocationDisambiguationViewController

- (EKEventDetailLocationDisambiguationViewController)initWithLocation:(id)location pois:(id)pois completionBlock:(id)block
{
  locationCopy = location;
  poisCopy = pois;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = EKEventDetailLocationDisambiguationViewController;
  v11 = [(EKEventDetailLocationDisambiguationViewController *)&v16 init];
  if (v11)
  {
    v12 = [[EKEventDetailLocationDisambiguationContentViewController alloc] initWithLocation:locationCopy pois:poisCopy completionBlock:blockCopy];
    [(EKEventDetailLocationDisambiguationViewController *)v11 pushViewController:v12 animated:0];
    v13 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    navigationBar = [(EKEventDetailLocationDisambiguationViewController *)v11 navigationBar];
    [navigationBar setScrollEdgeAppearance:v13];
  }

  return v11;
}

@end