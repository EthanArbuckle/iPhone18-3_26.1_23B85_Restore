@interface PSVoiceTriggerRootController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation PSVoiceTriggerRootController

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isiPad])
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

@end