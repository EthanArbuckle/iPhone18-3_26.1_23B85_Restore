@interface _AFHomeAnnouncementSnapshotMutation
- (_AFHomeAnnouncementSnapshotMutation)initWithBase:(id)a3;
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
    v2 = self->_lastPlayedAnnouncement;
  }

  else
  {
    v2 = [(AFHomeAnnouncementSnapshot *)self->_base lastPlayedAnnouncement];
  }

  return v2;
}

- (_AFHomeAnnouncementSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFHomeAnnouncementSnapshotMutation;
  v6 = [(_AFHomeAnnouncementSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end