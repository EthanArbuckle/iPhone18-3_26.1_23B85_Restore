@interface GEOVectorTileAccessibility
- (void)enumerateVisibleBuildingsUsingBlock:(id)block;
- (void)enumerateVisibleRoadsUsingBlock:(id)block;
@end

@implementation GEOVectorTileAccessibility

- (void)enumerateVisibleBuildingsUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    AXPerformSafeBlock();
    v4 = v12[5];
    if (v4)
    {
      v5 = 0;
      do
      {
        if (v5 >= v8[3])
        {
          break;
        }

        v6 = [v4 objectAtIndexedSubscript:v5];
        if (v6)
        {
          blockCopy[2](blockCopy, v6);
        }

        ++v5;
        v4 = v12[5];
      }

      while (v4);
    }

    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v11, 8);
  }
}

uint64_t __66__GEOVectorTileAccessibility_enumerateVisibleBuildingsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) buildingFootprints];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(a1 + 32) buildingFootprintsCount];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)enumerateVisibleRoadsUsingBlock:(id)block
{
  blockCopy = block;
  v4 = blockCopy;
  if (blockCopy)
  {
    v5 = blockCopy;
    AXPerformSafeBlock();
  }
}

void __62__GEOVectorTileAccessibility_enumerateVisibleRoadsUsingBlock___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = __62__GEOVectorTileAccessibility_enumerateVisibleRoadsUsingBlock___block_invoke_2;
  v2[3] = &unk_29F2C14D8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 forEachRoad:v2];
}

@end