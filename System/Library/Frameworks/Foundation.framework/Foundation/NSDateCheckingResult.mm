@interface NSDateCheckingResult
- (BOOL)_adjustRangesWithOffset:(int64_t)offset;
- (NSDateCheckingResult)initWithCoder:(id)coder;
- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date;
- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date timeZone:(id)zone duration:(double)duration;
- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date timeZone:(id)zone duration:(double)duration referenceDate:(id)referenceDate;
- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date timeZone:(id)zone duration:(double)duration referenceDate:(id)referenceDate underlyingResult:(void *)result;
- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date timeZone:(id)zone duration:(double)duration referenceDate:(id)referenceDate underlyingResult:(void *)result timeIsSignificant:(BOOL)significant timeIsApproximate:(BOOL)self0;
- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date timeZone:(id)zone duration:(double)duration referenceDate:(id)referenceDate underlyingResult:(void *)result timeIsSignificant:(BOOL)significant timeIsApproximate:(BOOL)self0 timeIsPast:(BOOL)self1;
- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date timeZone:(id)zone duration:(double)duration referenceDate:(id)referenceDate underlyingResult:(void *)result timeIsSignificant:(BOOL)significant timeIsApproximate:(BOOL)self0 timeIsPast:(BOOL)self1 leadingText:(id)self2 trailingText:(id)self3;
- (_NSRange)range;
- (id)description;
- (id)resultByAdjustingRangesWithOffset:(int64_t)offset;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSDateCheckingResult

- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date timeZone:(id)zone duration:(double)duration referenceDate:(id)referenceDate underlyingResult:(void *)result timeIsSignificant:(BOOL)significant timeIsApproximate:(BOOL)self0 timeIsPast:(BOOL)self1 leadingText:(id)self2 trailingText:(id)self3
{
  length = range.length;
  location = range.location;
  v24 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = NSDateCheckingResult;
  v20 = [(NSDateCheckingResult *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_range.location = location;
    v20->_range.length = length;
    v20->_date = [date copy];
    v21->_timeZone = [zone copy];
    v21->_duration = duration;
    v21->_referenceDate = [referenceDate copy];
    v21->_underlyingResult = result;
    v21->_timeIsSignificant = significant;
    v21->_timeIsApproximate = approximate;
    v21->_timeIsPast = past;
    v21->_leadingText = [text copy];
    v21->_trailingText = [trailingText copy];
  }

  return v21;
}

- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date timeZone:(id)zone duration:(double)duration referenceDate:(id)referenceDate underlyingResult:(void *)result timeIsSignificant:(BOOL)significant timeIsApproximate:(BOOL)self0 timeIsPast:(BOOL)self1
{
  BYTE2(v12) = 0;
  LOWORD(v12) = __PAIR16__(approximate, significant);
  return [(NSDateCheckingResult *)self initWithRange:range.location date:range.length timeZone:date duration:zone referenceDate:referenceDate underlyingResult:result timeIsSignificant:duration timeIsApproximate:v12 timeIsPast:0 leadingText:0 trailingText:?];
}

- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date timeZone:(id)zone duration:(double)duration referenceDate:(id)referenceDate underlyingResult:(void *)result timeIsSignificant:(BOOL)significant timeIsApproximate:(BOOL)self0
{
  BYTE2(v11) = 0;
  LOWORD(v11) = __PAIR16__(approximate, significant);
  return [(NSDateCheckingResult *)self initWithRange:range.location date:range.length timeZone:date duration:zone referenceDate:referenceDate underlyingResult:result timeIsSignificant:duration timeIsApproximate:v11 timeIsPast:0 leadingText:0 trailingText:?];
}

- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date timeZone:(id)zone duration:(double)duration referenceDate:(id)referenceDate underlyingResult:(void *)result
{
  BYTE2(v9) = 0;
  LOWORD(v9) = 1;
  return [(NSDateCheckingResult *)self initWithRange:range.location date:range.length timeZone:date duration:zone referenceDate:referenceDate underlyingResult:result timeIsSignificant:duration timeIsApproximate:v9 timeIsPast:0 leadingText:0 trailingText:?];
}

- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date timeZone:(id)zone duration:(double)duration referenceDate:(id)referenceDate
{
  BYTE2(v8) = 0;
  LOWORD(v8) = 1;
  return [(NSDateCheckingResult *)self initWithRange:range.location date:range.length timeZone:date duration:zone referenceDate:referenceDate underlyingResult:0 timeIsSignificant:duration timeIsApproximate:v8 timeIsPast:0 leadingText:0 trailingText:?];
}

- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date timeZone:(id)zone duration:(double)duration
{
  BYTE2(v7) = 0;
  LOWORD(v7) = 1;
  return [(NSDateCheckingResult *)self initWithRange:range.location date:range.length timeZone:date duration:zone referenceDate:0 underlyingResult:0 timeIsSignificant:duration timeIsApproximate:v7 timeIsPast:0 leadingText:0 trailingText:?];
}

- (NSDateCheckingResult)initWithRange:(_NSRange)range date:(id)date
{
  BYTE2(v5) = 0;
  LOWORD(v5) = 1;
  return [(NSDateCheckingResult *)self initWithRange:range.location date:range.length timeZone:date duration:0 referenceDate:0 underlyingResult:0 timeIsSignificant:0.0 timeIsApproximate:v5 timeIsPast:0 leadingText:0 trailingText:?];
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
  date = [(NSDateCheckingResult *)self date];
  [(NSDateCheckingResult *)self duration];
  if (v4 <= 0.0)
  {
    v7.receiver = self;
    v7.super_class = NSDateCheckingResult;
    return [NSString stringWithFormat:@"%@{%@}", [(NSTextCheckingResult *)&v7 description], date, v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSDateCheckingResult;
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@{%@-%@}", -[NSTextCheckingResult description](&v8, sel_description), date, [MEMORY[0x1E695DF00] dateWithTimeInterval:date sinceDate:v4]);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v11[1] = *MEMORY[0x1E69E9840];
  date = [(NSDateCheckingResult *)self date];
  referenceDate = [(NSDateCheckingResult *)self referenceDate];
  timeZone = [(NSDateCheckingResult *)self timeZone];
  [(NSDateCheckingResult *)self duration];
  v9 = v8;
  allowsKeyedCoding = [coder allowsKeyedCoding];
  [(NSTextCheckingResult *)self encodeRangeWithCoder:coder];
  if (allowsKeyedCoding)
  {
    [coder encodeObject:date forKey:@"NSDate"];
    [coder encodeObject:timeZone forKey:@"NSTimeZone"];
    [coder encodeDouble:@"NSDuration" forKey:v9];

    [coder encodeObject:referenceDate forKey:@"NSReferenceDate"];
  }

  else
  {
    [coder encodeObject:date];
    [coder encodeObject:timeZone];
    [coder encodeValueOfObjCType:"d" at:v11];
    [coder encodeObject:referenceDate];
  }
}

- (NSDateCheckingResult)initWithCoder:(id)coder
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  if ([coder allowsKeyedCoding])
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:coder];
    v8 = v7;
    decodeObject = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSDate"];
    decodeObject2 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSTimeZone"];
    [coder decodeDoubleForKey:@"NSDuration"];
    v12 = v11;
    *v19 = v11;
    decodeObject3 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSReferenceDate"];
    return [(NSDateCheckingResult *)self initWithRange:v6 date:v8 timeZone:decodeObject duration:decodeObject2 referenceDate:decodeObject3, v12];
  }

  v14 = [coder versionForClassName:@"NSTextCheckingResult"];
  if (v14 == 1)
  {
    v6 = [(NSTextCheckingResult *)self decodeRangeWithCoder:coder];
    v8 = v15;
    decodeObject = [coder decodeObject];
    decodeObject2 = [coder decodeObject];
    [coder decodeValueOfObjCType:"d" at:v19 size:8];
    decodeObject3 = [coder decodeObject];
    v12 = *v19;
    return [(NSDateCheckingResult *)self initWithRange:v6 date:v8 timeZone:decodeObject duration:decodeObject2 referenceDate:decodeObject3, v12];
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

- (id)resultByAdjustingRangesWithOffset:(int64_t)offset
{
  range = [(NSDateCheckingResult *)self range];
  v8 = v7;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (range != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (offset < 0 && range < -offset)
    {
      v16 = range;
      v17 = _NSFullMethodName(self, a2);
      v20.location = v16;
      v20.length = v8;
      v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: %ld invalid offset for range %@", v17, offset, NSStringFromRange(v20)), 0}];
      objc_exception_throw(v18);
    }

    v9 = range + offset;
  }

  v10 = objc_alloc(objc_opt_class());
  date = [(NSDateCheckingResult *)self date];
  timeZone = [(NSDateCheckingResult *)self timeZone];
  [(NSDateCheckingResult *)self duration];
  v14 = [v10 initWithRange:v9 date:v8 timeZone:date duration:timeZone referenceDate:-[NSDateCheckingResult referenceDate](self underlyingResult:{"referenceDate"), -[NSDateCheckingResult underlyingResult](self, "underlyingResult"), v13}];

  return v14;
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