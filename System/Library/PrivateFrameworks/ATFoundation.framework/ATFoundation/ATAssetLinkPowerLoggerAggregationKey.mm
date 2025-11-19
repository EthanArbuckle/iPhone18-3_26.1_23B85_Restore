@interface ATAssetLinkPowerLoggerAggregationKey
- (ATAssetLinkPowerLoggerAggregationKey)initWithLinkType:(int64_t)a3 dataclass:(id)a4 assetType:(id)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation ATAssetLinkPowerLoggerAggregationKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATAssetLinkPowerLoggerAggregationKey *)v5 linkType];
      if (v6 == [(ATAssetLinkPowerLoggerAggregationKey *)self linkType])
      {
        v7 = [(ATAssetLinkPowerLoggerAggregationKey *)v5 dataclass];
        v8 = [(ATAssetLinkPowerLoggerAggregationKey *)self dataclass];
        if ([v7 isEqualToString:v8])
        {
          v9 = [(ATAssetLinkPowerLoggerAggregationKey *)v5 assetType];
          v10 = [(ATAssetLinkPowerLoggerAggregationKey *)self assetType];
          if (v9 == v10)
          {
            v13 = 1;
          }

          else
          {
            v11 = [(ATAssetLinkPowerLoggerAggregationKey *)v5 assetType];
            v12 = [(ATAssetLinkPowerLoggerAggregationKey *)self assetType];
            v13 = [v11 isEqualToString:v12];
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
  v3 = [(ATAssetLinkPowerLoggerAggregationKey *)self linkType];
  v4 = [(ATAssetLinkPowerLoggerAggregationKey *)self dataclass];
  v5 = [v4 hash] ^ v3;
  v6 = [(ATAssetLinkPowerLoggerAggregationKey *)self assetType];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (ATAssetLinkPowerLoggerAggregationKey)initWithLinkType:(int64_t)a3 dataclass:(id)a4 assetType:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ATAssetLinkPowerLoggerAggregationKey;
  v11 = [(ATAssetLinkPowerLoggerAggregationKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_linkType = a3;
    objc_storeStrong(&v11->_dataclass, a4);
    objc_storeStrong(&v12->_assetType, a5);
  }

  return v12;
}

@end