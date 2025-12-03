@interface NSArray(NSKeyValueCoding)
- (NSDecimalNumber)_sumForKeyPath:()NSKeyValueCoding;
- (NSNumber)_countForKeyPath:()NSKeyValueCoding;
- (id)valueForKey:()NSKeyValueCoding;
- (id)valueForKeyPath:()NSKeyValueCoding;
- (uint64_t)_avgForKeyPath:()NSKeyValueCoding;
- (uint64_t)_distinctUnionOfArraysForKeyPath:()NSKeyValueCoding;
- (uint64_t)_distinctUnionOfObjectsForKeyPath:()NSKeyValueCoding;
- (uint64_t)_distinctUnionOfSetsForKeyPath:()NSKeyValueCoding;
- (uint64_t)setValue:()NSKeyValueCoding forKey:;
- (void)_maxForKeyPath:()NSKeyValueCoding;
- (void)_minForKeyPath:()NSKeyValueCoding;
- (void)_unionOfArraysForKeyPath:()NSKeyValueCoding;
- (void)_unionOfObjectsForKeyPath:()NSKeyValueCoding;
- (void)_unionOfSetsForKeyPath:()NSKeyValueCoding;
@end

@implementation NSArray(NSKeyValueCoding)

- (NSDecimalNumber)_sumForKeyPath:()NSKeyValueCoding
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0uLL;
  v14 = 0;
  v5 = +[NSDecimalNumber zero];
  if (v5)
  {
    [(NSDecimalNumber *)v5 decimalValue];
  }

  else
  {
    v13 = 0uLL;
    v14 = 0;
  }

  v6 = [self count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [self _valueForKeyPath:a3 ofObjectAtIndex:i];
      if (v9)
      {
        LODWORD(v12) = 0;
        [v9 decimalValue];
        _NSDecimalAdd(&v13, &v13, &v11, 3);
      }
    }
  }

  v11 = v13;
  LODWORD(v12) = v14;
  return [NSDecimalNumber decimalNumberWithDecimal:&v11];
}

- (uint64_t)_avgForKeyPath:()NSKeyValueCoding
{
  result = [self count];
  if (result)
  {
    v6 = result;
    v7 = [self _sumForKeyPath:a3];
    v8 = [NSDecimalNumber numberWithUnsignedInteger:v6];

    return [v7 decimalNumberByDividingBy:v8];
  }

  return result;
}

- (NSNumber)_countForKeyPath:()NSKeyValueCoding
{
  v1 = [self count];

  return [NSNumber numberWithInteger:v1];
}

- (void)_maxForKeyPath:()NSKeyValueCoding
{
  v5 = [self count];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  for (i = 0; i != v6; ++i)
  {
    v9 = [self _valueForKeyPath:a3 ofObjectAtIndex:i];
    if (v9)
    {
      v10 = v9;
      if (!v7 || [v7 compare:v9] == -1)
      {
        v7 = v10;
      }
    }
  }

  return v7;
}

- (void)_minForKeyPath:()NSKeyValueCoding
{
  v5 = [self count];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  for (i = 0; i != v6; ++i)
  {
    v9 = [self _valueForKeyPath:a3 ofObjectAtIndex:i];
    if (v9)
    {
      v10 = v9;
      if (!v7 || [v7 compare:v9] == 1)
      {
        v7 = v10;
      }
    }
  }

  return v7;
}

- (void)_unionOfObjectsForKeyPath:()NSKeyValueCoding
{
  v5 = [self count];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [self _valueForKeyPath:a3 ofObjectAtIndex:i];
      if (v8)
      {
        [v6 addObject:v8];
      }
    }
  }

  return v6;
}

- (void)_unionOfArraysForKeyPath:()NSKeyValueCoding
{
  v5 = [self count];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [self _valueForKeyPath:a3 ofObjectAtIndex:i];
      if (v8)
      {
        [v6 addObjectsFromArray:v8];
      }
    }
  }

  return v6;
}

- (void)_unionOfSetsForKeyPath:()NSKeyValueCoding
{
  v5 = [self count];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [self _valueForKeyPath:a3 ofObjectAtIndex:i];
      if (v8)
      {
        [v6 addObjectsFromArray:{objc_msgSend(v8, "allObjects")}];
      }
    }
  }

  return v6;
}

- (uint64_t)_distinctUnionOfArraysForKeyPath:()NSKeyValueCoding
{
  v1 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(self, "_unionOfArraysForKeyPath:")}];

  return [v1 allObjects];
}

- (uint64_t)_distinctUnionOfObjectsForKeyPath:()NSKeyValueCoding
{
  v1 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(self, "_unionOfObjectsForKeyPath:")}];

  return [v1 allObjects];
}

- (uint64_t)_distinctUnionOfSetsForKeyPath:()NSKeyValueCoding
{
  v5 = [self count];
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:v5];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [self _valueForKeyPath:a3 ofObjectAtIndex:i];
      if (v8)
      {
        [v6 unionSet:v8];
      }
    }
  }

  return [v6 allObjects];
}

- (id)valueForKey:()NSKeyValueCoding
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [a3 length];
  if (v5 && (v6 = v5, [a3 characterAtIndex:0] == 64) && (v7 = objc_msgSend(a3, "_newSubstringWithRange:zone:", 1, v6 - 1, 0)) != 0)
  {
    v8 = v7;
    v21.receiver = self;
    v21.super_class = NSArray_0;
    v9 = objc_msgSendSuper2(&v21, sel_valueForKey_, v7);
  }

  else
  {
    v10 = [self count];
    v11 = NSAllocateObjectArray(v10);
    null = [MEMORY[0x1E695DFB0] null];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = [self countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v13)
    {
      v14 = 0;
      v15 = *v24;
      do
      {
        v16 = 0;
        v17 = v14;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(self);
          }

          v18 = [*(*(&v23 + 1) + 8 * v16) valueForKey:a3];
          if (v18)
          {
            v19 = v18;
          }

          else
          {
            v19 = null;
          }

          v14 = v17 + 1;
          v11[v17] = v19;
          ++v16;
          ++v17;
        }

        while (v13 != v16);
        v13 = [self countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v13);
    }

    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v11 count:v10];
    free(v11);
  }

  return v9;
}

- (uint64_t)setValue:()NSKeyValueCoding forKey:
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [self countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(self);
        }

        [*(*(&v12 + 1) + 8 * v10++) setValue:a3 forKey:a4];
      }

      while (v8 != v10);
      result = [self countByEnumeratingWithState:&v12 objects:v11 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

- (id)valueForKeyPath:()NSKeyValueCoding
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [a3 length];
  if (v5)
  {
    v6 = v5;
    if ([a3 characterAtIndex:0] == 64)
    {
      v7 = [a3 rangeOfString:@"." options:2 range:{0, v6}];
      if (v8)
      {
        v9 = v7 + 1;
        v10 = [a3 _newSubstringWithRange:1 zone:{v7 - 1, 0}];
        v11 = [a3 _newSubstringWithRange:v9 zone:{v6 - v9, 0}];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 lengthOfBytesUsingEncoding:4];
          v14 = MEMORY[0x1EEE9AC00](v13);
          v16 = &v25 - v15;
          [v10 getCString:&v25 - v15 maxLength:v17 + 1 encoding:{4, v14}];
          v18 = objc_opt_class();
          if (!NSKeyValueMethodForPattern(v18, "%sForKeyPath:", v16))
          {
            v19 = objc_opt_class();
            if (!NSKeyValueMethodForPattern(v19, "_%sForKeyPath:", v16))
            {

              v23 = v10;
              v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"[<%@ %p> valueForKeyPath:]: this class does not implement the %@ operation.", objc_opt_class(), self, v10), 0}];
              objc_exception_throw(v24);
            }
          }

          method_invoke();
          v21 = v20;

          goto LABEL_11;
        }
      }

      else
      {
        v10 = [a3 _newSubstringWithRange:1 zone:{v6 - 1, 0}];
      }

      v27.receiver = self;
      v27.super_class = NSArray_0;
      v21 = objc_msgSendSuper2(&v27, sel_valueForKey_, v10);
LABEL_11:

      return v21;
    }
  }

  v26.receiver = self;
  v26.super_class = NSArray_0;
  return objc_msgSendSuper2(&v26, sel_valueForKeyPath_, a3);
}

@end