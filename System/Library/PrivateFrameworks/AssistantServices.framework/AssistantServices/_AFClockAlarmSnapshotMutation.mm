@interface _AFClockAlarmSnapshotMutation
- (_AFClockAlarmSnapshotMutation)initWithBase:(id)base;
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
    date = self->_date;
  }

  else
  {
    date = [(AFClockAlarmSnapshot *)self->_base date];
  }

  return date;
}

- (id)getAlarmsByID
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    alarmsByID = self->_alarmsByID;
  }

  else
  {
    alarmsByID = [(AFClockAlarmSnapshot *)self->_base alarmsByID];
  }

  return alarmsByID;
}

- (id)getNotifiedFiringAlarmIDs
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    notifiedFiringAlarmIDs = self->_notifiedFiringAlarmIDs;
  }

  else
  {
    notifiedFiringAlarmIDs = [(AFClockAlarmSnapshot *)self->_base notifiedFiringAlarmIDs];
  }

  return notifiedFiringAlarmIDs;
}

- (_AFClockAlarmSnapshotMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFClockAlarmSnapshotMutation;
  v6 = [(_AFClockAlarmSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end