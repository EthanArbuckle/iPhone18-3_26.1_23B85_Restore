@interface CASDFVisualizationEffect
+ (id)defaultValues;
- (void)configureLayer:(void *)layer transaction:(void *)transaction;
@end

@implementation CASDFVisualizationEffect

- (void)configureLayer:(void *)layer transaction:(void *)transaction
{
  *(layer + 136) = 0;
  *(layer + 120) = 0u;
  *(layer + 104) = 0u;
  *(layer + 88) = 0u;
  *(layer + 72) = 0u;
  *(layer + 56) = 0u;
  *(layer + 40) = 0u;
  *(layer + 24) = 0u;
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