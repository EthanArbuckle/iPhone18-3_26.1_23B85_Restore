@interface WFConcreteStatisticsSampleProvider
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation WFConcreteStatisticsSampleProvider

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  sampleProvider = [(WFConcreteStatisticsSampleProvider *)self sampleProvider];
  [invocationCopy invokeWithTarget:sampleProvider];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  sampleProvider = [(WFConcreteStatisticsSampleProvider *)self sampleProvider];
  v5 = [sampleProvider methodSignatureForSelector:selector];

  return v5;
}

@end