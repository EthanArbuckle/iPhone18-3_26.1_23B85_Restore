@interface RouteMarkerFormatterRouteName
- (RouteMarkerFormatterRouteName)initWithRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4;
- (id)markerInfoForRoute:(id)a3;
@end

@implementation RouteMarkerFormatterRouteName

- (id)markerInfoForRoute:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [(RouteMarkerFormatterRouteName *)self routes];
  v7 = [v6 indexOfObject:v4];

  v8 = 0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 == self->_selectedRouteIndex)
  {
    if ([v5 length])
    {
      v9 = [RouteMarkerFormatterInfo alloc];
      v10 = [v4 tollCurrencyType];
      v11 = [v4 advisoriesStyleAttributes];
      v8 = [(RouteMarkerFormatterInfo *)v9 initWithRouteDescription:v5 etaType:4 etaComparison:0 tollCurrency:v10 styleAttributes:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (RouteMarkerFormatterRouteName)initWithRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = RouteMarkerFormatterRouteName;
  v7 = [(RouteMarkerFormatterRouteName *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    routes = v7->_routes;
    v7->_routes = v8;

    v7->_selectedRouteIndex = a4;
  }

  return v7;
}

@end