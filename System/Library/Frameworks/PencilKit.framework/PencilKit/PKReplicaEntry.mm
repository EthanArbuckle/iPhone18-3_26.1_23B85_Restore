@interface PKReplicaEntry
- (PKReplicaEntry)initWithCoder:(id)a3;
- (PKReplicaEntry)initWithReplicaUUIDIndex:(unsigned int)a3 clock:(unsigned int)a4 subclock:(unsigned int)a5 inUse:(BOOL)a6 forDrawing:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKReplicaEntry

- (PKReplicaEntry)initWithReplicaUUIDIndex:(unsigned int)a3 clock:(unsigned int)a4 subclock:(unsigned int)a5 inUse:(BOOL)a6 forDrawing:(id)a7
{
  v13.receiver = self;
  v13.super_class = PKReplicaEntry;
  result = [(PKReplicaEntry *)&v13 init];
  if (result)
  {
    result->_replicaUUIDIndex = a3;
    result->_clock = a4;
    result->_subclock = a5;
    result->_inUse = a6;
    result->_drawing = a7;
  }

  return result;
}

- (PKReplicaEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKReplicaEntry;
  v5 = [(PKReplicaEntry *)&v7 init];
  if (v5)
  {
    v5->_replicaUUIDIndex = [v4 decodeInt64ForKey:@"ReplicaIndex"];
    v5->_clock = [v4 decodeInt64ForKey:@"ReplicaClock"];
    v5->_subclock = [v4 decodeInt64ForKey:@"ReplicaSubclock"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_replicaUUIDIndex forKey:@"ReplicaIndex"];
  [v4 encodeInt64:self->_clock forKey:@"ReplicaClock"];
  [v4 encodeInt64:self->_subclock forKey:@"ReplicaSubclock"];
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