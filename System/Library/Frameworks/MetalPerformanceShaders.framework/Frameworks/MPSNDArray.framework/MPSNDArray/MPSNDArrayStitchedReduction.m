@interface MPSNDArrayStitchedReduction
- (MPSNDArrayStitchedReduction)initWithDevice:(id)a3 axis:(unint64_t)a4 descriptor:(id)a5;
- (double)dimensionsToBeRetained;
- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4;
- (id)getUserDAGInfo;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (void)dealloc;
- (void)setAxes:(id)a3;
- (void)setAxis:(unint64_t)a3;
- (void)setInvariantValueFn:(id)a3;
- (void)setMapFn:(id)a3;
- (void)setReduceFn:(id)a3;
- (void)setWriteFn:(id)a3;
@end

@implementation MPSNDArrayStitchedReduction

- (void)setInvariantValueFn:(id)a3
{
  DAGInfo = self->_DAGInfo;
  if (DAGInfo)
  {
  }

  self->_DAGInfo = 0;
  invariantValueFn = self->_invariantValueFn;
  if (invariantValueFn)
  {
  }

  self->_invariantValueFn = [a3 copy];
}

- (void)setMapFn:(id)a3
{
  DAGInfo = self->_DAGInfo;
  if (DAGInfo)
  {
  }

  self->_DAGInfo = 0;
  mapFn = self->_mapFn;
  if (mapFn)
  {
  }

  self->_mapFn = [a3 copy];
}

- (void)setReduceFn:(id)a3
{
  DAGInfo = self->_DAGInfo;
  if (DAGInfo)
  {
  }

  self->_DAGInfo = 0;
  reduceFn = self->_reduceFn;
  if (reduceFn)
  {
  }

  self->_reduceFn = [a3 copy];
}

- (void)setWriteFn:(id)a3
{
  DAGInfo = self->_DAGInfo;
  if (DAGInfo)
  {
  }

  self->_DAGInfo = 0;
  writeFn = self->_writeFn;
  if (writeFn)
  {
  }

  self->_writeFn = [a3 copy];
}

- (void)setAxes:(id)a3
{
  axes = self->_axes;
  if (axes != a3)
  {
    self->_axes = [a3 copy];

    if (a3)
    {
      if ([a3 count] == 1)
      {
        self->_axis = [objc_msgSend(a3 objectAtIndexedSubscript:{0), "unsignedLongValue"}];
      }
    }
  }
}

- (void)setAxis:(unint64_t)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  self->_axis = a3;

  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v7[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  self->_axes = [v5 initWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v7, 1)}];
  v6 = *MEMORY[0x277D85DE8];
}

- (MPSNDArrayStitchedReduction)initWithDevice:(id)a3 axis:(unint64_t)a4 descriptor:(id)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = MPSNDArrayStitchedReduction;
  result = [(MPSNDArrayUnaryKernel *)&v12 initWithDevice:a3];
  if (result)
  {
    result->_axis = a4;
    v8 = result;
    v9 = objc_alloc(MEMORY[0x277CBEA60]);
    v13[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v8->_axes = [v9 initWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v13, 1)}];
    v8->super.super._encode = EncodeStitchedReduction;
    v8->_DAGInfo = 0;
    v8->_invariantValueFn = [objc_msgSend(a5 "invariantValueFn")];
    v8->_mapFn = [objc_msgSend(a5 "mapFn")];
    v8->_reduceFn = [objc_msgSend(a5 "reduceFn")];
    v8->_writeFn = [objc_msgSend(a5 "writeFn")];
    v10 = [a5 stateSize];
    result = v8;
    v8->_stateSize = v10;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayStitchedReduction;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayStitchedReduction;
  v5 = [(MPSNDArrayMultiaryBase *)&v7 destinationArrayDescriptorForSourceArrays:a3 sourceState:a4];
  [(MPSNDArrayDescriptor *)v5 sliceDimension:self->_axis withSubrange:0, 1];
  [(MPSNDArrayDescriptor *)v5 setLengthOfDimension:1 atIndex:self->_axis];
  return v5;
}

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v46.receiver = self;
  v46.super_class = MPSNDArrayStitchedReduction;
  v9 = [(MPSNDArrayMultiaryBase *)&v46 workloadStatisticsForSourceArrays:a3 destArrays:a4 sourceState:a7, a6];
  if ([a3 count])
  {
    v44 = v9;
    v45 = a5;
    v10 = [a3 count];
    v11 = MEMORY[0x277CD7410];
    if (v10)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 1;
      do
      {
        v18 = [objc_msgSend(a3 objectAtIndexedSubscript:{v12), "numberOfDimensions"}];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v16 = 1;
          do
          {
            v16 *= *([a3 objectAtIndexedSubscript:v12] + *v11 + 4 * (v20++ & 0xF));
          }

          while (v19 != v20);
        }

        else
        {
          v16 = 1;
        }

        v17 = [a3 objectAtIndexedSubscript:v12];
        v13 |= *(v17 + *MEMORY[0x277CD73C8]) == 268435488;
        if (v16 > v15)
        {
          v14 = v12;
          v15 = v16;
        }

        ++v12;
      }

      while (v12 < [a3 count]);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v21 = [objc_msgSend(a3 objectAtIndexedSubscript:{v14), "numberOfDimensions"}];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = 1;
      do
      {
        v24 *= *([a3 objectAtIndexedSubscript:v14] + *v11 + 4 * (v23++ & 0xF));
      }

      while (v22 != v23);
      v25 = v24;
    }

    else
    {
      v25 = 1.0;
    }

    v9 = v44;
    [v44 setFloat32Ops:0.0];
    [v44 setFloat16Ops:0.0];
    if (v13)
    {
      [v44 setFloat32Ops:v25];
    }

    else
    {
      [v44 setFloat16Ops:v25];
    }

    [v44 float32Ops];
    v27 = v26;
    [v44 float16Ops];
    v29 = v27 + v28;
    [v44 deviceMemoryBytesRead];
    v31 = v30;
    [v44 deviceMemoryBytesWrite];
    v33 = v29 / (v31 + v32);
    [v44 float16Ops];
    v35 = v34;
    [v44 float32Ops];
    v37 = v36;
    [v44 deviceMemoryBytesRead];
    v39 = v38;
    [v44 deviceMemoryBytesWrite];
    MPSKernel_LogInfo(v45, v40, v41, v35, v37, v39, v42, *&v33);
  }

  return v9;
}

- (double)dimensionsToBeRetained
{
  v1 = (&v3 | *(a1 + 680) & 0xFLL);
  *&v3 = 0;
  *v1 = 1;
  return *&v3;
}

- (id)getUserDAGInfo
{
  v11 = *MEMORY[0x277D85DE8];
  result = self->_DAGInfo;
  if (!result)
  {
    v3 = objc_autoreleasePoolPush();
    [MEMORY[0x277CBEB18] array];
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __45__MPSNDArrayStitchedReduction_getUserDAGInfo__block_invoke;
    v9 = &unk_278B04D10;
    v10 = v4;
    operator new();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __45__MPSNDArrayStitchedReduction_getUserDAGInfo__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        while (1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(a2);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          v9 = [v8 specializedName];
          if (![*(a1 + 32) objectForKey:v9])
          {
            break;
          }

          if (v5 == ++v7)
          {
            goto LABEL_3;
          }
        }

        [*(a1 + 32) setValue:v8 forKey:v9];
        ++v7;
      }

      while (v5 != v7);
LABEL_3:
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = result;
    }

    while (result);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

@end