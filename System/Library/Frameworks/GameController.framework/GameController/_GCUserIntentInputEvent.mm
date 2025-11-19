@interface _GCUserIntentInputEvent
- (_GCUserIntentInputEvent)initWithXValue:(float)a3 yValue:(float)a4 timestamp:(unint64_t)a5 deadzoneSquared:(double)a6;
@end

@implementation _GCUserIntentInputEvent

- (_GCUserIntentInputEvent)initWithXValue:(float)a3 yValue:(float)a4 timestamp:(unint64_t)a5 deadzoneSquared:(double)a6
{
  v17.receiver = self;
  v17.super_class = _GCUserIntentInputEvent;
  v10 = [(_GCUserIntentInputEvent *)&v17 init];
  if (v10)
  {
    if (((a4 * a4) + (a3 * a3)) >= a6)
    {
      v12 = a4 * 0.0 + a3;
      v13 = a4 - a3 * 0.0;
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

    v10->_timestampInSeconds = *&timestampToSecondsMultiplier_multiplier * a5;
  }

  return v10;
}

@end