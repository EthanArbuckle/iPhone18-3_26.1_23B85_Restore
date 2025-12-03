@interface PatternPlayerBase
- (BOOL)needsResetForAction:(unsigned __int8)action;
- (CHHapticEngine)engine;
@end

@implementation PatternPlayerBase

- (BOOL)needsResetForAction:(unsigned __int8)action
{
  previousAction = self->_previousAction;
  self->_previousAction = action;
  if (previousAction == 2)
  {
    return action == 2;
  }

  else
  {
    return previousAction != 1;
  }
}

- (CHHapticEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

@end