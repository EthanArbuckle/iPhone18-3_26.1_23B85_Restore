@interface AXInvertColors_TelephonyUI
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_TelephonyUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TPNumberPadButton" hasInstanceMethod:@"circleView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TPNumberPadButton" hasInstanceMethod:@"setColor:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"TPNumberPadButton" hasInstanceMethod:@"initForCharacter:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"TPNumberPadLightStyleButton"];
}

@end