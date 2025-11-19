@interface AVMediaPresentationSetting
- (AVMediaPresentationSetting)initWithFigAssetCustomMediaSelectionSchemeSetting:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)dealloc;
@end

@implementation AVMediaPresentationSetting

- (AVMediaPresentationSetting)initWithFigAssetCustomMediaSelectionSchemeSetting:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVMediaPresentationSetting;
  v4 = [(AVMediaPresentationSetting *)&v6 init];
  if (v4)
  {
    v4->_mediaCharacteristic = [objc_msgSend(a3 objectForKey:{@"CustomMediaSelectionSchemeSettingMediaCharacteristic", "copy"}];
    v4->_displayNames = [a3 objectForKey:@"CustomMediaSelectionSchemeSettingDisplayNames"];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMediaPresentationSetting;
  [(AVMediaPresentationSetting *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mediaCharacteristic = self->_mediaCharacteristic;
  v6 = [a3 mediaCharacteristic];

  return [(NSString *)mediaCharacteristic isEqualToString:v6];
}

@end