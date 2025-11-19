@interface MPSNDArrayScatter
- (MPSNDArrayScatter)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayScatter)initWithDevice:(id)a3 operation:(int)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3 primarySourceArray:(id)a4 secondarySourceArray:(id)a5 destinationArray:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayScatter

- (MPSNDArrayScatter)initWithDevice:(id)a3 operation:(int)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayScatter;
  v6 = [(MPSNDArrayMultiaryKernel *)&v8 initWithDevice:a3 sourceCount:3];
  v6->super._encode = EncodeScatter;
  v6->super.super._encodeData = v6;
  v6->_operation = a4;
  v6->_batchDimensions = 0;
  v6->_identity = [[MPSNDArrayIdentity alloc] initWithDevice:a3];
  return v6;
}

- (MPSNDArrayScatter)initWithCoder:(id)a3 device:(id)a4
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayScatter;
  result = [MPSNDArrayMultiaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (result)
  {
    result->super._encode = EncodeScatter;
    result->super.super._encodeData = result;
    v7 = result;
    result->_operation = [a3 decodeInt64ForKey:@"MPSNDArrayScatter.operation"];
    v7->_batchDimensions = [a3 decodeInt64ForKey:@"MPSNDArrayScatter.batchDimensions"];
    v8 = [[MPSNDArrayIdentity alloc] initWithDevice:a4];
    result = v7;
    v7->_identity = v8;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayScatter;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [a3 encodeInt64:self->_operation forKey:@"MPSNDArrayScatter.operation"];
  [a3 encodeInt64:self->_batchDimensions forKey:@"MPSNDArrayScatter.batchDimensions"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
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
    v10 = [(MPSNDArrayIdentity *)identity copyWithZone:a3 device:a4];
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

- (void)encodeToCommandBuffer:(id)a3 primarySourceArray:(id)a4 secondarySourceArray:(id)a5 destinationArray:(id)a6
{
  v7 = MEMORY[0x277CD73F0];
  if (*(a5 + *MEMORY[0x277CD73F0]) >= 2uLL)
  {
    v11 = a6;
    v13 = MTLReportFailureTypeEnabled();
    a6 = v11;
    if (v13)
    {
      v14 = *(a5 + *v7);
      MTLReportFailure();
      a6 = v11;
    }
  }

  v8 = *(a6 + *MEMORY[0x277CD73C8]);
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