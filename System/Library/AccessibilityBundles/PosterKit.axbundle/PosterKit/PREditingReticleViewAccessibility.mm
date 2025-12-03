@interface PREditingReticleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
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

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIScene" hasInstanceMethod:@"_FBSScene" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FBSScene" hasInstanceMethod:@"hostProcess" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FBSProcess" hasInstanceMethod:@"pid" withFullSignature:{"i", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"isComplicationsRowConfigured" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"isComplicationSidebarConfigured" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"complicationHostViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditorRootViewController" hasInstanceMethod:@"complicationSidebarEmptyStateView" withFullSignature:{"@", 0}];
}

- (id)_accessibilityAXAttributedLabel
{
  accessibilityIdentifier = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  if (([accessibilityIdentifier isEqualToString:@"grouped-widgets-reticle-view"] & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"grouped-widgets-reticle-sidebar-view"))
  {
    v4 = @"reticle.view.add.widget.button.label";
LABEL_4:
    _accessibilityAXAttributedLabel = accessibilityLocalizedString(v4);
LABEL_5:
    v6 = _accessibilityAXAttributedLabel;
    goto LABEL_6;
  }

  if ([accessibilityIdentifier isEqualToString:@"clock-reticle-view"])
  {
    v4 = @"clock.complication.label";
    goto LABEL_4;
  }

  if ([accessibilityIdentifier isEqualToString:@"contact-reticle-view"])
  {
    v4 = @"contact.complication.label";
    goto LABEL_4;
  }

  if (![accessibilityIdentifier isEqualToString:@"inline-widget-reticle-view"])
  {
    v13.receiver = self;
    v13.super_class = PREditingReticleViewAccessibility;
    _accessibilityAXAttributedLabel = [(PREditingReticleViewAccessibility *)&v13 _accessibilityAXAttributedLabel];
    goto LABEL_5;
  }

  [(PREditingReticleViewAccessibility *)self _axSetRemoteViews];
  _accessibilityGetRemoteElement = [(PREditingReticleViewAccessibility *)self _accessibilityGetRemoteElement];
  v9 = objc_alloc(MEMORY[0x29EDBD7E8]);
  v10 = accessibilityLocalizedString(@"inline.complication.label");
  v6 = [v9 initWithString:v10];

  if (_accessibilityGetRemoteElement)
  {
    v11 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(_accessibilityGetRemoteElement, "remotePid")}];
    [v6 setAttribute:v11 forKey:*MEMORY[0x29EDBD838]];

    v12 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(_accessibilityGetRemoteElement, "uuidHash")}];
    [v6 setAttribute:v12 forKey:*MEMORY[0x29EDBD840]];
  }

LABEL_6:

  return v6;
}

- (id)accessibilityHint
{
  accessibilityIdentifier = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"grouped-widgets-reticle-view"])
  {
    v8.receiver = self;
    v8.super_class = PREditingReticleViewAccessibility;
    accessibilityHint = [(PREditingReticleViewAccessibility *)&v8 accessibilityHint];
  }

  else
  {
    if (([accessibilityIdentifier isEqualToString:@"clock-reticle-view"] & 1) != 0 || objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"contact-reticle-view"))
    {
      v5 = @"font.reticle.view.hint";
    }

    else
    {
      v5 = @"reticle.view.hint";
    }

    accessibilityHint = accessibilityLocalizedString(v5);
  }

  v6 = accessibilityHint;

  return v6;
}

- (BOOL)isAccessibilityElement
{
  _axPosterEditorViewController = [(PREditingReticleViewAccessibility *)self _axPosterEditorViewController];
  v4 = [_axPosterEditorViewController safeBoolForKey:@"isComplicationsRowConfigured"];
  v5 = [_axPosterEditorViewController safeBoolForKey:@"isComplicationSidebarConfigured"];
  v6 = [_axPosterEditorViewController safeUIViewForKey:@"complicationSidebarEmptyStateView"];
  accessibilityIdentifier = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  v8 = [accessibilityIdentifier isEqualToString:@"grouped-widgets-reticle-view"];

  if (v8)
  {
    [v6 alpha];
    v10 = v9 != 1.0;
    v11 = v4 ^ 1;
  }

  else
  {
    accessibilityIdentifier2 = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
    v13 = [accessibilityIdentifier2 isEqualToString:@"grouped-widgets-reticle-sidebar-view"];

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
  accessibilityIdentifier = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"clock-reticle-view"] & 1) != 0 || (objc_msgSend(accessibilityIdentifier, "isEqualToString:", @"contact-reticle-view"))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [accessibilityIdentifier isEqualToString:@"grouped-widgets-reticle-view"] ^ 1;
  }

  return v3;
}

- (id)accessibilityElements
{
  v18[1] = *MEMORY[0x29EDCA608];
  _axPosterEditorViewController = [(PREditingReticleViewAccessibility *)self _axPosterEditorViewController];
  objc_opt_class();
  v4 = [_axPosterEditorViewController safeValueForKeyPath:@"complicationHostViewController"];
  v5 = __UIAccessibilityCastAsClass();

  view = [v5 view];

  v7 = [_axPosterEditorViewController safeBoolForKey:@"isComplicationsRowConfigured"];
  v8 = [_axPosterEditorViewController safeBoolForKey:@"isComplicationSidebarConfigured"];
  accessibilityIdentifier = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  v10 = [accessibilityIdentifier isEqualToString:@"grouped-widgets-reticle-view"];

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
    v18[0] = view;
    v14 = v18;
LABEL_8:
    v15 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];
    goto LABEL_10;
  }

  accessibilityIdentifier2 = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  v13 = [accessibilityIdentifier2 isEqualToString:@"grouped-widgets-reticle-sidebar-view"] & v8;

  if (v13 == 1)
  {
    v17 = view;
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
  window = [v3 window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  accessibilityIdentifier = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"grouped-widgets-reticle-view"])
  {
    v8 = (interfaceOrientation - 3) >= 2;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = interfaceOrientation - 1;
    accessibilityIdentifier2 = [(PREditingReticleViewAccessibility *)self accessibilityIdentifier];
    v11 = [accessibilityIdentifier2 isEqualToString:@"grouped-widgets-reticle-sidebar-view"];
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
  _accessibilityGetRemoteElement = [(PREditingReticleViewAccessibility *)self _accessibilityGetRemoteElement];
  if (!_accessibilityGetRemoteElement)
  {
    _accessibilityWindowScene = [(PREditingReticleViewAccessibility *)self _accessibilityWindowScene];
    v5 = [_accessibilityWindowScene safeValueForKeyPath:@"_FBSScene.hostProcess"];
    v6 = [v5 safeIntForKey:@"pid"];

    _accessibilityContextId = [(PREditingReticleViewAccessibility *)self _accessibilityContextId];
    _accessibilityGetRemoteElement = 0;
    if (v6)
    {
      if (_accessibilityContextId)
      {
        v8 = [objc_alloc(MEMORY[0x29EDBD800]) initWithUUID:@"posterboard.posterkit.top.widget" andRemotePid:v6 andContextId:_accessibilityContextId];
        [v8 setOnClientSide:1];
        [(PREditingReticleViewAccessibility *)self _accessibilitySetRemoteElement:v8];

        _accessibilityGetRemoteElement = 0;
      }
    }
  }
}

@end