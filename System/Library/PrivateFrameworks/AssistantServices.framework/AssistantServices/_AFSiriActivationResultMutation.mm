@interface _AFSiriActivationResultMutation
- (_AFSiriActivationResultMutation)initWithBase:(id)a3;
- (id)getError;
- (int64_t)getActionType;
@end

@implementation _AFSiriActivationResultMutation

- (id)getError
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_error;
  }

  else
  {
    v2 = [(AFSiriActivationResult *)self->_base error];
  }

  return v2;
}

- (int64_t)getActionType
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_actionType;
  }

  else
  {
    return [(AFSiriActivationResult *)self->_base actionType];
  }
}

- (_AFSiriActivationResultMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFSiriActivationResultMutation;
  v6 = [(_AFSiriActivationResultMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end