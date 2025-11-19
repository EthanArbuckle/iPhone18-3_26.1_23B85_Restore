@interface NSSQLGenerator
+ (void)initialize;
- (NSSQLGenerator)initWithPersistentStore:(id)a3;
- (id)initializeContextForRequest:(int)a3 ignoreInheritance:(uint64_t)a4 nestingLevel:;
- (uint64_t)newSQLStatementForRequest:(int)a3 ignoreInheritance:(int)a4 countOnly:(uint64_t)a5 nestingLevel:(int)a6 nestIsWhereScoped:(uint64_t)a7 requestContext:;
- (void)generateGroupByIntermediatesForProperties:(uint64_t)a1 inContext:(void *)a2;
- (void)generateHavingIntermediateForPredicate:(uint64_t)a1 inContext:(void *)a2;
- (void)generateIntermediateForLimit:(uint64_t)a1 inContext:(void *)a2;
- (void)generateIntermediateForOffset:(uint64_t)a1 inContext:(void *)a2;
- (void)generateOrderIntermediateInContext:(void *)a1;
- (void)generateSelectIntermediateInContext:(void *)a1;
- (void)generateWhereIntermediatesInContext:(void *)a1;
- (void)newSQLStatmentForBinaryIndex:(uint64_t)a3 inStore:;
@end

@implementation NSSQLGenerator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    objc_opt_self();
    objc_opt_self();
    supportedFunctions = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"@min", @"@max", @"@sum", @"@avg", 0}];
  }
}

- (NSSQLGenerator)initWithPersistentStore:(id)a3
{
  v5.receiver = self;
  v5.super_class = NSSQLGenerator;
  result = [(NSSQLGenerator *)&v5 init];
  if (result)
  {
    result->_persistentStore = a3;
  }

  return result;
}

- (void)generateSelectIntermediateInContext:(void *)a1
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = [a1 objectForKey:@"outerFetch"];
  v3 = [a1 objectForKey:@"entity"];
  v4 = [a1 objectForKey:@"storeRequest"];
  v5 = [v4 resultType];
  v6 = [objc_msgSend(a1 objectForKey:{@"nestingLevel", "unsignedIntValue"}];
  if ([objc_msgSend(v4 "propertiesToFetch")])
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 2;
  }

  v8 = v7;
  if (!v6)
  {
    if (v8)
    {
      v18 = [objc_msgSend(v4 "propertiesToFetch")];
      if ([v18 count])
      {
        if (!v5)
        {
          v49 = v3;
          v50 = v2;
          v19 = [v18 count];
          if (v19 - 1 >= 0)
          {
            v20 = v19;
            do
            {
              if ([objc_msgSend(v18 objectAtIndex:{--v20), "isTransient"}])
              {
                [v18 removeObjectAtIndex:v20];
              }
            }

            while (v20 > 0);
          }

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v21 = [v18 countByEnumeratingWithState:&v51 objects:v59 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v52;
            while (2)
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v52 != v23)
                {
                  objc_enumerationMutation(v18);
                }

                v25 = *(*(&v51 + 1) + 8 * i);
                v26 = [v25 _propertyType];
                if (v26 > 7 || ((1 << v26) & 0xD4) == 0)
                {
                  [a1 setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Bad fetch request (NSManagedObjectResultType not compatible with contents of propertiesToFetch - property %@)", objc_msgSend(v25, "name")), 0), @"NSUnderlyingException"}];

                  goto LABEL_91;
                }
              }

              v22 = [v18 countByEnumeratingWithState:&v51 objects:v59 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v28 = objc_alloc_init(NSExpressionDescription);
          [(NSPropertyDescription *)v28 setName:@"ZZ_PK"];
          -[NSExpressionDescription setExpression:](v28, "setExpression:", [MEMORY[0x1E696ABC8] expressionForEvaluatedObject]);
          [(NSExpressionDescription *)v28 setExpressionResultType:2000];
          [v18 insertObject:v28 atIndex:0];

          v3 = v49;
          v2 = v50;
        }

LABEL_72:
        v17 = -[NSSQLSelectIntermediate initWithEntity:alias:fetchColumns:inScope:]([NSSQLReadOnlySelectIntermediate alloc], "initWithEntity:alias:fetchColumns:inScope:", v3, [v2 governingAlias], v18, v2);

        if (![v4 returnsDistinctResults] || v5 != 2)
        {
          goto LABEL_90;
        }

        goto LABEL_74;
      }

      v18 = [objc_msgSend(objc_msgSend(objc_msgSend(v4 "entity")];
      [v18 sortUsingFunction:_comparePropertiesByName context:0];
      v41 = [v18 count];
      if (v41 - 1 < 0)
      {
        goto LABEL_72;
      }

      v42 = v41;
      while (1)
      {
        v43 = [v18 objectAtIndex:--v42];
        if (([v43 isTransient] & 1) == 0)
        {
          if (!v43 || [v43 attributeType] != 2100)
          {
            goto LABEL_71;
          }

          [v18 addObjectsFromArray:{objc_msgSend(v43, "_flattenElements:", objc_msgSend(v43, "elements"))}];
        }

        [v18 removeObjectAtIndex:v42];
LABEL_71:
        if (v42 <= 0)
        {
          goto LABEL_72;
        }
      }
    }

    if (([v4 includesPropertyValues] & 1) == 0)
    {
      v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
      v39 = v38;
      if (v3)
      {
        [v38 insertObject:v3[17] atIndex:0];
        v40 = v3[16];
      }

      else
      {
        [v38 insertObject:0 atIndex:0];
        v40 = 0;
      }

      [v39 insertObject:v40 atIndex:1];
      if (!v3)
      {
        goto LABEL_86;
      }

      goto LABEL_83;
    }

    if ([v4 includesSubentities])
    {
      if (v3)
      {
        v32 = v3[19];
        if (v32 && [v32 count])
        {
          v33 = v3;
          while (v33)
          {
            v34 = v33;
            v33 = v33[21];
            if (v33 == v34)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_93;
        }

LABEL_78:
        v39 = v3[10];
        if (v39)
        {
LABEL_83:
          if (v3[20] || (v45 = v3[19]) != 0 && [v45 count])
          {
LABEL_89:
            v17 = -[NSSQLSelectIntermediate initWithEntity:alias:fetchColumns:inScope:]([NSSQLSelectIntermediate alloc], "initWithEntity:alias:fetchColumns:inScope:", v3, [v2 governingAlias], v39, v2);
            goto LABEL_90;
          }

LABEL_86:
          v39 = [v39 mutableCopy];
          v46 = [[NSSQLColumn alloc] initWithColumnName:@"0" sqlType:1];
          v47 = v46;
          if (v46)
          {
            *&v46->super._flags &= ~1u;
          }

          [v39 replaceObjectAtIndex:0 withObject:v46];

          goto LABEL_89;
        }

        v44 = v3;
        while (v44)
        {
          v34 = v44;
          v44 = v44[21];
          if (v44 == v34)
          {
LABEL_82:
            v39 = v34[9];
            goto LABEL_83;
          }
        }

LABEL_93:
        v39 = 0;
        goto LABEL_83;
      }
    }

    else if (v3)
    {
      goto LABEL_78;
    }

    v39 = 0;
    goto LABEL_86;
  }

  if (!v8)
  {
    if (v3)
    {
      v29 = v3[16];
    }

    else
    {
      v29 = 0;
    }

    v30 = -[NSSQLSelectIntermediate initWithEntity:alias:fetchColumns:inScope:]([NSSQLSelectIntermediate alloc], "initWithEntity:alias:fetchColumns:inScope:", v3, [v2 governingAlias], objc_msgSend(MEMORY[0x1E695DF70], "arrayWithObject:", v29), v2);
    v17 = v30;
    if (v5 != 4 || !v30)
    {
      goto LABEL_90;
    }

    v31 = &OBJC_IVAR___NSSQLSelectIntermediate__isCount;
LABEL_76:
    *(&v17->super.super.super.isa + *v31) = 1;
    goto LABEL_90;
  }

  v9 = [objc_msgSend(v4 "propertiesToFetch")];
  if (v9 != 1)
  {
    v35 = @"Too many";
    if (!v9)
    {
      v35 = @"Too few";
    }

    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Bad NSFetchRequestExpression (%@ propertiesToFetch)", v35), 0}];
    v37 = *MEMORY[0x1E69E9840];

    [a1 setValue:v36 forKey:@"NSUnderlyingException"];
    return;
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = [v4 propertiesToFetch];
  v12 = [v11 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v56;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v56 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v55 + 1) + 8 * j);
        if (([v16 isTransient] & 1) == 0)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v13);
  }

  v17 = -[NSSQLSelectIntermediate initWithEntity:alias:fetchColumns:inScope:]([NSSQLReadOnlySelectIntermediate alloc], "initWithEntity:alias:fetchColumns:inScope:", v3, [v2 governingAlias], v10, v2);
  if ([v4 returnsDistinctResults])
  {
LABEL_74:
    if (!v17)
    {
      goto LABEL_90;
    }

    v31 = &OBJC_IVAR___NSSQLSelectIntermediate__useDistinct;
    goto LABEL_76;
  }

LABEL_90:
  [(NSSQLFetchIntermediate *)v2 setSelectIntermediate:v17];

LABEL_91:
  v48 = *MEMORY[0x1E69E9840];
}

- (void)generateWhereIntermediatesInContext:(void *)a1
{
  v2 = [a1 objectForKey:@"outerFetch"];
  v3 = [a1 objectForKey:@"predicate"];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[NSSQLSimpleWhereIntermediate alloc] initWithPredicate:v4 inScope:v2];
    v9 = v5;
    v6 = v2;
LABEL_7:
    [(NSSQLStatementIntermediate *)v6 setWhereIntermediate:v5];

    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[NSSQLCompoundWhereIntermediate alloc] initWithPredicate:v4 inScope:v2 inContext:a1];
    if (!v7)
    {
      return;
    }

    v5 = v7;
    v6 = v2;
    v9 = v5;
    goto LABEL_7;
  }

  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Unknown predicate type for predicate: %@", v4), 0}];

  [a1 setObject:v8 forKey:@"NSUnderlyingException"];
}

- (void)generateOrderIntermediateInContext:(void *)a1
{
  v2 = [a1 objectForKey:@"storeRequest"];
  if ([v2 sortDescriptors])
  {
    v3 = [a1 objectForKey:@"outerFetch"];
    v4 = -[NSSQLOrderIntermediate initWithSortDescriptors:inScope:]([NSSQLOrderIntermediate alloc], "initWithSortDescriptors:inScope:", [v2 sortDescriptors], v3);
    [(NSSQLStatementIntermediate *)v3 setOrderIntermediate:v4];
  }
}

- (void)generateIntermediateForLimit:(uint64_t)a1 inContext:(void *)a2
{
  v3 = [a2 objectForKey:@"outerFetch"];
  v4 = [[NSSQLLimitIntermediate alloc] initWithLimit:a1 inScope:v3];
  [(NSSQLStatementIntermediate *)v3 setLimitIntermediate:v4];
}

- (void)generateIntermediateForOffset:(uint64_t)a1 inContext:(void *)a2
{
  v3 = [a2 objectForKey:@"outerFetch"];
  v4 = [[NSSQLOffsetIntermediate alloc] initWithOffset:a1 inScope:v3];
  [(NSSQLFetchIntermediate *)v3 setOffsetIntermediate:v4];
}

- (void)generateGroupByIntermediatesForProperties:(uint64_t)a1 inContext:(void *)a2
{
  v3 = [a2 objectForKey:@"outerFetch"];
  v4 = [[NSSQLGroupByIntermediate alloc] initWithProperties:a1 inScope:v3];
  [(NSSQLFetchIntermediate *)v3 setGroupByIntermediate:v4];
}

- (void)generateHavingIntermediateForPredicate:(uint64_t)a1 inContext:(void *)a2
{
  v4 = [a2 objectForKey:@"outerFetch"];
  v5 = [[NSSQLHavingIntermediate alloc] initWithPredicate:a1 inScope:v4 inContext:a2];
  [(NSSQLFetchIntermediate *)v4 setHavingIntermediate:v5];
}

- (id)initializeContextForRequest:(int)a3 ignoreInheritance:(uint64_t)a4 nestingLevel:
{
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 setObject:a2 forKey:@"storeRequest"];
  [v9 setObject:*(a1 + 8) forKey:@"persistentStore"];
  v10 = _sqlCoreLookupSQLEntityForEntityDescription(*(a1 + 8), [a2 entity]);
  if (v10)
  {
    [v9 setObject:v10 forKey:@"entity"];
  }

  [v9 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", a4), @"nestingLevel"}];
  [v9 setObject:supportedFunctions forKey:@"supportedKVCAggregates"];
  v11 = [[NSSQLAliasGenerator alloc] initWithNestingLevel:a4];
  [v9 setObject:v11 forKey:@"aliasGenerator"];

  if (a3)
  {
    v12 = [a2 predicate];
  }

  else
  {
    v13 = [v9 objectForKey:@"storeRequest"];
    v14 = [v13 predicate];
    v15 = [v9 objectForKey:@"entity"];
    v16 = v15;
    v18 = v15 && (v17 = *(v15 + 152)) != 0 && [v17 count] != 0;
    if ([objc_msgSend(v9 objectForKey:{@"ignoreInheritance", "BOOLValue"}])
    {
      v19 = 0;
    }

    else
    {
      v19 = [v13 includesSubentities];
    }

    if (!v16 || *(v16 + 160) || ((v19 | !v18) & 1) == 0)
    {
      v20 = v18 & v19;
      v21 = [objc_alloc(MEMORY[0x1E696ACC0]) initWithObject:@"_ent"];
      v22 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithKeyPath:v21];

      v23 = objc_alloc(MEMORY[0x1E696AD98]);
      if (v20 == 1)
      {
        if (v16)
        {
          v24 = *(v16 + 184);
        }

        else
        {
          v24 = 0;
        }

        v25 = [v23 initWithUnsignedInt:v24];
        v26 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v25];

        v27 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v22 rightExpression:v26 modifier:0 type:3 options:0];
        v28 = [objc_alloc(MEMORY[0x1E696ACC0]) initWithObject:@"_ent"];
        v29 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithKeyPath:v28];

        v30 = objc_alloc(MEMORY[0x1E696AD98]);
        if (v16)
        {
          v31 = *(v16 + 188);
        }

        else
        {
          v31 = 0;
        }

        v32 = [v30 initWithUnsignedInt:v31];
        v33 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v32];

        v34 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v29 rightExpression:v33 modifier:0 type:1 options:0];
        v35 = objc_alloc(MEMORY[0x1E695DEC8]);
        if (v14)
        {
          v36 = [v35 initWithObjects:{v14, v27, v34, 0}];
        }

        else
        {
          v36 = [v35 initWithObjects:{v27, v34, 0, v52}];
        }

        v43 = v36;
        v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v36];

        v44 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v27, v34, 0}];
        v40 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v44];
      }

      else
      {
        if (v16)
        {
          v37 = *(v16 + 184);
        }

        else
        {
          v37 = 0;
        }

        v38 = [v23 initWithUnsignedInt:v37];
        v39 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v38];

        v40 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:v22 rightExpression:v39 modifier:0 type:4 options:0];
        v41 = objc_alloc(MEMORY[0x1E695DEC8]);
        if (v14)
        {
          v42 = [v41 initWithObjects:{v14, v40, 0}];
        }

        else
        {
          v42 = [v41 initWithObjects:{v40, 0, v51}];
        }

        v44 = v42;
        v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v42];
      }

      [v9 setObject:v40 forKey:@"restrictingEntityPredicate"];
    }

    v12 = [v14 minimalFormInContext:v9];
  }

  v45 = v12;
  if (![v9 objectForKey:@"NSUnderlyingException"] && (objc_msgSend(objc_msgSend(MEMORY[0x1E696AF08], "defaultInstance"), "isEqual:", v45) & 1) == 0 && v45)
  {
    v46 = objc_autoreleasePoolPush();
    v47 = objc_alloc_init(NSSQLPredicateAnalyser);
    [v9 setObject:v47 forKey:@"informationGatherer"];
    [v45 acceptVisitor:v47 flags:1];
    [v9 setObject:v45 forKey:@"predicate"];

    objc_autoreleasePoolPop(v46);
  }

  if (![v9 objectForKey:@"NSUnderlyingException"])
  {
    v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v9 setObject:v48 forKey:@"bindVars"];

    v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v9 setObject:v49 forKey:@"selectBindVars"];
  }

  objc_autoreleasePoolPop(v8);
  return v9;
}

- (uint64_t)newSQLStatementForRequest:(int)a3 ignoreInheritance:(int)a4 countOnly:(uint64_t)a5 nestingLevel:(int)a6 nestIsWhereScoped:(uint64_t)a7 requestContext:
{
  v148 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v27 = 0;
    goto LABEL_145;
  }

  v14 = [a2 requestType];
  v15 = objc_autoreleasePoolPush();
  if (v14 != 1)
  {
    v17 = [(NSSQLGenerator *)a1 initializeContextForRequest:a2 ignoreInheritance:0 nestingLevel:0];
    goto LABEL_19;
  }

  v16 = [(NSSQLGenerator *)a1 initializeContextForRequest:a2 ignoreInheritance:a3 nestingLevel:a5];
  v17 = v16;
  if (a6)
  {
    [v16 setValue:MEMORY[0x1E695E118] forKey:@"nestedWhereSelect"];
  }

  v18 = [objc_msgSend(a2 "havingPredicate")];
  if (![v17 objectForKey:@"NSUnderlyingException"] && (objc_msgSend(objc_msgSend(MEMORY[0x1E696AF08], "defaultInstance"), "isEqual:", v18) & 1) == 0 && v18)
  {
    v19 = objc_alloc_init(NSSQLPredicateAnalyser);
    [v17 setObject:v19 forKey:@"havingPredicateAnalyser"];

    [v18 acceptVisitor:v19 flags:1];
    [v17 setObject:v18 forKey:@"havingPredicate"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a7 && (v20 = *(a7 + 216)) != 0)
    {
      [v17 setObject:v20 forKey:@"substitutionVariables"];
      v21 = MEMORY[0x1E695E118];
      v22 = @"duringPrefetching";
    }

    else
    {
      if (![a2 substitutionVariables])
      {
        goto LABEL_17;
      }

      v21 = [a2 substitutionVariables];
      v22 = @"substitutionVariables";
    }

    [v17 setObject:v21 forKey:v22];
LABEL_17:
    if ([v17 objectForKey:@"substitutionVariables"])
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v17 setObject:v23 forKey:@"subOrder"];

      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v17 setObject:v24 forKey:@"columnSubOrder"];
    }
  }

LABEL_19:
  v25 = [v17 objectForKey:@"NSUnderlyingException"];
  if ([v17 objectForKey:@"NSUnderlyingException"])
  {
    v113 = v25;

    objc_exception_throw(v25);
  }

  v26 = -[NSSQLiteAdapter newStatementWithEntity:]([*(a1 + 8) adapter], objc_msgSend(v17, "objectForKey:", @"entity"));
  if (![objc_msgSend(MEMORY[0x1E696ABE8] "defaultInstance")])
  {
    v124 = v26;
    if (v14 == 8 || v14 == 1)
    {
      v31 = [v17 objectForKey:@"storeRequest"];
      v32 = [v17 objectForKey:@"informationGatherer"];
      v33 = [v17 objectForKey:@"havingPredicateAnalyser"];
      if (v32)
      {
        v34 = *(v32 + 24);
      }

      else
      {
        v34 = 0;
      }

      v27 = v124;
      if ([v34 count] || (!v33 ? (v35 = 0) : (v35 = *(v33 + 24)), objc_msgSend(v35, "count")))
      {
        if (v32)
        {
          v36 = *(v32 + 24);
        }

        else
        {
          v36 = 0;
        }

        v37 = [v36 count];
        v38 = MEMORY[0x1E695DF30];
        v39 = *MEMORY[0x1E695D940];
        v40 = MEMORY[0x1E696AEC0];
        if (v37)
        {
          v41 = [objc_msgSend(v17 objectForKey:{@"storeRequest", "predicate"}];
        }

        else
        {
          v41 = [v17 objectForKey:@"havingPredicate"];
        }

        [v17 setObject:objc_msgSend(v38 forKey:{"exceptionWithName:reason:userInfo:", v39, objc_msgSend(v40, "stringWithFormat:", @"Unsupported predicate %@", v41), 0), @"NSUnderlyingException"}];
        goto LABEL_114;
      }

      if (a4 && ![objc_msgSend(v31 "propertiesToFetch")])
      {
        v76 = off_1E6EC0B88;
      }

      else
      {
        v76 = off_1E6EC0B90;
      }

      v77 = [objc_alloc(*v76) initWithEntity:objc_msgSend(v17 alias:"objectForKey:" inScope:{@"entity", objc_msgSend(objc_msgSend(v17, "objectForKey:", @"aliasGenerator", "generateTableAlias"), 0}];
      [v17 setObject:v77 forKey:@"outerFetch"];

      [NSSQLGenerator generateWhereIntermediatesInContext:v17];
      if ([v17 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_113;
      }

      v78 = v77;
      v79 = [v31 propertiesToGroupBy];
      v80 = [v17 objectForKey:@"havingPredicate"];
      v81 = v80;
      if (!v79 && v80)
      {
        v82 = MEMORY[0x1E695DF30];
        v83 = *MEMORY[0x1E695D940];
        v84 = @"Invalid fetch request: HAVING with no GROUP BY";
LABEL_112:
        [v17 setObject:objc_msgSend(v82 forKey:{"exceptionWithName:reason:userInfo:", v83, v84, 0), @"NSUnderlyingException"}];
        goto LABEL_113;
      }

      if (v79)
      {
        if ([v31 resultType] != 2)
        {
          v82 = MEMORY[0x1E695DF30];
          v83 = *MEMORY[0x1E695D940];
          v84 = @"Invalid fetch request: GROUP BY requires NSDictionaryResultType";
          goto LABEL_112;
        }

        [NSSQLGenerator generateGroupByIntermediatesForProperties:v79 inContext:v17];
        if (!v78)
        {
          goto LABEL_113;
        }

        if (!v78[1].super.super.super.isa)
        {
          goto LABEL_113;
        }

        if (v81)
        {
          [NSSQLGenerator generateHavingIntermediateForPredicate:v81 inContext:v17];
          if (!v78[1].super.super._scope || [v17 objectForKey:@"NSUnderlyingException"])
          {
            goto LABEL_113;
          }
        }
      }

      [NSSQLGenerator generateSelectIntermediateInContext:v17];
      if (![(NSSQLFetchDictionaryCountIntermediate *)v78 selectIntermediate])
      {
LABEL_113:
        [v17 removeObjectForKey:@"outerFetch"];
LABEL_114:
        v43 = 0;
        goto LABEL_115;
      }

      [NSSQLGenerator generateOrderIntermediateInContext:v17];
      v85 = [v17 valueForKey:@"substitutionVariables"];
      if ([v31 fetchLimit] || objc_msgSend(v85, "valueForKey:", @"FETCH_REQUEST_LIMIT_SUBSTITUTION"))
      {
        -[NSSQLGenerator generateIntermediateForLimit:inContext:]([v31 fetchLimit], v17);
      }

      if ([v31 fetchOffset] || objc_msgSend(v85, "valueForKey:", @"FETCH_REQUEST_OFFSET_SUBSTITUTION"))
      {
        if (!v78 || !v78->super._limitClause)
        {
          [NSSQLGenerator generateIntermediateForLimit:v17 inContext:?];
        }

        -[NSSQLGenerator generateIntermediateForOffset:inContext:]([v31 fetchOffset], v17);
      }

      if (a4)
      {
        v43 = v78;
        if ([objc_msgSend(v31 "propertiesToFetch")])
        {
          if (v78)
          {
            LOBYTE(v78[1].super._correlationToken) = 1;
          }

          v43 = [[NSSQLFetchDictionaryCountIntermediate alloc] initWithFetchIntermediate:v78 inScope:0];
        }
      }

      else
      {
        v43 = v78;
      }
    }

    else
    {
      v42 = [v17 objectForKey:@"entity"];
      if ([v17 objectForKey:@"outerFetch"])
      {
        [v17 setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported nested update inside of %@", objc_msgSend(v17, "objectForKey:", @"outerFetch", 0), @"NSUnderlyingException"}];
        v43 = 0;
        v27 = v124;
        goto LABEL_115;
      }

      v44 = -[NSSQLUpdateIntermediate initWithEntity:alias:inScope:]([NSSQLUpdateIntermediate alloc], "initWithEntity:alias:inScope:", v42, [objc_msgSend(v17 objectForKey:{@"aliasGenerator", "generateTableAlias"}], 0);
      [v17 setObject:v44 forKey:@"outerFetch"];

      [NSSQLGenerator generateWhereIntermediatesInContext:v17];
      v27 = v26;
      if ([v17 objectForKey:@"NSUnderlyingException"])
      {
        goto LABEL_113;
      }

      v118 = v44;
      v45 = [v17 objectForKey:@"storeRequest"];
      v117 = [v17 objectForKey:@"outerFetch"];
      v46 = [v45 propertiesToUpdate];
      keyCallBacks.version = *MEMORY[0x1E695E9D8];
      keyCallBacks.retain = 0;
      *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
      v47 = *(MEMORY[0x1E695E9D8] + 40);
      keyCallBacks.release = 0;
      keyCallBacks.hash = v47;
      v48 = *MEMORY[0x1E695E9E8];
      *&valueCallBacks.retain = *(MEMORY[0x1E695E9E8] + 8);
      v49 = *(MEMORY[0x1E695E9E8] + 24);
      valueCallBacks.version = v48;
      valueCallBacks.copyDescription = v49;
      valueCallBacks.equal = 0;
      v50 = *MEMORY[0x1E695E480];
      theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, &valueCallBacks);
      v51 = CFDictionaryCreateMutable(v50, 0, &keyCallBacks, &valueCallBacks);
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v52 = [v46 countByEnumeratingWithState:&v139 objects:v147 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v140;
        do
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v140 != v54)
            {
              objc_enumerationMutation(v46);
            }

            CFDictionarySetValue(v51, *(*(&v139 + 1) + 8 * i), [v46 objectForKey:*(*(&v139 + 1) + 8 * i)]);
          }

          v53 = [v46 countByEnumeratingWithState:&v139 objects:v147 count:16];
        }

        while (v53);
      }

      v119 = v17;
      v120 = v15;
      if (CFDictionaryGetCount(v51) >= 1)
      {
        v56 = 0x1E696A000uLL;
        do
        {
          context = objc_autoreleasePoolPush();
          v57 = [_PFRoutines anyObjectFromCollection:v51];
          Value = CFDictionaryGetValue(v51, v57);
          if ([v57 attributeType] == 2100)
          {
            v59 = [Value constantValue];
            v135 = 0u;
            v136 = 0u;
            v137 = 0u;
            v138 = 0u;
            v128 = [v59 countByEnumeratingWithState:&v135 objects:v146 count:16];
            if (v128)
            {
              v60 = 0;
              v126 = v57;
              v127 = *v136;
              v125 = v59;
              do
              {
                for (j = 0; j != v128; ++j)
                {
                  v130 = v60;
                  if (*v136 != v127)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v62 = *(*(&v135 + 1) + 8 * j);
                  v63 = objc_autoreleasePoolPush();
                  v64 = [v59 objectForKey:v62];
                  v131 = 0u;
                  v132 = 0u;
                  v133 = 0u;
                  v134 = 0u;
                  v65 = [v57 elements];
                  v66 = [v65 countByEnumeratingWithState:&v131 objects:v145 count:16];
                  if (v66)
                  {
                    v67 = v66;
                    v129 = v63;
                    v68 = v56;
                    v69 = v51;
                    v70 = *v132;
                    while (2)
                    {
                      for (k = 0; k != v67; ++k)
                      {
                        if (*v132 != v70)
                        {
                          objc_enumerationMutation(v65);
                        }

                        v72 = *(*(&v131 + 1) + 8 * k);
                        if ([objc_msgSend(v72 "name")])
                        {
                          v60 = v72;
                          v51 = v69;
                          v56 = v68;
                          v59 = v125;
                          v57 = v126;
                          goto LABEL_68;
                        }
                      }

                      v67 = [v65 countByEnumeratingWithState:&v131 objects:v145 count:16];
                      if (v67)
                      {
                        continue;
                      }

                      break;
                    }

                    v51 = v69;
                    v56 = v68;
                    v59 = v125;
                    v57 = v126;
                    v60 = v130;
LABEL_68:
                    v63 = v129;
                  }

                  else
                  {
                    v60 = v130;
                  }

                  v73 = *(v56 + 2880);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    CFDictionarySetValue(v51, v60, v64);
                  }

                  else
                  {
                    v74 = [objc_alloc(*(v56 + 2880)) initWithObject:v64];
                    CFDictionarySetValue(v51, v60, v74);
                  }

                  objc_autoreleasePoolPop(v63);
                }

                v128 = [v59 countByEnumeratingWithState:&v135 objects:v146 count:16];
              }

              while (v128);
            }
          }

          else
          {
            CFDictionarySetValue(theDict, v57, Value);
          }

          CFDictionaryRemoveValue(v51, v57);
          objc_autoreleasePoolPop(context);
        }

        while (CFDictionaryGetCount(v51) > 0);
      }

      CFRelease(v51);
      v75 = [[NSSQLUpdateColumnsIntermediate alloc] initWithPropertiesToUpdate:theDict inScope:v117];
      [(NSSQLUpdateIntermediate *)v117 setUpdateColumnsIntermediate:v75];

      CFRelease(theDict);
      v17 = v119;
      v15 = v120;
      v27 = v124;
      v43 = v118;
      if (!v118 || !v118->_realFetch)
      {
        goto LABEL_113;
      }
    }

LABEL_115:
    v86 = [v17 objectForKey:@"NSUnderlyingException"];
    if (!v86)
    {
      v87 = [(NSSQLFetchDictionaryCountIntermediate *)v43 generateSQLStringInContext:v17];
      if (v87)
      {
        v88 = v87;
        if (v27)
        {
          v89 = *(v27 + 32);
          if (v89 != v87)
          {

            *(v27 + 32) = [v88 copy];
          }
        }

        -[NSSQLiteStatement setBindIntarrays:](v27, [v17 objectForKey:@"bindIntarrays"]);
        v90 = [v17 objectForKey:@"selectBindVars"];
        [v90 addObjectsFromArray:{objc_msgSend(v17, "objectForKey:", @"bindVars"}];
        v91 = [v90 count];
        if (v91)
        {
          v92 = v91;
          for (m = 0; m != v92; ++m)
          {
            [objc_msgSend(v90 objectAtIndex:{m), "setIndex:", m}];
          }
        }

        [(NSSQLiteAdapter *)v27 _useModel:v90];
        if ([v17 objectForKey:@"fabricatedSQLEntityForReadOnlyFetch"])
        {
          -[NSSQLiteStatement cacheFakeEntityForFetch:](v27, [v17 objectForKey:@"fabricatedSQLEntityForReadOnlyFetch"]);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_144;
        }

        v94 = objc_alloc_init(NSCachedFetchRequestInfo);
        v95 = [v17 valueForKey:@"columnSubOrder"];
        v96 = [v95 count];
        v97 = [v17 valueForKey:@"subOrder"];
        v99 = v97;
        if (v95 && v96 >= 2)
        {
          v121 = v15;
          v100 = [v97 count];
          if (v100)
          {
            v101 = v100;
            v102 = 0;
            v103 = v96 >> 1;
            do
            {
              v104 = objc_autoreleasePoolPush();
              v105 = [v99 objectAtIndex:v102 + 1];
              [v99 replaceObjectAtIndex:v102 + 1 withObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(v105, "integerValue") + v103)}];
              objc_autoreleasePoolPop(v104);
              v102 += 2;
            }

            while (v102 < v101);
          }

          [v95 addObjectsFromArray:v99];
          v15 = v121;
          v27 = v124;
        }

        else
        {
          v95 = v97;
        }

        if (v94)
        {
          objc_setProperty_nonatomic(v94, v98, v95, 8);
          v106 = [v17 valueForKey:@"bindIntarraysSubstitutionOrder"];
          objc_setProperty_nonatomic(v94, v107, v106, 16);
          if (!v27)
          {
            goto LABEL_139;
          }
        }

        else
        {
          [v17 valueForKey:@"bindIntarraysSubstitutionOrder"];
          if (!v27)
          {
LABEL_139:
            v109 = [objc_msgSend(v17 objectForKey:{@"sqlIneligibleForCaching", "BOOLValue"}];
            if (v27)
            {
              if (v109)
              {
                v110 = *(v27 + 56);
                if (v110)
                {
                  *(v110 + 24) = 1;
                }
              }
            }

            goto LABEL_144;
          }
        }

        objc_setProperty_nonatomic(v27, v108, v94, 56);
        goto LABEL_139;
      }

      v86 = [v17 objectForKey:@"NSUnderlyingException"];
      if (!v86)
      {
        if (!v27)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    v114 = v86;
    v115 = v86;

    v116 = v114;
    objc_exception_throw(v114);
  }

  v27 = v26;
  if (v26)
  {
LABEL_22:
    *(v27 + 40) = 1;
  }

LABEL_23:
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT 0 FROM %@ WHERE 0 = 1", objc_msgSend(objc_msgSend(v17, "objectForKey:", @"entity", "tableName")];
  if (v27)
  {
    v29 = v28;
    v30 = *(v27 + 32);
    if (v30 != v28)
    {

      *(v27 + 32) = [v29 copy];
    }
  }

LABEL_144:

  objc_autoreleasePoolPop(v15);
LABEL_145:
  v111 = *MEMORY[0x1E69E9840];
  return v27;
}

- (void)newSQLStatmentForBinaryIndex:(uint64_t)a3 inStore:
{
  v58 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v17 = 0;
    goto LABEL_57;
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:objc_msgSend(a2 forKey:{"sqlEntity"), @"entity"}];
  [v7 setObject:a3 forKey:@"persistentStore"];
  v8 = [objc_msgSend(objc_msgSend(a2 "indexDescription")];
  v9 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  if (v8 && v9 != v8)
  {
    [v7 setObject:v8 forKey:@"predicate"];
  }

  v10 = [v7 objectForKey:@"NSUnderlyingException"];
  if ([v7 objectForKey:@"NSUnderlyingException"])
  {
    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
    {
      goto LABEL_24;
    }

    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 138412290;
      *&buf[4] = a2;
      v13 = "CoreData: error: Unable to generate index for %@\n";
    }

    else
    {
      LogStream = _PFLogGetLogStream(2);
      if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 138412290;
      *&buf[4] = a2;
      v13 = "CoreData: warning: Unable to generate index for %@\n";
    }

    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
LABEL_24:
    if (_pflogging_catastrophic_mode)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    _NSCoreDataLog_console(v24, "Unable to generate index for %@", a2);
    objc_autoreleasePoolPop(v11);
    v25 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v26 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = [v10 reason];
          v28 = [v10 userInfo];
          *buf = 138412546;
          *&buf[4] = v27;
          *&buf[12] = 2112;
          *&buf[14] = v28;
          v29 = "CoreData: error: Reason: %@, %@\n";
LABEL_74:
          _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);
        }
      }

      else
      {
        v26 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v51 = [v10 reason];
          v52 = [v10 userInfo];
          *buf = 138412546;
          *&buf[4] = v51;
          *&buf[12] = 2112;
          *&buf[14] = v52;
          v29 = "CoreData: warning: Reason: %@, %@\n";
          goto LABEL_74;
        }
      }
    }

    v30 = _pflogging_catastrophic_mode;
    v31 = [v10 reason];
    v32 = [v10 userInfo];
    v33 = 1;
    if (!v30)
    {
      v33 = 2;
    }

    _NSCoreDataLog_console(v33, "Reason: %@, %@", v31, v32, *buf, *&buf[8], v58);
    goto LABEL_54;
  }

  if (![objc_msgSend(MEMORY[0x1E696ABE8] "defaultInstance")])
  {
    v17 = -[NSSQLiteAdapter newStatementWithEntity:]([*(a1 + 8) adapter], objc_msgSend(v7, "objectForKey:", @"entity"));
    v18 = [[NSSQLIndexIntermediate alloc] initForIndex:a2 withScope:0];
    v19 = [v18 generateSQLStringInContext:v7];

    v20 = [v7 objectForKey:@"NSUnderlyingException"];
    if (![v7 objectForKey:@"NSUnderlyingException"])
    {
      if (v17)
      {
        v34 = v17[4];
        if (v34 != v19)
        {

          v17[4] = [v19 copy];
        }
      }

      goto LABEL_56;
    }

    v21 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v22 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        *buf = 138412290;
        *&buf[4] = a2;
        v23 = "CoreData: error: Unable to generate index for %@\n";
      }

      else
      {
        v22 = _PFLogGetLogStream(2);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        *buf = 138412290;
        *&buf[4] = a2;
        v23 = "CoreData: warning: Unable to generate index for %@\n";
      }

      _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
    }

LABEL_59:
    if (_pflogging_catastrophic_mode)
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }

    _NSCoreDataLog_console(v41, "Unable to generate index for %@", a2);
    objc_autoreleasePoolPop(v21);
    v42 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
    {
      goto LABEL_68;
    }

    if (_pflogging_catastrophic_mode)
    {
      v43 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = [v20 reason];
        v45 = [v20 userInfo];
        *buf = 138412546;
        *&buf[4] = v44;
        *&buf[12] = 2112;
        *&buf[14] = v45;
        v46 = "CoreData: error: Reason: %@, %@\n";
LABEL_82:
        _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, v46, buf, 0x16u);
      }
    }

    else
    {
      v43 = _PFLogGetLogStream(2);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v53 = [v20 reason];
        v54 = [v20 userInfo];
        *buf = 138412546;
        *&buf[4] = v53;
        *&buf[12] = 2112;
        *&buf[14] = v54;
        v46 = "CoreData: warning: Reason: %@, %@\n";
        goto LABEL_82;
      }
    }

LABEL_68:
    v47 = _pflogging_catastrophic_mode;
    v48 = [v20 reason];
    v49 = [v20 userInfo];
    v50 = 1;
    if (!v47)
    {
      v50 = 2;
    }

    _NSCoreDataLog_console(v50, "Reason: %@, %@", v48, v49, *buf, *&buf[16], v58);
    objc_autoreleasePoolPop(v42);

    goto LABEL_55;
  }

  v14 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
  {
    goto LABEL_41;
  }

  if (_pflogging_catastrophic_mode)
  {
    v15 = _PFLogGetLogStream(1);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 138412290;
    *&buf[4] = a2;
    v16 = "CoreData: error: Unable to generate index for %@\n";
  }

  else
  {
    v15 = _PFLogGetLogStream(2);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    *buf = 138412290;
    *&buf[4] = a2;
    v16 = "CoreData: warning: Unable to generate index for %@\n";
  }

  _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
LABEL_41:
  if (_pflogging_catastrophic_mode)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  _NSCoreDataLog_console(v35, "Unable to generate index for %@", a2);
  objc_autoreleasePoolPop(v14);
  v25 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
  {
    goto LABEL_50;
  }

  if (_pflogging_catastrophic_mode)
  {
    v36 = _PFLogGetLogStream(1);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v37 = "CoreData: error: Reason: predicate always evaluates to false\n";
LABEL_78:
      _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, v37, buf, 2u);
    }
  }

  else
  {
    v36 = _PFLogGetLogStream(2);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v37 = "CoreData: warning: Reason: predicate always evaluates to false\n";
      goto LABEL_78;
    }
  }

LABEL_50:
  if (_pflogging_catastrophic_mode)
  {
    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  _NSCoreDataLog_console(v38, "Reason: predicate always evaluates to false", v55, v56, *buf, *&buf[8], v58);
LABEL_54:
  objc_autoreleasePoolPop(v25);
LABEL_55:
  v17 = 0;
LABEL_56:

  [v6 drain];
LABEL_57:
  v39 = *MEMORY[0x1E69E9840];
  return v17;
}

@end