@interface MFMailDebugGroupedSenderGroupingController
+ (id)debugViewControllerWithHandler:(id)a3;
@end

@implementation MFMailDebugGroupedSenderGroupingController

+ (id)debugViewControllerWithHandler:(id)a3
{
  swift_getObjCClassMetadata();
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_getObjCClassMetadata();
  v7 = sub_10036E7A8(sub_10036EEDC, v6);

  return v7;
}

@end