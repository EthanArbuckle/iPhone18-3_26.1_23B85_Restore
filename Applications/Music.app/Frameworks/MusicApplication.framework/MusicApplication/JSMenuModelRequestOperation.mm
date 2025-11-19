@interface JSMenuModelRequestOperation
- (_TtC16MusicApplication27JSMenuModelRequestOperation)init;
- (void)execute;
@end

@implementation JSMenuModelRequestOperation

- (void)execute
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JSMenuModelRequestOperation();
  v2 = v5.receiver;
  [(JSMenuModelRequestOperation *)&v5 execute];
  sub_13C80(0, &qword_DE8ED0);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_20FDE4, v3);
}

- (_TtC16MusicApplication27JSMenuModelRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end