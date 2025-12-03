@interface HomeUserGuidesSnapshotProvider
- (_TtC4Maps30HomeUserGuidesSnapshotProvider)init;
- (id)observers;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
- (void)setActive:(BOOL)active;
- (void)setHasInitialData:(BOOL)data;
- (void)setObservers:(id)observers;
@end

@implementation HomeUserGuidesSnapshotProvider

- (void)setHasInitialData:(BOOL)data
{
  dataCopy = data;
  selfCopy = self;
  sub_100486B4C(dataCopy);
}

- (id)observers
{
  swift_getKeyPath();
  sub_100487C14();
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC4Maps30HomeUserGuidesSnapshotProvider__observers);
  v5 = v4;

  return v4;
}

- (void)setObservers:(id)observers
{
  observersCopy = observers;
  selfCopy = self;
  sub_100486EE0(observersCopy);
}

- (void)setActive:(BOOL)active
{
  selfCopy = self;
  sub_100487214(active);
}

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  selfCopy = self;
  sub_10048735C();
}

- (_TtC4Maps30HomeUserGuidesSnapshotProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end