@interface CASDFOutputEffect
+ (id)defaultValues;
- (id)copyWithZone:(_NSZone *)zone;
- (void)configureLayer:(void *)layer transaction:(void *)transaction;
@end

@implementation CASDFOutputEffect

+ (id)defaultValues
{
  if (+[CASDFOutputEffect defaultValues]::once != -1)
  {
    dispatch_once(&+[CASDFOutputEffect defaultValues]::once, &__block_literal_global_111);
  }

  return +[CASDFOutputEffect defaultValues]::dict;
}

void *__34__CASDFOutputEffect_defaultValues__block_invoke()
{
  result = &unk_1EF22FCC8;
  +[CASDFOutputEffect defaultValues]::dict = result;
  return result;
}

- (void)configureLayer:(void *)layer transaction:(void *)transaction
{
  [(CASDFOutputEffect *)self minimum:layer];
  v7 = v6;
  [(CASDFOutputEffect *)self maximum];
  *(layer + 136) = 1;
  *&v8 = v8;
  *(layer + 6) = v7;
  *(layer + 7) = LODWORD(v8);
  *(layer + 2) = 0u;
  *(layer + 3) = 0u;
  *(layer + 4) = 0u;
  *(layer + 5) = 0u;
  *(layer + 6) = 0u;
  *(layer + 7) = 0u;
  *(layer + 16) = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CASDFOutputEffect;
  result = [(CASDFEffect *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 1) = *&self->_minimum;
    *(result + 2) = *&self->_maximum;
  }

  return result;
}

@end