@interface RouteMarkerFormatterETA
- (RouteMarkerFormatterETA)initWithNavigationService:(id)a3;
- (RouteMarkerFormatterETADelegate)delegate;
- (id)_comparisonInfoForRouteWithRemainingMinutes:(unint64_t)a3 comparedToRouteWithRemainingMinutes:(unint64_t)a4 tollCurrency:(unsigned __int8)a5 styleAttributes:(id)a6;
- (id)markerInfoForRoute:(id)a3;
- (id)markerInfosForLegsInRoute:(id)a3;
- (void)dealloc;
- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6;
@end

@implementation RouteMarkerFormatterETA

- (RouteMarkerFormatterETADelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6
{
  v12 = a3;
  v7 = [v12 route];
  if (v7)
  {
    v8 = [v12 alternateRoutes];
    v9 = [NSSet setWithArray:v8];

    v10 = [v9 setByAddingObject:v7];

    v11 = [(RouteMarkerFormatterETA *)self delegate];
    [v11 routeMarkerFormatterETA:self didUpdateMarkerInfoForRoutes:v10];
  }
}

- (id)_comparisonInfoForRouteWithRemainingMinutes:(unint64_t)a3 comparedToRouteWithRemainingMinutes:(unint64_t)a4 tollCurrency:(unsigned __int8)a5 styleAttributes:(id)a6
{
  v6 = a5;
  v10 = a6;
  if (a3 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  if (a3 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a3;
  }

  if (v11 - v12 <= self->_similarTimeDelta)
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
    if (a3 <= a4)
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

  v20 = [[RouteMarkerFormatterInfo alloc] initWithRouteDescription:v17 etaComparison:v18 tollCurrency:v6 styleAttributes:v10];

  return v20;
}

- (id)markerInfosForLegsInRoute:(id)a3
{
  v4 = a3;
  if (-[MNNavigationService isInNavigatingState](self->_navigationService, "isInNavigatingState") && ([v4 legs], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 >= 2))
  {
    v8 = [(MNNavigationService *)self->_navigationService displayETAInfoForRoute:v4];
    v9 = [v8 legInfos];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100A21A04;
    v27[3] = &unk_101631FD0;
    v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
    v28 = v10;
    [v8 enumerateLegsWithBlock:v27];
    v11 = [NSMutableArray alloc];
    v12 = [v4 legs];
    v13 = [v11 initWithCapacity:{objc_msgSend(v12, "count")}];

    v14 = [v4 legs];
    v15 = [v14 count];

    if (v15)
    {
      v16 = 0;
      do
      {
        v17 = [NSNumber numberWithUnsignedInteger:v16];
        [v13 addObject:v17];

        ++v16;
        v18 = [v4 legs];
        v19 = [v18 count];
      }

      while (v16 < v19);
    }

    v20 = [v13 count];
    if (v20 < [v9 count])
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"We have more ETA infos than legs: %lu legs, %lu ETA infos", [v13 count], objc_msgSend(v9, "count"));
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

- (id)markerInfoForRoute:(id)a3
{
  v4 = a3;
  if (![(MNNavigationService *)self->_navigationService isInNavigatingState])
  {
    goto LABEL_4;
  }

  v5 = [v4 legs];
  v6 = [v5 count];
  v7 = v6 - [(MNNavigationService *)self->_navigationService targetLegIndex];

  if (v7 == 1)
  {
    v8 = [(MNNavigationService *)self->_navigationService route];
    v9 = [v4 isEqual:v8];

    if (v9)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_7;
    }

    v12 = [(MNNavigationService *)self->_navigationService displayETAInfoForRoute:v4];
    navigationService = self->_navigationService;
    v18 = [(MNNavigationService *)navigationService route];
    v15 = [(MNNavigationService *)navigationService displayETAInfoForRoute:v18];

    v10 = 0;
    if (v12 && v15)
    {
      v19 = [v12 displayRemainingMinutesToEndOfRoute];
      v20 = [v15 displayRemainingMinutesToEndOfRoute];
      v21 = [v4 tollCurrencyType];
      v22 = [v4 advisoriesStyleAttributes];
      v10 = [(RouteMarkerFormatterETA *)self _comparisonInfoForRouteWithRemainingMinutes:v19 comparedToRouteWithRemainingMinutes:v20 tollCurrency:v21 styleAttributes:v22];
    }
  }

  else
  {
    [v4 travelAndChargingDuration];
    v12 = [NSString _navigation_stringWithSeconds:v11 andAbbreviationType:1];
    v13 = [RouteMarkerFormatterInfo alloc];
    v14 = [v4 tollCurrencyType];
    v15 = [v4 advisoriesStyleAttributes];
    v10 = [(RouteMarkerFormatterInfo *)v13 initWithRouteDescription:v12 etaComparison:0 tollCurrency:v14 styleAttributes:v15];
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

- (RouteMarkerFormatterETA)initWithNavigationService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RouteMarkerFormatterETA;
  v6 = [(RouteMarkerFormatterETA *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationService, a3);
    [(MNNavigationService *)v7->_navigationService registerObserver:v7];
    v7->_similarTimeDelta = GEOConfigGetUint64();
  }

  return v7;
}

@end