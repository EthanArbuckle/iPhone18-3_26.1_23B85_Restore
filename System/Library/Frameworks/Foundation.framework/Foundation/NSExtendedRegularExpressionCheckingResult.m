@interface NSExtendedRegularExpressionCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)a3;
- (NSExtendedRegularExpressionCheckingResult)initWithRangeArray:(id)a3 regularExpression:(id)a4;
- (NSExtendedRegularExpressionCheckingResult)initWithRanges:(_NSRange *)a3 count:(unint64_t)a4 regularExpression:(id)a5;
- (_NSRange)range;
- (_NSRange)rangeAtIndex:(unint64_t)a3;
- (id)rangeArray;
- (unint64_t)numberOfRanges;
- (void)dealloc;
@end

@implementation NSExtendedRegularExpressionCheckingResult

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSExtendedRegularExpressionCheckingResult;
  [(NSExtendedRegularExpressionCheckingResult *)&v3 dealloc];
}

- (unint64_t)numberOfRanges
{
  p_length = &self->_ranges[1].length;
  for (result = 1; result != 7; ++result)
  {
    if (*(p_length - 1) == 0x7FFFFFFFFFFFFFFFLL && *p_length == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    p_length += 2;
  }

  return result;
}

- (_NSRange)range
{
  ranges = self->_ranges;
  location = self->_ranges[0].location;
  length = ranges->length;
  result.length = length;
  result.location = location;
  return result;
}

- (NSExtendedRegularExpressionCheckingResult)initWithRanges:(_NSRange *)a3 count:(unint64_t)a4 regularExpression:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  if (a4 - 8 <= 0xFFFFFFFFFFFFFFF8)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: must have 1-7 ranges", _NSFullMethodName(self, a2)), 0}];
    objc_exception_throw(v13);
  }

  v14.receiver = self;
  v14.super_class = NSExtendedRegularExpressionCheckingResult;
  v8 = [(NSExtendedRegularExpressionCheckingResult *)&v14 init];
  if (v8)
  {
    v8->_regularExpression = [a5 copy];
    ranges = v8->_ranges;
    v10 = a4;
    do
    {
      v11 = *a3++;
      *ranges++ = v11;
      --v10;
    }

    while (v10);
    if (a4 <= 6)
    {
      memset_pattern16(&v8->_ranges[a4], &unk_181445CA0, 112 - 16 * a4);
    }
  }

  return v8;
}

- (NSExtendedRegularExpressionCheckingResult)initWithRangeArray:(id)a3 regularExpression:(id)a4
{
  v15[13] = *MEMORY[0x1E69E9840];
  v7 = [a3 count];
  v8 = v7;
  if (v7 >= 7)
  {
    v9 = 7;
  }

  else
  {
    v9 = v7;
  }

  if (v7)
  {
    v10 = 0;
    v11 = v15;
    do
    {
      *(v11 - 1) = [objc_msgSend(a3 objectAtIndex:{v10), "rangeValue"}];
      *v11 = v12;
      ++v10;
      v11 += 2;
    }

    while (v9 != v10);
  }

  return [(NSExtendedRegularExpressionCheckingResult *)self initWithRanges:v14 count:v8 regularExpression:a4];
}

- (BOOL)_adjustRangesWithOffset:(int64_t)a3
{
  v3 = 0;
  for (i = self->_ranges; ; ++i)
  {
    location = i->location;
    if (i->location != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v3 > 5 || i->length == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 1;
    }

LABEL_9:
    ++v3;
  }

  if (a3 < 0 && location < -a3)
  {
    v8 = i;
    v9 = _NSFullMethodName(self, a2);
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v9, a3, NSStringFromRange(*v8)), 0}];
    objc_exception_throw(v10);
  }

  i->location = location + a3;
  if (v3 <= 5)
  {
    goto LABEL_9;
  }

  return 1;
}

- (_NSRange)rangeAtIndex:(unint64_t)a3
{
  length = 0x7FFFFFFFFFFFFFFFLL;
  location = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 <= 6)
  {
    v9 = &self->_ranges[a3];
    location = v9->location;
    length = v9->length;
  }

  if (location == 0x7FFFFFFFFFFFFFFFLL && length == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: index %lu out of range", _NSFullMethodName(self, a2), a3, v4, v3, v5, v6), 0}];
    objc_exception_throw(v12);
  }

  v10 = location;
  v11 = length;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)rangeArray
{
  v3 = [MEMORY[0x1E695DF70] array];
  p_length = &self->_ranges[0].length;
  v5 = 7;
  do
  {
    if (*(p_length - 1) == 0x7FFFFFFFFFFFFFFFLL && *p_length == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    p_length += 2;
    [v3 addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:")}];
    --v5;
  }

  while (v5);
  return v3;
}

@end