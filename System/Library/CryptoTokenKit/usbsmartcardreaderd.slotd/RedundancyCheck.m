@interface RedundancyCheck
+ (unsigned)crc16:(id)a3;
+ (unsigned)lrc:(id)a3;
@end

@implementation RedundancyCheck

+ (unsigned)crc16:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = 0;
    LOWORD(v5) = 0;
    do
    {
      v5 = word_10001C858[(*([v3 bytes] + v4++) ^ v5)] ^ ((v5 & 0xFF00) >> 8);
    }

    while (v4 < [v3 length]);
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

+ (unsigned)lrc:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v5 ^= *([v3 bytes] + v4++);
    }

    while (v4 < [v3 length]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end