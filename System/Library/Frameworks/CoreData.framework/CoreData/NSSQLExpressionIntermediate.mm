@interface NSSQLExpressionIntermediate
- (NSSQLExpressionIntermediate)initWithExpression:(id)expression allowToMany:(BOOL)many inScope:(id)scope;
@end

@implementation NSSQLExpressionIntermediate

- (NSSQLExpressionIntermediate)initWithExpression:(id)expression allowToMany:(BOOL)many inScope:(id)scope
{
  v8.receiver = self;
  v8.super_class = NSSQLExpressionIntermediate;
  result = [(NSSQLIntermediate *)&v8 initWithScope:scope];
  if (result)
  {
    result->_expression = expression;
    result->_allowToMany = many;
  }

  return result;
}

@end