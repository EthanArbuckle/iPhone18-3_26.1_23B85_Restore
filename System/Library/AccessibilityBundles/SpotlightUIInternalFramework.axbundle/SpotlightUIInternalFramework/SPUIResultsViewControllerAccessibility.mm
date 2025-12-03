@interface SPUIResultsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axFirstResultInModel:(id)model;
- (id)_axResultsInSection:(id)section;
- (id)_axSectionsInModel:(id)model;
- (id)_axStringForType:(int)type;
- (int64_t)_axNumberOfResultsInModel:(id)model;
- (void)searchAgentUpdatedResults:(id)results;
@end

@implementation SPUIResultsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SPUIResultsViewController" hasInstanceMethod:@"searchAgentUpdatedResults:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SPUIResultsViewController" hasInstanceMethod:@"goTakeoverResult" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SPUISearchModel"];
  [validationsCopy validateClass:@"SPUISearchModel" hasInstanceMethod:@"queryComplete" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SPUISearchModel" hasInstanceMethod:@"queryPartiallyComplete" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SPUISearchModel" hasInstanceMethod:@"sections" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFResultSection"];
  [validationsCopy validateClass:@"SFResultSection" hasInstanceMethod:@"results" withFullSignature:{"@", 0}];
}

- (void)searchAgentUpdatedResults:(id)results
{
  resultsCopy = results;
  v44.receiver = self;
  v44.super_class = SPUIResultsViewControllerAccessibility;
  [(SPUIResultsViewControllerAccessibility *)&v44 searchAgentUpdatedResults:resultsCopy];
  MEMORY[0x29ED37100](@"SPUIProactiveResultsViewController");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([*MEMORY[0x29EDC8008] applicationState])
    {
      v5 = AXLogAppAccessibility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_29C375000, v5, OS_LOG_TYPE_INFO, "Not posting search agent results because we're not active", buf, 2u);
      }

LABEL_29:

      goto LABEL_30;
    }

    v5 = [(SPUIResultsViewControllerAccessibility *)self safeValueForKey:@"goTakeoverResult"];
    objc_opt_class();
    __UIAccessibilityCastAsSafeCategory();
    *buf = 0;
    v39 = buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy_;
    v42 = __Block_byref_object_dispose_;
    v6 = v43 = 0;
    v7 = resultsCopy;
    AXPerformSafeBlock();
    v8 = *(v39 + 5);

    _Block_object_dispose(buf, 8);
    if (v8 && ([v8 accessibilityLabel], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
    {
      v11 = MEMORY[0x29EDBA0F8];
      v12 = accessibilityLocalizedString(@"search.top.hit.format");
      accessibilityLabel = [v8 accessibilityLabel];
      v33 = [v11 localizedStringWithFormat:v12, accessibilityLabel];

      v37 = [v8 safeStringForKey:@"secondaryTitle"];
      v14 = -[SPUIResultsViewControllerAccessibility _axStringForType:](self, "_axStringForType:", [v8 safeIntForKey:@"type"]);
      v15 = v6;
      v16 = MEMORY[0x29EDBA0F8];
      v17 = accessibilityLocalizedString(@"search.go.format");
      v35 = v14;
      v18 = v16;
      v6 = v15;
      v19 = v33;
      v36 = [v18 localizedStringWithFormat:v17, v14];
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v35 = 0;
      v19 = 0;
    }

    v20 = [(SPUIResultsViewControllerAccessibility *)self _axNumberOfResultsInModel:v7];
    v21 = MEMORY[0x29EDBA0F8];
    v22 = accessibilityLocalizedString(@"search.items.found.format");
    v23 = [v21 localizedStringWithFormat:v22, v20];

    if ([v7 safeBoolForKey:@"queryComplete"])
    {
      v31 = v23;
      v32 = @"__AXStringForVariablesSentinel";
    }

    else
    {
      if (![v7 safeBoolForKey:@"queryPartiallyComplete"])
      {
        v24 = 0;
        if (!v8)
        {
          goto LABEL_20;
        }

LABEL_16:
        if (v5)
        {
          v34 = v6;
          v25 = [v5 safeValueForKey:@"resultBundleId"];
          _axPreviousGoResult = [(SPUIResultsViewControllerAccessibility *)self _axPreviousGoResult];
          v27 = [_axPreviousGoResult safeValueForKey:@"resultBundleId"];

          if (v25 != v27)
          {
            v28 = __AXStringForVariables();

            [(SPUIResultsViewControllerAccessibility *)self _axSetPreviousGoResult:v5, v37, v23, v36, @"__AXStringForVariablesSentinel"];
            v24 = v28;
          }

          v6 = v34;
          goto LABEL_22;
        }

LABEL_20:
        if (!v5)
        {
          [(SPUIResultsViewControllerAccessibility *)self _axSetPreviousGoResult:0];
        }

LABEL_22:
        if (v24)
        {
          _axPreviousAnnouncement = [(SPUIResultsViewControllerAccessibility *)self _axPreviousAnnouncement];
          v30 = [_axPreviousAnnouncement isEqualToString:v24];

          if ((v30 & 1) == 0)
          {
            if ([(SPUIResultsViewControllerAccessibility *)self _axResultsFirstAppeared])
            {
              UIAccessibilitySpeakOrQueueIfNeeded();
              [(SPUIResultsViewControllerAccessibility *)self _axSetResultsFirstAppeared:0];
            }

            else
            {
              UIAccessibilitySpeak();
            }

            [(SPUIResultsViewControllerAccessibility *)self _axSetPreviousAnnouncement:v24, v31, v32];
          }
        }

        goto LABEL_29;
      }

      v31 = @"__AXStringForVariablesSentinel";
    }

    v24 = __AXStringForVariables();
    if (!v8)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_30:
}

uint64_t __68__SPUIResultsViewControllerAccessibility_searchAgentUpdatedResults___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axFirstResultInModel:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_axStringForType:(int)type
{
  if ((type - 1) > 0x18)
  {
    v4 = &stru_2A22F37D0;
  }

  else
  {
    v4 = accessibilityLocalizedString(off_29F2FAEF8[type - 1]);
  }

  return v4;
}

- (id)_axSectionsInModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  v4 = [modelCopy safeValueForKey:@"sections"];
  array = __UIAccessibilityCastAsClass();

  if (!array)
  {
    objc_opt_class();
    v6 = [modelCopy safeValueForKey:@"sections"];
    v7 = __UIAccessibilityCastAsClass();

    array = [v7 array];
  }

  return array;
}

- (id)_axResultsInSection:(id)section
{
  sectionCopy = section;
  objc_opt_class();
  v4 = [sectionCopy safeValueForKey:@"results"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (int64_t)_axNumberOfResultsInModel:(id)model
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SPUIResultsViewControllerAccessibility *)self _axSectionsInModel:model, 0];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(SPUIResultsViewControllerAccessibility *)self _axResultsInSection:*(*(&v13 + 1) + 8 * i)];
        v7 += [v10 count];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x29EDCA608];
  return v7;
}

- (id)_axFirstResultInModel:(id)model
{
  v4 = [(SPUIResultsViewControllerAccessibility *)self _axSectionsInModel:model];
  firstObject = [v4 firstObject];
  v6 = [(SPUIResultsViewControllerAccessibility *)self _axResultsInSection:firstObject];
  firstObject2 = [v6 firstObject];

  return firstObject2;
}

@end