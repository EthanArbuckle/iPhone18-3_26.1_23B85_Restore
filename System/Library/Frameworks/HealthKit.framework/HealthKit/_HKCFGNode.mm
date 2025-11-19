@interface _HKCFGNode
- (_HKCFGNode)initWithRangeOfString:(_NSRange)a3;
- (_NSRange)rangeOfString;
- (id)evaluate;
@end

@implementation _HKCFGNode

- (_NSRange)rangeOfString
{
  length = self->_rangeOfString.length;
  location = self->_rangeOfString.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_HKCFGNode)initWithRangeOfString:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6.receiver = self;
  v6.super_class = _HKCFGNode;
  result = [(_HKCFGNode *)&v6 init];
  if (result)
  {
    result->_rangeOfString.location = location;
    result->_rangeOfString.length = length;
  }

  return result;
}

- (id)evaluate
{
  OUTLINED_FUNCTION_0_0();
  objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

@end