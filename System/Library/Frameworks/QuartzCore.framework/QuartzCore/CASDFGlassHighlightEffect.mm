@interface CASDFGlassHighlightEffect
+ (id)defaultValues;
- (id)copyWithZone:(_NSZone *)zone;
- (void)configureLayer:(void *)layer transaction:(void *)transaction;
- (void)dealloc;
@end

@implementation CASDFGlassHighlightEffect

+ (id)defaultValues
{
  if (+[CASDFGlassHighlightEffect defaultValues]::once != -1)
  {
    dispatch_once(&+[CASDFGlassHighlightEffect defaultValues]::once, &__block_literal_global_325);
  }

  return +[CASDFGlassHighlightEffect defaultValues]::dict;
}

id __42__CASDFGlassHighlightEffect_defaultValues__block_invoke()
{
  v2[6] = *MEMORY[0x1E69E9840];
  v1[0] = @"height";
  v1[1] = @"curvature";
  v2[0] = &unk_1EF22F9A8;
  v2[1] = &unk_1EF22B900;
  v1[2] = @"angle";
  v1[3] = @"spread";
  v2[2] = &unk_1EF22B910;
  v2[3] = &unk_1EF22B920;
  v2[4] = &unk_1EF22B930;
  v1[4] = @"amount";
  v1[5] = @"color";
  v2[5] = CGColorGetConstantColor(*MEMORY[0x1E695F1E0]);
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:6];
  +[CASDFGlassHighlightEffect defaultValues]::dict = result;
  return result;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  color = self->_color;
  if (color)
  {
    CFRelease(color);
  }

  v4.receiver = self;
  v4.super_class = CASDFGlassHighlightEffect;
  [(CASDFGlassHighlightEffect *)&v4 dealloc];
}

- (void)configureLayer:(void *)layer transaction:(void *)transaction
{
  v34 = *MEMORY[0x1E69E9840];
  v32 = 0uLL;
  v33 = 0;
  color = [(CASDFGlassHighlightEffect *)self color];
  if (color)
  {
    v9 = color;
    v10 = CA::Context::current_colorspace(transaction, v8);
    CA::Render::convert_cgcolor(v9, v10, &v32, 0, v11);
  }

  [(CASDFGlassHighlightEffect *)self height];
  v13 = v12;
  [(CASDFGlassHighlightEffect *)self curvature];
  if (v14 > 1.0 || ([(CASDFGlassHighlightEffect *)self curvature], v15 = 0.0, v16 >= 0.0))
  {
    [(CASDFGlassHighlightEffect *)self curvature];
    v15 = 1.0;
    if (v17 <= 1.0)
    {
      [(CASDFGlassHighlightEffect *)self curvature];
      v15 = v18;
    }
  }

  [(CASDFGlassHighlightEffect *)self angle];
  v20 = v19;
  [(CASDFGlassHighlightEffect *)self spread];
  v22 = v21;
  [(CASDFGlassHighlightEffect *)self amount];
  if (v23 > 1.0 || ([(CASDFGlassHighlightEffect *)self amount], v24 = 0.0, v25 >= 0.0))
  {
    [(CASDFGlassHighlightEffect *)self amount];
    v24 = 1.0;
    if (v26 <= 1.0)
    {
      [(CASDFGlassHighlightEffect *)self amount];
      v24 = v27;
    }
  }

  global = [(CASDFGlassHighlightEffect *)self global];
  *(layer + 136) = 6;
  v30 = v13;
  *(layer + 6) = v30;
  *(layer + 7) = v15;
  v29 = v20;
  *(layer + 8) = v29;
  v28 = v22;
  *(layer + 9) = v28;
  *(layer + 10) = v24;
  *(layer + 44) = v32;
  *(layer + 15) = v33;
  *(layer + 64) = global;
  *(layer + 65) = 0u;
  *(layer + 81) = 0u;
  *(layer + 97) = 0u;
  *(layer + 113) = 0u;
  *(layer + 16) = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CASDFGlassHighlightEffect;
  v4 = [(CASDFEffect *)&v6 copyWithZone:zone];
  if (v4)
  {
    v4[2] = CGColorRetain(self->_color);
    v4[3] = *&self->_height;
    v4[4] = *&self->_angle;
    v4[5] = *&self->_spread;
    v4[6] = *&self->_amount;
    v4[7] = *&self->_curvature;
    *(v4 + 8) = self->_global;
  }

  return v4;
}

@end