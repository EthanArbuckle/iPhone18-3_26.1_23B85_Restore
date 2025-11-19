@interface PKStrokeProviderSliceIdentifierConcrete
- (BOOL)isEqual:(id)a3;
- (PKStrokeProviderSliceIdentifierConcrete)initWithCoder:(id)a3;
- (PKStrokeProviderSliceIdentifierConcrete)initWithUUID:(id)a3 version:(_PKStrokeID *)a4 tStart:(double)a5 tEnd:(double)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKStrokeProviderSliceIdentifierConcrete

- (PKStrokeProviderSliceIdentifierConcrete)initWithUUID:(id)a3 version:(_PKStrokeID *)a4 tStart:(double)a5 tEnd:(double)a6
{
  v9.receiver = self;
  v9.super_class = PKStrokeProviderSliceIdentifierConcrete;
  result = [(PKStrokeProviderSliceIdentifier *)&v9 initWithUUID:a3 tStart:a5 tEnd:a6];
  v8 = *&a4->replicaUUID[12];
  *&result->_version.clock = *&a4->clock;
  *&result->_version.replicaUUID[12] = v8;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    v8 = (objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = PKStrokeProviderSliceIdentifierConcrete, [(PKStrokeProviderSliceIdentifier *)&v10 isEqual:v6]) && (([(PKStrokeProviderSliceIdentifierConcrete *)self version], !v6) ? (v7 = 0, v11[0] = 0, v11[1] = 0, v12 = 0) : ([(PKStrokeProviderSliceIdentifierConcrete *)v6 version], v7 = v11[0]), v13 == v7 && !uuid_compare(v14, v11 + 4)) && v15 == HIDWORD(v12);
  }

  return v8;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = PKStrokeProviderSliceIdentifierConcrete;
  v3 = [(PKStrokeProviderSliceIdentifier *)&v5 hash];
  return PKHashBytes(&self->_version, 24) ^ v3;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self->_version.replicaUUID];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(PKStrokeProviderSliceIdentifier *)self strokeUUID];
  v8 = [v7 PK_shortDescription];
  v9 = [v3 PK_shortDescription];
  clock = self->_version.clock;
  subclock = self->_version.subclock;
  [(PKStrokeProviderSliceIdentifier *)self tStart];
  v13 = v12;
  [(PKStrokeProviderSliceIdentifier *)self tEnd];
  v15 = [v4 stringWithFormat:@"<%@: %p id=%@ v=%@:%d.%d t=%0.2f->%0.2f>", v6, self, v8, v9, clock, subclock, v13, v14];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKStrokeProviderSliceIdentifierConcrete;
  [(PKStrokeProviderSliceIdentifier *)&v9 encodeWithCoder:v4];
  p_version = &self->_version;
  clock = self->_version.clock;
  subclock = self->_version.subclock;
  [v4 encodeInteger:clock forKey:@"versionClock"];
  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:p_version->replicaUUID];
  [v4 encodeObject:v8 forKey:@"versionReplica"];
  [v4 encodeInteger:subclock forKey:@"versionSubclock"];
}

- (PKStrokeProviderSliceIdentifierConcrete)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKStrokeProviderSliceIdentifierConcrete;
  v5 = [(PKStrokeProviderSliceIdentifier *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"versionClock"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"versionReplica"];
    v8 = [v4 decodeIntegerForKey:@"versionSubclock"];
    v5->_version.clock = v6;
    [v7 getUUIDBytes:v5->_version.replicaUUID];
    v5->_version.subclock = v8;
  }

  return v5;
}

@end