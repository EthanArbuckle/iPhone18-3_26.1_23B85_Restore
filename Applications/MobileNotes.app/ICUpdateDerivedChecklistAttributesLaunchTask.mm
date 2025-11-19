@interface ICUpdateDerivedChecklistAttributesLaunchTask
- (void)runOneTimeLaunchTask;
- (void)updateNotesWithObjectIDs:(id)a3 usingValue:(BOOL)a4 forKey:(id)a5;
@end

@implementation ICUpdateDerivedChecklistAttributesLaunchTask

- (void)runOneTimeLaunchTask
{
  v3 = [(ICWorkerContextLaunchTask *)self workerContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E10C8;
  v4[3] = &unk_100645E30;
  v4[4] = self;
  [v3 performBlockAndWait:v4];
}

- (void)updateNotesWithObjectIDs:(id)a3 usingValue:(BOOL)a4 forKey:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [NSBatchUpdateRequest alloc];
  v11 = +[ICNote entity];
  v12 = [v10 initWithEntity:v11];

  v13 = [NSPredicate predicateWithFormat:@"self in %@", v9];

  [v12 setPredicate:v13];
  v32 = v8;
  v14 = [NSNumber numberWithBool:v5];
  v33 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  [v12 setPropertiesToUpdate:v15];

  [v12 setResultType:4];
  v16 = [(ICWorkerContextLaunchTask *)self workerContext];
  v25 = 0;
  v17 = [v16 executeRequest:v12 error:&v25];
  v18 = v25;

  v19 = os_log_create("com.apple.notes", "LaunchTask");
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = @"NO";
      *buf = 138412802;
      v27 = v8;
      v28 = 2112;
      if (v5)
      {
        v21 = @"YES";
      }

      v29 = v21;
      v30 = 2112;
      v31 = v18;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error updating %@ to %@ : %@", buf, 0x20u);
    }
  }

  else
  {
    v22 = v19;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      if (v5)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v24 = [v17 result];
      *buf = 138412802;
      v27 = v8;
      v28 = 2112;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Updated %@ to %@ for %@ notes", buf, 0x20u);
    }
  }
}

@end