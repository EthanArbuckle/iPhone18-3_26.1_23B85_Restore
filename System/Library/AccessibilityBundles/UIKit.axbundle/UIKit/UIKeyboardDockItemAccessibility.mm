@interface UIKeyboardDockItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)button;
@end

@implementation UIKeyboardDockItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIKeyboardDockItem" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)button
{
  selfCopy = self;
  v42[1] = a2;
  v41.receiver = self;
  v41.super_class = UIKeyboardDockItemAccessibility;
  v42[0] = [(UIKeyboardDockItemAccessibility *)&v41 button];
  objc_initWeak(&location, selfCopy);
  v8 = v42[0];
  v34 = MEMORY[0x29EDCA5F8];
  v35 = -1073741824;
  v36 = 0;
  v37 = __41__UIKeyboardDockItemAccessibility_button__block_invoke;
  v38 = &unk_29F30C9E8;
  objc_copyWeak(&v39, &location);
  [v8 _setAccessibilityValueBlock:&v34];
  v7 = v42[0];
  v28 = MEMORY[0x29EDCA5F8];
  v29 = -1073741824;
  v30 = 0;
  v31 = __41__UIKeyboardDockItemAccessibility_button__block_invoke_2;
  v32 = &unk_29F30C9E8;
  objc_copyWeak(v33, &location);
  [v7 _setAccessibilityLabelBlock:&v28];
  v6 = v42[0];
  v22 = MEMORY[0x29EDCA5F8];
  v23 = -1073741824;
  v24 = 0;
  v25 = __41__UIKeyboardDockItemAccessibility_button__block_invoke_3;
  v26 = &unk_29F30C9E8;
  objc_copyWeak(&v27, &location);
  [v6 _setAccessibilityHintBlock:&v22];
  v5 = v42[0];
  v16 = MEMORY[0x29EDCA5F8];
  v17 = -1073741824;
  v18 = 0;
  v19 = __41__UIKeyboardDockItemAccessibility_button__block_invoke_4;
  v20 = &unk_29F30C9E8;
  objc_copyWeak(&v21, &location);
  [v5 _setAccessibilityIdentifierBlock:&v16];
  objc_initWeak(&v15, v42[0]);
  v4 = v42[0];
  v9 = MEMORY[0x29EDCA5F8];
  v10 = -1073741824;
  v11 = 0;
  v12 = __41__UIKeyboardDockItemAccessibility_button__block_invoke_5;
  v13 = &unk_29F30C7F0;
  objc_copyWeak(&v14, &v15);
  [v4 _setIsAccessibilityElementBlock:&v9];
  v3 = MEMORY[0x29EDC9748](v42[0]);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v27);
  objc_destroyWeak(v33);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
  objc_storeStrong(v42, 0);

  return v3;
}

id __41__UIKeyboardDockItemAccessibility_button__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained accessibilityValue];
  MEMORY[0x29EDC9740](WeakRetained);

  return v3;
}

id __41__UIKeyboardDockItemAccessibility_button__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained accessibilityLabel];
  MEMORY[0x29EDC9740](WeakRetained);

  return v3;
}

id __41__UIKeyboardDockItemAccessibility_button__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained accessibilityHint];
  MEMORY[0x29EDC9740](WeakRetained);

  return v3;
}

id __41__UIKeyboardDockItemAccessibility_button__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained accessibilityIdentifier];
  MEMORY[0x29EDC9740](WeakRetained);

  return v3;
}

uint64_t __41__UIKeyboardDockItemAccessibility_button__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityViewIsVisible];
  MEMORY[0x29EDC9740](WeakRetained);
  return v3;
}

@end