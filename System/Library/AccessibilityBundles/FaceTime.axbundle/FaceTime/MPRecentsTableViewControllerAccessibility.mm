@interface MPRecentsTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MPRecentsTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHRecentCall"];
  [v3 validateClass:@"MPLegacyRecentsTableViewCell" isKindOfClass:@"PHTableViewCell"];
  [v3 validateClass:@"PHTableViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHTableViewCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MPRecentsTableViewController" conformsToProtocol:@"UITableViewDataSource"];
  [v3 validateClass:@"MPRecentsTableViewController" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"MPRecentsTableViewController" hasInstanceMethod:@"recentCallAtTableViewIndex:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"MPRecentsTableViewController" hasInstanceMethod:@"setEditing:animated:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"MPRecentsTableViewController" hasInstanceMethod:@"reloadDataSource" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CHRecentCall" hasInstanceMethod:@"ph_supportsLocalParticipantBadge" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MPRecentsTableViewController" hasInstanceMethod:@"showRecentCallDetailsViewControllerForRecentCall:animated:" withFullSignature:{"v", "@", "B", 0}];
}

uint64_t __102__MPRecentsTableViewControllerAccessibility__accessibilityTableView_endRowActionHandlingForIndexPath___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _accessibilityBoolValueForKey:@"wasEditing"];

  return [v1 setEditing:v2 animated:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v69.receiver = self;
  v69.super_class = MPRecentsTableViewControllerAccessibility;
  v8 = [(MPRecentsTableViewControllerAccessibility *)&v69 tableView:v6 cellForRowAtIndexPath:v7];
  v68 = 0;
  objc_opt_class();
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy_;
  v66 = __Block_byref_object_dispose_;
  v67 = 0;
  v9 = v7;
  AXPerformSafeBlock();
  v10 = v63[5];

  _Block_object_dispose(&v62, 8);
  v11 = __UIAccessibilityCastAsClass();

  if (v68 == 1)
  {
    goto LABEL_43;
  }

  LOBYTE(v62) = 0;
  objc_opt_class();
  v12 = [v8 safeValueForKey:@"titleLabel"];
  v13 = __UIAccessibilityCastAsClass();

  if (v62 == 1)
  {
    goto LABEL_43;
  }

  v14 = [v13 accessibilityLabel];

  LOBYTE(v62) = 0;
  objc_opt_class();
  v15 = [v8 safeValueForKey:@"subtitleLabel"];
  v16 = __UIAccessibilityCastAsClass();

  if (v62 == 1)
  {
LABEL_43:
    abort();
  }

  v17 = [v16 accessibilityLabel];

  v59 = v6;
  if (v14)
  {
    v18 = [MEMORY[0x29EDB9F50] decimalDigitCharacterSet];
    v19 = [v14 rangeOfCharacterFromSet:v18];

    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v14];
      [v20 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD968]];

      v14 = v20;
    }
  }

  v21 = [v11 callStatus];
  v22 = v21;
  v23 = MEMORY[0x29EDC0B00];
  v58 = v9;
  if ((*MEMORY[0x29EDC0AF0] & v21) != 0 || (*MEMORY[0x29EDC0B00] & v21) != 0)
  {
    v51 = accessibilityLocalizedString(@"call.incoming");
    v52 = @"__AXStringForVariablesSentinel";
    v24 = __UIAXStringForVariables();
  }

  else
  {
    v24 = 0;
  }

  v25 = MEMORY[0x29EDC0AE8];
  if ((*MEMORY[0x29EDC0AF8] & v22) != 0 || (*MEMORY[0x29EDC0AE8] & v22) != 0)
  {
    v51 = accessibilityLocalizedString(@"call.outgoing");
    v52 = @"__AXStringForVariablesSentinel";
    v26 = __UIAXStringForVariables();

    v24 = v26;
  }

  if ((*v23 & v22) != 0)
  {
    v51 = accessibilityLocalizedString(@"call.missed");
    v52 = @"__AXStringForVariablesSentinel";
    v27 = __UIAXStringForVariables();

    v24 = v27;
  }

  if ((*v25 & v22) != 0)
  {
    v51 = accessibilityLocalizedString(@"call.canceled");
    v52 = @"__AXStringForVariablesSentinel";
    v28 = __UIAXStringForVariables();

    v24 = v28;
  }

  v61 = v17;
  v29 = [v11 mediaType];
  v30 = [v11 serviceProvider];
  v57 = v8;
  v55 = v14;
  if (![v30 isEqualToString:*MEMORY[0x29EDC0B08]])
  {
    v32 = 0;
    goto LABEL_27;
  }

  if (v29 == 1)
  {
    v31 = TUFaceTimeAudioServiceName();
    goto LABEL_23;
  }

  if (v29 == 2)
  {
    v31 = accessibilityLocalizedString(@"application.name.facetime");
LABEL_23:
    v32 = v31;
    goto LABEL_25;
  }

  v32 = 0;
LABEL_25:
  if ([v61 containsString:v32])
  {

    v32 = v61;
    v61 = 0;
  }

LABEL_27:
  v33 = [v11 ttyType];
  v54 = v30;
  if (v33 == 1)
  {
    v34 = @"call.type.tty";
    goto LABEL_31;
  }

  if (v33 == 2)
  {
    v34 = @"call.type.tty.relay";
LABEL_31:
    v53 = accessibilityLocalizedString(v34);
    goto LABEL_33;
  }

  v53 = 0;
LABEL_33:
  v35 = [v11 callOccurrences];
  v36 = [v35 count];

  if (v36)
  {
    v37 = MEMORY[0x29EDBA0F8];
    v38 = accessibilityLocalizedString(@"num.calls");
    v39 = [v37 localizedStringWithFormat:v38, v36];
  }

  else
  {
    v39 = 0;
  }

  v40 = [v11 date];
  v41 = [MEMORY[0x29EDB9F78] localizedStringFromDate:v40 dateStyle:3 timeStyle:1];
  v42 = [MEMORY[0x29EDC6F78] sharedInstance];
  v43 = [v42 providerManager];
  v44 = [v43 telephonyProvider];

  v45 = [v44 prioritizedSenderIdentities];
  v46 = [v45 count];

  v47 = [v11 localParticipantUUID];
  v60 = [v44 senderIdentityForAccountUUID:v47];

  v56 = v11;
  v48 = 0;
  if ([v11 safeBoolForKey:@"ph_supportsLocalParticipantBadge"] && v46 >= 2)
  {
    v48 = [v60 localizedName];
  }

  v49 = __UIAXStringForVariables();
  [v57 setAccessibilityLabel:{v49, v24, v48, v53, v32, v39, v61, v41, @"__AXStringForVariablesSentinel"}];
  [v57 setIsAccessibilityElement:1];

  return v57;
}

uint64_t __77__MPRecentsTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentCallAtTableViewIndex:{objc_msgSend(*(a1 + 40), "row")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = MPRecentsTableViewControllerAccessibility;
  [(MPRecentsTableViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  AXPerformSafeBlock();
}

@end