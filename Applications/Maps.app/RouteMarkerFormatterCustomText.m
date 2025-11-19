@interface RouteMarkerFormatterCustomText
- (RouteMarkerFormatterCustomText)initWithRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4 customSelectedRouteText:(id)a5;
- (id)markerInfoForRoute:(id)a3;
@end

@implementation RouteMarkerFormatterCustomText

- (id)markerInfoForRoute:(id)a3
{
  v4 = a3;
  v5 = [(RouteMarkerFormatterCustomText *)self routes];
  v6 = [v5 indexOfObject:v4];

  v7 = 0;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL && v6 == self->_selectedRouteIndex)
  {
    v8 = [RouteMarkerFormatterInfo alloc];
    selectedRouteCustomText = self->_selectedRouteCustomText;
    v10 = [v4 tollCurrencyType];
    v11 = [v4 advisoriesStyleAttributes];
    v7 = [(RouteMarkerFormatterInfo *)v8 initWithRouteDescription:selectedRouteCustomText etaComparison:0 tollCurrency:v10 styleAttributes:v11];
  }

  return v7;
}

- (RouteMarkerFormatterCustomText)initWithRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4 customSelectedRouteText:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = RouteMarkerFormatterCustomText;
  v10 = [(RouteMarkerFormatterCustomText *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    routes = v10->_routes;
    v10->_routes = v11;

    v10->_selectedRouteIndex = a4;
    v13 = [v9 copy];
    selectedRouteCustomText = v10->_selectedRouteCustomText;
    v10->_selectedRouteCustomText = v13;
  }

  return v10;
}

@end