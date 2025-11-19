@interface ACPluginDBDirectory
@end

@implementation ACPluginDBDirectory

uint64_t __50___ACPluginDBDirectory_eventStreamCallback_flags___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  result = *(a1 + 32);
  if (*(v3 + 8) == *(result + 88))
  {
    [result bundlesChanged:*(result + 80) shouldRescan:*(result + 96)];
    *(*(a1 + 32) + 88) = 0;
    *(*(a1 + 32) + 96) = 0;
    v4 = *(*(a1 + 32) + 80);

    return [v4 removeAllObjects];
  }

  return result;
}

@end