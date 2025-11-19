@interface CRLGenerativePlaygroundAvailabilityHelper
+ (BOOL)isAvailableOnCurrentDevice;
- (_TtC24FreeformSharingExtension41CRLGenerativePlaygroundAvailabilityHelper)init;
@end

@implementation CRLGenerativePlaygroundAvailabilityHelper

+ (BOOL)isAvailableOnCurrentDevice
{
  v2 = sub_10007DFC4();

  return [v2 available];
}

- (_TtC24FreeformSharingExtension41CRLGenerativePlaygroundAvailabilityHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLGenerativePlaygroundAvailabilityHelper();
  return [(CRLGenerativePlaygroundAvailabilityHelper *)&v3 init];
}

@end