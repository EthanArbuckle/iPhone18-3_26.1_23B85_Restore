@interface WidgetAssetStore
- (_TtC7NewsTag16WidgetAssetStore)init;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
@end

@implementation WidgetAssetStore

- (_TtC7NewsTag16WidgetAssetStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10001FF60(sub_10001FF58, v6);
  swift_unknownObjectRelease();
}

@end