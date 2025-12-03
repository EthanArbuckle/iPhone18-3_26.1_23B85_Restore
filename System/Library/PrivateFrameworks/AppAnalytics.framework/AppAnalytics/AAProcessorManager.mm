@interface AAProcessorManager
- (AAProcessorManager)init;
- (void)flushWithCallbackQueue:(id)queue completion:(id)completion;
@end

@implementation AAProcessorManager

- (AAProcessorManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)flushWithCallbackQueue:(id)queue completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1B69D72B0;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(&self->super.isa + OBJC_IVAR___AAProcessorManager_processorManager);
  queueCopy = queue;
  selfCopy = self;
  sub_1B69A4218(queueCopy, v6, v7);
  sub_1B69A3100(v6);
}

@end