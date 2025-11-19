uint64_t EncodeArrayMathBinaryGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v77 = *(a1 + *MEMORY[0x277CD7370]);
  v6 = *(a1 + 136);
  v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v8 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v79 = v8;
  v13 = *(a4 + 112);
  v14 = *(a4 + 208);
  v15 = MEMORY[0x277CD7410];
  v16 = *MEMORY[0x277CD7410];
  v17 = *MEMORY[0x277CD7410];
  v18 = MEMORY[0x277CD73D8];
  if (*&v7[v17] == 1)
  {
    v70 = 0;
    if (*&v7[v16 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v69 = 0;
    if (*&v79[v17] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    LODWORD(v8) = 0;
    v19 = v16;
    if (*&v79[v16 + 4] == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (*&v7[*MEMORY[0x277CD73D8]] == 1)
  {
    v70 = *&v7[*MEMORY[0x277CD7400]];
    if (*&v7[v16 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v7[*MEMORY[0x277CD73D8]])
  {
    LODWORD(v8) = [v7 dataType];
    v15 = MEMORY[0x277CD7410];
    v70 = v8 >> 3;
    v16 = *MEMORY[0x277CD7410];
    v17 = *MEMORY[0x277CD7410];
  }

  if (*&v7[v17 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v7[*v18 + 1])
  {
    LODWORD(v8) = [v7 dataType];
    v15 = MEMORY[0x277CD7410];
    v69 = v8 >> 3;
    v16 = *MEMORY[0x277CD7410];
    if (*&v79[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v7[*v18 + 1] != 1)
  {
    if (*&v79[v17] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v69 = *&v7[*MEMORY[0x277CD7400]];
  if (*&v79[v17] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v79[*v18] == 1)
  {
    LODWORD(v8) = *&v79[*MEMORY[0x277CD7400]];
    v19 = v16;
    if (*&v79[v16 + 4] == 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*&v79[*v18])
    {
      LOWORD(v8) = [v79 dataType];
      v15 = MEMORY[0x277CD7410];
      LODWORD(v8) = v8 >> 3;
      v16 = *MEMORY[0x277CD7410];
    }

    v19 = v16;
    if (*&v79[v16 + 4] == 1)
    {
LABEL_23:
      v9 = 0;
      if (*&v13[v19] != 1)
      {
        goto LABEL_34;
      }

LABEL_31:
      v10 = 0;
      v21 = v16;
      if (*&v13[v16 + 4] == 1)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

LABEL_26:
  if (!v79[*v18 + 1])
  {
    v20 = v8;
    LOWORD(v8) = [v79 dataType];
    v15 = MEMORY[0x277CD7410];
    v9 = v8 >> 3;
    LODWORD(v8) = v20;
    v16 = *MEMORY[0x277CD7410];
    if (*&v13[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v79[*v18 + 1] != 1)
  {
    if (*&v13[v19] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v9 = *&v79[*MEMORY[0x277CD7400]];
  if (*&v13[v19] == 1)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (*&v13[*v18] == 1)
  {
    v10 = *&v13[*MEMORY[0x277CD7400]];
    v21 = v16;
    if (*&v13[v16 + 4] == 1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (!*&v13[*v18])
    {
      v22 = v8;
      v23 = v9;
      LOWORD(v8) = [v13 dataType];
      v9 = v23;
      v15 = MEMORY[0x277CD7410];
      v10 = v8 >> 3;
      LODWORD(v8) = v22;
      v16 = *MEMORY[0x277CD7410];
    }

    v21 = v16;
    if (*&v13[v16 + 4] == 1)
    {
LABEL_38:
      v11 = 0;
      if (*&v14[v21] != 1)
      {
        goto LABEL_49;
      }

LABEL_46:
      v12 = 0;
      if (*&v14[v16 + 4] != 1)
      {
        goto LABEL_55;
      }

LABEL_53:
      LODWORD(v31) = 0;
      goto LABEL_59;
    }
  }

LABEL_41:
  if (!v13[*v18 + 1])
  {
    v24 = v8;
    v25 = v9;
    v26 = v10;
    LOWORD(v8) = [v13 dataType];
    v10 = v26;
    v9 = v25;
    v15 = MEMORY[0x277CD7410];
    v11 = v8 >> 3;
    LODWORD(v8) = v24;
    v16 = *MEMORY[0x277CD7410];
    if (*&v14[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v13[*v18 + 1] != 1)
  {
    if (*&v14[v21] != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  v11 = *&v13[*MEMORY[0x277CD7400]];
  if (*&v14[v21] == 1)
  {
    goto LABEL_46;
  }

LABEL_49:
  if (*&v14[*v18] == 1)
  {
    v12 = *&v14[*MEMORY[0x277CD7400]];
    if (*&v14[v16 + 4] != 1)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (!*&v14[*v18])
  {
    v27 = v8;
    v28 = v9;
    v29 = v10;
    v30 = v11;
    LOWORD(v8) = [v14 dataType];
    v11 = v30;
    v10 = v29;
    v9 = v28;
    v15 = MEMORY[0x277CD7410];
    v12 = v8 >> 3;
    LODWORD(v8) = v27;
    v16 = *MEMORY[0x277CD7410];
  }

  if (*&v14[v16 + 4] == 1)
  {
    goto LABEL_53;
  }

LABEL_55:
  v31 = &v14[*v18];
  if (v31[1])
  {
    if (v31[1] == 1)
    {
      LODWORD(v31) = *&v14[*MEMORY[0x277CD7400]];
    }
  }

  else
  {
    v32 = v8;
    v33 = v6;
    v34 = v9;
    v35 = v10;
    v36 = v11;
    v37 = v12;
    LOWORD(v8) = [v14 dataType];
    v12 = v37;
    v11 = v36;
    v10 = v35;
    v9 = v34;
    LODWORD(v6) = v33;
    v15 = MEMORY[0x277CD7410];
    LODWORD(v31) = v8 >> 3;
    LODWORD(v8) = v32;
  }

LABEL_59:
  v38 = *(a4 + 8);
  v39 = *(v38 + 64);
  v40 = *(v38 + 144);
  v41 = *MEMORY[0x277CD73C8];
  v42 = *&v7[v41];
  v74 = *(a4 + 192);
  if (v42 > 285212703)
  {
    if (v42 <= 536870915)
    {
      if (v42 > 301989895)
      {
        if (v42 == 301989896)
        {
          v43 = 512;
          goto LABEL_103;
        }

        if (v42 == 335544328)
        {
          v43 = 544;
          goto LABEL_103;
        }
      }

      else
      {
        if (v42 == 285212704)
        {
          v43 = 416;
          goto LABEL_103;
        }

        if (v42 == 285212736)
        {
          v43 = 448;
          goto LABEL_103;
        }
      }
    }

    else if (v42 <= 536870927)
    {
      if (v42 == 536870916)
      {
        v43 = 0;
        goto LABEL_103;
      }

      if (v42 == 536870920)
      {
        v43 = 32;
        goto LABEL_103;
      }
    }

    else
    {
      switch(v42)
      {
        case 536870928:
          v43 = 64;
          goto LABEL_103;
        case 536870944:
          v43 = 96;
          goto LABEL_103;
        case 536870976:
          v43 = 128;
          goto LABEL_103;
      }
    }
  }

  else if (v42 <= 31)
  {
    if (v42 > 7)
    {
      if (v42 == 8)
      {
        v43 = 192;
        goto LABEL_103;
      }

      if (v42 == 16)
      {
        v43 = 224;
        goto LABEL_103;
      }
    }

    else
    {
      if (v42 == -1879048176)
      {
        v43 = 384;
        goto LABEL_103;
      }

      if (v42 == 4)
      {
        v43 = 160;
        goto LABEL_103;
      }
    }
  }

  else if (v42 <= 268435463)
  {
    if (v42 == 32)
    {
      v43 = 256;
      goto LABEL_103;
    }

    if (v42 == 64)
    {
      v43 = 288;
      goto LABEL_103;
    }
  }

  else
  {
    switch(v42)
    {
      case 268435464:
        v43 = 480;
        goto LABEL_103;
      case 268435472:
        v43 = 320;
        goto LABEL_103;
      case 268435488:
        v43 = 352;
        goto LABEL_103;
    }
  }

  v43 = 576;
LABEL_103:
  v44 = *&v79[v41];
  v73 = *(a4 + 96);
  if (v44 > 285212703)
  {
    if (v44 <= 536870915)
    {
      if (v44 > 301989895)
      {
        if (v44 == 301989896)
        {
          v45 = 0x4000;
          v46 = *&v13[v41];
          if (v46 <= 285212703)
          {
            goto LABEL_163;
          }
        }

        else
        {
          if (v44 != 335544328)
          {
            goto LABEL_184;
          }

          v45 = 17408;
          v46 = *&v13[v41];
          if (v46 <= 285212703)
          {
            goto LABEL_163;
          }
        }
      }

      else if (v44 == 285212704)
      {
        v45 = 13312;
        v46 = *&v13[v41];
        if (v46 <= 285212703)
        {
          goto LABEL_163;
        }
      }

      else
      {
        if (v44 != 285212736)
        {
          goto LABEL_184;
        }

        v45 = 14336;
        v46 = *&v13[v41];
        if (v46 <= 285212703)
        {
          goto LABEL_163;
        }
      }
    }

    else if (v44 <= 536870927)
    {
      if (v44 == 536870916)
      {
        v45 = 0;
        v46 = *&v13[v41];
        if (v46 > 285212703)
        {
          goto LABEL_185;
        }

        goto LABEL_163;
      }

      if (v44 != 536870920)
      {
        goto LABEL_184;
      }

      v45 = 1024;
      v46 = *&v13[v41];
      if (v46 <= 285212703)
      {
        goto LABEL_163;
      }
    }

    else
    {
      switch(v44)
      {
        case 536870928:
          v45 = 2048;
          v46 = *&v13[v41];
          if (v46 <= 285212703)
          {
            goto LABEL_163;
          }

          break;
        case 536870944:
          v45 = 3072;
          v46 = *&v13[v41];
          if (v46 <= 285212703)
          {
            goto LABEL_163;
          }

          break;
        case 536870976:
          v45 = 4096;
          v46 = *&v13[v41];
          if (v46 <= 285212703)
          {
            goto LABEL_163;
          }

          break;
        default:
          goto LABEL_184;
      }
    }
  }

  else if (v44 <= 31)
  {
    if (v44 > 7)
    {
      if (v44 == 8)
      {
        v45 = 6144;
        v46 = *&v13[v41];
        if (v46 <= 285212703)
        {
          goto LABEL_163;
        }
      }

      else
      {
        if (v44 != 16)
        {
          goto LABEL_184;
        }

        v45 = 7168;
        v46 = *&v13[v41];
        if (v46 <= 285212703)
        {
          goto LABEL_163;
        }
      }
    }

    else if (v44 == -1879048176)
    {
      v45 = 12288;
      v46 = *&v13[v41];
      if (v46 <= 285212703)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (v44 != 4)
      {
        goto LABEL_184;
      }

      v45 = 5120;
      v46 = *&v13[v41];
      if (v46 <= 285212703)
      {
        goto LABEL_163;
      }
    }
  }

  else if (v44 <= 268435463)
  {
    if (v44 == 32)
    {
      v45 = 0x2000;
      v46 = *&v13[v41];
      if (v46 <= 285212703)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (v44 != 64)
      {
        goto LABEL_184;
      }

      v45 = 9216;
      v46 = *&v13[v41];
      if (v46 <= 285212703)
      {
        goto LABEL_163;
      }
    }
  }

  else
  {
    switch(v44)
    {
      case 268435464:
        v45 = 15360;
        v46 = *&v13[v41];
        if (v46 <= 285212703)
        {
          goto LABEL_163;
        }

        break;
      case 268435472:
        v45 = 10240;
        v46 = *&v13[v41];
        if (v46 <= 285212703)
        {
          goto LABEL_163;
        }

        break;
      case 268435488:
        v45 = 11264;
        v46 = *&v13[v41];
        if (v46 > 285212703)
        {
          break;
        }

LABEL_163:
        if (v46 <= 31)
        {
          if (v46 > 7)
          {
            if (v46 == 8)
            {
              v47 = 196608;
              goto LABEL_207;
            }

            if (v46 == 16)
            {
              v47 = 229376;
              goto LABEL_207;
            }
          }

          else
          {
            if (v46 == -1879048176)
            {
              v47 = 393216;
              goto LABEL_207;
            }

            if (v46 == 4)
            {
              v47 = 163840;
              goto LABEL_207;
            }
          }
        }

        else if (v46 <= 268435463)
        {
          if (v46 == 32)
          {
            v47 = 0x40000;
            goto LABEL_207;
          }

          if (v46 == 64)
          {
            v47 = 294912;
            goto LABEL_207;
          }
        }

        else
        {
          switch(v46)
          {
            case 268435464:
              v47 = 491520;
              goto LABEL_207;
            case 268435472:
              v47 = 327680;
              goto LABEL_207;
            case 268435488:
              v47 = 360448;
              goto LABEL_207;
          }
        }

        goto LABEL_206;
      default:
LABEL_184:
        v45 = 18432;
        v46 = *&v13[v41];
        if (v46 > 285212703)
        {
          break;
        }

        goto LABEL_163;
    }
  }

LABEL_185:
  if (v46 <= 536870915)
  {
    if (v46 > 301989895)
    {
      if (v46 == 301989896)
      {
        v47 = 0x80000;
        goto LABEL_207;
      }

      if (v46 == 335544328)
      {
        v47 = 557056;
        goto LABEL_207;
      }
    }

    else
    {
      if (v46 == 285212704)
      {
        v47 = 425984;
        goto LABEL_207;
      }

      if (v46 == 285212736)
      {
        v47 = 458752;
        goto LABEL_207;
      }
    }
  }

  else if (v46 <= 536870927)
  {
    if (v46 == 536870916)
    {
      v47 = 0;
      goto LABEL_207;
    }

    if (v46 == 536870920)
    {
      v47 = 0x8000;
      goto LABEL_207;
    }
  }

  else
  {
    switch(v46)
    {
      case 536870928:
        v47 = 0x10000;
        goto LABEL_207;
      case 536870944:
        v47 = 98304;
        goto LABEL_207;
      case 536870976:
        v47 = 0x20000;
        goto LABEL_207;
    }
  }

LABEL_206:
  v47 = 589824;
LABEL_207:
  v48 = *&v14[v41];
  v71 = v40;
  v72 = v7;
  if (v48 > 285212703)
  {
    if (v48 <= 536870915)
    {
      v49 = v14;
      if (v48 > 301989895)
      {
        v50 = a2;
        if (v48 == 301989896)
        {
          v52 = v79;
          v53 = 16;
          v51 = a5;
          goto LABEL_251;
        }

        v51 = a5;
        if (v48 == 335544328)
        {
          v52 = v79;
          v53 = 17;
          goto LABEL_251;
        }
      }

      else
      {
        v50 = a2;
        if (v48 == 285212704)
        {
          v52 = v79;
          v53 = 13;
          v51 = a5;
          goto LABEL_251;
        }

        v51 = a5;
        if (v48 == 285212736)
        {
          v52 = v79;
          v53 = 14;
          goto LABEL_251;
        }
      }
    }

    else if (v48 <= 536870927)
    {
      v49 = v14;
      v50 = a2;
      if (v48 == 536870916)
      {
        v52 = v79;
        v53 = 0;
        v51 = a5;
        goto LABEL_251;
      }

      v51 = a5;
      if (v48 == 536870920)
      {
        v52 = v79;
        v53 = 1;
        goto LABEL_251;
      }
    }

    else
    {
      v49 = v14;
      if (v48 == 536870928)
      {
        v50 = a2;
        v52 = v79;
        v53 = 2;
        v51 = a5;
        goto LABEL_251;
      }

      v50 = a2;
      if (v48 == 536870944)
      {
        v52 = v79;
        v53 = 3;
        v51 = a5;
        goto LABEL_251;
      }

      v51 = a5;
      if (v48 == 536870976)
      {
        v52 = v79;
        v53 = 4;
        goto LABEL_251;
      }
    }
  }

  else if (v48 <= 31)
  {
    v49 = v14;
    if (v48 > 7)
    {
      v50 = a2;
      v51 = a5;
      if (v48 == 8)
      {
        v52 = v79;
        v53 = 6;
        goto LABEL_251;
      }

      if (v48 == 16)
      {
        v52 = v79;
        v53 = 7;
        goto LABEL_251;
      }
    }

    else
    {
      v50 = a2;
      if (v48 == -1879048176)
      {
        v52 = v79;
        v53 = 12;
        v51 = a5;
        goto LABEL_251;
      }

      v51 = a5;
      if (v48 == 4)
      {
        v52 = v79;
        v53 = 5;
        goto LABEL_251;
      }
    }
  }

  else if (v48 <= 268435463)
  {
    v49 = v14;
    v50 = a2;
    v51 = a5;
    if (v48 == 32)
    {
      v52 = v79;
      v53 = 8;
      goto LABEL_251;
    }

    if (v48 == 64)
    {
      v52 = v79;
      v53 = 9;
      goto LABEL_251;
    }
  }

  else
  {
    v49 = v14;
    if (v48 == 268435464)
    {
      v50 = a2;
      v52 = v79;
      v53 = 15;
      v51 = a5;
      goto LABEL_251;
    }

    v50 = a2;
    if (v48 == 268435472)
    {
      v52 = v79;
      v53 = 10;
      v51 = a5;
      goto LABEL_251;
    }

    v51 = a5;
    if (v48 == 268435488)
    {
      v52 = v79;
      v53 = 11;
      goto LABEL_251;
    }
  }

  v52 = v79;
  v53 = 18;
LABEL_251:
  v54 = 0x2000000;
  v55 = *(a1 + 144);
  if (!v51)
  {
    v54 = 0;
  }

  *&v56 = -1;
  *(&v56 + 1) = -1;
  v87 = v56;
  v88 = v56;
  v84 = -1;
  v86 = v56;
  v83 = v56;
  v85 = v43 | v45 | v47 | v54 | v53 | (v55 << 16);
  v57 = &v49[*v15];
  v58 = *v57;
  v59 = *(v57 + 1);
  v82[0] = *v57;
  v82[1] = v59;
  v82[2] = v6;
  v82[3] = v69;
  v82[4] = v9;
  v82[5] = v31;
  v82[6] = v11;
  v82[7] = v70;
  v82[8] = v8;
  v82[9] = v12;
  v82[10] = v10;
  v82[11] = v55;
  v60 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v62 = [ComputeState threadExecutionWidth];
  if (v62 <= 1)
  {
    v63 = 1;
  }

  else
  {
    v63 = v62;
  }

  v64 = [ComputeState maxTotalThreadsPerThreadgroup];
  v65 = 256;
  if (v64 < 0x100)
  {
    v65 = v64;
  }

  v66 = v65 > 2 * v63;
  v67 = v65 / v63;
  if (v66)
  {
    v60 = v67;
  }

  [v50 setComputePipelineState:ComputeState];
  [v50 setBuffer:objc_msgSend(v72 offset:"buffer") atIndex:{v39, 0}];
  [v50 setBuffer:objc_msgSend(v52 offset:"buffer") atIndex:{v71, 1}];
  [v50 setBuffer:objc_msgSend(v13 offset:"buffer") atIndex:{v73, 2}];
  [v50 setBuffer:objc_msgSend(v49 offset:"buffer") atIndex:{v74, 3}];
  [v50 setBytes:v82 length:48 atIndex:4];
  v81[0] = (v58 + v63 - 1) / v63;
  v81[1] = (v59 + v60 - 1) / v60;
  v81[2] = 1;
  v80[0] = v63;
  v80[1] = v60;
  v80[2] = 1;
  [v50 dispatchThreadgroups:v81 threadsPerThreadgroup:v80];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t encode_qmm_generic(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 448);
  if (*(a5 + 472) == 1)
  {
    if (v8 == -1879048176 || v8 == 268435472 || v8 == 268435488)
    {
      goto LABEL_9;
    }
  }

  else if (v8 == -1879048176 || v8 == 268435472 || v8 == 268435488)
  {
LABEL_9:
    v9 = *(a5 + 464) | (*(a5 + 456) << 8) | ((*(a5 + 24) == 0) << 16);
    v10.i64[0] = -1;
    v10.i64[1] = -1;
    v27 = v10;
    v28 = v10;
    v25 = v10;
    v26 = v10;
    v24 = v10;
    v28.i64[0] = [*(a3 + 16) count] | ((*(a3 + 112) != 0) << 8) | 0x10000;
    v25.i64[0] = v9;
    v19 = 0u;
    v18 = 0u;
    v17 = *(a3 + 232);
    MPSLibrary::CreateUberShaderKey();
    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
    MPSLibrary::ReleaseMPSKey();
    if (PipelineStateForMPSKey)
    {
      goto LABEL_10;
    }
  }

  PipelineStateForMPSKey = 0;
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
    PipelineStateForMPSKey = 0;
  }

LABEL_10:
  v12 = *(a5 + 416);
  v13 = *(a5 + 424);
  v14 = vuzp1q_s32(*(a5 + 384), *(a5 + 400));
  v24 = vuzp1q_s32(*(a5 + 352), *(a5 + 368));
  v25 = v14;
  v26.i32[0] = v13;
  v20 = *(a5 + 432);
  *(v26.i64 + 4) = vmovn_s64(v20);
  [a1 setComputePipelineState:{PipelineStateForMPSKey, v17, v18, v19}];
  [a1 setBuffer:objc_msgSend(*a5 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(*a5, 0, 4, 0, 0) + *(a5 + 96), 29}];
  [a1 setBuffer:objc_msgSend(*(a5 + 8) offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(*(a5 + 8), 0, 4, 0, 0) + *(a5 + 176), 28}];
  [a1 setBuffer:objc_msgSend(*(a5 + 16) offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(*(a5 + 16), 0, 4, 0, 0) + *(a5 + 256), 27}];
  v15 = *(a5 + 24);
  if (v15)
  {
    [a1 setBuffer:objc_msgSend(v15 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(*(a5 + 24), 0, 4, 0, 0) + *(a5 + 336), 26}];
  }

  [a1 setBytes:&v24 length:44 atIndex:25];
  MPSSetNDArraysOnComputeEncoder(a1, a3, 4, 0, 0);
  v23[0] = (v20.i64[0] + 63) >> 6;
  v23[1] = (v13 + 63) >> 6;
  v23[2] = v12;
  v21 = xmmword_239B14630;
  v22 = 2;
  [a1 dispatchThreadgroups:v23 threadsPerThreadgroup:&v21];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

unint64_t MPSGetLinearOffsetBytes(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = (a1 + *MEMORY[0x277CD7418]);
  v91 = v10[2];
  v92 = v10[3];
  v89 = *v10;
  v90 = v10[1];
  v11 = (a1 + *MEMORY[0x277CD7410]);
  v87 = v11[2];
  v88 = v11[3];
  v85 = *v11;
  v86 = v11[1];
  v12 = MEMORY[0x277CD73D8];
  v84 = *(a1 + *MEMORY[0x277CD73D8]);
  makeStrideBytes();
  v13 = (a1 + *MEMORY[0x277CD73D0]);
  v15 = v13[2];
  v14 = v13[3];
  v17 = *v13;
  v16 = v13[1];
  v18 = MEMORY[0x277CD73C8];
  if (a3)
  {
    v19.i64[0] = 0x100000001;
    v19.i64[1] = 0x100000001;
    v20 = vceqq_s32(v17, v19);
    v21.i64[0] = v20.i32[0];
    v21.i64[1] = v20.i32[1];
    v22 = v21;
    v23 = vceqq_s32(v16, v19);
    v21.i64[0] = v23.i32[0];
    v21.i64[1] = v23.i32[1];
    v24 = v21;
    v25 = vceqq_s32(v15, v19);
    v21.i64[0] = v25.i32[0];
    v21.i64[1] = v25.i32[1];
    v26 = v21;
    v27 = vceqq_s32(v14, v19);
    v21.i64[0] = v27.i32[0];
    v21.i64[1] = v27.i32[1];
    v28 = v21;
    v21.i64[0] = v20.i32[2];
    v21.i64[1] = v20.i32[3];
    v29 = v21;
    v21.i64[0] = v23.i32[2];
    v21.i64[1] = v23.i32[3];
    v30 = v21;
    v21.i64[0] = v25.i32[2];
    v21.i64[1] = v25.i32[3];
    v31 = v21;
    v21.i64[0] = v27.i32[2];
    v21.i64[1] = v27.i32[3];
    v32 = vbicq_s8(v128[15], v21);
    v33 = vbicq_s8(v128[13], v31);
    v34 = vbicq_s8(v128[11], v30);
    v35 = vbicq_s8(v128[9], v29);
    v36 = vbicq_s8(v128[14], v28);
    v37 = vbicq_s8(v128[12], v26);
    v38 = vbicq_s8(v128[10], v24);
    v39 = vbicq_s8(v128[8], v22);
    v40 = *(a1 + *v12);
    v41 = *(a1 + *MEMORY[0x277CD73C8]);
    if ((v41 & 0xFFF8) != 0)
    {
      v42 = 0;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = v41 >> 3;
      v46 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      do
      {
        v119 = v40;
        v52 = *(&v119 | (a2 + v42) & 0xF) & 0xF;
        v128[0] = v39;
        v128[1] = v35;
        v128[2] = v38;
        v128[3] = v34;
        v128[4] = v37;
        v128[5] = v33;
        v128[6] = v36;
        v128[7] = v32;
        v53 = *(v128 + v52);
        v120 = v43;
        v121 = v44;
        v122 = v46;
        v123 = v47;
        v124 = v48;
        v125 = v49;
        v126 = v50;
        v127 = v51;
        *(&v120 + (v42 & 0xF)) = v53 / v45;
        v51 = v127;
        v50 = v126;
        v49 = v125;
        v48 = v124;
        v47 = v123;
        v46 = v122;
        v44 = v121;
        v43 = v120;
        ++v42;
      }

      while (a3 != v42);
    }

    else
    {
      v54 = 0;
      v43 = 0uLL;
      v44 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      do
      {
        v109 = v40;
        v55 = *(&v109 | (a2 + v54) & 0xF);
        v118[0] = v39;
        v118[1] = v35;
        v118[2] = v38;
        v118[3] = v34;
        v118[4] = v37;
        v118[5] = v33;
        v118[6] = v36;
        v118[7] = v32;
        v56 = *(v118 + (v55 & 0xF));
        v110 = v43;
        v111 = v44;
        v112 = v46;
        v113 = v47;
        v114 = v48;
        v115 = v49;
        v116 = v50;
        v117 = v51;
        *(&v110 + (v54 & 0xF)) = v56;
        v50 = v116;
        v51 = v117;
        v48 = v114;
        v49 = v115;
        v46 = v112;
        v47 = v113;
        v43 = v110;
        v44 = v111;
        ++v54;
      }

      while (a3 != v54);
    }
  }

  else
  {
    v43 = 0uLL;
    v44 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
  }

  if (a5 && *(a1 + *v18) == 4)
  {
    if (!a3)
    {
      return 0;
    }

    v57 = 0;
    v58 = (a1 + *MEMORY[0x277CD7428]);
    v60 = v58[6];
    v59 = v58[7];
    v62 = v58[4];
    v61 = v58[5];
    v64 = v58[2];
    v63 = v58[3];
    v66 = *v58;
    v65 = v58[1];
    v67 = *(a1 + *v12);
    do
    {
      v98 = v67;
      v108[0] = v66;
      v108[1] = v65;
      v108[2] = v64;
      v108[3] = v63;
      v108[4] = v62;
      v108[5] = v61;
      v108[6] = v60;
      v108[7] = v59;
      v68 = *(&v98 | (a2 + v57) & 0xF) & 0xF;
      v69 = *(v108 + v68);
      v107[0] = v17;
      v107[1] = v16;
      v107[2] = v15;
      v107[3] = v14;
      if (*(v107 + v68) == 1)
      {
        v70 = 0;
      }

      else
      {
        v70 = v69;
      }

      v99 = v43;
      v100 = v44;
      v101 = v46;
      v102 = v47;
      v103 = v48;
      v104 = v49;
      v105 = v50;
      v106 = v51;
      *(&v99 + (v57 & 0xF)) = v70;
      v50 = v105;
      v51 = v106;
      v48 = v103;
      v49 = v104;
      v46 = v101;
      v47 = v102;
      v43 = v99;
      v44 = v100;
      ++v57;
    }

    while (a3 != v57);
    goto LABEL_19;
  }

  if (a3)
  {
LABEL_19:
    v71 = 0;
    result = 0;
    v73 = (a4 + 16);
    do
    {
      v96 = v84;
      v82 = *(&v96 | (a2 + v71) & 0xF);
      v97[0] = v89;
      v97[1] = v90;
      v97[2] = v91;
      v97[3] = v92;
      v83 = *(v97 + (v82 & 0xF));
      if (a4)
      {
        v95[0] = v85;
        v95[1] = v86;
        v95[2] = v87;
        v95[3] = v88;
        v74 = *(v95 + (v82 & 0xF));
        *v73 = v74;
        v94[0] = v43;
        v94[1] = v44;
        v94[2] = v46;
        v94[3] = v47;
        v94[4] = v48;
        v94[5] = v49;
        v94[6] = v50;
        v94[7] = v51;
        v75 = *(v94 + (v71 & 0xF));
        v76 = v74 == 1;
        if (v74 == 1)
        {
          v77 = 0;
        }

        else
        {
          v77 = *(v94 + (v71 & 0xF));
        }

        v73[4] = v77;
        if (v76)
        {
          v78 = 0;
        }

        else
        {
          v78 = v75;
        }

        *(a4 + 32 + 8 * v71 + 16) = v78;
        *(v73 - 4) = v83;
      }

      else
      {
        v93[0] = v43;
        v93[1] = v44;
        v93[2] = v46;
        v93[3] = v47;
        v93[4] = v48;
        v93[5] = v49;
        v93[6] = v50;
        v93[7] = v51;
        v75 = *(v93 + (v71 & 0xF));
      }

      v79 = *(a1 + *v18) >> 3;
      if (*(a1 + *v18) == 4)
      {
        v80 = 1;
      }

      else
      {
        v80 = *(a1 + *v18) >> 3;
      }

      if (v82)
      {
        v81 = 0;
      }

      else
      {
        v81 = *(a1 + *v18) == 4;
      }

      result += v75 * v80 * (v83 >> (v81 & (a5 ^ 1)));
      ++v71;
      ++v73;
    }

    while (a3 != v71);
    goto LABEL_37;
  }

  result = 0;
LABEL_37:
  if (a5)
  {
    result >>= *(a1 + *v18) == 4;
  }

  return result;
}

void MPSSetNDArraysOnComputeEncoder(void *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v7 = *(a2 + 112);
  v8 = *(a2 + 232);
  if (v8)
  {
    v9 = *([v8 graph] + 80);
    v195 = v9 != 1;
    v10 = v9 == 1 && *(a2 + 208) != 0;
    v11 = *([*(a2 + 232) graph] + 72) + v10;
  }

  else
  {
    v12 = *(a2 + 208);
    v13 = [*(a2 + 16) count];
    v195 = 0;
    if (v7)
    {
      v11 = v13 + 1;
    }

    else
    {
      v11 = v13;
    }

    if (v12)
    {
      ++v11;
    }
  }

  v14 = 5 * v11;
  v15 = 16 * v14;
  v200 = 4 * (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v16 = malloc_type_calloc(v200, 4uLL, 0x100004052888210uLL);
  v17 = &v16[v15];
  v18 = *(a2 + 232);
  v197 = v7;
  if (v18)
  {
    v19 = [v18 numberOfInputTensors];
    v20 = [*(a2 + 232) numberOfOutputTensors];
    if (v19)
    {
      v21 = 0;
      v22 = v17 + 8;
      do
      {
        v23 = [*(a2 + 232) inputTensorAtIndex:v21];
        *(v22 - 2) = BaseTensor::GetDimensionSize(v23);
        *(v22 - 1) = BaseTensor::GetDimensionSize(v23);
        *v22 = BaseTensor::GetDimensionSize(v23);
        v22[1] = BaseTensor::GetDimensionSize(v23);
        ++v21;
        v22 += 4;
      }

      while (v19 != v21);
    }

    if (v20)
    {
      v24 = 0;
      v25 = v17 + 108;
      do
      {
        v26 = [*(a2 + 232) outputTensorAtIndex:v24];
        *(v25 - 3) = BaseTensor::GetDimensionSize(v26);
        *(v25 - 2) = BaseTensor::GetDimensionSize(v26);
        *(v25 - 1) = BaseTensor::GetDimensionSize(v26);
        *v25 = BaseTensor::GetDimensionSize(v26);
        v25 += 4;
        ++v24;
      }

      while (v20 != v24);
    }

    v27 = *(a2 + 232);
    if (v27)
    {
      goto LABEL_19;
    }

LABEL_28:
    v28 = 0;
    v204 = v16;
    v29 = 0;
    if (![*(a2 + 16) count])
    {
      goto LABEL_40;
    }

    goto LABEL_29;
  }

  v30 = [*(a2 + 16) count];
  if (v7)
  {
    v31 = v30 + 1;
  }

  else
  {
    v31 = v30;
  }

  v32 = MEMORY[0x277CD7438];
  if (v31)
  {
    v33 = 0;
    v34 = v17 + 8;
    do
    {
      v35 = [objc_msgSend(*(a2 + 16) objectAtIndexedSubscript:{v33), "descriptor"}];
      [v35 sliceRangeForDimension:*&v35[*v32]];
      *(v34 - 2) = v36;
      [v35 sliceRangeForDimension:v35[*v32 + 1]];
      *(v34 - 1) = v37;
      [v35 sliceRangeForDimension:v35[*v32 + 2]];
      *v34 = v38;
      [v35 sliceRangeForDimension:v35[*v32 + 3]];
      v34[1] = v39;
      ++v33;
      v34 += 4;
    }

    while (v31 != v33);
  }

  v40 = [*(a2 + 208) descriptor];
  [v40 sliceRangeForDimension:*&v40[*v32]];
  *(v17 + 24) = v41;
  [v40 sliceRangeForDimension:v40[*v32 + 1]];
  *(v17 + 25) = v42;
  [v40 sliceRangeForDimension:v40[*v32 + 2]];
  *(v17 + 26) = v43;
  [v40 sliceRangeForDimension:v40[*v32 + 3]];
  *(v17 + 27) = v44;
  v27 = *(a2 + 232);
  if (!v27)
  {
    goto LABEL_28;
  }

LABEL_19:
  v28 = [v27 graph];
  v204 = v16;
  v29 = 0;
  if ([*(a2 + 16) count])
  {
LABEL_29:
    v45 = 8;
    do
    {
      v52 = [*(a2 + 16) objectAtIndexedSubscript:v29];
      v53 = v52;
      if (v28)
      {
        v54 = **(v28 + 64);
        if (v29 >= (*(*(v28 + 64) + 8) - v54) >> 3)
        {
          std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
        }

        v55 = *(v54 + 8 * v29);
        v56 = *(v55 + 96);
        v57 = *(v55 + 76);
        if (v56 == 2)
        {
          if ((a4 & 1) == 0)
          {
            [a1 setTexture:v52 atIndex:v57 + 1];
          }

          goto LABEL_32;
        }

        if (v56 != 1)
        {
          abort();
        }

        v58 = *(*(a2 + 8) + 8 * v45);
        v59 = MPSGetLinearOffsetBytes(v52, 0, a3, &v204[80 * v57], a5);
        v48 = [v53 buffer];
        v49 = v59 + v58;
        v50 = a1;
        v51 = v57;
      }

      else
      {
        v46 = *(*(a2 + 8) + 8 * v45);
        v47 = MPSGetLinearOffsetBytes(v52, 0, a3, v16, a5);
        v48 = [v53 buffer];
        v49 = v47 + v46;
        v50 = a1;
        v51 = v29;
      }

      [v50 setBuffer:v48 offset:v49 atIndex:v51];
LABEL_32:
      ++v29;
      v45 += 10;
      v16 += 80;
    }

    while (v29 < [*(a2 + 16) count]);
  }

LABEL_40:
  if (!v197)
  {
    v67 = v204;
    v107 = *(a2 + 208);
    if (!v107)
    {
      goto LABEL_78;
    }

    goto LABEL_50;
  }

  v60 = *(a2 + 112);
  v61 = *(a2 + 96);
  v62 = v29 - *(v28 + 76);
  v63 = &v60[*MEMORY[0x277CD7418]];
  v206 = *(v63 + 3);
  v202 = *(v63 + 2);
  v64 = *v63;
  v198 = *(v63 + 1);
  v65 = &v60[*MEMORY[0x277CD7410]];
  v191 = *(v65 + 3);
  v193 = v64;
  v187 = *(v65 + 1);
  v189 = *(v65 + 2);
  v185 = *v65;
  v66 = MEMORY[0x277CD73D8];
  v184 = *&v60[*MEMORY[0x277CD73D8]];
  makeStrideBytes();
  v67 = v204;
  if (a3)
  {
    v68 = &v204[80 * v62];
    v69 = &v60[*MEMORY[0x277CD73D0]];
    v70.i64[0] = 0x100000001;
    v70.i64[1] = 0x100000001;
    v71 = vceqq_s32(*v69, v70);
    v72.i64[0] = v71.i32[0];
    v72.i64[1] = v71.i32[1];
    v73 = v72;
    v74 = vceqq_s32(v69[1], v70);
    v72.i64[0] = v74.i32[0];
    v72.i64[1] = v74.i32[1];
    v75 = v72;
    v76 = vceqq_s32(v69[2], v70);
    v72.i64[0] = v76.i32[0];
    v72.i64[1] = v76.i32[1];
    v77 = v72;
    v78 = vceqq_s32(v69[3], v70);
    v72.i64[0] = v78.i32[0];
    v72.i64[1] = v78.i32[1];
    v79 = v72;
    v72.i64[0] = v71.i32[2];
    v72.i64[1] = v71.i32[3];
    v80 = v72;
    v72.i64[0] = v74.i32[2];
    v72.i64[1] = v74.i32[3];
    v81 = v72;
    v72.i64[0] = v76.i32[2];
    v72.i64[1] = v76.i32[3];
    v82 = v72;
    v72.i64[0] = v78.i32[2];
    v72.i64[1] = v78.i32[3];
    v83 = vbicq_s8(v266, v72);
    v84 = vbicq_s8(v264, v82);
    v85 = vbicq_s8(v262, v81);
    v86 = vbicq_s8(v260, v80);
    v87 = vbicq_s8(v265, v79);
    v88 = vbicq_s8(v263, v77);
    v89 = vbicq_s8(v261, v75);
    v90 = vbicq_s8(v259, v73);
    v91 = *&v60[*v66];
    v92 = MEMORY[0x277CD73C8];
    v93 = *MEMORY[0x277CD73C8];
    v94 = *&v60[v93];
    if ((v94 & 0xFFF8) != 0)
    {
      v95 = 0;
      v96 = 0uLL;
      v97 = 0uLL;
      v98 = v94 >> 3;
      v99 = 0uLL;
      v100 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      do
      {
        v249 = v91;
        v105 = *(&v249 | v95 & 0xF) & 0xF;
        v258[0] = v90;
        v258[1] = v86;
        v258[2] = v89;
        v258[3] = v85;
        v258[4] = v88;
        v258[5] = v84;
        v258[6] = v87;
        v258[7] = v83;
        v106 = *(v258 + v105);
        v250 = v96;
        v251 = v97;
        v252 = v99;
        v253 = v100;
        v254 = v101;
        v255 = v102;
        v256 = v103;
        v257 = v104;
        *(&v250 + (v95 & 0xF)) = v106 / v98;
        v104 = v257;
        v103 = v256;
        v102 = v255;
        v101 = v254;
        v100 = v253;
        v99 = v252;
        v97 = v251;
        v96 = v250;
        ++v95;
      }

      while (a3 != v95);
    }

    else
    {
      v153 = 0;
      v96 = 0uLL;
      v97 = 0uLL;
      v99 = 0uLL;
      v100 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      v103 = 0uLL;
      v104 = 0uLL;
      do
      {
        v239 = v91;
        v154 = *(&v239 | v153 & 0xF) & 0xF;
        v248[0] = v90;
        v248[1] = v86;
        v248[2] = v89;
        v248[3] = v85;
        v248[4] = v88;
        v248[5] = v84;
        v248[6] = v87;
        v248[7] = v83;
        v155 = *(v248 + v154);
        v240 = v96;
        v241 = v97;
        v242 = v99;
        v243 = v100;
        v244 = v101;
        v245 = v102;
        v246 = v103;
        v247 = v104;
        *(&v240 + (v153 & 0xF)) = v155;
        v104 = v247;
        v103 = v246;
        v102 = v245;
        v101 = v244;
        v100 = v243;
        v99 = v242;
        v97 = v241;
        v96 = v240;
        ++v153;
      }

      while (a3 != v153);
    }

    v156 = 0;
    v108 = 0;
    v157 = v68 + 32;
    v158 = v68 + 48;
    do
    {
      v237 = v184;
      v166 = *(&v237 | v156 & 0xF);
      v238[0] = v193;
      v238[1] = v198;
      v238[2] = v202;
      v238[3] = v206;
      v167 = *(v238 + (v166 & 0xF));
      if (v204)
      {
        v236[0] = v185;
        v236[1] = v187;
        v236[2] = v189;
        v236[3] = v191;
        v159 = *(v236 + (v166 & 0xF));
        *(v157 - 4) = v159;
        v235[0] = v96;
        v235[1] = v97;
        v235[2] = v99;
        v235[3] = v100;
        v235[4] = v101;
        v235[5] = v102;
        v235[6] = v103;
        v235[7] = v104;
        v160 = *(v235 + (v156 & 0xF));
        v161 = v159 == 1;
        if (v159 == 1)
        {
          v162 = 0;
        }

        else
        {
          v162 = *(v235 + (v156 & 0xF));
        }

        *v157 = v162;
        if (v161)
        {
          v93 = 0;
        }

        else
        {
          v93 = v160;
        }

        *&v158[8 * v156] = v93;
        *(v157 - 8) = v167;
        LODWORD(v93) = *v92;
      }

      else
      {
        v234[0] = v96;
        v234[1] = v97;
        v234[2] = v99;
        v234[3] = v100;
        v234[4] = v101;
        v234[5] = v102;
        v234[6] = v103;
        v234[7] = v104;
        v160 = *(v234 + (v156 & 0xF));
      }

      v163 = *&v60[v93] >> 3;
      if (*&v60[v93] == 4)
      {
        v164 = 1;
      }

      else
      {
        v164 = *&v60[v93] >> 3;
      }

      if (v166)
      {
        v165 = 0;
      }

      else
      {
        v165 = *&v60[v93] == 4;
      }

      v108 += v160 * v164 * (v167 >> v165);
      ++v156;
      ++v157;
    }

    while (a3 != v156);
  }

  else
  {
    v108 = 0;
  }

  [a1 setBuffer:objc_msgSend(v60 offset:"buffer" atIndex:{v184), v108 + v61, v62}];
  ++v29;
  v107 = *(a2 + 208);
  if (v107)
  {
LABEL_50:
    if (v195)
    {
      [a1 setTexture:v107 atIndex:0];
    }

    else
    {
      v109 = *(a2 + 192);
      v110 = v29 - *(v28 + 76);
      v111 = &v107[*MEMORY[0x277CD7418]];
      v207 = *(v111 + 3);
      v203 = *(v111 + 2);
      v196 = *v111;
      v199 = *(v111 + 1);
      v112 = &v107[*MEMORY[0x277CD7410]];
      v192 = *(v112 + 2);
      v194 = *(v112 + 3);
      v188 = *v112;
      v190 = *(v112 + 1);
      v113 = MEMORY[0x277CD73D8];
      v186 = *&v107[*MEMORY[0x277CD73D8]];
      makeStrideBytes();
      if (a3)
      {
        v114 = &v67[80 * v110];
        v115 = &v107[*MEMORY[0x277CD73D0]];
        v116.i64[0] = 0x100000001;
        v116.i64[1] = 0x100000001;
        v117 = vceqq_s32(*v115, v116);
        v118.i64[0] = v117.i32[0];
        v118.i64[1] = v117.i32[1];
        v119 = v118;
        v120 = vceqq_s32(v115[1], v116);
        v118.i64[0] = v120.i32[0];
        v118.i64[1] = v120.i32[1];
        v121 = v118;
        v122 = vceqq_s32(v115[2], v116);
        v118.i64[0] = v122.i32[0];
        v118.i64[1] = v122.i32[1];
        v123 = v118;
        v124 = vceqq_s32(v115[3], v116);
        v118.i64[0] = v124.i32[0];
        v118.i64[1] = v124.i32[1];
        v125 = v118;
        v118.i64[0] = v117.i32[2];
        v118.i64[1] = v117.i32[3];
        v126 = v118;
        v118.i64[0] = v120.i32[2];
        v118.i64[1] = v120.i32[3];
        v127 = v118;
        v118.i64[0] = v122.i32[2];
        v118.i64[1] = v122.i32[3];
        v128 = v118;
        v118.i64[0] = v124.i32[2];
        v118.i64[1] = v124.i32[3];
        v129 = vbicq_s8(v266, v118);
        v130 = vbicq_s8(v264, v128);
        v131 = vbicq_s8(v262, v127);
        v132 = vbicq_s8(v260, v126);
        v133 = vbicq_s8(v265, v125);
        v134 = vbicq_s8(v263, v123);
        v135 = vbicq_s8(v261, v121);
        v136 = vbicq_s8(v259, v119);
        v137 = *&v107[*v113];
        v138 = MEMORY[0x277CD73C8];
        v139 = *MEMORY[0x277CD73C8];
        v140 = *&v107[v139];
        if ((v140 & 0xFFF8) != 0)
        {
          v141 = 0;
          v142 = 0uLL;
          v143 = 0uLL;
          v144 = v140 >> 3;
          v145 = 0uLL;
          v146 = 0uLL;
          v147 = 0uLL;
          v148 = 0uLL;
          v149 = 0uLL;
          v150 = 0uLL;
          do
          {
            v224 = v137;
            v151 = *(&v224 | v141 & 0xF) & 0xF;
            v233[0] = v136;
            v233[1] = v132;
            v233[2] = v135;
            v233[3] = v131;
            v233[4] = v134;
            v233[5] = v130;
            v233[6] = v133;
            v233[7] = v129;
            v152 = *(v233 + v151);
            v225 = v142;
            v226 = v143;
            v227 = v145;
            v228 = v146;
            v229 = v147;
            v230 = v148;
            v231 = v149;
            v232 = v150;
            *(&v225 + (v141 & 0xF)) = v152 / v144;
            v149 = v231;
            v150 = v232;
            v147 = v229;
            v148 = v230;
            v145 = v227;
            v146 = v228;
            v142 = v225;
            v143 = v226;
            ++v141;
          }

          while (a3 != v141);
        }

        else
        {
          v169 = 0;
          v142 = 0uLL;
          v143 = 0uLL;
          v145 = 0uLL;
          v146 = 0uLL;
          v147 = 0uLL;
          v148 = 0uLL;
          v149 = 0uLL;
          v150 = 0uLL;
          do
          {
            v214 = v137;
            v170 = *(&v214 | v169 & 0xF) & 0xF;
            v223[0] = v136;
            v223[1] = v132;
            v223[2] = v135;
            v223[3] = v131;
            v223[4] = v134;
            v223[5] = v130;
            v223[6] = v133;
            v223[7] = v129;
            v171 = *(v223 + v170);
            v215 = v142;
            v216 = v143;
            v217 = v145;
            v218 = v146;
            v219 = v147;
            v220 = v148;
            v221 = v149;
            v222 = v150;
            *(&v215 + (v169 & 0xF)) = v171;
            v149 = v221;
            v150 = v222;
            v147 = v219;
            v148 = v220;
            v145 = v217;
            v146 = v218;
            v142 = v215;
            v143 = v216;
            ++v169;
          }

          while (a3 != v169);
        }

        v172 = 0;
        v168 = 0;
        v173 = v114 + 32;
        v174 = v114 + 48;
        do
        {
          v212 = v186;
          v182 = *(&v212 | v172 & 0xF);
          v213[0] = v196;
          v213[1] = v199;
          v213[2] = v203;
          v213[3] = v207;
          v183 = *(v213 + (v182 & 0xF));
          if (v67)
          {
            v211[0] = v188;
            v211[1] = v190;
            v211[2] = v192;
            v211[3] = v194;
            v175 = *(v211 + (v182 & 0xF));
            *(v173 - 4) = v175;
            v210[0] = v142;
            v210[1] = v143;
            v210[2] = v145;
            v210[3] = v146;
            v210[4] = v147;
            v210[5] = v148;
            v210[6] = v149;
            v210[7] = v150;
            v176 = *(v210 + (v172 & 0xF));
            v177 = v175 == 1;
            if (v175 == 1)
            {
              v178 = 0;
            }

            else
            {
              v178 = *(v210 + (v172 & 0xF));
            }

            *v173 = v178;
            if (v177)
            {
              v139 = 0;
            }

            else
            {
              v139 = v176;
            }

            *&v174[8 * v172] = v139;
            *(v173 - 8) = v183;
            LODWORD(v139) = *v138;
          }

          else
          {
            v209[0] = v142;
            v209[1] = v143;
            v209[2] = v145;
            v209[3] = v146;
            v209[4] = v147;
            v209[5] = v148;
            v209[6] = v149;
            v209[7] = v150;
            v176 = *(v209 + (v172 & 0xF));
          }

          v179 = *&v107[v139] >> 3;
          if (*&v107[v139] == 4)
          {
            v180 = 1;
          }

          else
          {
            v180 = *&v107[v139] >> 3;
          }

          if (v182)
          {
            v181 = 0;
          }

          else
          {
            v181 = *&v107[v139] == 4;
          }

          v168 += v176 * v180 * (v183 >> v181);
          ++v172;
          ++v173;
        }

        while (a3 != v172);
      }

      else
      {
        v168 = 0;
      }

      [a1 setBuffer:objc_msgSend(v107 offset:"buffer") atIndex:{v168 + v109, v110}];
    }
  }

LABEL_78:
  [a1 setBytes:v67 length:4 * v200 atIndex:23];
  free(v67);
}

void MPSSetResourcesOnCommandEncoder(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v38 = *MEMORY[0x277D85DE8];
  v13 = [a7 graph];
  if ([a3 count])
  {
    is_mul_ok([a3 count], 0x50uLL);
    operator new[]();
  }

  v18 = (*(*(v13 + 64) + 8) - **(v13 + 64)) >> 3;
  v19 = 0;
  v20 = a3;
  v21 = 0;
  *&v14 = 0x100000001;
  *(&v14 + 1) = 0x100000001;
  v24 = v14;
  v25 = v14;
  v22 = v14;
  v23 = v14;
  v26 = 0;
  v27 = 0;
  v30 = v14;
  v31 = v14;
  v28 = v14;
  v29 = v14;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = 0;
  if (isKindOfClass)
  {
    v16 = [a6 offset];
  }

  v32 = v16;
  v33 = 0;
  v34 = a6;
  v35 = 0;
  v36 = 0;
  v37 = a7;
  MPSSetNDArraysOnComputeEncoder(a1, &v18, a8, 0, 0);
  v17 = *MEMORY[0x277D85DE8];
}

void CallNDArrayEncodeMultiDestination(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = *(a6 + 16);
  v9 = *(a6 + 40);
  for (i = 0; i < [v9 count]; ++i)
  {
    [v9 objectAtIndexedSubscript:i];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }
  }

  [v9 objectAtIndexedSubscript:i];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v176 = a6;
    if (a4 < a5)
    {
      if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
      {
        v158 = *(a1 + *MEMORY[0x277CD7360]);
        if (!v158)
        {
          v159 = objc_opt_class();
          v158 = NSStringFromClass(v159);
        }

        v11 = a2;
        [a2 pushDebugGroup:v158];
      }

      else
      {
        v11 = 0;
      }

      (*(a1 + 112))(*(a1 + 104), a2, a3, v176);
      if (v11)
      {
        [v11 popDebugGroup];
      }

      return;
    }

    v12 = [v9 objectAtIndexedSubscript:i];
    v13 = (v12 + *MEMORY[0x277CD7410]);
    v205 = v13[1];
    v215 = *v13;
    v185 = v13[3];
    v195 = v13[2];
    v14 = [v9 objectAtIndexedSubscript:i];
    v15 = MEMORY[0x277CD73D8];
    v253 = *(v14 + *MEMORY[0x277CD73D8]);
    v177 = v9;
    v256[3] = v185;
    v256[2] = v195;
    v256[1] = v205;
    v256[0] = v215;
    v16 = a6;
    v17 = *(v256 + (*(&v253 | a4 & 0xF) & 0xF));
    v18 = (*(v16 + 32) + 80 * i);
    v206 = v18[1];
    v216 = *v18;
    v186 = v18[3];
    v196 = v18[2];
    v254 = *([v9 objectAtIndexedSubscript:i] + *v15);
    v255[3] = v186;
    v255[2] = v196;
    v255[1] = v206;
    v255[0] = v216;
    v19 = *(v255 + (*(&v254 | a4 & 0xF) & 0xF));
    if (v19 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = -v19;
    }

    v161 = v20;
    v167 = (v17 + v20 - 1) / v20;
    v169 = a4;
    if ([v9 count])
    {
      v21 = 0;
      v22 = 0;
      v23 = v176;
      do
      {
        [v9 objectAtIndexedSubscript:v22];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = [v9 objectAtIndexedSubscript:v22];
          v25 = (v24 + *MEMORY[0x277CD7410]);
          v207 = v25[1];
          v217 = *v25;
          v187 = v25[3];
          v197 = v25[2];
          v26 = [v9 objectAtIndexedSubscript:v22];
          v27 = MEMORY[0x277CD73D8];
          v249 = *(v26 + *MEMORY[0x277CD73D8]);
          v252[3] = v187;
          v252[2] = v197;
          v252[1] = v207;
          v252[0] = v217;
          v28 = *(v252 + (*(&v249 | a4 & 0xF) & 0xF));
          v29 = (*(v176 + 32) + v21);
          v208 = v29[1];
          v218 = *v29;
          v188 = v29[3];
          v198 = v29[2];
          v250 = *([v177 objectAtIndexedSubscript:v22] + *v27);
          v251[3] = v188;
          v251[2] = v198;
          v251[1] = v208;
          v251[0] = v218;
          v30 = *(v251 + (*(&v250 | a4 & 0xF) & 0xF));
          v31 = v28 + v30;
          v9 = v177;
          v32 = (v31 - 1) / v30;
          v33 = v167;
          if (v167 <= v32)
          {
            v33 = v32;
          }

          v167 = v33;
        }

        ++v22;
        v21 += 80;
      }

      while (v22 < [v9 count]);
    }

    else
    {
      v23 = v176;
    }

    v184 = malloc_type_calloc([v8 count], 8uLL, 0x100004000313F17uLL);
    v183 = malloc_type_calloc([v8 count], 8uLL, 0x100004000313F17uLL);
    if ([v8 count])
    {
      v34 = 0;
      v35 = 64;
      v36 = MEMORY[0x277CD73D8];
      do
      {
        v184[v34] = *(*(v23 + 8) + v35);
        v44 = [v8 objectAtIndexedSubscript:v34];
        v45 = (v44 + *MEMORY[0x277CD7418]);
        v209 = v45[2];
        v219 = v45[3];
        v189 = *v45;
        v199 = v45[1];
        v180 = *(v44 + *v36);
        makeStrideBytes();
        v46 = (v44 + *MEMORY[0x277CD73D0]);
        v47.i64[0] = 0x100000001;
        v47.i64[1] = 0x100000001;
        v48 = vceqq_s32(*v46, v47);
        v49.i64[0] = v48.i32[0];
        v49.i64[1] = v48.i32[1];
        v50 = v49;
        v51 = vceqq_s32(v46[1], v47);
        v49.i64[0] = v51.i32[0];
        v49.i64[1] = v51.i32[1];
        v52 = v49;
        v53 = vceqq_s32(v46[2], v47);
        v49.i64[0] = v53.i32[0];
        v49.i64[1] = v53.i32[1];
        v54 = v49;
        v55 = vceqq_s32(v46[3], v47);
        v49.i64[0] = v55.i32[0];
        v49.i64[1] = v55.i32[1];
        v56 = v49;
        v49.i64[0] = v48.i32[2];
        v49.i64[1] = v48.i32[3];
        v57 = v49;
        v49.i64[0] = v51.i32[2];
        v49.i64[1] = v51.i32[3];
        v58 = v49;
        v49.i64[0] = v53.i32[2];
        v49.i64[1] = v53.i32[3];
        v59 = v49;
        v49.i64[0] = v55.i32[2];
        v49.i64[1] = v55.i32[3];
        v60 = vbicq_s8(v264, v49);
        v61 = vbicq_s8(v262, v59);
        v62 = vbicq_s8(v260, v58);
        v63 = vbicq_s8(v258, v57);
        v64 = vbicq_s8(v263, v56);
        v65 = vbicq_s8(v261, v54);
        v66 = vbicq_s8(v259, v52);
        v67 = vbicq_s8(v257, v50);
        v68 = *(v44 + *v36);
        v42 = *MEMORY[0x277CD73C8];
        v69 = *(v44 + v42);
        if ((v69 & 0xFFF8) != 0)
        {
          v247 = *(v44 + *v36);
          v37 = *(&v247 | v169 & 0xF) & 0xF;
          v248[0] = v67;
          v248[1] = v63;
          v248[2] = v66;
          v248[3] = v62;
          v248[4] = v65;
          v248[5] = v61;
          v248[6] = v64;
          v248[7] = v60;
          v38 = *(v248 + v37) / (v69 >> 3);
        }

        else
        {
          v245 = *(v44 + *v36);
          v70 = *(&v245 | v169 & 0xF) & 0xF;
          v246[0] = v67;
          v246[1] = v63;
          v246[2] = v66;
          v246[3] = v62;
          v246[4] = v65;
          v246[5] = v61;
          v246[6] = v64;
          v246[7] = v60;
          v38 = *(v246 + v70);
        }

        v39 = *(v44 + v42);
        v40 = v39 == 4;
        v41 = v40;
        LODWORD(v42) = v39 >> 3;
        if (v40)
        {
          v42 = 1;
        }

        else
        {
          v42 = v42;
        }

        v243 = v180;
        v43 = *(&v243 | v169 & 0xF);
        v244[0] = v189;
        v244[1] = v199;
        v244[2] = v209;
        v244[3] = v219;
        if (v43)
        {
          v41 = 0;
        }

        v183[v34++] = v38 * v42 * (*(v244 + (v43 & 0xF)) >> v41);
        v35 += 80;
      }

      while (v34 < [v8 count]);
    }

    v175 = malloc_type_calloc([v9 count], 8uLL, 0x100004000313F17uLL);
    v174 = malloc_type_calloc([v9 count], 8uLL, 0x100004000313F17uLL);
    if ([v9 count])
    {
      v71 = 0;
      v72 = 64;
      v73 = MEMORY[0x277CD73D8];
      do
      {
        [v9 objectAtIndexedSubscript:v71];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v175[v71] = *(*(v23 + 32) + v72);
          v80 = [v9 objectAtIndexedSubscript:v71];
          v81 = (v80 + *MEMORY[0x277CD7418]);
          v210 = v81[2];
          v220 = v81[3];
          v190 = *v81;
          v200 = v81[1];
          v181 = *(v80 + *v73);
          makeStrideBytes();
          v82 = (v80 + *MEMORY[0x277CD73D0]);
          v83.i64[0] = 0x100000001;
          v83.i64[1] = 0x100000001;
          v84 = vceqq_s32(*v82, v83);
          v85.i64[0] = v84.i32[0];
          v85.i64[1] = v84.i32[1];
          v86 = v85;
          v87 = vceqq_s32(v82[1], v83);
          v85.i64[0] = v87.i32[0];
          v85.i64[1] = v87.i32[1];
          v88 = v85;
          v89 = vceqq_s32(v82[2], v83);
          v85.i64[0] = v89.i32[0];
          v85.i64[1] = v89.i32[1];
          v90 = v85;
          v91 = vceqq_s32(v82[3], v83);
          v85.i64[0] = v91.i32[0];
          v85.i64[1] = v91.i32[1];
          v92 = v85;
          v85.i64[0] = v84.i32[2];
          v85.i64[1] = v84.i32[3];
          v93 = v85;
          v85.i64[0] = v87.i32[2];
          v85.i64[1] = v87.i32[3];
          v94 = v85;
          v85.i64[0] = v89.i32[2];
          v85.i64[1] = v89.i32[3];
          v95 = v85;
          v85.i64[0] = v91.i32[2];
          v85.i64[1] = v91.i32[3];
          v96 = vbicq_s8(v264, v85);
          v97 = vbicq_s8(v262, v95);
          v98 = vbicq_s8(v260, v94);
          v99 = vbicq_s8(v258, v93);
          v100 = vbicq_s8(v263, v92);
          v101 = vbicq_s8(v261, v90);
          v102 = vbicq_s8(v259, v88);
          v103 = vbicq_s8(v257, v86);
          v104 = *(v80 + *v73);
          v78 = *MEMORY[0x277CD73C8];
          v105 = *(v80 + v78);
          if ((v105 & 0xFFF8) != 0)
          {
            v241 = *(v80 + *v73);
            v74 = *(&v241 | v169 & 0xF) & 0xF;
            v242[0] = v103;
            v242[1] = v99;
            v242[2] = v102;
            v242[3] = v98;
            v242[4] = v101;
            v242[5] = v97;
            v242[6] = v100;
            v242[7] = v96;
            v75 = *(v242 + v74) / (v105 >> 3);
          }

          else
          {
            v239 = *(v80 + *v73);
            v106 = *(&v239 | v169 & 0xF) & 0xF;
            v240[0] = v103;
            v240[1] = v99;
            v240[2] = v102;
            v240[3] = v98;
            v240[4] = v101;
            v240[5] = v97;
            v240[6] = v100;
            v240[7] = v96;
            v75 = *(v240 + v106);
          }

          v76 = *(v80 + v78);
          v40 = v76 == 4;
          v77 = v40;
          LODWORD(v78) = v76 >> 3;
          if (v40)
          {
            v78 = 1;
          }

          else
          {
            v78 = v78;
          }

          v237 = v181;
          v79 = *(&v237 | v169 & 0xF);
          v238[0] = v190;
          v238[1] = v200;
          v238[2] = v210;
          v238[3] = v220;
          if (v79)
          {
            v77 = 0;
          }

          v174[v71] = v75 * v78 * (*(v238 + (v79 & 0xF)) >> v77);
        }

        ++v71;
        v72 += 80;
      }

      while (v71 < [v9 count]);
    }

    if (v167)
    {
      v107 = 0;
      v108 = 0;
      v160 = v169 - 1;
      v173 = (&v228 | v169 & 0xF);
      v172 = (&v227 | v169 & 0xF);
      v171 = (&v226 | v169 & 0xF);
      v168 = (&v225 | v169 & 0xF);
      v182 = (&v234 | v169 & 0xF);
      v179 = (&v233 | v169 & 0xF);
      v178 = (&v232 | v169 & 0xF);
      v170 = (&v231 | v169 & 0xF);
      while (1)
      {
        v166 = v107;
        if ([v8 count])
        {
          v109 = 0;
          for (j = 0; j < [v8 count]; ++j)
          {
            v112 = [v8 objectAtIndexedSubscript:j];
            v113 = (v112 + *MEMORY[0x277CD7410]);
            v211 = v113[1];
            v221 = *v113;
            v191 = v113[3];
            v201 = v113[2];
            v114 = [v8 objectAtIndexedSubscript:j];
            v115 = MEMORY[0x277CD73D8];
            v232 = *(v114 + *MEMORY[0x277CD73D8]);
            v236[2] = v201;
            v236[3] = v191;
            v236[0] = v221;
            v236[1] = v211;
            v116 = *(v236 + (*v178 & 0xF));
            v117 = (*(v23 + 8) + v109);
            v212 = v117[1];
            v222 = *v117;
            v192 = v117[3];
            v202 = v117[2];
            v233 = *([v8 objectAtIndexedSubscript:j] + *v115);
            v235[2] = v202;
            v235[3] = v192;
            v235[0] = v222;
            v235[1] = v212;
            v118 = *(v235 + (*v179 & 0xF));
            v119 = [v8 objectAtIndexedSubscript:j];
            v234 = *([v8 objectAtIndexedSubscript:j] + *v115);
            v120 = *v182;
            if (*v182)
            {
              makeStrideBytes();
              if (v120 >= 0x10)
              {
                v121 = 0;
              }

              else
              {
                v121 = v120;
              }

              v122 = v257.i64[v121 & 0xF];
              v123 = v183[j];
              if ((v118 & 0x80000000) != 0)
              {
LABEL_59:
                v124 = [v8 objectAtIndexedSubscript:j];
                v125 = [v8 objectAtIndexedSubscript:j];
                v231 = *(v125 + *MEMORY[0x277CD73D8]);
                v126 = *v170;
                if (*v170)
                {
                  makeStrideBytes();
                  if (v126 >= 0x10)
                  {
                    v127 = 0;
                  }

                  else
                  {
                    v127 = v126;
                  }

                  v128 = v257.i64[v127 & 0xF];
                }

                else
                {
                  v128 = *(v124 + *MEMORY[0x277CD73C8]) >> 3;
                }

                v23 = v176;
                v111 = v128 * (v116 - 1);
                goto LABEL_51;
              }
            }

            else
            {
              v122 = *(v119 + *MEMORY[0x277CD73C8]) >> 3;
              v123 = v183[j];
              if ((v118 & 0x80000000) != 0)
              {
                goto LABEL_59;
              }
            }

            v111 = 0;
LABEL_51:
            *(*(v23 + 8) + v109 + 64) = v111 + v123 + v184[j] + v122 * v118 * (v108 % v116);
            v109 += 80;
          }
        }

        v129 = v177;
        v130 = 0x277CBE000;
        if ([v177 count])
        {
          break;
        }

LABEL_47:
        CallNDArrayEncodeMultiDestination(a1, a2, a3, v160, a5, v23);
        v107 = v166 + 1;
        v108 += v161;
        if (v166 + 1 == v167)
        {
          goto LABEL_87;
        }
      }

      v131 = 0;
      v132 = 0;
      while (1)
      {
        [v129 objectAtIndexedSubscript:v132];
        v133 = *(v130 + 2920);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_69;
        }

        v134 = [v129 objectAtIndexedSubscript:v132];
        v135 = (v134 + *MEMORY[0x277CD7410]);
        v213 = v135[1];
        v223 = *v135;
        v193 = v135[3];
        v203 = v135[2];
        v136 = [v129 objectAtIndexedSubscript:v132];
        v137 = MEMORY[0x277CD73D8];
        v226 = *(v136 + *MEMORY[0x277CD73D8]);
        v230[2] = v203;
        v230[3] = v193;
        v230[0] = v223;
        v230[1] = v213;
        v138 = *(v230 + (*v171 & 0xF));
        v139 = (*(v23 + 32) + v131);
        v214 = v139[1];
        v224 = *v139;
        v194 = v139[3];
        v204 = v139[2];
        v227 = *([v129 objectAtIndexedSubscript:v132] + *v137);
        v229[2] = v204;
        v229[3] = v194;
        v229[0] = v224;
        v229[1] = v214;
        v140 = *(v229 + (*v172 & 0xF));
        v141 = [v129 objectAtIndexedSubscript:v132];
        v228 = *([v129 objectAtIndexedSubscript:v132] + *v137);
        v142 = *v173;
        if (*v173)
        {
          makeStrideBytes();
          if (v142 >= 0x10)
          {
            v143 = 0;
          }

          else
          {
            v143 = v142;
          }

          v144 = v257.i64[v143 & 0xF];
          v145 = v174[v132];
          if ((v140 & 0x80000000) != 0)
          {
LABEL_79:
            v149 = [v177 objectAtIndexedSubscript:v132];
            v150 = [v177 objectAtIndexedSubscript:v132];
            v225 = *(v150 + *MEMORY[0x277CD73D8]);
            v151 = *v168;
            if (*v168)
            {
              makeStrideBytes();
              if (v151 >= 0x10)
              {
                v152 = 0;
              }

              else
              {
                v152 = v151;
              }

              v153 = v257.i64[v152 & 0xF];
            }

            else
            {
              v153 = *(v149 + *MEMORY[0x277CD73C8]) >> 3;
            }

            v23 = v176;
            v146 = v153 * (v138 - 1);
            v147 = v108 % v138;
            v148 = *(v176 + 32);
            if (v108 % v138 >= v108)
            {
              goto LABEL_68;
            }

LABEL_86:
            *(v148 + v131 + 72) = 1;
            goto LABEL_68;
          }
        }

        else
        {
          v144 = *(v141 + *MEMORY[0x277CD73C8]) >> 3;
          v145 = v174[v132];
          if ((v140 & 0x80000000) != 0)
          {
            goto LABEL_79;
          }
        }

        v146 = 0;
        v147 = v108 % v138;
        v148 = *(v23 + 32);
        if (v108 % v138 < v108)
        {
          goto LABEL_86;
        }

LABEL_68:
        *(v148 + v131 + 64) = v146 + v145 + v144 * v140 * v147 + v175[v132];
        v129 = v177;
        v130 = 0x277CBE000uLL;
LABEL_69:
        ++v132;
        v131 += 80;
        if (v132 >= [v129 count])
        {
          goto LABEL_47;
        }
      }
    }

LABEL_87:
    if ([v8 count])
    {
      v154 = 0;
      v155 = 64;
      do
      {
        *(*(v23 + 8) + v155) = v184[v154++];
        v155 += 80;
      }

      while (v154 < [v8 count]);
    }

    if ([v177 count])
    {
      v156 = 0;
      v157 = 64;
      do
      {
        *(*(v23 + 32) + v157) = v175[v156++];
        v157 += 80;
      }

      while (v156 < [v177 count]);
    }

    free(v184);
    free(v183);
    free(v175);
    free(v174);
  }
}

void sub_239A87A10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 popDebugGroup];
  }

  _Unwind_Resume(exception_object);
}

void sub_239A88444(_Unwind_Exception *a1)
{
  MPSAutoEncoder::~MPSAutoEncoder((v1 - 208));
  ScopedMPSSignpost::~ScopedMPSSignpost((v1 - 136));
  _Unwind_Resume(a1);
}

void ScopedMPSSignpost::~ScopedMPSSignpost(ScopedMPSSignpost *this)
{
  v2 = *(this + 1);
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = *(this + 4);
  kdebug_trace();
}

void sub_239A8B440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    v16 = a1;
    operator delete(v15);
    a1 = v16;
  }

  _Unwind_Resume(a1);
}

void sub_239A8C8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  (*(*v52 + 8))(v52);
  v55 = *(v53 - 192);
  if (v55)
  {
    *(v53 - 184) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

void CallNDArrayEncode(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v6 = a1;
  if (a4 < a5)
  {
    if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
    {
      v120 = a6;
      v121 = *(a1 + *MEMORY[0x277CD7360]);
      if (!v121)
      {
        v122 = objc_opt_class();
        v121 = NSStringFromClass(v122);
      }

      v7 = a2;
      [a2 pushDebugGroup:v121];
      a6 = v120;
    }

    else
    {
      v7 = 0;
    }

    (*(v6 + 136))(*(v6 + 96), a2, a3, a6);
    if (v7)
    {
      [v7 popDebugGroup];
    }

    return;
  }

  v9 = a6[2];
  v10 = a6[26];
  v11 = v10 + *MEMORY[0x277CD7410];
  v12 = MEMORY[0x277CD73D8];
  v184 = *(v10 + *MEMORY[0x277CD73D8]);
  v13 = *(&v184 | a4 & 0xF);
  v135 = *(v11 + 4 * (v13 & 0xF));
  v123 = a6[24];
  v14 = (v10 + *MEMORY[0x277CD7418]);
  v157 = v14[2];
  v161 = v14[3];
  v149 = *v14;
  v153 = v14[1];
  v140 = a6;
  makeStrideBytes();
  v15 = (v10 + *MEMORY[0x277CD73D0]);
  v16.i64[0] = 0x100000001;
  v16.i64[1] = 0x100000001;
  v17 = vceqq_s32(*v15, v16);
  v18.i64[0] = v17.i32[0];
  v18.i64[1] = v17.i32[1];
  v19 = v18;
  v20 = vceqq_s32(v15[1], v16);
  v18.i64[0] = v20.i32[0];
  v18.i64[1] = v20.i32[1];
  v21 = v18;
  v22 = vceqq_s32(v15[2], v16);
  v18.i64[0] = v22.i32[0];
  v18.i64[1] = v22.i32[1];
  v23 = v18;
  v24 = vceqq_s32(v15[3], v16);
  v18.i64[0] = v24.i32[0];
  v18.i64[1] = v24.i32[1];
  v25 = v18;
  v18.i64[0] = v17.i32[2];
  v18.i64[1] = v17.i32[3];
  v26 = v18;
  v18.i64[0] = v20.i32[2];
  v18.i64[1] = v20.i32[3];
  v27 = v18;
  v18.i64[0] = v22.i32[2];
  v18.i64[1] = v22.i32[3];
  v28 = v18;
  v18.i64[0] = v24.i32[2];
  v18.i64[1] = v24.i32[3];
  v29 = vbicq_s8(v192, v18);
  v30 = vbicq_s8(v190, v28);
  v31 = vbicq_s8(v188, v27);
  v32 = vbicq_s8(v186, v26);
  v33 = vbicq_s8(v191, v25);
  v34 = vbicq_s8(v189, v23);
  v35 = vbicq_s8(v187, v21);
  v36 = vbicq_s8(v185, v19);
  v37 = *(v10 + *v12);
  v38 = *(v10 + *MEMORY[0x277CD73C8]);
  v138 = a4;
  v141 = v10;
  if ((v38 & 0xFFF8) != 0)
  {
    v39 = v38 >> 3;
    v182 = *(v10 + *v12);
    v40 = *(&v182 | a4 & 0xF) & 0xF;
    v183[0] = v36;
    v183[1] = v32;
    v183[2] = v35;
    v183[3] = v31;
    v183[4] = v34;
    v183[5] = v30;
    v183[6] = v33;
    v183[7] = v29;
    v41 = *(v183 + v40) / v39;
  }

  else
  {
    LODWORD(v39) = 0;
    v180 = *(v10 + *v12);
    v42 = *(&v180 | a4 & 0xF) & 0xF;
    v181[0] = v36;
    v181[1] = v32;
    v181[2] = v35;
    v181[3] = v31;
    v181[4] = v34;
    v181[5] = v30;
    v181[6] = v33;
    v181[7] = v29;
    v41 = *(v181 + v42);
  }

  v43 = v38 == 4;
  if (v43)
  {
    v39 = 1;
  }

  else
  {
    v39 = v39;
  }

  v129 = v39;
  v131 = v41;
  v179[0] = v149;
  v179[1] = v153;
  v179[2] = v157;
  v179[3] = v161;
  v127 = *(v179 + (v13 & 0xF));
  if (v13)
  {
    v43 = 0;
  }

  v125 = v43;
  v44 = malloc_type_calloc([v9 count], 8uLL, 0x100004000313F17uLL);
  v148 = malloc_type_calloc([v9 count], 8uLL, 0x100004000313F17uLL);
  if ([v9 count])
  {
    v45 = 0;
    v46 = 64;
    v143 = (&v175 | a4 & 0xF);
    v47 = (&v173 | a4 & 0xF);
    v48 = (&v177 | a4 & 0xF);
    do
    {
      v56 = v44;
      v44[v45] = *(v140[1] + v46);
      v57 = [v9 objectAtIndexedSubscript:v45];
      v58 = (v57 + *MEMORY[0x277CD7418]);
      v158 = v58[2];
      v162 = v58[3];
      v150 = *v58;
      v154 = v58[1];
      v59 = MEMORY[0x277CD73D8];
      v145 = *(v57 + *MEMORY[0x277CD73D8]);
      makeStrideBytes();
      v60 = (v57 + *MEMORY[0x277CD73D0]);
      v61.i64[0] = 0x100000001;
      v61.i64[1] = 0x100000001;
      v62 = vceqq_s32(*v60, v61);
      v63.i64[0] = v62.i32[0];
      v63.i64[1] = v62.i32[1];
      v64 = v63;
      v65 = vceqq_s32(v60[1], v61);
      v63.i64[0] = v65.i32[0];
      v63.i64[1] = v65.i32[1];
      v66 = v63;
      v67 = vceqq_s32(v60[2], v61);
      v63.i64[0] = v67.i32[0];
      v63.i64[1] = v67.i32[1];
      v68 = v63;
      v69 = vceqq_s32(v60[3], v61);
      v63.i64[0] = v69.i32[0];
      v63.i64[1] = v69.i32[1];
      v70 = v63;
      v63.i64[0] = v62.i32[2];
      v63.i64[1] = v62.i32[3];
      v71 = v63;
      v63.i64[0] = v65.i32[2];
      v63.i64[1] = v65.i32[3];
      v72 = v63;
      v63.i64[0] = v67.i32[2];
      v63.i64[1] = v67.i32[3];
      v73 = v63;
      v63.i64[0] = v69.i32[2];
      v63.i64[1] = v69.i32[3];
      v74 = vbicq_s8(v192, v63);
      v75 = vbicq_s8(v190, v73);
      v76 = vbicq_s8(v188, v72);
      v77 = vbicq_s8(v186, v71);
      v78 = vbicq_s8(v191, v70);
      v79 = vbicq_s8(v189, v68);
      v80 = vbicq_s8(v187, v66);
      v81 = vbicq_s8(v185, v64);
      v82 = *(v57 + *v59);
      v54 = *MEMORY[0x277CD73C8];
      v83 = *(v57 + v54);
      if ((v83 & 0xFFF8) != 0)
      {
        v177 = *(v57 + *v59);
        v49 = *v48 & 0xF;
        v178[0] = v81;
        v178[1] = v77;
        v178[2] = v80;
        v178[3] = v76;
        v178[4] = v79;
        v178[5] = v75;
        v178[6] = v78;
        v178[7] = v74;
        v50 = *(v178 + v49) / (v83 >> 3);
      }

      else
      {
        v175 = *(v57 + *v59);
        v84 = *v143 & 0xF;
        v176[0] = v81;
        v176[1] = v77;
        v176[2] = v80;
        v176[3] = v76;
        v176[4] = v79;
        v176[5] = v75;
        v176[6] = v78;
        v176[7] = v74;
        v50 = *(v176 + v84);
      }

      v51 = *(v57 + v54);
      v52 = v51 == 4;
      v53 = v52;
      LODWORD(v54) = v51 >> 3;
      if (v52)
      {
        v54 = 1;
      }

      else
      {
        v54 = v54;
      }

      v173 = v145;
      v55 = *v47;
      v174[0] = v150;
      v174[1] = v154;
      v174[2] = v158;
      v174[3] = v162;
      if (v55)
      {
        v53 = 0;
      }

      v148[v45++] = v50 * v54 * (*(v174 + (v55 & 0xF)) >> v53);
      v46 += 80;
      v44 = v56;
    }

    while (v45 < [v9 count]);
  }

  v85 = v140;
  v172 = *(v141 + *MEMORY[0x277CD73D8]);
  v86 = *(&v172 | v138 & 0xF);
  v87 = *(v140 + (v86 & 0xF) + 32);
  if (*(&v172 | v138 & 0xF))
  {
    makeStrideBytes();
    if (v86 >= 0x10)
    {
      v88 = 0;
    }

    else
    {
      v88 = v86;
    }

    v89 = v185.i64[v88 & 0xF];
    v147 = v44;
    if ((v87 & 0x80000000) == 0)
    {
LABEL_30:
      v90 = 0;
      if (!v135)
      {
        goto LABEL_63;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v89 = *(v141 + *MEMORY[0x277CD73C8]) >> 3;
    v147 = v44;
    if ((v87 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  v91 = v6;
  v92 = v135 - 1;
  v171 = *(v141 + *MEMORY[0x277CD73D8]);
  v93 = (&v171 | v138 & 0xF);
  v94 = *v93;
  if (*v93)
  {
    makeStrideBytes();
    if (v94 >= 0x10)
    {
      v95 = 0;
    }

    else
    {
      v95 = v94;
    }

    v6 = v91;
    v90 = v185.i64[v95 & 0xF] * v92;
    if (!v135)
    {
      goto LABEL_63;
    }

    goto LABEL_40;
  }

  v6 = v91;
  v90 = (*(v141 + *MEMORY[0x277CD73C8]) >> 3) * v92;
  if (v135)
  {
LABEL_40:
    v96 = 0;
    v130 = v131 * (v127 >> v125) * v129 + v124 + v90;
    v132 = v89 * v87;
    if (v87 >= 0)
    {
      v97 = v87;
    }

    else
    {
      v97 = -v87;
    }

    v126 = v97;
    v128 = v138 - 1;
    v146 = (&v168 | v138 & 0xF);
    v144 = (&v167 | v138 & 0xF);
    v142 = (&v166 | v138 & 0xF);
    v139 = (&v165 | v138 & 0xF);
    v133 = v6;
    while (![v9 count])
    {
LABEL_44:
      v85[24] = v130 + v132 * v96;
      CallNDArrayEncode(v133, a2, a3, v128, a5, v85);
      v96 += v126;
      if (v96 >= v135)
      {
        goto LABEL_63;
      }
    }

    v98 = 0;
    v99 = 0;
    while (1)
    {
      v101 = [v9 objectAtIndexedSubscript:v99];
      v102 = (v101 + *MEMORY[0x277CD7410]);
      v159 = v102[1];
      v163 = *v102;
      v151 = v102[3];
      v155 = v102[2];
      v103 = [v9 objectAtIndexedSubscript:v99];
      v104 = MEMORY[0x277CD73D8];
      v166 = *(v103 + *MEMORY[0x277CD73D8]);
      v170[2] = v155;
      v170[3] = v151;
      v170[0] = v163;
      v170[1] = v159;
      v105 = *(v170 + (*v142 & 0xF));
      v106 = (v85[1] + v98);
      v160 = v106[1];
      v164 = *v106;
      v152 = v106[3];
      v156 = v106[2];
      v167 = *([v9 objectAtIndexedSubscript:v99] + *v104);
      v169[2] = v156;
      v169[3] = v152;
      v169[0] = v164;
      v169[1] = v160;
      v107 = *(v169 + (*v144 & 0xF));
      v108 = [v9 objectAtIndexedSubscript:v99];
      v168 = *([v9 objectAtIndexedSubscript:v99] + *v104);
      v109 = *v146;
      if (*v146)
      {
        makeStrideBytes();
        if (v109 >= 0x10)
        {
          v110 = 0;
        }

        else
        {
          v110 = v109;
        }

        v111 = v185.i64[v110 & 0xF];
        v112 = v148[v99];
        if ((v107 & 0x80000000) != 0)
        {
LABEL_56:
          v113 = [v9 objectAtIndexedSubscript:v99];
          v114 = [v9 objectAtIndexedSubscript:v99];
          v165 = *(v114 + *MEMORY[0x277CD73D8]);
          v115 = *v139;
          if (*v139)
          {
            makeStrideBytes();
            if (v115 >= 0x10)
            {
              v116 = 0;
            }

            else
            {
              v116 = v115;
            }

            v117 = v185.i64[v116 & 0xF];
          }

          else
          {
            v117 = *(v113 + *MEMORY[0x277CD73C8]) >> 3;
          }

          v85 = v140;
          v100 = v117 * (v105 - 1);
          goto LABEL_48;
        }
      }

      else
      {
        v111 = *(v108 + *MEMORY[0x277CD73C8]) >> 3;
        v112 = v148[v99];
        if ((v107 & 0x80000000) != 0)
        {
          goto LABEL_56;
        }
      }

      v100 = 0;
LABEL_48:
      *(v85[1] + v98 + 64) = v100 + v112 + v147[v99++] + v111 * v107 * (v96 % v105);
      v98 += 80;
      if (v99 >= [v9 count])
      {
        goto LABEL_44;
      }
    }
  }

LABEL_63:
  v85[24] = v124;
  if ([v9 count])
  {
    v118 = 0;
    v119 = 64;
    do
    {
      *(v85[1] + v119) = v147[v118++];
      v119 += 80;
    }

    while (v118 < [v9 count]);
  }

  free(v147);
  free(v148);
}

void sub_239A8D7CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 popDebugGroup];
  }

  _Unwind_Resume(exception_object);
}

uint64_t CallNDArrayGradientEncode(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  if (a4 < a5)
  {
    if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
    {
      v169 = a6;
      v170 = *(a1 + *MEMORY[0x277CD7360]);
      if (!v170)
      {
        v171 = objc_opt_class();
        v170 = NSStringFromClass(v171);
      }

      v9 = a2;
      [a2 pushDebugGroup:v170];
      a6 = v169;
    }

    else
    {
      v9 = 0;
    }

    (*(a1 + 104))(*(a1 + 96), a2, a3, a6, a7);
    if (v9)
    {
      [v9 popDebugGroup];
    }

    return 0;
  }

  v11 = a6[2];
  v12 = a6[14];
  v184 = a6[26];
  v13 = v12 + *MEMORY[0x277CD7410];
  v14 = MEMORY[0x277CD73D8];
  v15 = *MEMORY[0x277CD73D8];
  v196 = v12;
  v251 = *(v12 + v15);
  v187 = *(v13 + 4 * (*(&v251 | a4 & 0xF) & 0xF));
  v173 = a6[24];
  v16 = (v184 + *MEMORY[0x277CD7418]);
  v214 = v16[2];
  v219 = v16[3];
  v204 = *v16;
  v209 = v16[1];
  *v202 = *(v184 + v15);
  v193 = a6;
  makeStrideBytes();
  v17 = (v184 + *MEMORY[0x277CD73D0]);
  v18.i64[0] = 0x100000001;
  v18.i64[1] = 0x100000001;
  v19 = vceqq_s32(*v17, v18);
  v20.i64[0] = v19.i32[0];
  v20.i64[1] = v19.i32[1];
  v21 = v20;
  v22 = vceqq_s32(v17[1], v18);
  v20.i64[0] = v22.i32[0];
  v20.i64[1] = v22.i32[1];
  v23 = v20;
  v24 = vceqq_s32(v17[2], v18);
  v20.i64[0] = v24.i32[0];
  v20.i64[1] = v24.i32[1];
  v25 = v20;
  v26 = vceqq_s32(v17[3], v18);
  v20.i64[0] = v26.i32[0];
  v20.i64[1] = v26.i32[1];
  v27 = v20;
  v20.i64[0] = v19.i32[2];
  v20.i64[1] = v19.i32[3];
  v28 = v20;
  v20.i64[0] = v22.i32[2];
  v20.i64[1] = v22.i32[3];
  v29 = v20;
  v20.i64[0] = v24.i32[2];
  v20.i64[1] = v24.i32[3];
  v30 = v20;
  v20.i64[0] = v26.i32[2];
  v20.i64[1] = v26.i32[3];
  v31 = vbicq_s8(v259, v20);
  v32 = vbicq_s8(v257, v30);
  v33 = vbicq_s8(v255, v29);
  v34 = vbicq_s8(v253, v28);
  v35 = vbicq_s8(v258, v27);
  v36 = vbicq_s8(v256, v25);
  v37 = vbicq_s8(v254, v23);
  v38 = vbicq_s8(v252, v21);
  v39 = *(v184 + *v14);
  v40 = *(v184 + *MEMORY[0x277CD73C8]);
  v190 = a7;
  v185 = a1;
  if ((v40 & 0xFFF8) != 0)
  {
    v41 = v40 >> 3;
    v249 = *(v184 + *v14);
    v42 = *(&v249 | a4 & 0xF) & 0xF;
    v250[0] = v38;
    v250[1] = v34;
    v250[2] = v37;
    v250[3] = v33;
    v250[4] = v36;
    v250[5] = v32;
    v250[6] = v35;
    v250[7] = v31;
    v43 = *(v250 + v42) / v41;
  }

  else
  {
    LODWORD(v41) = 0;
    v247 = *(v184 + *v14);
    v44 = *(&v247 | a4 & 0xF) & 0xF;
    v248[0] = v38;
    v248[1] = v34;
    v248[2] = v37;
    v248[3] = v33;
    v248[4] = v36;
    v248[5] = v32;
    v248[6] = v35;
    v248[7] = v31;
    v43 = *(v248 + v44);
  }

  v191 = v43;
  v45 = v40 == 4;
  if (v45)
  {
    v41 = 1;
  }

  else
  {
    v41 = v41;
  }

  v182 = v41;
  v245 = *v202;
  v198 = a4;
  v46 = *(&v245 | a4 & 0xF);
  v246[0] = v204;
  v246[1] = v209;
  v246[2] = v214;
  v246[3] = v219;
  v180 = *(v246 + (v46 & 0xF));
  if (v46)
  {
    v45 = 0;
  }

  v178 = v45;
  v47 = malloc_type_calloc([v11 count], 8uLL, 0x100004000313F17uLL);
  v203 = malloc_type_calloc([v11 count], 8uLL, 0x100004000313F17uLL);
  if ([v11 count])
  {
    v48 = 0;
    v49 = 64;
    v50 = (&v241 | a4 & 0xF);
    v51 = (&v239 | a4 & 0xF);
    v52 = (&v243 | a4 & 0xF);
    do
    {
      v47[v48] = *(v193[1] + v49);
      v60 = [v11 objectAtIndexedSubscript:v48];
      v61 = (v60 + *MEMORY[0x277CD7418]);
      v215 = v61[2];
      v220 = v61[3];
      v205 = *v61;
      v210 = v61[1];
      v62 = MEMORY[0x277CD73D8];
      *v200 = *(v60 + *MEMORY[0x277CD73D8]);
      makeStrideBytes();
      v63 = (v60 + *MEMORY[0x277CD73D0]);
      v64.i64[0] = 0x100000001;
      v64.i64[1] = 0x100000001;
      v65 = vceqq_s32(*v63, v64);
      v66.i64[0] = v65.i32[0];
      v66.i64[1] = v65.i32[1];
      v67 = v66;
      v68 = vceqq_s32(v63[1], v64);
      v66.i64[0] = v68.i32[0];
      v66.i64[1] = v68.i32[1];
      v69 = v66;
      v70 = vceqq_s32(v63[2], v64);
      v66.i64[0] = v70.i32[0];
      v66.i64[1] = v70.i32[1];
      v71 = v66;
      v72 = vceqq_s32(v63[3], v64);
      v66.i64[0] = v72.i32[0];
      v66.i64[1] = v72.i32[1];
      v73 = v66;
      v66.i64[0] = v65.i32[2];
      v66.i64[1] = v65.i32[3];
      v74 = v66;
      v66.i64[0] = v68.i32[2];
      v66.i64[1] = v68.i32[3];
      v75 = v66;
      v66.i64[0] = v70.i32[2];
      v66.i64[1] = v70.i32[3];
      v76 = v66;
      v66.i64[0] = v72.i32[2];
      v66.i64[1] = v72.i32[3];
      v77 = vbicq_s8(v259, v66);
      v78 = vbicq_s8(v257, v76);
      v79 = vbicq_s8(v255, v75);
      v80 = vbicq_s8(v253, v74);
      v81 = vbicq_s8(v258, v73);
      v82 = vbicq_s8(v256, v71);
      v83 = vbicq_s8(v254, v69);
      v84 = vbicq_s8(v252, v67);
      v85 = *(v60 + *v62);
      v58 = *MEMORY[0x277CD73C8];
      v86 = *(v60 + v58);
      if ((v86 & 0xFFF8) != 0)
      {
        v243 = *(v60 + *v62);
        v53 = *v52 & 0xF;
        v244[0] = v84;
        v244[1] = v80;
        v244[2] = v83;
        v244[3] = v79;
        v244[4] = v82;
        v244[5] = v78;
        v244[6] = v81;
        v244[7] = v77;
        v54 = *(v244 + v53) / (v86 >> 3);
      }

      else
      {
        v241 = *(v60 + *v62);
        v87 = *v50 & 0xF;
        v242[0] = v84;
        v242[1] = v80;
        v242[2] = v83;
        v242[3] = v79;
        v242[4] = v82;
        v242[5] = v78;
        v242[6] = v81;
        v242[7] = v77;
        v54 = *(v242 + v87);
      }

      v55 = *(v60 + v58);
      v56 = v55 == 4;
      v57 = v56;
      LODWORD(v58) = v55 >> 3;
      if (v56)
      {
        v58 = 1;
      }

      else
      {
        v58 = v58;
      }

      v239 = *v200;
      v59 = *v51;
      v240[0] = v205;
      v240[1] = v210;
      v240[2] = v215;
      v240[3] = v220;
      if (v59)
      {
        v57 = 0;
      }

      v203[v48++] = v54 * v58 * (*(v240 + (v59 & 0xF)) >> v57);
      v49 += 80;
    }

    while (v48 < [v11 count]);
  }

  v88 = v193;
  v172 = v193[12];
  v89 = (v196 + *MEMORY[0x277CD7418]);
  v216 = v89[2];
  v221 = v89[3];
  v206 = *v89;
  v211 = v89[1];
  v90 = MEMORY[0x277CD73D8];
  v194 = *(v196 + *MEMORY[0x277CD73D8]);
  makeStrideBytes();
  v91 = (v196 + *MEMORY[0x277CD73D0]);
  v92.i64[0] = 0x100000001;
  v92.i64[1] = 0x100000001;
  v93 = vceqq_s32(*v91, v92);
  v94.i64[0] = v93.i32[0];
  v94.i64[1] = v93.i32[1];
  v95 = v94;
  v96 = vceqq_s32(v91[1], v92);
  v94.i64[0] = v96.i32[0];
  v94.i64[1] = v96.i32[1];
  v97 = v94;
  v98 = vceqq_s32(v91[2], v92);
  v94.i64[0] = v98.i32[0];
  v94.i64[1] = v98.i32[1];
  v99 = v94;
  v100 = vceqq_s32(v91[3], v92);
  v94.i64[0] = v100.i32[0];
  v94.i64[1] = v100.i32[1];
  v101 = v94;
  v94.i64[0] = v93.i32[2];
  v94.i64[1] = v93.i32[3];
  v102 = v94;
  v94.i64[0] = v96.i32[2];
  v94.i64[1] = v96.i32[3];
  v103 = v94;
  v94.i64[0] = v98.i32[2];
  v94.i64[1] = v98.i32[3];
  v104 = v94;
  v94.i64[0] = v100.i32[2];
  v94.i64[1] = v100.i32[3];
  v105 = vbicq_s8(v259, v94);
  v106 = vbicq_s8(v257, v104);
  v107 = vbicq_s8(v255, v103);
  v108 = vbicq_s8(v253, v102);
  v109 = vbicq_s8(v258, v101);
  v110 = vbicq_s8(v256, v99);
  v111 = vbicq_s8(v254, v97);
  v112 = vbicq_s8(v252, v95);
  v113 = *(v196 + *v90);
  v114 = *(v196 + *MEMORY[0x277CD73C8]);
  if ((v114 & 0xFFF8) != 0)
  {
    v115 = v114 >> 3;
    v237 = *(v196 + *v90);
    v116 = v198;
    v117 = *(&v237 | v198 & 0xF);
    v238[0] = v112;
    v238[1] = v108;
    v238[2] = v111;
    v238[3] = v107;
    v238[4] = v110;
    v238[5] = v106;
    v238[6] = v109;
    v238[7] = v105;
    v118 = *(v238 + (v117 & 0xF)) / v115;
  }

  else
  {
    LODWORD(v115) = 0;
    v235 = *(v196 + *v90);
    v116 = v198;
    v117 = *(&v235 | v198 & 0xF);
    v236[0] = v112;
    v236[1] = v108;
    v236[2] = v111;
    v236[3] = v107;
    v236[4] = v110;
    v236[5] = v106;
    v236[6] = v109;
    v236[7] = v105;
    v118 = *(v236 + (v117 & 0xF));
  }

  v201 = v47;
  v119 = v114 == 4;
  if (v119)
  {
    v120 = 1;
  }

  else
  {
    v120 = v115;
  }

  v233 = v194;
  v121 = *(&v233 | v116 & 0xF);
  v234[0] = v206;
  v234[1] = v211;
  v234[2] = v216;
  v234[3] = v221;
  v122 = *(v234 + (v121 & 0xF));
  if (v121)
  {
    v123 = 0;
  }

  else
  {
    v123 = v119;
  }

  v124 = *(v193 + (v117 & 0xF) + 8);
  if (v117)
  {
    makeStrideBytes();
    if ((v117 & 0xF0) != 0)
    {
      v125 = 0;
    }

    else
    {
      v125 = v117;
    }

    v126 = v252.i64[v125 & 0xF];
    if ((v124 & 0x80000000) == 0)
    {
LABEL_39:
      v127 = 0;
      if (!v187)
      {
        goto LABEL_87;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v126 = v115;
    if ((v124 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }
  }

  v128 = v187 - 1;
  v232 = *(v196 + *MEMORY[0x277CD73D8]);
  v129 = (&v232 | v116 & 0xF);
  v130 = *v129;
  if (*v129)
  {
    makeStrideBytes();
    if (v130 >= 0x10)
    {
      v131 = 0;
    }

    else
    {
      v131 = v130;
    }

    v88 = v193;
    v127 = v252.i64[v131 & 0xF] * v128;
    v116 = v198;
    if (!v187)
    {
      goto LABEL_87;
    }

    goto LABEL_49;
  }

  v127 = (*(v196 + *MEMORY[0x277CD73C8]) >> 3) * v128;
  v116 = v198;
  if (v187)
  {
LABEL_49:
    v132 = 0;
    v133 = v191 * (v180 >> v178) * v182;
    v183 = v126 * v124;
    v181 = v133 + v173;
    v179 = v118 * (v122 >> v123) * v120 + v172 + v127;
    if (v124 >= 0)
    {
      v134 = v124;
    }

    else
    {
      v134 = -v124;
    }

    v176 = v134;
    v177 = v116 - 1;
    v175 = (&v225 | v116 & 0xF);
    v174 = (&v224 | v116 & 0xF);
    v199 = (&v229 | v116 & 0xF);
    v197 = (&v228 | v116 & 0xF);
    v195 = (&v227 | v116 & 0xF);
    v192 = (&v226 | v116 & 0xF);
    do
    {
      if ([v11 count])
      {
        v136 = 0;
        for (i = 0; i < [v11 count]; ++i)
        {
          v139 = [v11 objectAtIndexedSubscript:i];
          v140 = (v139 + *MEMORY[0x277CD7410]);
          v217 = v140[1];
          v222 = *v140;
          v207 = v140[3];
          v212 = v140[2];
          v141 = [v11 objectAtIndexedSubscript:i];
          v142 = MEMORY[0x277CD73D8];
          v227 = *(v141 + *MEMORY[0x277CD73D8]);
          v231[2] = v212;
          v231[3] = v207;
          v231[0] = v222;
          v231[1] = v217;
          v143 = *(v231 + (*v195 & 0xF));
          v144 = (v88[1] + v136);
          v218 = v144[1];
          v223 = *v144;
          v208 = v144[3];
          v213 = v144[2];
          v228 = *([v11 objectAtIndexedSubscript:i] + *v142);
          v230[2] = v213;
          v230[3] = v208;
          v230[0] = v223;
          v230[1] = v218;
          v145 = *(v230 + (*v197 & 0xF));
          v146 = [v11 objectAtIndexedSubscript:i];
          v229 = *([v11 objectAtIndexedSubscript:i] + *v142);
          v147 = *v199;
          if (*v199)
          {
            makeStrideBytes();
            if (v147 >= 0x10)
            {
              v148 = 0;
            }

            else
            {
              v148 = v147;
            }

            v149 = v252.i64[v148 & 0xF];
            v150 = v203[i];
            if ((v145 & 0x80000000) != 0)
            {
LABEL_66:
              v151 = [v11 objectAtIndexedSubscript:i];
              v152 = [v11 objectAtIndexedSubscript:i];
              v226 = *(v152 + *MEMORY[0x277CD73D8]);
              v153 = *v192;
              if (*v192)
              {
                makeStrideBytes();
                if (v153 >= 0x10)
                {
                  v154 = 0;
                }

                else
                {
                  v154 = v153;
                }

                v155 = v252.i64[v154 & 0xF];
              }

              else
              {
                v155 = *(v151 + *MEMORY[0x277CD73C8]) >> 3;
              }

              v88 = v193;
              v138 = v155 * (v143 - 1);
              goto LABEL_58;
            }
          }

          else
          {
            v149 = *(v146 + *MEMORY[0x277CD73C8]) >> 3;
            v150 = v203[i];
            if ((v145 & 0x80000000) != 0)
            {
              goto LABEL_66;
            }
          }

          v138 = 0;
LABEL_58:
          *(v88[1] + v136 + 64) = v138 + v150 + v201[i] + v149 * v145 * (v132 % v143);
          v136 += 80;
        }
      }

      v156 = v184 + *MEMORY[0x277CD7410];
      v225 = *(v184 + *MEMORY[0x277CD73D8]);
      v157 = *v175;
      v158 = 4 * (v157 & 0xF);
      v159 = *(v156 + v158);
      v160 = *(v88 + v158 + 128);
      if (*v175)
      {
        makeStrideBytes();
        if (v157 >= 0x10)
        {
          v161 = 0;
        }

        else
        {
          v161 = v157;
        }

        v162 = v252.i64[v161 & 0xF];
        if ((v160 & 0x80000000) != 0)
        {
LABEL_80:
          v224 = *(v184 + *MEMORY[0x277CD73D8]);
          v163 = *v174;
          if (*v174)
          {
            makeStrideBytes();
            if (v163 >= 0x10)
            {
              v164 = 0;
            }

            else
            {
              v164 = v163;
            }

            v165 = v252.i64[v164 & 0xF];
          }

          else
          {
            v165 = *(v184 + *MEMORY[0x277CD73C8]) >> 3;
          }

          v135 = v165 * (v187 - 1);
          goto LABEL_54;
        }
      }

      else
      {
        v162 = *(v184 + *MEMORY[0x277CD73C8]) >> 3;
        if ((v160 & 0x80000000) != 0)
        {
          goto LABEL_80;
        }
      }

      v135 = 0;
LABEL_54:
      v88[24] = v181 + v135 + v162 * v160 * (v132 % v159);
      v88[12] = v179 + v183 * v132;
      v190 |= v132 % v159 < v132;
      CallNDArrayGradientEncode(v185, a2, a3, v177, a5, v88, v190 & 1);
      v132 += v176;
    }

    while (v132 < v187);
  }

LABEL_87:
  v88[24] = v173;
  v88[12] = v172;
  if ([v11 count])
  {
    v166 = 0;
    v167 = 64;
    do
    {
      *(v88[1] + v167) = v201[v166++];
      v167 += 80;
    }

    while (v166 < [v11 count]);
  }

  free(v201);
  free(v203);
  return 0;
}

void sub_239A8E464(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 popDebugGroup];
  }

  _Unwind_Resume(exception_object);
}

void CallNDArrayNewGradientEncode(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 16);
  if (a4 < a5)
  {
    for (i = 0; i < [v7 count]; ++i)
    {
      [*(a6 + 224) objectAtIndexedSubscript:i];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }
    }

    v9 = *(*(a6 + 216) + 80 * i + 72);
    if ((*(a1 + *MEMORY[0x277CD7378]) & 8) != 0)
    {
      v66 = *(*(a6 + 216) + 80 * i + 72);
      v67 = *(a1 + *MEMORY[0x277CD7360]);
      if (!v67)
      {
        v68 = objc_opt_class();
        v67 = NSStringFromClass(v68);
      }

      v10 = a2;
      [a2 pushDebugGroup:v67];
      v9 = v66;
    }

    else
    {
      v10 = 0;
    }

    (*(a1 + 104))(*(a1 + 96), a2, a3, a6, v9);
    if (v10)
    {
      [v10 popDebugGroup];
    }

    return;
  }

  v12 = *(a6 + 224);
  v13 = *(a6 + 112);
  v72 = *(a6 + 208);
  v14 = v13 + *MEMORY[0x277CD7410];
  v116[0] = *(v13 + *MEMORY[0x277CD73D8]);
  v74 = *(v14 + 4 * (*(v116 | a4 & 0xF) & 0xF));
  v75 = *(a6 + 192);
  v15 = malloc_type_calloc([v7 count], 8uLL, 0x100004000313F17uLL);
  if ([v7 count])
  {
    v16 = 0;
    v17 = 64;
    do
    {
      v15[v16++] = *(*(a6 + 8) + v17);
      v17 += 80;
    }

    while (v16 < [v7 count]);
  }

  v18 = malloc_type_calloc([v12 count], 8uLL, 0x100004000313F17uLL);
  if ([v12 count])
  {
    v19 = 0;
    v20 = 64;
    do
    {
      v18[v19++] = *(*(a6 + 216) + v20);
      v20 += 80;
    }

    while (v19 < [v12 count]);
  }

  v115 = *(v13 + *MEMORY[0x277CD73D8]);
  v21 = *(&v115 | a4 & 0xF);
  v73 = *(a6 + 96);
  v22 = *(a6 + 4 * (v21 & 0xF) + 32);
  v83 = v18;
  v87 = v15;
  if (*(&v115 | a4 & 0xF))
  {
    makeStrideBytes();
    if (v21 >= 0x10)
    {
      v23 = 0;
    }

    else
    {
      v23 = v21;
    }

    v24 = *(&v116[1] + (v23 & 0xF));
    if (!v74)
    {
      goto LABEL_53;
    }

    goto LABEL_22;
  }

  v24 = *(v13 + *MEMORY[0x277CD73C8]) >> 3;
  if (v74)
  {
LABEL_22:
    v25 = 0;
    v70 = a4 - 1;
    v71 = v24 * v22;
    v69 = (&v104 | a4 & 0xF);
    v82 = (&v107 | a4 & 0xF);
    v81 = (&v106 | a4 & 0xF);
    v80 = (&v105 | a4 & 0xF);
    v86 = (&v112 | a4 & 0xF);
    v85 = (&v111 | a4 & 0xF);
    v84 = (&v110 | a4 & 0xF);
    while (1)
    {
      if ([v7 count])
      {
        v33 = 0;
        v34 = 0;
        do
        {
          v37 = [v7 objectAtIndexedSubscript:v34];
          v38 = (v37 + *MEMORY[0x277CD7410]);
          v96 = v38[1];
          v100 = *v38;
          v88 = v38[3];
          v92 = v38[2];
          v39 = [v7 objectAtIndexedSubscript:v34];
          v40 = MEMORY[0x277CD73D8];
          v110 = *(v39 + *MEMORY[0x277CD73D8]);
          v114[2] = v92;
          v114[3] = v88;
          v114[0] = v100;
          v114[1] = v96;
          v41 = *(v114 + (*v84 & 0xF));
          v42 = (*(a6 + 8) + v33);
          v97 = v42[1];
          v101 = *v42;
          v89 = v42[3];
          v93 = v42[2];
          v111 = *([v7 objectAtIndexedSubscript:v34] + *v40);
          v113[2] = v93;
          v113[3] = v89;
          v113[0] = v101;
          v113[1] = v97;
          v43 = *(v113 + (*v85 & 0xF));
          v44 = [v7 objectAtIndexedSubscript:v34];
          v112 = *([v7 objectAtIndexedSubscript:v34] + *v40);
          v45 = *v86;
          if (*v86)
          {
            makeStrideBytes();
            if (v45 >= 0x10)
            {
              v35 = 0;
            }

            else
            {
              v35 = v45;
            }

            v36 = *(&v116[1] + (v35 & 0xF));
          }

          else
          {
            v36 = *(v44 + *MEMORY[0x277CD73C8]) >> 3;
          }

          *(*(a6 + 8) + v33 + 64) = v87[v34++] + v36 * v43 * (v25 % v41);
          v33 += 80;
        }

        while (v34 < [v7 count]);
      }

      v46 = v83;
      if ([v12 count])
      {
        break;
      }

LABEL_23:
      v26 = v72 + *MEMORY[0x277CD7410];
      v104 = *(v72 + *MEMORY[0x277CD73D8]);
      v27 = *v69;
      v28 = 4 * (v27 & 0xF);
      v29 = *(v26 + v28);
      v30 = *(a6 + v28 + 128);
      if (*v69)
      {
        makeStrideBytes();
        if (v27 >= 0x10)
        {
          v31 = 0;
        }

        else
        {
          v31 = v27;
        }

        v32 = *(&v116[1] + (v31 & 0xF));
      }

      else
      {
        v32 = *(v72 + *MEMORY[0x277CD73C8]) >> 3;
      }

      *(a6 + 192) = v75 + v32 * v30 * (v25 % v29);
      *(a6 + 96) = v73 + v71 * v25;
      CallNDArrayNewGradientEncode(a1, a2, a3, v70, a5, a6);
      if (++v25 == v74)
      {
        goto LABEL_53;
      }
    }

    v47 = 0;
    v48 = 0;
    while (1)
    {
      [v12 objectAtIndexedSubscript:v48];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v49 = 0;
      v50 = 0;
      v51 = *(a6 + 216);
LABEL_41:
      *(v51 + v47 + 64) = v46[v48++] + v50 * v49;
      v47 += 80;
      if (v48 >= [v12 count])
      {
        goto LABEL_23;
      }
    }

    v52 = [v12 objectAtIndexedSubscript:v48];
    v53 = (v52 + *MEMORY[0x277CD7410]);
    v98 = v53[1];
    v102 = *v53;
    v90 = v53[3];
    v94 = v53[2];
    v54 = [v12 objectAtIndexedSubscript:v48];
    v55 = MEMORY[0x277CD73D8];
    v105 = *(v54 + *MEMORY[0x277CD73D8]);
    v109[2] = v94;
    v109[3] = v90;
    v109[0] = v102;
    v109[1] = v98;
    v56 = *(v109 + (*v80 & 0xF));
    v57 = (*(a6 + 216) + v47);
    v99 = v57[1];
    v103 = *v57;
    v91 = v57[3];
    v95 = v57[2];
    v106 = *([v12 objectAtIndexedSubscript:v48] + *v55);
    v108[2] = v95;
    v108[3] = v91;
    v108[0] = v103;
    v108[1] = v99;
    v58 = *(v108 + (*v81 & 0xF));
    v59 = [v12 objectAtIndexedSubscript:v48];
    v107 = *([v12 objectAtIndexedSubscript:v48] + *v55);
    v60 = *v82;
    if (*v82)
    {
      makeStrideBytes();
      if (v60 >= 0x10)
      {
        v61 = 0;
      }

      else
      {
        v61 = v60;
      }

      v50 = *(&v116[1] + (v61 & 0xF)) * v58;
      v49 = v25 % v56;
      v51 = *(a6 + 216);
      if (v25 % v56 >= v25)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v50 = (*(v59 + *MEMORY[0x277CD73C8]) >> 3) * v58;
      v49 = v25 % v56;
      v51 = *(a6 + 216);
      if (v25 % v56 >= v25)
      {
        goto LABEL_49;
      }
    }

    *(v51 + v47 + 72) = 1;
LABEL_49:
    v46 = v83;
    goto LABEL_41;
  }

LABEL_53:
  *(a6 + 192) = v75;
  *(a6 + 96) = v73;
  if ([v7 count])
  {
    v62 = 0;
    v63 = 64;
    do
    {
      *(*(a6 + 8) + v63) = v87[v62++];
      v63 += 80;
    }

    while (v62 < [v7 count]);
  }

  if ([v12 count])
  {
    v64 = 0;
    v65 = 64;
    do
    {
      *(*(a6 + 216) + v65) = v83[v64++];
      v65 += 80;
    }

    while (v64 < [v12 count]);
  }

  free(v87);
  free(v83);
}

void sub_239A8ECA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 popDebugGroup];
  }

  _Unwind_Resume(exception_object);
}

void sub_239A90138(_Unwind_Exception *a1)
{
  MPSAutoEncoder::~MPSAutoEncoder((v1 + 64));
  ScopedMPSSignpost::~ScopedMPSSignpost((v1 + 152));
  _Unwind_Resume(a1);
}

void sub_239A902C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MPSAutoEncoder::~MPSAutoEncoder(va);
  _Unwind_Resume(a1);
}

void sub_239A91274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MPSAutoEncoder::~MPSAutoEncoder(va);
  _Unwind_Resume(a1);
}

void MPSKernelLogPerfTestCommandline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + *MEMORY[0x277CD7380]) < 4uLL)
  {
    return;
  }

  std::operator+<char>();
  v6 = std::string::append(&v243, " ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = *(a4 + 8);
  }

  v11 = std::string::append(&__dst, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v246.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v246.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v246, " ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v245.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v245.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v246.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_152:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v243.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_153;
  }

  operator delete(v246.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_152;
  }

LABEL_10:
  if ((SHIBYTE(v243.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_153:
  operator delete(v243.__r_.__value_.__l.__data_);
LABEL_11:
  v15 = [*(a2 + 16) count];
  v16 = MEMORY[0x277CD73D0];
  v228 = a2;
  if (!v15 && !*(a2 + 112))
  {
    goto LABEL_556;
  }

  std::string::append(&v245, "-srcShapes ");
  v17 = 0;
  while (1)
  {
    v18 = v17;
    if ([*(a2 + 16) count] <= v17)
    {
      break;
    }

    v19 = [*(a2 + 16) objectAtIndexedSubscript:v17];
    v20 = v19;
    v21 = *(v19 + *MEMORY[0x277CD73F0]);
    v22 = *(v19 + *MEMORY[0x277CD73D8]);
    if (v22)
    {
      if (v21 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE1(v22) == 1)
      {
        goto LABEL_59;
      }

      v23 = 2;
      if (v21 > 2)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE2(v22) == 2)
      {
        goto LABEL_59;
      }

      v23 = 3;
      if (v21 > 3)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE3(v22) == 3)
      {
        goto LABEL_59;
      }

      v23 = 4;
      if (v21 > 4)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE4(v22) == 4)
      {
        goto LABEL_59;
      }

      v23 = 5;
      if (v21 > 5)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE5(v22) == 5)
      {
        goto LABEL_59;
      }

      v23 = 6;
      if (v21 > 6)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE6(v22) == 6)
      {
        goto LABEL_59;
      }

      v23 = 7;
      if (v21 > 7)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE7(v22) == 7)
      {
        goto LABEL_59;
      }

      v23 = 8;
      if (v21 > 8)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE8(v22) == 8)
      {
        goto LABEL_59;
      }

      v23 = 9;
      if (v21 > 9)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE9(v22) == 9)
      {
        goto LABEL_59;
      }

      v23 = 10;
      if (v21 > 0xA)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE10(v22) == 10)
      {
        goto LABEL_59;
      }

      v23 = 11;
      if (v21 > 0xB)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE11(v22) == 11)
      {
        goto LABEL_59;
      }

      v23 = 12;
      if (v21 > 0xC)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE12(v22) == 12)
      {
        goto LABEL_59;
      }

      v23 = 13;
      if (v21 > 0xD)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE13(v22) == 13)
      {
        goto LABEL_59;
      }

      v23 = 14;
      if (v21 > 0xE)
      {
        v23 = *(v19 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE14(v22) == 14)
      {
LABEL_59:
        v21 = v23;
      }

      else
      {
        v31 = 15;
        if (HIBYTE(v22) != 15)
        {
          v31 = 16;
        }

        if (v31 > v21)
        {
          v21 = v31;
        }
      }
    }

    std::string::append(&v245, "\\[");
    if (v21)
    {
      v24 = 0;
      v25 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v20 + *v16 + 4 * ((v21 + ~v24) & 0xF)));
        if (v21 - 1 == v24)
        {
          v26 = "";
        }

        else
        {
          v26 = ",";
        }

        v27 = std::string::append(&__dst, v26);
        v28 = *&v27->__r_.__value_.__l.__data_;
        v246.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v246.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v246;
        }

        else
        {
          v29 = v246.__r_.__value_.__r.__words[0];
        }

        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v246.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v246.__r_.__value_.__l.__size_;
        }

        std::string::append(&v245, v29, size);
        if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v246.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

LABEL_75:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v24 = v25++;
          if (v21 <= v24)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_75;
          }

LABEL_63:
          v24 = v25++;
          if (v21 <= v24)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v245, "\\] ");
    v17 = v18 + 1;
    a2 = v228;
  }

  v32 = *(a2 + 112);
  if (v32)
  {
    v33 = *(v32 + *MEMORY[0x277CD73F0]);
    v34 = *(v32 + *MEMORY[0x277CD73D8]);
    if (v34)
    {
      if (v33 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE1(v34) == 1)
      {
        goto LABEL_127;
      }

      v35 = 2;
      if (v33 > 2)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE2(v34) == 2)
      {
        goto LABEL_127;
      }

      v35 = 3;
      if (v33 > 3)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE3(v34) == 3)
      {
        goto LABEL_127;
      }

      v35 = 4;
      if (v33 > 4)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE4(v34) == 4)
      {
        goto LABEL_127;
      }

      v35 = 5;
      if (v33 > 5)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE5(v34) == 5)
      {
        goto LABEL_127;
      }

      v35 = 6;
      if (v33 > 6)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE6(v34) == 6)
      {
        goto LABEL_127;
      }

      v35 = 7;
      if (v33 > 7)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE7(v34) == 7)
      {
        goto LABEL_127;
      }

      v35 = 8;
      if (v33 > 8)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE8(v34) == 8)
      {
        goto LABEL_127;
      }

      v35 = 9;
      if (v33 > 9)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE9(v34) == 9)
      {
        goto LABEL_127;
      }

      v35 = 10;
      if (v33 > 0xA)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE10(v34) == 10)
      {
        goto LABEL_127;
      }

      v35 = 11;
      if (v33 > 0xB)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE11(v34) == 11)
      {
        goto LABEL_127;
      }

      v35 = 12;
      if (v33 > 0xC)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE12(v34) == 12)
      {
        goto LABEL_127;
      }

      v35 = 13;
      if (v33 > 0xD)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE13(v34) == 13)
      {
        goto LABEL_127;
      }

      v35 = 14;
      if (v33 > 0xE)
      {
        v35 = *(v32 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE14(v34) == 14)
      {
LABEL_127:
        v33 = v35;
      }

      else
      {
        v224 = 15;
        if (HIBYTE(v34) != 15)
        {
          v224 = 16;
        }

        if (v224 > v33)
        {
          v33 = v224;
        }
      }
    }

    std::string::append(&v245, "\\[");
    if (v33)
    {
      v36 = 0;
      v37 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v32 + *v16 + 4 * ((v33 + ~v36) & 0xF)));
        if (v33 - 1 == v36)
        {
          v38 = "";
        }

        else
        {
          v38 = ",";
        }

        v39 = std::string::append(&__dst, v38);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v246.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v246.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &v246;
        }

        else
        {
          v41 = v246.__r_.__value_.__r.__words[0];
        }

        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v42 = v246.__r_.__value_.__l.__size_;
        }

        std::string::append(&v245, v41, v42);
        if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v246.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_131;
          }

LABEL_143:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v36 = v37++;
          if (v33 <= v36)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_143;
          }

LABEL_131:
          v36 = v37++;
          if (v33 <= v36)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v245, "\\] ");
    a2 = v228;
  }

  v43 = 0;
  v44 = 0;
  while ([*(a2 + 16) count] > v43)
  {
    v45 = [*(a2 + 16) objectAtIndexedSubscript:v43];
    v46 = (v45 + *v16);
    v44 |= (vmaxvq_u32(vorrq_s8(vornq_s8(vmvnq_s8(vceqq_s32(*v46, *(v45 + *MEMORY[0x277CD7410]))), vceqq_s32(v46[2], *(v45 + *MEMORY[0x277CD7410] + 32))), vornq_s8(vmvnq_s8(vceqq_s32(v46[1], *(v45 + *MEMORY[0x277CD7410] + 16))), vceqq_s32(v46[3], *(v45 + *MEMORY[0x277CD7410] + 48))))) & 0x80000000) != 0;
    ++v43;
  }

  v47 = *(a2 + 112);
  if (v47)
  {
    v48 = (v47 + *v16);
    v49 = (v47 + *MEMORY[0x277CD7410]);
    if (!(v44 & 1 | ((vmaxvq_u32(vorrq_s8(vornq_s8(vmvnq_s8(vceqq_s32(*v48, *v49)), vceqq_s32(v48[2], v49[2])), vornq_s8(vmvnq_s8(vceqq_s32(v48[1], v49[1])), vceqq_s32(v48[3], v49[3])))) & 0x80000000) != 0)))
    {
      goto LABEL_287;
    }
  }

  else if ((v44 & 1) == 0)
  {
    goto LABEL_287;
  }

  std::string::append(&v245, "-srcSliceLengths ");
  v50 = 0;
  while (1)
  {
    v51 = v50;
    if ([*(a2 + 16) count] <= v50)
    {
      break;
    }

    v52 = [*(a2 + 16) objectAtIndexedSubscript:v50];
    v53 = v52;
    v54 = *(v52 + *MEMORY[0x277CD73F0]);
    v55 = *(v52 + *MEMORY[0x277CD73D8]);
    if (v55)
    {
      if (v54 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE1(v55) == 1)
      {
        goto LABEL_201;
      }

      v56 = 2;
      if (v54 > 2)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE2(v55) == 2)
      {
        goto LABEL_201;
      }

      v56 = 3;
      if (v54 > 3)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE3(v55) == 3)
      {
        goto LABEL_201;
      }

      v56 = 4;
      if (v54 > 4)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE4(v55) == 4)
      {
        goto LABEL_201;
      }

      v56 = 5;
      if (v54 > 5)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE5(v55) == 5)
      {
        goto LABEL_201;
      }

      v56 = 6;
      if (v54 > 6)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE6(v55) == 6)
      {
        goto LABEL_201;
      }

      v56 = 7;
      if (v54 > 7)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE7(v55) == 7)
      {
        goto LABEL_201;
      }

      v56 = 8;
      if (v54 > 8)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE8(v55) == 8)
      {
        goto LABEL_201;
      }

      v56 = 9;
      if (v54 > 9)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE9(v55) == 9)
      {
        goto LABEL_201;
      }

      v56 = 10;
      if (v54 > 0xA)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE10(v55) == 10)
      {
        goto LABEL_201;
      }

      v56 = 11;
      if (v54 > 0xB)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE11(v55) == 11)
      {
        goto LABEL_201;
      }

      v56 = 12;
      if (v54 > 0xC)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE12(v55) == 12)
      {
        goto LABEL_201;
      }

      v56 = 13;
      if (v54 > 0xD)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE13(v55) == 13)
      {
        goto LABEL_201;
      }

      v56 = 14;
      if (v54 > 0xE)
      {
        v56 = *(v52 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE14(v55) == 14)
      {
LABEL_201:
        v54 = v56;
      }

      else
      {
        v64 = 15;
        if (HIBYTE(v55) != 15)
        {
          v64 = 16;
        }

        if (v64 > v54)
        {
          v54 = v64;
        }
      }
    }

    std::string::append(&v245, "\\[");
    if (v54)
    {
      v57 = 0;
      v58 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v53 + *MEMORY[0x277CD7410] + 4 * ((v54 + ~v57) & 0xF)));
        if (v54 - 1 == v57)
        {
          v59 = "";
        }

        else
        {
          v59 = ",";
        }

        v60 = std::string::append(&__dst, v59);
        v61 = *&v60->__r_.__value_.__l.__data_;
        v246.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
        *&v246.__r_.__value_.__l.__data_ = v61;
        v60->__r_.__value_.__l.__size_ = 0;
        v60->__r_.__value_.__r.__words[2] = 0;
        v60->__r_.__value_.__r.__words[0] = 0;
        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v62 = &v246;
        }

        else
        {
          v62 = v246.__r_.__value_.__r.__words[0];
        }

        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v63 = v246.__r_.__value_.__l.__size_;
        }

        std::string::append(&v245, v62, v63);
        if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v246.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_205;
          }

LABEL_217:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v57 = v58++;
          if (v54 <= v57)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_217;
          }

LABEL_205:
          v57 = v58++;
          if (v54 <= v57)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v245, "\\] ");
    v50 = v51 + 1;
    a2 = v228;
  }

  v65 = *(a2 + 112);
  if (v65)
  {
    v66 = *(v65 + *MEMORY[0x277CD73F0]);
    v67 = *(v65 + *MEMORY[0x277CD73D8]);
    if (v67)
    {
      if (v66 <= 1)
      {
        v68 = 1;
      }

      else
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE1(v67) == 1)
      {
        goto LABEL_269;
      }

      v68 = 2;
      if (v66 > 2)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE2(v67) == 2)
      {
        goto LABEL_269;
      }

      v68 = 3;
      if (v66 > 3)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE3(v67) == 3)
      {
        goto LABEL_269;
      }

      v68 = 4;
      if (v66 > 4)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE4(v67) == 4)
      {
        goto LABEL_269;
      }

      v68 = 5;
      if (v66 > 5)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE5(v67) == 5)
      {
        goto LABEL_269;
      }

      v68 = 6;
      if (v66 > 6)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE6(v67) == 6)
      {
        goto LABEL_269;
      }

      v68 = 7;
      if (v66 > 7)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE7(v67) == 7)
      {
        goto LABEL_269;
      }

      v68 = 8;
      if (v66 > 8)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE8(v67) == 8)
      {
        goto LABEL_269;
      }

      v68 = 9;
      if (v66 > 9)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE9(v67) == 9)
      {
        goto LABEL_269;
      }

      v68 = 10;
      if (v66 > 0xA)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE10(v67) == 10)
      {
        goto LABEL_269;
      }

      v68 = 11;
      if (v66 > 0xB)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE11(v67) == 11)
      {
        goto LABEL_269;
      }

      v68 = 12;
      if (v66 > 0xC)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE12(v67) == 12)
      {
        goto LABEL_269;
      }

      v68 = 13;
      if (v66 > 0xD)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE13(v67) == 13)
      {
        goto LABEL_269;
      }

      v68 = 14;
      if (v66 > 0xE)
      {
        v68 = *(v65 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE14(v67) == 14)
      {
LABEL_269:
        v66 = v68;
      }

      else
      {
        v225 = 15;
        if (HIBYTE(v67) != 15)
        {
          v225 = 16;
        }

        if (v225 > v66)
        {
          v66 = v225;
        }
      }
    }

    std::string::append(&v245, "\\[");
    if (v66)
    {
      v69 = 0;
      v70 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v65 + *MEMORY[0x277CD7410] + 4 * ((v66 + ~v69) & 0xF)));
        if (v66 - 1 == v69)
        {
          v71 = "";
        }

        else
        {
          v71 = ",";
        }

        v72 = std::string::append(&__dst, v71);
        v73 = *&v72->__r_.__value_.__l.__data_;
        v246.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&v246.__r_.__value_.__l.__data_ = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = &v246;
        }

        else
        {
          v74 = v246.__r_.__value_.__r.__words[0];
        }

        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v75 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v75 = v246.__r_.__value_.__l.__size_;
        }

        std::string::append(&v245, v74, v75);
        if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v246.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_273;
          }

LABEL_285:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v69 = v70++;
          if (v66 <= v69)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_285;
          }

LABEL_273:
          v69 = v70++;
          if (v66 <= v69)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v245, "\\] ");
    a2 = v228;
  }

LABEL_287:
  v76 = 0;
  v77 = 0;
  while ([*(a2 + 16) count] > v76)
  {
    v78 = [*(a2 + 16) objectAtIndexedSubscript:v76];
    v79 = vorrq_s8(vorrq_s8(*(v78 + *MEMORY[0x277CD7418]), *(v78 + *MEMORY[0x277CD7418] + 32)), vorrq_s8(*(v78 + *MEMORY[0x277CD7418] + 16), *(v78 + *MEMORY[0x277CD7418] + 48)));
    v77 |= (vmaxvq_u32(vtstq_s32(v79, v79)) & 0x80000000) != 0;
    ++v76;
  }

  v80 = *(a2 + 112);
  if (v80)
  {
    v81 = vorrq_s8(vorrq_s8(*(v80 + *MEMORY[0x277CD7418]), *(v80 + *MEMORY[0x277CD7418] + 32)), vorrq_s8(*(v80 + *MEMORY[0x277CD7418] + 16), *(v80 + *MEMORY[0x277CD7418] + 48)));
    if (!(v77 & 1 | ((vmaxvq_u32(vtstq_s32(v81, v81)) & 0x80000000) != 0)))
    {
      goto LABEL_426;
    }
  }

  else if ((v77 & 1) == 0)
  {
    goto LABEL_426;
  }

  std::string::append(&v245, "-srcSliceOffsets ");
  v82 = 0;
  while (1)
  {
    v83 = v82;
    if ([*(a2 + 16) count] <= v82)
    {
      break;
    }

    v84 = [*(a2 + 16) objectAtIndexedSubscript:v82];
    v85 = v84;
    v86 = *(v84 + *MEMORY[0x277CD73F0]);
    v87 = *(v84 + *MEMORY[0x277CD73D8]);
    if (v87)
    {
      if (v86 <= 1)
      {
        v88 = 1;
      }

      else
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE1(v87) == 1)
      {
        goto LABEL_340;
      }

      v88 = 2;
      if (v86 > 2)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE2(v87) == 2)
      {
        goto LABEL_340;
      }

      v88 = 3;
      if (v86 > 3)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE3(v87) == 3)
      {
        goto LABEL_340;
      }

      v88 = 4;
      if (v86 > 4)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE4(v87) == 4)
      {
        goto LABEL_340;
      }

      v88 = 5;
      if (v86 > 5)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE5(v87) == 5)
      {
        goto LABEL_340;
      }

      v88 = 6;
      if (v86 > 6)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE6(v87) == 6)
      {
        goto LABEL_340;
      }

      v88 = 7;
      if (v86 > 7)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE7(v87) == 7)
      {
        goto LABEL_340;
      }

      v88 = 8;
      if (v86 > 8)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE8(v87) == 8)
      {
        goto LABEL_340;
      }

      v88 = 9;
      if (v86 > 9)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE9(v87) == 9)
      {
        goto LABEL_340;
      }

      v88 = 10;
      if (v86 > 0xA)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE10(v87) == 10)
      {
        goto LABEL_340;
      }

      v88 = 11;
      if (v86 > 0xB)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE11(v87) == 11)
      {
        goto LABEL_340;
      }

      v88 = 12;
      if (v86 > 0xC)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE12(v87) == 12)
      {
        goto LABEL_340;
      }

      v88 = 13;
      if (v86 > 0xD)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE13(v87) == 13)
      {
        goto LABEL_340;
      }

      v88 = 14;
      if (v86 > 0xE)
      {
        v88 = *(v84 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE14(v87) == 14)
      {
LABEL_340:
        v86 = v88;
      }

      else
      {
        v96 = 15;
        if (HIBYTE(v87) != 15)
        {
          v96 = 16;
        }

        if (v96 > v86)
        {
          v86 = v96;
        }
      }
    }

    std::string::append(&v245, "\\[");
    if (v86)
    {
      v89 = 0;
      v90 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v85 + *MEMORY[0x277CD7418] + 4 * ((v86 + ~v89) & 0xF)));
        if (v86 - 1 == v89)
        {
          v91 = "";
        }

        else
        {
          v91 = ",";
        }

        v92 = std::string::append(&__dst, v91);
        v93 = *&v92->__r_.__value_.__l.__data_;
        v246.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
        *&v246.__r_.__value_.__l.__data_ = v93;
        v92->__r_.__value_.__l.__size_ = 0;
        v92->__r_.__value_.__r.__words[2] = 0;
        v92->__r_.__value_.__r.__words[0] = 0;
        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v94 = &v246;
        }

        else
        {
          v94 = v246.__r_.__value_.__r.__words[0];
        }

        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v95 = v246.__r_.__value_.__l.__size_;
        }

        std::string::append(&v245, v94, v95);
        if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v246.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_344;
          }

LABEL_356:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v89 = v90++;
          if (v86 <= v89)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_356;
          }

LABEL_344:
          v89 = v90++;
          if (v86 <= v89)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v245, "\\] ");
    v82 = v83 + 1;
    a2 = v228;
  }

  v97 = *(a2 + 112);
  if (v97)
  {
    v98 = *(v97 + *MEMORY[0x277CD73F0]);
    v99 = *(v97 + *MEMORY[0x277CD73D8]);
    if (v99)
    {
      if (v98 <= 1)
      {
        v100 = 1;
      }

      else
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE1(v99) == 1)
      {
        goto LABEL_408;
      }

      v100 = 2;
      if (v98 > 2)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE2(v99) == 2)
      {
        goto LABEL_408;
      }

      v100 = 3;
      if (v98 > 3)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE3(v99) == 3)
      {
        goto LABEL_408;
      }

      v100 = 4;
      if (v98 > 4)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE4(v99) == 4)
      {
        goto LABEL_408;
      }

      v100 = 5;
      if (v98 > 5)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE5(v99) == 5)
      {
        goto LABEL_408;
      }

      v100 = 6;
      if (v98 > 6)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE6(v99) == 6)
      {
        goto LABEL_408;
      }

      v100 = 7;
      if (v98 > 7)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE7(v99) == 7)
      {
        goto LABEL_408;
      }

      v100 = 8;
      if (v98 > 8)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE8(v99) == 8)
      {
        goto LABEL_408;
      }

      v100 = 9;
      if (v98 > 9)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE9(v99) == 9)
      {
        goto LABEL_408;
      }

      v100 = 10;
      if (v98 > 0xA)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE10(v99) == 10)
      {
        goto LABEL_408;
      }

      v100 = 11;
      if (v98 > 0xB)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE11(v99) == 11)
      {
        goto LABEL_408;
      }

      v100 = 12;
      if (v98 > 0xC)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE12(v99) == 12)
      {
        goto LABEL_408;
      }

      v100 = 13;
      if (v98 > 0xD)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE13(v99) == 13)
      {
        goto LABEL_408;
      }

      v100 = 14;
      if (v98 > 0xE)
      {
        v100 = *(v97 + *MEMORY[0x277CD73F0]);
      }

      if (BYTE14(v99) == 14)
      {
LABEL_408:
        v98 = v100;
      }

      else
      {
        v226 = 15;
        if (HIBYTE(v99) != 15)
        {
          v226 = 16;
        }

        if (v226 > v98)
        {
          v98 = v226;
        }
      }
    }

    std::string::append(&v245, "\\[");
    if (v98)
    {
      v101 = 0;
      v102 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v97 + *MEMORY[0x277CD7418] + 4 * ((v98 + ~v101) & 0xF)));
        if (v98 - 1 == v101)
        {
          v103 = "";
        }

        else
        {
          v103 = ",";
        }

        v104 = std::string::append(&__dst, v103);
        v105 = *&v104->__r_.__value_.__l.__data_;
        v246.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
        *&v246.__r_.__value_.__l.__data_ = v105;
        v104->__r_.__value_.__l.__size_ = 0;
        v104->__r_.__value_.__r.__words[2] = 0;
        v104->__r_.__value_.__r.__words[0] = 0;
        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v106 = &v246;
        }

        else
        {
          v106 = v246.__r_.__value_.__r.__words[0];
        }

        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v107 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v107 = v246.__r_.__value_.__l.__size_;
        }

        std::string::append(&v245, v106, v107);
        if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v246.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_412;
          }

LABEL_424:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v101 = v102++;
          if (v98 <= v101)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_424;
          }

LABEL_412:
          v101 = v102++;
          if (v98 <= v101)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v245, "\\] ");
    a2 = v228;
  }

LABEL_426:
  v108 = 0;
  while (1)
  {
    v111 = [*(a2 + 16) count];
    v112 = v108;
    if (v111 <= v108)
    {
      break;
    }

    v113 = [*(v228 + 16) objectAtIndexedSubscript:v108];
    v231 = *(v113 + *MEMORY[0x277CD73D8]);
    if ((vmaxvq_u8(vmvnq_s8(vceqq_s8(v231, xmmword_239B14650))) & 0x80) == 0)
    {
      goto LABEL_430;
    }

    std::string::append(&v245, "-srcTranspose ");
    std::to_string(&__dst, v108);
    v114 = std::string::append(&__dst, " ");
    v115 = *&v114->__r_.__value_.__l.__data_;
    v246.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
    *&v246.__r_.__value_.__l.__data_ = v115;
    v114->__r_.__value_.__l.__size_ = 0;
    v114->__r_.__value_.__r.__words[2] = 0;
    v114->__r_.__value_.__r.__words[0] = 0;
    if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v116 = &v246;
    }

    else
    {
      v116 = v246.__r_.__value_.__r.__words[0];
    }

    if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v117 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v117 = v246.__r_.__value_.__l.__size_;
    }

    std::string::append(&v245, v116, v117);
    if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v246.__r_.__value_.__l.__data_);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_472:
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_472;
    }

    std::string::append(&v245, "\\[");
    v118 = 0;
    v119 = xmmword_239B14650;
    do
    {
      v120 = v118;
      v236 = v231;
      ++v118;
      if (v120 > 0xE)
      {
        continue;
      }

      v121 = *(&v236 | v120 & 0xF);
      v122 = v118;
      while (1)
      {
        v235 = v119;
        if (*(&v235 | v122 & 0xF) == v121)
        {
          break;
        }

        if (++v122 == 16)
        {
          goto LABEL_443;
        }
      }

      v233 = v119;
      *(&v233 | v122 & 0xF) = *(&v233 | v120 & 0xF);
      v234 = v233;
      *(&v234 | v120 & 0xF) = v121;
      v229 = v234;
      std::to_string(&v242, v120);
      v123 = std::string::append(&v242, ",");
      v124 = *&v123->__r_.__value_.__l.__data_;
      v243.__r_.__value_.__r.__words[2] = v123->__r_.__value_.__r.__words[2];
      *&v243.__r_.__value_.__l.__data_ = v124;
      v123->__r_.__value_.__l.__size_ = 0;
      v123->__r_.__value_.__r.__words[2] = 0;
      v123->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v241, v122);
      if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v125 = &v241;
      }

      else
      {
        v125 = v241.__r_.__value_.__r.__words[0];
      }

      if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v126 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v126 = v241.__r_.__value_.__l.__size_;
      }

      v127 = std::string::append(&v243, v125, v126);
      v128 = *&v127->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v127->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v128;
      v127->__r_.__value_.__l.__size_ = 0;
      v127->__r_.__value_.__r.__words[2] = 0;
      v127->__r_.__value_.__r.__words[0] = 0;
      v129 = std::string::append(&__dst, ",");
      v130 = *&v129->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v129->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v130;
      v129->__r_.__value_.__l.__size_ = 0;
      v129->__r_.__value_.__r.__words[2] = 0;
      v129->__r_.__value_.__r.__words[0] = 0;
      if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v131 = &v246;
      }

      else
      {
        v131 = v246.__r_.__value_.__r.__words[0];
      }

      if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v132 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v132 = v246.__r_.__value_.__l.__size_;
      }

      std::string::append(&v245, v131, v132);
      v119 = v229;
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
        v119 = v229;
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_463:
          if ((SHIBYTE(v241.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_464;
          }

          goto LABEL_468;
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_463;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      v119 = v229;
      if ((SHIBYTE(v241.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_464:
        if ((SHIBYTE(v243.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_469;
        }

        goto LABEL_442;
      }

LABEL_468:
      operator delete(v241.__r_.__value_.__l.__data_);
      v119 = v229;
      if ((SHIBYTE(v243.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_469:
        if ((SHIBYTE(v242.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          continue;
        }

        goto LABEL_470;
      }

LABEL_442:
      operator delete(v243.__r_.__value_.__l.__data_);
      v119 = v229;
      if ((SHIBYTE(v242.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        continue;
      }

LABEL_470:
      operator delete(v242.__r_.__value_.__l.__data_);
      v119 = v229;
LABEL_443:
      ;
    }

    while (v118 != 16);
    if ((SHIBYTE(v245.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v110 = v245.__r_.__value_.__r.__words[0];
      v109 = --v245.__r_.__value_.__l.__size_;
    }

    else
    {
      v109 = SHIBYTE(v245.__r_.__value_.__r.__words[2]) - 1;
      *(&v245.__r_.__value_.__s + 23) = v109 & 0x7F;
      v110 = &v245;
    }

    v110->__r_.__value_.__s.__data_[v109] = 0;
    std::string::append(&v245, "\\] ");
LABEL_430:
    v108 = v112 + 1;
    a2 = v228;
  }

  a2 = v228;
  v133 = *(v228 + 112);
  if (!v133)
  {
    goto LABEL_522;
  }

  v230 = *(v133 + *MEMORY[0x277CD73D8]);
  v232 = xmmword_239B14650;
  if ((vmaxvq_u8(vmvnq_s8(vceqq_s8(v230, xmmword_239B14650))) & 0x80) == 0)
  {
    goto LABEL_522;
  }

  std::string::append(&v245, "-srcTranspose ");
  std::to_string(&__dst, [*(v228 + 16) count]);
  v134 = std::string::append(&__dst, " ");
  v135 = *&v134->__r_.__value_.__l.__data_;
  v246.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
  *&v246.__r_.__value_.__l.__data_ = v135;
  v134->__r_.__value_.__l.__size_ = 0;
  v134->__r_.__value_.__r.__words[2] = 0;
  v134->__r_.__value_.__r.__words[0] = 0;
  if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v136 = &v246;
  }

  else
  {
    v136 = v246.__r_.__value_.__r.__words[0];
  }

  if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v137 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v137 = v246.__r_.__value_.__l.__size_;
  }

  std::string::append(&v245, v136, v137);
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  std::string::append(&v245, "\\[");
  v138 = 0;
  while (2)
  {
    v140 = v138;
    v240 = v230;
    ++v138;
    if (v140 > 0xE)
    {
LABEL_488:
      v139 = v232;
      goto LABEL_489;
    }

    v141 = *(&v240 | v140 & 0xF);
    v142 = v138;
    v139 = v232;
    while (1)
    {
      v239 = v232;
      if (*(&v239 | v142 & 0xF) == v141)
      {
        break;
      }

      if (++v142 == 16)
      {
        goto LABEL_489;
      }
    }

    v237 = v232;
    *(&v237 | v142 & 0xF) = *(&v237 | v140 & 0xF);
    v238 = v237;
    *(&v238 | v140 & 0xF) = v141;
    v232 = v238;
    std::to_string(&v242, v140);
    v143 = std::string::append(&v242, ",");
    v144 = *&v143->__r_.__value_.__l.__data_;
    v243.__r_.__value_.__r.__words[2] = v143->__r_.__value_.__r.__words[2];
    *&v243.__r_.__value_.__l.__data_ = v144;
    v143->__r_.__value_.__l.__size_ = 0;
    v143->__r_.__value_.__r.__words[2] = 0;
    v143->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v241, v142);
    if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v145 = &v241;
    }

    else
    {
      v145 = v241.__r_.__value_.__r.__words[0];
    }

    if ((v241.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v146 = HIBYTE(v241.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v146 = v241.__r_.__value_.__l.__size_;
    }

    v147 = std::string::append(&v243, v145, v146);
    v148 = *&v147->__r_.__value_.__l.__data_;
    __dst.__r_.__value_.__r.__words[2] = v147->__r_.__value_.__r.__words[2];
    *&__dst.__r_.__value_.__l.__data_ = v148;
    v147->__r_.__value_.__l.__size_ = 0;
    v147->__r_.__value_.__r.__words[2] = 0;
    v147->__r_.__value_.__r.__words[0] = 0;
    v149 = std::string::append(&__dst, ",");
    v150 = *&v149->__r_.__value_.__l.__data_;
    v246.__r_.__value_.__r.__words[2] = v149->__r_.__value_.__r.__words[2];
    *&v246.__r_.__value_.__l.__data_ = v150;
    v149->__r_.__value_.__l.__size_ = 0;
    v149->__r_.__value_.__r.__words[2] = 0;
    v149->__r_.__value_.__r.__words[0] = 0;
    if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v151 = &v246;
    }

    else
    {
      v151 = v246.__r_.__value_.__r.__words[0];
    }

    if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v152 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v152 = v246.__r_.__value_.__l.__size_;
    }

    std::string::append(&v245, v151, v152);
    v139 = v232;
    if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v246.__r_.__value_.__l.__data_);
      v139 = v232;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_514;
      }

LABEL_509:
      if ((SHIBYTE(v241.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_510;
      }

LABEL_515:
      operator delete(v241.__r_.__value_.__l.__data_);
      v139 = v232;
      if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_516;
      }

LABEL_511:
      if ((SHIBYTE(v242.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_489;
      }

LABEL_487:
      operator delete(v242.__r_.__value_.__l.__data_);
      goto LABEL_488;
    }

    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_509;
    }

LABEL_514:
    operator delete(__dst.__r_.__value_.__l.__data_);
    v139 = v232;
    if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_515;
    }

LABEL_510:
    if ((SHIBYTE(v243.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_511;
    }

LABEL_516:
    operator delete(v243.__r_.__value_.__l.__data_);
    v139 = v232;
    if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_487;
    }

LABEL_489:
    v232 = v139;
    if (v138 != 16)
    {
      continue;
    }

    break;
  }

  if ((SHIBYTE(v245.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v154 = v245.__r_.__value_.__r.__words[0];
    v153 = --v245.__r_.__value_.__l.__size_;
  }

  else
  {
    v153 = SHIBYTE(v245.__r_.__value_.__r.__words[2]) - 1;
    *(&v245.__r_.__value_.__s + 23) = v153 & 0x7F;
    v154 = &v245;
  }

  v154->__r_.__value_.__s.__data_[v153] = 0;
  std::string::append(&v245, "\\] ");
LABEL_522:
  std::string::append(&v245, "-srcDataTypes ");
  v155 = 0;
  while (2)
  {
    if ([*(a2 + 16) count] > v155)
    {
      v156 = [*(a2 + 16) objectAtIndexedSubscript:v155];
      v157 = *(v156 + *MEMORY[0x277CD73C8]);
      v158 = MPSGetDataTypeName();
      v159 = strlen(v158);
      if (v159 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v160 = v159;
      if (v159 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v159;
      if (v159)
      {
        memmove(&__dst, v158, v159);
      }

      __dst.__r_.__value_.__s.__data_[v160] = 0;
      v161 = std::string::append(&__dst, " ");
      v162 = *&v161->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v161->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v162;
      v161->__r_.__value_.__l.__size_ = 0;
      v161->__r_.__value_.__r.__words[2] = 0;
      v161->__r_.__value_.__r.__words[0] = 0;
      if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v163 = &v246;
      }

      else
      {
        v163 = v246.__r_.__value_.__r.__words[0];
      }

      if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v164 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v164 = v246.__r_.__value_.__l.__size_;
      }

      std::string::append(&v245, v163, v164);
      a2 = v228;
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_540;
        }
      }

      else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_540:
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      ++v155;
      continue;
    }

    break;
  }

  v165 = *(a2 + 112);
  if (!v165)
  {
    goto LABEL_556;
  }

  v166 = *(v165 + *MEMORY[0x277CD73C8]);
  v167 = MPSGetDataTypeName();
  v168 = strlen(v167);
  if (v168 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v169 = v168;
  if (v168 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v168;
  if (v168)
  {
    memmove(&__dst, v167, v168);
  }

  __dst.__r_.__value_.__s.__data_[v169] = 0;
  v170 = std::string::append(&__dst, " ");
  v171 = *&v170->__r_.__value_.__l.__data_;
  v246.__r_.__value_.__r.__words[2] = v170->__r_.__value_.__r.__words[2];
  *&v246.__r_.__value_.__l.__data_ = v171;
  v170->__r_.__value_.__l.__size_ = 0;
  v170->__r_.__value_.__r.__words[2] = 0;
  v170->__r_.__value_.__r.__words[0] = 0;
  if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v172 = &v246;
  }

  else
  {
    v172 = v246.__r_.__value_.__r.__words[0];
  }

  if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v173 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v173 = v246.__r_.__value_.__l.__size_;
  }

  std::string::append(&v245, v172, v173);
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_698;
    }
  }

  else
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_556;
    }

LABEL_698:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_556:
  std::string::append(&v245, "-dstShapes ");
  std::string::append(&v245, "\\[");
  v174 = *(a2 + 208);
  v175 = *(v174 + *MEMORY[0x277CD73F0]);
  v176 = *(v174 + *MEMORY[0x277CD73D8]);
  if (v176)
  {
    if (v175 <= 1)
    {
      v177 = 1;
    }

    else
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE1(v176) == 1)
    {
      goto LABEL_600;
    }

    v177 = 2;
    if (v175 > 2)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE2(v176) == 2)
    {
      goto LABEL_600;
    }

    v177 = 3;
    if (v175 > 3)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE3(v176) == 3)
    {
      goto LABEL_600;
    }

    v177 = 4;
    if (v175 > 4)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE4(v176) == 4)
    {
      goto LABEL_600;
    }

    v177 = 5;
    if (v175 > 5)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE5(v176) == 5)
    {
      goto LABEL_600;
    }

    v177 = 6;
    if (v175 > 6)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE6(v176) == 6)
    {
      goto LABEL_600;
    }

    v177 = 7;
    if (v175 > 7)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE7(v176) == 7)
    {
      goto LABEL_600;
    }

    v177 = 8;
    if (v175 > 8)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE8(v176) == 8)
    {
      goto LABEL_600;
    }

    v177 = 9;
    if (v175 > 9)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE9(v176) == 9)
    {
      goto LABEL_600;
    }

    v177 = 10;
    if (v175 > 0xA)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE10(v176) == 10)
    {
      goto LABEL_600;
    }

    v177 = 11;
    if (v175 > 0xB)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE11(v176) == 11)
    {
      goto LABEL_600;
    }

    v177 = 12;
    if (v175 > 0xC)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE12(v176) == 12)
    {
      goto LABEL_600;
    }

    v177 = 13;
    if (v175 > 0xD)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE13(v176) == 13)
    {
      goto LABEL_600;
    }

    v177 = 14;
    if (v175 > 0xE)
    {
      v177 = *(v174 + *MEMORY[0x277CD73F0]);
    }

    if (BYTE14(v176) == 14)
    {
LABEL_600:
      v175 = v177;
    }

    else
    {
      v223 = 15;
      if (HIBYTE(v176) != 15)
      {
        v223 = 16;
      }

      if (v223 > v175)
      {
        v175 = v223;
      }
    }

LABEL_602:
    v178 = 0;
    v179 = 1;
    while (1)
    {
      std::to_string(&__dst, *(v174 + *v16 + 4 * ((v175 + ~v178) & 0xF)));
      if (v175 - 1 == v178)
      {
        v180 = "";
      }

      else
      {
        v180 = ",";
      }

      v181 = std::string::append(&__dst, v180);
      v182 = *&v181->__r_.__value_.__l.__data_;
      v246.__r_.__value_.__r.__words[2] = v181->__r_.__value_.__r.__words[2];
      *&v246.__r_.__value_.__l.__data_ = v182;
      v181->__r_.__value_.__l.__size_ = 0;
      v181->__r_.__value_.__r.__words[2] = 0;
      v181->__r_.__value_.__r.__words[0] = 0;
      if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v183 = &v246;
      }

      else
      {
        v183 = v246.__r_.__value_.__r.__words[0];
      }

      if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v184 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v184 = v246.__r_.__value_.__l.__size_;
      }

      std::string::append(&v245, v183, v184);
      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_604;
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_604:
        v178 = v179++;
        if (v175 <= v178)
        {
          goto LABEL_617;
        }

        continue;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      v178 = v179++;
      if (v175 <= v178)
      {
LABEL_617:
        v185 = 0;
        a2 = v228;
        goto LABEL_618;
      }
    }
  }

  if (v175)
  {
    goto LABEL_602;
  }

  v185 = 1;
LABEL_618:
  std::string::append(&v245, "\\] ");
  v186 = (v174 + *MEMORY[0x277CD7410]);
  if ((vmaxvq_u32(vorrq_s8(vornq_s8(vmvnq_s8(vceqq_s32(*v186, *(v174 + *v16))), vceqq_s32(v186[2], *(v174 + *v16 + 32))), vornq_s8(vmvnq_s8(vceqq_s32(v186[1], *(v174 + *v16 + 16))), vceqq_s32(v186[3], *(v174 + *v16 + 48))))) & 0x80000000) != 0)
  {
    std::string::append(&v245, "-dstSliceLengths ");
    std::string::append(&v245, "\\[");
    if ((v185 & 1) == 0)
    {
      v187 = 0;
      v188 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v174 + *MEMORY[0x277CD7410] + 4 * ((v175 + ~v187) & 0xF)));
        if (v175 - 1 == v187)
        {
          v189 = "";
        }

        else
        {
          v189 = ",";
        }

        v190 = std::string::append(&__dst, v189);
        v191 = *&v190->__r_.__value_.__l.__data_;
        v246.__r_.__value_.__r.__words[2] = v190->__r_.__value_.__r.__words[2];
        *&v246.__r_.__value_.__l.__data_ = v191;
        v190->__r_.__value_.__l.__size_ = 0;
        v190->__r_.__value_.__r.__words[2] = 0;
        v190->__r_.__value_.__r.__words[0] = 0;
        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v192 = &v246;
        }

        else
        {
          v192 = v246.__r_.__value_.__r.__words[0];
        }

        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v193 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v193 = v246.__r_.__value_.__l.__size_;
        }

        std::string::append(&v245, v192, v193);
        if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v246.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_622;
          }

LABEL_634:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v187 = v188++;
          if (v175 <= v187)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_634;
          }

LABEL_622:
          v187 = v188++;
          if (v175 <= v187)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v245, "\\] ");
    a2 = v228;
  }

  v194 = vorrq_s8(vorrq_s8(*(v174 + *MEMORY[0x277CD7418]), *(v174 + *MEMORY[0x277CD7418] + 32)), vorrq_s8(*(v174 + *MEMORY[0x277CD7418] + 16), *(v174 + *MEMORY[0x277CD7418] + 48)));
  if ((vmaxvq_u32(vtstq_s32(v194, v194)) & 0x80000000) != 0)
  {
    std::string::append(&v245, "-dstSliceOffsets ");
    std::string::append(&v245, "\\[");
    if ((v185 & 1) == 0)
    {
      v195 = 0;
      v196 = 1;
      while (1)
      {
        std::to_string(&__dst, *(v174 + *MEMORY[0x277CD7418] + 4 * ((v175 + ~v195) & 0xF)));
        if (v175 - 1 == v195)
        {
          v197 = "";
        }

        else
        {
          v197 = ",";
        }

        v198 = std::string::append(&__dst, v197);
        v199 = *&v198->__r_.__value_.__l.__data_;
        v246.__r_.__value_.__r.__words[2] = v198->__r_.__value_.__r.__words[2];
        *&v246.__r_.__value_.__l.__data_ = v199;
        v198->__r_.__value_.__l.__size_ = 0;
        v198->__r_.__value_.__r.__words[2] = 0;
        v198->__r_.__value_.__r.__words[0] = 0;
        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v200 = &v246;
        }

        else
        {
          v200 = v246.__r_.__value_.__r.__words[0];
        }

        if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v201 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v201 = v246.__r_.__value_.__l.__size_;
        }

        std::string::append(&v245, v200, v201);
        if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v246.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_640;
          }

LABEL_652:
          operator delete(__dst.__r_.__value_.__l.__data_);
          v195 = v196++;
          if (v175 <= v195)
          {
            break;
          }
        }

        else
        {
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_652;
          }

LABEL_640:
          v195 = v196++;
          if (v175 <= v195)
          {
            break;
          }
        }
      }
    }

    std::string::append(&v245, "\\] ");
  }

  std::string::append(&v245, "-dstDataTypes ");
  v202 = *(v174 + *MEMORY[0x277CD73C8]);
  v203 = MPSGetDataTypeName();
  v204 = strlen(v203);
  if (v204 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v205 = v204;
  if (v204 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v204;
  if (v204)
  {
    memmove(&__dst, v203, v204);
  }

  __dst.__r_.__value_.__s.__data_[v205] = 0;
  v206 = std::string::append(&__dst, " ");
  v207 = *&v206->__r_.__value_.__l.__data_;
  v246.__r_.__value_.__r.__words[2] = v206->__r_.__value_.__r.__words[2];
  *&v246.__r_.__value_.__l.__data_ = v207;
  v206->__r_.__value_.__l.__size_ = 0;
  v206->__r_.__value_.__r.__words[2] = 0;
  v206->__r_.__value_.__r.__words[0] = 0;
  if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v208 = &v246;
  }

  else
  {
    v208 = v246.__r_.__value_.__r.__words[0];
  }

  if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v209 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v209 = v246.__r_.__value_.__l.__size_;
  }

  std::string::append(&v245, v208, v209);
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_668;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_668;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_668:
  memset(&__dst, 0, sizeof(__dst));
  v210 = [*(a2 + 232) finalOp];
  *&v246.__r_.__value_.__r.__words[1] = 0uLL;
  v246.__r_.__value_.__r.__words[0] = &v246.__r_.__value_.__l.__size_;
  LODWORD(v243.__r_.__value_.__l.__data_) = 0;
  BaseOperation::DebugDescriptionPrivate(v210, &__dst, &v246, &v243);
  _ZNSt3__16__treeINS_12__value_typeIPK10BaseTensorDv2_iEENS_19__map_value_compareIS4_S6_NS_4lessIS4_EELb1EEENS_9allocatorIS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(v246.__r_.__value_.__l.__size_);
  *(&v241.__r_.__value_.__s + 23) = 5;
  strcpy(&v241, "-dag ");
  v211 = std::string::append(&v241, "");
  v212 = *&v211->__r_.__value_.__l.__data_;
  v242.__r_.__value_.__r.__words[2] = v211->__r_.__value_.__r.__words[2];
  *&v242.__r_.__value_.__l.__data_ = v212;
  v211->__r_.__value_.__l.__size_ = 0;
  v211->__r_.__value_.__r.__words[2] = 0;
  v211->__r_.__value_.__r.__words[0] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v214 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v214 = __dst.__r_.__value_.__l.__size_;
  }

  v215 = std::string::append(&v242, p_dst, v214);
  v216 = *&v215->__r_.__value_.__l.__data_;
  v243.__r_.__value_.__r.__words[2] = v215->__r_.__value_.__r.__words[2];
  *&v243.__r_.__value_.__l.__data_ = v216;
  v215->__r_.__value_.__l.__size_ = 0;
  v215->__r_.__value_.__r.__words[2] = 0;
  v215->__r_.__value_.__r.__words[0] = 0;
  v217 = std::string::append(&v243, "");
  v218 = *&v217->__r_.__value_.__l.__data_;
  v246.__r_.__value_.__r.__words[2] = v217->__r_.__value_.__r.__words[2];
  *&v246.__r_.__value_.__l.__data_ = v218;
  v217->__r_.__value_.__l.__size_ = 0;
  v217->__r_.__value_.__r.__words[2] = 0;
  v217->__r_.__value_.__r.__words[0] = 0;
  if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v219 = &v246;
  }

  else
  {
    v219 = v246.__r_.__value_.__r.__words[0];
  }

  if ((v246.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v220 = HIBYTE(v246.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v220 = v246.__r_.__value_.__l.__size_;
  }

  std::string::append(&v245, v219, v220);
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v243.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_682:
      if ((SHIBYTE(v242.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_683;
      }

LABEL_693:
      operator delete(v242.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v241.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_684;
      }

LABEL_694:
      operator delete(v241.__r_.__value_.__l.__data_);
      goto LABEL_684;
    }
  }

  else if ((SHIBYTE(v243.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_682;
  }

  operator delete(v243.__r_.__value_.__l.__data_);
  if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_693;
  }

LABEL_683:
  if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_694;
  }

LABEL_684:
  v222 = &v245;
  if ((v245.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v222 = v245.__r_.__value_.__r.__words[0];
  }

  MPSKernel_LogInfo(a1, v221, "%s\n", v222);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v245.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_696:
    operator delete(v245.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_696;
  }
}

void sub_239A9368C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 89) < 0)
  {
    operator delete(*(v47 - 112));
  }

  if (*(v47 - 153) < 0)
  {
    operator delete(*(v47 - 176));
  }

  if (*(v47 - 121) < 0)
  {
    operator delete(*(v47 - 144));
  }

  _Unwind_Resume(exception_object);
}

const char *___ZN9MPSDevice17IsShaderProfilingEv_block_invoke()
{
  result = getenv("MPS_SHADER_PROFILING");
  if (result)
  {
    __endptr = 0;
    v1 = result;
    result = strtol(result, &__endptr, 10);
    if (v1 != __endptr)
    {
      _MergedGlobals_3 = result > 0;
    }
  }

  return result;
}

void BaseOperation::DebugDescriptionPrivate(void *a1, std::string *a2, uint64_t a3, _DWORD *a4)
{
  v8 = a1[3];
  if (!v8 || (v9 = *v8, *(a1[3] + 8) == v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9;
  }

  NodeIdForBaseTensor = BaseOperation::GetNodeIdForBaseTensor(a3, a4, v10, 1);
  if (NodeIdForBaseTensor == -1)
  {
    return;
  }

  std::to_string(&v59, NodeIdForBaseTensor);
  v12 = std::string::insert(&v59, 0, "%");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v60, ":");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v61;
  }

  else
  {
    v16 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v61.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, size);
  if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_88:
    operator delete(v60.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_89;
  }

  operator delete(v61.__r_.__value_.__l.__data_);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_88;
  }

LABEL_14:
  if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_89:
  operator delete(v59.__r_.__value_.__l.__data_);
LABEL_15:
  memset(&v61, 0, sizeof(v61));
  BaseTensor::GetDebugDescription(v10, &v61);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v61;
  }

  else
  {
    v18 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v61.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v18, v19);
  std::string::append(a2, " = ");
  if ((*(*a1 + 16))(a1))
  {
    v20 = "COREOP:";
  }

  else
  {
    v20 = "";
  }

  std::string::append(a2, v20);
  v21 = *(v10 + 8);
  v22 = MPSGetDataTypeName();
  v23 = strlen(v22);
  if (v23 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v23;
  if (v23)
  {
    memmove(&__dst, v22, v23);
  }

  __dst.__r_.__value_.__s.__data_[v24] = 0;
  v25 = std::string::insert(&__dst, 0, "[");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v59, "]");
  v28 = *&v27->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_32:
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v60;
  }

  else
  {
    v29 = v60.__r_.__value_.__r.__words[0];
  }

  (*(*a1 + 48))(&v59, a1, v29);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v59;
  }

  else
  {
    v30 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v59.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v30, v31);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, "(");
  v32 = a1[1];
  v34 = *v32;
  v33 = v32[1];
  v35 = (*(*a1 + 24))(a1);
  v36 = v33 - v34;
  v37 = (v33 - v34) >> 3;
  v56 = v36;
  if (v35)
  {
    v38 = (*(*a1 + 32))(a1);
    std::to_string(&v59, v38);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v59;
    }

    else
    {
      v39 = v59.__r_.__value_.__r.__words[0];
    }

    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = v59.__r_.__value_.__l.__size_;
    }

    std::string::append(a2, v39, v40);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    goto LABEL_81;
  }

  if (v37)
  {
    v41 = 0;
    v42 = (v36 >> 3);
    while (1)
    {
      v43 = a1[1];
      if (v43 && (v44 = *v43, v41 < (*(a1[1] + 8) - v44) >> 3))
      {
        v45 = *(v44 + 8 * v41);
      }

      else
      {
        v45 = 0;
      }

      v46 = BaseOperation::GetNodeIdForBaseTensor(a3, a4, v45, 0);
      std::to_string(&v57, v46);
      v47 = std::string::insert(&v57, 0, "%");
      v48 = *&v47->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      v49 = std::string::append(&__dst, ":");
      v50 = *&v49->__r_.__value_.__l.__data_;
      v59.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
      *&v59.__r_.__value_.__l.__data_ = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v59;
      }

      else
      {
        v51 = v59.__r_.__value_.__r.__words[0];
      }

      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v59.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v51, v52);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_68:
          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_79;
          }

          goto LABEL_69;
        }
      }

      else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      operator delete(__dst.__r_.__value_.__l.__data_);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_79:
        operator delete(v57.__r_.__value_.__l.__data_);
      }

LABEL_69:
      memset(&v59, 0, sizeof(v59));
      BaseTensor::GetDebugDescription(v45, &v59);
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v59;
      }

      else
      {
        v53 = v59.__r_.__value_.__r.__words[0];
      }

      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = v59.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v53, v54);
      if (v37 - 1 != v41)
      {
        std::string::append(a2, ", ");
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
        if (v42 == ++v41)
        {
          break;
        }
      }

      else if (v42 == ++v41)
      {
        break;
      }
    }
  }

LABEL_81:
  std::string::append(a2, ")");
  std::string::append(a2, "  ");
  if (v37)
  {
    v55 = 0;
    do
    {
      BaseOperation::DebugDescriptionPrivate(*(*(*a1[1] + 8 * v55++) + 32), a2, a3, a4);
    }

    while ((v56 >> 3) != v55);
  }

  if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_93:
    operator delete(v61.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v60.__r_.__value_.__l.__data_);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_93;
  }
}

void sub_239A94088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t BaseOperation::GetNodeIdForBaseTensor(uint64_t a1, _DWORD *a2, unint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    ++*a2;
LABEL_21:
    operator new();
  }

  v5 = a1 + 8;
  v6 = *(a1 + 8);
  do
  {
    v7 = *(v6 + 32);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v5 = v6;
    }

    v6 = *(v6 + 8 * v9);
  }

  while (v6);
  if (v5 == a1 + 8 || *(v5 + 32) > a3)
  {
    v10 = *a2;
    *a2 = v10 + 1;
    while (1)
    {
      while (1)
      {
        v11 = v4;
        v12 = v4[4];
        if (v12 <= a3)
        {
          break;
        }

        v4 = *v11;
        if (!*v11)
        {
          goto LABEL_21;
        }
      }

      if (v12 >= a3)
      {
        break;
      }

      v4 = v11[1];
      if (!v4)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v13 = *(v5 + 40);
    if (a4)
    {
      if (HIDWORD(v13))
      {
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        v10 = v13;
      }

      *(v5 + 44) = 1;
    }

    else
    {
      return v13;
    }
  }

  return v10;
}

void BaseTensor::GetDebugDescription(uint64_t *a1, std::string *a2)
{
  v3 = *a1;
  v4 = a1[2];
  v6 = *v4;
  v5 = v4[1];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 2);
  v8 = MPSGetDataTypeName();
  v9 = strlen(v8);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    memmove(&__dst, v8, v9);
  }

  __dst.__r_.__value_.__s.__data_[v10] = 0;
  v11 = std::string::insert(&__dst, 0, "[");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v22, "][");
  v14 = *&v13->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v22.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if (!v3)
    {
      goto LABEL_37;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (v3)
  {
LABEL_24:
    v17 = 0;
    v18 = v3 - 1;
    do
    {
      std::to_string(&__p, 1);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v19, v20);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v18 != v17)
        {
LABEL_36:
          std::string::append(a2, ",");
        }
      }

      else if (v18 != v17)
      {
        goto LABEL_36;
      }

      ++v17;
    }

    while (v3 != v17);
  }

LABEL_37:
  std::string::append(a2, "]");
}

void sub_239A947AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16__treeINS_12__value_typeIPK10BaseTensorDv2_iEENS_19__map_value_compareIS4_S6_NS_4lessIS4_EELb1EEENS_9allocatorIS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(void *a1)
{
  if (a1)
  {
    _ZNSt3__16__treeINS_12__value_typeIPK10BaseTensorDv2_iEENS_19__map_value_compareIS4_S6_NS_4lessIS4_EELb1EEENS_9allocatorIS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(*a1);
    _ZNSt3__16__treeINS_12__value_typeIPK10BaseTensorDv2_iEENS_19__map_value_compareIS4_S6_NS_4lessIS4_EELb1EEENS_9allocatorIS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(a1[1]);

    operator delete(a1);
  }
}

void std::vector<long>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t EncodeDecompositionLU(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 120);
  v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v8 = [*(a4 + 40) objectAtIndexedSubscript:0];
  v9 = [*(a4 + 40) objectAtIndexedSubscript:1];
  v26 = [*(a4 + 40) objectAtIndexedSubscript:2];
  v10 = mpsMatrixFromNDArray(v7, *(*(a4 + 8) + 64));
  v28 = mpsMatrixFromNDArray(v8, *(*(a4 + 32) + 64));
  v27 = mpsMatrixFromNDArray(v9, *(*(a4 + 32) + 144));
  v11 = (v7 + *MEMORY[0x277CD7410]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  v15 = *(&v7->super.isa + *MEMORY[0x277CD73D8]);
  v31 = v11[2];
  v32 = v14;
  v30[0] = v12;
  v30[1] = v13;
  v16 = *(v30 + (v15 & 0xF));
  v33[2] = v31;
  v33[3] = v14;
  v33[0] = v12;
  v33[1] = v13;
  [v6 setRows:*(v33 + (BYTE1(v15) & 0xF))];
  [v6 setColumns:v16];
  v17 = [v6 trsmKernel];
  v18 = [v17 workspace];
  v19 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v16 + *&v18[*MEMORY[0x277CD73B8]] - 1 columns:*&v18[*MEMORY[0x277CD7390]] rowBytes:*&v18[*MEMORY[0x277CD7390]] * (*(&v7->super.isa + *MEMORY[0x277CD73C8]) >> 3) dataType:?];
  v20 = [v19 rows];
  v21 = [v19 rowBytes] * v20;
  v22 = MEMORY[0x23EE7C450](v35, a3, 0);
  v23 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:MPSAutoCache::GetTempBuffer(v22 descriptor:{v21, 0), v19}];

  [v17 setWorkspace:v23];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = ___ZL21EncodeDecompositionLUPKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK39NDArrayMultiaryMultiDestinationCallInfo_block_invoke;
  v34[3] = &unk_278B09608;
  v34[4] = v9;
  v34[5] = a1;
  v34[6] = a4;
  [v6 setCopyBlock:v34];
  [v6 encodeToCommandEncoder:a2 commandBuffer:a3 sourceMatrix:v10 resultMatrix:v28 pivotIndices:v27 status:{objc_msgSend(v26, "buffer")}];

  MPSAutoCache::~MPSAutoCache(v35);
  return 0;
}

uint64_t ___ZL21EncodeDecompositionLUPKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK39NDArrayMultiaryMultiDestinationCallInfo_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = [*(a1 + 32) descriptor];
  [v8 sliceDimension:2 withSubrange:{*(*(*(a1 + 48) + 32) + 144) / *(*(a1 + 32) + *MEMORY[0x277CD7400]), 1}];
  v9 = [*(a1 + 32) safeArrayViewWithCommandBuffer:a3 computeEncoder:a2 descriptor:v8 aliasing:1];
  v10 = [*(a1 + 32) descriptor];
  v11 = MEMORY[0x277CD7430];
  *(v10 + *MEMORY[0x277CD7458] + 8) = 1;
  *(v10 + *v11 + 8) = 1;
  v12 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:a4 descriptor:v10];
  v13 = *(*(a1 + 40) + 128);
  v16[0] = v12;
  result = [v13 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", v16, 1), v9}];
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EncodeArrayBandPart(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *&a1[*MEMORY[0x277CD7370]];
  v8 = [*(a4 + 232) graph];
  v9 = **(v8 + 56);
  if (*(*(v8 + 56) + 8) == v9)
  {
LABEL_99:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v11 = *(*v9 + 8);
  v10 = *v11;
  if (v11[1] == *v11)
  {
    goto LABEL_100;
  }

  v12 = *(*v10 + 8);
  if (v12 > 285212703)
  {
    if (v12 <= 536870915)
    {
      if (v12 > 301989895)
      {
        if (v12 == 301989896)
        {
          v13 = 512;
          goto LABEL_47;
        }

        if (v12 == 335544328)
        {
          v13 = 544;
          goto LABEL_47;
        }
      }

      else
      {
        if (v12 == 285212704)
        {
          v13 = 416;
          goto LABEL_47;
        }

        if (v12 == 285212736)
        {
          v13 = 448;
          goto LABEL_47;
        }
      }
    }

    else if (v12 <= 536870927)
    {
      if (v12 == 536870916)
      {
        v13 = 0;
        goto LABEL_47;
      }

      if (v12 == 536870920)
      {
        v13 = 32;
        goto LABEL_47;
      }
    }

    else
    {
      switch(v12)
      {
        case 536870928:
          v13 = 64;
          goto LABEL_47;
        case 536870944:
          v13 = 96;
          goto LABEL_47;
        case 536870976:
          v13 = 128;
          goto LABEL_47;
      }
    }
  }

  else if (v12 <= 31)
  {
    if (v12 > 7)
    {
      if (v12 == 8)
      {
        v13 = 192;
        goto LABEL_47;
      }

      if (v12 == 16)
      {
        v13 = 224;
        goto LABEL_47;
      }
    }

    else
    {
      if (v12 == -1879048176)
      {
        v13 = 384;
        goto LABEL_47;
      }

      if (v12 == 4)
      {
        v13 = 160;
        goto LABEL_47;
      }
    }
  }

  else if (v12 <= 268435463)
  {
    if (v12 == 32)
    {
      v13 = 256;
      goto LABEL_47;
    }

    if (v12 == 64)
    {
      v13 = 288;
      goto LABEL_47;
    }
  }

  else
  {
    switch(v12)
    {
      case 268435464:
        v13 = 480;
        goto LABEL_47;
      case 268435472:
        v13 = 320;
        goto LABEL_47;
      case 268435488:
        v13 = 352;
        goto LABEL_47;
    }
  }

  v13 = 576;
LABEL_47:
  v14 = [*(a4 + 232) graph];
  v15 = **(v14 + 56);
  if (*(*(v14 + 56) + 8) == v15)
  {
    goto LABEL_99;
  }

  v17 = *(*v15 + 24);
  v16 = *v17;
  if (v17[1] == *v17)
  {
    goto LABEL_100;
  }

  v18 = *(*v16 + 8);
  if (v18 > 285212703)
  {
    if (v18 <= 536870915)
    {
      if (v18 > 301989895)
      {
        if (v18 == 301989896)
        {
          v19 = 16;
          goto LABEL_93;
        }

        if (v18 == 335544328)
        {
          v19 = 17;
          goto LABEL_93;
        }
      }

      else
      {
        if (v18 == 285212704)
        {
          v19 = 13;
          goto LABEL_93;
        }

        if (v18 == 285212736)
        {
          v19 = 14;
          goto LABEL_93;
        }
      }
    }

    else if (v18 <= 536870927)
    {
      if (v18 == 536870916)
      {
        v19 = 0;
        goto LABEL_93;
      }

      if (v18 == 536870920)
      {
        v19 = 1;
        goto LABEL_93;
      }
    }

    else
    {
      switch(v18)
      {
        case 536870928:
          v19 = 2;
          goto LABEL_93;
        case 536870944:
          v19 = 3;
          goto LABEL_93;
        case 536870976:
          v19 = 4;
          goto LABEL_93;
      }
    }
  }

  else if (v18 <= 31)
  {
    if (v18 > 7)
    {
      if (v18 == 8)
      {
        v19 = 6;
        goto LABEL_93;
      }

      if (v18 == 16)
      {
        v19 = 7;
        goto LABEL_93;
      }
    }

    else
    {
      if (v18 == -1879048176)
      {
        v19 = 12;
        goto LABEL_93;
      }

      if (v18 == 4)
      {
        v19 = 5;
        goto LABEL_93;
      }
    }
  }

  else if (v18 <= 268435463)
  {
    if (v18 == 32)
    {
      v19 = 8;
      goto LABEL_93;
    }

    if (v18 == 64)
    {
      v19 = 9;
      goto LABEL_93;
    }
  }

  else
  {
    switch(v18)
    {
      case 268435464:
        v19 = 15;
        goto LABEL_93;
      case 268435472:
        v19 = 10;
        goto LABEL_93;
      case 268435488:
        v19 = 11;
        goto LABEL_93;
    }
  }

  v19 = 18;
LABEL_93:
  *&v20 = -1;
  *(&v20 + 1) = -1;
  v44 = v20;
  v45 = v20;
  v41 = -1;
  v43 = v20;
  v40 = v20;
  v42 = v19 | v13;
  *&v45 = [*(a4 + 16) count] | 0x10000;
  v34 = *&a1[*MEMORY[0x277CD7360]];
  v35 = *&a1[*MEMORY[0x277CD7368]];
  v33 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v22 = [PipelineStateForMPSKey threadExecutionWidth];
  v23 = [*(a4 + 232) graph];
  v24 = **(v23 + 56);
  if (*(*(v23 + 56) + 8) == v24)
  {
    goto LABEL_99;
  }

  v26 = *(*v24 + 24);
  v25 = *v26;
  if (v26[1] == *v26)
  {
LABEL_100:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = *(*v25 + 16);
  v27 = *v28;
  if (*(v28 + 8) - *v28 <= 8uLL)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  if (v22 <= 1)
  {
    v22 = 1;
  }

  v29 = (v27[1] + 1) >> 1;
  v30 = (v22 + *v27 - 1) / v22;
  [a2 setComputePipelineState:PipelineStateForMPSKey];
  MPSLibrary::ReleaseComputeState();
  v31 = [a1 numLower];
  v39 = __PAIR64__([a1 numUpper], v31);
  [a2 setBytes:&v39 length:8 atIndex:29];
  MPSSetNDArraysOnComputeEncoder(a2, a4, 2, 0, 0);
  v38[0] = v30;
  v38[1] = v29;
  v38[2] = 1;
  v36 = v22;
  v37 = xmmword_239B06620;
  [a2 dispatchThreadgroups:v38 threadsPerThreadgroup:&v36];
  return 0;
}

uint64_t EncodeQuantizedGatherND(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;
  v11 = v10;
  v12 = v7;
  v543 = *(v7 + *MEMORY[0x277CD7370]);
  v13 = v7[11];
  v562 = [v7 batchDimensions];
  v545 = [v12 allowNegativeIndices];
  [*(v9 + 16) count];
  if ([*(v9 + 16) count] != v13 && MTLReportFailureTypeEnabled())
  {
    v455 = v13;
    v459 = [*(v9 + 16) count];
    MTLReportFailure();
  }

  v560 = [*(v9 + 232) inputTensorAtIndex:{0, v455, v459}];
  v14 = [*(v9 + 232) inputTensorAtIndex:1];
  v15 = [*(v9 + 232) inputTensorAtIndex:2];
  v526 = [*(v9 + 232) outputTensorAtIndex:0];
  v16 = [*(v9 + 16) objectAtIndexedSubscript:0];
  v17 = [*(v9 + 16) objectAtIndexedSubscript:1];
  v492 = [*(v9 + 16) objectAtIndexedSubscript:2];
  v493 = *(v9 + 208);
  if (![v12[20] hasZeroPoint])
  {
    v491 = 0;
    v549 = 0;
    v18 = 3;
    if (![v12[20] hasMinValue])
    {
      goto LABEL_4;
    }

LABEL_6:
    v535 = [*(v9 + 232) inputTensorAtIndex:v18];
    v489 = [*(v9 + 16) objectAtIndexedSubscript:v18];
    goto LABEL_7;
  }

  v549 = [*(v9 + 232) inputTensorAtIndex:3];
  v491 = [*(v9 + 16) objectAtIndexedSubscript:3];
  v18 = 4;
  if ([v12[20] hasMinValue])
  {
    goto LABEL_6;
  }

LABEL_4:
  v489 = 0;
  v535 = 0;
LABEL_7:
  v19 = **(v14 + 16);
  if (*(*(v14 + 16) + 8) == v19)
  {
    goto LABEL_531;
  }

  v20 = *v526;
  v557 = v14;
  v21 = *v14;
  v552 = *v19;
  v548 = v15;
  v22 = *v15;
  v558 = *v560;
  if (*v560 != *v15 && MTLReportFailureTypeEnabled())
  {
    v456 = v558;
    v460 = v22;
    MTLReportFailure();
  }

  if ((v20 < v562 || v21 <= v562 || v558 <= v562) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v554 = v21;
  v23 = v560[2];
  v25 = *v23;
  v24 = v23[1];
  v490 = v16;
  if (v24 != v25)
  {
    if (((v24 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_532;
  }

  v26 = v526[2];
  v28 = *v26;
  v27 = v26[1];
  v488 = v11;
  v495 = v9;
  v563 = v12;
  if (v27 != v28)
  {
    if (((v27 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v29 = v557[2];
  v31 = *v29;
  v30 = v29[1];
  v494 = v17;
  if (v30 != v31)
  {
    if (((v30 - v31) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v32 = v548[2];
  v34 = *v32;
  v33 = v32[1];
  if (v33 != v34)
  {
    if (((v33 - v34) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v562)
  {
    v35 = v562 - 1;
    v36 = (8 * v554 - 8);
    v37 = (8 * v558 - 8);
    v38 = (8 * v20 - 8);
    do
    {
      v41 = *v38--;
      v40 = v41;
      v43 = *v37--;
      v42 = v43;
      v44 = v43 == v40 || v42 == 1;
      if (!v44 || (*v36 != v40 ? (v39 = *v36 == 1) : (v39 = 1), !v39))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v456 = v35;
          MTLReportFailure();
        }
      }

      --v35;
      --v36;
    }

    while (v35 != -1);
  }

  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*(8 * i) % *(8 * i) && MTLReportFailureTypeEnabled())
      {
        v463 = i;
        v465 = *(8 * i);
        v456 = i;
        v460 = v465;
        MTLReportFailure();
      }
    }
  }

  if (v549)
  {
    v46 = *v549;
    if (v558 != *v549 && MTLReportFailureTypeEnabled())
    {
      v456 = v558;
      v460 = v46;
      MTLReportFailure();
    }

    v47 = v549[2];
    v49 = *v47;
    v48 = v47[1];
    if (v48 != v49)
    {
      if (((v48 - v49) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (v22)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*(8 * j) % *(8 * j) && MTLReportFailureTypeEnabled())
        {
          v463 = j;
          v465 = *(8 * j);
          v456 = j;
          v460 = v465;
          MTLReportFailure();
        }
      }

      operator delete(0);
    }
  }

  if (v535)
  {
    v50 = *v535;
    if (v558 != *v535 && MTLReportFailureTypeEnabled())
    {
      v456 = v558;
      v460 = v50;
      MTLReportFailure();
    }

    v51 = v535[2];
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

    if (v22)
    {
      for (k = 0; k != v22; ++k)
      {
        if (*(8 * k) % *(8 * k) && MTLReportFailureTypeEnabled())
        {
          v463 = k;
          v465 = *(8 * k);
          v456 = k;
          v460 = v465;
          MTLReportFailure();
        }
      }

      operator delete(0);
    }
  }

  v54 = v558 - v562;
  if (v558 - v562 < v552 && MTLReportFailureTypeEnabled())
  {
    v456 = v558 - v562;
    v460 = v552;
    MTLReportFailure();
  }

  v55 = v554 + ~v562;
  if (v20 - v562 != v54 + v55 - v552 && MTLReportFailureTypeEnabled())
  {
    v460 = v554 + ~v562;
    v463 = v558 - v562 - v552;
    v456 = v20 - v562;
    MTLReportFailure();
  }

  v56 = v54 - v552;
  if (v56)
  {
    v71 = 0;
    if (v56 <= 1)
    {
      v72 = 1;
    }

    else
    {
      v72 = v56;
    }

    do
    {
      if (*(8 * v71) != 1)
      {
        *(8 * v71);
        *(8 * v71);
      }

      ++v71;
    }

    while (v72 != v71);
  }

  if (v55)
  {
    v57 = 0;
    do
    {
      v58 = v57 + 1;
      v59 = *(8 * v57 + 8);
      if (*(8 * v56 + 8 * v57) != v59 && v59 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v463 = v57 + 1;
          v465 = *(8 * v57 + 8);
          v456 = v56 + v57;
          v460 = *(8 * v56 + 8 * v57);
          MTLReportFailure();
        }
      }

      ++v57;
    }

    while (v55 != v58);
  }

  v62 = *(v16 + *MEMORY[0x277CD73C8]);
  v63 = *(v16 + *MEMORY[0x277CD73C8]);
  if (v63 != 4 && v63 != 8)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v65 = *v560[2];
  if (*(v560[2] + 8) == v65)
  {
    goto LABEL_531;
  }

  v66 = 8 / v63;
  if (*v65 % v66 && MTLReportFailureTypeEnabled())
  {
    v453 = *v560[2];
    if (*(v560[2] + 8) == v453)
    {
      goto LABEL_531;
    }

    v456 = *v453;
    v460 = v66;
    MTLReportFailure();
  }

  v67 = MEMORY[0x277CD73F0];
  v68 = *(v16 + *MEMORY[0x277CD73F0]);
  v69 = MEMORY[0x277CD73D8];
  if (v68)
  {
    v70 = *(v16 + *MEMORY[0x277CD73D8]);
    if (v70)
    {
      goto LABEL_546;
    }

    v76 = 1;
    do
    {
      v729 = v70;
      v77 = v76 + 1;
      if (v68 == v76)
      {
        break;
      }

      v39 = v76 == *(&v729 | v76 & 0xF);
      ++v76;
    }

    while (v39);
    if (v68 > v77 - 1)
    {
LABEL_546:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  if ([v563[20] hasZeroPoint])
  {
    v78 = *&v491[*MEMORY[0x277CD73C8]];
    v79 = *&v491[*MEMORY[0x277CD73C8]];
    if (v79 != 4 && v79 != 8)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    v81 = *v549[2];
    if (*(v549[2] + 8) != v81)
    {
      v82 = *v81;
      if (v82 == 1 || (v83 = 8 / v79, !(v82 % v83)) || !MTLReportFailureTypeEnabled())
      {
LABEL_116:
        v84 = *&v491[*v67];
        if (v84)
        {
          v85 = *&v491[*v69];
          if (v85)
          {
            goto LABEL_547;
          }

          v87 = 1;
          do
          {
            v728 = v85;
            v88 = v87 + 1;
            if (v84 == v87)
            {
              break;
            }

            v39 = v87 == *(&v728 | v87 & 0xF);
            ++v87;
          }

          while (v39);
          if (v84 > v88 - 1)
          {
LABEL_547:
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }
        }

        goto LABEL_126;
      }

      v454 = *v549[2];
      if (*(v549[2] + 8) != v454)
      {
        v457 = *v454;
        v461 = v83;
        MTLReportFailure();
        goto LABEL_116;
      }
    }

LABEL_531:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_126:
  v89 = *v557[2];
  if (*(v557[2] + 8) == v89)
  {
    goto LABEL_531;
  }

  v90 = *v557;
  v91 = *v89;
  v92 = *MEMORY[0x277CD73C8];
  v93 = *(v16 + v92);
  v541 = *v526;
  if (v93 > 285212703)
  {
    if (v93 <= 536870915)
    {
      if (v93 > 301989895)
      {
        if (v93 == 301989896)
        {
          v94 = 512;
          v95 = *&v494[v92];
          if (v95 <= 285212703)
          {
            goto LABEL_187;
          }
        }

        else
        {
          if (v93 != 335544328)
          {
            goto LABEL_217;
          }

          v94 = 544;
          v95 = *&v494[v92];
          if (v95 <= 285212703)
          {
            goto LABEL_187;
          }
        }
      }

      else if (v93 == 285212704)
      {
        v94 = 416;
        v95 = *&v494[v92];
        if (v95 <= 285212703)
        {
          goto LABEL_187;
        }
      }

      else
      {
        if (v93 != 285212736)
        {
          goto LABEL_217;
        }

        v94 = 448;
        v95 = *&v494[v92];
        if (v95 <= 285212703)
        {
          goto LABEL_187;
        }
      }
    }

    else if (v93 <= 536870927)
    {
      if (v93 == 536870916)
      {
        v94 = 0;
        v95 = *&v494[v92];
        if (v95 > 285212703)
        {
          goto LABEL_218;
        }

        goto LABEL_187;
      }

      if (v93 != 536870920)
      {
        goto LABEL_217;
      }

      v94 = 32;
      v95 = *&v494[v92];
      if (v95 <= 285212703)
      {
        goto LABEL_187;
      }
    }

    else
    {
      switch(v93)
      {
        case 536870928:
          v94 = 64;
          v95 = *&v494[v92];
          if (v95 <= 285212703)
          {
            goto LABEL_187;
          }

          break;
        case 536870944:
          v94 = 96;
          v95 = *&v494[v92];
          if (v95 <= 285212703)
          {
            goto LABEL_187;
          }

          break;
        case 536870976:
          v94 = 128;
          v95 = *&v494[v92];
          if (v95 <= 285212703)
          {
            goto LABEL_187;
          }

          break;
        default:
          goto LABEL_217;
      }
    }
  }

  else if (v93 <= 31)
  {
    if (v93 > 7)
    {
      if (v93 == 8)
      {
        v94 = 192;
        v95 = *&v494[v92];
        if (v95 <= 285212703)
        {
          goto LABEL_187;
        }
      }

      else
      {
        if (v93 != 16)
        {
          goto LABEL_217;
        }

        v94 = 224;
        v95 = *&v494[v92];
        if (v95 <= 285212703)
        {
          goto LABEL_187;
        }
      }
    }

    else if (v93 == -1879048176)
    {
      v94 = 384;
      v95 = *&v494[v92];
      if (v95 <= 285212703)
      {
        goto LABEL_187;
      }
    }

    else
    {
      if (v93 != 4)
      {
        goto LABEL_217;
      }

      v94 = 160;
      v95 = *&v494[v92];
      if (v95 <= 285212703)
      {
        goto LABEL_187;
      }
    }
  }

  else if (v93 <= 268435463)
  {
    if (v93 == 32)
    {
      v94 = 256;
      v95 = *&v494[v92];
      if (v95 <= 285212703)
      {
        goto LABEL_187;
      }
    }

    else
    {
      if (v93 != 64)
      {
        goto LABEL_217;
      }

      v94 = 288;
      v95 = *&v494[v92];
      if (v95 <= 285212703)
      {
        goto LABEL_187;
      }
    }
  }

  else
  {
    switch(v93)
    {
      case 268435464:
        v94 = 480;
        v95 = *&v494[v92];
        if (v95 <= 285212703)
        {
          goto LABEL_187;
        }

        break;
      case 268435472:
        v94 = 320;
        v95 = *&v494[v92];
        if (v95 <= 285212703)
        {
          goto LABEL_187;
        }

        break;
      case 268435488:
        v94 = 352;
        v95 = *&v494[v92];
        if (v95 > 285212703)
        {
          break;
        }

LABEL_187:
        if (v95 <= 31)
        {
          if (v95 > 7)
          {
            if (v95 == 8)
            {
              v94 |= 0x1800u;
              v96 = *&v492[v92];
              if (v96 > 285212703)
              {
                goto LABEL_269;
              }

              goto LABEL_247;
            }

            if (v95 == 16)
            {
              v94 |= 0x1C00u;
              v96 = *&v492[v92];
              if (v96 > 285212703)
              {
                goto LABEL_269;
              }

              goto LABEL_247;
            }
          }

          else
          {
            if (v95 == -1879048176)
            {
              v94 |= 0x3000u;
              v96 = *&v492[v92];
              if (v96 > 285212703)
              {
                goto LABEL_269;
              }

              goto LABEL_247;
            }

            if (v95 == 4)
            {
              v94 |= 0x1400u;
              v96 = *&v492[v92];
              if (v96 > 285212703)
              {
                goto LABEL_269;
              }

              goto LABEL_247;
            }
          }
        }

        else if (v95 <= 268435463)
        {
          if (v95 == 32)
          {
            v94 |= 0x2000u;
            v96 = *&v492[v92];
            if (v96 > 285212703)
            {
              goto LABEL_269;
            }

            goto LABEL_247;
          }

          if (v95 == 64)
          {
            v94 |= 0x2400u;
            v96 = *&v492[v92];
            if (v96 > 285212703)
            {
              goto LABEL_269;
            }

            goto LABEL_247;
          }
        }

        else
        {
          switch(v95)
          {
            case 268435464:
              v94 |= 0x3C00u;
              v96 = *&v492[v92];
              if (v96 > 285212703)
              {
                goto LABEL_269;
              }

              goto LABEL_247;
            case 268435472:
              v94 |= 0x2800u;
              v96 = *&v492[v92];
              if (v96 > 285212703)
              {
                goto LABEL_269;
              }

              goto LABEL_247;
            case 268435488:
              v94 |= 0x2C00u;
              v96 = *&v492[v92];
              if (v96 > 285212703)
              {
                goto LABEL_269;
              }

              goto LABEL_247;
          }
        }

LABEL_268:
        v94 |= 0x4800u;
        v96 = *&v492[v92];
        if (v96 > 285212703)
        {
          goto LABEL_269;
        }

        goto LABEL_247;
      default:
LABEL_217:
        v94 = 576;
        v95 = *&v494[v92];
        if (v95 > 285212703)
        {
          break;
        }

        goto LABEL_187;
    }
  }

LABEL_218:
  if (v95 <= 536870915)
  {
    if (v95 > 301989895)
    {
      if (v95 == 301989896)
      {
        v94 |= 0x4000u;
        v96 = *&v492[v92];
        if (v96 <= 285212703)
        {
          goto LABEL_247;
        }
      }

      else
      {
        if (v95 != 335544328)
        {
          goto LABEL_268;
        }

        v94 |= 0x4400u;
        v96 = *&v492[v92];
        if (v96 <= 285212703)
        {
          goto LABEL_247;
        }
      }
    }

    else if (v95 == 285212704)
    {
      v94 |= 0x3400u;
      v96 = *&v492[v92];
      if (v96 <= 285212703)
      {
        goto LABEL_247;
      }
    }

    else
    {
      if (v95 != 285212736)
      {
        goto LABEL_268;
      }

      v94 |= 0x3800u;
      v96 = *&v492[v92];
      if (v96 <= 285212703)
      {
        goto LABEL_247;
      }
    }
  }

  else if (v95 <= 536870927)
  {
    if (v95 == 536870916)
    {
      v96 = *&v492[v92];
      if (v96 > 285212703)
      {
        goto LABEL_269;
      }

      goto LABEL_247;
    }

    if (v95 != 536870920)
    {
      goto LABEL_268;
    }

    v94 |= 0x400u;
    v96 = *&v492[v92];
    if (v96 <= 285212703)
    {
      goto LABEL_247;
    }
  }

  else
  {
    switch(v95)
    {
      case 536870928:
        v94 |= 0x800u;
        v96 = *&v492[v92];
        if (v96 <= 285212703)
        {
          goto LABEL_247;
        }

        break;
      case 536870944:
        v94 |= 0xC00u;
        v96 = *&v492[v92];
        if (v96 <= 285212703)
        {
          goto LABEL_247;
        }

        break;
      case 536870976:
        v94 |= 0x1000u;
        v96 = *&v492[v92];
        if (v96 > 285212703)
        {
          break;
        }

LABEL_247:
        v97 = v493;
        if (v96 <= 31)
        {
          if (v96 > 7)
          {
            if (v96 == 8)
            {
              v98 = 196608;
              goto LABEL_291;
            }

            if (v96 == 16)
            {
              v98 = 229376;
              goto LABEL_291;
            }
          }

          else
          {
            if (v96 == -1879048176)
            {
              v98 = 393216;
              goto LABEL_291;
            }

            if (v96 == 4)
            {
              v98 = 163840;
              goto LABEL_291;
            }
          }
        }

        else if (v96 <= 268435463)
        {
          if (v96 == 32)
          {
            v98 = 0x40000;
            goto LABEL_291;
          }

          if (v96 == 64)
          {
            v98 = 294912;
            goto LABEL_291;
          }
        }

        else
        {
          switch(v96)
          {
            case 268435464:
              v98 = 491520;
              goto LABEL_291;
            case 268435472:
              v98 = 327680;
              goto LABEL_291;
            case 268435488:
              v98 = 360448;
              goto LABEL_291;
          }
        }

        goto LABEL_290;
      default:
        goto LABEL_268;
    }
  }

LABEL_269:
  v97 = v493;
  if (v96 <= 536870915)
  {
    if (v96 > 301989895)
    {
      if (v96 == 301989896)
      {
        v98 = 0x80000;
        goto LABEL_291;
      }

      if (v96 == 335544328)
      {
        v98 = 557056;
        goto LABEL_291;
      }
    }

    else
    {
      if (v96 == 285212704)
      {
        v98 = 425984;
        goto LABEL_291;
      }

      if (v96 == 285212736)
      {
        v98 = 458752;
        goto LABEL_291;
      }
    }
  }

  else if (v96 <= 536870927)
  {
    if (v96 == 536870916)
    {
      v98 = 0;
      goto LABEL_291;
    }

    if (v96 == 536870920)
    {
      v98 = 0x8000;
      goto LABEL_291;
    }
  }

  else
  {
    switch(v96)
    {
      case 536870928:
        v98 = 0x10000;
        goto LABEL_291;
      case 536870944:
        v98 = 98304;
        goto LABEL_291;
      case 536870976:
        v98 = 0x20000;
        goto LABEL_291;
    }
  }

LABEL_290:
  v98 = 589824;
LABEL_291:
  v559 = *v560;
  v99 = *v560 - v562;
  v100 = v94 | v98;
  if (![v563[20] hasZeroPoint])
  {
    goto LABEL_337;
  }

  v101 = *&v491[*MEMORY[0x277CD73C8]];
  if (v101 > 285212703)
  {
    if (v101 <= 536870915)
    {
      if (v101 > 301989895)
      {
        if (v101 == 301989896)
        {
          v102 = 0x1000000;
          goto LABEL_336;
        }

        if (v101 == 335544328)
        {
          v102 = 17825792;
          goto LABEL_336;
        }
      }

      else
      {
        if (v101 == 285212704)
        {
          v102 = 13631488;
          goto LABEL_336;
        }

        if (v101 == 285212736)
        {
          v102 = 14680064;
          goto LABEL_336;
        }
      }
    }

    else if (v101 <= 536870927)
    {
      if (v101 == 536870916)
      {
        v102 = 0;
        goto LABEL_336;
      }

      if (v101 == 536870920)
      {
        v102 = 0x100000;
        goto LABEL_336;
      }
    }

    else
    {
      switch(v101)
      {
        case 536870928:
          v102 = 0x200000;
          goto LABEL_336;
        case 536870944:
          v102 = 3145728;
          goto LABEL_336;
        case 536870976:
          v102 = 0x400000;
          goto LABEL_336;
      }
    }

LABEL_335:
    v102 = 18874368;
    goto LABEL_336;
  }

  if (v101 <= 31)
  {
    if (v101 > 7)
    {
      if (v101 == 8)
      {
        v102 = 6291456;
        goto LABEL_336;
      }

      if (v101 == 16)
      {
        v102 = 7340032;
        goto LABEL_336;
      }
    }

    else
    {
      if (v101 == -1879048176)
      {
        v102 = 12582912;
        goto LABEL_336;
      }

      if (v101 == 4)
      {
        v102 = 5242880;
        goto LABEL_336;
      }
    }

    goto LABEL_335;
  }

  if (v101 <= 268435463)
  {
    if (v101 == 32)
    {
      v102 = 0x800000;
      goto LABEL_336;
    }

    if (v101 == 64)
    {
      v102 = 9437184;
      goto LABEL_336;
    }

    goto LABEL_335;
  }

  if (v101 == 268435464)
  {
    v102 = 15728640;
    goto LABEL_336;
  }

  if (v101 == 268435472)
  {
    v102 = 10485760;
    goto LABEL_336;
  }

  if (v101 != 268435488)
  {
    goto LABEL_335;
  }

  v102 = 11534336;
LABEL_336:
  v100 |= v102;
LABEL_337:
  v103 = v91;
  v104 = v99 - v91;
  v105 = [v563[20] hasMinValue];
  v106 = *MEMORY[0x277CD73C8];
  if (!v105)
  {
    goto LABEL_383;
  }

  v107 = *&v489[v106];
  if (v107 > 285212703)
  {
    if (v107 <= 536870915)
    {
      if (v107 > 301989895)
      {
        if (v107 == 301989896)
        {
          v108 = 0x20000000;
          goto LABEL_382;
        }

        if (v107 == 335544328)
        {
          v108 = 570425344;
          goto LABEL_382;
        }
      }

      else
      {
        if (v107 == 285212704)
        {
          v108 = 436207616;
          goto LABEL_382;
        }

        if (v107 == 285212736)
        {
          v108 = 469762048;
          goto LABEL_382;
        }
      }
    }

    else if (v107 <= 536870927)
    {
      if (v107 == 536870916)
      {
        v108 = 0;
        goto LABEL_382;
      }

      if (v107 == 536870920)
      {
        v108 = 0x2000000;
        goto LABEL_382;
      }
    }

    else
    {
      switch(v107)
      {
        case 536870928:
          v108 = 0x4000000;
          goto LABEL_382;
        case 536870944:
          v108 = 100663296;
          goto LABEL_382;
        case 536870976:
          v108 = 0x8000000;
          goto LABEL_382;
      }
    }

LABEL_381:
    v108 = 603979776;
    goto LABEL_382;
  }

  if (v107 <= 31)
  {
    if (v107 > 7)
    {
      if (v107 == 8)
      {
        v108 = 201326592;
        goto LABEL_382;
      }

      if (v107 == 16)
      {
        v108 = 234881024;
        goto LABEL_382;
      }
    }

    else
    {
      if (v107 == -1879048176)
      {
        v108 = 402653184;
        goto LABEL_382;
      }

      if (v107 == 4)
      {
        v108 = 167772160;
        goto LABEL_382;
      }
    }

    goto LABEL_381;
  }

  if (v107 <= 268435463)
  {
    if (v107 == 32)
    {
      v108 = 0x10000000;
      goto LABEL_382;
    }

    if (v107 == 64)
    {
      v108 = 301989888;
      goto LABEL_382;
    }

    goto LABEL_381;
  }

  if (v107 == 268435464)
  {
    v108 = 503316480;
    goto LABEL_382;
  }

  if (v107 == 268435472)
  {
    v108 = 335544320;
    goto LABEL_382;
  }

  if (v107 != 268435488)
  {
    goto LABEL_381;
  }

  v108 = 369098752;
LABEL_382:
  v100 |= v108;
LABEL_383:
  v109 = *&v97[v106];
  if (v109 > 285212703)
  {
    if (v109 <= 536870915)
    {
      if (v109 > 301989895)
      {
        if (v109 == 301989896)
        {
          v110 = 16;
          goto LABEL_427;
        }

        if (v109 == 335544328)
        {
          v110 = 17;
          goto LABEL_427;
        }
      }

      else
      {
        if (v109 == 285212704)
        {
          v110 = 13;
          goto LABEL_427;
        }

        if (v109 == 285212736)
        {
          v110 = 14;
          goto LABEL_427;
        }
      }
    }

    else if (v109 <= 536870927)
    {
      if (v109 == 536870916)
      {
        v110 = 0;
        goto LABEL_427;
      }

      if (v109 == 536870920)
      {
        v110 = 1;
        goto LABEL_427;
      }
    }

    else
    {
      switch(v109)
      {
        case 536870928:
          v110 = 2;
          goto LABEL_427;
        case 536870944:
          v110 = 3;
          goto LABEL_427;
        case 536870976:
          v110 = 4;
          goto LABEL_427;
      }
    }
  }

  else if (v109 <= 31)
  {
    if (v109 > 7)
    {
      if (v109 == 8)
      {
        v110 = 6;
        goto LABEL_427;
      }

      if (v109 == 16)
      {
        v110 = 7;
        goto LABEL_427;
      }
    }

    else
    {
      if (v109 == -1879048176)
      {
        v110 = 12;
        goto LABEL_427;
      }

      if (v109 == 4)
      {
        v110 = 5;
        goto LABEL_427;
      }
    }
  }

  else if (v109 <= 268435463)
  {
    if (v109 == 32)
    {
      v110 = 8;
      goto LABEL_427;
    }

    if (v109 == 64)
    {
      v110 = 9;
      goto LABEL_427;
    }
  }

  else
  {
    switch(v109)
    {
      case 268435464:
        v110 = 15;
        goto LABEL_427;
      case 268435472:
        v110 = 10;
        goto LABEL_427;
      case 268435488:
        v110 = 11;
        goto LABEL_427;
    }
  }

  v110 = 18;
LABEL_427:
  *&v111 = -1;
  *(&v111 + 1) = -1;
  v741 = v111;
  v740 = v111;
  v739 = v111;
  v737 = -1;
  v736 = v111;
  v738 = v110 | v100;
  *&v741 = [*(v495 + 16) count] | 0x10000;
  if ([v563[20] hasMinValue])
  {
    v112 = 64;
  }

  else
  {
    v112 = 0;
  }

  v113 = [v563[20] hasZeroPoint];
  v114 = 32;
  if (!v113)
  {
    v114 = 0;
  }

  v115 = 16;
  if (!v545)
  {
    v115 = 0;
  }

  v116 = MEMORY[0x277CD7370];
  v117 = *(v563 + *MEMORY[0x277CD7370]);
  v737 = v104 | v115 | v112 | v114;
  v462 = *(v563 + *MEMORY[0x277CD7360]);
  v464 = *(v563 + *MEMORY[0x277CD7368]);
  v458 = *(v495 + 232);
  MPSLibrary::CreateUberShaderKey();
  v118 = *(v563 + *v116);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v120 = PipelineStateForMPSKey;
  v121 = [PipelineStateForMPSKey threadExecutionWidth];
  [v488 setComputePipelineState:v120];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v488, v495, 4, 0, 0);
  v122 = v526[2];
  v123 = v122[1];
  v466 = v121;
  if (v123 != *v122)
  {
    if (((v123 - *v122) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_532:
    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v125 = v557[2];
  v127 = *v125;
  v126 = v125[1];
  if (v126 != v127)
  {
    if (((v126 - v127) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v128 = xmmword_239B0A0D0;
  v129 = 0uLL;
  v130 = 0uLL;
  v131 = 0uLL;
  v132 = v562;
  if (v90 >= v562)
  {
    v133 = (8 * (v90 + v559) - 8 * v103 - 16 * v562 - 8);
    v134 = v90 - v562;
    do
    {
      v727[0] = v128;
      v727[1] = v129;
      v727[2] = v130;
      v727[3] = v131;
      if (*(v727 + (v134 & 0xF)) == 1)
      {
        v135 = *v133;
        v723 = v128;
        v724 = v129;
        v725 = v130;
        v726 = v131;
        *(&v723 + (v134 & 0xF)) = v135;
        v131 = v726;
        v130 = v725;
        v129 = v724;
        v128 = v723;
      }

      ++v134;
      v133 += 2;
      --v132;
    }

    while (v132);
  }

  v551 = v130;
  v553 = v131;
  v555 = v128;
  *__p = v129;
  bzero(v732, 0x310uLL);
  v731[0] = v541;
  v731[1] = v90;
  v731[2] = v103;
  v731[3] = v559;
  v731[4] = v562;
  v731[5] = v104;
  v732[0] = v90 - v562 - 1;
  v733 = 1;
  v734 = 1;
  v136 = MEMORY[0x277CD7428];
  v137 = &v490[*MEMORY[0x277CD7428]];
  v547 = *(v137 + 7);
  v546 = *(v137 + 6);
  v544 = *(v137 + 5);
  v542 = *(v137 + 4);
  v540 = *(v137 + 3);
  v539 = *(v137 + 2);
  v538 = *(v137 + 1);
  v537 = *v137;
  makeStrideBytes();
  v138 = MEMORY[0x277CD73D0];
  v139 = *MEMORY[0x277CD73D0];
  v140.i64[0] = 0x100000001;
  v140.i64[1] = 0x100000001;
  v141 = vceqq_s32(*&v494[v139], v140);
  v142.i64[0] = v141.i32[0];
  v142.i64[1] = v141.i32[1];
  v143 = v142;
  v144 = vceqq_s32(*&v494[v139 + 16], v140);
  v142.i64[0] = v144.i32[0];
  v142.i64[1] = v144.i32[1];
  v145 = v142;
  v146 = vceqq_s32(*&v494[v139 + 32], v140);
  v142.i64[0] = v146.i32[0];
  v142.i64[1] = v146.i32[1];
  v147 = v142;
  v148 = vceqq_s32(*&v494[v139 + 48], v140);
  v142.i64[0] = v148.i32[0];
  v142.i64[1] = v148.i32[1];
  v149 = v142;
  v142.i64[0] = v141.i32[2];
  v142.i64[1] = v141.i32[3];
  v150 = v142;
  v142.i64[0] = v144.i32[2];
  v142.i64[1] = v144.i32[3];
  v151 = v142;
  v142.i64[0] = v146.i32[2];
  v142.i64[1] = v146.i32[3];
  v152 = v142;
  v142.i64[0] = v148.i32[2];
  v142.i64[1] = v148.i32[3];
  v153 = vbicq_s8(v749, v142);
  v154 = vbicq_s8(v747, v152);
  v155 = vbicq_s8(v745, v151);
  v156 = vbicq_s8(v743, v150);
  v157 = vbicq_s8(v748, v149);
  v158 = vbicq_s8(v746, v147);
  v159 = vbicq_s8(v744, v145);
  v160 = MEMORY[0x277CD73D8];
  v161 = *MEMORY[0x277CD73D8];
  v162 = *&v494[*MEMORY[0x277CD73C8]];
  v163 = *&v494[v161];
  v164 = BYTE1(*&v494[v161]);
  v165 = BYTE2(*&v494[v161]);
  v166 = BYTE3(*&v494[v161]);
  v167 = BYTE4(*&v494[v161]);
  v168 = WORD2(*&v494[v161]) >> 8;
  v169 = BYTE6(*&v494[v161]);
  v170 = HIBYTE(*&v494[v161]);
  v171 = *&v494[v161 + 8];
  v172 = BYTE1(*&v494[v161 + 8]);
  v173 = BYTE2(*&v494[v161 + 8]);
  v174 = BYTE3(*&v494[v161 + 8]);
  v175 = BYTE12(*&v494[v161]);
  v176 = WORD6(*&v494[v161]) >> 8;
  v177 = vbicq_s8(v742, v143);
  v178 = BYTE14(*&v494[v161]);
  v179 = HIBYTE(*&v494[v161]);
  if ((v162 & 0xFFF8) != 0)
  {
    v180 = v162 >> 3;
    v722[0] = v177;
    v722[1] = v156;
    v722[2] = v159;
    v722[3] = v155;
    v722[4] = v158;
    v722[5] = v154;
    v722[6] = v157;
    v722[7] = v153;
    v181 = *(v722 + (v163 & 0xF)) / v180;
    v721[0] = v177;
    v721[1] = v156;
    v721[2] = v159;
    v721[3] = v155;
    v721[4] = v158;
    v721[5] = v154;
    v721[6] = v157;
    v721[7] = v153;
    v182 = *(v721 + (v164 & 0xF));
    v720[0] = v177;
    v720[1] = v156;
    v720[2] = v159;
    v720[3] = v155;
    v720[4] = v158;
    v720[5] = v154;
    v720[6] = v157;
    v720[7] = v153;
    v183 = *(v720 + (v165 & 0xF)) / v180;
    v719[0] = v177;
    v719[1] = v156;
    v719[2] = v159;
    v719[3] = v155;
    v719[4] = v158;
    v719[5] = v154;
    v719[6] = v157;
    v719[7] = v153;
    v184 = *(v719 + (v166 & 0xF)) / v180;
    v718[0] = v177;
    v718[1] = v156;
    v718[2] = v159;
    v718[3] = v155;
    v718[4] = v158;
    v718[5] = v154;
    v718[6] = v157;
    v718[7] = v153;
    v185 = *(v718 + (v167 & 0xF)) / v180;
    v717[0] = v177;
    v717[1] = v156;
    v717[2] = v159;
    v717[3] = v155;
    v717[4] = v158;
    v717[5] = v154;
    v717[6] = v157;
    v717[7] = v153;
    v186 = *(v717 + (v168 & 0xF));
    v716[0] = v177;
    v716[1] = v156;
    v716[2] = v159;
    v716[3] = v155;
    v716[4] = v158;
    v716[5] = v154;
    v716[6] = v157;
    v716[7] = v153;
    v187 = *(v716 + (v169 & 0xF));
    v715[0] = v177;
    v715[1] = v156;
    v715[2] = v159;
    v715[3] = v155;
    v715[4] = v158;
    v715[5] = v154;
    v715[6] = v157;
    v715[7] = v153;
    v188 = *(v715 + (v170 & 0xF)) / v180;
    v714[0] = v177;
    v714[1] = v156;
    v714[2] = v159;
    v714[3] = v155;
    v714[4] = v158;
    v714[5] = v154;
    v714[6] = v157;
    v714[7] = v153;
    v189 = *(v714 + (v171 & 0xF)) / v180;
    v713[0] = v177;
    v713[1] = v156;
    v713[2] = v159;
    v713[3] = v155;
    v713[4] = v158;
    v713[5] = v154;
    v713[6] = v157;
    v713[7] = v153;
    v190 = *(v713 + (v172 & 0xF)) / v180;
    v712[0] = v177;
    v712[1] = v156;
    v712[2] = v159;
    v712[3] = v155;
    v712[4] = v158;
    v712[5] = v154;
    v712[6] = v157;
    v712[7] = v153;
    v191 = *(v712 + (v173 & 0xF)) / v180;
    v711[0] = v177;
    v711[1] = v156;
    v711[2] = v159;
    v711[3] = v155;
    v711[4] = v158;
    v711[5] = v154;
    v711[6] = v157;
    v711[7] = v153;
    v192 = *(v711 + (v174 & 0xF));
    v710[0] = v177;
    v710[1] = v156;
    v710[2] = v159;
    v710[3] = v155;
    v710[4] = v158;
    v710[5] = v154;
    v710[6] = v157;
    v710[7] = v153;
    v193 = *(v710 + (v175 & 0xF)) / v180;
    v709[0] = v177;
    v709[1] = v156;
    v709[2] = v159;
    v709[3] = v155;
    v709[4] = v158;
    v709[5] = v154;
    v709[6] = v157;
    v709[7] = v153;
    v194 = *(v709 + (v176 & 0xF)) / v180;
    v708[0] = v177;
    v708[1] = v156;
    v708[2] = v159;
    v708[3] = v155;
    v708[4] = v158;
    v708[5] = v154;
    v708[6] = v157;
    v708[7] = v153;
    v195 = *(v708 + (v178 & 0xF)) / v180;
    v707[0] = v177;
    v707[1] = v156;
    v707[2] = v159;
    v707[3] = v155;
    v707[4] = v158;
    v707[5] = v154;
    v707[6] = v157;
    v707[7] = v153;
    v196.i64[0] = v195;
    v196.i64[1] = *(v707 + (v179 & 0xF)) / v180;
    v524 = v196;
    v196.i64[0] = v193;
    v196.i64[1] = v194;
    v522 = v196;
    v196.i64[0] = v191;
    v196.i64[1] = v192 / v180;
    v520 = v196;
    v196.i64[0] = v189;
    v196.i64[1] = v190;
    v487 = v196;
    v196.i64[0] = v187 / v180;
    v196.i64[1] = v188;
    v486 = v196;
    v196.i64[0] = v185;
    v196.i64[1] = v186 / v180;
    v485 = v196;
    v196.i64[0] = v183;
    v196.i64[1] = v184;
    v484 = v196;
    v197.i64[0] = v181;
    v197.i64[1] = v182 / v180;
  }

  else
  {
    v706[0] = v177;
    v706[1] = v156;
    v706[2] = v159;
    v706[3] = v155;
    v706[4] = v158;
    v706[5] = v154;
    v706[6] = v157;
    v706[7] = v153;
    v705[0] = v177;
    v705[1] = v156;
    v705[2] = v159;
    v705[3] = v155;
    v705[4] = v158;
    v705[5] = v154;
    v705[6] = v157;
    v705[7] = v153;
    v704[0] = v177;
    v704[1] = v156;
    v704[2] = v159;
    v704[3] = v155;
    v704[4] = v158;
    v704[5] = v154;
    v704[6] = v157;
    v704[7] = v153;
    v703[0] = v177;
    v703[1] = v156;
    v703[2] = v159;
    v703[3] = v155;
    v703[4] = v158;
    v703[5] = v154;
    v703[6] = v157;
    v703[7] = v153;
    v702[0] = v177;
    v702[1] = v156;
    v702[2] = v159;
    v702[3] = v155;
    v702[4] = v158;
    v702[5] = v154;
    v702[6] = v157;
    v702[7] = v153;
    v701[0] = v177;
    v701[1] = v156;
    v701[2] = v159;
    v701[3] = v155;
    v701[4] = v158;
    v701[5] = v154;
    v701[6] = v157;
    v701[7] = v153;
    v700[0] = v177;
    v700[1] = v156;
    v700[2] = v159;
    v700[3] = v155;
    v700[4] = v158;
    v700[5] = v154;
    v700[6] = v157;
    v700[7] = v153;
    v699[0] = v177;
    v699[1] = v156;
    v699[2] = v159;
    v699[3] = v155;
    v699[4] = v158;
    v699[5] = v154;
    v699[6] = v157;
    v699[7] = v153;
    v698[0] = v177;
    v698[1] = v156;
    v698[2] = v159;
    v698[3] = v155;
    v698[4] = v158;
    v698[5] = v154;
    v698[6] = v157;
    v698[7] = v153;
    v697[0] = v177;
    v697[1] = v156;
    v697[2] = v159;
    v697[3] = v155;
    v697[4] = v158;
    v697[5] = v154;
    v697[6] = v157;
    v697[7] = v153;
    v696[0] = v177;
    v696[1] = v156;
    v696[2] = v159;
    v696[3] = v155;
    v696[4] = v158;
    v696[5] = v154;
    v696[6] = v157;
    v696[7] = v153;
    v695[0] = v177;
    v695[1] = v156;
    v695[2] = v159;
    v695[3] = v155;
    v695[4] = v158;
    v695[5] = v154;
    v695[6] = v157;
    v695[7] = v153;
    v694[0] = v177;
    v694[1] = v156;
    v694[2] = v159;
    v694[3] = v155;
    v694[4] = v158;
    v694[5] = v154;
    v694[6] = v157;
    v694[7] = v153;
    v693[0] = v177;
    v693[1] = v156;
    v693[2] = v159;
    v693[3] = v155;
    v693[4] = v158;
    v693[5] = v154;
    v693[6] = v157;
    v693[7] = v153;
    v692[0] = v177;
    v692[1] = v156;
    v692[2] = v159;
    v692[3] = v155;
    v692[4] = v158;
    v692[5] = v154;
    v692[6] = v157;
    v692[7] = v153;
    v691[0] = v177;
    v691[1] = v156;
    v691[2] = v159;
    v691[3] = v155;
    v691[4] = v158;
    v691[5] = v154;
    v691[6] = v157;
    v691[7] = v153;
    v198.i64[0] = *(v692 + (v178 & 0xF));
    v199.i64[0] = *(v694 + (v175 & 0xF));
    v198.i64[1] = *(v691 + (v179 & 0xF));
    v524 = v198;
    v199.i64[1] = *(v693 + (v176 & 0xF));
    v522 = v199;
    v198.i64[0] = *(v696 + (v173 & 0xF));
    v198.i64[1] = *(v695 + (v174 & 0xF));
    v520 = v198;
    v198.i64[0] = *(v698 + (v171 & 0xF));
    v198.i64[1] = *(v697 + (v172 & 0xF));
    v487 = v198;
    v198.i64[0] = *(v700 + (v169 & 0xF));
    v198.i64[1] = *(v699 + (v170 & 0xF));
    v486 = v198;
    v198.i64[0] = *(v702 + (v167 & 0xF));
    v198.i64[1] = *(v701 + (v168 & 0xF));
    v485 = v198;
    v198.i64[0] = *(v704 + (v165 & 0xF));
    v198.i64[1] = *(v703 + (v166 & 0xF));
    v484 = v198;
    v197.i64[0] = *(v706 + (v163 & 0xF));
    v197.i64[1] = *(v705 + (v164 & 0xF));
  }

  v482 = v197;
  v200 = v535;
  v201 = *&v494[v161];
  v202 = &v494[v139];
  v203 = *v202;
  v204 = v202[1];
  v205 = v202[2];
  v690 = v202[3];
  v689[2] = v205;
  v689[1] = v204;
  v689[0] = v203;
  v156.i32[0] = *(v689 + (v201 & 0xF));
  v478 = v156;
  v688[3] = v690;
  v688[2] = v205;
  v688[1] = v204;
  v688[0] = v203;
  v156.i32[0] = *(v688 + (BYTE1(v201) & 0xF));
  v479 = v156;
  v687[3] = v690;
  v687[2] = v205;
  v687[1] = v204;
  v687[0] = v203;
  v156.i32[0] = *(v687 + (BYTE2(v201) & 0xF));
  v481 = v156;
  v686[3] = v690;
  v686[2] = v205;
  v686[1] = v204;
  v686[0] = v203;
  v156.i32[0] = *(v686 + (BYTE3(v201) & 0xF));
  v483 = v156;
  v685[3] = v690;
  v685[2] = v205;
  v685[1] = v204;
  v685[0] = v203;
  v156.i32[0] = *(v685 + (BYTE4(v201) & 0xF));
  v473 = v156;
  v684[3] = v690;
  v684[2] = v205;
  v684[1] = v204;
  v684[0] = v203;
  v156.i32[0] = *(v684 + (BYTE5(v201) & 0xF));
  v475 = v156;
  v683[3] = v690;
  v683[2] = v205;
  v683[1] = v204;
  v683[0] = v203;
  v156.i32[0] = *(v683 + (BYTE6(v201) & 0xF));
  v477 = v156;
  v682[3] = v690;
  v682[2] = v205;
  v682[1] = v204;
  v682[0] = v203;
  v156.i32[0] = *(v682 + (BYTE7(v201) & 0xF));
  v480 = v156;
  v681[3] = v690;
  v681[2] = v205;
  v681[1] = v204;
  v681[0] = v203;
  v156.i32[0] = *(v681 + (BYTE8(v201) & 0xF));
  v469 = v156;
  v680[3] = v690;
  v680[2] = v205;
  v680[1] = v204;
  v680[0] = v203;
  v156.i32[0] = *(v680 + (BYTE9(v201) & 0xF));
  v471 = v156;
  v679[3] = v690;
  v679[2] = v205;
  v679[1] = v204;
  v679[0] = v203;
  v156.i32[0] = *(v679 + (BYTE10(v201) & 0xF));
  v474 = v156;
  v678[3] = v690;
  v678[2] = v205;
  v678[1] = v204;
  v678[0] = v203;
  v156.i32[0] = *(v678 + (BYTE11(v201) & 0xF));
  v476 = v156;
  v677[3] = v690;
  v677[2] = v205;
  v677[1] = v204;
  v677[0] = v203;
  v156.i32[0] = *(v677 + (BYTE12(v201) & 0xF));
  v467 = v156;
  v676[3] = v690;
  v676[2] = v205;
  v676[1] = v204;
  v676[0] = v203;
  v156.i32[0] = *(v676 + (BYTE13(v201) & 0xF));
  v468 = v156;
  v675[3] = v690;
  v675[2] = v205;
  v675[1] = v204;
  v675[0] = v203;
  v156.i32[0] = *(v675 + (BYTE14(v201) & 0xF));
  v470 = v156;
  v674[3] = v690;
  v674[2] = v205;
  v674[1] = v204;
  v674[0] = v203;
  v203.i32[0] = *(v674 + (HIBYTE(v201) & 0xF));
  v472 = v203;
  makeStrideBytes();
  v206 = &v493[*v138];
  v207.i64[0] = 0x100000001;
  v207.i64[1] = 0x100000001;
  v208 = vceqq_s32(*v206, v207);
  v209.i64[0] = v208.i32[0];
  v209.i64[1] = v208.i32[1];
  v210 = v209;
  v211 = vceqq_s32(v206[1], v207);
  v209.i64[0] = v211.i32[0];
  v209.i64[1] = v211.i32[1];
  v212 = v209;
  v213 = vceqq_s32(v206[2], v207);
  v209.i64[0] = v213.i32[0];
  v209.i64[1] = v213.i32[1];
  v214 = v209;
  v215 = vceqq_s32(v206[3], v207);
  v209.i64[0] = v215.i32[0];
  v209.i64[1] = v215.i32[1];
  v216 = v209;
  v209.i64[0] = v208.i32[2];
  v209.i64[1] = v208.i32[3];
  v217 = v209;
  v209.i64[0] = v211.i32[2];
  v209.i64[1] = v211.i32[3];
  v218 = v209;
  v209.i64[0] = v213.i32[2];
  v209.i64[1] = v213.i32[3];
  v219 = v209;
  v209.i64[0] = v215.i32[2];
  v209.i64[1] = v215.i32[3];
  v220 = vbicq_s8(v749, v209);
  v221 = vbicq_s8(v747, v219);
  v222 = vbicq_s8(v745, v218);
  v223 = vbicq_s8(v743, v217);
  v224 = vbicq_s8(v748, v216);
  v225 = vbicq_s8(v746, v214);
  v226 = vbicq_s8(v744, v212);
  v227 = *&v493[*MEMORY[0x277CD73C8]];
  v228 = *&v493[*v160];
  v229 = BYTE1(*&v493[*v160]);
  v230 = BYTE2(*&v493[*v160]);
  v231 = BYTE3(*&v493[*v160]);
  v232 = BYTE4(*&v493[*v160]);
  v233 = WORD2(*&v493[*v160]) >> 8;
  v234 = BYTE6(*&v493[*v160]);
  v235 = HIBYTE(*&v493[*v160]);
  v236 = *&v493[*v160 + 8];
  v237 = BYTE1(*&v493[*v160 + 8]);
  v238 = BYTE2(*&v493[*v160 + 8]);
  v239 = BYTE3(*&v493[*v160 + 8]);
  v240 = BYTE12(*&v493[*v160]);
  v241 = WORD6(*&v493[*v160]) >> 8;
  v242 = vbicq_s8(v742, v210);
  v243 = BYTE14(*&v493[*v160]);
  v244 = HIBYTE(*&v493[*v160]);
  if ((v227 & 0xFFF8) != 0)
  {
    v245 = v227 >> 3;
    v673[0] = v242;
    v673[1] = v223;
    v673[2] = v226;
    v673[3] = v222;
    v673[4] = v225;
    v673[5] = v221;
    v673[6] = v224;
    v673[7] = v220;
    v246 = *(v673 + (v228 & 0xF)) / v245;
    v672[0] = v242;
    v672[1] = v223;
    v672[2] = v226;
    v672[3] = v222;
    v672[4] = v225;
    v672[5] = v221;
    v672[6] = v224;
    v672[7] = v220;
    v247 = *(v672 + (v229 & 0xF));
    v671[0] = v242;
    v671[1] = v223;
    v671[2] = v226;
    v671[3] = v222;
    v671[4] = v225;
    v671[5] = v221;
    v671[6] = v224;
    v671[7] = v220;
    v248 = *(v671 + (v230 & 0xF)) / v245;
    v670[0] = v242;
    v670[1] = v223;
    v670[2] = v226;
    v670[3] = v222;
    v670[4] = v225;
    v670[5] = v221;
    v670[6] = v224;
    v670[7] = v220;
    v249 = *(v670 + (v231 & 0xF)) / v245;
    v669[0] = v242;
    v669[1] = v223;
    v669[2] = v226;
    v669[3] = v222;
    v669[4] = v225;
    v669[5] = v221;
    v669[6] = v224;
    v669[7] = v220;
    v250 = *(v669 + (v232 & 0xF)) / v245;
    v668[0] = v242;
    v668[1] = v223;
    v668[2] = v226;
    v668[3] = v222;
    v668[4] = v225;
    v668[5] = v221;
    v668[6] = v224;
    v668[7] = v220;
    v251 = *(v668 + (v233 & 0xF));
    v667[0] = v242;
    v667[1] = v223;
    v667[2] = v226;
    v667[3] = v222;
    v667[4] = v225;
    v667[5] = v221;
    v667[6] = v224;
    v667[7] = v220;
    v252 = *(v667 + (v234 & 0xF));
    v666[0] = v242;
    v666[1] = v223;
    v666[2] = v226;
    v666[3] = v222;
    v666[4] = v225;
    v666[5] = v221;
    v666[6] = v224;
    v666[7] = v220;
    v253 = *(v666 + (v235 & 0xF)) / v245;
    v665[0] = v242;
    v665[1] = v223;
    v665[2] = v226;
    v665[3] = v222;
    v665[4] = v225;
    v665[5] = v221;
    v665[6] = v224;
    v665[7] = v220;
    v254 = *(v665 + (v236 & 0xF)) / v245;
    v664[0] = v242;
    v664[1] = v223;
    v664[2] = v226;
    v664[3] = v222;
    v664[4] = v225;
    v664[5] = v221;
    v664[6] = v224;
    v664[7] = v220;
    v255 = *(v664 + (v237 & 0xF)) / v245;
    v663[0] = v242;
    v663[1] = v223;
    v663[2] = v226;
    v663[3] = v222;
    v663[4] = v225;
    v663[5] = v221;
    v663[6] = v224;
    v663[7] = v220;
    v256 = *(v663 + (v238 & 0xF)) / v245;
    v662[0] = v242;
    v662[1] = v223;
    v662[2] = v226;
    v662[3] = v222;
    v662[4] = v225;
    v662[5] = v221;
    v662[6] = v224;
    v662[7] = v220;
    v257 = *(v662 + (v239 & 0xF));
    v661[0] = v242;
    v661[1] = v223;
    v661[2] = v226;
    v661[3] = v222;
    v661[4] = v225;
    v661[5] = v221;
    v661[6] = v224;
    v661[7] = v220;
    v258 = *(v661 + (v240 & 0xF)) / v245;
    v660[0] = v242;
    v660[1] = v223;
    v660[2] = v226;
    v660[3] = v222;
    v660[4] = v225;
    v660[5] = v221;
    v660[6] = v224;
    v660[7] = v220;
    v259 = *(v660 + (v241 & 0xF)) / v245;
    v659[0] = v242;
    v659[1] = v223;
    v659[2] = v226;
    v659[3] = v222;
    v659[4] = v225;
    v659[5] = v221;
    v659[6] = v224;
    v659[7] = v220;
    v260 = *(v659 + (v243 & 0xF)) / v245;
    v658[0] = v242;
    v658[1] = v223;
    v658[2] = v226;
    v658[3] = v222;
    v658[4] = v225;
    v658[5] = v221;
    v658[6] = v224;
    v658[7] = v220;
    *&v261 = v260;
    *(&v261 + 1) = *(v658 + (v244 & 0xF)) / v245;
    v519 = v261;
    *&v261 = v258;
    *(&v261 + 1) = v259;
    v518 = v261;
    *&v261 = v256;
    *(&v261 + 1) = v257 / v245;
    v517 = v261;
    *&v261 = v254;
    *(&v261 + 1) = v255;
    v516 = v261;
    *&v261 = v252 / v245;
    *(&v261 + 1) = v253;
    v515 = v261;
    *&v261 = v250;
    *(&v261 + 1) = v251 / v245;
    v514 = v261;
    *&v261 = v248;
    *(&v261 + 1) = v249;
    v513 = v261;
    *&v262 = v246;
    *(&v262 + 1) = v247 / v245;
  }

  else
  {
    v657[0] = v242;
    v657[1] = v223;
    v657[2] = v226;
    v657[3] = v222;
    v657[4] = v225;
    v657[5] = v221;
    v657[6] = v224;
    v657[7] = v220;
    v656[0] = v242;
    v656[1] = v223;
    v656[2] = v226;
    v656[3] = v222;
    v656[4] = v225;
    v656[5] = v221;
    v656[6] = v224;
    v656[7] = v220;
    v655[0] = v242;
    v655[1] = v223;
    v655[2] = v226;
    v655[3] = v222;
    v655[4] = v225;
    v655[5] = v221;
    v655[6] = v224;
    v655[7] = v220;
    v654[0] = v242;
    v654[1] = v223;
    v654[2] = v226;
    v654[3] = v222;
    v654[4] = v225;
    v654[5] = v221;
    v654[6] = v224;
    v654[7] = v220;
    v653[0] = v242;
    v653[1] = v223;
    v653[2] = v226;
    v653[3] = v222;
    v653[4] = v225;
    v653[5] = v221;
    v653[6] = v224;
    v653[7] = v220;
    v652[0] = v242;
    v652[1] = v223;
    v652[2] = v226;
    v652[3] = v222;
    v652[4] = v225;
    v652[5] = v221;
    v652[6] = v224;
    v652[7] = v220;
    v651[0] = v242;
    v651[1] = v223;
    v651[2] = v226;
    v651[3] = v222;
    v651[4] = v225;
    v651[5] = v221;
    v651[6] = v224;
    v651[7] = v220;
    v650[0] = v242;
    v650[1] = v223;
    v650[2] = v226;
    v650[3] = v222;
    v650[4] = v225;
    v650[5] = v221;
    v650[6] = v224;
    v650[7] = v220;
    v649[0] = v242;
    v649[1] = v223;
    v649[2] = v226;
    v649[3] = v222;
    v649[4] = v225;
    v649[5] = v221;
    v649[6] = v224;
    v649[7] = v220;
    v648[0] = v242;
    v648[1] = v223;
    v648[2] = v226;
    v648[3] = v222;
    v648[4] = v225;
    v648[5] = v221;
    v648[6] = v224;
    v648[7] = v220;
    v647[0] = v242;
    v647[1] = v223;
    v647[2] = v226;
    v647[3] = v222;
    v647[4] = v225;
    v647[5] = v221;
    v647[6] = v224;
    v647[7] = v220;
    v646[0] = v242;
    v646[1] = v223;
    v646[2] = v226;
    v646[3] = v222;
    v646[4] = v225;
    v646[5] = v221;
    v646[6] = v224;
    v646[7] = v220;
    v645[0] = v242;
    v645[1] = v223;
    v645[2] = v226;
    v645[3] = v222;
    v645[4] = v225;
    v645[5] = v221;
    v645[6] = v224;
    v645[7] = v220;
    v644[0] = v242;
    v644[1] = v223;
    v644[2] = v226;
    v644[3] = v222;
    v644[4] = v225;
    v644[5] = v221;
    v644[6] = v224;
    v644[7] = v220;
    v643[0] = v242;
    v643[1] = v223;
    v643[2] = v226;
    v643[3] = v222;
    v643[4] = v225;
    v643[5] = v221;
    v643[6] = v224;
    v643[7] = v220;
    v642[0] = v242;
    v642[1] = v223;
    v642[2] = v226;
    v642[3] = v222;
    v642[4] = v225;
    v642[5] = v221;
    v642[6] = v224;
    v642[7] = v220;
    *&v263 = *(v643 + (v243 & 0xF));
    *&v264 = *(v645 + (v240 & 0xF));
    *(&v263 + 1) = *(v642 + (v244 & 0xF));
    v519 = v263;
    *(&v264 + 1) = *(v644 + (v241 & 0xF));
    v518 = v264;
    *&v263 = *(v647 + (v238 & 0xF));
    *(&v263 + 1) = *(v646 + (v239 & 0xF));
    v517 = v263;
    *&v263 = *(v649 + (v236 & 0xF));
    *(&v263 + 1) = *(v648 + (v237 & 0xF));
    v516 = v263;
    *&v263 = *(v651 + (v234 & 0xF));
    *(&v263 + 1) = *(v650 + (v235 & 0xF));
    v515 = v263;
    *&v263 = *(v653 + (v232 & 0xF));
    *(&v263 + 1) = *(v652 + (v233 & 0xF));
    v514 = v263;
    *&v263 = *(v655 + (v230 & 0xF));
    *(&v263 + 1) = *(v654 + (v231 & 0xF));
    v513 = v263;
    *&v262 = *(v657 + (v228 & 0xF));
    *(&v262 + 1) = *(v656 + (v229 & 0xF));
  }

  v512 = v262;
  makeStrideBytes();
  v265 = &v492[*v138];
  v266.i64[0] = 0x100000001;
  v266.i64[1] = 0x100000001;
  v267 = vceqq_s32(*v265, v266);
  v268.i64[0] = v267.i32[0];
  v268.i64[1] = v267.i32[1];
  v269 = v268;
  v270 = vceqq_s32(v265[1], v266);
  v268.i64[0] = v270.i32[0];
  v268.i64[1] = v270.i32[1];
  v271 = v268;
  v272 = vceqq_s32(v265[2], v266);
  v268.i64[0] = v272.i32[0];
  v268.i64[1] = v272.i32[1];
  v273 = v268;
  v274 = vceqq_s32(v265[3], v266);
  v268.i64[0] = v274.i32[0];
  v268.i64[1] = v274.i32[1];
  v275 = v268;
  v268.i64[0] = v267.i32[2];
  v268.i64[1] = v267.i32[3];
  v276 = v268;
  v268.i64[0] = v270.i32[2];
  v268.i64[1] = v270.i32[3];
  v277 = v268;
  v268.i64[0] = v272.i32[2];
  v268.i64[1] = v272.i32[3];
  v278 = v268;
  v268.i64[0] = v274.i32[2];
  v268.i64[1] = v274.i32[3];
  v279 = vbicq_s8(v749, v268);
  v280 = vbicq_s8(v747, v278);
  v281 = vbicq_s8(v745, v277);
  v282 = vbicq_s8(v743, v276);
  v283 = vbicq_s8(v748, v275);
  v284 = vbicq_s8(v746, v273);
  v285 = vbicq_s8(v744, v271);
  v286 = *&v492[*MEMORY[0x277CD73C8]];
  v287 = *&v492[*v160];
  v288 = BYTE1(*&v492[*v160]);
  v289 = BYTE2(*&v492[*v160]);
  v290 = BYTE3(*&v492[*v160]);
  v291 = BYTE4(*&v492[*v160]);
  v292 = WORD2(*&v492[*v160]) >> 8;
  v293 = BYTE6(*&v492[*v160]);
  v294 = HIBYTE(*&v492[*v160]);
  v295 = *&v492[*v160 + 8];
  v296 = BYTE1(*&v492[*v160 + 8]);
  v297 = BYTE2(*&v492[*v160 + 8]);
  v298 = BYTE3(*&v492[*v160 + 8]);
  v299 = BYTE12(*&v492[*v160]);
  v300 = WORD6(*&v492[*v160]) >> 8;
  v301 = vbicq_s8(v742, v269);
  v302 = BYTE14(*&v492[*v160]);
  v303 = HIBYTE(*&v492[*v160]);
  if ((v286 & 0xFFF8) != 0)
  {
    v304 = v286 >> 3;
    v641[0] = v301;
    v641[1] = v282;
    v641[2] = v285;
    v641[3] = v281;
    v641[4] = v284;
    v641[5] = v280;
    v641[6] = v283;
    v641[7] = v279;
    v305 = *(v641 + (v287 & 0xF)) / v304;
    v640[0] = v301;
    v640[1] = v282;
    v640[2] = v285;
    v640[3] = v281;
    v640[4] = v284;
    v640[5] = v280;
    v640[6] = v283;
    v640[7] = v279;
    v306 = *(v640 + (v288 & 0xF));
    v639[0] = v301;
    v639[1] = v282;
    v639[2] = v285;
    v639[3] = v281;
    v639[4] = v284;
    v639[5] = v280;
    v639[6] = v283;
    v639[7] = v279;
    v307 = *(v639 + (v289 & 0xF)) / v304;
    v638[0] = v301;
    v638[1] = v282;
    v638[2] = v285;
    v638[3] = v281;
    v638[4] = v284;
    v638[5] = v280;
    v638[6] = v283;
    v638[7] = v279;
    v308 = *(v638 + (v290 & 0xF)) / v304;
    v637[0] = v301;
    v637[1] = v282;
    v637[2] = v285;
    v637[3] = v281;
    v637[4] = v284;
    v637[5] = v280;
    v637[6] = v283;
    v637[7] = v279;
    v309 = *(v637 + (v291 & 0xF)) / v304;
    v636[0] = v301;
    v636[1] = v282;
    v636[2] = v285;
    v636[3] = v281;
    v636[4] = v284;
    v636[5] = v280;
    v636[6] = v283;
    v636[7] = v279;
    v310 = *(v636 + (v292 & 0xF));
    v635[0] = v301;
    v635[1] = v282;
    v635[2] = v285;
    v635[3] = v281;
    v635[4] = v284;
    v635[5] = v280;
    v635[6] = v283;
    v635[7] = v279;
    v311 = *(v635 + (v293 & 0xF));
    v634[0] = v301;
    v634[1] = v282;
    v634[2] = v285;
    v634[3] = v281;
    v634[4] = v284;
    v634[5] = v280;
    v634[6] = v283;
    v634[7] = v279;
    v312 = *(v634 + (v294 & 0xF)) / v304;
    v633[0] = v301;
    v633[1] = v282;
    v633[2] = v285;
    v633[3] = v281;
    v633[4] = v284;
    v633[5] = v280;
    v633[6] = v283;
    v633[7] = v279;
    v313 = *(v633 + (v295 & 0xF)) / v304;
    v632[0] = v301;
    v632[1] = v282;
    v632[2] = v285;
    v632[3] = v281;
    v632[4] = v284;
    v632[5] = v280;
    v632[6] = v283;
    v632[7] = v279;
    v314 = *(v632 + (v296 & 0xF)) / v304;
    v631[0] = v301;
    v631[1] = v282;
    v631[2] = v285;
    v631[3] = v281;
    v631[4] = v284;
    v631[5] = v280;
    v631[6] = v283;
    v631[7] = v279;
    v315 = *(v631 + (v297 & 0xF)) / v304;
    v630[0] = v301;
    v630[1] = v282;
    v630[2] = v285;
    v630[3] = v281;
    v630[4] = v284;
    v630[5] = v280;
    v630[6] = v283;
    v630[7] = v279;
    v316 = *(v630 + (v298 & 0xF));
    v629[0] = v301;
    v629[1] = v282;
    v629[2] = v285;
    v629[3] = v281;
    v629[4] = v284;
    v629[5] = v280;
    v629[6] = v283;
    v629[7] = v279;
    v317 = *(v629 + (v299 & 0xF)) / v304;
    v628[0] = v301;
    v628[1] = v282;
    v628[2] = v285;
    v628[3] = v281;
    v628[4] = v284;
    v628[5] = v280;
    v628[6] = v283;
    v628[7] = v279;
    v318 = *(v628 + (v300 & 0xF)) / v304;
    v627[0] = v301;
    v627[1] = v282;
    v627[2] = v285;
    v627[3] = v281;
    v627[4] = v284;
    v627[5] = v280;
    v627[6] = v283;
    v627[7] = v279;
    v319 = *(v627 + (v302 & 0xF)) / v304;
    v626[0] = v301;
    v626[1] = v282;
    v626[2] = v285;
    v626[3] = v281;
    v626[4] = v284;
    v626[5] = v280;
    v626[6] = v283;
    v626[7] = v279;
    *&v320 = v319;
    *(&v320 + 1) = *(v626 + (v303 & 0xF)) / v304;
    v536 = v320;
    *&v320 = v317;
    *(&v320 + 1) = v318;
    v534 = v320;
    *&v320 = v315;
    *(&v320 + 1) = v316 / v304;
    v533 = v320;
    *&v320 = v313;
    *(&v320 + 1) = v314;
    v532 = v320;
    *&v320 = v311 / v304;
    *(&v320 + 1) = v312;
    v531 = v320;
    *&v320 = v309;
    *(&v320 + 1) = v310 / v304;
    v530 = v320;
    *&v320 = v307;
    *(&v320 + 1) = v308;
    v529 = v320;
    *&v321 = v305;
    *(&v321 + 1) = v306 / v304;
  }

  else
  {
    v625[0] = v301;
    v625[1] = v282;
    v625[2] = v285;
    v625[3] = v281;
    v625[4] = v284;
    v625[5] = v280;
    v625[6] = v283;
    v625[7] = v279;
    v624[0] = v301;
    v624[1] = v282;
    v624[2] = v285;
    v624[3] = v281;
    v624[4] = v284;
    v624[5] = v280;
    v624[6] = v283;
    v624[7] = v279;
    v623[0] = v301;
    v623[1] = v282;
    v623[2] = v285;
    v623[3] = v281;
    v623[4] = v284;
    v623[5] = v280;
    v623[6] = v283;
    v623[7] = v279;
    v622[0] = v301;
    v622[1] = v282;
    v622[2] = v285;
    v622[3] = v281;
    v622[4] = v284;
    v622[5] = v280;
    v622[6] = v283;
    v622[7] = v279;
    v621[0] = v301;
    v621[1] = v282;
    v621[2] = v285;
    v621[3] = v281;
    v621[4] = v284;
    v621[5] = v280;
    v621[6] = v283;
    v621[7] = v279;
    v620[0] = v301;
    v620[1] = v282;
    v620[2] = v285;
    v620[3] = v281;
    v620[4] = v284;
    v620[5] = v280;
    v620[6] = v283;
    v620[7] = v279;
    v619[0] = v301;
    v619[1] = v282;
    v619[2] = v285;
    v619[3] = v281;
    v619[4] = v284;
    v619[5] = v280;
    v619[6] = v283;
    v619[7] = v279;
    v618[0] = v301;
    v618[1] = v282;
    v618[2] = v285;
    v618[3] = v281;
    v618[4] = v284;
    v618[5] = v280;
    v618[6] = v283;
    v618[7] = v279;
    v617[0] = v301;
    v617[1] = v282;
    v617[2] = v285;
    v617[3] = v281;
    v617[4] = v284;
    v617[5] = v280;
    v617[6] = v283;
    v617[7] = v279;
    v616[0] = v301;
    v616[1] = v282;
    v616[2] = v285;
    v616[3] = v281;
    v616[4] = v284;
    v616[5] = v280;
    v616[6] = v283;
    v616[7] = v279;
    v615[0] = v301;
    v615[1] = v282;
    v615[2] = v285;
    v615[3] = v281;
    v615[4] = v284;
    v615[5] = v280;
    v615[6] = v283;
    v615[7] = v279;
    v614[0] = v301;
    v614[1] = v282;
    v614[2] = v285;
    v614[3] = v281;
    v614[4] = v284;
    v614[5] = v280;
    v614[6] = v283;
    v614[7] = v279;
    v613[0] = v301;
    v613[1] = v282;
    v613[2] = v285;
    v613[3] = v281;
    v613[4] = v284;
    v613[5] = v280;
    v613[6] = v283;
    v613[7] = v279;
    v612[0] = v301;
    v612[1] = v282;
    v612[2] = v285;
    v612[3] = v281;
    v612[4] = v284;
    v612[5] = v280;
    v612[6] = v283;
    v612[7] = v279;
    v611[0] = v301;
    v611[1] = v282;
    v611[2] = v285;
    v611[3] = v281;
    v611[4] = v284;
    v611[5] = v280;
    v611[6] = v283;
    v611[7] = v279;
    v610[0] = v301;
    v610[1] = v282;
    v610[2] = v285;
    v610[3] = v281;
    v610[4] = v284;
    v610[5] = v280;
    v610[6] = v283;
    v610[7] = v279;
    *&v322 = *(v611 + (v302 & 0xF));
    *&v323 = *(v613 + (v299 & 0xF));
    *(&v322 + 1) = *(v610 + (v303 & 0xF));
    v536 = v322;
    *(&v323 + 1) = *(v612 + (v300 & 0xF));
    v534 = v323;
    *&v322 = *(v615 + (v297 & 0xF));
    *(&v322 + 1) = *(v614 + (v298 & 0xF));
    v533 = v322;
    *&v322 = *(v617 + (v295 & 0xF));
    *(&v322 + 1) = *(v616 + (v296 & 0xF));
    v532 = v322;
    *&v322 = *(v619 + (v293 & 0xF));
    *(&v322 + 1) = *(v618 + (v294 & 0xF));
    v531 = v322;
    *&v322 = *(v621 + (v291 & 0xF));
    *(&v322 + 1) = *(v620 + (v292 & 0xF));
    v530 = v322;
    *&v322 = *(v623 + (v289 & 0xF));
    *(&v322 + 1) = *(v622 + (v290 & 0xF));
    v529 = v322;
    *&v321 = *(v625 + (v287 & 0xF));
    *(&v321 + 1) = *(v624 + (v288 & 0xF));
  }

  v528 = v321;
  if ([v563[20] hasZeroPoint])
  {
    v324 = &v491[*v136];
    v508 = vuzp1q_s32(v324[6], v324[7]);
    v509 = vuzp1q_s32(v324[4], v324[5]);
    v510 = vuzp1q_s32(v324[2], v324[3]);
    v511 = vuzp1q_s32(*v324, v324[1]);
    v325 = v549[2];
    v327 = *v325;
    v326 = v325[1];
    if (v326 != v327)
    {
      if (((v326 - v327) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v328 = &unk_239B0A000;
    v506 = 0u;
    v507 = xmmword_239B0A0D0;
    v504 = 0u;
    v505 = 0u;
  }

  else
  {
    v510 = 0u;
    v511 = 0u;
    v508 = 0u;
    v509 = 0u;
    v506 = 0u;
    v507 = 0u;
    v504 = 0u;
    v505 = 0u;
    v328 = &unk_239B0A000;
  }

  v329 = [v563[20] hasMinValue];
  v330 = 0uLL;
  if (v329)
  {
    makeStrideBytes();
    v331 = &v489[*v138];
    v332.i64[0] = 0x100000001;
    v332.i64[1] = 0x100000001;
    v333 = vceqq_s32(*v331, v332);
    v334.i64[0] = v333.i32[0];
    v334.i64[1] = v333.i32[1];
    v335 = v334;
    v336 = vceqq_s32(v331[1], v332);
    v334.i64[0] = v336.i32[0];
    v334.i64[1] = v336.i32[1];
    v337 = v334;
    v338 = vceqq_s32(v331[2], v332);
    v334.i64[0] = v338.i32[0];
    v334.i64[1] = v338.i32[1];
    v339 = v334;
    v340 = vceqq_s32(v331[3], v332);
    v334.i64[0] = v340.i32[0];
    v334.i64[1] = v340.i32[1];
    v341 = v334;
    v334.i64[0] = v333.i32[2];
    v334.i64[1] = v333.i32[3];
    v342 = v334;
    v334.i64[0] = v336.i32[2];
    v334.i64[1] = v336.i32[3];
    v343 = v334;
    v334.i64[0] = v338.i32[2];
    v334.i64[1] = v338.i32[3];
    v344 = v334;
    v334.i64[0] = v340.i32[2];
    v334.i64[1] = v340.i32[3];
    v345 = vbicq_s8(v749, v334);
    v346 = vbicq_s8(v747, v344);
    v347 = vbicq_s8(v745, v343);
    v348 = vbicq_s8(v743, v342);
    v349 = vbicq_s8(v748, v341);
    v350 = vbicq_s8(v746, v339);
    v351 = vbicq_s8(v744, v337);
    v352 = vbicq_s8(v742, v335);
    v353 = *&v489[*v160];
    v354 = *&v489[*MEMORY[0x277CD73C8]];
    if ((v354 & 0xFFF8) != 0)
    {
      v355 = v354 >> 3;
      v609[0] = v352;
      v609[1] = v348;
      v609[2] = v351;
      v609[3] = v347;
      v609[4] = v350;
      v609[5] = v346;
      v609[6] = v349;
      v609[7] = v345;
      v356 = *(v609 + (v353.i8[0] & 0xF));
      v608[0] = v352;
      v608[1] = v348;
      v608[2] = v351;
      v608[3] = v347;
      v608[4] = v350;
      v608[5] = v346;
      v608[6] = v349;
      v608[7] = v345;
      v357 = *(v608 + (v353.i8[1] & 0xF));
      v607[0] = v352;
      v607[1] = v348;
      v607[2] = v351;
      v607[3] = v347;
      v607[4] = v350;
      v607[5] = v346;
      v607[6] = v349;
      v607[7] = v345;
      v358 = *(v607 + (v353.i8[2] & 0xF)) / v355;
      v606[0] = v352;
      v606[1] = v348;
      v606[2] = v351;
      v606[3] = v347;
      v606[4] = v350;
      v606[5] = v346;
      v606[6] = v349;
      v606[7] = v345;
      v359 = *(v606 + (v353.i8[3] & 0xF));
      v605[0] = v352;
      v605[1] = v348;
      v605[2] = v351;
      v605[3] = v347;
      v605[4] = v350;
      v605[5] = v346;
      v605[6] = v349;
      v605[7] = v345;
      v360 = *(v605 + (v353.i8[4] & 0xF)) / v355;
      v604[0] = v352;
      v604[1] = v348;
      v604[2] = v351;
      v604[3] = v347;
      v604[4] = v350;
      v604[5] = v346;
      v604[6] = v349;
      v604[7] = v345;
      v361 = *(v604 + (v353.i8[5] & 0xF));
      v603[0] = v352;
      v603[1] = v348;
      v603[2] = v351;
      v603[3] = v347;
      v603[4] = v350;
      v603[5] = v346;
      v603[6] = v349;
      v603[7] = v345;
      v362 = *(v603 + (v353.i8[6] & 0xF)) / v355;
      v602[0] = v352;
      v602[1] = v348;
      v602[2] = v351;
      v602[3] = v347;
      v602[4] = v350;
      v602[5] = v346;
      v602[6] = v349;
      v602[7] = v345;
      v363 = *(v602 + (v353.i8[7] & 0xF));
      v601[0] = v352;
      v601[1] = v348;
      v601[2] = v351;
      v601[3] = v347;
      v601[4] = v350;
      v601[5] = v346;
      v601[6] = v349;
      v601[7] = v345;
      v364 = *(v601 + (v353.i8[8] & 0xF)) / v355;
      v600[0] = v352;
      v600[1] = v348;
      v600[2] = v351;
      v600[3] = v347;
      v600[4] = v350;
      v600[5] = v346;
      v600[6] = v349;
      v600[7] = v345;
      v365 = *(v600 + (v353.i8[9] & 0xF));
      v599[0] = v352;
      v599[1] = v348;
      v599[2] = v351;
      v599[3] = v347;
      v599[4] = v350;
      v599[5] = v346;
      v599[6] = v349;
      v599[7] = v345;
      v366 = *(v599 + (v353.i8[10] & 0xF)) / v355;
      v598[0] = v352;
      v598[1] = v348;
      v598[2] = v351;
      v598[3] = v347;
      v598[4] = v350;
      v598[5] = v346;
      v598[6] = v349;
      v598[7] = v345;
      v367 = *(v598 + (v353.i8[11] & 0xF));
      v597[0] = v352;
      v597[1] = v348;
      v597[2] = v351;
      v597[3] = v347;
      v597[4] = v350;
      v597[5] = v346;
      v597[6] = v349;
      v597[7] = v345;
      v368 = *(v597 + (v353.i8[12] & 0xF)) / v355;
      v596[0] = v352;
      v596[1] = v348;
      v596[2] = v351;
      v596[3] = v347;
      v596[4] = v350;
      v596[5] = v346;
      v596[6] = v349;
      v596[7] = v345;
      v369 = *(v596 + (v353.i8[13] & 0xF));
      v595[0] = v352;
      v595[1] = v348;
      v595[2] = v351;
      v595[3] = v347;
      v595[4] = v350;
      v595[5] = v346;
      v595[6] = v349;
      v595[7] = v345;
      v370 = *(v595 + (v353.i8[14] & 0xF)) / v355;
      v594[0] = v352;
      v594[1] = v348;
      v594[2] = v351;
      v594[3] = v347;
      v594[4] = v350;
      v594[5] = v346;
      v594[6] = v349;
      v594[7] = v345;
      v371.i64[0] = v370;
      v371.i64[1] = *(v594 + (v353.i8[15] & 0xF)) / v355;
      v372.i64[0] = v368;
      v372.i64[1] = v369 / v355;
      v353.i64[0] = v366;
      v353.i64[1] = v367 / v355;
      v374.i64[0] = v364;
      v374.i64[1] = v365 / v355;
      v375.i64[0] = v362;
      v375.i64[1] = v363 / v355;
      v376.i64[0] = v360;
      v376.i64[1] = v361 / v355;
      v377.i64[0] = v358;
      v377.i64[1] = v359 / v355;
      v378.i64[0] = v356 / v355;
      v378.i64[1] = v357 / v355;
    }

    else
    {
      v379 = v353.i8[0] & 0xF;
      v593[0] = v352;
      v593[1] = v348;
      v593[2] = v351;
      v593[3] = v347;
      v593[4] = v350;
      v593[5] = v346;
      v593[6] = v349;
      v593[7] = v345;
      v380 = v353.i8[1] & 0xF;
      v592[0] = v352;
      v592[1] = v348;
      v592[2] = v351;
      v592[3] = v347;
      v592[4] = v350;
      v592[5] = v346;
      v592[6] = v349;
      v592[7] = v345;
      v381 = v353.i8[2] & 0xF;
      v591[0] = v352;
      v591[1] = v348;
      v591[2] = v351;
      v591[3] = v347;
      v591[4] = v350;
      v591[5] = v346;
      v591[6] = v349;
      v591[7] = v345;
      v382 = v590 + (v353.i8[3] & 0xF);
      v590[0] = v352;
      v590[1] = v348;
      v590[2] = v351;
      v590[3] = v347;
      v590[4] = v350;
      v590[5] = v346;
      v590[6] = v349;
      v590[7] = v345;
      v383 = v353.i8[4] & 0xF;
      v589[0] = v352;
      v589[1] = v348;
      v589[2] = v351;
      v589[3] = v347;
      v589[4] = v350;
      v589[5] = v346;
      v589[6] = v349;
      v589[7] = v345;
      v384 = v588 + (v353.i8[5] & 0xF);
      v588[0] = v352;
      v588[1] = v348;
      v588[2] = v351;
      v588[3] = v347;
      v588[4] = v350;
      v588[5] = v346;
      v588[6] = v349;
      v588[7] = v345;
      v385 = v353.i8[6] & 0xF;
      v587[0] = v352;
      v587[1] = v348;
      v587[2] = v351;
      v587[3] = v347;
      v587[4] = v350;
      v587[5] = v346;
      v587[6] = v349;
      v587[7] = v345;
      v386 = v586 + (v353.i8[7] & 0xF);
      v586[0] = v352;
      v586[1] = v348;
      v586[2] = v351;
      v586[3] = v347;
      v586[4] = v350;
      v586[5] = v346;
      v586[6] = v349;
      v586[7] = v345;
      v387 = v353.i8[8] & 0xF;
      v585[0] = v352;
      v585[1] = v348;
      v585[2] = v351;
      v585[3] = v347;
      v585[4] = v350;
      v585[5] = v346;
      v585[6] = v349;
      v585[7] = v345;
      v388 = v353.i8[9] & 0xF;
      v584[0] = v352;
      v584[1] = v348;
      v584[2] = v351;
      v584[3] = v347;
      v584[4] = v350;
      v584[5] = v346;
      v584[6] = v349;
      v584[7] = v345;
      v583[0] = v352;
      v583[1] = v348;
      v583[2] = v351;
      v583[3] = v347;
      v583[4] = v350;
      v583[5] = v346;
      v583[6] = v349;
      v583[7] = v345;
      v582[0] = v352;
      v582[1] = v348;
      v582[2] = v351;
      v582[3] = v347;
      v582[4] = v350;
      v582[5] = v346;
      v582[6] = v349;
      v582[7] = v345;
      v581[0] = v352;
      v581[1] = v348;
      v581[2] = v351;
      v581[3] = v347;
      v581[4] = v350;
      v581[5] = v346;
      v581[6] = v349;
      v581[7] = v345;
      v580[0] = v352;
      v580[1] = v348;
      v580[2] = v351;
      v580[3] = v347;
      v580[4] = v350;
      v580[5] = v346;
      v580[6] = v349;
      v580[7] = v345;
      v579[0] = v352;
      v579[1] = v348;
      v579[2] = v351;
      v579[3] = v347;
      v579[4] = v350;
      v579[5] = v346;
      v579[6] = v349;
      v579[7] = v345;
      v578[0] = v352;
      v578[1] = v348;
      v578[2] = v351;
      v578[3] = v347;
      v578[4] = v350;
      v578[5] = v346;
      v578[6] = v349;
      v578[7] = v345;
      v371.i64[0] = *(v579 + (v353.i8[14] & 0xF));
      v372.i64[0] = *(v581 + (v353.i8[12] & 0xF));
      v371.i64[1] = *(v578 + (v353.i8[15] & 0xF));
      v372.i64[1] = *(v580 + (v353.i8[13] & 0xF));
      v353.i64[0] = *(v583 + (v353.i8[10] & 0xF));
      v353.i64[1] = *(v582 + (v353.i8[11] & 0xF));
      v374.i64[0] = *(v585 + v387);
      v374.i64[1] = *(v584 + v388);
      v375.i64[0] = *(v587 + v385);
      v375.i64[1] = *v386;
      v376.i64[0] = *(v589 + v383);
      v376.i64[1] = *v384;
      v377.i64[0] = *(v591 + v381);
      v377.i64[1] = *v382;
      v378.i64[0] = *(v593 + v379);
      v378.i64[1] = *(v592 + v380);
    }

    v502 = vuzp1q_s32(v376, v375);
    v503 = vuzp1q_s32(v378, v377);
    v500 = vuzp1q_s32(v372, v371);
    v501 = vuzp1q_s32(v374, v353);
    v389 = v200[2];
    v391 = *v389;
    v390 = v389[1];
    if (v390 != v391)
    {
      if (((v390 - v391) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v499 = v328[13];
    v330 = 0uLL;
  }

  else
  {
    v502 = 0uLL;
    v503 = 0uLL;
    v500 = 0uLL;
    v501 = 0uLL;
    v499 = 0uLL;
  }

  v497 = v330;
  v498 = v330;
  v496 = v330;
  v392 = v560[2];
  v394 = *v392;
  v393 = v392[1];
  v550 = v328[13];
  if (v393 != v394)
  {
    if (((v393 - v394) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v561 = v328[13];
  v395 = v548[2];
  v397 = *v395;
  v396 = v395[1];
  if (v396 != v397)
  {
    if (((v396 - v397) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v398 = v526[2];
  v400 = *v398;
  v399 = v398[1];
  if (v399 != v400)
  {
    if (((v399 - v400) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v401 = vuzp1q_s32(v487, v520);
  v402 = vuzp1q_s32(v485, v486);
  v403 = vuzp1q_s32(v482, v484);
  v404 = v403;
  v404.i32[0] = 0;
  v405 = v402;
  v405.i32[0] = 0;
  v406 = v401;
  v406.i32[0] = 0;
  v407 = vuzp1q_s32(v522, v524);
  v408 = v407;
  v408.i32[0] = 0;
  v409 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v478, 1uLL), 0), v404, v403);
  v410 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v473, 1uLL), 0), v405, v402);
  v411 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v469, 1uLL), 0), v406, v401);
  v412 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v467, 1uLL), 0), v408, v407);
  v413 = v409;
  v413.i32[1] = 0;
  v414 = v410;
  v414.i32[1] = 0;
  v415 = v411;
  v415.i32[1] = 0;
  v416 = v412;
  v416.i32[1] = 0;
  v417 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v479, 1uLL), 0), v413, v409);
  v418 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v475, 1uLL), 0), v414, v410);
  v419 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v471, 1uLL), 0), v415, v411);
  v420 = v417;
  v420.i32[2] = 0;
  v421 = v418;
  v421.i32[2] = 0;
  v422 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v468, 1uLL), 0), v416, v412);
  v423 = v419;
  v423.i32[2] = 0;
  v424 = v422;
  v424.i32[2] = 0;
  v425 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v481, 1uLL), 0), v420, v417);
  v426 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v477, 1uLL), 0), v421, v418);
  v427 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v474, 1uLL), 0), v423, v419);
  v428 = v425;
  v428.i32[3] = 0;
  v429 = v426;
  v429.i32[3] = 0;
  v430 = v427;
  v430.i32[3] = 0;
  v431 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v470, 1uLL), 0), v424, v422);
  v432 = v431;
  v433 = -16;
  v434 = v731;
  v432.i32[3] = 0;
  v525 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v480, 1uLL), 0), v429, v426);
  v527 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v483, 1uLL), 0), v428, v425);
  v521 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v472, 1uLL), 0), v432, v431);
  v523 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v476, 1uLL), 0), v430, v427);
  do
  {
    v438 = v433 + 16;
    v439 = (v433 + 16) & 0xF;
    v577[0] = v537;
    v577[1] = v538;
    v577[2] = v539;
    v577[3] = v540;
    v577[4] = v542;
    v577[5] = v544;
    v577[6] = v546;
    v577[7] = v547;
    v434[7] = *(v577 + v439);
    v576[0] = v527;
    v576[1] = v525;
    v576[2] = v523;
    v576[3] = v521;
    v434[71] = *(v576 + v439);
    v575[0] = v528;
    v575[1] = v529;
    v575[2] = v530;
    v575[3] = v531;
    v575[4] = v532;
    v575[5] = v533;
    v575[6] = v534;
    v575[7] = v536;
    v434[23] = *(v575 + v439);
    if ([v563[20] hasZeroPoint])
    {
      v574[0] = v511;
      v574[1] = v510;
      v574[2] = v509;
      v574[3] = v508;
      v440 = 4 * (v438 & 0xF);
      v434[39] = *(v574 + v440);
      v573[0] = v561;
      memset(&v573[1], 0, 48);
      v441 = *(v573 + v440);
      v572[0] = v507;
      v572[1] = v506;
      v572[2] = v505;
      v572[3] = v504;
      v434[135] = v441 / *(v572 + v440);
    }

    if ([v563[20] hasMinValue])
    {
      v570[0] = v503;
      v570[1] = v502;
      v570[2] = v501;
      v570[3] = v500;
      v435 = 4 * (v438 & 0xF);
      v434[55] = *(v570 + v435);
      v569[0] = v561;
      memset(&v569[1], 0, 48);
      v436 = *(v569 + v435);
      v568[0] = v499;
      v568[1] = v498;
      v568[2] = v497;
      v568[3] = v496;
      v434[151] = v436 / *(v568 + v435);
    }

    else
    {
      v571[0] = v561;
      memset(&v571[1], 0, 48);
      v436 = *(v571 + (v438 & 0xF));
    }

    v567[0] = v512;
    v567[1] = v513;
    v567[2] = v514;
    v567[3] = v515;
    v567[4] = v516;
    v567[5] = v517;
    v567[6] = v518;
    v567[7] = v519;
    v434[87] = *(v567 + (v438 & 0xF));
    v566[0] = v555;
    v566[1] = *__p;
    v566[2] = v551;
    v566[3] = v553;
    v434[167] = *(v566 + (v438 & 0xF));
    v434[103] = v436;
    v565[0] = v550;
    memset(&v565[1], 0, 48);
    v434[119] = v436 / *(v565 + (v438 & 0xF));
    v564[0] = v550;
    memset(&v564[1], 0, 48);
    v434[183] = *(v564 + (v438 & 0xF));
    ++v434;
  }

  while (!__CFADD__(v433++, 1));
  v442 = v466 >> 3;
  LODWORD(v443) = (v734 + 7) >> 3;
  v735 = v443;
  v444 = (v734 + 7) & 0xFFFFFFF8;
  if (v734 <= v444 >> 1)
  {
    LODWORD(v443) = (v734 + 3) >> 2;
    if (v734 <= 2 * v443)
    {
      LODWORD(v443) = (v734 + 1) >> 1;
      if (v443 >= v734)
      {
        v442 = v466 & 0xFFFFFFFFFFFFFFF8;
        v445 = 1;
        LODWORD(v443) = v734;
        v444 = v734;
      }

      else
      {
        v442 *= 4;
        v444 = (v734 + 1) & 0xFFFFFFFE;
        v445 = 2;
      }
    }

    else
    {
      v442 *= 2;
      v444 = 4 * ((v734 + 3) >> 2);
      v445 = 4;
    }

    v446 = v488;
    v447 = v490;
    v735 = v443;
    v448 = v733;
    if (v442 < 2)
    {
      goto LABEL_500;
    }

LABEL_496:
    v449 = v442 >> 1;
    if (v442 >> 1 >= v448)
    {
      do
      {
        v442 = v449;
        v445 *= 2;
        if (v449 < 2)
        {
          break;
        }

        v449 >>= 1;
      }

      while (v442 >> 1 >= v448);
      v443 = (v734 + v445 - 1) / v445;
      v735 = v443;
      v444 = v443 * v445;
    }

    goto LABEL_500;
  }

  v445 = 8;
  v446 = v488;
  v447 = v490;
  v448 = v733;
  if (v442 >= 2)
  {
    goto LABEL_496;
  }

LABEL_500:
  v450 = 1;
  if (v444 >= 0x400)
  {
    if (v443 >= 2)
    {
      do
      {
        v451 = v443 + 1;
        v443 = (v443 + 1) >> 1;
        v450 *= 2;
      }

      while (v451 >= 4 && v445 * v443 > 0x3FF);
    }

    v735 = v443;
  }

  [v446 setBuffer:objc_msgSend(v447 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v447, 0, 16, 0, 0) + *(*(v495 + 8) + 64), 0}];
  [v446 setBuffer:objc_msgSend(v494 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v494, 0, 16, 0, 0) + *(*(v495 + 8) + 144), 1}];
  [v446 setBuffer:objc_msgSend(v493 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v493, 0, 16, 0, 0) + *(v495 + 192), 2}];
  [v446 setBuffer:objc_msgSend(v492 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v492, 0, 16, 0, 0) + *(*(v495 + 8) + 224), 3}];
  if ([v563[20] hasZeroPoint])
  {
    v452 = 4;
    [v446 setBuffer:objc_msgSend(v491 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v491, 0, 16, 0, 0) + *(*(v495 + 8) + 304), 4}];
  }

  else
  {
    v452 = 3;
  }

  if ([v563[20] hasMinValue])
  {
    [v446 setBuffer:objc_msgSend(v489 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v489, 0, 16, 0, 0) + *(*(v495 + 8) + 80 * v452 + 64), 5}];
  }

  [v446 setBytes:v731 length:796 atIndex:29];
  v742.i64[0] = v450;
  v742.i64[1] = (v448 + v442 - 1) / v442;
  v743.i64[0] = 1;
  v730[0] = v445;
  v730[1] = v442;
  v730[2] = 1;
  [v446 dispatchThreadgroups:&v742 threadsPerThreadgroup:v730];
  return 0;
}