@interface NSBetweenPredicateOperator
- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSBetweenPredicateOperator

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(NSBetweenPredicateOperator *)self operatorType];
  v6 = [(NSPredicateOperator *)self modifier];

  return [v4 _newOperatorWithType:v5 modifier:v6 options:0];
}

- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4
{
  result = 0;
  if (!a3 || !a4)
  {
    return result;
  }

  if ((_NSIsNSArray() & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = [NSString stringWithFormat:@"Can't use between operator with rhs %@ (not an array)", a4];
    goto LABEL_13;
  }

  if ([a4 count] != 2)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = [NSString stringWithFormat:@"Can't use between operator with rhs %@ (wrong number of elements)", a4];
LABEL_13:
    objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:0]);
  }

  v8 = [(NSPredicateOperator *)self selector];
  v9 = [a4 objectAtIndex:0];
  v10 = [a4 objectAtIndex:1];
  if ([v9 v8] == 1)
  {
    v9 = [a4 objectAtIndex:1];
    v10 = [a4 objectAtIndex:0];
  }

  return [v9 v8] + 1 <= 1 && objc_msgSend(a3, v8, v10) + 1 < 2;
}

@end