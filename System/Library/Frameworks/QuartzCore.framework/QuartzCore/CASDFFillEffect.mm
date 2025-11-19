@interface CASDFFillEffect
+ (id)defaultValues;
- (id)copyWithZone:(_NSZone *)a3;
- (void)configureLayer:(void *)a3 transaction:(void *)a4;
- (void)dealloc;
@end

@implementation CASDFFillEffect

+ (id)defaultValues
{
  if (+[CASDFFillEffect defaultValues]::once != -1)
  {
    dispatch_once(&+[CASDFFillEffect defaultValues]::once, &__block_literal_global_144_20333);
  }

  return +[CASDFFillEffect defaultValues]::dict;
}

id __32__CASDFFillEffect_defaultValues__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v1 = @"color";
  v2[0] = CGColorGetConstantColor(*MEMORY[0x1E695F1E0]);
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:&v1 count:1];
  +[CASDFFillEffect defaultValues]::dict = result;
  return result;
}

- (void)configureLayer:(void *)a3 transaction:(void *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0uLL;
  v16 = 0;
  v6 = [(CASDFFillEffect *)self color];
  if (v6)
  {
    v8 = v6;
    v9 = CA::Context::current_colorspace(a4, v7);
    CA::Render::convert_cgcolor(v8, v9, &v15, 0, v10);
  }

  LODWORD(v17) = v16;
  v11 = v20;
  *(a3 + 72) = v19;
  *(a3 + 88) = v11;
  v12 = v22;
  *(a3 + 104) = v21;
  v13 = v15;
  *(a3 + 136) = 2;
  *(a3 + 120) = v12;
  *(a3 + 24) = v13;
  v14 = v17;
  *(a3 + 56) = v18;
  *(a3 + 40) = v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CASDFFillEffect;
  v4 = [(CASDFEffect *)&v6 copyWithZone:a3];
  if (v4)
  {
    v4[1] = CGColorRetain(self->_color);
  }

  return v4;
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
  v4.super_class = CASDFFillEffect;
  [(CASDFFillEffect *)&v4 dealloc];
}

@end