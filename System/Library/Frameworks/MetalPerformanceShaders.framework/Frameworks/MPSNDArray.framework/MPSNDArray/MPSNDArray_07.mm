uint64_t EncodeRandomUniform(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  [a1 minimum];
  v9 = v8;
  [a1 maximum];
  v12 = 0x100000000;
  v13 = v9;
  v14 = v10;
  v15 = 0;
  v16 = [a1 minimumInteger];
  v17 = [a1 maximumInteger];
  return EncodeRandomInternal(a1, a2, a3, a4, &v12);
}

uint64_t EncodeRandomTruncatedNormal(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 samplingMethod];
  [a1 minimum];
  v10 = v9;
  [a1 mean];
  if (v8)
  {
    v12 = v10 - v11;
    [a1 standardDeviation];
    v14 = v12 / v13;
    [a1 maximum];
    v16 = v15;
    [a1 mean];
    v18 = v16 - v17;
    [a1 standardDeviation];
    v19 = 2;
    v21 = v18 / v20;
  }

  else
  {
    v22 = v11;
    [a1 standardDeviation];
    v14 = (erf((v10 - v22) / (v23 * 1.41421354)) + 1.0) * 0.5;
    [a1 maximum];
    v25 = v24;
    [a1 mean];
    v27 = v26;
    [a1 standardDeviation];
    v21 = (erf((v25 - v27) / (v28 * 1.41421354)) + 1.0) * 0.5;
    v19 = 1;
  }

  [a1 mean];
  v30 = v29;
  [a1 standardDeviation];
  v33[0] = v19;
  v33[1] = 256;
  v33[2] = v30;
  v33[3] = v31;
  *&v33[4] = v14;
  *&v33[5] = v21;
  v34 = 0;
  v35 = 0;
  return EncodeRandomInternal(a1, a2, a3, a4, v33);
}

uint64_t EncodeRandomNormal(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ([a1 samplingMethod])
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  [a1 mean];
  v10 = v9;
  [a1 standardDeviation];
  v13[0] = v8;
  v13[1] = 1;
  v13[2] = v10;
  v13[3] = v11;
  v14 = 0x3F80000000000000;
  v15 = 0;
  v16 = 0;
  return EncodeRandomInternal(a1, a2, a3, a4, v13);
}

uint64_t EncodeRandomInternal(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v10 = MEMORY[0x277CD7370];
  v11 = *(a1 + *MEMORY[0x277CD7370]);
  v76 = v9;
  v77 = v9;
  v74 = v9;
  v75 = v9;
  v73 = v9;
  v12 = [*(a4 + 232) inputTensorAtIndex:0];
  v13 = [*(a4 + 232) outputTensorAtIndex:0];
  v14 = *(v12 + 8);
  if (v14 > 285212703)
  {
    if (v14 <= 536870915)
    {
      if (v14 > 301989895)
      {
        if (v14 == 301989896)
        {
          v15 = 512;
          goto LABEL_45;
        }

        if (v14 == 335544328)
        {
          v15 = 544;
          goto LABEL_45;
        }
      }

      else
      {
        if (v14 == 285212704)
        {
          v15 = 416;
          goto LABEL_45;
        }

        if (v14 == 285212736)
        {
          v15 = 448;
          goto LABEL_45;
        }
      }
    }

    else if (v14 <= 536870927)
    {
      if (v14 == 536870916)
      {
        v15 = 0;
        goto LABEL_45;
      }

      if (v14 == 536870920)
      {
        v15 = 32;
        goto LABEL_45;
      }
    }

    else
    {
      switch(v14)
      {
        case 536870928:
          v15 = 64;
          goto LABEL_45;
        case 536870944:
          v15 = 96;
          goto LABEL_45;
        case 536870976:
          v15 = 128;
          goto LABEL_45;
      }
    }
  }

  else if (v14 <= 31)
  {
    if (v14 > 7)
    {
      if (v14 == 8)
      {
        v15 = 192;
        goto LABEL_45;
      }

      if (v14 == 16)
      {
        v15 = 224;
        goto LABEL_45;
      }
    }

    else
    {
      if (v14 == -1879048176)
      {
        v15 = 384;
        goto LABEL_45;
      }

      if (v14 == 4)
      {
        v15 = 160;
        goto LABEL_45;
      }
    }
  }

  else if (v14 <= 268435463)
  {
    if (v14 == 32)
    {
      v15 = 256;
      goto LABEL_45;
    }

    if (v14 == 64)
    {
      v15 = 288;
      goto LABEL_45;
    }
  }

  else
  {
    switch(v14)
    {
      case 268435464:
        v15 = 480;
        goto LABEL_45;
      case 268435472:
        v15 = 320;
        goto LABEL_45;
      case 268435488:
        v15 = 352;
        goto LABEL_45;
    }
  }

  v15 = 576;
LABEL_45:
  v16 = *(v13 + 8);
  v58 = a2;
  v57 = v13;
  if (v16 <= 285212703)
  {
    if (v16 <= 31)
    {
      if (v16 <= 7)
      {
        if (v16 == -1879048176)
        {
          v17 = v10;
          v18 = 12;
          goto LABEL_85;
        }

        if (v16 != 4)
        {
          goto LABEL_116;
        }

        v17 = v10;
        v25 = 5;
        goto LABEL_90;
      }

      if (v16 == 8)
      {
        v17 = v10;
        v25 = 6;
        goto LABEL_90;
      }

      if (v16 == 16)
      {
        v17 = v10;
        v25 = 7;
        goto LABEL_90;
      }
    }

    else
    {
      if (v16 > 268435463)
      {
        if (v16 != 268435464)
        {
          if (v16 == 268435472)
          {
            v17 = v10;
            v18 = 10;
            goto LABEL_85;
          }

          if (v16 == 268435488)
          {
            v17 = v10;
            v18 = 11;
LABEL_85:
            v20 = v18 | v15;
            v23 = v16 == 536870944;
            v19 = v16 == 268435472;
            v26 = *(a5 + 32) - *(a5 + 24);
            v22 = ((v26 + 1) & v26) == 0;
            v24 = 4;
            goto LABEL_97;
          }

          goto LABEL_116;
        }

        v17 = v10;
        v25 = 15;
LABEL_90:
        v19 = 0;
        v23 = 0;
        v20 = v25 | v15;
        v27 = *(a5 + 32) - *(a5 + 24);
        v22 = ((v27 + 1) & v27) == 0;
        goto LABEL_91;
      }

      if (v16 == 32)
      {
        v17 = v10;
        v25 = 8;
        goto LABEL_90;
      }

      if (v16 == 64)
      {
        v17 = v10;
        v25 = 9;
        goto LABEL_90;
      }
    }

LABEL_116:
    v17 = v10;
    v20 = v15 | 0x12u;
    v23 = 0;
    v19 = v16 == 268435472;
    v47 = *(a5 + 32) - *(a5 + 24);
    v22 = ((v47 + 1) & v47) == 0;
    goto LABEL_91;
  }

  if (v16 <= 536870915)
  {
    if (v16 > 301989895)
    {
      if (v16 == 301989896)
      {
        v17 = v10;
        v25 = 16;
        goto LABEL_90;
      }

      if (v16 == 335544328)
      {
        v17 = v10;
        v25 = 17;
        goto LABEL_90;
      }
    }

    else
    {
      if (v16 == 285212704)
      {
        v17 = v10;
        v25 = 13;
        goto LABEL_90;
      }

      if (v16 == 285212736)
      {
        v17 = v10;
        v25 = 14;
        goto LABEL_90;
      }
    }

    goto LABEL_116;
  }

  if (v16 <= 536870927)
  {
    if (v16 == 536870916)
    {
      v17 = v10;
      v25 = 0;
      goto LABEL_90;
    }

    if (v16 == 536870920)
    {
      v17 = v10;
      v25 = 1;
      goto LABEL_90;
    }

    goto LABEL_116;
  }

  if (v16 == 536870928)
  {
    v17 = v10;
    v25 = 2;
    goto LABEL_90;
  }

  if (v16 == 536870944)
  {
    v17 = v10;
    v18 = 3;
    goto LABEL_85;
  }

  if (v16 != 536870976)
  {
    goto LABEL_116;
  }

  v17 = v10;
  v19 = 0;
  v20 = v15 | 4u;
  v21 = *(a5 + 32) - *(a5 + 24);
  v22 = ((v21 + 1) & v21) == 0;
  v23 = 1;
  if (_MPSUseInt64Calculations())
  {
    v24 = 2;
    goto LABEL_97;
  }

LABEL_91:
  v28 = _MPSUseInt64Calculations();
  v29 = MTLReportFailureTypeEnabled();
  if (v28)
  {
    if (v29)
    {
      goto LABEL_95;
    }
  }

  else if (v29)
  {
LABEL_95:
    MTLReportFailure();
  }

  v24 = 0;
LABEL_97:
  *(&v74 + 1) = v20;
  v30 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  if (v19)
  {
    v31 = 2;
  }

  else
  {
    v31 = 0;
  }

  if (v22)
  {
    v32 = 4;
  }

  else
  {
    v32 = 0;
  }

  v33 = *(a1 + *v17);
  *&v77 = v30;
  *&v74 = v31 | v32 | v23 | (8 * v24);
  v55 = *(a1 + *MEMORY[0x277CD7360]);
  v56 = *(a1 + *MEMORY[0x277CD7368]);
  v54 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v34 = *(a1 + *v17);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v36 = PipelineStateForMPSKey;
  [v58 setComputePipelineState:{PipelineStateForMPSKey, v54, v55, v56, 0, 0}];
  v37 = *(a1 + *v17);
  MPSLibrary::ReleaseMPSKey();
  v38 = [v36 maxTotalThreadsPerThreadgroup];
  if (v38 >= 0x20)
  {
    v39 = 32;
  }

  else
  {
    v39 = v38;
  }

  v40 = *v57;
  if (*v57)
  {
    v41 = v57[2];
    v42 = *v41;
    v43 = **v41;
    if (v40 == 1)
    {
      v44 = 1;
      v45 = 1;
    }

    else
    {
      v45 = v42[1];
      if (v40 < 3)
      {
        v44 = 1;
        v40 = 1;
      }

      else
      {
        v44 = v42[2];
        if (v40 == 3)
        {
          v40 = 1;
        }

        else
        {
          v40 = v42[3];
        }
      }
    }
  }

  else
  {
    v44 = 1;
    v43 = 1;
    v45 = 1;
    v40 = 1;
  }

  v48 = *(*(a1 + *MEMORY[0x277CD7350]) + 1480) << 7;
  v69 = 0;
  v49 = *(a5 + 16);
  v63[0] = *a5;
  v63[1] = v49;
  v64 = *(a5 + 32);
  v65 = v43;
  v66 = v45;
  if ((v39 * v24 + v45 * v43 * v44 * v40 - 1) / (v39 * v24) >= v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = (v39 * v24 + v45 * v43 * v44 * v40 - 1) / (v39 * v24);
  }

  v67 = v44;
  v68 = v40;
  MPSGetUIntDivisorMagicNumber();
  v70 = v51;
  MPSGetUIntDivisorMagicNumber();
  v71 = v52;
  MPSGetUIntDivisorMagicNumber();
  v72 = v53;
  MPSSetNDArraysOnComputeEncoder(v58, a4, 4, 0, 0);
  [v58 setBytes:v63 length:112 atIndex:29];
  v61 = v50;
  v62 = vdupq_n_s64(1uLL);
  v59 = v39;
  v60 = v62;
  [v58 dispatchThreadgroups:&v61 threadsPerThreadgroup:&v59];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeGridSample(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + *MEMORY[0x277CD7370]);
  v81 = *(a1 + 144);
  v82 = *(a1 + 148);
  v8 = *(a1 + 152);
  v9 = *(a1 + 156);
  v10 = *(a1 + 160);
  v84 = *(a1 + 161);
  v83 = *(a1 + 162);
  v11 = *(a1 + 168);
  v12 = [*(a4 + 232) graph];
  v13 = **(v12 + 56);
  if (*(*(v12 + 56) + 8) == v13)
  {
    goto LABEL_207;
  }

  v15 = *(*v13 + 8);
  v14 = *v15;
  if ((v15[1] - *v15) <= 8)
  {
    goto LABEL_206;
  }

  v16 = *v14;
  v17 = v14[1];
  v18 = [*(a4 + 232) graph];
  v19 = **(v18 + 56);
  if (*(*(v18 + 56) + 8) == v19)
  {
LABEL_207:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *(*v19 + 24);
  v20 = *v21;
  if (*(v21 + 8) == *v21)
  {
LABEL_206:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v22 = *v20;
  if (*(a1 + *MEMORY[0x277CD7378]))
  {
    goto LABEL_21;
  }

  if (*v16 != 4 && MTLReportFailureTypeEnabled())
  {
    v70 = *v16;
    MTLReportFailure();
  }

  v23 = v10;
  if (*v17 != 4 && MTLReportFailureTypeEnabled())
  {
    v70 = *v17;
    MTLReportFailure();
  }

  BaseTensor::GetDimensionSize(v17);
  BaseTensor::GetDimensionSize(v16);
  DimensionSize = BaseTensor::GetDimensionSize(v17);
  if (DimensionSize != BaseTensor::GetDimensionSize(v16) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v25 = BaseTensor::GetDimensionSize(v17);
  if (v8 == 1)
  {
    if (v25 == BaseTensor::GetDimensionSize(v22))
    {
      BaseTensor::GetDimensionSize(v17);
      BaseTensor::GetDimensionSize(v22);
    }

    v26 = BaseTensor::GetDimensionSize(v17);
    if (v26 == BaseTensor::GetDimensionSize(v22))
    {
      v27 = BaseTensor::GetDimensionSize(v17);
      if (v27 == BaseTensor::GetDimensionSize(v22))
      {
        goto LABEL_20;
      }
    }

    if ((MTLReportFailureTypeEnabled() & 1) == 0)
    {
      goto LABEL_20;
    }

    v79 = v8;
    v28 = v9;
  }

  else
  {
    if (v25 == BaseTensor::GetDimensionSize(v22))
    {
      BaseTensor::GetDimensionSize(v17);
      BaseTensor::GetDimensionSize(v22);
    }

    v29 = BaseTensor::GetDimensionSize(v17);
    if (v29 == BaseTensor::GetDimensionSize(v22))
    {
      v30 = BaseTensor::GetDimensionSize(v17);
      if (v30 == BaseTensor::GetDimensionSize(v22))
      {
        goto LABEL_20;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_20;
    }

    v79 = v8;
    v28 = v9;
  }

  v77 = BaseTensor::GetDimensionSize(v17);
  v69 = BaseTensor::GetDimensionSize(v17);
  v74 = BaseTensor::GetDimensionSize(v22);
  v76 = BaseTensor::GetDimensionSize(v22);
  v70 = v77;
  v72 = v69;
  MTLReportFailure();
  v9 = v28;
  v8 = v79;
LABEL_20:
  BaseTensor::GetDimensionSize(v17);
  v10 = v23;
  if (BaseTensor::GetDimensionSize(v17) != 2 && MTLReportFailureTypeEnabled())
  {
    v70 = BaseTensor::GetDimensionSize(v17);
    MTLReportFailure();
  }

LABEL_21:
  v31 = *(v16 + 2);
  if (v31 > 285212703)
  {
    if (v31 <= 536870915)
    {
      if (v31 > 301989895)
      {
        if (v31 == 301989896)
        {
          v32 = 512;
          v33 = *(v17 + 2);
          if (v33 <= 285212703)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v31 != 335544328)
          {
            goto LABEL_102;
          }

          v32 = 544;
          v33 = *(v17 + 2);
          if (v33 <= 285212703)
          {
            goto LABEL_81;
          }
        }
      }

      else if (v31 == 285212704)
      {
        v32 = 416;
        v33 = *(v17 + 2);
        if (v33 <= 285212703)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v31 != 285212736)
        {
          goto LABEL_102;
        }

        v32 = 448;
        v33 = *(v17 + 2);
        if (v33 <= 285212703)
        {
          goto LABEL_81;
        }
      }
    }

    else if (v31 <= 536870927)
    {
      if (v31 == 536870916)
      {
        v32 = 0;
        v33 = *(v17 + 2);
        if (v33 > 285212703)
        {
          goto LABEL_103;
        }

        goto LABEL_81;
      }

      if (v31 != 536870920)
      {
        goto LABEL_102;
      }

      v32 = 32;
      v33 = *(v17 + 2);
      if (v33 <= 285212703)
      {
        goto LABEL_81;
      }
    }

    else
    {
      switch(v31)
      {
        case 536870928:
          v32 = 64;
          v33 = *(v17 + 2);
          if (v33 <= 285212703)
          {
            goto LABEL_81;
          }

          break;
        case 536870944:
          v32 = 96;
          v33 = *(v17 + 2);
          if (v33 <= 285212703)
          {
            goto LABEL_81;
          }

          break;
        case 536870976:
          v32 = 128;
          v33 = *(v17 + 2);
          if (v33 <= 285212703)
          {
            goto LABEL_81;
          }

          break;
        default:
          goto LABEL_102;
      }
    }
  }

  else if (v31 <= 31)
  {
    if (v31 > 7)
    {
      if (v31 == 8)
      {
        v32 = 192;
        v33 = *(v17 + 2);
        if (v33 <= 285212703)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v31 != 16)
        {
          goto LABEL_102;
        }

        v32 = 224;
        v33 = *(v17 + 2);
        if (v33 <= 285212703)
        {
          goto LABEL_81;
        }
      }
    }

    else if (v31 == -1879048176)
    {
      v32 = 384;
      v33 = *(v17 + 2);
      if (v33 <= 285212703)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v31 != 4)
      {
        goto LABEL_102;
      }

      v32 = 160;
      v33 = *(v17 + 2);
      if (v33 <= 285212703)
      {
        goto LABEL_81;
      }
    }
  }

  else if (v31 <= 268435463)
  {
    if (v31 == 32)
    {
      v32 = 256;
      v33 = *(v17 + 2);
      if (v33 <= 285212703)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v31 != 64)
      {
        goto LABEL_102;
      }

      v32 = 288;
      v33 = *(v17 + 2);
      if (v33 <= 285212703)
      {
        goto LABEL_81;
      }
    }
  }

  else
  {
    switch(v31)
    {
      case 268435464:
        v32 = 480;
        v33 = *(v17 + 2);
        if (v33 <= 285212703)
        {
          goto LABEL_81;
        }

        break;
      case 268435472:
        v32 = 320;
        v33 = *(v17 + 2);
        if (v33 <= 285212703)
        {
          goto LABEL_81;
        }

        break;
      case 268435488:
        v32 = 352;
        v33 = *(v17 + 2);
        if (v33 > 285212703)
        {
          break;
        }

LABEL_81:
        if (v33 <= 31)
        {
          if (v33 > 7)
          {
            if (v33 == 8)
            {
              v34 = 192;
              goto LABEL_125;
            }

            if (v33 == 16)
            {
              v34 = 224;
              goto LABEL_125;
            }
          }

          else
          {
            if (v33 == -1879048176)
            {
              v34 = 384;
              goto LABEL_125;
            }

            if (v33 == 4)
            {
              v34 = 160;
              goto LABEL_125;
            }
          }
        }

        else if (v33 <= 268435463)
        {
          if (v33 == 32)
          {
            v34 = 256;
            goto LABEL_125;
          }

          if (v33 == 64)
          {
            v34 = 288;
            goto LABEL_125;
          }
        }

        else
        {
          switch(v33)
          {
            case 268435464:
              v34 = 480;
              goto LABEL_125;
            case 268435472:
              v34 = 320;
              goto LABEL_125;
            case 268435488:
              v34 = 352;
              goto LABEL_125;
          }
        }

        goto LABEL_124;
      default:
LABEL_102:
        v32 = 576;
        v33 = *(v17 + 2);
        if (v33 > 285212703)
        {
          break;
        }

        goto LABEL_81;
    }
  }

LABEL_103:
  if (v33 <= 536870915)
  {
    if (v33 > 301989895)
    {
      if (v33 == 301989896)
      {
        v34 = 512;
        goto LABEL_125;
      }

      if (v33 == 335544328)
      {
        v34 = 544;
        goto LABEL_125;
      }
    }

    else
    {
      if (v33 == 285212704)
      {
        v34 = 416;
        goto LABEL_125;
      }

      if (v33 == 285212736)
      {
        v34 = 448;
        goto LABEL_125;
      }
    }
  }

  else if (v33 <= 536870927)
  {
    if (v33 == 536870916)
    {
      v34 = 0;
      goto LABEL_125;
    }

    if (v33 == 536870920)
    {
      v34 = 32;
      goto LABEL_125;
    }
  }

  else
  {
    switch(v33)
    {
      case 536870928:
        v34 = 64;
        goto LABEL_125;
      case 536870944:
        v34 = 96;
        goto LABEL_125;
      case 536870976:
        v34 = 128;
        goto LABEL_125;
    }
  }

LABEL_124:
  v34 = 576;
LABEL_125:
  v35 = v34 | v32;
  v36 = *(v22 + 2);
  if (v36 > 285212703)
  {
    if (v36 <= 536870915)
    {
      if (v36 > 301989895)
      {
        if (v36 == 301989896)
        {
          v37 = 16;
          goto LABEL_169;
        }

        if (v36 == 335544328)
        {
          v37 = 17;
          goto LABEL_169;
        }
      }

      else
      {
        if (v36 == 285212704)
        {
          v37 = 13;
          goto LABEL_169;
        }

        if (v36 == 285212736)
        {
          v37 = 14;
          goto LABEL_169;
        }
      }
    }

    else if (v36 <= 536870927)
    {
      if (v36 == 536870916)
      {
        v37 = 0;
        goto LABEL_169;
      }

      if (v36 == 536870920)
      {
        v37 = 1;
        goto LABEL_169;
      }
    }

    else
    {
      switch(v36)
      {
        case 536870928:
          v37 = 2;
          goto LABEL_169;
        case 536870944:
          v37 = 3;
          goto LABEL_169;
        case 536870976:
          v37 = 4;
          goto LABEL_169;
      }
    }
  }

  else if (v36 <= 31)
  {
    if (v36 > 7)
    {
      if (v36 == 8)
      {
        v37 = 6;
        goto LABEL_169;
      }

      if (v36 == 16)
      {
        v37 = 7;
        goto LABEL_169;
      }
    }

    else
    {
      if (v36 == -1879048176)
      {
        v37 = 12;
        goto LABEL_169;
      }

      if (v36 == 4)
      {
        v37 = 5;
        goto LABEL_169;
      }
    }
  }

  else if (v36 <= 268435463)
  {
    if (v36 == 32)
    {
      v37 = 8;
      goto LABEL_169;
    }

    if (v36 == 64)
    {
      v37 = 9;
      goto LABEL_169;
    }
  }

  else
  {
    switch(v36)
    {
      case 268435464:
        v37 = 15;
        goto LABEL_169;
      case 268435472:
        v37 = 10;
        goto LABEL_169;
      case 268435488:
        v37 = 11;
        goto LABEL_169;
    }
  }

  v37 = 18;
LABEL_169:
  v78 = a2;
  *&v38 = -1;
  *(&v38 + 1) = -1;
  v94 = v38;
  v95 = v38;
  v91 = -1;
  v93 = v38;
  v90 = v38;
  v92 = v35 | v37;
  v80 = a4;
  *&v95 = [*(a4 + 16) count] | 0x10000;
  v91 = (2 * v82) | (16 * v8) | (32 * v9) | (v10 << 8) | (v84 << 7) | (v83 << 9) | v81;
  v39 = BaseTensor::GetDimensionSize(v22);
  v40 = BaseTensor::GetDimensionSize(v22);
  v41 = BaseTensor::GetDimensionSize(v22);
  v42 = BaseTensor::GetDimensionSize(v22);
  v43 = BaseTensor::GetDimensionSize(v16);
  if (v8 == 1)
  {
    v44 = BaseTensor::GetDimensionSize(v16);
    LODWORD(v45) = v39;
    *&v46 = __PAIR64__(v43, v39);
    *(&v46 + 1) = __PAIR64__(v42, v44);
    v47 = v41;
    v48 = v40;
  }

  else
  {
    *&v46 = __PAIR64__(BaseTensor::GetDimensionSize(v16), v43);
    *(&v46 + 1) = __PAIR64__(v42, v41);
    LODWORD(v45) = v39;
    v47 = v40;
    v48 = v39;
    v39 = v41;
  }

  DWORD1(v45) = v40;
  *(&v45 + 1) = __PAIR64__(v42, v41);
  v89 = 0;
  v87[0] = v45;
  v87[1] = v46;
  *&v49 = v11;
  v88 = v49;
  v50 = *(a1 + *MEMORY[0x277CD7370]);
  v73 = *(a1 + *MEMORY[0x277CD7360]);
  v75 = *(a1 + *MEMORY[0x277CD7368]);
  v71 = *(v80 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v52 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v52 <= 1)
  {
    v53 = 1;
  }

  else
  {
    v53 = v52;
  }

  v54 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v55 = 256;
  if (v54 < 0x100)
  {
    v55 = v54;
  }

  v56 = v55 > 2 * v53;
  v57 = v55 / v53;
  if (v56)
  {
    v58 = v57;
  }

  else
  {
    v58 = 1;
  }

  v59 = v48 * v47;
  if (v8)
  {
    v60 = v59;
  }

  else
  {
    v60 = v39;
  }

  if (v8)
  {
    v61 = v39;
  }

  else
  {
    v61 = v59;
  }

  v62 = v42;
  for (i = v53; i > v61; v58 *= 2)
  {
    i >>= 1;
  }

  v64 = 1;
  while (v58 > v60)
  {
    v58 >>= 1;
    v64 *= 2;
  }

  for (; v64 > v42; v64 >>= 1)
  {
    if (v53 > (v58 * i * v64) >> 1)
    {
      break;
    }
  }

  v65 = (v61 + i - 1) / i;
  v66 = (v60 + v58 - 1) / v58;
  v67 = (v62 + v64 - 1) / v64;
  MPSSetNDArraysOnComputeEncoder(v78, v80, 4, 0, 0);
  [v78 setComputePipelineState:PipelineStateForMPSKey];
  [v78 setBytes:v87 length:48 atIndex:29];
  v86[0] = v65;
  v86[1] = v66;
  v86[2] = v67;
  v85[0] = i;
  v85[1] = v58;
  v85[2] = v64;
  [v78 dispatchThreadgroups:v86 threadsPerThreadgroup:v85];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeGridSampleGradient(uint64_t a1, void *a2, uint64_t a3, id *a4)
{
  v4 = a4;
  [a4[28] objectAtIndexedSubscript:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_238;
  }

  v7 = *(a1 + *MEMORY[0x277CD7370]);
  v8 = *(a1 + 156);
  v9 = *(a1 + 144);
  v10 = *(a1 + 160);
  v11 = *(a1 + 161);
  v12 = [v4[29] graph];
  v13 = **(v12 + 56);
  if (*(*(v12 + 56) + 8) == v13)
  {
    goto LABEL_250;
  }

  v15 = *(*v13 + 8);
  v14 = *v15;
  v16 = v15[1] - *v15;
  if (v16 <= 8 || v16 == 16)
  {
LABEL_249:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v97 = *v14;
  v93 = v14[1];
  v17 = v14[2];
  v18 = [v4[29] graph];
  v19 = **(v18 + 56);
  if (*(*(v18 + 56) + 8) == v19)
  {
LABEL_250:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *(*v19 + 24);
  v20 = *v21;
  if (*(v21 + 8) == *v21)
  {
    goto LABEL_249;
  }

  v92 = v9;
  v96 = a2;
  v22 = *v20;
  v87 = v11;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (*v97 != 4 && MTLReportFailureTypeEnabled())
    {
      v77 = *v97;
      MTLReportFailure();
    }

    v23 = v93;
    if (*v93 != 4 && MTLReportFailureTypeEnabled())
    {
      v78 = *v93;
      MTLReportFailure();
    }

    BaseTensor::GetDimensionSize(v93);
    BaseTensor::GetDimensionSize(v97);
    DimensionSize = BaseTensor::GetDimensionSize(v93);
    if (DimensionSize != BaseTensor::GetDimensionSize(v97) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = BaseTensor::GetDimensionSize(v93);
    if (v25 == BaseTensor::GetDimensionSize(v17))
    {
      BaseTensor::GetDimensionSize(v93);
      BaseTensor::GetDimensionSize(v17);
    }

    v26 = BaseTensor::GetDimensionSize(v93);
    if (v26 != BaseTensor::GetDimensionSize(v17) || (v27 = BaseTensor::GetDimensionSize(v93), v27 != BaseTensor::GetDimensionSize(v17)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        BaseTensor::GetDimensionSize(v93);
        BaseTensor::GetDimensionSize(v93);
        BaseTensor::GetDimensionSize(v17);
        BaseTensor::GetDimensionSize(v17);
        v23 = v93;
        MTLReportFailure();
      }
    }

    BaseTensor::GetDimensionSize(v23);
    if (BaseTensor::GetDimensionSize(v23) != 2 && MTLReportFailureTypeEnabled())
    {
      BaseTensor::GetDimensionSize(v93);
      MTLReportFailure();
    }
  }

  v88 = v8;
  v86 = v4;
  v28 = v10;
  v29 = BaseTensor::GetDimensionSize(v22);
  v30 = BaseTensor::GetDimensionSize(v22);
  v90 = BaseTensor::GetDimensionSize(v17);
  v85 = v17;
  v94 = BaseTensor::GetDimensionSize(v17);
  v31 = BaseTensor::GetDimensionSize(v22);
  v89 = v22;
  v32 = BaseTensor::GetDimensionSize(v22);
  v33 = v29;
  v34 = v31;
  v35 = v31 * v29;
  v95 = v32;
  v36 = v30;
  v91 = v35;
  v37 = v32 * v30 * v35;
  LODWORD(v101) = v32 * v30 * v35;
  v38 = MPSGetTemporaryBufferFromCommandBufferCache();
  v39 = *(a1 + *MEMORY[0x277CD7370]);
  v79 = *(a1 + *MEMORY[0x277CD7360]);
  v82 = *(a1 + *MEMORY[0x277CD7368]);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v41 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  if (v41 >= 0x100)
  {
    v42 = 256;
  }

  else
  {
    v42 = v41;
  }

  [v96 setComputePipelineState:PipelineStateForMPSKey];
  [v96 setBytes:&v101 length:4 atIndex:29];
  [v96 setBuffer:v38 offset:0 atIndex:28];
  *v107 = (v37 + v42 - 1) / v42;
  *&v107[8] = vdupq_n_s64(1uLL);
  *v104 = v42;
  *&v104[8] = *&v107[8];
  [v96 dispatchThreadgroups:v107 threadsPerThreadgroup:v104];
  MPSLibrary::ReleaseComputeState();
  v43 = *(v97 + 2);
  if (v43 > 285212703)
  {
    if (v43 <= 536870915)
    {
      v44 = v28;
      v45 = v88;
      v46 = v36;
      if (v43 > 301989895)
      {
        v4 = v86;
        v47 = v87;
        v48 = v85;
        if (v43 == 301989896)
        {
          v50 = 512;
          goto LABEL_70;
        }

        v49 = v96;
        if (v43 == 335544328)
        {
          v50 = 544;
          v51 = *(v93 + 2);
          if (v51 <= 285212703)
          {
            goto LABEL_139;
          }

          goto LABEL_71;
        }
      }

      else
      {
        v4 = v86;
        v47 = v87;
        v48 = v85;
        if (v43 == 285212704)
        {
          v50 = 416;
          goto LABEL_70;
        }

        v49 = v96;
        if (v43 == 285212736)
        {
          v50 = 448;
          v51 = *(v93 + 2);
          if (v51 <= 285212703)
          {
            goto LABEL_139;
          }

          goto LABEL_71;
        }
      }
    }

    else
    {
      v44 = v28;
      v45 = v88;
      v46 = v36;
      if (v43 <= 536870927)
      {
        v50 = 0;
        v4 = v86;
        v47 = v87;
        v49 = v96;
        v48 = v85;
        if (v43 != 536870916)
        {
          if (v43 == 536870920)
          {
            v50 = 32;
            v51 = *(v93 + 2);
            if (v51 <= 285212703)
            {
              goto LABEL_139;
            }

            goto LABEL_71;
          }

          goto LABEL_173;
        }

        goto LABEL_138;
      }

      v4 = v86;
      v47 = v87;
      v48 = v85;
      if (v43 == 536870928)
      {
        v50 = 64;
        goto LABEL_70;
      }

      v49 = v96;
      if (v43 == 536870944)
      {
        v50 = 96;
        v51 = *(v93 + 2);
        if (v51 <= 285212703)
        {
          goto LABEL_139;
        }

        goto LABEL_71;
      }

      if (v43 == 536870976)
      {
        v50 = 128;
        v51 = *(v93 + 2);
        if (v51 <= 285212703)
        {
          goto LABEL_139;
        }

        goto LABEL_71;
      }
    }
  }

  else
  {
    if (v43 > 31)
    {
      v44 = v28;
      v45 = v88;
      v46 = v36;
      if (v43 > 268435463)
      {
        v4 = v86;
        v47 = v87;
        v48 = v85;
        if (v43 != 268435464)
        {
          v49 = v96;
          if (v43 == 268435472)
          {
            v50 = 320;
            v51 = *(v93 + 2);
            if (v51 <= 285212703)
            {
              goto LABEL_139;
            }

            goto LABEL_71;
          }

          if (v43 == 268435488)
          {
            v50 = 352;
            v51 = *(v93 + 2);
            if (v51 > 285212703)
            {
              goto LABEL_71;
            }

LABEL_139:
            if (v51 <= 31)
            {
              if (v51 > 7)
              {
                if (v51 == 8)
                {
                  v50 |= 0xC0uLL;
                  v52 = *(v48 + 2);
                  if (v52 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
                }

                if (v51 == 16)
                {
                  v50 |= 0xE0uLL;
                  v52 = *(v48 + 2);
                  if (v52 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
                }
              }

              else
              {
                if (v51 == -1879048176)
                {
                  v50 |= 0x180uLL;
                  v52 = *(v48 + 2);
                  if (v52 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
                }

                if (v51 == 4)
                {
                  v50 |= 0xA0uLL;
                  v52 = *(v48 + 2);
                  if (v52 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
                }
              }
            }

            else if (v51 <= 268435463)
            {
              if (v51 == 32)
              {
                v50 |= 0x100uLL;
                v52 = *(v48 + 2);
                if (v52 <= 285212703)
                {
                  goto LABEL_109;
                }

                goto LABEL_92;
              }

              if (v51 == 64)
              {
                v50 |= 0x120uLL;
                v52 = *(v48 + 2);
                if (v52 <= 285212703)
                {
                  goto LABEL_109;
                }

                goto LABEL_92;
              }
            }

            else
            {
              switch(v51)
              {
                case 268435464:
                  v50 |= 0x1E0uLL;
                  v52 = *(v48 + 2);
                  if (v52 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
                case 268435472:
                  v50 |= 0x140uLL;
                  v52 = *(v48 + 2);
                  if (v52 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
                case 268435488:
                  v50 |= 0x160uLL;
                  v52 = *(v48 + 2);
                  if (v52 <= 285212703)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_92;
              }
            }

LABEL_219:
            v50 |= 0x240uLL;
            v52 = *(v48 + 2);
            if (v52 <= 285212703)
            {
              goto LABEL_109;
            }

LABEL_92:
            if (v52 <= 536870915)
            {
              if (v52 > 301989895)
              {
                if (v52 == 301989896)
                {
                  v53 = 512;
                  goto LABEL_176;
                }

                if (v52 == 335544328)
                {
                  v53 = 544;
                  goto LABEL_176;
                }
              }

              else
              {
                if (v52 == 285212704)
                {
                  v53 = 416;
                  goto LABEL_176;
                }

                if (v52 == 285212736)
                {
                  v53 = 448;
                  goto LABEL_176;
                }
              }
            }

            else if (v52 <= 536870927)
            {
              if (v52 == 536870916)
              {
                v53 = 0;
                goto LABEL_176;
              }

              if (v52 == 536870920)
              {
                v53 = 32;
                goto LABEL_176;
              }
            }

            else
            {
              switch(v52)
              {
                case 536870928:
                  v53 = 64;
                  goto LABEL_176;
                case 536870944:
                  v53 = 96;
                  goto LABEL_176;
                case 536870976:
                  v53 = 128;
                  goto LABEL_176;
              }
            }

            goto LABEL_175;
          }

          goto LABEL_173;
        }

        v50 = 480;
LABEL_70:
        v49 = v96;
        v51 = *(v93 + 2);
        if (v51 > 285212703)
        {
          goto LABEL_71;
        }

        goto LABEL_139;
      }

      v4 = v86;
      v47 = v87;
      v48 = v85;
      if (v43 != 32)
      {
        v49 = v96;
        if (v43 == 64)
        {
          v50 = 288;
          v51 = *(v93 + 2);
          if (v51 <= 285212703)
          {
            goto LABEL_139;
          }

          goto LABEL_71;
        }

        goto LABEL_173;
      }

      v50 = 256;
      v49 = v96;
LABEL_138:
      v51 = *(v93 + 2);
      if (v51 > 285212703)
      {
        goto LABEL_71;
      }

      goto LABEL_139;
    }

    v44 = v28;
    v45 = v88;
    v46 = v36;
    if (v43 > 7)
    {
      v4 = v86;
      v47 = v87;
      v48 = v85;
      if (v43 == 8)
      {
        v50 = 192;
        goto LABEL_70;
      }

      v49 = v96;
      if (v43 == 16)
      {
        v50 = 224;
        v51 = *(v93 + 2);
        if (v51 <= 285212703)
        {
          goto LABEL_139;
        }

        goto LABEL_71;
      }
    }

    else
    {
      v4 = v86;
      v47 = v87;
      v48 = v85;
      if (v43 == -1879048176)
      {
        v50 = 384;
        goto LABEL_70;
      }

      v49 = v96;
      if (v43 == 4)
      {
        v50 = 160;
        v51 = *(v93 + 2);
        if (v51 <= 285212703)
        {
          goto LABEL_139;
        }

        goto LABEL_71;
      }
    }
  }

LABEL_173:
  v50 = 576;
  v51 = *(v93 + 2);
  if (v51 <= 285212703)
  {
    goto LABEL_139;
  }

LABEL_71:
  if (v51 <= 536870915)
  {
    if (v51 > 301989895)
    {
      if (v51 == 301989896)
      {
        v50 |= 0x200uLL;
        v52 = *(v48 + 2);
        if (v52 > 285212703)
        {
          goto LABEL_92;
        }

        goto LABEL_109;
      }

      if (v51 == 335544328)
      {
        v50 |= 0x220uLL;
        v52 = *(v48 + 2);
        if (v52 <= 285212703)
        {
          goto LABEL_109;
        }

        goto LABEL_92;
      }
    }

    else
    {
      if (v51 == 285212704)
      {
        v50 |= 0x1A0uLL;
        v52 = *(v48 + 2);
        if (v52 > 285212703)
        {
          goto LABEL_92;
        }

        goto LABEL_109;
      }

      if (v51 == 285212736)
      {
        v50 |= 0x1C0uLL;
        v52 = *(v48 + 2);
        if (v52 <= 285212703)
        {
          goto LABEL_109;
        }

        goto LABEL_92;
      }
    }

    goto LABEL_219;
  }

  if (v51 <= 536870927)
  {
    if (v51 == 536870916)
    {
      v52 = *(v48 + 2);
      if (v52 > 285212703)
      {
        goto LABEL_92;
      }

      goto LABEL_109;
    }

    if (v51 == 536870920)
    {
      v50 |= 0x20uLL;
      v52 = *(v48 + 2);
      if (v52 <= 285212703)
      {
        goto LABEL_109;
      }

      goto LABEL_92;
    }

    goto LABEL_219;
  }

  if (v51 == 536870928)
  {
    v50 |= 0x40uLL;
    v52 = *(v48 + 2);
    if (v52 <= 285212703)
    {
      goto LABEL_109;
    }

    goto LABEL_92;
  }

  if (v51 == 536870944)
  {
    v50 |= 0x60uLL;
    v52 = *(v48 + 2);
    if (v52 <= 285212703)
    {
      goto LABEL_109;
    }

    goto LABEL_92;
  }

  if (v51 != 536870976)
  {
    goto LABEL_219;
  }

  v50 |= 0x80uLL;
  v52 = *(v48 + 2);
  if (v52 > 285212703)
  {
    goto LABEL_92;
  }

LABEL_109:
  if (v52 <= 31)
  {
    if (v52 > 7)
    {
      if (v52 == 8)
      {
        v53 = 192;
        goto LABEL_176;
      }

      if (v52 == 16)
      {
        v53 = 224;
        goto LABEL_176;
      }
    }

    else
    {
      if (v52 == -1879048176)
      {
        v53 = 384;
        goto LABEL_176;
      }

      if (v52 == 4)
      {
        v53 = 160;
        goto LABEL_176;
      }
    }
  }

  else if (v52 <= 268435463)
  {
    if (v52 == 32)
    {
      v53 = 256;
      goto LABEL_176;
    }

    if (v52 == 64)
    {
      v53 = 288;
      goto LABEL_176;
    }
  }

  else
  {
    switch(v52)
    {
      case 268435464:
        v53 = 480;
        goto LABEL_176;
      case 268435472:
        v53 = 320;
        goto LABEL_176;
      case 268435488:
        v53 = 352;
        goto LABEL_176;
    }
  }

LABEL_175:
  v53 = 576;
LABEL_176:
  v54 = v50 | v53;
  v55 = *(v89 + 2);
  if (v55 > 285212703)
  {
    if (v55 <= 536870915)
    {
      if (v55 > 301989895)
      {
        if (v55 == 301989896)
        {
          v56 = 16;
          goto LABEL_222;
        }

        if (v55 == 335544328)
        {
          v56 = 17;
          goto LABEL_222;
        }
      }

      else
      {
        if (v55 == 285212704)
        {
          v56 = 13;
          goto LABEL_222;
        }

        if (v55 == 285212736)
        {
          v56 = 14;
          goto LABEL_222;
        }
      }
    }

    else if (v55 <= 536870927)
    {
      if (v55 == 536870916)
      {
        v56 = 0;
        goto LABEL_222;
      }

      if (v55 == 536870920)
      {
        v56 = 1;
        goto LABEL_222;
      }
    }

    else
    {
      switch(v55)
      {
        case 536870928:
          v56 = 2;
          goto LABEL_222;
        case 536870944:
          v56 = 3;
          goto LABEL_222;
        case 536870976:
          v56 = 4;
          goto LABEL_222;
      }
    }

LABEL_221:
    v56 = 18;
    goto LABEL_222;
  }

  if (v55 <= 31)
  {
    if (v55 > 7)
    {
      if (v55 == 8)
      {
        v56 = 6;
        goto LABEL_222;
      }

      if (v55 == 16)
      {
        v56 = 7;
        goto LABEL_222;
      }
    }

    else
    {
      if (v55 == -1879048176)
      {
        v56 = 12;
        goto LABEL_222;
      }

      if (v55 == 4)
      {
        v56 = 5;
        goto LABEL_222;
      }
    }

    goto LABEL_221;
  }

  if (v55 <= 268435463)
  {
    if (v55 == 32)
    {
      v56 = 8;
      goto LABEL_222;
    }

    if (v55 == 64)
    {
      v56 = 9;
      goto LABEL_222;
    }

    goto LABEL_221;
  }

  if (v55 == 268435464)
  {
    v56 = 15;
    goto LABEL_222;
  }

  if (v55 == 268435472)
  {
    v56 = 10;
    goto LABEL_222;
  }

  if (v55 != 268435488)
  {
    goto LABEL_221;
  }

  v56 = 11;
LABEL_222:
  *&v57 = -1;
  *(&v57 + 1) = -1;
  v110 = v57;
  v111 = v57;
  *&v107[16] = -1;
  v109 = v57;
  *v107 = v57;
  v108 = v54 | v56;
  *&v111 = [v4[2] count] | 0x10100;
  *&v107[16] = (16 * v45) | (v44 << 7) | (v47 << 6) | v92;
  *&v58 = __PAIR64__(v90, v33);
  *&v59 = __PAIR64__(v34, v33);
  *(&v59 + 1) = __PAIR64__(v46, v95);
  *(&v58 + 1) = __PAIR64__(v46, v94);
  v105 = 0;
  v106 = 0;
  *v104 = v59;
  *&v104[16] = v58;
  v60 = *(a1 + *MEMORY[0x277CD7370]);
  v80 = *(a1 + *MEMORY[0x277CD7360]);
  v83 = *(a1 + *MEMORY[0x277CD7368]);
  v75 = v4[29];
  MPSLibrary::CreateUberShaderKey();
  v61 = MPSLibrary::GetPipelineStateForMPSKey();
  v62 = [v61 threadExecutionWidth];
  if (v62 <= 1)
  {
    v63 = 1;
  }

  else
  {
    v63 = v62;
  }

  v64 = [v61 maxTotalThreadsPerThreadgroup];
  v65 = 256;
  if (v64 < 0x100)
  {
    v65 = v64;
  }

  if (v65 <= 2 * v63)
  {
    v66 = 1;
  }

  else
  {
    v66 = v65 / v63;
  }

  MPSSetNDArraysOnComputeEncoder(v49, v4, 4, 0, 0);
  [v49 setComputePipelineState:v61];
  [v49 setBytes:v104 length:48 atIndex:29];
  v101 = (v63 + v90 * v33 - 1) / v63;
  v102 = (v66 + v94 - 1) / v66;
  v103 = v46;
  v98 = v63;
  v99 = v66;
  v67 = 1;
  v100 = 1;
  [v49 dispatchThreadgroups:&v101 threadsPerThreadgroup:&v98];
  MPSLibrary::ReleaseComputeState();
  v68 = *(a1 + *MEMORY[0x277CD7370]);
  v81 = *(a1 + *MEMORY[0x277CD7360]);
  v84 = *(a1 + *MEMORY[0x277CD7368]);
  v76 = v4[29];
  MPSLibrary::CreateUberShaderKey();
  v69 = MPSLibrary::GetPipelineStateForMPSKey();
  v70 = [v69 threadExecutionWidth];
  if (v70 <= 1)
  {
    v71 = 1;
  }

  else
  {
    v71 = v70;
  }

  v72 = [v69 maxTotalThreadsPerThreadgroup];
  v73 = 256;
  if (v72 < 0x100)
  {
    v73 = v72;
  }

  if (v73 > 2 * v71)
  {
    v67 = v73 / v71;
  }

  [v49 setComputePipelineState:v69];
  v101 = (v71 + v91 - 1) / v71;
  v102 = (v67 + v95 - 1) / v67;
  v103 = v46;
  v98 = v71;
  v99 = v67;
  v100 = 1;
  [v49 dispatchThreadgroups:&v101 threadsPerThreadgroup:&v98];
  MPSLibrary::ReleaseComputeState();
LABEL_238:
  [v4[28] objectAtIndexedSubscript:1];
  objc_opt_class();
  objc_opt_isKindOfClass();
  return 0;
}

uint64_t MPSNDArrayGridSampleConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MPSCreateFunctionConstantValues();
  v6 = v5;
  v7 = *a3;
  v8 = *(a3 + 1);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vceqq_s64(v8, v9);
  v11 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v9), vceqq_s64(*(a3 + 4), v9))));
  v12 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v10, vceqq_s64(*(a3 + 3), v9)), xmmword_239B06050)) & 0xF;
  if (*a3 != -1 || v12 != 0 || (v11 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v10), *v8.i8).u8[0] & 1) == 0)
    {
      v19 = *(a3 + 1);
      [v5 setConstantValue:&v19 type:33 atIndex:126];
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

  v16 = *a2;
  v17 = _MPSNewSpecializedFunction();

  return v17;
}

{
  v5 = MPSCreateFunctionConstantValues();
  v6 = v5;
  v7 = *a3;
  v8 = *(a3 + 1);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vceqq_s64(v8, v9);
  v11 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v9), vceqq_s64(*(a3 + 4), v9))));
  v12 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v10, vceqq_s64(*(a3 + 3), v9)), xmmword_239B06050)) & 0xF;
  if (*a3 != -1 || v12 != 0 || (v11 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v10), *v8.i8).u8[0] & 1) == 0)
    {
      v19 = *(a3 + 1);
      [v5 setConstantValue:&v19 type:33 atIndex:126];
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

  v16 = *a2;
  v17 = _MPSNewSpecializedFunction();

  return v17;
}

uint64_t EncodeArrayNeuron(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v54 = *(a1 + *MEMORY[0x277CD7370]);
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v11 = v8;
  v12 = *(a4 + 208);
  v13 = MEMORY[0x277CD7410];
  v14 = *MEMORY[0x277CD7410];
  v15 = *MEMORY[0x277CD7410];
  v16 = MEMORY[0x277CD73D8];
  if (*&v8[v15] == 1)
  {
    v9 = 0;
    if (*&v8[v14 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v10 = 0;
    if (*&v12[v15] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    v4 = 0;
    if (*&v12[v14 + 4] != 1)
    {
      goto LABEL_25;
    }

LABEL_23:
    LODWORD(v21) = 0;
    goto LABEL_29;
  }

  if (*&v8[*MEMORY[0x277CD73D8]] == 1)
  {
    v9 = *&v8[*MEMORY[0x277CD7400]];
    if (*&v8[v14 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v8[*MEMORY[0x277CD73D8]])
  {
    v9 = [v8 dataType] >> 3;
    v14 = *v13;
    v15 = *v13;
  }

  if (*&v11[v15 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v11[*v16 + 1])
  {
    v4 = v9;
    v17 = [v11 dataType];
    v9 = v4;
    v10 = v17 >> 3;
    v14 = *v13;
    if (*&v12[*v13] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v11[*v16 + 1] != 1)
  {
    if (*&v12[v15] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v10 = *&v11[*MEMORY[0x277CD7400]];
  if (*&v12[v15] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v12[*v16] == 1)
  {
    v4 = *&v12[*MEMORY[0x277CD7400]];
    if (*&v12[v14 + 4] != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (!*&v12[*v16])
  {
    v18 = v9;
    v19 = v10;
    v20 = [v12 dataType];
    v10 = v19;
    v9 = v18;
    v4 = v20 >> 3;
    v14 = *v13;
  }

  if (*&v12[v14 + 4] == 1)
  {
    goto LABEL_23;
  }

LABEL_25:
  v21 = &v12[*v16];
  if (v21[1])
  {
    if (v21[1] == 1)
    {
      LODWORD(v21) = *&v12[*MEMORY[0x277CD7400]];
    }
  }

  else
  {
    v22 = v9;
    v23 = v10;
    v24 = [v12 dataType];
    v10 = v23;
    v9 = v22;
    LODWORD(v21) = v24 >> 3;
  }

LABEL_29:
  v25 = *(*(a4 + 8) + 64);
  v26 = *(a4 + 192);
  v27 = *MEMORY[0x277CD73C8];
  v28 = *&v11[v27];
  if (v28 > 285212703)
  {
    if (v28 <= 536870915)
    {
      if (v28 > 301989895)
      {
        if (v28 == 301989896)
        {
          v29 = 512;
          v30 = *&v12[v27];
          if (v30 <= 285212703)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v28 != 335544328)
          {
            goto LABEL_110;
          }

          v29 = 544;
          v30 = *&v12[v27];
          if (v30 <= 285212703)
          {
            goto LABEL_89;
          }
        }
      }

      else if (v28 == 285212704)
      {
        v29 = 416;
        v30 = *&v12[v27];
        if (v30 <= 285212703)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v28 != 285212736)
        {
          goto LABEL_110;
        }

        v29 = 448;
        v30 = *&v12[v27];
        if (v30 <= 285212703)
        {
          goto LABEL_89;
        }
      }
    }

    else if (v28 <= 536870927)
    {
      if (v28 == 536870916)
      {
        v29 = 0;
        v30 = *&v12[v27];
        if (v30 > 285212703)
        {
          goto LABEL_111;
        }

        goto LABEL_89;
      }

      if (v28 != 536870920)
      {
        goto LABEL_110;
      }

      v29 = 32;
      v30 = *&v12[v27];
      if (v30 <= 285212703)
      {
        goto LABEL_89;
      }
    }

    else
    {
      switch(v28)
      {
        case 536870928:
          v29 = 64;
          v30 = *&v12[v27];
          if (v30 <= 285212703)
          {
            goto LABEL_89;
          }

          break;
        case 536870944:
          v29 = 96;
          v30 = *&v12[v27];
          if (v30 <= 285212703)
          {
            goto LABEL_89;
          }

          break;
        case 536870976:
          v29 = 128;
          v30 = *&v12[v27];
          if (v30 <= 285212703)
          {
            goto LABEL_89;
          }

          break;
        default:
          goto LABEL_110;
      }
    }
  }

  else if (v28 <= 31)
  {
    if (v28 > 7)
    {
      if (v28 == 8)
      {
        v29 = 192;
        v30 = *&v12[v27];
        if (v30 <= 285212703)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v28 != 16)
        {
          goto LABEL_110;
        }

        v29 = 224;
        v30 = *&v12[v27];
        if (v30 <= 285212703)
        {
          goto LABEL_89;
        }
      }
    }

    else if (v28 == -1879048176)
    {
      v29 = 384;
      v30 = *&v12[v27];
      if (v30 <= 285212703)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v28 != 4)
      {
        goto LABEL_110;
      }

      v29 = 160;
      v30 = *&v12[v27];
      if (v30 <= 285212703)
      {
        goto LABEL_89;
      }
    }
  }

  else if (v28 <= 268435463)
  {
    if (v28 == 32)
    {
      v29 = 256;
      v30 = *&v12[v27];
      if (v30 <= 285212703)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (v28 != 64)
      {
        goto LABEL_110;
      }

      v29 = 288;
      v30 = *&v12[v27];
      if (v30 <= 285212703)
      {
        goto LABEL_89;
      }
    }
  }

  else
  {
    switch(v28)
    {
      case 268435464:
        v29 = 480;
        v30 = *&v12[v27];
        if (v30 <= 285212703)
        {
          goto LABEL_89;
        }

        break;
      case 268435472:
        v29 = 320;
        v30 = *&v12[v27];
        if (v30 <= 285212703)
        {
          goto LABEL_89;
        }

        break;
      case 268435488:
        v29 = 352;
        v30 = *&v12[v27];
        if (v30 > 285212703)
        {
          break;
        }

LABEL_89:
        if (v30 <= 31)
        {
          if (v30 > 7)
          {
            if (v30 == 8)
            {
              v31 = 6;
              goto LABEL_133;
            }

            if (v30 == 16)
            {
              v31 = 7;
              goto LABEL_133;
            }
          }

          else
          {
            if (v30 == -1879048176)
            {
              v31 = 12;
              goto LABEL_133;
            }

            if (v30 == 4)
            {
              v31 = 5;
              goto LABEL_133;
            }
          }
        }

        else if (v30 <= 268435463)
        {
          if (v30 == 32)
          {
            v31 = 8;
            goto LABEL_133;
          }

          if (v30 == 64)
          {
            v31 = 9;
            goto LABEL_133;
          }
        }

        else
        {
          switch(v30)
          {
            case 268435464:
              v31 = 15;
              goto LABEL_133;
            case 268435472:
              v31 = 10;
              goto LABEL_133;
            case 268435488:
              v31 = 11;
              goto LABEL_133;
          }
        }

        goto LABEL_132;
      default:
LABEL_110:
        v29 = 576;
        v30 = *&v12[v27];
        if (v30 > 285212703)
        {
          break;
        }

        goto LABEL_89;
    }
  }

LABEL_111:
  if (v30 <= 536870915)
  {
    if (v30 > 301989895)
    {
      if (v30 == 301989896)
      {
        v31 = 16;
        goto LABEL_133;
      }

      if (v30 == 335544328)
      {
        v31 = 17;
        goto LABEL_133;
      }
    }

    else
    {
      if (v30 == 285212704)
      {
        v31 = 13;
        goto LABEL_133;
      }

      if (v30 == 285212736)
      {
        v31 = 14;
        goto LABEL_133;
      }
    }
  }

  else if (v30 <= 536870927)
  {
    if (v30 == 536870916)
    {
      v31 = 0;
      goto LABEL_133;
    }

    if (v30 == 536870920)
    {
      v31 = 1;
      goto LABEL_133;
    }
  }

  else
  {
    switch(v30)
    {
      case 536870928:
        v31 = 2;
        goto LABEL_133;
      case 536870944:
        v31 = 3;
        goto LABEL_133;
      case 536870976:
        v31 = 4;
        goto LABEL_133;
    }
  }

LABEL_132:
  v31 = 18;
LABEL_133:
  v32 = v29 | v31;
  v33 = *(a1 + 664);
  *&v34 = -1;
  *(&v34 + 1) = -1;
  v62 = v34;
  v63 = v34;
  v59 = -1;
  v61 = v34;
  v58 = v34;
  v60 = v32 | (v33 << 16);
  v35 = &v12[*v13];
  v36 = *v35;
  v37 = *(v35 + 1);
  v57[0] = *v35;
  v57[1] = v37;
  v57[2] = v10;
  v57[3] = v21;
  v57[4] = 0;
  v57[5] = v9;
  v57[6] = v4;
  v57[7] = 0;
  v57[8] = v33;
  v38 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v40 = [ComputeState threadExecutionWidth];
  if (v40 <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = v40;
  }

  v42 = [ComputeState maxTotalThreadsPerThreadgroup];
  v43 = 256;
  if (v42 < 0x100)
  {
    v43 = v42;
  }

  if (v43 > 2 * v41)
  {
    v38 = v43 / v41;
  }

  v44 = v37 - 1;
  if (v36 == 1 && v37 >= 2)
  {
    v38 *= v41;
    v45 = 1;
    v41 = 1;
    v46 = (v38 + v44) / v38;
  }

  else
  {
    v47 = (v38 + v44) / v38;
    v48 = v38 * v41;
    v49 = (v38 * v41 + v36 - 1) / (v38 * v41);
    v50 = 1;
    if (v37 == 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = v47;
    }

    if (v37 != 1)
    {
      v49 = (v41 + v36 - 1) / v41;
      v50 = v38;
      v48 = v41;
    }

    v52 = v36 >= 2;
    if (v36 >= 2)
    {
      v46 = v51;
    }

    else
    {
      v46 = v47;
    }

    if (v36 >= 2)
    {
      v45 = v49;
    }

    else
    {
      v45 = (v41 + v36 - 1) / v41;
    }

    if (v52)
    {
      v38 = v50;
    }

    if (v52)
    {
      v41 = v48;
    }
  }

  [a2 setComputePipelineState:ComputeState];
  [a2 setBuffer:objc_msgSend(v11 offset:"buffer") atIndex:{v25, 0}];
  [a2 setBuffer:objc_msgSend(v12 offset:"buffer") atIndex:{v26, 1}];
  [a2 setBytes:v57 length:36 atIndex:2];
  v56[0] = v45;
  v56[1] = v46;
  v56[2] = 1;
  v55[0] = v41;
  v55[1] = v38;
  v55[2] = 1;
  [a2 dispatchThreadgroups:v56 threadsPerThreadgroup:v55];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArrayNeuronGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v69 = *(a1 + *MEMORY[0x277CD7370]);
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v72 = *(a4 + 112);
  v73 = *(a4 + 208);
  v12 = MEMORY[0x277CD7410];
  v13 = *MEMORY[0x277CD7410];
  v14 = *MEMORY[0x277CD7410];
  v71 = v8;
  v15 = MEMORY[0x277CD73D8];
  if (*&v8[v14] == 1)
  {
    v11 = 0;
    if (*&v8[v13 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v5 = 0;
    if (*&v73[v14] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    v9 = 0;
    v21 = v13;
    if (*&v73[v13 + 4] == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (*&v8[*MEMORY[0x277CD73D8]] == 1)
  {
    v11 = *&v8[*MEMORY[0x277CD7400]];
    if (*&v8[v13 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v8[*MEMORY[0x277CD73D8]])
  {
    v16 = MEMORY[0x277CD7410];
    v17 = [v8 dataType];
    v12 = v16;
    v11 = v17 >> 3;
    v13 = *v16;
    v14 = *v16;
  }

  if (*&v71[v14 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v71[*v15 + 1])
  {
    v18 = v12;
    v19 = v11;
    v20 = [v71 dataType];
    v11 = v19;
    v12 = v18;
    v5 = v20 >> 3;
    v13 = *v18;
    if (*&v73[*v18] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v71[*v15 + 1] != 1)
  {
    if (*&v73[v14] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v5 = *&v71[*MEMORY[0x277CD7400]];
  if (*&v73[v14] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v73[*v15] == 1)
  {
    v9 = *&v73[*MEMORY[0x277CD7400]];
    v21 = v13;
    if (*&v73[v13 + 4] == 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*&v73[*v15])
    {
      v22 = v12;
      v23 = v11;
      v24 = [v73 dataType];
      v11 = v23;
      v12 = v22;
      v9 = v24 >> 3;
      v13 = *v22;
    }

    v21 = v13;
    if (*&v73[v13 + 4] == 1)
    {
LABEL_23:
      v10 = 0;
      if (*&v72[v21] != 1)
      {
        goto LABEL_34;
      }

LABEL_31:
      v6 = 0;
      if (*&v72[v13 + 4] != 1)
      {
        goto LABEL_40;
      }

LABEL_38:
      LODWORD(v34) = 0;
      goto LABEL_44;
    }
  }

LABEL_26:
  if (!v73[*v15 + 1])
  {
    v25 = v12;
    v26 = v11;
    v27 = v9;
    v28 = [v73 dataType];
    v9 = v27;
    v11 = v26;
    v12 = v25;
    v10 = v28 >> 3;
    v13 = *v25;
    if (*&v72[*v25] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v73[*v15 + 1] != 1)
  {
    if (*&v72[v21] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v10 = *&v73[*MEMORY[0x277CD7400]];
  if (*&v72[v21] == 1)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (*&v72[*v15] == 1)
  {
    v6 = *&v72[*MEMORY[0x277CD7400]];
    if (*&v72[v13 + 4] != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (!*&v72[*v15])
  {
    v29 = v12;
    v30 = v11;
    v31 = v9;
    v32 = v10;
    v33 = [v72 dataType];
    v10 = v32;
    v9 = v31;
    v11 = v30;
    v12 = v29;
    v6 = v33 >> 3;
    v13 = *v29;
  }

  if (*&v72[v13 + 4] == 1)
  {
    goto LABEL_38;
  }

LABEL_40:
  v34 = &v72[*v15];
  if (v34[1])
  {
    if (v34[1] == 1)
    {
      LODWORD(v34) = *&v72[*MEMORY[0x277CD7400]];
    }
  }

  else
  {
    v35 = v5;
    v36 = v12;
    v37 = v11;
    v38 = v9;
    v39 = v10;
    v40 = [v72 dataType];
    v10 = v39;
    v9 = v38;
    v11 = v37;
    v12 = v36;
    LODWORD(v34) = v40 >> 3;
    v5 = v35;
  }

LABEL_44:
  v41 = *(*(a4 + 8) + 64);
  v42 = *(a4 + 96);
  v43 = *MEMORY[0x277CD73C8];
  v44 = *&v71[v43];
  if (v44 > 285212703)
  {
    if (v44 <= 536870915)
    {
      if (v44 > 301989895)
      {
        if (v44 == 301989896)
        {
          v45 = 512;
          v46 = *&v72[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }
        }

        else
        {
          if (v44 != 335544328)
          {
            goto LABEL_125;
          }

          v45 = 544;
          v46 = *&v72[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }
        }
      }

      else if (v44 == 285212704)
      {
        v45 = 416;
        v46 = *&v72[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v44 != 285212736)
        {
          goto LABEL_125;
        }

        v45 = 448;
        v46 = *&v72[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }
      }
    }

    else if (v44 <= 536870927)
    {
      if (v44 == 536870916)
      {
        v45 = 0;
        v46 = *&v72[v43];
        if (v46 > 285212703)
        {
          goto LABEL_126;
        }

        goto LABEL_104;
      }

      if (v44 != 536870920)
      {
        goto LABEL_125;
      }

      v45 = 32;
      v46 = *&v72[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }

    else
    {
      switch(v44)
      {
        case 536870928:
          v45 = 64;
          v46 = *&v72[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }

          break;
        case 536870944:
          v45 = 96;
          v46 = *&v72[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }

          break;
        case 536870976:
          v45 = 128;
          v46 = *&v72[v43];
          if (v46 <= 285212703)
          {
            goto LABEL_104;
          }

          break;
        default:
          goto LABEL_125;
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
        v46 = *&v72[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v44 != 16)
        {
          goto LABEL_125;
        }

        v45 = 224;
        v46 = *&v72[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }
      }
    }

    else if (v44 == -1879048176)
    {
      v45 = 384;
      v46 = *&v72[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v44 != 4)
      {
        goto LABEL_125;
      }

      v45 = 160;
      v46 = *&v72[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }
  }

  else if (v44 <= 268435463)
  {
    if (v44 == 32)
    {
      v45 = 256;
      v46 = *&v72[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v44 != 64)
      {
        goto LABEL_125;
      }

      v45 = 288;
      v46 = *&v72[v43];
      if (v46 <= 285212703)
      {
        goto LABEL_104;
      }
    }
  }

  else
  {
    switch(v44)
    {
      case 268435464:
        v45 = 480;
        v46 = *&v72[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }

        break;
      case 268435472:
        v45 = 320;
        v46 = *&v72[v43];
        if (v46 <= 285212703)
        {
          goto LABEL_104;
        }

        break;
      case 268435488:
        v45 = 352;
        v46 = *&v72[v43];
        if (v46 > 285212703)
        {
          break;
        }

LABEL_104:
        if (v46 <= 31)
        {
          if (v46 > 7)
          {
            if (v46 == 8)
            {
              v47 = 6144;
              goto LABEL_148;
            }

            if (v46 == 16)
            {
              v47 = 7168;
              goto LABEL_148;
            }
          }

          else
          {
            if (v46 == -1879048176)
            {
              v47 = 12288;
              goto LABEL_148;
            }

            if (v46 == 4)
            {
              v47 = 5120;
              goto LABEL_148;
            }
          }
        }

        else if (v46 <= 268435463)
        {
          if (v46 == 32)
          {
            v47 = 0x2000;
            goto LABEL_148;
          }

          if (v46 == 64)
          {
            v47 = 9216;
            goto LABEL_148;
          }
        }

        else
        {
          switch(v46)
          {
            case 268435464:
              v47 = 15360;
              goto LABEL_148;
            case 268435472:
              v47 = 10240;
              goto LABEL_148;
            case 268435488:
              v47 = 11264;
              goto LABEL_148;
          }
        }

        goto LABEL_147;
      default:
LABEL_125:
        v45 = 576;
        v46 = *&v72[v43];
        if (v46 > 285212703)
        {
          break;
        }

        goto LABEL_104;
    }
  }

LABEL_126:
  if (v46 <= 536870915)
  {
    if (v46 > 301989895)
    {
      if (v46 == 301989896)
      {
        v47 = 0x4000;
        goto LABEL_148;
      }

      if (v46 == 335544328)
      {
        v47 = 17408;
        goto LABEL_148;
      }
    }

    else
    {
      if (v46 == 285212704)
      {
        v47 = 13312;
        goto LABEL_148;
      }

      if (v46 == 285212736)
      {
        v47 = 14336;
        goto LABEL_148;
      }
    }
  }

  else if (v46 <= 536870927)
  {
    if (v46 == 536870916)
    {
      v47 = 0;
      goto LABEL_148;
    }

    if (v46 == 536870920)
    {
      v47 = 1024;
      goto LABEL_148;
    }
  }

  else
  {
    switch(v46)
    {
      case 536870928:
        v47 = 2048;
        goto LABEL_148;
      case 536870944:
        v47 = 3072;
        goto LABEL_148;
      case 536870976:
        v47 = 4096;
        goto LABEL_148;
    }
  }

LABEL_147:
  v47 = 18432;
LABEL_148:
  v48 = *&v73[v43];
  v66 = *(a4 + 192);
  if (v48 > 285212703)
  {
    if (v48 <= 536870915)
    {
      if (v48 > 301989895)
      {
        if (v48 == 301989896)
        {
          v50 = 16;
          v49 = a5;
          goto LABEL_192;
        }

        v49 = a5;
        if (v48 == 335544328)
        {
          v50 = 17;
          goto LABEL_192;
        }
      }

      else
      {
        if (v48 == 285212704)
        {
          v50 = 13;
          v49 = a5;
          goto LABEL_192;
        }

        v49 = a5;
        if (v48 == 285212736)
        {
          v50 = 14;
          goto LABEL_192;
        }
      }
    }

    else if (v48 <= 536870927)
    {
      if (v48 == 536870916)
      {
        v50 = 0;
        v49 = a5;
        goto LABEL_192;
      }

      v49 = a5;
      if (v48 == 536870920)
      {
        v50 = 1;
        goto LABEL_192;
      }
    }

    else
    {
      if (v48 == 536870928)
      {
        v50 = 2;
        v49 = a5;
        goto LABEL_192;
      }

      if (v48 == 536870944)
      {
        v50 = 3;
        v49 = a5;
        goto LABEL_192;
      }

      v49 = a5;
      if (v48 == 536870976)
      {
        v50 = 4;
        goto LABEL_192;
      }
    }
  }

  else if (v48 <= 31)
  {
    if (v48 > 7)
    {
      v49 = a5;
      if (v48 == 8)
      {
        v50 = 6;
        goto LABEL_192;
      }

      if (v48 == 16)
      {
        v50 = 7;
        goto LABEL_192;
      }
    }

    else
    {
      if (v48 == -1879048176)
      {
        v50 = 12;
        v49 = a5;
        goto LABEL_192;
      }

      v49 = a5;
      if (v48 == 4)
      {
        v50 = 5;
        goto LABEL_192;
      }
    }
  }

  else if (v48 <= 268435463)
  {
    v49 = a5;
    if (v48 == 32)
    {
      v50 = 8;
      goto LABEL_192;
    }

    if (v48 == 64)
    {
      v50 = 9;
      goto LABEL_192;
    }
  }

  else
  {
    if (v48 == 268435464)
    {
      v50 = 15;
      v49 = a5;
      goto LABEL_192;
    }

    if (v48 == 268435472)
    {
      v50 = 10;
      v49 = a5;
      goto LABEL_192;
    }

    v49 = a5;
    if (v48 == 268435488)
    {
      v50 = 11;
      goto LABEL_192;
    }
  }

  v50 = 18;
LABEL_192:
  v51 = 0x2000000;
  if (!v49)
  {
    v51 = 0;
  }

  v52 = *(a1 + 144);
  *&v53 = -1;
  *(&v53 + 1) = -1;
  v81 = v53;
  v82 = v53;
  v78 = -1;
  v80 = v53;
  v77 = v53;
  v79 = v45 | v47 | v50 | v51 | (v52 << 16);
  v54 = &v73[*v12];
  v55 = *v54;
  v56 = *(v54 + 1);
  v76[0] = *v54;
  v76[1] = v56;
  v76[2] = v5;
  v76[3] = v10;
  v76[4] = v34;
  v76[5] = v11;
  v76[6] = v9;
  v76[7] = v6;
  v76[8] = v52;
  v57 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v59 = [ComputeState threadExecutionWidth];
  if (v59 <= 1)
  {
    v60 = 1;
  }

  else
  {
    v60 = v59;
  }

  v61 = [ComputeState maxTotalThreadsPerThreadgroup];
  v62 = 256;
  if (v61 < 0x100)
  {
    v62 = v61;
  }

  v63 = v62 > 2 * v60;
  v64 = v62 / v60;
  if (v63)
  {
    v57 = v64;
  }

  [a2 setComputePipelineState:ComputeState];
  [a2 setBuffer:objc_msgSend(v71 offset:"buffer") atIndex:{v41, 0}];
  [a2 setBuffer:objc_msgSend(v72 offset:"buffer") atIndex:{v42, 1}];
  [a2 setBuffer:objc_msgSend(v73 offset:"buffer") atIndex:{v66, 2}];
  [a2 setBytes:v76 length:36 atIndex:3];
  v75[0] = (v55 + v60 - 1) / v60;
  v75[1] = (v56 + v57 - 1) / v57;
  v75[2] = 1;
  v74[0] = v60;
  v74[1] = v57;
  v74[2] = 1;
  [a2 dispatchThreadgroups:v75 threadsPerThreadgroup:v74];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeResample(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v110 = *(a1 + *MEMORY[0x277CD7370]);
  v7 = *(a1 + 696);
  v8 = *(a1 + 704);
  v115 = *(a1 + 704);
  v116 = *(a1 + 708);
  v9 = *(a1 + 712);
  *&v10 = -1;
  *(&v10 + 1) = -1;
  v130 = v10;
  v131 = v10;
  v128 = v10;
  v129 = v10;
  v127 = v10;
  v11 = [*(a4 + 232) inputTensorAtIndex:0];
  v12 = [*(a4 + 232) outputTensorAtIndex:0];
  v13 = *v11;
  if (*v11 == *v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_54:
    v107 = v116 == 0;
    v106 = 1;
    LODWORD(v108) = 1;
    LODWORD(v109) = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v46 = *(v11 + 8);
    v113 = 1;
    if (v46 > 285212703)
    {
      goto LABEL_90;
    }

    goto LABEL_55;
  }

  v54 = v12;
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v13 = *v11;
  v12 = v54;
  if (!*v11)
  {
    goto LABEL_54;
  }

LABEL_3:
  v105 = a2;
  v14 = **(v11 + 16);
  v15 = **(v12 + 16);
  if (v13 > 3)
  {
    v17 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v14 + 1;
    v19 = v15 + 1;
    v20 = 0uLL;
    v21 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = 0uLL;
    do
    {
      v20 = vsubq_s64(v20, vmvnq_s8(vceqq_s64(v18[-1], v19[-1])));
      v22 = vsubq_s64(v22, vmvnq_s8(vceqq_s64(*v18, *v19)));
      v18 += 2;
      v19 += 2;
      v21 -= 4;
    }

    while (v21);
    v16 = vaddvq_s64(vaddq_s64(v22, v20));
    if (v13 == v17)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v23 = v13 - v17;
  v24 = v17;
  v25 = &v15->i64[v24];
  v26 = &v14->i64[v24];
  do
  {
    v28 = *v26++;
    v27 = v28;
    v29 = *v25++;
    if (v27 != v29)
    {
      ++v16;
    }

    --v23;
  }

  while (v23);
LABEL_12:
  if (v16 >= 3)
  {
    v57 = v12;
    v58 = MTLReportFailureTypeEnabled();
    v12 = v57;
    if (v58)
    {
      MTLReportFailure();
      v12 = v57;
    }
  }

  v30 = **(v12 + 16);
  v31 = *v30;
  if (v116)
  {
    v107 = 0;
    if (v13 == 1)
    {
      v32 = 1;
      LODWORD(v108) = 1;
      LODWORD(v109) = 1;
      v33 = 1;
      v34 = *v30;
      v35 = 1;
      v31 = 1;
      v36 = ***(v11 + 16);
      v106 = v36;
      if (v36 < 2 || v34 == v36)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v38 = v30[1];
      if (v13 < 3)
      {
        v43 = **(v11 + 16);
        v32 = 1;
        LODWORD(v108) = 1;
        v109 = v43[1];
        v33 = 1;
        v34 = v31;
        v35 = 1;
      }

      else
      {
        v35 = v30[2];
        if (v13 == 3)
        {
          v43 = **(v11 + 16);
          v108 = v43[2];
          v109 = v43[1];
          v32 = 1;
          v33 = 1;
        }

        else
        {
          v33 = v30[3];
          v43 = **(v11 + 16);
          v108 = v43[2];
          v109 = v43[1];
          v32 = v43[3];
        }

        v34 = v31;
      }

      v31 = v38;
      v44 = *v43;
      v106 = v44;
      if (v44 < 2 || v34 == v44)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (v13 == 1)
    {
      v106 = 1;
      v107 = 1;
      LODWORD(v108) = 1;
      v109 = ***(v11 + 16);
      v33 = 1;
      v34 = 1;
      v35 = 1;
      goto LABEL_43;
    }

    v35 = v30[1];
    if (v13 < 3)
    {
      v42 = **(v11 + 16);
      v108 = v42[1];
      v109 = *v42;
      v107 = 1;
      v106 = 1;
      v33 = 1;
      v34 = 1;
      goto LABEL_43;
    }

    v107 = 1;
    v34 = v30[2];
    if (v13 == 3)
    {
      v39 = **(v11 + 16);
      v109 = *v39;
      v108 = v39[1];
      v32 = 1;
      v33 = 1;
      v40 = v39[2];
      v106 = v40;
      if (v40 < 2 || v34 == v40)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v33 = v30[3];
      v47 = **(v11 + 16);
      v109 = *v47;
      v108 = v47[1];
      v32 = v47[3];
      v48 = v47[2];
      v106 = v48;
      if (v48 < 2 || v34 == v48)
      {
        goto LABEL_41;
      }
    }
  }

  v114 = v12;
  v50 = v31;
  v51 = v35;
  v101 = v34;
  v103 = v33;
  v52 = MTLReportFailureTypeEnabled();
  v34 = v101;
  v33 = v103;
  v35 = v51;
  v31 = v50;
  v53 = v52;
  v12 = v114;
  if (v53)
  {
    MTLReportFailure();
    v34 = v101;
    v33 = v103;
    v35 = v51;
    v31 = v50;
    v12 = v114;
  }

LABEL_41:
  if (v32 < 2 || v33 == v32)
  {
LABEL_43:
    a2 = v105;
    v46 = *(v11 + 8);
    v113 = v31;
    if (v46 > 285212703)
    {
      goto LABEL_90;
    }

LABEL_55:
    if (v46 <= 31)
    {
      if (v46 > 7)
      {
        if (v46 == 8)
        {
          v55 = 192;
          v56 = *(v12 + 8);
          v111 = v35;
          if (v56 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        }

        if (v46 == 16)
        {
          v55 = 224;
          v56 = *(v12 + 8);
          v111 = v35;
          if (v56 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        }
      }

      else
      {
        if (v46 == -1879048176)
        {
          v55 = 384;
          v56 = *(v12 + 8);
          v111 = v35;
          if (v56 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        }

        if (v46 == 4)
        {
          v55 = 160;
          v56 = *(v12 + 8);
          v111 = v35;
          if (v56 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        }
      }
    }

    else if (v46 <= 268435463)
    {
      if (v46 == 32)
      {
        v55 = 256;
        v56 = *(v12 + 8);
        v111 = v35;
        if (v56 > 285212703)
        {
          goto LABEL_141;
        }

        goto LABEL_119;
      }

      if (v46 == 64)
      {
        v55 = 288;
        v56 = *(v12 + 8);
        v111 = v35;
        if (v56 > 285212703)
        {
          goto LABEL_141;
        }

        goto LABEL_119;
      }
    }

    else
    {
      switch(v46)
      {
        case 268435464:
          v55 = 480;
          v56 = *(v12 + 8);
          v111 = v35;
          if (v56 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        case 268435472:
          v55 = 320;
          v56 = *(v12 + 8);
          v111 = v35;
          if (v56 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
        case 268435488:
          v55 = 352;
          v56 = *(v12 + 8);
          v111 = v35;
          if (v56 > 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_119;
      }
    }

LABEL_140:
    v55 = 576;
    v56 = *(v12 + 8);
    v111 = v35;
    if (v56 > 285212703)
    {
      goto LABEL_141;
    }

    goto LABEL_119;
  }

  v102 = v34;
  v104 = v33;
  v112 = v35;
  v113 = v31;
  v59 = v12;
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = v59;
  v33 = v104;
  a2 = v105;
  v35 = v112;
  v34 = v102;
  v46 = *(v11 + 8);
  if (v46 <= 285212703)
  {
    goto LABEL_55;
  }

LABEL_90:
  if (v46 <= 536870915)
  {
    if (v46 > 301989895)
    {
      if (v46 == 301989896)
      {
        v55 = 512;
        v56 = *(v12 + 8);
        v111 = v35;
        if (v56 <= 285212703)
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (v46 != 335544328)
        {
          goto LABEL_140;
        }

        v55 = 544;
        v56 = *(v12 + 8);
        v111 = v35;
        if (v56 <= 285212703)
        {
          goto LABEL_119;
        }
      }
    }

    else if (v46 == 285212704)
    {
      v55 = 416;
      v56 = *(v12 + 8);
      v111 = v35;
      if (v56 <= 285212703)
      {
        goto LABEL_119;
      }
    }

    else
    {
      if (v46 != 285212736)
      {
        goto LABEL_140;
      }

      v55 = 448;
      v56 = *(v12 + 8);
      v111 = v35;
      if (v56 <= 285212703)
      {
        goto LABEL_119;
      }
    }
  }

  else if (v46 <= 536870927)
  {
    if (v46 == 536870916)
    {
      v55 = 0;
      v56 = *(v12 + 8);
      v111 = v35;
      if (v56 > 285212703)
      {
        goto LABEL_141;
      }

      goto LABEL_119;
    }

    if (v46 != 536870920)
    {
      goto LABEL_140;
    }

    v55 = 32;
    v56 = *(v12 + 8);
    v111 = v35;
    if (v56 <= 285212703)
    {
      goto LABEL_119;
    }
  }

  else
  {
    switch(v46)
    {
      case 536870928:
        v55 = 64;
        v56 = *(v12 + 8);
        v111 = v35;
        if (v56 <= 285212703)
        {
          goto LABEL_119;
        }

        break;
      case 536870944:
        v55 = 96;
        v56 = *(v12 + 8);
        v111 = v35;
        if (v56 <= 285212703)
        {
          goto LABEL_119;
        }

        break;
      case 536870976:
        v55 = 128;
        v56 = *(v12 + 8);
        v111 = v35;
        if (v56 > 285212703)
        {
          break;
        }

LABEL_119:
        if (v56 <= 31)
        {
          if (v56 > 7)
          {
            if (v56 == 8)
            {
              v60 = v34;
              v61 = v33;
              v62 = 6;
              goto LABEL_163;
            }

            if (v56 == 16)
            {
              v60 = v34;
              v61 = v33;
              v62 = 7;
              goto LABEL_163;
            }
          }

          else
          {
            if (v56 == -1879048176)
            {
              v60 = v34;
              v61 = v33;
              v62 = 12;
              goto LABEL_163;
            }

            if (v56 == 4)
            {
              v60 = v34;
              v61 = v33;
              v62 = 5;
              goto LABEL_163;
            }
          }
        }

        else if (v56 <= 268435463)
        {
          if (v56 == 32)
          {
            v60 = v34;
            v61 = v33;
            v62 = 8;
            goto LABEL_163;
          }

          if (v56 == 64)
          {
            v60 = v34;
            v61 = v33;
            v62 = 9;
            goto LABEL_163;
          }
        }

        else
        {
          switch(v56)
          {
            case 268435464:
              v60 = v34;
              v61 = v33;
              v62 = 15;
              goto LABEL_163;
            case 268435472:
              v60 = v34;
              v61 = v33;
              v62 = 10;
              goto LABEL_163;
            case 268435488:
              v60 = v34;
              v61 = v33;
              v62 = 11;
              goto LABEL_163;
          }
        }

        goto LABEL_162;
      default:
        goto LABEL_140;
    }
  }

LABEL_141:
  if (v56 <= 536870915)
  {
    if (v56 > 301989895)
    {
      if (v56 == 301989896)
      {
        v60 = v34;
        v61 = v33;
        v62 = 16;
        goto LABEL_163;
      }

      if (v56 == 335544328)
      {
        v60 = v34;
        v61 = v33;
        v62 = 17;
        goto LABEL_163;
      }
    }

    else
    {
      if (v56 == 285212704)
      {
        v60 = v34;
        v61 = v33;
        v62 = 13;
        goto LABEL_163;
      }

      if (v56 == 285212736)
      {
        v60 = v34;
        v61 = v33;
        v62 = 14;
        goto LABEL_163;
      }
    }
  }

  else if (v56 <= 536870927)
  {
    if (v56 == 536870916)
    {
      v60 = v34;
      v61 = v33;
      v62 = 0;
      goto LABEL_163;
    }

    if (v56 == 536870920)
    {
      v60 = v34;
      v61 = v33;
      v62 = 1;
      goto LABEL_163;
    }
  }

  else
  {
    switch(v56)
    {
      case 536870928:
        v60 = v34;
        v61 = v33;
        v62 = 2;
        goto LABEL_163;
      case 536870944:
        v60 = v34;
        v61 = v33;
        v62 = 3;
        goto LABEL_163;
      case 536870976:
        v60 = v34;
        v61 = v33;
        v62 = 4;
        goto LABEL_163;
    }
  }

LABEL_162:
  v60 = v34;
  v61 = v33;
  v62 = 18;
LABEL_163:
  *(&v128 + 1) = v62 | v55;
  v63 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v64 = MEMORY[0x277CD7370];
  v65 = *(a1 + *MEMORY[0x277CD7370]);
  *&v131 = v63;
  *&v128 = v115 & 1 | (2 * (v116 & 1)) & 0xC7 | (8 * (v9 & 7u)) | (4 * (v61 == 1));
  v99 = *(a1 + *MEMORY[0x277CD7360]);
  v100 = *(a1 + *MEMORY[0x277CD7368]);
  v98 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v66 = *(a1 + *v64);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v68 = PipelineStateForMPSKey;
  v117 = a4;
  v69 = v7;
  v70 = a2;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v98, v99, v100, 0, 0}];
  v71 = *(a1 + *MEMORY[0x277CD7370]);
  MPSLibrary::ReleaseMPSKey();
  v72 = [v68 maxTotalThreadsPerThreadgroup];
  v73 = 256;
  if (v72 < 0x100)
  {
    v73 = v72;
  }

  if (v107)
  {
    if (v73 <= 1)
    {
      v73 = 1;
    }

    v74 = (__clz(v73) >> 1) ^ 0x1F;
    v75 = 1;
    v76 = 1 << v74;
    v77 = v73 >> v74;
    if (v77 <= 1)
    {
      v78 = 1;
    }

    else
    {
      v78 = v77;
    }

    v79 = v113;
    v80 = (v113 + v76 - 1) >> v74;
    v81 = v111;
    v82 = v61;
    v83 = v60 * v61;
    v84 = (v111 + v78 - 1) / v78;
  }

  else
  {
    v86 = 16;
    if (v60 < 0x10)
    {
      v86 = v60;
    }

    v87 = 64 - __clz(v86 - 1);
    if (v60 <= 1)
    {
      LOBYTE(v87) = 0;
    }

    v76 = 1 << v87;
    v88 = v73 >> v87;
    if (v88 <= 1)
    {
      v88 = 1;
    }

    v89 = (__clz(v88) >> 1) ^ 0x1F;
    v78 = 1 << v89;
    v90 = v88 >> v89;
    if (v90 <= 1)
    {
      v75 = 1;
    }

    else
    {
      v75 = v90;
    }

    v80 = (v60 + v76 - 1) >> v87;
    v81 = v111;
    v79 = v113;
    v84 = (v113 + v78 - 1) >> v89;
    v82 = v61;
    v83 = (v75 + v111 * v61 - 1) / v75;
  }

  v91 = vcvt_f32_f64(*v69);
  v92 = vcvt_f32_f64(v69[1]);
  v120[0] = v109;
  v120[1] = v108;
  v120[2] = v106;
  v120[3] = v79;
  v120[4] = v81;
  v120[5] = v60;
  v121 = v82;
  __asm { FMOV            V2.2S, #1.0 }

  v122 = v91;
  v123 = vdiv_f32(_D2, v91);
  v124 = v92;
  v125 = vdiv_f32(v92, v91);
  MPSGetUIntDivisorMagicNumber();
  v126 = v97;
  MPSSetNDArraysOnComputeEncoder(v70, v117, 4, 0, 0);
  [v70 setBytes:v120 length:80 atIndex:29];
  v119[0] = v80;
  v119[1] = v84;
  v119[2] = v83;
  v118[0] = v76;
  v118[1] = v78;
  v118[2] = v75;
  [v70 dispatchThreadgroups:v119 threadsPerThreadgroup:v118];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeResampleGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v10 = MEMORY[0x277CD7370];
  v111 = *(a1 + *MEMORY[0x277CD7370]);
  v11 = *(a1 + 176);
  v12 = *(a1 + 184);
  v123 = *(a1 + 188);
  v13 = *(a1 + 192);
  v137 = v9;
  v138 = v9;
  v135 = v9;
  v136 = v9;
  v134 = v9;
  v14 = [*(a4 + 232) graph];
  v15 = **(v14 + 56);
  if (*(*(v14 + 56) + 8) == v15)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v16 = *v15;
  v18 = *(*v15 + 8);
  v17 = *v18;
  if ((v18[1] - *v18) <= 8 || (v110 = v11, v20 = *(v16 + 24), v19 = *v20, *(v20 + 8) == *v20))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *(v17 + 8);
  v22 = *v19;
  v23 = *v21;
  if (*v21 == **v19)
  {
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_80:
    v40 = v123 == 0;
    v107 = 1;
    LODWORD(v108) = 1;
    LODWORD(v109) = 1;
    v45 = 1;
    v46 = 1;
    v47 = 1;
    v50 = *(v21 + 8);
    v121 = 1;
    if (v50 > 285212703)
    {
      goto LABEL_81;
    }

    goto LABEL_50;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v23 = *v21;
  if (!*v21)
  {
    goto LABEL_80;
  }

LABEL_6:
  v24 = **(v21 + 16);
  v25 = *v22[2];
  if (v23 > 3)
  {
    v27 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v24 + 1;
    v29 = v25 + 1;
    v30 = 0uLL;
    v31 = v23 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = 0uLL;
    do
    {
      v30 = vsubq_s64(v30, vmvnq_s8(vceqq_s64(v28[-1], v29[-1])));
      v32 = vsubq_s64(v32, vmvnq_s8(vceqq_s64(*v28, *v29)));
      v28 += 2;
      v29 += 2;
      v31 -= 4;
    }

    while (v31);
    v26 = vaddvq_s64(vaddq_s64(v32, v30));
    if (v23 == v27)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v33 = v23 - v27;
  v34 = v27;
  v35 = &v25->i64[v34];
  v36 = &v24->i64[v34];
  do
  {
    v38 = *v36++;
    v37 = v38;
    v39 = *v35++;
    if (v37 != v39)
    {
      ++v26;
    }

    --v33;
  }

  while (v33);
LABEL_15:
  if (v26 >= 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v40 = v123 == 0;
  v41 = *v22[2];
  v42 = *v41;
  if (v123)
  {
    if (v23 == 1)
    {
      v43 = v10;
      v44 = 1;
      LODWORD(v108) = 1;
      LODWORD(v109) = 1;
      v45 = 1;
      v46 = *v41;
      v47 = 1;
      v42 = 1;
      v48 = ***(v21 + 16);
      v107 = v48;
      if (v48 < 2 || v46 == v48)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v51 = v41[1];
      v52 = v23 == 3;
      if (v23 < 3)
      {
        v43 = v10;
        v59 = **(v21 + 16);
        v44 = 1;
        LODWORD(v108) = 1;
        v109 = v59[1];
        v45 = 1;
        v46 = v42;
        v47 = 1;
      }

      else
      {
        v43 = v10;
        v47 = v41[2];
        if (v52)
        {
          v59 = **(v21 + 16);
          v108 = v59[2];
          v109 = v59[1];
          v44 = 1;
          v45 = 1;
        }

        else
        {
          v45 = v41[3];
          v59 = **(v21 + 16);
          v108 = v59[2];
          v109 = v59[1];
          v44 = v59[3];
        }

        v46 = v42;
      }

      v42 = v51;
      v60 = *v59;
      v107 = v60;
      if (v60 < 2 || v46 == v60)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (v23 == 1)
    {
      v40 = 1;
      v109 = ***(v21 + 16);
      v107 = 1;
      LODWORD(v108) = 1;
      v45 = 1;
      v46 = 1;
      v47 = 1;
      v50 = *(v21 + 8);
      v121 = v42;
      if (v50 <= 285212703)
      {
        goto LABEL_50;
      }

      goto LABEL_81;
    }

    v47 = v41[1];
    v53 = v23 == 3;
    if (v23 < 3)
    {
      v58 = **(v21 + 16);
      v108 = v58[1];
      v109 = *v58;
      v40 = 1;
      v107 = 1;
      v45 = 1;
      v46 = 1;
      v50 = *(v21 + 8);
      v121 = v42;
      if (v50 <= 285212703)
      {
        goto LABEL_50;
      }

      goto LABEL_81;
    }

    v43 = v10;
    v46 = v41[2];
    if (v53)
    {
      v54 = **(v21 + 16);
      v109 = *v54;
      v55 = v54[1];
      v44 = 1;
      v45 = 1;
      v56 = v54[2];
      v107 = v56;
      LODWORD(v108) = v55;
      if (v56 < 2 || v46 == v56)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v45 = v41[3];
      v63 = **(v21 + 16);
      v109 = *v63;
      v108 = v63[1];
      v44 = v63[3];
      v64 = v63[2];
      v107 = v64;
      if (v64 < 2 || v46 == v64)
      {
        goto LABEL_47;
      }
    }
  }

  v118 = v47;
  v122 = v42;
  v112 = v46;
  v115 = v45;
  v66 = MTLReportFailureTypeEnabled();
  v46 = v112;
  v45 = v115;
  v40 = v123 == 0;
  v47 = v118;
  v42 = v122;
  if (v66)
  {
    MTLReportFailure();
    v46 = v112;
    v45 = v115;
    v40 = v123 == 0;
    v47 = v118;
    v42 = v122;
  }

LABEL_47:
  if (v44 >= 2 && v45 != v44)
  {
    v114 = v46;
    v117 = v45;
    v106 = v40;
    v120 = v47;
    v121 = v42;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v10 = v43;
    v47 = v120;
    v40 = v106;
    v46 = v114;
    v45 = v117;
    v50 = *(v21 + 8);
    if (v50 > 285212703)
    {
      goto LABEL_81;
    }

LABEL_50:
    if (v50 <= 31)
    {
      if (v50 > 7)
      {
        if (v50 == 8)
        {
          v62 = 192;
          goto LABEL_103;
        }

        if (v50 == 16)
        {
          v62 = 224;
          goto LABEL_103;
        }
      }

      else
      {
        if (v50 == -1879048176)
        {
          v62 = 384;
          goto LABEL_103;
        }

        if (v50 == 4)
        {
          v62 = 160;
          goto LABEL_103;
        }
      }
    }

    else if (v50 <= 268435463)
    {
      if (v50 == 32)
      {
        v62 = 256;
        goto LABEL_103;
      }

      if (v50 == 64)
      {
        v62 = 288;
        goto LABEL_103;
      }
    }

    else
    {
      switch(v50)
      {
        case 268435464:
          v62 = 480;
          goto LABEL_103;
        case 268435472:
          v62 = 320;
          goto LABEL_103;
        case 268435488:
          v62 = 352;
          goto LABEL_103;
      }
    }

    goto LABEL_102;
  }

  v10 = v43;
  v50 = *(v21 + 8);
  v121 = v42;
  if (v50 <= 285212703)
  {
    goto LABEL_50;
  }

LABEL_81:
  if (v50 <= 536870915)
  {
    if (v50 > 301989895)
    {
      if (v50 == 301989896)
      {
        v62 = 512;
        goto LABEL_103;
      }

      if (v50 == 335544328)
      {
        v62 = 544;
        goto LABEL_103;
      }
    }

    else
    {
      if (v50 == 285212704)
      {
        v62 = 416;
        goto LABEL_103;
      }

      if (v50 == 285212736)
      {
        v62 = 448;
        goto LABEL_103;
      }
    }
  }

  else if (v50 <= 536870927)
  {
    if (v50 == 536870916)
    {
      v62 = 0;
      goto LABEL_103;
    }

    if (v50 == 536870920)
    {
      v62 = 32;
      goto LABEL_103;
    }
  }

  else
  {
    switch(v50)
    {
      case 536870928:
        v62 = 64;
        goto LABEL_103;
      case 536870944:
        v62 = 96;
        goto LABEL_103;
      case 536870976:
        v62 = 128;
        goto LABEL_103;
    }
  }

LABEL_102:
  v62 = 576;
LABEL_103:
  v67 = *(v22 + 2);
  v116 = v45;
  v119 = v47;
  v113 = v46;
  if (v67 > 285212703)
  {
    if (v67 <= 536870915)
    {
      if (v67 > 301989895)
      {
        if (v67 == 301989896)
        {
          v68 = v40;
          v69 = 16;
          goto LABEL_147;
        }

        if (v67 == 335544328)
        {
          v68 = v40;
          v69 = 17;
          goto LABEL_147;
        }
      }

      else
      {
        if (v67 == 285212704)
        {
          v68 = v40;
          v69 = 13;
          goto LABEL_147;
        }

        if (v67 == 285212736)
        {
          v68 = v40;
          v69 = 14;
          goto LABEL_147;
        }
      }
    }

    else if (v67 <= 536870927)
    {
      if (v67 == 536870916)
      {
        v68 = v40;
        v69 = 0;
        goto LABEL_147;
      }

      if (v67 == 536870920)
      {
        v68 = v40;
        v69 = 1;
        goto LABEL_147;
      }
    }

    else
    {
      switch(v67)
      {
        case 536870928:
          v68 = v40;
          v69 = 2;
          goto LABEL_147;
        case 536870944:
          v68 = v40;
          v69 = 3;
          goto LABEL_147;
        case 536870976:
          v68 = v40;
          v69 = 4;
          goto LABEL_147;
      }
    }
  }

  else if (v67 <= 31)
  {
    if (v67 > 7)
    {
      if (v67 == 8)
      {
        v68 = v40;
        v69 = 6;
        goto LABEL_147;
      }

      if (v67 == 16)
      {
        v68 = v40;
        v69 = 7;
        goto LABEL_147;
      }
    }

    else
    {
      if (v67 == -1879048176)
      {
        v68 = v40;
        v69 = 12;
        goto LABEL_147;
      }

      if (v67 == 4)
      {
        v68 = v40;
        v69 = 5;
        goto LABEL_147;
      }
    }
  }

  else if (v67 <= 268435463)
  {
    if (v67 == 32)
    {
      v68 = v40;
      v69 = 8;
      goto LABEL_147;
    }

    if (v67 == 64)
    {
      v68 = v40;
      v69 = 9;
      goto LABEL_147;
    }
  }

  else
  {
    switch(v67)
    {
      case 268435464:
        v68 = v40;
        v69 = 15;
        goto LABEL_147;
      case 268435472:
        v68 = v40;
        v69 = 10;
        goto LABEL_147;
      case 268435488:
        v68 = v40;
        v69 = 11;
        goto LABEL_147;
    }
  }

  v68 = v40;
  v69 = 18;
LABEL_147:
  v70 = 0x2000000;
  if (!a5)
  {
    v70 = 0;
  }

  *(&v135 + 1) = v62 | v69 | v70;
  v71 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v72 = *(a1 + *v10);
  *&v138 = v71;
  *&v135 = v12 & 1 | (2 * (v123 & 1)) & 0xC7 | (8 * (v13 & 7u));
  v104 = *(a1 + *MEMORY[0x277CD7360]);
  v105 = *(a1 + *MEMORY[0x277CD7368]);
  v103 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v73 = *(a1 + *v10);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v75 = PipelineStateForMPSKey;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v103, v104, v105, 0, 0}];
  v76 = *(a1 + *v10);
  MPSLibrary::ReleaseMPSKey();
  v77 = [v75 maxTotalThreadsPerThreadgroup];
  v78 = 256;
  if (v77 < 0x100)
  {
    v78 = v77;
  }

  if (v68)
  {
    if (v78 <= 1)
    {
      v78 = 1;
    }

    v79 = (__clz(v78) >> 1) ^ 0x1F;
    v80 = 1;
    v81 = 1 << v79;
    v82 = v78 >> v79;
    if (v82 <= 1)
    {
      v83 = 1;
    }

    else
    {
      v83 = v82;
    }

    v84 = v121;
    v85 = (v121 + v81 - 1) >> v79;
    v87 = v116;
    v86 = v119;
    v88 = v113;
    v89 = v113 * v116;
    v90 = (v119 + v83 - 1) / v83;
  }

  else
  {
    v88 = v113;
    v92 = 16;
    if (v113 < 0x10)
    {
      v92 = v113;
    }

    v93 = 64 - __clz(v92 - 1);
    if (v113 <= 1)
    {
      LOBYTE(v93) = 0;
    }

    v81 = 1 << v93;
    v94 = v78 >> v93;
    if (v94 <= 1)
    {
      v94 = 1;
    }

    v95 = (__clz(v94) >> 1) ^ 0x1F;
    v83 = 1 << v95;
    v96 = v94 >> v95;
    if (v96 <= 1)
    {
      v80 = 1;
    }

    else
    {
      v80 = v96;
    }

    v85 = (v113 + v81 - 1) >> v93;
    v86 = v119;
    v84 = v121;
    v90 = (v121 + v83 - 1) >> v95;
    v87 = v116;
    v89 = (v80 + v119 * v116 - 1) / v80;
  }

  v97 = vcvt_f32_f64(*v110);
  v98 = vcvt_f32_f64(v110[1]);
  v126[0] = v109;
  v126[1] = v108;
  v126[2] = v107;
  v126[3] = v84;
  v126[4] = v86;
  v126[5] = v88;
  v127 = v87;
  __asm { FMOV            V2.2S, #1.0 }

  v128 = v97;
  v129 = vdiv_f32(_D2, v97);
  v130 = v98;
  v132 = 0;
  v133 = 0;
  v131 = 0;
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  [a2 setBytes:v126 length:80 atIndex:29];
  v125[0] = v85;
  v125[1] = v90;
  v125[2] = v89;
  v124[0] = v81;
  v124[1] = v83;
  v124[2] = v80;
  [a2 dispatchThreadgroups:v125 threadsPerThreadgroup:v124];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t MPSNDArrayResampleFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MPSCreateFunctionConstantValues();
  v6 = v5;
  v7 = *a3;
  v8 = *(a3 + 1);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vceqq_s64(v8, v9);
  v11 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v9), vceqq_s64(*(a3 + 4), v9))));
  v12 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v10, vceqq_s64(*(a3 + 3), v9)), xmmword_239B06050)) & 0xF;
  if (*a3 != -1 || v12 != 0 || (v11 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v10), *v8.i8).u8[0] & 1) == 0)
    {
      v19 = *(a3 + 1);
      [v5 setConstantValue:&v19 type:33 atIndex:126];
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

  v16 = *a2;
  v17 = _MPSNewSpecializedFunction();

  return v17;
}

uint64_t EncodeScan(char *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = [*(a4 + 232) inputTensorAtIndex:0];
  if (*(v7 + 8) != *([*(a4 + 232) outputTensorAtIndex:0] + 8) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *&a1[*MEMORY[0x277CD7370]];
  v9 = *&a1[*MEMORY[0x277CD7350]];
  v10 = [a1 operation];
  v11 = *&a1[*MEMORY[0x277CD7360]];
  if (v10 - 1 >= 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = *&a1[*MEMORY[0x277CD7368]];
  v14 = [a1 axis];
  v15 = [a1 exclusive];
  HIBYTE(v17) = [a1 reverse];
  LOBYTE(v17) = v15;
  return EncodeScanCommon(a2, a3, a4, v9, v8, v11, v13, v12, v14, v17);
}

uint64_t EncodeScanGradient(char *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = [*(a4 + 232) inputTensorAtIndex:0];
  if (*(v7 + 8) != *([*(a4 + 232) outputTensorAtIndex:0] + 8) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [a1 operation];
  if (![a1 operation] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *&a1[*MEMORY[0x277CD7370]];
  v9 = *&a1[*MEMORY[0x277CD7350]];
  v10 = [a1 operation];
  v11 = *&a1[*MEMORY[0x277CD7360]];
  if (v10 - 1 >= 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = *&a1[*MEMORY[0x277CD7368]];
  v14 = [a1 axis];
  v15 = [a1 exclusive];
  HIBYTE(v17) = [a1 reverse];
  LOBYTE(v17) = v15;
  return EncodeScanCommon(a2, a3, a4, v9, v8, v11, v13, v12, v14, v17);
}

__n128 MPSNDArrayScanBehaviors::getThreads@<Q0>(MPSNDArrayScanBehaviors *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 3);
  return result;
}

uint64_t EncodeScanCommon(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unint64_t a9, __int16 a10)
{
  v144 = *MEMORY[0x277D85DE8];
  MEMORY[0x23EE7C450](v139, a2, 0);
  v16 = [*(a3 + 232) outputTensorAtIndex:0];
  v17 = [*(a3 + 232) inputTensorAtIndex:0];
  if (a9 >= 4 && MTLReportFailureTypeEnabled())
  {
    v80 = a6;
    v84 = a9;
    MTLReportFailure();
  }

  v102 = v16;
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v137 = v18;
  v138 = v18;
  UserConstant = -1;
  v136 = v18;
  v133 = v18;
  v135 = 0;
  *&v138 = [*(a3 + 16) count] | ((*(a3 + 112) != 0) << 8) | 0x10000;
  DimensionSize = BaseTensor::GetDimensionSize(v17);
  v20 = BaseTensor::GetDimensionSize(v17);
  v100 = BaseTensor::GetDimensionSize(v17);
  v99 = BaseTensor::GetDimensionSize(v17);
  v126 = a9;
  v21 = *(a5 + 32);
  v120 = 0;
  v121 = 0;
  v122 = 0;
  (*(*v21 + 16))(&v120);
  v94 = v122;
  if (v122 * v121 * v120 == 1 && (*(a4 + 1476) & 0x20) != 0)
  {
    v104 = (*(v17 + 2) & 0xDFFFFFFF) != 64;
    v127 = DimensionSize;
    v91 = v122 * v121;
    v97 = a6;
    v95 = v20;
    if (a9)
    {
      goto LABEL_7;
    }

LABEL_12:
    v24 = v99 * v100;
    v132 = v100;
    v123 = DimensionSize;
    v25 = v20;
    v23 = DimensionSize;
    v26 = v20;
    goto LABEL_16;
  }

  v104 = 0;
  v127 = DimensionSize;
  v91 = v122 * v121;
  v97 = a6;
  v95 = v20;
  if (!a9)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (a9 == 1)
  {
    v24 = v99 * v100;
    v132 = v100;
    v123 = v20;
    v25 = v20;
    v23 = v20;
  }

  else
  {
    if (a9 == 2)
    {
      v22 = v99;
      v23 = v100;
    }

    else
    {
      v23 = v99;
      v22 = v100;
    }

    v24 = v22 * v20;
    v132 = v20;
    v123 = v23;
    v25 = v23;
  }

  v26 = DimensionSize;
LABEL_16:
  v128 = v25;
  v129 = v23;
  v103 = v24;
  v27 = *(a4 + 1480);
  v28 = BYTE2(v27) * v120;
  v29 = *(v17 + 2);
  if ((v29 >> 3) <= 4u)
  {
    v30 = 4;
  }

  else
  {
    v30 = v29 >> 3;
  }

  v89 = v17;
  v90 = v30;
  if (a9)
  {
    if (v26 >= 4)
    {
      v31 = 4;
    }

    else
    {
      v31 = v26;
    }

    v32 = (v31 - 1) | ((v31 - 1) >> 1) | (((v31 - 1) | ((v31 - 1) >> 1)) >> 2);
    v33 = v32 | (v32 >> 4) | ((v32 | (v32 >> 4)) >> 8);
    v34 = (v33 | HIWORD(v33)) + 1;
    v125 = v34;
    v130 = v34;
    v35 = v23 - 1;
    v36 = (v35 + v28) / v28;
    if (v36 >= 0x100)
    {
      v37 = 256;
    }

    else
    {
      v37 = v36;
    }

    if (v36 < 2)
    {
      v39 = 8;
    }

    else
    {
      v38 = 8;
      do
      {
        v39 = v38;
        v38 >>= 1;
      }

      while (v37 < v39);
    }

    v124 = v39;
    v93 = v121;
    v48 = (v28 * v37 + v35) / (v28 * v37);
    v49 = (v121 * v34 + DimensionSize - 1) / (v121 * v34) * v103;
    v50 = v37 >> 1;
    v51 = v49 * v48 <= 0x3FF && v50 >= v39;
    if (v51 && (v39 - 1 + v37) / v39 != 1)
    {
      do
      {
        LODWORD(v37) = v50;
        v48 = (v28 * v50 + v35) / (v28 * v50);
        v50 >>= 1;
      }

      while (v48 * v49 <= 0x3FF && v50 >= v39 && (v39 - 1 + v37) / v39 != 1);
    }

    v101 = (v121 * v34 + DimensionSize - 1) / (v121 * v34);
    v131 = v37;
    v45 = v39;
    v92 = BYTE2(v27) * v120;
    v96 = v48;
  }

  else
  {
    v40 = (v28 + v23 - 1) / v28;
    if (v40 >= 0x100)
    {
      v41 = 256;
    }

    else
    {
      v41 = v40;
    }

    if (v26 >= 4)
    {
      v42 = 4;
    }

    else
    {
      v42 = v26;
    }

    v43 = (v42 - 1) | ((v42 - 1) >> 1) | (((v42 - 1) | ((v42 - 1) >> 1)) >> 2);
    v44 = v43 | (v43 >> 4) | ((v43 | (v43 >> 4)) >> 8);
    v45 = (v44 | HIWORD(v44)) + 1;
    v125 = v45;
    v131 = v45;
    if (v40 < 2)
    {
      v47 = 8;
    }

    else
    {
      v46 = 8;
      do
      {
        v47 = v46;
        v46 >>= 1;
      }

      while (v41 < v47);
    }

    v124 = v47;
    v54 = DimensionSize - 1;
    v55 = (v28 * v41 + v54) / (v28 * v41);
    v48 = (v121 * v45 + v95 - 1) / (v121 * v45);
    v56 = v41 >> 1;
    v57 = v48 * v103 * v55 <= 0x3FF && v56 >= v47;
    if (v57 && (v47 - 1 + v41) / v47 != 1)
    {
      do
      {
        LODWORD(v41) = v56;
        v55 = (v28 * v56 + v54) / (v28 * v56);
        v56 >>= 1;
      }

      while (v55 * v48 * v103 <= 0x3FF && v56 >= v47 && (v47 - 1 + v41) / v47 != 1);
    }

    v130 = v41;
    v92 = v121;
    v93 = BYTE2(v27) * v120;
    v101 = v55;
    v96 = v55;
    v34 = v47;
  }

  v60 = *(v102 + 8);
  v113[0] = v29;
  v113[1] = v60;
  v114 = a9;
  *v115 = 0;
  *&v115[3] = a10;
  v116 = v104;
  v117 = (v27 & 0xFF0000) == 0x400000;
  v118 = v34;
  v119 = v45;
  UserConstant = MPSNDArrayScanCreateUserConstant(v113);
  v61 = (&CommonKernels)[16 * a8];
  v81 = *(a3 + 232);
  MPSLibrary::CreateUberShaderKey();
  v115[1] = 1;
  UserConstant = MPSNDArrayScanCreateUserConstant(v113);
  v82 = *(a3 + 232);
  MPSLibrary::CreateUberShaderKey();
  *&v115[1] = 256;
  UserConstant = MPSNDArrayScanCreateUserConstant(v113);
  v85 = v97;
  v86 = a7;
  v83 = *(a3 + 232);
  MPSLibrary::CreateUberShaderKey();
  v62 = v101;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey && (v98 = MPSLibrary::GetPipelineStateForMPSKey()) != 0 && (v64 = MPSLibrary::GetPipelineStateForMPSKey()) != 0)
  {
    v88 = v64;
    context = objc_autoreleasePoolPush();
    if (v96 == 1)
    {
      [a1 setComputePipelineState:{PipelineStateForMPSKey, v83, v85, v86, 0, 0}];
      MPSSetNDArraysOnComputeEncoder(a1, a3, 4, 0, 0);
      v65 = 0;
    }

    else
    {
      [a1 setComputePipelineState:{v98, v83, v85, v86, 0, 0}];
      v140 = DimensionSize;
      v141 = v95;
      v142 = v100;
      v143 = v99;
      *(&v140 + a9) = v96;
      v67 = *(v89 + 2);
      if (v67 == 64)
      {
        v68 = 64;
      }

      else
      {
        v68 = 32;
      }

      if (v67 == 536870976)
      {
        v68 = 536870976;
      }

      if ((v67 & 0x10000000) != 0)
      {
        v69 = 268435488;
      }

      else
      {
        v69 = v68;
      }

      v70 = v140;
      v71 = v141;
      v72 = v142;
      v73 = v143;
      v74 = [MEMORY[0x277CD7268] descriptorWithDataType:v69 dimensionCount:4 dimensionSizes:&v140];
      [v74 setPreferPackedRows:1];
      v65 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:MPSAutoCache::GetTempBuffer(v139 descriptor:{v71 * v70 * v72 * v73 * ((v69 >> 3) & 0xC), 0), v74}];
      if (v65)
      {
        v75 = [a2 userDictionary];
        v76 = [v75 objectForKey:@"_MPSCommandBufferRetainListKey"];
        if (!v76)
        {
          v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v75 setObject:v77 forKey:@"_MPSCommandBufferRetainListKey"];

          *&v108 = MEMORY[0x277D85DD0];
          *(&v108 + 1) = 3221225472;
          *&v109 = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke_1;
          *(&v109 + 1) = &unk_278AFFDB8;
          *&v110 = @"_MPSCommandBufferRetainListKey";
          [a2 addCompletedHandler:&v108];
          v76 = v77;
        }

        [v76 addObject:v65];
      }

      MPSSetNDArraysOnComputeEncoder(a1, a3, 4, 0, 0);
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      [a1 setBuffer:objc_msgSend(v65 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v65, 0, 4, &v108, 0), 26}];
      [a1 setBytes:&v108 length:80 atIndex:25];
      v62 = v101;
    }

    [a1 setBytes:&v123 length:44 atIndex:29];
    if (!v104)
    {
      [a1 setThreadgroupMemoryLength:v28 * v91 * v90 atIndex:0];
    }

    *&v108 = v62;
    *(&v108 + 1) = v48;
    *&v109 = v103;
    v140 = v93;
    v141 = v92;
    v142 = v94;
    [a1 dispatchThreadgroups:&v108 threadsPerThreadgroup:&v140];
    if (v96 != 1)
    {
      v129 = v96;
      [a1 setComputePipelineState:v88];
      MPSSetNDArraysOnComputeEncoder(a1, a3, 4, 0, 0);
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v108 = 0u;
      [a1 setBuffer:objc_msgSend(v65 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v65, 0, 4, &v108, 0), 28}];
      [a1 setBytes:&v108 length:80 atIndex:27];
      [a1 setBytes:&v123 length:44 atIndex:29];
      if (!v104)
      {
        [a1 setThreadgroupMemoryLength:v28 * v91 * v90 atIndex:0];
      }

      v140 = v101;
      v141 = v48;
      v142 = v103;
      v107[0] = v93;
      v107[1] = v92;
      v107[2] = v94;
      [a1 dispatchThreadgroups:&v140 threadsPerThreadgroup:v107];
    }

    objc_autoreleasePoolPop(context);
    MPSLibrary::ReleaseMPSKey();
    MPSLibrary::ReleaseMPSKey();
    MPSLibrary::ReleaseMPSKey();
    MPSLibrary::ReleaseComputeState();
    MPSLibrary::ReleaseComputeState();
    MPSLibrary::ReleaseComputeState();
    v66 = 0;
  }

  else
  {
    v66 = -1;
  }

  MPSAutoCache::~MPSAutoCache(v139);
  v78 = *MEMORY[0x277D85DE8];
  return v66;
}

uint64_t MPSNDArrayScanCreateUserConstant(uint64_t a1)
{
  v1 = *a1;
  if (*a1 > 268435471)
  {
    if (v1 <= 536870927)
    {
      if (v1 == 268435472)
      {
        v2 = 2;
        goto LABEL_21;
      }

      if (v1 == 268435488)
      {
        v2 = 1;
        goto LABEL_21;
      }

      if (v1 != 536870920)
      {
        return 0;
      }

      goto LABEL_20;
    }

    if (v1 != 536870928 && v1 != 536870944)
    {
      if (v1 == 536870976)
      {
        v2 = 4;
        goto LABEL_21;
      }

      return 0;
    }

    goto LABEL_20;
  }

  if (v1 <= 15)
  {
    if (v1 == -1879048176)
    {
      v2 = 3;
      goto LABEL_21;
    }

    if (v1 == 8)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v1 == 16 || v1 == 32)
  {
LABEL_20:
    v2 = 0;
    goto LABEL_21;
  }

  if (v1 != 64)
  {
    return 0;
  }

  v2 = 5;
LABEL_21:
  v4 = *(a1 + 4);
  if (v4 == 268435488)
  {
    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 536870976)
  {
    v6 = 64;
  }

  else
  {
    v6 = v5;
  }

  if (v4 == 268435472)
  {
    v7 = 32;
  }

  else
  {
    v7 = v6;
  }

  if (v4 == 64)
  {
    v8 = 80;
  }

  else
  {
    v8 = 0;
  }

  if (v4 == -1879048176)
  {
    v9 = 48;
  }

  else
  {
    v9 = v8;
  }

  if (v4 <= 268435471)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 | v2 | (*(a1 + 16) << 6) | (*(a1 + 17) << 7);
  v12 = *(a1 + 24);
  if (v12 >= 2)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      ++v15;
      v14 += 0x8000;
    }

    while (v12 >> v15);
    v13 = v14 & 0x18000;
  }

  else
  {
    v13 = 0;
  }

  v16 = v11 | (*(a1 + 18) << 8);
  v17 = *(a1 + 8);
  v18 = *(a1 + 19);
  v19 = *(a1 + 20);
  v20 = *(a1 + 21);
  v21 = *(a1 + 22);
  v22 = *(a1 + 32);
  if (v22 >= 2)
  {
    v24 = 0;
    v25 = 1;
    do
    {
      ++v25;
      v24 += 0x20000;
    }

    while (v22 >> v25);
    v23 = v24 & 0x60000;
  }

  else
  {
    v23 = 0;
  }

  v26 = v16 & 0xFFFFF9FF | ((v17 & 3) << 9);
  v27 = v18 << 11;
  v28 = v19 << 12;
  v29 = v20 << 13;
  v30 = v21 << 14;
  v31 = (v1 >> 10) & 0x80000;
  v32 = v1 >> 3;
  if (v32)
  {
    if (v32)
    {
      v35 = 0;
    }

    else
    {
      v33 = 0x400000;
      do
      {
        v34 = v32;
        v32 >>= 1;
        v33 += 0x100000;
      }

      while ((v34 & 2) == 0);
      v35 = v33 & 0x300000;
    }
  }

  else
  {
    v35 = 3145728;
  }

  return v27 | v31 | v26 | v28 | v29 | v30 | v13 | v23 | v35;
}

uint64_t ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke_1(uint64_t a1, void *a2)
{
  v3 = [a2 userDictionary];
  v4 = *(a1 + 32);

  return [v3 removeObjectForKey:v4];
}

uint64_t IsNDArrayTransposed(int a1, int *a2, int8x8_t a3)
{
  if (a3.u8[0] > 3u || a3.u8[1] > 3u || (a3.u8[2] <= 3u ? (v3 = a3.u8[3] > 3u) : (v3 = 1), v3))
  {
    result = 1;
    v5 = -1;
    goto LABEL_9;
  }

  v5 = a1;
  v6 = vceq_s16((*&vzip1_s8(a3, a3) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  if (vminv_u16(v6))
  {
    result = 0;
    goto LABEL_9;
  }

  *a2 = -1;
  if (a1 == 1)
  {
    result = 1;
    if ((v6.i8[6] & 1) == 0 || a3.u8[2] != 1 || a3.u8[0] != 2 || a3.i8[1])
    {
      return result;
    }

    v5 = 0;
LABEL_9:
    *a2 = v5;
    return result;
  }

  if (a1)
  {
    return 1;
  }

  result = 1;
  if ((v6.i8[6] & 1) != 0 && !a3.i8[2])
  {
    v5 = a3.u8[0];
    if (a3.u8[0] == 1 && a3.u8[1] == 2)
    {
      goto LABEL_9;
    }
  }

  return result;
}

BOOL IsNDArraySliced(const MPSNDArray *a1, BOOL *a2)
{
  if (a2)
  {
    return *a2 && (*(&a1->super.isa + *MEMORY[0x277CD7410]) != *(&a1->super.isa + *MEMORY[0x277CD73D0]) || *(&a1->super.isa + *MEMORY[0x277CD7418])) || a2[1] && (*(&a1->super.isa + *MEMORY[0x277CD7410] + 4) != *(&a1->super.isa + *MEMORY[0x277CD73D0] + 4) || *(&a1->super.isa + *MEMORY[0x277CD7418] + 4)) || a2[2] && (*(&a1[1].super.isa + *MEMORY[0x277CD7410]) != *(&a1[1].super.isa + *MEMORY[0x277CD73D0]) || *(&a1[1].super.isa + *MEMORY[0x277CD7418])) || a2[3] && (*(&a1[1].super.isa + *MEMORY[0x277CD7410] + 4) != *(&a1[1].super.isa + *MEMORY[0x277CD73D0] + 4) || *(&a1[1].super.isa + *MEMORY[0x277CD7418] + 4));
  }

  v3 = *(&a1->super.isa + *MEMORY[0x277CD7410]);
  v4 = *(&a1->super.isa + *MEMORY[0x277CD73D0]);
  if (v3 != v4)
  {
    return 1;
  }

  v5 = (a1 + *MEMORY[0x277CD7418]);
  if (*v5 || DWORD1(v3) != DWORD1(v4))
  {
    return 1;
  }

  if (v5[1] || DWORD2(v3) != DWORD2(v4))
  {
    return 1;
  }

  if (v5[2] || HIDWORD(v3) != HIDWORD(v4))
  {
    return 1;
  }

  return v5[3] != 0;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorPreG13::IsConvolutionSupported(uint64_t a1, uint64_t a2)
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
  LODWORD(v5) = (*(**(v5 + 32) + 24))(*(v5 + 32));
  v7 = (*(**(v6 + 32) + 24))(*(v6 + 32));
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Prefix linking not supported by PreG13 kernels. Falling back to generic implementation\n", v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
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
    while (1)
    {
      v17 = *v11;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v13);
      v19 = *v11;
      if (v17 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v15 = *(v19 + 76);
      if (v19 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v13) + 32))
      {
        goto LABEL_16;
      }

LABEL_13:
      if (++v11 == v12)
      {
        goto LABEL_17;
      }
    }

    if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v13) + 32))
    {
      goto LABEL_13;
    }

LABEL_16:
    v20 = *v11++;
    v16 = *(v20 + 76);
  }

  while (v11 != v12);
LABEL_17:
  if (v16 == -1)
  {
    goto LABEL_23;
  }

  if ((v14 & 1) == 0)
  {
    if (v15 != -1)
    {
      v21 = *(v3 + 16);
      if (*(a2 + 120) == 1)
      {
        goto LABEL_21;
      }

LABEL_26:
      v22 = [v21 objectAtIndexedSubscript:v15];
      goto LABEL_27;
    }

LABEL_23:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v15 = -1;
  v21 = *(v3 + 16);
  if (*(a2 + 120) != 1)
  {
    goto LABEL_26;
  }

LABEL_21:
  v22 = *(v3 + 112);
LABEL_27:
  v23 = [v21 objectAtIndexedSubscript:v16];
  v24 = *MEMORY[0x277CD7408];
  v25 = *(v22 + v24);
  v26 = *MEMORY[0x277CD73F0];
  v27 = *(v22 + v26);
  if (v27 >= 0x10)
  {
    v28 = 16;
  }

  else
  {
    v28 = *(v22 + v26);
  }

  if (v27 < 2)
  {
    v39 = 1;
LABEL_37:
    if ((v39 ^ (-1 << v28)) != 0xFFFFFFFF)
    {
      v40 = (v22 + *MEMORY[0x277CD7428]);
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
        v102 = v48;
        v103 = v47;
        v104 = v46;
        v105 = v45;
        v106 = v44;
        v107 = v43;
        v108 = v42;
        v109 = v41;
        v49 = *(&v102 + (v28 & 0xF));
        if (v25 != v49 && v49 != 0)
        {
          return 0;
        }

        v25 *= *(v22 + *MEMORY[0x277CD73D0] + 4 * (v28++ & 0xF));
      }

      while (v28 != 16);
    }

LABEL_45:
    v51 = *(v23 + v24);
    v52 = *(v23 + v26);
    v53 = 16;
    if (v52 < 0x10)
    {
      v53 = v52;
    }

    if (v52 >= 2)
    {
      v54 = (v23 + *MEMORY[0x277CD7428]);
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
        v94 = v62;
        v95 = v61;
        v96 = v60;
        v97 = v59;
        v98 = v58;
        v99 = v57;
        v100 = v56;
        v101 = v55;
        if (v51 != *(&v94 + (v63 & 0xF)))
        {
          return 0;
        }

        v51 *= *(v23 + *MEMORY[0x277CD73D0] + 4 * (v63 & 0xF));
        v93 = *(v23 + *MEMORY[0x277CD73D8]);
        v64 |= 1 << *(&v93 | v63++ & 0xF);
        if (v53 == v63)
        {
          if (v52 <= 0xF)
          {
            goto LABEL_54;
          }

          goto LABEL_62;
        }
      }
    }

    v64 = 1;
LABEL_54:
    if ((v64 ^ (-1 << v53)) != 0xFFFFFFFF)
    {
      v65 = (v23 + *MEMORY[0x277CD7428]);
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
        v85 = v73;
        v86 = v72;
        v87 = v71;
        v88 = v70;
        v89 = v69;
        v90 = v68;
        v91 = v67;
        v92 = v66;
        v74 = *(&v85 + (v53 & 0xF));
        if (v51 != v74 && v74 != 0)
        {
          return 0;
        }

        v51 *= *(v23 + *MEMORY[0x277CD73D0] + 4 * (v53++ & 0xF));
      }

      while (v53 != 16);
    }

LABEL_62:
    v76 = *(v22 + *MEMORY[0x277CD73D8]);
    if (v76 <= 3u && BYTE1(v76) <= 3u && BYTE2(v76) <= 3u && BYTE3(v76) <= 3u)
    {
      v79 = *(a2 + 8);
      v80 = vceq_s16((*&vzip1_s8(*&v76, *&v76) & 0xFF00FF00FF00FFLL), 0x3000200010000);
      if ((vminv_u16(v80) & 1) == 0)
      {
        if (v79 == 1)
        {
          if ((v80.i8[6] & 1) == 0)
          {
            goto LABEL_69;
          }

          v83 = BYTE2(v76) == 1 && v76 == 2;
          if (!v83 || BYTE1(v76) != 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v79 || (v80.i8[6] & 1) == 0)
          {
            goto LABEL_69;
          }

          v81 = !BYTE2(v76) && v76 == 1;
          if (!v81 || BYTE1(v76) != 2)
          {
            goto LABEL_69;
          }
        }

        return 1;
      }

      if (v79 < 2)
      {
        return 1;
      }
    }

LABEL_69:
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Only NCHW/NHWC data format supported for source by PreG13 kernels. Falling back to generic implementation\n", v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
    return 0;
  }

  v29 = (v22 + *MEMORY[0x277CD7428]);
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
    v111 = v37;
    v112 = v36;
    v113 = v35;
    v114 = v34;
    v115 = v33;
    v116 = v32;
    v117 = v31;
    v118 = v30;
    if (v25 != *(&v111 + (v38 & 0xF)))
    {
      return 0;
    }

    v25 *= *(v22 + *MEMORY[0x277CD73D0] + 4 * (v38 & 0xF));
    v110 = *(v22 + *MEMORY[0x277CD73D8]);
    v39 |= 1 << *(&v110 | v38++ & 0xF);
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

uint64_t MPSNDArrayConvolutionDeviceBehaviorPreG13::GetKernelDispatchParametersForKey@<X0>(MPSKernel *a1@<X1>, void *a2@<X0>, unsigned int *a3@<X2>, int a4@<W3>, int a5@<W4>, unsigned __int16 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a5;
  v9 = 3;
  if (a1[2].super.isa == 1)
  {
    if (a1[2]._options == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }
  }

  v10 = a3[3];
  v11 = v10 / a3[6];
  if (a6)
  {
    v12 = *a6;
    v13 = a6[1];
    v14 = a6[2];
    v15 = a6[3];
    v16 = a6[4];
    v17 = a6[5];
    LODWORD(v18) = a6[6];
    goto LABEL_9;
  }

  v19 = a2[9];
  if (v19)
  {
    v12 = *v19;
    v13 = v19[1];
    v14 = v19[2];
    v15 = v19[3];
    v16 = v19[4];
    v17 = v19[5];
    LODWORD(v18) = v19[6];
    goto LABEL_9;
  }

  v25 = *a3;
  v26 = a3[2];
  v27 = a2[10];
  if (v27)
  {
    v28 = a2[7];
    v29 = a2[2 * a5 + 3 + a4];
    v30 = (v29 + 12);
    while (1)
    {
      v31 = *v28 == *a3 && v28[1] == *(a3 + 1);
      if (v31 && v28[2] == *(a3 + 2))
      {
        break;
      }

      v28 += 3;
      v30 += 7;
      if (!--v27)
      {
        goto LABEL_29;
      }
    }

    if (v29)
    {
      v33 = a1;
      MPSKernel_LogInfo(a1, 3uLL, "Optimal parameter set found in PreG13 table\n");
      a1 = v33;
      v12 = *(v30 - 3);
      v13 = *(v30 - 2);
      v14 = *(v30 - 1);
      v15 = *v30;
      v16 = v30[1];
      v17 = v30[2];
      LODWORD(v18) = v30[3];
      v7 = a5;
      goto LABEL_9;
    }
  }

LABEL_29:
  v36 = a3[1] * v25;
  v37 = a1;
  MPSKernel_LogInfo(a1, 3uLL, "Optimal parameter set not found in PreG13 table\n");
  if (a5)
  {
    v38 = v36;
    v39 = a4;
    if (a4 != 1)
    {
      if (v10 >= 0x20)
      {
        v50 = 16;
      }

      else
      {
        v50 = 8;
      }

      if (v10 >= 0x20)
      {
        v51 = 2;
      }

      else
      {
        v51 = 8;
      }

      if (v10 >= 0x20)
      {
        v52 = 2;
      }

      else
      {
        v52 = 5;
      }

      v53 = v36 >> 4;
      v54 = v10 < 0x20 && v53 > 0x270;
      if (v54)
      {
        v47 = 4;
      }

      else
      {
        v47 = 16;
      }

      if (v53 <= 0x270)
      {
        v46 = 8;
      }

      else
      {
        v46 = v50;
      }

      if (v53 <= 0x270)
      {
        v49 = 4;
      }

      else
      {
        v49 = v51;
      }

      if (v53 <= 0x270)
      {
        v42 = 1;
      }

      else
      {
        v42 = v52;
      }

      v7 = a5;
      v41 = a3;
      a1 = v37;
      if ((-1431655765 * v25) < 0x55555556)
      {
        v42 = 3;
      }

      else if ((v25 & 3) != 0)
      {
        if ((-858993459 * v25) < 0x33333334)
        {
          v42 = 5;
        }

        else
        {
          HIDWORD(v55) = -1431655765 * v25;
          LODWORD(v55) = -1431655765 * v25;
          if ((v55 >> 1) < 0x2AAAAAAB)
          {
            v42 = 6;
          }
        }
      }

      else
      {
        v42 = 4;
      }

      if (v38 > 0x190)
      {
        v48 = 8;
      }

      else
      {
        v49 = 4;
        if (v10 >= 0x200)
        {
          v47 = 16;
        }

        else
        {
          v47 = 4;
        }

        if (v10 > 0x400)
        {
          v48 = 1;
        }

        else
        {
          v48 = 2;
        }

        v46 = 8;
      }

      if ((*(&v37->super.isa + *MEMORY[0x277CD7350]))[368] <= 17)
      {
        v59 = 64;
      }

      else
      {
        v59 = 32;
      }

      if (v47 * v42 > v59)
      {
        v60 = 1;
        do
        {
          v61 = v60 & 1;
          v60 ^= 1u;
          v47 >>= v60 & 1;
          v42 -= v61;
        }

        while (v42 * v47 > v59);
      }

      goto LABEL_123;
    }

    HIDWORD(v40) = -1431655765 * v25;
    LODWORD(v40) = -1431655765 * v25;
    v7 = a5;
    v41 = a3;
    a1 = v37;
    if ((v40 >> 1) < 0x2AAAAAAB)
    {
      v42 = 6;
    }

    else if ((-858993459 * v25) < 0x33333334)
    {
      v42 = 5;
    }

    else if ((v25 & 3) != 0)
    {
      if ((-1431655765 * v25) >= 0x55555556)
      {
        v42 = 2;
      }

      else
      {
        v42 = 3;
      }
    }

    else
    {
      v42 = 4;
    }

    v56 = 1;
    LODWORD(v18) = 4;
    v47 = 8;
    if (v38 <= 0x64)
    {
      if (v10 >= 0x200)
      {
        v47 = 8;
      }

      else
      {
        v47 = 4;
      }

      if (v10 > 0x400)
      {
        v48 = 1;
      }

      else
      {
        v48 = 2;
      }

      v49 = 8;
      v46 = 4;
LABEL_123:
      if (v38 <= 4)
      {
        LODWORD(v18) = 8;
      }

      else
      {
        LODWORD(v18) = v49;
      }

      if (v38 <= 4)
      {
        v58 = 1;
      }

      else
      {
        v58 = v46;
      }

      if (v38 <= 4)
      {
        v56 = 8;
      }

      else
      {
        v56 = v48;
      }

      if (v38 <= 4)
      {
        v42 = 1;
      }

      goto LABEL_134;
    }

    v58 = 8;
  }

  else
  {
    v39 = a4;
    if (a4 == 1)
    {
      v43 = 40;
    }

    else
    {
      v43 = 48;
    }

    if ((*(a2[2] + 1472) - 13) >= 3)
    {
      v44 = v43;
    }

    else
    {
      v44 = 48;
    }

    if (v26 >= 0x11)
    {
      v45 = 3;
    }

    else
    {
      v45 = v9;
    }

    if ((88 - v44) >> 4 < v45)
    {
      v45 = (88 - v44) >> 4;
    }

    v42 = 5 - v45;
    v54 = 80 - 16 * v45 > v44;
    v46 = 8;
    if (v54)
    {
      v47 = 8;
    }

    else
    {
      v47 = 16;
    }

    v48 = 4;
    v49 = 2;
    v38 = v36;
    if (v36 < 0x65)
    {
      v7 = 0;
      v41 = a3;
      a1 = v37;
      goto LABEL_123;
    }

    if (v36 >= 0x191)
    {
      v56 = 1;
    }

    else
    {
      v56 = 2;
    }

    if (v36 < 0x191 || a4 == 1)
    {
      LODWORD(v18) = 2;
    }

    else
    {
      LODWORD(v18) = 4;
    }

    v58 = 16;
    v7 = 0;
    v41 = a3;
    a1 = v37;
  }

LABEL_134:
  if (((v47 - 1) & v11) != 0)
  {
    v62 = v47 - ((v47 - 1) & v11);
  }

  else
  {
    v62 = 0;
  }

  if (v39 == 1)
  {
    v63 = 4;
  }

  else
  {
    v63 = 8;
  }

  if (v63 >= v47)
  {
    v63 = v47;
  }

  if (v47 >= 5 && (v62 / v11) > 0.1)
  {
    do
    {
      v64 = v47;
      v47 >>= 1;
      if (((v47 - 1) & v11) != 0)
      {
        v65 = v47 - ((v47 - 1) & v11);
      }

      else
      {
        v65 = 0;
      }
    }

    while (v64 >= 0xA && (v65 / v11) > 0.1);
  }

  if (v63 >= v47)
  {
    v14 = v47;
  }

  else
  {
    v14 = v63;
  }

  v66 = v47 + v11;
  if (v47 * v18 >= v66)
  {
    while (1)
    {
      v68 = v18;
      v18 = v18 >> 1;
      v58 *= 2;
      if (v68 < 4)
      {
        break;
      }

      v67 = v18;
      if (v47 * v18 < v66)
      {
        goto LABEL_158;
      }
    }

    v67 = v18;
  }

  else
  {
    v67 = v18;
  }

  do
  {
LABEL_158:
    v69 = v47;
    if (v47 < 5)
    {
      break;
    }

    v70 = v67 * v47;
    v47 >>= 1;
  }

  while (v70 >= v67 + v11);
  do
  {
    v13 = v69;
    if (v69 < 2 * v11)
    {
      break;
    }

    v69 >>= 1;
  }

  while (v13 > 1);
  while (v11 % v14)
  {
    if (v14 < 2)
    {
      goto LABEL_168;
    }

LABEL_164:
    v14 >>= 1;
  }

  if (v14 >= 2 && v13 % v14)
  {
    goto LABEL_164;
  }

  do
  {
LABEL_168:
    v17 = v58;
    if (v58 < 2)
    {
      break;
    }

    v71 = v42 * v58--;
  }

  while (v71 >= v42 + v38);
  do
  {
    v15 = v42;
    if (v42 < 2)
    {
      break;
    }

    v72 = v17 * v42--;
  }

  while (v72 >= *v41 + v17);
  do
  {
    v74 = v56;
    v75 = v26 / v56;
    if (v56 < 2)
    {
      break;
    }

    v73 = v26 % v56;
    v56 >>= 1;
  }

  while (v73);
  if ((v75 & 3) != 0)
  {
    if (-1431655765 * v75 < 0x55555556)
    {
      v12 = 3;
    }

    else if (v75)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 4;
  }

  v76 = v12 + v26;
  do
  {
    v16 = v74;
    if (v74 < 2)
    {
      break;
    }

    v77 = v12 * v74;
    v74 >>= 1;
  }

  while (v77 >= v76);
  if (!v7 && v16 >= 2)
  {
    v17 = 0x20 / v16;
  }

  if (v17 * v16 >= 0x41)
  {
    v17 = 0x40 / v16;
  }

LABEL_9:
  result = MPSKernel_LogInfo(a1, 3uLL, "Parameters: [nip=%d,Nop=%d,nop=%d,P=%d,C=%d,Pth=%d,Oth=%d]\n", v12, v13, v14, v15, v16, v17, v18);
  v21 = a3[6] * ((v18 + (v11 + v13 - 1) / v13 - 1) / v18);
  v22 = v17 + a3[1] * ((v15 + *a3 - 1) / v15) * a3[7] - 1;
  *a7 = v12;
  *(a7 + 4) = v13;
  *(a7 + 8) = v14;
  *(a7 + 12) = v15;
  *(a7 + 16) = v16;
  *(a7 + 20) = v17;
  *(a7 + 24) = xmmword_239B0C120;
  *(a7 + 24) = v18;
  *(a7 + 40) = v22 / v17;
  *(a7 + 48) = v21;
  if (v7)
  {
    v23 = v16;
  }

  else
  {
    v23 = v17;
  }

  if (v7)
  {
    v24 = v17;
  }

  else
  {
    v24 = v16;
  }

  *(a7 + 56) = v23;
  *(a7 + 64) = v24;
  *(a7 + 72) = v18;
  return result;
}

uint64_t MPSNDArrayConvPreG13FunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v16 = *(a2 + 17);
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:&v16 type:33 atIndex:115];
  v6 = *a3;
  v7 = *(a3 + 1);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = vceqq_s64(v7, v8);
  if (*a3 != -1 || ((v10 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v8), vceqq_s64(*(a3 + 4), v8)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v9, vceqq_s64(*(a3 + 3), v8)), xmmword_239B06050)) & 0xF) == 0) ? (v11 = v10 == 0) : (v11 = 0), v11 ? (v12 = a3[5] == -1) : (v12 = 0), !v12))
  {
    if ((vuzp1_s16(vmovn_s64(v9), *v7.i8).u8[0] & 1) == 0)
    {
      v17 = *(a3 + 1);
      [v5 setConstantValue:&v17 type:33 atIndex:126];
      v6 = *a3;
    }

    if (v6 != -1)
    {
      v17 = v6;
      [v5 setConstantValue:&v17 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v17 = a3[2];
      [v5 setConstantValue:&v17 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v17 = a3[3];
      [v5 setConstantValue:&v17 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v17 = a3[4];
      [v5 setConstantValue:&v17 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v17 = a3[5];
      [v5 setConstantValue:&v17 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v17 = a3[8];
      [v5 setConstantValue:&v17 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v17 = a3[9];
      [v5 setConstantValue:&v17 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v17 = a3[6];
      [v5 setConstantValue:&v17 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v17 = a3[7];
      [v5 setConstantValue:&v17 type:33 atIndex:116];
    }
  }

  v13 = *a2;
  v14 = _MPSNewSpecializedFunction();

  return v14;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorPreG13::EncodeNDArrayConvolution(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((MPSNDArrayConvolutionDeviceBehaviorPreG13::IsConvolutionSupported(a1, a4) & 1) == 0)
  {

    return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolution(a1, a2, a3, a4);
  }

  v178 = a1;
  v150 = *a4;
  v8 = *(a4 + 8);
  v180 = *(a4 + 12);
  v9 = *(a4 + 16);
  v183 = *(a4 + 24);
  v185 = *(a4 + 32);
  v167 = *(a4 + 64);
  v168 = *(a4 + 48);
  v186 = *(a4 + 40);
  v187 = *(a4 + 80);
  v174 = *(a4 + 88);
  v172 = *(a4 + 96);
  v11 = *(a4 + 128);
  v10 = *(a4 + 136);
  v148 = *(v10 + *MEMORY[0x277CD7368]);
  v12 = &OBJC_IVAR___MPSNDArrayConvolution2D__ndArrayIdentity;
  v169 = a4;
  v188 = *(a4 + 120);
  if (*(a4 + 120))
  {
    v12 = &OBJC_IVAR___MPSNDArrayConvolution2DGradientWithInput__ndArrayIdentity;
  }

  v190 = *(v10 + *v12);
  v149 = *(v10 + *MEMORY[0x277CD7360]);
  [v190 setLabel:?];
  v192 = [*(v11 + 232) inputTensorAtIndex:1];
  v147 = [*(v11 + 16) count];
  v182 = v11;
  v13 = [*(v11 + 232) graph];
  v14 = *(v13 + 64);
  v15 = *v14;
  v16 = v14[1];
  v162 = v8;
  if (*v14 == v16)
  {
    v22 = -1;
    v27 = v182;
    v28 = v188;
    goto LABEL_20;
  }

  v17 = v13;
  v18 = a3;
  v19 = v9;
  v20 = a2;
  v21 = -1;
  v22 = -1;
  do
  {
    while (1)
    {
      v23 = *v15;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v17);
      v25 = *v15;
      if (v23 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v21 = *(v25 + 76);
      if (v25 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v17) + 32))
      {
        goto LABEL_10;
      }

LABEL_7:
      if (++v15 == v16)
      {
        goto LABEL_11;
      }
    }

    if (v25 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v17) + 32))
    {
      goto LABEL_7;
    }

LABEL_10:
    v26 = *v15++;
    v22 = *(v26 + 76);
  }

  while (v15 != v16);
LABEL_11:
  a2 = v20;
  v9 = v19;
  if (v22 == -1)
  {
    v27 = v182;
    a3 = v18;
    v8 = v162;
    v28 = v188;
    goto LABEL_20;
  }

  v27 = v182;
  v28 = v188;
  if (v188)
  {
    v21 = -1;
    a3 = v18;
    v8 = v162;
    goto LABEL_23;
  }

  a3 = v18;
  v8 = v162;
  if (v21 == -1)
  {
LABEL_20:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v21 = -1;
  }

LABEL_23:
  v30 = [*(v27 + 16) objectAtIndexedSubscript:v22];
  v145 = *(*(v27 + 8) + 80 * v22 + 64);
  if (v28)
  {
    v31 = *(v27 + 112);
    v32 = v27 + 32;
  }

  else
  {
    v31 = [*(v27 + 16) objectAtIndexedSubscript:v21];
    v32 = *(v27 + 8) + 80 * v21;
  }

  v33 = v178;
  v146 = *(v32 + 64);
  v144 = *(v27 + 208);
  v161 = (*(*v178 + 48))(v178, v31, v30, v169);
  if (v161)
  {
    v34 = *(v192 + 16);
    v198 = 0;
    *v199 = 0;
    __p = 0;
    v36 = *v34;
    v35 = v34[1];
    if (v35 != v36)
    {
      if (((v35 - v36) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_407;
    }

    v33 = v178;
    v30 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(v178, v190, a3, a2, v30, &__p, v180, 0);
    if (__p)
    {
      v198 = __p;
      operator delete(__p);
    }
  }

  if (!v30)
  {
    return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolution(v33, a2, a3, v169);
  }

  if (v28)
  {
    v37 = 2;
  }

  else
  {
    v37 = 0;
  }

  v38 = [*(v27 + 232) inputTensorAtIndex:v37];
  v176 = [*(v27 + 232) outputTensorAtIndex:0];
  v39 = *&v31[*MEMORY[0x277CD73D8]];
  if (v39 > 3u || BYTE1(v39) > 3u)
  {
    goto LABEL_43;
  }

  if (BYTE2(v39) > 3u || BYTE3(v39) > 3u)
  {
    goto LABEL_43;
  }

  v66 = vceq_s16((*&vzip1_s8(*&v39, *&v39) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  v191 = v8;
  if (vminv_u16(v66))
  {
    goto LABEL_45;
  }

  if (v8 == 1)
  {
    v191 = -1;
    if (v66.i8[6])
    {
      v140 = BYTE2(v39) == 1 && v39 == 2;
      if (v140 && BYTE1(v39) == 0)
      {
        v191 = 0;
      }
    }

    goto LABEL_45;
  }

  if (v8)
  {
LABEL_43:
    v41 = -1;
    goto LABEL_44;
  }

  v191 = -1;
  if ((v66.i8[6] & 1) != 0 && !BYTE2(v39) && v39 == 1 && BYTE1(v39) == 2)
  {
    v41 = 1;
LABEL_44:
    v191 = v41;
  }

LABEL_45:
  if (v28)
  {
    v151 = v168.i64[0] * v174 + v172;
    v143 = v168.i64[1] * SHIDWORD(v174) + SHIDWORD(v172);
    v175 = v9;
    v9 = v183;
  }

  else
  {
    v151 = v174;
    v143 = SHIDWORD(v174);
    v175 = v183;
  }

  v184 = *(v192 + 8);
  v42 = *(v176 + 8);
  v165 = *(v38 + 8);
  if (v165 != -1879048176 && v165 != 268435472 && v165 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v184 != -1879048176 && v184 != 268435472 && v184 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v42 != -1879048176 && v42 != 268435472 && v42 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v191 >= 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v38 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v192 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v176 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v43 = *(v38 + 16);
  v45 = *v43;
  v44 = v43[1];
  if (v44 != v45)
  {
    if (((v44 - v45) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_407:
    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v55 = *(v192 + 16);
  v57 = *v55;
  v56 = v55[1];
  if (v56 != v57)
  {
    if (((v56 - v57) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v58 = *(v176 + 16);
  v60 = *v58;
  v59 = v58[1];
  if (v59 != v60)
  {
    if (((v59 - v60) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v8)
  {
    v46 = 0;
    v47 = 0;
    v48 = 8;
    v49 = 8;
    v50 = 16;
    v51 = 16;
    if (!v180)
    {
      goto LABEL_81;
    }

    goto LABEL_76;
  }

  v49 = 0;
  v48 = 0;
  v47 = 16;
  v46 = 16;
  v50 = 8;
  v51 = 16;
  if (v180)
  {
LABEL_76:
    v52 = 24;
    v53 = 8;
    v54 = 0;
    goto LABEL_82;
  }

LABEL_81:
  v54 = 16;
  v51 = 8;
  v53 = 24;
  v52 = 0;
LABEL_82:
  v155 = *v47;
  v160 = *v48;
  v164 = *v46;
  v173 = *v49;
  v154 = *v50;
  v181 = *v50;
  v171 = MEMORY[0x18];
  v152 = MEMORY[0x18];
  v61 = *v52;
  v62 = *v51 * v187;
  v63 = *v53;
  v156 = *v53;
  v158 = *v54;
  if (v188)
  {
    if (v62 != v175 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v61 != v9 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_406;
    }
  }

  else
  {
    if (v62 != v9 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v61 != v175 && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
LABEL_406:
      MTLReportFailure();
    }
  }

  if (v156 != v186 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v158 != v185 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v152 != v171 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v155 != v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v164 != v175 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v64 = *(v38 + 8);
  if (v64 > 285212703)
  {
    if (v64 <= 536870915)
    {
      if (v64 > 301989895)
      {
        if (v64 == 301989896)
        {
          v65 = 512;
        }

        else
        {
          if (v64 != 335544328)
          {
            goto LABEL_145;
          }

          v65 = 544;
        }
      }

      else if (v64 == 285212704)
      {
        v65 = 416;
      }

      else
      {
        if (v64 != 285212736)
        {
          goto LABEL_145;
        }

        v65 = 448;
      }
    }

    else if (v64 <= 536870927)
    {
      if (v64 == 536870916)
      {
        v65 = 0;
      }

      else
      {
        if (v64 != 536870920)
        {
          goto LABEL_145;
        }

        v65 = 32;
      }
    }

    else
    {
      switch(v64)
      {
        case 536870928:
          v65 = 64;
          break;
        case 536870944:
          v65 = 96;
          break;
        case 536870976:
          v65 = 128;
          break;
        default:
          goto LABEL_145;
      }
    }
  }

  else if (v64 <= 31)
  {
    if (v64 > 7)
    {
      if (v64 == 8)
      {
        v65 = 192;
      }

      else
      {
        if (v64 != 16)
        {
          goto LABEL_145;
        }

        v65 = 224;
      }
    }

    else if (v64 == -1879048176)
    {
      v65 = 384;
    }

    else
    {
      if (v64 != 4)
      {
        goto LABEL_145;
      }

      v65 = 160;
    }
  }

  else if (v64 <= 268435463)
  {
    if (v64 == 32)
    {
      v65 = 256;
    }

    else
    {
      if (v64 != 64)
      {
        goto LABEL_145;
      }

      v65 = 288;
    }
  }

  else
  {
    switch(v64)
    {
      case 268435464:
        v65 = 480;
        break;
      case 268435472:
        v65 = 320;
        break;
      case 268435488:
        v65 = 352;
        break;
      default:
LABEL_145:
        v65 = 576;
        break;
    }
  }

  v67 = *(v192 + 8);
  if (v67 > 285212703)
  {
    if (v67 <= 536870915)
    {
      if (v67 > 301989895)
      {
        if (v67 == 301989896)
        {
          v68 = 0x4000;
        }

        else
        {
          if (v67 != 335544328)
          {
            goto LABEL_189;
          }

          v68 = 17408;
        }
      }

      else if (v67 == 285212704)
      {
        v68 = 13312;
      }

      else
      {
        if (v67 != 285212736)
        {
          goto LABEL_189;
        }

        v68 = 14336;
      }
    }

    else if (v67 <= 536870927)
    {
      if (v67 == 536870916)
      {
        v68 = 0;
      }

      else
      {
        if (v67 != 536870920)
        {
          goto LABEL_189;
        }

        v68 = 1024;
      }
    }

    else
    {
      switch(v67)
      {
        case 536870928:
          v68 = 2048;
          break;
        case 536870944:
          v68 = 3072;
          break;
        case 536870976:
          v68 = 4096;
          break;
        default:
          goto LABEL_189;
      }
    }
  }

  else if (v67 <= 31)
  {
    if (v67 > 7)
    {
      if (v67 == 8)
      {
        v68 = 6144;
      }

      else
      {
        if (v67 != 16)
        {
          goto LABEL_189;
        }

        v68 = 7168;
      }
    }

    else if (v67 == -1879048176)
    {
      v68 = 12288;
    }

    else
    {
      if (v67 != 4)
      {
        goto LABEL_189;
      }

      v68 = 5120;
    }
  }

  else if (v67 <= 268435463)
  {
    if (v67 == 32)
    {
      v68 = 0x2000;
    }

    else
    {
      if (v67 != 64)
      {
        goto LABEL_189;
      }

      v68 = 9216;
    }
  }

  else
  {
    switch(v67)
    {
      case 268435464:
        v68 = 15360;
        break;
      case 268435472:
        v68 = 10240;
        break;
      case 268435488:
        v68 = 11264;
        break;
      default:
LABEL_189:
        v68 = 18432;
        break;
    }
  }

  v69 = v68 | v65;
  if (v188)
  {
    if (v64 > 285212703)
    {
      if (v64 <= 536870915)
      {
        if (v64 > 301989895)
        {
          if (v64 == 301989896)
          {
            v70 = 0x80000;
          }

          else
          {
            if (v64 != 335544328)
            {
              goto LABEL_234;
            }

            v70 = 557056;
          }
        }

        else if (v64 == 285212704)
        {
          v70 = 425984;
        }

        else
        {
          if (v64 != 285212736)
          {
            goto LABEL_234;
          }

          v70 = 458752;
        }
      }

      else if (v64 <= 536870927)
      {
        if (v64 == 536870916)
        {
          v70 = 0;
        }

        else
        {
          if (v64 != 536870920)
          {
            goto LABEL_234;
          }

          v70 = 0x8000;
        }
      }

      else
      {
        switch(v64)
        {
          case 536870928:
            v70 = 0x10000;
            break;
          case 536870944:
            v70 = 98304;
            break;
          case 536870976:
            v70 = 0x20000;
            break;
          default:
            goto LABEL_234;
        }
      }
    }

    else if (v64 <= 31)
    {
      if (v64 > 7)
      {
        if (v64 == 8)
        {
          v70 = 196608;
        }

        else
        {
          if (v64 != 16)
          {
            goto LABEL_234;
          }

          v70 = 229376;
        }
      }

      else if (v64 == -1879048176)
      {
        v70 = 393216;
      }

      else
      {
        if (v64 != 4)
        {
          goto LABEL_234;
        }

        v70 = 163840;
      }
    }

    else if (v64 <= 268435463)
    {
      if (v64 == 32)
      {
        v70 = 0x40000;
      }

      else
      {
        if (v64 != 64)
        {
          goto LABEL_234;
        }

        v70 = 294912;
      }
    }

    else
    {
      switch(v64)
      {
        case 268435464:
          v70 = 491520;
          break;
        case 268435472:
          v70 = 327680;
          break;
        case 268435488:
          v70 = 360448;
          break;
        default:
LABEL_234:
          v70 = 589824;
          break;
      }
    }

    v69 |= v70;
  }

  v71 = *(v176 + 8);
  v189 = a2;
  if (v71 > 285212703)
  {
    if (v71 <= 536870915)
    {
      if (v71 > 301989895)
      {
        if (v71 == 301989896)
        {
          v72 = 16;
        }

        else
        {
          if (v71 != 335544328)
          {
            goto LABEL_279;
          }

          v72 = 17;
        }
      }

      else if (v71 == 285212704)
      {
        v72 = 13;
      }

      else
      {
        if (v71 != 285212736)
        {
          goto LABEL_279;
        }

        v72 = 14;
      }
    }

    else if (v71 <= 536870927)
    {
      if (v71 == 536870916)
      {
        v72 = 0;
      }

      else
      {
        if (v71 != 536870920)
        {
          goto LABEL_279;
        }

        v72 = 1;
      }
    }

    else
    {
      switch(v71)
      {
        case 536870928:
          v72 = 2;
          break;
        case 536870944:
          v72 = 3;
          break;
        case 536870976:
          v72 = 4;
          break;
        default:
          goto LABEL_279;
      }
    }
  }

  else if (v71 <= 31)
  {
    if (v71 > 7)
    {
      if (v71 == 8)
      {
        v72 = 6;
      }

      else
      {
        if (v71 != 16)
        {
          goto LABEL_279;
        }

        v72 = 7;
      }
    }

    else if (v71 == -1879048176)
    {
      v72 = 12;
    }

    else
    {
      if (v71 != 4)
      {
        goto LABEL_279;
      }

      v72 = 5;
    }
  }

  else if (v71 <= 268435463)
  {
    if (v71 == 32)
    {
      v72 = 8;
    }

    else
    {
      if (v71 != 64)
      {
        goto LABEL_279;
      }

      v72 = 9;
    }
  }

  else
  {
    switch(v71)
    {
      case 268435464:
        v72 = 15;
        break;
      case 268435472:
        v72 = 10;
        break;
      case 268435488:
        v72 = 11;
        break;
      default:
LABEL_279:
        v72 = 18;
        break;
    }
  }

  v224 = v173;
  v225 = v181;
  v226 = v155 / v187;
  v227 = v164;
  v228 = v158;
  v229 = v156;
  v230 = v187;
  v231 = v171;
  v73 = v169[17];
  if (v188)
  {
    v74 = v178;
  }

  else
  {
    v74 = v178;
    if (*(v73 + 304) == 2)
    {
      v75 = *(v73 + 296);
    }
  }

  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v219 = 0u;
  (*(*v74 + 88))(&v219);
  v76 = v167.i64[0] * (v185 - 1);
  v77 = HIDWORD(v219);
  v193 = (v173 + v77 - 1) / v77;
  v163 = v30;
  v157 = v76 + 1 + ((v76 + 1) >> 63);
  v159 = v76 + 1;
  v177 = v72;
  if (v188 && v168.i64[0] != 1 || v151 - (v76 + 1) / 2 < 0)
  {
    v78 = 0x10000;
  }

  else
  {
    v78 = ((v151 + v76 / 2 + (v193 * HIDWORD(v219) - 1) * v168.i64[0]) >= v160) << 16;
  }

  if (v165 == 268435472)
  {
    v79 = 0x40000;
  }

  else
  {
    v79 = (v165 == -1879048176) << 19;
  }

  if (v184 == 268435472)
  {
    v80 = 0x100000;
  }

  else
  {
    v80 = (v184 == -1879048176) << 21;
  }

  v81 = 1;
  v179 = v78;
  v170 = v80;
  if (v160 <= 0xFFFE && v154 <= 0xFFFE && v152 <= 0xFFFE && v173 <= 0xFFFE && v181 <= 0xFFFE && v171 <= 0xFFFE && v221 <= 0xFFFE && *(&v221 + 1) <= 0xFFFEuLL && v222 <= 0xFFFE)
  {
    v82 = (v193 - 1) * HIDWORD(v219);
    if (v82 <= 0x7FFE)
    {
      v83 = v188 ? 1 : v168.i64[0];
      if ((v151 + v76 + v82 * v83) < 0x8000)
      {
        v84 = v181 - 1;
        if (v84 <= 0x7FFE)
        {
          v85 = v168.i64[1];
          if (v188)
          {
            v85 = 1;
          }

          v81 = (v143 + v167.i64[1] * (v186 - 1) + v85 * v84) >= 0x8000;
        }
      }
    }
  }

  v153 = v167.i64[1] * (v186 - 1);
  v166 = v9;
  v86 = v219;
  v87 = DWORD1(v219);
  v88 = v220;
  v89 = DWORD2(v219);
  v90 = [*(v182 + 232) graph];
  v91 = vmovn_s64(vceqq_s64(v167, vdupq_n_s64(1uLL)));
  v93 = v164 > 0x10000 || v155 > 0x10000;
  if (v93 || v81)
  {
    v94 = 0x80000000;
  }

  else
  {
    v94 = 0;
  }

  v95 = (3072 - (__clz(v89) << 10)) & 0xC00;
  if (!v89)
  {
    v95 = 0;
  }

  v96 = (24 - 8 * __clz(v88)) & 0x18;
  if (!v88)
  {
    v96 = 0;
  }

  if (v91.i8[0] & v91.i8[4])
  {
    v97 = 0x4000;
  }

  else
  {
    v97 = 0;
  }

  v98 = v168.i64[1] == 1 && v168.i64[0] == 1;
  v99 = v95 | (32 * v86 + 96) & 0x60 | ((v187 == 1) << 13) | (v188 << 12) | ((__clz(v87) & 7) << 7) | (v77 - 1) & 7 | v96;
  if (v98)
  {
    v100 = 0x8000;
  }

  else
  {
    v100 = 0;
  }

  v101 = (v185 & 3) << 27;
  if (v185 > 3)
  {
    v101 = 0;
  }

  v102 = (v186 & 3) << 29;
  if (v186 > 3)
  {
    v102 = 0;
  }

  v103 = (v101 & 0xFC3FFFFF | ((v162 & 3) << 24) | v102 & 0xFF3FFFFF | v100 & 0xFF3FFFFF | v97 & 0xFF3FFFFF | ((v191 & 3) << 22) | v79 | v170 | ((v175 / v187 % v87 != 0) << 17) | v179 | v94 | v99) ^ 0x380;
  v104 = *(v90 + 84);
  v212 = -1;
  v211 = -1;
  v213 = v103;
  v214 = v177 | v69;
  v215 = 0u;
  v216 = 0u;
  v217 = v147 | (v188 << 8) | 0x10000u;
  v218 = 0;
  v142 = *(v182 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v106 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v107 = *(&v222 + 1);
  v109 = *(&v223 + 1);
  v108 = v223;
  v110 = v223 * *(&v222 + 1) * *(&v223 + 1);
  if (v110 <= v106)
  {
    v116 = v222;
  }

  else
  {
    if (v191)
    {
      v111 = v223;
    }

    else
    {
      v111 = *(&v222 + 1);
    }

    if (*(&v223 + 1) >= 2uLL)
    {
      v112 = *(&v223 + 1);
      do
      {
        v109 = v112 >> 1;
        v110 >>= 1;
        v113 = v110 > v106 && v112 > 3;
        v112 >>= 1;
      }

      while (v113);
    }

    if (v111 < 2 || v110 <= v106)
    {
      v114 = v111;
    }

    else
    {
      do
      {
        v114 = v111 >> 1;
        v110 >>= 1;
        v115 = v110 > v106 && v111 > 3;
        v111 >>= 1;
      }

      while (v115);
    }

    if (v191)
    {
      v108 = v114;
    }

    else
    {
      v107 = v114;
    }

    *&v223 = v108;
    *(&v223 + 1) = v109;
    *&v221 = 1;
    *(&v221 + 1) = (v114 + v225 * ((HIDWORD(v219) + v224 - 1) / HIDWORD(v219)) * v231 - 1) / v114;
    v116 = v230 * ((v109 + (v227 / v230 + DWORD1(v219) - 1) / DWORD1(v219) - 1) / v109);
    *&v222 = v116;
    *(&v222 + 1) = v107;
  }

  v210 = v221;
  [v189 setComputePipelineState:PipelineStateForMPSKey];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v189, v182, 4, 0, 0);
  [v189 setBuffer:objc_msgSend(v31 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v31, 0, 4, 0, 0) + v146, 29}];
  if (v161)
  {
    v117 = 0;
  }

  else
  {
    v117 = v145;
  }

  [v189 setBuffer:-[MPSTemporaryNDArray buffer](v163 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v163, 0, 4, 0, 0) + v117, 28}];
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  *&v201[12] = 0u;
  LOWORD(__p) = v116 / v187;
  WORD1(__p) = v187;
  v118 = v166 / v187;
  HIDWORD(__p) = v175 / v187;
  LODWORD(v198) = v166 / v187;
  HIDWORD(v198) = v166;
  *v199 = v175;
  *&v199[4] = 0;
  memset(v200, 0, 20);
  LOWORD(v200[4]) = (v173 + v77 - 1) / v77;
  v200[5] = v160;
  v200[6] = v154;
  v200[7] = v173;
  v200[8] = v181;
  v200[9] = v171;
  v119.i64[0] = v151 - (v157 >> 1);
  v119.i64[1] = v143 - ((v153 + 1) / 2);
  *v119.i8 = vmovn_s64(v119);
  v119.i64[1] = __PAIR64__(v186, v185);
  *v201 = vuzp1q_s16(vuzp1q_s32(v168, v167), v119);
  *&v201[16] = v159;
  *&v201[18] = v153 + 1;
  *&v201[20] = 65537;
  MPSGetUShortDivisorMagicNumber();
  *&v202 = v120;
  MPSGetUShortDivisorMagicNumber();
  *(&v202 + 1) = v121;
  MPSGetUIntDivisorMagicNumber();
  v203 = v122;
  MPSGetUIntDivisorMagicNumber();
  v204 = v123;
  MPSGetUShortDivisorMagicNumber();
  *&v205 = v124;
  MPSGetUShortDivisorMagicNumber();
  *(&v205 + 1) = v125;
  MPSGetUIntDivisorMagicNumber();
  v206 = v126;
  MPSGetUIntDivisorMagicNumber();
  v207 = v127;
  v128 = *MEMORY[0x277CD7400];
  v129 = *MEMORY[0x277CD73C8];
  v130 = *&v31[v129] >> 3;
  v131 = *&v31[v128] / v130;
  v132 = *(v144 + v128);
  if (v191)
  {
    v130 = v132 / (*(v144 + v129) >> 3);
    v133 = *MEMORY[0x277CD73D0];
    v134 = v131;
    LODWORD(v131) = *&v31[v133 + 4] * v131;
    v135 = v131 * *&v31[v133 + 8];
    LODWORD(v136) = *(v144 + v133 + 4) * v130;
    v137 = 1;
  }

  else
  {
    v136 = v132 / v130;
    v133 = *MEMORY[0x277CD73D0];
    v138 = *&v31[v133 + 4];
    v134 = *&v31[v133 + 8];
    LODWORD(v130) = *(v144 + v133 + 8);
    LODWORD(v118) = v138 * v131 * v118;
    v137 = v138 * v131;
    v135 = v137 * v134;
  }

  *&v208 = __PAIR64__(v118, v131);
  *(&v208 + 1) = __PAIR64__(v135, v137);
  *&v199[4] = v134;
  *&v199[8] = v130;
  DWORD1(v209) = v136;
  *&v200[1] = *(&v163->super.super.isa + v133 + 4);
  v200[3] = *(&v163[1].super.super.isa + v133 + 4);
  v139 = *(&v163->super.super.isa + v128) / (*(&v163->super.super.isa + v129) >> 3);
  LODWORD(v209) = 1;
  v200[0] = v139;
  [v189 setBytes:&__p length:224 atIndex:26];
  if (v88 >= 2)
  {
    [v189 setThreadgroupMemoryLength:(8 * v107 * v108 * v109 + 248) & 0xFFFFFFFFFFFFFF00 atIndex:0];
  }

  [v189 setBuffer:0 offset:0 atIndex:25];
  v195 = v210;
  v196 = v116;
  v194[0] = v107;
  v194[1] = v108;
  v194[2] = v109;
  [v189 dispatchThreadgroups:&v195 threadsPerThreadgroup:v194];
  if (v161)
  {
    MPSDecrementReadCount(v163);
  }

  return 0;
}

void sub_239A8043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, void *a37)
{
  operator delete(__p);
  if (a29)
  {
    operator delete(a29);
    if (!a37)
    {
      goto LABEL_7;
    }
  }

  else if (!a37)
  {
    goto LABEL_7;
  }

  operator delete(a37);
LABEL_7:
  _Unwind_Resume(a1);
}

void MPSNDArrayConvolutionDeviceBehaviorPreG13::~MPSNDArrayConvolutionDeviceBehaviorPreG13(void **this)
{
  *this = &unk_284CAF9A0;
  free(this[9]);
}

{
  *this = &unk_284CAF9A0;
  free(this[9]);

  JUMPOUT(0x23EE7C8C0);
}

void *MPSNDArrayConvolutionDeviceBehaviorPreG13::MPSNDArrayConvolutionDeviceBehaviorPreG13(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 5;
  if ((*(a6 + 1472) - 27) < 6)
  {
    v7 = 6;
  }

  a1[1] = v7;
  a1[2] = a6;
  *a1 = &unk_284CAF9A0;
  a1[7] = &keys;
  a1[8] = 532;
  a1[3] = a2;
  a1[4] = a3;
  a1[5] = a4;
  a1[6] = a5;
  a1[9] = 0;
  a1[10] = 95;
  v8 = getenv("MPS_AUTO_TUNING_PARAMETERS");
  if (v8 && *v8 == 50)
  {
    v9 = v8;
    v10 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
    a1[9] = v10;
    *v10 = v9[1] - 48;
    v10[1] = v9[3] + 10 * v9[2] - 528;
    v10[2] = v9[4] - 48;
    v10[3] = v9[5] - 48;
    v10[4] = v9[6] - 48;
    v10[5] = v9[8] + 10 * v9[7] - 528;
    v10[6] = v9[10] + 10 * v9[9] - 528;
    v10[7] = v9[11] - 48;
    v10[8] = v9[12] - 48;
    v10[9] = v9[13] - 48;
  }

  return a1;
}

void MPSNDArrayConvolutionDeviceBehaviorAruba::~MPSNDArrayConvolutionDeviceBehaviorAruba(void **this)
{
  *this = &unk_284CAF9A0;
  free(this[9]);
}

{
  *this = &unk_284CAF9A0;
  free(this[9]);

  JUMPOUT(0x23EE7C8C0);
}

void MPSNDArrayConvolutionDeviceBehaviorCebu::~MPSNDArrayConvolutionDeviceBehaviorCebu(void **this)
{
  *this = &unk_284CAF9A0;
  free(this[9]);
}

{
  *this = &unk_284CAF9A0;
  free(this[9]);

  JUMPOUT(0x23EE7C8C0);
}

uint64_t EncodeArrayMathBinary(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + *MEMORY[0x277CD7370]);
  v10 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v11 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v12 = *(a4 + 208);
  v13 = *MEMORY[0x277CD7410];
  v14 = *MEMORY[0x277CD7410];
  v15 = MEMORY[0x277CD73D8];
  if (*&v10[v14] == 1)
  {
    v52 = 0;
    if (*&v10[v13 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v51 = 0;
    if (*&v11[v14] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    v5 = 0;
    v16 = v13;
    if (*&v11[v13 + 4] == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (*&v10[*MEMORY[0x277CD73D8]] == 1)
  {
    v52 = *&v10[*MEMORY[0x277CD7400]];
    if (*&v10[v13 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v10[*MEMORY[0x277CD73D8]])
  {
    v52 = [v10 dataType] >> 3;
    v13 = *MEMORY[0x277CD7410];
    v14 = *MEMORY[0x277CD7410];
  }

  if (*&v10[v14 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v10[*v15 + 1])
  {
    v51 = [v10 dataType] >> 3;
    v13 = *MEMORY[0x277CD7410];
    if (*&v11[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v10[*v15 + 1] != 1)
  {
    if (*&v11[v14] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v51 = *&v10[*MEMORY[0x277CD7400]];
  if (*&v11[v14] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v11[*v15] == 1)
  {
    v5 = *&v11[*MEMORY[0x277CD7400]];
    v16 = v13;
    if (*&v11[v13 + 4] == 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*&v11[*v15])
    {
      v5 = [v11 dataType] >> 3;
      v13 = *MEMORY[0x277CD7410];
    }

    v16 = v13;
    if (*&v11[v13 + 4] == 1)
    {
LABEL_23:
      HIDWORD(v50) = 0;
      if (*&v12[v16] != 1)
      {
        goto LABEL_34;
      }

LABEL_31:
      LODWORD(v50) = 0;
      if (*&v12[v13 + 4] != 1)
      {
        goto LABEL_40;
      }

LABEL_38:
      v4 = 0;
      goto LABEL_44;
    }
  }

LABEL_26:
  if (!v11[*v15 + 1])
  {
    HIDWORD(v50) = [v11 dataType] >> 3;
    v13 = *MEMORY[0x277CD7410];
    if (*&v12[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v11[*v15 + 1] != 1)
  {
    if (*&v12[v16] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  HIDWORD(v50) = *&v11[*MEMORY[0x277CD7400]];
  if (*&v12[v16] == 1)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (*&v12[*v15] == 1)
  {
    LODWORD(v50) = *&v12[*MEMORY[0x277CD7400]];
    if (*&v12[v13 + 4] != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (!*&v12[*v15])
  {
    LODWORD(v50) = [v12 dataType] >> 3;
    v13 = *MEMORY[0x277CD7410];
  }

  if (*&v12[v13 + 4] == 1)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (v12[*v15 + 1])
  {
    if (v12[*v15 + 1] == 1)
    {
      v4 = *&v12[*MEMORY[0x277CD7400]];
    }
  }

  else
  {
    v4 = [v12 dataType] >> 3;
  }

LABEL_44:
  v17 = *(a4 + 8);
  v56 = *(v17 + 64);
  v18 = *(v17 + 144);
  v19 = *(a4 + 192);
  v53 = MPSGetLinearOffsetBytes(v10, 0, 2, 0, 0);
  v54 = MPSGetLinearOffsetBytes(v11, 0, 2, 0, 0);
  v20 = MPSGetLinearOffsetBytes(v12, 0, 2, 0, 0);
  v21 = *MEMORY[0x277CD73C8];
  v22 = *&v10[v21];
  if (v22 > 285212703)
  {
    if (v22 <= 536870915)
    {
      v23 = v4;
      if (v22 > 301989895)
      {
        if (v22 == 301989896)
        {
          v24 = 512;
          v25 = *&v11[v21];
          if (v25 <= 285212703)
          {
            goto LABEL_103;
          }
        }

        else
        {
          if (v22 != 335544328)
          {
            goto LABEL_124;
          }

          v24 = 544;
          v25 = *&v11[v21];
          if (v25 <= 285212703)
          {
            goto LABEL_103;
          }
        }
      }

      else if (v22 == 285212704)
      {
        v24 = 416;
        v25 = *&v11[v21];
        if (v25 <= 285212703)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v22 != 285212736)
        {
          goto LABEL_124;
        }

        v24 = 448;
        v25 = *&v11[v21];
        if (v25 <= 285212703)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_125;
    }

    v23 = v4;
    if (v22 > 536870927)
    {
      switch(v22)
      {
        case 536870928:
          v24 = 64;
          v25 = *&v11[v21];
          if (v25 <= 285212703)
          {
            goto LABEL_103;
          }

          break;
        case 536870944:
          v24 = 96;
          v25 = *&v11[v21];
          if (v25 <= 285212703)
          {
            goto LABEL_103;
          }

          break;
        case 536870976:
          v24 = 128;
          v25 = *&v11[v21];
          if (v25 <= 285212703)
          {
            goto LABEL_103;
          }

          break;
        default:
          goto LABEL_124;
      }

      goto LABEL_125;
    }

    v24 = 0;
    if (v22 != 536870916)
    {
      if (v22 != 536870920)
      {
        goto LABEL_124;
      }

      v24 = 32;
      v25 = *&v11[v21];
      if (v25 <= 285212703)
      {
        goto LABEL_103;
      }

      goto LABEL_125;
    }

LABEL_102:
    v25 = *&v11[v21];
    if (v25 > 285212703)
    {
      goto LABEL_125;
    }

    goto LABEL_103;
  }

  if (v22 <= 31)
  {
    v23 = v4;
    if (v22 > 7)
    {
      if (v22 == 8)
      {
        v24 = 192;
        v25 = *&v11[v21];
        if (v25 <= 285212703)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v22 != 16)
        {
          goto LABEL_124;
        }

        v24 = 224;
        v25 = *&v11[v21];
        if (v25 <= 285212703)
        {
          goto LABEL_103;
        }
      }
    }

    else if (v22 == -1879048176)
    {
      v24 = 384;
      v25 = *&v11[v21];
      if (v25 <= 285212703)
      {
        goto LABEL_103;
      }
    }

    else
    {
      if (v22 != 4)
      {
        goto LABEL_124;
      }

      v24 = 160;
      v25 = *&v11[v21];
      if (v25 <= 285212703)
      {
        goto LABEL_103;
      }
    }

    goto LABEL_125;
  }

  v23 = v4;
  if (v22 <= 268435463)
  {
    if (v22 != 32)
    {
      if (v22 != 64)
      {
        goto LABEL_124;
      }

      v24 = 288;
      v25 = *&v11[v21];
      if (v25 <= 285212703)
      {
        goto LABEL_103;
      }

      goto LABEL_125;
    }

    v24 = 256;
    goto LABEL_102;
  }

  switch(v22)
  {
    case 268435464:
      v24 = 480;
      v25 = *&v11[v21];
      if (v25 <= 285212703)
      {
        goto LABEL_103;
      }

      break;
    case 268435472:
      v24 = 320;
      v25 = *&v11[v21];
      if (v25 <= 285212703)
      {
        goto LABEL_103;
      }

      break;
    case 268435488:
      v24 = 352;
      v25 = *&v11[v21];
      if (v25 > 285212703)
      {
        break;
      }

LABEL_103:
      if (v25 <= 31)
      {
        if (v25 > 7)
        {
          if (v25 == 8)
          {
            v26 = 6144;
            goto LABEL_147;
          }

          if (v25 == 16)
          {
            v26 = 7168;
            goto LABEL_147;
          }
        }

        else
        {
          if (v25 == -1879048176)
          {
            v26 = 12288;
            goto LABEL_147;
          }

          if (v25 == 4)
          {
            v26 = 5120;
            goto LABEL_147;
          }
        }
      }

      else if (v25 <= 268435463)
      {
        if (v25 == 32)
        {
          v26 = 0x2000;
          goto LABEL_147;
        }

        if (v25 == 64)
        {
          v26 = 9216;
          goto LABEL_147;
        }
      }

      else
      {
        switch(v25)
        {
          case 268435464:
            v26 = 15360;
            goto LABEL_147;
          case 268435472:
            v26 = 10240;
            goto LABEL_147;
          case 268435488:
            v26 = 11264;
            goto LABEL_147;
        }
      }

      goto LABEL_146;
    default:
LABEL_124:
      v24 = 576;
      v25 = *&v11[v21];
      if (v25 > 285212703)
      {
        break;
      }

      goto LABEL_103;
  }

LABEL_125:
  if (v25 <= 536870915)
  {
    if (v25 > 301989895)
    {
      if (v25 == 301989896)
      {
        v26 = 0x4000;
        goto LABEL_147;
      }

      if (v25 == 335544328)
      {
        v26 = 17408;
        goto LABEL_147;
      }
    }

    else
    {
      if (v25 == 285212704)
      {
        v26 = 13312;
        goto LABEL_147;
      }

      if (v25 == 285212736)
      {
        v26 = 14336;
        goto LABEL_147;
      }
    }
  }

  else if (v25 <= 536870927)
  {
    if (v25 == 536870916)
    {
      v26 = 0;
      goto LABEL_147;
    }

    if (v25 == 536870920)
    {
      v26 = 1024;
      goto LABEL_147;
    }
  }

  else
  {
    switch(v25)
    {
      case 536870928:
        v26 = 2048;
        goto LABEL_147;
      case 536870944:
        v26 = 3072;
        goto LABEL_147;
      case 536870976:
        v26 = 4096;
        goto LABEL_147;
    }
  }

LABEL_146:
  v26 = 18432;
LABEL_147:
  v27 = v24 | v26;
  v28 = *&v12[v21];
  v57 = v19;
  v58 = v11;
  v55 = v20;
  if (v28 > 285212703)
  {
    if (v28 <= 536870915)
    {
      if (v28 > 301989895)
      {
        v29 = v12;
        if (v28 == 301989896)
        {
          v32 = v18;
          v30 = a2;
          v33 = 16;
          v31 = v52;
          goto LABEL_191;
        }

        v30 = a2;
        v31 = v52;
        if (v28 == 335544328)
        {
          v32 = v18;
          v33 = 17;
          goto LABEL_191;
        }
      }

      else
      {
        v29 = v12;
        if (v28 == 285212704)
        {
          v32 = v18;
          v30 = a2;
          v33 = 13;
          v31 = v52;
          goto LABEL_191;
        }

        v30 = a2;
        v31 = v52;
        if (v28 == 285212736)
        {
          v32 = v18;
          v33 = 14;
          goto LABEL_191;
        }
      }
    }

    else if (v28 <= 536870927)
    {
      v29 = v12;
      if (v28 == 536870916)
      {
        v32 = v18;
        v30 = a2;
        v33 = 0;
        v31 = v52;
        goto LABEL_191;
      }

      v30 = a2;
      v31 = v52;
      if (v28 == 536870920)
      {
        v32 = v18;
        v33 = 1;
        goto LABEL_191;
      }
    }

    else
    {
      if (v28 == 536870928)
      {
        v29 = v12;
        v32 = v18;
        v30 = a2;
        v33 = 2;
        v31 = v52;
        goto LABEL_191;
      }

      v29 = v12;
      if (v28 == 536870944)
      {
        v32 = v18;
        v30 = a2;
        v33 = 3;
        v31 = v52;
        goto LABEL_191;
      }

      v30 = a2;
      v31 = v52;
      if (v28 == 536870976)
      {
        v32 = v18;
        v33 = 4;
        goto LABEL_191;
      }
    }
  }

  else if (v28 <= 31)
  {
    if (v28 > 7)
    {
      v31 = v52;
      v29 = v12;
      if (v28 == 8)
      {
        v32 = v18;
        v30 = a2;
        v33 = 6;
        goto LABEL_191;
      }

      v30 = a2;
      if (v28 == 16)
      {
        v32 = v18;
        v33 = 7;
        goto LABEL_191;
      }
    }

    else
    {
      v29 = v12;
      if (v28 == -1879048176)
      {
        v32 = v18;
        v30 = a2;
        v33 = 12;
        v31 = v52;
        goto LABEL_191;
      }

      v30 = a2;
      v31 = v52;
      if (v28 == 4)
      {
        v32 = v18;
        v33 = 5;
        goto LABEL_191;
      }
    }
  }

  else if (v28 <= 268435463)
  {
    v31 = v52;
    v29 = v12;
    if (v28 == 32)
    {
      v32 = v18;
      v30 = a2;
      v33 = 8;
      goto LABEL_191;
    }

    v30 = a2;
    if (v28 == 64)
    {
      v32 = v18;
      v33 = 9;
      goto LABEL_191;
    }
  }

  else
  {
    if (v28 == 268435464)
    {
      v29 = v12;
      v32 = v18;
      v30 = a2;
      v33 = 15;
      v31 = v52;
      goto LABEL_191;
    }

    v29 = v12;
    if (v28 == 268435472)
    {
      v32 = v18;
      v30 = a2;
      v33 = 10;
      v31 = v52;
      goto LABEL_191;
    }

    v30 = a2;
    v31 = v52;
    if (v28 == 268435488)
    {
      v32 = v18;
      v33 = 11;
      goto LABEL_191;
    }
  }

  v32 = v18;
  v33 = 18;
LABEL_191:
  v34 = v27 | v33;
  v35 = *(a1 + 144);
  *&v36 = -1;
  *(&v36 + 1) = -1;
  v66 = v36;
  v67 = v36;
  v63 = -1;
  v65 = v36;
  v62 = v36;
  v64 = v34 | (v35 << 16);
  v37 = v29;
  v38 = &v29[*MEMORY[0x277CD7410]];
  v39 = *v38;
  v40 = *(v38 + 1);
  v61[0] = *v38;
  v61[1] = v40;
  v61[2] = 0;
  v61[3] = v51;
  v61[4] = HIDWORD(v50);
  v61[5] = v23;
  v61[6] = 0;
  v61[7] = v31;
  v61[8] = v5;
  v61[9] = v50;
  v61[10] = 0;
  v61[11] = v35;
  v41 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v43 = [ComputeState threadExecutionWidth];
  if (v43 <= 1)
  {
    v44 = 1;
  }

  else
  {
    v44 = v43;
  }

  v45 = [ComputeState maxTotalThreadsPerThreadgroup];
  v46 = 256;
  if (v45 < 0x100)
  {
    v46 = v45;
  }

  v47 = v46 > 2 * v44;
  v48 = v46 / v44;
  if (v47)
  {
    v41 = v48;
  }

  [v30 setComputePipelineState:ComputeState];
  [v30 setBuffer:objc_msgSend(v10 offset:"buffer") atIndex:{v53 + v56, 0}];
  [v30 setBuffer:objc_msgSend(v58 offset:"buffer") atIndex:{v54 + v32, 1}];
  [v30 setBuffer:objc_msgSend(v37 offset:"buffer") atIndex:{v55 + v57, 2}];
  [v30 setBytes:v61 length:48 atIndex:3];
  v60[0] = (v39 + v44 - 1) / v44;
  v60[1] = (v40 + v41 - 1) / v41;
  v60[2] = 1;
  v59[0] = v44;
  v59[1] = v41;
  v59[2] = 1;
  [v30 dispatchThreadgroups:v60 threadsPerThreadgroup:v59];
  MPSLibrary::ReleaseComputeState();
  return 0;
}