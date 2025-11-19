@interface FBKData
- (id)uploadTasksFromDatabaseWithContext:(id)a3;
- (void)allUploadTasksWithUser:(id)a3 completion:(id)a4;
- (void)beginObservingAllUploadTasks;
@end

@implementation FBKData

- (void)beginObservingAllUploadTasks
{
  v2 = self;
  sub_1000542C0();
}

- (void)allUploadTasksWithUser:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10005698C(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (id)uploadTasksFromDatabaseWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100057988();

  sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
  sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
  v6.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end