@interface UIImageView(MKAdditions)
- (unint64_t)_mapkit_imageContentMode;
- (void)_mapkit_setImageContentMode:()MKAdditions;
@end

@implementation UIImageView(MKAdditions)

- (void)_mapkit_setImageContentMode:()MKAdditions
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (a3 != 4)
    {
      a3 = v3;
    }
  }

  else
  {
    if (a3 == 0x8000000000000000)
    {
      return a1;
    }

    if (a3 != 1)
    {
      a3 = 0;
    }
  }

  return [a1 setContentMode:a3];
}

- (unint64_t)_mapkit_imageContentMode
{
  v1 = [a1 contentMode];
  if (v1 > 4)
  {
    return 0x8000000000000000;
  }

  else
  {
    return qword_1A30F7460[v1];
  }
}

@end