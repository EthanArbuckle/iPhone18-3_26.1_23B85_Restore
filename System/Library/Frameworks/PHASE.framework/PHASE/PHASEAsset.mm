@interface PHASEAsset
- (PHASEAsset)init;
- (PHASEAsset)initWithUID:(id)a3 assetRegistry:(id)a4 weakStringPoolReference:(void *)a5;
- (PHASEAssetRegistry)assetRegistry;
- (const)getNullableString:(unint64_t)a3;
- (const)getString:(unint64_t)a3;
@end

@implementation PHASEAsset

- (PHASEAsset)init
{
  [(PHASEAsset *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEAsset)initWithUID:(id)a3 assetRegistry:(id)a4 weakStringPoolReference:(void *)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PHASEAsset;
  v11 = [(PHASEAsset *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeWeak(&v12->_assetRegistry, v10);
    v12->_weakStringPoolRef = a5;
  }

  return v12;
}

- (const)getString:(unint64_t)a3
{
  weakStringPoolRef = self->_weakStringPoolRef;
  if (!weakStringPoolRef)
  {
    std::terminate();
  }

  result = Phase::StringPool::GetString(weakStringPoolRef, a3);
  if (!result)
  {
    return "<invalid>";
  }

  return result;
}

- (const)getNullableString:(unint64_t)a3
{
  weakStringPoolRef = self->_weakStringPoolRef;
  if (!weakStringPoolRef)
  {
    std::terminate();
  }

  return Phase::StringPool::GetString(weakStringPoolRef, a3);
}

- (PHASEAssetRegistry)assetRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_assetRegistry);

  return WeakRetained;
}

@end