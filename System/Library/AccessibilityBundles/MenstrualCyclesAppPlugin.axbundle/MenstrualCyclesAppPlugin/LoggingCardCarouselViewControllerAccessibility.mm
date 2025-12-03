@interface LoggingCardCarouselViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)cardProgressLabel;
- (id)collectionViewFrom:(id)from;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation LoggingCardCarouselViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MenstrualCyclesAppPlugin.LoggingCardHeaderView"];
  [validationsCopy validateClass:@"MenstrualCyclesAppPlugin.LoggingCardCarouselViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"MenstrualCyclesAppPlugin.LoggingCardCarouselViewController" conformsToProtocol:@"UIScrollViewDelegate"];
  [validationsCopy validateClass:@"MenstrualCyclesAppPlugin.LoggingCardCarouselViewController" hasInstanceMethod:@"_accessibilityCardProgressLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = LoggingCardCarouselViewControllerAccessibility;
  [(LoggingCardCarouselViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  view = [v2 view];
  subviews = [view subviews];

  v5 = [subviews axFilterObjectsUsingBlock:&__block_literal_global_1];
  lastObject = [v5 lastObject];
  [lastObject setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
}

uint64_t __92__LoggingCardCarouselViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v48 = *MEMORY[0x29EDCA608];
  LOBYTE(v42[0]) = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = [(LoggingCardCarouselViewControllerAccessibility *)self collectionViewFrom:v5];
  v7 = v6;
  if (v6)
  {
    [v6 bounds];
    AX_CGRectGetCenter();
    v9 = v8;
    v11 = v10;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [v7 indexPathsForVisibleItems];
    v12 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      selfCopy = self;
      v39 = v5;
      v14 = 0;
      v16 = *MEMORY[0x29EDB90B8];
      v15 = *(MEMORY[0x29EDB90B8] + 8);
      v17 = *v44;
      scrollCopy = scroll;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v43 + 1) + 8 * i);
          v20 = [v7 cellForItemAtIndexPath:v19];
          [v20 bounds];
          [v7 convertRect:v20 fromView:?];
          v49.x = v9;
          v49.y = v11;
          if (CGRectContainsPoint(v50, v49))
          {
            if (scroll == 2)
            {
              v16 = 0.5;
              v21 = 1;
            }

            else
            {
              if (scroll != 1)
              {

                v5 = v39;
                goto LABEL_22;
              }

              v16 = -0.5;
              v21 = -1;
            }

            v22 = [MEMORY[0x29EDB9FE0] indexPathForItem:objc_msgSend(v19 inSection:{"item") + v21, objc_msgSend(v19, "section")}];
            v23 = [v7 cellForItemAtIndexPath:v22];

            v14 = v23;
            scroll = scrollCopy;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      if (!v14)
      {
        v35 = 0;
        v5 = v39;
        goto LABEL_24;
      }

      [v14 center];
      v25 = v24;
      [v7 bounds];
      v27 = v25 + v26 * -0.5;
      [v7 contentOffset];
      [v7 setContentOffset:1 animated:v27];
      [v7 contentOffset];
      v42[0] = v28;
      v42[1] = v29;
      if (objc_opt_respondsToSelector())
      {
        [(LoggingCardCarouselViewControllerAccessibility *)selfCopy scrollViewWillEndDragging:v7 withVelocity:v42 targetContentOffset:v16, v15];
      }

      v30 = accessibilityLocalizedString(@"card");
      cardProgressLabel = [(LoggingCardCarouselViewControllerAccessibility *)selfCopy cardProgressLabel];
      text = [cardProgressLabel text];

      LODWORD(cardProgressLabel) = *MEMORY[0x29EDC7EF0];
      v33 = __UIAXStringForVariables();
      UIAccessibilityPostNotification(cardProgressLabel, v33);

      v34 = [v14 _accessibilityFindSubviewDescendant:{&__block_literal_global_314, text, @"__AXStringForVariablesSentinel"}];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v34);

      v35 = 1;
      v5 = v39;
    }

    else
    {
      v14 = 0;
LABEL_22:

      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

LABEL_24:

  v36 = *MEMORY[0x29EDCA608];
  return v35;
}

uint64_t __70__LoggingCardCarouselViewControllerAccessibility_accessibilityScroll___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2DE840](@"MenstrualCyclesAppPlugin.LoggingCardHeaderView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)cardProgressLabel
{
  objc_opt_class();
  v3 = [(LoggingCardCarouselViewControllerAccessibility *)self safeValueForKey:@"_accessibilityCardProgressLabel"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (id)collectionViewFrom:(id)from
{
  view = [from view];
  v4 = [view _accessibilityFindSubviewDescendant:&__block_literal_global_316];

  return v4;
}

uint64_t __69__LoggingCardCarouselViewControllerAccessibility_collectionViewFrom___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = LoggingCardCarouselViewControllerAccessibility;
  [(LoggingCardCarouselViewControllerAccessibility *)&v5 viewDidLoad];
  [(LoggingCardCarouselViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [(LoggingCardCarouselViewControllerAccessibility *)self collectionViewFrom:v3];
  [v4 setAccessibilityIdentifier:@"AXLoggingCardCarouselViewCollectionView"];
}

@end