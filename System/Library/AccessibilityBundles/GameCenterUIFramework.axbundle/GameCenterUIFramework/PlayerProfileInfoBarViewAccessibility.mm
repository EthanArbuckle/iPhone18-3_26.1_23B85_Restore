@interface PlayerProfileInfoBarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
- (void)layoutSubviews;
@end

@implementation PlayerProfileInfoBarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GameCenterUI.PlayerProfileInfoBarView" hasInstanceMethod:@"accessibilityInfoItemPairs" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.PlayerProfileInfoBarView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (id)accessibilityElements
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = [(PlayerProfileInfoBarViewAccessibility *)self _accessibilityInfoViewElements];
  v3 = [(PlayerProfileInfoBarViewAccessibility *)self safeArrayForKey:@"accessibilityInfoItemPairs"];
  v4 = v11[5];
  if (!v4)
  {
    v5 = [MEMORY[0x29EDB8DE8] array];
    v6 = v11[5];
    v11[5] = v5;

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __62__PlayerProfileInfoBarViewAccessibility_accessibilityElements__block_invoke;
    v9[3] = &unk_29F2C07C0;
    v9[4] = self;
    v9[5] = &v10;
    [v3 enumerateObjectsUsingBlock:v9];
    [(PlayerProfileInfoBarViewAccessibility *)self _setAccessibilityInfoViewElements:v11[5]];
    v4 = v11[5];
  }

  v7 = v4;

  _Block_object_dispose(&v10, 8);

  return v7;
}

void __62__PlayerProfileInfoBarViewAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] >= 2)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v3 objectAtIndexedSubscript:1];
    v6 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v4, v5}];
    v7 = [objc_alloc(MEMORY[0x29EDC7318]) initWithAccessibilityContainer:*(a1 + 32) representedElements:v6];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __62__PlayerProfileInfoBarViewAccessibility_accessibilityElements__block_invoke_2;
    v10[3] = &unk_29F2C0778;
    v11 = v4;
    v12 = v5;
    v8 = v5;
    v9 = v4;
    [v7 _setAccessibilityLabelBlock:v10];
    [v7 _setIsAccessibilityElementBlock:&__block_literal_global];
    [v7 setAccessibilityRespondsToUserInteraction:0];
    [*(*(*(a1 + 40) + 8) + 40) axSafelyAddObject:v7];
  }
}

id __62__PlayerProfileInfoBarViewAccessibility_accessibilityElements__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityLabel];
  v5 = [*(a1 + 40) accessibilityLabel];
  v3 = __UIAXStringForVariables();

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PlayerProfileInfoBarViewAccessibility;
  [(PlayerProfileInfoBarViewAccessibility *)&v3 layoutSubviews];
  [(PlayerProfileInfoBarViewAccessibility *)self _setAccessibilityInfoViewElements:0];
}

@end