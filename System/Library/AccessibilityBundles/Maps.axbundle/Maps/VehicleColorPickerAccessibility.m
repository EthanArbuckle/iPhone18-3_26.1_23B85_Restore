@interface VehicleColorPickerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VehicleColorPickerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = VehicleColorPickerAccessibility;
  [(VehicleColorPickerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __77__VehicleColorPickerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  block[3] = &unk_29F2CC3B0;
  block[4] = self;
  if (_accessibilityLoadAccessibilityInformation_onceToken != -1)
  {
    dispatch_once(&_accessibilityLoadAccessibilityInformation_onceToken, block);
  }
}

void __77__VehicleColorPickerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDB8E20] set];
  v3 = [*(a1 + 32) safeArrayForKey:@"colors"];
  if ([v3 count] != 12)
  {
    v4 = AXLogAppAccessibility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __77__VehicleColorPickerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_cold_1(v4);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = AXMapsStringForVehicleColor(v10);
          if ([v2 containsObject:v11])
          {
            v14 = AXLogAppAccessibility();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              __77__VehicleColorPickerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_cold_2(v11, v14);
            }

            goto LABEL_21;
          }

          [v2 addObject:v11];
        }

        else
        {
          v11 = AXLogAppAccessibility();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            *buf = 138412546;
            v21 = v10;
            v22 = 2112;
            v23 = v13;
            _os_log_fault_impl(&dword_29BEFF000, v11, OS_LOG_TYPE_FAULT, "Unexpected format for vehicle colors array. Found %@ of type %@.", buf, 0x16u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v15 = *MEMORY[0x29EDCA608];
}

void __77__VehicleColorPickerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_29BEFF000, a2, OS_LOG_TYPE_FAULT, "Found two vehicle colors with the same description: %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

@end