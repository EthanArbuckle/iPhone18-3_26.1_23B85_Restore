@interface CKSyncEngineFetchChangesZoneConfiguration
- (CKSyncEngineFetchChangesZoneConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)CKDescribePropertiesUsing:(id)using;
@end

@implementation CKSyncEngineFetchChangesZoneConfiguration

- (CKSyncEngineFetchChangesZoneConfiguration)init
{
  v3.receiver = self;
  v3.super_class = CKSyncEngineFetchChangesZoneConfiguration;
  result = [(CKSyncEngineFetchChangesZoneConfiguration *)&v3 init];
  if (result)
  {
    result->_shouldFetchAssetContents = 1;
    result->_resultsLimit = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CKSyncEngineFetchChangesZoneConfiguration);
  objc_msgSend_setShouldFetchAssetContents_(v4, v5, self->_shouldFetchAssetContents);
  objc_msgSend_setResultsLimit_(v4, v6, self->_resultsLimit);
  return v4;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  if ((objc_msgSend_shouldFetchAssetContents(self, v4, v5) & 1) == 0)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v6, @"fetchAssetContents", MEMORY[0x1E695E110], 0);
  }

  v8 = objc_msgSend_resultsLimit(self, v6, v7);
  v10 = usingCopy;
  if (v8)
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = objc_msgSend_resultsLimit(self, usingCopy, v9);
    v14 = objc_msgSend_numberWithUnsignedInteger_(v11, v13, v12);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v15, @"resultsLimit", v14, 0);

    v10 = usingCopy;
  }

  MEMORY[0x1EEE66BB8](v8, v10);
}

@end