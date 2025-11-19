@interface NSSQLSubqueryExpressionIntermediate
- (BOOL)_isKeypathScopedToSubquery:(_BOOL8)result;
- (BOOL)keypathExpressionIsSafeLHSForIn:(id)a3;
- (NSSQLSubqueryExpressionIntermediate)initWithExpression:(id)a3 trailingKeypath:(id)a4 inScope:(id)a5;
- (id)fetchIntermediateForKeypathExpression:(id)a3;
- (id)generateSQLStringInContext:(id)a3;
- (id)governingAliasForKeypathExpression:(id)a3;
- (id)governingEntityForKeypathExpression:(id)a3;
- (uint64_t)canDoDirectJoinGivenPredicate:(void *)a1;
- (void)_promoteJoinsForSubqueryScopedKeypath:(id)a3;
- (void)_promoteJoinsForSubqueryScopedKeypaths;
- (void)_setVariableColumn:(uint64_t)a1;
- (void)dealloc;
@end

@implementation NSSQLSubqueryExpressionIntermediate

- (void)_promoteJoinsForSubqueryScopedKeypaths
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  keypathsToPromote = self->_keypathsToPromote;
  v4 = [(NSMutableArray *)keypathsToPromote countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(keypathsToPromote);
        }

        [(NSSQLFetchIntermediate *)self->_fetchIntermediate promoteToOuterJoinsAlongKeypathWithComponents:?];
      }

      v5 = [(NSMutableArray *)keypathsToPromote countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSSQLIntermediate *)self->super.super._scope _promoteJoinsForSubqueryScopedKeypaths];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  self->_trailingKeypath = 0;
  self->_selectFromEntity = 0;
  self->_variableExpression = 0;
  self->_governingEntityForVariable = 0;

  self->_selectFromCorrelationTarget = 0;
  self->_fetchIntermediate = 0;

  self->_selectEntityAlias = 0;
  self->_variableAlias = 0;

  self->_variableColumn = 0;
  self->_keypathsToPromote = 0;
  v3.receiver = self;
  v3.super_class = NSSQLSubqueryExpressionIntermediate;
  [(NSSQLSubqueryExpressionIntermediate *)&v3 dealloc];
}

- (NSSQLSubqueryExpressionIntermediate)initWithExpression:(id)a3 trailingKeypath:(id)a4 inScope:(id)a5
{
  v11.receiver = self;
  v11.super_class = NSSQLSubqueryExpressionIntermediate;
  v7 = [(NSSQLExpressionIntermediate *)&v11 initWithExpression:a3 allowToMany:0 inScope:a5];
  if (v7)
  {
    v7->_trailingKeypath = a4;
    if (a4)
    {
      if ([objc_msgSend(a4 "constantValue")] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7->_hasTrailingFunction = 1;
      }

      v8 = [objc_msgSend(a4 "constantValue")];
      v7->_isCount = v8;
      if (v8)
      {
        v7->_onlyTrailIsCount = [objc_msgSend(a4 "constantValue")];
        v9 = [MEMORY[0x1E696AF08] defaultInstance];
        v7->_subqueryHasTruePredicate = v9 == [a3 predicate];
      }
    }

    v7->_variableExpression = [a3 variableExpression];
    v7->_useDistinct = 0;
  }

  return v7;
}

- (BOOL)_isKeypathScopedToSubquery:(_BOOL8)result
{
  if (result)
  {
    v3 = result;
    return [a2 expressionType] == 4 && objc_msgSend(objc_msgSend(a2, "operand"), "expressionType") == 2 && (sel_valueForKey_ == objc_msgSend(a2, "selector") || sel_valueForKeyPath_ == objc_msgSend(a2, "selector")) && (objc_msgSend(objc_msgSend(a2, "operand"), "isEqual:", *(v3 + 40)) & 1) != 0;
  }

  return result;
}

- (id)fetchIntermediateForKeypathExpression:(id)a3
{
  if ([(NSSQLSubqueryExpressionIntermediate *)self _isKeypathScopedToSubquery:a3])
  {
    return self->_fetchIntermediate;
  }

  scope = self->super.super._scope;

  return [(NSSQLIntermediate *)scope fetchIntermediateForKeypathExpression:a3];
}

- (id)governingEntityForKeypathExpression:(id)a3
{
  if ([(NSSQLSubqueryExpressionIntermediate *)self _isKeypathScopedToSubquery:a3])
  {
    return self->_governingEntityForVariable;
  }

  v6.receiver = self;
  v6.super_class = NSSQLSubqueryExpressionIntermediate;
  return [(NSSQLIntermediate *)&v6 governingEntityForKeypathExpression:a3];
}

- (id)governingAliasForKeypathExpression:(id)a3
{
  if ([(NSSQLSubqueryExpressionIntermediate *)self _isKeypathScopedToSubquery:a3])
  {
    return self->_variableAlias;
  }

  v6.receiver = self;
  v6.super_class = NSSQLSubqueryExpressionIntermediate;
  return [(NSSQLIntermediate *)&v6 governingAliasForKeypathExpression:a3];
}

- (void)_promoteJoinsForSubqueryScopedKeypath:(id)a3
{
  if ([objc_msgSend(a3 "operand")])
  {
    if ([a3 expressionType] == 3)
    {
      v5 = [a3 keyPath];
    }

    else
    {
      v5 = [objc_msgSend(objc_msgSend(a3 "arguments")];
    }

    v6 = [v5 componentsSeparatedByString:@"."];
    keypathsToPromote = self->_keypathsToPromote;
    if (!keypathsToPromote)
    {
      keypathsToPromote = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_keypathsToPromote = keypathsToPromote;
    }

    [(NSMutableArray *)keypathsToPromote addObject:v6];
  }

  scope = self->super.super._scope;

  [(NSSQLIntermediate *)scope _promoteJoinsForSubqueryScopedKeypath:a3];
}

- (BOOL)keypathExpressionIsSafeLHSForIn:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(NSSQLSubqueryExpressionIntermediate *)self _isKeypathScopedToSubquery:a3])
  {
    v5 = [(NSSQLSubqueryExpressionIntermediate *)self governingEntityForKeypathExpression:a3];
    if ([a3 expressionType] == 3)
    {
      v6 = [a3 keyPath];
    }

    else
    {
      v6 = [objc_msgSend(objc_msgSend(a3 "arguments")];
    }

    v8 = [v6 componentsSeparatedByString:@"."];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v21;
LABEL_8:
      v13 = 0;
      while (1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        if (!v5)
        {
          goto LABEL_23;
        }

        v14 = [v5[5] objectForKey:*(*(&v20 + 1) + 8 * v13)];
        if (!v14)
        {
          goto LABEL_23;
        }

        v15 = v14;
        if ([v14 isToMany])
        {
          break;
        }

        v16 = v15[24];
        if (v16 == 7)
        {
          v5 = [v15 destinationEntity];
        }

        else
        {
          if (v16 == 9)
          {
            break;
          }

          v5 = 0;
        }

LABEL_20:
        if (v10 == ++v13)
        {
          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
          result = 1;
          if (v10)
          {
            goto LABEL_8;
          }

          goto LABEL_25;
        }
      }

      v17 = [v15 destinationEntity];
      if (v11)
      {
        result = 0;
        goto LABEL_25;
      }

      v5 = v17;
      v11 = 1;
      goto LABEL_20;
    }

LABEL_23:
    result = 1;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = NSSQLSubqueryExpressionIntermediate;
    result = [(NSSQLIntermediate *)&v19 keypathExpressionIsSafeLHSForIn:a3];
  }

LABEL_25:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_setVariableColumn:(uint64_t)a1
{
  if (*(a1 + 88) != a2)
  {
    v4 = a2;

    *(a1 + 88) = a2;
  }
}

- (uint64_t)canDoDirectJoinGivenPredicate:(void *)a1
{
  v4 = [NSSQLSubqueryExpressionIntermediatePredicateVisitor alloc];
  if (v4)
  {
    v8.receiver = v4;
    v8.super_class = NSSQLSubqueryExpressionIntermediatePredicateVisitor;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    if (v5)
    {
      v5[1] = a1;
      *(v5 + 16) = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 checkPredicate:a2];

  return v6;
}

- (id)generateSQLStringInContext:(id)a3
{
  v3 = a3;
  v158 = *MEMORY[0x1E69E9840];
  if ([a3 objectForKey:@"NSUnderlyingException"])
  {
    goto LABEL_9;
  }

  if (![(NSSQLIntermediate *)self isIndexScoped])
  {
    trailingKeypath = self->_trailingKeypath;
    if (trailingKeypath)
    {
      v12 = [(NSExpression *)trailingKeypath predicateFormat];
      v13 = [v12 rangeOfString:@".@"];
      if (v13 != [v12 rangeOfString:@".@" options:4])
      {
        v14 = MEMORY[0x1E695DF30];
        v15 = *MEMORY[0x1E695D940];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported subquery (too many functions): %@", self->super._expression];
LABEL_7:
        v8 = v16;
        v9 = v14;
        v10 = v15;
        v7 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      v12 = 0;
    }

    if ((-[NSSQLIntermediate isTargetColumnsScoped](self, "isTargetColumnsScoped") || -[NSSQLIntermediate isUpdateScoped](self, "isUpdateScoped")) && !self->_trailingKeypath && ([v12 hasSuffix:@".@count"] & 1) == 0 && (objc_msgSend(v12, "hasSuffix:", @".@min") & 1) == 0 && (objc_msgSend(v12, "hasSuffix:", @".@max") & 1) == 0 && (objc_msgSend(v12, "hasSuffix:", @".@sum") & 1) == 0 && (objc_msgSend(v12, "hasSuffix:", @".@avg") & 1) == 0)
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported subquery (non-aggregate not allowed in select or update column): %@", self->super._expression];
      goto LABEL_7;
    }

    self->_fetchIntermediate = [[NSSQLFetchIntermediate alloc] initWithScope:self];
    v20 = [(NSExpression *)self->super._expression collection];
    if (([objc_opt_class() isSimpleKeypath:v20] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v20))
    {
      [v3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported subquery collection type (%@)", v20), 0), @"NSUnderlyingException"}];
      goto LABEL_140;
    }

    v21 = [objc_msgSend(objc_msgSend(objc_msgSend(v20 "arguments")];
    if ([v21 count] < 2)
    {
      v22 = [MEMORY[0x1E695DEC8] array];
    }

    else
    {
      v22 = [v21 subarrayWithRange:{1, objc_msgSend(v21, "count") - 1}];
    }

    v151 = v22;
    v23 = [(NSSQLIntermediate *)self->super.super._scope governingEntityForKeypathExpression:v20];
    self->_selectFromEntity = v23;
    v24 = [(NSSQLIntermediate *)self isUpdateColumnsScoped];
    scope = self->super.super._scope;
    if (v24)
    {
      v26 = [(NSSQLIntermediate *)scope governingAlias];
      if (v26)
      {
        goto LABEL_30;
      }

      v27 = [(NSSQLEntity *)v23 tableName];
    }

    else
    {
      v27 = [(NSSQLIntermediate *)scope governingAliasForKeypathExpression:v20];
    }

    v26 = v27;
LABEL_30:
    v148 = v20;
    v28 = [v21 objectAtIndex:0];
    if (v23)
    {
      v29 = [(NSMutableDictionary *)v23->_properties objectForKey:v28];
      v30 = [v3 valueForKey:@"explicitRestrictingEntityQualifier"];
      if (v29)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v30 = [v3 valueForKey:@"explicitRestrictingEntityQualifier"];
    }

    v31 = v30;
    if ([v30 count])
    {
      v32 = [v31 lastObject];
      v33 = [v21 objectAtIndex:0];
      if (v32)
      {
        v29 = [*(v32 + 40) objectForKey:v33];
      }

      else
      {
        v29 = 0;
      }

      [v31 removeLastObject];
    }

    else
    {
      v29 = 0;
    }

LABEL_38:
    v34 = [objc_msgSend(v3 objectForKey:{@"aliasGenerator", "generateTableAlias"}];
    self->_selectEntityAlias = v34;
    self->_variableAlias = v34;
    self->_governingEntityForVariable = self->_selectFromEntity;
    v35 = [v29 propertyType];
    [(NSSQLStatementIntermediate *)self->_fetchIntermediate setGoverningAlias:self->_selectEntityAlias];
    switch(v35)
    {
      case 9:
        v47 = [v29 destinationEntity];
        self->_selectFromEntity = v47;
        self->_governingEntityForVariable = v47;
        if (v29)
        {
          v41 = v29[7];
        }

        else
        {
          v41 = 0;
        }

        v48 = [v26 mutableCopy];
        [v48 appendString:@"."];
        if (v23)
        {
          primaryKey = v23->_primaryKey;
        }

        else
        {
          primaryKey = 0;
        }

        [v48 appendString:{-[NSSQLColumn columnName](primaryKey, "columnName")}];
        [v48 appendString:@" = "];
        [v48 appendString:self->_selectEntityAlias];
        [v48 appendString:@"."];
        [v48 appendString:-[NSSQLManyToMany inverseColumnName](v41)];
        [(NSSQLStatementIntermediate *)self->_fetchIntermediate setCorrelationToken:v48];

        if (self->_onlyTrailIsCount && self->_subqueryHasTruePredicate)
        {
          v50 = [objc_msgSend(v29 "correlationTableName")];
          self->_selectFromCorrelationTarget = v50;
          [(NSMutableString *)v50 appendString:@" "];
          [(NSMutableString *)self->_selectFromCorrelationTarget appendString:self->_selectEntityAlias];
          v42 = 0;
          goto LABEL_64;
        }

        v51 = [objc_msgSend(v29 "correlationTableName")];
        self->_selectFromCorrelationTarget = v51;
        [(NSMutableString *)v51 appendString:@" "];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:self->_selectEntityAlias];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:@" JOIN "];
        -[NSMutableString appendString:](self->_selectFromCorrelationTarget, "appendString:", [objc_msgSend(v29 "destinationEntity")]);
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:@" "];
        v52 = [objc_msgSend(v3 objectForKey:{@"aliasGenerator", "generateTableAlias"}];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:v52];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:@" ON "];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:self->_selectEntityAlias];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:@"."];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:[(__CFString *)v41 columnName]];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:@" = "];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:v52];
        [(NSMutableString *)self->_selectFromCorrelationTarget appendString:@"."];
        selectFromCorrelationTarget = self->_selectFromCorrelationTarget;
        v54 = [v29 destinationEntity];
        if (v54)
        {
          v54 = v54[16];
        }

        -[NSMutableString appendString:](selectFromCorrelationTarget, "appendString:", [v54 columnName]);

        self->_selectEntityAlias = v52;
        self->_variableAlias = self->_selectEntityAlias;
        break;
      case 8:
        v43 = [v29 destinationEntity];
        self->_selectFromEntity = v43;
        self->_governingEntityForVariable = v43;
        if (v29)
        {
          v44 = v29[7];
        }

        else
        {
          v44 = 0;
        }

        v45 = [v26 mutableCopy];
        [v45 appendString:@"."];
        if (v23)
        {
          v46 = v23->_primaryKey;
        }

        else
        {
          v46 = 0;
        }

        [v45 appendString:{-[NSSQLColumn columnName](v46, "columnName")}];
        [v45 appendString:@" = "];
        [v45 appendString:self->_selectEntityAlias];
        [v45 appendString:@"."];
        [v45 appendString:{objc_msgSend(objc_msgSend(v44, "foreignKey"), "columnName")}];
        [(NSSQLStatementIntermediate *)self->_fetchIntermediate setCorrelationToken:v45];

        break;
      case 7:
        v36 = [v29 destinationEntity];
        self->_selectFromEntity = v36;
        self->_governingEntityForVariable = v36;
        v37 = [v26 mutableCopy];
        [v37 appendString:@"."];
        [v37 appendString:{objc_msgSend(objc_msgSend(v29, "foreignKey"), "columnName")}];
        [v37 appendString:@" = "];
        [v37 appendString:self->_selectEntityAlias];
        [v37 appendString:@"."];
        selectFromEntity = self->_selectFromEntity;
        if (selectFromEntity)
        {
          v39 = selectFromEntity->_primaryKey;
        }

        else
        {
          v39 = 0;
        }

        [v37 appendString:{-[NSSQLColumn columnName](v39, "columnName")}];
        [(NSSQLStatementIntermediate *)self->_fetchIntermediate setCorrelationToken:v37];

        v40 = [v29 destinationEntity];
        if (v40)
        {
          v41 = *(v40 + 128);
        }

        else
        {
          v41 = 0;
        }

        v42 = 1;
        goto LABEL_64;
      default:
        [v3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Can't have a non-relationship collection element in a subquery%@", self->super._expression), 0), @"NSUnderlyingException"}];
        goto LABEL_140;
    }

    v55 = [v29 destinationEntity];
    if (v55)
    {
      v42 = 0;
      v41 = *(v55 + 128);
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

LABEL_64:
    [(NSSQLSubqueryExpressionIntermediate *)self _setVariableColumn:v41];
    [(NSSQLStatementIntermediate *)self->_fetchIntermediate setGoverningEntity:self->_selectFromEntity];
    v56 = self->_trailingKeypath;
    if (v56)
    {
      v57 = [(NSString *)[(NSExpression *)v56 keyPath] componentsSeparatedByString:@"."];
    }

    else
    {
      v57 = 0;
    }

    if ([-[NSArray objectAtIndex:](v57 objectAtIndex:{0), "isEqualToString:", &stru_1EF3F1768}])
    {
      v57 = [(NSArray *)v57 subarrayWithRange:1, [(NSArray *)v57 count]- 1];
    }

    if (!self->_hasTrailingFunction)
    {
      goto LABEL_74;
    }

    if ([(NSArray *)v57 count]> 1)
    {
      [v151 count];
LABEL_78:
      v59 = [v151 mutableCopy];
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      v60 = [(NSArray *)v57 countByEnumeratingWithState:&v153 objects:v157 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v154;
        do
        {
          for (i = 0; i != v61; ++i)
          {
            if (*v154 != v62)
            {
              objc_enumerationMutation(v57);
            }

            v64 = *(*(&v153 + 1) + 8 * i);
            if (([v64 hasPrefix:@"@"] & 1) == 0)
            {
              [v59 addObject:v64];
            }
          }

          v61 = [(NSArray *)v57 countByEnumeratingWithState:&v153 objects:v157 count:16];
        }

        while (v61);
      }

      v65 = [v151 count];
      v152 = v65 - 1;
      v66 = [v59 count];
      v67 = v66;
      v149 = v66 - 1;
      v150 = v65;
      if (!v66)
      {
        v69 = 0;
        v74 = 0;
        goto LABEL_115;
      }

      v147 = v3;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = self->_selectFromEntity;
      v146 = v66 == v65;
      while (1)
      {
        v72 = [v59 objectAtIndex:v70];
        if (!v71)
        {
          break;
        }

        v73 = [(NSMutableDictionary *)v71->_properties objectForKey:v72];
        if (!v73)
        {
          break;
        }

        v74 = v73;
        v75 = [(NSSQLProperty *)v73 propertyType];
        if ((v75 - 7) > 2)
        {
          if (v149 != v70)
          {
            v79 = MEMORY[0x1E695DF30];
            v80 = *MEMORY[0x1E695D940];
            v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad collection keypath in subquery %@ (attribute in non-terminal position)", self->super._expression, v145];
            goto LABEL_113;
          }

          v69 |= v67 == v150;
          v68 = 1;
        }

        else
        {
          if (!(((v75 & 0xE) != 8) | v42 & 1))
          {
            v79 = MEMORY[0x1E695DF30];
            v80 = *MEMORY[0x1E695D940];
            v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Only allowed one toMany/manyToMany relationship in subquery expression collection (%@)", self->super._expression, v145];
            goto LABEL_113;
          }

          v42 &= (v75 & 0xE) != 8;
          v71 = [(NSSQLColumn *)v74 destinationEntity];
        }

        if (v152 == v70)
        {
          if (v69)
          {
            self->_governingEntityForVariable = v71;
            v76 = self;
            v77 = v74;
          }

          else
          {
            v78 = [(NSSQLColumn *)v74 destinationEntity];
            self->_governingEntityForVariable = v78;
            if (v78)
            {
              v77 = v78->_primaryKey;
            }

            else
            {
              v77 = 0;
            }

            v76 = self;
          }

          [(NSSQLSubqueryExpressionIntermediate *)v76 _setVariableColumn:v77];
        }

        if (v67 == ++v70)
        {
          if (v68)
          {
            self->_targetColumn = v74;
            v3 = v147;
            if (v67 == 1)
            {
              v82 = 1;
              v83 = v146;
              goto LABEL_118;
            }

            self->_variableAlias = 0;
            v86 = 1;
            v83 = v146;
LABEL_121:
            if ([(NSSQLIntermediate *)self isUpdateColumnsScoped])
            {
              [v3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported subquery with multiple joins in update columns %@", v148), 0), @"NSUnderlyingException"}];
              goto LABEL_140;
            }

            v87 = [v3 objectForKey:@"subqueryCollectionContext"];
            [v3 setObject:self forKey:@"subqueryCollectionContext"];
            v88 = [NSSQLJoinIntermediate createJoinIntermediatesForKeypath:v59 startEntity:self->_selectFromEntity startAlias:self->_selectEntityAlias forScope:self inStatementIntermediate:self->_fetchIntermediate inContext:v3];
            if (v87)
            {
              [v3 setObject:v87 forKey:@"subqueryCollectionContext"];
            }

            else
            {
              [v3 removeObjectForKey:@"subqueryCollectionContext"];
            }

            if ([v3 objectForKey:@"NSUnderlyingException"])
            {

              goto LABEL_140;
            }

            if (v88)
            {
              if (v83)
              {
                v89 = v151;
                if (v69)
                {
                  v89 = [v151 subarrayWithRange:{0, v152}];
                }

                v90 = [(NSSQLFetchIntermediate *)self->_fetchIntermediate finalJoinForKeypathWithComponents:v89];
                v91 = v90;
                if (v90)
                {
                  if (v86)
                  {
                    v92 = *(v90 + 32);
                    goto LABEL_135;
                  }

                  v132 = *(v90 + 16);
                  if (v132 && *(v132 + 24) == 9)
                  {
                    if ([(NSSQLSubqueryExpressionIntermediate *)self canDoDirectJoinGivenPredicate:?])
                    {
                      *(v91 + 56) = 1;
                      v133 = *(v91 + 40);
                      self->_variableAlias = v133;
                      self->_targetAlias = v133;
                      v134 = objc_alloc_init(NSSQLColumn);
                      v135 = [(NSSQLManyToMany *)v132 inverseColumnName];
                      [(NSSQLColumn *)v134 _setColumnName:v135];
                      if (v134)
                      {
                        *&v134->super._flags |= 1u;
                      }

                      [(NSSQLSubqueryExpressionIntermediate *)self _setVariableColumn:v134];

LABEL_223:
                      v98 = &OBJC_IVAR___NSSQLSubqueryExpressionIntermediate__targetColumn;
                      variableColumn = self->_variableColumn;
                    }

                    else
                    {
                      v142 = *(v91 + 32);
                      self->_variableAlias = v142;
                      self->_targetAlias = v142;
                      v143 = [*(v91 + 16) destinationEntity];
                      if (v143)
                      {
                        v144 = *(v143 + 128);
                      }

                      else
                      {
                        v144 = 0;
                      }

                      [(NSSQLSubqueryExpressionIntermediate *)self _setVariableColumn:v144];
                      v98 = &OBJC_IVAR___NSSQLSubqueryExpressionIntermediate__targetColumn;
                      variableColumn = self->_variableColumn;
                    }

LABEL_139:
                    *(&self->super.super.super.isa + *v98) = variableColumn;

LABEL_140:
                    if ([v3 objectForKey:@"NSUnderlyingException"])
                    {
LABEL_141:

                      v17 = 0;
                      self->_fetchIntermediate = 0;
                      goto LABEL_10;
                    }

                    v99 = [(NSExpression *)self->super._expression predicate];
                    if (v99)
                    {
                      v100 = v99;
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v101 = [[NSSQLSimpleWhereIntermediate alloc] initWithPredicate:[(NSExpression *)self->super._expression predicate] inScope:self];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v101 = [[NSSQLCompoundWhereIntermediate alloc] initWithPredicate:[(NSExpression *)self->super._expression predicate] inScope:self inContext:v3];
                          if (!v101)
                          {
                            goto LABEL_141;
                          }
                        }

                        else
                        {
                          if ([MEMORY[0x1E696AE18] predicateWithValue:1] != v100)
                          {

                            self->_fetchIntermediate = 0;
                            [v3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Unknown predicate type", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", self->super._expression, @"subquery", @"NSUnderlyingException"}];
                          }

                          v101 = 0;
                        }
                      }

                      if ([v3 objectForKey:@"NSUnderlyingException"])
                      {

                        goto LABEL_9;
                      }

                      [(NSSQLStatementIntermediate *)self->_fetchIntermediate setWhereIntermediate:v101];
                    }

                    v102 = self->_trailingKeypath;
                    if (!v102)
                    {
                      v106 = self->_variableColumn;
                      goto LABEL_167;
                    }

                    v103 = [(NSString *)[(NSExpression *)v102 keyPath] componentsSeparatedByString:@"."];
                    if ([-[NSArray objectAtIndex:](v103 objectAtIndex:{0), "isEqual:", &stru_1EF3F1768}])
                    {
                      v103 = [(NSArray *)v103 mutableCopy];
                      [(NSArray *)v103 removeObjectAtIndex:0];
                    }

                    v104 = [(NSArray *)v103 objectAtIndex:[(NSArray *)v103 count]- 1];
                    if (self->_hasTrailingFunction)
                    {
                      v105 = v104;
                      if ([@"@count" isEqual:v104])
                      {
                        v106 = objc_alloc_init(NSSQLColumn);
                        if ([(NSSQLIntermediate *)self isUpdateColumnsScoped])
                        {
                          v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"COUNT(%@)", -[NSSQLColumn columnName](self->_targetColumn, "columnName"), v145];
                        }

                        else
                        {
                          v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"COUNT(%@.%@)", self->_targetAlias, -[NSSQLColumn columnName](self->_targetColumn, "columnName")];
                        }

                        [(NSSQLColumn *)v106 _setColumnName:v107];
                        if (!v106)
                        {
LABEL_167:
                          v110 = self->_selectFromCorrelationTarget;
                          v111 = [NSSQLSelectIntermediate alloc];
                          selectEntityAlias = self->_selectEntityAlias;
                          if (v110)
                          {
                            v113 = -[NSSQLSelectIntermediate initForCorrelationTarget:alias:fetchColumns:inScope:](v111, "initForCorrelationTarget:alias:fetchColumns:inScope:", self->_selectFromCorrelationTarget, selectEntityAlias, [MEMORY[0x1E695DEC8] arrayWithObject:v106], self);
                          }

                          else
                          {
                            v113 = -[NSSQLSelectIntermediate initWithEntity:alias:fetchColumns:inScope:](v111, "initWithEntity:alias:fetchColumns:inScope:", self->_selectFromEntity, selectEntityAlias, [MEMORY[0x1E695DEC8] arrayWithObject:v106], self);
                          }

                          v114 = v113;
                          [(NSSQLSelectIntermediate *)v113 setColumnAlias:?];
                          if (v114)
                          {
                            v114[48] = self->_useDistinct;
                          }

                          [(NSSQLFetchIntermediate *)self->_fetchIntermediate setSelectIntermediate:v114];

LABEL_173:
                          v115 = [(NSSQLFetchIntermediate *)self->_fetchIntermediate generateSQLStringInContext:v3];
                          if (v115)
                          {
                            v116 = v115;
                            v17 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
                            [v17 appendString:v116];
                            [v17 appendString:@""]);

                            goto LABEL_10;
                          }

                          goto LABEL_9;
                        }

LABEL_166:
                        *&v106->super._flags &= ~1u;
                        goto LABEL_167;
                      }

                      if (([objc_msgSend(v3 objectForKey:{@"supportedKVCAggregates", "containsObject:", v105}] & 1) != 0 || objc_msgSend(v105, "isEqual:", @"@total"))
                      {
                        if ([(NSSQLProperty *)self->_targetColumn propertyType]== 1)
                        {
                          if ([v105 characterAtIndex:1] == 97)
                          {
                            v117 = @"AVG";
                          }

                          else
                          {
                            v117 = [objc_msgSend(v105 substringFromIndex:{1), "uppercaseString"}];
                          }

                          v106 = objc_alloc_init(NSSQLColumn);
                          v108 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1EF3F1768];
                          [v108 appendString:v117];
                          objc_msgSend(v108, "appendString:", @"(");
                          if (![(NSSQLIntermediate *)self isUpdateColumnsScoped])
                          {
                            [v108 appendString:self->_targetAlias];
                            [v108 appendString:@"."];
                          }

                          [v108 appendString:{-[NSSQLColumn columnName](self->_targetColumn, "columnName")}];
                          v109 = @" ");
                          goto LABEL_165;
                        }

                        v118 = MEMORY[0x1E695DF30];
                        v119 = *MEMORY[0x1E695D940];
                        v120 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Aggregate functions need to work on attributes: %@", self->super._expression, v145];
                      }

                      else
                      {
                        v118 = MEMORY[0x1E695DF30];
                        v119 = *MEMORY[0x1E695D940];
                        expression = self->super._expression;
                        v120 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported KVC function in trailing keypath %@, %@", expression, self->_trailingKeypath];
                      }

                      [v3 setObject:objc_msgSend(v118 forKey:{"exceptionWithName:reason:userInfo:", v119, v120, 0), @"NSUnderlyingException"}];
                      goto LABEL_173;
                    }

                    v106 = objc_alloc_init(NSSQLColumn);
                    v108 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1EF3F1768];
                    if (![(NSSQLIntermediate *)self isUpdateColumnsScoped])
                    {
                      [v108 appendString:self->_targetAlias];
                      [v108 appendString:@"."];
                    }

                    v109 = [(NSSQLColumn *)self->_targetColumn columnName];
LABEL_165:
                    [v108 appendString:v109];
                    [(NSSQLColumn *)v106 _setColumnName:v108];

                    if (!v106)
                    {
                      goto LABEL_167;
                    }

                    goto LABEL_166;
                  }

                  v139 = *(v90 + 32);
LABEL_219:
                  v140 = v139;
                  self->_variableAlias = v140;
                  self->_targetAlias = v140;
                  if (v91)
                  {
                    v141 = [*(v91 + 16) destinationEntity];
                    if (v141)
                    {
                      v96 = *(v141 + 128);
                      goto LABEL_222;
                    }

                    goto LABEL_248;
                  }
                }

                else
                {
                  v139 = 0;
                  v92 = 0;
                  if ((v86 & 1) == 0)
                  {
                    goto LABEL_219;
                  }

LABEL_135:
                  v93 = v92;
                  self->_variableAlias = v93;
                  self->_targetAlias = v93;
                  if (v91)
                  {
                    v94 = [*(v91 + 16) destinationEntity];
                    v95 = [v151 lastObject];
                    if (v94)
                    {
                      v96 = [*(v94 + 40) objectForKey:v95];
LABEL_222:
                      [(NSSQLSubqueryExpressionIntermediate *)self _setVariableColumn:v96];
                      goto LABEL_223;
                    }

LABEL_248:
                    v96 = 0;
                    goto LABEL_222;
                  }

                  [v151 lastObject];
                }

                v96 = 0;
                goto LABEL_222;
              }

              if (v150)
              {
                v122 = [(NSSQLFetchIntermediate *)self->_fetchIntermediate finalJoinForKeypathWithComponents:v151];
                if (v122)
                {
                  v123 = v122;
                  v124 = [*(v122 + 16) destinationEntity];
                  if (v124)
                  {
                    v125 = *(v124 + 128);
                  }

                  else
                  {
                    v125 = 0;
                  }

                  [(NSSQLSubqueryExpressionIntermediate *)self _setVariableColumn:v125];
                  v126 = *(v123 + 32);
                }

                else
                {
                  [(NSSQLSubqueryExpressionIntermediate *)self _setVariableColumn:?];
                  v126 = 0;
                }

                self->_variableAlias = v126;
                v127 = v59;
                if (v86)
                {
                  v127 = [v59 subarrayWithRange:{0, v149}];
                }

                v128 = [(NSSQLFetchIntermediate *)self->_fetchIntermediate finalJoinForKeypathWithComponents:v127];
                if (v128)
                {
                  self->_targetAlias = *(v128 + 32);
                  v129 = [*(v128 + 16) destinationEntity];
                  v130 = v129;
                  if (v86)
                  {
                    v131 = [v59 lastObject];
                    if (!v130)
                    {
LABEL_225:
                      variableColumn = 0;
                      goto LABEL_217;
                    }

LABEL_214:
                    variableColumn = [*(v130 + 40) objectForKey:v131];
LABEL_217:
                    v98 = &OBJC_IVAR___NSSQLSubqueryExpressionIntermediate__targetColumn;
                    goto LABEL_139;
                  }

                  if (!v129)
                  {
                    goto LABEL_225;
                  }

LABEL_216:
                  variableColumn = *(v130 + 128);
                  goto LABEL_217;
                }
              }

              else
              {
                v136 = v59;
                if (v86)
                {
                  v136 = [v59 subarrayWithRange:{0, v149}];
                }

                v137 = [(NSSQLFetchIntermediate *)self->_fetchIntermediate finalJoinForKeypathWithComponents:v136];
                self->_variableAlias = self->_selectEntityAlias;
                if (v137)
                {
                  self->_targetAlias = *(v137 + 32);
                  v138 = [*(v137 + 16) destinationEntity];
                  v130 = v138;
                  if (v86)
                  {
                    v131 = [v59 lastObject];
                    if (!v130)
                    {
                      goto LABEL_225;
                    }

                    goto LABEL_214;
                  }

                  if (!v138)
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_216;
                }
              }

              v98 = &OBJC_IVAR___NSSQLSubqueryExpressionIntermediate__targetColumn;
              self->_targetAlias = 0;
              if (v86)
              {
                [v59 lastObject];
                variableColumn = 0;
                v98 = &OBJC_IVAR___NSSQLSubqueryExpressionIntermediate__targetColumn;
              }

              else
              {
                variableColumn = 0;
              }

              goto LABEL_139;
            }

LABEL_138:
            v88 = 0;
            self->_variableAlias = self->_selectEntityAlias;
            variableColumn = self->_selectEntityAlias;
            v98 = &OBJC_IVAR___NSSQLSubqueryExpressionIntermediate__targetAlias;
            goto LABEL_139;
          }

          v3 = v147;
LABEL_115:
          v84 = [(NSSQLColumn *)v74 destinationEntity];
          if (v84)
          {
            v85 = *(v84 + 128);
          }

          else
          {
            v85 = 0;
          }

          v82 = 0;
          self->_targetColumn = v85;
          v83 = v67 == v150;
LABEL_118:

          self->_variableAlias = 0;
          if (v67 && (v82 & 1) == 0)
          {
            v86 = 0;
            goto LABEL_121;
          }

          goto LABEL_138;
        }
      }

      v79 = MEMORY[0x1E695DF30];
      v80 = *MEMORY[0x1E695D940];
      v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad collection keypath (%@) can't find property named (%@) ", self->super._expression, v72];
LABEL_113:
      v3 = v147;
      [v147 setObject:objc_msgSend(v79 forKey:{"exceptionWithName:reason:userInfo:", v80, v81, 0), @"NSUnderlyingException"}];
      goto LABEL_140;
    }

    if (self->_hasTrailingFunction)
    {
      v58 = 0;
    }

    else
    {
LABEL_74:
      v58 = [(NSArray *)v57 count]!= 0;
    }

    if (![v151 count] && !v58)
    {
      self->_targetAlias = self->_variableAlias;
      self->_targetColumn = self->_variableColumn;
      goto LABEL_140;
    }

    goto LABEL_78;
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:self->super._expression forKey:@"expression"];
  v8 = @"Subquery expressions not allowed in indexes";
  v9 = v5;
  v10 = v6;
LABEL_8:
  [v3 setObject:objc_msgSend(v9 forKey:{"exceptionWithName:reason:userInfo:", v10, v8, v7), @"NSUnderlyingException"}];
LABEL_9:
  v17 = 0;
LABEL_10:
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

@end