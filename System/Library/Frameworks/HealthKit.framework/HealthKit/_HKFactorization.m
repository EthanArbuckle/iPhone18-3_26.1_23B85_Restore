@interface _HKFactorization
+ (_HKFactorization)factorizationWithFactorsAndExponents:(id)a3;
+ (id)factorization;
+ (id)factorizationFromString:(id)a3 factorGrammar:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_HKFactorization)init;
- (_HKFactorization)initWithCoder:(id)a3;
- (id)anyFactor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)factorizationByDividing:(id)a3;
- (id)factorizationByMultiplying:(id)a3;
- (id)factorizationByRaisingToExponent:(int64_t)a3;
- (id)unitString;
- (int64_t)_exponentForFactor:(id)a3;
- (int64_t)exponentForFactor:(id)a3;
- (unint64_t)hash;
- (void)_enumerateFactorsWithHandler:(id)a3;
- (void)_multiplyByFactor:(id)a3 exponent:(int64_t)a4;
- (void)_multiplyByFactorization:(id)a3;
- (void)_raiseToExponent:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateFactorsWithHandler:(id)a3;
@end

@implementation _HKFactorization

- (id)unitString
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [MEMORY[0x1E696AD60] string];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __30___HKFactorization_unitString__block_invoke;
  v14 = &unk_1E737FC28;
  v17 = &v23;
  v5 = v3;
  v15 = v5;
  v18 = &v19;
  v6 = v4;
  v16 = v6;
  [(_HKFactorization *)self enumerateFactorsWithHandler:&v11];
  v7 = v20[3];
  if (v24[3])
  {
    if (v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v5, v6, v11, v12, v13, v14, v15];
    }

    else
    {
      v8 = v5;
    }

    goto LABEL_7;
  }

  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"1/%@", v6];
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  v9 = @"()";
LABEL_8:

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

+ (id)factorization
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (_HKFactorization)init
{
  v6.receiver = self;
  v6.super_class = _HKFactorization;
  v2 = [(_HKFactorization *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    factors = v2->_factors;
    v2->_factors = v3;
  }

  return v2;
}

- (id)anyFactor
{
  v2 = [(NSMapTable *)self->_factors keyEnumerator];
  v3 = [v2 nextObject];

  return v3;
}

+ (_HKFactorization)factorizationWithFactorsAndExponents:(id)a3
{
  v4 = a3;
  v5 = [a1 factorization];
  v12 = &v14;
  v6 = v4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    do
    {
      [v5 _multiplyByFactor:v8 exponent:*v12];
      v9 = (v12 + 1);
      v12 += 2;
      v10 = *v9;

      v8 = v10;
    }

    while (v10);
  }

  return v5;
}

+ (id)factorizationFromString:(id)a3 factorGrammar:(id)a4
{
  v36[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  os_unfair_lock_lock(&_FactorizationGrammarWithFactorGrammar_lock);
  v7 = _FactorizationGrammarWithFactorGrammar_cache;
  if (!_FactorizationGrammarWithFactorGrammar_cache)
  {
    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v9 = _FactorizationGrammarWithFactorGrammar_cache;
    _FactorizationGrammarWithFactorGrammar_cache = v8;

    v7 = _FactorizationGrammarWithFactorGrammar_cache;
  }

  v10 = [v7 objectForKey:v6];
  if (!v10)
  {
    v28 = v6;
    v11 = [_HKCFGNonTerminal nonTerminalWithLabel:@"Q"];
    v12 = [_HKCFGNonTerminal nonTerminalWithLabel:@"P"];
    v13 = [v28 rootNonTerminal];

    v27 = [_HKCFGTerminal terminalMatchingCharacterInString:@"*.·"];
    v14 = +[_HKCFGTerminal terminalMatchingAnyInteger];
    [v11 addReplacementRuleWithExpressions:&unk_1F0686A78 nodeEvaluator:&__block_literal_global_70];
    v36[0] = CFSTR("(");
    v36[1] = v11;
    v36[2] = @"");
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
    [v11 addReplacementRuleWithExpressions:v15 nodeEvaluator:&__block_literal_global_122];

    v35 = v12;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    [v11 addReplacementRuleWithExpressions:v16 nodeEvaluator:&__block_literal_global_124];

    v34[0] = v12;
    v34[1] = @"/";
    v34[2] = v12;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
    [v11 addReplacementRuleWithExpressions:v17 nodeEvaluator:&__block_literal_global_129_0];

    [v12 addReplacementRuleWithExpressions:&unk_1F0686A90 nodeEvaluator:&__block_literal_global_137];
    v33 = v13;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    [v12 addReplacementRuleWithExpressions:v18 nodeEvaluator:&__block_literal_global_139];

    v32[0] = v13;
    v32[1] = @"^";
    v32[2] = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
    [v12 addReplacementRuleWithExpressions:v19 nodeEvaluator:&__block_literal_global_144];

    v31[0] = CFSTR("(");
    v31[1] = v12;
    v31[2] = @"");
    v31[3] = @"^";
    v31[4] = v14;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
    [v12 addReplacementRuleWithExpressions:v20 nodeEvaluator:&__block_literal_global_146];

    v30[0] = CFSTR("(");
    v30[1] = v12;
    v30[2] = @"");
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    [v12 addReplacementRuleWithExpressions:v21 nodeEvaluator:&__block_literal_global_148_0];

    v29[0] = v12;
    v29[1] = v27;
    v29[2] = v12;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
    [v12 addReplacementRuleWithExpressions:v22 nodeEvaluator:&__block_literal_global_150];

    v10 = [_HKContextFreeGrammar grammarWithRootNonTerminal:v11 emptyStringEvaluator:&__block_literal_global_154];

    [_FactorizationGrammarWithFactorGrammar_cache setObject:v10 forKey:v28];
  }

  os_unfair_lock_unlock(&_FactorizationGrammarWithFactorGrammar_lock);

  v23 = [v10 parseTreeForString:v5];
  if (!v23)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unable to parse factorization string %@", v5}];
  }

  v24 = [v23 evaluate];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33___HKFactorization_copyWithZone___block_invoke;
  v7[3] = &unk_1E737FBD8;
  v5 = v4;
  v8 = v5;
  [(_HKFactorization *)self enumerateFactorsWithHandler:v7];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSMapTable *)self->_factors isEqual:v4->_factors];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24___HKFactorization_hash__block_invoke;
  v4[3] = &unk_1E737FC00;
  v4[4] = &v5;
  [(_HKFactorization *)self _enumerateFactorsWithHandler:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)factorizationByMultiplying:(id)a3
{
  v4 = a3;
  v5 = [(_HKFactorization *)self copy];
  [v5 _multiplyByFactorization:v4];

  return v5;
}

- (id)factorizationByDividing:(id)a3
{
  v4 = [a3 reciprocal];
  v5 = [(_HKFactorization *)self factorizationByMultiplying:v4];

  return v5;
}

- (id)factorizationByRaisingToExponent:(int64_t)a3
{
  v4 = [(_HKFactorization *)self copy];
  [v4 _raiseToExponent:a3];

  return v4;
}

- (void)enumerateFactorsWithHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMapTable *)self->_factors keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [(NSMapTable *)self->_factors objectForKey:v10];
      v4[2](v4, v10, [v11 integerValue], &v17);

      if (v17)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateFactorsWithHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMapTable *)self->_factors keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [(NSMapTable *)self->_factors objectForKey:v10];
      v4[2](v4, v10, v11, &v17);

      if (v17)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (int64_t)exponentForFactor:(id)a3
{
  v3 = [(NSMapTable *)self->_factors objectForKey:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v7 = [MEMORY[0x1E695DF70] array];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __36___HKFactorization_encodeWithCoder___block_invoke;
  v13 = &unk_1E737FC50;
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  [(_HKFactorization *)self _enumerateFactorsWithHandler:&v10];
  [v5 encodeObject:v9 forKey:{@"HKFactorizationFactorsKey", v10, v11, v12, v13}];
  [v5 encodeObject:v8 forKey:@"HKFactorizationExponentsKey"];
}

- (_HKFactorization)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 allowedClasses];
  v6 = [v5 setByAddingObject:objc_opt_class()];

  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"HKFactorizationFactorsKey"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"HKFactorizationExponentsKey"];
  v12 = [v7 count];
  if (v12 != [v11 count])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:@"_HKFactorization unequal number of factors and exponents"];
  }

  v13 = [(_HKFactorization *)self init];
  if (v13)
  {
    v25 = v7;
    v14 = [v7 objectEnumerator];
    v15 = [v11 objectEnumerator];
    v16 = [v14 nextObject];
    if (v16)
    {
      v17 = v16;
      v23 = v6;
      v24 = v4;
      v18 = 0;
      v19 = *MEMORY[0x1E696A4B8];
      do
      {
        v20 = v18;
        v18 = [v15 nextObject];

        if (!v18)
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E695DF30] raise:v19 format:{@"_HKFactorization exponent is not of class NSNumber: %@", v18}];
        }

        -[_HKFactorization _multiplyByFactor:exponent:](v13, "_multiplyByFactor:exponent:", v17, [v18 integerValue]);
        v21 = [v14 nextObject];

        v17 = v21;
      }

      while (v21);

      v6 = v23;
      v4 = v24;
    }

    v7 = v25;
  }

  return v13;
}

- (int64_t)_exponentForFactor:(id)a3
{
  v3 = [(NSMapTable *)self->_factors objectForKey:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)_multiplyByFactor:(id)a3 exponent:(int64_t)a4
{
  v9 = a3;
  v6 = [(_HKFactorization *)self _exponentForFactor:?];
  factors = self->_factors;
  if (v6 + a4)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6 + a4];
    [(NSMapTable *)factors setObject:v8 forKey:v9];
  }

  else
  {
    [(NSMapTable *)factors removeObjectForKey:v9];
  }
}

- (void)_multiplyByFactorization:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45___HKFactorization__multiplyByFactorization___block_invoke;
  v3[3] = &unk_1E737FBD8;
  v3[4] = self;
  [a3 enumerateFactorsWithHandler:v3];
}

- (void)_raiseToExponent:(int64_t)a3
{
  factors = self->_factors;
  if (a3)
  {
    v6 = [(NSMapTable *)factors copy];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37___HKFactorization__raiseToExponent___block_invoke;
    v10[3] = &unk_1E737FC78;
    v7 = v6;
    v11 = v7;
    v12 = a3;
    [(_HKFactorization *)self enumerateFactorsWithHandler:v10];
    v8 = self->_factors;
    self->_factors = v7;
    v9 = v7;
  }

  else
  {

    [(NSMapTable *)factors removeAllObjects];
  }
}

@end