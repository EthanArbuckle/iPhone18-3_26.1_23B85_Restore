@interface RoutePlanningEbikeOptionsViewController
- (id)_titleForTransportType:(int64_t)a3;
@end

@implementation RoutePlanningEbikeOptionsViewController

- (id)_titleForTransportType:(int64_t)a3
{
  if (a3 == 5)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"[Route Planning value:Cycle] E-Bike options card header" table:{@"localized string not found", 0}];
  }

  else
  {
    v5 = sub_10006D178();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[RoutePlanningEbikeOptionsViewController _titleForTransportType:]";
      v11 = 2080;
      v12 = "RoutePlanningOptionsViewController.m";
      v13 = 1024;
      v14 = 1325;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v9, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = +[NSThread callStackSymbols];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
      }
    }

    v4 = 0;
  }

  return v4;
}

@end