@interface JSBrickModelRequestOperation
- (_TtC16MusicApplication28JSBrickModelRequestOperation)init;
- (void)execute;
@end

@implementation JSBrickModelRequestOperation

- (void)execute
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JSBrickModelRequestOperation();
  v2 = v5.receiver;
  [(JSBrickModelRequestOperation *)&v5 execute];
  sub_60044();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_C5590, v3);
}

- (_TtC16MusicApplication28JSBrickModelRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end