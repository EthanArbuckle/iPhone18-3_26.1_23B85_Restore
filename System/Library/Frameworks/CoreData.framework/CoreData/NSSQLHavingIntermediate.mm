@interface NSSQLHavingIntermediate
- (NSSQLHavingIntermediate)initWithPredicate:(id)predicate inScope:(id)scope inContext:(id)context;
- (id)generateSQLStringInContext:(id)context;
- (void)dealloc;
@end

@implementation NSSQLHavingIntermediate

- (NSSQLHavingIntermediate)initWithPredicate:(id)predicate inScope:(id)scope inContext:(id)context
{
  v11.receiver = self;
  v11.super_class = NSSQLHavingIntermediate;
  v7 = [(NSSQLIntermediate *)&v11 initWithScope:scope];
  v8 = v7;
  if (predicate && v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [[NSSQLCompoundWhereIntermediate alloc] initWithPredicate:predicate inScope:v8 inContext:context];
        v8->_whereClause = &v9->super;
        if (v9)
        {
          return v8;
        }
      }

      else
      {
        [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unknown predicate type for having predicate: %@", predicate), 0), @"NSUnderlyingException"}];
      }

      return 0;
    }

    v8->_whereClause = [[NSSQLSimpleWhereIntermediate alloc] initWithPredicate:predicate inScope:v8];
  }

  return v8;
}

- (void)dealloc
{
  self->_whereClause = 0;
  v3.receiver = self;
  v3.super_class = NSSQLHavingIntermediate;
  [(NSSQLHavingIntermediate *)&v3 dealloc];
}

- (id)generateSQLStringInContext:(id)context
{
  if ([(NSSQLIntermediate *)self isUpdateScoped])
  {
    [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported clause (having not allowed in updates)", 0), @"NSUnderlyingException"}];
    return 0;
  }

  else
  {
    whereClause = self->_whereClause;

    return [(NSSQLIntermediate *)whereClause generateSQLStringInContext:context];
  }
}

@end