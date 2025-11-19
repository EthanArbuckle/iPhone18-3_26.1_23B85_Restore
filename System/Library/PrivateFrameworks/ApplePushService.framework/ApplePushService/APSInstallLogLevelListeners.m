@interface APSInstallLogLevelListeners
@end

@implementation APSInstallLogLevelListeners

void ___APSInstallLogLevelListeners_block_invoke()
{
  sAPSAlertsEnabled = 0;
  CFPreferencesSynchronize(@"com.apple.apsalerts", @"mobile", *MEMORY[0x1E695E8B0]);

  _APSLoadPreferences();
}

@end