@interface RouteMarkerFormatterRouteName
- (RouteMarkerFormatterRouteName)initWithRoutes:(id)routes selectedRouteIndex:(unint64_t)index;
- (id)markerInfoForRoute:(id)route;
@end

@implementation RouteMarkerFormatterRouteName

- (id)markerInfoForRoute:(id)route
{
  routeCopy = route;
  name = [routeCopy name];
  routes = [(RouteMarkerFormatterRouteName *)self routes];
  v7 = [routes indexOfObject:routeCopy];

  v8 = 0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 == self->_selectedRouteIndex)
  {
    if ([name length])
    {
      v9 = [RouteMarkerFormatterInfo alloc];
      tollCurrencyType = [routeCopy tollCurrencyType];
      advisoriesStyleAttributes = [routeCopy advisoriesStyleAttributes];
      v8 = [(RouteMarkerFormatterInfo *)v9 initWithRouteDescription:name etaType:4 etaComparison:0 tollCurrency:tollCurrencyType styleAttributes:advisoriesStyleAttributes];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (RouteMarkerFormatterRouteName)initWithRoutes:(id)routes selectedRouteIndex:(unint64_t)index
{
  routesCopy = routes;
  v11.receiver = self;
  v11.super_class = RouteMarkerFormatterRouteName;
  v7 = [(RouteMarkerFormatterRouteName *)&v11 init];
  if (v7)
  {
    v8 = [routesCopy copy];
    routes = v7->_routes;
    v7->_routes = v8;

    v7->_selectedRouteIndex = index;
  }

  return v7;
}

@end