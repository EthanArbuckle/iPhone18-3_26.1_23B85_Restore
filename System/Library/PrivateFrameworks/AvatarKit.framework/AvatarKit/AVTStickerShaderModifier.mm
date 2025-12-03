@interface AVTStickerShaderModifier
+ (id)encapsulateShaderData:(id)data;
+ (id)entryPointForModifierName:(id)name;
+ (id)shaderModifierCache;
+ (id)shaderModifierFromDictionary:(id)dictionary assetsPath:(id)path;
- (AVTStickerShaderModifier)initWithEntryPoint:(id)point nodeNames:(id)names data:(id)data properties:(id)properties forceDoubleSided:(BOOL)sided;
- (id)cloneWithProperties:(id)properties;
- (id)description;
- (id)dictionaryWithTargetPath:(id)path;
- (void)applyToAllMaterialsOfNode:(id)node options:(id)options reversionContext:(id)context;
- (void)applyToMatchedMaterialsOfAvatar:(id)avatar inHierarchy:(id)hierarchy options:(id)options reversionContext:(id)context;
- (void)applyToMaterial:(id)material options:(id)options reversionContext:(id)context;
@end

@implementation AVTStickerShaderModifier

+ (id)shaderModifierCache
{
  if (shaderModifierCache_onceToken != -1)
  {
    +[AVTStickerShaderModifier shaderModifierCache];
  }

  v3 = shaderModifierCache_kCache;

  return v3;
}

uint64_t __47__AVTStickerShaderModifier_shaderModifierCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = shaderModifierCache_kCache;
  shaderModifierCache_kCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)shaderModifierFromDictionary:(id)dictionary assetsPath:(id)path
{
  v51 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  pathCopy = path;
  v8 = [dictionaryCopy objectForKey:@"modifier"];
  v43 = [self entryPointForModifierName:v8];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"node"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"geometry"];
  }

  v12 = v11;

  v13 = v12;
  objc_opt_class();
  v45 = v13;
  if (objc_opt_isKindOfClass())
  {
    v45 = [v13 componentsJoinedByString:@"|"];
  }

  v14 = [dictionaryCopy objectForKey:@"forceDoubleSided"];
  v42 = v14;
  if (v14)
  {
    bOOLValue = [v14 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  shaderModifierCache = [self shaderModifierCache];
  v16 = [dictionaryCopy objectForKey:@"file"];
  v17 = [pathCopy stringByAppendingPathComponent:v16];
  v18 = MEMORY[0x1E696AEC0];
  v44 = v17;
  v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
  standardizedURL = [v19 standardizedURL];
  absoluteString = [standardizedURL absoluteString];
  v22 = [v18 stringWithFormat:@"%@.%@.%@", absoluteString, v8, v45];

  v41 = v16;
  if (!v16)
  {
    v24 = 0;
    goto LABEL_28;
  }

  v23 = [shaderModifierCache objectForKey:v22];
  if (v23)
  {
    v40 = 0;
  }

  else
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v44 encoding:4 error:0];
    if (!v40)
    {
      v24 = 0;
      goto LABEL_28;
    }
  }

  v39 = v22;
  v36 = v13;
  v37 = v8;
  array = [MEMORY[0x1E695DF70] array];
  v26 = [dictionaryCopy objectForKey:@"properties"];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v47;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [AVTStickerShaderModifierProperty shaderModifierPropertyFromDictionary:*(*(&v46 + 1) + 8 * i) assetsPath:pathCopy];
        if (v31)
        {
          [array addObject:v31];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v28);
  }

  v32 = v23;
  if (v23)
  {
    v24 = v32;
    v13 = v36;
    v16 = v41;
    if ([array count])
    {
      v24 = [(AVTStickerShaderModifier *)v32 cloneWithProperties:array];
    }
  }

  else
  {
    v13 = v36;
    v24 = [[AVTStickerShaderModifier alloc] initWithEntryPoint:v43 nodeNames:v36 data:v40 properties:array forceDoubleSided:bOOLValue];
    [(AVTStickerShaderModifier *)v24 setDictionary:dictionaryCopy];
    [shaderModifierCache setObject:v24 forKey:v39];
    v16 = v41;
  }

  lastPathComponent = [v16 lastPathComponent];
  v24->_isCropShaderModifier = [lastPathComponent isEqualToString:@"crop_at_worldPosY.metal"];

  v8 = v37;
  v22 = v39;
LABEL_28:

  v34 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)entryPointForModifierName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy isEqualToString:@"fragment"];
  v5 = MEMORY[0x1E69DF3B0];
  if ((v4 & 1) == 0)
  {
    if ([nameCopy isEqualToString:@"surface"])
    {
      v5 = MEMORY[0x1E69DF3C0];
    }

    else if ([nameCopy isEqualToString:@"vertex"])
    {
      v5 = MEMORY[0x1E69DF3C8];
    }

    else if ([nameCopy isEqualToString:@"lightingModel"])
    {
      v5 = MEMORY[0x1E69DF3B8];
    }
  }

  v6 = *v5;
  v7 = v6;

  return v6;
}

+ (id)encapsulateShaderData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  if (([dataCopy containsString:@"// ==== STICKER SHADER MODIFIER START ===="] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@\n%@\n%@\n", @"// ==== STICKER SHADER MODIFIER START ====", dataCopy, @"// ==== STICKER SHADER MODIFIER END ===="];
  }

  return v4;
}

- (AVTStickerShaderModifier)initWithEntryPoint:(id)point nodeNames:(id)names data:(id)data properties:(id)properties forceDoubleSided:(BOOL)sided
{
  pointCopy = point;
  namesCopy = names;
  dataCopy = data;
  propertiesCopy = properties;
  v20.receiver = self;
  v20.super_class = AVTStickerShaderModifier;
  v17 = [(AVTStickerShaderModifier *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_entryPoint, point);
    objc_storeStrong(&v18->_nodeNames, names);
    objc_storeStrong(&v18->_data, data);
    objc_storeStrong(&v18->_properties, properties);
    v18->_forceDoubleSided = sided;
  }

  return v18;
}

- (id)cloneWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = [AVTStickerShaderModifier alloc];
  entryPoint = [(AVTStickerShaderModifier *)self entryPoint];
  nodeNames = [(AVTStickerShaderModifier *)self nodeNames];
  data = [(AVTStickerShaderModifier *)self data];
  v9 = [(AVTStickerShaderModifier *)v5 initWithEntryPoint:entryPoint nodeNames:nodeNames data:data properties:propertiesCopy forceDoubleSided:[(AVTStickerShaderModifier *)self forceDoubleSided]];

  return v9;
}

- (void)applyToMaterial:(id)material options:(id)options reversionContext:(id)context
{
  v32[1] = *MEMORY[0x1E69E9840];
  materialCopy = material;
  optionsCopy = options;
  contextCopy = context;
  if (!self->_isCropShaderModifier || [optionsCopy useLegacyCorrectClippingImplementation])
  {
    shaderModifiers = [materialCopy shaderModifiers];
    v12 = [shaderModifiers objectForKeyedSubscript:self->_entryPoint];
    if (([v12 containsString:self->_data] & 1) == 0)
    {
      v13 = AVTMergeShaderModifiersForEntryPoint(v12, 0, self->_data, 0);
      if (v13)
      {
        [contextCopy saveShaderModifiers:shaderModifiers forMaterial:materialCopy];
        if ([shaderModifiers count])
        {
          v14 = [shaderModifiers mutableCopy];
          [v14 setObject:v13 forKeyedSubscript:self->_entryPoint];
        }

        else
        {
          entryPoint = self->_entryPoint;
          v32[0] = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&entryPoint count:1];
        }

        [materialCopy setShaderModifiers:v14];
      }
    }

    v25 = optionsCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    properties = [(AVTStickerShaderModifier *)self properties];
    v16 = [properties countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(properties);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          name = [v20 name];
          [contextCopy saveCustomMaterialPropertyNamed:name forMaterial:materialCopy];
          effectiveValue = [v20 effectiveValue];
          [materialCopy setValue:effectiveValue forKey:name];
        }

        v17 = [properties countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }

    if (-[AVTStickerShaderModifier forceDoubleSided](self, "forceDoubleSided") && ([materialCopy isDoubleSided] & 1) == 0)
    {
      [contextCopy saveSingleSidedForMaterial:materialCopy];
      [materialCopy setDoubleSided:1];
    }

    optionsCopy = v25;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)applyToAllMaterialsOfNode:(id)node options:(id)options reversionContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  contextCopy = context;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  model = [node model];
  materials = [model materials];

  v12 = [materials countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(materials);
        }

        [(AVTStickerShaderModifier *)self applyToMaterial:*(*(&v17 + 1) + 8 * v15++) options:optionsCopy reversionContext:contextCopy];
      }

      while (v13 != v15);
      v13 = [materials countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)applyToMatchedMaterialsOfAvatar:(id)avatar inHierarchy:(id)hierarchy options:(id)options reversionContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  contextCopy = context;
  v12 = [avatar nodesMatchingStickerPattern:self->_nodeNames inHierarchy:hierarchy options:2 includingDerivedNodes:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(AVTStickerShaderModifier *)self applyToAllMaterialsOfNode:*(*(&v18 + 1) + 8 * v16++) options:optionsCopy reversionContext:contextCopy];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryWithTargetPath:(id)path
{
  dictionary = [(AVTStickerShaderModifier *)self dictionary];
  v4 = [dictionary mutableCopy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  nodeNames = [(AVTStickerShaderModifier *)self nodeNames];
  entryPoint = [(AVTStickerShaderModifier *)self entryPoint];
  v7 = [v3 stringWithFormat:@"<%@ %p | %@ %@>", v4, self, nodeNames, entryPoint];

  return v7;
}

@end