@interface TUIVisualEffectBox
+ (int64_t)uiBlurEffectStyle:(unint64_t)style;
+ (unint64_t)blurEffectStyleFromString:(id)string;
@end

@implementation TUIVisualEffectBox

+ (unint64_t)blurEffectStyleFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (qword_2E63E8 != -1)
  {
    sub_19A9F4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    unsignedIntegerValue = 0;
    goto LABEL_6;
  }

  if (!stringCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E63E0 objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

LABEL_6:
  return unsignedIntegerValue;
}

+ (int64_t)uiBlurEffectStyle:(unint64_t)style
{
  if (style - 1 >= 0x15)
  {
    return 4;
  }

  else
  {
    return style - 1;
  }
}

@end