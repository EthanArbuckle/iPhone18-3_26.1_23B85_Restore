@interface CNUIDataCollectorSGLogger
+ (id)loggerWithSGSuggestionsServiceProvider:(id)provider schedulerProvider:(id)schedulerProvider;
@end

@implementation CNUIDataCollectorSGLogger

uint64_t __88___CNUIDataCollectorSGLogger_logContactSearchResultSelected_contactIdentifier_bundleID___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v2 = (8 * (*(a1 + 32) != 0)) | 4u;
  }

  else
  {
    v2 = 8 * (*(a1 + 32) != 0);
  }

  return [a2 logMetricContactSearchResult:v2 recordId:? contactIdentifier:? bundleId:?];
}

void __54___CNUIDataCollectorSGLogger_performBlockWithService___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

+ (id)loggerWithSGSuggestionsServiceProvider:(id)provider schedulerProvider:(id)schedulerProvider
{
  schedulerProviderCopy = schedulerProvider;
  providerCopy = provider;
  v7 = [[_CNUIDataCollectorSGLogger alloc] initWithSuggestionsServiceProvider:providerCopy schedulerProvider:schedulerProviderCopy];

  return v7;
}

@end