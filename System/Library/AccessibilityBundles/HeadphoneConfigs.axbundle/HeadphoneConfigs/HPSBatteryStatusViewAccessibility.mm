@interface HPSBatteryStatusViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- ($FFD8FFF7A5D2C2666551BEB14716E99F)_accessibilityBatteryStatus;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setupViews;
@end

@implementation HPSBatteryStatusViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HPSBatteryStatusView" hasInstanceVariable:@"untethered" withType:"B"];
  [validationsCopy validateClass:@"HPSBatteryStatusView" hasInstanceVariable:@"leftImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"HPSBatteryStatusView" hasInstanceVariable:@"rightImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"HPSBatteryStatusView" hasInstanceVariable:@"caseImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"HPSBatteryStatusView" hasInstanceVariable:@"deviceImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"HPSBatteryStatusView" hasInstanceVariable:@"currentDevice" withType:"<BluetoothDeviceProtocol>"];
  [validationsCopy validateClass:@"BTSDevice" hasInstanceMethod:@"classicDevice" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HPSBatteryStatusView" hasInstanceMethod:@"setupViews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"BTSDevice" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- ($FFD8FFF7A5D2C2666551BEB14716E99F)_accessibilityBatteryStatus
{
  *&retstr->var8 = 0;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  v4 = [(HPSBatteryStatusViewAccessibility *)self safeValueForKey:@"currentDevice"];
  v5 = [v4 safeValueForKey:@"classicDevice"];
  v6 = __UIAccessibilityCastAsProtocol();

  [v6 batteryStatus:retstr];
  return result;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v34[3] = *MEMORY[0x29EDCA608];
  v32.receiver = self;
  v32.super_class = HPSBatteryStatusViewAccessibility;
  [(HPSBatteryStatusViewAccessibility *)&v32 _accessibilityLoadAccessibilityInformation];
  if ([(HPSBatteryStatusViewAccessibility *)self safeBoolForKey:@"untethered"])
  {
    objc_initWeak(&location, self);
    v3 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    v4 = accessibilityLocalizedString(@"Left Earbud");
    [v3 setAccessibilityLabel:v4];

    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 3221225472;
    v29[2] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v29[3] = &unk_29F2C2070;
    objc_copyWeak(&v30, &location);
    [v3 _setAccessibilityValueBlock:v29];
    v27[0] = MEMORY[0x29EDCA5F8];
    v27[1] = 3221225472;
    v27[2] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    v27[3] = &unk_29F2C20C0;
    objc_copyWeak(&v28, &location);
    [v3 _setAccessibilityFrameBlock:v27];
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    v6 = accessibilityLocalizedString(@"Right Earbud");
    [v5 setAccessibilityLabel:v6];

    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
    v25[3] = &unk_29F2C2070;
    objc_copyWeak(&v26, &location);
    [v5 _setAccessibilityValueBlock:v25];
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
    v23[3] = &unk_29F2C20C0;
    objc_copyWeak(&v24, &location);
    [v5 _setAccessibilityFrameBlock:v23];
    v7 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    v8 = accessibilityLocalizedString(@"Case");
    [v7 setAccessibilityLabel:v8];

    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
    v21[3] = &unk_29F2C2070;
    objc_copyWeak(&v22, &location);
    [v7 _setAccessibilityValueBlock:v21];
    v19[0] = MEMORY[0x29EDCA5F8];
    v19[1] = 3221225472;
    v19[2] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6;
    v19[3] = &unk_29F2C20C0;
    objc_copyWeak(&v20, &location);
    [v7 _setAccessibilityFrameBlock:v19];
    v34[0] = v3;
    v34[1] = v5;
    v34[2] = v7;
    v9 = [MEMORY[0x29EDB8D80] arrayWithObjects:v34 count:3];
    [(HPSBatteryStatusViewAccessibility *)self setAccessibilityElements:v9];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);

    objc_destroyWeak(&location);
  }

  else
  {
    objc_initWeak(&location, self);
    v10 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    v11 = [(HPSBatteryStatusViewAccessibility *)self safeValueForKey:@"currentDevice"];
    v12 = [v11 safeValueForKey:@"name"];
    [v10 setAccessibilityLabel:v12];

    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7;
    v17[3] = &unk_29F2C2070;
    objc_copyWeak(&v18, &location);
    [v10 _setAccessibilityValueBlock:v17];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8;
    v15[3] = &unk_29F2C20C0;
    objc_copyWeak(&v16, &location);
    [v10 _setAccessibilityFrameBlock:v15];
    v33 = v10;
    v13 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v33 count:1];
    [(HPSBatteryStatusViewAccessibility *)self setAccessibilityElements:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }

  v14 = *MEMORY[0x29EDCA608];
}

id __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _accessibilityBatteryStatus];
  }

  v3 = AXFormatFloatWithPercentage();

  return v3;
}

double __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:@"leftImageView"];
  [v2 accessibilityFrame];
  v4 = v3;

  return v4;
}

id __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _accessibilityBatteryStatus];
  }

  v3 = AXFormatFloatWithPercentage();

  return v3;
}

double __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:@"rightImageView"];
  [v2 accessibilityFrame];
  v4 = v3;

  return v4;
}

id __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  v5 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _accessibilityBatteryStatus];
  }

  else
  {
    v5 = 0u;
  }

  if (BYTE8(v5))
  {
    v3 = AXFormatFloatWithPercentage();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:@"caseImageView"];
  [v2 accessibilityFrame];
  v4 = v3;

  return v4;
}

id __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _accessibilityBatteryStatus];
  }

  v3 = AXFormatFloatWithPercentage();

  return v3;
}

double __79__HPSBatteryStatusViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:@"deviceImageView"];
  [v2 accessibilityFrame];
  v4 = v3;

  return v4;
}

- (void)setupViews
{
  v3.receiver = self;
  v3.super_class = HPSBatteryStatusViewAccessibility;
  [(HPSBatteryStatusViewAccessibility *)&v3 setupViews];
  [(HPSBatteryStatusViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end