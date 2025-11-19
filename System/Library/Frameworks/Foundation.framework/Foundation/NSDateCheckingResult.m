@interface NSDateCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)a3;
- (NSDateCheckingResult)initWithCoder:(id)a3;
- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4;
- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4 timeZone:(id)a5 duration:(double)a6;
- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4 timeZone:(id)a5 duration:(double)a6 referenceDate:(id)a7;
- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4 timeZone:(id)a5 duration:(double)a6 referenceDate:(id)a7 underlyingResult:(void *)a8;
- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4 timeZone:(id)a5 duration:(double)a6 referenceDate:(id)a7 underlyingResult:(void *)a8 timeIsSignificant:(BOOL)a9 timeIsApproximate:(BOOL)a10;
- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4 timeZone:(id)a5 duration:(double)a6 referenceDate:(id)a7 underlyingResult:(void *)a8 timeIsSignificant:(BOOL)a9 timeIsApproximate:(BOOL)a10 timeIsPast:(BOOL)a11;
- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4 timeZone:(id)a5 duration:(double)a6 referenceDate:(id)a7 underlyingResult:(void *)a8 timeIsSignificant:(BOOL)a9 timeIsApproximate:(BOOL)a10 timeIsPast:(BOOL)a11 leadingText:(id)a12 trailingText:(id)a13;
- (_NSRange)range;
- (id)description;
- (id)resultByAdjustingRangesWithOffset:(int64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSDateCheckingResult

- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4 timeZone:(id)a5 duration:(double)a6 referenceDate:(id)a7 underlyingResult:(void *)a8 timeIsSignificant:(BOOL)a9 timeIsApproximate:(BOOL)a10 timeIsPast:(BOOL)a11 leadingText:(id)a12 trailingText:(id)a13
{
  length = a3.length;
  location = a3.location;
  v24 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = NSDateCheckingResult;
  v20 = [(NSDateCheckingResult *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_range.location = location;
    v20->_range.length = length;
    v20->_date = [a4 copy];
    v21->_timeZone = [a5 copy];
    v21->_duration = a6;
    v21->_referenceDate = [a7 copy];
    v21->_underlyingResult = a8;
    v21->_timeIsSignificant = a9;
    v21->_timeIsApproximate = a10;
    v21->_timeIsPast = a11;
    v21->_leadingText = [a12 copy];
    v21->_trailingText = [a13 copy];
  }

  return v21;
}

- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4 timeZone:(id)a5 duration:(double)a6 referenceDate:(id)a7 underlyingResult:(void *)a8 timeIsSignificant:(BOOL)a9 timeIsApproximate:(BOOL)a10 timeIsPast:(BOOL)a11
{
  BYTE2(v12) = 0;
  LOWORD(v12) = __PAIR16__(a10, a9);
  return [(NSDateCheckingResult *)self initWithRange:a3.location date:a3.length timeZone:a4 duration:a5 referenceDate:a7 underlyingResult:a8 timeIsSignificant:a6 timeIsApproximate:v12 timeIsPast:0 leadingText:0 trailingText:?];
}

- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4 timeZone:(id)a5 duration:(double)a6 referenceDate:(id)a7 underlyingResult:(void *)a8 timeIsSignificant:(BOOL)a9 timeIsApproximate:(BOOL)a10
{
  BYTE2(v11) = 0;
  LOWORD(v11) = __PAIR16__(a10, a9);
  return [(NSDateCheckingResult *)self initWithRange:a3.location date:a3.length timeZone:a4 duration:a5 referenceDate:a7 underlyingResult:a8 timeIsSignificant:a6 timeIsApproximate:v11 timeIsPast:0 leadingText:0 trailingText:?];
}

- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4 timeZone:(id)a5 duration:(double)a6 referenceDate:(id)a7 underlyingResult:(void *)a8
{
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  return [(NSDateCheckingResult *)self initWithRange:a3.location date:a3.length timeZone:a4 duration:a5 referenceDate:a7 underlyingResult:a8 timeIsSignificant:a6 timeIsApproximate:v9 timeIsPast:0 leadingText:0 trailingText:?];
}

- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4 timeZone:(id)a5 duration:(double)a6 referenceDate:(id)a7
{
  BYTE2(v8) = 0;
  LOWORD(v8) = 1;
  return [(NSDateCheckingResult *)self initWithRange:a3.location date:a3.length timeZone:a4 duration:a5 referenceDate:a7 underlyingResult:0 timeIsSignificant:a6 timeIsApproximate:v8 timeIsPast:0 leadingText:0 trailingText:?];
}

- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4 timeZone:(id)a5 duration:(double)a6
{
  BYTE2(v7) = 0;
  LOWORD(v7) = 1;
  return [(NSDateCheckingResult *)self initWithRange:a3.location date:a3.length timeZone:a4 duration:a5 referenceDate:0 underlyingResult:0 timeIsSignificant:a6 timeIsApproximate:v7 timeIsPast:0 leadingText:0 trailingText:?];
}

- (NSDateCheckingResult)initWithRange:(_NSRange)a3 date:(id)a4
{
  BYTE2(v5) = 0;
  LOWORD(v5) = 1;
  return [(NSDateCheckingResult *)self initWithRange:a3.location date:a3.length timeZone:a4 duration:0 referenceDate:0 underlyingResult:0 timeIsSignificant:0.0 timeIsApproximate:v5 timeIsPast:0 leadingText:0 trailingText:?];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSDateCheckingResult;
  [(NSDateCheckingResult *)&v3 dealloc];
}

- (id)description
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(NSDateCheckingResult *)self date];
  [(NSDateCheckingResult *)self duration];
  if (v4 <= 0.0)
  {
    v7.receiver = self;
    v7.super_class = NSDateCheckingResult;
    return [NSString stringWithFormat:@"%@{%@}", [(NSTextCheckingResult *)&v7 description], v3, v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSDateCheckingResult;
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@{%@-%@}", -[NSTextCheckingResult description](&v8, sel_description), v3, [MEMORY[0x1E695DF00] dateWithTimeInterval:v3 sinceDate:v4]);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [(NSDateCheckingResult *)self date];
  v6 = [(NSDateCheckingResult *)self referenceDate];
  v7 = [(NSDateCheckingResult *)self timeZone];
  [(NSDateCheckingResult *)self duration];
  v9 = v8;
  v10 = [a3 allowsKeyedCoding];
  [(NSTextCheckingResult *)self encodeRangeWithCoder:a3];
  if (v10)
  {
    [a3 encodeObject:v5 forKey:@"NSDate"];
    [a3 encodeObject:v7 forKey:@"NSTimeZone"];
    [a3 encodeDouble:@"NSDuration" forKey:v9];

    [a3 encodeObject:v6 forKey:@"NSReferenceDate"];
  }

  else
  {
    [a3 encodeObject:v5];
    [a3 encodeObject:v7];
    [a3 encodeValueOfObjCType:"d" at:v11];
    [a3 encodeObject:v6];
  }
}

- (NSDateCheckingResult)initWithCoder:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  if ([a3 allowsKeyedCoding])
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v7;
    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSDate"];
    v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSTimeZone"];
    [a3 decodeDoubleForKey:@"NSDuration"];
    v12 = v11;
    *v19 = v11;
    v13 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSReferenceDate"];
    return [(NSDateCheckingResult *)self initWithRange:v6 date:v8 timeZone:v9 duration:v10 referenceDate:v13, v12];
  }

  v14 = [a3 versionForClassName:@"NSTextCheckingResult"];
  if (v14 == 1)
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:a3];
    v8 = v15;
    v9 = [a3 decodeObject];
    v10 = [a3 decodeObject];
    [a3 decodeValueOfObjCType:"d" at:v19 size:8];
    v13 = [a3 decodeObject];
    v12 = *v19;
    return [(NSDateCheckingResult *)self initWithRange:v6 date:v8 timeZone:v9 duration:v10 referenceDate:v13, v12];
  }

  v17 = v14;
  v18 = _NSFullMethodName(self, a2);
  NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v18, 1, v17);
  [(NSDateCheckingResult *)self dealloc];
  return 0;
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
  v6 = [(NSDateCheckingResult *)self range];
  v8 = v7;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3 < 0 && v6 < -a3)
    {
      v16 = v6;
      v17 = _NSFullMethodName(self, a2);
      v20.location = v16;
      v20.length = v8;
      v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v17, a3, NSStringFromRange(v20)), 0}];
      objc_exception_throw(v18);
    }

    v9 = v6 + a3;
  }

  v10 = objc_alloc(objc_opt_class());
  v11 = [(NSDateCheckingResult *)self date];
  v12 = [(NSDateCheckingResult *)self timeZone];
  [(NSDateCheckingResult *)self duration];
  v14 = [v10 initWithRange:v9 date:v8 timeZone:v11 duration:v12 referenceDate:-[NSDateCheckingResult referenceDate](self underlyingResult:{"referenceDate"), -[NSDateCheckingResult underlyingResult](self, "underlyingResult"), v13}];

  return v14;
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