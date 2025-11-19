@interface ICRefetchNoteRecordsLaunchTask
+ (NSDateFormatter)dateFormatter;
- (ICRefetchNoteRecordsLaunchTask)initWithIdentifier:(id)a3 modifiedAfterDateString:(id)a4;
- (id)relationshipKeyPathsForPrefetching;
- (id)taskIdentifier;
- (void)runOneTimeLaunchTask;
@end

@implementation ICRefetchNoteRecordsLaunchTask

- (ICRefetchNoteRecordsLaunchTask)initWithIdentifier:(id)a3 modifiedAfterDateString:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ICRefetchNoteRecordsLaunchTask;
  v9 = [(ICRefetchNoteRecordsLaunchTask *)&v16 init];
  v10 = v9;
  if (v9 && (objc_storeStrong(&v9->_identifier, a3), objc_storeStrong(&v10->_modifiedAfterDateString, a4), [objc_opt_class() dateFormatter], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "dateFromString:", v8), v12 = objc_claimAutoreleasedReturnValue(), modifiedAfterDate = v10->_modifiedAfterDate, v10->_modifiedAfterDate = v12, modifiedAfterDate, v11, !v10->_modifiedAfterDate))
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICRefetchNoteRecordsLaunchTask initWithIdentifier:modifiedAfterDateString:]" simulateCrash:1 showAlert:0 format:@"Refetch records launch task doesn't have a valid modified after date"];
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  return v14;
}

+ (NSDateFormatter)dateFormatter
{
  if (qword_1006CB2C8 != -1)
  {
    sub_1004DC2CC();
  }

  v3 = qword_1006CB2C0;

  return v3;
}

- (id)relationshipKeyPathsForPrefetching
{
  v2 = ICKeyPathFromSelector();
  v9[0] = v2;
  v3 = ICKeyPathFromSelector();
  v9[1] = v3;
  v4 = ICKeyPathFromSelector();
  v9[2] = v4;
  v5 = ICKeyPathFromSelector();
  v9[3] = v5;
  v6 = ICKeyPathFromSelector();
  v9[4] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:5];

  return v7;
}

- (id)taskIdentifier
{
  v2 = [(ICRefetchNoteRecordsLaunchTask *)self identifier];
  v3 = [NSString stringWithFormat:@"ICRefetchNoteRecordsLaunchTask-%@", v2];

  return v3;
}

- (void)runOneTimeLaunchTask
{
  v3 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DC2E0(self, v3);
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = [(ICWorkerContextLaunchTask *)self workerContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A53D8;
  v8[3] = &unk_100645FE0;
  v8[4] = self;
  v8[5] = &v9;
  [v4 performBlockAndWait:v8];

  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(ICRefetchNoteRecordsLaunchTask *)self identifier];
    v7 = [NSNumber numberWithUnsignedInteger:v10[3]];
    sub_1004DC3A8(v6, v7, buf, v5);
  }

  _Block_object_dispose(&v9, 8);
}

@end