@interface CarUnspecifiedWidgetController
- (void)_mapsCar_scene:(id)car_scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation CarUnspecifiedWidgetController

- (void)sceneDidDisconnect:(id)disconnect
{
  window = [(CarUnspecifiedWidgetController *)self window];
  [window setHidden:1];

  [(CarUnspecifiedWidgetController *)self setWindow:0];
}

- (void)_mapsCar_scene:(id)car_scene willConnectToSession:(id)session options:(id)options
{
  car_sceneCopy = car_scene;
  v7 = [[CRSUIDashboardWidgetWindow alloc] initWithWindowScene:car_sceneCopy];

  [(CarUnspecifiedWidgetController *)self setWindow:v7];
  v8 = objc_alloc_init(CarUnspecifiedViewController);
  window = [(CarUnspecifiedWidgetController *)self window];
  [window setRootViewController:v8];

  window2 = [(CarUnspecifiedWidgetController *)self window];
  [window2 setHidden:0];
}

@end