@interface BSUIVibrancyShadowValues
+ (CAColorMatrix)_colorizedShadowColorMatrixForType:(SEL)type heroColor:(int64_t)color backgroundType:(id)backgroundType;
+ (CAColorMatrix)_darkeningShadowMatrix;
+ (CAColorMatrix)_shadowColorMatrixForType:(SEL)type heroColor:(int64_t)color backgroundType:(id)backgroundType;
- (CAColorMatrix)vibrantColorMatrix;
- (id)transformShadowColor:(id)color;
- (void)calculateValuesForConfiguration:(id)configuration;
@end

@implementation BSUIVibrancyShadowValues

- (void)calculateValuesForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = *(MEMORY[0x1E6979280] + 48);
  v25 = *(MEMORY[0x1E6979280] + 32);
  v26 = v5;
  v27 = *(MEMORY[0x1E6979280] + 64);
  v6 = *(MEMORY[0x1E6979280] + 16);
  v23 = *MEMORY[0x1E6979280];
  v24 = v6;
  if (configurationCopy)
  {
    v7 = configurationCopy;
    v8 = 1.0;
    do
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      effectType = [v7 effectType];
      color = [v7 color];
      +[BSUIVibrancyShadowValues _shadowColorMatrixForType:heroColor:backgroundType:](BSUIVibrancyShadowValues, "_shadowColorMatrixForType:heroColor:backgroundType:", effectType, color, [v7 backgroundType]);

      v17[2] = v25;
      v17[3] = v26;
      v17[4] = v27;
      v17[0] = v23;
      v17[1] = v24;
      v16[2] = v20;
      v16[3] = v21;
      v16[4] = v22;
      v16[0] = v18;
      v16[1] = v19;
      [v7 blendAmount];
      v12 = v11;
      blendConfiguration = [v7 blendConfiguration];

      if (!blendConfiguration)
      {
        break;
      }

      v8 = v8 * v12;
      v7 = blendConfiguration;
    }

    while (v8 > 0.00000011920929);
  }

  v14 = v26;
  *&self->_vibrantColorMatrix.m24 = v25;
  *&self->_vibrantColorMatrix.m33 = v14;
  *&self->_vibrantColorMatrix.m42 = v27;
  v15 = v24;
  *&self->_vibrantColorMatrix.m11 = v23;
  *&self->_vibrantColorMatrix.m15 = v15;
}

- (id)transformShadowColor:(id)color
{
  colorCopy = color;
  [(BSUIVibrancyShadowValues *)self vibrantColorMatrix];
  v5 = _transformUIColor(colorCopy, &v7);

  return v5;
}

+ (CAColorMatrix)_darkeningShadowMatrix
{
  *&retstr->m11 = xmmword_1A2D52990;
  *&retstr->m15 = xmmword_1A2D529A0;
  *&retstr->m24 = xmmword_1A2D529B0;
  *&retstr->m33 = xmmword_1A2D529C0;
  *&retstr->m42 = *&byte_1A2D52940[64];
  return result;
}

+ (CAColorMatrix)_shadowColorMatrixForType:(SEL)type heroColor:(int64_t)color backgroundType:(id)backgroundType
{
  backgroundTypeCopy = backgroundType;
  if (color > 1)
  {
    if (color == 3)
    {
      v10 = MEMORY[0x1E6979280];
      v11 = *(MEMORY[0x1E6979280] + 48);
      *&retstr->m24 = *(MEMORY[0x1E6979280] + 32);
      *&retstr->m33 = v11;
      *&retstr->m42 = v10[4];
      v12 = v10[1];
      *&retstr->m11 = *v10;
      *&retstr->m15 = v12;
      goto LABEL_14;
    }

    if (color != 2)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (!color)
  {
LABEL_7:
    if (!a6 || a6 == 2)
    {
      [a2 _darkeningShadowMatrix];
      goto LABEL_14;
    }

    if (a6 == 1)
    {
      [a2 _lighteningShadowMatrix];
      goto LABEL_14;
    }

LABEL_11:
    [a2 _colorizedShadowColorMatrixForType:color heroColor:backgroundTypeCopy backgroundType:a6];
    goto LABEL_14;
  }

  if (color == 1)
  {
    goto LABEL_11;
  }

LABEL_14:

  return result;
}

+ (CAColorMatrix)_colorizedShadowColorMatrixForType:(SEL)type heroColor:(int64_t)color backgroundType:(id)backgroundType
{
  v35 = 0.0;
  v36 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  [backgroundType getRed:&v36 green:&v35 blue:&v34 alpha:&v33];
  HIDWORD(v13) = HIDWORD(v36);
  *&v13 = v36;
  v9 = v35;
  HIDWORD(v10) = HIDWORD(v34);
  *&v10 = v34;
  v11 = v33;
  v12 = 0.0;
  *&v13 = ((((v9 * 0.7152) + (*&v13 * 0.2126)) + (*&v10 * 0.0722)) + (v11 * 0.0)) + 0.0;
  if (!a6 || a6 == 2)
  {
    LODWORD(v10) = 0.5;
    v17 = _curve(v13, 0.3, v10, xmmword_1A2D529D0);
    *&v18 = 1.0 - v11;
    LODWORD(v19) = 1053609165;
    v12 = (((v17 + -0.3) / 0.2) + 0.0) + ((1.0 - (((v17 + -0.3) / 0.2) + 0.0)) * (_curve(v18, 0.0, v19, xmmword_1A2D528D0) / 0.4));
  }

  else if (a6 == 1)
  {
    LODWORD(v10) = 1062836634;
    v14 = _curve(v13, 0.65, v10, xmmword_1A2D529D0);
    LODWORD(v15) = 1.0;
    *&v16 = v11;
    v12 = ((((v14 + -0.65) / 0.2) + 0.0) * ((_curve(v16, 0.6, v15, xmmword_1A2D529E0) + -0.6) / 0.4)) + 0.0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  [a2 _lighteningShadowMatrix];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  [a2 _darkeningShadowMatrix];
  v22[2] = v25;
  v22[3] = v26;
  v22[4] = v27;
  v22[0] = v23;
  v22[1] = v24;
  v21[2] = v30;
  v21[3] = v31;
  v21[4] = v32;
  v21[0] = v28;
  v21[1] = v29;
  _lerpColorMatrices(retstr, v22, v21, v12);
  return result;
}

- (CAColorMatrix)vibrantColorMatrix
{
  v3 = *&self->m44;
  *&retstr->m24 = *&self->m35;
  *&retstr->m33 = v3;
  *&retstr->m42 = *&self[1].m13;
  v4 = *&self->m31;
  *&retstr->m11 = *&self->m22;
  *&retstr->m15 = v4;
  return self;
}

@end