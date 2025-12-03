@interface SAUIIndicatorElementViewControllerAccessibility
- (id)_accessibilityContainerView;
- (id)_axIndicatorLabel;
- (id)_axIndicatorPath;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SAUIIndicatorElementViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = SAUIIndicatorElementViewControllerAccessibility;
  [(SAUIIndicatorElementViewControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [(SAUIIndicatorElementViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __93__SAUIIndicatorElementViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v8[3] = &unk_29F306418;
  objc_copyWeak(&v9, &location);
  [v3 _setAccessibilityLabelBlock:v8];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __93__SAUIIndicatorElementViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v6[3] = &unk_29F306440;
  objc_copyWeak(&v7, &location);
  [v3 _setIsAccessibilityElementBlock:v6];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __93__SAUIIndicatorElementViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v4[3] = &unk_29F306468;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityPathBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __93__SAUIIndicatorElementViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axIndicatorLabel];

  return v2;
}

BOOL __93__SAUIIndicatorElementViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axIndicatorLabel];
  v3 = v2 != 0;

  return v3;
}

id __93__SAUIIndicatorElementViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axIndicatorPath];

  return v2;
}

- (id)_axIndicatorLabel
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = [*MEMORY[0x29EDC8008] safeValueForKey:@"sensorActivityDataProvider"];
  v4 = [v3 safeSetForKey:@"activeSensorActivityAttributions"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v6)
  {

LABEL_16:
    v18.receiver = self;
    v18.super_class = SAUIIndicatorElementViewControllerAccessibility;
    accessibilityLabel = [(SAUIIndicatorElementViewControllerAccessibility *)&v18 accessibilityLabel];
    goto LABEL_22;
  }

  v7 = v6;
  LOBYTE(v8) = 0;
  LOBYTE(v9) = 0;
  v10 = *v20;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      if (v8)
      {
        v8 = 1;
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = [*(*(&v19 + 1) + 8 * i) safeIntegerForKey:@"sensor"] == 0;
        if (!v9)
        {
LABEL_8:
          v9 = [v12 safeIntegerForKey:@"sensor"] == 1;
          continue;
        }
      }

      v9 = 1;
    }

    v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v7);

  if (v8 && v9)
  {
    v13 = @"camera.mic.in.use";
    goto LABEL_21;
  }

  if (v8)
  {
    v13 = @"camera.in.use";
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v13 = @"mic.in.use";
LABEL_21:
  accessibilityLabel = accessibilityLocalizedString(v13);
LABEL_22:
  v15 = accessibilityLabel;

  v16 = *MEMORY[0x29EDCA608];

  return v15;
}

- (id)_axIndicatorPath
{
  _accessibilityContainerView = [(SAUIIndicatorElementViewControllerAccessibility *)self _accessibilityContainerView];
  v4 = _accessibilityContainerView;
  if (_accessibilityContainerView)
  {
    [_accessibilityContainerView accessibilityFrame];
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    v27 = CGRectInset(v26, -5.0, -5.0);
    v21 = v27.size.height;
    v9 = v27.origin.x;
    v23 = v27.origin.x;
    v10 = v27.origin.y;
    v11 = v27.size.width;
    v12 = CGRectGetWidth(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v22 = v12 / CGRectGetWidth(v28);
    v29.origin.x = v9;
    v29.origin.y = v10;
    v29.size.width = v11;
    v29.size.height = v21;
    v13 = CGRectGetHeight(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v14 = v13 / CGRectGetHeight(v30);
    layer = [v4 layer];
    [layer cornerRadius];
    v17 = fmax(v22, v14) * v16;

    accessibilityPath = [MEMORY[0x29EDC7948] _bezierPathWithArcRoundedRect:v23 cornerRadius:{v10, v11, v21, v17}];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SAUIIndicatorElementViewControllerAccessibility;
    accessibilityPath = [(SAUIIndicatorElementViewControllerAccessibility *)&v24 accessibilityPath];
  }

  v19 = accessibilityPath;

  return v19;
}

- (id)_accessibilityContainerView
{
  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
  v3 = [mEMORY[0x29EDC7938] safeValueForKey:@"systemApertureControllerForMainDisplay"];

  v4 = [v3 safeValueForKey:@"_systemApertureViewController"];
  v5 = [v4 safeArrayForKey:@"_orderedContainerViews"];
  if ([v5 count])
  {
    firstObject = [v5 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end