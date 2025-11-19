@interface ATXAppLaunchHistogramManager
@end

@implementation ATXAppLaunchHistogramManager

void __70___ATXAppLaunchHistogramManager_enumerateInMemoryHistogramsWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 integerValue], v5);
}

void __81___ATXAppLaunchHistogramManager_enumerateInMemoryCategoricalHistogramsWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 integerValue], v5);
}

@end