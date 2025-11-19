@interface PatternPlayerBase
- (BOOL)needsResetForAction:(unsigned __int8)a3;
- (CHHapticEngine)engine;
@end

@implementation PatternPlayerBase

- (BOOL)needsResetForAction:(unsigned __int8)a3
{
  previousAction = self->_previousAction;
  self->_previousAction = a3;
  if (previousAction == 2)
  {
    return a3 == 2;
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