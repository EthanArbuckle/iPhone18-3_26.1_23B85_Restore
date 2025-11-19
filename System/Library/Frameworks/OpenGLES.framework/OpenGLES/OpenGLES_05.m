uint64_t gleFStateProgram_GenerateMetadata(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v66 = a5;
  v67 = a1;
  v73 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 8);
  v64 = a6;
  v63 = (a4 + 2 * a6 + 1);
  v10 = 8 * v63;
  MEMORY[0x28223BE20](a1);
  v12 = &v63 - v11;
  bzero(&v63 - v11, 8 * v63);
  bzero(v12, v10);
  v65 = a4;
  if (a4 >= 1)
  {
    v13 = 0;
    v14 = v65;
    v15 = (a2 + 22);
    do
    {
      v16 = gleLLVMGetArgTypeName(*(a3 + 4 * v13));
      v18 = *v15;
      v15 += 2;
      v17 = v18;
      if (v18 > 0xF)
      {
LABEL_26:
        v20 = "air.perspective";
        if (!v17)
        {
          goto LABEL_41;
        }

        goto LABEL_10;
      }

      if (((1 << v17) & 0xC006) != 0)
      {
        v19 = "air.perspective";
        if (*v67)
        {
          v19 = "air.no_perspective";
        }

        if ((*v67 & 0x2000000) != 0)
        {
          v20 = "air.flat";
        }

        else
        {
          v20 = v19;
        }

LABEL_10:
        memset(__str, 0, 32);
        if (v17 <= 3)
        {
          switch(v17)
          {
            case 1:
              if ((*(a2 + 280) & 8) != 0)
              {
                strcpy(__str, "user(front_color)");
              }

              v21 = 2;
              break;
            case 2:
              if ((*(a2 + 280) & 8) != 0)
              {
                strcpy(__str, "user(sec_front_color)");
              }

              v21 = 3;
              break;
            case 3:
              v21 = 5;
              break;
            default:
              goto LABEL_67;
          }
        }

        else if ((v17 - 4) >= 8)
        {
          if (v17 == 14)
          {
            if ((*(a2 + 280) & 8) != 0)
            {
              strcpy(__str, "user(back_color)");
            }

            v21 = 1;
          }

          else
          {
            if (v17 != 15)
            {
LABEL_67:
              abort();
            }

            if ((*(a2 + 280) & 8) != 0)
            {
              strcpy(__str, "user(sec_back_color)");
            }

            v21 = 4;
          }
        }

        else
        {
          if ((*(a2 + 280) & 8) != 0)
          {
            snprintf(__str, 0x1FuLL, "user(tex_coord%u)", v17 - 4);
          }

          v21 = v17 + 4;
        }

        if ((*(a2 + 280) & 8) != 0)
        {
          if (!__str[0])
          {
            snprintf(__str, 0x1FuLL, "user(slot%u)", v21);
          }

          v71 = 0;
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          *&v68 = gleLLVMGetConstantInt32(v9);
          v28 = *(v9 + 16);
          *(&v68 + 1) = LLVMMDStringInContext();
          v29 = *(v9 + 16);
          strlen(__str);
          *&v69 = LLVMMDStringInContext();
          v30 = *(v9 + 16);
          strlen(v20);
          *(&v69 + 1) = LLVMMDStringInContext();
          v31 = *(v9 + 16);
          *&v70 = LLVMMDStringInContext();
          v32 = *(v9 + 16);
          *(&v70 + 1) = LLVMMDStringInContext();
          v33 = *(v9 + 16);
          strlen(v16);
          v71 = LLVMMDStringInContext();
          v34 = *(v9 + 16);
        }

        else
        {
          v69 = 0u;
          v70 = 0u;
          v68 = 0u;
          *&v68 = gleLLVMGetConstantInt32(v9);
          v22 = *(v9 + 16);
          *(&v68 + 1) = LLVMMDStringInContext();
          v23 = *(v9 + 16);
          *&v69 = LLVMMDStringInContext();
          if (!*(v9 + 152))
          {
            v24 = *(v9 + 16);
            *(v9 + 152) = LLVMInt32TypeInContext();
          }

          *(&v69 + 1) = LLVMConstInt();
          v25 = *(v9 + 16);
          strlen(v20);
          *&v70 = LLVMMDStringInContext();
          v26 = *(v9 + 16);
          *(&v70 + 1) = LLVMMDStringInContext();
          v27 = *(v9 + 16);
        }

        goto LABEL_40;
      }

      if (v17 == 12)
      {
        if ((*(a2 + 280) & 8) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v17 != 13)
        {
          goto LABEL_26;
        }

        if ((*(a2 + 280) & 8) != 0)
        {
LABEL_39:
          v68 = 0u;
          v69 = 0u;
          *&v68 = gleLLVMGetConstantInt32(v9);
          v37 = *(v9 + 16);
          *(&v68 + 1) = LLVMMDStringInContext();
          v38 = *(v9 + 16);
          *&v69 = LLVMMDStringInContext();
          v39 = *(v9 + 16);
          strlen(v16);
          *(&v69 + 1) = LLVMMDStringInContext();
          v40 = *(v9 + 16);
          goto LABEL_40;
        }
      }

      v68 = 0uLL;
      *&v68 = gleLLVMGetConstantInt32(v9);
      v35 = *(v9 + 16);
      *(&v68 + 1) = LLVMMDStringInContext();
      v36 = *(v9 + 16);
LABEL_40:
      *&v12[8 * v13] = LLVMMDNodeInContext();
LABEL_41:
      ++v13;
    }

    while (v14 != v13);
  }

  gleLLVMAddCommonMetaData(v9, &v12[8 * v65], v63 - v65, v65, *(a2 + 242), v64);
  v41 = *(v9 + 16);
  v42 = LLVMMDNodeInContext();
  v43 = v66;
  MEMORY[0x28223BE20](v42);
  v45 = (&v63 - v44);
  bzero(&v63 - v44, v46);
  if (v43 >= 1)
  {
    v47 = v66;
    v48 = (a2 + 174);
    v49 = v45;
    do
    {
      v50 = *v48;
      v48 += 2;
      v51 = v50 == 8;
      if (v50 >= 8)
      {
        if (!v51)
        {
          goto LABEL_61;
        }

        *&v69 = 0;
        v68 = 0uLL;
        v57 = *(v9 + 16);
        *&v68 = LLVMMDStringInContext();
        v58 = *(v9 + 16);
        *(&v68 + 1) = LLVMMDStringInContext();
        v59 = *(v9 + 16);
        v55 = LLVMMDStringInContext();
      }

      else
      {
        *&v69 = 0;
        v68 = 0uLL;
        v52 = *(v9 + 16);
        *&v68 = LLVMMDStringInContext();
        if (!*(v9 + 152))
        {
          v53 = *(v9 + 16);
          *(v9 + 152) = LLVMInt32TypeInContext();
        }

        *(&v68 + 1) = LLVMConstInt();
        if (!*(v9 + 152))
        {
          v54 = *(v9 + 16);
          *(v9 + 152) = LLVMInt32TypeInContext();
        }

        v55 = LLVMConstInt();
      }

      *&v69 = v55;
      v56 = *(v9 + 16);
      *v49 = LLVMMDNodeInContext();
LABEL_61:
      ++v49;
      --v47;
    }

    while (v47);
  }

  v60 = *(v9 + 16);
  LLVMMDNodeInContext();
  result = gleLLVMCreateFunctionMetadata(v9, "air.fragment");
  v62 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleFStateProgram_GetFirstActiveTexture(unsigned int a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  v3 = a1 & 0xFFFFFF7F;
  if ((a1 & 0xFFFFFF7F) != 0)
  {
    v4 = (a2 + 64);
    v5 = 128;
    result = 7;
    while (1)
    {
      v7 = v2;
      v2 = v3;
      if ((v7 & v5) != 0)
      {
        v8 = *v4;
        v9 = (*v4 >> 28) & 7;
        if (v9 == 5)
        {
          v13 = v8 & 0x1F;
          v14 = (v8 >> 5) & 0x1F;
          v15 = v13 == 3 || v14 == 3;
          v16 = (v8 >> 10) & 0x1F;
          v17 = v15 || v16 == 3;
          v18 = HIDWORD(v8) & 0x1F;
          v19 = v17 || v18 == 3;
          v20 = (v8 >> 37) & 0x1F;
          v21 = v19 || v20 == 3;
          v22 = (v8 >> 42) & 0x1F;
          if (!v21 && v22 <= 5 && v20 <= 5 && v18 <= 5 && v16 <= 5 && v14 <= 5 && v13 <= 5 && v22 != 3)
          {
            return result;
          }
        }

        else if (v9 == 3)
        {
          v10 = v8 & 0x3000000000000000;
          v11 = v8 & 0x3800000000000000;
          if (v10 == 0x1000000000000000 || v11 == 0x2800000000000000)
          {
            return result;
          }
        }
      }

      result = (result - 1);
      v5 = 1 << result;
      v3 = v2 & ~(1 << result);
      --v4;
      if (!v3)
      {
        return result;
      }
    }
  }

  return 7;
}

uint64_t gleFStateProgram_AllocateOutput(uint64_t result, int a2)
{
  v2 = *(result + 244);
  *(result + 172 + 4 * a2) = v2;
  *(result + 172 + 4 * v2 + 2) = a2;
  *(result + 244) = v2 + 1;
  v3 = *(result + 8);
  if (v3)
  {
    v4 = result;
    v5 = *(v3 + 16);
    if (a2 == 8 || !*(v4 + 251))
    {
      result = LLVMFloatTypeInContext();
    }

    else
    {
      result = LLVMHalfTypeInContext();
    }

    *(*(*(v4 + 8) + 128) + 8 * v2) = result;
  }

  return result;
}

uint64_t gleFStateProgram_GetOutput(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 172 + 4 * a2);
  v3 = *v2;
  if (v3 == 0xFFFF)
  {
    v5 = *(a1 + 244);
    LOWORD(v3) = *(a1 + 244);
    *v2 = v5;
    *(a1 + 172 + 4 * v5 + 2) = a2;
    *(a1 + 244) = v5 + 1;
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = *(v6 + 16);
      if (a2 == 8 || !*(a1 + 251))
      {
        v8 = LLVMFloatTypeInContext();
      }

      else
      {
        v8 = LLVMHalfTypeInContext();
      }

      *(*(*(a1 + 8) + 128) + 8 * v5) = v8;
    }
  }

  return v3;
}

uint64_t gleFStateProgram_GetTemp(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 208 + 2 * a2);
  if (v2 == 0xFFFF)
  {
    v4 = *(a1 + 246);
    LOWORD(v2) = *(a1 + 246);
    *(a1 + 208 + 2 * a2) = v4;
    *(a1 + 246) = v4 + 1;
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (a2 - 13 <= 0xFFFFFFFC && *(a1 + 251))
      {
        v7 = LLVMHalfTypeInContext();
      }

      else
      {
        v7 = LLVMFloatTypeInContext();
      }

      *(*(*(a1 + 8) + 96) + 8 * v4) = v7;
    }
  }

  return v2;
}

uint64_t gleStateProgram_TextureSampleOp(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4;
  v7 = a1[a4 + 1];
  v8 = HIBYTE(v7) & 7;
  if ((HIBYTE(v7) & 7u) > 2)
  {
    switch(v8)
    {
      case 3:
        v9 = (v7 & 0x4000000000000000) == 0;
        v10 = 5;
        v11 = 2;
        break;
      case 4:
        v9 = (v7 & 0x4000000000000000) == 0;
        v10 = 6;
        v11 = 3;
        break;
      case 5:
        v9 = (v7 & 0x4000000000000000) == 0;
        v10 = 7;
        v11 = 4;
        break;
      default:
LABEL_39:
        v34 = 0;
        v33 = 0u;
        v32 = 0u;
        v31 = 0u;
        if (*(a2 + 251))
        {
          v28 = 0x3100180000;
        }

        else
        {
          v28 = 0x3100080000;
        }

        v29 = v28 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 1;
        *(a2 + 16) = 1;
        *(&v30 + 1) = (gleFStateProgram_GetParam(a2, 20) << 48) | 0x19C880;
        goto LABEL_38;
    }

    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    goto LABEL_15;
  }

  if (v8 == 1)
  {
    v12 = 0;
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_39;
    }

    v12 = 1;
  }

LABEL_15:
  v13 = 0x3100000002;
  v14 = *a1;
  v15 = 4288;
  if ((v7 & 0x80000000) != 0)
  {
    v15 = 4224;
  }

  v16 = (v7 & 0x80000000) != 0;
  v17 = 4352;
  v18 = 4416;
  if (v16)
  {
    v18 = 4352;
  }

  if ((v14 & 0x10000000000) != 0)
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  if ((v14 & 0x10000000000) != 0)
  {
    v13 = 0x3100000003;
  }

  else
  {
    v17 = 4224;
  }

  if ((v14 & 0x10000000000) != 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  if (((1 << a4) & BYTE4(v14)) == 0)
  {
    v17 = v20;
  }

  v34 = 0;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v21 = v13 | (8 * (*(a2 + 16) & 7)) | v17;
  *(a2 + 16) = v19;
  v22 = v21;
  v29 = v21 | 0x88000;
  v23 = *a1;
  if ((*a1 & 0x10) != 0)
  {
    v22 = v21;
    v29 = v21 | 0x80000088000;
  }

  v24 = (a2 + 20 + 4 * (a4 + 4));
  v25 = *v24;
  if (v25 == 0xFFFF)
  {
    v26 = *(a2 + 240);
    v25 = *(a2 + 240);
    *v24 = v26;
    *(a2 + 20 + 4 * v26 + 2) = a4 + 4;
    *(a2 + 240) = v26 + 1;
    v23 = *a1;
  }

  *(&v30 + 1) = ((v25 << 48) | 0x19C880) - 128;
  if ((v23 & 0x10000000000) != 0)
  {
    *&v31 = (gleFStateProgram_GetParam(a2, a4 + 8) << 48) | 0x19C880;
  }

  *(&v30 + (v22 & 7)) = *(&v30 + (v22 & 7)) & 0xFFFFFF80FFFFFFE0 | ((v4 & 0x7F) << 32) | v12;
LABEL_38:
  *&v30 = a3;
  return (*(a2 + 256))(a2, &v29);
}

uint64_t gleFStateProgram_GetParam(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 251))
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  switch(a2)
  {
    case 21:
      v7 = *(a1 + 8);
      if (!*(*(v7 + 104) + 16))
      {
        v13 = xmmword_23A301240;
        *(*(*(a1 + 8) + 104) + 16) = gleLLVMCreateConstantVec4(v7, &v13, 1);
      }

      break;
    case 20:
      v6 = *(a1 + 8);
      if (!*(*(v6 + 104) + 8))
      {
        v13 = 0uLL;
        *(*(*(a1 + 8) + 104) + 8) = gleLLVMCreateConstantVec4(v6, &v13, v4);
      }

      break;
    case 19:
      v5 = *(a1 + 8);
      if (!**(v5 + 104))
      {
        v13 = xmmword_23A301240;
        **(*(a1 + 8) + 104) = gleLLVMCreateConstantVec4(v5, &v13, v4);
      }

      break;
  }

  v8 = (a1 + 84 + 4 * a2);
  v9 = *v8;
  if (v9 == 0xFFFF)
  {
    v10 = *(a1 + 242);
    LOWORD(v9) = *(a1 + 242);
    *v8 = v10;
    *(a1 + 84 + 4 * v10 + 2) = a2;
    *(a1 + 242) = v10 + 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t gleStateProgram_A_MODULATE(uint64_t a1, uint64_t a2)
{
  gleStateProgram_CheckDestInit(a2);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (*(a2 + 251))
  {
    v3 = 0x3100180000;
  }

  else
  {
    v3 = 0x3100080000;
  }

  v10[0] = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
    v5 = 1689664;
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v6 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v6;
      *(a2 + 4 * v6 + 22) = 1;
      *(a2 + 240) = v6 + 1;
    }

    Temp = Temp;
    v5 = 1689600;
  }

  v7 = 1918930944;
  *&v11 = v5 | (Temp << 48);
  *(&v11 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v7 = 1918939136;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v10[1] = v7 | (Output << 48);
  return (*(a2 + 256))(a2, v10);
}

uint64_t gleStateProgram_A_REPLACE(uint64_t a1, uint64_t a2)
{
  v3 = 1918930944;
  gleStateProgram_CheckDestInit(a2);
  v11 = 0;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  if (*(a2 + 251))
  {
    v4 = 0x3100180000;
  }

  else
  {
    v4 = 0x3100080000;
  }

  v7[0] = v4 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 1;
  *(a2 + 16) = 1;
  v7[2] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v3 = 1918939136;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v7[1] = v3 | (Output << 48);
  return (*(a2 + 256))(a2, v7);
}

uint64_t gleStateProgram_CheckDestInit(uint64_t result)
{
  if (!*(result + 250))
  {
    v15 = v1;
    v16 = v2;
    v3 = result;
    v4 = 1689600;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    if (*(result + 251))
    {
      v5 = 0x3100180000;
    }

    else
    {
      v5 = 0x3100080000;
    }

    v10[0] = v5 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(result + 16) & 7)) | 1;
    *(result + 16) = 1;
    if (*(result + 249))
    {
      Temp = gleFStateProgram_GetTemp(result, 0);
      v4 = 1689664;
    }

    else
    {
      LODWORD(Temp) = *(result + 24);
      if (Temp == 0xFFFF)
      {
        v7 = *(result + 240);
        LODWORD(Temp) = *(result + 240);
        *(result + 24) = v7;
        *(result + 4 * v7 + 22) = 1;
        *(result + 240) = v7 + 1;
      }

      Temp = Temp;
    }

    v8 = 1919389696;
    *&v11 = v4 | (Temp << 48);
    if (*(v3 + 248))
    {
      Output = gleFStateProgram_GetOutput(v3, 0);
      v8 = 1919397888;
    }

    else
    {
      Output = gleFStateProgram_GetTemp(v3, 0);
    }

    v10[1] = v8 | (Output << 48);
    return (*(v3 + 256))(v3, v10);
  }

  return result;
}

uint64_t gleStateProgram_RGB_MODULATE(uint64_t a1, uint64_t a2)
{
  gleStateProgram_CheckDestInit(a2);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (*(a2 + 251))
  {
    v3 = 0x3100180000;
  }

  else
  {
    v3 = 0x3100080000;
  }

  v10[0] = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
    v5 = 1689664;
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v6 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v6;
      *(a2 + 4 * v6 + 22) = 1;
      *(a2 + 240) = v6 + 1;
    }

    Temp = Temp;
    v5 = 1689600;
  }

  v7 = 1919356928;
  *&v11 = v5 | (Temp << 48);
  *(&v11 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v7 = 1919365120;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v10[1] = v7 | (Output << 48);
  return (*(a2 + 256))(a2, v10);
}

uint64_t gleStateProgram_RGB_BLEND(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 1689664;
  gleStateProgram_CheckDestInit(a2);
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (*(a2 + 251))
  {
    v6 = 0x3100180000;
  }

  else
  {
    v6 = 0x3100080000;
  }

  v12[0] = v6 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0xF03;
  *(a2 + 16) = 3;
  v12[2] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  v12[3] = ((gleFStateProgram_GetParam(a2, a3) << 48) | 0x19C840) + 64;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v8 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v8;
      *(a2 + 4 * v8 + 22) = 1;
      *(a2 + 240) = v8 + 1;
    }

    Temp = Temp;
    v5 = 1689600;
  }

  v9 = 1919356928;
  *&v13 = v5 | (Temp << 48);
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v9 = 1919365120;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v12[1] = v9 | (Output << 48);
  return (*(a2 + 256))(a2, v12);
}

uint64_t gleStateProgram_RGB_REPLACE(uint64_t a1, uint64_t a2)
{
  v3 = 1919356928;
  gleStateProgram_CheckDestInit(a2);
  v11 = 0;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  if (*(a2 + 251))
  {
    v4 = 0x3100180000;
  }

  else
  {
    v4 = 0x3100080000;
  }

  v7[0] = v4 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 1;
  *(a2 + 16) = 1;
  v7[2] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v3 = 1919365120;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v7[1] = v3 | (Output << 48);
  return (*(a2 + 256))(a2, v7);
}

uint64_t gleStateProgram_RGB_ADD(_BYTE *a1, uint64_t a2)
{
  gleStateProgram_CheckDestInit(a2);
  v17 = 0;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v4 = 1572864;
  if (!*(a2 + 251))
  {
    v4 = 0x80000;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7));
  v12 = v5 | 0x31000007C2;
  *(a2 + 16) = 2;
  if ((*a1 & 0x10) != 0)
  {
    v12 = v5 | 0x831000007C2;
  }

  v6 = 1689664;
  *(&v13 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v8 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v8;
      *(a2 + 4 * v8 + 22) = 1;
      *(a2 + 240) = v8 + 1;
    }

    Temp = Temp;
    v6 = 1689600;
  }

  v9 = 1919356928;
  *&v14 = v6 | (Temp << 48);
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v9 = 1919365120;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  *&v13 = v9 | (Output << 48);
  return (*(a2 + 256))(a2, &v12);
}

uint64_t gleStateProgram_RGBA_MODULATE(uint64_t a1, uint64_t a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (*(a2 + 251))
  {
    v3 = 0x3100180000;
  }

  else
  {
    v3 = 0x3100080000;
  }

  v10[0] = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
    v5 = 1689664;
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v6 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v6;
      *(a2 + 4 * v6 + 22) = 1;
      *(a2 + 240) = v6 + 1;
    }

    Temp = Temp;
    v5 = 1689600;
  }

  v7 = 1919389696;
  *&v11 = v5 | (Temp << 48);
  *(&v11 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v7 = 1919397888;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v10[1] = v7 | (Output << 48);
  return (*(a2 + 256))(a2, v10);
}

uint64_t gleStateProgram_RGBA_BLEND(uint64_t a1, uint64_t a2, int a3)
{
  memset(&v20[8], 0, 48);
  if (*(a2 + 251))
  {
    v5 = 0x3100180000;
  }

  else
  {
    v5 = 0x3100080000;
  }

  v18 = v5 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    v6 = (gleFStateProgram_GetTemp(a2, 0) << 48) | 0x40;
  }

  else
  {
    v7 = *(a2 + 24);
    if (v7 == 0xFFFF)
    {
      v8 = *(a2 + 240);
      v7 = *(a2 + 240);
      *(a2 + 24) = v8;
      *(a2 + 4 * v8 + 22) = 1;
      *(a2 + 240) = v8 + 1;
    }

    v6 = v7 << 48;
  }

  *(&v19 + 1) = v6 | 0x1FE00;
  *v20 = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x1FE40;
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v10 = 1918939136;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
    v10 = 1918930944;
  }

  v11 = 1689664;
  *&v19 = v10 | (Output << 48);
  (*(a2 + 256))(a2, &v18);
  memset(v20, 0, sizeof(v20));
  v19 = 0u;
  if (*(a2 + 251))
  {
    v12 = 0x3100180000;
  }

  else
  {
    v12 = 0x3100080000;
  }

  v18 = (8 * (*(a2 + 16) & 7)) | 0xF03 | v12;
  *(a2 + 16) = 3;
  *(&v19 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  *v20 = ((gleFStateProgram_GetParam(a2, a3) << 48) | 0x19C840) + 64;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v14 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v14;
      *(a2 + 4 * v14 + 22) = 1;
      *(a2 + 240) = v14 + 1;
    }

    Temp = Temp;
    v11 = 1689600;
  }

  *&v20[8] = v11 | (Temp << 48);
  if (*(a2 + 248))
  {
    v15 = gleFStateProgram_GetOutput(a2, 0);
    v16 = 1919365120;
  }

  else
  {
    v15 = gleFStateProgram_GetTemp(a2, 0);
    v16 = 1919356928;
  }

  *&v19 = v16 | (v15 << 48);
  return (*(a2 + 256))(a2, &v18);
}

uint64_t gleStateProgram_RGBA_ADD(_BYTE *a1, uint64_t a2)
{
  v22 = 0;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v3 = 1572864;
  if (!*(a2 + 251))
  {
    v3 = 0x80000;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7));
  v17 = v4 | 0x31000007C2;
  *(a2 + 16) = 2;
  if ((*a1 & 0x10) != 0)
  {
    v17 = v4 | 0x831000007C2;
  }

  *(&v18 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
    v6 = 1689664;
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v7 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v7;
      *(a2 + 4 * v7 + 22) = 1;
      *(a2 + 240) = v7 + 1;
    }

    Temp = Temp;
    v6 = 1689600;
  }

  v8 = 1918930944;
  *&v19 = v6 | (Temp << 48);
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v10 = 1919365120;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
    v10 = 1919356928;
  }

  *&v18 = v10 | (Output << 48);
  (*(a2 + 256))(a2, &v17);
  v22 = 0;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  if (*(a2 + 251))
  {
    v11 = 0x3100180000;
  }

  else
  {
    v11 = 0x3100080000;
  }

  v17 = v11 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    v12 = gleFStateProgram_GetTemp(a2, 0);
    v13 = 1689664;
  }

  else
  {
    LODWORD(v12) = *(a2 + 24);
    if (v12 == 0xFFFF)
    {
      v14 = *(a2 + 240);
      LODWORD(v12) = *(a2 + 240);
      *(a2 + 24) = v14;
      *(a2 + 4 * v14 + 22) = 1;
      *(a2 + 240) = v14 + 1;
    }

    v12 = v12;
    v13 = 1689600;
  }

  *(&v18 + 1) = v13 | (v12 << 48);
  *&v19 = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    v15 = gleFStateProgram_GetOutput(a2, 0);
    v8 = 1918939136;
  }

  else
  {
    v15 = gleFStateProgram_GetTemp(a2, 0);
  }

  *&v18 = v8 | (v15 << 48);
  return (*(a2 + 256))(a2, &v17);
}

uint64_t gleStateProgram_I_BLEND(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 1689664;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (*(a2 + 251))
  {
    v6 = 0x3100180000;
  }

  else
  {
    v6 = 0x3100080000;
  }

  v12[0] = v6 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0xF03;
  *(a2 + 16) = 3;
  v12[2] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  v12[3] = ((gleFStateProgram_GetParam(a2, a3) << 48) | 0x19C840) + 64;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v8 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v8;
      *(a2 + 4 * v8 + 22) = 1;
      *(a2 + 240) = v8 + 1;
    }

    Temp = Temp;
    v5 = 1689600;
  }

  v9 = 1919389696;
  *&v13 = v5 | (Temp << 48);
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v9 = 1919397888;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v12[1] = v9 | (Output << 48);
  return (*(a2 + 256))(a2, v12);
}

uint64_t gleStateProgram_I_ADD(_BYTE *a1, uint64_t a2)
{
  v16 = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v3 = 1572864;
  if (!*(a2 + 251))
  {
    v3 = 0x80000;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7));
  v11 = v4 | 0x31000007C2;
  *(a2 + 16) = 2;
  if ((*a1 & 0x10) != 0)
  {
    v11 = v4 | 0x831000007C2;
  }

  v5 = 1689664;
  *(&v12 + 1) = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v7 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v7;
      *(a2 + 4 * v7 + 22) = 1;
      *(a2 + 240) = v7 + 1;
    }

    Temp = Temp;
    v5 = 1689600;
  }

  v8 = 1919389696;
  *&v13 = v5 | (Temp << 48);
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v8 = 1919397888;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  *&v12 = v8 | (Output << 48);
  return (*(a2 + 256))(a2, &v11);
}

uint64_t gleStateProgram_RGBA_DECAL(uint64_t a1, uint64_t a2)
{
  v3 = 1689664;
  gleStateProgram_CheckDestInit(a2);
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  if (*(a2 + 251))
  {
    v4 = 0x3100180000;
  }

  else
  {
    v4 = 0x3100080000;
  }

  v10[0] = v4 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0xF03;
  *(a2 + 16) = 3;
  v10[2] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x1FE40;
  v10[3] = (gleFStateProgram_GetTemp(a2, 1u) << 48) | 0x19C840;
  if (*(a2 + 249))
  {
    Temp = gleFStateProgram_GetTemp(a2, 0);
  }

  else
  {
    LODWORD(Temp) = *(a2 + 24);
    if (Temp == 0xFFFF)
    {
      v6 = *(a2 + 240);
      LODWORD(Temp) = *(a2 + 240);
      *(a2 + 24) = v6;
      *(a2 + 4 * v6 + 22) = 1;
      *(a2 + 240) = v6 + 1;
    }

    Temp = Temp;
    v3 = 1689600;
  }

  v7 = 1919356928;
  *&v11 = v3 | (Temp << 48);
  if (*(a2 + 248))
  {
    Output = gleFStateProgram_GetOutput(a2, 0);
    v7 = 1919365120;
  }

  else
  {
    Output = gleFStateProgram_GetTemp(a2, 0);
  }

  v10[1] = v7 | (Output << 48);
  return (*(a2 + 256))(a2, v10);
}

void glpPrimitiveTypeToLLVMType_cold_1(unsigned int a1)
{
  v1 = glpPrimitiveTypeToString(a1);
  printf("unhandled primitive type: %s\n", v1);
  abort();
}

void _glpSetCrashLogMessage_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_fault_impl(&dword_23A2B5000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void GLPDebugInfoContext::createFunction()
{
  __assert_rtn("createFunction", "glp_llvm_ir_util.cpp", 526, "!function->getSubprogram()");
}

{
  __assert_rtn("createFunction", "glp_llvm_ir_util.cpp", 534, "lexicalBlocks.size() == 1");
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod()
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

void operator new()
{
    ;
  }
}