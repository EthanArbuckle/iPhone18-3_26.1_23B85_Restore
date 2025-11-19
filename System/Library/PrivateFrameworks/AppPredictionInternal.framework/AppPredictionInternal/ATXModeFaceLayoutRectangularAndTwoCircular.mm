@interface ATXModeFaceLayoutRectangularAndTwoCircular
- (BOOL)assignComplicationsFromCandidates:(id)a3 forSuggestedFace:(id)a4;
@end

@implementation ATXModeFaceLayoutRectangularAndTwoCircular

- (BOOL)assignComplicationsFromCandidates:(id)a3 forSuggestedFace:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 _pas_filteredArrayWithTest:&__block_literal_global_198];
  v8 = [v6 _pas_filteredArrayWithTest:&__block_literal_global_12_0];

  if ([v7 count])
  {
    v9 = objc_opt_new();
    v10 = [v7 firstObject];
    [v9 addObject:v10];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __97__ATXModeFaceLayoutRectangularAndTwoCircular_assignComplicationsFromCandidates_forSuggestedFace___block_invoke_3;
    v18[3] = &unk_278599B90;
    v19 = v7;
    v11 = [v8 _pas_filteredArrayWithTest:v18];

    v12 = [v11 count];
    v13 = v12 > 1;
    if (v12 >= 2)
    {
      v14 = [v11 count];
      if (v14 >= 2)
      {
        v15 = 2;
      }

      else
      {
        v15 = v14;
      }

      v16 = [v11 subarrayWithRange:{0, v15}];
      [v9 addObjectsFromArray:v16];
      [v5 setLayoutType:3];
      [v5 setComplications:v9];
    }
  }

  else
  {
    v13 = 0;
    v11 = v8;
  }

  return v13;
}

uint64_t __97__ATXModeFaceLayoutRectangularAndTwoCircular_assignComplicationsFromCandidates_forSuggestedFace___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEB410];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 extensionBundleIdentifier];
  v7 = [v4 kind];
  v8 = [v4 containerBundleIdentifier];
  v9 = [v4 intent];

  v10 = [v5 initWithExtensionBundleIdentifier:v6 kind:v7 containerBundleIdentifier:v8 widgetFamily:11 intent:v9 source:4];
  v11 = [*(a1 + 32) firstObject];
  LODWORD(v4) = [v10 isEqual:v11];

  return v4 ^ 1;
}

@end