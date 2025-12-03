@interface NCNotificationStructuredListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (id)_accessibilityNotificationSummary:(unint64_t)summary;
- (id)_axRequests;
- (unint64_t)_accessibilityNotificationCount;
@end

@implementation NCNotificationStructuredListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCNotificationStructuredListViewController" hasInstanceMethod:@"listModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredListViewController" hasInstanceMethod:@"dismissModalFullScreenAnimated:" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"listView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationStructuredSectionList" hasInstanceMethod:@"allNotificationRequests" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationRootList" hasInstanceMethod:@"incomingSectionList" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationRootList" hasInstanceMethod:@"prominentIncomingSectionList" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationListView" hasInstanceMethod:@"visibleViews" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = MEMORY[0x29EDCA5F8];
  AXPerformSafeBlock();
  v2 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  if ((v2 & 1) == 0)
  {
    server = [MEMORY[0x29EDBDFA8] server];
    [server hideNotificationCenter];
  }

  return 1;
}

uint64_t __85__NCNotificationStructuredListViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dismissModalFullScreenAnimated:1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_accessibilityNotificationSummary:(unint64_t)summary
{
  v4 = objc_alloc_init(MEMORY[0x29EDBA050]);
  v5 = [(NCNotificationStructuredListViewControllerAccessibility *)self safeValueForKey:@"listModel"];
  v6 = [v5 safeValueForKey:@"incomingSectionList"];
  v7 = [v6 safeValueForKey:@"listView"];
  v8 = [v7 safeDictionaryForKey:@"visibleViews"];
  v9 = [v8 mutableCopy];

  v10 = [(NCNotificationStructuredListViewControllerAccessibility *)self safeValueForKey:@"listModel"];
  v11 = [v10 safeValueForKey:@"prominentIncomingSectionList"];
  v12 = [v11 safeValueForKey:@"listView"];
  v13 = [v12 safeDictionaryForKey:@"visibleViews"];
  v14 = [v13 mutableCopy];

  [v9 axSafelyAddEntriesFromDictionary:v14];
  allKeys = [v9 allKeys];
  v16 = [allKeys sortedArrayUsingComparator:&__block_literal_global_9];

  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 3221225472;
  v23[2] = __93__NCNotificationStructuredListViewControllerAccessibility__accessibilityNotificationSummary___block_invoke_2;
  v23[3] = &unk_29F317210;
  v24 = v9;
  v17 = v4;
  v25 = v17;
  summaryCopy = summary;
  v18 = v9;
  [v16 enumerateObjectsUsingBlock:v23];
  v19 = v25;
  v20 = v17;

  return v17;
}

void __93__NCNotificationStructuredListViewControllerAccessibility__accessibilityNotificationSummary___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) objectForKey:v7];
  if ([*(a1 + 40) length])
  {
    [*(a1 + 40) appendString:{@", "}];
  }

  v9 = [v8 accessibilityLabel];
  if (!v9)
  {
    NSClassFromString(&cfstr_Ncnotification_46.isa);
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v10 = __UIAccessibilityCastAsSafeCategory();
      v11 = [v10 _accessibilityListCell];
      v9 = [v11 accessibilityLabel];
    }

    else
    {
      v9 = 0;
    }
  }

  if ([v9 length])
  {
    [*(a1 + 40) appendString:v9];
  }

  v12 = *(a1 + 48);
  if (v12 && a3 + 1 == v12)
  {
    *a4 = 1;
  }
}

- (unint64_t)_accessibilityNotificationCount
{
  _axRequests = [(NCNotificationStructuredListViewControllerAccessibility *)self _axRequests];
  v3 = [_axRequests count];

  return v3;
}

- (id)_axRequests
{
  v3 = [(NCNotificationStructuredListViewControllerAccessibility *)self safeValueForKey:@"listModel"];
  v4 = [v3 safeValueForKey:@"incomingSectionList"];
  v5 = [v4 safeArrayForKey:@"allNotificationRequests"];
  v6 = [v5 mutableCopy];

  v7 = [(NCNotificationStructuredListViewControllerAccessibility *)self safeValueForKey:@"listModel"];
  v8 = [v7 safeValueForKey:@"prominentIncomingSectionList"];
  v9 = [v8 safeArrayForKey:@"allNotificationRequests"];
  v10 = [v9 mutableCopy];

  [v6 axSafelyAddObjectsFromArray:v10];
  v11 = [v6 ax_filteredArrayUsingBlock:&__block_literal_global_329];

  return v11;
}

uint64_t __70__NCNotificationStructuredListViewControllerAccessibility__axRequests__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __UIAccessibilitySafeClass();
  v4 = [v3 sectionIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.donotdisturb"];

  return v5 ^ 1u;
}

@end