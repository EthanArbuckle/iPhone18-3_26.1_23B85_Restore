@interface MapsVenuesDebugController
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MapsVenuesDebugController

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MapsVenuesDebugController;
  [(MapsDebugValuesViewController *)&v4 viewWillAppear:a3];
  [(MapsVenuesDebugController *)self _viewWillAppear];
}

@end