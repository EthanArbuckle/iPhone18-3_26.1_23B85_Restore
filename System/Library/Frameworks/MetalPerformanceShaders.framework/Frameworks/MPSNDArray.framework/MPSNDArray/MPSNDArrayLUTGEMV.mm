@interface MPSNDArrayLUTGEMV
- (MPSNDArrayLUTGEMV)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayLUTGEMV)initWithDevice:(id)device hasLUTLHS:(BOOL)s hasLUTRHS:(BOOL)hS;
- (MPSNDArrayLUTGEMV)initWithDevice:(id)device lhsDesc:(id)desc rhsDesc:(id)rhsDesc;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayLUTGEMV

- (MPSNDArrayLUTGEMV)initWithDevice:(id)device lhsDesc:(id)desc rhsDesc:(id)rhsDesc
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayLUTGEMV;
  v7 = -[MPSNDArrayMultiaryKernel initWithDevice:sourceCount:](&v9, sel_initWithDevice_sourceCount_, device, [desc getNDArrayCount] + objc_msgSend(rhsDesc, "getNDArrayCount") + 2);
  if (v7)
  {
    v7->_hasLUTLHS = [desc quantizationScheme] == 2;
    v7->_hasLUTRHS = [rhsDesc quantizationScheme] == 2;
    v7->_lhsDesc = [desc copy];
    v7->_rhsDesc = [rhsDesc copy];
    v7->super._encode = EncodeArrayLUTGEMV;
    v7->super.super._encodeData = v7;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayLUTGEMV;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

- (MPSNDArrayLUTGEMV)initWithDevice:(id)device hasLUTLHS:(BOOL)s hasLUTRHS:(BOOL)hS
{
  hSCopy = hS;
  if (s)
  {
    v8 = [(MPSNDArrayQuantizationDescriptor *)[MPSNDArrayLUTQuantizationDescriptor alloc] initWithDataType:8 quantizationScheme:2];
    if (!hSCopy)
    {
LABEL_3:
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (!hS)
    {
      goto LABEL_3;
    }
  }

  v9 = [(MPSNDArrayQuantizationDescriptor *)[MPSNDArrayLUTQuantizationDescriptor alloc] initWithDataType:8 quantizationScheme:2];
LABEL_6:

  return [(MPSNDArrayLUTGEMV *)self initWithDevice:device lhsDesc:v8 rhsDesc:v9];
}

- (MPSNDArrayLUTGEMV)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayLUTGEMV;
  result = [(MPSNDArrayMultiaryKernel *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->_hasLUTLHS = 0;
    result->_hasLUTRHS = 0;
    result->super._encode = EncodeArrayLUTGEMV;
    result->super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayLUTGEMV;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayLUTGEMV;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 144) = self->_hasLUTLHS;
    *(result + 145) = self->_hasLUTRHS;
    *(result + 17) = EncodeArrayLUTGEMV;
    *(result + 12) = result;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayLUTGEMV;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
}

@end