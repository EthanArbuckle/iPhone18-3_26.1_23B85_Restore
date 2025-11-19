@interface GAX_WKContentViewOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_gaxIsInTestingScenario;
- (id)_contextMenuInteraction:(id)a3 overrideSuggestedActionsForConfiguration:(id)a4;
- (void)continueContextMenuInteraction:(id)a3;
- (void)continueContextMenuInteractionWithDataDetectors:(id)a3;
@end

@implementation GAX_WKContentViewOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WKContentView" hasInstanceMethod:@"continueContextMenuInteractionWithDataDetectors:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"WKContentView" hasInstanceMethod:@"_contextMenuInteraction:overrideSuggestedActionsForConfiguration:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"WKContentView" hasInstanceMethod:@"continueContextMenuInteraction:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"WKContentView" hasInstanceMethod:@"_contentsOfUserInterfaceItem:" withFullSignature:{"@", "@", 0}];
}

- (BOOL)_gaxIsInTestingScenario
{
  v2 = +[UIAutonomousSingleAppModeSession currentlyActiveSession];
  v3 = [v2 effectiveConfiguration];

  if (v3 && [v3 style] != &dword_0 + 3)
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

- (void)continueContextMenuInteractionWithDataDetectors:(id)a3
{
  v4 = a3;
  if ([(GAX_WKContentViewOverride *)self _gaxIsInTestingScenario])
  {
    v4[2](v4, 0);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = GAX_WKContentViewOverride;
    [(GAX_WKContentViewOverride *)&v5 continueContextMenuInteractionWithDataDetectors:v4];
  }
}

- (void)continueContextMenuInteraction:(id)a3
{
  v4 = a3;
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
  v18 = self;
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

  v11 = [v10 BOOLValue];

  if (v11)
  {
LABEL_12:
    v13.receiver = self;
    v13.super_class = GAX_WKContentViewOverride;
    [(GAX_WKContentViewOverride *)&v13 continueContextMenuInteraction:v4];
    goto LABEL_13;
  }

  v4[2](v4, 0);
LABEL_13:
}

- (id)_contextMenuInteraction:(id)a3 overrideSuggestedActionsForConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = GAX_WKContentViewOverride;
  v8 = [(GAX_WKContentViewOverride *)&v13 _contextMenuInteraction:v6 overrideSuggestedActionsForConfiguration:v7];
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