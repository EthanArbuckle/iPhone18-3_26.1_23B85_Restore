@interface NSDate(BacklightServices)
- (BOOL)bls_isOnOrAfter:()BacklightServices andOnOrBefore:;
- (BOOL)bls_isOnOrAfter:()BacklightServices andOnOrBefore:withEpsilon:;
- (__CFString)bls_loggingString;
- (__CFString)bls_shortLoggingString;
- (id)bls_initWithBSContinuousMachTime:()BacklightServices;
- (id)bls_initWithMachContinuousTime:()BacklightServices;
- (uint64_t)bls_compare:()BacklightServices withEpsilon:;
- (uint64_t)bls_fileNameString;
- (uint64_t)bls_machContinuousTime;
@end

@implementation NSDate(BacklightServices)

- (__CFString)bls_loggingString
{
  if (bls_loggingString_onceToken != -1)
  {
    [NSDate(BacklightServices) bls_loggingString];
  }

  [a1 timeIntervalSinceReferenceDate];
  if (v2 <= *&bls_loggingString_distantPastCache)
  {
    v11 = @"<Distant Past>";
  }

  else if (v2 >= *&bls_loggingString_distantFutureCache)
  {
    v11 = @"<Distant Future>";
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    [a1 timeIntervalSinceDate:v3];
    v5 = v4;
    v6 = MEMORY[0x277CCACA8];
    v7 = [bls_loggingString_dateFormatter stringFromDate:a1];
    v8 = -v5;
    if (v5 < 0.0)
    {
      v9 = @"%@ (%@ ago)";
    }

    else
    {
      v8 = v5;
      v9 = @"%@ (in %@)";
    }

    v10 = [bls_loggingString_dateComponentsFormatter stringFromTimeInterval:v8];
    v11 = [v6 stringWithFormat:v9, v7, v10];
  }

  return v11;
}

- (__CFString)bls_shortLoggingString
{
  if (bls_shortLoggingString_onceToken != -1)
  {
    [NSDate(BacklightServices) bls_shortLoggingString];
  }

  [a1 timeIntervalSinceReferenceDate];
  if (v2 <= *&bls_shortLoggingString_distantPastCache)
  {
    v3 = @"<Distant Past>";
  }

  else if (v2 >= *&bls_shortLoggingString_distantFutureCache)
  {
    v3 = @"<Distant Future>";
  }

  else
  {
    v3 = [bls_shortLoggingString_dateFormatter stringFromDate:a1];
  }

  return v3;
}

- (uint64_t)bls_machContinuousTime
{
  v2 = mach_continuous_time();
  [a1 timeIntervalSinceNow];
  v4 = v3;
  if (BLSMachTimeFromNSTimeInterval_onceToken != -1)
  {
    [NSDate(BacklightServices) bls_machContinuousTime];
  }

  v5 = fabs(v4) / *&BLSMachTimeFromNSTimeInterval___TimeScale;
  v6 = v2 - v5;
  if (v2 < v5)
  {
    v6 = 0;
  }

  if (v4 >= 0.0)
  {
    return v2 + v5;
  }

  else
  {
    return v6;
  }
}

- (id)bls_initWithMachContinuousTime:()BacklightServices
{
  mach_continuous_time();
  BSTimeDifferenceFromMachTimeToMachTime();
  v3 = [a1 initWithTimeIntervalSinceNow:v2];

  return v3;
}

- (id)bls_initWithBSContinuousMachTime:()BacklightServices
{
  v3 = a1;
  BSContinuousMachTimeNow();
  v5 = [v3 initWithTimeIntervalSinceNow:v4 - a2];

  return v5;
}

- (uint64_t)bls_fileNameString
{
  if (bls_fileNameString_onceToken != -1)
  {
    [NSDate(BacklightServices) bls_fileNameString];
  }

  v2 = bls_fileNameString_dateFormatter;

  return [v2 stringFromDate:a1];
}

- (uint64_t)bls_compare:()BacklightServices withEpsilon:
{
  v6 = a4;
  [a1 timeIntervalSinceDate:v6];
  if (fabs(v7) >= a2)
  {
    v8 = [a1 compare:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)bls_isOnOrAfter:()BacklightServices andOnOrBefore:
{
  v6 = a4;
  v7 = [a3 compare:a1] != 1 && objc_msgSend(v6, "compare:", a1) != -1;

  return v7;
}

- (BOOL)bls_isOnOrAfter:()BacklightServices andOnOrBefore:withEpsilon:
{
  v8 = a5;
  v9 = [a4 bls_compare:a1 withEpsilon:a2] != 1 && objc_msgSend(v8, "bls_compare:withEpsilon:", a1, a2) != -1;

  return v9;
}

@end