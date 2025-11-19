@interface AXInvertColors_SharingUI
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_SharingUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFPersonCollectionViewCell" hasInstanceVariable:@"_person" withType:"SFAirDropNode"];
  [v3 validateClass:@"SFPersonImageView"];
  [v3 validateClass:@"SFPersonCollectionViewCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

@end