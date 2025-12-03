@interface _AFClockTimerSnapshotMutation
- (_AFClockTimerSnapshotMutation)initWithBase:(id)base;
- (id)getDate;
- (id)getNotifiedFiringTimerIDs;
- (id)getTimersByID;
- (unint64_t)getGeneration;
@end

@implementation _AFClockTimerSnapshotMutation

- (unint64_t)getGeneration
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_generation;
  }

  else
  {
    return [(AFClockTimerSnapshot *)self->_base generation];
  }
}

- (id)getDate
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    date = self->_date;
  }

  else
  {
    date = [(AFClockTimerSnapshot *)self->_base date];
  }

  return date;
}

- (id)getTimersByID
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    timersByID = self->_timersByID;
  }

  else
  {
    timersByID = [(AFClockTimerSnapshot *)self->_base timersByID];
  }

  return timersByID;
}

- (id)getNotifiedFiringTimerIDs
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    notifiedFiringTimerIDs = self->_notifiedFiringTimerIDs;
  }

  else
  {
    notifiedFiringTimerIDs = [(AFClockTimerSnapshot *)self->_base notifiedFiringTimerIDs];
  }

  return notifiedFiringTimerIDs;
}

- (_AFClockTimerSnapshotMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFClockTimerSnapshotMutation;
  v6 = [(_AFClockTimerSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end