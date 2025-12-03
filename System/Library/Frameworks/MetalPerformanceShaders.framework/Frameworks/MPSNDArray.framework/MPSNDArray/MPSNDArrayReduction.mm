@interface MPSNDArrayReduction
- (MPSNDArrayReduction)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayReduction)initWithDevice:(id)device axis:(unint64_t)axis operation:(int)operation;
- (double)dimensionsToBeRetained;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (unint64_t)kernelDimensionalityForSourceArrays:(id)arrays;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAxes:(id)axes;
- (void)setAxis:(unint64_t)axis;
@end

@implementation MPSNDArrayReduction

- (void)setAxes:(id)axes
{
  axes = self->_axes;
  if (axes != axes)
  {
    self->_axes = [axes copy];

    if (axes)
    {
      if ([axes count] == 1)
      {
        self->_axis = [objc_msgSend(axes objectAtIndexedSubscript:{0), "unsignedLongValue"}];
      }
    }
  }
}

- (void)setAxis:(unint64_t)axis
{
  v7[1] = *MEMORY[0x277D85DE8];
  self->_axis = axis;

  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v7[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:axis];
  self->_axes = [v5 initWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v7, 1)}];
  v6 = *MEMORY[0x277D85DE8];
}

- (unint64_t)kernelDimensionalityForSourceArrays:(id)arrays
{
  axes = self->_axes;
  if (axes)
  {
    [(NSArray *)axes count];
  }

  return 4;
}

- (MPSNDArrayReduction)initWithDevice:(id)device axis:(unint64_t)axis operation:(int)operation
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = MPSNDArrayReduction;
  result = [(MPSNDArrayUnaryKernel *)&v13 initWithDevice:?];
  if (result)
  {
    result->_axis = axis;
    v9 = result;
    v10 = objc_alloc(MEMORY[0x277CBEA60]);
    v14[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:axis];
    v9->_axes = [v10 initWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v14, 1)}];
    v9->_operation = operation;
    v9->super.super._encode = EncodeReduction;
    v11 = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    result = v9;
    v9->_identity = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (MPSNDArrayReduction)initWithCoder:(id)coder device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayReduction;
  v6 = [MPSNDArrayUnaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v6)
  {
    v6->_axis = [coder decodeInt64ForKey:@"MPSNDArrayReduction.axis"];
    v6->_operation = [coder decodeInt64ForKey:@"MPSNDArrayReduction.operation"];
    v7 = [coder decodeInt64ForKey:@"MPSNDArrayReduction.axes"];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    if (v7)
    {
      [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 0)}];
      if ((v7 & 2) == 0)
      {
LABEL_4:
        if ((v7 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_24;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 1)}];
    if ((v7 & 4) == 0)
    {
LABEL_5:
      if ((v7 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_24:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 2)}];
    if ((v7 & 8) == 0)
    {
LABEL_6:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

LABEL_25:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3)}];
    if ((v7 & 0x10) == 0)
    {
LABEL_7:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 4)}];
    if ((v7 & 0x20) == 0)
    {
LABEL_8:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 5)}];
    if ((v7 & 0x40) == 0)
    {
LABEL_9:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 6)}];
    if ((v7 & 0x80) == 0)
    {
LABEL_10:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 7)}];
    if ((v7 & 0x100) == 0)
    {
LABEL_11:
      if ((v7 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_30:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 8)}];
    if ((v7 & 0x200) == 0)
    {
LABEL_12:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_32;
    }

LABEL_31:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 9)}];
    if ((v7 & 0x400) == 0)
    {
LABEL_13:
      if ((v7 & 0x800) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }

LABEL_32:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 10)}];
    if ((v7 & 0x800) == 0)
    {
LABEL_14:
      if ((v7 & 0x1000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }

LABEL_33:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 11)}];
    if ((v7 & 0x1000) == 0)
    {
LABEL_15:
      if ((v7 & 0x2000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }

LABEL_34:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 12)}];
    if ((v7 & 0x2000) == 0)
    {
LABEL_16:
      if ((v7 & 0x4000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }

LABEL_35:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 13)}];
    if ((v7 & 0x4000) == 0)
    {
LABEL_17:
      if ((v7 & 0x8000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }

LABEL_36:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 14)}];
    if ((v7 & 0x8000) == 0)
    {
LABEL_18:
      v6->_axes = 0;
      if (![v8 count])
      {
LABEL_20:

        v6->super.super._encode = EncodeReduction;
        v6->super.super.super._encodeData = v6;
        v6->_identity = [[MPSNDArrayIdentity alloc] initWithDevice:device];
        return v6;
      }

LABEL_19:
      v6->_axes = v8;
      goto LABEL_20;
    }

LABEL_37:
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 15)}];
    v6->_axes = 0;
    if (![v8 count])
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayReduction;
  [(MPSNDArrayMultiaryBase *)&v9 encodeWithCoder:?];
  [coder encodeInt64:self->_axis forKey:@"MPSNDArrayReduction.axis"];
  [coder encodeInt64:self->_operation forKey:@"MPSNDArrayReduction.operation"];
  v5 = 0;
  if ([(NSArray *)self->_axes count])
  {
    v6 = 0;
    do
    {
      v7 = [-[NSArray objectAtIndexedSubscript:](self->_axes objectAtIndexedSubscript:{v6), "unsignedIntegerValue"}];
      v8 = (1 << v7);
      if (v7 >= 0x10)
      {
        v8 = 0;
      }

      v5 |= v8;
      ++v6;
    }

    while (v6 < [(NSArray *)self->_axes count]);
  }

  [coder encodeInt64:v5 forKey:@"MPSNDArrayReduction.axes"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayReduction;
  result = [MPSNDArrayMultiaryKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (result)
  {
    *(result + 83) = self->_axis;
    *(result + 168) = self->_operation;
    *(result + 17) = EncodeReduction;
    *(result + 12) = result;
    v8 = result;
    [result setAxes:self->_axes];
    v9 = [(MPSNDArrayIdentity *)self->_identity copyWithZone:zone device:device];
    result = v8;
    v8[85] = v9;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayReduction;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayReduction;
  v5 = [(MPSNDArrayMultiaryBase *)&v7 destinationArrayDescriptorForSourceArrays:arrays sourceState:state];
  [(MPSNDArrayDescriptor *)v5 sliceDimension:self->_axis withSubrange:0, 1];
  [(MPSNDArrayDescriptor *)v5 setLengthOfDimension:1 atIndex:self->_axis];
  return v5;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v46.receiver = self;
  v46.super_class = MPSNDArrayReduction;
  object = [(MPSNDArrayMultiaryBase *)&v46 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
  if ([arrays count])
  {
    v44 = object;
    kernelCopy = kernel;
    v10 = [arrays count];
    v11 = MEMORY[0x277CD7410];
    if (v10)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 1;
      do
      {
        v18 = [objc_msgSend(arrays objectAtIndexedSubscript:{v12), "numberOfDimensions"}];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v16 = 1;
          do
          {
            v16 *= *([arrays objectAtIndexedSubscript:v12] + *v11 + 4 * (v20++ & 0xF));
          }

          while (v19 != v20);
        }

        else
        {
          v16 = 1;
        }

        v17 = [arrays objectAtIndexedSubscript:v12];
        v13 |= *(v17 + *MEMORY[0x277CD73C8]) == 268435488;
        if (v16 > v15)
        {
          v14 = v12;
          v15 = v16;
        }

        ++v12;
      }

      while (v12 < [arrays count]);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v21 = [objc_msgSend(arrays objectAtIndexedSubscript:{v14), "numberOfDimensions"}];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = 1;
      do
      {
        v24 *= *([arrays objectAtIndexedSubscript:v14] + *v11 + 4 * (v23++ & 0xF));
      }

      while (v22 != v23);
      v25 = v24;
    }

    else
    {
      v25 = 1.0;
    }

    object = v44;
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
    MPSKernel_LogInfo(kernelCopy, v40, v41, v35, v37, v39, v42, *&v33);
  }

  return object;
}

- (double)dimensionsToBeRetained
{
  v1 = (&v3 | *(self + 664) & 0xFLL);
  *&v3 = 0;
  *v1 = 1;
  return *&v3;
}

@end