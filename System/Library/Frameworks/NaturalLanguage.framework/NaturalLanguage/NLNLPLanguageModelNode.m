@interface NLNLPLanguageModelNode
+ (id)conditionalProbabilitiesForStrings:(id)a3 modelState:(void *)a4 copyRequired:(BOOL)a5;
- (NLNLPLanguageModelNode)initWithTokenIDs:(id)a3;
- (id)_treeDescriptionWithPrefix:(id)a3;
- (id)description;
- (void)_addString:(id)a3 tokenIDs:(id)a4;
- (void)_evaluateChildrenWithModelState:(void *)a3 copyRequired:(BOOL)a4 probability:(double)a5 dictionary:(id)a6;
- (void)_setProbability:(double)a3 dictionary:(id)a4;
@end

@implementation NLNLPLanguageModelNode

- (NLNLPLanguageModelNode)initWithTokenIDs:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NLNLPLanguageModelNode;
  v5 = [(NLNLPLanguageModelNode *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    tokenIDs = v5->_tokenIDs;
    v5->_tokenIDs = v6;

    v8 = [MEMORY[0x1E695DFA8] set];
    strings = v5->_strings;
    v5->_strings = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    children = v5->_children;
    v5->_children = v10;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = NLNLPLanguageModelNode;
  v4 = [(NLNLPLanguageModelNode *)&v10 description];
  v5 = [(NSArray *)self->_tokenIDs componentsJoinedByString:@"-"];
  v6 = [v3 stringWithFormat:@"%@ <%@>", v4, v5];

  if ([(NSMutableSet *)self->_strings count])
  {
    v7 = [(NSMutableSet *)self->_strings allObjects];
    v8 = [v7 componentsJoinedByString:@"/"];
    [v6 appendFormat:@" <%@>", v8];
  }

  return v6;
}

- (id)_treeDescriptionWithPrefix:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AD60];
  v6 = [(NLNLPLanguageModelNode *)self description];
  v7 = [v5 stringWithFormat:@"%@%@", v4, v6];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_children;
  v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [(NSMutableDictionary *)self->_children objectForKey:*(*(&v18 + 1) + 8 * i)];
        v13 = [v4 stringByAppendingString:@"  "];
        v14 = [v12 _treeDescriptionWithPrefix:v13];
        [v7 appendFormat:@"\n%@", v14];
      }

      v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_addString:(id)a3 tokenIDs:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = [v6 firstObject];
    v8 = [(NSMutableDictionary *)self->_children objectForKey:v7];
    if (!v8)
    {
      v9 = [NLNLPLanguageModelNode alloc];
      v10 = [(NSArray *)self->_tokenIDs arrayByAddingObject:v7];
      v8 = [(NLNLPLanguageModelNode *)v9 initWithTokenIDs:v10];

      [(NSMutableDictionary *)self->_children setObject:v8 forKey:v7];
    }

    v11 = [v6 subarrayWithRange:{1, objc_msgSend(v6, "count") - 1}];
    [(NLNLPLanguageModelNode *)v8 _addString:v12 tokenIDs:v11];
  }

  else
  {
    [(NSMutableSet *)self->_strings addObject:v12];
  }
}

- (void)_setProbability:(double)a3 dictionary:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_strings;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = [NLProbabilityInfo alloc];
        v14 = [(NLProbabilityInfo *)v13 initWithProbability:0 flags:a3, v16];
        [v6 setObject:v14 forKey:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_evaluateChildrenWithModelState:(void *)a3 copyRequired:(BOOL)a4 probability:(double)a5 dictionary:(id)a6
{
  v32 = a4;
  v42 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = [(NSMutableDictionary *)self->_children allKeys];
  v11 = [v10 count];
  v34 = a3;
  v12 = CoreLMCopyConditionalProbabilities();
  if (v12)
  {
    v13 = v12;
    v30 = v10;
    if (v11 == CFArrayGetCount(v12))
    {
      v31 = v11;
      v33 = v9;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v14 = v10;
      v15 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v37;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v37 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = [(NSMutableDictionary *)self->_children objectForKey:*(*(&v36 + 1) + 8 * i), v30];
            v17 += [v20 isLeaf] ^ 1;
          }

          v16 = [v14 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v16);
      }

      else
      {
        v17 = 0;
      }

      v9 = v33;
      v21 = v31;
      if (v31)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = [v14 objectAtIndex:{v22, v30}];
          v25 = [(NSMutableDictionary *)self->_children objectForKey:v24];
          ValueAtIndex = CFArrayGetValueAtIndex(v13, v22);
          valuePtr = 0.0;
          if (CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr))
          {
            [v25 _setProbability:v9 dictionary:valuePtr * a5];
            if (([v25 isLeaf] & 1) == 0)
            {
              v27 = ++v23 < v17 || v32;
              v28 = v34;
              if (v27 == 1)
              {
                v28 = CoreLMCreateCopy();
              }

              if (v28)
              {
                v40 = v24;
                [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
                if (CoreLMUpdateWithContext())
                {
                  [v25 _evaluateChildrenWithModelState:v28 copyRequired:0 probability:v33 dictionary:valuePtr * a5];
                }

                if (v27)
                {
                  CFRelease(v28);
                }
              }

              v9 = v33;
              v21 = v31;
            }
          }

          ++v22;
        }

        while (v21 != v22);
      }
    }

    CFRelease(v13);
    v10 = v30;
  }

  v29 = *MEMORY[0x1E69E9840];
}

+ (id)conditionalProbabilitiesForStrings:(id)a3 modelState:(void *)a4 copyRequired:(BOOL)a5
{
  v5 = a5;
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  if (a4)
  {
    v27 = v5;
    v10 = [NLNLPLanguageModelNode alloc];
    v11 = [(NLNLPLanguageModelNode *)v10 initWithTokenIDs:MEMORY[0x1E695E0F0]];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          v18 = CoreLMCopyTokenIdsForText();
          [(NLNLPLanguageModelNode *)v11 _addString:v17 tokenIDs:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v14);
    }

    [(NLNLPLanguageModelNode *)v11 _setProbability:v9 dictionary:1.0];
    if (![(NLNLPLanguageModelNode *)v11 isLeaf])
    {
      [(NLNLPLanguageModelNode *)v11 _evaluateChildrenWithModelState:a4 copyRequired:v27 probability:v9 dictionary:1.0];
    }

    v7 = v28;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v7;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [v9 objectForKey:*(*(&v29 + 1) + 8 * j)];
        if (!v24)
        {
          v24 = [[NLProbabilityInfo alloc] initWithInvalidProbability];
        }

        [v8 addObject:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

@end