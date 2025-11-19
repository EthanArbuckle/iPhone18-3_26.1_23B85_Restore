@interface NSOrthographyCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)a3;
- (NSOrthographyCheckingResult)initWithCoder:(id)a3;
- (NSOrthographyCheckingResult)initWithRange:(_NSRange)a3 orthography:(id)a4;
- (_NSRange)range;
- (id)description;
- (id)resultByAdjustingRangesWithOffset:(int64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSOrthographyCheckingResult

- (NSOrthographyCheckingResult)initWithRange:(_NSRange)a3 orthography:(id)a4
{
  length = a3.length;
  location = a3.location;
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSOrthographyCheckingResult;
  v7 = [(NSOrthographyCheckingResult *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_range.location = location;
    v7->_range.length = length;
    v7->_orthography = [a4 copy];
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSOrthographyCheckingResult;
  [(NSOrthographyCheckingResult *)&v3 dealloc];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSOrthographyCheckingResult;
  return [NSString stringWithFormat:@"%@{%@}", [(NSTextCheckingResult *)&v3 description], [(NSOrthographyCheckingResult *)self orthography]];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(NSOrthographyCheckingResult *)self orthography];
  v6 = [a3 allowsKeyedCoding];
  [(NSTextCheckingResult *)self encodeRangeWithCoder:a3];
  if (v6)
  {

    [a3 encodeObject:v5 forKey:@"NSOrthography"];
  }

  else
  {

    [a3 encodeObject:v5];
  }
}

- (NSOrthographyCheckingResult)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v7;
    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSOrthography"];
  }

  else
  {
    v10 = [a3 versionForClassName:@"NSTextCheckingResult"];
    if (v10 != 1)
    {
      v13 = v10;
      v14 = _NSFullMethodName(self, a2);
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v14, 1, v13);
      [(NSOrthographyCheckingResult *)self dealloc];
      return 0;
    }

    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v11;
    v9 = [a3 decodeObject];
  }

  return [(NSOrthographyCheckingResult *)self initWithRange:v6 orthography:v8, v9];
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
  v6 = [(NSOrthographyCheckingResult *)self range];
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

  v10 = [objc_alloc(objc_opt_class()) initWithRange:v9 orthography:{v7, -[NSOrthographyCheckingResult orthography](self, "orthography")}];

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