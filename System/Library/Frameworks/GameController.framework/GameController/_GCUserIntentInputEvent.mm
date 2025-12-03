@interface _GCUserIntentInputEvent
- (_GCUserIntentInputEvent)initWithXValue:(float)value yValue:(float)yValue timestamp:(unint64_t)timestamp deadzoneSquared:(double)squared;
@end

@implementation _GCUserIntentInputEvent

- (_GCUserIntentInputEvent)initWithXValue:(float)value yValue:(float)yValue timestamp:(unint64_t)timestamp deadzoneSquared:(double)squared
{
  v17.receiver = self;
  v17.super_class = _GCUserIntentInputEvent;
  v10 = [(_GCUserIntentInputEvent *)&v17 init];
  if (v10)
  {
    if (((yValue * yValue) + (value * value)) >= squared)
    {
      v12 = yValue * 0.0 + value;
      v13 = yValue - value * 0.0;
      v14 = atan2f(v13, v12);
      v15 = v14;
      if (v14 >= -2.35619449)
      {
        if (v15 >= -1.57079633)
        {
          if (v15 >= -0.785398163)
          {
            if (v14 >= 0.0)
            {
              if (v15 <= 2.35619449)
              {
                if (v15 <= 1.57079633)
                {
                  v11 = v15 > 0.785398163;
                }

                else
                {
                  v11 = 2;
                }
              }

              else
              {
                v11 = 3;
              }
            }

            else
            {
              v11 = 7;
            }
          }

          else
          {
            v11 = 6;
          }
        }

        else
        {
          v11 = 5;
        }
      }

      else
      {
        v11 = 4;
      }
    }

    else
    {
      v11 = -1;
    }

    v10->_octant = v11;
    if (timestampToSecondsMultiplier_onceToken != -1)
    {
      [_GCUserIntentInputEvent initWithXValue:yValue:timestamp:deadzoneSquared:];
    }

    v10->_timestampInSeconds = *&timestampToSecondsMultiplier_multiplier * timestamp;
  }

  return v10;
}

@end