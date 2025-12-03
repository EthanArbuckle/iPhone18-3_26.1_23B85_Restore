@interface PHResourceChooserListResourceInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isOriginalResource;
- (BOOL)locallyGeneratableForAsset:(id)asset;
- (CGSize)approximateSizeFromAsset:(id)asset;
- (PHResourceChooserListResourceInfo)initWithResourceType:(unsigned int)type recipeID:(unsigned int)d resourceVersion:(unsigned int)version resourceScale:(double)scale qualitySort:(int)sort isDerivative:(BOOL)derivative isPrimaryFormat:(BOOL)format canDownload:(BOOL)self0 isHintBased:(BOOL)self1 uti:(id)self2 store:(id)self3 key:(id)self4 localAvailabilityTarget:(signed __int16)self5;
- (signed)localAvailability;
- (unint64_t)hash;
@end

@implementation PHResourceChooserListResourceInfo

- (BOOL)locallyGeneratableForAsset:(id)asset
{
  assetCopy = asset;
  recipeID = [(PHResourceChooserListResourceInfo *)self recipeID];
  localAvailabilityTarget = [(PHResourceChooserListResourceInfo *)self localAvailabilityTarget];
  v7 = 1;
  if ((recipeID - 65938 > 8 || ((1 << (recipeID + 110)) & 0x141) == 0) && recipeID != 65749)
  {
    v7 = localAvailabilityTarget == 1 && recipeID != 65747 || [assetCopy mediaType] == 2 && recipeID == 65741;
  }

  return v7;
}

- (BOOL)isOriginalResource
{
  selfCopy = self;
  if ([(PHResourceChooserListResourceInfo *)selfCopy version])
  {
    v3 = 0;
  }

  else
  {
    v3 = ([(PHResourceChooserListResourceInfo *)selfCopy recipeID]& 1) == 0;
  }

  return v3;
}

- (signed)localAvailability
{
  dataStoreKey = [(PHResourceChooserListResourceInfo *)self dataStoreKey];

  if (dataStoreKey)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (CGSize)approximateSizeFromAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy hasAdjustments] && !-[PHResourceChooserListResourceInfo version](self, "version"))
  {
    [assetCopy originalUnorientedSize];
  }

  else
  {
    [assetCopy unorientedSize];
  }

  [(PHResourceChooserListResourceInfo *)self resourceScale];
  PLApproximateResourceSizeFromScale();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isHintBased = [(PHResourceChooserListResourceInfo *)self isHintBased];
      if (isHintBased == [(PHResourceChooserListResourceInfo *)v5 isHintBased]&& (v7 = [(PHResourceChooserListResourceInfo *)self resourceType], v7 == [(PHResourceChooserListResourceInfo *)v5 resourceType]) && (v8 = [(PHResourceChooserListResourceInfo *)self recipeID], v8 == [(PHResourceChooserListResourceInfo *)v5 recipeID]) && (v9 = [(PHResourceChooserListResourceInfo *)self version], v9 == [(PHResourceChooserListResourceInfo *)v5 version]) && ([(PHResourceChooserListResourceInfo *)self resourceScale], v11 = v10, [(PHResourceChooserListResourceInfo *)v5 resourceScale], v11 == v12) && (v13 = [(PHResourceChooserListResourceInfo *)self isDerivative], v13 == [(PHResourceChooserListResourceInfo *)v5 isDerivative]) && (v14 = [(PHResourceChooserListResourceInfo *)self isPrimaryFormat], v14 == [(PHResourceChooserListResourceInfo *)v5 isPrimaryFormat]) && (v15 = [(PHResourceChooserListResourceInfo *)self canDownload], v15 == [(PHResourceChooserListResourceInfo *)v5 canDownload]) && (v16 = [(PHResourceChooserListResourceInfo *)self localAvailabilityTarget], v16 == [(PHResourceChooserListResourceInfo *)v5 localAvailabilityTarget]))
      {
        store = [(PHResourceChooserListResourceInfo *)self store];
        store2 = [(PHResourceChooserListResourceInfo *)v5 store];
        if (PLObjectIsEqual())
        {
          dataStoreKey = [(PHResourceChooserListResourceInfo *)self dataStoreKey];
          dataStoreKey2 = [(PHResourceChooserListResourceInfo *)v5 dataStoreKey];
          IsEqual = PLObjectIsEqual();
        }

        else
        {
          IsEqual = 0;
        }
      }

      else
      {
        IsEqual = 0;
      }
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  isHintBased = [(PHResourceChooserListResourceInfo *)self isHintBased];
  v4 = [(PHResourceChooserListResourceInfo *)self recipeID]^ isHintBased;
  version = [(PHResourceChooserListResourceInfo *)self version];
  v6 = v4 ^ version ^ [(PHResourceChooserListResourceInfo *)self resourceType];
  dataStoreKey = [(PHResourceChooserListResourceInfo *)self dataStoreKey];
  v8 = [dataStoreKey hash];
  store = [(PHResourceChooserListResourceInfo *)self store];
  v10 = v8 ^ [store hash];

  return v10 ^ v6;
}

- (PHResourceChooserListResourceInfo)initWithResourceType:(unsigned int)type recipeID:(unsigned int)d resourceVersion:(unsigned int)version resourceScale:(double)scale qualitySort:(int)sort isDerivative:(BOOL)derivative isPrimaryFormat:(BOOL)format canDownload:(BOOL)self0 isHintBased:(BOOL)self1 uti:(id)self2 store:(id)self3 key:(id)self4 localAvailabilityTarget:(signed __int16)self5
{
  utiCopy = uti;
  storeCopy = store;
  keyCopy = key;
  v30.receiver = self;
  v30.super_class = PHResourceChooserListResourceInfo;
  v23 = [(PHResourceChooserListResourceInfo *)&v30 init];
  v24 = v23;
  if (v23)
  {
    v23->_recipeID = d;
    v23->_resourceType = type;
    v23->_version = version;
    objc_storeStrong(&v23->_uniformTypeIdentifier, uti);
    scaleCopy = scale;
    v24->_resourceScale = scaleCopy;
    v24->_qualitySortValue = sort;
    v24->_isDerivative = derivative;
    v24->_isPrimaryFormat = format;
    v24->_canDownload = download;
    v24->_isHintBased = based;
    objc_storeStrong(&v24->_store, store);
    objc_storeStrong(&v24->_dataStoreKey, key);
    v24->_localAvailabilityTarget = target;
  }

  return v24;
}

@end