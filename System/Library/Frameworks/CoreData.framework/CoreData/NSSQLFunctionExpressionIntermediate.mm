@interface NSSQLFunctionExpressionIntermediate
+ (BOOL)functionIsAcceptableAsAggregate:(uint64_t)a1;
- (id)_generateType4SQLForSymbol:(void *)a3 inContext:;
- (id)generateSQLStringInContext:(id)a3;
- (id)generateType1SQLString:(void *)a3 inContext:;
- (uint64_t)_generateCorrelatedSubqueryStringWithSymbol:(void *)a3 forExpression:(void *)a4 inContext:;
- (uint64_t)_generateNowStringInContext:(id *)a1;
- (uint64_t)_generateRtreeIndexStringInContext:(uint64_t)result;
- (uint64_t)_generateSQLForCountInContext:(uint64_t)a1;
- (void)_generateArgumentStringForCollection:(void *)a3 inContext:;
- (void)_generateDistinctStringInContext:(id *)a1;
- (void)_generateGroupConcatInContext:(id *)a1;
- (void)_generateLengthStringInContext:(id *)a1;
- (void)_generateMathStringWithSymbol:(void *)a3 inContext:;
- (void)_generateUncorrelatedSubqueryStringWithSymbol:(void *)a3 forAttribute:(void *)a4 inContext:;
- (void)generateType2SQLString:(void *)a3 inContext:;
- (void)generateType3SQLString:(int)a3 keypathOnly:(void *)a4 inContext:;
@end

@implementation NSSQLFunctionExpressionIntermediate

+ (BOOL)functionIsAcceptableAsAggregate:(uint64_t)a1
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

  v3 = [a2 selector];
  if (v3 != _MergedGlobals_79 && v3 != *algn_1ED4BEA98 && v3 != qword_1ED4BEAA0 && v3 != unk_1ED4BEAA8 && v3 != qword_1ED4BEAB0)
  {
    return 0;
  }

  v8 = v3;
  v9 = [a2 arguments];
  if ([v9 count] != 1)
  {
    return 0;
  }

  v10 = [v9 objectAtIndex:0];
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

- (void)_generateArgumentStringForCollection:(void *)a3 inContext:
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a3 objectForKey:@"NSUnderlyingException"])
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

          v13 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v12 allowToMany:1 inContext:a3];
          if (!v13)
          {
            if (![a3 objectForKey:@"NSUnderlyingException"])
            {
              [a3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to generate sql for %@ as part of  expression (%@)", v12, a1[2]), 0), @"NSUnderlyingException"}];
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

- (void)_generateMathStringWithSymbol:(void *)a3 inContext:
{
  if (!a1)
  {
    return 0;
  }

  v6 = [a1[2] arguments];
  if ([v6 count] != 2)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = MEMORY[0x1E696AEC0];
    v17 = v6;
    v14 = @"Wrong number of arguments to function add:to: (%@)";
LABEL_7:
    [a3 setObject:objc_msgSend(v11 forKey:{"exceptionWithName:reason:userInfo:", v12, objc_msgSend(v13, "stringWithFormat:", v14, v17), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v7 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](a1, [objc_msgSend(a1[2] "arguments")], 0, a3);
  if (!v7)
  {
    if ([a3 objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v6 objectAtIndex:0];
    v14 = @"Unable to generate sql for add:to: argument 0(%@)";
    goto LABEL_14;
  }

  v8 = v7;
  objc_msgSend(v7, "insertString:atIndex:", @"("), 0;
  [v8 appendString:a2];
  v9 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](a1, [objc_msgSend(a1[2] "arguments")], 0, a3);
  if (!v9)
  {

    if ([a3 objectForKey:@"NSUnderlyingException"])
    {
      return 0;
    }

    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v6 objectAtIndex:1];
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

- (void)_generateUncorrelatedSubqueryStringWithSymbol:(void *)a3 forAttribute:(void *)a4 inContext:
{
  v34[1] = *MEMORY[0x1E69E9840];
  if ([a1 isIndexScoped])
  {
    if ([a4 objectForKey:@"NSUnderlyingException"])
    {
LABEL_15:
      v18 = 0;
      goto LABEL_16;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@)", a1[2]];
    v11 = a1[2];
    v33 = @"expression";
    v34[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v13 = v8;
    v14 = v9;
    v15 = v10;
LABEL_14:
    [a4 setObject:objc_msgSend(v13 forKey:{"exceptionWithName:reason:userInfo:", v14, v15, v12), @"NSUnderlyingException"}];
    goto LABEL_15;
  }

  v16 = [a3 entity];
  v17 = [objc_msgSend(a4 objectForKey:{@"aliasGenerator", "generateTableAlias"}];
  v18 = objc_msgSend(@"(SELECT "), "mutableCopy";
  [v18 appendString:a2];
  objc_msgSend(v18, "appendString:", @"(");
  [v18 appendString:v17];
  [v18 appendString:@"."];
  [v18 appendString:{objc_msgSend(a3, "columnName")}];
  [v18 appendString:@" FROM "]);
  [v18 appendString:{objc_msgSend(v16, "tableName")}];
  [v18 appendString:@" "];
  [v18 appendString:v17];
  v19 = [a4 objectForKey:@"restrictingEntityPredicate"];
  if (v19)
  {
    v20 = v19;
    if ([a1 isTargetColumnsScoped])
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
        v27 = [(NSSQLIntermediate *)a1 _generateSQLForConstantValue:v25 inContext:a4];
        if (v27)
        {
          v28 = v27;
          [v18 appendString:v27];

          [v18 appendString:@" AND "];
          [v18 appendString:v17];
          [v18 appendString:@"."];
          [v18 appendString:@"Z_ENT"];
          [v18 appendString:@" <= "];
          v29 = [(NSSQLIntermediate *)a1 _generateSQLForConstantValue:v26 inContext:a4];
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
        v23 = [(NSSQLIntermediate *)a1 _generateSQLForConstantValue:v22 inContext:a4];
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

- (uint64_t)_generateCorrelatedSubqueryStringWithSymbol:(void *)a3 forExpression:(void *)a4 inContext:
{
  v61[1] = *MEMORY[0x1E69E9840];
  if ([a1 isIndexScoped])
  {
    if ([a4 objectForKey:@"NSUnderlyingException"])
    {
LABEL_9:
      v21 = 0;
      goto LABEL_10;
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), '%@' not supported in this context", a1[2], a2];
    v11 = a1[2];
    v60 = @"expression";
    v61[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v13 = v8;
    v14 = v9;
    v15 = v10;
LABEL_7:
    v19 = [v13 exceptionWithName:v14 reason:v15 userInfo:v12];
    v20 = a4;
LABEL_8:
    [v20 setObject:v19 forKey:@"NSUnderlyingException"];
    goto LABEL_9;
  }

  if ([a1 isUpdateScoped])
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported join (min/max(key.path) not allowed in updates)", v52];
LABEL_6:
    v15 = v18;
    v13 = v16;
    v14 = v17;
    v12 = 0;
    goto LABEL_7;
  }

  v57 = a2;
  v55 = a1;
  v24 = [a1 governingEntityForKeypathExpression:a3];
  v25 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "arguments")];
  v26 = [v25 count];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v58 = 0;
    v59 = v26 - 1;
    v56 = a4;
    v54 = a3;
    while (1)
    {
      v53 = v29;
      v31 = v29;
      v32 = v30;
      while (1)
      {
        v33 = [v25 objectAtIndex:v32];
        if (!v24)
        {
          v31 = v53;
LABEL_56:

          v40 = MEMORY[0x1E695DF30];
          v41 = *MEMORY[0x1E695D940];
          v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath element (not a relationship or attribute): %@", v33];
LABEL_57:
          v19 = [v40 exceptionWithName:v41 reason:v42 userInfo:0];
          v20 = v56;
          goto LABEL_8;
        }

        v34 = [*(v24 + 40) objectForKey:v33];
        if (!v34)
        {
          goto LABEL_56;
        }

        v35 = v34;
        v36 = [v34 propertyType];
        if (v36 != 1)
        {
          break;
        }

        if (v30 < v59)
        {

          v40 = MEMORY[0x1E695DF30];
          v41 = *MEMORY[0x1E695D940];
          v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath (continues after attribute name): %@", v33];
          goto LABEL_57;
        }

        if ((v28 & 1) == 0)
        {

          v40 = MEMORY[0x1E695DF30];
          v41 = *MEMORY[0x1E695D940];
          v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath (request for aggregate operation on a toOne-only keypath): %@", v54];
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
          a4 = v56;
          a3 = v54;
          goto LABEL_49;
        }
      }

      if (v36 == 7)
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
        v24 = [v35 destinationEntity];
        v30 = v32 + 1;
        v29 = v31;
        v39 = v59 == v32;
        a4 = v56;
        a3 = v54;
        if (v39)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if ((v36 & 0xFE) == 8)
        {
          if (v28)
          {

            v40 = MEMORY[0x1E695DF30];
            v41 = *MEMORY[0x1E695D940];
            v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath (too many toMany relationships): %@", v54];
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
          v24 = [v35 destinationEntity];
          v28 = 1;
        }

        v30 = v32 + 1;
        v29 = v31;
        v39 = v59 == v32;
        a4 = v56;
        a3 = v54;
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
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath (no terminal attribute in call to math aggregate): %@", a3];
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
  v44 = [a3 operand];
  v45 = [objc_opt_class() _newKeyPathExpressionForString:v58];

  v46 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v45, 0}];
  v47 = [MEMORY[0x1E696ABC8] expressionForFunction:v44 selectorName:@"valueForKeyPath:" arguments:v46];

  v48 = [objc_msgSend(a4 objectForKey:{@"aliasGenerator", "generateSubqueryVariableAlias"}];
  v49 = [MEMORY[0x1E696ABC8] expressionForSubquery:v47 usingIteratorVariable:v48 predicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithValue:", 1)}];
  v50 = [objc_opt_class() _newKeyPathExpressionForString:v31];

  v51 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:v49 trailingKeypath:v50 inScope:v55[1]];
  v21 = [(NSSQLSubqueryExpressionIntermediate *)v51 generateSQLStringInContext:a4];

  if (!v21)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to generate SQL for function expression: %@", a3];
    goto LABEL_6;
  }

LABEL_10:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)generateType1SQLString:(void *)a3 inContext:
{
  v58[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_20;
  }

  if ([a1 isIndexScoped])
  {
    if (![a3 objectForKey:@"NSUnderlyingException"])
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D940];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), aggregate operations not allowed here", *(a1 + 16)];
      v9 = *(a1 + 16);
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
      [a3 setObject:objc_msgSend(v14 forKey:{"exceptionWithName:reason:userInfo:", v15, v16, v13), @"NSUnderlyingException"}];
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v17 = [objc_msgSend(*(a1 + 16) "arguments")];
  if (!v17)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate sql for %@, empty %@ expression", *(a1 + 16), a2];
    v14 = v24;
LABEL_17:
    v15 = v25;
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v18 = v17;
  if ([a1 isTargetColumnsScoped] && objc_msgSend(objc_msgSend(objc_msgSend(a1, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") && objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 16), "arguments"), "firstObject"), "expressionType") == 3)
  {
    v19 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:]([NSSQLKeypathExpressionIntermediate alloc], "initWithExpression:allowToMany:inScope:", [objc_msgSend(*(a1 + 16) "arguments")], 1, a1);
    v20 = [(NSSQLKeypathExpressionIntermediate *)v19 generateSQLStringInContext:a3];

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
    v28 = [*(a1 + 16) arguments];
    v29 = a1;
    goto LABEL_23;
  }

  v22 = [objc_msgSend(*(a1 + 16) "arguments")];
  if (![a1 isIndexScoped])
  {
    v31 = [v22 expressionType];
    if (([objc_opt_class() isSimpleKeypath:v22] & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v22))
    {
      v32 = [objc_msgSend(objc_msgSend(v22 "arguments")];
      if ([v32 rangeOfString:@"."] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v35 = [(NSSQLFunctionExpressionIntermediate *)a1 _generateCorrelatedSubqueryStringWithSymbol:a2 forExpression:v22 inContext:a3];
        goto LABEL_36;
      }

      v33 = [a1 governingEntityForKeypathExpression:v22];
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
        v35 = [(NSSQLFunctionExpressionIntermediate *)a1 _generateUncorrelatedSubqueryStringWithSymbol:a2 forAttribute:v34 inContext:a3];
LABEL_36:
        v21 = v35;
        goto LABEL_21;
      }

      v38 = MEMORY[0x1E695DF30];
      v39 = *MEMORY[0x1E695D940];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Non-attribute property passed to math function: %@", v22];
      goto LABEL_47;
    }

    if (v31 <= 12)
    {
      if (!v31)
      {
        v51 = [v22 constantValue];
        if ([v51 isNSSet] & 1) != 0 || (objc_msgSend(v51, "isNSArray") & 1) != 0 || (objc_msgSend(v51, "isNSOrderedSet"))
        {
          v52 = *(a1 + 16);
          if (objc_opt_respondsToSelector())
          {
            [*(a1 + 16) allowEvaluation];
          }

          v53 = [*(a1 + 16) expressionValueWithObject:0 context:0];
          v54 = a1;
        }

        else
        {
          v54 = a1;
          v53 = v51;
        }

        v35 = [(NSSQLIntermediate *)v54 _generateSQLForConstantValue:v53 inContext:a3];
        goto LABEL_36;
      }

      if (v31 != 4 || ![(NSSQLIntermediate *)a1 _functionExpressionIsSubqueryFollowedByKeypath:v22])
      {
        goto LABEL_53;
      }

      v41 = -[NSSQLSubqueryExpressionIntermediate initWithExpression:trailingKeypath:inScope:]([NSSQLSubqueryExpressionIntermediate alloc], "initWithExpression:trailingKeypath:inScope:", [*(a1 + 16) operand], objc_msgSend(objc_msgSend(*(a1 + 16), "arguments"), "objectAtIndex:", 0), *(a1 + 8));
      v42 = [(NSSQLSubqueryExpressionIntermediate *)v41 generateSQLStringInContext:a3];

      if (v42)
      {
        v21 = [a2 mutableCopy];
        [v21 appendString:v42];

        goto LABEL_21;
      }

      if ([a3 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_20;
      }

      v48 = MEMORY[0x1E695DF30];
      v49 = *MEMORY[0x1E695D940];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression %@", *(a1 + 16)];
LABEL_59:
      v16 = v50;
      v14 = v48;
      v15 = v49;
      goto LABEL_18;
    }

    if (v31 == 13)
    {
      v44 = [(NSSQLIntermediate *)a1 _generateSQLForSubqueryExpression:v22 trailingKeypath:0 inContext:a3];
      if (v44)
      {
        v45 = v44;
        v21 = [a2 mutableCopy];
        [v21 appendString:v45];

        goto LABEL_21;
      }

      if ([a3 objectForKey:@"NSUnderlyingException"])
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

    if (v31 != 14)
    {
      if (v31 == 20)
      {
        if ([objc_msgSend(*(a1 + 16) "arguments")] != 1 && !objc_msgSend(a3, "objectForKey:", @"NSUnderlyingException"))
        {
          [a3 setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Invalid argument count for %@(%@)", a2, *(a1 + 16)), 0), @"NSUnderlyingException"}];
        }

        v36 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:]([NSSQLTernaryExpressionIntermediate alloc], "initWithExpression:allowToMany:inScope:", [objc_msgSend(*(a1 + 16) "arguments")], 0, a1);
        v37 = [(NSSQLTernaryExpressionIntermediate *)v36 generateSQLStringInContext:a3];

        if (!v37)
        {
          if (![a3 objectForKey:@"NSUnderlyingException"])
          {
            [a3 setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to generate SQL for ternary expression: %@", *(a1 + 16)), 0), @"NSUnderlyingException"}];
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

    v46 = [v22 constantValue];
    v47 = [v46 count];
    if (v47 == 1)
    {
      v21 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](a1, [v46 objectAtIndex:0], 1, a3);
      if (v21)
      {
        goto LABEL_21;
      }

      if ([a3 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_20;
      }

      v48 = MEMORY[0x1E695DF30];
      v49 = *MEMORY[0x1E695D940];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate sql for %@", *(a1 + 16)];
      goto LABEL_59;
    }

    if (!v47)
    {
      v48 = MEMORY[0x1E695DF30];
      v49 = *MEMORY[0x1E695D940];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate sql for %@, empty max/etc expression", *(a1 + 16)];
      goto LABEL_59;
    }

    v21 = [a2 mutableCopy];
    objc_msgSend(v21, "appendString:", @"(");
    v29 = a1;
    v28 = v46;
LABEL_23:
    v30 = [(NSSQLFunctionExpressionIntermediate *)v29 _generateArgumentStringForCollection:v28 inContext:a3];
    if (!v30)
    {

      goto LABEL_20;
    }

    v20 = v30;
LABEL_25:
    [v21 appendString:v20];

    goto LABEL_26;
  }

  if (![a3 objectForKey:@"NSUnderlyingException"])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), aggregates not allowed here.", *(a1 + 16)];
    v23 = *(a1 + 16);
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

- (void)generateType2SQLString:(void *)a3 inContext:
{
  if (!a1)
  {
    return 0;
  }

  v6 = [objc_msgSend(a1[2] "arguments")];
  if (v6 != 1)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    if (v6)
    {
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:a1[2] forKey:@"Bad value"];
      v9 = @"Invalid number of parameters passed to uppercase: function";
      v10 = v7;
      v11 = v8;
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate sql for %@, empty expression", a1[2]];
      v10 = v7;
      v11 = v8;
      v12 = 0;
    }

    [a3 setObject:objc_msgSend(v10 forKey:{"exceptionWithName:reason:userInfo:", v11, v9, v12), @"NSUnderlyingException"}];
    return 0;
  }

  v13 = [objc_msgSend(a1[2] "arguments")];
  v14 = [v13 expressionType];
  if (([objc_opt_class() isSimpleKeypath:v13] & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v13) & 1) == 0 && (v14 || !objc_msgSend(objc_msgSend(v13, "constantValue"), "isNSString")))
  {
    [a3 setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Bad argument to upper/lower function (needs to be a keypath or a string) : %@", v13), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v15 = [a2 mutableCopy];
  v16 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v13 allowToMany:0 inContext:a3];
  if (!v16)
  {

    v15 = 0;
  }

  [v15 appendString:v16];
  [v15 appendString:@""]);

  return v15;
}

- (void)generateType3SQLString:(int)a3 keypathOnly:(void *)a4 inContext:
{
  if (!a1)
  {
    return 0;
  }

  v8 = [objc_msgSend(a1[2] "arguments")];
  if (v8 != 1)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    if (v8)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of parameters passed to function (%@)", a1[2]];
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObject:a1[2] forKey:@"Bad value"];
      v12 = v9;
      v13 = v10;
      v11 = v18;
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate sql for %@, empty expression", a1[2]];
      v12 = v9;
      v13 = v10;
      v14 = 0;
    }

    [a4 setObject:objc_msgSend(v12 forKey:{"exceptionWithName:reason:userInfo:", v13, v11, v14), @"NSUnderlyingException"}];
    return 0;
  }

  if (a3)
  {
    v15 = [objc_msgSend(a1[2] "arguments")];
    if (([objc_opt_class() isSimpleKeypath:v15] & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v15) & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [a4 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to generate sql for %@, can't drop index on non-keypath", a1[2]), 0), @"NSUnderlyingException"}];
      }
    }
  }

  v16 = [a2 mutableCopy];
  v17 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](a1, [objc_msgSend(a1[2] "arguments")], 0, a4);
  if (!v17)
  {

    v16 = 0;
  }

  [v16 appendString:v17];
  [v16 appendString:@""]);

  return v16;
}

- (uint64_t)_generateSQLForCountInContext:(uint64_t)a1
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_32;
  }

  if ([a1 isIndexScoped])
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
LABEL_32:
      v16 = 0;
      goto LABEL_33;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), 'count' not supported in this context", *(a1 + 16)];
    v7 = *(a1 + 16);
    v37 = @"expression";
    v38[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    goto LABEL_5;
  }

  v13 = [*(a1 + 16) arguments];
  v14 = [v13 count];
  if (![v13 count])
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
    v15 = -[NSSQLIntermediate _generateSQLForConstantValue:inContext:](a1, [MEMORY[0x1E696AD98] numberWithInteger:v14], a2);
    if (v15)
    {
      v16 = v15;
LABEL_33:
      v28 = *MEMORY[0x1E69E9840];
      return v16;
    }

    v25 = MEMORY[0x1E695DF30];
    v26 = *MEMORY[0x1E695D940];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for count expression %@", *(a1 + 16)];
LABEL_29:
    v12 = v27;
    v10 = v25;
    v11 = v26;
    goto LABEL_30;
  }

  v17 = [v13 objectAtIndex:0];
  v18 = [v17 expressionType];
  if ([a1 isTargetColumnsScoped] && objc_msgSend(objc_msgSend(objc_msgSend(a1, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") && objc_msgSend(MEMORY[0x1E696ABC8], "expressionForEvaluatedObject") == v17)
  {
    v31 = *MEMORY[0x1E69E9840];
    v22 = @"count(*)";
    goto LABEL_39;
  }

  if ([a1 isTargetColumnsScoped] && objc_msgSend(objc_msgSend(objc_msgSend(a1, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") && ((objc_msgSend(objc_opt_class(), "isSimpleKeypath:", v17) & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v17)) && objc_msgSend(objc_msgSend(v17, "keyPath"), "rangeOfString:", @".") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:v17 allowToMany:1 inScope:a1];
    v20 = v19;
    goto LABEL_44;
  }

  if (v18 == 1 && [a1 isHavingScoped])
  {
    v21 = *MEMORY[0x1E69E9840];
    v22 = @"COUNT(*)";
LABEL_39:

    return [(__CFString *)v22 mutableCopy];
  }

  if (([objc_opt_class() isSimpleKeypath:v17] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v17))
  {
    if (v18 == 4)
    {
      if ([(NSSQLIntermediate *)a1 _functionExpressionIsSubqueryFollowedByKeypath:v17])
      {
        v32 = [objc_msgSend(objc_msgSend(objc_msgSend(v17 "arguments")];
        [v32 appendString:@".@count"];
        v33 = [objc_opt_class() _newKeyPathExpressionForString:v32];

        v20 = -[NSSQLSubqueryExpressionIntermediate initWithExpression:trailingKeypath:inScope:]([NSSQLSubqueryExpressionIntermediate alloc], "initWithExpression:trailingKeypath:inScope:", [v17 operand], v33, *(a1 + 8));
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
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression %@", *(a1 + 16)];
        goto LABEL_29;
      }

      if ([@"distinct:" isEqual:{objc_msgSend(v17, "function")}])
      {
        v36 = [(NSSQLExpressionIntermediate *)[NSSQLFunctionExpressionIntermediate alloc] initWithExpression:v17 allowToMany:1 inScope:a1];
        v34 = [(NSSQLFunctionExpressionIntermediate *)v36 generateSQLStringInContext:a2];

        if (!v34)
        {
          if ([a2 objectForKey:@"NSUnderlyingException"])
          {
            goto LABEL_32;
          }

          v25 = MEMORY[0x1E695DF30];
          v26 = *MEMORY[0x1E695D940];
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for expression: %@", *(a1 + 16)];
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

    else if (v18 == 13)
    {
      v29 = [objc_opt_class() _newKeyPathExpressionForString:@".@count"];
      v30 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:v17 trailingKeypath:v29 inScope:*(a1 + 8)];

      v16 = [(NSSQLSubqueryExpressionIntermediate *)v30 generateSQLStringInContext:a2];
      if (v16)
      {
        goto LABEL_33;
      }

      goto LABEL_47;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported function expression : %@", *(a1 + 16)];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:*(a1 + 16) forKey:@"Bad value"];
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

  return [(NSSQLFunctionExpressionIntermediate *)a1 _generateCorrelatedSubqueryStringWithSymbol:v17 forExpression:a2 inContext:?];
}

- (void)_generateGroupConcatInContext:(id *)a1
{
  v50[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_7;
  }

  if ([a1 isIndexScoped])
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), aggregate operations not allowed here", a1[2]];
    v7 = a1[2];
    v49 = @"expression";
    v50[0] = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = v50;
    v10 = &v49;
    goto LABEL_5;
  }

  if ([a1[2] selector] == sel_groupConcat_ && objc_msgSend(objc_msgSend(a1[2], "arguments"), "count") != 1)
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
      goto LABEL_7;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of arguments to groupConcat. (%lu given, 1 required)", objc_msgSend(objc_msgSend(a1[2], "arguments"), "count")];
    v27 = a1[2];
    v47 = @"expression";
    v48 = v27;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v48;
    v10 = &v47;
    goto LABEL_5;
  }

  if ([a1[2] selector] == sel_groupConcat_separator_)
  {
    if ([objc_msgSend(a1[2] "arguments")] != 2)
    {
      if ([a2 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_7;
      }

      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of arguments to groupConcat. (%lu given, 2 required)", objc_msgSend(objc_msgSend(a1[2], "arguments"), "count")];
      v28 = a1[2];
      v45 = @"expression";
      v46 = v28;
      v8 = MEMORY[0x1E695DF20];
      v9 = &v46;
      v10 = &v45;
      goto LABEL_5;
    }

    if (([objc_msgSend(objc_msgSend(a1[2] "arguments")] & 1) == 0)
    {
      if ([a2 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_7;
      }

      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D940];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported separator for expression: %@. groupConcat:separator: separator must be a string", objc_msgSend(objc_msgSend(a1[2], "arguments"), "lastObject")];
      v21 = a1[2];
      v43 = @"expression";
      v44 = v21;
      v8 = MEMORY[0x1E695DF20];
      v9 = &v44;
      v10 = &v43;
      goto LABEL_5;
    }
  }

  v18 = [objc_msgSend(a1[2] "arguments")];
  if (![v18 expressionType])
  {
    v22 = [v18 constantValue];
    if (([v22 isNSArray] & 1) != 0 || (objc_msgSend(v22, "isNSSet") & 1) != 0 || objc_msgSend(v22, "isNSOrderedSet"))
    {
      if ([a2 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_7;
      }

      v23 = MEMORY[0x1E695DF30];
      v24 = *MEMORY[0x1E695D940];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid constant value for group_concat. %@. Collections are not supported.", v22];
      v26 = a1[2];
      v41 = @"expression";
      v42 = v26;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v12 = v23;
      v13 = v24;
      v14 = v25;
      goto LABEL_6;
    }

    if (([v22 isNSNumber] & 1) != 0 || objc_msgSend(v22, "isNSString"))
    {
      v20 = [(NSSQLIntermediate *)a1 _generateSQLForConstantValue:v22 inContext:a2];
      goto LABEL_19;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad argument to groupConcat (non-numeric, or non-string argument) : %@", objc_msgSend(a1[2], "arguments")];
    v34 = a1[2];
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

  if ((![a1 isTargetColumnsScoped] || (objc_msgSend(objc_msgSend(objc_msgSend(a1, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") & 1) == 0) && !objc_msgSend(a1, "isHavingScoped"))
  {
    goto LABEL_7;
  }

  if (([objc_opt_class() isSimpleKeypath:v18] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v18))
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad argument to aggregate group_concat in select (must be a keypath or constant value) : %@", objc_msgSend(a1[2], "arguments")];
    v33 = a1[2];
    v35 = @"expression";
    v36 = v33;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v36;
    v10 = &v35;
    goto LABEL_5;
  }

  v19 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:v18 allowToMany:1 inScope:a1];
  v20 = [(NSSQLKeypathExpressionIntermediate *)v19 generateSQLStringInContext:a2];

  if (!v20)
  {
    if (![a2 objectForKey:@"NSUnderlyingException"])
    {
      v29 = MEMORY[0x1E695DF30];
      v30 = *MEMORY[0x1E695D940];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for keypath: %@", a1[2]];
      v32 = a1[2];
      v37 = @"expression";
      v38 = v32;
      [a2 setValue:objc_msgSend(v29 forKey:{"exceptionWithName:reason:userInfo:", v30, v31, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v38, &v37, 1)), @"NSUnderlyingException"}];
    }

    goto LABEL_7;
  }

LABEL_19:
  v15 = objc_msgSend(@"group_concat("), "mutableCopy";
  [v15 appendString:v20];

  if ([objc_msgSend(a1[2] "arguments")] == 2)
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"selectBindVars", "addObject:", -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", objc_msgSend(objc_msgSend(a1[2], "arguments"), "lastObject"), 6, 0)}];
    [v15 appendString:{@", ?"}];
  }

  [v15 appendString:@""]);
LABEL_8:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_generateType4SQLForSymbol:(void *)a3 inContext:
{
  v48[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_18;
  }

  if ([a1 isIndexScoped])
  {
    if (![a3 objectForKey:@"NSUnderlyingException"])
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), aggregate operations not allowed here", *(a1 + 16)];
      v8 = *(a1 + 16);
      v47 = @"expression";
      v48[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      [a3 setObject:objc_msgSend(v6 forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], v7, v9), @"NSUnderlyingException"}];
    }

    goto LABEL_18;
  }

  if ([objc_msgSend(*(a1 + 16) "arguments")] != 1)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = MEMORY[0x1E696AEC0];
    v46 = *(a1 + 16);
    v19 = @"Invalid number of arguments to avg function : %@";
LABEL_15:
    v20 = [v18 stringWithFormat:v19, v46];
    goto LABEL_16;
  }

  v10 = [objc_msgSend(*(a1 + 16) "arguments")];
  v11 = [v10 expressionType];
  if (!v11)
  {
    v26 = [v10 constantValue];
    if (([v26 isNSArray] & 1) != 0 || (objc_msgSend(v26, "isNSSet") & 1) != 0 || objc_msgSend(v26, "isNSOrderedSet"))
    {
      if ([v26 count])
      {
        if ([@"avg" isEqual:a2])
        {
          v27 = [NSClassFromString(@"_NSPredicateUtilities") average:v26];
        }

        else
        {
          v27 = [NSClassFromString(@"_NSPredicateUtilities") sum:v26];
        }
      }

      else
      {
        v27 = [MEMORY[0x1E696AD98] numberWithInt:0];
      }

      v35 = *MEMORY[0x1E69E9840];
      v36 = a1;
    }

    else
    {
      if (![v26 isNSNumber])
      {
        v16 = MEMORY[0x1E695DF30];
        v17 = *MEMORY[0x1E695D940];
        v45 = MEMORY[0x1E696AEC0];
        v46 = [*(a1 + 16) arguments];
        v19 = @"Bad argument to sum (non-numeric, non-collection argument) : %@";
LABEL_65:
        v18 = v45;
        goto LABEL_15;
      }

      v43 = *MEMORY[0x1E69E9840];
      v36 = a1;
      v27 = v26;
    }

    return [(NSSQLIntermediate *)v36 _generateSQLForConstantValue:v27 inContext:a3];
  }

  v12 = v11;
  if ([a1 isTargetColumnsScoped] && (objc_msgSend(objc_msgSend(objc_msgSend(a1, "fetchIntermediate"), "selectIntermediate"), "onlyFetchesAggregates") & 1) != 0 || objc_msgSend(a1, "isHavingScoped"))
  {
    if (([objc_opt_class() isSimpleKeypath:v10] & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v10))
    {
      v13 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:v10 allowToMany:1 inScope:a1];
      v14 = [(NSSQLKeypathExpressionIntermediate *)v13 generateSQLStringInContext:a3];

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

      if (![a3 objectForKey:@"NSUnderlyingException"])
      {
        v32 = MEMORY[0x1E695DF30];
        v33 = *MEMORY[0x1E695D940];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for keypath: %@", *(a1 + 16)];
LABEL_62:
        [a3 setValue:objc_msgSend(v32 forKey:{"exceptionWithName:reason:userInfo:", v33, v34, 0), @"NSUnderlyingException"}];
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    if (v12 != 20)
    {
      v37 = MEMORY[0x1E695DF30];
      v38 = *MEMORY[0x1E695D940];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad argument to aggregate %@ in select (must be a keypath or constant value) : %@", a2, objc_msgSend(*(a1 + 16), "arguments")];
      v22 = v37;
      v23 = v38;
      goto LABEL_17;
    }

LABEL_56:
    [objc_msgSend(*(a1 + 16) "arguments")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:]([NSSQLTernaryExpressionIntermediate alloc], "initWithExpression:allowToMany:inScope:", [objc_msgSend(*(a1 + 16) "arguments")], 0, a1);
      v14 = [(NSSQLTernaryExpressionIntermediate *)v44 generateSQLStringInContext:a3];

      if (v14)
      {
        goto LABEL_13;
      }

      if (![a3 objectForKey:@"NSUnderlyingException"])
      {
        v32 = MEMORY[0x1E695DF30];
        v33 = *MEMORY[0x1E695D940];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for ternary expression: %@", *(a1 + 16)];
        goto LABEL_62;
      }
    }

    else if (![a3 objectForKey:@"NSUnderlyingException"])
    {
      v32 = MEMORY[0x1E695DF30];
      v33 = *MEMORY[0x1E695D940];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for expression: %@", *(a1 + 16)];
      goto LABEL_62;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  if (([objc_opt_class() isSimpleKeypath:v10] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v10))
  {
    if ([v10 expressionType] == 13)
    {
      v40 = [@".@" mutableCopy];
      [v40 appendString:a2];
      v41 = [objc_opt_class() _newKeyPathExpressionForString:v40];

      v42 = [[NSSQLSubqueryExpressionIntermediate alloc] initWithExpression:v10 trailingKeypath:v41 inScope:*(a1 + 8)];
      v15 = [(NSSQLSubqueryExpressionIntermediate *)v42 generateSQLStringInContext:a3];

      if (v15)
      {
        goto LABEL_19;
      }

      if ([a3 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_18;
      }

      v32 = MEMORY[0x1E695DF30];
      v33 = *MEMORY[0x1E695D940];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for subquery: %@", *(a1 + 16)];
      goto LABEL_62;
    }

    if (v12 == 20)
    {
      goto LABEL_56;
    }

    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v45 = MEMORY[0x1E696AEC0];
    v46 = [*(a1 + 16) arguments];
    v19 = @"Unsupported argument to sum : %@";
    goto LABEL_65;
  }

  v28 = [objc_msgSend(objc_msgSend(v10 "arguments")];
  if ([v28 rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = [a1 governingEntityForKeypathExpression:v10];
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

      return [(NSSQLFunctionExpressionIntermediate *)a1 _generateUncorrelatedSubqueryStringWithSymbol:a2 forAttribute:v30 inContext:a3];
    }

    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Non-attribute property passed to sum: %@", *(a1 + 16)];
LABEL_16:
    v21 = v20;
    v22 = v16;
    v23 = v17;
LABEL_17:
    [a3 setObject:objc_msgSend(v22 forKey:{"exceptionWithName:reason:userInfo:", v23, v21, 0), @"NSUnderlyingException"}];
    goto LABEL_18;
  }

  v39 = *MEMORY[0x1E69E9840];

  return [(NSSQLFunctionExpressionIntermediate *)a1 _generateCorrelatedSubqueryStringWithSymbol:a2 forExpression:v10 inContext:a3];
}

- (void)_generateDistinctStringInContext:(id *)a1
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_14;
  }

  if ([a1 isIndexScoped])
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
LABEL_14:
      v15 = 0;
      goto LABEL_15;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), 'distinct' not allowed here", a1[2]];
    v7 = a1[2];
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

  if ([objc_msgSend(a1[2] "arguments")] != 1)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of arguments to distinct : %@", a1[2]];
    v9 = v16;
LABEL_12:
    v10 = v17;
    v8 = 0;
    goto LABEL_13;
  }

  v12 = [objc_msgSend(a1[2] "arguments")];
  if ([v12 expressionType] != 1 && (objc_msgSend(objc_opt_class(), "isSimpleKeypath:", v12) & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v12) & 1) == 0)
  {
    v20 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid argument to distinct : %@", v12];
LABEL_19:
    v11 = v21;
    v9 = v20;
    goto LABEL_12;
  }

  v13 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v12 allowToMany:1 inContext:a2];
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

- (uint64_t)_generateNowStringInContext:(id *)a1
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_8;
  }

  if ([a1 isIndexScoped])
  {
    if ([a2 objectForKey:@"NSUnderlyingException"])
    {
LABEL_8:
      v14 = *MEMORY[0x1E69E9840];
      return 0;
    }

    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported expression in index description (%@), 'now' not allowed here", a1[2]];
    v7 = a1[2];
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

  if ([objc_msgSend(a1[2] "arguments")])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of arguments to now function : %@", a1[2]];
    v9 = v12;
    v10 = v13;
    v8 = 0;
    goto LABEL_7;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v17 = *MEMORY[0x1E69E9840];

  return [(NSSQLIntermediate *)a1 _generateSQLForConstantValue:v16 inContext:a2];
}

- (void)_generateLengthStringInContext:(id *)a1
{
  if (!a1)
  {
    return 0;
  }

  if ([objc_msgSend(a1[2] "arguments")] != 1)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of arguments to length: function : %@", a1[2]];
    v11 = v8;
LABEL_13:
    [a2 setObject:objc_msgSend(v11 forKey:{"exceptionWithName:reason:userInfo:", v9, v10, 0), @"NSUnderlyingException"}];
    return 0;
  }

  v4 = [objc_msgSend(a1[2] "arguments")];
  if ([v4 expressionType] && (objc_msgSend(objc_opt_class(), "isSimpleKeypath:", v4) & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v4) & 1) == 0)
  {
    v12 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid argument to length: : %@", v4];
LABEL_12:
    v10 = v13;
    v11 = v12;
    goto LABEL_13;
  }

  v5 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v4 allowToMany:0 inContext:a2];
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

- (id)generateSQLStringInContext:(id)a3
{
  if ([a3 objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v6 = [(NSExpression *)self->super._expression selector];
  if (sel_max_ == v6)
  {
    v12 = @"max";
LABEL_33:

    return [(NSSQLFunctionExpressionIntermediate *)self generateType1SQLString:v12 inContext:a3];
  }

  if (sel_min_ == v6)
  {
    v12 = @"min";
    goto LABEL_33;
  }

  if (sel_uppercase_ == v6)
  {
    v13 = CFSTR("NSCoreDataToUpper(");
LABEL_38:

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa generateType2SQLString:v13 inContext:a3];
  }

  if (sel_lowercase_ == v6)
  {
    v13 = CFSTR("NSCoreDataToLower(");
    goto LABEL_38;
  }

  if (sel_onesComplement_ == v6)
  {
    v14 = CFSTR("(~");
LABEL_43:
    v15 = self;
    v16 = 0;
LABEL_44:

    return [(NSSQLFunctionExpressionIntermediate *)&v15->super.super.super.isa generateType3SQLString:v14 keypathOnly:v16 inContext:a3];
  }

  if (sel_abs_ == v6)
  {
    v14 = CFSTR("abs(");
    goto LABEL_43;
  }

  if (sel_noindex_ == v6)
  {
    v14 = CFSTR("+(");
    v15 = self;
    v16 = 1;
    goto LABEL_44;
  }

  if (sel_average_ == v6)
  {
    v17 = @"avg";
LABEL_50:

    return [(NSSQLFunctionExpressionIntermediate *)self _generateType4SQLForSymbol:v17 inContext:a3];
  }

  if (sel_sum_ == v6)
  {
    v17 = @"total";
    goto LABEL_50;
  }

  if (sel_count_ == v6)
  {

    return [(NSSQLFunctionExpressionIntermediate *)self _generateSQLForCountInContext:a3];
  }

  if (sel_add_to_ == v6)
  {
    v18 = @" + ";
LABEL_65:

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateMathStringWithSymbol:v18 inContext:a3];
  }

  if (sel_from_subtract_ == v6)
  {
    v18 = @" - ";
    goto LABEL_65;
  }

  if (sel_multiply_by_ == v6)
  {
    v18 = @" * ";
    goto LABEL_65;
  }

  if (sel_divide_by_ == v6)
  {
    v18 = @" / ";
    goto LABEL_65;
  }

  if (sel_modulus_by_ == v6)
  {
    v18 = @" % ";
    goto LABEL_65;
  }

  if (sel_bitwiseAnd_with_ == v6)
  {
    v18 = @" & ";
    goto LABEL_65;
  }

  if (sel_bitwiseOr_with_ == v6)
  {
    v18 = @" | ";
    goto LABEL_65;
  }

  if (sel_leftshift_by_ == v6)
  {
    v18 = @" << ";
    goto LABEL_65;
  }

  if (sel_rightshift_by_ == v6)
  {
    v18 = @" >> ";
    goto LABEL_65;
  }

  if (sel_distinct_ == v6)
  {

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateDistinctStringInContext:a3];
  }

  else if (sel_now == v6)
  {

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateNowStringInContext:a3];
  }

  else if (sel_length_ == v6)
  {

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateLengthStringInContext:a3];
  }

  else
  {
    if (sel_indexed_by_ == v6)
    {
      [(NSSQLFunctionExpressionIntermediate *)self _generateRtreeIndexStringInContext:a3];
      return 0;
    }

    if (sel_groupConcat_ != v6 && sel_groupConcat_separator_ != v6)
    {
      if (![a3 objectForKey:@"NSUnderlyingException"])
      {
        v7 = [(NSSQLIntermediate *)self isIndexScoped];
        v8 = MEMORY[0x1E695DF30];
        v9 = *MEMORY[0x1E695D940];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:self->super._expression forKey:@"Bad value"];
        if (v7)
        {
          v11 = @"Unsupported function type passed as index component (either not a valid function at all, or just not valid in this context).";
        }

        else
        {
          v11 = @"Unsupported function type passed to SQL store";
        }

        [a3 setObject:objc_msgSend(v8 forKey:{"exceptionWithName:reason:userInfo:", v9, v11, v10), @"NSUnderlyingException"}];
      }

      return 0;
    }

    return [(NSSQLFunctionExpressionIntermediate *)&self->super.super.super.isa _generateGroupConcatInContext:a3];
  }
}

@end