@interface SUUICarouselPageSectionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityDescendantElementAtIndexPathIsValid:(id)valid;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityUpdateValidIndices;
- (void)_fireCycleTimer;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUICarouselPageSectionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUICarouselPageSection" hasInstanceMethod:@"_carouselCollectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUICarouselPageSection" hasInstanceVariable:@"_modelObjects" withType:"NSArray"];
  [validationsCopy validateClass:@"SUUICarouselPageSection" hasInstanceMethod:@"willAppearInContext:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SUUICarouselPageSection" hasInstanceMethod:@"willTransitionToSize: withTransitionCoordinator:" withFullSignature:{"v", "{CGSize=dd}", "@", 0}];
}

- (void)_fireCycleTimer
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v3.receiver = self;
    v3.super_class = SUUICarouselPageSectionAccessibility;
    [(SUUICarouselPageSectionAccessibility *)&v3 _fireCycleTimer];
  }
}

- (void)willAppearInContext:(id)context
{
  v4.receiver = self;
  v4.super_class = SUUICarouselPageSectionAccessibility;
  [(SUUICarouselPageSectionAccessibility *)&v4 willAppearInContext:context];
  [(SUUICarouselPageSectionAccessibility *)self _accessibilityUpdateValidIndices];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = SUUICarouselPageSectionAccessibility;
  [(SUUICarouselPageSectionAccessibility *)&v5 willTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(SUUICarouselPageSectionAccessibility *)self _accessibilityUpdateValidIndices];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SUUICarouselPageSectionAccessibility;
  [(SUUICarouselPageSectionAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SUUICarouselPageSectionAccessibility *)self _accessibilityUpdateValidIndices];
}

- (void)_accessibilityUpdateValidIndices
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v9 = [(SUUICarouselPageSectionAccessibility *)self safeValueForKey:@"_carouselCollectionView"];
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
    [(SUUICarouselPageSectionAccessibility *)self _accessibilitySetRetainedValue:v8 forKey:@"kAXStartingIndexPath"];
  }

  else
  {

    [(SUUICarouselPageSectionAccessibility *)self _accessibilitySetRetainedValue:0 forKey:@"kAXStartingIndexPath"];
  }
}

- (BOOL)_accessibilityDescendantElementAtIndexPathIsValid:(id)valid
{
  validCopy = valid;
  v5 = [(SUUICarouselPageSectionAccessibility *)self _accessibilityValueForKey:@"kAXStartingIndexPath"];
  v6 = v5;
  if (v5 && (v7 = [v5 section], v7 == objc_msgSend(validCopy, "section")))
  {
    v8 = [(SUUICarouselPageSectionAccessibility *)self safeValueForKey:@"_modelObjects"];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15 = MEMORY[0x29EDCA5F8];
    v9 = v8;
    AXPerformSafeBlock();
    v10 = v17[3];

    _Block_object_dispose(&v16, 8);
    item = [validCopy item];
    v13 = 0;
    if (item >= [v6 item] || objc_msgSend(validCopy, "item") < v10)
    {
      item2 = [validCopy item];
      if (item2 < [v6 item] + v10 || objc_msgSend(validCopy, "item") < v10)
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

uint64_t __90__SUUICarouselPageSectionAccessibility__accessibilityDescendantElementAtIndexPathIsValid___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end