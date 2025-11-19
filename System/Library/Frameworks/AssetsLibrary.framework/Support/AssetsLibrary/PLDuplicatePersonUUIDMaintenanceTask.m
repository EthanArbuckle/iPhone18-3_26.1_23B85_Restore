@interface PLDuplicatePersonUUIDMaintenanceTask
- (BOOL)runTaskWithTransaction:(id)a3;
@end

@implementation PLDuplicatePersonUUIDMaintenanceTask

- (BOOL)runTaskWithTransaction:(id)a3
{
  v4 = a3;
  [(PLMaintenanceTask *)self photoLibrary];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000981C;
  v5 = v8[3] = &unk_10002DA78;
  v9 = v5;
  v10 = &v11;
  [v5 performBlockAndWait:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

@end