@interface WeekViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityScrollStatusForScrollView:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateWeekScroller;
- (void)viewDidLoad;
@end

@implementation WeekViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WeekGroupView"];
  [v3 validateClass:@"WeekViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"WeekView" hasClassMethod:@"dayWidthForOrientation:withViewInViewHierarchy:" withFullSignature:{"d", "q", "@", 0}];
  [v3 validateClass:@"WeekViewController" hasInstanceVariable:@"_weekScroller" withType:"UIScrollView"];
  [v3 validateClass:@"WeekViewController" hasInstanceVariable:@"_visibleWeeks" withType:"NSMutableArray"];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"interfaceOrientation" withFullSignature:{"q", 0}];
  [v3 validateClass:@"WeekGroupView" hasInstanceMethod:@"dateForXOffset:" withFullSignature:{"@", "d", 0}];
}

- (void)_axAnnotateWeekScroller
{
  v2 = [(WeekViewControllerAccessibility *)self safeValueForKey:@"_weekScroller"];
  [v2 setIsAccessibilityOpaqueElementProvider:1];
  [v2 accessibilitySetIdentification:@"_AXWeekScrollViewIdentifier"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = WeekViewControllerAccessibility;
  [(WeekViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(WeekViewControllerAccessibility *)self _axAnnotateWeekScroller];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WeekViewControllerAccessibility;
  [(WeekViewControllerAccessibility *)&v3 viewDidLoad];
  [(WeekViewControllerAccessibility *)self _axAnnotateWeekScroller];
}

- (id)accessibilityScrollStatusForScrollView:(id)a3
{
  v62 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v43 = [(WeekViewControllerAccessibility *)self safeValueForKey:@"_weekScroller"];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v54 = MEMORY[0x29EDCA5F8];
  v55 = 3221225472;
  v56 = __74__WeekViewControllerAccessibility_accessibilityScrollStatusForScrollView___block_invoke;
  v57 = &unk_29F2D2BB8;
  v60 = &v44;
  v58 = self;
  v5 = v4;
  v59 = v5;
  AXPerformSafeBlock();
  v6 = v45[3];

  _Block_object_dispose(&v44, 8);
  [v43 frame];
  v8 = v7;
  v9 = [(WeekViewControllerAccessibility *)self safeValueForKey:@"_visibleWeeks"];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v50 objects:v61 count:16];
  v12 = v6 * 0.5 + v8;
  if (v11)
  {
    v13 = *v51;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v50 + 1) + 8 * i);
        v16 = [(WeekViewControllerAccessibility *)self safeValueForKey:@"view"];
        [v15 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = [v15 superview];
        [v16 convertRect:v25 fromView:{v18, v20, v22, v24}];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        if (v27 <= v12)
        {
          v64.origin.x = v27;
          v64.origin.y = v29;
          v64.size.width = v31;
          v64.size.height = v33;
          if (CGRectGetMaxX(v64) > v12)
          {
            v34 = v15;
            goto LABEL_12;
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v50 objects:v61 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v34 = 0;
LABEL_12:

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__2;
  v48 = __Block_byref_object_dispose__2;
  v49 = 0;
  v35 = v34;
  AXPerformSafeBlock();
  if (*(v45 + 5) || (_AXAssert(), *(v45 + 5)))
  {
    v36 = [MEMORY[0x29EDB8D98] currentCalendar];
    v37 = [v36 dateFromComponents:*(v45 + 5)];

    v38 = AXDateStringForFormat();
    v39 = MEMORY[0x29EDBA0F8];
    v40 = accessibilityLocalizedString(@"week.scroll.status");
    v41 = [v39 stringWithFormat:v40, v38];
  }

  else
  {
    v41 = 0;
  }

  _Block_object_dispose(&v44, 8);

  return v41;
}

uint64_t __74__WeekViewControllerAccessibility_accessibilityScrollStatusForScrollView___block_invoke(uint64_t a1)
{
  result = -[objc_class dayWidthForOrientation:withViewInViewHierarchy:](NSClassFromString(&cfstr_Weekview.isa), "dayWidthForOrientation:withViewInViewHierarchy:", [*(a1 + 32) interfaceOrientation], *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

uint64_t __74__WeekViewControllerAccessibility_accessibilityScrollStatusForScrollView___block_invoke_322(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) dateForXOffset:*(a1 + 48)];

  return MEMORY[0x2A1C71028]();
}

@end