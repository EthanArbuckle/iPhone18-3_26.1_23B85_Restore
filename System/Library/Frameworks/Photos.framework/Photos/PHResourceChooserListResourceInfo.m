@interface PHResourceChooserListResourceInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isOriginalResource;
- (BOOL)locallyGeneratableForAsset:(id)a3;
- (CGSize)approximateSizeFromAsset:(id)a3;
- (PHResourceChooserListResourceInfo)initWithResourceType:(unsigned int)a3 recipeID:(unsigned int)a4 resourceVersion:(unsigned int)a5 resourceScale:(double)a6 qualitySort:(int)a7 isDerivative:(BOOL)a8 isPrimaryFormat:(BOOL)a9 canDownload:(BOOL)a10 isHintBased:(BOOL)a11 uti:(id)a12 store:(id)a13 key:(id)a14 localAvailabilityTarget:(signed __int16)a15;
- (signed)localAvailability;
- (unint64_t)hash;
@end

@implementation PHResourceChooserListResourceInfo

- (BOOL)locallyGeneratableForAsset:(id)a3
{
  v4 = a3;
  v5 = [(PHResourceChooserListResourceInfo *)self recipeID];
  v6 = [(PHResourceChooserListResourceInfo *)self localAvailabilityTarget];
  v7 = 1;
  if ((v5 - 65938 > 8 || ((1 << (v5 + 110)) & 0x141) == 0) && v5 != 65749)
  {
    v7 = v6 == 1 && v5 != 65747 || [v4 mediaType] == 2 && v5 == 65741;
  }

  return v7;
}

- (BOOL)isOriginalResource
{
  v2 = self;
  if ([(PHResourceChooserListResourceInfo *)v2 version])
  {
    v3 = 0;
  }

  else
  {
    v3 = ([(PHResourceChooserListResourceInfo *)v2 recipeID]& 1) == 0;
  }

  return v3;
}

- (signed)localAvailability
{
  v2 = [(PHResourceChooserListResourceInfo *)self dataStoreKey];

  if (v2)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (CGSize)approximateSizeFromAsset:(id)a3
{
  v4 = a3;
  if ([v4 hasAdjustments] && !-[PHResourceChooserListResourceInfo version](self, "version"))
  {
    [v4 originalUnorientedSize];
  }

  else
  {
    [v4 unorientedSize];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PHResourceChooserListResourceInfo *)self isHintBased];
      if (v6 == [(PHResourceChooserListResourceInfo *)v5 isHintBased]&& (v7 = [(PHResourceChooserListResourceInfo *)self resourceType], v7 == [(PHResourceChooserListResourceInfo *)v5 resourceType]) && (v8 = [(PHResourceChooserListResourceInfo *)self recipeID], v8 == [(PHResourceChooserListResourceInfo *)v5 recipeID]) && (v9 = [(PHResourceChooserListResourceInfo *)self version], v9 == [(PHResourceChooserListResourceInfo *)v5 version]) && ([(PHResourceChooserListResourceInfo *)self resourceScale], v11 = v10, [(PHResourceChooserListResourceInfo *)v5 resourceScale], v11 == v12) && (v13 = [(PHResourceChooserListResourceInfo *)self isDerivative], v13 == [(PHResourceChooserListResourceInfo *)v5 isDerivative]) && (v14 = [(PHResourceChooserListResourceInfo *)self isPrimaryFormat], v14 == [(PHResourceChooserListResourceInfo *)v5 isPrimaryFormat]) && (v15 = [(PHResourceChooserListResourceInfo *)self canDownload], v15 == [(PHResourceChooserListResourceInfo *)v5 canDownload]) && (v16 = [(PHResourceChooserListResourceInfo *)self localAvailabilityTarget], v16 == [(PHResourceChooserListResourceInfo *)v5 localAvailabilityTarget]))
      {
        v17 = [(PHResourceChooserListResourceInfo *)self store];
        v18 = [(PHResourceChooserListResourceInfo *)v5 store];
        if (PLObjectIsEqual())
        {
          v19 = [(PHResourceChooserListResourceInfo *)self dataStoreKey];
          v20 = [(PHResourceChooserListResourceInfo *)v5 dataStoreKey];
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
  v3 = [(PHResourceChooserListResourceInfo *)self isHintBased];
  v4 = [(PHResourceChooserListResourceInfo *)self recipeID]^ v3;
  v5 = [(PHResourceChooserListResourceInfo *)self version];
  v6 = v4 ^ v5 ^ [(PHResourceChooserListResourceInfo *)self resourceType];
  v7 = [(PHResourceChooserListResourceInfo *)self dataStoreKey];
  v8 = [v7 hash];
  v9 = [(PHResourceChooserListResourceInfo *)self store];
  v10 = v8 ^ [v9 hash];

  return v10 ^ v6;
}

- (PHResourceChooserListResourceInfo)initWithResourceType:(unsigned int)a3 recipeID:(unsigned int)a4 resourceVersion:(unsigned int)a5 resourceScale:(double)a6 qualitySort:(int)a7 isDerivative:(BOOL)a8 isPrimaryFormat:(BOOL)a9 canDownload:(BOOL)a10 isHintBased:(BOOL)a11 uti:(id)a12 store:(id)a13 key:(id)a14 localAvailabilityTarget:(signed __int16)a15
{
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v30.receiver = self;
  v30.super_class = PHResourceChooserListResourceInfo;
  v23 = [(PHResourceChooserListResourceInfo *)&v30 init];
  v24 = v23;
  if (v23)
  {
    v23->_recipeID = a4;
    v23->_resourceType = a3;
    v23->_version = a5;
    objc_storeStrong(&v23->_uniformTypeIdentifier, a12);
    v25 = a6;
    v24->_resourceScale = v25;
    v24->_qualitySortValue = a7;
    v24->_isDerivative = a8;
    v24->_isPrimaryFormat = a9;
    v24->_canDownload = a10;
    v24->_isHintBased = a11;
    objc_storeStrong(&v24->_store, a13);
    objc_storeStrong(&v24->_dataStoreKey, a14);
    v24->_localAvailabilityTarget = a15;
  }

  return v24;
}

@end