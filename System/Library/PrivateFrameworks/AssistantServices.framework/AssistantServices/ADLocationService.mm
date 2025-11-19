@interface ADLocationService
+ (id)sharedService;
- (ADLocationService)initWithDispatchQueue:(id)a3;
- (ADLocationService)initWithDispatchQueue:(id)a3 locationManager:(id)a4 isSiriLocationServicesPromptingEnabled:(BOOL)a5;
- (void)currentAuthorizationStyle:(id)a3;
- (void)currentLocationWithAccuracy:(double)a3 timeout:(double)a4 completion:(id)a5;
- (void)currentLocationWithFetchRequest:(id)a3 completion:(id)a4;
- (void)dismissTCCDialogIfNeeded;
- (void)dismissTCCDialogIfNeeded:(id)a3;
- (void)drainRequestsWithErrorCode:(int64_t)a3 clearLocationCache:(BOOL)a4 dismissDialog:(BOOL)a5;
- (void)locationManager:(id)a3 wantsToSetRequestOrigin:(id)a4;
- (void)requestAuthorizationWithStyle:(unint64_t)a3 timeout:(double)a4 completion:(id)a5;
- (void)requestTemporaryAccuracyAuthorizationWithStyle:(unint64_t)a3 timeout:(double)a4 completion:(id)a5;
- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)a3 completion:(id)a4;
- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)a3 timeout:(double)a4 completion:(id)a5;
- (void)updateTemporaryAuthorizationForAccurateLocation:(BOOL)a3 completion:(id)a4;
- (void)updateTemporaryAuthorizationForAccurateLocation:(BOOL)a3 timeout:(double)a4 completion:(id)a5;
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

- (void)locationManager:(id)a3 wantsToSetRequestOrigin:(id)a4
{
  v8 = a4;
  v4 = +[ADCommandCenter sharedCommandCenter];
  v5 = [v4 _currentRequest];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 currentRequestId];
    [v8 setRefId:v7];
  }

  [v4 _sendCommandToServer:v8];
}

- (void)dismissTCCDialogIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(ADLocationService *)self locationManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100238778;
  v7[3] = &unk_10051CF58;
  v8 = v4;
  v6 = v4;
  [v5 dismissTCCDialogIfNeeded:v7];
}

- (void)currentLocationWithFetchRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ADLocationService *)self locationManager];
  [v8 currentLocationWithFetchRequest:v7 completion:v6];
}

- (void)currentLocationWithAccuracy:(double)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(ADLocationService *)self locationManager];
  [v9 currentLocationWithAccuracy:v8 timeout:a3 completion:a4];
}

- (void)updateTemporaryAuthorizationForAccurateLocation:(BOOL)a3 timeout:(double)a4 completion:(id)a5
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    v6 = a3;
    v8 = a5;
    v10 = [(ADLocationService *)self locationManager];
    [v10 updateTemporaryAuthorizationForAccurateLocation:v6 timeout:v8 completion:a4];
  }

  else
  {
    v9 = *(a5 + 2);
    v10 = a5;
    v9();
  }
}

- (void)updateTemporaryAuthorizationForAccurateLocation:(BOOL)a3 completion:(id)a4
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    v4 = a3;
    v6 = a4;
    v8 = [(ADLocationService *)self locationManager];
    [v8 updateTemporaryAuthorizationForAccurateLocation:v4 completion:v6];
  }

  else
  {
    v7 = *(a4 + 2);
    v8 = a4;
    v7();
  }
}

- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)a3 timeout:(double)a4 completion:(id)a5
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    v8 = a5;
    v10 = [(ADLocationService *)self locationManager];
    [v10 updateAuthorizationStyleWithUserSelection:a3 timeout:v8 completion:a4];
  }

  else
  {
    v9 = *(a5 + 2);
    v10 = a5;
    v9();
  }
}

- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)a3 completion:(id)a4
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    v6 = a4;
    v8 = [(ADLocationService *)self locationManager];
    [v8 updateAuthorizationStyleWithUserSelection:a3 completion:v6];
  }

  else
  {
    v7 = *(a4 + 2);
    v8 = a4;
    v7();
  }
}

- (void)requestTemporaryAccuracyAuthorizationWithStyle:(unint64_t)a3 timeout:(double)a4 completion:(id)a5
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    v8 = a5;
    v10 = [(ADLocationService *)self locationManager];
    [v10 requestTemporaryAccuracyAuthorizationWithStyle:a3 timeout:v8 completion:a4];
  }

  else
  {
    v9 = *(a5 + 2);
    v10 = a5;
    v9();
  }
}

- (void)requestAuthorizationWithStyle:(unint64_t)a3 timeout:(double)a4 completion:(id)a5
{
  if (self->_isSiriLocationServicesPromptingEnabled)
  {
    v8 = a5;
    v10 = [(ADLocationService *)self locationManager];
    [v10 requestAuthorizationWithStyle:a3 timeout:v8 completion:a4];
  }

  else
  {
    v9 = *(a5 + 2);
    v10 = a5;
    v9();
  }
}

- (void)currentAuthorizationStyle:(id)a3
{
  v4 = a3;
  v5 = [(ADLocationService *)self locationManager];
  [v5 currentAuthorizationStyle:v4];
}

- (void)dismissTCCDialogIfNeeded
{
  v2 = [(ADLocationService *)self locationManager];
  [v2 dismissTCCDialogIfNeeded:0];
}

- (void)drainRequestsWithErrorCode:(int64_t)a3 clearLocationCache:(BOOL)a4 dismissDialog:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(ADLocationService *)self locationManager];
  [v8 drainRequestsWithErrorCode:a3 clearLocationCache:v6 dismissDialog:v5];
}

- (ADLocationService)initWithDispatchQueue:(id)a3
{
  v4 = a3;
  v5 = [[ADLocationManager alloc] initWithSerialQueue:v4];
  v6 = [(ADLocationService *)self initWithDispatchQueue:v4 locationManager:v5 isSiriLocationServicesPromptingEnabled:+[AFFeatureFlags isSiriLocationServicesPromptingEnabled]];

  return v6;
}

- (ADLocationService)initWithDispatchQueue:(id)a3 locationManager:(id)a4 isSiriLocationServicesPromptingEnabled:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ADLocationService;
  v11 = [(ADLocationService *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_isSiriLocationServicesPromptingEnabled = a5;
    objc_storeStrong(&v11->_dispatchQueue, a3);
    objc_storeStrong(&v12->_locationManager, a4);
    [(ADLocationManager *)v12->_locationManager setDelegate:v12];
  }

  return v12;
}

@end