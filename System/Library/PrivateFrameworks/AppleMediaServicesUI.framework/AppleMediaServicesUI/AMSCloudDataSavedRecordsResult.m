@interface AMSCloudDataSavedRecordsResult
- (AMSCloudDataSavedRecordsResult)initWithSavedRecords:(id)a3 deletedRecords:(id)a4 error:(id)a5;
- (NSString)hashedDescription;
@end

@implementation AMSCloudDataSavedRecordsResult

- (AMSCloudDataSavedRecordsResult)initWithSavedRecords:(id)a3 deletedRecords:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AMSCloudDataSavedRecordsResult;
  v12 = [(AMSCloudDataSavedRecordsResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_savedRecords, a3);
    objc_storeStrong(&v13->_deletedRecords, a4);
    objc_storeStrong(&v13->_error, a5);
  }

  return v13;
}

- (NSString)hashedDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> {", objc_opt_class(), self];
  v4 = [(AMSCloudDataSavedRecordsResult *)self savedRecords];
  v5 = AMSHashIfNeeded();
  [v3 appendFormat:@"  savedRecords = %@, \n", v5];

  v6 = [(AMSCloudDataSavedRecordsResult *)self deletedRecords];
  v7 = AMSHashIfNeeded();
  [v3 appendFormat:@"  deletedRecords = %@, \n", v7];

  v8 = [(AMSCloudDataSavedRecordsResult *)self error];
  v9 = AMSHashIfNeeded();
  [v3 appendFormat:@"  error = %@, \n", v9];

  [v3 appendString:@"}"];

  return v3;
}

@end