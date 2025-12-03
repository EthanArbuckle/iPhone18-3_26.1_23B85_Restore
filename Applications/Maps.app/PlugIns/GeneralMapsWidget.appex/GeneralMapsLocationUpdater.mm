@interface GeneralMapsLocationUpdater
- (_TtC17GeneralMapsWidget26GeneralMapsLocationUpdater)initWithName:(id)name queue:(id)queue;
- (void)fetchPlaceInferencesWithFidelityPolicy:(unint64_t)policy handler:(id)handler;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)onStartImplementation;
@end

@implementation GeneralMapsLocationUpdater

- (void)onStartImplementation
{
  selfCopy = self;
  sub_100031AA8();
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  sub_10002620C(0, &qword_1000DF538, CLLocation_ptr);
  v6 = sub_10007E1D8();
  managerCopy = manager;
  selfCopy = self;
  sub_100031D78(managerCopy, v6);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_100032C50(errorCopy);
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v5 = sub_10007DF48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  authorizationCopy = authorization;
  selfCopy = self;
  *v9 = [(GeneralMapsLocationUpdater *)selfCopy dispatchQueue];
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = sub_10007DF68();
  (*(v6 + 8))(v9, v5);
  if (v12)
  {
    -[GeneralMapsLocationUpdater considerMyAllowanceAsLimited:](selfCopy, "considerMyAllowanceAsLimited:", [authorizationCopy accuracyAuthorization] != 0);
  }

  else
  {
    __break(1u);
  }
}

- (void)fetchPlaceInferencesWithFidelityPolicy:(unint64_t)policy handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_1000324B4(policy, sub_100032C48, v7);
}

- (_TtC17GeneralMapsWidget26GeneralMapsLocationUpdater)initWithName:(id)name queue:(id)queue
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end