@interface NSTransitInformationCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)offset;
- (NSTransitInformationCheckingResult)initWithCoder:(id)coder;
- (NSTransitInformationCheckingResult)initWithRange:(_NSRange)range components:(id)components underlyingResult:(void *)result;
- (_NSRange)range;
- (id)resultByAdjustingRangesWithOffset:(int64_t)offset;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSTransitInformationCheckingResult

- (NSTransitInformationCheckingResult)initWithRange:(_NSRange)range components:(id)components underlyingResult:(void *)result
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSTransitInformationCheckingResult;
  v9 = [(NSTransitInformationCheckingResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_range.location = location;
    v9->_range.length = length;
    v9->_components = [components copy];
    v10->_underlyingResult = result;
  }

  return v10;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSTransitInformationCheckingResult;
  [(NSTransitInformationCheckingResult *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  components = [(NSTransitInformationCheckingResult *)self components];
  allowsKeyedCoding = [coder allowsKeyedCoding];
  [(NSTextCheckingResult *)self encodeRangeWithCoder:coder];
  if (allowsKeyedCoding)
  {

    [coder encodeObject:components forKey:@"NSTransitInformationComponents"];
  }

  else
  {

    [coder encodeObject:components];
  }
}

- (NSTransitInformationCheckingResult)initWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:coder];
    v8 = v7;
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    decodeObject = [coder decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, objc_opt_class(), 0), @"NSTransitInformationComponents"}];
  }

  else
  {
    v12 = [coder versionForClassName:@"NSTextCheckingResult"];
    if (v12 != 1)
    {
      v15 = v12;
      v16 = _NSFullMethodName(self, a2);
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v16, 1, v15);
      [(NSTransitInformationCheckingResult *)self dealloc];
      return 0;
    }

    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:coder];
    v8 = v13;
    decodeObject = [coder decodeObject];
  }

  return [(NSTransitInformationCheckingResult *)self initWithRange:v6 components:v8, decodeObject];
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
  range = [(NSTransitInformationCheckingResult *)self range];
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

  v10 = [objc_alloc(objc_opt_class()) initWithRange:v9 components:v7 underlyingResult:{-[NSTransitInformationCheckingResult components](self, "components"), -[NSTransitInformationCheckingResult underlyingResult](self, "underlyingResult")}];

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