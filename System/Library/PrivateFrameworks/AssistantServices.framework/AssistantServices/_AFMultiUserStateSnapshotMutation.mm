@interface _AFMultiUserStateSnapshotMutation
- (_AFMultiUserStateSnapshotMutation)initWithBase:(id)base;
- (id)getConfidenceScores;
- (id)getVtSatScore;
@end

@implementation _AFMultiUserStateSnapshotMutation

- (id)getConfidenceScores
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    confidenceScores = self->_confidenceScores;
  }

  else
  {
    confidenceScores = [(AFMultiUserStateSnapshot *)self->_base confidenceScores];
  }

  return confidenceScores;
}

- (id)getVtSatScore
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    vtSatScore = self->_vtSatScore;
  }

  else
  {
    vtSatScore = [(AFMultiUserStateSnapshot *)self->_base vtSatScore];
  }

  return vtSatScore;
}

- (_AFMultiUserStateSnapshotMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFMultiUserStateSnapshotMutation;
  v6 = [(_AFMultiUserStateSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end