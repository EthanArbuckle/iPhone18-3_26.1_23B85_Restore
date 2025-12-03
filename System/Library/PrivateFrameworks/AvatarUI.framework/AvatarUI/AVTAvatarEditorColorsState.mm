@interface AVTAvatarEditorColorsState
- (AVTAvatarEditorColorsState)initWithVariationStore:(id)store;
- (id)selectedColorForCategory:(int64_t)category destinationIndex:(int64_t)index;
- (id)selectedColorPresetForCategory:(int64_t)category destinationIndex:(int64_t)index;
- (id)storageForCategory:(int64_t)category;
- (void)setSelectedColorPreset:(id)preset forCoreModelColor:(id)color;
@end

@implementation AVTAvatarEditorColorsState

- (AVTAvatarEditorColorsState)initWithVariationStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = AVTAvatarEditorColorsState;
  v6 = [(AVTAvatarEditorColorsState *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_variationStore, store);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    colorStorage = v7->_colorStorage;
    v7->_colorStorage = dictionary;
  }

  return v7;
}

- (id)selectedColorForCategory:(int64_t)category destinationIndex:(int64_t)index
{
  colorStorage = [(AVTAvatarEditorColorsState *)self colorStorage];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:category];
  v8 = [colorStorage objectForKeyedSubscript:v7];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  v10 = [v8 objectForKeyedSubscript:v9];

  return v10;
}

- (id)selectedColorPresetForCategory:(int64_t)category destinationIndex:(int64_t)index
{
  v5 = [(AVTAvatarEditorColorsState *)self selectedColorForCategory:category destinationIndex:index];
  baseColorPreset = [v5 baseColorPreset];
  variationStore = [(AVTAvatarEditorColorsState *)self variationStore];

  if (variationStore)
  {
    variationStore2 = [(AVTAvatarEditorColorsState *)self variationStore];
    v9 = [variationStore2 colorPresetFromColor:v5];

    baseColorPreset = v9;
  }

  return baseColorPreset;
}

- (void)setSelectedColorPreset:(id)preset forCoreModelColor:(id)color
{
  colorCopy = color;
  presetCopy = preset;
  variationStore = [(AVTAvatarEditorColorsState *)self variationStore];
  [variationStore saveColorPreset:presetCopy forColor:colorCopy];

  baseColorPreset = [colorCopy baseColorPreset];
  v11 = -[AVTAvatarEditorColorsState storageForCategory:](self, "storageForCategory:", [baseColorPreset category]);

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(colorCopy, "settingKind")}];
  [v11 setObject:colorCopy forKeyedSubscript:v10];
}

- (id)storageForCategory:(int64_t)category
{
  colorStorage = [(AVTAvatarEditorColorsState *)self colorStorage];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:category];
  dictionary = [colorStorage objectForKeyedSubscript:v6];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    colorStorage2 = [(AVTAvatarEditorColorsState *)self colorStorage];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:category];
    [colorStorage2 setObject:dictionary forKeyedSubscript:v9];
  }

  return dictionary;
}

@end