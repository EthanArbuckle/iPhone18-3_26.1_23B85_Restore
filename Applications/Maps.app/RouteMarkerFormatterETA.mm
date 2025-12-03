@interface RouteMarkerFormatterETA
- (RouteMarkerFormatterETA)initWithNavigationService:(id)service;
- (RouteMarkerFormatterETADelegate)delegate;
- (id)_comparisonInfoForRouteWithRemainingMinutes:(unint64_t)minutes comparedToRouteWithRemainingMinutes:(unint64_t)remainingMinutes tollCurrency:(unsigned __int8)currency styleAttributes:(id)attributes;
- (id)markerInfoForRoute:(id)route;
- (id)markerInfosForLegsInRoute:(id)route;
- (void)dealloc;
- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info;
@end

@implementation RouteMarkerFormatterETA

- (RouteMarkerFormatterETADelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info
{
  serviceCopy = service;
  route = [serviceCopy route];
  if (route)
  {
    alternateRoutes = [serviceCopy alternateRoutes];
    v9 = [NSSet setWithArray:alternateRoutes];

    v10 = [v9 setByAddingObject:route];

    delegate = [(RouteMarkerFormatterETA *)self delegate];
    [delegate routeMarkerFormatterETA:self didUpdateMarkerInfoForRoutes:v10];
  }
}

- (id)_comparisonInfoForRouteWithRemainingMinutes:(unint64_t)minutes comparedToRouteWithRemainingMinutes:(unint64_t)remainingMinutes tollCurrency:(unsigned __int8)currency styleAttributes:(id)attributes
{
  currencyCopy = currency;
  attributesCopy = attributes;
  if (minutes <= remainingMinutes)
  {
    minutesCopy = remainingMinutes;
  }

  else
  {
    minutesCopy = minutes;
  }

  if (minutes >= remainingMinutes)
  {
    minutesCopy2 = remainingMinutes;
  }

  else
  {
    minutesCopy2 = minutes;
  }

  if (minutesCopy - minutesCopy2 <= self->_similarTimeDelta)
  {
    v13 = +[NSBundle mainBundle];
    v17 = [v13 localizedStringForKey:@"Similar ETA [Route Label Marker]" value:@"localized string not found" table:0];
    v18 = 1;
  }

  else
  {
    v13 = [NSString _navigation_stringWithMinutes:"_navigation_stringWithMinutes:andAbbreviationType:" andAbbreviationType:?];
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    if (minutes <= remainingMinutes)
    {
      v19 = [v14 localizedStringForKey:@"<# min> faster [Route Label Marker]" value:@"localized string not found" table:0];
      v17 = [NSString stringWithFormat:v19, v13];

      v18 = 3;
    }

    else
    {
      v16 = [v14 localizedStringForKey:@"<# min> slower [Route Label Marker]" value:@"localized string not found" table:0];
      v17 = [NSString stringWithFormat:v16, v13];

      v18 = 2;
    }
  }

  v20 = [[RouteMarkerFormatterInfo alloc] initWithRouteDescription:v17 etaComparison:v18 tollCurrency:currencyCopy styleAttributes:attributesCopy];

  return v20;
}

- (id)markerInfosForLegsInRoute:(id)route
{
  routeCopy = route;
  if (-[MNNavigationService isInNavigatingState](self->_navigationService, "isInNavigatingState") && ([routeCopy legs], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 >= 2))
  {
    v8 = [(MNNavigationService *)self->_navigationService displayETAInfoForRoute:routeCopy];
    legInfos = [v8 legInfos];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100A21A04;
    v27[3] = &unk_101631FD0;
    v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(legInfos, "count")}];
    v28 = v10;
    [v8 enumerateLegsWithBlock:v27];
    v11 = [NSMutableArray alloc];
    legs = [routeCopy legs];
    v13 = [v11 initWithCapacity:{objc_msgSend(legs, "count")}];

    legs2 = [routeCopy legs];
    v15 = [legs2 count];

    if (v15)
    {
      v16 = 0;
      do
      {
        v17 = [NSNumber numberWithUnsignedInteger:v16];
        [v13 addObject:v17];

        ++v16;
        legs3 = [routeCopy legs];
        v19 = [legs3 count];
      }

      while (v16 < v19);
    }

    v20 = [v13 count];
    if (v20 < [legInfos count])
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"We have more ETA infos than legs: %lu legs, %lu ETA infos", [v13 count], objc_msgSend(legInfos, "count"));
        *buf = 136316162;
        v30 = "[RouteMarkerFormatterETA markerInfosForLegsInRoute:]";
        v31 = 2080;
        v32 = "RouteMarkerFormatterETA.m";
        v33 = 1024;
        v34 = 126;
        v35 = 2080;
        v36 = "legIndexes.count >= legInfos.count";
        v37 = 2112;
        v38 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
      }

      if (sub_100E03634())
      {
        v25 = sub_10006D178();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v30 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    v21 = [[RouteMarkerFormatterInfo alloc] initWithRouteDescription:&stru_1016631F0 etaComparison:0 tollCurrency:0 styleAttributes:0];
    v7 = [v10 objectsForKeys:v13 notFoundMarker:v21];
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
  if (![(MNNavigationService *)self->_navigationService isInNavigatingState])
  {
    goto LABEL_4;
  }

  legs = [routeCopy legs];
  v6 = [legs count];
  v7 = v6 - [(MNNavigationService *)self->_navigationService targetLegIndex];

  if (v7 == 1)
  {
    route = [(MNNavigationService *)self->_navigationService route];
    v9 = [routeCopy isEqual:route];

    if (v9)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_7;
    }

    v12 = [(MNNavigationService *)self->_navigationService displayETAInfoForRoute:routeCopy];
    navigationService = self->_navigationService;
    route2 = [(MNNavigationService *)navigationService route];
    advisoriesStyleAttributes2 = [(MNNavigationService *)navigationService displayETAInfoForRoute:route2];

    v10 = 0;
    if (v12 && advisoriesStyleAttributes2)
    {
      displayRemainingMinutesToEndOfRoute = [v12 displayRemainingMinutesToEndOfRoute];
      displayRemainingMinutesToEndOfRoute2 = [advisoriesStyleAttributes2 displayRemainingMinutesToEndOfRoute];
      tollCurrencyType = [routeCopy tollCurrencyType];
      advisoriesStyleAttributes = [routeCopy advisoriesStyleAttributes];
      v10 = [(RouteMarkerFormatterETA *)self _comparisonInfoForRouteWithRemainingMinutes:displayRemainingMinutesToEndOfRoute comparedToRouteWithRemainingMinutes:displayRemainingMinutesToEndOfRoute2 tollCurrency:tollCurrencyType styleAttributes:advisoriesStyleAttributes];
    }
  }

  else
  {
    [routeCopy travelAndChargingDuration];
    v12 = [NSString _navigation_stringWithSeconds:v11 andAbbreviationType:1];
    v13 = [RouteMarkerFormatterInfo alloc];
    tollCurrencyType2 = [routeCopy tollCurrencyType];
    advisoriesStyleAttributes2 = [routeCopy advisoriesStyleAttributes];
    v10 = [(RouteMarkerFormatterInfo *)v13 initWithRouteDescription:v12 etaComparison:0 tollCurrency:tollCurrencyType2 styleAttributes:advisoriesStyleAttributes2];
  }

LABEL_7:

  return v10;
}

- (void)dealloc
{
  [(MNNavigationService *)self->_navigationService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = RouteMarkerFormatterETA;
  [(RouteMarkerFormatterETA *)&v3 dealloc];
}

- (RouteMarkerFormatterETA)initWithNavigationService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = RouteMarkerFormatterETA;
  v6 = [(RouteMarkerFormatterETA *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationService, service);
    [(MNNavigationService *)v7->_navigationService registerObserver:v7];
    v7->_similarTimeDelta = GEOConfigGetUint64();
  }

  return v7;
}

@end