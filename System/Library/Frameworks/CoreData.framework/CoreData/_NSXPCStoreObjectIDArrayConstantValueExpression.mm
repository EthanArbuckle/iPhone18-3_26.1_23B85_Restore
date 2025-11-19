@interface _NSXPCStoreObjectIDArrayConstantValueExpression
- (_NSXPCStoreObjectIDArrayConstantValueExpression)initWithCoder:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers"];
  }

  v5 = objc_opt_class();
  InstanceVariable = class_getInstanceVariable(v5, "constantValue");
  Ivar = object_getIvar(self, InstanceVariable);
  if ((([Ivar isNSArray] & 1) != 0 || objc_msgSend(Ivar, "isNSSet")) && (v8 = +[NSManagedObjectID _newArchiveForScalarObjectIDs:](NSManagedObjectID, Ivar)) != 0)
  {
    v9 = v8;
    [a3 encodeObject:v8 forKey:@"NSConstantValue_XPCStoreObjectIDs"];
  }

  else
  {

    [a3 encodeObject:Ivar forKey:@"NSConstantValue"];
  }
}

- (_NSXPCStoreObjectIDArrayConstantValueExpression)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers"];
  }

  v14.receiver = self;
  v14.super_class = _NSXPCStoreObjectIDArrayConstantValueExpression;
  v5 = [(_NSXPCStoreObjectIDArrayConstantValueExpression *)&v14 init];
  if (v5)
  {
    v6 = [a3 allowedClasses];
    v7 = [NSClassFromString(@"_NSPredicateUtilities") _constantValueClassesForSecureCoding];
    v8 = [v7 setByAddingObject:objc_opt_class()];
    if (v6 && [v6 count])
    {
      v8 = [v8 mutableCopy];
      [v8 unionSet:v6];
    }

    v9 = [a3 decodeObjectOfClasses:v8 forKey:@"NSConstantValue_XPCStoreObjectIDs"];
    if (v9)
    {
      v10 = +[NSManagedObjectID unarchivedScalarObjectIDsFromData:withCoordinator:](NSManagedObjectID, v9, [objc_msgSend(a3 "delegate")]);
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
      v11 = [a3 decodeObjectOfClasses:v8 forKey:@"NSConstantValue"];
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