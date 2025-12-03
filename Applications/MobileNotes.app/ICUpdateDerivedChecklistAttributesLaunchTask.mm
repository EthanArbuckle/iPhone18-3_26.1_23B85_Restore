@interface ICUpdateDerivedChecklistAttributesLaunchTask
- (void)runOneTimeLaunchTask;
- (void)updateNotesWithObjectIDs:(id)ds usingValue:(BOOL)value forKey:(id)key;
@end

@implementation ICUpdateDerivedChecklistAttributesLaunchTask

- (void)runOneTimeLaunchTask
{
  workerContext = [(ICWorkerContextLaunchTask *)self workerContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E10C8;
  v4[3] = &unk_100645E30;
  v4[4] = self;
  [workerContext performBlockAndWait:v4];
}

- (void)updateNotesWithObjectIDs:(id)ds usingValue:(BOOL)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  dsCopy = ds;
  v10 = [NSBatchUpdateRequest alloc];
  v11 = +[ICNote entity];
  v12 = [v10 initWithEntity:v11];

  dsCopy = [NSPredicate predicateWithFormat:@"self in %@", dsCopy];

  [v12 setPredicate:dsCopy];
  v32 = keyCopy;
  v14 = [NSNumber numberWithBool:valueCopy];
  v33 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  [v12 setPropertiesToUpdate:v15];

  [v12 setResultType:4];
  workerContext = [(ICWorkerContextLaunchTask *)self workerContext];
  v25 = 0;
  v17 = [workerContext executeRequest:v12 error:&v25];
  v18 = v25;

  v19 = os_log_create("com.apple.notes", "LaunchTask");
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = @"NO";
      *buf = 138412802;
      v27 = keyCopy;
      v28 = 2112;
      if (valueCopy)
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
      if (valueCopy)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      result = [v17 result];
      *buf = 138412802;
      v27 = keyCopy;
      v28 = 2112;
      v29 = v23;
      v30 = 2112;
      v31 = result;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Updated %@ to %@ for %@ notes", buf, 0x20u);
    }
  }
}

@end