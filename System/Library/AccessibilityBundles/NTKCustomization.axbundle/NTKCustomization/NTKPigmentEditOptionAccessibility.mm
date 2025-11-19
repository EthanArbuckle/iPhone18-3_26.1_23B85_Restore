@interface NTKPigmentEditOptionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityEditOptionDescription;
@end

@implementation NTKPigmentEditOptionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKPigmentEditOption" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKPigmentEditOption" hasInstanceVariable:@"_fullname" withType:"NSString"];
}

- (id)_accessibilityEditOptionDescription
{
  v3 = [(NTKPigmentEditOptionAccessibility *)self safeStringForKey:@"_fullname"];
  v4 = AXCFormattedString();
  v6 = accessibilityLocalizedString(v4, v5);
  if ([v6 isEqualToString:{v4, v3}])
  {
    v7 = [(NTKPigmentEditOptionAccessibility *)self safeStringForKey:@"localizedName"];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

@end