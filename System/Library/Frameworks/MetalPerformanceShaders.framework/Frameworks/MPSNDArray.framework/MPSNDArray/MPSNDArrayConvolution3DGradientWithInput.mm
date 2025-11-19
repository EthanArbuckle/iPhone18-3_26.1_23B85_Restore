@interface MPSNDArrayConvolution3DGradientWithInput
- (MPSNDArrayConvolution3DGradientWithInput)initWithDevice:(id)a3;
- (__n128)stridesAtSourceIndex:(int64x2_t *)a1@<X0>;
- (double)destinationStrides;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (void)dealloc;
@end

@implementation MPSNDArrayConvolution3DGradientWithInput

- (MPSNDArrayConvolution3DGradientWithInput)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayConvolution3DGradientWithInput;
  result = [(MPSNDArrayBinaryPrimaryGradientKernel *)&v4 initWithDevice:a3];
  if (result)
  {
    result->_offsets.offsets[0] = 0;
    result->_strideInPixels.sizes[0] = 1;
    result->_dilationRates.sizes[0] = 1;
    result->_offsets.offsets[1] = 0;
    result->_strideInPixels.sizes[1] = 1;
    result->_dilationRates.sizes[1] = 1;
    result->_offsets.offsets[2] = 0;
    result->_strideInPixels.sizes[2] = 1;
    result->_dilationRates.sizes[2] = 1;
    result->_dataFormat = 0;
    result->_weightsFormat = 0;
    result->super.super.super._encodeGradient = EncodeNDArrayConvolution3DGradientWithIntput;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (__n128)stridesAtSourceIndex:(int64x2_t *)a1@<X0>
{
  *&v2 = vmovn_s64(a1[9]);
  HIDWORD(v2) = 1;
  DWORD2(v2) = a1[10].i32[0];
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  a2[2] = v3;
  a2[3] = v3;
  *a2 = v2;
  a2[1] = v3;
  result.n128_u64[0] = v2;
  result.n128_u32[2] = DWORD2(v2);
  return result;
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

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v242.receiver = self;
  v242.super_class = MPSNDArrayConvolution3DGradientWithInput;
  v9 = [(MPSNDArrayMultiaryBase *)&v242 workloadStatisticsForSourceArrays:a3 destArrays:a4 sourceState:a7, a6];
  v10 = *(a5 + 60);
  v184 = v9;
  if (v10)
  {
    if (v10 != 2)
    {
      if (v10 == 1)
      {
        v11 = [a3 objectAtIndexedSubscript:0];
        v12 = MEMORY[0x277CD7410];
        v13 = (v11 + *MEMORY[0x277CD7410]);
        v186 = v13[1];
        v202 = *v13;
        v136 = v13[3];
        v160 = v13[2];
        v14 = [a3 objectAtIndexedSubscript:0];
        v15 = MEMORY[0x277CD73D8];
        v16 = *(v14 + *MEMORY[0x277CD73D8] + 4) & 0xF;
        v231[3] = v136;
        v231[2] = v160;
        v231[1] = v186;
        v231[0] = v202;
        v17 = *(v231 + v16);
        v18 = ([a3 objectAtIndexedSubscript:0] + *v12);
        v187 = v18[1];
        v203 = *v18;
        v137 = v18[3];
        v161 = v18[2];
        v19 = *([a3 objectAtIndexedSubscript:0] + *v15 + 3) & 0xF;
        v230[2] = v161;
        v230[3] = v137;
        v230[0] = v203;
        v230[1] = v187;
        v20 = *(v230 + v19);
        v21 = ([a3 objectAtIndexedSubscript:0] + *v12);
        v188 = v21[1];
        v204 = *v21;
        v138 = v21[3];
        v162 = v21[2];
        v22 = *([a3 objectAtIndexedSubscript:0] + *v15 + 2) & 0xF;
        v229[2] = v162;
        v229[3] = v138;
        v229[0] = v204;
        v229[1] = v188;
        v23 = *(v229 + v22);
        v24 = ([a3 objectAtIndexedSubscript:0] + *v12);
        v189 = v24[1];
        v205 = *v24;
        v139 = v24[3];
        v163 = v24[2];
        v25 = *([a3 objectAtIndexedSubscript:0] + *v15 + 1) & 0xF;
        v228[2] = v163;
        v228[3] = v139;
        v228[0] = v205;
        v228[1] = v189;
        v26 = *(v228 + v25);
        v27 = ([a3 objectAtIndexedSubscript:0] + *v12);
        v190 = v27[1];
        v206 = *v27;
        v140 = v27[3];
        v164 = v27[2];
        v28 = *([a3 objectAtIndexedSubscript:0] + *v15);
        v227[2] = v164;
        v227[3] = v140;
        v227[0] = v206;
        v227[1] = v190;
        v29 = *(v227 + (v28 & 0xF));
      }

      else
      {
        v17 = 0;
        v29 = 0;
        v20 = 0;
        v23 = 0;
        v26 = 0;
      }

      goto LABEL_9;
    }

    v30 = [a3 objectAtIndexedSubscript:0];
    v31 = MEMORY[0x277CD7410];
    v32 = (v30 + *MEMORY[0x277CD7410]);
    v191 = v32[1];
    v207 = *v32;
    v141 = v32[3];
    v165 = v32[2];
    v33 = [a3 objectAtIndexedSubscript:0];
    v34 = MEMORY[0x277CD73D8];
    v35 = *(v33 + *MEMORY[0x277CD73D8]);
    v241[3] = v141;
    v241[2] = v165;
    v241[1] = v191;
    v241[0] = v207;
    v17 = *(v241 + (v35 & 0xF));
    v36 = ([a3 objectAtIndexedSubscript:0] + *v31);
    v192 = v36[1];
    v208 = *v36;
    v142 = v36[3];
    v166 = v36[2];
    v37 = *([a3 objectAtIndexedSubscript:0] + *v34 + 4) & 0xF;
    v240[3] = v142;
    v240[2] = v166;
    v240[1] = v192;
    v240[0] = v208;
    v29 = *(v240 + v37);
    v38 = ([a3 objectAtIndexedSubscript:0] + *v31);
    v193 = v38[1];
    v209 = *v38;
    v143 = v38[3];
    v167 = v38[2];
    v39 = *([a3 objectAtIndexedSubscript:0] + *v34 + 3) & 0xF;
    v239[3] = v143;
    v239[2] = v167;
    v239[1] = v193;
    v239[0] = v209;
    v20 = *(v239 + v39);
    v40 = ([a3 objectAtIndexedSubscript:0] + *v31);
    v194 = v40[1];
    v210 = *v40;
    v144 = v40[3];
    v168 = v40[2];
    v41 = *([a3 objectAtIndexedSubscript:0] + *v34 + 2) & 0xF;
    v238[3] = v144;
    v238[2] = v168;
    v238[1] = v194;
    v238[0] = v210;
    v23 = *(v238 + v41);
    v42 = ([a3 objectAtIndexedSubscript:0] + *v31);
    v195 = v42[1];
    v211 = *v42;
    v145 = v42[3];
    v169 = v42[2];
    v43 = *([a3 objectAtIndexedSubscript:0] + *v34 + 1) & 0xF;
    v237[3] = v145;
    v237[2] = v169;
    v237[1] = v195;
    v237[0] = v211;
    v44 = v237;
  }

  else
  {
    v45 = [a3 objectAtIndexedSubscript:0];
    v46 = MEMORY[0x277CD7410];
    v47 = (v45 + *MEMORY[0x277CD7410]);
    v196 = v47[1];
    v212 = *v47;
    v146 = v47[3];
    v170 = v47[2];
    v48 = [a3 objectAtIndexedSubscript:0];
    v49 = MEMORY[0x277CD73D8];
    v50 = *(v48 + *MEMORY[0x277CD73D8] + 4) & 0xF;
    v236[3] = v146;
    v236[2] = v170;
    v236[1] = v196;
    v236[0] = v212;
    v17 = *(v236 + v50);
    v51 = ([a3 objectAtIndexedSubscript:0] + *v46);
    v197 = v51[1];
    v213 = *v51;
    v147 = v51[3];
    v171 = v51[2];
    v52 = *([a3 objectAtIndexedSubscript:0] + *v49 + 3) & 0xF;
    v235[3] = v147;
    v235[2] = v171;
    v235[1] = v197;
    v235[0] = v213;
    v29 = *(v235 + v52);
    v53 = ([a3 objectAtIndexedSubscript:0] + *v46);
    v198 = v53[1];
    v214 = *v53;
    v148 = v53[3];
    v172 = v53[2];
    v54 = *([a3 objectAtIndexedSubscript:0] + *v49 + 2) & 0xF;
    v234[3] = v148;
    v234[2] = v172;
    v234[1] = v198;
    v234[0] = v214;
    v20 = *(v234 + v54);
    v55 = ([a3 objectAtIndexedSubscript:0] + *v46);
    v199 = v55[1];
    v215 = *v55;
    v149 = v55[3];
    v173 = v55[2];
    v56 = *([a3 objectAtIndexedSubscript:0] + *v49 + 1) & 0xF;
    v233[3] = v149;
    v233[2] = v173;
    v233[1] = v199;
    v233[0] = v215;
    v23 = *(v233 + v56);
    v57 = ([a3 objectAtIndexedSubscript:0] + *v46);
    v200 = v57[1];
    v216 = *v57;
    v150 = v57[3];
    v174 = v57[2];
    v58 = *([a3 objectAtIndexedSubscript:0] + *v49);
    v232[3] = v150;
    v232[2] = v174;
    v232[1] = v200;
    v232[0] = v216;
    v43 = v58 & 0xF;
    v44 = v232;
  }

  v26 = *(v44 + v43);
LABEL_9:
  v217 = v26;
  v185 = a5;
  v201 = v20;
  v59 = v17;
  v60 = *(a5 + 61);
  if (v60 == 1)
  {
    v77 = [a3 objectAtIndexedSubscript:1];
    v78 = MEMORY[0x277CD7410];
    v79 = (v77 + *MEMORY[0x277CD7410]);
    v155 = v79[1];
    v179 = *v79;
    v123 = v79[3];
    v131 = v79[2];
    v80 = [a3 objectAtIndexedSubscript:1];
    v81 = MEMORY[0x277CD73D8];
    v82 = *(v80 + *MEMORY[0x277CD73D8] + 4) & 0xF;
    v226[2] = v131;
    v226[3] = v123;
    v226[0] = v179;
    v226[1] = v155;
    v76 = *(v226 + v82);
    v83 = ([a3 objectAtIndexedSubscript:1] + *v78);
    v156 = v83[1];
    v180 = *v83;
    v124 = v83[3];
    v132 = v83[2];
    v84 = *([a3 objectAtIndexedSubscript:1] + *v81 + 2) & 0xF;
    v225[2] = v132;
    v225[3] = v124;
    v225[0] = v180;
    v225[1] = v156;
    v67 = *(v225 + v84);
    v85 = ([a3 objectAtIndexedSubscript:1] + *v78);
    v157 = v85[1];
    v181 = *v85;
    v125 = v85[3];
    v133 = v85[2];
    v86 = *([a3 objectAtIndexedSubscript:1] + *v81 + 1) & 0xF;
    v224[2] = v133;
    v224[3] = v125;
    v224[0] = v181;
    v224[1] = v157;
    v70 = *(v224 + v86);
    v87 = ([a3 objectAtIndexedSubscript:1] + *v78);
    v158 = v87[1];
    v182 = *v87;
    v126 = v87[3];
    v134 = v87[2];
    v88 = *([a3 objectAtIndexedSubscript:1] + *v81);
    v223[2] = v134;
    v223[3] = v126;
    v223[0] = v182;
    v223[1] = v158;
    v73 = *(v223 + (v88 & 0xF));
  }

  else if (v60)
  {
    v67 = 0;
    v70 = 0;
    v73 = 0;
    v76 = 0;
  }

  else
  {
    v61 = [a3 objectAtIndexedSubscript:1];
    v62 = MEMORY[0x277CD7410];
    v63 = (v61 + *MEMORY[0x277CD7410]);
    v151 = v63[1];
    v175 = *v63;
    v119 = v63[3];
    v127 = v63[2];
    v64 = [a3 objectAtIndexedSubscript:1];
    v65 = MEMORY[0x277CD73D8];
    v66 = *(v64 + *MEMORY[0x277CD73D8] + 4) & 0xF;
    v222[2] = v127;
    v222[3] = v119;
    v222[0] = v175;
    v222[1] = v151;
    v67 = *(v222 + v66);
    v68 = ([a3 objectAtIndexedSubscript:1] + *v62);
    v152 = v68[1];
    v176 = *v68;
    v120 = v68[3];
    v128 = v68[2];
    v69 = *([a3 objectAtIndexedSubscript:1] + *v65 + 3) & 0xF;
    v221[2] = v128;
    v221[3] = v120;
    v221[0] = v176;
    v221[1] = v152;
    v70 = *(v221 + v69);
    v71 = ([a3 objectAtIndexedSubscript:1] + *v62);
    v153 = v71[1];
    v177 = *v71;
    v121 = v71[3];
    v129 = v71[2];
    v72 = *([a3 objectAtIndexedSubscript:1] + *v65 + 2) & 0xF;
    v220[2] = v129;
    v220[3] = v121;
    v220[0] = v177;
    v220[1] = v153;
    v73 = *(v220 + v72);
    v74 = ([a3 objectAtIndexedSubscript:1] + *v62);
    v154 = v74[1];
    v178 = *v74;
    v122 = v74[3];
    v130 = v74[2];
    v75 = *([a3 objectAtIndexedSubscript:1] + *v65);
    v219[2] = v130;
    v219[3] = v122;
    v219[0] = v178;
    v219[1] = v154;
    v76 = *(v219 + (v75 & 0xF));
  }

  v135 = v67;
  v159 = v59;
  v89 = v201 * v59;
  v90 = v23;
  v91 = v89 * v23 * v217;
  v183 = v29;
  v92 = v29 * v67 * v70 * v73;
  v93 = MEMORY[0x277CD73C8];
  v94 = (v91 * v76 * v92);
  if ((*(a4 + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [v184 setFloat32Ops:v94];
    [v184 setFloat16Ops:0.0];
  }

  else
  {
    [v184 setFloat16Ops:v94];
    [v184 setFloat32Ops:0.0];
  }

  [v184 float32Ops];
  v96 = v95;
  [v184 float16Ops];
  v98 = v96 + v97;
  [v184 deviceMemoryBytesRead];
  v100 = v99;
  [v184 deviceMemoryBytesWrite];
  v102 = v98 / (v100 + v101);
  v103 = *([a3 objectAtIndexedSubscript:0] + *v93);
  v104 = MPSGetDataTypeName();
  v105 = *([a3 objectAtIndexedSubscript:1] + *v93);
  v106 = MPSGetDataTypeName();
  v107 = *(a4 + *v93);
  v108 = MPSGetDataTypeName();
  MPSKernel_LogInfo(v185, v109, "Convolution3D: N=%lu, C=%lu, D=%lu, H=%lu, W=%lu, kD=%lu, kH=%lu, kW=%lu, O=%lu, matrixM=%lu, matrixN=%lu, matrixK=%lu, A Datatype: %s, B Datatype: %s C Datatype: %s\t", v159, v183, v201, v90, v217, v135, v70, v73, v76, v76, v91, v92, v104, v106, v108);
  [v184 float16Ops];
  v111 = v110;
  [v184 float32Ops];
  v113 = v112;
  [v184 deviceMemoryBytesRead];
  v115 = v114;
  [v184 deviceMemoryBytesWrite];
  MPSKernel_LogInfo(v185, v116, "Convolution3D: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v111, v113, v115, v117, v102);
  return v184;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSNDArrayConvolution3DGradientWithInput;
  [(MPSNDArrayMultiaryBase *)&v2 dealloc];
}

@end