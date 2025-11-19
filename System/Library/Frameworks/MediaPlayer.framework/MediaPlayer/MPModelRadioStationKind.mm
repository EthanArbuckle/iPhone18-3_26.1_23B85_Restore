@interface MPModelRadioStationKind
+ (id)identityKind;
@end

@implementation MPModelRadioStationKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end