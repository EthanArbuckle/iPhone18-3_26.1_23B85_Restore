@interface NSSQLExpressionIntermediate
- (NSSQLExpressionIntermediate)initWithExpression:(id)a3 allowToMany:(BOOL)a4 inScope:(id)a5;
@end

@implementation NSSQLExpressionIntermediate

- (NSSQLExpressionIntermediate)initWithExpression:(id)a3 allowToMany:(BOOL)a4 inScope:(id)a5
{
  v8.receiver = self;
  v8.super_class = NSSQLExpressionIntermediate;
  result = [(NSSQLIntermediate *)&v8 initWithScope:a5];
  if (result)
  {
    result->_expression = a3;
    result->_allowToMany = a4;
  }

  return result;
}

@end