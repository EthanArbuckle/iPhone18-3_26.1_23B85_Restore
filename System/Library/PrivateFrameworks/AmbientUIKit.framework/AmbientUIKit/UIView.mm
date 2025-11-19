@interface UIView
@end

@implementation UIView

uint64_t __94__UIView_AmbientUI__amui_applyRedModeFilterAnimated_withCoordinatedAnimationBlock_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 filters];
  v4 = v3;
  if (!v3)
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v5 = [v3 arrayByAddingObjectsFromArray:a1[5]];
  [v2 setFilters:v5];

  result = a1[6];
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

uint64_t __94__UIView_AmbientUI__amui_clearRedModeFilterAnimated_withCoordinatedAnimationBlock_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) mutableArrayValueForKeyPath:@"filters"];
    [v2 removeObject:*(a1 + 40)];
  }

  if (*(a1 + 65) == 1)
  {
    v3 = [*(a1 + 32) mutableArrayValueForKeyPath:@"filters"];
    [v3 removeObject:*(a1 + 48)];
  }

  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

@end