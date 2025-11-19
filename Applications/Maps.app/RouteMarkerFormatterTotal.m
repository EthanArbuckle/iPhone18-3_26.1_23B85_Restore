@interface RouteMarkerFormatterTotal
- (RouteMarkerFormatterTotal)initWithRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4;
- (id)markerInfoForRoute:(id)a3;
- (id)markerInfosForLegsInRoute:(id)a3;
@end

@implementation RouteMarkerFormatterTotal

- (id)markerInfosForLegsInRoute:(id)a3
{
  v3 = a3;
  v4 = [v3 legs];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [v3 legs];
    v7 = sub_100021DB0(v6, &stru_101636CD0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)markerInfoForRoute:(id)a3
{
  v4 = a3;
  [v4 travelAndChargingDuration];
  v5 = GEOStringForDuration();
  if ([v4 isFamiliarRoute])
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

  v10 = [(RouteMarkerFormatterTotal *)self routes];
  v11 = [v10 indexOfObject:v4];

  selectedRouteIndex = self->_selectedRouteIndex;
  v13 = [v4 routeLabelAction];
  v14 = [v13 detailTextAction];

  v16 = v11 != selectedRouteIndex || v14 != 2;
  v17 = v14 != 1 && v16;
  v18 = [v4 routeLabelDescriptionString];
  v19 = [v18 stringWithDefaultOptions];

  if ([v19 length] && !v17)
  {
    v20 = [v5 stringByAppendingFormat:@"\n%@", v19];

    v5 = v20;
  }

  v21 = [RouteMarkerFormatterInfo alloc];
  v22 = [v4 tollCurrencyType];
  v23 = [v4 advisoriesStyleAttributes];
  v24 = [(RouteMarkerFormatterInfo *)v21 initWithRouteDescription:v5 etaComparison:0 tollCurrency:v22 styleAttributes:v23];

  return v24;
}

- (RouteMarkerFormatterTotal)initWithRoutes:(id)a3 selectedRouteIndex:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = RouteMarkerFormatterTotal;
  v7 = [(RouteMarkerFormatterTotal *)&v11 init];
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