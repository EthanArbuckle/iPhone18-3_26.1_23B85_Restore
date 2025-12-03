@interface _AFClockAlarmMutation
- (BOOL)getIsEnabled;
- (BOOL)getIsFiring;
- (BOOL)getIsSnoozed;
- (_AFClockAlarmMutation)initWithBase:(id)base;
- (id)getAlarmID;
- (id)getAlarmURL;
- (id)getDismissedDate;
- (id)getFiredDate;
- (id)getLastModifiedDate;
- (id)getTitle;
- (unint64_t)getHour;
- (unint64_t)getMinute;
- (unint64_t)getRepeatOptions;
- (unint64_t)getType;
@end

@implementation _AFClockAlarmMutation

- (id)getAlarmID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    alarmID = self->_alarmID;
  }

  else
  {
    alarmID = [(AFClockAlarm *)self->_base alarmID];
  }

  return alarmID;
}

- (id)getAlarmURL
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    alarmURL = self->_alarmURL;
  }

  else
  {
    alarmURL = [(AFClockAlarm *)self->_base alarmURL];
  }

  return alarmURL;
}

- (BOOL)getIsFiring
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_isFiring;
  }

  else
  {
    return [(AFClockAlarm *)self->_base isFiring];
  }
}

- (id)getTitle
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    title = self->_title;
  }

  else
  {
    title = [(AFClockAlarm *)self->_base title];
  }

  return title;
}

- (unint64_t)getHour
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    return self->_hour;
  }

  else
  {
    return [(AFClockAlarm *)self->_base hour];
  }
}

- (unint64_t)getType
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_type;
  }

  else
  {
    return [(AFClockAlarm *)self->_base type];
  }
}

- (unint64_t)getMinute
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    return self->_minute;
  }

  else
  {
    return [(AFClockAlarm *)self->_base minute];
  }
}

- (unint64_t)getRepeatOptions
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_repeatOptions;
  }

  else
  {
    return [(AFClockAlarm *)self->_base repeatOptions];
  }
}

- (BOOL)getIsEnabled
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    return self->_isEnabled;
  }

  else
  {
    return [(AFClockAlarm *)self->_base isEnabled];
  }
}

- (BOOL)getIsSnoozed
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    return self->_isSnoozed;
  }

  else
  {
    return [(AFClockAlarm *)self->_base isSnoozed];
  }
}

- (id)getFiredDate
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    firedDate = self->_firedDate;
  }

  else
  {
    firedDate = [(AFClockAlarm *)self->_base firedDate];
  }

  return firedDate;
}

- (id)getDismissedDate
{
  if ((*&self->_mutationFlags & 0x1000) != 0)
  {
    dismissedDate = self->_dismissedDate;
  }

  else
  {
    dismissedDate = [(AFClockAlarm *)self->_base dismissedDate];
  }

  return dismissedDate;
}

- (id)getLastModifiedDate
{
  if ((*&self->_mutationFlags & 0x2000) != 0)
  {
    lastModifiedDate = self->_lastModifiedDate;
  }

  else
  {
    lastModifiedDate = [(AFClockAlarm *)self->_base lastModifiedDate];
  }

  return lastModifiedDate;
}

- (_AFClockAlarmMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFClockAlarmMutation;
  v6 = [(_AFClockAlarmMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end