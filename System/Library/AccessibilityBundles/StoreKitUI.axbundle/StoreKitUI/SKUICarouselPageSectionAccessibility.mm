@interface SKUICarouselPageSectionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityDescendantElementAtIndexPathIsValid:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateValidIndices;
- (void)_fireCycleTimer;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKUICarouselPageSectionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUICarouselPageSection" hasInstanceMethod:@"_carouselCollectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUICarouselPageSection" hasInstanceVariable:@"_modelObjects" withType:"NSArray"];
  [v3 validateClass:@"SKUICarouselPageSection" hasInstanceMethod:@"willAppearInContext:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SKUICarouselPageSection" hasInstanceMethod:@"willTransitionToSize: withTransitionCoordinator:" withFullSignature:{"v", "{CGSize=dd}", "@", 0}];
}

- (void)_fireCycleTimer
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v3.receiver = self;
    v3.super_class = SKUICarouselPageSectionAccessibility;
    [(SKUICarouselPageSectionAccessibility *)&v3 _fireCycleTimer];
  }
}

- (void)willAppearInContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKUICarouselPageSectionAccessibility;
  [(SKUICarouselPageSectionAccessibility *)&v4 willAppearInContext:a3];
  [(SKUICarouselPageSectionAccessibility *)self _accessibilityUpdateValidIndices];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = SKUICarouselPageSectionAccessibility;
  [(SKUICarouselPageSectionAccessibility *)&v5 willTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(SKUICarouselPageSectionAccessibility *)self _accessibilityUpdateValidIndices];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SKUICarouselPageSectionAccessibility;
  [(SKUICarouselPageSectionAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SKUICarouselPageSectionAccessibility *)self _accessibilityUpdateValidIndices];
}

- (void)_accessibilityUpdateValidIndices
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v9 = [(SKUICarouselPageSectionAccessibility *)self safeValueForKey:@"_carouselCollectionView"];
    [v9 bounds];
    x = v11.origin.x;
    y = v11.origin.y;
    width = v11.size.width;
    height = v11.size.height;
    MidX = CGRectGetMidX(v11);
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v8 = [v9 indexPathForItemAtPoint:{MidX, CGRectGetMidY(v12)}];
    [(SKUICarouselPageSectionAccessibility *)self _accessibilitySetRetainedValue:v8 forKey:@"kAXStartingIndexPath"];
  }

  else
  {

    [(SKUICarouselPageSectionAccessibility *)self _accessibilitySetRetainedValue:0 forKey:@"kAXStartingIndexPath"];
  }
}

- (BOOL)_accessibilityDescendantElementAtIndexPathIsValid:(id)a3
{
  v4 = a3;
  v5 = [(SKUICarouselPageSectionAccessibility *)self _accessibilityValueForKey:@"kAXStartingIndexPath"];
  v6 = v5;
  if (v5 && (v7 = [v5 section], v7 == objc_msgSend(v4, "section")))
  {
    v8 = [(SKUICarouselPageSectionAccessibility *)self safeValueForKey:@"_modelObjects"];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15 = MEMORY[0x29EDCA5F8];
    v9 = v8;
    AXPerformSafeBlock();
    v10 = v17[3];

    _Block_object_dispose(&v16, 8);
    v11 = [v4 item];
    v13 = 0;
    if (v11 >= [v6 item] || objc_msgSend(v4, "item") < v10)
    {
      v12 = [v4 item];
      if (v12 < [v6 item] + v10 || objc_msgSend(v4, "item") < v10)
      {
        v13 = 1;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t __90__SKUICarouselPageSectionAccessibility__accessibilityDescendantElementAtIndexPathIsValid___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end