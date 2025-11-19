@interface NSDateInterval(BacklightServices)
- (BOOL)bls_containsDate:()BacklightServices withEpsilon:outDelta:;
- (id)bls_initWithStartMachContinuousTime:()BacklightServices endMachContinuousTime:;
- (id)bls_loggingString;
- (id)bls_shortLoggingString;
- (uint64_t)bls_machContinuousEndTime;
- (uint64_t)bls_machContinuousStartTime;
- (unint64_t)bls_machDuration;
@end

@implementation NSDateInterval(BacklightServices)

- (id)bls_loggingString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 startDate];
  v4 = [v3 bls_loggingString];
  [a1 duration];
  v6 = [v2 stringWithFormat:@"%@ -> %.3fs duration", v4, v5];

  return v6;
}

- (uint64_t)bls_machContinuousStartTime
{
  v1 = [a1 startDate];
  v2 = [v1 bls_machContinuousTime];

  return v2;
}

- (uint64_t)bls_machContinuousEndTime
{
  v1 = [a1 endDate];
  v2 = [v1 bls_machContinuousTime];

  return v2;
}

- (unint64_t)bls_machDuration
{
  [a1 duration];
  v2 = v1;
  if (BLSMachTimeFromNSTimeInterval_onceToken != -1)
  {
    [NSDate(BacklightServices) bls_machContinuousTime];
  }

  return (v2 / *&BLSMachTimeFromNSTimeInterval___TimeScale);
}

- (id)bls_initWithStartMachContinuousTime:()BacklightServices endMachContinuousTime:
{
  mach_continuous_time();
  BSTimeDifferenceFromMachTimeToMachTime();
  v3 = v2;
  BSTimeDifferenceFromMachTimeToMachTime();
  v5 = v4;
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v3];
  v7 = [a1 initWithStartDate:v6 duration:v5];

  return v7;
}

- (BOOL)bls_containsDate:()BacklightServices withEpsilon:outDelta:
{
  v8 = a4;
  v9 = v8;
  if (!v8)
  {
LABEL_5:
    v18 = 0;
    goto LABEL_9;
  }

  [v8 timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = [a1 startDate];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;

  [a1 duration];
  v16 = v14 - a2 - v11;
  if (v16 > 0.0)
  {
    if (a5)
    {
      v17 = -v16;
LABEL_8:
      v18 = 0;
      *a5 = v17;
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v17 = v11 - (v14 + v15 + a2);
  v18 = v17 <= 0.0;
  if (a5 && v17 > 0.0)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v18;
}

- (id)bls_shortLoggingString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 startDate];
  v4 = [v3 bls_shortLoggingString];
  [a1 duration];
  v6 = [v2 stringWithFormat:@"%@->%.3fs", v4, v5];

  return v6;
}

@end