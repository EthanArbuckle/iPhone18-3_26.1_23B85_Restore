@interface SBContinuousExposeModuleController
- (BOOL)previouslyEnabledStageManager;
- (int64_t)_telemetryMultitaskingModeForMode:(int64_t)mode;
- (int64_t)currentMultitaskingMode;
- (void)_emitWindowingPersonalizationTelemetryWithPreviousMultitaskingMode:(int64_t)mode currentMultitaskingMode:(int64_t)multitaskingMode;
- (void)setCurrentMultitaskingMode:(int64_t)mode;
@end

@implementation SBContinuousExposeModuleController

- (int64_t)currentMultitaskingMode
{
  _defaults = [(SBContinuousExposeModuleController *)self _defaults];
  v4 = [_defaults BOOLForKey:@"SBChamoisWindowingEnabled"];

  _defaults2 = [(SBContinuousExposeModuleController *)self _defaults];
  v6 = [_defaults2 BOOLForKey:@"SBMedusaMultitaskingEnabled"];

  if (v4)
  {
    return 2;
  }

  else
  {
    return v6;
  }
}

- (void)setCurrentMultitaskingMode:(int64_t)mode
{
  currentMultitaskingMode = [(SBContinuousExposeModuleController *)self currentMultitaskingMode];
  _defaults = [(SBContinuousExposeModuleController *)self _defaults];
  [_defaults setBool:mode == 2 forKey:@"SBChamoisWindowingEnabled"];

  if (mode == 2 || (-[SBContinuousExposeModuleController _defaults](self, "_defaults"), v7 = objc_claimAutoreleasedReturnValue(), [v7 setBool:mode == 1 forKey:@"SBMedusaMultitaskingEnabled"], v7, (mode - 1) <= 1))
  {
    _defaults2 = [(SBContinuousExposeModuleController *)self _defaults];
    [_defaults2 setBool:mode == 2 forKey:@"SBFlexibleWindowingAutomaticStageCreationEnabledExternal"];
  }

  if (currentMultitaskingMode != mode)
  {

    [(SBContinuousExposeModuleController *)self _emitWindowingPersonalizationTelemetryWithPreviousMultitaskingMode:currentMultitaskingMode currentMultitaskingMode:mode];
  }
}

- (BOOL)previouslyEnabledStageManager
{
  _defaults = [(SBContinuousExposeModuleController *)self _defaults];
  v3 = [_defaults BOOLForKey:@"SBFlexibleWindowingPreviouslyEnabledAutomaticStageCreation"];

  return v3;
}

- (void)_emitWindowingPersonalizationTelemetryWithPreviousMultitaskingMode:(int64_t)mode currentMultitaskingMode:(int64_t)multitaskingMode
{
  v4 = [[SBSControlCenterWindowingTelemetryPersonalizationMetrics alloc] initWithPreviousMultitaskingMode:-[SBContinuousExposeModuleController _telemetryMultitaskingModeForMode:](self currentMultitaskingMode:{"_telemetryMultitaskingModeForMode:", mode), -[SBContinuousExposeModuleController _telemetryMultitaskingModeForMode:](self, "_telemetryMultitaskingModeForMode:", multitaskingMode)}];
  [v4 emit];
}

- (int64_t)_telemetryMultitaskingModeForMode:(int64_t)mode
{
  v3 = 1;
  if (mode == 1)
  {
    v3 = 2;
  }

  if (mode == 2)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

@end