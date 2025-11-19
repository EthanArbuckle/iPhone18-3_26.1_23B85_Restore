@interface AVAssetDownloadStorageManagementPolicy
- (AVAssetDownloadStorageManagementPolicy)init;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_setPolicyDictionary:(id)a3;
- (void)dealloc;
@end

@implementation AVAssetDownloadStorageManagementPolicy

- (AVAssetDownloadStorageManagementPolicy)init
{
  v5.receiver = self;
  v5.super_class = AVAssetDownloadStorageManagementPolicy;
  v2 = [(AVAssetDownloadStorageManagementPolicy *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVAssetDownloadStorageManagementPolicyInternal);
    v2->_storageManagementPolicy = v3;
    if (v3)
    {
      v2->_storageManagementPolicy->policyDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  storageManagementPolicy = self->_storageManagementPolicy;
  if (storageManagementPolicy)
  {
  }

  v4.receiver = self;
  v4.super_class = AVAssetDownloadStorageManagementPolicy;
  [(AVAssetDownloadStorageManagementPolicy *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, ExpirationDate: %@ Priority: %@>", NSStringFromClass(v4), self, -[AVAssetDownloadStorageManagementPolicy expirationDate](self, "expirationDate"), -[AVAssetDownloadStorageManagementPolicy priority](self, "priority")];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(AVAssetDownloadStorageManagementPolicy *)[AVMutableAssetDownloadStorageManagementPolicy allocWithZone:?]];
  v5 = v4;
  if (v4)
  {
    [(AVAssetDownloadStorageManagementPolicy *)v4 _setPolicyDictionary:self->_storageManagementPolicy->policyDictionary];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!-[AVAssetDownloadStorageManagementPolicy _policyDictionary](self, "_policyDictionary") || (v5 = [-[AVAssetDownloadStorageManagementPolicy _policyDictionary](self "_policyDictionary")]) != 0)
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_setPolicyDictionary:(id)a3
{
  policyDictionary = self->_storageManagementPolicy->policyDictionary;
  if (policyDictionary != a3)
  {

    self->_storageManagementPolicy->policyDictionary = [a3 copy];
  }
}

@end