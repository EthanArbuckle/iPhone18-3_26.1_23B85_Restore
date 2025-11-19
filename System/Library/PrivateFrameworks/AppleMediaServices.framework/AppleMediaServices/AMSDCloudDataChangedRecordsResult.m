@interface AMSDCloudDataChangedRecordsResult
- (AMSDCloudDataChangedRecordsResult)initWithChangedRecords:(id)a3 deletedRecords:(id)a4 errors:(id)a5 changeTokens:(id)a6;
- (NSString)hashedDescription;
@end

@implementation AMSDCloudDataChangedRecordsResult

- (AMSDCloudDataChangedRecordsResult)initWithChangedRecords:(id)a3 deletedRecords:(id)a4 errors:(id)a5 changeTokens:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AMSDCloudDataChangedRecordsResult;
  v15 = [(AMSDCloudDataChangedRecordsResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_changedRecords, a3);
    objc_storeStrong(&v16->_changeTokens, a6);
    objc_storeStrong(&v16->_deletedRecords, a4);
    objc_storeStrong(&v16->_errors, a5);
  }

  return v16;
}

- (NSString)hashedDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> {", objc_opt_class(), self];
  v4 = [(AMSDCloudDataChangedRecordsResult *)self changedRecords];
  v5 = AMSHashIfNeeded();
  [v3 appendFormat:@"  changedRecords = %@, \n", v5];

  v6 = [(AMSDCloudDataChangedRecordsResult *)self deletedRecords];
  v7 = AMSHashIfNeeded();
  [v3 appendFormat:@"  deletedRecords = %@, \n", v7];

  v8 = [(AMSDCloudDataChangedRecordsResult *)self errors];
  v9 = AMSHashIfNeeded();
  [v3 appendFormat:@"  errors = %@, \n", v9];

  v10 = [(AMSDCloudDataChangedRecordsResult *)self changeTokens];
  v11 = AMSHashIfNeeded();
  [v3 appendFormat:@"  changeTokens = %@\n", v11];

  [v3 appendString:@"}"];

  return v3;
}

@end