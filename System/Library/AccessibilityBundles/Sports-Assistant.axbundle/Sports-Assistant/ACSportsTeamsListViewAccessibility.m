@interface ACSportsTeamsListViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ACSportsTeamsListViewAccessibility

- (id)accessibilityLabel
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = [MEMORY[0x29EDB8DE8] array];
  v3 = [(ACSportsTeamsListViewAccessibility *)self safeValueForKey:@"domainObjectViews"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __56__ACSportsTeamsListViewAccessibility_accessibilityLabel__block_invoke;
    v6[3] = &unk_29F2FA838;
    v6[4] = &v7;
    [v3 enumerateObjectsUsingBlock:v6];
  }

  v4 = [v8[5] componentsJoinedByString:{@", "}];

  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __56__ACSportsTeamsListViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessibilityLabel];
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  return MEMORY[0x2A1C71028]();
}

@end