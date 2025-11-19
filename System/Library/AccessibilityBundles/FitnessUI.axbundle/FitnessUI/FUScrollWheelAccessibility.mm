@interface FUScrollWheelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)scrollViewDidEndDecelerating:(id)a3;
@end

@implementation FUScrollWheelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FUScrollWheel" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FUScrollWheel" hasInstanceMethod:@"currentIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"FUScrollWheel" hasInstanceMethod:@"setCurrentIndex:" withFullSignature:{"v", "Q", 0}];
  [v3 validateClass:@"FUScrollWheel" hasInstanceMethod:@"_alertDidChangeToCurrentIndex:" withFullSignature:{"v", "Q", 0}];
  [v3 validateClass:@"FUScrollWheel" hasInstanceMethod:@"_setActiveScrollwheelIfNotActive" withFullSignature:{"v", 0}];
  [v3 validateClass:@"FUScrollWheel" hasInstanceMethod:@"scrollViewDidEndDecelerating:" withFullSignature:{"v", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FUScrollWheelAccessibility;
  return UIAccessibilityTraitAdjustable | [(FUScrollWheelAccessibility *)&v3 accessibilityTraits]| UIAccessibilityTraitPickerElement;
}

- (id)accessibilityValue
{
  v2 = [(FUScrollWheelAccessibility *)self safeValueForKey:@"delegate"];
  if (objc_opt_respondsToSelector())
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__2;
    v10 = __Block_byref_object_dispose__2;
    v11 = 0;
    v5 = v2;
    AXPerformSafeBlock();
    v3 = v7[5];

    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __48__FUScrollWheelAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollWheel:*(a1 + 40) titleForItemAtIndex:{objc_msgSend(*(a1 + 40), "safeUnsignedIntegerForKey:", @"currentIndex"}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

- (void)accessibilityIncrement
{
  v3 = [(FUScrollWheelAccessibility *)self safeValueForKey:@"delegate"];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(FUScrollWheelAccessibility *)self safeUnsignedIntegerForKey:@"currentIndex"];
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6 = v3;
    AXPerformSafeBlock();
    v5 = v8[3];

    _Block_object_dispose(&v7, 8);
    if (v4 + 1 < v5)
    {
      AXPerformSafeBlock();
    }
  }
}

id __52__FUScrollWheelAccessibility_accessibilityIncrement__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) numberOfRowsInScrollWheel:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id __52__FUScrollWheelAccessibility_accessibilityIncrement__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCurrentIndex:*(a1 + 40) + 1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40) - 1;

  return [v2 _alertDidChangeToCurrentIndex:v3];
}

- (void)accessibilityDecrement
{
  if ([(FUScrollWheelAccessibility *)self safeUnsignedIntegerForKey:@"currentIndex"])
  {
    AXPerformSafeBlock();
  }
}

id __52__FUScrollWheelAccessibility_accessibilityDecrement__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentIndex:*(a1 + 40) - 1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40) - 1;

  return [v2 _alertDidChangeToCurrentIndex:v3];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v6.receiver = self;
  v6.super_class = FUScrollWheelAccessibility;
  [(FUScrollWheelAccessibility *)&v6 scrollViewDidEndDecelerating:a3];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = [(FUScrollWheelAccessibility *)self accessibilityValue];
    if ([v4 length])
    {
      v5 = [[AXAttributedString alloc] initWithString:v4];
      [v5 setAttribute:&__kCFBooleanTrue forKey:kAXPageScrollIsCrownScroll];
      [v5 setAttribute:&__kCFBooleanTrue forKey:kAXPageScrollShouldSpeakElement];
      UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v5);
    }
  }
}

@end