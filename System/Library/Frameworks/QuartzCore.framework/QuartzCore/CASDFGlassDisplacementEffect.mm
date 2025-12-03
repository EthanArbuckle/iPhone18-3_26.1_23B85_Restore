@interface CASDFGlassDisplacementEffect
+ (id)defaultValues;
- (id)copyWithZone:(_NSZone *)zone;
- (void)configureLayer:(void *)layer transaction:(void *)transaction;
@end

@implementation CASDFGlassDisplacementEffect

+ (id)defaultValues
{
  if (+[CASDFGlassDisplacementEffect defaultValues]::once != -1)
  {
    dispatch_once(&+[CASDFGlassDisplacementEffect defaultValues]::once, &__block_literal_global_539);
  }

  return +[CASDFGlassDisplacementEffect defaultValues]::dict;
}

void *__45__CASDFGlassDisplacementEffect_defaultValues__block_invoke()
{
  result = &unk_1EF22FCF0;
  +[CASDFGlassDisplacementEffect defaultValues]::dict = result;
  return result;
}

- (void)configureLayer:(void *)layer transaction:(void *)transaction
{
  [(CASDFGlassDisplacementEffect *)self height:layer];
  v7 = v6;
  [(CASDFGlassDisplacementEffect *)self curvature];
  if (v8 > 1.0 || ([(CASDFGlassDisplacementEffect *)self curvature], v9 = 0.0, v10 >= 0.0))
  {
    [(CASDFGlassDisplacementEffect *)self curvature];
    v9 = 1.0;
    if (v11 <= 1.0)
    {
      [(CASDFGlassDisplacementEffect *)self curvature];
      v9 = v12;
    }
  }

  [(CASDFGlassDisplacementEffect *)self angle];
  v15 = v14;
  [(CASDFGlassDisplacementEffect *)self maskOffset];
  *(layer + 136) = 7;
  *&v16 = v16;
  v13 = v7;
  *(layer + 6) = v13;
  *(layer + 7) = v9;
  *(layer + 8) = v15;
  *(layer + 9) = LODWORD(v16);
  *(layer + 40) = 0u;
  *(layer + 56) = 0u;
  *(layer + 72) = 0u;
  *(layer + 88) = 0u;
  *(layer + 104) = 0u;
  *(layer + 120) = 0u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CASDFGlassDisplacementEffect;
  result = [(CASDFEffect *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 1) = *&self->_height;
    *(result + 2) = *&self->_curvature;
    *(result + 3) = *&self->_angle;
    *(result + 4) = *&self->_maskOffset;
  }

  return result;
}

@end