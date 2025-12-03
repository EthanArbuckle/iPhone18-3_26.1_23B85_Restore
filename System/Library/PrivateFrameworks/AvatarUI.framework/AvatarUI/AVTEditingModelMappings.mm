@interface AVTEditingModelMappings
+ (id)paletteCategories;
+ (id)presetCategoryForColorPaletteName:(id)name;
+ (id)presetCategoryFromCategoryName:(id)name;
@end

@implementation AVTEditingModelMappings

+ (id)presetCategoryFromCategoryName:(id)name
{
  v3 = MEMORY[0x1E696AD98];
  v4 = AVTPresetCategoryFromString();

  return [v3 numberWithInteger:v4];
}

+ (id)presetCategoryForColorPaletteName:(id)name
{
  v3 = MEMORY[0x1E696AD98];
  v4 = AVTColorCategoryFromString();

  return [v3 numberWithInteger:v4];
}

+ (id)paletteCategories
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:40];
  AVTEnumeratePresetCategories();

  return v3;
}

void __44__AVTEditingModelMappings_paletteCategories__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v2 addObject:v3];
}

@end