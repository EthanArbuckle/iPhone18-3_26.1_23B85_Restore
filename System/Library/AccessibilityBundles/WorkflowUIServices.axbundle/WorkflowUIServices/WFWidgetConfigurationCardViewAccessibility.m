@interface WFWidgetConfigurationCardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityAdditionalElements;
- (id)_axClosePopupElement;
@end

@implementation WFWidgetConfigurationCardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WFWidgetConfigurationCardView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"WFWidgetConfigurationCardViewDelegate" hasMethod:@"widgetConfigurationCardViewDidRequestToClose:" isInstanceMethod:1 isRequired:1];
}

- (id)_accessibilityAdditionalElements
{
  v6[1] = *MEMORY[0x29EDCA608];
  v2 = [(WFWidgetConfigurationCardViewAccessibility *)self _axClosePopupElement];
  v6[0] = v2;
  v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

- (id)_axClosePopupElement
{
  v3 = [(WFWidgetConfigurationCardViewAccessibility *)self __axClosePopupElement];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    v5 = accessibilityLocalizedString(@"dismiss.popup");
    [v4 setAccessibilityLabel:v5];

    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __66__WFWidgetConfigurationCardViewAccessibility__axClosePopupElement__block_invoke;
    v10[3] = &unk_29F3235D8;
    objc_copyWeak(&v11, &location);
    [v4 _setAccessibilityFrameBlock:v10];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __66__WFWidgetConfigurationCardViewAccessibility__axClosePopupElement__block_invoke_2;
    v8[3] = &unk_29F323600;
    objc_copyWeak(&v9, &location);
    [v4 _setAccessibilityActivateBlock:v8];
    [(WFWidgetConfigurationCardViewAccessibility *)self __axSetClosePopupElement:v4];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v6 = [(WFWidgetConfigurationCardViewAccessibility *)self __axClosePopupElement];

  return v6;
}

double __66__WFWidgetConfigurationCardViewAccessibility__axClosePopupElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _accessibilityBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  CGRectGetMidY(v16);
  v12 = objc_loadWeakRetained((a1 + 32));
  UIAccessibilityFrameToBounds();
  v14 = v13;

  return v14;
}

uint64_t __66__WFWidgetConfigurationCardViewAccessibility__axClosePopupElement__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axHandleClosePopupAction];

  return v2;
}

void __71__WFWidgetConfigurationCardViewAccessibility__axHandleClosePopupAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_delegate"];
  [v2 widgetConfigurationCardViewDidRequestToClose:*(a1 + 32)];
}

@end