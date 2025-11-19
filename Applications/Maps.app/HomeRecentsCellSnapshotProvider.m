@interface HomeRecentsCellSnapshotProvider
- (BOOL)active;
- (BOOL)hasInitialData;
- (_TtC4Maps31HomeRecentsCellSnapshotProvider)init;
- (id)observers;
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setObservers:(id)a3;
@end

@implementation HomeRecentsCellSnapshotProvider

- (id)observers
{
  swift_getKeyPath();
  sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(&v3->super.isa + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__observers);
  v5 = v4;

  return v4;
}

- (void)setObservers:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000D4828(v4);
}

- (BOOL)active
{
  swift_getKeyPath();
  sub_1000D6850(&qword_101923EE0, type metadata accessor for HomeRecentsCellSnapshotProvider);
  v3 = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(self) = *(&v3->super.isa + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider__active);

  return self;
}

- (void)setActive:(BOOL)a3
{
  v4 = self;
  sub_1000D50F0(a3);
}

- (BOOL)hasInitialData
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_recentsDataProvider);
  v3 = self;
  if ([v2 hasInitialData])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(&v3->super.isa + OBJC_IVAR____TtC4Maps31HomeRecentsCellSnapshotProvider_markedLocationDataProvider) hasInitialData];
  }

  return v4;
}

- (void)homeDataProvidingObjectDidUpdate:(id)a3
{
  v3 = self;
  sub_1000D4C6C();
}

- (_TtC4Maps31HomeRecentsCellSnapshotProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end