@interface NSDateInterval
+ (NSDateInterval)allocWithZone:(_NSZone *)a3;
- (BOOL)containsDate:(NSDate *)date;
- (BOOL)intersectsDateInterval:(NSDateInterval *)dateInterval;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDateInterval:(NSDateInterval *)dateInterval;
- (NSComparisonResult)compare:(NSDateInterval *)dateInterval;
- (NSDateInterval)init;
- (NSDateInterval)initWithCoder:(NSCoder *)coder;
- (NSDateInterval)intersectionWithDateInterval:(NSDateInterval *)dateInterval;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSDateInterval

- (NSDateInterval)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSDateInterval;
  return [(NSDateInterval *)&v3 init];
}

- (id)description
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSDateInterval;
  v3 = [(NSDateInterval *)&v7 description];
  v4 = [(NSDateInterval *)self startDate];
  [(NSDateInterval *)self duration];
  return [NSString stringWithFormat:@"%@ (Start Date) %@ + (Duration) %f seconds = (End Date) %@", v3, v4, v5, [(NSDateInterval *)self endDate]];
}

+ (NSDateInterval)allocWithZone:(_NSZone *)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSDateInterval == a1)
  {

    return [(NSDateInterval *)_NSConcreteDateInterval allocWithZone:a3];
  }

  else
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___NSDateInterval;
    return objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
  }
}

- (NSComparisonResult)compare:(NSDateInterval *)dateInterval
{
  if (self == dateInterval)
  {
    return 0;
  }

  if (!dateInterval)
  {
    return 1;
  }

  result = [[(NSDateInterval *)self startDate] compare:[(NSDateInterval *)dateInterval startDate]];
  if (result == NSOrderedSame)
  {
    [(NSDateInterval *)self duration];
    v7 = v6;
    [(NSDateInterval *)dateInterval duration];
    if (v7 >= v8)
    {
      [(NSDateInterval *)self duration];
      v10 = v9;
      [(NSDateInterval *)dateInterval duration];
      return (v10 > v11);
    }

    else
    {
      return -1;
    }
  }

  return result;
}

- (unint64_t)hash
{
  [[(NSDateInterval *)self startDate] timeIntervalSinceReferenceDate];
  [(NSDateInterval *)self duration];
  return CFHashBytes();
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(NSDateInterval *)self isEqualToDateInterval:a3];
}

- (BOOL)isEqualToDateInterval:(NSDateInterval *)dateInterval
{
  if (!dateInterval)
  {
    return 0;
  }

  if ([[(NSDateInterval *)self startDate] isEqualToDate:[(NSDateInterval *)dateInterval startDate]])
  {
    [(NSDateInterval *)self duration];
    v6 = v5;
    [(NSDateInterval *)dateInterval duration];
    if (v6 == v7)
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)intersectsDateInterval:(NSDateInterval *)dateInterval
{
  if (!dateInterval)
  {
    return 0;
  }

  if ([(NSDateInterval *)self containsDate:[(NSDateInterval *)dateInterval startDate]]|| [(NSDateInterval *)dateInterval containsDate:[(NSDateInterval *)self startDate]])
  {
    return 1;
  }

  [[(NSDateInterval *)dateInterval startDate] timeIntervalSinceReferenceDate];
  v6 = v5;
  [(NSDateInterval *)dateInterval duration];
  v8 = v6 + v7;
  [[(NSDateInterval *)self startDate] timeIntervalSinceReferenceDate];
  v10 = v9;
  [(NSDateInterval *)self duration];
  v12 = v10 + v11;
  if (v8 >= v10 && v8 <= v12)
  {
    return 1;
  }

  if (v12 <= v8)
  {
    return v12 >= v6;
  }

  return 0;
}

- (NSDateInterval)intersectionWithDateInterval:(NSDateInterval *)dateInterval
{
  if (!dateInterval || ![(NSDateInterval *)self intersectsDateInterval:?])
  {
    return 0;
  }

  if ([(NSDateInterval *)self isEqualToDateInterval:dateInterval])
  {
    v5 = [(NSDateInterval *)self copy];
  }

  else
  {
    [[(NSDateInterval *)self startDate] timeIntervalSinceReferenceDate];
    v8 = v7;
    [(NSDateInterval *)self duration];
    v10 = v8 + v9;
    [[(NSDateInterval *)dateInterval startDate] timeIntervalSinceReferenceDate];
    v12 = v11;
    [(NSDateInterval *)dateInterval duration];
    v14 = v12 + v13;
    if (v12 >= v8)
    {
      v15 = [(NSDateInterval *)dateInterval startDate];
    }

    else
    {
      v15 = [(NSDateInterval *)self startDate];
      v12 = v8;
    }

    if (v14 < v10)
    {
      v16 = v14;
    }

    else
    {
      v16 = v10;
    }

    v5 = [[NSDateInterval alloc] initWithStartDate:v15 duration:v16 - v12];
  }

  return v5;
}

- (BOOL)containsDate:(NSDate *)date
{
  if (!date)
  {
    return 0;
  }

  [(NSDate *)date timeIntervalSinceReferenceDate];
  v5 = v4;
  [[(NSDateInterval *)self startDate] timeIntervalSinceReferenceDate];
  v7 = v6;
  [(NSDateInterval *)self duration];
  return v5 <= v7 + v8 && v5 >= v7;
}

- (NSDateInterval)initWithCoder:(NSCoder *)coder
{
  if (![(NSCoder *)coder allowsKeyedCoding])
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSDateInterval cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.startDate"];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  [(NSCoder *)coder decodeDoubleForKey:@"NS.duration"];
  v8 = v7;
  if ([(NSCoder *)coder containsValueForKey:@"NS.duration"])
  {
LABEL_4:

    return [(NSDateInterval *)self initWithStartDate:v6 duration:v8];
  }

  v10 = [(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.endDate"];
  if ([(NSCoder *)coder error])
  {
LABEL_8:

    [(NSCoder *)coder failWithError:[NSError errorWithDomain:@"NSCocoaErrorDomain" code:4865 userInfo:0]];
    return 0;
  }

  if (!v10)
  {
    goto LABEL_4;
  }

  return [(NSDateInterval *)self initWithStartDate:v6 endDate:v10];
}

- (void)encodeWithCoder:(id)a3
{
  if (![a3 allowsKeyedCoding])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Encoder does not allow keyed coding!" userInfo:0]);
  }

  [a3 encodeObject:-[NSDateInterval startDate](self forKey:{"startDate"), @"NS.startDate"}];
  [a3 encodeObject:-[NSDateInterval endDate](self forKey:{"endDate"), @"NS.endDate"}];
  [(NSDateInterval *)self duration];

  [a3 encodeDouble:@"NS.duration" forKey:?];
}

@end