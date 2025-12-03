@interface RoutePlanningError
- (BOOL)_buildOutOfCoverageErrorStringsForError:(id)error transportType:(unint64_t)type origin:(id)origin destination:(id)destination;
- (RoutePlanningError)initWithError:(id)error transportType:(unint64_t)type origin:(id)origin destination:(id)destination;
- (void)_buildErrorStringsFromError:(id)error transportType:(unint64_t)type origin:(id)origin destination:(id)destination;
- (void)_updateRegularDirectionsFallbackVisibilityWithError:(id)error transportType:(unint64_t)type;
- (void)_updateRoutingAppsVisibilityWithError:(id)error transportType:(unint64_t)type;
@end

@implementation RoutePlanningError

- (void)_updateRegularDirectionsFallbackVisibilityWithError:(id)error transportType:(unint64_t)type
{
  errorCopy = error;
  if (type == 1)
  {
    v11 = errorCopy;
    if ([errorCopy _mapkit_isDirectionsError])
    {
      userInfo = [v11 userInfo];
      v8 = [userInfo objectForKeyedSubscript:MKDirectionsErrorCodeKey];
      integerValue = [v8 integerValue];

      v10 = (integerValue - 18) < 3;
    }

    else
    {
      v10 = 0;
    }

    self->_errorViewShouldShowRegularDirectionsFallback = v10;
    errorCopy = v11;
  }

  else
  {
    self->_errorViewShouldShowRegularDirectionsFallback = 0;
  }
}

- (void)_updateRoutingAppsVisibilityWithError:(id)error transportType:(unint64_t)type
{
  v9 = [v10 _mapkit_isDirectionsError] && ((objc_msgSend(v10, "userInfo"), v6 = v10 = error;
  self->_errorViewShouldShowRoutingApps = v9;
}

- (BOOL)_buildOutOfCoverageErrorStringsForError:(id)error transportType:(unint64_t)type origin:(id)origin destination:(id)destination
{
  errorCopy = error;
  originCopy = origin;
  destinationCopy = destination;
  v13 = destinationCopy;
  v14 = 0;
  if (type == 8 && originCopy && destinationCopy)
  {
    if ([errorCopy _mapkit_isDirectionsError] && GEOConfigGetBOOL() && (objc_msgSend(errorCopy, "userInfo"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKeyedSubscript:", MKDirectionsErrorCodeKey), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "integerValue"), v16, v15, (v17 & 0xFFFFFFFFFFFFFFFELL) == 8))
    {
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"Cycling Directions Not Available [Title]" value:@"localized string not found" table:0];
      errorTitle = self->_errorTitle;
      self->_errorTitle = v19;

      v21 = sub_100655390(originCopy);
      v22 = sub_100655390(v13);
      v23 = v22;
      if (v21)
      {
        v24 = v22 == 0;
      }

      else
      {
        v24 = 1;
      }

      v14 = !v24;
      if (!v24)
      {
        v25 = [v21 isEqualToString:v22];
        v26 = +[NSBundle mainBundle];
        v27 = v26;
        if (v25)
        {
          v28 = [v26 localizedStringForKey:@"Cycling Directions Not Available [Message value:Single City]" table:{@"localized string not found", 0}];
        }

        else
        {
          v28 = [v26 localizedStringForKey:@"Cycling Directions Not Available [Message value:Multi City]" table:{@"localized string not found", 0}];
          v35 = v23;
        }

        v30 = [NSString localizedStringWithFormat:v28, v21, v35];
        errorMessage = self->_errorMessage;
        self->_errorMessage = v30;

        v32 = GEOConfigGetString();
        if ([v32 length])
        {
          v33 = [NSURL URLWithString:v32];
          if (v33)
          {
            v34 = +[UIApplication sharedApplication];
            v36 = [v34 canOpenURL:v33];

            if (v36)
            {
              objc_storeStrong(&self->_errorViewFeatureAvailabilityPunchoutURL, v33);
            }
          }
        }

        else
        {
          v33 = 0;
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)_buildErrorStringsFromError:(id)error transportType:(unint64_t)type origin:(id)origin destination:(id)destination
{
  errorCopy = error;
  originCopy = origin;
  destinationCopy = destination;
  domain = [errorCopy domain];
  userInfo = [errorCopy userInfo];
  v13 = [userInfo objectForKeyedSubscript:NSLocalizedDescriptionKey];

  userInfo2 = [errorCopy userInfo];
  v15 = [userInfo2 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];

  v16 = MKCurrentNetworkConnectionFailureDiagnosis();
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v21 = +[NSBundle mainBundle];
      v18 = v21;
      v22 = @"Enable Cellular Data [Route Planning]";
LABEL_19:
      v24 = [v21 localizedStringForKey:v22 value:@"localized string not found" table:0];

      v15 = 0;
      v13 = v24;
      goto LABEL_20;
    }

    if (v16 != 3)
    {
      if (v16 != 4)
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    v23 = MGGetSInt32Answer();
    v18 = +[NSBundle mainBundle];
    v19 = v23 - 1;
    if ((v23 - 1) > 5)
    {
      v22 = @"RoutePlanningError_NoNetworkConnection_Device";
      goto LABEL_18;
    }

    v20 = off_101624D20;
LABEL_15:
    v22 = v20[v19];
LABEL_18:
    v21 = v18;
    goto LABEL_19;
  }

  if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_20;
    }

    v17 = MGGetSInt32Answer();
    v18 = +[NSBundle mainBundle];
    v19 = v17 - 1;
    if ((v17 - 1) > 5)
    {
      v22 = @"RoutePlanningError_AirplaneMode_Device";
      goto LABEL_18;
    }

    v20 = off_101624CF0;
    goto LABEL_15;
  }

LABEL_10:
  if ([(RoutePlanningError *)self _buildOutOfCoverageErrorStringsForError:errorCopy transportType:type origin:originCopy destination:destinationCopy])
  {
    goto LABEL_51;
  }

LABEL_20:
  if ([domain isEqualToString:MNErrorDomain] && objc_msgSend(errorCopy, "code") == 3)
  {
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"RoutePlanningError_NilWaypoints_Title" value:@"localized string not found" table:0];

    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:@"RoutePlanningError_NilWaypoints_Message" value:@"localized string not found" table:0];
    v13 = v15;
    v15 = v27;
  }

  else
  {
    if (![domain isEqualToString:NSURLErrorDomain])
    {
      goto LABEL_26;
    }

    v28 = 0;
    v26 = 0;
  }

  v15 = v28;
  v13 = v26;
LABEL_26:
  if (([domain isEqualToString:kCFErrorDomainCFNetwork] & 1) != 0 || -[RoutePlanningError errorCode](self, "errorCode") == 2 || -[RoutePlanningError errorCode](self, "errorCode") == 22)
  {
    BOOL = GEOConfigGetBOOL();
    v30 = +[NSBundle mainBundle];
    v31 = v30;
    if (BOOL)
    {
      v32 = @"Using Offline Maps";
    }

    else
    {
      v32 = @"You’re Offline";
    }

    v33 = [v30 localizedStringForKey:v32 value:@"localized string not found" table:@"Offline"];

    v34 = +[NSBundle mainBundle];
    v35 = [v34 localizedStringForKey:@"RoutePlanningError_NoNetworkConnection_Message" value:@"localized string not found" table:0];

    if (![(RoutePlanningError *)self errorCode])
    {
      [(RoutePlanningError *)self setErrorCode:2];
    }
  }

  else
  {
    v35 = v15;
    v33 = v13;
  }

  if ([v33 length] || objc_msgSend(v35, "length"))
  {
    v13 = v33;
  }

  else if (([domain isEqualToString:kCLErrorDomain] & 1) != 0 || objc_msgSend(domain, "isEqualToString:", MKLocationErrorDomain))
  {
    v44 = +[MKLocationManager sharedLocationManager];
    v58 = 0;
    v45 = [v44 isLocationServicesPossiblyAvailable:&v58];
    v46 = v58;

    if (v45)
    {
      v47 = +[NSBundle mainBundle];
      v13 = [v47 localizedStringForKey:@"Current Location Not Available" value:@"localized string not found" table:0];

      userInfo4 = +[NSBundle mainBundle];
      [userInfo4 localizedStringForKey:@"Your current location cannot be determined at this time." value:@"localized string not found" table:0];
    }

    else
    {
      userInfo3 = [v46 userInfo];
      v13 = [userInfo3 objectForKeyedSubscript:NSLocalizedDescriptionKey];

      userInfo4 = [v46 userInfo];
      [userInfo4 objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
    }
    v54 = ;

    v35 = v54;
  }

  else
  {
    v55 = +[NSBundle mainBundle];
    v13 = [v55 localizedStringForKey:@"A route can’t be shown because of a problem connecting to the server." value:@"localized string not found" table:0];

    v35 = 0;
  }

  if (errorCopy && GEOConfigGetBOOL())
  {
    userInfo5 = [errorCopy userInfo];
    v37 = [userInfo5 objectForKeyedSubscript:MKErrorDirectionsErrorInfoKey];

    internalServerErrors = [v37 internalServerErrors];
    v39 = [internalServerErrors count];

    if (v39)
    {
      internalServerErrors2 = [v37 internalServerErrors];
      firstObject = [internalServerErrors2 firstObject];
      v42 = [NSString stringWithFormat:@"[Internal Only] %@", firstObject];

      if (v35)
      {
        v43 = [v35 stringByAppendingFormat:@"\n\n%@", v42];

        v35 = v43;
      }

      else
      {
        v35 = v42;
      }
    }
  }

  v49 = [v13 copy];
  errorTitle = self->_errorTitle;
  self->_errorTitle = v49;

  v51 = [v35 copy];
  errorMessage = self->_errorMessage;
  self->_errorMessage = v51;

  v15 = v35;
LABEL_51:
}

- (RoutePlanningError)initWithError:(id)error transportType:(unint64_t)type origin:(id)origin destination:(id)destination
{
  errorCopy = error;
  originCopy = origin;
  destinationCopy = destination;
  v19.receiver = self;
  v19.super_class = RoutePlanningError;
  v13 = [(RoutePlanningError *)&v19 init];
  if (v13)
  {
    userInfo = [errorCopy userInfo];
    v15 = [userInfo objectForKeyedSubscript:MKDirectionsErrorCodeKey];
    -[RoutePlanningError setErrorCode:](v13, "setErrorCode:", [v15 integerValue]);

    [(RoutePlanningError *)v13 _buildErrorStringsFromError:errorCopy transportType:type origin:originCopy destination:destinationCopy];
    [(RoutePlanningError *)v13 _updateRoutingAppsVisibilityWithError:errorCopy transportType:type];
    [(RoutePlanningError *)v13 _updateRegularDirectionsFallbackVisibilityWithError:errorCopy transportType:type];
    _mapkit_transitIncident = [errorCopy _mapkit_transitIncident];
    incidentMessage = v13->_incidentMessage;
    v13->_incidentMessage = _mapkit_transitIncident;
  }

  return v13;
}

@end