@interface NSSpellCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)offset;
- (NSSpellCheckingResult)initWithCoder:(id)coder;
- (NSSpellCheckingResult)initWithRange:(_NSRange)range;
- (_NSRange)range;
- (id)resultByAdjustingRangesWithOffset:(int64_t)offset;
@end

@implementation NSSpellCheckingResult

- (NSSpellCheckingResult)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSSpellCheckingResult;
  result = [(NSSpellCheckingResult *)&v6 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
  }

  return result;
}

- (NSSpellCheckingResult)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) != 0 || (v6 = objc_msgSend(coder, "versionForClassName:", @"NSTextCheckingResult"), v6 == 1))
  {
    v8 = [(NSTextCheckingResult *)self decodeRangeWithCoder:coder];

    return [(NSSpellCheckingResult *)self initWithRange:v8, v7];
  }

  else
  {
    v10 = v6;
    v11 = _NSFullMethodName(self, a2);
    NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v11, 1, v10);
    [(NSSpellCheckingResult *)self dealloc];
    return 0;
  }
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

- (id)resultByAdjustingRangesWithOffset:(int64_t)offset
{
  range = [(NSSpellCheckingResult *)self range];
  v8 = v7;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (range != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (offset < 0 && range < -offset)
    {
      v12 = range;
      v13 = _NSFullMethodName(self, a2);
      v16.location = v12;
      v16.length = v8;
      v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v13, offset, NSStringFromRange(v16)), 0}];
      objc_exception_throw(v14);
    }

    v9 = range + offset;
  }

  v10 = [objc_alloc(objc_opt_class()) initWithRange:{v9, v7}];

  return v10;
}

- (BOOL)_adjustRangesWithOffset:(int64_t)offset
{
  location = self->_range.location;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (offset < 0 && location < -offset)
    {
      p_range = &self->_range;
      v7 = _NSFullMethodName(self, a2);
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v7, offset, NSStringFromRange(*p_range)), 0}];
      objc_exception_throw(v8);
    }

    self->_range.location = location + offset;
  }

  return 1;
}

@end