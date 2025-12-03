@interface CASDFGradientContourEffect
+ (id)defaultValues;
- (id)copyWithZone:(_NSZone *)zone;
- (void)configureLayer:(void *)layer transaction:(void *)transaction;
- (void)dealloc;
@end

@implementation CASDFGradientContourEffect

- (void)configureLayer:(void *)layer transaction:(void *)transaction
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = 0uLL;
  v34 = 0;
  startColor = [(CASDFGradientContourEffect *)self startColor];
  if (startColor)
  {
    v9 = startColor;
    v10 = CA::Context::current_colorspace(transaction, v8);
    CA::Render::convert_cgcolor(v9, v10, &v33, 0, v11);
  }

  LODWORD(v32) = 0;
  v12 = [(CASDFGradientContourEffect *)self endColor:0];
  if (v12)
  {
    v14 = v12;
    v15 = CA::Context::current_colorspace(transaction, v13);
    CA::Render::convert_cgcolor(v14, v15, &v31, 0, v16);
  }

  v35 = v33;
  *v36 = v34;
  *&v36[4] = v31;
  *&v36[20] = v32;
  [(CASDFGradientContourEffect *)self angle];
  v18 = v17;
  [(CASDFGradientContourEffect *)self radius];
  v20 = v19;
  [(CASDFGradientContourEffect *)self shadowEffectOffset];
  v22 = v21;
  [(CASDFGradientContourEffect *)self shadowGradientStart];
  v24 = v23;
  [(CASDFGradientContourEffect *)self shadowGradientEnd];
  v26 = v25;
  [(CASDFGradientContourEffect *)self shadowAlpha];
  v28 = v27;
  [(CASDFGradientContourEffect *)self gradientOffset];
  v29 = *v36;
  *(layer + 24) = v35;
  *&v30 = v30;
  *(layer + 136) = 4;
  *(layer + 40) = v29;
  *(layer + 7) = *&v36[16];
  *(layer + 16) = v18;
  *(layer + 17) = v20;
  *(layer + 18) = v22;
  *(layer + 19) = v24;
  *(layer + 20) = v26;
  *(layer + 21) = v28;
  *(layer + 22) = LODWORD(v30);
  *(layer + 92) = 0u;
  *(layer + 108) = 0u;
  *(layer + 120) = 0u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CASDFGradientContourEffect;
  v4 = [(CASDFEffect *)&v6 copyWithZone:zone];
  if (v4)
  {
    v4[1] = CGColorRetain(self->_startColor);
    v4[2] = CGColorRetain(self->_endColor);
    v4[3] = *&self->_angle;
    v4[4] = *&self->_radius;
    v4[5] = *&self->_shadowEffectOffset;
    v4[6] = *&self->_shadowGradientStart;
    v4[7] = *&self->_shadowGradientEnd;
    v4[8] = *&self->_shadowAlpha;
    v4[9] = *&self->_gradientOffset;
  }

  return v4;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  startColor = self->_startColor;
  if (startColor)
  {
    CFRelease(startColor);
  }

  endColor = self->_endColor;
  if (endColor)
  {
    CFRelease(endColor);
  }

  v5.receiver = self;
  v5.super_class = CASDFGradientContourEffect;
  [(CASDFGradientContourEffect *)&v5 dealloc];
}

+ (id)defaultValues
{
  if (+[CASDFGradientContourEffect defaultValues]::once != -1)
  {
    dispatch_once(&+[CASDFGradientContourEffect defaultValues]::once, &__block_literal_global_199_20278);
  }

  return +[CASDFGradientContourEffect defaultValues]::dict;
}

id __43__CASDFGradientContourEffect_defaultValues__block_invoke()
{
  v2[9] = *MEMORY[0x1E69E9840];
  v1[0] = @"startColor";
  v2[0] = CGColorGetConstantColor(*MEMORY[0x1E695F1E0]);
  v1[1] = @"endColor";
  v2[1] = CGColorGetConstantColor(*MEMORY[0x1E695F088]);
  v2[2] = &unk_1EF22F918;
  v1[2] = @"angle";
  v1[3] = @"radius";
  v2[3] = &unk_1EF22F960;
  v2[4] = &unk_1EF22F978;
  v1[4] = @"shadowEffectOffset";
  v1[5] = @"shadowGradientStart";
  v1[6] = @"shadowGradientEnd";
  v1[7] = @"shadowAlpha";
  v2[5] = &unk_1EF22F918;
  v2[6] = &unk_1EF22F990;
  v1[8] = @"gradientOffset";
  v2[7] = &unk_1EF22F990;
  v2[8] = &unk_1EF22F918;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:9];
  +[CASDFGradientContourEffect defaultValues]::dict = result;
  return result;
}

@end