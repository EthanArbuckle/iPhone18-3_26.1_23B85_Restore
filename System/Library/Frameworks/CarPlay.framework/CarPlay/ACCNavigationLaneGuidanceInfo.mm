@interface ACCNavigationLaneGuidanceInfo
@end

@implementation ACCNavigationLaneGuidanceInfo

id __78__ACCNavigationLaneGuidanceInfo_CPAccNavInfo__initWithLaneGuidance_component___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a2 key];
  if (v3 == 3)
  {
    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) instructionVariants];
    v4 = [v11 CP_variantFittingLaneGuidanceDescription:v12];
  }

  else if (v3 == 2)
  {
    v4 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [*(a1 + 32) lanes];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [objc_alloc(MEMORY[0x277CE82E0]) initWithLane:*(*(&v15 + 1) + 8 * i) component:*(a1 + 40)];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end