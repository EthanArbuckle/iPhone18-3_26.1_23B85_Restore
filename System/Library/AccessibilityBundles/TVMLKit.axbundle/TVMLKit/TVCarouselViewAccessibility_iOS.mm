@interface TVCarouselViewAccessibility_iOS
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_updateAutoScrollTimer;
@end

@implementation TVCarouselViewAccessibility_iOS

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVCarouselView" hasInstanceMethod:@"_updateAutoScrollTimer" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"_TVCarouselView" hasInstanceMethod:@"_stopAutoScrollTimer" withFullSignature:{"v", 0}];
}

- (void)_updateAutoScrollTimer
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v4 = MEMORY[0x29EDCA5F8];
    v5 = 3221225472;
    v6 = __57__TVCarouselViewAccessibility_iOS__updateAutoScrollTimer__block_invoke;
    v7 = &unk_29F308080;
    selfCopy = self;
    AXPerformSafeBlock();
  }

  else
  {
    v3.receiver = self;
    v3.super_class = TVCarouselViewAccessibility_iOS;
    [(TVCarouselViewAccessibility_iOS *)&v3 _updateAutoScrollTimer];
  }
}

@end