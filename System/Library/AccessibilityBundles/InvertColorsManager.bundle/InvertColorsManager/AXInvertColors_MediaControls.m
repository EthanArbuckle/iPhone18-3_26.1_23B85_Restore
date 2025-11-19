@interface AXInvertColors_MediaControls
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_MediaControls

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MediaControlsHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"MediaControlsMaterialView" hasInstanceMethod:@"_setContinuousCornerRadius:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"MediaControlsHeaderView" hasInstanceVariable:@"_artworkView" withType:"UIImageView"];
  [v3 validateClass:@"MediaControlsMaterialView" hasInstanceVariable:@"_backgroundView" withType:"UIView"];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"MediaControlsHeaderViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MediaControlsMaterialViewInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"MRUArtworkViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end