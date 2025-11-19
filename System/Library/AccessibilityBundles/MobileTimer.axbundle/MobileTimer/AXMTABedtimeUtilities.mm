@interface AXMTABedtimeUtilities
+ (id)dayStringForRepeatSchedule:(unint64_t)a3;
@end

@implementation AXMTABedtimeUtilities

+ (id)dayStringForRepeatSchedule:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x29EDB8DB8]);
  [v4 setMonth:1];
  [v4 setYear:2016];
  v5 = 0;
  if (a3 <= 7)
  {
    switch(a3)
    {
      case 1uLL:
        v6 = 4;
        break;
      case 2uLL:
        v6 = 5;
        break;
      case 4uLL:
        v6 = 6;
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (a3 > 31)
  {
    if (a3 == 32)
    {
      v6 = 9;
    }

    else
    {
      if (a3 != 64)
      {
        goto LABEL_18;
      }

      v6 = 10;
    }
  }

  else if (a3 == 8)
  {
    v6 = 7;
  }

  else
  {
    if (a3 != 16)
    {
      goto LABEL_18;
    }

    v6 = 8;
  }

  [v4 setDay:v6];
  v7 = [MEMORY[0x29EDB8D98] currentCalendar];
  v8 = [v7 dateFromComponents:v4];

  v5 = AXDateStringForFormat();

LABEL_18:

  return v5;
}

@end