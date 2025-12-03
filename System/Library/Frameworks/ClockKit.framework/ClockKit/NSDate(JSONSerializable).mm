@interface NSDate(JSONSerializable)
- (uint64_t)JSONObjectRepresentation;
- (uint64_t)initWithJSONObjectRepresentation:()JSONSerializable;
@end

@implementation NSDate(JSONSerializable)

- (uint64_t)initWithJSONObjectRepresentation:()JSONSerializable
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a number. Invalid value: %@", v4}];
  }

  [v4 doubleValue];
  v5 = [self initWithTimeIntervalSinceReferenceDate:?];

  return v5;
}

- (uint64_t)JSONObjectRepresentation
{
  v1 = MEMORY[0x277CCABB0];
  [self timeIntervalSinceReferenceDate];

  return [v1 numberWithDouble:?];
}

@end