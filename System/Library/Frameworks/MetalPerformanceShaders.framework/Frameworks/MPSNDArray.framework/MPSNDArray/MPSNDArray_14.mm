void sub_239AF4AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, void *a54)
{
  operator delete(__p);
  if (a54)
  {
    operator delete(a54);
    if (a39)
    {
LABEL_6:
      operator delete(a39);
      _Unwind_Resume(a1);
    }
  }

  else if (a39)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolutionA18FunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = a2[8];
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:&v9 + 4 type:33 atIndex:0];
  AddFunctionConstantList(v5, a3);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::EncodeNDArrayConvolutionWinograd(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v302 = *MEMORY[0x277D85DE8];
  v264 = *a4;
  v256 = a4[3];
  v241 = a4[4];
  v242 = a4[5];
  v243 = *(a4 + 3);
  v267 = a4[10];
  v5 = a4[12];
  v222 = a4[11];
  v6 = a4[16];
  v7 = a4[17];
  v8 = *(v7 + *MEMORY[0x277CD7368]);
  v220 = v8;
  v221 = *(v7 + *MEMORY[0x277CD7360]);
  v268 = *(a4 + 120);
  v259 = a4[2];
  v263 = *(a4 + 2);
  if (v268 == 1)
  {
    v239 = v7[34];
    [v239 setLabel:?];
    v216 = 0;
    v9 = -1;
  }

  else
  {
    v239 = v7[32];
    [v239 setLabel:?];
    v9 = v7[39];
    v216 = v9 != -1;
  }

  v10 = [*(v6 + 232) inputTensorAtIndex:0];
  v11 = [*(v6 + 232) inputTensorAtIndex:2];
  v12 = [*(v6 + 232) outputTensorAtIndex:0];
  v13 = [*(v6 + 232) inputTensorAtIndex:1];
  v14 = a4[17];
  v251 = v11;
  if (*(a4 + 120))
  {
    v15 = v11;
  }

  else
  {
    v15 = v10;
  }

  v257 = v12;
  v254 = v6;
  v217 = v9;
  if ((*(v14 + 329) & 1) == 0 && (*(v14 + *MEMORY[0x277CD7378]) & 2) == 0 || *(v15 + 8) != 268435472 || *(v13 + 8) != 268435472 || *(v12 + 8) != 268435472)
  {
    if (qword_27DF86CA8 == -1)
    {
      if (byte_27DF86C81)
      {
LABEL_15:
        v253 = 1;
        MPSKernel_LogInfo(v14, 1uLL, "MPSNDARRAY_WINOGRAD_FP16_INTERMEDIATE is set. Running A18 MXU Winograd using fp16 precision.\n");
        goto LABEL_23;
      }
    }

    else
    {
      v16 = a4[17];
      dispatch_once(&qword_27DF86CA8, &__block_literal_global_298);
      v14 = v16;
      if (byte_27DF86C81)
      {
        goto LABEL_15;
      }
    }

    if (qword_27DF86CB0 == -1)
    {
      if (byte_27DF86C82)
      {
LABEL_19:
        v253 = 0;
        MPSKernel_LogInfo(v14, 1uLL, "MPSNDARRAY_WINOGRAD_FP19_INTERMEDIATE is set. Running A18 MXU Winograd using fp19 precision.\n");
        goto LABEL_23;
      }
    }

    else
    {
      v17 = v14;
      dispatch_once(&qword_27DF86CB0, &__block_literal_global_301);
      v14 = v17;
      if (byte_27DF86C82)
      {
        goto LABEL_19;
      }
    }

    v18 = v14;
    if (MPSForceMatrixUnit())
    {
      v253 = 0;
      MPSKernel_LogInfo(v18, 1uLL, "MPSNDARRAY_CONV_FORCE_MXU is set to 1. Forcing A18 MXU Winograd using fp19 precision.\n");
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v253 = 0;
    }

    goto LABEL_23;
  }

  v253 = 1;
  MPSKernel_LogInfo(v14, 1uLL, "allowReducedPrecision flag is set. Running A18 MXU Winograd using fp16 precision.\n");
LABEL_23:
  v19 = [*(a4[16] + 232) graph];
  v20 = *(v19 + 64);
  v21 = *v20;
  v22 = v20[1];
  if (*v20 == v22)
  {
    v25 = 0;
    v29 = v6;
    goto LABEL_36;
  }

  v23 = v19;
  v24 = -1;
  v25 = -1;
  do
  {
    v26 = *v21;
    CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v23);
    v28 = *v21;
    if (v26 == *(CoreOpInputAtIndex + 32))
    {
      v24 = *(v28 + 76);
      if (v28 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v23) + 32))
      {
        goto LABEL_25;
      }
    }

    else if (v28 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v23) + 32))
    {
      goto LABEL_25;
    }

    v25 = *(*v21 + 76);
LABEL_25:
    ++v21;
  }

  while (v21 != v22);
  v29 = v254;
  if (v25 == -1)
  {
    v25 = 0;
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_38:
      v24 = 0;
      v34 = *(v13 + 16);
      v281 = 0;
      v282 = 0;
      v280 = 0;
      v36 = *v34;
      v35 = v34[1];
      v33 = v35 - v36;
      if (v35 == v36)
      {
        goto LABEL_41;
      }

LABEL_39:
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

LABEL_37:
    MTLReportFailure();
    goto LABEL_38;
  }

  if (v24 == -1)
  {
LABEL_36:
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v30 = *(v13 + 16);
  v281 = 0;
  v282 = 0;
  v280 = 0;
  v32 = *v30;
  v31 = v30[1];
  v33 = v31 - v32;
  if (v31 != v32)
  {
    goto LABEL_39;
  }

LABEL_41:
  v37 = [*(v29 + 16) objectAtIndexedSubscript:v25];
  v38 = *(*(v29 + 8) + 80 * v25 + 64);
  v266 = [*(v29 + 16) objectAtIndexedSubscript:v24];
  if (v268)
  {
    v39 = (v29 + 96);
    v266 = *(v29 + 112);
  }

  else
  {
    v39 = (*(v29 + 8) + 80 * v24 + 64);
  }

  v40 = *v39;
  v236 = *(v29 + 208);
  v41 = *(&v37->super.super.isa + *MEMORY[0x277CD73D8]);
  v42 = *(v29 + 192);
  if (v41 > 3u || BYTE1(v41) > 3u || BYTE2(*(&v37->super.super.isa + *MEMORY[0x277CD73D8])) > 3u || BYTE3(*(&v37->super.super.isa + *MEMORY[0x277CD73D8])) > 3u)
  {
    goto LABEL_55;
  }

  if (v41 != 50462976)
  {
    if (v243 == 1)
    {
      if (v41 != 16777731)
      {
        goto LABEL_55;
      }

      v245 = 0;
      v249 = 0;
    }

    else
    {
      if (v243 || v41 != 16777731)
      {
        goto LABEL_55;
      }

      v245 = 0;
      v46 = 1;
LABEL_65:
      v249 = v46;
    }

    v48 = [*(v29 + 16) count];
    v230 = v38;
    if (v268)
    {
      v222 = vadd_s32(v5, v222);
      v10 = v251;
      v255 = v259;
    }

    else
    {
      v255 = v256;
      v256 = v259;
    }

    v49 = *(v10 + 8);
    v260 = *(v13 + 8);
    v50 = *(v257 + 8);
    if (v49 > 301989895)
    {
      if (v49 == 301989896 || v49 == 335544328)
      {
        goto LABEL_78;
      }
    }

    else if ((v49 - 268435464) <= 0x18 && ((1 << (v49 - 8)) & 0x1000101) != 0 || v49 == -1879048176)
    {
      goto LABEL_78;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_78:
    if (v260 > 301989895)
    {
      if (v260 == 301989896 || v260 == 335544328)
      {
        goto LABEL_87;
      }
    }

    else if ((v260 - 268435464) <= 0x18 && ((1 << (v260 - 8)) & 0x1000101) != 0 || v260 == -1879048176)
    {
      goto LABEL_87;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_87:
    if (v50 > 301989895)
    {
      if (v50 == 301989896 || v50 == 335544328)
      {
        goto LABEL_96;
      }
    }

    else if ((v50 - 268435464) <= 0x18 && ((1 << (v50 - 8)) & 0x1000101) != 0 || v50 == -1879048176)
    {
      goto LABEL_96;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_96:
    if (v263 == 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v208 = v42;
    v209 = v40;
    v51 = *(v10 + 16);
    v53 = *v51;
    v52 = v51[1];
    if (v52 != v53)
    {
      if (((v52 - v53) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v59 = *(v257 + 16);
    v61 = *v59;
    v60 = v59[1];
    if (v60 != v61)
    {
      if (((v60 - v61) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v214 = v48;
    if (v263)
    {
      v54 = 8;
      v55 = 8;
      v56 = 16;
      v57 = 0;
      v58 = 0;
    }

    else
    {
      v58 = 16;
      v57 = 16;
      v56 = 8;
      v55 = 0;
      v54 = 0;
    }

    v62 = *v58;
    v211 = *v54;
    v212 = *v56;
    v63 = MEMORY[0x18];
    v64 = *v57;
    v224 = *v55;
    v237 = MEMORY[0x18];
    v238 = *v56;
    v65 = v280 + 2;
    if (v243)
    {
      v66 = v280 + 3;
      v67 = 1;
      v68 = v280;
    }

    else
    {
      v68 = v280 + 2;
      v65 = v280 + 1;
      v67 = 3;
      v66 = v280;
    }

    v69 = *v66;
    v228 = *v65;
    v232 = *v68;
    v234 = v280[v67];
    v70 = *v65 * v267;
    if (v268)
    {
      if (v70 != v255 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v69 != v256 && (MTLReportFailureTypeEnabled() & 1) != 0)
      {
LABEL_564:
        MTLReportFailure();
      }
    }

    else
    {
      if (v70 != v256 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v69 != v255 && MTLReportFailureTypeEnabled())
      {
        goto LABEL_564;
      }
    }

    if (v234 != v242 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v232 != v241 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v63 != v237 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v62 != v256 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v64 != v255 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v71 = *(v10 + 8);
    if (v71 > 285212703)
    {
      if (v71 <= 536870915)
      {
        if (v71 > 301989895)
        {
          if (v71 == 301989896)
          {
            v72 = 512;
            v73 = *(v13 + 8);
            if (v73 <= 285212703)
            {
              goto LABEL_188;
            }
          }

          else
          {
            if (v71 != 335544328)
            {
              goto LABEL_209;
            }

            v72 = 544;
            v73 = *(v13 + 8);
            if (v73 <= 285212703)
            {
              goto LABEL_188;
            }
          }
        }

        else if (v71 == 285212704)
        {
          v72 = 416;
          v73 = *(v13 + 8);
          if (v73 <= 285212703)
          {
            goto LABEL_188;
          }
        }

        else
        {
          if (v71 != 285212736)
          {
            goto LABEL_209;
          }

          v72 = 448;
          v73 = *(v13 + 8);
          if (v73 <= 285212703)
          {
            goto LABEL_188;
          }
        }
      }

      else if (v71 <= 536870927)
      {
        if (v71 == 536870916)
        {
          v72 = 0;
          v73 = *(v13 + 8);
          if (v73 > 285212703)
          {
            goto LABEL_210;
          }

          goto LABEL_188;
        }

        if (v71 != 536870920)
        {
          goto LABEL_209;
        }

        v72 = 32;
        v73 = *(v13 + 8);
        if (v73 <= 285212703)
        {
          goto LABEL_188;
        }
      }

      else
      {
        switch(v71)
        {
          case 536870928:
            v72 = 64;
            v73 = *(v13 + 8);
            if (v73 <= 285212703)
            {
              goto LABEL_188;
            }

            break;
          case 536870944:
            v72 = 96;
            v73 = *(v13 + 8);
            if (v73 <= 285212703)
            {
              goto LABEL_188;
            }

            break;
          case 536870976:
            v72 = 128;
            v73 = *(v13 + 8);
            if (v73 <= 285212703)
            {
              goto LABEL_188;
            }

            break;
          default:
            goto LABEL_209;
        }
      }
    }

    else if (v71 <= 31)
    {
      if (v71 > 7)
      {
        if (v71 == 8)
        {
          v72 = 192;
          v73 = *(v13 + 8);
          if (v73 <= 285212703)
          {
            goto LABEL_188;
          }
        }

        else
        {
          if (v71 != 16)
          {
            goto LABEL_209;
          }

          v72 = 224;
          v73 = *(v13 + 8);
          if (v73 <= 285212703)
          {
            goto LABEL_188;
          }
        }
      }

      else if (v71 == -1879048176)
      {
        v72 = 384;
        v73 = *(v13 + 8);
        if (v73 <= 285212703)
        {
          goto LABEL_188;
        }
      }

      else
      {
        if (v71 != 4)
        {
          goto LABEL_209;
        }

        v72 = 160;
        v73 = *(v13 + 8);
        if (v73 <= 285212703)
        {
          goto LABEL_188;
        }
      }
    }

    else if (v71 <= 268435463)
    {
      if (v71 == 32)
      {
        v72 = 256;
        v73 = *(v13 + 8);
        if (v73 <= 285212703)
        {
          goto LABEL_188;
        }
      }

      else
      {
        if (v71 != 64)
        {
          goto LABEL_209;
        }

        v72 = 288;
        v73 = *(v13 + 8);
        if (v73 <= 285212703)
        {
          goto LABEL_188;
        }
      }
    }

    else
    {
      switch(v71)
      {
        case 268435464:
          v72 = 480;
          v73 = *(v13 + 8);
          if (v73 <= 285212703)
          {
            goto LABEL_188;
          }

          break;
        case 268435472:
          v72 = 320;
          v73 = *(v13 + 8);
          if (v73 <= 285212703)
          {
            goto LABEL_188;
          }

          break;
        case 268435488:
          v72 = 352;
          v73 = *(v13 + 8);
          if (v73 > 285212703)
          {
            break;
          }

LABEL_188:
          v74 = v260;
          if (v73 <= 31)
          {
            if (v73 > 7)
            {
              if (v73 == 8)
              {
                v75 = 6144;
                goto LABEL_232;
              }

              if (v73 == 16)
              {
                v75 = 7168;
                goto LABEL_232;
              }
            }

            else
            {
              if (v73 == -1879048176)
              {
                v75 = 12288;
                goto LABEL_232;
              }

              if (v73 == 4)
              {
                v75 = 5120;
                goto LABEL_232;
              }
            }
          }

          else if (v73 <= 268435463)
          {
            if (v73 == 32)
            {
              v75 = 0x2000;
              goto LABEL_232;
            }

            if (v73 == 64)
            {
              v75 = 9216;
              goto LABEL_232;
            }
          }

          else
          {
            switch(v73)
            {
              case 268435464:
                v75 = 15360;
                goto LABEL_232;
              case 268435472:
                v75 = 10240;
                goto LABEL_232;
              case 268435488:
                v75 = 11264;
                goto LABEL_232;
            }
          }

          goto LABEL_231;
        default:
LABEL_209:
          v72 = 576;
          v73 = *(v13 + 8);
          if (v73 > 285212703)
          {
            break;
          }

          goto LABEL_188;
      }
    }

LABEL_210:
    v74 = v260;
    if (v73 <= 536870915)
    {
      if (v73 > 301989895)
      {
        if (v73 == 301989896)
        {
          v75 = 0x4000;
          goto LABEL_232;
        }

        if (v73 == 335544328)
        {
          v75 = 17408;
          goto LABEL_232;
        }
      }

      else
      {
        if (v73 == 285212704)
        {
          v75 = 13312;
          goto LABEL_232;
        }

        if (v73 == 285212736)
        {
          v75 = 14336;
          goto LABEL_232;
        }
      }
    }

    else if (v73 <= 536870927)
    {
      if (v73 == 536870916)
      {
        v75 = 0;
        goto LABEL_232;
      }

      if (v73 == 536870920)
      {
        v75 = 1024;
        goto LABEL_232;
      }
    }

    else
    {
      switch(v73)
      {
        case 536870928:
          v75 = 2048;
          goto LABEL_232;
        case 536870944:
          v75 = 3072;
          goto LABEL_232;
        case 536870976:
          v75 = 4096;
          goto LABEL_232;
      }
    }

LABEL_231:
    v75 = 18432;
LABEL_232:
    v76 = v75 | v72;
    if (!v268)
    {
      goto LABEL_278;
    }

    v77 = *(v251 + 8);
    if (v77 > 285212703)
    {
      if (v77 <= 536870915)
      {
        if (v77 > 301989895)
        {
          if (v77 == 301989896)
          {
            v78 = 0x80000;
            goto LABEL_277;
          }

          if (v77 == 335544328)
          {
            v78 = 557056;
            goto LABEL_277;
          }
        }

        else
        {
          if (v77 == 285212704)
          {
            v78 = 425984;
            goto LABEL_277;
          }

          if (v77 == 285212736)
          {
            v78 = 458752;
            goto LABEL_277;
          }
        }
      }

      else if (v77 <= 536870927)
      {
        if (v77 == 536870916)
        {
          v78 = 0;
          goto LABEL_277;
        }

        if (v77 == 536870920)
        {
          v78 = 0x8000;
          goto LABEL_277;
        }
      }

      else
      {
        switch(v77)
        {
          case 536870928:
            v78 = 0x10000;
            goto LABEL_277;
          case 536870944:
            v78 = 98304;
            goto LABEL_277;
          case 536870976:
            v78 = 0x20000;
            goto LABEL_277;
        }
      }
    }

    else if (v77 <= 31)
    {
      if (v77 > 7)
      {
        if (v77 == 8)
        {
          v78 = 196608;
          goto LABEL_277;
        }

        if (v77 == 16)
        {
          v78 = 229376;
          goto LABEL_277;
        }
      }

      else
      {
        if (v77 == -1879048176)
        {
          v78 = 393216;
          goto LABEL_277;
        }

        if (v77 == 4)
        {
          v78 = 163840;
          goto LABEL_277;
        }
      }
    }

    else if (v77 <= 268435463)
    {
      if (v77 == 32)
      {
        v78 = 0x40000;
        goto LABEL_277;
      }

      if (v77 == 64)
      {
        v78 = 294912;
        goto LABEL_277;
      }
    }

    else
    {
      switch(v77)
      {
        case 268435464:
          v78 = 491520;
          goto LABEL_277;
        case 268435472:
          v78 = 327680;
          goto LABEL_277;
        case 268435488:
          v78 = 360448;
LABEL_277:
          v76 |= v78;
LABEL_278:
          v79 = *(v257 + 8);
          if (v79 > 285212703)
          {
            if (v79 <= 536870915)
            {
              if (v79 > 301989895)
              {
                if (v79 == 301989896)
                {
                  v80 = 16;
                  goto LABEL_322;
                }

                if (v79 == 335544328)
                {
                  v80 = 17;
                  goto LABEL_322;
                }
              }

              else
              {
                if (v79 == 285212704)
                {
                  v80 = 13;
                  goto LABEL_322;
                }

                if (v79 == 285212736)
                {
                  v80 = 14;
                  goto LABEL_322;
                }
              }
            }

            else if (v79 <= 536870927)
            {
              if (v79 == 536870916)
              {
                v215 = 0;
                goto LABEL_323;
              }

              if (v79 == 536870920)
              {
                v80 = 1;
                goto LABEL_322;
              }
            }

            else
            {
              switch(v79)
              {
                case 536870928:
                  v80 = 2;
                  goto LABEL_322;
                case 536870944:
                  v80 = 3;
                  goto LABEL_322;
                case 536870976:
                  v80 = 4;
                  goto LABEL_322;
              }
            }
          }

          else if (v79 <= 31)
          {
            if (v79 > 7)
            {
              if (v79 == 8)
              {
                v80 = 6;
                goto LABEL_322;
              }

              if (v79 == 16)
              {
                v80 = 7;
                goto LABEL_322;
              }
            }

            else
            {
              if (v79 == -1879048176)
              {
                v80 = 12;
                goto LABEL_322;
              }

              if (v79 == 4)
              {
                v80 = 5;
                goto LABEL_322;
              }
            }
          }

          else if (v79 <= 268435463)
          {
            if (v79 == 32)
            {
              v80 = 8;
              goto LABEL_322;
            }

            if (v79 == 64)
            {
              v80 = 9;
              goto LABEL_322;
            }
          }

          else
          {
            switch(v79)
            {
              case 268435464:
                v80 = 15;
                goto LABEL_322;
              case 268435472:
                v80 = 10;
                goto LABEL_322;
              case 268435488:
                v80 = 11;
LABEL_322:
                v215 = v80;
LABEL_323:
                v81 = v255 / v267;
                v82 = v256 / v267;
                v206 = v63;
                v213 = v76;
                if (v74 <= 268435471)
                {
                  if (v74 == -1879048176)
                  {
                    v83 = 2;
                    goto LABEL_335;
                  }

                  if (v74 == 268435464)
                  {
                    v83 = 3;
                    goto LABEL_335;
                  }
                }

                else
                {
                  switch(v74)
                  {
                    case 268435472:
                      v83 = 1;
                      goto LABEL_335;
                    case 301989896:
                      v83 = 4;
                      goto LABEL_335;
                    case 335544328:
                      v83 = 5;
                      goto LABEL_335;
                  }
                }

                v83 = 0;
LABEL_335:
                if (v253)
                {
                  v84 = 268435472;
                }

                else
                {
                  v84 = 268435488;
                }

                v258 = v256 / v267;
                v85 = v82 + 15;
                v252 = v255 / v267;
                v86 = v81 + 15;
                __s2 = vdupq_n_s64(0x10uLL);
                v219 = (v81 + 15) >> 4;
                v293 = 16;
                v294 = (v82 + 15) >> 4;
                v223 = v294;
                *&v295 = v219 * v267;
                if (v268)
                {
                  v294 = v219 * v267;
                  *&v295 = (v82 + 15) >> 4;
                }

                v207 = v84;
                v87 = [MEMORY[0x277CD7268] descriptorWithDataType:? dimensionCount:? dimensionSizes:?];
                v226 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v87];
                if (v253)
                {
                  v88 = 4096;
                }

                else
                {
                  v88 = 0;
                }

                if (v267 == 1)
                {
                  v89 = 9056;
                }

                else
                {
                  v89 = 864;
                }

                *&v90 = -1;
                *(&v90 + 1) = -1;
                *&v286[16] = v90;
                *&v286[32] = v90;
                v285 = -1;
                *v286 = v90;
                v283 = v90;
                v284 = (v83 | v88) & 0xFFFFFFE7 | v89 & 0xFFFFFFE7 | (v268 << 14) | (8 * (v249 & 3));
                v204 = *(v254 + 232);
                MPSLibrary::CreateUberShaderKey();
                [a2 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v204, v221, v220, 0, 0}];
                MPSLibrary::ReleaseComputeState();
                MPSLibrary::ReleaseMPSKey();
                v210 = v86 & 0xFFFFFFFFFFFFFFF0;
                v91 = ((v86 & 0xFFFFFFFFFFFFFFF0) >> 3) * v267;
                *&v271[22] = 0;
                *&v270 = __PAIR64__(v223, v258);
                *(&v270 + 1) = __PAIR64__(v219, v255);
                *v271 = v255 / v267;
                *&v271[4] = 0uLL;
                *&v271[20] = v91 / v267;
                MPSGetUShortDivisorMagicNumber();
                *&v271[24] = v92;
                v93 = *(&v37->super.super.isa + *MEMORY[0x277CD7400]) / (*(&v37->super.super.isa + *MEMORY[0x277CD73C8]) >> 3);
                if (v249 == 1)
                {
                  v94 = v234 * v228 * v93;
                  LODWORD(v95) = v93 * v234;
                  v96 = 1;
                }

                else
                {
                  v96 = v93 * v228;
                  v95 = *(&v37->super.super.isa + *MEMORY[0x277CD7400]) / (*(&v37->super.super.isa + *MEMORY[0x277CD73C8]) >> 3);
                  LODWORD(v93) = v232 * v228 * v93;
                  v94 = 1;
                }

                *&v271[8] = v94;
                *&v271[4] = v95;
                *&v271[16] = v93;
                *&v271[12] = v96;
                if (v245)
                {
                  v97 = 0;
                }

                else
                {
                  v97 = v230;
                }

                [a2 setBuffer:-[MPSTemporaryNDArray buffer](v37 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v37, 0, 4, 0, 0) + v97, 28}];
                [a2 setBuffer:-[MPSTemporaryNDArray buffer](v226 offset:"buffer") atIndex:{0, 27}];
                if ((atomic_load_explicit(&qword_27DF86C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86C90))
                {
                  qword_27DF86C88 = [objc_msgSend(objc_msgSend(a3 "commandQueue")];
                  __cxa_guard_release(&qword_27DF86C90);
                }

                v98 = [qword_27DF86C88 contents];
                *v98 = 0;
                v98[1] = 0;
                [a2 setBuffer:qword_27DF86C88 offset:0 atIndex:24];
                [a2 setBytes:&v270 length:48 atIndex:26];
                v99 = (v85 >> 3) & 0x1FFFFFFFFFFFFFFELL;
                if (v249)
                {
                  v100 = (v85 >> 3) & 0x1FFFFFFFFFFFFFFELL;
                }

                else
                {
                  v100 = v91;
                }

                if (v249)
                {
                  v99 = v91;
                }

                v277 = v100;
                v278 = v99;
                v279 = 1;
                v275 = vdupq_n_s64(8uLL);
                v276 = 1;
                [a2 dispatchThreadgroups:&v277 threadsPerThreadgroup:&v275];
                if (v245)
                {
                  MPSDecrementReadCount(v37);
                }

                v101 = *&v266[*MEMORY[0x277CD73D8]];
                v102 = v101.u8[0];
                v103 = v101.u8[1];
                v104 = v101.u8[3];
                v105 = v101.u8[2];
                if (v101.u8[0] <= 3u && v101.u8[1] <= 3u && v101.u8[2] <= 3u && v101.u8[3] <= 3u)
                {
                  v106 = vceq_s16((*&vzip1_s8(*v101.i8, *v101.i8) & 0xFF00FF00FF00FFLL), 0x3000200010000);
                  if (vminv_u16(v106))
                  {
                    if (v263 != -1)
                    {
LABEL_383:
                      v107 = v263;
LABEL_384:
                      if (*(a1 + 160) == 3)
                      {
                        v111 = *(a1 + 152);
                        v112 = a4[17];
                        if ((v268 & 1) == 0)
                        {
                          goto LABEL_386;
                        }
                      }

                      else
                      {
                        v111 = 0;
                        v112 = a4[17];
                        if ((v268 & 1) == 0)
                        {
LABEL_386:
                          v113 = v224;
                          if (*(v112 + 304) == 3)
                          {
                            v111 = *(v112 + 296);
                          }

LABEL_390:
                          v225 = v112;
                          v114 = v49 == 268435488;
                          __s2.i64[0] = __PAIR64__(v238, v113);
                          v115 = v260 == 268435488;
                          v116 = v256 / v267;
                          __s2.i32[2] = v256 / v267;
                          v117 = v255 / v267;
                          if (v253)
                          {
                            v118 = 1;
                          }

                          else
                          {
                            v118 = 2;
                          }

                          __s2.i32[3] = v255 / v267;
                          v293 = __PAIR64__(v242, v241);
                          v294 = __PAIR64__(v237, v267);
                          *&v119 = 0x100000001;
                          *(&v119 + 1) = 0x100000001;
                          v295 = v119;
                          v296 = v107;
                          v297 = v263;
                          v298 = v243;
                          v299 = v114;
                          v300 = v260 == 268435488;
                          v301 = v118;
                          if (v268)
                          {
                            v116 = v255 / v267;
                            v117 = v256 / v267;
                            __s2.i32[2] = v255 / v267;
                            __s2.i32[3] = v256 / v267;
                          }

                          if (v111)
                          {
                            v248 = *v111;
                            v246 = v111[1];
                            v227 = v111[2];
                            v229 = v111[3];
                            v240 = v111[4];
                            v235 = v111[5];
                            v231 = v111[6];
                            v233 = v111[7];
                            v250 = v111[8];
                            v261 = v111[9];
                            goto LABEL_415;
                          }

                          v120 = *(a1 + 296);
                          if (v120)
                          {
                            v121 = *(a1 + 304);
                            if (v121)
                            {
                              while (memcmp(v120, &__s2, 0x48uLL))
                              {
                                v120 += 28;
                                if (!--v121)
                                {
                                  goto LABEL_401;
                                }
                              }

                              goto LABEL_408;
                            }
                          }

LABEL_401:
                          v122 = *(a1 + 288);
                          if (v122)
                          {
                            v120 = *(a1 + 280);
                            while (memcmp(v120, &__s2, 0x48uLL))
                            {
                              v120 += 28;
                              if (!--v122)
                              {
                                goto LABEL_405;
                              }
                            }

LABEL_408:
                            v248 = v120[18];
                            v246 = v120[19];
                            v227 = v120[20];
                            v229 = v120[21];
                            v240 = v120[22];
                            v235 = v120[23];
                            v231 = v120[24];
                            v233 = v120[25];
                            v250 = v120[26];
                            v261 = v120[27];
                            goto LABEL_415;
                          }

LABEL_405:
                          if (!v253)
                          {
                            v261 = 0;
                            v240 = 0;
                            v235 = 5;
                            v227 = 0;
                            v229 = 2;
                            v233 = 2;
                            v246 = 2;
                            v231 = 1;
                            v248 = 1;
                            v250 = 0;
                            goto LABEL_415;
                          }

                          if (v117 <= 0x3F)
                          {
                            v261 = 0;
                            v231 = 0;
                            v233 = 0;
                            v240 = 0;
                            v227 = 0;
                            v229 = 0;
                            v246 = v117 > 0x10;
                            v248 = 0;
                            v235 = 4;
                            v250 = 2;
                            goto LABEL_415;
                          }

                          v123 = ((v238 + 1) >> 1) * ((v224 + 1) >> 1);
                          if (v123 > 0x7FF)
                          {
                            goto LABEL_411;
                          }

                          if (v117 == 64)
                          {
                            v261 = 0;
                            v229 = 0;
                            v231 = 0;
                            v240 = 0;
                            v235 = 4;
                            v233 = 1;
                            v227 = 1;
                            v248 = 0;
                            v250 = 1;
                            v246 = 1;
                          }

                          else
                          {
                            v124 = 0;
                            v246 = 2;
                            v235 = 4;
                            v250 = 3;
                            v261 = 0;
                            if (v117 < 0x100)
                            {
                              v231 = 0;
                              v233 = 0;
                              v240 = 0;
                              v227 = 0;
                              v229 = 0;
                              goto LABEL_412;
                            }

                            v231 = 0;
                            v233 = 0;
                            v240 = 0;
                            v227 = 0;
                            v229 = 0;
                            v248 = 0;
                            if (v123 >= 0x20)
                            {
LABEL_411:
                              v240 = 0;
                              v227 = 0;
                              v229 = 0;
                              v233 = 0;
                              v235 = 5;
                              v124 = 1;
                              v250 = 1;
                              v231 = 1;
                              v246 = 1;
                              v261 = 1;
LABEL_412:
                              v248 = v124;
                            }
                          }

LABEL_415:
                          if ((*(&v225->super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
                          {
                            v125 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", v224, v238, v116, v117, v241, v242, v267, v237, 1, 1, 1, 1, v107, v263, v243, v114, v115, v118];
                            MPSKernel_LogInfo(v225, 1uLL, "Winograd A18 kernel running key with params:    {%s, %s}\n", [v125 UTF8String], objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"{%d,%d,%d,%d,%d,%d,%d,%d,%d,%d}", v248, v246, v227, v229, v240, v235, v231, v233, v250, v261), "UTF8String"));
                          }

                          if (qword_27DF86CC0 == -1)
                          {
                            v126 = v217;
                            v127 = v225;
                            if (byte_27DF86C83 == 1)
                            {
                              goto LABEL_419;
                            }
                          }

                          else
                          {
                            dispatch_once(&qword_27DF86CC0, &__block_literal_global_326);
                            v126 = v217;
                            v127 = v225;
                            if (byte_27DF86C83 == 1)
                            {
LABEL_419:
                              if ([v127 conformsToProtocol:&unk_284CCB9C0])
                              {
                                if (!qword_27DF86CB8)
                                {
                                  qword_27DF86CB8 = objc_alloc_init(MPSNDArrayAutoTuneRecorderObj);
                                }

                                v128 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&__s2 length:72];
                                [qword_27DF86CB8 recordNode:v128 kernelID:0];
                              }
                            }
                          }

                          v218 = v107;
                          if (v216)
                          {
                            if ((v126 & 0x8000000000000000) != 0)
                            {
                              v144 = -1;
                              v163 = v261;
                            }

                            else
                            {
                              v240 = v126 / 0x51 - 7 * ((v126 / 0x51 * 0x2492492492492493uLL) >> 64);
                              v235 = (((v126 % 3) | 4) - v240) & ~((((v126 % 3) | 4) - v240) >> 63);
                              v129 = v126 / 0x237 - 7 * ((v126 / 0x237 * 0x2492492492492493uLL) >> 64);
                              v248 = v126 % 3;
                              v130 = 1 << (v126 % 3);
                              v131 = v126 / 0x3E04 - 5 * ((v126 / 0x3E04 * 0x3333333333333334uLL) >> 64);
                              v132 = v126 / 3 - 3 * ((v126 / 3 * 0x5555555555555556uLL) >> 64);
                              v133 = v126 / 9 - 3 * ((v126 / 9 * 0x5555555555555556uLL) >> 64);
                              v134 = v126 / 0x1B - 3 * ((v126 / 0x1B * 0x5555555555555556uLL) >> 64);
                              v231 = v129;
                              v233 = (((v126 * 0x420C41461C824A2DuLL) >> 64) >> 10) & 3;
                              v135 = (((1 << v132) >> ((((v126 * 0x420C41461C824A2DuLL) >> 64) >> 10) & 3)) * (v130 / (1 << v129))) * (0x10u / (1 << v131));
                              v250 = v131;
                              v137 = v135 < 0x20 || (1 << ((((v126 * 0x420C41461C824A2DuLL) >> 64) >> 10) & 3) << v129 << v131) < 8;
                              v246 = v126 / 3 - 3 * ((v126 / 3 * 0x5555555555555556uLL) >> 64);
                              v138 = (v130 << v132);
                              v227 = v126 / 9 - 3 * ((v126 / 9 * 0x5555555555555556uLL) >> 64);
                              v229 = v126 / 0x1B - 3 * ((v126 / 0x1B * 0x5555555555555556uLL) >> 64);
                              v139 = (0x10u / (1 << v133)) << ((v126 % 3) | 8);
                              v140 = (1 << v134);
                              if (v139 <= ((v130 << v132) / v140) << 12)
                              {
                                v139 = ((v130 << v132) / v140) << 12;
                              }

                              if (v301 == 1)
                              {
                                v141 = 1;
                              }

                              else
                              {
                                v141 = 2;
                              }

                              if ((v139 << v141 > 0x8000 || !(HIDWORD(v294) >> v240) || 1 << v133 > (1 << v131) || v138 < 1 << v134 || v135 < v138 || v131 > 3 || (1 << v235) << v240 != 16 << v248 || v135 > 0x20 || !v137) && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v262 = (v126 / 0x13614) - 3 * ((v126 / 0x13614 * 0x5555555555555556uLL) >> 64);
                              if (v301 == 1)
                              {
                                v142 = 1;
                              }

                              else
                              {
                                v142 = 2;
                              }

                              if (v126 <= 0x3A23B)
                              {
                                v143 = 238139;
                              }

                              else
                              {
                                v143 = v126;
                              }

                              v144 = v126;
                              while (v143 != v144)
                              {
                                v145 = ++v144 % 3;
                                v146 = (9363 * (v144 / 0x237)) >> 16;
                                v147 = v144 / 0x237 - 7 * ((v146 + (((v144 / 0x237 - v146) & 0xFFFE) >> 1)) >> 2);
                                v148 = (v144 / 0xF81) & 3;
                                v149 = 1 << v148;
                                v150 = (((1 << (v144 / 3 - 3 * ((1431655766 * (v144 / 3)) >> 32))) >> v148) * ((1 << (v144 % 3)) / (1 << v147))) * (0x10u / (1 << (v144 / 0x3E04 - 5 * ((858993460 * (v144 / 0x3E04)) >> 32))));
                                v151 = v149 << v147 << (v144 / 0x3E04 - 5 * ((858993460 * (v144 / 0x3E04)) >> 32));
                                v153 = v150 < 0x20 || v151 < 8;
                                v154 = (1 << (v144 % 3) << (v144 / 3 - 3 * ((1431655766 * (v144 / 3)) >> 32)));
                                v155 = 1 << ((v144 / 0x1B) % 3u);
                                v156 = (0x10u / (1 << ((v144 / 9) % 3u))) << (v145 | 8);
                                if (v156 <= ((1 << (v144 % 3) << (v144 / 3 - 3 * ((1431655766 * (v144 / 3)) >> 32))) / v155) << 12)
                                {
                                  v156 = ((1 << (v144 % 3) << (v144 / 3 - 3 * ((1431655766 * (v144 / 3)) >> 32))) / v155) << 12;
                                }

                                if (v156 << v142 <= 0x8000)
                                {
                                  v157 = v144 / 0x51;
                                  v158 = (9363 * (v144 / 0x51)) >> 16;
                                  if (HIDWORD(v294) >> (v157 - 7 * ((v158 + (((v157 - v158) & 0xFFFE) >> 1)) >> 2)))
                                  {
                                    if (1 << ((v144 / 9) % 3u) <= (1 << (v144 / 0x3E04 - 5 * ((858993460 * (v144 / 0x3E04)) >> 32))) && v154 >= v155)
                                    {
                                      if (v150 < v154 || ((v144 / 0x3E04) - 5 * ((858993460 * (v144 / 0x3E04)) >> 32)) > 3)
                                      {
                                        v161 = 0;
                                      }

                                      else
                                      {
                                        v159 = v157 - 7 * ((v158 + (((v157 - v158) & 0xFFFE) >> 1)) >> 2);
                                        v161 = (1 << (((v145 | 4) - v159) & ~(((v145 | 4) - v159) >> 63))) << v159 == 16 << v145;
                                      }

                                      if (v161 && v150 <= 0x20 && v153)
                                      {
                                        goto LABEL_480;
                                      }
                                    }
                                  }
                                }
                              }

                              v144 = -1;
LABEL_480:
                              v126 = v217;
                              if (v144 == v217)
                              {
                                v163 = v262;
                                v127 = v225;
                                if (MTLReportFailureTypeEnabled())
                                {
                                  MTLReportFailure();
                                }

                                v144 = v217;
                              }

                              else
                              {
                                v163 = v262;
                                v127 = v225;
                              }
                            }

                            *(v127 + 320) = v144;
                            LODWORD(v261) = v163;
                            if (*(v127 + 328) == 1)
                            {
                              *(v127 + 328) = 0;
                              v164 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", __s2.u32[0], __s2.u32[1], __s2.u32[2], __s2.u32[3], v293, HIDWORD(v293), v294, HIDWORD(v294), v295, DWORD1(v295), DWORD2(v295), HIDWORD(v295), v296, v297, v298, v299, v300, v301];
                              MPSKernel_LogInfo(v127, 0, "Winograd A18 kernel running auto tune iteration %7ld key with params:    {%s, %s}\n", v126, [v164 UTF8String], objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"{%d,%d,%d,%d,%d,%d,%d,%d,%d,%d}", v248, v246, v227, v229, v240, v235, v231, v233, v250, v163), "UTF8String"));
                            }
                          }

                          v165 = 1 << v246;
                          v166 = (1 << v248) * (1 << v246);
                          if (v166 >= 0x11 && MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          if (v246 >= 3 && MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          if (v248 >= 3 && MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          v167 = 1 << v248;
                          v168 = 1 << v235;
                          if ((1 << v240) * v168 != 16 * v167 && MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          if (v250 >= 4 && MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          v169 = 1 << v250;
                          v170 = v165 / (1 << v233) * (v167 / (1 << v231)) * (0x10 / v169);
                          if (v170 >= 0x21 && MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          if (v166 > v170 && MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          v244 = 1 << v229;
                          if (v166 < v244 && MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          if (1 << v227 > v169 && MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          if (v261 >= 3 && MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          if (16 * (v169 & 0x7FFFFFFFFFFFFFLL) >= 0x81 && MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          v171 = 16 * v165;
                          if (v253)
                          {
                            v172 = 0x8000000;
                          }

                          else
                          {
                            v172 = 0;
                          }

                          *&v173 = -1;
                          *(&v173 + 1) = -1;
                          v272 = v173;
                          v274 = -1;
                          *&v271[16] = v173;
                          v270 = v173;
                          *v271 = v218 & 1 | ((v231 & 3) << 6) | ((v235 & 7) << 20) | ((v240 & 7) << 17) | ((v229 & 7) << 14) | ((v227 & 3) << 12) | (16 * (v246 & 3)) | (4 * (v248 & 3)) | ((2 * (v263 & 1)) | ((v267 == 1) << 23) | v172 | ((((v256 / v267) & 0xF) == 0) << 25)) & 0xCFFFF0FF | ((v261 & 3) << 28) | ((v250 & 3) << 10) | ((v233 & 3) << 8) | ((v210 % v171 == 0) << 24);
                          *&v271[8] = v215 | v213;
                          v273 = v214 | (v268 << 8) | 0x10000u;
                          v205 = *(v254 + 232);
                          MPSLibrary::CreateUberShaderKey();
                          [a2 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v205, v221, v220, 0, 0}];
                          MPSLibrary::ReleaseComputeState();
                          MPSLibrary::ReleaseMPSKey();
                          v174 = (v252 + v171 - 1) / v171 * v267;
                          v283 = 0u;
                          v290 = 0u;
                          v291 = 0u;
                          v288 = 0u;
                          v289 = 0u;
                          v287 = 0u;
                          LOWORD(v283) = v211;
                          WORD1(v283) = v212;
                          WORD2(v283) = v224;
                          WORD3(v283) = v238;
                          DWORD2(v283) = v237;
                          WORD6(v283) = v267;
                          v284 = __PAIR64__(v255, v256);
                          v285 = __PAIR64__(v219, v223);
                          *v286 = v255 / v267;
                          *&v286[4] = v256 / v267;
                          memset(&v286[8], 0, 40);
                          LOWORD(v287) = v222.i16[0] - v241 / 2;
                          WORD1(v287) = v222.i16[2] - v242 / 2;
                          WORD2(v287) = v174 / v267;
                          MPSGetUShortDivisorMagicNumber();
                          *(&v287 + 1) = v175;
                          LOWORD(v288) = (v224 + 1) >> 1;
                          MPSGetUIntDivisorMagicNumber();
                          v176 = 1 << v261;
                          v289 = v177;
                          v290 = 0u;
                          v178 = (v168 + ((v238 + 1) >> 1) * ((v224 + 1) >> 1) - 1) / v168;
                          *&v291 = __PAIR64__(v174, v178);
                          if (v261)
                          {
                            v178 = (v178 + v176 - 1) / v176;
                            MPSGetUIntDivisorMagicNumber();
                            v179 = (v174 + v176 - 1) / v176;
                            v290 = v180;
                            v174 = v179;
                          }

                          else
                          {
                            v179 = 1;
                          }

                          v181 = *MEMORY[0x277CD7400];
                          v182 = *MEMORY[0x277CD73C8];
                          v183 = *&v266[v181] / (*&v266[v182] >> 3);
                          v184 = *MEMORY[0x277CD73D0];
                          v185 = *&v266[v184 + 4];
                          v186 = v185 * v183;
                          v187 = v185 * v183 * *&v266[v184 + 8];
                          v188 = v255 / v267;
                          v189 = v256 / v267;
                          if (v218)
                          {
                            v190 = *&v266[v181] / (*&v266[v182] >> 3);
                            LODWORD(v183) = v186;
                            v186 = 1;
                          }

                          else
                          {
                            v189 = v185 * v183 * v258;
                            LODWORD(v190) = 1;
                          }

                          *&v286[8] = v190;
                          *&v286[16] = v183;
                          *&v286[24] = v186;
                          *&v286[32] = v187;
                          *&v286[40] = v189;
                          v191 = *&v236[v181] / (*&v236[v182] >> 3);
                          v193 = *&v236[v184 + 4];
                          v192 = *&v236[v184 + 8];
                          v194 = v193 * v191;
                          v195 = v193 * v191 * v192;
                          if (v263)
                          {
                            v196 = v191;
                            LODWORD(v191) = v194;
                            v194 = 1;
                          }

                          else
                          {
                            v188 = v193 * v191 * v252;
                            v196 = 1;
                          }

                          *&v286[12] = v196;
                          *&v286[20] = v191;
                          *&v286[28] = v194;
                          *&v286[36] = v195;
                          *&v286[44] = v188;
                          MPSSetNDArraysOnComputeEncoder(a2, v254, 4, 0, 0);
                          [a2 setBuffer:objc_msgSend(v266 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v266, 0, 4, 0, 0) + v209, 29}];
                          [a2 setBuffer:objc_msgSend(v236 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v236, 0, 4, 0, 0) + v208, 27}];
                          [a2 setBuffer:-[MPSTemporaryNDArray buffer](v226 offset:"buffer") atIndex:{0, 28}];
                          if ((atomic_load_explicit(&qword_27DF86C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86C98))
                          {
                            xmmword_27DF86CD8 = 0u;
                            xmmword_27DF86CC8 = 0u;
                            dword_27DF86CE8 = 1065353216;
                            qword_27DF86CF0 = 850045863;
                            xmmword_27DF86CF8 = 0u;
                            unk_27DF86D08 = 0u;
                            xmmword_27DF86D18 = 0u;
                            qword_27DF86D28 = 0;
                            __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86CC8, &dword_2399F7000);
                            __cxa_guard_release(&qword_27DF86C98);
                          }

                          Buffer = MPSBufferCache::getBuffer(&xmmword_27DF86CC8, [objc_msgSend(a3 "commandQueue")], 0x10uLL, 0);
                          v198 = [Buffer contents];
                          *v198 = 0;
                          v198[1] = 0;
                          [a2 setBuffer:Buffer offset:0 atIndex:24];
                          [a2 setBytes:&v283 length:160 atIndex:26];
                          v199 = (v167 * (0x10uLL / (1 << v227))) << 8;
                          if (v199 <= (v166 / v244) << 12)
                          {
                            v199 = (v166 / v244) << 12;
                          }

                          v200 = v199 * ((v207 >> 3) & 6);
                          if (v200 > 0x8000 && MTLReportFailureTypeEnabled())
                          {
                            MTLReportFailure();
                          }

                          [a2 setThreadgroupMemoryLength:v200 atIndex:0];
                          v201 = v176 * v176;
                          if (!v261)
                          {
                            v201 = v174;
                          }

                          v277 = v201;
                          v278 = v178 * v179;
                          v279 = (v206 + (1 << v240) - 1) / (1 << v240);
                          v275.i64[0] = 32;
                          v275.i64[1] = v170;
                          v276 = 1;
                          [a2 dispatchThreadgroups:&v277 threadsPerThreadgroup:&v275];
                          v47 = 0;
                          MPSDecrementReadCount(v226);
                          goto LABEL_514;
                        }
                      }

                      v113 = v224;
                      goto LABEL_390;
                    }

                    v103 = 1;
                  }

                  else if (v263 == 1)
                  {
                    if ((v106.i8[6] & 1) != 0 && v105 == 1 && v102 == 2 && !v103)
                    {
                      v107 = 0;
                      goto LABEL_384;
                    }
                  }

                  else if (!v263 && (v106.i8[6] & 1) != 0 && !v105 && v102 == 1 && v103 == 2)
                  {
                    v107 = 1;
                    goto LABEL_384;
                  }
                }

                v101.i16[0] = v102;
                v101.i16[1] = v103;
                v101.i16[2] = v105;
                v101.i16[3] = v104;
                if (vmovn_s16(v101).u32[0] != 50462976)
                {
                  v108 = [objc_msgSend(v266 "descriptor")];
                  v109 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v266[*MEMORY[0x277CD73C8]] shape:v108];
                  v110 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v109];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v266 setReadCount:{objc_msgSend(v266, "readCount") + 1}];
                  }

                  *&v283 = v266;
                  [v239 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v283 kernelDAGObject:{1), 0, v110, 0}];
                  v266 = v110;
                }

                goto LABEL_383;
            }
          }

          v80 = 18;
          goto LABEL_322;
      }
    }

    v78 = 589824;
    goto LABEL_277;
  }

  if (v243 != -1)
  {
    v245 = 0;
    v46 = v243;
    goto LABEL_65;
  }

LABEL_55:
  v37 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(a1, v239, a3, a2, v37, &v280, -1, 0);
  if (v37)
  {
    v245 = 1;
    v46 = v243;
    goto LABEL_65;
  }

  v47 = (*(*a1 + 112))(a1, a2, a3, a4);
LABEL_514:
  if (v280)
  {
    v281 = v280;
    operator delete(v280);
  }

  v202 = *MEMORY[0x277D85DE8];
  return v47;
}

void sub_239AF7D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, void *a42)
{
  __cxa_guard_abort(&qword_27DF86C90);
  operator delete(__p);
  if (a42)
  {
    operator delete(a42);
    v43 = STACK[0x2C8];
    if (STACK[0x2C8])
    {
LABEL_6:
      STACK[0x2D0] = v43;
      operator delete(v43);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v43 = STACK[0x2C8];
    if (STACK[0x2C8])
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolutionWinogradA18FunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = a2[8];
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:&v9 type:33 atIndex:115];
  AddFunctionConstantList(v5, a3);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

void sub_239AF9180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  MPSNDArrayConvolutionDeviceBehaviorA16::~MPSNDArrayConvolutionDeviceBehaviorA16(v37);
  MEMORY[0x23EE7C8C0]();
  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::EncodeNDArrayConvolution(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *(a4 + 136);
  if ((*(a4 + 120) & 1) == 0 && *(v8 + 304) == 4)
  {
    MPSKernel_LogInfo(v8, 1uLL, "A18 Autotuning: Using MXU direct conv\n");
    goto LABEL_10;
  }

  if ((*(*a1 + 104))(a1, a4))
  {
    MPSKernel_LogInfo(v8, 1uLL, "Using MXU Winograd\n");
    v9 = *(*a1 + 120);
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a4;

    return v9(v10, v11, v12, v13);
  }

  if ((*(*a1 + 96))(a1, a4))
  {
    MPSKernel_LogInfo(v8, 1uLL, "Using MXU direct conv\n");
LABEL_10:
    v9 = *(*a1 + 112);
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a4;

    return v9(v10, v11, v12, v13);
  }

  if (MPSNDArrayConvolutionDeviceBehaviorA14::IsWinogradSupported(a1, a4))
  {
    MPSKernel_LogInfo(v8, 1uLL, "Using TEC Winograd\n");

    return MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionWinograd(a1, a2, a3, a4);
  }

  else
  {
    MPSKernel_LogInfo(v8, 1uLL, "Using TEC direct conv\n");

    return MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolution(a1, a2, a3, a4);
  }
}

int64x2_t MPSNDArrayConvolutionDeviceBehaviorA18::GetKernelParameters@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int32x4_t *a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  if (a4)
  {
    if (ParseAutoTuningKernelParameters(a4, a3->i64, a6))
    {
      return result;
    }
  }

  else if (ParseAutoTuningKernelParameters(*(a1 + 152), a3->i64, a6))
  {
    return result;
  }

  v11 = a3[5].u64[1];
  *v77 = v11;
  v12 = a3[2];
  result = *a3;
  *&v77[4] = vuzp1q_s32(v12, *a3);
  v13 = a3[4].i64[0];
  *&v77[20] = a3[3].i64[1];
  v78 = a3[8].u32[0];
  if (*v77 ^ 0x1C000000010 | (*&v77[4] >> 32) ^ 0x1100000180 | *&v77[16] ^ 0x300000011 | __PAIR64__(a5, v13) ^ 0x1000001000000003 | v78)
  {
    if (*v77 ^ 0x1C000000010 | *&v77[8] ^ 0x1100000180 | *&v77[16] ^ 0x300000011 | __PAIR64__(a5, v13) ^ 0x1000002000000003 | v78)
    {
      if (*v77 ^ 0x1C000000010 | *&v77[8] ^ 0x1100000180 | *&v77[16] ^ 0x300000011 | __PAIR64__(a5, v13) ^ 0x1200000800000003 | v78)
      {
        if (*v77 ^ 0x40000000040 | *&v77[8] ^ 0x700000800 | *&v77[16] ^ 0x100000007 | __PAIR64__(a5, v13) ^ 0x1000001000000001 | v78)
        {
          if (*v77 ^ 0x40000000040 | *&v77[8] ^ 0x700000800 | *&v77[16] ^ 0x100000007 | __PAIR64__(a5, v13) ^ 0x1000002000000001 | v78)
          {
            if (*v77 ^ 0x40000000040 | *&v77[8] ^ 0x700000800 | *&v77[16] ^ 0x100000007 | __PAIR64__(a5, v13) ^ 0x1200000800000001 | v78)
            {
              if (*v77 == 0x1C000000010 && *&v77[8] == 0x1100000180 && *&v77[16] == 0x300000011 && __PAIR64__(a5, v13) == 0x1000001000000003 && v78 == 1)
              {
                v39 = &unk_239B89680;
              }

              else if (*v77 == 0x1C000000010 && *&v77[8] == 0x1100000180 && *&v77[16] == 0x300000011 && __PAIR64__(a5, v13) == 0x1000002000000003 && v78 == 1)
              {
                v39 = &unk_239B896A8;
              }

              else if (*v77 == 0x1C000000010 && *&v77[8] == 0x1100000180 && *&v77[16] == 0x300000011 && __PAIR64__(a5, v13) == 0x1200000800000003 && v78 == 1)
              {
                v39 = &unk_239B896D0;
              }

              else if (*v77 == 0x40000000040 && *&v77[8] == 0x700000800 && *&v77[16] == 0x100000007 && __PAIR64__(a5, v13) == 0x1000001000000001 && v78 == 1)
              {
                v39 = &unk_239B896F8;
              }

              else if (*v77 == 0x40000000040 && *&v77[8] == 0x700000800 && *&v77[16] == 0x100000007 && __PAIR64__(a5, v13) == 0x1000002000000001 && v78 == 1)
              {
                v39 = &unk_239B89720;
              }

              else
              {
                if (*v77 != 0x40000000040 || *&v77[8] != 0x700000800 || *&v77[16] != 0x100000007 || __PAIR64__(a5, v13) != 0x1200000800000001 || v78 != 1)
                {
                  if (v12.i64[0] > 1uLL)
                  {
                    v38 = 64 - __clz(v12.i64[0] - 1);
                  }

                  else
                  {
                    v38 = (v12.i64[0] == 0) << 63;
                  }

                  v51 = v12.i64[1] - 1;
                  if (v12.i64[1] > 1uLL)
                  {
                    v52 = 64 - __clz(v51);
                  }

                  else
                  {
                    v52 = (v12.i64[1] == 0) << 63;
                  }

                  v53 = 6;
                  if (v38 < v52)
                  {
                    v54 = 6;
                  }

                  else
                  {
                    v54 = 7;
                  }

                  if (v54 >= v38)
                  {
                    v54 = v38;
                  }

                  if (v54 != 7)
                  {
                    v53 = 7;
                  }

                  if (v53 >= v52)
                  {
                    v55 = v52;
                  }

                  else
                  {
                    v55 = v53;
                  }

                  if (v54 <= 4)
                  {
                    v56 = 4;
                  }

                  else
                  {
                    v56 = v54;
                  }

                  if (v55 <= 4)
                  {
                    v57 = 4;
                  }

                  else
                  {
                    v57 = v55;
                  }

                  v58 = v13 * a3[3].i64[1] * ((v12.i64[0] + (1 << v56) - 1) >> v56) * ((v51 + (1 << v57)) >> v57);
                  v59 = *(*(a2 + *MEMORY[0x277CD7350]) + 1480);
                  v60 = result.i64[1] * result.i64[0];
                  if (v78)
                  {
                    if (v11 < 0x10)
                    {
                      if (v60 > 1)
                      {
                        v61 = 64 - __clz(v60 - 1);
                      }

                      else
                      {
                        v61 = (v60 == 0) << 63;
                      }

                      if (v61 >= 5)
                      {
                        v61 = 5;
                      }

                      v67 = 4;
                      if (v61 > 4)
                      {
                        v67 = v61;
                      }

                      v72 = v11 - 1;
                      if (v11 > 1)
                      {
                        v73 = 64 - __clz(v72);
                      }

                      else
                      {
                        LODWORD(v73) = 0;
                      }

                      v74 = 1 << v73;
                      v75 = 4 * v59;
                      if (v58 < v75 && v73)
                      {
                        do
                        {
                          v76 = v74;
                          v74 >>= 1;
                        }

                        while (v76 >= 4 && (v72 + v74) / v74 * v58 < v75);
                      }

                      v64 = 0;
                      if (v74 < v11)
                      {
                        v11 = v74;
                      }

                      v63 = 1;
                    }

                    else
                    {
                      v61 = 64 - __clz(v11 - 1);
                      if (v61 >= 5)
                      {
                        v61 = 5;
                      }

                      v62 = 4 * v59;
                      v63 = 1;
                      v64 = 1;
                      if (v58 < 4 * v59 && v60 >= 2)
                      {
                        v65 = v60 - 1;
                        do
                        {
                          v66 = v60;
                          v60 >>= 1;
                          v63 = (v65 + v60) / v60;
                        }

                        while (v66 >= 4 && v63 * v58 < v62);
                      }

                      v67 = v61;
                    }
                  }

                  else
                  {
                    v68 = v60 * v11;
                    v69 = v68 - 1;
                    if (v68 > 1)
                    {
                      v61 = 64 - __clz(v69);
                    }

                    else
                    {
                      v61 = (v68 == 0) << 63;
                    }

                    v11 = 0;
                    v64 = 0;
                    if (v61 >= 5)
                    {
                      v61 = 5;
                    }

                    v67 = 4;
                    if (v61 > 4)
                    {
                      v67 = v61;
                    }

                    v63 = (v69 + (1 << v67)) >> v67;
                    v70 = 4 * v59;
                    if (((v63 << v67) + v69) / (v63 << v67) * v58 < v70 && v63 >= 2)
                    {
                      do
                      {
                        v71 = v63;
                        v63 >>= 1;
                      }

                      while (v71 >= 4 && ((v63 << (v67 & 0x7F)) + v69) / (v63 << (v67 & 0x7F)) * v58 < v70);
                      v64 = 0;
                      v11 = 0;
                    }
                  }

                  *a6 = v56;
                  *(a6 + 8) = v57;
                  *(a6 + 16) = v67;
                  *(a6 + 24) = v61 > 4;
                  *(a6 + 32) = v52 > 4;
                  *(a6 + 40) = v38 > 4;
                  result = vdupq_n_s64(1uLL);
                  *(a6 + 48) = result;
                  *(a6 + 64) = v11;
                  *(a6 + 72) = v63;
                  *(a6 + 80) = 0;
                  *(a6 + 81) = v78 != 1;
                  *(a6 + 82) = v78 != 1;
                  *(a6 + 83) = 0;
                  *(a6 + 87) = 0;
                  *(a6 + 88) = v60;
                  *(a6 + 96) = v64;
                  return result;
                }

                v39 = &unk_239B89748;
              }
            }

            else
            {
              v39 = &unk_239B89658;
            }
          }

          else
          {
            v39 = &unk_239B89630;
          }
        }

        else
        {
          v39 = &unk_239B89608;
        }
      }

      else
      {
        v39 = &unk_239B895E0;
      }
    }

    else
    {
      v39 = &unk_239B895B8;
    }
  }

  else
  {
    v39 = &a18KernelParams;
  }

  v40 = v39[9];
  v41 = (v40 >> 15) & 0x3F;
  v42 = (v40 >> 21) & 0x3F;
  v43 = vdup_n_s32(v40);
  *a6 = v40 & 7;
  *(a6 + 8) = (v40 >> 3) & 7;
  v44 = vand_s8(vshl_u32(v43, 0xFFFFFFF7FFFFFFFALL), 0x300000007);
  v45 = vand_s8(vshl_u32(v43, 0xFFFFFFF5FFFFFFF3), 0x300000003);
  *&v46 = v44.u32[0];
  *(&v46 + 1) = v44.u32[1];
  v47 = v46;
  *&v46 = v45.u32[0];
  *(&v46 + 1) = v45.u32[1];
  *(a6 + 16) = v47;
  *(a6 + 32) = v46;
  *(a6 + 48) = vdupq_n_s64(1uLL);
  *(a6 + 80) = 0;
  *(a6 + 81) = (v40 & 0x8000000) != 0;
  *(a6 + 82) = (v40 & 0x10000000) != 0;
  *(a6 + 83) = 0;
  *(a6 + 85) = 0;
  *(a6 + 86) = (v40 & 0x20000000) != 0;
  *(a6 + 87) = (v40 & 0x40000000) != 0;
  *(a6 + 96) = 0;
  if (v78)
  {
    v48 = result.i64[1] * result.i64[0];
    if (v41)
    {
      v11 = (v11 + v41 - 1) / v41;
    }

    else
    {
      *(a6 + 96) = 1;
      v48 = (v48 + v42 - 1) / v42;
    }

    *(a6 + 88) = v48;
    *(a6 + 64) = v11;
    *(a6 + 72) = 1;
  }

  else
  {
    v49 = (v11 + v41 - 1) / v41;
    if ((v40 & 0x1F8000) != 0)
    {
      v11 = 1;
    }

    v50 = result.i64[1] * result.i64[0] * v11;
    *(a6 + 64) = v49;
    *(a6 + 72) = ((v42 << v44.i8[0]) + v50 - 1) / (v42 << v44.i8[0]);
    *(a6 + 88) = v50;
  }

  return result;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::IsConvolutionGradientWithWeightsSupported(int a1, MPSKernel *a2, uint64_t a3)
{
  labelHash = a2[2]._labelHash;
  if (labelHash)
  {
    if (labelHash != 1)
    {
      MPSKernel_LogInfo(a2, 2uLL, "Only NCHW and NHWC data formats supported. Falling back to generic implementation\n");
      return 0;
    }

    if (HIDWORD(a2[2]._labelHash))
    {
      MPSKernel_LogInfo(a2, 2uLL, "NHWC data supported only with HWIO weights format. Falling back to generic implementation\n");
      return 0;
    }
  }

  else if ((*(&a2->super.isa + *MEMORY[0x277CD7350]))[368] > 25)
  {
    MPSKernel_LogInfo(a2, 2uLL, "NCHW + OIHW not optimized for AMD. Falling back to generic implementation\n");
    return 0;
  }

  v6 = [*(a3 + 232) inputTensorAtIndex:0];
  v7 = [*(a3 + 232) inputTensorAtIndex:2];
  LODWORD(v6) = (*(**(v6 + 32) + 24))(*(v6 + 32));
  v8 = (*(**(v7 + 32) + 24))(*(v7 + 32));
  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    MPSKernel_LogInfo(a2, 2uLL, "Linking not supported by G13 gradient with weights kernels. Falling back to generic implementation\n");
    return 0;
  }

  v10 = [*(a3 + 232) graph];
  v11 = *(v10 + 64);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 == v13)
  {
    goto LABEL_20;
  }

  v14 = v10;
  v15 = -1;
  do
  {
    v16 = *v12;
    if (v16 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
    {
      v15 = *(*v12 + 76);
    }

    MPSKernelDAG::GetCoreOpInputAtIndex(v14);
    ++v12;
  }

  while (v12 != v13);
  if (v15 == -1)
  {
LABEL_20:
    v15 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v15 = 0;
    }
  }

  v17 = [*(a3 + 16) objectAtIndexedSubscript:v15];
  v18 = *MEMORY[0x277CD73D8];
  v19 = *(v17 + v18);
  v23 = v19 <= 3u && BYTE1(v19) <= 3u && BYTE2(*(v17 + v18)) <= 3u && BYTE3(*(v17 + v18)) <= 3u && v19 == 50462976;
  if (!v23 || ((v24 = *(a3 + 112), v25 = *(v24 + v18), v25 <= 3u) ? (v26 = BYTE1(v25) > 3u) : (v26 = 1), !v26 ? (v27 = BYTE2(*(v24 + v18)) > 3u) : (v27 = 1), !v27 ? (v28 = BYTE3(*(v24 + v18)) > 3u) : (v28 = 1), !v28 ? (v29 = v25 == 50462976) : (v29 = 0), !v29))
  {
    MPSKernel_LogInfo(a2, 2uLL, "Either source, gradient or destination is transposed. Falling back to generic implementation\n");
    return 0;
  }

  v30 = *MEMORY[0x277CD73D0];
  v31 = *MEMORY[0x277CD7410];
  if ((vminv_u16(vmovn_s32(vceqq_s32(*(v17 + v30), *(v17 + v31)))) & 1) == 0)
  {
    MPSKernel_LogInfo(a2, 2uLL, "Slicing on source not supported. Falling back to generic implementation\n");
    return 0;
  }

  if ((vminv_u16(vmovn_s32(vceqq_s32(*(v24 + v30), *(v24 + v31)))) & 1) == 0)
  {
    MPSKernel_LogInfo(a2, 2uLL, "Slicing on gradient or gradient not supported. Falling back to generic implementation\n");
    return 0;
  }

  return 1;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::EncodeNDArrayConvolutionGradientWithWeights(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if ((*(*a1 + 72))(a1, a2, a5))
  {
    v272 = a4;
    v300 = a2;
    v10 = [*(a5 + 232) inputTensorAtIndex:0];
    v278 = [*(a5 + 232) inputTensorAtIndex:1];
    v11 = [*(a5 + 232) inputTensorAtIndex:2];
    v303 = a5;
    v292 = [*(a5 + 232) outputTensorAtIndex:0];
    v12 = *(v10 + 8);
    v13 = 268435472;
    if (v12 == 268435472 || (v13 = -1879048176, v12 == -1879048176)) && *(v11 + 8) == v13 || (MPSForceMatrixUnit())
    {
      v241 = [*(a5 + 16) count];
      v15 = *(v300 + 232);
      v277 = v15;
      v304 = *(v300 + 224);
      v291 = *(v300 + 228);
      v297 = *(v300 + 144);
      v307 = *(v300 + 152);
      v285 = *(v300 + 200);
      v284 = *(v300 + 208);
      v16 = *(v300 + 160);
      v298 = *(v300 + 168);
      v17 = *(v300 + 192);
      v283 = *(v300 + 176);
      v282 = *(v300 + 184);
      if (*v10 != 4 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*v11 != 4 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*v292 != 4 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v18 = *(v10 + 16);
      v20 = *v18;
      v19 = v18[1];
      if (v19 != v20)
      {
        if (((v19 - v20) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v22 = *(v292 + 16);
      v24 = *v22;
      v23 = v22[1];
      if (v23 != v24)
      {
        if (((v23 - v24) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v25 = *(v11 + 16);
      v27 = *v25;
      v26 = v25[1];
      if (v26 != v27)
      {
        if (((v26 - v27) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      v15.i32[0] = GetAxisIndexForDataFormat(MPSNDArrayConvolution2DDataFormat)::axis[v304];
      v28 = vmovl_u8(*v15.i8).u64[0];
      v14.i32[0] = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution2DWeightsFormat)::axis[v291];
      v29 = vmovl_u8(v14).u64[0];
      v30 = (8 * v28);
      v275 = *v30;
      v280 = *(8 * WORD2(v28));
      v290 = *(8 * HIWORD(v28));
      v296 = *v30;
      v286 = *(8 * WORD1(v28));
      v288 = *(8 * v29);
      v294 = *(8 * WORD1(v29));
      v31 = *(8 * WORD2(v29));
      v32 = *(8 * HIWORD(v29));
      if (v286 != v16 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v286 != v298 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v275 != v296 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v286 != v288 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v286 / v17 != v294 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v31 != v307 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v32 != v297 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v288 != v298 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v281 = v16 / v17;
      if (v294 != v16 / v17 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*(v10 + 8) != *(v11 + 8) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if ((*(v11 + 8) & 0x1000FFFF) == 0x10000008 && (*(*(v300 + *MEMORY[0x277CD7350]) + 1478) & 4) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v239 = a3;
      v33 = [*(v303 + 232) graph];
      v34 = *(v33 + 8);
      v35 = *v34;
      v36 = v34[1];
      if (*v34 == v36)
      {
        goto LABEL_554;
      }

      v301 = v9;
      v37 = v11;
      v38 = v31;
      v31 = v17;
      v39 = -1;
      do
      {
        v40 = *v35;
        if (v40 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v33) + 32))
        {
          v39 = *(*v35 + 76);
        }

        MPSKernelDAG::GetCoreOpInputAtIndex(v33);
        ++v35;
      }

      while (v35 != v36);
      v17 = v31;
      LODWORD(v31) = v38;
      v11 = v37;
      v9 = v301;
      if (v39 == -1)
      {
LABEL_554:
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v39 = 0;
      }

      v41 = [*(v303 + 16) objectAtIndexedSubscript:v39];
      v302 = *(v303 + 112);
      v207 = *(*(v303 + 8) + 80 * v39 + 64);
      v208 = *(v303 + 96);
      v42 = *(v303 + 208);
      v206 = *(v303 + 192);
      v43 = MEMORY[0x277CD7410];
      v299 = v41;
      v44 = (v41 + *MEMORY[0x277CD7410]);
      if (v304 == 1)
      {
        if (*v44 != v286 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v299[*v43 + 4] != v290 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v299[*v43 + 8] != v280 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v299[*v43 + 12] != v275 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v302[*v43] != v286 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v302[*v43 + 4] != v290 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v302[*v43 + 8] != v280 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v302[*v43 + 12] != v296 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v42[*v43] != v288 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v42[*v43 + 4] != v294 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v42[*v43 + 8] != v32 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v42[*v43 + 12] != v31 && (MTLReportFailureTypeEnabled() & 1) != 0)
        {
LABEL_548:
          MTLReportFailure();
        }
      }

      else
      {
        if (v44[2] != v286 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v299[*v43] != v290 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v299[*v43 + 4] != v280 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v299[*v43 + 12] != v275 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v302[*v43 + 8] != v286 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v302[*v43] != v290 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v302[*v43 + 4] != v280 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (*&v302[*v43 + 12] != v296 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v45 = &v42[*v43];
        if (v291 == 1)
        {
          if (*(v45 + 3) != v288 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (*&v42[*v43 + 8] != v294 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (*&v42[*v43] != v32 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (*&v42[*v43 + 4] != v31 && (MTLReportFailureTypeEnabled() & 1) != 0)
          {
            goto LABEL_548;
          }
        }

        else
        {
          if (*v45 != v288 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (*&v42[*v43 + 4] != v294 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (*&v42[*v43 + 8] != v32 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (*&v42[*v43 + 12] != v31 && MTLReportFailureTypeEnabled())
          {
            goto LABEL_548;
          }
        }
      }

      v46 = *(v10 + 8);
      if (v46 > 285212703)
      {
        if (v46 <= 536870915)
        {
          if (v46 > 301989895)
          {
            if (v46 == 301989896)
            {
              v47 = 512;
              goto LABEL_123;
            }

            if (v46 == 335544328)
            {
              v47 = 544;
              goto LABEL_123;
            }
          }

          else
          {
            if (v46 == 285212704)
            {
              v47 = 416;
              goto LABEL_123;
            }

            if (v46 == 285212736)
            {
              v47 = 448;
              goto LABEL_123;
            }
          }
        }

        else if (v46 <= 536870927)
        {
          if (v46 == 536870916)
          {
            v237 = 0;
            goto LABEL_124;
          }

          if (v46 == 536870920)
          {
            v47 = 32;
            goto LABEL_123;
          }
        }

        else
        {
          switch(v46)
          {
            case 536870928:
              v47 = 64;
              goto LABEL_123;
            case 536870944:
              v47 = 96;
              goto LABEL_123;
            case 536870976:
              v47 = 128;
              goto LABEL_123;
          }
        }
      }

      else if (v46 <= 31)
      {
        if (v46 > 7)
        {
          if (v46 == 8)
          {
            v47 = 192;
            goto LABEL_123;
          }

          if (v46 == 16)
          {
            v47 = 224;
            goto LABEL_123;
          }
        }

        else
        {
          if (v46 == -1879048176)
          {
            v47 = 384;
            goto LABEL_123;
          }

          if (v46 == 4)
          {
            v47 = 160;
            goto LABEL_123;
          }
        }
      }

      else if (v46 <= 268435463)
      {
        if (v46 == 32)
        {
          v47 = 256;
          goto LABEL_123;
        }

        if (v46 == 64)
        {
          v47 = 288;
          goto LABEL_123;
        }
      }

      else
      {
        switch(v46)
        {
          case 268435464:
            v47 = 480;
            goto LABEL_123;
          case 268435472:
            v47 = 320;
            goto LABEL_123;
          case 268435488:
            v47 = 352;
LABEL_123:
            v237 = v47;
LABEL_124:
            v48 = *(v278 + 8);
            if (v48 > 285212703)
            {
              if (v48 <= 536870915)
              {
                if (v48 > 301989895)
                {
                  if (v48 == 301989896)
                  {
                    v49 = 0x4000;
                    goto LABEL_168;
                  }

                  if (v48 == 335544328)
                  {
                    v49 = 17408;
                    goto LABEL_168;
                  }
                }

                else
                {
                  if (v48 == 285212704)
                  {
                    v49 = 13312;
                    goto LABEL_168;
                  }

                  if (v48 == 285212736)
                  {
                    v49 = 14336;
                    goto LABEL_168;
                  }
                }
              }

              else if (v48 <= 536870927)
              {
                if (v48 == 536870916)
                {
                  v235 = 0;
                  goto LABEL_169;
                }

                if (v48 == 536870920)
                {
                  v49 = 1024;
                  goto LABEL_168;
                }
              }

              else
              {
                switch(v48)
                {
                  case 536870928:
                    v49 = 2048;
                    goto LABEL_168;
                  case 536870944:
                    v49 = 3072;
                    goto LABEL_168;
                  case 536870976:
                    v49 = 4096;
                    goto LABEL_168;
                }
              }
            }

            else if (v48 <= 31)
            {
              if (v48 > 7)
              {
                if (v48 == 8)
                {
                  v49 = 6144;
                  goto LABEL_168;
                }

                if (v48 == 16)
                {
                  v49 = 7168;
                  goto LABEL_168;
                }
              }

              else
              {
                if (v48 == -1879048176)
                {
                  v49 = 12288;
                  goto LABEL_168;
                }

                if (v48 == 4)
                {
                  v49 = 5120;
                  goto LABEL_168;
                }
              }
            }

            else if (v48 <= 268435463)
            {
              if (v48 == 32)
              {
                v49 = 0x2000;
                goto LABEL_168;
              }

              if (v48 == 64)
              {
                v49 = 9216;
                goto LABEL_168;
              }
            }

            else
            {
              switch(v48)
              {
                case 268435464:
                  v49 = 15360;
                  goto LABEL_168;
                case 268435472:
                  v49 = 10240;
                  goto LABEL_168;
                case 268435488:
                  v49 = 11264;
LABEL_168:
                  v235 = v49;
LABEL_169:
                  v50 = *(v11 + 8);
                  v295 = v298 / v17;
                  if (v50 > 285212703)
                  {
                    if (v50 <= 536870915)
                    {
                      if (v50 > 301989895)
                      {
                        if (v50 == 301989896)
                        {
                          v51 = 0x80000;
                          goto LABEL_213;
                        }

                        if (v50 == 335544328)
                        {
                          v51 = 557056;
                          goto LABEL_213;
                        }
                      }

                      else
                      {
                        if (v50 == 285212704)
                        {
                          v51 = 425984;
                          goto LABEL_213;
                        }

                        if (v50 == 285212736)
                        {
                          v51 = 458752;
                          goto LABEL_213;
                        }
                      }
                    }

                    else if (v50 <= 536870927)
                    {
                      if (v50 == 536870916)
                      {
                        v233 = 0;
                        goto LABEL_214;
                      }

                      if (v50 == 536870920)
                      {
                        v51 = 0x8000;
                        goto LABEL_213;
                      }
                    }

                    else
                    {
                      switch(v50)
                      {
                        case 536870928:
                          v51 = 0x10000;
                          goto LABEL_213;
                        case 536870944:
                          v51 = 98304;
                          goto LABEL_213;
                        case 536870976:
                          v51 = 0x20000;
                          goto LABEL_213;
                      }
                    }
                  }

                  else if (v50 <= 31)
                  {
                    if (v50 > 7)
                    {
                      if (v50 == 8)
                      {
                        v51 = 196608;
                        goto LABEL_213;
                      }

                      if (v50 == 16)
                      {
                        v51 = 229376;
                        goto LABEL_213;
                      }
                    }

                    else
                    {
                      if (v50 == -1879048176)
                      {
                        v51 = 393216;
                        goto LABEL_213;
                      }

                      if (v50 == 4)
                      {
                        v51 = 163840;
                        goto LABEL_213;
                      }
                    }
                  }

                  else if (v50 <= 268435463)
                  {
                    if (v50 == 32)
                    {
                      v51 = 0x40000;
                      goto LABEL_213;
                    }

                    if (v50 == 64)
                    {
                      v51 = 294912;
                      goto LABEL_213;
                    }
                  }

                  else
                  {
                    switch(v50)
                    {
                      case 268435464:
                        v51 = 491520;
                        goto LABEL_213;
                      case 268435472:
                        v51 = 327680;
                        goto LABEL_213;
                      case 268435488:
                        v51 = 360448;
LABEL_213:
                        v233 = v51;
LABEL_214:
                        v52 = *(v292 + 8);
                        if (v52 > 285212703)
                        {
                          if (v52 <= 536870915)
                          {
                            if (v52 > 301989895)
                            {
                              if (v52 == 301989896)
                              {
                                v53 = 16;
                                goto LABEL_258;
                              }

                              if (v52 == 335544328)
                              {
                                v53 = 17;
                                goto LABEL_258;
                              }
                            }

                            else
                            {
                              if (v52 == 285212704)
                              {
                                v53 = 13;
                                goto LABEL_258;
                              }

                              if (v52 == 285212736)
                              {
                                v53 = 14;
                                goto LABEL_258;
                              }
                            }
                          }

                          else if (v52 <= 536870927)
                          {
                            if (v52 == 536870916)
                            {
                              v231 = 0;
                              goto LABEL_259;
                            }

                            if (v52 == 536870920)
                            {
                              v53 = 1;
                              goto LABEL_258;
                            }
                          }

                          else
                          {
                            switch(v52)
                            {
                              case 536870928:
                                v53 = 2;
                                goto LABEL_258;
                              case 536870944:
                                v53 = 3;
                                goto LABEL_258;
                              case 536870976:
                                v53 = 4;
                                goto LABEL_258;
                            }
                          }
                        }

                        else if (v52 <= 31)
                        {
                          if (v52 > 7)
                          {
                            if (v52 == 8)
                            {
                              v53 = 6;
                              goto LABEL_258;
                            }

                            if (v52 == 16)
                            {
                              v53 = 7;
                              goto LABEL_258;
                            }
                          }

                          else
                          {
                            if (v52 == -1879048176)
                            {
                              v53 = 12;
                              goto LABEL_258;
                            }

                            if (v52 == 4)
                            {
                              v53 = 5;
                              goto LABEL_258;
                            }
                          }
                        }

                        else if (v52 <= 268435463)
                        {
                          if (v52 == 32)
                          {
                            v53 = 8;
                            goto LABEL_258;
                          }

                          if (v52 == 64)
                          {
                            v53 = 9;
                            goto LABEL_258;
                          }
                        }

                        else
                        {
                          switch(v52)
                          {
                            case 268435464:
                              v53 = 15;
                              goto LABEL_258;
                            case 268435472:
                              v53 = 10;
                              goto LABEL_258;
                            case 268435488:
                              v53 = 11;
LABEL_258:
                              v231 = v53;
LABEL_259:
                              v54 = 0;
                              v397[0] = v290;
                              v397[1] = v280;
                              v397[2] = v290;
                              v397[3] = v280;
                              v397[4] = v281;
                              v397[5] = v298 / v17;
                              v397[6] = v17;
                              v397[7] = v297;
                              v397[8] = v307;
                              v397[9] = v285;
                              v397[10] = v284;
                              v397[11] = v296;
                              v397[12] = v283;
                              v397[13] = v282;
                              v398 = v277;
                              v399 = v304;
                              v400 = v291;
                              v396 = 0;
                              v395 = 0u;
                              v394 = 0u;
                              v393 = 0u;
                              v392 = 0u;
                              v391 = 0u;
                              v390 = 0u;
                              if (*(v300 + 272) == 1)
                              {
                                v54 = *(v300 + 264);
                              }

                              (*(*v9 + 136))(&v390, v9, v300, v397, v54, *(v10 + 8), *(v278 + 8), *(v11 + 8));
                              v276 = v17;
                              v262 = v390;
                              v229 = BYTE8(v390);
                              v55 = 1 << SBYTE8(v390);
                              v260 = v391;
                              v56 = DWORD2(v391);
                              v265 = v392;
                              v263 = BYTE8(v392);
                              v254 = v396;
                              if ((v55 & 0xF) != 0 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v57 = 1 << v262;
                              if (((1 << v262) & 0xFLL) != 0 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v279 = 1 << v260;
                              if ((v279 & 0xF) != 0 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v274 = 1 << v265;
                              if (v55 < 16 * v274 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v273 = 1 << v263;
                              if (v57 < 16 * v273 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              if ((v279 & 0xF) != 0 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v58 = 1 << v56;
                              v59 = v279 / v58;
                              v253 = v58;
                              if (v279 % v58 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              if ((v59 & 0xF) != 0 && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v60 = v57 >> 4;
                              v215 = v273 * v274;
                              if (v215 > (v55 >> 4) * (v57 >> 4) && MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

                              v271 = 1 << v262;
                              v61 = *MEMORY[0x277CD7400];
                              v62 = *MEMORY[0x277CD73C8];
                              v63 = *&v299[v61] / (*&v299[v62] >> 3);
                              v64 = *&v302[v61] / (*&v302[v62] >> 3);
                              if (v304 == 1)
                              {
                                v65 = v286;
                              }

                              else
                              {
                                v65 = v290;
                              }

                              if (v304 == 1)
                              {
                                v66 = v286;
                              }

                              else
                              {
                                v66 = v290;
                              }

                              if (v304 == 1)
                              {
                                v67 = v290;
                              }

                              else
                              {
                                v67 = *&v302[v61] / (*&v302[v62] >> 3);
                              }

                              v211 = v67;
                              if (v304 == 1)
                              {
                                v68 = v290;
                              }

                              else
                              {
                                v68 = *&v299[v61] / (*&v299[v62] >> 3);
                              }

                              v210 = v68;
                              if (v304 == 1)
                              {
                                v69 = *&v302[v61] / (*&v302[v62] >> 3);
                              }

                              else
                              {
                                v69 = v286;
                              }

                              v212 = v69;
                              if (v304 == 1)
                              {
                                v70 = *&v299[v61] / (*&v299[v62] >> 3);
                              }

                              else
                              {
                                v70 = v286;
                              }

                              v213 = v70;
                              v71 = *&v42[v61];
                              v72 = *&v42[v62] >> 3;
                              v73 = v71 / v72;
                              if (v291)
                              {
                                v74 = v71 / v72;
                              }

                              else
                              {
                                LODWORD(v74) = v297;
                              }

                              if (v291)
                              {
                                v75 = v288;
                              }

                              else
                              {
                                v75 = v73;
                              }

                              v249 = v75;
                              v250 = v74;
                              v76 = *&v277 == 0;
                              v77 = v283 == 1 && v282 == 1;
                              v78 = v77;
                              v245 = v78;
                              if (!v77)
                              {
                                v76 = 0;
                              }

                              v79 = v285 == 1 && v284 == 1;
                              v80 = v79;
                              if (!v79)
                              {
                                v76 = 0;
                              }

                              v81 = v297 == 1 && v307 == 1;
                              v82 = v81;
                              v251 = v82;
                              if (!v81)
                              {
                                v76 = 0;
                              }

                              v247 = v76;
                              v287 = v55;
                              if (v304)
                              {
                                v267 = BYTE7(v395);
                              }

                              else if (BYTE7(v395) && (*(*(v300 + *MEMORY[0x277CD7350]) + 1478) & v245 & 1) != 0)
                              {
                                v267 = 1;
                              }

                              else
                              {
                                v267 = 0;
                                v84 = v66 == v64 && v65 == v63;
                                v247 = v76 && v84;
                              }

                              v266 = v394;
                              v252 = *(&v395 + 1);
                              v85 = *(v11 + 8);
                              v257 = v56;
                              if (v85 == 268435472)
                              {
                                v86 = v394;
                              }

                              else
                              {
                                if (v85 <= 268435487)
                                {
                                  v86 = v394;
                                  if (v85 == -1879048176 || v85 == 268435464)
                                  {
                                    goto LABEL_344;
                                  }
                                }

                                else
                                {
                                  v86 = v394;
                                  if (v85 == 268435488 || v85 == 335544328 || v85 == 301989896)
                                  {
                                    goto LABEL_344;
                                  }
                                }

                                if (MTLReportFailureTypeEnabled())
                                {
                                  MTLReportFailure();
                                }
                              }

LABEL_344:
                              if (v80)
                              {
                                v88 = 2;
                              }

                              else
                              {
                                v88 = 0;
                              }

                              v217 = v291 == 1;
                              v289 = (v290 * v280);
                              v255 = (v289 * v296);
                              v221 = v88;
                              if (v304 == 1)
                              {
                                v90 = v253 * v279;
                                if (v254)
                                {
                                  v223 = v296 % v90;
                                  v258 = 1;
                                  v209 = v252;
                                  v91 = (v289 + v252 - 1) / v252;
                                  v270 = v42;
                                  v203 = v60;
                                  if (v291 == 1)
                                  {
                                    goto LABEL_350;
                                  }
                                }

                                else
                                {
                                  v223 = v289 % v90;
                                  v91 = 1;
                                  v209 = v252;
                                  v258 = (v296 + v86 - 1) / v86;
                                  v270 = v42;
                                  v203 = v60;
                                  if (v291 == 1)
                                  {
LABEL_350:
                                    if (v297 == v73)
                                    {
                                      v92 = v251 ^ 1;
                                    }

                                    else
                                    {
                                      v92 = 1;
                                    }

LABEL_364:
                                    v94 = v395;
                                    v95 = BYTE1(v395);
                                    v96 = BYTE2(v395);
                                    v97 = BYTE3(v395);
                                    v256 = v258 * v91;
                                    v98 = v258 * v91 > 1;
                                    v99 = [*(v303 + 232) finalOp];
                                    LODWORD(v105) = (*(*v99 + 16))(v99);
                                    v100 = 8 * v94;
                                    v101 = 16 * v95;
                                    v103 = v277.i64[0] + v285 * (v297 - 1) + (v290 - 1) * v283;
                                    v104 = v277.i64[1] + v284 * (v307 - 1) + (v280 - 1) * v282;
                                    LODWORD(v105) = v105 ^ 1;
                                    if (*(v292 + 8) != 268435488)
                                    {
                                      LODWORD(v105) = 1;
                                    }

                                    if (v304)
                                    {
                                      v106 = 1;
                                    }

                                    else
                                    {
                                      v106 = v291 == 1;
                                    }

                                    if (v106)
                                    {
                                      v105 = v105;
                                    }

                                    else
                                    {
                                      v105 = 1;
                                    }

                                    v293 = v105;
                                    if (v267)
                                    {
                                      v107 = 0;
                                    }

                                    else if ((v277.i64[0] | v277.i64[1]) > -1 && v104 < v280 && v103 < v290)
                                    {
                                      v107 = 0;
                                    }

                                    else
                                    {
                                      v107 = 0x1000000;
                                    }

                                    v110 = v239;
                                    v111 = v98 | v92;
                                    v102 = (v295 % v287 == 0) << 8;
                                    v87 = v276 == 1;
                                    v89 = v281 % v271 == 0;
                                    v219 = v304 == 0;
                                    if (v304)
                                    {
                                      v112 = (v217 << 31) | (v219 << 26) & 0xC5FFFFFF | (4 * v87) & 0xC5FFFFFF | v221 & 0xC5FFFFFF | (v245 | ((v262 & 7) << 12)) & 0xC5FFFFFF | (((v229 & 7) << 9) | ((v260 & 7) << 15) | ((v257 & 3) << 18)) & 0xC5FFFFFF | (((v265 & 3) << 20) | ((v263 & 3) << 22) | v100 | v101) & 0xC5FFFFFF | ((32 * v96) | (v97 << 6)) & 0xC5FFFFFF | (v89 << 7) & 0xC5FFFFFF | (v102 | v107) & 0xC5FFFFFF;
                                      v113 = v241;
                                      v114 = 1 << v262;
                                      v115 = v223;
                                    }

                                    else
                                    {
                                      v113 = v241;
                                      v114 = 1 << v262;
                                      v115 = v223;
                                      if (v247)
                                      {
                                        v116 = ((((v255 + v279 - 1) & -v279) < 0x10000) << 25) & 0x1FFFFFFF;
                                        if (v266)
                                        {
                                          v116 = ((((v289 + v279 - 1) & -v279) < 0x10000) << 25) & 0xFFFFFFF;
                                        }
                                      }

                                      else if (v280 < 0x8000 && v290 < 0x8000 && v104 == v104 && v103 == v103)
                                      {
                                        v116 = 0x2000000;
                                      }

                                      else
                                      {
                                        v116 = 0;
                                      }

                                      v112 = (v217 << 31) | (v219 << 26) & 0xC5FFFFFF | (4 * v87) & 0xC5FFFFFF | v221 & 0xC5FFFFFF | (v245 | ((v262 & 7) << 12)) & 0xC5FFFFFF | (((v229 & 7) << 9) | ((v260 & 7) << 15) | ((v257 & 3) << 18)) & 0xC5FFFFFF | (((v265 & 3) << 20) | ((v263 & 3) << 22) | v100 | v101) & 0xC5FFFFFF | ((32 * v96) | (v97 << 6)) & 0xC5FFFFFF | (v89 << 7) & 0xC5FFFFFF | (v102 | v107) & 0xC5FFFFFF | ((v266 != 0) << 27) & 0xCDFFFFFF | ((((v289 + v279 - 1) & -v279) < 0x10000) << 29) | ((((v255 + v279 - 1) & -v279) < 0x10000) << 28) | v116;
                                    }

                                    v383 = -1;
                                    v382 = -1;
                                    v384 = v112 & 0xBFFFFFFF | ((v115 != 0) << 30);
                                    v385 = v235 | v237 | v233 | v231;
                                    v386 = 0u;
                                    v387 = 0u;
                                    v202 = v113 | 0x10100;
                                    v388 = v202;
                                    v389 = 0;
                                    v120 = *(v300 + *MEMORY[0x277CD7370]);
                                    if (v111 & 1 | ((v293 & 1) == 0))
                                    {
                                      v121 = 0;
                                    }

                                    else
                                    {
                                      v121 = *(v303 + 232);
                                    }

                                    v198 = *(v300 + *MEMORY[0x277CD7360]);
                                    v200 = *(v300 + *MEMORY[0x277CD7368]);
                                    v196 = v121;
                                    MPSLibrary::CreateUberShaderKey();
                                    v122 = *(v300 + *MEMORY[0x277CD7370]);
                                    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                                    [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
                                    if (32 * v253 * v215 > [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup] && MTLReportFailureTypeEnabled())
                                    {
                                      MTLReportFailure();
                                    }

                                    v124 = 1 << v263;
                                    if (v304)
                                    {
                                      v125 = v253;
                                    }

                                    else
                                    {
                                      v125 = 1 << v263;
                                    }

                                    if (v304)
                                    {
                                      v126 = 1 << v265;
                                    }

                                    else
                                    {
                                      v124 = 1 << v265;
                                      v126 = v253;
                                    }

                                    v225 = v124;
                                    v226 = v125;
                                    v224 = v126;
                                    v127 = v307 * v297;
                                    if (v395 == 1)
                                    {
                                      v128 = (v114 + ((v281 & 0xFFFFFFFFFFFFFFF0) + 16) * v307 * v297 - 1) / v114;
                                    }

                                    else
                                    {
                                      v128 = (v281 + v114 - 1) / v114 * v307 * v297;
                                    }

                                    v222 = v128;
                                    v129 = v393;
                                    MEMORY[0x23EE7C450](v381, v272, 0);
                                    TempBuffer = [v270 buffer];
                                    v261 = v307 * v297;
                                    if (v111)
                                    {
                                      TempBuffer = MPSAutoCache::GetTempBuffer(v381, 4 * v256 * ((v127 * v281 * v298 + 3) & 0xFFFFFFFFFFFFFFFCLL), 0);
                                    }

                                    MPSGetUShortDivisorMagicNumber();
                                    v248 = v130;
                                    MPSGetUIntDivisorMagicNumber();
                                    v246 = v131;
                                    MPSGetUShortDivisorMagicNumber();
                                    v244 = v132;
                                    MPSGetUIntDivisorMagicNumber();
                                    v243 = v133;
                                    MPSGetUShortDivisorMagicNumber();
                                    v242 = v134;
                                    MPSGetUIntDivisorMagicNumber();
                                    v240 = v135;
                                    MPSGetUShortDivisorMagicNumber();
                                    v238 = v136;
                                    MPSGetUShortDivisorMagicNumber();
                                    v236 = v137;
                                    MPSGetUIntDivisorMagicNumber();
                                    v234 = v138;
                                    MPSGetUIntDivisorMagicNumber();
                                    v232 = v139;
                                    MPSGetUShortDivisorMagicNumber();
                                    v230 = v140;
                                    MPSGetUShortDivisorMagicNumber();
                                    v228 = v141;
                                    MPSGetUIntDivisorMagicNumber();
                                    v227 = v142;
                                    MPSGetUShortDivisorMagicNumber();
                                    v220 = v143;
                                    MPSGetUShortDivisorMagicNumber();
                                    v218 = v144;
                                    MPSGetUShortDivisorMagicNumber();
                                    v216 = v145;
                                    MPSGetUIntDivisorMagicNumber();
                                    v214 = v146;
                                    MPSGetUIntDivisorMagicNumber();
                                    v205 = v147;
                                    MPSGetUIntDivisorMagicNumber();
                                    v305 = v148;
                                    MPSGetUIntDivisorMagicNumber();
                                    v268 = v149;
                                    MPSGetUShortDivisorMagicNumber();
                                    v204 = v150;
                                    MPSGetUIntDivisorMagicNumber();
                                    v259 = v151;
                                    v152 = 0;
                                    v334 = 0u;
                                    v331[0] = 0u;
                                    v153 = v249;
                                    if (v111)
                                    {
                                      v153 = v298;
                                    }

                                    LODWORD(v334) = v261 * ((v281 + 15) >> 4);
                                    DWORD1(v334) = v211 * v280 * v212;
                                    DWORD2(v334) = v210 * v280 * v213;
                                    HIDWORD(v334) = v211 * v280;
                                    v155 = v246;
                                    v154 = v248;
                                    HIWORD(v154) = 0;
                                    HIDWORD(v155) = 0;
                                    v157 = v243;
                                    v156 = v244;
                                    HIWORD(v156) = 0;
                                    HIDWORD(v157) = 0;
                                    v159 = v240;
                                    v158 = v242;
                                    HIWORD(v158) = 0;
                                    HIDWORD(v159) = 0;
                                    v161 = v236;
                                    v160 = v238;
                                    HIWORD(v160) = 0;
                                    HIWORD(v161) = 0;
                                    v163 = v232;
                                    v162 = v234;
                                    HIDWORD(v162) = 0;
                                    HIDWORD(v163) = 0;
                                    v165 = v228;
                                    v164 = v230;
                                    HIWORD(v164) = 0;
                                    HIWORD(v165) = 0;
                                    v166 = v227;
                                    HIDWORD(v166) = 0;
                                    v168 = v218;
                                    v167 = v220;
                                    HIWORD(v167) = 0;
                                    HIWORD(v168) = 0;
                                    v170 = v214;
                                    v169 = v216;
                                    HIWORD(v169) = 0;
                                    HIDWORD(v170) = 0;
                                    v172 = v204;
                                    v171 = v205;
                                    HIDWORD(v171) = 0;
                                    v173 = v305;
                                    HIDWORD(v173) = 0;
                                    v174 = v268;
                                    HIDWORD(v174) = 0;
                                    HIWORD(v172) = 0;
                                    *&v331[0] = __PAIR64__(v153, (v127 * v281 * v298 + 3) & 0xFFFFFFFC);
                                    v332 = 0uLL;
                                    WORD4(v331[0]) = v129;
                                    WORD5(v331[0]) = WORD4(v129);
                                    v331[1] = v154;
                                    v331[2] = 0uLL;
                                    LODWORD(v332) = 0;
                                    v333 = v155;
                                    v335 = v210 * v280;
                                    v336 = v211;
                                    v337 = v210;
                                    v338 = v266;
                                    v339 = v252;
                                    v340 = v209;
                                    v341 = v255;
                                    v342 = v156;
                                    v343 = v158;
                                    v344 = v157;
                                    v345 = v159;
                                    v346 = v172;
                                    v347 = v160;
                                    v348 = v161;
                                    v269 = v174;
                                    v349 = v174;
                                    v306 = v173;
                                    v350 = v173;
                                    v351 = v162;
                                    v352 = v163;
                                    v353 = v164;
                                    v354 = v165;
                                    v355 = v166;
                                    v356 = v167;
                                    v357 = v168;
                                    v358 = v169;
                                    v359 = v170;
                                    v360 = v171;
                                    v361 = v281;
                                    v362 = v295;
                                    v363 = v298;
                                    v364 = v297;
                                    v365 = v250;
                                    v366 = v307;
                                    v367 = v276;
                                    v368 = v296;
                                    v369 = __PAIR64__(v280, v290);
                                    v370 = __PAIR64__(v280, v290);
                                    v371 = vmovn_s64(v277);
                                    v373 = v282;
                                    v372 = v283;
                                    v375 = v284;
                                    v374 = v285;
                                    v376 = v290 * v280;
                                    v377 = v213;
                                    v378 = v212;
                                    v379 = v212 * v280;
                                    v380 = (v213 * v280);
                                    if (BYTE1(v395) == 1)
                                    {
                                      v152 = v279 * v271 * (*&v299[*MEMORY[0x277CD73C8]] >> 3);
                                      if (BYTE2(v395) != 1)
                                      {
                                        goto LABEL_420;
                                      }
                                    }

                                    else if (BYTE2(v395) != 1)
                                    {
LABEL_420:
                                      if (v257)
                                      {
                                        goto LABEL_421;
                                      }

                                      goto LABEL_423;
                                    }

                                    v152 += v279 * v287 * (*&v302[*MEMORY[0x277CD73C8]] >> 3);
                                    if (v257)
                                    {
LABEL_421:
                                      if (v152 <= (v274 * (v253 >> 1) * v273 * (v203 / v273)) << 10)
                                      {
                                        v152 = (v274 * (v253 >> 1) * v273 * (v203 / v273)) << 10;
                                      }
                                    }

LABEL_423:
                                    [v110 setComputePipelineState:PipelineStateForMPSKey];
                                    v175 = *(v300 + *MEMORY[0x277CD7370]);
                                    MPSLibrary::ReleaseComputeState();
                                    v176 = *(v300 + *MEMORY[0x277CD7370]);
                                    MPSLibrary::ReleaseMPSKey();
                                    MPSSetNDArraysOnComputeEncoder(v110, v303, 4, 0, 0);
                                    [v110 setBuffer:objc_msgSend(v302 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v302, 0, 4, 0, 0) + v208, 29}];
                                    [v110 setBuffer:objc_msgSend(v299 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v299, 0, 4, 0, 0) + v207, 28}];
                                    if (v111)
                                    {
                                      v177 = 0;
                                      v178 = TempBuffer;
                                    }

                                    else
                                    {
                                      v179 = MPSGetLinearOffsetBytes(v270, 0, 4, 0, 0);
                                      v178 = [v270 buffer];
                                      v177 = v179 + v206;
                                    }

                                    [v110 setBuffer:v178 offset:v177 atIndex:27];
                                    [v110 setBytes:v331 length:448 atIndex:26];
                                    [v110 setThreadgroupMemoryLength:v152 atIndex:0];
                                    [v110 setBuffer:0 offset:0 atIndex:25];
                                    v310 = *(&v129 + 1) * v129;
                                    v311 = (*(&v129 + 1) + (v295 + v287 - 1) / v287 * v276 - 1) / *(&v129 + 1) * ((v129 + v222 - 1) / v129);
                                    v312 = v256;
                                    v323 = 32 * v224;
                                    v324 = v225;
                                    v325 = v226;
                                    [v110 dispatchThreadgroups:&v310 threadsPerThreadgroup:&v323];
                                    if (v111)
                                    {
                                      v180 = 0;
                                      v181 = 8;
                                      if (!v251)
                                      {
                                        v181 = 0;
                                      }

                                      v324 = -1;
                                      v323 = -1;
                                      v325 = -1;
                                      v326 = (4 * (v291 == 1)) | (2 * (v291 != 0)) | v181 | v293;
                                      v327 = 0u;
                                      v328 = 0u;
                                      v329 = v202;
                                      v330 = 0;
                                      v182 = *(v300 + *MEMORY[0x277CD7370]);
                                      if (v293)
                                      {
                                        v180 = *(v303 + 232);
                                      }

                                      v199 = *(v300 + *MEMORY[0x277CD7360]);
                                      v201 = *(v300 + *MEMORY[0x277CD7368]);
                                      v197 = v180;
                                      MPSLibrary::CreateUberShaderKey();
                                      v183 = *(v300 + *MEMORY[0x277CD7370]);
                                      [v110 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v197, v199, v201, 0, 0}];
                                      v184 = *(v300 + *MEMORY[0x277CD7370]);
                                      MPSLibrary::ReleaseComputeState();
                                      v185 = *(v300 + *MEMORY[0x277CD7370]);
                                      MPSLibrary::ReleaseMPSKey();
                                      MPSSetNDArraysOnComputeEncoder(v110, v303, 4, 0, 0);
                                      [v110 setBuffer:TempBuffer offset:0 atIndex:28];
                                      [v110 setBuffer:objc_msgSend(v270 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v270, 0, 4, 0, 0) + v206, 27}];
                                      if (v291)
                                      {
                                        v186 = v298;
                                      }

                                      else
                                      {
                                        v186 = (v298 + 3) >> 2;
                                      }

                                      MPSGetUIntDivisorMagicNumber();
                                      v187 = v259;
                                      HIDWORD(v187) = 0;
                                      v188 = v281 * v186 * v261;
                                      HIDWORD(v189) = 0;
                                      if (v291)
                                      {
                                        v190 = v261 - 1;
                                        if (v261 > 1)
                                        {
                                          v191 = 64 - __clz(v190);
                                        }

                                        else
                                        {
                                          v191 = (v261 == 0) << 63;
                                        }

                                        if (v191 >= 4)
                                        {
                                          LOWORD(v191) = 4;
                                        }

                                        v193 = (1 << v191);
                                        v194 = 0x100uLL >> v191;
                                        v195 = (v190 + v193) >> v191;
                                        v192 = (v281 * v298 + (0x100uLL >> v191) - 1) / (0x100uLL >> v191);
                                      }

                                      else
                                      {
                                        LOWORD(v191) = 0;
                                        v192 = (v188 + 255) >> 8;
                                        v193 = 1;
                                        v194 = 256;
                                        v195 = 1;
                                      }

                                      v310 = __PAIR64__(v186, v188);
                                      LODWORD(v311) = v256;
                                      HIDWORD(v311) = v298 & 3;
                                      v312 = __PAIR64__(v249, v298);
                                      v313 = (v127 * v281 * v298 + 3) & 0xFFFFFFFC;
                                      v314 = v281;
                                      v315 = v297;
                                      v316 = v307;
                                      v317 = v250;
                                      v318 = v306;
                                      v319 = v269;
                                      v320 = v187;
                                      v322 = 0u;
                                      v321 = v189;
                                      LOWORD(v322) = v191;
                                      WORD1(v322) = v193;
                                      [v110 setBytes:&v310 length:128 atIndex:26];
                                      [v110 setBuffer:0 offset:0 atIndex:25];
                                      if (!((v291 != 1) | v251 & 1))
                                      {
                                        [v110 setThreadgroupMemoryLength:(4 * v194 + 4) * v193 atIndex:0];
                                      }

                                      v309[0] = v192;
                                      v309[1] = v195;
                                      v309[2] = 1;
                                      v308[0] = v194;
                                      v308[1] = v193;
                                      v308[2] = 1;
                                      [v110 dispatchThreadgroups:v309 threadsPerThreadgroup:v308];
                                    }

                                    MPSAutoCache::~MPSAutoCache(v381);
                                    operator delete(0);
                                    operator delete(0);
                                    operator delete(0);
                                    return 0;
                                  }
                                }
                              }

                              else
                              {
                                v93 = *(&v394 + 1);
                                if (v86)
                                {
                                  v258 = (v296 + v86 - 1) / v86;
                                  if (*(&v394 + 1) >= (v289 - 1 + v279) / v279)
                                  {
                                    v93 = (v289 - 1 + v279) / v279;
                                  }

                                  v223 = v289 % (v93 * v279);
                                  v209 = v93 * v279;
                                  v91 = (v93 * v279 + v289 - 1) / (v93 * v279);
                                  v270 = v42;
                                  v203 = v60;
                                  if (v291 == 1)
                                  {
                                    goto LABEL_350;
                                  }
                                }

                                else
                                {
                                  if (*(&v394 + 1) >= (v255 - 1 + v279) / v279)
                                  {
                                    v93 = (v255 - 1 + v279) / v279;
                                  }

                                  v223 = v255 % (v93 * v279);
                                  v258 = 1;
                                  v209 = v93 * v279;
                                  v91 = (v93 * v279 + v255 - 1) / (v93 * v279);
                                  v270 = v42;
                                  v203 = v60;
                                  if (v291 == 1)
                                  {
                                    goto LABEL_350;
                                  }
                                }
                              }

                              v92 = 0;
                              goto LABEL_364;
                          }
                        }

                        v53 = 18;
                        goto LABEL_258;
                    }
                  }

                  v51 = 589824;
                  goto LABEL_213;
              }
            }

            v49 = 18432;
            goto LABEL_168;
        }
      }

      v47 = 576;
      goto LABEL_123;
    }

    return MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionGradientWithWeights(v9, v300, a3, v272, a5);
  }

  else
  {

    return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolutionGradientWithWeights(v9, a2, a3, a4, a5);
  }
}

void sub_239AFCF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, void *a58)
{
  operator delete(__p);
  if (a58)
  {
    operator delete(a58);
    if (!STACK[0x250])
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!STACK[0x250])
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x250]);
  _Unwind_Resume(a1);
}

void MPSNDArrayConvolutionDeviceBehaviorA18::~MPSNDArrayConvolutionDeviceBehaviorA18(MPSNDArrayConvolutionDeviceBehaviorA18 *this)
{
  *this = &unk_284CAFBF8;
  v2 = *(this + 33);
  if (v2)
  {
    free(v2);
    *(this + 33) = 0;
  }

  *this = &unk_284CAFC98;
  free(*(this + 19));
  *this = &unk_284CAFAF0;
  free(*(this + 19));
  *this = &unk_284CAFD38;
  free(*(this + 19));
  *this = &unk_284CAF9A0;
  free(*(this + 9));
}

{
  *this = &unk_284CAFBF8;
  v2 = *(this + 33);
  if (v2)
  {
    free(v2);
    *(this + 33) = 0;
  }

  *this = &unk_284CAFC98;
  free(*(this + 19));
  *this = &unk_284CAFAF0;
  free(*(this + 19));
  *this = &unk_284CAFD38;
  free(*(this + 19));
  *this = &unk_284CAF9A0;
  free(*(this + 9));

  JUMPOUT(0x23EE7C8C0);
}

char *___ZL24MPSDisableAutoTuneTablesv_block_invoke()
{
  result = getenv("MPS_DISABLE_AUTO_TUNE_TABLES");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      _MergedGlobals_35 = result != 0;
    }
  }

  return result;
}

char *___ZL19MPSWinogradForceF16v_block_invoke()
{
  result = getenv("MPSNDARRAY_WINOGRAD_FP16_INTERMEDIATE");
  if (result)
  {
    byte_27DF86C81 = 1;
  }

  return result;
}

char *___ZL20MPSWinogradForceFP19v_block_invoke()
{
  result = getenv("MPSNDARRAY_WINOGRAD_FP19_INTERMEDIATE");
  if (result)
  {
    byte_27DF86C82 = 1;
  }

  return result;
}

char *___ZL20MPSEnableAutoTuneLogv_block_invoke_0()
{
  result = getenv("MPS_LOG_AUTO_TUNE");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      byte_27DF86C83 = result != 0;
    }
  }

  return result;
}

uint64_t EncodeArrayPrune(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + *MEMORY[0x277CD7370]);
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v9 = *MEMORY[0x277CD73C8];
  v10 = *&v8[v9];
  v11 = *&v8[*MEMORY[0x277CD7400]] / (v10 >> 3);
  v12 = *(a4 + 208);
  v34[0] = 0;
  v34[1] = v11;
  v13 = MEMORY[0x277CD73D0];
  v35 = *&v8[*MEMORY[0x277CD73D0]];
  if (v10 > 285212703)
  {
    if (v10 <= 536870915)
    {
      if (v10 > 301989895)
      {
        if (v10 == 301989896)
        {
          v14 = 512;
          v15 = *&v12[v9];
          if (v15 <= 285212703)
          {
            goto LABEL_60;
          }

          goto LABEL_82;
        }

        if (v10 == 335544328)
        {
          v14 = 544;
          v15 = *&v12[v9];
          if (v15 <= 285212703)
          {
            goto LABEL_60;
          }

          goto LABEL_82;
        }
      }

      else
      {
        if (v10 == 285212704)
        {
          v14 = 416;
          v15 = *&v12[v9];
          if (v15 <= 285212703)
          {
            goto LABEL_60;
          }

          goto LABEL_82;
        }

        if (v10 == 285212736)
        {
          v14 = 448;
          v15 = *&v12[v9];
          if (v15 <= 285212703)
          {
            goto LABEL_60;
          }

          goto LABEL_82;
        }
      }
    }

    else if (v10 <= 536870927)
    {
      v14 = 0;
      if (v10 == 536870916)
      {
        goto LABEL_59;
      }

      if (v10 == 536870920)
      {
        v14 = 32;
        v15 = *&v12[v9];
        if (v15 <= 285212703)
        {
          goto LABEL_60;
        }

        goto LABEL_82;
      }
    }

    else
    {
      switch(v10)
      {
        case 536870928:
          v14 = 64;
          v15 = *&v12[v9];
          if (v15 <= 285212703)
          {
            goto LABEL_60;
          }

LABEL_82:
          if (v15 <= 536870915)
          {
            if (v15 > 301989895)
            {
              if (v15 == 301989896)
              {
                v16 = 16;
                goto LABEL_104;
              }

              if (v15 == 335544328)
              {
                v16 = 17;
                goto LABEL_104;
              }
            }

            else
            {
              if (v15 == 285212704)
              {
                v16 = 13;
                goto LABEL_104;
              }

              if (v15 == 285212736)
              {
                v16 = 14;
                goto LABEL_104;
              }
            }
          }

          else if (v15 <= 536870927)
          {
            if (v15 == 536870916)
            {
              v16 = 0;
              goto LABEL_104;
            }

            if (v15 == 536870920)
            {
              v16 = 1;
              goto LABEL_104;
            }
          }

          else
          {
            switch(v15)
            {
              case 536870928:
                v16 = 2;
                goto LABEL_104;
              case 536870944:
                v16 = 3;
                goto LABEL_104;
              case 536870976:
                v16 = 4;
                goto LABEL_104;
            }
          }

LABEL_103:
          v16 = 18;
          goto LABEL_104;
        case 536870944:
          v14 = 96;
          v15 = *&v12[v9];
          if (v15 <= 285212703)
          {
            goto LABEL_60;
          }

          goto LABEL_82;
        case 536870976:
          v14 = 128;
          v15 = *&v12[v9];
          if (v15 <= 285212703)
          {
            goto LABEL_60;
          }

          goto LABEL_82;
      }
    }

LABEL_81:
    v14 = 576;
    v15 = *&v12[v9];
    if (v15 > 285212703)
    {
      goto LABEL_82;
    }

    goto LABEL_60;
  }

  if (v10 <= 31)
  {
    if (v10 > 7)
    {
      if (v10 == 8)
      {
        v14 = 192;
        v15 = *&v12[v9];
        if (v15 <= 285212703)
        {
          goto LABEL_60;
        }

        goto LABEL_82;
      }

      if (v10 == 16)
      {
        v14 = 224;
        v15 = *&v12[v9];
        if (v15 <= 285212703)
        {
          goto LABEL_60;
        }

        goto LABEL_82;
      }
    }

    else
    {
      if (v10 == -1879048176)
      {
        v14 = 384;
        v15 = *&v12[v9];
        if (v15 <= 285212703)
        {
          goto LABEL_60;
        }

        goto LABEL_82;
      }

      if (v10 == 4)
      {
        v14 = 160;
        v15 = *&v12[v9];
        if (v15 <= 285212703)
        {
          goto LABEL_60;
        }

        goto LABEL_82;
      }
    }

    goto LABEL_81;
  }

  if (v10 <= 268435463)
  {
    if (v10 != 32)
    {
      if (v10 == 64)
      {
        v14 = 288;
        v15 = *&v12[v9];
        if (v15 <= 285212703)
        {
          goto LABEL_60;
        }

        goto LABEL_82;
      }

      goto LABEL_81;
    }

    v14 = 256;
LABEL_59:
    v15 = *&v12[v9];
    if (v15 > 285212703)
    {
      goto LABEL_82;
    }

    goto LABEL_60;
  }

  if (v10 == 268435464)
  {
    v14 = 480;
    v15 = *&v12[v9];
    if (v15 <= 285212703)
    {
      goto LABEL_60;
    }

    goto LABEL_82;
  }

  if (v10 == 268435472)
  {
    v14 = 320;
    v15 = *&v12[v9];
    if (v15 <= 285212703)
    {
      goto LABEL_60;
    }

    goto LABEL_82;
  }

  if (v10 != 268435488)
  {
    goto LABEL_81;
  }

  v14 = 352;
  v15 = *&v12[v9];
  if (v15 > 285212703)
  {
    goto LABEL_82;
  }

LABEL_60:
  if (v15 <= 31)
  {
    if (v15 > 7)
    {
      if (v15 == 8)
      {
        v16 = 6;
      }

      else
      {
        if (v15 != 16)
        {
          goto LABEL_103;
        }

        v16 = 7;
      }
    }

    else if (v15 == -1879048176)
    {
      v16 = 12;
    }

    else
    {
      if (v15 != 4)
      {
        goto LABEL_103;
      }

      v16 = 5;
    }
  }

  else if (v15 <= 268435463)
  {
    if (v15 == 32)
    {
      v16 = 8;
    }

    else
    {
      if (v15 != 64)
      {
        goto LABEL_103;
      }

      v16 = 9;
    }
  }

  else
  {
    switch(v15)
    {
      case 268435464:
        v16 = 15;
        break;
      case 268435472:
        v16 = 10;
        break;
      case 268435488:
        v16 = 11;
        break;
      default:
        goto LABEL_103;
    }
  }

LABEL_104:
  *&v17 = -1;
  *(&v17 + 1) = -1;
  v32 = v17;
  v33 = v17;
  v29 = -1;
  v31 = v17;
  v28 = v17;
  v30 = v16 | v14;
  *&v33 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v22 = *(a1 + *MEMORY[0x277CD7360]);
  v23 = *(a1 + *MEMORY[0x277CD7368]);
  v21 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSSetNDArraysOnComputeEncoder(a2, a4, 3, 0, 0);
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v21, v22, v23, 0, 0}];
  [a2 setBuffer:objc_msgSend(v8 offset:"buffer") atIndex:{0, 29}];
  [a2 setBuffer:objc_msgSend(v12 offset:"buffer") atIndex:{0, 28}];
  [a2 setBytes:v34 length:24 atIndex:27];
  v19 = (*&v8[*v13 + 4] * *&v8[*v13] * *&v8[*v13 + 8] * *&v8[*v13 + 12]) >> 7;
  v25 = 1;
  v26 = v19;
  v27 = vdupq_n_s64(1uLL);
  v24 = xmmword_239B1F440;
  [a2 dispatchThreadgroups:&v26 threadsPerThreadgroup:&v24];
  return 0;
}

uint64_t EncodeArrayPruneGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + *MEMORY[0x277CD7370]);
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v9 = *(a4 + 112);
  v10 = *MEMORY[0x277CD73C8];
  v11 = *&v8[v10];
  v12 = *&v8[*MEMORY[0x277CD7400]] / (v11 >> 3);
  v13 = *(a4 + 208);
  v37[0] = 0;
  v37[1] = v12;
  v14 = MEMORY[0x277CD73D0];
  v38 = *&v8[*MEMORY[0x277CD73D0]];
  if (v11 > 285212703)
  {
    if (v11 <= 536870915)
    {
      if (v11 > 301989895)
      {
        if (v11 == 301989896)
        {
          v15 = 512;
          v16 = *&v9[v10];
          if (v16 <= 285212703)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v11 != 335544328)
          {
            goto LABEL_90;
          }

          v15 = 544;
          v16 = *&v9[v10];
          if (v16 <= 285212703)
          {
            goto LABEL_60;
          }
        }
      }

      else if (v11 == 285212704)
      {
        v15 = 416;
        v16 = *&v9[v10];
        if (v16 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v11 != 285212736)
        {
          goto LABEL_90;
        }

        v15 = 448;
        v16 = *&v9[v10];
        if (v16 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_91;
    }

    if (v11 > 536870927)
    {
      switch(v11)
      {
        case 536870928:
          v15 = 64;
          v16 = *&v9[v10];
          if (v16 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        case 536870944:
          v15 = 96;
          v16 = *&v9[v10];
          if (v16 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        case 536870976:
          v15 = 128;
          v16 = *&v9[v10];
          if (v16 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        default:
          goto LABEL_90;
      }

      goto LABEL_91;
    }

    v15 = 0;
    if (v11 != 536870916)
    {
      if (v11 != 536870920)
      {
        goto LABEL_90;
      }

      v15 = 32;
      v16 = *&v9[v10];
      if (v16 <= 285212703)
      {
        goto LABEL_60;
      }

      goto LABEL_91;
    }

LABEL_59:
    v16 = *&v9[v10];
    if (v16 > 285212703)
    {
      goto LABEL_91;
    }

    goto LABEL_60;
  }

  if (v11 <= 31)
  {
    if (v11 > 7)
    {
      if (v11 == 8)
      {
        v15 = 192;
        v16 = *&v9[v10];
        if (v16 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v11 != 16)
        {
          goto LABEL_90;
        }

        v15 = 224;
        v16 = *&v9[v10];
        if (v16 <= 285212703)
        {
          goto LABEL_60;
        }
      }
    }

    else if (v11 == -1879048176)
    {
      v15 = 384;
      v16 = *&v9[v10];
      if (v16 <= 285212703)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_90;
      }

      v15 = 160;
      v16 = *&v9[v10];
      if (v16 <= 285212703)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_91;
  }

  if (v11 <= 268435463)
  {
    if (v11 != 32)
    {
      if (v11 != 64)
      {
        goto LABEL_90;
      }

      v15 = 288;
      v16 = *&v9[v10];
      if (v16 <= 285212703)
      {
        goto LABEL_60;
      }

      goto LABEL_91;
    }

    v15 = 256;
    goto LABEL_59;
  }

  switch(v11)
  {
    case 268435464:
      v15 = 480;
      v16 = *&v9[v10];
      if (v16 <= 285212703)
      {
        goto LABEL_60;
      }

      break;
    case 268435472:
      v15 = 320;
      v16 = *&v9[v10];
      if (v16 <= 285212703)
      {
        goto LABEL_60;
      }

      break;
    case 268435488:
      v15 = 352;
      v16 = *&v9[v10];
      if (v16 > 285212703)
      {
        break;
      }

LABEL_60:
      if (v16 <= 31)
      {
        if (v16 > 7)
        {
          if (v16 == 8)
          {
            v17 = 192;
            v18 = *&v13[v10];
            if (v18 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
          }

          if (v16 == 16)
          {
            v17 = 224;
            v18 = *&v13[v10];
            if (v18 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
          }
        }

        else
        {
          if (v16 == -1879048176)
          {
            v17 = 384;
            v18 = *&v13[v10];
            if (v18 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
          }

          if (v16 == 4)
          {
            v17 = 160;
            v18 = *&v13[v10];
            if (v18 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
          }
        }
      }

      else if (v16 <= 268435463)
      {
        if (v16 == 32)
        {
          v17 = 256;
          v18 = *&v13[v10];
          if (v18 > 285212703)
          {
            goto LABEL_142;
          }

          goto LABEL_120;
        }

        if (v16 == 64)
        {
          v17 = 288;
          v18 = *&v13[v10];
          if (v18 > 285212703)
          {
            goto LABEL_142;
          }

          goto LABEL_120;
        }
      }

      else
      {
        switch(v16)
        {
          case 268435464:
            v17 = 480;
            v18 = *&v13[v10];
            if (v18 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
          case 268435472:
            v17 = 320;
            v18 = *&v13[v10];
            if (v18 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
          case 268435488:
            v17 = 352;
            v18 = *&v13[v10];
            if (v18 > 285212703)
            {
              goto LABEL_142;
            }

            goto LABEL_120;
        }
      }

      goto LABEL_141;
    default:
LABEL_90:
      v15 = 576;
      v16 = *&v9[v10];
      if (v16 > 285212703)
      {
        break;
      }

      goto LABEL_60;
  }

LABEL_91:
  if (v16 <= 536870915)
  {
    if (v16 > 301989895)
    {
      if (v16 == 301989896)
      {
        v17 = 512;
        v18 = *&v13[v10];
        if (v18 <= 285212703)
        {
          goto LABEL_120;
        }

        goto LABEL_142;
      }

      if (v16 == 335544328)
      {
        v17 = 544;
        v18 = *&v13[v10];
        if (v18 <= 285212703)
        {
          goto LABEL_120;
        }

        goto LABEL_142;
      }
    }

    else
    {
      if (v16 == 285212704)
      {
        v17 = 416;
        v18 = *&v13[v10];
        if (v18 <= 285212703)
        {
          goto LABEL_120;
        }

        goto LABEL_142;
      }

      if (v16 == 285212736)
      {
        v17 = 448;
        v18 = *&v13[v10];
        if (v18 <= 285212703)
        {
          goto LABEL_120;
        }

        goto LABEL_142;
      }
    }

LABEL_141:
    v17 = 576;
    v18 = *&v13[v10];
    if (v18 > 285212703)
    {
      goto LABEL_142;
    }

    goto LABEL_120;
  }

  if (v16 <= 536870927)
  {
    if (v16 == 536870916)
    {
      v17 = 0;
      v18 = *&v13[v10];
      if (v18 > 285212703)
      {
        goto LABEL_142;
      }

      goto LABEL_120;
    }

    if (v16 != 536870920)
    {
      goto LABEL_141;
    }

    v17 = 32;
    v18 = *&v13[v10];
    if (v18 <= 285212703)
    {
      goto LABEL_120;
    }

LABEL_142:
    if (v18 <= 536870915)
    {
      if (v18 > 301989895)
      {
        if (v18 == 301989896)
        {
          v19 = 16;
          goto LABEL_164;
        }

        if (v18 == 335544328)
        {
          v19 = 17;
          goto LABEL_164;
        }
      }

      else
      {
        if (v18 == 285212704)
        {
          v19 = 13;
          goto LABEL_164;
        }

        if (v18 == 285212736)
        {
          v19 = 14;
          goto LABEL_164;
        }
      }
    }

    else if (v18 <= 536870927)
    {
      if (v18 == 536870916)
      {
        v19 = 0;
        goto LABEL_164;
      }

      if (v18 == 536870920)
      {
        v19 = 1;
        goto LABEL_164;
      }
    }

    else
    {
      switch(v18)
      {
        case 536870928:
          v19 = 2;
          goto LABEL_164;
        case 536870944:
          v19 = 3;
          goto LABEL_164;
        case 536870976:
          v19 = 4;
          goto LABEL_164;
      }
    }

LABEL_163:
    v19 = 18;
    goto LABEL_164;
  }

  if (v16 == 536870928)
  {
    v17 = 64;
    v18 = *&v13[v10];
    if (v18 <= 285212703)
    {
      goto LABEL_120;
    }

    goto LABEL_142;
  }

  if (v16 == 536870944)
  {
    v17 = 96;
    v18 = *&v13[v10];
    if (v18 <= 285212703)
    {
      goto LABEL_120;
    }

    goto LABEL_142;
  }

  if (v16 != 536870976)
  {
    goto LABEL_141;
  }

  v17 = 128;
  v18 = *&v13[v10];
  if (v18 > 285212703)
  {
    goto LABEL_142;
  }

LABEL_120:
  if (v18 <= 31)
  {
    if (v18 > 7)
    {
      if (v18 == 8)
      {
        v19 = 6;
      }

      else
      {
        if (v18 != 16)
        {
          goto LABEL_163;
        }

        v19 = 7;
      }
    }

    else if (v18 == -1879048176)
    {
      v19 = 12;
    }

    else
    {
      if (v18 != 4)
      {
        goto LABEL_163;
      }

      v19 = 5;
    }
  }

  else if (v18 <= 268435463)
  {
    if (v18 == 32)
    {
      v19 = 8;
    }

    else
    {
      if (v18 != 64)
      {
        goto LABEL_163;
      }

      v19 = 9;
    }
  }

  else
  {
    switch(v18)
    {
      case 268435464:
        v19 = 15;
        break;
      case 268435472:
        v19 = 10;
        break;
      case 268435488:
        v19 = 11;
        break;
      default:
        goto LABEL_163;
    }
  }

LABEL_164:
  *&v20 = -1;
  *(&v20 + 1) = -1;
  v35 = v20;
  v36 = v20;
  v32 = -1;
  v34 = v20;
  v31 = v20;
  v33 = v17 | v15 | v19;
  *&v36 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v25 = *(a1 + *MEMORY[0x277CD7360]);
  v26 = *(a1 + *MEMORY[0x277CD7368]);
  v24 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSSetNDArraysOnComputeEncoder(a2, a4, 3, 0, 0);
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v24, v25, v26, 0, 0}];
  [a2 setBuffer:objc_msgSend(v8 offset:"buffer") atIndex:{0, 29}];
  [a2 setBuffer:objc_msgSend(v9 offset:"buffer") atIndex:{0, 28}];
  [a2 setBuffer:objc_msgSend(v13 offset:"buffer") atIndex:{0, 27}];
  [a2 setBytes:v37 length:24 atIndex:26];
  v22 = (*&v8[*v14 + 4] * *&v8[*v14] * *&v8[*v14 + 8] * *&v8[*v14 + 12]) >> 7;
  v28 = 1;
  v29 = v22;
  v30 = vdupq_n_s64(1uLL);
  v27 = xmmword_239B1F440;
  [a2 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  return 0;
}

uint64_t MPSNDArrayPruneFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a2 + 64);
  v6 = MPSCreateFunctionConstantValues();
  v17 = v5 & 1;
  [v6 setConstantValue:&v17 type:53 atIndex:115];
  v7 = *a3;
  v8 = *(a3 + 1);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vceqq_s64(v8, v9);
  if (*a3 != -1 || ((v11 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v9), vceqq_s64(*(a3 + 4), v9)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v10, vceqq_s64(*(a3 + 3), v9)), xmmword_239B06050)) & 0xF) == 0) ? (v12 = v11 == 0) : (v12 = 0), v12 ? (v13 = a3[5] == -1) : (v13 = 0), !v13))
  {
    if ((vuzp1_s16(vmovn_s64(v10), *v8.i8).u8[0] & 1) == 0)
    {
      v18 = *(a3 + 1);
      [v6 setConstantValue:&v18 type:33 atIndex:126];
      v7 = *a3;
    }

    if (v7 != -1)
    {
      v18 = v7;
      [v6 setConstantValue:&v18 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v18 = a3[2];
      [v6 setConstantValue:&v18 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v18 = a3[3];
      [v6 setConstantValue:&v18 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v18 = a3[4];
      [v6 setConstantValue:&v18 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v18 = a3[5];
      [v6 setConstantValue:&v18 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v18 = a3[8];
      [v6 setConstantValue:&v18 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v18 = a3[9];
      [v6 setConstantValue:&v18 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v18 = a3[6];
      [v6 setConstantValue:&v18 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v18 = a3[7];
      [v6 setConstantValue:&v18 type:33 atIndex:116];
    }
  }

  v14 = *a2;
  v15 = _MPSNewSpecializedFunction();

  return v15;
}

uint64_t MPSDecrementReadCount(MPSTemporaryNDArray *a1)
{
  return MEMORY[0x282123FA0](a1);
}

{
  return MEMORY[0x282123FA8](a1);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}