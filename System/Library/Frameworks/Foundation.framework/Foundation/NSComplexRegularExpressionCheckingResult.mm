@interface NSComplexRegularExpressionCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)offset;
- (NSComplexRegularExpressionCheckingResult)initWithRangeArray:(id)array regularExpression:(id)expression;
- (NSComplexRegularExpressionCheckingResult)initWithRanges:(_NSRange *)ranges count:(unint64_t)count regularExpression:(id)expression;
- (_NSRange)range;
- (_NSRange)rangeAtIndex:(unint64_t)index;
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

- (NSComplexRegularExpressionCheckingResult)initWithRanges:(_NSRange *)ranges count:(unint64_t)count regularExpression:(id)expression
{
  array = [MEMORY[0x1E695DF70] array];
  if (count)
  {
    p_length = &ranges->length;
    do
    {
      [array addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:", *(p_length - 1), *p_length)}];
      p_length += 2;
      --count;
    }

    while (count);
  }

  return [(NSComplexRegularExpressionCheckingResult *)self initWithRangeArray:array regularExpression:expression];
}

- (NSComplexRegularExpressionCheckingResult)initWithRangeArray:(id)array regularExpression:(id)expression
{
  v12 = *MEMORY[0x1E69E9840];
  if (![array count])
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: must have at least one range", _NSFullMethodName(self, a2)), 0}];
    objc_exception_throw(v10);
  }

  v11.receiver = self;
  v11.super_class = NSComplexRegularExpressionCheckingResult;
  v8 = [(NSComplexRegularExpressionCheckingResult *)&v11 init];
  if (v8)
  {
    v8->_regularExpression = [expression copy];
    v8->_rangeArray = [array copy];
  }

  return v8;
}

- (_NSRange)range
{
  v2 = [(NSArray *)self->_rangeArray objectAtIndex:0];

  rangeValue = [v2 rangeValue];
  result.length = v4;
  result.location = rangeValue;
  return result;
}

- (BOOL)_adjustRangesWithOffset:(int64_t)offset
{
  array = [MEMORY[0x1E695DF70] array];
  numberOfRanges = [(NSComplexRegularExpressionCheckingResult *)self numberOfRanges];
  if (numberOfRanges)
  {
    v8 = numberOfRanges;
    for (i = 0; i != v8; ++i)
    {
      v10 = [(NSComplexRegularExpressionCheckingResult *)self rangeAtIndex:i];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (offset < 0 && v10 < -offset)
        {
          v13 = v10;
          selfCopy = self;
          v15 = v11;
          v16 = _NSFullMethodName(selfCopy, a2);
          v18.location = v13;
          v18.length = v15;
          v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v16, offset, NSStringFromRange(v18)), 0}];
          objc_exception_throw(v17);
        }

        [array addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:", v10 + offset, v11)}];
      }
    }
  }

  self->_rangeArray = array;
  return 1;
}

- (_NSRange)rangeAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_rangeArray objectAtIndex:index];

  rangeValue = [v3 rangeValue];
  result.length = v5;
  result.location = rangeValue;
  return result;
}

@end