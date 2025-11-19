@interface MPSNDArrayStridedSlice
- (MPSNDArrayOffsets)strides;
- (MPSNDArrayStridedSlice)initWithDevice:(id)a3;
- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4;
- (int32x4_t)stridesAtSourceIndex:(uint64_t)a1@<X0>;
- (void)setStrides:(MPSNDArrayOffsets *)strides;
@end

@implementation MPSNDArrayStridedSlice

- (MPSNDArrayStridedSlice)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayStridedSlice;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:a3];
  result->super.super._encode = EncodeStridedSlice;
  result->super.super.super._encodeData = result;
  return result;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4
{
  v12[16] = *MEMORY[0x277D85DE8];
  v5 = [a3 objectAtIndexedSubscript:{0, a4}];
  v6 = *(v5 + *MEMORY[0x277CD73F0]);
  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x277CD7410];
    do
    {
      v9 = self->_strides.dimensions[v7];
      if (v9 < 0)
      {
        v9 = -v9;
      }

      v9 = v9;
      if (v9)
      {
        v9 = (v9 + *(v5 + *v8 + 4 * (v7 & 0xF)) - 1) / v9;
      }

      v12[v7++] = v9;
    }

    while (v6 != v7);
  }

  result = [MEMORY[0x277CD7268] descriptorWithDataType:*(v5 + *MEMORY[0x277CD73C8]) dimensionCount:? dimensionSizes:?];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (int32x4_t)stridesAtSourceIndex:(uint64_t)a1@<X0>
{
  v2 = vuzp1q_s32(*(a1 + 664), *(a1 + 680));
  v3 = vuzp1q_s32(*(a1 + 696), *(a1 + 712));
  result = vuzp1q_s32(*(a1 + 760), *(a1 + 776));
  a2[2] = vuzp1q_s32(*(a1 + 728), *(a1 + 744));
  a2[3] = result;
  *a2 = v2;
  a2[1] = v3;
  return result;
}

- (MPSNDArrayOffsets)strides
{
  v3 = *&self[5].dimensions[13];
  *&retstr->dimensions[8] = *&self[5].dimensions[11];
  *&retstr->dimensions[10] = v3;
  v4 = *&self[6].dimensions[1];
  *&retstr->dimensions[12] = *&self[5].dimensions[15];
  *&retstr->dimensions[14] = v4;
  v5 = *&self[5].dimensions[5];
  *retstr->dimensions = *&self[5].dimensions[3];
  *&retstr->dimensions[2] = v5;
  v6 = *&self[5].dimensions[9];
  *&retstr->dimensions[4] = *&self[5].dimensions[7];
  *&retstr->dimensions[6] = v6;
  return self;
}

- (void)setStrides:(MPSNDArrayOffsets *)strides
{
  v3 = *&strides->dimensions[6];
  v5 = *strides->dimensions;
  v4 = *&strides->dimensions[2];
  *&self->_strides.dimensions[4] = *&strides->dimensions[4];
  *&self->_strides.dimensions[6] = v3;
  *self->_strides.dimensions = v5;
  *&self->_strides.dimensions[2] = v4;
  v6 = *&strides->dimensions[14];
  v8 = *&strides->dimensions[8];
  v7 = *&strides->dimensions[10];
  *&self->_strides.dimensions[12] = *&strides->dimensions[12];
  *&self->_strides.dimensions[14] = v6;
  *&self->_strides.dimensions[8] = v8;
  *&self->_strides.dimensions[10] = v7;
}

@end