@interface NSSQLCompoundWhereIntermediate
- (BOOL)disambiguationKeypathHasToMany;
- (BOOL)isOrScoped;
- (NSSQLCompoundWhereIntermediate)initWithPredicate:(id)predicate inScope:(id)scope inContext:(id)context;
- (id)disambiguatingEntity;
- (id)disambiguationKeypath;
- (id)generateSQLStringInContext:(id)context;
- (void)dealloc;
- (void)setDisambiguatingEntity:(id)entity withKeypath:(id)keypath hasToMany:(BOOL)many;
@end

@implementation NSSQLCompoundWhereIntermediate

- (id)disambiguatingEntity
{
  if (self->_disambiguatingEntity)
  {
    return self->_disambiguatingEntity;
  }

  else
  {
    return [(NSSQLIntermediate *)self->super.super._scope disambiguatingEntity];
  }
}

- (BOOL)isOrScoped
{
  if ([(NSPredicate *)self->super._predicate compoundPredicateType]== 2)
  {
    return 1;
  }

  scope = self->super.super._scope;

  return [(NSSQLIntermediate *)scope isOrScoped];
}

- (id)disambiguationKeypath
{
  if (self->_disambiguationKeypath)
  {
    return self->_disambiguationKeypath;
  }

  else
  {
    return [(NSSQLIntermediate *)self->super.super._scope disambiguationKeypath];
  }
}

- (void)dealloc
{
  self->_subclauses = 0;

  self->_disambiguationKeypath = 0;
  v3.receiver = self;
  v3.super_class = NSSQLCompoundWhereIntermediate;
  [(NSSQLCompoundWhereIntermediate *)&v3 dealloc];
}

- (NSSQLCompoundWhereIntermediate)initWithPredicate:(id)predicate inScope:(id)scope inContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = NSSQLCompoundWhereIntermediate;
  v6 = [(NSSQLWhereIntermediate *)&v21 initWithPredicate:predicate inScope:scope];
  if (v6)
  {
    v6->_subclauses = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    subpredicates = [(NSPredicate *)v6->super._predicate subpredicates];
    v8 = [subpredicates countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(subpredicates);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [[NSSQLSimpleWhereIntermediate alloc] initWithPredicate:v12 inScope:v6];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_15;
            }

            v13 = [[NSSQLCompoundWhereIntermediate alloc] initWithPredicate:v12 inScope:v6 inContext:context];
          }

          v14 = v13;
          if (!v13)
          {
LABEL_15:
            if (![context objectForKey:@"NSUnderlyingException"])
            {
              [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Problem with subpredicate %@", v12), 0), @"NSUnderlyingException"}];
            }

            v6 = 0;
            goto LABEL_18;
          }

          [(NSMutableArray *)v6->_subclauses addObject:v13];
        }

        v9 = [subpredicates countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_18:
  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)disambiguationKeypathHasToMany
{
  if (self->_disambiguationKeypath)
  {
    return self->_disambiguationKeypathHasToMany;
  }

  else
  {
    return [(NSSQLIntermediate *)self->super.super._scope disambiguationKeypathHasToMany];
  }
}

- (void)setDisambiguatingEntity:(id)entity withKeypath:(id)keypath hasToMany:(BOOL)many
{
  self->_disambiguatingEntity = entity;
  self->_disambiguationKeypath = keypath;
  self->_disambiguationKeypathHasToMany = many;
}

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  compoundPredicateType = [(NSPredicate *)self->super._predicate compoundPredicateType];
  if ((compoundPredicateType - 1) < 2)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if ([(NSPredicate *)self->super._predicate compoundPredicateType]== 1)
    {
      v9 = @" AND ";
    }

    else
    {
      v9 = @" OR ";
    }

    objc_msgSend(v8, "appendString:", @"(");
    v10 = [-[NSMutableArray objectAtIndex:](self->_subclauses objectAtIndex:{0), "generateSQLStringInContext:", context}];
    if (v10)
    {
      v11 = v10;
      [v8 appendString:v10];

      v12 = [(NSMutableArray *)self->_subclauses count];
      if (v12 < 2)
      {
LABEL_13:
        [v8 appendString:@""]);
LABEL_20:

        return v8;
      }

      v13 = v12;
      v14 = 1;
      while (1)
      {
        [v8 appendString:v9];
        v15 = [-[NSMutableArray objectAtIndex:](self->_subclauses objectAtIndex:{v14), "generateSQLStringInContext:", context}];
        if (!v15)
        {
          break;
        }

        v16 = v15;
        [v8 appendString:v15];

        if (v13 == ++v14)
        {
          goto LABEL_13;
        }
      }
    }

    v8 = 0;
    goto LABEL_20;
  }

  if (compoundPredicateType)
  {
    [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unknown compound predicate type %@", self->super._predicate), 0), @"NSUnderlyingException"}];
    goto LABEL_22;
  }

  objc_msgSend(v5, "appendString:", @" NOT (");
  v17 = [-[NSMutableArray objectAtIndex:](self->_subclauses objectAtIndex:{0), "generateSQLStringInContext:", context}];
  if (!v17)
  {
LABEL_22:

    return 0;
  }

  v18 = v17;
  [v5 appendString:v17];
  [v5 appendString:@""]);

  if (v5)
  {
    return v5;
  }

  if (![context objectForKey:@"NSUnderlyingException"])
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate compound where clause for predicate (%@) (unknown problem)", self->super._predicate];
    [context setObject:objc_msgSend(v19 forKey:{"exceptionWithName:reason:userInfo:", v20, v21, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", self->super._predicate, @"predicate", @"NSUnderlyingException"}];
  }

  return 0;
}

@end