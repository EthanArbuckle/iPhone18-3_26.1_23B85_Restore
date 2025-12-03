@interface VCReportingHistogram
+ (const)bucketWithType:(int)type count:(unsigned int *)count;
@end

@implementation VCReportingHistogram

+ (const)bucketWithType:(int)type count:(unsigned int *)count
{
  if (type > 0x65)
  {
    result = 0;
    v5 = 0;
    if (!count)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = *(&off_278BD48D8 + type);
  v5 = dword_23D59A584[type];
  if (count)
  {
LABEL_5:
    *count = v5;
  }

  return result;
}

@end