@interface WFConcreteStatisticsSampleProvider
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation WFConcreteStatisticsSampleProvider

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [(WFConcreteStatisticsSampleProvider *)self sampleProvider];
  [v4 invokeWithTarget:v5];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(WFConcreteStatisticsSampleProvider *)self sampleProvider];
  v5 = [v4 methodSignatureForSelector:a3];

  return v5;
}

@end