@interface MPSNDArrayInitializationRandomUniform
- (MPSNDArrayInitializationRandomUniform)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayInitializationRandomUniform)initWithDevice:(id)device minimum:(float)minimum maximum:(float)maximum seed:(unint64_t)seed;
- (MPSNDArrayInitializationRandomUniform)initWithDevice:(id)device sourceCount:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (unint64_t)kernelDimensionalityForDestinationArray:(id)array;
@end

@implementation MPSNDArrayInitializationRandomUniform

- (unint64_t)kernelDimensionalityForDestinationArray:(id)array
{
  v4 = *(array + *MEMORY[0x277CD73F0]);
  if (v4)
  {
    v5 = 0;
    v6 = *(array + *MEMORY[0x277CD73D8]);
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
    result = [array numberOfDimensions];
    if (result < 2)
    {
      v11 = 1;
    }

    else
    {
      v8 = *MEMORY[0x277CD7410];
      v9 = *MEMORY[0x277CD7418];
      if (*(array + *MEMORY[0x277CD7400]) != (*(array + *MEMORY[0x277CD73C8]) >> 3) * *(array + v8) || *(array + v9) != 0)
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

      v12 = (array + *MEMORY[0x277CD73D0]);
      v14 = v12[2];
      v13 = v12[3];
      v16 = *v12;
      v15 = v12[1];
      v17 = (array + v8);
      v19 = v17[2];
      v18 = v17[3];
      v21 = *v17;
      v20 = v17[1];
      v23 = *(array + v9 + 32);
      v22 = *(array + v9 + 48);
      v25 = *(array + v9);
      v24 = *(array + v9 + 16);
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

- (MPSNDArrayInitializationRandomUniform)initWithDevice:(id)device minimum:(float)minimum maximum:(float)maximum seed:(unint64_t)seed
{
  v16.receiver = self;
  v16.super_class = MPSNDArrayInitializationRandomUniform;
  v9 = [(MPSNDArrayInitialization *)&v16 initWithDevice:device sourceCount:0];
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    *&v11 = minimum;
    *&v12 = maximum;
    v13 = [MEMORY[0x277CD7280] uniformDistributionDescriptorWithMinimum:v11 maximum:v12];
    v9->super._distribution = v13;
    v14 = v13;
    objc_autoreleasePoolPop(v10);
    *(&v9->super._constantValue + 1) = minimum;
    v9->_minimum = maximum;
    v9->super._seed = seed;
    v9->super.super._encode = EncodeRandomInitialization;
    v9->super.super.super._encodeData = v9;
  }

  return v9;
}

- (MPSNDArrayInitializationRandomUniform)initWithDevice:(id)device sourceCount:(unint64_t)count
{
  LODWORD(v4) = -1119040307;
  LODWORD(v5) = 1028443341;
  [(MPSNDArrayInitializationRandomUniform *)self initWithDevice:device minimum:0 maximum:v4 seed:v5];
  return self;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayInitializationRandomUniform;
  result = [(MPSNDArrayInitialization *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 17) = EncodeRandomInitialization;
    *(result + 43) = *(&self->super._constantValue + 1);
    *(result + 44) = LODWORD(self->_minimum);
    *(result + 20) = self->super._seed;
  }

  return result;
}

- (MPSNDArrayInitializationRandomUniform)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayInitializationRandomUniform;
  result = [(MPSNDArrayInitialization *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeRandomInitialization;
  }

  return result;
}

@end