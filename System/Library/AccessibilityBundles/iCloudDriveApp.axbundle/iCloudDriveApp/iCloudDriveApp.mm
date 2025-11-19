id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.iCloudDriveApp.axbundle"], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A23C1CC8 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

__CFString *_AXListModeStringFromListMode(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = @"listmode.table";
LABEL_5:
    v3 = accessibilityLocalizedString(v2);

    return v3;
  }

  if (a1 == 1)
  {
    v2 = @"listmode.thumbnails";
    goto LABEL_5;
  }

  v3 = &stru_2A23C1CC8;

  return v3;
}

id _AXTableOrCollectionView(void *a1)
{
  v1 = a1;
  v2 = [v1 getTopDocumentListController];
  v3 = [v2 safeValueForKey:@"_containerViewController"];

  objc_opt_class();
  v4 = [v3 safeValueForKey:@"_childViewController"];
  v5 = __UIAccessibilityCastAsClass();

  MEMORY[0x29ED438A0](@"_UIDocumentPickerDocumentCollectionViewController");
  if (objc_opt_isKindOfClass())
  {
    v6 = @"collectionView";
LABEL_5:
    v7 = [v5 safeValueForKey:v6];
    goto LABEL_7;
  }

  MEMORY[0x29ED438A0](@"_UIDocumentPickerDocumentTableViewController");
  if (objc_opt_isKindOfClass())
  {
    v6 = @"tableView";
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}