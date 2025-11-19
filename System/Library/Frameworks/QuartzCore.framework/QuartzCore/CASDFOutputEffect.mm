@interface CASDFOutputEffect
+ (id)defaultValues;
- (id)copyWithZone:(_NSZone *)a3;
- (void)configureLayer:(void *)a3 transaction:(void *)a4;
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

- (void)configureLayer:(void *)a3 transaction:(void *)a4
{
  [(CASDFOutputEffect *)self minimum:a3];
  v7 = v6;
  [(CASDFOutputEffect *)self maximum];
  *(a3 + 136) = 1;
  *&v8 = v8;
  *(a3 + 6) = v7;
  *(a3 + 7) = LODWORD(v8);
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *(a3 + 4) = 0u;
  *(a3 + 5) = 0u;
  *(a3 + 6) = 0u;
  *(a3 + 7) = 0u;
  *(a3 + 16) = 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CASDFOutputEffect;
  result = [(CASDFEffect *)&v5 copyWithZone:a3];
  if (result)
  {
    *(result + 1) = *&self->_minimum;
    *(result + 2) = *&self->_maximum;
  }

  return result;
}

@end