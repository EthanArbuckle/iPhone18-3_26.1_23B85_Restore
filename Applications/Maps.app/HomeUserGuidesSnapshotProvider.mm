@interface HomeUserGuidesSnapshotProvider
- (_TtC4Maps30HomeUserGuidesSnapshotProvider)init;
- (id)observers;
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setHasInitialData:(BOOL)a3;
- (void)setObservers:(id)a3;
@end

@implementation HomeUserGuidesSnapshotProvider

- (void)setHasInitialData:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_100486B4C(v3);
}

- (id)observers
{
  swift_getKeyPath();
  sub_100487C14();
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(&v3->super.isa + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__observers);
  v5 = v4;

  return v4;
}

- (void)setObservers:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100486EE0(v4);
}

- (void)setActive:(BOOL)a3
{
  v4 = self;
  sub_100487214(a3);
}

- (void)homeDataProvidingObjectDidUpdate:(id)a3
{
  v3 = self;
  sub_10048735C();
}

- (_TtC4Maps30HomeUserGuidesSnapshotProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end