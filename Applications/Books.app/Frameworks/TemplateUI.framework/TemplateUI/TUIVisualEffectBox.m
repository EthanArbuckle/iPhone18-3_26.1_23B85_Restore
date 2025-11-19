@interface TUIVisualEffectBox
+ (int64_t)uiBlurEffectStyle:(unint64_t)a3;
+ (unint64_t)blurEffectStyleFromString:(id)a3;
@end

@implementation TUIVisualEffectBox

+ (unint64_t)blurEffectStyleFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E63E8 != -1)
  {
    sub_19A9F4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E63E0 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (int64_t)uiBlurEffectStyle:(unint64_t)a3
{
  if (a3 - 1 >= 0x15)
  {
    return 4;
  }

  else
  {
    return a3 - 1;
  }
}

@end