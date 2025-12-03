@interface MechanismRatchetFlow
- (BOOL)_needsBeginSecurityDelayUI;
- (BOOL)needsCountdownUI;
- (BOOL)needsGracePeriodUI;
- (BOOL)shouldFinishSuccessfullyWithoutUI;
- (BOOL)shouldFinishWithoutUI;
- (MechanismRatchetFlow)initWithParams:(id)params;
- (double)countdownDuration;
- (double)gracePeriodDuration;
@end

@implementation MechanismRatchetFlow

- (MechanismRatchetFlow)initWithParams:(id)params
{
  paramsCopy = params;
  v9.receiver = self;
  v9.super_class = MechanismRatchetFlow;
  v6 = [(MechanismRatchetFlow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_params, params);
  }

  return v7;
}

- (BOOL)shouldFinishSuccessfullyWithoutUI
{
  _needsBeginSecurityDelayUI = [(MechanismRatchetFlow *)self _needsBeginSecurityDelayUI];
  needsCountdownUI = [(MechanismRatchetFlow *)self needsCountdownUI];
  return (((_needsBeginSecurityDelayUI || needsCountdownUI) | [(MechanismRatchetFlow *)self needsGracePeriodUI]) & 1) == 0;
}

- (BOOL)shouldFinishWithoutUI
{
  if ([(MechanismRatchetFlow *)self _needsBeginSecurityDelayUI])
  {
    _wantsBeginSecurityDelayUI = [(MechanismRatchetFlow *)self _wantsBeginSecurityDelayUI];
  }

  else
  {
    _wantsBeginSecurityDelayUI = 0;
  }

  if ([(MechanismRatchetFlow *)self needsCountdownUI])
  {
    v4 = ![(MechanismRatchetFlow *)self _wantsCountdownUI];
  }

  else
  {
    v4 = 1;
  }

  v5 = v4 & ![(MechanismRatchetFlow *)self needsGracePeriodUI];
  return !_wantsBeginSecurityDelayUI && v5;
}

- (BOOL)needsCountdownUI
{
  stateComposite = [(MechanismRatchetFlowParams *)self->_params stateComposite];
  ratchetState = [stateComposite ratchetState];
  if ([ratchetState rawValue] == 1)
  {
    ratchetState2 = [stateComposite ratchetState];
    [ratchetState2 duration];
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)needsGracePeriodUI
{
  _wantsGracePeriodUI = [(MechanismRatchetFlow *)self _wantsGracePeriodUI];
  if (_wantsGracePeriodUI)
  {
    stateComposite = [(MechanismRatchetFlowParams *)self->_params stateComposite];
    gracePeriodState = [stateComposite gracePeriodState];
    isActive = [gracePeriodState isActive];

    LOBYTE(_wantsGracePeriodUI) = isActive;
  }

  return _wantsGracePeriodUI;
}

- (double)countdownDuration
{
  if (![(MechanismRatchetFlow *)self needsCountdownUI])
  {
    return 0.0;
  }

  stateComposite = [(MechanismRatchetFlowParams *)self->_params stateComposite];
  ratchetState = [stateComposite ratchetState];
  [ratchetState duration];
  v6 = v5;

  return v6;
}

- (double)gracePeriodDuration
{
  if (![(MechanismRatchetFlow *)self needsGracePeriodUI])
  {
    return 0.0;
  }

  stateComposite = [(MechanismRatchetFlowParams *)self->_params stateComposite];
  gracePeriodState = [stateComposite gracePeriodState];
  [gracePeriodState duration];
  v6 = v5;

  return v6;
}

- (BOOL)_needsBeginSecurityDelayUI
{
  stateComposite = [(MechanismRatchetFlowParams *)self->_params stateComposite];
  if ([(MechanismRatchetFlowParams *)self->_params handlingBiometryMatchConfirmedRequirement])
  {
    ratchetState = [stateComposite ratchetState];
    v5 = [ratchetState rawValue] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end