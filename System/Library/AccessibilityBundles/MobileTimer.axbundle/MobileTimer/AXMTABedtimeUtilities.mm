@interface AXMTABedtimeUtilities
+ (id)dayStringForRepeatSchedule:(unint64_t)schedule;
@end

@implementation AXMTABedtimeUtilities

+ (id)dayStringForRepeatSchedule:(unint64_t)schedule
{
  v4 = objc_alloc_init(MEMORY[0x29EDB8DB8]);
  [v4 setMonth:1];
  [v4 setYear:2016];
  v5 = 0;
  if (schedule <= 7)
  {
    switch(schedule)
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

  else if (schedule > 31)
  {
    if (schedule == 32)
    {
      v6 = 9;
    }

    else
    {
      if (schedule != 64)
      {
        goto LABEL_18;
      }

      v6 = 10;
    }
  }

  else if (schedule == 8)
  {
    v6 = 7;
  }

  else
  {
    if (schedule != 16)
    {
      goto LABEL_18;
    }

    v6 = 8;
  }

  [v4 setDay:v6];
  currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
  v8 = [currentCalendar dateFromComponents:v4];

  v5 = AXDateStringForFormat();

LABEL_18:

  return v5;
}

@end