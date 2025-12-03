@interface _ADDeviceSyncMessageMutation
- (_ADDeviceSyncMessageMutation)initWithBase:(id)base;
- (id)getCommandPullDeltaRequest;
- (id)getCommandPullDeltaResponse;
- (id)getCommandPullGenerationsRequest;
- (id)getCommandPullGenerationsResponse;
- (id)getCommandPullSnapshotRequest;
- (id)getCommandPullSnapshotResponse;
- (id)getCommandPushGenerationsRequest;
- (id)getCommandPushGenerationsResponse;
- (int64_t)getType;
- (unint64_t)getSequence;
@end

@implementation _ADDeviceSyncMessageMutation

- (id)getCommandPullSnapshotResponse
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    commandPullSnapshotResponse = self->_commandPullSnapshotResponse;
  }

  else
  {
    commandPullSnapshotResponse = [(ADDeviceSyncMessage *)self->_base commandPullSnapshotResponse];
  }

  return commandPullSnapshotResponse;
}

- (id)getCommandPullSnapshotRequest
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    commandPullSnapshotRequest = self->_commandPullSnapshotRequest;
  }

  else
  {
    commandPullSnapshotRequest = [(ADDeviceSyncMessage *)self->_base commandPullSnapshotRequest];
  }

  return commandPullSnapshotRequest;
}

- (id)getCommandPullDeltaResponse
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    commandPullDeltaResponse = self->_commandPullDeltaResponse;
  }

  else
  {
    commandPullDeltaResponse = [(ADDeviceSyncMessage *)self->_base commandPullDeltaResponse];
  }

  return commandPullDeltaResponse;
}

- (id)getCommandPullDeltaRequest
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    commandPullDeltaRequest = self->_commandPullDeltaRequest;
  }

  else
  {
    commandPullDeltaRequest = [(ADDeviceSyncMessage *)self->_base commandPullDeltaRequest];
  }

  return commandPullDeltaRequest;
}

- (id)getCommandPullGenerationsResponse
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    commandPullGenerationsResponse = self->_commandPullGenerationsResponse;
  }

  else
  {
    commandPullGenerationsResponse = [(ADDeviceSyncMessage *)self->_base commandPullGenerationsResponse];
  }

  return commandPullGenerationsResponse;
}

- (id)getCommandPullGenerationsRequest
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    commandPullGenerationsRequest = self->_commandPullGenerationsRequest;
  }

  else
  {
    commandPullGenerationsRequest = [(ADDeviceSyncMessage *)self->_base commandPullGenerationsRequest];
  }

  return commandPullGenerationsRequest;
}

- (id)getCommandPushGenerationsResponse
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    commandPushGenerationsResponse = self->_commandPushGenerationsResponse;
  }

  else
  {
    commandPushGenerationsResponse = [(ADDeviceSyncMessage *)self->_base commandPushGenerationsResponse];
  }

  return commandPushGenerationsResponse;
}

- (id)getCommandPushGenerationsRequest
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    commandPushGenerationsRequest = self->_commandPushGenerationsRequest;
  }

  else
  {
    commandPushGenerationsRequest = [(ADDeviceSyncMessage *)self->_base commandPushGenerationsRequest];
  }

  return commandPushGenerationsRequest;
}

- (int64_t)getType
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return [(ADDeviceSyncMessage *)self->_base type];
  }
}

- (unint64_t)getSequence
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_sequence;
  }

  else
  {
    return [(ADDeviceSyncMessage *)self->_base sequence];
  }
}

- (_ADDeviceSyncMessageMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncMessageMutation;
  v6 = [(_ADDeviceSyncMessageMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end