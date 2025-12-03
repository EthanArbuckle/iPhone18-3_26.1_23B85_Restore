@interface _NSXPCStoreObjectIDArrayConstantValueExpression
- (_NSXPCStoreObjectIDArrayConstantValueExpression)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSXPCStoreObjectIDArrayConstantValueExpression

- (void)dealloc
{
  v3 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v3, "constantValue");

  v5.receiver = self;
  v5.super_class = _NSXPCStoreObjectIDArrayConstantValueExpression;
  [(_NSXPCStoreObjectIDArrayConstantValueExpression *)&v5 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers"];
  }

  v5 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v5, "constantValue");
  Ivar = object_getIvar(self, InstanceVariable);
  if ((([Ivar isNSArray] & 1) != 0 || objc_msgSend(Ivar, "isNSSet")) && (v8 = +[NSManagedObjectID _newArchiveForScalarObjectIDs:](NSManagedObjectID, Ivar)) != 0)
  {
    v9 = v8;
    [coder encodeObject:v8 forKey:@"NSConstantValue_XPCStoreObjectIDs"];
  }

  else
  {

    [coder encodeObject:Ivar forKey:@"NSConstantValue"];
  }
}

- (_NSXPCStoreObjectIDArrayConstantValueExpression)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers"];
  }

  v14.receiver = self;
  v14.super_class = _NSXPCStoreObjectIDArrayConstantValueExpression;
  v5 = [(_NSXPCStoreObjectIDArrayConstantValueExpression *)&v14 init];
  if (v5)
  {
    allowedClasses = [coder allowedClasses];
    _constantValueClassesForSecureCoding = [NSClassFromString(@"_NSPredicateUtilities") _constantValueClassesForSecureCoding];
    v8 = [_constantValueClassesForSecureCoding setByAddingObject:objc_opt_class()];
    if (allowedClasses && [allowedClasses count])
    {
      v8 = [v8 mutableCopy];
      [v8 unionSet:allowedClasses];
    }

    v9 = [coder decodeObjectOfClasses:v8 forKey:@"NSConstantValue_XPCStoreObjectIDs"];
    if (v9)
    {
      v10 = +[NSManagedObjectID unarchivedScalarObjectIDsFromData:withCoordinator:](NSManagedObjectID, v9, [objc_msgSend(coder "delegate")]);
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = NSArray_EmptyArray;
      }
    }

    else
    {
      v11 = [coder decodeObjectOfClasses:v8 forKey:@"NSConstantValue"];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v11];
  NSDeallocateObject(v5);
  return v12;
}

@end