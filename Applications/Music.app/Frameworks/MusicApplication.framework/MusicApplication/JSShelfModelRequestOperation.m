@interface JSShelfModelRequestOperation
- (_TtC16MusicApplication28JSShelfModelRequestOperation)init;
- (void)execute;
@end

@implementation JSShelfModelRequestOperation

- (void)execute
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JSShelfModelRequestOperation();
  v2 = v5.receiver;
  [(JSShelfModelRequestOperation *)&v5 execute];
  sub_13C80(0, &qword_DE8ED0);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_29BD70, v3);
}

- (_TtC16MusicApplication28JSShelfModelRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end