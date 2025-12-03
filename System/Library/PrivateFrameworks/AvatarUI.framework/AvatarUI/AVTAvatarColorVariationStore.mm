@interface AVTAvatarColorVariationStore
- (AVTAvatarColorVariationStore)init;
- (id)colorPresetFromColor:(id)color;
- (id)colorVariationFromColor:(id)color;
- (id)keyForColor:(id)color;
- (void)resetValues;
- (void)saveColorPreset:(id)preset forColor:(id)color;
@end

@implementation AVTAvatarColorVariationStore

- (AVTAvatarColorVariationStore)init
{
  v6.receiver = self;
  v6.super_class = AVTAvatarColorVariationStore;
  v2 = [(AVTAvatarColorVariationStore *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    colorPresets = v2->_colorPresets;
    v2->_colorPresets = dictionary;
  }

  return v2;
}

- (id)colorVariationFromColor:(id)color
{
  colorCopy = color;
  v5 = [(AVTAvatarColorVariationStore *)self colorPresetFromColor:colorCopy];
  v6 = [[AVTCoreModelColorVariation alloc] initWithColor:colorCopy colorPreset:v5];

  return v6;
}

- (id)colorPresetFromColor:(id)color
{
  colorCopy = color;
  v5 = [(AVTAvatarColorVariationStore *)self keyForColor:colorCopy];
  colorPresets = [(AVTAvatarColorVariationStore *)self colorPresets];
  v7 = [colorPresets objectForKey:v5];

  if (v7)
  {
    baseColorPreset = v7;
  }

  else
  {
    baseColorPreset = [colorCopy baseColorPreset];
  }

  v9 = baseColorPreset;

  return v9;
}

- (void)saveColorPreset:(id)preset forColor:(id)color
{
  colorCopy = color;
  presetCopy = preset;
  colorPresets = [(AVTAvatarColorVariationStore *)self colorPresets];
  v8 = [(AVTAvatarColorVariationStore *)self keyForColor:colorCopy];

  [colorPresets setValue:presetCopy forKey:v8];
}

- (id)keyForColor:(id)color
{
  v3 = MEMORY[0x1E696AEC0];
  colorCopy = color;
  settingKind = [colorCopy settingKind];
  v7 = AVTAvatarSettingKindIdentifier(settingKind, v6);
  identifier = [colorCopy identifier];

  v9 = [v3 stringWithFormat:@"%@-%@", v7, identifier];

  return v9;
}

- (void)resetValues
{
  colorPresets = [(AVTAvatarColorVariationStore *)self colorPresets];
  [colorPresets removeAllObjects];
}

@end