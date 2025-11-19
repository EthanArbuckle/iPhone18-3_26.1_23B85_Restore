@interface ASCloudKitFetchConfiguration
- (ASCloudKitFetchConfiguration)initWithRecordType:(id)a3 shouldSkip:(BOOL)a4 shouldCoalesce:(BOOL)a5 oldestAllowedModificationDate:(id)a6;
@end

@implementation ASCloudKitFetchConfiguration

- (ASCloudKitFetchConfiguration)initWithRecordType:(id)a3 shouldSkip:(BOOL)a4 shouldCoalesce:(BOOL)a5 oldestAllowedModificationDate:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = ASCloudKitFetchConfiguration;
  v13 = [(ASCloudKitFetchConfiguration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_recordType, a3);
    v14->_shouldSkip = a4;
    v14->_shouldCoalesce = a5;
    objc_storeStrong(&v14->_oldestAllowedModificationDate, a6);
  }

  return v14;
}

@end