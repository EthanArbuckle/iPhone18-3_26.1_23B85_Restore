@interface NSNumber
+ (NSNumber)numberWithCGFloat:(double)float;
@end

@implementation NSNumber

+ (NSNumber)numberWithCGFloat:(double)float
{
  v3 = [[self alloc] initWithCGFloat:float];

  return v3;
}

@end