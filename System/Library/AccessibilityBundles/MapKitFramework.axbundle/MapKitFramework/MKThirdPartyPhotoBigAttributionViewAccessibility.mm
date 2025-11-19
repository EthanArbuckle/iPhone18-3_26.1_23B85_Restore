@interface MKThirdPartyPhotoBigAttributionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MKThirdPartyPhotoBigAttributionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKThirdPartyPhotoBigAttributionView" hasInstanceVariable:@"_firstLineLabel" withType:"_MKUILabel"];
  [v3 validateClass:@"MKThirdPartyPhotoBigAttributionView" hasInstanceVariable:@"_secondLineLabel" withType:"_MKUILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(MKThirdPartyPhotoBigAttributionViewAccessibility *)self safeValueForKey:@"_firstLineLabel"];
  v4 = [v3 accessibilityLabel];

  v18 = 0;
  objc_opt_class();
  v5 = [(MKThirdPartyPhotoBigAttributionViewAccessibility *)self safeValueForKey:@"_secondLineLabel"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 attributedText];

  v8 = [v7 string];
  v9 = [v8 mutableCopy];

  v10 = [v7 attribute:@"AXAttributeDisplayName" atIndex:0 effectiveRange:0];
  if (v10)
  {
    v11 = *MEMORY[0x29EDC7628];
    v12 = [v7 length];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __70__MKThirdPartyPhotoBigAttributionViewAccessibility_accessibilityLabel__block_invoke;
    v15[3] = &unk_29F2CB1B8;
    v16 = v9;
    v17 = v10;
    [v7 enumerateAttribute:v11 inRange:0 options:v12 usingBlock:{0, v15}];
  }

  v13 = __UIAXStringForVariables();

  return v13;
}

uint64_t __70__MKThirdPartyPhotoBigAttributionViewAccessibility_accessibilityLabel__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    result = [*(result + 32) replaceCharactersInRange:a3 withString:{a4, *(result + 40)}];
    *a5 = 1;
  }

  return result;
}

@end