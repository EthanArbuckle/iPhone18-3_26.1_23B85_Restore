@interface _AFHomeAnnouncementMutation
- (_AFHomeAnnouncementMutation)initWithBase:(id)a3;
- (id)getFinishedDate;
- (id)getIdentifier;
- (id)getStartedDate;
- (unint64_t)getFinishedHostTime;
- (unint64_t)getStartedHostTime;
@end

@implementation _AFHomeAnnouncementMutation

- (id)getFinishedDate
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_finishedDate;
  }

  else
  {
    v2 = [(AFHomeAnnouncement *)self->_base finishedDate];
  }

  return v2;
}

- (id)getStartedDate
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_startedDate;
  }

  else
  {
    v2 = [(AFHomeAnnouncement *)self->_base startedDate];
  }

  return v2;
}

- (unint64_t)getFinishedHostTime
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_finishedHostTime;
  }

  else
  {
    return [(AFHomeAnnouncement *)self->_base finishedHostTime];
  }
}

- (unint64_t)getStartedHostTime
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_startedHostTime;
  }

  else
  {
    return [(AFHomeAnnouncement *)self->_base startedHostTime];
  }
}

- (id)getIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_identifier;
  }

  else
  {
    v2 = [(AFHomeAnnouncement *)self->_base identifier];
  }

  return v2;
}

- (_AFHomeAnnouncementMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFHomeAnnouncementMutation;
  v6 = [(_AFHomeAnnouncementMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end