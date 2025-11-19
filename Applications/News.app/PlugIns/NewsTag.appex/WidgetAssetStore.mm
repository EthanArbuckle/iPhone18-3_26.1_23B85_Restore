@interface WidgetAssetStore
- (_TtC7NewsTag16WidgetAssetStore)init;
- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4;
@end

@implementation WidgetAssetStore

- (_TtC7NewsTag16WidgetAssetStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10001FF60(sub_10001FF58, v6);
  swift_unknownObjectRelease();
}

@end