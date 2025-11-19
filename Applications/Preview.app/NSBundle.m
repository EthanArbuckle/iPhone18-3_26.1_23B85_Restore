@interface NSBundle
+ (id)localizationDefault;
@end

@implementation NSBundle

+ (id)localizationDefault
{
  type metadata accessor for BundleLookupReference_ContentInfoViewer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v3;
}

@end