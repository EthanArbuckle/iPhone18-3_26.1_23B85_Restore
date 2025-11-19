@interface SBContinuousExposeModuleController
- (BOOL)previouslyEnabledStageManager;
- (int64_t)_telemetryMultitaskingModeForMode:(int64_t)a3;
- (int64_t)currentMultitaskingMode;
- (void)_emitWindowingPersonalizationTelemetryWithPreviousMultitaskingMode:(int64_t)a3 currentMultitaskingMode:(int64_t)a4;
- (void)setCurrentMultitaskingMode:(int64_t)a3;
@end

@implementation SBContinuousExposeModuleController

- (int64_t)currentMultitaskingMode
{
  v3 = [(SBContinuousExposeModuleController *)self _defaults];
  v4 = [v3 BOOLForKey:@"SBChamoisWindowingEnabled"];

  v5 = [(SBContinuousExposeModuleController *)self _defaults];
  v6 = [v5 BOOLForKey:@"SBMedusaMultitaskingEnabled"];

  if (v4)
  {
    return 2;
  }

  else
  {
    return v6;
  }
}

- (void)setCurrentMultitaskingMode:(int64_t)a3
{
  v5 = [(SBContinuousExposeModuleController *)self currentMultitaskingMode];
  v6 = [(SBContinuousExposeModuleController *)self _defaults];
  [v6 setBool:a3 == 2 forKey:@"SBChamoisWindowingEnabled"];

  if (a3 == 2 || (-[SBContinuousExposeModuleController _defaults](self, "_defaults"), v7 = objc_claimAutoreleasedReturnValue(), [v7 setBool:a3 == 1 forKey:@"SBMedusaMultitaskingEnabled"], v7, (a3 - 1) <= 1))
  {
    v8 = [(SBContinuousExposeModuleController *)self _defaults];
    [v8 setBool:a3 == 2 forKey:@"SBFlexibleWindowingAutomaticStageCreationEnabledExternal"];
  }

  if (v5 != a3)
  {

    [(SBContinuousExposeModuleController *)self _emitWindowingPersonalizationTelemetryWithPreviousMultitaskingMode:v5 currentMultitaskingMode:a3];
  }
}

- (BOOL)previouslyEnabledStageManager
{
  v2 = [(SBContinuousExposeModuleController *)self _defaults];
  v3 = [v2 BOOLForKey:@"SBFlexibleWindowingPreviouslyEnabledAutomaticStageCreation"];

  return v3;
}

- (void)_emitWindowingPersonalizationTelemetryWithPreviousMultitaskingMode:(int64_t)a3 currentMultitaskingMode:(int64_t)a4
{
  v4 = [[SBSControlCenterWindowingTelemetryPersonalizationMetrics alloc] initWithPreviousMultitaskingMode:-[SBContinuousExposeModuleController _telemetryMultitaskingModeForMode:](self currentMultitaskingMode:{"_telemetryMultitaskingModeForMode:", a3), -[SBContinuousExposeModuleController _telemetryMultitaskingModeForMode:](self, "_telemetryMultitaskingModeForMode:", a4)}];
  [v4 emit];
}

- (int64_t)_telemetryMultitaskingModeForMode:(int64_t)a3
{
  v3 = 1;
  if (a3 == 1)
  {
    v3 = 2;
  }

  if (a3 == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

@end