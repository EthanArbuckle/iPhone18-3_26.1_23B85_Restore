@interface NSSQLSimpleWhereIntermediate
- (NSSQLSimpleWhereIntermediate)initWithPredicate:(id)a3 inScope:(id)a4;
- (__CFString)_generateSQLContainmentStringInContext:(uint64_t)a1;
- (__CFString)_sqlTokenForPredicateOperator:(unint64_t)a1 inContext:(void *)a2;
- (id)_generateSQLBeginsWithStringInContext:(uint64_t)a1;
- (id)_generateSQLBoundByStringInContext:(uint64_t)a1;
- (id)_generateSQLForConst:(void *)a3 inToMany:(void *)a4 inContext:;
- (id)_generateSQLType2InContext:(uint64_t)a1;
- (id)_generateSQLType3InContext:(uint64_t)a1;
- (id)generateSQLStringInContext:(id)a3;
- (uint64_t)_upperBoundSearchStringForString:(__CFString *)a1 context:(void *)a2;
- (void)_generateSQLBetweenStringInContext:(uint64_t)a1;
- (void)_generateSQLForConst:(__CFString *)a3 inManyToMany:(uint64_t)a4 expression:(void *)a5 inContext:;
- (void)_generateSQLForConst:(uint64_t)a1 inAttribute:(uint64_t)a2 expression:(uint64_t)a3 inContext:(uint64_t)a4;
- (void)_generateSQLForMatchingOperator:(void *)a3 inContext:;
- (void)_generateSQLForString:(void *)a3 expressionPath:(int)a4 wildStart:(int)a5 wildEnd:(uint64_t)a6 allowToMany:(void *)a7 inContext:;
- (void)_generateSQLSubstringWildStart:(int)a3 wildEnd:(void *)a4 inContext:;
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

- (NSSQLSimpleWhereIntermediate)initWithPredicate:(id)a3 inScope:(id)a4
{
  v11.receiver = self;
  v11.super_class = NSSQLSimpleWhereIntermediate;
  v5 = [(NSSQLWhereIntermediate *)&v11 initWithPredicate:a3 inScope:a4];
  if (v5)
  {
    v5->_effectiveLeftExpression = [a3 leftExpression];
    v5->_effectiveRightExpression = [a3 rightExpression];
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

- (__CFString)_sqlTokenForPredicateOperator:(unint64_t)a1 inContext:(void *)a2
{
  if (![a2 objectForKey:@"NSUnderlyingException"])
  {
    if (a1 < 6)
    {
      return off_1E6EC4398[a1];
    }

    [a2 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], @"Unknown predicate operator type parameter", 0), @"NSUnderlyingException"}];
  }

  return 0;
}

- (id)_generateSQLType3InContext:(uint64_t)a1
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 16) comparisonPredicateModifier];
  v7 = [*(a1 + 16) options];
  v8 = [*(a1 + 16) predicateOperatorType];
  if (!*(a1 + 24))
  {
    *(a1 + 24) = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if ([v4 expressionType] == 3 && (v10 = objc_msgSend(v5, "expressionType"), v9 = v4, !v10) || objc_msgSend(v5, "expressionType", v9) == 3 && (v11 = objc_msgSend(v4, "expressionType"), v9 = v5, !v11))
  {
    [*(a1 + 24) addObject:v9];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v4 allowToMany:v6 == 2 inContext:a2];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v5 allowToMany:v6 == 2 inContext:a2];
  if (!v15)
  {

    return 0;
  }

  v16 = v15;
  if ((v7 & 4) != 0)
  {
    v21 = [*(a1 + 16) predicateOperator];
    v20 = v14;
    [v20 appendString:@" "];
    [v20 appendString:{objc_msgSend(v21, "symbol")}];
    [v20 appendString:@" "];
    [v20 appendString:v16];
  }

  else
  {
    v17 = (v7 << 63 >> 63) & 0x101;
    if ((v7 & 2) != 0)
    {
      v17 = (v7 << 63 >> 63) & 1 | 0x180;
    }

    if ((v7 & 8) != 0)
    {
      v18 = v17 | 0x120;
    }

    else
    {
      v18 = v17;
    }

    if (v8 >= 6)
    {
      NSLog(@"You really shouldn't be here");
      v19 = 7;
    }

    else
    {
      v19 = dword_18592E7C8[v8];
    }

    v20 = objc_msgSend(@"NSCoreDataStringCompare("), "mutableCopy";
    [v20 appendString:v14];
    [v20 appendString:{@", "}];
    [v20 appendString:v16];
    [v20 appendFormat:@", %d, %lu, %d"], v19, v18, (v7 >> 3) & 1);
  }

  if (v12)
  {
    [*(a1 + 24) removeLastObject];
  }

  return v20;
}

- (id)_generateSQLType2InContext:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [*(a1 + 16) predicateOperatorType];
  v5 = *(a1 + 32);
  if (v4 == 5)
  {
    v6 = @"IS NOT NULL";
  }

  else
  {
    v6 = @"IS NULL";
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 16) comparisonPredicateModifier];
  if ([v5 expressionType])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v5 constantValue];
    if (v10)
    {
      v9 = [MEMORY[0x1E695DFB0] null] == v10;
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
    v12 = [v7 constantValue];
    if (!v12)
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

    v11 = [MEMORY[0x1E695DFB0] null] == v12;
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
    v23 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v14 allowToMany:v8 == 2 inContext:a2];
    if (v23)
    {
      v24 = v23;
      [(NSSQLIntermediate *)a1 promoteJoinsInKeypathsForExpression:v14];
      v21 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v24];
      [v21 appendString:@" "];
      [v21 appendString:v6];

      return v21;
    }

    return 0;
  }

  if (![*(a1 + 16) options])
  {
    if (!*(a1 + 24))
    {
      *(a1 + 24) = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if ([v5 expressionType] == 3 && (v17 = objc_msgSend(v7, "expressionType"), v16 = v5, !v17) || objc_msgSend(v7, "expressionType", v16) == 3 && (v18 = objc_msgSend(v5, "expressionType"), v16 = v7, !v18))
    {
      [*(a1 + 24) addObject:v16];
      v19 = v8 == 2;
      v25 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v5 allowToMany:v19 inContext:a2];
      if (v25)
      {
        v21 = v25;
        v22 = 1;
LABEL_37:
        v26 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v7 allowToMany:v19 inContext:a2];
        if (v26)
        {
          v27 = v26;
          v28 = -[NSSQLSimpleWhereIntermediate _sqlTokenForPredicateOperator:inContext:]([*(a1 + 16) predicateOperatorType], a2);
          if (v28)
          {
            v29 = v28;
            [v21 appendString:@" "];
            [v21 appendString:v29];
            [v21 appendString:@" "];
            [v21 appendString:v27];

            if (v22)
            {
              [*(a1 + 24) removeLastObject];
            }

            return v21;
          }

          [a2 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to generate SQL for predicate (%@) (problem with operator)", *(a1 + 16)), 0), @"NSUnderlyingException"}];

          if (v22)
          {
            [*(a1 + 24) removeLastObject];
          }

          return 0;
        }

        if (v22)
        {
          [*(a1 + 24) removeLastObject];
        }

        if (![a2 objectForKey:@"LastKeyPathWasTransientProperty"] && !objc_msgSend(a2, "objectForKey:", @"NSUnderlyingException"))
        {
          v30 = MEMORY[0x1E695DF30];
          v31 = *MEMORY[0x1E695D940];
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for predicate (%@) (problem on RHS)", *(a1 + 16)];
LABEL_52:
          [a2 setObject:objc_msgSend(v30 forKey:{"exceptionWithName:reason:userInfo:", v31, v32, 0), @"NSUnderlyingException"}];
        }

        return 0;
      }

      [*(a1 + 24) removeLastObject];
    }

    else
    {
      v19 = v8 == 2;
      v20 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v5 allowToMany:v19 inContext:a2];
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
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate SQL for predicate (%@) (problem on LHS)", *(a1 + 16)];
    goto LABEL_52;
  }

  return [(NSSQLSimpleWhereIntermediate *)a1 _generateSQLType3InContext:a2];
}

- (void)_generateSQLForMatchingOperator:(void *)a3 inContext:
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (([objc_opt_class() isSimpleKeypath:v6] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v6))
  {
    goto LABEL_12;
  }

  if (![v7 expressionType])
  {
    v14 = [v7 constantValue];
    if (([v14 isNSString] & 1) != 0 || !v14)
    {
      v16 = [objc_msgSend(*(a1 + 16) "predicateOperator")];
      v17 = [a1 _generateSQLForKeyPathExpression:v6 allowToMany:objc_msgSend(*(a1 + 16) inContext:{"comparisonPredicateModifier") == 2, a3}];
      if (v17)
      {
        v18 = v17;
        v11 = [a2 mutableCopy];
        [v11 appendString:v18];

        v19 = [[NSSQLConstantValueIntermediate alloc] initWithConstantValue:v14 ofType:5 inScope:a1 context:a3];
        v20 = [(NSSQLConstantValueIntermediate *)v19 generateSQLStringInContext:a3];
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

  if (([objc_opt_class() isSimpleKeypath:v7] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v7))
  {
LABEL_12:
    [a3 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unimplemented SQL generation for predicate (%@)", *(a1 + 16)), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v8 = [objc_msgSend(*(a1 + 16) "predicateOperator")];
  v9 = [a1 _generateSQLForKeyPathExpression:v6 allowToMany:objc_msgSend(*(a1 + 16) inContext:{"comparisonPredicateModifier") == 2, a3}];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [a2 mutableCopy];
  [v11 appendString:v10];

  v12 = [a1 _generateSQLForKeyPathExpression:v7 allowToMany:0 inContext:a3];
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

- (void)_generateSQLForString:(void *)a3 expressionPath:(int)a4 wildStart:(int)a5 wildEnd:(uint64_t)a6 allowToMany:(void *)a7 inContext:
{
  v14 = [objc_msgSend(a1[2] "predicateOperator")];
  v15 = v14;
  if ((v14 & 4) != 0)
  {
    v17 = 2;
    if (!a5)
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

    if (!a5)
    {
      goto LABEL_12;
    }
  }

  if ((a4 & 1) == 0)
  {
    v17 |= 8uLL;
    goto LABEL_15;
  }

LABEL_12:
  if (!a4 || (a5 & 1) != 0)
  {
    if ((a4 & 1) == 0 && (a5 & 1) == 0)
    {
      [a7 setValue:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unimplemented SQL generatio for predicate (%@)", a1[2]), 0), @"NSUnderlyingException"}];
      return 0;
    }
  }

  else
  {
    v17 |= 0xCuLL;
  }

LABEL_15:
  v18 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @" NSCoreDataStringSearch(");
  if ([a3 expressionType] == 2)
  {
    v19 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:a3 allowToMany:a6 inContext:a7];
    if (!v19)
    {
LABEL_17:

      return 0;
    }
  }

  else
  {
    v19 = [a1 _generateSQLForKeyPathExpression:a3 allowToMany:a6 inContext:a7];
    if (!v19)
    {
      goto LABEL_17;
    }
  }

  v20 = v19;
  [v18 appendString:v19];

  [v18 appendString:{@", "}];
  v21 = [[NSSQLConstantValueIntermediate alloc] initWithConstantValue:a2 ofType:5 inScope:a1 context:a7];
  v22 = [(NSSQLConstantValueIntermediate *)v21 generateSQLStringInContext:a7];
  [v18 appendString:v22];

  [v18 appendString:{@", "}];
  [v18 appendFormat:@"%lu, %u"], v17, (v15 >> 3) & 1);
  return v18;
}

- (void)_generateSQLSubstringWildStart:(int)a3 wildEnd:(void *)a4 inContext:
{
  if (!a1)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (([objc_opt_class() isSimpleKeypath:v8] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v8) || objc_msgSend(v9, "expressionType") || (v10 = objc_msgSend(v9, "constantValue"), !objc_msgSend(v10, "isNSString")))
  {
    [a4 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"unimplemented SQL generation for predicate (%@).", *(a1 + 16)), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v11 = [*(a1 + 16) comparisonPredicateModifier] == 2;

  return [(NSSQLSimpleWhereIntermediate *)a1 _generateSQLForString:v10 expressionPath:v8 wildStart:a2 wildEnd:a3 allowToMany:v11 inContext:a4];
}

- (uint64_t)_upperBoundSearchStringForString:(__CFString *)a1 context:(void *)a2
{
  v21[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  result = 0;
  if (a1 && Length <= 0x3FFFFFFF)
  {
    if (CFStringGetCharactersPtr(a1))
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
        [a2 setValue:objc_msgSend(v8 forKey:{"exceptionWithName:reason:userInfo:", v9, v10, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", a1, @"Bad string", @"NSUnderlyingException"}];
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
      CFStringGetCharacters(a1, v22, v12);
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
        [a2 setValue:objc_msgSend(v15 forKey:{"exceptionWithName:reason:userInfo:", v16, v17, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", a1, @"Bad string", @"NSUnderlyingException"}];
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
      v19 = [(__CFString *)a1 substringToIndex:Length - 1];
    }

    v20 = [(__CFString *)a1 characterAtIndex:Length - 1];
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

- (id)_generateSQLBeginsWithStringInContext:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [*(a1 + 16) predicateOperator];
  if ([*(a1 + 40) expressionType] || (objc_msgSend(v4, "options") & 4) == 0 || (v5 = objc_msgSend(*(a1 + 40), "constantValue"), !-[__CFString isNSString](v5, "isNSString")) || (v6 = -[NSSQLSimpleWhereIntermediate _upperBoundSearchStringForString:context:](v5, a2)) == 0)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = -[NSSQLSimpleWhereIntermediate initWithPredicate:inScope:]([NSSQLSimpleWhereIntermediate alloc], "initWithPredicate:inScope:", [MEMORY[0x1E696AB18] predicateWithLeftExpression:*(a1 + 32) rightExpression:*(a1 + 40) modifier:objc_msgSend(*(a1 + 16) type:"comparisonPredicateModifier") options:{3, 0}], a1);
  v9 = [(NSSQLSimpleWhereIntermediate *)v8 generateSQLStringInContext:a2];

  if (v9)
  {
    v10 = -[NSSQLIntermediate _generateSQLForExpression:allowToMany:inContext:](a1, [MEMORY[0x1E696ABC8] expressionForConstantValue:v7], 0, a2);
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

  return [(NSSQLSimpleWhereIntermediate *)a1 _generateSQLSubstringWildStart:1 wildEnd:a2 inContext:?];
}

- (void)_generateSQLForConst:(__CFString *)a3 inManyToMany:(uint64_t)a4 expression:(void *)a5 inContext:
{
  if ([a1 isUpdateScoped])
  {
    [a5 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported join (not allowed in updates): %@", a4), 0), @"NSUnderlyingException"}];
    return 0;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{-[__CFString name](a3, "name"), 0}];
  v11 = +[NSSQLJoinIntermediate createJoinIntermediatesForKeypath:startEntity:startAlias:forScope:inStatementIntermediate:inContext:](NSSQLJoinIntermediate, v10, -[__CFString entity](a3, "entity"), [a1 governingAlias], a1, objc_msgSend(a1, "fetchIntermediateForKeypathExpression:", a4), a5);

  if ([a5 objectForKey:@"NSUnderlyingException"])
  {

    return 0;
  }

  v14 = [[NSSQLForeignKeyIntermediate alloc] initWithConstantValue:a2 inScope:a1];
  v15 = [(NSSQLForeignKeyIntermediate *)v14 generateSQLStringInContext:a5];
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
  [v12 appendString:-[NSSQLManyToMany inverseColumnName](a3)];
  [v12 appendString:@" = "];
  [v12 appendString:v15];

  return v12;
}

- (id)_generateSQLForConst:(void *)a3 inToMany:(void *)a4 inContext:
{
  if ([a1 isUpdateScoped])
  {
    [a4 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unsupported clause (not allowed in updates): %@.", a1[4]), 0), @"NSUnderlyingException"}];
    return 0;
  }

  else
  {
    v9 = [NSSQLKeypathExpressionIntermediate alloc];
    v10 = MEMORY[0x1E696ABC8];
    v11 = [a3 entity];
    if (v11)
    {
      v11 = v11[16];
    }

    v12 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:](v9, "initWithExpression:allowToMany:inScope:", [v10 expressionForKeyPath:{objc_msgSend(v11, "name")}], 0, a1);
    v8 = [(NSSQLKeypathExpressionIntermediate *)v12 generateSQLStringInContext:a4];

    if (v8)
    {
      objc_msgSend(v8, "appendString:", @" IN (SELECT ");
      if (a3)
      {
        v13 = a3[7];
      }

      else
      {
        v13 = 0;
      }

      v14 = [a3 destinationEntity];
      [v8 appendString:{objc_msgSend(objc_msgSend(v13, "foreignKey"), "columnName")}];
      [v8 appendString:@" FROM "];
      [v8 appendString:{objc_msgSend(objc_msgSend(v13, "entity"), "tableName")}];
      [v8 appendString:@" WHERE "];
      if (v14)
      {
        v15 = *(v14 + 128);
      }

      else
      {
        v15 = 0;
      }

      [v8 appendString:{objc_msgSend(v15, "columnName")}];
      v16 = [[NSSQLForeignKeyIntermediate alloc] initWithConstantValue:a2 inScope:a1];
      v17 = [(NSSQLForeignKeyIntermediate *)v16 generateSQLStringInContext:a4];
      [v8 appendString:@" = "];
      [v8 appendString:v17];
      [v8 appendString:@" "]);
    }
  }

  return v8;
}

- (void)_generateSQLForConst:(uint64_t)a1 inAttribute:(uint64_t)a2 expression:(uint64_t)a3 inContext:(uint64_t)a4
{
  v7 = [(NSSQLExpressionIntermediate *)[NSSQLKeypathExpressionIntermediate alloc] initWithExpression:a3 allowToMany:0 inScope:a1];
  v8 = [(NSSQLKeypathExpressionIntermediate *)v7 generateSQLStringInContext:a4];

  if (!v8)
  {
    return 0;
  }

  v9 = [objc_msgSend(*(a1 + 16) "predicateOperator")];
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

  v14 = [[NSSQLForeignKeyIntermediate alloc] initWithConstantValue:a2 inScope:a1];
  v15 = [(NSSQLForeignKeyIntermediate *)v14 generateSQLStringInContext:a4];
  [v13 appendString:{@", "}];
  [v13 appendString:v15];
  [v13 appendString:{@", "}];
  [v13 appendFormat:@"%lu, %u"], v12, (v10 >> 3) & 1);

  return v13;
}

- (__CFString)_generateSQLContainmentStringInContext:(uint64_t)a1
{
  v86 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_29;
  }

  v4 = [*(a1 + 16) predicateOperatorType];
  v5 = [*(a1 + 16) comparisonPredicateModifier];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (!*(a1 + 24))
  {
    *(a1 + 24) = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v8 = v4 == 99;
  if (v4 == 99)
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

  v11 = [v10 expressionType];
  v12 = [v9 expressionType];
  if (v12 == 2)
  {
    v13 = [v9 variable];
    v14 = [objc_msgSend(a2 objectForKey:{@"substitutionVariables", "objectForKey:", v13}];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 expressionType];
      v78 = [a2 objectForKey:@"duringPrefetching"] != 0;
      v9 = v15;
    }

    else
    {
      v78 = 0;
      v13 = 0;
      v16 = 2;
    }
  }

  else
  {
    v16 = v12;
    v78 = 0;
    v13 = 0;
  }

  if (v11 >= 5 && ([objc_opt_class() isSimpleKeypath:v10] & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v10) & 1) == 0 && (-[NSSQLIntermediate isSimpleNoIndexFunction:](a1, v10) & 1) == 0)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unimplemented SQL generation for predicate : (%@) (bad LHS)", *(a1 + 16)];
    goto LABEL_28;
  }

  v17 = v16 > 0x32 || ((1 << v16) & 0x400000000600DLL) == 0;
  if (v17 && ([objc_opt_class() isSimpleKeypath:v10] & 1) == 0 && (-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v9) & 1) == 0 && !-[NSSQLIntermediate _functionExpressionIsSubqueryFollowedByKeypath:](a1, v9))
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unimplemented SQL generation for predicate : (%@) (bad RHS)", *(a1 + 16)];
    goto LABEL_28;
  }

  if ((v11 == 3 || [(NSSQLIntermediate *)a1 isVariableBasedKeypathScopedBySubquery:v10]) && (v16 == 3 || [(NSSQLIntermediate *)a1 isVariableBasedKeypathScopedBySubquery:v9]))
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unimplemented SQL generation for predicate : (%@) (LHS and RHS both keypaths)", *(a1 + 16)];
LABEL_28:
    [a2 setObject:objc_msgSend(v18 forKey:{"exceptionWithName:reason:userInfo:", v19, v20, 0), @"NSUnderlyingException"}];
LABEL_29:
    v21 = 0;
    goto LABEL_122;
  }

  v22 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
  [*(a1 + 24) addObject:v10];
  if (v16 > 13)
  {
    if (v16 == 50)
    {
      goto LABEL_46;
    }

    if (v16 == 14)
    {
      v23 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v10 allowToMany:v5 == 2 inContext:a2];
      v21 = v23;
      if (v23)
      {
        [(__CFString *)v23 appendString:@" IN "];
        v24 = -[NSSQLIntermediate _generateSQLForExpressionCollection:allowToMany:inContext:](a1, [v9 constantValue], 0, a2);
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
    if ([(NSSQLIntermediate *)a1 _functionExpressionIsSubqueryFollowedByKeypath:v9])
    {
LABEL_46:
      v26 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v10 allowToMany:v5 == 2 inContext:a2];
      v21 = v26;
      if (v26)
      {
        [(__CFString *)v26 appendString:@" IN "];
        v27 = a1;
        v28 = v9;
        v29 = 1;
        goto LABEL_48;
      }

LABEL_118:
      LODWORD(v25) = 0;
      goto LABEL_119;
    }

    if ((([objc_opt_class() isSimpleKeypath:v10] & 1) != 0 || -[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v10)) && !objc_msgSend(*(a1 + 8), "keypathExpressionIsSafeLHSForIn:", v10))
    {
      goto LABEL_39;
    }

    if (v11 || v16 == 2)
    {
      if (v11 || v16 != 2)
      {
        v50 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v9 allowToMany:1 inContext:a2];
        v21 = v50;
        if (!v50)
        {
          goto LABEL_118;
        }

        [(__CFString *)v50 appendString:@" = "];
        v27 = a1;
        v28 = v10;
        v29 = v5 == 2;
      }

      else
      {
        v49 = [v10 constantValue];
        if ([v49 isNSString])
        {
          LODWORD(v25) = 1;
          v21 = [(NSSQLSimpleWhereIntermediate *)a1 _generateSQLForString:v49 expressionPath:v9 wildStart:1 wildEnd:1 allowToMany:1 inContext:a2];
          goto LABEL_119;
        }

        v58 = [a1 _generateSQLForVariableExpression:v9 allowToMany:0 inContext:a2];
        v21 = v58;
        if (!v58)
        {
          goto LABEL_118;
        }

        [(__CFString *)v58 appendString:@" = "];
        v27 = a1;
        v28 = v10;
        v29 = 0;
      }

LABEL_48:
      v24 = [(NSSQLIntermediate *)v27 _generateSQLForExpression:v28 allowToMany:v29 inContext:a2];
      if (v24)
      {
        goto LABEL_49;
      }

LABEL_38:

LABEL_39:
      LODWORD(v25) = 0;
      goto LABEL_40;
    }

    [*(a1 + 24) addObject:v9];
    if (v16 == 3)
    {
      v33 = [v9 keyPath];
    }

    else
    {
      v33 = [objc_msgSend(objc_msgSend(v9 "arguments")];
    }

    v51 = v33;
    v52 = [v10 constantValue];
    if ([v51 rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v53 = [a1 governingEntityForKeypathExpression:v9];
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
        v56 = [v55 lastObject];
        if (v56)
        {
          v21 = [*(v56 + 40) objectForKey:v51];
          [v55 removeLastObject];
          if (v21)
          {
LABEL_112:
            if (LOBYTE(v21->length) == 9)
            {
              v57 = [(NSSQLSimpleWhereIntermediate *)a1 _generateSQLForConst:v52 inManyToMany:v21 expression:v9 inContext:a2];
LABEL_155:
              v21 = v57;
              goto LABEL_156;
            }

            if (![(__CFString *)v21 isToMany])
            {
              if (LOBYTE(v21->length) == 1)
              {
                v57 = [NSSQLSimpleWhereIntermediate _generateSQLForConst:a1 inAttribute:v52 expression:v9 inContext:a2];
                goto LABEL_155;
              }

              goto LABEL_150;
            }

LABEL_154:
            v57 = [(NSSQLSimpleWhereIntermediate *)a1 _generateSQLForConst:v52 inToMany:v21 inContext:a2];
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
      if ([v52 isNSString])
      {
        LODWORD(v25) = 1;
        v21 = [(NSSQLSimpleWhereIntermediate *)a1 _generateSQLForString:v52 expressionPath:v9 wildStart:1 wildEnd:1 allowToMany:1 inContext:a2];
LABEL_158:
        [*(a1 + 24) removeLastObject];
        goto LABEL_119;
      }

      v63 = [a1 _generateSQLForKeyPathExpression:v9 allowToMany:1 inContext:a2];
      v21 = v63;
      if (v63)
      {
        [(__CFString *)v63 appendString:@" = "];
        v64 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v10 allowToMany:0 inContext:a2];
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

  if (v16)
  {
    if (v16 == 13)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v31 = [(NSSQLIntermediate *)a1 _generateSQLForExpression:v10 allowToMany:v5 == 2 inContext:a2];
  v21 = v31;
  if (!v31)
  {
    goto LABEL_118;
  }

  [(__CFString *)v31 appendString:@" IN "];
  if ([v10 expressionType] == 1)
  {
    v32 = [objc_msgSend(objc_msgSend(a1 "fetchIntermediate")];
  }

  else if ([objc_opt_class() isSimpleKeypath:v10] && (v34 = objc_msgSend(v10, "predicateFormat"), v32 = objc_msgSend(objc_msgSend(a1, "governingEntityForKeypathExpression:", v10), "entityDescription"), v35 = objc_msgSend(v34, "componentsSeparatedByString:", @"."), (v36 = objc_msgSend(v35, "count")) != 0))
  {
    v37 = 0;
    obj = (v36 - 1);
    while (1)
    {
      v38 = [v35 objectAtIndex:v37];
      v39 = v32 ? [objc_msgSend(v32 "propertiesByName")] : 0;
      v40 = [v39 _propertyType];
      v32 = 0;
      if (!v39)
      {
        break;
      }

      if (v40 != 4)
      {
        break;
      }

      v32 = [v39 destinationEntity];
      if (obj == v37)
      {
        break;
      }

      ++v37;
    }
  }

  else
  {
    v32 = 0;
  }

  v41 = v78;
  v42 = !v78;
  if (v32)
  {
    v42 = 1;
  }

  if (v42)
  {
LABEL_81:
    if (v32)
    {
      v46 = [v9 constantValue];
      v22 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
      if ([objc_msgSend(a2 objectForKey:{@"nestingLevel", "intValue"}] <= 0 && ((objc_msgSend(v46, "isNSArray") & 1) != 0 || (objc_msgSend(v46, "isNSSet") & 1) != 0 || objc_msgSend(v46, "isNSOrderedSet")))
      {
        v47 = [v46 count];
        if (v13 || v47 >= 0x64)
        {
          [_PFRoutines anyObjectFromCollection:v46];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v46 = [_PFRoutines newArrayOfObjectIDsFromCollection:v46];
          }

          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v66 = [v46 countByEnumeratingWithState:&v79 objects:v85 count:16];
          if (v66)
          {
            v67 = v66;
            v68 = *v80;
            obja = v46;
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

              v46 = obja;
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
          v73 = [[NSSQLBindIntarray alloc] initWithValue:v46];
          -[NSSQLBindIntarray setTableName:](v73, "setTableName:", -[NSSQLAliasGenerator generateTempTableName]([a2 objectForKey:@"aliasGenerator"]));
          v74 = [v71 count];
          [v71 addObject:v73];
          [(NSSQLBindIntarray *)v73 setIndex:v74];

          if (v13)
          {
            v75 = [a2 objectForKey:@"bindIntarraysSubstitutionOrder"];
            if (!v75)
            {
              v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [a2 setObject:v75 forKey:@"bindIntarraysSubstitutionOrder"];
            }

            [v75 addObject:v13];
            [v75 addObject:v32];
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

  v43 = [v10 predicateFormat];
  v44 = [a1 governingEntityForKeypathExpression:v10];
  v45 = [objc_msgSend(v43 componentsSeparatedByString:{@".", "firstObject"}];
  v22 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
  if (v44)
  {
    v44 = [v44[5] objectForKey:v45];
  }

  if ([v44 propertyType] == 7 && !objc_msgSend(v44, "propertyDescription"))
  {
    v32 = [objc_msgSend(v44 "destinationEntity")];
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
    v25 = -[NSSQLIntermediate _generateSQLForConstantCollection:reboundFrom:inContext:](a1, [v9 constantValue], v13, a2);
  }

  if (v25)
  {
    [(__CFString *)v21 appendString:v25];

    goto LABEL_97;
  }

LABEL_40:
  v21 = 0;
LABEL_119:
  [*(a1 + v22[199]) removeLastObject];
  if (!v25 || !v21)
  {
    v59 = [a2 valueForKey:@"NSUnderlyingException"];
    v83 = @"NSUnderlyingException";
    v84 = v59;
    v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    [a2 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"unimplemented SQL generation for predicate : (%@)", *(a1 + 16)), v60), @"NSUnderlyingException"}];
  }

LABEL_122:
  v61 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)_generateSQLBetweenStringInContext:(uint64_t)a1
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_47;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v3 expressionType];
  v6 = *(a1 + 24);
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(a1 + 24) = v6;
  }

  [v6 addObject:v3];
  if (v5)
  {
    if (([objc_opt_class() isSimpleKeypath:v3] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v3))
    {
      if (v5 != 4 || sel_indexed_by_ != [*(a1 + 32) selector])
      {
        [*(a1 + 24) removeLastObject];
        v26 = 0;
        goto LABEL_45;
      }

      v41 = [objc_msgSend(*(a1 + 32) "arguments")];
      v56[0] = [objc_msgSend(*(a1 + 32) "arguments")];
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
      v55 = *(a1 + 40);
      v43 = -[NSSQLRTreeIndexQueryIntermediate initForIndexNamed:onEntity:properties:ranges:inScope:]([NSSQLRTreeIndexQueryIntermediate alloc], "initForIndexNamed:onEntity:properties:ranges:inScope:", v41, [*(a1 + 8) governingEntity], v42, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v55, 1), *(a1 + 8));
      v26 = [v43 generateSQLStringInContext:a2];

      v38 = *(a1 + 24);
      goto LABEL_53;
    }

    v7 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
    v8 = [a1 _generateSQLForKeyPathExpression:v3 allowToMany:0 inContext:a2];
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
    [*(a1 + 24) addObject:a1];
    v11 = -[NSSQLConstantValueIntermediate initWithConstantValue:inScope:context:]([NSSQLConstantValueIntermediate alloc], "initWithConstantValue:inScope:context:", [v3 constantValue], a1, a2);
    v12 = [(NSSQLConstantValueIntermediate *)v11 generateSQLStringInContext:a2];
    [v10 appendString:v12];

    v7 = v10;
    [*(a1 + 24) removeLastObject];
  }

  [v7 appendString:@" BETWEEN "];
  v13 = [v4 expressionType];
  if (!v13)
  {
    v29 = [v4 constantValue];
    if ([v29 count] != 2)
    {
      goto LABEL_44;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v30 = [v29 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (!v30)
    {
      goto LABEL_44;
    }

    v31 = v30;
    v32 = a1;
    v33 = *v46;
    v34 = 1;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v46 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v36 = -[NSSQLConstantValueIntermediate initWithConstantValue:inScope:context:]([NSSQLConstantValueIntermediate alloc], "initWithConstantValue:inScope:context:", [*(*(&v45 + 1) + 8 * i) constantValue], v32, a2);
        v37 = [(NSSQLConstantValueIntermediate *)v36 generateSQLStringInContext:a2];
        [v7 appendString:v37];

        if (v34)
        {
          [v7 appendString:@" AND "];
        }

        v34 = 0;
      }

      v31 = [v29 countByEnumeratingWithState:&v45 objects:v53 count:16];
      v34 = 0;
    }

    while (v31);
    v26 = v7;
    [v7 appendString:@""]);
    v38 = *(v32 + 24);
LABEL_53:
    [v38 removeLastObject];
    goto LABEL_48;
  }

  if (v13 != 14 || (v14 = [v4 constantValue], objc_msgSend(v14, "count") != 2) || (v51 = 0u, v52 = 0u, v49 = 0u, v50 = 0u, (v15 = objc_msgSend(v14, "countByEnumeratingWithState:objects:count:", &v49, v54, 16)) == 0))
  {
LABEL_44:
    [v7 appendString:@""]);
    [*(a1 + 24) removeLastObject];
    v26 = v7;
LABEL_45:
    v27 = a1;
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
        if (([objc_opt_class() isSimpleKeypath:v21] & 1) == 0 && !-[NSSQLIntermediate isVariableBasedKeypathScopedBySubquery:](a1, v21))
        {
          v17 = -12;
          continue;
        }

        v22 = [a1 _generateSQLForKeyPathExpression:v21 allowToMany:0 inContext:a2];
        if (!v22)
        {
          goto LABEL_32;
        }

        v23 = v22;
        [v7 appendString:v22];
      }

      else
      {
        v23 = -[NSSQLConstantValueIntermediate initWithConstantValue:inScope:context:]([NSSQLConstantValueIntermediate alloc], "initWithConstantValue:inScope:context:", [v21 constantValue], a1, a2);
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
  v27 = a1;
  v28 = v25 | v18;
  [v26 appendString:@""]);
  [*(v27 + 24) removeLastObject];
  if (v28)
  {
    goto LABEL_48;
  }

LABEL_46:
  [a2 setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D940], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unimplemented SQL generation for predicate : (%@)", *(v27 + 16)), 0), @"NSUnderlyingException"}];

LABEL_47:
  v26 = 0;
LABEL_48:
  v39 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)_generateSQLBoundByStringInContext:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  if ([*(a1 + 32) expressionType] != 3)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"Unsupported predicate, LHS of boundedBy: must be a keypath";
    goto LABEL_27;
  }

  v4 = [objc_msgSend(*(a1 + 32) "keyPath")];
  if (!v4 || (v5 = v4, ![v4 count]))
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"Unsupported predicate, LHS of boundedBy: is a bad keypath a keypath";
    goto LABEL_27;
  }

  v6 = [a1 governingEntityForKeypathExpression:*(a1 + 32)];
  v7 = [v5 count];
  v8 = [v6 entityDescription];
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

  v9 = v8;
  v34 = a2;
  v10 = 0;
  v11 = 0;
  v35 = v7 - 1;
  do
  {
    v12 = [v5 objectAtIndex:v11];
    if (!v9 || (v13 = [objc_msgSend(v9 "propertiesByName")]) == 0)
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported predicate, LHS of boundedBy: has a keypath (can't find %@)", v12];
      goto LABEL_36;
    }

    v14 = v13;
    v15 = [v13 _propertyType];
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

    if (v15 != 4)
    {
      v25 = MEMORY[0x1E695DF30];
      v26 = *MEMORY[0x1E695D940];
      v27 = @"Unsupported predicate, LHS of boundedBy: does not terminate with a location";
      goto LABEL_38;
    }

    v9 = [v14 destinationEntity];
LABEL_20:
    ++v11;
  }

  while (v7 != v11);
  v16 = -[NSSQLBoundedByIntermediate initWithWorkingEntity:target:bounds:scope:]([NSSQLBoundedByIntermediate alloc], "initWithWorkingEntity:target:bounds:scope:", [objc_msgSend(objc_msgSend(v34 objectForKey:{@"persistentStore", "model"), "entityNamed:", objc_msgSend(v9, "name")}], v14, *(a1 + 40), a1);
  v17 = [(NSSQLBoundedByIntermediate *)v16 generateSQLStringInContext:v34];

  if (!v17)
  {
    return 0;
  }

  if (v7 == 1)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@.Z_PK IN ", objc_msgSend(a1, "governingAliasForKeypathExpression:", *(a1 + 32))];
    if (!v18)
    {
      goto LABEL_44;
    }

LABEL_43:
    [v18 appendFormat:@"(%@) ", v17];
    goto LABEL_44;
  }

  v31 = [objc_msgSend(objc_msgSend(v5 subarrayWithRange:{0, v35), "componentsJoinedByString:", @".", "stringByAppendingFormat:", @".%@", objc_msgSend(v10, "firstObject")}];
  v32 = -[NSSQLExpressionIntermediate initWithExpression:allowToMany:inScope:]([NSSQLKeypathExpressionIntermediate alloc], "initWithExpression:allowToMany:inScope:", [MEMORY[0x1E696ABC8] expressionForKeyPath:v31], 1, a1);
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

- (id)generateSQLStringInContext:(id)a3
{
  if ([a3 objectForKey:@"NSUnderlyingException"])
  {
    return 0;
  }

  v5 = [(NSPredicate *)self->super._predicate predicateOperatorType];
  if ([(NSPredicate *)self->super._predicate comparisonPredicateModifier]!= 1)
  {
    effectiveLeftExpression = self->_effectiveLeftExpression;
    if ([(NSExpression *)effectiveLeftExpression expressionType]== NSConstantValueExpressionType)
    {
      v16 = [(NSExpression *)effectiveLeftExpression constantValue];
      if (!v16 || [MEMORY[0x1E695DFB0] null] == v16)
      {
        v6 = MEMORY[0x1E695DF30];
        v7 = *MEMORY[0x1E695D940];
        v8 = @"can't use NULL on left hand side";
        goto LABEL_4;
      }
    }

    if (v5 > 6)
    {
      if (v5 <= 9)
      {
        if (v5 != 7)
        {
          if (v5 == 8)
          {
            v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLBeginsWithStringInContext:a3];
          }

          else
          {
            v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLSubstringWildStart:0 wildEnd:a3 inContext:?];
          }

          goto LABEL_42;
        }

        v18 = CFSTR(" NSCoreDataLike(");
LABEL_40:
        v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLForMatchingOperator:v18 inContext:a3];
        goto LABEL_42;
      }

      if (v5 > 99)
      {
        if (v5 == 100)
        {
          v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLBetweenStringInContext:a3];
          goto LABEL_42;
        }

        if (v5 == 2000)
        {
          v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLBoundByStringInContext:a3];
          goto LABEL_42;
        }
      }

      else if (v5 == 10 || v5 == 99)
      {
        v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLContainmentStringInContext:a3];
        goto LABEL_42;
      }
    }

    else
    {
      if (v5 < 4)
      {
        v12 = self->_effectiveLeftExpression;
        effectiveRightExpression = self->_effectiveRightExpression;
        v14 = [(NSPredicate *)self->super._predicate comparisonPredicateModifier];
        if (-[NSExpression expressionType](v12, "expressionType") == NSConstantValueExpressionType && ((v17 = -[NSExpression constantValue](v12, "constantValue")) == 0 || [MEMORY[0x1E695DFB0] null] == v17) || -[NSExpression expressionType](effectiveRightExpression, "expressionType") == NSConstantValueExpressionType && ((v19 = -[NSExpression constantValue](effectiveRightExpression, "constantValue")) == 0 || objc_msgSend(MEMORY[0x1E695DFB0], "null") == v19))
        {
          v20 = MEMORY[0x1E695DF30];
          v21 = *MEMORY[0x1E695D940];
          v22 = @"illegal comparison with NULL";
          v23 = 0;
LABEL_45:
          [a3 setObject:objc_msgSend(v20 forKey:{"exceptionWithName:reason:userInfo:", v21, v22, v23), @"NSUnderlyingException"}];
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

          v33 = [(NSSQLIntermediate *)self _generateSQLForExpression:v12 allowToMany:v14 == 2 inContext:a3];
          if (v33)
          {
            v9 = v33;
            v34 = [(NSSQLIntermediate *)self _generateSQLForExpression:v14 == 2 allowToMany:a3 inContext:?];
            if (v34)
            {
              v35 = v34;
              v36 = [NSSQLSimpleWhereIntermediate _sqlTokenForPredicateOperator:a3 inContext:?];
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

        v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLType3InContext:a3];
LABEL_42:
        v9 = v15;
        if (v15)
        {
LABEL_51:

          self->_comparisonPredicateScopedItem = 0;
          [a3 setValue:0 forKey:@"entitySpecificationKeypath"];
          [a3 setValue:0 forKey:@"entitySpecificationKeypathContainsToMany"];
          [a3 setValue:0 forKey:@"generatePairs"];
          return v9;
        }

LABEL_46:
        if ([a3 objectForKey:@"LastKeyPathWasTransientProperty"])
        {
          [a3 removeObjectForKey:@"NSUnderlyingException"];
          [a3 removeObjectForKey:@"LastKeyPathWasTransientProperty"];
        }

        else if (![a3 objectForKey:@"NSUnderlyingException"])
        {
          v26 = MEMORY[0x1E695DF30];
          v27 = *MEMORY[0x1E695D940];
          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to generate where clause for predicate (%@) (unknown problem)", self->super._predicate];
          [a3 setObject:objc_msgSend(v26 forKey:{"exceptionWithName:reason:userInfo:", v27, v28, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", self->super._predicate, @"predicate", @"NSUnderlyingException"}];
        }

        v9 = 0;
        goto LABEL_51;
      }

      if ((v5 - 4) < 2)
      {
        v15 = [(NSSQLSimpleWhereIntermediate *)self _generateSQLType2InContext:a3];
        goto LABEL_42;
      }

      if (v5 == 6)
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
  [a3 setObject:objc_msgSend(v6 forKey:{"exceptionWithName:reason:userInfo:", v7, v8, 0), @"NSUnderlyingException"}];
  return 0;
}

@end