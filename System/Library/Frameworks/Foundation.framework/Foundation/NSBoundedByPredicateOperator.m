@interface NSBoundedByPredicateOperator
- (BOOL)performPrimitiveOperationUsingObject:(id)a3 andObject:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSBoundedByPredicateOperator

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(NSBoundedByPredicateOperator *)self operatorType];
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
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = [NSString stringWithFormat:@"Can't use boundedBy operator with rhs %@ (not an array)", a4];
LABEL_21:
    v25 = v22;
    v23 = v20;
    v24 = v21;
    goto LABEL_25;
  }

  if ([a4 count] != 2)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = [NSString stringWithFormat:@"Can't use boundedBy operator with rhs %@ (wrong number of elements)", a4];
    goto LABEL_21;
  }

  v7 = [a4 objectAtIndex:0];
  v8 = [a4 objectAtIndex:1];
  if (!objc_lookUpClass("CLLocation"))
  {
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D930];
    v25 = @"Can't use boundedBy operator unless CLLocation is linked.";
    goto LABEL_25;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = [NSString stringWithFormat:@"Can't use boundedBy operator with rhs %@ (wrong class, should be CLLocation)", a4];
    goto LABEL_21;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695D940];
    v28 = [NSString stringWithFormat:@"Can't use boundedBy operator with upperRight %@ (wrong class, should be CLLocation)", v7];
LABEL_24:
    v25 = v28;
    v23 = v26;
    v24 = v27;
LABEL_25:
    objc_exception_throw([v23 exceptionWithName:v24 reason:v25 userInfo:0]);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695D940];
    v28 = [NSString stringWithFormat:@"Can't use boundedBy operator with lowerRight %@ (wrong class, should be CLLocation)", v8];
    goto LABEL_24;
  }

  [v7 coordinate];
  v10 = v9;
  v12 = v11;
  [v8 coordinate];
  v14 = v13;
  v16 = v15;
  [a3 coordinate];
  v19 = v14 <= v18;
  if (v18 > v10)
  {
    v19 = 0;
  }

  if (v12 < v17)
  {
    v19 = 0;
  }

  return v17 >= v16 && v19;
}

@end