@interface INParameter
+ (INParameter)parameterForClass:(Class)aClass keyPath:(NSString *)keyPath;
- (BOOL)isEqual:(id)a3;
- (INParameter)init;
- (INParameter)initWithCoder:(id)a3;
- (NSString)_subscriptedKeyPath;
- (NSUInteger)indexForSubKeyPath:(NSString *)subKeyPath;
- (id)_dictionaryRepresentation;
- (id)_parameterValueForParameterizedObject:(id)a3;
- (id)_sanitizedKeyPathForKeyPath:(id)a3 removingSubscripts:(BOOL)a4;
- (id)_valueOfObject:(id)a3 forRemainingKeyPath:(id)a4 inFullyQualifiedKeyPath:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_setIndexesForKeyPathWithSubscripts:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setIndex:(NSUInteger)index forSubKeyPath:(NSString *)subKeyPath;
@end

@implementation INParameter

- (void)encodeWithCoder:(id)a3
{
  parameterClass = self->_parameterClass;
  v6 = a3;
  v5 = NSStringFromClass(parameterClass);
  [v6 encodeObject:v5 forKey:@"parameterClass"];

  [v6 encodeObject:self->_parameterKeyPath forKey:@"parameterKeyPath"];
  [v6 encodeObject:self->_indexesForSubKeyPaths forKey:@"_indexesForSubKeyPaths"];
}

- (INParameter)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = INParameter;
  v5 = [(INParameter *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterClass"];
    v7 = NSClassFromString(v6);
    parameterClass = v5->_parameterClass;
    v5->_parameterClass = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterKeyPath"];
    parameterKeyPath = v5->_parameterKeyPath;
    v5->_parameterKeyPath = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"_indexesForSubKeyPaths"];
    indexesForSubKeyPaths = v5->_indexesForSubKeyPaths;
    v5->_indexesForSubKeyPaths = v15;
  }

  return v5;
}

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromClass([(INParameter *)self parameterClass]);
  v4 = v3;
  v5 = @"(nil)";
  if (v3)
  {
    v5 = v3;
  }

  v11[0] = @"parameterKeyPath (subscripted)";
  v6 = v5;
  v7 = [(INParameter *)self _subscriptedKeyPath];
  v11[1] = @"parameterClass";
  v12[0] = v7;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INParameter;
  v6 = [(INParameter *)&v11 description];
  v7 = [(INParameter *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = NSStringFromClass([(INParameter *)self parameterClass]);
  v6 = [v5 copyWithZone:a3];
  v7 = NSClassFromString(v6);
  v8 = [(INParameter *)self parameterKeyPath];
  v9 = [v8 copyWithZone:a3];
  v10 = [INParameter parameterForClass:v7 keyPath:v9];

  return v10;
}

- (unint64_t)hash
{
  v3 = NSStringFromClass([(INParameter *)self parameterClass]);
  v4 = [v3 hash];
  v5 = [(INParameter *)self parameterKeyPath];
  v6 = [v5 hash];
  v7 = [(INParameter *)self _indexesForSubKeyPaths];
  v8 = v6 ^ [v7 hash];

  return v8 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = NSStringFromClass([v4 parameterClass]);
    v6 = NSStringFromClass([(INParameter *)self parameterClass]);
    if ([v5 isEqualToString:v6])
    {
      v7 = [v4 parameterKeyPath];
      v8 = [(INParameter *)self parameterKeyPath];
      if ([v7 isEqualToString:v8])
      {
        v9 = [v4 _indexesForSubKeyPaths];
        v10 = [(INParameter *)self _indexesForSubKeyPaths];
        v11 = [v9 isEqualToDictionary:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (INParameter)init
{
  v6.receiver = self;
  v6.super_class = INParameter;
  v2 = [(INParameter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    indexesForSubKeyPaths = v2->_indexesForSubKeyPaths;
    v2->_indexesForSubKeyPaths = v3;
  }

  return v2;
}

- (id)_parameterValueForParameterizedObject:(id)a3
{
  v4 = a3;
  v5 = [(INParameter *)self parameterKeyPath];
  v6 = [(INParameter *)self parameterKeyPath];
  v7 = [(INParameter *)self _valueOfObject:v4 forRemainingKeyPath:v5 inFullyQualifiedKeyPath:v6];

  return v7;
}

- (void)_setIndexesForKeyPathWithSubscripts:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = v3;
  obj = [v3 componentsSeparatedByString:@"."];
  v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    v8 = 0x1E696A000uLL;
    v28 = v4;
    v29 = *v34;
    do
    {
      v9 = 0;
      v31 = v6;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v11 = [*(v8 + 2824) characterSetWithCharactersInString:@"[]"];
        v12 = [v10 componentsSeparatedByCharactersInSet:v11];

        v13 = [v12 firstObject];
        [v4 addObject:v13];
        if ([v12 count] >= 2)
        {
          v14 = [v12 objectAtIndexedSubscript:1];
          v15 = [v4 componentsJoinedByString:@"."];
          v16 = [v14 integerValue];
          v17 = v8;
          v18 = [*(v8 + 2824) decimalDigitCharacterSet];
          v19 = [v18 invertedSet];
          v20 = [v14 rangeOfCharacterFromSet:v19];

          if (v20 != 0x7FFFFFFFFFFFFFFFLL || v16 < 0)
          {
            v22 = MEMORY[0x1E695DF30];
            v23 = *MEMORY[0x1E695D930];
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid index <%@> for key path <%@>", v14, v15];
            v25 = [v22 exceptionWithName:v23 reason:v24 userInfo:0];
            v26 = v25;

            objc_exception_throw(v25);
          }

          [(INParameter *)self setIndex:v16 forSubKeyPath:v15];

          v4 = v28;
          v7 = v29;
          v8 = v17;
          v6 = v31;
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (NSString)_subscriptedKeyPath
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:self->_parameterKeyPath];
  v4 = [(NSMutableDictionary *)self->_indexesForSubKeyPaths allKeys];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_53416];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = MEMORY[0x1E696AEC0];
        v12 = MEMORY[0x1E696AD98];
        v13 = [(NSMutableDictionary *)self->_indexesForSubKeyPaths objectForKey:v10];
        v14 = [v12 numberWithInteger:{objc_msgSend(v13, "integerValue")}];
        v15 = [v11 stringWithFormat:@"%@[%@]", v10, v14];
        [v3 replaceOccurrencesOfString:v10 withString:v15 options:8 range:{0, objc_msgSend(v3, "length")}];
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v16 = [v3 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t __34__INParameter__subscriptedKeyPath__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(a3, "length")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 length];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (id)_sanitizedKeyPathForKeyPath:(id)a3 removingSubscripts:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 componentsSeparatedByString:@"."];
  v8 = [v7 mutableCopy];

  v9 = [v8 firstObject];
  v10 = NSStringFromClass([(INParameter *)self parameterClass]);
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    [v8 removeObject:v9];
    v12 = [v8 componentsJoinedByString:@"."];
  }

  else
  {
    v12 = v6;
  }

  v13 = v12;
  if (v4)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__INParameter__sanitizedKeyPathForKeyPath_removingSubscripts___block_invoke;
    v17[3] = &unk_1E7281238;
    v14 = v8;
    v18 = v14;
    [v14 enumerateObjectsUsingBlock:v17];
    v15 = [v14 componentsJoinedByString:@"."];

    v13 = v15;
  }

  return v13;
}

void __62__INParameter__sanitizedKeyPathForKeyPath_removingSubscripts___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [a2 componentsSeparatedByString:@"["];
  v5 = [v6 firstObject];
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
}

- (id)_valueOfObject:(id)a3 forRemainingKeyPath:(id)a4 inFullyQualifiedKeyPath:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 componentsSeparatedByString:@"."];
  v11 = [v10 mutableCopy];

  v12 = [v11 firstObject];
  [v11 removeObject:v12];
  v13 = [v9 rangeOfString:v12];
  v15 = v13 + v14;
  if (v13 + v14 >= 0 && v15 <= [v9 length])
  {
    v17 = [v9 substringToIndex:v15];
    if (v17)
    {
      v16 = [(NSMutableDictionary *)self->_indexesForSubKeyPaths objectForKey:v17];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v18 = [v26 valueForKey:v12];
  v19 = v18;
  if (v16)
  {
    v20 = [v18 objectAtIndex:{objc_msgSend(v16, "unsignedIntegerValue")}];
  }

  else
  {
    v20 = v18;
  }

  v21 = v20;
  if ([v11 count])
  {
    v22 = [v11 componentsJoinedByString:@"."];
    v23 = [(INParameter *)self _valueOfObject:v21 forRemainingKeyPath:v22 inFullyQualifiedKeyPath:v9];

    v21 = v23;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v21;
}

- (NSUInteger)indexForSubKeyPath:(NSString *)subKeyPath
{
  v3 = [(NSMutableDictionary *)self->_indexesForSubKeyPaths objectForKey:subKeyPath];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)setIndex:(NSUInteger)index forSubKeyPath:(NSString *)subKeyPath
{
  v6 = [(INParameter *)self _sanitizedKeyPathForKeyPath:subKeyPath removingSubscripts:1];
  if (v6)
  {
    indexesForSubKeyPaths = self->_indexesForSubKeyPaths;
    v9 = v6;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    [(NSMutableDictionary *)indexesForSubKeyPaths setValue:v8 forKey:v9];

    v6 = v9;
  }
}

+ (INParameter)parameterForClass:(Class)aClass keyPath:(NSString *)keyPath
{
  v5 = keyPath;
  v6 = objc_alloc_init(INParameter);
  [(INParameter *)v6 setParameterClass:aClass];
  v7 = [(INParameter *)v6 _sanitizedKeyPathForKeyPath:v5 removingSubscripts:1];
  if (v7)
  {
    [(INParameter *)v6 setParameterKeyPath:v7];
    v8 = [(INParameter *)v6 _sanitizedKeyPathForKeyPath:v5 removingSubscripts:0];
    [(INParameter *)v6 _setIndexesForKeyPathWithSubscripts:v8];
  }

  else
  {
    v8 = v6;
    v6 = 0;
  }

  return v6;
}

@end