@interface NSNumber
+ (NSNumber)numberWithCGFloat:(double)a3;
@end

@implementation NSNumber

+ (NSNumber)numberWithCGFloat:(double)a3
{
  v3 = [[a1 alloc] initWithCGFloat:a3];

  return v3;
}

@end