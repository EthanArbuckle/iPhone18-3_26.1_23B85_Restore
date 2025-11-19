@interface _AFCallStateSnapshotMutation
- (BOOL)getIsDropInCall;
- (BOOL)getOnSpeaker;
- (_AFCallStateSnapshotMutation)initWithBase:(id)a3;
- (unint64_t)getCallState;
@end

@implementation _AFCallStateSnapshotMutation

- (unint64_t)getCallState
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_callState;
  }

  else
  {
    return [(AFCallStateSnapshot *)self->_base callState];
  }
}

- (BOOL)getOnSpeaker
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_onSpeaker;
  }

  else
  {
    return [(AFCallStateSnapshot *)self->_base onSpeaker];
  }
}

- (BOOL)getIsDropInCall
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_isDropInCall;
  }

  else
  {
    return [(AFCallStateSnapshot *)self->_base isDropInCall];
  }
}

- (_AFCallStateSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFCallStateSnapshotMutation;
  v6 = [(_AFCallStateSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end