@interface MPSNDArrayPadGradientKernel
- (MPSNDArrayPadGradientKernel)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayPadGradientKernel)initWithDevice:(id)device edgeMode:(unint64_t)mode paddingSize:(MPSNDArrayPaddingSize *)size;
- (MPSNDArrayPaddingSize)paddingSize;
- (double)dimensionsToBeRetained;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayPadGradientKernel

- (MPSNDArrayPadGradientKernel)initWithDevice:(id)device edgeMode:(unint64_t)mode paddingSize:(MPSNDArrayPaddingSize *)size
{
  v20.receiver = self;
  v20.super_class = MPSNDArrayPadGradientKernel;
  result = [(MPSNDArrayUnaryGradientKernel *)&v20 initWithDevice:device];
  result->super.super.super._encodeGradient = EncodePadGradient;
  result->super.super.super._encodeData = result;
  result->_edgeMode = mode;
  v9 = *&size->paddingSize[12][0];
  v8 = *&size->paddingSize[13][0];
  v10 = *&size->paddingSize[15][0];
  *&result->_paddingSize.paddingSize[14][0] = *&size->paddingSize[14][0];
  *&result->_paddingSize.paddingSize[15][0] = v10;
  *&result->_paddingSize.paddingSize[12][0] = v9;
  *&result->_paddingSize.paddingSize[13][0] = v8;
  v12 = *&size->paddingSize[8][0];
  v11 = *&size->paddingSize[9][0];
  v13 = *&size->paddingSize[11][0];
  *&result->_paddingSize.paddingSize[10][0] = *&size->paddingSize[10][0];
  *&result->_paddingSize.paddingSize[11][0] = v13;
  *&result->_paddingSize.paddingSize[8][0] = v12;
  *&result->_paddingSize.paddingSize[9][0] = v11;
  v15 = *&size->paddingSize[4][0];
  v14 = *&size->paddingSize[5][0];
  v16 = *&size->paddingSize[7][0];
  *&result->_paddingSize.paddingSize[6][0] = *&size->paddingSize[6][0];
  *&result->_paddingSize.paddingSize[7][0] = v16;
  *&result->_paddingSize.paddingSize[4][0] = v15;
  *&result->_paddingSize.paddingSize[5][0] = v14;
  v17 = *&size->paddingSize[0][0];
  v18 = *&size->paddingSize[1][0];
  v19 = *&size->paddingSize[3][0];
  *&result->_paddingSize.paddingSize[2][0] = *&size->paddingSize[2][0];
  *&result->_paddingSize.paddingSize[3][0] = v19;
  *&result->_paddingSize.paddingSize[0][0] = v17;
  *&result->_paddingSize.paddingSize[1][0] = v18;
  return result;
}

- (MPSNDArrayPadGradientKernel)initWithCoder:(id)coder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayPadGradientKernel;
  v5 = [(MPSNDArrayUnaryGradientKernel *)&v11 initWithCoder:coder device:device];
  v6 = v5;
  if (v5)
  {
    v5->super.super.super._encodeGradient = EncodePadGradient;
    v5->super.super.super._encodeData = v5;
    v7 = objc_autoreleasePoolPush();
    v8 = 0;
    v9 = &v6->_paddingSize.paddingSize[0][1];
    do
    {
      *(v9 - 1) = [coder decodeIntegerForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@[%u][%u]", @"MPSNDArrayPad.paddingSize", v8, 0)}];
      *v9 = [coder decodeIntegerForKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@[%u][%u]", @"MPSNDArrayPad.paddingSize", v8, 1)}];
      v9 += 2;
      ++v8;
    }

    while (v8 != 16);
    v6->_edgeMode = [coder decodeIntegerForKey:@"MPSNDArrayPad.edgeMode"];
    objc_autoreleasePoolPop(v7);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v10.receiver = self;
  v10.super_class = MPSNDArrayPadGradientKernel;
  [(MPSNDArrayMultiaryGradientKernel *)&v10 encodeWithCoder:?];
  v5 = objc_autoreleasePoolPush();
  v6 = 0;
  v7 = &self->_paddingSize.paddingSize[0][1];
  do
  {
    [coder encodeInteger:*(v7 - 1) forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@[%u][%u]", @"MPSNDArrayPad.paddingSize", v6, 0)}];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@[%u][%u]", @"MPSNDArrayPad.paddingSize", v6, 1];
    v9 = *v7;
    v7 += 2;
    [coder encodeInteger:v9 forKey:v8];
    ++v6;
  }

  while (v6 != 16);
  [coder encodeInteger:self->_edgeMode forKey:@"MPSNDArrayPad.edgeMode"];
  objc_autoreleasePoolPop(v5);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v18.receiver = self;
  v18.super_class = MPSNDArrayPadGradientKernel;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v18 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 18) = self->_edgeMode;
    v6 = *&self->_paddingSize.paddingSize[3][0];
    v8 = *&self->_paddingSize.paddingSize[0][0];
    v7 = *&self->_paddingSize.paddingSize[1][0];
    *(result + 184) = *&self->_paddingSize.paddingSize[2][0];
    *(result + 200) = v6;
    *(result + 152) = v8;
    *(result + 168) = v7;
    v9 = *&self->_paddingSize.paddingSize[7][0];
    v11 = *&self->_paddingSize.paddingSize[4][0];
    v10 = *&self->_paddingSize.paddingSize[5][0];
    *(result + 248) = *&self->_paddingSize.paddingSize[6][0];
    *(result + 264) = v9;
    *(result + 216) = v11;
    *(result + 232) = v10;
    v12 = *&self->_paddingSize.paddingSize[11][0];
    v14 = *&self->_paddingSize.paddingSize[8][0];
    v13 = *&self->_paddingSize.paddingSize[9][0];
    *(result + 312) = *&self->_paddingSize.paddingSize[10][0];
    *(result + 328) = v12;
    *(result + 280) = v14;
    *(result + 296) = v13;
    v15 = *&self->_paddingSize.paddingSize[15][0];
    v17 = *&self->_paddingSize.paddingSize[12][0];
    v16 = *&self->_paddingSize.paddingSize[13][0];
    *(result + 376) = *&self->_paddingSize.paddingSize[14][0];
    *(result + 392) = v15;
    *(result + 344) = v17;
    *(result + 360) = v16;
  }

  return result;
}

- (double)dimensionsToBeRetained
{
  v1 = self + 19;
  if (self[49])
  {
    v2 = 0;
    if (self[47])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = self[50] == 0;
    if (self[47])
    {
LABEL_3:
      v3 = 0;
      if (self[45])
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  v3 = self[48] == 0;
  if (self[45])
  {
LABEL_4:
    v4 = 0;
    if (self[43])
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = self[46] == 0;
  if (self[43])
  {
LABEL_5:
    v5 = 0;
    if (self[41])
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v5 = self[44] == 0;
  if (self[41])
  {
LABEL_6:
    v6 = 0;
    if (self[39])
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v6 = self[42] == 0;
  if (self[39])
  {
LABEL_7:
    v7 = 0;
    if (self[37])
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v7 = self[40] == 0;
  if (self[37])
  {
LABEL_8:
    v8 = 0;
    if (self[35])
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = self[38] == 0;
  if (self[35])
  {
LABEL_9:
    v9 = 0;
    if (self[33])
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = self[36] == 0;
  if (self[33])
  {
LABEL_10:
    v10 = 0;
    if (self[31])
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = self[34] == 0;
  if (self[31])
  {
LABEL_11:
    v11 = 0;
    if (v1[10])
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = self[32] == 0;
  if (v1[10])
  {
LABEL_12:
    v12 = 0;
    if (v1[8])
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = v1[11] == 0;
  if (v1[8])
  {
LABEL_13:
    v13 = 0;
    if (v1[6])
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = v1[9] == 0;
  if (v1[6])
  {
LABEL_14:
    v14 = 0;
    if (v1[4])
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = v1[7] == 0;
  if (v1[4])
  {
LABEL_15:
    v15 = 0;
    if (v1[2])
    {
      goto LABEL_16;
    }

LABEL_32:
    v16 = v1[3] == 0;
    if (*v1)
    {
      goto LABEL_17;
    }

LABEL_33:
    v17 = v1[1] == 0;
    goto LABEL_34;
  }

LABEL_31:
  v15 = v1[5] == 0;
  if (!v1[2])
  {
    goto LABEL_32;
  }

LABEL_16:
  v16 = 0;
  if (!*v1)
  {
    goto LABEL_33;
  }

LABEL_17:
  v17 = 0;
LABEL_34:
  v18 = v2 && v3;
  v19 = v18 & v4;
  v20 = v19 & v5;
  v21 = v20 & v6;
  v22 = v21 & v7;
  v23 = v22 & v8;
  v24 = v23 & v9;
  v25 = v24 & v10;
  v26 = v25 & v11;
  v27 = v26 & v12;
  v28 = v27 & v13;
  v29 = v28 & v14;
  v30 = v29 & v15;
  v31 = v30 & v16;
  v32.i8[0] = v31 & v17;
  v32.i8[1] = v31;
  v32.i8[2] = v30;
  v32.i8[3] = v29;
  v32.i8[4] = v28;
  v32.i8[5] = v27;
  v32.i8[6] = v26;
  v32.i8[7] = v25;
  v32.i8[8] = v24;
  v32.i8[9] = v23;
  v32.i8[10] = v22;
  v32.i8[11] = v21;
  v32.i8[12] = v20;
  v32.i8[13] = v19;
  v32.i8[14] = v18;
  v32.i8[15] = v2;
  v33.i64[0] = 0x101010101010101;
  v33.i64[1] = 0x101010101010101;
  *&result = vandq_s8(v32, v33).u64[0];
  return result;
}

- (MPSNDArrayPaddingSize)paddingSize
{
  v3 = *&self[1].paddingSize[6][1];
  *&retstr->paddingSize[12][0] = *&self[1].paddingSize[5][1];
  *&retstr->paddingSize[13][0] = v3;
  v4 = *&self[1].paddingSize[8][1];
  *&retstr->paddingSize[14][0] = *&self[1].paddingSize[7][1];
  *&retstr->paddingSize[15][0] = v4;
  v5 = *&self[1].paddingSize[2][1];
  *&retstr->paddingSize[8][0] = *&self[1].paddingSize[1][1];
  *&retstr->paddingSize[9][0] = v5;
  v6 = *&self[1].paddingSize[4][1];
  *&retstr->paddingSize[10][0] = *&self[1].paddingSize[3][1];
  *&retstr->paddingSize[11][0] = v6;
  v7 = *&self->paddingSize[14][1];
  *&retstr->paddingSize[4][0] = *&self->paddingSize[13][1];
  *&retstr->paddingSize[5][0] = v7;
  v8 = *&self[1].paddingSize[0][1];
  *&retstr->paddingSize[6][0] = *&self->paddingSize[15][1];
  *&retstr->paddingSize[7][0] = v8;
  v9 = *&self->paddingSize[10][1];
  *&retstr->paddingSize[0][0] = *&self->paddingSize[9][1];
  *&retstr->paddingSize[1][0] = v9;
  v10 = *&self->paddingSize[12][1];
  *&retstr->paddingSize[2][0] = *&self->paddingSize[11][1];
  *&retstr->paddingSize[3][0] = v10;
  return self;
}

@end