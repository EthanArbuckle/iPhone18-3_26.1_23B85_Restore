@interface ICImportAppMigrationDataLaunchTask
- (ICImportAppMigrationDataLaunchTask)init;
- (void)runLaunchTaskWithCompletionHandler:(id)handler;
@end

@implementation ICImportAppMigrationDataLaunchTask

- (ICImportAppMigrationDataLaunchTask)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ImportAppMigrationDataLaunchTask();
  return [(ICImportAppMigrationDataLaunchTask *)&v3 init];
}

- (void)runLaunchTaskWithCompletionHandler:(id)handler
{
  v5 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10054D518;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100548DF0;
  v12[5] = v11;
  selfCopy = self;
  sub_1004A09D8(0, 0, v7, &unk_100544850, v12);
}

@end