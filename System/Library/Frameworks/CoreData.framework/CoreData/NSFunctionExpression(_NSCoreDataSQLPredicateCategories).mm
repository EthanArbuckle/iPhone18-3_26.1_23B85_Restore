@interface NSFunctionExpression(_NSCoreDataSQLPredicateCategories)
- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories;
- (id)minimalFormInContext:()_NSCoreDataSQLPredicateCategories;
- (uint64_t)_mapKVCOperatorsToFunctionsInContext:()_NSCoreDataSQLPredicateCategories;
@end

@implementation NSFunctionExpression(_NSCoreDataSQLPredicateCategories)

- (id)minimalFormInContext:()_NSCoreDataSQLPredicateCategories
{
  selfCopy = self;
  selector = [self selector];
  if (selector != sel_valueForKey_ && selector != sel_valueForKeyPath_)
  {
    return selfCopy;
  }

  v7 = [objc_msgSend(selfCopy "operand")];
  expressionType = [v7 expressionType];
  if (expressionType == 1)
  {
    if (![objc_msgSend(selfCopy "arguments")])
    {
      return selfCopy;
    }

    goto LABEL_30;
  }

  if (expressionType == 3 || expressionType == 4 && (sel_valueForKey_ == [v7 selector] || sel_valueForKeyPath_ == objc_msgSend(v7, "selector")))
  {
    v9 = [objc_msgSend(v7 "arguments")];
    v10 = [objc_msgSend(selfCopy "arguments")];
    expressionType2 = [v9 expressionType];
    v12 = expressionType2;
    if (expressionType2 == 10 || !expressionType2 && ([objc_msgSend(v7 "operand")], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      expressionType3 = [v10 expressionType];
      if (expressionType3 == 10 || !expressionType3 && ([v10 constantValue], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (v12 == 10)
        {
          constantValue = [objc_msgSend(objc_msgSend(v7 "arguments")];
        }

        else
        {
          constantValue = [v9 constantValue];
        }

        v15 = constantValue;
        if ([v10 expressionType] == 10)
        {
          keyPath = [v10 keyPath];
        }

        else
        {
          keyPath = [v10 constantValue];
        }

        v17 = [objc_opt_class() _newKeyPathExpressionForString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", v15, keyPath)}];
        defaultInstance = [MEMORY[0x1E696AEA0] defaultInstance];
        if (defaultInstance == [v7 operand])
        {
          v22 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithOperand:objc_msgSend(v7 andKeyPath:{"operand"), v17}];
        }

        else
        {
          v19 = objc_alloc(objc_opt_class());
          expressionType4 = [v7 expressionType];
          operand = [v7 operand];
          v22 = [v19 initWithExpressionType:expressionType4 operand:operand selector:sel_valueForKeyPath_ argumentArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v17)}];
        }

        selfCopy = v22;

LABEL_30:
        v23 = [selfCopy _mapKVCOperatorsToFunctionsInContext:a3];
        if (v23)
        {
          return v23;
        }
      }
    }
  }

  return selfCopy;
}

- (uint64_t)_mapKVCOperatorsToFunctionsInContext:()_NSCoreDataSQLPredicateCategories
{
  v5 = [objc_msgSend(self "arguments")];
  expressionType = [v5 expressionType];
  if (expressionType)
  {
    if (expressionType != 10)
    {
      return 0;
    }

    keyPath = [v5 keyPath];
  }

  else
  {
    keyPath = [v5 constantValue];
  }

  v8 = keyPath;
  location = CFStringFind(keyPath, @"@", 0).location;
  if (location == -1)
  {
    return 0;
  }

  v10 = location;
  if (CFStringFind(v8, @"@", 4uLL).location != location)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Too many KVC aggregates in keypath: %@", v8];
LABEL_15:
    [a3 setValue:objc_msgSend(v15 forKey:{"exceptionWithName:reason:userInfo:", v16, v17, 0), @"NSUnderlyingException"}];
    return 0;
  }

  if (CFStringGetLength(v8) <= v10 + 1)
  {
LABEL_14:
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Malformed keypath: %@", v8];
    goto LABEL_15;
  }

  if (CFStringGetCharacterAtIndex(v8, v10 + 1) != 99)
  {
    v20 = [(__CFString *)v8 componentsSeparatedByString:@"."];
    v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v22 = [v20 count];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = [v20 objectAtIndex:v24];
        if ([v27 characterAtIndex:0] == 64)
        {
          v26 = v27;
        }

        else
        {
          if (v25)
          {
            [v21 appendString:@"."];
          }

          [v21 appendString:v27];
          v25 = 1;
        }

        ++v24;
      }

      while (v23 != v24);
    }

    else
    {
      v26 = 0;
    }

    if ([objc_msgSend(a3 objectForKey:{@"supportedKVCAggregates", "containsObject:", v26}])
    {
      if ([objc_msgSend(self "operand")] == 1 && objc_msgSend(v21, "length"))
      {
        v28 = [v26 substringFromIndex:1];
        if ([@"avg" isEqual:v28])
        {
          v29 = @"average";
        }

        else
        {
          v29 = v28;
        }

        v30 = [(__CFString *)v29 mutableCopy];
        [v30 appendString:@":"];
        v31 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v21];
        v32 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v31, 0}];
        v18 = [MEMORY[0x1E696ABC8] expressionForFunction:v30 arguments:v32];
      }

      else
      {
        v18 = 0;
      }

      return v18;
    }

    [a3 setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported KVC aggregate in keypath: %@", v8), 0), @"NSUnderlyingException"}];

    return 0;
  }

  v11 = [objc_msgSend(self "operand")];
  if (v11 != 13)
  {
    if (v11 == 1)
    {
      if (v10)
      {
        v12 = [(__CFString *)v8 substringWithRange:0, v10 - 1];
        v13 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v12];
        v14 = MEMORY[0x1E695DEC8];
        goto LABEL_46;
      }

      goto LABEL_14;
    }

    return 0;
  }

  v33 = [-[__CFString componentsSeparatedByString:](v8 componentsSeparatedByString:{@".", "mutableCopy"}];
  [v33 removeLastObject];
  if ([v33 count] && objc_msgSend(objc_msgSend(v33, "objectAtIndex:", 0), "isEqualToString:", &stru_1EF3F1768))
  {
    [v33 removeObjectAtIndex:0];
  }

  if (![v33 count])
  {
    v40 = objc_alloc(MEMORY[0x1E695DEC8]);
    operand = [self operand];
    v38 = v40;
    goto LABEL_48;
  }

  v34 = [v33 componentsJoinedByString:@"."];
  v35 = MEMORY[0x1E696ABC8];
  operand2 = [self operand];
  if ([v33 count] == 1)
  {
    v37 = @"valueForKey:";
  }

  else
  {
    v37 = @"valueForKeyPath:";
  }

  v13 = [v35 expressionForFunction:operand2 selectorName:v37 arguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", v34))}];
  v14 = MEMORY[0x1E695DEC8];
LABEL_46:
  v38 = [v14 alloc];
  operand = v13;
LABEL_48:
  v41 = [v38 initWithObject:operand];
  v42 = [MEMORY[0x1E696ABC8] expressionForFunction:@"count:" arguments:v41];

  return v42;
}

- (id)_keypathsForDerivedPropertyValidation:()_NSCoreDataSQLPredicateCategories
{
  v63[1] = *MEMORY[0x1E69E9840];
  v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  expressionType = [self expressionType];
  v58 = 0;
  v44 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (expressionType == 3)
  {
    keyPath = [self keyPath];
    v7 = [keyPath rangeOfString:@"@"];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [keyPath rangeOfString:@"." options:4];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL && v7 < v17)
      {
        v18 = MEMORY[0x1E696ABC0];
        v62 = @"expression";
        v63[0] = self;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
        v8 = 0;
        v58 = [v18 errorWithDomain:*MEMORY[0x1E696A250] code:134097 userInfo:v19];
        goto LABEL_22;
      }
    }

    [v45 addObject:{objc_msgSend(self, "keyPath")}];
    goto LABEL_4;
  }

  v9 = [objc_msgSend(self "operand")];
  if (!v9)
  {
    v8 = 0;
    goto LABEL_22;
  }

  v10 = [MEMORY[0x1E695DFA8] set];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  arguments = [self arguments];
  v12 = [arguments countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v12)
  {
    v13 = *v55;
LABEL_8:
    v14 = 0;
    while (1)
    {
      if (*v55 != v13)
      {
        objc_enumerationMutation(arguments);
      }

      v15 = [*(*(&v54 + 1) + 8 * v14) _keypathsForDerivedPropertyValidation:&v58];
      if (!v15)
      {
        goto LABEL_17;
      }

      [v10 addObjectsFromArray:{objc_msgSend(v15, "allObjects")}];
      if (v12 == ++v14)
      {
        v12 = [arguments countByEnumeratingWithState:&v54 objects:v61 count:16];
        if (v12)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  selector = [self selector];
  if (sel_valueForKey_ == selector || sel_valueForKeyPath_ == selector)
  {
    if ([v9 count])
    {
      if ([v10 count])
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v26 = [v9 countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v26)
        {
          v39 = v9;
          v40 = v26;
          v41 = *v51;
          v42 = a3;
LABEL_33:
          v27 = 0;
          v28 = v39;
          v29 = v40;
          while (1)
          {
            if (*v51 != v41)
            {
              objc_enumerationMutation(v28);
            }

            v30 = *(*(&v50 + 1) + 8 * v27);
            v31 = objc_autoreleasePoolPush();
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v32 = [v10 countByEnumeratingWithState:&v46 objects:v59 count:16];
            v43 = v31;
            if (v32)
            {
              v33 = *v47;
              while (2)
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v47 != v33)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v35 = *(*(&v46 + 1) + 8 * i);
                  if ([v35 hasPrefix:@"$"])
                  {
                    v36 = 0;
                    goto LABEL_46;
                  }

                  [v45 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", v30, v35)}];
                }

                v32 = [v10 countByEnumeratingWithState:&v46 objects:v59 count:16];
                if (v32)
                {
                  continue;
                }

                break;
              }

              v36 = 1;
LABEL_46:
              v28 = v39;
              v29 = v40;
            }

            else
            {
              v36 = 1;
            }

            a3 = v42;
            objc_autoreleasePoolPop(v43);
            if (!v36)
            {
              goto LABEL_17;
            }

            if (++v27 == v29)
            {
              v8 = 1;
              v40 = [v28 countByEnumeratingWithState:&v50 objects:v60 count:16];
              if (v40)
              {
                goto LABEL_33;
              }

              goto LABEL_22;
            }
          }
        }

        goto LABEL_4;
      }

      allObjects = [v9 allObjects];
    }

    else
    {
      allObjects = [v10 allObjects];
    }

    [v45 addObjectsFromArray:allObjects];
    goto LABEL_4;
  }

  if ([objc_msgSend(self "operand")])
  {
LABEL_17:
    v8 = 0;
    goto LABEL_22;
  }

  v38 = [objc_msgSend(self "operand")];
  if (NSClassFromString(@"_NSPredicateUtilities") == v38)
  {
    [self selector];
    if (!object_getMethodImplementation())
    {
      goto LABEL_17;
    }

    [v45 addObjectsFromArray:{objc_msgSend(v10, "allObjects")}];
  }

  else if (sel_canonical_ != [self selector])
  {
    goto LABEL_17;
  }

LABEL_4:
  v8 = 1;
LABEL_22:
  v20 = v58;
  if (a3 && v58)
  {
    *a3 = v58;
  }

  [v44 drain];
  v21 = 0;
  v22 = v58;
  v23 = v45;
  if (v8)
  {
    result = v45;
  }

  else
  {
    result = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

@end