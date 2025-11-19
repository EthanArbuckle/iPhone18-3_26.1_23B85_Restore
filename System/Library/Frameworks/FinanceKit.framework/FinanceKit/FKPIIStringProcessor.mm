@interface FKPIIStringProcessor
- (FKPIIStringProcessor)init;
@end

@implementation FKPIIStringProcessor

- (FKPIIStringProcessor)init
{
  v6.receiver = self;
  v6.super_class = FKPIIStringProcessor;
  v2 = [(FKPIIStringProcessor *)&v6 init];
  if (v2)
  {
    v3 = +[_TtC10FinanceKit25PIIStringProcessorWrapper makeProcessor];
    wrappedProcessor = v2->_wrappedProcessor;
    v2->_wrappedProcessor = v3;
  }

  return v2;
}

@end