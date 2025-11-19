@interface MPSNDArrayTileKernel
- ($96B0F76142A215457D5EFBC15591F05E)multiples;
- (MPSNDArrayTileKernel)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayTileKernel)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setMultiples:(id *)a3;
@end

@implementation MPSNDArrayTileKernel

- (MPSNDArrayTileKernel)initWithDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayTileKernel;
  v3 = [(MPSNDArrayUnaryKernel *)&v5 initWithDevice:a3];
  v3->super.super._encode = EncodeTile;
  v3->super.super.super._encodeData = v3;
  memset_pattern16(&v3->_multiples, &unk_239B0A390, 0x80uLL);
  return v3;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = [a3 objectAtIndexedSubscript:{0, a4}];
  v19 = *(v6 + *MEMORY[0x277CD73D8]);
  v7 = [a3 objectAtIndexedSubscript:0];
  v8 = *(v7 + *MEMORY[0x277CD73F0]);
  v9 = [a3 objectAtIndexedSubscript:0];
  v10 = (v9 + *MEMORY[0x277CD7410]);
  v12 = v10[2];
  v11 = v10[3];
  v14 = *v10;
  v13 = v10[1];
  memset(v22, 0, sizeof(v22));
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v16 = self->_multiples.dimensions[i];
      v20 = v19;
      v21[0] = v14;
      v21[1] = v13;
      v21[2] = v12;
      v21[3] = v11;
      *(v22 + i) = v16 * *(v21 + (*(&v20 | i & 0xF) & 0xF));
    }
  }

  result = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(objc_msgSend(a3 dimensionCount:"objectAtIndexedSubscript:" dimensionSizes:{0, *&v11, *&v12, *&v13, *&v14, *&v19), "dataType"), v8, v22}];
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (MPSNDArrayTileKernel)initWithCoder:(id)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayTileKernel;
  result = [(MPSNDArrayUnaryKernel *)&v7 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeTile;
    result->super.super.super._encodeData = result;
    v6 = result;
    decodeMultiples(a3, &result->_multiples);
    return v6;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v5.receiver = self;
  v5.super_class = MPSNDArrayTileKernel;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  encodeMultiples(a3, &self->_multiples);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v12.receiver = self;
  v12.super_class = MPSNDArrayTileKernel;
  result = [(MPSNDArrayMultiaryKernel *)&v12 copyWithZone:a3 device:a4];
  if (result)
  {
    v6 = *&self->_multiples.dimensions[6];
    v8 = *self->_multiples.dimensions;
    v7 = *&self->_multiples.dimensions[2];
    *(result + 696) = *&self->_multiples.dimensions[4];
    *(result + 712) = v6;
    *(result + 664) = v8;
    *(result + 680) = v7;
    v9 = *&self->_multiples.dimensions[14];
    v11 = *&self->_multiples.dimensions[8];
    v10 = *&self->_multiples.dimensions[10];
    *(result + 760) = *&self->_multiples.dimensions[12];
    *(result + 776) = v9;
    *(result + 728) = v11;
    *(result + 744) = v10;
  }

  return result;
}

- ($96B0F76142A215457D5EFBC15591F05E)multiples
{
  v3 = *&self[5].var0[13];
  *&retstr->var0[8] = *&self[5].var0[11];
  *&retstr->var0[10] = v3;
  v4 = *&self[6].var0[1];
  *&retstr->var0[12] = *&self[5].var0[15];
  *&retstr->var0[14] = v4;
  v5 = *&self[5].var0[5];
  *retstr->var0 = *&self[5].var0[3];
  *&retstr->var0[2] = v5;
  v6 = *&self[5].var0[9];
  *&retstr->var0[4] = *&self[5].var0[7];
  *&retstr->var0[6] = v6;
  return self;
}

- (void)setMultiples:(id *)a3
{
  v3 = *&a3->var0[6];
  v5 = *a3->var0;
  v4 = *&a3->var0[2];
  *&self->_multiples.dimensions[4] = *&a3->var0[4];
  *&self->_multiples.dimensions[6] = v3;
  *self->_multiples.dimensions = v5;
  *&self->_multiples.dimensions[2] = v4;
  v6 = *&a3->var0[14];
  v8 = *&a3->var0[8];
  v7 = *&a3->var0[10];
  *&self->_multiples.dimensions[12] = *&a3->var0[12];
  *&self->_multiples.dimensions[14] = v6;
  *&self->_multiples.dimensions[8] = v8;
  *&self->_multiples.dimensions[10] = v7;
}

@end