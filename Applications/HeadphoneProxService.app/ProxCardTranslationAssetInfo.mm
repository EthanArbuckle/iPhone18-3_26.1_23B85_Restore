@interface ProxCardTranslationAssetInfo
- (ProxCardTranslationAssetInfo)initWithCoder:(id)coder;
- (ProxCardTranslationAssetInfo)initWithLocale:(id)locale displayName:(id)name assetStatus:(unsigned __int8)status isSuggested:(BOOL)suggested;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ProxCardTranslationAssetInfo

- (ProxCardTranslationAssetInfo)initWithLocale:(id)locale displayName:(id)name assetStatus:(unsigned __int8)status isSuggested:(BOOL)suggested
{
  localeCopy = locale;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = ProxCardTranslationAssetInfo;
  v13 = [(ProxCardTranslationAssetInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_locale, locale);
    objc_storeStrong(&v14->_displayName, name);
    v14->_assetStatus = status;
    v14->_isSuggested = suggested;
  }

  return v14;
}

- (ProxCardTranslationAssetInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ProxCardTranslationAssetInfo;
  v5 = [(ProxCardTranslationAssetInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v5->_assetStatus = [coderCopy decodeIntForKey:@"assetStatus"];
    v5->_isSuggested = [coderCopy decodeBoolForKey:@"isSuggested"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  locale = self->_locale;
  coderCopy = coder;
  [coderCopy encodeObject:locale forKey:@"locale"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeInt:self->_assetStatus forKey:@"assetStatus"];
  [coderCopy encodeBool:self->_isSuggested forKey:@"isSuggested"];
}

@end