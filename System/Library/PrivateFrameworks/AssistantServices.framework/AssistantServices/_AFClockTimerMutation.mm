@interface _AFClockTimerMutation
- (BOOL)getIsFiring;
- (_AFClockTimerMutation)initWithBase:(id)base;
- (double)getDuration;
- (double)getFireTimeInterval;
- (id)getDismissedDate;
- (id)getFireDate;
- (id)getFiredDate;
- (id)getLastModifiedDate;
- (id)getTimerID;
- (id)getTimerURL;
- (id)getTitle;
- (int64_t)getState;
- (int64_t)getType;
@end

@implementation _AFClockTimerMutation

- (id)getTimerID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    timerID = self->_timerID;
  }

  else
  {
    timerID = [(AFClockTimer *)self->_base timerID];
  }

  return timerID;
}

- (id)getTimerURL
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    timerURL = self->_timerURL;
  }

  else
  {
    timerURL = [(AFClockTimer *)self->_base timerURL];
  }

  return timerURL;
}

- (BOOL)getIsFiring
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_isFiring;
  }

  else
  {
    return [(AFClockTimer *)self->_base isFiring];
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
    title = [(AFClockTimer *)self->_base title];
  }

  return title;
}

- (int64_t)getState
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_state;
  }

  else
  {
    return [(AFClockTimer *)self->_base state];
  }
}

- (double)getDuration
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    return self->_duration;
  }

  [(AFClockTimer *)self->_base duration];
  return result;
}

- (int64_t)getType
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    return self->_type;
  }

  else
  {
    return [(AFClockTimer *)self->_base type];
  }
}

- (double)getFireTimeInterval
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_fireTimeInterval;
  }

  [(AFClockTimer *)self->_base fireTimeInterval];
  return result;
}

- (id)getFireDate
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    fireDate = self->_fireDate;
  }

  else
  {
    fireDate = [(AFClockTimer *)self->_base fireDate];
  }

  return fireDate;
}

- (id)getFiredDate
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    firedDate = self->_firedDate;
  }

  else
  {
    firedDate = [(AFClockTimer *)self->_base firedDate];
  }

  return firedDate;
}

- (id)getDismissedDate
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    dismissedDate = self->_dismissedDate;
  }

  else
  {
    dismissedDate = [(AFClockTimer *)self->_base dismissedDate];
  }

  return dismissedDate;
}

- (id)getLastModifiedDate
{
  if ((*&self->_mutationFlags & 0x1000) != 0)
  {
    lastModifiedDate = self->_lastModifiedDate;
  }

  else
  {
    lastModifiedDate = [(AFClockTimer *)self->_base lastModifiedDate];
  }

  return lastModifiedDate;
}

- (_AFClockTimerMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFClockTimerMutation;
  v6 = [(_AFClockTimerMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end