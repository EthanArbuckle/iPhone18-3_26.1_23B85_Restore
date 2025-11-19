@interface CNUIStringUtilities
+ (int64_t)composedCharacterCountForString:(id)a3 containsEmoji:(BOOL *)a4;
@end

@implementation CNUIStringUtilities

+ (int64_t)composedCharacterCountForString:(id)a3 containsEmoji:(BOOL *)a4
{
  v5 = a3;
  if (![v5 length])
  {
    v8 = 0;
    v7 = 0;
    if (!a4)
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
    v9 = [v5 rangeOfComposedCharacterSequenceAtIndex:v6];
    v11 = v10;
    if (a4)
    {
      v12 = [v5 substringWithRange:{v9, v10}];
      v7 |= CEMStringContainsEmoji() != 0;
    }

    v6 += v11;
    ++v8;
  }

  while (v6 < [v5 length]);
  if (a4)
  {
LABEL_7:
    *a4 = v7 & 1;
  }

LABEL_8:

  return v8;
}

@end