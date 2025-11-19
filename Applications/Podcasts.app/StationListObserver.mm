@interface StationListObserver
- (_TtC8Podcasts19StationListObserver)init;
- (void)controllerDidChangeContent:(id)a3;
- (void)dealloc;
@end

@implementation StationListObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver);
  v3 = self;
  [v2 setDelegate:0];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for StationListObserver();
  [(StationListObserver *)&v4 dealloc];
}

- (void)controllerDidChangeContent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10035D5FC();
}

- (_TtC8Podcasts19StationListObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end