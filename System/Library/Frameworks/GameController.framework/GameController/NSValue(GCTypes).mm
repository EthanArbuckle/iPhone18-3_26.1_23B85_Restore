@interface NSValue(GCTypes)
+ (id)valueWithGCPoint2:()GCTypes;
- (float)GCPoint2Value;
@end

@implementation NSValue(GCTypes)

+ (id)valueWithGCPoint2:()GCTypes
{
  *v5 = a2;
  *&v5[1] = a3;
  v3 = [self valueWithBytes:v5 objCType:"{GCPoint2=ff}"];

  return v3;
}

- (float)GCPoint2Value
{
  v2 = 0;
  [self getValue:&v2 size:8];
  return *&v2;
}

@end