@interface GEORPMapLocation(MKAdditions)
- (uint64_t)_setMapType:()MKAdditions region:;
@end

@implementation GEORPMapLocation(MKAdditions)

- (uint64_t)_setMapType:()MKAdditions region:
{
  v4 = 1;
  if (a3 <= 2)
  {
    if (!a3)
    {
      return [a1 _setMapMode:v4 region:?];
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
LABEL_16:
        v4 = 0;
        return [a1 _setMapMode:v4 region:?];
      }

      goto LABEL_9;
    }

LABEL_15:
    v4 = 2;
    return [a1 _setMapMode:v4 region:?];
  }

  if (a3 > 101)
  {
    if (a3 == 102)
    {
      return [a1 _setMapMode:v4 region:?];
    }

    if (a3 == 104)
    {
      v4 = 4;
      return [a1 _setMapMode:v4 region:?];
    }

    goto LABEL_16;
  }

  if (a3 == 3)
  {
    goto LABEL_15;
  }

  if (a3 != 4)
  {
    goto LABEL_16;
  }

LABEL_9:
  v4 = 3;
  return [a1 _setMapMode:v4 region:?];
}

@end