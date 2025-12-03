@interface ADLocationService
+ (id)sharedService;
- (ADLocationService)initWithDispatchQueue:(id)queue;
- (ADLocationService)initWithDispatchQueue:(id)queue locationManager:(id)manager isSiriLocationServicesPromptingEnabled:(BOOL)enabled;
- (void)currentAuthorizationStyle:(id)style;
- (void)currentLocationWithAccuracy:(double)accuracy timeout:(double)timeout completion:(id)completion;
- (void)currentLocationWithFetchRequest:(id)request completion:(id)completion;
- (void)dismissTCCDialogIfNeeded;
- (void)dismissTCCDialogIfNeeded:(id)needed;
- (void)drainRequestsWithErrorCode:(int64_t)code clearLocationCache:(BOOL)cache dismissDialog:(BOOL)dialog;
- (void)locationManager:(id)manager wantsToSetRequestOrigin:(id)origin;
- (void)requestAuthorizationWithStyle:(unint64_t)style timeout:(double)timeout completion:(id)completion;
- (void)requestTemporaryAccuracyAuthorizationWithStyle:(unint64_t)style timeout:(double)timeout completion:(id)completion;
- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)selection completion:(id)completion;
- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)selection timeout:(double)timeout completion:(id)completion;
- (void)updateTemporaryAuthorizationForAccurateLocation:(BOOL)location completion:(id)completion;
- (void)updateTemporaryAuthorizationForAccurateLocation:(BOOL)location timeout:(double)timeout completion:(id)completion;
@end

@implementation ADLocationService

+ (id)sharedService
{
  if (qword_100590648 != -1)
  {
    dispatch_once(&qword_100590648, &stru_100517678);
  }

  v3 = qword_100590650;

  return v3;
}

- (void)locationManager:(id)manager wantsToSetRequestOrigin:(id)origin
{
  originCopy = origin;
  v4 = +[ADCommandCenter sharedCommandCenter];
  _currentRequest = [v4 _currentRequest];
  v6 = _currentRequest;
  if (_currentRequest)
  {
    currentRequestId = [_currentRequest currentRequestId];
    [originCopy setRefId:currentRequestId];
  }

  [v4 _sendCommandToServer:originCopy];
}

- (void)dismissTCCDialogIfNeeded:(id)needed
{
  neededCopy = needed;
  locationManager = [(ADLocationService *)self locationManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100238778;
  v7[3] = &unk_10051CF58;
  v8 = neededCopy;
  v6 = neededCopy;
  [locationManager dismissTCCDialogIfNeeded:v7];
}

- (void)currentLocationWithFetchRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  locationManager = [(ADLocationService *)self locationManager];
  [locationManager currentLocationWithFetchRequest:requestCopy completion:completionCopy];
}

- (void)currentLocationWithAccuracy:(double)accuracy timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  locationManager = [(ADLocationService *)self locationManager];
  [locationManager currentLocationWithAccuracy:completionCopy timeout:accuracy completion:timeout];
}

- (void)updateTemporaryAuthorizationForAccurateLocation:(BOOL)location timeout:(double)timeout completion:(id)completion
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    locationCopy = location;
    completionCopy = completion;
    completionCopy2 = [(ADLocationService *)self locationManager];
    [completionCopy2 updateTemporaryAuthorizationForAccurateLocation:locationCopy timeout:completionCopy completion:timeout];
  }

  else
  {
    v9 = *(completion + 2);
    completionCopy2 = completion;
    v9();
  }
}

- (void)updateTemporaryAuthorizationForAccurateLocation:(BOOL)location completion:(id)completion
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    locationCopy = location;
    completionCopy = completion;
    completionCopy2 = [(ADLocationService *)self locationManager];
    [completionCopy2 updateTemporaryAuthorizationForAccurateLocation:locationCopy completion:completionCopy];
  }

  else
  {
    v7 = *(completion + 2);
    completionCopy2 = completion;
    v7();
  }
}

- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)selection timeout:(double)timeout completion:(id)completion
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    completionCopy = completion;
    completionCopy2 = [(ADLocationService *)self locationManager];
    [completionCopy2 updateAuthorizationStyleWithUserSelection:selection timeout:completionCopy completion:timeout];
  }

  else
  {
    v9 = *(completion + 2);
    completionCopy2 = completion;
    v9();
  }
}

- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)selection completion:(id)completion
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    completionCopy = completion;
    completionCopy2 = [(ADLocationService *)self locationManager];
    [completionCopy2 updateAuthorizationStyleWithUserSelection:selection completion:completionCopy];
  }

  else
  {
    v7 = *(completion + 2);
    completionCopy2 = completion;
    v7();
  }
}

- (void)requestTemporaryAccuracyAuthorizationWithStyle:(unint64_t)style timeout:(double)timeout completion:(id)completion
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    completionCopy = completion;
    completionCopy2 = [(ADLocationService *)self locationManager];
    [completionCopy2 requestTemporaryAccuracyAuthorizationWithStyle:style timeout:completionCopy completion:timeout];
  }

  else
  {
    v9 = *(completion + 2);
    completionCopy2 = completion;
    v9();
  }
}

- (void)requestAuthorizationWithStyle:(unint64_t)style timeout:(double)timeout completion:(id)completion
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    completionCopy = completion;
    completionCopy2 = [(ADLocationService *)self locationManager];
    [completionCopy2 requestAuthorizationWithStyle:style timeout:completionCopy completion:timeout];
  }

  else
  {
    v9 = *(completion + 2);
    completionCopy2 = completion;
    v9();
  }
}

- (void)currentAuthorizationStyle:(id)style
{
  styleCopy = style;
  locationManager = [(ADLocationService *)self locationManager];
  [locationManager currentAuthorizationStyle:styleCopy];
}

- (void)dismissTCCDialogIfNeeded
{
  locationManager = [(ADLocationService *)self locationManager];
  [locationManager dismissTCCDialogIfNeeded:0];
}

- (void)drainRequestsWithErrorCode:(int64_t)code clearLocationCache:(BOOL)cache dismissDialog:(BOOL)dialog
{
  dialogCopy = dialog;
  cacheCopy = cache;
  locationManager = [(ADLocationService *)self locationManager];
  [locationManager drainRequestsWithErrorCode:code clearLocationCache:cacheCopy dismissDialog:dialogCopy];
}

- (ADLocationService)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v5 = [[ADLocationManager alloc] initWithSerialQueue:queueCopy];
  v6 = [(ADLocationService *)self initWithDispatchQueue:queueCopy locationManager:v5 isSiriLocationServicesPromptingEnabled:+[AFFeatureFlags isSiriLocationServicesPromptingEnabled]];

  return v6;
}

- (ADLocationService)initWithDispatchQueue:(id)queue locationManager:(id)manager isSiriLocationServicesPromptingEnabled:(BOOL)enabled
{
  queueCopy = queue;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = ADLocationService;
  v11 = [(ADLocationService *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_isSiriLocationServicesPromptingEnabled = enabled;
    objc_storeStrong(&v11->_dispatchQueue, queue);
    objc_storeStrong(&v12->_locationManager, manager);
    [(ADLocationManager *)v12->_locationManager setDelegate:v12];
  }

  return v12;
}

@end