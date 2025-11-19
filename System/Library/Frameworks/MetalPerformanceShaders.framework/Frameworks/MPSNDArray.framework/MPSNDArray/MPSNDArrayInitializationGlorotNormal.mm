@interface MPSNDArrayInitializationGlorotNormal
- (MPSNDArrayInitializationGlorotNormal)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayInitializationGlorotNormal)initWithDevice:(id)a3 seed:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (unint64_t)kernelDimensionalityForDestinationArray:(id)a3;
- (void)encodeToCommandBuffer:(id)a3 destinationArray:(id)a4;
@end

@implementation MPSNDArrayInitializationGlorotNormal

- (unint64_t)kernelDimensionalityForDestinationArray:(id)a3
{
  v4 = *(a3 + *MEMORY[0x277CD73F0]);
  if (v4)
  {
    v5 = 0;
    v6 = *(a3 + *MEMORY[0x277CD73D8]);
    while (1)
    {
      v34 = v6;
      if (v5 != *(&v34 | v5 & 0xF))
      {
        return 1;
      }

      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = [a3 numberOfDimensions];
    if (result < 2)
    {
      v11 = 1;
    }

    else
    {
      v8 = *MEMORY[0x277CD7410];
      v9 = *MEMORY[0x277CD7418];
      if (*(a3 + *MEMORY[0x277CD7400]) != (*(a3 + *MEMORY[0x277CD73C8]) >> 3) * *(a3 + v8) || *(a3 + v9) != 0)
      {
        return v4 != 0;
      }

      if (result == 2)
      {
        if (v4 >= 2)
        {
          return 2;
        }

        else
        {
          return v4;
        }
      }

      v12 = (a3 + *MEMORY[0x277CD73D0]);
      v14 = v12[2];
      v13 = v12[3];
      v16 = *v12;
      v15 = v12[1];
      v17 = (a3 + v8);
      v19 = v17[2];
      v18 = v17[3];
      v21 = *v17;
      v20 = v17[1];
      v23 = *(a3 + v9 + 32);
      v22 = *(a3 + v9 + 48);
      v25 = *(a3 + v9);
      v24 = *(a3 + v9 + 16);
      v11 = 2;
      while (1)
      {
        v26 = (v11 - 1) & 0xF;
        v33[0] = v16;
        v33[1] = v15;
        v33[2] = v14;
        v33[3] = v13;
        v27 = *(v33 + v26);
        v32[0] = v21;
        v32[1] = v20;
        v32[2] = v19;
        v32[3] = v18;
        v28 = *(v32 + v26);
        v31[0] = v25;
        v31[1] = v24;
        v31[2] = v23;
        v31[3] = v22;
        v29 = *(v31 + v26);
        if (v27 != v28 || v29 != 0)
        {
          break;
        }

        if (result == ++v11)
        {
          if (v4 < result)
          {
            return v4;
          }

          return result;
        }
      }
    }

    if (v4 >= v11)
    {
      return v11;
    }

    else
    {
      return v4;
    }
  }
}

- (MPSNDArrayInitializationGlorotNormal)initWithDevice:(id)a3 seed:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayInitializationGlorotNormal;
  result = [(MPSNDArrayInitialization *)&v6 initWithDevice:a3 sourceCount:0];
  if (result)
  {
    result->super._seed = a4;
    result->super.super._encode = EncodeGlorotInitialization;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayInitializationGlorotNormal;
  result = [(MPSNDArrayInitialization *)&v5 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 17) = EncodeGlorotInitialization;
  }

  return result;
}

- (MPSNDArrayInitializationGlorotNormal)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayInitializationGlorotNormal;
  result = [(MPSNDArrayInitialization *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeGlorotInitialization;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)a3 destinationArray:(id)a4
{
  v7 = objc_autoreleasePoolPush();
  *&v8 = sqrtf(2.0 / (self->_FanIn + self->_FanOut));
  *&v9 = *&v8 * -2.0;
  *&v10 = *&v8 + *&v8;
  v11 = [MEMORY[0x277CD7280] normalDistributionDescriptorWithMean:0.0 standardDeviation:v8 minimum:v9 maximum:v10];
  self->super._distribution = v11;
  v12 = v11;
  objc_autoreleasePoolPop(v7);
  v13.receiver = self;
  v13.super_class = MPSNDArrayInitializationGlorotNormal;
  [(MPSNDArrayInitialization *)&v13 encodeToCommandBuffer:a3 destinationArray:a4];
}

@end