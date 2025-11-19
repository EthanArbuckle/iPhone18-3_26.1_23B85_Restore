@interface NSGrammarCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)a3;
- (NSGrammarCheckingResult)initWithCoder:(id)a3;
- (NSGrammarCheckingResult)initWithRange:(_NSRange)a3 details:(id)a4;
- (_NSRange)range;
- (id)resultByAdjustingRangesWithOffset:(int64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSGrammarCheckingResult

- (NSGrammarCheckingResult)initWithRange:(_NSRange)a3 details:(id)a4
{
  length = a3.length;
  location = a3.location;
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSGrammarCheckingResult;
  v7 = [(NSGrammarCheckingResult *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_range.location = location;
    v7->_range.length = length;
    v7->_details = [a4 copy];
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSGrammarCheckingResult;
  [(NSGrammarCheckingResult *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [(NSGrammarCheckingResult *)self grammarDetails];
  if ([a3 allowsKeyedCoding])
  {
    v22 = self;
    v23 = a3;
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v5;
    v27 = [v5 countByEnumeratingWithState:&v35 objects:v34 count:16];
    if (v27)
    {
      v25 = *v36;
      do
      {
        v6 = 0;
        do
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = v6;
          v7 = *(*(&v35 + 1) + 8 * v6);
          v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v9 = [v7 countByEnumeratingWithState:&v30 objects:v29 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v31;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v31 != v11)
                {
                  objc_enumerationMutation(v7);
                }

                v13 = *(*(&v30 + 1) + 8 * i);
                v14 = [(__CFString *)v13 isEqualToString:@"NSGrammarRange"];
                v15 = [v7 objectForKey:v13];
                v16 = v15;
                if (v14)
                {
                  v17 = [(NSValue *)v15 rangeValue];
                  v19 = v18;
                  [v8 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", v17), @"NSGrammarRangeLocation"}];
                  v16 = [NSNumber numberWithUnsignedInteger:v19];
                  v20 = v8;
                  v21 = @"NSGrammarRangeLength";
                }

                else
                {
                  v20 = v8;
                  v21 = v13;
                }

                [v20 setObject:v16 forKey:v21];
              }

              v10 = [v7 countByEnumeratingWithState:&v30 objects:v29 count:16];
            }

            while (v10);
          }

          [v26 addObject:v8];

          v6 = v28 + 1;
        }

        while (v28 + 1 != v27);
        v27 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
      }

      while (v27);
    }

    [(NSTextCheckingResult *)v22 encodeRangeWithCoder:v23];
    [v23 encodeObject:v26 forKey:@"NSModifiedGrammarDetails"];
  }

  else
  {
    [(NSTextCheckingResult *)self encodeRangeWithCoder:a3];

    [a3 encodeObject:v5];
  }
}

- (NSGrammarCheckingResult)initWithCoder:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  if ([a3 allowsKeyedCoding])
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v7;
    v9 = [a3 containsValueForKey:@"NSModifiedGrammarDetails"];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    if (v9)
    {
      v15 = [a3 decodeObjectOfClasses:v14 forKey:@"NSModifiedGrammarDetails"];
      v16 = [MEMORY[0x1E695DF70] array];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = v15;
      v38 = [v15 countByEnumeratingWithState:&v46 objects:v45 count:16];
      if (!v38)
      {
        return [(NSGrammarCheckingResult *)self initWithRange:v6 details:v8, v16];
      }

      v34 = v8;
      v36 = *v47;
      v37 = v16;
      while (1)
      {
        v17 = 0;
        do
        {
          if (*v47 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v39 = v17;
          v18 = *(*(&v46 + 1) + 8 * v17);
          v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v20 = [v18 countByEnumeratingWithState:&v41 objects:v40 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v42;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v42 != v22)
                {
                  objc_enumerationMutation(v18);
                }

                v24 = *(*(&v41 + 1) + 8 * i);
                if ([(__CFString *)v24 isEqualToString:@"NSGrammarRangeLocation"])
                {
                  v25 = +[NSValue valueWithRange:](NSValue, "valueWithRange:", [objc_msgSend(v18 objectForKey:{@"NSGrammarRangeLocation", "unsignedIntegerValue"}], objc_msgSend(objc_msgSend(v18, "objectForKey:", @"NSGrammarRangeLength"), "unsignedIntegerValue"));
                  v26 = v19;
                  v27 = @"NSGrammarRange";
                }

                else
                {
                  if (([(__CFString *)v24 isEqualToString:@"NSGrammarRangeLength"]& 1) != 0)
                  {
                    continue;
                  }

                  v25 = [v18 objectForKey:v24];
                  v26 = v19;
                  v27 = v24;
                }

                [v26 setObject:v25 forKey:v27];
              }

              v21 = [v18 countByEnumeratingWithState:&v41 objects:v40 count:16];
            }

            while (v21);
          }

          v16 = v37;
          [v37 addObject:v19];

          v17 = v39 + 1;
        }

        while (v39 + 1 != v38);
        v38 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
        if (!v38)
        {
          v8 = v34;
          return [(NSGrammarCheckingResult *)self initWithRange:v6 details:v8, v16];
        }
      }
    }

    v30 = [a3 decodeObjectOfClasses:v14 forKey:@"NSGrammarDetails"];
  }

  else
  {
    v28 = [a3 versionForClassName:@"NSTextCheckingResult"];
    if (v28 != 1)
    {
      v32 = v28;
      v33 = _NSFullMethodName(self, a2);
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v33, 1, v32);
      [(NSGrammarCheckingResult *)self dealloc];
      return 0;
    }

    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v29;
    v30 = [a3 decodeObject];
  }

  v16 = v30;
  return [(NSGrammarCheckingResult *)self initWithRange:v6 details:v8, v16];
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

- (id)resultByAdjustingRangesWithOffset:(int64_t)a3
{
  v6 = [(NSGrammarCheckingResult *)self range];
  v8 = v7;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3 < 0 && v6 < -a3)
    {
      v12 = v6;
      v13 = _NSFullMethodName(self, a2);
      v16.location = v12;
      v16.length = v8;
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v13, a3, NSStringFromRange(v16)), 0}];
      objc_exception_throw(v14);
    }

    v9 = v6 + a3;
  }

  v10 = [objc_alloc(objc_opt_class()) initWithRange:v9 details:{v7, -[NSGrammarCheckingResult grammarDetails](self, "grammarDetails")}];

  return v10;
}

- (BOOL)_adjustRangesWithOffset:(int64_t)a3
{
  location = self->_range.location;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3 < 0 && location < -a3)
    {
      p_range = &self->_range;
      v7 = _NSFullMethodName(self, a2);
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v7, a3, NSStringFromRange(*p_range)), 0}];
      objc_exception_throw(v8);
    }

    self->_range.location = location + a3;
  }

  return 1;
}

@end