@interface UITabOutlineViewAccessibility
@end

@implementation UITabOutlineViewAccessibility

id __62___UITabOutlineViewAccessibility__accessibilitySetupTabButton__block_invoke(id *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained(a1 + 4);
  v9 = [v10[0] _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Uitabcontainer_0.isa)];
  v4 = [v9 safeValueForKey:@"sidebar"];
  if ([v4 safeBoolForKey:@"_isVisible"])
  {
    v1 = @"hide.sidebar";
  }

  else
  {
    v1 = @"show.sidebar";
  }

  location = MEMORY[0x29EDC9748](v1);
  MEMORY[0x29EDC9740](v4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v7 = [WeakRetained safeBoolForKey:@"isEditing"];
  MEMORY[0x29EDC9740](WeakRetained);
  if (v7)
  {
    objc_storeStrong(&location, @"reset.sidebar");
  }

  v3 = UIKitAccessibilityLocalizedString();
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);

  return v3;
}

id __62___UITabOutlineViewAccessibility__accessibilitySetupTabButton__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeBoolForKey:@"isEditing"];
  MEMORY[0x29EDC9740](WeakRetained);
  if (v3)
  {
    v4 = MEMORY[0x29EDC9748](@"ResetSideBar");
  }

  else
  {
    v4 = MEMORY[0x29EDC9748](@"ToggleSidebar");
  }

  return v4;
}

@end