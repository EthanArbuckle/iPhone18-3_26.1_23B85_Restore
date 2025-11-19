@interface JSFlowcaseModelRequestOperation
- (_TtC16MusicApplication31JSFlowcaseModelRequestOperation)init;
- (void)execute;
@end

@implementation JSFlowcaseModelRequestOperation

- (void)execute
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JSFlowcaseModelRequestOperation();
  v2 = v5.receiver;
  [(JSFlowcaseModelRequestOperation *)&v5 execute];
  sub_60044();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_AAD2C, v3);
}

- (_TtC16MusicApplication31JSFlowcaseModelRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end