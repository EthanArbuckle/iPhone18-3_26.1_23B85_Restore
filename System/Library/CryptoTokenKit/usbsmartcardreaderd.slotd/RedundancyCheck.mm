@interface RedundancyCheck
+ (unsigned)crc16:(id)crc16;
+ (unsigned)lrc:(id)lrc;
@end

@implementation RedundancyCheck

+ (unsigned)crc16:(id)crc16
{
  crc16Copy = crc16;
  if ([crc16Copy length])
  {
    v4 = 0;
    LOWORD(v5) = 0;
    do
    {
      v5 = word_10001C858[(*([crc16Copy bytes] + v4++) ^ v5)] ^ ((v5 & 0xFF00) >> 8);
    }

    while (v4 < [crc16Copy length]);
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

+ (unsigned)lrc:(id)lrc
{
  lrcCopy = lrc;
  if ([lrcCopy length])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v5 ^= *([lrcCopy bytes] + v4++);
    }

    while (v4 < [lrcCopy length]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end