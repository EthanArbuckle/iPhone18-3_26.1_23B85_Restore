@interface ASCloudKitFetchConfiguration
- (ASCloudKitFetchConfiguration)initWithRecordType:(id)type shouldSkip:(BOOL)skip shouldCoalesce:(BOOL)coalesce oldestAllowedModificationDate:(id)date;
@end

@implementation ASCloudKitFetchConfiguration

- (ASCloudKitFetchConfiguration)initWithRecordType:(id)type shouldSkip:(BOOL)skip shouldCoalesce:(BOOL)coalesce oldestAllowedModificationDate:(id)date
{
  typeCopy = type;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = ASCloudKitFetchConfiguration;
  v13 = [(ASCloudKitFetchConfiguration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_recordType, type);
    v14->_shouldSkip = skip;
    v14->_shouldCoalesce = coalesce;
    objc_storeStrong(&v14->_oldestAllowedModificationDate, date);
  }

  return v14;
}

@end