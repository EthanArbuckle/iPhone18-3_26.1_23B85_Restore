@interface AXInvertColors_TelephonyUI
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_TelephonyUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TPNumberPadButton" hasInstanceMethod:@"circleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TPNumberPadButton" hasInstanceMethod:@"setColor:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"TPNumberPadButton" hasInstanceMethod:@"initForCharacter:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"TPNumberPadLightStyleButton"];
}

@end