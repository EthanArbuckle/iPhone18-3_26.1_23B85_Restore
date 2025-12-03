@interface _AFSharedConfidenceScoreMutation
- (_AFSharedConfidenceScoreMutation)initWithBase:(id)base;
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
    sharedUserId = self->_sharedUserId;
  }

  else
  {
    sharedUserId = [(AFSharedConfidenceScore *)self->_base sharedUserId];
  }

  return sharedUserId;
}

- (_AFSharedConfidenceScoreMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFSharedConfidenceScoreMutation;
  v6 = [(_AFSharedConfidenceScoreMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end