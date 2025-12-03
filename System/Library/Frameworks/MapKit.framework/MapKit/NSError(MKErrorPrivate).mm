@interface NSError(MKErrorPrivate)
- (BOOL)_mapkit_isDirectionsError;
- (BOOL)_mapkit_isLocationAuthorizationError;
- (id)_mapkit_errorWithDirectionsError:()MKErrorPrivate stringTokens:;
- (id)_mapkit_transitIncident;
- (uint64_t)_mapkit_directionsErrorCode;
- (uint64_t)_mapkit_underlyingGEOError;
@end

@implementation NSError(MKErrorPrivate)

- (id)_mapkit_transitIncident
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"MKErrorGEOTransitIncidentKey"];

  return v2;
}

- (uint64_t)_mapkit_underlyingGEOError
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"MKErrorGEOError"];

  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)_mapkit_isLocationAuthorizationError
{
  domain = [self domain];
  v3 = [domain isEqualToString:MKLocationErrorDomain];

  return v3 && [self code] < 3;
}

- (uint64_t)_mapkit_directionsErrorCode
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"MKDirectionsErrorCode"];

  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)_mapkit_isDirectionsError
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKey:@"MKDirectionsErrorCode"];
  v3 = v2 != 0;

  return v3;
}

- (id)_mapkit_errorWithDirectionsError:()MKErrorPrivate stringTokens:
{
  v54[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  domain = [self domain];
  v9 = GEOErrorDomain();
  v10 = [domain isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    selfCopy = self;
    goto LABEL_39;
  }

  code = [self code];
  firstDirectionsErrorCode = [v6 firstDirectionsErrorCode];
  if (!v6 || (v13 = firstDirectionsErrorCode, firstDirectionsErrorCode == 1))
  {
    if (code <= -29)
    {
      if (code == -402)
      {
        v13 = 5;
        goto LABEL_4;
      }

      if (code == -401)
      {
        v13 = 4;
        goto LABEL_4;
      }
    }

    else
    {
      switch(code)
      {
        case -28:
          v13 = 17;
          goto LABEL_4;
        case -9:
          v13 = 2;
          goto LABEL_4;
        case -8:
          v13 = 1;
          goto LABEL_4;
      }
    }

    v13 = 3;
  }

LABEL_4:
  title = [v6 title];
  if (!title || (v15 = title, v16 = MEMORY[0x1E696AEC0], [v6 title], v17 = objc_claimAutoreleasedReturnValue(), memset(v52, 0, sizeof(v52)), LOBYTE(v52[0]) = 1, *(v52 + 15) = 0, objc_msgSend(v16, "_navigation_stringForServerFormattedString:options:wrappedOverrideVariables:", v17, v52, v7), localizedTitle = objc_claimAutoreleasedReturnValue(), v17, v15, !localizedTitle))
  {
    localizedTitle = [v6 localizedTitle];
  }

  content = [v6 content];
  if (!content || (v20 = content, v21 = MEMORY[0x1E696AEC0], [v6 content], v22 = objc_claimAutoreleasedReturnValue(), memset(v52, 0, sizeof(v52)), LOBYTE(v52[0]) = 1, *(v52 + 15) = 0, objc_msgSend(v21, "_navigation_stringForServerFormattedString:options:wrappedOverrideVariables:", v22, v52, v7), localizedDescription = objc_claimAutoreleasedReturnValue(), v22, v20, !localizedDescription))
  {
    localizedDescription = [v6 localizedDescription];
  }

  v51 = v7;
  if ([(__CFString *)localizedTitle length]|| [(__CFString *)localizedDescription length])
  {
    v24 = localizedTitle;
  }

  else
  {
    v24 = _MKLocalizedStringFromThisBundle(@"Directions Not Available");

    v47 = &stru_1F15B23C0;
    v48 = @"Cannot locate the start location.";
    switch(v13)
    {
      case 0:
      case 1:
      case 16:
        v48 = @"A route could not be determined between these locations.";
        goto LABEL_68;
      case 2:
      case 22:
        v48 = @"Route information is not available at this moment. An internet connection is required.";
        goto LABEL_68;
      case 3:
        v48 = @"Route information is not available at this moment.";
        goto LABEL_68;
      case 4:
        goto LABEL_68;
      case 5:
        v48 = @"Cannot locate the end location.";
        goto LABEL_68;
      case 6:
        v48 = @"A route to the nearest road cannot be determined.";
        goto LABEL_68;
      case 7:
        v48 = @"A route to the destination from its nearest road cannot be determined";
        goto LABEL_68;
      case 8:
        v48 = @"A route cannot be determined from this start location.";
        goto LABEL_68;
      case 9:
        v48 = @"A route cannot be determined to this destination.";
        goto LABEL_68;
      case 10:
        v50 = _MKLocalizedStringFromThisBundle(@"Walking Directions Not Available");

        v48 = @"A walking route cannot be determined. Walking is not allowed at the start location.";
        goto LABEL_67;
      case 11:
        v50 = _MKLocalizedStringFromThisBundle(@"Walking Directions Not Available");

        v48 = @"A walking route cannot be determined. Walking is not allowed at the destination.";
        goto LABEL_67;
      case 12:
      case 15:
        goto LABEL_69;
      case 13:
        v50 = _MKLocalizedStringFromThisBundle(@"Walking Directions Not Available");

        v48 = @"A walking route cannot be determined for this distance.";
        goto LABEL_67;
      case 14:
        v48 = @"A route is currently not available due to road conditions.";
        goto LABEL_68;
      case 18:
        v49 = @"EV directions aren't yet available here.";
        goto LABEL_66;
      case 19:
        v50 = _MKLocalizedStringFromThisBundle(@"EV Directions Not Available");

        v48 = @"We could not find a route based on the range of the selected vehicle. You can view driving directions without EV information.";
        goto LABEL_67;
      case 20:
        v49 = @"EV Directions Not Available";
LABEL_66:
        v50 = _MKLocalizedStringFromThisBundle(v49);

        v48 = @"You can view driving directions without EV information.";
        goto LABEL_67;
      case 21:
        v50 = _MKLocalizedStringFromThisBundle(@"LPR Directions Not Available");

        v48 = @"You can view driving directions without LPR information.";
LABEL_67:
        v24 = v50;
LABEL_68:
        v47 = v24;
        _MKLocalizedStringFromThisBundle(v48);
        localizedDescription = v24 = localizedDescription;
LABEL_69:

        v24 = v47;
        break;
      default:
        break;
    }
  }

  v25 = objc_opt_new();
  userInfo = [self userInfo];

  if (userInfo)
  {
    userInfo2 = [self userInfo];
    [v25 setObject:userInfo2 forKeyedSubscript:@"MKErrorGEOErrorUserInfo"];
  }

  v28 = [(__CFString *)v24 length];
  v29 = MEMORY[0x1E696A578];
  if (v28)
  {
    [v25 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  v30 = [(__CFString *)localizedDescription length];
  v31 = MEMORY[0x1E696A588];
  if (v30)
  {
    [v25 setObject:localizedDescription forKeyedSubscript:*MEMORY[0x1E696A588]];
  }

  incidentMessage = [v6 incidentMessage];

  if (incidentMessage)
  {
    incidentMessage2 = [v6 incidentMessage];
    [v25 setObject:incidentMessage2 forKeyedSubscript:@"MKErrorGEOTransitIncidentKey"];
  }

  if (v6)
  {
    [v25 setObject:v6 forKeyedSubscript:@"MKErrorDirectionsErrorInfoKey"];
  }

  v53[0] = @"MKDirectionsErrorCode";
  v34 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  v53[1] = @"MKErrorGEOError";
  v54[0] = v34;
  v35 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  v54[1] = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
  [v25 addEntriesFromDictionary:v36];

  if ([(__CFString *)v24 length])
  {
    [v25 setObject:v24 forKeyedSubscript:*v29];
  }

  if ([(__CFString *)localizedDescription length])
  {
    [v25 setObject:localizedDescription forKeyedSubscript:*v31];
  }

  internalServerErrors = [v6 internalServerErrors];

  if (internalServerErrors)
  {
    internalServerErrors2 = [v6 internalServerErrors];
    v39 = [internalServerErrors2 componentsJoinedByString:@" | "];

    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n(internal error: %@)", localizedDescription, v39];
    [v25 setObject:v40 forKeyedSubscript:*MEMORY[0x1E696A278]];
  }

  _mapkit_error = [self _mapkit_error];
  domain2 = [_mapkit_error domain];
  v43 = [domain2 isEqualToString:MKErrorDomain];

  if (v43)
  {
    code2 = [_mapkit_error code];
  }

  else
  {
    code2 = 5;
  }

  selfCopy = [MEMORY[0x1E696ABC0] errorWithDomain:MKErrorDomain code:code2 userInfo:v25];

  v7 = v51;
LABEL_39:

  return selfCopy;
}

@end