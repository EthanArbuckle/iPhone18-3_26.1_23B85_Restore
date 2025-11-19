@interface PKInk
+ (PKInk)inkWithIdentifier:(id)a3 color:(id)a4;
+ (PKInk)inkWithIdentifier:(id)a3 color:(id)a4 variant:(id)a5;
+ (PKInk)inkWithIdentifier:(id)a3 color:(id)a4 version:(unint64_t)a5 variant:(id)a6;
+ (PKInk)inkWithIdentifier:(id)a3 color:(id)a4 weight:(double)a5;
+ (PKInk)inkWithIdentifier:(id)a3 color:(id)a4 weight:(double)a5 azimuth:(double)a6;
+ (PKInk)inkWithIdentifier:(id)a3 properties:(id)a4;
+ (PKInk)inkWithIdentifier:(id)a3 properties:(id)a4 inkVersion:(int64_t)a5;
+ (PKInk)inkWithType:(id)a3 color:(id)a4 weight:(double)a5;
+ (PKInk)inkWithType:(id)a3 color:(id)a4 weight:(double)a5 azimuth:(double)a6;
+ (double)defaultAzimuthForIdentifier:(id)a3;
+ (double)defaultOpacityForIdentifier:(id)a3;
+ (double)defaultWeightForIdentifier:(id)a3;
+ (id)decodeColorFrom:(id)a3 propertyKey:(id)a4 inkOpacity:(double)a5;
+ (id)identifierForCommandType:(unsigned int)a3 wantsObjectErase:(BOOL)a4;
+ (id)inkFromDictionary:(id)a3 color:(id)a4 identifier:(id)a5;
+ (id)inkFromInk:(id)a3 azimuth:(double)a4;
+ (id)inkFromInk:(id)a3 color:(id)a4;
+ (id)inkFromInk:(id)a3 color:(id)a4 hdrColor:(id)a5 hdrHeadroom:(double)a6;
+ (id)inkFromInk:(id)a3 weight:(double)a4;
+ (id)sdrInkFromInk:(id)a3;
+ (int64_t)currentInkVersionForInkIdentifier:(id)a3;
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
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualInk:(id)a3;
- (BOOL)isEqualUnweightedInk:(id)a3;
- (NSData)rawValue;
- (PKContentVersion)requiredContentVersion;
- (PKInk)init;
- (PKInk)initWithArchive:(const void *)a3;
- (PKInk)initWithBehavior:(id)a3 color:(id)a4 version:(unint64_t)a5 variant:(id)a6 weight:(double)a7 azimuth:(double)a8;
- (PKInk)initWithCoder:(id)a3;
- (PKInk)initWithIdentifier:(id)a3 color:(id)a4 hdrColor:(id)a5 hdrHeadroom:(double)a6 version:(unint64_t)a7 variant:(id)a8 weight:(double)a9 azimuth:(double)a10 behavior:(id)a11;
- (PKInk)initWithIdentifier:(id)a3 color:(id)a4 version:(unint64_t)a5 variant:(id)a6;
- (PKInk)initWithIdentifier:(id)a3 color:(id)a4 version:(unint64_t)a5 variant:(id)a6 weight:(double)a7;
- (PKInk)initWithIdentifier:(id)a3 color:(id)a4 version:(unint64_t)a5 variant:(id)a6 weight:(double)a7 azimuth:(double)a8;
- (PKInk)initWithInkType:(PKInkType)type color:(UIColor *)color;
- (PKInk)initWithRawValue:(id)a3;
- (PKInk)initWithUncheckedIdentifier:(id)a3 color:(id)a4 hdrColor:(id)a5 hdrHeadroom:(double)a6 version:(unint64_t)a7 variant:(id)a8 weight:(double)a9 azimuth:(double)a10;
- (PKInk)initWithV1Archive:(const void *)a3 serializationVersion:(unint64_t)a4;
- (UIColor)color;
- (float32x2_t)_defaultHDRAddColor;
- (float32x2_t)_defaultHDRMultiplyColor;
- (float32x2_t)_defaultSixChannelAddColor;
- (float32x2_t)_defaultSixChannelMultiplyColor;
- (id).cxx_construct;
- (id)_copyWithOriginalRequiredContentVersion;
- (id)_copyWithVariant:(id)a3;
- (id)_dataInUnknownFields;
- (id)_shadowModel;
- (id)_sixChannelVersion;
- (id)colorForUIAllowHDR:(BOOL)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)identifierForArchiving;
- (id)properties;
- (id)variantForArchiving;
- (int64_t)_numPaintFramebuffers;
- (int64_t)_requiredContentVersion;
- (int64_t)inkFormatVersion;
- (unint64_t)hash;
- (unint64_t)hashValueForFloat:(double)a3;
- (unint64_t)particleRotation;
- (void)_initColor:(id)a3 hdrColor:(id)a4 hdrHeadroom:(double)a5;
- (void)_setupCustomizedSixChannelColors;
- (void)_setupDefaultSixChannelAddAndMultiplyColors;
- (void)_setupRequiredContentVersion;
- (void)encodeWithCoder:(id)a3;
- (void)saveToArchive:(void *)a3;
- (void)saveToV1Archive:(void *)a3;
- (void)setWeight:(double)a3;
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
  v5 = [(PKInk *)self hdrColor];

  if (v5)
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
  v2 = [a1 behavior];
  v3 = [v2 renderingDescriptor];
  v4 = [v3 blendMode];

  result = 0;
  if (v4 <= 4 && ((1 << v4) & 0x15) != 0)
  {
    v6 = [a1[6] CGColor];
    v7[0] = __const_DKUColorGetVectorFloat3_rgba;
    v7[1] = unk_1C801E8B0;
    DKUColorGetRGBAComponents(v6, v7);
    return vcvt_f32_f64(v7[0]);
  }

  return result;
}

- (float32x2_t)_defaultSixChannelMultiplyColor
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [a1 behavior];
  v3 = [v2 renderingDescriptor];
  v4 = [v3 blendMode];

  if ((v4 | 2) == 3)
  {
    v5 = [a1[6] CGColor];
    v7[0] = __const_DKUColorGetVectorFloat3_rgba;
    v7[1] = unk_1C801E8B0;
    DKUColorGetRGBAComponents(v5, v7);
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
    v5 = self;
    v6 = 3;
  }

  else
  {
    if (!self)
    {
      return;
    }

    v6 = [(PKInk *)self _requiredContentVersion];
    v5 = self;
  }

  [(PKInk *)v5 set_requiredContentVersionOverride:v6];
}

- (BOOL)_isFountainPenInk
{
  v2 = [(PKInk *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.fountainpen"];

  return v3;
}

- (int64_t)_requiredContentVersion
{
  v3 = [(PKInk *)self identifier];
  if ([v3 isEqualToString:@"com.apple.ink.pen"])
  {
    goto LABEL_8;
  }

  v4 = [(PKInk *)self identifier];
  if ([v4 isEqualToString:@"com.apple.ink.pencil"])
  {
LABEL_7:

LABEL_8:
    return 1;
  }

  v5 = [(PKInk *)self identifier];
  if ([v5 isEqualToString:@"com.apple.ink.marker"])
  {
LABEL_6:

    goto LABEL_7;
  }

  v6 = [(PKInk *)self identifier];
  if ([v6 isEqualToString:@"com.apple.ink.eraser"])
  {

    goto LABEL_6;
  }

  v8 = [(PKInk *)self identifier];
  v9 = [v8 isEqualToString:@"com.apple.ink.lasso"];

  if (v9)
  {
    return 1;
  }

  v10 = [(PKInk *)self identifier];
  if ([v10 isEqualToString:@"com.apple.ink.fountainpen"])
  {
    goto LABEL_16;
  }

  v11 = [(PKInk *)self identifier];
  if ([v11 isEqualToString:@"com.apple.ink.watercolor"])
  {
LABEL_15:

LABEL_16:
    return 2;
  }

  v12 = [(PKInk *)self identifier];
  if ([v12 isEqualToString:@"com.apple.ink.crayon"])
  {

    goto LABEL_15;
  }

  v13 = [(PKInk *)self identifier];
  v14 = [v13 isEqualToString:@"com.apple.ink.monoline"];

  if (v14)
  {
    return 2;
  }

  v15 = [(PKInk *)self identifier];
  v16 = [v15 isEqualToString:@"com.apple.ink.reedcalligraphy"];

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
  v3 = [(PKInk *)self hdrColor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PKInk *)self sdrColor];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_isEraserInk
{
  v3 = [(PKInk *)self identifier];
  if ([v3 isEqualToString:@"com.apple.ink.eraser"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PKInk *)self identifier];
    v4 = [v5 isEqualToString:@"com.apple.ink.objectEraser"];
  }

  return v4;
}

- (BOOL)_isPencilInk
{
  v2 = [(PKInk *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.pencil"];

  return v3;
}

- (BOOL)_isMarkerInk
{
  v2 = [(PKInk *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.marker"];

  return v3;
}

- (BOOL)_isMonolineInk
{
  v4 = [(PKInk *)self identifier];
  v5 = [v4 isEqualToString:@"com.apple.ink.pen"];
  if (v5)
  {
    v2 = [(PKInk *)self variant];
    if ([v2 isEqualToString:@"fixed-width"])
    {
      v6 = 1;
      goto LABEL_6;
    }
  }

  v7 = [(PKInk *)self identifier];
  if (([v7 isEqualToString:@"com.apple.ink.monoline"] & 1) == 0)
  {
    v9 = [(PKInk *)self identifier];
    v6 = [v9 isEqualToString:@"com.apple.ink.micronpen"];

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
  v2 = [(PKInk *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.pen"];

  return v3;
}

- (PKInk)init
{
  [PKInk defaultWeightForIdentifier:@"com.apple.ink.pen"];
  v4 = v3;
  v5 = [MEMORY[0x1E69DC888] blackColor];
  v6 = [(PKInk *)self initWithIdentifier:@"com.apple.ink.pen" color:v5 version:[PKInk currentInkVersionForInkIdentifier:?], 0, v4];

  return v6;
}

- (id)_sixChannelVersion
{
  v3 = [PKInk alloc];
  v4 = [(PKInk *)self identifier];
  v5 = [(PKInk *)self sdrColor];
  v6 = [(PKInk *)self hdrColor];
  [(PKInk *)self hdrHeadroom];
  v8 = v7;
  v9 = [(PKInk *)self version];
  v10 = [(PKInk *)self variant];
  [(PKInk *)self weight];
  v12 = v11;
  [(PKInk *)self _azimuth];
  v14 = [(PKInk *)v3 initWithUncheckedIdentifier:v4 color:v5 hdrColor:v6 hdrHeadroom:v9 version:v10 variant:v8 weight:v12 azimuth:v13];

  [(PKInk *)v14 _setupCustomizedSixChannelColors];
  [(PKInk *)v14 set_weightIsUndefined:[(PKInk *)self _weightIsUndefined]];

  return v14;
}

- (void)_setupCustomizedSixChannelColors
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(UIColor *)self->_sdrColor CGColor];
  v29 = __const_DKUColorGetVectorFloat4_rgba;
  v30 = unk_1C801E8D0;
  DKUColorGetRGBAComponents(v3, &v29);
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
    v8 = [(UIColor *)hdrColor CGColor];
    v29 = __const_DKUColorGetVectorFloat3_rgba;
    v30 = unk_1C801E8B0;
    DKUColorGetRGBAComponents(v8, &v29);
    *v9.f32 = vcvt_f32_f64(v29);
    v10 = *&v30;
    v9.f32[2] = v10;
    v28 = v9;
  }

  v11 = [(PKInk *)self behavior:v23];
  v12 = [v11 renderingDescriptor];
  v13 = [v12 blendMode];

  v14.i64[0] = 0;
  v14.i32[2] = 0;
  if (v13 > 4)
  {
    v15.i64[0] = 0;
    v15.i32[2] = 0;
    v17.i64[0] = 0;
    v17.i32[2] = 0;
    v16.i64[0] = 0;
    v16.i32[2] = 0;
  }

  else if (((1 << v13) & 0x15) != 0)
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
  v2 = [(PKInk *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.lasso"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"identifier";
  v3 = [(PKInk *)self identifier];
  v8[0] = v3;
  v7[1] = @"properties";
  v4 = [(PKInk *)self properties];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)properties
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [(PKInk *)self sdrColor];
  v4 = [v3 CGColor];

  v43 = xmmword_1C801F520;
  v44 = unk_1C801F530;
  if (DKUColorGetRGBAComponents(v4, &v43))
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
    v15 = [(PKInk *)self variant];
    v42[5] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:6];

    if (v16)
    {
      v17 = [(PKInk *)self hdrColor];
      v18 = v17 == 0;

      if (!v18)
      {
        v19 = [(PKInk *)self hdrColor];
        v20 = v19;
        v21 = DKUColorGetRGBAComponents([v19 CGColor], &v43) == 0;

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
  v2 = [(PKInk *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.handwriting"];

  return v3;
}

- (PKInk)initWithArchive:(const void *)a3
{
  v5 = *(a3 + 2);
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
  if ((*(a3 + 112) & 2) != 0)
  {
    v11 = *(a3 + 5);
  }

  else
  {
    v11 = 0.0;
  }

  v12 = *(a3 + 4);
  if (v12)
  {
    v13 = v11;
    v14 = PK_CGColorMakeRGBA(v12[5], v12[4], v12[3], v12[2], v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a3 + 7);
  if (*(v15 + 23) < 0)
  {
    v15 = *v15;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
  v17 = v16;
  if ((*(a3 + 112) & 8) != 0)
  {
    v18 = *(a3 + 12);
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
  v21 = *(a3 + 11);
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
  if ((*(a3 + 112) & 0x10) != 0)
  {
    v26 = *(a3 + 13);
  }

  else
  {
    v26 = v25;
  }

  if (*(a3 + 112))
  {
    v27 = *(a3 + 1);
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

  if ((*(a3 + 112) & 0x10) == 0)
  {
    [(PKInk *)v30 set_weightIsUndefined:1];
  }

  v31 = *(a3 + 9);
  if (v31)
  {
    v32 = vrev64q_s32(*(v31 + 8));
    [(PKInk *)v30 set_sixChannelAddColor:*vextq_s8(v32, v32, 8uLL).i64];
  }

  v33 = *(a3 + 10);
  if (v33)
  {
    v34 = vrev64q_s32(*(v33 + 8));
    [(PKInk *)v30 set_sixChannelMultiplyColor:*vextq_s8(v34, v34, 8uLL).i64];
  }

  v35 = *(a3 + 3);
  if (v35)
  {
    v36 = vrev64q_s32(*(v35 + 8));
    [(PKInk *)v30 set_hdrAddColor:*vextq_s8(v36, v36, 8uLL).i64];
  }

  v37 = *(a3 + 6);
  if (v37)
  {
    v38 = vrev64q_s32(*(v37 + 8));
    [(PKInk *)v30 set_hdrMultiplyColor:*vextq_s8(v38, v38, 8uLL).i64];
  }

  if ((*(a3 + 112) & 4) == 0 && v30)
  {
    [(PKInk *)v30 set_requiredContentVersionOverride:[(PKInk *)v30 _requiredContentVersion]];
  }

  v40 = *(a3 + 15);
  v39 = *(a3 + 16);
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

- (void)saveToArchive:(void *)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = [(PKInk *)self sdrColor];
  v6 = [v5 CGColor];

  v73 = xmmword_1C801CAE0;
  *v74 = unk_1C801CAF0;
  if (DKUColorGetRGBAComponents(v6, &v73))
  {
    drawing::Ink::makeColor(a3);
    v7 = *(a3 + 2);
    v8 = *(&v73 + 1);
    v9 = *&v73;
    *(v7 + 20) = v9;
    *(v7 + 24) |= 8u;
    v10 = *(a3 + 2);
    v11 = v8;
    *(v10 + 24) |= 4u;
    *(v10 + 16) = v11;
    v12 = *(a3 + 2);
    v13 = v74[0];
    *(v12 + 24) |= 2u;
    *(v12 + 12) = v13;
    v14 = *(a3 + 2);
    Alpha = CGColorGetAlpha(v6);
    *(v14 + 24) |= 1u;
    *(v14 + 8) = Alpha;
  }

  v16 = [(PKInk *)self hdrColor];
  v17 = v16;
  v18 = [v16 CGColor];

  if (v18 && DKUColorGetRGBAComponents(v18, &v73))
  {
    drawing::Ink::makeHdrColor(a3);
    v19 = *(a3 + 4);
    v20 = *(&v73 + 1);
    v21 = *&v73;
    *(v19 + 20) = v21;
    *(v19 + 24) |= 8u;
    v22 = *(a3 + 4);
    v23 = v20;
    *(v22 + 24) |= 4u;
    *(v22 + 16) = v23;
    v24 = *(a3 + 4);
    v25 = v74[0];
    *(v24 + 24) |= 2u;
    *(v24 + 12) = v25;
    v26 = *(a3 + 4);
    v27 = CGColorGetAlpha(v18);
    *(v26 + 24) |= 1u;
    *(v26 + 8) = v27;
  }

  [(PKInk *)self hdrHeadroom];
  if (v28 > 0.0)
  {
    *(a3 + 112) |= 2u;
    *(a3 + 5) = v28;
  }

  v29 = [(PKInk *)self identifierForArchiving];
  v30 = v29;
  std::string::basic_string[abi:ne200100]<0>(&v71, [v29 UTF8String]);
  v31 = *(a3 + 7);
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

  v33 = [(PKInk *)self version];
  *(a3 + 112) |= 8u;
  *(a3 + 12) = v33;
  v34 = [(PKInk *)self variantForArchiving];
  v35 = v34 == 0;

  if (!v35)
  {
    v36 = [(PKInk *)self variantForArchiving];
    v37 = v36;
    std::string::basic_string[abi:ne200100]<0>(&v71, [v36 UTF8String]);
    v38 = *(a3 + 11);
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
    *(a3 + 112) |= 0x10u;
    *(a3 + 13) = v40;
  }

  [(PKInk *)self _azimuth];
  if (v41 != 0.0)
  {
    [(PKInk *)self _azimuth];
    *(a3 + 112) |= 1u;
    *(a3 + 1) = v42;
  }

  if ([(PKInk *)self _shouldSaveSixChannelAddColor])
  {
    [(PKInk *)self _sixChannelAddColor];
    v67 = v43;
    drawing::Ink::makeSixChannelAddColor(a3);
    v44 = *(a3 + 9);
    *(v44 + 24) |= 8u;
    *(v44 + 20) = v67;
    v45 = *(a3 + 9);
    *(v45 + 24) |= 4u;
    *(v45 + 16) = DWORD1(v67);
    v46 = *(a3 + 9);
    *(v46 + 24) |= 2u;
    *(v46 + 12) = DWORD2(v67);
    v47 = *(a3 + 9);
    *(v47 + 24) |= 1u;
    *(v47 + 8) = HIDWORD(v67);
  }

  if ([(PKInk *)self _shouldSaveSixChannelMultiplyColor])
  {
    [(PKInk *)self _sixChannelMultiplyColor];
    v68 = v48;
    drawing::Ink::makeSixChannelMultiplyColor(a3);
    v49 = *(a3 + 10);
    *(v49 + 24) |= 8u;
    *(v49 + 20) = v68;
    v50 = *(a3 + 10);
    *(v50 + 24) |= 4u;
    *(v50 + 16) = DWORD1(v68);
    v51 = *(a3 + 10);
    *(v51 + 24) |= 2u;
    *(v51 + 12) = DWORD2(v68);
    v52 = *(a3 + 10);
    *(v52 + 24) |= 1u;
    *(v52 + 8) = HIDWORD(v68);
  }

  if ([(PKInk *)self _shouldSaveHDRAddColor])
  {
    [(PKInk *)self _hdrAddColor];
    v69 = v53;
    drawing::Ink::makeHdrAddColor(a3);
    v54 = *(a3 + 3);
    *(v54 + 24) |= 8u;
    *(v54 + 20) = v69;
    v55 = *(a3 + 3);
    *(v55 + 24) |= 4u;
    *(v55 + 16) = DWORD1(v69);
    v56 = *(a3 + 3);
    *(v56 + 24) |= 2u;
    *(v56 + 12) = DWORD2(v69);
    v57 = *(a3 + 3);
    *(v57 + 24) |= 1u;
    *(v57 + 8) = HIDWORD(v69);
  }

  if ([(PKInk *)self _shouldSaveHDRMultiplyColor])
  {
    [(PKInk *)self _hdrMultiplyColor];
    v70 = v58;
    drawing::Ink::makeHdrMultiplyColor(a3);
    v59 = *(a3 + 6);
    *(v59 + 24) |= 8u;
    *(v59 + 20) = v70;
    v60 = *(a3 + 6);
    *(v60 + 24) |= 4u;
    *(v60 + 16) = DWORD1(v70);
    v61 = *(a3 + 6);
    *(v61 + 24) |= 2u;
    *(v61 + 12) = DWORD2(v70);
    v62 = *(a3 + 6);
    *(v62 + 24) |= 1u;
    *(v62 + 8) = HIDWORD(v70);
  }

  if ([(PKInk *)self _shouldSaveRequiredContentVersionOverride])
  {
    v63 = [(PKInk *)self _requiredContentVersionOverride];
    *(a3 + 112) |= 4u;
    *(a3 + 8) = v63;
  }

  ptr = self->_unknownFields.__ptr_;
  cntrl = self->_unknownFields.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v66 = *(a3 + 16);
  *(a3 + 15) = ptr;
  *(a3 + 16) = cntrl;
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }
}

- (PKInk)initWithV1Archive:(const void *)a3 serializationVersion:(unint64_t)a4
{
  v6 = *(a3 + 1);
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
  v12 = *(a3 + 2);
  if (*(v12 + 23) < 0)
  {
    v12 = *v12;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
  if ((*(a3 + 32) & 1) == 0)
  {
    v14 = @"default";
    v15 = v14;
LABEL_11:
    v18 = v15;

    v16 = 0;
    v14 = v18;
    goto LABEL_12;
  }

  v16 = *(a3 + 3);
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

- (void)saveToV1Archive:(void *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(PKInk *)self sdrColor];
  v6 = [v5 CGColor];

  v23 = xmmword_1C801CAE0;
  *v24 = unk_1C801CAF0;
  if (DKUColorGetRGBAComponents(v6, &v23))
  {
    drawingV1::Ink::makeColor(a3);
    v7 = *(a3 + 1);
    v8 = *(&v23 + 1);
    v9 = *&v23;
    *(v7 + 20) = v9;
    *(v7 + 24) |= 8u;
    v10 = *(a3 + 1);
    v11 = v8;
    *(v10 + 24) |= 4u;
    *(v10 + 16) = v11;
    v12 = *(a3 + 1);
    v13 = v24[0];
    *(v12 + 24) |= 2u;
    *(v12 + 12) = v13;
    v14 = *(a3 + 1);
    Alpha = CGColorGetAlpha(v6);
    *(v14 + 24) |= 1u;
    *(v14 + 8) = Alpha;
  }

  v16 = [(PKInk *)self identifier];
  v17 = v16;
  std::string::basic_string[abi:ne200100]<0>(&v21, [v16 UTF8String]);
  v18 = *(a3 + 2);
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

  v20 = [(PKInk *)self version];
  *(a3 + 32) |= 1u;
  *(a3 + 3) = v20;
}

- (PKInk)initWithRawValue:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v9[0] = &unk_1F4769FC0;
  memset(&v9[2], 0, 24);
  v9[6] = 0;
  v9[7] = 0;
  memset(&v9[9], 0, 24);
  v5 = [v4 bytes];
  [v4 length];
  PB::Reader::Reader(v8, v5);
  if (drawing::Ink::readFrom(v9, v8))
  {
    self = [(PKInk *)self initWithArchive:v9];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  drawing::Ink::~Ink(v9);

  return v6;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKInk *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"representation"];
}

- (PKInk)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:3];
  v7 = [v4 setWithArray:{v6, v14, v15}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"representation"];

  if (v8)
  {
    v9 = [v8 objectForKey:@"identifier"];
    v10 = [v8 objectForKey:@"properties"];
    v11 = [PKInk inkWithIdentifier:v9 properties:v10];

    self = v11;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (PKInk)inkWithType:(id)a3 color:(id)a4 weight:(double)a5
{
  v5 = [PKInk inkWithType:a3 color:a4 weight:a5 azimuth:0.0];

  return v5;
}

+ (PKInk)inkWithType:(id)a3 color:(id)a4 weight:(double)a5 azimuth:(double)a6
{
  v9 = a4;
  v10 = [PKInk identifierForInkType:a3];
  v11 = [PKInk inkWithIdentifier:v10 color:v9 weight:a5 azimuth:a6];

  return v11;
}

+ (PKInk)inkWithIdentifier:(id)a3 color:(id)a4 weight:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [[PKInk alloc] initWithIdentifier:v7 color:v8 version:[PKInk currentInkVersionForInkIdentifier:?]azimuth:0, a5, 0.0];

  return v9;
}

+ (PKInk)inkWithIdentifier:(id)a3 color:(id)a4 weight:(double)a5 azimuth:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [[PKInk alloc] initWithIdentifier:v9 color:v10 version:[PKInk currentInkVersionForInkIdentifier:?]azimuth:0, a5, a6];

  return v11;
}

+ (PKInk)inkWithIdentifier:(id)a3 properties:(id)a4
{
  v4 = [a1 inkWithIdentifier:a3 properties:a4 inkVersion:-1];

  return v4;
}

+ (id)decodeColorFrom:(id)a3 propertyKey:(id)a4 inkOpacity:(double)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKeyedSubscript:v8];
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
    v13 = [MEMORY[0x1E69DC888] colorWithRed:v18 green:v19 blue:v20 alpha:a5];
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

+ (PKInk)inkWithIdentifier:(id)a3 properties:(id)a4 inkVersion:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (a5 < 0)
  {
    a5 = [a1 currentInkVersionForInkIdentifier:v9];
  }

  v11 = [v10 objectForKeyedSubscript:@"PKInkWeightProperty"];
  if (v11 && ([v10 objectForKeyedSubscript:@"PKInkWeightProperty"], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v10 objectForKeyedSubscript:@"PKInkWeightProperty"];
    [v12 floatValue];
    v14 = v13;
  }

  else
  {
    [PKInk defaultWeightForIdentifier:v9];
    v14 = v15;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  if ([v9 isEqualToString:@"com.apple.ink.eraser"])
  {
    v16 = [v10 objectForKeyedSubscript:@"PKInkVersionProperty"];
    if (v16)
    {
    }

    else if (fabs(v14 + -1.0) < 0.00999999978)
    {
      [a1 defaultWeightForIdentifier:v9];
      v14 = v17;
    }
  }

  v18 = [v10 objectForKeyedSubscript:@"PKInkAzimuthProperty"];
  if (v18)
  {
    v5 = [v10 objectForKeyedSubscript:@"PKInkAzimuthProperty"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v10 objectForKeyedSubscript:@"PKInkAzimuthProperty"];
      [v19 floatValue];
      v21 = v20;

LABEL_17:
      goto LABEL_18;
    }
  }

  [PKInk defaultAzimuthForIdentifier:v9];
  v21 = v22;
  if (v18)
  {
    goto LABEL_17;
  }

LABEL_18:

  v23 = [v10 objectForKeyedSubscript:@"PKInkOpacityProperty"];
  if (v23 && ([v10 objectForKeyedSubscript:@"PKInkOpacityProperty"], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = [v10 objectForKeyedSubscript:@"PKInkOpacityProperty"];
    [v24 floatValue];
    v26 = v25;
  }

  else
  {
    [PKInk defaultOpacityForIdentifier:v9];
    v26 = v27;
    if (!v23)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  v28 = [a1 decodeColorFrom:v10 propertyKey:@"PKInkColorProperty" inkOpacity:v26];
  if (!v28)
  {
    v28 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:v26];
  }

  v29 = [a1 decodeColorFrom:v10 propertyKey:@"PKInkHDRColorProperty" inkOpacity:v26];
  v30 = [v10 objectForKeyedSubscript:@"PKInkHDRHeadroomProperty"];
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

  v33 = [v10 objectForKeyedSubscript:@"PKInkVariantProperty"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v33 = 0;
  }

  v34 = [[PKInk alloc] initWithUncheckedIdentifier:v9 color:v28 hdrColor:v29 hdrHeadroom:a5 version:v33 variant:v31 weight:v14 azimuth:v21];

  return v34;
}

- (PKInk)initWithInkType:(PKInkType)type color:(UIColor *)color
{
  v6 = color;
  v7 = [PKInk identifierForInkType:type];
  v8 = [(PKInk *)self initWithIdentifier:v7 color:v6 version:[PKInk currentInkVersionForInkIdentifier:?], 0, 0.0];

  return v8;
}

+ (int64_t)currentInkVersionForInkIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.ink.eraser"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"com.apple.ink.objectEraser"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (id)_copyWithVariant:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PKInk *)self identifier];
  v7 = [(PKInk *)self sdrColor];
  v8 = [(PKInk *)self hdrColor];
  [(PKInk *)self hdrHeadroom];
  v10 = v9;
  v11 = [(PKInk *)self version];
  [(PKInk *)self weight];
  v13 = v12;
  [(PKInk *)self _azimuth];
  v15 = [v5 initWithUncheckedIdentifier:v6 color:v7 hdrColor:v8 hdrHeadroom:v11 version:v4 variant:v10 weight:v13 azimuth:v14];

  [v15 set_weightIsUndefined:{-[PKInk _weightIsUndefined](self, "_weightIsUndefined")}];
  return v15;
}

- (id)_copyWithOriginalRequiredContentVersion
{
  v2 = self;
  objc_sync_enter(v2);
  cachedInkWithOriginalRequiredContentVersion = v2->_cachedInkWithOriginalRequiredContentVersion;
  if (!cachedInkWithOriginalRequiredContentVersion)
  {
    v4 = objc_alloc(objc_opt_class());
    v5 = [(PKInk *)v2 identifier];
    v6 = [(PKInk *)v2 sdrColor];
    v7 = [(PKInk *)v2 hdrColor];
    [(PKInk *)v2 hdrHeadroom];
    v9 = v8;
    v10 = [(PKInk *)v2 version];
    v11 = [(PKInk *)v2 variant];
    [(PKInk *)v2 weight];
    v13 = v12;
    [(PKInk *)v2 _azimuth];
    v15 = [v4 initWithUncheckedIdentifier:v5 color:v6 hdrColor:v7 hdrHeadroom:v10 version:v11 variant:v9 weight:v13 azimuth:v14];

    if (v15)
    {
      [(PKInk *)v15 set_requiredContentVersionOverride:[(PKInk *)v15 _requiredContentVersion]];
    }

    [(PKInk *)v15 set_weightIsUndefined:[(PKInk *)v2 _weightIsUndefined]];
    v16 = v2->_cachedInkWithOriginalRequiredContentVersion;
    v2->_cachedInkWithOriginalRequiredContentVersion = v15;

    cachedInkWithOriginalRequiredContentVersion = v2->_cachedInkWithOriginalRequiredContentVersion;
  }

  v17 = cachedInkWithOriginalRequiredContentVersion;
  objc_sync_exit(v2);

  return v17;
}

- (BOOL)_isFountainPenInkV2
{
  v3 = [(PKInk *)self _isFountainPenInk];
  if (v3)
  {
    LOBYTE(v3) = [(PKInk *)self requiredContentVersion]> PKContentVersion2;
  }

  return v3;
}

- (BOOL)_isWatercolorInk
{
  v2 = [(PKInk *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.watercolor"];

  return v3;
}

- (BOOL)_isCrayonInk
{
  v2 = [(PKInk *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.crayon"];

  return v3;
}

- (BOOL)_isReedCalligraphyInk
{
  v2 = [(PKInk *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.reedcalligraphy"];

  return v3;
}

- (BOOL)_isGenerationTool
{
  v2 = [(PKInk *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.generationtool"];

  return v3;
}

- (BOOL)_isCustomInk
{
  v2 = [(PKInk *)self identifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.custom"];

  return v3;
}

- (int64_t)inkFormatVersion
{
  v3 = [(PKInk *)self identifier];
  if ([v3 isEqualToString:@"com.apple.ink.pen"])
  {
    goto LABEL_8;
  }

  v4 = [(PKInk *)self identifier];
  if ([v4 isEqualToString:@"com.apple.ink.pencil"])
  {
LABEL_7:

LABEL_8:
    return 0;
  }

  v5 = [(PKInk *)self identifier];
  if ([v5 isEqualToString:@"com.apple.ink.marker"])
  {
LABEL_6:

    goto LABEL_7;
  }

  v6 = [(PKInk *)self identifier];
  if ([v6 isEqualToString:@"com.apple.ink.eraser"])
  {

    goto LABEL_6;
  }

  v8 = [(PKInk *)self identifier];
  v9 = [v8 isEqualToString:@"com.apple.ink.lasso"];

  if (v9)
  {
    return 0;
  }

  v10 = [(PKInk *)self identifier];
  if ([v10 isEqualToString:@"com.apple.ink.fountainpen"])
  {
    goto LABEL_14;
  }

  v11 = [(PKInk *)self identifier];
  if ([v11 isEqualToString:@"com.apple.ink.watercolor"])
  {

LABEL_14:
    return 1;
  }

  v12 = [(PKInk *)self identifier];
  v13 = [v12 isEqualToString:@"com.apple.ink.monoline"];

  if (v13)
  {
    return 1;
  }

  v14 = [(PKInk *)self identifier];
  v15 = [v14 isEqualToString:@"com.apple.ink.crayon"];

  if (v15)
  {
    return 2;
  }

  v16 = [(PKInk *)self identifier];
  v17 = [v16 isEqualToString:@"com.apple.ink.reedcalligraphy"];

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
  v3 = [(PKInk *)self _requiredContentVersionOverride];
  result = [(PKInk *)self _requiredContentVersion];
  if (v3 > result)
  {
    return v3;
  }

  return result;
}

- (id)identifierForArchiving
{
  v3 = [(PKInk *)self identifier];
  v4 = [v3 isEqualToString:@"com.apple.ink.monoline"];

  if (v4)
  {
    v5 = @"com.apple.ink.pen";
  }

  else
  {
    v5 = [(PKInk *)self identifier];
  }

  return v5;
}

- (id)variantForArchiving
{
  v3 = [(PKInk *)self identifier];
  v4 = [v3 isEqualToString:@"com.apple.ink.monoline"];

  if (v4)
  {
    v5 = @"fixed-width";
  }

  else
  {
    v6 = [(PKInk *)self variant];
    v7 = [v6 isEqualToString:@"default"];

    if (v7)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(PKInk *)self variant];
    }
  }

  return v5;
}

- (BOOL)_supportsCombiningStrokes
{
  v2 = [(PKInk *)self behavior];
  v3 = [v2 supportsCombiningStrokes];

  return v3;
}

- (void)_initColor:(id)a3 hdrColor:(id)a4 hdrHeadroom:(double)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && !v9)
  {
    v11 = DKUHeadroomFromColor([v8 CGColor]);
    if (v11 <= 1.0)
    {
      v10 = 0;
      v12 = 0;
      goto LABEL_14;
    }

    a5 = v11;
    v10 = v8;
    v8 = 0;
  }

  v12 = v10 != 0;
  if (v10 && !v8)
  {
    v8 = [MEMORY[0x1E69DC888] colorWithCGColor:{DKUSDRColorFromColor(objc_msgSend(v10, "CGColor"))}];
  }

  if (v8)
  {
LABEL_14:
    ConvertedToSRGB = DKUCGColorCreateConvertedToSRGB([v8 CGColor]);
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

  v14 = [MEMORY[0x1E69DC888] blackColor];
  v15 = self->_sdrColor;
  self->_sdrColor = v14;

  v8 = 0;
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

      self->_hdrHeadroom = a5;
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

+ (PKInk)inkWithIdentifier:(id)a3 color:(id)a4
{
  v5 = a3;
  v6 = a4;
  [PKInk defaultWeightForIdentifier:v5];
  v8 = [[PKInk alloc] initWithIdentifier:v5 color:v6 version:[PKInk currentInkVersionForInkIdentifier:?], 0, v7];

  return v8;
}

+ (PKInk)inkWithIdentifier:(id)a3 color:(id)a4 version:(unint64_t)a5 variant:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  [PKInk defaultWeightForIdentifier:v9];
  v13 = [[PKInk alloc] initWithIdentifier:v9 color:v10 version:a5 variant:v11 weight:v12];

  return v13;
}

+ (PKInk)inkWithIdentifier:(id)a3 color:(id)a4 variant:(id)a5
{
  v6 = a3;
  v7 = a4;
  [PKInk defaultWeightForIdentifier:v6];
  v9 = [[PKInk alloc] initWithIdentifier:v6 color:v7 version:1 variant:0 weight:v8];

  return v9;
}

- (PKInk)initWithIdentifier:(id)a3 color:(id)a4 version:(unint64_t)a5 variant:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  [PKInk defaultWeightForIdentifier:v10];
  v13 = [(PKInk *)self initWithIdentifier:v10 color:v11 version:a5 variant:v12 weight:?];

  return v13;
}

- (PKInk)initWithIdentifier:(id)a3 color:(id)a4 version:(unint64_t)a5 variant:(id)a6 weight:(double)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = +[PKInkManager defaultInkManager];
  v16 = [v15 supportedInkIdentifierFromIdentifier:v12];

  v17 = [(PKInk *)self initWithUncheckedIdentifier:v16 color:v13 version:a5 variant:v14 weight:a7];
  return v17;
}

- (PKInk)initWithIdentifier:(id)a3 color:(id)a4 version:(unint64_t)a5 variant:(id)a6 weight:(double)a7 azimuth:(double)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = +[PKInkManager defaultInkManager];
  v18 = [v17 supportedInkIdentifierFromIdentifier:v14];

  v19 = [(PKInk *)self initWithUncheckedIdentifier:v18 color:v15 hdrColor:0 hdrHeadroom:a5 version:v16 variant:0.0 weight:a7 azimuth:a8];
  return v19;
}

- (PKInk)initWithUncheckedIdentifier:(id)a3 color:(id)a4 hdrColor:(id)a5 hdrHeadroom:(double)a6 version:(unint64_t)a7 variant:(id)a8 weight:(double)a9 azimuth:(double)a10
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a8;
  v33.receiver = self;
  v33.super_class = PKInk;
  v23 = [(PKInk *)&v33 init];
  v24 = v23;
  v25 = v23;
  if (v23)
  {
    [(PKInk *)v23 _initColor:v20 hdrColor:v21 hdrHeadroom:a6];
    objc_storeStrong(&v24->_identifier, a3);
    v25->_version = a7;
    if (v22)
    {
      v26 = [v22 copy];
    }

    else
    {
      v26 = @"default";
    }

    variant = v25->_variant;
    v25->_variant = &v26->isa;

    v28 = +[PKInkManager defaultInkManager];
    v29 = [v28 inkBehaviorForIdentifier:v19 version:a7 variant:v22];
    behavior = v25->_behavior;
    v25->_behavior = v29;

    if ((*&a9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      [PKInk defaultWeightForIdentifier:v19];
      a9 = v31;
    }

    [(PKInk *)v25 setWeight:a9];
    v25->_azimuth = a10;
    [(PKInk *)v25 _setupDefaultSixChannelAddAndMultiplyColors];
    [(PKInk *)v25 _setupRequiredContentVersion];
  }

  return v25;
}

- (PKInk)initWithBehavior:(id)a3 color:(id)a4 version:(unint64_t)a5 variant:(id)a6 weight:(double)a7 azimuth:(double)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = +[PKInkManager defaultInkManager];
  v18 = [v14 identifier];
  [v17 addInkBehavior:v14 forIdentifier:v18];

  v19 = [v14 identifier];
  v20 = [(PKInk *)self initWithUncheckedIdentifier:v19 color:v15 hdrColor:0 hdrHeadroom:a5 version:v16 variant:0.0 weight:a7 azimuth:a8];

  return v20;
}

+ (id)inkFromDictionary:(id)a3 color:(id)a4 identifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [PKInk currentInkVersionForInkIdentifier:v9];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%lu", v9, v10];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%lu.%@", v9, v10, @"default"];
  v13 = [PKInkParser inkBehaviorFromDictionary:v7 identifier:v11 version:v10 variant:v12];
  v14 = [[PKInk alloc] initWithIdentifier:v9 color:v8 hdrColor:0 hdrHeadroom:v10 version:@"default" variant:v13 weight:0.0 azimuth:-1.0 behavior:0.0];
  [(PKInk *)v14 _setupRequiredContentVersion];

  return v14;
}

+ (id)sdrInkFromInk:(id)a3
{
  v3 = a3;
  v4 = [v3 hdrColor];
  if (v4)
  {
    [v3 hdrHeadroom];
    v6 = v5;

    if (v6 > 1.0)
    {
      v7 = [PKInk alloc];
      v8 = [v3 identifier];
      v9 = [v3 sdrColor];
      v10 = [v3 version];
      v11 = [v3 variant];
      [v3 weight];
      v13 = v12;
      [v3 _azimuth];
      v15 = v14;
      v16 = [v3 behavior];
      v17 = [(PKInk *)v7 initWithIdentifier:v8 color:v9 hdrColor:0 hdrHeadroom:v10 version:v11 variant:v16 weight:0.0 azimuth:v13 behavior:v15];

      v3 = v17;
    }
  }

  return v3;
}

+ (id)inkFromInk:(id)a3 color:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [PKInk alloc];
  v8 = [v5 identifier];
  v9 = [v5 version];
  v10 = [v5 variant];
  [v5 weight];
  v12 = v11;
  [v5 _azimuth];
  v14 = v13;
  v15 = [v5 behavior];
  v16 = [(PKInk *)v7 initWithIdentifier:v8 color:v6 hdrColor:0 hdrHeadroom:v9 version:v10 variant:v15 weight:0.0 azimuth:v12 behavior:v14];

  if ([v5 _shouldSaveRequiredContentVersionOverride])
  {
    -[PKInk set_requiredContentVersionOverride:](v16, "set_requiredContentVersionOverride:", [v5 _requiredContentVersionOverride]);
  }

  if (([v5 _shouldSaveSixChannelAddColor] & 1) != 0 || objc_msgSend(v5, "_shouldSaveSixChannelMultiplyColor"))
  {
    [(PKInk *)v16 _setupCustomizedSixChannelColors];
  }

  -[PKInk set_weightIsUndefined:](v16, "set_weightIsUndefined:", [v5 _weightIsUndefined]);

  return v16;
}

+ (id)inkFromInk:(id)a3 color:(id)a4 hdrColor:(id)a5 hdrHeadroom:(double)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [PKInk alloc];
  v13 = [v9 identifier];
  v14 = [v9 version];
  v15 = [v9 variant];
  [v9 weight];
  v17 = v16;
  [v9 _azimuth];
  v19 = v18;
  v20 = [v9 behavior];
  v21 = [(PKInk *)v12 initWithIdentifier:v13 color:v10 hdrColor:v11 hdrHeadroom:v14 version:v15 variant:v20 weight:a6 azimuth:v17 behavior:v19];

  if ([v9 _shouldSaveRequiredContentVersionOverride])
  {
    -[PKInk set_requiredContentVersionOverride:](v21, "set_requiredContentVersionOverride:", [v9 _requiredContentVersionOverride]);
  }

  if (([v9 _shouldSaveSixChannelAddColor] & 1) != 0 || objc_msgSend(v9, "_shouldSaveSixChannelMultiplyColor"))
  {
    [(PKInk *)v21 _setupCustomizedSixChannelColors];
  }

  -[PKInk set_weightIsUndefined:](v21, "set_weightIsUndefined:", [v9 _weightIsUndefined]);

  return v21;
}

+ (id)inkFromInk:(id)a3 weight:(double)a4
{
  v5 = a3;
  v6 = [PKInk alloc];
  v7 = [v5 identifier];
  v8 = [v5 sdrColor];
  v9 = [v5 hdrColor];
  [v5 hdrHeadroom];
  v11 = v10;
  v12 = [v5 version];
  v13 = [v5 variant];
  [v5 _azimuth];
  v15 = v14;
  v16 = [v5 behavior];
  v17 = [(PKInk *)v6 initWithIdentifier:v7 color:v8 hdrColor:v9 hdrHeadroom:v12 version:v13 variant:v16 weight:v11 azimuth:a4 behavior:v15];

  if ([v5 _shouldSaveRequiredContentVersionOverride])
  {
    -[PKInk set_requiredContentVersionOverride:](v17, "set_requiredContentVersionOverride:", [v5 _requiredContentVersionOverride]);
  }

  -[PKInk set_weightIsUndefined:](v17, "set_weightIsUndefined:", [v5 _weightIsUndefined]);

  return v17;
}

+ (id)inkFromInk:(id)a3 azimuth:(double)a4
{
  v5 = a3;
  v6 = [PKInk alloc];
  v7 = [v5 identifier];
  v8 = [v5 sdrColor];
  v9 = [v5 hdrColor];
  [v5 hdrHeadroom];
  v11 = v10;
  v12 = [v5 version];
  v13 = [v5 variant];
  [v5 weight];
  v15 = v14;
  v16 = [v5 behavior];
  v17 = [(PKInk *)v6 initWithIdentifier:v7 color:v8 hdrColor:v9 hdrHeadroom:v12 version:v13 variant:v16 weight:v11 azimuth:v15 behavior:a4];

  if ([v5 _shouldSaveRequiredContentVersionOverride])
  {
    -[PKInk set_requiredContentVersionOverride:](v17, "set_requiredContentVersionOverride:", [v5 _requiredContentVersionOverride]);
  }

  -[PKInk set_weightIsUndefined:](v17, "set_weightIsUndefined:", [v5 _weightIsUndefined]);

  return v17;
}

- (PKInk)initWithIdentifier:(id)a3 color:(id)a4 hdrColor:(id)a5 hdrHeadroom:(double)a6 version:(unint64_t)a7 variant:(id)a8 weight:(double)a9 azimuth:(double)a10 behavior:(id)a11
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a8;
  v25 = a11;
  v31.receiver = self;
  v31.super_class = PKInk;
  v26 = [(PKInk *)&v31 init];
  v27 = v26;
  if (v26)
  {
    [(PKInk *)v26 _initColor:v22 hdrColor:v23 hdrHeadroom:a6];
    objc_storeStrong(&v27->_identifier, a3);
    v27->_version = a7;
    v28 = [v24 copy];
    variant = v27->_variant;
    v27->_variant = v28;

    objc_storeStrong(&v27->_behavior, a11);
    v27->_weight = a9;
    v27->_azimuth = a10;
    [(PKInk *)v27 _setupDefaultSixChannelAddAndMultiplyColors];
    [(PKInk *)v27 set_requiredContentVersionOverride:[(PKInk *)v27 _requiredContentVersion]];
  }

  return v27;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKInk *)self isEqualInk:v4];

  return v5;
}

- (unint64_t)hashValueForFloat:(double)a3
{
  v3 = vcvtmd_u64_f64(a3 * 1000.0);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  return v4 ^ (v4 >> 31);
}

- (BOOL)isEqualInk:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(PKInk *)self isEqualUnweightedInk:v4]&& ([(PKInk *)self weight], v6 = v5, [(PKInk *)v4 weight], floor(v6 * 1000.0) == floor(v7 * 1000.0)))
  {
    [(PKInk *)self _azimuth];
    v9 = v8;
    [(PKInk *)v4 _azimuth];
    v11 = v9 == v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqualUnweightedInk:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_31;
  }

  v5 = [(PKInk *)self identifier];
  v6 = [(PKInk *)v4 identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(PKInk *)self sdrColor];
    v8 = [v7 CGColor];
    v9 = [(PKInk *)v4 sdrColor];
    if (DKUColorIsEqualToColorIgnoringOpacityWithTolerance(v8, [v9 CGColor], 0, 0.000000999999997))
    {
      v10 = [(PKInk *)self hdrColor];
      v11 = [v10 CGColor];
      v12 = [(PKInk *)v4 hdrColor];
      v13 = [v12 CGColor];
      if (v11 == v13 || !v11 || !v13 || DKUColorIsEqualToColorIgnoringOpacityWithTolerance(v11, v13, 0, 0.000000999999997))
      {
        v14 = [(PKInk *)self version];
        if (v14 == [(PKInk *)v4 version])
        {
          [(PKInk *)self _sixChannelAddColor];
          v36 = v15;
          [(PKInk *)v4 _sixChannelAddColor];
          v17 = vsubq_f32(v36, v16);
          if (fabsf(v17.f32[0]) < 0.01 && fabsf(v17.f32[1]) < 0.01 && fabsf(v17.f32[2]) < 0.01 && fabsf(v17.f32[3]) < 0.01)
          {
            [(PKInk *)self _sixChannelMultiplyColor];
            v37 = v18;
            [(PKInk *)v4 _sixChannelMultiplyColor];
            if (DKDNearlyEqualVectorFloat4(v37, v19))
            {
              [(PKInk *)self _hdrAddColor];
              v38 = v20;
              [(PKInk *)v4 _hdrAddColor];
              if (DKDNearlyEqualVectorFloat4(v38, v21))
              {
                [(PKInk *)self _hdrMultiplyColor];
                v39 = v22;
                [(PKInk *)v4 _hdrMultiplyColor];
                if (DKDNearlyEqualVectorFloat4(v39, v23))
                {
                  [(PKInk *)self hdrHeadroom];
                  v25 = v24;
                  [(PKInk *)v4 hdrHeadroom];
                  if (vabdd_f64(v25, v26) < 0.00999999978)
                  {
                    v27 = [(PKInk *)self _requiredContentVersionOverride];
                    v28 = [(PKInk *)v4 _requiredContentVersionOverride];

                    if (v27 != v28)
                    {
                      v30 = 0;
                      goto LABEL_32;
                    }

                    v29 = [(PKInk *)self variant];
                    if (v29)
                    {

LABEL_27:
                      v32 = [(PKInk *)self variant];
                      v33 = [(PKInk *)v4 variant];
                      v7 = v32;
                      v34 = v33;
                      v9 = v34;
                      if (v7 == v34)
                      {
                        v30 = 1;
                      }

                      else
                      {
                        v30 = 0;
                        if (v7 && v34)
                        {
                          v30 = [v7 isEqualToString:v34];
                        }
                      }

                      v6 = v9;
                      v5 = v7;
                      goto LABEL_23;
                    }

                    v31 = [(PKInk *)v4 variant];

                    if (v31)
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
  v3 = [(PKInk *)self identifier];
  v4 = [v3 hash];
  v5 = [(PKInk *)self sdrColor];
  v6 = [v5 hash];
  v7 = [(PKInk *)self version];
  v8 = [(PKInk *)self variant];
  v9 = [v8 hash];
  [(PKInk *)self weight];
  v11 = [(PKInk *)self hashValueForFloat:v10 + 1.0];
  v12 = v6 ^ v4 ^ v7 ^ v9 ^ [(PKInk *)self _requiredContentVersionOverride];

  return v12 ^ v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PKInk *)self identifier];
  v7 = [(PKInk *)self sdrColor];
  v8 = [(PKInk *)self variant];
  v9 = [v3 stringWithFormat:@"<%@ %p %@ %@ %@ %lu>", v5, self, v6, v7, v8, -[PKInk version](self, "version")];

  return v9;
}

+ (double)defaultWeightForIdentifier:(id)a3
{
  v3 = a3;
  v4 = -0.5;
  if (([v3 isEqual:@"com.apple.ink.marker"] & 1) == 0)
  {
    if ([v3 isEqual:@"com.apple.ink.pencil"])
    {
      v4 = -1.0;
    }

    else if (([v3 isEqual:@"com.apple.ink.pen"] & 1) == 0)
    {
      if (([v3 isEqual:@"com.apple.ink.watercolor"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"com.apple.ink.fountainpen") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"com.apple.ink.monoline") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"com.apple.ink.crayon") & 1) != 0 || (v4 = -1.0, objc_msgSend(v3, "isEqual:", @"com.apple.ink.reedcalligraphy")))
      {
        [PKInkingTool defaultWidthForInkType:v3];
        v4 = v5;
      }
    }
  }

  return v4;
}

+ (double)defaultOpacityForIdentifier:(id)a3
{
  v3 = a3;
  v4 = 0.5;
  if (([v3 isEqual:@"com.apple.ink.pencil"] & 1) == 0)
  {
    v4 = 1.0;
    if (([v3 isEqual:@"com.apple.ink.pen"] & 1) == 0)
    {
      if ([v3 isEqual:@"com.apple.ink.marker"])
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

+ (double)defaultAzimuthForIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  if (![a3 isEqualToString:@"com.apple.ink.reedcalligraphy"])
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
  v2 = [a1 behavior];
  v3 = [v2 renderingDescriptor];
  v4 = [v3 blendMode];

  result = 0;
  if (v4 <= 4 && ((1 << v4) & 0x15) != 0)
  {
    v6 = [a1[12] CGColor];
    v7[0] = __const_DKUColorGetVectorFloat3_rgba;
    v7[1] = unk_1C801E8B0;
    DKUColorGetRGBAComponents(v6, v7);
    return vcvt_f32_f64(v7[0]);
  }

  return result;
}

- (float32x2_t)_defaultHDRMultiplyColor
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [a1 behavior];
  v3 = [v2 renderingDescriptor];
  v4 = [v3 blendMode];

  if ((v4 | 2) == 3)
  {
    v5 = [a1[12] CGColor];
    v7[0] = __const_DKUColorGetVectorFloat3_rgba;
    v7[1] = unk_1C801E8B0;
    DKUColorGetRGBAComponents(v5, v7);
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
  v3 = [(PKInk *)self hdrColor];
  if (v3)
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
  v3 = [(PKInk *)self hdrColor];
  if (v3)
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
  v2 = [(PKInk *)self behavior];
  v3 = [v2 secondaryParticleDescriptor];

  if (v3)
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
  v3 = [(PKInk *)self behavior];
  v4 = [v3 particleDescriptor];

  if (!v4)
  {
    return self && [(PKInk *)self _isFountainPenInkV2];
  }

  v5 = [v4 particleRotation];

  return v5;
}

- (void)setWeight:(double)a3
{
  v3 = a3;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v5 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_ERROR, "Weight must be a finite number", buf, 2u);
    }

    v6 = [(PKInk *)self identifier];
    [PKInk defaultWeightForIdentifier:v6];
    v3 = v7;
  }

  v8 = [(PKInk *)self identifier];
  if ([v8 isEqualToString:@"com.apple.ink.custom"])
  {

LABEL_8:
    v11 = v3;
    goto LABEL_9;
  }

  v9 = [(PKInk *)self behavior];
  v10 = [v9 useUnclampedWeight];

  if (v10)
  {
    goto LABEL_8;
  }

  if (fabs(v3) > 1.0)
  {
    v12 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_ERROR, "Ink expects an adjustment size between -1 and 1", v13, 2u);
    }
  }

  v11 = -1.0;
  if (v3 >= -1.0)
  {
    v11 = v3;
    if (v3 > 1.0)
    {
      v11 = 1.0;
    }
  }

LABEL_9:
  self->_weight = v11;
}

- (BOOL)_isStrokeGeneratingInk
{
  v2 = [(PKInk *)self identifier];
  if ([v2 isEqualToString:@"com.apple.ink.lasso"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.ink.eraser") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.ink.objectEraser"))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [v2 isEqualToString:@"com.apple.ink.generationtool"] ^ 1;
  }

  return v3;
}

- (id)_dataInUnknownFields
{
  ptr = self->_unknownFields.__ptr_;
  if (ptr && (v3 = *ptr) != 0 && *v3 != v3[1])
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  }

  else
  {
    v4 = [MEMORY[0x1E695DEF0] data];
  }

  return v4;
}

- (id)colorForUIAllowHDR:(BOOL)a3
{
  if (a3)
  {
    v4 = [(PKInk *)self hdrColor];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(PKInk *)self sdrColor];
    }

    v7 = v6;
  }

  else
  {
    v7 = [(PKInk *)self sdrColor];
  }

  return v7;
}

+ (id)identifierForCommandType:(unsigned int)a3 wantsObjectErase:(BOOL)a4
{
  v11[5] = *MEMORY[0x1E69E9840];
  if (a3 == 3)
  {
    v4 = @"com.apple.ink.eraser";
    if (a4)
    {
      v4 = @"com.apple.ink.objectEraser";
    }

    v5 = v4;
  }

  else if (a3 > 4)
  {
    v8 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = a3;
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
    v5 = [v7 objectAtIndexedSubscript:a3];
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
    v5 = [(PKInk *)self identifier];
    v6 = [v4 objectForKeyedSubscript:v5];

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