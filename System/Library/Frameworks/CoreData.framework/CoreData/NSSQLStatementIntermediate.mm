@interface NSSQLStatementIntermediate
- (BOOL)keypathExpressionIsSafeLHSForIn:(id)a3;
- (NSSQLStatementIntermediate)initWithEntity:(id)a3 alias:(id)a4 inScope:(id)a5;
- (id)governingAliasForKeypathExpression:(id)a3;
- (id)governingEntityForKeypathExpression:(id)a3;
- (void)dealloc;
- (void)setCorrelationToken:(uint64_t)a1;
- (void)setGoverningAlias:(id)a3;
- (void)setLimitIntermediate:(uint64_t)a1;
- (void)setOrderIntermediate:(uint64_t)a1;
- (void)setWhereIntermediate:(uint64_t)a1;
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

- (NSSQLStatementIntermediate)initWithEntity:(id)a3 alias:(id)a4 inScope:(id)a5
{
  v7 = [(NSSQLIntermediate *)self initWithScope:a5];
  v8 = v7;
  if (v7)
  {
    v7->_governingEntity = a3;
    v7->_governingAlias = a4;
  }

  return v8;
}

- (void)setWhereIntermediate:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 40) != a2)
    {
      v4 = a2;

      *(a1 + 40) = a2;
    }
  }
}

- (void)setLimitIntermediate:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 48) != a2)
    {
      v4 = a2;

      *(a1 + 48) = a2;
    }
  }
}

- (void)setOrderIntermediate:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 56) != a2)
    {
      v4 = a2;

      *(a1 + 56) = a2;
    }
  }
}

- (void)setCorrelationToken:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 32) != a2)
    {
      v4 = a2;

      *(a1 + 32) = a2;
    }
  }
}

- (void)setGoverningAlias:(id)a3
{
  if (self->_governingAlias != a3)
  {
    v5 = a3;

    self->_governingAlias = a3;
  }
}

- (id)governingAliasForKeypathExpression:(id)a3
{
  scope = self->super._scope;
  if (!scope)
  {
    if ([objc_opt_class() isSimpleKeypath:a3])
    {
      return self->_governingAlias;
    }

    scope = self->super._scope;
  }

  return [(NSSQLIntermediate *)scope governingAliasForKeypathExpression:a3];
}

- (id)governingEntityForKeypathExpression:(id)a3
{
  scope = self->super._scope;
  if (!scope)
  {
    if ([objc_opt_class() isSimpleKeypath:a3])
    {
      return self->_governingEntity;
    }

    scope = self->super._scope;
  }

  return [(NSSQLIntermediate *)scope governingEntityForKeypathExpression:a3];
}

- (BOOL)keypathExpressionIsSafeLHSForIn:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  scope = self->super._scope;
  if (scope)
  {
    goto LABEL_6;
  }

  if (([objc_opt_class() isSimpleKeypath:a3] & 1) == 0)
  {
    scope = self->super._scope;
LABEL_6:
    v8 = *MEMORY[0x1E69E9840];

    return [(NSSQLIntermediate *)scope keypathExpressionIsSafeLHSForIn:a3];
  }

  v6 = [(NSSQLStatementIntermediate *)self governingEntityForKeypathExpression:a3];
  if ([a3 expressionType] == 3)
  {
    v7 = [a3 keyPath];
  }

  else
  {
    v7 = [objc_msgSend(objc_msgSend(a3 "arguments")];
  }

  v10 = [v7 componentsSeparatedByString:@"."];
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

      if (!v6)
      {
        goto LABEL_27;
      }

      v16 = [v6[5] objectForKey:*(*(&v21 + 1) + 8 * v15)];
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
        v6 = [v17 destinationEntity];
      }

      else
      {
        if (v18 == 9)
        {
          break;
        }

        v6 = 0;
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

    v19 = [v17 destinationEntity];
    if (v13)
    {
      result = 0;
      goto LABEL_29;
    }

    v6 = v19;
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