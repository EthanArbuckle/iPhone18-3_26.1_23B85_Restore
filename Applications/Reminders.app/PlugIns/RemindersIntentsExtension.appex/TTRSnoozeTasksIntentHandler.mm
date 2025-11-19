@interface TTRSnoozeTasksIntentHandler
- (_TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler)init;
- (void)handleSnoozeTasks:(id)a3 completion:(id)a4;
- (void)resolveNextTriggerTimeForSnoozeTasks:(id)a3 withCompletion:(id)a4;
- (void)resolveTasksForSnoozeTasks:(id)a3 withCompletion:(id)a4;
@end

@implementation TTRSnoozeTasksIntentHandler

- (void)resolveTasksForSnoozeTasks:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100012908(v8, sub_1000157B4, v7);
}

- (void)resolveNextTriggerTimeForSnoozeTasks:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10001422C(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleSnoozeTasks:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100014CD0(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end