@interface CASDFVisualizationEffect
+ (id)defaultValues;
- (void)configureLayer:(void *)a3 transaction:(void *)a4;
@end

@implementation CASDFVisualizationEffect

- (void)configureLayer:(void *)a3 transaction:(void *)a4
{
  *(a3 + 136) = 0;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
}

+ (id)defaultValues
{
  if (+[CASDFVisualizationEffect defaultValues]::once != -1)
  {
    dispatch_once(&+[CASDFVisualizationEffect defaultValues]::once, &__block_literal_global_20361);
  }

  return +[CASDFVisualizationEffect defaultValues]::dict;
}

id __41__CASDFVisualizationEffect_defaultValues__block_invoke()
{
  result = MEMORY[0x1E695E0F8];
  +[CASDFVisualizationEffect defaultValues]::dict = result;
  return result;
}

@end