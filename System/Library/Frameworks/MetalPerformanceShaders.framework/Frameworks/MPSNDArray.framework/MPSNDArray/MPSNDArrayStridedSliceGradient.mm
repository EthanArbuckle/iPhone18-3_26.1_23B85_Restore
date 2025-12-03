@interface MPSNDArrayStridedSliceGradient
- (MPSNDArrayStridedSliceGradient)initWithDevice:(id)device;
- (double)stridesAtSourceIndex:(_OWORD *)index@<X8>;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer sourceArray:(id)array sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)destinationArray;
- (void)encodeToCommandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array;
@end

@implementation MPSNDArrayStridedSliceGradient

- (double)stridesAtSourceIndex:(_OWORD *)index@<X8>
{
  result = 0.0;
  index[2] = 0u;
  index[3] = 0u;
  *index = xmmword_239B0A0D0;
  index[1] = 0u;
  return result;
}

- (MPSNDArrayStridedSliceGradient)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayStridedSliceGradient;
  v4 = [(MPSNDArrayUnaryGradientKernel *)&v6 initWithDevice:?];
  v4->_zeroFillKernel = [[MPSNDArrayInitializationConstant alloc] initWithDevice:device constantValue:0.0];
  v4->super.super.super._encodeGradient = EncodeStridedSliceGradient;
  v4->super.super.super._encodeData = v4;
  return v4;
}

- (void)encodeToCommandBuffer:(id)buffer sourceArray:(id)array sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)destinationArray
{
  v62[1] = *MEMORY[0x277D85DE8];
  [(MPSNDArrayInitialization *)self->_zeroFillKernel encodeToCommandBuffer:buffer destinationArray:destinationArray];
  numberOfDimensions = [destinationArray numberOfDimensions];
  v62[0] = array;
  v14 = -[MPSNDArrayMultiaryBase maxSupportedDimensionsForSourceArrays:destinationArray:](self, "maxSupportedDimensionsForSourceArrays:destinationArray:", [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1], destinationArray);
  if (numberOfDimensions > v14 && MTLReportFailureTypeEnabled())
  {
    v33 = v14;
    MTLReportFailure();
  }

  v15 = [objc_alloc(MEMORY[0x277CD7210]) initWithCommandBuffer:buffer withDispatchType:0];
  v39 = v15;
  selfCopy = self;
  if ((*(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v16 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v16 || (v17 = objc_opt_class(), v16 = NSStringFromClass(v17), [(MPSKernel *)self setLabel:v16], v16))
    {
      [v15 setLabel:{v16, v33}];
    }
  }

  arrayCopy = array;
  v18 = -[MPSNDArrayStridedSliceGradient kernelDimensionalityForSourceArrays:](self, "kernelDimensionalityForSourceArrays:", [MEMORY[0x277CBEA60] arrayWithObjects:&arrayCopy count:{1, v33}]);
  [(MPSNDArrayStridedSliceGradient *)self stridesAtSourceIndex:0];
  v59[2] = v38[6];
  v59[3] = v38[7];
  v59[0] = v38[4];
  v59[1] = v38[5];
  srcCount = self->super.super.super._srcCount;
  v60 = 0;
  v42[0] = srcCount;
  v42[1] = v59;
  arrayCopy2 = array;
  v42[2] = [MEMORY[0x277CBEA60] arrayWithObjects:&arrayCopy2 count:1];
  v42[3] = state;
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
  gradientCopy = gradient;
  v47 = 0;
  destinationArrayCopy = destinationArray;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  if (numberOfDimensions)
  {
    v21 = 0;
    v22 = *(state + 7);
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

    while (numberOfDimensions != v21);
    v49 = v34;
    v50 = v35;
    v51 = v36;
    v52 = v37;
  }

  CallNDArrayGradientEncode(self, v15, buffer, numberOfDimensions - 1, v18, v42, 0);
  [v15 endEncoding];

  v32 = *MEMORY[0x277D85DE8];
}

- (void)encodeToCommandBuffer:(id)buffer sourceArrays:(id)arrays sourceGradient:(id)gradient gradientState:(id)state destinationArray:(id)array
{
  v12 = [arrays objectAtIndexedSubscript:0];

  [(MPSNDArrayStridedSliceGradient *)self encodeToCommandBuffer:buffer sourceArray:v12 sourceGradient:gradient gradientState:state destinationArray:array];
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v18[16] = *MEMORY[0x277D85DE8];
  v4 = [arrays objectAtIndexedSubscript:{0, state}];
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