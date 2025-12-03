@interface RedEyeChannel
- (id)filterNameForChannel:(int)channel;
- (id)outputImage;
- (id)parameterNamesForChannel:(int)channel;
@end

@implementation RedEyeChannel

- (id)outputImage
{
  v28[2] = *MEMORY[0x1E69E9840];
  if (outputImage_onceToken_2 != -1)
  {
    [RedEyeChannel outputImage];
  }

  intValue = [(NSNumber *)self->inputChannel intValue];
  inputParam1 = self->inputParam1;
  if (inputParam1)
  {
    [(NSNumber *)inputParam1 floatValue];
    v6 = v5;
    if (intValue <= 0x18 && ((1 << intValue) & 0x1A08000) != 0)
    {
      v6 = 1.0 / (1.0 - v5);
    }
  }

  else
  {
    v6 = 1.0;
    if ((intValue - 15) < 0xA)
    {
      v6 = flt_19CF2B740[intValue - 15];
    }
  }

  inputParam2 = self->inputParam2;
  if (inputParam2)
  {
    [(NSNumber *)inputParam2 floatValue];
    v10 = v9;
    if (intValue == 21 || intValue == 15)
    {
      v10 = 1.0 / (1.0 - v9);
    }
  }

  else
  {
    v10 = 1.0;
    if ((intValue - 15) < 0xA)
    {
      v10 = flt_19CF2B768[intValue - 15];
    }
  }

  inputParam3 = self->inputParam3;
  if (inputParam3)
  {
    [(NSNumber *)inputParam3 floatValue];
    v14 = v13;
    if ((intValue & 0xFFFFFFFD) == 0x15)
    {
      v14 = 1.0 / (1.0 - v13);
    }
  }

  else
  {
    v15 = 1.0;
    if (intValue == 21)
    {
      v15 = 5.0;
    }

    if (intValue == 23)
    {
      v14 = 2.0;
    }

    else
    {
      v14 = v15;
    }
  }

  if (self->inputParam1)
  {
    [(NSNumber *)self->inputParam4 floatValue];
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = [outputImage_kernels_1 objectAtIndexedSubscript:intValue];
  [(CIImage *)self->inputImage extent];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28[0] = self->inputImage;
  v28[1] = [CIVector vectorWithX:v6 Y:v10 Z:v14 W:v17];
  return [v18 applyWithExtent:&__block_literal_global_4 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v28, 2), v20, v22, v24, v26}];
}

NSArray *__28__RedEyeChannel_outputImage__block_invoke()
{
  result = +[CIKernel kernelsWithString:](CIColorKernel, "kernelsWithString:", [MEMORY[0x1E696AEC0] stringWithUTF8String:aKernelVec4Rede_4]);
  outputImage_kernels_1 = result;
  return result;
}

- (id)filterNameForChannel:(int)channel
{
  if ((channel - 1) > 0x17)
  {
    return @"Original";
  }

  else
  {
    return off_1E75C41B8[channel - 1];
  }
}

- (id)parameterNamesForChannel:(int)channel
{
  if ((channel - 15) > 9)
  {
    return MEMORY[0x1E695E0F0];
  }

  else
  {
    return qword_1E75C4278[channel - 15];
  }
}

@end