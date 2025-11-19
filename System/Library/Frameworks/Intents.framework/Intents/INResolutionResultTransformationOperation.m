@interface INResolutionResultTransformationOperation
- (INResolutionResultTransformationOperation)initWithResult:(id)a3 intent:(id)a4 intentSlotDescription:(id)a5 optionsProvider:(id)a6;
- (void)start;
@end

@implementation INResolutionResultTransformationOperation

- (void)start
{
  self->_executing = 1;
  v3 = [(INResolutionResultTransformationOperation *)self result];
  v4 = [(INResolutionResultTransformationOperation *)self intent];
  v5 = [(INResolutionResultTransformationOperation *)self intentSlotDescription];
  v6 = [(INResolutionResultTransformationOperation *)self optionsProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__INResolutionResultTransformationOperation_start__block_invoke;
  v7[3] = &unk_1E7284088;
  v7[4] = self;
  [v3 transformResolutionResultForIntent:v4 intentSlotDescription:v5 withOptionsProvider:v6 completion:v7];
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

- (INResolutionResultTransformationOperation)initWithResult:(id)a3 intent:(id)a4 intentSlotDescription:(id)a5 optionsProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = INResolutionResultTransformationOperation;
  v15 = [(INResolutionResultTransformationOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_result, a3);
    objc_storeStrong(&v16->_intent, a4);
    objc_storeStrong(&v16->_intentSlotDescription, a5);
    objc_storeStrong(&v16->_optionsProvider, a6);
  }

  return v16;
}

@end