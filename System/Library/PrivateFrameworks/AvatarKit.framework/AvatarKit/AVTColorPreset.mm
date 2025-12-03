@interface AVTColorPreset
+ (id)_colorPresetsForCategory:(int64_t)category palette:(id)palette;
+ (id)colorPresetWithName:(id)name category:(int64_t)category colorIndex:(unint64_t)index variation:(float)variation;
+ (id)colorPresetsForCategory:(int64_t)category colorIndex:(unint64_t)index;
+ (id)fallbackColorPresetForNilPresetAndCategory:(int64_t)category colorIndex:(unint64_t)index;
- (AVTColorPreset)colorPresetWithVariation:(float)variation;
- (AVTColorPreset)initWithCategory:(int64_t)category description:(id)description;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNaturalLipsColor;
- (UIImage)thumbnail;
- (id)baseColor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)derivedColorNameForPresetCategory:(int64_t)category;
- (id)description;
- (id)gradientLayerWithRangeMin:(float)min max:(float)max withSkinColor:(id)color;
- (id)makeMaterial;
- (id)previewAccentColor;
- (id)previewColor;
- (void)enumerateDerivedColorPresetsUsingBlock:(id)block;
- (void)renderColorIntoCALayer:(id)layer withSkinColor:(id)color;
@end

@implementation AVTColorPreset

+ (id)colorPresetWithName:(id)name category:(int64_t)category colorIndex:(unint64_t)index variation:(float)variation
{
  v27 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  [AVTColorPreset colorPresetsForCategory:category colorIndex:index];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v25 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        name = [v14 name];
        v16 = [name isEqualToString:nameCopy];

        if (v16)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (variation == 0.0)
  {
    v18 = v11;
  }

  else
  {
    *&v17 = variation;
    v18 = [v11 colorPresetWithVariation:v17];
  }

  v19 = v18;

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)_colorPresetsForCategory:(int64_t)category palette:(id)palette
{
  v24 = *MEMORY[0x1E69E9840];
  paletteCopy = palette;
  v6 = AVTPresetCategoryToColorCategoryString(category);
  v7 = [paletteCopy objectForKeyedSubscript:v6];

  if (v7)
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [AVTColorPreset alloc];
          v16 = [(AVTColorPreset *)v15 initWithCategory:category description:v14, v19];
          [array addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  else
  {
    array = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)colorPresetsForCategory:(int64_t)category colorIndex:(unint64_t)index
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AVTColorPreset_colorPresetsForCategory_colorIndex___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (colorPresetsForCategory_colorIndex__onceToken != -1)
  {
    dispatch_once(&colorPresetsForCategory_colorIndex__onceToken, block);
  }

  v6 = colorPresetsForCategory_colorIndex__colorPresets[3 * category + index];

  return v6;
}

void __53__AVTColorPreset_colorPresetsForCategory_colorIndex___block_invoke(uint64_t a1)
{
  v2 = &colorPresetsForCategory_colorIndex__colorPresets;
  v3 = AVTPrecompiledMemojiColorPalettes();
  for (i = 0; i != 3; ++i)
  {
    v5 = v3;
    v12 = v5;
    if (i == 1)
    {
      v7 = @"secondaryColors";
      goto LABEL_6;
    }

    v6 = v5;
    if (i == 2)
    {
      v7 = @"tertiaryColors";
LABEL_6:
      v6 = [v5 objectForKeyedSubscript:v7];
    }

    v8 = 0;
    v9 = v2;
    do
    {
      v10 = [*(a1 + 32) _colorPresetsForCategory:v8 palette:v6];
      v11 = *v9;
      *v9 = v10;
      v9 += 3;

      ++v8;
    }

    while (v8 != 40);

    ++v2;
  }
}

+ (id)fallbackColorPresetForNilPresetAndCategory:(int64_t)category colorIndex:(unint64_t)index
{
  if (index >= 3)
  {
    +[AVTColorPreset fallbackColorPresetForNilPresetAndCategory:colorIndex:];
  }

  if (!index)
  {
    goto LABEL_10;
  }

  if (index != 2)
  {
    if (category <= 0x22 && ((1 << category) & 0x400000090) != 0)
    {
      firstObject = 0;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  firstObject = 0;
  if (category != 4 && category != 34)
  {
LABEL_10:
    v5 = [AVTColorPreset colorPresetsForCategory:category colorIndex:?];
    firstObject = [v5 firstObject];
  }

LABEL_11:

  return firstObject;
}

- (AVTColorPreset)initWithCategory:(int64_t)category description:(id)description
{
  descriptionCopy = description;
  v59.receiver = self;
  v59.super_class = AVTColorPreset;
  v7 = [(AVTColorPreset *)&v59 init];
  if (v7)
  {
    v8 = [descriptionCopy objectForKeyedSubscript:@"name"];
    name = v7->_name;
    v7->_name = v8;

    v10 = [descriptionCopy objectForKeyedSubscript:@"derived"];
    derivedColors = v7->_derivedColors;
    v7->_derivedColors = v10;

    v7->_category = category;
    v12 = [descriptionCopy objectForKeyedSubscript:@"colors"];
    v13 = [descriptionCopy objectForKeyedSubscript:@"variations-min"];
    v14 = [descriptionCopy objectForKeyedSubscript:@"variations-max"];
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __47__AVTColorPreset_initWithCategory_description___block_invoke;
    v55[3] = &unk_1E7F48E90;
    v16 = v15;
    v56 = v16;
    v57 = v13;
    v58 = v14;
    v17 = v14;
    v18 = v13;
    [v12 enumerateKeysAndObjectsUsingBlock:v55];
    propertyColors = v7->_propertyColors;
    v7->_propertyColors = v16;
    v20 = v16;

    v21 = [descriptionCopy objectForKeyedSubscript:@"preview"];
    if (v21)
    {
      v22 = objc_alloc_init(AVTVaryingColor);
      previewColor = v7->_previewColor;
      v7->_previewColor = v22;

      v53 = 0;
      v54 = 0;
      v24 = [v21 objectForKeyedSubscript:@"color"];
      _scanColor(v24, &v54 + 1, &v54, &v53 + 1, &v53);

      v26 = [MEMORY[0x1E69DC888] colorWithRed:*(&v54 + 1) green:*&v54 blue:*(&v53 + 1) alpha:*&v53];
      v27 = v7->_previewColor;
      if (v27)
      {
        objc_setProperty_atomic(v27, v25, v26, 8);
      }

      v28 = [v21 objectForKeyedSubscript:@"variation-min"];
      _scanColor(v28, &v54 + 1, &v54, &v53 + 1, &v53);

      v30 = [MEMORY[0x1E69DC888] colorWithRed:*(&v54 + 1) green:*&v54 blue:*(&v53 + 1) alpha:*&v53];
      v31 = v7->_previewColor;
      if (v31)
      {
        objc_setProperty_atomic(v31, v29, v30, 16);
      }

      v32 = [v21 objectForKeyedSubscript:@"variation-max"];
      _scanColor(v32, &v54 + 1, &v54, &v53 + 1, &v53);

      v34 = [MEMORY[0x1E69DC888] colorWithRed:*(&v54 + 1) green:*&v54 blue:*(&v53 + 1) alpha:*&v53];
      v35 = v7->_previewColor;
      if (v35)
      {
        objc_setProperty_atomic(v35, v33, v34, 24);
      }

      v36 = [v21 objectForKeyedSubscript:@"accent"];
      if (v36)
      {
        v37 = objc_alloc_init(AVTVaryingColor);
        previewAccentColor = v7->_previewAccentColor;
        v7->_previewAccentColor = v37;

        v39 = [v36 objectForKeyedSubscript:@"color"];
        _scanColor(v39, &v54 + 1, &v54, &v53 + 1, &v53);

        v41 = [MEMORY[0x1E69DC888] colorWithRed:*(&v54 + 1) green:*&v54 blue:*(&v53 + 1) alpha:*&v53];
        v42 = v7->_previewAccentColor;
        if (v42)
        {
          objc_setProperty_atomic(v42, v40, v41, 8);
        }

        v43 = [v36 objectForKeyedSubscript:@"variation-min"];
        _scanColor(v43, &v54 + 1, &v54, &v53 + 1, &v53);

        v45 = [MEMORY[0x1E69DC888] colorWithRed:*(&v54 + 1) green:*&v54 blue:*(&v53 + 1) alpha:*&v53];
        v46 = v7->_previewAccentColor;
        if (v46)
        {
          objc_setProperty_atomic(v46, v44, v45, 16);
        }

        v47 = [v36 objectForKeyedSubscript:@"variation-max"];
        _scanColor(v47, &v54 + 1, &v54, &v53 + 1, &v53);

        v49 = [MEMORY[0x1E69DC888] colorWithRed:*(&v54 + 1) green:*&v54 blue:*(&v53 + 1) alpha:*&v53];
        v50 = v7->_previewAccentColor;
        if (v50)
        {
          objc_setProperty_atomic(v50, v48, v49, 24);
        }

        v51 = [v36 objectForKeyedSubscript:@"type"];
        v7->_previewAccentType = [v51 isEqualToString:@"soft"];
      }
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AVTColorPreset);
  objc_storeStrong(&v4->_material, self->_material);
  objc_storeStrong(&v4->_name, self->_name);
  v4->_category = self->_category;
  objc_storeStrong(&v4->_propertyColors, self->_propertyColors);
  objc_storeStrong(&v4->_derivedColors, self->_derivedColors);
  objc_storeStrong(&v4->_previewColor, self->_previewColor);
  objc_storeStrong(&v4->_previewAccentColor, self->_previewAccentColor);
  v4->_previewAccentType = self->_previewAccentType;
  v4->_variation = self->_variation;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v7 = equalCopy;
    name = [v7 name];
    v9 = [name isEqualToString:self->_name];

    if (v9 && [v7 category] == self->_category)
    {
      [v7 variation];
      v6 = v10 == self->_variation;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isNaturalLipsColor
{
  if ([(AVTColorPreset *)self category]!= 10)
  {
    return 0;
  }

  name = [(AVTColorPreset *)self name];
  v4 = [name containsString:@"Natural"];

  return v4;
}

- (UIImage)thumbnail
{
  v15 = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = CGBitmapContextCreate(0, 0x78uLL, 0x78uLL, 8uLL, 0x1E0uLL, DeviceRGB, 1u);
  CFRelease(DeviceRGB);
  v17.size.width = 120.0;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.height = 120.0;
  CGContextAddEllipseInRect(v4, v17);
  CGContextClip(v4);
  previewColor = [(AVTColorPreset *)self previewColor];
  *&v7 = AVTGetColorComponents(previewColor, v6);
  v13 = v7;

  v8 = 1.0;
  if (*(&v13 + 3) != 0.0)
  {
    v8 = *(&v13 + 3);
  }

  CGContextSetRGBFillColor(v4, *&v13, *(&v13 + 1), *(&v13 + 2), v8);
  if (*(&v13 + 3) == 0.0)
  {
    *lengths = xmmword_1BB4F0910;
    CGContextSetLineWidth(v4, 10.0);
    CGContextSetLineDash(v4, 0.0, lengths, 2uLL);
    v18.size.width = 120.0;
    v18.origin.x = 0.0;
    v18.origin.y = 0.0;
    v18.size.height = 120.0;
    CGContextStrokeEllipseInRect(v4, v18);
  }

  else
  {
    v19.size.width = 120.0;
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.height = 120.0;
    CGContextFillRect(v4, v19);
  }

  Image = CGBitmapContextCreateImage(v4);
  CFRelease(v4);
  v10 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image];
  CFRelease(Image);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)baseColor
{
  makeMaterial = [(AVTColorPreset *)self makeMaterial];
  baseColor = [makeMaterial baseColor];

  return baseColor;
}

- (id)previewColor
{
  if (self->_previewColor)
  {
    *&v2 = self->_variation;
    [(AVTVaryingColor *)self->_previewColor colorByApplyingVariation:v2];
  }

  else
  {
    [(AVTColorPreset *)self baseColor];
  }
  v3 = ;

  return v3;
}

- (id)previewAccentColor
{
  previewAccentColor = self->_previewAccentColor;
  if (previewAccentColor)
  {
    *&v3 = self->_variation;
    previewAccentColor = [previewAccentColor colorByApplyingVariation:v3];
    v2 = vars8;
  }

  return previewAccentColor;
}

- (id)makeMaterial
{
  material = self->_material;
  if (!material)
  {
    v4 = objc_alloc_init(AVTMaterial);
    v5 = self->_material;
    self->_material = v4;

    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSDictionary count](self->_propertyColors, "count")}];
    propertyColors = self->_propertyColors;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __30__AVTColorPreset_makeMaterial__block_invoke;
    v13 = &unk_1E7F48EB8;
    selfCopy = self;
    v15 = v6;
    v8 = v6;
    [(NSDictionary *)propertyColors enumerateKeysAndObjectsUsingBlock:&v10];
    [(AVTMaterial *)self->_material setAdditionalPropertyColors:v8, v10, v11, v12, v13, selfCopy];

    material = self->_material;
  }

  return material;
}

void __30__AVTColorPreset_makeMaterial__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v7 = v5;
  if (*(*(a1 + 32) + 64) == 0.0)
  {
    if (v5)
    {
      Property = objc_getProperty(v5, v6, 8, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = Property;
  }

  else
  {
    v9 = [v5 colorByApplyingVariation:?];
  }

  v10 = v9;
  if ([v11 isEqualToString:@"diffuse"])
  {
    [*(*(a1 + 32) + 72) setBaseColor:v10];
  }

  else
  {
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v11];
  }
}

- (void)enumerateDerivedColorPresetsUsingBlock:(id)block
{
  blockCopy = block;
  derivedColors = self->_derivedColors;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__AVTColorPreset_enumerateDerivedColorPresetsUsingBlock___block_invoke;
  v7[3] = &unk_1E7F48EE0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSDictionary *)derivedColors enumerateKeysAndObjectsUsingBlock:v7];
}

void __57__AVTColorPreset_enumerateDerivedColorPresetsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = AVTPresetCategoryFromString(a2);
  LODWORD(v7) = *(*(a1 + 32) + 64);
  v9 = [AVTColorPreset colorPresetWithName:v5 category:v6 variation:v7];

  v8 = v9;
  if (v9)
  {
    (*(*(a1 + 40) + 16))();
    v8 = v9;
  }
}

- (id)derivedColorNameForPresetCategory:(int64_t)category
{
  v4 = AVTPresetCategoryToColorCategoryString(category);
  v5 = [(NSDictionary *)self->_derivedColors objectForKeyedSubscript:v4];

  return v5;
}

- (AVTColorPreset)colorPresetWithVariation:(float)variation
{
  if (self->_variation == variation)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(AVTColorPreset *)self copy];
    selfCopy->_variation = variation;
    material = selfCopy->_material;
    selfCopy->_material = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = self->_name;
  v6 = AVTPresetCategoryToString(self->_category);
  v7 = [v3 stringWithFormat:@"<%@ %p | name:%@ category:%@ variation:%f>", v4, self, name, v6, self->_variation];

  return v7;
}

- (void)renderColorIntoCALayer:(id)layer withSkinColor:(id)color
{
  v42[3] = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  colorCopy = color;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.0];
  if ([(AVTColorPreset *)self isNaturalLipsColor])
  {
    baseColor = [colorCopy baseColor];
    *v10.i64 = AVTGetColorComponents(baseColor, v9);
    v11 = vsubq_f32(xmmword_1BB4F0900, v10);
    v12 = vaddq_f32(v10, v11);
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v38 = vmlaq_f32(v10, 0, v11);
    v39 = vmlaq_f32(v10, v13, v11);
    v14 = [MEMORY[0x1E69DC888] colorWithRed:v12.f32[0] green:v12.f32[1] blue:v12.f32[2] alpha:1.0];
    v15 = [MEMORY[0x1E69DC888] colorWithRed:v38.f32[0] green:v38.f32[1] blue:v38.f32[2] alpha:1.0];
    v16 = [MEMORY[0x1E69DC888] colorWithRed:v39.f32[0] green:v39.f32[1] blue:v39.f32[2] alpha:1.0];
    *&v17 = self->_variation;
    v18 = AVTColorApplyVariation(v16, v14, v15, v17);
    [layerCopy setBackgroundColor:{objc_msgSend(v18, "CGColor")}];

LABEL_16:
    goto LABEL_17;
  }

  previewColor = [(AVTColorPreset *)self previewColor];
  *v21.i64 = AVTGetColorComponents(previewColor, v20);
  v40 = v21;

  v22 = COERCE_DOUBLE(__PAIR64__(v40.u32[1], v40.u32[3]));
  if (v40.f32[3] < 1.0 && [(AVTColorPreset *)self shouldBlendWithSkinColor:COERCE_DOUBLE(__PAIR64__(v40.u32[1]])
  {
    previewColor2 = [colorCopy previewColor];
    *v25.i64 = AVTGetColorComponents(previewColor2, v24);
    v38 = v25;

    v26 = vmlaq_laneq_f32(v38, vsubq_f32(v40, v38), v40, 3);
    previewColor3 = [MEMORY[0x1E69DC888] colorWithRed:v26.f32[0] green:v26.f32[1] blue:v26.f32[2] alpha:1.0];
  }

  else
  {
    previewColor3 = [(AVTColorPreset *)self previewColor];
  }

  v28 = previewColor3;
  cGColor = [previewColor3 CGColor];

  [layerCopy setBackgroundColor:cGColor];
  previewAccentColor = [(AVTColorPreset *)self previewAccentColor];
  cGColor2 = [previewAccentColor CGColor];

  sublayers = [layerCopy sublayers];
  firstObject = [sublayers firstObject];
  baseColor = firstObject;
  if (cGColor2)
  {

    if (!baseColor)
    {
      baseColor = [MEMORY[0x1E6979380] layer];
      [layerCopy bounds];
      [baseColor setFrame:?];
      [layerCopy addSublayer:baseColor];
    }

    previewAccentType = self->_previewAccentType;
    if (previewAccentType == 1)
    {
      v41[0] = cGColor;
      v41[1] = cGColor2;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
      v36 = &unk_1F39D95F8;
    }

    else
    {
      if (previewAccentType)
      {
        goto LABEL_16;
      }

      v42[0] = cGColor2;
      v42[1] = cGColor;
      v42[2] = cGColor2;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
      v36 = &unk_1F39D95E0;
    }

    [baseColor setColors:{v35, *&v38}];

    [baseColor setLocations:v36];
    [baseColor setStartPoint:{0.0, 0.0}];
    [baseColor setEndPoint:{1.0, 1.0}];
    [baseColor setType:*MEMORY[0x1E6979DA0]];
    goto LABEL_16;
  }

  [firstObject removeFromSuperlayer];

LABEL_17:
  [MEMORY[0x1E6979518] commit];

  v37 = *MEMORY[0x1E69E9840];
}

- (id)gradientLayerWithRangeMin:(float)min max:(float)max withSkinColor:(id)color
{
  v30[3] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if ([(AVTColorPreset *)self isNaturalLipsColor])
  {
    baseColor = [colorCopy baseColor];
    *v12.i64 = AVTGetColorComponents(baseColor, v11);
    v13 = vsubq_f32(xmmword_1BB4F0900, v12);
    v14 = vaddq_f32(v12, v13);
    v15.i64[0] = 0x3F0000003F000000;
    v15.i64[1] = 0x3F0000003F000000;
    v27 = vmlaq_f32(v12, v15, v13);
    v28 = vmlaq_f32(v12, 0, v13);
    v16 = [MEMORY[0x1E69DC888] colorWithRed:v14.f32[0] green:v14.f32[1] blue:v14.f32[2] alpha:1.0];
    previewColor = [MEMORY[0x1E69DC888] colorWithRed:v27.f32[0] green:v27.f32[1] blue:v27.f32[2] alpha:1.0];
    previewColor2 = [MEMORY[0x1E69DC888] colorWithRed:v28.f32[0] green:v28.f32[1] blue:v28.f32[2] alpha:1.0];
    layer = [MEMORY[0x1E6979380] layer];
    v30[0] = [v16 CGColor];
    v30[1] = [previewColor CGColor];
    v30[2] = [previewColor2 CGColor];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    [layer setColors:v20];

    [layer setStartPoint:{0.0, 0.5}];
    [layer setEndPoint:{1.0, 0.5}];
  }

  else
  {
    *&v9 = min;
    baseColor = [(AVTColorPreset *)self colorPresetWithVariation:v9];
    *&v21 = max;
    v16 = [(AVTColorPreset *)self colorPresetWithVariation:v21];
    previewColor = [baseColor previewColor];
    previewColor2 = [(AVTColorPreset *)self previewColor];
    previewColor3 = [v16 previewColor];
    layer = [MEMORY[0x1E6979380] layer];
    if (colorCopy && [(AVTColorPreset *)self shouldBlendWithSkinColor])
    {
      previewColor4 = [colorCopy previewColor];
      [layer setBackgroundColor:{objc_msgSend(previewColor4, "CGColor")}];
    }

    v29[0] = [previewColor CGColor];
    v29[1] = [previewColor2 CGColor];
    v29[2] = [previewColor3 CGColor];
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
    [layer setColors:v24];

    [layer setStartPoint:{0.0, 0.5}];
    [layer setEndPoint:{1.0, 0.5}];
  }

  v25 = *MEMORY[0x1E69E9840];

  return layer;
}

void __47__AVTColorPreset_initWithCategory_description___block_invoke(id *a1, void *a2, void *a3)
{
  v48 = a2;
  v5 = a3;
  v6 = objc_alloc_init(AVTVaryingColor);
  [a1[4] setObject:v6 forKeyedSubscript:v48];
  v51 = 0;
  v52 = 0;
  _scanColor(v5, &v52 + 1, &v52, &v51 + 1, &v51);

  v8 = [MEMORY[0x1E69DC888] colorWithRed:*(&v52 + 1) green:*&v52 blue:*(&v51 + 1) alpha:*&v51];
  if (v6)
  {
    objc_setProperty_atomic(v6, v7, v8, 8);
  }

  v9 = [a1[5] objectForKeyedSubscript:v48];
  if (v9)
  {
    OUTLINED_FUNCTION_2_2();
    _scanColor(v9, v12, v13, v14, v15);
    v25 = OUTLINED_FUNCTION_1_4(v16, v17, v18, v19, v20, v21, v22, v23, v47, *&v48, v49, *&v50, *(&v50 + 1));
  }

  else
  {
    v25 = OUTLINED_FUNCTION_3_1(v10, v11, 0.5);
  }

  v27 = [v24 colorWithRed:v25 green:? blue:? alpha:?];
  if (v6)
  {
    objc_setProperty_atomic(v6, v26, v27, 16);
  }

  v28 = [a1[6] objectForKeyedSubscript:v48];
  if (v28)
  {
    OUTLINED_FUNCTION_2_2();
    _scanColor(v28, v31, v32, v33, v34);
    v44 = OUTLINED_FUNCTION_1_4(v35, v36, v37, v38, v39, v40, v41, v42, v47, *&v48, v49, *&v50, *(&v50 + 1));
  }

  else
  {
    v44 = OUTLINED_FUNCTION_3_1(v29, v30, 1.5);
  }

  v46 = [v43 colorWithRed:v44 green:? blue:? alpha:?];
  if (v6)
  {
    objc_setProperty_atomic(v6, v45, v46, 24);
  }
}

@end