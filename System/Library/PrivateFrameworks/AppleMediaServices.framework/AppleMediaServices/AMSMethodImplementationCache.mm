@interface AMSMethodImplementationCache
+ (BOOL)implementationsOf:(SEL)a3 areEqualIn:(Class)a4 and:(Class)a5;
@end

@implementation AMSMethodImplementationCache

+ (BOOL)implementationsOf:(SEL)a3 areEqualIn:(Class)a4 and:(Class)a5
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return static MethodImplementationCache.implementations(of:areEqualIn:and:)(a3, ObjCClassMetadata) & 1;
}

@end