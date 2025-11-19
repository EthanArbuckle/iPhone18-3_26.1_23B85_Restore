@interface AVTConfigurationPreset
- ($0AC6E346AE4835514AAA8AC86D8F4844)settingKind;
- (AVTConfigurationPreset)initWithDefaultPresetForSettingKind:(id)a3;
- (AVTConfigurationPreset)initWithPreset:(id)a3 settingKind:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVTConfigurationPreset

- (AVTConfigurationPreset)initWithPreset:(id)a3 settingKind:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = AVTConfigurationPreset;
  v9 = [(AVTConfigurationPreset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preset, a3);
    v10->_settingKind.destination = var0;
    v10->_settingKind.category = var1;
  }

  return v10;
}

- (AVTConfigurationPreset)initWithDefaultPresetForSettingKind:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
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
    v5 = [(AVTConfigurationPreset *)self preset];
    v6 = [v5 description];
    [v4 appendString:v6];
  }

  v7 = [v4 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v16 = 1;
    goto LABEL_11;
  }

  v6 = [(AVTConfigurationPreset *)self isDefaultPreset];
  if (v6 != [(AVTConfigurationPreset *)v5 isDefaultPreset])
  {
    goto LABEL_10;
  }

  v7 = [(AVTConfigurationPreset *)self preset];
  if (!v7)
  {
    v3 = [(AVTConfigurationPreset *)v5 preset];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v8 = [(AVTConfigurationPreset *)self preset];
  v9 = [(AVTConfigurationPreset *)v5 preset];
  v10 = [v8 isEqual:v9];

  if (!v7)
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
  v11 = [(AVTConfigurationPreset *)self settingKind];
  v13 = v12;
  v14 = [(AVTConfigurationPreset *)v5 settingKind];
  v16 = AVTAvatarSettingKindEqual(v11, v13, v14, v15);
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
    v4 = [(AVTConfigurationPreset *)self preset];
    v3 = [v4 hash];
  }

  v5 = [(AVTConfigurationPreset *)self settingKind];
  return AVTAvatarSettingKindHash(v5, v6) ^ __ROR8__(v3, 32);
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