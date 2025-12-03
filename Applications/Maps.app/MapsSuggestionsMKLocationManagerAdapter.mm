@interface MapsSuggestionsMKLocationManagerAdapter
- (MapsSuggestionsMKLocationManagerAdapter)init;
- (void)fetchPlaceInferencesWithFidelityPolicy:(unint64_t)policy handler:(id)handler;
- (void)locationManagerApprovalDidChange:(id)change;
- (void)locationManagerFailedToUpdateLocation:(id)location withError:(id)error;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)onStartImplementation;
- (void)onStopImplementation;
@end

@implementation MapsSuggestionsMKLocationManagerAdapter

- (MapsSuggestionsMKLocationManagerAdapter)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("MapsSuggestionsMKLocationManagerAdapterQueue", v3);
  v10.receiver = self;
  v10.super_class = MapsSuggestionsMKLocationManagerAdapter;
  v5 = [(MapsSuggestionsMKLocationManagerAdapter *)&v10 initWithName:@"MapsSuggestionsMKLocationManagerAdapter" queue:v4];

  if (v5)
  {
    objc_initWeak(&location, v5);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000261EC;
    v7[3] = &unk_101661B98;
    objc_copyWeak(&v8, &location);
    dispatch_async(&_dispatch_main_q, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)onStartImplementation
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100978308;
  v2[3] = &unk_101661B98;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)fetchPlaceInferencesWithFidelityPolicy:(unint64_t)policy handler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100977E18;
  v8[3] = &unk_1016535B0;
  objc_copyWeak(v10, &location);
  v10[1] = policy;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

- (void)locationManagerApprovalDidChange:(id)change
{
  v4 = [(MKLocationManager *)self->_mkLocationManager isAuthorizedForPreciseLocation]^ 1;

  [(MapsSuggestionsMKLocationManagerAdapter *)self considerMyAllowanceAsLimited:v4];
}

- (void)locationManagerFailedToUpdateLocation:(id)location withError:(id)error
{
  errorCopy = error;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed updating location: %@", &v6, 0xCu);
  }
}

- (void)locationManagerUpdatedLocation:(id)location
{
  locationCopy = location;
  -[MapsSuggestionsMKLocationManagerAdapter considerMyAllowanceAsLimited:](self, "considerMyAllowanceAsLimited:", [locationCopy isAuthorizedForPreciseLocation] ^ 1);
  lastLocation = [locationCopy lastLocation];

  [(MapsSuggestionsMKLocationManagerAdapter *)self considerMyNewLocation:lastLocation];
}

- (void)onStopImplementation
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1009781C8;
  v2[3] = &unk_101661B98;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

@end