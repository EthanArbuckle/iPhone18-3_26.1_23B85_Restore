@interface SBFLockScreenDateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityServesAsFirstElement;
- (BOOL)_accessibilityViewIsVisible;
- (BOOL)_axIsComplicationViewVisible;
- (BOOL)_axIsCustomSubtitleViewVisible;
- (BOOL)_axIsDateViewVisible;
- (BOOL)_axIsInlineWidgetVisible;
- (CGRect)_axTimeLabelFrame;
- (CGRect)accessibilityFrame;
- (SBFLockScreenDateViewAccessibility)initWithFrame:(CGRect)frame;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_axComplicationContainerViewController;
- (id)_axElements:(BOOL)elements;
- (id)_axInlineComplicationViewController;
- (id)_axSidebarComplicationContainerViewController;
- (id)_axWidgetFromController:(id)controller;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateLabels;
- (void)layoutSubviews;
@end

@implementation SBFLockScreenDateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"SBFLockScreenDateView" isKindOfClass:@"UIView"];
    [validationsCopy validateClass:@"CSCoverSheetViewController"];
  }

  [validationsCopy validateClass:@"SBFLockScreenDateView" hasInstanceVariable:@"_timeLabel" withType:"SBUILegibilityLabel"];
  [validationsCopy validateClass:@"SBFLockScreenDateView" hasInstanceVariable:@"_dateSubtitleView" withType:"SBFLockScreenDateSubtitleDateView"];
  [validationsCopy validateClass:@"SBFLockScreenDateView" hasInstanceVariable:@"_customSubtitleView" withType:"SBFLockScreenDateSubtitleView"];
  [validationsCopy validateClass:@"SBFLockScreenDateSubtitleView" hasInstanceVariable:@"_label" withType:"SBUILegibilityLabel"];
  [validationsCopy validateClass:@"SBFLockScreenDateSubtitleView" hasInstanceMethod:@"string" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFLockScreenDateView" hasInstanceMethod:@"_updateLabels" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBFLockScreenDateViewController" hasProperty:@"inlineComplicationViewController" withType:"@"];
  [validationsCopy validateClass:@"SBFLockScreenDateViewController" hasProperty:@"complicationContainerViewController" withType:"@"];
  if (NSClassFromString(&cfstr_Chuiswidgethos.isa))
  {
    [validationsCopy validateClass:@"CHUISWidgetHostViewController" hasInstanceVariable:@"_vibrancyEffectView" withType:"BSUIVibrancyEffectView"];
  }

  [validationsCopy validateClass:@"BSUIVibrancyEffectView" hasProperty:@"contentView" withType:"@"];
}

- (id)_axElements:(BOOL)elements
{
  elementsCopy = elements;
  v46 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v5 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_timeLabel"];
  v6 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_customSubtitleView"];
  v7 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_dateSubtitleView"];
  if ([v6 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v6];
  }

  if ([(SBFLockScreenDateViewAccessibility *)self _axIsDateViewVisible])
  {
    _axCustomSubtitleView2 = v7;
LABEL_7:
    view = _axCustomSubtitleView2;
    goto LABEL_8;
  }

  _axCustomSubtitleView = [(SBFLockScreenDateViewAccessibility *)self _axCustomSubtitleView];

  if (_axCustomSubtitleView)
  {
    _axCustomSubtitleView2 = [(SBFLockScreenDateViewAccessibility *)self _axCustomSubtitleView];
    goto LABEL_7;
  }

  _axInlineComplicationViewController = [(SBFLockScreenDateViewAccessibility *)self _axInlineComplicationViewController];
  v32 = _axInlineComplicationViewController;
  if (elementsCopy)
  {
    view = [_axInlineComplicationViewController view];
  }

  else
  {
    v33 = [_axInlineComplicationViewController safeValueForKeyPath:@"widgetViewController.widgetHostViewController"];

    view = [(SBFLockScreenDateViewAccessibility *)self _axWidgetFromController:v33];
  }

LABEL_8:
  [view _setAccessibilityIsNotFirstElement:1];
  [array axSafelyAddObject:view];
  if ([v5 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v5];
  }

  if ([(SBFLockScreenDateViewAccessibility *)self _axIsComplicationViewVisible])
  {
    if (([*MEMORY[0x29EDC8008] activeInterfaceOrientation] - 1) >= 2)
    {
      [(SBFLockScreenDateViewAccessibility *)self _axSidebarComplicationContainerViewController];
    }

    else
    {
      [(SBFLockScreenDateViewAccessibility *)self _axComplicationContainerViewController];
    }
    v11 = ;
    v12 = v11;
    if (elementsCopy)
    {
      view2 = [v11 view];
      [array axSafelyAddObject:view2];
    }

    else
    {
      v35 = view;
      v36 = v7;
      v38 = v5;
      selfCopy = self;
      v37 = v6;
      v34 = v11;
      v14 = [v11 safeValueForKey:@"widgetGridViewController"];
      v15 = objc_alloc_init(MEMORY[0x29EDB8E20]);
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v16 = v14;
      v17 = [v14 safeValueForKey:@"model"];
      v18 = [v17 safeArrayForKey:@"complicationDescriptors"];

      v19 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v42;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v42 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v41 + 1) + 8 * i);
            v24 = [v23 safeStringForKey:@"uniqueIdentifier"];
            v25 = [v15 containsObject:v24];

            if ((v25 & 1) == 0)
            {
              v26 = [v16 widgetHostViewControllerForComplicationDescriptor:v23];
              v27 = [(SBFLockScreenDateViewAccessibility *)selfCopy _axWidgetFromController:v26];
              [array axSafelyAddObject:v27];

              v28 = [v23 safeStringForKey:@"uniqueIdentifier"];
              [v15 addObject:v28];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v20);
      }

      v6 = v37;
      v5 = v38;
      view = v35;
      v7 = v36;
      v12 = v34;
    }
  }

  v29 = [array sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

  return v29;
}

- (BOOL)_accessibilityServesAsFirstElement
{
  if ([(SBFLockScreenDateViewAccessibility *)self _axIsDateViewVisible])
  {
    return 0;
  }

  else
  {
    return ![(SBFLockScreenDateViewAccessibility *)self _axIsCustomSubtitleViewVisible];
  }
}

- (CGRect)accessibilityFrame
{
  v30.receiver = self;
  v30.super_class = SBFLockScreenDateViewAccessibility;
  [(SBFLockScreenDateViewAccessibility *)&v30 accessibilityFrame];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_timeLabel"];
  if ([v11 _accessibilityViewIsVisible])
  {
    [v11 accessibilityFrame];
    v38.origin.x = v12;
    v38.origin.y = v13;
    v38.size.width = v14;
    v38.size.height = v15;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v32 = CGRectUnion(v31, v38);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
  }

  v16 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_dateSubtitleView"];
  if ([(SBFLockScreenDateViewAccessibility *)self _axIsDateViewVisible])
  {
    [v16 accessibilityFrame];
    v39.origin.x = v17;
    v39.origin.y = v18;
    v39.size.width = v19;
    v39.size.height = v20;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v34 = CGRectUnion(v33, v39);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
  }

  v21 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_customSubtitleView"];
  if ([v21 _accessibilityViewIsVisible])
  {
    [v21 accessibilityFrame];
    v40.origin.x = v22;
    v40.origin.y = v23;
    v40.size.width = v24;
    v40.size.height = v25;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v36 = CGRectUnion(v35, v40);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)_updateLabels
{
  v3.receiver = self;
  v3.super_class = SBFLockScreenDateViewAccessibility;
  [(SBFLockScreenDateViewAccessibility *)&v3 _updateLabels];
  [(SBFLockScreenDateViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBFLockScreenDateViewAccessibility;
  [(SBFLockScreenDateViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_timeLabel"];
  [v3 accessibilitySetIdentification:@"LockScreenTimeLabel"];
}

- (CGRect)_axTimeLabelFrame
{
  v2 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_timeLabel"];
  [v2 frame];
  v13 = CGRectInset(v12, -25.0, 0.0);
  x = v13.origin.x;
  width = v13.size.width;
  height = v13.size.height;
  [MEMORY[0x29EDC0E40] frameForElements:1];
  v7 = v6;

  v8 = x;
  v9 = v7;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (BOOL)_accessibilityViewIsVisible
{
  v3 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_timeLabel"];
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_customSubtitleView"];
    v4 = ([v5 _accessibilityViewIsVisible] & 1) != 0 || -[SBFLockScreenDateViewAccessibility _axIsDateViewVisible](self, "_axIsDateViewVisible");
  }

  return v4;
}

- (SBFLockScreenDateViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SBFLockScreenDateViewAccessibility;
  v3 = [(SBFLockScreenDateViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SBFLockScreenDateViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_dateSubtitleView"];
  v9 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_timeLabel"];
  if (v8 && -[SBFLockScreenDateViewAccessibility _axIsDateViewVisible](self, "_axIsDateViewVisible") && ([v8 accessibilityFrame], v15.x = x, v15.y = y, CGRectContainsPoint(v17, v15)))
  {
    v10 = v8;
  }

  else if (v9 && ([v9 accessibilityFrame], v16.x = x, v16.y = y, CGRectContainsPoint(v18, v16)))
  {
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFLockScreenDateViewAccessibility;
    v10 = [(SBFLockScreenDateViewAccessibility *)&v13 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  v11 = v10;

  return v11;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = SBFLockScreenDateViewAccessibility;
  [(SBFLockScreenDateViewAccessibility *)&v2 layoutSubviews];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)_axInlineComplicationViewController
{
  objc_opt_class();
  _accessibilityViewController = [(SBFLockScreenDateViewAccessibility *)self _accessibilityViewController];
  v4 = [_accessibilityViewController safeValueForKey:@"inlineComplicationViewController"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (BOOL)_axIsDateViewVisible
{
  if ([(SBFLockScreenDateViewAccessibility *)self _axIsInlineWidgetVisible]|| [(SBFLockScreenDateViewAccessibility *)self _axIsCustomSubtitleViewVisible])
  {
    return 0;
  }

  v4 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_dateSubtitleView"];
  _accessibilityViewIsVisible = [v4 _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

- (BOOL)_axIsCustomSubtitleViewVisible
{
  _axCustomSubtitleView = [(SBFLockScreenDateViewAccessibility *)self _axCustomSubtitleView];
  v3 = _axCustomSubtitleView != 0;

  return v3;
}

- (id)_axComplicationContainerViewController
{
  objc_opt_class();
  _accessibilityViewController = [(SBFLockScreenDateViewAccessibility *)self _accessibilityViewController];
  v4 = [_accessibilityViewController safeValueForKey:@"complicationContainerViewController"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (id)_axSidebarComplicationContainerViewController
{
  objc_opt_class();
  _accessibilityViewController = [(SBFLockScreenDateViewAccessibility *)self _accessibilityViewController];
  parentViewController = [_accessibilityViewController parentViewController];
  v5 = [parentViewController safeValueForKey:@"sidebarComplicationContainerViewController"];
  v6 = __UIAccessibilityCastAsClass();

  return v6;
}

- (BOOL)_axIsInlineWidgetVisible
{
  _axInlineComplicationViewController = [(SBFLockScreenDateViewAccessibility *)self _axInlineComplicationViewController];
  v3 = _axInlineComplicationViewController != 0;

  return v3;
}

- (BOOL)_axIsComplicationViewVisible
{
  _axComplicationContainerViewController = [(SBFLockScreenDateViewAccessibility *)self _axComplicationContainerViewController];
  v3 = _axComplicationContainerViewController != 0;

  return v3;
}

- (id)_axWidgetFromController:(id)controller
{
  controllerCopy = controller;
  if (NSClassFromString(&cfstr_Cscoversheetvi_0.isa))
  {
    v5 = [(SBFLockScreenDateViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Cscoversheetvi_0.isa)];
    v6 = [v5 safeValueForKey:@"backgroundContentView"];

    if ([v6 _accessibilityViewIsVisible])
    {
      v7 = 0;
    }

    else
    {
      v8 = [controllerCopy safeValueForKeyPath:@"_vibrancyEffectView.contentView"];
      v7 = [v8 _accessibilityDescendantOfType:objc_opt_class()];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end