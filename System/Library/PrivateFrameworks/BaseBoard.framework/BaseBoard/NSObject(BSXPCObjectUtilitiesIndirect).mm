@interface NSObject(BSXPCObjectUtilitiesIndirect)
+ (uint64_t)bs_isXPCObject;
@end

@implementation NSObject(BSXPCObjectUtilitiesIndirect)

+ (uint64_t)bs_isXPCObject
{
  v2 = BSXPCObjectBaseClass();

  return [self isSubclassOfClass:v2];
}

@end