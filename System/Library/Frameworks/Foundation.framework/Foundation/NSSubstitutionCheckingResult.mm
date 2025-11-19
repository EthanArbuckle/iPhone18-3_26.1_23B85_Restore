@interface NSSubstitutionCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)a3;
- (NSSubstitutionCheckingResult)initWithCoder:(id)a3;
- (NSSubstitutionCheckingResult)initWithRange:(_NSRange)a3 replacementString:(id)a4;
- (_NSRange)range;
- (id)description;
- (id)resultByAdjustingRangesWithOffset:(int64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSubstitutionCheckingResult

- (NSSubstitutionCheckingResult)initWithRange:(_NSRange)a3 replacementString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSSubstitutionCheckingResult;
  v7 = [(NSSubstitutionCheckingResult *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_range.location = location;
    v7->_range.length = length;
    v7->_replacementString = [a4 copy];
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSSubstitutionCheckingResult;
  [(NSSubstitutionCheckingResult *)&v3 dealloc];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSSubstitutionCheckingResult;
  return [NSString stringWithFormat:@"%@{%@}", [(NSTextCheckingResult *)&v3 description], [(NSSubstitutionCheckingResult *)self replacementString]];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(NSSubstitutionCheckingResult *)self replacementString];
  v6 = [a3 allowsKeyedCoding];
  [(NSTextCheckingResult *)self encodeRangeWithCoder:a3];
  if (v6)
  {

    [a3 encodeObject:v5 forKey:@"NSReplacementString"];
  }

  else
  {

    [a3 encodeObject:v5];
  }
}

- (NSSubstitutionCheckingResult)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v7;
    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSReplacementString"];
  }

  else
  {
    v10 = [a3 versionForClassName:@"NSTextCheckingResult"];
    if (v10 != 1)
    {
      v13 = v10;
      v14 = _NSFullMethodName(self, a2);
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v14, 1, v13);
      [(NSSubstitutionCheckingResult *)self dealloc];
      return 0;
    }

    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v11;
    v9 = [a3 decodeObject];
  }

  return [(NSSubstitutionCheckingResult *)self initWithRange:v6 replacementString:v8, v9];
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
  v6 = [(NSSubstitutionCheckingResult *)self range];
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

  v10 = [objc_alloc(objc_opt_class()) initWithRange:v9 replacementString:{v7, -[NSSubstitutionCheckingResult replacementString](self, "replacementString")}];

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