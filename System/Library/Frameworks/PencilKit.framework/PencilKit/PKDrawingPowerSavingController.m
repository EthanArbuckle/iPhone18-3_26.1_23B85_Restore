@interface PKDrawingPowerSavingController
- (BOOL)shouldSkipFrameWithFrameStartTimestamp:(double)a3 framesAfterStart:;
- (PKDrawingPowerSavingController)init;
- (double)accumulateMovementForCurrentFrame;
- (id).cxx_construct;
@end

@implementation PKDrawingPowerSavingController

- (PKDrawingPowerSavingController)init
{
  v10.receiver = self;
  v10.super_class = PKDrawingPowerSavingController;
  v2 = [(PKDrawingPowerSavingController *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 doubleForKey:@"internalSettings.drawing.apt.minimumMovementDistanceFinger"];
    v2->_minimumMovementDistanceFinger = v4;

    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v5 doubleForKey:@"internalSettings.drawing.apt.minimumMovementDistancePencil"];
    v2->_minimumMovementDistancePencil = v6;

    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v7 doubleForKey:@"internalSettings.drawing.apt.minimumMovementDistanceTimeout"];
    v2->_minimumMovementDistanceTimeout = v8;
  }

  return v2;
}

- (BOOL)shouldSkipFrameWithFrameStartTimestamp:(double)a3 framesAfterStart:
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (PKIsVisionDevice())
  {
    v6 = 80;
  }

  else
  {
    v6 = 88;
    if (*(v5 + 104))
    {
      v6 = 80;
    }
  }

  v7 = *(v5 + v6);
  if (*(v5 + 56) >= v7)
  {
    return 0;
  }

  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  if (v8 == v9)
  {
    v13 = 0.0;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      v12 = *v8++;
      v11 = v11 + v12;
      ++v10;
    }

    while (v8 != v9);
    v13 = v11 / v10;
  }

  if (v13 >= v7)
  {
    kdebug_trace();
    return 0;
  }

  return a3 - *(v5 + 64) < *(v5 + 96) && a2 > 4;
}

- (double)accumulateMovementForCurrentFrame
{
  if (a1)
  {
    v3 = a1 + 8;
    std::vector<double>::insert((a1 + 8), *(a1 + 8), (a1 + 48));
    v5 = *v3;
    v4 = *(v3 + 8);
    if (v4 - *v3 >= 0x29)
    {
      *(a1 + 16) = --v4;
    }

    v6 = *(v3 + 40);
    if (v6 == 0.0)
    {
      if (v5 == v4)
      {
        v6 = 0.0;
      }

      else
      {
        v7 = 0;
        v8 = 0.0;
        do
        {
          v9 = *v5++;
          v8 = v8 + v9;
          ++v7;
        }

        while (v5 != v4);
        v6 = v8 / v7;
      }
    }

    result = v6 + *(a1 + 56);
    *(a1 + 56) = result;
    *(a1 + 48) = 0;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end