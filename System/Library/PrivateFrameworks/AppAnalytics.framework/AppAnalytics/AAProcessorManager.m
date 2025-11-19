@interface AAProcessorManager
- (AAProcessorManager)init;
- (void)flushWithCallbackQueue:(id)a3 completion:(id)a4;
@end

@implementation AAProcessorManager

- (AAProcessorManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)flushWithCallbackQueue:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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
  v10 = a3;
  v9 = self;
  sub_1B69A4218(v10, v6, v7);
  sub_1B69A3100(v6);
}

@end