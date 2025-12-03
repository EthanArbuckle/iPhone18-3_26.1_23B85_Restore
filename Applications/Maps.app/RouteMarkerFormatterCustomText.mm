@interface RouteMarkerFormatterCustomText
- (RouteMarkerFormatterCustomText)initWithRoutes:(id)routes selectedRouteIndex:(unint64_t)index customSelectedRouteText:(id)text;
- (id)markerInfoForRoute:(id)route;
@end

@implementation RouteMarkerFormatterCustomText

- (id)markerInfoForRoute:(id)route
{
  routeCopy = route;
  routes = [(RouteMarkerFormatterCustomText *)self routes];
  v6 = [routes indexOfObject:routeCopy];

  v7 = 0;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v6 == self->_selectedRouteIndex)
  {
    v8 = [RouteMarkerFormatterInfo alloc];
    selectedRouteCustomText = self->_selectedRouteCustomText;
    tollCurrencyType = [routeCopy tollCurrencyType];
    advisoriesStyleAttributes = [routeCopy advisoriesStyleAttributes];
    v7 = [(RouteMarkerFormatterInfo *)v8 initWithRouteDescription:selectedRouteCustomText etaComparison:0 tollCurrency:tollCurrencyType styleAttributes:advisoriesStyleAttributes];
  }

  return v7;
}

- (RouteMarkerFormatterCustomText)initWithRoutes:(id)routes selectedRouteIndex:(unint64_t)index customSelectedRouteText:(id)text
{
  routesCopy = routes;
  textCopy = text;
  v16.receiver = self;
  v16.super_class = RouteMarkerFormatterCustomText;
  v10 = [(RouteMarkerFormatterCustomText *)&v16 init];
  if (v10)
  {
    v11 = [routesCopy copy];
    routes = v10->_routes;
    v10->_routes = v11;

    v10->_selectedRouteIndex = index;
    v13 = [textCopy copy];
    selectedRouteCustomText = v10->_selectedRouteCustomText;
    v10->_selectedRouteCustomText = v13;
  }

  return v10;
}

@end