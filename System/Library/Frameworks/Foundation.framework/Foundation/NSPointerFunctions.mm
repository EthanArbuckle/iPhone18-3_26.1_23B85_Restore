@interface NSPointerFunctions
+ (NSPointerFunctions)allocWithZone:(_NSZone *)zone;
+ (NSPointerFunctions)pointerFunctionsWithOptions:(NSPointerFunctionsOptions)options;
@end

@implementation NSPointerFunctions

+ (NSPointerFunctions)allocWithZone:(_NSZone *)zone
{
  v3 = objc_opt_self();

  return NSAllocateObject(v3, 0, 0);
}

+ (NSPointerFunctions)pointerFunctionsWithOptions:(NSPointerFunctionsOptions)options
{
  v4 = objc_opt_self();
  v5 = [NSAllocateObject(v4 0];

  return v5;
}

@end