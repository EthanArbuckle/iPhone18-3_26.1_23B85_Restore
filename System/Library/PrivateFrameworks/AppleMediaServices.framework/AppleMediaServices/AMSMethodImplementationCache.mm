@interface AMSMethodImplementationCache
+ (BOOL)implementationsOf:(SEL)of areEqualIn:(Class)in and:(Class)and;
@end

@implementation AMSMethodImplementationCache

+ (BOOL)implementationsOf:(SEL)of areEqualIn:(Class)in and:(Class)and
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return static MethodImplementationCache.implementations(of:areEqualIn:and:)(of, ObjCClassMetadata) & 1;
}

@end