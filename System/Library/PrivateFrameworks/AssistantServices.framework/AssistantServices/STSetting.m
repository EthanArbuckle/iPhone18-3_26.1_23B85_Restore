@interface STSetting
- (id)_ad_aceSettingBooleanEntityRepresentation;
@end

@implementation STSetting

- (id)_ad_aceSettingBooleanEntityRepresentation
{
  v3 = objc_alloc_init(SASettingBooleanEntity);
  v4 = [(STSetting *)self value];
  [v3 setValue:{objc_msgSend(v4, "BOOLValue")}];

  return v3;
}

@end