@interface SRBundleUtilities
+ (id)getSiriAppBundle;
@end

@implementation SRBundleUtilities

+ (id)getSiriAppBundle
{
  v2 = [objc_allocWithZone(type metadata accessor for SRBundleLookupClass()) init];
  swift_getObjectType();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v4;
}

@end