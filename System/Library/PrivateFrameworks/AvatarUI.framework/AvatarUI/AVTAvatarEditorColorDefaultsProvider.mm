@interface AVTAvatarEditorColorDefaultsProvider
+ (id)keyForCategory:(int64_t)category colorIndex:(int64_t)index;
+ (int64_t)categoryForKey:(id)key;
+ (int64_t)colorIndexForKey:(id)key;
- (AVTAvatarEditorColorDefaultsProvider)initWithColorDefaultsDictionary:(id)dictionary editingColors:(id)colors;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultColorForCategory:(int64_t)category destination:(int64_t)destination withConfiguration:(id)configuration;
- (id)defaultColorPresetForCategory:(int64_t)category destination:(int64_t)destination withConfiguration:(id)configuration;
@end

@implementation AVTAvatarEditorColorDefaultsProvider

+ (id)keyForCategory:(int64_t)category colorIndex:(int64_t)index
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = AVTPresetCategoryToColorCategoryString();
  index = [v5 stringWithFormat:@"%@_%ld", v6, index];

  return index;
}

+ (int64_t)categoryForKey:(id)key
{
  v3 = [key componentsSeparatedByString:@"_"];
  v4 = [v3 objectAtIndexedSubscript:0];

  v5 = AVTPresetCategoryFromString();
  return v5;
}

+ (int64_t)colorIndexForKey:(id)key
{
  v3 = [key componentsSeparatedByString:@"_"];
  v4 = [v3 objectAtIndexedSubscript:1];

  integerValue = [v4 integerValue];
  return integerValue;
}

- (AVTAvatarEditorColorDefaultsProvider)initWithColorDefaultsDictionary:(id)dictionary editingColors:(id)colors
{
  dictionaryCopy = dictionary;
  colorsCopy = colors;
  v15.receiver = self;
  v15.super_class = AVTAvatarEditorColorDefaultsProvider;
  v8 = [(AVTAvatarEditorColorDefaultsProvider *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_editingColors, colors);
    v10 = [dictionaryCopy objectForKeyedSubscript:@"mapping"];
    categoryMapping = v9->_categoryMapping;
    v9->_categoryMapping = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"definitions"];
    definitions = v9->_definitions;
    v9->_definitions = v12;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [AVTAvatarEditorColorDefaultsProvider alloc];
  v11[0] = @"mapping";
  categoryMapping = [(AVTAvatarEditorColorDefaultsProvider *)self categoryMapping];
  v11[1] = @"definitions";
  v12[0] = categoryMapping;
  definitions = [(AVTAvatarEditorColorDefaultsProvider *)self definitions];
  v12[1] = definitions;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  editingColors = [(AVTAvatarEditorColorDefaultsProvider *)self editingColors];
  v9 = [(AVTAvatarEditorColorDefaultsProvider *)v4 initWithColorDefaultsDictionary:v7 editingColors:editingColors];

  return v9;
}

- (id)defaultColorForCategory:(int64_t)category destination:(int64_t)destination withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9 = [objc_opt_class() keyForCategory:category colorIndex:destination];
  categoryMapping = [(AVTAvatarEditorColorDefaultsProvider *)self categoryMapping];
  v11 = [categoryMapping objectForKeyedSubscript:v9];

  v12 = [objc_opt_class() categoryForKey:v11];
  v13 = [objc_opt_class() colorIndexForKey:v11];
  definitions = [(AVTAvatarEditorColorDefaultsProvider *)self definitions];
  v15 = [definitions objectForKeyedSubscript:v11];

  v16 = AVTColorSettingKind(v12, v13);
  v18 = [configurationCopy colorPresetForSettingKind:{v16, v17}];

  colorPreset = [v18 colorPreset];
  name = [colorPreset name];

  v21 = [v15 objectForKeyedSubscript:name];
  editingColors = [(AVTAvatarEditorColorDefaultsProvider *)self editingColors];
  v23 = AVTColorSettingKind(category, destination);
  v25 = [editingColors colorForSettingKind:v23 identifier:{v24, v21}];

  return v25;
}

- (id)defaultColorPresetForCategory:(int64_t)category destination:(int64_t)destination withConfiguration:(id)configuration
{
  v5 = [(AVTAvatarEditorColorDefaultsProvider *)self defaultColorForCategory:category destination:destination withConfiguration:configuration];
  baseColorPreset = [v5 baseColorPreset];

  return baseColorPreset;
}

@end