@interface _AFHomeAnnouncementSnapshotMutation
- (_AFHomeAnnouncementSnapshotMutation)initWithBase:(id)base;
- (id)getLastPlayedAnnouncement;
- (unint64_t)getState;
@end

@implementation _AFHomeAnnouncementSnapshotMutation

- (unint64_t)getState
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_state;
  }

  else
  {
    return [(AFHomeAnnouncementSnapshot *)self->_base state];
  }
}

- (id)getLastPlayedAnnouncement
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    lastPlayedAnnouncement = self->_lastPlayedAnnouncement;
  }

  else
  {
    lastPlayedAnnouncement = [(AFHomeAnnouncementSnapshot *)self->_base lastPlayedAnnouncement];
  }

  return lastPlayedAnnouncement;
}

- (_AFHomeAnnouncementSnapshotMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFHomeAnnouncementSnapshotMutation;
  v6 = [(_AFHomeAnnouncementSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end