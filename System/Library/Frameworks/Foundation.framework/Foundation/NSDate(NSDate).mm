@interface NSDate(NSDate)
- (uint64_t)encodeWithCoder:()NSDate;
- (uint64_t)initWithCoder:()NSDate;
@end

@implementation NSDate(NSDate)

- (uint64_t)encodeWithCoder:()NSDate
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([a3 allowsKeyedCoding])
  {
    [self timeIntervalSinceReferenceDate];

    return [a3 encodeDouble:@"NS.time" forKey:?];
  }

  else
  {
    [self timeIntervalSinceReferenceDate];
    v7[0] = v6;
    return [a3 encodeValueOfObjCType:"d" at:v7];
  }
}

- (uint64_t)initWithCoder:()NSDate
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([a3 allowsKeyedCoding])
  {
    [a3 decodeDoubleForKey:@"NS.time"];

    return [self initWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v6[0] = 0.0;
    [a3 decodeValueOfObjCType:"d" at:v6 size:8];
    return [self initWithTimeIntervalSinceReferenceDate:v6[0]];
  }
}

@end