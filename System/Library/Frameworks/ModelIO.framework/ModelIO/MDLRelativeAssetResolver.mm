@interface MDLRelativeAssetResolver
- (BOOL)canResolveAssetNamed:(id)named;
- (MDLAsset)asset;
- (MDLRelativeAssetResolver)initWithAsset:(MDLAsset *)asset;
- (id)resolveAssetNamed:(id)named;
@end

@implementation MDLRelativeAssetResolver

- (MDLRelativeAssetResolver)initWithAsset:(MDLAsset *)asset
{
  v4 = asset;
  v9.receiver = self;
  v9.super_class = MDLRelativeAssetResolver;
  v5 = [(MDLRelativeAssetResolver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_asset, v4);
    v7 = v6;
  }

  return v6;
}

- (BOOL)canResolveAssetNamed:(id)named
{
  namedCopy = named;
  if (namedCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_asset);
    if (WeakRetained)
    {
      v7 = objc_msgSend_resolveAssetNamed_(self, v5, namedCopy);
      v8 = v7 != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)resolveAssetNamed:(id)named
{
  namedCopy = named;
  v7 = namedCopy;
  if (namedCopy)
  {
    if (objc_msgSend_isAbsolutePath(namedCopy, v5, v6))
    {
      v9 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v8, v7);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_asset);
      v13 = objc_msgSend_URL(WeakRetained, v11, v12);
      v16 = objc_msgSend_URLByDeletingLastPathComponent(v13, v14, v15);

      v9 = objc_msgSend_URLByAppendingPathComponent_(v16, v17, v7);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MDLAsset)asset
{
  WeakRetained = objc_loadWeakRetained(&self->_asset);

  return WeakRetained;
}

@end