@interface NSAttributedString(SPI)
- (uint64_t)isEmptyOrTerminatedByParagraphSeparator;
@end

@implementation NSAttributedString(SPI)

- (uint64_t)isEmptyOrTerminatedByParagraphSeparator
{
  v2 = [self length];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  string = [self string];
  v5 = [string characterAtIndex:v3 - 1];

  v6 = v5 == 8233;
  if (v5 == 13)
  {
    v6 = 1;
  }

  v7 = v5 == 10 || v6;
  if ((v5 - 14) >= 0x201B)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

@end