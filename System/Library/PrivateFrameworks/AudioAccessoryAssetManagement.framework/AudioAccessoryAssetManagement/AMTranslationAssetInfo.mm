@interface AMTranslationAssetInfo
- (AMTranslationAssetInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMTranslationAssetInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = coderCopy;
  if (self->_assetStatus)
  {
    [coderCopy encodeInteger:? forKey:?];
    coderCopy = v7;
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v7 encodeObject:displayName forKey:@"dnam"];
    coderCopy = v7;
  }

  if (self->_isSuggested)
  {
    [v7 encodeBool:1 forKey:@"isgt"];
    coderCopy = v7;
  }

  locale = self->_locale;
  if (locale)
  {
    [v7 encodeObject:locale forKey:@"lcal"];
    coderCopy = v7;
  }
}

- (AMTranslationAssetInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v6 = coderCopy;
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
  assetStatus = [(AMTranslationAssetInfo *)self assetStatus];
  if (assetStatus > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_278CDD048[assetStatus];
  }

  displayName = [(AMTranslationAssetInfo *)self displayName];
  isSuggested = [(AMTranslationAssetInfo *)self isSuggested];
  locale = [(AMTranslationAssetInfo *)self locale];
  v9 = [v3 stringWithFormat:@"AMTranslationAssetInfo: assetStatus %s, displayName %@, isSuggested %d locale %@", v5, displayName, isSuggested, locale];

  return v9;
}

@end