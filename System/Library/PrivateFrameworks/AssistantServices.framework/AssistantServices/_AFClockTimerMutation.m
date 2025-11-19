@interface _AFClockTimerMutation
- (BOOL)getIsFiring;
- (_AFClockTimerMutation)initWithBase:(id)a3;
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
    v2 = self->_timerID;
  }

  else
  {
    v2 = [(AFClockTimer *)self->_base timerID];
  }

  return v2;
}

- (id)getTimerURL
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_timerURL;
  }

  else
  {
    v2 = [(AFClockTimer *)self->_base timerURL];
  }

  return v2;
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
    v2 = self->_title;
  }

  else
  {
    v2 = [(AFClockTimer *)self->_base title];
  }

  return v2;
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
    v2 = self->_fireDate;
  }

  else
  {
    v2 = [(AFClockTimer *)self->_base fireDate];
  }

  return v2;
}

- (id)getFiredDate
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    v2 = self->_firedDate;
  }

  else
  {
    v2 = [(AFClockTimer *)self->_base firedDate];
  }

  return v2;
}

- (id)getDismissedDate
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    v2 = self->_dismissedDate;
  }

  else
  {
    v2 = [(AFClockTimer *)self->_base dismissedDate];
  }

  return v2;
}

- (id)getLastModifiedDate
{
  if ((*&self->_mutationFlags & 0x1000) != 0)
  {
    v2 = self->_lastModifiedDate;
  }

  else
  {
    v2 = [(AFClockTimer *)self->_base lastModifiedDate];
  }

  return v2;
}

- (_AFClockTimerMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFClockTimerMutation;
  v6 = [(_AFClockTimerMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end