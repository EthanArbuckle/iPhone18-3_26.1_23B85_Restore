@interface PHFeatureAvailabilityReadOptions
- (PHFeatureAvailabilityReadOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PHFeatureAvailabilityReadOptions

- (PHFeatureAvailabilityReadOptions)init
{
  v6.receiver = self;
  v6.super_class = PHFeatureAvailabilityReadOptions;
  v2 = [(PHFeatureAvailabilityReadOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_useJustInTimeGraphAvailability = 1;
    v4 = v2;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setUseJustInTimeGraphAvailability:{-[PHFeatureAvailabilityReadOptions useJustInTimeGraphAvailability](self, "useJustInTimeGraphAvailability")}];
  [v4 setValidateSpotlightAvailability:{-[PHFeatureAvailabilityReadOptions validateSpotlightAvailability](self, "validateSpotlightAvailability")}];
  return v4;
}

@end