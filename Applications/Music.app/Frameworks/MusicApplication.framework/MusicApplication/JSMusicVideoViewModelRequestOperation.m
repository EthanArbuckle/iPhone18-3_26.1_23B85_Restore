@interface JSMusicVideoViewModelRequestOperation
- (_TtC16MusicApplication37JSMusicVideoViewModelRequestOperation)init;
- (void)execute;
@end

@implementation JSMusicVideoViewModelRequestOperation

- (void)execute
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JSMusicVideoViewModelRequestOperation();
  v2 = v5.receiver;
  [(JSMusicVideoViewModelRequestOperation *)&v5 execute];
  sub_60044();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_275914, v3);
}

- (_TtC16MusicApplication37JSMusicVideoViewModelRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end