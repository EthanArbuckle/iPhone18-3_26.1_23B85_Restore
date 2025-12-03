@interface NSSet(NSKeyValueCoding)
- (NSDecimalNumber)_sumForKeyPath:()NSKeyValueCoding;
- (NSNumber)_countForKeyPath:()NSKeyValueCoding;
- (id)valueForKey:()NSKeyValueCoding;
- (id)valueForKeyPath:()NSKeyValueCoding;
- (uint64_t)_avgForKeyPath:()NSKeyValueCoding;
- (uint64_t)setValue:()NSKeyValueCoding forKey:;
- (void)_distinctUnionOfArraysForKeyPath:()NSKeyValueCoding;
- (void)_distinctUnionOfObjectsForKeyPath:()NSKeyValueCoding;
- (void)_distinctUnionOfSetsForKeyPath:()NSKeyValueCoding;
- (void)_maxForKeyPath:()NSKeyValueCoding;
- (void)_minForKeyPath:()NSKeyValueCoding;
@end

@implementation NSSet(NSKeyValueCoding)

- (NSDecimalNumber)_sumForKeyPath:()NSKeyValueCoding
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0uLL;
  v20 = 0;
  v5 = +[NSDecimalNumber zero];
  if (v5)
  {
    [(NSDecimalNumber *)v5 decimalValue];
  }

  else
  {
    v19 = 0uLL;
    v20 = 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [self countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(self);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) valueForKeyPath:a3];
        if (v10)
        {
          LODWORD(v13) = 0;
          [v10 decimalValue];
          _NSDecimalAdd(&v19, &v19, &v12, 3);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [self countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }

  v12 = v19;
  LODWORD(v13) = v20;
  return [NSDecimalNumber decimalNumberWithDecimal:&v12];
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
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [self countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v15;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(self);
      }

      v10 = [*(*(&v14 + 1) + 8 * i) valueForKeyPath:a3];
      if (v10)
      {
        v11 = v10;
        if (!v7 || [v7 compare:v10] == -1)
        {
          v7 = v11;
        }
      }
    }

    v6 = [self countByEnumeratingWithState:&v14 objects:v13 count:16];
  }

  while (v6);
  return v7;
}

- (void)_minForKeyPath:()NSKeyValueCoding
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [self countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v15;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(self);
      }

      v10 = [*(*(&v14 + 1) + 8 * i) valueForKeyPath:a3];
      if (v10)
      {
        v11 = v10;
        if (!v7 || [v7 compare:v10] == 1)
        {
          v7 = v11;
        }
      }
    }

    v6 = [self countByEnumeratingWithState:&v14 objects:v13 count:16];
  }

  while (v6);
  return v7;
}

- (void)_distinctUnionOfArraysForKeyPath:()NSKeyValueCoding
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(self, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [self countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(self);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) valueForKeyPath:a3];
        if (v10)
        {
          [v5 addObjectsFromArray:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [self countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)_distinctUnionOfObjectsForKeyPath:()NSKeyValueCoding
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(self, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [self countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(self);
        }

        [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v9++), "valueForKeyPath:", a3)}];
      }

      while (v7 != v9);
      v7 = [self countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  return v5;
}

- (void)_distinctUnionOfSetsForKeyPath:()NSKeyValueCoding
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(self, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [self countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(self);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) valueForKeyPath:a3];
        if (v10)
        {
          [v5 unionSet:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [self countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)valueForKey:()NSKeyValueCoding
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [a3 length];
  if (v5 && (v6 = v5, [a3 characterAtIndex:0] == 64) && (v7 = objc_msgSend(a3, "_newSubstringWithRange:zone:", 1, v6 - 1, 0)) != 0)
  {
    v8 = v7;
    v17.receiver = self;
    v17.super_class = NSSet_0;
    v9 = objc_msgSendSuper2(&v17, sel_valueForKey_, v7);
  }

  else
  {
    v10 = NSAllocateObjectArray([self count]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = 0;
    v12 = [self countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(self);
          }

          v15 = [*(*(&v19 + 1) + 8 * v14) valueForKey:a3];
          if (v15)
          {
            v10[v11++] = v15;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [self countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v12);
    }

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v10 count:v11];
    free(v10);
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
      v27.super_class = NSSet_0;
      v21 = objc_msgSendSuper2(&v27, sel_valueForKey_, v10);
LABEL_11:

      return v21;
    }
  }

  v26.receiver = self;
  v26.super_class = NSSet_0;
  return objc_msgSendSuper2(&v26, sel_valueForKeyPath_, a3);
}

@end