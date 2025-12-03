@interface FBKData
- (id)uploadTasksFromDatabaseWithContext:(id)context;
- (void)allUploadTasksWithUser:(id)user completion:(id)completion;
- (void)beginObservingAllUploadTasks;
@end

@implementation FBKData

- (void)beginObservingAllUploadTasks
{
  selfCopy = self;
  sub_1000542C0();
}

- (void)allUploadTasksWithUser:(id)user completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  userCopy = user;
  selfCopy = self;
  sub_10005698C(userCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (id)uploadTasksFromDatabaseWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_100057988();

  sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
  sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
  v6.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end