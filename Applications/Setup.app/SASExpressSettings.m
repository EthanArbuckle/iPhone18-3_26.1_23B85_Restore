@interface SASExpressSettings
- (id)buddy_iPadMultitaskingMode;
- (int64_t)buddy_userInterfaceStyleModeValue;
@end

@implementation SASExpressSettings

- (int64_t)buddy_userInterfaceStyleModeValue
{
  if (([(SASExpressSettings *)self hasAppearanceMode]& 1) == 0)
  {
    return 0;
  }

  v2 = [(SASExpressSettings *)self appearanceMode];
  switch(v2)
  {
    case 1u:
      return 1;
    case 2u:
      return 2;
    case 3u:
      return 100;
  }

  return v5;
}

- (id)buddy_iPadMultitaskingMode
{
  if (([(SASExpressSettings *)self hasIPadMultitaskingMode]& 1) != 0)
  {
    v2 = [(SASExpressSettings *)self iPadMultitaskingMode];
    if (v2)
    {
      if (v2 == 1)
      {
        v5 = &off_10033D0E8;
      }
    }

    else
    {
      v5 = &off_10033D0D0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end