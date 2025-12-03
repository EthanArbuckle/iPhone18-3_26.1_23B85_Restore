@interface STSetting
- (id)_ad_aceSettingBooleanEntityRepresentation;
@end

@implementation STSetting

- (id)_ad_aceSettingBooleanEntityRepresentation
{
  v3 = objc_alloc_init(SASettingBooleanEntity);
  value = [(STSetting *)self value];
  [v3 setValue:{objc_msgSend(value, "BOOLValue")}];

  return v3;
}

@end