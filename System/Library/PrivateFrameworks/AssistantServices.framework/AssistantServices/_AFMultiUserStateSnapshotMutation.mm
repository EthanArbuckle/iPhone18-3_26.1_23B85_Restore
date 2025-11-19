@interface _AFMultiUserStateSnapshotMutation
- (_AFMultiUserStateSnapshotMutation)initWithBase:(id)a3;
- (id)getConfidenceScores;
- (id)getVtSatScore;
@end

@implementation _AFMultiUserStateSnapshotMutation

- (id)getConfidenceScores
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_confidenceScores;
  }

  else
  {
    v2 = [(AFMultiUserStateSnapshot *)self->_base confidenceScores];
  }

  return v2;
}

- (id)getVtSatScore
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_vtSatScore;
  }

  else
  {
    v2 = [(AFMultiUserStateSnapshot *)self->_base vtSatScore];
  }

  return v2;
}

- (_AFMultiUserStateSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFMultiUserStateSnapshotMutation;
  v6 = [(_AFMultiUserStateSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end