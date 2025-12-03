@interface EKEventDetailTitleCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityImageLabelforAttributedLocationName:(id)name andLocationStatus:(int64_t)status;
- (id)_accessibilityImageLabelforStatus:(int64_t)status;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_addCustomActionToActionsArray:(id)array forControl:(id)control actionBlock:(id)block;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomContent;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateLocationViewsIfNeeded;
- (void)addLocation:(id)location;
@end

@implementation EKEventDetailTitleCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKEventDetailTitleCell" hasInstanceVariable:@"_titleView" withType:"UILabel"];
  [validationsCopy validateClass:@"EKEventDetailTitleCell" hasInstanceVariable:@"_locationItems" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"EKEventDetailTitleCell" hasInstanceVariable:@"_dateTimeViews" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"EKEventDetailTitleCell" hasInstanceVariable:@"_recurrenceView" withType:"UILabel"];
  [validationsCopy validateClass:@"EKEventDetailTitleCell" hasInstanceVariable:@"_statusView" withType:"UILabel"];
  [validationsCopy validateClass:@"EKEventDetailTitleCell" hasInstanceVariable:@"_travelTimeView" withType:"UILabel"];
  [validationsCopy validateClass:@"EKEventDetailLocationItem" hasInstanceVariable:@"_locationView" withType:"EKTextViewWithLabelTextMetrics"];
  [validationsCopy validateClass:@"EKEventDetailTitleCell" hasInstanceVariable:@"_suggestedLocationCell" withType:"EKEventDetailSuggestedLocationCell"];
  [validationsCopy validateClass:@"EKEventDetailTitleCell" hasInstanceMethod:@"editButtonTapped" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"EKEventDetailTitleCell" hasInstanceMethod:@"addLocation:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"EKEventDetailLocationItem" hasInstanceVariable:@"_locationStatus" withType:"q"];
  [validationsCopy validateClass:@"EKEventDetailTitleCell" hasInstanceVariable:@"_conferenceDetailView" withType:"EKEventDetailConferenceCell"];
  [validationsCopy validateClass:@"EKEventDetailConferenceCell" hasInstanceVariable:@"_openURLButton" withType:"UIButton"];
  [validationsCopy validateClass:@"EKEventDetailConferenceCell" hasInstanceVariable:@"_shareButton" withType:"UIButton"];
  [validationsCopy validateClass:@"EKEventDetailConferenceCell" hasInstanceVariable:@"_event" withType:"EKEvent"];
  [validationsCopy validateClass:@"EKEventDetailConferenceCell" hasInstanceVariable:@"_listView" withType:"UIListContentView"];
  [validationsCopy validateClass:@"EKEventDetailConferenceCell" hasInstanceVariable:@"_actionButtonType" withType:"Q"];
  [validationsCopy validateClass:@"EKEventDetailConferenceCell" hasInstanceMethod:@"_openURL" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"EKEventDetailConferenceCell" hasInstanceMethod:@"_share:" withFullSignature:{"v", "@", 0}];
}

- (void)_axAnnotateLocationViewsIfNeeded
{
  v30 = *MEMORY[0x29EDCA608];
  [(EKEventDetailTitleCellAccessibility *)self safeArrayForKey:@"_locationItems"];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = v27 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v23 = 0;
        objc_opt_class();
        v8 = [v7 safeValueForKey:@"_locationView"];
        v9 = __UIAccessibilityCastAsSafeCategory();

        accessibilityIsLocationLink = [v9 accessibilityIsLocationLink];
        if (accessibilityIsLocationLink)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v2;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * j) safeValueForKey:{@"_locationView", v19}];
        [v17 setIsAccessibilityElement:v11];
        [v17 _accessibilitySetTextViewShouldBreakUpParagraphs:0];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = EKEventDetailTitleCellAccessibility;
  [(EKEventDetailTitleCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(EKEventDetailTitleCellAccessibility *)self _axAnnotateLocationViewsIfNeeded];
}

- (id)accessibilityCustomActions
{
  v40.receiver = self;
  v40.super_class = EKEventDetailTitleCellAccessibility;
  accessibilityCustomActions = [(EKEventDetailTitleCellAccessibility *)&v40 accessibilityCustomActions];
  v4 = [accessibilityCustomActions mutableCopy];

  v5 = [(EKEventDetailTitleCellAccessibility *)self safeUIViewForKey:@"_editButton"];
  objc_initWeak(&location, self);
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 3221225472;
  v37[2] = __65__EKEventDetailTitleCellAccessibility_accessibilityCustomActions__block_invoke;
  v37[3] = &unk_29F2BCB60;
  objc_copyWeak(&v38, &location);
  v6 = [(EKEventDetailTitleCellAccessibility *)self _addCustomActionToActionsArray:v4 forControl:v5 actionBlock:v37];

  v7 = [(EKEventDetailTitleCellAccessibility *)self safeUIViewForKey:@"_conferenceDetailView"];
  v8 = [v7 safeUIViewForKey:@"_openURLButton"];
  v29 = v5;
  v30 = [v7 safeUIViewForKey:@"_shareButton"];
  v36 = 0;
  objc_opt_class();
  v9 = [(EKEventDetailTitleCellAccessibility *)self safeValueForKey:@"_event"];
  v10 = __UIAccessibilityCastAsClass();

  virtualConference = [v10 virtualConference];
  v12 = [virtualConference safeArrayForKey:@"joinMethods"];
  firstObject = [v12 firstObject];

  v14 = [firstObject URL];
  absoluteString = [v14 absoluteString];
  lowercaseString = [absoluteString lowercaseString];

  if ([lowercaseString containsString:@"facetime.apple.com"])
  {
    accessibilityLabel = [v8 accessibilityLabel];
    v18 = accessibilityLabel;
    v19 = &stru_2A2195B98;
    if (accessibilityLabel)
    {
      v19 = accessibilityLabel;
    }

    v20 = v19;

    v21 = accessibilityLocalizedString(@"application.name.facetime");
    if (([(__CFString *)v20 containsString:v21]& 1) == 0)
    {
      v22 = __UIAXStringForVariables();
      [v8 setAccessibilityLabel:{v22, v21, @"__AXStringForVariablesSentinel"}];
    }
  }

  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 3221225472;
  v34[2] = __65__EKEventDetailTitleCellAccessibility_accessibilityCustomActions__block_invoke_2;
  v34[3] = &unk_29F2BCA08;
  v23 = v7;
  v35 = v23;
  v24 = [(EKEventDetailTitleCellAccessibility *)self _addCustomActionToActionsArray:v6 forControl:v8 actionBlock:v34];

  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = __65__EKEventDetailTitleCellAccessibility_accessibilityCustomActions__block_invoke_3;
  v31[3] = &unk_29F2BCB88;
  v25 = v23;
  v32 = v25;
  v26 = v30;
  v33 = v26;
  v27 = [(EKEventDetailTitleCellAccessibility *)self _addCustomActionToActionsArray:v24 forControl:v26 actionBlock:v31];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);

  return v27;
}

void __65__EKEventDetailTitleCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained editButtonTapped];
}

- (id)_addCustomActionToActionsArray:(id)array forControl:(id)control actionBlock:(id)block
{
  arrayCopy = array;
  controlCopy = control;
  blockCopy = block;
  _accessibilityViewIsVisible = [controlCopy _accessibilityViewIsVisible];
  if (blockCopy && _accessibilityViewIsVisible)
  {
    if (!arrayCopy)
    {
      arrayCopy = [MEMORY[0x29EDB8DE8] array];
    }

    v11 = objc_alloc(MEMORY[0x29EDC78E0]);
    accessibilityLabel = [controlCopy accessibilityLabel];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __93__EKEventDetailTitleCellAccessibility__addCustomActionToActionsArray_forControl_actionBlock___block_invoke;
    v15[3] = &unk_29F2BCBD8;
    v16 = blockCopy;
    v13 = [v11 initWithName:accessibilityLabel actionHandler:v15];

    [arrayCopy addObject:v13];
  }

  return arrayCopy;
}

uint64_t __93__EKEventDetailTitleCellAccessibility__addCustomActionToActionsArray_forControl_actionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();

  return 1;
}

- (id)accessibilityCustomContent
{
  v79 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  selfCopy = self;
  [(EKEventDetailTitleCellAccessibility *)self safeArrayForKey:@"_locationItems"];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v76 = 0u;
  v3 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v74;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v74 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v73 + 1) + 8 * i);
        v8 = [v7 safeValueForKey:@"_locationView"];
        v9 = v8;
        if (v8 && ([v8 isAccessibilityElement] & 1) == 0)
        {
          v10 = [v7 safeIntegerForKey:@"_locationStatus"];
          accessibilityAttributedValue = [v9 accessibilityAttributedValue];
          v12 = [(EKEventDetailTitleCellAccessibility *)selfCopy _accessibilityImageLabelforAttributedLocationName:accessibilityAttributedValue andLocationStatus:v10];

          AXCustomContentClass = getAXCustomContentClass();
          v14 = accessibilityLocalizedString(@"location.title");
          accessibilityValue = [v9 accessibilityValue];
          v16 = __UIAXStringForVariables();
          v17 = [AXCustomContentClass customContentWithLabel:v14 value:{v16, v12, @"__AXStringForVariablesSentinel"}];

          [array addObject:v17];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
    }

    while (v4);
  }

  v18 = [(EKEventDetailTitleCellAccessibility *)selfCopy safeUIViewForKey:@"_conferenceDetailView"];
  if ([v18 _accessibilityViewIsVisible])
  {
    v72 = 0;
    objc_opt_class();
    v19 = [v18 safeValueForKey:@"_listView"];
    v20 = __UIAccessibilityCastAsClass();

    if ([v18 safeIntegerForKey:@"_actionButtonType"] == 3)
    {
      configuration = [v20 configuration];
      text = [configuration text];
      v23 = [text length];

      if (v23)
      {
        v24 = MEMORY[0x29EDBD7E8];
        configuration2 = [v20 configuration];
        text2 = [configuration2 text];
        v27 = [v24 axAttributedStringWithString:text2];

        [v27 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD968]];
        v28 = getAXCustomContentClass();
        v29 = objc_alloc(MEMORY[0x29EDB9F30]);
        v30 = accessibilityLocalizedString(@"phone.title");
        v31 = [v29 initWithString:v30];
        attributedString = [v27 attributedString];
        v33 = [v28 customContentWithAttributedLabel:v31 attributedValue:attributedString];

        [array addObject:v33];
      }
    }
  }

  v64 = v18;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v34 = [(EKEventDetailTitleCellAccessibility *)selfCopy safeArrayForKey:@"_dateTimeViews"];
  v35 = [v34 countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = 0;
    v38 = *v69;
    do
    {
      v39 = 0;
      v40 = v37;
      do
      {
        if (*v69 != v38)
        {
          objc_enumerationMutation(v34);
        }

        v41 = *(*(&v68 + 1) + 8 * v39);
        if (!v40)
        {
          v42 = @"date.title";
          goto LABEL_25;
        }

        if (v40 == 1)
        {
          v42 = @"time.title";
LABEL_25:
          v43 = accessibilityLocalizedString(v42);
          goto LABEL_27;
        }

        v43 = 0;
LABEL_27:
        v44 = getAXCustomContentClass();
        accessibilityLabel = [v41 accessibilityLabel];
        v46 = [v44 customContentWithLabel:v43 value:accessibilityLabel];

        [v46 setImportance:1];
        [array addObject:v46];
        ++v40;

        ++v39;
      }

      while (v36 != v39);
      v37 += v36;
      v36 = [v34 countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v36);
  }

  v47 = [(EKEventDetailTitleCellAccessibility *)selfCopy safeValueForKey:@"_travelTimeView"];
  accessibilityLabel2 = [v47 accessibilityLabel];

  if (accessibilityLabel2)
  {
    v49 = getAXCustomContentClass();
    v50 = accessibilityLocalizedString(@"travel.time.title");
    v51 = [v49 customContentWithLabel:v50 value:accessibilityLabel2];

    [array addObject:v51];
  }

  v52 = [(EKEventDetailTitleCellAccessibility *)selfCopy safeValueForKey:@"_recurrenceView"];
  accessibilityLabel3 = [v52 accessibilityLabel];

  if (accessibilityLabel3)
  {
    v54 = getAXCustomContentClass();
    v55 = accessibilityLocalizedString(@"recurrence.title");
    v56 = [v54 customContentWithLabel:v55 value:accessibilityLabel3];

    [array addObject:v56];
  }

  v57 = [(EKEventDetailTitleCellAccessibility *)selfCopy safeValueForKey:@"_statusView"];
  accessibilityLabel4 = [v57 accessibilityLabel];

  if (accessibilityLabel4)
  {
    v59 = getAXCustomContentClass();
    v60 = accessibilityLocalizedString(@"status.title");
    v61 = [v59 customContentWithLabel:v60 value:accessibilityLabel4];

    [array addObject:v61];
  }

  v62 = *MEMORY[0x29EDCA608];

  return array;
}

- (id)accessibilityLabel
{
  v2 = [(EKEventDetailTitleCellAccessibility *)self safeValueForKey:@"_titleView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (void)addLocation:(id)location
{
  v4.receiver = self;
  v4.super_class = EKEventDetailTitleCellAccessibility;
  [(EKEventDetailTitleCellAccessibility *)&v4 addLocation:location];
  [(EKEventDetailTitleCellAccessibility *)self _axAnnotateLocationViewsIfNeeded];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(EKEventDetailTitleCellAccessibility *)self safeUIViewForKey:@"_suggestedLocationCell"];
  accessibilityLabel = [v3 accessibilityLabel];

  if (accessibilityLabel)
  {
    v5 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v3}];
  }

  else
  {
    v6 = [(EKEventDetailTitleCellAccessibility *)self safeArrayForKey:@"_locationItems"];
    v5 = [v6 ax_flatMappedArrayUsingBlock:&__block_literal_global_4];
  }

  return v5;
}

- (id)_accessibilityImageLabelforAttributedLocationName:(id)name andLocationStatus:(int64_t)status
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v7 = *MEMORY[0x29EDBD868];
  v8 = [nameCopy length];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __107__EKEventDetailTitleCellAccessibility__accessibilityImageLabelforAttributedLocationName_andLocationStatus___block_invoke;
  v11[3] = &unk_29F2BCC20;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = status;
  [nameCopy enumerateAttribute:v7 inRange:0 options:v8 usingBlock:{0, v11}];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __107__EKEventDetailTitleCellAccessibility__accessibilityImageLabelforAttributedLocationName_andLocationStatus___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) _accessibilityImageLabelforStatus:*(result + 48)];
    v4 = *(*(v2 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2A1C71028]();
  }

  return result;
}

- (id)_accessibilityImageLabelforStatus:(int64_t)status
{
  if ((status - 2) > 2)
  {
    return accessibilityLocalizedString(@"location.status.pending");
  }

  else
  {
    return accessibilityLocalizedString(off_29F2BCCA0[status - 2]);
  }
}

@end