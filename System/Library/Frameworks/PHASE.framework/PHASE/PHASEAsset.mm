@interface PHASEAsset
- (PHASEAsset)init;
- (PHASEAsset)initWithUID:(id)d assetRegistry:(id)registry weakStringPoolReference:(void *)reference;
- (PHASEAssetRegistry)assetRegistry;
- (const)getNullableString:(unint64_t)string;
- (const)getString:(unint64_t)string;
@end

@implementation PHASEAsset

- (PHASEAsset)init
{
  [(PHASEAsset *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEAsset)initWithUID:(id)d assetRegistry:(id)registry weakStringPoolReference:(void *)reference
{
  dCopy = d;
  registryCopy = registry;
  v14.receiver = self;
  v14.super_class = PHASEAsset;
  v11 = [(PHASEAsset *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, d);
    objc_storeWeak(&v12->_assetRegistry, registryCopy);
    v12->_weakStringPoolRef = reference;
  }

  return v12;
}

- (const)getString:(unint64_t)string
{
  weakStringPoolRef = self->_weakStringPoolRef;
  if (!weakStringPoolRef)
  {
    std::terminate();
  }

  result = Phase::StringPool::GetString(weakStringPoolRef, string);
  if (!result)
  {
    return "<invalid>";
  }

  return result;
}

- (const)getNullableString:(unint64_t)string
{
  weakStringPoolRef = self->_weakStringPoolRef;
  if (!weakStringPoolRef)
  {
    std::terminate();
  }

  return Phase::StringPool::GetString(weakStringPoolRef, string);
}

- (PHASEAssetRegistry)assetRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_assetRegistry);

  return WeakRetained;
}

@end