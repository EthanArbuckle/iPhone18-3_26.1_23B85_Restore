@interface NSSQLFetchIntermediate
- (NSSQLFetchIntermediate)initWithScope:(id)a3;
- (id)fetchIntermediateForKeypathExpression:(id)a3;
- (id)generateSQLStringInContext:(id)a3;
- (uint64_t)addGroupByKeypath:(uint64_t)result;
- (uint64_t)finalJoinForKeypathWithComponents:(uint64_t)result;
- (uint64_t)groupByClauseContainsKeypath:(uint64_t)a1;
- (uint64_t)promoteToOuterJoinAtKeypathWithComponents:(uint64_t)result;
- (uint64_t)promoteToOuterJoinsAlongKeypathWithComponents:(uint64_t)result;
- (void)addJoinIntermediate:(void *)a3 atKeypathWithComponents:;
- (void)dealloc;
- (void)setGroupByIntermediate:(uint64_t)a1;
- (void)setHavingIntermediate:(uint64_t)a1;
- (void)setOffsetIntermediate:(uint64_t)a1;
- (void)setSelectIntermediate:(uint64_t)a1;
@end

@implementation NSSQLFetchIntermediate

- (void)dealloc
{
  self->_selectClause = 0;

  self->_groupByClause = 0;
  self->_groupByKeypaths = 0;

  self->_havingClause = 0;
  self->_offsetClause = 0;

  self->_joinIntermediates = 0;
  self->_joinKeypaths = 0;
  v3.receiver = self;
  v3.super_class = NSSQLFetchIntermediate;
  [(NSSQLStatementIntermediate *)&v3 dealloc];
}

- (NSSQLFetchIntermediate)initWithScope:(id)a3
{
  v5.receiver = self;
  v5.super_class = NSSQLFetchIntermediate;
  v3 = [(NSSQLIntermediate *)&v5 initWithScope:a3];
  if (v3)
  {
    v3->_joinIntermediates = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_joinKeypaths = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v3;
}

- (void)setSelectIntermediate:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 64) != a2)
    {
      v4 = a2;

      *(a1 + 64) = a2;
    }
  }
}

- (void)setGroupByIntermediate:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 72) != a2)
    {
      v4 = a2;

      *(a1 + 72) = a2;
    }
  }
}

- (uint64_t)addGroupByKeypath:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 96);
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(v3 + 96) = v4;
    }

    return [v4 addObject:a2];
  }

  return result;
}

- (uint64_t)groupByClauseContainsKeypath:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  if ([*(a1 + 96) containsObject:a2])
  {
    return 1;
  }

  do
  {
    v5 = [v2 componentsSeparatedByString:@"."];
    v6 = [v5 count];
    v4 = v6 != 1;
    if (v6 == 1)
    {
      break;
    }

    v2 = [objc_msgSend(v5 subarrayWithRange:{0, objc_msgSend(v5, "count") - 1), "componentsJoinedByString:", @"."}];
  }

  while (![*(a1 + 96) containsObject:v2]);
  return v4;
}

- (void)setHavingIntermediate:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 80) != a2)
    {
      v4 = a2;

      *(a1 + 80) = a2;
    }
  }
}

- (void)setOffsetIntermediate:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 88) != a2)
    {
      v4 = a2;

      *(a1 + 88) = a2;
    }
  }
}

- (void)addJoinIntermediate:(void *)a3 atKeypathWithComponents:
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [*(a1 + 112) addObject:a2];
    v6 = *(a1 + 120);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          v11 = v6;
          if (*v17 != v9)
          {
            objc_enumerationMutation(a3);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v6 = [objc_msgSend(v6 objectForKey:{v12), "objectAtIndex:", 1}];
        }

        v8 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    [v13 addObject:a2];
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 addObject:v14];

    [v11 setObject:v13 forKey:v12];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (uint64_t)finalJoinForKeypathWithComponents:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 120);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(a2);
          }

          v8 = [v3 objectForKey:*(*(&v10 + 1) + 8 * i)];
          v3 = [v8 objectAtIndex:1];
        }

        v5 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    else
    {
      v8 = 0;
    }

    result = [v8 objectAtIndex:0];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)promoteToOuterJoinsAlongKeypathWithComponents:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 120);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(a2);
          }

          v7 = [v3 objectForKey:*(*(&v10 + 1) + 8 * v6)];
          v8 = [v7 objectAtIndex:0];
          if (v8)
          {
            *(v8 + 48) = 2;
          }

          v3 = [v7 objectAtIndex:1];
          ++v6;
        }

        while (v4 != v6);
        result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)promoteToOuterJoinAtKeypathWithComponents:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 120);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(a2);
          }

          v7 = [v3 objectForKey:*(*(&v10 + 1) + 8 * v6)];
          v8 = [v7 objectAtIndex:0];
          v3 = [v7 objectAtIndex:1];
          ++v6;
        }

        while (v4 != v6);
        result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v4 = result;
      }

      while (result);
      if (v8)
      {
        *(v8 + 48) = 2;
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)generateSQLStringInContext:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  if ([a3 objectForKey:@"NSUnderlyingException"])
  {
    goto LABEL_65;
  }

  if (self && (whereClause = self->super._whereClause) != 0)
  {
    v6 = [(NSSQLIntermediate *)whereClause generateSQLStringInContext:a3];
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  havingClause = self->_havingClause;
  if (havingClause)
  {
    v8 = [(NSSQLHavingIntermediate *)havingClause generateSQLStringInContext:a3];
    if (!v8)
    {

LABEL_10:
      v9 = 0;
LABEL_64:

LABEL_65:
      v9 = 0;
      goto LABEL_66;
    }
  }

  else
  {
    v8 = 0;
  }

  groupByClause = self->_groupByClause;
  if (groupByClause)
  {
    v11 = [(NSSQLGroupByIntermediate *)groupByClause generateSQLStringInContext:a3];
    if (!v11)
    {
      v9 = 0;
      v12 = 1;
      v13 = v6;
      goto LABEL_63;
    }
  }

  else
  {
    v11 = 0;
  }

  [(NSSQLIntermediate *)self _promoteJoinsForSubqueryScopedKeypaths];
  if (self->super._correlationToken)
  {
    v13 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
    [v13 appendString:self->super._correlationToken];
    if (v6)
    {
      objc_msgSend(v13, "appendString:", @" AND (");
      [v13 appendString:v6];
      v14 = @")");
    }

    else
    {
      v14 = @"");
    }

    [v13 appendString:v14];
  }

  else
  {
    v13 = v6;
  }

  v9 = [(NSSQLSelectIntermediate *)self->_selectClause generateSQLStringInContext:a3];
  if (v9)
  {
    orderIntermediate = self->super._orderIntermediate;
    if (!orderIntermediate || (orderIntermediate = [(NSSQLOrderIntermediate *)orderIntermediate generateSQLStringInContext:a3]) != 0)
    {
      v31 = orderIntermediate;
      v32 = v11;
      v33 = v8;
      v34 = v13;
      v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      joinIntermediates = self->_joinIntermediates;
      v18 = [(NSMutableArray *)joinIntermediates countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v36;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(joinIntermediates);
            }

            v22 = [*(*(&v35 + 1) + 8 * i) generateSQLStringInContext:{a3, v31, v32, v33}];
            if (!v22)
            {

              goto LABEL_40;
            }

            v23 = v22;
            [v16 appendString:v22];
            [v16 appendString:@" "];
          }

          v19 = [(NSMutableArray *)joinIntermediates countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      if (!v16)
      {
LABEL_40:
        v12 = 1;
        v11 = v32;
        v8 = v33;
        v13 = v34;
        v24 = v31;
LABEL_61:

        goto LABEL_62;
      }

      v11 = v32;
      v8 = v33;
      v24 = v31;
      if (self && (limitClause = self->super._limitClause) != 0)
      {
        v26 = [(NSSQLLimitIntermediate *)limitClause generateSQLStringInContext:a3];
        if (!v26)
        {
          v12 = 1;
LABEL_60:

          v13 = v34;
          goto LABEL_61;
        }
      }

      else
      {
        v26 = 0;
      }

      offsetClause = self->_offsetClause;
      if (offsetClause)
      {
        v28 = [(NSSQLOffsetIntermediate *)offsetClause generateSQLStringInContext:a3];
        if (!v28)
        {
          v12 = 1;
LABEL_59:

          goto LABEL_60;
        }
      }

      else
      {
        v28 = 0;
      }

      [v9 appendString:{v16, v31, v32, v33}];
      if (v34)
      {
        [v9 appendString:@"WHERE "];
        [v9 appendString:v34];
        [v9 appendString:@" "];
      }

      if (v11)
      {
        [v9 appendString:@"GROUP BY "];
        [v9 appendString:v11];
        [v9 appendString:@" "];
      }

      if (v8)
      {
        [v9 appendString:@"HAVING "];
        [v9 appendString:v8];
        [v9 appendString:@" "];
      }

      if (v24)
      {
        [v9 appendString:v24];
      }

      if (v26)
      {
        [v9 appendString:v26];
      }

      if (v28)
      {
        [v9 appendString:v28];
      }

      v12 = 0;
      goto LABEL_59;
    }
  }

  v12 = 1;
LABEL_62:

LABEL_63:
  if (v12)
  {
    goto LABEL_64;
  }

LABEL_66:
  v29 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)fetchIntermediateForKeypathExpression:(id)a3
{
  scope = self->super.super._scope;
  if (!scope)
  {
    if ([objc_opt_class() isSimpleKeypath:a3])
    {
      return self;
    }

    scope = self->super.super._scope;
  }

  return [(NSSQLIntermediate *)scope fetchIntermediateForKeypathExpression:a3];
}

@end