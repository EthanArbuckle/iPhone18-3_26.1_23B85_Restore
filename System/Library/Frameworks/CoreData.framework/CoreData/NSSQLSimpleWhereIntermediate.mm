@interface NSSQLSimpleWhereIntermediate
- (NSSQLSimpleWhereIntermediate)initWithPredicate:(id)predicate inScope:(id)scope;
- (__CFString)_generateSQLContainmentStringInContext:(uint64_t)context;
- (__CFString)_sqlTokenForPredicateOperator:(unint64_t)operator inContext:(void *)context;
- (id)_generateSQLBeginsWithStringInContext:(uint64_t)context;
- (id)_generateSQLBoundByStringInContext:(uint64_t)context;
- (id)_generateSQLForConst:(void *)const inToMany:(void *)many inContext:;
- (id)_generateSQLType2InContext:(uint64_t)context;
- (id)_generateSQLType3InContext:(uint64_t)context;
- (id)generateSQLStringInContext:(id)context;
- (uint64_t)_upperBoundSearchStringForString:(__CFString *)string context:(void *)context;
- (void)_generateSQLBetweenStringInContext:(uint64_t)context;
- (void)_generateSQLForConst:(__CFString *)const inManyToMany:(uint64_t)many expression:(void *)expression inContext:;
- (void)_generateSQLForConst:(uint64_t)const inAttribute:(uint64_t)attribute expression:(uint64_t)expression inContext:(uint64_t)context;
- (void)_generateSQLForMatchingOperator:(void *)operator inContext:;
- (void)_generateSQLForString:(void *)string expressionPath:(int)path wildStart:(int)start wildEnd:(uint64_t)end allowToMany:(void *)many inContext:;
- (void)_generateSQLSubstringWildStart:(int)start wildEnd:(void *)end inContext:;
- (void)dealloc;
@end

@implementation NSSQLSimpleWhereIntermediate

- (void)dealloc
{
  self->_comparisonPredicateScopedItem = 0;

  v3.receiver = self;
  v3.super_class = NSSQLSimpleWhereIntermediate;
  [(NSSQLSimpleWhereIntermediate *)&v3 dealloc];
}

- (NSSQLSimpleWhereIntermediate)initWithPredicate:(id)predicate inScope:(id)scope
{
  v11.receiver = self;
  v11.super_class = NSSQLSimpleWhereIntermediate;
  v5 = [(NSSQLWhereIntermediate *)&v11 initWithPredicate:predicate inScope:scope];
  if (v5)
  {
    v5->_effectiveLeftExpression = [predicate leftExpression];
    v5->_effectiveRightExpression = [predicate rightExpression];
    if ([(NSExpression *)v5->_effectiveLeftExpression expressionType]== NSFunctionExpressionType && [[(NSExpression *)v5->_effectiveLeftExpression operand] expressionType]== NSConstantValueExpressionType && (sel_valueForKey_ == [(NSExpression *)v5->_effectiveLeftExpression selector]|| sel_valueForKeyPath_ == [(NSExpression *)v5->_effectiveLeftExpression selector]))
    {
      v6 = [(NSExpression *)v5->_effectiveLeftExpression expressionValueWithObject:0 context:0];
      v7 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v6];

      v5->_effectiveLeftExpression = v7;
    }

    if ([(NSExpression *)v5->_effectiveRightExpression expressionType]== NSFunctionExpressionType && [[(NSExpression *)v5->_effectiveRightExpression operand] expressionType]== NSConstantValueExpressionType && (sel_valueForKey_ == [(NSExpression *)v5->_effectiveRightExpression selector]|| sel_valueForKeyPath_ == [(NSExpression *)v5->_effectiveRightExpression selector]))
    {
      v8 = [(NSExpression *)v5->_effectiveRightExpression expressionValueWithObject:0 context:0];
      v9 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v8];

      v5->_effectiveRightExpression = v9;
    }
  }

  return v5;
}

- (__CFString)_sqlTokenForPredicateOperator:(unint64_t)operator inContext:(void *)context
{
  if (![context objectForKey:@"NSUnderlyingException"])
  {
    if (operator < 6)
    {
      return off_1E6EC4398[operator];
    }

    [context setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Unknown predicate operator type parameter", 0), @"NSUnderlyingException"}];
  }

  return 0;
}

- (id)_generateSQLType3InContext:(uint64_t)context
{
  v4 = *(context + 32);
  v5 = *(context + 40);
  comparisonPredicateModifier = [*(context + 16) comparisonPredicateModifier];
  options = [*(context + 16) options];
  predicateOperatorType = [*(context + 16) predicateOperatorType];
  if (!*(context + 24))
  {
    *(context + 24) = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if ([v4 expressionType] == 3 && (v10 = objc_msgSend(v5, "expressionType"), v9 = v4, !v10) || objc_msgSend(v5, "expressionType", v9) == 3 && (v11 = objc_msgSend(v4, "expressionType"), v9 = v5, !v11))
  {
    [*(context + 24) addObject:v9];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSSQLIntermediate *)context _generateSQLForExpression:v4 allowToMany:comparisonPredicateModifier == 2 inContext:a2];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = [(NSSQLIntermediate *)context _generateSQLForExpression:v5 allowToMany:comparisonPredicateModifier == 2 inContext:a2];
  if (!v15)
  {

    return 0;
  }

  v16 = v15;
  if ((options & 4) != 0)
  {
    predicateOperator = [*(context + 16) predicateOperator];
    v20 = v14;
    [v20 appendString:@" "];
    [v20 appendString:{objc_msgSend(predicateOperator, "symbol")}];
    [v20 appendString:@" "];
    [v20 appendString:v16];
  }

  else
  {
    v17 = (options << 63 >> 63) & 0x101;
    if ((options & 2) != 0)
    {
      v17 = (options << 63 >> 63) & 1 | 0x180;
    }

    if ((options & 8) != 0)
    {
      v18 = v17 | 0x120;
    }

    else
    {
      v18 = v17;
    }

    if (predicateOperatorType >= 6)
    {
      NSLog(@"You really shouldn't be here");
      v19 = 7;
    }

    else
    {
      v19 = dword_18592E7C8[predicateOperatorType];
    }

    v20 = objc_msgSend(@"NSCoreDataStringCompare("), "mutableCopy";
    [v20 appendString:v14];
    [v20 appendString:{@", "}];
    [v20 appendString:v16];
    [v20 appendFormat:@", %d, %lu, %d"], v19, v18, (options >> 3) & 1);
  }

  if (v12)
  {
    [*(context + 24) removeLastObject];
  }

  return v20;
}

- (id)_generateSQLType2InContext:(uint64_t)context
{
  if (!context)
  {
    return 0;
  }

  predicateOperatorType = [*(context + 16) predicateOperatorType];
  v5 = *(context + 32);
  if (predicateOperatorType == 5)
  {
    v6 = @"IS NOT NULL";
  }

  else
  {
    v6 = @"IS NULL";
  }

  v7 = *(context + 40);
  comparisonPredicateModifier = [*(context + 16) comparisonPredicateModifier];
  if ([v5 expressionType])
  {
    v9 = 0;
  }

  else
  {
    constantValue = [v5 constantValue];
    if (constantValue)
    {
      v9 = [MEMORY[0x1E695DFB0] null] == constantValue;
    }

    else
    {
      v9 = 1;
    }
  }

  if ([v7 expressionType])
  {
    v11 = 0;
  }

  else
  {
    constantValue2 = [v7 constantValue];
    if (!constantValue2)
    {
      if (v9)
      {
        v14 = v7;
      }

      else
      {
        v14 = v5;
      }

      goto LABEL_33;
    }

    v11 = [MEMORY[0x1E695DFB0] null] == constantValue2;
  }

  v13 = v9 || v11;
  if (v9)
  {
    v14 = v7;
  }

  else
  {
    v14 = v5;
  }

  if (v13)
  {
LABEL_33:
    v23 = [(NSSQLIntermediate *)context _generateSQLForExpression:v14 allowToMany:comparisonPredicateModifier == 2 inContext:a2];
    if (v23)
    {
      v24 = v23;
      [(NSSQLIntermediate *)context promoteJoinsInKeypathsForExpression:v14];
      v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v24];
      [v21 appendString:@" "];
      [v21 appendString:v6];

      return v21;
    }

    return 0;
  }

  if (![*(context + 16) options])
  {
    if (!*(context + 24))
    {
      *(context + 24) = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if ([v5 expressionType] == 3 && (v17 = objc_msgSend(v7, "expressionType"), v16 = v5, !v17) || objc_msgSend(v7, "expressionType", v16) == 3 && (v18 = objc_msgSend(v5, "expressionType"), v16 = v7, !v18))
    {
      [*(context + 24) addObject:v16];
      v19 = comparisonPredicateModifier == 2;
      v25 = [(NSSQLIntermediate *)context _generateSQLForExpression:v5 allowToMany:v19 inContext:a2];
      if (v25)
      {
        v21 = v25;
        v22 = 1;
LABEL_37:
        v26 = [(NSSQLIntermediate *)context _generateSQLForExpression:v7 allowToMany:v19 inContext:a2];
        if (v26)
        {
          v27 = v26;
          v28 = -[NSSQLSimpleWhereIntermediate _sqlTokenForPredicateOperator:inContext:]([*(context + 16) predicateOperatorType], a2);
          if (v28)
          {
            v29 = v28;
            [v21 appendString:@" "];
            [v21 appendString:v29];
            [v21 appendString:@" "];
            [v21 appendString:v27];

            if (v22)
            {
              [*(context + 24) removeLastObject];
            }

            return v21;
          }

          [a2 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to generate SQL for predicate (%@) (problem with operator)", *(context + 16)), 0), @"NSUnderlyingException"}];

          if (v22)
          {
            [*(context + 24) removeLastObject];
          }

          return 0;
        }

        if (v22)
        {
          [*(context + 24) removeLastObject];
        }

        if (![a2 objectForKey:@"LastKeyPathWasTransientProperty"] && !objc_msgSend(a2, "objectForKey:", @"NSUnderlyingException"))
        {
          v30 = MEMORY[0x1E695DF30];
          v31 = *MEMORY[0x1E695D940];
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for predicate (%@) (problem on RHS)", *(context + 16)];
LABEL_52:
          [a2 setObject:objc_msgSend(v30 forKey:{"exceptionWithName:reason:userInfo:", v31, v32, 0), @"NSUnderlyingException"}];
        }

        return 0;
      }

      [*(context + 24) removeLastObject];
    }

    else
    {
      v19 = comparisonPredicateModifier == 2;
      v20 = [(NSSQLIntermediate *)context _generateSQLForExpression:v5 allowToMany:v19 inContext:a2];
      if (v20)
      {
        v21 = v20;
        v22 = 0;
        goto LABEL_37;
      }
    }

    if ([a2 objectForKey:@"LastKeyPathWasTransientProperty"] || objc_msgSend(a2, "objectForKey:", @"NSUnderlyingException"))
    {
      return 0;
    }

    v30 = MEMORY[0x1E695DF30];
    v31 = *MEMORY[0x1E695D940];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for predicate (%@) (problem on LHS)", *(context + 16)];
    goto LABEL_52;
  }

  return [(NSSQLSimpleWhereIntermediate *)context _generateSQLType3InContext:a2];
}

- (void)_generateSQLForMatchingOperator:(void *)operator inContext:
{
  if (!self)
  {
    return 0;
  }

  v6 = *(self + 32);
  v7 = *(self + 40);
  if (([objc_opt_class() isSimpleKeypath:v6] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v6))
  {
    goto LABEL_12;
  }

  if (![v7 expressionType])
  {
    constantValue = [v7 constantValue];
    if (([constantValue isNSString] & 1) != 0 || !constantValue)
    {
      v16 = [objc_msgSend(*(self + 16) "predicateOperator")];
      v17 = [self _generateSQLForKeyPathExpression:v6 allowToMany:objc_msgSend(*(self + 16) inContext:{"comparisonPredicateModifier") == 2, operator}];
      if (v17)
      {
        v18 = v17;
        v11 = [a2 mutableCopy];
        [v11 appendString:v18];

        v19 = [[NSSQLConstantValueIntermediate alloc] initWithConstantValue:constantValue ofType:5 inScope:self context:operator];
        v20 = [(NSSQLConstantValueIntermediate *)v19 generateSQLStringInContext:operator];
        [v11 appendString:{@", "}];
        [v11 appendString:v20];
        [v11 appendString:{@", "}];
        [v11 appendFormat:@"%lu "], v16 & 3);

        return v11;
      }

      return 0;
    }

    goto LABEL_12;
  }

  if (([objc_opt_class() isSimpleKeypath:v7] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v7))
  {
LABEL_12:
    [operator setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unimplemented SQL generation for predicate (%@)", *(self + 16)), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v8 = [objc_msgSend(*(self + 16) "predicateOperator")];
  v9 = [self _generateSQLForKeyPathExpression:v6 allowToMany:objc_msgSend(*(self + 16) inContext:{"comparisonPredicateModifier") == 2, operator}];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [a2 mutableCopy];
  [v11 appendString:v10];

  v12 = [self _generateSQLForKeyPathExpression:v7 allowToMany:0 inContext:operator];
  if (!v12)
  {

    return 0;
  }

  v13 = v12;
  [v11 appendString:{@", "}];
  [v11 appendString:v13];
  [v11 appendString:{@", "}];
  [v11 appendFormat:@"%lu "], v8 & 3);

  return v11;
}

- (void)_generateSQLForString:(void *)string expressionPath:(int)path wildStart:(int)start wildEnd:(uint64_t)end allowToMany:(void *)many inContext:
{
  v14 = [objc_msgSend(self[2] "predicateOperator")];
  v15 = v14;
  if ((v14 & 4) != 0)
  {
    v17 = 2;
    if (!start)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = (v14 << 63 >> 63) & 0x101;
    if ((v14 & 2) != 0)
    {
      v16 = (v14 << 63 >> 63) & 1 | 0x180;
    }

    if ((v14 & 8) != 0)
    {
      v17 = v16 | 0x120;
    }

    else
    {
      v17 = v16;
    }

    if (!start)
    {
      goto LABEL_12;
    }
  }

  if ((path & 1) == 0)
  {
    v17 |= 8uLL;
    goto LABEL_15;
  }

LABEL_12:
  if (!path || (start & 1) != 0)
  {
    if ((path & 1) == 0 && (start & 1) == 0)
    {
      [many setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unimplemented SQL generatio for predicate (%@)", self[2]), 0), @"NSUnderlyingException"}];
      return 0;
    }
  }

  else
  {
    v17 |= 0xCuLL;
  }

LABEL_15:
  v18 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @" NSCoreDataStringSearch(");
  if ([string expressionType] == 2)
  {
    v19 = [(NSSQLIntermediate *)self _generateSQLForExpression:string allowToMany:end inContext:many];
    if (!v19)
    {
LABEL_17:

      return 0;
    }
  }

  else
  {
    v19 = [self _generateSQLForKeyPathExpression:string allowToMany:end inContext:many];
    if (!v19)
    {
      goto LABEL_17;
    }
  }

  v20 = v19;
  [v18 appendString:v19];

  [v18 appendString:{@", "}];
  v21 = [[NSSQLConstantValueIntermediate alloc] initWithConstantValue:a2 ofType:5 inScope:self context:many];
  v22 = [(NSSQLConstantValueIntermediate *)v21 generateSQLStringInContext:many];
  [v18 appendString:v22];

  [v18 appendString:{@", "}];
  [v18 appendFormat:@"%lu, %u"], v17, (v15 >> 3) & 1);
  return v18;
}

- (void)_generateSQLSubstringWildStart:(int)start wildEnd:(void *)end inContext:
{
  if (!self)
  {
    return 0;
  }

  v8 = *(self + 32);
  v9 = *(self + 40);
  if (([objc_opt_class() isSimpleKeypath:v8] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](self, v8) || objc_msgSend(v9, "expressionType") || (v10 = objc_msgSend(v9, "constantValue"), !objc_msgSend(v10, "isNSString")))
  {
    [end setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"unimplemented SQL generation for predicate (%@).", *(self + 16)), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v11 = [*(self + 16) comparisonPredicateModifier] == 2;

  return [(NSSQLSimpleWhereIntermediate *)self _generateSQLForString:v10 expressionPath:v8 wildStart:a2 wildEnd:start allowToMany:v11 inContext:end];
}

- (uint64_t)_upperBoundSearchStringForString:(__CFString *)string context:(void *)context
{
  v21[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(string);
  result = 0;
  if (string && Length <= 0x3FFFFFFF)
  {
    if (CFStringGetCharactersPtr(string))
    {
      v6 = CFStringEncodingUnicodeToBytes();
      if (v6)
      {
        v7 = @"Unknown error during string conversion";
        if (v6 == 1)
        {
          v7 = @"Invalid input string";
        }

        v8 = MEMORY[0x1E695DF30];
        v9 = *MEMORY[0x1E695D940];
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Malformed string (%@)", v7];
        [context setValue:objc_msgSend(v8 forKey:{"exceptionWithName:reason:userInfo:", v9, v10, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", string, @"Bad string", @"NSUnderlyingException"}];
LABEL_17:
        result = 0;
        goto LABEL_18;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](0);
      v12 = (v21 - v11);
      if (Length >= 256)
      {
        v12 = malloc_type_malloc(4 * Length, 0x1000040BDFB0063uLL);
      }

      v22.location = 0;
      v22.length = Length;
      CFStringGetCharacters(string, v22, v12);
      v13 = CFStringEncodingUnicodeToBytes();
      if (v13)
      {
        if (v13 == 1)
        {
          v14 = @"Invalid input string";
        }

        else
        {
          v14 = @"Unknown error during string conversion";
        }

        if (Length >= 256)
        {
          free(v12);
        }

        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Malformed string 2 (%@)", v14];
        [context setValue:objc_msgSend(v15 forKey:{"exceptionWithName:reason:userInfo:", v16, v17, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", string, @"Bad string", @"NSUnderlyingException"}];
        goto LABEL_17;
      }

      if (Length >= 256)
      {
        free(v12);
      }
    }

    if (Length < 2)
    {
      v19 = &stru_1EF3F1768;
    }

    else
    {
      v19 = [(__CFString *)string substringToIndex:Length - 1];
    }

    v20 = [(__CFString *)string characterAtIndex:Length - 1];
    result = 0;
    if (v20 != 55295 && v20 != 57343 && v20 != 0xFFFF)
    {
      result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%C", v19, (v20 + 1)];
    }
  }

LABEL_18:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_generateSQLBeginsWithStringInContext:(uint64_t)context
{
  if (!context)
  {
    return 0;
  }

  predicateOperator = [*(context + 16) predicateOperator];
  if ([*(context + 40) expressionType] || (objc_msgSend(predicateOperator, "options") & 4) == 0 || (v5 = objc_msgSend(*(context + 40), "constantValue"), !-[__CFString isNSString](v5, "isNSString")) || (v6 = -[NSSQLSimpleWhereIntermediate _upperBoundSearchStringForString:context:](v5, a2)) == 0)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = -[NSSQLSimpleWhereIntermediate initWithPredicate:inScope:]([NSSQLSimpleWhereIntermediate alloc], "initWithPredicate:inScope:", [MEMORY[0x1E696AB18] predicateWithLeftExpression:*(context + 32) rightExpression:*(context + 40) modifier:objc_msgSend(*(context + 16) type:"comparisonPredicateModifier") options:{3, 0}], context);
  v9 = [(NSSQLSimpleWhereIntermediate *)v8 generateSQLStringInContext:a2];

  if (v9)
  {
    v10 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](context, [MEMORY[0x1E696ABC8] expressionForConstantValue:v7], 0, a2);
    if (!v10)
    {
      v13 = v9;
      v9 = 0;
      goto LABEL_20;
    }

    v11 = v10;
    v12 = [v9 substringToIndex:{objc_msgSend(v9, "rangeOfString:", @">"}];
    [v9 appendString:@" AND "];
    [v9 appendString:v12];
    [v9 appendString:@" < "];
    [v9 appendString:v11];
  }

  v13 = 0;
LABEL_20:

LABEL_11:
  if ([a2 objectForKey:@"NSUnderlyingException"])
  {

    return 0;
  }

  if (v9)
  {
    return v9;
  }

  return [(NSSQLSimpleWhereIntermediate *)context _generateSQLSubstringWildStart:1 wildEnd:a2 inContext:?];
}

- (void)_generateSQLForConst:(__CFString *)const inManyToMany:(uint64_t)many expression:(void *)expression inContext:
{
  if ([self isUpdateScoped])
  {
    [expression setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported join (not allowed in updates): %@", many), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{-[__CFString name](const, "name"), 0}];
  v11 = +[NSSQLJoinIntermediate createJoinIntermediatesForKeypath:startEntity:startAlias:forScope:inStatementIntermediate:inContext:](NSSQLJoinIntermediate, v10, -[__CFString entity](const, "entity"), [self governingAlias], self, objc_msgSend(self, "fetchIntermediateForKeypathExpression:", many), expression);

  if ([expression objectForKey:@"NSUnderlyingException"])
  {

    return 0;
  }

  v14 = [[NSSQLForeignKeyIntermediate alloc] initWithConstantValue:a2 inScope:self];
  v15 = [(NSSQLForeignKeyIntermediate *)v14 generateSQLStringInContext:expression];
  if (v11)
  {
    v16 = v11[5];
  }

  else
  {
    v16 = 0;
  }

  v12 = [v16 mutableCopy];
  [v12 appendString:@"."];
  [v12 appendString:-[NSSQLManyToMany inverseColumnName](const)];
  [v12 appendString:@" = "];
  [v12 appendString:v15];

  return v12;
}

- (id)_generateSQLForConst:(void *)const inToMany:(void *)many inContext:
{
  if ([self isUpdateScoped])
  {
    [many setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported clause (not allowed in updates): %@.", self[4]), 0), @"NSUnderlyingException"}];
    return 0;
  }

  else
  {
    v9 = [NSSQLKeypathExpressionIntermediate alloc];
    v10 = MEMORY[0x1E696ABC8];
    entity = [const entity];
    if (entity)
    {
      entity = entity[16];
    }

    v12 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:](v9, "initWithExpression:allowToMany:inScope:", [v10 expressionForKeyPath:{objc_msgSend(entity, "name")}], 0, self);
    v8 = [(NSSQLKeypathExpressionIntermediate *)v12 generateSQLStringInContext:many];

    if (v8)
    {
      objc_msgSend(v8, "appendString:", @" IN (SELECT ");
      if (const)
      {
        v13 = const[7];
      }

      else
      {
        v13 = 0;
      }

      destinationEntity = [const destinationEntity];
      [v8 appendString:{objc_msgSend(objc_msgSend(v13, "foreignKey"), "columnName")}];
      [v8 appendString:@" FROM "];
      [v8 appendString:{objc_msgSend(objc_msgSend(v13, "entity"), "tableName")}];
      [v8 appendString:@" WHERE "];
      if (destinationEntity)
      {
        v15 = *(destinationEntity + 128);
      }

      else
      {
        v15 = 0;
      }

      [v8 appendString:{objc_msgSend(v15, "columnName")}];
      v16 = [[NSSQLForeignKeyIntermediate alloc] initWithConstantValue:a2 inScope:self];
      v17 = [(NSSQLForeignKeyIntermediate *)v16 generateSQLStringInContext:many];
      [v8 appendString:@" = "];
      [v8 appendString:v17];
      [v8 appendString:@" "]);
    }
  }

  return v8;
}

- (void)_generateSQLForConst:(uint64_t)const inAttribute:(uint64_t)attribute expression:(uint64_t)expression inContext:(uint64_t)context
{
  v7 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:expression allowToMany:0 inScope:const];
  v8 = [(NSSQLKeypathExpressionIntermediate *)v7 generateSQLStringInContext:context];

  if (!v8)
  {
    return 0;
  }

  v9 = [objc_msgSend(*(const + 16) "predicateOperator")];
  v10 = v9;
  v11 = (v9 << 63 >> 63) & 0x101;
  if ((v9 & 2) != 0)
  {
    v11 = (v9 << 63 >> 63) & 1 | 0x180;
  }

  if ((v9 & 8) != 0)
  {
    v11 |= 0x120uLL;
  }

  if ((v9 & 4) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @" NSCoreDataStringSearch(");
  [v13 appendString:v8];

  v14 = [[NSSQLForeignKeyIntermediate alloc] initWithConstantValue:attribute inScope:const];
  v15 = [(NSSQLForeignKeyIntermediate *)v14 generateSQLStringInContext:context];
  [v13 appendString:{@", "}];
  [v13 appendString:v15];
  [v13 appendString:{@", "}];
  [v13 appendFormat:@"%lu, %u"], v12, (v10 >> 3) & 1);

  return v13;
}

- (__CFString)_generateSQLContainmentStringInContext:(uint64_t)context
{
  v86 = *MEMORY[0x1E69E9840];
  if (!context)
  {
    goto LABEL_29;
  }

  predicateOperatorType = [*(context + 16) predicateOperatorType];
  comparisonPredicateModifier = [*(context + 16) comparisonPredicateModifier];
  v6 = *(context + 32);
  v7 = *(context + 40);
  if (!*(context + 24))
  {
    *(context + 24) = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v8 = predicateOperatorType == 99;
  if (predicateOperatorType == 99)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  expressionType = [v10 expressionType];
  expressionType2 = [v9 expressionType];
  if (expressionType2 == 2)
  {
    variable = [v9 variable];
    v14 = [objc_msgSend(a2 objectForKey:{@"substitutionVariables", "objectForKey:", variable}];
    if (v14)
    {
      v15 = v14;
      expressionType3 = [v14 expressionType];
      v78 = [a2 objectForKey:@"duringPrefetching"] != 0;
      v9 = v15;
    }

    else
    {
      v78 = 0;
      variable = 0;
      expressionType3 = 2;
    }
  }

  else
  {
    expressionType3 = expressionType2;
    v78 = 0;
    variable = 0;
  }

  if (expressionType >= 5 && ([objc_opt_class() isSimpleKeypath:v10] & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v10) & 1) == 0 && (-[NSSQLIntermediate isSimpleNoIndexFunction:](context, v10) & 1) == 0)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unimplemented SQL generation for predicate : (%@) (bad LHS)", *(context + 16)];
    goto LABEL_28;
  }

  v17 = expressionType3 > 0x32 || ((1 << expressionType3) & 0x400000000600DLL) == 0;
  if (v17 && ([objc_opt_class() isSimpleKeypath:v10] & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v9) & 1) == 0 && !-[NSSQLIntermediate _functionExpressionIsSubqueryFollowedByKeypath:](context, v9))
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unimplemented SQL generation for predicate : (%@) (bad RHS)", *(context + 16)];
    goto LABEL_28;
  }

  if ((expressionType == 3 || [(NSSQLIntermediate *)context isVariableBasedKeypathScopedBySubquery:v10]) && (expressionType3 == 3 || [(NSSQLIntermediate *)context isVariableBasedKeypathScopedBySubquery:v9]))
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unimplemented SQL generation for predicate : (%@) (LHS and RHS both keypaths)", *(context + 16)];
LABEL_28:
    [a2 setObject:objc_msgSend(v18 forKey:{"exceptionWithName:reason:userInfo:", v19, v20, 0), @"NSUnderlyingException"}];
LABEL_29:
    v21 = 0;
    goto LABEL_122;
  }

  v22 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
  [*(context + 24) addObject:v10];
  if (expressionType3 > 13)
  {
    if (expressionType3 == 50)
    {
      goto LABEL_46;
    }

    if (expressionType3 == 14)
    {
      v23 = [(NSSQLIntermediate *)context _generateSQLForExpression:v10 allowToMany:comparisonPredicateModifier == 2 inContext:a2];
      v21 = v23;
      if (v23)
      {
        [(__CFString *)v23 appendString:@" IN "];
        v24 = -[NSSQLIntermediate _generateSQLForExpressionCollection:allowToMany:inContext:](context, [v9 constantValue], 0, a2);
        if (v24)
        {
LABEL_49:
          v30 = v24;
          [(__CFString *)v21 appendString:v24];

LABEL_97:
          LODWORD(v25) = 1;
          goto LABEL_119;
        }

        goto LABEL_38;
      }

      goto LABEL_118;
    }

LABEL_45:
    if ([(NSSQLIntermediate *)context _functionExpressionIsSubqueryFollowedByKeypath:v9])
    {
LABEL_46:
      v26 = [(NSSQLIntermediate *)context _generateSQLForExpression:v10 allowToMany:comparisonPredicateModifier == 2 inContext:a2];
      v21 = v26;
      if (v26)
      {
        [(__CFString *)v26 appendString:@" IN "];
        contextCopy3 = context;
        v28 = v9;
        v29 = 1;
        goto LABEL_48;
      }

LABEL_118:
      LODWORD(v25) = 0;
      goto LABEL_119;
    }

    if ((([objc_opt_class() isSimpleKeypath:v10] & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v10)) && !objc_msgSend(*(context + 8), "keypathExpressionIsSafeLHSForIn:", v10))
    {
      goto LABEL_39;
    }

    if (expressionType || expressionType3 == 2)
    {
      if (expressionType || expressionType3 != 2)
      {
        v50 = [(NSSQLIntermediate *)context _generateSQLForExpression:v9 allowToMany:1 inContext:a2];
        v21 = v50;
        if (!v50)
        {
          goto LABEL_118;
        }

        [(__CFString *)v50 appendString:@" = "];
        contextCopy3 = context;
        v28 = v10;
        v29 = comparisonPredicateModifier == 2;
      }

      else
      {
        constantValue = [v10 constantValue];
        if ([constantValue isNSString])
        {
          LODWORD(v25) = 1;
          v21 = [(NSSQLSimpleWhereIntermediate *)context _generateSQLForString:constantValue expressionPath:v9 wildStart:1 wildEnd:1 allowToMany:1 inContext:a2];
          goto LABEL_119;
        }

        v58 = [context _generateSQLForVariableExpression:v9 allowToMany:0 inContext:a2];
        v21 = v58;
        if (!v58)
        {
          goto LABEL_118;
        }

        [(__CFString *)v58 appendString:@" = "];
        contextCopy3 = context;
        v28 = v10;
        v29 = 0;
      }

LABEL_48:
      v24 = [(NSSQLIntermediate *)contextCopy3 _generateSQLForExpression:v28 allowToMany:v29 inContext:a2];
      if (v24)
      {
        goto LABEL_49;
      }

LABEL_38:

LABEL_39:
      LODWORD(v25) = 0;
      goto LABEL_40;
    }

    [*(context + 24) addObject:v9];
    if (expressionType3 == 3)
    {
      keyPath = [v9 keyPath];
    }

    else
    {
      keyPath = [objc_msgSend(objc_msgSend(v9 "arguments")];
    }

    v51 = keyPath;
    constantValue2 = [v10 constantValue];
    if ([v51 rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v53 = [context governingEntityForKeypathExpression:v9];
      if (v53)
      {
        v21 = [*(v53 + 40) objectForKey:v51];
        v54 = [a2 valueForKey:@"explicitRestrictingEntityQualifier"];
        if (v21)
        {
          goto LABEL_112;
        }
      }

      else
      {
        v54 = [a2 valueForKey:@"explicitRestrictingEntityQualifier"];
      }

      v55 = v54;
      if ([v54 count])
      {
        lastObject = [v55 lastObject];
        if (lastObject)
        {
          v21 = [*(lastObject + 40) objectForKey:v51];
          [v55 removeLastObject];
          if (v21)
          {
LABEL_112:
            if (LOBYTE(v21->length) == 9)
            {
              v57 = [(NSSQLSimpleWhereIntermediate *)context _generateSQLForConst:constantValue2 inManyToMany:v21 expression:v9 inContext:a2];
LABEL_155:
              v21 = v57;
              goto LABEL_156;
            }

            if (![(__CFString *)v21 isToMany])
            {
              if (LOBYTE(v21->length) == 1)
              {
                v57 = [NSSQLSimpleWhereIntermediate _generateSQLForConst:context inAttribute:constantValue2 expression:v9 inContext:a2];
                goto LABEL_155;
              }

              goto LABEL_150;
            }

LABEL_154:
            v57 = [(NSSQLSimpleWhereIntermediate *)context _generateSQLForConst:constantValue2 inToMany:v21 inContext:a2];
            goto LABEL_155;
          }
        }

        else
        {
          [v55 removeLastObject];
        }
      }

      v21 = 0;
      if ([0 isToMany])
      {
        goto LABEL_154;
      }
    }

    else
    {
      if ([constantValue2 isNSString])
      {
        LODWORD(v25) = 1;
        v21 = [(NSSQLSimpleWhereIntermediate *)context _generateSQLForString:constantValue2 expressionPath:v9 wildStart:1 wildEnd:1 allowToMany:1 inContext:a2];
LABEL_158:
        [*(context + 24) removeLastObject];
        goto LABEL_119;
      }

      v63 = [context _generateSQLForKeyPathExpression:v9 allowToMany:1 inContext:a2];
      v21 = v63;
      if (v63)
      {
        [(__CFString *)v63 appendString:@" = "];
        v64 = [(NSSQLIntermediate *)context _generateSQLForExpression:v10 allowToMany:0 inContext:a2];
        if (v64)
        {
          v65 = v64;
          [(__CFString *)v21 appendString:v64];

LABEL_156:
          LODWORD(v25) = 1;
          goto LABEL_158;
        }

LABEL_150:
        LODWORD(v25) = 0;
        v21 = 0;
        goto LABEL_158;
      }
    }

    LODWORD(v25) = 0;
    goto LABEL_158;
  }

  if (expressionType3)
  {
    if (expressionType3 == 13)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v31 = [(NSSQLIntermediate *)context _generateSQLForExpression:v10 allowToMany:comparisonPredicateModifier == 2 inContext:a2];
  v21 = v31;
  if (!v31)
  {
    goto LABEL_118;
  }

  [(__CFString *)v31 appendString:@" IN "];
  if ([v10 expressionType] == 1)
  {
    destinationEntity = [objc_msgSend(objc_msgSend(context "fetchIntermediate")];
  }

  else if ([objc_opt_class() isSimpleKeypath:v10] && (v34 = objc_msgSend(v10, "predicateFormat"), destinationEntity = objc_msgSend(objc_msgSend(context, "governingEntityForKeypathExpression:", v10), "entityDescription"), v35 = objc_msgSend(v34, "componentsSeparatedByString:", @"."), (v36 = objc_msgSend(v35, "count")) != 0))
  {
    v37 = 0;
    obj = (v36 - 1);
    while (1)
    {
      v38 = [v35 objectAtIndex:v37];
      v39 = destinationEntity ? [objc_msgSend(destinationEntity "propertiesByName")] : 0;
      _propertyType = [v39 _propertyType];
      destinationEntity = 0;
      if (!v39)
      {
        break;
      }

      if (_propertyType != 4)
      {
        break;
      }

      destinationEntity = [v39 destinationEntity];
      if (obj == v37)
      {
        break;
      }

      ++v37;
    }
  }

  else
  {
    destinationEntity = 0;
  }

  v41 = v78;
  v42 = !v78;
  if (destinationEntity)
  {
    v42 = 1;
  }

  if (v42)
  {
LABEL_81:
    if (destinationEntity)
    {
      constantValue3 = [v9 constantValue];
      v22 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
      if ([objc_msgSend(a2 objectForKey:{@"nestingLevel", "intValue"}] <= 0 && ((objc_msgSend(constantValue3, "isNSArray") & 1) != 0 || (objc_msgSend(constantValue3, "isNSSet") & 1) != 0 || objc_msgSend(constantValue3, "isNSOrderedSet")))
      {
        v47 = [constantValue3 count];
        if (variable || v47 >= 0x64)
        {
          [_PFRoutines anyObjectFromCollection:constantValue3];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            constantValue3 = [_PFRoutines newArrayOfObjectIDsFromCollection:constantValue3];
          }

          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v66 = [constantValue3 countByEnumeratingWithState:&v79 objects:v85 count:16];
          if (v66)
          {
            v67 = v66;
            v68 = *v80;
            obja = constantValue3;
            while (2)
            {
              for (i = 0; i != v67; ++i)
              {
                if (*v80 != v68)
                {
                  objc_enumerationMutation(obja);
                }

                v70 = *(*(&v79 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(v70 "entity")])
                {
                  v25 = 0;
                  goto LABEL_148;
                }
              }

              constantValue3 = obja;
              v67 = [obja countByEnumeratingWithState:&v79 objects:v85 count:16];
              if (v67)
              {
                continue;
              }

              break;
            }
          }

          v71 = [a2 objectForKey:@"bindIntarrays"];
          if (!v71)
          {
            v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [a2 setObject:v71 forKey:@"bindIntarrays"];
          }

          v72 = [v71 count];
          v73 = [[NSSQLBindIntarray alloc] initWithValue:constantValue3];
          -[NSSQLBindIntarray setTableName:](v73, "setTableName:", -[NSSQLAliasGenerator generateTempTableName]([a2 objectForKey:@"aliasGenerator"]));
          v74 = [v71 count];
          [v71 addObject:v73];
          [(NSSQLBindIntarray *)v73 setIndex:v74];

          if (variable)
          {
            v75 = [a2 objectForKey:@"bindIntarraysSubstitutionOrder"];
            if (!v75)
            {
              v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [a2 setObject:v75 forKey:@"bindIntarraysSubstitutionOrder"];
            }

            [v75 addObject:variable];
            [v75 addObject:destinationEntity];
            [v75 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v72)}];
          }

          v25 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"(SELECT * FROM %@) ", -[NSSQLBindIntarray tableName](v73, "tableName")];
LABEL_148:
          v22 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
          v41 = v78;
          goto LABEL_90;
        }
      }

      goto LABEL_88;
    }

LABEL_89:
    v25 = 0;
    v22 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
    goto LABEL_90;
  }

  if (![objc_opt_class() isSimpleKeypath:v10])
  {
    goto LABEL_89;
  }

  predicateFormat = [v10 predicateFormat];
  v44 = [context governingEntityForKeypathExpression:v10];
  v45 = [objc_msgSend(predicateFormat componentsSeparatedByString:{@".", "firstObject"}];
  v22 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
  if (v44)
  {
    v44 = [v44[5] objectForKey:v45];
  }

  if ([v44 propertyType] == 7 && !objc_msgSend(v44, "propertyDescription"))
  {
    destinationEntity = [objc_msgSend(v44 "destinationEntity")];
    goto LABEL_81;
  }

LABEL_88:
  v25 = 0;
LABEL_90:
  if (v25)
  {
    v48 = 1;
  }

  else
  {
    v48 = v41;
  }

  if ((v48 & 1) == 0)
  {
    v25 = -[NSSQLIntermediate _generateSQLForConstantCollection:reboundFrom:inContext:](context, [v9 constantValue], variable, a2);
  }

  if (v25)
  {
    [(__CFString *)v21 appendString:v25];

    goto LABEL_97;
  }

LABEL_40:
  v21 = 0;
LABEL_119:
  [*(context + v22[199]) removeLastObject];
  if (!v25 || !v21)
  {
    v59 = [a2 valueForKey:@"NSUnderlyingException"];
    v83 = @"NSUnderlyingException";
    v84 = v59;
    v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    [a2 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"unimplemented SQL generation for predicate : (%@)", *(context + 16)), v60), @"NSUnderlyingException"}];
  }

LABEL_122:
  v61 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)_generateSQLBetweenStringInContext:(uint64_t)context
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (!context)
  {
    goto LABEL_47;
  }

  v3 = *(context + 32);
  v4 = *(context + 40);
  expressionType = [v3 expressionType];
  v6 = *(context + 24);
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(context + 24) = v6;
  }

  [v6 addObject:v3];
  if (expressionType)
  {
    if (([objc_opt_class() isSimpleKeypath:v3] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v3))
    {
      if (expressionType != 4 || sel_indexed_by_ != [*(context + 32) selector])
      {
        [*(context + 24) removeLastObject];
        v26 = 0;
        goto LABEL_45;
      }

      v41 = [objc_msgSend(*(context + 32) "arguments")];
      v56[0] = [objc_msgSend(*(context + 32) "arguments")];
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
      v55 = *(context + 40);
      v43 = -[NSSQLRTreeIndexQueryIntermediate initForIndexNamed:onEntity:properties:ranges:inScope:]([NSSQLRTreeIndexQueryIntermediate alloc], "initForIndexNamed:onEntity:properties:ranges:inScope:", v41, [*(context + 8) governingEntity], v42, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v55, 1), *(context + 8));
      v26 = [v43 generateSQLStringInContext:a2];

      v38 = *(context + 24);
      goto LABEL_53;
    }

    v7 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
    v8 = [context _generateSQLForKeyPathExpression:v3 allowToMany:0 inContext:a2];
    if (!v8)
    {
LABEL_32:

      goto LABEL_47;
    }

    v9 = v8;
    [v7 appendString:v8];
  }

  else
  {
    v10 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
    [*(context + 24) addObject:context];
    v11 = -[NSSQLConstantValueIntermediate initWithConstantValue:inScope:context:]([NSSQLConstantValueIntermediate alloc], "initWithConstantValue:inScope:context:", [v3 constantValue], context, a2);
    v12 = [(NSSQLConstantValueIntermediate *)v11 generateSQLStringInContext:a2];
    [v10 appendString:v12];

    v7 = v10;
    [*(context + 24) removeLastObject];
  }

  [v7 appendString:@" BETWEEN "];
  expressionType2 = [v4 expressionType];
  if (!expressionType2)
  {
    constantValue = [v4 constantValue];
    if ([constantValue count] != 2)
    {
      goto LABEL_44;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v30 = [constantValue countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (!v30)
    {
      goto LABEL_44;
    }

    v31 = v30;
    contextCopy = context;
    v33 = *v46;
    v34 = 1;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v46 != v33)
        {
          objc_enumerationMutation(constantValue);
        }

        v36 = -[NSSQLConstantValueIntermediate initWithConstantValue:inScope:context:]([NSSQLConstantValueIntermediate alloc], "initWithConstantValue:inScope:context:", [*(*(&v45 + 1) + 8 * i) constantValue], contextCopy, a2);
        v37 = [(NSSQLConstantValueIntermediate *)v36 generateSQLStringInContext:a2];
        [v7 appendString:v37];

        if (v34)
        {
          [v7 appendString:@" AND "];
        }

        v34 = 0;
      }

      v31 = [constantValue countByEnumeratingWithState:&v45 objects:v53 count:16];
      v34 = 0;
    }

    while (v31);
    v26 = v7;
    [v7 appendString:@""]);
    v38 = *(contextCopy + 24);
LABEL_53:
    [v38 removeLastObject];
    goto LABEL_48;
  }

  if (expressionType2 != 14 || (v14 = [v4 constantValue], objc_msgSend(v14, "count") != 2) || (v51 = 0u, v52 = 0u, v49 = 0u, v50 = 0u, (v15 = objc_msgSend(v14, "countByEnumeratingWithState:objects:count:", &v49, v54, 16)) == 0))
  {
LABEL_44:
    [v7 appendString:@""]);
    [*(context + 24) removeLastObject];
    v26 = v7;
LABEL_45:
    contextCopy3 = context;
    goto LABEL_46;
  }

  v16 = v15;
  v17 = 0;
  v18 = 0;
  v19 = *v50;
  do
  {
    for (j = 0; j != v16; ++j)
    {
      if (*v50 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v49 + 1) + 8 * j);
      if ([v21 expressionType])
      {
        if (([objc_opt_class() isSimpleKeypath:v21] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](context, v21))
        {
          v17 = -12;
          continue;
        }

        v22 = [context _generateSQLForKeyPathExpression:v21 allowToMany:0 inContext:a2];
        if (!v22)
        {
          goto LABEL_32;
        }

        v23 = v22;
        [v7 appendString:v22];
      }

      else
      {
        v23 = -[NSSQLConstantValueIntermediate initWithConstantValue:inScope:context:]([NSSQLConstantValueIntermediate alloc], "initWithConstantValue:inScope:context:", [v21 constantValue], context, a2);
        v24 = [(NSSQLConstantValueIntermediate *)v23 generateSQLStringInContext:a2];
        [v7 appendString:v24];
      }

      if (v17)
      {
        v18 = 1;
      }

      else
      {
        [v7 appendString:@" AND "];
        v18 = 1;
        v17 = 1;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
  }

  while (v16);
  v25 = v17 > 0;
  v26 = v7;
  contextCopy3 = context;
  v28 = v25 | v18;
  [v26 appendString:@""]);
  [*(contextCopy3 + 24) removeLastObject];
  if (v28)
  {
    goto LABEL_48;
  }

LABEL_46:
  [a2 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unimplemented SQL generation for predicate : (%@)", *(contextCopy3 + 16)), 0), @"NSUnderlyingException"}];

LABEL_47:
  v26 = 0;
LABEL_48:
  v39 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)_generateSQLBoundByStringInContext:(uint64_t)context
{
  if (!context)
  {
    return 0;
  }

  if ([*(context + 32) expressionType] != 3)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"Unsupported predicate, LHS of boundedBy: must be a keypath";
    goto LABEL_27;
  }

  v4 = [objc_msgSend(*(context + 32) "keyPath")];
  if (!v4 || (v5 = v4, ![v4 count]))
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"Unsupported predicate, LHS of boundedBy: is a bad keypath a keypath";
    goto LABEL_27;
  }

  v6 = [context governingEntityForKeypathExpression:*(context + 32)];
  v7 = [v5 count];
  entityDescription = [v6 entityDescription];
  if (!v7)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"Unsupported predicate, LHS of boundedBy: can't find location attribute";
LABEL_27:
    v22 = [v19 exceptionWithName:v20 reason:v21 userInfo:0];
    v23 = a2;
LABEL_28:
    [v23 setObject:v22 forKey:@"NSUnderlyingException"];
    return 0;
  }

  destinationEntity = entityDescription;
  v34 = a2;
  v10 = 0;
  v11 = 0;
  v35 = v7 - 1;
  do
  {
    v12 = [v5 objectAtIndex:v11];
    if (!destinationEntity || (v13 = [objc_msgSend(destinationEntity "propertiesByName")]) == 0)
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported predicate, LHS of boundedBy: has a keypath (can't find %@)", v12];
      goto LABEL_36;
    }

    v14 = v13;
    _propertyType = [v13 _propertyType];
    if ([v14 _isAttribute])
    {
      if (v35 == v11)
      {
        if ([v14 attributeType])
        {
          v25 = MEMORY[0x1E695DF30];
          v26 = *MEMORY[0x1E695D940];
          v27 = @"Unsupported predicate, LHS of boundedBy: does not terminate with a location attribute";
          goto LABEL_38;
        }

        v10 = [objc_msgSend(v14 "userInfo")];
        if (([v10 isNSArray] & 1) == 0)
        {
          if (![v10 isNSString])
          {
            goto LABEL_32;
          }

          v10 = [objc_msgSend(objc_msgSend(v10 "description")];
        }

        if (!v10 || [v10 count] != 2)
        {
LABEL_32:
          v25 = MEMORY[0x1E695DF30];
          v26 = *MEMORY[0x1E695D940];
          v27 = @"Bad LHS attribute, missing derived lat/long names";
LABEL_38:
          v22 = [v25 exceptionWithName:v26 reason:v27 userInfo:0];
          v23 = v34;
          goto LABEL_28;
        }

        goto LABEL_20;
      }

      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Malformed keypath: non-terminal attribute %@", v12];
LABEL_36:
      v27 = v30;
      v25 = v28;
      v26 = v29;
      goto LABEL_38;
    }

    if (_propertyType != 4)
    {
      v25 = MEMORY[0x1E695DF30];
      v26 = *MEMORY[0x1E695D940];
      v27 = @"Unsupported predicate, LHS of boundedBy: does not terminate with a location";
      goto LABEL_38;
    }

    destinationEntity = [v14 destinationEntity];
LABEL_20:
    ++v11;
  }

  while (v7 != v11);
  v16 = -[NSSQLBoundedByIntermediate initWithWorkingEntity:target:bounds:scope:]([NSSQLBoundedByIntermediate alloc], "initWithWorkingEntity:target:bounds:scope:", [objc_msgSend(objc_msgSend(v34 objectForKey:{@"persistentStore", "model"), "entityNamed:", objc_msgSend(destinationEntity, "name")}], v14, *(context + 40), context);
  v17 = [(NSSQLBoundedByIntermediate *)v16 generateSQLStringInContext:v34];

  if (!v17)
  {
    return 0;
  }

  if (v7 == 1)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@.Z_PK IN ", objc_msgSend(context, "governingAliasForKeypathExpression:", *(context + 32))];
    if (!v18)
    {
      goto LABEL_44;
    }

LABEL_43:
    [v18 appendFormat:@"(%@) ", v17];
    goto LABEL_44;
  }

  v31 = [objc_msgSend(objc_msgSend(v5 subarrayWithRange:{0, v35), "componentsJoinedByString:", @".", "stringByAppendingFormat:", @".%@", objc_msgSend(v10, "firstObject")}];
  v32 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:]([NSSQLKeypathExpressionIntermediate alloc], "initWithExpression:allowToMany:inScope:", [MEMORY[0x1E696ABC8] expressionForKeyPath:v31], 1, context);
  v33 = v32;
  if (v32)
  {
    *(&v32->super._allowToMany + 1) = 1;
  }

  v18 = [(NSSQLKeypathExpressionIntermediate *)v32 generateSQLStringInContext:v34];

  if (v18)
  {
    [v18 appendString:@" IN "];
    goto LABEL_43;
  }

LABEL_44:

  return v18;
}

- (id)generateSQLStringInContext:(id)context
{
  if ([context objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  predicateOperatorType = [(NSPredicate *)self->super._predicate predicateOperatorType];
  if ([(NSPredicate *)self->super._predicate comparisonPredicateModifier]!= 1)
  {
    effectiveLeftExpression = self->_effectiveLeftExpression;
    if ([(NSExpression *)effectiveLeftExpression expressionType]== NSConstantValueExpressionType)
    {
      constantValue = [(NSExpression *)effectiveLeftExpression constantValue];
      if (!constantValue || [MEMORY[0x1E695DFB0] null] == constantValue)
      {
        v6 = MEMORY[0x1E695DF30];
        v7 = *MEMORY[0x1E695D940];
        v8 = @"can't use NULL on left hand side";
        goto LABEL_4;
      }
    }

    if (predicateOperatorType > 6)
    {
      if (predicateOperatorType <= 9)
      {
        if (predicateOperatorType != 7)
        {
          if (predicateOperatorType == 8)
          {
            v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLBeginsWithStringInContext:context];
          }

          else
          {
            v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLSubstringWildStart:0 wildEnd:context inContext:?];
          }

          goto LABEL_42;
        }

        v18 = CFSTR(" NSCoreDataLike(");
LABEL_40:
        v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLForMatchingOperator:v18 inContext:context];
        goto LABEL_42;
      }

      if (predicateOperatorType > 99)
      {
        if (predicateOperatorType == 100)
        {
          v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLBetweenStringInContext:context];
          goto LABEL_42;
        }

        if (predicateOperatorType == 2000)
        {
          v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLBoundByStringInContext:context];
          goto LABEL_42;
        }
      }

      else if (predicateOperatorType == 10 || predicateOperatorType == 99)
      {
        v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLContainmentStringInContext:context];
        goto LABEL_42;
      }
    }

    else
    {
      if (predicateOperatorType < 4)
      {
        v12 = self->_effectiveLeftExpression;
        effectiveRightExpression = self->_effectiveRightExpression;
        comparisonPredicateModifier = [(NSPredicate *)self->super._predicate comparisonPredicateModifier];
        if (-[NSExpression expressionType](v12, "expressionType") == NSConstantValueExpressionType && ((v17 = -[NSExpression constantValue](v12, "constantValue")) == 0 || [MEMORY[0x1E695DFB0] null] == v17) || -[NSExpression expressionType](effectiveRightExpression, "expressionType") == NSConstantValueExpressionType && ((v19 = -[NSExpression constantValue](effectiveRightExpression, "constantValue")) == 0 || objc_msgSend(MEMORY[0x1E695DFB0], "null") == v19))
        {
          v20 = MEMORY[0x1E695DF30];
          v21 = *MEMORY[0x1E695D940];
          v22 = @"illegal comparison with NULL";
          v23 = 0;
LABEL_45:
          [context setObject:objc_msgSend(v20 forKey:{"exceptionWithName:reason:userInfo:", v21, v22, v23), @"NSUnderlyingException"}];
          goto LABEL_46;
        }

        if (![(NSPredicate *)self->super._predicate options])
        {
          if (!self->_comparisonPredicateScopedItem)
          {
            self->_comparisonPredicateScopedItem = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          if ([(NSExpression *)v12 expressionType]== NSKeyPathExpressionType && (v30 = [(NSExpression *)effectiveRightExpression expressionType], v29 = v12, !v30) || [(NSExpression *)effectiveRightExpression expressionType]== NSKeyPathExpressionType && (v31 = [(NSExpression *)v12 expressionType], v29 = effectiveRightExpression, !v31))
          {
            [(NSMutableArray *)self->_comparisonPredicateScopedItem addObject:v29];
            v32 = 1;
          }

          else
          {
            v32 = 0;
          }

          v33 = [(NSSQLIntermediate *)self _generateSQLForExpression:v12 allowToMany:comparisonPredicateModifier == 2 inContext:context];
          if (v33)
          {
            v9 = v33;
            v34 = [(NSSQLIntermediate *)self _generateSQLForExpression:comparisonPredicateModifier == 2 allowToMany:context inContext:?];
            if (v34)
            {
              v35 = v34;
              v36 = [NSSQLSimpleWhereIntermediate _sqlTokenForPredicateOperator:context inContext:?];
              if (v36)
              {
                v37 = v36;
                [v9 appendString:@" "];
                [v9 appendString:v37];
                [v9 appendString:@" "];
                [v9 appendString:v35];

                if (v32)
                {
                  [(NSMutableArray *)self->_comparisonPredicateScopedItem removeLastObject];
                }

                goto LABEL_51;
              }
            }

            else
            {
            }
          }

          goto LABEL_46;
        }

        v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLType3InContext:context];
LABEL_42:
        v9 = v15;
        if (v15)
        {
LABEL_51:

          self->_comparisonPredicateScopedItem = 0;
          [context setValue:0 forKey:@"entitySpecificationKeypath"];
          [context setValue:0 forKey:@"entitySpecificationKeypathContainsToMany"];
          [context setValue:0 forKey:@"generatePairs"];
          return v9;
        }

LABEL_46:
        if ([context objectForKey:@"LastKeyPathWasTransientProperty"])
        {
          [context removeObjectForKey:@"NSUnderlyingException"];
          [context removeObjectForKey:@"LastKeyPathWasTransientProperty"];
        }

        else if (![context objectForKey:@"NSUnderlyingException"])
        {
          v26 = MEMORY[0x1E695DF30];
          v27 = *MEMORY[0x1E695D940];
          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate where clause for predicate (%@) (unknown problem)", self->super._predicate];
          [context setObject:objc_msgSend(v26 forKey:{"exceptionWithName:reason:userInfo:", v27, v28, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", self->super._predicate, @"predicate", @"NSUnderlyingException"}];
        }

        v9 = 0;
        goto LABEL_51;
      }

      if ((predicateOperatorType - 4) < 2)
      {
        v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLType2InContext:context];
        goto LABEL_42;
      }

      if (predicateOperatorType == 6)
      {
        v18 = CFSTR(" NSCoreDataMatches(");
        goto LABEL_40;
      }
    }

    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObject:self->super._predicate forKey:@"predicate"];
    v22 = @"Unknown/unsupported comparison predicate operator type";
    v20 = v24;
    v21 = v25;
    goto LABEL_45;
  }

  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = @"ALL modifier is not implemented";
LABEL_4:
  [context setObject:objc_msgSend(v6 forKey:{"exceptionWithName:reason:userInfo:", v7, v8, 0), @"NSUnderlyingException"}];
  return 0;
}

@end