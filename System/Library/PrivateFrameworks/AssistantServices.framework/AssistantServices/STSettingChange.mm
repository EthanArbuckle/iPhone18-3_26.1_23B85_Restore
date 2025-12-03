@interface STSettingChange
- (id)_ad_aceSettingBooleanEntityRepresentation;
- (id)_ad_aceSettingsResponseRepresentationForSetValueCommand:(id)command;
@end

@implementation STSettingChange

- (id)_ad_aceSettingBooleanEntityRepresentation
{
  v3 = objc_alloc_init(SASettingBooleanEntity);
  valueBeforeUpdate = [(STSettingChange *)self valueBeforeUpdate];
  [v3 setPreviousValue:valueBeforeUpdate];

  valueAfterUpdate = [(STSettingChange *)self valueAfterUpdate];
  [v3 setValue:{objc_msgSend(valueAfterUpdate, "BOOLValue")}];

  return v3;
}

- (id)_ad_aceSettingsResponseRepresentationForSetValueCommand:(id)command
{
  commandCopy = command;
  valueBeforeUpdate = [(STSettingChange *)self valueBeforeUpdate];
  valueAfterUpdate = [(STSettingChange *)self valueAfterUpdate];
  v7 = [valueBeforeUpdate isEqual:valueAfterUpdate];

  if (v7)
  {
    v8 = objc_alloc_init(SACommandFailed);
    v9 = v8;
    v10 = &SASettingValueUnchangedErrorCode;
LABEL_3:
    [v8 setErrorCode:*v10];
    goto LABEL_9;
  }

  if ([commandCopy failOnSiriDisconnectWarnings])
  {
    if ([(STSettingChange *)self settingType]== 1)
    {
      valueAfterUpdate2 = [(STSettingChange *)self valueAfterUpdate];
      bOOLValue = [valueAfterUpdate2 BOOLValue];

      if (bOOLValue)
      {
        v8 = objc_alloc_init(SACommandFailed);
        v9 = v8;
        v10 = &SASettingSiriDisconnectErrorCode;
        goto LABEL_3;
      }
    }
  }

  _ad_aceSettingBooleanEntityRepresentation = [(STSettingChange *)self _ad_aceSettingBooleanEntityRepresentation];
  v9 = objc_alloc_init(SASettingSetBoolResponse);
  [v9 setSetting:_ad_aceSettingBooleanEntityRepresentation];

LABEL_9:

  return v9;
}

@end