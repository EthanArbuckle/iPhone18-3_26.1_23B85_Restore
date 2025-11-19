id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizedStringForKey:v1 value:&stru_2A238ECC0 table:@"Accessibility"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id accessibilityLabelFromSortedLabelsInsideView(void *a1)
{
  v1 = MEMORY[0x29EDB8DE8];
  v2 = a1;
  v3 = [v1 array];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __accessibilityLabelFromSortedLabelsInsideView_block_invoke;
  v7[3] = &unk_29F3169F8;
  v8 = v3;
  v4 = v3;
  [v2 _enumerateDescendentViews:v7];

  [v4 sortUsingSelector:sel_accessibilityCompareGeometry_];
  v5 = MEMORY[0x29ED3E560](v4);

  return v5;
}

void __accessibilityLabelFromSortedLabelsInsideView_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}