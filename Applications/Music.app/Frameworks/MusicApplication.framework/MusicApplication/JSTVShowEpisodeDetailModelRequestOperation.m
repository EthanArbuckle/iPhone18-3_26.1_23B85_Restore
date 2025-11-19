@interface JSTVShowEpisodeDetailModelRequestOperation
- (_TtC16MusicApplication42JSTVShowEpisodeDetailModelRequestOperation)init;
- (void)execute;
@end

@implementation JSTVShowEpisodeDetailModelRequestOperation

- (void)execute
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JSTVShowEpisodeDetailModelRequestOperation();
  v2 = v5.receiver;
  [(JSTVShowEpisodeDetailModelRequestOperation *)&v5 execute];
  sub_60044();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_21EBEC, v3);
}

- (_TtC16MusicApplication42JSTVShowEpisodeDetailModelRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end