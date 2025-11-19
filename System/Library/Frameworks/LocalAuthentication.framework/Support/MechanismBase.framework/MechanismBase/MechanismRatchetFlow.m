@interface MechanismRatchetFlow
- (BOOL)_needsBeginSecurityDelayUI;
- (BOOL)needsCountdownUI;
- (BOOL)needsGracePeriodUI;
- (BOOL)shouldFinishSuccessfullyWithoutUI;
- (BOOL)shouldFinishWithoutUI;
- (MechanismRatchetFlow)initWithParams:(id)a3;
- (double)countdownDuration;
- (double)gracePeriodDuration;
@end

@implementation MechanismRatchetFlow

- (MechanismRatchetFlow)initWithParams:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MechanismRatchetFlow;
  v6 = [(MechanismRatchetFlow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_params, a3);
  }

  return v7;
}

- (BOOL)shouldFinishSuccessfullyWithoutUI
{
  v3 = [(MechanismRatchetFlow *)self _needsBeginSecurityDelayUI];
  v4 = [(MechanismRatchetFlow *)self needsCountdownUI];
  return (((v3 || v4) | [(MechanismRatchetFlow *)self needsGracePeriodUI]) & 1) == 0;
}

- (BOOL)shouldFinishWithoutUI
{
  if ([(MechanismRatchetFlow *)self _needsBeginSecurityDelayUI])
  {
    v3 = [(MechanismRatchetFlow *)self _wantsBeginSecurityDelayUI];
  }

  else
  {
    v3 = 0;
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
  return !v3 && v5;
}

- (BOOL)needsCountdownUI
{
  v2 = [(MechanismRatchetFlowParams *)self->_params stateComposite];
  v3 = [v2 ratchetState];
  if ([v3 rawValue] == 1)
  {
    v4 = [v2 ratchetState];
    [v4 duration];
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
  v3 = [(MechanismRatchetFlow *)self _wantsGracePeriodUI];
  if (v3)
  {
    v4 = [(MechanismRatchetFlowParams *)self->_params stateComposite];
    v5 = [v4 gracePeriodState];
    v6 = [v5 isActive];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (double)countdownDuration
{
  if (![(MechanismRatchetFlow *)self needsCountdownUI])
  {
    return 0.0;
  }

  v3 = [(MechanismRatchetFlowParams *)self->_params stateComposite];
  v4 = [v3 ratchetState];
  [v4 duration];
  v6 = v5;

  return v6;
}

- (double)gracePeriodDuration
{
  if (![(MechanismRatchetFlow *)self needsGracePeriodUI])
  {
    return 0.0;
  }

  v3 = [(MechanismRatchetFlowParams *)self->_params stateComposite];
  v4 = [v3 gracePeriodState];
  [v4 duration];
  v6 = v5;

  return v6;
}

- (BOOL)_needsBeginSecurityDelayUI
{
  v3 = [(MechanismRatchetFlowParams *)self->_params stateComposite];
  if ([(MechanismRatchetFlowParams *)self->_params handlingBiometryMatchConfirmedRequirement])
  {
    v4 = [v3 ratchetState];
    v5 = [v4 rawValue] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end