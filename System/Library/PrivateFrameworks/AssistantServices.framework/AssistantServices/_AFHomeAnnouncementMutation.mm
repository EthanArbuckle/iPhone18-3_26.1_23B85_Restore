@interface _AFHomeAnnouncementMutation
- (_AFHomeAnnouncementMutation)initWithBase:(id)base;
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
    finishedDate = self->_finishedDate;
  }

  else
  {
    finishedDate = [(AFHomeAnnouncement *)self->_base finishedDate];
  }

  return finishedDate;
}

- (id)getStartedDate
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    startedDate = self->_startedDate;
  }

  else
  {
    startedDate = [(AFHomeAnnouncement *)self->_base startedDate];
  }

  return startedDate;
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
    identifier = self->_identifier;
  }

  else
  {
    identifier = [(AFHomeAnnouncement *)self->_base identifier];
  }

  return identifier;
}

- (_AFHomeAnnouncementMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFHomeAnnouncementMutation;
  v6 = [(_AFHomeAnnouncementMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end