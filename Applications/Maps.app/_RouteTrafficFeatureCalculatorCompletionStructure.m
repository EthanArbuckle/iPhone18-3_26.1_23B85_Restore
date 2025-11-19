@interface _RouteTrafficFeatureCalculatorCompletionStructure
- (_RouteTrafficFeatureCalculatorCompletionStructure)initWithQueue:(id)a3 handler:(id)a4;
@end

@implementation _RouteTrafficFeatureCalculatorCompletionStructure

- (_RouteTrafficFeatureCalculatorCompletionStructure)initWithQueue:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _RouteTrafficFeatureCalculatorCompletionStructure;
  v9 = [(_RouteTrafficFeatureCalculatorCompletionStructure *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_completionQueue, a3);
    v11 = objc_retainBlock(v8);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

@end