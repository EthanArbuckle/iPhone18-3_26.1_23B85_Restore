@interface EKEventDetailAttendeesCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axStringForParticipants:(id)participants;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation EKEventDetailAttendeesCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKEventDetailAttendeesListView" hasInstanceVariable:@"_inviteeNames" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"EKEventDetailAttendeesCell" hasInstanceMethod:@"_attendeesListView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKEventDetailAttendeesListView" hasInstanceMethod:@"groupsNames" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"EKEventDetailAttendeesCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"EKEventDetailAttendeesCell" hasInstanceVariable:@"_countLabel" withType:"UILabel"];
}

- (id)_axStringForParticipants:(id)participants
{
  v29 = *MEMORY[0x29EDCA608];
  participantsCopy = participants;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [participantsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_22;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0x29EDB9000uLL;
  v8 = *v25;
  v9 = 0x29EDB9000uLL;
  do
  {
    v10 = 0;
    do
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(participantsCopy);
      }

      v11 = *(*(&v24 + 1) + 8 * v10);
      v12 = *(v7 + 2032);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        name = [v11 name];
LABEL_10:
        v15 = name;
        v16 = __UIAXStringForVariables();

        v6 = v16;
        goto LABEL_11;
      }

      v14 = *(v9 + 3888);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        name = [v11 string];
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        displayString = [v11 displayString];
        string = [displayString string];
        v18 = __UIAXStringForVariables();

        if ([v11 isOptionalParticipant])
        {
          v23 = accessibilityLocalizedString(@"optional.attendee");
          v6 = __UIAXStringForVariables();
        }

        else
        {
          v6 = v18;
        }

        v7 = 0x29EDB9000;
        v9 = 0x29EDB9000;
      }

      else
      {
        _AXAssert();
      }

LABEL_11:
      ++v10;
    }

    while (v5 != v10);
    v19 = [participantsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
    v5 = v19;
  }

  while (v19);
LABEL_22:

  v20 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)accessibilityLabel
{
  v3 = [(EKEventDetailAttendeesCellAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(EKEventDetailAttendeesCellAccessibility *)self safeUIViewForKey:@"_countLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(EKEventDetailAttendeesCellAccessibility *)self safeValueForKey:@"_attendeesListView"];
  v4 = [v3 safeValueForKey:@"groupsNames"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    LOBYTE(v41) = 0;
    v6 = [v3 safeValueForKey:@"_inviteeNames"];
    v7 = __UIAccessibilitySafeClass();

    v47 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy_;
    v45 = __Block_byref_object_dispose_;
    v46 = 0;
    v8 = v7;
    AXPerformSafeBlock();
    v9 = v42[5];

    _Block_object_dispose(&v41, 8);
    v10 = __UIAccessibilitySafeClass();

    if (v47 == 1)
    {
      goto LABEL_24;
    }

    if ([v10 count])
    {
      v11 = MobileCalAXLocalizedString(@"invite.attending");
      v12 = [(EKEventDetailAttendeesCellAccessibility *)self _axStringForParticipants:v10];
      v13 = __UIAXStringForVariables();

      v14 = __UIAXStringForVariables();
    }

    else
    {
      v14 = 0;
    }

    v47 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy_;
    v45 = __Block_byref_object_dispose_;
    v46 = 0;
    v19 = v8;
    AXPerformSafeBlock();
    v20 = v42[5];

    _Block_object_dispose(&v41, 8);
    v21 = __UIAccessibilitySafeClass();

    if (v47 == 1)
    {
      goto LABEL_24;
    }

    if ([v21 count])
    {
      v22 = MobileCalAXLocalizedString(@"invite.tentative");
      v23 = [(EKEventDetailAttendeesCellAccessibility *)self _axStringForParticipants:v21];
      v24 = __UIAXStringForVariables();

      v25 = __UIAXStringForVariables();

      v14 = v25;
    }

    v47 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy_;
    v45 = __Block_byref_object_dispose_;
    v46 = 0;
    v26 = v19;
    AXPerformSafeBlock();
    v27 = v42[5];

    _Block_object_dispose(&v41, 8);
    v28 = __UIAccessibilitySafeClass();

    if (v47 == 1)
    {
      goto LABEL_24;
    }

    if ([v28 count])
    {
      v29 = MobileCalAXLocalizedString(@"invite.declined");
      v30 = [(EKEventDetailAttendeesCellAccessibility *)self _axStringForParticipants:v28];
      v31 = __UIAXStringForVariables();

      v32 = __UIAXStringForVariables();

      v14 = v32;
    }

    v47 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy_;
    v45 = __Block_byref_object_dispose_;
    v46 = 0;
    v33 = v26;
    AXPerformSafeBlock();
    v34 = v42[5];

    _Block_object_dispose(&v41, 8);
    v35 = __UIAccessibilitySafeClass();

    if (v47 == 1)
    {
LABEL_24:
      abort();
    }

    if ([v35 count])
    {
      v36 = MobileCalAXLocalizedString(@"invite.pending");
      v37 = [(EKEventDetailAttendeesCellAccessibility *)self _axStringForParticipants:v35];
      v38 = __UIAXStringForVariables();

      v39 = __UIAXStringForVariables();

      v14 = v39;
    }
  }

  else
  {
    v15 = [v3 safeValueForKey:@"_ungrouped"];
    if ([v15 count])
    {
      v16 = accessibilityLocalizedString(@"invited.status");
      v17 = [(EKEventDetailAttendeesCellAccessibility *)self _axStringForParticipants:v15];
      v18 = __UIAXStringForVariables();

      v14 = __UIAXStringForVariables();
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

uint64_t __61__EKEventDetailAttendeesCellAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __61__EKEventDetailAttendeesCellAccessibility_accessibilityValue__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __61__EKEventDetailAttendeesCellAccessibility_accessibilityValue__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:2];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __61__EKEventDetailAttendeesCellAccessibility_accessibilityValue__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectAtIndex:3];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end