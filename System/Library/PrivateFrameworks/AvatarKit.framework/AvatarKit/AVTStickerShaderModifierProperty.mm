@interface AVTStickerShaderModifierProperty
+ (id)shaderModifierPropertyCache;
+ (id)shaderModifierPropertyFromDictionary:(id)dictionary assetsPath:(id)path;
- (AVTStickerShaderModifierProperty)initWithName:(id)name type:(id)type value:(id)value originalValue:(id)originalValue;
- (id)dictionaryWithTargetPath:(id)path;
@end

@implementation AVTStickerShaderModifierProperty

+ (id)shaderModifierPropertyCache
{
  if (shaderModifierPropertyCache_onceToken != -1)
  {
    +[AVTStickerShaderModifierProperty shaderModifierPropertyCache];
  }

  v3 = shaderModifierPropertyCache_kCache;

  return v3;
}

uint64_t __63__AVTStickerShaderModifierProperty_shaderModifierPropertyCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = shaderModifierPropertyCache_kCache;
  shaderModifierPropertyCache_kCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)shaderModifierPropertyFromDictionary:(id)dictionary assetsPath:(id)path
{
  pathCopy = path;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"value"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"type"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [pathCopy stringByAppendingPathComponent:v8];
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:0];
    standardizedURL = [v12 standardizedURL];
    absoluteString = [standardizedURL absoluteString];

    shaderModifierPropertyCache = [self shaderModifierPropertyCache];
    v16 = [shaderModifierPropertyCache objectForKey:absoluteString];
    if (!v16)
    {
      v16 = [[AVTStickerShaderModifierProperty alloc] initWithName:v9 type:v10 value:v11 originalValue:v8];
      [shaderModifierPropertyCache setObject:v16 forKey:absoluteString];
    }
  }

  else
  {
    v16 = [[AVTStickerShaderModifierProperty alloc] initWithName:v9 type:v10 value:v8 originalValue:v8];
  }

  return v16;
}

- (AVTStickerShaderModifierProperty)initWithName:(id)name type:(id)type value:(id)value originalValue:(id)originalValue
{
  nameCopy = name;
  typeCopy = type;
  valueCopy = value;
  originalValueCopy = originalValue;
  v21.receiver = self;
  v21.super_class = AVTStickerShaderModifierProperty;
  v15 = [(AVTStickerShaderModifierProperty *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v16->_type, type);
    objc_storeStrong(&v16->_value, value);
    objc_storeStrong(&v16->_originalValue, originalValue);
    if ([typeCopy isEqualToString:@"texture"])
    {
      v17 = [MEMORY[0x1E69DF300] materialPropertyWithContents:valueCopy];
    }

    else if ([typeCopy isEqualToString:@"float"])
    {
      v18 = MEMORY[0x1E696AD98];
      [valueCopy floatValue];
      v17 = [v18 numberWithFloat:?];
    }

    else
    {
      v17 = valueCopy;
    }

    effectiveValue = v16->_effectiveValue;
    v16->_effectiveValue = v17;
  }

  return v16;
}

- (id)dictionaryWithTargetPath:(id)path
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *&self->_name;
  v7[0] = @"name";
  v7[1] = @"type";
  v8 = v3;
  v7[2] = @"value";
  originalValue = self->_originalValue;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:v7 count:3];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end