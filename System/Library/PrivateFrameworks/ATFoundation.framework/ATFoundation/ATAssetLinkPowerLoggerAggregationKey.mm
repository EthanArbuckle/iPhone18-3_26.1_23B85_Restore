@interface ATAssetLinkPowerLoggerAggregationKey
- (ATAssetLinkPowerLoggerAggregationKey)initWithLinkType:(int64_t)type dataclass:(id)dataclass assetType:(id)assetType;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation ATAssetLinkPowerLoggerAggregationKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      linkType = [(ATAssetLinkPowerLoggerAggregationKey *)v5 linkType];
      if (linkType == [(ATAssetLinkPowerLoggerAggregationKey *)self linkType])
      {
        dataclass = [(ATAssetLinkPowerLoggerAggregationKey *)v5 dataclass];
        dataclass2 = [(ATAssetLinkPowerLoggerAggregationKey *)self dataclass];
        if ([dataclass isEqualToString:dataclass2])
        {
          assetType = [(ATAssetLinkPowerLoggerAggregationKey *)v5 assetType];
          assetType2 = [(ATAssetLinkPowerLoggerAggregationKey *)self assetType];
          if (assetType == assetType2)
          {
            v13 = 1;
          }

          else
          {
            assetType3 = [(ATAssetLinkPowerLoggerAggregationKey *)v5 assetType];
            assetType4 = [(ATAssetLinkPowerLoggerAggregationKey *)self assetType];
            v13 = [assetType3 isEqualToString:assetType4];
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  linkType = [(ATAssetLinkPowerLoggerAggregationKey *)self linkType];
  dataclass = [(ATAssetLinkPowerLoggerAggregationKey *)self dataclass];
  v5 = [dataclass hash] ^ linkType;
  assetType = [(ATAssetLinkPowerLoggerAggregationKey *)self assetType];
  v7 = [assetType hash];

  return v5 ^ v7;
}

- (ATAssetLinkPowerLoggerAggregationKey)initWithLinkType:(int64_t)type dataclass:(id)dataclass assetType:(id)assetType
{
  dataclassCopy = dataclass;
  assetTypeCopy = assetType;
  v14.receiver = self;
  v14.super_class = ATAssetLinkPowerLoggerAggregationKey;
  v11 = [(ATAssetLinkPowerLoggerAggregationKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_linkType = type;
    objc_storeStrong(&v11->_dataclass, dataclass);
    objc_storeStrong(&v12->_assetType, assetType);
  }

  return v12;
}

@end