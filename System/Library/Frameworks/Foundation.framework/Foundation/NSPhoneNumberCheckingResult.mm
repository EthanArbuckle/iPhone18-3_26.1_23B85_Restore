@interface NSPhoneNumberCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)a3;
- (NSPhoneNumberCheckingResult)initWithCoder:(id)a3;
- (NSPhoneNumberCheckingResult)initWithRange:(_NSRange)a3 phoneNumber:(id)a4 underlyingResult:(void *)a5;
- (_NSRange)range;
- (id)description;
- (id)resultByAdjustingRangesWithOffset:(int64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPhoneNumberCheckingResult

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSPhoneNumberCheckingResult;
  [(NSPhoneNumberCheckingResult *)&v3 dealloc];
}

- (NSPhoneNumberCheckingResult)initWithRange:(_NSRange)a3 phoneNumber:(id)a4 underlyingResult:(void *)a5
{
  length = a3.length;
  location = a3.location;
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSPhoneNumberCheckingResult;
  v9 = [(NSPhoneNumberCheckingResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_range.location = location;
    v9->_range.length = length;
    v9->_phoneNumber = [a4 copy];
    v10->_underlyingResult = a5;
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

- (void)encodeWithCoder:(id)a3
{
  v5 = [(NSPhoneNumberCheckingResult *)self phoneNumber];
  v6 = [a3 allowsKeyedCoding];
  [(NSTextCheckingResult *)self encodeRangeWithCoder:a3];
  if (v6)
  {

    [a3 encodeObject:v5 forKey:@"NSPhoneNumber"];
  }

  else
  {

    [a3 encodeObject:v5];
  }
}

- (NSPhoneNumberCheckingResult)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v7;
    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPhoneNumber"];
  }

  else
  {
    v10 = [a3 versionForClassName:@"NSTextCheckingResult"];
    if (v10 != 1)
    {
      v13 = v10;
      v14 = _NSFullMethodName(self, a2);
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v14, 1, v13);
      [(NSPhoneNumberCheckingResult *)self dealloc];
      return 0;
    }

    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v11;
    v9 = [a3 decodeObject];
  }

  return [(NSPhoneNumberCheckingResult *)self initWithRange:v6 phoneNumber:v8, v9];
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
  v6 = [(NSPhoneNumberCheckingResult *)self range];
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

  v10 = [objc_alloc(objc_opt_class()) initWithRange:v9 phoneNumber:{v7, -[NSPhoneNumberCheckingResult phoneNumber](self, "phoneNumber")}];

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