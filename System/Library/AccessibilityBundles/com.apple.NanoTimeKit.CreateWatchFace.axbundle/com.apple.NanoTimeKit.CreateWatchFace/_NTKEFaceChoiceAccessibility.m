@interface _NTKEFaceChoiceAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation _NTKEFaceChoiceAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_NTKEFaceChoice" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_NTKEFaceChoice" hasInstanceMethod:@"_selected" withFullSignature:{"v", 0}];
}

@end