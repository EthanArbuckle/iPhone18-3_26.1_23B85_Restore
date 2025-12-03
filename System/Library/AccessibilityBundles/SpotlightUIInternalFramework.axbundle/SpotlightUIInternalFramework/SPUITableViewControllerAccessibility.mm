@interface SPUITableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation SPUITableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SPUITableViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"SPUITableViewController" conformsToProtocol:@"UITableViewDataSource"];
  [validationsCopy validateClass:@"SPUISearchModel"];
  [validationsCopy validateClass:@"SPUISearchModel" hasClassMethod:@"sharedGeneralInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SPUISearchModel" hasInstanceMethod:@"sections" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SPSearchResultSection"];
  [validationsCopy validateClass:@"SPSearchResultSection" hasInstanceMethod:@"domain" withFullSignature:{"I", 0}];
  [validationsCopy validateClass:@"SPSearchResultSection" hasInstanceMethod:@"hasDisplayIdentifier" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SPSearchResultSection" hasInstanceMethod:@"displayIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FBApplicationInfo"];
  [validationsCopy validateClass:@"FBApplicationInfo" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = SPUITableViewControllerAccessibility;
  v8 = [(SPUITableViewControllerAccessibility *)&v23 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  [pathCopy section];
  v9 = [MEMORY[0x29ED37100](@"SPUISearchModel") safeValueForKey:@"sharedGeneralInstance"];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v10 = v9;
  AXPerformSafeBlock();
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  v12 = [v11 safeIntForKey:@"domain"];
  if ([v11 safeBoolForKey:@"hasDisplayIdentifier"])
  {
    v13 = [v11 safeValueForKey:@"displayIdentifier"];
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  if (v12 <= 7)
  {
    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v15 = @"search.result.music";
      }

      else
      {
        v15 = @"search.result.podcast";
      }

LABEL_23:
      v14 = accessibilityLocalizedString(v15);
      goto LABEL_24;
    }

    if (v12 != 2)
    {
      if (v12 == 4)
      {

        v13 = 0;
        v14 = 0;
        goto LABEL_27;
      }

LABEL_24:
      if (v14)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    v14 = 0;
    v13 = @"com.apple.MobileAddressBook";
  }

  else
  {
    if (v12 <= 10)
    {
      if (v12 == 8)
      {
        v15 = @"search.result.video";
      }

      else
      {
        if (v12 != 9)
        {
          goto LABEL_24;
        }

        v15 = @"search.result.audiobook";
      }

      goto LABEL_23;
    }

    switch(v12)
    {
      case 11:

        v14 = 0;
        v13 = @"com.apple.MobileSafari";
        break;
      case 13:

        v14 = 0;
        v13 = @"com.apple.reminders";
        break;
      case 14:
        v15 = @"search.result.documents";
        goto LABEL_23;
      default:
        goto LABEL_24;
    }
  }

LABEL_25:
  if (v13)
  {
    v14 = AXApplicationNameLabelForBundleIdentifier();
  }

LABEL_27:
  if ([v14 length])
  {
    [v8 accessibilitySetIdentification:v14];
  }

  return v8;
}

void __72__SPUITableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeArrayForKey:@"sections"];
  v2 = [v5 objectAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end