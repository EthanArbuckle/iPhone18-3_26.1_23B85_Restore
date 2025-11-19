@interface MPModelRadioStationEventKind
+ (id)identityKind;
@end

@implementation MPModelRadioStationEventKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end