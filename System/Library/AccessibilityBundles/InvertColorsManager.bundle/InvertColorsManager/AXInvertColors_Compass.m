@interface AXInvertColors_Compass
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_Compass

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CompassAppDelegate" hasInstanceMethod:@"window" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CompassAppDelegate"];
}

@end