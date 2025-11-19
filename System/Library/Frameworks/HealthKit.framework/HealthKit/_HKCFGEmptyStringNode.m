@interface _HKCFGEmptyStringNode
+ (id)nodeWithEvaluator:(id)a3;
@end

@implementation _HKCFGEmptyStringNode

+ (id)nodeWithEvaluator:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRangeOfString:{0, 0}];
  v6 = [v4 copy];

  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

@end