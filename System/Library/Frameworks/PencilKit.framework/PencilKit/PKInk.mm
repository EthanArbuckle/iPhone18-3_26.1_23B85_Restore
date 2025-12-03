@interface PKInk
+ (PKInk)inkWithIdentifier:(id)identifier color:(id)color;
+ (PKInk)inkWithIdentifier:(id)identifier color:(id)color variant:(id)variant;
+ (PKInk)inkWithIdentifier:(id)identifier color:(id)color version:(unint64_t)version variant:(id)variant;
+ (PKInk)inkWithIdentifier:(id)identifier color:(id)color weight:(double)weight;
+ (PKInk)inkWithIdentifier:(id)identifier color:(id)color weight:(double)weight azimuth:(double)azimuth;
+ (PKInk)inkWithIdentifier:(id)identifier properties:(id)properties;
+ (PKInk)inkWithIdentifier:(id)identifier properties:(id)properties inkVersion:(int64_t)version;
+ (PKInk)inkWithType:(id)type color:(id)color weight:(double)weight;
+ (PKInk)inkWithType:(id)type color:(id)color weight:(double)weight azimuth:(double)azimuth;
+ (double)defaultAzimuthForIdentifier:(id)identifier;
+ (double)defaultOpacityForIdentifier:(id)identifier;
+ (double)defaultWeightForIdentifier:(id)identifier;
+ (id)decodeColorFrom:(id)from propertyKey:(id)key inkOpacity:(double)opacity;
+ (id)identifierForCommandType:(unsigned int)type wantsObjectErase:(BOOL)erase;
+ (id)inkFromDictionary:(id)dictionary color:(id)color identifier:(id)identifier;
+ (id)inkFromInk:(id)ink azimuth:(double)azimuth;
+ (id)inkFromInk:(id)ink color:(id)color;
+ (id)inkFromInk:(id)ink color:(id)color hdrColor:(id)hdrColor hdrHeadroom:(double)headroom;
+ (id)inkFromInk:(id)ink weight:(double)weight;
+ (id)sdrInkFromInk:(id)ink;
+ (int64_t)currentInkVersionForInkIdentifier:(id)identifier;
- (BOOL)_isCrayonInk;
- (BOOL)_isCustomInk;
- (BOOL)_isEraserInk;
- (BOOL)_isFountainPenInk;
- (BOOL)_isFountainPenInkV2;
- (BOOL)_isGenerationTool;
- (BOOL)_isHandwritingInk;
- (BOOL)_isLassoInk;
- (BOOL)_isMarkerInk;
- (BOOL)_isMonolineInk;
- (BOOL)_isPenInk;
- (BOOL)_isPencilInk;
- (BOOL)_isReedCalligraphyInk;
- (BOOL)_isStrokeGeneratingInk;
- (BOOL)_isWatercolorInk;
- (BOOL)_shouldSaveHDRAddColor;
- (BOOL)_shouldSaveHDRMultiplyColor;
- (BOOL)_shouldSaveSixChannelAddColor;
- (BOOL)_shouldSaveSixChannelMultiplyColor;
- (BOOL)_supportsCombiningStrokes;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualInk:(id)ink;
- (BOOL)isEqualUnweightedInk:(id)ink;
- (NSData)rawValue;
- (PKContentVersion)requiredContentVersion;
- (PKInk)init;
- (PKInk)initWithArchive:(const void *)archive;
- (PKInk)initWithBehavior:(id)behavior color:(id)color version:(unint64_t)version variant:(id)variant weight:(double)weight azimuth:(double)azimuth;
- (PKInk)initWithCoder:(id)coder;
- (PKInk)initWithIdentifier:(id)identifier color:(id)color hdrColor:(id)hdrColor hdrHeadroom:(double)headroom version:(unint64_t)version variant:(id)variant weight:(double)weight azimuth:(double)self0 behavior:(id)self1;
- (PKInk)initWithIdentifier:(id)identifier color:(id)color version:(unint64_t)version variant:(id)variant;
- (PKInk)initWithIdentifier:(id)identifier color:(id)color version:(unint64_t)version variant:(id)variant weight:(double)weight;
- (PKInk)initWithIdentifier:(id)identifier color:(id)color version:(unint64_t)version variant:(id)variant weight:(double)weight azimuth:(double)azimuth;
- (PKInk)initWithInkType:(PKInkType)type color:(UIColor *)color;
- (PKInk)initWithRawValue:(id)value;
- (PKInk)initWithUncheckedIdentifier:(id)identifier color:(id)color hdrColor:(id)hdrColor hdrHeadroom:(double)headroom version:(unint64_t)version variant:(id)variant weight:(double)weight azimuth:(double)self0;
- (PKInk)initWithV1Archive:(const void *)archive serializationVersion:(unint64_t)version;
- (UIColor)color;
- (float32x2_t)_defaultHDRAddColor;
- (float32x2_t)_defaultHDRMultiplyColor;
- (float32x2_t)_defaultSixChannelAddColor;
- (float32x2_t)_defaultSixChannelMultiplyColor;
- (id).cxx_construct;
- (id)_copyWithOriginalRequiredContentVersion;
- (id)_copyWithVariant:(id)variant;
- (id)_dataInUnknownFields;
- (id)_shadowModel;
- (id)_sixChannelVersion;
- (id)colorForUIAllowHDR:(BOOL)r;
- (id)description;
- (id)dictionaryRepresentation;
- (id)identifierForArchiving;
- (id)properties;
- (id)variantForArchiving;
- (int64_t)_numPaintFramebuffers;
- (int64_t)_requiredContentVersion;
- (int64_t)inkFormatVersion;
- (unint64_t)hash;
- (unint64_t)hashValueForFloat:(double)float;
- (unint64_t)particleRotation;
- (void)_initColor:(id)color hdrColor:(id)hdrColor hdrHeadroom:(double)headroom;
- (void)_setupCustomizedSixChannelColors;
- (void)_setupDefaultSixChannelAddAndMultiplyColors;
- (void)_setupRequiredContentVersion;
- (void)encodeWithCoder:(id)coder;
- (void)saveToArchive:(void *)archive;
- (void)saveToV1Archive:(void *)archive;
- (void)setWeight:(double)weight;
@end

@implementation PKInk

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)_setupDefaultSixChannelAddAndMultiplyColors
{
  [(PKInk *)self _defaultSixChannelAddColor];
  *self->_sixChannelAddColor = v3;
  [(PKInk *)self _defaultSixChannelMultiplyColor];
  *self->_sixChannelMultiplyColor = v4;
  hdrColor = [(PKInk *)self hdrColor];

  if (hdrColor)
  {
    [(PKInk *)self _defaultHDRAddColor];
    *self->_hdrAddColor = v6;
    [(PKInk *)self _defaultHDRMultiplyColor];
    *self->_hdrMultiplyColor = v7;
  }
}

- (float32x2_t)_defaultSixChannelAddColor
{
  v8 = *MEMORY[0x1E69E9840];
  behavior = [self behavior];
  renderingDescriptor = [behavior renderingDescriptor];
  blendMode = [renderingDescriptor blendMode];

  result = 0;
  if (blendMode <= 4 && ((1 << blendMode) & 0x15) != 0)
  {
    cGColor = [self[6] CGColor];
    v7[0] = __const_DKUColorGetVectorFloat3_rgba;
    v7[1] = unk_1C801E8B0;
    DKUColorGetRGBAComponents(cGColor, v7);
    return vcvt_f32_f64(v7[0]);
  }

  return result;
}

- (float32x2_t)_defaultSixChannelMultiplyColor
{
  v8 = *MEMORY[0x1E69E9840];
  behavior = [self behavior];
  renderingDescriptor = [behavior renderingDescriptor];
  blendMode = [renderingDescriptor blendMode];

  if ((blendMode | 2) == 3)
  {
    cGColor = [self[6] CGColor];
    v7[0] = __const_DKUColorGetVectorFloat3_rgba;
    v7[1] = unk_1C801E8B0;
    DKUColorGetRGBAComponents(cGColor, v7);
    return vcvt_f32_f64(v7[0]);
  }

  else
  {
    return 0;
  }
}

- (void)_setupRequiredContentVersion
{
  if ([(PKInk *)self _isFountainPenInk]&& (+[PKContentVersionUtility sharedUtility], v3 = objc_claimAutoreleasedReturnValue(), v4 = [(PKContentVersionUtility *)v3 programLinkedOnOrAfterDawnburstE], v3, v4))
  {
    selfCopy2 = self;
    _requiredContentVersion = 3;
  }

  else
  {
    if (!self)
    {
      return;
    }

    _requiredContentVersion = [(PKInk *)self _requiredContentVersion];
    selfCopy2 = self;
  }

  [(PKInk *)selfCopy2 set_requiredContentVersionOverride:_requiredContentVersion];
}

- (BOOL)_isFountainPenInk
{
  identifier = [(PKInk *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.ink.fountainpen"];

  return v3;
}

- (int64_t)_requiredContentVersion
{
  identifier = [(PKInk *)self identifier];
  if ([identifier isEqualToString:@"com.apple.ink.pen"])
  {
    goto LABEL_8;
  }

  identifier2 = [(PKInk *)self identifier];
  if ([identifier2 isEqualToString:@"com.apple.ink.pencil"])
  {
LABEL_7:

LABEL_8:
    return 1;
  }

  identifier3 = [(PKInk *)self identifier];
  if ([identifier3 isEqualToString:@"com.apple.ink.marker"])
  {
LABEL_6:

    goto LABEL_7;
  }

  identifier4 = [(PKInk *)self identifier];
  if ([identifier4 isEqualToString:@"com.apple.ink.eraser"])
  {

    goto LABEL_6;
  }

  identifier5 = [(PKInk *)self identifier];
  v9 = [identifier5 isEqualToString:@"com.apple.ink.lasso"];

  if (v9)
  {
    return 1;
  }

  identifier6 = [(PKInk *)self identifier];
  if ([identifier6 isEqualToString:@"com.apple.ink.fountainpen"])
  {
    goto LABEL_16;
  }

  identifier7 = [(PKInk *)self identifier];
  if ([identifier7 isEqualToString:@"com.apple.ink.watercolor"])
  {
LABEL_15:

LABEL_16:
    return 2;
  }

  identifier8 = [(PKInk *)self identifier];
  if ([identifier8 isEqualToString:@"com.apple.ink.crayon"])
  {

    goto LABEL_15;
  }

  identifier9 = [(PKInk *)self identifier];
  v14 = [identifier9 isEqualToString:@"com.apple.ink.monoline"];

  if (v14)
  {
    return 2;
  }

  identifier10 = [(PKInk *)self identifier];
  v16 = [identifier10 isEqualToString:@"com.apple.ink.reedcalligraphy"];

  if (v16)
  {
    return 4;
  }

  else
  {
    return 250;
  }
}

- (UIColor)color
{
  hdrColor = [(PKInk *)self hdrColor];
  v4 = hdrColor;
  if (hdrColor)
  {
    sdrColor = hdrColor;
  }

  else
  {
    sdrColor = [(PKInk *)self sdrColor];
  }

  v6 = sdrColor;

  return v6;
}

- (BOOL)_isEraserInk
{
  identifier = [(PKInk *)self identifier];
  if ([identifier isEqualToString:@"com.apple.ink.eraser"])
  {
    v4 = 1;
  }

  else
  {
    identifier2 = [(PKInk *)self identifier];
    v4 = [identifier2 isEqualToString:@"com.apple.ink.objectEraser"];
  }

  return v4;
}

- (BOOL)_isPencilInk
{
  identifier = [(PKInk *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.ink.pencil"];

  return v3;
}

- (BOOL)_isMarkerInk
{
  identifier = [(PKInk *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.ink.marker"];

  return v3;
}

- (BOOL)_isMonolineInk
{
  identifier = [(PKInk *)self identifier];
  v5 = [identifier isEqualToString:@"com.apple.ink.pen"];
  if (v5)
  {
    variant = [(PKInk *)self variant];
    if ([variant isEqualToString:@"fixed-width"])
    {
      v6 = 1;
      goto LABEL_6;
    }
  }

  identifier2 = [(PKInk *)self identifier];
  if (([identifier2 isEqualToString:@"com.apple.ink.monoline"] & 1) == 0)
  {
    identifier3 = [(PKInk *)self identifier];
    v6 = [identifier3 isEqualToString:@"com.apple.ink.micronpen"];

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = 1;
  if (v5)
  {
LABEL_6:
  }

LABEL_7:

  return v6;
}

- (BOOL)_isPenInk
{
  identifier = [(PKInk *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.ink.pen"];

  return v3;
}

- (PKInk)init
{
  [PKInk defaultWeightForIdentifier:@"com.apple.ink.pen"];
  v4 = v3;
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v6 = [(PKInk *)self initWithIdentifier:@"com.apple.ink.pen" color:blackColor version:[PKInk currentInkVersionForInkIdentifier:?], 0, v4];

  return v6;
}

- (id)_sixChannelVersion
{
  v3 = [PKInk alloc];
  identifier = [(PKInk *)self identifier];
  sdrColor = [(PKInk *)self sdrColor];
  hdrColor = [(PKInk *)self hdrColor];
  [(PKInk *)self hdrHeadroom];
  v8 = v7;
  version = [(PKInk *)self version];
  variant = [(PKInk *)self variant];
  [(PKInk *)self weight];
  v12 = v11;
  [(PKInk *)self _azimuth];
  v14 = [(PKInk *)v3 initWithUncheckedIdentifier:identifier color:sdrColor hdrColor:hdrColor hdrHeadroom:version version:variant variant:v8 weight:v12 azimuth:v13];

  [(PKInk *)v14 _setupCustomizedSixChannelColors];
  [(PKInk *)v14 set_weightIsUndefined:[(PKInk *)self _weightIsUndefined]];

  return v14;
}

- (void)_setupCustomizedSixChannelColors
{
  v31 = *MEMORY[0x1E69E9840];
  cGColor = [(UIColor *)self->_sdrColor CGColor];
  v29 = __const_DKUColorGetVectorFloat4_rgba;
  v30 = unk_1C801E8D0;
  DKUColorGetRGBAComponents(cGColor, &v29);
  *v4.f32 = vcvt_f32_f64(v29);
  *&v5 = *&v30;
  v23 = v5;
  v25 = v4;
  v6 = v4;
  v6.i32[2] = v5;
  hdrColor = self->_hdrColor;
  v27 = v6;
  v28 = v6;
  if (hdrColor)
  {
    cGColor2 = [(UIColor *)hdrColor CGColor];
    v29 = __const_DKUColorGetVectorFloat3_rgba;
    v30 = unk_1C801E8B0;
    DKUColorGetRGBAComponents(cGColor2, &v29);
    *v9.f32 = vcvt_f32_f64(v29);
    v10 = *&v30;
    v9.f32[2] = v10;
    v28 = v9;
  }

  v11 = [(PKInk *)self behavior:v23];
  renderingDescriptor = [v11 renderingDescriptor];
  blendMode = [renderingDescriptor blendMode];

  v14.i64[0] = 0;
  v14.i32[2] = 0;
  if (blendMode > 4)
  {
    v15.i64[0] = 0;
    v15.i32[2] = 0;
    v17.i64[0] = 0;
    v17.i32[2] = 0;
    v16.i64[0] = 0;
    v16.i32[2] = 0;
  }

  else if (((1 << blendMode) & 0x15) != 0)
  {
    v16 = v27;
    v15 = v28;
    v17.i64[0] = 0;
    v17.i32[2] = 0;
  }

  else
  {
    v18 = (fminf(*&v26, fminf(*(&v26 + 1), v24)) + -0.9) / 0.1;
    v19 = 0.0;
    if (v18 >= 0.0)
    {
      v19 = v18;
      if (v18 > 1.0)
      {
        v19 = 1.0;
      }
    }

    v20 = v19 * 0.85 + 0.15;
    v21 = v20;
    *&v20 = 1.0 - v20;
    v17 = vmulq_n_f32(v27, *&v20);
    v22 = vmulq_n_f32(v27, v21);
    v15 = vmulq_n_f32(v28, v21);
    v14 = vmulq_n_f32(v28, *&v20);
    v16 = v22;
  }

  v16.i32[3] = 1.0;
  v17.i32[3] = 1.0;
  *self->_sixChannelAddColor = v16;
  *self->_sixChannelMultiplyColor = v17;
  if (self->_hdrColor)
  {
    v15.i32[3] = 1.0;
    v14.i32[3] = 1.0;
    *self->_hdrAddColor = v15;
    *self->_hdrMultiplyColor = v14;
  }
}

- (BOOL)_isLassoInk
{
  identifier = [(PKInk *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.ink.lasso"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"identifier";
  identifier = [(PKInk *)self identifier];
  v8[0] = identifier;
  v7[1] = @"properties";
  properties = [(PKInk *)self properties];
  v8[1] = properties;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)properties
{
  v45 = *MEMORY[0x1E69E9840];
  sdrColor = [(PKInk *)self sdrColor];
  cGColor = [sdrColor CGColor];

  v43 = xmmword_1C801F520;
  v44 = unk_1C801F530;
  if (DKUColorGetRGBAComponents(cGColor, &v43))
  {
    v5 = v43;
    v6 = v44;
    v41[0] = @"PKInkColorProperty";
    v39[0] = @"PKInkRedComponentProperty";
    v40[0] = [MEMORY[0x1E696AD98] numberWithDouble:*&v43];
    v39[1] = @"PKInkGreenComponentProperty";
    v35 = v40[0];
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v5 + 1)];
    v40[1] = v36;
    v39[2] = @"PKInkBlueComponentProperty";
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:*&v6];
    v40[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];
    v42[0] = v8;
    v41[1] = @"PKInkWeightProperty";
    v9 = MEMORY[0x1E696AD98];
    [(PKInk *)self weight];
    v10 = [v9 numberWithDouble:?];
    v42[1] = v10;
    v41[2] = @"PKInkOpacityProperty";
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v6 + 1)];
    v42[2] = v11;
    v41[3] = @"PKInkAzimuthProperty";
    v12 = MEMORY[0x1E696AD98];
    [(PKInk *)self _azimuth];
    v13 = [v12 numberWithDouble:?];
    v42[3] = v13;
    v41[4] = @"PKInkVersionProperty";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKInk version](self, "version")}];
    v42[4] = v14;
    v41[5] = @"PKInkVariantProperty";
    variant = [(PKInk *)self variant];
    v42[5] = variant;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:6];

    if (v16)
    {
      hdrColor = [(PKInk *)self hdrColor];
      v18 = hdrColor == 0;

      if (!v18)
      {
        hdrColor2 = [(PKInk *)self hdrColor];
        v20 = hdrColor2;
        v21 = DKUColorGetRGBAComponents([hdrColor2 CGColor], &v43) == 0;

        if (!v21)
        {
          v22 = v43;
          v23 = *&v44;
          v24 = [v16 mutableCopy];
          v37[0] = @"PKInkRedComponentProperty";
          v25 = [MEMORY[0x1E696AD98] numberWithDouble:*&v22];
          v38[0] = v25;
          v37[1] = @"PKInkGreenComponentProperty";
          v26 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v22 + 1)];
          v38[1] = v26;
          v37[2] = @"PKInkBlueComponentProperty";
          v27 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
          v38[2] = v27;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
          [v24 setObject:v28 forKeyedSubscript:@"PKInkHDRColorProperty"];

          v29 = MEMORY[0x1E696AD98];
          [(PKInk *)self hdrHeadroom];
          v30 = [v29 numberWithDouble:?];
          [v24 setObject:v30 forKeyedSubscript:@"PKInkHDRHeadroomProperty"];

          v31 = [v24 copy];
          v16 = v31;
        }
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v32 = MEMORY[0x1E695E0F8];
  if (v16)
  {
    v32 = v16;
  }

  v33 = v32;

  return v33;
}

- (BOOL)_isHandwritingInk
{
  identifier = [(PKInk *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.ink.handwriting"];

  return v3;
}

- (PKInk)initWithArchive:(const void *)archive
{
  v5 = *(archive + 2);
  if (v5)
  {
    v6 = v5[5];
    v7 = v5[4];
    v8 = v5[3];
    v9 = v5[2];
  }

  else
  {
    v9 = 1.0;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
  }

  RGBA = PK_CGColorMakeRGBA(v6, v7, v8, v9, 0.0);
  if ((*(archive + 112) & 2) != 0)
  {
    v11 = *(archive + 5);
  }

  else
  {
    v11 = 0.0;
  }

  v12 = *(archive + 4);
  if (v12)
  {
    v13 = v11;
    v14 = PK_CGColorMakeRGBA(v12[5], v12[4], v12[3], v12[2], v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(archive + 7);
  if (*(v15 + 23) < 0)
  {
    v15 = *v15;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
  v17 = v16;
  if ((*(archive + 112) & 8) != 0)
  {
    v18 = *(archive + 12);
    if (v18 == 3)
    {
      if ([(__CFString *)v16 isEqualToString:@"com.apple.ink.calligraphy"])
      {
        v19 = @"com.apple.ink.fountainpen";

        v18 = 3;
        v17 = v19;
      }

      else
      {
        v18 = 3;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = @"default";
  v21 = *(archive + 11);
  if (v21)
  {
    if (*(v21 + 23) < 0)
    {
      v21 = *v21;
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];

    v20 = v22;
  }

  v23 = +[PKInkManager defaultInkManager];
  v24 = [v23 supportedInkIdentifierFromIdentifier:v17];

  [PKInk defaultWeightForIdentifier:v24];
  if ((*(archive + 112) & 0x10) != 0)
  {
    v26 = *(archive + 13);
  }

  else
  {
    v26 = v25;
  }

  if (*(archive + 112))
  {
    v27 = *(archive + 1);
  }

  else
  {
    v27 = 0.0;
  }

  v28 = [MEMORY[0x1E69DC888] colorWithCGColor:RGBA];
  if (v14)
  {
    v29 = [MEMORY[0x1E69DC888] colorWithCGColor:v14];
  }

  else
  {
    v29 = 0;
  }

  v30 = [(PKInk *)self initWithUncheckedIdentifier:v24 color:v28 hdrColor:v29 hdrHeadroom:v18 version:v20 variant:v11 weight:v26 azimuth:v27];
  if (v14)
  {
  }

  if ((*(archive + 112) & 0x10) == 0)
  {
    [(PKInk *)v30 set_weightIsUndefined:1];
  }

  v31 = *(archive + 9);
  if (v31)
  {
    v32 = vrev64q_s32(*(v31 + 8));
    [(PKInk *)v30 set_sixChannelAddColor:*vextq_s8(v32, v32, 8uLL).i64];
  }

  v33 = *(archive + 10);
  if (v33)
  {
    v34 = vrev64q_s32(*(v33 + 8));
    [(PKInk *)v30 set_sixChannelMultiplyColor:*vextq_s8(v34, v34, 8uLL).i64];
  }

  v35 = *(archive + 3);
  if (v35)
  {
    v36 = vrev64q_s32(*(v35 + 8));
    [(PKInk *)v30 set_hdrAddColor:*vextq_s8(v36, v36, 8uLL).i64];
  }

  v37 = *(archive + 6);
  if (v37)
  {
    v38 = vrev64q_s32(*(v37 + 8));
    [(PKInk *)v30 set_hdrMultiplyColor:*vextq_s8(v38, v38, 8uLL).i64];
  }

  if ((*(archive + 112) & 4) == 0 && v30)
  {
    [(PKInk *)v30 set_requiredContentVersionOverride:[(PKInk *)v30 _requiredContentVersion]];
  }

  v40 = *(archive + 15);
  v39 = *(archive + 16);
  if (v39)
  {
    atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = v30->_unknownFields.__cntrl_;
  v30->_unknownFields.__ptr_ = v40;
  v30->_unknownFields.__cntrl_ = v39;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  return v30;
}

- (void)saveToArchive:(void *)archive
{
  v75 = *MEMORY[0x1E69E9840];
  sdrColor = [(PKInk *)self sdrColor];
  cGColor = [sdrColor CGColor];

  v73 = xmmword_1C801CAE0;
  *v74 = unk_1C801CAF0;
  if (DKUColorGetRGBAComponents(cGColor, &v73))
  {
    drawing::Ink::makeColor(archive);
    v7 = *(archive + 2);
    v8 = *(&v73 + 1);
    v9 = *&v73;
    *(v7 + 20) = v9;
    *(v7 + 24) |= 8u;
    v10 = *(archive + 2);
    v11 = v8;
    *(v10 + 24) |= 4u;
    *(v10 + 16) = v11;
    v12 = *(archive + 2);
    v13 = v74[0];
    *(v12 + 24) |= 2u;
    *(v12 + 12) = v13;
    v14 = *(archive + 2);
    Alpha = CGColorGetAlpha(cGColor);
    *(v14 + 24) |= 1u;
    *(v14 + 8) = Alpha;
  }

  hdrColor = [(PKInk *)self hdrColor];
  v17 = hdrColor;
  cGColor2 = [hdrColor CGColor];

  if (cGColor2 && DKUColorGetRGBAComponents(cGColor2, &v73))
  {
    drawing::Ink::makeHdrColor(archive);
    v19 = *(archive + 4);
    v20 = *(&v73 + 1);
    v21 = *&v73;
    *(v19 + 20) = v21;
    *(v19 + 24) |= 8u;
    v22 = *(archive + 4);
    v23 = v20;
    *(v22 + 24) |= 4u;
    *(v22 + 16) = v23;
    v24 = *(archive + 4);
    v25 = v74[0];
    *(v24 + 24) |= 2u;
    *(v24 + 12) = v25;
    v26 = *(archive + 4);
    v27 = CGColorGetAlpha(cGColor2);
    *(v26 + 24) |= 1u;
    *(v26 + 8) = v27;
  }

  [(PKInk *)self hdrHeadroom];
  if (v28 > 0.0)
  {
    *(archive + 112) |= 2u;
    *(archive + 5) = v28;
  }

  identifierForArchiving = [(PKInk *)self identifierForArchiving];
  v30 = identifierForArchiving;
  std::string::basic_string[abi:ne200100]<0>(&v71, [identifierForArchiving UTF8String]);
  v31 = *(archive + 7);
  if (!v31)
  {
    operator new();
  }

  if (*(v31 + 23) < 0)
  {
    operator delete(*v31);
  }

  v32 = v71;
  *(v31 + 16) = v72;
  *v31 = v32;
  HIBYTE(v72) = 0;
  LOBYTE(v71) = 0;

  version = [(PKInk *)self version];
  *(archive + 112) |= 8u;
  *(archive + 12) = version;
  variantForArchiving = [(PKInk *)self variantForArchiving];
  v35 = variantForArchiving == 0;

  if (!v35)
  {
    variantForArchiving2 = [(PKInk *)self variantForArchiving];
    v37 = variantForArchiving2;
    std::string::basic_string[abi:ne200100]<0>(&v71, [variantForArchiving2 UTF8String]);
    v38 = *(archive + 11);
    if (!v38)
    {
      operator new();
    }

    if (*(v38 + 23) < 0)
    {
      operator delete(*v38);
    }

    v39 = v71;
    *(v38 + 16) = v72;
    *v38 = v39;
    HIBYTE(v72) = 0;
    LOBYTE(v71) = 0;
  }

  if (![(PKInk *)self _weightIsUndefined])
  {
    [(PKInk *)self _weight];
    *(archive + 112) |= 0x10u;
    *(archive + 13) = v40;
  }

  [(PKInk *)self _azimuth];
  if (v41 != 0.0)
  {
    [(PKInk *)self _azimuth];
    *(archive + 112) |= 1u;
    *(archive + 1) = v42;
  }

  if ([(PKInk *)self _shouldSaveSixChannelAddColor])
  {
    [(PKInk *)self _sixChannelAddColor];
    v67 = v43;
    drawing::Ink::makeSixChannelAddColor(archive);
    v44 = *(archive + 9);
    *(v44 + 24) |= 8u;
    *(v44 + 20) = v67;
    v45 = *(archive + 9);
    *(v45 + 24) |= 4u;
    *(v45 + 16) = DWORD1(v67);
    v46 = *(archive + 9);
    *(v46 + 24) |= 2u;
    *(v46 + 12) = DWORD2(v67);
    v47 = *(archive + 9);
    *(v47 + 24) |= 1u;
    *(v47 + 8) = HIDWORD(v67);
  }

  if ([(PKInk *)self _shouldSaveSixChannelMultiplyColor])
  {
    [(PKInk *)self _sixChannelMultiplyColor];
    v68 = v48;
    drawing::Ink::makeSixChannelMultiplyColor(archive);
    v49 = *(archive + 10);
    *(v49 + 24) |= 8u;
    *(v49 + 20) = v68;
    v50 = *(archive + 10);
    *(v50 + 24) |= 4u;
    *(v50 + 16) = DWORD1(v68);
    v51 = *(archive + 10);
    *(v51 + 24) |= 2u;
    *(v51 + 12) = DWORD2(v68);
    v52 = *(archive + 10);
    *(v52 + 24) |= 1u;
    *(v52 + 8) = HIDWORD(v68);
  }

  if ([(PKInk *)self _shouldSaveHDRAddColor])
  {
    [(PKInk *)self _hdrAddColor];
    v69 = v53;
    drawing::Ink::makeHdrAddColor(archive);
    v54 = *(archive + 3);
    *(v54 + 24) |= 8u;
    *(v54 + 20) = v69;
    v55 = *(archive + 3);
    *(v55 + 24) |= 4u;
    *(v55 + 16) = DWORD1(v69);
    v56 = *(archive + 3);
    *(v56 + 24) |= 2u;
    *(v56 + 12) = DWORD2(v69);
    v57 = *(archive + 3);
    *(v57 + 24) |= 1u;
    *(v57 + 8) = HIDWORD(v69);
  }

  if ([(PKInk *)self _shouldSaveHDRMultiplyColor])
  {
    [(PKInk *)self _hdrMultiplyColor];
    v70 = v58;
    drawing::Ink::makeHdrMultiplyColor(archive);
    v59 = *(archive + 6);
    *(v59 + 24) |= 8u;
    *(v59 + 20) = v70;
    v60 = *(archive + 6);
    *(v60 + 24) |= 4u;
    *(v60 + 16) = DWORD1(v70);
    v61 = *(archive + 6);
    *(v61 + 24) |= 2u;
    *(v61 + 12) = DWORD2(v70);
    v62 = *(archive + 6);
    *(v62 + 24) |= 1u;
    *(v62 + 8) = HIDWORD(v70);
  }

  if ([(PKInk *)self _shouldSaveRequiredContentVersionOverride])
  {
    _requiredContentVersionOverride = [(PKInk *)self _requiredContentVersionOverride];
    *(archive + 112) |= 4u;
    *(archive + 8) = _requiredContentVersionOverride;
  }

  ptr = self->_unknownFields.__ptr_;
  cntrl = self->_unknownFields.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v66 = *(archive + 16);
  *(archive + 15) = ptr;
  *(archive + 16) = cntrl;
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }
}

- (PKInk)initWithV1Archive:(const void *)archive serializationVersion:(unint64_t)version
{
  v6 = *(archive + 1);
  if (v6)
  {
    v7 = v6[5];
    v8 = v6[4];
    v9 = v6[3];
    v10 = v6[2];
  }

  else
  {
    v10 = 1.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  RGBA = PK_CGColorMakeRGBA(v7, v8, v9, v10, 0.0);
  v12 = *(archive + 2);
  if (*(v12 + 23) < 0)
  {
    v12 = *v12;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
  if ((*(archive + 32) & 1) == 0)
  {
    v14 = @"default";
    v15 = v14;
LABEL_11:
    v18 = v15;

    v16 = 0;
    v14 = v18;
    goto LABEL_12;
  }

  v16 = *(archive + 3);
  v17 = @"default";
  v14 = v17;
  if ((v16 | 2) == 2)
  {
    v15 = @"thick";
    if (v16 != 2)
    {
      v15 = v17;
    }

    goto LABEL_11;
  }

LABEL_12:
  v19 = [MEMORY[0x1E69DC888] colorWithCGColor:RGBA];
  v20 = [(PKInk *)self initWithIdentifier:v13 color:v19 version:v16 variant:v14];

  return v20;
}

- (void)saveToV1Archive:(void *)archive
{
  v25 = *MEMORY[0x1E69E9840];
  sdrColor = [(PKInk *)self sdrColor];
  cGColor = [sdrColor CGColor];

  v23 = xmmword_1C801CAE0;
  *v24 = unk_1C801CAF0;
  if (DKUColorGetRGBAComponents(cGColor, &v23))
  {
    drawingV1::Ink::makeColor(archive);
    v7 = *(archive + 1);
    v8 = *(&v23 + 1);
    v9 = *&v23;
    *(v7 + 20) = v9;
    *(v7 + 24) |= 8u;
    v10 = *(archive + 1);
    v11 = v8;
    *(v10 + 24) |= 4u;
    *(v10 + 16) = v11;
    v12 = *(archive + 1);
    v13 = v24[0];
    *(v12 + 24) |= 2u;
    *(v12 + 12) = v13;
    v14 = *(archive + 1);
    Alpha = CGColorGetAlpha(cGColor);
    *(v14 + 24) |= 1u;
    *(v14 + 8) = Alpha;
  }

  identifier = [(PKInk *)self identifier];
  v17 = identifier;
  std::string::basic_string[abi:ne200100]<0>(&v21, [identifier UTF8String]);
  v18 = *(archive + 2);
  if (!v18)
  {
    operator new();
  }

  if (*(v18 + 23) < 0)
  {
    operator delete(*v18);
  }

  v19 = v21;
  *(v18 + 16) = v22;
  *v18 = v19;
  HIBYTE(v22) = 0;
  LOBYTE(v21) = 0;

  version = [(PKInk *)self version];
  *(archive + 32) |= 1u;
  *(archive + 3) = version;
}

- (PKInk)initWithRawValue:(id)value
{
  valueCopy = value;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v9[0] = &unk_1F4769FC0;
  memset(&v9[2], 0, 24);
  v9[6] = 0;
  v9[7] = 0;
  memset(&v9[9], 0, 24);
  bytes = [valueCopy bytes];
  [valueCopy length];
  PB::Reader::Reader(v8, bytes);
  if (drawing::Ink::readFrom(v9, v8))
  {
    self = [(PKInk *)self initWithArchive:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  drawing::Ink::~Ink(v9);

  return selfCopy;
}

- (NSData)rawValue
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v6[0] = &unk_1F4769FC0;
  memset(&v6[2], 0, 24);
  v6[6] = 0;
  v6[7] = 0;
  memset(&v6[9], 0, 24);
  [(PKInk *)self saveToArchive:v6];
  PB::Writer::Writer(&v4);
  drawing::Ink::writeTo(v6, &v4);
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:v4 - v5];
  PB::Writer::~Writer(&v4);
  drawing::Ink::~Ink(v6);

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(PKInk *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"representation"];
}

- (PKInk)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:3];
  v7 = [v4 setWithArray:{v6, v14, v15}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"representation"];

  if (v8)
  {
    v9 = [v8 objectForKey:@"identifier"];
    v10 = [v8 objectForKey:@"properties"];
    v11 = [PKInk inkWithIdentifier:v9 properties:v10];

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (PKInk)inkWithType:(id)type color:(id)color weight:(double)weight
{
  v5 = [PKInk inkWithType:type color:color weight:weight azimuth:0.0];

  return v5;
}

+ (PKInk)inkWithType:(id)type color:(id)color weight:(double)weight azimuth:(double)azimuth
{
  colorCopy = color;
  v10 = [PKInk identifierForInkType:type];
  v11 = [PKInk inkWithIdentifier:v10 color:colorCopy weight:weight azimuth:azimuth];

  return v11;
}

+ (PKInk)inkWithIdentifier:(id)identifier color:(id)color weight:(double)weight
{
  identifierCopy = identifier;
  colorCopy = color;
  v9 = [[PKInk alloc] initWithIdentifier:identifierCopy color:colorCopy version:[PKInk currentInkVersionForInkIdentifier:?]azimuth:0, weight, 0.0];

  return v9;
}

+ (PKInk)inkWithIdentifier:(id)identifier color:(id)color weight:(double)weight azimuth:(double)azimuth
{
  identifierCopy = identifier;
  colorCopy = color;
  azimuth = [[PKInk alloc] initWithIdentifier:identifierCopy color:colorCopy version:[PKInk currentInkVersionForInkIdentifier:?]azimuth:0, weight, azimuth];

  return azimuth;
}

+ (PKInk)inkWithIdentifier:(id)identifier properties:(id)properties
{
  v4 = [self inkWithIdentifier:identifier properties:properties inkVersion:-1];

  return v4;
}

+ (id)decodeColorFrom:(id)from propertyKey:(id)key inkOpacity:(double)opacity
{
  v21 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  keyCopy = key;
  v9 = [fromCopy objectForKeyedSubscript:keyCopy];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v16 = xmmword_1E82DC958;
    v17 = @"PKInkBlueComponentProperty";
    do
    {
      v11 = [v9 objectForKeyedSubscript:{*(&v16 + v10), v16, v17}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v11 doubleValue];
        *(&v18 + v10) = v12;
      }

      v10 += 8;
    }

    while (v10 != 24);
    v13 = [MEMORY[0x1E69DC888] colorWithRed:v18 green:v19 blue:v20 alpha:opacity];
    for (i = 16; i != -8; i -= 8)
    {
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (PKInk)inkWithIdentifier:(id)identifier properties:(id)properties inkVersion:(int64_t)version
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  if (version < 0)
  {
    version = [self currentInkVersionForInkIdentifier:identifierCopy];
  }

  v11 = [propertiesCopy objectForKeyedSubscript:@"PKInkWeightProperty"];
  if (v11 && ([propertiesCopy objectForKeyedSubscript:@"PKInkWeightProperty"], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [propertiesCopy objectForKeyedSubscript:@"PKInkWeightProperty"];
    [v12 floatValue];
    v14 = v13;
  }

  else
  {
    [PKInk defaultWeightForIdentifier:identifierCopy];
    v14 = v15;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  if ([identifierCopy isEqualToString:@"com.apple.ink.eraser"])
  {
    v16 = [propertiesCopy objectForKeyedSubscript:@"PKInkVersionProperty"];
    if (v16)
    {
    }

    else if (fabs(v14 + -1.0) < 0.00999999978)
    {
      [self defaultWeightForIdentifier:identifierCopy];
      v14 = v17;
    }
  }

  v18 = [propertiesCopy objectForKeyedSubscript:@"PKInkAzimuthProperty"];
  if (v18)
  {
    v5 = [propertiesCopy objectForKeyedSubscript:@"PKInkAzimuthProperty"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [propertiesCopy objectForKeyedSubscript:@"PKInkAzimuthProperty"];
      [v19 floatValue];
      v21 = v20;

LABEL_17:
      goto LABEL_18;
    }
  }

  [PKInk defaultAzimuthForIdentifier:identifierCopy];
  v21 = v22;
  if (v18)
  {
    goto LABEL_17;
  }

LABEL_18:

  v23 = [propertiesCopy objectForKeyedSubscript:@"PKInkOpacityProperty"];
  if (v23 && ([propertiesCopy objectForKeyedSubscript:@"PKInkOpacityProperty"], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = [propertiesCopy objectForKeyedSubscript:@"PKInkOpacityProperty"];
    [v24 floatValue];
    v26 = v25;
  }

  else
  {
    [PKInk defaultOpacityForIdentifier:identifierCopy];
    v26 = v27;
    if (!v23)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  v28 = [self decodeColorFrom:propertiesCopy propertyKey:@"PKInkColorProperty" inkOpacity:v26];
  if (!v28)
  {
    v28 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:v26];
  }

  v29 = [self decodeColorFrom:propertiesCopy propertyKey:@"PKInkHDRColorProperty" inkOpacity:v26];
  v30 = [propertiesCopy objectForKeyedSubscript:@"PKInkHDRHeadroomProperty"];
  v31 = 0.0;
  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v30 doubleValue];
      v31 = v32;
    }
  }

  v33 = [propertiesCopy objectForKeyedSubscript:@"PKInkVariantProperty"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v33 = 0;
  }

  v34 = [[PKInk alloc] initWithUncheckedIdentifier:identifierCopy color:v28 hdrColor:v29 hdrHeadroom:version version:v33 variant:v31 weight:v14 azimuth:v21];

  return v34;
}

- (PKInk)initWithInkType:(PKInkType)type color:(UIColor *)color
{
  v6 = color;
  v7 = [PKInk identifierForInkType:type];
  v8 = [(PKInk *)self initWithIdentifier:v7 color:v6 version:[PKInk currentInkVersionForInkIdentifier:?], 0, 0.0];

  return v8;
}

+ (int64_t)currentInkVersionForInkIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.ink.eraser"])
  {
    v4 = 4;
  }

  else if ([identifierCopy isEqualToString:@"com.apple.ink.objectEraser"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (id)_copyWithVariant:(id)variant
{
  variantCopy = variant;
  v5 = objc_alloc(objc_opt_class());
  identifier = [(PKInk *)self identifier];
  sdrColor = [(PKInk *)self sdrColor];
  hdrColor = [(PKInk *)self hdrColor];
  [(PKInk *)self hdrHeadroom];
  v10 = v9;
  version = [(PKInk *)self version];
  [(PKInk *)self weight];
  v13 = v12;
  [(PKInk *)self _azimuth];
  v15 = [v5 initWithUncheckedIdentifier:identifier color:sdrColor hdrColor:hdrColor hdrHeadroom:version version:variantCopy variant:v10 weight:v13 azimuth:v14];

  [v15 set_weightIsUndefined:{-[PKInk _weightIsUndefined](self, "_weightIsUndefined")}];
  return v15;
}

- (id)_copyWithOriginalRequiredContentVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedInkWithOriginalRequiredContentVersion = selfCopy->_cachedInkWithOriginalRequiredContentVersion;
  if (!cachedInkWithOriginalRequiredContentVersion)
  {
    v4 = objc_alloc(objc_opt_class());
    identifier = [(PKInk *)selfCopy identifier];
    sdrColor = [(PKInk *)selfCopy sdrColor];
    hdrColor = [(PKInk *)selfCopy hdrColor];
    [(PKInk *)selfCopy hdrHeadroom];
    v9 = v8;
    version = [(PKInk *)selfCopy version];
    variant = [(PKInk *)selfCopy variant];
    [(PKInk *)selfCopy weight];
    v13 = v12;
    [(PKInk *)selfCopy _azimuth];
    v15 = [v4 initWithUncheckedIdentifier:identifier color:sdrColor hdrColor:hdrColor hdrHeadroom:version version:variant variant:v9 weight:v13 azimuth:v14];

    if (v15)
    {
      [(PKInk *)v15 set_requiredContentVersionOverride:[(PKInk *)v15 _requiredContentVersion]];
    }

    [(PKInk *)v15 set_weightIsUndefined:[(PKInk *)selfCopy _weightIsUndefined]];
    v16 = selfCopy->_cachedInkWithOriginalRequiredContentVersion;
    selfCopy->_cachedInkWithOriginalRequiredContentVersion = v15;

    cachedInkWithOriginalRequiredContentVersion = selfCopy->_cachedInkWithOriginalRequiredContentVersion;
  }

  v17 = cachedInkWithOriginalRequiredContentVersion;
  objc_sync_exit(selfCopy);

  return v17;
}

- (BOOL)_isFountainPenInkV2
{
  _isFountainPenInk = [(PKInk *)self _isFountainPenInk];
  if (_isFountainPenInk)
  {
    LOBYTE(_isFountainPenInk) = [(PKInk *)self requiredContentVersion]> PKContentVersion2;
  }

  return _isFountainPenInk;
}

- (BOOL)_isWatercolorInk
{
  identifier = [(PKInk *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.ink.watercolor"];

  return v3;
}

- (BOOL)_isCrayonInk
{
  identifier = [(PKInk *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.ink.crayon"];

  return v3;
}

- (BOOL)_isReedCalligraphyInk
{
  identifier = [(PKInk *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.ink.reedcalligraphy"];

  return v3;
}

- (BOOL)_isGenerationTool
{
  identifier = [(PKInk *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.ink.generationtool"];

  return v3;
}

- (BOOL)_isCustomInk
{
  identifier = [(PKInk *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.ink.custom"];

  return v3;
}

- (int64_t)inkFormatVersion
{
  identifier = [(PKInk *)self identifier];
  if ([identifier isEqualToString:@"com.apple.ink.pen"])
  {
    goto LABEL_8;
  }

  identifier2 = [(PKInk *)self identifier];
  if ([identifier2 isEqualToString:@"com.apple.ink.pencil"])
  {
LABEL_7:

LABEL_8:
    return 0;
  }

  identifier3 = [(PKInk *)self identifier];
  if ([identifier3 isEqualToString:@"com.apple.ink.marker"])
  {
LABEL_6:

    goto LABEL_7;
  }

  identifier4 = [(PKInk *)self identifier];
  if ([identifier4 isEqualToString:@"com.apple.ink.eraser"])
  {

    goto LABEL_6;
  }

  identifier5 = [(PKInk *)self identifier];
  v9 = [identifier5 isEqualToString:@"com.apple.ink.lasso"];

  if (v9)
  {
    return 0;
  }

  identifier6 = [(PKInk *)self identifier];
  if ([identifier6 isEqualToString:@"com.apple.ink.fountainpen"])
  {
    goto LABEL_14;
  }

  identifier7 = [(PKInk *)self identifier];
  if ([identifier7 isEqualToString:@"com.apple.ink.watercolor"])
  {

LABEL_14:
    return 1;
  }

  identifier8 = [(PKInk *)self identifier];
  v13 = [identifier8 isEqualToString:@"com.apple.ink.monoline"];

  if (v13)
  {
    return 1;
  }

  identifier9 = [(PKInk *)self identifier];
  v15 = [identifier9 isEqualToString:@"com.apple.ink.crayon"];

  if (v15)
  {
    return 2;
  }

  identifier10 = [(PKInk *)self identifier];
  v17 = [identifier10 isEqualToString:@"com.apple.ink.reedcalligraphy"];

  if (v17)
  {
    return 4;
  }

  else
  {
    return 250;
  }
}

- (PKContentVersion)requiredContentVersion
{
  _requiredContentVersionOverride = [(PKInk *)self _requiredContentVersionOverride];
  result = [(PKInk *)self _requiredContentVersion];
  if (_requiredContentVersionOverride > result)
  {
    return _requiredContentVersionOverride;
  }

  return result;
}

- (id)identifierForArchiving
{
  identifier = [(PKInk *)self identifier];
  v4 = [identifier isEqualToString:@"com.apple.ink.monoline"];

  if (v4)
  {
    identifier2 = @"com.apple.ink.pen";
  }

  else
  {
    identifier2 = [(PKInk *)self identifier];
  }

  return identifier2;
}

- (id)variantForArchiving
{
  identifier = [(PKInk *)self identifier];
  v4 = [identifier isEqualToString:@"com.apple.ink.monoline"];

  if (v4)
  {
    variant2 = @"fixed-width";
  }

  else
  {
    variant = [(PKInk *)self variant];
    v7 = [variant isEqualToString:@"default"];

    if (v7)
    {
      variant2 = 0;
    }

    else
    {
      variant2 = [(PKInk *)self variant];
    }
  }

  return variant2;
}

- (BOOL)_supportsCombiningStrokes
{
  behavior = [(PKInk *)self behavior];
  supportsCombiningStrokes = [behavior supportsCombiningStrokes];

  return supportsCombiningStrokes;
}

- (void)_initColor:(id)color hdrColor:(id)hdrColor hdrHeadroom:(double)headroom
{
  v27 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  hdrColorCopy = hdrColor;
  v10 = hdrColorCopy;
  if (colorCopy && !hdrColorCopy)
  {
    v11 = DKUHeadroomFromColor([colorCopy CGColor]);
    if (v11 <= 1.0)
    {
      v10 = 0;
      v12 = 0;
      goto LABEL_14;
    }

    headroom = v11;
    v10 = colorCopy;
    colorCopy = 0;
  }

  v12 = v10 != 0;
  if (v10 && !colorCopy)
  {
    colorCopy = [MEMORY[0x1E69DC888] colorWithCGColor:{DKUSDRColorFromColor(objc_msgSend(v10, "CGColor"))}];
  }

  if (colorCopy)
  {
LABEL_14:
    ConvertedToSRGB = DKUCGColorCreateConvertedToSRGB([colorCopy CGColor]);
    v18 = [MEMORY[0x1E69DC888] colorWithCGColor:ConvertedToSRGB];
    sdrColor = self->_sdrColor;
    self->_sdrColor = v18;

    CGColorRelease(ConvertedToSRGB);
    v16 = v10;
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v13 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf) = 0;
    _os_log_fault_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_FAULT, "Ink must not be initialized with a nil color", &buf, 2u);
  }

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v15 = self->_sdrColor;
  self->_sdrColor = blackColor;

  colorCopy = 0;
  v16 = 0;
  if (v10)
  {
LABEL_15:
    v20 = v10;
    DKUColorGetRGBAComponents([v10 CGColor], &buf);
    DKUExtendedDynamicRangeRGBColorSpace();
    v21 = CGColorCreateWithContentHeadroom();
    if (v21)
    {
      v22 = [MEMORY[0x1E69DC888] colorWithCGColor:v21];
      hdrColor = self->_hdrColor;
      self->_hdrColor = v22;

      self->_hdrHeadroom = headroom;
      CGColorRelease(v21);
    }

    else
    {
      v24 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *v25 = 0;
        _os_log_fault_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_FAULT, "Unable to convert to extended range color space.", v25, 2u);
      }
    }

    v16 = v10;
  }

LABEL_21:
}

+ (PKInk)inkWithIdentifier:(id)identifier color:(id)color
{
  identifierCopy = identifier;
  colorCopy = color;
  [PKInk defaultWeightForIdentifier:identifierCopy];
  v8 = [[PKInk alloc] initWithIdentifier:identifierCopy color:colorCopy version:[PKInk currentInkVersionForInkIdentifier:?], 0, v7];

  return v8;
}

+ (PKInk)inkWithIdentifier:(id)identifier color:(id)color version:(unint64_t)version variant:(id)variant
{
  identifierCopy = identifier;
  colorCopy = color;
  variantCopy = variant;
  [PKInk defaultWeightForIdentifier:identifierCopy];
  v13 = [[PKInk alloc] initWithIdentifier:identifierCopy color:colorCopy version:version variant:variantCopy weight:v12];

  return v13;
}

+ (PKInk)inkWithIdentifier:(id)identifier color:(id)color variant:(id)variant
{
  identifierCopy = identifier;
  colorCopy = color;
  [PKInk defaultWeightForIdentifier:identifierCopy];
  v9 = [[PKInk alloc] initWithIdentifier:identifierCopy color:colorCopy version:1 variant:0 weight:v8];

  return v9;
}

- (PKInk)initWithIdentifier:(id)identifier color:(id)color version:(unint64_t)version variant:(id)variant
{
  identifierCopy = identifier;
  colorCopy = color;
  variantCopy = variant;
  [PKInk defaultWeightForIdentifier:identifierCopy];
  v13 = [(PKInk *)self initWithIdentifier:identifierCopy color:colorCopy version:version variant:variantCopy weight:?];

  return v13;
}

- (PKInk)initWithIdentifier:(id)identifier color:(id)color version:(unint64_t)version variant:(id)variant weight:(double)weight
{
  identifierCopy = identifier;
  colorCopy = color;
  variantCopy = variant;
  v15 = +[PKInkManager defaultInkManager];
  v16 = [v15 supportedInkIdentifierFromIdentifier:identifierCopy];

  v17 = [(PKInk *)self initWithUncheckedIdentifier:v16 color:colorCopy version:version variant:variantCopy weight:weight];
  return v17;
}

- (PKInk)initWithIdentifier:(id)identifier color:(id)color version:(unint64_t)version variant:(id)variant weight:(double)weight azimuth:(double)azimuth
{
  identifierCopy = identifier;
  colorCopy = color;
  variantCopy = variant;
  v17 = +[PKInkManager defaultInkManager];
  v18 = [v17 supportedInkIdentifierFromIdentifier:identifierCopy];

  v19 = [(PKInk *)self initWithUncheckedIdentifier:v18 color:colorCopy hdrColor:0 hdrHeadroom:version version:variantCopy variant:0.0 weight:weight azimuth:azimuth];
  return v19;
}

- (PKInk)initWithUncheckedIdentifier:(id)identifier color:(id)color hdrColor:(id)hdrColor hdrHeadroom:(double)headroom version:(unint64_t)version variant:(id)variant weight:(double)weight azimuth:(double)self0
{
  identifierCopy = identifier;
  colorCopy = color;
  hdrColorCopy = hdrColor;
  variantCopy = variant;
  v33.receiver = self;
  v33.super_class = PKInk;
  v23 = [(PKInk *)&v33 init];
  v24 = v23;
  v25 = v23;
  if (v23)
  {
    [(PKInk *)v23 _initColor:colorCopy hdrColor:hdrColorCopy hdrHeadroom:headroom];
    objc_storeStrong(&v24->_identifier, identifier);
    v25->_version = version;
    if (variantCopy)
    {
      v26 = [variantCopy copy];
    }

    else
    {
      v26 = @"default";
    }

    variant = v25->_variant;
    v25->_variant = &v26->isa;

    v28 = +[PKInkManager defaultInkManager];
    v29 = [v28 inkBehaviorForIdentifier:identifierCopy version:version variant:variantCopy];
    behavior = v25->_behavior;
    v25->_behavior = v29;

    if ((*&weight & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      [PKInk defaultWeightForIdentifier:identifierCopy];
      weight = v31;
    }

    [(PKInk *)v25 setWeight:weight];
    v25->_azimuth = azimuth;
    [(PKInk *)v25 _setupDefaultSixChannelAddAndMultiplyColors];
    [(PKInk *)v25 _setupRequiredContentVersion];
  }

  return v25;
}

- (PKInk)initWithBehavior:(id)behavior color:(id)color version:(unint64_t)version variant:(id)variant weight:(double)weight azimuth:(double)azimuth
{
  behaviorCopy = behavior;
  colorCopy = color;
  variantCopy = variant;
  v17 = +[PKInkManager defaultInkManager];
  identifier = [behaviorCopy identifier];
  [v17 addInkBehavior:behaviorCopy forIdentifier:identifier];

  identifier2 = [behaviorCopy identifier];
  v20 = [(PKInk *)self initWithUncheckedIdentifier:identifier2 color:colorCopy hdrColor:0 hdrHeadroom:version version:variantCopy variant:0.0 weight:weight azimuth:azimuth];

  return v20;
}

+ (id)inkFromDictionary:(id)dictionary color:(id)color identifier:(id)identifier
{
  dictionaryCopy = dictionary;
  colorCopy = color;
  identifierCopy = identifier;
  v10 = [PKInk currentInkVersionForInkIdentifier:identifierCopy];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%lu", identifierCopy, v10];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%lu.%@", identifierCopy, v10, @"default"];
  v13 = [PKInkParser inkBehaviorFromDictionary:dictionaryCopy identifier:v11 version:v10 variant:v12];
  v14 = [[PKInk alloc] initWithIdentifier:identifierCopy color:colorCopy hdrColor:0 hdrHeadroom:v10 version:@"default" variant:v13 weight:0.0 azimuth:-1.0 behavior:0.0];
  [(PKInk *)v14 _setupRequiredContentVersion];

  return v14;
}

+ (id)sdrInkFromInk:(id)ink
{
  inkCopy = ink;
  hdrColor = [inkCopy hdrColor];
  if (hdrColor)
  {
    [inkCopy hdrHeadroom];
    v6 = v5;

    if (v6 > 1.0)
    {
      v7 = [PKInk alloc];
      identifier = [inkCopy identifier];
      sdrColor = [inkCopy sdrColor];
      version = [inkCopy version];
      variant = [inkCopy variant];
      [inkCopy weight];
      v13 = v12;
      [inkCopy _azimuth];
      v15 = v14;
      behavior = [inkCopy behavior];
      v17 = [(PKInk *)v7 initWithIdentifier:identifier color:sdrColor hdrColor:0 hdrHeadroom:version version:variant variant:behavior weight:0.0 azimuth:v13 behavior:v15];

      inkCopy = v17;
    }
  }

  return inkCopy;
}

+ (id)inkFromInk:(id)ink color:(id)color
{
  inkCopy = ink;
  colorCopy = color;
  v7 = [PKInk alloc];
  identifier = [inkCopy identifier];
  version = [inkCopy version];
  variant = [inkCopy variant];
  [inkCopy weight];
  v12 = v11;
  [inkCopy _azimuth];
  v14 = v13;
  behavior = [inkCopy behavior];
  v16 = [(PKInk *)v7 initWithIdentifier:identifier color:colorCopy hdrColor:0 hdrHeadroom:version version:variant variant:behavior weight:0.0 azimuth:v12 behavior:v14];

  if ([inkCopy _shouldSaveRequiredContentVersionOverride])
  {
    -[PKInk set_requiredContentVersionOverride:](v16, "set_requiredContentVersionOverride:", [inkCopy _requiredContentVersionOverride]);
  }

  if (([inkCopy _shouldSaveSixChannelAddColor] & 1) != 0 || objc_msgSend(inkCopy, "_shouldSaveSixChannelMultiplyColor"))
  {
    [(PKInk *)v16 _setupCustomizedSixChannelColors];
  }

  -[PKInk set_weightIsUndefined:](v16, "set_weightIsUndefined:", [inkCopy _weightIsUndefined]);

  return v16;
}

+ (id)inkFromInk:(id)ink color:(id)color hdrColor:(id)hdrColor hdrHeadroom:(double)headroom
{
  inkCopy = ink;
  colorCopy = color;
  hdrColorCopy = hdrColor;
  v12 = [PKInk alloc];
  identifier = [inkCopy identifier];
  version = [inkCopy version];
  variant = [inkCopy variant];
  [inkCopy weight];
  v17 = v16;
  [inkCopy _azimuth];
  v19 = v18;
  behavior = [inkCopy behavior];
  v21 = [(PKInk *)v12 initWithIdentifier:identifier color:colorCopy hdrColor:hdrColorCopy hdrHeadroom:version version:variant variant:behavior weight:headroom azimuth:v17 behavior:v19];

  if ([inkCopy _shouldSaveRequiredContentVersionOverride])
  {
    -[PKInk set_requiredContentVersionOverride:](v21, "set_requiredContentVersionOverride:", [inkCopy _requiredContentVersionOverride]);
  }

  if (([inkCopy _shouldSaveSixChannelAddColor] & 1) != 0 || objc_msgSend(inkCopy, "_shouldSaveSixChannelMultiplyColor"))
  {
    [(PKInk *)v21 _setupCustomizedSixChannelColors];
  }

  -[PKInk set_weightIsUndefined:](v21, "set_weightIsUndefined:", [inkCopy _weightIsUndefined]);

  return v21;
}

+ (id)inkFromInk:(id)ink weight:(double)weight
{
  inkCopy = ink;
  v6 = [PKInk alloc];
  identifier = [inkCopy identifier];
  sdrColor = [inkCopy sdrColor];
  hdrColor = [inkCopy hdrColor];
  [inkCopy hdrHeadroom];
  v11 = v10;
  version = [inkCopy version];
  variant = [inkCopy variant];
  [inkCopy _azimuth];
  v15 = v14;
  behavior = [inkCopy behavior];
  v17 = [(PKInk *)v6 initWithIdentifier:identifier color:sdrColor hdrColor:hdrColor hdrHeadroom:version version:variant variant:behavior weight:v11 azimuth:weight behavior:v15];

  if ([inkCopy _shouldSaveRequiredContentVersionOverride])
  {
    -[PKInk set_requiredContentVersionOverride:](v17, "set_requiredContentVersionOverride:", [inkCopy _requiredContentVersionOverride]);
  }

  -[PKInk set_weightIsUndefined:](v17, "set_weightIsUndefined:", [inkCopy _weightIsUndefined]);

  return v17;
}

+ (id)inkFromInk:(id)ink azimuth:(double)azimuth
{
  inkCopy = ink;
  v6 = [PKInk alloc];
  identifier = [inkCopy identifier];
  sdrColor = [inkCopy sdrColor];
  hdrColor = [inkCopy hdrColor];
  [inkCopy hdrHeadroom];
  v11 = v10;
  version = [inkCopy version];
  variant = [inkCopy variant];
  [inkCopy weight];
  v15 = v14;
  behavior = [inkCopy behavior];
  v17 = [(PKInk *)v6 initWithIdentifier:identifier color:sdrColor hdrColor:hdrColor hdrHeadroom:version version:variant variant:behavior weight:v11 azimuth:v15 behavior:azimuth];

  if ([inkCopy _shouldSaveRequiredContentVersionOverride])
  {
    -[PKInk set_requiredContentVersionOverride:](v17, "set_requiredContentVersionOverride:", [inkCopy _requiredContentVersionOverride]);
  }

  -[PKInk set_weightIsUndefined:](v17, "set_weightIsUndefined:", [inkCopy _weightIsUndefined]);

  return v17;
}

- (PKInk)initWithIdentifier:(id)identifier color:(id)color hdrColor:(id)hdrColor hdrHeadroom:(double)headroom version:(unint64_t)version variant:(id)variant weight:(double)weight azimuth:(double)self0 behavior:(id)self1
{
  identifierCopy = identifier;
  colorCopy = color;
  hdrColorCopy = hdrColor;
  variantCopy = variant;
  behaviorCopy = behavior;
  v31.receiver = self;
  v31.super_class = PKInk;
  v26 = [(PKInk *)&v31 init];
  v27 = v26;
  if (v26)
  {
    [(PKInk *)v26 _initColor:colorCopy hdrColor:hdrColorCopy hdrHeadroom:headroom];
    objc_storeStrong(&v27->_identifier, identifier);
    v27->_version = version;
    v28 = [variantCopy copy];
    variant = v27->_variant;
    v27->_variant = v28;

    objc_storeStrong(&v27->_behavior, behavior);
    v27->_weight = weight;
    v27->_azimuth = azimuth;
    [(PKInk *)v27 _setupDefaultSixChannelAddAndMultiplyColors];
    [(PKInk *)v27 set_requiredContentVersionOverride:[(PKInk *)v27 _requiredContentVersion]];
  }

  return v27;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKInk *)self isEqualInk:equalCopy];

  return v5;
}

- (unint64_t)hashValueForFloat:(double)float
{
  v3 = vcvtmd_u64_f64(float * 1000.0);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  return v4 ^ (v4 >> 31);
}

- (BOOL)isEqualInk:(id)ink
{
  inkCopy = ink;
  if (self == inkCopy)
  {
    v11 = 1;
  }

  else if ([(PKInk *)self isEqualUnweightedInk:inkCopy]&& ([(PKInk *)self weight], v6 = v5, [(PKInk *)inkCopy weight], floor(v6 * 1000.0) == floor(v7 * 1000.0)))
  {
    [(PKInk *)self _azimuth];
    v9 = v8;
    [(PKInk *)inkCopy _azimuth];
    v11 = v9 == v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualUnweightedInk:(id)ink
{
  inkCopy = ink;
  if (self == inkCopy)
  {
    goto LABEL_31;
  }

  identifier = [(PKInk *)self identifier];
  identifier2 = [(PKInk *)inkCopy identifier];
  if ([identifier isEqualToString:identifier2])
  {
    sdrColor = [(PKInk *)self sdrColor];
    cGColor = [sdrColor CGColor];
    sdrColor2 = [(PKInk *)inkCopy sdrColor];
    if (DKUColorIsEqualToColorIgnoringOpacityWithTolerance(cGColor, [sdrColor2 CGColor], 0, 0.000000999999997))
    {
      hdrColor = [(PKInk *)self hdrColor];
      cGColor2 = [hdrColor CGColor];
      hdrColor2 = [(PKInk *)inkCopy hdrColor];
      cGColor3 = [hdrColor2 CGColor];
      if (cGColor2 == cGColor3 || !cGColor2 || !cGColor3 || DKUColorIsEqualToColorIgnoringOpacityWithTolerance(cGColor2, cGColor3, 0, 0.000000999999997))
      {
        version = [(PKInk *)self version];
        if (version == [(PKInk *)inkCopy version])
        {
          [(PKInk *)self _sixChannelAddColor];
          v36 = v15;
          [(PKInk *)inkCopy _sixChannelAddColor];
          v17 = vsubq_f32(v36, v16);
          if (fabsf(v17.f32[0]) < 0.01 && fabsf(v17.f32[1]) < 0.01 && fabsf(v17.f32[2]) < 0.01 && fabsf(v17.f32[3]) < 0.01)
          {
            [(PKInk *)self _sixChannelMultiplyColor];
            v37 = v18;
            [(PKInk *)inkCopy _sixChannelMultiplyColor];
            if (DKDNearlyEqualVectorFloat4(v37, v19))
            {
              [(PKInk *)self _hdrAddColor];
              v38 = v20;
              [(PKInk *)inkCopy _hdrAddColor];
              if (DKDNearlyEqualVectorFloat4(v38, v21))
              {
                [(PKInk *)self _hdrMultiplyColor];
                v39 = v22;
                [(PKInk *)inkCopy _hdrMultiplyColor];
                if (DKDNearlyEqualVectorFloat4(v39, v23))
                {
                  [(PKInk *)self hdrHeadroom];
                  v25 = v24;
                  [(PKInk *)inkCopy hdrHeadroom];
                  if (vabdd_f64(v25, v26) < 0.00999999978)
                  {
                    _requiredContentVersionOverride = [(PKInk *)self _requiredContentVersionOverride];
                    _requiredContentVersionOverride2 = [(PKInk *)inkCopy _requiredContentVersionOverride];

                    if (_requiredContentVersionOverride != _requiredContentVersionOverride2)
                    {
                      v30 = 0;
                      goto LABEL_32;
                    }

                    variant = [(PKInk *)self variant];
                    if (variant)
                    {

LABEL_27:
                      variant2 = [(PKInk *)self variant];
                      variant3 = [(PKInk *)inkCopy variant];
                      sdrColor = variant2;
                      v34 = variant3;
                      sdrColor2 = v34;
                      if (sdrColor == v34)
                      {
                        v30 = 1;
                      }

                      else
                      {
                        v30 = 0;
                        if (sdrColor && v34)
                        {
                          v30 = [sdrColor isEqualToString:v34];
                        }
                      }

                      identifier2 = sdrColor2;
                      identifier = sdrColor;
                      goto LABEL_23;
                    }

                    variant4 = [(PKInk *)inkCopy variant];

                    if (variant4)
                    {
                      goto LABEL_27;
                    }

LABEL_31:
                    v30 = 1;
                    goto LABEL_32;
                  }
                }
              }
            }
          }
        }
      }
    }

    v30 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v30 = 0;
LABEL_24:

LABEL_32:
  return v30;
}

- (unint64_t)hash
{
  identifier = [(PKInk *)self identifier];
  v4 = [identifier hash];
  sdrColor = [(PKInk *)self sdrColor];
  v6 = [sdrColor hash];
  version = [(PKInk *)self version];
  variant = [(PKInk *)self variant];
  v9 = [variant hash];
  [(PKInk *)self weight];
  v11 = [(PKInk *)self hashValueForFloat:v10 + 1.0];
  v12 = v6 ^ v4 ^ version ^ v9 ^ [(PKInk *)self _requiredContentVersionOverride];

  return v12 ^ v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(PKInk *)self identifier];
  sdrColor = [(PKInk *)self sdrColor];
  variant = [(PKInk *)self variant];
  v9 = [v3 stringWithFormat:@"<%@ %p %@ %@ %@ %lu>", v5, self, identifier, sdrColor, variant, -[PKInk version](self, "version")];

  return v9;
}

+ (double)defaultWeightForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = -0.5;
  if (([identifierCopy isEqual:@"com.apple.ink.marker"] & 1) == 0)
  {
    if ([identifierCopy isEqual:@"com.apple.ink.pencil"])
    {
      v4 = -1.0;
    }

    else if (([identifierCopy isEqual:@"com.apple.ink.pen"] & 1) == 0)
    {
      if (([identifierCopy isEqual:@"com.apple.ink.watercolor"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqual:", @"com.apple.ink.fountainpen") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqual:", @"com.apple.ink.monoline") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqual:", @"com.apple.ink.crayon") & 1) != 0 || (v4 = -1.0, objc_msgSend(identifierCopy, "isEqual:", @"com.apple.ink.reedcalligraphy")))
      {
        [PKInkingTool defaultWidthForInkType:identifierCopy];
        v4 = v5;
      }
    }
  }

  return v4;
}

+ (double)defaultOpacityForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = 0.5;
  if (([identifierCopy isEqual:@"com.apple.ink.pencil"] & 1) == 0)
  {
    v4 = 1.0;
    if (([identifierCopy isEqual:@"com.apple.ink.pen"] & 1) == 0)
    {
      if ([identifierCopy isEqual:@"com.apple.ink.marker"])
      {
        v4 = 0.8;
      }

      else
      {
        v4 = 1.0;
      }
    }
  }

  return v4;
}

+ (double)defaultAzimuthForIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  if (![identifier isEqualToString:@"com.apple.ink.reedcalligraphy"])
  {
    return v3;
  }

  [MEMORY[0x1E695DF58] preferredLanguages];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v4 = v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = *v12;
  v3 = 0.785398163;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = [MEMORY[0x1E695DF58] scriptCodeFromLanguage:{*(*(&v11 + 1) + 8 * i), v11}];
      if ([v8 containsString:@"Deva"] & 1) != 0 || (objc_msgSend(v8, "containsString:", @"Gujr") & 1) != 0 || (objc_msgSend(v8, "containsString:", @"Beng"))
      {
        goto LABEL_23;
      }

      if ([v8 containsString:@"Arab"] & 1) != 0 || (objc_msgSend(v8, "containsString:", @"Aran"))
      {
LABEL_21:
        v3 = -0.785398163;
LABEL_23:

        goto LABEL_24;
      }

      if ([v8 containsString:@"Orya"] & 1) != 0 || (objc_msgSend(v8, "containsString:", @"Guru") & 1) != 0 || (objc_msgSend(v8, "containsString:", @"Knda"))
      {
        v3 = -0.392699082;
        goto LABEL_23;
      }

      if ([v8 containsString:@"Taml"] & 1) != 0 || (objc_msgSend(v8, "containsString:", @"Telu"))
      {
        goto LABEL_21;
      }

      v9 = [v8 containsString:@"Mlym"];

      if (v9)
      {
        v3 = -0.785398163;
        goto LABEL_24;
      }
    }

    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

  v3 = 0.0;
LABEL_24:

  return v3;
}

- (float32x2_t)_defaultHDRAddColor
{
  v8 = *MEMORY[0x1E69E9840];
  behavior = [self behavior];
  renderingDescriptor = [behavior renderingDescriptor];
  blendMode = [renderingDescriptor blendMode];

  result = 0;
  if (blendMode <= 4 && ((1 << blendMode) & 0x15) != 0)
  {
    cGColor = [self[12] CGColor];
    v7[0] = __const_DKUColorGetVectorFloat3_rgba;
    v7[1] = unk_1C801E8B0;
    DKUColorGetRGBAComponents(cGColor, v7);
    return vcvt_f32_f64(v7[0]);
  }

  return result;
}

- (float32x2_t)_defaultHDRMultiplyColor
{
  v8 = *MEMORY[0x1E69E9840];
  behavior = [self behavior];
  renderingDescriptor = [behavior renderingDescriptor];
  blendMode = [renderingDescriptor blendMode];

  if ((blendMode | 2) == 3)
  {
    cGColor = [self[12] CGColor];
    v7[0] = __const_DKUColorGetVectorFloat3_rgba;
    v7[1] = unk_1C801E8B0;
    DKUColorGetRGBAComponents(cGColor, v7);
    return vcvt_f32_f64(v7[0]);
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldSaveSixChannelAddColor
{
  v5 = *self->_sixChannelAddColor;
  [(PKInk *)self _defaultSixChannelAddColor];
  v3 = vsubq_f32(v5, v2);
  return fabsf(v3.f32[0]) >= 0.01 || fabsf(v3.f32[1]) >= 0.01 || fabsf(v3.f32[2]) >= 0.01 || fabsf(v3.f32[3]) >= 0.01;
}

- (BOOL)_shouldSaveHDRAddColor
{
  hdrColor = [(PKInk *)self hdrColor];
  if (hdrColor)
  {
    v8 = *self->_hdrAddColor;
    [(PKInk *)self _defaultHDRAddColor];
    v5 = vsubq_f32(v8, v4);
    v6 = fabsf(v5.f32[0]) >= 0.01 || fabsf(v5.f32[1]) >= 0.01 || fabsf(v5.f32[2]) >= 0.01 || fabsf(v5.f32[3]) >= 0.01;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldSaveHDRMultiplyColor
{
  hdrColor = [(PKInk *)self hdrColor];
  if (hdrColor)
  {
    v8 = *self->_hdrMultiplyColor;
    [(PKInk *)self _defaultHDRMultiplyColor];
    v5 = vsubq_f32(v8, v4);
    v6 = fabsf(v5.f32[0]) >= 0.01 || fabsf(v5.f32[1]) >= 0.01 || fabsf(v5.f32[2]) >= 0.01 || fabsf(v5.f32[3]) >= 0.01;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldSaveSixChannelMultiplyColor
{
  v5 = *self->_sixChannelMultiplyColor;
  [(PKInk *)self _defaultSixChannelMultiplyColor];
  v3 = vsubq_f32(v5, v2);
  return fabsf(v3.f32[0]) >= 0.01 || fabsf(v3.f32[1]) >= 0.01 || fabsf(v3.f32[2]) >= 0.01 || fabsf(v3.f32[3]) >= 0.01;
}

- (int64_t)_numPaintFramebuffers
{
  behavior = [(PKInk *)self behavior];
  secondaryParticleDescriptor = [behavior secondaryParticleDescriptor];

  if (secondaryParticleDescriptor)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)particleRotation
{
  behavior = [(PKInk *)self behavior];
  particleDescriptor = [behavior particleDescriptor];

  if (!particleDescriptor)
  {
    return self && [(PKInk *)self _isFountainPenInkV2];
  }

  particleRotation = [particleDescriptor particleRotation];

  return particleRotation;
}

- (void)setWeight:(double)weight
{
  weightCopy = weight;
  if ((*&weight & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v5 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_ERROR, "Weight must be a finite number", buf, 2u);
    }

    identifier = [(PKInk *)self identifier];
    [PKInk defaultWeightForIdentifier:identifier];
    weightCopy = v7;
  }

  identifier2 = [(PKInk *)self identifier];
  if ([identifier2 isEqualToString:@"com.apple.ink.custom"])
  {

LABEL_8:
    v11 = weightCopy;
    goto LABEL_9;
  }

  behavior = [(PKInk *)self behavior];
  useUnclampedWeight = [behavior useUnclampedWeight];

  if (useUnclampedWeight)
  {
    goto LABEL_8;
  }

  if (fabs(weightCopy) > 1.0)
  {
    v12 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_ERROR, "Ink expects an adjustment size between -1 and 1", v13, 2u);
    }
  }

  v11 = -1.0;
  if (weightCopy >= -1.0)
  {
    v11 = weightCopy;
    if (weightCopy > 1.0)
    {
      v11 = 1.0;
    }
  }

LABEL_9:
  self->_weight = v11;
}

- (BOOL)_isStrokeGeneratingInk
{
  identifier = [(PKInk *)self identifier];
  if ([identifier isEqualToString:@"com.apple.ink.lasso"] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"com.apple.ink.eraser") & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", @"com.apple.ink.objectEraser"))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [identifier isEqualToString:@"com.apple.ink.generationtool"] ^ 1;
  }

  return v3;
}

- (id)_dataInUnknownFields
{
  ptr = self->_unknownFields.__ptr_;
  if (ptr && (v3 = *ptr) != 0 && *v3 != v3[1])
  {
    data = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  }

  else
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  return data;
}

- (id)colorForUIAllowHDR:(BOOL)r
{
  if (r)
  {
    hdrColor = [(PKInk *)self hdrColor];
    v5 = hdrColor;
    if (hdrColor)
    {
      sdrColor = hdrColor;
    }

    else
    {
      sdrColor = [(PKInk *)self sdrColor];
    }

    sdrColor2 = sdrColor;
  }

  else
  {
    sdrColor2 = [(PKInk *)self sdrColor];
  }

  return sdrColor2;
}

+ (id)identifierForCommandType:(unsigned int)type wantsObjectErase:(BOOL)erase
{
  v11[5] = *MEMORY[0x1E69E9840];
  if (type == 3)
  {
    v4 = @"com.apple.ink.eraser";
    if (erase)
    {
      v4 = @"com.apple.ink.objectEraser";
    }

    v5 = v4;
  }

  else if (type > 4)
  {
    v8 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = type;
      _os_log_error_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_ERROR, "Unknown command type for ink: %d", v10, 8u);
    }

    v5 = @"com.apple.ink.pen";
  }

  else
  {
    v11[0] = @"com.apple.ink.pencil";
    v11[1] = @"com.apple.ink.pen";
    v11[2] = @"com.apple.ink.marker";
    v11[3] = @"com.apple.ink.eraser";
    v11[4] = @"com.apple.ink.lasso";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
    v5 = [v7 objectAtIndexedSubscript:type];
  }

  return v5;
}

- (id)_shadowModel
{
  if ([(PKInk *)self _isMonolineInk])
  {
    v3 = @"Micron";
  }

  else
  {
    if (qword_1ED6A55D8 != -1)
    {
      dispatch_once(&qword_1ED6A55D8, &__block_literal_global_101);
    }

    v4 = _MergedGlobals_177;
    identifier = [(PKInk *)self identifier];
    v6 = [v4 objectForKeyedSubscript:identifier];

    v7 = @"BallpointPen3";
    if (v6)
    {
      v7 = v6;
    }

    v3 = v7;
  }

  return v3;
}

uint64_t __34__PKInk_ShadowModel___shadowModel__block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  v1 = _MergedGlobals_177;
  _MergedGlobals_177 = v0;

  [_MergedGlobals_177 setObject:@"Highlighter" forKeyedSubscript:@"com.apple.ink.marker"];
  [_MergedGlobals_177 setObject:@"FountainV3Pen" forKeyedSubscript:@"com.apple.ink.fountainpen"];
  [_MergedGlobals_177 setObject:@"Crayon" forKeyedSubscript:@"com.apple.ink.crayon"];
  [_MergedGlobals_177 setObject:@"Eraser" forKeyedSubscript:@"com.apple.ink.eraser"];
  [_MergedGlobals_177 setObject:@"Eraser" forKeyedSubscript:@"com.apple.ink.objectEraser"];
  [_MergedGlobals_177 setObject:@"WatercolorPen1" forKeyedSubscript:@"com.apple.ink.watercolor"];
  [_MergedGlobals_177 setObject:@"SelectionTool" forKeyedSubscript:@"com.apple.ink.lasso"];
  [_MergedGlobals_177 setObject:@"BallpointPen3" forKeyedSubscript:@"com.apple.ink.pen"];
  [_MergedGlobals_177 setObject:@"BallpointPen3" forKeyedSubscript:@"com.apple.ink.handwriting"];
  [_MergedGlobals_177 setObject:@"Pencil" forKeyedSubscript:@"com.apple.ink.pencil"];
  v2 = _MergedGlobals_177;

  return [v2 setObject:@"Wand" forKeyedSubscript:@"com.apple.ink.generationtool"];
}

@end