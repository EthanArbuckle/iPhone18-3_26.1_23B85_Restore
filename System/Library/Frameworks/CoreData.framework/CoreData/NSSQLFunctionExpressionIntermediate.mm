@interface NSSQLFunctionExpressionIntermediate
+ (BOOL)functionIsAcceptableAsAggregate:(uint64_t)aggregate;
- (id)_generateType4SQLForSymbol:(void *)symbol inContext:;
- (id)generateSQLStringInContext:(id)context;
- (id)generateType1SQLString:(void *)string inContext:;
- (uint64_t)_generateCorrelatedSubqueryStringWithSymbol:(void *)symbol forExpression:(void *)expression inContext:;
- (uint64_t)_generateNowStringInContext:(id *)context;
- (uint64_t)_generateRtreeIndexStringInContext:(uint64_t)result;
- (uint64_t)_generateSQLForCountInContext:(uint64_t)context;
- (void)_generateArgumentStringForCollection:(void *)collection inContext:;
- (void)_generateDistinctStringInContext:(id *)context;
- (void)_generateGroupConcatInContext:(id *)context;
- (void)_generateLengthStringInContext:(id *)context;
- (void)_generateMathStringWithSymbol:(void *)symbol inContext:;
- (void)_generateUncorrelatedSubqueryStringWithSymbol:(void *)symbol forAttribute:(void *)attribute inContext:;
- (void)generateType2SQLString:(void *)string inContext:;
- (void)generateType3SQLString:(int)string keypathOnly:(void *)only inContext:;
@end

@implementation NSSQLFunctionExpressionIntermediate

+ (BOOL)functionIsAcceptableAsAggregate:(uint64_t)aggregate
{
  objc_opt_self();
  if (!_MergedGlobals_79)
  {
    _MergedGlobals_79 = sel_count_;
    *algn_1ED4BEA98 = sel_max_;
    qword_1ED4BEAA0 = sel_min_;
    unk_1ED4BEAA8 = sel_average_;
    qword_1ED4BEAB0 = sel_sum_;
  }

  selector = [a2 selector];
  if (selector != _MergedGlobals_79 && selector != *algn_1ED4BEA98 && selector != qword_1ED4BEAA0 && selector != unk_1ED4BEAA8 && selector != qword_1ED4BEAB0)
  {
    return 0;
  }

  v8 = selector;
  arguments = [a2 arguments];
  if ([arguments count] != 1)
  {
    return 0;
  }

  v10 = [arguments objectAtIndex:0];
  if ([v10 expressionType] == 1 && v8 == _MergedGlobals_79)
  {
    return 1;
  }

  result = [NSSQLIntermediate isSimpleKeypath:v10];
  if (result)
  {
    return [objc_msgSend(objc_msgSend(objc_msgSend(v10 "arguments")] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)_generateArgumentStringForCollection:(void *)collection inContext:
{
  v23 = *MEMORY[0x1E69E9840];
  if ([collection objectForKey:@"NSUnderlyingException"])
  {
LABEL_16:
    v6 = 0;
  }

  else
  {
    v6 = [&stru_1EF3F1768 mutableCopy];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v19;
      while (2)
      {
        v11 = 0;
        v17 = v9 + v8;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          if (v9 >= 1)
          {
            [v6 appendString:{@", "}];
          }

          v13 = [(NSSQLIntermediate *)self _generateSQLForExpression:v12 allowToMany:1 inContext:collection];
          if (!v13)
          {
            if (![collection objectForKey:@"NSUnderlyingException"])
            {
              [collection setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to generate sql for %@ as part of  expression (%@)", v12, self[2]), 0), @"NSUnderlyingException"}];
            }

            goto LABEL_16;
          }

          v14 = v13;
          [v6 appendString:v13];

          ++v9;
          ++v11;
        }

        while (v8 != v11);
        v8 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v9 = v17;
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_generateMathStringWithSymbol:(void *)symbol inContext:
{
  if (!self)
  {
    return 0;
  }

  arguments = [self[2] arguments];
  if ([arguments count] != 2)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = MEMORY[0x1E696AEC0];
    v17 = arguments;
    v14 = @"Wrong number of arguments to function add:to: (%@)";
LABEL_7:
    [symbol setObject:objc_msgSend(v11 forKey:{"exceptionWithName:reason:userInfo:", v12, objc_msgSend(v13, "stringWithFormat:", v14, v17), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v7 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](self, [objc_msgSend(self[2] "arguments")], 0, symbol);
  if (!v7)
  {
    if ([symbol objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [arguments objectAtIndex:0];
    v14 = @"Unable to generate sql for add:to: argument 0(%@)";
    goto LABEL_14;
  }

  v8 = v7;
  objc_msgSend(v7, "insertString:atIndex:", @"("), 0;
  [v8 appendString:a2];
  v9 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](self, [objc_msgSend(self[2] "arguments")], 0, symbol);
  if (!v9)
  {

    if ([symbol objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [arguments objectAtIndex:1];
    v14 = @"Unable to generate sql for add:to: argument 1(%@)";
LABEL_14:
    v13 = v16;
    goto LABEL_7;
  }

  v10 = v9;
  [v8 appendString:v9];
  [v8 appendString:@""]);

  return v8;
}

- (void)_generateUncorrelatedSubqueryStringWithSymbol:(void *)symbol forAttribute:(void *)attribute inContext:
{
  v34[1] = *MEMORY[0x1E69E9840];
  if ([self isIndexScoped])
  {
    if ([attribute objectForKey:@"NSUnderlyingException"])
    {
LABEL_15:
      v18 = 0;
      goto LABEL_16;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@)", self[2]];
    v11 = self[2];
    v33 = @"expression";
    v34[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v13 = v8;
    v14 = v9;
    v15 = v10;
LABEL_14:
    [attribute setObject:objc_msgSend(v13 forKey:{"exceptionWithName:reason:userInfo:", v14, v15, v12), @"NSUnderlyingException"}];
    goto LABEL_15;
  }

  entity = [symbol entity];
  v17 = [objc_msgSend(attribute objectForKey:{@"aliasGenerator", "generateTableAlias"}];
  v18 = objc_msgSend(@"(SELECT "), "mutableCopy";
  [v18 appendString:a2];
  objc_msgSend(v18, "appendString:", @"(");
  [v18 appendString:v17];
  [v18 appendString:@"."];
  [v18 appendString:{objc_msgSend(symbol, "columnName")}];
  [v18 appendString:@" FROM "]);
  [v18 appendString:{objc_msgSend(entity, "tableName")}];
  [v18 appendString:@" "];
  [v18 appendString:v17];
  v19 = [attribute objectForKey:@"restrictingEntityPredicate"];
  if (v19)
  {
    v20 = v19;
    if ([self isTargetColumnsScoped])
    {
      v21 = objc_opt_self();
      if (v21 == objc_opt_class())
      {
        v25 = [objc_msgSend(objc_msgSend(objc_msgSend(v20 "subpredicates")];
        v26 = [objc_msgSend(objc_msgSend(objc_msgSend(v20 "subpredicates")];
        objc_msgSend(v18, "appendString:", @" WHERE (");
        [v18 appendString:v17];
        [v18 appendString:@"."];
        [v18 appendString:@"Z_ENT"];
        [v18 appendString:@" >= "];
        v27 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:v25 inContext:attribute];
        if (v27)
        {
          v28 = v27;
          [v18 appendString:v27];

          [v18 appendString:@" AND "];
          [v18 appendString:v17];
          [v18 appendString:@"."];
          [v18 appendString:@"Z_ENT"];
          [v18 appendString:@" <= "];
          v29 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:v26 inContext:attribute];
          if (v29)
          {
            v30 = v29;
            [v18 appendString:v29];

            [v18 appendString:@""]);
            goto LABEL_12;
          }
        }
      }

      else
      {
        v22 = [objc_msgSend(v20 "rightExpression")];
        [v18 appendString:@" WHERE "];
        [v18 appendString:v17];
        [v18 appendString:@"."];
        [v18 appendString:@"Z_ENT"];
        [v18 appendString:@" = "];
        v23 = [(NSSQLIntermediate *)self _generateSQLForConstantValue:v22 inContext:attribute];
        if (v23)
        {
          v24 = v23;
          [v18 appendString:v23];

          goto LABEL_12;
        }
      }

      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E695D930];
      v15 = @"Can't generate sql for entityID";
      v12 = 0;
      goto LABEL_14;
    }
  }

LABEL_12:
  [v18 appendString:@""]);
LABEL_16:
  v31 = *MEMORY[0x1E69E9840];
  return v18;
}

- (uint64_t)_generateCorrelatedSubqueryStringWithSymbol:(void *)symbol forExpression:(void *)expression inContext:
{
  v61[1] = *MEMORY[0x1E69E9840];
  if ([self isIndexScoped])
  {
    if ([expression objectForKey:@"NSUnderlyingException"])
    {
LABEL_9:
      v21 = 0;
      goto LABEL_10;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), '%@' not supported in this context", self[2], a2];
    v11 = self[2];
    v60 = @"expression";
    v61[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v13 = v8;
    v14 = v9;
    v15 = v10;
LABEL_7:
    v19 = [v13 exceptionWithName:v14 reason:v15 userInfo:v12];
    expressionCopy = expression;
LABEL_8:
    [expressionCopy setObject:v19 forKey:@"NSUnderlyingException"];
    goto LABEL_9;
  }

  if ([self isUpdateScoped])
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    symbol = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported join (min/max(key.path) not allowed in updates)", v52];
LABEL_6:
    v15 = symbol;
    v13 = v16;
    v14 = v17;
    v12 = 0;
    goto LABEL_7;
  }

  v57 = a2;
  selfCopy = self;
  destinationEntity = [self governingEntityForKeypathExpression:symbol];
  v25 = [objc_msgSend(objc_msgSend(objc_msgSend(symbol "arguments")];
  v26 = [v25 count];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v58 = 0;
    v59 = v26 - 1;
    expressionCopy2 = expression;
    symbolCopy = symbol;
    while (1)
    {
      v53 = v29;
      v31 = v29;
      v32 = v30;
      while (1)
      {
        v33 = [v25 objectAtIndex:v32];
        if (!destinationEntity)
        {
          v31 = v53;
LABEL_56:

          v40 = MEMORY[0x1E695DF30];
          v41 = *MEMORY[0x1E695D940];
          symbolCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath element (not a relationship or attribute): %@", v33];
LABEL_57:
          v19 = [v40 exceptionWithName:v41 reason:symbolCopy userInfo:0];
          expressionCopy = expressionCopy2;
          goto LABEL_8;
        }

        v34 = [*(destinationEntity + 40) objectForKey:v33];
        if (!v34)
        {
          goto LABEL_56;
        }

        v35 = v34;
        propertyType = [v34 propertyType];
        if (propertyType != 1)
        {
          break;
        }

        if (v30 < v59)
        {

          v40 = MEMORY[0x1E695DF30];
          v41 = *MEMORY[0x1E695D940];
          symbolCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath (continues after attribute name): %@", v33];
          goto LABEL_57;
        }

        if ((v28 & 1) == 0)
        {

          v40 = MEMORY[0x1E695DF30];
          v41 = *MEMORY[0x1E695D940];
          symbolCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath (request for aggregate operation on a toOne-only keypath): %@", symbolCopy];
          goto LABEL_57;
        }

        if (v31)
        {
          [v31 appendString:@"."];
        }

        else
        {
          v31 = objc_alloc_init(MEMORY[0x1E696AD60]);
        }

        [v31 appendString:v33];
        ++v32;
        v28 = 1;
        if (v27 == v32)
        {
          expression = expressionCopy2;
          symbol = symbolCopy;
          goto LABEL_49;
        }
      }

      if (propertyType == 7)
      {
        if (v28)
        {
          if (v31)
          {
            [v31 appendString:@"."];
            v37 = v31;
          }

          else
          {
            v37 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v31 = v37;
          }
        }

        else if (v58)
        {
          [v58 appendString:@"."];
          v37 = v58;
        }

        else
        {
          v37 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v58 = v37;
        }

        [v37 appendString:v33];
        destinationEntity = [v35 destinationEntity];
        v30 = v32 + 1;
        v29 = v31;
        v39 = v59 == v32;
        expression = expressionCopy2;
        symbol = symbolCopy;
        if (v39)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if ((propertyType & 0xFE) == 8)
        {
          if (v28)
          {

            v40 = MEMORY[0x1E695DF30];
            v41 = *MEMORY[0x1E695D940];
            symbolCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath (too many toMany relationships): %@", symbolCopy];
            goto LABEL_57;
          }

          v38 = v58;
          if (v58)
          {
            [v58 appendString:@"."];
          }

          else
          {
            v38 = objc_alloc_init(MEMORY[0x1E696AD60]);
          }

          v58 = v38;
          [v38 appendString:v33];
          destinationEntity = [v35 destinationEntity];
          v28 = 1;
        }

        v30 = v32 + 1;
        v29 = v31;
        v39 = v59 == v32;
        expression = expressionCopy2;
        symbol = symbolCopy;
        if (v39)
        {
          goto LABEL_45;
        }
      }
    }
  }

  v58 = 0;
  v31 = 0;
LABEL_45:
  if (([@"count" isEqual:v57] & 1) == 0)
  {

    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    symbol = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath (no terminal attribute in call to math aggregate): %@", symbol];
    goto LABEL_6;
  }

LABEL_49:
  if (v31)
  {
    [v31 appendString:@".@"];
    v43 = v31;
  }

  else
  {
    v43 = [@".@" mutableCopy];
    v31 = v43;
  }

  [v43 appendString:v57];
  operand = [symbol operand];
  v45 = [objc_opt_class() _newKeyPathExpressionForString:v58];

  v46 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v45, 0}];
  v47 = [MEMORY[0x1E696ABC8] expressionForFunction:operand selectorName:@"valueForKeyPath:" arguments:v46];

  v48 = [objc_msgSend(expression objectForKey:{@"aliasGenerator", "generateSubqueryVariableAlias"}];
  v49 = [MEMORY[0x1E696ABC8] expressionForSubquery:v47 usingIteratorVariable:v48 predicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithValue:", 1)}];
  v50 = [objc_opt_class() _newKeyPathExpressionForString:v31];

  v51 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:v49 trailingKeypath:v50 inScope:selfCopy[1]];
  v21 = [(NSSQLSubqueryExpressionIntermediate *)v51 generateSQLStringInContext:expression];

  if (!v21)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    symbol = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate SQL for function expression: %@", symbol];
    goto LABEL_6;
  }

LABEL_10:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)generateType1SQLString:(void *)string inContext:
{
  v58[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_20;
  }

  if ([self isIndexScoped])
  {
    if (![string objectForKey:@"NSUnderlyingException"])
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D940];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), aggregate operations not allowed here", *(self + 16)];
      v9 = *(self + 16);
      v55 = @"expression";
      v56 = v9;
      v10 = MEMORY[0x1E695DF20];
      v11 = &v56;
      v12 = &v55;
LABEL_5:
      v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
      v14 = v6;
      v15 = v7;
      v16 = v8;
LABEL_19:
      [string setObject:objc_msgSend(v14 forKey:{"exceptionWithName:reason:userInfo:", v15, v16, v13), @"NSUnderlyingException"}];
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v17 = [objc_msgSend(*(self + 16) "arguments")];
  if (!v17)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate sql for %@, empty %@ expression", *(self + 16), a2];
    v14 = v24;
LABEL_17:
    v15 = v25;
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v18 = v17;
  if ([self isTargetColumnsScoped] && objc_msgSend(objc_msgSend(objc_msgSend(self, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") && objc_msgSend(objc_msgSend(objc_msgSend(*(self + 16), "arguments"), "firstObject"), "expressionType") == 3)
  {
    v19 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:]([NSSQLKeypathExpressionIntermediate alloc], "initWithExpression:allowToMany:inScope:", [objc_msgSend(*(self + 16) "arguments")], 1, self);
    v20 = [(NSSQLKeypathExpressionIntermediate *)v19 generateSQLStringInContext:string];

    if (!v20)
    {
      goto LABEL_20;
    }

    v21 = [a2 mutableCopy];
    objc_msgSend(v21, "appendString:", @"(");
    goto LABEL_25;
  }

  if (v18 != 1)
  {
    v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v21 appendString:a2];
    objc_msgSend(v21, "appendString:", @"(");
    arguments = [*(self + 16) arguments];
    selfCopy4 = self;
    goto LABEL_23;
  }

  v22 = [objc_msgSend(*(self + 16) "arguments")];
  if (![self isIndexScoped])
  {
    expressionType = [v22 expressionType];
    if (([objc_opt_class() isSimpleKeypath:v22] & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v22))
    {
      v32 = [objc_msgSend(objc_msgSend(v22 "arguments")];
      if ([v32 rangeOfString:@"."] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v35 = [(NSSQLFunctionExpressionIntermediate *)self _generateCorrelatedSubqueryStringWithSymbol:a2 forExpression:v22 inContext:string];
        goto LABEL_36;
      }

      v33 = [self governingEntityForKeypathExpression:v22];
      if (v33)
      {
        v34 = [*(v33 + 40) objectForKey:v32];
      }

      else
      {
        v34 = 0;
      }

      if ([v34 propertyType] == 1)
      {
        v35 = [(NSSQLFunctionExpressionIntermediate *)self _generateUncorrelatedSubqueryStringWithSymbol:a2 forAttribute:v34 inContext:string];
LABEL_36:
        v21 = v35;
        goto LABEL_21;
      }

      v38 = MEMORY[0x1E695DF30];
      v39 = *MEMORY[0x1E695D940];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Non-attribute property passed to math function: %@", v22];
      goto LABEL_47;
    }

    if (expressionType <= 12)
    {
      if (!expressionType)
      {
        constantValue = [v22 constantValue];
        if ([constantValue isNSSet] & 1) != 0 || (objc_msgSend(constantValue, "isNSArray") & 1) != 0 || (objc_msgSend(constantValue, "isNSOrderedSet"))
        {
          v52 = *(self + 16);
          if (objc_opt_respondsToSelector())
          {
            [*(self + 16) allowEvaluation];
          }

          v53 = [*(self + 16) expressionValueWithObject:0 context:0];
          selfCopy3 = self;
        }

        else
        {
          selfCopy3 = self;
          v53 = constantValue;
        }

        v35 = [(NSSQLIntermediate *)selfCopy3 _generateSQLForConstantValue:v53 inContext:string];
        goto LABEL_36;
      }

      if (expressionType != 4 || ![(NSSQLIntermediate *)self _functionExpressionIsSubqueryFollowedByKeypath:v22])
      {
        goto LABEL_53;
      }

      v41 = -[NSSQLSubqueryExpressionIntermediate initWithExpression:trailingKeypath:inScope:]([NSSQLSubqueryExpressionIntermediate alloc], "initWithExpression:trailingKeypath:inScope:", [*(self + 16) operand], objc_msgSend(objc_msgSend(*(self + 16), "arguments"), "objectAtIndex:", 0), *(self + 8));
      v42 = [(NSSQLSubqueryExpressionIntermediate *)v41 generateSQLStringInContext:string];

      if (v42)
      {
        v21 = [a2 mutableCopy];
        [v21 appendString:v42];

        goto LABEL_21;
      }

      if ([string objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_20;
      }

      v48 = MEMORY[0x1E695DF30];
      v49 = *MEMORY[0x1E695D940];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression %@", *(self + 16)];
LABEL_59:
      v16 = v50;
      v14 = v48;
      v15 = v49;
      goto LABEL_18;
    }

    if (expressionType == 13)
    {
      v44 = [(NSSQLIntermediate *)self _generateSQLForSubqueryExpression:v22 trailingKeypath:0 inContext:string];
      if (v44)
      {
        v45 = v44;
        v21 = [a2 mutableCopy];
        [v21 appendString:v45];

        goto LABEL_21;
      }

      if ([string objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_20;
      }

      v38 = MEMORY[0x1E695DF30];
      v39 = *MEMORY[0x1E695D940];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate sql for subquery: %@", v22];
LABEL_47:
      v16 = v40;
      v14 = v38;
      v15 = v39;
      goto LABEL_18;
    }

    if (expressionType != 14)
    {
      if (expressionType == 20)
      {
        if ([objc_msgSend(*(self + 16) "arguments")] != 1 && !objc_msgSend(string, "objectForKey:", @"NSUnderlyingException"))
        {
          [string setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Invalid argument count for %@(%@)", a2, *(self + 16)), 0), @"NSUnderlyingException"}];
        }

        v36 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:]([NSSQLTernaryExpressionIntermediate alloc], "initWithExpression:allowToMany:inScope:", [objc_msgSend(*(self + 16) "arguments")], 0, self);
        v37 = [(NSSQLTernaryExpressionIntermediate *)v36 generateSQLStringInContext:string];

        if (!v37)
        {
          if (![string objectForKey:@"NSUnderlyingException"])
          {
            [string setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to generate SQL for ternary expression: %@", *(self + 16)), 0), @"NSUnderlyingException"}];
          }

          goto LABEL_20;
        }

        v21 = [a2 mutableCopy];
        objc_msgSend(v21, "appendString:", @"(");
        [v21 appendString:v37];

LABEL_26:
        [v21 appendString:@""]);
        goto LABEL_21;
      }

LABEL_53:
      v43 = MEMORY[0x1E695DF30];
      v25 = *MEMORY[0x1E695D940];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate sql for %@() : argument (%@) not supported", a2, v22];
      v14 = v43;
      goto LABEL_17;
    }

    constantValue2 = [v22 constantValue];
    v47 = [constantValue2 count];
    if (v47 == 1)
    {
      v21 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](self, [constantValue2 objectAtIndex:0], 1, string);
      if (v21)
      {
        goto LABEL_21;
      }

      if ([string objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_20;
      }

      v48 = MEMORY[0x1E695DF30];
      v49 = *MEMORY[0x1E695D940];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate sql for %@", *(self + 16)];
      goto LABEL_59;
    }

    if (!v47)
    {
      v48 = MEMORY[0x1E695DF30];
      v49 = *MEMORY[0x1E695D940];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate sql for %@, empty max/etc expression", *(self + 16)];
      goto LABEL_59;
    }

    v21 = [a2 mutableCopy];
    objc_msgSend(v21, "appendString:", @"(");
    selfCopy4 = self;
    arguments = constantValue2;
LABEL_23:
    v30 = [(NSSQLFunctionExpressionIntermediate *)selfCopy4 _generateArgumentStringForCollection:arguments inContext:string];
    if (!v30)
    {

      goto LABEL_20;
    }

    v20 = v30;
LABEL_25:
    [v21 appendString:v20];

    goto LABEL_26;
  }

  if (![string objectForKey:@"NSUnderlyingException"])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), aggregates not allowed here.", *(self + 16)];
    v23 = *(self + 16);
    v57 = @"expression";
    v58[0] = v23;
    v10 = MEMORY[0x1E695DF20];
    v11 = v58;
    v12 = &v57;
    goto LABEL_5;
  }

LABEL_20:
  v21 = 0;
LABEL_21:
  v26 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)generateType2SQLString:(void *)string inContext:
{
  if (!self)
  {
    return 0;
  }

  v6 = [objc_msgSend(self[2] "arguments")];
  if (v6 != 1)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    if (v6)
    {
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:self[2] forKey:@"Bad value"];
      v9 = @"Invalid number of parameters passed to uppercase: function";
      v10 = v7;
      v11 = v8;
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate sql for %@, empty expression", self[2]];
      v10 = v7;
      v11 = v8;
      v12 = 0;
    }

    [string setObject:objc_msgSend(v10 forKey:{"exceptionWithName:reason:userInfo:", v11, v9, v12), @"NSUnderlyingException"}];
    return 0;
  }

  v13 = [objc_msgSend(self[2] "arguments")];
  expressionType = [v13 expressionType];
  if (([objc_opt_class() isSimpleKeypath:v13] & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v13) & 1) == 0 && (expressionType || !objc_msgSend(objc_msgSend(v13, "constantValue"), "isNSString")))
  {
    [string setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Bad argument to upper/lower function (needs to be a keypath or a string) : %@", v13), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v15 = [a2 mutableCopy];
  v16 = [(NSSQLIntermediate *)self _generateSQLForExpression:v13 allowToMany:0 inContext:string];
  if (!v16)
  {

    v15 = 0;
  }

  [v15 appendString:v16];
  [v15 appendString:@""]);

  return v15;
}

- (void)generateType3SQLString:(int)string keypathOnly:(void *)only inContext:
{
  if (!self)
  {
    return 0;
  }

  v8 = [objc_msgSend(self[2] "arguments")];
  if (v8 != 1)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    if (v8)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of parameters passed to function (%@)", self[2]];
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObject:self[2] forKey:@"Bad value"];
      v12 = v9;
      v13 = v10;
      v11 = v18;
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate sql for %@, empty expression", self[2]];
      v12 = v9;
      v13 = v10;
      v14 = 0;
    }

    [only setObject:objc_msgSend(v12 forKey:{"exceptionWithName:reason:userInfo:", v13, v11, v14), @"NSUnderlyingException"}];
    return 0;
  }

  if (string)
  {
    v15 = [objc_msgSend(self[2] "arguments")];
    if (([objc_opt_class() isSimpleKeypath:v15] & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v15) & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [only setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to generate sql for %@, can't drop index on non-keypath", self[2]), 0), @"NSUnderlyingException"}];
      }
    }
  }

  v16 = [a2 mutableCopy];
  v17 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](self, [objc_msgSend(self[2] "arguments")], 0, only);
  if (!v17)
  {

    v16 = 0;
  }

  [v16 appendString:v17];
  [v16 appendString:@""]);

  return v16;
}

- (uint64_t)_generateSQLForCountInContext:(uint64_t)context
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (!context)
  {
    goto LABEL_32;
  }

  if ([context isIndexScoped])
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
LABEL_32:
      v16 = 0;
      goto LABEL_33;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), 'count' not supported in this context", *(context + 16)];
    v7 = *(context + 16);
    v37 = @"expression";
    v38[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    goto LABEL_5;
  }

  arguments = [*(context + 16) arguments];
  v14 = [arguments count];
  if (![arguments count])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"Invalid number of arguments to count (requires at least 1 argument)";
LABEL_30:
    v9 = 0;
    goto LABEL_31;
  }

  if (v14 >= 2)
  {
    v15 = -[NSSQLIntermediate _generateSQLForConstantValue:inContext:](context, [MEMORY[0x1E696AD98] numberWithInteger:v14], a2);
    if (v15)
    {
      v16 = v15;
LABEL_33:
      v28 = *MEMORY[0x1E69E9840];
      return v16;
    }

    v25 = MEMORY[0x1E695DF30];
    v26 = *MEMORY[0x1E695D940];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for count expression %@", *(context + 16)];
LABEL_29:
    v12 = v27;
    v10 = v25;
    v11 = v26;
    goto LABEL_30;
  }

  v17 = [arguments objectAtIndex:0];
  expressionType = [v17 expressionType];
  if ([context isTargetColumnsScoped] && objc_msgSend(objc_msgSend(objc_msgSend(context, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") && objc_msgSend(MEMORY[0x1E696ABC8], "expressionForEvaluatedObject") == v17)
  {
    v31 = *MEMORY[0x1E69E9840];
    v22 = @"count(*)";
    goto LABEL_39;
  }

  if ([context isTargetColumnsScoped] && objc_msgSend(objc_msgSend(objc_msgSend(context, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") && ((objc_msgSend(objc_opt_class(), "isSimpleKeypath:", v17) & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v17)) && objc_msgSend(objc_msgSend(v17, "keyPath"), "rangeOfString:", @".") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:v17 allowToMany:1 inScope:context];
    v20 = v19;
    goto LABEL_44;
  }

  if (expressionType == 1 && [context isHavingScoped])
  {
    v21 = *MEMORY[0x1E69E9840];
    v22 = @"COUNT(*)";
LABEL_39:

    return [(__CFString *)v22 mutableCopy];
  }

  if (([objc_opt_class() isSimpleKeypath:v17] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v17))
  {
    if (expressionType == 4)
    {
      if ([(NSSQLIntermediate *)context _functionExpressionIsSubqueryFollowedByKeypath:v17])
      {
        v32 = [objc_msgSend(objc_msgSend(objc_msgSend(v17 "arguments")];
        [v32 appendString:@".@count"];
        v33 = [objc_opt_class() _newKeyPathExpressionForString:v32];

        v20 = -[NSSQLSubqueryExpressionIntermediate initWithExpression:trailingKeypath:inScope:]([NSSQLSubqueryExpressionIntermediate alloc], "initWithExpression:trailingKeypath:inScope:", [v17 operand], v33, *(context + 8));
        v19 = v20;
LABEL_44:
        v34 = [(NSSQLKeypathExpressionIntermediate *)v19 generateSQLStringInContext:a2];

        if (v34)
        {
          v35 = CFSTR("COUNT(");
          goto LABEL_46;
        }

LABEL_47:
        if ([a2 objectForKey:@"NSUnderlyingException"])
        {
          goto LABEL_32;
        }

        v25 = MEMORY[0x1E695DF30];
        v26 = *MEMORY[0x1E695D940];
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression %@", *(context + 16)];
        goto LABEL_29;
      }

      if ([@"distinct:" isEqual:{objc_msgSend(v17, "function")}])
      {
        v36 = [(NSSQLExpressionIntermediate *)[NSSQLFunctionExpressionIntermediate alloc] initWithExpression:v17 allowToMany:1 inScope:context];
        v34 = [(NSSQLFunctionExpressionIntermediate *)v36 generateSQLStringInContext:a2];

        if (!v34)
        {
          if ([a2 objectForKey:@"NSUnderlyingException"])
          {
            goto LABEL_32;
          }

          v25 = MEMORY[0x1E695DF30];
          v26 = *MEMORY[0x1E695D940];
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for expression: %@", *(context + 16)];
          goto LABEL_29;
        }

        v35 = CFSTR("COUNT (");
LABEL_46:
        v16 = [(__CFString *)v35 mutableCopy];
        [v16 appendString:v34];

        [v16 appendString:@""]);
        goto LABEL_33;
      }
    }

    else if (expressionType == 13)
    {
      v29 = [objc_opt_class() _newKeyPathExpressionForString:@".@count"];
      v30 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:v17 trailingKeypath:v29 inScope:*(context + 8)];

      v16 = [(NSSQLSubqueryExpressionIntermediate *)v30 generateSQLStringInContext:a2];
      if (v16)
      {
        goto LABEL_33;
      }

      goto LABEL_47;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported function expression : %@", *(context + 16)];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:*(context + 16) forKey:@"Bad value"];
LABEL_5:
    v9 = v8;
    v10 = v4;
    v11 = v5;
    v12 = v6;
LABEL_31:
    [a2 setObject:objc_msgSend(v10 forKey:{"exceptionWithName:reason:userInfo:", v11, v12, v9), @"NSUnderlyingException"}];
    goto LABEL_32;
  }

  v23 = *MEMORY[0x1E69E9840];

  return [(NSSQLFunctionExpressionIntermediate *)context _generateCorrelatedSubqueryStringWithSymbol:v17 forExpression:a2 inContext:?];
}

- (void)_generateGroupConcatInContext:(id *)context
{
  v50[1] = *MEMORY[0x1E69E9840];
  if (!context)
  {
    goto LABEL_7;
  }

  if ([context isIndexScoped])
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), aggregate operations not allowed here", context[2]];
    v7 = context[2];
    v49 = @"expression";
    v50[0] = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = v50;
    v10 = &v49;
    goto LABEL_5;
  }

  if ([context[2] selector] == sel_groupConcat_ && objc_msgSend(objc_msgSend(context[2], "arguments"), "count") != 1)
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
      goto LABEL_7;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of arguments to groupConcat. (%lu given, 1 required)", objc_msgSend(objc_msgSend(context[2], "arguments"), "count")];
    v27 = context[2];
    v47 = @"expression";
    v48 = v27;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v48;
    v10 = &v47;
    goto LABEL_5;
  }

  if ([context[2] selector] == sel_groupConcat_separator_)
  {
    if ([objc_msgSend(context[2] "arguments")] != 2)
    {
      if ([a2 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_7;
      }

      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of arguments to groupConcat. (%lu given, 2 required)", objc_msgSend(objc_msgSend(context[2], "arguments"), "count")];
      v28 = context[2];
      v45 = @"expression";
      v46 = v28;
      v8 = MEMORY[0x1E695DF20];
      v9 = &v46;
      v10 = &v45;
      goto LABEL_5;
    }

    if (([objc_msgSend(objc_msgSend(context[2] "arguments")] & 1) == 0)
    {
      if ([a2 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_7;
      }

      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported separator for expression: %@. groupConcat:separator: separator must be a string", objc_msgSend(objc_msgSend(context[2], "arguments"), "lastObject")];
      v21 = context[2];
      v43 = @"expression";
      v44 = v21;
      v8 = MEMORY[0x1E695DF20];
      v9 = &v44;
      v10 = &v43;
      goto LABEL_5;
    }
  }

  v18 = [objc_msgSend(context[2] "arguments")];
  if (![v18 expressionType])
  {
    constantValue = [v18 constantValue];
    if (([constantValue isNSArray] & 1) != 0 || (objc_msgSend(constantValue, "isNSSet") & 1) != 0 || objc_msgSend(constantValue, "isNSOrderedSet"))
    {
      if ([a2 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_7;
      }

      v23 = MEMORY[0x1E695DF30];
      v24 = *MEMORY[0x1E695D940];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid constant value for group_concat. %@. Collections are not supported.", constantValue];
      v26 = context[2];
      v41 = @"expression";
      v42 = v26;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v12 = v23;
      v13 = v24;
      v14 = v25;
      goto LABEL_6;
    }

    if (([constantValue isNSNumber] & 1) != 0 || objc_msgSend(constantValue, "isNSString"))
    {
      v20 = [(NSSQLIntermediate *)context _generateSQLForConstantValue:constantValue inContext:a2];
      goto LABEL_19;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad argument to groupConcat (non-numeric, or non-string argument) : %@", objc_msgSend(context[2], "arguments")];
    v34 = context[2];
    v39 = @"expression";
    v40 = v34;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v40;
    v10 = &v39;
LABEL_5:
    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v12 = v4;
    v13 = v5;
    v14 = v6;
LABEL_6:
    [a2 setObject:objc_msgSend(v12 forKey:{"exceptionWithName:reason:userInfo:", v13, v14, v11), @"NSUnderlyingException"}];
    goto LABEL_7;
  }

  if ((![context isTargetColumnsScoped] || (objc_msgSend(objc_msgSend(objc_msgSend(context, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") & 1) == 0) && !objc_msgSend(context, "isHavingScoped"))
  {
    goto LABEL_7;
  }

  if (([objc_opt_class() isSimpleKeypath:v18] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v18))
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad argument to aggregate group_concat in select (must be a keypath or constant value) : %@", objc_msgSend(context[2], "arguments")];
    v33 = context[2];
    v35 = @"expression";
    v36 = v33;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v36;
    v10 = &v35;
    goto LABEL_5;
  }

  v19 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:v18 allowToMany:1 inScope:context];
  v20 = [(NSSQLKeypathExpressionIntermediate *)v19 generateSQLStringInContext:a2];

  if (!v20)
  {
    if (![a2 objectForKey:@"NSUnderlyingException"])
    {
      v29 = MEMORY[0x1E695DF30];
      v30 = *MEMORY[0x1E695D940];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for keypath: %@", context[2]];
      v32 = context[2];
      v37 = @"expression";
      v38 = v32;
      [a2 setValue:objc_msgSend(v29 forKey:{"exceptionWithName:reason:userInfo:", v30, v31, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v38, &v37, 1)), @"NSUnderlyingException"}];
    }

    goto LABEL_7;
  }

LABEL_19:
  v15 = objc_msgSend(@"group_concat("), "mutableCopy";
  [v15 appendString:v20];

  if ([objc_msgSend(context[2] "arguments")] == 2)
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"selectBindVars", "addObject:", -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", objc_msgSend(objc_msgSend(context[2], "arguments"), "lastObject"), 6, 0)}];
    [v15 appendString:{@", ?"}];
  }

  [v15 appendString:@""]);
LABEL_8:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_generateType4SQLForSymbol:(void *)symbol inContext:
{
  v48[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_18;
  }

  if ([self isIndexScoped])
  {
    if (![symbol objectForKey:@"NSUnderlyingException"])
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), aggregate operations not allowed here", *(self + 16)];
      v8 = *(self + 16);
      v47 = @"expression";
      v48[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      [symbol setObject:objc_msgSend(v6 forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], v7, v9), @"NSUnderlyingException"}];
    }

    goto LABEL_18;
  }

  if ([objc_msgSend(*(self + 16) "arguments")] != 1)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = MEMORY[0x1E696AEC0];
    arguments = *(self + 16);
    v19 = @"Invalid number of arguments to avg function : %@";
LABEL_15:
    v20 = [v18 stringWithFormat:v19, arguments];
    goto LABEL_16;
  }

  v10 = [objc_msgSend(*(self + 16) "arguments")];
  expressionType = [v10 expressionType];
  if (!expressionType)
  {
    constantValue = [v10 constantValue];
    if (([constantValue isNSArray] & 1) != 0 || (objc_msgSend(constantValue, "isNSSet") & 1) != 0 || objc_msgSend(constantValue, "isNSOrderedSet"))
    {
      if ([constantValue count])
      {
        if ([@"avg" isEqual:a2])
        {
          v27 = [NSClassFromString(@"_NSPredicateUtilities") average:constantValue];
        }

        else
        {
          v27 = [NSClassFromString(@"_NSPredicateUtilities") sum:constantValue];
        }
      }

      else
      {
        v27 = [MEMORY[0x1E696AD98] numberWithInt:0];
      }

      v35 = *MEMORY[0x1E69E9840];
      selfCopy2 = self;
    }

    else
    {
      if (![constantValue isNSNumber])
      {
        v16 = MEMORY[0x1E695DF30];
        v17 = *MEMORY[0x1E695D940];
        v45 = MEMORY[0x1E696AEC0];
        arguments = [*(self + 16) arguments];
        v19 = @"Bad argument to sum (non-numeric, non-collection argument) : %@";
LABEL_65:
        v18 = v45;
        goto LABEL_15;
      }

      v43 = *MEMORY[0x1E69E9840];
      selfCopy2 = self;
      v27 = constantValue;
    }

    return [(NSSQLIntermediate *)selfCopy2 _generateSQLForConstantValue:v27 inContext:symbol];
  }

  v12 = expressionType;
  if ([self isTargetColumnsScoped] && (objc_msgSend(objc_msgSend(objc_msgSend(self, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") & 1) != 0 || objc_msgSend(self, "isHavingScoped"))
  {
    if (([objc_opt_class() isSimpleKeypath:v10] & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v10))
    {
      v13 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:v10 allowToMany:1 inScope:self];
      v14 = [(NSSQLKeypathExpressionIntermediate *)v13 generateSQLStringInContext:symbol];

      if (v14)
      {
LABEL_13:
        v15 = [a2 mutableCopy];
        objc_msgSend(v15, "appendString:", @"(");
        [v15 appendString:v14];

        [v15 appendString:@""]);
LABEL_19:
        v24 = *MEMORY[0x1E69E9840];
        return v15;
      }

      if (![symbol objectForKey:@"NSUnderlyingException"])
      {
        v32 = MEMORY[0x1E695DF30];
        v33 = *MEMORY[0x1E695D940];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for keypath: %@", *(self + 16)];
LABEL_62:
        [symbol setValue:objc_msgSend(v32 forKey:{"exceptionWithName:reason:userInfo:", v33, v34, 0), @"NSUnderlyingException"}];
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    if (v12 != 20)
    {
      v37 = MEMORY[0x1E695DF30];
      v38 = *MEMORY[0x1E695D940];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad argument to aggregate %@ in select (must be a keypath or constant value) : %@", a2, objc_msgSend(*(self + 16), "arguments")];
      v22 = v37;
      v23 = v38;
      goto LABEL_17;
    }

LABEL_56:
    [objc_msgSend(*(self + 16) "arguments")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:]([NSSQLTernaryExpressionIntermediate alloc], "initWithExpression:allowToMany:inScope:", [objc_msgSend(*(self + 16) "arguments")], 0, self);
      v14 = [(NSSQLTernaryExpressionIntermediate *)v44 generateSQLStringInContext:symbol];

      if (v14)
      {
        goto LABEL_13;
      }

      if (![symbol objectForKey:@"NSUnderlyingException"])
      {
        v32 = MEMORY[0x1E695DF30];
        v33 = *MEMORY[0x1E695D940];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for ternary expression: %@", *(self + 16)];
        goto LABEL_62;
      }
    }

    else if (![symbol objectForKey:@"NSUnderlyingException"])
    {
      v32 = MEMORY[0x1E695DF30];
      v33 = *MEMORY[0x1E695D940];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for expression: %@", *(self + 16)];
      goto LABEL_62;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  if (([objc_opt_class() isSimpleKeypath:v10] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v10))
  {
    if ([v10 expressionType] == 13)
    {
      v40 = [@".@" mutableCopy];
      [v40 appendString:a2];
      v41 = [objc_opt_class() _newKeyPathExpressionForString:v40];

      v42 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:v10 trailingKeypath:v41 inScope:*(self + 8)];
      v15 = [(NSSQLSubqueryExpressionIntermediate *)v42 generateSQLStringInContext:symbol];

      if (v15)
      {
        goto LABEL_19;
      }

      if ([symbol objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_18;
      }

      v32 = MEMORY[0x1E695DF30];
      v33 = *MEMORY[0x1E695D940];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for subquery: %@", *(self + 16)];
      goto LABEL_62;
    }

    if (v12 == 20)
    {
      goto LABEL_56;
    }

    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v45 = MEMORY[0x1E696AEC0];
    arguments = [*(self + 16) arguments];
    v19 = @"Unsupported argument to sum : %@";
    goto LABEL_65;
  }

  v28 = [objc_msgSend(objc_msgSend(v10 "arguments")];
  if ([v28 rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = [self governingEntityForKeypathExpression:v10];
    if (v29)
    {
      v30 = [*(v29 + 40) objectForKey:v28];
    }

    else
    {
      v30 = 0;
    }

    if ([v30 propertyType] == 1)
    {
      v31 = *MEMORY[0x1E69E9840];

      return [(NSSQLFunctionExpressionIntermediate *)self _generateUncorrelatedSubqueryStringWithSymbol:a2 forAttribute:v30 inContext:symbol];
    }

    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Non-attribute property passed to sum: %@", *(self + 16)];
LABEL_16:
    v21 = v20;
    v22 = v16;
    v23 = v17;
LABEL_17:
    [symbol setObject:objc_msgSend(v22 forKey:{"exceptionWithName:reason:userInfo:", v23, v21, 0), @"NSUnderlyingException"}];
    goto LABEL_18;
  }

  v39 = *MEMORY[0x1E69E9840];

  return [(NSSQLFunctionExpressionIntermediate *)self _generateCorrelatedSubqueryStringWithSymbol:a2 forExpression:v10 inContext:symbol];
}

- (void)_generateDistinctStringInContext:(id *)context
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!context)
  {
    goto LABEL_14;
  }

  if ([context isIndexScoped])
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
LABEL_14:
      v15 = 0;
      goto LABEL_15;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), 'distinct' not allowed here", context[2]];
    v7 = context[2];
    v22 = @"expression";
    v23[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v9 = v4;
    v10 = v5;
    v11 = v6;
LABEL_13:
    [a2 setObject:objc_msgSend(v9 forKey:{"exceptionWithName:reason:userInfo:", v10, v11, v8), @"NSUnderlyingException"}];
    goto LABEL_14;
  }

  if ([objc_msgSend(context[2] "arguments")] != 1)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of arguments to distinct : %@", context[2]];
    v9 = v16;
LABEL_12:
    v10 = v17;
    v8 = 0;
    goto LABEL_13;
  }

  v12 = [objc_msgSend(context[2] "arguments")];
  if ([v12 expressionType] != 1 && (objc_msgSend(objc_opt_class(), "isSimpleKeypath:", v12) & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v12) & 1) == 0)
  {
    v20 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid argument to distinct : %@", v12];
LABEL_19:
    v11 = v21;
    v9 = v20;
    goto LABEL_12;
  }

  v13 = [(NSSQLIntermediate *)context _generateSQLForExpression:v12 allowToMany:1 inContext:a2];
  if (!v13)
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
      goto LABEL_14;
    }

    v20 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for distinct : %@", v12];
    goto LABEL_19;
  }

  v14 = v13;
  v15 = [@"DISTINCT " mutableCopy];
  [v15 appendString:v14];

LABEL_15:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (uint64_t)_generateNowStringInContext:(id *)context
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!context)
  {
    goto LABEL_8;
  }

  if ([context isIndexScoped])
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
LABEL_8:
      v14 = *MEMORY[0x1E69E9840];
      return 0;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), 'now' not allowed here", context[2]];
    v7 = context[2];
    v18 = @"expression";
    v19[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = v4;
    v10 = v5;
    v11 = v6;
LABEL_7:
    [a2 setObject:objc_msgSend(v9 forKey:{"exceptionWithName:reason:userInfo:", v10, v11, v8), @"NSUnderlyingException"}];
    goto LABEL_8;
  }

  if ([objc_msgSend(context[2] "arguments")])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of arguments to now function : %@", context[2]];
    v9 = v12;
    v10 = v13;
    v8 = 0;
    goto LABEL_7;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v17 = *MEMORY[0x1E69E9840];

  return [(NSSQLIntermediate *)context _generateSQLForConstantValue:v16 inContext:a2];
}

- (void)_generateLengthStringInContext:(id *)context
{
  if (!context)
  {
    return 0;
  }

  if ([objc_msgSend(context[2] "arguments")] != 1)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of arguments to length: function : %@", context[2]];
    v11 = v8;
LABEL_13:
    [a2 setObject:objc_msgSend(v11 forKey:{"exceptionWithName:reason:userInfo:", v9, v10, 0), @"NSUnderlyingException"}];
    return 0;
  }

  v4 = [objc_msgSend(context[2] "arguments")];
  if ([v4 expressionType] && (objc_msgSend(objc_opt_class(), "isSimpleKeypath:", v4) & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v4) & 1) == 0)
  {
    v12 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid argument to length: : %@", v4];
LABEL_12:
    v10 = v13;
    v11 = v12;
    goto LABEL_13;
  }

  v5 = [(NSSQLIntermediate *)context _generateSQLForExpression:v4 allowToMany:0 inContext:a2];
  if (!v5)
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v12 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for length : %@", v4];
    goto LABEL_12;
  }

  v6 = v5;
  v7 = objc_msgSend(@"length("), "mutableCopy";
  [v7 appendString:v6];
  [v7 appendString:@""]);

  return v7;
}

- (uint64_t)_generateRtreeIndexStringInContext:(uint64_t)result
{
  if (result)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"You should not have made it here, scope failed at its job : %@", *(result + 16)), 0}];

    return [a2 setObject:v3 forKey:@"NSUnderlyingException"];
  }

  return result;
}

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  selector = [(NSExpression *)self->super._expression selector];
  if (sel_max_ == selector)
  {
    v12 = @"max";
LABEL_33:

    return [(NSSQLFunctionExpressionIntermediate *)self generateType1SQLString:v12 inContext:context];
  }

  if (sel_min_ == selector)
  {
    v12 = @"min";
    goto LABEL_33;
  }

  if (sel_uppercase_ == selector)
  {
    v13 = CFSTR("NSCoreDataToUpper(");
LABEL_38:

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa generateType2SQLString:v13 inContext:context];
  }

  if (sel_lowercase_ == selector)
  {
    v13 = CFSTR("NSCoreDataToLower(");
    goto LABEL_38;
  }

  if (sel_onesComplement_ == selector)
  {
    v14 = CFSTR("(~");
LABEL_43:
    selfCopy2 = self;
    v16 = 0;
LABEL_44:

    return [(NSSQLFunctionExpressionIntermediate *)&selfCopy2->super.super.super.isa generateType3SQLString:v14 keypathOnly:v16 inContext:context];
  }

  if (sel_abs_ == selector)
  {
    v14 = CFSTR("abs(");
    goto LABEL_43;
  }

  if (sel_noindex_ == selector)
  {
    v14 = CFSTR("+(");
    selfCopy2 = self;
    v16 = 1;
    goto LABEL_44;
  }

  if (sel_average_ == selector)
  {
    v17 = @"avg";
LABEL_50:

    return [(NSSQLFunctionExpressionIntermediate *)self _generateType4SQLForSymbol:v17 inContext:context];
  }

  if (sel_sum_ == selector)
  {
    v17 = @"total";
    goto LABEL_50;
  }

  if (sel_count_ == selector)
  {

    return [(NSSQLFunctionExpressionIntermediate *)self _generateSQLForCountInContext:context];
  }

  if (sel_add_to_ == selector)
  {
    v18 = @" + ";
LABEL_65:

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateMathStringWithSymbol:v18 inContext:context];
  }

  if (sel_from_subtract_ == selector)
  {
    v18 = @" - ";
    goto LABEL_65;
  }

  if (sel_multiply_by_ == selector)
  {
    v18 = @" * ";
    goto LABEL_65;
  }

  if (sel_divide_by_ == selector)
  {
    v18 = @" / ";
    goto LABEL_65;
  }

  if (sel_modulus_by_ == selector)
  {
    v18 = @" % ";
    goto LABEL_65;
  }

  if (sel_bitwiseAnd_with_ == selector)
  {
    v18 = @" & ";
    goto LABEL_65;
  }

  if (sel_bitwiseOr_with_ == selector)
  {
    v18 = @" | ";
    goto LABEL_65;
  }

  if (sel_leftshift_by_ == selector)
  {
    v18 = @" << ";
    goto LABEL_65;
  }

  if (sel_rightshift_by_ == selector)
  {
    v18 = @" >> ";
    goto LABEL_65;
  }

  if (sel_distinct_ == selector)
  {

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateDistinctStringInContext:context];
  }

  else if (sel_now == selector)
  {

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateNowStringInContext:context];
  }

  else if (sel_length_ == selector)
  {

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateLengthStringInContext:context];
  }

  else
  {
    if (sel_indexed_by_ == selector)
    {
      [(NSSQLFunctionExpressionIntermediate *)self _generateRtreeIndexStringInContext:context];
      return 0;
    }

    if (sel_groupConcat_ != selector && sel_groupConcat_separator_ != selector)
    {
      if (![context objectForKey:@"NSUnderlyingException"])
      {
        isIndexScoped = [(NSSQLIntermediate *)self isIndexScoped];
        v8 = MEMORY[0x1E695DF30];
        v9 = *MEMORY[0x1E695D940];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:self->super._expression forKey:@"Bad value"];
        if (isIndexScoped)
        {
          v11 = @"Unsupported function type passed as index component (either not a valid function at all, or just not valid in this context).";
        }

        else
        {
          v11 = @"Unsupported function type passed to SQL store";
        }

        [context setObject:objc_msgSend(v8 forKey:{"exceptionWithName:reason:userInfo:", v9, v11, v10), @"NSUnderlyingException"}];
      }

      return 0;
    }

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateGroupConcatInContext:context];
  }
}

@end