@interface MPSNDArrayConvolution2DGradientWithWeights
- (MPSNDArrayConvolution2DGradientWithWeights)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayConvolution2DGradientWithWeights)initWithDevice:(id)a3;
- (MPSNDArrayConvolution2DGradientWithWeights)initWithDevice:(id)a3 ndArrayConvolution2DDescriptor:(id)a4;
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

@implementation MPSNDArrayConvolution2DGradientWithWeights

- (void)setAutoTuningParameters:(void *)a3
{
  free(self->_autoTuningParams);
  if (((*(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7350]))[1477] & 4) != 0)
  {
    v7 = malloc_type_malloc(0x30uLL, 0x10000400D0814F3uLL);
    self->_autoTuningParams = v7;
    v9 = *(a3 + 1);
    v8 = *(a3 + 2);
    *v7 = *a3;
    v7[1] = v9;
    v7[2] = v8;
  }

  else
  {
    v5 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    self->_autoTuningParams = v5;
    v6 = *(a3 + 1);
    *v5 = *a3;
    v5[1] = v6;
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

- (MPSNDArrayConvolution2DGradientWithWeights)initWithDevice:(id)a3 ndArrayConvolution2DDescriptor:(id)a4
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayConvolution2DGradientWithWeights;
  result = [(MPSNDArrayBinarySecondaryGradientKernel *)&v9 initWithDevice:a3];
  if (result)
  {
    v6 = *(a4 + 7);
    if (*(a4 + 3) % v6)
    {
      v8 = result;
      if (MTLReportFailureTypeEnabled())
      {
LABEL_9:
        MTLReportFailure();
      }
    }

    else
    {
      if (!(*(a4 + 4) % v6))
      {
        result->_kernelWidth = *(a4 + 1);
        result->_kernelHeight = *(a4 + 2);
        result->_inputFeatureChannels = *(a4 + 3);
        result->_outputFeatureChannels = *(a4 + 4);
        result->_strideInPixelsX = *(a4 + 5);
        result->_strideInPixelsY = *(a4 + 6);
        result->_groups = *(a4 + 7);
        result->_dilationRateInX = *(a4 + 8);
        result->_dilationRateInY = *(a4 + 9);
        result->_channelMultiplier = *(a4 + 10);
        v7 = *(a4 + 23);
        result->_dataFormat = *(a4 + 22);
        result->_weightsFormat = v7;
        result->_offsets.offset[0] = 0;
        result->_offsets.offset[1] = 0;
        result->_autoTuning = 0;
        result->_autoTuningParams = 0;
        result->_forcePlugin = 0;
        result->super.super.super._encodeGradient = EncodeNDArrayConvolution2DGradientWithWeights;
        result->super.super.super._encodeData = result;
        return result;
      }

      v8 = result;
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayConvolution2DGradientWithWeights;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    *(result + 18) = self->_kernelWidth;
    *(result + 19) = self->_kernelHeight;
    *(result + 20) = self->_inputFeatureChannels;
    *(result + 21) = self->_outputFeatureChannels;
    *(result + 22) = self->_strideInPixelsX;
    *(result + 23) = self->_strideInPixelsY;
    *(result + 24) = self->_groups;
    *(result + 25) = self->_dilationRateInX;
    *(result + 26) = self->_dilationRateInY;
    *(result + 27) = self->_channelMultiplier;
    *(result + 56) = self->_dataFormat;
    *(result + 57) = self->_weightsFormat;
    *(result + 232) = self->_offsets;
    *(result + 272) = 0;
    *(result + 13) = EncodeNDArrayConvolution2DGradientWithWeights;
    *(result + 12) = result;
  }

  return result;
}

- (MPSNDArrayConvolution2DGradientWithWeights)initWithCoder:(id)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayConvolution2DGradientWithWeights;
  v5 = [(MPSNDArrayBinarySecondaryGradientKernel *)&v8 initWithCoder:a3 device:a4];
  if (v5)
  {
    v5->_kernelWidth = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelWidth"];
    v5->_kernelHeight = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.kernelHeight"];
    v5->_inputFeatureChannels = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.inputChannels"];
    v5->_outputFeatureChannels = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.outputChannels"];
    v5->_strideInPixelsX = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.strideInPixelsX"];
    v5->_strideInPixelsY = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.strideInPixelsY"];
    v5->_groups = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.groups"];
    v5->_dilationRateInX = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.dilationRateInX"];
    v5->_dilationRateInY = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.dilationRateInY"];
    v5->_channelMultiplier = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.channelMultiplier"];
    v5->_dataFormat = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.dataFormat"];
    v5->_weightsFormat = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.weightsFormat"];
    v5->_offsets.offset[0] = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.offset0"];
    v6 = [a3 decodeInt64ForKey:@"MPSNDArrayConvolution2D.offset1"];
    v5->_autoTuning = 0;
    v5->_offsets.offset[1] = v6;
    v5->super.super.super._encodeGradient = EncodeNDArrayConvolution2DGradientWithWeights;
    v5->super.super.super._encodeData = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  v5.receiver = self;
  v5.super_class = MPSNDArrayConvolution2DGradientWithWeights;
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
  v4 = (v4 + 232);
  [a3 encodeInt64:v4->super.super.super.super.super.isa forKey:@"MPSNDArrayConvolution2D.offset0"];
  [a3 encodeInt64:v4->super.super.super.super._options forKey:@"MPSNDArrayConvolution2D.offset1"];
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

- (MPSNDArrayConvolution2DGradientWithWeights)initWithDevice:(id)a3
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
  v200.receiver = self;
  v200.super_class = MPSNDArrayConvolution2DGradientWithWeights;
  v9 = [(MPSNDArrayMultiaryBase *)&v200 workloadStatisticsForSourceArrays:a3 destArrays:a4 sourceState:a7, a6];
  v10 = *(a5 + 56);
  if (v10)
  {
    if (v10 == 2)
    {
      v27 = [a3 objectAtIndexedSubscript:0];
      v28 = MEMORY[0x277CD7410];
      v29 = (v27 + *MEMORY[0x277CD7410]);
      v159 = v29[1];
      v172 = *v29;
      v121 = v29[3];
      v139 = v29[2];
      v30 = [a3 objectAtIndexedSubscript:0];
      v31 = MEMORY[0x277CD73D8];
      v32 = *(v30 + *MEMORY[0x277CD73D8] + 3) & 0xF;
      v199[3] = v121;
      v199[2] = v139;
      v199[1] = v159;
      v199[0] = v172;
      v26 = *(v199 + v32);
      v33 = ([a3 objectAtIndexedSubscript:0] + *v28);
      v160 = v33[1];
      v173 = *v33;
      v122 = v33[3];
      v140 = v33[2];
      v34 = *([a3 objectAtIndexedSubscript:0] + *v31 + 2) & 0xF;
      v198[3] = v122;
      v198[2] = v140;
      v198[1] = v160;
      v198[0] = v173;
      v20 = *(v198 + v34);
      v35 = ([a3 objectAtIndexedSubscript:0] + *v28);
      v161 = v35[1];
      v174 = *v35;
      v123 = v35[3];
      v141 = v35[2];
      v36 = *([a3 objectAtIndexedSubscript:0] + *v31 + 1) & 0xF;
      v197[3] = v123;
      v197[2] = v141;
      v197[1] = v161;
      v197[0] = v174;
      v23 = *(v197 + v36);
      v37 = ([a3 objectAtIndexedSubscript:0] + *v28);
      v162 = v37[1];
      v175 = *v37;
      v124 = v37[3];
      v142 = v37[2];
      v38 = *([a3 objectAtIndexedSubscript:0] + *v31);
      v196[3] = v124;
      v196[2] = v142;
      v196[1] = v162;
      v196[0] = v175;
      v17 = *(v196 + (v38 & 0xF));
    }

    else if (v10 == 1)
    {
      v11 = [a3 objectAtIndexedSubscript:0];
      v12 = MEMORY[0x277CD7410];
      v13 = (v11 + *MEMORY[0x277CD7410]);
      v155 = v13[1];
      v168 = *v13;
      v117 = v13[3];
      v135 = v13[2];
      v14 = [a3 objectAtIndexedSubscript:0];
      v15 = MEMORY[0x277CD73D8];
      v16 = *(v14 + *MEMORY[0x277CD73D8] + 3) & 0xF;
      v191[2] = v135;
      v191[3] = v117;
      v191[0] = v168;
      v191[1] = v155;
      v17 = *(v191 + v16);
      v18 = ([a3 objectAtIndexedSubscript:0] + *v12);
      v156 = v18[1];
      v169 = *v18;
      v118 = v18[3];
      v136 = v18[2];
      v19 = *([a3 objectAtIndexedSubscript:0] + *v15 + 2) & 0xF;
      v190[2] = v136;
      v190[3] = v118;
      v190[0] = v169;
      v190[1] = v156;
      v20 = *(v190 + v19);
      v21 = ([a3 objectAtIndexedSubscript:0] + *v12);
      v157 = v21[1];
      v170 = *v21;
      v119 = v21[3];
      v137 = v21[2];
      v22 = *([a3 objectAtIndexedSubscript:0] + *v15 + 1) & 0xF;
      v189[2] = v137;
      v189[3] = v119;
      v189[0] = v170;
      v189[1] = v157;
      v23 = *(v189 + v22);
      v24 = ([a3 objectAtIndexedSubscript:0] + *v12);
      v158 = v24[1];
      v171 = *v24;
      v120 = v24[3];
      v138 = v24[2];
      v25 = *([a3 objectAtIndexedSubscript:0] + *v15);
      v188[2] = v138;
      v188[3] = v120;
      v188[0] = v171;
      v188[1] = v158;
      v26 = *(v188 + (v25 & 0xF));
    }

    else
    {
      v17 = 0;
      v26 = 0;
      v20 = 0;
      v23 = 0;
    }
  }

  else
  {
    v39 = [a3 objectAtIndexedSubscript:0];
    v40 = MEMORY[0x277CD7410];
    v41 = (v39 + *MEMORY[0x277CD7410]);
    v163 = v41[1];
    v176 = *v41;
    v125 = v41[3];
    v143 = v41[2];
    v42 = [a3 objectAtIndexedSubscript:0];
    v43 = MEMORY[0x277CD73D8];
    v44 = *(v42 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v195[3] = v125;
    v195[2] = v143;
    v195[1] = v163;
    v195[0] = v176;
    v17 = *(v195 + v44);
    v45 = ([a3 objectAtIndexedSubscript:0] + *v40);
    v164 = v45[1];
    v177 = *v45;
    v126 = v45[3];
    v144 = v45[2];
    v46 = *([a3 objectAtIndexedSubscript:0] + *v43 + 2) & 0xF;
    v194[3] = v126;
    v194[2] = v144;
    v194[0] = v177;
    v194[1] = v164;
    v26 = *(v194 + v46);
    v47 = ([a3 objectAtIndexedSubscript:0] + *v40);
    v165 = v47[1];
    v178 = *v47;
    v127 = v47[3];
    v145 = v47[2];
    v48 = *([a3 objectAtIndexedSubscript:0] + *v43 + 1) & 0xF;
    v193[2] = v145;
    v193[3] = v127;
    v193[0] = v178;
    v193[1] = v165;
    v20 = *(v193 + v48);
    v49 = ([a3 objectAtIndexedSubscript:0] + *v40);
    v166 = v49[1];
    v179 = *v49;
    v128 = v49[3];
    v146 = v49[2];
    v50 = *([a3 objectAtIndexedSubscript:0] + *v43);
    v192[2] = v146;
    v192[3] = v128;
    v192[0] = v179;
    v192[1] = v166;
    v23 = *(v192 + (v50 & 0xF));
  }

  v180 = v23;
  v154 = a5;
  v167 = v17;
  v51 = *(a5 + 57);
  if (v51 == 1)
  {
    v65 = [a3 objectAtIndexedSubscript:1];
    v66 = MEMORY[0x277CD7410];
    v67 = (v65 + *MEMORY[0x277CD7410]);
    v132 = v67[1];
    v150 = *v67;
    v108 = v67[3];
    v114 = v67[2];
    v68 = [a3 objectAtIndexedSubscript:1];
    v69 = MEMORY[0x277CD73D8];
    v70 = *(v68 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v187[2] = v114;
    v187[3] = v108;
    v187[0] = v150;
    v187[1] = v132;
    v64 = *(v187 + v70);
    v71 = ([a3 objectAtIndexedSubscript:1] + *v66);
    v133 = v71[1];
    v151 = *v71;
    v109 = v71[3];
    v115 = v71[2];
    v72 = *([a3 objectAtIndexedSubscript:1] + *v69 + 1) & 0xF;
    v186[2] = v115;
    v186[3] = v109;
    v186[0] = v151;
    v186[1] = v133;
    v58 = *(v186 + v72);
    v73 = ([a3 objectAtIndexedSubscript:1] + *v66);
    v134 = v73[1];
    v152 = *v73;
    v110 = v73[3];
    v116 = v73[2];
    v74 = *([a3 objectAtIndexedSubscript:1] + *v69);
    v185[2] = v116;
    v185[3] = v110;
    v185[0] = v152;
    v185[1] = v134;
    v61 = *(v185 + (v74 & 0xF));
  }

  else if (v51)
  {
    v58 = 0;
    v61 = 0;
    v64 = 0;
  }

  else
  {
    v52 = [a3 objectAtIndexedSubscript:1];
    v53 = MEMORY[0x277CD7410];
    v54 = (v52 + *MEMORY[0x277CD7410]);
    v129 = v54[1];
    v147 = *v54;
    v105 = v54[3];
    v111 = v54[2];
    v55 = [a3 objectAtIndexedSubscript:1];
    v56 = MEMORY[0x277CD73D8];
    v57 = *(v55 + *MEMORY[0x277CD73D8] + 3) & 0xF;
    v184[2] = v111;
    v184[3] = v105;
    v184[0] = v147;
    v184[1] = v129;
    v58 = *(v184 + v57);
    v59 = ([a3 objectAtIndexedSubscript:1] + *v53);
    v130 = v59[1];
    v148 = *v59;
    v106 = v59[3];
    v112 = v59[2];
    v60 = *([a3 objectAtIndexedSubscript:1] + *v56 + 2) & 0xF;
    v183[2] = v112;
    v183[3] = v106;
    v183[0] = v148;
    v183[1] = v130;
    v61 = *(v183 + v60);
    v62 = ([a3 objectAtIndexedSubscript:1] + *v53);
    v131 = v62[1];
    v149 = *v62;
    v107 = v62[3];
    v113 = v62[2];
    v63 = *([a3 objectAtIndexedSubscript:1] + *v56);
    v182[2] = v113;
    v182[3] = v107;
    v182[0] = v149;
    v182[1] = v131;
    v64 = *(v182 + (v63 & 0xF));
  }

  v75 = v64;
  v76 = v61;
  v77 = v58;
  v153 = v26;
  v78 = v26 * v58 * v61;
  v79 = v20;
  v80 = v20 * v167 * v180;
  v81 = MEMORY[0x277CD73C8];
  v82 = (v80 * v75 * v78);
  if ((*(a4 + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [v9 setFloat32Ops:v82];
    [v9 setFloat16Ops:0.0];
  }

  else
  {
    [v9 setFloat16Ops:v82];
    [v9 setFloat32Ops:0.0];
  }

  [v9 float32Ops];
  v84 = v83;
  [v9 float16Ops];
  v86 = v84 + v85;
  [v9 deviceMemoryBytesRead];
  v88 = v87;
  [v9 deviceMemoryBytesWrite];
  v90 = v86 / (v88 + v89);
  v91 = *([a3 objectAtIndexedSubscript:0] + *v81);
  v92 = MPSGetDataTypeName();
  v93 = *([a3 objectAtIndexedSubscript:1] + *v81);
  v94 = MPSGetDataTypeName();
  v95 = *(a4 + *v81);
  v96 = MPSGetDataTypeName();
  MPSKernel_LogInfo(v154, 4uLL, "Convolution2DGradientWithWeights: N=%lu, C=%lu, H=%lu, W=%lu, kH=%lu, kW=%lu, O=%lu, matrixM=%lu, matrixN=%lu, matrixK=%lu, A Datatype: %s, B Datatype: %s C Datatype: %s\t", v167, v153, v79, v180, v77, v76, v75, v75, v78, v80, v92, v94, v96);
  [v9 float16Ops];
  v98 = v97;
  [v9 float32Ops];
  v100 = v99;
  [v9 deviceMemoryBytesRead];
  v102 = v101;
  [v9 deviceMemoryBytesWrite];
  MPSKernel_LogInfo(v154, 4uLL, "Convolution2DGradientWithWeights: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v98, v100, v102, v103, v90);
  return v9;
}

- (void)dealloc
{
  free(self->_autoTuningParams);
  v3.receiver = self;
  v3.super_class = MPSNDArrayConvolution2DGradientWithWeights;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end