@interface MapsSuggestionsMKLocationManagerAdapter
- (MapsSuggestionsMKLocationManagerAdapter)init;
- (void)fetchPlaceInferencesWithFidelityPolicy:(unint64_t)a3 handler:(id)a4;
- (void)locationManagerApprovalDidChange:(id)a3;
- (void)locationManagerFailedToUpdateLocation:(id)a3 withError:(id)a4;
- (void)locationManagerUpdatedLocation:(id)a3;
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
    v7[2] = sub_100014788;
    v7[3] = &unk_1000C7C98;
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
  v2[2] = sub_10001494C;
  v2[3] = &unk_1000C7C98;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)onStopImplementation
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100014B48;
  v2[3] = &unk_1000C7C98;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  v4 = a3;
  -[MapsSuggestionsMKLocationManagerAdapter considerMyAllowanceAsLimited:](self, "considerMyAllowanceAsLimited:", [v4 isAuthorizedForPreciseLocation] ^ 1);
  v5 = [v4 lastLocation];

  [(MapsSuggestionsMKLocationManagerAdapter *)self considerMyNewLocation:v5];
}

- (void)locationManagerFailedToUpdateLocation:(id)a3 withError:(id)a4
{
  v4 = a4;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed updating location: %@", &v6, 0xCu);
  }
}

- (void)locationManagerApprovalDidChange:(id)a3
{
  v4 = [(MKLocationManager *)self->_mkLocationManager isAuthorizedForPreciseLocation]^ 1;

  [(MapsSuggestionsMKLocationManagerAdapter *)self considerMyAllowanceAsLimited:v4];
}

- (void)fetchPlaceInferencesWithFidelityPolicy:(unint64_t)a3 handler:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014F08;
  v8[3] = &unk_1000C7CC0;
  objc_copyWeak(v10, &location);
  v10[1] = a3;
  v9 = v6;
  v7 = v6;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

@end