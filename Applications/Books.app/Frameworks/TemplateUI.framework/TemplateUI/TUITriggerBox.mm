@interface TUITriggerBox
+ (unint64_t)observationModeFromString:(id)string;
@end

@implementation TUITriggerBox

+ (unint64_t)observationModeFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (qword_2E6360 != -1)
  {
    sub_19A968();
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
  v5 = [qword_2E6358 objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

LABEL_6:
  return unsignedIntegerValue;
}

@end