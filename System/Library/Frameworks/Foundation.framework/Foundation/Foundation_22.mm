uint64_t JSONFuture.RefObject.values.getter()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16JSONEncoderValueOGMd);
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v1;
  v4 = v2;
  v206 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v205 = (v5 + 63) >> 6;
  v208 = v2 + 64;

  v9 = v4;
  v10 = 0;
  v209 = v4;
  if (v7)
  {
    do
    {
      v11 = __clz(__rbit64(v7));
      v12 = (v7 - 1) & v7;
LABEL_10:
      v15 = v11 | (v10 << 6);
      v16 = (*(v3 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v3 + 56) + 24 * v15;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v213 = v12;
      v214 = 24 * v15;
      v215 = v17;
      v216 = v15;
      if (v22 >> 6)
      {
        if (v22 >> 6 == 1)
        {
          v200 = v18;
          v201 = v10;
          v23 = *(*(v20 + 16) + 16);
          if (v23)
          {
            v196 = v3;
            v212 = *(v20 + 16);

            v193 = v20;
            v195 = v21;
            v194 = v22;
            outlined copy of JSONFuture(v20, v21, v22);
            v258 = MEMORY[0x1E69E7CC0];

            v207 = v23;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
            result = v212;
            v24 = 0;
            v25 = v258;
            while (v24 < *(result + 16))
            {
              v26 = v212 + 32 + 24 * v24;
              v27 = *v26;
              v28 = *(v26 + 8);
              v29 = *(v26 + 16);
              if (v29 >> 6)
              {
                v210 = *(v26 + 16);
                v211 = *(v26 + 8);
                if (v29 >> 6 == 1)
                {
                  v30 = *(v27 + 16);
                  if (*(v30 + 16))
                  {
                    v198 = v24;
                    v199 = v25;
                    v197 = v27;
                    v217 = *(v30 + 16);
                    v218 = *(v27 + 16);
                    outlined copy of JSONFuture(v27, v28, v29);
                    v256 = MEMORY[0x1E69E7CC0];

                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v217, 0);
                    v31 = v217;
                    result = v218;
                    v32 = 0;
                    v33 = v256;
                    while (v32 < *(result + 16))
                    {
                      v34 = v218 + 32 + 24 * v32;
                      v35 = *v34;
                      v36 = *(v34 + 8);
                      v37 = *(v34 + 16);
                      if (v37 >> 6)
                      {
                        v219 = *(v34 + 16);
                        v220 = *(v34 + 8);
                        if (v37 >> 6 == 1)
                        {
                          v38 = *(v35 + 16);
                          if (*(v38 + 16))
                          {
                            v203 = v32;
                            v204 = v33;
                            v202 = v35;
                            v224 = *(v38 + 16);
                            v225 = *(v35 + 16);
                            outlined copy of JSONFuture(v35, v36, v37);
                            v254 = MEMORY[0x1E69E7CC0];

                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v224, 0);
                            v39 = v224;
                            result = v225;
                            v40 = 0;
                            v41 = v254;
                            while (v40 < *(result + 16))
                            {
                              v42 = v225 + 32 + 24 * v40;
                              v43 = *v42;
                              v44 = *(v42 + 8);
                              v45 = *(v42 + 16);
                              if (v45 >> 6)
                              {
                                v226 = *(v42 + 16);
                                v227 = *(v42 + 8);
                                if (v45 >> 6 == 1)
                                {
                                  v46 = *(v43 + 16);
                                  if (*(v46 + 16))
                                  {
                                    v222 = v40;
                                    v223 = v41;
                                    v221 = v43;
                                    v231 = *(v46 + 16);
                                    v232 = *(v43 + 16);
                                    outlined copy of JSONFuture(v43, v44, v45);
                                    v252 = MEMORY[0x1E69E7CC0];

                                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v231, 0);
                                    v47 = v231;
                                    result = v232;
                                    v48 = 0;
                                    v49 = v252;
                                    while (v48 < *(result + 16))
                                    {
                                      v50 = v232 + 32 + 24 * v48;
                                      v51 = *v50;
                                      v52 = *(v50 + 8);
                                      v53 = *(v50 + 16);
                                      if (v53 >> 6)
                                      {
                                        v233 = *(v50 + 16);
                                        v234 = *(v50 + 8);
                                        if (v53 >> 6 == 1)
                                        {
                                          v54 = *(v51 + 16);
                                          if (*(v54 + 16))
                                          {
                                            v229 = v48;
                                            v230 = v49;
                                            v228 = v51;
                                            v238 = *(v54 + 16);
                                            v239 = *(v51 + 16);
                                            outlined copy of JSONFuture(v51, v52, v53);
                                            v250 = MEMORY[0x1E69E7CC0];

                                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v238, 0);
                                            v55 = v238;
                                            result = v239;
                                            v56 = 0;
                                            v57 = v250;
                                            while (v56 < *(result + 16))
                                            {
                                              v58 = v239 + 32 + 24 * v56;
                                              v59 = *v58;
                                              v60 = *(v58 + 8);
                                              v61 = *(v58 + 16);
                                              if (v61 >> 6)
                                              {
                                                v240 = *(v58 + 16);
                                                v241 = *(v58 + 8);
                                                if (v61 >> 6 == 1)
                                                {
                                                  v62 = *(v59 + 16);
                                                  v63 = *(v62 + 16);
                                                  if (v63)
                                                  {
                                                    v236 = v56;
                                                    v237 = v57;
                                                    v235 = *v58;
                                                    outlined copy of JSONFuture(v59, v60, v240);
                                                    v249 = MEMORY[0x1E69E7CC0];

                                                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63, 0);
                                                    v64 = 0;
                                                    v65 = v249;
                                                    v66 = v62 + 32;
                                                    v242 = v62 + 32;
                                                    v243 = v63;
                                                    do
                                                    {
                                                      v67 = v66 + 24 * v64;
                                                      v68 = *v67;
                                                      v69 = *(v67 + 8);
                                                      v70 = *(v67 + 16);
                                                      if (v70 >> 6)
                                                      {
                                                        if (v70 >> 6 == 1)
                                                        {
                                                          v247 = *(v67 + 16);
                                                          v71 = *(v68 + 16);
                                                          v72 = *(v71 + 16);
                                                          if (v72)
                                                          {
                                                            v245 = *(v67 + 8);
                                                            v246 = v65;
                                                            v244 = *v67;
                                                            outlined copy of JSONFuture(v68, v69, v247);
                                                            v248 = MEMORY[0x1E69E7CC0];

                                                            v73 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
                                                            v68 = v248;
                                                            v74 = (v71 + 48);
                                                            do
                                                            {
                                                              v75 = *(v74 - 2);
                                                              v76 = *v74;
                                                              if (v76 >> 6)
                                                              {
                                                                if (v76 >> 6 == 1)
                                                                {
                                                                  v73 = JSONFuture.RefArray.values.getter();
                                                                  v75 = v73;
                                                                  v77 = 0;
                                                                  LOBYTE(v76) = 3;
                                                                }

                                                                else
                                                                {
                                                                  v73 = JSONFuture.RefObject.values.getter(v73);
                                                                  v75 = v73;
                                                                  v77 = 0;
                                                                  LOBYTE(v76) = 4;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v77 = *(v74 - 1);
                                                                v73 = outlined copy of JSONEncoderValue(*(v74 - 2), v77, *v74);
                                                              }

                                                              v79 = *(v248 + 16);
                                                              v78 = *(v248 + 24);
                                                              if (v79 >= v78 >> 1)
                                                              {
                                                                v73 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
                                                              }

                                                              v74 += 24;
                                                              *(v248 + 16) = v79 + 1;
                                                              v80 = v248 + 24 * v79;
                                                              *(v80 + 32) = v75;
                                                              *(v80 + 40) = v77;
                                                              *(v80 + 48) = v76;
                                                              --v72;
                                                            }

                                                            while (v72);
                                                            outlined consume of JSONFuture(v244, v245, v247);

                                                            v66 = v242;
                                                            v63 = v243;
                                                            v65 = v246;
                                                          }

                                                          else
                                                          {
                                                            v68 = MEMORY[0x1E69E7CC0];
                                                          }

                                                          v69 = 0;
                                                          LOBYTE(v70) = 3;
                                                        }

                                                        else
                                                        {

                                                          v82 = JSONFuture.RefObject.values.getter(v81);
                                                          outlined consume of JSONFuture(v68, v69, v70);
                                                          v69 = 0;
                                                          LOBYTE(v70) = 4;
                                                          v68 = v82;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        outlined copy of JSONEncoderValue(v68, v69, v70);
                                                      }

                                                      v84 = *(v65 + 16);
                                                      v83 = *(v65 + 24);
                                                      if (v84 >= v83 >> 1)
                                                      {
                                                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
                                                      }

                                                      ++v64;
                                                      *(v65 + 16) = v84 + 1;
                                                      v85 = v65 + 24 * v84;
                                                      *(v85 + 32) = v68;
                                                      *(v85 + 40) = v69;
                                                      *(v85 + 48) = v70;
                                                    }

                                                    while (v64 != v63);

                                                    outlined consume of JSONFuture(v235, v241, v240);
                                                    v55 = v238;
                                                    result = v239;
                                                    v56 = v236;
                                                    v57 = v237;
                                                  }

                                                  else
                                                  {
                                                    v65 = MEMORY[0x1E69E7CC0];
                                                  }

                                                  v91 = 0;
                                                  v90 = 3;
                                                  v89 = v65;
                                                }

                                                else
                                                {
                                                  v92 = v57;
                                                  v93 = v56;
                                                  v94 = *v58;

                                                  v96 = JSONFuture.RefObject.values.getter(v95);
                                                  outlined consume of JSONFuture(v94, v241, v61);
                                                  v56 = v93;
                                                  v57 = v92;
                                                  v55 = v238;
                                                  result = v239;
                                                  v91 = 0;
                                                  v90 = 4;
                                                  v89 = v96;
                                                }
                                              }

                                              else
                                              {
                                                v86 = v57;
                                                v87 = v56;
                                                v88 = *v58;
                                                outlined copy of JSONEncoderValue(v59, v60, v61);
                                                v89 = v88;
                                                v90 = v61;
                                                v91 = v60;
                                                v56 = v87;
                                                v57 = v86;
                                                v55 = v238;
                                                result = v239;
                                              }

                                              v251 = v57;
                                              v98 = *(v57 + 16);
                                              v97 = *(v57 + 24);
                                              if (v98 >= v97 >> 1)
                                              {
                                                v100 = v91;
                                                v101 = v90;
                                                v102 = v56;
                                                v103 = v89;
                                                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1);
                                                v89 = v103;
                                                v90 = v101;
                                                v91 = v100;
                                                v56 = v102;
                                                v55 = v238;
                                                result = v239;
                                                v57 = v251;
                                              }

                                              ++v56;
                                              *(v57 + 16) = v98 + 1;
                                              v99 = v57 + 24 * v98;
                                              *(v99 + 32) = v89;
                                              *(v99 + 40) = v91;
                                              *(v99 + 48) = v90;
                                              if (v56 == v55)
                                              {
                                                v114 = v57;

                                                outlined consume of JSONFuture(v228, v234, v233);
                                                v115 = v114;
                                                v47 = v231;
                                                result = v232;
                                                v48 = v229;
                                                v49 = v230;
                                                goto LABEL_71;
                                              }
                                            }

                                            __break(1u);
                                            break;
                                          }

                                          v115 = MEMORY[0x1E69E7CC0];
LABEL_71:
                                          v108 = 0;
                                          v107 = 3;
                                        }

                                        else
                                        {
                                          v109 = v49;
                                          v110 = v48;
                                          v111 = *v50;

                                          v113 = JSONFuture.RefObject.values.getter(v112);
                                          outlined consume of JSONFuture(v111, v234, v53);
                                          v48 = v110;
                                          v49 = v109;
                                          v47 = v231;
                                          result = v232;
                                          v108 = 0;
                                          v107 = 4;
                                          v115 = v113;
                                        }
                                      }

                                      else
                                      {
                                        v104 = v49;
                                        v105 = v48;
                                        v106 = *v50;
                                        outlined copy of JSONEncoderValue(v51, v52, v53);
                                        v115 = v106;
                                        v107 = v53;
                                        v108 = v52;
                                        v48 = v105;
                                        v49 = v104;
                                        v47 = v231;
                                        result = v232;
                                      }

                                      v253 = v49;
                                      v117 = *(v49 + 16);
                                      v116 = *(v49 + 24);
                                      if (v117 >= v116 >> 1)
                                      {
                                        v119 = v108;
                                        v120 = v107;
                                        v121 = v48;
                                        v122 = v115;
                                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1);
                                        v115 = v122;
                                        v107 = v120;
                                        v108 = v119;
                                        v48 = v121;
                                        v47 = v231;
                                        result = v232;
                                        v49 = v253;
                                      }

                                      ++v48;
                                      *(v49 + 16) = v117 + 1;
                                      v118 = v49 + 24 * v117;
                                      *(v118 + 32) = v115;
                                      *(v118 + 40) = v108;
                                      *(v118 + 48) = v107;
                                      if (v48 == v47)
                                      {
                                        v133 = v49;

                                        outlined consume of JSONFuture(v221, v227, v226);
                                        v134 = v133;
                                        v39 = v224;
                                        result = v225;
                                        v40 = v222;
                                        v41 = v223;
                                        goto LABEL_79;
                                      }
                                    }

                                    __break(1u);
                                    break;
                                  }

                                  v134 = MEMORY[0x1E69E7CC0];
LABEL_79:
                                  v127 = 0;
                                  v126 = 3;
                                }

                                else
                                {
                                  v128 = v41;
                                  v129 = v40;
                                  v130 = *v42;

                                  v132 = JSONFuture.RefObject.values.getter(v131);
                                  outlined consume of JSONFuture(v130, v227, v45);
                                  v40 = v129;
                                  v41 = v128;
                                  v39 = v224;
                                  result = v225;
                                  v127 = 0;
                                  v126 = 4;
                                  v134 = v132;
                                }
                              }

                              else
                              {
                                v123 = v41;
                                v124 = v40;
                                v125 = *v42;
                                outlined copy of JSONEncoderValue(v43, v44, v45);
                                v134 = v125;
                                v126 = v45;
                                v127 = v44;
                                v40 = v124;
                                v41 = v123;
                                v39 = v224;
                                result = v225;
                              }

                              v255 = v41;
                              v136 = *(v41 + 16);
                              v135 = *(v41 + 24);
                              if (v136 >= v135 >> 1)
                              {
                                v138 = v127;
                                v139 = v126;
                                v140 = v40;
                                v141 = v134;
                                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1);
                                v134 = v141;
                                v126 = v139;
                                v127 = v138;
                                v40 = v140;
                                v39 = v224;
                                result = v225;
                                v41 = v255;
                              }

                              ++v40;
                              *(v41 + 16) = v136 + 1;
                              v137 = v41 + 24 * v136;
                              *(v137 + 32) = v134;
                              *(v137 + 40) = v127;
                              *(v137 + 48) = v126;
                              if (v40 == v39)
                              {
                                v152 = v41;

                                outlined consume of JSONFuture(v202, v220, v219);
                                v153 = v152;
                                v31 = v217;
                                result = v218;
                                v32 = v203;
                                v33 = v204;
                                goto LABEL_87;
                              }
                            }

                            __break(1u);
                            goto LABEL_111;
                          }

                          v153 = MEMORY[0x1E69E7CC0];
LABEL_87:
                          v146 = 0;
                          v145 = 3;
                        }

                        else
                        {
                          v147 = v33;
                          v148 = v32;
                          v149 = *v34;

                          v151 = JSONFuture.RefObject.values.getter(v150);
                          outlined consume of JSONFuture(v149, v220, v37);
                          v32 = v148;
                          v33 = v147;
                          v31 = v217;
                          result = v218;
                          v146 = 0;
                          v145 = 4;
                          v153 = v151;
                        }
                      }

                      else
                      {
                        v142 = v33;
                        v143 = v32;
                        v144 = *v34;
                        outlined copy of JSONEncoderValue(v35, v36, v37);
                        v153 = v144;
                        v145 = v37;
                        v146 = v36;
                        v32 = v143;
                        v33 = v142;
                        v31 = v217;
                        result = v218;
                      }

                      v257 = v33;
                      v155 = *(v33 + 16);
                      v154 = *(v33 + 24);
                      if (v155 >= v154 >> 1)
                      {
                        v157 = v146;
                        v158 = v145;
                        v159 = v32;
                        v160 = v153;
                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v154 > 1), v155 + 1, 1);
                        v153 = v160;
                        v145 = v158;
                        v146 = v157;
                        v32 = v159;
                        v31 = v217;
                        result = v218;
                        v33 = v257;
                      }

                      ++v32;
                      *(v33 + 16) = v155 + 1;
                      v156 = v33 + 24 * v155;
                      *(v156 + 32) = v153;
                      *(v156 + 40) = v146;
                      *(v156 + 48) = v145;
                      if (v32 == v31)
                      {
                        v171 = v33;

                        outlined consume of JSONFuture(v197, v211, v210);
                        v172 = v171;
                        result = v212;
                        v24 = v198;
                        v25 = v199;
                        goto LABEL_95;
                      }
                    }

                    goto LABEL_112;
                  }

                  v172 = MEMORY[0x1E69E7CC0];
LABEL_95:
                  v165 = 0;
                  v164 = 3;
                }

                else
                {
                  v166 = v25;
                  v167 = v24;
                  v168 = *v26;

                  v170 = JSONFuture.RefObject.values.getter(v169);
                  outlined consume of JSONFuture(v168, v211, v210);
                  v24 = v167;
                  v25 = v166;
                  result = v212;
                  v165 = 0;
                  v164 = 4;
                  v172 = v170;
                }
              }

              else
              {
                v161 = v25;
                v162 = v24;
                v163 = *v26;
                outlined copy of JSONEncoderValue(v27, v28, v29);
                v172 = v163;
                v164 = v29;
                v165 = v28;
                v24 = v162;
                v25 = v161;
                result = v212;
              }

              v259 = v25;
              v174 = *(v25 + 16);
              v173 = *(v25 + 24);
              if (v174 >= v173 >> 1)
              {
                v176 = v165;
                v177 = v164;
                v178 = v24;
                v179 = v172;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v173 > 1), v174 + 1, 1);
                v172 = v179;
                v164 = v177;
                v165 = v176;
                v24 = v178;
                result = v212;
                v25 = v259;
              }

              ++v24;
              *(v25 + 16) = v174 + 1;
              v175 = v25 + 24 * v174;
              *(v175 + 32) = v172;
              *(v175 + 40) = v165;
              *(v175 + 48) = v164;
              if (v24 == v207)
              {
                v191 = v25;

                result = outlined consume of JSONFuture(v193, v195, v194);
                v3 = v196;
                goto LABEL_103;
              }
            }

            goto LABEL_113;
          }

          v191 = MEMORY[0x1E69E7CC0];
LABEL_103:
          v182 = 0;
          LOBYTE(v22) = 3;
          v9 = v209;
          v18 = v200;
          v10 = v201;
        }

        else
        {
          v183 = v10;

          v184 = outlined copy of JSONFuture(v20, v21, v22);
          v185 = v20;
          v191 = JSONFuture.RefObject.values.getter(v184);
          result = outlined consume of JSONFuture(v185, v21, v22);
          v10 = v183;
          v9 = v209;
          v182 = 0;
          LOBYTE(v22) = 4;
        }
      }

      else
      {
        v180 = *v19;
        v181 = v10;

        result = outlined copy of JSONFuture(v180, v21, v22);
        v182 = v21;
        v10 = v181;
        v191 = v180;
        v9 = v209;
      }

      *(v208 + ((v216 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v216;
      v186 = (v9[6] + 16 * v216);
      *v186 = v215;
      v186[1] = v18;
      v187 = v9[7] + v214;
      *v187 = v191;
      *(v187 + 8) = v182;
      *(v187 + 16) = v22;
      v188 = v9[2];
      v189 = __OFADD__(v188, 1);
      v190 = v188 + 1;
      if (v189)
      {
        goto LABEL_114;
      }

      v9[2] = v190;
      v7 = v213;
    }

    while (v213);
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v205)
    {
      v192 = v9;

      return v192;
    }

    v14 = *(v206 + 8 * v10);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_10;
    }
  }

LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
  return result;
}

uint64_t JSONFuture.RefArray.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StringStyle.CodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t JSONEncoder.__deallocating_deinit()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 112);
  outlined consume of JSONDecoder.DateDecodingStrategy(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_1807A5C7C(v1);
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v2, v3);
  sub_1807A5C7C(v4);

  return swift_deallocClassInstance();
}

uint64_t outlined copy of JSONFuture(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return a1;
    }
  }

  else if (!(a3 >> 6))
  {
    return outlined copy of JSONEncoderValue(a1, a2, a3);
  }
}

uint64_t type metadata instantiation function for _JSONKeyedEncodingContainer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t IndexSet.endIndex.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = [*(*v1 + 16) rangeCount];
  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  if (result < 1)
  {
    goto LABEL_10;
  }

  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  result = [v7 rangeAtIndex_];
  v10 = result + v9;
  v11 = __OFADD__(result, v9);
  if (v8)
  {
    if (!v11)
    {
      if (v10 >= result)
      {
LABEL_13:
        *a1 = v10;
        a1[1] = result;
        a1[2] = v10;
        a1[3] = v5;
        a1[4] = v6;
        return result;
      }

      __break(1u);
LABEL_10:
      result = 0;
      v10 = 0;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 >= result)
  {
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t static Dictionary._forceBridgeFromObjectiveC(_:result:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1E69E6158];

  swift_unknownObjectRetain();
  if (a3 == v10 && a4 == MEMORY[0x1E69E7CA0] + 8)
  {
    result = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (result)
    {
      goto LABEL_10;
    }

    result = [a1 count];
    if (!result)
    {
      *a2 = MEMORY[0x1E69E7CC8];
      return result;
    }

    v13 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = v14[6];
    v16 = v14[7];

    result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v15, v16, a1, v13);
    if (result < 0 || v13 < result)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v14[2] = result;
    if (!result)
    {
LABEL_26:

      *a2 = v14;
      return result;
    }

    v17 = result - 1;
    v18 = v14 + 8;
    while (1)
    {
      while (1)
      {
        if ((*(v18 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
        {
          goto LABEL_18;
        }

        v23 = (v14[6] + 16 * v17);
        v24 = *v23;
        v25 = v23[1];

        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
        v28 = v27;

        if ((v28 & 1) == 0)
        {
          break;
        }

        v29 = v14[6] + 16 * v17;

        outlined destroy of String(v29);
        result = __swift_destroy_boxed_opaque_existential_1(v14[7] + 32 * v17);
        v30 = v14[2];
        v31 = __OFSUB__(v30, 1);
        v32 = v30 - 1;
        if (v31)
        {
          __break(1u);
          goto LABEL_43;
        }

        v14[2] = v32;

LABEL_18:
        if (--v17 < 0)
        {
          goto LABEL_26;
        }
      }

      *(v18 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (v17 < v26)
      {
        *(v14[6] + 16 * v26) = *(v14[6] + 16 * v17);
        v19 = v14[7];
        v20 = (v19 + 32 * v17);
        v21 = v20[1];
        v22 = (v19 + 32 * v26);
        *v22 = *v20;
        v22[1] = v21;
        goto LABEL_18;
      }

      if (v26 == v17)
      {
        goto LABEL_18;
      }

      v33 = v14[6];
      v34 = (v33 + 16 * v26);
      v35 = (v33 + 16 * v17);
      v36 = *v34;
      v37 = v34[1];
      v38 = v35[1];
      *v34 = *v35;
      v34[1] = v38;
      *v35 = v36;
      v35[1] = v37;
      v39 = v14[7];
      v40 = (v39 + 32 * v26);
      v41 = (v39 + 32 * v17);
      outlined init with take of Any(v40, &aBlock);
      outlined init with take of Any(v41, v40);
      outlined init with take of Any(&aBlock, v41);
      if (v17 < 0)
      {
        goto LABEL_26;
      }
    }
  }

  result = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (!result)
  {
    if (_swift_isClassOrObjCExistentialType() & 1) != 0 && (_swift_isClassOrObjCExistentialType())
    {
      result = [a1 copyWithZone_];
      *a2 = ~(result >> 1) & 0x4000000000000000 | result;
      return result;
    }

    if (*(*(a3 - 8) + 72) >= 8 && *(*(a4 - 8) + 72) > 7)
    {
      v45 = [a1 count];
      if (v45)
      {
        MEMORY[0x1EEE9AC00](v45);
        v52[2] = a3;
        v52[3] = a4;
        v52[4] = a5;
        v52[5] = a1;
        v52[6] = v46;
        result = _NativeDictionary.init(_unsafeUninitializedCapacity:allowingDuplicates:initializingWith:)(v46, v47, closure #2 in static Dictionary._forceBridgeFromObjectiveC(_:result:)partial apply, v52, a3, a4);
      }

      else
      {
        result = specialized Dictionary.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], a3, a4, a5);
      }

      goto LABEL_10;
    }

    v43 = [a1 count];
    if (v43)
    {
      type metadata accessor for _DictionaryStorage();
      v44 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC8];
    }

    v58 = v44;
    v59 = v43;
    v48 = swift_allocObject();
    v48[2] = a3;
    v48[3] = a4;
    v48[4] = a5;
    v48[5] = &v58;
    v49 = swift_allocObject();
    *(v49 + 16) = closure #1 in static Dictionary._forceBridgeFromObjectiveC(_:result:)partial apply;
    *(v49 + 24) = v48;
    v56 = thunk for @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v57 = v49;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v55 = &block_descriptor_15;
    v50 = _Block_copy(&aBlock);

    [a1 enumerateKeysAndObjectsUsingBlock_];
    _Block_release(v50);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (*(v58 + 16) == v59)
      {
        *a2 = v58;
      }

      goto LABEL_45;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

LABEL_10:
  *a2 = result;
  return result;
}

uint64_t LocalizedStringResource.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v16 = static LocaleCache.cache;
  v17 = qword_1ED4404B0;
  v6 = LocaleCache._currentAndCache.getter();
  v8 = v7;
  v9 = objc_opt_self();

  v10 = [v9 mainBundle];
  v11 = [v10 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)(v11, &v16);
  v12 = v16;
  ObjectType = swift_getObjectType();
  result = (*(*(&v12 + 1) + 144))(ObjectType, *(&v12 + 1));
  if (result)
  {
    v15 = MEMORY[0x1E69E7CC0];
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v15;
    a3[3] = a1;
    a3[4] = a2;
    a3[5] = 0;
    a3[6] = 0;
    a3[7] = v6;
    a3[8] = v8;
    a3[9] = v12;
    a3[11] = 0;
    a3[12] = 0;
    a3[10] = *(&v12 + 1);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double LocalizedStringResource.BundleDescription.resolvedURL.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  if (!(v3 >> 62))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = [v6 bundleURL];
LABEL_8:
    v8 = v7;

    static URL._unconditionallyBridgeFromObjectiveC(_:)(v8, &v9);
    result = *&v9;
    *a1 = v9;
    return result;
  }

  if (v3 >> 62 != 1)
  {
    v6 = [objc_opt_self() mainBundle];
    v7 = [v6 bundleURL];
    goto LABEL_8;
  }

  *a1 = *v1;
  *(a1 + 8) = v3 & 0x3FFFFFFFFFFFFFFFLL;

  swift_unknownObjectRetain();
  return result;
}

unint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet()
{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet and conformance IndexSet;
  if (!lazy protocol witness table cache variable for type IndexSet and conformance IndexSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet and conformance IndexSet);
  }

  return result;
}

uint64_t IndexSet.startIndex.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = [*(*v1 + 16) rangeCount];
  if (result < 1)
  {
    goto LABEL_9;
  }

  v5 = *(v3 + 24);
  result = [*(v3 + 16) rangeAtIndex_];
  v6 = result;
  v8 = result + v7;
  v9 = __OFADD__(result, v7);
  if (v5)
  {
    if (!v9)
    {
      if (v8 < result)
      {
        __break(1u);
LABEL_9:
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        a1[3] = -1;
LABEL_13:
        a1[4] = result;
        return result;
      }

LABEL_12:
      result = [*(v3 + 16) rangeCount];
      *a1 = v6;
      a1[1] = v6;
      a1[2] = v8;
      a1[3] = 0;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 >= result)
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t _NSSwiftLocale.languageIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftLocale_locale + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 352);
  swift_unknownObjectRetain();
  v3(v11, ObjectType, v1);
  swift_unknownObjectRelease();
  v10[2] = v11[2];
  v10[3] = v11[3];
  v10[4] = v11[4];
  v10[5] = v11[5];
  v10[0] = v11[0];
  v10[1] = v11[1];
  Locale.Language.Components.identifier.getter();
  v4 = outlined destroy of Locale.Language.Components(v11);
  if (one-time initialization token for cache != -1)
  {
    v4 = swift_once();
  }

  v5 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock((v5 + 48));
  partial apply for closure #1 in LocaleCache.fixed(_:)((v5 + 16), v10);
  os_unfair_lock_unlock((v5 + 48));
  v6 = *(&v10[0] + 1);

  v7 = swift_getObjectType();
  LOBYTE(v10[0]) = 1;
  v8 = (*(v6 + 416))(v10, v7, v6);
  swift_unknownObjectRelease();
  return v8;
}

char *closure #1 in _LocaleICU.identifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  LOBYTE(v5) = v4;
  v85 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 440);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v12)
    {
      v13 = (*(v10 + 56) + 16 * v11);
      v14 = v13[1];
      *a4 = *v13;
      a4[1] = v14;
    }
  }

  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  if (!a2)
  {
    String.utf8CString.getter();
    v21 = ualoc_canonicalForm();

    if (v21 < 1)
    {
      goto LABEL_22;
    }

    v82[v21] = 0;
    v19 = MEMORY[0x1865CAEB0](v82);
    if (!v20)
    {
      goto LABEL_22;
    }

LABEL_11:
    v22 = v19;
    v5 = v20;
    goto LABEL_18;
  }

  if (a2 == 1)
  {
    String.utf8CString.getter();
    v18 = uloc_toLanguageTag();

    if (v18 < 1 || (v83[v18] = 0, v19 = MEMORY[0x1865CAEB0](v83), !v20))
    {
LABEL_22:
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(a1 + 440);
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      v36 = *(v22 + 16);
      v37 = (v35 & 1) == 0;
      v30 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_35;
      }

      LOBYTE(v5) = v35;
      if (*(v22 + 24) >= v38)
      {
LABEL_26:
        if (isUniquelyReferenced_nonNull_native)
        {
          v39 = v22;
LABEL_28:
          if (v5)
          {
LABEL_29:
            v41 = (*(v39 + 56) + 16 * v34);
            *v41 = v16;
            v41[1] = v17;

LABEL_52:
            *(a1 + 440) = v39;
            *a4 = v16;
            a4[1] = v17;
            return result;
          }

LABEL_51:
          result = specialized _NativeDictionary._insert(at:key:value:)(v34, a2, v16, v17, v39);
          goto LABEL_52;
        }

LABEL_35:
        __src = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation6LocaleV14IdentifierTypeOSSGMd);
        v43 = static _DictionaryStorage.copy(original:)();
        v39 = v43;
        if (*(v22 + 16))
        {
          v44 = (v43 + 64);
          v45 = (v22 + 64);
          v46 = ((1 << *(v39 + 32)) + 63) >> 6;
          if (v39 != v22 || v44 >= &v45[8 * v46])
          {
            memmove(v44, v45, 8 * v46);
          }

          v47 = 0;
          *(v39 + 16) = *(v22 + 16);
          v48 = 1 << *(v22 + 32);
          v49 = -1;
          if (v48 < 64)
          {
            v49 = ~(-1 << v48);
          }

          v50 = v49 & *(v22 + 64);
          v51 = (v48 + 63) >> 6;
          if (v50)
          {
            do
            {
              v52 = __clz(__rbit64(v50));
              v78 = (v50 - 1) & v50;
LABEL_48:
              v55 = v52 | (v47 << 6);
              v56 = (*(v22 + 56) + 16 * v55);
              v58 = *v56;
              v57 = v56[1];
              *(*(v39 + 48) + v55) = *(*(v22 + 48) + v55);
              v59 = (*(v39 + 56) + 16 * v55);
              *v59 = v58;
              v59[1] = v57;

              v50 = v78;
            }

            while (v78);
          }

          v53 = v47;
          while (1)
          {
            v47 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              __break(1u);
            }

            if (v47 >= v51)
            {
              break;
            }

            v54 = *(v22 + 64 + 8 * v47);
            ++v53;
            if (v54)
            {
              v52 = __clz(__rbit64(v54));
              v78 = (v54 - 1) & v54;
              goto LABEL_48;
            }
          }
        }

        v34 = __src;
        if (v5)
        {
          goto LABEL_29;
        }

        goto LABEL_51;
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
      v39 = v22;
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v5 & 1) == (v40 & 1))
      {
        goto LABEL_28;
      }

LABEL_25:
      v34 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  LODWORD(v80) = 0;
  String.utf8CString.getter();
  v23 = uloc_toLanguageTag();

  if (v23 <= 0)
  {
    goto LABEL_22;
  }

  v84[v23] = 0;
  MEMORY[0x1865CAEB0](v84);
  if (!v24)
  {
    goto LABEL_22;
  }

  LOBYTE(v16) = lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  v22 = v80;
  v5 = v81;
  if (v80 == 6581877 && v81 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

    v22 = v80;
    v5 = v81;
  }

LABEL_18:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + 440);
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v28 = *(v17 + 16);
  v29 = (v27 & 1) == 0;
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    v16 = v27;
    if (*(v17 + 24) < v31)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, isUniquelyReferenced_nonNull_native);
      v32 = v17;
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v16 & 1) != (v33 & 1))
      {
        goto LABEL_25;
      }

LABEL_32:
      if (v16)
      {
LABEL_33:
        v42 = (*(v32 + 56) + 16 * v26);
        *v42 = v22;
        v42[1] = v5;

LABEL_71:
        *(a1 + 440) = v32;
        *a4 = v22;
        a4[1] = v5;
        return result;
      }

LABEL_70:
      result = specialized _NativeDictionary._insert(at:key:value:)(v26, a2, v22, v5, v32);
      goto LABEL_71;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v32 = v17;
      goto LABEL_32;
    }
  }

  v75 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation6LocaleV14IdentifierTypeOSSGMd);
  v60 = static _DictionaryStorage.copy(original:)();
  v32 = v60;
  if (!*(v17 + 16))
  {
LABEL_69:

    v26 = v75;
    if (v16)
    {
      goto LABEL_33;
    }

    goto LABEL_70;
  }

  result = (v60 + 64);
  __srca = (v17 + 64);
  v61 = ((1 << *(v32 + 32)) + 63) >> 6;
  if (v32 != v17 || result >= &__srca[8 * v61])
  {
    result = memmove(result, __srca, 8 * v61);
  }

  v62 = 0;
  *(v32 + 16) = *(v17 + 16);
  v63 = 1 << *(v17 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = (v63 + 63) >> 6;
  v66 = v64 & *(v17 + 64);
  if (v66)
  {
    do
    {
      v67 = __clz(__rbit64(v66));
      v79 = (v66 - 1) & v66;
LABEL_67:
      v70 = v67 | (v62 << 6);
      v71 = (*(v17 + 56) + 16 * v70);
      v73 = *v71;
      v72 = v71[1];
      *(*(v32 + 48) + v70) = *(*(v17 + 48) + v70);
      v74 = (*(v32 + 56) + 16 * v70);
      *v74 = v73;
      v74[1] = v72;

      v66 = v79;
    }

    while (v79);
  }

  v68 = v62;
  while (1)
  {
    v62 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v62 >= v65)
    {
      goto LABEL_69;
    }

    v69 = *&__srca[8 * v62];
    ++v68;
    if (v69)
    {
      v67 = __clz(__rbit64(v69));
      v79 = (v69 - 1) & v69;
      goto LABEL_67;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for _LocaleProtocol.identifier(_:) in conformance _LocaleICU(unsigned __int8 *a1)
{
  v2 = *(v1 + 200);
  v3 = *a1;
  os_unfair_lock_lock(v2 + 134);
  closure #1 in _LocaleICU.identifier(_:)(&v2[4], v3, v1, &v5);
  os_unfair_lock_unlock(v2 + 134);
  return v5;
}

unint64_t lazy protocol witness table accessor for type Locale.IdentifierType and conformance Locale.IdentifierType()
{
  result = lazy protocol witness table cache variable for type Locale.IdentifierType and conformance Locale.IdentifierType;
  if (!lazy protocol witness table cache variable for type Locale.IdentifierType and conformance Locale.IdentifierType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.IdentifierType and conformance Locale.IdentifierType);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *initUAUserActivity()
{
  if (qword_1ED43FE30 || (result = dlopen("/System/Library/PrivateFrameworks/UserActivity.framework/UserActivity", 2), (qword_1ED43FE30 = result) != 0))
  {
    result = objc_getClass("UAUserActivity");
    qword_1ED43FE28 = result;
    getUAUserActivityClass = UAUserActivityFunction;
  }

  return result;
}

uint64_t __supportsUserActivityAppLinks_block_invoke()
{
  getUAUserActivityClass();
  if (objc_opt_respondsToSelector())
  {
    result = [getUAUserActivityClass() supportsUserActivityAppLinks];
  }

  else
  {
    result = 0;
  }

  _MergedGlobals_140 = result;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double URLComponents.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

uint64_t StringProtocol.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[1] = a5;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Collection.startIndex.getter();
  v10 = v29[3];
  result = dispatch thunk of Collection.endIndex.getter();
  if (v29[2] >> 14 < v10 >> 14)
  {
    __break(1u);
  }

  else
  {
    v12 = StringProtocol._asContiguousUTF8Substring(from:)(v10);
    if (v14)
    {
      v15 = v12;
      v16 = v13;
      (*(v7 + 16))(v9, a1, a3);
      v17 = Substring.init<A>(_:)();
      if ((v15 ^ v16) >= 0x4000 && (v17 ^ v18) >> 14)
      {
        specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v17, v18, v19, v20, 0, 0, 0, 0, 0, v15, v16);
        v28 = v27;

        v21 = v28 ^ 1;
      }

      else
      {

        v21 = 0;
      }

      return v21 & 1;
    }

    StringProtocol._ephemeralString.getter();
    StringProtocol._ephemeralString.getter();
    v22 = String._bridgeToObjectiveCImpl()();

    v23 = String._bridgeToObjectiveCImpl()();

    v24 = [v22 rangeOfString_];
    v26 = v25;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!__OFADD__(v24, v26))
    {
      StringProtocol._toUTF16Indices(_:)();
      v21 = 1;
      return v21 & 1;
    }
  }

  __break(1u);
  return result;
}

NSMutableAttributedString *_NSStringCreateByParsingMarkdownAndOptionallyInflecting(void *a1, __CFBundle *MainBundle, void *a3, void *a4, int a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = [objc_msgSend(a1 "__baseAttributedString")];
  if (!v12)
  {
    v13 = _NSAttributedStringMarkdownParsingLocalizedStringOptions();
    if (!a3)
    {
      goto LABEL_14;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = [objc_msgSend(a3 "pathComponents")];
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v31 count:16];
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = v15;
    v29 = v13;
    v30 = a6;
    v17 = 0;
    v18 = *v33;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        if ([v20 hasSuffix:@".lproj"] && objc_msgSend(v20, "length") >= 7)
        {
          v17 = [v20 substringToIndex:{objc_msgSend(v20, "length") - 6}];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v16);
    a6 = v30;
    v13 = v29;
    if (!v17)
    {
LABEL_14:
      if (!MainBundle)
      {
        MainBundle = CFBundleGetMainBundle();
      }

      v21 = CFBundleCopyBundleLocalizations(MainBundle);
      v22 = CFBundleCopyPreferredLocalizationsFromArray(v21);
      CFRelease(v21);
      v17 = [-[__CFArray firstObject](v22 "firstObject")];
      CFRelease(v22);
    }

    v23 = [v13 copy];
    [v23 setLanguageCode:v17];

    if (a4 && (v24 = [a4 objectForKeyedSubscript:@"NSStringInflectableLocalizationKey"]) != 0 && (v25 = v24, _NSIsNSString()))
    {
      v12 = [(NSAttributedString *)[NSMutableAttributedString alloc] initWithMarkdownString:v25 options:v23 baseURL:0 error:0];
      v26 = objc_alloc_init(NSAttributedStringMarkdownParsingOptions);
      [(NSAttributedStringMarkdownParsingOptions *)v26 setInterpretedSyntax:2];
      v27 = [[NSAttributedString alloc] initWithMarkdownString:a1 options:v26 baseURL:0 error:0];

      if (v27)
      {
        [(NSMutableAttributedString *)v12 addAttribute:@"NSInflectionAlternative" value:v27 range:0, [(NSAttributedString *)v12 length]];
      }
    }

    else
    {
      v12 = [(NSAttributedString *)[NSMutableAttributedString alloc] initWithMarkdownString:a1 options:v23 baseURL:0 error:0];
    }

    if (a5)
    {
      [(NSMutableAttributedString *)v12 _inflectWithLocale:a6 replacements:MEMORY[0x1E695E0F0] concepts:MEMORY[0x1E695E0F0] preflight:1];
    }

    if (a4)
    {
      [(NSMutableAttributedString *)v12 addAttribute:0x1EEF09AB0 value:a4 range:0, [(NSAttributedString *)v12 length]];
    }
  }

  return v12;
}

uint64_t _NSAttributedStringMarkdownParsingLocalizedStringOptions()
{
  if (qword_1ED43F1B8 != -1)
  {
    dispatch_once(&qword_1ED43F1B8, &__block_literal_global_90);
  }

  return qword_1ED43F1B0;
}

uint64_t closure #1 in Notification.Subscription.init(_:_:_:_:)()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  os_unfair_lock_lock(*(result + 16));
  if (!*(v1 + 64))
  {
    goto LABEL_29;
  }

  v2 = *(v1 + 32);
  static Subscribers.Demand.unlimited.getter();
  result = static Subscribers.Demand.== infix(_:_:)();
  if (result)
  {
    goto LABEL_6;
  }

  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v2)
  {
LABEL_6:
    v3 = *(v1 + 32);
    static Subscribers.Demand.unlimited.getter();
    if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
    {
      static Subscribers.Demand.unlimited.getter();
      result = static Subscribers.Demand.== infix(_:_:)();
      if (result)
      {
        v4 = static Subscribers.Demand.unlimited.getter();
      }

      else
      {
        if (v3 < 0)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (!v3)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v4 = v3 - 1;
      }

      *(v1 + 32) = v4;
    }
  }

  os_unfair_lock_unlock(*(v1 + 16));
  static Subscribers.Demand.unlimited.getter();
  result = static Subscribers.Demand.== infix(_:_:)();
  if (result)
  {
    goto LABEL_17;
  }

  if (v2 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v2)
  {
    goto LABEL_30;
  }

LABEL_17:
  os_unfair_recursive_lock_lock_with_options();
  v5 = dispatch thunk of Subscriber.receive(_:)();
  os_unfair_recursive_lock_unlock();
  static Subscribers.Demand.unlimited.getter();
  result = static Subscribers.Demand.== infix(_:_:)();
  if (result)
  {
LABEL_20:
    os_unfair_lock_lock(*(v1 + 16));
    v6 = *(v1 + 32);
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
LABEL_29:
      os_unfair_lock_unlock(*(v1 + 16));
      goto LABEL_30;
    }

    static Subscribers.Demand.unlimited.getter();
    v7 = static Subscribers.Demand.== infix(_:_:)();
    v8 = static Subscribers.Demand.unlimited.getter();
    if (v7)
    {
LABEL_28:
      *(v1 + 32) = v8;
      goto LABEL_29;
    }

    result = static Subscribers.Demand.== infix(_:_:)();
    if (result)
    {
LABEL_26:
      v8 = static Subscribers.Demand.unlimited.getter();
      goto LABEL_28;
    }

    if (((v6 | v5) & 0x8000000000000000) == 0)
    {
      v8 = v6 + v5;
      if (!__OFADD__(v6, v5))
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_39:
        __break(1u);
        return result;
      }

      goto LABEL_26;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v5 < 0)
  {
    goto LABEL_35;
  }

  if (v5)
  {
    goto LABEL_20;
  }

LABEL_30:
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)(a2, v4);

  v2(v4);

  return outlined destroy of Notification(v4);
}

void service_connection_handler(_xpc_connection_s *a1)
{
  v2 = +[NSXPCListener serviceListener];

  service_connection_handler_make_connection(v2, a1);
}

uint64_t _sSo20NSNotificationCenterC10FoundationE13NotificationsC8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = _sSo20NSNotificationCenterC10FoundationE13NotificationsC8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

unint64_t lazy protocol witness table accessor for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator()
{
  result = lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator;
  if (!lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator);
  }

  return result;
}

void _BridgedURL.deletingLastPathComponent()(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _BridgedURL.relativePath.getter(&selRef_path);
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [*(v2 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) *a1];
    if (v9)
    {
      v10 = v9;
      static URL._unconditionallyBridgeFromObjectiveC(_:)(v9, &v12);

      v11 = v12;
    }

    else
    {
      v11 = 0uLL;
    }

    *a2 = v11;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }
}

uint64_t specialized static AttributedString.Guts.characterwiseIsEqual(_:to:)(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 40);
  v36 = *(a1 + 24);
  v37 = v4;
  v38 = *(a1 + 56);
  *&v19 = BigString.startIndex.getter();
  *(&v19 + 1) = v5;
  v20 = v6;
  v21 = v7;
  v22 = BigString.endIndex.getter();
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v11 = *(a2 + 40);
  v33 = *(a2 + 24);
  v34 = v11;
  v35 = *(a2 + 56);
  *&v26 = BigString.startIndex.getter();
  *(&v26 + 1) = v12;
  v27 = v13;
  v28 = v14;
  v29 = BigString.endIndex.getter();
  v30 = v15;
  v31 = v16;
  v32 = v17;
  return specialized static AttributedString.Guts.characterwiseIsEqual(_:in:to:in:)(a1, &v19, a2, &v26) & 1;
}

uint64_t type metadata accessor for AttributedString.Runs()
{
  result = type metadata singleton initialization cache for AttributedString.Runs;
  if (!type metadata singleton initialization cache for AttributedString.Runs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index()
{
  result = lazy protocol witness table cache variable for type BigString.Index and conformance BigString.Index;
  if (!lazy protocol witness table cache variable for type BigString.Index and conformance BigString.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigString.Index and conformance BigString.Index);
  }

  return result;
}

uint64_t outlined destroy of AttributedString.Runs(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.Runs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static AttributedString.Guts.characterwiseIsEqual(_:in:to:in:)(uint64_t a1, __int128 *a2, unint64_t a3, _OWORD *a4)
{
  v279 = a4;
  v296 = a1;
  v297 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v270 = &v254 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v280 = &v254 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v271 = &v254 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v272 = &v254 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v254 - v15;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v282);
  v295 = &v254 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v294 = &v254 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v287 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v292 = &v254 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v284 = &v254 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v254 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v254 - v28;
  v283 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v283);
  v286 = (&v254 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v281 = (&v254 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v254 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v285 = &v254 - v37;
  v38 = a2[1];
  v303 = *a2;
  v304 = v38;
  v39 = a2[3];
  v305 = a2[2];
  v306 = v39;
  v40 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  RangeSet.init(_:)();
  v277 = v35;
  *v35 = v296;

  v291 = v26;
  v278 = v40;
  RangeSet.init()();
  v298 = v20;
  v41 = v294;
  v273 = v29;
  RangeSet.ranges.getter();
  v275 = *(v6 + 16);
  v276 = v6 + 16;
  v275(v41, v16, v5);
  v42 = *(v282 + 36);
  v43 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v44 = *(v6 + 8);
  v289 = v16;
  v290 = v6 + 8;
  v288 = v44;
  v44(v16, v5);
  dispatch thunk of Collection.endIndex.getter();
  v45 = *(v41 + v42);
  v301 = v43;
  v302 = v5;
  if (v45 != v303)
  {
    v293 = v42;
    do
    {
      v57 = dispatch thunk of Collection.subscript.read();
      v59 = v58[4];
      *&v300 = v58[5];
      *(&v300 + 1) = v59;
      v299 = v58[6];
      v57(&v303, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v60 = v296;
      v61 = *(v296 + 40);
      v326 = *(v296 + 24);
      v327 = v61;
      v328 = *(v296 + 56);
      swift_unknownObjectRetain();
      v62 = BigString.UnicodeScalarView.index(roundingDown:)();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      swift_unknownObjectRelease();
      v69 = *(v60 + 40);
      v323 = *(v60 + 24);
      v324 = v69;
      v325 = *(v60 + 56);
      swift_unknownObjectRetain();
      v70 = BigString.UnicodeScalarView.index(roundingDown:)();
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v5 = v302;
      swift_unknownObjectRelease();
      *&v303 = v62;
      *(&v303 + 1) = v64;
      *&v304 = v66;
      *(&v304 + 1) = v68;
      *&v305 = v70;
      *(&v305 + 1) = v72;
      *&v306 = v74;
      *(&v306 + 1) = v76;
      if ((v70 ^ v62) >= 0x400)
      {
        v77 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v77(&v320, 0);
      }

      v41 = v294;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v41 + v293) != v303);
  }

  outlined destroy of TermOfAddress?(v41, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v46 = v283;
  v47 = *(v287 + 16);
  v48 = v277;
  v49 = v277 + *(v283 + 24);
  v293 = v287 + 16;
  v274 = v47;
  (v47)(v49, v291, v298);
  v50 = v289;
  RangeSet.ranges.getter();
  v51 = RangeSet.Ranges.count.getter();
  v52 = v288;
  v288(v50, v5);
  v53 = *(v46 + 28);
  v269 = v51 > 1;
  *(v48 + v53) = v269;
  v54 = v272;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v320 == v303)
  {
    v55 = v54;
    v56 = v5;
LABEL_10:
    v52(v55, v56);
    v83 = v296;
    v84 = *(v296 + 72);
    if (v84)
    {
      *(&v300 + 1) = *(v84 + 18);
    }

    else
    {
      *(&v300 + 1) = 0;
    }

    *&v300 = *(v296 + 96);
    v85 = *(v296 + 40);
    v320 = *(v296 + 24);
    v321 = v85;
    v322 = *(v296 + 56);
    v86 = BigString.startIndex.getter();
    v88 = v87;
    v299 = v89;
    v91 = v90;
    v92 = *(v83 + 72);
    v272 = *(v83 + 96);
    if (v92)
    {
      v271 = *(v92 + 18);
      v93 = *(v287 + 8);
      swift_unknownObjectRetain();
      v94 = v298;
      v93(v291, v298);
      v294 = v93;
      v93(v273, v94);
      swift_unknownObjectRelease();
    }

    else
    {
      v95 = *(v287 + 8);
      v96 = v298;
      v95(v291, v298);
      v294 = v95;
      v95(v273, v96);
      v271 = 0;
    }

    v97 = *(v83 + 40);
    v317 = *(v83 + 24);
    v318 = v97;
    v319 = *(v83 + 56);
    v98 = BigString.startIndex.getter();
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = -1;
    v108 = v86;
    v109 = v88;
    v110 = v299;
    v111 = v299;
    v112 = v91;
    v113 = v98;
    v114 = v99;
    v115 = v100;
    v116 = v101;
    v117 = -1;
    goto LABEL_26;
  }

  v78 = dispatch thunk of Collection.subscript.read();
  v80 = *v79;
  v267 = v79[1];
  v268 = v80;
  v81 = v79[2];
  v265 = v79[3];
  v266 = v81;
  v78(&v303, 0);
  v52(v54, v5);
  v82 = v271;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v55 = v82;
    v56 = v5;
    goto LABEL_10;
  }

  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v118 = dispatch thunk of Collection.subscript.read();
  v113 = v119[4];
  v120 = v119[6];
  v121 = v119[7];
  v263 = v119[5];
  v264 = v120;
  v118(&v303, 0);
  v52(v82, v5);
  v122 = v296;
  AttributedString.Guts.findRun(at:)(v268, v265, &v303);
  v300 = v303;
  v257 = *(&v304 + 1);
  v258 = v304;
  v123 = v122;
  v299 = *(&v306 + 1);
  v260 = v306;
  v261 = v307;
  v262 = *(&v305 + 1);
  v124 = *(v122 + 40);
  v320 = *(v122 + 24);
  v321 = v124;
  v322 = *(v122 + 56);
  v125 = BigString.endIndex.getter();
  v259 = v121;
  if ((v125 ^ v113) >= 0x400)
  {
    v135 = v5;
    AttributedString.Guts.findRun(at:)(v113, v121, &v303);
    v271 = *(&v303 + 1);
    v272 = v303;
    v105 = *(&v304 + 1);
    v106 = v304;
    v296 = *(&v305 + 1);
    v136 = v306;
    v255 = v307;
    v256 = *(&v306 + 1);
    v137 = v289;
    v138 = v298;
    RangeSet.ranges.getter();
    v117 = RangeSet.Ranges.count.getter();
    v288(v137, v135);
    v139 = *(v287 + 8);
    v139(v291, v138);
    v294 = v139;
    v139(v273, v138);
    v101 = v255;
    v100 = v256;
    v99 = v136;
    v98 = v296;
    v107 = 0;
    v104 = v269;
    v109 = v267;
    v108 = v268;
    v112 = v265;
    v111 = v266;
    v91 = v261;
    v86 = v262;
    v116 = v259;
    v88 = v260;
    v110 = v299;
    v114 = v263;
    v115 = v264;
  }

  else
  {
    v126 = v263;
    v127 = *(v122 + 72);
    v128 = v123;
    if (v127)
    {
      v105 = *(v123 + 80);
    }

    else
    {
      v105 = 0;
    }

    v129 = *(v128 + 96);
    v130 = swift_unknownObjectRetain();
    v272 = v129;
    v271 = specialized Rope._endPath.getter(v130);
    if (v127)
    {
      swift_unknownObjectRelease();
    }

    v131 = v289;
    v132 = v298;
    RangeSet.ranges.getter();
    v133 = v302;
    v117 = RangeSet.Ranges.count.getter();
    v288(v131, v133);
    v134 = *(v287 + 8);
    v134(v291, v132);
    v294 = v134;
    v134(v273, v132);
    v107 = 0;
    v106 = 0;
    v98 = v113;
    v114 = v126;
    v99 = v126;
    v115 = v264;
    v112 = v265;
    v100 = v264;
    v116 = v259;
    v88 = v260;
    v101 = v259;
    v104 = v269;
    v109 = v267;
    v108 = v268;
    v111 = v266;
    v91 = v261;
    v86 = v262;
    v110 = v299;
  }

  v102 = v257;
  v103 = v258;
LABEL_26:
  *(v48 + 8) = v102;
  *(v48 + 16) = v300;
  *(v48 + 32) = v103;
  *(v48 + 40) = v86;
  *(v48 + 48) = v88;
  *(v48 + 56) = v110;
  *(v48 + 64) = v91;
  *(v48 + 72) = v108;
  *(v48 + 80) = v109;
  *(v48 + 88) = v111;
  *(v48 + 96) = v112;
  *(v48 + 104) = v107;
  *(v48 + 112) = 0;
  *(v48 + 113) = v104;
  v140 = v271;
  v141 = v272;
  *(v48 + 120) = v105;
  *(v48 + 128) = v141;
  *(v48 + 136) = v140;
  *(v48 + 144) = v106;
  *(v48 + 152) = v98;
  *(v48 + 160) = v99;
  *(v48 + 168) = v100;
  *(v48 + 176) = v101;
  *(v48 + 184) = v113;
  *(v48 + 192) = v114;
  *(v48 + 200) = v115;
  *(v48 + 208) = v116;
  *(v48 + 216) = v117;
  *(v48 + 224) = 0;
  *(v48 + 225) = v104;
  outlined init with take of AttributedString.Runs(v48, v285);
  v142 = v279[1];
  v303 = *v279;
  v304 = v142;
  v143 = v279[3];
  v305 = v279[2];
  v306 = v143;
  RangeSet.init(_:)();
  *v286 = v297;

  RangeSet.init()();
  v144 = v289;
  RangeSet.ranges.getter();
  v145 = v295;
  v146 = v302;
  v275(v295, v144, v302);
  v147 = *(v282 + 36);
  dispatch thunk of Collection.startIndex.getter();
  v288(v144, v146);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v145 + v147) != v303)
  {
    v296 = v147;
    do
    {
      v156 = dispatch thunk of Collection.subscript.read();
      v158 = v157[4];
      *&v300 = v157[5];
      *(&v300 + 1) = v158;
      v299 = v157[6];
      v156(&v303, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v159 = v297;
      v160 = *(v297 + 40);
      v314 = *(v297 + 24);
      v315 = v160;
      v316 = *(v297 + 56);
      swift_unknownObjectRetain();
      v161 = BigString.UnicodeScalarView.index(roundingDown:)();
      v163 = v162;
      v165 = v164;
      v167 = v166;
      swift_unknownObjectRelease();
      v168 = *(v159 + 40);
      v311 = *(v159 + 24);
      v312 = v168;
      v313 = *(v159 + 56);
      swift_unknownObjectRetain();
      v169 = BigString.UnicodeScalarView.index(roundingDown:)();
      v171 = v170;
      v173 = v172;
      v175 = v174;
      swift_unknownObjectRelease();
      *&v303 = v161;
      *(&v303 + 1) = v163;
      *&v304 = v165;
      *(&v304 + 1) = v167;
      *&v305 = v169;
      *(&v305 + 1) = v171;
      v146 = v302;
      *&v306 = v173;
      *(&v306 + 1) = v175;
      if ((v169 ^ v161) >= 0x400)
      {
        v176 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v176(&v308, 0);
      }

      v145 = v295;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v145 + v296) != v303);
  }

  outlined destroy of TermOfAddress?(v145, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v148 = v283;
  v149 = *(v283 + 24);
  v150 = v286;
  (v274)(&v149[v286], v292, v298);
  v151 = v289;
  RangeSet.ranges.getter();
  v152 = RangeSet.Ranges.count.getter();
  v153 = v288;
  v288(v151, v146);
  v154 = *(v148 + 28);
  LODWORD(v295) = v152 > 1;
  *(v150 + v154) = v295;
  v155 = v280;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v308 == v303)
  {
    v153(v155, v146);
LABEL_35:
    v182 = v297;
    v183 = *(v297 + 72);
    if (v183)
    {
      v301 = *(v183 + 18);
    }

    else
    {
      v301 = 0;
    }

    v184 = *(v297 + 96);
    v185 = *(v297 + 40);
    v303 = *(v297 + 24);
    v304 = v185;
    v305 = *(v297 + 56);
    v296 = BigString.startIndex.getter();
    v187 = v186;
    *&v300 = v189;
    *(&v300 + 1) = v188;
    v190 = *(v182 + 72);
    v299 = *(v182 + 96);
    if (v190)
    {
      v191 = *(v190 + 18);
      swift_unknownObjectRetain();
      v192 = v298;
      v193 = v184;
      v194 = v294;
      (v294)(v292, v298);
      v195 = v192;
      v196 = v191;
      v194(v284, v195);
      v184 = v193;
      swift_unknownObjectRelease();
    }

    else
    {
      v197 = v298;
      v198 = v294;
      (v294)(v292, v298);
      v198(v284, v197);
      v196 = 0;
    }

    v199 = *(v182 + 40);
    v308 = *(v182 + 24);
    v309 = v199;
    v310 = *(v182 + 56);
    v200 = BigString.startIndex.getter();
    v204 = 0;
    v205 = 0;
    v206 = 0;
    v207 = 0;
    v208 = 0;
    v209 = -1;
    v210 = v296;
    v211 = v296;
    v212 = v187;
    v213 = *(&v300 + 1);
    v214 = *(&v300 + 1);
    v215 = v300;
    v216 = v300;
    v217 = v200;
    v218 = v201;
    v219 = v202;
    v220 = v203;
    v221 = -1;
    v222 = v301;
    goto LABEL_51;
  }

  v177 = dispatch thunk of Collection.subscript.read();
  v179 = v178[1];
  v293 = *v178;
  v291 = v179;
  v180 = v178[2];
  v282 = v178[3];
  v283 = v180;
  v177(&v303, 0);
  v153(v155, v146);
  v181 = v270;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v153(v181, v146);
    goto LABEL_35;
  }

  v275 = v149;
  v223 = v153;
  v224 = v146;
  v225 = v181;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v226 = dispatch thunk of Collection.subscript.read();
  v217 = v227[4];
  v228 = v227[5];
  v230 = v227[6];
  v229 = v227[7];
  v226(&v303, 0);
  v223(v225, v146);
  v231 = v297;
  AttributedString.Guts.findRun(at:)(v293, v282, &v303);
  v232 = v303;
  v276 = *(&v304 + 1);
  v277 = v304;
  v296 = *(&v305 + 1);
  *(&v300 + 1) = *(&v306 + 1);
  v280 = v306;
  v301 = *(&v303 + 1);
  *&v300 = v307;
  v233 = *(v231 + 40);
  v308 = *(v231 + 24);
  v309 = v233;
  v310 = *(v231 + 56);
  v234 = BigString.endIndex.getter();
  v278 = v229;
  v279 = v230;
  if ((v234 ^ v217) >= 0x400)
  {
    AttributedString.Guts.findRun(at:)(v217, v229, &v303);
    v297 = *(&v303 + 1);
    v299 = v303;
    v207 = *(&v304 + 1);
    v208 = v304;
    v302 = *(&v305 + 1);
    v273 = *(&v306 + 1);
    v274 = v306;
    v272 = v307;
    v244 = v228;
    v245 = v289;
    v246 = v298;
    RangeSet.ranges.getter();
    v221 = RangeSet.Ranges.count.getter();
    v288(v245, v224);
    v247 = v232;
    v248 = v294;
    (v294)(v292, v246);
    v248(v284, v246);
    v218 = v244;
    v184 = v247;
    v203 = v272;
    v202 = v273;
    v150 = v286;
    v201 = v274;
    v222 = v301;
    v200 = v302;
    v209 = 0;
    v206 = v295;
    v211 = v293;
    v212 = v291;
    v216 = v282;
    v214 = v283;
    v196 = v297;
    v210 = v296;
    v219 = v279;
    v187 = v280;
    v213 = *(&v300 + 1);
    v215 = v300;
    v220 = v278;
  }

  else
  {
    v273 = v228;
    v274 = v232;
    v235 = v231;
    v236 = *(v231 + 72);
    v237 = *(v231 + 80);
    if (v236)
    {
      v207 = v237;
    }

    else
    {
      v207 = 0;
    }

    v238 = *(v235 + 96);
    v239 = swift_unknownObjectRetain();
    v299 = v238;
    v297 = specialized Rope._endPath.getter(v239);
    if (v236)
    {
      swift_unknownObjectRelease();
    }

    v150 = v286;
    v240 = v289;
    v241 = v298;
    RangeSet.ranges.getter();
    v242 = v302;
    v221 = RangeSet.Ranges.count.getter();
    v288(v240, v242);
    v243 = v294;
    (v294)(v292, v241);
    v243(v284, v241);
    v209 = 0;
    v208 = 0;
    v200 = v217;
    v218 = v273;
    v184 = v274;
    v201 = v273;
    v220 = v278;
    v219 = v279;
    v202 = v279;
    v203 = v278;
    v206 = v295;
    v213 = *(&v300 + 1);
    v222 = v301;
    v211 = v293;
    v212 = v291;
    v216 = v282;
    v214 = v283;
    v196 = v297;
    v210 = v296;
    v187 = v280;
    v215 = v300;
  }

  v204 = v276;
  v205 = v277;
LABEL_51:
  *(v150 + 8) = v204;
  *(v150 + 16) = v184;
  *(v150 + 24) = v222;
  *(v150 + 32) = v205;
  *(v150 + 40) = v210;
  *(v150 + 48) = v187;
  *(v150 + 56) = v213;
  *(v150 + 64) = v215;
  *(v150 + 72) = v211;
  *(v150 + 80) = v212;
  *(v150 + 88) = v214;
  *(v150 + 96) = v216;
  *(v150 + 104) = v209;
  *(v150 + 112) = 0;
  *(v150 + 113) = v206;
  v249 = v299;
  *(v150 + 120) = v207;
  *(v150 + 128) = v249;
  *(v150 + 136) = v196;
  *(v150 + 144) = v208;
  *(v150 + 152) = v200;
  *(v150 + 160) = v201;
  *(v150 + 168) = v202;
  *(v150 + 176) = v203;
  *(v150 + 184) = v217;
  *(v150 + 192) = v218;
  *(v150 + 200) = v219;
  *(v150 + 208) = v220;
  *(v150 + 216) = v221;
  *(v150 + 224) = 0;
  *(v150 + 225) = v206;
  v250 = v281;
  outlined init with take of AttributedString.Runs(v150, v281);
  v251 = v285;
  v252 = specialized static AttributedString.Guts._characterwiseIsEqual(_:to:)(v285, v250);
  outlined destroy of AttributedString.Runs(v250);
  outlined destroy of AttributedString.Runs(v251);
  return v252 & 1;
}

uint64_t lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of AttributedString.Runs(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString.Runs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static AttributedString.Guts._characterwiseIsEqual(_:to:)(uint64_t a1, void *a2)
{
  v354 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v354);
  v5 = &v304 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v6);
  v350 = &v304 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v349 = &v304 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v304 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v345 = &v304 - v15;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  MEMORY[0x1EEE9AC00](v353);
  v343 = &v304 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v304 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v346 = &v304 - v29;
  v30 = *a1;
  v348 = *a2;
  v352 = v30;
  if (v30 == v348)
  {
    v344 = v19;
    v340 = v11;
    v31 = v26;
    lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
    v32 = static RangeSet.== infix(_:_:)();
    v26 = v31;
    v11 = v340;
    v19 = v344;
    v30 = v352;
    if (v32)
    {
      return 1;
    }
  }

  v347 = v10;
  v341 = v6;
  v342 = v5;
  v351 = a2;
  v33 = *(a1 + 8);
  v34 = *(a1 + 72);
  v35 = *(a1 + 96);
  result = *(a1 + 120);
  v37 = *(a1 + 184);
  v38 = *(a1 + 208);
  if (*(a1 + *(v354 + 28)) != 1)
  {
    v39 = result - v33;
    if (__OFSUB__(result, v33))
    {
      __break(1u);
      goto LABEL_172;
    }

    v40 = *(a1 + 176);
    if (v38 == 2)
    {
      if (v40 != 2)
      {
LABEL_11:
        v41 = 1;
LABEL_12:
        v25 = v39 + v41;
        if (!__OFADD__(v39, v41))
        {
          v27 = *(a1 + 208);
          v28 = *(a1 + 120);
          v38 = v351;
          goto LABEL_14;
        }

LABEL_172:
        __break(1u);
LABEL_173:
        v24 = v19;
        v23 = a1;
        v210 = v30;
        v30 = 0;
        v211 = *(v38 + 112);
        v212 = *(v38 + 96);
        v213 = *(v38 + 104);
        v214 = *(v38 + 72);
        v334 = *(v38 + 64);
        v215 = *(v38 + 48);
        v320 = *(v38 + 56);
        v321 = v215;
        v217 = *(v38 + 32);
        v216 = *(v38 + 40);
        v308 = v210;
        v309 = v214 >> 10;
        v344 = v24;
        v345 = (v26 + 8);
        v307 = (v11 + 16);
        v305 = v21 >> 10;
        v306 = (v11 + 8);
        v218 = v5;
        v311 = v22;
        v312 = v212;
        v316 = v210;
        result = v22;
        v219 = *(v38 + 16);
        v335 = *(v38 + 24);
        v330 = v37;
        v331 = v25;
        v328 = v28;
        v329 = v27;
        v310 = v5;
        v327 = v26;
        v338 = v13;
        v339 = v23;
        v323 = v33;
        v324 = v35;
        v313 = v34;
        while (1)
        {
          LOBYTE(v400[0]) = v211;
          if (v218 >= v22 && (v22 < v218 || v308 == 2 || v212 != 2 && v214 >> 10 >= v305))
          {
            goto LABEL_286;
          }

          if (v218 < v5)
          {
            goto LABEL_297;
          }

          v227 = v5 < v218 || v312 == 2;
          v228 = v227;
          if (!v227)
          {
            if (v212 == 2)
            {
              goto LABEL_341;
            }

            if (v309 > v214 >> 10)
            {
              goto LABEL_315;
            }
          }

          if (v218 >= result)
          {
            if (result < v218)
            {
              goto LABEL_316;
            }

            if (v316 == 2)
            {
              goto LABEL_342;
            }

            if (v212 == 2)
            {
              if (!v228)
              {
                goto LABEL_339;
              }

              goto LABEL_203;
            }

            if (v214 >> 10 >= v21 >> 10)
            {
              goto LABEL_327;
            }
          }

          if ((v228 & 1) == 0)
          {
            if (v212 == 2)
            {
              goto LABEL_339;
            }

            if (v309 > v214 >> 10)
            {
              goto LABEL_323;
            }
          }

LABEL_203:
          if (result < v218)
          {
            goto LABEL_298;
          }

          if (v218 >= result && v212 != 2)
          {
            if (v316 == 2)
            {
              goto LABEL_343;
            }

            if (v21 >> 10 < v214 >> 10)
            {
              goto LABEL_317;
            }
          }

          if (v217 == 1 || v219 != *(v348 + 96))
          {
            goto LABEL_337;
          }

          v336 = v218;
          v337 = v217;
          v340 = v219;
          v322 = v30;
          v318 = result;
          v319 = v21;
          v332 = v214;
          v326 = v212;
          v314 = v216;
          v315 = v216 >> 11;
          if (v334 == 2)
          {
            v229 = v348;
            v230 = *(v348 + 72);
            if (v230)
            {
              v231 = *(v348 + 88);
              v232 = *(v348 + 80);
              swift_unknownObjectRetain();
              v229 = v348;
              v233 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v340, v335, v337, v230, v232, v231);
              swift_unknownObjectRelease();
            }

            else
            {
              v233 = 0;
            }

            v235 = *(v229 + 24);
            v441 = *(v229 + 40);
            v442 = *(v229 + 56);
            v440 = v235;
            v437 = *(v229 + 24);
            v438 = *(v229 + 40);
            v439 = *(v229 + 56);
            BigString.startIndex.getter();
            v333 = v236;
            v465[0] = v440;
            v465[1] = v441;
            v466 = v442;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v465, &v370);
            v317 = BigString.UTF8View.index(_:offsetBy:)();
            result = outlined destroy of BigString(&v440);
          }

          else
          {
            v229 = v348;
            v234 = *(v348 + 40);
            v434 = *(v348 + 24);
            v435 = v234;
            v436 = *(v348 + 56);
            swift_unknownObjectRetain();
            v317 = BigString.UTF8View.index(roundingDown:)();
            result = swift_unknownObjectRelease();
            v233 = v216 >> 11;
          }

          v237 = *(v229 + 72);
          v333 = *(v229 + 80);
          v238 = *(v229 + 96);
          v370 = v340;
          v239 = v335;
          v371 = v335;
          v240 = v337;
          v372 = v337;
          if (__OFADD__(v336, 1))
          {
            goto LABEL_300;
          }

          if (v340 != v238)
          {
            goto LABEL_301;
          }

          ++v336;
          if (v337)
          {
            v241 = *(v337 + 24 * ((v335 >> ((4 * *(v337 + 18) + 8) & 0x3C)) & 0xF) + 24);
            v171 = __OFADD__(v233, v241);
            v242 = v233 + v241;
            if (v171)
            {
              goto LABEL_313;
            }

            v325 = v242;
            if (!v237)
            {
              goto LABEL_299;
            }

            result = swift_unknownObjectRetain();
            v243 = v335;
          }

          else
          {
            swift_unknownObjectRetain();
            v244 = specialized Rope._Node.subscript.getter(v239, v237);

            if (__OFADD__(v233, v244))
            {
              goto LABEL_324;
            }

            v325 = v233 + v244;
            v243 = v335;
            if (!v237)
            {
              goto LABEL_299;
            }
          }

          if (v243 >= (((-15 << ((4 * *(v237 + 18) + 8) & 0x3C)) - 1) & *(v237 + 18) | (*(v237 + 16) << ((4 * *(v237 + 18) + 8) & 0x3C))))
          {
            goto LABEL_299;
          }

          if (v240 && (v245 = (4 * *(v240 + 18) + 8) & 0x3C, v246 = ((v243 >> v245) & 0xF) + 1, v246 < *(v240 + 16)))
          {
            v247 = v243;
            swift_unknownObjectRelease();
            v248 = (v246 << v245) | ((-15 << v245) - 1) & v247;
          }

          else if (specialized Rope._Node.formSuccessor(of:)(&v370, v237))
          {
            swift_unknownObjectRelease();
            v248 = v371;
          }

          else
          {
            v249 = *(v237 + 18);
            v250 = *(v237 + 16);
            swift_unknownObjectRelease();
            v248 = ((-15 << ((4 * v249 + 8) & 0x3C)) - 1) & v249 | (v250 << ((4 * v249 + 8) & 0x3C));
            v370 = v340;
            v371 = v248;
            v372 = 0;
          }

          v38 = v351;
          v335 = v248;
          v340 = v370;
          v337 = v372;
          if (v400[0])
          {
            (*v307)();
            if (v326 == 2)
            {
              v251 = v317;
            }

            else
            {
              v251 = v332;
            }

            v252 = v346;
            RangeSet.ranges.getter();
            v253 = v353;
            v254 = RangeSet.Ranges.count.getter();
            v255 = *v345;
            result = (*v345)(v252, v253);
            if (v254 < 1)
            {
LABEL_289:
              __break(1u);
              goto LABEL_290;
            }

            v256 = 0;
            v257 = v251 >> 10;
            while (!__OFADD__(v256, v254))
            {
              v258 = (v256 + v254) / 2;
              v259 = v346;
              RangeSet.ranges.getter();
              v260 = v353;
              RangeSet.Ranges.subscript.getter();
              result = v255(v259, v260);
              if (v257 < v370 >> 10)
              {
                v254 = (v256 + v254) / 2;
                if (v256 >= v258)
                {
                  goto LABEL_289;
                }
              }

              else
              {
                v213 = (v256 + v254) / 2;
                v261 = *(&v373 + 1);
                if (v257 < *(&v373 + 1) >> 10)
                {
                  result = (*v306)(v338, v347);
                  v38 = v351;
                  v34 = v313;
                  v262 = v346;
                  goto LABEL_245;
                }

                v256 = v258 + 1;
                if (v258 + 1 >= v254)
                {
                  goto LABEL_289;
                }
              }
            }

            goto LABEL_291;
          }

          v262 = v346;
          RangeSet.ranges.getter();
          v263 = v353;
          RangeSet.Ranges.subscript.getter();
          v255 = *v345;
          result = (*v345)(v262, v263);
          v261 = *(&v373 + 1);
LABEL_245:
          if (v325 < (v261 >> 11))
          {
            if (v334 == 2)
            {
              v220 = *(v348 + 24);
              v221 = *(v348 + 56);
              v429 = *(v348 + 40);
              v430 = v221;
              v222 = *(v348 + 40);
              v425 = *(v348 + 24);
              v426 = v222;
              v427 = *(v348 + 56);
              v428 = v220;
              BigString.startIndex.getter();
              v467[0] = v428;
              v467[1] = v429;
              v468 = v430;
              outlined init with copy of Rope<BigString._Chunk>._Node?(v467, &v370);
              v216 = BigString.UTF8View.index(_:offsetBy:)();
              v320 = v224;
              v321 = v223;
              v212 = v225;
              outlined destroy of BigString(&v428);
            }

            else
            {
              v264 = *(v348 + 40);
              v422 = *(v348 + 24);
              v423 = v264;
              v424 = *(v348 + 56);
              if (__OFSUB__(v325, v315))
              {
                goto LABEL_329;
              }

              swift_unknownObjectRetain();
              v265 = BigString.UTF8View.index(_:offsetBy:)();
              v320 = v267;
              v321 = v266;
              v212 = v268;
              v216 = v265;
              swift_unknownObjectRelease();
            }

            v219 = v340;
            v218 = v336;
            v217 = v337;
            v211 = 0;
            v214 = v216;
            v334 = v212;
            v38 = v351;
            v24 = v344;
            v33 = v323;
            v35 = v324;
            v37 = v330;
            v25 = v331;
            v26 = v327;
            v28 = v328;
            v27 = v329;
            v226 = v322;
            result = v318;
            v21 = v319;
            goto LABEL_176;
          }

          v171 = __OFADD__(v213++, 1);
          if (v171)
          {
            goto LABEL_321;
          }

          v340 = *(v354 + 24);
          RangeSet.ranges.getter();
          v269 = v353;
          v270 = RangeSet.Ranges.count.getter();
          v255(v262, v269);
          if (v213 == v270)
          {
            v218 = *(v38 + 120);
            v219 = *(v38 + 128);
            v271 = *(v38 + 136);
            v217 = *(v38 + 144);
            v216 = *(v38 + 152);
            v272 = *(v38 + 160);
            v273 = *(v38 + 176);
            v320 = *(v38 + 168);
            v321 = v272;
            v334 = v273;
            v335 = v271;
            v214 = *(v38 + 184);
            v212 = *(v38 + 208);
            v213 = *(v38 + 216);
            v21 = v214;
            v316 = v212;
            result = v218;
            v211 = *(v38 + 224);
            v24 = v344;
            v33 = v323;
            v35 = v324;
            v37 = v330;
            v25 = v331;
            v26 = v327;
            v28 = v328;
            v27 = v329;
            v226 = v322;
LABEL_176:
            v22 = v311;
            goto LABEL_177;
          }

          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          v255(v262, v269);
          result = *(v348 + 72);
          v274 = *(v348 + 88);
          v275 = v370 >> 11;
          if (result)
          {
            v276 = *(v348 + 88);
          }

          else
          {
            v276 = 0;
          }

          if (v276 < v275)
          {
            goto LABEL_330;
          }

          v277 = *(v348 + 96);
          v340 = v277;
          v332 = v370;
          v333 = v372;
          v326 = v373;
          v334 = v371;
          if (result)
          {
            v278 = *(v348 + 80);
            v336 = v274;
            v337 = v278;
            v279 = (result + 16);
            v280 = *(result + 18);
            if (v275 < v274 && *(result + 16))
            {
              result = swift_unknownObjectRetain_n();
              v325 = result;
              if (v280)
              {
                v281 = v280;
                v282 = result;
                while (1)
                {
                  v283 = *v279;
                  if (*v279)
                  {
                    break;
                  }

                  v288 = v275;
LABEL_271:
                  if (v288)
                  {
                    goto LABEL_311;
                  }

                  v275 = 0;
LABEL_262:
                  v281 = (v283 << ((4 * v280 + 8) & 0x3C)) | ((-15 << ((4 * v280 + 8) & 0x3C)) - 1) & v281;
                  v284 = *(v282 + 24 + 24 * v283);
                  swift_unknownObjectRetain();
                  result = swift_unknownObjectRelease();
                  v279 = (v284 + 16);
                  LOBYTE(v280) = *(v284 + 18);
                  v282 = v284;
                  if (!v280)
                  {
                    v294 = v281 & 0xFFFFFFFFFFFFF0FFLL;
                    goto LABEL_277;
                  }
                }

                v285 = 0;
                v286 = (v282 + 40);
                while (1)
                {
                  v287 = *v286;
                  v286 += 3;
                  v288 = v275 - v287;
                  if (__OFSUB__(v275, v287))
                  {
                    goto LABEL_293;
                  }

                  if (__OFADD__(v288, 1))
                  {
                    goto LABEL_294;
                  }

                  if (v288 + 1 < 1)
                  {
                    v283 = v285;
                    goto LABEL_262;
                  }

                  ++v285;
                  v275 = v288;
                  if (v283 == v285)
                  {
                    goto LABEL_271;
                  }
                }
              }

              v294 = 0;
              v284 = result;
LABEL_277:
              result = specialized Rope._UnsafeHandle.findSlot<A>(at:in:preferEnd:)(v275, 0, v279, (v284 + 24));
              if (result < 0)
              {
                goto LABEL_335;
              }

              v296 = result;
              v289 = v295;
              swift_unknownObjectRelease();
              v292 = v294 | (v296 << 8);
              v277 = v340;
              v293 = v325;
            }

            else
            {
              v290 = ((-15 << ((4 * v280 + 8) & 0x3C)) - 1) & v280 | (*(result + 16) << ((4 * v280 + 8) & 0x3C));
              v291 = swift_unknownObjectRetain();
              v292 = v290;
              v289 = 0;
              v293 = v291;
              v284 = 0;
            }

            v297 = v337;
            v335 = v292;
            v337 = v284;
            v336 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v277, v292, v284, v293, v297);
            result = swift_unknownObjectRelease();
          }

          else
          {
            v289 = 0;
            v336 = 0;
            v337 = 0;
            v335 = 0;
          }

          v298 = *(v348 + 40);
          v431 = *(v348 + 24);
          v432 = v298;
          v433 = *(v348 + 56);
          if (__OFSUB__(0, v289))
          {
            goto LABEL_333;
          }

          swift_unknownObjectRetain();
          v299 = v332;
          v212 = v326;
          v300 = BigString.UTF8View.index(_:offsetBy:)();
          v320 = v302;
          v321 = v301;
          v334 = v303;
          v216 = v300;
          swift_unknownObjectRelease();
          v214 = v299;
          v211 = 0;
          v38 = v351;
          v24 = v344;
          v33 = v323;
          v35 = v324;
          v37 = v330;
          v25 = v331;
          v26 = v327;
          v28 = v328;
          v27 = v329;
          v226 = v322;
          result = v318;
          v21 = v319;
          v22 = v311;
          v219 = v340;
          v218 = v336;
          v217 = v337;
LABEL_177:
          v5 = v310;
          v171 = __OFADD__(v226, 1);
          v30 = v226 + 1;
          v23 = v339;
          if (v171)
          {
            goto LABEL_307;
          }
        }
      }
    }

    else if (v40 == 2 || (v37 ^ *(a1 + 152)) >= 0x400)
    {
      goto LABEL_11;
    }

    v41 = 0;
    goto LABEL_12;
  }

  v25 = 0;
  v108 = *(a1 + 112);
  v109 = a1;
  v110 = *(a1 + 104);
  v310 = (v37 >> 10);
  v314 = v34 >> 10;
  v23 = v26 + 8;
  v111 = *(v109 + 8);
  v318 = *(v109 + 7);
  v319 = *(v109 + 6);
  v312 = (v11 + 16);
  v311 = (v11 + 8);
  v113 = *(v109 + 4);
  v112 = *(v109 + 5);
  v324 = v35;
  v325 = v112;
  v114 = v33;
  v115 = v34;
  v116 = v35;
  v27 = v38;
  v28 = result;
  v24 = *(v109 + 2);
  v117 = *(v109 + 3);
  v118 = v109;
  v315 = result;
  v327 = v26;
  v338 = v13;
  v339 = v109;
  v344 = v19;
  v323 = v33;
  v313 = v34;
  v340 = v11;
  v337 = v26 + 8;
  while (1)
  {
    LOBYTE(v400[0]) = v108;
    if (v114 >= result && (result < v114 || v38 == 2 || v116 != 2 && v115 >> 10 >= v310))
    {
      v38 = v351;
      a1 = v118;
LABEL_14:
      v5 = *(v38 + 8);
      v22 = *(v38 + 120);
      v21 = *(v38 + 184);
      v30 = *(v38 + 208);
      if ((*(v38 + *(v354 + 28)) & 1) == 0)
      {
        v42 = v22 - v5;
        if (__OFSUB__(v22, v5))
        {
          __break(1u);
          goto LABEL_283;
        }

        v43 = *(v38 + 176);
        if (v30 == 2)
        {
          v44 = v353;
          if (v43 != 2)
          {
LABEL_22:
            v45 = 1;
LABEL_23:
            v30 = v42 + v45;
            if (!__OFADD__(v42, v45))
            {
              if (v25 != v30)
              {
                return 0;
              }

LABEL_25:
              if (v33 == v28)
              {
                if (v35 == 2)
                {
                  if (v27 == 2)
                  {
                    return 1;
                  }
                }

                else if (v27 != 2 && (v37 ^ v34) < 0x400)
                {
                  return 1;
                }
              }

              v46 = v26;
              if ((AttributedString.Runs._isPartial.getter() & 1) == 0 && (AttributedString.Runs._isPartial.getter() & 1) == 0)
              {
                v460[12] = *(v352 + 24);
                v460[13] = *(v352 + 40);
                v460[14] = *(v352 + 56);
                v47 = BigString.count.getter();
                v460[9] = *(v348 + 24);
                v460[10] = *(v348 + 40);
                v460[11] = *(v348 + 56);
                if (v47 != BigString.count.getter())
                {
                  return 0;
                }
              }

              v339 = a1;
              v48 = v19;
              RangeSet.ranges.getter();
              lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
              dispatch thunk of Collection.startIndex.getter();
              dispatch thunk of Collection.endIndex.getter();
              if (v400[0] == v370)
              {
                (*(v46 + 8))(v19, v44);
                return 0;
              }

              v49 = dispatch thunk of Collection.subscript.read();
              v51 = v50[1];
              v353 = *v50;
              v351 = v51;
              v52 = v50[3];
              v346 = v50[2];
              v338 = v52;
              v49(&v370, 0);
              v53 = *(v46 + 8);
              v53(v48, v44);
              v54 = v343;
              RangeSet.ranges.getter();
              dispatch thunk of Collection.startIndex.getter();
              dispatch thunk of Collection.endIndex.getter();
              if (v398 == v370)
              {
                v53(v54, v44);
                return 0;
              }

              v55 = dispatch thunk of Collection.subscript.read();
              v57 = v56[1];
              v340 = *v56;
              v347 = v57;
              v58 = v56[2];
              v344 = v56[3];
              v345 = v58;
              v55(&v370, 0);
              v53(v54, v44);
              v59 = v342;
              outlined init with copy of AttributedString.Runs(v339, v342);
              v60 = v349;
              outlined init with copy of AttributedString.Runs(v59, v349);
              v61 = v341;
              v62 = (v60 + *(v341 + 36));
              v63 = *(v59 + 56);
              v64 = *(v59 + 88);
              v390 = *(v59 + 72);
              v391[0] = v64;
              *(v391 + 10) = *(v59 + 98);
              v65 = *(v59 + 24);
              v386 = *(v59 + 8);
              v387 = v65;
              v388 = *(v59 + 40);
              v389 = v63;
              outlined destroy of AttributedString.Runs(v59);
              v66 = v391[0];
              v62[4] = v390;
              v62[5] = v66;
              *(v62 + 90) = *(v391 + 10);
              v67 = v387;
              *v62 = v386;
              v62[1] = v67;
              v68 = v389;
              v62[2] = v388;
              v62[3] = v68;
              outlined init with copy of AttributedString.Runs(v38, v59);
              v69 = v350;
              outlined init with copy of AttributedString.Runs(v59, v350);
              v70 = (v69 + *(v61 + 36));
              v71 = *(v59 + 56);
              v72 = *(v59 + 88);
              v396 = *(v59 + 72);
              v397[0] = v72;
              *(v397 + 10) = *(v59 + 98);
              v73 = *(v59 + 24);
              v392 = *(v59 + 8);
              v393 = v73;
              v394 = *(v59 + 40);
              v395 = v71;
              outlined destroy of AttributedString.Runs(v59);
              v74 = v397[0];
              v70[4] = v396;
              v70[5] = v74;
              *(v70 + 90) = *(v397 + 10);
              v75 = v393;
              *v70 = v392;
              v70[1] = v75;
              v76 = v395;
              v70[2] = v394;
              v70[3] = v76;
              for (i = v338; ; i = v98)
              {
                specialized IndexingIterator.next()(v364);
                v78 = v364[0];
                v79 = v364[1];
                v80 = v364[2];
                v81 = v367;
                specialized IndexingIterator.next()(&v356);
                v82 = v356;
                v83 = v357;
                v381 = v359;
                v382 = v360;
                v84 = v361;
                v384 = v362;
                v385 = v363;
                v370 = v78;
                v371 = v79;
                v373 = v365;
                v374 = v366;
                v354 = v80;
                v372 = v80;
                v375 = v81;
                v377 = v369;
                v376 = v368;
                v378 = v356;
                v379 = v357;
                v380 = v358;
                v383 = v361;
                if (!v78)
                {
                  break;
                }

                if (!v356)
                {
                  goto LABEL_51;
                }

                if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v78, v82) & 1) == 0)
                {

LABEL_51:
                  outlined destroy of TermOfAddress?(&v370, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
LABEL_52:
                  outlined destroy of TermOfAddress?(v350, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
                  outlined destroy of TermOfAddress?(v349, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
                  return 0;
                }

                v343 = v84;
                v85 = i;
                v86 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v79, v83);

                if ((v86 & 1) == 0)
                {
                  goto LABEL_51;
                }

                v87 = v352;
                v460[6] = *(v352 + 24);
                v460[7] = *(v352 + 40);
                v460[8] = *(v352 + 56);
                swift_unknownObjectRetain();
                v354 = BigString.UTF8View.index(_:offsetBy:)();
                v341 = v89;
                v342 = v88;
                v339 = v90;
                swift_unknownObjectRelease();
                v91 = v348;
                v460[3] = *(v348 + 24);
                v460[4] = *(v348 + 40);
                v460[5] = *(v348 + 56);
                swift_unknownObjectRetain();
                v34 = v340;
                v343 = BigString.UTF8View.index(_:offsetBy:)();
                v337 = v93;
                v338 = v92;
                v95 = v94;
                swift_unknownObjectRelease();
                v38 = v353;
                v460[0] = *(v87 + 24);
                v460[1] = *(v87 + 40);
                v460[2] = *(v87 + 56);
                if (v354 >> 10 < v353 >> 10)
                {
                  goto LABEL_284;
                }

                v336 = v95;
                v452 = v353;
                v453 = v351;
                v454 = v346;
                v455 = v85;
                v456 = v354;
                v97 = v341;
                v96 = v342;
                v457 = v342;
                v458 = v341;
                v98 = v339;
                v459 = v339;
                v99 = *(v87 + 24);
                v462 = *(v87 + 56);
                v461[1] = *(v87 + 40);
                v461[0] = v99;
                outlined init with copy of Rope<BigString._Chunk>._Node?(v461, v355);
                BigString.subscript.getter();
                outlined destroy of BigString(v460);
                v100 = *(v91 + 24);
                v451[1] = *(v91 + 40);
                v451[2] = *(v91 + 56);
                v451[0] = v100;
                v38 = v343;
                if (v343 >> 10 < v34 >> 10)
                {
                  goto LABEL_285;
                }

                v101 = v96;
                v102 = v97;
                v443 = v34;
                v444 = v347;
                v445 = v345;
                v446 = v344;
                v447 = v343;
                v103 = v337;
                v104 = v338;
                v448 = v338;
                v449 = v337;
                v105 = v336;
                v450 = v336;
                v106 = *(v91 + 24);
                v464 = *(v91 + 56);
                v463[1] = *(v91 + 40);
                v463[0] = v106;
                outlined init with copy of Rope<BigString._Chunk>._Node?(v463, v355);
                BigString.subscript.getter();
                outlined destroy of BigString(v451);
                v107 = MEMORY[0x1865CA260](v399, v400);
                outlined destroy of BigSubstring(v399);
                outlined destroy of TermOfAddress?(&v370, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
                outlined destroy of BigSubstring(v400);
                if ((v107 & 1) == 0)
                {
                  goto LABEL_52;
                }

                v340 = v38;
                v346 = v102;
                v347 = v104;
                v344 = v105;
                v345 = v103;
                v353 = v354;
                v351 = v101;
              }

              outlined destroy of TermOfAddress?(v350, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
              outlined destroy of TermOfAddress?(v349, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
              outlined destroy of TermOfAddress?(&v370, &_s10Foundation16AttributedStringV4RunsV3RunVSg_AHtMd);
              return !v82;
            }

LABEL_283:
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
LABEL_286:
            v44 = v353;
            a1 = v23;
            v19 = v24;
            if (v25 != v30)
            {
              return 0;
            }

            goto LABEL_25;
          }
        }

        else
        {
          v44 = v353;
          if (v43 == 2 || (v21 ^ *(v38 + 152)) >= 0x400)
          {
            goto LABEL_22;
          }
        }

        v45 = 0;
        goto LABEL_23;
      }

      goto LABEL_173;
    }

    if (v114 < v33)
    {
      goto LABEL_302;
    }

    v119 = v33 < v114 || v35 == 2;
    v120 = v119;
    if (!v119)
    {
      if (v116 == 2)
      {
        goto LABEL_344;
      }

      if (v314 > v115 >> 10)
      {
        goto LABEL_318;
      }
    }

    if (v114 >= v28)
    {
      if (v28 < v114)
      {
        goto LABEL_319;
      }

      if (v27 == 2)
      {
        goto LABEL_345;
      }

      if (v116 == 2)
      {
        if (!v120)
        {
          goto LABEL_340;
        }

        goto LABEL_80;
      }

      if (v115 >> 10 >= v37 >> 10)
      {
        goto LABEL_328;
      }
    }

    if ((v120 & 1) == 0)
    {
      if (v116 == 2)
      {
        goto LABEL_340;
      }

      if (v314 > v115 >> 10)
      {
        goto LABEL_325;
      }
    }

LABEL_80:
    if (v28 < v114)
    {
      goto LABEL_303;
    }

    if (v114 >= v28 && v116 != 2)
    {
      if (v27 == 2)
      {
        goto LABEL_346;
      }

      if (v37 >> 10 < v115 >> 10)
      {
        goto LABEL_320;
      }
    }

    if (v113 == 1 || v24 != *(v30 + 96))
    {
      goto LABEL_338;
    }

    v334 = v24;
    v335 = v117;
    v330 = v37;
    v331 = v25;
    v328 = v28;
    v329 = v27;
    v321 = v116;
    v322 = v115;
    v332 = v113;
    v333 = v114;
    v320 = v111;
    if (v111 == 2)
    {
      v121 = *(v30 + 72);
      if (v121)
      {
        v122 = *(v30 + 80);
        v123 = *(v30 + 88);
        v124 = v24;
        swift_unknownObjectRetain();
        v125 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v124, v117, v113, v121, v122, v123);
        swift_unknownObjectRelease();
        v30 = v352;
      }

      else
      {
        v125 = 0;
      }

      v316 = v325 >> 11;
      v131 = *(v30 + 24);
      v132 = *(v30 + 56);
      v420 = *(v30 + 40);
      v421 = v132;
      v133 = *(v30 + 40);
      v416 = *(v30 + 24);
      v417 = v133;
      v418 = *(v30 + 56);
      v419 = v131;
      v128 = v30;
      BigString.startIndex.getter();
      v336 = v134;
      v326 = v135;
      v469[0] = v419;
      v469[1] = v420;
      v470 = v421;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v469, &v370);
      v317 = BigString.UTF8View.index(_:offsetBy:)();
      result = outlined destroy of BigString(&v419);
      v129 = v334;
      v130 = v125;
    }

    else
    {
      v126 = v325;
      v127 = *(v30 + 40);
      v413 = *(v30 + 24);
      v414 = v127;
      v415 = *(v30 + 56);
      v128 = v30;
      swift_unknownObjectRetain();
      v317 = BigString.UTF8View.index(roundingDown:)();
      result = swift_unknownObjectRelease();
      v129 = v334;
      v316 = v126 >> 11;
      v130 = v126 >> 11;
    }

    v136 = v128[9];
    v137 = v128[12];
    v336 = v128[11];
    v370 = v129;
    v138 = v335;
    v371 = v335;
    v372 = v332;
    if (__OFADD__(v333, 1))
    {
      goto LABEL_305;
    }

    if (v129 != v137)
    {
      goto LABEL_306;
    }

    ++v333;
    if (v332)
    {
      v139 = *(v332 + 24 * ((v335 >> ((4 * *(v332 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v326 = v130 + v139;
      if (__OFADD__(v130, v139))
      {
        goto LABEL_314;
      }

      if (!v136)
      {
        goto LABEL_304;
      }

      result = swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v140 = specialized Rope._Node.subscript.getter(v138, v136);
      v326 = v141;

      v326 = v130 + v140;
      if (__OFADD__(v130, v140))
      {
        goto LABEL_326;
      }

      if (!v136)
      {
        goto LABEL_304;
      }
    }

    if (v138 >= (((-15 << ((4 * *(v136 + 18) + 8) & 0x3C)) - 1) & *(v136 + 18) | (*(v136 + 16) << ((4 * *(v136 + 18) + 8) & 0x3C))))
    {
      goto LABEL_304;
    }

    if (v332 && (v142 = (4 * *(v332 + 18) + 8) & 0x3C, v143 = ((v335 >> v142) & 0xF) + 1, v143 < *(v332 + 16)))
    {
      swift_unknownObjectRelease();
      v144 = (v143 << v142) | ((-15 << v142) - 1) & v335;
    }

    else if (specialized Rope._Node.formSuccessor(of:)(&v370, v136))
    {
      swift_unknownObjectRelease();
      v144 = v371;
    }

    else
    {
      v145 = *(v136 + 18);
      v146 = *(v136 + 16);
      swift_unknownObjectRelease();
      v144 = ((-15 << ((4 * v145 + 8) & 0x3C)) - 1) & v145 | (v146 << ((4 * v145 + 8) & 0x3C));
      v370 = v334;
      v371 = v144;
      v372 = 0;
    }

    v335 = v144;
    v332 = v372;
    v147 = *(v354 + 24);
    v334 = v370;
    if ((v400[0] & 1) == 0)
    {
      v158 = v346;
      RangeSet.ranges.getter();
      v159 = v353;
      RangeSet.Ranges.subscript.getter();
      v160 = *v337;
      result = (*v337)(v158, v159);
      v157 = *(&v373 + 1);
      v161 = v327;
      goto LABEL_122;
    }

    (*v312)(v345, &v339[v147], v347);
    v148 = v321 == 2 ? v317 : v322;
    v149 = v346;
    RangeSet.ranges.getter();
    v150 = v353;
    v151 = RangeSet.Ranges.count.getter();
    v336 = *v337;
    result = (v336)(v149, v150);
    if (v151 < 1)
    {
      break;
    }

    v152 = 0;
    v153 = v148 >> 10;
    while (1)
    {
      while (1)
      {
        if (__OFADD__(v152, v151))
        {
          goto LABEL_292;
        }

        v154 = (v152 + v151) / 2;
        v155 = v346;
        RangeSet.ranges.getter();
        v156 = v353;
        RangeSet.Ranges.subscript.getter();
        result = (v336)(v155, v156);
        if (v153 >= v370 >> 10)
        {
          break;
        }

        v151 = (v152 + v151) / 2;
        if (v152 >= v154)
        {
          goto LABEL_290;
        }
      }

      v110 = (v152 + v151) / 2;
      v157 = *(&v373 + 1);
      if (v153 < *(&v373 + 1) >> 10)
      {
        break;
      }

      v152 = v154 + 1;
      if (v154 + 1 >= v151)
      {
        goto LABEL_290;
      }
    }

    result = (*v311)(v345, v347);
    v159 = v353;
    v161 = v327;
    v34 = v313;
    v160 = v336;
LABEL_122:
    if (v326 < (v157 >> 11))
    {
      if (v320 == 2)
      {
        v162 = v161;
        v163 = *(v352 + 24);
        v164 = *(v352 + 56);
        v408 = *(v352 + 40);
        v409 = v164;
        v165 = *(v352 + 40);
        v404 = *(v352 + 24);
        v405 = v165;
        v406 = *(v352 + 56);
        v407 = v163;
        BigString.startIndex.getter();
        v471[0] = v407;
        v471[1] = v408;
        v472 = v409;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v471, &v370);
        v166 = BigString.UTF8View.index(_:offsetBy:)();
        v318 = v168;
        v319 = v167;
        v170 = v169;
        outlined destroy of BigString(&v407);
      }

      else
      {
        v177 = *(v352 + 40);
        v401 = *(v352 + 24);
        v402 = v177;
        v403 = *(v352 + 56);
        if (__OFSUB__(v326, v316))
        {
          goto LABEL_331;
        }

        v162 = v161;
        swift_unknownObjectRetain();
        v166 = BigString.UTF8View.index(_:offsetBy:)();
        v318 = v179;
        v319 = v178;
        v170 = v180;
        swift_unknownObjectRelease();
      }

      v108 = 0;
      v325 = v166;
      v115 = v166;
      v116 = v170;
      v13 = v338;
      v33 = v323;
      v35 = v324;
      v37 = v330;
      v176 = v331;
      v26 = v162;
      v28 = v328;
      v27 = v329;
      v11 = v340;
      result = v315;
      v113 = v332;
      v114 = v333;
      v24 = v334;
      v117 = v335;
      v111 = v170;
      v19 = v344;
      goto LABEL_169;
    }

    v171 = __OFADD__(v110++, 1);
    if (v171)
    {
      goto LABEL_322;
    }

    v172 = v339;
    v336 = *(v354 + 24);
    v173 = v346;
    RangeSet.ranges.getter();
    v174 = RangeSet.Ranges.count.getter();
    v160(v173, v159);
    if (v110 == v174)
    {
      v114 = *(v172 + 120);
      v24 = *(v172 + 128);
      v117 = *(v172 + 136);
      v113 = *(v172 + 144);
      v175 = *(v172 + 160);
      v325 = *(v172 + 152);
      v111 = *(v172 + 176);
      v318 = *(v172 + 168);
      v319 = v175;
      v115 = *(v172 + 184);
      v116 = *(v172 + 208);
      v110 = *(v172 + 216);
      v37 = v115;
      v27 = v116;
      v28 = v114;
      v108 = *(v172 + 224);
      v19 = v344;
      v13 = v338;
      v33 = v323;
      v35 = v324;
      v176 = v331;
      v26 = v327;
      v11 = v340;
      result = v315;
      goto LABEL_169;
    }

    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    result = v160(v173, v159);
    v181 = v352;
    v182 = *(v352 + 88);
    v183 = v370 >> 11;
    v335 = *(v352 + 72);
    if (v335)
    {
      v184 = v182;
    }

    else
    {
      v184 = 0;
    }

    if (v184 < v183)
    {
      goto LABEL_332;
    }

    v334 = *(v352 + 96);
    v321 = v373;
    v322 = v370;
    v326 = v372;
    if (v335)
    {
      v325 = v371;
      v185 = *(v352 + 80);
      v186 = (v335 + 16);
      v187 = *(v335 + 16);
      v188 = *(v335 + 18);
      v333 = v182;
      v320 = v185;
      if (v183 < v182 && v187)
      {
        result = swift_unknownObjectRetain_n();
        if (v188)
        {
          v336 = v188;
          v189 = v335;
          do
          {
            v190 = *v186;
            if (*v186)
            {
              v192 = 0;
              v193 = (v189 + 40);
              while (1)
              {
                v194 = *v193;
                v193 += 3;
                v195 = v183 - v194;
                if (__OFSUB__(v183, v194))
                {
                  goto LABEL_295;
                }

                if (__OFADD__(v195, 1))
                {
                  goto LABEL_296;
                }

                if (v195 + 1 < 1)
                {
                  break;
                }

                ++v192;
                v183 = v195;
                if (v190 == v192)
                {
                  goto LABEL_150;
                }
              }

              v190 = v192;
            }

            else
            {
              v195 = v183;
LABEL_150:
              if (v195)
              {
                goto LABEL_312;
              }

              v183 = 0;
            }

            v336 = (v190 << ((4 * v188 + 8) & 0x3C)) | ((-15 << ((4 * v188 + 8) & 0x3C)) - 1) & v336;
            v191 = *(v189 + 24 + 24 * v190);
            swift_unknownObjectRetain();
            result = swift_unknownObjectRelease();
            v186 = (v191 + 16);
            LOBYTE(v188) = *(v191 + 18);
            v189 = v191;
          }

          while (v188);
          v199 = v191;
          LODWORD(v187) = *v186;
          if (!*v186)
          {
            v200 = 0;
            goto LABEL_163;
          }
        }

        else
        {
          v336 = 0;
          v199 = v335;
        }

        v200 = 0;
        v201 = 24;
        v196 = v183;
        do
        {
          v202 = *(v199 + v201);
          v183 = v196 - v202;
          if (__OFSUB__(v196, v202))
          {
            goto LABEL_309;
          }

          if (__OFADD__(v183, 1))
          {
            goto LABEL_310;
          }

          if (v183 + 1 < 1)
          {
            goto LABEL_165;
          }

          ++v200;
          v201 += 24;
          v196 -= v202;
        }

        while (v187 != v200);
        v200 = v187;
LABEL_163:
        if (v183)
        {
          goto LABEL_336;
        }

        v196 = 0;
LABEL_165:
        v203 = v199;
        swift_unknownObjectRelease();
        v198 = v203;
        v197 = v336 & 0xFFFFFFFFFFFFF0FFLL | (v200 << 8);
      }

      else
      {
        v197 = ((-15 << ((4 * v188 + 8) & 0x3C)) - 1) & v188 | (v187 << ((4 * v188 + 8) & 0x3C));
        swift_unknownObjectRetain();
        v196 = 0;
        v198 = 0;
      }

      v332 = v198;
      v333 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v334, v197, v198, v335, v320);
      result = swift_unknownObjectRelease();
      v181 = v352;
      goto LABEL_167;
    }

    v196 = 0;
    v332 = 0;
    v333 = 0;
    v197 = 0;
LABEL_167:
    v335 = v197;
    v204 = *(v181 + 40);
    v410 = *(v181 + 24);
    v411 = v204;
    v412 = *(v181 + 56);
    if (__OFSUB__(0, v196))
    {
      goto LABEL_334;
    }

    swift_unknownObjectRetain();
    v206 = v321;
    v205 = v322;
    v325 = BigString.UTF8View.index(_:offsetBy:)();
    v318 = v208;
    v319 = v207;
    v111 = v209;
    swift_unknownObjectRelease();
    v116 = v206;
    v115 = v205;
    v108 = 0;
    v19 = v344;
    v13 = v338;
    v33 = v323;
    v35 = v324;
    v37 = v330;
    v176 = v331;
    v26 = v327;
    v28 = v328;
    v27 = v329;
    v11 = v340;
    result = v315;
    v114 = v333;
    v24 = v334;
    v117 = v335;
    v113 = v332;
LABEL_169:
    v171 = __OFADD__(v176, 1);
    v25 = v176 + 1;
    if (v171)
    {
      goto LABEL_308;
    }

    v30 = v352;
    v118 = v339;
  }

LABEL_290:
  __break(1u);
LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:
  __break(1u);
LABEL_328:
  __break(1u);
LABEL_329:
  __break(1u);
LABEL_330:
  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  __break(1u);
LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:
  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  __break(1u);
LABEL_339:
  __break(1u);
LABEL_340:
  __break(1u);
LABEL_341:
  __break(1u);
LABEL_342:
  __break(1u);
LABEL_343:
  __break(1u);
LABEL_344:
  __break(1u);
LABEL_345:
  __break(1u);
LABEL_346:
  __break(1u);
  return result;
}

uint64_t sub_180899970(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = *(a4 + 16);
    if (v7 == 1)
    {
      TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
    }

    else
    {
      MEMORY[0x1EEE9AC00](result);
      if (v7)
      {
        v10 = *(a4 + 24) & 0xFFFFFFFFFFFFFFFELL;
        v11 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
        v12 = v7;
        do
        {
          v10 += 8;
          *v11++ = type metadata accessor for PredicateExpressions.Variable();
          --v12;
        }

        while (v12);
      }

      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    return (*(*(TupleTypeMetadata - 8) + 56))(v5 + *(a4 + 36), a2, a2);
  }

  return result;
}

uint64_t sub_180899AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v7 = *(a3 + 16);
    if (v7 == 1)
    {
      TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      if (v7)
      {
        v11 = *(a3 + 24) & 0xFFFFFFFFFFFFFFFELL;
        v12 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
        v13 = v7;
        do
        {
          v11 += 8;
          *v12++ = type metadata accessor for PredicateExpressions.Variable();
          --v13;
        }

        while (v13);
      }

      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    return (*(*(TupleTypeMetadata - 8) + 48))(a1 + *(a3 + 36), a2);
  }
}

double AttributedString.init()@<D0>(uint64_t *a1@<X8>)
{
  BigString.init()();
  v7 = 0;
  MEMORY[0x1865D26B0](&v7, 8);
  v2 = v7;
  type metadata accessor for AttributedString.Guts();
  v3 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_5:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v5 = v9;
  *(v3 + 24) = v8;
  *(v3 + 16) = add_explicit;
  *(v3 + 40) = v5;
  result = *&v10;
  *(v3 + 56) = v10;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = v2;
  *(v3 + 104) = MEMORY[0x1E69E7CC0];
  *a1 = v3;
  return result;
}

uint64_t AttributedString.init(_:attributes:)@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  BigString.init(_:)();
  result = AttributedString.init(_:attributes:)(v7, v3, v4, &v6);
  *a2 = v6;
  return result;
}

uint64_t Locale.Language.maximalIdentifier.getter()
{
  v0 = MEMORY[0x1E69E5730];

  return Locale.Language.minimalIdentifier.getter(v0);
}

uint64_t Locale.Language.minimalIdentifier.getter(uint64_t (*a1)(uint64_t, _BYTE *, uint64_t, _OWORD *))
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  v19[2] = v1[2];
  v19[3] = v3;
  v4 = v1[5];
  v19[4] = v1[4];
  v19[5] = v4;
  v5 = v1[1];
  v19[0] = *v1;
  v19[1] = v5;
  result = Locale.Language.Components.identifier.getter();
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    LODWORD(v19[0]) = 0;
    v9 = result;
    v10 = String.utf8CString.getter();
    v11 = a1(v10 + 32, v18, 257, v19);

    if (SLODWORD(v19[0]) <= 0 && v11 > 0 && (v18[v11] = 0, MEMORY[0x1865CAEB0](v18), v12) && (LODWORD(v19[0]) = 0, String.utf8CString.getter(), , v13 = uloc_toLanguageTag(), , SLODWORD(v19[0]) <= 0) && v13 > 0 && (v17[v13] = 0, v14 = MEMORY[0x1865CAEB0](v17), v15))
    {
      v16 = v14;

      return v16;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

uint64_t Locale.Language.init(identifier:)@<X0>(uint64_t *a1@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  memset(v29, 0, 96);
  outlined destroy of Locale.Language.Components(v29);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  if (Language <= 0)
  {
    v3 = 0;
    v5 = 0;
  }

  else
  {
    v28[Language] = 0;
    v3 = MEMORY[0x1865CAEB0](v28);
    v5 = v4;
  }

  String.utf8CString.getter();
  Script = uloc_getScript();

  v7 = 0;
  v8 = 0;
  if (Script > 0)
  {
    v27[Script] = 0;
    v7 = MEMORY[0x1865CAEB0](v27);
    v8 = v9;
  }

  String.utf8CString.getter();

  Country = uloc_getCountry();

  v11 = 0;
  v12 = 0;
  if (Country > 0)
  {
    v26[Country] = 0;
    v11 = MEMORY[0x1865CAEB0](v26);
    v12 = v13;
  }

  if (v5)
  {
    v14 = String.lowercased()();
    object = v14._object;
    countAndFlagsBits = v14._countAndFlagsBits;
    v25 = v3;
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_13:
    v7 = 0;
    v16 = 0;
    v17 = 0;
    v18 = v5;
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    v11 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_15;
  }

  object = 0;
  countAndFlagsBits = 0;
  v25 = 0;
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_10:

  String.init<A>(_:)();
  v15 = String._capitalized()();
  v16 = v15._countAndFlagsBits;
  v17 = v15._object;

  v18 = v5;
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_11:
  v19 = String.uppercased()();
  v20 = v19._countAndFlagsBits;
  v21 = v19._object;
LABEL_15:
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  result = outlined consume of Locale.LanguageCode?(0, 0);
  *a1 = v25;
  a1[1] = v18;
  a1[2] = countAndFlagsBits;
  a1[3] = object;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v16;
  a1[7] = v17;
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = v20;
  a1[11] = v21;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

void type metadata completion function for AttributedString.Runs()
{
  type metadata accessor for AttributedString.Guts();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Range<AttributedString.Runs.Index>(319, &lazy cache variable for type metadata for Range<AttributedString.Runs.Index>, lazy protocol witness table accessor for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, &type metadata for AttributedString.Runs.Index, MEMORY[0x1E69E66A8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Range<AttributedString.Runs.Index>(319, &lazy cache variable for type metadata for RangeSet<BigString.Index>, lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index, MEMORY[0x1E6995690], MEMORY[0x1E69E7BE0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Range<AttributedString.Runs.Index>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index()
{
  result = lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index;
  if (!lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index;
  if (!lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AttributedString.Runs and conformance AttributedString.Runs(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttributedString.Runs();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView()
{
  result = lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView;
  if (!lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView;
  if (!lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView;
  if (!lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView;
  if (!lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index()
{
  result = lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index;
  if (!lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index;
  if (!lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index);
  }

  return result;
}

unint64_t AttributedString.runs.getter@<X0>(void *a1@<X8>)
{
  v150 = a1;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v149 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v143 = &v128 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v145 = &v128 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v128 - v6;
  *(&v158 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](*(&v158 + 1));
  v9 = &v128 - v8;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v148 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v11 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v128 - v13;
  v15 = *v1;
  v16 = *(*v1 + 40);
  v175 = *(*v1 + 24);
  v176 = v16;
  v177 = *(v15 + 56);
  v17 = BigString.startIndex.getter();
  v19 = v18;
  *&v158 = v20;
  v22 = v21;
  result = BigString.endIndex.getter();
  if (result >> 10 >= v17 >> 10)
  {
    *&v160 = v17;
    *(&v160 + 1) = v19;
    *&v161 = v158;
    *(&v161 + 1) = v22;
    *&v162 = result;
    *(&v162 + 1) = v24;
    v163 = v25;
    v164 = v26;
    lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

    RangeSet.init(_:)();
    v156 = v15;
    *v150 = v15;
    v151 = v11;
    RangeSet.init()();
    v144 = v14;
    RangeSet.ranges.getter();
    v27 = v149;
    v28 = v159;
    (*(v149 + 16))(v9, v7, v159);
    v29 = *(*(&v158 + 1) + 36);
    v30 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
    dispatch thunk of Collection.startIndex.getter();
    v146 = *(v27 + 8);
    v147 = v7;
    v149 = v27 + 8;
    v146(v7, v28);
    v31 = v9;
    dispatch thunk of Collection.endIndex.getter();
    v32 = v28;
    if (*&v9[v29] != v160)
    {
      v154 = v9;
      v155 = v30;
      v153 = v29;
      do
      {
        v42 = dispatch thunk of Collection.subscript.read();
        v44 = v43[5];
        v45 = v43[7];
        *&v158 = v43[6];
        *(&v158 + 1) = v44;
        v157 = v45;
        v42(&v160, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v46 = v156;
        v47 = *(v156 + 40);
        v172 = *(v156 + 24);
        v173 = v47;
        v174 = *(v156 + 56);
        swift_unknownObjectRetain();
        v48 = BigString.UnicodeScalarView.index(roundingDown:)();
        v50 = v49;
        v52 = v51;
        v54 = v53;
        swift_unknownObjectRelease();
        v55 = *(v46 + 40);
        v169 = *(v46 + 24);
        v170 = v55;
        v171 = *(v46 + 56);
        swift_unknownObjectRetain();
        v56 = BigString.UnicodeScalarView.index(roundingDown:)();
        v58 = v57;
        v60 = v59;
        v62 = v61;
        swift_unknownObjectRelease();
        *&v160 = v48;
        *(&v160 + 1) = v50;
        *&v161 = v52;
        *(&v161 + 1) = v54;
        v32 = v159;
        *&v162 = v56;
        *(&v162 + 1) = v58;
        v163 = v60;
        v164 = v62;
        if ((v56 ^ v48) >= 0x400)
        {
          v63 = RangeSet._ranges.modify();
          RangeSet.Ranges._insert(contentsOf:)();
          v63(&v166, 0);
        }

        v31 = v154;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*(v31 + v153) != v160);
    }

    outlined destroy of TermOfAddress?(v31, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    v33 = type metadata accessor for AttributedString.Runs();
    v34 = *(v33 + 24);
    v35 = v150;
    (*(v148 + 16))(v150 + v34, v151, v152);
    v36 = v147;
    RangeSet.ranges.getter();
    v37 = RangeSet.Ranges.count.getter();
    v38 = v146;
    v146(v36, v32);
    v39 = *(v33 + 28);
    LODWORD(v154) = v37 > 1;
    *(v35 + v39) = v154;
    v40 = v145;
    RangeSet.ranges.getter();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v166 == v160)
    {
      v41 = v40;
    }

    else
    {
      v64 = dispatch thunk of Collection.subscript.read();
      v66 = v65[1];
      v153 = *v65;
      v67 = v65[3];
      v141 = v65[2];
      v142 = v66;
      v140 = v67;
      v64(&v160, 0);
      v38(v40, v32);
      v68 = v143;
      RangeSet.ranges.getter();
      if ((dispatch thunk of Collection.isEmpty.getter() & 1) == 0)
      {
        v133 = v34;
        dispatch thunk of Collection.endIndex.getter();
        lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
        dispatch thunk of BidirectionalCollection.index(before:)();
        v110 = dispatch thunk of Collection.subscript.read();
        v101 = v111[4];
        v112 = v111[5];
        v114 = v111[6];
        v113 = v111[7];
        v110(&v160, 0);
        v38(v68, v32);
        v115 = v156;
        AttributedString.Guts.findRun(at:)(v153, v140, &v160);
        v158 = v160;
        v134 = *(&v161 + 1);
        v135 = v161;
        v145 = *(&v162 + 1);
        v143 = v164;
        v138 = v163;
        v139 = v165;
        v166 = *(v115 + 24);
        v116 = *(v115 + 56);
        v167 = *(v115 + 40);
        v168 = v116;
        v117 = BigString.endIndex.getter();
        v136 = v113;
        v137 = v114;
        if ((v117 ^ v101) > 0x3FF)
        {
          AttributedString.Guts.findRun(at:)(v101, v113, &v160);
          v155 = *(&v160 + 1);
          v157 = v160;
          v94 = v161;
          v131 = *(&v162 + 1);
          v132 = *(&v161 + 1);
          v129 = v164;
          v130 = v163;
          v128 = v165;
          v125 = v147;
          v126 = v152;
          RangeSet.ranges.getter();
          v105 = RangeSet.Ranges.count.getter();
          v156 = v112;
          v127 = *(v148 + 8);
          v127(v144, v126);
          v38(v125, v32);
          v127(v151, v126);
          result = v131;
          v93 = v132;
          v103 = v137;
          v75 = v138;
          v102 = v156;
          v89 = v128;
          v88 = v129;
          v87 = v130;
          v95 = 0;
          v92 = v154;
          v106 = *(&v158 + 1);
          v107 = v158;
          v97 = v153;
          v99 = v141;
          v98 = v142;
          v79 = v139;
          v100 = v140;
          v96 = v145;
          v77 = v143;
          v91 = v135;
          v104 = v136;
          v90 = v134;
        }

        else
        {
          v118 = *(v115 + 72);
          if (v118)
          {
            v119 = *(v115 + 80);
          }

          else
          {
            v119 = 0;
          }

          v132 = v119;
          v120 = *(v115 + 96);
          v121 = swift_unknownObjectRetain();
          v157 = v120;
          v155 = specialized Rope._endPath.getter(v121);
          v122 = v147;
          if (v118)
          {
            swift_unknownObjectRelease();
          }

          v123 = v152;
          RangeSet.ranges.getter();
          v105 = RangeSet.Ranges.count.getter();
          v124 = *(v148 + 8);
          v124(v144, v123);
          v146(v122, v32);
          v124(v151, v123);
          v95 = 0;
          v94 = 0;
          result = v101;
          v102 = v112;
          v87 = v112;
          v104 = v136;
          v103 = v137;
          v88 = v137;
          v89 = v136;
          v92 = v154;
          v106 = *(&v158 + 1);
          v107 = v158;
          v97 = v153;
          v99 = v141;
          v98 = v142;
          v79 = v139;
          v100 = v140;
          v96 = v145;
          v75 = v138;
          v77 = v143;
          v90 = v134;
          v91 = v135;
          v93 = v132;
        }

        goto LABEL_18;
      }

      v41 = v68;
    }

    v38(v41, v32);
    v69 = v156;
    v70 = *(v156 + 72);
    v71 = v144;
    if (v70)
    {
      *(&v158 + 1) = *(v70 + 18);
    }

    else
    {
      *(&v158 + 1) = 0;
    }

    *&v158 = *(v156 + 96);
    v72 = *(v156 + 40);
    v160 = *(v156 + 24);
    v161 = v72;
    v162 = *(v156 + 56);
    v73 = BigString.startIndex.getter();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = *(v69 + 72);
    v157 = *(v69 + 96);
    if (v80)
    {
      v155 = *(v80 + 18);
      v81 = *(v148 + 8);
      swift_unknownObjectRetain();
      v82 = v71;
      v83 = v152;
      v81(v82, v152);
      v81(v151, v83);
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = *(v148 + 8);
      v85 = v152;
      v84(v71, v152);
      v84(v151, v85);
      v155 = 0;
    }

    v166 = *(v69 + 24);
    v86 = *(v69 + 56);
    v167 = *(v69 + 40);
    v168 = v86;
    result = BigString.startIndex.getter();
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v95 = -1;
    v96 = v73;
    v97 = v73;
    v98 = v75;
    v99 = v77;
    v100 = v79;
    v101 = result;
    v102 = v87;
    v103 = v88;
    v104 = v89;
    v105 = -1;
    v106 = *(&v158 + 1);
    v107 = v158;
LABEL_18:
    v108 = v150;
    v150[1] = v90;
    v108[2] = v107;
    v108[3] = v106;
    v108[4] = v91;
    v108[5] = v96;
    v108[6] = v75;
    v108[7] = v77;
    v108[8] = v79;
    v108[9] = v97;
    v108[10] = v98;
    v108[11] = v99;
    v108[12] = v100;
    v108[13] = v95;
    *(v108 + 112) = 0;
    *(v108 + 113) = v92;
    v109 = v157;
    v108[15] = v93;
    v108[16] = v109;
    v108[17] = v155;
    v108[18] = v94;
    v108[19] = result;
    v108[20] = v87;
    v108[21] = v88;
    v108[22] = v89;
    v108[23] = v101;
    v108[24] = v102;
    v108[25] = v103;
    v108[26] = v104;
    v108[27] = v105;
    *(v108 + 224) = 0;
    *(v108 + 225) = v92;
    return result;
  }

  __break(1u);
  return result;
}

__n128 protocol witness for Collection.startIndex.getter in conformance AttributedString.Runs@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 56);
  v3 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v3;
  *(a1 + 90) = *(v1 + 98);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = result;
  return result;
}

__n128 protocol witness for Collection.endIndex.getter in conformance AttributedString.Runs@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 168);
  v3 = *(v1 + 200);
  *(a1 + 64) = *(v1 + 184);
  *(a1 + 80) = v3;
  *(a1 + 90) = *(v1 + 210);
  v4 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 152);
  *(a1 + 48) = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AttributedString.Runs.Index(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[11];
  v3 = a1[11];
  v4 = v3 == 2;
  if (v2 != 2)
  {
    v4 = 0;
  }

  if (v3 == 2 || v2 == 2)
  {
    return v4;
  }

  else
  {
    return (a2[8] ^ a1[8]) < 0x400uLL;
  }
}

uint64_t _NSAttributedStringFromMarkdownWithCreator(void *a1, uint64_t a2, uint64_t a3, NSAttributedStringMarkdownParsingOptions *a4, uint64_t a5, NSError **a6)
{
  v138 = *MEMORY[0x1E69E9840];
  if (_NSAttributedStringFromMarkdownWithCreator_onceToken != -1)
  {
    dispatch_once(&_NSAttributedStringFromMarkdownWithCreator_onceToken, &__block_literal_global_56);
  }

  [(NSAttributedStringMarkdownParsingOptions *)a4 interpretedSyntax];
  cmark_parser_new_delayInitStub(v10);
  if (cmark_find_syntax_extension_delayInitStub(v11))
  {
    cmark_parser_attach_syntax_extension_delayInitStub(v12);
  }

  if (cmark_find_syntax_extension_delayInitStub(v12))
  {
    cmark_parser_attach_syntax_extension_delayInitStub(v13);
  }

  if (cmark_find_syntax_extension_delayInitStub(v13))
  {
    cmark_parser_attach_syntax_extension_delayInitStub(v14);
  }

  if (cmark_find_syntax_extension_delayInitStub(v14))
  {
    cmark_parser_attach_syntax_extension_delayInitStub(v15);
  }

  cmark_parser_feed_delayInitStub(v15);
  if (!cmark_parser_finish_delayInitStub(v16))
  {
    v21 = 0;
    if (a6)
    {
      *a6 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:259 userInfo:0];
    }

    return v21;
  }

  v125 = a5;
  cmark_iter_new_delayInitStub(v17);
  if (!a4)
  {
    a4 = objc_alloc_init(NSAttributedStringMarkdownParsingOptions);
  }

  v130 = [MEMORY[0x1E695DF70] arrayWithObject:MEMORY[0x1E695E0F8]];
  memset(v136, 0, 32);
  v136[2] = vdupq_n_s64(1uLL);
  v137[2] = xmmword_18142EA88;
  v137[3] = unk_18142EA98;
  v137[4] = xmmword_18142EAA8;
  v137[0] = xmmword_18142EA68;
  v137[1] = *dbl_18142EA78;
  delayInitStub = cmark_iter_next_delayInitStub(dbl_18142EA78[0]);
  if (delayInitStub == 1)
  {
LABEL_15:
    if (objc_opt_respondsToSelector())
    {
      [a1 finalizeWithLanguageIdentifier:{-[NSAttributedStringMarkdownParsingOptions languageCode](a4, "languageCode")}];
    }

    v21 = 1;
    goto LABEL_18;
  }

  v24 = delayInitStub;
  v132 = 0;
  v133 = 0;
  v126 = 0;
  v127 = a1;
  v123 = 0;
  v124 = 0;
  v25 = &off_1EEF573C8;
  v129 = 1;
  v128 = a3;
  while (1)
  {
    v26 = v25;
    node_delayInitStub = cmark_iter_get_node_delayInitStub(v19);
    type_delayInitStub = cmark_node_get_type_delayInitStub(v28);
    if ((type_delayInitStub - 32775) <= 1)
    {
      if ([(NSAttributedStringMarkdownParsingOptions *)a4 interpretedSyntax])
      {
        goto LABEL_24;
      }

      v25 = v26;
      if (v24 == 3)
      {
        goto LABEL_190;
      }

      if (v24 == 2)
      {
        v35 = v129 + 1;
        v36 = [NSPresentationIntent paragraphIntentWithIdentity:"paragraphIntentWithIdentity:nestedInsideIntent:" nestedInsideIntent:?];
        goto LABEL_38;
      }

      goto LABEL_191;
    }

    v30 = type_delayInitStub;
    if (type_delayInitStub <= 49152)
    {
      if (type_delayInitStub <= 32772)
      {
        switch(type_delayInitStub)
        {
          case 32770:
            if (v24 != 3)
            {
              v25 = v26;
              if (v24 != 2)
              {
                goto LABEL_191;
              }

              v35 = v129 + 1;
              v36 = [NSPresentationIntent blockQuoteIntentWithIdentity:"blockQuoteIntentWithIdentity:nestedInsideIntent:" nestedInsideIntent:?];
              goto LABEL_38;
            }

            goto LABEL_181;
          case 32771:
            if (v24 != 3)
            {
              if (v24 == 2)
              {
                list_type_delayInitStub = cmark_node_get_list_type_delayInitStub(Helper_x8__CMARK_NODE_STRIKETHROUGH);
                v50 = list_type_delayInitStub;
                if (list_type_delayInitStub == 2)
                {
                  list_delim_delayInitStub = cmark_node_get_list_delim_delayInitStub(v49);
                  if (list_delim_delayInitStub == 2)
                  {
                    v52 = a1;
                    v53 = 0;
                    v54 = @"");
                  }

                  else
                  {
                    if (list_delim_delayInitStub == 1)
                    {
                      v52 = a1;
                      v53 = 0;
                      v54 = @".";
                      goto LABEL_195;
                    }

LABEL_140:
                    v52 = a1;
                    v54 = 0;
                    v53 = 1;
                  }
                }

                else
                {
                  if (list_type_delayInitStub != 1)
                  {
                    goto LABEL_140;
                  }

                  list_marker_delayInitStub = cmark_node_get_list_marker_delayInitStub(v49);
                  switch(list_marker_delayInitStub)
                  {
                    case 3:
                      v52 = a1;
                      v53 = 0;
                      v54 = @"*";
                      break;
                    case 2:
                      v52 = a1;
                      v53 = 0;
                      v54 = @"+";
                      break;
                    case 1:
                      v52 = a1;
                      v53 = 0;
                      v54 = @"-";
                      break;
                    default:
                      goto LABEL_140;
                  }
                }

LABEL_195:
                v115 = [objc_msgSend(v130 "lastObject")];
                v116 = v115;
                if ((v53 & 1) == 0)
                {
                  [v115 setObject:v54 forKeyedSubscript:@"NSListItemDelimiter"];
                }

                [v130 addObject:v116];

                v117 = v126;
                if (v126 > 8)
                {
                  a1 = v52;
                }

                else
                {
                  v117 = v126 + 1;
                  a1 = v52;
                  if (v50 == 2)
                  {
                    ++v126;
                    *(v137 + v117) = cmark_node_get_list_start_delayInitStub(Helper_x8__CMARK_NODE_STRIKETHROUGH);
                    v25 = v26;
                    goto LABEL_205;
                  }

                  *(v137 + v117) = 1;
                }

                v25 = v26;
                v126 = v117;
                if (v50 != 2)
                {
                  if (v50 != 1)
                  {
                    goto LABEL_40;
                  }

                  v35 = v129 + 1;
                  v36 = [NSPresentationIntent unorderedListIntentWithIdentity:"unorderedListIntentWithIdentity:nestedInsideIntent:" nestedInsideIntent:?];
LABEL_38:
                  v133 = v36;
                  goto LABEL_39;
                }

LABEL_205:
                v35 = v129 + 1;
                v36 = [NSPresentationIntent orderedListIntentWithIdentity:"orderedListIntentWithIdentity:nestedInsideIntent:" nestedInsideIntent:?];
                goto LABEL_38;
              }

LABEL_24:
              v25 = v26;
              goto LABEL_191;
            }

            v78 = v126 - 1;
            if (!v126)
            {
              v78 = 0;
            }

            v126 = v78;
            v133 = [(NSPresentationIntent *)v133 parentIntent];
LABEL_121:
            v79 = v130;
LABEL_185:
            [v79 removeLastObject];
            goto LABEL_24;
          case 32772:
            if (v24 != 3)
            {
              v25 = v26;
              if (v24 != 2)
              {
                goto LABEL_191;
              }

              v35 = v129 + 1;
              v36 = [NSPresentationIntent listItemIntentWithIdentity:"listItemIntentWithIdentity:ordinal:nestedInsideIntent:" ordinal:? nestedInsideIntent:?];
              goto LABEL_38;
            }

            v133 = [(NSPresentationIntent *)v133 parentIntent];
            ++*(v137 + v126);
            goto LABEL_24;
        }
      }

      else if (type_delayInitStub > 32776)
      {
        if (type_delayInitStub == 32777)
        {
          if (cmark_node_get_heading_level_delayInitStub(Helper_x8__CMARK_NODE_STRIKETHROUGH) - 1 > 5)
          {
            goto LABEL_24;
          }

          v25 = v26;
          if (v24 == 3)
          {
            goto LABEL_190;
          }

          if (v24 == 2)
          {
            v35 = v129 + 1;
            v36 = [NSPresentationIntent headerIntentWithIdentity:"headerIntentWithIdentity:level:nestedInsideIntent:" level:? nestedInsideIntent:?];
            goto LABEL_38;
          }

          goto LABEL_191;
        }

        if (type_delayInitStub == 32778)
        {
          v39 = [NSPresentationIntent thematicBreakIntentWithIdentity:"thematicBreakIntentWithIdentity:nestedInsideIntent:" nestedInsideIntent:?];
          [a1 appendString:@"⸻" with:{attributesForIntents(v132, v39, objc_msgSend(v130, "lastObject"))}];
          v133 = [(NSPresentationIntent *)v39 parentIntent];
          ++v129;
          goto LABEL_53;
        }
      }

      else
      {
        if (type_delayInitStub == 32773)
        {
          fence_info_delayInitStub = cmark_node_get_fence_info_delayInitStub(Helper_x8__CMARK_NODE_STRIKETHROUGH);
          v44 = fence_info_delayInitStub;
          if (fence_info_delayInitStub)
          {
            v45 = v129;
            v46 = v130;
            v47 = a6;
            if (LOBYTE(fence_info_delayInitStub->super.isa))
            {
              v44 = [[NSString alloc] initWithUTF8String:fence_info_delayInitStub];
            }

            else
            {
              v44 = 0;
            }
          }

          else
          {
            v45 = v129;
            v46 = v130;
            v47 = a6;
          }

          v85 = [NSPresentationIntent codeBlockIntentWithIdentity:v45 languageHint:v44 nestedInsideIntent:v133];

          v86 = [v46 lastObject];
          a3 = v128;
          if (!appendNodeText(v127, a4, v87, node_delayInitStub, v132, v85, v86, a2, v128, v136, v47))
          {
            goto LABEL_215;
          }

          v129 = v45 + 1;
          v133 = [(NSPresentationIntent *)v85 parentIntent];
          v25 = v26;
          a1 = v127;
          goto LABEL_191;
        }

        if (type_delayInitStub == 32774)
        {
          v32 = [v130 lastObject];
          appended = appendNodeText(a1, a4, v33, node_delayInitStub, v132 | 0x200, v133, v32, a2, a3, v136, a6);
          goto LABEL_75;
        }
      }
    }

    else
    {
      if (type_delayInitStub <= 49156)
      {
        if (type_delayInitStub <= 49154)
        {
          if (type_delayInitStub != 49153)
          {
            [a1 appendString:@" " with:{attributesForIntents(v132 | 0x40, v133, objc_msgSend(v130, "lastObject"))}];
            v31 = v132 & 0xFFFFFFFFFFFFFFBFLL;
LABEL_78:
            v132 = v31;
            goto LABEL_24;
          }

          goto LABEL_43;
        }

        if (type_delayInitStub == 49155)
        {
          [a1 appendString:@"\n" with:{attributesForIntents(v132 | 0x80, v133, objc_msgSend(v130, "lastObject"))}];
          v31 = v132 & 0xFFFFFFFFFFFFFF7FLL;
          goto LABEL_78;
        }

        v40 = [v130 lastObject];
        appended = appendNodeText(a1, a4, v41, node_delayInitStub, v132 | 4, v133, v40, a2, a3, v136, a6);
        goto LABEL_75;
      }

      if (type_delayInitStub <= 49158)
      {
        if (type_delayInitStub != 49157)
        {
LABEL_43:
          v37 = [v130 lastObject];
          appended = appendNodeText(a1, a4, v38, node_delayInitStub, v132, v133, v37, a2, a3, v136, a6);
          goto LABEL_75;
        }

        v55 = [v130 lastObject];
        appended = appendNodeText(a1, a4, v56, node_delayInitStub, v132 | 0x100, v133, v55, a2, a3, v136, a6);
LABEL_75:
        v25 = v26;
        if ((appended & 1) == 0)
        {
          goto LABEL_215;
        }

        goto LABEL_191;
      }

      if (type_delayInitStub == 49159)
      {
        if (v24 != 3)
        {
          v25 = v26;
          if (v24 != 2)
          {
            goto LABEL_191;
          }

          v42 = v132 | 1;
          goto LABEL_86;
        }

        v77 = v132 & 0xFFFFFFFFFFFFFFFELL;
LABEL_139:
        v132 = v77;
        goto LABEL_24;
      }

      if (type_delayInitStub == 49160)
      {
        if (v24 != 3)
        {
          v25 = v26;
          if (v24 != 2)
          {
            goto LABEL_191;
          }

          v42 = v132 | 2;
LABEL_86:
          v132 = v42;
          goto LABEL_191;
        }

        v77 = v132 & 0xFFFFFFFFFFFFFFFDLL;
        goto LABEL_139;
      }
    }

    Helper_x8__CMARK_NODE_STRIKETHROUGH = gotLoadHelper_x8__CMARK_NODE_STRIKETHROUGH(Helper_x8__CMARK_NODE_STRIKETHROUGH);
    if (v30 == **(v57 + 1664))
    {
      if (v24 != 3)
      {
        v25 = v26;
        if (v24 != 2)
        {
          goto LABEL_191;
        }

        v42 = v132 | 0x20;
        goto LABEL_86;
      }

      v77 = v132 & 0xFFFFFFFFFFFFFFDFLL;
      goto LABEL_139;
    }

    if ((v30 - 49161) <= 1)
    {
      if (v24 != 2)
      {
        goto LABEL_24;
      }

      v58 = v130;
      v121 = [objc_msgSend(v130 lastObject];
      url_delayInitStub = cmark_node_get_url_delayInitStub(v59);
      if (url_delayInitStub)
      {
        v62 = [[NSString alloc] initWithBytesNoCopy:url_delayInitStub length:strlen(url_delayInitStub) encoding:4 freeWhenDone:0];
        if ([(NSString *)v62 length])
        {
          if (![(NSString *)v62 length])
          {
            goto LABEL_102;
          }

          v63 = 0;
          v64 = 0;
          v65 = 0;
          do
          {
            if (u_hasBinaryProperty([(NSString *)v62 characterAtIndex:v64], UCHAR_BIDI_CONTROL))
            {
              if (!v63)
              {
                v63 = [(NSString *)v62 mutableCopy];
              }

              [(NSString *)v63 replaceCharactersInRange:v64 - v65++ withString:1, &stru_1EEEFDF90];
            }

            ++v64;
          }

          while (v64 < [(NSString *)v62 length]);
          if (!v63)
          {
LABEL_102:
            v63 = v62;
          }

          v66 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v63 relativeToURL:v125];
          if (v66)
          {
            v67 = v66;
            if (v30 == 49162)
            {
              v68 = @"NSImageURL";
            }

            else
            {
              v68 = @"NSLink";
            }

            [v121 setObject:v66 forKey:v68];
          }
        }

        v58 = v130;
      }

      title_delayInitStub = cmark_node_get_title_delayInitStub(v61);
      if (title_delayInitStub)
      {
        v70 = [[NSString alloc] initWithBytes:title_delayInitStub length:strlen(title_delayInitStub) encoding:4];
        if ([(NSString *)v70 length])
        {
          [v121 setObject:v70 forKey:@"NSAlternateDescription"];
        }
      }

      [v58 addObject:v121];

      v119 = objc_alloc_init(NSMutableString);
      cmark_node_set_user_data_delayInitStub(v71);
      v73 = cmark_iter_next_delayInitStub(v72);
      if (v73 == 1)
      {
        start_column_delayInitStub = -1;
        end_line_delayInitStub = -1;
        end_column_delayInitStub = -1;
        start_line_delayInitStub = -1;
      }

      else
      {
        v100 = v73;
        end_column_delayInitStub = -1;
        start_column_delayInitStub = -1;
        end_line_delayInitStub = -1;
        start_line_delayInitStub = -1;
        do
        {
          cmark_iter_get_node_delayInitStub(v74);
          if (start_line_delayInitStub == -1)
          {
            start_line_delayInitStub = cmark_node_get_start_line_delayInitStub(v101);
            start_column_delayInitStub = cmark_node_get_start_column_delayInitStub(v102);
          }

          if (cmark_node_get_user_data_delayInitStub(v101) == 1)
          {
            break;
          }

          end_line_delayInitStub = cmark_node_get_end_line_delayInitStub(v103);
          end_column_delayInitStub = cmark_node_get_end_column_delayInitStub(v104);
          if (v100 != 3)
          {
            literal_delayInitStub = cmark_node_get_literal_delayInitStub(v105);
            if (literal_delayInitStub)
            {
              v107 = [[NSString alloc] initWithBytesNoCopy:literal_delayInitStub length:strlen(literal_delayInitStub) encoding:4 freeWhenDone:0];
              if ([(NSString *)v107 length])
              {
                [(NSMutableString *)v119 appendString:v107];
              }
            }
          }

          v100 = cmark_iter_next_delayInitStub(v105);
        }

        while (v100 != 1);
      }

      v108 = [(NSString *)v119 length];
      if (v30 != 49162 || v108)
      {
        a1 = v127;
        if ([(NSAttributedStringMarkdownParsingOptions *)a4 appliesSourcePositionAttributes]&& start_line_delayInitStub >= 1 && start_column_delayInitStub >= 1 && end_line_delayInitStub >= 1 && end_column_delayInitStub >= 1)
        {
          v111 = [[NSAttributedStringMarkdownSourcePosition alloc] initWithStartLine:start_line_delayInitStub startColumn:start_column_delayInitStub endLine:end_line_delayInitStub endColumn:end_column_delayInitStub];
          [(NSAttributedStringMarkdownSourcePosition *)v111 setOffsetsFromUTF8:a2 size:v128 usingCache:v136];
          v109 = v130;
          v110 = v119;
          appendStringWithSourcePosition(v127, v119, v132, v133, [v130 lastObject], v111);

          a3 = v128;
        }

        else
        {
          v109 = v130;
          v110 = v119;
          [v127 appendString:v119 with:{attributesForIntents(v132, v133, objc_msgSend(v130, "lastObject"))}];
          a3 = v128;
        }
      }

      else
      {
        v109 = v130;
        a1 = v127;
        [v127 appendString:@"\uFFFC" with:{attributesForIntents(v132, v133, objc_msgSend(v130, "lastObject"))}];
        a3 = v128;
        v110 = v119;
      }

      v79 = v109;
      goto LABEL_185;
    }

    if (v30 == 49164)
    {
      break;
    }

    Helper_x8__CMARK_NODE_STRIKETHROUGH = gotLoadHelper_x8__CMARK_NODE_TABLE(Helper_x8__CMARK_NODE_STRIKETHROUGH);
    if (v30 == **(v89 + 1672))
    {
      if (v24 == 3)
      {
        goto LABEL_181;
      }

      if (v24 != 2)
      {
        goto LABEL_24;
      }

      table_columns_delayInitStub = cmark_gfm_extensions_get_table_columns_delayInitStub(Helper_x8__CMARK_NODE_STRIKETHROUGH);
      table_alignments_delayInitStub = cmark_gfm_extensions_get_table_alignments_delayInitStub(v91);
      if (table_alignments_delayInitStub && table_columns_delayInitStub)
      {
        v93 = table_alignments_delayInitStub;
        v94 = [MEMORY[0x1E695DF70] array];
        v95 = table_columns_delayInitStub;
        do
        {
          v97 = *v93++;
          v96 = v97;
          if (v97 == 114)
          {
            v98 = &off_1EEF573E0;
          }

          else
          {
            v98 = &off_1EEF573F8;
          }

          if (v96 == 108)
          {
            v98 = &off_1EEF573F8;
          }

          if (v96 == 99)
          {
            v99 = v26;
          }

          else
          {
            v99 = v98;
          }

          [v94 addObject:v99];
          --v95;
        }

        while (v95);
      }

      v133 = [NSPresentationIntent tableIntentWithIdentity:"tableIntentWithIdentity:columnCount:alignments:nestedInsideIntent:" columnCount:? alignments:? nestedInsideIntent:?];
      v124 = 0;
      ++v129;
      a1 = v127;
      goto LABEL_53;
    }

    Helper_x8__CMARK_NODE_STRIKETHROUGH = gotLoadHelper_x8__CMARK_NODE_TABLE_ROW(Helper_x8__CMARK_NODE_STRIKETHROUGH);
    if (v30 == **(v112 + 1688))
    {
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          if (cmark_gfm_extensions_get_table_row_is_header_delayInitStub(Helper_x8__CMARK_NODE_STRIKETHROUGH))
          {
            v133 = [NSPresentationIntent tableHeaderRowIntentWithIdentity:v129 nestedInsideIntent:v133];
            v25 = v26;
            v113 = v124;
          }

          else
          {
            v113 = v124;
            v133 = [NSPresentationIntent tableRowIntentWithIdentity:v129 row:v124 nestedInsideIntent:v133];
            v25 = v26;
          }

          ++v129;
          v123 = 0;
          v124 = v113 + 1;
          goto LABEL_191;
        }

        goto LABEL_24;
      }

LABEL_181:
      v133 = [(NSPresentationIntent *)v133 parentIntent];
      goto LABEL_24;
    }

    Helper_x8__CMARK_NODE_STRIKETHROUGH = gotLoadHelper_x8__CMARK_NODE_TABLE_CELL(Helper_x8__CMARK_NODE_STRIKETHROUGH);
    v25 = v26;
    if (v30 == **(v114 + 1680))
    {
      if (v24 == 3)
      {
LABEL_190:
        v133 = [(NSPresentationIntent *)v133 parentIntent];
        goto LABEL_191;
      }

      if (v24 == 2)
      {
        v35 = v129 + 1;
        v133 = [NSPresentationIntent tableCellIntentWithIdentity:"tableCellIntentWithIdentity:column:nestedInsideIntent:" column:Helper_x8__CMARK_NODE_STRIKETHROUGH nestedInsideIntent:?];
        ++v123;
        v25 = v26;
LABEL_39:
        v129 = v35;
LABEL_40:
        a3 = v128;
      }
    }

LABEL_191:
    v24 = cmark_iter_next_delayInitStub(Helper_x8__CMARK_NODE_STRIKETHROUGH);
    if (v24 == 1)
    {
      goto LABEL_15;
    }
  }

  if (![(NSAttributedStringMarkdownParsingOptions *)a4 allowsExtendedAttributes])
  {
    goto LABEL_24;
  }

  if (v24 == 3)
  {
    goto LABEL_121;
  }

  if (v24 != 2)
  {
    goto LABEL_24;
  }

  attributes_delayInitStub = cmark_node_get_attributes_delayInitStub(Helper_x8__CMARK_NODE_STRIKETHROUGH);
  v81 = a1;
  v82 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:attributes_delayInitStub length:strlen(attributes_delayInitStub) freeWhenDone:0];
  v135 = 0;
  v83 = [v81 parseExtendedAttributesFromData:v82 error:&v135];

  if (v83)
  {
    v84 = [objc_msgSend(v130 "lastObject")];
    [v84 addEntriesFromDictionary:v83];
    [v130 addObject:v84];

    goto LABEL_209;
  }

  if ([(NSAttributedStringMarkdownParsingOptions *)a4 failurePolicy])
  {
    [v130 addObject:{objc_msgSend(v130, "lastObject")}];
LABEL_209:
    a1 = v81;
LABEL_53:
    a3 = v128;
    goto LABEL_24;
  }

  if (a6)
  {
    *a6 = v135;
  }

LABEL_215:
  v21 = 0;
LABEL_18:
  cmark_iter_free_delayInitStub(Helper_x8__CMARK_NODE_STRIKETHROUGH);
  cmark_node_free_delayInitStub(v22);
  cmark_parser_free_delayInitStub(v23);
  return v21;
}

void appendStringWithSourcePosition(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a6)
  {
    v12 = [a5 mutableCopy];
    [v12 setObject:a6 forKey:@"NSMarkdownSourcePosition"];
    [a1 appendString:a2 with:{attributesForIntents(a3, a4, v12)}];
  }

  else
  {
    v11 = attributesForIntents(a3, a4, a5);

    [a1 appendString:a2 with:v11];
  }
}

id newAttributedStringFromMarkdown(uint64_t a1, uint64_t a2, NSAttributedStringMarkdownParsingOptions *a3, uint64_t a4, NSError **a5)
{
  v10 = objc_alloc_init(_NSAttributedStringFromMarkdownCreatorConcrete);
  if (_NSAttributedStringFromMarkdownWithCreator(v10, a1, a2, a3, a4, a5))
  {
    v11 = [(_NSAttributedStringFromMarkdownCreatorConcrete *)v10 result];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t appendNodeText(void *a1, void *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, NSError **a11)
{
  literal_delayInitStub = cmark_node_get_literal_delayInitStub(a3);
  if (!literal_delayInitStub)
  {
    return 1;
  }

  v19 = [[NSString alloc] initWithBytesNoCopy:literal_delayInitStub length:strlen(literal_delayInitStub) encoding:4 freeWhenDone:0];
  if (v19)
  {
    v20 = v19;
    if ([a2 appliesSourcePositionAttributes])
    {
      v31 = [NSAttributedStringMarkdownSourcePosition alloc];
      start_line_delayInitStub = cmark_node_get_start_line_delayInitStub(v21);
      start_column_delayInitStub = cmark_node_get_start_column_delayInitStub(v22);
      end_line_delayInitStub = cmark_node_get_end_line_delayInitStub(v24);
      v27 = [(NSAttributedStringMarkdownSourcePosition *)v31 initWithStartLine:start_line_delayInitStub startColumn:start_column_delayInitStub endLine:end_line_delayInitStub endColumn:cmark_node_get_end_column_delayInitStub(v26)];
      [(NSAttributedStringMarkdownSourcePosition *)v27 setOffsetsFromUTF8:a8 size:a9 usingCache:a10];
    }

    else
    {
      v27 = 0;
    }

    appendStringWithSourcePosition(a1, v20, a5, a6, a7, v27);

    return 1;
  }

  if ([a2 failurePolicy])
  {
    return 1;
  }

  if (!a11)
  {
    return 0;
  }

  v28 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:259 userInfo:0];
  result = 0;
  *a11 = v28;
  return result;
}

id attributesForIntents(uint64_t a1, uint64_t a2, void *a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v16[0] = @"NSInlinePresentationIntent";
    v16[1] = @"NSPresentationIntent";
    v17[0] = [NSNumber numberWithUnsignedInteger:a1];
    v17[1] = a2;
    v5 = MEMORY[0x1E695DF20];
    v6 = v17;
    v7 = v16;
    v8 = 2;
    goto LABEL_9;
  }

  if (a2)
  {
    v14 = @"NSPresentationIntent";
    v15 = a2;
    v5 = MEMORY[0x1E695DF20];
    v6 = &v15;
    v7 = &v14;
LABEL_8:
    v8 = 1;
LABEL_9:
    v9 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:v8];
    if (!a3)
    {
      return v9;
    }

    goto LABEL_10;
  }

  if (a1)
  {
    v12 = @"NSInlinePresentationIntent";
    v13 = [NSNumber numberWithUnsignedInteger:a1];
    v5 = MEMORY[0x1E695DF20];
    v6 = &v13;
    v7 = &v12;
    goto LABEL_8;
  }

  v9 = MEMORY[0x1E695E0F8];
  if (!a3)
  {
    return v9;
  }

LABEL_10:
  if ([a3 count])
  {
    v10 = [v9 mutableCopy];
    [v10 addEntriesFromDictionary:a3];
    return v10;
  }

  return v9;
}

void _NSInflect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v42 = *MEMORY[0x1E69E9840];
  if (+[NSThread isMainThread])
  {
    v23 = _NSInflectionObserver;
  }

  else
  {
    v23 = 0;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3052000000;
  v39 = __Block_byref_object_copy__8;
  v40 = __Block_byref_object_dispose__8;
  v41 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = ___NSInflect_block_invoke;
  v35[3] = &unk_1E69F40E8;
  v35[4] = &v36;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = ___NSInflect_block_invoke_2;
  v34[3] = &unk_1E69F4110;
  v34[4] = a1;
  v34[5] = a12;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = (*(a5 + 16))(a5);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = ___NSInflect_block_invoke_3;
  v32[3] = &unk_1E69F41D8;
  v33 = a6;
  v32[4] = a2;
  v32[5] = v23;
  v32[10] = a13;
  v32[11] = a12;
  v32[6] = v24;
  v32[7] = a4;
  v32[8] = a3;
  v32[9] = a11;
  v32[12] = v34;
  v32[13] = a10;
  v32[14] = v35;
  v32[15] = a14;
  v32[16] = a15;
  v32[17] = v25;
  (*(a8 + 16))(a8, 0, v25, v32);
  v26 = (*(a5 + 16))(a5);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = ___NSInflect_block_invoke_43;
  v31[3] = &unk_1E69F4200;
  v31[6] = a12;
  v31[7] = a13;
  v31[8] = v34;
  v31[9] = a16;
  v31[10] = a15;
  v31[4] = a1;
  v31[5] = v24;
  (*(a9 + 16))(a9, 0, v26, v31);
  v27 = (*(a5 + 16))(a5);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___NSInflect_block_invoke_48;
  v30[3] = &unk_1E69F4228;
  v30[4] = v24;
  v30[5] = a2;
  v30[6] = a10;
  v30[7] = a17;
  v30[8] = a15;
  (*(a7 + 16))(a7, @"NSInflectionAlternative", 0, v27, v30);

  _Block_object_dispose(&v36, 8);
}

uint64_t _NSOpenFileDescriptor(const char *a1, int a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = open(a1, a2, a3);
  if ((v3 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  memset(&v6, 0, sizeof(v6));
  if (fstat(v3, &v6) < 0 || (v6.st_mode & 0xF000) == 0x4000)
  {
    close(v4);
    return 0xFFFFFFFFLL;
  }

  return v4;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t IndexPath.endIndex.getter()
{
  if (v0[16] > 1u)
  {
    if (v0[16] == 2)
    {
      return *(*v0 + 16);
    }

    else
    {
      return 0;
    }
  }

  else if (v0[16])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id String.init(localized:table:bundle:locale:comment:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v85 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *a5;
  v9 = a5[1];
  v10 = MEMORY[0x1E69E7CC0];
  v78 = MEMORY[0x1E69E7CC0];
  v79 = 0;

  swift_unknownObjectRetain();
  v74 = v9;
  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v7, &v78, v8, v9);

  v75 = v8;
  swift_unknownObjectRelease();
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = [objc_opt_self() mainBundle];
  }

  v13 = a4;
  v14 = String._bridgeToObjectiveCImpl()();

  v15 = String._bridgeToObjectiveCImpl()();
  if (a3)
  {
    v16 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v16 = 0;
  }

  v17 = [v12 _localizedStringForKey_value_table_localizations_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!v17)
  {

    goto LABEL_17;
  }

  isTaggedPointer = _objc_isTaggedPointer(v17);
  v19 = v17;
  v20 = v19;
  if ((isTaggedPointer & 1) == 0)
  {
LABEL_13:
    LOBYTE(v84[0]) = 0;
    v78 = 0;
    LOBYTE(v76[0]) = 0;
    if (__CFStringIsCF())
    {
      v22 = v78;
      if (v78)
      {
        goto LABEL_34;
      }

      goto LABEL_18;
    }

    v24 = v20;
    v25 = String.init(_nativeStorage:)();
    if (v26)
    {
      v22 = v25;

      v23 = *(v11 + 16);
      if (v23)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    v78 = [v24 length];
    if (v78)
    {
LABEL_34:
      v22 = String.init(_cocoaString:)();
      goto LABEL_35;
    }

LABEL_17:
    v22 = 0;
LABEL_18:
    v23 = *(v11 + 16);
    if (v23)
    {
      goto LABEL_37;
    }

LABEL_33:

    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
    goto LABEL_100;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v19);
  if (!TaggedPointerTag)
  {
    goto LABEL_27;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v20 UTF8String];
    if (!result)
    {
      __break(1u);
      goto LABEL_105;
    }

    v28 = String.init(utf8String:)(result);
    if (v29)
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_27:
    LOWORD(v76[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v28 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v30)
    {
      [v20 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v22 = *&v84[0];
LABEL_35:

LABEL_36:
      v23 = *(v11 + 16);
      if (v23)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

LABEL_28:
    v22 = v28;

    goto LABEL_36;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_13;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v22 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

  v23 = *(v11 + 16);
  if (!v23)
  {
    goto LABEL_33;
  }

LABEL_37:
  v73 = v13;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
  v31 = v10;
  v32 = v11 + 32;
  do
  {
    outlined init with copy of String.LocalizationValue.FormatArgument(v32, &v78);
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(v84, v76, 0, v75, v74);
    outlined destroy of String.LocalizationValue.FormatArgument(&v78);
    outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v76[0], v76[1], v77);
    v34 = *(v10 + 16);
    v33 = *(v10 + 24);
    if (v34 >= v33 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
    }

    *(v10 + 16) = v34 + 1;
    outlined init with take of Equatable(v84, v10 + 32 + 40 * v34);
    v32 += 112;
    --v23;
  }

  while (v23);

  type metadata accessor for __VaListBuilder();
  v35 = swift_allocObject();
  v35[2] = 8;
  v35[3] = 0;
  v36 = v35 + 3;
  v35[4] = 0;
  v35[5] = 0;
  v37 = *(v10 + 16);
  swift_unknownObjectRetain();

  if (!v37)
  {
LABEL_66:
    v54 = __VaListBuilder.va_list()();
    v55 = objc_opt_self();
    v56 = String._bridgeToObjectiveCImpl()();
    ObjectType = swift_getObjectType();
    v58 = (*(v74 + 488))(ObjectType);
    v78 = 0;
    v79 = 0;
    v80 = 256;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v59 = String.LocalizationOptions._nsOptions.getter();
    v60 = [v55 _stringWithFormat_locale_options_arguments_];

    swift_unknownObjectRelease();
    LODWORD(v59) = _objc_isTaggedPointer(v60);
    v61 = v60;
    v44 = v61;
    if (!v59)
    {
LABEL_71:
      LOBYTE(v84[0]) = 0;
      v78 = 0;
      LOBYTE(v76[0]) = 0;
      IsCF = __CFStringIsCF();
      if (IsCF)
      {
        v37 = v73;
        if (!v78)
        {
          goto LABEL_77;
        }

        if (v76[0])
        {
          if (LOBYTE(v84[0]) != 1)
          {
            IsCF = [v44 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v72 = HIBYTE(v71) & 0xF;
          if ((v71 & 0x2000000000000000) == 0)
          {
            v72 = v70 & 0xFFFFFFFFFFFFLL;
          }

          if (v72)
          {
            v22 = v70;

            goto LABEL_95;
          }

          v37 = v73;
        }
      }

      else
      {
        v64 = v44;
        v65 = String.init(_nativeStorage:)();
        v37 = v73;
        if (v66)
        {
          v22 = v65;

          goto LABEL_99;
        }

        v78 = [v64 length];
        if (!v78)
        {

          goto LABEL_78;
        }
      }

      v22 = String.init(_cocoaString:)();
LABEL_98:

      goto LABEL_99;
    }

    v62 = _objc_getTaggedPointerTag(v61);
    if (!v62)
    {
      goto LABEL_82;
    }

    if (v62 != 22)
    {
      if (v62 == 2)
      {
        MEMORY[0x1EEE9AC00](v62);
        v22 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_95:
        v37 = v73;
        goto LABEL_99;
      }

      goto LABEL_71;
    }

    result = [v44 UTF8String];
    v37 = v73;
    if (result)
    {
      v67 = String.init(utf8String:)(result);
      if (v68)
      {
LABEL_83:
        v22 = v67;

        goto LABEL_98;
      }

      __break(1u);
LABEL_82:
      LOWORD(v76[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v67 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      v37 = v73;
      if (!v69)
      {
        [v44 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v22 = *&v84[0];
        goto LABEL_98;
      }

      goto LABEL_83;
    }

LABEL_105:
    __break(1u);
    return result;
  }

  v38 = 0;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v31 + 32 + 40 * v38), *(v31 + 32 + 40 * v38 + 24));
    v39 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v40 = *v36;
    v41 = *(v39 + 16);
    v42 = __OFADD__(*v36, v41);
    v43 = *v36 + v41;
    if (v42)
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
    }

    v44 = v35[4];
    if (v44 >= v43)
    {
      goto LABEL_58;
    }

    if (v44 + 0x4000000000000000 < 0)
    {
      goto LABEL_102;
    }

    v45 = v35[5];
    if (2 * v44 > v43)
    {
      v43 = 2 * v44;
    }

    v35[4] = v43;
    if ((v43 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_103;
    }

    v46 = v39;
    v47 = swift_slowAlloc();
    v48 = v47;
    v35[5] = v47;
    if (v45)
    {
      if (v47 != v45 || v47 >= &v45[8 * v40])
      {
        memmove(v47, v45, 8 * v40);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v39 = v46;
LABEL_58:
      v48 = v35[5];
      if (!v48)
      {
        goto LABEL_65;
      }

      goto LABEL_59;
    }

    v39 = v46;
    if (!v48)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_59:
    v50 = *(v39 + 16);
    if (v50)
    {
      break;
    }

LABEL_43:

    if (++v38 == v37)
    {
      goto LABEL_66;
    }
  }

  v51 = (v39 + 32);
  v52 = *v36;
  while (1)
  {
    v53 = *v51++;
    *&v48[8 * v52] = v53;
    v52 = *v36 + 1;
    if (__OFADD__(*v36, 1))
    {
      break;
    }

    *v36 = v52;
    if (!--v50)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_77:

LABEL_78:
  v22 = 0;
LABEL_99:

  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_100:

  return v22;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v51 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v51;
  for (i = a1 + 32; ; i += 112)
  {
    result = outlined init with copy of String.LocalizationValue.FormatArgument.Storage(i, &v45);
    if (v50[24] == 6)
    {
      break;
    }

    outlined destroy of String.LocalizationValue.FormatArgument.Storage(&v45);
    outlined init with copy of String.LocalizationValue.FormatArgument(i, &v45);
LABEL_37:
    v51 = v5;
    v26 = *(v5 + 16);
    v25 = *(v5 + 24);
    if (v26 >= v25 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      v5 = v51;
    }

    *(v5 + 16) = v26 + 1;
    v27 = (v5 + 112 * v26);
    v28 = v45;
    v29 = v47;
    v27[3] = v46;
    v27[4] = v29;
    v27[2] = v28;
    v30 = v48;
    v31 = v49;
    v32 = *v50;
    *(v27 + 121) = *&v50[9];
    v27[6] = v31;
    v27[7] = v32;
    v27[5] = v30;
    if (!--v4)
    {
      return v5;
    }
  }

  v10 = v45;
  v11 = a2[1];
  v12 = *(*a2 + 16);
  if (v11 == v12)
  {
    if (v45 > 1u)
    {
      if (v45 == 2)
      {
        v17 = MEMORY[0x1E69E6448];
        v43 = MEMORY[0x1E69E6448];
        v44 = MEMORY[0x1E69E64A8];
        LODWORD(v42[0]) = 0;
      }

      else
      {
        if (v45 == 3)
        {
          v44 = MEMORY[0x1E69E6438];
          v13 = MEMORY[0x1E69E63B0];
LABEL_25:
          v17 = v13;
          v43 = v13;
          v42[0] = 0;
          goto LABEL_26;
        }

        v17 = MEMORY[0x1E69E6158];
        v43 = MEMORY[0x1E69E6158];
        v44 = lazy protocol witness table accessor for type String and conformance String();
        v42[0] = 0x296C6C756E28;
        v42[1] = 0xE600000000000000;
      }

LABEL_26:
      v18 = __swift_project_boxed_opaque_existential_1(v42, v17);
      *(&v46 + 1) = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v45);
      (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v18, v17);
      v50[24] = 0;
      v20 = v42;
LABEL_27:
      __swift_destroy_boxed_opaque_existential_1(v20);
      goto LABEL_37;
    }

    if (v45)
    {
      v44 = MEMORY[0x1E69E7738];
      v13 = MEMORY[0x1E69E76D8];
    }

    else
    {
      v44 = MEMORY[0x1E69E73D8];
      v13 = MEMORY[0x1E69E7360];
    }

    goto LABEL_25;
  }

  if (v11 < v12)
  {
    outlined init with copy of Hashable & Sendable(*a2 + 40 * v11 + 32, &v45);
    a2[1] = v11 + 1;
    outlined init with take of Equatable(&v45, v42);
    *&v45 = a3;
    *(&v45 + 1) = v52;
    v14 = processPlaceholderReplacement(_:locale:)(v41, v42, &v45);
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v16 = 0xE200000000000000;
        if (v14 != 26149)
        {
          goto LABEL_35;
        }
      }

      else if (v10 == 3)
      {
        v16 = 0xE300000000000000;
        if (v14 != 6712357)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v16 = 0xE200000000000000;
        if (v14 != 16421)
        {
          goto LABEL_35;
        }
      }

LABEL_33:
      if (v15 == v16)
      {

LABEL_36:
        outlined init with copy of Hashable & Sendable(v41, v38);
        v22 = v39;
        v23 = __swift_project_boxed_opaque_existential_1(v38, v39);
        *(&v46 + 1) = v22;
        v24 = __swift_allocate_boxed_opaque_existential_0(&v45);
        (*(*(v22 - 8) + 16))(v24, v23, v22);
        __swift_destroy_boxed_opaque_existential_1(v41);
        __swift_destroy_boxed_opaque_existential_1(v42);
        v50[24] = 0;
        __swift_destroy_boxed_opaque_existential_1(v38);
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    if (v10)
    {
      v16 = 0xE400000000000000;
      if (v14 == 1970039845)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = 0xE400000000000000;
      if (v14 == 1684827173)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_36;
    }

    if (v10 <= 1)
    {
      if (v10)
      {
        v40 = MEMORY[0x1E69E7738];
        v34 = MEMORY[0x1E69E76D8];
      }

      else
      {
        v40 = MEMORY[0x1E69E73D8];
        v34 = MEMORY[0x1E69E7360];
      }

      v33 = v34;
      v39 = v34;
      v38[0] = 0;
    }

    else if (v10 == 2)
    {
      v33 = MEMORY[0x1E69E6448];
      v39 = MEMORY[0x1E69E6448];
      v40 = MEMORY[0x1E69E64A8];
      LODWORD(v38[0]) = 0;
    }

    else if (v10 == 3)
    {
      v40 = MEMORY[0x1E69E6438];
      v33 = MEMORY[0x1E69E63B0];
      v39 = MEMORY[0x1E69E63B0];
      v38[0] = 0;
    }

    else
    {
      v33 = MEMORY[0x1E69E6158];
      v39 = MEMORY[0x1E69E6158];
      v40 = lazy protocol witness table accessor for type String and conformance String();
      v38[0] = 0x296C6C756E28;
      v38[1] = 0xE600000000000000;
    }

    v35 = __swift_project_boxed_opaque_existential_1(v38, v33);
    *(&v46 + 1) = v33;
    v36 = __swift_allocate_boxed_opaque_existential_0(&v45);
    (*(*(v33 - 8) + 16))(v36, v35, v33);
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v50[24] = 0;
    v20 = v38;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void *__cdecl NSZoneCalloc(NSZone *zone, NSUInteger numElems, NSUInteger byteSize)
{
  if (!zone)
  {
    zone = malloc_default_zone();
  }

  return malloc_type_zone_calloc(zone, numElems, byteSize, 0x53EDA37FuLL);
}

uint64_t __delayedPerformCleanup(id *a1)
{
  _CFAutoreleasePoolPush();

  free(a1);

  return _CFAutoreleasePoolPop();
}

uint64_t __NSFireDelayedPerform(void *a1, id *a2)
{
  v18 = a2[1];
  v3 = a2[3];
  v20 = a2[2];
  v22 = *a2;
  v5 = a2[4];
  v4 = a2[5];
  v6 = a2[6];
  _CFAutoreleasePoolPush();
  if (v6)
  {
    [+[NSProcessInfo processInfo](NSProcessInfo _reactivateActivity:"_reactivateActivity:", v6];
  }

  CFRetain(a1);
  objc_sync_enter(v4);
  v7 = [v4 _dperf];
  v25.length = [objc_msgSend(v4 "_dperf")];
  v25.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v25, v5);
  if (FirstIndexOfValue << 32 != 0xFFFFFFFF00000000)
  {
    CFArrayRemoveValueAtIndex([v4 _dperf], FirstIndexOfValue);
  }

  v9 = [v3 count];
  v10 = *MEMORY[0x1E695DA28];
  v11 = *MEMORY[0x1E695E8D0];
  for (i = v9 - 1; i != -1; --i)
  {
    v13 = [v3 objectAtIndex:i];
    v14 = v13;
    v15 = v11;
    if (v13 != v10)
    {
      if ([(__CFString *)v13 isEqual:@"kCFRunLoopCommonModes"])
      {
        v15 = v11;
      }

      else
      {
        v15 = v14;
      }
    }

    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveTimer(Current, a1, v15);
  }

  objc_sync_exit(v4);
  [v23 v19];
  CFRelease(a1);
  if (v6)
  {
    [+[NSProcessInfo processInfo](NSProcessInfo endActivity:"endActivity:", v6];
  }

  return _CFAutoreleasePoolPop();
}

uint64_t static AttributeScope.scopeDescription.getter(uint64_t a1)
{
  if (one-time initialization token for _loadedScopeCache != -1)
  {
LABEL_92:
    swift_once();
  }

  v2 = _loadedScopeCache;
  os_unfair_lock_lock(_loadedScopeCache + 10);
  v3 = *(v2 + 4);
  v100 = v2;
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 16 * v4);

    os_unfair_lock_unlock(v2 + 10);
    if (v6)
    {
      return v6;
    }
  }

  else
  {
    os_unfair_lock_unlock(v2 + 10);
  }

  v7 = MEMORY[0x1E69E7CC8];
  v102 = MEMORY[0x1E69E7CC8];
  v103 = MEMORY[0x1E69E7CC8];
  v8 = Fields.endIndex.getter();
  if (!v8)
  {
    v6 = v7;
LABEL_85:
    MEMORY[0x1EEE9AC00](v8);

    os_unfair_lock_lock(v100 + 10);
    partial apply for closure #2 in static AttributeScope.scopeDescription.getter(&v100[4]);
    os_unfair_lock_unlock(v100 + 10);

    return v6;
  }

  v9 = 0;
  v101 = a1;
  while (1)
  {
    if (v9 >= Fields.endIndex.getter())
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v12 = *a1;
    v13 = static Metadata.Kind.tuple.getter();
    if (v12 > 0x7FF)
    {
      if (v13 - 2048 < 0xFFFFFFFFFFFFF801)
      {
        goto LABEL_18;
      }
    }

    else if (v13 >= 0x800)
    {
      if (!v12)
      {
LABEL_18:
        TupleMetadata.init(_:)();
        TupleMetadata.Elements.subscript.getter();
        v14 = TupleMetadata.Elements.Element.metadata.getter();
LABEL_22:
        v17 = v14;
        goto LABEL_23;
      }
    }

    else if (v12 == v13)
    {
      goto LABEL_18;
    }

    v15 = (FieldDescriptor.subscript.getter() + 4);
    v16 = *v15;
    v17 = MangledTypeReference.standardSubstitution.getter();
    if (!v17)
    {
      v14 = MEMORY[0x1865C9F00](v15 + v16, a1);
      goto LABEL_22;
    }

LABEL_23:
    v18 = swift_conformsToProtocol2();
    if (!v18 || !v17)
    {
      v33 = swift_conformsToProtocol2();
      if (v33 && v17)
      {
        v34 = static AttributeScope.scopeDescription.getter(v17, v33);
        ScopeDescription.merge(_:)(v34, v35);
      }

      goto LABEL_11;
    }

    v19 = v18;
    v20 = (*(v18 + 24))(v17, v18);
    v22 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v22);
    v26 = *(v102 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_88;
    }

    a1 = v24;
    if (*(v102 + 24) >= v28)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
    v29 = v102;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v22);
    if ((a1 & 1) != (v31 & 1))
    {
      goto LABEL_95;
    }

    v25 = v30;
    if (a1)
    {
LABEL_29:

      v32 = (*(v29 + 56) + 16 * v25);
      *v32 = v17;
      v32[1] = v19;
      goto LABEL_37;
    }

LABEL_35:
    *(v29 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v36 = (*(v29 + 48) + 16 * v25);
    *v36 = v20;
    v36[1] = v22;
    v37 = (*(v29 + 56) + 16 * v25);
    *v37 = v17;
    v37[1] = v19;
    v38 = *(v29 + 16);
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_90;
    }

    *(v29 + 16) = v40;
LABEL_37:
    v102 = v29;
    v41 = swift_conformsToProtocol2();
    a1 = v101;
    if (!v41)
    {
      goto LABEL_11;
    }

    v42 = v41;
    v43 = (*(v41 + 24))(v17, v41);
    v45 = v44;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v45);
    v49 = *(v103 + 16);
    v50 = (v48 & 1) == 0;
    v39 = __OFADD__(v49, v50);
    v51 = v49 + v50;
    if (v39)
    {
      goto LABEL_89;
    }

    v52 = v48;
    if (*(v103 + 24) >= v51)
    {
      if (v46)
      {
        v53 = v103;
        if ((v48 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v97 = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation36MarkdownDecodableAttributedStringKey_pXpGMd);
        v77 = static _DictionaryStorage.copy(original:)();
        v53 = v77;
        if (*(v103 + 16))
        {
          v78 = (v77 + 64);
          v79 = (v103 + 64);
          v80 = ((1 << *(v53 + 32)) + 63) >> 6;
          if (v53 != v103 || v78 >= &v79[8 * v80])
          {
            memmove(v78, v79, 8 * v80);
          }

          v81 = 0;
          *(v53 + 16) = *(v103 + 16);
          v82 = 1 << *(v103 + 32);
          if (v82 < 64)
          {
            v83 = ~(-1 << v82);
          }

          else
          {
            v83 = -1;
          }

          v84 = v83 & *(v103 + 64);
          v85 = (v82 + 63) >> 6;
          if (v84)
          {
            do
            {
              v86 = __clz(__rbit64(v84));
              v99 = (v84 - 1) & v84;
LABEL_79:
              v89 = 16 * (v86 | (v81 << 6));
              v90 = (*(v103 + 48) + v89);
              v92 = *v90;
              v91 = v90[1];
              v93 = *(*(v103 + 56) + v89);
              v94 = (*(v53 + 48) + v89);
              *v94 = v92;
              v94[1] = v91;
              *(*(v53 + 56) + v89) = v93;

              v84 = v99;
            }

            while (v99);
          }

          v87 = v81;
          while (1)
          {
            v81 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_94;
            }

            if (v81 >= v85)
            {
              break;
            }

            v88 = *(v103 + 64 + 8 * v81);
            ++v87;
            if (v88)
            {
              v86 = __clz(__rbit64(v88));
              v99 = (v88 - 1) & v88;
              goto LABEL_79;
            }
          }
        }

        v47 = v97;
        a1 = v101;
        if ((v52 & 1) == 0)
        {
LABEL_45:
          *(v53 + 8 * (v47 >> 6) + 64) |= 1 << v47;
          v55 = (*(v53 + 48) + 16 * v47);
          *v55 = v43;
          v55[1] = v45;
          v56 = (*(v53 + 56) + 16 * v47);
          *v56 = v17;
          v56[1] = v42;
          v57 = *(v53 + 16);
          v39 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v39)
          {
            goto LABEL_91;
          }

          *(v53 + 16) = v58;
          goto LABEL_10;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, v46);
      v53 = v103;
      v47 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v45);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_95;
      }

      if ((v52 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    v10 = v47;

    v11 = (*(v53 + 56) + 16 * v10);
    *v11 = v17;
    v11[1] = v42;
LABEL_10:
    v103 = v53;
LABEL_11:
    ++v9;
    v8 = Fields.endIndex.getter();
    if (v9 == v8)
    {
      v6 = v102;
      goto LABEL_85;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v29 = v102;
    if (v24)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
  v59 = static _DictionaryStorage.copy(original:)();
  v29 = v59;
  if (!*(v102 + 16))
  {
LABEL_63:

    if (a1)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  v60 = (v59 + 64);
  v61 = (v102 + 64);
  v62 = ((1 << *(v29 + 32)) + 63) >> 6;
  if (v29 != v102 || v60 >= &v61[8 * v62])
  {
    memmove(v60, v61, 8 * v62);
  }

  v63 = 0;
  *(v29 + 16) = *(v102 + 16);
  v64 = 1 << *(v102 + 32);
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  else
  {
    v65 = -1;
  }

  v66 = v65 & *(v102 + 64);
  v67 = (v64 + 63) >> 6;
  v96 = v67;
  if (v66)
  {
    do
    {
      v68 = __clz(__rbit64(v66));
      v98 = (v66 - 1) & v66;
LABEL_61:
      v71 = 16 * (v68 | (v63 << 6));
      v72 = (*(v102 + 48) + v71);
      v74 = *v72;
      v73 = v72[1];
      v75 = *(*(v102 + 56) + v71);
      v76 = (*(v29 + 48) + v71);
      *v76 = v74;
      v76[1] = v73;
      *(*(v29 + 56) + v71) = v75;

      v67 = v96;
      v66 = v98;
    }

    while (v98);
  }

  v69 = v63;
  while (1)
  {
    v63 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v63 >= v67)
    {
      goto LABEL_63;
    }

    v70 = *(v102 + 64 + 8 * v63);
    ++v69;
    if (v70)
    {
      v68 = __clz(__rbit64(v70));
      v98 = (v70 - 1) & v70;
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t one-time initialization function for _loadedScopeCache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16LoadedScopeCache33_4D406B8DD906487F9F362CE42830919ELLV_GMd);
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  *(result + 40) = 0;
  *(result + 16) = v1;
  *(result + 24) = 0;
  *(result + 32) = v1;
  _loadedScopeCache = result;
  return result;
}

void one-time initialization function for name()
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSInflectionReferentConcept");
  v1 = @"NSInflectionReferentConcept";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static AttributeScopes.FoundationAttributes.ReferentConceptAttribute.name = v4;
      unk_1EA7B2640 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  isTaggedPointer = _objc_isTaggedPointer(@"NSInflectionAlternative");
  v1 = @"NSInflectionAlternative";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute.name = v4;
      unk_1EA7B25D8 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  isTaggedPointer = _objc_isTaggedPointer(@"NSInflectionAgreementConcept");
  v1 = @"NSInflectionAgreementConcept";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static AttributeScopes.FoundationAttributes.AgreementConceptAttribute.name = v4;
      *algn_1EA7B2628 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  isTaggedPointer = _objc_isTaggedPointer(@"NSInflectionAgreementArgument");
  v1 = @"NSInflectionAgreementArgument";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static AttributeScopes.FoundationAttributes.AgreementArgumentAttribute.name = v4;
      unk_1EA7B2610 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  isTaggedPointer = _objc_isTaggedPointer(@"NSLocalizedNumberFormat");
  v1 = @"NSLocalizedNumberFormat";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.name = v4;
      unk_1EA7B24E0 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  isTaggedPointer = _objc_isTaggedPointer(@"NSInflect");
  v1 = @"NSInflect";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static AttributeScopes.FoundationAttributes.InflectionRuleAttribute.name = v4;
      unk_1EA7B2660 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  isTaggedPointer = _objc_isTaggedPointer(@"NSInlinePresentationIntent");
  v1 = @"NSInlinePresentationIntent";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute.name = v4;
      unk_1EA7B26A0 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  isTaggedPointer = _objc_isTaggedPointer(@"NSPresentationIntent");
  v1 = @"NSPresentationIntent";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static AttributeScopes.FoundationAttributes.PresentationIntentAttribute.name = v4;
      *algn_1EA7B25F8 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  isTaggedPointer = _objc_isTaggedPointer(@"NSMarkdownSourcePosition");
  v1 = @"NSMarkdownSourcePosition";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute.name = v4;
      unk_1EA7B25B0 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  isTaggedPointer = _objc_isTaggedPointer(@"NSListItemDelimiter");
  v1 = @"NSListItemDelimiter";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static AttributeScopes.FoundationAttributes.ListItemDelimiterAttribute.name = v4;
      *algn_1EA7B2468 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  isTaggedPointer = _objc_isTaggedPointer(@"NSMorphology");
  v1 = @"NSMorphology";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static AttributeScopes.FoundationAttributes.MorphologyAttribute.name = v4;
      *algn_1EA7B2688 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

{
  isTaggedPointer = _objc_isTaggedPointer(@"NSAssumedFallbackInflection");
  v1 = @"NSAssumedFallbackInflection";
  v2 = v1;
  if (!isTaggedPointer)
  {
    goto LABEL_6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v1);
  if (!TaggedPointerTag)
  {
    goto LABEL_13;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v6 = v5;

LABEL_19:
      static AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute.name = v4;
      *algn_1EA7B2598 = v6;
      return;
    }

LABEL_6:
    if (__CFStringIsCF())
    {
      v4 = 0;

      v6 = 0xE000000000000000;
    }

    else
    {
      v7 = v2;
      v8 = String.init(_nativeStorage:)();
      if (v9)
      {
        v4 = v8;
        v6 = v9;
      }

      else if ([(__CFString *)v7 length])
      {
        v4 = String.init(_cocoaString:)();
        v6 = v13;
      }

      else
      {

        v4 = 0;
        v6 = 0xE000000000000000;
      }
    }

    goto LABEL_19;
  }

  v10 = [(__CFString *)v2 UTF8String];
  if (v10)
  {
    v11 = String.init(utf8String:)(v10);
    if (v12)
    {
LABEL_14:
      v4 = v11;
      v6 = v12;

      goto LABEL_19;
    }

    __break(1u);
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    v11 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v12)
    {
      [(__CFString *)v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v14;
      v6 = v15;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  __break(1u);
}

char *closure #2 in static AttributeScope.scopeDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 16);
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v4 = v12;
    if (*(v10 + 24) < v16)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
      v17 = v10;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
      if ((v4 & 1) == (v18 & 1))
      {
        goto LABEL_7;
      }

      v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v17 = v10;
LABEL_7:
      if (v4)
      {
LABEL_8:
        v19 = (*(v17 + 56) + 16 * v11);
        *v19 = a2;
        v19[1] = a3;

LABEL_27:
        *(a1 + 16) = v17;
        return result;
      }

LABEL_26:
      result = specialized _NativeDictionary._insert(at:key:value:)(v11, a4, a2, a3, v17);
      goto LABEL_27;
    }
  }

  v33 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18ReflectionInternal4TypeV10Foundation16ScopeDescription33_4D406B8DD906487F9F362CE42830919ELLVGMd);
  v21 = static _DictionaryStorage.copy(original:)();
  v17 = v21;
  if (!*(v10 + 16))
  {
LABEL_25:

    v11 = v33;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  result = (v21 + 64);
  __src = (v10 + 64);
  v22 = ((1 << *(v17 + 32)) + 63) >> 6;
  if (v17 != v10 || result >= &__src[8 * v22])
  {
    result = memmove(result, __src, 8 * v22);
  }

  v23 = 0;
  *(v17 + 16) = *(v10 + 16);
  v24 = 1 << *(v10 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v10 + 64);
  v27 = (v24 + 63) >> 6;
  if (v26)
  {
    do
    {
      v28 = __clz(__rbit64(v26));
      v34 = (v26 - 1) & v26;
LABEL_23:
      v31 = v28 | (v23 << 6);
      v32 = *(*(v10 + 56) + 16 * v31);
      *(*(v17 + 48) + 8 * v31) = *(*(v10 + 48) + 8 * v31);
      *(*(v17 + 56) + 16 * v31) = v32;

      v26 = v34;
    }

    while (v34);
  }

  v29 = v23;
  while (1)
  {
    v23 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v23 >= v27)
    {
      goto LABEL_25;
    }

    v30 = *&__src[8 * v23];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v34 = (v30 - 1) & v30;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t ScopeDescription.merge(_:)(uint64_t a1, uint64_t a2)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = v2;
  v97 = a1;
  v5 = *v2;
  v102 = *v2;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v13 = v11;
LABEL_12:
    v14 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = (*(v97 + 48) + v14);
    v17 = *v15;
    v16 = v15[1];
    v100 = *(*(v97 + 56) + v14);

    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
    v20 = *(v5 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_78;
    }

    v24 = v19;
    if (*(v5 + 24) >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v25 = v5;
      }

      else
      {
        v91 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
        v30 = static _DictionaryStorage.copy(original:)();
        v25 = v30;
        if (*(v5 + 16))
        {
          v31 = (v30 + 64);
          v32 = (v5 + 64);
          v33 = ((1 << *(v25 + 32)) + 63) >> 6;
          if (v25 != v5 || v31 >= &v32[8 * v33])
          {
            memmove(v31, v32, 8 * v33);
          }

          v34 = 0;
          *(v25 + 16) = *(v5 + 16);
          v35 = 1 << *(v5 + 32);
          if (v35 < 64)
          {
            v36 = ~(-1 << v35);
          }

          else
          {
            v36 = -1;
          }

          v37 = v36 & *(v5 + 64);
          v38 = (v35 + 63) >> 6;
          v92 = v38;
          if (v37)
          {
            do
            {
              v39 = __clz(__rbit64(v37));
              v94 = (v37 - 1) & v37;
LABEL_35:
              v42 = 16 * (v39 | (v34 << 6));
              v43 = (*(v5 + 48) + v42);
              v45 = *v43;
              v44 = v43[1];
              v46 = *(*(v5 + 56) + v42);
              v47 = (*(v25 + 48) + v42);
              *v47 = v45;
              v47[1] = v44;
              *(*(v25 + 56) + v42) = v46;

              v38 = v92;
              v37 = v94;
            }

            while (v94);
          }

          v40 = v34;
          while (1)
          {
            v34 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_82;
            }

            if (v34 >= v38)
            {
              break;
            }

            v41 = *(v5 + 64 + 8 * v34);
            ++v40;
            if (v41)
            {
              v39 = __clz(__rbit64(v41));
              v94 = (v41 - 1) & v41;
              goto LABEL_35;
            }
          }
        }

        v102 = v25;
        v18 = v91;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native & 1);
      v25 = v102;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_84;
      }
    }

    v9 &= v9 - 1;
    if (v24)
    {
      v12 = v18;

      *(*(v25 + 56) + 16 * v12) = v100;
    }

    else
    {
      *(v25 + 8 * (v18 >> 6) + 64) |= 1 << v18;
      v27 = (*(v25 + 48) + 16 * v18);
      *v27 = v17;
      v27[1] = v16;
      *(*(v25 + 56) + 16 * v18) = v100;
      v28 = *(v25 + 16);
      v22 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v22)
      {
        goto LABEL_80;
      }

      *(v25 + 16) = v29;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v11 = v13;
    v5 = v25;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_77;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  *v96 = v5;

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v49 = v96[1];
  v103 = v49;
  v50 = 1 << *(a2 + 32);
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  else
  {
    v51 = -1;
  }

  v52 = v51 & *(a2 + 64);
  v53 = (v50 + 63) >> 6;

  v54 = 0;
  while (v52)
  {
    v56 = v54;
LABEL_49:
    v57 = (v56 << 10) | (16 * __clz(__rbit64(v52)));
    v58 = (*(a2 + 48) + v57);
    v60 = *v58;
    v59 = v58[1];
    v101 = *(*(a2 + 56) + v57);

    v61 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v59);
    v63 = *(v49 + 16);
    v64 = (v62 & 1) == 0;
    v22 = __OFADD__(v63, v64);
    v65 = v63 + v64;
    if (v22)
    {
      goto LABEL_79;
    }

    v66 = v62;
    if (*(v49 + 24) >= v65)
    {
      if (v48)
      {
        v67 = v49;
      }

      else
      {
        v93 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation36MarkdownDecodableAttributedStringKey_pXpGMd);
        v72 = static _DictionaryStorage.copy(original:)();
        v67 = v72;
        if (*(v49 + 16))
        {
          v73 = (v72 + 64);
          v74 = (v49 + 64);
          v75 = ((1 << *(v67 + 32)) + 63) >> 6;
          if (v67 != v49 || v73 >= &v74[8 * v75])
          {
            memmove(v73, v74, 8 * v75);
          }

          v76 = 0;
          *(v67 + 16) = *(v49 + 16);
          v77 = 1 << *(v49 + 32);
          if (v77 < 64)
          {
            v78 = ~(-1 << v77);
          }

          else
          {
            v78 = -1;
          }

          v79 = v78 & *(v49 + 64);
          v80 = (v77 + 63) >> 6;
          v95 = v80;
          if (v79)
          {
            do
            {
              v81 = __clz(__rbit64(v79));
              v98 = (v79 - 1) & v79;
LABEL_72:
              v84 = 16 * (v81 | (v76 << 6));
              v85 = (*(v49 + 48) + v84);
              v87 = *v85;
              v86 = v85[1];
              v88 = *(*(v49 + 56) + v84);
              v89 = (*(v67 + 48) + v84);
              *v89 = v87;
              v89[1] = v86;
              *(*(v67 + 56) + v84) = v88;

              v80 = v95;
              v79 = v98;
            }

            while (v98);
          }

          v82 = v76;
          while (1)
          {
            v76 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_83;
            }

            if (v76 >= v80)
            {
              break;
            }

            v83 = *(v49 + 64 + 8 * v76);
            ++v82;
            if (v83)
            {
              v81 = __clz(__rbit64(v83));
              v98 = (v83 - 1) & v83;
              goto LABEL_72;
            }
          }
        }

        v103 = v67;
        v61 = v93;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, v48 & 1);
      v67 = v103;
      v61 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v59);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_84;
      }
    }

    v52 &= v52 - 1;
    if (v66)
    {
      v55 = v61;

      *(*(v67 + 56) + 16 * v55) = v101;
    }

    else
    {
      *(v67 + 8 * (v61 >> 6) + 64) |= 1 << v61;
      v69 = (*(v67 + 48) + 16 * v61);
      *v69 = v60;
      v69[1] = v59;
      *(*(v67 + 56) + 16 * v61) = v101;
      v70 = *(v67 + 16);
      v22 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v22)
      {
        goto LABEL_81;
      }

      *(v67 + 16) = v71;
    }

    v48 = 1;
    v54 = v56;
    v49 = v67;
  }

  while (1)
  {
    v56 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v56 >= v53)
    {

      v96[1] = v49;
      return result;
    }

    v52 = *(a2 + 64 + 8 * v56);
    ++v54;
    if (v52)
    {
      goto LABEL_49;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}