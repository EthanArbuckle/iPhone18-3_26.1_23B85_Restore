@interface RouteMarkerFormatterTotal
- (RouteMarkerFormatterTotal)initWithRoutes:(id)routes selectedRouteIndex:(unint64_t)index;
- (id)markerInfoForRoute:(id)route;
- (id)markerInfosForLegsInRoute:(id)route;
@end

@implementation RouteMarkerFormatterTotal

- (id)markerInfosForLegsInRoute:(id)route
{
  routeCopy = route;
  legs = [routeCopy legs];
  v5 = [legs count];

  if (v5)
  {
    legs2 = [routeCopy legs];
    v7 = sub_100021DB0(legs2, &stru_101636CD0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)markerInfoForRoute:(id)route
{
  routeCopy = route;
  [routeCopy travelAndChargingDuration];
  v5 = GEOStringForDuration();
  if ([routeCopy isFamiliarRoute])
  {
    currentSuggestionEntry = self->_currentSuggestionEntry;
    if (currentSuggestionEntry)
    {
      [(MapsSuggestionsRouteGeniusEntry *)currentSuggestionEntry etaInSeconds];
      LODWORD(v8) = vcvtpd_u64_f64(v7 * 0.0166666667);
      v9 = [NSString _navigation_stringWithMinutes:v8 andAbbreviationType:1];

      v5 = v9;
    }
  }

  routes = [(RouteMarkerFormatterTotal *)self routes];
  v11 = [routes indexOfObject:routeCopy];

  selectedRouteIndex = self->_selectedRouteIndex;
  routeLabelAction = [routeCopy routeLabelAction];
  detailTextAction = [routeLabelAction detailTextAction];

  v16 = v11 != selectedRouteIndex || detailTextAction != 2;
  v17 = detailTextAction != 1 && v16;
  routeLabelDescriptionString = [routeCopy routeLabelDescriptionString];
  stringWithDefaultOptions = [routeLabelDescriptionString stringWithDefaultOptions];

  if ([stringWithDefaultOptions length] && !v17)
  {
    v20 = [v5 stringByAppendingFormat:@"\n%@", stringWithDefaultOptions];

    v5 = v20;
  }

  v21 = [RouteMarkerFormatterInfo alloc];
  tollCurrencyType = [routeCopy tollCurrencyType];
  advisoriesStyleAttributes = [routeCopy advisoriesStyleAttributes];
  v24 = [(RouteMarkerFormatterInfo *)v21 initWithRouteDescription:v5 etaComparison:0 tollCurrency:tollCurrencyType styleAttributes:advisoriesStyleAttributes];

  return v24;
}

- (RouteMarkerFormatterTotal)initWithRoutes:(id)routes selectedRouteIndex:(unint64_t)index
{
  routesCopy = routes;
  v11.receiver = self;
  v11.super_class = RouteMarkerFormatterTotal;
  v7 = [(RouteMarkerFormatterTotal *)&v11 init];
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