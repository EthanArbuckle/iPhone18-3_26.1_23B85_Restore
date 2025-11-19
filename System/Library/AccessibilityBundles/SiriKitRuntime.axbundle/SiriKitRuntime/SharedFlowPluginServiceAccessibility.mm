@interface SharedFlowPluginServiceAccessibility
- (void)loadFlowPluginWithBundleId:(id)a3 bundlePath:(id)a4 rcId:(id)a5 hypothesisId:(id)a6 reply:(id)a7;
@end

@implementation SharedFlowPluginServiceAccessibility

- (void)loadFlowPluginWithBundleId:(id)a3 bundlePath:(id)a4 rcId:(id)a5 hypothesisId:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_opt_new();
  v18 = [v17 isClarityBoardEnabled];

  if (v18)
  {
    v19 = [MEMORY[0x29EDC0B48] sharedInstance];
    v20 = [v19 applicationBundleIdentifiers];

    if (!AXIsPluginAllowedInClarity())
    {
      v16[2](v16, 0);

      goto LABEL_5;
    }
  }

  v21.receiver = self;
  v21.super_class = SharedFlowPluginServiceAccessibility;
  [(SharedFlowPluginServiceAccessibility *)&v21 loadFlowPluginWithBundleId:v12 bundlePath:v13 rcId:v14 hypothesisId:v15 reply:v16];
LABEL_5:
}

@end