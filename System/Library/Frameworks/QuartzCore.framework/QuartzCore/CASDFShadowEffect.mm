@interface CASDFShadowEffect
+ (id)defaultValues;
- (CGSize)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (void)configureLayer:(void *)layer transaction:(void *)transaction;
- (void)dealloc;
@end

@implementation CASDFShadowEffect

+ (id)defaultValues
{
  if (+[CASDFShadowEffect defaultValues]::once != -1)
  {
    dispatch_once(&+[CASDFShadowEffect defaultValues]::once, &__block_literal_global_287);
  }

  return +[CASDFShadowEffect defaultValues]::dict;
}

id __34__CASDFShadowEffect_defaultValues__block_invoke()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1EF22F960;
  v1[0] = @"radius";
  v1[1] = @"offset";
  v2[1] = [MEMORY[0x1E696B098] valueWithSize:{0.0, -10.0}];
  v1[2] = @"color";
  v2[2] = CGColorGetConstantColor(*MEMORY[0x1E695F088]);
  v2[3] = MEMORY[0x1E695E110];
  v1[3] = @"punchout";
  v1[4] = @"invert";
  v2[4] = MEMORY[0x1E695E110];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:5];
  +[CASDFShadowEffect defaultValues]::dict = result;
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
  v4.super_class = CASDFShadowEffect;
  [(CASDFShadowEffect *)&v4 dealloc];
}

- (CGSize)offset
{
  width = self->_offset.width;
  height = self->_offset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)configureLayer:(void *)layer transaction:(void *)transaction
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0uLL;
  v21 = 0;
  color = [(CASDFShadowEffect *)self color];
  if (color)
  {
    v9 = color;
    v10 = CA::Context::current_colorspace(transaction, v8);
    CA::Render::convert_cgcolor(v9, v10, &v20, 0, v11);
  }

  [(CASDFShadowEffect *)self radius];
  v13 = v12;
  [(CASDFShadowEffect *)self offset];
  v15 = v14;
  [(CASDFShadowEffect *)self offset];
  v17 = v16;
  punchout = [(CASDFShadowEffect *)self punchout];
  if ([(CASDFShadowEffect *)self invert])
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  *(layer + 136) = 5;
  *(layer + 6) = v13;
  *(layer + 7) = v15;
  *(layer + 8) = v17;
  *(layer + 36) = v20;
  *(layer + 13) = v21;
  *(layer + 56) = v19 | punchout;
  *(layer + 57) = 0u;
  *(layer + 73) = 0u;
  *(layer + 89) = 0u;
  *(layer + 105) = 0u;
  *(layer + 120) = 0u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CASDFShadowEffect;
  v4 = [(CASDFEffect *)&v6 copyWithZone:zone];
  if (v4)
  {
    v4[2] = CGColorRetain(self->_color);
    v4[3] = *&self->_radius;
    *(v4 + 2) = self->_offset;
    *(v4 + 8) = self->_punchout;
    *(v4 + 9) = self->_invert;
  }

  return v4;
}

@end