@interface AVTStickerPresetOverride
+ (id)presetOverrideFromDictionary:(id)a3 forCategoryName:(id)a4;
- (AVTStickerPresetOverride)initWithCategory:(int64_t)a3 presetIdentifier:(id)a4 unless:(id)a5;
- (void)applyToAvatar:(id)a3 reversionContext:(id)a4;
@end

@implementation AVTStickerPresetOverride

+ (id)presetOverrideFromDictionary:(id)a3 forCategoryName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [AVTStickerPresetOverride alloc];
  v8 = AVTPresetCategoryFromString(v5);

  v9 = [v6 objectForKeyedSubscript:@"value"];
  v10 = [v6 objectForKeyedSubscript:@"unless"];

  v11 = [(AVTStickerPresetOverride *)v7 initWithCategory:v8 presetIdentifier:v9 unless:v10];

  return v11;
}

- (AVTStickerPresetOverride)initWithCategory:(int64_t)a3 presetIdentifier:(id)a4 unless:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AVTStickerPresetOverride;
  v11 = [(AVTStickerPresetOverride *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_category = a3;
    objc_storeStrong(&v11->_unlessIdentifiers, a5);
    objc_storeStrong(&v12->_presetIdentifier, a4);
  }

  return v12;
}

- (void)applyToAvatar:(id)a3 reversionContext:(id)a4
{
  v20 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v20;
    v8 = [(AVTStickerPresetOverride *)self category];
    v9 = [(AVTStickerPresetOverride *)self presetIdentifier];
    v10 = [AVTPreset presetWithCategory:v8 identifier:v9];

    v11 = [v7 presetForCategory:{-[AVTStickerPresetOverride category](self, "category")}];
    v12 = [(AVTStickerPresetOverride *)self unlessIdentifiers];
    v13 = [v11 identifier];
    v14 = [v12 containsObject:v13];

    if ((v14 & 1) == 0)
    {
      if (v6)
      {
        v15 = [AVTStickerPresetOverride alloc];
        v16 = [(AVTStickerPresetOverride *)self category];
        v17 = [v11 identifier];
        v18 = [(AVTStickerPresetOverride *)self unlessIdentifiers];
        v19 = [(AVTStickerPresetOverride *)v15 initWithCategory:v16 presetIdentifier:v17 unless:v18];

        [v6 savePresetOverride:v19];
      }

      [v7 setPreset:v10 forCategory:-[AVTStickerPresetOverride category](self animated:{"category"), 0}];
    }
  }
}

@end