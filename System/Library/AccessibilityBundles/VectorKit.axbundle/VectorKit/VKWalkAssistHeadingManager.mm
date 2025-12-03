@interface VKWalkAssistHeadingManager
- (BOOL)_isFacingLocation;
- (VKWalkAssistHapticEngineDelegate)hapticEngineDelegate;
- (VKWalkAssistHeadingManager)initWithHapticEngineDelegate:(id)delegate;
- (double)_getDegrees:(double)result;
- (void)updateHeading:(double)heading bearing:(double)bearing;
@end

@implementation VKWalkAssistHeadingManager

- (VKWalkAssistHeadingManager)initWithHapticEngineDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = VKWalkAssistHeadingManager;
  v5 = [(VKWalkAssistHeadingManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&v5->_heading = _Q0;
    v5->_isLocationInView = 0;
    objc_storeWeak(&v5->_hapticEngineDelegate, delegateCopy);
    v12 = v6;
  }

  return v6;
}

- (void)updateHeading:(double)heading bearing:(double)bearing
{
  if (heading >= 0.0)
  {
    [(VKWalkAssistHeadingManager *)self setHeading:?];
    [(VKWalkAssistHeadingManager *)self setBearing:bearing];
    _isFacingLocation = [(VKWalkAssistHeadingManager *)self _isFacingLocation];
    if (self->_isLocationInView != _isFacingLocation)
    {
      v7 = _isFacingLocation;
      _isFacingLocation2 = [(VKWalkAssistHeadingManager *)self _isFacingLocation];
      hapticEngineDelegate = [(VKWalkAssistHeadingManager *)self hapticEngineDelegate];
      v10 = hapticEngineDelegate;
      if (_isFacingLocation2)
      {
        [hapticEngineDelegate playEnterHaptic];
      }

      else
      {
        [hapticEngineDelegate playExitHaptic];
      }

      [(VKWalkAssistHeadingManager *)self setIsLocationInView:v7];
    }
  }
}

- (BOOL)_isFacingLocation
{
  [(VKWalkAssistHeadingManager *)self bearing];
  [(VKWalkAssistHeadingManager *)self _getDegrees:v3 + 30.0];
  v5 = v4;
  [(VKWalkAssistHeadingManager *)self bearing];
  [(VKWalkAssistHeadingManager *)self _getDegrees:v6 + -30.0];
  v8 = v7;
  if (v5 < v7)
  {
    [(VKWalkAssistHeadingManager *)self heading];
    if (v9 >= v8 || ([(VKWalkAssistHeadingManager *)self heading], v10 >= v5))
    {
      [(VKWalkAssistHeadingManager *)self heading];
      if (v11 > v5)
      {
        [(VKWalkAssistHeadingManager *)self heading];
        if (v12 > v8)
        {
          v5 = v5 + 360.0;
        }
      }
    }

    else
    {
      v8 = v8 + -360.0;
    }
  }

  [(VKWalkAssistHeadingManager *)self heading];
  result = 0;
  if (v13 <= v5)
  {
    [(VKWalkAssistHeadingManager *)self heading];
    if (v14 >= v8)
    {
      return 1;
    }
  }

  return result;
}

- (double)_getDegrees:(double)result
{
    ;
  }

  while (result < 0.0)
  {
    result = result + 360.0;
  }

  return result;
}

- (VKWalkAssistHapticEngineDelegate)hapticEngineDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hapticEngineDelegate);

  return WeakRetained;
}

@end