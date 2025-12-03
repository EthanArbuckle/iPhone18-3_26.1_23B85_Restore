@interface MPRecentsTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MPRecentsTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CHRecentCall"];
  [validationsCopy validateClass:@"MPLegacyRecentsTableViewCell" isKindOfClass:@"PHTableViewCell"];
  [validationsCopy validateClass:@"PHTableViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHTableViewCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MPRecentsTableViewController" conformsToProtocol:@"UITableViewDataSource"];
  [validationsCopy validateClass:@"MPRecentsTableViewController" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"MPRecentsTableViewController" hasInstanceMethod:@"recentCallAtTableViewIndex:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"MPRecentsTableViewController" hasInstanceMethod:@"setEditing:animated:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"MPRecentsTableViewController" hasInstanceMethod:@"reloadDataSource" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CHRecentCall" hasInstanceMethod:@"ph_supportsLocalParticipantBadge" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MPRecentsTableViewController" hasInstanceMethod:@"showRecentCallDetailsViewControllerForRecentCall:animated:" withFullSignature:{"v", "@", "B", 0}];
}

uint64_t __102__MPRecentsTableViewControllerAccessibility__accessibilityTableView_endRowActionHandlingForIndexPath___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _accessibilityBoolValueForKey:@"wasEditing"];

  return [v1 setEditing:v2 animated:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v69.receiver = self;
  v69.super_class = MPRecentsTableViewControllerAccessibility;
  v8 = [(MPRecentsTableViewControllerAccessibility *)&v69 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  v68 = 0;
  objc_opt_class();
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy_;
  v66 = __Block_byref_object_dispose_;
  v67 = 0;
  v9 = pathCopy;
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

  accessibilityLabel = [v13 accessibilityLabel];

  LOBYTE(v62) = 0;
  objc_opt_class();
  v15 = [v8 safeValueForKey:@"subtitleLabel"];
  v16 = __UIAccessibilityCastAsClass();

  if (v62 == 1)
  {
LABEL_43:
    abort();
  }

  accessibilityLabel2 = [v16 accessibilityLabel];

  v59 = viewCopy;
  if (accessibilityLabel)
  {
    decimalDigitCharacterSet = [MEMORY[0x29EDB9F50] decimalDigitCharacterSet];
    v19 = [accessibilityLabel rangeOfCharacterFromSet:decimalDigitCharacterSet];

    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityLabel];
      [v20 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD968]];

      accessibilityLabel = v20;
    }
  }

  callStatus = [v11 callStatus];
  v22 = callStatus;
  v23 = MEMORY[0x29EDC0B00];
  v58 = v9;
  if ((*MEMORY[0x29EDC0AF0] & callStatus) != 0 || (*MEMORY[0x29EDC0B00] & callStatus) != 0)
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

  v61 = accessibilityLabel2;
  mediaType = [v11 mediaType];
  serviceProvider = [v11 serviceProvider];
  v57 = v8;
  v55 = accessibilityLabel;
  if (![serviceProvider isEqualToString:*MEMORY[0x29EDC0B08]])
  {
    v32 = 0;
    goto LABEL_27;
  }

  if (mediaType == 1)
  {
    v31 = TUFaceTimeAudioServiceName();
    goto LABEL_23;
  }

  if (mediaType == 2)
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
  ttyType = [v11 ttyType];
  v54 = serviceProvider;
  if (ttyType == 1)
  {
    v34 = @"call.type.tty";
    goto LABEL_31;
  }

  if (ttyType == 2)
  {
    v34 = @"call.type.tty.relay";
LABEL_31:
    v53 = accessibilityLocalizedString(v34);
    goto LABEL_33;
  }

  v53 = 0;
LABEL_33:
  callOccurrences = [v11 callOccurrences];
  v36 = [callOccurrences count];

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

  date = [v11 date];
  v41 = [MEMORY[0x29EDB9F78] localizedStringFromDate:date dateStyle:3 timeStyle:1];
  mEMORY[0x29EDC6F78] = [MEMORY[0x29EDC6F78] sharedInstance];
  providerManager = [mEMORY[0x29EDC6F78] providerManager];
  telephonyProvider = [providerManager telephonyProvider];

  prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
  v46 = [prioritizedSenderIdentities count];

  localParticipantUUID = [v11 localParticipantUUID];
  v60 = [telephonyProvider senderIdentityForAccountUUID:localParticipantUUID];

  v56 = v11;
  localizedName = 0;
  if ([v11 safeBoolForKey:@"ph_supportsLocalParticipantBadge"] && v46 >= 2)
  {
    localizedName = [v60 localizedName];
  }

  v49 = __UIAXStringForVariables();
  [v57 setAccessibilityLabel:{v49, v24, localizedName, v53, v32, v39, v61, v41, @"__AXStringForVariablesSentinel"}];
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