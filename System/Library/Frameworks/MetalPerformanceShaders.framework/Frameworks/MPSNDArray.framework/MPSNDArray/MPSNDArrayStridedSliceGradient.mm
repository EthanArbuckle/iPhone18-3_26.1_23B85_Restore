@interface MPSNDArrayStridedSliceGradient
- (MPSNDArrayStridedSliceGradient)initWithDevice:(id)a3;
- (double)stridesAtSourceIndex:(_OWORD *)a1@<X8>;
- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3 sourceArray:(id)a4 sourceGradient:(id)a5 gradientState:(id)a6 destinationArray:(id)a7;
- (void)encodeToCommandBuffer:(id)a3 sourceArrays:(id)a4 sourceGradient:(id)a5 gradientState:(id)a6 destinationArray:(id)a7;
@end

@implementation MPSNDArrayStridedSliceGradient

- (double)stridesAtSourceIndex:(_OWORD *)a1@<X8>
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = xmmword_239B0A0D0;
  a1[1] = 0u;
  return result;
}

- (MPSNDArrayStridedSliceGradient)initWithDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayStridedSliceGradient;
  v4 = [(MPSNDArrayUnaryGradientKernel *)&v6 initWithDevice:?];
  v4->_zeroFillKernel = [[MPSNDArrayInitializationConstant alloc] initWithDevice:a3 constantValue:0.0];
  v4->super.super.super._encodeGradient = EncodeStridedSliceGradient;
  v4->super.super.super._encodeData = v4;
  return v4;
}

- (void)encodeToCommandBuffer:(id)a3 sourceArray:(id)a4 sourceGradient:(id)a5 gradientState:(id)a6 destinationArray:(id)a7
{
  v62[1] = *MEMORY[0x277D85DE8];
  [(MPSNDArrayInitialization *)self->_zeroFillKernel encodeToCommandBuffer:a3 destinationArray:a7];
  v13 = [a7 numberOfDimensions];
  v62[0] = a4;
  v14 = -[MPSNDArrayMultiaryBase maxSupportedDimensionsForSourceArrays:destinationArray:](self, "maxSupportedDimensionsForSourceArrays:destinationArray:", [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1], a7);
  if (v13 > v14 && MTLReportFailureTypeEnabled())
  {
    v33 = v14;
    MTLReportFailure();
  }

  v15 = [objc_alloc(MEMORY[0x277CD7210]) initWithCommandBuffer:a3 withDispatchType:0];
  v39 = v15;
  v40 = self;
  if ((*(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v16 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v16 || (v17 = objc_opt_class(), v16 = NSStringFromClass(v17), [(MPSKernel *)self setLabel:v16], v16))
    {
      [v15 setLabel:{v16, v33}];
    }
  }

  v61 = a4;
  v18 = -[MPSNDArrayStridedSliceGradient kernelDimensionalityForSourceArrays:](self, "kernelDimensionalityForSourceArrays:", [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:{1, v33}]);
  [(MPSNDArrayStridedSliceGradient *)self stridesAtSourceIndex:0];
  v59[2] = v38[6];
  v59[3] = v38[7];
  v59[0] = v38[4];
  v59[1] = v38[5];
  srcCount = self->super.super.super._srcCount;
  v60 = 0;
  v42[0] = srcCount;
  v42[1] = v59;
  v41 = a4;
  v42[2] = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  v42[3] = a6;
  *&v20 = 0x100000001;
  *(&v20 + 1) = 0x100000001;
  v45 = v20;
  v46 = v20;
  v43 = v20;
  v44 = v20;
  v51 = v20;
  v52 = v20;
  v49 = v20;
  v50 = v20;
  v53 = 0;
  v54 = 0;
  v48 = a5;
  v47 = 0;
  v55 = a7;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  if (v13)
  {
    v21 = 0;
    v22 = *(a6 + 7);
    v24 = v22[2];
    v23 = v22[3];
    v26 = *v22;
    v25 = v22[1];
    *&v27 = 0x100000001;
    *(&v27 + 1) = 0x100000001;
    *&v28 = 0x100000001;
    *(&v28 + 1) = 0x100000001;
    *&v29 = 0x100000001;
    *(&v29 + 1) = 0x100000001;
    do
    {
      v38[0] = v26;
      v38[1] = v25;
      v38[2] = v24;
      v38[3] = v23;
      v30 = 4 * (v21 & 0xF);
      v31 = *(v38 + v30);
      v34 = v20;
      v35 = v27;
      v36 = v28;
      v37 = v29;
      *(&v34 + v30) = v31;
      v28 = v36;
      v29 = v37;
      v20 = v34;
      v27 = v35;
      ++v21;
    }

    while (v13 != v21);
    v49 = v34;
    v50 = v35;
    v51 = v36;
    v52 = v37;
  }

  CallNDArrayGradientEncode(self, v15, a3, v13 - 1, v18, v42, 0);
  [v15 endEncoding];

  v32 = *MEMORY[0x277D85DE8];
}

- (void)encodeToCommandBuffer:(id)a3 sourceArrays:(id)a4 sourceGradient:(id)a5 gradientState:(id)a6 destinationArray:(id)a7
{
  v12 = [a4 objectAtIndexedSubscript:0];

  [(MPSNDArrayStridedSliceGradient *)self encodeToCommandBuffer:a3 sourceArray:v12 sourceGradient:a5 gradientState:a6 destinationArray:a7];
}

- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4
{
  v18[16] = *MEMORY[0x277D85DE8];
  v4 = [a3 objectAtIndexedSubscript:{0, a4}];
  v5 = *(v4 + *MEMORY[0x277CD73F0]);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + *MEMORY[0x277CD7410]);
    v9 = v7[2];
    v8 = v7[3];
    v11 = *v7;
    v10 = v7[1];
    do
    {
      v14 = v11;
      v15 = v10;
      v16 = v9;
      v17 = v8;
      v18[v6] = *(&v14 + (v6 & 0xF));
      ++v6;
    }

    while (v5 != v6);
  }

  result = [MEMORY[0x277CD7268] descriptorWithDataType:*(v4 + *MEMORY[0x277CD73C8]) dimensionCount:v14 dimensionSizes:{v15, v16, v17}];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayStridedSliceGradient;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end