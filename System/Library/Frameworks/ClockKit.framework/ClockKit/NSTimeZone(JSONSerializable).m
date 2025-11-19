@interface NSTimeZone(JSONSerializable)
- (uint64_t)initWithJSONObjectRepresentation:()JSONSerializable;
@end

@implementation NSTimeZone(JSONSerializable)

- (uint64_t)initWithJSONObjectRepresentation:()JSONSerializable
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a string. Invalid value: %@", v4}];
  }

  v5 = [a1 initWithName:v4];

  return v5;
}

@end