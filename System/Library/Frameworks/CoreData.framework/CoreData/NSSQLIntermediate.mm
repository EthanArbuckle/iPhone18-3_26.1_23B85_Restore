@interface NSSQLIntermediate
+ (BOOL)expressionIsBasicKeypath:(id)keypath;
+ (BOOL)isSimpleKeypath:(id)keypath;
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
- (NSSQLIntermediate)initWithScope:(id)scope;
- (id)_generateSQLForExpression:(uint64_t)expression allowToMany:(void *)many inContext:;
- (id)_lastScopedItem;
- (id)generateSQLStringInContext:(id)context;
- (uint64_t)_generateSQLForConstantValue:(uint64_t)value inContext:;
- (uint64_t)_generateSQLForSubqueryExpression:(uint64_t)expression trailingKeypath:(void *)keypath inContext:;
- (uint64_t)isSimpleNoIndexFunction:(uint64_t)function;
- (uint64_t)isVariableBasedKeypathScopedBySubquery:(uint64_t)result;
- (uint64_t)promoteJoinsInKeypathsForExpression:(uint64_t)result;
- (void)_generateSQLForConstantCollection:(uint64_t)collection reboundFrom:(void *)from inContext:;
- (void)_generateSQLForExpressionCollection:(uint64_t)collection allowToMany:(void *)many inContext:;
- (void)_generateSQLForFetchExpression:(uint64_t)expression allowToMany:(void *)many inContext:;
- (void)_promoteJoinsForSubqueryScopedKeypath:(id)keypath;
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

- (NSSQLIntermediate)initWithScope:(id)scope
{
  v5.receiver = self;
  v5.super_class = NSSQLIntermediate;
  result = [(NSSQLIntermediate *)&v5 init];
  if (result)
  {
    result->_scope = scope;
  }

  return result;
}

- (id)generateSQLStringInContext:(id)context
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

+ (BOOL)expressionIsBasicKeypath:(id)keypath
{
  if ([keypath expressionType] != 4 || objc_msgSend(objc_msgSend(keypath, "operand"), "expressionType") != 1 && objc_msgSend(objc_msgSend(keypath, "operand"), "expressionType"))
  {
    return 0;
  }

  if (sel_valueForKey_ == [keypath selector])
  {
    return 1;
  }

  return sel_valueForKeyPath_ == [keypath selector];
}

+ (BOOL)isSimpleKeypath:(id)keypath
{
  if ([keypath expressionType] == 3)
  {
    return 1;
  }

  return [self expressionIsBasicKeypath:keypath];
}

- (uint64_t)isSimpleNoIndexFunction:(uint64_t)function
{
  if (!function)
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

  arguments = [a2 arguments];
  if (!arguments)
  {
    return 0;
  }

  v5 = arguments;
  if ([arguments count] != 1)
  {
    return 0;
  }

  lastObject = [v5 lastObject];
  v7 = objc_opt_class();

  return [v7 isSimpleKeypath:lastObject];
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

- (void)_promoteJoinsForSubqueryScopedKeypath:(id)keypath
{
  scope = self->_scope;
  if (scope)
  {
    [(NSSQLIntermediate *)scope _promoteJoinsForSubqueryScopedKeypath:keypath];
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
      constantValue = [a2 constantValue];
      result = [constantValue countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(constantValue);
            }

            [(NSSQLIntermediate *)v3 promoteJoinsInKeypathsForExpression:?];
          }

          while (v8 != v10);
          result = [constantValue countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          arguments = [a2 arguments];
          result = [arguments countByEnumeratingWithState:&v16 objects:v20 count:16];
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
                  objc_enumerationMutation(arguments);
                }

                [(NSSQLIntermediate *)v3 promoteJoinsInKeypathsForExpression:?];
              }

              while (v13 != v15);
              result = [arguments countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  fetchIntermediate = [v3 fetchIntermediate];
  v6 = *MEMORY[0x1E69E9840];

  return [(NSSQLFetchIntermediate *)fetchIntermediate promoteToOuterJoinsAlongKeypathWithComponents:v4];
}

- (BOOL)_functionExpressionIsSubqueryFollowedByKeypath:(_BOOL8)result
{
  if (result)
  {
    return [a2 expressionType] == 4 && objc_msgSend(objc_msgSend(a2, "operand"), "expressionType") == 13 && (sel_valueForKey_ == objc_msgSend(a2, "selector") || sel_valueForKeyPath_ == objc_msgSend(a2, "selector")) && objc_msgSend(objc_msgSend(a2, "arguments"), "count") == 1;
  }

  return result;
}

- (uint64_t)_generateSQLForConstantValue:(uint64_t)value inContext:
{
  if (result)
  {
    v4 = [[NSSQLConstantValueIntermediate alloc] initWithConstantValue:a2 inScope:result context:value];
    v5 = [(NSSQLConstantValueIntermediate *)v4 generateSQLStringInContext:value];

    return v5;
  }

  return result;
}

- (uint64_t)_generateSQLForSubqueryExpression:(uint64_t)expression trailingKeypath:(void *)keypath inContext:
{
  if (self)
  {
    if ([objc_msgSend(a2 "collection")] - 3 <= 1)
    {
      v8 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:a2 trailingKeypath:expression inScope:self];
      v9 = [(NSSQLSubqueryExpressionIntermediate *)v8 generateSQLStringInContext:keypath];

      return v9;
    }

    [keypath setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Unsupported subquery collection expression type", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", a2, @"subquery", @"NSUnderlyingException"}];
  }

  return 0;
}

- (void)_generateSQLForConstantCollection:(uint64_t)collection reboundFrom:(void *)from inContext:
{
  v60 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_56:
    v32 = 0;
    goto LABEL_57;
  }

  v8 = [objc_msgSend(from objectForKey:{@"nestingLevel", "intValue"}];
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
      v26 = [from objectForKey:@"bindIntarrays"];
      if (!v26)
      {
        v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [from setObject:v26 forKey:@"bindIntarrays"];
      }

      v27 = [[NSSQLBindIntarray alloc] initWithValue:a2];
      -[NSSQLBindIntarray setTableName:](v27, "setTableName:", -[NSSQLAliasGenerator generateTempTableName]([from objectForKey:@"aliasGenerator"]));
      v28 = [v26 count];
      [v26 addObject:v27];
      [(NSSQLBindIntarray *)v27 setIndex:v28];

      if (collection)
      {
        v29 = [v26 count];
        v30 = [objc_msgSend(from objectForKey:{@"entity", "entityDescription"}];
        v31 = [from objectForKey:@"bindIntarraysSubstitutionOrder"];
        if (!v31)
        {
          v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [from setObject:v31 forKey:@"bindIntarraysSubstitutionOrder"];
        }

        [v31 addObject:collection];
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

      objCType = [v14 objCType];
      if (objCType)
      {
        v16 = *objCType - 66;
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

    v20 = [objc_msgSend(from objectForKey:{@"entity", "entityDescription"}];
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
  [from setValue:MEMORY[0x1E695E118] forKey:@"sqlIneligibleForCaching"];
  if ([objc_msgSend(from objectForKey:{@"generatePairs", "BOOLValue"}])
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
          v40 = [from valueForKey:@"explicitRestrictingEntityQualifier"];
          if ([v40 count])
          {
            [v40 replaceObjectAtIndex:0 withObject:MEMORY[0x1E695E118]];
          }
        }

        v41 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:v39 inContext:from];
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
  [from setValue:0 forKey:@"explicitRestrictingEntityQualifier"];
LABEL_57:
  v43 = *MEMORY[0x1E69E9840];
  return v32;
}

- (void)_generateSQLForExpressionCollection:(uint64_t)collection allowToMany:(void *)many inContext:
{
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ([self isIndexExpressionScoped])
    {
      [many setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Unsupported: collections not allowed in index expressions.", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", a2, @"Bad value", @"NSUnderlyingException"}];
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
            v15 = [many valueForKey:@"explicitRestrictingEntityQualifier"];
            if ([v15 count])
            {
              [v15 replaceObjectAtIndex:0 withObject:MEMORY[0x1E695E118]];
            }
          }

          v16 = [(NSSQLIntermediate *)self _generateSQLForExpression:v14 allowToMany:collection inContext:many];
          if (!v16)
          {

            [many setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported element in aggregate expression %@", v14), 0), @"NSUnderlyingException"}];
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
    [many setValue:0 forKey:@"explicitRestrictingEntityQualifier"];
  }

  else
  {
LABEL_17:
    v8 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_generateSQLForExpression:(uint64_t)expression allowToMany:(void *)many inContext:
{
  selfCopy = self;
  if (!self)
  {
    return selfCopy;
  }

  if ([many objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  expressionType = [a2 expressionType];
  if (expressionType > 9)
  {
    if (expressionType <= 13)
    {
      if (expressionType != 10)
      {
        if (expressionType == 13)
        {
          v12 = selfCopy;
          v13 = a2;
          v11 = 0;
LABEL_27:

          return [(NSSQLIntermediate *)v12 _generateSQLForSubqueryExpression:v13 trailingKeypath:v11 inContext:many];
        }

        goto LABEL_44;
      }

      goto LABEL_30;
    }

    switch(expressionType)
    {
      case 14:
        constantValue = [a2 constantValue];

        return [(NSSQLIntermediate *)selfCopy _generateSQLForExpressionCollection:constantValue allowToMany:expression inContext:many];
      case 20:
        v19 = [(NSSQLExpressionIntermediate *)[NSSQLTernaryExpressionIntermediate alloc] initWithExpression:a2 allowToMany:expression inScope:selfCopy];
        v20 = [(NSSQLTernaryExpressionIntermediate *)v19 generateSQLStringInContext:many];

        return v20;
      case 50:

        return [(NSSQLIntermediate *)selfCopy _generateSQLForFetchExpression:a2 allowToMany:0 inContext:many];
      default:
        goto LABEL_44;
    }
  }

  else if (expressionType <= 1)
  {
    if (expressionType)
    {
      if (expressionType == 1)
      {
        v14 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"_pk"];
        v15 = selfCopy;
        expressionCopy = 0;
LABEL_31:

        return [v15 _generateSQLForKeyPathExpression:v14 allowToMany:expressionCopy inContext:many];
      }

      goto LABEL_44;
    }

    constantValue2 = [a2 constantValue];

    return [(NSSQLIntermediate *)selfCopy _generateSQLForConstantValue:constantValue2 inContext:many];
  }

  else
  {
    if (expressionType != 2)
    {
      if (expressionType != 3)
      {
        if (expressionType == 4)
        {
          if (([objc_opt_class() expressionIsBasicKeypath:a2] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](selfCopy, a2))
          {
            if (![(NSSQLIntermediate *)selfCopy _functionExpressionIsSubqueryFollowedByKeypath:a2])
            {
              v21 = [(NSSQLExpressionIntermediate *)[NSSQLFunctionExpressionIntermediate alloc] initWithExpression:a2 allowToMany:0 inScope:selfCopy];
              selfCopy = [(NSSQLFunctionExpressionIntermediate *)v21 generateSQLStringInContext:many];
              if (!selfCopy && ![many objectForKey:@"NSUnderlyingExceptionKey"])
              {
                [many setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported function expression %@", a2), 0), @"NSUnderlyingException"}];
              }

              return selfCopy;
            }

            operand = [a2 operand];
            v11 = [objc_msgSend(a2 "arguments")];
            v12 = selfCopy;
            v13 = operand;
            goto LABEL_27;
          }

          goto LABEL_30;
        }

LABEL_44:
        [many setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported expression type (%u, %@)", objc_msgSend(a2, "expressionType"), a2), 0), @"NSUnderlyingException"}];
        return 0;
      }

LABEL_30:
      v15 = selfCopy;
      v14 = a2;
      expressionCopy = expression;
      goto LABEL_31;
    }

    return [selfCopy _generateSQLForVariableExpression:a2 allowToMany:expression inContext:many];
  }
}

- (void)_generateSQLForFetchExpression:(uint64_t)expression allowToMany:(void *)many inContext:
{
  if (!self || [many objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  if ([self isIndexScoped])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:a2 forKey:@"expression"];
    v10 = @"Fetch request expressions not allowed in indexes";
    v11 = v7;
    v12 = v8;
LABEL_5:
    [many setObject:objc_msgSend(v11 forKey:{"exceptionWithName:reason:userInfo:", v12, v10, v9), @"NSUnderlyingException"}];
    return 0;
  }

  requestExpression = [a2 requestExpression];
  v16 = [requestExpression expressionValueWithObject:0 context:0];
  v17 = [many objectForKey:@"persistentStore"];
  requestExpression2 = [a2 requestExpression];
  contextExpression = [a2 contextExpression];
  if (![requestExpression2 expressionType])
  {
    v20 = [objc_msgSend(requestExpression2 "constantValue")];
    v21 = v20;
    if ((!v20 || ![v20 count]) && !objc_msgSend(contextExpression, "expressionType"))
    {
      v21 = [objc_msgSend(objc_msgSend(contextExpression "constantValue")];
    }

    if ([v21 count] == 1 && (objc_msgSend(v21, "containsObject:", v17) & 1) != 0)
    {
      v22 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v23 = [many objectForKey:@"nestingLevel"];
      v24 = [many objectForKey:@"persistentStore"];
      v25 = ([a2 isCountOnlyRequest] & 1) != 0 || objc_msgSend(v16, "resultType") == 4;
      v30 = [[NSSQLGenerator alloc] initWithPersistentStore:v24];
      [v16 _resolveEntityWithContext:{objc_msgSend(objc_msgSend(a2, "contextExpression"), "expressionValueWithObject:context:", 0, 0)}];
      unsignedIntValue = [v23 unsignedIntValue];
      isWhereScoped = [self isWhereScoped];
      if (v30)
      {
        v33 = [(NSSQLGenerator *)v30 newSQLStatementForRequest:v16 ignoreInheritance:0 countOnly:v25 nestingLevel:(unsignedIntValue + 1) nestIsWhereScoped:isWhereScoped requestContext:0];
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
        [objc_msgSend(many objectForKey:{@"bindVars", "addObjectsFromArray:", objc_msgSend(v33, "bindVariables")}];
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
    selfCopy3 = self;
    v29 = v27;
LABEL_20:

    return [(NSSQLIntermediate *)selfCopy3 _generateSQLForConstantValue:v29 inContext:many];
  }

  if ([self isUpdateScoped])
  {
    if ([v27 count])
    {
      if ([v27 count] != 1)
      {
        v34 = MEMORY[0x1E695DF30];
        v35 = *MEMORY[0x1E695D940];
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:requestExpression forKey:@"expression"];
        v10 = @"Unsupported fetch request expression in update - too many results";
        v11 = v34;
        v12 = v35;
        goto LABEL_5;
      }

      v29 = [v27 objectAtIndex:0];
      selfCopy3 = self;
    }

    else
    {
      selfCopy3 = self;
      v29 = 0;
    }

    goto LABEL_20;
  }

  return [(NSSQLIntermediate *)self _generateSQLForConstantCollection:v27 reboundFrom:0 inContext:many];
}

@end