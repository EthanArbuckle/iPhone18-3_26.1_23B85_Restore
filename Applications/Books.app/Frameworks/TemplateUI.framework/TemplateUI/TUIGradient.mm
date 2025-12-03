@interface TUIGradient
+ (unint64_t)directionFromString:(id)string;
@end

@implementation TUIGradient

+ (unint64_t)directionFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (qword_2E6320 != -1)
  {
    sub_19A05C();
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
  v5 = [qword_2E6318 objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

LABEL_6:
  return unsignedIntegerValue;
}

@end