@interface AVMediaPresentationSetting
- (AVMediaPresentationSetting)initWithFigAssetCustomMediaSelectionSchemeSetting:(id)setting;
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation AVMediaPresentationSetting

- (AVMediaPresentationSetting)initWithFigAssetCustomMediaSelectionSchemeSetting:(id)setting
{
  v6.receiver = self;
  v6.super_class = AVMediaPresentationSetting;
  v4 = [(AVMediaPresentationSetting *)&v6 init];
  if (v4)
  {
    v4->_mediaCharacteristic = [objc_msgSend(setting objectForKey:{@"CustomMediaSelectionSchemeSettingMediaCharacteristic", "copy"}];
    v4->_displayNames = [setting objectForKey:@"CustomMediaSelectionSchemeSettingDisplayNames"];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMediaPresentationSetting;
  [(AVMediaPresentationSetting *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mediaCharacteristic = self->_mediaCharacteristic;
  mediaCharacteristic = [equal mediaCharacteristic];

  return [(NSString *)mediaCharacteristic isEqualToString:mediaCharacteristic];
}

@end