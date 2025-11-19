@interface MTLPipelineBufferDescriptorInternal
- (BOOL)isEqual:(id)a3;
- (MTLPipelineBufferDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
- (void)setMutability:(unint64_t)a3;
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(a3) && self->_private.var0.var1.var0 == *(a3 + 1);
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    *(result + 1) = self->_private.var0.var1.var0;
  }

  return result;
}

- (id)formattedDescription:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTLPipelineBufferDescriptorInternal;
  v6 = [(MTLPipelineBufferDescriptorInternal *)&v8 description];
  return [v5 stringWithFormat:@"%@%@", v6, pipelineBufferFormattedDescription(a3 + 4, self)];
}

- (void)setMutability:(unint64_t)a3
{
  v7 = a3;
  if (a3 >= 3)
  {
    MTLReportFailure(0, "validateMTLMutability", 27, @"%lu is not a valid MTLMutability.", v3, v4, v5, v6, a3);
  }

  *&self->_private.var0.var0 = *&self->_private.var0.var0 & 0xFC | v7 & 3;
}

@end