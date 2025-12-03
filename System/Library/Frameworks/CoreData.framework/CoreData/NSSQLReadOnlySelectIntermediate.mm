@interface NSSQLReadOnlySelectIntermediate
- (NSSQLReadOnlySelectIntermediate)initWithScope:(id)scope;
- (id)generateSQLStringInContext:(id)context;
- (id)resolveVariableExpression:(id)expression inContext:(id)context;
- (void)dealloc;
@end

@implementation NSSQLReadOnlySelectIntermediate

- (void)dealloc
{
  *&self->_onlyFetchesAggregates = 0;

  self->_variableToAliasMappings = 0;
  v3.receiver = self;
  v3.super_class = NSSQLReadOnlySelectIntermediate;
  [(NSSQLSelectIntermediate *)&v3 dealloc];
}

- (NSSQLReadOnlySelectIntermediate)initWithScope:(id)scope
{
  v5.receiver = self;
  v5.super_class = NSSQLReadOnlySelectIntermediate;
  v3 = [(NSSQLIntermediate *)&v5 initWithScope:scope];
  if (v3)
  {
    *&v3->_onlyFetchesAggregates = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3->_variableToAliasMappings = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v3;
}

- (id)resolveVariableExpression:(id)expression inContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = [context objectForKey:@"storeRequest"];
  v8 = [*&self->_onlyFetchesAggregates objectForKey:expression];
  if (v8)
  {
    v9 = *MEMORY[0x1E69E9840];

    return [v8 mutableCopy];
  }

  else
  {
    variable = [expression variable];
    propertiesToFetch = [v7 propertiesToFetch];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [propertiesToFetch countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
LABEL_7:
      v16 = 0;
      while (1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(propertiesToFetch);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        if ([v17 _propertyType] == 5 && (objc_msgSend(objc_msgSend(v17, "name"), "isEqual:", variable) & 1) != 0)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [propertiesToFetch countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v14)
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }
      }

      v18 = -[NSSQLAliasGenerator generateVariableAlias]([context objectForKey:@"aliasGenerator"]);
      [*&self->_onlyFetchesAggregates setObject:v18 forKey:expression];
      [(NSMutableDictionary *)self->_variableToAliasMappings setObject:v18 forKey:v17];
      result = [v18 mutableCopy];
      if (result)
      {
        goto LABEL_19;
      }
    }

LABEL_16:
    if (![context objectForKey:@"NSUnderlyingException"])
    {
      [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to resolve variable expression: %@", expression), 0), @"NSUnderlyingException"}];
    }

    result = 0;
LABEL_19:
    v19 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (id)generateSQLStringInContext:(id)context
{
  contextCopy = context;
  v123 = *MEMORY[0x1E69E9840];
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    goto LABEL_2;
  }

  v8 = [(NSArray *)self->super._fetchColumns count];
  *(&self->super._isCount + 1) = 1;
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->super._fetchColumns, "count")}];
  fetchIntermediate = [(NSSQLIntermediate *)self fetchIntermediate];
  v98 = v8;
  v93 = fetchIntermediate;
  if (!fetchIntermediate || !fetchIntermediate[9])
  {
    if (!v8)
    {
      v16 = 1;
LABEL_37:
      v95 = 1;
      goto LABEL_38;
    }

    v17 = 0;
    while (1)
    {
      v18 = [(NSArray *)self->super._fetchColumns objectAtIndex:v17];
      if ([v18 _propertyType] != 5)
      {
        goto LABEL_27;
      }

      expression = [v18 expression];
      expressionType = [expression expressionType];
      if (expressionType == 3)
      {
        goto LABEL_28;
      }

      if (expressionType == 4)
      {
        if (sel_valueForKey_ == [expression selector] || sel_valueForKeyPath_ == objc_msgSend(expression, "selector"))
        {
LABEL_28:
          v20 = [expression _mapKVCOperatorsToFunctionsInContext:contextCopy];
          if ([contextCopy objectForKey:@"NSUnderlyingException"])
          {
LABEL_163:
            [contextCopy setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Can't generate select target token for expression: %@", expression), 0), @"NSUnderlyingException"}];
            goto LABEL_2;
          }

          if (v20)
          {
            v18 = [v18 copy];
            [v18 setExpression:v20];
          }

          else
          {
            *(&self->super._isCount + 1) = 0;
          }

          v8 = v98;
          goto LABEL_33;
        }

        if (![NSSQLFunctionExpressionIntermediate functionIsAcceptableAsAggregate:expression])
        {
LABEL_27:
          *(&self->super._isCount + 1) = 0;
        }
      }

LABEL_33:
      [v9 addObject:v18];
      if (v8 == ++v17)
      {
        v16 = 0;
        goto LABEL_37;
      }
    }
  }

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v12 = [(NSArray *)self->super._fetchColumns objectAtIndex:i];
      if ([v12 _propertyType] == 5)
      {
        expression = [v12 expression];
        expressionType2 = [expression expressionType];
        if (expressionType2 == 3 || expressionType2 == 4 && (sel_valueForKey_ == [expression selector] || sel_valueForKeyPath_ == objc_msgSend(expression, "selector")))
        {
          v15 = [expression _mapKVCOperatorsToFunctionsInContext:contextCopy];
          if ([contextCopy objectForKey:@"NSUnderlyingException"])
          {
            goto LABEL_163;
          }

          if (v15)
          {
            v12 = [v12 copy];
            [v12 setExpression:v15];
          }

          v8 = v98;
        }
      }

      [v9 addObject:v12];
    }

    v16 = 0;
    v95 = 0;
  }

  else
  {
    v95 = 0;
    v16 = 1;
  }

LABEL_38:
  v21 = [contextCopy objectForKey:@"keypathExpressionDestinationRelationship"];
  v22 = [contextCopy objectForKey:@"entity"];
  v23 = objc_alloc_init(NSSQLEntity);
  [(NSSQLEntity *)v23 copyValuesForReadOnlyFetch:v22];
  [contextCopy setObject:v23 forKey:@"fabricatedSQLEntityForReadOnlyFetch"];
  v91 = v23;

  v89 = v21;
  if (v22)
  {
    v94 = *(v22 + 40);
  }

  else
  {
    v94 = 0;
  }

  v92 = v22;
  v96 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT "];
  v5 = v24;
  if (!*(&self->super._isCount + 1) && self->super._useDistinct)
  {
    [v24 appendString:@"DISTINCT "];
  }

  if (v16)
  {
LABEL_44:
    v25 = contextCopy;
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v27 = [v9 countByEnumeratingWithState:&v99 objects:v121 count:16];
    if (v27)
    {
      v28 = *v100;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v100 != v28)
          {
            objc_enumerationMutation(v9);
          }

          [v26 addObject:{objc_msgSend(*(*(&v99 + 1) + 8 * j), "name")}];
        }

        v27 = [v9 countByEnumeratingWithState:&v99 objects:v121 count:16];
      }

      while (v27);
    }

    v30 = [(NSSQLEntity *)v91 addPropertiesForReadOnlyFetch:v96 keys:v26 context:v25];

    if ((v30 & 1) == 0)
    {

      goto LABEL_2;
    }

    [v5 appendString:@" FROM "];
    [v5 appendString:{-[NSSQLEntity tableName](self->super._entity, "tableName")}];
    [v5 appendString:@" "];
    [v5 appendString:self->super._entityAlias];
    [v5 appendString:@" "];
    [v25 removeObjectForKey:@"keypathExpressionDestinationRelationship"];
    if (v89)
    {
      [v25 setObject:v89 forKey:@"keypathExpressionDestinationRelationship"];
    }

    goto LABEL_3;
  }

  v31 = 0;
  v97 = contextCopy;
  while (1)
  {
    [contextCopy removeObjectForKey:@"keypathExpressionDestinationRelationship"];
    if (v31)
    {
      [v5 appendString:{@", "}];
    }

    v32 = [v9 objectAtIndex:v31];
    v33 = [(NSArray *)self->super._fetchColumns objectAtIndex:v31];
    _propertyType = [(NSPropertyDescription *)v32 _propertyType];
    if ([(NSPropertyDescription *)v32 _isAttribute])
    {
      if ((v95 & 1) == 0 && ([(NSSQLFetchIntermediate *)v93 groupByClauseContainsKeypath:?]& 1) == 0)
      {
        if (v5)
        {
        }

LABEL_170:

        v76 = MEMORY[0x1E695DF30];
        v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT clauses in queries with GROUP BY components can only contain properties named in the GROUP BY or aggregate functions (%@ is not in the GROUP BY)", v32];
        [v97 setObject:objc_msgSend(v76 forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], v77, 0), @"NSUnderlyingException"}];
        goto LABEL_2;
      }

      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v115 = __62__NSSQLReadOnlySelectIntermediate_generateSQLStringInContext___block_invoke;
      v116 = &unk_1E6EC4350;
      v117 = v94;
      v118 = v5;
      selfCopy = self;
      v120 = v96;
      v108 = 0;
      v109 = &v108;
      v110 = 0x3052000000;
      v111 = __Block_byref_object_copy__33;
      v112 = __Block_byref_object_dispose__33;
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __62__NSSQLReadOnlySelectIntermediate_generateSQLStringInContext___block_invoke_51;
      v107[3] = &unk_1E6EC4378;
      v107[5] = v114;
      v107[6] = &v108;
      v107[4] = v5;
      v113 = v107;
      if ([(NSPropertyDescription *)v32 attributeType]== 2100)
      {
        (*(v109[5] + 16))();
        [v5 replaceCharactersInRange:objc_msgSend(v5 withString:{"length") - 2, 1, &stru_1EF3F1768}];
      }

      else
      {
        if (v32 && [(NSPropertyDescription *)v32 superCompositeAttribute])
        {
          _qualifiedName = [(NSPropertyDescription *)v32 _qualifiedName];
        }

        else
        {
          _qualifiedName = [(NSPropertyDescription *)v32 name];
        }

        v115(v114, _qualifiedName);
      }

      _Block_object_dispose(&v108, 8);
      goto LABEL_142;
    }

    if (_propertyType != 5)
    {
      if (_propertyType != 4)
      {

        v74 = MEMORY[0x1E695DF30];
        v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported value passed to valuesToFetch: (%@) not supported", v32];
        [v97 setObject:objc_msgSend(v74 forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], v75, 0), @"NSUnderlyingException"}];

        goto LABEL_2;
      }

      if ((v95 & 1) == 0 && ([(NSSQLFetchIntermediate *)v93 groupByClauseContainsKeypath:?]& 1) == 0)
      {
        if (v5)
        {
        }

        goto LABEL_170;
      }

      v35 = [v94 objectForKey:{-[NSPropertyDescription name](v32, "name")}];
      v36 = objc_alloc_init(NSSQLToOne);
      v37 = v36;
      if (v36)
      {
        v36->super.super._propertyDescription = v32;
      }

      [(NSSQLToOne *)v36 copyValuesForReadOnlyFetch:v35];
      destinationEntity = [(NSSQLRelationship *)v37 destinationEntity];
      if (destinationEntity)
      {
        v39 = *(destinationEntity + 152);
        if (v39)
        {
          if ([v39 count])
          {
            [v5 appendString:self->super._columnAlias];
            [v5 appendString:@"."];
            if (v37)
            {
              foreignEntityKey = v37->_foreignEntityKey;
            }

            else
            {
              foreignEntityKey = 0;
            }

            [v5 appendString:{-[NSSQLColumn columnName](foreignEntityKey, "columnName")}];
            [v5 appendString:{@", "}];
          }
        }
      }

      goto LABEL_141;
    }

    expression2 = [(NSPropertyDescription *)v32 expression];
    expressionType3 = [expression2 expressionType];
    if (expressionType3)
    {
      if (expressionType3 == 1)
      {
        v44 = [[NSSQLToOne alloc] initForReadOnlyFetchWithEntity:v92 propertyDescription:v32];
        v37 = v44;
        if (v44)
        {
          v44->super.super._propertyDescription = v32;
          if (![v97 objectForKey:@"nestedWhereSelect"])
          {
            v45 = v37->_foreignEntityKey;
            goto LABEL_82;
          }
        }

        else if (![v97 objectForKey:@"nestedWhereSelect"])
        {
          v45 = 0;
LABEL_82:
          if (v92 && (v92[20] || (v69 = v92[19]) != 0 && [v69 count]))
          {
            [v5 appendString:self->super._columnAlias];
            [v5 appendString:@"."];
            [v5 appendString:{-[NSSQLColumn columnName](v45, "columnName")}];
          }

          else
          {
            if (v45)
            {
              columnValue = v45->_columnValue;
            }

            else
            {
              columnValue = 0;
            }

            [v5 appendFormat:@"%u", -[NSNumber unsignedIntValue](columnValue, "unsignedIntValue")];
          }

          [v5 appendString:{@", "}];
        }

LABEL_141:
        [v5 appendString:self->super._columnAlias];
        [v5 appendString:@"."];
        [v5 appendString:{-[NSSQLToOne columnName](v37, "columnName")}];
        [v96 addObject:v37];

        goto LABEL_142;
      }

      if ((expressionType3 - 3) > 1)
      {
        if (expressionType3 == 20)
        {
          v59 = [(NSSQLExpressionIntermediate *)[NSSQLTernaryExpressionIntermediate alloc] initWithExpression:expression2 allowToMany:0 inScope:self];
          v60 = [(NSSQLTernaryExpressionIntermediate *)v59 generateSQLStringInContext:v97];

          if (!v60)
          {

            if (![v97 objectForKey:@"NSUnderlyingException"])
            {
              v84 = MEMORY[0x1E695DF30];
              v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't generate SQL for ternary expression: %@", expression2];
              [v97 setObject:objc_msgSend(v84 forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], v85, 0), @"NSUnderlyingException"}];
            }

            goto LABEL_2;
          }

          [v5 appendString:v60];

          v61 = [[NSSQLAttribute alloc] initForReadOnlyFetchWithExpression:v32];
          v58 = v61;
          if (v61)
          {
            v61[1] = v33;
          }
        }

        else
        {
          if (expressionType3 != 50 || ([expression2 isCountOnlyRequest] & 1) == 0 && objc_msgSend(objc_msgSend(objc_msgSend(expression2, "requestExpression"), "expressionValueWithObject:context:", 0, 0), "resultType") != 4)
          {

            v80 = MEMORY[0x1E695DF30];
            v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Currently unsupported (%@), try again later", v32];
            [v97 setObject:objc_msgSend(v80 forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], v81, 0), @"NSUnderlyingException"}];

            goto LABEL_2;
          }

          v56 = [(NSSQLIntermediate *)self _generateSQLForFetchExpression:expression2 allowToMany:1 inContext:v97];
          if (!v56)
          {

            if (![v97 objectForKey:@"NSUnderlyingException"])
            {
              v86 = MEMORY[0x1E695DF30];
              v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't generate select target token for fetch request expression: %@", expression2];
              [v97 setObject:objc_msgSend(v86 forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], v87, 0), @"NSUnderlyingException"}];
            }

            goto LABEL_2;
          }

          [v5 appendString:v56];

          v57 = [[NSSQLAttribute alloc] initForReadOnlyFetchWithExpression:v32];
          v58 = v57;
          if (v57)
          {
            v57[1] = v33;
          }
        }

        goto LABEL_134;
      }

      if (sel_inverseOrderKey_ == [expression2 selector])
      {
        [v5 appendString:{objc_msgSend(objc_msgSend(objc_msgSend(expression2, "arguments"), "objectAtIndex:", 0), "constantValue")}];
        v68 = [[NSSQLAttribute alloc] initForReadOnlyFetchWithExpression:v32];
        v58 = v68;
        if (v68)
        {
          v68[1] = v33;
        }

LABEL_134:
        [v96 addObject:v58];

        goto LABEL_142;
      }

      if (([objc_opt_class() isSimpleKeypath:expression2] & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, expression2))
      {
        v51 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:expression2 allowToMany:0 inScope:self];
      }

      else
      {
        if (![(NSSQLIntermediate *)self _functionExpressionIsSubqueryFollowedByKeypath:expression2])
        {
          v52 = [(NSSQLExpressionIntermediate *)[NSSQLFunctionExpressionIntermediate alloc] initWithExpression:expression2 allowToMany:0 inScope:self];
          if ([objc_msgSend(expression2 "function")] && -[NSPropertyDescription expressionResultType](v32, "expressionResultType") != 700)
          {

            if (![v97 objectForKey:@"NSUnderlyingException"])
            {
              [v97 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"groupConcat: requires the expressionResultType to be NSStringAttributeType", 0), @"NSUnderlyingException"}];
            }

            goto LABEL_2;
          }

          goto LABEL_103;
        }

        v51 = -[NSSQLSubqueryExpressionIntermediate initWithExpression:trailingKeypath:inScope:]([NSSQLSubqueryExpressionIntermediate alloc], "initWithExpression:trailingKeypath:inScope:", [expression2 operand], objc_msgSend(objc_msgSend(expression2, "arguments"), "objectAtIndex:", 0), self);
      }

      v52 = v51;
LABEL_103:
      v53 = [(NSSQLFunctionExpressionIntermediate *)v52 generateSQLStringInContext:v97];
      if (!v53)
      {

        if (![v97 objectForKey:@"NSUnderlyingException"])
        {
          v82 = MEMORY[0x1E695DF30];
          v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't generate select target token for expression: %@", expression2];
          [v97 setObject:objc_msgSend(v82 forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], v83, 0), @"NSUnderlyingException"}];
        }

        goto LABEL_2;
      }

      [v5 appendString:v53];

      v54 = [v97 objectForKey:@"keypathExpressionDestinationRelationship"];
      if (v54 && [(NSPropertyDescription *)v32 expressionResultType]== 2000)
      {
        v55 = objc_alloc_init(NSSQLToOne);
        [(NSSQLToOne *)v55 copyValuesForReadOnlyFetch:v54];
        if (v55)
        {
          v55->super.super._propertyDescription = v33;
        }

        [v96 addObject:v55];
      }

      else
      {
        v62 = [[NSSQLAttribute alloc] initForReadOnlyFetchWithExpression:v32];
        v88 = v62;
        if (v62)
        {
          v62[1] = v33;
        }

        [v96 addObject:?];
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        obj = [objc_msgSend(v97 objectForKeyedSubscript:{@"storeRequest", "sortDescriptors"}];
        v63 = [obj countByEnumeratingWithState:&v103 objects:v122 count:16];
        if (v63)
        {
          v64 = *v104;
          while (2)
          {
            for (k = 0; k != v63; ++k)
            {
              if (*v104 != v64)
              {
                objc_enumerationMutation(obj);
              }

              v66 = *(*(&v103 + 1) + 8 * k);
              name = [(NSPropertyDescription *)v32 name];
              if (-[NSString isEqualToString:](name, "isEqualToString:", [v66 key]))
              {
                if (v92)
                {
                  v72 = v92[5];
                }

                else
                {
                  v72 = 0;
                }

                if (![v72 objectForKeyedSubscript:name])
                {
                  v73 = -[NSSQLAliasGenerator generateVariableAlias]([v97 objectForKey:@"aliasGenerator"]);
                  [(NSMutableDictionary *)self->_variableToAliasMappings setObject:v73 forKey:v32];
                  [(NSSQLColumn *)v88 _setColumnName:v73];
                }

                goto LABEL_150;
              }
            }

            v63 = [obj countByEnumeratingWithState:&v103 objects:v122 count:16];
            if (v63)
            {
              continue;
            }

            break;
          }
        }

LABEL_150:
      }

      goto LABEL_142;
    }

    constantValue = [expression2 constantValue];
    if (([constantValue isNSArray] & 1) != 0 || (objc_msgSend(constantValue, "isNSSet") & 1) != 0 || (objc_msgSend(constantValue, "isNSOrderedSet") & 1) != 0 || objc_msgSend(constantValue, "isNSDictionary"))
    {
      break;
    }

    v47 = [[NSSQLConstantValueIntermediate alloc] initWithConstantValue:constantValue inScope:self context:v97];
    v48 = [(NSSQLConstantValueIntermediate *)v47 generateSQLStringInContext:v97];

    if (!v48)
    {
      if (v5)
      {
      }

      if (![v97 objectForKey:@"NSUnderlyingException"])
      {
        v78 = MEMORY[0x1E695DF30];
        v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't generate select target token for constant: %@", constantValue];
        [v97 setObject:objc_msgSend(v78 forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], v79, 0), @"NSUnderlyingException"}];
      }

      goto LABEL_2;
    }

    [v5 appendString:v48];

    v49 = [[NSSQLAttribute alloc] initForReadOnlyFetchWithExpression:v32];
    v50 = v49;
    if (v49)
    {
      v49[1] = v32;
    }

    [v96 addObject:v49];

LABEL_142:
    v71 = [(NSMutableDictionary *)self->_variableToAliasMappings objectForKey:v32];
    if (v71)
    {
      [v5 appendFormat:@" AS %@", v71];
    }

    ++v31;
    contextCopy = v97;
    if (v31 == v98)
    {
      goto LABEL_44;
    }
  }

  if (v5)
  {
  }

  [v97 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Constant select targets must be values, not collections", 0), @"NSUnderlyingException"}];
LABEL_2:
  v5 = 0;
LABEL_3:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void __62__NSSQLReadOnlySelectIntermediate_generateSQLStringInContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  v5 = [(NSSQLColumn *)[NSSQLAttribute alloc] initForReadOnlyFetching];
  [v5 copyValuesForReadOnlyFetch:v3];
  v4 = v5;
  if (v5 && (v5[16] & 1) != 0)
  {
    [*(a1 + 40) appendString:*(*(a1 + 48) + 56)];
    [*(a1 + 40) appendString:@"."];
    v4 = v5;
  }

  [*(a1 + 40) appendString:{objc_msgSend(v4, "columnName")}];
  [*(a1 + 56) addObject:v5];
}

uint64_t __62__NSSQLReadOnlySelectIntermediate_generateSQLStringInContext___block_invoke_51(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [a2 elements];
    result = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          (*(*(*(a1[6] + 8) + 40) + 16))();
          ++v8;
        }

        while (v6 != v8);
        result = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v6 = result;
      }

      while (result);
    }

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      (*(a1[5] + 16))(a1[5], [a2 _qualifiedName]);
      v11 = a1[4];
      v12 = *MEMORY[0x1E69E9840];

      return [v11 appendString:{@", "}];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

@end