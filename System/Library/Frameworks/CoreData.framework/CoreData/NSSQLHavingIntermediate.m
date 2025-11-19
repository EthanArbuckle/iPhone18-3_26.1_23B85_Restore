@interface NSSQLHavingIntermediate
- (NSSQLHavingIntermediate)initWithPredicate:(id)a3 inScope:(id)a4 inContext:(id)a5;
- (id)generateSQLStringInContext:(id)a3;
- (void)dealloc;
@end

@implementation NSSQLHavingIntermediate

- (NSSQLHavingIntermediate)initWithPredicate:(id)a3 inScope:(id)a4 inContext:(id)a5
{
  v11.receiver = self;
  v11.super_class = NSSQLHavingIntermediate;
  v7 = [(NSSQLIntermediate *)&v11 initWithScope:a4];
  v8 = v7;
  if (a3 && v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [[NSSQLCompoundWhereIntermediate alloc] initWithPredicate:a3 inScope:v8 inContext:a5];
        v8->_whereClause = &v9->super;
        if (v9)
        {
          return v8;
        }
      }

      else
      {
        [a5 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unknown predicate type for having predicate: %@", a3), 0), @"NSUnderlyingException"}];
      }

      return 0;
    }

    v8->_whereClause = [[NSSQLSimpleWhereIntermediate alloc] initWithPredicate:a3 inScope:v8];
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

- (id)generateSQLStringInContext:(id)a3
{
  if ([(NSSQLIntermediate *)self isUpdateScoped])
  {
    [a3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported clause (having not allowed in updates)", 0), @"NSUnderlyingException"}];
    return 0;
  }

  else
  {
    whereClause = self->_whereClause;

    return [(NSSQLIntermediate *)whereClause generateSQLStringInContext:a3];
  }
}

@end