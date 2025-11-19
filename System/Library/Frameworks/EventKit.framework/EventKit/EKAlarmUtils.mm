@interface EKAlarmUtils
+ (id)adjustedRelativeAlarmOffset:(double)a3 isAllDay:(BOOL)a4;
+ (id)adjustedRelativeAlarmOffsetFromAllDayToTimed:(double)a3;
+ (id)adjustedRelativeAlarmOffsetFromTimedToAllDay:(double)a3;
@end

@implementation EKAlarmUtils

+ (id)adjustedRelativeAlarmOffset:(double)a3 isAllDay:(BOOL)a4
{
  if (a4)
  {
    [a1 adjustedRelativeAlarmOffsetFromTimedToAllDay:a3];
  }

  else
  {
    [a1 adjustedRelativeAlarmOffsetFromAllDayToTimed:a3];
  }
  v4 = ;

  return v4;
}

+ (id)adjustedRelativeAlarmOffsetFromTimedToAllDay:(double)a3
{
  if (a3 >= -43200.0 && a3 < 43200.0)
  {
    return &unk_1F1B6AB58;
  }

  if (a3 >= -129600.0 && a3 < -43200.0)
  {
    return &unk_1F1B6AB70;
  }

  if (a3 >= -216000.0 && a3 < -129600.0)
  {
    return &unk_1F1B6AB88;
  }

  if (a3 >= -561600.0 || a3 < -648000.0)
  {
    return 0;
  }

  else
  {
    return &unk_1F1B6ABA0;
  }
}

+ (id)adjustedRelativeAlarmOffsetFromAllDayToTimed:(double)a3
{
  if (fabs(a3 + -32400.0) < 0.0000001)
  {
    return &unk_1F1B6ABB8;
  }

  if (fabs(a3 + 54000.0) < 0.0000001)
  {
    return &unk_1F1B6ABD0;
  }

  if (fabs(a3 + 140400.0) < 0.0000001)
  {
    return &unk_1F1B6ABE8;
  }

  if (fabs(a3 + 572400.0) >= 0.0000001)
  {
    return 0;
  }

  return &unk_1F1B6AC00;
}

@end