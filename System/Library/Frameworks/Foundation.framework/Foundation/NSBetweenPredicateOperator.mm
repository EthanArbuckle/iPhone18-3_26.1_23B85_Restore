@interface NSBetweenPredicateOperator
- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSBetweenPredicateOperator

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  operatorType = [(NSBetweenPredicateOperator *)self operatorType];
  modifier = [(NSPredicateOperator *)self modifier];

  return [v4 _newOperatorWithType:operatorType modifier:modifier options:0];
}

- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject
{
  result = 0;
  if (!object || !andObject)
  {
    return result;
  }

  if ((_NSIsNSArray() & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    andObject = [NSString stringWithFormat:@"Can't use between operator with rhs %@ (not an array)", andObject];
    goto LABEL_13;
  }

  if ([andObject count] != 2)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    andObject = [NSString stringWithFormat:@"Can't use between operator with rhs %@ (wrong number of elements)", andObject];
LABEL_13:
    objc_exception_throw([v11 exceptionWithName:v12 reason:andObject userInfo:0]);
  }

  selector = [(NSPredicateOperator *)self selector];
  v9 = [andObject objectAtIndex:0];
  v10 = [andObject objectAtIndex:1];
  if ([v9 selector] == 1)
  {
    v9 = [andObject objectAtIndex:1];
    v10 = [andObject objectAtIndex:0];
  }

  return [v9 selector] + 1 <= 1 && objc_msgSend(object, selector, v10) + 1 < 2;
}

@end