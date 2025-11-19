@interface STSettingChange
- (id)_ad_aceSettingBooleanEntityRepresentation;
- (id)_ad_aceSettingsResponseRepresentationForSetValueCommand:(id)a3;
@end

@implementation STSettingChange

- (id)_ad_aceSettingBooleanEntityRepresentation
{
  v3 = objc_alloc_init(SASettingBooleanEntity);
  v4 = [(STSettingChange *)self valueBeforeUpdate];
  [v3 setPreviousValue:v4];

  v5 = [(STSettingChange *)self valueAfterUpdate];
  [v3 setValue:{objc_msgSend(v5, "BOOLValue")}];

  return v3;
}

- (id)_ad_aceSettingsResponseRepresentationForSetValueCommand:(id)a3
{
  v4 = a3;
  v5 = [(STSettingChange *)self valueBeforeUpdate];
  v6 = [(STSettingChange *)self valueAfterUpdate];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(SACommandFailed);
    v9 = v8;
    v10 = &SASettingValueUnchangedErrorCode;
LABEL_3:
    [v8 setErrorCode:*v10];
    goto LABEL_9;
  }

  if ([v4 failOnSiriDisconnectWarnings])
  {
    if ([(STSettingChange *)self settingType]== 1)
    {
      v11 = [(STSettingChange *)self valueAfterUpdate];
      v12 = [v11 BOOLValue];

      if (v12)
      {
        v8 = objc_alloc_init(SACommandFailed);
        v9 = v8;
        v10 = &SASettingSiriDisconnectErrorCode;
        goto LABEL_3;
      }
    }
  }

  v13 = [(STSettingChange *)self _ad_aceSettingBooleanEntityRepresentation];
  v9 = objc_alloc_init(SASettingSetBoolResponse);
  [v9 setSetting:v13];

LABEL_9:

  return v9;
}

@end