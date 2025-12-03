@interface AMSDCloudDataChangedRecordZonesResult
- (AMSDCloudDataChangedRecordZonesResult)initWithChangedRecordZones:(id)zones deletedRecordZones:(id)recordZones changeToken:(id)token;
- (NSString)hashedDescription;
@end

@implementation AMSDCloudDataChangedRecordZonesResult

- (AMSDCloudDataChangedRecordZonesResult)initWithChangedRecordZones:(id)zones deletedRecordZones:(id)recordZones changeToken:(id)token
{
  zonesCopy = zones;
  recordZonesCopy = recordZones;
  tokenCopy = token;
  v15.receiver = self;
  v15.super_class = AMSDCloudDataChangedRecordZonesResult;
  v12 = [(AMSDCloudDataChangedRecordZonesResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_changedRecordZones, zones);
    objc_storeStrong(&v13->_changeToken, token);
    objc_storeStrong(&v13->_deletedRecordZones, recordZones);
  }

  return v13;
}

- (NSString)hashedDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> {", objc_opt_class(), self];
  changedRecordZones = [(AMSDCloudDataChangedRecordZonesResult *)self changedRecordZones];
  v5 = AMSHashIfNeeded();
  [v3 appendFormat:@"  changedRecordZones = %@, \n", v5];

  deletedRecordZones = [(AMSDCloudDataChangedRecordZonesResult *)self deletedRecordZones];
  v7 = AMSHashIfNeeded();
  [v3 appendFormat:@"  deletedRecordZones = %@, \n", v7];

  changeToken = [(AMSDCloudDataChangedRecordZonesResult *)self changeToken];
  v9 = AMSHashIfNeeded();
  [v3 appendFormat:@"  changeToken = %@\n", v9];

  [v3 appendString:@"}"];

  return v3;
}

@end