@interface PKStrokeProviderSliceIdentifierConcrete
- (BOOL)isEqual:(id)equal;
- (PKStrokeProviderSliceIdentifierConcrete)initWithCoder:(id)coder;
- (PKStrokeProviderSliceIdentifierConcrete)initWithUUID:(id)d version:(_PKStrokeID *)version tStart:(double)start tEnd:(double)end;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKStrokeProviderSliceIdentifierConcrete

- (PKStrokeProviderSliceIdentifierConcrete)initWithUUID:(id)d version:(_PKStrokeID *)version tStart:(double)start tEnd:(double)end
{
  v9.receiver = self;
  v9.super_class = PKStrokeProviderSliceIdentifierConcrete;
  result = [(PKStrokeProviderSliceIdentifier *)&v9 initWithUUID:d tStart:start tEnd:end];
  v8 = *&version->replicaUUID[12];
  *&result->_version.clock = *&version->clock;
  *&result->_version.replicaUUID[12] = v8;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v16 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v6 = equalCopy;
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
  strokeUUID = [(PKStrokeProviderSliceIdentifier *)self strokeUUID];
  pK_shortDescription = [strokeUUID PK_shortDescription];
  pK_shortDescription2 = [v3 PK_shortDescription];
  clock = self->_version.clock;
  subclock = self->_version.subclock;
  [(PKStrokeProviderSliceIdentifier *)self tStart];
  v13 = v12;
  [(PKStrokeProviderSliceIdentifier *)self tEnd];
  v15 = [v4 stringWithFormat:@"<%@: %p id=%@ v=%@:%d.%d t=%0.2f->%0.2f>", v6, self, pK_shortDescription, pK_shortDescription2, clock, subclock, v13, v14];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKStrokeProviderSliceIdentifierConcrete;
  [(PKStrokeProviderSliceIdentifier *)&v9 encodeWithCoder:coderCopy];
  p_version = &self->_version;
  clock = self->_version.clock;
  subclock = self->_version.subclock;
  [coderCopy encodeInteger:clock forKey:@"versionClock"];
  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:p_version->replicaUUID];
  [coderCopy encodeObject:v8 forKey:@"versionReplica"];
  [coderCopy encodeInteger:subclock forKey:@"versionSubclock"];
}

- (PKStrokeProviderSliceIdentifierConcrete)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKStrokeProviderSliceIdentifierConcrete;
  v5 = [(PKStrokeProviderSliceIdentifier *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"versionClock"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"versionReplica"];
    v8 = [coderCopy decodeIntegerForKey:@"versionSubclock"];
    v5->_version.clock = v6;
    [v7 getUUIDBytes:v5->_version.replicaUUID];
    v5->_version.subclock = v8;
  }

  return v5;
}

@end