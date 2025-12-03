@interface AFUISiriTapPanDismissalPolicyManager
- (AFUISiriTapPanDismissalPolicyManager)initWithPolicy:(int64_t)policy delegate:(id)delegate;
- (AFUISiriTapPanDismissalPolicyManagerDelegate)_delegate;
- (void)_dismissalPolicyForPassThroughAlways:(BOOL)always forSessionState:(int64_t)state;
- (void)_dismissalPolicyForPassThroughUnlessDimmed:(BOOL)dimmed forSessionState:(int64_t)state;
- (void)_setShouldDismissForTapsAndPans:(BOOL)pans shouldDelayDelegateUpdate:(BOOL)update;
- (void)_updateDelegateOfPolicyChange;
- (void)dimmingLayerVisibilityDidChange:(BOOL)change forSessionState:(int64_t)state;
- (void)idleAndQuietDidChange:(BOOL)change forSessionState:(int64_t)state;
- (void)inputTypeDidChange:(int64_t)change;
- (void)invalidate;
@end

@implementation AFUISiriTapPanDismissalPolicyManager

- (AFUISiriTapPanDismissalPolicyManager)initWithPolicy:(int64_t)policy delegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = AFUISiriTapPanDismissalPolicyManager;
  v7 = [(AFUISiriTapPanDismissalPolicyManager *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AFUISiriTapPanDismissalPolicyManager *)v7 _setDelegate:delegateCopy];
    [(AFUISiriTapPanDismissalPolicyManager *)v8 _setDismissalPolicy:policy];
    [(AFUISiriTapPanDismissalPolicyManager *)v8 _setShouldDismissForTapsAndPans:policy == 1];
    [(AFUISiriTapPanDismissalPolicyManager *)v8 _updateDelegateOfPolicyChange];
  }

  return v8;
}

- (void)idleAndQuietDidChange:(BOOL)change forSessionState:(int64_t)state
{
  changeCopy = change;
  v19 = *MEMORY[0x277D85DE8];
  [(AFUISiriTapPanDismissalPolicyManager *)self _setIdleAndQuiet:?];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithInteger:state];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:changeCopy];
    v13 = 136315650;
    v14 = "[AFUISiriTapPanDismissalPolicyManager idleAndQuietDidChange:forSessionState:]";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s #dismissal: updating taps and pans should dismiss Siri for state:%@ siriIsIdleAndQuiet:%@", &v13, 0x20u);
  }

  _dismissalPolicy = [(AFUISiriTapPanDismissalPolicyManager *)self _dismissalPolicy];
  if (_dismissalPolicy == 2)
  {
    [(AFUISiriTapPanDismissalPolicyManager *)self _dismissalPolicyForPassThroughUnlessDimmed:[(AFUISiriTapPanDismissalPolicyManager *)self _dimmingLayerVisible] forSessionState:state];
  }

  else if (!_dismissalPolicy)
  {
    [(AFUISiriTapPanDismissalPolicyManager *)self _dismissalPolicyForPassThroughAlways:changeCopy forSessionState:state];
  }
}

- (void)dimmingLayerVisibilityDidChange:(BOOL)change forSessionState:(int64_t)state
{
  changeCopy = change;
  v18 = *MEMORY[0x277D85DE8];
  [(AFUISiriTapPanDismissalPolicyManager *)self _setDimmingLayerVisible:?];
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithBool:changeCopy];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    v12 = 136315650;
    v13 = "[AFUISiriTapPanDismissalPolicyManager dimmingLayerVisibilityDidChange:forSessionState:]";
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s #dismissal: updating taps and pans should dismiss for dimming layer change:%@ sessiontState:%@", &v12, 0x20u);
  }

  if ([(AFUISiriTapPanDismissalPolicyManager *)self _dismissalPolicy]== 2)
  {
    [(AFUISiriTapPanDismissalPolicyManager *)self _dismissalPolicyForPassThroughUnlessDimmed:changeCopy forSessionState:state];
  }
}

- (void)inputTypeDidChange:(int64_t)change
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = SASRequestInputTypeGetDescription();
    v8 = 136315394;
    v9 = "[AFUISiriTapPanDismissalPolicyManager inputTypeDidChange:]";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #dismissal: updating taps and pans should dismiss for input type:%@", &v8, 0x16u);
  }

  if ([(AFUISiriTapPanDismissalPolicyManager *)self _dismissalPolicy]== 3)
  {
    [(AFUISiriTapPanDismissalPolicyManager *)self _dismissalPolicyForPassThroughUnlessTypeToSiri:change];
  }
}

- (void)invalidate
{
  if ([(AFUISiriTapPanDismissalPolicyManager *)self _dismissalPolicy]!= 1)
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__updateDelegateOfPolicyChange object:0];
    [(AFUISiriTapPanDismissalPolicyManager *)self _setShouldDismissForTapsAndPans:0];

    [(AFUISiriTapPanDismissalPolicyManager *)self _updateDelegateOfPolicyChange];
  }
}

- (void)_dismissalPolicyForPassThroughAlways:(BOOL)always forSessionState:(int64_t)state
{
  alwaysCopy = always;
  if (self->_dismissalPolicy)
  {
    [AFUISiriTapPanDismissalPolicyManager _dismissalPolicyForPassThroughAlways:a2 forSessionState:self];
  }

  switch(state)
  {
    case 4:
      goto LABEL_6;
    case 3:
      v7 = 1;
      break;
    case 0:
LABEL_6:
      v7 = 0;
      alwaysCopy = 1;
      break;
    default:
      alwaysCopy = 0;
      v7 = 0;
      break;
  }

  [(AFUISiriTapPanDismissalPolicyManager *)self _setShouldDismissForTapsAndPans:alwaysCopy shouldDelayDelegateUpdate:v7];
}

- (void)_dismissalPolicyForPassThroughUnlessDimmed:(BOOL)dimmed forSessionState:(int64_t)state
{
  dimmedCopy = dimmed;
  v12 = *MEMORY[0x277D85DE8];
  if ([(AFUISiriTapPanDismissalPolicyManager *)self _dismissalPolicy]== 1)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[AFUISiriTapPanDismissalPolicyManager _dismissalPolicyForPassThroughUnlessDimmed:forSessionState:]";
      _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #dismissal Not updating tap pan dismissal policy on phone, feature flag not enabled.", &v10, 0xCu);
    }
  }

  else
  {
    if ((state - 1) >= 4)
    {
      v8 = state == 0;
    }

    else
    {
      v8 = dimmedCopy;
    }

    v9 = (state - 1) < 4 && dimmedCopy;

    [(AFUISiriTapPanDismissalPolicyManager *)self _setShouldDismissForTapsAndPans:v8 shouldDelayDelegateUpdate:v9];
  }
}

- (void)_setShouldDismissForTapsAndPans:(BOOL)pans shouldDelayDelegateUpdate:(BOOL)update
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_shouldDismissForTapsAndPans != pans)
  {
    updateCopy = update;
    pansCopy = pans;
    [(AFUISiriTapPanDismissalPolicyManager *)self _setShouldDismissForTapsAndPans:?];
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      if (updateCopy)
      {
        v8 = 0.7;
      }

      else
      {
        v8 = 0.0;
      }

      v9 = MEMORY[0x277CCABB0];
      v10 = v7;
      v11 = [v9 numberWithDouble:v8];
      v12 = [MEMORY[0x277CCABB0] numberWithBool:pansCopy];
      v13 = 136315650;
      v14 = "[AFUISiriTapPanDismissalPolicyManager _setShouldDismissForTapsAndPans:shouldDelayDelegateUpdate:]";
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_241432000, v10, OS_LOG_TYPE_DEFAULT, "%s #dismissal: cancelling pending tap/pan dismissal policy update. Scheduling new update with delay:%@ shouldDismiss:%@", &v13, 0x20u);
    }

    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__updateDelegateOfPolicyChange object:0];
    if (updateCopy)
    {
      [(AFUISiriTapPanDismissalPolicyManager *)self performSelector:sel__updateDelegateOfPolicyChange withObject:0 afterDelay:0.7];
    }

    else
    {
      [(AFUISiriTapPanDismissalPolicyManager *)self _updateDelegateOfPolicyChange];
    }
  }
}

- (void)_updateDelegateOfPolicyChange
{
  _delegate = [(AFUISiriTapPanDismissalPolicyManager *)self _delegate];
  [_delegate tapPanDismissalPolicyManager:self dismissalPolicyDidChange:{-[AFUISiriTapPanDismissalPolicyManager _shouldDismissForTapsAndPans](self, "_shouldDismissForTapsAndPans")}];
}

- (AFUISiriTapPanDismissalPolicyManagerDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end