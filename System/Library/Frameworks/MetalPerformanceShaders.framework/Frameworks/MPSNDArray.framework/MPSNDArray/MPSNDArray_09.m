void sub_239A9A9C4(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
    if (!STACK[0x540])
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!STACK[0x540])
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x540]);
  if (!v3)
  {
LABEL_4:
    if (!v1)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(v1);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(v3);
  if (!v1)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorAMD::EncodeNDArrayConvolutionGradientWithWeights(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if ((*(*a1 + 72))(a1, a2, a5))
  {
    v224 = a4;
    v204 = [*(a5 + 16) count];
    v10 = *(a2 + 224);
    v11 = *(a2 + 228);
    v254 = *(a2 + 144);
    v252 = *(a2 + 152);
    v227 = *(a2 + 200);
    v223 = *(a2 + 208);
    v12 = *(a2 + 160);
    v251 = *(a2 + 168);
    v248 = *(a2 + 192);
    v225 = *(a2 + 232);
    v221 = *(a2 + 240);
    v226 = *(a2 + 176);
    v246 = a2;
    v222 = *(a2 + 184);
    v13 = [*(a5 + 232) inputTensorAtIndex:0];
    v233 = [*(a5 + 232) inputTensorAtIndex:1];
    v14 = [*(a5 + 232) inputTensorAtIndex:2];
    v237 = v13;
    v239 = [*(a5 + 232) outputTensorAtIndex:0];
    if (*v13 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v14 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v239 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v17 = v13[2];
    v19 = *v17;
    v18 = v17[1];
    v235 = v14;
    if (v18 != v19)
    {
      if (((v18 - v19) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v21 = *(v239 + 16);
    v23 = *v21;
    v22 = v21[1];
    if (v22 != v23)
    {
      if (((v22 - v23) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v24 = *(v14 + 16);
    v26 = *v24;
    v25 = v24[1];
    v245 = a5;
    if (v25 != v26)
    {
      if (((v25 - v26) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v15.i32[0] = GetAxisIndexForDataFormat(MPSNDArrayConvolution2DDataFormat)::axis[v10];
    v27 = vmovl_u8(v15).u64[0];
    v16.i32[0] = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution2DWeightsFormat)::axis[v11];
    v28 = vmovl_u8(v16).u64[0];
    v29 = (8 * v27);
    v30 = *v29;
    v31 = *(8 * WORD1(v27));
    v230 = *(8 * WORD2(v27));
    v247 = *v29;
    v231 = *(8 * HIWORD(v27));
    v32 = *(8 * v28);
    v241 = *(8 * WORD1(v28));
    v249 = *(8 * WORD2(v28));
    v243 = *(8 * HIWORD(v28));
    if (v31 != v12 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v31 != v251 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v30 != v247 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v31 != v32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v31 / v248 != v241 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v249 != v252 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v243 != v254 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v32 != v251 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v255 = v12 / v248;
    if (v241 != v12 / v248 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v237 + 2) != *(v14 + 8) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v203 = a3;
    v33 = [*(a5 + 232) graph];
    v34 = *(v33 + 8);
    v35 = *v34;
    v36 = v34[1];
    if (*v34 == v36)
    {
      goto LABEL_504;
    }

    v37 = -1;
    do
    {
      v38 = *v35;
      if (v38 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v33) + 32))
      {
        v37 = *(*v35 + 76);
      }

      MPSKernelDAG::GetCoreOpInputAtIndex(v33);
      ++v35;
    }

    while (v35 != v36);
    if (v37 == -1)
    {
LABEL_504:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v37 = 0;
    }

    v39 = [*(a5 + 16) objectAtIndexedSubscript:v37];
    v40 = *(*(a5 + 8) + 80 * v37 + 64);
    v253 = *(a5 + 112);
    v190 = *(a5 + 96);
    v41 = *(a5 + 208);
    v189 = *(a5 + 192);
    v42 = MEMORY[0x277CD7410];
    v43 = v39;
    if (*(v39 + *MEMORY[0x277CD7410]) != v31)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    if (*&v43[*v42 + 4] != v231 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v43[*v42 + 8] != v230 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v43[*v42 + 12] != v30 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v253[*v42] != v31 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v253[*v42 + 4] != v231 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v253[*v42 + 8] != v230 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v253[*v42 + 12] != v247 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v41[*v42] != v32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v41[*v42 + 4] != v241 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v41[*v42 + 8] != v243 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v41[*v42 + 12] != v249 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v44 = *(v237 + 2);
    if (v44 > 285212703)
    {
      if (v44 <= 536870915)
      {
        if (v44 > 301989895)
        {
          if (v44 == 301989896)
          {
            v45 = 512;
            v46 = *(v233 + 8);
            if (v46 > 285212703)
            {
              goto LABEL_93;
            }

            goto LABEL_116;
          }

          if (v44 == 335544328)
          {
            v45 = 544;
            v46 = *(v233 + 8);
            if (v46 <= 285212703)
            {
              goto LABEL_116;
            }

            goto LABEL_93;
          }
        }

        else
        {
          if (v44 == 285212704)
          {
            v45 = 416;
            v46 = *(v233 + 8);
            if (v46 > 285212703)
            {
              goto LABEL_93;
            }

            goto LABEL_116;
          }

          if (v44 == 285212736)
          {
            v45 = 448;
            v46 = *(v233 + 8);
            if (v46 <= 285212703)
            {
              goto LABEL_116;
            }

            goto LABEL_93;
          }
        }
      }

      else if (v44 <= 536870927)
      {
        if (v44 == 536870916)
        {
          v45 = 0;
          v46 = *(v233 + 8);
          if (v46 > 285212703)
          {
            goto LABEL_93;
          }

          goto LABEL_116;
        }

        if (v44 == 536870920)
        {
          v45 = 32;
          v46 = *(v233 + 8);
          if (v46 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        }
      }

      else
      {
        switch(v44)
        {
          case 536870928:
            v45 = 64;
            v46 = *(v233 + 8);
            if (v46 <= 285212703)
            {
              goto LABEL_116;
            }

            goto LABEL_93;
          case 536870944:
            v45 = 96;
            v46 = *(v233 + 8);
            if (v46 <= 285212703)
            {
              goto LABEL_116;
            }

            goto LABEL_93;
          case 536870976:
            v45 = 128;
            v46 = *(v233 + 8);
            if (v46 <= 285212703)
            {
              goto LABEL_116;
            }

            goto LABEL_93;
        }
      }
    }

    else if (v44 <= 31)
    {
      if (v44 > 7)
      {
        if (v44 == 8)
        {
          v45 = 192;
          v46 = *(v233 + 8);
          if (v46 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        }

        if (v44 == 16)
        {
          v45 = 224;
          v46 = *(v233 + 8);
          if (v46 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        }
      }

      else
      {
        if (v44 == -1879048176)
        {
          v45 = 384;
          v46 = *(v233 + 8);
          if (v46 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        }

        if (v44 == 4)
        {
          v45 = 160;
          v46 = *(v233 + 8);
          if (v46 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        }
      }
    }

    else if (v44 <= 268435463)
    {
      if (v44 == 32)
      {
        v45 = 256;
        v46 = *(v233 + 8);
        if (v46 <= 285212703)
        {
          goto LABEL_116;
        }

        goto LABEL_93;
      }

      if (v44 == 64)
      {
        v45 = 288;
        v46 = *(v233 + 8);
        if (v46 <= 285212703)
        {
          goto LABEL_116;
        }

        goto LABEL_93;
      }
    }

    else
    {
      switch(v44)
      {
        case 268435464:
          v45 = 480;
          v46 = *(v233 + 8);
          if (v46 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        case 268435472:
          v45 = 320;
          v46 = *(v233 + 8);
          if (v46 <= 285212703)
          {
            goto LABEL_116;
          }

          goto LABEL_93;
        case 268435488:
          v45 = 352;
          v46 = *(v233 + 8);
          if (v46 > 285212703)
          {
            goto LABEL_93;
          }

LABEL_116:
          if (v46 <= 31)
          {
            if (v46 > 7)
            {
              if (v46 == 8)
              {
                v47 = 6144;
                v48 = *(v235 + 8);
                if (v48 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
              }

              if (v46 == 16)
              {
                v47 = 7168;
                v48 = *(v235 + 8);
                if (v48 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
              }
            }

            else
            {
              if (v46 == -1879048176)
              {
                v47 = 12288;
                v48 = *(v235 + 8);
                if (v48 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
              }

              if (v46 == 4)
              {
                v47 = 5120;
                v48 = *(v235 + 8);
                if (v48 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
              }
            }
          }

          else if (v46 <= 268435463)
          {
            if (v46 == 32)
            {
              v47 = 0x2000;
              v48 = *(v235 + 8);
              if (v48 <= 285212703)
              {
                goto LABEL_154;
              }

              goto LABEL_137;
            }

            if (v46 == 64)
            {
              v47 = 9216;
              v48 = *(v235 + 8);
              if (v48 <= 285212703)
              {
                goto LABEL_154;
              }

              goto LABEL_137;
            }
          }

          else
          {
            switch(v46)
            {
              case 268435464:
                v47 = 15360;
                v48 = *(v235 + 8);
                if (v48 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
              case 268435472:
                v47 = 10240;
                v48 = *(v235 + 8);
                if (v48 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
              case 268435488:
                v47 = 11264;
                v48 = *(v235 + 8);
                if (v48 <= 285212703)
                {
                  goto LABEL_154;
                }

                goto LABEL_137;
            }
          }

LABEL_210:
          v47 = 18432;
          v48 = *(v235 + 8);
          if (v48 <= 285212703)
          {
            goto LABEL_154;
          }

LABEL_137:
          if (v48 <= 536870915)
          {
            if (v48 > 301989895)
            {
              if (v48 == 301989896)
              {
                v49 = 0x80000;
                goto LABEL_213;
              }

              if (v48 == 335544328)
              {
                v49 = 557056;
                goto LABEL_213;
              }
            }

            else
            {
              if (v48 == 285212704)
              {
                v49 = 425984;
                goto LABEL_213;
              }

              if (v48 == 285212736)
              {
                v49 = 458752;
                goto LABEL_213;
              }
            }
          }

          else if (v48 <= 536870927)
          {
            if (v48 == 536870916)
            {
              v201 = 0;
              goto LABEL_214;
            }

            if (v48 == 536870920)
            {
              v49 = 0x8000;
              goto LABEL_213;
            }
          }

          else
          {
            switch(v48)
            {
              case 536870928:
                v49 = 0x10000;
                goto LABEL_213;
              case 536870944:
                v49 = 98304;
                goto LABEL_213;
              case 536870976:
                v49 = 0x20000;
LABEL_213:
                v201 = v49;
LABEL_214:
                v50 = *(v239 + 8);
                if (v50 > 285212703)
                {
                  if (v50 <= 536870915)
                  {
                    if (v50 > 301989895)
                    {
                      if (v50 == 301989896)
                      {
                        v51 = 16;
                        goto LABEL_258;
                      }

                      if (v50 == 335544328)
                      {
                        v51 = 17;
                        goto LABEL_258;
                      }
                    }

                    else
                    {
                      if (v50 == 285212704)
                      {
                        v51 = 13;
                        goto LABEL_258;
                      }

                      if (v50 == 285212736)
                      {
                        v51 = 14;
                        goto LABEL_258;
                      }
                    }
                  }

                  else if (v50 <= 536870927)
                  {
                    if (v50 == 536870916)
                    {
                      v199 = 0;
                      goto LABEL_259;
                    }

                    if (v50 == 536870920)
                    {
                      v51 = 1;
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    switch(v50)
                    {
                      case 536870928:
                        v51 = 2;
                        goto LABEL_258;
                      case 536870944:
                        v51 = 3;
                        goto LABEL_258;
                      case 536870976:
                        v51 = 4;
                        goto LABEL_258;
                    }
                  }
                }

                else if (v50 <= 31)
                {
                  if (v50 > 7)
                  {
                    if (v50 == 8)
                    {
                      v51 = 6;
                      goto LABEL_258;
                    }

                    if (v50 == 16)
                    {
                      v51 = 7;
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    if (v50 == -1879048176)
                    {
                      v51 = 12;
                      goto LABEL_258;
                    }

                    if (v50 == 4)
                    {
                      v51 = 5;
                      goto LABEL_258;
                    }
                  }
                }

                else if (v50 <= 268435463)
                {
                  if (v50 == 32)
                  {
                    v51 = 8;
                    goto LABEL_258;
                  }

                  if (v50 == 64)
                  {
                    v51 = 9;
                    goto LABEL_258;
                  }
                }

                else
                {
                  switch(v50)
                  {
                    case 268435464:
                      v51 = 15;
                      goto LABEL_258;
                    case 268435472:
                      v51 = 10;
                      goto LABEL_258;
                    case 268435488:
                      v51 = 11;
LABEL_258:
                      v199 = v51;
LABEL_259:
                      v307 = __PAIR64__(v231, v247);
                      v308 = __PAIR64__(v231, v230);
                      v309 = __PAIR64__(v255, v230);
                      v310 = __PAIR64__(v254, v251);
                      v311 = v252;
                      v232 = v43;
                      v228 = v41;
                      v197 = v45;
                      if (LOBYTE(v246[3]._options) == 1 && (isa = v246[3].super.isa) != 0 || (isa = a1[3]) != 0)
                      {
                        v53 = *isa;
                        LOWORD(v54) = isa[1];
                        v229 = isa[2];
                        v55 = isa[3];
                        v56 = isa[4];
                        v219 = isa[5];
                        v214 = isa[6];
                        v57 = isa[7];
                        v58 = isa[8];
                        v218 = isa[9];
                        v217 = isa[10];
                        LOWORD(v250) = isa[11];
                        v191 = isa[12];
                        v213 = isa[13];
                        v212 = isa[14];
                        v59 = isa[15];
LABEL_263:
                        v195 = v59;
                        goto LABEL_264;
                      }

                      v71 = a1[5];
                      if (v71)
                      {
                        v72 = a1[4];
                        v73 = 66;
                        v74 = a1[5];
                        do
                        {
                          if (v307 == *(v72 + v73 - 66) && v308 == *(v72 + v73 - 58) && v309 == *(v72 + v73 - 50) && v310 == *(v72 + v73 - 42) && v311 == *(v72 + v73 - 34))
                          {
                            MPSKernel_LogInfo(v246, 4uLL, "Found exact match in table\n", v255);
                            v171 = (a1[4] + v73);
                            v53 = *(v171 - 15);
                            LOWORD(v54) = *(v171 - 14);
                            v229 = *(v171 - 13);
                            v55 = *(v171 - 12);
                            v56 = *(v171 - 11);
                            v219 = *(v171 - 10);
                            v214 = *(v171 - 9);
                            v57 = *(v171 - 8);
                            v58 = *(v171 - 7);
                            v218 = *(v171 - 6);
                            v217 = *(v171 - 5);
                            LOWORD(v250) = *(v171 - 4);
                            v194 = *(v171 - 3);
                            v213 = *(v171 - 2);
                            v212 = *(v171 - 1);
                            v59 = *v171;
                            goto LABEL_263;
                          }

                          v73 += 68;
                          --v74;
                        }

                        while (v74);
                        v79 = v72 + 20;
                        v80 = 64;
                        while (*(v79 + v80 - 64) != v255 || *(v79 + v80 - 60) != v251 || *(v79 + v80 - 56) != v254 || *(v79 + v80 - 52) != v252)
                        {
                          v80 += 68;
                          if (!--v71)
                          {
                            goto LABEL_349;
                          }
                        }

                        MPSKernel_LogInfo(v246, 4uLL, "Found match in table with tile parameters\n");
                        v81 = (a1[4] + v80);
                        v53 = *(v81 - 14);
                        LOWORD(v54) = *(v81 - 13);
                        v82 = *(v81 - 12);
                        v56 = *(v81 - 10);
                        v219 = *(v81 - 9);
                        v214 = *(v81 - 8);
                        v57 = *(v81 - 7);
                        v58 = *(v81 - 6);
                        v218 = *(v81 - 5);
                        v217 = *(v81 - 4);
                        v192 = *(v81 - 2);
                        v213 = *(v81 - 1);
                        v212 = *v81;
                        v83 = v247 >= (1 << v82);
                        if (v247 < (1 << v82))
                        {
                          v82 = 3;
                        }

                        v229 = v82;
                        if (v83)
                        {
                          v55 = *(v81 - 11);
                        }

                        else
                        {
                          v55 = 0;
                        }

                        v84 = v252 * v254 * v251 * v255;
                        v85 = v231 * v230;
                        v86 = ((v84 >> 22) & 0xFFFFFFFFFFLL) == 0 && v85 >= 2;
                        LOWORD(v250) = 1;
                        if (v86)
                        {
                          v87 = 4 * v84;
                          v88 = v85 - 1;
                          v89 = 1;
                          do
                          {
                            v250 = v89;
                            if (v89 > 0x80)
                            {
                              break;
                            }

                            if (v87 >> 23)
                            {
                              break;
                            }

                            v89 *= 2;
                            v87 *= 2;
                          }

                          while ((v88 + 2 * v250) / (2 * v250) > 1);
                        }

                        v59 = v255 % (1 << v53) != 0;
                        goto LABEL_263;
                      }

LABEL_349:
                      MPSKernel_LogInfo(v246, 4uLL, "No match found. Falling to default\n");
                      v139 = (*(*a1 + 80))(a1);
                      if (v255 >= 0x20)
                      {
                        v140 = 1;
                      }

                      else
                      {
                        v140 = v252 * v254;
                      }

                      v141 = v140 * v255;
                      v142 = 63 - __clz(v141);
                      if (v142 >= 6)
                      {
                        v142 = 6;
                      }

                      if (v142 <= 2)
                      {
                        LODWORD(v142) = 2;
                      }

                      if (v141)
                      {
                        v53 = v142;
                      }

                      else
                      {
                        v53 = 2;
                      }

                      v54 = 63 - __clz(v251);
                      if (v54 >= 6)
                      {
                        v54 = 6;
                      }

                      if (v54 <= 2)
                      {
                        LOWORD(v54) = 2;
                      }

                      if (!v251)
                      {
                        LOWORD(v54) = 2;
                      }

                      LOBYTE(v58) = v139;
                      v143 = 1 << (v54 + v53 - 4);
                      for (i = (1 << (v139 - 2)); v143 < i; v143 = 2 * (v143 & 0x7FFF))
                      {
                        LOWORD(v54) = v54 + 1;
                      }

                      if (v53 >= 3)
                      {
                        v145 = 3;
                      }

                      else
                      {
                        v145 = v53;
                      }

                      v146 = v145 - 2;
                      v147 = i >> (v145 - 2);
                      v148 = 63 - __clz(v147);
                      if (v147)
                      {
                        v149 = v148;
                      }

                      else
                      {
                        v149 = 0;
                      }

                      v150 = v149;
                      if (v149 + 2 <= v54)
                      {
                        v155 = v146;
                        LOBYTE(v214) = v149;
                        LOBYTE(v57) = v146;
                      }

                      else
                      {
                        if (v54 >= 3u)
                        {
                          v151 = 3;
                        }

                        else
                        {
                          v151 = v54;
                        }

                        v152 = v151 - 2;
                        v150 = (v151 - 2);
                        v153 = i >> v152;
                        v154 = 63 - __clz(v153);
                        if (v153)
                        {
                          LOWORD(v155) = v154;
                        }

                        else
                        {
                          LOWORD(v155) = 0;
                        }

                        LOBYTE(v57) = v155;
                        v155 = v155;
                        v156 = v155 + 2;
                        if (v53 > v155 + 2)
                        {
                          v156 = v53;
                        }

                        v53 = v156;
                        LOBYTE(v214) = v152;
                      }

                      LOBYTE(v218) = v150 + 3 <= v54;
                      v157 = v155 + 3;
                      v158 = v139 == 6 || v157 > v53;
                      v159 = !v158;
                      LOBYTE(v219) = v159;
                      v160 = v155 + 4;
                      if (!v158)
                      {
                        v157 = v160;
                      }

                      LOBYTE(v217) = v157 <= v53;
                      LOWORD(v250) = 1;
                      v161 = (1 << v53);
                      v162 = v161 - 1;
                      v163 = (v251 + (1 << v54) - 1) / (1 << v54) * ((v161 - 1 + v255) / v161);
                      v164 = v231 * v230;
                      v165 = 4 * v252 * v254 * v251 * v255;
                      if (v163 <= 0x3F && v164 >= 2 && v165 >> 24 == 0)
                      {
                        if (v163 <= 0x1F && v164 - 3 <= 0xFFFFFFFFFFFFFFFBLL && v165 >> 23 == 0)
                        {
                          if (v163 <= 0xF && v164 - 5 <= 0xFFFFFFFFFFFFFFF7 && v165 >> 22 == 0)
                          {
                            LOWORD(v250) = 4;
                            if (v163 > 7)
                            {
                              goto LABEL_418;
                            }

                            if (v164 - 9 > 0xFFFFFFFFFFFFFFEFLL)
                            {
                              goto LABEL_418;
                            }

                            if (v165 >> 21)
                            {
                              goto LABEL_418;
                            }

                            LOWORD(v250) = 8;
                            if (v163 > 3)
                            {
                              goto LABEL_418;
                            }

                            if (v164 - 17 > 0xFFFFFFFFFFFFFFDFLL)
                            {
                              goto LABEL_418;
                            }

                            if (v165 >> 20)
                            {
                              goto LABEL_418;
                            }

                            LOWORD(v250) = 16;
                            if (v163 > 1)
                            {
                              goto LABEL_418;
                            }

                            if (v164 - 33 > 0xFFFFFFFFFFFFFFBFLL)
                            {
                              goto LABEL_418;
                            }

                            if (v165 >> 19)
                            {
                              goto LABEL_418;
                            }

                            LOWORD(v250) = 32;
                            if (v163 || v164 - 65 > 0xFFFFFFFFFFFFFF7FLL || v165 >> 18)
                            {
                              goto LABEL_418;
                            }

                            v174 = v164 - 129;
                            if (v165 >= 0x20000 || v174 >= 0xFFFFFFFFFFFFFF00)
                            {
                              v170 = 64;
                            }

                            else
                            {
                              v170 = 128;
                            }
                          }

                          else
                          {
                            v170 = 2;
                          }
                        }

                        else
                        {
                          v170 = 1;
                        }

                        LOWORD(v250) = v170;
                      }

LABEL_418:
                      v55 = 0;
                      LOBYTE(v56) = 0;
                      v195 = (v162 & v255) != 0;
                      v213 = 1;
                      v229 = 3;
                      v212 = 1;
LABEL_264:
                      v244 = (1 << v54);
                      if (v54 < 2u || (v60 = vcnt_s8(v244), v60.i16[0] = vaddlv_u8(v60), v60.u32[0] >= 2uLL))
                      {
                        if (MTLReportFailureTypeEnabled())
                        {
                          MTLReportFailure();
                        }
                      }

                      v242 = (1 << v53);
                      if (v53 < 2 || (v61 = vcnt_s8(v242), v61.i16[0] = vaddlv_u8(v61), v61.u32[0] >= 2uLL))
                      {
                        if (MTLReportFailureTypeEnabled())
                        {
                          MTLReportFailure();
                        }
                      }

                      v234 = (1 << v229);
                      if (v229 < 2 || (v62 = vcnt_s8(v234), v62.i16[0] = vaddlv_u8(v62), v62.u32[0] >= 2uLL))
                      {
                        if (MTLReportFailureTypeEnabled())
                        {
                          MTLReportFailure();
                        }
                      }

                      v211 = 1 << v56;
                      if (*&v244 % (4 * v211 * (1 << v214) * (1 << v218)) && MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                      }

                      v210 = 1 << v219;
                      if (*&v242 % (4 * v210 * (1 << v57) * (1 << v217)) && MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                      }

                      v63 = 1 << v55;
                      v64 = *&v234 / v63;
                      v209 = v63;
                      if (*&v234 % v63 && MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                      }

                      if ((v64 & (v64 - 1)) != 0 && MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                      }

                      v208 = 1 << v58;
                      if (v208 != 4 * (1 << v214) * (1 << v57) && MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                      }

                      v65 = [*(v245 + 232) finalOp];
                      v66 = (*(*v65 + 16))(v65);
                      v67 = 0;
                      if (*(v239 + 8) == 268435488)
                      {
                        v68 = v66 ^ 1u;
                      }

                      else
                      {
                        v68 = 1;
                      }

                      *(v237 + 2);
                      *(v235 + 8);
                      v240 = v251 / v248;
                      v236 = v55;
                      v299 = -1;
                      v300 = -1;
                      v301 = 0;
                      v302 = v47 | v197 | v201 | v199;
                      v303 = 0u;
                      v304 = 0u;
                      v306 = 0;
                      v69 = *(&v246->super.isa + *MEMORY[0x277CD7370]);
                      v305 = v204 | 0x10100;
                      if (v250 > 1u)
                      {
                        v70 = v232;
                      }

                      else
                      {
                        v70 = v232;
                        if (v68)
                        {
                          v67 = *(v245 + 232);
                        }
                      }

                      v179 = *(&v246->super.isa + *MEMORY[0x277CD7360]);
                      v181 = *(&v246->super.isa + *MEMORY[0x277CD7368]);
                      v177 = v67;
                      MPSLibrary::CreateUberShaderKey();
                      v90 = *(&v246->super.isa + *MEMORY[0x277CD7370]);
                      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                      [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
                      if (v208 * v210 * v209 * v211 > [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup] && MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                      }

                      v187 = v204 | 0x10100;
                      v188 = v68;
                      if (v195)
                      {
                        v186 = v252 * v254;
                        v92 = v255 * v252 * v254;
                        v193 = (v92 + *&v242 - 1) / *&v242;
                        v196 = (v240 + *&v244 - 1) / *&v244 * v248;
                      }

                      else
                      {
                        v193 = v252 * v254;
                        v196 = (v240 + *&v244 - 1) / *&v244 * v248 * ((v255 + *&v242 - 1) / *&v242);
                        v92 = v255 * v252 * v254;
                        v186 = v252 * v254;
                      }

                      v93 = *MEMORY[0x277CD7400];
                      v220 = *&v70[v93];
                      v94 = *MEMORY[0x277CD73C8];
                      v95 = *&v70[v94];
                      v96 = *&v253[v93];
                      v97 = *&v253[v94];
                      v98 = *&v228[v93];
                      v99 = *&v228[v94];
                      MEMORY[0x23EE7C450](v298, v224, 0);
                      TempBuffer = [v228 buffer];
                      if (v250 >= 2u)
                      {
                        TempBuffer = MPSAutoCache::GetTempBuffer(v298, 4 * v250 * ((v92 * v251 + 3) & 0xFFFFFFFFFFFFFFFCLL), 0);
                      }

                      MPSGetUShortDivisorMagicNumber();
                      v215 = v100;
                      MPSGetUShortDivisorMagicNumber();
                      v206 = v101;
                      MPSGetUShortDivisorMagicNumber();
                      v205 = v102;
                      MPSGetUShortDivisorMagicNumber();
                      v202 = v103;
                      MPSGetUIntDivisorMagicNumber();
                      v200 = v104;
                      MPSGetUShortDivisorMagicNumber();
                      v198 = v105;
                      MPSGetUIntDivisorMagicNumber();
                      v185 = v106;
                      MPSGetUIntDivisorMagicNumber();
                      v184 = v107;
                      MPSGetUIntDivisorMagicNumber();
                      v183 = v108;
                      v109 = (v231 * v230);
                      v110 = v96 / (v97 >> 3);
                      v111 = v215;
                      HIWORD(v111) = 0;
                      v112 = v206;
                      HIWORD(v112) = 0;
                      v113 = v205;
                      HIWORD(v113) = 0;
                      v115 = v200;
                      v114 = v202;
                      HIWORD(v114) = 0;
                      HIDWORD(v115) = 0;
                      v116 = v198;
                      HIWORD(v116) = 0;
                      v294 = 0u;
                      v295 = 0u;
                      v296 = 0u;
                      v297 = 0u;
                      LODWORD(v117) = v251;
                      v207 = v98 / (v99 >> 3);
                      if ((v250 & 0xFFFE) == 0)
                      {
                        v117 = v98 / (v99 >> 3);
                      }

                      v216 = (v92 * v251 + 3) & 0xFFFFFFFC;
                      v280[0] = v216;
                      v280[1] = v117;
                      v280[2] = v109 * v110;
                      v281 = v231 * v230 * (v220 / (v95 >> 3));
                      v282 = (v109 * v110) << v229;
                      v283 = v281 << v229;
                      v284 = (v109 + v250 - 1) / v250;
                      v285 = v231 * v230;
                      v286 = v111;
                      v287 = v112;
                      v288 = v113;
                      v289 = v114;
                      v290 = v115;
                      v291 = v116;
                      v292 = v92;
                      v293 = v255;
                      LODWORD(v294) = v251 / v248;
                      WORD2(v294) = v254;
                      WORD3(v294) = v252;
                      WORD4(v294) = v248;
                      HIDWORD(v294) = v247;
                      *&v295 = __PAIR64__(v230, v231);
                      *(&v295 + 1) = __PAIR64__(v230, v231);
                      *&v296 = __PAIR64__(v221, v225);
                      WORD5(v296) = v222;
                      WORD4(v296) = v226;
                      HIWORD(v296) = v223;
                      WORD6(v296) = v227;
                      LODWORD(v297) = v220 / (v95 >> 3);
                      DWORD1(v297) = v96 / (v97 >> 3);
                      if (v213)
                      {
                        v118 = MEMORY[0x277CD73C8];
                        v119 = v234.i32[0] * v242.i32[0] * (*&v232[*MEMORY[0x277CD73C8]] >> 3);
                        v120 = v203;
                        v121 = v245;
                        v122 = v246;
                        v123 = v236;
                        if (!v212)
                        {
                          goto LABEL_336;
                        }
                      }

                      else
                      {
                        v119 = 0;
                        v120 = v203;
                        v121 = v245;
                        v122 = v246;
                        v123 = v236;
                        v118 = MEMORY[0x277CD73C8];
                        if (!v212)
                        {
LABEL_336:
                          if (v123 && v119 <= 16 * v211 * (v209 >> 1) * v210 * v208)
                          {
                            v119 = 16 * v211 * (v209 >> 1) * v210 * v208;
                          }

                          [v120 setComputePipelineState:PipelineStateForMPSKey];
                          v124 = *(&v122->super.isa + *MEMORY[0x277CD7370]);
                          MPSLibrary::ReleaseComputeState();
                          v125 = *(&v122->super.isa + *MEMORY[0x277CD7370]);
                          MPSLibrary::ReleaseMPSKey();
                          MPSSetNDArraysOnComputeEncoder(v120, v121, 4, 0, 0);
                          [v120 setBuffer:objc_msgSend(v253 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v253, 0, 4, 0, 0) + v190, 29}];
                          [v120 setBuffer:objc_msgSend(v232 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v232, 0, 4, 0, 0) + v40, 28}];
                          if (v250 > 1u)
                          {
                            v128 = 0;
                            v127 = TempBuffer;
                          }

                          else
                          {
                            v126 = MPSGetLinearOffsetBytes(v228, 0, 4, 0, 0);
                            v127 = [v228 buffer];
                            v128 = v126 + v189;
                          }

                          [v120 setBuffer:v127 offset:v128 atIndex:27];
                          [v120 setBytes:v280 length:160 atIndex:26];
                          [v120 setThreadgroupMemoryLength:v119 atIndex:0];
                          [v120 setBuffer:0 offset:0 atIndex:25];
                          v260 = v193;
                          v261 = v196;
                          v262 = v250;
                          v273 = v208 * v210 * v209 * v211;
                          v274 = vdupq_n_s64(1uLL);
                          [v120 dispatchThreadgroups:&v260 threadsPerThreadgroup:&v273];
                          if (v250 >= 2u)
                          {
                            v129 = 0;
                            v274.i64[0] = -1;
                            v273 = -1;
                            v274.i64[1] = -1;
                            v275 = v188;
                            v276 = 0u;
                            v277 = 0u;
                            v278 = v187;
                            v279 = 0;
                            v130 = *(&v122->super.isa + *MEMORY[0x277CD7370]);
                            if (v188)
                            {
                              v129 = *(v121 + 232);
                            }

                            v180 = *(&v122->super.isa + *MEMORY[0x277CD7360]);
                            v182 = *(&v122->super.isa + *MEMORY[0x277CD7368]);
                            v178 = v129;
                            MPSLibrary::CreateUberShaderKey();
                            v131 = *(&v122->super.isa + *MEMORY[0x277CD7370]);
                            [v120 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v178, v180, v182, 0, 0}];
                            v132 = *(&v122->super.isa + *MEMORY[0x277CD7370]);
                            MPSLibrary::ReleaseComputeState();
                            v133 = *(&v122->super.isa + *MEMORY[0x277CD7370]);
                            MPSLibrary::ReleaseMPSKey();
                            MPSSetNDArraysOnComputeEncoder(v120, v121, 4, 0, 0);
                            [v120 setBuffer:TempBuffer offset:0 atIndex:28];
                            [v120 setBuffer:objc_msgSend(v228 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v228, 0, 4, 0, 0) + v189, 27}];
                            v134 = (v251 + 3) >> 2;
                            MPSGetUIntDivisorMagicNumber();
                            v136 = v184;
                            v135 = v185;
                            HIDWORD(v135) = 0;
                            HIDWORD(v136) = 0;
                            v137 = v183;
                            HIDWORD(v137) = 0;
                            HIDWORD(v138) = 0;
                            v267 = 0;
                            v268 = v136;
                            LODWORD(v260) = v255 * v134 * v186;
                            HIDWORD(v260) = v134;
                            LODWORD(v261) = v250;
                            HIDWORD(v261) = v251 & 3;
                            v262 = __PAIR64__(v207, v251);
                            v263 = v216;
                            v264 = v255;
                            v265 = v254;
                            v266 = v252;
                            v269 = v137;
                            v270 = v135;
                            v271 = v138;
                            v272 = 0u;
                            [v120 setBytes:&v260 length:128 atIndex:26];
                            [v120 setBuffer:0 offset:0 atIndex:25];
                            v258 = (v255 * v134 * v186 + 255) >> 8;
                            v259 = vdupq_n_s64(1uLL);
                            v256 = xmmword_239B0A7B0;
                            v257 = 1;
                            [v120 dispatchThreadgroups:&v258 threadsPerThreadgroup:&v256];
                          }

                          MPSAutoCache::~MPSAutoCache(v298);
                          operator delete(0);
                          operator delete(0);
                          operator delete(0);
                          return 0;
                        }
                      }

                      v119 += v234.i32[0] * v244.i32[0] * (*&v253[*v118] >> 3);
                      goto LABEL_336;
                  }
                }

                v51 = 18;
                goto LABEL_258;
            }
          }

LABEL_212:
          v49 = 589824;
          goto LABEL_213;
      }
    }

    v45 = 576;
    v46 = *(v233 + 8);
    if (v46 <= 285212703)
    {
      goto LABEL_116;
    }

LABEL_93:
    if (v46 <= 536870915)
    {
      if (v46 > 301989895)
      {
        if (v46 == 301989896)
        {
          v47 = 0x4000;
          v48 = *(v235 + 8);
          if (v48 > 285212703)
          {
            goto LABEL_137;
          }

          goto LABEL_154;
        }

        if (v46 == 335544328)
        {
          v47 = 17408;
          v48 = *(v235 + 8);
          if (v48 <= 285212703)
          {
            goto LABEL_154;
          }

          goto LABEL_137;
        }
      }

      else
      {
        if (v46 == 285212704)
        {
          v47 = 13312;
          v48 = *(v235 + 8);
          if (v48 > 285212703)
          {
            goto LABEL_137;
          }

          goto LABEL_154;
        }

        if (v46 == 285212736)
        {
          v47 = 14336;
          v48 = *(v235 + 8);
          if (v48 <= 285212703)
          {
            goto LABEL_154;
          }

          goto LABEL_137;
        }
      }
    }

    else if (v46 <= 536870927)
    {
      if (v46 == 536870916)
      {
        v47 = 0;
        v48 = *(v235 + 8);
        if (v48 > 285212703)
        {
          goto LABEL_137;
        }

        goto LABEL_154;
      }

      if (v46 == 536870920)
      {
        v47 = 1024;
        v48 = *(v235 + 8);
        if (v48 <= 285212703)
        {
          goto LABEL_154;
        }

        goto LABEL_137;
      }
    }

    else
    {
      switch(v46)
      {
        case 536870928:
          v47 = 2048;
          v48 = *(v235 + 8);
          if (v48 <= 285212703)
          {
            goto LABEL_154;
          }

          goto LABEL_137;
        case 536870944:
          v47 = 3072;
          v48 = *(v235 + 8);
          if (v48 <= 285212703)
          {
            goto LABEL_154;
          }

          goto LABEL_137;
        case 536870976:
          v47 = 4096;
          v48 = *(v235 + 8);
          if (v48 > 285212703)
          {
            goto LABEL_137;
          }

LABEL_154:
          if (v48 <= 31)
          {
            if (v48 > 7)
            {
              if (v48 == 8)
              {
                v49 = 196608;
                goto LABEL_213;
              }

              if (v48 == 16)
              {
                v49 = 229376;
                goto LABEL_213;
              }
            }

            else
            {
              if (v48 == -1879048176)
              {
                v49 = 393216;
                goto LABEL_213;
              }

              if (v48 == 4)
              {
                v49 = 163840;
                goto LABEL_213;
              }
            }
          }

          else if (v48 <= 268435463)
          {
            if (v48 == 32)
            {
              v49 = 0x40000;
              goto LABEL_213;
            }

            if (v48 == 64)
            {
              v49 = 294912;
              goto LABEL_213;
            }
          }

          else
          {
            switch(v48)
            {
              case 268435464:
                v49 = 491520;
                goto LABEL_213;
              case 268435472:
                v49 = 327680;
                goto LABEL_213;
              case 268435488:
                v49 = 360448;
                goto LABEL_213;
            }
          }

          goto LABEL_212;
      }
    }

    goto LABEL_210;
  }

  return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolutionGradientWithWeights(a1, a2, a3, a4, a5);
}

void sub_239A9D848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  operator delete(__p);
  if (a57)
  {
    operator delete(a57);
    if (!a42)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!a42)
  {
    goto LABEL_3;
  }

  operator delete(a42);
  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolutionAMDFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2[8];
  v17 = HIDWORD(v5);
  v18 = v5;
  v6 = MPSCreateFunctionConstantValues();
  [v6 setConstantValue:&v18 type:33 atIndex:115];
  [v6 setConstantValue:&v17 type:33 atIndex:114];
  v7 = *a3;
  v8 = *(a3 + 1);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vceqq_s64(v8, v9);
  if (*a3 != -1 || ((v11 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v9), vceqq_s64(*(a3 + 4), v9)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v10, vceqq_s64(*(a3 + 3), v9)), xmmword_239B06050)) & 0xF) == 0) ? (v12 = v11 == 0) : (v12 = 0), v12 ? (v13 = a3[5] == -1) : (v13 = 0), !v13))
  {
    if ((vuzp1_s16(vmovn_s64(v10), *v8.i8).u8[0] & 1) == 0)
    {
      v19 = *(a3 + 1);
      [v6 setConstantValue:&v19 type:33 atIndex:126];
      v7 = *a3;
    }

    if (v7 != -1)
    {
      v19 = v7;
      [v6 setConstantValue:&v19 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v19 = a3[2];
      [v6 setConstantValue:&v19 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v19 = a3[3];
      [v6 setConstantValue:&v19 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v19 = a3[4];
      [v6 setConstantValue:&v19 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v19 = a3[5];
      [v6 setConstantValue:&v19 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v19 = a3[8];
      [v6 setConstantValue:&v19 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v19 = a3[9];
      [v6 setConstantValue:&v19 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v19 = a3[6];
      [v6 setConstantValue:&v19 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v19 = a3[7];
      [v6 setConstantValue:&v19 type:33 atIndex:116];
    }
  }

  v14 = *a2;
  v15 = _MPSNewSpecializedFunction();

  return v15;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorAMD::IsConvolutionSupported(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  if (*(a2 + 120))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(v3 + 232) inputTensorAtIndex:v4];
  v6 = [*(v3 + 232) inputTensorAtIndex:1];
  v7 = (*(**(v5 + 32) + 24))(*(v5 + 32));
  v8 = (*(**(v6 + 32) + 24))(*(v6 + 32));
  if (!v7 || (v8 & 1) == 0)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Prefix linking not supported by MPS AMD kernels. Falling back to generic implementation\n", v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    return 0;
  }

  if (*(v5 + 8) != *(v6 + 8))
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "AMD kernels only support same source and weights data type. Falling back to generic implementation\n", v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    return 0;
  }

  v9 = [*(v3 + 232) graph];
  v10 = *(v9 + 64);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 == v12)
  {
    v16 = -1;
    goto LABEL_23;
  }

  v13 = v9;
  v14 = *(a2 + 120);
  v15 = -1;
  v16 = -1;
  do
  {
    v17 = *v11;
    CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v13);
    v19 = *v11;
    if (v17 == *(CoreOpInputAtIndex + 32))
    {
      v15 = *(v19 + 76);
      if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v13) + 32))
      {
        goto LABEL_9;
      }
    }

    else if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v13) + 32))
    {
      goto LABEL_9;
    }

    v16 = *(*v11 + 76);
LABEL_9:
    ++v11;
  }

  while (v11 != v12);
  if (v16 == -1)
  {
    goto LABEL_23;
  }

  if ((v14 & 1) == 0)
  {
    if (v15 != -1)
    {
      v20 = *(v3 + 16);
      if (*(a2 + 120) == 1)
      {
        goto LABEL_21;
      }

LABEL_26:
      v21 = [v20 objectAtIndexedSubscript:v15];
      goto LABEL_27;
    }

LABEL_23:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v15 = -1;
  v20 = *(v3 + 16);
  if (*(a2 + 120) != 1)
  {
    goto LABEL_26;
  }

LABEL_21:
  v21 = *(v3 + 112);
LABEL_27:
  v22 = [v20 objectAtIndexedSubscript:v16];
  v23 = *(a2 + 8);
  v24 = *MEMORY[0x277CD7408];
  v25 = *(&v21->super.isa + v24);
  v26 = *MEMORY[0x277CD73F0];
  v27 = *(&v21->super.isa + v26);
  if (v27 >= 0x10)
  {
    v28 = 16;
  }

  else
  {
    v28 = *(&v21->super.isa + v26);
  }

  if (v27 < 2)
  {
    v39 = 1;
LABEL_37:
    if ((v39 ^ (-1 << v28)) != 0xFFFFFFFF)
    {
      v40 = (v21 + *MEMORY[0x277CD7428]);
      v42 = v40[6];
      v41 = v40[7];
      v44 = v40[4];
      v43 = v40[5];
      v46 = v40[2];
      v45 = v40[3];
      v48 = *v40;
      v47 = v40[1];
      do
      {
        v104 = v48;
        v105 = v47;
        v106 = v46;
        v107 = v45;
        v108 = v44;
        v109 = v43;
        v110 = v42;
        v111 = v41;
        v49 = *(&v104 + (v28 & 0xF));
        if (v25 != v49 && v49 != 0)
        {
          return 0;
        }

        v25 *= *(&v21->super.isa + 4 * (v28++ & 0xF) + *MEMORY[0x277CD73D0]);
      }

      while (v28 != 16);
    }

LABEL_45:
    v51 = *(v22 + v24);
    v52 = *(v22 + v26);
    v53 = 16;
    if (v52 < 0x10)
    {
      v53 = v52;
    }

    if (v52 >= 2)
    {
      v54 = (v22 + *MEMORY[0x277CD7428]);
      v56 = v54[6];
      v55 = v54[7];
      v58 = v54[4];
      v57 = v54[5];
      v60 = v54[2];
      v59 = v54[3];
      v62 = *v54;
      v61 = v54[1];
      v63 = 1;
      v64 = 1;
      while (1)
      {
        v96 = v62;
        v97 = v61;
        v98 = v60;
        v99 = v59;
        v100 = v58;
        v101 = v57;
        v102 = v56;
        v103 = v55;
        if (v51 != *(&v96 + (v63 & 0xF)))
        {
          return 0;
        }

        v51 *= *(v22 + *MEMORY[0x277CD73D0] + 4 * (v63 & 0xF));
        v95 = *(v22 + *MEMORY[0x277CD73D8]);
        v64 |= 1 << *(&v95 | v63++ & 0xF);
        if (v53 == v63)
        {
          goto LABEL_53;
        }
      }
    }

    v64 = 1;
LABEL_53:
    if (v52 <= 0xF && (v64 ^ (-1 << v53)) != 0xFFFFFFFF)
    {
      v65 = (v22 + *MEMORY[0x277CD7428]);
      v67 = v65[6];
      v66 = v65[7];
      v69 = v65[4];
      v68 = v65[5];
      v71 = v65[2];
      v70 = v65[3];
      v73 = *v65;
      v72 = v65[1];
      do
      {
        v87 = v73;
        v88 = v72;
        v89 = v71;
        v90 = v70;
        v91 = v69;
        v92 = v68;
        v93 = v67;
        v94 = v66;
        v74 = *(&v87 + (v53 & 0xF));
        if (v51 != v74 && v74 != 0)
        {
          return 0;
        }

        v51 *= *(v22 + *MEMORY[0x277CD73D0] + 4 * (v53++ & 0xF));
      }

      while (v53 != 16);
    }

    v76 = *(&v21->super.isa + *MEMORY[0x277CD73D8]);
    if (v76 <= 3u && BYTE1(v76) <= 3u && BYTE2(v76) <= 3u && BYTE3(v76) <= 3u)
    {
      v81 = vceq_s16((*&vzip1_s8(*&v76, *&v76) & 0xFF00FF00FF00FFLL), 0x3000200010000);
      if ((vminv_u16(v81) & 1) == 0)
      {
        if (v23 != 1)
        {
          if (v23 || (v81.i8[6] & 1) == 0)
          {
            goto LABEL_73;
          }

          v82 = !BYTE2(*(&v21->super.isa + *MEMORY[0x277CD73D8])) && v76 == 1;
          if (!v82 || BYTE1(*(&v21->super.isa + *MEMORY[0x277CD73D8])) != 2)
          {
            goto LABEL_73;
          }

          goto LABEL_89;
        }

        if ((v81.i8[6] & 1) == 0)
        {
          goto LABEL_73;
        }

        v84 = BYTE2(*(&v21->super.isa + *MEMORY[0x277CD73D8])) == 1 && v76 == 2;
        if (!v84 || BYTE1(*(&v21->super.isa + *MEMORY[0x277CD73D8])) != 0)
        {
          goto LABEL_73;
        }

        goto LABEL_100;
      }

      if (v23 < 2)
      {
        if (v23 == 1)
        {
LABEL_89:
          if (*(a2 + 12))
          {
            MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Only HWIO weights format is supported with NHWC data format. Falling back to generic implementation\n", v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
            return 0;
          }
        }

LABEL_100:
        v86 = v22;
        *v121 = 65792;
        if (IsNDArraySliced(v21, v121) || IsNDArraySliced(v86, v121))
        {
          MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Slicing not supported by AMD kernel. Falling back to generic implementation\n", v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
          return 0;
        }

        return 1;
      }
    }

LABEL_73:
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Only NCHW/NHWC data format supported for source. Falling back to generic implementation\n", v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
    return 0;
  }

  v29 = (v21 + *MEMORY[0x277CD7428]);
  v31 = v29[6];
  v30 = v29[7];
  v33 = v29[4];
  v32 = v29[5];
  v35 = v29[2];
  v34 = v29[3];
  v37 = *v29;
  v36 = v29[1];
  v38 = 1;
  v39 = 1;
  while (1)
  {
    v113 = v37;
    v114 = v36;
    v115 = v35;
    v116 = v34;
    v117 = v33;
    v118 = v32;
    v119 = v31;
    v120 = v30;
    if (v25 != *(&v113 + (v38 & 0xF)))
    {
      return 0;
    }

    v25 *= *(&v21->super.isa + 4 * (v38 & 0xF) + *MEMORY[0x277CD73D0]);
    v112 = *(&v21->super.isa + *MEMORY[0x277CD73D8]);
    v39 |= 1 << *(&v112 | v38++ & 0xF);
    if (v28 == v38)
    {
      if (v27 <= 0xF)
      {
        goto LABEL_37;
      }

      goto LABEL_45;
    }
  }
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorAMD::DoWeightsNeedPhysicalTranspose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *MEMORY[0x277CD73D8];
  v5 = *(a3 + v4);
  if (v5 > 3u || BYTE1(v5) > 3u || BYTE2(*(a3 + v4)) > 3u || BYTE3(*(a3 + v4)) > 3u || v5 != 50462976)
  {
    return 1;
  }

  v11 = *(a4 + 12);
  v12 = *(a2 + v4);
  if (v12 > 3u || BYTE1(v12) > 3u || (BYTE2(v12) <= 3u ? (v13 = BYTE3(v12) > 3u) : (v13 = 1), v13))
  {
    v14 = -1;
LABEL_23:
    v15 = v11 == 1;
    return (v14 == 0) & v15;
  }

  v14 = *(a4 + 8);
  v16 = vceq_s16((*&vzip1_s8(*&v12, *&v12) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  if (vminv_u16(v16))
  {
LABEL_38:
    v15 = v11 == 1;
    if (v14 == 1 && v11 == 1)
    {
      return 1;
    }

    return (v14 == 0) & v15;
  }

  if (v14 == 1)
  {
    if ((v16.i8[6] & 1) == 0)
    {
      return 0;
    }

    v19 = BYTE2(v12) == 1 && v12 == 2;
    if (!v19 || BYTE1(v12) != 0)
    {
      return 0;
    }

    v14 = 0;
    goto LABEL_23;
  }

  if (!v14 && (v16.i8[6] & 1) != 0)
  {
    v17 = !BYTE2(v12) && v12 == 1;
    if (v17 && BYTE1(v12) == 2)
    {
      v14 = 1;
      goto LABEL_38;
    }
  }

  return 0;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorAMD::EncodeNDArrayConvolution(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 56))(a1, a4) & 1) == 0)
  {

    return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolution(a1, a2, a3, a4);
  }

  v196 = a3;
  v202 = a2;
  v184 = *a4;
  v243 = *(a4 + 8);
  v238 = *(a4 + 12);
  v227 = *(a4 + 24);
  v229 = *(a4 + 16);
  v242 = *(a4 + 32);
  v241 = *(a4 + 40);
  v237 = *(a4 + 48);
  v236 = *(a4 + 56);
  v216 = *(a4 + 72);
  v217 = *(a4 + 64);
  v225 = *(a4 + 80);
  v232 = *(a4 + 88);
  v221 = *(a4 + 96);
  v9 = *(a4 + 128);
  v8 = *(a4 + 136);
  v182 = *(v8 + *MEMORY[0x277CD7368]);
  v10 = &OBJC_IVAR___MPSNDArrayConvolution2D__ndArrayIdentity;
  v11 = *(a4 + 120);
  if (*(a4 + 120))
  {
    v10 = &OBJC_IVAR___MPSNDArrayConvolution2DGradientWithInput__ndArrayIdentity;
  }

  v12 = *(v8 + *v10);
  v183 = *(v8 + *MEMORY[0x277CD7360]);
  [v12 setLabel:?];
  v218 = *(v8 + *MEMORY[0x277CD7350]);
  v234 = [*(v9 + 232) inputTensorAtIndex:1];
  v185 = [*(v9 + 16) count];
  v13 = [*(v9 + 232) graph];
  v14 = *(v13 + 64);
  v15 = *v14;
  v16 = v14[1];
  v246 = v11;
  v224 = v9;
  if (*v14 == v16)
  {
    v19 = -1;
    goto LABEL_19;
  }

  v17 = v13;
  v18 = -1;
  v19 = -1;
  do
  {
    while (1)
    {
      v20 = *v15;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v17);
      v22 = *v15;
      if (v20 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v18 = *(v22 + 76);
      if (v22 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v17) + 32))
      {
        goto LABEL_10;
      }

LABEL_7:
      if (++v15 == v16)
      {
        goto LABEL_11;
      }
    }

    if (v22 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v17) + 32))
    {
      goto LABEL_7;
    }

LABEL_10:
    v23 = *v15++;
    v19 = *(v23 + 76);
  }

  while (v15 != v16);
LABEL_11:
  if (v19 == -1)
  {
    v11 = v246;
    v9 = v224;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_20:
      MTLReportFailure();
    }

LABEL_21:
    v18 = -1;
  }

  else
  {
    v11 = v246;
    v9 = v224;
    if (v246)
    {
      goto LABEL_21;
    }

    if (v18 == -1)
    {
LABEL_19:
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }
  }

  v25 = [*(v9 + 16) objectAtIndexedSubscript:v19];
  v180 = *(*(v9 + 8) + 80 * v19 + 64);
  if (v11)
  {
    v26 = *(v9 + 112);
    v27 = v9 + 32;
    v28 = 2;
  }

  else
  {
    v26 = [*(v9 + 16) objectAtIndexedSubscript:v18];
    v28 = 0;
    v27 = *(v9 + 8) + 80 * v18;
  }

  v240 = *(v9 + 208);
  v29 = MEMORY[0x277CD73D8];
  v30 = *MEMORY[0x277CD73D8];
  v231 = v26;
  v31 = *(v26 + v30);
  if (v31 > 3u || BYTE1(v31) > 3u)
  {
    goto LABEL_32;
  }

  if (BYTE2(v31) > 3u || BYTE3(v31) > 3u)
  {
    goto LABEL_32;
  }

  v52 = vceq_s16((*&vzip1_s8(*&v31, *&v31) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  v245 = v243;
  if (vminv_u16(v52))
  {
    goto LABEL_34;
  }

  if (v243 != 1)
  {
    if (!v243)
    {
      v245 = -1;
      if ((v52.i8[6] & 1) == 0)
      {
        goto LABEL_34;
      }

      v53 = !BYTE2(v31) && v31 == 1;
      if (!v53 || BYTE1(v31) != 2)
      {
        goto LABEL_34;
      }

      v33 = 1;
LABEL_33:
      v245 = v33;
      goto LABEL_34;
    }

LABEL_32:
    v33 = -1;
    goto LABEL_33;
  }

  v245 = -1;
  if (v52.i8[6])
  {
    v123 = BYTE2(v31) == 1 && v31 == 2;
    if (v123 && BYTE1(v31) == 0)
    {
      v245 = 0;
    }
  }

LABEL_34:
  v34 = *(&v240->super.isa + v30);
  if (v34 > 3u || BYTE1(v34) > 3u)
  {
    goto LABEL_41;
  }

  if (BYTE2(v34) > 3u || BYTE3(v34) > 3u)
  {
    goto LABEL_41;
  }

  v55 = vceq_s16((*&vzip1_s8(*&v34, *&v34) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  v214 = v243;
  if (vminv_u16(v55))
  {
    goto LABEL_43;
  }

  if (v243 != 1)
  {
    if (!v243)
    {
      v214 = -1;
      if ((v55.i8[6] & 1) == 0)
      {
        goto LABEL_43;
      }

      v56 = !BYTE2(v34) && v34 == 1;
      if (!v56 || BYTE1(v34) != 2)
      {
        goto LABEL_43;
      }

      v36 = 1;
LABEL_42:
      v214 = v36;
      goto LABEL_43;
    }

LABEL_41:
    v36 = -1;
    goto LABEL_42;
  }

  v214 = -1;
  if (v55.i8[6])
  {
    v125 = BYTE2(v34) == 1 && v34 == 2;
    if (v125 && BYTE1(v34) == 0)
    {
      v214 = 0;
    }
  }

LABEL_43:
  v181 = *(v27 + 64);
  v179 = *(v224 + 192);
  v37 = [*(v224 + 232) inputTensorAtIndex:v28];
  v38 = [*(v224 + 232) outputTensorAtIndex:0];
  v198 = v37;
  v39 = *(v37 + 16);
  v41 = *v39;
  v40 = v39[1];
  if (v40 != v41)
  {
    if (((v40 - v41) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v42 = *(v234 + 16);
  v44 = *v42;
  v43 = v42[1];
  if (v43 != v44)
  {
    if (((v43 - v44) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v45 = *(v38 + 16);
  v47 = *v45;
  v46 = v45[1];
  if (v46 != v47)
  {
    if (((v46 - v47) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v48 = &OBJC_IVAR___MPSNDArrayConvolution2DGradientWithInput__autoTuningParams;
  if (!v11)
  {
    v48 = &OBJC_IVAR___MPSNDArrayConvolution2D__autoTuningParams;
  }

  v49 = *(*(a4 + 136) + *v48);
  if (qword_27DF86990 == -1)
  {
    v197 = v38;
    v212 = _MergedGlobals_33;
    if (_MergedGlobals_33 == 1)
    {
      goto LABEL_56;
    }
  }

  else
  {
    dispatch_once(&qword_27DF86990, &__block_literal_global_3);
    v197 = v38;
    v212 = _MergedGlobals_33;
    if (_MergedGlobals_33 == 1)
    {
LABEL_56:
      MPSKernel_LogInfo(*(a4 + 136), 3uLL, "Forcing direct convolution\n");
    }
  }

  v50 = *&v25[*v29];
  v51 = -1;
  if (v50 <= 3u && BYTE1(v50) <= 3u && BYTE2(v50) <= 3u && BYTE3(v50) <= 3u)
  {
    v51 = v238;
    if (v50 != 50462976)
    {
      if (v238 == 1)
      {
        if (v50 != 16777731)
        {
          goto LABEL_96;
        }

        v51 = 0;
      }

      else
      {
        if (!v238 && v50 == 16777731)
        {
          v51 = 1;
          goto LABEL_97;
        }

LABEL_96:
        v51 = -1;
      }
    }
  }

LABEL_97:
  v58 = (*(*a1 + 48))(a1, v231, v25, a4);
  v59 = v58;
  if (!v58)
  {
LABEL_105:
    v201 = v51;
    v223 = v25;
    v173 = v59;
    if (v11)
    {
      v203 = v237 * v232 + v221;
      v204 = v236 * HIDWORD(v232) + HIDWORD(v221);
    }

    else
    {
      v203 = v232;
      v204 = HIDWORD(v232);
    }

    v64 = *(v198 + 8);
    v65 = *(v234 + 8);
    v66 = *(v197 + 8);
    if (v64 != -1879048176 && v64 != 268435472 && v64 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v65 != -1879048176 && v65 != 268435472 && v65 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v66 != -1879048176 && v66 != 268435472 && v66 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v64 != v65 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v245 >= 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v198 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v234 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v197 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v243)
    {
      v67 = 0;
      v68 = 0;
      v69 = 8;
      v70 = 8;
      v71 = 16;
    }

    else
    {
      v70 = 0;
      v69 = 0;
      v68 = 16;
      v67 = 16;
      v71 = 8;
    }

    v72 = *v68;
    v222 = *v69;
    v73 = *v67;
    v74 = 16;
    v244 = *v70;
    if (v238)
    {
      v75 = 24;
      v76 = 8;
      v77 = 0;
    }

    else
    {
      v77 = 16;
      v74 = 8;
      v76 = 24;
      v75 = 0;
    }

    v233 = MEMORY[0x18];
    v220 = *v71;
    v239 = *v71;
    v78 = MEMORY[0x18];
    v79 = *v75;
    v190 = *v74;
    v193 = *v76;
    v80 = *v77;
    v81 = *MEMORY[0x277CD7400];
    v82 = *MEMORY[0x277CD73C8];
    v83 = *&v231[v81] / (*&v231[v82] >> 3);
    if (v245)
    {
      v84 = v222;
    }

    else
    {
      v84 = *&v231[v81] / (*&v231[v82] >> 3);
    }

    v189 = v84;
    if (!v245)
    {
      LODWORD(v83) = v72;
    }

    v192 = v83;
    v85 = *(&v240->super.isa + v81) / (*(&v240->super.isa + v82) >> 3);
    if (v214)
    {
      v86 = v244;
    }

    else
    {
      v86 = *(&v240->super.isa + v81) / (*(&v240->super.isa + v82) >> 3);
    }

    if (!v214)
    {
      LODWORD(v85) = v73;
    }

    v191 = v85;
    v87 = *(&v223->super.super.isa + v81) / (*(&v223->super.super.isa + v82) >> 3);
    v194 = v80;
    if (v201)
    {
      v88 = v87;
    }

    else
    {
      v88 = v80;
    }

    v205 = v88;
    if (v201)
    {
      LODWORD(v87) = v79;
    }

    v176 = v87;
    v177 = v86;
    if (v190 * v225 != v229 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v227 != v79 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v193 != v241 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v194 != v242 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v78 != v233 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v89 = v229;
    if (v246)
    {
      v89 = v227;
    }

    if (v89 != v72 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v90 = v229;
    if (!v246)
    {
      v90 = v227;
    }

    if (v90 != v73 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v308 = 0;
    v290 = v218;
    v309 = v64;
    v310 = v65;
    v311 = v212;
    if (v246)
    {
      v91 = v227 / v225;
    }

    else
    {
      v91 = v229 / v225;
    }

    if (v246)
    {
      v92 = v229 / v225;
    }

    else
    {
      v92 = v227 / v225;
    }

    v291 = v222;
    v292 = v220;
    v293 = v244;
    v294 = v239;
    v208 = v91;
    v295 = v91;
    v296 = v92;
    v211 = v92;
    v297 = v225;
    v298 = v233;
    v299 = v237;
    v300 = v236;
    v301 = v217;
    v302 = v216;
    v303 = v242;
    v304 = v241;
    v305 = __PAIR64__(v204, v203);
    v306 = v246;
    v307 = v245;
    v308 = v201;
    if (v49 || (v49 = a1[3]) != 0)
    {
      v93 = vorrq_s8(vandq_s8(vshlq_u32(*(v49 + 8), xmmword_239B14EF0), xmmword_239B14F20), vandq_s8(vshlq_u32(*(v49 + 24), xmmword_239B14F00), xmmword_239B14F10));
      v94 = vorr_s8(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
      v95.i64[0] = 0x100000001;
      v95.i64[1] = 0x100000001;
      v96 = vandq_s8(*(v49 + 60), v95);
      v97 = vandq_s8(*(v49 + 44), xmmword_239B14F30);
      v98.i64[0] = v97.u32[2];
      v98.i64[1] = v97.u32[3];
      v99 = v98;
      v98.i64[0] = v96.u32[2];
      v98.i64[1] = v96.u32[3];
      v100 = v98;
      v98.i64[0] = v97.u32[0];
      v98.i64[1] = v97.u32[1];
      v101 = v98;
      v98.i64[0] = v96.u32[0];
      v98.i64[1] = v96.u32[1];
      v102 = vorrq_s8(vorrq_s8(vshlq_u64(v101, xmmword_239B14F50), vshlq_u64(v98, xmmword_239B14F40)), vorrq_s8(vshlq_u64(v99, xmmword_239B14F70), vshlq_u64(v100, xmmword_239B14F60)));
      v103 = *&vorr_s8(*v102.i8, *&vextq_s8(v102, v102, 8uLL)) | ((*(v49 + 76) & 1) << 43) | v94.i32[0] | (8 * (*(v49 + 4) & 7)) | v94.i32[1] | *v49 & 7 | ((*(v49 + 40) & 7u) << 28);
      v104 = v202;
    }

    else
    {
      v118 = (*(*a1 + 80))(a1);
      v104 = v202;
      if ((v309 | 0x80000000) == 0x90000010)
      {
        v119 = v310 == 268435472 || v310 == -1879048176;
      }

      else
      {
        v119 = 0;
      }

      v103 = (*(&MPSNDArrayConvolutionDeviceBehaviorAMD::GetKernelParameters(MPSKernel *,MPSNDArrayConvolutionDispatchKeyAMD const&,void *)const::amdKernelParametersGetter[4 * (v118 - 5)] + 2 * v119 + v307))(&v290);
    }

    v105 = *(a4 + 136);
    if ((v103 & 0x100000000000) != 0)
    {
      MPSKernel_LogInfo(v105, 3uLL, "optimal parameter set found\n");
    }

    else
    {
      MPSKernel_LogInfo(v105, 3uLL, "optimal parameter set not found\n");
    }

    v209 = v103 & 7;
    if ((v103 & 7) <= 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v219 = (v103 >> 3) & 7;
    if (v219 <= 1 && v245 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v200 = (v103 >> 6) & 7;
    v106 = 1 << ((v103 >> 6) & 7);
    v210 = (v103 >> 9) & 7;
    v207 = (v103 >> 12) & 7;
    v230 = v106 << ((v103 >> 9) & 7) << ((v103 >> 12) & 7);
    if (v230 <= 3 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v178 = (v103 >> 18) & 7;
    v187 = (v103 >> 25) & 7;
    v107 = 1 << v178 << v187;
    v213 = (1 << v209);
    if (((4 * (v107 << ((v103 >> 36) & 3)) - 1) & v213) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v195 = (v103 >> 21) & 7;
    v108 = (v103 >> 28) & 7;
    v109 = 1 << v195 << ((v103 >> 28) & 7);
    if (((4 * (v109 << ((v103 >> 34) & 3)) - 1) & v230) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v206 = (v103 >> 15) & 7;
    v172 = 1 << v206;
    v188 = 1 << v219;
    if ((((1 << v206) - 1) & (1 << v219)) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v228 = (v103 >> 31) & 7;
    if (1 << v228 != 4 * (1 << v187 << v108) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((~v103 & 0x18000000000) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((v103 & 0x80000000000) == 0)
    {
LABEL_194:
      v110 = [*(*(a4 + 128) + 232) finalOp];
      (*(*v110 + 16))(v110);
      *v289 = 65792;
      IsNDArraySliced(v240, v289);
      if (v207)
      {
        v111 = 0;
      }

      else
      {
        v111 = v230 == v106;
      }

      v113 = v111 && v210 == 0;
      v114 = *(v198 + 8);
      if (v114 > 285212703)
      {
        if (v114 <= 536870915)
        {
          if (v114 > 301989895)
          {
            if (v114 == 301989896)
            {
              v115 = 512;
              v116 = *(v234 + 8);
              if (v116 > 285212703)
              {
                goto LABEL_251;
              }

              goto LABEL_270;
            }

            if (v114 == 335544328)
            {
              v115 = 544;
              v116 = *(v234 + 8);
              if (v116 <= 285212703)
              {
                goto LABEL_270;
              }

              goto LABEL_251;
            }
          }

          else
          {
            if (v114 == 285212704)
            {
              v115 = 416;
              v116 = *(v234 + 8);
              if (v116 > 285212703)
              {
                goto LABEL_251;
              }

              goto LABEL_270;
            }

            if (v114 == 285212736)
            {
              v115 = 448;
              v116 = *(v234 + 8);
              if (v116 <= 285212703)
              {
                goto LABEL_270;
              }

              goto LABEL_251;
            }
          }
        }

        else if (v114 <= 536870927)
        {
          if (v114 == 536870916)
          {
            v115 = 0;
            v116 = *(v234 + 8);
            if (v116 > 285212703)
            {
              goto LABEL_251;
            }

            goto LABEL_270;
          }

          if (v114 == 536870920)
          {
            v115 = 32;
            v116 = *(v234 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          }
        }

        else
        {
          switch(v114)
          {
            case 536870928:
              v115 = 64;
              v116 = *(v234 + 8);
              if (v116 <= 285212703)
              {
                goto LABEL_270;
              }

              goto LABEL_251;
            case 536870944:
              v115 = 96;
              v116 = *(v234 + 8);
              if (v116 <= 285212703)
              {
                goto LABEL_270;
              }

              goto LABEL_251;
            case 536870976:
              v115 = 128;
              v116 = *(v234 + 8);
              if (v116 <= 285212703)
              {
                goto LABEL_270;
              }

              goto LABEL_251;
          }
        }
      }

      else if (v114 <= 31)
      {
        if (v114 > 7)
        {
          if (v114 == 8)
          {
            v115 = 192;
            v116 = *(v234 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          }

          if (v114 == 16)
          {
            v115 = 224;
            v116 = *(v234 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          }
        }

        else
        {
          if (v114 == -1879048176)
          {
            v115 = 384;
            v116 = *(v234 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          }

          if (v114 == 4)
          {
            v115 = 160;
            v116 = *(v234 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          }
        }
      }

      else if (v114 <= 268435463)
      {
        if (v114 == 32)
        {
          v115 = 256;
          v116 = *(v234 + 8);
          if (v116 <= 285212703)
          {
            goto LABEL_270;
          }

          goto LABEL_251;
        }

        if (v114 == 64)
        {
          v115 = 288;
          v116 = *(v234 + 8);
          if (v116 <= 285212703)
          {
            goto LABEL_270;
          }

          goto LABEL_251;
        }
      }

      else
      {
        switch(v114)
        {
          case 268435464:
            v115 = 480;
            v116 = *(v234 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          case 268435472:
            v115 = 320;
            v116 = *(v234 + 8);
            if (v116 <= 285212703)
            {
              goto LABEL_270;
            }

            goto LABEL_251;
          case 268435488:
            v115 = 352;
            v116 = *(v234 + 8);
            if (v116 > 285212703)
            {
              goto LABEL_251;
            }

LABEL_270:
            if (v116 <= 31)
            {
              if (v116 > 7)
              {
                if (v116 == 8)
                {
                  v120 = 6144;
                  goto LABEL_311;
                }

                if (v116 == 16)
                {
                  v120 = 7168;
                  goto LABEL_311;
                }
              }

              else
              {
                if (v116 == -1879048176)
                {
                  v120 = 12288;
                  goto LABEL_311;
                }

                if (v116 == 4)
                {
                  v120 = 5120;
                  goto LABEL_311;
                }
              }
            }

            else if (v116 <= 268435463)
            {
              if (v116 == 32)
              {
                v120 = 0x2000;
                goto LABEL_311;
              }

              if (v116 == 64)
              {
                v120 = 9216;
                goto LABEL_311;
              }
            }

            else
            {
              switch(v116)
              {
                case 268435464:
                  v120 = 15360;
                  goto LABEL_311;
                case 268435472:
                  v120 = 10240;
                  goto LABEL_311;
                case 268435488:
                  v120 = 11264;
                  goto LABEL_311;
              }
            }

LABEL_310:
            v120 = 18432;
LABEL_311:
            v121 = v120 | v115;
            if (!v246)
            {
              goto LABEL_380;
            }

            if (v114 > 285212703)
            {
              if (v114 <= 536870915)
              {
                if (v114 > 301989895)
                {
                  if (v114 == 301989896)
                  {
                    v122 = 0x80000;
                    goto LABEL_379;
                  }

                  if (v114 == 335544328)
                  {
                    v122 = 557056;
                    goto LABEL_379;
                  }
                }

                else
                {
                  if (v114 == 285212704)
                  {
                    v122 = 425984;
                    goto LABEL_379;
                  }

                  if (v114 == 285212736)
                  {
                    v122 = 458752;
                    goto LABEL_379;
                  }
                }
              }

              else if (v114 <= 536870927)
              {
                if (v114 == 536870916)
                {
                  v122 = 0;
                  goto LABEL_379;
                }

                if (v114 == 536870920)
                {
                  v122 = 0x8000;
                  goto LABEL_379;
                }
              }

              else
              {
                switch(v114)
                {
                  case 536870928:
                    v122 = 0x10000;
                    goto LABEL_379;
                  case 536870944:
                    v122 = 98304;
                    goto LABEL_379;
                  case 536870976:
                    v122 = 0x20000;
                    goto LABEL_379;
                }
              }
            }

            else if (v114 <= 31)
            {
              if (v114 > 7)
              {
                if (v114 == 8)
                {
                  v122 = 196608;
                  goto LABEL_379;
                }

                if (v114 == 16)
                {
                  v122 = 229376;
                  goto LABEL_379;
                }
              }

              else
              {
                if (v114 == -1879048176)
                {
                  v122 = 393216;
                  goto LABEL_379;
                }

                if (v114 == 4)
                {
                  v122 = 163840;
                  goto LABEL_379;
                }
              }
            }

            else if (v114 <= 268435463)
            {
              if (v114 == 32)
              {
                v122 = 0x40000;
                goto LABEL_379;
              }

              if (v114 == 64)
              {
                v122 = 294912;
                goto LABEL_379;
              }
            }

            else
            {
              switch(v114)
              {
                case 268435464:
                  v122 = 491520;
                  goto LABEL_379;
                case 268435472:
                  v122 = 327680;
                  goto LABEL_379;
                case 268435488:
                  v122 = 360448;
LABEL_379:
                  v121 |= v122;
LABEL_380:
                  v127 = *(v197 + 8);
                  if (v127 > 285212703)
                  {
                    if (v127 <= 536870915)
                    {
                      if (v127 > 301989895)
                      {
                        if (v127 == 301989896)
                        {
                          v128 = 16;
                          goto LABEL_424;
                        }

                        if (v127 == 335544328)
                        {
                          v128 = 17;
                          goto LABEL_424;
                        }
                      }

                      else
                      {
                        if (v127 == 285212704)
                        {
                          v128 = 13;
                          goto LABEL_424;
                        }

                        if (v127 == 285212736)
                        {
                          v128 = 14;
                          goto LABEL_424;
                        }
                      }
                    }

                    else if (v127 <= 536870927)
                    {
                      if (v127 == 536870916)
                      {
                        v128 = 0;
                        goto LABEL_424;
                      }

                      if (v127 == 536870920)
                      {
                        v128 = 1;
                        goto LABEL_424;
                      }
                    }

                    else
                    {
                      switch(v127)
                      {
                        case 536870928:
                          v128 = 2;
                          goto LABEL_424;
                        case 536870944:
                          v128 = 3;
                          goto LABEL_424;
                        case 536870976:
                          v128 = 4;
                          goto LABEL_424;
                      }
                    }
                  }

                  else if (v127 <= 31)
                  {
                    if (v127 > 7)
                    {
                      if (v127 == 8)
                      {
                        v128 = 6;
                        goto LABEL_424;
                      }

                      if (v127 == 16)
                      {
                        v128 = 7;
                        goto LABEL_424;
                      }
                    }

                    else
                    {
                      if (v127 == -1879048176)
                      {
                        v128 = 12;
                        goto LABEL_424;
                      }

                      if (v127 == 4)
                      {
                        v128 = 5;
                        goto LABEL_424;
                      }
                    }
                  }

                  else if (v127 <= 268435463)
                  {
                    if (v127 == 32)
                    {
                      v128 = 8;
                      goto LABEL_424;
                    }

                    if (v127 == 64)
                    {
                      v128 = 9;
                      goto LABEL_424;
                    }
                  }

                  else
                  {
                    switch(v127)
                    {
                      case 268435464:
                        v128 = 15;
                        goto LABEL_424;
                      case 268435472:
                        v128 = 10;
                        goto LABEL_424;
                      case 268435488:
                        v128 = 11;
                        goto LABEL_424;
                    }
                  }

                  v128 = 18;
LABEL_424:
                  v235 = v233;
                  v282 = -1;
                  v281 = -1;
                  v283 = 0;
                  v284 = v128 | v121;
                  v285 = 0u;
                  v286 = 0u;
                  v287 = v185 | (v246 << 8) | 0x10000u;
                  v288 = 0;
                  v186 = v113;
                  v174 = v216 * (v241 - 1);
                  v175 = v217 * (v242 - 1);
                  v129 = 1 << v178 << v195;
                  v130 = 1 << v210;
                  v131 = 1 << v207;
                  v199 = (v244 + 1) >> 1;
                  if ((v103 & 0x80000000000) != 0)
                  {
                    v134 = (v239 + 1) >> 1;
                    if (v186)
                    {
                      v135 = (v103 >> 6) & 7;
                      v136 = (v134 * v199 + v106 - 1) >> ((v103 >> 6) & 7);
                      v137 = 1;
                    }

                    else
                    {
                      v235 = (v233 + v131 - 1) >> v207;
                      v135 = (v103 >> 6) & 7;
                      v136 = ((v106 + v199) - 1) >> ((v103 >> 6) & 7);
                      v137 = (v134 + v130 - 1) >> v210;
                    }

                    v138 = v183;
                    v139 = (v211 + v213 - 1) >> (v103 & 7);
                    v140 = v139 * v225;
                    if ((v103 & 0x4000000000) != 0)
                    {
                      v141 = v137 * v136;
                    }

                    else
                    {
                      v141 = v139 * v225;
                    }

                    v226 = v141;
                    if ((v103 & 0x4000000000) != 0)
                    {
                      v142 = v140;
                    }

                    else
                    {
                      v142 = v137 * v136;
                    }

                    v215 = v142;
                    LOBYTE(v200) = v135;
                  }

                  else
                  {
                    if (v131 == v230)
                    {
                      v235 = (v233 + v131 - 1) >> v207;
                      v132 = v244;
                      v133 = v239;
                    }

                    else if (v186)
                    {
                      v132 = (v106 + v239 * v244 - 1) >> v200;
                      v133 = 1;
                    }

                    else
                    {
                      v235 = (v233 + v131 - 1) >> v207;
                      v132 = (v244 + v106 - 1) >> v200;
                      v133 = (v239 + v130 - 1) >> v210;
                    }

                    v143 = (v211 + v213 - 1) >> (v103 & 7);
                    v144 = v143 * v225;
                    if (v245 == 1)
                    {
                      v226 = 1;
                      if ((v103 >> 38))
                      {
                        v145 = v133 * v132 * v235;
                      }

                      else
                      {
                        v145 = v144;
                      }

                      v215 = v145;
                      if ((v103 >> 38))
                      {
                        v146 = v144;
                      }

                      else
                      {
                        v146 = v133 * v132 * v235;
                      }

                      v235 = v146;
                    }

                    else
                    {
                      if ((v103 >> 38))
                      {
                        v147 = v133 * v132;
                      }

                      else
                      {
                        v147 = v143 * v225;
                      }

                      v226 = v147;
                      if ((v103 >> 38))
                      {
                        v148 = v144;
                      }

                      else
                      {
                        v148 = v133 * v132;
                      }

                      v215 = v148;
                    }

                    v104 = v202;
                    v138 = v183;
                    v129 = 1 << v178 << v195;
                  }

                  v171 = v138;
                  v170 = *(v224 + 232);
                  MPSLibrary::CreateUberShaderKey();
                  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                  [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
                  if ([PipelineStateForMPSKey maxTotalThreadsPerThreadgroup] < (v129 << v228 << v206) && MTLReportFailureTypeEnabled())
                  {
                    MTLReportFailure();
                  }

                  [v104 setComputePipelineState:PipelineStateForMPSKey];
                  MPSLibrary::ReleaseComputeState();
                  MPSLibrary::ReleaseMPSKey();
                  v279 = 0u;
                  v280 = 0u;
                  v277 = 0u;
                  v278 = 0u;
                  v275 = 0u;
                  v276 = 0u;
                  v273 = 0u;
                  v274 = 0u;
                  v271 = 0u;
                  v272 = 0u;
                  v269 = 0u;
                  v270 = 0u;
                  v267 = 0u;
                  v268 = 0u;
                  v265 = 0u;
                  v266 = 0u;
                  v264 = 0u;
                  v262 = 0;
                  __p = __PAIR64__(v211, v208);
                  v251 = __PAIR64__(v191, v192);
                  v252 = v176;
                  v253 = __PAIR64__(v220, v222);
                  v254 = __PAIR64__(v239, v244);
                  v255 = v242;
                  v256 = v241;
                  v257 = v176 * v190;
                  v259 = v236;
                  v258 = v237;
                  v261 = v216;
                  v260 = v217;
                  LODWORD(v150) = v203 - (v175 + 1) / 2;
                  HIDWORD(v150) = v204 - (v174 + 1) / 2;
                  v263 = v150;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v151) = 0;
                  v264 = v151;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v152) = 0;
                  v265 = v152;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v153) = 0;
                  v266 = v153;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v154) = 0;
                  v267 = v154;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v155) = 0;
                  v268 = v155;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v156) = 0;
                  v269 = v156;
                  LODWORD(v270) = v189 * v220 * v192;
                  DWORD1(v270) = v177 * v239 * v191;
                  DWORD2(v270) = v233;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v157) = 0;
                  v271 = v157;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v158) = 0;
                  v272 = v158;
                  LODWORD(v273) = v189;
                  WORD3(v273) = v204 - (v174 + 1) / 2;
                  WORD2(v273) = v203 - (v175 + 1) / 2;
                  DWORD2(v273) = v193 * v190 * v194;
                  HIDWORD(v273) = v205 * v193 * v190;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v159) = 0;
                  *&v274 = v159;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v160) = 0;
                  *(&v274 + 1) = v160;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v161) = 0;
                  *&v275 = v161;
                  DWORD2(v275) = v189 * v220;
                  HIDWORD(v275) = v177 * v239;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v162) = 0;
                  *&v276 = v162;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v163) = 0;
                  *(&v276 + 1) = v163;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v164) = 0;
                  *&v277 = v164;
                  MPSGetUShortDivisorMagicNumber();
                  HIWORD(v165) = 0;
                  *(&v277 + 1) = v165;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v166) = 0;
                  v278 = v166;
                  MPSGetUIntDivisorMagicNumber();
                  HIDWORD(v167) = 0;
                  v279 = v167;
                  *&v280 = __PAIR64__(v205, v177);
                  WORD4(v280) = v205;
                  WORD5(v280) = v205 * v193 * v190;
                  MPSSetNDArraysOnComputeEncoder(v104, v224, 4, 0, 0);
                  [v104 setBuffer:objc_msgSend(v231 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v231, 0, 4, 0, 0) + v181, 29}];
                  [v104 setBuffer:-[MPSTemporaryNDArray buffer](v223 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v223, 0, 4, 0, 0) + v180, 28}];
                  [v104 setBuffer:-[MPSNDArray buffer](v240 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v240, 0, 4, 0, 0) + v179, 27}];
                  [v104 setBytes:&__p length:352 atIndex:26];
                  if ((v103 & 0x80000000000) != 0)
                  {
                    if (4 * (16 * ((v230 << v219) + ((v188 + v246) << v209))) <= (64 << v228))
                    {
                      v168 = (64 << v228);
                    }

                    else
                    {
                      v168 = 64 * ((v230 << v219) + ((v188 + v246) << v209));
                    }

                    if (!v206)
                    {
                      goto LABEL_467;
                    }
                  }

                  else if (v245 == 1)
                  {
                    v168 = 4 * (((v188 + 1) << (v200 + v210 + v207)) + ((v188 + v246) << v209));
                    if (!v206)
                    {
LABEL_467:
                      [v104 setThreadgroupMemoryLength:v168 atIndex:0];
                      [v104 setBuffer:0 offset:0 atIndex:25];
                      v249[0] = v226;
                      v249[1] = v215;
                      v249[2] = v235;
                      v247 = (v129 << v228 << v206);
                      v248 = vdupq_n_s64(1uLL);
                      [v104 dispatchThreadgroups:v249 threadsPerThreadgroup:&v247];
                      if (v173)
                      {
                        MPSDecrementReadCount(v223);
                      }

                      return 0;
                    }
                  }

                  else
                  {
                    if (v201 == 1)
                    {
                      v169 = 1;
                    }

                    else
                    {
                      v169 = v246;
                    }

                    v168 = 4 * ((v230 << v219) + ((v188 + v169) << v209));
                    if (!v206)
                    {
                      goto LABEL_467;
                    }
                  }

                  if (v168 <= (v172 >> 1) << (v195 + v178 + v228 + 4))
                  {
                    v168 = (v172 >> 1) << (v195 + v178 + v228 + 4);
                  }

                  goto LABEL_467;
              }
            }

            v122 = 589824;
            goto LABEL_379;
        }
      }

      v115 = 576;
      v116 = *(v234 + 8);
      if (v116 <= 285212703)
      {
        goto LABEL_270;
      }

LABEL_251:
      if (v116 <= 536870915)
      {
        if (v116 > 301989895)
        {
          if (v116 == 301989896)
          {
            v120 = 0x4000;
            goto LABEL_311;
          }

          if (v116 == 335544328)
          {
            v120 = 17408;
            goto LABEL_311;
          }
        }

        else
        {
          if (v116 == 285212704)
          {
            v120 = 13312;
            goto LABEL_311;
          }

          if (v116 == 285212736)
          {
            v120 = 14336;
            goto LABEL_311;
          }
        }
      }

      else if (v116 <= 536870927)
      {
        if (v116 == 536870916)
        {
          v120 = 0;
          goto LABEL_311;
        }

        if (v116 == 536870920)
        {
          v120 = 1024;
          goto LABEL_311;
        }
      }

      else
      {
        switch(v116)
        {
          case 536870928:
            v120 = 2048;
            goto LABEL_311;
          case 536870944:
            v120 = 3072;
            goto LABEL_311;
          case 536870976:
            v120 = 4096;
            goto LABEL_311;
        }
      }

      goto LABEL_310;
    }

    if (v228 != 5 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (((1 << v178 << v195 << v228) - 64) >= 0xC1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((v103 & 0x40000000000) != 0)
    {
      if (v178 && v195 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v213 == 4 * v107 && 4 * v109 == v230 || !MTLReportFailureTypeEnabled())
      {
        goto LABEL_192;
      }
    }

    else if (4 * (v213 >> (v187 + 2)) * (0x10u >> (v178 + v195)) * (v230 >> (v108 + 2)) < 0x81 || !MTLReportFailureTypeEnabled())
    {
      goto LABEL_192;
    }

    MTLReportFailure();
LABEL_192:
    if (16 * ((v230 + v213) << v219) > 0x2000 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v206 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_194;
  }

  v60 = v58;
  v61 = *(v234 + 16);
  v252 = 0;
  __p = 0;
  v251 = 0;
  v63 = *v61;
  v62 = v61[1];
  if (v62 != v63)
  {
    if (((v62 - v63) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v25 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(a1, v12, v196, v202, v25, &__p, v238, 0);
  v59 = v60;
  if (__p)
  {
    v251 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v51 = 0;
    goto LABEL_105;
  }

  return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolution(a1, v202, v196, a4);
}

void sub_239AA0F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(__p);
  if (a50)
  {
    operator delete(a50);
    if (a66)
    {
LABEL_6:
      operator delete(a66);
      _Unwind_Resume(a1);
    }
  }

  else if (a66)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void MPSNDArrayConvolutionDeviceBehaviorAMD::~MPSNDArrayConvolutionDeviceBehaviorAMD(void **this)
{
  *this = &unk_284CAFB90;
  free(this[3]);
}

{
  *this = &unk_284CAFB90;
  free(this[3]);

  JUMPOUT(0x23EE7C8C0);
}

void *MPSNDArrayConvolutionDeviceBehaviorAMD::MPSNDArrayConvolutionDeviceBehaviorAMD(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 5;
  if ((*(a3 + 1472) - 27) < 6)
  {
    v4 = 6;
  }

  a1[1] = v4;
  a1[2] = a3;
  *a1 = &unk_284CAFB90;
  a1[4] = a2;
  a1[5] = 133;
  a1[3] = 0;
  v5 = getenv("MPS_AUTO_TUNING_GRADIENT_PARAMETERS");
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    a1[3] = v7;
    *v7 = *v6 - 48;
    v7[1] = v6[1] - 48;
    v7[2] = v6[2] - 48;
    v7[3] = v6[3] - 48;
    v7[4] = v6[4] - 48;
    v7[5] = v6[5] - 48;
    v7[6] = v6[6] - 48;
    v7[7] = v6[7] - 48;
    v7[8] = v6[8] - 48;
    v7[9] = v6[9] - 48;
    v7[10] = v6[10] - 48;
    v7[11] = v6[12] + 10 * v6[11] - 528;
    v7[12] = v6[13] - 48;
    v7[13] = v6[14] - 48;
    v7[14] = v6[15] - 48;
    v7[15] = v6[16] - 48;
    return a1;
  }

  v9 = getenv("MPS_AUTO_TUNING_PARAMETERS");
  if (!v9)
  {
    return a1;
  }

  v10 = v9;
  v11 = malloc_type_malloc(0x50uLL, 0x10000404247E4FDuLL);
  a1[3] = v11;
  *v11 = (*v10 - 48);
  v11[1] = (v10[1] - 48);
  v11[2] = (v10[2] - 48);
  v11[3] = (v10[3] - 48);
  v11[4] = (v10[4] - 48);
  v11[5] = (v10[5] - 48);
  v11[6] = (v10[6] - 48);
  v11[7] = (v10[7] - 48);
  v11[8] = (v10[8] - 48);
  v11[9] = (v10[9] - 48);
  v11[10] = (v10[10] - 48);
  v11[11] = (v10[11] - 48);
  v11[12] = (v10[12] - 48);
  v11[13] = (v10[13] - 48);
  v11[14] = (v10[14] - 48);
  v11[15] = (v10[15] - 48);
  v11[16] = (v10[16] - 48);
  v11[17] = (v10[17] - 48);
  v11[18] = (v10[18] - 48);
  v11[19] = (v10[19] - 48);
  return a1;
}

const char *___ZL22forceDirectConvolutionv_block_invoke()
{
  result = getenv("MPS_DIRECT_CONVOLUTION");
  if (result)
  {
    result = atol(result);
    _MergedGlobals_33 = result == 1;
  }

  return result;
}

uint64_t EncodeCostVolume(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v156 = *(a1 + *MEMORY[0x277CD7370]);
  v151 = *(a1 + *MEMORY[0x277CD7350]);
  v140 = *(a1 + 144);
  v141 = *(a1 + 148);
  v154 = *(a1 + 152);
  v139 = *(a1 + 160);
  v137 = *(a1 + 156);
  v138 = *(a1 + 161);
  v136 = *(a1 + 162);
  v149 = *(a1 + 163);
  v7 = *(a1 + 168);
  v143 = *(a1 + 176);
  v144 = *(a1 + 184);
  v8 = [*(a4 + 232) inputTensorAtIndex:0];
  v9 = [*(a4 + 232) inputTensorAtIndex:1];
  v10 = [*(a4 + 232) inputTensorAtIndex:2];
  v155 = a4;
  v11 = [*(a4 + 232) outputTensorAtIndex:0];
  if (*(a1 + *MEMORY[0x277CD7378]))
  {
    goto LABEL_24;
  }

  if (*v8 != 4 && MTLReportFailureTypeEnabled())
  {
    v126 = *v8;
    MTLReportFailure();
  }

  if (*v9 != 4 && MTLReportFailureTypeEnabled())
  {
    v126 = *v9;
    MTLReportFailure();
  }

  if (*v10 != 4 && MTLReportFailureTypeEnabled())
  {
    v126 = *v10;
    MTLReportFailure();
  }

  if (*v11 != 4 && MTLReportFailureTypeEnabled())
  {
    v126 = *v11;
    MTLReportFailure();
  }

  BaseTensor::GetDimensionSize(v8);
  BaseTensor::GetDimensionSize(v11);
  DimensionSize = BaseTensor::GetDimensionSize(v8);
  if (DimensionSize != BaseTensor::GetDimensionSize(v11) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  BaseTensor::GetDimensionSize(v10);
  BaseTensor::GetDimensionSize(v8);
  v13 = BaseTensor::GetDimensionSize(v10);
  if (v13 != BaseTensor::GetDimensionSize(v8) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  BaseTensor::GetDimensionSize(v10);
  BaseTensor::GetDimensionSize(v9);
  v14 = BaseTensor::GetDimensionSize(v10);
  if (v14 != BaseTensor::GetDimensionSize(v9) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = BaseTensor::GetDimensionSize(v10);
  if (v154 == 1)
  {
    if (v15 == BaseTensor::GetDimensionSize(v11))
    {
      BaseTensor::GetDimensionSize(v10);
      BaseTensor::GetDimensionSize(v11);
    }

    v16 = BaseTensor::GetDimensionSize(v10);
    if (v16 == BaseTensor::GetDimensionSize(v11))
    {
      v17 = BaseTensor::GetDimensionSize(v10);
      if (v17 == BaseTensor::GetDimensionSize(v11))
      {
        goto LABEL_20;
      }
    }

    if ((MTLReportFailureTypeEnabled() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v15 == BaseTensor::GetDimensionSize(v11))
    {
      BaseTensor::GetDimensionSize(v10);
      BaseTensor::GetDimensionSize(v11);
    }

    v18 = BaseTensor::GetDimensionSize(v10);
    if (v18 == BaseTensor::GetDimensionSize(v11))
    {
      v19 = BaseTensor::GetDimensionSize(v10);
      if (v19 == BaseTensor::GetDimensionSize(v11))
      {
        goto LABEL_20;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_20;
    }
  }

  v124 = BaseTensor::GetDimensionSize(v10);
  v125 = BaseTensor::GetDimensionSize(v10);
  v130 = BaseTensor::GetDimensionSize(v11);
  v132 = BaseTensor::GetDimensionSize(v11);
  v126 = v124;
  v128 = v125;
  MTLReportFailure();
LABEL_20:
  if (BaseTensor::GetDimensionSize(v10) != 2)
  {
    BaseTensor::GetDimensionSize(v10);
  }

  if (BaseTensor::GetDimensionSize(v10) != 2 && BaseTensor::GetDimensionSize(v10) != 1 && MTLReportFailureTypeEnabled())
  {
    v126 = BaseTensor::GetDimensionSize(v10);
    MTLReportFailure();
  }

LABEL_24:
  v142 = a2;
  *&v20 = -1;
  *(&v20 + 1) = -1;
  v178 = v20;
  v177 = v20;
  v176 = v20;
  v175 = v20;
  v174 = v20;
  *&v178 = [*(v155 + 16) count] | 0x10000;
  v21 = BaseTensor::GetDimensionSize(v11);
  v22 = BaseTensor::GetDimensionSize(v11);
  v23 = BaseTensor::GetDimensionSize(v11);
  v133 = BaseTensor::GetDimensionSize(v11);
  v24 = BaseTensor::GetDimensionSize(v9);
  v25 = BaseTensor::GetDimensionSize(v9);
  v135 = v9;
  v26 = BaseTensor::GetDimensionSize(v9);
  *&v27 = __PAIR64__(v25, v24);
  DWORD2(v27) = v26;
  v147 = v27;
  *&v27 = __PAIR64__(v22, v21);
  DWORD2(v27) = v23;
  v145 = v27;
  if (v154 == 1)
  {
    v28 = v21;
  }

  else
  {
    v28 = v23;
  }

  v29 = v10;
  if (v154 == 1)
  {
    v30 = v24;
  }

  else
  {
    v30 = v26;
  }

  if (v154 == 1)
  {
    v31 = v23;
  }

  else
  {
    v31 = v22;
  }

  if (v154 == 1)
  {
    v32 = v22;
  }

  else
  {
    v32 = v21;
  }

  v33 = BaseTensor::GetDimensionSize(v29);
  v34 = *(v151 + 1482);
  v173 = 0u;
  memset(&v172[16], 0, 32);
  v171 = 0u;
  v170 = 0u;
  v169 = 0u;
  v168 = 0u;
  v167 = 0u;
  LODWORD(v170) = v28;
  *v172 = v34;
  *&v172[8] = vdupq_n_s64(1uLL);
  v35 = 2 * v28;
  if (!v154)
  {
    v43 = (v22 * v21 + v34 - 1) / v34;
    v39 = v133;
    v44 = 1;
    *&v172[24] = v43;
    *&v172[32] = 1;
    v150 = v133;
    *&v172[40] = v133;
    LODWORD(v45) = v28;
    if (v23 >= 0x11)
    {
      LODWORD(v45) = v23;
      v44 = 1;
      LODWORD(v46) = v28;
      v47 = 1;
      v48 = v28;
      v49 = v34;
      do
      {
        if (v49 <= 0x7F)
        {
          v44 *= 2;
          v49 *= 2;
        }

        else if (v48 >= 2)
        {
          v47 = (v45 + 15) >> 4;
          v46 = (v23 - 1 + v47) / v47;
          v48 = v46;
        }

        v45 = (v44 + v48 - 1) / v44;
      }

      while (v45 > 0x10);
      LODWORD(v170) = v46;
      *&v172[32] = v47;
      *&v172[8] = v44;
    }

    v56 = 0;
    v134 = v35 - 1;
    v152 = v31 * v32 - 1;
    DWORD1(v170) = v45;
    v51 = v28 - 1;
    v54 = 1;
    v42 = v34;
    goto LABEL_72;
  }

  v36 = v35 - 1;
  v37 = (v35 - 1) / v28;
  v38 = v31 * v32;
  v39 = v133;
  *&v172[24] = v37;
  v150 = v133;
  *&v172[40] = v133;
  v40 = 1;
  if (v34 <= v30)
  {
    v42 = v34;
    v41 = v34;
    if (v34 < 0x11)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v41 = v34;
    v42 = v34;
    do
    {
      v42 >>= 1;
      v40 *= 2;
      v41 >>= 1;
    }

    while (v42 > v30);
    *v172 = v42;
    if (v42 < 0x11)
    {
      goto LABEL_54;
    }
  }

  if (v30 / v42 <= 1)
  {
    do
    {
      v50 = v42;
      v42 >>= 1;
      v40 *= 2;
      v41 >>= 1;
    }

    while (v50 >= 0x22 && v30 / v42 < 2);
    *v172 = v42;
  }

LABEL_54:
  v51 = v28 - 1;
  v44 = 1;
  if (v28 >= 0x11)
  {
    LODWORD(v52) = v28;
    v53 = v28;
    LODWORD(v45) = v28;
    do
    {
      if (v41 <= 0x7F)
      {
        v44 *= 2;
        v41 *= 2;
        v40 >>= v40 > 1;
      }

      else if (v53 >= 2)
      {
        v37 = (v45 + 15) >> 4;
        v52 = (v51 + v37) / v37;
        v53 = v52;
      }

      v45 = (v44 + v53 - 1) / v44;
    }

    while (v45 > 0x10);
    *&v170 = __PAIR64__(v45, v52);
    *&v172[24] = v37;
    *&v172[8] = v44;
    v152 = v38 - 1;
    v54 = 1;
    if (v40 < 2)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  LODWORD(v45) = v28;
  v152 = v38 - 1;
  DWORD1(v170) = v28;
  v54 = 1;
  if (v40 >= 2)
  {
    do
    {
LABEL_64:
      v54 *= 2;
      v55 = v40 > 3;
      v40 >>= 1;
    }

    while (v55);
    *&v172[16] = v54;
  }

LABEL_66:
  *&v172[32] = (v152 + v54) / v54;
  if (v42 == 1)
  {
    v56 = 0;
  }

  else
  {
    v56 = v44 * v42 * v54;
  }

  v134 = v36;
LABEL_72:
  v57 = v147;
  HIDWORD(v57) = v39;
  v148 = v57;
  v58 = v145;
  HIDWORD(v58) = v39;
  v146 = v58;
  *&v173 = v56;
  v59 = v56 != 0;
  v60 = *(v135 + 2);
  if (v60 == 268435472)
  {
    v61 = 0x800000;
  }

  else
  {
    v61 = (v60 == -1879048176) << 24;
  }

  v62 = v143;
  v63 = 8;
  if (v143 >= 8)
  {
    v62 = 8;
  }

  if (v144 < 8)
  {
    v63 = v144;
  }

  v64 = v61 | (v149 << 22) | ((v33 == 1) << 21) | (v59 << 20) | v140 & 1 | (2 * (v141 & 7)) & 0x8F | (16 * (v154 & 1)) & 0x9F | (32 * (v137 & 3)) | (v139 << 8) & 0x7E001FFF | (v138 << 7) & 0x7E001FFF | (v136 << 9) & 0x7E001FFF | (v62 << 10) & 0x7E001FFF | ((v63 & 7) << 13) | ((v45 << 16) + 983040) & 0xF0000;
  v65 = *(a1 + *MEMORY[0x277CD7370]);
  *&v175 = v64;
  v129 = *(a1 + *MEMORY[0x277CD7360]);
  v131 = *(a1 + *MEMORY[0x277CD7368]);
  v127 = *(v155 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v67 = v64 & 0xFFE0FFFF;
  while (1)
  {
    v71 = [PipelineStateForMPSKey threadExecutionWidth];
    v72 = v71 <= 1 ? 1 : v71;
    if (v34 == v72 && v44 * v42 * v54 <= [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup])
    {
      break;
    }

    v73 = [PipelineStateForMPSKey threadExecutionWidth];
    if (v73 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v73;
    }

    v74 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    if (v74 >= 0x100)
    {
      v75 = 256;
    }

    else
    {
      v75 = v74;
    }

    MPSLibrary::ReleaseComputeState();
    if (v154)
    {
      if (v34 <= v30)
      {
        v42 = v34;
        v77 = v34;
        v76 = 1;
        if (v34 < 0x11)
        {
LABEL_112:
          if (v28 < 0x11)
          {
            v78 = v134 / v28;
            v44 = 1;
            LODWORD(v79) = v28;
            LODWORD(v85) = v28;
          }

          else
          {
            v78 = v134 / v28;
            v44 = 1;
            LODWORD(v79) = v28;
            v84 = v28;
            LODWORD(v85) = v28;
            do
            {
              if (v77 < v75)
              {
                v44 *= 2;
                v77 *= 2;
                v76 >>= v76 > 1;
              }

              else if (v84 >= 2)
              {
                v78 = (v85 + 15) >> 4;
                v79 = (v78 + v51) / v78;
                v84 = v79;
              }

              v85 = (v44 + v84 - 1) / v44;
            }

            while (v85 > 0x10);
          }

          v54 = 1;
          if (v76 >= 2)
          {
            do
            {
              v54 *= 2;
              v55 = v76 > 3;
              v76 >>= 1;
            }

            while (v55);
          }

          v68 = v44 * v42 * v54;
          if (v42 == 1)
          {
            v68 = 0;
          }

          v69 = (v54 + v152) / v54;
          goto LABEL_83;
        }
      }

      else
      {
        v76 = 1;
        v77 = v34;
        v42 = v34;
        do
        {
          v42 >>= 1;
          v76 *= 2;
          v77 >>= 1;
        }

        while (v42 > v30);
        if (v42 < 0x11)
        {
          goto LABEL_112;
        }
      }

      if (v30 / v42 <= 1)
      {
        do
        {
          v83 = v42;
          v42 >>= 1;
          v76 *= 2;
          v77 >>= 1;
        }

        while (v83 >= 0x22 && v30 / v42 < 2);
      }

      goto LABEL_112;
    }

    v78 = (v34 + v152) / v34;
    if (v28 < 0x11)
    {
      v68 = 0;
      v69 = 1;
      v54 = 1;
      v44 = 1;
      v42 = v34;
      LODWORD(v85) = v28;
      LODWORD(v79) = v28;
    }

    else
    {
      v69 = 1;
      v44 = 1;
      LODWORD(v79) = v28;
      v80 = v28;
      v81 = v34;
      LODWORD(v82) = v28;
      do
      {
        if (v81 < v75)
        {
          v44 *= 2;
          v81 *= 2;
        }

        else if (v80 >= 2)
        {
          v69 = (v82 + 15) >> 4;
          v79 = (v69 + v51) / v69;
          v80 = v79;
        }

        v82 = (v44 + v80 - 1) / v44;
      }

      while (v82 > 0x10);
      v68 = 0;
      v54 = 1;
      v42 = v34;
      v85 = (v44 + v80 - 1) / v44;
    }

LABEL_83:
    *&v170 = __PAIR64__(v85, v79);
    *v172 = v42;
    *&v172[8] = v44;
    *&v172[16] = v54;
    *&v172[24] = v78;
    *&v172[32] = v69;
    *&v172[40] = v150;
    *&v173 = v68;
    *&v175 = ((v85 & 0xF) << 16) | v67 | ((v68 != 0) << 20);
    v70 = *(a1 + *MEMORY[0x277CD7370]);
    v129 = *(a1 + *MEMORY[0x277CD7360]);
    v131 = *(a1 + *MEMORY[0x277CD7368]);
    v127 = *(v155 + 232);
    MPSLibrary::CreateUberShaderKey();
    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  }

  v86 = [*(v155 + 16) objectAtIndexedSubscript:1];
  makeStrideBytes();
  v87 = (v86 + *MEMORY[0x277CD73D0]);
  v88.i64[0] = 0x100000001;
  v88.i64[1] = 0x100000001;
  v89 = vceqq_s32(*v87, v88);
  v90.i64[0] = v89.i32[0];
  v90.i64[1] = v89.i32[1];
  v91 = v90;
  v92 = vceqq_s32(v87[1], v88);
  v90.i64[0] = v92.i32[0];
  v90.i64[1] = v92.i32[1];
  v93 = v90;
  v94 = vceqq_s32(v87[2], v88);
  v90.i64[0] = v94.i32[0];
  v90.i64[1] = v94.i32[1];
  v95 = v90;
  v96 = vceqq_s32(v87[3], v88);
  v90.i64[0] = v96.i32[0];
  v90.i64[1] = v96.i32[1];
  v97 = v90;
  v90.i64[0] = v89.i32[2];
  v90.i64[1] = v89.i32[3];
  v98 = v90;
  v90.i64[0] = v92.i32[2];
  v90.i64[1] = v92.i32[3];
  v99 = v90;
  v90.i64[0] = v94.i32[2];
  v90.i64[1] = v94.i32[3];
  v100 = v90;
  v90.i64[0] = v96.i32[2];
  v90.i64[1] = v96.i32[3];
  v101 = vbicq_s8(v186, v90);
  v102 = vbicq_s8(v184, v100);
  v103 = vbicq_s8(v182, v99);
  v104 = vbicq_s8(v180, v98);
  v105 = vbicq_s8(v185, v97);
  v106 = vbicq_s8(v183, v95);
  v107 = vbicq_s8(v181, v93);
  v108 = vbicq_s8(v179, v91);
  v109 = *(v86 + *MEMORY[0x277CD73D8]);
  v110 = *(v86 + *MEMORY[0x277CD73C8]);
  if ((v110 & 0xFFF8) != 0)
  {
    v111 = v110 >> 3;
    v164[0] = v108;
    v164[1] = v104;
    v164[2] = v107;
    v164[3] = v103;
    v164[4] = v106;
    v164[5] = v102;
    v164[6] = v105;
    v164[7] = v101;
    v112 = *(v164 + (v109 & 0xF));
    v163[0] = v108;
    v163[1] = v104;
    v163[2] = v107;
    v163[3] = v103;
    v163[4] = v106;
    v163[5] = v102;
    v163[6] = v105;
    v163[7] = v101;
    v113 = *(v163 + (BYTE1(v109) & 0xF));
    v162[0] = v108;
    v162[1] = v104;
    v162[2] = v107;
    v162[3] = v103;
    v162[4] = v106;
    v162[5] = v102;
    v162[6] = v105;
    v162[7] = v101;
    v114 = *(v162 + (BYTE2(v109) & 0xF)) / v111;
    v161[0] = v108;
    v161[1] = v104;
    v161[2] = v107;
    v161[3] = v103;
    v161[4] = v106;
    v161[5] = v102;
    v161[6] = v105;
    v161[7] = v101;
    v115.i64[0] = v114;
    v115.i64[1] = *(v161 + (BYTE3(v109) & 0xF)) / v111;
    v116.i64[0] = v112 / v111;
    v116.i64[1] = v113 / v111;
  }

  else
  {
    v160[0] = v108;
    v160[1] = v104;
    v160[2] = v107;
    v160[3] = v103;
    v160[4] = v106;
    v160[5] = v102;
    v160[6] = v105;
    v160[7] = v101;
    v159[0] = v108;
    v159[1] = v104;
    v159[2] = v107;
    v159[3] = v103;
    v159[4] = v106;
    v159[5] = v102;
    v159[6] = v105;
    v159[7] = v101;
    v158[0] = v108;
    v158[1] = v104;
    v158[2] = v107;
    v158[3] = v103;
    v158[4] = v106;
    v158[5] = v102;
    v158[6] = v105;
    v158[7] = v101;
    v157[0] = v108;
    v157[1] = v104;
    v157[2] = v107;
    v157[3] = v103;
    v157[4] = v106;
    v157[5] = v102;
    v157[6] = v105;
    v157[7] = v101;
    v115.i64[0] = *(v158 + (BYTE2(v109) & 0xF));
    v115.i64[1] = *(v157 + (BYTE3(v109) & 0xF));
    v116.i64[0] = *(v160 + (v109 & 0xF));
    v116.i64[1] = *(v159 + (BYTE1(v109) & 0xF));
  }

  v169 = vuzp1q_s32(v116, v115);
  v168 = v148;
  v167 = v146;
  v117 = v7;
  *&v171 = v117;
  *(&v170 + 1) = __PAIR64__(v144, v143);
  MPSSetNDArraysOnComputeEncoder(v142, v155, 4, 0, 0);
  v118 = [*(v155 + 16) objectAtIndexedSubscript:1];
  [v142 setBuffer:objc_msgSend(v118 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v118, 0, 4, 0, 0) + *(*(v155 + 8) + 144), 27}];
  [v142 setComputePipelineState:PipelineStateForMPSKey];
  [v142 setBytes:&v167 length:80 atIndex:29];
  if ((atomic_load_explicit(&_MergedGlobals_11, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_11))
  {
    unk_281475220 = 0u;
    xmmword_281475210 = 0u;
    dword_281475230 = 1065353216;
    qword_281475238 = 850045863;
    unk_281475240 = 0u;
    unk_281475250 = 0u;
    unk_281475260 = 0u;
    qword_281475270 = 0;
    __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_281475210, &dword_2399F7000);
    __cxa_guard_release(&_MergedGlobals_11);
  }

  Buffer = MPSBufferCache::getBuffer(&xmmword_281475210, [objc_msgSend(a3 "commandQueue")], 0x10uLL, 0);
  v120 = [Buffer contents];
  v121 = v171;
  *v120 = v171;
  v120[1] = v121;
  v122 = v171;
  v120[2] = v171;
  v120[3] = v122;
  [v142 setBuffer:Buffer offset:0 atIndex:28];
  [v142 setThreadgroupMemoryLength:4 * v173 atIndex:0];
  v179 = *&v172[24];
  v180.i64[0] = *&v172[40];
  v165 = *v172;
  v166 = *&v172[16];
  [v142 dispatchThreadgroups:&v179 threadsPerThreadgroup:&v165];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArrayMultiplySparse(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ([a1 structuredSparse])
  {
    v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
    v8 = [*(a4 + 16) objectAtIndexedSubscript:1];
    v9 = [*(a4 + 16) objectAtIndexedSubscript:2];
    v10 = *(a4 + 208);
    v11 = *&a1[*MEMORY[0x277CD7370]];
    v12 = *MEMORY[0x277CD73D0];
    v13 = *&v9[v12 + 4];
    v14 = ((16 * *&v7[*MEMORY[0x277CD73C8]]) & 0xFFF80) + ((*&v9[*MEMORY[0x277CD73C8]] << 6) & 0x3FFE00u) + 256;
    *v120 = *&v10[v12];
    v97 = *v120;
    *&v120[8] = v13;
    *&v120[12] = vshl_u32(vdup_n_s32(v13), 0xFFFFFFFCFFFFFFFFLL);
    *&v120[20] = vdup_lane_s32(*v120, 0);
    *&v15 = -1;
    *(&v15 + 1) = -1;
    v110 = v15;
    v111 = v15;
    *&v108[16] = v15;
    v109 = v15;
    *v108 = v15;
    v16 = *&a1[*MEMORY[0x277CD7360]];
    *&v108[24] = 0;
    v77 = v16;
    v81 = *&a1[*MEMORY[0x277CD7368]];
    MPSLibrary::CreateUberShaderKey();
    [a2 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), 0, v77, v81, 0, 0}];
    [a2 setBuffer:objc_msgSend(v7 offset:"buffer") atIndex:{0, 0}];
    [a2 setBuffer:objc_msgSend(v8 offset:"buffer") atIndex:{0, 1}];
    [a2 setBuffer:objc_msgSend(v9 offset:"buffer") atIndex:{0, 2}];
    [a2 setBuffer:objc_msgSend(v10 offset:"buffer") atIndex:{0, 3}];
    [a2 setBytes:v120 length:28 atIndex:4];
    [a2 setThreadgroupMemoryLength:v14 atIndex:0];
    v115 = vshlq_u64(vaddw_u32(xmmword_239B19640, v97), xmmword_239B19650);
    *&v116 = 1;
    *v124 = xmmword_239B19660;
    *&v124[16] = 1;
    [a2 dispatchThreadgroups:&v115 threadsPerThreadgroup:v124];
    MPSLibrary::ReleaseMPSKey();
  }

  else
  {
    v17 = [a1 denseSparse];
    v18 = *(a4 + 16);
    if (v17)
    {
      v98 = [v18 objectAtIndexedSubscript:0];
      v95 = [*(a4 + 16) objectAtIndexedSubscript:1];
      v19 = [*(a4 + 16) objectAtIndexedSubscript:2];
      v20 = [*(a4 + 16) objectAtIndexedSubscript:3];
      v21 = *&a1[*MEMORY[0x277CD7370]];
      v22 = MEMORY[0x277CD73D8];
      v23 = *&v20[*MEMORY[0x277CD73D8]];
      v24 = *(a4 + 208);
      *&v25 = -1;
      *(&v25 + 1) = -1;
      v122 = v25;
      v123 = v25;
      *&v120[16] = 0xFFFFFFFFFFFFFFFFLL;
      v121 = v25;
      *v120 = v25;
      v78 = *&a1[*MEMORY[0x277CD7360]];
      v82 = *&a1[*MEMORY[0x277CD7368]];
      MPSLibrary::CreateUberShaderKey();
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      v88 = [PipelineStateForMPSKey threadExecutionWidth];
      v26 = *MEMORY[0x277CD7410];
      v27 = *&v24[v26];
      v28 = *&v24[v26 + 16];
      v29 = *v22;
      v30 = *&v24[v29];
      v31 = *&v24[v26 + 48];
      v101 = *&v24[v26 + 32];
      v102 = v31;
      v100[0] = v27;
      v100[1] = v28;
      v32 = *(v100 + (BYTE1(v30) & 0xF));
      v103[2] = v101;
      v103[3] = v31;
      v103[0] = v27;
      v103[1] = v28;
      LODWORD(v22) = *&v20[4 * (*&v20[v29] & 0xF) + v26];
      v33 = MEMORY[0x277CD7400];
      v34 = *MEMORY[0x277CD7400];
      v35 = v103 + (v30 & 0xF);
      v36 = *MEMORY[0x277CD73D0];
      v37 = *&v20[v36 + 4] * *&v20[v34];
      v38 = *&v24[v36 + 4] * *&v24[v34];
      v39 = [v19 lengthOfDimension:0];
      v40 = *v33;
      v41 = *&v20[v40];
      LODWORD(v40) = *&v24[v40];
      v92 = v39;
      LODWORD(v42) = v32;
      HIDWORD(v42) = *v35;
      *v108 = v42;
      *&v108[8] = v22;
      *&v108[12] = 1;
      *&v108[16] = v41;
      *&v108[24] = v40;
      *&v108[28] = v40;
      *&v109 = v37;
      DWORD2(v109) = v38;
      HIDWORD(v109) = v38;
      *&v110 = 1065353216;
      DWORD2(v110) = 1;
      HIDWORD(v110) = v37;
      LODWORD(v111) = 0;
      DWORD1(v111) = v38;
      *(&v111 + 1) = v38 | 0x100000000;
      v112 = *&v19[*MEMORY[0x277CD7410]];
      v113 = v88;
      v114 = 0;
      [a2 setComputePipelineState:PipelineStateForMPSKey];
      [a2 setBuffer:objc_msgSend(v20 offset:"buffer") atIndex:{0, 0}];
      [a2 setBuffer:objc_msgSend(v19 offset:"buffer") atIndex:{0, 1}];
      [a2 setBuffer:objc_msgSend(v95 offset:"buffer") atIndex:{0, 2}];
      [a2 setBuffer:objc_msgSend(v98 offset:"buffer") atIndex:{0, 3}];
      [a2 setBuffer:objc_msgSend(v24 offset:"buffer") atIndex:{0, 4}];
      [a2 setBytes:v108 length:92 atIndex:5];
      [a2 setThreadgroupMemoryLength:32 * v88 atIndex:0];
      v115.i64[0] = (v92 + 510) >> 9;
      v115.i64[1] = (v32 + 31) >> 5;
      *&v116 = 1;
      *v124 = v88;
      *&v124[8] = xmmword_239B19630;
      [a2 dispatchThreadgroups:&v115 threadsPerThreadgroup:v124];
      MPSLibrary::ReleaseMPSKey();
    }

    else
    {
      v43 = [v18 objectAtIndexedSubscript:3];
      v99 = [*(a4 + 16) objectAtIndexedSubscript:0];
      v89 = [*(a4 + 16) objectAtIndexedSubscript:1];
      v94 = [*(a4 + 16) objectAtIndexedSubscript:2];
      v44 = *(a4 + 208);
      v45 = *&a1[*MEMORY[0x277CD7370]];
      v46 = *&v43[*MEMORY[0x277CD73D8]];
      v47 = [a1 transposeSparse];
      v48.i64[0] = -1;
      v48.i64[1] = -1;
      v118 = v48;
      v119 = v48;
      v116 = 0xFFFFFFFFFFFFFFFFLL;
      v117 = v48;
      v115 = v48;
      [a1 sparseFormat];
      v93 = v47;
      [a1 sparseFormat];
      v79 = *&a1[*MEMORY[0x277CD7360]];
      v83 = *&a1[*MEMORY[0x277CD7368]];
      MPSLibrary::CreateUberShaderKey();
      v91 = MPSLibrary::GetPipelineStateForMPSKey();
      v49 = [v91 threadExecutionWidth];
      v50 = *MEMORY[0x277CD7410];
      v51 = *&v44[v50];
      v52 = *&v44[v50 + 16];
      v53 = *&v44[v50 + 48];
      v54 = *MEMORY[0x277CD73D8];
      v55 = *&v44[v54];
      v105 = *&v44[v50 + 32];
      v106 = v53;
      v104[0] = v51;
      v104[1] = v52;
      v86 = *(v104 + (BYTE1(v55) & 0xF));
      v107[2] = v105;
      v107[3] = v53;
      v107[0] = v51;
      v107[1] = v52;
      v96 = *(v107 + (v55 & 0xF));
      v56 = *&v43[4 * (v43[v54 + 1] & 0xF) + v50];
      v57 = *MEMORY[0x277CD7400];
      v58 = *MEMORY[0x277CD73D0];
      v59 = *&v43[v58 + 4] * *&v43[v57];
      v60 = v44;
      v61 = *&v44[v58 + 4] * *&v44[v57];
      v62 = [v99 lengthOfDimension:0];
      v63 = [a1 sparseFormat];
      v64 = v62;
      if (v63)
      {
        v64 = [v94 lengthOfDimension:0] - 1;
      }

      v87 = v64;
      v65 = [a1 sparseFormat];
      v66 = *MEMORY[0x277CD7400];
      v67 = *&v43[v66];
      v68 = 32 * v49 + 32;
      v69 = *&v60[v66];
      if (v65)
      {
        v68 = 32 * v49;
      }

      v85 = v68;
      *v108 = v86;
      *&v108[4] = v96;
      *&v108[12] = 1;
      *&v108[8] = v56;
      *&v108[20] = v67;
      *&v108[24] = v69;
      *&v108[28] = v69;
      LODWORD(v109) = 0;
      *(&v109 + 4) = __PAIR64__(v61, v59);
      HIDWORD(v109) = v61;
      *&v110 = 1065353216;
      *(&v110 + 1) = 1;
      *&v111 = __PAIR64__(v61, v59);
      *(&v111 + 1) = v61 | 0x100000000;
      v112 = *&v94[*MEMORY[0x277CD7410]];
      v113 = v49;
      v114 = v62;
      if (!(([a1 sparseFormat] != 2) | v93 & 1) || ((objc_msgSend(a1, "sparseFormat") == 1) & v93) != 0 || !objc_msgSend(a1, "sparseFormat"))
      {
        v70 = *&a1[*MEMORY[0x277CD7360]];
        v71 = *&a1[*MEMORY[0x277CD7368]];
        *&v72 = -1;
        *(&v72 + 1) = -1;
        v122 = v72;
        v123 = v72;
        *&v120[16] = -1;
        v121 = v72;
        *v120 = v72;
        *&v120[24] = 3;
        v80 = v70;
        v84 = v71;
        MPSLibrary::CreateUberShaderKey();
        v73 = MPSLibrary::GetPipelineStateForMPSKey();
        v74 = [v60 buffer];
        [a2 setComputePipelineState:v73];
        [a2 setBuffer:v74 offset:0 atIndex:0];
        [a2 setBytes:v108 length:92 atIndex:1];
        v75 = vshrq_n_u64(vaddw_u32(vdupq_n_s64(0x1FuLL), *v108), 5uLL);
        *v120 = vextq_s8(v75, v75, 8uLL);
        *&v120[16] = 1;
        *v124 = vdupq_n_s64(0x20uLL);
        *&v124[16] = 1;
        [a2 dispatchThreadgroups:v120 threadsPerThreadgroup:v124];
      }

      [a2 setComputePipelineState:v91];
      [a2 setBuffer:objc_msgSend(v43 offset:"buffer") atIndex:{0, 0}];
      [a2 setBuffer:objc_msgSend(v94 offset:"buffer") atIndex:{0, 1}];
      [a2 setBuffer:objc_msgSend(v89 offset:"buffer") atIndex:{0, 2}];
      [a2 setBuffer:objc_msgSend(v99 offset:"buffer") atIndex:{0, 3}];
      [a2 setBuffer:objc_msgSend(v60 offset:"buffer") atIndex:{0, 4}];
      [a2 setBytes:v108 length:92 atIndex:5];
      if ((v93 & 1) != 0 || ![a1 sparseFormat])
      {
        [a2 setThreadgroupMemoryLength:v85 atIndex:0];
      }

      *v120 = (v96 + 31) >> 5;
      *&v120[8] = (v87 + 511) >> 9;
      *&v120[16] = 1;
      *v124 = v49;
      *&v124[8] = xmmword_239B19630;
      [a2 dispatchThreadgroups:v120 threadsPerThreadgroup:v124];
      MPSLibrary::ReleaseMPSKey();
    }
  }

  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeMaterializeSparseTensor(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v44 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v47 = [*(a4 + 16) objectAtIndexedSubscript:2];
  v8 = *(a4 + 208);
  v9 = *&a1[*MEMORY[0x277CD7370]];
  *&v10 = -1;
  *(&v10 + 1) = -1;
  v71 = v10;
  v72 = v10;
  v69 = 0xFFFFFFFFFFFFFFFFLL;
  v70 = v10;
  v68 = v10;
  v42 = [a1 sparseFormat];
  if (v42)
  {
    v11 = 8;
  }

  else
  {
    v11 = 1;
  }

  [a1 sparseFormat];
  v46 = v11;
  [a1 sparseFormat];
  v37 = *&a1[*MEMORY[0x277CD7360]];
  v39 = *&a1[*MEMORY[0x277CD7368]];
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v12 = [PipelineStateForMPSKey threadExecutionWidth];
  v13 = &v8[*MEMORY[0x277CD7410]];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = *(v13 + 3);
  v17 = *&v8[*MEMORY[0x277CD73D8]];
  v49 = *(v13 + 2);
  v50 = v16;
  v48[0] = v14;
  v48[1] = v15;
  v18 = *(v48 + (BYTE1(v17) & 0xF));
  v51[2] = v49;
  v51[3] = v16;
  v51[0] = v14;
  v51[1] = v15;
  v19 = *(v51 + (v17 & 0xF));
  v20 = MEMORY[0x277CD7400];
  v21 = *&v8[*MEMORY[0x277CD73D0] + 4] * *&v8[*MEMORY[0x277CD7400]];
  v43 = v7;
  v22 = [v7 lengthOfDimension:0];
  v23 = [a1 sparseFormat];
  v24 = v22;
  if (v23)
  {
    v24 = [v47 lengthOfDimension:0] - 1;
  }

  v41 = v24;
  v25 = *&v8[*v20];
  v52 = __PAIR64__(v19, v18);
  v53 = xmmword_239B19670;
  v54 = v25;
  v55 = v25;
  v56 = 0;
  v57 = v21;
  v58 = v21;
  v59 = 1065353216;
  v60 = 1;
  v61 = 0;
  v62 = v21;
  v63 = v21;
  v64 = 1;
  v65 = *&v47[*MEMORY[0x277CD7410]];
  v66 = v12;
  v67 = v22;
  v26 = *&a1[*MEMORY[0x277CD7360]];
  v27 = *&a1[*MEMORY[0x277CD7368]];
  v28.i64[0] = -1;
  v28.i64[1] = -1;
  v77 = v28;
  v78 = v28;
  v74 = -1;
  v76 = v28;
  v73 = v28;
  v75 = 3;
  v38 = v26;
  v40 = v27;
  MPSLibrary::CreateUberShaderKey();
  v29 = MPSLibrary::GetPipelineStateForMPSKey();
  v30 = [v8 buffer];
  [a2 setComputePipelineState:v29];
  [a2 setBuffer:v30 offset:0 atIndex:0];
  [a2 setBytes:&v52 length:92 atIndex:1];
  v31 = vshrq_n_u64(vaddw_u32(vdupq_n_s64(0x1FuLL), v52), 5uLL);
  v73 = vextq_s8(v31, v31, 8uLL);
  v74 = 1;
  v79 = vdupq_n_s64(0x20uLL);
  v80 = 1;
  [a2 dispatchThreadgroups:&v73 threadsPerThreadgroup:&v79];
  [a2 setComputePipelineState:PipelineStateForMPSKey];
  [a2 setBuffer:objc_msgSend(v43 offset:"buffer") atIndex:{0, 0}];
  [a2 setBuffer:objc_msgSend(v44 offset:"buffer") atIndex:{0, 1}];
  [a2 setBuffer:objc_msgSend(v47 offset:"buffer") atIndex:{0, 2}];
  [a2 setBuffer:objc_msgSend(v8 offset:"buffer") atIndex:{0, 3}];
  [a2 setBytes:&v52 length:92 atIndex:4];
  if ([a1 sparseFormat])
  {
    v32 = v46;
    v33 = 3;
    if (!v42)
    {
      v33 = 0;
    }

    v34 = (v46 + v41 - 1) >> v33;
    v35 = 1;
  }

  else
  {
    v34 = 1;
    v35 = (8 * v12 + v22 - 1) / (8 * v12);
    v32 = v46;
  }

  v73.i64[0] = v35;
  v73.i64[1] = v34;
  v74 = 1;
  v79.i64[0] = v12;
  v79.i64[1] = v32;
  v80 = 1;
  [a2 dispatchThreadgroups:&v73 threadsPerThreadgroup:&v79];
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t MPSNDArrayFunctionConstructorSparseGEMM(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  v23 = v5 & 1;
  v22 = (v5 & 2) != 0;
  v21 = (v5 >> 2) & 0x3FF;
  v20 = (v5 >> 12) & 0x3FF;
  v19 = v5 >> 22;
  v18 = BYTE4(v5) & 1;
  v17 = (v5 & 0x200000000) != 0;
  v16 = (v5 >> 36) & 7;
  v15 = (v5 >> 39) & 7;
  v14 = (v5 >> 42) & 7;
  v13 = (v5 >> 45) & 7;
  v12 = BYTE6(v5) & 7;
  v11 = (v5 >> 51) & 3;
  [v6 setConstantValue:&v23 type:53 atIndex:115];
  [v6 setConstantValue:&v22 type:53 atIndex:114];
  if (((v5 >> 2) & 0x3FF) != 0)
  {
    [v6 setConstantValue:&v21 type:41 atIndex:113];
  }

  if (((v5 >> 12) & 0x3FF) != 0)
  {
    [v6 setConstantValue:&v20 type:41 atIndex:112];
  }

  if (v5 >> 22)
  {
    [v6 setConstantValue:&v19 type:41 atIndex:111];
  }

  [v6 setConstantValue:&v18 type:53 atIndex:110];
  [v6 setConstantValue:&v17 type:53 atIndex:109];
  [v6 setConstantValue:&v16 type:41 atIndex:108];
  [v6 setConstantValue:&v15 type:41 atIndex:107];
  [v6 setConstantValue:&v14 type:41 atIndex:106];
  [v6 setConstantValue:&v13 type:41 atIndex:105];
  [v6 setConstantValue:&v12 type:41 atIndex:104];
  [v6 setConstantValue:&v11 type:41 atIndex:103];
  v7 = *a3;
  if (a3[1] != -1)
  {
    v24 = a3[1];
    [v6 setConstantValue:&v24 type:33 atIndex:126];
  }

  if (v7 != -1)
  {
    v24 = v7;
    [v6 setConstantValue:&v24 type:33 atIndex:125];
  }

  v24 = 0;
  [v6 setConstantValue:&v24 type:33 atIndex:123];
  v24 = 0;
  [v6 setConstantValue:&v24 type:33 atIndex:119];
  v24 = 0;
  [v6 setConstantValue:&v24 type:33 atIndex:118];
  v24 = 0;
  [v6 setConstantValue:&v24 type:33 atIndex:122];
  v24 = 0;
  [v6 setConstantValue:&v24 type:33 atIndex:121];
  v24 = 0;
  [v6 setConstantValue:&v24 type:33 atIndex:117];
  v24 = 0;
  [v6 setConstantValue:&v24 type:33 atIndex:116];
  v8 = *a2;
  v9 = _MPSNewSpecializedFunction();

  return v9;
}

uint64_t EncodeArrayIm2col(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v56 = *&a1[*MEMORY[0x277CD7370]];
  v7 = *(*&a1[*MEMORY[0x277CD7350]] + 1480);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v55 = v7;
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v9 = *(a4 + 208);
  v57 = a2;
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  v92 = -1;
  v93 = -1;
  v94 = [a1 dataLayout] == 1;
  v95 = -1;
  v96 = 0u;
  v97 = 0u;
  v53 = a4;
  v10 = [*(a4 + 16) count];
  v11 = MEMORY[0x277CD7410];
  v98 = v10 | 0x10000;
  v99 = 0;
  v12 = v8 + *MEMORY[0x277CD7410];
  v63 = *v12;
  v13 = *(v12 + 12);
  v61 = *(v12 + 8);
  v14 = [a1 dataLayout];
  v15 = *v11;
  if (v14 == 1)
  {
    v61 = *(v8 + v15);
    v63 = *(v8 + v15 + 4);
    v13 = *(v8 + v15 + 12);
  }

  v54 = v13;
  v16 = (v9 + v15);
  v60 = *v16;
  v62 = v16[1];
  v58 = v16[3];
  v59 = v16[2];
  v17 = *MEMORY[0x277CD73C8];
  if ((*(v8 + v17) != 268435488 || *(v9 + v17) != 268435488) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = [a1 kernelWidth];
  v19 = [a1 paddingLeft];
  v20 = [a1 paddingRight];
  v21 = [a1 dilationWidth];
  [a1 strideWidth];
  v22 = v19 + v63 + v20;
  v23 = v21 * (v18 - 1) + 1;
  v24 = [a1 kernelHeight];
  v25 = [a1 paddingTop];
  v26 = [a1 paddingBottom];
  v27 = [a1 dilationHeight];
  [a1 strideHeight];
  if ((v22 < v23 || v25 + v26 + HIDWORD(v63) < (v27 * (v24 - 1) + 1)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v28 = [a1 kernelHeight];
  v29 = [a1 paddingTop];
  v30 = [a1 paddingBottom];
  v31 = [a1 dilationHeight];
  v32 = (v29 + v30 + ~(v31 * (v28 - 1)) + HIDWORD(v63)) / [a1 strideHeight] + 1;
  v33 = [a1 kernelWidth];
  v34 = [a1 paddingLeft];
  v35 = [a1 paddingRight];
  v36 = [a1 dilationWidth];
  v37 = (v34 + v63 + v35 + ~(v36 * (v33 - 1))) / [a1 strideWidth] + 1;
  if (v60 != v37 * v32 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [a1 kernelWidth];
  [a1 kernelHeight];
  v38 = [a1 kernelWidth] * v61;
  if (v62 != v38 * [a1 kernelHeight] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v59 != v54 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v58 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v51 = *&a1[*MEMORY[0x277CD7360]];
  v52 = *&a1[*MEMORY[0x277CD7368]];
  v50 = *(v53 + 232);
  MPSLibrary::CreateUberShaderKey();
  v39 = *&a1[*MEMORY[0x277CD7370]];
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v41 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v41 <= 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = v41;
  }

  v43 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  if ((v62 + v42 - 1) / v42 * v42 >= v43)
  {
    LODWORD(v44) = v43;
  }

  else
  {
    v44 = (v62 + v42 - 1) / v42 * v42;
  }

  v45 = v44;
  if (v54 >= 4 * v55)
  {
    v47 = v44;
    v48 = v54;
  }

  else
  {
    v46 = 2 * v42;
    v47 = v44;
    v48 = v54;
    if (v46 < v44)
    {
      v48 = v54;
      v47 = v44;
      do
      {
        v48 *= 2;
        v45 = v47 >> 1;
        v47 >>= 1;
      }

      while (v48 < 4 * v55 && v46 < v45);
    }
  }

  v68 = v63;
  v69 = v61;
  v70 = v54;
  v71 = v60;
  v72 = v62;
  v73 = v59;
  v74 = v58;
  v75 = [a1 kernelHeight];
  v76 = [a1 kernelWidth];
  v77 = v32;
  v78 = v37;
  v79 = [a1 paddingTop];
  v80 = [a1 paddingBottom];
  v81 = [a1 paddingLeft];
  v82 = [a1 paddingRight];
  v83 = [a1 dilationHeight];
  v84 = [a1 dilationWidth];
  v85 = [a1 strideHeight];
  v86 = [a1 strideWidth];
  v87 = v47;
  v88 = v44;
  v89 = v48;
  v90 = 0;
  v91 = 0;
  [v57 setComputePipelineState:PipelineStateForMPSKey];
  [v57 setBytes:&v68 length:112 atIndex:29];
  v65 = vdupq_n_s64(1uLL);
  v66 = v65;
  v67 = v48;
  v64 = v45;
  [v57 dispatchThreadgroups:&v66 threadsPerThreadgroup:&v64];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArrayCol2im(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v75 = *&a1[*MEMORY[0x277CD7370]];
  v7 = *(*&a1[*MEMORY[0x277CD7350]] + 1480);
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v9 = *(a4 + 208);
  [a2 setBuffer:objc_msgSend(v9 offset:"buffer") atIndex:{*(a4 + 192), 29}];
  v68 = a2;
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  v10 = [a1 dataLayout];
  v83 = -1;
  v84 = -1;
  v85 = v10 == 1;
  v86 = -1;
  v87 = 0u;
  v88 = 0u;
  v65 = a4;
  v89 = [*(a4 + 16) count] | 0x10000;
  v90 = 0;
  v11 = *MEMORY[0x277CD7410];
  v12 = *&v9[v11];
  v74 = *&v9[v11 + 12];
  if (v10 == 1)
  {
    v13 = *&v9[v11];
  }

  else
  {
    v13 = *&v9[v11 + 8];
  }

  v73 = v13;
  if (v10 == 1)
  {
    v14 = *&v9[v11 + 8];
  }

  else
  {
    v14 = *&v9[v11 + 4];
  }

  if (v10 == 1)
  {
    v15 = *&v9[v11 + 4];
  }

  else
  {
    v15 = *&v9[v11];
  }

  if (v7 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v7;
  }

  v64 = v16;
  v17 = (v8 + v11);
  v66 = v17[1];
  v67 = v9;
  v70 = v17[2];
  v71 = *v17;
  v69 = v17[3];
  v18 = [a1 kernelWidth];
  v19 = [a1 paddingLeft];
  v20 = [a1 paddingRight];
  v21 = [a1 dilationWidth];
  [a1 strideWidth];
  v72 = v15;
  v22 = v19 + v20 + v15;
  v23 = v21 * (v18 - 1) + 1;
  v24 = [a1 kernelHeight];
  v25 = [a1 paddingTop];
  v26 = [a1 paddingBottom];
  v27 = [a1 dilationHeight];
  [a1 strideHeight];
  if (v22 < v23 || v25 + v26 + v14 < (v27 * (v24 - 1) + 1))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v29 = [a1 kernelHeight];
  v30 = [a1 paddingTop];
  v31 = [a1 paddingBottom];
  v32 = [a1 dilationHeight];
  v33 = (v30 + v31 + ~(v32 * (v29 - 1)) + v14) / [a1 strideHeight] + 1;
  v34 = [a1 kernelWidth];
  v35 = [a1 paddingLeft];
  v36 = [a1 paddingRight];
  v37 = [a1 dilationWidth];
  v38 = (v35 + v36 + ~(v37 * (v34 - 1)) + v72) / [a1 strideWidth] + 1;
  v63 = v33;
  v39 = v14;
  if (v71 != v38 * v33 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [a1 kernelWidth];
  [a1 kernelHeight];
  v40 = [a1 kernelWidth] * v73;
  if (v66 != v40 * [a1 kernelHeight] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v70 != v74 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v69 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v61 = *&a1[*MEMORY[0x277CD7360]];
  v62 = *&a1[*MEMORY[0x277CD7368]];
  v60 = *(v65 + 232);
  MPSLibrary::CreateUberShaderKey();
  v41 = *&a1[*MEMORY[0x277CD7370]];
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v43 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v43 <= 1)
  {
    v44 = 1;
  }

  else
  {
    v44 = v43;
  }

  v45 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  if ((v66 + v44 - 1) / v44 * v44 >= v45)
  {
    LODWORD(v46) = v45;
  }

  else
  {
    v46 = (v66 + v44 - 1) / v44 * v44;
  }

  v47 = v46;
  if (v70 >= 4 * v64)
  {
    v48 = v46;
    v49 = v70;
    v51 = v71;
    v50 = v72;
  }

  else
  {
    v48 = v46;
    v49 = v70;
    v51 = v71;
    v50 = v72;
    if (2 * v44 < v46)
    {
      v49 = v70;
      v48 = v46;
      do
      {
        v49 *= 2;
        v47 = v48 >> 1;
        v48 >>= 1;
      }

      while (v49 < 4 * v64 && 2 * v44 < v47);
    }
  }

  v52 = *&v67[*MEMORY[0x277CD73C8]];
  v80[0] = v51;
  v80[1] = v66;
  v80[2] = v70;
  v80[3] = v69;
  v80[4] = v50;
  v80[5] = v39;
  v80[6] = v73;
  v80[7] = v74;
  v80[8] = [a1 kernelHeight];
  v80[9] = [a1 kernelWidth];
  v80[10] = v63;
  v80[11] = v38;
  v80[12] = [a1 paddingTop];
  v80[13] = [a1 paddingBottom];
  v80[14] = [a1 paddingLeft];
  v80[15] = [a1 paddingRight];
  v80[16] = [a1 dilationHeight];
  v80[17] = [a1 dilationWidth];
  v80[18] = [a1 strideHeight];
  v80[19] = [a1 strideWidth];
  v80[20] = v48;
  v80[21] = v46;
  v81 = v49;
  v53 = *&v67[*MEMORY[0x277CD7400]];
  v54 = &v67[*MEMORY[0x277CD73D0]];
  v55 = v53 * *(v54 + 1);
  v56 = v52 >> 3;
  HIDWORD(v57) = 1;
  LODWORD(v57) = v55 * *(v54 + 2) / v56;
  DWORD1(v57) = v55 / v56;
  DWORD2(v57) = v53 / v56;
  v82 = v57;
  [v68 setComputePipelineState:PipelineStateForMPSKey];
  [v68 setBytes:v80 length:112 atIndex:28];
  v77 = vdupq_n_s64(1uLL);
  v78 = v77;
  v79 = v49;
  v76 = v47;
  [v68 dispatchThreadgroups:&v78 threadsPerThreadgroup:&v76];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeReduction(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v114 = *MEMORY[0x277D85DE8];
  v7 = [a1 operation];
  v8 = MEMORY[0x277CD7370];
  v9 = MEMORY[0x277CD7350];
  v96 = a4;
  if (v7 != 6 && [a1 operation] != 7)
  {
    v11 = [*(a4 + 232) inputTensorAtIndex:0];
    if (*(v11 + 8) != *([*(a4 + 232) outputTensorAtIndex:0] + 8) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v92 = *(a1 + *v8);
    v98 = *(a1 + *v9);
    v93 = a1[85];
    v12 = [*(a4 + 232) outputTensorAtIndex:0];
    v13 = [*(a4 + 232) inputTensorAtIndex:0];
    v106 = 0;
    if ([objc_msgSend(a1 "axes")])
    {
      v14 = 0;
      do
      {
        v15 = [objc_msgSend(objc_msgSend(a1 "axes")];
        if (v15 >= 4 && MTLReportFailureTypeEnabled())
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          v87 = [a1 label];
          v91 = v15;
          v79 = v17;
          v83 = a1;
          MTLReportFailure();
        }

        *(&v106 + v15) = 1;
        ++v14;
      }

      while (v14 < [objc_msgSend(a1 axes]);
    }

    BaseTensor::GetDimensionSize(v13);
    BaseTensor::GetDimensionSize(v13);
    BaseTensor::GetDimensionSize(v13);
    BaseTensor::GetDimensionSize(v13);
    BaseTensor::GetDimensionSize(v12);
    BaseTensor::GetDimensionSize(v12);
    BaseTensor::GetDimensionSize(v12);
    BaseTensor::GetDimensionSize(v12);
    operator new();
  }

  v97 = *(a1 + *v8);
  v10 = *(a1 + *v9);
  if ([a1 axes])
  {
    if ([objc_msgSend(a1 "axes")] == 1)
    {
      [a1 setAxis:{objc_msgSend(objc_msgSend(objc_msgSend(a1, "axes"), "objectAtIndexedSubscript:", 0), "unsignedLongValue")}];
    }

    else if (MTLReportFailureTypeEnabled())
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v83 = a1;
      v87 = [a1 label];
      v79 = v19;
      MTLReportFailure();
    }
  }

  MEMORY[0x23EE7C450](&v102, a3, 0);
  v20 = [*(a4 + 232) outputTensorAtIndex:0];
  v21 = [*(a4 + 232) inputTensorAtIndex:0];
  v22 = *(v20 + 2);
  if (v22 > 268435487)
  {
    if (v22 == 268435488 || v22 == 536870944)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v23 = v22 == 32 || v22 == 268435472;
    if (v23)
    {
      goto LABEL_27;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    v83 = a1;
    v87 = [a1 label];
    v79 = v46;
    MTLReportFailure();
  }

LABEL_27:
  v25 = *(v21 + 2);
  if (v25 == 268435488 || v25 == 268435472)
  {
    if (*(v20 + 2) == 32 && ([a1 operation] != 6 || objc_msgSend(a1, "operation") == 7) && MTLReportFailureTypeEnabled())
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v83 = a1;
      v87 = [a1 label];
      v79 = v28;
      MTLReportFailure();
    }

    v25 = *(v21 + 2);
  }

  if (v25 == 32 && *(v20 + 2) != 32 && MTLReportFailureTypeEnabled())
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v83 = a1;
    v87 = [a1 label];
    v79 = v30;
    MTLReportFailure();
  }

  if (*(v21 + 2) == 536870944 && *(v20 + 2) != 536870944 && MTLReportFailureTypeEnabled())
  {
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v83 = a1;
    v87 = [a1 label];
    v79 = v32;
    MTLReportFailure();
  }

  if ([a1 axis] >= 4 && MTLReportFailureTypeEnabled())
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v88 = [a1 label];
    v91 = [a1 axis];
    v80 = v34;
    v84 = a1;
    MTLReportFailure();
  }

  if (([a1 operation] == 6 || objc_msgSend(a1, "operation") == 7) && (*(v20 + 2) | 0x20000000) != 0x20000020 && MTLReportFailureTypeEnabled())
  {
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v85 = a1;
    v89 = [a1 label];
    v81 = v44;
    MTLReportFailure();
  }

  *&v35 = -1;
  *(&v35 + 1) = -1;
  v112 = v35;
  v113 = v35;
  v109.__r_.__value_.__r.__words[2] = -1;
  v111 = v35;
  *&v109.__r_.__value_.__l.__data_ = v35;
  v110 = 0;
  v36 = [*(a4 + 16) count];
  v37 = 0;
  *&v113 = v36 | ((*(a4 + 112) != 0) << 8) | 0x10000;
  if (*(v21 + 2) == 268435472)
  {
    v38 = 268435488;
  }

  else
  {
    v38 = *(v21 + 2);
  }

  v39 = *(v10 + 1472);
  if ((v38 & 0xDFFFFFFF) == 8)
  {
    v40 = 16;
  }

  else
  {
    v40 = v38;
  }

  if (v39 <= 6)
  {
    v41 = v40;
  }

  else
  {
    v41 = v38;
  }

  if (v38 <= 268435487)
  {
    if (v38 <= 31)
    {
      if (v38 == -1879048176)
      {
        v42 = 0;
        v37 = 2;
        goto LABEL_93;
      }

      if (v38 != 8)
      {
        if (v38 != 16)
        {
          goto LABEL_94;
        }

        goto LABEL_71;
      }

LABEL_88:
      v42 = v37;
      v37 = 7;
      goto LABEL_93;
    }

    if (v38 == 32)
    {
      goto LABEL_90;
    }

    if (v38 == 64)
    {
LABEL_86:
      v42 = v37;
      v37 = 4;
      goto LABEL_93;
    }
  }

  else
  {
    if (v38 > 536870919)
    {
      if (v38 <= 536870943)
      {
        if (v38 != 536870920)
        {
          if (v38 != 536870928)
          {
            goto LABEL_94;
          }

          LOWORD(v37) = 0x4000;
LABEL_71:
          v42 = v37;
          v37 = 6;
LABEL_93:
          v37 |= ((v39 > 6) << 15) | v42 & 0x4000;
          goto LABEL_94;
        }

        LOWORD(v37) = 0x4000;
        goto LABEL_88;
      }

      if (v38 != 536870944)
      {
        if (v38 != 536870976)
        {
          goto LABEL_94;
        }

        LOWORD(v37) = 0x4000;
        goto LABEL_86;
      }

      LOWORD(v37) = 0x4000;
LABEL_90:
      v42 = v37;
      v37 = 5;
      goto LABEL_93;
    }

    if (v38 == 268435488)
    {
      v42 = 0;
      goto LABEL_93;
    }

    if (v38 == 285212704 || v38 == 285212736)
    {
      v42 = 0;
      v37 = 3;
      goto LABEL_93;
    }
  }

LABEL_94:
  v109.__r_.__value_.__r.__words[2] = v37;
  DimensionSize = BaseTensor::GetDimensionSize(v21);
  v48 = BaseTensor::GetDimensionSize(v21);
  v49 = BaseTensor::GetDimensionSize(v21);
  v50 = BaseTensor::GetDimensionSize(v21);
  v51 = [a1 axis];
  LODWORD(v107.__r_.__value_.__r.__words[2]) = v51;
  v107.__r_.__value_.__l.__size_ = 0x100000001;
  v52 = *(v97 + 32);
  v100 = 0uLL;
  v101 = 0;
  (*(*v52 + 16))(&v100);
  v94 = v41;
  if (v51)
  {
    if (v51 == 1)
    {
      DWORD2(v108) = v49;
      LODWORD(v107.__r_.__value_.__l.__data_) = v48;
      v53 = BaseTensor::GetDimensionSize(v20);
      v54 = v50 * v49;
      v95 = v48;
    }

    else
    {
      DWORD2(v108) = v48;
      if (v51 == 2)
      {
        LODWORD(v107.__r_.__value_.__l.__data_) = v49;
        v53 = BaseTensor::GetDimensionSize(v20);
        v54 = v50 * v48;
        v95 = v49;
      }

      else
      {
        LODWORD(v107.__r_.__value_.__l.__data_) = v50;
        v53 = BaseTensor::GetDimensionSize(v20);
        v54 = v49 * v48;
        v95 = v50;
      }
    }

    v55 = DimensionSize;
  }

  else
  {
    DWORD2(v108) = v49;
    LODWORD(v107.__r_.__value_.__l.__data_) = DimensionSize;
    v53 = BaseTensor::GetDimensionSize(v20);
    v54 = v50 * v49;
    v95 = DimensionSize;
    v55 = v48;
  }

  v23 = [a1 operation] == 7;
  v56 = MEMORY[0x277CD7370];
  v57 = *(a1 + *MEMORY[0x277CD7370]);
  v58 = v23;
  v59 = (&CommonKernels)[16 * v58];
  v86 = *(a1 + *MEMORY[0x277CD7360]);
  v90 = *(a1 + *MEMORY[0x277CD7368]);
  v82 = *(v96 + 232);
  MPSLibrary::CreateUberShaderKey();
  v60 = *(a1 + *v56);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v62 = PipelineStateForMPSKey;
  if (PipelineStateForMPSKey)
  {
    v63 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    v64 = v54;
    v65 = 1024;
    v66 = v55;
    do
    {
      v67 = v65;
      v65 >>= 1;
    }

    while (v67 > v63);
    *&v100 = v67;
    v68 = 32;
    if (DimensionSize > 0x20uLL)
    {
      v68 = DimensionSize;
    }

    if (v67 > v68)
    {
      do
      {
        v67 >>= 1;
      }

      while (v67 > v68);
      *&v100 = v67;
    }

    if (v48 == 1 && v49 == 1 && v50 == 1)
    {
      if (v67 >= 0x81)
      {
        v69 = a2;
        v70 = v95;
        if (4 * v67 > DimensionSize)
        {
          do
          {
            v71 = v67;
            v67 >>= 1;
          }

          while (v71 >= 0x102 && 4 * v67 > DimensionSize);
          *&v100 = v67;
        }

        goto LABEL_131;
      }
    }

    else
    {
      v73 = 10;
      if (DimensionSize <= 0x1000)
      {
        v73 = 14;
      }

      if (v67 >= 0x21)
      {
        v74 = v48 * DimensionSize * v49 * v50;
        v75 = v67;
        v69 = a2;
        v70 = v95;
        while (v75 << v73 >= v74)
        {
          v67 = v75 >> 1;
          *&v100 = v75 >> 1;
          v76 = v75 > 0x41;
          v75 >>= 1;
          if (!v76)
          {
            goto LABEL_131;
          }
        }

        v67 = v75;
        goto LABEL_131;
      }
    }

    v69 = a2;
    v70 = v95;
LABEL_131:
    HIDWORD(v107.__r_.__value_.__r.__words[0]) = (v67 + v70 - 1) / v67;
    LODWORD(v107.__r_.__value_.__r.__words[1]) = v53;
    HIDWORD(v107.__r_.__value_.__r.__words[1]) = (v53 + v67 - 1) / v67;
    [v69 setComputePipelineState:v62];
    MPSSetNDArraysOnComputeEncoder(v69, v96, 4, 0, 0);
    [v69 setBytes:&v107 length:44 atIndex:29];
    [v69 setThreadgroupMemoryLength:v67 * ((v94 >> 3) + 4) atIndex:0];
    v105[0] = 1;
    v105[1] = v66;
    v105[2] = v64;
    *__p = v100;
    v104 = v101;
    [v69 dispatchThreadgroups:v105 threadsPerThreadgroup:__p];
    MPSLibrary::ReleaseMPSKey();
    MPSLibrary::ReleaseComputeState();
    v72 = 0;
    goto LABEL_132;
  }

  v72 = -1;
LABEL_132:
  MPSAutoCache::~MPSAutoCache(&v102);
  v77 = *MEMORY[0x277D85DE8];
  return v72;
}

void sub_239AA9730(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
    if (SLOBYTE(STACK[0x337]) < 0)
    {
LABEL_5:
      operator delete(STACK[0x320]);
      if (SLOBYTE(STACK[0x257]) < 0)
      {
LABEL_8:
        operator delete(STACK[0x240]);
        if ((SLOBYTE(STACK[0x237]) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      }

LABEL_10:
      if ((SLOBYTE(STACK[0x237]) & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_11:
      operator delete(STACK[0x220]);
      _Unwind_Resume(a1);
    }
  }

  else if (SLOBYTE(STACK[0x337]) < 0)
  {
    goto LABEL_5;
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

uint64_t MPSNDArrayReductionCreateUserConstantAxes(uint64_t a1, uint8x8_t a2, uint8x8_t a3)
{
  v3 = 0;
  v4 = *a1;
  if (*a1 <= 268435487)
  {
    if (v4 > 31)
    {
      switch(v4)
      {
        case 32:
          goto LABEL_30;
        case 64:
          goto LABEL_26;
        case 268435472:
          v3 = 0;
          v5 = 1;
          goto LABEL_33;
      }
    }

    else
    {
      switch(v4)
      {
        case -1879048176:
          v3 = 0;
          v5 = 2;
          goto LABEL_33;
        case 8:
          goto LABEL_28;
        case 16:
          v5 = 6;
          goto LABEL_33;
      }
    }

    return 0;
  }

  if (v4 <= 536870919)
  {
    if (v4 == 268435488)
    {
      v5 = 0;
      goto LABEL_33;
    }

    if (v4 == 285212704 || v4 == 285212736)
    {
      v3 = 0;
      v5 = 3;
      goto LABEL_33;
    }

    return 0;
  }

  if (v4 > 536870943)
  {
    if (v4 != 536870944)
    {
      if (v4 != 536870976)
      {
        return 0;
      }

      v3 = 0x4000;
LABEL_26:
      v5 = 4;
      goto LABEL_33;
    }

    v3 = 0x4000;
LABEL_30:
    v5 = 5;
    goto LABEL_33;
  }

  if (v4 == 536870920)
  {
    v3 = 0x4000;
LABEL_28:
    v5 = 7;
    goto LABEL_33;
  }

  if (v4 != 536870928)
  {
    return 0;
  }

  v3 = 0x4000;
  v5 = 6;
LABEL_33:
  a3.i32[0] = *(a1 + 4);
  a2.i32[0] = *(a1 + 8);
  v7 = vshl_u16(*&vmovl_u8(a2), 0x6000500040003);
  v8 = vshlq_u32(vmovl_u16(*&vmovl_u8(a3)), xmmword_239B19AA0);
  v9 = v3 & 0x4000;
  v10 = *(a1 + 32);
  if (v10 >= 4)
  {
    LODWORD(v10) = 4;
  }

  v11 = vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  return v11.i32[0] | v11.i32[1] | (*(a1 + 24) << 15) | ((*(a1 + 16) << 8) - 256) | ((v10 << 16) - 0x10000) | v5 | v9 | (v7.i8[0] | v7.i8[4] | ((v7.i32[0] | v7.i32[1]) >> 16)) | (*(a1 + 12) << 7);
}

uint64_t EncodeArrayReductionGradientNew(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v132 = *MEMORY[0x277D85DE8];
  v108 = *&a1[*MEMORY[0x277CD7370]];
  MEMORY[0x23EE7C450](v127, a3, 0);
  v7 = [*(a4 + 232) outputTensorAtIndex:0];
  context = [*(a4 + 232) inputTensorAtIndex:0];
  v8 = [*(a4 + 232) inputTensorAtIndex:1];
  v9 = *(v8 + 8);
  if (v9 > 268435471)
  {
    if (v9 == 268435472 || v9 == 268435488)
    {
      goto LABEL_10;
    }
  }

  else if (v9 == -1879048176 || v9 == 32)
  {
    goto LABEL_10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v83 = a1;
    v90 = [a1 label];
    v76 = v47;
    MTLReportFailure();
  }

LABEL_10:
  v11 = *(v7 + 2);
  v13 = v11 == 32 || v11 == 268435472 || v11 == 268435488;
  if (!v13 && *(v8 + 8) != -1879048176 && MTLReportFailureTypeEnabled())
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v83 = a1;
    v90 = [a1 label];
    v76 = v34;
    MTLReportFailure();
  }

  if ([a1 operation] == 5 && MTLReportFailureTypeEnabled())
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v84 = a1;
    v91 = [a1 label];
    v77 = v15;
    MTLReportFailure();
  }

  if ([a1 operation] == 7 && MTLReportFailureTypeEnabled())
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v85 = a1;
    v92 = [a1 label];
    v78 = v17;
    MTLReportFailure();
  }

  if ([a1 operation] == 6 && MTLReportFailureTypeEnabled())
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v86 = a1;
    v93 = [a1 label];
    v79 = v19;
    MTLReportFailure();
  }

  if ([a1 axis] >= 4 && MTLReportFailureTypeEnabled())
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v94 = [a1 label];
    v97 = [a1 axis];
    v80 = v21;
    v87 = a1;
    MTLReportFailure();
  }

  *&v22 = -1;
  *(&v22 + 1) = -1;
  v125 = v22;
  v126 = v22;
  v123 = 0xFFFFFFFFFFFFFFFFLL;
  v124 = v22;
  v122 = v22;
  v100 = v8;
  *&v126 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  *&v123 = 0;
  v23 = [a1 operation];
  v109 = a2;
  v110 = 0;
  v24 = 0xFFFFFFFFLL;
  if (v23 <= 1)
  {
    if (v23)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v103 = 0xFFFFFFFFLL;
      if (v23 != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

LABEL_38:
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v110 = 1;
    v103 = 11;
    v25 = 1;
    goto LABEL_39;
  }

  if (v23 == 2)
  {
    goto LABEL_38;
  }

  if (v23 == 3)
  {
LABEL_37:
    v25 = 0;
    v27 = 0;
    v110 = 1;
    v103 = 12;
    v24 = 1;
    v26 = 1;
    goto LABEL_39;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v103 = 0xFFFFFFFFLL;
  if (v23 == 4)
  {
    v110 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    v103 = 10;
  }

LABEL_39:
  DimensionSize = BaseTensor::GetDimensionSize(v7);
  v28 = BaseTensor::GetDimensionSize(v7);
  v29 = BaseTensor::GetDimensionSize(v7);
  v30 = BaseTensor::GetDimensionSize(v7);
  v119 = [a1 axis];
  v118 = 0x100000001;
  v31 = *(v108 + 32);
  v115 = 0uLL;
  v116 = 0;
  (*(*v31 + 16))(&v115);
  if (v119)
  {
    if (v119 == 1)
    {
      v121 = v29;
      v117[0] = v28;
      v107 = BaseTensor::GetDimensionSize(v7);
      v32 = v30 * v29;
    }

    else
    {
      v121 = v28;
      if (v119 == 2)
      {
        v117[0] = v29;
        v107 = BaseTensor::GetDimensionSize(v7);
        v32 = v30 * v28;
      }

      else
      {
        v117[0] = v30;
        v107 = BaseTensor::GetDimensionSize(v7);
        v32 = v29 * v28;
      }
    }

    v35 = DimensionSize;
  }

  else
  {
    v121 = v29;
    v117[0] = DimensionSize;
    v107 = BaseTensor::GetDimensionSize(v7);
    v32 = v30 * v29;
    v35 = v28;
  }

  v101 = v32;
  v102 = v35;
  if (v25)
  {
    v36 = context[2];
    v37 = 2139095040;
    if (v36 <= 268435471)
    {
      v38 = v109;
      if (v36 != -1879048176)
      {
        if (v36 != 32)
        {
          goto LABEL_63;
        }

        v37 = -1;
      }

      goto LABEL_62;
    }

LABEL_60:
    v38 = v109;
    if (v36 == 268435472 || v36 == 268435488)
    {
LABEL_62:
      v120 = v37;
      goto LABEL_63;
    }

    goto LABEL_63;
  }

  if (v26)
  {
    v36 = context[2];
    v37 = -8388608;
    if (v36 <= 268435471)
    {
      v38 = v109;
      if (v36 != -1879048176)
      {
        if (v36 != 32)
        {
          goto LABEL_63;
        }

        v37 = 0;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v38 = v109;
  if (v27)
  {
    v45 = context[2];
    v37 = 0;
    if (v45 > 268435471)
    {
      if (v45 == 268435488 || v45 == 268435472)
      {
        goto LABEL_62;
      }
    }

    else if (v45 == -1879048176 || v45 == 32)
    {
      goto LABEL_62;
    }
  }

LABEL_63:
  if (!v110)
  {
    v43 = 0;
    v44 = 0;
    goto LABEL_113;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = 0;
  v41 = context[2];
  if (v41 > 268435487)
  {
    if (v41 <= 536870919)
    {
      if (v41 == 268435488)
      {
        v42 = 16;
      }

      else
      {
        if (v41 != 285212704 && v41 != 285212736)
        {
          goto LABEL_105;
        }

        LOWORD(v40) = 0;
        v42 = 19;
      }

      goto LABEL_104;
    }

    if (v41 <= 536870943)
    {
      if (v41 != 536870920)
      {
        if (v41 == 536870928)
        {
          LOWORD(v40) = 0x4000;
          v42 = 22;
LABEL_104:
          v40 = v40 & 0x4000 | v42;
          goto LABEL_105;
        }

        goto LABEL_105;
      }

      LOWORD(v40) = 0x4000;
LABEL_99:
      v42 = 23;
      goto LABEL_104;
    }

    if (v41 != 536870944)
    {
      if (v41 != 536870976)
      {
        goto LABEL_105;
      }

      LOWORD(v40) = 0x4000;
      goto LABEL_94;
    }

    LOWORD(v40) = 0x4000;
    goto LABEL_101;
  }

  if (v41 > 31)
  {
    if (v41 != 32)
    {
      if (v41 != 64)
      {
        if (v41 == 268435472)
        {
          LOWORD(v40) = 0;
          v42 = 17;
          goto LABEL_104;
        }

        goto LABEL_105;
      }

LABEL_94:
      v42 = 20;
      goto LABEL_104;
    }

LABEL_101:
    v42 = 21;
    goto LABEL_104;
  }

  switch(v41)
  {
    case -1879048176:
      LOWORD(v40) = 0;
      v42 = 18;
      goto LABEL_104;
    case 8:
      goto LABEL_99;
    case 16:
      v42 = 22;
      goto LABEL_104;
  }

LABEL_105:
  contexta = v39;
  *&v123 = v40;
  v48 = MEMORY[0x277CD7370];
  v49 = *&a1[*MEMORY[0x277CD7370]];
  v50 = (&CommonKernels)[16 * v24];
  v88 = *&a1[*MEMORY[0x277CD7360]];
  v95 = *&a1[*MEMORY[0x277CD7368]];
  v81 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v51 = *&a1[*v48];
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v53 = PipelineStateForMPSKey;
  if (PipelineStateForMPSKey)
  {
    v54 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    v55 = v115;
    if (v115 > v54)
    {
      do
      {
        v55 >>= 1;
      }

      while (v55 > v54);
      *&v115 = v55;
    }

    v98 = *(v7 + 2) == -1879048176;
    v99 = *(v7 + 2);
    [v38 setComputePipelineState:v53];
    TempBuffer = MPSAutoCache::GetTempBuffer(v127, 4 * v28 * DimensionSize * v29 * v30, 0);
    v128 = DimensionSize;
    v129 = v28;
    v130 = v29;
    v131 = v30;
    *(&v128 + v119) = 1;
    v57 = [MEMORY[0x277CD7268] descriptorWithDataType:32 dimensionCount:4 dimensionSizes:&v128];
    [v57 setPreferPackedRows:1];
    v44 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:TempBuffer descriptor:v57];
    v58 = v115;
    LODWORD(v118) = 1;
    HIDWORD(v118) = (v107 + v115 - 1) / v115;
    v59 = v117[0];
    v60 = (v115 + v117[0] - 1) / v115;
    v117[1] = v60;
    v43 = malloc_type_calloc(0x50uLL, 1uLL, 0x10000404247E4FDuLL);
    MPSSetNDArraysOnComputeEncoder(v109, a4, 4, 0, 0);
    [v109 setBuffer:objc_msgSend(v44 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v44, 0, 4, v43, 0), 28}];
    [v109 setBytes:v43 length:80 atIndex:27];
    [v109 setBytes:v117 length:44 atIndex:29];
    [v109 setThreadgroupMemoryLength:(2 * v55 * (v99 >> 3)) << v98 atIndex:0];
    *&v113 = (v59 + v60 * v58 - 1) / (v60 * v58);
    *(&v113 + 1) = v102;
    v114 = v101;
    v111 = v115;
    v112 = v116;
    [v109 dispatchThreadgroups:&v113 threadsPerThreadgroup:&v111];
    MPSLibrary::ReleaseMPSKey();
    MPSLibrary::ReleaseComputeState();
    v38 = v109;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  objc_autoreleasePoolPop(contexta);
  if (!v53)
  {
    goto LABEL_122;
  }

  *&v123 = 2;
LABEL_113:
  v61 = MEMORY[0x277CD7370];
  v62 = *&a1[*MEMORY[0x277CD7370]];
  v63 = (&CommonKernels)[16 * v103];
  v89 = *&a1[*MEMORY[0x277CD7360]];
  v96 = *&a1[*MEMORY[0x277CD7368]];
  v82 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v64 = *&a1[*v61];
  v65 = MPSLibrary::GetPipelineStateForMPSKey();
  v66 = v65;
  if (!v65)
  {
LABEL_122:
    v73 = -1;
    goto LABEL_123;
  }

  v67 = [v65 maxTotalThreadsPerThreadgroup];
  v68 = v115;
  if (v115 > v67)
  {
    do
    {
      v68 >>= 1;
    }

    while (v68 > v67);
    *&v115 = v68;
  }

  v69 = *(v100 + 8);
  [v38 setComputePipelineState:v66];
  v70 = v38;
  v71 = v115;
  v72 = (v115 + v107 - 1) / v115;
  v118 = __PAIR64__(v72, v107);
  MPSSetNDArraysOnComputeEncoder(v70, a4, 4, 0, 0);
  if (v110)
  {
    [v70 setBuffer:objc_msgSend(v44 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v44, 0, 4, v43, 0), 28}];
    [v70 setBytes:v43 length:80 atIndex:27];
  }

  [v70 setBytes:v117 length:44 atIndex:29];
  [v70 setThreadgroupMemoryLength:((v69 >> 3) + 19) & 0x3FF0 atIndex:0];
  v128 = (v72 * v71 + v107 - 1) / (v72 * v71);
  v129 = v102;
  v130 = v101;
  v113 = v115;
  v114 = v116;
  [v70 dispatchThreadgroups:&v128 threadsPerThreadgroup:&v113];
  if (v110)
  {

    free(v43);
  }

  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  v73 = 0;
LABEL_123:
  MPSAutoCache::~MPSAutoCache(v127);
  v74 = *MEMORY[0x277D85DE8];
  return v73;
}

__n128 MPSNDArrayReductionBehaviors::getThreads@<Q0>(MPSNDArrayReductionBehaviors *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 3);
  return result;
}

uint64_t MPSNDArrayIdentityBehaviors::getNZStepsLog2PerThread(__n128 a1)
{
  if (a1.n128_u32[2] == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1.n128_u32[2] > 2);
  }
}

uint64_t MPSNDArrayIdentityBehaviors::getNXResultsPerThread(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 8) & 7;
  if (HIDWORD(a3) > 0x1000)
  {
    v3 = *(a1 + 8) >> 3;
  }

  if (SHIDWORD(a3) < 128 || SLODWORD(a3) < 128)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t MPSNDArrayIdentityBehaviors::getLaunchOrder(uint64_t a1, int *a2, __n128 a3, __n128 a4, int32x4_t a5)
{
  result = (*(*a1 + 16))(a1);
  if ((vminvq_u32(vcgtq_s32(vdupq_n_s32(result), a5)) & 0x80000000) != 0)
  {
    return result;
  }

  v7 = a3.n128_i32[0] > 15 || a5.i32[0] < result;
  v8 = v7;
  v9 = 16;
  if (!v7)
  {
    v10.i64[0] = -1;
    v10.i64[1] = -1;
    if ((vminvq_u32(v10) & 0x80000000) == 0)
    {
      v9 = 16;
    }

    else
    {
      v9 = a3.n128_u32[0];
    }
  }

  if (a5.i32[1] < result || a3.n128_u32[1] >= v9)
  {
    v12 = 0;
    v13 = a3.n128_i32[2];
    v14 = a5.i32[2];
    if (a5.i32[2] < result || a3.n128_u32[2] >= v9)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v16.i64[0] = -1;
  v16.i64[1] = -1;
  v17 = vminvq_u32(v16);
  if (v17 < 0)
  {
    v9 = a3.n128_i32[1];
  }

  v12 = v17 >> 31;
  v13 = a3.n128_i32[2];
  v14 = a5.i32[2];
  if (a5.i32[2] >= result && a3.n128_u32[2] < v9)
  {
LABEL_29:
    v19.i64[0] = -1;
    v19.i64[1] = -1;
    if ((vminvq_u32(v19) & 0x80000000) != 0)
    {
      v9 = v13;
      v12 = 2;
    }
  }

LABEL_31:
  if (a5.i32[3] >= result && a3.n128_u32[3] < v9)
  {
    v21.i64[0] = -1;
    v21.i64[1] = -1;
    if ((vminvq_u32(v21) & 0x80000000) != 0)
    {
      v12 = 3;
      v31 = a4.n128_u32[0];
      v32 = 16;
      if (a4.n128_i32[0] > 15)
      {
        goto LABEL_72;
      }

      goto LABEL_68;
    }
  }

  if (v9 == 16)
  {
    v22.i64[0] = -1;
    v22.i64[1] = -1;
    v23 = vminvq_u32(v22);
    if (v23 >= 0)
    {
      v24 = 16;
    }

    else
    {
      v24 = a3.n128_u32[0];
    }

    if (v23 >= 0)
    {
      v25 = v12;
    }

    else
    {
      v25 = 0;
    }

    if (a3.n128_i32[0] < 16)
    {
      v9 = v24;
      v12 = v25;
    }

    if (v23 >= 0)
    {
      v26 = v9;
    }

    else
    {
      v26 = a3.n128_u32[1];
    }

    if (v23 < 0)
    {
      v27 = 1;
    }

    else
    {
      v27 = v12;
    }

    if (a3.n128_i32[1] < v9)
    {
      v9 = v26;
      v12 = v27;
    }

    if (v23 >= 0)
    {
      v28 = v9;
    }

    else
    {
      v28 = v13;
    }

    if (v23 >= 0)
    {
      v29 = v12;
    }

    else
    {
      v29 = 2;
    }

    if (v13 < v9)
    {
      v9 = v28;
      v12 = v29;
    }

    if (v23 >= 0)
    {
      v30 = v12;
    }

    else
    {
      v30 = 3;
    }

    if (a3.n128_i32[3] < v9)
    {
      v12 = v30;
    }
  }

  v31 = a4.n128_u32[0];
  v32 = 16;
  if (a4.n128_i32[0] <= 15)
  {
LABEL_68:
    if (a5.i32[0] >= result)
    {
      v33.i64[0] = -1;
      v33.i64[1] = -1;
      if ((vminvq_u32(v33) & 0x80000000) == 0)
      {
        v32 = 16;
      }

      else
      {
        v32 = v31;
      }
    }
  }

LABEL_72:
  v34 = 0;
  if (a5.i32[1] >= result && a4.n128_i32[1] < v32)
  {
    v35.i64[0] = -1;
    v35.i64[1] = -1;
    v36 = vminvq_u32(v35);
    if (v36 < 0)
    {
      v32 = a4.n128_i32[1];
    }

    v34 = v36 >> 31;
  }

  if (v14 >= result && a4.n128_i32[2] < v32)
  {
    v37.i64[0] = -1;
    v37.i64[1] = -1;
    if ((vminvq_u32(v37) & 0x80000000) != 0)
    {
      v32 = a4.n128_i32[2];
      v34 = 2;
    }
  }

  if (a5.i32[3] >= result && a4.n128_i32[3] < v32)
  {
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    if ((vminvq_u32(v38) & 0x80000000) != 0)
    {
      v34 = 3;
      v39.i64[1] = -1;
      v39.i32[0] = v12;
      v40 = 3;
      if (v12 == 3)
      {
        goto LABEL_126;
      }

      goto LABEL_86;
    }
  }

  if (v32 == 16)
  {
    v43.i64[0] = -1;
    v43.i64[1] = -1;
    v44 = vminvq_u32(v43);
    if (v44 >= 0)
    {
      v45 = 16;
    }

    else
    {
      v45 = v31;
    }

    if (v44 >= 0)
    {
      v46 = v34;
    }

    else
    {
      v46 = 0;
    }

    v47 = v31 < 16;
    if (v31 >= 16)
    {
      v48 = 16;
    }

    else
    {
      v48 = v45;
    }

    if (v47)
    {
      v34 = v46;
    }

    if (v44 >= 0)
    {
      v49 = v48;
    }

    else
    {
      v49 = a4.n128_u32[1];
    }

    if (v44 < 0)
    {
      v50 = 1;
    }

    else
    {
      v50 = v34;
    }

    if (a4.n128_i32[1] < v48)
    {
      v48 = v49;
      v34 = v50;
    }

    if (v44 >= 0)
    {
      v51 = v48;
    }

    else
    {
      v51 = a4.n128_u32[2];
    }

    if (v44 >= 0)
    {
      v52 = v34;
    }

    else
    {
      v52 = 2;
    }

    if (a4.n128_i32[2] < v48)
    {
      v48 = v51;
      v34 = v52;
    }

    if (v44 >= 0)
    {
      v53 = v34;
    }

    else
    {
      v53 = 3;
    }

    if (a4.n128_i32[3] < v48)
    {
      v34 = v53;
    }

    v39.i64[1] = -1;
    v39.i32[0] = v12;
    v40 = v34;
    if (v34 == v12)
    {
      goto LABEL_126;
    }

LABEL_86:
    v39.i32[1] = v40;
    v41 = 16;
    if (v8)
    {
      goto LABEL_87;
    }

LABEL_160:
    if ((vminvq_u32(vtstq_s32(v39, v39)) & 0x80000000) == 0)
    {
      v41 = 16;
    }

    else
    {
      v41 = a3.n128_u32[0];
    }

    v42 = 0;
    if (a5.i32[1] < result)
    {
      goto LABEL_168;
    }

    goto LABEL_164;
  }

  v39.i64[1] = -1;
  v39.i32[0] = v12;
  v40 = v34;
  if (v34 != v12)
  {
    goto LABEL_86;
  }

LABEL_126:
  v54 = 16;
  if ((v8 & 1) == 0)
  {
    v55 = -1;
    v55.i16[0] = v12 != 0;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v55), 0x1FuLL))) & 0x80000000) == 0)
    {
      v54 = 16;
    }

    else
    {
      v54 = a3.n128_u32[0];
    }
  }

  v56 = 0;
  if (a5.i32[1] >= result && a3.n128_i32[1] < v54)
  {
    v57 = -1;
    v57.i16[0] = v12 != 1;
    v58 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v57), 0x1FuLL)));
    if (v58 < 0)
    {
      v54 = a3.n128_i32[1];
    }

    v56 = v58 >> 31;
  }

  if (v14 >= result && v13 < v54)
  {
    v59 = -1;
    v59.i16[0] = v12 != 2;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v59), 0x1FuLL))) & 0x80000000) != 0)
    {
      v54 = v13;
      v56 = 2;
    }
  }

  if (a5.i32[3] < result || a3.n128_i32[3] >= v54 || (v60 = -1, v60.i16[0] = v12 != 3, (vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v60), 0x1FuLL))) & 0x80000000) == 0))
  {
    if (v54 != 16)
    {
      goto LABEL_159;
    }

    if (a3.n128_i32[0] < 16)
    {
      v61 = -1;
      v61.i16[0] = v12 != 0;
      if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v61), 0x1FuLL))) & 0x80000000) != 0)
      {
        v54 = a3.n128_u32[0];
        v56 = 0;
      }

      if (a3.n128_i32[1] >= v54)
      {
LABEL_145:
        if (v13 >= v54)
        {
          goto LABEL_146;
        }

        goto LABEL_154;
      }
    }

    else if (a3.n128_i32[1] >= 16)
    {
      goto LABEL_145;
    }

    v62 = -1;
    v62.i16[0] = v12 != 1;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v62), 0x1FuLL))) & 0x80000000) != 0)
    {
      v54 = a3.n128_i32[1];
      v56 = 1;
    }

    if (v13 >= v54)
    {
LABEL_146:
      if (a3.n128_i32[3] >= v54)
      {
        goto LABEL_159;
      }

      goto LABEL_157;
    }

LABEL_154:
    v63 = -1;
    v63.i16[0] = v12 != 2;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v63), 0x1FuLL))) & 0x80000000) != 0)
    {
      v54 = v13;
      v56 = 2;
    }

    if (a3.n128_i32[3] >= v54)
    {
LABEL_159:
      v34 = v12;
      v39.i32[1] = v56;
      v41 = 16;
      if ((v8 & 1) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_87;
    }

LABEL_157:
    v64 = -1;
    v64.i16[0] = v12 != 3;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v64), 0x1FuLL))) & 0x80000000) != 0)
    {
      v56 = 3;
    }

    goto LABEL_159;
  }

  v34 = v12;
  v39.i32[1] = 3;
  v41 = 16;
  if ((v8 & 1) == 0)
  {
    goto LABEL_160;
  }

LABEL_87:
  v42 = 0;
  if (a5.i32[1] < result)
  {
    goto LABEL_168;
  }

LABEL_164:
  if (a3.n128_i32[1] < v41)
  {
    v65.i64[0] = 0x100000001;
    v65.i64[1] = 0x100000001;
    v66 = vminvq_u32(vmvnq_s8(vceqq_s32(v39, v65)));
    if (v66 < 0)
    {
      v41 = a3.n128_i32[1];
    }

    v42 = v66 >> 31;
  }

LABEL_168:
  if (v14 >= result && v13 < v41)
  {
    v67.i64[0] = 0x200000002;
    v67.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v67))) & 0x80000000) != 0)
    {
      v41 = v13;
      v42 = 2;
    }
  }

  if (a5.i32[3] >= result && a3.n128_i32[3] < v41 && (v68.i64[0] = 0x300000003, v68.i64[1] = 0x300000003, (vminvq_u32(vmvnq_s8(vceqq_s32(v39, v68))) & 0x80000000) != 0))
  {
    v42 = 3;
  }

  else if (v41 == 16)
  {
    if (a3.n128_i32[0] < 16)
    {
      if ((vminvq_u32(vtstq_s32(v39, v39)) & 0x80000000) != 0)
      {
        v41 = a3.n128_u32[0];
        v42 = 0;
      }

      if (a3.n128_i32[1] >= v41)
      {
LABEL_178:
        if (v13 >= v41)
        {
          goto LABEL_179;
        }

        goto LABEL_187;
      }
    }

    else if (a3.n128_i32[1] >= 16)
    {
      goto LABEL_178;
    }

    v69.i64[0] = 0x100000001;
    v69.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v69))) & 0x80000000) != 0)
    {
      v41 = a3.n128_i32[1];
      v42 = 1;
    }

    if (v13 >= v41)
    {
LABEL_179:
      if (a3.n128_i32[3] >= v41)
      {
        goto LABEL_194;
      }

LABEL_190:
      v71.i64[0] = 0x300000003;
      v71.i64[1] = 0x300000003;
      if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v71))) & 0x80000000) != 0)
      {
        v42 = 3;
      }

      goto LABEL_194;
    }

LABEL_187:
    v70.i64[0] = 0x200000002;
    v70.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v70))) & 0x80000000) != 0)
    {
      v41 = v13;
      v42 = 2;
    }

    if (a3.n128_i32[3] >= v41)
    {
      goto LABEL_194;
    }

    goto LABEL_190;
  }

LABEL_194:
  v39.i32[2] = v42;
  v72 = vminvq_u32(vtstq_s32(v39, v39));
  if (v72 >= 0)
  {
    v73 = 16;
  }

  else
  {
    v73 = a3.n128_u32[0];
  }

  if (v8)
  {
    v74 = 16;
  }

  else
  {
    v74 = v73;
  }

  if (a5.i32[1] >= result && a3.n128_i32[1] < v74)
  {
    v75.i64[0] = 0x100000001;
    v75.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v75))) & 0x80000000) != 0)
    {
      v74 = a3.n128_i32[1];
    }
  }

  if (v14 >= result && v13 < v74)
  {
    v76.i64[0] = 0x200000002;
    v76.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v76))) & 0x80000000) != 0)
    {
      v74 = v13;
    }
  }

  if (a5.i32[3] < result || a3.n128_i32[3] >= v74 || (v77.i64[0] = 0x300000003, v77.i64[1] = 0x300000003, (vminvq_u32(vmvnq_s8(vceqq_s32(v39, v77))) & 0x80000000) == 0))
  {
    if (v74 != 16)
    {
LABEL_216:
      *a2 = v34;
      return result;
    }

    v78 = 16;
    if (a3.n128_i32[0] < 16)
    {
      if (v72 >= 0)
      {
        v78 = 16;
      }

      else
      {
        v78 = a3.n128_u32[0];
      }

      if (a3.n128_i32[1] >= v78)
      {
LABEL_214:
        if (v13 >= v78)
        {
          goto LABEL_215;
        }

        goto LABEL_224;
      }
    }

    else if (a3.n128_i32[1] >= 16)
    {
      goto LABEL_214;
    }

    v79.i64[0] = 0x100000001;
    v79.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v79))) & 0x80000000) != 0)
    {
      v78 = a3.n128_i32[1];
    }

    if (v13 >= v78)
    {
LABEL_215:
      if (a3.n128_i32[3] >= v78)
      {
        goto LABEL_216;
      }

      goto LABEL_227;
    }

LABEL_224:
    v80.i64[0] = 0x200000002;
    v80.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v80))) & 0x80000000) != 0)
    {
      v78 = v13;
    }

    if (a3.n128_i32[3] >= v78)
    {
      goto LABEL_216;
    }

LABEL_227:
    *a2 = v34;
    return result;
  }

  *a2 = v34;
  return result;
}

__n64 MPSNDArrayIdentityAppleBehaviors::getLaunchOrder(uint64_t a1, int *a2, int8x16_t a3, int8x16_t a4, int32x4_t a5)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = xmmword_239B060A0;
  v8 = xmmword_239B060A0;
  v9 = xmmword_239B060A0;
  if ((vminvq_u32(vclezq_s32(a5)) & 0x80000000) == 0)
  {
    v10 = a4.i32[0] > 15 || a5.i32[0] < 1;
    v11 = v10;
    v12 = 16;
    if (!v10)
    {
      v13.i64[0] = -1;
      v13.i64[1] = -1;
      if ((vminvq_u32(v13) & 0x80000000) == 0)
      {
        v12 = 16;
      }

      else
      {
        v12 = a4.i32[0];
      }
    }

    if (a5.i32[1] >= 1 && a4.i32[1] < v12)
    {
      v17.i64[0] = -1;
      v17.i64[1] = -1;
      v18 = vminvq_u32(v17);
      if (v18 < 0)
      {
        v12 = a4.i32[1];
      }

      v15 = v18 >> 31;
      if (a5.i32[2] < 1 || a4.i32[2] >= v12)
      {
LABEL_30:
        if (a5.i32[3] >= 1 && a4.i32[3] < v12)
        {
          v21.i64[0] = -1;
          v21.i64[1] = -1;
          if ((vminvq_u32(v21) & 0x80000000) != 0)
          {
            v15 = 3;
            v26 = a3.i32[0];
            v28 = a3.i32[0] > 15 || a5.i32[0] < 1;
            v29 = 16;
            if ((v11 & 1) == 0)
            {
              goto LABEL_57;
            }

            goto LABEL_60;
          }
        }

        if (v12 != 16)
        {
          goto LABEL_50;
        }

        if (a4.i32[0] >= 16)
        {
          if (a4.i32[1] >= 16)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v22.i64[0] = -1;
          v22.i64[1] = -1;
          if ((vminvq_u32(v22) & 0x80000000) != 0)
          {
            v12 = a4.i32[0];
            v15 = 0;
          }

          if (a4.i32[1] >= v12)
          {
LABEL_38:
            if (a4.i32[2] < v12)
            {
              goto LABEL_39;
            }

            goto LABEL_47;
          }
        }

        v24.i64[0] = -1;
        v24.i64[1] = -1;
        if ((vminvq_u32(v24) & 0x80000000) != 0)
        {
          v12 = a4.i32[1];
          v15 = 1;
        }

        if (a4.i32[2] < v12)
        {
LABEL_39:
          v23.i64[0] = -1;
          v23.i64[1] = -1;
          if ((vminvq_u32(v23) & 0x80000000) != 0)
          {
            v12 = a4.i32[2];
            v15 = 2;
          }

          if (a4.i32[3] < v12)
          {
LABEL_48:
            v25.i64[0] = -1;
            v25.i64[1] = -1;
            if ((vminvq_u32(v25) & 0x80000000) != 0)
            {
              v15 = 3;
            }
          }

LABEL_50:
          v26 = a3.i32[0];
          v28 = a3.i32[0] > 15 || a5.i32[0] < 1;
          v29 = 16;
          if ((v11 & 1) == 0)
          {
LABEL_57:
            v30 = -1;
            v30.i16[0] = v15 != 0;
            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v30), 0x1FuLL))) & 0x80000000) == 0)
            {
              v29 = 16;
            }

            else
            {
              v29 = a4.i32[0];
            }
          }

LABEL_60:
          v31 = 0;
          if (a5.i32[1] >= 1 && a4.i32[1] < v29)
          {
            v32 = -1;
            v32.i16[0] = v15 != 1;
            v33 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v32), 0x1FuLL)));
            if (v33 < 0)
            {
              v29 = a4.i32[1];
            }

            v31 = v33 >> 31;
          }

          v8.i64[1] = -1;
          if (a5.i32[2] >= 1 && a4.i32[2] < v29)
          {
            v34 = -1;
            v34.i16[0] = v15 != 2;
            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v34), 0x1FuLL))) & 0x80000000) != 0)
            {
              v29 = a4.i32[2];
              v31 = 2;
            }
          }

          v8.i32[0] = v15;
          if (a5.i32[3] >= 1 && a4.i32[3] < v29)
          {
            v35 = -1;
            v35.i16[0] = v15 != 3;
            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v35), 0x1FuLL))) & 0x80000000) != 0)
            {
              v8.i32[1] = 3;
              v40 = 16;
              if (v11)
              {
                goto LABEL_93;
              }

LABEL_90:
              if ((vminvq_u32(vtstq_s32(v8, v8)) & 0x80000000) == 0)
              {
                v40 = 16;
              }

              else
              {
                v40 = a4.i32[0];
              }

LABEL_93:
              v41 = 0;
              if (a5.i32[1] >= 1 && a4.i32[1] < v40)
              {
                v42.i64[0] = 0x100000001;
                v42.i64[1] = 0x100000001;
                v43 = vminvq_u32(vmvnq_s8(vceqq_s32(v8, v42)));
                if (v43 < 0)
                {
                  v40 = a4.i32[1];
                }

                v41 = v43 >> 31;
              }

              if (a5.i32[2] >= 1 && a4.i32[2] < v40)
              {
                v44.i64[0] = 0x200000002;
                v44.i64[1] = 0x200000002;
                if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v44))) & 0x80000000) != 0)
                {
                  v40 = a4.i32[2];
                  v41 = 2;
                }
              }

              if (a5.i32[3] >= 1 && a4.i32[3] < v40)
              {
                v45.i64[0] = 0x300000003;
                v45.i64[1] = 0x300000003;
                if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v45))) & 0x80000000) != 0)
                {
                  v8.i32[2] = 3;
                  v49 = 16;
                  if (v11)
                  {
                    goto LABEL_126;
                  }

LABEL_123:
                  if ((vminvq_u32(vtstq_s32(v8, v8)) & 0x80000000) == 0)
                  {
                    v49 = 16;
                  }

                  else
                  {
                    v49 = a4.i32[0];
                  }

LABEL_126:
                  LOBYTE(v50) = 0;
                  if (a5.i32[1] >= 1 && a4.i32[1] < v49)
                  {
                    v51.i64[0] = 0x100000001;
                    v51.i64[1] = 0x100000001;
                    v52 = vminvq_u32(vmvnq_s8(vceqq_s32(v8, v51)));
                    if (v52 < 0)
                    {
                      v49 = a4.i32[1];
                    }

                    v50 = v52 >> 31;
                  }

                  if (a5.i32[2] >= 1)
                  {
                    v53.i64[0] = 0x200000002;
                    v53.i64[1] = 0x200000002;
                    v54 = vminvq_u32(vmvnq_s8(vceqq_s32(v8, v53)));
                    v55 = v54 >= 0 ? v49 : a4.i32[2];
                    v56 = v54 >= 0 ? v50 : 2;
                    if (a4.i32[2] < v49)
                    {
                      v49 = v55;
                      LOBYTE(v50) = v56;
                    }
                  }

                  if (a5.i32[3] >= 1 && a4.i32[3] < v49)
                  {
                    v57.i64[0] = 0x300000003;
                    v57.i64[1] = 0x300000003;
                    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v57))) & 0x80000000) != 0)
                    {
                      LOBYTE(v50) = 3;
                      goto LABEL_174;
                    }
                  }

                  if (v49 != 16)
                  {
                    goto LABEL_174;
                  }

                  if (a4.i32[0] >= 16)
                  {
                    if (a4.i32[1] >= 16)
                    {
                      goto LABEL_148;
                    }
                  }

                  else
                  {
                    if ((vminvq_u32(vtstq_s32(v8, v8)) & 0x80000000) != 0)
                    {
                      v49 = a4.i32[0];
                      LOBYTE(v50) = 0;
                    }

                    if (a4.i32[1] >= v49)
                    {
LABEL_148:
                      if (a4.i32[2] < v49)
                      {
                        goto LABEL_149;
                      }

                      goto LABEL_157;
                    }
                  }

                  v59.i64[0] = 0x100000001;
                  v59.i64[1] = 0x100000001;
                  if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v59))) & 0x80000000) != 0)
                  {
                    v49 = a4.i32[1];
                    LOBYTE(v50) = 1;
                  }

                  if (a4.i32[2] < v49)
                  {
LABEL_149:
                    v58.i64[0] = 0x200000002;
                    v58.i64[1] = 0x200000002;
                    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v58))) & 0x80000000) != 0)
                    {
                      v49 = a4.i32[2];
                      LOBYTE(v50) = 2;
                    }

                    if (a4.i32[3] >= v49)
                    {
LABEL_174:
                      v8.i8[12] = v50;
                      v62.i64[0] = -1;
                      v62.i64[1] = -1;
                      v63 = vminvq_u32(v62);
                      if (v63 >= 0)
                      {
                        v64 = 16;
                      }

                      else
                      {
                        v64 = v26;
                      }

                      if (v28)
                      {
                        v65 = 16;
                      }

                      else
                      {
                        v65 = v64;
                      }

                      if (v63 >= 0)
                      {
                        v66 = v65;
                      }

                      else
                      {
                        v66 = a3.u32[1];
                      }

                      v67 = v63 >> 31;
                      if (a3.i32[1] >= v65)
                      {
                        v66 = v65;
                        v67 = 0;
                      }

                      if (a5.i32[1] < 1)
                      {
                        v68 = 0;
                      }

                      else
                      {
                        v65 = v66;
                        v68 = v67;
                      }

                      if (v63 >= 0)
                      {
                        v69 = v65;
                      }

                      else
                      {
                        v69 = a3.i32[2];
                      }

                      if (v63 >= 0)
                      {
                        v70 = v68;
                      }

                      else
                      {
                        v70 = 2;
                      }

                      if (a3.i32[2] >= v65)
                      {
                        v69 = v65;
                        v70 = v68;
                      }

                      if (a5.i32[2] >= 1)
                      {
                        v71 = v70;
                      }

                      else
                      {
                        v69 = v65;
                        v71 = v68;
                      }

                      if (a5.i32[3] >= 1 && a3.i32[3] < v69)
                      {
                        v72.i64[0] = -1;
                        v72.i64[1] = -1;
                        if ((vminvq_u32(v72) & 0x80000000) != 0)
                        {
                          v71 = 3;
                          v77 = 16;
                          if (v28)
                          {
                            goto LABEL_223;
                          }

LABEL_220:
                          v78 = -1;
                          v78.i16[0] = v71 != 0;
                          if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v78), 0x1FuLL))) & 0x80000000) == 0)
                          {
                            v77 = 16;
                          }

                          else
                          {
                            v77 = v26;
                          }

LABEL_223:
                          v79 = 0;
                          if (a5.i32[1] >= 1 && a3.i32[1] < v77)
                          {
                            v80 = -1;
                            v80.i16[0] = v71 != 1;
                            v81 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v80), 0x1FuLL)));
                            if (v81 < 0)
                            {
                              v77 = a3.i32[1];
                            }

                            v79 = v81 >> 31;
                          }

                          v9.i64[1] = -1;
                          if (a5.i32[2] >= 1 && a3.i32[2] < v77)
                          {
                            v82 = -1;
                            v82.i16[0] = v71 != 2;
                            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v82), 0x1FuLL))) & 0x80000000) != 0)
                            {
                              v77 = a3.i32[2];
                              v79 = 2;
                            }
                          }

                          v9.i32[0] = v71;
                          if (a5.i32[3] >= 1 && a3.i32[3] < v77)
                          {
                            v83 = -1;
                            v83.i16[0] = v71 != 3;
                            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v83), 0x1FuLL))) & 0x80000000) != 0)
                            {
                              v9.i32[1] = 3;
                              v88 = 16;
                              if (v28)
                              {
                                goto LABEL_256;
                              }

LABEL_253:
                              if ((vminvq_u32(vtstq_s32(v9, v9)) & 0x80000000) == 0)
                              {
                                v88 = 16;
                              }

                              else
                              {
                                v88 = v26;
                              }

LABEL_256:
                              v89 = 0;
                              if (a5.i32[1] >= 1 && a3.i32[1] < v88)
                              {
                                v90.i64[0] = 0x100000001;
                                v90.i64[1] = 0x100000001;
                                v91 = vminvq_u32(vmvnq_s8(vceqq_s32(v9, v90)));
                                if (v91 < 0)
                                {
                                  v88 = a3.i32[1];
                                }

                                v89 = v91 >> 31;
                              }

                              if (a5.i32[2] >= 1 && a3.i32[2] < v88)
                              {
                                v92.i64[0] = 0x200000002;
                                v92.i64[1] = 0x200000002;
                                if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v92))) & 0x80000000) != 0)
                                {
                                  v88 = a3.i32[2];
                                  v89 = 2;
                                }
                              }

                              if (a5.i32[3] >= 1 && a3.i32[3] < v88)
                              {
                                v93.i64[0] = 0x300000003;
                                v93.i64[1] = 0x300000003;
                                if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v93))) & 0x80000000) != 0)
                                {
                                  v9.i32[2] = 3;
                                  v97 = 16;
                                  if (v28)
                                  {
                                    goto LABEL_289;
                                  }

LABEL_286:
                                  if ((vminvq_u32(vtstq_s32(v9, v9)) & 0x80000000) == 0)
                                  {
                                    v97 = 16;
                                  }

                                  else
                                  {
                                    v97 = v26;
                                  }

LABEL_289:
                                  LOBYTE(v98) = 0;
                                  if (a5.i32[1] >= 1 && a3.i32[1] < v97)
                                  {
                                    v99.i64[0] = 0x100000001;
                                    v99.i64[1] = 0x100000001;
                                    v100 = vminvq_u32(vmvnq_s8(vceqq_s32(v9, v99)));
                                    if (v100 < 0)
                                    {
                                      v97 = a3.i32[1];
                                    }

                                    v98 = v100 >> 31;
                                  }

                                  if (a5.i32[2] >= 1 && a3.i32[2] < v97)
                                  {
                                    v101.i64[0] = 0x200000002;
                                    v101.i64[1] = 0x200000002;
                                    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v101))) & 0x80000000) != 0)
                                    {
                                      v97 = a3.i32[2];
                                      LOBYTE(v98) = 2;
                                    }
                                  }

                                  if (a5.i32[3] >= 1 && a3.i32[3] < v97)
                                  {
                                    v102.i64[0] = 0x300000003;
                                    v102.i64[1] = 0x300000003;
                                    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v102))) & 0x80000000) != 0)
                                    {
                                      LOBYTE(v98) = 3;
                                      goto LABEL_326;
                                    }
                                  }

                                  if (v97 != 16)
                                  {
LABEL_326:
                                    v9.i8[12] = v98;
                                    *a2 = v71;
                                    goto LABEL_327;
                                  }

                                  if (v26 >= 16)
                                  {
                                    if (a3.i32[1] >= 16)
                                    {
                                      goto LABEL_306;
                                    }
                                  }

                                  else
                                  {
                                    if ((vminvq_u32(vtstq_s32(v9, v9)) & 0x80000000) != 0)
                                    {
                                      v97 = v26;
                                      LOBYTE(v98) = 0;
                                    }

                                    if (a3.i32[1] >= v97)
                                    {
LABEL_306:
                                      if (a3.i32[2] < v97)
                                      {
                                        goto LABEL_307;
                                      }

LABEL_315:
                                      if (a3.i32[3] < v97)
                                      {
LABEL_316:
                                        v105.i64[0] = 0x300000003;
                                        v105.i64[1] = 0x300000003;
                                        if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v105))) & 0x80000000) != 0)
                                        {
                                          LOBYTE(v98) = 3;
                                        }

                                        goto LABEL_326;
                                      }

                                      goto LABEL_326;
                                    }
                                  }

                                  v104.i64[0] = 0x100000001;
                                  v104.i64[1] = 0x100000001;
                                  if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v104))) & 0x80000000) != 0)
                                  {
                                    v97 = a3.i32[1];
                                    LOBYTE(v98) = 1;
                                  }

                                  if (a3.i32[2] < v97)
                                  {
LABEL_307:
                                    v103.i64[0] = 0x200000002;
                                    v103.i64[1] = 0x200000002;
                                    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v103))) & 0x80000000) != 0)
                                    {
                                      v97 = a3.i32[2];
                                      LOBYTE(v98) = 2;
                                    }

                                    if (a3.i32[3] >= v97)
                                    {
                                      goto LABEL_326;
                                    }

                                    goto LABEL_316;
                                  }

                                  goto LABEL_315;
                                }
                              }

                              if (v88 != 16)
                              {
                                goto LABEL_285;
                              }

                              if (v26 >= 16)
                              {
                                if (a3.i32[1] >= 16)
                                {
                                  goto LABEL_273;
                                }
                              }

                              else
                              {
                                if ((vminvq_u32(vtstq_s32(v9, v9)) & 0x80000000) != 0)
                                {
                                  v88 = v26;
                                  v89 = 0;
                                }

                                if (a3.i32[1] >= v88)
                                {
LABEL_273:
                                  if (a3.i32[2] < v88)
                                  {
                                    goto LABEL_274;
                                  }

                                  goto LABEL_282;
                                }
                              }

                              v95.i64[0] = 0x100000001;
                              v95.i64[1] = 0x100000001;
                              if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v95))) & 0x80000000) != 0)
                              {
                                v88 = a3.i32[1];
                                v89 = 1;
                              }

                              if (a3.i32[2] < v88)
                              {
LABEL_274:
                                v94.i64[0] = 0x200000002;
                                v94.i64[1] = 0x200000002;
                                if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v94))) & 0x80000000) != 0)
                                {
                                  v88 = a3.i32[2];
                                  v89 = 2;
                                }

                                if (a3.i32[3] < v88)
                                {
LABEL_283:
                                  v96.i64[0] = 0x300000003;
                                  v96.i64[1] = 0x300000003;
                                  if ((vminvq_u32(vmvnq_s8(vceqq_s32(v9, v96))) & 0x80000000) != 0)
                                  {
                                    v89 = 3;
                                  }
                                }

LABEL_285:
                                v9.i32[2] = v89;
                                v97 = 16;
                                if (v28)
                                {
                                  goto LABEL_289;
                                }

                                goto LABEL_286;
                              }

LABEL_282:
                              if (a3.i32[3] >= v88)
                              {
                                goto LABEL_285;
                              }

                              goto LABEL_283;
                            }
                          }

                          if (v77 != 16)
                          {
                            goto LABEL_252;
                          }

                          if (v26 >= 16)
                          {
                            if (a3.i32[1] >= 16)
                            {
                              goto LABEL_240;
                            }
                          }

                          else
                          {
                            v84 = -1;
                            v84.i16[0] = v71 != 0;
                            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v84), 0x1FuLL))) & 0x80000000) != 0)
                            {
                              v77 = v26;
                              v79 = 0;
                            }

                            if (a3.i32[1] >= v77)
                            {
LABEL_240:
                              if (a3.i32[2] < v77)
                              {
                                goto LABEL_241;
                              }

                              goto LABEL_249;
                            }
                          }

                          v86 = -1;
                          v86.i16[0] = v71 != 1;
                          if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v86), 0x1FuLL))) & 0x80000000) != 0)
                          {
                            v77 = a3.i32[1];
                            v79 = 1;
                          }

                          if (a3.i32[2] < v77)
                          {
LABEL_241:
                            v85 = -1;
                            v85.i16[0] = v71 != 2;
                            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v85), 0x1FuLL))) & 0x80000000) != 0)
                            {
                              v77 = a3.i32[2];
                              v79 = 2;
                            }

                            if (a3.i32[3] < v77)
                            {
LABEL_250:
                              v87 = -1;
                              v87.i16[0] = v71 != 3;
                              if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v87), 0x1FuLL))) & 0x80000000) != 0)
                              {
                                v79 = 3;
                              }
                            }

LABEL_252:
                            v9.i32[1] = v79;
                            v88 = 16;
                            if (v28)
                            {
                              goto LABEL_256;
                            }

                            goto LABEL_253;
                          }

LABEL_249:
                          if (a3.i32[3] >= v77)
                          {
                            goto LABEL_252;
                          }

                          goto LABEL_250;
                        }
                      }

                      if (v69 != 16)
                      {
                        goto LABEL_219;
                      }

                      if (v26 >= 16)
                      {
                        if (a3.i32[1] >= 16)
                        {
                          goto LABEL_207;
                        }
                      }

                      else
                      {
                        v73.i64[0] = -1;
                        v73.i64[1] = -1;
                        if ((vminvq_u32(v73) & 0x80000000) != 0)
                        {
                          v69 = v26;
                          v71 = 0;
                        }

                        if (a3.i32[1] >= v69)
                        {
LABEL_207:
                          if (a3.i32[2] < v69)
                          {
                            goto LABEL_208;
                          }

                          goto LABEL_216;
                        }
                      }

                      v75.i64[0] = -1;
                      v75.i64[1] = -1;
                      if ((vminvq_u32(v75) & 0x80000000) != 0)
                      {
                        v69 = a3.i32[1];
                        v71 = 1;
                      }

                      if (a3.i32[2] < v69)
                      {
LABEL_208:
                        v74.i64[0] = -1;
                        v74.i64[1] = -1;
                        if ((vminvq_u32(v74) & 0x80000000) != 0)
                        {
                          v69 = a3.i32[2];
                          v71 = 2;
                        }

                        if (a3.i32[3] < v69)
                        {
LABEL_217:
                          v76.i64[0] = -1;
                          v76.i64[1] = -1;
                          if ((vminvq_u32(v76) & 0x80000000) != 0)
                          {
                            v71 = 3;
                          }
                        }

LABEL_219:
                        v77 = 16;
                        if (v28)
                        {
                          goto LABEL_223;
                        }

                        goto LABEL_220;
                      }

LABEL_216:
                      if (a3.i32[3] >= v69)
                      {
                        goto LABEL_219;
                      }

                      goto LABEL_217;
                    }

LABEL_158:
                    v60.i64[0] = 0x300000003;
                    v60.i64[1] = 0x300000003;
                    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v60))) & 0x80000000) != 0)
                    {
                      LOBYTE(v50) = 3;
                    }

                    goto LABEL_174;
                  }

LABEL_157:
                  if (a4.i32[3] >= v49)
                  {
                    goto LABEL_174;
                  }

                  goto LABEL_158;
                }
              }

              if (v40 != 16)
              {
                goto LABEL_122;
              }

              if (a4.i32[0] >= 16)
              {
                if (a4.i32[1] >= 16)
                {
                  goto LABEL_110;
                }
              }

              else
              {
                if ((vminvq_u32(vtstq_s32(v8, v8)) & 0x80000000) != 0)
                {
                  v40 = a4.i32[0];
                  v41 = 0;
                }

                if (a4.i32[1] >= v40)
                {
LABEL_110:
                  if (a4.i32[2] < v40)
                  {
                    goto LABEL_111;
                  }

                  goto LABEL_119;
                }
              }

              v47.i64[0] = 0x100000001;
              v47.i64[1] = 0x100000001;
              if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v47))) & 0x80000000) != 0)
              {
                v40 = a4.i32[1];
                v41 = 1;
              }

              if (a4.i32[2] < v40)
              {
LABEL_111:
                v46.i64[0] = 0x200000002;
                v46.i64[1] = 0x200000002;
                if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v46))) & 0x80000000) != 0)
                {
                  v40 = a4.i32[2];
                  v41 = 2;
                }

                if (a4.i32[3] < v40)
                {
LABEL_120:
                  v48.i64[0] = 0x300000003;
                  v48.i64[1] = 0x300000003;
                  if ((vminvq_u32(vmvnq_s8(vceqq_s32(v8, v48))) & 0x80000000) != 0)
                  {
                    v41 = 3;
                  }
                }

LABEL_122:
                v8.i32[2] = v41;
                v49 = 16;
                if (v11)
                {
                  goto LABEL_126;
                }

                goto LABEL_123;
              }

LABEL_119:
              if (a4.i32[3] >= v40)
              {
                goto LABEL_122;
              }

              goto LABEL_120;
            }
          }

          if (v29 != 16)
          {
            goto LABEL_89;
          }

          if (a4.i32[0] >= 16)
          {
            if (a4.i32[1] >= 16)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v36 = -1;
            v36.i16[0] = v15 != 0;
            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v36), 0x1FuLL))) & 0x80000000) != 0)
            {
              v29 = a4.i32[0];
              v31 = 0;
            }

            if (a4.i32[1] >= v29)
            {
LABEL_77:
              if (a4.i32[2] < v29)
              {
                goto LABEL_78;
              }

              goto LABEL_86;
            }
          }

          v38 = -1;
          v38.i16[0] = v15 != 1;
          if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v38), 0x1FuLL))) & 0x80000000) != 0)
          {
            v29 = a4.i32[1];
            v31 = 1;
          }

          if (a4.i32[2] < v29)
          {
LABEL_78:
            v37 = -1;
            v37.i16[0] = v15 != 2;
            if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v37), 0x1FuLL))) & 0x80000000) != 0)
            {
              v29 = a4.i32[2];
              v31 = 2;
            }

            if (a4.i32[3] < v29)
            {
LABEL_87:
              v39 = -1;
              v39.i16[0] = v15 != 3;
              if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v39), 0x1FuLL))) & 0x80000000) != 0)
              {
                v31 = 3;
              }
            }

LABEL_89:
            v8.i32[1] = v31;
            v40 = 16;
            if (v11)
            {
              goto LABEL_93;
            }

            goto LABEL_90;
          }

LABEL_86:
          if (a4.i32[3] >= v29)
          {
            goto LABEL_89;
          }

          goto LABEL_87;
        }

LABEL_47:
        if (a4.i32[3] >= v12)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v15 = 0;
      if (a5.i32[2] < 1 || a4.i32[2] >= v12)
      {
        goto LABEL_30;
      }
    }

    v20.i64[0] = -1;
    v20.i64[1] = -1;
    if ((vminvq_u32(v20) & 0x80000000) != 0)
    {
      v12 = a4.i32[2];
      v15 = 2;
    }

    goto LABEL_30;
  }

LABEL_327:
  v228 = a5;
  v106 = vcgtq_s32(vdupq_n_s32(v6), a5);
  v107 = vminvq_u32(v106);
  if ((v107 & 0x80000000) != 0)
  {
    goto LABEL_495;
  }

  v7.i32[0] = *(&v228 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9.i8[0] & 3)));
  v106.i32[0] = 4 * *(&v228 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8.i8[0] & 3)));
  v108 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v7, v106), 0), a3, a4);
  v109 = v108.i32[0];
  v111 = a5.i32[0] < v6 || v108.i32[0] > 15;
  v112.i64[0] = -1;
  v112.i64[1] = -1;
  v113 = vminvq_u32(v112);
  if (v113 >= 0)
  {
    v114 = 16;
  }

  else
  {
    v114 = v108.i32[0];
  }

  if (v111)
  {
    v115 = 16;
  }

  else
  {
    v115 = v114;
  }

  v116 = v108.i32[1];
  if (v113 >= 0)
  {
    v117 = v115;
  }

  else
  {
    v117 = v108.i32[1];
  }

  v118 = v113 >> 31;
  if (v108.i32[1] >= v115)
  {
    v117 = v115;
    v118 = 0;
  }

  if (a5.i32[1] < v6)
  {
    v118 = 0;
  }

  else
  {
    v115 = v117;
  }

  v119 = v108.i32[2];
  if (v113 >= 0)
  {
    v120 = v115;
  }

  else
  {
    v120 = v108.i32[2];
  }

  if (v113 >= 0)
  {
    v121 = v118;
  }

  else
  {
    v121 = 2;
  }

  if (v108.i32[2] >= v115)
  {
    v120 = v115;
    v121 = v118;
  }

  if (a5.i32[2] >= v6)
  {
    v122 = v121;
  }

  else
  {
    v120 = v115;
    v122 = v118;
  }

  v123 = v108.i32[3];
  if (a5.i32[3] < v6 || v108.i32[3] >= v120 || (v124.i64[0] = -1, v124.i64[1] = -1, (vminvq_u32(v124) & 0x80000000) == 0))
  {
    if (v120 != 16)
    {
      goto LABEL_379;
    }

    if (v109 >= 16)
    {
      if (v116 >= 16)
      {
        goto LABEL_367;
      }
    }

    else
    {
      v125.i64[0] = -1;
      v125.i64[1] = -1;
      if ((vminvq_u32(v125) & 0x80000000) != 0)
      {
        v120 = v109;
        v122 = 0;
      }

      if (v116 >= v120)
      {
LABEL_367:
        if (v119 < v120)
        {
          goto LABEL_368;
        }

        goto LABEL_376;
      }
    }

    v127.i64[0] = -1;
    v127.i64[1] = -1;
    if ((vminvq_u32(v127) & 0x80000000) != 0)
    {
      v120 = v116;
      v122 = 1;
    }

    if (v119 < v120)
    {
LABEL_368:
      v126.i64[0] = -1;
      v126.i64[1] = -1;
      if ((vminvq_u32(v126) & 0x80000000) != 0)
      {
        v120 = v119;
        v122 = 2;
      }

      if (v123 >= v120)
      {
LABEL_379:
        v129 = 16;
        if (v111)
        {
          goto LABEL_383;
        }

        goto LABEL_380;
      }

LABEL_377:
      v128.i64[0] = -1;
      v128.i64[1] = -1;
      if ((vminvq_u32(v128) & 0x80000000) != 0)
      {
        v122 = 3;
      }

      goto LABEL_379;
    }

LABEL_376:
    if (v123 >= v120)
    {
      goto LABEL_379;
    }

    goto LABEL_377;
  }

  v122 = 3;
  v129 = 16;
  if (v111)
  {
    goto LABEL_383;
  }

LABEL_380:
  v130 = -1;
  v130.i16[0] = v122 != 0;
  if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v130), 0x1FuLL))) & 0x80000000) == 0)
  {
    v129 = 16;
  }

  else
  {
    v129 = v109;
  }

LABEL_383:
  v131 = 0;
  if (a5.i32[1] >= v6 && v116 < v129)
  {
    v132 = -1;
    v132.i16[0] = v122 != 1;
    v133 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v132), 0x1FuLL)));
    if (v133 < 0)
    {
      v129 = v116;
    }

    v131 = v133 >> 31;
  }

  v7.i64[1] = -1;
  if (a5.i32[2] >= v6)
  {
    v134 = -1;
    v134.i16[0] = v122 != 2;
    v135 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v134), 0x1FuLL)));
    v136 = v135 >= 0 ? v129 : v119;
    v137 = v135 >= 0 ? v131 : 2;
    if (v119 < v129)
    {
      v129 = v136;
      v131 = v137;
    }
  }

  v7.i32[0] = v122;
  if (a5.i32[3] >= v6 && v123 < v129)
  {
    v138 = -1;
    v138.i16[0] = v122 != 3;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v138), 0x1FuLL))) & 0x80000000) != 0)
    {
      v131 = 3;
      goto LABEL_421;
    }
  }

  if (v129 != 16)
  {
    goto LABEL_421;
  }

  if (v109 >= 16)
  {
    if (v116 >= 16)
    {
      goto LABEL_405;
    }
  }

  else
  {
    v139 = -1;
    v139.i16[0] = v122 != 0;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v139), 0x1FuLL))) & 0x80000000) != 0)
    {
      v129 = v109;
      v131 = 0;
    }

    if (v116 >= v129)
    {
LABEL_405:
      if (v119 < v129)
      {
        goto LABEL_406;
      }

LABEL_414:
      if (v123 >= v129)
      {
        goto LABEL_421;
      }

      goto LABEL_415;
    }
  }

  v141 = -1;
  v141.i16[0] = v122 != 1;
  if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v141), 0x1FuLL))) & 0x80000000) != 0)
  {
    v129 = v116;
    v131 = 1;
  }

  if (v119 >= v129)
  {
    goto LABEL_414;
  }

LABEL_406:
  v140 = -1;
  v140.i16[0] = v122 != 2;
  if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v140), 0x1FuLL))) & 0x80000000) != 0)
  {
    v129 = v119;
    v131 = 2;
  }

  if (v123 < v129)
  {
LABEL_415:
    v142 = -1;
    v142.i16[0] = v122 != 3;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v142), 0x1FuLL))) & 0x80000000) != 0)
    {
      v131 = 3;
    }
  }

LABEL_421:
  v7.i32[1] = v131;
  v143 = vminvq_u32(vtstq_s32(v7, v7));
  if (v143 >= 0)
  {
    v144 = 16;
  }

  else
  {
    v144 = v109;
  }

  if (v111)
  {
    v144 = 16;
  }

  v145 = 0;
  if (a5.i32[1] >= v6 && v116 < v144)
  {
    v146.i64[0] = 0x100000001;
    v146.i64[1] = 0x100000001;
    v147 = vminvq_u32(vmvnq_s8(vceqq_s32(v7, v146)));
    if (v147 < 0)
    {
      v144 = v116;
    }

    v145 = v147 >> 31;
  }

  if (a5.i32[2] >= v6 && v119 < v144)
  {
    v148.i64[0] = 0x200000002;
    v148.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v148))) & 0x80000000) != 0)
    {
      v144 = v119;
      v145 = 2;
    }
  }

  if (a5.i32[3] >= v6 && v123 < v144)
  {
    v149.i64[0] = 0x300000003;
    v149.i64[1] = 0x300000003;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v149))) & 0x80000000) != 0)
    {
      v145 = 3;
      goto LABEL_457;
    }
  }

  if (v144 != 16)
  {
    goto LABEL_457;
  }

  if (v109 >= 16)
  {
    if (v116 >= 16)
    {
      goto LABEL_443;
    }
  }

  else
  {
    if (v143 < 0)
    {
      v144 = v109;
      v145 = 0;
    }

    if (v116 >= v144)
    {
LABEL_443:
      if (v119 < v144)
      {
        goto LABEL_444;
      }

LABEL_452:
      if (v123 >= v144)
      {
        goto LABEL_457;
      }

      goto LABEL_453;
    }
  }

  v151.i64[0] = 0x100000001;
  v151.i64[1] = 0x100000001;
  if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v151))) & 0x80000000) != 0)
  {
    v144 = v116;
    v145 = 1;
  }

  if (v119 >= v144)
  {
    goto LABEL_452;
  }

LABEL_444:
  v150.i64[0] = 0x200000002;
  v150.i64[1] = 0x200000002;
  if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v150))) & 0x80000000) != 0)
  {
    v144 = v119;
    v145 = 2;
  }

  if (v123 < v144)
  {
LABEL_453:
    v152.i64[0] = 0x300000003;
    v152.i64[1] = 0x300000003;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v152))) & 0x80000000) != 0)
    {
      v145 = 3;
    }
  }

LABEL_457:
  v7.i32[2] = v145;
  v153 = vminvq_u32(vtstq_s32(v7, v7));
  if (v153 >= 0)
  {
    v154 = 16;
  }

  else
  {
    v154 = v109;
  }

  if (v111)
  {
    v155 = 16;
  }

  else
  {
    v155 = v154;
  }

  v156 = 0;
  if (a5.i32[1] >= v6 && v116 < v155)
  {
    v157.i64[0] = 0x100000001;
    v157.i64[1] = 0x100000001;
    v158 = vminvq_u32(vmvnq_s8(vceqq_s32(v7, v157)));
    if (v158 < 0)
    {
      v155 = v116;
    }

    v156 = v158 >> 31;
  }

  if (a5.i32[2] >= v6 && v119 < v155)
  {
    v159.i64[0] = 0x200000002;
    v159.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v159))) & 0x80000000) != 0)
    {
      v155 = v119;
      v156 = 2;
    }
  }

  if (a5.i32[3] >= v6 && v123 < v155)
  {
    v160.i64[0] = 0x300000003;
    v160.i64[1] = 0x300000003;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v160))) & 0x80000000) != 0)
    {
      v156 = 3;
      goto LABEL_494;
    }
  }

  if (v155 == 16)
  {
    if (v109 >= 16)
    {
      if (v116 >= 16)
      {
        goto LABEL_480;
      }
    }

    else
    {
      if (v153 < 0)
      {
        v155 = v109;
        v156 = 0;
      }

      if (v116 >= v155)
      {
LABEL_480:
        if (v119 < v155)
        {
          goto LABEL_481;
        }

LABEL_489:
        if (v123 < v155)
        {
LABEL_490:
          v163.i64[0] = 0x300000003;
          v163.i64[1] = 0x300000003;
          if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v163))) & 0x80000000) != 0)
          {
            v156 = 3;
          }

          goto LABEL_494;
        }

        goto LABEL_494;
      }
    }

    v162.i64[0] = 0x100000001;
    v162.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v162))) & 0x80000000) != 0)
    {
      v155 = v116;
      v156 = 1;
    }

    if (v119 < v155)
    {
LABEL_481:
      v161.i64[0] = 0x200000002;
      v161.i64[1] = 0x200000002;
      if ((vminvq_u32(vmvnq_s8(vceqq_s32(v7, v161))) & 0x80000000) != 0)
      {
        v155 = v119;
        v156 = 2;
      }

      if (v123 >= v155)
      {
        goto LABEL_494;
      }

      goto LABEL_490;
    }

    goto LABEL_489;
  }

LABEL_494:
  v7.i32[3] = v156;
  *a2 = v122;
LABEL_495:
  if (v7.i32[0] != v9.i32[0])
  {
    v227 = a5;
    v167 = *(&v227 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9.i8[0] & 3)));
    if (v7.i32[1] != v9.i32[0])
    {
      v226 = a5;
      v167 = v167 * *(&v226 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9.i8[4] & 3)));
      if (v7.i32[2] != v9.i32[0])
      {
        v225 = a5;
        v167 *= *(&v225 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9.i8[8] & 3)));
        if (v7.i32[3] != v9.i32[0])
        {
          v224 = a5;
          v167 *= *(&v224 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9.i8[12] & 3)));
        }
      }
    }

    v164 = v167 < 0x2000;
    if (v7.i32[0] != v8.i32[0])
    {
      goto LABEL_497;
    }

LABEL_507:
    v166 = 1;
    goto LABEL_508;
  }

  v164 = 1;
  if (v7.i32[0] == v8.i32[0])
  {
    goto LABEL_507;
  }

LABEL_497:
  v223 = a5;
  v165 = *(&v223 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8.i8[0] & 3)));
  if (v7.i32[1] != v8.i32[0])
  {
    v222 = a5;
    v165 = v165 * *(&v222 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8.i8[4] & 3)));
    if (v7.i32[2] != v8.i32[0])
    {
      v221 = a5;
      v165 *= *(&v221 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8.i8[8] & 3)));
      if (v7.i32[3] != v8.i32[0])
      {
        v220 = a5;
        v165 *= *(&v220 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8.i8[12] & 3)));
      }
    }
  }

  v166 = v165 < 0x200;
LABEL_508:
  v219 = a5;
  v168 = *(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7.i8[0] & 3)));
  v169 = *(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7.i8[4] & 3)));
  if (*(&v219 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7.i8[8] & 3))) <= 32 && v168 <= 32 && v169 < 33 || v9.i32[0] >= 1 && v9.i32[1] > 0 || v8.i32[0] >= 1 && v8.i64[0] > 0)
  {
    if ((v107 & 0x80000000) != 0)
    {
      return 0x100000000;
    }

LABEL_516:
    v170 = a3.i32[0] > 15 || a5.i32[0] < v6;
    v171 = v170;
    v172 = 16;
    if (!v170)
    {
      v173.i64[0] = -1;
      v173.i64[1] = -1;
      if ((vminvq_u32(v173) & 0x80000000) == 0)
      {
        v172 = 16;
      }

      else
      {
        v172 = a3.i32[0];
      }
    }

    v174 = 0;
    if (a5.i32[1] >= v6 && a3.i32[1] < v172)
    {
      v175.i64[0] = -1;
      v175.i64[1] = -1;
      v176 = vminvq_u32(v175);
      if (v176 < 0)
      {
        v172 = a3.i32[1];
      }

      v174 = v176 >> 31;
    }

    if (a5.i32[2] >= v6 && a3.i32[2] < v172)
    {
      v177.i64[0] = -1;
      v177.i64[1] = -1;
      if ((vminvq_u32(v177) & 0x80000000) != 0)
      {
        v172 = a3.i32[2];
        v174 = 2;
      }
    }

    if (a5.i32[3] >= v6 && a3.i32[3] < v172 && (v178.i64[0] = -1, v178.i64[1] = -1, (vminvq_u32(v178) & 0x80000000) != 0))
    {
      v174 = 3;
      v188 = a4.i32[0];
      v189 = 16;
      if (a4.i32[0] > 15)
      {
        goto LABEL_573;
      }
    }

    else
    {
      if (v172 == 16)
      {
        v179.i64[0] = -1;
        v179.i64[1] = -1;
        v180 = vminvq_u32(v179);
        if (v180 >= 0)
        {
          v181 = 16;
        }

        else
        {
          v181 = a3.i32[0];
        }

        if (v180 >= 0)
        {
          v182 = v174;
        }

        else
        {
          v182 = 0;
        }

        if (a3.i32[0] < 16)
        {
          v172 = v181;
          v174 = v182;
        }

        if (v180 >= 0)
        {
          v183 = v172;
        }

        else
        {
          v183 = a3.u32[1];
        }

        if (v180 < 0)
        {
          v184 = 1;
        }

        else
        {
          v184 = v174;
        }

        if (a3.i32[1] < v172)
        {
          v172 = v183;
          v174 = v184;
        }

        if (v180 >= 0)
        {
          v185 = v172;
        }

        else
        {
          v185 = a3.u32[2];
        }

        if (v180 >= 0)
        {
          v186 = v174;
        }

        else
        {
          v186 = 2;
        }

        if (a3.i32[2] < v172)
        {
          v172 = v185;
          v174 = v186;
        }

        if (v180 >= 0)
        {
          v187 = v174;
        }

        else
        {
          v187 = 3;
        }

        if (a3.i32[3] < v172)
        {
          v174 = v187;
        }
      }

      v188 = a4.i32[0];
      v189 = 16;
      if (a4.i32[0] > 15)
      {
LABEL_573:
        v191 = 0;
        if (a5.i32[1] >= v6 && a4.i32[1] < v189)
        {
          v192.i64[0] = -1;
          v192.i64[1] = -1;
          v193 = vminvq_u32(v192);
          if (v193 < 0)
          {
            v189 = a4.i32[1];
          }

          v191 = v193 >> 31;
        }

        if (a5.i32[2] >= v6 && a4.i32[2] < v189)
        {
          v194.i64[0] = -1;
          v194.i64[1] = -1;
          if ((vminvq_u32(v194) & 0x80000000) != 0)
          {
            v189 = a4.i32[2];
            v191 = 2;
          }
        }

        if (a5.i32[3] >= v6 && a4.i32[3] < v189)
        {
          v195.i64[0] = -1;
          v195.i64[1] = -1;
          if ((vminvq_u32(v195) & 0x80000000) != 0)
          {
            v191 = 3;
            result.n64_u32[0] = v174;
            v201 = 3;
            if (v174 == 3)
            {
LABEL_604:
              v202 = 16;
              if ((v171 & 1) == 0)
              {
                v203 = -1;
                v203.i16[0] = v174 != 0;
                if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v203), 0x1FuLL))) & 0x80000000) == 0)
                {
                  v202 = 16;
                }

                else
                {
                  v202 = a3.i32[0];
                }
              }

              v204 = 0;
              if (a5.i32[1] >= v6 && a3.i32[1] < v202)
              {
                v205 = -1;
                v205.i16[0] = v174 != 1;
                v206 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v205), 0x1FuLL)));
                if (v206 < 0)
                {
                  v202 = a3.i32[1];
                }

                v204 = v206 >> 31;
              }

              if (a5.i32[2] >= v6 && a3.i32[2] < v202)
              {
                v207 = -1;
                v207.i16[0] = v174 != 2;
                if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v207), 0x1FuLL))) & 0x80000000) != 0)
                {
                  v202 = a3.i32[2];
                  v204 = 2;
                }
              }

              if (a5.i32[3] >= v6 && a3.i32[3] < v202)
              {
                v208 = -1;
                v208.i16[0] = v174 != 3;
                if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v208), 0x1FuLL))) & 0x80000000) != 0)
                {
                  v191 = v174;
                  result.n64_u32[1] = 3;
                  goto LABEL_648;
                }
              }

              if (v202 != 16)
              {
                goto LABEL_643;
              }

              if (a3.i32[0] >= 16)
              {
                if (a3.i32[1] >= 16)
                {
                  goto LABEL_625;
                }
              }

              else
              {
                v209 = -1;
                v209.i16[0] = v174 != 0;
                if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v209), 0x1FuLL))) & 0x80000000) != 0)
                {
                  v202 = a3.i32[0];
                  v204 = 0;
                }

                if (a3.i32[1] >= v202)
                {
LABEL_625:
                  if (a3.i32[2] < v202)
                  {
                    goto LABEL_626;
                  }

                  goto LABEL_640;
                }
              }

              v213 = -1;
              v213.i16[0] = v174 != 1;
              if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v213), 0x1FuLL))) & 0x80000000) != 0)
              {
                v202 = a3.i32[1];
                v204 = 1;
              }

              if (a3.i32[2] < v202)
              {
LABEL_626:
                v210 = -1;
                v210.i16[0] = v174 != 2;
                if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v210), 0x1FuLL))) & 0x80000000) != 0)
                {
                  v202 = a3.i32[2];
                  v204 = 2;
                }

                if (a3.i32[3] >= v202)
                {
                  goto LABEL_643;
                }

                goto LABEL_641;
              }

LABEL_640:
              if (a3.i32[3] >= v202)
              {
LABEL_643:
                v191 = v174;
                result.n64_u32[1] = v204;
LABEL_648:
                *a2 = v191;
                return result;
              }

LABEL_641:
              v214 = -1;
              v214.i16[0] = v174 != 3;
              if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v214), 0x1FuLL))) & 0x80000000) != 0)
              {
                v204 = 3;
              }

              goto LABEL_643;
            }

LABEL_647:
            result.n64_u32[1] = v201;
            goto LABEL_648;
          }
        }

        if (v189 != 16)
        {
          goto LABEL_603;
        }

        if (v188 >= 16)
        {
          if (a4.i32[1] >= 16)
          {
            goto LABEL_590;
          }
        }

        else
        {
          v196.i64[0] = -1;
          v196.i64[1] = -1;
          if ((vminvq_u32(v196) & 0x80000000) != 0)
          {
            v189 = v188;
            v191 = 0;
          }

          if (a4.i32[1] >= v189)
          {
LABEL_590:
            if (a4.i32[2] < v189)
            {
              goto LABEL_591;
            }

            goto LABEL_600;
          }
        }

        v199.i64[0] = -1;
        v199.i64[1] = -1;
        if ((vminvq_u32(v199) & 0x80000000) != 0)
        {
          v189 = a4.i32[1];
          v191 = 1;
        }

        if (a4.i32[2] < v189)
        {
LABEL_591:
          v197.i64[0] = -1;
          v197.i64[1] = -1;
          if ((vminvq_u32(v197) & 0x80000000) != 0)
          {
            v189 = a4.i32[2];
            v191 = 2;
          }

          if (a4.i32[3] < v189)
          {
LABEL_601:
            v200.i64[0] = -1;
            v200.i64[1] = -1;
            if ((vminvq_u32(v200) & 0x80000000) != 0)
            {
              v191 = 3;
            }
          }

LABEL_603:
          result.n64_u32[0] = v174;
          v201 = v191;
          if (v191 == v174)
          {
            goto LABEL_604;
          }

          goto LABEL_647;
        }

LABEL_600:
        if (a4.i32[3] >= v189)
        {
          goto LABEL_603;
        }

        goto LABEL_601;
      }
    }

    if (a5.i32[0] >= v6)
    {
      v190.i64[0] = -1;
      v190.i64[1] = -1;
      if ((vminvq_u32(v190) & 0x80000000) == 0)
      {
        v189 = 16;
      }

      else
      {
        v189 = v188;
      }
    }

    goto LABEL_573;
  }

  if (v168 < 0x2000)
  {
    v211 = v164 && v166;
    if (v164 && v166)
    {
      v215 = -1;
    }

    else
    {
      v215 = 0;
    }

    result.n64_u64[0] = vbslq_s8(vdupq_n_s32(v215), v7, xmmword_239B060A0).u64[0];
    if ((v107 & 0x80000000) != 0)
    {
      return result;
    }
  }

  else
  {
    v211 = v169 < 0x2000 && v164 && v166;
    if (v211)
    {
      v212 = -1;
    }

    else
    {
      v212 = 0;
    }

    result.n64_u64[0] = vbslq_s8(vdupq_n_s32(v212), v7, xmmword_239B060A0).u64[0];
    if ((v107 & 0x80000000) != 0)
    {
      return result;
    }
  }

  if (!v211)
  {
    goto LABEL_516;
  }

  return result;
}