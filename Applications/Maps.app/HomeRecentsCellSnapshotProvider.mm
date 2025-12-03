@interface HomeRecentsCellSnapshotProvider
- (BOOL)active;
- (BOOL)hasInitialData;
- (_TtC4Maps31HomeRecentsCellSnapshotProvider)init;
- (id)observers;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
- (void)setActive:(BOOL)active;
- (void)setObservers:(id)observers;
@end

@implementation HomeRecentsCellSnapshotProvider

- (id)observers
{
  swift_getKeyPath();
  sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__observers);
  v5 = v4;

  return v4;
}

- (void)setObservers:(id)observers
{
  observersCopy = observers;
  selfCopy = self;
  sub_1000D4828(observersCopy);
}

- (BOOL)active
{
  swift_getKeyPath();
  sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(self) = *(&selfCopy->super.isa + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active);

  return self;
}

- (void)setActive:(BOOL)active
{
  selfCopy = self;
  sub_1000D50F0(active);
}

- (BOOL)hasInitialData
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_recentsDataProvider);
  selfCopy = self;
  if ([v2 hasInitialData])
  {
    hasInitialData = 1;
  }

  else
  {
    hasInitialData = [*(&selfCopy->super.isa + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_markedLocationDataProvider) hasInitialData];
  }

  return hasInitialData;
}

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  selfCopy = self;
  sub_1000D4C6C();
}

- (_TtC4Maps31HomeRecentsCellSnapshotProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end