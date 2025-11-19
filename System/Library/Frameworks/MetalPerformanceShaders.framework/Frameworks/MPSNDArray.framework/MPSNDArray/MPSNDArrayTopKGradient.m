@interface MPSNDArrayTopKGradient
- (MPSNDArrayTopKGradient)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayTopKGradient)initWithDevice:(id)a3;
- (MPSNDArrayTopKGradient)initWithDevice:(id)a3 K:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayTopKGradient

- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4
{
  v44[16] = *MEMORY[0x277D85DE8];
  v5 = [a3 objectAtIndexedSubscript:{0, a4}];
  v44[0] = self->_K;
  v6 = (v5 + *MEMORY[0x277CD7410]);
  v7 = (v5 + *MEMORY[0x277CD73D8]);
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[2];
  v11 = v6[3];
  v12 = v7[1] & 0xF;
  v43[2] = v10;
  v43[3] = v11;
  v43[0] = v8;
  v43[1] = v9;
  v44[1] = *(v43 + v12);
  v13 = v7[2] & 0xF;
  v42[2] = v10;
  v42[3] = v11;
  v42[0] = v8;
  v42[1] = v9;
  v44[2] = *(v42 + v13);
  v14 = v7[3] & 0xF;
  v41[2] = v10;
  v41[3] = v11;
  v41[0] = v8;
  v41[1] = v9;
  v44[3] = *(v41 + v14);
  v15 = v7[4] & 0xF;
  v40[2] = v10;
  v40[3] = v11;
  v40[0] = v8;
  v40[1] = v9;
  v44[4] = *(v40 + v15);
  v16 = v7[5] & 0xF;
  v39[2] = v10;
  v39[3] = v11;
  v39[0] = v8;
  v39[1] = v9;
  v44[5] = *(v39 + v16);
  v17 = v7[6] & 0xF;
  v38[2] = v10;
  v38[3] = v11;
  v38[0] = v8;
  v38[1] = v9;
  v44[6] = *(v38 + v17);
  v18 = v7[7] & 0xF;
  v37[2] = v10;
  v37[3] = v11;
  v37[0] = v8;
  v37[1] = v9;
  v44[7] = *(v37 + v18);
  v19 = v7[8] & 0xF;
  v36[2] = v10;
  v36[3] = v11;
  v36[0] = v8;
  v36[1] = v9;
  v44[8] = *(v36 + v19);
  v20 = v7[9] & 0xF;
  v35[2] = v10;
  v35[3] = v11;
  v35[0] = v8;
  v35[1] = v9;
  v44[9] = *(v35 + v20);
  v21 = v7[10] & 0xF;
  v34[2] = v10;
  v34[3] = v11;
  v34[0] = v8;
  v34[1] = v9;
  v44[10] = *(v34 + v21);
  v22 = v7[11] & 0xF;
  v33[2] = v10;
  v33[3] = v11;
  v33[0] = v8;
  v33[1] = v9;
  v44[11] = *(v33 + v22);
  v23 = v7[12] & 0xF;
  v32[2] = v10;
  v32[3] = v11;
  v32[0] = v8;
  v32[1] = v9;
  v44[12] = *(v32 + v23);
  v24 = v7[13] & 0xF;
  v31[2] = v10;
  v31[3] = v11;
  v31[0] = v8;
  v31[1] = v9;
  v44[13] = *(v31 + v24);
  v25 = v7[14] & 0xF;
  v30[2] = v10;
  v30[3] = v11;
  v30[0] = v8;
  v30[1] = v9;
  v44[14] = *(v30 + v25);
  v26 = v7[15] & 0xF;
  v29[2] = v10;
  v29[3] = v11;
  v29[0] = v8;
  v29[1] = v9;
  v44[15] = *(v29 + v26);
  result = [MEMORY[0x277CD7268] descriptorWithDataType:*(v5 + *MEMORY[0x277CD73C8]) dimensionCount:*(v5 + *MEMORY[0x277CD73F0]) dimensionSizes:{v44, v8, v9, v10, v11, v8, v9, v10, v11, v8, v9, v10, v11, v8, v9, v10, v11, v8, v9, v10, v11, v8, v9, v10, v11, v8, v9, v10, v11, v8}];
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

- (MPSNDArrayTopKGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayTopKGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encodeGradient = EncodeTopKGradient;
  result->super.super.super._encodeData = result;
  result->_K = 1;
  return result;
}

- (MPSNDArrayTopKGradient)initWithDevice:(id)a3 K:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayTopKGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v6 initWithDevice:a3];
  result->super.super.super._encodeGradient = EncodeTopKGradient;
  result->super.super.super._encodeData = result;
  result->_K = a4;
  return result;
}

- (MPSNDArrayTopKGradient)initWithCoder:(id)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayTopKGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v8 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super.super._encodeGradient = EncodeTopKGradient;
    result->super.super.super._encodeData = result;
    v6 = result;
    v7 = [a3 decodeInt64ForKey:@"MPSNDArrayTopK.K"];
    result = v6;
    v6->_K = v7;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayTopKGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
  [a3 encodeInt64:self->_K forKey:@"MPSNDArrayTopK.K"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayTopKGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    self->super.super.super._encodeGradient = EncodeTopKGradient;
    self->super.super.super._encodeData = self;
    *(result + 18) = self->_K;
  }

  return result;
}

@end