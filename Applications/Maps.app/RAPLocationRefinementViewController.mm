@interface RAPLocationRefinementViewController
- (void)viewDidLoad;
@end

@implementation RAPLocationRefinementViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = RAPLocationRefinementViewController;
  [(LocationRefinementViewController *)&v4 viewDidLoad];
  mapView = [(LocationRefinementViewController *)self mapView];
  [mapView setMapType:2];
}

@end