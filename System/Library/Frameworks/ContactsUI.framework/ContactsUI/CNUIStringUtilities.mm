@interface CNUIStringUtilities
+ (int64_t)composedCharacterCountForString:(id)string containsEmoji:(BOOL *)emoji;
@end

@implementation CNUIStringUtilities

+ (int64_t)composedCharacterCountForString:(id)string containsEmoji:(BOOL *)emoji
{
  stringCopy = string;
  if (![stringCopy length])
  {
    v8 = 0;
    v7 = 0;
    if (!emoji)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = [stringCopy rangeOfComposedCharacterSequenceAtIndex:v6];
    v11 = v10;
    if (emoji)
    {
      v12 = [stringCopy substringWithRange:{v9, v10}];
      v7 |= CEMStringContainsEmoji() != 0;
    }

    v6 += v11;
    ++v8;
  }

  while (v6 < [stringCopy length]);
  if (emoji)
  {
LABEL_7:
    *emoji = v7 & 1;
  }

LABEL_8:

  return v8;
}

@end