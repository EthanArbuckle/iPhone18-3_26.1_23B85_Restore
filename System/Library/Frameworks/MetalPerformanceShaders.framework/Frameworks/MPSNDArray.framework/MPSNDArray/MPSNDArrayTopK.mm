@interface MPSNDArrayTopK
- (MPSNDArrayTopK)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayTopK)initWithDevice:(id)device;
- (MPSNDArrayTopK)initWithDevice:(id)device K:(unint64_t)k;
- (MPSNDArrayTopK)initWithDevice:(id)device K:(unint64_t)k findIndices:(BOOL)indices;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayTopK

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v67[16] = *MEMORY[0x277D85DE8];
  v5 = [arrays objectAtIndexedSubscript:{0, state}];
  v67[0] = self->_K;
  v6 = (v5 + *MEMORY[0x277CD7410]);
  v7 = (v5 + *MEMORY[0x277CD73D8]);
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[3];
  v11 = v7[1] & 0xF;
  v65 = v6[2];
  v66 = v10;
  v64[0] = v8;
  v64[1] = v9;
  v67[1] = *(v64 + v11);
  v12 = v7[2] & 0xF;
  v63[2] = v65;
  v63[3] = v10;
  v63[0] = v8;
  v63[1] = v9;
  v67[2] = *(v63 + v12);
  v13 = v7[3] & 0xF;
  v62[2] = v65;
  v62[3] = v10;
  v62[0] = v8;
  v62[1] = v9;
  v67[3] = *(v62 + v13);
  v14 = v7[4] & 0xF;
  v61[2] = v65;
  v61[3] = v10;
  v61[0] = v8;
  v61[1] = v9;
  v67[4] = *(v61 + v14);
  v15 = v7[5] & 0xF;
  v60[2] = v65;
  v60[3] = v10;
  v60[0] = v8;
  v60[1] = v9;
  v67[5] = *(v60 + v15);
  v16 = v7[6] & 0xF;
  v59[2] = v65;
  v59[3] = v10;
  v59[0] = v8;
  v59[1] = v9;
  v67[6] = *(v59 + v16);
  v17 = v7[7] & 0xF;
  v58[2] = v65;
  v58[3] = v10;
  v58[0] = v8;
  v58[1] = v9;
  v67[7] = *(v58 + v17);
  v18 = v7[8] & 0xF;
  v57[2] = v65;
  v57[3] = v10;
  v57[0] = v8;
  v57[1] = v9;
  v67[8] = *(v57 + v18);
  v19 = v7[9] & 0xF;
  v55 = v65;
  v56 = v10;
  v53 = v8;
  v54 = v9;
  v67[9] = *(&v53 + v19);
  v20 = v7[10] & 0xF;
  v51 = v65;
  v52 = v10;
  v49 = v8;
  v50 = v9;
  v67[10] = *(&v49 + v20);
  v21 = v7[11] & 0xF;
  v47 = v65;
  v48 = v10;
  v45 = v8;
  v46 = v9;
  v67[11] = *(&v45 + v21);
  v22 = v7[12] & 0xF;
  v43 = v65;
  v44 = v10;
  v41 = v8;
  v42 = v9;
  v67[12] = *(&v41 + v22);
  v23 = v7[13] & 0xF;
  v39 = v65;
  v40 = v10;
  v37 = v8;
  v38 = v9;
  v67[13] = *(&v37 + v23);
  v24 = v7[14] & 0xF;
  v35 = v65;
  v36 = v10;
  v33 = v8;
  v34 = v9;
  v67[14] = *(&v33 + v24);
  v25 = v7[15] & 0xF;
  v31 = v65;
  v32 = v10;
  v29 = v8;
  v30 = v9;
  v67[15] = *(&v29 + v25);
  if (self->_findIndices)
  {
    v26 = 536870944;
  }

  else
  {
    v26 = *(v5 + *MEMORY[0x277CD73C8]);
  }

  result = [MEMORY[0x277CD7268] descriptorWithDataType:v26 dimensionCount:*(v5 + *MEMORY[0x277CD73F0]) dimensionSizes:{v67, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57[0]}];
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

- (MPSNDArrayTopK)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayTopK;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:device];
  result->super.super._encode = EncodeTopK;
  result->super.super.super._encodeData = result;
  result->_findIndices = 0;
  result->_K = 1;
  return result;
}

- (MPSNDArrayTopK)initWithDevice:(id)device K:(unint64_t)k
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayTopK;
  result = [(MPSNDArrayUnaryKernel *)&v6 initWithDevice:device];
  result->super.super._encode = EncodeTopK;
  result->super.super.super._encodeData = result;
  result->_findIndices = 0;
  result->_K = k;
  return result;
}

- (MPSNDArrayTopK)initWithDevice:(id)device K:(unint64_t)k findIndices:(BOOL)indices
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayTopK;
  result = [(MPSNDArrayUnaryKernel *)&v8 initWithDevice:device];
  result->super.super._encode = EncodeTopK;
  result->super.super.super._encodeData = result;
  result->_findIndices = indices;
  result->_K = k;
  return result;
}

- (MPSNDArrayTopK)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayTopK;
  result = [(MPSNDArrayUnaryKernel *)&v8 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeTopK;
    result->super.super.super._encodeData = result;
    v6 = result;
    result->_findIndices = [coder decodeBoolForKey:@"MPSNDArrayTopK.findIndices"];
    v7 = [coder decodeInt64ForKey:@"MPSNDArrayTopK.K"];
    result = v6;
    v6->_K = v7;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayTopK;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeBool:self->_findIndices forKey:@"MPSNDArrayTopK.findIndices"];
  [coder encodeInt64:self->_K forKey:@"MPSNDArrayTopK.K"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayTopK;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    self->super.super._encode = EncodeTopK;
    self->super.super.super._encodeData = self;
    *(result + 672) = self->_findIndices;
    *(result + 83) = self->_K;
  }

  return result;
}

@end