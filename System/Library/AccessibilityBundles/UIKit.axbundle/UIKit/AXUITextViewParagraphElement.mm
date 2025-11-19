@interface AXUITextViewParagraphElement
@end

@implementation AXUITextViewParagraphElement

double __80___AXUITextViewParagraphElement_initWithAccessibilityContainer_textRange_links___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v7 = [v5 range];
  [WeakRetained _accessibilityBoundsForRange:{v7, v1}];
  v8 = v2;
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](WeakRetained);
  return v8;
}

uint64_t __80___AXUITextViewParagraphElement_initWithAccessibilityContainer_textRange_links___block_invoke_2(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  v8 = 0;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](WeakRetained);
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [(UITextViewAccessibility *)v6 _accessibilityActivateLink:v2];
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](v6);
  return v3;
}

@end