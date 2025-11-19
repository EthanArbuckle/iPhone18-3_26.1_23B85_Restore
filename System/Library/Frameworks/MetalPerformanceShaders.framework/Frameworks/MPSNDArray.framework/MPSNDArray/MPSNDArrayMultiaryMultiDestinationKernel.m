@interface MPSNDArrayMultiaryMultiDestinationKernel
- (MPSNDArrayMultiaryMultiDestinationKernel)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayMultiaryMultiDestinationKernel)initWithDevice:(id)a3 sourceCount:(unint64_t)a4 destinationCount:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeToCommandBuffer:(id)a3 sourceArrays:(id)a4 destinationArrays:(id)a5;
- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArrays:(id)a5 destinationArrays:(id)a6;
- (void)encodeToMPSCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArrays:(id)a5 destinationArrays:(id)a6 activeDestinationMask:(unsigned int)a7;
@end

@implementation MPSNDArrayMultiaryMultiDestinationKernel

- (MPSNDArrayMultiaryMultiDestinationKernel)initWithDevice:(id)a3 sourceCount:(unint64_t)a4 destinationCount:(unint64_t)a5
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMultiaryMultiDestinationKernel;
  result = [(MPSNDArrayMultiaryMultiDestinationBase *)&v6 initWithDevice:a3 sourceCount:a4 destinationCount:a5];
  result->_encode = 0;
  return result;
}

- (MPSNDArrayMultiaryMultiDestinationKernel)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMultiaryMultiDestinationKernel;
  result = [(MPSNDArrayMultiaryMultiDestinationBase *)&v5 initWithCoder:a3 device:a4];
  result->_encode = 0;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMultiaryMultiDestinationKernel;
  result = [(MPSNDArrayMultiaryMultiDestinationBase *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 14) = self->_encode;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)a3 sourceArrays:(id)a4 destinationArrays:(id)a5
{
  v9 = [objc_alloc(MEMORY[0x277CD7210]) initWithCommandBuffer:a3 withDispatchType:0];
  v13 = v9;
  v14 = self;
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v10 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v10 || (v11 = objc_opt_class(), v12 = NSStringFromClass(v11), [(MPSKernel *)self setLabel:v12, v9, self], (v10 = v12) != 0))
    {
      [v9 setLabel:{v10, v13, v14}];
    }
  }

  [(MPSNDArrayMultiaryMultiDestinationKernel *)self encodeToMPSCommandEncoder:v9 commandBuffer:a3 sourceArrays:a4 destinationArrays:a5, v13, v14];
  [v9 endEncoding];
}

- (void)encodeToCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArrays:(id)a5 destinationArrays:(id)a6
{
  v11 = objc_alloc(MEMORY[0x277CD7210]);
  if (a3)
  {
    v12 = [v11 initWithComputeCommandEncoder:a3];
  }

  else
  {
    v12 = [v11 initWithCommandBuffer:a4 withDispatchType:0];
  }

  v13 = v12;
  [(MPSNDArrayMultiaryMultiDestinationKernel *)self encodeToMPSCommandEncoder:v12 commandBuffer:a4 sourceArrays:a5 destinationArrays:a6];
}

- (void)encodeToMPSCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArrays:(id)a5 destinationArrays:(id)a6 activeDestinationMask:(unsigned int)a7
{
  v54[7] = 0x2B2B032C2B2B0328;
  v55 = 0u;
  v56 = 0u;
  kdebug_trace();
  if (!self->super._dstCount)
  {
    goto LABEL_60;
  }

  v10 = 0;
  LOBYTE(v11) = 1;
  v12 = MEMORY[0x277CD7410];
  do
  {
    while (1)
    {
      if ((a7 >> v10))
      {
        [a6 objectAtIndexedSubscript:v10];
        objc_opt_class();
        objc_opt_isKindOfClass();
        [a6 objectAtIndexedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (MTLReportFailureTypeEnabled())
          {
            v43 = v10;
            MTLReportFailure();
          }
        }
      }

      [a6 objectAtIndexedSubscript:{v10, v43}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      LOBYTE(v11) = v11 & 1;
      if (++v10 >= self->super._dstCount)
      {
        goto LABEL_11;
      }
    }

    v13 = [a6 objectAtIndexedSubscript:v10];
    v11 &= vmaxvq_u32(vorrq_s8(vorrq_s8(vceqzq_s32(*(v13 + *v12)), vceqzq_s32(*(v13 + *v12 + 32))), vorrq_s8(vceqzq_s32(*(v13 + *v12 + 16)), vceqzq_s32(*(v13 + *v12 + 48))))) >> 31;
    ++v10;
  }

  while (v10 < self->super._dstCount);
LABEL_11:
  if ((a7 == 0) | v11 & 1)
  {
    goto LABEL_60;
  }

  v14 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  if (qword_27DF86980 == -1)
  {
    if (_MergedGlobals_3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&qword_27DF86980, &__block_literal_global_2);
    if (_MergedGlobals_3)
    {
LABEL_15:
      v15 = *MEMORY[0x277CD7360];
      if (!*(&self->super.super.super.isa + v15))
      {
        *(&self->super.super.super.isa + v15) = [a3 label];
      }

      goto LABEL_17;
    }
  }

  if ((*(v14 + 1468) & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  v16 = [objc_msgSend(a5 objectAtIndexedSubscript:{0), "numberOfDimensions"}];
  v17 = 0;
  v18 = MEMORY[0x277CD73F0];
  v19 = v16;
  while (v17 < [a5 count])
  {
    v20 = [a5 objectAtIndexedSubscript:v17];
    if (v19 <= *(v20 + *v18))
    {
      v19 = *(v20 + *v18);
    }

    v16 = v19;
    if (v19 <= 0xF)
    {
      v21 = (v20 + *MEMORY[0x277CD7418]);
      v23 = v21[2];
      v22 = v21[3];
      v25 = *v21;
      v24 = v21[1];
      v26 = *(v20 + *MEMORY[0x277CD73D8]);
      v16 = v19;
      for (i = v19; i != 16; ++i)
      {
        v48 = v26;
        v49[0] = v25;
        v49[1] = v24;
        v49[2] = v23;
        v49[3] = v22;
        if (*(v49 + (*(&v48 | i & 0xF) & 0xF)))
        {
          v16 = i + 1;
        }
      }
    }

    ++v17;
  }

  v28 = 0;
  while (v28 < [a6 count])
  {
    [a6 objectAtIndexedSubscript:v28];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_29;
    }

    v29 = [a6 objectAtIndexedSubscript:v28];
    if (v19 <= *(v29 + *v18))
    {
      v19 = *(v29 + *v18);
    }

    if (v19 > 0xF)
    {
      v16 = v19;
      ++v28;
    }

    else
    {
      v30 = (v29 + *MEMORY[0x277CD7418]);
      v32 = v30[2];
      v31 = v30[3];
      v34 = *v30;
      v33 = v30[1];
      v35 = *(v29 + *MEMORY[0x277CD73D8]);
      v16 = v19;
      for (j = v19; j != 16; ++j)
      {
        v50 = v35;
        v51[0] = v34;
        v51[1] = v33;
        v51[2] = v32;
        v51[3] = v31;
        if (*(v51 + (*(&v50 | j & 0xF) & 0xF)))
        {
          v16 = j + 1;
        }
      }

LABEL_29:
      ++v28;
    }
  }

  v44 = [(MPSNDArrayMultiaryMultiDestinationBase *)self kernelDimensionalityForSourceArrays:a5];
  if (self->super._srcCount)
  {
    is_mul_ok([a5 count], 0x50uLL);
    operator new[]();
  }

  if (self->super._dstCount)
  {
    is_mul_ok([a6 count], 0x50uLL);
    operator new[]();
  }

  v54[5] = a6;
  v54[0] = 0;
  v54[1] = 0;
  v54[2] = a5;
  v54[3] = 0;
  v54[4] = 0;
  v54[6] = a7;
  if (a3)
  {
    if (v16 <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = v16;
    }

    CallNDArrayEncodeMultiDestination(self, a3, a4, v37 - 1, v44, v54);
  }

  else
  {
    v38 = [objc_alloc(MEMORY[0x277CD7210]) initWithCommandBuffer:a4 withDispatchType:0];
    v52 = v38;
    v53 = self;
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
    {
      v39 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
      if (v39 || (v40 = objc_opt_class(), v39 = NSStringFromClass(v40), [(MPSKernel *)self setLabel:v39], v39))
      {
        [v38 setLabel:v39];
      }
    }

    CallNDArrayEncodeMultiDestination(self, v38, a4, v16 - 1, v44, v54);
    [v38 endEncoding];
  }

  for (k = 0; k < [a5 count]; ++k)
  {
    v42 = [a5 objectAtIndexedSubscript:k];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      MPSDecrementReadCount(v42);
    }
  }

LABEL_60:
  kdebug_trace();
}

@end