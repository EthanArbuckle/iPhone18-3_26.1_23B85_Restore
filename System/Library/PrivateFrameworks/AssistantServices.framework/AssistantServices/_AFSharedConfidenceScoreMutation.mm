@interface _AFSharedConfidenceScoreMutation
- (_AFSharedConfidenceScoreMutation)initWithBase:(id)a3;
- (id)getSharedUserId;
- (unint64_t)getConfidenceScore;
@end

@implementation _AFSharedConfidenceScoreMutation

- (unint64_t)getConfidenceScore
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_confidenceScore;
  }

  else
  {
    return [(AFSharedConfidenceScore *)self->_base confidenceScore];
  }
}

- (id)getSharedUserId
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_sharedUserId;
  }

  else
  {
    v2 = [(AFSharedConfidenceScore *)self->_base sharedUserId];
  }

  return v2;
}

- (_AFSharedConfidenceScoreMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFSharedConfidenceScoreMutation;
  v6 = [(_AFSharedConfidenceScoreMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end