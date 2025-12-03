@interface MPSNDArrayGatherND
- (MPSNDArrayGatherND)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayGatherND)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeToCommandBuffer:(id)buffer primarySourceArray:(id)array secondarySourceArray:(id)sourceArray destinationArray:(id)destinationArray;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayGatherND

- (MPSNDArrayGatherND)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGatherND;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:device];
  result->super.super._encode = EncodeGatherND;
  result->super.super.super._encodeData = result;
  result->_batchDimensions = 0;
  result->_allowNegativeIndices = 0;
  return result;
}

- (MPSNDArrayGatherND)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayGatherND;
  result = [(MPSNDArrayBinaryKernel *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeGatherND;
    result->super.super.super._encodeData = result;
    result->_batchDimensions = 0;
    result->_allowNegativeIndices = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayGatherND;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayGatherND;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    self->super.super._encode = EncodeGatherND;
    self->super.super.super._encodeData = self;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)buffer primarySourceArray:(id)array secondarySourceArray:(id)sourceArray destinationArray:(id)destinationArray
{
  v7 = *(destinationArray + *MEMORY[0x277CD73C8]);
  if (v7 != 268435488 && v7 != 536870944)
  {
    sourceArrayCopy = sourceArray;
    arrayCopy = array;
    bufferCopy = buffer;
    v12 = MTLReportFailureTypeEnabled();
    buffer = bufferCopy;
    array = arrayCopy;
    sourceArray = sourceArrayCopy;
    if (v12)
    {
      MTLReportFailure();
      buffer = bufferCopy;
      array = arrayCopy;
      sourceArray = sourceArrayCopy;
    }
  }

  v13.receiver = self;
  v13.super_class = MPSNDArrayGatherND;
  [(MPSNDArrayBinaryKernel *)&v13 encodeToCommandBuffer:buffer primarySourceArray:array secondarySourceArray:sourceArray destinationArray:?];
}

@end