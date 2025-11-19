@interface ATXModeFaceLandscapeLayoutThreeSmallAndTwoRectangular
- (BOOL)assignComplicationsFromCandidates:(id)a3 forSuggestedFace:(id)a4;
@end

@implementation ATXModeFaceLandscapeLayoutThreeSmallAndTwoRectangular

- (BOOL)assignComplicationsFromCandidates:(id)a3 forSuggestedFace:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 _pas_filteredArrayWithTest:&__block_literal_global_110];
  v8 = [v6 _pas_filteredArrayWithTest:&__block_literal_global_12];

  v9 = objc_opt_new();
  v10 = [v8 count];
  if (v10 >= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v8 subarrayWithRange:{0, v11}];
  [v9 addObjectsFromArray:v12];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__ATXModeFaceLandscapeLayoutThreeSmallAndTwoRectangular_assignComplicationsFromCandidates_forSuggestedFace___block_invoke_3;
  v19[3] = &unk_278599B90;
  v20 = v9;
  v13 = v9;
  v14 = [v7 _pas_filteredArrayWithTest:v19];

  v15 = [v14 count];
  if (v15 >= 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = v15;
  }

  v17 = [v14 subarrayWithRange:{0, v16}];

  [v13 addObjectsFromArray:v17];
  [v5 setLandscapeComplications:v13];

  return 1;
}

uint64_t __108__ATXModeFaceLandscapeLayoutThreeSmallAndTwoRectangular_assignComplicationsFromCandidates_forSuggestedFace___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEB410];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 extensionBundleIdentifier];
  v7 = [v4 kind];
  v8 = [v4 containerBundleIdentifier];
  v9 = [v4 intent];

  v10 = [v5 initWithExtensionBundleIdentifier:v6 kind:v7 containerBundleIdentifier:v8 widgetFamily:1 intent:v9 source:4];
  LODWORD(a1) = [*(a1 + 32) containsObject:v10];

  return a1 ^ 1;
}

@end