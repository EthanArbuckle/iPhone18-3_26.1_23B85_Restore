@interface InputUIWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)makeKeyAndVisible;
- (void)setDocumentTraits:(id)traits;
@end

@implementation InputUIWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"IUIInputSourceViewController" hasInstanceMethod:@"textInputSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IUIRTIInputSource" hasInstanceMethod:@"sourceSession" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIWindow" hasInstanceMethod:@"makeKeyAndVisible" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"RTIInputSystemSession" hasInstanceMethod:@"setDocumentTraits:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16[4] = *MEMORY[0x29EDCA608];
  v12.receiver = self;
  v12.super_class = InputUIWindowAccessibility;
  [(InputUIWindowAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __72__InputUIWindowAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v11[3] = &unk_29F2C9430;
  v11[4] = self;
  v3 = MEMORY[0x29C2DB2F0](v11);
  if (([(InputUIWindowAccessibility *)self _accessibilityBoolValueForKey:@"RegisteredKeyboardWindow"]& 1) == 0)
  {
    v4 = MEMORY[0x29EDBD800];
    v15[0] = @"ax-pidretrieval";
    v5 = MEMORY[0x29C2DB2F0](v3);
    v16[0] = v5;
    v16[1] = &__block_literal_global_0;
    v15[1] = @"ax-contextretrieval";
    v15[2] = @"ax-uuid";
    v6 = *MEMORY[0x29EDBDDE8];
    v15[3] = @"ax-register";
    v16[2] = v6;
    v16[3] = MEMORY[0x29EDB8EB0];
    v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
    [v4 registerRemoteElement:v7 remotePort:0];

    [(InputUIWindowAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"RegisteredKeyboardWindow"];
  }

  v8 = AXLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[InputUIWindowAccessibility _accessibilityContextId](self, "_accessibilityContextId")}];
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&dword_29BEBE000, v8, OS_LOG_TYPE_INFO, "Register input window %@", buf, 0xCu);
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t __72__InputUIWindowAccessibility__accessibilityLoadAccessibilityInformation__block_invoke()
{
  v0 = [*MEMORY[0x29EDC8008] _accessibilityAllWindowsOnlyVisibleWindows:1];
  v1 = [v0 ax_filteredArrayUsingBlock:&__block_literal_global_319_0];
  v2 = [v1 firstObject];
  v3 = [v2 _accessibilityContextId];

  return v3;
}

uint64_t __72__InputUIWindowAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __72__InputUIWindowAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) rootViewController];
  v3 = [v2 safeValueForKey:@"textInputSource"];
  v4 = [v3 safeValueForKey:@"sourceSession"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 documentTraits];
  v7 = [v6 processId];

  return v7;
}

- (void)makeKeyAndVisible
{
  v3.receiver = self;
  v3.super_class = InputUIWindowAccessibility;
  [(InputUIWindowAccessibility *)&v3 makeKeyAndVisible];
  [(InputUIWindowAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setDocumentTraits:(id)traits
{
  v4.receiver = self;
  v4.super_class = InputUIWindowAccessibility;
  [(InputUIWindowAccessibility *)&v4 setDocumentTraits:traits];
  [(InputUIWindowAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end