@interface MPSNDArrayTileGradientKernel
- ($96B0F76142A215457D5EFBC15591F05E)multiples;
- (MPSNDArrayTileGradientKernel)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayTileGradientKernel)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setMultiples:(id *)a3;
@end

@implementation MPSNDArrayTileGradientKernel

- (MPSNDArrayTileGradientKernel)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayTileGradientKernel;
  result = [(MPSNDArrayUnaryGradientKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encodeGradient = EncodeTileGradient;
  result->super.super.super._encodeData = result;
  return result;
}

- (MPSNDArrayTileGradientKernel)initWithCoder:(id)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayTileGradientKernel;
  result = [(MPSNDArrayUnaryGradientKernel *)&v7 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super.super._encodeGradient = EncodeTileGradient;
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
  v5.super_class = MPSNDArrayTileGradientKernel;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
  encodeMultiples(a3, &self->_multiples);
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v12.receiver = self;
  v12.super_class = MPSNDArrayTileGradientKernel;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v12 copyWithZone:a3 device:a4];
  if (result)
  {
    v6 = *&self->_multiples.dimensions[6];
    v8 = *self->_multiples.dimensions;
    v7 = *&self->_multiples.dimensions[2];
    *(result + 11) = *&self->_multiples.dimensions[4];
    *(result + 12) = v6;
    *(result + 9) = v8;
    *(result + 10) = v7;
    v9 = *&self->_multiples.dimensions[14];
    v11 = *&self->_multiples.dimensions[8];
    v10 = *&self->_multiples.dimensions[10];
    *(result + 15) = *&self->_multiples.dimensions[12];
    *(result + 16) = v9;
    *(result + 13) = v11;
    *(result + 14) = v10;
  }

  return result;
}

- ($96B0F76142A215457D5EFBC15591F05E)multiples
{
  v3 = *&self[1].var0[12];
  *&retstr->var0[8] = *&self[1].var0[10];
  *&retstr->var0[10] = v3;
  v4 = *self[2].var0;
  *&retstr->var0[12] = *&self[1].var0[14];
  *&retstr->var0[14] = v4;
  v5 = *&self[1].var0[4];
  *retstr->var0 = *&self[1].var0[2];
  *&retstr->var0[2] = v5;
  v6 = *&self[1].var0[8];
  *&retstr->var0[4] = *&self[1].var0[6];
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