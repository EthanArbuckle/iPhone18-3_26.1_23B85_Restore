@interface MPSNDArrayPadKernel
- (MPSNDArrayPadKernel)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayPadKernel)initWithDevice:(id)device edgeMode:(unint64_t)mode constantValue:(id)value paddingSize:(MPSNDArrayPaddingSize *)size;
- (MPSNDArrayPaddingSize)paddingSize;
- (__n64)dimensionsNotToBeBroadcast;
- (double)dimensionsToBeRetained;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayPadKernel

- (MPSNDArrayPadKernel)initWithDevice:(id)device edgeMode:(unint64_t)mode constantValue:(id)value paddingSize:(MPSNDArrayPaddingSize *)size
{
  v23.receiver = self;
  v23.super_class = MPSNDArrayPadKernel;
  v9 = [(MPSNDArrayUnaryKernel *)&v23 initWithDevice:device];
  v9->super.super._encode = EncodePad;
  v9->super.super.super._encodeData = v9;
  v9->_edgeMode = mode;
  v11 = *&size->paddingSize[12][0];
  v10 = *&size->paddingSize[13][0];
  v12 = *&size->paddingSize[15][0];
  *&v9->_paddingSize.paddingSize[14][0] = *&size->paddingSize[14][0];
  *&v9->_paddingSize.paddingSize[15][0] = v12;
  *&v9->_paddingSize.paddingSize[12][0] = v11;
  *&v9->_paddingSize.paddingSize[13][0] = v10;
  v14 = *&size->paddingSize[8][0];
  v13 = *&size->paddingSize[9][0];
  v15 = *&size->paddingSize[11][0];
  *&v9->_paddingSize.paddingSize[10][0] = *&size->paddingSize[10][0];
  *&v9->_paddingSize.paddingSize[11][0] = v15;
  *&v9->_paddingSize.paddingSize[8][0] = v14;
  *&v9->_paddingSize.paddingSize[9][0] = v13;
  v17 = *&size->paddingSize[4][0];
  v16 = *&size->paddingSize[5][0];
  v18 = *&size->paddingSize[7][0];
  *&v9->_paddingSize.paddingSize[6][0] = *&size->paddingSize[6][0];
  *&v9->_paddingSize.paddingSize[7][0] = v18;
  *&v9->_paddingSize.paddingSize[4][0] = v17;
  *&v9->_paddingSize.paddingSize[5][0] = v16;
  v19 = *&size->paddingSize[0][0];
  v20 = *&size->paddingSize[1][0];
  v21 = *&size->paddingSize[3][0];
  *&v9->_paddingSize.paddingSize[2][0] = *&size->paddingSize[2][0];
  *&v9->_paddingSize.paddingSize[3][0] = v21;
  *&v9->_paddingSize.paddingSize[0][0] = v19;
  *&v9->_paddingSize.paddingSize[1][0] = v20;
  v9->_constantValue = value;
  v9->_constantValueImagPart = 0.0;
  return v9;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [arrays objectAtIndexedSubscript:{0, state}];
  v7 = *(v6 + *MEMORY[0x277CD73F0]);
  v8 = [arrays objectAtIndexedSubscript:0];
  v9 = (v8 + *MEMORY[0x277CD7410]);
  v19 = v9[2];
  v20 = v9[3];
  v17 = *v9;
  v18 = v9[1];
  v10 = [arrays objectAtIndexedSubscript:0];
  v11 = *MEMORY[0x277CD73D8];
  memset(v23, 0, sizeof(v23));
  if (v7)
  {
    v12 = 0;
    v13 = *(v10 + v11);
    v14 = &self->_paddingSize.paddingSize[0][1];
    do
    {
      v21 = v13;
      v22[0] = v17;
      v22[1] = v18;
      v22[2] = v19;
      v22[3] = v20;
      *(v23 + v12) = *v14 + *(v14 - 1) + *(v22 + (*(&v21 | v12 & 0xF) & 0xF));
      ++v12;
      v14 += 2;
    }

    while (v7 != v12);
  }

  result = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(objc_msgSend(arrays dimensionCount:"objectAtIndexedSubscript:" dimensionSizes:{0), "dataType"), v7, v23}];
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)dimensionsToBeRetained
{
  v1 = self + 86;
  if (self[116])
  {
    v2 = 0;
    if (self[114])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = self[117] == 0;
    if (self[114])
    {
LABEL_3:
      v3 = 0;
      if (self[112])
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  v3 = self[115] == 0;
  if (self[112])
  {
LABEL_4:
    v4 = 0;
    if (self[110])
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = self[113] == 0;
  if (self[110])
  {
LABEL_5:
    v5 = 0;
    if (self[108])
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v5 = self[111] == 0;
  if (self[108])
  {
LABEL_6:
    v6 = 0;
    if (self[106])
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v6 = self[109] == 0;
  if (self[106])
  {
LABEL_7:
    v7 = 0;
    if (self[104])
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v7 = self[107] == 0;
  if (self[104])
  {
LABEL_8:
    v8 = 0;
    if (self[102])
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = self[105] == 0;
  if (self[102])
  {
LABEL_9:
    v9 = 0;
    if (self[100])
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = self[103] == 0;
  if (self[100])
  {
LABEL_10:
    v10 = 0;
    if (self[98])
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = self[101] == 0;
  if (self[98])
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
  v11 = self[99] == 0;
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

- (__n64)dimensionsNotToBeBroadcast
{
  v1 = self + 86;
  if (self[86])
  {
    v2 = 0;
    if (self[88])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = self[87] == 0;
    if (self[88])
    {
LABEL_3:
      v3 = 0;
      if (self[90])
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  v3 = self[89] == 0;
  if (self[90])
  {
LABEL_4:
    v4 = 0;
    if (self[92])
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = self[91] == 0;
  if (self[92])
  {
LABEL_5:
    v5 = 0;
    if (self[94])
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v5 = self[93] == 0;
  if (self[94])
  {
LABEL_6:
    v6 = 0;
    if (self[96])
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v6 = self[95] == 0;
  if (self[96])
  {
LABEL_7:
    v7 = 0;
    if (self[98])
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v7 = self[97] == 0;
  if (self[98])
  {
LABEL_8:
    v8 = 0;
    if (self[100])
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = self[99] == 0;
  if (self[100])
  {
LABEL_9:
    v9 = 0;
    if (self[102])
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = self[101] == 0;
  if (self[102])
  {
LABEL_10:
    if (self[104])
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = self[103] == 0;
  if (self[104])
  {
LABEL_11:
    if (self[106])
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = self[105] == 0;
  if (v1[20])
  {
LABEL_12:
    if (v1[22])
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = v1[21] == 0;
  if (v1[22])
  {
LABEL_13:
    if (v1[24])
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = v1[23] == 0;
  if (v1[24])
  {
LABEL_14:
    if (v1[26])
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = v1[25] == 0;
  if (v1[26])
  {
LABEL_15:
    if (v1[28])
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = v1[27] == 0;
  if (v1[28])
  {
LABEL_16:
    if (v1[30])
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = v1[29] == 0;
  if (v1[30])
  {
    goto LABEL_34;
  }

LABEL_33:
  v17 = v1[31] == 0;
LABEL_34:
  result.n64_u8[0] = v2;
  result.n64_u8[1] = v3;
  result.n64_u8[2] = v4;
  result.n64_u8[3] = v5;
  result.n64_u8[4] = v6;
  result.n64_u8[5] = v7;
  result.n64_u8[6] = v8;
  result.n64_u8[7] = v9;
  return result;
}

- (MPSNDArrayPadKernel)initWithCoder:(id)coder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayPadKernel;
  v5 = [(MPSNDArrayUnaryKernel *)&v11 initWithCoder:coder device:device];
  v6 = v5;
  if (v5)
  {
    v5->super.super._encode = EncodePad;
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
    v6->_constantValue = [coder decodeObjectOfClass:objc_opt_class() forKey:@"MPSNDArrayPad.constantValue"];
    v6->_constantValueImagPart = 0.0;
    objc_autoreleasePoolPop(v7);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v10.receiver = self;
  v10.super_class = MPSNDArrayPadKernel;
  [(MPSNDArrayMultiaryBase *)&v10 encodeWithCoder:?];
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
  [coder encodeObject:self->_constantValue forKey:@"MPSNDArrayPad.constantValue"];
  objc_autoreleasePoolPop(v5);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v20.receiver = self;
  v20.super_class = MPSNDArrayPadKernel;
  result = [(MPSNDArrayMultiaryKernel *)&v20 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 83) = self->_edgeMode;
    v6 = result;
    v7 = self->_constantValue;
    result = v6;
    *(v6 + 84) = v7;
    v9 = *&self->_paddingSize.paddingSize[12][0];
    v8 = *&self->_paddingSize.paddingSize[13][0];
    v10 = *&self->_paddingSize.paddingSize[15][0];
    *(v6 + 57) = *&self->_paddingSize.paddingSize[14][0];
    *(v6 + 58) = v10;
    *(v6 + 55) = v9;
    *(v6 + 56) = v8;
    v12 = *&self->_paddingSize.paddingSize[8][0];
    v11 = *&self->_paddingSize.paddingSize[9][0];
    v13 = *&self->_paddingSize.paddingSize[11][0];
    *(v6 + 53) = *&self->_paddingSize.paddingSize[10][0];
    *(v6 + 54) = v13;
    *(v6 + 51) = v12;
    *(v6 + 52) = v11;
    v15 = *&self->_paddingSize.paddingSize[4][0];
    v14 = *&self->_paddingSize.paddingSize[5][0];
    v16 = *&self->_paddingSize.paddingSize[7][0];
    *(v6 + 49) = *&self->_paddingSize.paddingSize[6][0];
    *(v6 + 50) = v16;
    *(v6 + 47) = v15;
    *(v6 + 48) = v14;
    v18 = *&self->_paddingSize.paddingSize[0][0];
    v17 = *&self->_paddingSize.paddingSize[1][0];
    v19 = *&self->_paddingSize.paddingSize[3][0];
    *(v6 + 45) = *&self->_paddingSize.paddingSize[2][0];
    *(v6 + 46) = v19;
    *(v6 + 43) = v18;
    *(v6 + 44) = v17;
    *(v6 + 85) = *&self->_constantValueImagPart;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayPadKernel;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

- (MPSNDArrayPaddingSize)paddingSize
{
  v3 = *&self[3].paddingSize[8][0];
  *&retstr->paddingSize[12][0] = *&self[3].paddingSize[7][0];
  *&retstr->paddingSize[13][0] = v3;
  v4 = *&self[3].paddingSize[10][0];
  *&retstr->paddingSize[14][0] = *&self[3].paddingSize[9][0];
  *&retstr->paddingSize[15][0] = v4;
  v5 = *&self[3].paddingSize[4][0];
  *&retstr->paddingSize[8][0] = *&self[3].paddingSize[3][0];
  *&retstr->paddingSize[9][0] = v5;
  v6 = *&self[3].paddingSize[6][0];
  *&retstr->paddingSize[10][0] = *&self[3].paddingSize[5][0];
  *&retstr->paddingSize[11][0] = v6;
  v7 = *&self[3].paddingSize[0][0];
  *&retstr->paddingSize[4][0] = *&self[2].paddingSize[15][0];
  *&retstr->paddingSize[5][0] = v7;
  v8 = *&self[3].paddingSize[2][0];
  *&retstr->paddingSize[6][0] = *&self[3].paddingSize[1][0];
  *&retstr->paddingSize[7][0] = v8;
  v9 = *&self[2].paddingSize[12][0];
  *&retstr->paddingSize[0][0] = *&self[2].paddingSize[11][0];
  *&retstr->paddingSize[1][0] = v9;
  v10 = *&self[2].paddingSize[14][0];
  *&retstr->paddingSize[2][0] = *&self[2].paddingSize[13][0];
  *&retstr->paddingSize[3][0] = v10;
  return self;
}

@end