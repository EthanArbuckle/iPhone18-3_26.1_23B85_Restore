@interface RAPCorrectionsStorage
+ (id)basePathForCorrections;
+ (id)pathForFeedbackRequestForSubmissionIdentifier:(id)a3;
- (BOOL)removeCorrectionDataForSubmissionIdentifier:(id)a3;
- (BOOL)saveCorrections:(id)a3 forSubmissionIdentifier:(id)a4;
- (id)correctionsDataForSubmissionIdentifier:(id)a3;
@end

@implementation RAPCorrectionsStorage

- (id)correctionsDataForSubmissionIdentifier:(id)a3
{
  v3 = [RAPCorrectionsStorage pathForFeedbackRequestForSubmissionIdentifier:a3];
  v4 = [RAPFileManager dataAtFileURL:v3];

  return v4;
}

- (BOOL)removeCorrectionDataForSubmissionIdentifier:(id)a3
{
  v3 = [RAPCorrectionsStorage pathForFeedbackRequestForSubmissionIdentifier:a3];
  v4 = [RAPFileManager removeItemAtFilePath:v3];

  return v4;
}

- (BOOL)saveCorrections:(id)a3 forSubmissionIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[RAPCorrectionsStorage basePathForCorrections];
  v8 = [RAPFileManager saveData:v6 toDirectory:v7 filename:v5];

  return v8;
}

+ (id)pathForFeedbackRequestForSubmissionIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[RAPCorrectionsStorage basePathForCorrections];
  v5 = [v4 URLByAppendingPathComponent:v3];

  return v5;
}

+ (id)basePathForCorrections
{
  v2 = +[RAPFileManager baseSubmissionFilePath];
  v3 = [v2 URLByAppendingPathComponent:@"rap_corrections" isDirectory:1];

  return v3;
}

@end