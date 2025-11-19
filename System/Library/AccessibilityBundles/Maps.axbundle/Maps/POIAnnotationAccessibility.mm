@interface POIAnnotationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation POIAnnotationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"POIAnnotation" hasInstanceVariable:@"_subtext" withType:"NSString"];
  [v3 validateClass:@"POIAnnotation" hasInstanceVariable:@"_compoundItem" withType:"PersonalizedCompoundItem"];
  [v3 validateClass:@"PersonalizedCompoundItem" hasInstanceMethod:@"items" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DroppedPinMapItem"];
  [v3 validateClass:@"MKAnnotationView" hasClassMethod:@"droppedPinTitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(POIAnnotationAccessibility *)self safeValueForKey:@"_compoundItem"];
  v4 = [v3 safeValueForKey:@"items"];
  v5 = __UIAccessibilityCastAsClass();

  if ([v5 count] == 1 && (objc_msgSend(v5, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), NSClassFromString(&cfstr_Droppedpinmapi.isa), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
  {
    v8 = [MEMORY[0x29EDBB268] safeStringForKey:@"droppedPinTitle"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end