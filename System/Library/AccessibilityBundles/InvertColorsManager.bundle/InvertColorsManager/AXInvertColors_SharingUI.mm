@interface AXInvertColors_SharingUI
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_SharingUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFPersonCollectionViewCell" hasInstanceVariable:@"_person" withType:"SFAirDropNode"];
  [validationsCopy validateClass:@"SFPersonImageView"];
  [validationsCopy validateClass:@"SFPersonCollectionViewCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

@end