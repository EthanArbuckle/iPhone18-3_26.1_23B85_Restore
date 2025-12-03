@interface _MapsActivityRestoreHandlingTask
- (void)performTask;
@end

@implementation _MapsActivityRestoreHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  userActivity = [(UserActivityHandlingTask *)self userActivity];
  userInfo = [userActivity userInfo];

  v5 = [userInfo objectForKeyedSubscript:@"MapsActivity"];
  if (v5)
  {
    v6 = [[MapsActivity alloc] initWithData:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [userInfo objectForKeyedSubscript:@"MapsActivityTimestamp"];
      Integer = GEOConfigGetInteger();
      if (v8)
      {
        [v8 timeIntervalSinceNow];
        v11 = v10 >= -Integer;
      }

      else
      {
        v11 = 1;
      }

      if ([(MapsActivity *)v7 hasDirectionsPlan])
      {
        v48 = Integer;
        v14 = v11;
        directionsPlan = [(MapsActivity *)v7 directionsPlan];
        hasExpiryTime = [directionsPlan hasExpiryTime];

        if (hasExpiryTime && (-[MapsActivity directionsPlan](v7, "directionsPlan"), v17 = objc_claimAutoreleasedReturnValue(), [v17 expiryTime], +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:"), v18 = objc_claimAutoreleasedReturnValue(), v17, objc_msgSend(v18, "timeIntervalSinceNow"), v20 = v19, v18, v20 < 0.0))
        {
          v21 = sub_100005610();
          v11 = v14;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "_MapsActivityRestoreHandlingTask directionsHaveExpired", buf, 2u);
          }

          Integer = v48;
          if ([(MapsActivity *)v7 hasDirectionsPlan])
          {
            [(MapsActivity *)v7 setDirectionsPlan:0];
            v22 = 0;
            v51 = 1;
          }

          else
          {
            v51 = 0;
            v22 = 1;
          }
        }

        else
        {
          v51 = 0;
          v22 = 1;
          v11 = v14;
          Integer = v48;
        }
      }

      else
      {
        v22 = 0;
        v51 = 0;
      }

      if ([(MapsActivity *)v7 hasDirectionsPlan])
      {
        directionsPlan2 = [(MapsActivity *)v7 directionsPlan];
        if ([directionsPlan2 displayMethod] != 1)
        {
LABEL_25:

          goto LABEL_26;
        }

        [(MapsActivity *)v7 directionsPlan];
        v24 = v49 = v11;
        [v24 routeRequestStorage];
        v25 = v5;
        v26 = userInfo;
        v27 = Integer;
        v29 = v28 = v8;
        transportType = [v29 transportType];

        v8 = v28;
        Integer = v27;
        userInfo = v26;
        v5 = v25;

        v11 = v49;
        if (transportType != 1)
        {
          directionsPlan2 = [(MapsActivity *)v7 directionsPlan];
          routeRequestStorage = [directionsPlan2 routeRequestStorage];
          [routeRequestStorage setRouteHandle:0];

          v11 = v49;
          goto LABEL_25;
        }
      }

LABEL_26:
      v31 = +[NSUserDefaults standardUserDefaults];
      v32 = v31;
      if ((v22 | v11) & 1) != 0 || ([v31 BOOLForKey:@"__internal__MapsDebugDontResetUserLocation"])
      {
        v33 = v7;
        v34 = v51;
        if (!v8)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v33 = +[MapsActivity mapsActivityPerDefault];
        if ([(MapsActivity *)v7 hasDisplayOptions])
        {
          v50 = Integer;
          v35 = v8;
          v36 = objc_alloc_init(GEOURLOptions);
          displayOptions = [(MapsActivity *)v7 displayOptions];
          [v36 setMapType:{objc_msgSend(displayOptions, "mapType")}];

          displayOptions2 = [(MapsActivity *)v7 displayOptions];
          hasEnableTraffic = [displayOptions2 hasEnableTraffic];

          if (hasEnableTraffic)
          {
            displayOptions3 = [(MapsActivity *)v7 displayOptions];
            [v36 setEnableTraffic:{objc_msgSend(displayOptions3, "enableTraffic")}];
          }

          [v33 setDisplayOptions:v36];

          v8 = v35;
          Integer = v50;
        }

        v34 = 1;
        if (!v8)
        {
          goto LABEL_36;
        }
      }

      if (((v34 | [(_MapsActivityRestoreHandlingTask *)self coldLaunch]) & 1) == 0)
      {
        v44 = sub_100005610();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v53 = v8;
          v54 = 2048;
          v55 = Integer;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "no need to restore : storage date : %@ TTL: %ld", buf, 0x16u);
        }

        [(RichMapsActivityCreatingTaskImpl *)self taskFailed];
        goto LABEL_47;
      }

LABEL_36:
      if ([v33 hasDisplayOptions])
      {
        displayOptions4 = [v33 displayOptions];
        if ([displayOptions4 hasCamera])
        {
          v42 = 0;
        }

        else
        {
          displayOptions5 = [v33 displayOptions];
          v42 = [displayOptions5 hasCenterSpan] ^ 1;
        }

        v43 = objc_alloc_init(RestorationAction);
        if (!v42)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v43 = objc_alloc_init(RestorationAction);
      }

      [(MapsAction *)v43 setUserLocationAccuracy:kCLLocationAccuracyBest];
LABEL_46:
      v46 = [[RichMapsActivity alloc] initWithMapsActivity:v33 mapsAction:v43];
      [(UserActivityHandlingTask *)self taskFinished:v46];

LABEL_47:
      goto LABEL_48;
    }

    v12 = sub_100005610();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v13 = "_MapsActivityRestoreHandlingTask no mapsActivity from data";
      goto LABEL_9;
    }
  }

  else
  {
    v12 = sub_100005610();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v13 = "_MapsActivityRestoreHandlingTask no data";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    }
  }

  [(RichMapsActivityCreatingTaskImpl *)self taskFailed];
LABEL_48:
}

@end