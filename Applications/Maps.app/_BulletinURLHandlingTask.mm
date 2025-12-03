@interface _BulletinURLHandlingTask
- (BOOL)_validParameters:(id)parameters data:(id *)data;
- (void)performTask;
@end

@implementation _BulletinURLHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  selfCopy = self;
  v3 = [(URLHandlingTask *)self url];
  query = [v3 query];
  v66 = v3;
  if (![query length])
  {
    resourceSpecifier = [v3 resourceSpecifier];

    query = resourceSpecifier;
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v65 = query;
  v7 = [query componentsSeparatedByString:@"&"];
  v8 = [v7 countByEnumeratingWithState:&v73 objects:v80 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v74;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v74 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v73 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v12 count] >= 2)
        {
          v13 = [v12 subarrayWithRange:{1, objc_msgSend(v12, "count") - 1}];
          v14 = [v13 componentsJoinedByString:@"="];
          v15 = [v12 objectAtIndexedSubscript:0];
          [v6 setObject:v14 forKeyedSubscript:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v73 objects:v80 count:16];
    }

    while (v9);
  }

  v72 = 0;
  v16 = selfCopy;
  v17 = [(_BulletinURLHandlingTask *)selfCopy _validParameters:v6 data:&v72];
  v18 = v72;
  if (v17)
  {
    v19 = [v6 objectForKeyedSubscript:@"MapsPushNotificationType"];
    if ([v19 isEqualToString:@"MapsPushNotifcationTypePushToPhone"])
    {
      v20 = [[SyncedBookmarkRepr alloc] initWithData:v18];
      v21 = v20;
      if (v20)
      {
        richMapsActivity = [(SyncedBookmarkRepr *)v20 richMapsActivity];
        if (richMapsActivity)
        {
          [(RichMapsActivityCreatingTaskImpl *)selfCopy taskFinished:richMapsActivity];
LABEL_84:

          goto LABEL_85;
        }

        goto LABEL_83;
      }

      v27 = sub_100005610();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *buf = 0;
      v28 = "_BulletinURLHandlingTask SyncedBookmarkRepr nil from data";
      goto LABEL_47;
    }

    if ([v19 isEqualToString:@"MapsPushNotifcationTypeProblemResolved"])
    {
      v21 = [[GEORPProblemStatusResponse alloc] initWithData:v18];
      if (v21)
      {
        v24 = [[PresentRAPAction alloc] initWithResponse:v21];
LABEL_26:
        v25 = v24;
        v26 = [[RichMapsActivity alloc] initWithMapsAction:v24];
        [(RichMapsActivityCreatingTaskImpl *)selfCopy taskFinished:v26];

LABEL_27:
LABEL_85:

        goto LABEL_86;
      }

      v27 = sub_100005610();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v28 = "_BulletinURLHandlingTask GEORPProblemStatusResponse nil from data";
LABEL_47:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

    if ([v19 isEqualToString:@"MapsPushNotifcationTypeProblemStatusChange"])
    {
      v21 = [[GEORPRapInfo alloc] initWithData:v18];
      if (v21)
      {
        v24 = [[PresentRAPAction alloc] initWithRapInfo:v21];
        goto LABEL_26;
      }

      v27 = sub_100005610();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v28 = "_BulletinURLHandlingTask GEORPRapInfo nil from data";
        goto LABEL_47;
      }

LABEL_48:

      [(RichMapsActivityCreatingTaskImpl *)selfCopy taskFailed];
      goto LABEL_85;
    }

    if ([v19 isEqualToString:@"ParkedCar"])
    {
      v29 = [v6 objectForKeyedSubscript:@"action"];
      v30 = [v29 isEqualToString:@"photo"];

      if (v30)
      {
        v31 = 2;
      }

      else
      {
        v40 = [v6 objectForKeyedSubscript:@"action"];
        v41 = [v40 isEqualToString:@"editlocation"];

        if (v41)
        {
          v31 = 3;
        }

        else
        {
          v31 = 0;
        }
      }

      v42 = [[PresentParkedCarAction alloc] initWithParkedCarAction:v31];
      v43 = [[RichMapsActivity alloc] initWithMapsAction:v42];
      [(RichMapsActivityCreatingTaskImpl *)selfCopy taskFinished:v43];

      goto LABEL_53;
    }

    if ([v19 isEqualToString:@"CommuteDetails"])
    {
      v64 = v19;
      [NSURLComponents componentsWithURL:v66 resolvingAgainstBaseURL:1];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v63 = v71 = 0u;
      queryItems = [v63 queryItems];
      v33 = [queryItems countByEnumeratingWithState:&v68 objects:v77 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v69;
LABEL_38:
        v36 = 0;
        while (1)
        {
          if (*v69 != v35)
          {
            objc_enumerationMutation(queryItems);
          }

          v37 = *(*(&v68 + 1) + 8 * v36);
          name = [v37 name];
          v39 = [name isEqualToString:@"uniqueID"];

          if (v39)
          {
            break;
          }

          if (v34 == ++v36)
          {
            v34 = [queryItems countByEnumeratingWithState:&v68 objects:v77 count:16];
            if (v34)
            {
              goto LABEL_38;
            }

            goto LABEL_44;
          }
        }

        value = [v37 value];

        if (!value)
        {
          goto LABEL_59;
        }

        v49 = [[OpenCommuteEntryAction alloc] initWithEntry:value];
        v50 = [[RichMapsActivity alloc] initWithMapsAction:v49];
        [(RichMapsActivityCreatingTaskImpl *)selfCopy taskFinished:v50];

        v19 = v64;
        goto LABEL_86;
      }

LABEL_44:

LABEL_59:
      v16 = selfCopy;
      v44 = v63;
      v19 = v64;
LABEL_60:

      goto LABEL_61;
    }

    if ([v19 isEqualToString:@"LowFuel"])
    {
      v44 = [v6 objectForKeyedSubscript:@"engineType"];
      integerValue = [v44 integerValue];
      if (integerValue)
      {
        v46 = [[LowFuelAction alloc] initWithEngineType:integerValue];
        [(MapsAction *)v46 setUserLocationAccuracy:kCLLocationAccuracyKilometer];
        v47 = [[RichMapsActivity alloc] initWithMapsAction:v46];
        [(RichMapsActivityCreatingTaskImpl *)selfCopy taskFinished:v47];

        goto LABEL_86;
      }

      goto LABEL_60;
    }

    if ([v19 isEqualToString:@"MapsPushNotificationTypeSharedTrip"])
    {
      v52 = [[GEOSharedNavState alloc] initWithData:v18];
      if (v52)
      {
        v21 = v52;
        v25 = [[SharedTripAction alloc] initWithSharedTrip:v52];
        v53 = [[RichMapsActivity alloc] initWithMapsAction:v25];
        [(RichMapsActivityCreatingTaskImpl *)selfCopy taskFinished:v53];

        goto LABEL_27;
      }

LABEL_61:
      v51 = sub_100005610();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v79 = v19;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "_BulletinURLHandlingTask type not handled %@", buf, 0xCu);
      }

      [(RichMapsActivityCreatingTaskImpl *)v16 taskFailed];
      goto LABEL_86;
    }

    if ([v19 isEqualToString:@"MapsPushNotificationTypeUGCPhotoCreditCleared"])
    {
      v54 = OpenPhotoAttributionSettingsAction;
    }

    else
    {
      if ([v19 isEqualToString:@"MapsPushNotificationTypeOfflineMapsManagement"])
      {
        v42 = objc_alloc_init(OpenOfflineMapsManagementAction);
        v55 = [v6 objectForKeyedSubscript:@"path"];
        [(PresentParkedCarAction *)v42 setPath:[(RichMapsActivity *)v55 isEqualToString:@"EXPIRED_MAPS"]];
        v56 = [[RichMapsActivity alloc] initWithMapsAction:v42];
        [(RichMapsActivityCreatingTaskImpl *)selfCopy taskFinished:v56];

        goto LABEL_72;
      }

      if ([v19 isEqualToString:@"MapsPushNotificationTypeOfflineMapsSuggestion"])
      {
        v21 = [[GEOMapRegion alloc] initWithData:v18];
        v57 = [v6 objectForKeyedSubscript:@"MapsPushNotificationTypeOfflineMapsSuggestionRegionName"];
        richMapsActivity = v57;
        if (v21)
        {
          if (v57)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v58 = [[NSData alloc] initWithBase64EncodedString:richMapsActivity options:1];
              v59 = [[NSString alloc] initWithData:v58 encoding:4];
              v60 = objc_alloc_init(OpenOfflineMapsManagementAction);
              [(OpenOfflineMapsManagementAction *)v60 setDownloadRegion:v21];
              [(OpenOfflineMapsManagementAction *)v60 setDownloadRegionName:v59];
              v61 = [[RichMapsActivity alloc] initWithMapsAction:v60];
              [(RichMapsActivityCreatingTaskImpl *)selfCopy taskFinished:v61];

              goto LABEL_84;
            }
          }
        }

        v62 = sub_100005610();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "_BulletinURLHandlingTask mapRegion nil from data", buf, 2u);
        }

LABEL_83:
        [(RichMapsActivityCreatingTaskImpl *)selfCopy taskFailed];
        goto LABEL_84;
      }

      if (![v19 isEqualToString:@"MapsPushNotificationTypeVisitedPlacesSufficientVisits"])
      {
        goto LABEL_61;
      }

      v54 = OpenVisitedPlacesAction;
    }

    v42 = objc_alloc_init(v54);
    v55 = [[RichMapsActivity alloc] initWithMapsAction:v42];
    [(RichMapsActivityCreatingTaskImpl *)selfCopy taskFinished:v55];
LABEL_72:

LABEL_53:
LABEL_86:

    goto LABEL_87;
  }

  v23 = sub_100005610();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v79 = v6;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "_BulletinURLHandlingTask invalid parameters %@", buf, 0xCu);
  }

  [(RichMapsActivityCreatingTaskImpl *)selfCopy taskFailed];
LABEL_87:
}

- (BOOL)_validParameters:(id)parameters data:(id *)data
{
  parametersCopy = parameters;
  v6 = [parametersCopy objectForKeyedSubscript:@"MapsPushNotificationType"];
  if (v6)
  {
    v15[0] = @"ParkedCar";
    v15[1] = @"CommuteDetails";
    v15[2] = @"LowFuel";
    v15[3] = @"MapsPushNotificationTypeUGCPhotoCreditCleared";
    v15[4] = @"MapsPushNotificationTypeOfflineMapsManagement";
    v15[5] = @"MapsPushNotificationTypeVisitedPlacesSufficientVisits";
    v7 = [NSArray arrayWithObjects:v15 count:6];
    v8 = [NSSet setWithArray:v7];

    if ([v8 containsObject:v6])
    {
      v9 = 0;
    }

    else
    {
      v11 = [parametersCopy objectForKeyedSubscript:@"MapsPushNotificationPushData"];
      if (!v11 || (v12 = v11, v9 = [[NSData alloc] initWithBase64EncodedString:v11 options:1], v12, !v9))
      {
        v10 = 0;
        goto LABEL_9;
      }
    }

    v13 = v9;
    *data = v9;

    v10 = 1;
LABEL_9:

    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

@end