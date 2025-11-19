@interface HKFitnessMachineConnectionInitiator
@end

@implementation HKFitnessMachineConnectionInitiator

void __60___HKFitnessMachineConnectionInitiator_initWithHealthStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained registerClientIfNeeded];
}

void __63___HKFitnessMachineConnectionInitiator__fetchProxyWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 connectionInitiator:*(a1 + 32) failedWithError:v4];
}

@end