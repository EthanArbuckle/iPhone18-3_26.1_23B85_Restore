@interface MPSNDArrayConvolution2DGradientWithInput
- (MPSNDArrayConvolution2DGradientWithInput)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayConvolution2DGradientWithInput)initWithDevice:(id)a3;
- (MPSNDArrayConvolution2DGradientWithInput)initWithDevice:(id)a3 ndArrayConvolution2DDescriptor:(id)a4;
- (MPSNDArrayConvolutionOffsets)kernelOffsets;
- (MPSNDArrayConvolutionOffsets)offsets;
- (MPSNDArrayConvolutionSizes)dilationRates;
- (MPSNDArrayConvolutionSizes)kernelSizes;
- (MPSNDArrayConvolutionSizes)strideInPixels;
- (double)destinationStrides;
- (double)stridesAtSourceIndex:(uint64_t)a1@<X0>;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAutoTuningParameters:(void *)a3;
@end

@implementation MPSNDArrayConvolution2DGradientWithInput

- (void)setAutoTuningParameters:(void *)a3
{
  free(self->_autoTuningParams);
  if ((*(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7350]))[368] < 26)
  {
    autoTuningTarget = self->_autoTuningTarget;
    if (autoTuningTarget == 2)
    {
      v11 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
      self->_autoTuningParams = v11;
      *v11 = *a3;
      v11[4] = *(a3 + 4);
    }

    else if (autoTuningTarget == 1)
    {
      v10 = malloc_type_malloc(0x10uLL, 0x100004099076E91uLL);
      self->_autoTuningParams = v10;
      *v10 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *(v10 + 6) = *(a3 + 6);
    }
  }

  else
  {
    v5 = malloc_type_malloc(0x50uLL, 0x10000404247E4FDuLL);
    self->_autoTuningParams = v5;
    *v5 = *a3;
    v6 = *(a3 + 4);
    v8 = *(a3 + 1);
    v7 = *(a3 + 2);
    v5[3] = *(a3 + 3);
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

- (MPSNDArrayConvolutionOffsets)kernelOffsets
{
  p_kernelOffsets = &self->_kernelOffsets;
  v3 = self->_kernelOffsets.offset[0];
  v4 = p_kernelOffsets->offset[1];
  result.offset[1] = v4;
  result.offset[0] = v3;
  return result;
}

- (MPSNDArrayConvolution2DGradientWithInput)initWithDevice:(id)a3 ndArrayConvolution2DDescriptor:(id)a4
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayConvolution2DGradientWithInput;
  v6 = [(MPSNDArrayBinaryPrimaryGradientKernel *)&v11 initWithDevice:?];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v8 = *(a4 + 7);
  if (*(a4 + 3) % v8)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_11:
      MTLReportFailure();
    }
  }

  else
  {
    if (!(*(a4 + 4) % v8))
    {
      v6->_kernelWidth = *(a4 + 1);
      v6->_kernelHeight = *(a4 + 2);
      v6->_inputFeatureChannels = *(a4 + 3);
      v6->_outputFeatureChannels = *(a4 + 4);
      v6->_strideInPixelsX = *(a4 + 5);
      v6->_strideInPixelsY = *(a4 + 6);
      v6->_groups = *(a4 + 7);
      v6->_dilationRateInX = *(a4 + 8);
      v6->_dilationRateInY = *(a4 + 9);
      v6->_channelMultiplier = *(a4 + 10);
      v9 = *(a4 + 23);
      v6->_dataFormat = *(a4 + 22);
      v6->_weightsFormat = v9;
      v6->_offsets.offset[0] = 0;
      v6->_offsets.offset[1] = 0;
      v6->_kernelOffsets.offset[0] = 0;
      v6->_kernelOffsets.offset[1] = 0;
      v6->_ndArrayIdentity = [[MPSNDArrayIdentity alloc] initWithDevice:a3];
      v7->_forcePlugin = 0;
      v7->_autoTuningParams = 0;
      v7->_autoTuningTarget = 0;
      if (MPSIsReducedPrecision())
      {
        *(&v7->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) = (*(&v7->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) | 2);
      }

      v7->super.super.super._encodeGradient = EncodeNDArrayConvolution2DGradientWithIntput;
      v7->super.super.super._encodeData = v7;
      return v7;
    }

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_11;
    }
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v13.receiver = self;
  v13.super_class = MPSNDArrayConvolution2DGradientWithInput;
  v5 = [(MPSNDArrayMultiaryGradientKernel *)&v13 copyWithZone:a3 device:a4];
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
    *(v5 + 248) = self->_kernelOffsets;
    *(v5 + 34) = self->_ndArrayIdentity;
    v6[74] = 0;
    if (self->_autoTuningParams)
    {
      autoTuningTarget = self->_autoTuningTarget;
      if (autoTuningTarget == 2)
      {
        v9 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
        *(v6 + 36) = v9;
        autoTuningParams = self->_autoTuningParams;
        v11 = autoTuningParams[4];
        *v9 = *autoTuningParams;
        v9[4] = v11;
      }

      else if (autoTuningTarget == 1)
      {
        v8 = malloc_type_malloc(0x10uLL, 0x100004099076E91uLL);
        *(v6 + 36) = v8;
        *v8 = *self->_autoTuningParams;
      }
    }

    *(v6 + 13) = EncodeNDArrayConvolution2DGradientWithIntput;
    *(v6 + 12) = v6;
  }

  return v6;
}

- (MPSNDArrayConvolution2DGradientWithInput)initWithCoder:(id)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayConvolution2DGradientWithInput;
  v6 = [MPSNDArrayBinaryPrimaryGradientKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v6)
  {
    v6->_kernelWidth = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelWidth"];
    v6->_kernelHeight = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelHeight"];
    v6->_inputFeatureChannels = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.inputChannels"];
    v6->_outputFeatureChannels = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.outputChannels"];
    v6->_strideInPixelsX = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.strideInPixelsX"];
    v6->_strideInPixelsY = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.strideInPixelsY"];
    v6->_groups = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.groups"];
    v6->_dilationRateInX = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.dilationRateInX"];
    v6->_dilationRateInY = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.dilationRateInY"];
    v6->_channelMultiplier = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.channelMultiplier"];
    v6->_dataFormat = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.dataFormat"];
    v6->_weightsFormat = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.weightsFormat"];
    v6->_offsets.offset[0] = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.offset0"];
    v6->_offsets.offset[1] = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.offset1"];
    v6->_kernelOffsets.offset[0] = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelOffset0"];
    v6->_kernelOffsets.offset[1] = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelOffset1"];
    v6->_ndArrayIdentity = [[MPSNDArrayIdentity alloc] initWithDevice:a4];
    v6->super.super.super._encodeGradient = EncodeNDArrayConvolution2DGradientWithIntput;
    v6->super.super.super._encodeData = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  v5.receiver = self;
  v5.super_class = MPSNDArrayConvolution2DGradientWithInput;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
  [a3 encodeInt64:v4->_kernelWidth forKey:@"MPSNDArrayConvolution2D.kernelWidth"];
  [a3 encodeInt64:v4->_kernelHeight forKey:@"MPSNDArrayConvolution2D.kernelHeight"];
  [a3 encodeInt64:v4->_inputFeatureChannels forKey:@"MPSNDArrayConvolution2D.inputChannels"];
  [a3 encodeInt64:v4->_outputFeatureChannels forKey:@"MPSNDArrayConvolution2D.outputChannels"];
  [a3 encodeInt64:v4->_strideInPixelsX forKey:@"MPSNDArrayConvolution2D.strideInPixelsX"];
  [a3 encodeInt64:v4->_strideInPixelsY forKey:@"MPSNDArrayConvolution2D.strideInPixelsY"];
  [a3 encodeInt64:v4->_groups forKey:@"MPSNDArrayConvolution2D.groups"];
  [a3 encodeInt64:v4->_dilationRateInX forKey:@"MPSNDArrayConvolution2D.dilationRateInX"];
  [a3 encodeInt64:v4->_dilationRateInY forKey:@"MPSNDArrayConvolution2D.dilationRateInY"];
  [a3 encodeInt64:v4->_channelMultiplier forKey:@"MPSNDArrayConvolution2D.channelMultiplier"];
  [a3 encodeInt64:v4->_dataFormat forKey:@"MPSNDArrayConvolution2D.dataFormat"];
  [a3 encodeInt64:v4->_weightsFormat forKey:@"MPSNDArrayConvolution2D.weightsFormat"];
  [a3 encodeInt64:v4->_offsets.offset[0] forKey:@"MPSNDArrayConvolution2D.offset0"];
  [a3 encodeInt64:v4->_offsets.offset[1] forKey:@"MPSNDArrayConvolution2D.offset1"];
  v4 = (v4 + 248);
  [a3 encodeInt64:v4->super.super.super.super.super.isa forKey:@"MPSNDArrayConvolution2D.kernelOffset0"];
  [a3 encodeInt64:v4->super.super.super.super._options forKey:@"MPSNDArrayConvolution2D.kernelOffset1"];
}

- (double)stridesAtSourceIndex:(uint64_t)a1@<X0>
{
  *(&v2 + 1) = 0x100000001;
  LODWORD(v2) = *(a1 + 176);
  DWORD1(v2) = *(a1 + 184);
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
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = xmmword_239B0A0D0;
  a1[1] = 0u;
  return result;
}

- (MPSNDArrayConvolution2DGradientWithInput)initWithDevice:(id)a3
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v213.receiver = self;
  v213.super_class = MPSNDArrayConvolution2DGradientWithInput;
  v9 = [(MPSNDArrayMultiaryBase *)&v213 workloadStatisticsForSourceArrays:a3 destArrays:a4 sourceState:a7, a6];
  v10 = *(a5 + 56);
  if (v10)
  {
    if (v10 == 2)
    {
      v31 = [a3 objectAtIndexedSubscript:0];
      v32 = MEMORY[0x277CD7410];
      v33 = (v31 + *MEMORY[0x277CD7410]);
      v185 = *v33;
      v34 = v33[2];
      v146 = v34;
      v165 = v33[1];
      v128 = v33[3];
      v35 = [a3 objectAtIndexedSubscript:0];
      v36 = MEMORY[0x277CD73D8];
      v37 = *(v35 + *MEMORY[0x277CD73D8] + 3) & 0xF;
      v212[3] = v128;
      v212[2] = v146;
      v212[1] = v165;
      v212[0] = v185;
      v30 = *(v212 + v37);
      v38 = ([a3 objectAtIndexedSubscript:0] + *v32);
      v186 = *v38;
      v39 = v38[2];
      v147 = v39;
      v166 = v38[1];
      v129 = v38[3];
      v40 = *([a3 objectAtIndexedSubscript:0] + *v36 + 2) & 0xF;
      v211[3] = v129;
      v211[2] = v147;
      v211[1] = v166;
      v211[0] = v186;
      v22 = *(v211 + v40);
      v41 = ([a3 objectAtIndexedSubscript:0] + *v32);
      v187 = *v41;
      v42 = v41[2];
      v148 = v42;
      v167 = v41[1];
      v130 = v41[3];
      v43 = *([a3 objectAtIndexedSubscript:0] + *v36 + 1) & 0xF;
      v210[3] = v130;
      v210[2] = v148;
      v210[1] = v167;
      v210[0] = v187;
      v26 = *(v210 + v43);
      v44 = ([a3 objectAtIndexedSubscript:0] + *v32);
      v188 = *v44;
      v45 = v44[2];
      v149 = v45;
      v168 = v44[1];
      v131 = v44[3];
      v46 = *([a3 objectAtIndexedSubscript:0] + *v36);
      v209[3] = v131;
      v209[2] = v149;
      v209[1] = v168;
      v209[0] = v188;
      v18 = *(v209 + (v46 & 0xF));
    }

    else if (v10 == 1)
    {
      v11 = [a3 objectAtIndexedSubscript:0];
      v12 = MEMORY[0x277CD7410];
      v13 = (v11 + *MEMORY[0x277CD7410]);
      v181 = *v13;
      v14 = v13[2];
      v142 = v14;
      v161 = v13[1];
      v124 = v13[3];
      v15 = [a3 objectAtIndexedSubscript:0];
      v16 = MEMORY[0x277CD73D8];
      v17 = *(v15 + *MEMORY[0x277CD73D8] + 3) & 0xF;
      v204[2] = v142;
      v204[3] = v124;
      v204[0] = v181;
      v204[1] = v161;
      v18 = *(v204 + v17);
      v19 = ([a3 objectAtIndexedSubscript:0] + *v12);
      v182 = *v19;
      v20 = v19[2];
      v143 = v20;
      v162 = v19[1];
      v125 = v19[3];
      v21 = *([a3 objectAtIndexedSubscript:0] + *v16 + 2) & 0xF;
      v203[2] = v143;
      v203[3] = v125;
      v203[0] = v182;
      v203[1] = v162;
      v22 = *(v203 + v21);
      v23 = ([a3 objectAtIndexedSubscript:0] + *v12);
      v183 = *v23;
      v24 = v23[2];
      v144 = v24;
      v163 = v23[1];
      v126 = v23[3];
      v25 = *([a3 objectAtIndexedSubscript:0] + *v16 + 1) & 0xF;
      v202[2] = v144;
      v202[3] = v126;
      v202[0] = v183;
      v202[1] = v163;
      v26 = *(v202 + v25);
      v27 = ([a3 objectAtIndexedSubscript:0] + *v12);
      v184 = *v27;
      v28 = v27[2];
      v145 = v28;
      v164 = v27[1];
      v127 = v27[3];
      v29 = *([a3 objectAtIndexedSubscript:0] + *v16);
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
    v47 = [a3 objectAtIndexedSubscript:0];
    v48 = MEMORY[0x277CD7410];
    v49 = (v47 + *MEMORY[0x277CD7410]);
    v189 = *v49;
    v50 = v49[2];
    v150 = v50;
    v169 = v49[1];
    v132 = v49[3];
    v51 = [a3 objectAtIndexedSubscript:0];
    v52 = MEMORY[0x277CD73D8];
    v53 = *(v51 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v208[3] = v132;
    v208[2] = v150;
    v208[1] = v169;
    v208[0] = v189;
    v18 = *(v208 + v53);
    v54 = ([a3 objectAtIndexedSubscript:0] + *v48);
    v190 = *v54;
    v55 = v54[2];
    v151 = v55;
    v170 = v54[1];
    v133 = v54[3];
    v56 = *([a3 objectAtIndexedSubscript:0] + *v52 + 2) & 0xF;
    v207[3] = v133;
    v207[1] = v170;
    v207[2] = v151;
    v207[0] = v190;
    v30 = *(v207 + v56);
    v57 = ([a3 objectAtIndexedSubscript:0] + *v48);
    v191 = *v57;
    v58 = v57[2];
    v152 = v58;
    v171 = v57[1];
    v134 = v57[3];
    v59 = *([a3 objectAtIndexedSubscript:0] + *v52 + 1) & 0xF;
    v206[2] = v152;
    v206[3] = v134;
    v206[0] = v191;
    v206[1] = v171;
    v22 = *(v206 + v59);
    v60 = ([a3 objectAtIndexedSubscript:0] + *v48);
    v192 = *v60;
    v61 = v60[2];
    v153 = v61;
    v172 = v60[1];
    v135 = v60[3];
    v62 = *([a3 objectAtIndexedSubscript:0] + *v52);
    v205[2] = v153;
    v205[3] = v135;
    v205[0] = v192;
    v205[1] = v172;
    v26 = *(v205 + (v62 & 0xF));
  }

  v180 = a5;
  v193 = v26;
  v63 = v18;
  v64 = *(a5 + 57);
  if (v64 == 1)
  {
    v78 = [a3 objectAtIndexedSubscript:1];
    v79 = MEMORY[0x277CD7410];
    v80 = (v78 + *MEMORY[0x277CD7410]);
    v157 = v80[1];
    v176 = *v80;
    v121 = v80[3];
    v139 = v80[2];
    v81 = [a3 objectAtIndexedSubscript:1];
    v82 = MEMORY[0x277CD73D8];
    v83 = *(v81 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v200[2] = v139;
    v200[3] = v121;
    v200[0] = v176;
    v200[1] = v157;
    v77 = *(v200 + v83);
    v84 = ([a3 objectAtIndexedSubscript:1] + *v79);
    v158 = v84[1];
    v177 = *v84;
    v122 = v84[3];
    v140 = v84[2];
    v85 = *([a3 objectAtIndexedSubscript:1] + *v82 + 1) & 0xF;
    v199[2] = v140;
    v199[3] = v122;
    v199[0] = v177;
    v199[1] = v158;
    v71 = *(v199 + v85);
    v86 = ([a3 objectAtIndexedSubscript:1] + *v79);
    v159 = v86[1];
    v178 = *v86;
    v123 = v86[3];
    v141 = v86[2];
    v87 = *([a3 objectAtIndexedSubscript:1] + *v82);
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
    v65 = [a3 objectAtIndexedSubscript:1];
    v66 = MEMORY[0x277CD7410];
    v67 = (v65 + *MEMORY[0x277CD7410]);
    v154 = v67[1];
    v173 = *v67;
    v118 = v67[3];
    v136 = v67[2];
    v68 = [a3 objectAtIndexedSubscript:1];
    v69 = MEMORY[0x277CD73D8];
    v70 = *(v68 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v197[2] = v136;
    v197[3] = v118;
    v197[0] = v173;
    v197[1] = v154;
    v71 = *(v197 + v70);
    v72 = ([a3 objectAtIndexedSubscript:1] + *v66);
    v155 = v72[1];
    v174 = *v72;
    v119 = v72[3];
    v137 = v72[2];
    v73 = *([a3 objectAtIndexedSubscript:1] + *v69 + 2) & 0xF;
    v196[2] = v137;
    v196[3] = v119;
    v196[0] = v174;
    v196[1] = v155;
    v74 = *(v196 + v73);
    v75 = ([a3 objectAtIndexedSubscript:1] + *v66);
    v156 = v75[1];
    v175 = *v75;
    v120 = v75[3];
    v138 = v75[2];
    v76 = *([a3 objectAtIndexedSubscript:1] + *v69);
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
  if ((*(a4 + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [v9 setFloat32Ops:v95];
    [v9 setFloat16Ops:0.0];
  }

  else
  {
    [v9 setFloat16Ops:v95];
    [v9 setFloat32Ops:0.0];
  }

  [v9 float32Ops];
  v97 = v96;
  [v9 float16Ops];
  v99 = v97 + v98;
  [v9 deviceMemoryBytesRead];
  v101 = v100;
  [v9 deviceMemoryBytesWrite];
  v103 = v99 / (v101 + v102);
  v104 = *([a3 objectAtIndexedSubscript:0] + *v94);
  v105 = MPSGetDataTypeName();
  v106 = *([a3 objectAtIndexedSubscript:1] + *v94);
  v107 = MPSGetDataTypeName();
  v108 = *(a4 + *v94);
  v109 = MPSGetDataTypeName();
  MPSKernel_LogInfo(v180, 4uLL, "Convolution2DGradientWithInput: N=%lu, C=%lu, H=%lu, W=%lu, kH=%lu, kW=%lu, O=%lu, matrixM=%lu, matrixN=%lu, matrixK=%lu, A Datatype: %s, B Datatype: %s C Datatype: %s\t", v160, v92, v179, v193, v90, v89, v88, v88, v91, v93, v105, v107, v109);
  [v9 float16Ops];
  v111 = v110;
  [v9 float32Ops];
  v113 = v112;
  [v9 deviceMemoryBytesRead];
  v115 = v114;
  [v9 deviceMemoryBytesWrite];
  MPSKernel_LogInfo(v180, 4uLL, "Convolution2DGradientWithInput: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v111, v113, v115, v116, v103);
  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayConvolution2DGradientWithInput;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end