uint64_t EncodeDWConvGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a4;
  v316[1] = *MEMORY[0x277D85DE8];
  [*(a4 + 224) objectAtIndexedSubscript:0];
  objc_opt_class();
  v10 = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = EncodeDWConvGradientBackPropImpl(a1, a2, a3, v6, a5, 0);
  }

  [*(v6 + 224) objectAtIndexedSubscript:1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || v10)
  {
    goto LABEL_471;
  }

  v11 = *(a1 + *MEMORY[0x277CD7350]);
  v12 = *(a1 + *MEMORY[0x277CD7370]);
  v264 = *(a1 + 192);
  v262 = *(a1 + 208);
  v263 = *(a1 + 200);
  v254 = *(a1 + 168);
  v257 = *(a1 + 184);
  v261 = *(a1 + 216);
  v13 = *(a1 + 148);
  v259 = *(a1 + 232);
  v260 = *(a1 + 224);
  if (*(a1 + 160) >= 3u)
  {
    v14 = 3;
  }

  else
  {
    v14 = *(a1 + 160);
  }

  v280 = v14;
  v256 = *(a1 + 160);
  v15 = [*(v6 + 232) graph];
  v16 = **(v15 + 56);
  if (*(*(v15 + 56) + 8) == v16)
  {
    goto LABEL_479;
  }

  v18 = *(*v16 + 8);
  v17 = *v18;
  v19 = v18[1] - *v18;
  if (v19 <= 8 || v19 == 16)
  {
LABEL_478:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = v17[1];
  v274 = *v17;
  v282 = v17[2];
  v21 = [*(v6 + 232) graph];
  v22 = **(v21 + 56);
  if (*(*(v21 + 56) + 8) == v22)
  {
LABEL_479:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v252 = a5;
  v247 = v11;
  v24 = *(*v22 + 24);
  v23 = *v24;
  if (*(v24 + 8) == *v24)
  {
    goto LABEL_478;
  }

  v25 = *v23;
  v265 = a1;
  v246 = a2;
  v277 = a3;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    BaseTensor::GetDimensionSize(v282);
    BaseTensor::GetDimensionSize(v20);
    DimensionSize = BaseTensor::GetDimensionSize(v282);
    if (DimensionSize != BaseTensor::GetDimensionSize(v20) && MTLReportFailureTypeEnabled())
    {
      v218 = BaseTensor::GetDimensionSize(v274);
      v221 = BaseTensor::GetDimensionSize(v282);
      v215 = a1;
      MTLReportFailure();
    }

    v27 = BaseTensor::GetDimensionSize(v25);
    if (v27 == BaseTensor::GetDimensionSize(v20))
    {
      v28 = BaseTensor::GetDimensionSize(v25);
      if (v28 == BaseTensor::GetDimensionSize(v20))
      {
        v29 = BaseTensor::GetDimensionSize(v25);
        if (v29 == BaseTensor::GetDimensionSize(v20))
        {
          BaseTensor::GetDimensionSize(v25);
          BaseTensor::GetDimensionSize(v20);
        }
      }
    }

    v30 = BaseTensor::GetDimensionSize(v25);
    if (v30 != BaseTensor::GetDimensionSize(v20) || (v31 = BaseTensor::GetDimensionSize(v25), v31 != BaseTensor::GetDimensionSize(v20)) || (v32 = BaseTensor::GetDimensionSize(v25), v32 != BaseTensor::GetDimensionSize(v20)) || (v33 = BaseTensor::GetDimensionSize(v25), v33 != BaseTensor::GetDimensionSize(v20)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v279 = BaseTensor::GetDimensionSize(v20);
        v276 = BaseTensor::GetDimensionSize(v20);
        v210 = BaseTensor::GetDimensionSize(v20);
        v211 = BaseTensor::GetDimensionSize(v20);
        v212 = BaseTensor::GetDimensionSize(v25);
        v213 = v6;
        v214 = BaseTensor::GetDimensionSize(v25);
        v228 = BaseTensor::GetDimensionSize(v25);
        v229 = BaseTensor::GetDimensionSize(v25);
        v226 = v212;
        v227 = v214;
        v6 = v213;
        v224 = v210;
        v225 = v211;
        v218 = v279;
        v221 = v276;
        v215 = v265;
        MTLReportFailure();
      }
    }
  }

  v34 = *(v274 + 2);
  if (v34 > 285212703)
  {
    if (v34 <= 536870915)
    {
      if (v34 > 301989895)
      {
        if (v34 == 301989896)
        {
          v35 = 512;
          v36 = *(v20 + 2);
          if (v36 > 285212703)
          {
            goto LABEL_67;
          }

          goto LABEL_86;
        }

        if (v34 == 335544328)
        {
          v35 = 544;
          v36 = *(v20 + 2);
          if (v36 <= 285212703)
          {
            goto LABEL_86;
          }

          goto LABEL_67;
        }
      }

      else
      {
        if (v34 == 285212704)
        {
          v35 = 416;
          v36 = *(v20 + 2);
          if (v36 > 285212703)
          {
            goto LABEL_67;
          }

          goto LABEL_86;
        }

        if (v34 == 285212736)
        {
          v35 = 448;
          v36 = *(v20 + 2);
          if (v36 <= 285212703)
          {
            goto LABEL_86;
          }

          goto LABEL_67;
        }
      }
    }

    else if (v34 <= 536870927)
    {
      if (v34 == 536870916)
      {
        v35 = 0;
        v36 = *(v20 + 2);
        if (v36 > 285212703)
        {
          goto LABEL_67;
        }

        goto LABEL_86;
      }

      if (v34 == 536870920)
      {
        v35 = 32;
        v36 = *(v20 + 2);
        if (v36 <= 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_67;
      }
    }

    else
    {
      switch(v34)
      {
        case 536870928:
          v35 = 64;
          v36 = *(v20 + 2);
          if (v36 <= 285212703)
          {
            goto LABEL_86;
          }

          goto LABEL_67;
        case 536870944:
          v35 = 96;
          v36 = *(v20 + 2);
          if (v36 <= 285212703)
          {
            goto LABEL_86;
          }

          goto LABEL_67;
        case 536870976:
          v35 = 128;
          v36 = *(v20 + 2);
          if (v36 <= 285212703)
          {
            goto LABEL_86;
          }

          goto LABEL_67;
      }
    }

    goto LABEL_124;
  }

  if (v34 <= 31)
  {
    if (v34 > 7)
    {
      if (v34 == 8)
      {
        v35 = 192;
        v36 = *(v20 + 2);
        if (v36 <= 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_67;
      }

      if (v34 == 16)
      {
        v35 = 224;
        v36 = *(v20 + 2);
        if (v36 <= 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_67;
      }
    }

    else
    {
      if (v34 == -1879048176)
      {
        v35 = 384;
        v36 = *(v20 + 2);
        if (v36 <= 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_67;
      }

      if (v34 == 4)
      {
        v35 = 160;
        v36 = *(v20 + 2);
        if (v36 <= 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_67;
      }
    }

    goto LABEL_124;
  }

  if (v34 <= 268435463)
  {
    if (v34 == 32)
    {
      v35 = 256;
      v36 = *(v20 + 2);
      if (v36 <= 285212703)
      {
        goto LABEL_86;
      }

      goto LABEL_67;
    }

    if (v34 == 64)
    {
      v35 = 288;
      v36 = *(v20 + 2);
      if (v36 <= 285212703)
      {
        goto LABEL_86;
      }

      goto LABEL_67;
    }

LABEL_124:
    v35 = 576;
    v36 = *(v20 + 2);
    if (v36 <= 285212703)
    {
      goto LABEL_86;
    }

LABEL_67:
    if (v36 <= 536870915)
    {
      if (v36 > 301989895)
      {
        if (v36 == 301989896)
        {
          v37 = 0x4000;
          goto LABEL_127;
        }

        if (v36 == 335544328)
        {
          v37 = 17408;
          goto LABEL_127;
        }
      }

      else
      {
        if (v36 == 285212704)
        {
          v37 = 13312;
          goto LABEL_127;
        }

        if (v36 == 285212736)
        {
          v37 = 14336;
          goto LABEL_127;
        }
      }
    }

    else if (v36 <= 536870927)
    {
      if (v36 == 536870916)
      {
        v37 = 0;
        goto LABEL_127;
      }

      if (v36 == 536870920)
      {
        v37 = 1024;
        goto LABEL_127;
      }
    }

    else
    {
      switch(v36)
      {
        case 536870928:
          v37 = 2048;
          goto LABEL_127;
        case 536870944:
          v37 = 3072;
          goto LABEL_127;
        case 536870976:
          v37 = 4096;
          goto LABEL_127;
      }
    }

    goto LABEL_126;
  }

  if (v34 == 268435464)
  {
    v35 = 480;
    v36 = *(v20 + 2);
    if (v36 <= 285212703)
    {
      goto LABEL_86;
    }

    goto LABEL_67;
  }

  if (v34 == 268435472)
  {
    v35 = 320;
    v36 = *(v20 + 2);
    if (v36 <= 285212703)
    {
      goto LABEL_86;
    }

    goto LABEL_67;
  }

  if (v34 != 268435488)
  {
    goto LABEL_124;
  }

  v35 = 352;
  v36 = *(v20 + 2);
  if (v36 > 285212703)
  {
    goto LABEL_67;
  }

LABEL_86:
  if (v36 <= 31)
  {
    if (v36 > 7)
    {
      if (v36 == 8)
      {
        v37 = 6144;
        goto LABEL_127;
      }

      if (v36 == 16)
      {
        v37 = 7168;
        goto LABEL_127;
      }
    }

    else
    {
      if (v36 == -1879048176)
      {
        v37 = 12288;
        goto LABEL_127;
      }

      if (v36 == 4)
      {
        v37 = 5120;
        goto LABEL_127;
      }
    }
  }

  else if (v36 <= 268435463)
  {
    if (v36 == 32)
    {
      v37 = 0x2000;
      goto LABEL_127;
    }

    if (v36 == 64)
    {
      v37 = 9216;
      goto LABEL_127;
    }
  }

  else
  {
    switch(v36)
    {
      case 268435464:
        v37 = 15360;
        goto LABEL_127;
      case 268435472:
        v37 = 10240;
        goto LABEL_127;
      case 268435488:
        v37 = 11264;
        goto LABEL_127;
    }
  }

LABEL_126:
  v37 = 18432;
LABEL_127:
  v38 = v37 | v35;
  v39 = *(v282 + 2);
  if (v39 > 285212703)
  {
    if (v39 <= 536870915)
    {
      if (v39 > 301989895)
      {
        if (v39 == 301989896)
        {
          v38 |= 0x80000uLL;
          v40 = *(v25 + 2);
          if (v40 > 285212703)
          {
            goto LABEL_171;
          }

          goto LABEL_190;
        }

        if (v39 == 335544328)
        {
          v38 |= 0x88000uLL;
          v40 = *(v25 + 2);
          if (v40 <= 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_171;
        }
      }

      else
      {
        if (v39 == 285212704)
        {
          v38 |= 0x68000uLL;
          v40 = *(v25 + 2);
          if (v40 > 285212703)
          {
            goto LABEL_171;
          }

          goto LABEL_190;
        }

        if (v39 == 285212736)
        {
          v38 |= 0x70000uLL;
          v40 = *(v25 + 2);
          if (v40 <= 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_171;
        }
      }
    }

    else if (v39 <= 536870927)
    {
      if (v39 == 536870916)
      {
        v40 = *(v25 + 2);
        if (v40 > 285212703)
        {
          goto LABEL_171;
        }

        goto LABEL_190;
      }

      if (v39 == 536870920)
      {
        v38 |= 0x8000uLL;
        v40 = *(v25 + 2);
        if (v40 <= 285212703)
        {
          goto LABEL_190;
        }

        goto LABEL_171;
      }
    }

    else
    {
      switch(v39)
      {
        case 536870928:
          v38 |= 0x10000uLL;
          v40 = *(v25 + 2);
          if (v40 <= 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_171;
        case 536870944:
          v38 |= 0x18000uLL;
          v40 = *(v25 + 2);
          if (v40 <= 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_171;
        case 536870976:
          v38 |= 0x20000uLL;
          v40 = *(v25 + 2);
          if (v40 <= 285212703)
          {
            goto LABEL_190;
          }

          goto LABEL_171;
      }
    }

    goto LABEL_228;
  }

  if (v39 <= 31)
  {
    if (v39 > 7)
    {
      if (v39 == 8)
      {
        v38 |= 0x30000uLL;
        v40 = *(v25 + 2);
        if (v40 <= 285212703)
        {
          goto LABEL_190;
        }

        goto LABEL_171;
      }

      if (v39 == 16)
      {
        v38 |= 0x38000uLL;
        v40 = *(v25 + 2);
        if (v40 <= 285212703)
        {
          goto LABEL_190;
        }

        goto LABEL_171;
      }
    }

    else
    {
      if (v39 == -1879048176)
      {
        v38 |= 0x60000uLL;
        v40 = *(v25 + 2);
        if (v40 <= 285212703)
        {
          goto LABEL_190;
        }

        goto LABEL_171;
      }

      if (v39 == 4)
      {
        v38 |= 0x28000uLL;
        v40 = *(v25 + 2);
        if (v40 <= 285212703)
        {
          goto LABEL_190;
        }

        goto LABEL_171;
      }
    }

    goto LABEL_228;
  }

  if (v39 <= 268435463)
  {
    if (v39 == 32)
    {
      v38 |= 0x40000uLL;
      v40 = *(v25 + 2);
      if (v40 <= 285212703)
      {
        goto LABEL_190;
      }

      goto LABEL_171;
    }

    if (v39 == 64)
    {
      v38 |= 0x48000uLL;
      v40 = *(v25 + 2);
      if (v40 <= 285212703)
      {
        goto LABEL_190;
      }

      goto LABEL_171;
    }

LABEL_228:
    v38 |= 0x90000uLL;
    v40 = *(v25 + 2);
    if (v40 <= 285212703)
    {
      goto LABEL_190;
    }

LABEL_171:
    if (v40 <= 536870915)
    {
      if (v40 > 301989895)
      {
        if (v40 == 301989896)
        {
          v41 = 16;
          goto LABEL_231;
        }

        if (v40 == 335544328)
        {
          v41 = 17;
          goto LABEL_231;
        }
      }

      else
      {
        if (v40 == 285212704)
        {
          v41 = 13;
          goto LABEL_231;
        }

        if (v40 == 285212736)
        {
          v41 = 14;
          goto LABEL_231;
        }
      }
    }

    else if (v40 <= 536870927)
    {
      if (v40 == 536870916)
      {
        v41 = 0;
        goto LABEL_231;
      }

      if (v40 == 536870920)
      {
        v41 = 1;
        goto LABEL_231;
      }
    }

    else
    {
      switch(v40)
      {
        case 536870928:
          v41 = 2;
          goto LABEL_231;
        case 536870944:
          v41 = 3;
          goto LABEL_231;
        case 536870976:
          v41 = 4;
          goto LABEL_231;
      }
    }

    goto LABEL_230;
  }

  if (v39 == 268435464)
  {
    v38 |= 0x78000uLL;
    v40 = *(v25 + 2);
    if (v40 <= 285212703)
    {
      goto LABEL_190;
    }

    goto LABEL_171;
  }

  if (v39 == 268435472)
  {
    v38 |= 0x50000uLL;
    v40 = *(v25 + 2);
    if (v40 <= 285212703)
    {
      goto LABEL_190;
    }

    goto LABEL_171;
  }

  if (v39 != 268435488)
  {
    goto LABEL_228;
  }

  v38 |= 0x58000uLL;
  v40 = *(v25 + 2);
  if (v40 > 285212703)
  {
    goto LABEL_171;
  }

LABEL_190:
  if (v40 <= 31)
  {
    if (v40 > 7)
    {
      if (v40 == 8)
      {
        v41 = 6;
        goto LABEL_231;
      }

      if (v40 == 16)
      {
        v41 = 7;
        goto LABEL_231;
      }
    }

    else
    {
      if (v40 == -1879048176)
      {
        v41 = 12;
        goto LABEL_231;
      }

      if (v40 == 4)
      {
        v41 = 5;
        goto LABEL_231;
      }
    }
  }

  else if (v40 <= 268435463)
  {
    if (v40 == 32)
    {
      v41 = 8;
      goto LABEL_231;
    }

    if (v40 == 64)
    {
      v41 = 9;
      goto LABEL_231;
    }
  }

  else
  {
    switch(v40)
    {
      case 268435464:
        v41 = 15;
        goto LABEL_231;
      case 268435472:
        v41 = 10;
        goto LABEL_231;
      case 268435488:
        v41 = 11;
        goto LABEL_231;
    }
  }

LABEL_230:
  v41 = 18;
LABEL_231:
  *&v42 = -1;
  *(&v42 + 1) = -1;
  v314 = v42;
  v315 = v42;
  v311 = -1;
  v313 = v42;
  v310 = v42;
  v312 = v38 | v41;
  *&v315 = [*(v6 + 16) count] | 0x10100;
  v250 = BaseTensor::GetDimensionSize(v20);
  v271 = BaseTensor::GetDimensionSize(v20);
  v266 = BaseTensor::GetDimensionSize(v20);
  v248 = BaseTensor::GetDimensionSize(v274);
  v43 = BaseTensor::GetDimensionSize(v274);
  v44 = BaseTensor::GetDimensionSize(v274);
  v45 = BaseTensor::GetDimensionSize(v274);
  v269 = BaseTensor::GetDimensionSize(v282);
  v46 = BaseTensor::GetDimensionSize(v282);
  v47 = BaseTensor::GetDimensionSize(v282);
  v275 = BaseTensor::GetDimensionSize(v282);
  v273 = v20;
  v48 = BaseTensor::GetDimensionSize(v20);
  v49 = [*(v6 + 232) graph];
  v50 = **(v49 + 56);
  if (*(*(v49 + 56) + 8) == v50)
  {
    goto LABEL_479;
  }

  v51 = *v50;
  v278 = v6;
  [*(v6 + 16) arrayByAddingObject:*(v6 + 112)];
  v52 = **(v51 + 8);
  if ((*(*(v51 + 8) + 8) - v52) <= 0x10)
  {
    goto LABEL_478;
  }

  *v281 = v250;
  *&v53 = __PAIR64__(v43, v248);
  *(&v53 + 1) = __PAIR64__(v45, v44);
  v251 = v53;
  v54 = v271;
  *&v53 = __PAIR64__(v46, v269);
  v55 = v47;
  *(&v53 + 1) = __PAIR64__(v275, v47);
  v272 = v266;
  v267 = v53;
  v56 = v275 / v45;
  v57 = *(v52 + 16);
  BaseTensor::GetAccessPattern();
  if (!v59 && v256 > 2)
  {
    v60 = 0;
    v61 = v265;
    v62 = MEMORY[0x277CD7370];
    v63 = v254;
    if (v45 >= 4)
    {
      v64 = v257;
      v65 = v267;
      v66 = v251;
      if (v56 > 1)
      {
        goto LABEL_247;
      }

LABEL_243:
      if (v48 != 1)
      {
        v60 = 1;
      }

      goto LABEL_247;
    }

    v64 = v257;
    goto LABEL_246;
  }

  v61 = v265;
  v62 = MEMORY[0x277CD7370];
  v60 = 0;
  if (v256)
  {
    v64 = v257;
    v63 = v254;
LABEL_246:
    v65 = v267;
    v66 = v251;
    goto LABEL_247;
  }

  v65 = v267;
  v66 = v251;
  if (v45 < 4)
  {
    v64 = v257;
    goto LABEL_473;
  }

  v64 = v257;
  if (v58)
  {
LABEL_473:
    v63 = v254;
    goto LABEL_247;
  }

  v63 = v254;
  if (v56 <= 1)
  {
    goto LABEL_243;
  }

LABEL_247:
  if (v264 > 0x10 || v281[0] > 0x10 || v263 > 0x10 || v54 > 0x10 || v262 > 0x10 || v272 > 0x10)
  {
    v72 = 0;
  }

  else
  {
    v72 = 0x1000000;
  }

  if (v252)
  {
    v73 = 0x8000000;
  }

  else
  {
    v73 = 0;
  }

  v258 = ((v54 * *v281 * v272) < 0x7E) & v60;
  v311 = (v73 | (v280 << 28) | ((v272 << 8) + 3840) & 0xF00 | ((v263 << 16) + 983040) & 0xF0000 | ((v264 << 12) - 4096) & 0xF000 | ((v262 << 20) + 15728640) & 0xF00000 | (LOBYTE(v281[0]) - 1) & 0xF | (16 * v54 - 16) & 0xF0) + v72 + ((v56 > 1) << 26) + ((v48 == 1) << 25);
  v301[0] = v66;
  v301[1] = v65;
  *v63.i8 = vmovn_s64(v63);
  v63.i32[2] = v64;
  *&v65 = __PAIR64__(v54, v281[0]);
  DWORD2(v65) = v272;
  v301[2] = v63;
  v301[3] = v65;
  v63.i64[0] = __PAIR64__(v263, v264);
  v63.i32[2] = v262;
  *&v65 = __PAIR64__(v260, v261);
  DWORD2(v65) = v259;
  v302 = v63;
  v303 = v65;
  memset(v305, 0, sizeof(v305));
  v304 = 0;
  v306 = v275 / v45;
  if (v258)
  {
    v74 = 8;
  }

  else
  {
    v74 = 3;
  }

  v255 = v74;
  v309 = 0;
  v307 = 0;
  v308 = 0;
  v219 = *(&v61->super.isa + *MEMORY[0x277CD7360]);
  v222 = *(&v61->super.isa + *MEMORY[0x277CD7368]);
  v216 = v278[29];
  MPSLibrary::CreateUberShaderKey();
  v75 = *(&v61->super.isa + *v62);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    MEMORY[0x23EE7C450](v300, v277, 0);
    v245 = v54 * *v281 * v272;
    v77 = [PipelineStateForMPSKey threadExecutionWidth];
    if (v77 <= 1)
    {
      v78 = 1;
    }

    else
    {
      v78 = v77;
    }

    v79 = *(v247 + 1476);
    v80 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    v249 = PipelineStateForMPSKey;
    v81 = 512;
    if ((v79 & 0x400) == 0)
    {
      v81 = 256;
    }

    if (v80 < v81)
    {
      v81 = v80;
    }

    v82 = 1;
    v290 = vdupq_n_s64(1uLL);
    *v291 = v290;
    *&v291[16] = v290;
    *v292 = xmmword_239B06648;
    *&v292[16] = unk_239B06658;
    v296 = xmmword_239B06648;
    *v297 = unk_239B06658;
    v83 = v46 * v269 * v55 * v275;
    if (v83 <= 0x10000)
    {
      v84 = 32;
    }

    else
    {
      v84 = 8;
    }

    *&v297[16] = 0;
    v298 = v84;
    v299 = 4;
    LODWORD(v85) = v272 * v54;
    v86 = *(&v61->super.isa + *MEMORY[0x277CD7350]);
    if ((v272 * v54 * v281[0]) <= 27)
    {
      v82 = (*(v86 + 1477) & 4) == 0;
    }

    v87 = *(v86 + 1480);
    v88 = v269;
    v89 = 4;
    if (v269 < 4)
    {
      v90 = 1;
    }

    else
    {
      v90 = 4;
    }

    if (v84 <= v269)
    {
      v91 = v84;
    }

    else
    {
      v91 = v90;
    }

    if (v46 < 4)
    {
      v92 = 1;
    }

    else
    {
      v92 = 4;
    }

    if (v84 <= v46)
    {
      v93 = v84;
    }

    else
    {
      v93 = v92;
    }

    v293 = v91;
    v294 = v93;
    if (v55 < 4)
    {
      v89 = 1;
    }

    if (v84 <= v55)
    {
      v89 = v84;
    }

    v295 = v89;
    v94 = 1;
    if (v258)
    {
      v95 = __clz((v275 - 1) ^ v275) ^ 0x3F;
      if (!v275)
      {
        v95 = 64;
      }

      LODWORD(v94) = 1 << v95;
      if ((1 << v95) >= 0x100)
      {
        v94 = 256;
      }

      else
      {
        v94 = v94;
      }

      if (v95 >= 8)
      {
        v96 = 8;
      }

      else
      {
        v96 = v95;
      }

      v97 = v95 >= 3;
      if (v95 < 3)
      {
        v94 = 8;
      }

      *&v292[24] = v94;
      v98 = 3;
      if (v97)
      {
        v98 = v96;
      }

      v99 = v78 >> v98;
      if (v94 > v78)
      {
        v99 = 1;
      }

      v100 = 2 * v94;
      if (((2 * v94 - 1) & (v275 - 1)) > ((v94 - 1) & (v275 - 1)))
      {
        do
        {
          v94 = v100;
          v99 >>= v99 > 1;
          v100 *= 2;
        }

        while (((2 * v94 - 1) & (v275 - 1)) > ((v94 - 1) & (v275 - 1)));
        *&v292[24] = v94;
      }
    }

    else
    {
      v99 = v78;
    }

    *v292 = v99;
    v101 = 3;
    if (v83 <= 0x10000)
    {
      v101 = 5;
    }

    if (v84 <= v269)
    {
      v102 = v101;
    }

    else
    {
      v102 = 2 * (v269 > 3);
    }

    if (v269 <= v99 << v102 >> 1)
    {
      v103 = 1;
      do
      {
        while (v99 < 2)
        {
          v91 >>= 1;
          v293 = v91;
          if (v269 > (v91 * v99) >> 1)
          {
            goto LABEL_332;
          }
        }

        v99 >>= 1;
        *v292 = v99;
        v103 *= 2;
      }

      while (v269 <= (v91 * v99) >> 1);
    }

    else
    {
      v103 = 1;
    }

LABEL_332:
    *&v292[8] = v103;
    if (v84 <= v46)
    {
      v104 = v101;
    }

    else
    {
      v104 = 2 * (v46 > 3);
    }

    if (v46 > v103 << v104 >> 1)
    {
      goto LABEL_344;
    }

    v105 = 1;
    do
    {
      while (v103 > 1)
      {
        v103 >>= 1;
        *&v292[8] = v103;
        v105 *= 2;
        if (v46 > (v93 * v103) >> 1)
        {
          goto LABEL_340;
        }
      }

      v93 >>= 1;
      v294 = v93;
    }

    while (v46 <= (v93 * v103) >> 1);
LABEL_340:
    if (v105 == 1)
    {
      goto LABEL_344;
    }

    v99 *= v105;
    *v292 = v99;
    if (v269 <= (v99 * v91) >> 1)
    {
      v106 = 1;
      if (v269 < 8)
      {
        do
        {
          while (v91 > 2)
          {
            v91 >>= 1;
            v293 = v91;
            if (v269 > (v99 * v91) >> 1)
            {
              goto LABEL_343;
            }
          }

          v99 >>= 1;
          *v292 = v99;
          v106 *= 2;
        }

        while (v269 <= (v99 * v91) >> 1);
      }

      else
      {
        do
        {
          while (v91 < 5)
          {
            v99 >>= 1;
            *v292 = v99;
            v106 *= 2;
            if (v269 > (v99 * v91) >> 1)
            {
              goto LABEL_343;
            }
          }

          v91 >>= 1;
          v293 = v91;
        }

        while (v269 <= (v99 * v91) >> 1);
      }
    }

    else
    {
      v106 = 1;
    }

LABEL_343:
    v107 = v106 * v103;
    *&v292[8] = v107;
    if (v46 > (v107 * v93) >> 1)
    {
LABEL_344:
      v108 = 1;
    }

    else
    {
      v108 = 1;
      do
      {
        while (v93 > 4)
        {
          v93 >>= 1;
          v294 = v93;
          if (v46 > (v107 * v93) >> 1)
          {
            goto LABEL_345;
          }
        }

        v107 >>= 1;
        *&v292[8] = v107;
        v108 *= 2;
      }

      while (v46 <= (v107 * v93) >> 1);
    }

LABEL_345:
    if (v258)
    {
      v109 = 1;
    }

    else
    {
      v109 = 2;
    }

    v110 = 7;
    if ((v258 & 1) == 0)
    {
      v110 = 8;
    }

    v111 = v290.i64[v110] * v108;
    v290.i64[v110] = v111;
    v112 = 12;
    if (v258)
    {
      v112 = 11;
    }

    v284 = v267;
    v113 = v290.u64[v112];
    if (v113 >= 2)
    {
      v114 = *(&v284 & 0xFFFFFFFFFFFFFFF3 | (4 * (v109 & 3)));
      if ((v113 * v111) >> 1 >= v114)
      {
        do
        {
          v115 = v113;
          v113 >>= 1;
        }

        while (v115 >= 4 && (v113 * v111) >> 1 >= v114);
        v290.i64[v112] = v113;
      }
    }

    if (v258)
    {
      v116 = 1;
      *&v292[16] = 1;
    }

    else
    {
      v116 = *&v292[16];
    }

    v117 = *&v292[8];
    v118 = v99 * v94 * v116 * *&v292[8];
    v119 = v118 <= v81 && v118 >= v78;
    v253 = v48;
    v270 = v54;
    if (!v119 || (v118 & (v78 - 1)) != 0)
    {
      if (v258)
      {
        v99 = 1;
      }

      else
      {
        v99 = v78;
      }

      v116 = 1;
      *&v292[8] = vdupq_n_s64(1uLL);
      if (v258)
      {
        v94 = v78;
      }

      else
      {
        v94 = 1;
      }

      *v292 = v99;
      *&v292[24] = v94;
      v117 = 1;
      v118 = v78;
    }

    v120 = (v99 * v91 + v88 - 1) / (v99 * v91);
    v121 = (v46 + v294 * v117 - 1) / (v294 * v117);
    v122 = &v296.u64[1];
    v296.i64[0] = v120;
    v296.i64[1] = v121;
    v123 = (v55 + v295 * v116 - 1) / (v295 * v116);
    v124 = (v275 + v94 - 1) / v94;
    *v297 = v123;
    *&v297[8] = v124;
    v85 = v85;
    if (!v82)
    {
      v85 = 1;
    }

    *&v297[16] = v85;
    v125 = 4;
    if (v281[0] <= 5)
    {
      v126 = 4;
    }

    else
    {
      v126 = 8;
    }

    if (v54 > 5)
    {
      v125 = 8;
    }

    v127 = (v120 - 1) | ((v120 - 1) >> 1) | (((v120 - 1) | ((v120 - 1) >> 1)) >> 2);
    v128 = v127 | (v127 >> 4) | ((v127 | (v127 >> 4)) >> 8);
    v129 = (v128 | (v128 >> 16) | ((v128 | (v128 >> 16)) >> 32)) + 1;
    v130 = (v121 - 1) | ((v121 - 1) >> 1) | (((v121 - 1) | ((v121 - 1) >> 1)) >> 2);
    v131 = v130 | (v130 >> 4) | ((v130 | (v130 >> 4)) >> 8);
    v132 = (v131 | (v131 >> 16) | ((v131 | (v131 >> 16)) >> 32)) + 1;
    if (v132 * v129 * v118 <= v81)
    {
      v99 *= v129;
      v117 *= v132;
      *v292 = v99;
      *&v292[8] = v117;
      v121 = 1;
      v296.i64[0] = 1;
      v133 = &v296.u64[1];
      v120 = 1;
    }

    else if (v120 < 2 || v120 > v126 || v129 * v118 > v81)
    {
      if (v121 > v125 || v132 * v118 > v81)
      {
LABEL_387:
        v134 = v116 * v94 * v117 * v99;
        v135 = v123 * v85 * v124 * v121 * v120;
        v136 = v134 / v78;
        v137 = 16 * v87;
        if (v134 / v78 * v135 < v137)
        {
          v299 = 1;
          v138 = 2;
          while (1)
          {
            while (1)
            {
              v141 = *(&v293 + v138);
              if (v141 <= v299)
              {
                break;
              }

              *(&v293 + v138) = v141 >> 1;
              v283 = v267;
              v139 = *&v292[8 * v138] * (v141 >> 1);
              v296.i64[v138] = (*(&v283 & 0xFFFFFFFFFFFFFFF3 | (4 * (v138 & 3))) + v139 - 1) / v139;
              v121 = v296.u64[1];
              v120 = v296.i64[0];
              v123 = *v297;
              v85 = *&v297[16];
              v124 = *&v297[8];
              v135 = v296.i64[1] * v296.i64[0] * *v297 * *&v297[8] * *&v297[16];
              v140 = v135 * v136;
              if (v135 * v136 >= v137)
              {
                goto LABEL_393;
              }
            }

            if (v138 == ((v258 & 1) == 0))
            {
              break;
            }

            --v138;
            v140 = v135 * v136;
            if (v135 * v136 >= v137)
            {
LABEL_393:
              if (v258 & 1 | (v140 >= v137))
              {
                goto LABEL_394;
              }

              goto LABEL_443;
            }
          }

          if (v258 & 1 | (v135 * v136 >= v137))
          {
            goto LABEL_394;
          }

LABEL_443:
          v205 = v293;
          if (v293 > v299)
          {
            v206 = v85 * v136 * v124 * v123 * v121;
            do
            {
              v205 >>= 1;
              v120 = (v205 * *v292 + v88 - 1) / (v205 * *v292);
            }

            while (v205 > v299 && v206 * v120 < v137);
            v293 = v205;
            v296.i64[0] = (v205 * *v292 + v88 - 1) / (v205 * *v292);
          }
        }

LABEL_394:
        v142 = (v120 - 1) | ((v120 - 1) >> 1) | (((v120 - 1) | ((v120 - 1) >> 1)) >> 2);
        v143 = v142 | (v142 >> 4) | ((v142 | (v142 >> 4)) >> 8);
        v144 = (v143 | (v143 >> 16) | ((v143 | (v143 >> 16)) >> 32)) + 1;
        v145 = (v121 - 1) | ((v121 - 1) >> 1) | (((v121 - 1) | ((v121 - 1) >> 1)) >> 2);
        v146 = v145 | (v145 >> 4) | ((v145 | (v145 >> 4)) >> 8);
        v147 = (v146 | (v146 >> 16) | ((v146 | (v146 >> 16)) >> 32)) + 1;
        if (v144 * v134 * v147 <= v81)
        {
          v149 = *&v292[8] * v147;
          *v292 *= v144;
          *&v292[8] *= v147;
          v121 = 1;
          v296.i64[0] = 1;
          v120 = 1;
        }

        else
        {
          v148 = v120 < 2 || v120 > v126;
          if (v148 || v144 * v134 > v81)
          {
            v149 = *&v292[8];
            if (v121 > v125 || v147 * v134 > v81)
            {
              goto LABEL_403;
            }

            v149 = *&v292[8] * v147;
            *&v292[8] *= v147;
            v121 = 1;
          }

          else
          {
            v149 = *&v292[8];
            *v292 *= v144;
            v120 = 1;
            v122 = &v296;
          }
        }

        v122->i64[0] = 1;
LABEL_403:
        v150 = *v292;
        v243 = *v292;
        v244 = *&v292[16];
        if (v258)
        {
          v151 = v149;
        }

        else
        {
          v151 = *&v292[16];
        }

        if (v258)
        {
          v152 = *v292;
        }

        else
        {
          v152 = v149;
        }

        v153 = *&v292[24];
        if (v258)
        {
          v150 = *&v292[24];
        }

        v290.i64[0] = v150;
        v290.i64[1] = v152;
        *v291 = v151;
        *&v291[8] = v120;
        *&v291[16] = v121;
        *&v291[24] = v123 * v85 * v124;
        if (v258)
        {
          *&v291[8] = v124;
          *&v291[16] = v120;
          *&v291[24] = v121 * v123 * v85;
        }

        else
        {
          v153 = 1;
        }

        v268 = v149;
        v154 = 4 * (v281[0] - 27) * v153;
        if (v281[0] <= 27)
        {
          v154 = 0;
        }

        v241 = v154;
        v242 = v153;
        LODWORD(v304) = 0;
        if ((*(&v61->super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
        {
          v155 = v278[2];
          BaseTensor::GetAccessPattern();
          v240 = v156;
          v287 = v156;
          v157 = v278[2];
          BaseTensor::GetAccessPattern();
          v239 = v158;
          v285 = v158;
          v159 = v278[2];
          v316[0] = v278[14];
          [MEMORY[0x277CBEA60] arrayWithObjects:v316 count:1];
          BaseTensor::GetAccessPattern();
          v238 = v160;
          v289 = v160;
          v161 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
          v161[v240] = 0;
          v161[BYTE1(v240)] = 1;
          v161[BYTE2(v240)] = 2;
          v161[BYTE3(v240)] = 3;
          v161[BYTE4(v240)] = 4;
          v161[BYTE5(v240)] = 5;
          v161[BYTE6(v240)] = 6;
          v161[BYTE7(v240)] = 7;
          v161[BYTE8(v240)] = 8;
          v161[BYTE9(v240)] = 9;
          v161[BYTE10(v240)] = 10;
          v161[BYTE11(v240)] = 11;
          v161[BYTE12(v240)] = 12;
          v161[BYTE13(v240)] = 13;
          v161[BYTE14(v240)] = 14;
          v161[HIBYTE(v240)] = 15;
          v162 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
          v162[v239.u8[0]] = 0;
          v162[v239.u8[1]] = 1;
          v162[v239.u8[2]] = 2;
          v162[v239.u8[3]] = 3;
          v162[v239.u8[4]] = 4;
          v162[v239.u8[5]] = 5;
          v162[v239.u8[6]] = 6;
          v162[v239.u8[7]] = 7;
          v162[v239.u8[8]] = 8;
          v162[v239.u8[9]] = 9;
          v162[v239.u8[10]] = 10;
          v162[v239.u8[11]] = 11;
          v162[v239.u8[12]] = 12;
          v162[v239.u8[13]] = 13;
          v162[v239.u8[14]] = 14;
          v162[v239.u8[15]] = 15;
          v163 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
          v163[v238] = 0;
          v163[BYTE1(v238)] = 1;
          v163[BYTE2(v238)] = 2;
          v163[BYTE3(v238)] = 3;
          v163[BYTE4(v238)] = 4;
          v163[BYTE5(v238)] = 5;
          v163[BYTE6(v238)] = 6;
          v163[BYTE7(v238)] = 7;
          v163[BYTE8(v238)] = 8;
          v163[BYTE9(v238)] = 9;
          v163[BYTE10(v238)] = 10;
          v163[BYTE11(v238)] = 11;
          v163[BYTE12(v238)] = 12;
          v163[BYTE13(v238)] = 13;
          v163[BYTE14(v238)] = 14;
          v163[HIBYTE(v238)] = 15;
          v164 = v161[4];
          LODWORD(v240) = BaseTensor::GetDimensionSize(v274);
          v165 = v161[3];
          v239.i32[0] = BaseTensor::GetDimensionSize(v274);
          v166 = v161[2];
          LODWORD(v238) = BaseTensor::GetDimensionSize(v274);
          v167 = v161[1];
          v237 = BaseTensor::GetDimensionSize(v274);
          v168 = *v161;
          v236 = BaseTensor::GetDimensionSize(v274);
          v169 = v162[3];
          v235 = BaseTensor::GetDimensionSize(v273);
          v170 = v162[2];
          v234 = BaseTensor::GetDimensionSize(v273);
          v171 = v162[1];
          v233 = BaseTensor::GetDimensionSize(v273);
          v172 = *v162;
          v232 = BaseTensor::GetDimensionSize(v273);
          v173 = v163[4];
          v231 = BaseTensor::GetDimensionSize(v282);
          v174 = v163[3];
          v175 = BaseTensor::GetDimensionSize(v282);
          v176 = v163[2];
          LODWORD(v159) = BaseTensor::GetDimensionSize(v282);
          v177 = v163[1];
          v178 = BaseTensor::GetDimensionSize(v282);
          v179 = *v163;
          v180 = BaseTensor::GetDimensionSize(v282);
          v181 = dataTypeToString(*(v274 + 2));
          v182 = dataTypeToString(v273[2]);
          v183 = dataTypeToString(*(v282 + 2));
          v230 = v175;
          v61 = v265;
          MPSKernel_LogInfo(v265, v184, "-test MPSNDArrayDepthwiseConv3DTest -srcShapes [%u,%u,%u,%u,%u] [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u,%u] -srcDataTypes %s %s -dstDataTypes %s -cAxis %u -strides [1,%lu,%lu,%lu] -dilationRates [1,%lu,%lu,%lu] ", v240, v239.i32[0], v238, v237, v236, v235, v234, v233, v232, v231, v230, v159, v178, v180, v181, v182, v183, v280, v262, v263, v264, v259, v260, v261);
          free(v161);
          free(v162);
          free(v163);
          printDWTranspose(v265, &v287, 0, 1);
          printDWTranspose(v265, &v285, 1, 1);
          printDWTranspose(v265, &v289, 0, 0);
          MPSKernel_LogInfo(v265, v185, "-runMode weightGrad ");
          MPSKernel_LogInfo(v265, v186, ",\n");
          v62 = MEMORY[0x277CD7370];
          v48 = v253;
          v54 = v270;
        }

        v187 = (&CommonKernels)[16 * v255];
        v220 = *(&v61->super.isa + *MEMORY[0x277CD7360]);
        v223 = *(&v61->super.isa + *MEMORY[0x277CD7368]);
        v217 = v278[29];
        MPSLibrary::CreateUberShaderKey();
        v188 = *(&v61->super.isa + *v62);
        v189 = v246;
        v190 = v249;
        v191 = MPSLibrary::GetPipelineStateForMPSKey();
        if (!v191)
        {
          v10 = -1;
LABEL_470:
          MPSAutoCache::~MPSAutoCache(v300);
          goto LABEL_471;
        }

        v192 = *(&v61->super.isa + *v62);
        MPSLibrary::ReleaseMPSKey();
        v193 = 1.0 / *v297;
        *(&v304 + 1) = v193;
        *v305 = *v297;
        *&v305[4] = vmovn_s64(*&v297[8]);
        if (v258)
        {
          v194 = 1.0 / v296.u64[1];
          *(&v304 + 1) = v194;
          *v305 = v296.i32[2];
          *&v305[4] = *v297;
        }

        v195 = *&v297[8];
        if (v48 != 1)
        {
          v195 = v275;
        }

        if ((4 * v245 * *v297 * v195 * v296.i64[1] * v296.i64[0]) <= 0x10)
        {
          v196 = 16;
        }

        else
        {
          v196 = 4 * v245 * *v297 * v195 * v296.i64[1] * v296.i64[0];
        }

        TempBuffer = MPSAutoCache::GetTempBuffer(v300, v196, 0);
        [v246 setComputePipelineState:{v191, v217, v220, v223, 0, 0}];
        MPSSetNDArraysOnComputeEncoder(v246, v278, 4, 0, 0);
        [v246 setBytes:v301 length:144 atIndex:29];
        [v246 setBuffer:TempBuffer offset:0 atIndex:28];
        [v246 setThreadgroupMemoryLength:(v242 * 4 * v268 * v244 * v243 + v241 + 15) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
        if ((atomic_load_explicit(&qword_27DF867E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF867E8))
        {
          _MergedGlobals_7 = [objc_msgSend(objc_msgSend(v277 "commandQueue")];
          __cxa_guard_release(&qword_27DF867E8);
          v61 = v265;
          v189 = v246;
          v62 = MEMORY[0x277CD7370];
          v48 = v253;
          v54 = v270;
          v190 = v249;
        }

        *[_MergedGlobals_7 contents] = 0;
        [v189 setBuffer:_MergedGlobals_7 offset:0 atIndex:27];
        v287 = *&v291[8];
        v288 = *&v291[24];
        v285 = v290;
        v286 = *v291;
        [v189 dispatchThreadgroups:&v287 threadsPerThreadgroup:&v285];
        [v189 setComputePipelineState:v190];
        *v198.i8 = vmovn_s64(v296);
        v198.i64[1] = __PAIR64__(v275, *v297);
        v199 = v198;
        v199.i32[3] = 1;
        v200.i32[0] = 1;
        v201.i32[0] = v48;
        v301[0] = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v201, v200), 0), v199, v198);
        v302.i32[0] = *&v297[8];
        [v189 setBytes:v301 length:144 atIndex:29];
        if (v48 == 1)
        {
          if (v290.i64[0])
          {
            v202 = (*v281 + v290.i64[0] - 1) / v290.i64[0];
            if (v290.i64[1])
            {
              goto LABEL_430;
            }
          }

          else
          {
            v202 = 0;
            if (v290.i64[1])
            {
LABEL_430:
              v203 = (v54 + v290.i64[1] - 1) / v290.i64[1];
              if (*v291)
              {
LABEL_431:
                v204 = (v272 + *v291 - 1) / *v291;
LABEL_469:
                *&v287 = v202;
                *(&v287 + 1) = v203;
                v288 = v204;
                v285 = v290;
                v286 = *v291;
                [v189 dispatchThreadgroups:&v287 threadsPerThreadgroup:&v285];
                v207 = *(&v61->super.isa + *v62);
                MPSLibrary::ReleaseMPSKey();
                MPSLibrary::ReleaseComputeState();
                MPSLibrary::ReleaseComputeState();
                v10 = 0;
                goto LABEL_470;
              }

LABEL_465:
              v204 = 0;
              goto LABEL_469;
            }
          }

          v203 = 0;
          if (*v291)
          {
            goto LABEL_431;
          }

          goto LABEL_465;
        }

        if (v290.i64[0])
        {
          v202 = (*v281 + v290.i64[0] - 1) / v290.i64[0];
          if (v290.i64[1])
          {
LABEL_435:
            v203 = (v54 + v290.i64[1] - 1) / v290.i64[1];
LABEL_468:
            v204 = v275;
            goto LABEL_469;
          }
        }

        else
        {
          v202 = 0;
          if (v290.i64[1])
          {
            goto LABEL_435;
          }
        }

        v203 = 0;
        goto LABEL_468;
      }

      v117 *= v132;
      *&v292[8] = v117;
      v121 = 1;
      v133 = &v296.u64[1];
    }

    else
    {
      v99 *= v129;
      *v292 = v99;
      v120 = 1;
      v133 = &v296;
    }

    v133->i64[0] = 1;
    goto LABEL_387;
  }

  v10 = -1;
LABEL_471:
  v208 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_239A0AE70(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF867E8);
  MPSAutoCache::~MPSAutoCache(&STACK[0x388]);
  _Unwind_Resume(a1);
}

uint64_t EncodeDWConvGradientBackPropImpl(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v7 = a4;
  v251[1] = *MEMORY[0x277D85DE8];
  v217 = *(a1 + *MEMORY[0x277CD7370]);
  v213 = *(a1 + 192);
  v210 = *(a1 + 200);
  v206 = *(a1 + 168);
  v9 = *(a1 + 184);
  v212 = *(a1 + 216);
  v10 = *(a1 + 148);
  v211 = *(a1 + 232);
  if (*(a1 + 160) >= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = *(a1 + 160);
  }

  v229 = v11;
  v218 = *(a1 + 160);
  v12 = [*(a4 + 232) graph];
  v13 = **(v12 + 56);
  if (*(*(v12 + 56) + 8) == v13 || (v14 = *(*v13 + 8), v15 = [*(v7 + 232) graph], v16 = **(v15 + 56), *(*(v15 + 56) + 8) == v16))
  {
LABEL_394:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v18 = *(*v16 + 24);
  v17 = *v18;
  if (*(v18 + 8) == *v18)
  {
    goto LABEL_393;
  }

  v19 = *v17;
  v20 = *v14;
  v21 = v14[1];
  v205 = v9;
  v204 = a5;
  if (a6)
  {
    v22 = v21 - v20;
    if (v21 == v20)
    {
      goto LABEL_393;
    }

    v23 = *v14;
    v24 = v19;
    if (v22 <= 8)
    {
      goto LABEL_393;
    }
  }

  else
  {
    v25 = v21 - v20;
    if (v25 <= 8 || v25 == 16)
    {
      goto LABEL_393;
    }

    v24 = *v20;
    v23 = v20 + 2;
  }

  v26 = v20[1];
  v27 = *v23;
  v28 = MEMORY[0x277CD7378];
  v222 = v7;
  v214 = v19;
  v231 = *v23;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (v218 >= 4 && MTLReportFailureTypeEnabled())
    {
      v167 = a1;
      v169 = v218;
      MTLReportFailure();
    }

    BaseTensor::GetDimensionSize(v27);
    BaseTensor::GetDimensionSize(v26);
    DimensionSize = BaseTensor::GetDimensionSize(v27);
    if (DimensionSize != BaseTensor::GetDimensionSize(v26) && MTLReportFailureTypeEnabled())
    {
      v169 = BaseTensor::GetDimensionSize(v24);
      v171 = BaseTensor::GetDimensionSize(v27);
      v167 = a1;
      MTLReportFailure();
    }

    v30 = BaseTensor::GetDimensionSize(v19);
    if (v30 == BaseTensor::GetDimensionSize(v24))
    {
      v31 = BaseTensor::GetDimensionSize(v19);
      if (v31 == BaseTensor::GetDimensionSize(v24))
      {
        v32 = BaseTensor::GetDimensionSize(v19);
        if (v32 == BaseTensor::GetDimensionSize(v24))
        {
          BaseTensor::GetDimensionSize(v19);
          BaseTensor::GetDimensionSize(v24);
        }
      }
    }

    v33 = BaseTensor::GetDimensionSize(v19);
    if (v33 != BaseTensor::GetDimensionSize(v24) || (v34 = BaseTensor::GetDimensionSize(v19), v34 != BaseTensor::GetDimensionSize(v24)) || (v35 = BaseTensor::GetDimensionSize(v19), v35 != BaseTensor::GetDimensionSize(v24)) || (v36 = BaseTensor::GetDimensionSize(v19), v36 != BaseTensor::GetDimensionSize(v24)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v228 = BaseTensor::GetDimensionSize(v24);
        v224 = BaseTensor::GetDimensionSize(v24);
        v162 = v26;
        v163 = BaseTensor::GetDimensionSize(v24);
        v164 = BaseTensor::GetDimensionSize(v24);
        v165 = BaseTensor::GetDimensionSize(v19);
        v166 = BaseTensor::GetDimensionSize(v19);
        v177 = BaseTensor::GetDimensionSize(v214);
        v178 = BaseTensor::GetDimensionSize(v214);
        v175 = v165;
        v176 = v166;
        v19 = v214;
        v173 = v163;
        v174 = v164;
        v27 = v231;
        v26 = v162;
        v169 = v228;
        v171 = v224;
        v167 = a1;
        MTLReportFailure();
      }
    }
  }

  v209 = a1;
  if ((*(a1 + *v28) & 0x10) != 0)
  {
    v37 = *(v7 + 16);
    BaseTensor::GetAccessPattern();
    v225 = v38;
    v236[0] = v38;
    v39 = *(v7 + 16);
    v220 = v26;
    BaseTensor::GetAccessPattern();
    v245 = v40;
    v41 = *(v7 + 16);
    v183 = BYTE1(v40);
    v184 = BYTE2(v40);
    v185 = BYTE3(v40);
    v187 = BYTE4(v40);
    v188 = BYTE5(v40);
    v189 = BYTE6(v40);
    v190 = BYTE7(v40);
    v192 = BYTE8(v40);
    v194 = BYTE9(v40);
    v198 = BYTE10(v40);
    v200 = BYTE11(v40);
    v196 = v40;
    v202 = BYTE12(v40);
    if (*(v7 + 112))
    {
      v251[0] = *(v7 + 112);
      [MEMORY[0x277CBEA60] arrayWithObjects:v251 count:1];
    }

    BaseTensor::GetAccessPattern();
    v186 = v42;
    v234 = v42;
    v43 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v43[v225] = 0;
    v43[BYTE1(v225)] = 1;
    v43[BYTE2(v225)] = 2;
    v43[BYTE3(v225)] = 3;
    v43[BYTE4(v225)] = 4;
    v43[BYTE5(v225)] = 5;
    v43[BYTE6(v225)] = 6;
    v43[BYTE7(v225)] = 7;
    v43[BYTE8(v225)] = 8;
    v43[BYTE9(v225)] = 9;
    v43[BYTE10(v225)] = 10;
    v43[BYTE11(v225)] = 11;
    v43[BYTE12(v225)] = 12;
    v43[BYTE13(v225)] = 13;
    v43[BYTE14(v225)] = 14;
    v43[HIBYTE(v225)] = 15;
    v44 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v44[v196] = 0;
    v44[v183] = 1;
    v44[v184] = 2;
    v44[v185] = 3;
    v44[v187] = 4;
    v44[v188] = 5;
    v44[v189] = 6;
    v44[v190] = 7;
    v44[v192] = 8;
    v44[v194] = 9;
    v44[v198] = 10;
    v44[v200] = 11;
    v44[v202] = 12;
    v44[BYTE13(v245)] = 13;
    v44[BYTE14(v245)] = 14;
    v44[HIBYTE(v245)] = 15;
    v45 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v45[v186] = 0;
    v45[BYTE1(v234)] = 1;
    v45[BYTE2(v234)] = 2;
    v45[BYTE3(v234)] = 3;
    v45[BYTE4(v234)] = 4;
    v45[BYTE5(v234)] = 5;
    v45[BYTE6(v234)] = 6;
    v45[BYTE7(v234)] = 7;
    v45[BYTE8(v234)] = 8;
    v45[BYTE9(v234)] = 9;
    v45[BYTE10(v234)] = 10;
    v45[BYTE11(v234)] = 11;
    v45[BYTE12(v234)] = 12;
    v45[BYTE13(v234)] = 13;
    v45[BYTE14(v234)] = 14;
    v45[HIBYTE(v234)] = 15;
    v46 = v43[4];
    v226 = BaseTensor::GetDimensionSize(v24);
    v47 = v43[3];
    v203 = BaseTensor::GetDimensionSize(v24);
    v48 = v43[2];
    v201 = BaseTensor::GetDimensionSize(v24);
    v49 = v43[1];
    v199 = BaseTensor::GetDimensionSize(v24);
    v50 = *v43;
    v197 = BaseTensor::GetDimensionSize(v24);
    v51 = v44[3];
    v195 = BaseTensor::GetDimensionSize(v220);
    v52 = v44[2];
    v193 = BaseTensor::GetDimensionSize(v220);
    v53 = v44[1];
    v191 = BaseTensor::GetDimensionSize(v220);
    v54 = *v44;
    LODWORD(v44) = BaseTensor::GetDimensionSize(v220);
    v55 = v45[4];
    v56 = BaseTensor::GetDimensionSize(v231);
    v57 = v45[3];
    v58 = BaseTensor::GetDimensionSize(v231);
    v59 = v45[2];
    v60 = BaseTensor::GetDimensionSize(v231);
    v61 = v45[1];
    LODWORD(v43) = BaseTensor::GetDimensionSize(v231);
    v62 = *v45;
    LODWORD(v45) = BaseTensor::GetDimensionSize(v231);
    v63 = dataTypeToString(v24[2]);
    v64 = dataTypeToString(v220[2]);
    v65 = dataTypeToString(v231[2]);
    v182 = vextq_s8(v212, v212, 8uLL);
    v181 = vextq_s8(v210, v210, 8uLL);
    v179 = v43;
    v180 = v45;
    v26 = v220;
    v27 = v231;
    MPSKernel_LogInfo(v209, v66, "-test MPSNDArrayDepthwiseConv3DTest -srcShapes [%u,%u,%u,%u,%u] [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u,%u] -srcDataTypes %s %s -dstDataTypes %s -cAxis %u -strides [1,%lu,%lu,%lu] -dilationRates [1,%lu,%lu,%lu] ", v226, v203, v201, v199, v197, v195, v193, v191, v44, v56, v58, v60, v179, v180, v63, v64, v65, v229, v181.i64[0], v181.i64[1], v213, v211, v182.i64[0], v182.i64[1]);
    printDWTranspose(v209, v236, 0, 1);
    printDWTranspose(v209, &v245, 1, 1);
    printDWTranspose(v209, &v234, 0, 0);
    if (a6)
    {
      MPSKernel_LogInfo(v209, v67, "-runMode dataGradNew ");
    }

    else
    {
      MPSKernel_LogInfo(v209, v67, "-runMode dataGrad ");
    }

    MPSKernel_LogInfo(v209, v68, ",\n");
    v7 = v222;
    v19 = v214;
  }

  v69 = v24[2];
  if (v69 > 285212703)
  {
    if (v69 <= 536870915)
    {
      if (v69 > 301989895)
      {
        if (v69 == 301989896)
        {
          v70 = 512;
          v71 = v26[2];
          if (v71 <= 285212703)
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (v69 != 335544328)
          {
            goto LABEL_122;
          }

          v70 = 544;
          v71 = v26[2];
          if (v71 <= 285212703)
          {
            goto LABEL_92;
          }
        }
      }

      else if (v69 == 285212704)
      {
        v70 = 416;
        v71 = v26[2];
        if (v71 <= 285212703)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v69 != 285212736)
        {
          goto LABEL_122;
        }

        v70 = 448;
        v71 = v26[2];
        if (v71 <= 285212703)
        {
          goto LABEL_92;
        }
      }
    }

    else if (v69 <= 536870927)
    {
      if (v69 == 536870916)
      {
        v70 = 0;
        v71 = v26[2];
        if (v71 > 285212703)
        {
          goto LABEL_123;
        }

        goto LABEL_92;
      }

      if (v69 != 536870920)
      {
        goto LABEL_122;
      }

      v70 = 32;
      v71 = v26[2];
      if (v71 <= 285212703)
      {
        goto LABEL_92;
      }
    }

    else
    {
      switch(v69)
      {
        case 536870928:
          v70 = 64;
          v71 = v26[2];
          if (v71 <= 285212703)
          {
            goto LABEL_92;
          }

          break;
        case 536870944:
          v70 = 96;
          v71 = v26[2];
          if (v71 <= 285212703)
          {
            goto LABEL_92;
          }

          break;
        case 536870976:
          v70 = 128;
          v71 = v26[2];
          if (v71 <= 285212703)
          {
            goto LABEL_92;
          }

          break;
        default:
          goto LABEL_122;
      }
    }
  }

  else if (v69 <= 31)
  {
    if (v69 > 7)
    {
      if (v69 == 8)
      {
        v70 = 192;
        v71 = v26[2];
        if (v71 <= 285212703)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v69 != 16)
        {
          goto LABEL_122;
        }

        v70 = 224;
        v71 = v26[2];
        if (v71 <= 285212703)
        {
          goto LABEL_92;
        }
      }
    }

    else if (v69 == -1879048176)
    {
      v70 = 384;
      v71 = v26[2];
      if (v71 <= 285212703)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v69 != 4)
      {
        goto LABEL_122;
      }

      v70 = 160;
      v71 = v26[2];
      if (v71 <= 285212703)
      {
        goto LABEL_92;
      }
    }
  }

  else if (v69 <= 268435463)
  {
    if (v69 == 32)
    {
      v70 = 256;
      v71 = v26[2];
      if (v71 <= 285212703)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v69 != 64)
      {
        goto LABEL_122;
      }

      v70 = 288;
      v71 = v26[2];
      if (v71 <= 285212703)
      {
        goto LABEL_92;
      }
    }
  }

  else
  {
    switch(v69)
    {
      case 268435464:
        v70 = 480;
        v71 = v26[2];
        if (v71 <= 285212703)
        {
          goto LABEL_92;
        }

        break;
      case 268435472:
        v70 = 320;
        v71 = v26[2];
        if (v71 <= 285212703)
        {
          goto LABEL_92;
        }

        break;
      case 268435488:
        v70 = 352;
        v71 = v26[2];
        if (v71 > 285212703)
        {
          break;
        }

LABEL_92:
        if (v71 <= 31)
        {
          if (v71 > 7)
          {
            if (v71 == 8)
            {
              v70 |= 0x1800uLL;
              v72 = v27[2];
              if (v72 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            }

            if (v71 == 16)
            {
              v70 |= 0x1C00uLL;
              v72 = v27[2];
              if (v72 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            }
          }

          else
          {
            if (v71 == -1879048176)
            {
              v70 |= 0x3000uLL;
              v72 = v27[2];
              if (v72 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            }

            if (v71 == 4)
            {
              v70 |= 0x1400uLL;
              v72 = v27[2];
              if (v72 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            }
          }
        }

        else if (v71 <= 268435463)
        {
          if (v71 == 32)
          {
            v70 |= 0x2000uLL;
            v72 = v27[2];
            if (v72 > 285212703)
            {
              goto LABEL_183;
            }

            goto LABEL_152;
          }

          if (v71 == 64)
          {
            v70 |= 0x2400uLL;
            v72 = v27[2];
            if (v72 > 285212703)
            {
              goto LABEL_183;
            }

            goto LABEL_152;
          }
        }

        else
        {
          switch(v71)
          {
            case 268435464:
              v70 |= 0x3C00uLL;
              v72 = v27[2];
              if (v72 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            case 268435472:
              v70 |= 0x2800uLL;
              v72 = v27[2];
              if (v72 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
            case 268435488:
              v70 |= 0x2C00uLL;
              v72 = v27[2];
              if (v72 > 285212703)
              {
                goto LABEL_183;
              }

              goto LABEL_152;
          }
        }

LABEL_182:
        v70 |= 0x4800uLL;
        v72 = v27[2];
        if (v72 > 285212703)
        {
          goto LABEL_183;
        }

        goto LABEL_152;
      default:
LABEL_122:
        v70 = 576;
        v71 = v26[2];
        if (v71 > 285212703)
        {
          break;
        }

        goto LABEL_92;
    }
  }

LABEL_123:
  if (v71 <= 536870915)
  {
    if (v71 > 301989895)
    {
      if (v71 == 301989896)
      {
        v70 |= 0x4000uLL;
        v72 = v27[2];
        if (v72 <= 285212703)
        {
          goto LABEL_152;
        }
      }

      else
      {
        if (v71 != 335544328)
        {
          goto LABEL_182;
        }

        v70 |= 0x4400uLL;
        v72 = v27[2];
        if (v72 <= 285212703)
        {
          goto LABEL_152;
        }
      }
    }

    else if (v71 == 285212704)
    {
      v70 |= 0x3400uLL;
      v72 = v27[2];
      if (v72 <= 285212703)
      {
        goto LABEL_152;
      }
    }

    else
    {
      if (v71 != 285212736)
      {
        goto LABEL_182;
      }

      v70 |= 0x3800uLL;
      v72 = v27[2];
      if (v72 <= 285212703)
      {
        goto LABEL_152;
      }
    }
  }

  else if (v71 <= 536870927)
  {
    if (v71 == 536870916)
    {
      v72 = v27[2];
      if (v72 > 285212703)
      {
        goto LABEL_183;
      }

      goto LABEL_152;
    }

    if (v71 != 536870920)
    {
      goto LABEL_182;
    }

    v70 |= 0x400uLL;
    v72 = v27[2];
    if (v72 <= 285212703)
    {
      goto LABEL_152;
    }
  }

  else
  {
    switch(v71)
    {
      case 536870928:
        v70 |= 0x800uLL;
        v72 = v27[2];
        if (v72 <= 285212703)
        {
          goto LABEL_152;
        }

        break;
      case 536870944:
        v70 |= 0xC00uLL;
        v72 = v27[2];
        if (v72 <= 285212703)
        {
          goto LABEL_152;
        }

        break;
      case 536870976:
        v70 |= 0x1000uLL;
        v72 = v27[2];
        if (v72 > 285212703)
        {
          break;
        }

LABEL_152:
        if (v72 <= 31)
        {
          if (v72 > 7)
          {
            if (v72 == 8)
            {
              v70 |= 0x30000uLL;
              v73 = v19[2];
              if (v73 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
            }

            if (v72 == 16)
            {
              v70 |= 0x38000uLL;
              v73 = v19[2];
              if (v73 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
            }
          }

          else
          {
            if (v72 == -1879048176)
            {
              v70 |= 0x60000uLL;
              v73 = v19[2];
              if (v73 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
            }

            if (v72 == 4)
            {
              v70 |= 0x28000uLL;
              v73 = v19[2];
              if (v73 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
            }
          }
        }

        else if (v72 <= 268435463)
        {
          if (v72 == 32)
          {
            v70 |= 0x40000uLL;
            v73 = v19[2];
            if (v73 > 285212703)
            {
              goto LABEL_234;
            }

            goto LABEL_212;
          }

          if (v72 == 64)
          {
            v70 |= 0x48000uLL;
            v73 = v19[2];
            if (v73 > 285212703)
            {
              goto LABEL_234;
            }

            goto LABEL_212;
          }
        }

        else
        {
          switch(v72)
          {
            case 268435464:
              v70 |= 0x78000uLL;
              v73 = v19[2];
              if (v73 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
            case 268435472:
              v70 |= 0x50000uLL;
              v73 = v19[2];
              if (v73 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
            case 268435488:
              v70 |= 0x58000uLL;
              v73 = v19[2];
              if (v73 > 285212703)
              {
                goto LABEL_234;
              }

              goto LABEL_212;
          }
        }

LABEL_233:
        v70 |= 0x90000uLL;
        v73 = v19[2];
        if (v73 > 285212703)
        {
          goto LABEL_234;
        }

        goto LABEL_212;
      default:
        goto LABEL_182;
    }
  }

LABEL_183:
  if (v72 <= 536870915)
  {
    if (v72 > 301989895)
    {
      if (v72 == 301989896)
      {
        v70 |= 0x80000uLL;
        v73 = v19[2];
        if (v73 <= 285212703)
        {
          goto LABEL_212;
        }
      }

      else
      {
        if (v72 != 335544328)
        {
          goto LABEL_233;
        }

        v70 |= 0x88000uLL;
        v73 = v19[2];
        if (v73 <= 285212703)
        {
          goto LABEL_212;
        }
      }
    }

    else if (v72 == 285212704)
    {
      v70 |= 0x68000uLL;
      v73 = v19[2];
      if (v73 <= 285212703)
      {
        goto LABEL_212;
      }
    }

    else
    {
      if (v72 != 285212736)
      {
        goto LABEL_233;
      }

      v70 |= 0x70000uLL;
      v73 = v19[2];
      if (v73 <= 285212703)
      {
        goto LABEL_212;
      }
    }
  }

  else if (v72 <= 536870927)
  {
    if (v72 == 536870916)
    {
      v73 = v19[2];
      if (v73 > 285212703)
      {
        goto LABEL_234;
      }

      goto LABEL_212;
    }

    if (v72 != 536870920)
    {
      goto LABEL_233;
    }

    v70 |= 0x8000uLL;
    v73 = v19[2];
    if (v73 <= 285212703)
    {
      goto LABEL_212;
    }
  }

  else
  {
    switch(v72)
    {
      case 536870928:
        v70 |= 0x10000uLL;
        v73 = v19[2];
        if (v73 <= 285212703)
        {
          goto LABEL_212;
        }

        break;
      case 536870944:
        v70 |= 0x18000uLL;
        v73 = v19[2];
        if (v73 <= 285212703)
        {
          goto LABEL_212;
        }

        break;
      case 536870976:
        v70 |= 0x20000uLL;
        v73 = v19[2];
        if (v73 > 285212703)
        {
          break;
        }

LABEL_212:
        if (v73 <= 31)
        {
          if (v73 > 7)
          {
            if (v73 == 8)
            {
              v74 = 6;
              goto LABEL_256;
            }

            if (v73 == 16)
            {
              v74 = 7;
              goto LABEL_256;
            }
          }

          else
          {
            if (v73 == -1879048176)
            {
              v74 = 12;
              goto LABEL_256;
            }

            if (v73 == 4)
            {
              v74 = 5;
              goto LABEL_256;
            }
          }
        }

        else if (v73 <= 268435463)
        {
          if (v73 == 32)
          {
            v74 = 8;
            goto LABEL_256;
          }

          if (v73 == 64)
          {
            v74 = 9;
            goto LABEL_256;
          }
        }

        else
        {
          switch(v73)
          {
            case 268435464:
              v74 = 15;
              goto LABEL_256;
            case 268435472:
              v74 = 10;
              goto LABEL_256;
            case 268435488:
              v74 = 11;
              goto LABEL_256;
          }
        }

        goto LABEL_255;
      default:
        goto LABEL_233;
    }
  }

LABEL_234:
  if (v73 <= 536870915)
  {
    if (v73 > 301989895)
    {
      if (v73 == 301989896)
      {
        v74 = 16;
        goto LABEL_256;
      }

      if (v73 == 335544328)
      {
        v74 = 17;
        goto LABEL_256;
      }
    }

    else
    {
      if (v73 == 285212704)
      {
        v74 = 13;
        goto LABEL_256;
      }

      if (v73 == 285212736)
      {
        v74 = 14;
        goto LABEL_256;
      }
    }
  }

  else if (v73 <= 536870927)
  {
    if (v73 == 536870916)
    {
      v74 = 0;
      goto LABEL_256;
    }

    if (v73 == 536870920)
    {
      v74 = 1;
      goto LABEL_256;
    }
  }

  else
  {
    switch(v73)
    {
      case 536870928:
        v74 = 2;
        goto LABEL_256;
      case 536870944:
        v74 = 3;
        goto LABEL_256;
      case 536870976:
        v74 = 4;
        goto LABEL_256;
    }
  }

LABEL_255:
  v74 = 18;
LABEL_256:
  *&v75 = -1;
  *(&v75 + 1) = -1;
  v249 = v75;
  v250 = v75;
  v246 = -1;
  v248 = v75;
  v245 = v75;
  v247 = v70 | v74;
  *&v250 = [*(v7 + 16) count] | 0x10100;
  v76 = BaseTensor::GetDimensionSize(v26);
  v77 = BaseTensor::GetDimensionSize(v26);
  v78 = BaseTensor::GetDimensionSize(v26);
  v223 = BaseTensor::GetDimensionSize(v214);
  v227 = BaseTensor::GetDimensionSize(v214);
  v221 = BaseTensor::GetDimensionSize(v214);
  v79 = BaseTensor::GetDimensionSize(v214);
  v80 = BaseTensor::GetDimensionSize(v231);
  v81 = BaseTensor::GetDimensionSize(v231);
  v82 = BaseTensor::GetDimensionSize(v231);
  v83 = BaseTensor::GetDimensionSize(v231);
  v232 = v79;
  v84 = v83 / v79;
  v85 = [*(v7 + 232) graph];
  v88 = **(v85 + 56);
  if (*(*(v85 + 56) + 8) == v88)
  {
    goto LABEL_394;
  }

  v89 = v7;
  v90 = *v88;
  v91 = *(v89 + 16);
  if (a6)
  {
    v92 = 0;
  }

  else
  {
    [*(v89 + 16) arrayByAddingObject:*(v89 + 112)];
    v92 = 2;
  }

  v93 = **(v90 + 8);
  if (v92 >= (*(*(v90 + 8) + 8) - v93) >> 3)
  {
LABEL_393:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  *&v86 = __PAIR64__(v227, v223);
  *&v87 = __PAIR64__(v81, v80);
  DWORD2(v86) = v221;
  *v215 = v86;
  DWORD2(v87) = v82;
  *v207 = v87;
  v94 = *(v93 + 8 * v92);
  BaseTensor::GetAccessPattern();
  if (!v96 && v218 > 2)
  {
    v97 = v232;
    v98 = MEMORY[0x277CD7370];
    v99 = v213;
    v100 = v212;
    v101 = v211;
    v102 = v210;
    v103 = *v215;
    v104 = *v207;
    if (v232 < 4)
    {
      v105 = 0;
      goto LABEL_269;
    }

    goto LABEL_268;
  }

  v98 = MEMORY[0x277CD7370];
  v99 = v213;
  v100 = v212;
  v101 = v211;
  v102 = v210;
  v97 = v232;
  v103 = *v215;
  v104 = *v207;
  v105 = 0;
  if (!v218 && v232 >= 4 && !v95)
  {
LABEL_268:
    v105 = v84 < 2;
  }

LABEL_269:
  HIDWORD(v103) = v97;
  HIDWORD(v104) = v83;
  v106 = vceqq_s64(v102, xmmword_239B06620);
  v107 = vmovn_s32(vmvnq_s8(vuzp1q_s32(v106, vceqq_s64(v100, vdupq_n_s64(1uLL)))));
  v107.i16[0] = vmaxv_u16(v107);
  v108 = (v99 == 2) & ~v107.i32[0];
  if (v101 != 1)
  {
    v108 = 0;
  }

  if (v77 != 4)
  {
    v108 = 0;
  }

  if (v84 >= 2)
  {
    v108 = 0;
  }

  if (v76 != 4)
  {
    v108 = 0;
  }

  if (v78 == 1)
  {
    v109 = v108;
  }

  else
  {
    v109 = 0;
  }

  if (v109 == 1)
  {
    v110 = 69632;
    v111 = 0x1000000;
    v112 = 2;
    v113 = 1;
  }

  else
  {
    v114 = v99 > 0x10 || v76 > 0x10;
    v112 = v102.i32[0];
    v116 = v114 || v102.i64[0] > 0x10uLL || v77 > 0x10;
    v113 = v102.u32[2];
    if (v116 || v102.i64[1] > 0x10uLL || v78 > 0x10)
    {
      v111 = 0;
    }

    else
    {
      v111 = 0x1000000;
    }

    v110 = ((v102.i32[0] << 16) + 983040) & 0xF0000 | ((v99 << 12) - 4096) & 0xF000 | ((v102.i32[2] << 20) + 15728640) & 0xF00000 | (v76 - 1) & 0xF | (16 * v77 - 16) & 0xF0 | ((v78 << 8) + 3840) & 0xF00;
  }

  if (v204)
  {
    v119 = 0x8000000;
  }

  else
  {
    v119 = 0;
  }

  v120.i32[3] = v206.i32[3];
  *v120.f32 = vmovn_s64(v206);
  v121 = vand_s8(*v120.f32, 0x100000001);
  v219 = v121.i32[1];
  v216 = v121.i32[0];
  v122 = v121.i32[0] | (2 * v121.i32[1]);
  v123 = v105;
  v124 = 6;
  if (!v105)
  {
    v124 = 1;
  }

  v125 = 12;
  if (v105)
  {
    v125 = 14;
  }

  if (!v109)
  {
    v122 = 0;
  }

  v120.i32[2] = v205;
  v106.i64[0] = __PAIR64__(v77, v76);
  v106.i32[2] = v78;
  v102.i64[0] = __PAIR64__(v112, v99);
  v102.i32[2] = v113;
  v100.i32[1] = v100.i32[2];
  v100.i32[2] = v101;
  v246 = v111 | v119 | (v229 << 28) | ((v84 > 1) << 26) | v110 | v122;
  v236[0] = v103;
  v236[1] = v104;
  v236[2] = v120;
  v236[3] = v106;
  v236[4] = v102;
  v236[5] = v100;
  v120.f32[0] = v99;
  v238 = 0;
  v237 = 0;
  v120.f32[1] = v112;
  v239 = 0;
  v240 = v84;
  v120.f32[2] = v113;
  __asm { FMOV            V1.4S, #1.0 }

  v243 = 0;
  v241 = 0;
  v242 = 0;
  v244 = vdivq_f32(_Q1, v120);
  if (_ZF)
  {
    v131 = v124;
  }

  else
  {
    v131 = v125;
  }

  v132 = (&CommonKernels)[16 * (v131 + a6)];
  v170 = *(&v209->super.isa + *MEMORY[0x277CD7360]);
  v172 = *(&v209->super.isa + *MEMORY[0x277CD7368]);
  v168 = *(v222 + 232);
  MPSLibrary::CreateUberShaderKey();
  v133 = *(&v209->super.isa + *v98);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    v135 = PipelineStateForMPSKey;
    [a2 setComputePipelineState:{PipelineStateForMPSKey, v168, v170, v172, 0, 0}];
    v136 = *(&v209->super.isa + *v98);
    MPSLibrary::ReleaseMPSKey();
    v137 = [v135 threadExecutionWidth];
    if (v137 <= 1)
    {
      v138 = 1;
    }

    else
    {
      v138 = v137;
    }

    if (v138 > v223 || (v139 = v138, v223 <= 3) && (v139 = v138, v138 > v227))
    {
      if (v137 <= 1)
      {
        v139 = 1;
      }

      else
      {
        v139 = v138 >> 1;
      }
    }

    v140 = [v135 maxTotalThreadsPerThreadgroup];
    v141 = 256;
    if (v140 < 0x100)
    {
      v141 = v140;
    }

    if (v141 <= 2 * v139)
    {
      v142 = 1;
    }

    else
    {
      v142 = v141 / v139;
    }

    v144 = v232;
    v145 = v123;
    if (v139 <= v223)
    {
      v147 = 1;
      v148 = v142;
      v149 = v139;
      v146 = v221;
      v150 = v223 - 1;
      if ((v109 | !v123))
      {
LABEL_337:
        v151 = (v149 + v150) / v149;
        v152 = (v227 + v148 - 1) / v148;
        v153 = (v146 + v147 - 1) / v147;
        if (!v109)
        {
          goto LABEL_385;
        }

LABEL_341:
        v154 = v223 + v216;
        v155 = v227 + v219;
        if (v145)
        {
          if (v232 >= 0x10uLL)
          {
            v149 = 16;
          }

          else
          {
            v149 = v232;
          }

          if (v154 >= 8)
          {
            v148 = 4;
          }

          else
          {
            v148 = (v154 + 1) >> 1;
          }

          v156 = v149 * v148;
          v157 = v221;
          if (v156 >= v138)
          {
            v147 = 2;
            v151 = (v232 + v149 - 1) / v149;
            if (!v148)
            {
              goto LABEL_374;
            }
          }

          else
          {
            while (v138 * v156 > v141)
            {
              v158 = v138 >> 1;
              v114 = v138 > 1;
              v138 >>= 1;
              if (!v114)
              {
                goto LABEL_370;
              }
            }

            v158 = v138;
LABEL_370:
            if (v158 >= v232 * v221)
            {
              v147 = v232 * v221;
            }

            else
            {
              v147 = v158;
            }

            v151 = (v232 + v149 - 1) / v149;
            if (!v148)
            {
LABEL_374:
              v152 = 0;
              if (v147)
              {
                goto LABEL_375;
              }

              goto LABEL_384;
            }
          }

          v152 = (v154 + 2 * v148 - 1) / (2 * v148);
          if (v147)
          {
LABEL_375:
            v144 = v227 + v219;
            goto LABEL_383;
          }

LABEL_384:
          v153 = 0;
          goto LABEL_385;
        }

        if (v154 >= 0x20)
        {
          v149 = 16;
        }

        else
        {
          v149 = (v154 + 1) >> 1;
        }

        if (v155 >= 0x20)
        {
          v148 = 16;
        }

        else
        {
          v148 = (v155 + 1) >> 1;
        }

        v159 = v148 * v149;
        v157 = v221;
        if (v159 >= v138)
        {
          v147 = 1;
          if (!v149)
          {
            goto LABEL_381;
          }
        }

        else
        {
          while (v138 * v159 > v141)
          {
            v160 = v138 >> 1;
            v114 = v138 > 1;
            v138 >>= 1;
            if (!v114)
            {
              goto LABEL_377;
            }
          }

          v160 = v138;
LABEL_377:
          if (v160 >= v232 * v221)
          {
            v147 = v232 * v221;
          }

          else
          {
            v147 = v160;
          }

          if (!v149)
          {
LABEL_381:
            v151 = 0;
            if (!v148)
            {
LABEL_382:
              v152 = 0;
              if (v147)
              {
                goto LABEL_383;
              }

              goto LABEL_384;
            }

LABEL_367:
            v152 = (v155 + 2 * v148 - 1) / (2 * v148);
            if (v147)
            {
LABEL_383:
              v153 = (v147 + v144 * v157 - 1) / v147;
LABEL_385:
              [a2 setComputePipelineState:v135];
              MPSSetNDArraysOnComputeEncoder(a2, v222, 4, 0, 0);
              [a2 setBytes:v236 length:160 atIndex:29];
              *&v234 = v151;
              *(&v234 + 1) = v152;
              v235 = v153;
              v233[0] = v149;
              v233[1] = v148;
              v233[2] = v147;
              [a2 dispatchThreadgroups:&v234 threadsPerThreadgroup:v233];
              MPSLibrary::ReleaseComputeState();
              result = 0;
              goto LABEL_386;
            }

            goto LABEL_384;
          }
        }

        v151 = (v154 + 2 * v149 - 1) / (2 * v149);
        if (!v148)
        {
          goto LABEL_382;
        }

        goto LABEL_367;
      }
    }

    else
    {
      v146 = v221;
      if (v139 <= v227 || v139 <= v221)
      {
        v149 = 1;
        v147 = v142;
        v148 = v139;
        v150 = v223 - 1;
        if ((v109 | !v123))
        {
          goto LABEL_337;
        }
      }

      else
      {
        v147 = 1;
        v148 = v142;
        v149 = v139;
        v150 = v223 - 1;
        if ((v109 | !v123))
        {
          goto LABEL_337;
        }
      }
    }

    do
    {
      v148 = v142;
      v142 >>= 1;
    }

    while (v148 > v223);
    v151 = (v139 + v232 - 1) / v139;
    v153 = v221 * v227;
    v147 = 1;
    v149 = v139;
    v152 = (v148 + v150) / v148;
    if (!v109)
    {
      goto LABEL_385;
    }

    goto LABEL_341;
  }

  result = -1;
LABEL_386:
  v161 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t printDWTranspose(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  v44 = *MEMORY[0x277D85DE8];
  v42 = xmmword_239B06630;
  v43 = 4;
  v7 = *a2;
  v8 = v7 == 0;
  if (a4)
  {
    if (*a2)
    {
      if (*a2 >= 5u)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a2;
      }

      MPSKernel_LogInfo(result, a2, " -srcTranspose ");
      MPSKernel_LogInfo(v6, v10, "%lu ", a3);
      result = MPSKernel_LogInfo(v6, v11, "[%u,%u] ", 0, v9);
      *(&v42 + v9) = 0;
      v12 = DWORD1(v42);
      v13 = *(a2 + 1);
      if (DWORD1(v42) == v13)
      {
LABEL_7:
        v14 = *(a2 + 2);
        v15 = DWORD2(v42);
        if (DWORD2(v42) == v14)
        {
LABEL_8:
          v16 = *(a2 + 3);
          v17 = HIDWORD(v42);
          if (HIDWORD(v42) == v16)
          {
            v18 = *(a2 + 4);
            v19 = v43;
            if (v43 != v18)
            {
              if (v8)
              {
                MPSKernel_LogInfo(v6, a2, " -srcTranspose ");
LABEL_22:
                MPSKernel_LogInfo(v6, v20, "%lu ", a3);
                goto LABEL_83;
              }

              goto LABEL_83;
            }

            goto LABEL_84;
          }

          if (v43 == v16)
          {
            v31 = 4;
          }

          else
          {
            v31 = 3;
          }

          if (!v8)
          {
            goto LABEL_81;
          }

          MPSKernel_LogInfo(v6, a2, " -srcTranspose ");
LABEL_41:
          MPSKernel_LogInfo(v6, v32, "%lu ", a3);
          goto LABEL_81;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v12 = 1;
      v13 = BYTE1(*a2);
      if (v13 == 1)
      {
        goto LABEL_7;
      }
    }

    if (DWORD2(v42) == v13)
    {
      v29 = 2;
      if (v7)
      {
        goto LABEL_53;
      }
    }

    else if (HIDWORD(v42) == v13)
    {
      v29 = 3;
      if (v7)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v43 == v13)
      {
        v29 = 4;
      }

      else
      {
        v29 = 1;
      }

      if (v7)
      {
LABEL_53:
        result = MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 1, v29);
        v8 = 0;
        *(&v42 + v29) = v12;
        v14 = *(a2 + 2);
        v15 = DWORD2(v42);
        if (DWORD2(v42) == v14)
        {
          goto LABEL_8;
        }

LABEL_54:
        if (v43 == v14)
        {
          v34 = 4;
        }

        else
        {
          v34 = 2;
        }

        if (HIDWORD(v42) == v14)
        {
          v35 = 3;
        }

        else
        {
          v35 = v34;
        }

        if (!v8)
        {
          goto LABEL_77;
        }

        MPSKernel_LogInfo(v6, a2, " -srcTranspose ");
LABEL_76:
        MPSKernel_LogInfo(v6, v36, "%lu ", a3);
LABEL_77:
        result = MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 2, v35);
        *(&v42 + v35) = v15;
        v39 = *(a2 + 3);
        v17 = HIDWORD(v42);
        if (HIDWORD(v42) == v39)
        {
          goto LABEL_82;
        }

        if (v43 == v39)
        {
          v31 = 4;
        }

        else
        {
          v31 = 3;
        }

LABEL_81:
        result = MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 3, v31);
        *(&v42 + v31) = v17;
LABEL_82:
        v40 = *(a2 + 4);
        v19 = v43;
        if (v43 != v40)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      }
    }

    MPSKernel_LogInfo(v6, a2, " -srcTranspose ");
    MPSKernel_LogInfo(v6, v33, "%lu ", a3);
    goto LABEL_53;
  }

  if (*a2)
  {
    if (*a2 >= 5u)
    {
      v21 = 0;
    }

    else
    {
      v21 = *a2;
    }

    MPSKernel_LogInfo(result, a2, " -dstTranspose ");
    MPSKernel_LogInfo(v6, v22, "%lu ", a3);
    result = MPSKernel_LogInfo(v6, v23, "[%u,%u] ", 0, v21);
    *(&v42 + v21) = 0;
    v24 = DWORD1(v42);
    v25 = *(a2 + 1);
    if (DWORD1(v42) == v25)
    {
LABEL_17:
      v26 = *(a2 + 2);
      v15 = DWORD2(v42);
      if (DWORD2(v42) == v26)
      {
        goto LABEL_18;
      }

LABEL_68:
      if (v43 == v26)
      {
        v38 = 4;
      }

      else
      {
        v38 = 2;
      }

      if (HIDWORD(v42) == v26)
      {
        v35 = 3;
      }

      else
      {
        v35 = v38;
      }

      if (!v8)
      {
        goto LABEL_77;
      }

      MPSKernel_LogInfo(v6, a2, " -dstTranspose ");
      goto LABEL_76;
    }
  }

  else
  {
    v24 = 1;
    v25 = BYTE1(*a2);
    if (v25 == 1)
    {
      goto LABEL_17;
    }
  }

  if (DWORD2(v42) == v25)
  {
    v30 = 2;
    if (v7)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (HIDWORD(v42) == v25)
  {
    v30 = 3;
    if (v7)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (v43 == v25)
  {
    v30 = 4;
  }

  else
  {
    v30 = 1;
  }

  if (!v7)
  {
LABEL_66:
    MPSKernel_LogInfo(v6, a2, " -dstTranspose ");
    MPSKernel_LogInfo(v6, v37, "%lu ", a3);
  }

LABEL_67:
  result = MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 1, v30);
  v8 = 0;
  *(&v42 + v30) = v24;
  v26 = *(a2 + 2);
  v15 = DWORD2(v42);
  if (DWORD2(v42) != v26)
  {
    goto LABEL_68;
  }

LABEL_18:
  v27 = *(a2 + 3);
  v17 = HIDWORD(v42);
  if (HIDWORD(v42) != v27)
  {
    if (v43 == v27)
    {
      v31 = 4;
    }

    else
    {
      v31 = 3;
    }

    if (!v8)
    {
      goto LABEL_81;
    }

    MPSKernel_LogInfo(v6, a2, " -dstTranspose ");
    goto LABEL_41;
  }

  v28 = *(a2 + 4);
  v19 = v43;
  if (v43 != v28)
  {
    if (v8)
    {
      MPSKernel_LogInfo(v6, a2, " -dstTranspose ");
      goto LABEL_22;
    }

LABEL_83:
    result = MPSKernel_LogInfo(v6, a2, "[%u,%u] ", 4, 4);
    v43 = v19;
  }

LABEL_84:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MPSNDArrayDepthwiseConvWeightGradFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  v20 = BYTE4(v5) & 1;
  v19 = (v5 & 0x200000000) != 0;
  v18 = (v5 & 0x400000000) != 0;
  v17 = (v5 >> 35) & 7;
  [v6 setConstantValue:&v20 type:53 atIndex:115];
  [v6 setConstantValue:&v19 type:53 atIndex:114];
  [v6 setConstantValue:&v18 type:53 atIndex:113];
  [v6 setConstantValue:&v17 type:33 atIndex:112];
  v7 = *a3;
  v8 = *(a3 + 1);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vceqq_s64(v8, v9);
  if (*a3 != -1 || ((v11 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v9), vceqq_s64(*(a3 + 4), v9)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v10, vceqq_s64(*(a3 + 3), v9)), xmmword_239B06050)) & 0xF) == 0) ? (v12 = v11 == 0) : (v12 = 0), v12 ? (v13 = a3[5] == -1) : (v13 = 0), !v13))
  {
    if ((vuzp1_s16(vmovn_s64(v10), *v8.i8).u8[0] & 1) == 0)
    {
      v21 = *(a3 + 1);
      [v6 setConstantValue:&v21 type:33 atIndex:126];
      v7 = *a3;
    }

    if (v7 != -1)
    {
      v21 = v7;
      [v6 setConstantValue:&v21 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v21 = a3[2];
      [v6 setConstantValue:&v21 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v21 = a3[3];
      [v6 setConstantValue:&v21 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v21 = a3[4];
      [v6 setConstantValue:&v21 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v21 = a3[5];
      [v6 setConstantValue:&v21 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v21 = a3[8];
      [v6 setConstantValue:&v21 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v21 = a3[9];
      [v6 setConstantValue:&v21 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v21 = a3[6];
      [v6 setConstantValue:&v21 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v21 = a3[7];
      [v6 setConstantValue:&v21 type:33 atIndex:116];
    }
  }

  v14 = *a2;
  v15 = _MPSNewSpecializedFunction();

  return v15;
}

void sub_239A0E850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  *a42 = &unk_284CB2AC0;
  free(*(a42 + 8));
  MEMORY[0x23EE7C8C0](a42, 0x10E1C4006515DB2);
  _Unwind_Resume(a1);
}

uint64_t getStrides(MPSNDArray *a1, unint64_t *a2, uint64_t a3)
{
  result = makeStrideBytes();
  if (a3)
  {
    v7 = 0;
    v9 = v18[14];
    v8 = v18[15];
    v11 = v18[12];
    v10 = v18[13];
    v13 = v18[10];
    v12 = v18[11];
    v15 = v18[8];
    v14 = v18[9];
    v16 = MEMORY[0x277CD73D8];
    do
    {
      v17 = *(&a1->super.isa + *v16);
      v18[0] = v15;
      v18[1] = v14;
      v18[2] = v13;
      v18[3] = v12;
      v18[4] = v11;
      v18[5] = v10;
      v18[6] = v9;
      v18[7] = v8;
      a2[v7] = *(v18 + (*(&v17 | v7 & 0xF) & 0xF));
      ++v7;
    }

    while (a3 != v7);
  }

  return result;
}

unint64_t getOffset(MPSNDArray *a1, unint64_t *a2)
{
  v2 = (a1 + *MEMORY[0x277CD7418]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(&a1->super.isa + *MEMORY[0x277CD73D8]);
  v6 = v2[3];
  v16 = v2[2];
  v17 = v6;
  v15[0] = v3;
  v15[1] = v4;
  v7 = *(v15 + (v5 & 0xF));
  v8 = *a2;
  v14[2] = v16;
  v14[3] = v6;
  v14[0] = v3;
  v14[1] = v4;
  v9 = a2[1] * *(v14 + (BYTE1(v5) & 0xF)) + v8 * v7;
  v13[2] = v16;
  v13[3] = v6;
  v13[0] = v3;
  v13[1] = v4;
  v10 = v9 + a2[2] * *(v13 + (BYTE2(v5) & 0xF));
  v12[2] = v16;
  v12[3] = v6;
  v12[0] = v3;
  v12[1] = v4;
  return v10 + a2[3] * *(v12 + (BYTE3(v5) & 0xF));
}

uint64_t MPSNDArrayVectorMultiplyFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = a2[8];
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:&v9 type:85 atIndex:115];
  AddFunctionConstantList(v5, a3);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

void *AddFunctionConstantList(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4.i64[0] = -1;
  v4.i64[1] = -1;
  v5 = vceqq_s64(v3, v4);
  v6 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a2 + 3), v4), vceqq_s64(*(a2 + 4), v4))));
  v7 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v5, vceqq_s64(*(a2 + 3), v4)), xmmword_239B06050)) & 0xF;
  if (*a2 != -1 || v7 != 0 || (v6 & 0xF) != 0 || a2[5] != -1)
  {
    v12 = result;
    if ((vuzp1_s16(vmovn_s64(v5), *v3.i8).u8[0] & 1) == 0)
    {
      v13 = *(a2 + 1);
      result = [result setConstantValue:&v13 type:33 atIndex:126];
      v2 = *a2;
    }

    if (v2 != -1)
    {
      v13 = v2;
      result = [v12 setConstantValue:&v13 type:33 atIndex:125];
    }

    if (a2[2] != -1)
    {
      v13 = a2[2];
      result = [v12 setConstantValue:&v13 type:33 atIndex:124];
    }

    if (a2[3] != -1)
    {
      v13 = a2[3];
      result = [v12 setConstantValue:&v13 type:33 atIndex:123];
    }

    if (a2[4] != -1)
    {
      v13 = a2[4];
      result = [v12 setConstantValue:&v13 type:33 atIndex:119];
    }

    if (a2[5] != -1)
    {
      v13 = a2[5];
      result = [v12 setConstantValue:&v13 type:33 atIndex:118];
    }

    if (a2[8] != -1)
    {
      v13 = a2[8];
      result = [v12 setConstantValue:&v13 type:33 atIndex:122];
    }

    if (a2[9] != -1)
    {
      v13 = a2[9];
      result = [v12 setConstantValue:&v13 type:33 atIndex:121];
    }

    if (a2[6] != -1)
    {
      v13 = a2[6];
      result = [v12 setConstantValue:&v13 type:33 atIndex:117];
    }

    if (a2[7] != -1)
    {
      v13 = a2[7];
      return [v12 setConstantValue:&v13 type:33 atIndex:116];
    }
  }

  return result;
}

BOOL MPSNDArrayVectorCompatibleWithDims(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a3 >> 10 > 6 || a4 >> 10 >= 7)
  {
    v6 = *(a1 + *MEMORY[0x277CD7410] + 4 * (*(a1 + *MEMORY[0x277CD73D8]) & 0xF));
    v7 = v6 == 18816 || v6 == 7168;
    if (v7)
    {
      v8 = a3 >= 8;
      return !v8;
    }
  }

  v9 = *MEMORY[0x277CD73C8];
  v10 = *(a1 + v9);
  if (v10 == 268435488)
  {
    v7 = *(a2 + v9) == 268435488;
    v11 = 3;
    if (v7)
    {
      v11 = 4;
    }
  }

  else
  {
    v11 = 3;
  }

  v12 = 9;
  if (a4 * a3 * v11 < *(a5 + 1480) << 12)
  {
    v12 = 15;
  }

  if (*(a5 + 1472) > 10)
  {
    v16 = *MEMORY[0x277CD73D8];
    v17 = *(a1 + v16);
    v18 = *(a2 + v16);
    v19 = *MEMORY[0x277CD7410];
    v20 = *(a1 + v19 + 4 * (BYTE2(v17) & 0xF));
    v21 = *(a2 + v19 + 4 * (BYTE2(v18) & 0xF));
    if (v17 <= BYTE1(v17) && v21 == 1)
    {
      v23 = v20;
    }

    else
    {
      v23 = 1;
    }

    a3 *= v23;
    v24 = v21 * a4;
    if (v18 <= BYTE1(v18))
    {
      v24 = a4;
    }

    if (v20 == 1)
    {
      a4 = v24;
    }

    v15 = v12;
  }

  else
  {
    v13 = 15;
    if ((a4 & 3) == 0)
    {
      v13 = v12;
    }

    if (a3)
    {
      v14 = 15;
    }

    else
    {
      v14 = v12;
    }

    if (v10 == 268435472)
    {
      v12 = v14;
      v15 = 15;
    }

    else
    {
      v15 = v13;
    }
  }

  v25 = a3 > v12 && a4 > v15;
  v26 = *MEMORY[0x277CD7410];
  v27 = *MEMORY[0x277CD73D8];
  v28 = *(a1 + v27 + 3) & 0xF;
  v29 = *(a1 + v26 + 4 * v28);
  v34 = a2 + v26;
  v30 = *v34;
  v31 = *(v34 + 16);
  v32 = *(v34 + 32);
  v33 = *(v34 + 48);
  v40[2] = v32;
  v40[3] = v33;
  v40[0] = v30;
  v40[1] = v31;
  LODWORD(v34) = *(v40 + v28);
  result = !v25;
  if (v29 <= v34)
  {
    v34 = v34;
  }

  else
  {
    v34 = v29;
  }

  v36 = a3 * v34;
  if (result && v36 > v12)
  {
    v38 = *(a2 + v27);
    v39[0] = v30;
    v39[1] = v31;
    v39[2] = v32;
    v39[3] = v33;
    v8 = *(v39 + (v38 & 0xF)) >= 0x81u;
    return !v8;
  }

  return result;
}

uint64_t MPSNDArrayMatMulA18DeviceBehavior::IsMatMulSupported(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a3 + 232) graph];
  v7 = *(v6 + 64);
  v8 = *v7;
  v9 = v7[1];
  if (*v7 == v9)
  {
    v12 = 0;
  }

  else
  {
    v10 = v6;
    v11 = 0;
    v12 = -1;
    v13 = -1;
    do
    {
      v14 = *v8;
      if (v14 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v10) + 32))
      {
        v12 = v11;
      }

      v15 = *v8;
      if (v15 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v10) + 32))
      {
        v13 = v11;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v10) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v10);
      }

      ++v11;
      ++v8;
    }

    while (v8 != v9);
    if (v12 == -1)
    {
      v12 = 0;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v13 != -1)
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
  v13 = 0;
LABEL_17:
  v16 = [*(a3 + 16) objectAtIndexedSubscript:v12];
  v17 = [*(a3 + 16) objectAtIndexedSubscript:v13];
  v18 = v17;
  v19 = *(a3 + 208);
  v20 = (v19 + *MEMORY[0x277CD7410]);
  v21 = *v20;
  v22 = v20[1];
  v23 = MEMORY[0x277CD73D8];
  v24 = *(v19 + *MEMORY[0x277CD73D8]);
  v25 = v20[3];
  v72 = v20[2];
  v73 = v25;
  v71[0] = v21;
  v71[1] = v22;
  v26 = *(v71 + (v24 & 0xF));
  v74[2] = v72;
  v74[3] = v25;
  v74[0] = v21;
  v74[1] = v22;
  if (*(a1 + 8))
  {
    v27 = 0;
  }

  else
  {
    v27 = *(a2 + 200) == 0;
  }

  v28 = *(v74 + (BYTE1(v24) & 0xF));
  v29 = MEMORY[0x277CD73C8];
  v30 = *MEMORY[0x277CD73C8];
  v31 = *(v16 + v30);
  if (v31 == 268435488 || *(v17 + v30) == 268435488)
  {
    result = MPSForceMatrixUnit();
    if ((result & v27) != 1)
    {
      return result;
    }

    v30 = *v29;
    v31 = *(v16 + v30);
LABEL_25:
    if ((v31 & 0x1000FFFF) == 0x10000008)
    {
      return 1;
    }

    v33 = *(v18 + v30);
    if ((v33 & 0x1000FFFF) == 0x10000008 || (*(v19 + v30) & 0x1000FFFF) == 0x10000008)
    {
      return 1;
    }

    v34 = *(a2 + *MEMORY[0x277CD7350]);
    v35 = v28 >> 10 > 6 || v26 >> 10 >= 7;
    if (v35 && ((v36 = *(v16 + *MEMORY[0x277CD7410] + 4 * (*(v16 + *v23) & 0xF)), v36 != 18816) ? (v37 = v36 == 7168) : (v37 = 1), v37))
    {
      v38 = v28 >= 8;
    }

    else
    {
      v39 = v33 == 268435488 && v31 == 268435488;
      v40 = 3;
      if (v39)
      {
        v40 = 4;
      }

      v35 = v26 * v28 * v40 >= *(v34 + 1480) << 12;
      v41 = 9;
      if (!v35)
      {
        v41 = 15;
      }

      if (*(v34 + 1472) > 10)
      {
        v45 = *v23;
        v46 = *(v16 + v45);
        v47 = *(v18 + v45);
        v48 = *MEMORY[0x277CD7410];
        v49 = *(v16 + v48 + 4 * (BYTE2(v46) & 0xF));
        v50 = *(v18 + v48 + 4 * (BYTE2(v47) & 0xF));
        if (v46 <= BYTE1(v46) && v50 == 1)
        {
          v52 = v49;
        }

        else
        {
          v52 = 1;
        }

        v28 = v52 * v28;
        v53 = v26 * v50;
        if (v47 <= BYTE1(v47))
        {
          v53 = v26;
        }

        if (v49 == 1)
        {
          v26 = v53;
        }

        v44 = v41;
      }

      else
      {
        v42 = 15;
        if ((v26 & 3) == 0)
        {
          v42 = v41;
        }

        if (v28)
        {
          v43 = 15;
        }

        else
        {
          v43 = v41;
        }

        if (v31 == 268435472)
        {
          v41 = v43;
          v44 = 15;
        }

        else
        {
          v44 = v42;
        }
      }

      v54 = v28 > v41 && v26 > v44;
      v55 = *MEMORY[0x277CD7410];
      v56 = *v23;
      v57 = *(v16 + v56 + 3) & 0xF;
      LODWORD(v58) = *(v16 + v55 + 4 * v57);
      v59 = (v18 + v55);
      v60 = *v59;
      v61 = v59[1];
      v62 = v59[2];
      v63 = v59[3];
      v70[2] = v62;
      v70[3] = v63;
      v70[0] = v60;
      v70[1] = v61;
      v64 = *(v70 + v57);
      v65 = !v54;
      if (v58 <= v64)
      {
        v58 = v64;
      }

      else
      {
        v58 = v58;
      }

      v66 = v28 * v58;
      if (v65 != 1 || v66 <= v41)
      {
        return v65 ^ 1u;
      }

      v68 = *(v18 + v56);
      v69[0] = v60;
      v69[1] = v61;
      v69[2] = v62;
      v69[3] = v63;
      v38 = *(v69 + (v68 & 0xF)) >= 0x81u;
    }

    v65 = !v38;
    return v65 ^ 1u;
  }

  if (v27)
  {
    goto LABEL_25;
  }

  return 1;
}

uint64_t MPSNDArrayMatMulA18DeviceBehavior::IsInt8AffineSupportedQuantization(uint64_t a1, uint64_t a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  v3 = *(a2 + 48);
  if (*(a2 + 40) == 0)
  {
    goto LABEL_2;
  }

  if ([*(a2 + 40) quantizationScheme] || (result = -[MPSNDArrayQuantizationDescriptor quantizationScheme](v3, "quantizationScheme")) != 0)
  {
    if (v2)
    {
      if ([(MPSNDArrayQuantizationDescriptor *)v2 quantizationScheme])
      {
        if ([(MPSNDArrayQuantizationDescriptor *)v2 quantizationScheme]!= 1 || [(MPSNDArrayQuantizationDescriptor *)v2 quantizationDataType]!= 536870920 || [(MPSNDArrayAffineQuantizationDescriptor *)v2 hasDoubleQuantScale]|| [(MPSNDArrayAffineQuantizationDescriptor *)v2 hasDoubleQuantMinVal])
        {
          goto LABEL_2;
        }
      }

      else
      {
        v2 = 0;
      }
    }

    if (!v3)
    {
      goto LABEL_22;
    }

    if (![(MPSNDArrayQuantizationDescriptor *)v3 quantizationScheme])
    {
      v3 = 0;
      goto LABEL_22;
    }

    if ([(MPSNDArrayQuantizationDescriptor *)v3 quantizationScheme]== 1 && [(MPSNDArrayQuantizationDescriptor *)v3 quantizationDataType]== 536870920 && ![(MPSNDArrayAffineQuantizationDescriptor *)v3 hasDoubleQuantScale]&& ![(MPSNDArrayAffineQuantizationDescriptor *)v3 hasDoubleQuantMinVal])
    {
LABEL_22:
      GetPlaceHolderIndexInSourceArrayAffineGEMM([*(*(a2 + 56) + 232) graph], v2, v84, v3, &v80, 0, 0, 0);
      v7 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:v84[0]];
      v8 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:v80];
      if (v84[1] == -1)
      {
        v9 = 0;
        if (v85 != -1)
        {
LABEL_24:
          v10 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
          if (v86 != -1)
          {
            goto LABEL_25;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v9 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
        if (v85 != -1)
        {
          goto LABEL_24;
        }
      }

      v10 = 0;
      if (v86 != -1)
      {
LABEL_25:
        v11 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
        if (v81 != -1)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }

LABEL_31:
      v11 = 0;
      if (v81 != -1)
      {
LABEL_26:
        v12 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
        if (v82 != -1)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }

LABEL_32:
      v12 = 0;
      if (v82 != -1)
      {
LABEL_27:
        v13 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
        if (v83 != -1)
        {
LABEL_28:
          v14 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
          goto LABEL_35;
        }

LABEL_34:
        v14 = 0;
LABEL_35:
        v15 = *MEMORY[0x277CD7410];
        v16 = *MEMORY[0x277CD73D8];
        v17 = *(v7 + v16);
        v18 = *(v7 + v15 + 4 * (BYTE1(v17) & 0xF));
        v19 = *(v8 + v16);
        v20 = *(v8 + v15 + 4 * (v19 & 0xF));
        if (!v2)
        {
          goto LABEL_84;
        }

        v21 = *MEMORY[0x277CD73C8];
        v22 = *(v7 + v21);
        if ((v22 | 0x20000000) == 0x20000008)
        {
          if (v9)
          {
            v23 = *(v9 + v21);
            if ((v23 | 0x80000000) == 0x90000010)
            {
              v24 = *(v9 + v15);
              v25 = *(v9 + v15 + 16);
              v26 = *(v9 + v16);
              v27 = *(v9 + v15 + 32);
              v28 = *(v9 + v15 + 48);
              v79[2] = v27;
              v79[3] = v28;
              v79[0] = v24;
              v79[1] = v25;
              if (*(v79 + (v26 & 0xF)) == 1)
              {
                v78[0] = v24;
                v78[1] = v25;
                v78[2] = v27;
                v78[3] = v28;
                v29 = *(v78 + (BYTE1(v26) & 0xF));
                if (v29 == 1 || v29 == v18)
                {
                  if (!v10)
                  {
                    goto LABEL_50;
                  }

                  if (*(v10 + v21) == v22)
                  {
                    v31 = *(v10 + v15);
                    v32 = *(v10 + v15 + 16);
                    v33 = *(v10 + v16);
                    v34 = *(v10 + v15 + 32);
                    v35 = *(v10 + v15 + 48);
                    v77[2] = v34;
                    v77[3] = v35;
                    v77[0] = v31;
                    v77[1] = v32;
                    if (*(v77 + (v33 & 0xF)) == 1)
                    {
                      v76[0] = v31;
                      v76[1] = v32;
                      v76[2] = v34;
                      v76[3] = v35;
                      v36 = *(v76 + (BYTE1(v33) & 0xF));
                      if (v36 == 1 || v36 == v18)
                      {
LABEL_50:
                        if (!v11)
                        {
                          goto LABEL_84;
                        }

                        if (*(v11 + v21) == v23)
                        {
                          v37 = *(v11 + v15);
                          v38 = *(v11 + v15 + 16);
                          v39 = *(v11 + v16);
                          v40 = *(v11 + v15 + 32);
                          v41 = *(v11 + v15 + 48);
                          v75[2] = v40;
                          v75[3] = v41;
                          v75[0] = v37;
                          v75[1] = v38;
                          if (*(v75 + (v39 & 0xF)) == 1)
                          {
                            v74[0] = v37;
                            v74[1] = v38;
                            v74[2] = v40;
                            v74[3] = v41;
                            v42 = *(v74 + (BYTE1(v39) & 0xF));
                            if (v42 == 1 || v42 == v18)
                            {
LABEL_84:
                              if (!v3)
                              {
                                goto LABEL_88;
                              }

                              v43 = *MEMORY[0x277CD73C8];
                              v44 = *(v8 + v43);
                              if ((v44 | 0x20000000) == 0x20000008)
                              {
                                if (v12)
                                {
                                  v45 = *(v12 + v43);
                                  if ((v45 | 0x80000000) == 0x90000010)
                                  {
                                    v46 = *(v12 + v15);
                                    v47 = *(v12 + v15 + 16);
                                    v48 = *(v12 + v16);
                                    v49 = *(v12 + v15 + 32);
                                    v50 = *(v12 + v15 + 48);
                                    v73[2] = v49;
                                    v73[3] = v50;
                                    v73[0] = v46;
                                    v73[1] = v47;
                                    if (*(v73 + (BYTE1(v48) & 0xF)) == 1)
                                    {
                                      v72[0] = v46;
                                      v72[1] = v47;
                                      v72[2] = v49;
                                      v72[3] = v50;
                                      v51 = *(v72 + (v48 & 0xF));
                                      if (v51 == 1 || v51 == v20)
                                      {
                                        if (!v13)
                                        {
                                          goto LABEL_70;
                                        }

                                        if (*(v13 + v43) == v44)
                                        {
                                          v53 = *(v13 + v15);
                                          v54 = *(v13 + v15 + 16);
                                          v55 = *(v13 + v16);
                                          v56 = *(v13 + v15 + 32);
                                          v57 = *(v13 + v15 + 48);
                                          v71[2] = v56;
                                          v71[3] = v57;
                                          v71[0] = v53;
                                          v71[1] = v54;
                                          if (*(v71 + (BYTE1(v55) & 0xF)) == 1)
                                          {
                                            v70[0] = v53;
                                            v70[1] = v54;
                                            v70[2] = v56;
                                            v70[3] = v57;
                                            v58 = *(v70 + (v55 & 0xF));
                                            if (v58 == 1 || v58 == v20)
                                            {
LABEL_70:
                                              if (!v14)
                                              {
                                                goto LABEL_76;
                                              }

                                              if (*(v14 + v43) == v45)
                                              {
                                                v59 = (v14 + v15);
                                                v60 = *v59;
                                                v61 = v59[1];
                                                v62 = *(v14 + v16);
                                                v63 = v59[2];
                                                v64 = v59[3];
                                                v69[2] = v63;
                                                v69[3] = v64;
                                                v69[0] = v60;
                                                v69[1] = v61;
                                                if (*(v69 + (BYTE1(v62) & 0xF)) == 1)
                                                {
                                                  v68[0] = v60;
                                                  v68[1] = v61;
                                                  v68[2] = v63;
                                                  v68[3] = v64;
                                                  v65 = *(v68 + (v62 & 0xF));
                                                  if (v65 == 1 || v65 == v20)
                                                  {
LABEL_76:
                                                    if (!v2 || *(v9 + v43) == v45)
                                                    {
LABEL_88:
                                                      if (BYTE2(v17) && BYTE3(v17) != 0 && BYTE2(v19) && BYTE3(v19) != 0)
                                                      {
                                                        result = !MPSNDArrayVectorCompatibleWithDims(v7, v8, v18, v20, *(*(a2 + 64) + *MEMORY[0x277CD7350]));
                                                        goto LABEL_3;
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

        goto LABEL_2;
      }

LABEL_33:
      v13 = 0;
      if (v83 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_34;
    }

LABEL_2:
    result = 0;
  }

LABEL_3:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MPSNDArrayMatMulA18DeviceBehavior::EncodeArrayMultiply()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v401 = v6;
  v7 = v1;
  v8 = v0;
  v538 = *MEMORY[0x277D85DE8];
  v9 = *(v1 + 216);
  v10 = *(v0 + 8);
  if (v10)
  {
    if (MPSDisableMatrixUnit())
    {
LABEL_16:
      MPSNDArrayMatMulA14DeviceBehavior::EncodeArrayMultiply(v8, v7, v401, v5, v3);
      goto LABEL_17;
    }
  }

  else if (*(v1 + 208) == 6)
  {
    v10 = *(v1 + 200);
    if (MPSDisableMatrixUnit())
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0;
    if (MPSDisableMatrixUnit())
    {
      goto LABEL_16;
    }
  }

  if ((MPSNDArrayMatMulA18DeviceBehavior::IsMatMulSupported(v8, v7, v3) & 1) == 0)
  {
    goto LABEL_16;
  }

  v355 = v9;
  v11 = *(v7 + 168);
  v12 = *(v7 + 176);
  v392 = *(v7 + 168) != 0;
  v357 = *(v7 + *MEMORY[0x277CD7370]);
  v530 = 0u;
  v531 = 0u;
  *v529 = 0u;
  memset(v528, 0, sizeof(v528));
  v388 = v3;
  v396 = v11;
  v394 = v12;
  if (GetPlaceHolderIndexInSourceArrayAffineGEMM([v3[29] graph], v11, &v535, v12, &v532, 0, v529, v528) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = v529[0];
  v14 = *&v528[0];
  v15 = [v3[29] outputTensorAtIndex:0];
  v16 = *(v13 + 2);
  v18 = *v16;
  v17 = v16[1];
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v21 = *(v14 + 16);
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

  v24 = *(v15 + 16);
  v26 = *v24;
  v25 = v24[1];
  if (v25 != v26)
  {
    if (((v25 - v26) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v27 = [*(v388 + 16) objectAtIndexedSubscript:v535];
  if (v536 != -1)
  {
    v390 = [*(v388 + 16) objectAtIndexedSubscript:?];
    if (v537.i64[0] != -1)
    {
      goto LABEL_22;
    }

LABEL_25:
    v386 = 0;
    if (v537.i64[1] != -1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v390 = 0;
  if (v537.i64[0] == -1)
  {
    goto LABEL_25;
  }

LABEL_22:
  v386 = [*(v388 + 16) objectAtIndexedSubscript:?];
  if (v537.i64[1] != -1)
  {
LABEL_23:
    v371 = [*(v388 + 16) objectAtIndexedSubscript:?];
    goto LABEL_27;
  }

LABEL_26:
  v371 = 0;
LABEL_27:
  v28 = [*(v388 + 16) objectAtIndexedSubscript:v532];
  if (v533.i64[0] != -1)
  {
    v381 = [*(v388 + 16) objectAtIndexedSubscript:?];
    if (v533.i64[1] != -1)
    {
      goto LABEL_29;
    }

LABEL_32:
    v384 = 0;
    if (v534 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  v381 = 0;
  if (v533.i64[1] == -1)
  {
    goto LABEL_32;
  }

LABEL_29:
  v384 = [*(v388 + 16) objectAtIndexedSubscript:?];
  if (v534 != -1)
  {
LABEL_30:
    v370 = [*(v388 + 16) objectAtIndexedSubscript:?];
    goto LABEL_34;
  }

LABEL_33:
  v370 = 0;
LABEL_34:
  v29 = *(v388 + 208);
  v30 = *MEMORY[0x277CD7410];
  v31 = *&v29[v30];
  v32 = *&v29[v30 + 16];
  v33 = *&v29[v30 + 32];
  v34 = MEMORY[0x277CD73D8];
  v35 = *MEMORY[0x277CD73D8];
  v402 = v29;
  v36 = *&v29[v35];
  v464 = *&v29[v30 + 48];
  v463[2] = v33;
  v463[1] = v32;
  v463[0] = v31;
  v400 = *(v463 + (BYTE1(v36) & 0xF));
  v462[3] = v464;
  v462[2] = v33;
  v462[1] = v32;
  v462[0] = v31;
  v399 = *(v462 + (v36 & 0xF));
  v37 = *(v27 + v30);
  v38 = *(v27 + v30 + 16);
  v39 = *(v27 + v30 + 32);
  v40 = *(v27 + v35);
  v468 = *(v27 + v30 + 48);
  v467[2] = v39;
  v467[1] = v38;
  v467[0] = v37;
  v398 = *(v467 + (v40 & 0xF));
  v461[3] = v464;
  v461[2] = v33;
  v461[1] = v32;
  v461[0] = v31;
  v379 = *(v461 + (BYTE2(v36) & 0xF));
  v460[3] = v464;
  v460[2] = v33;
  v460[1] = v32;
  v460[0] = v31;
  v367 = *(v460 + (BYTE3(v36) & 0xF));
  v466[3] = v468;
  v466[2] = v39;
  v466[1] = v38;
  v466[0] = v37;
  v372 = *(v466 + (BYTE2(v40) & 0xF));
  v465[3] = v468;
  v465[2] = v39;
  v465[1] = v38;
  v465[0] = v37;
  v362 = *(v465 + (BYTE3(v40) & 0xF));
  v41 = (v28 + v30);
  v42 = *v41;
  v43 = v41[1];
  v44 = v41[2];
  v45 = v41[3];
  v46 = v28 + v35;
  v47 = *(v28 + v35 + 2) & 0xF;
  v470[3] = v45;
  v470[2] = v44;
  v470[1] = v43;
  v470[0] = v42;
  v375 = *(v470 + v47);
  v48 = *(v46 + 3) & 0xF;
  v469[3] = v45;
  v469[2] = v44;
  v469[1] = v43;
  v469[0] = v42;
  v364 = *(v469 + v48);
  v366 = v27;
  v403 = v28;
  if (!v392)
  {
    v368 = 0;
    v358 = 0;
    v353 = 0;
    v351 = 0;
    goto LABEL_110;
  }

  if (!v396)
  {
    v353 = 0;
    v351 = 0;
    goto LABEL_66;
  }

  v49 = *(v27 + *MEMORY[0x277CD73C8]);
  if (v49 <= 301989895)
  {
    if (v49 == 8)
    {
      goto LABEL_45;
    }

    v50 = 268435464;
  }

  else
  {
    if (v49 == 301989896 || v49 == 335544328)
    {
      goto LABEL_45;
    }

    v50 = 536870920;
  }

  if (v49 != v50 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_45:
  if (!v390 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v51 = *MEMORY[0x277CD73C8];
  v52 = *(v27 + v51) & 0x1000FFFF;
  v53 = *(v390 + v51);
  if (v52 == 268435464)
  {
    if (v53 == 268435488 || (MTLReportFailureTypeEnabled() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if ((v53 & 0x7FFFFFFF) == 0x10000010 || !MTLReportFailureTypeEnabled())
  {
    goto LABEL_51;
  }

  MTLReportFailure();
LABEL_51:
  if (*(v390 + *MEMORY[0x277CD7410] + 4 * (*(v390 + *v34) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v54 = *(v390 + *MEMORY[0x277CD7410] + 4 * (*(v390 + *v34 + 1) & 0xF));
  if (v54 != 1 && v54 != v400 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v55 = *MEMORY[0x277CD7410];
  v56 = *(v27 + v55);
  v57 = *(v27 + v55 + 16);
  v58 = *(v27 + v55 + 32);
  v59 = *v34;
  v60 = *(v27 + v59);
  v456 = *(v27 + v55 + 48);
  v455[2] = v58;
  v455[1] = v57;
  v455[0] = v56;
  v61 = *(v455 + (v60 & 0xF));
  v454[3] = v456;
  v454[2] = v58;
  v454[1] = v57;
  v454[0] = v56;
  v62 = *(v454 + (BYTE1(v60) & 0xF));
  v63 = (v390 + v55);
  v64 = *v63;
  v65 = v63[1];
  v66 = v63[2];
  v67 = *(v390 + v59);
  v459 = v63[3];
  v458[2] = v66;
  v458[1] = v65;
  v458[0] = v64;
  v68 = *(v458 + (v67 & 0xF));
  v457[3] = v459;
  v457[2] = v66;
  v457[1] = v65;
  v457[0] = v64;
  v69 = *(v457 + (BYTE1(v67) & 0xF));
  if (v386)
  {
    if ((*(v27 + *MEMORY[0x277CD73C8]) & 0x1000FFFF) == 0x10000008 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v386 + *MEMORY[0x277CD73C8]) != *(v27 + *MEMORY[0x277CD73C8]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v386 + *MEMORY[0x277CD7410] + 4 * (*(v386 + *v34) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v70 = *(v386 + *MEMORY[0x277CD7410] + 4 * (*(v386 + *v34 + 1) & 0xF));
    if (v70 != 1 && v70 != v400 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v351 = v61 / v68;
  v353 = v62 / v69;
  if (v371)
  {
    if ((*(v27 + *MEMORY[0x277CD73C8]) & 0x1000FFFF) == 0x10000008 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v371 + *MEMORY[0x277CD73C8]) != *(v390 + *MEMORY[0x277CD73C8]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v371 + *MEMORY[0x277CD7410] + 4 * (*(v371 + *v34) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v71 = *(v371 + *MEMORY[0x277CD7410] + 4 * (*(v371 + *v34 + 1) & 0xF));
    if (v71 != 1 && v71 != v400 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

LABEL_66:
  v72 = *MEMORY[0x277CD73C8];
  if (!v394)
  {
    v368 = 0;
    v358 = 0;
    v28 = v403;
    goto LABEL_91;
  }

  v28 = v403;
  if ((*&v403[v72] | 0x20000000) != 0x20000008)
  {
    v204 = *(v27 + v72);
    if (v204 != 268435464 && v204 != 301989896 && v204 != 335544328 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (!v381 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v73 = *MEMORY[0x277CD73C8];
  v74 = *&v403[v73] & 0x1000FFFF;
  v75 = *(v381 + v73);
  if (v74 == 268435464)
  {
    if (v75 == 268435488 || (MTLReportFailureTypeEnabled() & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  else if ((v75 & 0x7FFFFFFF) == 0x10000010 || !MTLReportFailureTypeEnabled())
  {
    goto LABEL_75;
  }

  MTLReportFailure();
  v28 = v403;
LABEL_75:
  if (*(v381 + *MEMORY[0x277CD7410] + 4 * (*(v381 + *v34 + 1) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v76 = *(v381 + *MEMORY[0x277CD7410] + 4 * (*(v381 + *v34) & 0xF));
  if (v76 != 1 && v76 != v399 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v384)
  {
    if ((*(v28 + *MEMORY[0x277CD73C8]) & 0x1000FFFF) == 0x10000008 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v384 + *MEMORY[0x277CD73C8]) != *(v28 + *MEMORY[0x277CD73C8]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v384 + *MEMORY[0x277CD7410] + 4 * (*(v384 + *v34 + 1) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v77 = *(v384 + *MEMORY[0x277CD7410] + 4 * (*(v384 + *v34) & 0xF));
    if (v77 != 1 && v77 != v399 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v370)
  {
    if ((*(v28 + *MEMORY[0x277CD73C8]) & 0x1000FFFF) == 0x10000008 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v370 + *MEMORY[0x277CD73C8]) != *(v381 + *MEMORY[0x277CD73C8]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v370 + *MEMORY[0x277CD7410] + 4 * (*(v370 + *v34 + 1) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v78 = *(v370 + *MEMORY[0x277CD7410] + 4 * (*(v370 + *v34) & 0xF));
    if (v78 != 1 && v78 != v399 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v79 = *MEMORY[0x277CD7410];
  v80 = *(v28 + v79);
  v81 = *(v28 + v79 + 16);
  v82 = *(v28 + v79 + 32);
  v83 = *v34;
  v84 = *(v28 + v83);
  v450 = *(v28 + v79 + 48);
  v449[2] = v82;
  v449[1] = v81;
  v449[0] = v80;
  v85 = *(v449 + (v84 & 0xF));
  v448[3] = v450;
  v448[2] = v82;
  v448[1] = v81;
  v448[0] = v80;
  v86 = *(v448 + (BYTE1(v84) & 0xF));
  v87 = (v381 + v79);
  v88 = *v87;
  v89 = v87[1];
  v90 = v87[2];
  v91 = *(v381 + v83);
  v453 = v87[3];
  v452[2] = v90;
  v452[1] = v89;
  v452[0] = v88;
  LODWORD(v87) = *(v452 + (v91 & 0xF));
  v451[3] = v453;
  v451[2] = v90;
  v451[1] = v89;
  v451[0] = v88;
  v358 = v85 / v87;
  v368 = v86 / *(v451 + (BYTE1(v91) & 0xF));
  v72 = *MEMORY[0x277CD73C8];
LABEL_91:
  v92 = *(v27 + v72);
  v93 = *(v28 + v72);
  v94 = (v93 & 0x1000FFFF) == 0x10000008 || (v92 & 0x1000FFFF) == 268435464;
  if (v94 && v92 != v93 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v396 && v394)
  {
    if (*(v390 + *MEMORY[0x277CD73C8]) == *(v381 + *MEMORY[0x277CD73C8]))
    {
      goto LABEL_110;
    }

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_106;
    }
  }

  else if (!v396 || v394)
  {
    if (v396 || !v394 || *(v27 + *MEMORY[0x277CD73C8]) == *(v381 + *MEMORY[0x277CD73C8]))
    {
      goto LABEL_110;
    }

    if (MTLReportFailureTypeEnabled())
    {
LABEL_106:
      MTLReportFailure();
      v28 = v403;
      goto LABEL_110;
    }
  }

  else
  {
    if (*(v390 + *MEMORY[0x277CD73C8]) == *(v28 + *MEMORY[0x277CD73C8]))
    {
      goto LABEL_110;
    }

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_106;
    }
  }

  v28 = v403;
LABEL_110:
  v95 = *MEMORY[0x277CD73C8];
  v380 = *(v28 + v95);
  v378 = *(v27 + v95);
  if (v378 == 536870920 && v380 == 536870920 || v378 == 8 && v380 == 8 || v378 == 268435472 && v380 == 268435472 || v378 == -1879048176 && v380 == -1879048176 || v378 == 268435464 && v380 == 268435464 || v378 == 301989896 && v380 == 301989896 || v378 == 335544328 && v380 == 335544328 || v378 == 268435488 && v380 == 268435488 && (MPSForceMatrixUnit() & 1) != 0)
  {
    goto LABEL_124;
  }

  if (!v392)
  {
    goto LABEL_629;
  }

  if ((v378 | 0x20000000) == 0x20000008)
  {
    if (v380 <= 268435471)
    {
      if (v380 == -1879048176)
      {
        goto LABEL_124;
      }

      if (v380 != 8)
      {
        goto LABEL_616;
      }

      goto LABEL_622;
    }

    if (v380 == 268435472)
    {
      goto LABEL_124;
    }

    v338 = v380;
  }

  else
  {
    v338 = v380 | 0x20000000;
  }

  if (v338 != 536870920)
  {
LABEL_616:
    if ((v378 | 0x20000000) != 0x20000008)
    {
      goto LABEL_629;
    }

    goto LABEL_628;
  }

LABEL_622:
  if (v378 <= 268435471)
  {
    if (v378 == -1879048176)
    {
      goto LABEL_124;
    }

    if (v378 != 8)
    {
      goto LABEL_629;
    }

    goto LABEL_628;
  }

  if (v378 == 268435472)
  {
    goto LABEL_124;
  }

  if (v378 != 536870920)
  {
LABEL_629:
    EncodeMatrixMultiplyLinkingA14();
    goto LABEL_17;
  }

LABEL_628:
  if (((v380 - 8) & 0xDFFFFFFF) != 0)
  {
    goto LABEL_629;
  }

LABEL_124:
  if (MEMORY[0] != *(v27 + *MEMORY[0x277CD7410] + 4 * (*(v27 + *v34) & 0xF)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[8] != *(v27 + *MEMORY[0x277CD7410] + 4 * (*(v27 + *v34 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[0] != *&v403[4 * (*&v403[*v34] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[8] != *&v403[4 * (v403[*v34 + 1] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[0] != *&v402[4 * (*&v402[*v34] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[8] != *&v402[4 * (v402[*v34 + 1] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v27 + *MEMORY[0x277CD7410] + 4 * (*(v27 + *v34) & 0xF)) != *&v403[4 * (v403[*v34 + 1] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v27 + *MEMORY[0x277CD7410] + 4 * (*(v27 + *v34 + 1) & 0xF)) != *&v402[4 * (v402[*v34 + 1] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*&v403[4 * (*&v403[*v34] & 0xF) + *MEMORY[0x277CD7410]] != *&v402[4 * (*&v402[*v34] & 0xF) + *MEMORY[0x277CD7410]] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v96 = v378;
  if (v378 <= 268435487)
  {
    if (v378 <= 268435463)
    {
      if (v378 == -1879048176 || v378 == 8)
      {
        goto LABEL_147;
      }

      goto LABEL_310;
    }

    if (v378 == 268435464)
    {
      goto LABEL_147;
    }

    v97 = 268435472;
    goto LABEL_145;
  }

  if (v378 > 335544327)
  {
    if (v378 == 335544328)
    {
      goto LABEL_147;
    }

    v97 = 536870920;
LABEL_145:
    v96 = v378;
    goto LABEL_146;
  }

  if (v378 == 268435488)
  {
    MPSForceMatrixUnit();
    if (MPSForceMatrixUnit())
    {
      goto LABEL_147;
    }

    goto LABEL_310;
  }

  v97 = 301989896;
LABEL_146:
  if (v96 == v97)
  {
    goto LABEL_147;
  }

LABEL_310:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_147:
  v98 = v380;
  if (v380 > 268435487)
  {
    if (v380 <= 335544327)
    {
      if (v380 == 268435488)
      {
        MPSForceMatrixUnit();
        if (MPSForceMatrixUnit())
        {
          goto LABEL_161;
        }

        goto LABEL_313;
      }

      v99 = 301989896;
      goto LABEL_160;
    }

    if (v380 == 335544328)
    {
      goto LABEL_161;
    }

    v99 = 536870920;
LABEL_159:
    v98 = v380;
LABEL_160:
    if (v98 == v99)
    {
      goto LABEL_161;
    }

    goto LABEL_313;
  }

  if (v380 > 268435463)
  {
    if (v380 == 268435464)
    {
      goto LABEL_161;
    }

    v99 = 268435472;
    goto LABEL_159;
  }

  if (v380 == -1879048176 || v380 == 8)
  {
    goto LABEL_161;
  }

LABEL_313:
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_161:
  v100 = v27 + *v34;
  if ((!*(v100 + 2) || !*(v100 + 3)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v101 = &v403[*v34];
  if ((!v101[2] || !v101[3]) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v102 = MEMORY[0x277CD7428];
  if (*(v27 + *MEMORY[0x277CD7428]) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*&v403[*v102] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v103 = *v34;
  v104 = v27 + v103;
  v105 = *(v27 + v103);
  v106 = &v403[v103];
  v107 = *&v403[v103];
  v108 = *v102;
  v109 = *(v27 + v108);
  v110 = *(v27 + v108 + 16);
  v111 = *(v27 + v108 + 32);
  v112 = *(v27 + v108 + 48);
  v113 = *(v27 + v108 + 64);
  v114 = *(v27 + v108 + 80);
  v115 = *(v27 + v108 + 96);
  v116 = *(v27 + v108 + 112);
  if (v105)
  {
    v117 = *(v27 + v103);
  }

  else
  {
    v117 = BYTE1(*(v27 + v103));
  }

  v446[7] = *(v27 + v108 + 112);
  v446[6] = v115;
  v446[5] = v114;
  v446[4] = v113;
  v446[3] = v112;
  v446[2] = v111;
  v446[1] = v110;
  v446[0] = v109;
  v349 = *(v446 + (v117 & 0xF));
  v118 = *&v403[v108];
  v119 = *&v403[v108 + 16];
  v120 = *&v403[v108 + 32];
  v121 = *&v403[v108 + 48];
  v122 = *&v403[v108 + 64];
  v123 = *&v403[v108 + 80];
  v124 = *&v403[v108 + 96];
  v125 = *&v403[v108 + 112];
  if (v107)
  {
    v126 = v107;
  }

  else
  {
    v126 = BYTE1(v107);
  }

  v447[7] = *&v403[v108 + 112];
  v447[6] = v124;
  v447[5] = v123;
  v447[4] = v122;
  v447[3] = v121;
  v447[2] = v120;
  v447[1] = v119;
  v447[0] = v118;
  v348 = *(v447 + (v126 & 0xF));
  if (v372 == 1 || v375 != 1 || v105)
  {
    if (v375 == 1 || v372 != 1 || !v107)
    {
      goto LABEL_196;
    }

    LODWORD(v350) = 0;
    if (v107 > 1u || BYTE1(v107) > 1u || BYTE2(v107) != 2 || BYTE1(v107) >= BYTE2(v107))
    {
      goto LABEL_199;
    }

    v128 = BYTE1(v107) & 0xF;
    v129 = *&v403[4 * v128 + *MEMORY[0x277CD7410]];
    v444[0] = v118;
    v444[1] = v119;
    v444[2] = v120;
    v444[3] = v121;
    v444[4] = v122;
    v444[5] = v123;
    v444[6] = v124;
    v444[7] = v125;
    if (*(v444 + v128) * v129 != v119)
    {
      goto LABEL_197;
    }
  }

  else
  {
    if (BYTE1(v105) > 1u)
    {
      goto LABEL_198;
    }

    if (BYTE2(v105) != 2)
    {
      goto LABEL_198;
    }

    if (BYTE1(v105) >= BYTE2(v105))
    {
      goto LABEL_198;
    }

    v127 = *(v27 + *MEMORY[0x277CD7410] + 4 * (BYTE1(v105) & 0xF));
    v445[0] = v109;
    v445[1] = v110;
    v445[2] = v111;
    v445[3] = v112;
    v445[4] = v113;
    v445[5] = v114;
    v445[6] = v115;
    v445[7] = v116;
    if (*(v445 + (BYTE1(v105) & 0xF)) * v127 != v110)
    {
      goto LABEL_198;
    }
  }

  v131 = v400 > 7 && v399 > 7;
  if (!v131 && !v392)
  {
    EncodeMatrixMultiplyLinkingA14();
    operator delete(0);
    goto LABEL_17;
  }

LABEL_196:
  if (v372 == 1)
  {
LABEL_197:
    LODWORD(v350) = 0;
    goto LABEL_199;
  }

LABEL_198:
  v443[0] = v109;
  v443[1] = v110;
  v443[2] = v111;
  v443[3] = v112;
  v443[4] = v113;
  v443[5] = v114;
  v443[6] = v115;
  v443[7] = v116;
  v350 = *(v443 + (BYTE2(v105) & 0xF));
LABEL_199:
  v442[0] = v109;
  v442[1] = v110;
  v442[2] = v111;
  v442[3] = v112;
  v442[4] = v113;
  v442[5] = v114;
  v442[6] = v115;
  v442[7] = v116;
  if (v362 == 1)
  {
    v132 = 0;
  }

  else
  {
    v132 = *(v442 + (BYTE3(v105) & 0xF));
  }

  v441[0] = v118;
  v441[1] = v119;
  v441[2] = v120;
  v441[3] = v121;
  v441[4] = v122;
  v441[5] = v123;
  v441[6] = v124;
  v441[7] = v125;
  if (v375 == 1)
  {
    v133 = 0;
  }

  else
  {
    v133 = *(v441 + (BYTE2(v107) & 0xF));
  }

  v440[0] = v118;
  v440[1] = v119;
  v440[2] = v120;
  v440[3] = v121;
  v440[4] = v122;
  v440[5] = v123;
  v440[6] = v124;
  v440[7] = v125;
  if (v364 == 1)
  {
    v134 = 0;
  }

  else
  {
    v134 = *(v440 + (BYTE3(v107) & 0xF));
  }

  v363 = 0u;
  v365 = 0u;
  v361 = 0u;
  v376 = 0u;
  v135 = v370;
  v136 = v371;
  v137 = v381;
  if (v396)
  {
    v138 = *(v390 + v103);
    v139 = *MEMORY[0x277CD7410];
    v140 = *(v390 + v139);
    v141 = *(v390 + v139 + 16);
    v142 = *(v390 + v139 + 32);
    v143 = *(v390 + v139 + 48);
    v439[3] = v143;
    v439[2] = v142;
    v439[1] = v141;
    v439[0] = v140;
    if (*(v439 + (v138 & 0xF)) == 1)
    {
      LODWORD(v144) = 0;
    }

    else
    {
      v144 = *(v390 + v108 + 8 * (v138 & 0xF));
    }

    v438[0] = v140;
    v438[1] = v141;
    v438[2] = v142;
    v438[3] = v143;
    if (*(v438 + (BYTE1(v138) & 0xF)) == 1)
    {
      LODWORD(v145) = 0;
    }

    else
    {
      v145 = *(v390 + v108 + 8 * (BYTE1(v138) & 0xF));
    }

    v437[0] = v140;
    v437[1] = v141;
    v437[2] = v142;
    v437[3] = v143;
    if (*(v437 + (BYTE2(v138) & 0xF)) == 1)
    {
      LODWORD(v146) = 0;
    }

    else
    {
      v146 = *(v390 + v108 + 8 * (BYTE2(v138) & 0xF));
    }

    v436[0] = v140;
    v436[1] = v141;
    v436[2] = v142;
    v436[3] = v143;
    if (*(v436 + (BYTE3(v138) & 0xF)) == 1)
    {
      LODWORD(v147) = 0;
    }

    else
    {
      v147 = *(v390 + v108 + 8 * (BYTE3(v138) & 0xF));
    }

    *&v138 = __PAIR64__(v145, v144);
    DWORD2(v138) = v146;
    v377 = v138;
    v361 = 0u;
    v363 = 0u;
    if (v386)
    {
      v148 = *(v386 + v103);
      v149 = *(v386 + v139);
      v150 = *(v386 + v139 + 16);
      v151 = *(v386 + v139 + 32);
      v152 = *(v386 + v139 + 48);
      v435[3] = v152;
      v435[2] = v151;
      v435[1] = v150;
      v435[0] = v149;
      if (*(v435 + (v148 & 0xF)) == 1)
      {
        LODWORD(v153) = 0;
      }

      else
      {
        v153 = *(v386 + v108 + 8 * (v148 & 0xF));
      }

      v434[0] = v149;
      v434[1] = v150;
      v434[2] = v151;
      v434[3] = v152;
      if (*(v434 + (BYTE1(v148) & 0xF)) == 1)
      {
        LODWORD(v154) = 0;
      }

      else
      {
        v154 = *(v386 + v108 + 8 * (BYTE1(v148) & 0xF));
      }

      v433[0] = v149;
      v433[1] = v150;
      v433[2] = v151;
      v433[3] = v152;
      if (*(v433 + (BYTE2(v148) & 0xF)) == 1)
      {
        LODWORD(v155) = 0;
      }

      else
      {
        v155 = *(v386 + v108 + 8 * (BYTE2(v148) & 0xF));
      }

      v432[0] = v149;
      v432[1] = v150;
      v432[2] = v151;
      v432[3] = v152;
      if (*(v432 + (BYTE3(v148) & 0xF)) == 1)
      {
        LODWORD(v156) = 0;
      }

      else
      {
        v156 = *(v386 + v108 + 8 * (BYTE3(v148) & 0xF));
      }

      *&v157 = __PAIR64__(v154, v153);
      *(&v157 + 1) = __PAIR64__(v156, v155);
      v361 = v157;
    }

    v158 = v377;
    HIDWORD(v158) = v147;
    v376 = v158;
    if (v371)
    {
      v159 = *(v371 + v103);
      v160 = (v371 + v139);
      v161 = *v160;
      v162 = v160[1];
      v163 = v160[2];
      v164 = v160[3];
      v431[3] = v164;
      v431[2] = v163;
      v431[1] = v162;
      v431[0] = v161;
      if (*(v431 + (v159 & 0xF)) == 1)
      {
        LODWORD(v165) = 0;
      }

      else
      {
        v165 = *(v371 + v108 + 8 * (v159 & 0xF));
      }

      v430[0] = v161;
      v430[1] = v162;
      v430[2] = v163;
      v430[3] = v164;
      if (*(v430 + (BYTE1(v159) & 0xF)) == 1)
      {
        LODWORD(v166) = 0;
      }

      else
      {
        v166 = *(v371 + v108 + 8 * (BYTE1(v159) & 0xF));
      }

      v429[0] = v161;
      v429[1] = v162;
      v429[2] = v163;
      v429[3] = v164;
      if (*(v429 + (BYTE2(v159) & 0xF)) == 1)
      {
        LODWORD(v167) = 0;
      }

      else
      {
        v167 = *(v371 + v108 + 8 * (BYTE2(v159) & 0xF));
      }

      v428[0] = v161;
      v428[1] = v162;
      v428[2] = v163;
      v428[3] = v164;
      if (*(v428 + (BYTE3(v159) & 0xF)) == 1)
      {
        LODWORD(v168) = 0;
      }

      else
      {
        v168 = *(v371 + v108 + 8 * (BYTE3(v159) & 0xF));
      }

      *&v169 = __PAIR64__(v166, v165);
      *(&v169 + 1) = __PAIR64__(v168, v167);
      v363 = v169;
    }
  }

  v360 = 0u;
  v373 = 0u;
  if (v394)
  {
    v170 = *(v381 + v103);
    v171 = *MEMORY[0x277CD7410];
    v172 = *(v381 + v171);
    v173 = *(v381 + v171 + 16);
    v174 = *(v381 + v171 + 32);
    v175 = *(v381 + v171 + 48);
    v427[3] = v175;
    v427[2] = v174;
    v427[1] = v173;
    v427[0] = v172;
    if (*(v427 + (v170 & 0xF)) == 1)
    {
      LODWORD(v176) = 0;
    }

    else
    {
      v176 = *(v381 + v108 + 8 * (v170 & 0xF));
    }

    v426[0] = v172;
    v426[1] = v173;
    v426[2] = v174;
    v426[3] = v175;
    if (*(v426 + (BYTE1(v170) & 0xF)) == 1)
    {
      LODWORD(v177) = 0;
    }

    else
    {
      v177 = *(v381 + v108 + 8 * (BYTE1(v170) & 0xF));
    }

    v425[0] = v172;
    v425[1] = v173;
    v425[2] = v174;
    v425[3] = v175;
    if (*(v425 + (BYTE2(v170) & 0xF)) == 1)
    {
      LODWORD(v178) = 0;
    }

    else
    {
      v178 = *(v381 + v108 + 8 * (BYTE2(v170) & 0xF));
    }

    v424[0] = v172;
    v424[1] = v173;
    v424[2] = v174;
    v424[3] = v175;
    if (*(v424 + (BYTE3(v170) & 0xF)) == 1)
    {
      LODWORD(v179) = 0;
    }

    else
    {
      v179 = *(v381 + v108 + 8 * (BYTE3(v170) & 0xF));
    }

    *&v170 = __PAIR64__(v177, v176);
    DWORD2(v170) = v178;
    v374 = v170;
    v365 = 0u;
    v360 = 0u;
    if (v384)
    {
      v180 = *(v384 + v103);
      v181 = *(v384 + v171);
      v182 = *(v384 + v171 + 16);
      v183 = *(v384 + v171 + 32);
      v184 = *(v384 + v171 + 48);
      v423[3] = v184;
      v423[2] = v183;
      v423[1] = v182;
      v423[0] = v181;
      if (*(v423 + (v180 & 0xF)) == 1)
      {
        LODWORD(v185) = 0;
      }

      else
      {
        v185 = *(v384 + v108 + 8 * (v180 & 0xF));
      }

      v422[0] = v181;
      v422[1] = v182;
      v422[2] = v183;
      v422[3] = v184;
      if (*(v422 + (BYTE1(v180) & 0xF)) == 1)
      {
        LODWORD(v186) = 0;
      }

      else
      {
        v186 = *(v384 + v108 + 8 * (BYTE1(v180) & 0xF));
      }

      v421[0] = v181;
      v421[1] = v182;
      v421[2] = v183;
      v421[3] = v184;
      if (*(v421 + (BYTE2(v180) & 0xF)) == 1)
      {
        LODWORD(v187) = 0;
      }

      else
      {
        v187 = *(v384 + v108 + 8 * (BYTE2(v180) & 0xF));
      }

      v420[0] = v181;
      v420[1] = v182;
      v420[2] = v183;
      v420[3] = v184;
      if (*(v420 + (BYTE3(v180) & 0xF)) == 1)
      {
        LODWORD(v188) = 0;
      }

      else
      {
        v188 = *(v384 + v108 + 8 * (BYTE3(v180) & 0xF));
      }

      *&v189 = __PAIR64__(v186, v185);
      *(&v189 + 1) = __PAIR64__(v188, v187);
      v360 = v189;
    }

    v190 = v374;
    HIDWORD(v190) = v179;
    v373 = v190;
    if (v370)
    {
      v191 = *(v370 + v103);
      v192 = *(v370 + v171);
      v193 = *(v370 + v171 + 16);
      v194 = *(v370 + v171 + 32);
      v195 = *(v370 + v171 + 48);
      v419[3] = v195;
      v419[2] = v194;
      v419[1] = v193;
      v419[0] = v192;
      if (*(v419 + (v191 & 0xF)) == 1)
      {
        LODWORD(v196) = 0;
      }

      else
      {
        v196 = *(v370 + v108 + 8 * (v191 & 0xF));
      }

      v418[0] = v192;
      v418[1] = v193;
      v418[2] = v194;
      v418[3] = v195;
      if (*(v418 + (BYTE1(v191) & 0xF)) == 1)
      {
        LODWORD(v197) = 0;
      }

      else
      {
        v197 = *(v370 + v108 + 8 * (BYTE1(v191) & 0xF));
      }

      v417[0] = v192;
      v417[1] = v193;
      v417[2] = v194;
      v417[3] = v195;
      if (*(v417 + (BYTE2(v191) & 0xF)) == 1)
      {
        LODWORD(v198) = 0;
      }

      else
      {
        v198 = *(v370 + v108 + 8 * (BYTE2(v191) & 0xF));
      }

      v416[0] = v192;
      v416[1] = v193;
      v416[2] = v194;
      v416[3] = v195;
      if (*(v416 + (BYTE3(v191) & 0xF)) == 1)
      {
        LODWORD(v199) = 0;
      }

      else
      {
        v199 = *(v370 + v108 + 8 * (BYTE3(v191) & 0xF));
      }

      *&v200 = __PAIR64__(v197, v196);
      *(&v200 + 1) = __PAIR64__(v199, v198);
      v365 = v200;
    }
  }

  v507 = v400;
  v508 = v399;
  v509 = v398;
  v510 = v379;
  v511 = v367;
  v512 = *v104;
  v513 = *(v104 + 1);
  v514 = *(v104 + 2);
  v515 = *(v104 + 3);
  v516 = *v106;
  v517 = v106[1];
  v518 = v106[2];
  v519 = v106[3];
  v201 = *MEMORY[0x277CD73C8];
  v202 = *(v27 + v201);
  v346 = v133;
  v347 = v132;
  v345 = v134;
  if (v202 > 268435487)
  {
    if (v202 > 536870913)
    {
      switch(v202)
      {
        case 536870914:
          v203 = 9;
          goto LABEL_329;
        case 536870916:
          v203 = 7;
          goto LABEL_329;
        case 536870920:
          v203 = 0;
          goto LABEL_329;
      }
    }

    else
    {
      if (v202 == 268435488)
      {
        v203 = 6;
        goto LABEL_329;
      }

      if (v202 == 301989896 || v202 == 335544328)
      {
        v203 = 2;
        goto LABEL_329;
      }
    }
  }

  else if (v202 > 7)
  {
    switch(v202)
    {
      case 8:
        v203 = 1;
        goto LABEL_329;
      case 268435464:
        v203 = 3;
        goto LABEL_329;
      case 268435472:
        v203 = 4;
        goto LABEL_329;
    }
  }

  else
  {
    switch(v202)
    {
      case -1879048176:
        v203 = 5;
        goto LABEL_329;
      case 2:
        v203 = 10;
        goto LABEL_329;
      case 4:
        v203 = 8;
        goto LABEL_329;
    }
  }

  v203 = 11;
LABEL_329:
  v520 = v203;
  v205 = *&v403[v201];
  if (v205 > 268435487)
  {
    if (v205 > 536870913)
    {
      switch(v205)
      {
        case 536870914:
          v206 = 9;
          goto LABEL_356;
        case 536870916:
          v206 = 7;
          goto LABEL_356;
        case 536870920:
          v206 = 0;
          goto LABEL_356;
      }
    }

    else
    {
      if (v205 == 268435488)
      {
        v206 = 6;
        goto LABEL_356;
      }

      if (v205 == 301989896 || v205 == 335544328)
      {
        v206 = 2;
        goto LABEL_356;
      }
    }
  }

  else if (v205 > 7)
  {
    switch(v205)
    {
      case 8:
        v206 = 1;
        goto LABEL_356;
      case 268435464:
        v206 = 3;
        goto LABEL_356;
      case 268435472:
        v206 = 4;
        goto LABEL_356;
    }
  }

  else
  {
    switch(v205)
    {
      case -1879048176:
        v206 = 5;
        goto LABEL_356;
      case 2:
        v206 = 10;
        goto LABEL_356;
      case 4:
        v206 = 8;
        goto LABEL_356;
    }
  }

  v206 = 11;
LABEL_356:
  v521 = v206;
  v522 = v351;
  v523 = v353;
  v524 = v358;
  v525 = v368;
  if (v386 | v371)
  {
    v207 = 1;
  }

  else
  {
    v207 = v396 == 0;
  }

  v208 = !v207;
  v526 = v208;
  if (v384 | v370)
  {
    v209 = 1;
  }

  else
  {
    v209 = v394 == 0;
  }

  v210 = !v209;
  v527 = v210;
  if (v10)
  {
    v212 = *v10;
    v211 = v10[1];
    v369 = v10[2];
    v383 = v10[3];
    v382 = v10[4];
    v389 = v10[5];
    v359 = v10[6];
    v393 = v10[7];
    v354 = v10[8];
    v213 = v10[9];
    v214 = v10[10];
    goto LABEL_381;
  }

  v215 = v8[4];
  if (v215)
  {
    v216 = v8[5];
    if (v216)
    {
      while (memcmp(v215, &v507, 0x50uLL))
      {
        v215 += 31;
        if (!--v216)
        {
          goto LABEL_374;
        }
      }

      goto LABEL_380;
    }
  }

LABEL_374:
  v217 = v8[3];
  if (v217)
  {
    v215 = v8[2];
    while (memcmp(v215, &v507, 0x50uLL))
    {
      v215 += 31;
      if (!--v217)
      {
        goto LABEL_378;
      }
    }

LABEL_380:
    v212 = v215[20];
    v211 = v215[21];
    v369 = v215[22];
    v383 = v215[23];
    v382 = v215[24];
    v389 = v215[25];
    v359 = v215[26];
    v393 = v215[27];
    v354 = v215[28];
    v213 = v215[29];
    v214 = v215[30];
LABEL_381:
    v352 = v213;
    v220 = v398;
    v221 = v399;
    v219 = v400;
    if ((*(v7 + *MEMORY[0x277CD7378]) & 0x10) == 0)
    {
      goto LABEL_420;
    }

LABEL_419:
    v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", v219, v221, v220, v510, v511, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527];
    MPSKernel_LogInfo(v7, 1uLL, "MatMul A18 kernel running key with params:    {%s, %s}\n", [v228 UTF8String], objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"{%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d}", v212, v211, v369, v383, v382, v389, v359, v393, v354, v352, v214), "UTF8String"));
    goto LABEL_420;
  }

LABEL_378:
  if (v203 >= 4)
  {
    if (v203 - 4 >= 2)
    {
      if (v203 != 6 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v218 = 0;
      v359 = 4;
      v220 = v509;
      v219 = v507;
    }

    else
    {
      v220 = v398;
      v359 = 2;
      if (v398 <= 0x1000)
      {
        v218 = 2;
      }

      else
      {
        v218 = 3;
      }

      v219 = v400;
    }
  }

  else
  {
    v218 = 4;
    v359 = 2;
    v219 = v400;
    v220 = v398;
  }

  if ((v220 + 15) >> 4 < v218)
  {
    v218 = (v220 + 15) >> 4;
  }

  if (v218 <= 1)
  {
    v212 = 1;
  }

  else
  {
    v212 = v218;
  }

  if (v219 > 1)
  {
    v222 = 64 - __clz(v219 - 1);
  }

  else
  {
    v222 = (v219 == 0) << 63;
  }

  if (v222 >= 7)
  {
    v222 = 7;
  }

  v223 = 4;
  if (v222 > 4)
  {
    v223 = v222;
  }

  v221 = v508;
  if (v508 > 1)
  {
    v224 = 64 - __clz(v508 - 1);
  }

  else
  {
    v224 = (v508 == 0) << 63;
  }

  v352 = 0;
  v214 = 0;
  if (v224 >= 6)
  {
    v224 = 6;
  }

  if (v224 <= 4)
  {
    LOBYTE(v224) = 4;
  }

  v225 = v223 - 4;
  if ((v223 - 4) >= 2)
  {
    v225 = 2;
  }

  LODWORD(v226) = 8 * (v220 > 0x400);
  v383 = (1 << v225);
  v227 = 1 << v223;
  if (v220 <= 0x1000)
  {
    v226 = v226;
  }

  else
  {
    v226 = 12;
  }

  v354 = v226;
  v211 = v227 >> v225 >> 4;
  v382 = 1;
  v369 = (1 << v224) >> 4;
  v389 = 1;
  v393 = 1;
  if ((*(v7 + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    goto LABEL_419;
  }

LABEL_420:
  if (qword_27DF86800 == -1)
  {
    if (_MergedGlobals_18 != 1)
    {
      goto LABEL_426;
    }
  }

  else
  {
    dispatch_once(&qword_27DF86800, &__block_literal_global_0);
    if (_MergedGlobals_18 != 1)
    {
      goto LABEL_426;
    }
  }

  if ([v7 conformsToProtocol:{&unk_284CCB9C0, v135, v137, v136}])
  {
    if (!qword_27DF867F8)
    {
      qword_27DF867F8 = objc_alloc_init(MPSNDArrayAutoTuneRecorderObj);
    }

    v229 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v507 length:80];
    [qword_27DF867F8 recordNode:v229 kernelID:2];
  }

LABEL_426:
  if (v355 != -1)
  {
    if ((v355 & 0x8000000000000000) != 0)
    {
      v241 = -1;
    }

    else
    {
      if (v355 >> 16 <= 2)
      {
        v230 = v355;
        while (1)
        {
          v231 = vdup_n_s32(v230);
          v232 = vadd_s32(vand_s8(vshl_u32(v231, 0xFFFFFFFEFFFFFFFCLL), 0x300000003), 0x100000001);
          v233 = vadd_s32(vand_s8(vshl_u32(v231, 0xFFFFFFFAFFFFFFF7), 0x700000007), 0x100000001);
          v234 = vshl_n_s32(vmul_s32(v232, v233), 4uLL);
          v235 = vcgt_u32(0x400100000009, vmul_s32(vzip1_s32(v233, v234), vzip2_s32(v233, v234)));
          if (v235.i8[0] & 1) != 0 && (v235.i8[4])
          {
            v236 = v234.i32[0] < 0x40u || ((v230 >> 14) + 1) * (((v230 >> 12) & 3) + 1) > 8;
            if (!v236 && v234.i32[1] >= 0x40u)
            {
              break;
            }
          }

          if (++v230 == 196608)
          {
            goto LABEL_439;
          }
        }

        v214 = 0;
        v212 = (v230 & 3) + 1;
        v352 = 0;
        v354 = (v230 >> 14) & 0xC;
        v369 = v232.u32[0];
        v211 = v232.u32[1];
        v382 = v233.u32[0];
        v383 = v233.u32[1];
        v389 = 1;
        v359 = ((v230 >> 12) & 3) + 1;
        v393 = (v230 >> 14) + 1;
      }

LABEL_439:
      if (v382 * v383 > 8 || (v237 = 16 * v211 * v383, v238 = 16 * v369 * v382, v238 * v237 > 0x4000) || v238 < 0x40 || v237 < 0x40 || v393 * v359 >= 9)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      if (v355 < 0x30000)
      {
        v239 = 196607;
      }

      else
      {
        v239 = v355;
      }

      v240 = 4 * v355 + 4;
      v241 = v355;
      while (v239 != v241)
      {
        v242 = v240;
        v243 = ((++v241 >> 6) & 7) + 1;
        v244 = ((v241 >> 9) & 7) + 1;
        v240 += 4;
        if (v244 * v243 <= 8)
        {
          v245 = ((v242 & 0x30u) + 16) * v243;
          v246 = v244 * ((v241 & 0x30) + 16);
          if (v246 * v245 <= 0x4000 && v246 >= 0x40 && ((v241 >> 12) & 3) + 1 + (((v241 >> 12) & 3) + 1) * (v241 >> 14) <= 8 && v245 >= 0x40)
          {
            goto LABEL_457;
          }
        }
      }

      v241 = -1;
LABEL_457:
      if (v241 == v355)
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v241 = v355;
      }
    }

    *(v7 + 224) = v241;
    if (*(v7 + 232) == 1)
    {
      *(v7 + 232) = 0;
      v247 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", v507, v508, v509, v510, v511, v512, v513, v514, v515, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527];
      MPSKernel_LogInfo(v7, 0, "MatMul A18 kernel running auto tune iteration %7ld key with params:    {%s, %s}\n", v355, [v247 UTF8String], objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"{%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d}", v212, v211, v369, v383, v382, v389, v359, v393, v354, v352, v214), "UTF8String"));
    }
  }

  v248 = (16 * v212 * v389);
  if (v214)
  {
    if (v214 >= 0x10 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v248 + v248 * v214 >= v398 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v356 = v214;
  v249 = (v383 * 16 * v211);
  v250 = v379 * v367;
  v342 = (*(*(v7 + *MEMORY[0x277CD7350]) + 1488) & 0xE) != 0 && v250 > 1;
  v343 = (v250 + 1) >> 1;
  if (v342)
  {
    v251 = (v250 + 1) >> 1;
  }

  else
  {
    v251 = v379 * v367;
  }

  *(*(v7 + *MEMORY[0x277CD7350]) + 1488);
  v252 = *MEMORY[0x277CD73C8];
  v253 = *(v27 + v252);
  v344 = v251;
  if (v253 > 268435487)
  {
    if (v253 > 335544327)
    {
      if (v253 != 335544328)
      {
        if (v253 == 536870920)
        {
          v254 = 0;
          v255 = *&v403[v252];
          if (v255 > 268435487)
          {
            goto LABEL_497;
          }

          goto LABEL_485;
        }

        goto LABEL_551;
      }
    }

    else
    {
      if (v253 == 268435488)
      {
        v254 = 6;
        v255 = *&v403[v252];
        if (v255 <= 268435487)
        {
          goto LABEL_485;
        }

        goto LABEL_497;
      }

      if (v253 != 301989896)
      {
        goto LABEL_551;
      }
    }

    v254 = 2;
    v255 = *&v403[v252];
    if (v255 <= 268435487)
    {
      goto LABEL_485;
    }

    goto LABEL_497;
  }

  if (v253 <= 268435463)
  {
    if (v253 == -1879048176)
    {
      v254 = 5;
      v255 = *&v403[v252];
      if (v255 > 268435487)
      {
        goto LABEL_497;
      }

      goto LABEL_485;
    }

    if (v253 == 8)
    {
      v254 = 1;
      v255 = *&v403[v252];
      if (v255 > 268435487)
      {
        goto LABEL_497;
      }

LABEL_485:
      if (v255 > 268435463)
      {
        if (v255 == 268435464)
        {
          v254 |= 0x18u;
          if ((*(v27 + v252) & 0xFFF8) == 8)
          {
            goto LABEL_506;
          }
        }

        else
        {
          if (v255 != 268435472)
          {
            goto LABEL_553;
          }

          v254 |= 0x20u;
          if ((*(v27 + v252) & 0xFFF8) == 8)
          {
            goto LABEL_506;
          }
        }
      }

      else if (v255 == -1879048176)
      {
        v254 |= 0x28u;
        if ((*(v27 + v252) & 0xFFF8) == 8)
        {
          goto LABEL_506;
        }
      }

      else
      {
        if (v255 != 8)
        {
          goto LABEL_553;
        }

        v254 |= 8u;
        if ((*(v27 + v252) & 0xFFF8) == 8)
        {
          goto LABEL_506;
        }
      }

      goto LABEL_510;
    }

    goto LABEL_551;
  }

  if (v253 != 268435464)
  {
    if (v253 == 268435472)
    {
      v254 = 4;
      v255 = *&v403[v252];
      if (v255 > 268435487)
      {
        goto LABEL_497;
      }

      goto LABEL_485;
    }

LABEL_551:
    v254 = 7;
    v255 = *&v403[v252];
    if (v255 > 268435487)
    {
      goto LABEL_497;
    }

    goto LABEL_485;
  }

  v254 = 3;
  v255 = *&v403[v252];
  if (v255 <= 268435487)
  {
    goto LABEL_485;
  }

LABEL_497:
  if (v255 <= 335544327)
  {
    if (v255 == 268435488)
    {
      v254 |= 0x30u;
      if ((*(v27 + v252) & 0xFFF8) == 8)
      {
        goto LABEL_506;
      }

      goto LABEL_510;
    }

    if (v255 != 301989896)
    {
LABEL_553:
      v254 |= 0x38u;
      if ((*(v27 + v252) & 0xFFF8) != 8)
      {
        goto LABEL_510;
      }

LABEL_506:
      v256 = ((*(v27 + *MEMORY[0x277CD7408]) & 3) == 0) << 28;
      goto LABEL_511;
    }

    goto LABEL_505;
  }

  if (v255 == 335544328)
  {
LABEL_505:
    v254 |= 0x10u;
    if ((*(v27 + v252) & 0xFFF8) == 8)
    {
      goto LABEL_506;
    }

    goto LABEL_510;
  }

  if (v255 != 536870920)
  {
    goto LABEL_553;
  }

  if ((*(v27 + v252) & 0xFFF8) == 8)
  {
    goto LABEL_506;
  }

LABEL_510:
  v256 = 0x10000000;
LABEL_511:
  v257 = v254 | v256;
  if ((v255 & 0xFFF8) == 8)
  {
    v258 = v257 | (((v403[*MEMORY[0x277CD7408]] & 3) == 0) << 29);
    if (!v396)
    {
      goto LABEL_513;
    }
  }

  else
  {
    v258 = v257 | 0x20000000;
    if (!v396)
    {
LABEL_513:
      if (v394)
      {
        goto LABEL_514;
      }

      goto LABEL_593;
    }
  }

  v261 = *(v390 + v252);
  if (v261 > 268435487)
  {
    if (v261 > 335544327)
    {
      if (v261 != 335544328)
      {
        if (v261 == 536870920)
        {
          v262 = 0;
          goto LABEL_578;
        }

        goto LABEL_577;
      }
    }

    else
    {
      if (v261 == 268435488)
      {
        v262 = 384;
        goto LABEL_578;
      }

      if (v261 != 301989896)
      {
        goto LABEL_577;
      }
    }

    v262 = 128;
    goto LABEL_578;
  }

  if (v261 > 268435463)
  {
    if (v261 == 268435464)
    {
      v262 = 192;
      goto LABEL_578;
    }

    if (v261 == 268435472)
    {
      v262 = 256;
      goto LABEL_578;
    }
  }

  else
  {
    if (v261 == -1879048176)
    {
      v262 = 320;
      goto LABEL_578;
    }

    if (v261 == 8)
    {
      v262 = 64;
      goto LABEL_578;
    }
  }

LABEL_577:
  v262 = 448;
LABEL_578:
  v287 = *MEMORY[0x277CD7410];
  v288 = *(v390 + v287);
  v289 = *(v390 + v287 + 16);
  v290 = *v34;
  v291 = *(v390 + v290);
  v292 = *(v390 + v287 + 32);
  v293 = *(v390 + v287 + 48);
  v415[3] = v293;
  v415[2] = v292;
  v415[1] = v289;
  v415[0] = v288;
  if (*(v415 + (v291 & 0xF)) == 1)
  {
    v414[0] = v288;
    v414[1] = v289;
    v414[2] = v292;
    v414[3] = v293;
    v294 = (*(v414 + (BYTE1(v291) & 0xF)) == 1) << 16;
    if (!v386)
    {
LABEL_585:
      v300 = 0;
      v301 = v371;
      if (!v371)
      {
        goto LABEL_588;
      }

      goto LABEL_586;
    }
  }

  else
  {
    v294 = 0;
    if (!v386)
    {
      goto LABEL_585;
    }
  }

  v295 = *(v386 + v287);
  v296 = *(v386 + v287 + 16);
  v297 = *(v386 + v290);
  v298 = *(v386 + v287 + 32);
  v299 = *(v386 + v287 + 48);
  v413[3] = v299;
  v413[2] = v298;
  v413[1] = v296;
  v413[0] = v295;
  if (*(v413 + (v297 & 0xF)) != 1)
  {
    goto LABEL_585;
  }

  v412[0] = v295;
  v412[1] = v296;
  v412[2] = v298;
  v412[3] = v299;
  v300 = (*(v412 + (BYTE1(v297) & 0xF)) == 1) << 18;
  v301 = v371;
  if (!v371)
  {
    goto LABEL_588;
  }

LABEL_586:
  v302 = (v301 + v287);
  v303 = *v302;
  v304 = v302[1];
  v305 = *(v301 + v290);
  v306 = v302[2];
  v307 = v302[3];
  v411[3] = v307;
  v411[2] = v306;
  v411[1] = v304;
  v411[0] = v303;
  if (*(v411 + (v305 & 0xF)) == 1)
  {
    v410[0] = v303;
    v410[1] = v304;
    v410[2] = v306;
    v410[3] = v307;
    v308 = (*(v410 + (BYTE1(v305) & 0xF)) == 1) << 20;
    goto LABEL_589;
  }

LABEL_588:
  v308 = 0;
LABEL_589:
  if (v386)
  {
    v309 = ((*(v386 + *MEMORY[0x277CD7408]) & 3) == 0) << 30;
  }

  else
  {
    v309 = 0;
  }

  v258 |= ((v371 != 0) << 14) | ((v386 != 0) << 12) | ((BYTE4(v363) & 1) << 24) | ((BYTE4(v361) & 1) << 23) | ((BYTE4(v376) & 1) << 22) | v262 | v294 | v300 | v308 | v309;
  if (v394)
  {
LABEL_514:
    v259 = *(v381 + v252);
    if (v259 <= 268435487)
    {
      if (v259 > 268435463)
      {
        if (v259 == 268435464)
        {
          v260 = 1536;
          goto LABEL_562;
        }

        if (v259 == 268435472)
        {
          v260 = 2048;
          goto LABEL_562;
        }
      }

      else
      {
        if (v259 == -1879048176)
        {
          v260 = 2560;
          goto LABEL_562;
        }

        if (v259 == 8)
        {
          v260 = 512;
          goto LABEL_562;
        }
      }

LABEL_561:
      v260 = 3584;
LABEL_562:
      v263 = *MEMORY[0x277CD7410];
      v264 = *(v381 + v263);
      v265 = *(v381 + v263 + 16);
      v266 = *v34;
      v267 = *(v381 + v266);
      v268 = *(v381 + v263 + 32);
      v269 = *(v381 + v263 + 48);
      v409[3] = v269;
      v409[2] = v268;
      v409[1] = v265;
      v409[0] = v264;
      if (*(v409 + (v267 & 0xF)) == 1)
      {
        v408[0] = v264;
        v408[1] = v265;
        v408[2] = v268;
        v408[3] = v269;
        v270 = (*(v408 + (BYTE1(v267) & 0xF)) == 1) << 17;
        v271 = v380;
        if (!v384)
        {
          goto LABEL_569;
        }
      }

      else
      {
        v270 = 0;
        v271 = v380;
        if (!v384)
        {
          goto LABEL_569;
        }
      }

      v272 = *(v384 + v263);
      v273 = *(v384 + v263 + 16);
      v274 = *(v384 + v266);
      v275 = *(v384 + v263 + 32);
      v276 = *(v384 + v263 + 48);
      v407[2] = v275;
      v407[3] = v276;
      v407[0] = v272;
      v407[1] = v273;
      if (*(v407 + (v274 & 0xF)) == 1)
      {
        v406[0] = v272;
        v406[1] = v273;
        v406[2] = v275;
        v406[3] = v276;
        v277 = (*(v406 + (BYTE1(v274) & 0xF)) == 1) << 19;
        v278 = v370;
        if (!v370)
        {
          goto LABEL_572;
        }

LABEL_570:
        v279 = (v278 + v263);
        v280 = *v279;
        v281 = v279[1];
        v282 = *(v278 + v266);
        v283 = v279[2];
        v284 = v279[3];
        v405[2] = v283;
        v405[3] = v284;
        v405[0] = v280;
        v405[1] = v281;
        if (*(v405 + (v282 & 0xF)) == 1)
        {
          v404[0] = v280;
          v404[1] = v281;
          v404[2] = v283;
          v404[3] = v284;
          v285 = (*(v404 + (BYTE1(v282) & 0xF)) == 1) << 21;
LABEL_573:
          if (v384)
          {
            v286 = ((*(v384 + *MEMORY[0x277CD7408]) & 3) == 0) << 31;
          }

          else
          {
            v286 = 0;
          }

          v258 = ((v370 != 0) << 15) | ((v384 != 0) << 13) | ((v365 & 1) << 27) | ((v360 & 1) << 26) | ((v373 & 1) << 25) | v258 & 0xF1D551FF | v260 | v270 | v277 | v285 | v286;
          goto LABEL_594;
        }

LABEL_572:
        v285 = 0;
        goto LABEL_573;
      }

LABEL_569:
      v277 = 0;
      v278 = v370;
      if (!v370)
      {
        goto LABEL_572;
      }

      goto LABEL_570;
    }

    if (v259 > 335544327)
    {
      if (v259 != 335544328)
      {
        if (v259 == 536870920)
        {
          v260 = 0;
          goto LABEL_562;
        }

        goto LABEL_561;
      }
    }

    else
    {
      if (v259 == 268435488)
      {
        v260 = 3072;
        goto LABEL_562;
      }

      if (v259 != 301989896)
      {
        goto LABEL_561;
      }
    }

    v260 = 1024;
    goto LABEL_562;
  }

LABEL_593:
  v271 = v380;
LABEL_594:
  v310 = [v402 dataType];
  v506 = 0;
  v505 = 0;
  v499 = -1;
  v500 = -1;
  v501 = v258;
  v502 = (v271 << 10) | (32 * v378) | v310;
  v503 = 0u;
  v504 = 0u;
  v505 = [*(v388 + 16) count] | ((*(v388 + 112) != 0) << 8) | 0x10000;
  v506 = 0;
  v340 = *(v7 + *MEMORY[0x277CD7360]);
  v341 = *(v7 + *MEMORY[0x277CD7368]);
  v339 = *(v388 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSGetUShortDivisorMagicNumber();
  v397 = v312;
  v313 = (v393 + ((v399 + (16 * v369 * v382) - 1) / (16 * v369 * v382)) - 1) / v393;
  MPSGetUIntDivisorMagicNumber();
  v395 = v314;
  v315 = (v359 + ((v400 + v249 - 1) / v249) - 1) / v359;
  MPSGetUIntDivisorMagicNumber();
  v391 = v316;
  MPSGetUIntDivisorMagicNumber();
  v387 = v317;
  LODWORD(v318) = v393 * v359;
  MPSGetUIntDivisorMagicNumber();
  v385 = v319;
  MPSGetUIntDivisorMagicNumber();
  LODWORD(v320) = 1;
  DWORD1(v320) = v349;
  LODWORD(v321) = 1;
  DWORD1(v321) = v348;
  *(&v320 + 1) = __PAIR64__(v347, v350);
  *(&v321 + 1) = __PAIR64__(v345, v346);
  v322 = v397;
  HIWORD(v322) = 0;
  v323 = v395;
  HIDWORD(v323) = 0;
  v324 = v391;
  HIDWORD(v324) = 0;
  v326 = v385;
  v325 = v387;
  HIDWORD(v325) = 0;
  HIDWORD(v326) = 0;
  HIDWORD(v327) = 0;
  v498 = 0u;
  v495 = 0u;
  v493 = 0u;
  v491 = 0u;
  v489 = 0u;
  v474[0] = v400;
  v474[1] = v399;
  v328 = (v398 + v248 - 1) / v248;
  v475 = v398;
  v476 = v320;
  v477 = v376;
  v478 = v361;
  v479 = v363;
  v480 = v321;
  v481 = v373;
  v482 = v360;
  v483 = v365;
  v484 = v536;
  v485 = vmovn_s32(vuzp1q_s32(v537, v533));
  v486 = v534;
  v487 = v393;
  v488 = v359;
  *&v489 = v322;
  v490 = v324;
  *&v491 = __PAIR64__(v315, v313);
  v492 = v323;
  *&v493 = __PAIR64__(v367, v379);
  v494 = v325;
  LODWORD(v495) = v328;
  v496 = v326;
  v497 = v327;
  if (v342)
  {
    v250 = v313 * v315 * v318;
    v329 = 2;
  }

  else
  {
    v329 = v313 * v315;
  }

  if (v342)
  {
    v318 = v343;
  }

  else
  {
    v318 = v318;
  }

  LODWORD(v498) = v344;
  v330 = *(v388 + 8);
  v331 = *(v330 + 80 * v535 + 64);
  v332 = *(v330 + 80 * v532 + 64);
  v333 = *(v388 + 192);
  [v401 setComputePipelineState:{PipelineStateForMPSKey, v339, v340, v341, 0, 0}];
  MPSSetNDArraysOnComputeEncoder(v401, v388, 4, 0, 0);
  [v401 setBuffer:objc_msgSend(v366 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v366, 0, 4, 0, 0) + v331, 29}];
  [v401 setBuffer:objc_msgSend(v403 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v403, 0, 4, 0, 0) + v332, 28}];
  [v401 setBuffer:objc_msgSend(v402 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v402, 0, 4, 0, 0) + v333, 27}];
  [v401 setBytes:v474 length:320 atIndex:26];
  v334 = (v382 * v383 * (v389 - 1)) << 10;
  if (v389 <= 1)
  {
    v334 = 0;
  }

  v335 = 4 * v389 * v328;
  if (!v356)
  {
    v335 = 0;
  }

  v336 = v335 + v334;
  if (v336 <= v352)
  {
    v337 = v352;
  }

  else
  {
    v337 = v336;
  }

  [v401 setThreadgroupMemoryLength:v337 atIndex:0];
  [v401 setBuffer:0 offset:0 atIndex:25];
  v473[0] = v318;
  v473[1] = v329;
  v473[2] = v250;
  v471 = (32 * v382 * v383 * v389);
  v472 = vdupq_n_s64(1uLL);
  [v401 dispatchThreadgroups:v473 threadsPerThreadgroup:&v471];
  MPSLibrary::ReleaseComputeState();
LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_239A13F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, void *a61)
{
  if (STACK[0x288])
  {
    operator delete(STACK[0x288]);
    if (!a60)
    {
LABEL_3:
      if (!a61)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a60)
  {
    goto LABEL_3;
  }

  operator delete(a60);
  if (!a61)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a61);
  _Unwind_Resume(a1);
}

uint64_t MPSKernel_LogInfo(uint64_t result, unint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= a2)
  {
    return vfprintf(*MEMORY[0x277D85DF8], a3, va);
  }

  return result;
}

uint64_t MPSNDArrayMatMulA14DeviceBehavior::EncodeArrayMultiply(uint64_t a1, void *a2, void *a3, uint64_t a4, id *a5)
{
  v213[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v8 = MEMORY[0x277CD7350];
  if (*(a1 + 8))
  {
    if ((*(*(a2 + *MEMORY[0x277CD7350]) + 1472) - 11) < 7)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    [a2 setAutoTuningTarget:v9];
    [a2 setAutoTuningParameters:*(a1 + 8)];
  }

  v10 = *(a5 + 13);
  v210 = *(a5 + 12);
  v211 = v10;
  v212 = *(a5 + 14);
  v11 = *(a5 + 9);
  v206 = *(a5 + 8);
  v207 = v11;
  v12 = *(a5 + 10);
  v209 = *(a5 + 11);
  v208 = v12;
  v13 = *(a5 + 5);
  v202 = *(a5 + 4);
  v203 = v13;
  v14 = *(a5 + 6);
  v205 = *(a5 + 7);
  v204 = v14;
  v15 = *(a5 + 1);
  v198 = *a5;
  v199 = v15;
  v16 = *(a5 + 2);
  v201 = *(a5 + 3);
  v200 = v16;
  v17 = [*(&v212 + 1) graph];
  v18 = *(v17 + 64);
  v19 = *v18;
  v20 = v18[1];
  v160 = a2;
  if (*v18 == v20)
  {
    v169 = 0;
    goto LABEL_19;
  }

  v21 = v17;
  v22 = 0;
  v169 = -1;
  v23 = -1;
  do
  {
    v24 = *v19;
    CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v21);
    v26 = v169;
    if (v24 == *(CoreOpInputAtIndex + 32))
    {
      v26 = v22;
    }

    v169 = v26;
    v27 = *v19;
    if (v27 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v21) + 32))
    {
      v23 = v22;
    }

    if (MPSKernelDAG::GetCoreOpNumberOfInputs(v21) == 3)
    {
      MPSKernelDAG::GetCoreOpInputAtIndex(v21);
    }

    ++v22;
    ++v19;
  }

  while (v19 != v20);
  a2 = v160;
  if (v169 == -1)
  {
    v169 = 0;
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v23 == -1)
  {
LABEL_19:
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_21:
      v23 = 0;
      goto LABEL_22;
    }

LABEL_20:
    MTLReportFailure();
    goto LABEL_21;
  }

LABEL_22:
  v155 = a5;
  v28 = v199;
  v29 = [v199 objectAtIndexedSubscript:v169];
  v168 = v23;
  v30 = [v199 objectAtIndexedSubscript:v23];
  if (!a2[21] && a2[11] == 3 && a2[22] == 0)
  {
    v32 = [v199 objectAtIndexedSubscript:2];
    if (*(v32 + *MEMORY[0x277CD73C8]) != *(v211 + *MEMORY[0x277CD73C8]))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v33 = *([*(&v212 + 1) graph] + 84);
  [a2 alpha];
  v35 = v34;
  [a2 beta];
  v37 = v36;
  [a2 setAlpha:1.0];
  [a2 setBeta:0.0];
  v38 = MEMORY[0x277CD73D8];
  v39 = *MEMORY[0x277CD73D8];
  v40 = *(v29 + v39);
  v41 = *(v30 + v39);
  v42 = MEMORY[0x277CD7410];
  v43 = *MEMORY[0x277CD7410];
  v44 = (v30 + v43);
  v45 = *(v30 + v43);
  if (DWORD2(v45) == 1)
  {
    v47 = *(v29 + v43 + 8) == 1 && HIDWORD(v45) == 1 && HIDWORD(*(v29 + v43)) == 1;
  }

  else
  {
    v47 = 0;
  }

  v49 = v44[2];
  v48 = v44[3];
  v50 = v44[1];
  v51 = v41 > BYTE1(v41);
  v52 = v40 <= BYTE1(v40);
  v53 = *(v160 + *v8);
  v54 = *(v53 + 1480);
  v55 = v54;
  v56 = 1024;
  if (v54 > 8uLL)
  {
    v56 = 0x2000;
  }

  v165 = v56;
  v57 = *(v211 + v43);
  LODWORD(v56) = *(v211 + v43 + 4);
  if (v57 >= v56)
  {
    v56 = v56;
  }

  else
  {
    v56 = v57;
  }

  v58 = *(v160 + 200);
  if (v58 && *(v58 + 30) == 1)
  {
    v59 = *(v29 + v43 + 32);
    v60 = *(v29 + v43 + 48);
    v61 = *(v29 + v43);
    v62 = *(v29 + v43 + 16);
    v63 = 1;
    goto LABEL_104;
  }

  if (v54 > 8uLL || v56 >> 10 >= 7)
  {
    v61 = *(v29 + v43);
    v62 = *(v29 + v43 + 16);
    v59 = *(v29 + v43 + 32);
    v60 = *(v29 + v43 + 48);
    v182[2] = v59;
    v182[3] = v60;
    v182[0] = v61;
    v182[1] = v62;
    v64 = *(v182 + (v40 & 0xF));
    if (v64 == 18816 || v64 == 7168)
    {
      v66 = v56 >= 8;
      goto LABEL_101;
    }
  }

  v67 = *MEMORY[0x277CD73C8];
  v68 = *(v29 + v67);
  if (v68 == 268435488)
  {
    if (*(v30 + v67) == 268435488)
    {
      v69 = 4;
    }

    else
    {
      v69 = 3;
    }
  }

  else
  {
    v69 = 3;
  }

  v70 = 10;
  if (v54 > 8uLL)
  {
    v70 = 13;
  }

  v66 = v69 * (v56 << v70) >= v54 << 12;
  v71 = 9;
  if (!v66)
  {
    v71 = 15;
  }

  if (*(v53 + 1472) > 10)
  {
    v75 = *(v29 + v43 + 4 * (BYTE2(v40) & 0xF));
    v181[0] = v45;
    v181[1] = v50;
    v181[2] = v49;
    v181[3] = v48;
    v76 = *(v181 + (BYTE2(v41) & 0xF));
    if (v40 <= BYTE1(v40) && v76 == 1)
    {
      v78 = v75;
    }

    else
    {
      v78 = 1;
    }

    v56 = v78 * v56;
    v79 = v76 << v70;
    if (v41 <= BYTE1(v41))
    {
      v79 = v165;
    }

    if (v75 == 1)
    {
      v74 = v79;
    }

    else
    {
      v74 = v165;
    }

    v73 = v71;
  }

  else
  {
    if (v56)
    {
      v72 = 15;
    }

    else
    {
      v72 = v71;
    }

    if (v68 == 268435472)
    {
      v73 = v72;
    }

    else
    {
      v73 = v71;
    }

    if (v68 == 268435472)
    {
      v71 = 15;
    }

    v74 = v165;
  }

  v80 = v56 > v73 && v74 > v71;
  v81 = (v29 + v43);
  v61 = *v81;
  v62 = v81[1];
  v59 = v81[2];
  v60 = v81[3];
  v180[2] = v59;
  v180[3] = v60;
  v180[0] = v61;
  v180[1] = v62;
  LODWORD(v82) = *(v180 + (BYTE3(v40) & 0xF));
  v179[0] = v45;
  v179[1] = v50;
  v179[2] = v49;
  v179[3] = v48;
  v83 = *(v179 + (BYTE3(v40) & 0xF));
  v63 = !v80;
  if (v82 <= v83)
  {
    v82 = v83;
  }

  else
  {
    v82 = v82;
  }

  v84 = v56 * v82;
  if (v63 == 1 && v84 > v73)
  {
    v178[0] = v45;
    v178[1] = v50;
    v178[2] = v49;
    v178[3] = v48;
    v66 = *(v178 + (v41 & 0xF)) >= 0x81u;
LABEL_101:
    v63 = !v66;
  }

LABEL_104:
  v177[0] = v61;
  v177[1] = v62;
  v177[2] = v59;
  v177[3] = v60;
  if (*(v177 | (4 * v52)) <= 0x8000u)
  {
    v176[0] = v45;
    v176[1] = v50;
    v176[2] = v49;
    v176[3] = v48;
    if (*(v176 | (4 * v51)) <= 0x8000u || !v47)
    {
LABEL_112:
      v87 = v160;
      if (*(v53 + 1472) < 11)
      {
        EncodeMatrixMultiplyLinking(v160, a3, a4, &v198);
      }

      else
      {
        EncodeMatrixMultiplyLinkingA14();
      }

      v88 = v155;
      goto LABEL_186;
    }
  }

  else if (!v47)
  {
    goto LABEL_112;
  }

  if (*(v53 + 1472) < 11)
  {
    v86 = 1;
  }

  else
  {
    v86 = v33;
  }

  if ((v86 | v63))
  {
    goto LABEL_112;
  }

  v89 = [v199 count];
  if (v89)
  {
    if (!(v89 >> 61))
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v90 = 0;
  v91 = 64;
  while (v90 < [v28 count])
  {
    *(8 * v90++) = *(*(&v198 + 1) + v91);
    v91 += 80;
  }

  v158 = v210;
  v92 = *v42;
  v93 = v165 - 1 + *(v29 + v92 + 4 * v52);
  v94 = *(v30 + v92 + 4 * v51);
  v95 = 10;
  if (v55 > 8)
  {
    v95 = 13;
  }

  v159 = v95;
  v96 = v93 >> v95;
  v195 = v210;
  v196 = v211;
  v197 = v212;
  v191 = v206;
  v192 = v207;
  v194 = v209;
  v193 = v208;
  v187 = v202;
  v188 = v203;
  v189 = v204;
  v190 = v205;
  v183 = v198;
  v184 = v199;
  v185 = v200;
  v186 = v201;
  v87 = v160;
  if (v93 >> v95)
  {
    v97 = 0;
    v161 = (v165 - 1 + v94) >> v95;
    v98 = MEMORY[0x277CD73F0];
    v156 = v93 >> v95;
    do
    {
      *(*(&v183 + 1) + 80 * v169 + 64) = *(8 * v169);
      v157 = v97;
      readSrcTempNDArray(&v198, &v183, a4, a3, v87[19], v97, v96, v165, v169, v168, 1u);
      v99 = v161;
      if (v161)
      {
        v100 = 0;
        v164 = v157 << v159;
        do
        {
          *(*(&v183 + 1) + 80 * v168 + 64) = *(8 * v168);
          v162 = v100;
          readSrcTempNDArray(&v198, &v183, a4, a3, v87[19], v100, v99, v165, v169, v168, 0);
          v101 = 0;
          v102 = 64;
          while (v101 < [v28 count])
          {
            if (v169 != v101 && v168 != v101)
            {
              *(*(&v183 + 1) + v102) = *(8 * v101);
            }

            ++v101;
            v102 += 80;
          }

          v163 = v87[19];
          v103 = [MEMORY[0x277CBEB18] arrayWithArray:v184];
          if ([v28 count])
          {
            v104 = 0;
            do
            {
              if (v104 != v169 && v104 != v168)
              {
                v105 = [v28 objectAtIndexedSubscript:v104];
                v106 = [v105 descriptor];
                v107 = v106;
                v108 = &v105[*v42];
                v109 = *v108;
                v110 = *(v108 + 1);
                v111 = *(v108 + 2);
                v112 = *(v108 + 3);
                v113 = *&v106[*MEMORY[0x277CD7438]];
                v114 = v113;
                v174[2] = v111;
                v174[3] = v112;
                v174[0] = v109;
                v174[1] = v110;
                if (*(v174 + (BYTE1(v113) & 0xF)) - v164 >= v165)
                {
                  v115 = v165;
                }

                else
                {
                  v115 = *(v174 + (BYTE1(v113) & 0xF)) - v164;
                }

                if (v113)
                {
                  v116 = 0;
                }

                else
                {
                  v116 = BYTE1(v113) == 1;
                }

                v117 = !v116;
                v118 = &v106[*MEMORY[0x277CD7458]];
                v120 = *v118;
                v119 = *(v118 + 1);
                v122 = *(v118 + 2);
                v121 = *(v118 + 3);
                v175[2] = v122;
                v175[3] = v121;
                v175[0] = v120;
                v175[1] = v119;
                if (*(v175 | (4 * v117)) != 1)
                {
                  v173[0] = v109;
                  v173[1] = v110;
                  v173[2] = v111;
                  v173[3] = v112;
                  *(v173 + (v114 & 0xF));
                  [v106 sliceDimension:0 withSubrange:?];
                  v123 = &v107[*MEMORY[0x277CD7458]];
                  v122 = *(v123 + 2);
                  v121 = *(v123 + 3);
                  v120 = *v123;
                  v119 = *(v123 + 1);
                }

                v172[0] = v120;
                v172[1] = v119;
                v172[2] = v122;
                v172[3] = v121;
                if (*(v172 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v117 & 1) == 0))) != 1)
                {
                  [v107 sliceDimension:1 withSubrange:{v164, v115}];
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v105 setReadCount:{objc_msgSend(v105, "readCount") + 1}];
                }

                v124 = [v105 safeArrayViewWithCommandBuffer:a4 computeEncoder:a3 descriptor:v107 aliasing:1];
                v125 = [v107 getShape];
                if ([v125 count] >= 5)
                {
                  v125 = [v125 subarrayWithRange:{objc_msgSend(v125, "count") - 4, 4}];
                }

                v126 = [MEMORY[0x277CD7268] descriptorWithDataType:*(v124 + *MEMORY[0x277CD73C8]) shape:v125];
                v127 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a4 descriptor:v126];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v105 setReadCount:{objc_msgSend(v105, "readCount") + 1}];
                }

                if (*(v124 + *v98) >= 5uLL)
                {
                  v128 = 4;
                  do
                  {
                    v129 = v124 + *v42;
                    v171 = *(v124 + *v38);
                    *(v129 + 4 * (*(&v171 | v128++ & 0xF) & 0xF)) = 1;
                  }

                  while (v128 < *(v124 + *v98));
                }

                *(v124 + *MEMORY[0x277CD73F8]) = *(*(&v183 + 1) + 80 * v104 + 64);
                v213[0] = v124;
                [v163 encodeToMPSCommandEncoder:a3 commandBuffer:a4 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v213 kernelDAGObject:{1), 0, v127, 0}];
                [v103 setObject:v127 atIndexedSubscript:v104];
                v130 = [objc_msgSend(v103 objectAtIndexedSubscript:{v104), "offset"}];
                *(*(&v183 + 1) + 80 * v104 + 64) = v130;
                v28 = v199;
              }

              ++v104;
            }

            while (v104 < [v28 count]);
          }

          *&v184 = v103;
          *&v195 = v158;
          v131 = v211;
          v87 = v160;
          v132 = [v211 descriptor];
          v133 = &v131[*v42];
          v134 = *(v133 + 1);
          *v133;
          [v132 sliceDimension:0 withSubrange:?];
          [v132 sliceDimension:1 withSubrange:?];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v131 setReadCount:{objc_msgSend(v131, "readCount") + 1}];
          }

          v135 = [v131 safeArrayViewWithCommandBuffer:a4 computeEncoder:a3 descriptor:v132 aliasing:1];
          v136 = [v132 getShape];
          if ([v136 count] >= 5)
          {
            v136 = [v136 subarrayWithRange:{objc_msgSend(v136, "count") - 4, 4}];
          }

          v137 = [MEMORY[0x277CD7268] descriptorWithDataType:*(v135 + *MEMORY[0x277CD73C8]) shape:v136];
          v138 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a4 descriptor:v137];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v131 setReadCount:{objc_msgSend(v131, "readCount") + 1}];
          }

          *&v196 = v138;
          *&v195 = [v138 offset];
          EncodeMatrixMultiplyLinkingA14();
          v139 = *(v160 + 152);
          v140 = [v131 descriptor];
          v141 = &v131[*v42];
          v142 = *(v141 + 1);
          *v141;
          [v140 sliceDimension:0 withSubrange:?];
          [v140 sliceDimension:1 withSubrange:?];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v131 setReadCount:{objc_msgSend(v131, "readCount") + 1}];
          }

          v143 = [v131 safeArrayViewWithCommandBuffer:a4 computeEncoder:a3 descriptor:v140 aliasing:1];
          v144 = v196;
          *(v143 + *MEMORY[0x277CD73F8]) = v210;
          if (*(v143 + *v98) >= 5uLL)
          {
            v145 = 4;
            do
            {
              v146 = v143 + *v42;
              v170 = *(v143 + *v38);
              *(v146 + 4 * (*(&v170 | v145++ & 0xF) & 0xF)) = 1;
            }

            while (v145 < *(v143 + *v98));
          }

          v213[0] = v144;
          [v139 encodeToMPSCommandEncoder:a3 commandBuffer:a4 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v213 kernelDAGObject:{1), 0, v143, 0}];
          if ([v184 count] >= 2)
          {
            v147 = 1;
            do
            {
              v148 = [v184 objectAtIndexedSubscript:v147];
              v28 = v199;
              if (v148 != [v199 objectAtIndexedSubscript:v147])
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  MPSDecrementReadCount(v148);
                }
              }

              ++v147;
            }

            while (v147 < [v184 count]);
          }

          v99 = v161;
          v100 = v162 + 1;
        }

        while (v162 + 1 != v161);
      }

      v149 = [v184 objectAtIndexedSubscript:0];
      v28 = v199;
      if (v149 != [v199 objectAtIndexedSubscript:0] && *(&v149->super.super.isa + *MEMORY[0x277CD73E0]) == 1)
      {
        MPSDecrementReadCount(v149);
      }

      v96 = v156;
      v97 = v157 + 1;
    }

    while (v157 + 1 != v156);
  }

  v88 = v155;
LABEL_186:
  if ([v199 count])
  {
    v150 = 0;
    do
    {
      v151 = [v199 objectAtIndexedSubscript:v150];
      if (v151 != [v88[2] objectAtIndexedSubscript:v150])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          MPSDecrementReadCount(v151);
        }
      }

      ++v150;
    }

    while (v150 < [v199 count]);
  }

  [v87 setAlpha:v35];
  [v87 setBeta:v37];
  objc_autoreleasePoolPop(context);
  v152 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_239A150D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void EncodeMatrixMultiplyLinkingA14()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v371 = v5;
  v370 = *(v0 + *MEMORY[0x277CD7370]);
  v6 = MEMORY[0x277CD7350];
  v372 = v0;
  v365 = *(v0 + *MEMORY[0x277CD7350]);
  v7 = [*(v1 + 232) graph];
  v8 = *(v7 + 64);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == v10)
  {
    v15 = 0;
    v19 = v372;
    goto LABEL_14;
  }

  v11 = v7;
  v12 = v4;
  v13 = v2;
  v14 = 0;
  v15 = -1;
  v16 = -1;
  do
  {
    v17 = *v9;
    if (v17 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v11) + 32))
    {
      v15 = v14;
    }

    v18 = *v9;
    if (v18 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v11) + 32))
    {
      v16 = v14;
    }

    if (MPSKernelDAG::GetCoreOpNumberOfInputs(v11) == 3)
    {
      MPSKernelDAG::GetCoreOpInputAtIndex(v11);
    }

    ++v14;
    ++v9;
  }

  while (v9 != v10);
  if (v15 == -1)
  {
    v15 = 0;
    v2 = v13;
    v4 = v12;
    v19 = v372;
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v2 = v13;
  v4 = v12;
  v19 = v372;
  if (v16 == -1)
  {
LABEL_14:
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_16:
      v16 = 0;
      goto LABEL_17;
    }

LABEL_15:
    MTLReportFailure();
    goto LABEL_16;
  }

LABEL_17:
  v20 = [*(v2 + 16) objectAtIndexedSubscript:v15];
  v21 = [*(v2 + 16) objectAtIndexedSubscript:v16];
  v22 = v21;
  v23 = *(v2 + 208);
  v24 = *&v19[*v6];
  v25 = *(v19 + 25);
  v26 = MEMORY[0x277CD7410];
  v27 = *MEMORY[0x277CD7410];
  v28 = *&v23[v27];
  v29 = *&v23[v27 + 16];
  v30 = MEMORY[0x277CD73D8];
  v31 = *&v23[v27 + 32];
  v32 = *MEMORY[0x277CD73D8];
  v33 = *&v23[v32];
  v421 = *&v23[v27 + 48];
  v420[2] = v31;
  v420[1] = v29;
  v420[0] = v28;
  v34 = *(v420 + (BYTE1(v33) & 0xF));
  v422[3] = v421;
  v422[2] = v31;
  v422[1] = v29;
  v422[0] = v28;
  v35 = *(v422 + (v33 & 0xF));
  if (!v25 || (*(v25 + 30) & 1) == 0)
  {
    v36 = v34 >> 10 > 6 || v35 >> 10 >= 7;
    if (v36 && ((v37 = *&v20[4 * (*&v20[v32] & 0xF) + v27], v37 != 18816) ? (v38 = v37 == 7168) : (v38 = 1), v38))
    {
      if (v34 >= 8)
      {
LABEL_75:
        v314 = [v20 dataType];
        v312 = [v22 dataType];
        v310 = [v23 dataType];
        makeStrideBytes();
        v61 = *&v20[*v30];
        v417[7] = v444;
        v417[6] = v443;
        v417[5] = v442;
        v417[4] = v441;
        v417[3] = v440;
        v417[2] = v439;
        v417[1] = v438;
        v417[0] = v437;
        v340 = *(v417 + (v61 & 0xF));
        v416[7] = v444;
        v416[6] = v443;
        v416[5] = v442;
        v416[4] = v441;
        v416[3] = v440;
        v416[2] = v439;
        v416[1] = v438;
        v416[0] = v437;
        v339 = *(v416 + (BYTE1(v61) & 0xF));
        v415[7] = v444;
        v415[6] = v443;
        v415[5] = v442;
        v415[4] = v441;
        v415[3] = v440;
        v415[2] = v439;
        v415[1] = v438;
        v415[0] = v437;
        v338 = *(v415 + (BYTE2(v61) & 0xF));
        v414[7] = v444;
        v414[6] = v443;
        v414[5] = v442;
        v414[4] = v441;
        v414[3] = v440;
        v414[2] = v439;
        v414[1] = v438;
        v414[0] = v437;
        v334 = *(v414 + (BYTE3(v61) & 0xF));
        makeStrideBytes();
        v62 = *&v22[*v30];
        v413[7] = v444;
        v413[6] = v443;
        v413[5] = v442;
        v413[4] = v441;
        v413[3] = v440;
        v413[2] = v439;
        v413[1] = v438;
        v413[0] = v437;
        v343 = *(v413 + (v62 & 0xF));
        v412[7] = v444;
        v412[6] = v443;
        v412[5] = v442;
        v412[4] = v441;
        v412[3] = v440;
        v412[2] = v439;
        v412[1] = v438;
        v412[0] = v437;
        v342 = *(v412 + (BYTE1(v62) & 0xF));
        v411[7] = v444;
        v411[6] = v443;
        v411[5] = v442;
        v411[4] = v441;
        v411[3] = v440;
        v411[2] = v439;
        v411[1] = v438;
        v411[0] = v437;
        v341 = *(v411 + (BYTE2(v62) & 0xF));
        v410[7] = v444;
        v410[6] = v443;
        v410[5] = v442;
        v410[4] = v441;
        v410[3] = v440;
        v410[2] = v439;
        v410[1] = v438;
        v410[0] = v437;
        v337 = *(v410 + (BYTE3(v62) & 0xF));
        makeStrideBytes();
        v63 = *v30;
        v64 = *&v23[v63];
        v409[7] = v444;
        v409[6] = v443;
        v409[5] = v442;
        v409[4] = v441;
        v409[3] = v440;
        v409[2] = v439;
        v409[1] = v438;
        v409[0] = v437;
        v306 = *(v409 + (v64 & 0xF));
        v408[7] = v444;
        v408[6] = v443;
        v408[5] = v442;
        v408[4] = v441;
        v408[3] = v440;
        v408[2] = v439;
        v408[1] = v438;
        v408[0] = v437;
        v318 = *(v408 + (BYTE1(v64) & 0xF));
        v407[7] = v444;
        v407[6] = v443;
        v407[5] = v442;
        v407[4] = v441;
        v407[3] = v440;
        v407[2] = v439;
        v407[1] = v438;
        v407[0] = v437;
        v348 = *(v407 + (BYTE2(v64) & 0xF));
        v406[7] = v444;
        v406[6] = v443;
        v406[5] = v442;
        v406[4] = v441;
        v406[3] = v440;
        v406[2] = v439;
        v406[1] = v438;
        v406[0] = v437;
        v347 = *(v406 + (BYTE3(v64) & 0xF));
        v65 = *&v20[v63];
        v66 = v20;
        v67 = v26;
        v68 = v65;
        v69 = *&v22[v63];
        v70 = *v67;
        v71 = *&v23[v70];
        v72 = *&v23[v70 + 16];
        v73 = *&v23[v70 + 32];
        v74 = *&v23[v63];
        v405 = *&v23[v70 + 48];
        v404[2] = v73;
        v404[1] = v72;
        v404[0] = v71;
        v75 = v22;
        v76 = *(v404 + (BYTE1(v74) & 0xF));
        v403[3] = v405;
        v403[2] = v73;
        v403[1] = v72;
        v403[0] = v71;
        v77 = *(v403 + (v74 & 0xF));
        v357 = v66;
        v78 = *&v66[v70];
        v79 = *&v66[v70 + 16];
        v80 = *&v66[v70 + 32];
        v400 = *&v66[v70 + 48];
        v399[2] = v80;
        v399[1] = v79;
        v399[0] = v78;
        v349 = *(v399 + (v65 & 0xF));
        v402[3] = v405;
        v402[2] = v73;
        v402[1] = v72;
        v402[0] = v71;
        v331 = *(v402 + (BYTE2(v74) & 0xF));
        v401[3] = v405;
        v401[2] = v73;
        v401[1] = v72;
        v401[0] = v71;
        v359 = *(v401 + (BYTE3(v74) & 0xF));
        v398[3] = v400;
        v398[2] = v80;
        v398[1] = v79;
        v398[0] = v78;
        v81 = *(v398 + (BYTE2(v65) & 0xF));
        v358 = v75;
        v82 = &v75[v70];
        v83 = *v82;
        v84 = *(v82 + 1);
        v85 = *(v82 + 2);
        v396 = *(v82 + 3);
        v395[2] = v85;
        v395[1] = v84;
        v395[0] = v83;
        v86 = *(v395 + (BYTE2(v69) & 0xF));
        v369 = BYTE1(v65);
        v397[3] = v400;
        v397[2] = v80;
        v397[1] = v79;
        v397[0] = v78;
        v87 = *(v397 + (BYTE3(v65) & 0xF));
        v362 = v69;
        v394[3] = v396;
        v394[2] = v85;
        v394[1] = v84;
        v394[0] = v83;
        v88 = *(v394 + (BYTE3(v69) & 0xF));
        v354 = v87;
        v328 = v88;
        if (v81 != 1 && v81 != v86 && v86 != 1)
        {
          v297 = MTLReportFailureTypeEnabled();
          v88 = v328;
          v87 = v354;
          if (v297)
          {
            MTLReportFailure();
            v88 = v328;
            v87 = v354;
          }
        }

        if (v87 != 1 && v87 != v88 && v88 != 1 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v361 = v23;
        v89 = [*(v2 + 232) graph];
        v90 = **(v89 + 56);
        if (*(*(v89 + 56) + 8) != v90)
        {
          v91 = *v90;
          v93 = *(*v90 + 8);
          v92 = *v93;
          if ((v93[1] - *v93) <= 8)
          {
            goto LABEL_409;
          }

          v94 = *(v92 + 8);
          v95 = *(v2 + 16);
          BaseTensor::GetAccessPattern();
          v308 = v96;
          v97 = **(v91 + 8);
          if (*(*(v91 + 8) + 8) == v97)
          {
            goto LABEL_409;
          }

          v98 = *v97;
          v99 = *(v2 + 16);
          BaseTensor::GetAccessPattern();
          v307 = v100;
          v101 = [*(v2 + 232) graph];
          v102 = **(v101 + 56);
          if (*(*(v101 + 56) + 8) != v102)
          {
            v104 = *(*v102 + 24);
            v103 = *v104;
            if (*(v104 + 8) == *v104)
            {
              goto LABEL_409;
            }

            v316 = *v103;
            v105 = [*(v2 + 232) graph];
            v106 = **(v105 + 56);
            if (*(*(v105 + 56) + 8) != v106)
            {
              v108 = *(*v106 + 8);
              v107 = *v108;
              if ((v108[1] - *v108) <= 8)
              {
                goto LABEL_409;
              }

              v335 = *(v107 + 8);
              v109 = [*(v2 + 232) graph];
              v110 = **(v109 + 56);
              if (*(*(v109 + 56) + 8) != v110)
              {
                v344 = v77;
                v356 = v2;
                v112 = *(*v110 + 8);
                v111 = *v112;
                if (*(v112 + 8) != *v112)
                {
                  v113 = v362;
                  v114 = HIBYTE(v362);
                  v323 = *v111;
                  v115 = v340;
                  if (v68 <= v369)
                  {
                    v115 = v339;
                  }

                  v325 = v115;
                  v49 = v362 > HIBYTE(v362);
                  v116 = *&v361[*MEMORY[0x277CD7400]];
                  v117 = *MEMORY[0x277CD7410];
                  v118 = *&v361[v117];
                  v119 = *&v361[v117 + 16];
                  v120 = *&v361[v117 + 32];
                  v121 = *&v361[v117 + 48];
                  v122 = *MEMORY[0x277CD73D8];
                  v123 = *&v361[v122];
                  v393[3] = v121;
                  v393[2] = v120;
                  v393[1] = v119;
                  v393[0] = v118;
                  v363 = *(v393 + (v123 & 0xF));
                  v124 = v343;
                  if (!v49)
                  {
                    v124 = v342;
                  }

                  v317 = v124;
                  v392[3] = v121;
                  v392[2] = v120;
                  v392[1] = v119;
                  v392[0] = v118;
                  v125 = *(v392 + (BYTE1(v123) & 0xF));
                  if (v81 == 1 || v86 != 1 || v68 > v369)
                  {
                    v126 = 0;
                    if (v86 != 1 && v81 == 1)
                    {
                      v367 = 0;
                      if (v113 <= v114)
                      {
                        goto LABEL_113;
                      }

                      v126 = 0;
                      v139 = *&v358[v122];
                      if (v139 <= 1u && BYTE1(v139) <= 1u && BYTE2(v139) == 2)
                      {
                        v367 = 0;
                        if (BYTE1(v139) < BYTE2(v139))
                        {
                          v126 = 0;
                          v140 = BYTE1(v139) & 0xF;
                          v141 = *&v358[4 * v140 + v117];
                          v142 = &v358[*MEMORY[0x277CD7428]];
                          v143 = *v142;
                          v144 = *(v142 + 1);
                          v145 = *(v142 + 2);
                          v146 = *(v142 + 3);
                          v147 = *(v142 + 4);
                          v148 = *(v142 + 5);
                          v149 = *(v142 + 6);
                          v390[7] = *(v142 + 7);
                          v390[6] = v149;
                          v390[5] = v148;
                          v390[4] = v147;
                          v390[3] = v146;
                          v390[2] = v145;
                          v390[1] = v144;
                          v390[0] = v143;
                          v367 = *(v390 + v140) * v141 == v144;
                        }

LABEL_113:
                        MEMORY[0x23EE7C450](v436, v4, 0);
                        TempBuffer = [v361 buffer];
                        v150 = v349;
                        v352 = v126;
                        v151 = (v76 * v344);
                        v153 = (v349 / v151) <= 0.1 || v349 < 0x801;
                        v321 = v126 || v367;
                        if (v153 || v126 || v367 || *&v361[*MEMORY[0x277CD73F0]] > 3uLL)
                        {
                          v364 = 0;
                          v159 = 1;
                          v158 = v349;
                          v161 = v347;
                          v160 = v348;
                        }

                        else
                        {
                          v154 = v349;
                          do
                          {
                            v154 >>= 1;
                          }

                          while ((v154 / v151) > 0.1);
                          v155 = (v154 + 31) & 0xFFFFFFE0;
                          v156 = (v154 + 15) & 0xFFFFFFF0;
                          if (*(v365 + 1472) <= 17)
                          {
                            v157 = v156;
                          }

                          else
                          {
                            v157 = v155;
                          }

                          v158 = v157;
                          v159 = (v349 + v157 - 1) / v157;
                          TempBuffer = MPSAutoCache::GetTempBuffer(v436, 4 * v359 * v331 * v363 * v125 * v159, 0);
                          LODWORD(v116) = 4 * v363;
                          v160 = 4 * v363 * v125;
                          v161 = v160 * v331;
                          v364 = 1;
                          v150 = v349;
                        }

                        LODWORD(v443) = 0;
                        *&v437 = __PAIR64__(v76, v344);
                        *(&v437 + 1) = __PAIR64__(v331, v150);
                        *&v438 = __PAIR64__(v325, v317);
                        DWORD2(v438) = v116;
                        HIDWORD(v438) = v116;
                        if (v86 == 1)
                        {
                          v162 = 0;
                        }

                        else
                        {
                          v162 = v341;
                        }

                        if (v81 == 1)
                        {
                          v163 = 0;
                        }

                        else
                        {
                          v163 = v338;
                        }

                        *&v439 = __PAIR64__(v163, v162);
                        DWORD2(v439) = v160;
                        HIDWORD(v439) = v160;
                        [v372 alpha];
                        *&v164 = v164;
                        LODWORD(v440) = LODWORD(v164);
                        [v372 beta];
                        *&v165 = v165;
                        DWORD1(v440) = LODWORD(v165);
                        if (v328 == 1)
                        {
                          v166 = 0;
                        }

                        else
                        {
                          v166 = v337;
                        }

                        *(&v440 + 1) = __PAIR64__(v166, v359);
                        if (v354 == 1)
                        {
                          v167 = 0;
                        }

                        else
                        {
                          v167 = v334;
                        }

                        *&v441 = __PAIR64__(v161, v167);
                        *(&v441 + 1) = __PAIR64__(v86, v161);
                        *(&v442 + 4) = 0;
                        LODWORD(v442) = v81;
                        HIDWORD(v442) = v159;
                        LODWORD(v443) = v158;
                        if (v352)
                        {
                          v168 = v81;
                        }

                        else
                        {
                          v168 = 1;
                        }

                        v169 = v168 * v76;
                        if (v367)
                        {
                          v170 = v86;
                        }

                        else
                        {
                          v170 = 1;
                        }

                        v171 = v170 * v344;
                        v355 = v169;
                        v360 = v171;
                        v172 = v365;
                        if (v169 > 0x20)
                        {
                          v173 = 64;
                          v174 = v349;
                        }

                        else
                        {
                          v173 = 32;
                          v174 = v349;
                          if (v171 > 0x1FF)
                          {
                            v175 = 128;
                            LOWORD(v176) = 256;
                            v177 = 4;
                            v178 = 2;
                            goto LABEL_155;
                          }
                        }

                        if (v171 > 0x20)
                        {
                          v175 = 64;
                        }

                        else
                        {
                          v175 = 32;
                          if (v355 >= 0x200)
                          {
                            v173 = 128;
                            LOWORD(v176) = 256;
                            v177 = 2;
                            v178 = 4;
                            goto LABEL_155;
                          }
                        }

                        LOWORD(v176) = 128;
                        v178 = 2;
                        v177 = 2;
LABEL_155:
                        v179 = *(v365 + 1480);
                        v181 = v76 == v344 && v76 == v174 && v344 == v174;
                        v182 = v181;
                        if (!v181)
                        {
                          v196 = v76 * v344 * v331 * v159 * v159;
                          v197 = 4 * v179;
                          if (v196 > v197 * v175 * v173)
                          {
                            LOWORD(v190) = 16;
                            v192 = v372;
                            v184 = v357;
                            v193 = v358;
                            v186 = v360;
                            goto LABEL_249;
                          }

                          v173 >>= 1;
                          v192 = v372;
                          v184 = v357;
                          v193 = v358;
                          v186 = v360;
                          if (v196 <= v175 * v173 * v197)
                          {
                            v204 = 1;
                            do
                            {
                              v207 = v175;
                              if (v175 <= 0x10u && v173 < 0x11u)
                              {
                                break;
                              }

                              v205 = (v175 > 0x10u) & v204;
                              v204 ^= 1u;
                              v206 = v205 ^ 1;
                              if (v173 <= 0x10u)
                              {
                                v206 = 0;
                              }

                              v173 = v173 >> v206;
                              v175 = v175 >> v205;
                            }

                            while (v196 <= v197 * (v207 >> v205) * v173);
                          }

                          LOWORD(v190) = 16;
                          LOWORD(v176) = 128;
                          v191 = 2;
                          v177 = 2;
                          v194 = *(v365 + 1472);
                          v195 = v194 < 18;
                          if (v194 >= 18)
                          {
                            goto LABEL_200;
                          }

LABEL_250:
                          v209 = 1;
                          if (!*(v192 + 52))
                          {
                            goto LABEL_253;
                          }

                          goto LABEL_251;
                        }

                        v183 = *MEMORY[0x277CD73C8];
                        v184 = v357;
                        v185 = *&v357[v183];
                        if (v179 >= 0x41)
                        {
                          v186 = v360;
                          if (v185 == 268435472 && *&v358[v183] == 268435472)
                          {
                            v187 = (32 - (v76 & 0x1F)) * v344;
                            if ((v76 & 0x1F) == 0)
                            {
                              v187 = 0;
                            }

                            v188 = v76 % 0x30 != 0;
                            v189 = (48 - (v76 % 0x30)) * v344 > v187;
                            if (v188 && v189)
                            {
                              LOWORD(v190) = 32;
                            }

                            else
                            {
                              LOWORD(v190) = 24;
                            }

                            if (v188 && v189)
                            {
                              LOWORD(v175) = 32;
                            }

                            else
                            {
                              LOWORD(v175) = 48;
                            }

                            v191 = 2;
                            v177 = 2;
                            LOWORD(v173) = 48;
                            v192 = v372;
                            v193 = v358;
                            v194 = *(v365 + 1472);
                            v195 = v194 < 18;
                            if (v194 >= 18)
                            {
                              goto LABEL_200;
                            }
                          }

                          else
                          {
                            v210 = (64 - (v344 & 0x3F)) * v76;
                            if ((v344 & 0x3F) == 0)
                            {
                              v210 = 0;
                            }

                            v211 = (32 - (v76 & 0x1F)) * v344;
                            if ((v76 & 0x1F) == 0)
                            {
                              v211 = 0;
                            }

                            v212 = v211 + v210;
                            if (v76 == 48 * ((v76 * 0x555555555555556uLL) >> 64))
                            {
                              v213 = 0;
                            }

                            else
                            {
                              v213 = (48 - (v76 - 48 * ((v76 * 0x555555555555556uLL) >> 64))) * v344;
                            }

                            v214 = v344 - 48 * ((v344 * 0x555555555555556uLL) >> 64);
                            if (v214)
                            {
                              v215 = (48 - v214) * v76;
                            }

                            else
                            {
                              v215 = 0;
                            }

                            v216 = v213 + v215;
                            v217 = v212 > v216;
                            if (v212 <= v216)
                            {
                              LOWORD(v173) = 64;
                            }

                            else
                            {
                              LOWORD(v173) = 48;
                            }

                            if (v217)
                            {
                              LOWORD(v175) = 48;
                            }

                            else
                            {
                              LOWORD(v175) = 32;
                            }

                            LOWORD(v190) = 16;
                            v191 = 2;
                            v177 = 2;
                            v192 = v372;
                            v193 = v358;
                            v194 = *(v365 + 1472);
                            v195 = v194 < 18;
                            if (v194 >= 18)
                            {
                              goto LABEL_200;
                            }
                          }

                          goto LABEL_250;
                        }

                        v186 = v360;
                        if (v185 == 268435472 && *&v358[v183] == 268435472)
                        {
                          v198 = ((64 - (v344 & 0x3F)) * (v76 + 31)) >> 5;
                          if ((v344 & 0x3F) == 0)
                          {
                            v198 = 0;
                          }

                          if ((v76 & 0x1F) != 0)
                          {
                            v199 = ((32 - (v76 & 0x1F)) * (v344 + 63)) >> 6;
                          }

                          else
                          {
                            v199 = 0;
                          }

                          v200 = v76 - 48 * ((v76 * 0x555555555555556uLL) >> 64);
                          if (v200)
                          {
                            v200 = ((48 - v200) * (v344 + 47) * 0x555555555555556uLL) >> 64;
                          }

                          v201 = v199 + v198;
                          v202 = v344 - 48 * ((v344 * 0x555555555555556uLL) >> 64);
                          if (v202)
                          {
                            v203 = ((48 - v202) * (v76 + 47) * 0x555555555555556uLL) >> 64;
                          }

                          else
                          {
                            v203 = 0;
                          }

                          v192 = v372;
                          v193 = v358;
                          v191 = v178;
                          v296 = v201 > v203 + v200;
                          if (v201 <= v203 + v200)
                          {
                            LOWORD(v190) = 32;
                          }

                          else
                          {
                            LOWORD(v190) = 24;
                          }

                          if (v201 <= v203 + v200)
                          {
                            LOWORD(v173) = 64;
                          }

                          else
                          {
                            LOWORD(v173) = 48;
                          }

                          if (v296)
                          {
                            LOWORD(v175) = 48;
                          }

                          else
                          {
                            LOWORD(v175) = 32;
                          }

                          v194 = *(v365 + 1472);
                          v195 = v194 < 18;
                          if (v194 >= 18)
                          {
                            goto LABEL_200;
                          }

                          goto LABEL_250;
                        }

                        v218 = 64 - (v76 & 0x3F);
                        if ((v76 & 0x3F) == 0)
                        {
                          v218 = 0;
                        }

                        v219 = 32 - (v76 & 0x1F);
                        LOWORD(v175) = 48;
                        v220 = v76 - 48 * ((v76 * 0x555555555555556uLL) >> 64);
                        if ((v76 & 0x1F) == 0)
                        {
                          v219 = 0;
                        }

                        LOWORD(v173) = 64;
                        LOWORD(v190) = 24;
                        if (v220)
                        {
                          v192 = v372;
                          if (48 - v220 <= v219)
                          {
LABEL_238:
                            v193 = v358;
                            goto LABEL_249;
                          }

                          if (((((v76 + 63) >> 6) * ((v76 + 63) >> 6)) / v179) > 12.0)
                          {
                            if (v218 <= v219)
                            {
                              LOWORD(v190) = 16;
                            }

                            else
                            {
                              LOWORD(v190) = 32;
                            }

                            LOWORD(v173) = 64;
                            if (v218 <= v219)
                            {
                              LOWORD(v175) = 64;
                            }

                            else
                            {
                              LOWORD(v175) = 32;
                            }

                            goto LABEL_238;
                          }

                          if (v219 <= v218)
                          {
                            LOWORD(v190) = 32;
                          }

                          else
                          {
                            LOWORD(v190) = 16;
                          }

                          LOWORD(v173) = 64;
                          if (v219 <= v218)
                          {
                            LOWORD(v175) = 32;
                          }

                          else
                          {
                            LOWORD(v175) = 64;
                          }

                          v193 = v358;
                        }

                        else
                        {
                          v192 = v372;
                          v193 = v358;
                        }

LABEL_249:
                        v191 = v178;
                        v194 = *(v365 + 1472);
                        v195 = v194 < 18;
                        if (v194 < 18)
                        {
                          goto LABEL_250;
                        }

LABEL_200:
                        if (v182)
                        {
                          v208 = *MEMORY[0x277CD73C8];
                          if ((*&v184[v208] | 0x80000000) == 0x90000010 && (*&v193[v208] | 0x80000000) == 0x90000010)
                          {
                            v209 = 0;
                            LOWORD(v173) = 32;
                            LOWORD(v190) = 16;
                            LOWORD(v176) = 128;
                            v191 = 2;
                            v177 = 2;
                            LOWORD(v175) = 32;
                            if (!*(v192 + 52))
                            {
                              goto LABEL_253;
                            }
                          }

                          else
                          {
                            LOWORD(v175) = 64;
                            LOWORD(v190) = 32;
                            LOWORD(v176) = 128;
                            v191 = 2;
                            v209 = 1;
                            v177 = 2;
                            LOWORD(v173) = 32;
                            if (!*(v192 + 52))
                            {
                              goto LABEL_253;
                            }
                          }
                        }

                        else
                        {
                          LOWORD(v190) = 32;
                          LOWORD(v176) = 128;
                          v191 = 2;
                          v209 = 1;
                          v177 = 2;
                          if (!*(v192 + 52))
                          {
                            goto LABEL_253;
                          }
                        }

LABEL_251:
                        v221 = *(v192 + 25);
                        if (v221)
                        {
                          v175 = *v221;
                          v173 = *(v221 + 4);
                          v177 = *(v221 + 16);
                          v191 = *(v221 + 20);
                          v190 = *(v221 + 8);
                          v176 = *(v221 + 12);
                          v195 = *(v221 + 28);
                          v209 = *(v221 + 29);
                        }

LABEL_253:
                        v366 = v173;
                        v345 = v355 % v173;
                        if (v345)
                        {
                          v222 = 1;
                          v223 = v190;
                          v224 = v174 / v223 * v223;
                          v350 = v190;
                          if (v195)
                          {
                            goto LABEL_255;
                          }
                        }

                        else
                        {
                          v222 = v186 % v175 != 0;
                          v223 = v190;
                          v224 = v174 / v223 * v223;
                          v350 = v190;
                          if (v195)
                          {
LABEL_255:
                            v225 = (v175 * v223) >> 2 < v176;
                            v226 = v174 - v224;
                            v319 = v190;
                            v304 = v176;
                            if ((v209 & 1) == 0)
                            {
LABEL_256:
                              v227 = 0;
                              goto LABEL_260;
                            }

LABEL_259:
                            v227 = ((v366 * v350) >> 2 < v176) << 31;
LABEL_260:
                            if (v226)
                            {
                              v228 = 1;
                            }

                            else
                            {
                              v228 = v222;
                            }

                            if ((v228 | v225))
                            {
                              v229 = 0x80000000;
                            }

                            else
                            {
                              v229 = v227;
                            }

                            v305 = v229;
                            v232 = v355 < 0x7FFF && v186 < 0x7FFF && v174 < 0x7FFF;
                            if (v194 < 18)
                            {
LABEL_279:
                              if (v345)
                              {
                                goto LABEL_297;
                              }

LABEL_280:
                              if (v226)
                              {
                                v235 = 0;
                              }

                              else
                              {
                                v235 = v186 % v175 == 0;
                              }

                              v236 = !v235;
                              if (((v321 | v236) & 1) == 0)
                              {
                                if (v194 < 18)
                                {
                                  goto LABEL_306;
                                }

                                goto LABEL_288;
                              }

LABEL_297:
                              if (v194 < 18)
                              {
                                goto LABEL_306;
                              }

LABEL_288:
                              v237 = *(v335 + 8);
                              switch(v237)
                              {
                                case -1879048176:
                                  v240 = *(v323 + 8);
                                  if (v240 == -1879048176 || v240 == 268435488)
                                  {
                                    goto LABEL_306;
                                  }

                                  break;
                                case 268435472:
                                  v239 = *(v323 + 8);
                                  if (v239 == 268435472 || v239 == 268435488)
                                  {
                                    goto LABEL_306;
                                  }

                                  break;
                                case 268435488:
                                  v238 = *(v323 + 8);
                                  if (v238 == -1879048176 || v238 == 268435472 || v238 == 268435488)
                                  {
                                    goto LABEL_306;
                                  }

                                  break;
                              }

                              if (MTLReportFailureTypeEnabled())
                              {
                                MTLReportFailure();
                              }

LABEL_306:
                              v241 = *(v335 + 8);
                              if (v241 <= 268435487)
                              {
                                if (v241 == -1879048176)
                                {
                                  v242 = 8;
                                  goto LABEL_323;
                                }

                                if (v241 != 268435464)
                                {
                                  if (v241 == 268435472)
                                  {
                                    v242 = 4;
                                    goto LABEL_323;
                                  }

                                  goto LABEL_319;
                                }

                                v242 = 16;
                              }

                              else if (v241 > 335544327)
                              {
                                if (v241 != 335544328)
                                {
                                  if (v241 == 536870920)
                                  {
                                    v242 = 0;
                                    goto LABEL_323;
                                  }

                                  goto LABEL_319;
                                }

                                v242 = 24;
                              }

                              else
                              {
                                if (v241 != 268435488)
                                {
                                  if (v241 == 301989896)
                                  {
                                    v242 = 20;
                                    goto LABEL_323;
                                  }

LABEL_319:
                                  v242 = 28;
                                  goto LABEL_323;
                                }

                                v242 = 12;
                              }

LABEL_323:
                              v243 = *(v323 + 8);
                              v329 = v195;
                              if (v243 <= 268435487)
                              {
                                switch(v243)
                                {
                                  case -1879048176:
                                    v244 = 64;
                                    v332 = v177;
                                    if ((v364 & 1) == 0)
                                    {
                                      break;
                                    }

                                    goto LABEL_339;
                                  case 268435464:
                                    v244 = 128;
                                    v332 = v177;
                                    if (v364)
                                    {
                                      goto LABEL_339;
                                    }

                                    break;
                                  case 268435472:
                                    v244 = 32;
                                    v332 = v177;
                                    if (v364)
                                    {
                                      goto LABEL_339;
                                    }

                                    break;
                                  default:
                                    goto LABEL_369;
                                }
                              }

                              else if (v243 > 335544327)
                              {
                                if (v243 == 335544328)
                                {
                                  v244 = 192;
                                  v332 = v177;
                                  if ((v364 & 1) == 0)
                                  {
                                    goto LABEL_370;
                                  }

                                  goto LABEL_339;
                                }

                                if (v243 != 536870920)
                                {
LABEL_369:
                                  v244 = 224;
                                  v332 = v177;
                                  if ((v364 & 1) == 0)
                                  {
                                    goto LABEL_370;
                                  }

                                  goto LABEL_339;
                                }

                                v244 = 0;
                                v332 = v177;
                                if (v364)
                                {
                                  goto LABEL_339;
                                }
                              }

                              else
                              {
                                if (v243 != 268435488)
                                {
                                  if (v243 == 301989896)
                                  {
                                    v244 = 160;
                                    v332 = v177;
                                    if ((v364 & 1) == 0)
                                    {
                                      goto LABEL_370;
                                    }

LABEL_339:
                                    v245 = v242;
                                    v246 = v209;
                                    v247 = v308 > HIBYTE(v308);
                                    v248 = v307 > HIBYTE(v307);
                                    v249 = 768;
                                    goto LABEL_340;
                                  }

                                  goto LABEL_369;
                                }

                                v244 = 96;
                                v332 = v177;
                                if (v364)
                                {
                                  goto LABEL_339;
                                }
                              }

LABEL_370:
                              v295 = *(v316 + 8);
                              if (v295 <= 268435487)
                              {
                                if (v295 == -1879048176)
                                {
                                  v245 = v242;
                                  v246 = v209;
                                  v247 = v308 > HIBYTE(v308);
                                  v248 = v307 > HIBYTE(v307);
                                  v249 = 512;
                                  goto LABEL_340;
                                }

                                if (v295 != 268435464)
                                {
                                  v246 = v209;
                                  if (v295 == 268435472)
                                  {
                                    v245 = v242;
                                    v247 = v308 > HIBYTE(v308);
                                    v248 = v307 > HIBYTE(v307);
                                    v249 = 256;
                                    goto LABEL_340;
                                  }

                                  goto LABEL_389;
                                }

                                v245 = v242;
                                v246 = v209;
                                v247 = v308 > HIBYTE(v308);
                                v248 = v307 > HIBYTE(v307);
                                v249 = 1024;
                              }

                              else if (v295 > 335544327)
                              {
                                if (v295 != 335544328)
                                {
                                  v246 = v209;
                                  if (v295 == 536870920)
                                  {
                                    v245 = v242;
                                    v247 = v308 > HIBYTE(v308);
                                    v248 = v307 > HIBYTE(v307);
                                    v249 = 0;
                                    goto LABEL_340;
                                  }

                                  goto LABEL_389;
                                }

                                v245 = v242;
                                v246 = v209;
                                v247 = v308 > HIBYTE(v308);
                                v248 = v307 > HIBYTE(v307);
                                v249 = 1536;
                              }

                              else
                              {
                                if (v295 != 268435488)
                                {
                                  v246 = v209;
                                  if (v295 == 301989896)
                                  {
                                    v245 = v242;
                                    v247 = v308 > HIBYTE(v308);
                                    v248 = v307 > HIBYTE(v307);
                                    v249 = 1280;
                                    goto LABEL_340;
                                  }

LABEL_389:
                                  v245 = v242;
                                  v247 = v308 > HIBYTE(v308);
                                  v248 = v307 > HIBYTE(v307);
                                  v249 = 1792;
                                  goto LABEL_340;
                                }

                                v245 = v242;
                                v246 = v209;
                                v247 = v308 > HIBYTE(v308);
                                v248 = v307 > HIBYTE(v307);
                                v249 = 768;
                              }

LABEL_340:
                              v326 = v246;
                              if (v232)
                              {
                                v250 = 2048;
                              }

                              else
                              {
                                v250 = 0;
                              }

                              v251 = [*(v356 + 232) finalOp];
                              v252 = (v247 | (2 * v248)) & 0xFE000FFF | ((v191 << 28) + 1879048192) & 0x70000000 | ((v332 << 25) + 234881024) & 0xE000000 | (((v350 >> 3) & 7) << 22) | (v366 >> 3 << 17) | (((v175 >> 3) & 0x1F) << 12) | v250 | v245 | v244 | v249 | v305;
                              if ((*(*v251 + 16))(v251))
                              {
                                v253 = *MEMORY[0x277CD73F0];
                                v254 = v372;
                                if (!(v321 & 1 | (*(v316 + 8) != 268435488)))
                                {
                                  v255 = (*&v361[v253] == 4) << 35;
                                }
                              }

                              else
                              {
                                v253 = *MEMORY[0x277CD73F0];
                                v254 = v372;
                              }

                              v256 = *&v254[*MEMORY[0x277CD7378]];
                              v257 = *&v361[v253];
                              v435 = 0;
                              v434 = 0;
                              v428 = -1;
                              v429 = -1;
                              v430 = v252;
                              v431 = (v312 << 10) | (32 * v314) | v310;
                              v432 = 0u;
                              v433 = 0u;
                              v315 = v175;
                              v434 = [*(v356 + 16) count] | ((*(v356 + 112) != 0) << 8) | 0x10000;
                              v435 = 0;
                              v300 = *&v254[*MEMORY[0x277CD7360]];
                              v302 = *&v254[*MEMORY[0x277CD7368]];
                              v298 = *(v356 + 232);
                              MPSLibrary::CreateUberShaderKey();
                              PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                              MPSLibrary::ReleaseMPSKey();
                              v313 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup] >= v304;
                              v259 = HIDWORD(v437);
                              if (v367 || v352)
                              {
                                v259 = 1;
                              }

                              v311 = v259;
                              if (v329)
                              {
                                v260 = v350;
                                v320 = (*(v335 + 8) >> 3) * (v175 * v350);
                                v346 = PipelineStateForMPSKey;
                                if ((v326 & 1) == 0)
                                {
LABEL_352:
                                  v327 = 0;
LABEL_355:
                                  v324 = DWORD2(v440);
                                  v309 = HIDWORD(v442);
                                  v261 = *MEMORY[0x277CD7418];
                                  v262 = *&v357[v261];
                                  v263 = *&v357[v261 + 16];
                                  v264 = *&v357[v261 + 48];
                                  v265 = *MEMORY[0x277CD73D8];
                                  v266 = *&v357[v265];
                                  v377 = *&v357[v261 + 32];
                                  v378 = v264;
                                  v376[0] = v262;
                                  v376[1] = v263;
                                  v368 = *(v376 + (v266 & 0xF));
                                  v375[2] = v377;
                                  v375[3] = v264;
                                  v375[0] = v262;
                                  v375[1] = v263;
                                  v353 = *(v375 + (BYTE1(v266) & 0xF));
                                  v374[2] = v377;
                                  v374[3] = v264;
                                  v374[0] = v262;
                                  v374[1] = v263;
                                  v351 = *(v374 + (BYTE2(v266) & 0xF));
                                  v373[2] = v377;
                                  v373[3] = v264;
                                  v373[0] = v262;
                                  v373[1] = v263;
                                  v336 = *(v373 + (BYTE3(v266) & 0xF));
                                  v267 = *(v356 + 8);
                                  v333 = *(v267 + 80 * v15 + 64);
                                  v268 = *&v358[v261];
                                  v269 = *&v358[v261 + 16];
                                  v270 = *&v358[v261 + 48];
                                  v271 = *&v358[v265];
                                  v383 = *&v358[v261 + 32];
                                  v384 = v270;
                                  v382[0] = v268;
                                  v382[1] = v269;
                                  v272 = *(v382 + (v271 & 0xF));
                                  v381[2] = v383;
                                  v381[3] = v270;
                                  v381[0] = v268;
                                  v381[1] = v269;
                                  v273 = *(v381 + (BYTE1(v271) & 0xF));
                                  v380[2] = v383;
                                  v380[3] = v270;
                                  v380[0] = v268;
                                  v380[1] = v269;
                                  v274 = *(v380 + (BYTE2(v271) & 0xF));
                                  v379[2] = v383;
                                  v379[3] = v270;
                                  v379[0] = v268;
                                  v379[1] = v269;
                                  v275 = *(v379 + (BYTE3(v271) & 0xF));
                                  v276 = *(v267 + 80 * v16 + 64);
                                  v277 = &v361[v261];
                                  v278 = *v277;
                                  v279 = *(v277 + 1);
                                  v280 = *(v277 + 2);
                                  v281 = *&v361[v265];
                                  v389 = *(v277 + 3);
                                  v388[2] = v280;
                                  v388[1] = v279;
                                  v388[0] = v278;
                                  v330 = *(v388 + (v281 & 0xF));
                                  v387[3] = v389;
                                  v387[2] = v280;
                                  v387[1] = v279;
                                  v387[0] = v278;
                                  v282 = *(v387 + (BYTE1(v281) & 0xF));
                                  v386[3] = v389;
                                  v386[2] = v280;
                                  v386[1] = v279;
                                  v386[0] = v278;
                                  v283 = *(v386 + (BYTE2(v281) & 0xF));
                                  v385[2] = v280;
                                  v385[3] = v389;
                                  v385[0] = v278;
                                  v385[1] = v279;
                                  v284 = *(v385 + (BYTE3(v281) & 0xF));
                                  v285 = *(v356 + 192);
                                  [v371 setComputePipelineState:v346];
                                  MPSSetNDArraysOnComputeEncoder(v371, v356, 4, 0, 0);
                                  [v371 setBuffer:objc_msgSend(v358 offset:"buffer") atIndex:{v276 + v342 * v273 + v343 * v272 + v341 * v274 + v337 * v275, 29}];
                                  [v371 setBuffer:objc_msgSend(v357 offset:"buffer") atIndex:{v333 + v339 * v353 + v340 * v368 + v338 * v351 + v334 * v336, 28}];
                                  if (v364)
                                  {
                                    v286 = 0;
                                  }

                                  else
                                  {
                                    v286 = v285 + v318 * v282 + v306 * v330 + v348 * v283 + v347 * v284;
                                  }

                                  [v371 setBuffer:TempBuffer offset:v286 atIndex:27];
                                  [v371 setBytes:&v437 length:100 atIndex:26];
                                  [v371 setThreadgroupMemoryLength:v320 atIndex:0];
                                  [v371 setThreadgroupMemoryLength:v327 atIndex:1];
                                  v425 = (v360 + v315 - 1) / v315;
                                  v426 = (v355 + v366 - 1) / v366;
                                  v427 = v324 * (v311 * v309);
                                  v423.i64[0] = v304;
                                  v423.i64[1] = v313;
                                  v424 = 1;
                                  [v371 dispatchThreadgroups:&v425 threadsPerThreadgroup:&v423];
                                  if (v364)
                                  {
                                    v287 = [*(v356 + 232) finalOp];
                                    if ((*(*v287 + 16))(v287))
                                    {
                                      v288 = *(v316 + 8);
                                    }

                                    v301 = *&v372[*MEMORY[0x277CD7360]];
                                    v303 = *&v372[*MEMORY[0x277CD7368]];
                                    v299 = *(v356 + 232);
                                    MPSLibrary::CreateUberShaderKey();
                                    v289 = MPSLibrary::GetPipelineStateForMPSKey();
                                    MPSLibrary::ReleaseMPSKey();
                                    [v371 setComputePipelineState:{v289, v299, v301, v303, 0, 0}];
                                    MPSSetNDArraysOnComputeEncoder(v371, v356, 3, 0, 0);
                                    [v371 setBuffer:TempBuffer offset:0 atIndex:29];
                                    [v371 setBuffer:objc_msgSend(v361 offset:"buffer") atIndex:{v285 + v318 * v282 + v306 * v330 + v348 * v283 + v347 * v284, 28}];
                                    HIDWORD(v438) = v318;
                                    HIDWORD(v439) = v348;
                                    DWORD2(v441) = v347;
                                    [v371 setBytes:&v437 length:100 atIndex:27];
                                    v290 = 128;
                                    if ((v437 & 3) != 0)
                                    {
                                      v290 = 32;
                                    }

                                    v291 = v437 + v290;
                                    v292 = 5;
                                    if ((v437 & 3) == 0)
                                    {
                                      v292 = 7;
                                    }

                                    v293 = (v291 - 1) >> v292;
                                    v294 = HIDWORD(v437);
                                    if (v321)
                                    {
                                      v294 = 1;
                                    }

                                    v425 = v293;
                                    v426 = (DWORD1(v437) + 31) >> 5;
                                    v427 = v294;
                                    v423 = vdupq_n_s64(0x20uLL);
                                    v424 = 1;
                                    [v371 dispatchThreadgroups:&v425 threadsPerThreadgroup:&v423];
                                  }

                                  MPSLibrary::ReleaseComputeState();
                                  MPSAutoCache::~MPSAutoCache(v436);
                                  return;
                                }
                              }

                              else
                              {
                                v320 = 0;
                                v260 = v350;
                                v346 = PipelineStateForMPSKey;
                                if ((v326 & 1) == 0)
                                {
                                  goto LABEL_352;
                                }
                              }

                              v327 = (*(v323 + 8) >> 3) * (v366 * v260);
                              goto LABEL_355;
                            }

                            if (v195 & v232)
                            {
                              v233 = v319;
                              LOBYTE(v234) = v319 * (v317 / (*&v184[*MEMORY[0x277CD73C8]] >> 3)) < 0x7FFF;
                              if ((v209 & v234) == 0)
                              {
LABEL_278:
                                LOBYTE(v232) = (v209 ^ 1) & v234;
                                goto LABEL_279;
                              }
                            }

                            else
                            {
                              v234 = (v195 ^ 1) & v232;
                              v233 = v319;
                              if ((v209 & v234 & 1) == 0)
                              {
                                goto LABEL_278;
                              }
                            }

                            LOBYTE(v232) = v233 * (v325 / (*&v193[*MEMORY[0x277CD73C8]] >> 3)) < 0x7FFF;
                            if (v345)
                            {
                              goto LABEL_297;
                            }

                            goto LABEL_280;
                          }
                        }

                        v225 = 0;
                        v226 = v174 - v224;
                        v319 = v190;
                        v304 = v176;
                        if ((v209 & 1) == 0)
                        {
                          goto LABEL_256;
                        }

                        goto LABEL_259;
                      }
                    }
                  }

                  else
                  {
                    v126 = 0;
                    v127 = *&v357[v122];
                    if (v127 <= 1u && BYTE1(v127) <= 1u && BYTE2(v127) == 2)
                    {
                      v367 = 0;
                      if (BYTE1(v127) < BYTE2(v127))
                      {
                        v367 = 0;
                        v128 = BYTE1(v127) & 0xF;
                        v129 = *&v357[4 * v128 + v117];
                        v130 = &v357[*MEMORY[0x277CD7428]];
                        v131 = *v130;
                        v132 = *(v130 + 1);
                        v133 = *(v130 + 2);
                        v134 = *(v130 + 3);
                        v135 = *(v130 + 4);
                        v136 = *(v130 + 5);
                        v137 = *(v130 + 6);
                        v391[7] = *(v130 + 7);
                        v391[6] = v137;
                        v391[5] = v136;
                        v391[4] = v135;
                        v391[3] = v134;
                        v391[2] = v133;
                        v391[1] = v132;
                        v391[0] = v131;
                        v126 = *(v391 + v128) * v129 == v132;
                      }

                      goto LABEL_113;
                    }
                  }

                  v367 = 0;
                  goto LABEL_113;
                }

LABEL_409:
                std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
              }
            }
          }
        }

        std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
      }
    }

    else
    {
      v39 = *MEMORY[0x277CD73C8];
      v40 = *&v20[v39];
      if (v40 == 268435488)
      {
        v38 = *(v21 + v39) == 268435488;
        v41 = 3;
        if (v38)
        {
          v41 = 4;
        }
      }

      else
      {
        v41 = 3;
      }

      v42 = 9;
      if (v35 * v34 * v41 < *(v24 + 1480) << 12)
      {
        v42 = 15;
      }

      if (*(v24 + 1472) > 10)
      {
        v45 = *(v21 + v27 + 4 * (WORD1(*(v21 + v32)) & 0xF));
        if (*&v20[v32] <= BYTE1(*&v20[v32]) && v45 == 1)
        {
          v47 = *&v20[4 * (WORD1(*&v20[v32]) & 0xF) + v27];
        }

        else
        {
          v47 = 1;
        }

        v34 = v47 * v34;
        v48 = v35 * v45;
        if (*(v21 + v32) <= BYTE1(*(v21 + v32)))
        {
          v48 = *(v422 + (v33 & 0xF));
        }

        if (*&v20[4 * (WORD1(*&v20[v32]) & 0xF) + v27] == 1)
        {
          v35 = v48;
        }

        v43 = v42;
      }

      else
      {
        v43 = 15;
        if ((v35 & 3) == 0)
        {
          v43 = v42;
        }

        if (v34)
        {
          v44 = 15;
        }

        else
        {
          v44 = v42;
        }

        if (v40 == 268435472)
        {
          v42 = v44;
          v43 = 15;
        }
      }

      v49 = v34 > v42 && v35 > v43;
      v50 = v20[v32 + 3] & 0xF;
      LODWORD(v51) = *&v20[4 * v50 + v27];
      v52 = (v21 + v27);
      v53 = *v52;
      v54 = v52[1];
      v55 = v52[2];
      v56 = v52[3];
      v419[3] = v56;
      v419[2] = v55;
      v419[1] = v54;
      v419[0] = v53;
      v57 = *(v419 + v50);
      v58 = !v49;
      if (v51 <= v57)
      {
        v51 = v57;
      }

      else
      {
        v51 = v51;
      }

      v59 = v34 * v51;
      if (v58 == 1 && v59 > v42)
      {
        v138 = *(v21 + v32);
        v418[0] = v53;
        v418[1] = v54;
        v418[2] = v55;
        v418[3] = v56;
        if (*(v418 + (v138 & 0xF)) >= 0x81u)
        {
          goto LABEL_75;
        }
      }

      else if (!v58)
      {
        goto LABEL_75;
      }
    }
  }

  EncodeMatrixVectorMultiply();
}