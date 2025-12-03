@interface _RouteTrafficFeatureCalculatorCompletionStructure
- (_RouteTrafficFeatureCalculatorCompletionStructure)initWithQueue:(id)queue handler:(id)handler;
@end

@implementation _RouteTrafficFeatureCalculatorCompletionStructure

- (_RouteTrafficFeatureCalculatorCompletionStructure)initWithQueue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = _RouteTrafficFeatureCalculatorCompletionStructure;
  v9 = [(_RouteTrafficFeatureCalculatorCompletionStructure *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_completionQueue, queue);
    v11 = objc_retainBlock(handlerCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

@end