@interface NSValue(NSValueCMTimeExtensions)
+ (CMTimeAsValue)valueWithCMTime:()NSValueCMTimeExtensions;
+ (CMTimeMappingAsValue)valueWithCMTimeMapping:()NSValueCMTimeExtensions;
+ (CMTimeRangeAsValue)valueWithCMTimeRange:()NSValueCMTimeExtensions;
- (CMTime)CMTimeValue;
- (uint64_t)CMTimeMappingValue;
- (uint64_t)CMTimeRangeValue;
@end

@implementation NSValue(NSValueCMTimeExtensions)

- (CMTime)CMTimeValue
{
  v4 = [a1 objCType];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  result = strcmp("{?=qiIq}", v4);
  if (result)
  {
    v6 = *v4;
    if (v6 == 100)
    {
      if (!v4[1])
      {
        v10 = 0.0;
        [a1 getValue:&v10];
        v7 = v10;
        return CMTimeMakeWithSeconds(a2, v7, 1000000);
      }

LABEL_10:
      v8 = MEMORY[0x1E6960C70];
      *a2 = *MEMORY[0x1E6960C70];
      *(a2 + 16) = *(v8 + 16);
      return result;
    }

    if (v6 == 102)
    {
      if (v4[1])
      {
        goto LABEL_10;
      }
    }

    else if (102 != v6)
    {
      goto LABEL_10;
    }

    v9 = 0.0;
    [a1 getValue:&v9];
    v7 = v9;
    return CMTimeMakeWithSeconds(a2, v7, 1000000);
  }

  return [a1 getValue:a2];
}

+ (CMTimeAsValue)valueWithCMTime:()NSValueCMTimeExtensions
{
  v4 = *a3;
  v5 = *(a3 + 2);
  return [CMTimeAsValue valueWithCMTime:&v4];
}

+ (CMTimeRangeAsValue)valueWithCMTimeRange:()NSValueCMTimeExtensions
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v5[2] = a3[2];
  return [CMTimeRangeAsValue valueWithCMTimeRange:v5];
}

- (uint64_t)CMTimeRangeValue
{
  v4 = [a1 objCType];
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  result = strcmp("{?={?=qiIq}{?=qiIq}}", v4);
  if (result)
  {
    v6 = MEMORY[0x1E6960C98];
    v7 = *(MEMORY[0x1E6960C98] + 16);
    *a2 = *MEMORY[0x1E6960C98];
    a2[1] = v7;
    a2[2] = *(v6 + 32);
  }

  else
  {

    return [a1 getValue:a2];
  }

  return result;
}

+ (CMTimeMappingAsValue)valueWithCMTimeMapping:()NSValueCMTimeExtensions
{
  v3 = a3[3];
  v7[2] = a3[2];
  v7[3] = v3;
  v4 = a3[5];
  v7[4] = a3[4];
  v7[5] = v4;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  return [CMTimeMappingAsValue valueWithCMTimeMapping:v7];
}

- (uint64_t)CMTimeMappingValue
{
  v4 = [a1 objCType];
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  result = strcmp("{?={?={?=qiIq}{?=qiIq}}{?={?=qiIq}{?=qiIq}}}", v4);
  if (result)
  {
    v6 = MEMORY[0x1E6960C98];
    v7 = *MEMORY[0x1E6960C98];
    v8 = *(MEMORY[0x1E6960C98] + 16);
    *a2 = *MEMORY[0x1E6960C98];
    a2[1] = v8;
    v9 = *(v6 + 32);
    a2[2] = v9;
    a2[3] = v7;
    a2[4] = v8;
    a2[5] = v9;
  }

  else
  {

    return [a1 getValue:a2];
  }

  return result;
}

@end