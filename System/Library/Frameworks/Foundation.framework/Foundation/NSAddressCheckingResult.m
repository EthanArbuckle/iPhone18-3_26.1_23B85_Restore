@interface NSAddressCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)a3;
- (NSAddressCheckingResult)initWithCoder:(id)a3;
- (NSAddressCheckingResult)initWithRange:(_NSRange)a3 components:(id)a4 underlyingResult:(void *)a5;
- (_NSRange)range;
- (id)resultByAdjustingRangesWithOffset:(int64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSAddressCheckingResult

- (NSAddressCheckingResult)initWithRange:(_NSRange)a3 components:(id)a4 underlyingResult:(void *)a5
{
  length = a3.length;
  location = a3.location;
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSAddressCheckingResult;
  v9 = [(NSAddressCheckingResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_range.location = location;
    v9->_range.length = length;
    v9->_components = [a4 copy];
    v10->_underlyingResult = a5;
  }

  return v10;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSAddressCheckingResult;
  [(NSAddressCheckingResult *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(NSAddressCheckingResult *)self components];
  v6 = [a3 allowsKeyedCoding];
  [(NSTextCheckingResult *)self encodeRangeWithCoder:a3];
  if (v6)
  {

    [a3 encodeObject:v5 forKey:@"NSAddressComponents"];
  }

  else
  {

    [a3 encodeObject:v5];
  }
}

- (NSAddressCheckingResult)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v7;
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [a3 decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, objc_opt_class(), 0), @"NSAddressComponents"}];
  }

  else
  {
    v12 = [a3 versionForClassName:@"NSTextCheckingResult"];
    if (v12 != 1)
    {
      v15 = v12;
      v16 = _NSFullMethodName(self, a2);
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v16, 1, v15);
      [(NSAddressCheckingResult *)self dealloc];
      return 0;
    }

    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v13;
    v11 = [a3 decodeObject];
  }

  return [(NSAddressCheckingResult *)self initWithRange:v6 components:v8, v11];
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
  v6 = [(NSAddressCheckingResult *)self range];
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

  v10 = [objc_alloc(objc_opt_class()) initWithRange:v9 components:v7 underlyingResult:{-[NSAddressCheckingResult components](self, "components"), -[NSAddressCheckingResult underlyingResult](self, "underlyingResult")}];

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