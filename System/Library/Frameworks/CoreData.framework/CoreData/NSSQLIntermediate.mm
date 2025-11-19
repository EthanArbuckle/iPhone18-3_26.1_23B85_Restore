@interface NSSQLIntermediate
+ (BOOL)expressionIsBasicKeypath:(id)a3;
+ (BOOL)isSimpleKeypath:(id)a3;
- (BOOL)_functionExpressionIsSubqueryFollowedByKeypath:(_BOOL8)result;
- (BOOL)isFunctionScoped;
- (BOOL)isHavingScoped;
- (BOOL)isIndexExpressionScoped;
- (BOOL)isIndexScoped;
- (BOOL)isOrScoped;
- (BOOL)isTargetColumnsScoped;
- (BOOL)isUpdateColumnsScoped;
- (BOOL)isUpdateScoped;
- (BOOL)isWhereScoped;
- (NSSQLIntermediate)initWithScope:(id)a3;
- (id)_generateSQLForExpression:(uint64_t)a3 allowToMany:(void *)a4 inContext:;
- (id)_lastScopedItem;
- (id)generateSQLStringInContext:(id)a3;
- (uint64_t)_generateSQLForConstantValue:(uint64_t)a3 inContext:;
- (uint64_t)_generateSQLForSubqueryExpression:(uint64_t)a3 trailingKeypath:(void *)a4 inContext:;
- (uint64_t)isSimpleNoIndexFunction:(uint64_t)a1;
- (uint64_t)isVariableBasedKeypathScopedBySubquery:(uint64_t)result;
- (uint64_t)promoteJoinsInKeypathsForExpression:(uint64_t)result;
- (void)_generateSQLForConstantCollection:(uint64_t)a3 reboundFrom:(void *)a4 inContext:;
- (void)_generateSQLForExpressionCollection:(uint64_t)a3 allowToMany:(void *)a4 inContext:;
- (void)_generateSQLForFetchExpression:(uint64_t)a3 allowToMany:(void *)a4 inContext:;
- (void)_promoteJoinsForSubqueryScopedKeypath:(id)a3;
@end

@implementation NSSQLIntermediate

- (BOOL)isIndexScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isIndexScoped];
  }

  return scope;
}

- (BOOL)isTargetColumnsScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isTargetColumnsScoped];
  }

  return scope;
}

- (BOOL)isUpdateScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isUpdateScoped];
  }

  return scope;
}

- (BOOL)isOrScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isOrScoped];
  }

  return scope;
}

- (BOOL)isUpdateColumnsScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isUpdateColumnsScoped];
  }

  return scope;
}

- (id)_lastScopedItem
{
  result = self->_scope;
  if (result)
  {
    return [result _lastScopedItem];
  }

  return result;
}

- (BOOL)isFunctionScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isFunctionScoped];
  }

  return scope;
}

- (BOOL)isIndexExpressionScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isIndexExpressionScoped];
  }

  return scope;
}

- (NSSQLIntermediate)initWithScope:(id)a3
{
  v5.receiver = self;
  v5.super_class = NSSQLIntermediate;
  result = [(NSSQLIntermediate *)&v5 init];
  if (result)
  {
    result->_scope = a3;
  }

  return result;
}

- (id)generateSQLStringInContext:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isHavingScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isHavingScoped];
  }

  return scope;
}

- (BOOL)isWhereScoped
{
  scope = self->_scope;
  if (scope)
  {
    LOBYTE(scope) = [(NSSQLIntermediate *)scope isWhereScoped];
  }

  return scope;
}

+ (BOOL)expressionIsBasicKeypath:(id)a3
{
  if ([a3 expressionType] != 4 || objc_msgSend(objc_msgSend(a3, "operand"), "expressionType") != 1 && objc_msgSend(objc_msgSend(a3, "operand"), "expressionType"))
  {
    return 0;
  }

  if (sel_valueForKey_ == [a3 selector])
  {
    return 1;
  }

  return sel_valueForKeyPath_ == [a3 selector];
}

+ (BOOL)isSimpleKeypath:(id)a3
{
  if ([a3 expressionType] == 3)
  {
    return 1;
  }

  return [a1 expressionIsBasicKeypath:a3];
}

- (uint64_t)isSimpleNoIndexFunction:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  if ([a2 expressionType] != 4)
  {
    return 0;
  }

  if (sel_noindex_ != [a2 selector])
  {
    return 0;
  }

  v4 = [a2 arguments];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ([v4 count] != 1)
  {
    return 0;
  }

  v6 = [v5 lastObject];
  v7 = objc_opt_class();

  return [v7 isSimpleKeypath:v6];
}

- (uint64_t)isVariableBasedKeypathScopedBySubquery:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ([a2 expressionType] == 4 && objc_msgSend(objc_msgSend(a2, "operand"), "expressionType") == 2)
    {
      result = [v3 governingEntityForKeypathExpression:a2];
      if (result)
      {
        return sel_valueForKey_ == [a2 selector] || sel_valueForKeyPath_ == objc_msgSend(a2, "selector");
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_promoteJoinsForSubqueryScopedKeypath:(id)a3
{
  scope = self->_scope;
  if (scope)
  {
    [(NSSQLIntermediate *)scope _promoteJoinsForSubqueryScopedKeypath:a3];
  }
}

- (uint64_t)promoteJoinsInKeypathsForExpression:(uint64_t)result
{
  v21 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_25;
  }

  v3 = result;
  while (1)
  {
    result = [a2 expressionType];
    if (result != 20)
    {
      break;
    }

    -[NSSQLIntermediate promoteJoinsInKeypathsForExpression:](v3, [a2 trueExpression]);
    a2 = [a2 falseExpression];
  }

  if (result > 9)
  {
    if (result == 14)
    {
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [a2 constantValue];
      result = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (result)
      {
        v8 = result;
        v9 = *v17;
        do
        {
          v10 = 0;
          do
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v7);
            }

            [(NSSQLIntermediate *)v3 promoteJoinsInKeypathsForExpression:?];
          }

          while (v8 != v10);
          result = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          v8 = result;
        }

        while (result);
      }

      goto LABEL_25;
    }

    if (result == 10)
    {
      goto LABEL_15;
    }

LABEL_25:
    v11 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (result != 3)
  {
    if (result == 4)
    {
      result = [a2 selector];
      if (sel_max_ != result && sel_min_ != result && sel_count_ != result)
      {
        if ([objc_opt_class() isSimpleKeypath:a2])
        {
          result = -[NSSQLFetchIntermediate promoteToOuterJoinsAlongKeypathWithComponents:]([v3 fetchIntermediate], objc_msgSend(objc_msgSend(a2, "predicateFormat"), "componentsSeparatedByString:", @"."));
        }

        else if ([(NSSQLIntermediate *)v3 isVariableBasedKeypathScopedBySubquery:a2])
        {
          result = [v3 _promoteJoinsForSubqueryScopedKeypath:a2];
        }

        else
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v12 = [a2 arguments];
          result = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (result)
          {
            v13 = result;
            v14 = *v17;
            do
            {
              v15 = 0;
              do
              {
                if (*v17 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                [(NSSQLIntermediate *)v3 promoteJoinsInKeypathsForExpression:?];
              }

              while (v13 != v15);
              result = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
              v13 = result;
            }

            while (result);
          }
        }
      }
    }

    goto LABEL_25;
  }

LABEL_15:
  v4 = [objc_msgSend(a2 "predicateFormat")];
  v5 = [v3 fetchIntermediate];
  v6 = *MEMORY[0x1E69E9840];

  return [(NSSQLFetchIntermediate *)v5 promoteToOuterJoinsAlongKeypathWithComponents:v4];
}

- (BOOL)_functionExpressionIsSubqueryFollowedByKeypath:(_BOOL8)result
{
  if (result)
  {
    return [a2 expressionType] == 4 && objc_msgSend(objc_msgSend(a2, "operand"), "expressionType") == 13 && (sel_valueForKey_ == objc_msgSend(a2, "selector") || sel_valueForKeyPath_ == objc_msgSend(a2, "selector")) && objc_msgSend(objc_msgSend(a2, "arguments"), "count") == 1;
  }

  return result;
}

- (uint64_t)_generateSQLForConstantValue:(uint64_t)a3 inContext:
{
  if (result)
  {
    v4 = [[NSSQLConstantValueIntermediate alloc] initWithConstantValue:a2 inScope:result context:a3];
    v5 = [(NSSQLConstantValueIntermediate *)v4 generateSQLStringInContext:a3];

    return v5;
  }

  return result;
}

- (uint64_t)_generateSQLForSubqueryExpression:(uint64_t)a3 trailingKeypath:(void *)a4 inContext:
{
  if (a1)
  {
    if ([objc_msgSend(a2 "collection")] - 3 <= 1)
    {
      v8 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:a2 trailingKeypath:a3 inScope:a1];
      v9 = [(NSSQLSubqueryExpressionIntermediate *)v8 generateSQLStringInContext:a4];

      return v9;
    }

    [a4 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Unsupported subquery collection expression type", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", a2, @"subquery", @"NSUnderlyingException"}];
  }

  return 0;
}

- (void)_generateSQLForConstantCollection:(uint64_t)a3 reboundFrom:(void *)a4 inContext:
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_56:
    v32 = 0;
    goto LABEL_57;
  }

  v8 = [objc_msgSend(a4 objectForKey:{@"nestingLevel", "intValue"}];
  if ([a2 isNSArray] & 1) != 0 || (objc_msgSend(a2, "isNSSet"))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [a2 isNSOrderedSet] ^ 1;
  }

  if (v8 <= 0 && (v9 & 1) == 0 && [a2 count] >= 0x65)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v10 = [a2 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (!v10)
    {
LABEL_34:
      v26 = [a4 objectForKey:@"bindIntarrays"];
      if (!v26)
      {
        v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [a4 setObject:v26 forKey:@"bindIntarrays"];
      }

      v27 = [[NSSQLBindIntarray alloc] initWithValue:a2];
      -[NSSQLBindIntarray setTableName:](v27, "setTableName:", -[NSSQLAliasGenerator generateTempTableName]([a4 objectForKey:@"aliasGenerator"]));
      v28 = [v26 count];
      [v26 addObject:v27];
      [(NSSQLBindIntarray *)v27 setIndex:v28];

      if (a3)
      {
        v29 = [v26 count];
        v30 = [objc_msgSend(a4 objectForKey:{@"entity", "entityDescription"}];
        v31 = [a4 objectForKey:@"bindIntarraysSubstitutionOrder"];
        if (!v31)
        {
          v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [a4 setObject:v31 forKey:@"bindIntarraysSubstitutionOrder"];
        }

        [v31 addObject:a3];
        [v31 addObject:v30];
        [v31 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v29)}];
      }

      v32 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"(SELECT * FROM %@) ", -[NSSQLBindIntarray tableName](v27, "tableName")];
      goto LABEL_57;
    }

    v11 = v10;
    v12 = *v54;
LABEL_11:
    v13 = 0;
    while (1)
    {
      if (*v54 != v12)
      {
        objc_enumerationMutation(a2);
      }

      v14 = *(*(&v53 + 1) + 8 * v13);
      if (![v14 isNSNumber])
      {
        break;
      }

      v15 = [v14 objCType];
      if (v15)
      {
        v16 = *v15 - 66;
        v17 = v16 > 0x31;
        v18 = (1 << v16) & 0x2848200028483;
        if (v17 || v18 == 0)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [a2 countByEnumeratingWithState:&v53 objects:v59 count:16];
        if (v11)
        {
          goto LABEL_11;
        }

        goto LABEL_34;
      }
    }

    [_PFRoutines anyObjectFromCollection:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a2 = [_PFRoutines newArrayOfObjectIDsFromCollection:a2];
    }

    v20 = [objc_msgSend(a4 objectForKey:{@"entity", "entityDescription"}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = [a2 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (!v21)
    {
      goto LABEL_34;
    }

    v22 = v21;
    v23 = *v50;
LABEL_27:
    v24 = 0;
    while (1)
    {
      if (*v50 != v23)
      {
        objc_enumerationMutation(a2);
      }

      v25 = *(*(&v49 + 1) + 8 * v24);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(v25 "entity")])
      {
        break;
      }

      if (v22 == ++v24)
      {
        v22 = [a2 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v22)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }
    }
  }

  v32 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @" (");
  [a4 setValue:MEMORY[0x1E695E118] forKey:@"sqlIneligibleForCaching"];
  if ([objc_msgSend(a4 objectForKey:{@"generatePairs", "BOOLValue"}])
  {
    [v32 appendString:@"VALUES "];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v33 = a2;
  v34 = [a2 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v46;
    v37 = 1;
    while (2)
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v46 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v39 = *(*(&v45 + 1) + 8 * i);
        if ((v37 & 1) == 0)
        {
          [v32 appendString:{@", "}];
          v40 = [a4 valueForKey:@"explicitRestrictingEntityQualifier"];
          if ([v40 count])
          {
            [v40 replaceObjectAtIndex:0 withObject:MEMORY[0x1E695E118]];
          }
        }

        v41 = [(NSSQLIntermediate *)a1 _generateSQLForConstantValue:v39 inContext:a4];
        if (!v41)
        {

          goto LABEL_56;
        }

        v42 = v41;
        [v32 appendString:v41];

        v37 = 0;
      }

      v35 = [v33 countByEnumeratingWithState:&v45 objects:v57 count:16];
      v37 = 0;
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  [v32 appendString:@" "]);
  [a4 setValue:0 forKey:@"explicitRestrictingEntityQualifier"];
LABEL_57:
  v43 = *MEMORY[0x1E69E9840];
  return v32;
}

- (void)_generateSQLForExpressionCollection:(uint64_t)a3 allowToMany:(void *)a4 inContext:
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ([a1 isIndexExpressionScoped])
    {
      [a4 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Unsupported: collections not allowed in index expressions.", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", a2, @"Bad value", @"NSUnderlyingException"}];
    }

    v8 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @" (");
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      v12 = 1;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(a2);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          if ((v12 & 1) == 0)
          {
            [v8 appendString:{@", "}];
            v15 = [a4 valueForKey:@"explicitRestrictingEntityQualifier"];
            if ([v15 count])
            {
              [v15 replaceObjectAtIndex:0 withObject:MEMORY[0x1E695E118]];
            }
          }

          v16 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v14 allowToMany:a3 inContext:a4];
          if (!v16)
          {

            [a4 setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported element in aggregate expression %@", v14), 0), @"NSUnderlyingException"}];
            goto LABEL_17;
          }

          v17 = v16;
          [v8 appendString:v16];

          v12 = 0;
          ++v13;
        }

        while (v10 != v13);
        v10 = [a2 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v12 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    [v8 appendString:@" "]);
    [a4 setValue:0 forKey:@"explicitRestrictingEntityQualifier"];
  }

  else
  {
LABEL_17:
    v8 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_generateSQLForExpression:(uint64_t)a3 allowToMany:(void *)a4 inContext:
{
  v4 = a1;
  if (!a1)
  {
    return v4;
  }

  if ([a4 objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v9 = [a2 expressionType];
  if (v9 > 9)
  {
    if (v9 <= 13)
    {
      if (v9 != 10)
      {
        if (v9 == 13)
        {
          v12 = v4;
          v13 = a2;
          v11 = 0;
LABEL_27:

          return [(NSSQLIntermediate *)v12 _generateSQLForSubqueryExpression:v13 trailingKeypath:v11 inContext:a4];
        }

        goto LABEL_44;
      }

      goto LABEL_30;
    }

    switch(v9)
    {
      case 14:
        v18 = [a2 constantValue];

        return [(NSSQLIntermediate *)v4 _generateSQLForExpressionCollection:v18 allowToMany:a3 inContext:a4];
      case 20:
        v19 = [(NSSQLExpressionIntermediate *)[NSSQLTernaryExpressionIntermediate alloc] initWithExpression:a2 allowToMany:a3 inScope:v4];
        v20 = [(NSSQLTernaryExpressionIntermediate *)v19 generateSQLStringInContext:a4];

        return v20;
      case 50:

        return [(NSSQLIntermediate *)v4 _generateSQLForFetchExpression:a2 allowToMany:0 inContext:a4];
      default:
        goto LABEL_44;
    }
  }

  else if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v14 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"_pk"];
        v15 = v4;
        v16 = 0;
LABEL_31:

        return [v15 _generateSQLForKeyPathExpression:v14 allowToMany:v16 inContext:a4];
      }

      goto LABEL_44;
    }

    v17 = [a2 constantValue];

    return [(NSSQLIntermediate *)v4 _generateSQLForConstantValue:v17 inContext:a4];
  }

  else
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        if (v9 == 4)
        {
          if (([objc_opt_class() expressionIsBasicKeypath:a2] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](v4, a2))
          {
            if (![(NSSQLIntermediate *)v4 _functionExpressionIsSubqueryFollowedByKeypath:a2])
            {
              v21 = [(NSSQLExpressionIntermediate *)[NSSQLFunctionExpressionIntermediate alloc] initWithExpression:a2 allowToMany:0 inScope:v4];
              v4 = [(NSSQLFunctionExpressionIntermediate *)v21 generateSQLStringInContext:a4];
              if (!v4 && ![a4 objectForKey:@"NSUnderlyingExceptionKey"])
              {
                [a4 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported function expression %@", a2), 0), @"NSUnderlyingException"}];
              }

              return v4;
            }

            v10 = [a2 operand];
            v11 = [objc_msgSend(a2 "arguments")];
            v12 = v4;
            v13 = v10;
            goto LABEL_27;
          }

          goto LABEL_30;
        }

LABEL_44:
        [a4 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported expression type (%u, %@)", objc_msgSend(a2, "expressionType"), a2), 0), @"NSUnderlyingException"}];
        return 0;
      }

LABEL_30:
      v15 = v4;
      v14 = a2;
      v16 = a3;
      goto LABEL_31;
    }

    return [v4 _generateSQLForVariableExpression:a2 allowToMany:a3 inContext:a4];
  }
}

- (void)_generateSQLForFetchExpression:(uint64_t)a3 allowToMany:(void *)a4 inContext:
{
  if (!a1 || [a4 objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  if ([a1 isIndexScoped])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:a2 forKey:@"expression"];
    v10 = @"Fetch request expressions not allowed in indexes";
    v11 = v7;
    v12 = v8;
LABEL_5:
    [a4 setObject:objc_msgSend(v11 forKey:{"exceptionWithName:reason:userInfo:", v12, v10, v9), @"NSUnderlyingException"}];
    return 0;
  }

  v15 = [a2 requestExpression];
  v16 = [v15 expressionValueWithObject:0 context:0];
  v17 = [a4 objectForKey:@"persistentStore"];
  v18 = [a2 requestExpression];
  v19 = [a2 contextExpression];
  if (![v18 expressionType])
  {
    v20 = [objc_msgSend(v18 "constantValue")];
    v21 = v20;
    if ((!v20 || ![v20 count]) && !objc_msgSend(v19, "expressionType"))
    {
      v21 = [objc_msgSend(objc_msgSend(v19 "constantValue")];
    }

    if ([v21 count] == 1 && (objc_msgSend(v21, "containsObject:", v17) & 1) != 0)
    {
      v22 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v23 = [a4 objectForKey:@"nestingLevel"];
      v24 = [a4 objectForKey:@"persistentStore"];
      v25 = ([a2 isCountOnlyRequest] & 1) != 0 || objc_msgSend(v16, "resultType") == 4;
      v30 = [[NSSQLGenerator alloc] initWithPersistentStore:v24];
      [v16 _resolveEntityWithContext:{objc_msgSend(objc_msgSend(a2, "contextExpression"), "expressionValueWithObject:context:", 0, 0)}];
      v31 = [v23 unsignedIntValue];
      v32 = [a1 isWhereScoped];
      if (v30)
      {
        v33 = [(NSSQLGenerator *)v30 newSQLStatementForRequest:v16 ignoreInheritance:0 countOnly:v25 nestingLevel:(v31 + 1) nestIsWhereScoped:v32 requestContext:0];
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        v13 = objc_msgSend(@"("), "mutableCopy";
        [v13 appendString:{objc_msgSend(v33, "sqlString")}];
        [v13 appendString:@""]);
        [objc_msgSend(a4 objectForKey:{@"bindVars", "addObjectsFromArray:", objc_msgSend(v33, "bindVariables")}];
      }

      else
      {
        v13 = 0;
      }

      [v22 drain];
      return v13;
    }
  }

  v26 = [a2 expressionValueWithObject:0 context:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
  v27 = v26;
  if (!v26 || [v26 isNSNumber])
  {
    v28 = a1;
    v29 = v27;
LABEL_20:

    return [(NSSQLIntermediate *)v28 _generateSQLForConstantValue:v29 inContext:a4];
  }

  if ([a1 isUpdateScoped])
  {
    if ([v27 count])
    {
      if ([v27 count] != 1)
      {
        v34 = MEMORY[0x1E695DF30];
        v35 = *MEMORY[0x1E695D940];
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:v15 forKey:@"expression"];
        v10 = @"Unsupported fetch request expression in update - too many results";
        v11 = v34;
        v12 = v35;
        goto LABEL_5;
      }

      v29 = [v27 objectAtIndex:0];
      v28 = a1;
    }

    else
    {
      v28 = a1;
      v29 = 0;
    }

    goto LABEL_20;
  }

  return [(NSSQLIntermediate *)a1 _generateSQLForConstantCollection:v27 reboundFrom:0 inContext:a4];
}

@end