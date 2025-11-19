@interface MKAutocompleteAnalyticsProvider
- (MKAutocompleteAnalyticsProvider)init;
- (id)captureNewMetrics;
- (void)updateStateWithQuery:(id)a3 queryTokens:(id)a4 visibleSuggestionEntries:(id)a5;
@end

@implementation MKAutocompleteAnalyticsProvider

- (id)captureNewMetrics
{
  v3 = [(MKAutocompleteAnalyticsProvider *)self isolationQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__42253;
  v12 = __Block_byref_object_dispose__42254;
  v13 = 0;
  v4 = [(MKAutocompleteAnalyticsProvider *)self isolationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MKAutocompleteAnalyticsProvider_captureNewMetrics__block_invoke;
  v7[3] = &unk_1E76CD7E8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __52__MKAutocompleteAnalyticsProvider_captureNewMetrics__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];

  if (v2)
  {
    v3 = [MKLocalSearchKeypressMetrics alloc];
    v12 = [*(a1 + 32) currentState];
    v4 = [v12 query];
    v5 = [*(a1 + 32) currentState];
    v6 = [v5 queryTokens];
    v7 = [*(a1 + 32) currentState];
    v8 = [v7 suggestionEntries];
    v9 = [(MKLocalSearchKeypressMetrics *)v3 initWithQuery:v4 queryTokens:v6 suggestionEntries:v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (void)updateStateWithQuery:(id)a3 queryTokens:(id)a4 visibleSuggestionEntries:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MKAutocompleteAnalyticsProvider *)self isolationQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__MKAutocompleteAnalyticsProvider_updateStateWithQuery_queryTokens_visibleSuggestionEntries___block_invoke;
  v15[3] = &unk_1E76CD0D0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __93__MKAutocompleteAnalyticsProvider_updateStateWithQuery_queryTokens_visibleSuggestionEntries___block_invoke(uint64_t a1)
{
  v2 = [[MKAutocompleteAnalyticsState alloc] initWithQuery:*(a1 + 40) queryTokens:*(a1 + 48) suggestionEntries:*(a1 + 56)];
  [*(a1 + 32) setCurrentState:v2];
}

- (MKAutocompleteAnalyticsProvider)init
{
  v12.receiver = self;
  v12.super_class = MKAutocompleteAnalyticsProvider;
  v2 = [(MKAutocompleteAnalyticsProvider *)&v12 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v3 stringWithFormat:@"%@.%@.isolationQueue.%p", v5, objc_opt_class(), v2];

    v7 = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v9;
  }

  return v2;
}

@end