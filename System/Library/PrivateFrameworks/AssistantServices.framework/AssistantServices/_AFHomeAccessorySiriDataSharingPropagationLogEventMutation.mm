@interface _AFHomeAccessorySiriDataSharingPropagationLogEventMutation
- (_AFHomeAccessorySiriDataSharingPropagationLogEventMutation)initWithBase:(id)a3;
- (id)getAccessoryIdentifier;
- (id)getAssociatedChangeLogEventIdentifier;
- (id)getDate;
- (id)getPropagationEventReason;
- (int64_t)getPropagationEvent;
@end

@implementation _AFHomeAccessorySiriDataSharingPropagationLogEventMutation

- (id)getAssociatedChangeLogEventIdentifier
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_associatedChangeLogEventIdentifier;
  }

  else
  {
    v2 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self->_base associatedChangeLogEventIdentifier];
  }

  return v2;
}

- (id)getPropagationEventReason
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_propagationEventReason;
  }

  else
  {
    v2 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self->_base propagationEventReason];
  }

  return v2;
}

- (int64_t)getPropagationEvent
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_propagationEvent;
  }

  else
  {
    return [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self->_base propagationEvent];
  }
}

- (id)getAccessoryIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_accessoryIdentifier;
  }

  else
  {
    v2 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self->_base accessoryIdentifier];
  }

  return v2;
}

- (id)getDate
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_date;
  }

  else
  {
    v2 = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self->_base date];
  }

  return v2;
}

- (_AFHomeAccessorySiriDataSharingPropagationLogEventMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFHomeAccessorySiriDataSharingPropagationLogEventMutation;
  v6 = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end