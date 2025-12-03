@interface _HKCFGEmptyStringNode
+ (id)nodeWithEvaluator:(id)evaluator;
@end

@implementation _HKCFGEmptyStringNode

+ (id)nodeWithEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  v5 = [[self alloc] initWithRangeOfString:{0, 0}];
  v6 = [evaluatorCopy copy];

  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

@end