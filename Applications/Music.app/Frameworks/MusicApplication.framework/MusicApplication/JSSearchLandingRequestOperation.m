@interface JSSearchLandingRequestOperation
- (_TtC16MusicApplication31JSSearchLandingRequestOperation)init;
- (void)execute;
@end

@implementation JSSearchLandingRequestOperation

- (void)execute
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JSSearchLandingRequestOperation();
  v2 = v5.receiver;
  [(JSSearchLandingRequestOperation *)&v5 execute];
  sub_60044();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_2001FC, v3);
}

- (_TtC16MusicApplication31JSSearchLandingRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end