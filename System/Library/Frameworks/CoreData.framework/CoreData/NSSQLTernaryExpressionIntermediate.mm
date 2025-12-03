@interface NSSQLTernaryExpressionIntermediate
- (BOOL)disambiguationKeypathHasToMany;
- (id)disambiguatingEntity;
- (id)disambiguationKeypath;
- (id)generateSQLStringInContext:(id)context;
- (void)dealloc;
- (void)setDisambiguatingEntity:(id)entity withKeypath:(id)keypath hasToMany:(BOOL)many;
@end

@implementation NSSQLTernaryExpressionIntermediate

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
  self->_disambiguationKeypath = 0;
  v3.receiver = self;
  v3.super_class = NSSQLTernaryExpressionIntermediate;
  [(NSSQLTernaryExpressionIntermediate *)&v3 dealloc];
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

  if ([(NSSQLIntermediate *)self isIndexExpressionScoped])
  {
    [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Ternary expression not supported as index component", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", self->super._expression, @"Bad value", @"NSUnderlyingException"}];
  }

  v5 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", CFSTR("(CASE ("));
  predicate = [(NSExpression *)self->super._expression predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[NSSQLSimpleWhereIntermediate alloc] initWithPredicate:predicate inScope:self];
    if (!v7)
    {
      if (![context objectForKey:@"NSUnderlyingException"])
      {
        v8 = @"Can't generate intermediate for ternary expression predicate.";
LABEL_15:
        [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], v8, 0), @"NSUnderlyingException"}];
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = @"Can't generate intermediate for ternary expression predicate (unknown type)";
      goto LABEL_15;
    }

    v7 = [[NSSQLCompoundWhereIntermediate alloc] initWithPredicate:predicate inScope:self inContext:context];
    if (!v7)
    {
LABEL_16:
      if ([context objectForKey:@"NSUnderlyingException"])
      {
LABEL_19:

        return 0;
      }

      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D940];
      v17 = @"Can't generate SQL for ternary expression predicate.";
LABEL_18:
      [context setObject:objc_msgSend(v15 forKey:{"exceptionWithName:reason:userInfo:", v16, v17, 0), @"NSUnderlyingException"}];
      goto LABEL_19;
    }
  }

  v9 = v7;
  v10 = [(NSSQLSimpleWhereIntermediate *)v7 generateSQLStringInContext:context];

  if (!v10)
  {
    goto LABEL_16;
  }

  [v5 appendString:v10];

  [v5 appendString:@") when 1 then ("];
  v11 = [(NSSQLIntermediate *)self _generateSQLForExpression:self->super._allowToMany allowToMany:context inContext:?];
  if (!v11)
  {
    if ([context objectForKey:@"NSUnderlyingException"])
    {
      goto LABEL_19;
    }

    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Can't generate SQL for ternary expression trueExpression.";
    goto LABEL_18;
  }

  v12 = v11;
  [v5 appendString:v11];

  [v5 appendString:@") else ("];
  v13 = [(NSSQLIntermediate *)self _generateSQLForExpression:self->super._allowToMany allowToMany:context inContext:?];
  if (!v13)
  {
    if ([context objectForKey:@"NSUnderlyingException"])
    {
      goto LABEL_19;
    }

    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Can't generate SQL for ternary expression falseExpression.";
    goto LABEL_18;
  }

  v14 = v13;
  [v5 appendString:v13];

  [v5 appendString:@" end]"));
  return v5;
}

@end