@interface CMIOExtensionScheduledOutput
+ (CMIOExtensionScheduledOutput)scheduledOutputWithSequenceNumber:(uint64_t)sequenceNumber hostTimeInNanoseconds:(uint64_t)hostTimeInNanoseconds;
- (BOOL)isEqual:(id)a3;
- (CMIOExtensionScheduledOutput)initWithCoder:(id)a3;
- (CMIOExtensionScheduledOutput)initWithSequenceNumber:(uint64_t)sequenceNumber hostTimeInNanoseconds:(uint64_t)hostTimeInNanoseconds;
- (CMIOExtensionScheduledOutput)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCDictionary;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMIOExtensionScheduledOutput

+ (CMIOExtensionScheduledOutput)scheduledOutputWithSequenceNumber:(uint64_t)sequenceNumber hostTimeInNanoseconds:(uint64_t)hostTimeInNanoseconds
{
  v4 = [objc_alloc(objc_opt_class()) initWithSequenceNumber:sequenceNumber hostTimeInNanoseconds:hostTimeInNanoseconds];

  return v4;
}

- (CMIOExtensionScheduledOutput)initWithSequenceNumber:(uint64_t)sequenceNumber hostTimeInNanoseconds:(uint64_t)hostTimeInNanoseconds
{
  v9.receiver = self;
  v9.super_class = CMIOExtensionScheduledOutput;
  v6 = [(CMIOExtensionScheduledOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_sequenceNumber = sequenceNumber;
    v6->_hostTimeInNanoseconds = hostTimeInNanoseconds;
    v6->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionScheduledOutput: seqNum %lld, hostTime %.3f]>", sequenceNumber, (hostTimeInNanoseconds / 1000000000.0)];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionScheduledOutput;
  [(CMIOExtensionScheduledOutput *)&v3 dealloc];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  sequenceNumber = self->_sequenceNumber;
  if (sequenceNumber != [a3 sequenceNumber])
  {
    return 0;
  }

  hostTimeInNanoseconds = self->_hostTimeInNanoseconds;
  return hostTimeInNanoseconds == [a3 hostTimeInNanoseconds];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CMIOExtensionScheduledOutput allocWithZone:a3];
  sequenceNumber = self->_sequenceNumber;
  hostTimeInNanoseconds = self->_hostTimeInNanoseconds;

  return [(CMIOExtensionScheduledOutput *)v4 initWithSequenceNumber:sequenceNumber hostTimeInNanoseconds:hostTimeInNanoseconds];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:self->_sequenceNumber forKey:@"sequenceNumber"];
  hostTimeInNanoseconds = self->_hostTimeInNanoseconds;

  [a3 encodeInt64:hostTimeInNanoseconds forKey:@"hostTimeInNanoseconds"];
}

- (CMIOExtensionScheduledOutput)initWithCoder:(id)a3
{
  v5 = [a3 decodeInt64ForKey:@"sequenceNumber"];
  v6 = [a3 decodeInt64ForKey:@"hostTimeInNanoseconds"];

  return [(CMIOExtensionScheduledOutput *)self initWithSequenceNumber:v5 hostTimeInNanoseconds:v6];
}

- (id)copyXPCDictionary
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "sequenceNumber", self->_sequenceNumber);
  xpc_dictionary_set_uint64(v3, "hostTimeInNanoseconds", self->_hostTimeInNanoseconds);
  return v3;
}

- (CMIOExtensionScheduledOutput)initWithXPCDictionary:(id)a3
{
  if (a3)
  {
    uint64 = xpc_dictionary_get_uint64(a3, "sequenceNumber");
    v6 = xpc_dictionary_get_uint64(a3, "hostTimeInNanoseconds");

    return [(CMIOExtensionScheduledOutput *)self initWithSequenceNumber:uint64 hostTimeInNanoseconds:v6];
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc dictionary"];
    return 0;
  }
}

@end