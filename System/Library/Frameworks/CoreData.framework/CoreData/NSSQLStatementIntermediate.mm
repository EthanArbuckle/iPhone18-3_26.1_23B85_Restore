@interface NSSQLStatementIntermediate
- (BOOL)keypathExpressionIsSafeLHSForIn:(id)in;
- (NSSQLStatementIntermediate)initWithEntity:(id)entity alias:(id)alias inScope:(id)scope;
- (id)governingAliasForKeypathExpression:(id)expression;
- (id)governingEntityForKeypathExpression:(id)expression;
- (void)dealloc;
- (void)setCorrelationToken:(uint64_t)token;
- (void)setGoverningAlias:(id)alias;
- (void)setLimitIntermediate:(uint64_t)intermediate;
- (void)setOrderIntermediate:(uint64_t)intermediate;
- (void)setWhereIntermediate:(uint64_t)intermediate;
@end

@implementation NSSQLStatementIntermediate

- (void)dealloc
{
  self->_governingAlias = 0;

  self->_whereClause = 0;
  self->_limitClause = 0;

  self->_orderIntermediate = 0;
  self->_correlationToken = 0;
  v3.receiver = self;
  v3.super_class = NSSQLStatementIntermediate;
  [(NSSQLStatementIntermediate *)&v3 dealloc];
}

- (NSSQLStatementIntermediate)initWithEntity:(id)entity alias:(id)alias inScope:(id)scope
{
  v7 = [(NSSQLIntermediate *)self initWithScope:scope];
  v8 = v7;
  if (v7)
  {
    v7->_governingEntity = entity;
    v7->_governingAlias = alias;
  }

  return v8;
}

- (void)setWhereIntermediate:(uint64_t)intermediate
{
  if (intermediate)
  {
    if (*(intermediate + 40) != a2)
    {
      v4 = a2;

      *(intermediate + 40) = a2;
    }
  }
}

- (void)setLimitIntermediate:(uint64_t)intermediate
{
  if (intermediate)
  {
    if (*(intermediate + 48) != a2)
    {
      v4 = a2;

      *(intermediate + 48) = a2;
    }
  }
}

- (void)setOrderIntermediate:(uint64_t)intermediate
{
  if (intermediate)
  {
    if (*(intermediate + 56) != a2)
    {
      v4 = a2;

      *(intermediate + 56) = a2;
    }
  }
}

- (void)setCorrelationToken:(uint64_t)token
{
  if (token)
  {
    if (*(token + 32) != a2)
    {
      v4 = a2;

      *(token + 32) = a2;
    }
  }
}

- (void)setGoverningAlias:(id)alias
{
  if (self->_governingAlias != alias)
  {
    aliasCopy = alias;

    self->_governingAlias = alias;
  }
}

- (id)governingAliasForKeypathExpression:(id)expression
{
  scope = self->super._scope;
  if (!scope)
  {
    if ([objc_opt_class() isSimpleKeypath:expression])
    {
      return self->_governingAlias;
    }

    scope = self->super._scope;
  }

  return [(NSSQLIntermediate *)scope governingAliasForKeypathExpression:expression];
}

- (id)governingEntityForKeypathExpression:(id)expression
{
  scope = self->super._scope;
  if (!scope)
  {
    if ([objc_opt_class() isSimpleKeypath:expression])
    {
      return self->_governingEntity;
    }

    scope = self->super._scope;
  }

  return [(NSSQLIntermediate *)scope governingEntityForKeypathExpression:expression];
}

- (BOOL)keypathExpressionIsSafeLHSForIn:(id)in
{
  v26 = *MEMORY[0x1E69E9840];
  scope = self->super._scope;
  if (scope)
  {
    goto LABEL_6;
  }

  if (([objc_opt_class() isSimpleKeypath:in] & 1) == 0)
  {
    scope = self->super._scope;
LABEL_6:
    v8 = *MEMORY[0x1E69E9840];

    return [(NSSQLIntermediate *)scope keypathExpressionIsSafeLHSForIn:in];
  }

  destinationEntity = [(NSSQLStatementIntermediate *)self governingEntityForKeypathExpression:in];
  if ([in expressionType] == 3)
  {
    keyPath = [in keyPath];
  }

  else
  {
    keyPath = [objc_msgSend(objc_msgSend(in "arguments")];
  }

  v10 = [keyPath componentsSeparatedByString:@"."];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v22;
LABEL_12:
    v15 = 0;
    while (1)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(v10);
      }

      if (!destinationEntity)
      {
        goto LABEL_27;
      }

      v16 = [destinationEntity[5] objectForKey:*(*(&v21 + 1) + 8 * v15)];
      if (!v16)
      {
        goto LABEL_27;
      }

      v17 = v16;
      if ([v16 isToMany])
      {
        break;
      }

      v18 = v17[24];
      if (v18 == 7)
      {
        destinationEntity = [v17 destinationEntity];
      }

      else
      {
        if (v18 == 9)
        {
          break;
        }

        destinationEntity = 0;
      }

LABEL_24:
      if (v12 == ++v15)
      {
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        result = 1;
        if (v12)
        {
          goto LABEL_12;
        }

        goto LABEL_29;
      }
    }

    destinationEntity2 = [v17 destinationEntity];
    if (v13)
    {
      result = 0;
      goto LABEL_29;
    }

    destinationEntity = destinationEntity2;
    v13 = 1;
    goto LABEL_24;
  }

LABEL_27:
  result = 1;
LABEL_29:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

@end