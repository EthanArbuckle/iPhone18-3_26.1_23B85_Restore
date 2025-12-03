@interface PHAssetPhotosSmartStyleExtendedProperties
+ (id)propertiesToFetch;
- (BOOL)isCurrentlySmartStyleable;
- (PHAssetPhotosSmartStyleExtendedProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched;
@end

@implementation PHAssetPhotosSmartStyleExtendedProperties

- (BOOL)isCurrentlySmartStyleable
{
  if ([(PHAssetPhotosSmartStyleExtendedProperties *)self smartStyleIsReversible]!= 1)
  {
    return 0;
  }

  asset = [(PHAssetPropertySet *)self asset];
  v4 = [asset currentSmartStyleCast] > 0;

  return v4;
}

- (PHAssetPhotosSmartStyleExtendedProperties)initWithFetchDictionary:(id)dictionary asset:(id)asset prefetched:(BOOL)prefetched
{
  dictionaryCopy = dictionary;
  assetCopy = asset;
  if (dictionaryCopy && (v28.receiver = self, v28.super_class = PHAssetPhotosSmartStyleExtendedProperties, v9 = -[PHAssetPhotosSmartStyleExtendedProperties init](&v28, sel_init), (self = v9) != 0) && ((objc_storeWeak(&v9->super._asset, assetCopy), [dictionaryCopy objectForKeyedSubscript:@"extendedAttributes.sleetRenderingVersion"], v10 = objc_claimAutoreleasedReturnValue(), smartStyleRenderingVersion = self->_smartStyleRenderingVersion, self->_smartStyleRenderingVersion = v10, smartStyleRenderingVersion, v12 = self->_smartStyleRenderingVersion, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"extendedAttributes.sleetIntensity"), v13 = objc_claimAutoreleasedReturnValue(), smartStyleIntensity = self->_smartStyleIntensity, self->_smartStyleIntensity = v13, smartStyleIntensity, v15 = self->_smartStyleIntensity, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"extendedAttributes.sleetToneBias"), v16 = objc_claimAutoreleasedReturnValue(), smartStyleToneBias = self->_smartStyleToneBias, self->_smartStyleToneBias = v16, smartStyleToneBias, v18 = self->_smartStyleToneBias, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"extendedAttributes.sleetColorBias"), v19 = objc_claimAutoreleasedReturnValue(), smartStyleColorBias = self->_smartStyleColorBias, self->_smartStyleColorBias = v19, smartStyleColorBias, v21 = self->_smartStyleColorBias, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"extendedAttributes.sleetCast"), v22 = objc_claimAutoreleasedReturnValue(), originalSmartStyleCast = self->_originalSmartStyleCast, self->_originalSmartStyleCast = v22, originalSmartStyleCast, v24 = self->_originalSmartStyleCast, objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", @"additionalAttributes.sleetIsReversible"), v25 = objc_claimAutoreleasedReturnValue(), self->_smartStyleIsReversible = objc_msgSend(v25, "intValue"), v25, v12) || v15 || v18 || v21 || v24))
  {
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_46;

  return v2;
}

void __62__PHAssetPhotosSmartStyleExtendedProperties_propertiesToFetch__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"extendedAttributes.sleetRenderingVersion";
  v3[1] = @"extendedAttributes.sleetIntensity";
  v3[2] = @"extendedAttributes.sleetToneBias";
  v3[3] = @"extendedAttributes.sleetColorBias";
  v3[4] = @"extendedAttributes.sleetCast";
  v3[5] = @"additionalAttributes.sleetIsReversible";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_46;
  propertiesToFetch_pl_once_object_46 = v1;
}

@end