@interface MPModelRecordLabelKind
+ (id)identityKind;
@end

@implementation MPModelRecordLabelKind

+ (id)identityKind
{
  v2 = objc_opt_class();

  return [MPModelKind kindWithModelClass:v2];
}

@end