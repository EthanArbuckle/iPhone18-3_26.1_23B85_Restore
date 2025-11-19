@interface CarUnspecifiedWidgetController
- (void)_mapsCar_scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation CarUnspecifiedWidgetController

- (void)sceneDidDisconnect:(id)a3
{
  v4 = [(CarUnspecifiedWidgetController *)self window];
  [v4 setHidden:1];

  [(CarUnspecifiedWidgetController *)self setWindow:0];
}

- (void)_mapsCar_scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v6 = a3;
  v7 = [[CRSUIDashboardWidgetWindow alloc] initWithWindowScene:v6];

  [(CarUnspecifiedWidgetController *)self setWindow:v7];
  v8 = objc_alloc_init(CarUnspecifiedViewController);
  v9 = [(CarUnspecifiedWidgetController *)self window];
  [v9 setRootViewController:v8];

  v10 = [(CarUnspecifiedWidgetController *)self window];
  [v10 setHidden:0];
}

@end