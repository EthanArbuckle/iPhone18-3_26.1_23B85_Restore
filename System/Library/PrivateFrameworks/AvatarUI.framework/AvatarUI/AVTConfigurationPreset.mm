@interface AVTConfigurationPreset
- ($0AC6E346AE4835514AAA8AC86D8F4844)settingKind;
- (AVTConfigurationPreset)initWithDefaultPresetForSettingKind:(id)kind;
- (AVTConfigurationPreset)initWithPreset:(id)preset settingKind:(id)kind;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVTConfigurationPreset

- (AVTConfigurationPreset)initWithPreset:(id)preset settingKind:(id)kind
{
  var1 = kind.var1;
  var0 = kind.var0;
  presetCopy = preset;
  v12.receiver = self;
  v12.super_class = AVTConfigurationPreset;
  v9 = [(AVTConfigurationPreset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preset, preset);
    v10->_settingKind.destination = var0;
    v10->_settingKind.category = var1;
  }

  return v10;
}

- (AVTConfigurationPreset)initWithDefaultPresetForSettingKind:(id)kind
{
  var1 = kind.var1;
  var0 = kind.var0;
  v6.receiver = self;
  v6.super_class = AVTConfigurationPreset;
  result = [(AVTConfigurationPreset *)&v6 init];
  if (result)
  {
    result->_defaultPreset = 1;
    result->_settingKind.destination = var0;
    result->_settingKind.category = var1;
  }

  return result;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = AVTConfigurationPreset;
  v3 = [(AVTConfigurationPreset *)&v9 description];
  v4 = [v3 mutableCopy];

  if ([(AVTConfigurationPreset *)self isDefaultPreset])
  {
    [v4 appendString:@"default"];
  }

  else
  {
    preset = [(AVTConfigurationPreset *)self preset];
    v6 = [preset description];
    [v4 appendString:v6];
  }

  v7 = [v4 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
    goto LABEL_11;
  }

  isDefaultPreset = [(AVTConfigurationPreset *)self isDefaultPreset];
  if (isDefaultPreset != [(AVTConfigurationPreset *)equalCopy isDefaultPreset])
  {
    goto LABEL_10;
  }

  preset = [(AVTConfigurationPreset *)self preset];
  if (!preset)
  {
    preset2 = [(AVTConfigurationPreset *)equalCopy preset];
    if (!preset2)
    {
      goto LABEL_7;
    }
  }

  preset3 = [(AVTConfigurationPreset *)self preset];
  preset4 = [(AVTConfigurationPreset *)equalCopy preset];
  v10 = [preset3 isEqual:preset4];

  if (!preset)
  {

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_7:
  settingKind = [(AVTConfigurationPreset *)self settingKind];
  v13 = v12;
  settingKind2 = [(AVTConfigurationPreset *)equalCopy settingKind];
  v16 = AVTAvatarSettingKindEqual(settingKind, v13, settingKind2, v15);
LABEL_11:

  return v16;
}

- (unint64_t)hash
{
  if ([(AVTConfigurationPreset *)self isDefaultPreset])
  {
    v3 = 0;
  }

  else
  {
    preset = [(AVTConfigurationPreset *)self preset];
    v3 = [preset hash];
  }

  settingKind = [(AVTConfigurationPreset *)self settingKind];
  return AVTAvatarSettingKindHash(settingKind, v6) ^ __ROR8__(v3, 32);
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)settingKind
{
  category = self->_settingKind.category;
  destination = self->_settingKind.destination;
  result.var1 = category;
  result.var0 = destination;
  return result;
}

@end