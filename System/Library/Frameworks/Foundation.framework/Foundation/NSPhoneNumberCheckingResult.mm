@interface NSPhoneNumberCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)offset;
- (NSPhoneNumberCheckingResult)initWithCoder:(id)coder;
- (NSPhoneNumberCheckingResult)initWithRange:(_NSRange)range phoneNumber:(id)number underlyingResult:(void *)result;
- (_NSRange)range;
- (id)description;
- (id)resultByAdjustingRangesWithOffset:(int64_t)offset;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSPhoneNumberCheckingResult

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSPhoneNumberCheckingResult;
  [(NSPhoneNumberCheckingResult *)&v3 dealloc];
}

- (NSPhoneNumberCheckingResult)initWithRange:(_NSRange)range phoneNumber:(id)number underlyingResult:(void *)result
{
  length = range.length;
  location = range.location;
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSPhoneNumberCheckingResult;
  v9 = [(NSPhoneNumberCheckingResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_range.location = location;
    v9->_range.length = length;
    v9->_phoneNumber = [number copy];
    v10->_underlyingResult = result;
  }

  return v10;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSPhoneNumberCheckingResult;
  return [NSString stringWithFormat:@"%@{%@}", [(NSTextCheckingResult *)&v3 description], [(NSPhoneNumberCheckingResult *)self phoneNumber]];
}

- (void)encodeWithCoder:(id)coder
{
  phoneNumber = [(NSPhoneNumberCheckingResult *)self phoneNumber];
  allowsKeyedCoding = [coder allowsKeyedCoding];
  [(NSTextCheckingResult *)self encodeRangeWithCoder:coder];
  if (allowsKeyedCoding)
  {

    [coder encodeObject:phoneNumber forKey:@"NSPhoneNumber"];
  }

  else
  {

    [coder encodeObject:phoneNumber];
  }
}

- (NSPhoneNumberCheckingResult)initWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:coder];
    v8 = v7;
    decodeObject = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSPhoneNumber"];
  }

  else
  {
    v10 = [coder versionForClassName:@"NSTextCheckingResult"];
    if (v10 != 1)
    {
      v13 = v10;
      v14 = _NSFullMethodName(self, a2);
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v14, 1, v13);
      [(NSPhoneNumberCheckingResult *)self dealloc];
      return 0;
    }

    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:coder];
    v8 = v11;
    decodeObject = [coder decodeObject];
  }

  return [(NSPhoneNumberCheckingResult *)self initWithRange:v6 phoneNumber:v8, decodeObject];
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
  range = [(NSPhoneNumberCheckingResult *)self range];
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

  v10 = [objc_alloc(objc_opt_class()) initWithRange:v9 phoneNumber:{v7, -[NSPhoneNumberCheckingResult phoneNumber](self, "phoneNumber")}];

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