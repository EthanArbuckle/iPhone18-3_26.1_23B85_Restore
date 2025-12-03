@interface SLAssistantPost
+ (id)locationPermissionBundleForSiri;
- (BOOL)_shouldInitializeLocationSearch;
- (id)account;
- (id)accountStore;
- (void)_attemptPostRequest:(id)request withCompletionBlock:(id)block;
- (void)_callLocationAcquiredHandler;
- (void)_checkAccountCredentialsWithCompletionHandler:(id)handler;
- (void)_checkAccountGeoTagStatusWithCompletionHandler:(id)handler;
- (void)_checkLocationAndAccountsForObject:(id)object completion:(id)completion;
- (void)_cleanupLocationServices;
- (void)_createAndExecutePostRequestWithStatus:(id)status account:(id)account completion:(id)completion;
- (void)_finishedPostRequest:(id)request withCompletionBlock:(id)block responseData:(id)data urlResponse:(id)response error:(id)error;
- (void)_makeLocationSwitchVisible;
- (void)_processResponseFromServiceWithHandler:(id)handler;
- (void)_setLocationWithLatitude:(float)latitude longitude:(float)longitude;
- (void)_stopUpdatingLocation;
- (void)dealloc;
- (void)initializeLocationSearch;
- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateToLocation:(id)location fromLocation:(id)fromLocation;
- (void)performCreateWithObject:(id)object completion:(id)completion;
- (void)performPostRequestWithObject:(id)object completion:(id)completion;
- (void)waitUntilLocationAcquiredOrTimeElapsed:(float)elapsed andExecute:(id)execute;
@end

@implementation SLAssistantPost

- (void)dealloc
{
  [(SLAssistantPost *)self _cleanupLocationServices];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_stopRetrying" object:0];
  self->_delegate = 0;
  v3.receiver = self;
  v3.super_class = SLAssistantPost;
  [(SLAssistantPost *)&v3 dealloc];
}

- (id)accountStore
{
  result = self->_accountStore;
  if (!result)
  {
    result = objc_alloc_init(ACAccountStore);
    self->_accountStore = result;
  }

  return result;
}

- (id)account
{
  if (!self->_account && !self->_checkedForAccount)
  {
    self->_checkedForAccount = 1;
    accountStore = [(SLAssistantPost *)self accountStore];
    v4 = [accountStore accountTypeWithAccountTypeIdentifier:{-[SLAssistantPostDelegate accountTypeIdentifier](self->_delegate, "accountTypeIdentifier")}];
    lastAccountIdentifier = [(SLAssistantPostDelegate *)self->_delegate lastAccountIdentifier];
    if (lastAccountIdentifier)
    {
      v6 = [accountStore accountWithIdentifier:lastAccountIdentifier];
      self->_account = v6;
      if (v6)
      {
        return self->_account;
      }
    }

    else if (self->_account)
    {
      return self->_account;
    }

    v7 = [accountStore accountsWithAccountType:v4];
    if ([v7 count])
    {
      v8 = [v7 objectAtIndex:0];
      self->_account = v8;
      [(SLAssistantPostDelegate *)self->_delegate setLastAccountIdentifier:[(ACAccount *)v8 identifier]];
    }
  }

  return self->_account;
}

- (void)_attemptPostRequest:(id)request withCompletionBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_17B4;
  v4[3] = &unk_81E8;
  v4[4] = self;
  v4[5] = request;
  v4[6] = block;
  [request performRequestWithHandler:v4];
}

- (void)_finishedPostRequest:(id)request withCompletionBlock:(id)block responseData:(id)data urlResponse:(id)response error:(id)error
{
  if (error)
  {
    localizedDescription = [error localizedDescription];
  }

  else
  {
    statusCode = [response statusCode];
    if ((statusCode - 400) > 0xFFFFFFFFFFFFFE70)
    {
      goto LABEL_8;
    }

    localizedDescription = [NSHTTPURLResponse localizedStringForStatusCode:statusCode];
  }

  v14 = localizedDescription;
  if (!localizedDescription)
  {
LABEL_8:
    v16 = +[SADomainObjectCommitCompleted domainObjectCommitCompleted];
    -[SACommandFailed setIdentifier:](v16, "setIdentifier:", [-[SADomainObjectCommit identifier](self->_object "identifier")]);
    self->_shouldRetry = 0;
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_stopRetrying" object:0];
    [(SLAssistantPostDelegate *)self->_delegate playPostSound];
    if (!v16)
    {
      return;
    }

LABEL_9:
    dictionary = [(SACommandFailed *)v16 dictionary];
    v18 = *(block + 2);

    v18(block, dictionary);
    return;
  }

  if ([(SLAssistantPostDelegate *)self->_delegate responseDataIndicatesDuplicatePost:data urlResponse:response])
  {
    v15 = [SACommandFailed commandFailedWithErrorCode:SAMicroblogMicroblogDupliatePostingErrorCode];
    goto LABEL_21;
  }

  if (!self->_shouldRetry || (remainingRetryCount = self->_remainingRetryCount, v20 = remainingRetryCount < 1, v21 = remainingRetryCount - 1, v20))
  {
    v22 = [(SLAssistantPostDelegate *)self->_delegate extractErrorDetailsFromResponseData:data urlResponse:response];
    if (v22)
    {
      v23 = [NSString stringWithFormat:@"%@ (%@)", v14, v22];
    }

    else
    {
      v23 = v14;
    }

    v15 = [SACommandFailed commandFailedWithReason:v23];
LABEL_21:
    v16 = v15;
    if (!v15)
    {
      return;
    }

    goto LABEL_9;
  }

  self->_remainingRetryCount = v21;

  [(SLAssistantPost *)self _attemptPostRequest:request withCompletionBlock:block];
}

- (void)performCreateWithObject:(id)object completion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1AD0;
  v4[3] = &unk_8210;
  v4[4] = completion;
  -[SLAssistantPost _checkLocationAndAccountsForObject:completion:](self, "_checkLocationAndAccountsForObject:completion:", [object object], v4);
}

- (void)performPostRequestWithObject:(id)object completion:(id)completion
{
  object = self->_object;
  if (object)
  {
  }

  objectCopy = object;
  self->_object = objectCopy;
  identifier = [(SADomainObjectCommit *)objectCopy identifier];
  content = [identifier content];
  if (!content)
  {
    v15 = [SACommandFailed commandFailedWithReason:@"No string to send."];
    if (v15)
    {
      goto LABEL_25;
    }
  }

  account = [(SLAssistantPost *)self account];
  if (account)
  {
    v12 = account;
    if (![identifier useLocation] || !objc_msgSend(objc_msgSend(identifier, "useLocation"), "intValue"))
    {
      v16 = 0;
      goto LABEL_16;
    }

    if (+[CLLocationManager locationServicesEnabled](CLLocationManager, "locationServicesEnabled") && +[CLLocationManager authorizationStatusForBundle:](CLLocationManager, "authorizationStatusForBundle:", +[SLAssistantPost locationPermissionBundleForSiri]) == 3)
    {
      v13 = [CLLocationManager authorizationStatusForBundle:[(SLAssistantPostDelegate *)self->_delegate locationPermissionBundle]];
      if (v13 != 3)
      {
        if (!v13)
        {
          [(SLAssistantPost *)self _makeLocationSwitchVisible];
        }

        v14 = &SAMicroblogMicroblogLocationSettingDisabledErrorCode;
        goto LABEL_24;
      }

      v16 = 1;
LABEL_16:
      v17 = 0;
      if ([identifier location])
      {
        v18 = [objc_msgSend(identifier "location")];
        v19 = [objc_msgSend(identifier "location")];
        v20 = 0;
        if (v18)
        {
          v21 = v19;
          v22 = 0;
          if (v19)
          {
            [v18 floatValue];
            v17 = v23;
            [v21 floatValue];
            v20 = 1;
          }

          if (v16)
          {
            goto LABEL_21;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v20 = 0;
      }

      v22 = 0;
      if (v16)
      {
LABEL_21:
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1DF0;
        v27[3] = &unk_8260;
        v30 = v20;
        v28 = v17;
        v29 = v22;
        v27[4] = self;
        v27[5] = content;
        v27[6] = v12;
        v27[7] = completion;
        [(SLAssistantPost *)self _checkAccountGeoTagStatusWithCompletionHandler:v27];
        return;
      }

LABEL_30:
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1F2C;
      v26[3] = &unk_8288;
      v26[4] = self;
      v26[5] = content;
      v26[6] = v12;
      v26[7] = completion;
      dispatch_async(&_dispatch_main_q, v26);
      return;
    }

    v14 = &SAMicroblogSiriLocationSettingDisabledErrorCode;
  }

  else
  {
    v14 = &SAMicroblogMicroblogNoAccountErrorCode;
  }

LABEL_24:
  v15 = [SACommandFailed commandFailedWithErrorCode:*v14];
LABEL_25:
  dictionary = [(SACommandFailed *)v15 dictionary];
  v25 = *(completion + 2);

  v25(completion, dictionary);
}

- (void)_createAndExecutePostRequestWithStatus:(id)status account:(id)account completion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1FB0;
  v5[3] = &unk_82B0;
  v5[4] = self;
  v5[5] = status;
  v5[6] = account;
  v5[7] = completion;
  [(SLAssistantPost *)self waitUntilLocationAcquiredOrTimeElapsed:v5 andExecute:COERCE_DOUBLE(COERCE_UNSIGNED_INT(3.0))];
}

- (void)_checkAccountCredentialsWithCompletionHandler:(id)handler
{
  account = [(SLAssistantPost *)self account];
  if (!account)
  {
    (*(handler + 2))(handler, 0);
  }

  delegate = self->_delegate;

  [(SLAssistantPostDelegate *)delegate verifyCredentialsForAccount:account completion:handler];
}

- (void)_checkAccountGeoTagStatusWithCompletionHandler:(id)handler
{
  account = [(SLAssistantPost *)self account];
  if (account)
  {
    v6 = account;
    delegate = self->_delegate;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_21BC;
    v9[3] = &unk_8300;
    v9[4] = handler;
    [(SLAssistantPostDelegate *)delegate verifyGeotagSettingsForAccount:v6 defaultSetting:1 completion:v9];
  }

  else
  {
    v8 = *(handler + 2);

    v8(handler, 1);
  }
}

- (void)_checkLocationAndAccountsForObject:(id)object completion:(id)completion
{
  if ([ACAccountStore accountsWithAccountTypeIdentifierExist:[(SLAssistantPostDelegate *)self->_delegate accountTypeIdentifier]]!= 1)
  {
    v7 = [SACommandFailed commandFailedWithErrorCode:SAMicroblogMicroblogNoAccountErrorCode];
    if (v7)
    {
      goto LABEL_24;
    }
  }

  if ([object useLocation])
  {
    v8 = [objc_msgSend(object "useLocation")] != 0;
  }

  else
  {
    v8 = 0;
  }

  v7 = 0;
  if (!+[CLLocationManager locationServicesEnabled]&& v8)
  {
    v7 = [SACommandFailed commandFailedWithErrorCode:SAMicroblogSiriLocationSettingDisabledErrorCode];
  }

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 ^ 1;
  }

  if ((v9 & 1) == 0)
  {
    if (+[CLLocationManager authorizationStatusForBundle:](CLLocationManager, "authorizationStatusForBundle:", +[SLAssistantPost locationPermissionBundleForSiri]) == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = [SACommandFailed commandFailedWithErrorCode:SAMicroblogSiriLocationSettingDisabledErrorCode];
    }
  }

  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 ^ 1;
  }

  if ((v10 & 1) == 0)
  {
    v11 = [CLLocationManager authorizationStatusForBundle:[(SLAssistantPostDelegate *)self->_delegate locationPermissionBundle]];
    if (v11 == 3)
    {
      v8 = 1;
      self->_awaitingAccountCredentialVerification = 1;
      goto LABEL_29;
    }

    v12 = v11;
    v7 = [SACommandFailed commandFailedWithErrorCode:SAMicroblogMicroblogLocationSettingDisabledErrorCode];
    if (!v12)
    {
      [(SLAssistantPost *)self _makeLocationSwitchVisible];
      if (v7)
      {
        goto LABEL_24;
      }

LABEL_28:
      self->_awaitingAccountCredentialVerification = 1;
LABEL_29:
      self->_assistantWantsLocation = v8;
      self->_awaitingLocationSettingStatus = v8;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_24E4;
      v15[3] = &unk_8350;
      v15[4] = self;
      v15[5] = completion;
      [(SLAssistantPost *)self _checkAccountCredentialsWithCompletionHandler:v15];
      if (v8)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_2580;
        v14[3] = &unk_8350;
        v14[4] = self;
        v14[5] = completion;
        [(SLAssistantPost *)self _checkAccountGeoTagStatusWithCompletionHandler:v14];
      }

      return;
    }
  }

  if (!v7)
  {
    goto LABEL_28;
  }

LABEL_24:
  v13 = *(completion + 2);

  v13(completion, v7);
}

- (void)_processResponseFromServiceWithHandler:(id)handler
{
  delegate = self->_delegate;
  v6 = objc_opt_class();
  accountCredentialsVerified = self->_accountCredentialsVerified;
  locationSettingAllowed = self->_locationSettingAllowed;
  awaitingAccountCredentialVerification = self->_awaitingAccountCredentialVerification;
  awaitingLocationSettingStatus = self->_awaitingLocationSettingStatus;
  v10 = v6;
  _SLLog();
  if (self->_awaitingLocationSettingStatus || self->_awaitingAccountCredentialVerification)
  {
    return;
  }

  if (!self->_accountCredentialsVerified)
  {
    v8 = &SAMicroblogMicroblogLoginFailedErrorCode;
LABEL_9:
    locationSettingAllowed = [SACommandFailed commandFailedWithErrorCode:*v8, v10, awaitingAccountCredentialVerification, awaitingLocationSettingStatus, accountCredentialsVerified, locationSettingAllowed];
    goto LABEL_10;
  }

  if (self->_assistantWantsLocation && !self->_locationSettingAllowed)
  {
    v8 = &SAMicroblogMicroblogLocationDisabledFromProviderErrorCode;
    goto LABEL_9;
  }

  locationSettingAllowed = 0;
LABEL_10:
  v9 = *(handler + 2);

  v9(handler, locationSettingAllowed);
}

- (void)_makeLocationSwitchVisible
{
  locationPermissionBundle = [(SLAssistantPostDelegate *)self->_delegate locationPermissionBundle];

  [CLLocationManager setAuthorizationStatus:0 forBundle:locationPermissionBundle];
}

+ (id)locationPermissionBundleForSiri
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (BOOL)_shouldInitializeLocationSearch
{
  LODWORD(useLocation) = +[CLLocationManager locationServicesEnabled];
  if (useLocation)
  {
    identifier = [(SADomainObjectCommit *)self->_object identifier];
    useLocation = [identifier useLocation];
    if (useLocation)
    {
      LOBYTE(useLocation) = [objc_msgSend(identifier "useLocation")] != 0;
    }
  }

  return useLocation;
}

- (void)initializeLocationSearch
{
  if ([(SLAssistantPost *)self _shouldInitializeLocationSearch]&& !self->_locationManager)
  {
    v3 = [[CLLocationManager alloc] initWithEffectiveBundle:{+[SLAssistantPost locationPermissionBundleForSiri](SLAssistantPost, "locationPermissionBundleForSiri")}];
    self->_locationManager = v3;
    [(CLLocationManager *)v3 setDelegate:self];
    [(CLLocationManager *)self->_locationManager setDesiredAccuracy:kCLLocationAccuracyHundredMeters * 5.0];
    [(CLLocationManager *)self->_locationManager setDistanceFilter:500.0];
    if (!self->_updatingLocation)
    {
      [(CLLocationManager *)self->_locationManager startUpdatingLocationWithPrompt];
      [(SLAssistantPost *)self performSelector:"_stopUpdatingLocation" withObject:0 afterDelay:20.0];
      self->_updatingLocation = 1;
    }
  }
}

- (void)waitUntilLocationAcquiredOrTimeElapsed:(float)elapsed andExecute:(id)execute
{
  if (self->_updatingLocation)
  {
    locationAcquiredHandler = self->_locationAcquiredHandler;
    if (locationAcquiredHandler)
    {
      _Block_release(locationAcquiredHandler);
    }

    self->_locationAcquiredHandler = _Block_copy(execute);
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_stopUpdatingLocation" object:0];

    [(SLAssistantPost *)self performSelector:"_stopUpdatingLocation" withObject:0 afterDelay:elapsed];
  }

  else
  {
    (*(execute + 2))(execute, self->_bestLocation, elapsed);
    v8 = self->_locationAcquiredHandler;
    if (v8)
    {
      _Block_release(v8);
      self->_locationAcquiredHandler = 0;
    }
  }
}

- (void)_setLocationWithLatitude:(float)latitude longitude:(float)longitude
{
  if (self->_updatingLocation)
  {
    self->_updatingLocation = 0;
  }

  bestLocation = self->_bestLocation;
  if (bestLocation)
  {

    self->_bestLocation = 0;
  }

  self->_bestLocation = [[CLLocation alloc] initWithLatitude:latitude longitude:longitude];
}

- (void)_cleanupLocationServices
{
  locationAcquiredHandler = self->_locationAcquiredHandler;
  if (locationAcquiredHandler)
  {
    _Block_release(locationAcquiredHandler);
    self->_locationAcquiredHandler = 0;
  }

  [(SLAssistantPost *)self _stopUpdatingLocation];

  bestLocation = self->_bestLocation;
}

- (void)_stopUpdatingLocation
{
  if (self->_updatingLocation)
  {
    [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_stopUpdatingLocation:" object:0];
    self->_updatingLocation = 0;

    [(SLAssistantPost *)self _callLocationAcquiredHandler];
  }
}

- (void)_callLocationAcquiredHandler
{
  locationAcquiredHandler = self->_locationAcquiredHandler;
  if (locationAcquiredHandler)
  {
    locationAcquiredHandler[2](locationAcquiredHandler, self->_bestLocation);
    v4 = self->_locationAcquiredHandler;
    if (v4)
    {
      _Block_release(v4);
      self->_locationAcquiredHandler = 0;
    }
  }
}

- (void)locationManager:(id)manager didUpdateToLocation:(id)location fromLocation:(id)fromLocation
{
  [objc_msgSend(location timestamp];
  if (v7 >= -5.0)
  {
    [location horizontalAccuracy];
    if (v8 >= 0.0)
    {
      bestLocation = self->_bestLocation;
      if (bestLocation)
      {
        [(CLLocation *)bestLocation horizontalAccuracy];
        v11 = v10;
        [location horizontalAccuracy];
        if (v11 <= v12)
        {
          return;
        }

        v13 = self->_bestLocation;
      }

      else
      {
        v13 = 0;
      }

      self->_bestLocation = location;
      [location horizontalAccuracy];
      v15 = v14;
      [(CLLocationManager *)self->_locationManager desiredAccuracy];
      if (v15 <= v16)
      {

        [(SLAssistantPost *)self _stopUpdatingLocation];
      }
    }
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  if ([error code])
  {

    [(SLAssistantPost *)self _stopUpdatingLocation];
  }
}

- (void)locationManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  if (status != 3)
  {
    [(SLAssistantPost *)self _stopUpdatingLocation];
  }
}

@end