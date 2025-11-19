@interface VCReportingHistogram
+ (const)bucketWithType:(int)a3 count:(unsigned int *)a4;
@end

@implementation VCReportingHistogram

+ (const)bucketWithType:(int)a3 count:(unsigned int *)a4
{
  if (a3 > 0x65)
  {
    result = 0;
    v5 = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = *(&off_278BD48D8 + a3);
  v5 = dword_23D59A584[a3];
  if (a4)
  {
LABEL_5:
    *a4 = v5;
  }

  return result;
}

@end