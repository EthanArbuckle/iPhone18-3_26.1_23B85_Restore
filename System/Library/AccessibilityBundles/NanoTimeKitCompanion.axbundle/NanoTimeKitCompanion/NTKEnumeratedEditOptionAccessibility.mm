@interface NTKEnumeratedEditOptionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation NTKEnumeratedEditOptionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKEnumeratedEditOption" isKindOfClass:@"NTKEditOption"];
  [v3 validateClass:@"NTKEditOption" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
}

@end