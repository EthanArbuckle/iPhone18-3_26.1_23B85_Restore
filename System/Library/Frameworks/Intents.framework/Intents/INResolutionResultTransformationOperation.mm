@interface INResolutionResultTransformationOperation
- (INResolutionResultTransformationOperation)initWithResult:(id)result intent:(id)intent intentSlotDescription:(id)description optionsProvider:(id)provider;
- (void)start;
@end

@implementation INResolutionResultTransformationOperation

- (void)start
{
  self->_executing = 1;
  result = [(INResolutionResultTransformationOperation *)self result];
  intent = [(INResolutionResultTransformationOperation *)self intent];
  intentSlotDescription = [(INResolutionResultTransformationOperation *)self intentSlotDescription];
  optionsProvider = [(INResolutionResultTransformationOperation *)self optionsProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__INResolutionResultTransformationOperation_start__block_invoke;
  v7[3] = &unk_1E7284088;
  v7[4] = self;
  [result transformResolutionResultForIntent:intent intentSlotDescription:intentSlotDescription withOptionsProvider:optionsProvider completion:v7];
}

void __50__INResolutionResultTransformationOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [*(a1 + 32) willChangeValueForKey:@"executing"];
  *(*(a1 + 32) + 249) = 0;
  [*(a1 + 32) didChangeValueForKey:@"executing"];
  v3 = [*(a1 + 32) returnBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) returnBlock];
    (v4)[2](v4, v7);
  }

  [*(a1 + 32) willChangeValueForKey:@"finished"];
  *(*(a1 + 32) + 248) = 1;
  [*(a1 + 32) didChangeValueForKey:@"finished"];
  v5 = [*(a1 + 32) completionBlock];

  if (v5)
  {
    v6 = [*(a1 + 32) completionBlock];
    v6[2]();
  }
}

- (INResolutionResultTransformationOperation)initWithResult:(id)result intent:(id)intent intentSlotDescription:(id)description optionsProvider:(id)provider
{
  resultCopy = result;
  intentCopy = intent;
  descriptionCopy = description;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = INResolutionResultTransformationOperation;
  v15 = [(INResolutionResultTransformationOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_result, result);
    objc_storeStrong(&v16->_intent, intent);
    objc_storeStrong(&v16->_intentSlotDescription, description);
    objc_storeStrong(&v16->_optionsProvider, provider);
  }

  return v16;
}

@end