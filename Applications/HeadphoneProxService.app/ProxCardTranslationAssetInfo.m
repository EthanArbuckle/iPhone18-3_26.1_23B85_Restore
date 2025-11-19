@interface ProxCardTranslationAssetInfo
- (ProxCardTranslationAssetInfo)initWithCoder:(id)a3;
- (ProxCardTranslationAssetInfo)initWithLocale:(id)a3 displayName:(id)a4 assetStatus:(unsigned __int8)a5 isSuggested:(BOOL)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ProxCardTranslationAssetInfo

- (ProxCardTranslationAssetInfo)initWithLocale:(id)a3 displayName:(id)a4 assetStatus:(unsigned __int8)a5 isSuggested:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = ProxCardTranslationAssetInfo;
  v13 = [(ProxCardTranslationAssetInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_locale, a3);
    objc_storeStrong(&v14->_displayName, a4);
    v14->_assetStatus = a5;
    v14->_isSuggested = a6;
  }

  return v14;
}

- (ProxCardTranslationAssetInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ProxCardTranslationAssetInfo;
  v5 = [(ProxCardTranslationAssetInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v5->_assetStatus = [v4 decodeIntForKey:@"assetStatus"];
    v5->_isSuggested = [v4 decodeBoolForKey:@"isSuggested"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  locale = self->_locale;
  v5 = a3;
  [v5 encodeObject:locale forKey:@"locale"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeInt:self->_assetStatus forKey:@"assetStatus"];
  [v5 encodeBool:self->_isSuggested forKey:@"isSuggested"];
}

@end