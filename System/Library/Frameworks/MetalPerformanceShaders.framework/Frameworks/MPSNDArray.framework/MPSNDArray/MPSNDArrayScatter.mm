@interface MPSNDArrayScatter
- (MPSNDArrayScatter)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayScatter)initWithDevice:(id)device operation:(int)operation;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer primarySourceArray:(id)array secondarySourceArray:(id)sourceArray destinationArray:(id)destinationArray;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayScatter

- (MPSNDArrayScatter)initWithDevice:(id)device operation:(int)operation
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayScatter;
  v6 = [(MPSNDArrayMultiaryKernel *)&v8 initWithDevice:device sourceCount:3];
  v6->super._encode = EncodeScatter;
  v6->super.super._encodeData = v6;
  v6->_operation = operation;
  v6->_batchDimensions = 0;
  v6->_identity = [[MPSNDArrayIdentity alloc] initWithDevice:device];
  return v6;
}

- (MPSNDArrayScatter)initWithCoder:(id)coder device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayScatter;
  result = [MPSNDArrayMultiaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (result)
  {
    result->super._encode = EncodeScatter;
    result->super.super._encodeData = result;
    v7 = result;
    result->_operation = [coder decodeInt64ForKey:@"MPSNDArrayScatter.operation"];
    v7->_batchDimensions = [coder decodeInt64ForKey:@"MPSNDArrayScatter.batchDimensions"];
    v8 = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    result = v7;
    v7->_identity = v8;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayScatter;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeInt64:self->_operation forKey:@"MPSNDArrayScatter.operation"];
  [coder encodeInt64:self->_batchDimensions forKey:@"MPSNDArrayScatter.batchDimensions"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayScatter;
  result = [MPSNDArrayMultiaryKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (result)
  {
    self->super._encode = EncodeScatter;
    self->super.super._encodeData = self;
    *(result + 36) = self->_operation;
    *(result + 19) = self->_batchDimensions;
    identity = self->_identity;
    v9 = result;
    v10 = [(MPSNDArrayIdentity *)identity copyWithZone:zone device:device];
    result = v9;
    v9[20] = v10;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayScatter;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

- (void)encodeToCommandBuffer:(id)buffer primarySourceArray:(id)array secondarySourceArray:(id)sourceArray destinationArray:(id)destinationArray
{
  v7 = MEMORY[0x277CD73F0];
  if (*(sourceArray + *MEMORY[0x277CD73F0]) >= 2uLL)
  {
    destinationArrayCopy = destinationArray;
    v13 = MTLReportFailureTypeEnabled();
    destinationArray = destinationArrayCopy;
    if (v13)
    {
      v14 = *(sourceArray + *v7);
      MTLReportFailure();
      destinationArray = destinationArrayCopy;
    }
  }

  v8 = *(destinationArray + *MEMORY[0x277CD73C8]);
  if (v8 != 268435488 && v8 != 536870944)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v15.receiver = self;
  v15.super_class = MPSNDArrayScatter;
  [MPSNDArrayScatter encodeToCommandBuffer:sel_encodeToCommandBuffer_primarySourceArray_secondarySourceArray_destinationArray_ primarySourceArray:v14 secondarySourceArray:? destinationArray:?];
}

@end