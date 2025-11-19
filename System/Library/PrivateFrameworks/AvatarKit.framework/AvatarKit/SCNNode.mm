@interface SCNNode
@end

@implementation SCNNode

void __77__SCNNode_AVTExtension__avt_enableSubdivisionOnHierarchyWithQuality_animoji___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.UIKit"];
  avt_enableSubdivisionOnHierarchyWithQuality_animoji__disableSubdivision = [v0 BOOLForKey:@"avatarKit.disableSubdivision"];
}

void __77__SCNNode_AVTExtension__avt_enableSubdivisionOnHierarchyWithQuality_animoji___block_invoke_2()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    avt_enableSubdivisionOnHierarchyWithQuality_animoji__forceHighQuality = 1;
  }
}

void __77__SCNNode_AVTExtension__avt_enableSubdivisionOnHierarchyWithQuality_animoji___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 geometry];
  if (v3)
  {
    v4 = [v12 name];
    v5 = v4;
    if ((*(a1 + 40) & 1) != 0 || ([v4 isEqualToString:@"L_eye"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"R_eye") & 1) == 0)
    {
      if ([v5 hasSuffix:@"Teeth"])
      {
        v6 = avt_enableSubdivisionOnHierarchyWithQuality_animoji__forceHighQuality;
      }

      else
      {
        v7 = [v5 isEqualToString:@"tongue"];
        v6 = avt_enableSubdivisionOnHierarchyWithQuality_animoji__forceHighQuality;
        if ((avt_enableSubdivisionOnHierarchyWithQuality_animoji__forceHighQuality & 1) == 0 && (v7 & 1) == 0)
        {
          v6 = *(a1 + 32);
        }
      }

      if ((*(a1 + 40) & 1) == 0 && (([v5 containsString:@"headwear_crown"] & 1) != 0 || objc_msgSend(v5, "containsString:", @"headwear_jewels")))
      {
        v6 = 2;
      }

      v8 = [v3 tessellator];
      v9 = [v3 tessellator];

      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E697A880]);

        [v3 setTessellator:v10];
        [v3 setWantsAdaptiveSubdivision:1];
        v8 = v10;
      }

      if (v6 <= 2)
      {
        v11 = dbl_1BB4F0CF0[v6];
        [v3 setSubdivisionLevel:qword_1BB4F0CD8[v6]];
        [v8 setTessellationFactorScale:v11];
      }
    }
  }
}

void __75__SCNNode_AVTExtension__avt_setGeometryPrimitiveRangesFromFaceIndexRanges___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v5 count];
  v7 = v6 >> 1;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6 >> 1];
  if (v6 >= 2)
  {
    v9 = 1;
    do
    {
      v10 = [v5 objectAtIndexedSubscript:v9 - 1];
      v11 = [v10 unsignedIntegerValue];

      v12 = [v5 objectAtIndexedSubscript:v9];
      v13 = [v12 unsignedIntegerValue];

      v14 = [MEMORY[0x1E696B098] valueWithRange:{v11, v13}];
      [v8 addObject:v14];

      v9 += 2;
      --v7;
    }

    while (v7);
  }

  [v15 setPrimitiveRanges:v8];
}

@end