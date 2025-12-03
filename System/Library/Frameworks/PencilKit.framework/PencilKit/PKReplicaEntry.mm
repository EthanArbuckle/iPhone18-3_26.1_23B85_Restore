@interface PKReplicaEntry
- (PKReplicaEntry)initWithCoder:(id)coder;
- (PKReplicaEntry)initWithReplicaUUIDIndex:(unsigned int)index clock:(unsigned int)clock subclock:(unsigned int)subclock inUse:(BOOL)use forDrawing:(id)drawing;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKReplicaEntry

- (PKReplicaEntry)initWithReplicaUUIDIndex:(unsigned int)index clock:(unsigned int)clock subclock:(unsigned int)subclock inUse:(BOOL)use forDrawing:(id)drawing
{
  v13.receiver = self;
  v13.super_class = PKReplicaEntry;
  result = [(PKReplicaEntry *)&v13 init];
  if (result)
  {
    result->_replicaUUIDIndex = index;
    result->_clock = clock;
    result->_subclock = subclock;
    result->_inUse = use;
    result->_drawing = drawing;
  }

  return result;
}

- (PKReplicaEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKReplicaEntry;
  v5 = [(PKReplicaEntry *)&v7 init];
  if (v5)
  {
    v5->_replicaUUIDIndex = [coderCopy decodeInt64ForKey:@"ReplicaIndex"];
    v5->_clock = [coderCopy decodeInt64ForKey:@"ReplicaClock"];
    v5->_subclock = [coderCopy decodeInt64ForKey:@"ReplicaSubclock"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_replicaUUIDIndex forKey:@"ReplicaIndex"];
  [coderCopy encodeInt64:self->_clock forKey:@"ReplicaClock"];
  [coderCopy encodeInt64:self->_subclock forKey:@"ReplicaSubclock"];
}

- (id)description
{
  v2 = @"Available";
  if (self->_inUse)
  {
    v2 = @"In Use";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Replica %d: %d.%d (%@)", self->_replicaUUIDIndex, self->_clock, self->_subclock, v2];
}

@end