@interface ASDTPMEnabler
- (ASDTPMEnabler)initWithConfig:(id)config forSequencer:(id)sequencer;
- (BOOL)asdtHandlesPowerTransition:(int)transition;
- (int)asdtPowerStateChange:(int)change;
@end

@implementation ASDTPMEnabler

- (ASDTPMEnabler)initWithConfig:(id)config forSequencer:(id)sequencer
{
  configCopy = config;
  v10.receiver = self;
  v10.super_class = ASDTPMEnabler;
  v7 = [(ASDTPMDevice *)&v10 initWithConfig:configCopy forSequencer:sequencer];
  v8 = v7;
  if (v7)
  {
    [(ASDTPMDevice *)v7 setPmNoStateChangeOnFailure:1];
    -[ASDTPMEnabler setEnableTransition:](v8, "setEnableTransition:", [configCopy asdtPMEnablerEnableTransition]);
    -[ASDTPMEnabler setDisableTransition:](v8, "setDisableTransition:", [configCopy asdtPMEnablerDisableTransition]);
  }

  return v8;
}

- (int)asdtPowerStateChange:(int)change
{
  if (change == 1768843636)
  {
    v4 = asdtPowerTransitionUpwards([(ASDTPMEnabler *)self disableTransition]);
  }

  else if ([(ASDTPMEnabler *)self enableTransition]== change)
  {
    v4 = 1;
  }

  else
  {
    if ([(ASDTPMEnabler *)self disableTransition]!= change)
    {
      return 0;
    }

    v4 = 0;
  }

  return [(ASDTPMEnabler *)self enable:v4];
}

- (BOOL)asdtHandlesPowerTransition:(int)transition
{
  if (transition == 1768843636)
  {
    return 1;
  }

  if ([(ASDTPMEnabler *)self enableTransition]== transition)
  {
    return 1;
  }

  return [(ASDTPMEnabler *)self disableTransition]== transition;
}

@end