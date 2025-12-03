@interface GAX_WKContentViewOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_gaxIsInTestingScenario;
- (id)_contextMenuInteraction:(id)interaction overrideSuggestedActionsForConfiguration:(id)configuration;
- (void)continueContextMenuInteraction:(id)interaction;
- (void)continueContextMenuInteractionWithDataDetectors:(id)detectors;
@end

@implementation GAX_WKContentViewOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"continueContextMenuInteractionWithDataDetectors:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"_contextMenuInteraction:overrideSuggestedActionsForConfiguration:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"continueContextMenuInteraction:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"WKContentView" hasInstanceMethod:@"_contentsOfUserInterfaceItem:" withFullSignature:{"@", "@", 0}];
}

- (BOOL)_gaxIsInTestingScenario
{
  v2 = +[UIAutonomousSingleAppModeSession currentlyActiveSession];
  effectiveConfiguration = [v2 effectiveConfiguration];

  if (effectiveConfiguration && [effectiveConfiguration style] != &dword_0 + 3)
  {
    v5 = SecTaskCreateFromSelf(kCFAllocatorDefault);
    if (GAXSecTaskHasBooleanEntitlement(v5, kAXAACLegacyEntitlement))
    {
      HasBooleanEntitlement = 1;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      HasBooleanEntitlement = GAXSecTaskHasBooleanEntitlement(v5, kAXAACEntitlement);
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    CFRelease(v5);
    goto LABEL_9;
  }

  HasBooleanEntitlement = 0;
LABEL_9:

  return HasBooleanEntitlement;
}

- (void)continueContextMenuInteractionWithDataDetectors:(id)detectors
{
  detectorsCopy = detectors;
  if ([(GAX_WKContentViewOverride *)self _gaxIsInTestingScenario])
  {
    detectorsCopy[2](detectorsCopy, 0);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = GAX_WKContentViewOverride;
    [(GAX_WKContentViewOverride *)&v5 continueContextMenuInteractionWithDataDetectors:detectorsCopy];
  }
}

- (void)continueContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (![(GAX_WKContentViewOverride *)self _gaxIsInTestingScenario])
  {
    goto LABEL_12;
  }

  v26 = 0;
  objc_opt_class();
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_6AD4;
  v24 = sub_6AE4;
  v25 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_6AEC;
  v17 = &unk_14B98;
  selfCopy = self;
  v19 = &v20;
  AXPerformSafeBlock();
  v5 = v21[5];
  _Block_object_dispose(&v20, 8);

  v6 = __UIAccessibilityCastAsClass();

  if (v26 == 1)
  {
    abort();
  }

  v7 = [v6 objectForKeyedSubscript:@"contextMenu"];
  v8 = [v7 objectForKeyedSubscript:@"isImage"];

  v9 = [v6 objectForKeyedSubscript:@"contextMenu"];
  v10 = [v9 objectForKeyedSubscript:@"isLink"];

  if (!v8 || !v10)
  {
    v12 = AXLogValidations();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_AFB0(v8, v10, v12);
    }

    goto LABEL_11;
  }

  if (![v8 BOOLValue])
  {
LABEL_11:

    goto LABEL_12;
  }

  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
LABEL_12:
    v13.receiver = self;
    v13.super_class = GAX_WKContentViewOverride;
    [(GAX_WKContentViewOverride *)&v13 continueContextMenuInteraction:interactionCopy];
    goto LABEL_13;
  }

  interactionCopy[2](interactionCopy, 0);
LABEL_13:
}

- (id)_contextMenuInteraction:(id)interaction overrideSuggestedActionsForConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = GAX_WKContentViewOverride;
  v8 = [(GAX_WKContentViewOverride *)&v13 _contextMenuInteraction:interactionCopy overrideSuggestedActionsForConfiguration:configurationCopy];
  if ([(GAX_WKContentViewOverride *)self _gaxIsInTestingScenario])
  {
    objc_opt_class();
    v9 = __UIAccessibilityCastAsClass();
    v10 = v9;
    if (v9)
    {
      v11 = [v9 ax_filteredArrayUsingBlock:&stru_14BD8];

      v8 = v11;
    }
  }

  return v8;
}

@end