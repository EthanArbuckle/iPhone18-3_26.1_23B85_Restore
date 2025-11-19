@interface AMTranslationAssetInfo
- (AMTranslationAssetInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMTranslationAssetInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_assetStatus)
  {
    [v4 encodeInteger:? forKey:?];
    v4 = v7;
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v7 encodeObject:displayName forKey:@"dnam"];
    v4 = v7;
  }

  if (self->_isSuggested)
  {
    [v7 encodeBool:1 forKey:@"isgt"];
    v4 = v7;
  }

  locale = self->_locale;
  if (locale)
  {
    [v7 encodeObject:locale forKey:@"lcal"];
    v4 = v7;
  }
}

- (AMTranslationAssetInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AMTranslationAssetInfo;
  v5 = [(AMTranslationAssetInfo *)&v8 init];
  if (v5)
  {
    v9 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_assetStatus = v9;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = v4;
    if ([v6 containsValueForKey:@"isgt"])
    {
      v5->_isSuggested = [v6 decodeBoolForKey:@"isgt"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(AMTranslationAssetInfo *)self assetStatus];
  if (v4 > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_278CDD048[v4];
  }

  v6 = [(AMTranslationAssetInfo *)self displayName];
  v7 = [(AMTranslationAssetInfo *)self isSuggested];
  v8 = [(AMTranslationAssetInfo *)self locale];
  v9 = [v3 stringWithFormat:@"AMTranslationAssetInfo: assetStatus %s, displayName %@, isSuggested %d locale %@", v5, v6, v7, v8];

  return v9;
}

@end