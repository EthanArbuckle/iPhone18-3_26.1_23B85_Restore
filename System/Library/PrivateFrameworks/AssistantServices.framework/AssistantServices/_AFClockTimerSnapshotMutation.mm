@interface _AFClockTimerSnapshotMutation
- (_AFClockTimerSnapshotMutation)initWithBase:(id)a3;
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
    v2 = self->_date;
  }

  else
  {
    v2 = [(AFClockTimerSnapshot *)self->_base date];
  }

  return v2;
}

- (id)getTimersByID
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_timersByID;
  }

  else
  {
    v2 = [(AFClockTimerSnapshot *)self->_base timersByID];
  }

  return v2;
}

- (id)getNotifiedFiringTimerIDs
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_notifiedFiringTimerIDs;
  }

  else
  {
    v2 = [(AFClockTimerSnapshot *)self->_base notifiedFiringTimerIDs];
  }

  return v2;
}

- (_AFClockTimerSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFClockTimerSnapshotMutation;
  v6 = [(_AFClockTimerSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end