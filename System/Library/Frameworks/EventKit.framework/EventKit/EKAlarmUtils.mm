@interface EKAlarmUtils
+ (id)adjustedRelativeAlarmOffset:(double)offset isAllDay:(BOOL)day;
+ (id)adjustedRelativeAlarmOffsetFromAllDayToTimed:(double)timed;
+ (id)adjustedRelativeAlarmOffsetFromTimedToAllDay:(double)day;
@end

@implementation EKAlarmUtils

+ (id)adjustedRelativeAlarmOffset:(double)offset isAllDay:(BOOL)day
{
  if (day)
  {
    [self adjustedRelativeAlarmOffsetFromTimedToAllDay:offset];
  }

  else
  {
    [self adjustedRelativeAlarmOffsetFromAllDayToTimed:offset];
  }
  v4 = ;

  return v4;
}

+ (id)adjustedRelativeAlarmOffsetFromTimedToAllDay:(double)day
{
  if (day >= -43200.0 && day < 43200.0)
  {
    return &unk_1F1B6AB58;
  }

  if (day >= -129600.0 && day < -43200.0)
  {
    return &unk_1F1B6AB70;
  }

  if (day >= -216000.0 && day < -129600.0)
  {
    return &unk_1F1B6AB88;
  }

  if (day >= -561600.0 || day < -648000.0)
  {
    return 0;
  }

  else
  {
    return &unk_1F1B6ABA0;
  }
}

+ (id)adjustedRelativeAlarmOffsetFromAllDayToTimed:(double)timed
{
  if (fabs(timed + -32400.0) < 0.0000001)
  {
    return &unk_1F1B6ABB8;
  }

  if (fabs(timed + 54000.0) < 0.0000001)
  {
    return &unk_1F1B6ABD0;
  }

  if (fabs(timed + 140400.0) < 0.0000001)
  {
    return &unk_1F1B6ABE8;
  }

  if (fabs(timed + 572400.0) >= 0.0000001)
  {
    return 0;
  }

  return &unk_1F1B6AC00;
}

@end