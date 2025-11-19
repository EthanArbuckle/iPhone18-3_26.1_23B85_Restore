@interface SBFLockScreenDateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityServesAsFirstElement;
- (BOOL)_accessibilityViewIsVisible;
- (BOOL)_axIsComplicationViewVisible;
- (BOOL)_axIsCustomSubtitleViewVisible;
- (BOOL)_axIsDateViewVisible;
- (BOOL)_axIsInlineWidgetVisible;
- (CGRect)_axTimeLabelFrame;
- (CGRect)accessibilityFrame;
- (SBFLockScreenDateViewAccessibility)initWithFrame:(CGRect)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_axComplicationContainerViewController;
- (id)_axElements:(BOOL)a3;
- (id)_axInlineComplicationViewController;
- (id)_axSidebarComplicationContainerViewController;
- (id)_axWidgetFromController:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateLabels;
- (void)layoutSubviews;
@end

@implementation SBFLockScreenDateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  if (AXProcessIsSpringBoard())
  {
    [v3 validateClass:@"SBFLockScreenDateView" isKindOfClass:@"UIView"];
    [v3 validateClass:@"CSCoverSheetViewController"];
  }

  [v3 validateClass:@"SBFLockScreenDateView" hasInstanceVariable:@"_timeLabel" withType:"SBUILegibilityLabel"];
  [v3 validateClass:@"SBFLockScreenDateView" hasInstanceVariable:@"_dateSubtitleView" withType:"SBFLockScreenDateSubtitleDateView"];
  [v3 validateClass:@"SBFLockScreenDateView" hasInstanceVariable:@"_customSubtitleView" withType:"SBFLockScreenDateSubtitleView"];
  [v3 validateClass:@"SBFLockScreenDateSubtitleView" hasInstanceVariable:@"_label" withType:"SBUILegibilityLabel"];
  [v3 validateClass:@"SBFLockScreenDateSubtitleView" hasInstanceMethod:@"string" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFLockScreenDateView" hasInstanceMethod:@"_updateLabels" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBFLockScreenDateViewController" hasProperty:@"inlineComplicationViewController" withType:"@"];
  [v3 validateClass:@"SBFLockScreenDateViewController" hasProperty:@"complicationContainerViewController" withType:"@"];
  if (NSClassFromString(&cfstr_Chuiswidgethos.isa))
  {
    [v3 validateClass:@"CHUISWidgetHostViewController" hasInstanceVariable:@"_vibrancyEffectView" withType:"BSUIVibrancyEffectView"];
  }

  [v3 validateClass:@"BSUIVibrancyEffectView" hasProperty:@"contentView" withType:"@"];
}

- (id)_axElements:(BOOL)a3
{
  v3 = a3;
  v46 = *MEMORY[0x29EDCA608];
  v40 = [MEMORY[0x29EDB8DE8] array];
  v5 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_timeLabel"];
  v6 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_customSubtitleView"];
  v7 = [(SBFLockScreenDateViewAccessibility *)self safeUIViewForKey:@"_dateSubtitleView"];
  if ([v6 _accessibilityViewIsVisible])
  {
    [v40 axSafelyAddObject:v6];
  }

  if ([(SBFLockScreenDateViewAccessibility *)self _axIsDateViewVisible])
  {
    v8 = v7;
LABEL_7:
    v10 = v8;
    goto LABEL_8;
  }

  v9 = [(SBFLockScreenDateViewAccessibility *)self _axCustomSubtitleView];

  if (v9)
  {
    v8 = [(SBFLockScreenDateViewAccessibility *)self _axCustomSubtitleView];
    goto LABEL_7;
  }

  v31 = [(SBFLockScreenDateViewAccessibility *)self _axInlineComplicationViewController];
  v32 = v31;
  if (v3)
  {
    v10 = [v31 view];
  }

  else
  {
    v33 = [v31 safeValueForKeyPath:@"widgetViewController.widgetHostViewController"];

    v10 = [(SBFLockScreenDateViewAccessibility *)self _axWidgetFromController:v33];
  }

LABEL_8:
  [v10 _setAccessibilityIsNotFirstElement:1];
  [v40 axSafelyAddObject:v10];
  if ([v5 _accessibilityViewIsVisible])
  {
    [v40 axSafelyAddObject:v5];
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
    if (v3)
    {
      v13 = [v11 view];
      [v40 axSafelyAddObject:v13];
    }

    else
    {
      v35 = v10;
      v36 = v7;
      v38 = v5;
      v39 = self;
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
              v27 = [(SBFLockScreenDateViewAccessibility *)v39 _axWidgetFromController:v26];
              [v40 axSafelyAddObject:v27];

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
      v10 = v35;
      v7 = v36;
      v12 = v34;
    }
  }

  v29 = [v40 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

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

- (SBFLockScreenDateViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SBFLockScreenDateViewAccessibility;
  v3 = [(SBFLockScreenDateViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SBFLockScreenDateViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
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
    v10 = [(SBFLockScreenDateViewAccessibility *)&v13 _accessibilityHitTest:v7 withEvent:x, y];
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
  v3 = [(SBFLockScreenDateViewAccessibility *)self _accessibilityViewController];
  v4 = [v3 safeValueForKey:@"inlineComplicationViewController"];
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
  v5 = [v4 _accessibilityViewIsVisible];

  return v5;
}

- (BOOL)_axIsCustomSubtitleViewVisible
{
  v2 = [(SBFLockScreenDateViewAccessibility *)self _axCustomSubtitleView];
  v3 = v2 != 0;

  return v3;
}

- (id)_axComplicationContainerViewController
{
  objc_opt_class();
  v3 = [(SBFLockScreenDateViewAccessibility *)self _accessibilityViewController];
  v4 = [v3 safeValueForKey:@"complicationContainerViewController"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (id)_axSidebarComplicationContainerViewController
{
  objc_opt_class();
  v3 = [(SBFLockScreenDateViewAccessibility *)self _accessibilityViewController];
  v4 = [v3 parentViewController];
  v5 = [v4 safeValueForKey:@"sidebarComplicationContainerViewController"];
  v6 = __UIAccessibilityCastAsClass();

  return v6;
}

- (BOOL)_axIsInlineWidgetVisible
{
  v2 = [(SBFLockScreenDateViewAccessibility *)self _axInlineComplicationViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_axIsComplicationViewVisible
{
  v2 = [(SBFLockScreenDateViewAccessibility *)self _axComplicationContainerViewController];
  v3 = v2 != 0;

  return v3;
}

- (id)_axWidgetFromController:(id)a3
{
  v4 = a3;
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
      v8 = [v4 safeValueForKeyPath:@"_vibrancyEffectView.contentView"];
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