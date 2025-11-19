@interface JSSocialProfileModelRequestOperation
- (_TtC16MusicApplication36JSSocialProfileModelRequestOperation)init;
- (void)execute;
@end

@implementation JSSocialProfileModelRequestOperation

- (void)execute
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(JSSocialProfileModelRequestOperation *)&v5 execute];
  sub_60044();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4EC254, v3);
}

- (_TtC16MusicApplication36JSSocialProfileModelRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end