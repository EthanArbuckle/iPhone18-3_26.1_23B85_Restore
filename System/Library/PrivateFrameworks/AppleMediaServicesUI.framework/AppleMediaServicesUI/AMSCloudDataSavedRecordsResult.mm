@interface AMSCloudDataSavedRecordsResult
- (AMSCloudDataSavedRecordsResult)initWithSavedRecords:(id)records deletedRecords:(id)deletedRecords error:(id)error;
- (NSString)hashedDescription;
@end

@implementation AMSCloudDataSavedRecordsResult

- (AMSCloudDataSavedRecordsResult)initWithSavedRecords:(id)records deletedRecords:(id)deletedRecords error:(id)error
{
  recordsCopy = records;
  deletedRecordsCopy = deletedRecords;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = AMSCloudDataSavedRecordsResult;
  v12 = [(AMSCloudDataSavedRecordsResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_savedRecords, records);
    objc_storeStrong(&v13->_deletedRecords, deletedRecords);
    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

- (NSString)hashedDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> {", objc_opt_class(), self];
  savedRecords = [(AMSCloudDataSavedRecordsResult *)self savedRecords];
  v5 = AMSHashIfNeeded();
  [v3 appendFormat:@"  savedRecords = %@, \n", v5];

  deletedRecords = [(AMSCloudDataSavedRecordsResult *)self deletedRecords];
  v7 = AMSHashIfNeeded();
  [v3 appendFormat:@"  deletedRecords = %@, \n", v7];

  error = [(AMSCloudDataSavedRecordsResult *)self error];
  v9 = AMSHashIfNeeded();
  [v3 appendFormat:@"  error = %@, \n", v9];

  [v3 appendString:@"}"];

  return v3;
}

@end