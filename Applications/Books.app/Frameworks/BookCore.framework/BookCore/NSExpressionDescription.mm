@interface NSExpressionDescription
+ (id)IMCoreDataObjectIDExpression;
@end

@implementation NSExpressionDescription

+ (id)IMCoreDataObjectIDExpression
{
  v2 = objc_opt_new();
  [v2 setName:@"objectID"];
  v3 = +[NSExpression expressionForEvaluatedObject];
  [v2 setExpression:v3];

  [v2 setExpressionResultType:2000];

  return v2;
}

@end