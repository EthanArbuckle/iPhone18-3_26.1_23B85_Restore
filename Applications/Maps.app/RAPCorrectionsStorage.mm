@interface RAPCorrectionsStorage
+ (id)basePathForCorrections;
+ (id)pathForFeedbackRequestForSubmissionIdentifier:(id)identifier;
- (BOOL)removeCorrectionDataForSubmissionIdentifier:(id)identifier;
- (BOOL)saveCorrections:(id)corrections forSubmissionIdentifier:(id)identifier;
- (id)correctionsDataForSubmissionIdentifier:(id)identifier;
@end

@implementation RAPCorrectionsStorage

- (id)correctionsDataForSubmissionIdentifier:(id)identifier
{
  v3 = [RAPCorrectionsStorage pathForFeedbackRequestForSubmissionIdentifier:identifier];
  v4 = [RAPFileManager dataAtFileURL:v3];

  return v4;
}

- (BOOL)removeCorrectionDataForSubmissionIdentifier:(id)identifier
{
  v3 = [RAPCorrectionsStorage pathForFeedbackRequestForSubmissionIdentifier:identifier];
  v4 = [RAPFileManager removeItemAtFilePath:v3];

  return v4;
}

- (BOOL)saveCorrections:(id)corrections forSubmissionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  correctionsCopy = corrections;
  v7 = +[RAPCorrectionsStorage basePathForCorrections];
  v8 = [RAPFileManager saveData:correctionsCopy toDirectory:v7 filename:identifierCopy];

  return v8;
}

+ (id)pathForFeedbackRequestForSubmissionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[RAPCorrectionsStorage basePathForCorrections];
  v5 = [v4 URLByAppendingPathComponent:identifierCopy];

  return v5;
}

+ (id)basePathForCorrections
{
  v2 = +[RAPFileManager baseSubmissionFilePath];
  v3 = [v2 URLByAppendingPathComponent:@"rap_corrections" isDirectory:1];

  return v3;
}

@end