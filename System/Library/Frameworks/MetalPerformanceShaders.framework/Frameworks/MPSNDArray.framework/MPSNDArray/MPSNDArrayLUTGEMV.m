@interface MPSNDArrayLUTGEMV
- (MPSNDArrayLUTGEMV)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayLUTGEMV)initWithDevice:(id)a3 hasLUTLHS:(BOOL)a4 hasLUTRHS:(BOOL)a5;
- (MPSNDArrayLUTGEMV)initWithDevice:(id)a3 lhsDesc:(id)a4 rhsDesc:(id)a5;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayLUTGEMV

- (MPSNDArrayLUTGEMV)initWithDevice:(id)a3 lhsDesc:(id)a4 rhsDesc:(id)a5
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayLUTGEMV;
  v7 = -[MPSNDArrayMultiaryKernel initWithDevice:sourceCount:](&v9, sel_initWithDevice_sourceCount_, a3, [a4 getNDArrayCount] + objc_msgSend(a5, "getNDArrayCount") + 2);
  if (v7)
  {
    v7->_hasLUTLHS = [a4 quantizationScheme] == 2;
    v7->_hasLUTRHS = [a5 quantizationScheme] == 2;
    v7->_lhsDesc = [a4 copy];
    v7->_rhsDesc = [a5 copy];
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

- (MPSNDArrayLUTGEMV)initWithDevice:(id)a3 hasLUTLHS:(BOOL)a4 hasLUTRHS:(BOOL)a5
{
  v5 = a5;
  if (a4)
  {
    v8 = [(MPSNDArrayQuantizationDescriptor *)[MPSNDArrayLUTQuantizationDescriptor alloc] initWithDataType:8 quantizationScheme:2];
    if (!v5)
    {
LABEL_3:
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (!a5)
    {
      goto LABEL_3;
    }
  }

  v9 = [(MPSNDArrayQuantizationDescriptor *)[MPSNDArrayLUTQuantizationDescriptor alloc] initWithDataType:8 quantizationScheme:2];
LABEL_6:

  return [(MPSNDArrayLUTGEMV *)self initWithDevice:a3 lhsDesc:v8 rhsDesc:v9];
}

- (MPSNDArrayLUTGEMV)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayLUTGEMV;
  result = [(MPSNDArrayMultiaryKernel *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->_hasLUTLHS = 0;
    result->_hasLUTRHS = 0;
    result->super._encode = EncodeArrayLUTGEMV;
    result->super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayLUTGEMV;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayLUTGEMV;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 144) = self->_hasLUTLHS;
    *(result + 145) = self->_hasLUTRHS;
    *(result + 17) = EncodeArrayLUTGEMV;
    *(result + 12) = result;
  }

  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayLUTGEMV;
  return [(MPSNDArrayMultiaryBase *)&v8 workloadStatisticsForSourceArrays:a3 destArrays:a4 sourceState:a7, a6];
}

@end