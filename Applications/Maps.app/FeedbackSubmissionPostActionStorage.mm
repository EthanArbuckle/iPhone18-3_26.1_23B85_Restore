@interface FeedbackSubmissionPostActionStorage
- (BOOL)removefeedbackActionForSubmissionIdentifier:(id)a3;
- (BOOL)saveFeedbackAction:(id)a3 forSubmissionIdentifier:(id)a4;
- (id)feedbackActionForSubmissionIdentifier:(id)a3;
@end

@implementation FeedbackSubmissionPostActionStorage

- (id)feedbackActionForSubmissionIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 stringByAppendingString:@"feedback"];
  v5 = [RAPCorrectionsStorage pathForFeedbackRequestForSubmissionIdentifier:v4];
  v6 = [RAPFileManager dataAtFileURL:v5];
  v11 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = sub_10002E924();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to unarchive feedback action for identifier:%@ withError:%@", buf, 0x16u);
    }
  }

  return v7;
}

- (BOOL)removefeedbackActionForSubmissionIdentifier:(id)a3
{
  v3 = [a3 stringByAppendingString:@"feedback"];
  v4 = [RAPCorrectionsStorage pathForFeedbackRequestForSubmissionIdentifier:v3];
  v5 = [RAPFileManager removeItemAtFilePath:v4];

  return v5;
}

- (BOOL)saveFeedbackAction:(id)a3 forSubmissionIdentifier:(id)a4
{
  v5 = a4;
  v13 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = sub_10002E924();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to archive feedback action for identifier:%@ withError:%@", buf, 0x16u);
    }
  }

  v9 = [v5 stringByAppendingString:@"feedback"];
  v10 = +[RAPCorrectionsStorage basePathForCorrections];
  v11 = [RAPFileManager saveData:v6 toDirectory:v10 filename:v9];

  return v11;
}

@end