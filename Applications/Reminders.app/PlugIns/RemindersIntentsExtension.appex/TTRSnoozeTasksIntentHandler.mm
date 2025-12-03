@interface TTRSnoozeTasksIntentHandler
- (_TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler)init;
- (void)handleSnoozeTasks:(id)tasks completion:(id)completion;
- (void)resolveNextTriggerTimeForSnoozeTasks:(id)tasks withCompletion:(id)completion;
- (void)resolveTasksForSnoozeTasks:(id)tasks withCompletion:(id)completion;
@end

@implementation TTRSnoozeTasksIntentHandler

- (void)resolveTasksForSnoozeTasks:(id)tasks withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  tasksCopy = tasks;
  selfCopy = self;
  sub_100012908(tasksCopy, sub_1000157B4, v7);
}

- (void)resolveNextTriggerTimeForSnoozeTasks:(id)tasks withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  tasksCopy = tasks;
  selfCopy = self;
  sub_10001422C(tasksCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)handleSnoozeTasks:(id)tasks completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  tasksCopy = tasks;
  selfCopy = self;
  sub_100014CD0(tasksCopy, selfCopy, v6);
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