@interface NSComplexRegularExpressionCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)a3;
- (NSComplexRegularExpressionCheckingResult)initWithRangeArray:(id)a3 regularExpression:(id)a4;
- (NSComplexRegularExpressionCheckingResult)initWithRanges:(_NSRange *)a3 count:(unint64_t)a4 regularExpression:(id)a5;
- (_NSRange)range;
- (_NSRange)rangeAtIndex:(unint64_t)a3;
- (void)dealloc;
@end

@implementation NSComplexRegularExpressionCheckingResult

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSComplexRegularExpressionCheckingResult;
  [(NSComplexRegularExpressionCheckingResult *)&v3 dealloc];
}

- (NSComplexRegularExpressionCheckingResult)initWithRanges:(_NSRange *)a3 count:(unint64_t)a4 regularExpression:(id)a5
{
  v9 = [MEMORY[0x1E695DF70] array];
  if (a4)
  {
    p_length = &a3->length;
    do
    {
      [v9 addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:", *(p_length - 1), *p_length)}];
      p_length += 2;
      --a4;
    }

    while (a4);
  }

  return [(NSComplexRegularExpressionCheckingResult *)self initWithRangeArray:v9 regularExpression:a5];
}

- (NSComplexRegularExpressionCheckingResult)initWithRangeArray:(id)a3 regularExpression:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (![a3 count])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: must have at least one range", _NSFullMethodName(self, a2)), 0}];
    objc_exception_throw(v10);
  }

  v11.receiver = self;
  v11.super_class = NSComplexRegularExpressionCheckingResult;
  v8 = [(NSComplexRegularExpressionCheckingResult *)&v11 init];
  if (v8)
  {
    v8->_regularExpression = [a4 copy];
    v8->_rangeArray = [a3 copy];
  }

  return v8;
}

- (_NSRange)range
{
  v2 = [(NSArray *)self->_rangeArray objectAtIndex:0];

  v3 = [v2 rangeValue];
  result.length = v4;
  result.location = v3;
  return result;
}

- (BOOL)_adjustRangesWithOffset:(int64_t)a3
{
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(NSComplexRegularExpressionCheckingResult *)self numberOfRanges];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [(NSComplexRegularExpressionCheckingResult *)self rangeAtIndex:i];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (a3 < 0 && v10 < -a3)
        {
          v13 = v10;
          v14 = self;
          v15 = v11;
          v16 = _NSFullMethodName(v14, a2);
          v18.location = v13;
          v18.length = v15;
          v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v16, a3, NSStringFromRange(v18)), 0}];
          objc_exception_throw(v17);
        }

        [v6 addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:", v10 + a3, v11)}];
      }
    }
  }

  self->_rangeArray = v6;
  return 1;
}

- (_NSRange)rangeAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_rangeArray objectAtIndex:a3];

  v4 = [v3 rangeValue];
  result.length = v5;
  result.location = v4;
  return result;
}

@end