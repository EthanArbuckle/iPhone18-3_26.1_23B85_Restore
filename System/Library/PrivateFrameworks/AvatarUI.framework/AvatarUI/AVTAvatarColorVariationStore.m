@interface AVTAvatarColorVariationStore
- (AVTAvatarColorVariationStore)init;
- (id)colorPresetFromColor:(id)a3;
- (id)colorVariationFromColor:(id)a3;
- (id)keyForColor:(id)a3;
- (void)resetValues;
- (void)saveColorPreset:(id)a3 forColor:(id)a4;
@end

@implementation AVTAvatarColorVariationStore

- (AVTAvatarColorVariationStore)init
{
  v6.receiver = self;
  v6.super_class = AVTAvatarColorVariationStore;
  v2 = [(AVTAvatarColorVariationStore *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    colorPresets = v2->_colorPresets;
    v2->_colorPresets = v3;
  }

  return v2;
}

- (id)colorVariationFromColor:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarColorVariationStore *)self colorPresetFromColor:v4];
  v6 = [[AVTCoreModelColorVariation alloc] initWithColor:v4 colorPreset:v5];

  return v6;
}

- (id)colorPresetFromColor:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarColorVariationStore *)self keyForColor:v4];
  v6 = [(AVTAvatarColorVariationStore *)self colorPresets];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [v4 baseColorPreset];
  }

  v9 = v8;

  return v9;
}

- (void)saveColorPreset:(id)a3 forColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(AVTAvatarColorVariationStore *)self colorPresets];
  v8 = [(AVTAvatarColorVariationStore *)self keyForColor:v6];

  [v9 setValue:v7 forKey:v8];
}

- (id)keyForColor:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 settingKind];
  v7 = AVTAvatarSettingKindIdentifier(v5, v6);
  v8 = [v4 identifier];

  v9 = [v3 stringWithFormat:@"%@-%@", v7, v8];

  return v9;
}

- (void)resetValues
{
  v2 = [(AVTAvatarColorVariationStore *)self colorPresets];
  [v2 removeAllObjects];
}

@end