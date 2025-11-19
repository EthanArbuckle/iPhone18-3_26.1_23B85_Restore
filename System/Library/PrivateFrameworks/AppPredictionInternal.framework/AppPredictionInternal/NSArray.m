@interface NSArray
@end

@implementation NSArray

uint64_t __96__NSArray_UpcomingMedia__atx_filterPlayMediaIntentsWithUnavailableAppDestinationGivenSBAppList___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a1[6] object:a1[4] file:@"ATXMediaActionPrediction.mm" lineNumber:38 description:@"element of the array should comform to ATXActionPredictionContainer"];
  }

  v4 = [v3 scoredAction];
  v5 = [v4 predictedItem];

  v6 = [v5 intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a1[6] object:a1[4] file:@"ATXMediaActionPrediction.mm" lineNumber:42 description:@"intent should be INPlayMediaIntent"];
  }

  v8 = [v5 intent];
  v9 = [v8 proxiedBundleIdentifier];
  v10 = [v9 length];

  if (v10)
  {
    v11 = a1[5];
    v12 = [v8 proxiedBundleIdentifier];
    v13 = [v11 containsObject:v12];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

@end