@interface _HKFactorization
+ (_HKFactorization)factorizationWithFactorsAndExponents:(id)exponents;
+ (id)factorization;
+ (id)factorizationFromString:(id)string factorGrammar:(id)grammar;
- (BOOL)isEqual:(id)equal;
- (_HKFactorization)init;
- (_HKFactorization)initWithCoder:(id)coder;
- (id)anyFactor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)factorizationByDividing:(id)dividing;
- (id)factorizationByMultiplying:(id)multiplying;
- (id)factorizationByRaisingToExponent:(int64_t)exponent;
- (id)unitString;
- (int64_t)_exponentForFactor:(id)factor;
- (int64_t)exponentForFactor:(id)factor;
- (unint64_t)hash;
- (void)_enumerateFactorsWithHandler:(id)handler;
- (void)_multiplyByFactor:(id)factor exponent:(int64_t)exponent;
- (void)_multiplyByFactorization:(id)factorization;
- (void)_raiseToExponent:(int64_t)exponent;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateFactorsWithHandler:(id)handler;
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
  string = [MEMORY[0x1E696AD60] string];
  string2 = [MEMORY[0x1E696AD60] string];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __30___HKFactorization_unitString__block_invoke;
  v14 = &unk_1E737FC28;
  v17 = &v23;
  v5 = string;
  v15 = v5;
  v18 = &v19;
  v6 = string2;
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
  v2 = objc_alloc_init(self);

  return v2;
}

- (_HKFactorization)init
{
  v6.receiver = self;
  v6.super_class = _HKFactorization;
  v2 = [(_HKFactorization *)&v6 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    factors = v2->_factors;
    v2->_factors = strongToStrongObjectsMapTable;
  }

  return v2;
}

- (id)anyFactor
{
  keyEnumerator = [(NSMapTable *)self->_factors keyEnumerator];
  nextObject = [keyEnumerator nextObject];

  return nextObject;
}

+ (_HKFactorization)factorizationWithFactorsAndExponents:(id)exponents
{
  exponentsCopy = exponents;
  factorization = [self factorization];
  v12 = &v14;
  v6 = exponentsCopy;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    do
    {
      [factorization _multiplyByFactor:v8 exponent:*v12];
      v9 = (v12 + 1);
      v12 += 2;
      v10 = *v9;

      v8 = v10;
    }

    while (v10);
  }

  return factorization;
}

+ (id)factorizationFromString:(id)string factorGrammar:(id)grammar
{
  v36[3] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  grammarCopy = grammar;
  os_unfair_lock_lock(&_FactorizationGrammarWithFactorGrammar_lock);
  v7 = _FactorizationGrammarWithFactorGrammar_cache;
  if (!_FactorizationGrammarWithFactorGrammar_cache)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v9 = _FactorizationGrammarWithFactorGrammar_cache;
    _FactorizationGrammarWithFactorGrammar_cache = strongToStrongObjectsMapTable;

    v7 = _FactorizationGrammarWithFactorGrammar_cache;
  }

  v10 = [v7 objectForKey:grammarCopy];
  if (!v10)
  {
    v28 = grammarCopy;
    v11 = [_HKCFGNonTerminal nonTerminalWithLabel:@"Q"];
    v12 = [_HKCFGNonTerminal nonTerminalWithLabel:@"P"];
    rootNonTerminal = [v28 rootNonTerminal];

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
    v33 = rootNonTerminal;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    [v12 addReplacementRuleWithExpressions:v18 nodeEvaluator:&__block_literal_global_139];

    v32[0] = rootNonTerminal;
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

  v23 = [v10 parseTreeForString:stringCopy];
  if (!v23)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unable to parse factorization string %@", stringCopy}];
  }

  evaluate = [v23 evaluate];

  v25 = *MEMORY[0x1E69E9840];

  return evaluate;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33___HKFactorization_copyWithZone___block_invoke;
  v7[3] = &unk_1E737FBD8;
  v5 = v4;
  v8 = v5;
  [(_HKFactorization *)self enumerateFactorsWithHandler:v7];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSMapTable *)self->_factors isEqual:equalCopy->_factors];
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

- (id)factorizationByMultiplying:(id)multiplying
{
  multiplyingCopy = multiplying;
  v5 = [(_HKFactorization *)self copy];
  [v5 _multiplyByFactorization:multiplyingCopy];

  return v5;
}

- (id)factorizationByDividing:(id)dividing
{
  reciprocal = [dividing reciprocal];
  v5 = [(_HKFactorization *)self factorizationByMultiplying:reciprocal];

  return v5;
}

- (id)factorizationByRaisingToExponent:(int64_t)exponent
{
  v4 = [(_HKFactorization *)self copy];
  [v4 _raiseToExponent:exponent];

  return v4;
}

- (void)enumerateFactorsWithHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keyEnumerator = [(NSMapTable *)self->_factors keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v18 count:16];
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
        objc_enumerationMutation(keyEnumerator);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [(NSMapTable *)self->_factors objectForKey:v10];
      handlerCopy[2](handlerCopy, v10, [v11 integerValue], &v17);

      if (v17)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v18 count:16];
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

- (void)_enumerateFactorsWithHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keyEnumerator = [(NSMapTable *)self->_factors keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v18 count:16];
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
        objc_enumerationMutation(keyEnumerator);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v11 = [(NSMapTable *)self->_factors objectForKey:v10];
      handlerCopy[2](handlerCopy, v10, v11, &v17);

      if (v17)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v18 count:16];
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

- (int64_t)exponentForFactor:(id)factor
{
  v3 = [(NSMapTable *)self->_factors objectForKey:factor];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DF70];
  coderCopy = coder;
  array = [v4 array];
  array2 = [MEMORY[0x1E695DF70] array];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __36___HKFactorization_encodeWithCoder___block_invoke;
  v13 = &unk_1E737FC50;
  v14 = array;
  v15 = array2;
  v8 = array2;
  v9 = array;
  [(_HKFactorization *)self _enumerateFactorsWithHandler:&v10];
  [coderCopy encodeObject:v9 forKey:{@"HKFactorizationFactorsKey", v10, v11, v12, v13}];
  [coderCopy encodeObject:v8 forKey:@"HKFactorizationExponentsKey"];
}

- (_HKFactorization)initWithCoder:(id)coder
{
  coderCopy = coder;
  allowedClasses = [coderCopy allowedClasses];
  v6 = [allowedClasses setByAddingObject:objc_opt_class()];

  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"HKFactorizationFactorsKey"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"HKFactorizationExponentsKey"];
  v12 = [v7 count];
  if (v12 != [v11 count])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:@"_HKFactorization unequal number of factors and exponents"];
  }

  v13 = [(_HKFactorization *)self init];
  if (v13)
  {
    v25 = v7;
    objectEnumerator = [v7 objectEnumerator];
    objectEnumerator2 = [v11 objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      v17 = nextObject;
      v23 = v6;
      v24 = coderCopy;
      nextObject2 = 0;
      v19 = *MEMORY[0x1E696A4B8];
      do
      {
        v20 = nextObject2;
        nextObject2 = [objectEnumerator2 nextObject];

        if (!nextObject2)
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x1E695DF30] raise:v19 format:{@"_HKFactorization exponent is not of class NSNumber: %@", nextObject2}];
        }

        -[_HKFactorization _multiplyByFactor:exponent:](v13, "_multiplyByFactor:exponent:", v17, [nextObject2 integerValue]);
        nextObject3 = [objectEnumerator nextObject];

        v17 = nextObject3;
      }

      while (nextObject3);

      v6 = v23;
      coderCopy = v24;
    }

    v7 = v25;
  }

  return v13;
}

- (int64_t)_exponentForFactor:(id)factor
{
  v3 = [(NSMapTable *)self->_factors objectForKey:factor];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)_multiplyByFactor:(id)factor exponent:(int64_t)exponent
{
  factorCopy = factor;
  v6 = [(_HKFactorization *)self _exponentForFactor:?];
  factors = self->_factors;
  if (v6 + exponent)
  {
    exponent = [MEMORY[0x1E696AD98] numberWithInteger:v6 + exponent];
    [(NSMapTable *)factors setObject:exponent forKey:factorCopy];
  }

  else
  {
    [(NSMapTable *)factors removeObjectForKey:factorCopy];
  }
}

- (void)_multiplyByFactorization:(id)factorization
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45___HKFactorization__multiplyByFactorization___block_invoke;
  v3[3] = &unk_1E737FBD8;
  v3[4] = self;
  [factorization enumerateFactorsWithHandler:v3];
}

- (void)_raiseToExponent:(int64_t)exponent
{
  factors = self->_factors;
  if (exponent)
  {
    v6 = [(NSMapTable *)factors copy];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37___HKFactorization__raiseToExponent___block_invoke;
    v10[3] = &unk_1E737FC78;
    v7 = v6;
    v11 = v7;
    exponentCopy = exponent;
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