@interface AMSDCloudDataChangedRecordsResult
- (AMSDCloudDataChangedRecordsResult)initWithChangedRecords:(id)records deletedRecords:(id)deletedRecords errors:(id)errors changeTokens:(id)tokens;
- (NSString)hashedDescription;
@end

@implementation AMSDCloudDataChangedRecordsResult

- (AMSDCloudDataChangedRecordsResult)initWithChangedRecords:(id)records deletedRecords:(id)deletedRecords errors:(id)errors changeTokens:(id)tokens
{
  recordsCopy = records;
  deletedRecordsCopy = deletedRecords;
  errorsCopy = errors;
  tokensCopy = tokens;
  v18.receiver = self;
  v18.super_class = AMSDCloudDataChangedRecordsResult;
  v15 = [(AMSDCloudDataChangedRecordsResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_changedRecords, records);
    objc_storeStrong(&v16->_changeTokens, tokens);
    objc_storeStrong(&v16->_deletedRecords, deletedRecords);
    objc_storeStrong(&v16->_errors, errors);
  }

  return v16;
}

- (NSString)hashedDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> {", objc_opt_class(), self];
  changedRecords = [(AMSDCloudDataChangedRecordsResult *)self changedRecords];
  v5 = AMSHashIfNeeded();
  [v3 appendFormat:@"  changedRecords = %@, \n", v5];

  deletedRecords = [(AMSDCloudDataChangedRecordsResult *)self deletedRecords];
  v7 = AMSHashIfNeeded();
  [v3 appendFormat:@"  deletedRecords = %@, \n", v7];

  errors = [(AMSDCloudDataChangedRecordsResult *)self errors];
  v9 = AMSHashIfNeeded();
  [v3 appendFormat:@"  errors = %@, \n", v9];

  changeTokens = [(AMSDCloudDataChangedRecordsResult *)self changeTokens];
  v11 = AMSHashIfNeeded();
  [v3 appendFormat:@"  changeTokens = %@\n", v11];

  [v3 appendString:@"}"];

  return v3;
}

@end