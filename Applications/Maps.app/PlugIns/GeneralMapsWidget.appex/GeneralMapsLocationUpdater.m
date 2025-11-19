@interface GeneralMapsLocationUpdater
- (_TtC17GeneralMapsWidget26GeneralMapsLocationUpdater)initWithName:(id)a3 queue:(id)a4;
- (void)fetchPlaceInferencesWithFidelityPolicy:(unint64_t)a3 handler:(id)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)onStartImplementation;
@end

@implementation GeneralMapsLocationUpdater

- (void)onStartImplementation
{
  v2 = self;
  sub_100031AA8();
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  sub_10002620C(0, &qword_1000DF538, CLLocation_ptr);
  v6 = sub_10007E1D8();
  v7 = a3;
  v8 = self;
  sub_100031D78(v7, v6);
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_100032C50(v8);
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v5 = sub_10007DF48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a3;
  v11 = self;
  *v9 = [(GeneralMapsLocationUpdater *)v11 dispatchQueue];
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = sub_10007DF68();
  (*(v6 + 8))(v9, v5);
  if (v12)
  {
    -[GeneralMapsLocationUpdater considerMyAllowanceAsLimited:](v11, "considerMyAllowanceAsLimited:", [v10 accuracyAuthorization] != 0);
  }

  else
  {
    __break(1u);
  }
}

- (void)fetchPlaceInferencesWithFidelityPolicy:(unint64_t)a3 handler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  sub_1000324B4(a3, sub_100032C48, v7);
}

- (_TtC17GeneralMapsWidget26GeneralMapsLocationUpdater)initWithName:(id)a3 queue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end