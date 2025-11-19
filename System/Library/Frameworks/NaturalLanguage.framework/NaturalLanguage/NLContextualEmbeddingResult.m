@interface NLContextualEmbeddingResult
- (NLContextualEmbeddingResult)initWithString:(id)a3 tokenDictionaries:(id)a4 data:(id)a5 language:(id)a6 tokenVectorDimension:(unint64_t)a7;
- (NSArray)tokenVectorAtIndex:(NSUInteger)characterIndex tokenRange:(NSRangePointer)tokenRange;
- (NSUInteger)sequenceLength;
- (id)_tokenVectorAtIndex:(unint64_t)a3;
- (void)enumerateTokenVectorsInRange:(NSRange)range usingBlock:(void *)block;
@end

@implementation NLContextualEmbeddingResult

- (NLContextualEmbeddingResult)initWithString:(id)a3 tokenDictionaries:(id)a4 data:(id)a5 language:(id)a6 tokenVectorDimension:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = NLContextualEmbeddingResult;
  v16 = [(NLContextualEmbeddingResult *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    string = v16->_string;
    v16->_string = v17;

    v19 = [v13 copy];
    tokenDictionaries = v16->_tokenDictionaries;
    v16->_tokenDictionaries = v19;

    v21 = [v14 copy];
    data = v16->_data;
    v16->_data = v21;

    v23 = [v15 copy];
    language = v16->_language;
    v16->_language = v23;

    v16->_tokenVectorDimension = a7;
  }

  return v16;
}

- (NSUInteger)sequenceLength
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_tokenDictionaries;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) objectForKey:{@"SubtokenRanges", v12}];
        v9 = v8;
        if (v8)
        {
          v5 += [v8 count];
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_tokenVectorAtIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(NSData *)self->_data bytes];
  tokenVectorDimension = self->_tokenVectorDimension;
  if (tokenVectorDimension)
  {
    v9 = v6;
    v10 = 0;
    v11 = 4 * a3;
    do
    {
      LODWORD(v7) = *&v9[4 * v10 + v11 * tokenVectorDimension];
      v12 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
      [v5 addObject:v12];

      ++v10;
      tokenVectorDimension = self->_tokenVectorDimension;
    }

    while (v10 < tokenVectorDimension);
  }

  return v5;
}

- (NSArray)tokenVectorAtIndex:(NSUInteger)characterIndex tokenRange:(NSRangePointer)tokenRange
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_tokenDictionaries;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  v29 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v23 = tokenRange;
    v6 = 0;
    v26 = 0;
    v30 = 0;
    v28 = *v36;
    while (2)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v35 + 1) + 8 * i) objectForKey:{@"SubtokenRanges", v23}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v32;
LABEL_8:
          v13 = 0;
          v14 = v6;
          v6 += v11;
          while (1)
          {
            if (*v32 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = [*(*(&v31 + 1) + 8 * v13) rangeValue];
            if (v15 <= characterIndex && v15 + v16 > characterIndex)
            {
              break;
            }

            ++v14;
            if (v11 == ++v13)
            {
              v11 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (v11)
              {
                goto LABEL_8;
              }

              goto LABEL_17;
            }
          }

          v18 = v15;
          v19 = v16;
          v20 = [(NLContextualEmbeddingResult *)self _tokenVectorAtIndex:v14];

          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v30 = v20;
            v26 = v19;
            v6 = v14;
            continue;
          }

          v24 = v18;
          goto LABEL_24;
        }

LABEL_17:
      }

      v29 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }

    v24 = 0x7FFFFFFFFFFFFFFFLL;
    v19 = v26;
    v20 = v30;
LABEL_24:
    tokenRange = v23;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (tokenRange)
  {
    tokenRange->location = v24;
    tokenRange->length = v19;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)enumerateTokenVectorsInRange:(NSRange)range usingBlock:(void *)block
{
  length = range.length;
  location = range.location;
  v43 = *MEMORY[0x1E69E9840];
  v29 = block;
  v40 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = self->_tokenDictionaries;
  v26 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v26)
  {
    v5 = 0;
    v25 = *v37;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v37 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v36 + 1) + 8 * v6);
      v8 = [v7 objectForKey:@"TokenRange"];
      v9 = [v8 rangeValue];
      v11 = v10;

      v12 = [v7 objectForKey:@"SubtokenRanges"];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v30 = v12;
      v13 = [v30 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v13)
      {
        v14 = v13;
        v27 = v6;
        v15 = *v33;
LABEL_8:
        v16 = 0;
        while (1)
        {
          v17 = v5;
          if (*v33 != v15)
          {
            objc_enumerationMutation(v30);
          }

          v18 = [*(*(&v32 + 1) + 8 * v16) rangeValue];
          v20 = v19;
          if (rangesMatch(location, length, v9, v11) && rangesMatch(location, length, v18, v20))
          {
            v21 = [(NLContextualEmbeddingResult *)self _tokenVectorAtIndex:v5];
            v29[2](v29, v21, v18, v20, &v40);
          }

          if (v40)
          {
            break;
          }

          ++v16;
          v5 = v17 + 1;
          if (v14 == v16)
          {
            v14 = [v30 countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (v14)
            {
              goto LABEL_8;
            }

            break;
          }
        }

        v5 = v17 + 1;
        v6 = v27;
      }

      v22 = v40;
      if (v22)
      {
        break;
      }

      if (++v6 == v26)
      {
        v26 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v26)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

@end