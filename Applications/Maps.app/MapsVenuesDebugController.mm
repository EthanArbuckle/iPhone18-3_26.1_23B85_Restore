@interface MapsVenuesDebugController
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MapsVenuesDebugController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MapsVenuesDebugController;
  [(MapsDebugValuesViewController *)&v4 viewWillAppear:appear];
  [(MapsVenuesDebugController *)self _viewWillAppear];
}

@end