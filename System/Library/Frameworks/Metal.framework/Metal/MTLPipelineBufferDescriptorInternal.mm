@interface MTLPipelineBufferDescriptorInternal
- (BOOL)isEqual:(id)equal;
- (MTLPipelineBufferDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
- (void)setMutability:(unint64_t)mutability;
@end

@implementation MTLPipelineBufferDescriptorInternal

- (MTLPipelineBufferDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLPipelineBufferDescriptorInternal;
  result = [(MTLPipelineBufferDescriptorInternal *)&v3 init];
  if (result)
  {
    result->_private.var0.var1.var0 = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLPipelineBufferDescriptorInternal;
  [(MTLPipelineBufferDescriptorInternal *)&v2 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(equal) && self->_private.var0.var1.var0 == *(equal + 1);
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    *(result + 1) = self->_private.var0.var1.var0;
  }

  return result;
}

- (id)formattedDescription:(unint64_t)description
{
  v5 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTLPipelineBufferDescriptorInternal;
  v6 = [(MTLPipelineBufferDescriptorInternal *)&v8 description];
  return [v5 stringWithFormat:@"%@%@", v6, pipelineBufferFormattedDescription(description + 4, self)];
}

- (void)setMutability:(unint64_t)mutability
{
  mutabilityCopy = mutability;
  if (mutability >= 3)
  {
    MTLReportFailure(0, "validateMTLMutability", 27, @"%lu is not a valid MTLMutability.", v3, v4, v5, v6, mutability);
  }

  *&self->_private.var0.var0 = *&self->_private.var0.var0 & 0xFC | mutabilityCopy & 3;
}

@end