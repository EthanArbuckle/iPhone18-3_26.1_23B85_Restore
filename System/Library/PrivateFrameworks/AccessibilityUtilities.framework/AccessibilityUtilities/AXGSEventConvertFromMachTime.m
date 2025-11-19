@interface AXGSEventConvertFromMachTime
@end

@implementation AXGSEventConvertFromMachTime

double ___AXGSEventConvertFromMachTime_block_invoke()
{
  info = 0;
  if (mach_timebase_info(&info))
  {
    LODWORD(v1) = 1;
    LODWORD(v2) = 1;
  }

  else
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.numer;
    if (info.numer != info.denom)
    {
      if (info.numer >= info.denom)
      {
        denom = info.denom;
      }

      else
      {
        denom = info.numer;
      }

      if (info.numer <= info.denom)
      {
        numer = info.denom;
      }

      else
      {
        numer = info.numer;
      }

      if (denom)
      {
        do
        {
          v5 = denom;
          denom = numer % denom;
          numer = v5;
        }

        while (denom);
      }

      else
      {
        v5 = numer;
      }

      v2 = info.numer / v5;
      v1 = info.denom / v5;
    }
  }

  if (v2)
  {
    if (v1)
    {
      result = v2 / v1 * *&_AXGSEventConvertFromMachTime___scale;
      *&_AXGSEventConvertFromMachTime___scale = result;
    }
  }

  return result;
}

@end