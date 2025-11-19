@interface SiriGKMediaPod
- (UIEdgeInsets)edgeInsets;
- (double)minimumInteritemSpacing;
- (double)minimumLineSpacing;
@end

@implementation SiriGKMediaPod

- (double)minimumInteritemSpacing
{
  IsPad = SiriUIDeviceIsPad();
  v3 = 9.0;
  v4 = SiriUIIsCompactWidth();
  if ((IsPad & 1) == 0)
  {
    if (SiriUIIsLargePhoneLayout())
    {
      v3 = 14.0;
    }

    else
    {
      v3 = 9.0;
    }
  }

  result = 14.0;
  if (v4)
  {
    return v3;
  }

  return result;
}

- (double)minimumLineSpacing
{
  IsPad = SiriUIDeviceIsPad();
  v3 = 9.0;
  v4 = SiriUIIsCompactWidth();
  if ((IsPad & 1) == 0)
  {
    if (SiriUIIsLargePhoneLayout())
    {
      v3 = 14.0;
    }

    else
    {
      v3 = 9.0;
    }
  }

  result = 14.0;
  if (v4)
  {
    return v3;
  }

  return result;
}

- (UIEdgeInsets)edgeInsets
{
  IsPad = SiriUIDeviceIsPad();
  v3 = SiriUIIsCompactWidth();
  if (IsPad)
  {
    v4 = 9.0;
    if (!v3)
    {
      v4 = 14.0;
    }
  }

  else
  {
    SiriUIIsLargePhoneLayout();
    v4 = 16.0;
  }

  v5 = 16.0;
  v6 = 16.0;
  v7 = v4;
  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

@end