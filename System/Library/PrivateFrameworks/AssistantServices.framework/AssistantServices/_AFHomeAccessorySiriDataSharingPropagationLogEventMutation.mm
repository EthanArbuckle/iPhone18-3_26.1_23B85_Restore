@interface _AFHomeAccessorySiriDataSharingPropagationLogEventMutation
- (_AFHomeAccessorySiriDataSharingPropagationLogEventMutation)initWithBase:(id)base;
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
    associatedChangeLogEventIdentifier = self->_associatedChangeLogEventIdentifier;
  }

  else
  {
    associatedChangeLogEventIdentifier = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self->_base associatedChangeLogEventIdentifier];
  }

  return associatedChangeLogEventIdentifier;
}

- (id)getPropagationEventReason
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    propagationEventReason = self->_propagationEventReason;
  }

  else
  {
    propagationEventReason = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self->_base propagationEventReason];
  }

  return propagationEventReason;
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
    accessoryIdentifier = self->_accessoryIdentifier;
  }

  else
  {
    accessoryIdentifier = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self->_base accessoryIdentifier];
  }

  return accessoryIdentifier;
}

- (id)getDate
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    date = self->_date;
  }

  else
  {
    date = [(AFHomeAccessorySiriDataSharingPropagationLogEvent *)self->_base date];
  }

  return date;
}

- (_AFHomeAccessorySiriDataSharingPropagationLogEventMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFHomeAccessorySiriDataSharingPropagationLogEventMutation;
  v6 = [(_AFHomeAccessorySiriDataSharingPropagationLogEventMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end