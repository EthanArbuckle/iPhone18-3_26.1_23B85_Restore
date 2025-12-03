@interface ANVolumeUtils
+ (float)dBFromVolume:(float)volume;
+ (float)volumeFromDB:(float)b;
@end

@implementation ANVolumeUtils

+ (float)volumeFromDB:(float)b
{
  v4 = 0.0;
  v5 = MGGetProductType();
  if (v5 > 3348380075)
  {
    if (v5 == 3348380076)
    {
      v7 = -48.0;
      return (v7 - b) / v7;
    }

    v6 = 4240173202;
  }

  else
  {
    if (v5 == 1540760353)
    {
LABEL_7:
      if (b < -30.0)
      {
        return (b + 60.0) / 150.0;
      }

      v7 = -37.5;
      return (v7 - b) / v7;
    }

    v6 = 2702125347;
  }

  if (v5 == v6)
  {
    goto LABEL_7;
  }

  return v4;
}

+ (float)dBFromVolume:(float)volume
{
  v4 = -120.0;
  v5 = MGGetProductType();
  if (v5 > 3348380075)
  {
    if (v5 == 3348380076)
    {
      return (1.0 - volume) * -48.0;
    }

    v6 = 4240173202;
LABEL_6:
    if (v5 != v6)
    {
      return v4;
    }

    goto LABEL_7;
  }

  if (v5 != 1540760353)
  {
    v6 = 2702125347;
    goto LABEL_6;
  }

LABEL_7:
  if (volume <= 0.2)
  {
    return ((1.0 - volume) * -150.0) + 90.0;
  }

  else
  {
    return (1.0 - volume) * -37.5;
  }
}

@end