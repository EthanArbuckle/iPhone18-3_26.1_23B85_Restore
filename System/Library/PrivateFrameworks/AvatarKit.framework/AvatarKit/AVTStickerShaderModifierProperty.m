@interface AVTStickerShaderModifierProperty
+ (id)shaderModifierPropertyCache;
+ (id)shaderModifierPropertyFromDictionary:(id)a3 assetsPath:(id)a4;
- (AVTStickerShaderModifierProperty)initWithName:(id)a3 type:(id)a4 value:(id)a5 originalValue:(id)a6;
- (id)dictionaryWithTargetPath:(id)a3;
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

+ (id)shaderModifierPropertyFromDictionary:(id)a3 assetsPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"value"];
  v9 = [v7 objectForKeyedSubscript:@"name"];
  v10 = [v7 objectForKeyedSubscript:@"type"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v6 stringByAppendingPathComponent:v8];
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:0];
    v13 = [v12 standardizedURL];
    v14 = [v13 absoluteString];

    v15 = [a1 shaderModifierPropertyCache];
    v16 = [v15 objectForKey:v14];
    if (!v16)
    {
      v16 = [[AVTStickerShaderModifierProperty alloc] initWithName:v9 type:v10 value:v11 originalValue:v8];
      [v15 setObject:v16 forKey:v14];
    }
  }

  else
  {
    v16 = [[AVTStickerShaderModifierProperty alloc] initWithName:v9 type:v10 value:v8 originalValue:v8];
  }

  return v16;
}

- (AVTStickerShaderModifierProperty)initWithName:(id)a3 type:(id)a4 value:(id)a5 originalValue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = AVTStickerShaderModifierProperty;
  v15 = [(AVTStickerShaderModifierProperty *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a3);
    objc_storeStrong(&v16->_type, a4);
    objc_storeStrong(&v16->_value, a5);
    objc_storeStrong(&v16->_originalValue, a6);
    if ([v12 isEqualToString:@"texture"])
    {
      v17 = [MEMORY[0x1E69DF300] materialPropertyWithContents:v13];
    }

    else if ([v12 isEqualToString:@"float"])
    {
      v18 = MEMORY[0x1E696AD98];
      [v13 floatValue];
      v17 = [v18 numberWithFloat:?];
    }

    else
    {
      v17 = v13;
    }

    effectiveValue = v16->_effectiveValue;
    v16->_effectiveValue = v17;
  }

  return v16;
}

- (id)dictionaryWithTargetPath:(id)a3
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