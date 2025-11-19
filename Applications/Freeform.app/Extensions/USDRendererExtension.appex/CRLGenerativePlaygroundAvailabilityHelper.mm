@interface CRLGenerativePlaygroundAvailabilityHelper
+ (BOOL)isAvailableOnCurrentDevice;
- (_TtC20USDRendererExtension41CRLGenerativePlaygroundAvailabilityHelper)init;
@end

@implementation CRLGenerativePlaygroundAvailabilityHelper

+ (BOOL)isAvailableOnCurrentDevice
{
  v2 = sub_10008A778();

  return [v2 available];
}

- (_TtC20USDRendererExtension41CRLGenerativePlaygroundAvailabilityHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLGenerativePlaygroundAvailabilityHelper();
  return [(CRLGenerativePlaygroundAvailabilityHelper *)&v3 init];
}

@end