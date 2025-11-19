@interface _AFClockAlarmSnapshotMutation
- (_AFClockAlarmSnapshotMutation)initWithBase:(id)a3;
- (id)getAlarmsByID;
- (id)getDate;
- (id)getNotifiedFiringAlarmIDs;
- (unint64_t)getGeneration;
@end

@implementation _AFClockAlarmSnapshotMutation

- (unint64_t)getGeneration
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_generation;
  }

  else
  {
    return [(AFClockAlarmSnapshot *)self->_base generation];
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
    v2 = [(AFClockAlarmSnapshot *)self->_base date];
  }

  return v2;
}

- (id)getAlarmsByID
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_alarmsByID;
  }

  else
  {
    v2 = [(AFClockAlarmSnapshot *)self->_base alarmsByID];
  }

  return v2;
}

- (id)getNotifiedFiringAlarmIDs
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_notifiedFiringAlarmIDs;
  }

  else
  {
    v2 = [(AFClockAlarmSnapshot *)self->_base notifiedFiringAlarmIDs];
  }

  return v2;
}

- (_AFClockAlarmSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFClockAlarmSnapshotMutation;
  v6 = [(_AFClockAlarmSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end