@interface MPSNDArrayMatrixMultiplication
- (BOOL)advanceAutoTuneIteration;
- (MPSNDArrayMatrixMultiplication)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayMatrixMultiplication)initWithDevice:(id)device sourceCount:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (id)encodePreProcessingToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays destinationArray:(id *)array kernelDAGObject:(id *)object;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (unint64_t)kernelDimensionalityForSourceArrays:(id)arrays destinationArrays:(id)destinationArrays kernelDAGObject:(id)object;
- (void)clearAutoTuningParameters;
- (void)dealloc;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays normScaleArray:(id)array resultState:(id)state destinationArray:(id)destinationArray kernelDAGObject:(id)object;
- (void)encodeWithCoder:(id)coder;
- (void)setAutoTuningParameters:(void *)parameters;
@end

@implementation MPSNDArrayMatrixMultiplication

- (unint64_t)kernelDimensionalityForSourceArrays:(id)arrays destinationArrays:(id)destinationArrays kernelDAGObject:(id)object
{
  objectCopy = object;
  if (!object || (v9 = [object graph], v10 = **(v9 + 64), (v11 = *(*(v9 + 64) + 8) - v10) == 0))
  {
LABEL_8:
    graph = [objectCopy graph];
    v15 = *(graph + 64);
    v16 = *v15;
    v17 = v15[1];
    if (*v15 == v17)
    {
      v21 = 0;
    }

    else
    {
      v18 = graph;
      destinationArraysCopy = destinationArrays;
      v198 = objectCopy;
      selfCopy = self;
      v20 = 0;
      v21 = -1;
      v22 = -1;
      v23 = -1;
      do
      {
        v24 = *v16;
        if (v24 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v18) + 32))
        {
          v21 = v20;
        }

        v25 = *v16;
        if (v25 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v18) + 32))
        {
          v23 = v20;
        }

        if (MPSKernelDAG::GetCoreOpNumberOfInputs(v18) == 3)
        {
          v26 = *v16;
          if (v26 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v18) + 32))
          {
            v22 = v20;
          }
        }

        ++v20;
        ++v16;
      }

      while (v16 != v17);
      if (v21 == -1)
      {
        v21 = 0;
        self = selfCopy;
        destinationArrays = destinationArraysCopy;
        objectCopy = v198;
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      self = selfCopy;
      destinationArrays = destinationArraysCopy;
      objectCopy = v198;
      if (v23 != -1)
      {
        goto LABEL_26;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
LABEL_25:
      v23 = 0;
      v22 = 0;
LABEL_26:
      v27 = [arrays objectAtIndexedSubscript:{v21, destinationArraysCopy, v198}];
      v28 = [arrays objectAtIndexedSubscript:v23];
      if (v22 == -1)
      {
        v29 = 0;
      }

      else
      {
        v29 = [arrays objectAtIndexedSubscript:v22];
      }

      v30 = [destinationArrays objectAtIndexedSubscript:0];
      v31 = *MEMORY[0x277CD7350];
      v32 = *(&self->super.super.super.super.isa + v31);
      v33 = MEMORY[0x277CD7410];
      v34 = *MEMORY[0x277CD7410];
      v35 = *(v30 + v34);
      v36 = *(v30 + v34 + 16);
      v37 = *(v30 + v34 + 48);
      v38 = MEMORY[0x277CD73D8];
      v39 = *MEMORY[0x277CD73D8];
      v40 = *(v30 + v39);
      v259 = *(v30 + v34 + 32);
      v260 = v37;
      v258[0] = v35;
      v258[1] = v36;
      v41 = *(v258 + (BYTE1(v40) & 0xF));
      v261[2] = v259;
      v261[3] = v37;
      v261[0] = v35;
      v261[1] = v36;
      v42 = *(v261 + (v40 & 0xF));
      v43 = v41 >> 10 > 6 || v42 >> 10 >= 7;
      if (v43 && ((v44 = *(v27 + v34 + 4 * (*(v27 + v39) & 0xF)), v44 != 18816) ? (v45 = v44 == 7168) : (v45 = 1), v45))
      {
        v46 = v41 >= 8;
      }

      else
      {
        v47 = *MEMORY[0x277CD73C8];
        v48 = *(v27 + v47);
        if (v48 == 268435488)
        {
          v45 = *(v28 + v47) == 268435488;
          v49 = 3;
          if (v45)
          {
            v49 = 4;
          }
        }

        else
        {
          v49 = 3;
        }

        v50 = 9;
        if (v42 * v41 * v49 < *(v32 + 1480) << 12)
        {
          v50 = 15;
        }

        if (*(v32 + 1472) > 10)
        {
          v54 = *(v28 + v34 + 4 * (WORD1(*(v28 + v39)) & 0xF));
          if (*(v27 + v39) <= BYTE1(*(v27 + v39)) && v54 == 1)
          {
            v56 = *(v27 + v34 + 4 * (WORD1(*(v27 + v39)) & 0xF));
          }

          else
          {
            v56 = 1;
          }

          v41 = v56 * v41;
          v57 = v42 * v54;
          if (*(v28 + v39) <= BYTE1(*(v28 + v39)))
          {
            v57 = *(v261 + (v40 & 0xF));
          }

          if (*(v27 + v34 + 4 * (WORD1(*(v27 + v39)) & 0xF)) == 1)
          {
            v42 = v57;
          }

          v53 = v50;
        }

        else
        {
          v51 = 15;
          if ((v42 & 3) == 0)
          {
            v51 = v50;
          }

          if (v41)
          {
            v52 = 15;
          }

          else
          {
            v52 = v50;
          }

          if (v48 == 268435472)
          {
            v50 = v52;
            v53 = 15;
          }

          else
          {
            v53 = v51;
          }
        }

        v58 = v41 > v50 && v42 > v53;
        v59 = *(v27 + v39 + 3) & 0xF;
        LODWORD(v60) = *(v27 + v34 + 4 * v59);
        v61 = (v28 + v34);
        v62 = *v61;
        v63 = v61[1];
        v64 = v61[2];
        v65 = v61[3];
        v257[3] = v65;
        v257[2] = v64;
        v257[1] = v63;
        v257[0] = v62;
        v66 = *(v257 + v59);
        v67 = !v58;
        if (v60 <= v66)
        {
          v60 = v66;
        }

        else
        {
          v60 = v60;
        }

        v68 = v41 * v60;
        if (v67 != 1 || v68 <= v50)
        {
LABEL_85:
          if (!v29 && (v67 & 1) != 0 || (*(v32 + 1472) - 11) < 0xD)
          {
            return 4;
          }

          v71 = v30;
          graph2 = [objectCopy graph];
          v73 = **(graph2 + 56);
          if (*(*(graph2 + 56) + 8) == v73)
          {
            std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
          }

          v75 = *(*v73 + 24);
          v74 = *v75;
          if (*(v75 + 8) == *v75)
          {
            std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
          }

          selfCopy2 = self;
          v77 = *v74;
          finalOp = [objectCopy finalOp];
          if ((*(*finalOp + 16))(finalOp) && *(v77 + 8) == 268435488)
          {
            v79 = *v33;
            v80 = *(v27 + v79);
            v81 = *(v27 + v79 + 16);
            v82 = *(v27 + v79 + 32);
            v83 = *(v27 + v79 + 48);
            v84 = *v38;
            v85 = *(v27 + v84);
            v86 = BYTE2(v85);
            v255[3] = v83;
            v255[2] = v82;
            v255[1] = v81;
            v255[0] = v80;
            v87 = *(v255 + (BYTE2(v85) & 0xF));
            v88 = BYTE3(v85);
            v254[3] = v83;
            v254[2] = v82;
            v254[1] = v81;
            v254[0] = v80;
            v89 = *(v254 + (BYTE3(v85) & 0xF));
            v90 = v87 != 1;
            if (v89 != 1)
            {
              v90 = 2;
            }

            v91 = *MEMORY[0x277CD73F0];
            v92 = *(v27 + v91);
            if (v92 < 5)
            {
              v94 = v71;
            }

            else
            {
              v93 = 4;
              v94 = v71;
              while (1)
              {
                v252 = v85;
                v253[0] = v80;
                v253[1] = v81;
                v253[2] = v82;
                v253[3] = v83;
                if (*(v253 + (*(&v252 | v93 & 0xF) & 0xF)) >= 2u)
                {
                  break;
                }

                if (v92 == ++v93)
                {
                  goto LABEL_104;
                }
              }

              v90 = 3;
            }

LABEL_104:
            v95 = *(v28 + v79);
            v96 = *(v28 + v79 + 16);
            v97 = *(v28 + v79 + 32);
            v98 = *(v28 + v79 + 48);
            v99 = *(v28 + v84);
            v100 = BYTE2(v99);
            v251[3] = v98;
            v251[2] = v97;
            v251[1] = v96;
            v251[0] = v95;
            v101 = *(v251 + (BYTE2(v99) & 0xF));
            v102 = BYTE3(v99);
            v250[3] = v98;
            v250[2] = v97;
            v250[1] = v96;
            v250[0] = v95;
            v103 = *(v250 + (BYTE3(v99) & 0xF));
            v104 = v101 != 1;
            if (v103 != 1)
            {
              v104 = 2;
            }

            v105 = *(v28 + v91);
            if (v105 >= 5)
            {
              v106 = 4;
              while (1)
              {
                v248 = v99;
                v249[0] = v95;
                v249[1] = v96;
                v249[2] = v97;
                v249[3] = v98;
                if (*(v249 + (*(&v248 | v106 & 0xF) & 0xF)) >= 2u)
                {
                  break;
                }

                if (v105 == ++v106)
                {
                  goto LABEL_112;
                }
              }

              v104 = 3;
            }

LABEL_112:
            v107 = *(v94 + v79);
            v108 = *(v94 + v79 + 16);
            v109 = *(v94 + v79 + 32);
            v110 = *(v94 + v79 + 48);
            v111 = *(v94 + v84 + 2);
            v247[3] = v110;
            v247[2] = v109;
            v247[1] = v108;
            v247[0] = v107;
            v112 = *(v247 + (v111 & 0xF));
            v113 = *(v94 + v84 + 3);
            v246[3] = v110;
            v246[2] = v109;
            result = 3;
            v246[1] = v108;
            v246[0] = v107;
            if (v90 != 2 || v104 != 2)
            {
              return result;
            }

            if (v86 == v100)
            {
              result = 3;
              if (v88 != v102)
              {
                return result;
              }

              if (v111 != v86)
              {
                return result;
              }

              if (v113 != v88)
              {
                return result;
              }

              if (v87 != v101)
              {
                return result;
              }

              if (v89 != v103)
              {
                return result;
              }

              v114 = *(v246 + (v113 & 0xF));
              v245[0] = v95;
              v245[1] = v96;
              result = 3;
              v245[2] = v97;
              v245[3] = v98;
              if (v87 != v112 || v89 != *(v245 + (v88 & 0xF)))
              {
                return result;
              }

              if (v88 + 1 == v86 || v86 + 1 == v88)
              {
                v115 = v86;
                if (v88 >= v86)
                {
                  v116 = v86;
                }

                else
                {
                  v116 = v88;
                }

                if (v86 <= v88)
                {
                  v115 = v88;
                }

                v117 = *MEMORY[0x277CD73D0];
                v118 = *(v27 + v117);
                v119 = *(v27 + v117 + 16);
                v120 = *(v27 + v117 + 32);
                v244 = *(v27 + v117 + 48);
                v243[2] = v120;
                v243[1] = v119;
                v243[0] = v118;
                v121 = *(v243 + (v86 & 0xF));
                v242[3] = v244;
                v242[2] = v120;
                v242[1] = v119;
                v242[0] = v118;
                result = 3;
                if (v87 != v121)
                {
                  return result;
                }

                if (v89 != *(v242 + (v88 & 0xF)))
                {
                  return result;
                }

                v122 = *(v28 + v117);
                v123 = *(v28 + v117 + 16);
                v124 = *(v28 + v117 + 32);
                v241 = *(v28 + v117 + 48);
                v240[2] = v124;
                v240[1] = v123;
                v240[0] = v122;
                v125 = *(v240 + (v86 & 0xF));
                v239[3] = v241;
                v239[2] = v124;
                v239[1] = v123;
                v239[0] = v122;
                result = 3;
                if (v87 != v125)
                {
                  return result;
                }

                if (v89 != *(v239 + (v88 & 0xF)))
                {
                  return result;
                }

                v126 = *(v94 + v117);
                v127 = *(v94 + v117 + 16);
                v128 = *(v94 + v117 + 32);
                v238 = *(v94 + v117 + 48);
                v237[2] = v128;
                v237[1] = v127;
                v237[0] = v126;
                v129 = *(v237 + (v86 & 0xF));
                v236[3] = v238;
                v236[2] = v128;
                v236[1] = v127;
                v236[0] = v126;
                result = 3;
                if (v87 != v129 || v114 != *(v236 + (v88 & 0xF)))
                {
                  return result;
                }

                v130 = *MEMORY[0x277CD7418];
                v131 = *(v27 + v130);
                v132 = *(v27 + v130 + 16);
                v133 = *(v27 + v130 + 32);
                v235 = *(v27 + v130 + 48);
                v234[2] = v133;
                v234[1] = v132;
                v234[0] = v131;
                v134 = *(v234 + (v86 & 0xF));
                v233[3] = v235;
                v233[2] = v133;
                v233[1] = v132;
                v233[0] = v131;
                if (!(v134 | *(v233 + (v88 & 0xF))))
                {
                  v135 = *(v28 + v130);
                  v136 = *(v28 + v130 + 16);
                  v137 = *(v28 + v130 + 32);
                  v232 = *(v28 + v130 + 48);
                  v231[2] = v137;
                  v231[1] = v136;
                  v231[0] = v135;
                  v138 = *(v231 + (v86 & 0xF));
                  v230[3] = v232;
                  v230[2] = v137;
                  v230[1] = v136;
                  v230[0] = v135;
                  if (!(v138 | *(v230 + (v88 & 0xF))))
                  {
                    v139 = (v94 + v130);
                    v140 = *v139;
                    v141 = v139[1];
                    v142 = v139[2];
                    v229 = v139[3];
                    v228[2] = v142;
                    v228[1] = v141;
                    v228[0] = v140;
                    LODWORD(v139) = *(v228 + (v86 & 0xF));
                    v227[3] = v229;
                    v227[2] = v142;
                    v227[1] = v141;
                    v227[0] = v140;
                    if (!(v139 | *(v227 + (v88 & 0xF))))
                    {
                      v143 = *MEMORY[0x277CD7428];
                      v144 = *(v27 + v143);
                      v145 = *(v27 + v143 + 16);
                      v146 = *(v27 + v143 + 32);
                      v147 = *(v27 + v143 + 48);
                      v148 = *(v27 + v143 + 64);
                      v149 = *(v27 + v143 + 80);
                      v150 = *(v27 + v143 + 96);
                      v225 = *(v27 + v143 + 112);
                      v224[6] = v150;
                      v224[5] = v149;
                      v224[4] = v148;
                      v224[3] = v147;
                      v224[2] = v146;
                      v224[1] = v145;
                      v224[0] = v144;
                      v151 = *(v224 + (v115 & 0xF));
                      v223[7] = v225;
                      v223[6] = v150;
                      v223[5] = v149;
                      v223[4] = v148;
                      v223[3] = v147;
                      v223[2] = v146;
                      v223[1] = v145;
                      v223[0] = v144;
                      v152 = v116 & 0xF;
                      v153 = *(v223 + v152);
                      v226[0] = v80;
                      v226[1] = v81;
                      v226[2] = v82;
                      v226[3] = v83;
                      if (v151 == v153 * *(v226 + v152))
                      {
                        v154 = *(v28 + v143);
                        v155 = *(v28 + v143 + 16);
                        v156 = *(v28 + v143 + 32);
                        v157 = *(v28 + v143 + 48);
                        v158 = *(v28 + v143 + 64);
                        v159 = *(v28 + v143 + 80);
                        v160 = *(v28 + v143 + 96);
                        v222 = *(v28 + v143 + 112);
                        v221[6] = v160;
                        v221[5] = v159;
                        v221[4] = v158;
                        v221[3] = v157;
                        v221[2] = v156;
                        v221[1] = v155;
                        v221[0] = v154;
                        v161 = *(v221 + (v115 & 0xF));
                        v220[7] = v222;
                        v220[6] = v160;
                        v220[5] = v159;
                        v220[4] = v158;
                        v220[3] = v157;
                        v220[2] = v156;
                        v220[1] = v155;
                        v220[0] = v154;
                        v162 = *(v220 + v152);
                        v219[0] = v95;
                        v219[1] = v96;
                        v219[2] = v97;
                        v219[3] = v98;
                        if (v161 == v162 * *(v219 + v152))
                        {
                          v163 = *(v71 + v143);
                          v164 = *(v71 + v143 + 16);
                          v165 = *(v71 + v143 + 32);
                          v166 = *(v71 + v143 + 48);
                          v167 = *(v71 + v143 + 64);
                          v168 = *(v71 + v143 + 80);
                          v169 = *(v71 + v143 + 112);
                          v217 = *(v71 + v143 + 96);
                          v218 = v169;
                          v216[4] = v167;
                          v216[5] = v168;
                          v216[2] = v165;
                          v216[3] = v166;
                          v216[0] = v163;
                          v216[1] = v164;
                          v170 = *(v216 + (v115 & 0xF));
                          v215[6] = v217;
                          v215[7] = v169;
                          v215[4] = v167;
                          v215[5] = v168;
                          v215[2] = v165;
                          v215[3] = v166;
                          v215[0] = v163;
                          v215[1] = v164;
                          v171 = *(v215 + (v116 & 0xF));
                          v214[0] = v107;
                          v214[1] = v108;
                          v214[2] = v109;
                          v214[3] = v110;
                          if (v170 == v171 * *(v214 + (v116 & 0xF)))
                          {
                            if (v86 && v88 || (v195 = *MEMORY[0x277CD73C8], v196 = *MEMORY[0x277CD7400], (*(v27 + v195) >> 3) * v118 == *(v27 + v196)) && (*(v28 + v195) >> 3) * v122 == *(v28 + v196) && (*(v71 + v195) >> 3) * v126 == *(v71 + v196))
                            {
                              if (!v29)
                              {
                                goto LABEL_157;
                              }

                              v172 = v29 + v84;
                              result = 3;
                              if (*(v172 + 2) != v86)
                              {
                                return result;
                              }

                              if (*(v172 + 3) != v88)
                              {
                                return result;
                              }

                              v173 = (v29 + v79);
                              v174 = *v173;
                              v175 = v173[1];
                              v176 = v173[2];
                              v177 = v173[3];
                              v213[2] = v176;
                              v213[3] = v177;
                              v213[0] = v174;
                              v213[1] = v175;
                              LODWORD(v173) = *(v213 + (v86 & 0xF));
                              v212[2] = v176;
                              v212[3] = v177;
                              v212[0] = v174;
                              v212[1] = v175;
                              result = 3;
                              if (v87 != v173)
                              {
                                return result;
                              }

                              if (v89 != *(v212 + (v88 & 0xF)))
                              {
                                return result;
                              }

                              v178 = *(v29 + v117);
                              v179 = *(v29 + v117 + 16);
                              v180 = *(v29 + v117 + 48);
                              v210 = *(v29 + v117 + 32);
                              v211 = v180;
                              v209[0] = v178;
                              v209[1] = v179;
                              v181 = *(v209 + (v86 & 0xF));
                              v208[2] = v210;
                              v208[3] = v180;
                              v208[0] = v178;
                              v208[1] = v179;
                              result = 3;
                              if (v87 != v181 || v89 != *(v208 + (v88 & 0xF)))
                              {
                                return result;
                              }

                              v182 = *(v29 + v130);
                              v183 = *(v29 + v130 + 16);
                              v184 = *(v29 + v130 + 48);
                              v206 = *(v29 + v130 + 32);
                              v207 = v184;
                              v205[0] = v182;
                              v205[1] = v183;
                              v185 = *(v205 + (v86 & 0xF));
                              v204[2] = v206;
                              v204[3] = v184;
                              v204[0] = v182;
                              v204[1] = v183;
                              if (!(v185 | *(v204 + (v88 & 0xF))))
                              {
                                v186 = *(v29 + v143);
                                v187 = *(v29 + v143 + 16);
                                v188 = *(v29 + v143 + 32);
                                v189 = *(v29 + v143 + 48);
                                v190 = *(v29 + v143 + 64);
                                v191 = *(v29 + v143 + 80);
                                v192 = *(v29 + v143 + 112);
                                v202 = *(v29 + v143 + 96);
                                v203 = v192;
                                v201[4] = v190;
                                v201[5] = v191;
                                v201[2] = v188;
                                v201[3] = v189;
                                v201[0] = v186;
                                v201[1] = v187;
                                v193 = *(v201 + (v115 & 0xF));
                                v200[6] = v202;
                                v200[7] = v192;
                                v200[4] = v190;
                                v200[5] = v191;
                                v200[2] = v188;
                                v200[3] = v189;
                                v200[0] = v186;
                                v200[1] = v187;
                                v194 = *(v200 + (v116 & 0xF));
                                v199[0] = v174;
                                v199[1] = v175;
                                v199[2] = v176;
                                v199[3] = v177;
                                if (v193 == v194 * *(v199 + (v116 & 0xF)) && (v86 && v88 || (*(v29 + *MEMORY[0x277CD73C8]) >> 3) * v178 == *(v29 + *MEMORY[0x277CD7400])))
                                {
LABEL_157:
                                  if ((*(&selfCopy2->super.super.super.super.isa + v31))[368] < 11)
                                  {
                                    return 3;
                                  }

                                  else
                                  {
                                    return 4;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          return 3;
        }

        v70 = *(v28 + v39);
        v256[0] = v62;
        v256[1] = v63;
        v256[2] = v64;
        v256[3] = v65;
        v46 = *(v256 + (v70 & 0xF)) >= 0x81u;
      }

      LOBYTE(v67) = !v46;
      goto LABEL_85;
    }

LABEL_24:
    MTLReportFailure();
    goto LABEL_25;
  }

  v12 = v11 >> 3;
  if (v12 <= 1)
  {
    v12 = 1;
  }

  result = 3;
  while (*(*v10 + 96) == 1)
  {
    v10 += 8;
    if (!--v12)
    {
      goto LABEL_8;
    }
  }

  return result;
}

- (MPSNDArrayMatrixMultiplication)initWithDevice:(id)device sourceCount:(unint64_t)count
{
  v16.receiver = self;
  v16.super_class = MPSNDArrayMatrixMultiplication;
  v5 = [(MPSNDArrayMultiaryKernel *)&v16 initWithDevice:device sourceCount:count];
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  v5->_alpha = 1.0;
  v5->_beta = 1.0;
  v5->super._encode = EncodeArrayMultiply;
  v5->super.super._encodeData = v5;
  v7 = *MEMORY[0x277CD7350];
  v8 = *(&v5->super.super.super.super.isa + v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZL19setParametersFromEVP30MPSNDArrayMatrixMultiplicationP9MPSDevice_block_invoke;
  block[3] = &unk_278B020E8;
  block[4] = v5;
  block[5] = v8;
  if (setParametersFromEV(MPSNDArrayMatrixMultiplication *,MPSDevice *)::setEVTileParams != -1)
  {
    dispatch_once(&setParametersFromEV(MPSNDArrayMatrixMultiplication *,MPSDevice *)::setEVTileParams, block);
    v15 = MPSIsReducedPrecision();
    v10 = MEMORY[0x277CD7378];
    if (!v15)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = MPSIsReducedPrecision();
  v10 = MEMORY[0x277CD7378];
  if (v9)
  {
LABEL_4:
    *(&v6->super.super.super.super.isa + *v10) = (*(&v6->super.super.super.super.isa + *v10) | 2);
  }

LABEL_5:
  if (((*(&v6->super.super.super.super.isa + v7))[368] - 25) <= 0xFFFFFFF8)
  {
    v6->_mmul = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:device transposeLeft:0 transposeRight:0 resultRows:0 resultColumns:0 interiorColumns:0 alpha:1.0 beta:1.0];
  }

  v11 = [[MPSNDArrayIdentity alloc] initWithDevice:device];
  v6->_identity = v11;
  *(&v11->super.super.super.super.super.isa + *v10) = (*(&v11->super.super.super.super.super.isa + *v10) | 1);
  v6->_normFusionDescriptor = 0;
  v6->_normScaleArray = 0;
  v12 = [MPSNDArrayStitchedReductionRMSNorm alloc];
  LODWORD(v13) = 897988541;
  v6->_rmsKernel = [(MPSNDArrayStitchedReductionRMSNorm *)v12 initWithDevice:device axis:0 epsilon:v13];
  v6->_softmaxKernel = [[MPSNDArrayStitchedReductionSoftmax alloc] initWithDevice:device axis:0];
  v6->_autoTuneIteration = -1;
  v6->_nextAutoTuneIteration = -1;
  v6->_logNextAutoTuneParams = 0;
  return v6;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v108[16] = *MEMORY[0x277D85DE8];
  v5 = [arrays objectAtIndexedSubscript:{0, state}];
  v6 = [arrays objectAtIndexedSubscript:1];
  v7 = 0;
  v8 = *MEMORY[0x277CD73D8];
  v9 = v5 + v8;
  v10 = *(v5 + v8);
  v11 = (v6 + v8);
  v12 = *v11;
  if (v10 <= BYTE1(v10))
  {
    v13 = *MEMORY[0x277CD7410];
    v14 = (v5 + v13);
    v15 = *(v6 + v13 + 4);
    v16 = *v14 == 1 && v14[1] == v15;
    v7 = 4;
    if (v16)
    {
      v7 = 0;
    }
  }

  if (*v11 <= BYTE1(*v11))
  {
    v17 = *MEMORY[0x277CD7410];
    if (*(v6 + v17 + 4) == 1 && *(v6 + v17) == *(v5 + v17))
    {
      v18 = 1;
    }

    else
    {
      v18 = *(v6 + v17);
    }
  }

  else
  {
    v17 = *MEMORY[0x277CD7410];
    v18 = *(v6 + v17 + 4);
  }

  v108[0] = v18;
  v20 = (v5 + v17);
  v21 = *(v5 + v17 + v7);
  v79 = BYTE13(v10);
  v22 = BYTE12(v12);
  v23 = BYTE12(v10);
  v24 = BYTE11(v12);
  v25 = BYTE11(v10);
  v26 = BYTE10(v12);
  v27 = BYTE10(v10);
  v28 = BYTE9(v12);
  v29 = BYTE9(v10);
  v30 = BYTE8(v12);
  v31 = BYTE8(v10);
  v32 = BYTE7(v12);
  v33 = BYTE7(v10);
  v34 = BYTE6(v12);
  v35 = BYTE6(v10);
  v36 = BYTE5(v12);
  v37 = BYTE5(v10);
  v38 = BYTE4(v12);
  v39 = BYTE4(v10);
  v40 = BYTE3(v12);
  v41 = BYTE3(v10);
  v42 = BYTE2(v12);
  v43 = BYTE2(v10);
  v108[1] = v21;
  v44 = *v20;
  v45 = v20[1];
  v46 = v20[2];
  v47 = v20[3];
  v96[3] = v47;
  v96[2] = v46;
  v96[1] = v45;
  v96[0] = v44;
  LODWORD(v48) = *(v96 + (v43 & 0xF));
  v49 = (v6 + v17);
  v50 = *v49;
  v51 = v49[1];
  v52 = v49[2];
  v53 = v49[3];
  v95[2] = v52;
  v95[3] = v53;
  v95[0] = v50;
  v95[1] = v51;
  v54 = *(v95 + (v42 & 0xF));
  if (v48 <= v54)
  {
    v48 = v54;
  }

  else
  {
    v48 = v48;
  }

  v108[2] = v48;
  v97[3] = v47;
  v97[2] = v46;
  v97[1] = v45;
  v97[0] = v44;
  LODWORD(v48) = *(v97 + (v41 & 0xF));
  v94[2] = v52;
  v94[3] = v53;
  v94[0] = v50;
  v94[1] = v51;
  v55 = *(v94 + (v40 & 0xF));
  if (v48 <= v55)
  {
    v48 = v55;
  }

  else
  {
    v48 = v48;
  }

  v108[3] = v48;
  v98[3] = v47;
  v98[2] = v46;
  v98[1] = v45;
  v98[0] = v44;
  LODWORD(v48) = *(v98 + (v39 & 0xF));
  v93[2] = v52;
  v93[3] = v53;
  v93[0] = v50;
  v93[1] = v51;
  v56 = *(v93 + (v38 & 0xF));
  if (v48 <= v56)
  {
    v48 = v56;
  }

  else
  {
    v48 = v48;
  }

  v108[4] = v48;
  v99[3] = v47;
  v99[2] = v46;
  v99[1] = v45;
  v99[0] = v44;
  LODWORD(v48) = *(v99 + (v37 & 0xF));
  v92[2] = v52;
  v92[3] = v53;
  v92[0] = v50;
  v92[1] = v51;
  v57 = *(v92 + (v36 & 0xF));
  if (v48 <= v57)
  {
    v48 = v57;
  }

  else
  {
    v48 = v48;
  }

  v108[5] = v48;
  v100[3] = v47;
  v100[2] = v46;
  v100[1] = v45;
  v100[0] = v44;
  LODWORD(v48) = *(v100 + (v35 & 0xF));
  v91[2] = v52;
  v91[3] = v53;
  v91[0] = v50;
  v91[1] = v51;
  v58 = *(v91 + (v34 & 0xF));
  if (v48 <= v58)
  {
    v48 = v58;
  }

  else
  {
    v48 = v48;
  }

  v108[6] = v48;
  v101[3] = v47;
  v101[2] = v46;
  v101[1] = v45;
  v101[0] = v44;
  LODWORD(v48) = *(v101 + (v33 & 0xF));
  v90[2] = v52;
  v90[3] = v53;
  v90[0] = v50;
  v90[1] = v51;
  v59 = *(v90 + (v32 & 0xF));
  if (v48 <= v59)
  {
    v48 = v59;
  }

  else
  {
    v48 = v48;
  }

  v108[7] = v48;
  v102[3] = v47;
  v102[2] = v46;
  v102[1] = v45;
  v102[0] = v44;
  LODWORD(v48) = *(v102 + (v31 & 0xF));
  v89[2] = v52;
  v89[3] = v53;
  v89[0] = v50;
  v89[1] = v51;
  v60 = *(v89 + (v30 & 0xF));
  if (v48 <= v60)
  {
    v48 = v60;
  }

  else
  {
    v48 = v48;
  }

  v108[8] = v48;
  v103[3] = v47;
  v103[2] = v46;
  v103[1] = v45;
  v103[0] = v44;
  LODWORD(v48) = *(v103 + (v29 & 0xF));
  v88[2] = v52;
  v88[3] = v53;
  v88[0] = v50;
  v88[1] = v51;
  v61 = *(v88 + (v28 & 0xF));
  if (v48 <= v61)
  {
    v48 = v61;
  }

  else
  {
    v48 = v48;
  }

  v108[9] = v48;
  v104[3] = v47;
  v104[2] = v46;
  v104[1] = v45;
  v104[0] = v44;
  LODWORD(v48) = *(v104 + (v27 & 0xF));
  v87[2] = v52;
  v87[3] = v53;
  v87[0] = v50;
  v87[1] = v51;
  v62 = *(v87 + (v26 & 0xF));
  if (v48 <= v62)
  {
    v48 = v62;
  }

  else
  {
    v48 = v48;
  }

  v108[10] = v48;
  v105[3] = v47;
  v105[2] = v46;
  v105[1] = v45;
  v105[0] = v44;
  LODWORD(v48) = *(v105 + (v25 & 0xF));
  v86[2] = v52;
  v86[3] = v53;
  v86[0] = v50;
  v86[1] = v51;
  v63 = *(v86 + (v24 & 0xF));
  if (v48 <= v63)
  {
    v48 = v63;
  }

  else
  {
    v48 = v48;
  }

  v108[11] = v48;
  v106[3] = v47;
  v106[2] = v46;
  v106[1] = v45;
  v106[0] = v44;
  LODWORD(v48) = *(v106 + (v23 & 0xF));
  v85[2] = v52;
  v85[3] = v53;
  v85[0] = v50;
  v85[1] = v51;
  v64 = *(v85 + (v22 & 0xF));
  if (v48 <= v64)
  {
    v48 = v64;
  }

  else
  {
    v48 = v48;
  }

  v108[12] = v48;
  v107[3] = v47;
  v107[2] = v46;
  v107[1] = v45;
  v107[0] = v44;
  LODWORD(v48) = *(v107 + (v79 & 0xF));
  v65 = *(v11 + 13) & 0xF;
  v84[2] = v52;
  v84[3] = v53;
  v84[0] = v50;
  v84[1] = v51;
  v66 = *(v84 + v65);
  if (v48 <= v66)
  {
    v48 = v66;
  }

  else
  {
    v48 = v48;
  }

  v108[13] = v48;
  v67 = *(v9 + 14) & 0xF;
  v82[2] = v46;
  v82[3] = v47;
  v82[0] = v44;
  v82[1] = v45;
  LODWORD(v67) = *(v82 + v67);
  v68 = *(v11 + 14) & 0xF;
  v83[2] = v52;
  v83[3] = v53;
  v83[0] = v50;
  v83[1] = v51;
  v69 = *(v83 + v68);
  if (v67 <= v69)
  {
    v67 = v69;
  }

  else
  {
    v67 = v67;
  }

  v108[14] = v67;
  v70 = *(v9 + 15) & 0xF;
  v80[2] = v46;
  v80[3] = v47;
  v80[0] = v44;
  v80[1] = v45;
  v71 = *(v80 + v70);
  v72 = *(v11 + 15) & 0xF;
  v81[2] = v52;
  v81[3] = v53;
  v81[0] = v50;
  v81[1] = v51;
  LODWORD(v72) = *(v81 + v72);
  if (v71 <= v72)
  {
    v72 = v72;
  }

  else
  {
    v72 = v71;
  }

  v108[15] = v72;
  v73 = MEMORY[0x277CD7268];
  v74 = [arrays objectAtIndexedSubscript:0];
  v75 = *(v74 + *MEMORY[0x277CD73C8]);
  v76 = [arrays objectAtIndexedSubscript:0];
  result = [v73 descriptorWithDataType:v75 dimensionCount:*(v76 + *MEMORY[0x277CD73F0]) dimensionSizes:v108];
  v78 = *MEMORY[0x277D85DE8];
  return result;
}

- (MPSNDArrayMatrixMultiplication)initWithCoder:(id)coder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayMatrixMultiplication;
  v6 = [MPSNDArrayMultiaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v6)
  {
    [coder decodeDoubleForKey:@"MPSNDArrayMatrixMultiplication.alpha"];
    v6->_alpha = v7;
    [coder decodeDoubleForKey:@"MPSNDArrayMatrixMultiplication.beta"];
    v6->_beta = v8;
    v6->super._encode = EncodeArrayMultiply;
    v6->super.super._encodeData = v6;
    v6->_mmul = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:device transposeLeft:0 transposeRight:0 resultRows:0 resultColumns:0 interiorColumns:0 alpha:1.0 beta:1.0];
    v9 = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    v6->_identity = v9;
    *(&v9->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) = (*(&v9->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) | 1);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMatrixMultiplication;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeDouble:@"MPSNDArrayMatrixMultiplication.alpha" forKey:self->_alpha];
  [coder encodeDouble:@"MPSNDArrayMatrixMultiplication.beta" forKey:self->_beta];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayMatrixMultiplication;
  result = [MPSNDArrayMultiaryKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (result)
  {
    *(result + 32) = *&self->_alpha;
    *(result + 33) = *&self->_beta;
    self->super._encode = EncodeArrayMultiply;
    self->super.super._encodeData = self;
    v8 = result;
    *(result + 18) = [(MPSMatrixMultiplication *)self->_mmul copyWithZone:zone device:device];
    v9 = [(MPSNDArrayIdentity *)self->_identity copyWithZone:zone device:device];
    result = v8;
    v8[19] = v9;
  }

  return result;
}

- (void)dealloc
{
  autoTuningParams = self->_autoTuningParams;
  if (autoTuningParams)
  {
    free(autoTuningParams);
  }

  alphaBetaKernelDAGObject = self->_alphaBetaKernelDAGObject;
  if (alphaBetaKernelDAGObject)
  {
  }

  v5.receiver = self;
  v5.super_class = MPSNDArrayMatrixMultiplication;
  [(MPSNDArrayMultiaryBase *)&v5 dealloc];
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v73.receiver = self;
  v73.super_class = MPSNDArrayMatrixMultiplication;
  v9 = [(MPSNDArrayMultiaryBase *)&v73 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state];
  graph = [object graph];
  v11 = *(graph + 64);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 == v13)
  {
    v16 = 0;
  }

  else
  {
    v14 = graph;
    v15 = 0;
    v16 = -1;
    v17 = -1;
    do
    {
      v18 = *v12;
      if (v18 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        v16 = v15;
      }

      v19 = *v12;
      if (v19 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        v17 = v15;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v14) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v14);
      }

      ++v15;
      ++v12;
    }

    while (v12 != v13);
    if (v16 == -1)
    {
      v16 = 0;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v17 != -1)
    {
      goto LABEL_17;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_15:
    MTLReportFailure();
  }

LABEL_16:
  v17 = 0;
LABEL_17:
  v20 = [arrays objectAtIndexedSubscript:v16];
  v21 = [arrays objectAtIndexedSubscript:v17];
  v22 = v21;
  v23 = *MEMORY[0x277CD73D8];
  v24 = *(v20 + v23);
  v25 = BYTE1(*(v20 + v23));
  v64 = *(v21 + v23);
  v26 = BYTE1(*(v21 + v23));
  v27 = *MEMORY[0x277CD7410];
  v28 = *(v20 + v27 + 4 * (WORD1(*(v20 + v23)) & 0xF));
  v29 = *(destArrays + v27);
  v30 = *(destArrays + v27 + 16);
  v31 = *(destArrays + v27 + 48);
  v32 = *(destArrays + v23);
  v70 = *(destArrays + v27 + 32);
  v71 = v31;
  v69[0] = v29;
  v69[1] = v30;
  v33 = *(v69 + (BYTE1(v32) & 0xF));
  v72[2] = v70;
  v72[3] = v31;
  v72[0] = v29;
  v72[1] = v30;
  v34 = *(v72 + (v32 & 0xF));
  if (v64 <= v26)
  {
    v35 = v24;
  }

  else
  {
    v35 = v25;
  }

  v36 = *(v21 + v27 + 4 * (v35 & 0xF));
  v37 = MEMORY[0x277CD73C8];
  v65 = v33;
  v66 = v28;
  v38 = v33 * v28 * v34;
  v39 = (v38 * v36);
  if ((*(destArrays + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [v9 setFloat32Ops:v39];
    [v9 setFloat16Ops:0.0];
    if (*(kernel + 33) != 0.0)
    {
      [v9 float32Ops];
      [v9 setFloat32Ops:v40 + v38];
    }
  }

  else
  {
    [v9 setFloat16Ops:v39];
    [v9 setFloat32Ops:0.0];
    if (*(kernel + 33) != 0.0)
    {
      [v9 float16Ops];
      [v9 setFloat16Ops:v41 + v38];
    }
  }

  [v9 float32Ops];
  v43 = v42;
  [v9 float16Ops];
  v45 = v43 + v44;
  [v9 deviceMemoryBytesRead];
  v47 = v46;
  [v9 deviceMemoryBytesWrite];
  v49 = *(v20 + *v37);
  v50 = v45 / (v47 + v48);
  v51 = MPSGetDataTypeName();
  v52 = *(v22 + *v37);
  v53 = MPSGetDataTypeName();
  v54 = *(destArrays + *v37);
  v55 = MPSGetDataTypeName();
  MPSKernel_LogInfo(kernel, 2uLL, "Matrix Multiply: M=%lu, N=%lu, K=%lu, Batch Size: %lu, transposeA=%d, transposeB=%d, A Datatype: %s, B Datatype: %s C Datatype: %s\t", v65, v34, v36, v66, v24 > v25, v64 > v26, v51, v53, v55);
  [v9 float16Ops];
  v57 = v56;
  [v9 float32Ops];
  v59 = v58;
  [v9 deviceMemoryBytesRead];
  v61 = v60;
  [v9 deviceMemoryBytesWrite];
  MPSKernel_LogInfo(kernel, 2uLL, "Matrix Multiply: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v57, v59, v61, v62, v50);
  return v9;
}

- (id)encodePreProcessingToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays destinationArray:(id *)array kernelDAGObject:(id *)object
{
  v7 = MEMORY[0x28223BE20](self, a2, encoder, buffer, arrays, array, object);
  v303 = v8;
  v314 = v9;
  v308 = v10;
  v306 = v11;
  v12 = v7;
  v394[3] = *MEMORY[0x277D85DE8];
  v14 = *v13;
  CoreOpNumberOfInputs = MPSKernelDAG::GetCoreOpNumberOfInputs([*v13 graph]);
  finalOp = [v14 finalOp];
  v17 = (*(*finalOp + 16))(finalOp);
  v316 = v12;
  v311 = *MEMORY[0x277CD7350];
  v18 = [MPSNDArrayMatrixMultiplication supportsPostfixForDevice:*(v12 + v311)];
  if (CoreOpNumberOfInputs >= 3 && v17 != 0 && v18)
  {
    if (CoreOpNumberOfInputs != 3)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    operator new();
  }

  v305 = v17 ^ 1;
  graph = [v14 graph];
  v22 = graph;
  v23 = *(graph + 64);
  v24 = *v23;
  v25 = v23[1];
  if (*v23 == v25)
  {
    goto LABEL_363;
  }

  v26 = 0;
  v27 = -1;
  v28 = -1;
  v29 = -1;
  do
  {
    v30 = *v24;
    if (v30 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v22) + 32))
    {
      v27 = v26;
    }

    v31 = *v24;
    if (v31 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v22) + 32))
    {
      v29 = v26;
    }

    if (MPSKernelDAG::GetCoreOpNumberOfInputs(v22) == 3)
    {
      v32 = *v24;
      if (v32 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v22) + 32))
      {
        v28 = v26;
      }
    }

    ++v26;
    ++v24;
  }

  while (v24 != v25);
  if (v27 == -1 || v29 == -1)
  {
    goto LABEL_363;
  }

  v309 = [v314 objectAtIndexedSubscript:v27];
  v307 = [v314 objectAtIndexedSubscript:v29];
  if (v28 == -1)
  {
    v304 = 0;
  }

  else
  {
    v304 = [v314 objectAtIndexedSubscript:v28];
  }

  v315 = [MEMORY[0x277CBEB18] arrayWithArray:v314];
  v34 = *(v316 + 184);
  if (v34 && [v34 normFusionType])
  {
    v35 = *v303;
    v36 = *(v316 + v311);
    normFusionType = [*(v316 + 184) normFusionType];
    isLeftFused = [*(v316 + 184) isLeftFused];
    if (!v36 || (*(v36 + 1477) & 4) == 0 || *(v36 + 1472) < 11)
    {
      goto LABEL_35;
    }

    v234 = *(v316 + 200);
    v235 = *MEMORY[0x277CD7410];
    v236 = *(&v35->super.isa + v235);
    v237 = *(&v35[2].super.isa + v235);
    v238 = *(&v35[4].super.isa + v235);
    v239 = *MEMORY[0x277CD73D8];
    v240 = *(&v35->super.isa + v239);
    v387 = *(&v35[6].super.isa + v235);
    v386[2] = v238;
    v386[1] = v237;
    v386[0] = v236;
    v241 = *(v386 + (BYTE1(v240) & 0xF));
    v385[3] = v387;
    v385[2] = v238;
    v385[1] = v237;
    v385[0] = v236;
    v242 = *(v385 + (v240 & 0xF));
    if (v234 && (*(v234 + 30) & 1) != 0)
    {
      v243 = 1;
      goto LABEL_268;
    }

    v244 = v241 >> 10 > 6 || v242 >> 10 >= 7;
    if (v244 && ((v245 = *&v309[4 * (*&v309[v239] & 0xF) + v235], v245 != 18816) ? (v246 = v245 == 7168) : (v246 = 1), v246))
    {
      v247 = v241 >= 8;
    }

    else
    {
      v248 = *MEMORY[0x277CD73C8];
      if (*&v309[v248] == 268435488)
      {
        v249 = v307;
        v250 = 3;
        if (*&v307[v248] == 268435488)
        {
          v250 = 4;
        }
      }

      else
      {
        v250 = 3;
        v249 = v307;
      }

      v251 = 9;
      v252 = *&v309[v239];
      v253 = *&v249[v239];
      if (v242 * v241 * v250 < *(v36 + 1480) << 12)
      {
        v251 = 15;
      }

      v254 = *&v309[v235];
      v255 = *&v309[v235 + 16];
      v256 = *&v309[v235 + 32];
      v257 = *&v309[v235 + 48];
      v384[3] = v257;
      v384[2] = v256;
      v384[1] = v255;
      v384[0] = v254;
      v258 = *(v384 + (BYTE2(v252) & 0xF));
      v259 = *&v249[v235];
      v260 = *&v249[v235 + 16];
      v261 = *&v249[v235 + 32];
      v262 = *&v249[v235 + 48];
      v382[3] = v262;
      v382[2] = v261;
      v382[1] = v260;
      v382[0] = v259;
      if (v252 <= BYTE1(v252) && *(v382 + (BYTE2(v253) & 0xF)) == 1)
      {
        v264 = v258;
      }

      else
      {
        v264 = 1;
      }

      v265 = v253 > BYTE1(v253) && v258 == 1;
      v266 = v264 * v241;
      if (v265)
      {
        v267 = *(v382 + (BYTE2(v253) & 0xF));
      }

      else
      {
        v267 = 1;
      }

      v268 = v267 * v242;
      v269 = v266 > v251 && v268 > v251;
      v383[3] = v257;
      v383[2] = v256;
      v383[1] = v255;
      v383[0] = v254;
      v270 = BYTE3(v252) & 0xF;
      LODWORD(v271) = *(v383 + v270);
      v381[3] = v262;
      v381[2] = v261;
      v381[1] = v260;
      v381[0] = v259;
      v272 = *(v381 + v270);
      v243 = !v269;
      if (v271 <= v272)
      {
        v271 = v272;
      }

      else
      {
        v271 = v271;
      }

      v273 = v266 * v271;
      if (v243 != 1 || v273 <= v251)
      {
LABEL_268:
        if (!v304 && v243)
        {
          v275 = &v309[v239];
          v276 = *&v309[4 * (v309[v239 + 1] & 0xF) + v235];
          v277 = *&v307[v239];
          v278 = *&v307[4 * (v277 & 0xF) + v235];
          if (v276 < v278)
          {
            v278 = v276;
          }

          if (normFusionType == 1)
          {
            if (v278 == v242)
            {
              v279 = *v275 > BYTE1(*v275);
            }

            else
            {
              v279 = v277 <= BYTE1(v277);
            }

            v281 = isLeftFused == (v278 == v242) || v278 > 7;
            if (!v281 && v279)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v278 == v242)
            {
              v280 = *v275 > BYTE1(*v275);
            }

            else
            {
              v280 = v277 <= BYTE1(v277);
            }

            v282 = v278 == v242;
            v283 = v278 < 8 && v280;
            if (isLeftFused != v282 && !v283)
            {
              goto LABEL_61;
            }
          }
        }

LABEL_35:
        if ([*(v316 + 184) isLeftFused])
        {
          v39 = v309;
        }

        else
        {
          v39 = v307;
        }

        if ([*(v316 + 184) hasScale])
        {
          v40 = *(v316 + 192);
          v393[0] = v39;
          v393[1] = v40;
          [MEMORY[0x277CBEA60] arrayWithObjects:v393 count:2];
          isLeftFused2 = [*(v316 + 184) isLeftFused];
          v42 = *([v14 graph] + 56);
          v43 = *v42;
          if (v42[1] != *v42)
          {
            v44 = isLeftFused2 ^ 1u;
            v46 = *(*v43 + 8);
            v45 = *v46;
            if (v44 < (v46[1] - *v46) >> 3)
            {
              v47 = *(*(v45 + 8 * v44) + 16);
              v49 = *v47;
              v48 = v47[1];
              memset(v394, 0, 24);
              if (v48 != v49)
              {
                if (((v48 - v49) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                std::vector<long>::__throw_length_error[abi:ne200100]();
              }

              [objc_msgSend(*(v316 + 192) "descriptor")];
              v50 = v388;
              v390 = 0;
              v391 = 0;
              v389 = 0;
              v52 = *v388;
              v51 = *(v388 + 8);
              if (v51 != *v388)
              {
                if (((v51 - *v388) & 0x8000000000000000) == 0)
                {
                  v53 = v51 - *v388;
                  operator new();
                }

                std::vector<long>::__throw_length_error[abi:ne200100]();
              }

              v388 = 0;
              if (v52)
              {
                *(v50 + 8) = v52;
                operator delete(v52);
              }

              MEMORY[0x23EE7C8C0](v50, 0x10C402FEFCB83);
              operator new();
            }

            std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
          }

          std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
        }

        v392 = v39;
        v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v392 count:1];
        descriptor = [v39 descriptor];
        v56 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v308 descriptor:descriptor];
        isLeftFused3 = [*(v316 + 184) isLeftFused];
        normFusionType2 = [*(v316 + 184) normFusionType];
        v59 = isLeftFused3 ^ 1u;
        if (normFusionType2 == 2)
        {
          v60 = (v316 + 240);
          [*(v316 + 240) setAxis:v59];
          [*(v316 + 184) epsilon];
          [*(v316 + 240) setEpsilon:?];
        }

        else
        {
          if (normFusionType2 != 1)
          {
LABEL_56:
            isLeftFused4 = [*(v316 + 184) isLeftFused];
            v62 = v307;
            if (!isLeftFused4)
            {
              v62 = v56;
            }

            v307 = v62;
            v63 = v309;
            if (isLeftFused4)
            {
              v63 = v56;
            }

            v309 = v63;
            goto LABEL_61;
          }

          v60 = (v316 + 248);
          [*(v316 + 248) setAxis:v59];
        }

        [*v60 encodeToMPSCommandEncoder:v306 commandBuffer:v308 sourceArrays:v54 resultState:0 destinationArray:v56 kernelDAGObject:0];
        goto LABEL_56;
      }

      v380[0] = v259;
      v380[1] = v260;
      v380[2] = v261;
      v380[3] = v262;
      v247 = *(v380 + (v253 & 0xF)) >= 0x81u;
    }

    v243 = !v247;
    goto LABEL_268;
  }

LABEL_61:
  v64 = *MEMORY[0x277CD73D8];
  v65 = *&v309[v64];
  if ((*(*(v316 + v311) + 1472) - 11) < 0xD)
  {
    v66 = *&v307[v64];
    if (BYTE1(*&v309[v64]))
    {
      v67 = *&v309[v64] != 0;
    }

    else
    {
      v67 = 0;
    }

    v68.i32[0] = v66;
    v68.i32[1] = BYTE1(v66);
    v69 = vtst_s32(v68, 0xFF000000FFLL);
    v70 = v69.i8[0] & v69.i8[4];
    if (v304)
    {
      v71 = 0;
      v72 = *&v304[v64];
      v73.i32[0] = v72;
      v73.i32[1] = BYTE1(v72);
      v74 = vtst_s32(v73, 0xFF000000FFLL);
      v75 = v74.i8[0] & v74.i8[4];
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v76 = BYTE2(v65) == 3 && BYTE3(v65) == 2;
  v67 = *&v309[v64] > 1u || BYTE1(*&v309[v64]) > 1u || v76;
  v78 = *&v307[v64];
  v79.i32[0] = v78;
  v79.i32[1] = BYTE1(v78);
  v80 = vcgt_u32(vand_s8(v79, 0xFF000000FFLL), 0x100000001);
  if (((v80.i32[0] | v80.i32[1]) & 1) == 0)
  {
    if (BYTE2(v78) == 3)
    {
      v70 = BYTE3(v78) == 2;
      if (v304)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v70 = 0;
      if (v304)
      {
        goto LABEL_78;
      }
    }

LABEL_87:
    v75 = 0;
    v71 = 1;
    goto LABEL_88;
  }

  v70 = 1;
  if (!v304)
  {
    goto LABEL_87;
  }

LABEL_78:
  v81 = *&v304[v64];
  v82.i32[0] = v81;
  v82.i32[1] = BYTE1(v81);
  v83 = vcgt_u32(vand_s8(v82, 0xFF000000FFLL), 0x100000001);
  v84 = BYTE3(v81) == 2;
  if (BYTE2(v81) != 3)
  {
    v84 = 0;
  }

  v71 = 0;
  v75 = ((v83.i8[0] | v83.i8[4]) & 1) != 0 || v84;
LABEL_88:
  [v315 setObject:v309 atIndexedSubscript:v27];
  [v315 setObject:v307 atIndexedSubscript:v29];
  if ((v71 & 1) == 0)
  {
    [v315 setObject:v304 atIndexedSubscript:v28];
  }

  if (v67)
  {
    v85 = *(v316 + 152);
    v86 = *&v309[*MEMORY[0x277CD73D8]];
    if ((*(*(v316 + v311) + 1472) - 11) > 0xC)
    {
      if (*&v309[*MEMORY[0x277CD73D8]] <= 1u && BYTE1(*&v309[*MEMORY[0x277CD73D8]]) <= 1u && (BYTE2(v86) != 3 || BYTE3(v86) != 2))
      {
        goto LABEL_100;
      }
    }

    else if (!*&v309[*MEMORY[0x277CD73D8]] || !BYTE1(*&v309[*MEMORY[0x277CD73D8]]))
    {
LABEL_100:
      v89 = v309;
      goto LABEL_101;
    }

    v87 = [objc_msgSend(v309 "descriptor")];
    v88 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v309[*MEMORY[0x277CD73C8]] shape:v87];
    v89 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v308 descriptor:v88];
    v394[0] = v309;
    [v85 encodeToMPSCommandEncoder:v306 commandBuffer:v308 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v394 kernelDAGObject:{1), 0, v89, 0}];
LABEL_101:
    [v315 setObject:v89 atIndexedSubscript:v27];
  }

  if ((v70 & 1) == 0)
  {
    goto LABEL_114;
  }

  v90 = *(v316 + 152);
  v91 = *&v307[*MEMORY[0x277CD73D8]];
  if ((*(*(v316 + v311) + 1472) - 11) > 0xC)
  {
    if (*&v307[*MEMORY[0x277CD73D8]] <= 1u && BYTE1(*&v307[*MEMORY[0x277CD73D8]]) <= 1u && (BYTE2(v91) != 3 || BYTE3(v91) != 2))
    {
      goto LABEL_112;
    }
  }

  else if (!*&v307[*MEMORY[0x277CD73D8]] || !BYTE1(*&v307[*MEMORY[0x277CD73D8]]))
  {
LABEL_112:
    v94 = v307;
    goto LABEL_113;
  }

  v92 = [objc_msgSend(v307 "descriptor")];
  v93 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v307[*MEMORY[0x277CD73C8]] shape:v92];
  v94 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v308 descriptor:v93];
  v394[0] = v307;
  [v90 encodeToMPSCommandEncoder:v306 commandBuffer:v308 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v394 kernelDAGObject:{1), 0, v94, 0}];
LABEL_113:
  [v315 setObject:v94 atIndexedSubscript:v29];
LABEL_114:
  if ((v75 & 1) == 0)
  {
    goto LABEL_126;
  }

  v95 = *(v316 + 152);
  v96 = *&v304[*MEMORY[0x277CD73D8]];
  if ((*(*(v316 + v311) + 1472) - 11) > 0xC)
  {
    if (*&v304[*MEMORY[0x277CD73D8]] <= 1u && BYTE1(*&v304[*MEMORY[0x277CD73D8]]) <= 1u && (BYTE2(v96) != 3 || BYTE3(v96) != 2))
    {
      goto LABEL_124;
    }
  }

  else if (!*&v304[*MEMORY[0x277CD73D8]] || !BYTE1(*&v304[*MEMORY[0x277CD73D8]]))
  {
LABEL_124:
    v99 = v304;
    goto LABEL_125;
  }

  v97 = [objc_msgSend(v304 "descriptor")];
  v98 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v304[*MEMORY[0x277CD73C8]] shape:v97];
  v99 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v308 descriptor:v98];
  v394[0] = v304;
  [v95 encodeToMPSCommandEncoder:v306 commandBuffer:v308 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v394 kernelDAGObject:{1), 0, v99, 0}];
LABEL_125:
  [v315 setObject:v99 atIndexedSubscript:v28];
LABEL_126:
  v314 = [MEMORY[0x277CBEA60] arrayWithArray:v315];
  graph2 = [v14 graph];
  v101 = **(graph2 + 56);
  if (*(*(graph2 + 56) + 8) == v101)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v103 = *(*v101 + 24);
  v102 = *v103;
  if (v103[1] == *v103)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v305 & 1) != 0 || *(*v102 + 8) != 268435488)
  {
    goto LABEL_363;
  }

  v104 = *(*(v316 + v311) + 1472);
  v105 = *(v316 + 152);
  v106 = [v314 objectAtIndexedSubscript:v27];
  v107 = [v314 objectAtIndexedSubscript:v29];
  if (v28 == -1)
  {
    v108 = 0;
  }

  else
  {
    v108 = [v314 objectAtIndexedSubscript:v28];
  }

  v109 = *v303;
  v110 = *MEMORY[0x277CD7410];
  v111 = *&v106[v110];
  v112 = *&v106[v110 + 16];
  v113 = *&v106[v110 + 32];
  v114 = *&v106[v110 + 48];
  v115 = *MEMORY[0x277CD73D8];
  v116 = *&v106[v115];
  v117 = v116.u8[2];
  v379[3] = v114;
  v379[2] = v113;
  v379[1] = v112;
  v379[0] = v111;
  v118 = *(v379 + (v116.i8[2] & 0xF));
  v119 = v116.u8[3];
  v378[3] = v114;
  v378[2] = v113;
  v378[1] = v112;
  v378[0] = v111;
  v120 = *(v378 + (v116.i8[3] & 0xF));
  v121 = v118 != 1;
  if (v120 != 1)
  {
    v121 = 2;
  }

  v122 = *MEMORY[0x277CD73F0];
  v123 = *&v106[v122];
  if (v123 >= 5)
  {
    v124 = 4;
    while (1)
    {
      v376 = v116;
      v377[0] = v111;
      v377[1] = v112;
      v377[2] = v113;
      v377[3] = v114;
      if (*(v377 + (*(&v376 | v124 & 0xF) & 0xF)) >= 2u)
      {
        break;
      }

      if (v123 == ++v124)
      {
        goto LABEL_141;
      }
    }

    v121 = 3;
  }

LABEL_141:
  v125 = *&v107[v110];
  v126 = *&v107[v110 + 16];
  v127 = *&v107[v110 + 32];
  v128 = *&v107[v110 + 48];
  v129 = *&v107[v115];
  v375[3] = v128;
  v375[2] = v127;
  v375[1] = v126;
  v375[0] = v125;
  v130 = *(v375 + (v129.i8[2] & 0xF));
  v374[3] = v128;
  v374[2] = v127;
  v374[1] = v126;
  v374[0] = v125;
  v131 = *(v374 + (v129.i8[3] & 0xF));
  if (v131 == 1)
  {
    v132 = v130 != 1;
  }

  else
  {
    v132 = 2;
  }

  v133 = *&v107[v122];
  if (v133 >= 5)
  {
    v134 = 4;
    while (1)
    {
      v372 = v129;
      v373[0] = v125;
      v373[1] = v126;
      v373[2] = v127;
      v373[3] = v128;
      if (*(v373 + (*(&v372 | v134 & 0xF) & 0xF)) >= 2u)
      {
        break;
      }

      if (v133 == ++v134)
      {
        goto LABEL_150;
      }
    }

    v132 = 3;
  }

LABEL_150:
  v135 = *&v109[v110];
  v136 = *&v109[v110 + 16];
  v137 = *&v109[v115];
  v138 = *&v109[v110 + 32];
  v139 = *&v109[v110 + 48];
  v371[3] = v139;
  v371[2] = v138;
  v371[1] = v136;
  v371[0] = v135;
  v140 = *(v371 + (v137.i8[2] & 0xF));
  v141 = *&v109[v122];
  if (v141 < 5)
  {
LABEL_154:
    if (v121 == 3 || v132 == 3)
    {
      goto LABEL_363;
    }

    if (v121 == 2 && v132 == 2)
    {
      if (v116.u8[2] != v129.u8[2])
      {
        goto LABEL_363;
      }

      if (v116.u8[3] != v129.u8[3])
      {
        goto LABEL_363;
      }

      if (v116.u8[2] != v137.u8[2])
      {
        goto LABEL_363;
      }

      if (v116.u8[3] != v137.u8[3])
      {
        goto LABEL_363;
      }

      if (v118 != v130)
      {
        goto LABEL_363;
      }

      if (v120 != v131)
      {
        goto LABEL_363;
      }

      v368[0] = v125;
      v368[1] = v126;
      v368[2] = v127;
      v368[3] = v128;
      if (v118 != v140 || v120 != *(v368 + (v116.i8[3] & 0xF)) || v116.u8[3] + 1 != v116.u8[2] && v116.u8[2] + 1 != v116.u8[3])
      {
        goto LABEL_363;
      }

      v143 = v116.i8[2] & 0xF;
      v144 = v116.u8[2];
      v145 = v116.i8[3] & 0xF;
      v146 = v116.u8[3];
      v147 = v116.u8[3] >= v116.u8[2] ? v116.i8[2] : v116.i8[3];
      v367[0] = v111;
      v367[1] = v112;
      v367[2] = v113;
      v367[3] = v114;
      v148 = *(v367 + v143);
      v149 = *MEMORY[0x277CD73D0];
      v150 = *&v106[v149];
      v151 = *&v106[v149 + 16];
      v152 = *&v106[v149 + 32];
      v153 = *&v106[v149 + 48];
      v365[3] = v153;
      v365[2] = v152;
      v365[1] = v151;
      v365[0] = v150;
      v154 = *(v365 + v143);
      v366[0] = v111;
      v366[1] = v112;
      v366[2] = v113;
      v366[3] = v114;
      v155 = *(v366 + v145);
      v156 = v144 <= v146 ? v119 : v117;
      v364[3] = v153;
      v364[2] = v152;
      v364[1] = v151;
      v364[0] = v150;
      if (v148 != v154)
      {
        goto LABEL_363;
      }

      if (v155 != *(v364 + v145))
      {
        goto LABEL_363;
      }

      v363[0] = v125;
      v363[1] = v126;
      v363[2] = v127;
      v363[3] = v128;
      v157 = *(v363 + (v144 & 0xF));
      v158 = *&v107[v149];
      v159 = *&v107[v149 + 16];
      v160 = *&v107[v149 + 32];
      v362 = *&v107[v149 + 48];
      v361[2] = v160;
      v361[1] = v159;
      v361[0] = v158;
      v161 = *(v361 + (v144 & 0xF));
      v360[0] = v125;
      v360[1] = v126;
      v360[2] = v127;
      v360[3] = v128;
      v162 = *(v360 + (v146 & 0xF));
      v359[3] = v362;
      v359[2] = v160;
      v359[1] = v159;
      v359[0] = v158;
      if (v157 != v161)
      {
        goto LABEL_363;
      }

      if (v162 != *(v359 + (v146 & 0xF)))
      {
        goto LABEL_363;
      }

      v358[0] = v135;
      v358[1] = v136;
      v358[2] = v138;
      v358[3] = v139;
      v163 = *(v358 + (v144 & 0xF));
      v164 = *&v109[v149];
      v165 = *&v109[v149 + 16];
      v166 = *&v109[v149 + 32];
      v357 = *&v109[v149 + 48];
      v356[2] = v166;
      v356[1] = v165;
      v356[0] = v164;
      v167 = *(v356 + (v144 & 0xF));
      v355[0] = v135;
      v355[1] = v136;
      v355[2] = v138;
      v355[3] = v139;
      v168 = *(v355 + (v146 & 0xF));
      v354[3] = v357;
      v354[2] = v166;
      v354[1] = v165;
      v354[0] = v164;
      if (v163 != v167)
      {
        goto LABEL_363;
      }

      if (v168 != *(v354 + (v146 & 0xF)))
      {
        goto LABEL_363;
      }

      v169 = *MEMORY[0x277CD7418];
      v170 = *&v106[v169];
      v171 = *&v106[v169 + 16];
      v172 = *&v106[v169 + 32];
      v353 = *&v106[v169 + 48];
      v352[2] = v172;
      v352[1] = v171;
      v352[0] = v170;
      v173 = *(v352 + (v144 & 0xF));
      v351[3] = v353;
      v351[2] = v172;
      v351[1] = v171;
      v351[0] = v170;
      if (v173 | *(v351 + (v146 & 0xF)))
      {
        goto LABEL_363;
      }

      v174 = *&v107[v169];
      v175 = *&v107[v169 + 16];
      v176 = *&v107[v169 + 32];
      v350 = *&v107[v169 + 48];
      v349[2] = v176;
      v349[1] = v175;
      v349[0] = v174;
      v177 = *(v349 + (v144 & 0xF));
      v348[3] = v350;
      v348[2] = v176;
      v348[1] = v175;
      v348[0] = v174;
      if (v177 | *(v348 + (v146 & 0xF)))
      {
        goto LABEL_363;
      }

      v178 = *&v109[v169];
      v179 = *&v109[v169 + 16];
      v180 = *&v109[v169 + 32];
      v347 = *&v109[v169 + 48];
      v346[2] = v180;
      v346[1] = v179;
      v346[0] = v178;
      v181 = *(v346 + (v144 & 0xF));
      v345[3] = v347;
      v345[2] = v180;
      v345[1] = v179;
      v345[0] = v178;
      if (v181 | *(v345 + (v146 & 0xF)))
      {
        goto LABEL_363;
      }

      v182 = *MEMORY[0x277CD7428];
      v183 = *&v106[v182];
      v184 = *&v106[v182 + 16];
      v185 = *&v106[v182 + 32];
      v186 = *&v106[v182 + 48];
      v187 = *&v106[v182 + 64];
      v188 = *&v106[v182 + 80];
      v189 = *&v106[v182 + 96];
      v343 = *&v106[v182 + 112];
      v342[6] = v189;
      v342[5] = v188;
      v342[4] = v187;
      v342[3] = v186;
      v342[2] = v185;
      v342[1] = v184;
      v342[0] = v183;
      v190 = *(v342 + (v156 & 0xF));
      v341[7] = v343;
      v341[6] = v189;
      v341[5] = v188;
      v341[4] = v187;
      v341[3] = v186;
      v341[2] = v185;
      v341[1] = v184;
      v341[0] = v183;
      v191 = v147 & 0xF;
      v192 = *(v341 + v191);
      v344[0] = v111;
      v344[1] = v112;
      v344[2] = v113;
      v344[3] = v114;
      if (v190 != v192 * *(v344 + v191))
      {
        goto LABEL_363;
      }

      v193 = *&v107[v182];
      v194 = *&v107[v182 + 16];
      v195 = *&v107[v182 + 32];
      v196 = *&v107[v182 + 48];
      v197 = *&v107[v182 + 64];
      v198 = *&v107[v182 + 80];
      v199 = *&v107[v182 + 96];
      v340 = *&v107[v182 + 112];
      v339[6] = v199;
      v339[5] = v198;
      v339[4] = v197;
      v339[3] = v196;
      v339[2] = v195;
      v339[1] = v194;
      v339[0] = v193;
      v200 = *(v339 + (v156 & 0xF));
      v338[7] = v340;
      v338[6] = v199;
      v338[5] = v198;
      v338[4] = v197;
      v338[3] = v196;
      v338[2] = v195;
      v338[1] = v194;
      v338[0] = v193;
      v201 = *(v338 + v191);
      v337[0] = v125;
      v337[1] = v126;
      v337[2] = v127;
      v337[3] = v128;
      if (v200 != v201 * *(v337 + v191))
      {
        goto LABEL_363;
      }

      v202 = *&v109[v182];
      v203 = *&v109[v182 + 16];
      v204 = *&v109[v182 + 32];
      v205 = *&v109[v182 + 48];
      v206 = *&v109[v182 + 64];
      v207 = *&v109[v182 + 80];
      v208 = *&v109[v182 + 96];
      v336 = *&v109[v182 + 112];
      v335[6] = v208;
      v335[5] = v207;
      v335[4] = v206;
      v335[3] = v205;
      v335[2] = v204;
      v335[0] = v202;
      v335[1] = v203;
      v209 = *(v335 + (v156 & 0xF));
      v334[6] = v208;
      v334[7] = v336;
      v334[4] = v206;
      v334[5] = v207;
      v334[2] = v204;
      v334[3] = v205;
      v334[0] = v202;
      v334[1] = v203;
      v210 = *(v334 + (v147 & 0xF));
      v333[0] = v135;
      v333[1] = v136;
      v333[2] = v138;
      v333[3] = v139;
      if (v209 != v210 * *(v333 + (v147 & 0xF)))
      {
        goto LABEL_363;
      }

      if (!v117 || !v119)
      {
        v302 = *MEMORY[0x277CD7408];
        if (*&v106[v302] != v150 || *&v107[v302] != v158 || *&v109[v302] != v164)
        {
          goto LABEL_363;
        }
      }

      if (!v108)
      {
        goto LABEL_199;
      }

      v211 = &v108[v115];
      if (v211[2] != v117)
      {
        goto LABEL_363;
      }

      if (v211[3] != v119)
      {
        goto LABEL_363;
      }

      v212 = *&v108[v110];
      v213 = *&v108[v110 + 16];
      v214 = *&v108[v110 + 32];
      v215 = *&v108[v110 + 48];
      v332[2] = v214;
      v332[3] = v215;
      v332[0] = v212;
      v332[1] = v213;
      v216 = *(v332 + (v117 & 0xF));
      v331[2] = v214;
      v331[3] = v215;
      v331[0] = v212;
      v331[1] = v213;
      if (v118 != v216)
      {
        goto LABEL_363;
      }

      if (v120 != *(v331 + (v119 & 0xF)))
      {
        goto LABEL_363;
      }

      v217 = *&v108[v149];
      v218 = *&v108[v149 + 16];
      v219 = *&v108[v149 + 48];
      v329 = *&v108[v149 + 32];
      v330 = v219;
      v328[0] = v217;
      v328[1] = v218;
      v220 = *(v328 + (v117 & 0xF));
      v327[2] = v329;
      v327[3] = v219;
      v327[0] = v217;
      v327[1] = v218;
      if (v118 != v220)
      {
        goto LABEL_363;
      }

      if (v120 != *(v327 + (v119 & 0xF)))
      {
        goto LABEL_363;
      }

      v221 = *&v108[v169];
      v222 = *&v108[v169 + 16];
      v223 = *&v108[v169 + 48];
      v325 = *&v108[v169 + 32];
      v326 = v223;
      v324[0] = v221;
      v324[1] = v222;
      v224 = *(v324 + (v117 & 0xF));
      v323[2] = v325;
      v323[3] = v223;
      v323[0] = v221;
      v323[1] = v222;
      if (v224 | *(v323 + (v119 & 0xF)))
      {
        goto LABEL_363;
      }

      v225 = *&v108[v182];
      v226 = *&v108[v182 + 16];
      v227 = *&v108[v182 + 32];
      v228 = *&v108[v182 + 48];
      v229 = *&v108[v182 + 64];
      v230 = *&v108[v182 + 80];
      v231 = *&v108[v182 + 112];
      v321 = *&v108[v182 + 96];
      v322 = v231;
      v320[4] = v229;
      v320[5] = v230;
      v320[2] = v227;
      v320[3] = v228;
      v320[0] = v225;
      v320[1] = v226;
      v232 = *(v320 + (v156 & 0xF));
      v319[6] = v321;
      v319[7] = v231;
      v319[4] = v229;
      v319[5] = v230;
      v319[2] = v227;
      v319[3] = v228;
      v319[0] = v225;
      v319[1] = v226;
      v233 = *(v319 + (v147 & 0xF));
      v318[0] = v212;
      v318[1] = v213;
      v318[2] = v214;
      v318[3] = v215;
      if (v232 != v233 * *(v318 + (v147 & 0xF)))
      {
        goto LABEL_363;
      }

      if (v117 && v119)
      {
LABEL_199:
        if (v104 < 11)
        {
          goto LABEL_363;
        }
      }

      else if (v104 < 11 || *&v108[*MEMORY[0x277CD7408]] != v217)
      {
        goto LABEL_363;
      }

      v310 = FlattenTo3D(v106, v105, v308, v306);
      v312 = FlattenTo3D(v107, v105, v308, v306);
      if (v108)
      {
        v317 = FlattenTo3D(v108, v105, v308, v306);
      }

      else
      {
        v317 = 0;
      }

      v288 = FlattenTo3D(v109, v105, v308, v306);
      v286 = v310;
    }

    else
    {
      if (!v132)
      {
        if (!v121)
        {
          goto LABEL_363;
        }

        if (v121 == 2)
        {
          if (v116.u8[0] != 3 && v116.i8[0] || v137.i8[0] && v137.u8[0] != 3)
          {
            goto LABEL_363;
          }
        }

        else if ((v116.i8[0] | 2) != 2 || (v137.i8[0] | 2) != 2)
        {
          goto LABEL_363;
        }

        if ((vceqq_s8(v116, v137).i8[1] & 1) == 0 || v116.u8[2] != v137.u8[2] || v116.u8[3] != v137.u8[3])
        {
          goto LABEL_363;
        }

        if (v108)
        {
          if (v121 == 2)
          {
            if (*&v108[v115] && *&v108[v115] != 3)
            {
              goto LABEL_363;
            }
          }

          else if ((*&v108[v115] | 2) != 2)
          {
            goto LABEL_363;
          }

          v287 = vceqq_s8(v116, *&v108[v115]);
          if ((v287.i8[1] & 1) == 0 || (v287.i8[2] & 1) == 0 || (v287.i8[3] & 1) == 0)
          {
            goto LABEL_363;
          }

          v286 = FlattenTo2D(v106, v105, v308, 0);
          v317 = FlattenTo2D(v108, v105, v308, 0);
        }

        else
        {
          v286 = FlattenTo2D(v106, v105, v308, 0);
          v317 = 0;
        }

        v288 = FlattenTo2D(v109, v105, v308, 0);
        v289 = v107;
        goto LABEL_332;
      }

      if (v121)
      {
        goto LABEL_363;
      }

      if (v132 == 2)
      {
        if (v129.i8[1] && v116.u8[1] != 3 || v137.i8[1] && v137.u8[1] != 3)
        {
          goto LABEL_363;
        }
      }

      else if (v129.i8[1] && v116.u8[1] != 2 || (v137.i8[1] | 2) != 2)
      {
        goto LABEL_363;
      }

      if ((vceqq_s8(v129, v137).u8[0] & 1) == 0 || v129.u8[2] != v137.u8[2] || v129.u8[3] != v137.u8[3])
      {
        goto LABEL_363;
      }

      if (v108)
      {
        v285 = v108[v115 + 1];
        if (v132 == 2)
        {
          if (v108[v115 + 1] && v285 != 3)
          {
            goto LABEL_363;
          }
        }

        else if ((v285 | 2) != 2)
        {
          goto LABEL_363;
        }

        v290 = vceqq_s8(v129, *&v108[v115]);
        if ((v290.i8[0] & 1) == 0 || (v290.i8[2] & 1) == 0 || (v290.i8[3] & 1) == 0)
        {
          goto LABEL_363;
        }

        v312 = FlattenTo2D(v107, v105, v308, 1);
        v317 = FlattenTo2D(v108, v105, v308, 1);
      }

      else
      {
        v312 = FlattenTo2D(v107, v105, v308, 1);
        v317 = 0;
      }

      v288 = FlattenTo2D(v109, v105, v308, 1);
      v286 = v106;
    }

    v289 = v312;
LABEL_332:
    if (v286 && v289 && v288)
    {
      if (!v108 || v317)
      {
        v313 = v289;
        v295 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v314, "count")}];
        if ([v314 count])
        {
          v296 = 0;
          do
          {
            [v295 setObject:objc_msgSend(v314 atIndexedSubscript:{"objectAtIndexedSubscript:", v296), v296}];
            ++v296;
          }

          while (v296 < [v314 count]);
        }

        [v295 setObject:v286 atIndexedSubscript:v27];
        [v295 setObject:v313 atIndexedSubscript:v29];
        if (v108)
        {
          [v295 setObject:v317 atIndexedSubscript:v28];
        }

        *v303 = v288;
        if ([v314 count])
        {
          v297 = [v295 objectAtIndexedSubscript:0];
          graph3 = [v14 graph];
          v299 = **(***(graph3 + 56) + 8);
          if ((*(*(***(graph3 + 56) + 8) + 8) - v299) >> 3)
          {
            reshapeTensor(*v299, v297);
          }

          std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
        }

        updateDAGDestShape(v14, *v303);
      }

      v317 = 0;
    }

    v291 = v286;
    if (v286)
    {
      if (v286 != v106)
      {
        v292 = v289;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v289 = v292;
        if (isKindOfClass)
        {
          --*(&v291->super.super.isa + *MEMORY[0x277CD7498]);
        }
      }
    }

    if (v289)
    {
      if (v289 != v107)
      {
        v294 = v289;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          --*&v294[*MEMORY[0x277CD7498]];
        }
      }
    }

    if (v288)
    {
      if (v288 != v109)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          --*(v288 + *MEMORY[0x277CD7498]);
        }
      }
    }

    if (v317)
    {
      if (v317 != v108)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          --*(v317 + *MEMORY[0x277CD7498]);
        }
      }
    }

    goto LABEL_363;
  }

  v142 = 4;
  while (1)
  {
    v369 = v137;
    v370[0] = v135;
    v370[1] = v136;
    v370[2] = v138;
    v370[3] = v139;
    if (*(v370 + (*(&v369 | v142 & 0xF) & 0xF)) > 1u)
    {
      break;
    }

    if (v141 == ++v142)
    {
      goto LABEL_154;
    }
  }

LABEL_363:
  v300 = *MEMORY[0x277D85DE8];
  return v314;
}

- (void)setAutoTuningParameters:(void *)parameters
{
  free(self->_autoTuningParams);
  autoTuningTarget = self->_autoTuningTarget;
  if (autoTuningTarget)
  {
    if (autoTuningTarget <= 4)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (autoTuningTarget == 5)
    {
      v14 = malloc_type_malloc(0x3CuLL, 0x1000040C2DCA394uLL);
      self->_autoTuningParams = v14;
      v16 = *(parameters + 1);
      v15 = *(parameters + 2);
      v17 = *parameters;
      *(v14 + 44) = *(parameters + 44);
      v14[1] = v16;
      v14[2] = v15;
      *v14 = v17;
      return;
    }

    if (autoTuningTarget == 6)
    {
      v10 = malloc_type_malloc(0x2CuLL, 0x1000040D4159EFEuLL);
      self->_autoTuningParams = v10;
      v11 = *(parameters + 28);
      v12 = *(parameters + 1);
      *v10 = *parameters;
      v10[1] = v12;
      *(v10 + 28) = v11;
      return;
    }

    goto LABEL_13;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  autoTuningTarget = self->_autoTuningTarget;
  if (autoTuningTarget > 4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!autoTuningTarget)
  {
    return;
  }

  if (autoTuningTarget != 4)
  {
LABEL_13:
    v13 = malloc_type_malloc(0x20uLL, 0x1000040C2192D5FuLL);
    self->_autoTuningParams = v13;
    *v13 = *parameters;
    *(v13 + 2) = *(parameters + 2);
    *(v13 + 6) = *(parameters + 6);
    *(v13 + 28) = *(parameters + 28);
    *(v13 + 29) = *(parameters + 29);
    return;
  }

  v6 = malloc_type_malloc(0x44uLL, 0x100004069DB8102uLL);
  self->_autoTuningParams = v6;
  *v6 = *parameters;
  v8 = *(parameters + 2);
  v7 = *(parameters + 3);
  v9 = *(parameters + 1);
  *(v6 + 16) = *(parameters + 16);
  v6[2] = v8;
  v6[3] = v7;
  v6[1] = v9;
}

- (void)clearAutoTuningParameters
{
  autoTuningParams = self->_autoTuningParams;
  if (autoTuningParams)
  {
    free(autoTuningParams);
  }

  self->_autoTuningParams = 0;
  self->_autoTuningTarget = 0;
}

- (BOOL)advanceAutoTuneIteration
{
  nextAutoTuneIteration = self->_nextAutoTuneIteration;
  self->_autoTuneIteration = nextAutoTuneIteration;
  return nextAutoTuneIteration > 0;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays normScaleArray:(id)array resultState:(id)state destinationArray:(id)destinationArray kernelDAGObject:(id)object
{
  self->_normScaleArray = array;
  if (array)
  {
    arraysCopy = arrays;
    bufferCopy = buffer;
    encoderCopy = encoder;
    [array dataType];
    dataType = [(MPSNDArray *)self->_normScaleArray dataType];
    encoder = encoderCopy;
    buffer = bufferCopy;
    arrays = arraysCopy;
    if (dataType != MPSDataTypeFloat16)
    {
      v16 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy;
      buffer = bufferCopy;
      arrays = arraysCopy;
      if (v16)
      {
        MTLReportFailure();
        encoder = encoderCopy;
        buffer = bufferCopy;
        arrays = arraysCopy;
      }
    }
  }

  [(MPSNDArrayMultiaryKernel *)self encodeToCommandEncoder:encoder commandBuffer:buffer sourceArrays:arrays resultState:state destinationArray:destinationArray kernelDAGObject:object];
}

@end