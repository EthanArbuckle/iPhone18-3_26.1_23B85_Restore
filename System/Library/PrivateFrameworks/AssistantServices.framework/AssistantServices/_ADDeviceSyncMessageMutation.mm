@interface _ADDeviceSyncMessageMutation
- (_ADDeviceSyncMessageMutation)initWithBase:(id)a3;
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
    v2 = self->_commandPullSnapshotResponse;
  }

  else
  {
    v2 = [(ADDeviceSyncMessage *)self->_base commandPullSnapshotResponse];
  }

  return v2;
}

- (id)getCommandPullSnapshotRequest
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    v2 = self->_commandPullSnapshotRequest;
  }

  else
  {
    v2 = [(ADDeviceSyncMessage *)self->_base commandPullSnapshotRequest];
  }

  return v2;
}

- (id)getCommandPullDeltaResponse
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    v2 = self->_commandPullDeltaResponse;
  }

  else
  {
    v2 = [(ADDeviceSyncMessage *)self->_base commandPullDeltaResponse];
  }

  return v2;
}

- (id)getCommandPullDeltaRequest
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_commandPullDeltaRequest;
  }

  else
  {
    v2 = [(ADDeviceSyncMessage *)self->_base commandPullDeltaRequest];
  }

  return v2;
}

- (id)getCommandPullGenerationsResponse
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_commandPullGenerationsResponse;
  }

  else
  {
    v2 = [(ADDeviceSyncMessage *)self->_base commandPullGenerationsResponse];
  }

  return v2;
}

- (id)getCommandPullGenerationsRequest
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_commandPullGenerationsRequest;
  }

  else
  {
    v2 = [(ADDeviceSyncMessage *)self->_base commandPullGenerationsRequest];
  }

  return v2;
}

- (id)getCommandPushGenerationsResponse
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_commandPushGenerationsResponse;
  }

  else
  {
    v2 = [(ADDeviceSyncMessage *)self->_base commandPushGenerationsResponse];
  }

  return v2;
}

- (id)getCommandPushGenerationsRequest
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_commandPushGenerationsRequest;
  }

  else
  {
    v2 = [(ADDeviceSyncMessage *)self->_base commandPushGenerationsRequest];
  }

  return v2;
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

- (_ADDeviceSyncMessageMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncMessageMutation;
  v6 = [(_ADDeviceSyncMessageMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end