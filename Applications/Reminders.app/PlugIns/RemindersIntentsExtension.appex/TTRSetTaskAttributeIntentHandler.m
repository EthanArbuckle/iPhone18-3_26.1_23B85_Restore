@interface TTRSetTaskAttributeIntentHandler
- (_TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler)init;
- (void)resolveTaskTitleForSetTaskAttribute:(id)a3 withCompletion:(id)a4;
@end

@implementation TTRSetTaskAttributeIntentHandler

- (void)resolveTaskTitleForSetTaskAttribute:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10000A448(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end