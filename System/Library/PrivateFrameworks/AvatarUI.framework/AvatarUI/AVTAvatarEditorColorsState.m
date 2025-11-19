@interface AVTAvatarEditorColorsState
- (AVTAvatarEditorColorsState)initWithVariationStore:(id)a3;
- (id)selectedColorForCategory:(int64_t)a3 destinationIndex:(int64_t)a4;
- (id)selectedColorPresetForCategory:(int64_t)a3 destinationIndex:(int64_t)a4;
- (id)storageForCategory:(int64_t)a3;
- (void)setSelectedColorPreset:(id)a3 forCoreModelColor:(id)a4;
@end

@implementation AVTAvatarEditorColorsState

- (AVTAvatarEditorColorsState)initWithVariationStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AVTAvatarEditorColorsState;
  v6 = [(AVTAvatarEditorColorsState *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_variationStore, a3);
    v8 = [MEMORY[0x1E695DF90] dictionary];
    colorStorage = v7->_colorStorage;
    v7->_colorStorage = v8;
  }

  return v7;
}

- (id)selectedColorForCategory:(int64_t)a3 destinationIndex:(int64_t)a4
{
  v6 = [(AVTAvatarEditorColorsState *)self colorStorage];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v10 = [v8 objectForKeyedSubscript:v9];

  return v10;
}

- (id)selectedColorPresetForCategory:(int64_t)a3 destinationIndex:(int64_t)a4
{
  v5 = [(AVTAvatarEditorColorsState *)self selectedColorForCategory:a3 destinationIndex:a4];
  v6 = [v5 baseColorPreset];
  v7 = [(AVTAvatarEditorColorsState *)self variationStore];

  if (v7)
  {
    v8 = [(AVTAvatarEditorColorsState *)self variationStore];
    v9 = [v8 colorPresetFromColor:v5];

    v6 = v9;
  }

  return v6;
}

- (void)setSelectedColorPreset:(id)a3 forCoreModelColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarEditorColorsState *)self variationStore];
  [v8 saveColorPreset:v7 forColor:v6];

  v9 = [v6 baseColorPreset];
  v11 = -[AVTAvatarEditorColorsState storageForCategory:](self, "storageForCategory:", [v9 category]);

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "settingKind")}];
  [v11 setObject:v6 forKeyedSubscript:v10];
}

- (id)storageForCategory:(int64_t)a3
{
  v5 = [(AVTAvatarEditorColorsState *)self colorStorage];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [(AVTAvatarEditorColorsState *)self colorStorage];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

@end