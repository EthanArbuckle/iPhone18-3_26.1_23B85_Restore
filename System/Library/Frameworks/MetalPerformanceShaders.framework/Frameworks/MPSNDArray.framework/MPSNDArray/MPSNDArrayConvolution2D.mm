@interface MPSNDArrayConvolution2D
+ (BOOL)supportsPostfixForDevice:(void *)device convolutionDescriptor:(id)descriptor sourceTensorDescriptor:(MPSNDArrayDataTensorDescriptor *)tensorDescriptor destinationTensorDescriptor:(MPSNDArrayDataTensorDescriptor *)destinationTensorDescriptor weightsTensorDescriptor:(MPSNDArrayWeightsTensorDescriptor *)weightsTensorDescriptor;
- (BOOL)advanceAutoTuneIteration;
- (MPSNDArrayConvolution2D)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayConvolution2D)initWithDevice:(id)device;
- (MPSNDArrayConvolution2D)initWithDevice:(id)device ndArrayConvolution2DDescriptor:(id)descriptor sourceCount:(unint64_t)count;
- (MPSNDArrayConvolutionOffsets)offsets;
- (MPSNDArrayConvolutionSizes)dilationRates;
- (MPSNDArrayConvolutionSizes)kernelSizes;
- (MPSNDArrayConvolutionSizes)strideInPixels;
- (double)destinationStrides;
- (double)stridesAtSourceIndex:(uint64_t)index@<X0>;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAutoTuningParameters:(void *)parameters;
@end

@implementation MPSNDArrayConvolution2D

+ (BOOL)supportsPostfixForDevice:(void *)device convolutionDescriptor:(id)descriptor sourceTensorDescriptor:(MPSNDArrayDataTensorDescriptor *)tensorDescriptor destinationTensorDescriptor:(MPSNDArrayDataTensorDescriptor *)destinationTensorDescriptor weightsTensorDescriptor:(MPSNDArrayWeightsTensorDescriptor *)weightsTensorDescriptor
{
  v7 = *(device + 368);
  LOBYTE(dataFormat) = 1;
  if (v7 >= 26 && v7 != 38)
  {
    if (IsPluginDisabled())
    {
LABEL_4:
      LOBYTE(dataFormat) = 1;
      return dataFormat;
    }

    LOBYTE(dataFormat) = 0;
    if (destinationTensorDescriptor && tensorDescriptor && weightsTensorDescriptor)
    {
      var5 = tensorDescriptor->var5;
      if (var5 != weightsTensorDescriptor->var5 || var5 != destinationTensorDescriptor->var5)
      {
        goto LABEL_4;
      }

      v35 = [descriptor kernelWidth] == 1 && objc_msgSend(descriptor, "kernelHeight") == 1 && objc_msgSend(descriptor, "strideInPixelsX") == 1 && objc_msgSend(descriptor, "strideInPixelsY") == 1;
      kernelWidth = [descriptor kernelWidth];
      kernelHeight = [descriptor kernelHeight];
      strideInPixelsX = [descriptor strideInPixelsX];
      strideInPixelsY = [descriptor strideInPixelsY];
      dilationRateInX = [descriptor dilationRateInX];
      dilationRateInY = [descriptor dilationRateInY];
      groups = [descriptor groups];
      v22 = kernelWidth == 3 && kernelHeight == 3;
      v23 = v22 && strideInPixelsX == 1;
      v24 = v23 && strideInPixelsY == 1;
      v25 = v24 && dilationRateInX == 1;
      v26 = v25 && dilationRateInY == 1;
      v27 = v26 && groups == 1;
      v28 = v27;
      if (!v35 && !v28)
      {
        goto LABEL_4;
      }

      if (MPSForcePlugin())
      {
        LOBYTE(dataFormat) = 0;
      }

      else
      {
        dataFormat = [descriptor dataFormat];
        if (dataFormat == 1)
        {
          return dataFormat;
        }

        v29 = tensorDescriptor->var5;
        if (v29 == 268435472)
        {
          goto LABEL_4;
        }

        if (v28)
        {
          var3 = destinationTensorDescriptor->var3;
          v32 = destinationTensorDescriptor->var0 < 0x1F || destinationTensorDescriptor->var1 < 0x1F;
          if (*(device + 368) > 32)
          {
            LOBYTE(dataFormat) = var3 < 9 || v32;
          }

          else
          {
            LOBYTE(dataFormat) = var3 < 8 || var3 == 96 || v32;
          }
        }

        else
        {
          LOBYTE(dataFormat) = v29 == 268435488;
        }
      }
    }
  }

  return dataFormat;
}

- (void)setAutoTuningParameters:(void *)parameters
{
  free(self->_autoTuningParams);
  if ((*(&self->super.super.super.super.isa + *MEMORY[0x277CD7350]))[368] < 26)
  {
    autoTuningTarget = self->_autoTuningTarget;
    switch(autoTuningTarget)
    {
      case 1:
        v12 = malloc_type_malloc(0x10uLL, 0x100004099076E91uLL);
        self->_autoTuningParams = v12;
        *v12 = *parameters;
        *(v12 + 2) = *(parameters + 2);
        *(v12 + 6) = *(parameters + 6);
        break;
      case 2:
        v11 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
        self->_autoTuningParams = v11;
        *v11 = *parameters;
        v11[4] = *(parameters + 4);
        break;
      case 4:
        v10 = malloc_type_malloc(0x24uLL, 0x10000402FE4F506uLL);
        self->_autoTuningParams = v10;
        *v10 = *parameters;
        *(v10 + 2) = *(parameters + 2);
        *(v10 + 12) = *(parameters + 12);
        *(v10 + 12) = *(parameters + 12);
        *(v10 + 5) = *(parameters + 5);
        *(v10 + 7) = *(parameters + 7);
        break;
    }
  }

  else
  {
    v5 = malloc_type_malloc(0x50uLL, 0x10000404247E4FDuLL);
    self->_autoTuningParams = v5;
    *v5 = *parameters;
    v6 = *(parameters + 4);
    v8 = *(parameters + 1);
    v7 = *(parameters + 2);
    v5[3] = *(parameters + 3);
    v5[4] = v6;
    v5[1] = v8;
    v5[2] = v7;
  }
}

- (MPSNDArrayConvolutionSizes)kernelSizes
{
  kernelHeight = self->_kernelHeight;
  kernelWidth = self->_kernelWidth;
  result.size[1] = kernelHeight;
  result.size[0] = kernelWidth;
  return result;
}

- (MPSNDArrayConvolutionSizes)strideInPixels
{
  strideInPixelsY = self->_strideInPixelsY;
  strideInPixelsX = self->_strideInPixelsX;
  result.size[1] = strideInPixelsY;
  result.size[0] = strideInPixelsX;
  return result;
}

- (MPSNDArrayConvolutionSizes)dilationRates
{
  dilationRateInY = self->_dilationRateInY;
  dilationRateInX = self->_dilationRateInX;
  result.size[1] = dilationRateInY;
  result.size[0] = dilationRateInX;
  return result;
}

- (MPSNDArrayConvolutionOffsets)offsets
{
  p_offsets = &self->_offsets;
  v3 = self->_offsets.offset[0];
  v4 = p_offsets->offset[1];
  result.offset[1] = v4;
  result.offset[0] = v3;
  return result;
}

- (MPSNDArrayConvolution2D)initWithDevice:(id)device ndArrayConvolution2DDescriptor:(id)descriptor sourceCount:(unint64_t)count
{
  v12.receiver = self;
  v12.super_class = MPSNDArrayConvolution2D;
  v7 = [(MPSNDArrayMultiaryKernel *)&v12 initWithDevice:device sourceCount:count];
  v8 = v7;
  if (v7)
  {
    v7->_kernelWidth = *(descriptor + 1);
    v7->_kernelHeight = *(descriptor + 2);
    v7->_inputFeatureChannels = *(descriptor + 3);
    v7->_outputFeatureChannels = *(descriptor + 4);
    v7->_strideInPixelsX = *(descriptor + 5);
    v7->_strideInPixelsY = *(descriptor + 6);
    v7->_groups = *(descriptor + 7);
    v7->_dilationRateInX = *(descriptor + 8);
    v7->_dilationRateInY = *(descriptor + 9);
    v7->_channelMultiplier = *(descriptor + 10);
    v9 = *(descriptor + 23);
    v7->_dataFormat = *(descriptor + 22);
    v7->_weightsFormat = v9;
    v7->_offsets.offset[0] = 0;
    v7->_offsets.offset[1] = 0;
    v7->_ndArrayIdentity = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    v8->_autoTuningParams = 0;
    v8->_autoTuningTarget = 0;
    v8->_autoTuneIteration = -1;
    v8->_nextAutoTuneIteration = -1;
    v8->_logNextAutoTuneParams = 0;
    v8->_allowFP16WinogradTransformIntermediate = 0;
    v8->_forcePlugin = 0;
    if (MPSIsReducedPrecision())
    {
      *(&v8->super.super.super.super.isa + *MEMORY[0x277CD7378]) = (*(&v8->super.super.super.super.isa + *MEMORY[0x277CD7378]) | 2);
    }

    groups = v8->_groups;
    if (v8->_inputFeatureChannels % groups)
    {
      if (MTLReportFailureTypeEnabled())
      {
LABEL_11:
        MTLReportFailure();
      }
    }

    else
    {
      if (!(v8->_outputFeatureChannels % groups))
      {
        v8->super._encode = EncodeNDArrayConvolution2D;
        v8->super.super._encodeData = v8;
        return v8;
      }

      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSNDArrayConvolution2D;
  v5 = [(MPSNDArrayMultiaryKernel *)&v13 copyWithZone:zone device:device];
  v6 = v5;
  if (v5)
  {
    *(v5 + 18) = self->_kernelWidth;
    *(v5 + 19) = self->_kernelHeight;
    *(v5 + 20) = self->_inputFeatureChannels;
    *(v5 + 21) = self->_outputFeatureChannels;
    *(v5 + 22) = self->_strideInPixelsX;
    *(v5 + 23) = self->_strideInPixelsY;
    *(v5 + 24) = self->_groups;
    *(v5 + 25) = self->_dilationRateInX;
    *(v5 + 26) = self->_dilationRateInY;
    *(v5 + 27) = self->_channelMultiplier;
    *(v5 + 56) = self->_dataFormat;
    *(v5 + 57) = self->_weightsFormat;
    *(v5 + 232) = self->_offsets;
    *(v5 + 32) = self->_ndArrayIdentity;
    autoTuningTarget = self->_autoTuningTarget;
    v6[76] = autoTuningTarget;
    if (self->_autoTuningParams)
    {
      if (autoTuningTarget == 2)
      {
        v9 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
        *(v6 + 37) = v9;
        autoTuningParams = self->_autoTuningParams;
        v11 = autoTuningParams[4];
        *v9 = *autoTuningParams;
        v9[4] = v11;
      }

      else if (autoTuningTarget == 1)
      {
        v8 = malloc_type_malloc(0x10uLL, 0x100004099076E91uLL);
        *(v6 + 37) = v8;
        *v8 = *self->_autoTuningParams;
      }
    }

    *(v6 + 17) = EncodeNDArrayConvolution2D;
    *(v6 + 12) = v6;
  }

  return v6;
}

- (MPSNDArrayConvolution2D)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayConvolution2D;
  v6 = [MPSNDArrayMultiaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v6)
  {
    v6->_kernelWidth = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelWidth"];
    v6->_kernelHeight = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelHeight"];
    v6->_inputFeatureChannels = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.inputChannels"];
    v6->_outputFeatureChannels = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.outputChannels"];
    v6->_strideInPixelsX = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.strideInPixelsX"];
    v6->_strideInPixelsY = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.strideInPixelsY"];
    v6->_groups = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.groups"];
    v6->_dilationRateInX = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.dilationRateInX"];
    v6->_dilationRateInY = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.dilationRateInY"];
    v6->_channelMultiplier = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.channelMultiplier"];
    v6->_dataFormat = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.dataFormat"];
    v6->_weightsFormat = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.weightsFormat"];
    v6->_offsets.offset[0] = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.offset0"];
    v6->_offsets.offset[1] = [coder decodeInt64ForKey:@"MPSNDArrayConvolution2D.offset1"];
    v6->_ndArrayIdentity = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    v6->_autoTuningParams = 0;
    v6->_autoTuningTarget = 0;
    v6->_autoTuneIteration = -1;
    v6->_nextAutoTuneIteration = -1;
    v6->_logNextAutoTuneParams = 0;
    v6->_allowFP16WinogradTransformIntermediate = 0;
    v6->super._encode = EncodeNDArrayConvolution2D;
    v6->super.super._encodeData = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  v5.receiver = self;
  v5.super_class = MPSNDArrayConvolution2D;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeInt64:selfCopy->_kernelWidth forKey:@"MPSNDArrayConvolution2D.kernelWidth"];
  [coder encodeInt64:selfCopy->_kernelHeight forKey:@"MPSNDArrayConvolution2D.kernelHeight"];
  [coder encodeInt64:selfCopy->_inputFeatureChannels forKey:@"MPSNDArrayConvolution2D.inputChannels"];
  [coder encodeInt64:selfCopy->_outputFeatureChannels forKey:@"MPSNDArrayConvolution2D.outputChannels"];
  [coder encodeInt64:selfCopy->_strideInPixelsX forKey:@"MPSNDArrayConvolution2D.strideInPixelsX"];
  [coder encodeInt64:selfCopy->_strideInPixelsY forKey:@"MPSNDArrayConvolution2D.strideInPixelsY"];
  [coder encodeInt64:selfCopy->_groups forKey:@"MPSNDArrayConvolution2D.groups"];
  [coder encodeInt64:selfCopy->_dilationRateInX forKey:@"MPSNDArrayConvolution2D.dilationRateInX"];
  [coder encodeInt64:selfCopy->_dilationRateInY forKey:@"MPSNDArrayConvolution2D.dilationRateInY"];
  [coder encodeInt64:selfCopy->_channelMultiplier forKey:@"MPSNDArrayConvolution2D.channelMultiplier"];
  [coder encodeInt64:selfCopy->_dataFormat forKey:@"MPSNDArrayConvolution2D.dataFormat"];
  [coder encodeInt64:selfCopy->_weightsFormat forKey:@"MPSNDArrayConvolution2D.weightsFormat"];
  selfCopy = (selfCopy + 232);
  [coder encodeInt64:selfCopy->super.super.super.super.isa forKey:@"MPSNDArrayConvolution2D.offset0"];
  [coder encodeInt64:selfCopy->super.super.super._options forKey:@"MPSNDArrayConvolution2D.offset1"];
}

- (double)stridesAtSourceIndex:(uint64_t)index@<X0>
{
  *(&v2 + 1) = 0x100000001;
  LODWORD(v2) = *(index + 176);
  DWORD1(v2) = *(index + 184);
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  a2[2] = v3;
  a2[3] = v3;
  *a2 = v2;
  a2[1] = v3;
  return *&v2;
}

- (double)destinationStrides
{
  result = 0.0;
  self[2] = 0u;
  self[3] = 0u;
  *self = xmmword_239B0A0D0;
  self[1] = 0u;
  return result;
}

- (MPSNDArrayConvolution2D)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v26.receiver = self;
  v26.super_class = MPSNDArrayConvolution2D;
  v6 = [(MPSNDArrayMultiaryBase *)&v26 destinationArrayDescriptorForSourceArrays:arrays sourceState:state];
  v7 = [arrays objectAtIndexedSubscript:0];
  v8 = (v7 + *MEMORY[0x277CD7410]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13.i32[0] = GetAxisIndexForDataFormat(MPSNDArrayConvolution2DDataFormat)::axis[self->_dataFormat];
  v21 = vmovl_u8(v13).u64[0];
  v22 = vzip1_s8(*(v7 + *MEMORY[0x277CD73D8]), *(v7 + *MEMORY[0x277CD73D8]));
  v23[2] = v11;
  v23[3] = v12;
  v23[0] = v9;
  v23[1] = v10;
  v14 = *(v23 + (*(&v22 & 0xFFFFFFFFFFFFFFF9 | (2 * (v21 & 3))) & 0xF));
  v24[2] = v11;
  v24[3] = v12;
  v24[0] = v9;
  v24[1] = v10;
  v15 = *(v24 + (*(&v22 & 0xFFFFFFFFFFFFFFF9 | (2 * (BYTE4(v21) & 3))) & 0xF));
  v25[2] = v11;
  v25[3] = v12;
  v25[0] = v9;
  v25[1] = v10;
  outputFeatureChannels = self->_outputFeatureChannels;
  v17 = (*(v25 + (*(&v22 & 0xFFFFFFFFFFFFFFF9 | (2 * (BYTE6(v21) & 3))) & 0xF)) + self->_strideInPixelsX - 1) / self->_strideInPixelsX;
  v18 = (v15 + self->_strideInPixelsY - 1) / self->_strideInPixelsY;
  v19 = MEMORY[0x277CD7438];
  *(&v6->super.isa + *MEMORY[0x277CD7438]) = 0;
  *(&v6->super.isa + *v19 + 1) = 1;
  *(&v6->super.isa + *v19 + 2) = 2;
  *(&v6->super.isa + *v19 + 3) = 3;
  [(MPSNDArrayDescriptor *)v6 setLengthOfDimension:v14 atIndex:v21];
  [(MPSNDArrayDescriptor *)v6 setLengthOfDimension:outputFeatureChannels atIndex:WORD1(v21)];
  [(MPSNDArrayDescriptor *)v6 setLengthOfDimension:v18 atIndex:WORD2(v21)];
  [(MPSNDArrayDescriptor *)v6 setLengthOfDimension:v17 atIndex:HIWORD(v21)];
  [(MPSNDArrayDescriptor *)v6 sliceDimension:v21 withSubrange:0, v14];
  [(MPSNDArrayDescriptor *)v6 sliceDimension:WORD1(v21) withSubrange:0, outputFeatureChannels];
  [(MPSNDArrayDescriptor *)v6 sliceDimension:WORD2(v21) withSubrange:0, v18];
  [(MPSNDArrayDescriptor *)v6 sliceDimension:HIWORD(v21) withSubrange:0, v17];
  return v6;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v213.receiver = self;
  v213.super_class = MPSNDArrayConvolution2D;
  object = [(MPSNDArrayMultiaryBase *)&v213 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
  v10 = *(kernel + 56);
  if (v10)
  {
    if (v10 == 2)
    {
      v31 = [arrays objectAtIndexedSubscript:0];
      v32 = MEMORY[0x277CD7410];
      v33 = (v31 + *MEMORY[0x277CD7410]);
      v185 = *v33;
      v34 = v33[2];
      v146 = v34;
      v165 = v33[1];
      v128 = v33[3];
      v35 = [arrays objectAtIndexedSubscript:0];
      v36 = MEMORY[0x277CD73D8];
      v37 = *(v35 + *MEMORY[0x277CD73D8] + 3) & 0xF;
      v212[3] = v128;
      v212[2] = v146;
      v212[1] = v165;
      v212[0] = v185;
      v30 = *(v212 + v37);
      v38 = ([arrays objectAtIndexedSubscript:0] + *v32);
      v186 = *v38;
      v39 = v38[2];
      v147 = v39;
      v166 = v38[1];
      v129 = v38[3];
      v40 = *([arrays objectAtIndexedSubscript:0] + *v36 + 2) & 0xF;
      v211[3] = v129;
      v211[2] = v147;
      v211[1] = v166;
      v211[0] = v186;
      v22 = *(v211 + v40);
      v41 = ([arrays objectAtIndexedSubscript:0] + *v32);
      v187 = *v41;
      v42 = v41[2];
      v148 = v42;
      v167 = v41[1];
      v130 = v41[3];
      v43 = *([arrays objectAtIndexedSubscript:0] + *v36 + 1) & 0xF;
      v210[3] = v130;
      v210[2] = v148;
      v210[1] = v167;
      v210[0] = v187;
      v26 = *(v210 + v43);
      v44 = ([arrays objectAtIndexedSubscript:0] + *v32);
      v188 = *v44;
      v45 = v44[2];
      v149 = v45;
      v168 = v44[1];
      v131 = v44[3];
      v46 = *([arrays objectAtIndexedSubscript:0] + *v36);
      v209[3] = v131;
      v209[2] = v149;
      v209[1] = v168;
      v209[0] = v188;
      v18 = *(v209 + (v46 & 0xF));
    }

    else if (v10 == 1)
    {
      v11 = [arrays objectAtIndexedSubscript:0];
      v12 = MEMORY[0x277CD7410];
      v13 = (v11 + *MEMORY[0x277CD7410]);
      v181 = *v13;
      v14 = v13[2];
      v142 = v14;
      v161 = v13[1];
      v124 = v13[3];
      v15 = [arrays objectAtIndexedSubscript:0];
      v16 = MEMORY[0x277CD73D8];
      v17 = *(v15 + *MEMORY[0x277CD73D8] + 3) & 0xF;
      v204[2] = v142;
      v204[3] = v124;
      v204[0] = v181;
      v204[1] = v161;
      v18 = *(v204 + v17);
      v19 = ([arrays objectAtIndexedSubscript:0] + *v12);
      v182 = *v19;
      v20 = v19[2];
      v143 = v20;
      v162 = v19[1];
      v125 = v19[3];
      v21 = *([arrays objectAtIndexedSubscript:0] + *v16 + 2) & 0xF;
      v203[2] = v143;
      v203[3] = v125;
      v203[0] = v182;
      v203[1] = v162;
      v22 = *(v203 + v21);
      v23 = ([arrays objectAtIndexedSubscript:0] + *v12);
      v183 = *v23;
      v24 = v23[2];
      v144 = v24;
      v163 = v23[1];
      v126 = v23[3];
      v25 = *([arrays objectAtIndexedSubscript:0] + *v16 + 1) & 0xF;
      v202[2] = v144;
      v202[3] = v126;
      v202[0] = v183;
      v202[1] = v163;
      v26 = *(v202 + v25);
      v27 = ([arrays objectAtIndexedSubscript:0] + *v12);
      v184 = *v27;
      v28 = v27[2];
      v145 = v28;
      v164 = v27[1];
      v127 = v27[3];
      v29 = *([arrays objectAtIndexedSubscript:0] + *v16);
      v201[2] = v145;
      v201[3] = v127;
      v201[0] = v184;
      v201[1] = v164;
      v30 = *(v201 + (v29 & 0xF));
    }

    else
    {
      v18 = 0;
      v30 = 0;
      v22 = 0;
      v26 = 0;
    }
  }

  else
  {
    v47 = [arrays objectAtIndexedSubscript:0];
    v48 = MEMORY[0x277CD7410];
    v49 = (v47 + *MEMORY[0x277CD7410]);
    v189 = *v49;
    v50 = v49[2];
    v150 = v50;
    v169 = v49[1];
    v132 = v49[3];
    v51 = [arrays objectAtIndexedSubscript:0];
    v52 = MEMORY[0x277CD73D8];
    v53 = *(v51 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v208[3] = v132;
    v208[2] = v150;
    v208[1] = v169;
    v208[0] = v189;
    v18 = *(v208 + v53);
    v54 = ([arrays objectAtIndexedSubscript:0] + *v48);
    v190 = *v54;
    v55 = v54[2];
    v151 = v55;
    v170 = v54[1];
    v133 = v54[3];
    v56 = *([arrays objectAtIndexedSubscript:0] + *v52 + 2) & 0xF;
    v207[3] = v133;
    v207[1] = v170;
    v207[2] = v151;
    v207[0] = v190;
    v30 = *(v207 + v56);
    v57 = ([arrays objectAtIndexedSubscript:0] + *v48);
    v191 = *v57;
    v58 = v57[2];
    v152 = v58;
    v171 = v57[1];
    v134 = v57[3];
    v59 = *([arrays objectAtIndexedSubscript:0] + *v52 + 1) & 0xF;
    v206[2] = v152;
    v206[3] = v134;
    v206[0] = v191;
    v206[1] = v171;
    v22 = *(v206 + v59);
    v60 = ([arrays objectAtIndexedSubscript:0] + *v48);
    v192 = *v60;
    v61 = v60[2];
    v153 = v61;
    v172 = v60[1];
    v135 = v60[3];
    v62 = *([arrays objectAtIndexedSubscript:0] + *v52);
    v205[2] = v153;
    v205[3] = v135;
    v205[0] = v192;
    v205[1] = v172;
    v26 = *(v205 + (v62 & 0xF));
  }

  kernelCopy = kernel;
  v193 = v26;
  v63 = v18;
  v64 = *(kernel + 57);
  if (v64 == 1)
  {
    v78 = [arrays objectAtIndexedSubscript:1];
    v79 = MEMORY[0x277CD7410];
    v80 = (v78 + *MEMORY[0x277CD7410]);
    v157 = v80[1];
    v176 = *v80;
    v121 = v80[3];
    v139 = v80[2];
    v81 = [arrays objectAtIndexedSubscript:1];
    v82 = MEMORY[0x277CD73D8];
    v83 = *(v81 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v200[2] = v139;
    v200[3] = v121;
    v200[0] = v176;
    v200[1] = v157;
    v77 = *(v200 + v83);
    v84 = ([arrays objectAtIndexedSubscript:1] + *v79);
    v158 = v84[1];
    v177 = *v84;
    v122 = v84[3];
    v140 = v84[2];
    v85 = *([arrays objectAtIndexedSubscript:1] + *v82 + 1) & 0xF;
    v199[2] = v140;
    v199[3] = v122;
    v199[0] = v177;
    v199[1] = v158;
    v71 = *(v199 + v85);
    v86 = ([arrays objectAtIndexedSubscript:1] + *v79);
    v159 = v86[1];
    v178 = *v86;
    v123 = v86[3];
    v141 = v86[2];
    v87 = *([arrays objectAtIndexedSubscript:1] + *v82);
    v198[2] = v141;
    v198[3] = v123;
    v198[0] = v178;
    v198[1] = v159;
    v74 = *(v198 + (v87 & 0xF));
  }

  else if (v64)
  {
    v71 = 0;
    v74 = 0;
    v77 = 0;
  }

  else
  {
    v65 = [arrays objectAtIndexedSubscript:1];
    v66 = MEMORY[0x277CD7410];
    v67 = (v65 + *MEMORY[0x277CD7410]);
    v154 = v67[1];
    v173 = *v67;
    v118 = v67[3];
    v136 = v67[2];
    v68 = [arrays objectAtIndexedSubscript:1];
    v69 = MEMORY[0x277CD73D8];
    v70 = *(v68 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v197[2] = v136;
    v197[3] = v118;
    v197[0] = v173;
    v197[1] = v154;
    v71 = *(v197 + v70);
    v72 = ([arrays objectAtIndexedSubscript:1] + *v66);
    v155 = v72[1];
    v174 = *v72;
    v119 = v72[3];
    v137 = v72[2];
    v73 = *([arrays objectAtIndexedSubscript:1] + *v69 + 2) & 0xF;
    v196[2] = v137;
    v196[3] = v119;
    v196[0] = v174;
    v196[1] = v155;
    v74 = *(v196 + v73);
    v75 = ([arrays objectAtIndexedSubscript:1] + *v66);
    v156 = v75[1];
    v175 = *v75;
    v120 = v75[3];
    v138 = v75[2];
    v76 = *([arrays objectAtIndexedSubscript:1] + *v69);
    v195[2] = v138;
    v195[3] = v120;
    v195[0] = v175;
    v195[1] = v156;
    v77 = *(v195 + (v76 & 0xF));
  }

  v88 = v77;
  v89 = v74;
  v90 = v71;
  v179 = v22;
  v160 = v63;
  v91 = v22 * v63 * v193;
  v92 = v30;
  v93 = v30 * v71 * v89;
  v94 = MEMORY[0x277CD73C8];
  v95 = (v91 * v88 * v93);
  if ((*(destArrays + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [object setFloat32Ops:v95];
    [object setFloat16Ops:0.0];
  }

  else
  {
    [object setFloat16Ops:v95];
    [object setFloat32Ops:0.0];
  }

  [object float32Ops];
  v97 = v96;
  [object float16Ops];
  v99 = v97 + v98;
  [object deviceMemoryBytesRead];
  v101 = v100;
  [object deviceMemoryBytesWrite];
  v103 = v99 / (v101 + v102);
  v104 = *([arrays objectAtIndexedSubscript:0] + *v94);
  v105 = MPSGetDataTypeName();
  v106 = *([arrays objectAtIndexedSubscript:1] + *v94);
  v107 = MPSGetDataTypeName();
  v108 = *(destArrays + *v94);
  v109 = MPSGetDataTypeName();
  MPSKernel_LogInfo(kernelCopy, 4uLL, "Convolution2D: N=%lu, C=%lu, H=%lu, W=%lu, kH=%lu, kW=%lu, O=%lu, matrixM=%lu, matrixN=%lu, matrixK=%lu, A Datatype: %s, B Datatype: %s C Datatype: %s\t", v160, v92, v179, v193, v90, v89, v88, v88, v91, v93, v105, v107, v109);
  [object float16Ops];
  v111 = v110;
  [object float32Ops];
  v113 = v112;
  [object deviceMemoryBytesRead];
  v115 = v114;
  [object deviceMemoryBytesWrite];
  MPSKernel_LogInfo(kernelCopy, 4uLL, "Convolution2D: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v111, v113, v115, v116, v103);
  return object;
}

- (BOOL)advanceAutoTuneIteration
{
  nextAutoTuneIteration = self->_nextAutoTuneIteration;
  self->_autoTuneIteration = nextAutoTuneIteration;
  return nextAutoTuneIteration > 0;
}

- (void)dealloc
{
  free(self->_autoTuningParams);
  v3.receiver = self;
  v3.super_class = MPSNDArrayConvolution2D;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end