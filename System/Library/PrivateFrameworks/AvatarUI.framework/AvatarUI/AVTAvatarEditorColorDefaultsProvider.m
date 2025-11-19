@interface AVTAvatarEditorColorDefaultsProvider
+ (id)keyForCategory:(int64_t)a3 colorIndex:(int64_t)a4;
+ (int64_t)categoryForKey:(id)a3;
+ (int64_t)colorIndexForKey:(id)a3;
- (AVTAvatarEditorColorDefaultsProvider)initWithColorDefaultsDictionary:(id)a3 editingColors:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultColorForCategory:(int64_t)a3 destination:(int64_t)a4 withConfiguration:(id)a5;
- (id)defaultColorPresetForCategory:(int64_t)a3 destination:(int64_t)a4 withConfiguration:(id)a5;
@end

@implementation AVTAvatarEditorColorDefaultsProvider

+ (id)keyForCategory:(int64_t)a3 colorIndex:(int64_t)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = AVTPresetCategoryToColorCategoryString();
  v7 = [v5 stringWithFormat:@"%@_%ld", v6, a4];

  return v7;
}

+ (int64_t)categoryForKey:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"_"];
  v4 = [v3 objectAtIndexedSubscript:0];

  v5 = AVTPresetCategoryFromString();
  return v5;
}

+ (int64_t)colorIndexForKey:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"_"];
  v4 = [v3 objectAtIndexedSubscript:1];

  v5 = [v4 integerValue];
  return v5;
}

- (AVTAvatarEditorColorDefaultsProvider)initWithColorDefaultsDictionary:(id)a3 editingColors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = AVTAvatarEditorColorDefaultsProvider;
  v8 = [(AVTAvatarEditorColorDefaultsProvider *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_editingColors, a4);
    v10 = [v6 objectForKeyedSubscript:@"mapping"];
    categoryMapping = v9->_categoryMapping;
    v9->_categoryMapping = v10;

    v12 = [v6 objectForKeyedSubscript:@"definitions"];
    definitions = v9->_definitions;
    v9->_definitions = v12;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [AVTAvatarEditorColorDefaultsProvider alloc];
  v11[0] = @"mapping";
  v5 = [(AVTAvatarEditorColorDefaultsProvider *)self categoryMapping];
  v11[1] = @"definitions";
  v12[0] = v5;
  v6 = [(AVTAvatarEditorColorDefaultsProvider *)self definitions];
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [(AVTAvatarEditorColorDefaultsProvider *)self editingColors];
  v9 = [(AVTAvatarEditorColorDefaultsProvider *)v4 initWithColorDefaultsDictionary:v7 editingColors:v8];

  return v9;
}

- (id)defaultColorForCategory:(int64_t)a3 destination:(int64_t)a4 withConfiguration:(id)a5
{
  v8 = a5;
  v9 = [objc_opt_class() keyForCategory:a3 colorIndex:a4];
  v10 = [(AVTAvatarEditorColorDefaultsProvider *)self categoryMapping];
  v11 = [v10 objectForKeyedSubscript:v9];

  v12 = [objc_opt_class() categoryForKey:v11];
  v13 = [objc_opt_class() colorIndexForKey:v11];
  v14 = [(AVTAvatarEditorColorDefaultsProvider *)self definitions];
  v15 = [v14 objectForKeyedSubscript:v11];

  v16 = AVTColorSettingKind(v12, v13);
  v18 = [v8 colorPresetForSettingKind:{v16, v17}];

  v19 = [v18 colorPreset];
  v20 = [v19 name];

  v21 = [v15 objectForKeyedSubscript:v20];
  v22 = [(AVTAvatarEditorColorDefaultsProvider *)self editingColors];
  v23 = AVTColorSettingKind(a3, a4);
  v25 = [v22 colorForSettingKind:v23 identifier:{v24, v21}];

  return v25;
}

- (id)defaultColorPresetForCategory:(int64_t)a3 destination:(int64_t)a4 withConfiguration:(id)a5
{
  v5 = [(AVTAvatarEditorColorDefaultsProvider *)self defaultColorForCategory:a3 destination:a4 withConfiguration:a5];
  v6 = [v5 baseColorPreset];

  return v6;
}

@end