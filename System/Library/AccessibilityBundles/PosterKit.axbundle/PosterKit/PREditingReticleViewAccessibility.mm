@interface PREditingReticleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityShouldUseHostContextIDForPress;
- (BOOL)accessibilityElementsHidden;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityAXAttributedLabel;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (unint64_t)accessibilityTraits;
- (void)_axSetRemoteViews;
@end

@implementation PREditingReticleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIScene" hasInstanceMethod:@"_FBSScene" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FBSScene" hasInstanceMethod:@"hostProcess" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FBSProcess" hasInstanceMethod:@"pid" withFullSignature:{"i", 0}];
  [v3 validateClass:@"PREditorRootViewController" hasInstanceMethod:@"isComplicationsRowConfigured" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PREditorRootViewController" hasInstanceMethod:@"isComplicationSidebarConfigured" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PREditorRootViewController" hasInstanceMethod:@"complicationHostViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PREditorRootViewController" hasInstanceMethod:@"complicationSidebarEmptyStateView" withFullSignature:{"@", 0}];
}

- (id)_accessibilityAXAttributedLabel
{
  v3 = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  if (([v3 isEqualToString:@"grouped-widgets-reticle-view"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"grouped-widgets-reticle-sidebar-view"))
  {
    v4 = @"reticle.view.add.widget.button.label";
LABEL_4:
    v5 = accessibilityLocalizedString(v4);
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"clock-reticle-view"])
  {
    v4 = @"clock.complication.label";
    goto LABEL_4;
  }

  if ([v3 isEqualToString:@"contact-reticle-view"])
  {
    v4 = @"contact.complication.label";
    goto LABEL_4;
  }

  if (![v3 isEqualToString:@"inline-widget-reticle-view"])
  {
    v13.receiver = self;
    v13.super_class = PREditingReticleViewAccessibility;
    v5 = [(PREditingReticleViewAccessibility *)&v13 _accessibilityAXAttributedLabel];
    goto LABEL_5;
  }

  [(PREditingReticleViewAccessibility *)self _axSetRemoteViews];
  v8 = [(PREditingReticleViewAccessibility *)self _accessibilityGetRemoteElement];
  v9 = objc_alloc(MEMORY[0x29EDBD7E8]);
  v10 = accessibilityLocalizedString(@"inline.complication.label");
  v6 = [v9 initWithString:v10];

  if (v8)
  {
    v11 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v8, "remotePid")}];
    [v6 setAttribute:v11 forKey:*MEMORY[0x29EDBD838]];

    v12 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v8, "uuidHash")}];
    [v6 setAttribute:v12 forKey:*MEMORY[0x29EDBD840]];
  }

LABEL_6:

  return v6;
}

- (id)accessibilityHint
{
  v3 = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"grouped-widgets-reticle-view"])
  {
    v8.receiver = self;
    v8.super_class = PREditingReticleViewAccessibility;
    v4 = [(PREditingReticleViewAccessibility *)&v8 accessibilityHint];
  }

  else
  {
    if (([v3 isEqualToString:@"clock-reticle-view"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"contact-reticle-view"))
    {
      v5 = @"font.reticle.view.hint";
    }

    else
    {
      v5 = @"reticle.view.hint";
    }

    v4 = accessibilityLocalizedString(v5);
  }

  v6 = v4;

  return v6;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(PREditingReticleViewAccessibility *)self _axPosterEditorViewController];
  v4 = [v3 safeBoolForKey:@"isComplicationsRowConfigured"];
  v5 = [v3 safeBoolForKey:@"isComplicationSidebarConfigured"];
  v6 = [v3 safeUIViewForKey:@"complicationSidebarEmptyStateView"];
  v7 = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  v8 = [v7 isEqualToString:@"grouped-widgets-reticle-view"];

  if (v8)
  {
    [v6 alpha];
    v10 = v9 != 1.0;
    v11 = v4 ^ 1;
  }

  else
  {
    v12 = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
    v13 = [v12 isEqualToString:@"grouped-widgets-reticle-sidebar-view"];

    if (!v13)
    {
      v15 = 1;
      goto LABEL_7;
    }

    [v6 alpha];
    v10 = v14 == 1.0;
    v11 = v5 ^ 1;
  }

  v15 = v10 & v11;
LABEL_7:

  return v15;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PREditingReticleViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PREditingReticleViewAccessibility *)&v3 accessibilityTraits];
}

- (BOOL)_accessibilityShouldUseHostContextIDForPress
{
  v2 = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  if ([v2 isEqualToString:@"clock-reticle-view"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"contact-reticle-view"))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [v2 isEqualToString:@"grouped-widgets-reticle-view"] ^ 1;
  }

  return v3;
}

- (id)accessibilityElements
{
  v18[1] = *MEMORY[0x29EDCA608];
  v3 = [(PREditingReticleViewAccessibility *)self _axPosterEditorViewController];
  objc_opt_class();
  v4 = [v3 safeValueForKeyPath:@"complicationHostViewController"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 view];

  v7 = [v3 safeBoolForKey:@"isComplicationsRowConfigured"];
  v8 = [v3 safeBoolForKey:@"isComplicationSidebarConfigured"];
  v9 = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  v10 = [v9 isEqualToString:@"grouped-widgets-reticle-view"];

  if (v10)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v18[0] = v6;
    v14 = v18;
LABEL_8:
    v15 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];
    goto LABEL_10;
  }

  v12 = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  v13 = [v12 isEqualToString:@"grouped-widgets-reticle-sidebar-view"] & v8;

  if (v13 == 1)
  {
    v17 = v6;
    v14 = &v17;
    goto LABEL_8;
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (BOOL)accessibilityElementsHidden
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 interfaceOrientation];

  v7 = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  if ([v7 isEqualToString:@"grouped-widgets-reticle-view"])
  {
    v8 = (v6 - 3) >= 2;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = v6 - 1;
    v10 = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
    v11 = [v10 isEqualToString:@"grouped-widgets-reticle-sidebar-view"];
    if (v9 < 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_axSetRemoteViews
{
  v3 = [(PREditingReticleViewAccessibility *)self _accessibilityGetRemoteElement];
  if (!v3)
  {
    v4 = [(PREditingReticleViewAccessibility *)self _accessibilityWindowScene];
    v5 = [v4 safeValueForKeyPath:@"_FBSScene.hostProcess"];
    v6 = [v5 safeIntForKey:@"pid"];

    v7 = [(PREditingReticleViewAccessibility *)self _accessibilityContextId];
    v3 = 0;
    if (v6)
    {
      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x29EDBD800]) initWithUUID:@"posterboard.posterkit.top.widget" andRemotePid:v6 andContextId:v7];
        [v8 setOnClientSide:1];
        [(PREditingReticleViewAccessibility *)self _accessibilitySetRemoteElement:v8];

        v3 = 0;
      }
    }
  }
}

@end