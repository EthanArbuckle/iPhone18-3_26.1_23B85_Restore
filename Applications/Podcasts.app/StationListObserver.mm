@interface StationListObserver
- (_TtC8Podcasts19StationListObserver)init;
- (void)controllerDidChangeContent:(id)content;
- (void)dealloc;
@end

@implementation StationListObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Podcasts19StationListObserver_stationsObserver);
  selfCopy = self;
  [v2 setDelegate:0];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for StationListObserver();
  [(StationListObserver *)&v4 dealloc];
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  sub_10035D5FC();
}

- (_TtC8Podcasts19StationListObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end