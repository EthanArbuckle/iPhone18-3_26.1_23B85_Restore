@interface AXFrontBoardFilterFrontmostAppProcessesAndScenesForSiri
@end

@implementation AXFrontBoardFilterFrontmostAppProcessesAndScenesForSiri

void ___AXFrontBoardFilterFrontmostAppProcessesAndScenesForSiri_block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v12 = [v5 valueForKey:@"process"];
  v6 = [v5 valueForKey:@"scene"];

  [v6 accessibilitySceneLevel];
  v8 = v7;

  v9 = [v12 bundleIdentifier];
  LODWORD(v6) = [v9 isEqualToString:*MEMORY[0x277CE6918]];

  if (v6)
  {
    *(*(a1[4] + 8) + 24) = a3;
    *(*(a1[5] + 8) + 24) = v8;
  }

  if (v8 > *(*(a1[6] + 8) + 24))
  {
    v10 = [v12 bundleIdentifier];
    v11 = [v10 isEqualToString:*MEMORY[0x277CE68F8]];

    if ((v11 & 1) == 0)
    {
      *(*(a1[6] + 8) + 24) = v8;
    }
  }
}

@end