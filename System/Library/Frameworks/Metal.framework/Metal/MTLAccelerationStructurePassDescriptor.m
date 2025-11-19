@interface MTLAccelerationStructurePassDescriptor
+ (MTLAccelerationStructurePassDescriptor)accelerationStructurePassDescriptor;
+ (MTLAccelerationStructurePassDescriptor)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (MTLAccelerationStructurePassDescriptor)init;
- (id)convertToComputePassDescriptorWithConcurrentDispatch:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLAccelerationStructurePassDescriptor

+ (MTLAccelerationStructurePassDescriptor)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [MTLAccelerationStructurePassDescriptorInternal allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MTLAccelerationStructurePassDescriptor;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (MTLAccelerationStructurePassDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MTLAccelerationStructurePassDescriptor;
  v2 = [(MTLAccelerationStructurePassDescriptor *)&v4 init];
  if (v2)
  {
    v2->_sampleBufferAttachments = objc_alloc_init(MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructurePassDescriptor;
  [(MTLAccelerationStructurePassDescriptor *)&v3 dealloc];
}

+ (MTLAccelerationStructurePassDescriptor)accelerationStructurePassDescriptor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  [objc_msgSend(v5 "sampleBufferAttachments")];
  [v5 setEnableSubstreams:{-[MTLAccelerationStructurePassDescriptor enableSubstreams](self, "enableSubstreams")}];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    return 0;
  }

  v6 = [(MTLAccelerationStructurePassDescriptor *)self enableSubstreams];
  if (v6 != [a3 enableSubstreams])
  {
    return 0;
  }

  v8 = [a3 sampleBufferAttachments];
  v9 = [(MTLAccelerationStructurePassDescriptor *)self sampleBufferAttachments];

  return [v8 isEqual:v9];
}

- (unint64_t)hash
{
  bzero(&v4, 0x10uLL);
  v5 = [(MTLAccelerationStructurePassDescriptor *)self enableSubstreams];
  return _MTLHashState(&v4, 0x10uLL);
}

- (id)convertToComputePassDescriptorWithConcurrentDispatch:(BOOL)a3
{
  v5 = objc_alloc_init(MTLComputePassDescriptor);
  for (i = 0; i != 4; ++i)
  {
    v7 = [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray *)[(MTLAccelerationStructurePassDescriptor *)self sampleBufferAttachments] _descriptorAtIndex:i];
    if (v7)
    {
      v8 = v7;
      v9 = [(MTLComputePassSampleBufferAttachmentDescriptorArray *)[(MTLComputePassDescriptor *)v5 sampleBufferAttachments] objectAtIndexedSubscript:i];
      -[MTLComputePassSampleBufferAttachmentDescriptor setSampleBuffer:](v9, "setSampleBuffer:", [v8 sampleBuffer]);
      -[MTLComputePassSampleBufferAttachmentDescriptor setStartOfEncoderSampleIndex:](v9, "setStartOfEncoderSampleIndex:", [v8 startOfEncoderSampleIndex]);
      -[MTLComputePassSampleBufferAttachmentDescriptor setEndOfEncoderSampleIndex:](v9, "setEndOfEncoderSampleIndex:", [v8 endOfEncoderSampleIndex]);
    }
  }

  if (a3)
  {
    [(MTLComputePassDescriptor *)v5 setDispatchType:1];
  }

  return v5;
}

@end