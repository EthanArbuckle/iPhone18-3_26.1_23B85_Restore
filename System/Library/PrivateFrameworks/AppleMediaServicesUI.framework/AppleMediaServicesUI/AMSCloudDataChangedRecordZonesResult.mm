@interface AMSCloudDataChangedRecordZonesResult
- (AMSCloudDataChangedRecordZonesResult)initWithChangedRecordZones:(id)a3 deletedRecordZones:(id)a4 changeToken:(id)a5;
- (NSString)hashedDescription;
@end

@implementation AMSCloudDataChangedRecordZonesResult

- (AMSCloudDataChangedRecordZonesResult)initWithChangedRecordZones:(id)a3 deletedRecordZones:(id)a4 changeToken:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AMSCloudDataChangedRecordZonesResult;
  v12 = [(AMSCloudDataChangedRecordZonesResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_changedRecordZones, a3);
    objc_storeStrong(&v13->_changeToken, a5);
    objc_storeStrong(&v13->_deletedRecordZones, a4);
  }

  return v13;
}

- (NSString)hashedDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> {", objc_opt_class(), self];
  v4 = [(AMSCloudDataChangedRecordZonesResult *)self changedRecordZones];
  v5 = AMSHashIfNeeded();
  [v3 appendFormat:@"  changedRecordZones = %@, \n", v5];

  v6 = [(AMSCloudDataChangedRecordZonesResult *)self deletedRecordZones];
  v7 = AMSHashIfNeeded();
  [v3 appendFormat:@"  deletedRecordZones = %@, \n", v7];

  v8 = [(AMSCloudDataChangedRecordZonesResult *)self changeToken];
  v9 = AMSHashIfNeeded();
  [v3 appendFormat:@"  changeToken = %@\n", v9];

  [v3 appendString:@"}"];

  return v3;
}

@end