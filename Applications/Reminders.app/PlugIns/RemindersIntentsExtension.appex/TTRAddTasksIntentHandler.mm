@interface TTRAddTasksIntentHandler
- (_TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler)init;
- (void)resolveTaskTitlesForAddTasks:(id)tasks withCompletion:(id)completion;
@end

@implementation TTRAddTasksIntentHandler

- (void)resolveTaskTitlesForAddTasks:(id)tasks withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  tasksCopy = tasks;
  selfCopy = self;
  sub_10001D5A8(tasksCopy, sub_100026A14, v7);
}

- (_TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end