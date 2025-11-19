@interface TUIGradient
+ (unint64_t)directionFromString:(id)a3;
@end

@implementation TUIGradient

+ (unint64_t)directionFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6320 != -1)
  {
    sub_19A05C();
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
  v5 = [qword_2E6318 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

@end