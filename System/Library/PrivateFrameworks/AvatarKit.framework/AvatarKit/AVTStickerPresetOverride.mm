@interface AVTStickerPresetOverride
+ (id)presetOverrideFromDictionary:(id)dictionary forCategoryName:(id)name;
- (AVTStickerPresetOverride)initWithCategory:(int64_t)category presetIdentifier:(id)identifier unless:(id)unless;
- (void)applyToAvatar:(id)avatar reversionContext:(id)context;
@end

@implementation AVTStickerPresetOverride

+ (id)presetOverrideFromDictionary:(id)dictionary forCategoryName:(id)name
{
  nameCopy = name;
  dictionaryCopy = dictionary;
  v7 = [AVTStickerPresetOverride alloc];
  v8 = AVTPresetCategoryFromString(nameCopy);

  v9 = [dictionaryCopy objectForKeyedSubscript:@"value"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"unless"];

  v11 = [(AVTStickerPresetOverride *)v7 initWithCategory:v8 presetIdentifier:v9 unless:v10];

  return v11;
}

- (AVTStickerPresetOverride)initWithCategory:(int64_t)category presetIdentifier:(id)identifier unless:(id)unless
{
  identifierCopy = identifier;
  unlessCopy = unless;
  v14.receiver = self;
  v14.super_class = AVTStickerPresetOverride;
  v11 = [(AVTStickerPresetOverride *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_category = category;
    objc_storeStrong(&v11->_unlessIdentifiers, unless);
    objc_storeStrong(&v12->_presetIdentifier, identifier);
  }

  return v12;
}

- (void)applyToAvatar:(id)avatar reversionContext:(id)context
{
  avatarCopy = avatar;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = avatarCopy;
    category = [(AVTStickerPresetOverride *)self category];
    presetIdentifier = [(AVTStickerPresetOverride *)self presetIdentifier];
    v10 = [AVTPreset presetWithCategory:category identifier:presetIdentifier];

    v11 = [v7 presetForCategory:{-[AVTStickerPresetOverride category](self, "category")}];
    unlessIdentifiers = [(AVTStickerPresetOverride *)self unlessIdentifiers];
    identifier = [v11 identifier];
    v14 = [unlessIdentifiers containsObject:identifier];

    if ((v14 & 1) == 0)
    {
      if (contextCopy)
      {
        v15 = [AVTStickerPresetOverride alloc];
        category2 = [(AVTStickerPresetOverride *)self category];
        identifier2 = [v11 identifier];
        unlessIdentifiers2 = [(AVTStickerPresetOverride *)self unlessIdentifiers];
        v19 = [(AVTStickerPresetOverride *)v15 initWithCategory:category2 presetIdentifier:identifier2 unless:unlessIdentifiers2];

        [contextCopy savePresetOverride:v19];
      }

      [v7 setPreset:v10 forCategory:-[AVTStickerPresetOverride category](self animated:{"category"), 0}];
    }
  }
}

@end