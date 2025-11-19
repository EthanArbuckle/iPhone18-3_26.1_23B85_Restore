uint64_t glpARBProgram_OutputToFunction(uint64_t result, int a2, _DWORD *a3, uint64_t a4)
{
  v6 = *(result + 48);
  v7 = *(*(result + 136) + 8 * a2 + 8);
  if (!v6[20])
  {
    result = MEMORY[0x23EE85370](v6[21]);
    v6[20] = result;
  }

  if ((v7 & 0xC0) == 0)
  {
    v8 = v6[4];
    if (!v6[19])
    {
      v9 = v6[2];
      v6[19] = LLVMInt32TypeInContext();
    }

    LLVMConstInt();
    result = LLVMBuildExtractElement();
    a4 = result;
  }

  if (a4)
  {
    v10 = v6[4];
    v11 = v6[20];
    v12 = *a3;
    result = LLVMBuildInsertValue();
    v6[20] = result;
    ++*a3;
  }

  return result;
}

uint64_t glpARBProgram_AttribToFunction(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 144) + 8 * a2 + 8) & 0x1F00) == 0xB00)
  {
    v2 = *(a1 + 48);
    v3 = v2[7];
    LLVMGetParam();
    v4 = v2[2];
    LLVMFloatTypeInContext();
    llvm::ConstantFP::get();
    llvm::ConstantFP::get();
    llvm::ConstantFP::get();
    llvm::ConstantFP::get();
    LLVMConstVector();
    llvm::ConstantFP::get();
    llvm::ConstantFP::get();
    llvm::ConstantFP::get();
    llvm::ConstantFP::get();
    LLVMConstVector();
    v5 = v2[4];
    result = LLVMBuildSelect();
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpARBProgram_ParamCountFunction(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 104);
  if (v3)
  {
    v4 = *v3;
  }

  return gleLLVMGetConstantInt32(v2);
}

uint64_t glpARBProgram_GenerateMetadata(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 144);
  if (v4)
  {
    v5 = *v4;
    MEMORY[0x28223BE20]();
    v7 = &v19[-v6];
    bzero(&v19[-v6], v8);
    if (v5)
    {
      v9 = 0;
      v10 = (v4 + 2);
      while (1)
      {
        v11 = *v10;
        v10 += 2;
        v12 = v11 >> 6;
        if (!(v11 >> 6))
        {
          break;
        }

        if (v12 == 3)
        {
          v13 = 7;
LABEL_8:
          v7[v9] = v13;
        }

        if (v5 == ++v9)
        {
          goto LABEL_12;
        }
      }

      v13 = 4;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    v7 = &v20;
  }

LABEL_12:
  v14 = *(a1 + 136);
  if (v14)
  {
    v15 = *v14;
    if (v15)
    {
      v16 = *v14;
      do
      {
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v15 = 0;
  }

  if (**(a1 + 48))
  {
    result = glpFragProgram_GenerateMetadata(a1, v7, v5, v15, a2);
  }

  else
  {
    result = glpVertProgram_GenerateMetadata(a1, v7, v5, v15, a2);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GLDAttribBindingsAddAttribBinding(int **a1, uint64_t *a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = malloc_type_realloc(v4, 8 * (v5 + 1) + 8, 0x7A98113FuLL);
  if (!v6)
  {
    abort();
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v5 + 1;
  result = GLDAttribBindingForPPStreamToken(*a2);
  *&v7[2 * v5 + 2] = result;
  return result;
}

int *PPParserOutputBindingsAddOutputBinding(int **a1, void *a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  result = malloc_type_realloc(v4, 8 * (v5 + 1) + 8, 0x7A98113FuLL);
  if (!result)
  {
    abort();
  }

  *a1 = result;
  *result = v5 + 1;
  *&result[2 * v5 + 2] = *a2;
  return result;
}

char *PPParserLabelsAddLabel(int **a1, const char *a2, unsigned int a3)
{
  v6 = *a1;
  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = malloc_type_realloc(v6, 8 * (v7 + 1) + 8, 0x7A98113FuLL);
  if (!v8)
  {
    abort();
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v7 + 1;
  result = strndup(a2, a3);
  *&v9[2 * v7 + 2] = result;
  return result;
}

uint64_t glpFragProgram_GenerateMetadata(void *a1, int *a2, uint64_t a3, uint64_t a4, int a5)
{
  v79 = a4;
  v86 = *MEMORY[0x277D85DE8];
  v8 = a1[6];
  v77 = a5;
  v75 = (2 * a5) | 1;
  v76 = v75 + a3;
  v9 = 8 * v76;
  MEMORY[0x28223BE20]();
  v11 = &v74[-v10];
  bzero(&v74[-v10], 8 * v76);
  bzero(v11, v9);
  v78 = a3;
  if (a3 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 8 * v78;
    do
    {
      v15 = a1[18] + v12;
      v16 = *(v15 + 8);
      v17 = *(v15 + 12);
      v18 = *a2++;
      v19 = gleLLVMGetArgTypeName(v18);
      v20 = 0;
      v21 = (v16 >> 8) & 0x1F;
      if (v21 > 0xA)
      {
        if (v21 == 11)
        {
          if (*(v8 + 220))
          {
            v80 = 0u;
            v81 = 0u;
            *&v80 = gleLLVMGetConstantInt32(v8);
            v31 = *(v8 + 16);
            *(&v80 + 1) = LLVMMDStringInContext();
            v32 = *(v8 + 16);
            *&v81 = LLVMMDStringInContext();
            v33 = *(v8 + 16);
            strlen(v19);
            *(&v81 + 1) = LLVMMDStringInContext();
          }

          else
          {
            v80 = 0uLL;
            *&v80 = gleLLVMGetConstantInt32(v8);
            v44 = *(v8 + 16);
            *(&v80 + 1) = LLVMMDStringInContext();
          }

          v34 = *(v8 + 16);
          goto LABEL_31;
        }

        if (v21 == 28)
        {
LABEL_9:
          memset(__str, 0, sizeof(__str));
          switch(v21)
          {
            case 0x1Cu:
              v30 = v17 & 0x3F;
              if ((v17 & 0x38) == 8)
              {
                if (!*(v8 + 220))
                {
                  goto LABEL_28;
                }

                snprintf(__str, 0x1FuLL, "user(tex_coord%u)", v30 - 8);
              }

              break;
            case 3u:
              if (*(v8 + 220))
              {
                strcpy(__str, "user(sec_front_color)");
                v30 = 3;
                goto LABEL_24;
              }

LABEL_28:
              v81 = 0u;
              v82 = 0u;
              v80 = 0u;
              *&v80 = gleLLVMGetConstantInt32(v8);
              v45 = *(v8 + 16);
              *(&v80 + 1) = LLVMMDStringInContext();
              v46 = *(v8 + 16);
              *&v81 = LLVMMDStringInContext();
              if (!*(v8 + 152))
              {
                v47 = *(v8 + 16);
                *(v8 + 152) = LLVMInt32TypeInContext();
              }

              *(&v81 + 1) = LLVMConstInt();
              v48 = *(v8 + 16);
              *&v82 = LLVMMDStringInContext();
              v49 = *(v8 + 16);
              *(&v82 + 1) = LLVMMDStringInContext();
              v50 = *(v8 + 16);
              goto LABEL_31;
            case 2u:
              if (*(v8 + 220))
              {
                strcpy(__str, "user(front_color)");
                v30 = 2;
LABEL_24:
                if (!__str[0])
                {
                  snprintf(__str, 0x1FuLL, "user(slot%u)", v30);
                }

                v84 = 0;
                v82 = 0u;
                v83 = 0u;
                v80 = 0u;
                v81 = 0u;
                *&v80 = gleLLVMGetConstantInt32(v8);
                v35 = *(v8 + 16);
                *(&v80 + 1) = LLVMMDStringInContext();
                v36 = *(v8 + 16);
                strlen(__str);
                *&v81 = LLVMMDStringInContext();
                v37 = *(v8 + 16);
                *(&v81 + 1) = LLVMMDStringInContext();
                v38 = *(v8 + 16);
                *&v82 = LLVMMDStringInContext();
                v39 = *(v8 + 16);
                *(&v82 + 1) = LLVMMDStringInContext();
                v40 = *(v8 + 16);
                strlen(v19);
                *&v83 = LLVMMDStringInContext();
                v41 = *(v8 + 16);
                *(&v83 + 1) = LLVMMDStringInContext();
                v42 = *(v8 + 16);
                strlen(__str);
                v84 = LLVMMDStringInContext();
                v43 = *(v8 + 16);
                goto LABEL_31;
              }

              goto LABEL_28;
            default:
              v30 = 0;
              break;
          }

          if (*(v8 + 220))
          {
            goto LABEL_24;
          }

          goto LABEL_28;
        }
      }

      else
      {
        if (v21 - 2 < 2)
        {
          goto LABEL_9;
        }

        if (v21 == 1)
        {
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *&v80 = gleLLVMGetConstantInt32(v8);
          v22 = *(v8 + 16);
          *(&v80 + 1) = LLVMMDStringInContext();
          v23 = *(v8 + 16);
          *&v81 = LLVMMDStringInContext();
          v24 = *(v8 + 16);
          *(&v81 + 1) = LLVMMDStringInContext();
          v25 = *(v8 + 16);
          *&v82 = LLVMMDStringInContext();
          v26 = *(v8 + 16);
          strlen(v19);
          *(&v82 + 1) = LLVMMDStringInContext();
          v27 = *(v8 + 16);
          *&v83 = LLVMMDStringInContext();
          v28 = *(v8 + 16);
          *(&v83 + 1) = LLVMMDStringInContext();
          v29 = *(v8 + 16);
LABEL_31:
          v20 = LLVMMDNodeInContext();
        }
      }

      *&v11[v12] = v20;
      ++v13;
      v12 += 8;
    }

    while (v14 != v12);
  }

  v51 = a1[13];
  if (v51)
  {
    v52 = *v51;
  }

  else
  {
    v52 = 0;
  }

  gleLLVMAddCommonMetaData(v8, &v11[8 * v78], v75, v78, v52, v77);
  v53 = *(v8 + 16);
  v78 = LLVMMDNodeInContext();
  v54 = v79;
  v55 = 8 * v79;
  MEMORY[0x28223BE20]();
  v57 = &v74[-v56];
  bzero(&v74[-v56], v55);
  bzero(v57, v55);
  if (v54 >= 1)
  {
    v58 = v79;
    v59 = 8;
    v60 = v57;
    do
    {
      v61 = (*(a1[17] + v59) >> 8) & 0x1F;
      if (v61 == 7)
      {
        *&v81 = 0;
        v80 = 0uLL;
        v66 = *(v8 + 16);
        *&v80 = LLVMMDStringInContext();
        v67 = *(v8 + 16);
        *(&v80 + 1) = LLVMMDStringInContext();
        v68 = *(v8 + 16);
        v65 = LLVMMDStringInContext();
      }

      else
      {
        if (v61 != 4)
        {
          v70 = 0;
          goto LABEL_48;
        }

        *&v81 = 0;
        v80 = 0uLL;
        v62 = *(v8 + 16);
        *&v80 = LLVMMDStringInContext();
        if (!*(v8 + 152))
        {
          v63 = *(v8 + 16);
          *(v8 + 152) = LLVMInt32TypeInContext();
        }

        *(&v80 + 1) = LLVMConstInt();
        if (!*(v8 + 152))
        {
          v64 = *(v8 + 16);
          *(v8 + 152) = LLVMInt32TypeInContext();
        }

        v65 = LLVMConstInt();
      }

      *&v81 = v65;
      v69 = *(v8 + 16);
      v70 = LLVMMDNodeInContext();
LABEL_48:
      *v60++ = v70;
      v59 += 8;
      --v58;
    }

    while (v58);
  }

  v71 = *(v8 + 16);
  LLVMMDNodeInContext();
  result = gleLLVMCreateFunctionMetadata(v8, "air.fragment");
  v73 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpVertProgram_GenerateMetadata(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v72 = a4;
  v80 = *MEMORY[0x277D85DE8];
  v73 = a1;
  v8 = *(a1 + 48);
  if (!*(v8 + 152))
  {
    v9 = *(v8 + 16);
    *(v8 + 152) = LLVMInt32TypeInContext();
  }

  LODWORD(v70) = a5;
  v68 = (2 * a5) | 1;
  v69 = v68 + a3;
  v10 = 8 * v69;
  MEMORY[0x28223BE20]();
  v12 = &v67[-v11];
  bzero(&v67[-v11], 8 * v69);
  bzero(v12, v10);
  LODWORD(v71) = a3;
  if (a3 >= 1)
  {
    v13 = 0;
    v14 = v71;
    do
    {
      v15 = gleLLVMGetArgTypeName(*(a2 + 4 * v13));
      if (*(v8 + 220))
      {
        v16 = v15;
        memset(__str, 0, sizeof(__str));
        snprintf(__str, 0x1FuLL, "attr%d", v13);
        v78 = 0;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        *&v74 = gleLLVMGetConstantInt32(v8);
        v17 = *(v8 + 16);
        *(&v74 + 1) = LLVMMDStringInContext();
        v18 = *(v8 + 16);
        *&v75 = LLVMMDStringInContext();
        *(&v75 + 1) = LLVMConstInt();
        *&v76 = LLVMConstInt();
        v19 = *(v8 + 16);
        *(&v76 + 1) = LLVMMDStringInContext();
        v20 = *(v8 + 16);
        strlen(v16);
        *&v77 = LLVMMDStringInContext();
        v21 = *(v8 + 16);
        *(&v77 + 1) = LLVMMDStringInContext();
        v22 = *(v8 + 16);
        strlen(__str);
        v78 = LLVMMDStringInContext();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
        *&v74 = gleLLVMGetConstantInt32(v8);
        v24 = *(v8 + 16);
        *(&v74 + 1) = LLVMMDStringInContext();
        v25 = *(v8 + 16);
        v75 = LLVMMDStringInContext();
      }

      v23 = *(v8 + 16);
      *&v12[8 * v13++] = LLVMMDNodeInContext();
    }

    while (v14 != v13);
  }

  v26 = *(v73 + 104);
  if (v26)
  {
    v27 = *v26;
  }

  else
  {
    v27 = 0;
  }

  gleLLVMAddCommonMetaData(v8, &v12[8 * v71], v68, v71, v27, v70);
  v28 = *(v8 + 16);
  v70 = LLVMMDNodeInContext();
  v29 = v72;
  v30 = 8 * v72;
  MEMORY[0x28223BE20]();
  v32 = &v67[-v31];
  bzero(&v67[-v31], v30);
  v71 = v32;
  bzero(v32, v30);
  if (v29 >= 1)
  {
    v33 = v71;
    v34 = v72;
    v35 = 8;
    do
    {
      v36 = 0;
      v37 = *(*(v73 + 136) + v35);
      v38 = (v37 >> 8) & 0x1F;
      if (v38 > 8)
      {
        switch(v38)
        {
          case 9u:
            *&v75 = 0;
            v74 = 0uLL;
            v42 = *(v8 + 16);
            goto LABEL_30;
          case 0xAu:
            v75 = 0u;
            v76 = 0u;
            v74 = 0u;
            v47 = *(v8 + 16);
            *&v74 = LLVMMDStringInContext();
            *(&v74 + 1) = LLVMConstInt();
            v48 = *(v8 + 16);
            *&v75 = LLVMMDStringInContext();
            *(&v75 + 1) = LLVMConstInt();
            v49 = *(v8 + 16);
            *&v76 = LLVMMDStringInContext();
            v50 = *(v8 + 16);
            *(&v76 + 1) = LLVMMDStringInContext();
            v51 = *(v8 + 16);
            goto LABEL_49;
          case 0x11u:
LABEL_22:
            memset(__str, 0, sizeof(__str));
            switch(v38)
            {
              case 0x11u:
                v53 = HIDWORD(v37);
                v41 = HIDWORD(v37) & 0x3F;
                if ((v53 & 0x38) == 8)
                {
                  if (!*(v8 + 220))
                  {
                    goto LABEL_48;
                  }

                  snprintf(__str, 0x1FuLL, "user(tex_coord%u)", v41 - 8);
                }

                break;
              case 5u:
                v52 = *(v8 + 220);
                if ((v37 & 0x100000000) != 0)
                {
                  if (v52)
                  {
                    strcpy(__str, "user(sec_back_color)");
                    LODWORD(v41) = 4;
                    goto LABEL_45;
                  }
                }

                else if (v52)
                {
                  strcpy(__str, "user(sec_front_color)");
                  LODWORD(v41) = 3;
                  goto LABEL_45;
                }

LABEL_48:
                *&v76 = 0;
                v74 = 0u;
                v75 = 0u;
                v59 = *(v8 + 16);
                *&v74 = LLVMMDStringInContext();
                v60 = *(v8 + 16);
                *(&v74 + 1) = LLVMMDStringInContext();
                *&v75 = LLVMConstInt();
                v61 = *(v8 + 16);
                *(&v75 + 1) = LLVMMDStringInContext();
                v62 = *(v8 + 16);
                *&v76 = LLVMMDStringInContext();
                v63 = *(v8 + 16);
                goto LABEL_49;
              case 4u:
                v40 = *(v8 + 220);
                if ((v37 & 0x100000000) != 0)
                {
                  if (v40)
                  {
                    strcpy(__str, "user(back_color)");
                    LODWORD(v41) = 1;
                    goto LABEL_45;
                  }
                }

                else if (v40)
                {
                  strcpy(__str, "user(front_color)");
                  LODWORD(v41) = 2;
LABEL_45:
                  if (!__str[0])
                  {
                    snprintf(__str, 0x1FuLL, "user(slot%u)", v41);
                  }

                  v74 = 0u;
                  v75 = 0u;
                  v54 = *(v8 + 16);
                  *&v74 = LLVMMDStringInContext();
                  v55 = *(v8 + 16);
                  strlen(__str);
                  *(&v74 + 1) = LLVMMDStringInContext();
                  v56 = *(v8 + 16);
                  *&v75 = LLVMMDStringInContext();
                  v57 = *(v8 + 16);
                  *(&v75 + 1) = LLVMMDStringInContext();
                  v58 = *(v8 + 16);
                  goto LABEL_49;
                }

                goto LABEL_48;
              default:
                LODWORD(v41) = 0;
                break;
            }

            if (*(v8 + 220))
            {
              goto LABEL_45;
            }

            goto LABEL_48;
        }
      }

      else
      {
        if (v38 - 4 < 2)
        {
          goto LABEL_22;
        }

        if (v38 == 1)
        {
          *&v75 = 0;
          v74 = 0uLL;
          v43 = *(v8 + 16);
LABEL_30:
          *&v74 = LLVMMDStringInContext();
          v44 = *(v8 + 16);
          *(&v74 + 1) = LLVMMDStringInContext();
          v45 = *(v8 + 16);
          *&v75 = LLVMMDStringInContext();
          v46 = *(v8 + 16);
LABEL_49:
          v36 = LLVMMDNodeInContext();
          goto LABEL_50;
        }

        if (v38 == 3)
        {
          *&v75 = 0;
          v74 = 0uLL;
          v39 = *(v8 + 16);
          goto LABEL_30;
        }
      }

LABEL_50:
      *v33++ = v36;
      v35 += 8;
      --v34;
    }

    while (v34);
  }

  v64 = *(v8 + 16);
  LLVMMDNodeInContext();
  result = gleLLVMCreateFunctionMetadata(v8, "air.vertex");
  v66 = *MEMORY[0x277D85DE8];
  return result;
}

double glp_strtod(char *a1, unsigned __int8 **a2)
{
  v2 = 0;
  v3 = *a1;
  if (v3 != 43)
  {
    if (v3 != 45)
    {
      goto LABEL_5;
    }

    v2 = 1;
  }

  v4 = *++a1;
  v3 = v4;
LABEL_5:
  v5 = 0;
  result = 0.0;
  if (v3 <= 100)
  {
    if (v3 && v3 != 46 && v3 != 69)
    {
      goto LABEL_47;
    }

LABEL_17:
    v9 = a1;
    goto LABEL_18;
  }

  switch(v3)
  {
    case 'e':
      goto LABEL_17;
    case 'i':
      v37 = a1[1];
      v36 = (a1 + 1);
      if (v37 == 110)
      {
        v9 = v36 + 1;
      }

      else
      {
        v9 = v36;
      }

      v10 = INFINITY;
      goto LABEL_57;
    case 'n':
      v8 = a1[1];
      v7 = (a1 + 1);
      if (v8 == 97)
      {
        v9 = v7 + 1;
      }

      else
      {
        v9 = v7;
      }

      v10 = NAN;
LABEL_57:
      result = v10;
      goto LABEL_58;
  }

LABEL_47:
  v9 = (a1 - 1);
  do
  {
    v32 = *++v9;
    v3 = v32;
  }

  while ((v32 - 48) < 0xA);
  v33 = (v9 - 1);
  if (v9 - 1 >= a1)
  {
    result = 0.0;
    v34 = 1.0;
    do
    {
      v35 = *v33--;
      result = result + (v35 - 48) * v34;
      v34 = v34 * 10.0;
    }

    while (v33 >= a1);
  }

  v5 = 1;
LABEL_18:
  if (v3 == 46)
  {
    v11 = 0;
    do
    {
      v3 = v9[++v11];
    }

    while ((v3 - 48) < 0xA);
    v12 = &v9[v11];
    v13 = 0.0;
    if (v11 >= 2)
    {
      v14 = v11 - 1;
      do
      {
        v13 = (v9[v14] - 48) + v13 * 0.1;
        v15 = v14-- + 1;
      }

      while (v15 > 2);
      v13 = v13 * 0.1;
    }

    result = result + v13;
    v5 = 1;
    v9 = v12;
  }

  if (!v5 || (v3 & 0xFFFFFFDF) != 0x45)
  {
LABEL_58:
    if (!a2)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v16 = (v9 + 2);
  v19 = v9[1];
  v17 = (v9 + 1);
  v18 = v19;
  if (v19 == 43)
  {
    v17 = v16;
  }

  v20 = v18 == 45;
  if (v18 == 45)
  {
    v21 = v16;
  }

  else
  {
    v21 = v17;
  }

  v22 = v20;
  v9 = (v21 - 1);
  do
  {
    v23 = *++v9;
  }

  while ((v23 - 48) < 0xA);
  v24 = v9 - 1;
  v25 = 0.0;
  if ((v9 - 1) >= v21)
  {
    v26 = 1.0;
    do
    {
      v27 = *v24--;
      v25 = v25 + (v27 - 48) * v26;
      v26 = v26 * 10.0;
    }

    while (v24 >= v21);
  }

  if (v22)
  {
    v25 = -v25;
  }

  v28 = v25;
  v29 = 1.0;
  if (v28 < 1)
  {
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    if (v28 > 0xFFFFFFDF)
    {
      v38 = v28;
    }

    else
    {
      do
      {
        v29 = v29 * 1.0e-32;
        v38 = v28 + 32;
        v39 = __CFADD__(v28, 64);
        v28 += 32;
      }

      while (!v39);
    }

    v40 = ~v38;
    v41 = &pow_10_down;
  }

  else
  {
    if (v28 < 0x21)
    {
      v30 = v28;
    }

    else
    {
      do
      {
        v29 = v29 * 1.0e32;
        v30 = v28 - 32;
        v31 = v28 > 0x40;
        v28 -= 32;
      }

      while (v31);
    }

    v40 = v30 - 1;
    v41 = &pow_10_up;
  }

  v29 = v29 * v41[v40];
LABEL_71:
  result = result * v29;
  if (a2)
  {
LABEL_59:
    *a2 = v9;
  }

LABEL_60:
  if (v2)
  {
    return -result;
  }

  return result;
}

uint64_t glpStringHashPut(uint64_t a1, const char *a2, size_t __n, uint64_t a4, double a5)
{
  LODWORD(a5) = *(a1 + 36);
  v9 = *(a1 + 32);
  if (*&a5 / v9 > 0.65)
  {
    v10 = 0;
    do
    {
      v11 = HT_PRIMES[v10++];
    }

    while (v11 <= v9);
    _glpStringHashRehash(a1, v11);
  }

  return _glpStringHashRealPut(a1, a2, __n, a4);
}

uint64_t _glpStringHashRehash(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 36) = 0;
  v5 = 32 * a2;
  v6 = (*(a1 + 8))(*a1, v5, "Hash Storage (String, growth)");
  *(a1 + 40) = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 16);
    do
    {
      v8 = *(v7 - 2);
      if (v8)
      {
        _glpStringHashRealPut(a1, *(v7 - 1), *v7, v8);
      }

      v7 += 4;
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 24);
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpStringHashRealPut(uint64_t result, const char *a2, size_t __n, uint64_t a4)
{
  v7 = result;
  v8 = (HIDWORD(__n) % *(result + 32));
  for (i = *(result + 40); ; i = *(v7 + 40))
  {
    v10 = i + 32 * v8;
    if (!*v10)
    {
      break;
    }

    result = glpStringsEqual(a2, __n, *(v10 + 8), *(v10 + 16));
    if (result)
    {
      --*(v7 + 36);
      i = *(v7 + 40);
      break;
    }

    v8 = (v8 + 1) % *(v7 + 32);
  }

  v11 = i + 32 * v8;
  *(v11 + 8) = a2;
  *(v11 + 16) = __n;
  *(*(v7 + 40) + 32 * v8) = a4;
  ++*(v7 + 36);
  return result;
}

uint64_t glpStringHashGet(uint64_t a1, const char *a2, size_t __n)
{
  v3 = (HIDWORD(__n) % *(a1 + 32));
  v4 = *(a1 + 40) + 32 * v3;
  if (!*v4)
  {
    return 0;
  }

  while (!glpStringsEqual(a2, __n, *(v4 + 8), *(v4 + 16)))
  {
    v3 = (v3 + 1) % *(a1 + 32);
    v4 = *(a1 + 40) + 32 * v3;
    if (!*v4)
    {
      return 0;
    }
  }

  return *(*(a1 + 40) + 32 * v3);
}

uint64_t glpMakePointerHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (Pointer)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES;
  *(v2 + 32) = HT_PRIMES;
  v5 = (a1[1])(*a1, 24 * v4, "Hash Storage (Pointer)");
  *(v2 + 40) = v5;
  bzero(v5, 24 * HT_PRIMES);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t glpDestroyPointerHash(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48))
    {
      (*(result + 24))(*result, *(result + 40));
      v2 = v1[3];
      v3 = *v1;

      return v2(v3, v1);
    }
  }

  return result;
}

uint64_t glpPointerHashPut(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  LODWORD(a4) = *(a1 + 36);
  v7 = *(a1 + 32);
  if (*&a4 / v7 > 0.65)
  {
    v8 = 0;
    do
    {
      v9 = HT_PRIMES[v8++];
    }

    while (v9 <= v7);
    _glpPointerHashRehash(a1, v9);
  }

  return _glpPointerHashRealPut(a1, a2, a3);
}

uint64_t _glpPointerHashRehash(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 36) = 0;
  v5 = 24 * a2;
  v6 = (*(a1 + 8))(*a1, v5, "Hash Storage (Pointer, growth)");
  *(a1 + 40) = v6;
  bzero(v6, v5);
  if (v3)
  {
    v7 = (v4 + 8);
    do
    {
      v8 = *(v7 - 1);
      if (v8)
      {
        _glpPointerHashRealPut(a1, *v7, v8);
      }

      v7 += 3;
      --v3;
    }

    while (v3);
  }

  v9 = *(a1 + 24);
  v10 = *a1;

  return v9(v10, v4);
}

uint64_t _glpPointerHashRealPut(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  v5 = (a2 >> 4) % v3;
  v6 = (v4 + 24 * v5);
  if (*v6)
  {
    if (v6[1] == a2)
    {
LABEL_8:
      --*(result + 36);
    }

    else
    {
      while (1)
      {
        if (v5 + 1 == v3)
        {
          v5 = 0;
        }

        else
        {
          ++v5;
        }

        v6 = (v4 + 24 * v5);
        if (!*v6)
        {
          break;
        }

        if (v6[1] == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  *(v4 + 24 * v5 + 8) = a2;
  *v6 = a3;
  ++*(result + 36);
  return result;
}

uint64_t glpPointerHashGet(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = (a2 >> 4) % v2;
  for (result = *(v3 + 24 * v4); result && *(v3 + 24 * v4 + 8) != a2; result = *(v3 + 24 * v4))
  {
    if (v4 + 1 == v2)
    {
      v4 = 0;
    }

    else
    {
      ++v4;
    }
  }

  return result;
}

uint64_t glpMakeDataHash(void *a1)
{
  v2 = (a1[1])(*a1, 56, "Hash (Data)");
  v3 = *(a1 + 1);
  *v2 = *a1;
  *(v2 + 16) = v3;
  v4 = HT_PRIMES;
  *(v2 + 32) = HT_PRIMES;
  v5 = (a1[1])(*a1, 32 * v4, "Hash Storage (Data)");
  *(v2 + 40) = v5;
  bzero(v5, 32 * HT_PRIMES);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t glpAlignTypeSize(uint64_t result, unsigned int a2)
{
  if (result != -1)
  {
    return (result + a2 - 1) / a2 * a2;
  }

  return result;
}

uint64_t glpABIGetMinimumBufferBytesForType(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v3 = &ABIs + 6 * a1;
  v4 = (*v3)(a2, a3);
  return ((v3[4])(v4) + 15) & 0xFFFFFFF0;
}

uint64_t applevec4TypeSize(unsigned int *a1, uint64_t a2)
{
  Kind = glpTypeGetKind(a1);
  if (Kind <= 1)
  {
    if (Kind)
    {
      if (Kind == 1)
      {
        v14 = 0;
        glpStructTypeGetSizesAndAlignments(0, a1, a2, &v14, 0, 0);
        return v14;
      }
    }

    else
    {
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);
      Category = glpPrimitiveTypeGetCategory(PrimitiveType);
      if (Category > 2)
      {
        if (Category == 3)
        {
          Columns = glpPrimitiveMatrixGetColumns(PrimitiveType);
          ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
          return glpPrimitiveTypeGetNumVec4s(ColumnType) * Columns;
        }

        if (Category == 4)
        {
          return 1;
        }
      }

      else if ((Category - 1) < 2)
      {

        return glpPrimitiveTypeGetNumVec4s(PrimitiveType);
      }
    }

    abort();
  }

  if (Kind != 2)
  {
    if (Kind != 5)
    {
      abort();
    }

    return 1;
  }

  result = glpArrayTypeGetElementCount(a1);
  if (result != -1)
  {
    ElementType = glpArrayTypeGetElementType(a1);
    v9 = applevec4TypeSize(ElementType, a2);
    ElementCount = glpArrayTypeGetElementCount(a1);
    if (ElementCount == -1 || v9 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return (ElementCount * v9);
    }
  }

  return result;
}

uint64_t applevec4MatrixStride(int a1)
{
  ColumnType = glpPrimitiveMatrixGetColumnType(a1);

  return glpPrimitiveTypeGetNumVec4s(ColumnType);
}

uint64_t std140TypeSize(unsigned int *a1, uint64_t a2)
{
  Kind = glpTypeGetKind(a1);
  if (Kind == 2)
  {
    result = glpArrayTypeGetElementCount(a1);
    if (result != -1)
    {
      ElementType = glpArrayTypeGetElementType(a1);
      v8 = std140TypeSize(ElementType, a2);
      if (v8 == -1)
      {
        v9 = -1;
      }

      else
      {
        v9 = (v8 + 15) & 0xFFFFFFF0;
      }

      ElementCount = glpArrayTypeGetElementCount(a1);
      if (ElementCount == -1 || v8 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v9 * ElementCount;
      }
    }
  }

  else if (Kind == 1)
  {
    v12 = 0;
    glpStructTypeGetSizesAndAlignments(1u, a1, a2, &v12, 0, 0);
    return v12;
  }

  else
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);

    return std140PrimitiveTypeSize(PrimitiveType, a2);
  }

  return result;
}

uint64_t std140TypeAlign(unsigned int *a1, uint64_t a2)
{
  Kind = glpTypeGetKind(a1);
  if (Kind == 2)
  {
    ElementType = glpArrayTypeGetElementType(a1);
    return (std140TypeAlign(ElementType, a2) + 15) & 0xFFFFFFF0;
  }

  else if (Kind == 1)
  {
    v8 = 0;
    glpStructTypeGetSizesAndAlignments(1u, a1, a2, 0, &v8, 0);
    return v8;
  }

  else
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);

    return std140PrimitiveTypeAlign(PrimitiveType);
  }
}

uint64_t std140MatrixStride(int a1, __int16 a2)
{
  if ((a2 & 0x400) != 0)
  {
    RowType = glpPrimitiveMatrixGetRowType(a1);
  }

  else
  {
    RowType = glpPrimitiveMatrixGetColumnType(a1);
  }

  return (std140PrimitiveTypeAlign(RowType) + 15) & 0xFFFFFFF0;
}

uint64_t std140PrimitiveTypeSize(uint64_t a1, uint64_t a2)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category <= 2)
  {
    if (Category == 1)
    {
      if (a1 == 62)
      {
        return 8;
      }

      else
      {
        return 4;
      }
    }

    if (Category == 2)
    {
      Length = glpPrimitiveVectorGetLength(a1);
      ElementType = glpPrimitiveVectorGetElementType(a1);
      v7 = std140PrimitiveTypeSize(ElementType, a2);
      if (v7 == -1 || Length == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return (v7 * Length);
      }
    }

LABEL_20:
    abort();
  }

  if (Category != 3)
  {
    if (Category == 4)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_20;
  }

  if ((a2 & 0x400) != 0)
  {
    Rows = glpPrimitiveMatrixGetRows(a1);
  }

  else
  {
    Rows = glpPrimitiveMatrixGetColumns(a1);
  }

  return std140MatrixStride(a1, a2) * Rows;
}

uint64_t std140PrimitiveTypeAlign(uint64_t a1)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category > 2)
  {
    if (Category == 3)
    {
      ColumnType = glpPrimitiveMatrixGetColumnType(a1);
      return (std140PrimitiveTypeAlign(ColumnType) + 15) & 0xFFFFFFF0;
    }

    if (Category == 4)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (Category == 1)
  {
    if (a1 == 62)
    {
      return 8;
    }

    else
    {
      return 4;
    }
  }

  if (Category != 2)
  {
LABEL_15:
    abort();
  }

  Length = glpPrimitiveVectorGetLength(a1);
  ElementType = glpPrimitiveVectorGetElementType(a1);
  v5 = std140PrimitiveTypeAlign(ElementType);
  if (Length == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  return (v5 << v6);
}

void *glpMallocAlloc(int a1, size_t size)
{
  result = malloc_type_malloc(size, 0x75808E6AuLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *glpMallocRealloc(int a1, void *ptr, size_t size)
{
  result = malloc_type_realloc(ptr, size, 0x7A98113FuLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *glpInitPoolAllocator(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_malloc(0x20uLL, 0x75808E6AuLL);
  if (!v6)
  {
    abort();
  }

  v7 = v6;
  v8 = sysconf(29);
  *v7 = (a2 + v8 - 1) / v8 * v8;
  v9 = sysconf(29);
  result = makePoolNode((a1 + v9 - 1) / v9 * v9, 0);
  v7[1] = result;
  *(v7 + 24) = 0;
  *a3 = v7;
  a3[1] = poolAlloc;
  a3[2] = poolRealloc;
  a3[3] = poolFree;
  return result;
}

void *makePoolNode(size_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x75808E6AuLL);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  v6 = mmap(0, a1, 3, 4098, 1107296256, 0);
  *v5 = v6;
  v5[1] = v6;
  v5[2] = a1;
  v5[3] = a1;
  v5[4] = a2;
  return v5;
}

size_t poolAlloc(size_t *a1, uint64_t a2)
{
  v3 = (a2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = *a1;
  if (v3 > v4)
  {
    v5 = sysconf(29);
    v4 = (v3 + v5 - 1) / v5 * v5;
    PoolNode = a1[1];
LABEL_4:
    PoolNode = makePoolNode(v4, PoolNode);
    a1[1] = PoolNode;
    goto LABEL_5;
  }

  PoolNode = a1[1];
  if (PoolNode[3] < v3)
  {
    goto LABEL_4;
  }

LABEL_5:
  result = PoolNode[1];
  a1[2] = result;
  PoolNode[1] = result + v3;
  PoolNode[3] -= v3;
  return result;
}

uint64_t poolFree(uint64_t result, uint64_t a2)
{
  if (*(result + 24))
  {
    if (*(result + 16) == a2)
    {
      v2 = *(result + 8);
      *(v2 + 24) += *(v2 + 8) - a2;
      *(v2 + 8) = a2;
    }
  }

  return result;
}

void *glpInitTempPoolAllocator(uint64_t a1, uint64_t a2, void *a3)
{
  result = glpInitPoolAllocator(a1, a2, a3);
  *(*a3 + 24) = 1;
  return result;
}

void glpDestroyPoolAllocator(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 32);
      munmap(*v2, *(v2 + 16));
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(v1);
}

void glpLLVMCGTopLevel(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 832) & 4) != 0)
  {
    glpInitTempPoolAllocator(0x4000, 0x4000, (a1 + 360));
    *(a1 + 392) = glpMakeDataHash((a1 + 360));
  }

  v4 = *a1;
  v5 = LLVMModuleCreateWithNameInContext();
  *(a1 + 8) = v5;
  glpLLVMSetupModule(v5);
  v6 = *a1;
  *(a1 + 32) = LLVMInt64TypeInContext();
  v7 = *a1;
  *(a1 + 40) = LLVMInt32TypeInContext();
  v8 = *a1;
  *(a1 + 48) = LLVMInt16TypeInContext();
  v9 = *a1;
  *(a1 + 56) = LLVMInt8TypeInContext();
  v10 = *a1;
  *(a1 + 64) = LLVMInt1TypeInContext();
  v11 = *a1;
  *(a1 + 72) = LLVMFloatTypeInContext();
  v12 = *a1;
  *(a1 + 80) = LLVMHalfTypeInContext();
  v13 = *a1;
  *(a1 + 88) = LLVMVoidTypeInContext();
  v14 = *a1;
  *(a1 + 96) = LLVMDoubleTypeInContext();
  if (*(a1 + 788))
  {
    v15 = *(a1 + 8);
    glpLLVMDIBuilderCreate();
  }

  v16 = *(a1 + 116);
  if (v16 > 0x10)
  {
    if (v16 > 0x20)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(a1 + 40);
    }
  }

  else
  {
    v17 = *a1;
    v18 = LLVMInt16TypeInContext();
  }

  *(a1 + 456) = v18;
  v19 = *(a1 + 120);
  if (v19 > 0x10)
  {
    if (v19 > 0x20)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(a1 + 40);
    }
  }

  else
  {
    v20 = *a1;
    v21 = LLVMInt16TypeInContext();
  }

  *(a1 + 464) = v21;
  v22 = *(a1 + 124);
  if (v22 > 0x10)
  {
    if (v22 > 0x20)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(a1 + 40);
    }
  }

  else
  {
    v23 = *a1;
    v24 = LLVMInt16TypeInContext();
  }

  *(a1 + 472) = v24;
  *(a1 + 480) = glpLLVMGetFloatTypeFromBits(a1, *(a1 + 104));
  *(a1 + 488) = glpLLVMGetFloatTypeFromBits(a1, *(a1 + 108));
  *(a1 + 496) = glpLLVMGetFloatTypeFromBits(a1, *(a1 + 112));
  if (*(a1 + 320) != 3)
  {
LABEL_33:
    glpLLVMBuildSubroutinesTypeClasses(a1, a2);
    if (glpTopLevelNodeGetDefCount(a2))
    {
      v28 = 0;
      do
      {
        Def = glpTopLevelNodeGetDef(a2, v28);
        if (*(a1 + 834))
        {
          glpLLVMCleanUpASTObjects(a1, Def);
        }

        glpLLVMCGFindSamplersAndBuffers(a1, Def);
        ++v28;
      }

      while (v28 < glpTopLevelNodeGetDefCount(a2));
    }

    if (glpTopLevelNodeGetDefCount(a2))
    {
      v30 = 0;
      do
      {
        v31 = glpTopLevelNodeGetDef(a2, v30);
        glpLLVMCGNode(a1, v31, 0);
        ++v30;
      }

      while (v30 < glpTopLevelNodeGetDefCount(a2));
    }

    v32 = *(a1 + 320);
    if (v32 <= 1)
    {
      if (!v32)
      {
        if (!*(a1 + 834))
        {
          glpLLVMCreateAttributeDescription(a1);
        }

        glpLLVMVertexMetaData(a1, "air.vertex");
LABEL_58:
        if (*(a1 + 834))
        {
          goto LABEL_67;
        }

        v44 = *(a1 + 824);
        if (v44)
        {
          v45 = *(a1 + 504);
          v46 = malloc_type_malloc(4 * v44 + 4, 0x75808E6AuLL);
          if (!v46)
          {
            goto LABEL_78;
          }

          *v46 = v44;
          v47 = v46 + 1;
          do
          {
            v48 = *v45++;
            *v47++ = v48;
            --v44;
          }

          while (v44);
        }

        v49 = *(a1 + 828);
        if (!v49)
        {
          goto LABEL_67;
        }

        v50 = *(a1 + 512);
        v51 = malloc_type_malloc(4 * v49 + 4, 0x75808E6AuLL);
        if (v51)
        {
          *v51 = v49;
          v52 = v51 + 1;
          do
          {
            v53 = *v50++;
            *v52++ = v53;
            --v49;
          }

          while (v49);
LABEL_67:
          v54 = *(a1 + 24);
          if (v54)
          {
            glpLLVMDIBuilderDelete(v54);
          }

          if (*(a1 + 832))
          {
            v74 = 0uLL;
            v55 = *a1;
            *&v73 = LLVMMDStringInContext();
            v56 = *(a1 + 528);
            if (!v56)
            {
              v57 = *(a1 + 40);
              v56 = LLVMConstInt();
              *(a1 + 528) = v56;
            }

            *(&v73 + 1) = v56;
            v58 = *(a1 + 520);
            if (v58)
            {
              *&v74 = *(a1 + 520);
            }

            else
            {
              v59 = *(a1 + 40);
              v58 = LLVMConstInt();
              *(a1 + 520) = v58;
              *&v74 = v58;
              if (!v58)
              {
                v60 = *(a1 + 40);
                v58 = LLVMConstInt();
                *(a1 + 520) = v58;
              }
            }

            *(&v74 + 1) = v58;
            v61 = *a1;
            v62 = LLVMMDNodeInContext();
            glpAddNamedMetadataOperand(*(a1 + 8), "air.language_version", v62);
          }

          v63 = *a1;
          *&v73 = LLVMMDStringInContext();
          v64 = *a1;
          v65 = LLVMMDNodeInContext();
          glpAddNamedMetadataOperand(*(a1 + 8), "air.compile_options", v65);
          v66 = *a1;
          *&v73 = LLVMMDStringInContext();
          v67 = *a1;
          v68 = LLVMMDNodeInContext();
          glpAddNamedMetadataOperand(*(a1 + 8), "air.compile_options", v68);
          v69 = *a1;
          *&v73 = LLVMMDStringInContext();
          v70 = *a1;
          v71 = LLVMMDNodeInContext();
          glpAddNamedMetadataOperand(*(a1 + 8), "air.compile_options", v71);
          v72 = *(a1 + 144);
          createBitCodeStorage();
        }

LABEL_78:
        abort();
      }

      if (v32 != 1)
      {
        goto LABEL_58;
      }

      *&v73 = *(a1 + 168);
      v33 = *a1;
      v34 = LLVMMDNodeInContext();
      v35 = *(a1 + 192);
      *(&v73 + 1) = v34;
      *&v74 = v35;
      v36 = *a1;
      v37 = LLVMMDNodeInContext();
      v38 = *(a1 + 8);
      v39 = "air.tess_control";
    }

    else
    {
      if (v32 == 2)
      {
        glpLLVMVertexMetaData(a1, "air.tess_evaluation");
        goto LABEL_58;
      }

      if (v32 != 3)
      {
        if (v32 == 4)
        {
          if ((*(a1 + 832) & 1) != 0 && !*(a1 + 834))
          {
            glpLLVMCreateAttributeDescription(a1);
          }

          glpLLVMFragmentMetaData(a1);
        }

        goto LABEL_58;
      }

      *&v73 = *(a1 + 168);
      v40 = *a1;
      v41 = LLVMMDNodeInContext();
      v42 = *(a1 + 192);
      *(&v73 + 1) = v41;
      *&v74 = v42;
      v43 = *a1;
      v37 = LLVMMDNodeInContext();
      v38 = *(a1 + 8);
      v39 = "air.geometry";
    }

    glpAddNamedMetadataOperand(v38, v39, v37);
    goto LABEL_58;
  }

  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  glpLinkedProgramGetOverrides(*(a1 + 136), &v73);
  if (SHIDWORD(v73) > 3)
  {
    if (HIDWORD(v73) != 4)
    {
      if (HIDWORD(v73) == 10)
      {
        v25 = 4;
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v25 = 3;
  }

  else
  {
    if (HIDWORD(v73))
    {
      if (HIDWORD(v73) == 1)
      {
        v25 = 2;
        goto LABEL_31;
      }

LABEL_28:
      v25 = 6;
      goto LABEL_31;
    }

    v25 = 1;
  }

LABEL_31:
  *(a1 + 792) = v25;
  GlobalTypeQualifier = glpTopLevelNodeGetGlobalTypeQualifier(a2, 0x20000000);
  if (GlobalTypeQualifier)
  {
    Layout = glpGlobalTypeQualifierNodeGetLayout(GlobalTypeQualifier);
    glpLayoutObjectGetGeomInOut(Layout, (a1 + 792), 0, 0, 0, 0);
  }

  goto LABEL_33;
}

uint64_t glpLLVMGetFloatTypeFromBits(uint64_t *a1, unsigned int a2)
{
  if (a2 > 0x10)
  {
    if (a2 > 0x20)
    {
      return 0;
    }

    else
    {
      v4 = *a1;
      return LLVMFloatTypeInContext();
    }
  }

  else
  {
    v2 = *a1;
    return LLVMHalfTypeInContext();
  }
}

void glpLLVMBuildSubroutinesTypeClasses(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v65 = a1;
  v67 = *MEMORY[0x277D85DE8];
  if (!glpTopLevelNodeGetDefCount(a2))
  {
    goto LABEL_60;
  }

  v3 = 0;
  PointerHash = 0;
  v64 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v62 = v2;
  do
  {
    Def = glpTopLevelNodeGetDef(v2, v7);
    if (Def)
    {
      v9 = Def;
      if (glpASTNodeGetKind(Def) == 51)
      {
        Prototype = glpFunctionDefinitionNodeGetPrototype(v9);
        Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
        if ((*(Extra + 10) & 0x10) != 0)
        {
          v12 = Extra;
          if (!PointerHash)
          {
            PointerHash = glpMakePointerHash(*(v65 + 152));
            v6 = (*(*(v65 + 152) + 8))(**(v65 + 152), 32, "Vector Storage (unsigned)");
            v5 = 0;
            v64 = 8;
          }

          v13 = *(v12 + 96);
          if (v13 == 1)
          {
            v14 = **(v12 + 104);
            if (!glpPointerHashGet(PointerHash, v14))
            {
              v63 = v3;
              v16 = (v3 + 1);
              glpPointerHashPut(PointerHash, v14, v16, v15);
              v17 = v5;
              v5 = (v5 + 1);
              if (v5 <= v64)
              {
                v25 = v17;
              }

              else
              {
                if (v64 <= 1)
                {
                  v18 = 1;
                }

                else
                {
                  v18 = v64;
                }

                v19 = 2 * v18;
                if (v19 <= v5)
                {
                  v20 = v5;
                }

                else
                {
                  v20 = v19;
                }

                v21 = *(v65 + 152);
                v22 = *v21;
                v23 = v21[1];
                v64 = v20;
                v24 = v23(v22, 4 * v20, "Vector Storage (unsigned, growth)");
                v25 = v17;
                memcpy(v24, v6, 4 * v17);
                (v21[3])(*v21, v6);
                v6 = v24;
              }

              v6[v25] = v63;
              v3 = v16;
            }
          }

          else
          {
            if (v13 < 1)
            {
              goto LABEL_38;
            }

            v26 = v5;
            v27 = 0;
            v63 = v3;
            v28 = v3;
            do
            {
              v29 = glpPointerHashGet(PointerHash, *(*(v12 + 104) + v27));
              if (v29 && v6[v29 - 1] < v28)
              {
                v28 = v6[v29 - 1];
              }

              v27 += 8;
            }

            while (8 * v13 != v27);
            v30 = 0;
            v66 = v26;
            do
            {
              v31 = v6;
              v32 = *(*(v12 + 104) + 8 * v30);
              v33 = glpPointerHashGet(PointerHash, v32);
              if (v33)
              {
                v6 = v31;
                v35 = v31[v33 - 1];
                if (v35 != v28 && v26 != 0)
                {
                  v37 = v66;
                  v38 = v31;
                  do
                  {
                    if (*v38 == v35)
                    {
                      *v38 = v28;
                    }

                    ++v38;
                    --v37;
                  }

                  while (v37);
                }
              }

              else
              {
                glpPointerHashPut(PointerHash, v32, v28 + 1, v34);
                v6 = v31;
              }

              ++v30;
            }

            while (v30 != v13);
            v2 = v62;
            v3 = v63;
            v5 = v26;
            if (v28 == v63)
            {
LABEL_38:
              v39 = v5 + 1;
              if (v5 + 1 <= v64)
              {
                v5 = v5;
              }

              else
              {
                if (v64 <= 1)
                {
                  v40 = 1;
                }

                else
                {
                  v40 = v64;
                }

                v41 = 2 * v40;
                v42 = v6;
                v43 = v3;
                if (v41 <= v39)
                {
                  v3 = v39;
                }

                else
                {
                  v3 = v41;
                }

                v44 = *(v65 + 152);
                v45 = (v44[1])(*v44, 4 * v3, "Vector Storage (unsigned, growth)");
                v5 = v5;
                memcpy(v45, v42, 4 * v5);
                (v44[3])(*v44, v42);
                v64 = v3;
                LODWORD(v3) = v43;
                v6 = v45;
              }

              v6[v5] = v3;
              v3 = (v3 + 1);
              v5 = (v5 + 1);
            }
          }
        }
      }
    }

    ++v7;
  }

  while (v7 < glpTopLevelNodeGetDefCount(v2));
  if (PointerHash)
  {
    v46 = glpMakePointerHash(*(v65 + 152));
    v66 = &v62;
    *(v65 + 400) = v46;
    MEMORY[0x28223BE20](v46);
    v48 = &v62 - v47;
    bzero(&v62 - v47, 8 * v3);
    bzero(v48, 8 * v3);
    v50 = *(PointerHash + 32);
    if (v50)
    {
      v51 = 0;
      v52 = 0;
      v53 = v65;
      do
      {
        v54 = *(PointerHash + 40);
        v55 = *(v54 + v51);
        if (v55)
        {
          v56 = *(v54 + v51 + 8);
          v57 = v6;
          v58 = v6[(v55 - 1)];
          v59 = *&v48[8 * v58];
          if (!v59)
          {
            v59 = (*(*(v53 + 152) + 8))(**(v53 + 152), 16, "functionParameters");
            *v59 = glpMakePointerHash(*(v53 + 152));
            *(v59 + 8) = 0;
            *&v48[8 * v58] = v59;
          }

          glpPointerHashPut(*(v65 + 400), v56, v59, v49);
          v50 = *(PointerHash + 32);
          v6 = v57;
        }

        ++v52;
        v51 += 24;
      }

      while (v52 < v50);
    }

    v60 = *MEMORY[0x277D85DE8];
  }

  else
  {
LABEL_60:
    v61 = *MEMORY[0x277D85DE8];
  }
}

void *glpLLVMCleanUpASTObjects(void *result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  result = glpASTNodeGetKind(a2);
  if (result <= 50)
  {
    if (result == 44)
    {
      Extra = glpParameterDeclarationNodeGetExtra(a2);
      (*(*(v3 + 152) + 24))(**(v3 + 152), *(Extra + 144));
      *(Extra + 144) = 0;
    }

    else if (result != 46)
    {
LABEL_9:
      result = glpASTNodeGetChildCount(a2);
      if (result)
      {
        v4 = result;
        for (i = 0; i != v4; ++i)
        {
          Child = glpASTNodeGetChild(a2, i);
          result = glpLLVMCleanUpASTObjects(v3, Child);
        }
      }

      return result;
    }

    result = glpVariableDeclarationNodeGetExtra(a2);
    v13 = result;
    v14 = result[6];
    if ((v14 & 0x100000000) != 0)
    {
      if ((v14 & 0x400000000) != 0)
      {
        *(result[11] + 24) = 0;
      }
    }

    else
    {
      result = (*(*(v3 + 152) + 24))(**(v3 + 152), result[18]);
      v13[18] = 0;
    }
  }

  else
  {
    switch(result)
    {
      case '3':
        Body = glpFunctionDefinitionNodeGetBody(a2);

        return glpLLVMCleanUpFunctionVariableObjects(v3, Body);
      case '9':
        v8 = glpInterfaceBlockNodeGetExtra(a2);
        result = glpInterfaceBlockObjectGetVariableObjectCount(v8);
        if (result)
        {
          v9 = 0;
          v10 = 8 * result;
          do
          {
            v11 = *(*(v8 + 72) + v9);
            if ((*(v11 + 52) & 8) != 0)
            {
              *(*(v11 + 88) + 24) = 0;
            }

            else
            {
              result = (*(*(v3 + 152) + 24))(**(v3 + 152), *(v11 + 144));
              *(v11 + 144) = 0;
            }

            v9 += 8;
          }

          while (v10 != v9);
        }

        break;
      case 'U':
        return result;
      default:
        goto LABEL_9;
    }
  }

  return result;
}

uint64_t glpLLVMCGFindSamplersAndBuffers(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  Kind = glpASTNodeGetKind(a2);
  if (Kind > 56)
  {
    if (Kind == 57)
    {
      Extra = glpInterfaceBlockNodeGetExtra(a2);
      result = glpInterfaceBlockObjectGetVariableObjectCount(Extra);
      if (result)
      {
        v25 = 0;
        v26 = 8 * result;
        do
        {
          v27 = *(*(Extra + 72) + v25);
          if ((*(v27 + 52) & 8) != 0)
          {
            result = glpLLVMCGDeclareUniformBufferObject(v3, *(v27 + 88));
          }

          v25 += 8;
        }

        while (v26 != v25);
      }
    }

    else
    {
      if (Kind != 85)
      {
LABEL_17:
        result = glpASTNodeGetChildCount(a2);
        if (result)
        {
          v19 = result;
          for (i = 0; i != v19; ++i)
          {
            Child = glpASTNodeGetChild(a2, i);
            result = glpLLVMCGFindSamplersAndBuffers(v3, Child);
          }
        }

        return result;
      }

      v9 = glpSubroutineUniformNodeGetExtra(a2);
      v10 = *(v9 + 16);
      v11 = (*(*(v3 + 152) + 8))(**(v3 + 152), 24, "subroutines");
      v11[1] = 0;
      v11[2] = 0;
      *v11 = 0;
      *v11 = v10;
      *(v11 + 4) = *(v9 + 40);
      v12 = *(v3 + 612);
      *(v9 + 24) = v12;
      v13 = *(v3 + 608);
      if (v12 + 1 <= v13)
      {
        v17 = *(v3 + 616);
        v18 = v12;
      }

      else
      {
        if (v13 <= 1)
        {
          v13 = 1;
        }

        v14 = 2 * v13;
        if (v14 <= v12 + 1)
        {
          v15 = v12 + 1;
        }

        else
        {
          v15 = v14;
        }

        v16 = *(v3 + 152);
        v17 = (v16[1])(*v16, 8 * v15, "Vector Storage (GLPLLVMSubroutine *, growth)");
        memcpy(v17, *(v3 + 616), 8 * *(v3 + 612));
        (v16[3])(*v16, *(v3 + 616));
        *(v3 + 608) = v15;
        *(v3 + 616) = v17;
        v18 = *(v3 + 612);
      }

      result = memmove(&v17[8 * v12 + 8], &v17[8 * v12], 8 * (v18 - v12));
      *(*(v3 + 616) + 8 * v12) = v11;
      ++*(v3 + 612);
    }
  }

  else
  {
    if (Kind != 46)
    {
      if (Kind == 51)
      {
        Prototype = glpFunctionDefinitionNodeGetPrototype(a2);
        v6 = glpFunctionPrototypeNodeGetExtra(Prototype);
        Name = glpFunctionPrototypeNodeGetName(Prototype);
        result = glpStringsEqual(Name, v8, "main", 0x83863A00000004);
        if (!*(v3 + 834))
        {
          if (result)
          {
            result = (*(*(v3 + 152) + 8))(**(v3 + 152), 16, "functionParameters");
            *result = 0;
            *(result + 8) = 15;
            *(v6 + 152) = result;
          }

          else
          {
            Body = glpFunctionDefinitionNodeGetBody(a2);
            v46 = glpLLVMAllocateFunctionParameters(v3, 0);
            result = glpLLVMGetFunctionGlobalVariableUse(v3, Body, *v46, (v46 + 8));
            *(v6 + 152) = v46;
          }
        }

        return result;
      }

      goto LABEL_17;
    }

    result = glpVariableDeclarationNodeGetExtra(a2);
    v22 = result;
    v23 = *(result + 48);
    if ((v23 & 0x100000000) != 0)
    {
      result = glpTypeGetSamplerCount(*result);
      if (result)
      {
        v47 = v22;
        if (result >= 1)
        {
          v28 = 0;
          v29 = *(v3 + 596);
          v30 = *(*(v22 + 144) + 8);
          v31 = 16 * result;
          do
          {
            v32 = (*(v30 + 8) + v28);
            v32[1] = v29;
            v48 = 0u;
            v49 = 0u;
            DWORD1(v49) = v32[3];
            glpLLVMGetTextureTypeFromSampler(v3, &v48, SDWORD1(v49));
            *(&v48 + 1) = v33;
            v34 = *v32;
            LODWORD(v49) = v32[2];
            DWORD2(v49) = v34;
            v35 = *(v3 + 596);
            v36 = *(v3 + 592);
            if (v35 + 1 <= v36)
            {
              v40 = *(v3 + 600);
              v41 = *(v3 + 596);
            }

            else
            {
              if (v36 <= 1)
              {
                v36 = 1;
              }

              v37 = 2 * v36;
              if (v37 <= v35 + 1)
              {
                v38 = v35 + 1;
              }

              else
              {
                v38 = v37;
              }

              v39 = *(v3 + 152);
              v40 = (v39[1])(*v39, 48 * v38, "Vector Storage (GLPLLVMTextureSampler, growth)");
              memcpy(v40, *(v3 + 600), 48 * *(v3 + 596));
              (v39[3])(*v39, *(v3 + 600));
              *(v3 + 592) = v38;
              *(v3 + 600) = v40;
              v41 = *(v3 + 596);
            }

            result = memmove(&v40[48 * v35 + 48], &v40[48 * v35], 48 * (v41 - v35));
            v42 = (*(v3 + 600) + 48 * v35);
            v43 = v49;
            v42[1] = v48;
            v42[2] = v43;
            *v42 = 0u;
            ++*(v3 + 596);
            v28 += 16;
            ++v29;
          }

          while (v31 != v28);
        }

        v22 = v47;
      }

      if ((*(v22 + 52) & 4) != 0)
      {
        v44 = *(v22 + 88);

        return glpLLVMCGDeclareUniformBufferObject(v3, v44);
      }
    }

    else if ((v23 & 0x80000000) != 0)
    {
      result = *(result + 8);
      if (result)
      {
        result = glpLayoutObjectFind(result, 46);
        if (result)
        {
          if (*(result + 16) == 10)
          {

            return glpLLVMCGDeclareTFBuffer(v3, v22);
          }
        }
      }
    }
  }

  return result;
}

void glpLLVMCGNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    Expr = a2;
    while (2)
    {
      if (!*(a1 + 332))
      {
        Kind = glpASTNodeGetKind(Expr);
        switch(Kind)
        {
          case 10:
          case 18:
          case 41:
          case 63:
          case 85:
            return;
          case 11:
          case 12:
          case 13:
          case 14:
          case 15:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
          case 28:
          case 29:
          case 30:
          case 31:
          case 32:
          case 33:
          case 34:
          case 35:
          case 36:
          case 37:
          case 38:
          case 40:
          case 48:
          case 49:
          case 50:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 58:
          case 59:
          case 60:
          case 61:
          case 62:
          case 64:
          case 76:
          case 77:
          case 80:
          case 83:
            goto LABEL_68;
          case 16:

            glpLLVMCGNegate(a1, Expr);
            return;
          case 17:

            glpLLVMCGLogicalNot(a1, Expr);
            return;
          case 39:

            glpLLVMCGAssign(a1, Expr);
            return;
          case 42:
            glpLLVMWriteOutput(a1, Expr);
            return;
          case 43:

            glpLLVMCGCommaExpr(a1, Expr, a3);
            return;
          case 44:
            glpLLVMCGParameterDeclaration(a1, Expr);
            return;
          case 45:

            glpLLVMCGFunctionPrototype(a1, Expr);
            return;
          case 46:
            Extra = glpVariableDeclarationNodeGetExtra(Expr);

            glpLLVMCGDeclareVariable(a1, Extra);
            return;
          case 47:
            glpLLVMCGVariableDeclarationGroup(a1, Expr);
            return;
          case 51:

            glpLLVMCGFunctionDefinition(a1, Expr);
            return;
          case 57:
            glpLLVMCGInterfaceBlock(a1, Expr);
            return;
          case 65:
            Expr = glpExpressionStatementNodeGetExpr(Expr);
            if (!Expr)
            {
              return;
            }

            continue;
          case 66:
            glpLLVMCGBlock(a1, Expr);
            return;
          case 67:
            glpLLVMCGIfStatement(a1, Expr);
            return;
          case 68:
            glpLLVMCGLoopStatement(a1, Expr);
            return;
          case 69:
            glpLLVMCGSwitchStatement(a1, Expr);
            return;
          case 70:
            glpLLVMCGCaseStatement(a1, Expr);
            return;
          case 71:
            glpLLVMCGDefaultStatement(a1, Expr);
            return;
          case 72:
            glpLLVMCGBreakStatement(a1, Expr);
            return;
          case 73:
            glpLLVMCGContinueStatement(a1, Expr);
            return;
          case 74:

            glpLLVMCGDiscardStatement(a1, Expr);
            return;
          case 75:

            glpLLVMCGReturnStatement(a1, Expr);
            return;
          case 78:

            glpLLVMCGRawCallNode(a1, Expr);
            return;
          case 79:
            glpLLVMCGSubroutineRawCall(a1, Expr);
            return;
          case 81:

            glpLLVMCGLValue(a1, Expr, a3);
            return;
          case 82:

            glpLLVMCGRValue(a1, Expr);
            return;
          case 84:

            glpLLVMCGPPStreamOpNode(a1, Expr);
            return;
          default:
            if (Kind == 3)
            {

              glpLLVMCGConstant(a1, Expr);
            }

            else
            {
              if (Kind)
              {
LABEL_68:
                abort();
              }

              glpLLVMCGImplicitConversion(a1, Expr, a3);
            }

            break;
        }
      }

      break;
    }
  }
}

_DWORD *glpLLVMCreateAttributeDescription(uint64_t a1)
{
  v2 = *(a1 + 644);
  v3 = 8 * v2 + 8;
  v4 = malloc_type_malloc(v3, 0x75808E6AuLL);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  bzero(v4, v3);
  *v5 = v2;
  if (v2 >= 1)
  {
    v6 = 0;
    for (i = v5; ; i += 2)
    {
      v8 = *(*(a1 + 648) + 8 * v6);
      i[2] = i[2] & 0xFFFFC000 | 0xC0;
      v9 = *(v8 + 48);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v8);
      v11 = PrimitiveType;
      v12 = __ROR8__(v9 & 0x1F, 2) - 1;
      v13 = v12 > 3 ? 0 : dword_23A300E00[v12];
      i[2] = i[2] & 0xFFFFFFF8 | v13;
      Category = glpPrimitiveTypeGetCategory(PrimitiveType);
      if (Category == 1)
      {
        break;
      }

      if (Category == 2)
      {
        ElementType = glpPrimitiveVectorGetElementType(v11);
        v16 = i[2] & 0xFFFFFF3F | (((((glpPrimitiveVectorGetLength(v11) << 6) + 192) >> 6) & 3) << 6);
        LODWORD(v11) = ElementType;
LABEL_11:
        v17 = v16 & 0xFFFFFFC7;
        v18 = v16 & 0xFFFFFFC7 | 8;
        v19 = v16 & 0xFFFFFFC7 | 0x18;
        v20 = v16 & 0xFFFFFFC7 | 0x20;
        if (v11 != 62)
        {
          v20 = v16;
        }

        if (v11 != 36)
        {
          v19 = v20;
        }

        if (v11 != 9)
        {
          v18 = v19;
        }

        if (v11 == 5)
        {
          v16 = v17 | 0x10;
        }

        if (v11 == 1)
        {
          v16 = v17;
        }

        if (v11 > 8)
        {
          v16 = v18;
        }

        goto LABEL_25;
      }

      v16 = i[2];
LABEL_25:
      i[2] = (v9 >> 27) & 0xC000 | (v9 >> 23) & 0x2000 | v16 & 0xFFFF1FFF;
      v21 = glpLayoutObjectFind(*(v8 + 8), 34);
      if (v21)
      {
        i[2] = i[2] & 0xFFFFE0FF | ((v21[2] & 0x1F) << 8);
      }

      v22 = glpLayoutObjectFind(*(v8 + 8), 35);
      if (v22)
      {
        i[3] = i[3] & 0xFFFFFFC0 | v22[2] & 0x3F;
      }

      v23 = glpLayoutObjectFind(*(v8 + 8), 36);
      if (v23)
      {
        i[3] = i[3] & 0xFFFFFFBF | ((v23[2] & 1) << 6);
      }

      v24 = glpLayoutObjectFind(*(v8 + 8), 37);
      if (v24)
      {
        i[3] = i[3] & 0xFFFFFF7F | ((v24[2] & 1) << 7);
      }

      v25 = glpLayoutObjectFind(*(v8 + 8), 38);
      if (v25)
      {
        i[3] = i[3] & 0xFFFFFEFF | ((v25[2] & 1) << 8);
      }

      v26 = glpLayoutObjectFind(*(v8 + 8), 41);
      if (v26)
      {
        i[3] = i[3] & 0xFFFFFFFE | v26[2] & 1;
      }

      v27 = glpLayoutObjectFind(*(v8 + 8), 42);
      if (v27)
      {
        i[3] = i[3] & 0xFFFFFFFE | v27[2] & 1;
      }

      v28 = glpLayoutObjectFind(*(v8 + 8), 43);
      if (v28)
      {
        i[3] = i[3] & 0xFFFFFFE0 | v28[2] & 0x1F;
      }

      if (v2 == ++v6)
      {
        return v5;
      }
    }

    v16 = i[2] & 0xFFFFFF3F;
    goto LABEL_11;
  }

  return v5;
}

uint64_t glpLLVMVertexMetaData(uint64_t a1, char *a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 692);
  MEMORY[0x28223BE20](a1);
  bzero(v13 - ((8 * v4 + 15) & 0xFFFFFFFF0), 8 * v4);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      *(&v13[i] - ((8 * v4 + 15) & 0xFFFFFFFF0)) = glpLLVMVertexGeometryMetadata(a1, *(*(a1 + 696) + i * 8), 0xFFFFFFFF);
    }
  }

  v13[0] = *(a1 + 168);
  v6 = *a1;
  v7 = LLVMMDNodeInContext();
  v8 = *(a1 + 192);
  v13[1] = v7;
  v13[2] = v8;
  v9 = *a1;
  v10 = LLVMMDNodeInContext();
  result = glpAddNamedMetadataOperand(*(a1 + 8), a2, v10);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMFragmentMetaData(uint64_t *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 173);
  MEMORY[0x28223BE20](a1);
  bzero(&v32 - ((8 * v2 + 15) & 0xFFFFFFFF0), 8 * v2);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = a1 + 65;
    while (1)
    {
      v5 = *(a1[87] + v3);
      v6 = *(glpLayoutObjectFind(*(v5 + 8), 68) + 4);
      if (v6 == 15)
      {
        break;
      }

      if (v6 == 7)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v13 = *a1;
        v32 = LLVMMDStringInContext();
        v14 = *a1;
        v33 = LLVMMDStringInContext();
        v15 = *a1;
        v16 = LLVMMDStringInContext();
        goto LABEL_18;
      }

      if (v6 == 4)
      {
        v7 = glpLayoutObjectFind(*(v5 + 8), 72);
        v8 = glpLayoutObjectFind(*(v5 + 8), 73);
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v9 = *a1;
        v32 = LLVMMDStringInContext();
        v10 = *(v7 + 4);
        if (v10 > 7)
        {
          v19 = a1[5];
          v11 = LLVMConstInt();
        }

        else
        {
          v11 = v4[v10];
          if (!v11)
          {
            v12 = a1[5];
            v11 = LLVMConstInt();
            v4[v10] = v11;
          }
        }

        v33 = v11;
        if (v8)
        {
          v20 = *(v8 + 4);
          if (v20 > 7)
          {
            v21 = a1[5];
            v16 = LLVMConstInt();
            goto LABEL_18;
          }
        }

        else
        {
          v20 = 0;
        }

        v16 = v4[v20];
        if (!v16)
        {
          v22 = v20;
          v23 = a1[5];
          v16 = LLVMConstInt();
          v4[v22] = v16;
        }

LABEL_18:
        v34 = v16;
        v24 = *a1;
LABEL_19:
        *(&v32 + v3 - ((8 * v2 + 15) & 0xFFFFFFFF0)) = LLVMMDNodeInContext();
      }

      v3 += 8;
      if (8 * v2 == v3)
      {
        goto LABEL_21;
      }
    }

    v32 = 0;
    v17 = *a1;
    v32 = LLVMMDStringInContext();
    v18 = *a1;
    goto LABEL_19;
  }

LABEL_21:
  v32 = a1[21];
  v25 = *a1;
  v26 = LLVMMDNodeInContext();
  v27 = a1[24];
  v33 = v26;
  v34 = v27;
  v28 = *a1;
  v29 = LLVMMDNodeInContext();
  result = glpAddNamedMetadataOperand(a1[1], "air.fragment", v29);
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMStringMetadata(uint64_t *a1, char *__s)
{
  v2 = *a1;
  strlen(__s);

  return LLVMMDStringInContext();
}

uint64_t glpGetConstantInt32(uint64_t a1, unsigned int a2)
{
  if (a2 > 7)
  {
    v8 = *(a1 + 40);

    return LLVMConstInt();
  }

  else
  {
    v3 = a1 + 520;
    v4 = *(a1 + 520 + 8 * a2);
    if (!v4)
    {
      v5 = a2;
      v6 = *(a1 + 40);
      v4 = LLVMConstInt();
      *(v3 + 8 * v5) = v4;
    }

    return v4;
  }
}

uint64_t glpLLVMAllocateFunctionParameters(uint64_t a1, int a2)
{
  v4 = (*(*(a1 + 152) + 8))(**(a1 + 152), 16, "functionParameters");
  if (a2)
  {
    PointerHash = 0;
    v6 = 15;
  }

  else
  {
    PointerHash = glpMakePointerHash(*(a1 + 152));
    v6 = 0;
  }

  *v4 = PointerHash;
  *(v4 + 8) = v6;
  return v4;
}

uint64_t glpLLVMCleanUpFunctionVariableObjects(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (glpASTNodeGetKind(a2) == 46)
    {
      Extra = glpVariableDeclarationNodeGetExtra(a2);
      result = (*(*(v3 + 152) + 24))(**(v3 + 152), *(Extra + 144));
      *(Extra + 144) = 0;
    }

    else
    {
      result = glpASTNodeGetChildCount(a2);
      if (result)
      {
        v5 = result;
        for (i = 0; i != v5; ++i)
        {
          Child = glpASTNodeGetChild(a2, i);
          result = glpLLVMCleanUpFunctionVariableObjects(v3, Child);
        }
      }
    }
  }

  return result;
}

_DWORD *glpLLVMCGDeclareUniformBufferObject(_DWORD *result, _DWORD *a2)
{
  if (!a2[6])
  {
    v3 = result;
    a2[6] = result[177] + 1;
    v4 = a2[3];
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = glpLinkerPoolAlloc(*(v3 + 16));
        *v6 = i + a2[7];
        *(v6 + 4) = glpBufferObjectGetMinimumBufferSize(a2);
        *(v6 + 8) = 0;
        v7 = v3[177];
        v8 = v3[176];
        if (v7 + 1 <= v8)
        {
          v12 = *(v3 + 89);
          v13 = v3[177];
        }

        else
        {
          if (v8 <= 1)
          {
            v8 = 1;
          }

          v9 = 2 * v8;
          if (v9 <= v7 + 1)
          {
            v10 = v7 + 1;
          }

          else
          {
            v10 = v9;
          }

          v11 = *(v3 + 19);
          v12 = (v11[1])(*v11, 8 * v10, "Vector Storage (GLPLLVMBufferDescription *, growth)");
          memcpy(v12, *(v3 + 89), 8 * v3[177]);
          (v11[3])(*v11, *(v3 + 89));
          v3[176] = v10;
          *(v3 + 89) = v12;
          v13 = v3[177];
        }

        result = memmove(&v12[8 * v7 + 8], &v12[8 * v7], 8 * (v13 - v7));
        *(*(v3 + 89) + 8 * v7) = v6;
        ++v3[177];
      }
    }
  }

  return result;
}

void *glpLLVMCGDeclareTFBuffer(void *result, uint64_t a2)
{
  v3 = result;
  if ((result[40] & 0xFFFFFFFE) == 2 || (result[104] & 2) != 0)
  {
    v4 = glpLinkerPoolAlloc(result[16]);
    v5 = glpLayoutObjectFind(*(a2 + 8), 65);
    v6 = glpLayoutObjectFind(*(a2 + 8), 66);
    v7 = glpLayoutObjectFind(*(a2 + 8), 67);
    v8 = *(v5 + 4);
    *v4 = v8;
    v4[1] = *(v6 + 4);
    v4[2] = *(v7 + 4);
    *(v4 + 2) = 0;
    *(v3 + 191) |= 1 << v8;
    v9 = *(v3 + 181);
    v10 = *(v3 + 180);
    if (v9 + 1 <= v10)
    {
      v14 = v3[91];
      v15 = *(v3 + 181);
    }

    else
    {
      if (v10 <= 1)
      {
        v10 = 1;
      }

      v11 = 2 * v10;
      if (v11 <= v9 + 1)
      {
        v12 = v9 + 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = v3[19];
      v14 = (v13[1])(*v13, 8 * v12, "Vector Storage (GLPLLVMTFBufferDescription *, growth)");
      memcpy(v14, v3[91], 8 * *(v3 + 181));
      (v13[3])(*v13, v3[91]);
      *(v3 + 180) = v12;
      v3[91] = v14;
      v15 = *(v3 + 181);
    }

    result = memmove(&v14[8 * v9 + 8], &v14[8 * v9], 8 * (v15 - v9));
    *(v3[91] + 8 * v9) = v4;
    ++*(v3 + 181);
    *(v3 + *v4 + 192) = v4[2];
    v16 = *(a2 + 144);
    if (!v16)
    {
      result = (*(v3[19] + 8))(*v3[19], 40, "llvm codegen extra");
      *(a2 + 144) = result;
      *result = 0u;
      *(result + 1) = 0u;
      result[4] = 0;
      v16 = *(a2 + 144);
    }

    *v16 = 0;
    v16[2] = v4;
  }

  return result;
}

uint64_t glpLLVMGetFunctionGlobalVariableUse(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (!a2)
  {
    return result;
  }

  v7 = result;
  Kind = glpASTNodeGetKind(a2);
  if (Kind > 80)
  {
    if (Kind == 84)
    {
      if (glpPPStreamOpNodeGetHasSrctex(a2))
      {
        *a4 |= 8u;
      }

      if (glpPPStreamOpNodeGetOpcode(a2) != 153)
      {
        goto LABEL_39;
      }

      v32 = *a4 | 4;
    }

    else
    {
      if (Kind != 81)
      {
        goto LABEL_39;
      }

      VariableExtra = glpLValueNodeGetVariableExtra(a2);
      v27 = *(VariableExtra + 48);
      if ((v27 & 0x100000000) == 0)
      {
        if ((v27 & 0x86000000) != 0)
        {
          v28 = VariableExtra;
          v29 = *(VariableExtra + 8);
          if (!v29 || !glpLayoutObjectFind(v29, 28))
          {
            v30 = *(v28 + 144);
            if (!v30 || !*(v30 + 16))
            {
              glpLLVMAddParameterToHash(v28, a3);
            }
          }
        }

        goto LABEL_39;
      }

      v33 = *a4;
      if ((v27 & 0x800000000) != 0)
      {
        v32 = v33 | 2;
      }

      else
      {
        v32 = v33 | 1;
      }
    }
  }

  else
  {
    if (Kind != 78)
    {
      if (Kind == 79)
      {
        *a4 |= 1u;
        v9 = glpSubroutineRawCallNodeGetExtra(a2);
        SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(*(v7 + 136), *(v7 + 320));
        v11 = 0;
        v12 = *(SubroutineUniformHash + 32);
        v13 = *(SubroutineUniformHash + 40);
        do
        {
          v14 = *v13;
          if (*v13)
          {
            v15 = *(v14 + 4);
            v16 = v14 + 64;
            if (v15 == *(v9 + 40))
            {
              v11 = v16;
            }
          }

          v13 += 4;
          --v12;
        }

        while (v12);
        if (*(v11 + 4))
        {
          v17 = 0;
          do
          {
            v18 = *(*(v11 + 8) + 4 * v17);
            glpTopLevelNodeGetDefCount(*(*(v7 + 128) + 8 * *(v7 + 320) + 184));
            v19 = 0;
            v20 = 0;
            do
            {
              Def = glpTopLevelNodeGetDef(*(*(v7 + 128) + 8 * *(v7 + 320) + 184), v20);
              if (Def)
              {
                v22 = Def;
                if (glpASTNodeGetKind(Def) == 51)
                {
                  Prototype = glpFunctionDefinitionNodeGetPrototype(v22);
                  Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
                  if ((*(Extra + 10) & 0x10) != 0 && *(Extra + 160) == v18)
                  {
                    v19 = Extra;
                  }
                }
              }

              ++v20;
            }

            while (v20 < glpTopLevelNodeGetDefCount(*(*(v7 + 128) + 8 * *(v7 + 320) + 184)));
            v25 = *(v19 + 152);
            glpLLVMAddSortedParameters(a3, *v25);
            *a4 |= *(v25 + 8);
            ++v17;
          }

          while (v17 < *(v11 + 4));
        }
      }

      goto LABEL_39;
    }

    v31 = *(glpRawCallNodeGetExtra(a2) + 152);
    glpLLVMAddSortedParameters(a3, *v31);
    v32 = *a4 | *(v31 + 8);
  }

  *a4 = v32;
LABEL_39:
  result = glpASTNodeGetChildCount(a2);
  if (result)
  {
    v34 = result;
    for (i = 0; i != v34; ++i)
    {
      Child = glpASTNodeGetChild(a2, i);
      result = glpLLVMGetFunctionGlobalVariableUse(v7, Child, a3, a4);
    }
  }

  return result;
}

void glpLLVMGetTextureTypeFromSampler(uint64_t *a1, void *a2, int a3)
{
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(a3);
  if (PPTextarget < 0x12)
  {
    v6 = (&off_278B4DD88)[PPTextarget];
    v7 = glpLLVMGetNamedTypeInner(a1);
    *a2 = MEMORY[0x23EE85440](v7, 2);
    glpLLVMGetNamedTypeInner(a1);

    JUMPOUT(0x23EE85440);
  }

  abort();
}

uint64_t glpLLVMAddParameterToHash(unint64_t a1, uint64_t a2)
{
  result = glpPointerHashGet(a2, a1);
  if (!result)
  {
    v6 = (*(a2 + 36) + 1);

    return glpPointerHashPut(a2, a1, v6, v5);
  }

  return result;
}

void glpLLVMAddSortedParameters(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 36);
  MEMORY[0x28223BE20](a1);
  v6 = (v13 - ((v5 + 15) & 0xFFFFFFFF0));
  bzero(v6, v5);
  v7 = *(a2 + 32);
  if (v7)
  {
    v8 = (*(a2 + 40) + 8);
    do
    {
      v9 = *(v8 - 1);
      if (v9)
      {
        *(v6 + (((v9 << 32) - 0x100000000) >> 29)) = *v8;
      }

      v8 += 3;
      --v7;
    }

    while (v7);
  }

  if (v4 >= 1)
  {
    do
    {
      v10 = *v6;
      if (!glpPointerHashGet(a1, *v6))
      {
        glpPointerHashPut(a1, v10, (*(a1 + 36) + 1), v11);
      }

      ++v6;
      --v4;
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t glpLLVMCGImplicitConversion(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  glpLLVMAddLineInformation(a1, a2);
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  v7 = glpLLVMCGNode(a1, Expr, a3);
  SaType = glpASTNodeGetSaType(Expr);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  SaFlags = glpASTNodeGetSaFlags(Expr);
  v11 = glpPrecisionIndexFromSAFlags(SaFlags);
  v12 = glpTypeConversionNodeGetToType(a2);
  v13 = glpPrimitiveTypeGetPrimitiveType(v12);
  v14 = glpASTNodeGetSaFlags(a2);
  v15 = glpPrecisionIndexFromSAFlags(v14);
  v16 = glpPrimitiveTypeToLLVMType(a1, v13, v15);
  v17 = LLVMTypeOf();
  if (glpPrimitiveTypeGetCategory(v13) == 4)
  {
    return v7;
  }

  ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
  v20 = glpPrimitiveTypeGetScalarType(v13);
  if (v20 == 9)
  {
    if (ScalarType == 62 || ScalarType == 1)
    {
      v21 = a1[2];
      MEMORY[0x23EE85200](v17);

      return LLVMBuildFCmp();
    }

    else
    {
      v23 = a1[2];
      MEMORY[0x23EE85200](v17);

      return LLVMBuildICmp();
    }
  }

  if (ScalarType == 1 || ScalarType == 62)
  {
    if (v20 == 62 || v20 == 1)
    {
      v22 = a1[2];

      return LLVMBuildFPCast();
    }

    goto LABEL_24;
  }

  if (v20 == 1 || v20 == 62)
  {
    if (ScalarType == 9)
    {
      if (glpPrimitiveTypeGetCategory(PrimitiveType) == 2)
      {
        Length = glpPrimitiveVectorGetLength(PrimitiveType);
        PrimitiveType = glpGetVectorType(36, Length);
      }

      else
      {
        PrimitiveType = 36;
      }

      glpPrimitiveTypeToLLVMType(a1, PrimitiveType, v11);
      v28 = a1[2];
      v26 = LLVMBuildZExt();
      v25 = a1;
      goto LABEL_31;
    }

LABEL_24:
    v25 = a1;
    v26 = v7;
LABEL_31:

    return glpLLVMBuildConversion(v25, v26, v16, PrimitiveType, v11, v13, v15);
  }

  if (ScalarType == 9)
  {
    goto LABEL_26;
  }

  v29 = v11 > 3 || *(a1 + qword_23A300E60[v11]) <= 0x10u;
  if (v15 > 3)
  {
    goto LABEL_47;
  }

  v30 = !v29;
  if (*(a1 + qword_23A300E60[v15]) < 0x11u)
  {
    v30 = 1;
  }

  if (v30)
  {
LABEL_47:
    v33 = a1[2];

    return LLVMBuildTrunc();
  }

  else
  {
    v31 = glpPrimitiveTypeGetScalarType(PrimitiveType);
    if (v31 == 36 || v31 == 9)
    {
LABEL_26:
      v27 = a1[2];

      return LLVMBuildZExt();
    }

    v32 = a1[2];

    return LLVMBuildSExt();
  }
}

uint64_t glpLLVMCGConstant(uint64_t *a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  SaFlags = glpASTNodeGetSaFlags(a2);
  v5 = glpPrecisionIndexFromSAFlags(SaFlags);
  Type = glpConstantNodeGetType(a2);
  Value = glpConstantNodeGetValue(a2);
  Kind = glpTypeGetKind(Type);
  if ((Kind - 1) >= 2)
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(Type);
    if (glpPrimitiveTypeGetCategory(PrimitiveType) == 3)
    {
      if (glpPrimitiveTypeGetScalarType(PrimitiveType) == 62)
      {
        goto LABEL_2;
      }

      ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
      v13 = glpABIGetTypeSize(0, Type, 0);
      Size = glpTypeSizeGetSize(v13);
      MEMORY[0x28223BE20](Size);
      v16 = v19 - v15;
      bzero(v19 - v15, v17);
      glpLLVMPrimitiveConstant(a1, Value, v16, 0, PrimitiveType, ColumnType, v5);
      glpPrimitiveTypeToLLVMType(a1, ColumnType, v5);
      result = LLVMConstArray();
    }

    else
    {
      v19[0] = 0;
      glpLLVMPrimitiveConstant(a1, Value, v19, 0, PrimitiveType, PrimitiveType, v5);
      result = v19[0];
    }

    v18 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_2:
  v9 = *MEMORY[0x277D85DE8];

  return glpLLVMAggregateConstant(a1, Type, v5, Value);
}

uint64_t glpLLVMCGPPStreamOpNode(uint64_t a1, uint64_t a2)
{
  v452[1] = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  Opcode = glpPPStreamOpNodeGetOpcode(a2);
  v5 = 0;
  if (Opcode > 166)
  {
    LODWORD(v413) = Opcode;
    if ((Opcode - 167) < 3)
    {
      Child = glpASTNodeGetChild(a2, 0);
      v5 = *(glpLValueNodeGetVariableExtra(Child) + 51) & 1;
    }

    goto LABEL_10;
  }

  if (Opcode != 78)
  {
    if (Opcode == 121)
    {
      v43 = glpASTNodeGetChild(a2, 0);
      glpLLVMCGNode(a1, v43, 1);
      if (!*(a1 + 584))
      {
        LLVMTypeOf();
        *(a1 + 584) = glpBuildAlloca(a1);
      }

      v44 = *(a1 + 16);
      LLVMBuildStore();
    }

    else
    {
      LODWORD(v413) = Opcode;
      if (Opcode != 153)
      {
LABEL_10:
        HasSrctex = glpPPStreamOpNodeGetHasSrctex(a2);
        ChildCount = glpASTNodeGetChildCount(a2);
        v412 = &v410;
        MEMORY[0x28223BE20](ChildCount);
        v10 = (&v410 - v9);
        bzero(&v410 - v9, v11);
        OpPrimitiveType = glpPPStreamOpNodeGetOpPrimitiveType(a2);
        if (OpPrimitiveType)
        {
          OpPrimitiveType = glpPrimitiveTypeGetScalarType(OpPrimitiveType);
          LODWORD(v410) = OpPrimitiveType;
        }

        else
        {
          LODWORD(v410) = 0;
        }

        v13 = 4 * (ChildCount + HasSrctex);
        MEMORY[0x28223BE20](OpPrimitiveType);
        v14 = (v13 + 15) & 0x7FFFFFFF0;
        v414 = (&v410 - v14);
        bzero(&v410 - v14, v13);
        MEMORY[0x28223BE20](v15);
        v16 = (&v410 - v14);
        bzero(&v410 - v14, v13);
        v411 = ChildCount;
        v17 = (ChildCount - HasSrctex);
        if (v17)
        {
          for (i = 0; i != v17; ++i)
          {
            if (i)
            {
              v19 = 0;
            }

            else
            {
              v19 = v5;
            }

            if ((v19 & 1) == 0)
            {
              v20 = glpASTNodeGetChild(a2, i);
              v10[i] = glpLLVMCGNode(a1, v20, 1);
              SaType = glpASTNodeGetSaType(v20);
              PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
              v414[i] = PrimitiveType;
              SaFlags = glpASTNodeGetSaFlags(v20);
              v16[i] = glpPrecisionIndexFromSAFlags(SaFlags);
              v24 = glpASTNodeGetSaType(v20);
              if (!glpTypeGetKind(v24))
              {
                v25 = glpPrimitiveTypeGetPrimitiveType(v24);
                glpPrimitiveTypeGetScalarType(v25);
              }
            }
          }
        }

        v26 = a1;
        v27 = v10;
        if (HasSrctex)
        {
          v28 = v411;
          v29 = glpASTNodeGetChild(a2, v411 - 1);
          v10[v28 - 1] = glpLLVMCGSamplerNode(a1, v29, &v10[v28]);
        }

        ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
        v31 = glpASTNodeGetSaFlags(a2);
        v32 = glpPrecisionIndexFromSAFlags(v31);
        v33 = glpPrimitiveTypeToLLVMType(a1, ReturnPrimitiveType, v32);
        v452[0] = 0;
        v34 = v33;
        switch(v413)
        {
          case 2:
            if (v411 == 2)
            {
              glpMatchInputSize(v26, v10, v414);
            }

            if (v410 <= 0x24 && ((1 << v410) & 0x1000000220) != 0)
            {
              v212 = "air.abs";
              v215 = v26;
              v216 = 1;
              goto LABEL_255;
            }

            v137 = "air.fabs";
            goto LABEL_304;
          case 3:
            v137 = "air.ceil";
            goto LABEL_304;
          case 4:
            v137 = "air.fract";
            goto LABEL_304;
          case 5:
            v137 = "air.floor";
            goto LABEL_304;
          case 6:
            v137 = "air.fwidth";
            goto LABEL_304;
          case 7:
            if (v410 <= 0x24 && ((1 << v410) & 0x1000000220) != 0)
            {
              v217 = *v414;
              v218 = *v16;
              glpBuildConstantIntVector(v26, v217, v218);
              glpBuildConstantIntVector(v26, v217, v218);
              glpBuildConstantIntVector(v26, v217, v218);
              v219 = *(v26 + 16);
              v220 = *v10;
              LLVMBuildICmp();
              v221 = *(v26 + 16);
              LLVMBuildSelect();
              v222 = *(v26 + 16);
              LLVMBuildICmp();
              v223 = *(v26 + 16);
              goto LABEL_366;
            }

            v137 = "air.sign";
LABEL_304:
            v176 = v26;
            v177 = 1;
            goto LABEL_305;
          case 8:
            v227 = *(v26 + 64);
            v199 = *v414;
            v200 = *v16;
            v137 = "air.any";
            goto LABEL_222;
          case 9:
            v227 = *(v26 + 64);
            v199 = *v414;
            v200 = *v16;
            v137 = "air.all";
LABEL_222:
            v176 = v26;
            v177 = 1;
            v195 = v10;
            goto LABEL_308;
          case 10:
            v228 = *(v26 + 16);
            v229 = *v10;
            LODOperation = LLVMBuildNot();
            goto LABEL_309;
          case 11:
            if (glpPrimitiveTypeGetCategory(ReturnPrimitiveType) == 1)
            {
              v199 = *v414;
              v200 = *v16;
              v137 = "air.noise1";
            }

            else
            {
              Length = glpPrimitiveVectorGetLength(ReturnPrimitiveType);
              switch(Length)
              {
                case 4:
                  v199 = *v414;
                  v200 = *v16;
                  v137 = "air.noise4";
                  break;
                case 3:
                  v199 = *v414;
                  v200 = *v16;
                  v137 = "air.noise3";
                  break;
                case 2:
                  v199 = *v414;
                  v200 = *v16;
                  v137 = "air.noise2";
                  break;
                default:
                  goto LABEL_310;
              }
            }

LABEL_229:
            v176 = v26;
            v177 = 1;
LABEL_268:
            v195 = v10;
            v227 = v34;
            goto LABEL_308;
          case 12:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_sqrt";
            v172 = "air.sqrt";
            goto LABEL_301;
          case 16:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_exp2";
            v172 = "air.exp2";
            goto LABEL_301;
          case 18:
            LODOperation = glpLLVMBuildLength(v26, v10, v414, v32, v33);
            goto LABEL_309;
          case 19:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_log2";
            v172 = "air.log2";
            goto LABEL_301;
          case 21:
            LODOperation = glpLLVMBuildNormalize(v26, v10, v414, v32);
            goto LABEL_309;
          case 22:
          case 23:
            LODOperation = glpLLVMBuildConvert(v26, v10, v414);
            goto LABEL_309;
          case 25:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_sin";
            v172 = "air.sin";
            goto LABEL_301;
          case 26:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_cos";
            v172 = "air.cos";
            goto LABEL_301;
          case 27:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_tan";
            v172 = "air.tan";
            goto LABEL_301;
          case 28:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_asin";
            v172 = "air.asin";
            goto LABEL_301;
          case 29:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_acos";
            v172 = "air.acos";
            goto LABEL_301;
          case 30:
            v214 = v32 != 3 && v32 != 0;
            v199 = *v414;
            v177 = v411;
            if (v411 == 2)
            {
              if (v214)
              {
                v137 = "air.atan2";
              }

              else
              {
                v137 = "air.fast_atan2";
              }

              v176 = v26;
            }

            else
            {
              if (v214)
              {
                v137 = "air.atan";
              }

              else
              {
                v137 = "air.fast_atan";
              }

              v176 = v26;
            }

            goto LABEL_369;
          case 31:
            glpMatchInputSize(v26, v10, v414);
            if (v410 <= 0x24 && ((1 << v410) & 0x1000000220) != 0)
            {
              v209 = *(v26 + 16);
              v210 = *v10;
              v211 = v10[1];
              LODOperation = LLVMBuildAdd();
            }

            else
            {
              v396 = *(v26 + 16);
              v397 = *v10;
              v398 = v10[1];
              LODOperation = LLVMBuildFAdd();
            }

            goto LABEL_309;
          case 32:
            glpMatchInputSize(v26, v10, v414);
            if (v410 <= 0x24 && ((1 << v410) & 0x1000000220) != 0)
            {
              v224 = *(v26 + 16);
              v225 = *v10;
              v226 = v10[1];
LABEL_358:
              LODOperation = LLVMBuildSub();
            }

            else
            {
              v399 = *(v26 + 16);
              v400 = *v10;
              v401 = v10[1];
              LODOperation = LLVMBuildFSub();
            }

            goto LABEL_309;
          case 33:
            glpMatchInputSize(v26, v10, v414);
            if (v410 <= 0x24 && ((1 << v410) & 0x1000000220) != 0)
            {
              v206 = *(v26 + 16);
              v207 = *v10;
              v208 = v10[1];
              if (v410 == 5)
              {
                LODOperation = LLVMBuildSRem();
              }

              else
              {
                LODOperation = LLVMBuildURem();
              }

              goto LABEL_309;
            }

            v199 = *v414;
            v137 = "air.mod";
            v176 = v26;
            v177 = 2;
LABEL_369:
            v195 = v10;
            v227 = v34;
            goto LABEL_307;
          case 34:
            glpMatchInputSize(v26, v10, v414);
            if (v410 <= 0x24 && ((1 << v410) & 0x1000000220) != 0)
            {
              v243 = *(v26 + 16);
              v244 = *v10;
              v245 = v10[1];
              LODOperation = LLVMBuildMul();
            }

            else
            {
              v402 = *(v26 + 16);
              v403 = *v10;
              v404 = v10[1];
              LODOperation = LLVMBuildFMul();
            }

            goto LABEL_309;
          case 36:
          case 125:
            glpMatchInputSize(v26, v10, v414);
            v144 = *(v26 + 16);
            v145 = *v10;
            v146 = v10[1];
            LODOperation = LLVMBuildAnd();
            goto LABEL_309;
          case 37:
          case 126:
            glpMatchInputSize(v26, v10, v414);
            v141 = *(v26 + 16);
            v142 = *v10;
            v143 = v10[1];
            LODOperation = LLVMBuildOr();
            goto LABEL_309;
          case 38:
          case 127:
            glpMatchInputSize(v26, v10, v414);
            v138 = *(v26 + 16);
            v139 = *v10;
            v140 = v10[1];
            goto LABEL_247;
          case 39:
            v199 = *v414;
            v200 = *v16;
            v137 = "air.dot";
            goto LABEL_267;
          case 44:
            if (v411 == 2)
            {
              glpMatchInputSize(v26, v10, v414);
            }

            if (v410 <= 0x24 && ((1 << v410) & 0x1000000220) != 0)
            {
              v212 = "air.min";
              goto LABEL_199;
            }

            if (v32)
            {
              v173 = v32 == 3;
            }

            else
            {
              v173 = 1;
            }

            v174 = "air.fast_fmin";
            v175 = "air.fmin";
            goto LABEL_99;
          case 45:
            if (v411 == 2)
            {
              glpMatchInputSize(v26, v10, v414);
            }

            if (v410 <= 0x24 && ((1 << v410) & 0x1000000220) != 0)
            {
              v212 = "air.max";
LABEL_199:
              v215 = v26;
              v216 = 2;
              goto LABEL_255;
            }

            if (v32)
            {
              v173 = v32 == 3;
            }

            else
            {
              v173 = 1;
            }

            v174 = "air.fast_fmax";
            v175 = "air.fmax";
LABEL_99:
            if (v173)
            {
              v137 = v174;
            }

            else
            {
              v137 = v175;
            }

            v176 = v26;
            v177 = 2;
            goto LABEL_305;
          case 46:
            LODOperation = glpLLVMBuildCross(v26, v10);
            goto LABEL_309;
          case 47:
            LODOperation = glpLLVMBuildReflect(v26, v10, v414, v32);
            goto LABEL_309;
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
            v117 = v413;
            glpMatchInputSize(v26, v10, v414);
            v118 = glpASTNodeGetChild(a2, 0);
            v119 = glpASTNodeGetSaType(v118);
            v120 = glpPrimitiveTypeGetPrimitiveType(v119);
            ScalarType = glpPrimitiveTypeGetScalarType(v120);
            v122 = 1;
            if (ScalarType > 35)
            {
              if (ScalarType != 62)
              {
                goto LABEL_66;
              }
            }

            else if (ScalarType != 1)
            {
              goto LABEL_66;
            }

            v122 = 0;
LABEL_66:
            v152 = *(v26 + 16);
            v153 = *v10;
            v154 = v10[1];
            if (v122)
            {
              v155 = LLVMBuildICmp();
            }

            else
            {
              v155 = LLVMBuildFCmp();
            }

            v156 = v155;
            if (glpPrimitiveTypeGetCategory(ReturnPrimitiveType) == 2)
            {
              v157 = glpPrimitiveVectorGetLength(ReturnPrimitiveType);
            }

            else
            {
              v157 = 1;
            }

            v158 = *v414;
            if (glpPrimitiveTypeGetCategory(*v414) == 2)
            {
              v159 = glpPrimitiveVectorGetLength(v158);
              if (v157 < v159)
              {
                if (v159 < 1)
                {
                  Element = 0;
                  goto LABEL_90;
                }

                goto LABEL_79;
              }
            }

            else if (v157 < 1)
            {
              v159 = 1;
LABEL_79:
              v161 = 0;
              v162 = 0;
              v163 = v26 + 520;
              v164 = v159;
              do
              {
                if (v161 > 7)
                {
                  v166 = *(v26 + 40);
                  LLVMConstInt();
                }

                else if (!*(v163 + 8 * v161))
                {
                  v165 = *(v26 + 40);
                  *(v163 + 8 * v161) = LLVMConstInt();
                }

                v167 = *(v26 + 16);
                Element = LLVMBuildExtractElement();
                if (v162)
                {
                  v168 = *(v26 + 16);
                  if (v117 == 49)
                  {
                    v169 = LLVMBuildAnd();
                  }

                  else
                  {
                    v169 = LLVMBuildOr();
                  }

                  Element = v169;
                }

                ++v161;
                v162 = Element;
              }

              while (v164 != v161);
LABEL_90:
              v452[0] = Element;
LABEL_310:
              result = v452[0];
              goto LABEL_311;
            }

            Element = v156;
            goto LABEL_90;
          case 56:
            if (v32)
            {
              v262 = v32 == 3;
            }

            else
            {
              v262 = 1;
            }

            if (v262)
            {
              v137 = "air.fast_powr";
            }

            else
            {
              v137 = "air.powr";
            }

            v199 = *v414;
            v200 = *v16;
LABEL_267:
            v176 = v26;
            v177 = 2;
            goto LABEL_268;
          case 57:
            v263 = *(v26 + 16);
            v265 = *v10;
            v264 = v27[1];
            v266 = *v27;
            LLVMBuildExtractElement();
            ComponentCount = glpGetComponentCount(*v414);
            if (!*(v26 + 520))
            {
              v268 = *(v26 + 40);
              *(v26 + 520) = LLVMConstInt();
            }

            v269 = LLVMTypeOf();
            MEMORY[0x23EE85370](v269);
            v270 = *(v26 + 16);
            LLVMBuildInsertElement();
            v271 = MEMORY[0x23EE854F0](*(v26 + 40), ComponentCount);
            MEMORY[0x23EE85200](v271);
            v272 = *(v26 + 16);
            LODOperation = LLVMBuildShuffleVector();
            goto LABEL_309;
          case 58:
            glpMatchInputSize(v26, v10, v414);
            if (v410 <= 0x24 && ((1 << v410) & 0x1000000220) != 0)
            {
              v201 = *(v26 + 16);
              v202 = *v10;
              v203 = v10[1];
              if (v410 == 5)
              {
                LODOperation = LLVMBuildSDiv();
              }

              else
              {
                LODOperation = LLVMBuildUDiv();
              }
            }

            else
            {
              v393 = *(v26 + 16);
              v394 = *v10;
              v395 = v10[1];
              LODOperation = LLVMBuildFDiv();
            }

            goto LABEL_309;
          case 59:
            LODOperation = glpLLVMBuildFaceForward(v26, v10, v414, v32);
            goto LABEL_309;
          case 60:
            LODOperation = glpLLVMBuildMix(v26, v10, v414, v33, v32);
            goto LABEL_309;
          case 61:
            glpMatchInputSize3(v26, v10, v414);
            if (v410 <= 0x24 && ((1 << v410) & 0x1000000220) != 0)
            {
              v212 = "air.clamp";
              v215 = v26;
              v216 = 3;
LABEL_255:
              LODOperation = glpLLVMBuildBuiltinWithPrefix(v215, v212, v216, v10, v34, ReturnPrimitiveType, v32);
            }

            else
            {
              v137 = "air.clamp";
LABEL_165:
              v176 = v26;
              v177 = 3;
LABEL_305:
              v195 = v10;
LABEL_306:
              v227 = v34;
              v199 = ReturnPrimitiveType;
LABEL_307:
              v200 = v32;
LABEL_308:
              LODOperation = glpLLVMBuildBuiltinNoPrefix(v176, v137, v177, v195, v227, v199, v200);
            }

            goto LABEL_309;
          case 62:
            if (v410 <= 0x24 && ((1 << v410) & 0x1000000220) != 0)
            {
              if (v410 == 5 || v410 == 36 || v410 == 9)
              {
                v384 = *(v26 + 16);
                v385 = *v10;
                v386 = LLVMTypeOf();
                MEMORY[0x23EE85200](v386);
                LLVMBuildICmp();
              }
            }

            else
            {
              v387 = *(v26 + 16);
              v388 = *v10;
              v389 = LLVMTypeOf();
              MEMORY[0x23EE85200](v389);
              LLVMBuildFCmp();
            }

            v390 = *(v26 + 16);
            v391 = v10[1];
            v392 = v10[2];
            goto LABEL_366;
          case 63:
            v137 = "air.mad";
            goto LABEL_165;
          case 64:
            LODOperation = glpLLVMBuildSmoothStep(v26, v10, v414, v32, v33);
            goto LABEL_309;
          case 66:
          case 67:
          case 68:
          case 69:
          case 70:
          case 71:
          case 98:
          case 99:
          case 130:
          case 165:
          case 166:
            LODOperation = glpBuildTextureOperation(v26, a2, v10, v414, v16, v411 + 1);
            goto LABEL_309;
          case 78:
          case 161:
            v137 = "air.popcount";
            goto LABEL_304;
          case 80:
            v137 = "air.dfdx";
            goto LABEL_304;
          case 81:
            v137 = "air.dfdy";
            goto LABEL_304;
          case 92:
            glpLLVMCastToHalf(v26, *v10, *v414, *v16);
            v204 = *(v26 + 16);
            goto LABEL_131;
          case 93:
            v199 = *v414;
            v200 = *v16;
            v137 = "air.pack.unorm2x16";
            goto LABEL_229;
          case 94:
            v199 = *v414;
            v200 = *v16;
            v137 = "air.pack.snorm4x8";
            goto LABEL_229;
          case 95:
            v199 = *v414;
            v200 = *v16;
            v137 = "air.pack.unorm4x8";
            goto LABEL_229;
          case 100:
            v293 = *v26;
            v294 = LLVMHalfTypeInContext();
            MEMORY[0x23EE854F0](v294, 2);
            v295 = *(v26 + 16);
            v296 = *v10;
            v452[0] = LLVMBuildBitCast();
            if (v32 != 3 && v32)
            {
              goto LABEL_310;
            }

            *&v420 = 0x300000001;
            LODOperation = glpLLVMCallFunctionInner(v26, "air.convert.f.v2f32.f.v2f16", v34, v452, 1u, &v420, 2u, "");
            goto LABEL_309;
          case 101:
            v137 = "air.unpack.unorm2x16";
            goto LABEL_304;
          case 102:
            v137 = "air.unpack.snorm4x8";
            goto LABEL_304;
          case 103:
            v137 = "air.unpack.unorm4x8";
            goto LABEL_304;
          case 105:
            LODOperation = glpLLVMBuildRefract(v26, v10, v414, v32, v33);
            goto LABEL_309;
          case 112:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_exp";
            v172 = "air.exp";
            goto LABEL_301;
          case 113:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_log";
            v172 = "air.log";
            goto LABEL_301;
          case 119:
          case 120:
            v417 = *v10;
            v129 = *v26;
            v130 = v413;
            v131 = LLVMVoidTypeInContext();
            if (v130 == 119)
            {
              v132 = "air.emit_vertex";
            }

            else
            {
              v132 = "air.end_primitive";
            }

            *&v420 = 0x300000001;
            v133 = &v417;
            v134 = &v420;
            v135 = v26;
            v136 = 1;
            goto LABEL_134;
          case 123:
            v137 = "air.round";
            goto LABEL_304;
          case 124:
            v137 = "air.trunc";
            goto LABEL_304;
          case 128:
            glpMatchInputSize(v26, v10, v414);
            v301 = *(v26 + 16);
            v302 = *v10;
            v303 = v10[1];
            LODOperation = LLVMBuildShl();
            goto LABEL_309;
          case 129:
            glpMatchInputSize(v26, v10, v414);
            v196 = *(v26 + 16);
            v197 = *v10;
            v198 = v10[1];
            if (v410 == 5)
            {
              LODOperation = LLVMBuildAShr();
            }

            else
            {
              LODOperation = LLVMBuildLShr();
            }

            goto LABEL_309;
          case 131:
            LODOperation = glpBuildTextureSizeOperation(v26, a2, v10, v411);
            goto LABEL_309;
          case 132:
            v240 = *(v26 + 16);
            v241 = *v10;
            v242 = LLVMTypeOf();
            MEMORY[0x23EE851D0](v242);
LABEL_247:
            LODOperation = LLVMBuildXor();
            goto LABEL_309;
          case 133:
            LODOperation = glpLLVMBuildDistance(v26, v10, v414, v32, v33);
            goto LABEL_309;
          case 134:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_rsqrt";
            v172 = "air.rsqrt";
            goto LABEL_301;
          case 137:
            v137 = "air.rint";
            goto LABEL_304;
          case 138:
            v304 = *v414;
            *&v420 = glpLLVMf32Extend(v26, *v10, v304, *v16);
            v305 = LLVMTypeOf();
            *&v420 = glpLLVMBuildBuiltinNoPrefix(v26, "air.fabs", 1u, &v420, v305, v304, 3);
            LLVMTypeOf();
            glpLLVMGetInfinity();
            v306 = *(v26 + 40);
            if (glpPrimitiveTypeGetScalarType(v304) == 62)
            {
              v307 = *v26;
              v306 = LLVMInt64TypeInContext();
            }

            v308 = glpGetComponentCount(v304);
            if (v308 >= 2)
            {
              MEMORY[0x23EE854F0](v306, v308);
            }

            v309 = *(v26 + 16);
            *&v420 = LLVMBuildBitCast();
            v310 = *(v26 + 16);
            LLVMBuildBitCast();
            v311 = *(v26 + 16);
            LODOperation = LLVMBuildICmp();
            goto LABEL_309;
          case 139:
            v297 = *v414;
            *&v420 = glpLLVMf32Extend(v26, *v10, *v414, *v16);
            v298 = LLVMTypeOf();
            *&v420 = glpLLVMBuildBuiltinNoPrefix(v26, "air.fabs", 1u, &v420, v298, v297, 3);
            v299 = *(v26 + 16);
            LLVMTypeOf();
            glpLLVMGetInfinity();
            LODOperation = LLVMBuildFCmp();
            goto LABEL_309;
          case 144:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_sinh";
            v172 = "air.sinh";
            goto LABEL_301;
          case 145:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_cosh";
            v172 = "air.cosh";
            goto LABEL_301;
          case 146:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_tanh";
            v172 = "air.tanh";
            goto LABEL_301;
          case 147:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_asinh";
            v172 = "air.asinh";
            goto LABEL_301;
          case 148:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_acosh";
            v172 = "air.acosh";
            goto LABEL_301;
          case 149:
            if (v32)
            {
              v170 = v32 == 3;
            }

            else
            {
              v170 = 1;
            }

            v171 = "air.fast_atanh";
            v172 = "air.atanh";
LABEL_301:
            if (v170)
            {
              v137 = v171;
            }

            else
            {
              v137 = v172;
            }

            goto LABEL_304;
          case 150:
          case 151:
          case 157:
          case 158:
            v123 = *(v26 + 16);
            v124 = *v10;
            goto LABEL_131;
          case 153:
            if ((*(v26 + 320) & 0xFFFFFFFE) == 2)
            {
              v273 = glpASTNodeGetChild(a2, 1u);
              v274 = *(*(glpLValueNodeGetVariableExtra(v273) + 144) + 16);
              v275 = *v26;
              v276 = LLVMInt8TypeInContext();
              MEMORY[0x23EE85440](v276, 1);
              v277 = *(v26 + 16);
              v278 = v10[1];
              v279 = LLVMBuildPointerCast();
              ConstantInt32 = glpGetConstantInt32(v26, *(v274 + 4));
              v281 = v27;
              v282 = v26;
              v283 = glpGetConstantInt32(v26, *(v274 + 8));
              v284 = v281[2];
              LLVMTypeOf();
              glpBuildAlloca(v282);
              v285 = v282[2];
              LLVMBuildStore();
              v286 = *v282;
              v287 = LLVMInt8TypeInContext();
              MEMORY[0x23EE85440](v287, 0);
              v288 = v282[2];
              v289 = LLVMBuildPointerCast();
              ScalarCount = glpPrimitiveTypeGetScalarCount(v414[2]);
              v291 = glpGetConstantInt32(v282, 4 * ScalarCount);
              v292 = *v282;
              v131 = LLVMVoidTypeInContext();
              *&v420 = *v281;
              *(&v420 + 1) = v279;
              *&v421 = ConstantInt32;
              *(&v421 + 1) = v283;
              *&v422 = v289;
              *(&v422 + 1) = v291;
              v417 = 0x300000001;
              v132 = "air.gs_tf_store";
              v133 = &v420;
              v134 = &v417;
              v135 = v282;
              v136 = 6;
LABEL_134:
              glpLLVMCallFunctionInner(v135, v132, v131, v133, v136, v134, 2u, "");
              goto LABEL_310;
            }

            if ((*(v26 + 832) & 2) == 0)
            {
              goto LABEL_310;
            }

            v352 = *v26;
            v353 = LLVMFloatTypeInContext();
            MEMORY[0x23EE85440](v353, 1);
            v354 = *(v26 + 16);
            v355 = v10[1];
            v413 = LLVMBuildPointerCast();
            v356 = *v10;
            LLVMTypeOf();
            v357 = *(v26 + 16);
            LLVMConstInt();
            *&v420 = LLVMBuildAShr();
            if (*(v26 + 832))
            {
              v358 = *(v26 + 448);
              v411 = LLVMBuildLoad();
              v359 = *(v26 + 528);
              if (!v359)
              {
                v360 = *(v26 + 40);
                v359 = LLVMConstInt();
                *(v26 + 528) = v359;
              }

              v417 = v359;
              LLVMBuildGEP();
              v410 = LLVMBuildLoad();
              v361 = *(v26 + 536);
              if (!v361)
              {
                v362 = *(v26 + 40);
                v361 = LLVMConstInt();
                *(v26 + 536) = v361;
              }

              v416 = v361;
              LLVMBuildGEP();
              LLVMBuildLoad();
              v363 = glpASTNodeGetChild(a2, 1u);
              v364 = *(*(glpLValueNodeGetVariableExtra(v363) + 144) + 16);
              v365 = *(v26 + 160);
              v366 = *(v26 + 808);
              LLVMGetParam();
              v367 = *(v26 + 160);
              v368 = *(v26 + 816);
              LLVMGetParam();
              v369 = *(v26 + 16);
              LLVMBuildAdd();
              v370 = *(v26 + 16);
              LLVMBuildSub();
              v371 = *(v26 + 16);
              LLVMBuildMul();
              v372 = *(v26 + 16);
              LLVMBuildAdd();
              glpGetConstantInt32(v26, *(v364 + 8) >> 2);
              v373 = *(v26 + 16);
              LLVMBuildMul();
              v374 = *(v26 + 16);
              *&v420 = LLVMBuildAdd();
              v27 = v10;
            }

            LLVMBuildGEP();
            v375 = v27[2];
            v376 = v16[2];
            if (v376 && v376 != 3)
            {
              v377 = v414[2];
              v378 = glpPrimitiveTypeGetScalarType(v377);
              glpPrimitiveTypeToLLVMType(v26, v377, 3);
              if (v378 > 8)
              {
                if (v378 == 36 || v378 == 9)
                {
                  v405 = *(v26 + 16);
                  LLVMBuildZExt();
                }
              }

              else if (v378 == 1)
              {
                v406 = *(v26 + 16);
                LLVMBuildFPCast();
              }

              else if (v378 == 5)
              {
                v379 = *(v26 + 16);
                LLVMBuildSExt();
              }
            }

            v407 = *(v26 + 16);
            v408 = LLVMTypeOf();
            MEMORY[0x23EE85440](v408, 1);
            LLVMBuildPointerCast();
            v409 = *(v26 + 16);
            LLVMBuildStore();
            v128 = v27[2];
            goto LABEL_53;
          case 154:
            v178 = *v414;
            v179 = glpGetComponentCount(v178);
            if (glpPrimitiveTypeGetScalarType(v178) == 1)
            {
              v180 = *(v26 + 40);
              if (v179 >= 2)
              {
                v180 = MEMORY[0x23EE854F0](*(v26 + 40), v179);
              }

              v181 = *(v26 + 16);
              v182 = *v10;
              LLVMBuildBitCast();
              v183 = *(v26 + 16);
              v184 = *(v26 + 40);
              v185 = LLVMConstInt();
              glpLLVMSplatConstantVector(v185, v179);
              v452[0] = LLVMBuildLShr();
              v186 = *(v26 + 16);
              v187 = *(v26 + 40);
              v188 = LLVMConstInt();
              glpLLVMSplatConstantVector(v188, v179);
              LLVMBuildAnd();
              v189 = *(v26 + 16);
              MEMORY[0x23EE85200](v180);
              LLVMBuildICmp();
              v190 = *(v26 + 40);
              v191 = LLVMConstInt();
              glpLLVMSplatConstantVector(v191, v179);
              v192 = *(v26 + 16);
              LLVMBuildSub();
              v193 = *(v26 + 16);
              MEMORY[0x23EE85200](v180);
LABEL_366:
              LODOperation = LLVMBuildSelect();
            }

            else
            {
              v323 = *v26;
              v324 = LLVMInt64TypeInContext();
              v325 = v324;
              if (v179 >= 2)
              {
                v325 = MEMORY[0x23EE854F0](v324, v179);
              }

              v326 = *(v26 + 16);
              v327 = *v10;
              LLVMBuildBitCast();
              v328 = *(v26 + 16);
              v329 = LLVMConstInt();
              glpLLVMSplatConstantVector(v329, v179);
              LLVMBuildLShr();
              v330 = *(v26 + 16);
              v331 = LLVMConstInt();
              glpLLVMSplatConstantVector(v331, v179);
              v452[0] = LLVMBuildAnd();
              v332 = *(v26 + 16);
              MEMORY[0x23EE85200](v325);
              LLVMBuildICmp();
              v333 = LLVMConstInt();
              glpLLVMSplatConstantVector(v333, v179);
              v334 = *(v26 + 16);
              LLVMBuildSub();
              v335 = *(v26 + 16);
              MEMORY[0x23EE85200](v325);
              LLVMBuildSelect();
              v336 = *(v26 + 16);
              LODOperation = LLVMBuildTrunc();
            }

            goto LABEL_309;
          case 155:
            v413 = v33;
            v246 = *v414;
            v247 = glpGetComponentCount(v246);
            if (glpPrimitiveTypeGetScalarType(v246) == 1)
            {
              v248 = *(v26 + 40);
              if (v247 >= 2)
              {
                v248 = MEMORY[0x23EE854F0](*(v26 + 40), v247);
              }

              v249 = *(v26 + 16);
              v250 = *v10;
              LLVMBuildBitCast();
              v251 = *(v26 + 40);
              v252 = LLVMConstInt();
              glpLLVMSplatConstantVector(v252, v247);
              v253 = *(v26 + 16);
              LLVMBuildAnd();
              v254 = v26;
              v255 = *(v26 + 16);
              MEMORY[0x23EE85200](v248);
              v26 = v254;
              LLVMBuildICmp();
              v256 = *(v254 + 16);
              LLVMBuildNot();
              v257 = *(v254 + 16);
              LLVMBuildAnd();
              v258 = *(v254 + 16);
              v259 = *(v254 + 40);
              v260 = LLVMConstInt();
              glpLLVMSplatConstantVector(v260, v247);
              LLVMBuildOr();
              v261 = *(v254 + 16);
              MEMORY[0x23EE85200](v248);
            }

            else
            {
              v338 = *v26;
              v339 = LLVMInt64TypeInContext();
              v340 = v339;
              if (v247 >= 2)
              {
                v340 = MEMORY[0x23EE854F0](v339, v247);
              }

              v341 = *(v26 + 16);
              v342 = *v10;
              v452[0] = LLVMBuildBitCast();
              v343 = LLVMConstInt();
              glpLLVMSplatConstantVector(v343, v247);
              v344 = *(v26 + 16);
              LLVMBuildAnd();
              v345 = *(v26 + 16);
              MEMORY[0x23EE85200](v340);
              LLVMBuildICmp();
              v346 = *(v26 + 16);
              LLVMBuildNot();
              v347 = *(v26 + 16);
              LLVMBuildAnd();
              v348 = *(v26 + 16);
              v349 = LLVMConstInt();
              glpLLVMSplatConstantVector(v349, v247);
              LLVMBuildOr();
              v350 = *(v26 + 16);
              MEMORY[0x23EE85200](v340);
            }

            LLVMBuildSelect();
            v351 = *(v26 + 16);
LABEL_131:
            LODOperation = LLVMBuildBitCast();
            goto LABEL_309;
          case 156:
            if (v32)
            {
              v173 = v32 == 3;
            }

            else
            {
              v173 = 1;
            }

            v174 = "air.fast_ldexp";
            v175 = "air.ldexp";
            goto LABEL_99;
          case 159:
            v212 = "air.mul_hi";
            goto LABEL_199;
          case 160:
            v137 = "air.reverse_bits";
            goto LABEL_304;
          case 162:
            *&v420 = *v10;
            v194 = *(v26 + 64);
            *(&v420 + 1) = LLVMConstInt();
            v137 = "air.ctz";
            v195 = &v420;
            v176 = v26;
            v177 = 2;
            goto LABEL_306;
          case 163:
            v230 = ReturnPrimitiveType;
            v231 = *v414;
            v232 = glpGetComponentCount(v231);
            v233 = glpPrimitiveTypeGetScalarType(v231);
            if (v233 == 36)
            {
              v239 = *v10;
            }

            else
            {
              if (v233 != 5)
              {
                abort();
              }

              v234 = *(v26 + 16);
              v235 = *v10;
              v236 = *(v26 + 40);
              v237 = LLVMConstInt();
              glpLLVMSplatConstantVector(v237, v232);
              LLVMBuildAShr();
              v238 = *(v26 + 16);
              v239 = LLVMBuildXor();
            }

            *&v420 = v239;
            v380 = *(v26 + 64);
            *(&v420 + 1) = LLVMConstInt();
            v452[0] = glpLLVMBuildBuiltinNoPrefix(v26, "air.clz", 2u, &v420, v34, v230, v32);
            v381 = *(v26 + 40);
            v382 = LLVMConstInt();
            glpLLVMSplatConstantVector(v382, v232);
            v383 = *(v26 + 16);
            goto LABEL_358;
          case 164:
            LODOperation = glpBuildGetLODOperation(v26, a2, v10, v414);
            goto LABEL_309;
          case 167:
          case 168:
          case 169:
            v125 = v413;
            v126 = glpASTNodeGetChild(a2, 0);
            VariableExtra = glpLValueNodeGetVariableExtra(v126);
            if (*(VariableExtra + 51))
            {
              v147 = VariableExtra;
              v148 = glpLLVMGetVariablePointer(v26, VariableExtra);
              v149 = *(v147 + 48) & 0x2000000000;
              if (v125 == 169)
              {
                v150 = v149 | 0x800000;
                v312 = v27[1];
                v313 = *v26;
                LLVMFloatTypeInContext();
                *&v420 = llvm::ConstantFP::get();
                *(&v420 + 1) = v420;
                v314 = *(v26 + 16);
                LLVMConstVector();
                v151 = LLVMBuildFAdd();
              }

              else if (v125 == 168)
              {
                v150 = v149 | 0x40000000000;
                v151 = v27[1];
              }

              else
              {
                v151 = 0;
                v150 = v149 | 0x4000000000;
              }

              v452[0] = glpBuildInterpolateAt(v26, v148, v147, v150, "", v151);
              v315 = *(*(v147 + 144) + 24);
              Offset = glpDerefNodeGetOffset(v126);
              if (Offset)
              {
                v317 = Offset;
                v318 = v452[0];
                Swizzle = glpOffsetNodeGetSwizzle(Offset);
                v452[0] = glpCGSwizzle(v26, 0, 0, v318, v315, Swizzle);
                VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v317);
                if (VectorElementExpr)
                {
                  glpLLVMCGNode(v26, VectorElementExpr, 1);
                  if (LLVMTypeOf() != *(v26 + 40))
                  {
                    v321 = *(v26 + 16);
                    LLVMBuildIntCast();
                  }

                  v322 = *(v26 + 16);
                  LODOperation = LLVMBuildExtractElement();
LABEL_309:
                  v452[0] = LODOperation;
                }
              }
            }

            else
            {
              v128 = *v10;
LABEL_53:
              v452[0] = v128;
            }

            goto LABEL_310;
          case 170:
            v205 = *v26;
            v131 = LLVMVoidTypeInContext();
            *&v420 = 0x300000001;
            v132 = "air.cs_barrier";
            v134 = &v420;
            v135 = v26;
            v133 = 0;
            v136 = 0;
            goto LABEL_134;
          case 171:
            v137 = "air.gamma_compress";
            goto LABEL_304;
          case 172:
            v137 = "air.gamma_expand";
            goto LABEL_304;
          case 173:
            v137 = "air.gamma_compress_xr";
            goto LABEL_304;
          case 174:
            v137 = "air.gamma_expand_xr";
            goto LABEL_304;
          default:
            goto LABEL_310;
        }
      }

      if ((*(a1 + 320) & 0xFFFFFFFE) == 2 || (*(a1 + 832) & 2) != 0)
      {
        v5 = 0;
        goto LABEL_10;
      }
    }

    result = 0;
    goto LABEL_311;
  }

  v36 = a1;
  v37 = glpASTNodeGetChild(a2, 0);
  v38 = glpASTNodeGetChild(a2, 1u);
  v39 = glpLValueNodeGetVariableExtra(v37);
  v40 = glpDerefNodeGetOffset(v37);
  if (v40 && (OffsetExpr = glpOffsetNodeGetOffsetExpr(v40), glpIsConstantNode(OffsetExpr)))
  {
    v42 = *glpConstantNodeGetValue(OffsetExpr);
  }

  else
  {
    v42 = 0;
  }

  v46 = *(v39 + 156) + v42;
  v47 = v36[55];
  if (!glpFindGep(v36, v39, 0, v46))
  {
    v48 = v36[5];
    *&v420 = LLVMConstInt();
    v49 = v36[2];
    LLVMGetInsertBlock();
    v50 = v36[2];
    v51 = v36[23];
    LLVMPositionBuilderAtEnd();
    v52 = LLVMBuildGEP();
    v53 = v36[2];
    LLVMPositionBuilderAtEnd();
    glpAddGep(v36, v39, 0, v46, v52);
  }

  v54 = glpLLVMCGNode(v36, v38, 1);
  v55 = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  v56 = glpASTNodeGetSaFlags(a2);
  v57 = glpPrecisionIndexFromSAFlags(v56);
  v413 = glpPrimitiveTypeToLLVMType(v36, v55, v57);
  v58 = v38;
  v59 = v54;
  v60 = glpASTNodeGetSaType(v58);
  v61 = glpPrimitiveTypeGetPrimitiveType(v60);
  v69 = glpMakeSwizzle(v61, v62, v63, v64, v65, v66, v67, v68, 0);
  glpCGSwizzle(v36, 0, 0, v59, v61, v69);
  v70 = v36[65];
  if (!v70)
  {
    v71 = v36[5];
    v70 = LLVMConstInt();
    v36[65] = v70;
  }

  *&v420 = v70;
  LLVMBuildGEP();
  LLVMBuildLoad();
  v72 = v36[2];
  v73 = LLVMBuildFMul();
  v81 = glpMakeSwizzle(v73, v74, v75, v76, v77, v78, v79, v80, 1);
  v82 = glpCGSwizzle(v36, 0, 0, v59, v61, v81);
  v83 = v36[66];
  v414 = v59;
  if (!v83)
  {
    v84 = v36[5];
    v83 = LLVMConstInt();
    v36[66] = v83;
  }

  v415 = v83;
  LLVMBuildGEP();
  v85 = LLVMBuildLoad();
  v417 = v82;
  v418 = v85;
  v419 = v73;
  v86 = v57;
  v87 = glpLLVMGetTypeString(&v416, v55, v57);
  v450 = 0u;
  v451 = 0u;
  v448 = 0u;
  v449 = 0u;
  v446 = 0u;
  v447 = 0u;
  v444 = 0u;
  v445 = 0u;
  v442 = 0u;
  v443 = 0u;
  v440 = 0u;
  v441 = 0u;
  v438 = 0u;
  v439 = 0u;
  v436 = 0u;
  v437 = 0u;
  v434 = 0u;
  v435 = 0u;
  v432 = 0u;
  v433 = 0u;
  v430 = 0u;
  v431 = 0u;
  v428 = 0u;
  v429 = 0u;
  v426 = 0u;
  v427 = 0u;
  v424 = 0u;
  v425 = 0u;
  v422 = 0u;
  v423 = 0u;
  v420 = 0u;
  v421 = 0u;
  snprintf_l(&v420, 0x200uLL, 0, "%s.%s", "air.fma", v87);
  v452[0] = 0x300000001;
  v88 = v413;
  v89 = glpLLVMCallFunctionInner(v36, &v420, v413, &v417, 3u, v452, 2u, "");
  v97 = glpMakeSwizzle(v89, v90, v91, v92, v93, v94, v95, v96, 2);
  v98 = glpCGSwizzle(v36, 0, 0, v414, v61, v97);
  v99 = v36[67];
  if (!v99)
  {
    v100 = v36[5];
    v99 = LLVMConstInt();
    v36[67] = v99;
  }

  v415 = v99;
  LLVMBuildGEP();
  v101 = LLVMBuildLoad();
  v417 = v98;
  v418 = v101;
  v419 = v89;
  v102 = glpLLVMGetTypeString(&v416, v55, v86);
  v450 = 0u;
  v451 = 0u;
  v448 = 0u;
  v449 = 0u;
  v446 = 0u;
  v447 = 0u;
  v444 = 0u;
  v445 = 0u;
  v442 = 0u;
  v443 = 0u;
  v440 = 0u;
  v441 = 0u;
  v438 = 0u;
  v439 = 0u;
  v436 = 0u;
  v437 = 0u;
  v434 = 0u;
  v435 = 0u;
  v432 = 0u;
  v433 = 0u;
  v430 = 0u;
  v431 = 0u;
  v428 = 0u;
  v429 = 0u;
  v426 = 0u;
  v427 = 0u;
  v424 = 0u;
  v425 = 0u;
  v422 = 0u;
  v423 = 0u;
  v420 = 0u;
  v421 = 0u;
  snprintf_l(&v420, 0x200uLL, 0, "%s.%s", "air.fma", v102);
  v452[0] = 0x300000001;
  v103 = glpLLVMCallFunctionInner(v36, &v420, v88, &v417, 3u, v452, 2u, "");
  v111 = glpMakeSwizzle(v103, v104, v105, v106, v107, v108, v109, v110, 3);
  v112 = glpCGSwizzle(v36, 0, 0, v414, v61, v111);
  v113 = v36[68];
  if (!v113)
  {
    v114 = v36[5];
    v113 = LLVMConstInt();
    v36[68] = v113;
  }

  v415 = v113;
  LLVMBuildGEP();
  v115 = LLVMBuildLoad();
  v417 = v112;
  v418 = v115;
  v419 = v103;
  v116 = glpLLVMGetTypeString(&v416, v55, v86);
  v450 = 0u;
  v451 = 0u;
  v448 = 0u;
  v449 = 0u;
  v446 = 0u;
  v447 = 0u;
  v444 = 0u;
  v445 = 0u;
  v442 = 0u;
  v443 = 0u;
  v440 = 0u;
  v441 = 0u;
  v438 = 0u;
  v439 = 0u;
  v436 = 0u;
  v437 = 0u;
  v434 = 0u;
  v435 = 0u;
  v432 = 0u;
  v433 = 0u;
  v430 = 0u;
  v431 = 0u;
  v428 = 0u;
  v429 = 0u;
  v426 = 0u;
  v427 = 0u;
  v424 = 0u;
  v425 = 0u;
  v422 = 0u;
  v423 = 0u;
  v420 = 0u;
  v421 = 0u;
  snprintf_l(&v420, 0x200uLL, 0, "%s.%s", "air.fma", v116);
  v452[0] = 0x300000001;
  result = glpLLVMCallFunctionInner(v36, &v420, v88, &v417, 3u, v452, 2u, "");
LABEL_311:
  v300 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMCGNegate(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  v5 = glpLLVMCGNode(a1, Expr, 1);
  v6 = glpUnaryOperatorNodeGetExpr(a2);
  SaType = glpASTNodeGetSaType(v6);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
  if (ScalarType == 62 || ScalarType == 1)
  {
    v10 = *(a1 + 16);

    return LLVMBuildFNeg();
  }

  else
  {
    v12 = *(a1 + 16);

    return MEMORY[0x2821F1568](v12, v5, "");
  }
}

uint64_t glpLLVMCGLogicalNot(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  glpLLVMCGNode(a1, Expr, 1);
  v5 = *(a1 + 16);

  return LLVMBuildNot();
}

uint64_t glpLLVMCGAssign(uint64_t *a1, uint64_t a2)
{
  v70[3] = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  Lhs = glpBinaryOperatorNodeGetLhs(a2);
  VariableExtra = glpLValueNodeGetVariableExtra(Lhs);
  Rhs = glpBinaryOperatorNodeGetRhs(a2);
  v7 = glpLLVMCGNode(a1, Rhs, 1);
  if (v7)
  {
    SaType = glpASTNodeGetSaType(Rhs);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    v10 = glpLLVMGetVariablePointer(a1, VariableExtra);
    Offset = glpDerefNodeGetOffset(Lhs);
    SaFlags = glpASTNodeGetSaFlags(Lhs);
    v13 = glpPrecisionIndexFromSAFlags(SaFlags);
    if (!v13)
    {
      v14 = glpLValueNodeGetVariableExtra(Lhs);
      v13 = glpPrecisionIndexFromSAFlags(*(v14 + 48));
    }

    v70[0] = 0;
    LODWORD(v68) = PrimitiveType;
    if (Offset)
    {
      PreSwizzlePrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(Offset);
      if (!PreSwizzlePrimitiveType)
      {
        v16 = glpASTNodeGetSaType(Lhs);
        PreSwizzlePrimitiveType = glpPrimitiveTypeGetPrimitiveType(v16);
      }

      BankIndex = glpOffsetNodeGetBankIndex(Offset);
      if (BankIndex)
      {
        v18 = glpLLVMCGNode(a1, BankIndex, 1);
        v19 = a1[65];
        if (!v19)
        {
          v20 = a1[5];
          v19 = LLVMConstInt();
          a1[65] = v19;
        }

        v70[1] = v19;
        v70[2] = v18;
        v10 = LLVMBuildGEP();
      }

      else
      {
        v18 = 0;
      }

      OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
      if (OffsetExpr)
      {
        v22 = OffsetExpr;
        if (*(*(VariableExtra + 144) + 24) && (PreSwizzlePrimitiveType & 0xFFFFFFFE) == 0x40)
        {
          v23 = v70;
          v24 = a1;
          v25 = VariableExtra;
          v26 = v10;
        }

        else
        {
          v24 = a1;
          v25 = VariableExtra;
          v26 = v10;
          v23 = 0;
        }

        v10 = glpBuildArrayElementPtr(v24, v25, v26, v22, v23, v18);
      }
    }

    else
    {
      PreSwizzlePrimitiveType = 0;
    }

    v27 = glpASTNodeGetSaType(Lhs);
    v28 = glpPrimitiveTypeGetPrimitiveType(v27);
    v29 = glpASTNodeGetSaFlags(Lhs);
    v30 = glpPrecisionIndexFromSAFlags(v29);
    if (Offset)
    {
      v69 = PreSwizzlePrimitiveType;
      VectorElementExpr = glpOffsetNodeGetVectorElementExpr(Offset);
      if (glpOffsetNodeGetSwizzle(Offset) || (inserted = v7, VectorElementExpr))
      {
        v28 = v69;
        v33 = glpLLVMLoadVector(a1, VariableExtra, v10, v69, v13, *(*(VariableExtra + 144) + 24), *(*(VariableExtra + 144) + 28));
        if (VectorElementExpr)
        {
          v34 = a1[5];
          v35 = glpLLVMCGNode(a1, VectorElementExpr, 1);
          v36 = glpASTNodeGetSaFlags(VectorElementExpr);
          v37 = glpPrecisionIndexFromSAFlags(v36);
          if (v37)
          {
            v38 = v69;
            if (v37 == 3)
            {
              v68 = v35;
            }

            else
            {
              v40 = a1[2];
              v68 = LLVMBuildIntCast();
            }
          }

          else
          {
            v68 = v35;
            v38 = v69;
          }

          Swizzle = glpOffsetNodeGetSwizzle(Offset);
          if (Swizzle)
          {
            v42 = Swizzle;
            v65 = v13;
            v64[1] = v64;
            v64[2] = v33;
            v43 = Swizzle & 7;
            MEMORY[0x28223BE20](Swizzle);
            v66 = (v64 - v44);
            bzero(v64 - v44, v45);
            v67 = v43;
            if (v43)
            {
              v46 = a1 + 65;
              v47 = 3;
              v48 = v66;
              v49 = v67;
              do
              {
                v50 = (v42 >> v47) & 3;
                v51 = v46[v50];
                if (!v51)
                {
                  v52 = a1[5];
                  v51 = LLVMConstInt();
                  v46[v50] = v51;
                }

                *v48++ = v51;
                v47 += 2;
                --v49;
              }

              while (v49);
            }

            LLVMConstVector();
            v53 = a1[2];
            LLVMBuildExtractElement();
            LODWORD(v13) = v65;
            v38 = v69;
          }

          v54 = a1[2];
          inserted = LLVMBuildInsertElement();
          v30 = v13;
          v28 = v38;
        }

        else
        {
          v39 = glpOffsetNodeGetSwizzle(Offset);
          inserted = glpCGSwizzle(a1, v33, v69, v7, v68, v39);
          v30 = v13;
        }
      }
    }

    else
    {
      inserted = v7;
    }

    v55 = *(VariableExtra + 144);
    v56 = *(v55 + 24);
    v57 = *(v55 + 28);
    Category = glpPrimitiveTypeGetCategory(v28);
    if ((Category - 1) >= 3)
    {
      if (Category == 4)
      {
        v60 = a1[2];
        MEMORY[0x23EE85440](a1[5], 0);
        LLVMBuildPointerCast();
      }

      else if (!Category)
      {
        abort();
      }
    }

    else if (v56 && !glpLLVMTypesEqual(a1, v56, v57, v28, v30))
    {
      LLVMTypeOf();
      v59 = LLVMGetElementType();
      glpLLVMPackVectorInner(a1, inserted, v59);
    }

    v61 = a1[2];
    LLVMBuildStore();
  }

  v62 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t glpLLVMCGCommaExpr(uint64_t a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  ExprCount = glpCommaExprNodeGetExprCount(a2);
  if (ExprCount)
  {
    v7 = ExprCount;
    v8 = 0;
    do
    {
      Expr = glpCommaExprNodeGetExpr(a2, v8);
      memset(v24, 0, sizeof(v24));
      v21 = 0;
      v22 = 0;
      memset(v23, 0, sizeof(v23));
      if (Expr)
      {
        v10 = 0;
        v11 = v24;
        while (1)
        {
          v12 = v10;
          if (!glpIsComponentAssigment(Expr, &v22, &v21 + 1, &v21, v11, 0))
          {
            v8 += v12;
            if (!v12)
            {
              goto LABEL_11;
            }

            goto LABEL_20;
          }

          *(v23 + v12) = Expr;
          v13 = v8 + v12 + 1;
          if (v13 >= v7)
          {
            break;
          }

          Expr = glpCommaExprNodeGetExpr(a2, v13);
          if (Expr)
          {
            ++v11;
            v10 = v12 + 1;
            if (v12 < 7)
            {
              continue;
            }
          }

          goto LABEL_19;
        }

        Expr = 0;
LABEL_19:
        v17 = v8 + v12++;
        v8 = v17 + 1;
        if (!v12)
        {
          goto LABEL_11;
        }

LABEL_20:
        if (a3)
        {
          v18 = v8 == v7;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        result = glpProcessComponentWiseVectorAssignment(a1, v22, v21, v23, v24, v19, v12);
      }

      else
      {
LABEL_11:
        ++v8;
        if (a3)
        {
          v14 = v8 == v7;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        result = glpLLVMCGNode(a1, Expr, v15);
      }
    }

    while (v8 < v7);
  }

  else
  {
    result = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *glpLLVMCGParameterDeclaration(uint64_t a1, uint64_t a2)
{
  Extra = glpParameterDeclarationNodeGetExtra(a2);
  if (!*(Extra + 144))
  {
    v4 = (*(*(a1 + 152) + 8))(**(a1 + 152), 40, "llvm codegen extra");
    *(Extra + 144) = v4;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  return glpLLVMCGGlobalVariable(a1, Extra);
}

uint64_t glpLLVMCGFunctionPrototype(uint64_t a1, uint64_t a2)
{
  v503 = *MEMORY[0x277D85DE8];
  Name = glpFunctionPrototypeNodeGetName(a2);
  v6 = glpStringsEqual(Name, v5, "main", 0x83863A00000004);
  Extra = glpFunctionPrototypeNodeGetExtra(a2);
  ParameterCount = glpFunctionPrototypeNodeGetParameterCount(a2);
  if (ParameterCount)
  {
    v9 = ParameterCount;
    for (i = 0; i != v9; ++i)
    {
      Parameter = glpFunctionPrototypeNodeGetParameter(a2, i);
      glpLLVMCGNode(a1, Parameter, 0);
    }
  }

  ReturnOutParam = glpFunctionPrototypeNodeGetReturnOutParam(a2);
  if (ReturnOutParam)
  {
    glpLLVMCGNode(a1, ReturnOutParam, 0);
  }

  if (!v6)
  {
    v15 = *(**(Extra + 152) + 36);
    goto LABEL_40;
  }

  v13 = *(a1 + 676);
  if (v13 >= 1)
  {
    LODWORD(v459) = v6;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 8 * v13;
    v18 = -1;
    v19 = -1;
    v20 = -1;
    while (1)
    {
      v21 = glpLayoutObjectFind(*(*(*(a1 + 680) + v14) + 8), 34);
      v22 = *(a1 + 320);
      if ((v22 - 1) < 3)
      {
        goto LABEL_10;
      }

      if (v22 == 4)
      {
        v24 = *(v21 + 4);
        if (v24 == 23)
        {
          v18 = v15;
        }

        if (v24 == 24)
        {
          v16 = 1;
        }

        else
        {
          ++v15;
        }

        goto LABEL_23;
      }

      if (!v22)
      {
        break;
      }

LABEL_23:
      v14 += 8;
      if (v17 == v14)
      {
        *(a1 + 804) = 0;
        if (v16)
        {
          if (v18 == -1)
          {
            *(a1 + 804) = 1;
            v18 = v15++;
          }

          v6 = v459;
          *(a1 + 800) = v18;
        }

        else
        {
          v6 = v459;
        }

        if ((~*(a1 + 832) & 3) == 0)
        {
          if (v19 == -1)
          {
LABEL_36:
            *(a1 + 812) = 1;
            v19 = v15++;
          }

          *(a1 + 808) = v19;
          if (v20 == -1)
          {
            *(a1 + 820) = 1;
            v20 = v15++;
          }

          *(a1 + 816) = v20;
        }

        goto LABEL_40;
      }
    }

    v23 = *(v21 + 4);
    if (v23 != 28)
    {
      if ((*(a1 + 832) & 1) == 0)
      {
        goto LABEL_23;
      }

      if (v23 == 18)
      {
        v20 = v15;
      }

      else
      {
        if (v23 != 17)
        {
          goto LABEL_23;
        }

        v19 = v15;
      }
    }

LABEL_10:
    ++v15;
    goto LABEL_23;
  }

  v15 = 0;
  *(a1 + 804) = 0;
  if ((~*(a1 + 832) & 3) == 0)
  {
    v20 = -1;
    goto LABEL_36;
  }

LABEL_40:
  if ((*(a1 + 320) | 2) == 3 && v6)
  {
    v25 = *(a1 + 692);
  }

  else
  {
    v25 = 0;
  }

  v26 = *(*(Extra + 152) + 8);
  if ((v26 & 2) != 0)
  {
    v27 = *(a1 + 708);
  }

  else
  {
    v27 = 0;
  }

  v459 = *(Extra + 152);
  if ((v26 & 4) != 0)
  {
    v28 = *(a1 + 724);
  }

  else
  {
    v28 = 0;
  }

  v29 = *(a1 + 832);
  v31 = (v29 & 2) == 0 || v28 < 1;
  v32 = (v29 & 1) == 0;
  v33 = (v29 & 1) == 0 || v31;
  LODWORD(v461) = v33;
  v34 = !v32 && !v31;
  LODWORD(v460) = v34;
  v465 = v27;
  v35 = v6;
  if ((v26 & 8) != 0)
  {
    v36 = *(a1 + 596);
  }

  else
  {
    v36 = 0;
  }

  LODWORD(v462) = v25 + v15;
  LODWORD(v464) = v26 & 1;
  v37 = v15;
  v39 = *(Extra + 40);
  v38 = *(Extra + 48);
  result = glpStringHashGet(*(a1 + 736), v39, v38);
  v463 = v36;
  v466 = v28;
  if (result)
  {
    if (!v35)
    {
      goto LABEL_440;
    }

LABEL_97:
    v454 = v452;
    v455 = result;
    v76 = v465;
    v453 = v464 + v462 + v465 + v28 + v460 + 2 * v36;
    v77 = 8 * (v453 + 1);
    MEMORY[0x28223BE20](result);
    v79 = &v452[-v78];
    bzero(&v452[-v78], v77);
    v464 = v79;
    bzero(v79, v77);
    v80 = *(a1 + 676);
    v81 = *(a1 + 832);
    if (v81)
    {
      v82 = "air.vertex_id";
    }

    else
    {
      v82 = 0;
    }

    if (v81)
    {
      v83 = "air.instance_id";
    }

    else
    {
      v83 = 0;
    }

    v84 = "air.location_index";
    if ((v81 & 1) == 0)
    {
      v84 = "air.location";
    }

    v460 = v84;
    if (v80 >= 1)
    {
      v457 = v83;
      v458 = v82;
      v85 = 0;
      v86 = 0;
      v462 = 0;
      v87 = a1 + 520;
      if (v81)
      {
        v88 = 18;
      }

      else
      {
        v88 = 12;
      }

      LODWORD(v459) = v88;
      v89 = 8 * v80;
      while (1)
      {
        v90 = *(*(a1 + 680) + v85);
        v91 = glpLayoutObjectFind(*(v90 + 8), 34);
        v92 = *(a1 + 320);
        if ((v92 - 1) < 3)
        {
          v93 = glpLayoutObjectFind(*(v90 + 8), 34);
          if (v86 > 7)
          {
            v101 = *(a1 + 40);
            v94 = LLVMConstInt();
          }

          else
          {
            v94 = *(v87 + 8 * v86);
            if (!v94)
            {
              v95 = *(a1 + 40);
              v94 = LLVMConstInt();
              *(v87 + 8 * v86) = v94;
            }
          }

          v102 = 0;
          *(&v474[3] + 1) = 0;
          *(&v474[2] + 8) = 0u;
          *(&v474[1] + 8) = 0u;
          *(v474 + 8) = 0u;
          *&v474[0] = v94;
          switch(*(v93 + 4))
          {
            case 1:
              v103 = *a1;
              goto LABEL_167;
            case 2:
              v137 = glpLayoutObjectFind(*(v90 + 8), 41);
              v138 = *a1;
              *(&v474[0] + 1) = LLVMMDStringInContext();
              v32 = *(v137 + 4) == 0;
              v139 = *a1;
              goto LABEL_238;
            case 3:
              v134 = glpLayoutObjectFind(*(v90 + 8), 42);
              v135 = *a1;
              *(&v474[0] + 1) = LLVMMDStringInContext();
              v32 = *(v134 + 4) == 0;
              v136 = *a1;
              goto LABEL_238;
            case 0xD:
              v133 = *a1;
              goto LABEL_167;
            case 0xE:
              v120 = glpLayoutObjectFind(*(v90 + 8), 43);
              v121 = *a1;
              *(&v474[0] + 1) = LLVMMDStringInContext();
              v122 = *(v120 + 4);
              if (v122 > 7)
              {
                v179 = *(a1 + 40);
                v123 = LLVMConstInt();
              }

              else
              {
                v123 = *(v87 + 8 * v122);
                if (!v123)
                {
                  v124 = *(a1 + 40);
                  v123 = LLVMConstInt();
                  *(v87 + 8 * v122) = v123;
                }
              }

              goto LABEL_239;
            case 0xF:
              v131 = *a1;
              goto LABEL_167;
            case 0x10:
              v140 = *a1;
              goto LABEL_167;
            case 0x13:
              v141 = *a1;
              goto LABEL_167;
            case 0x14:
              v143 = *a1;
              goto LABEL_167;
            case 0x15:
              v142 = *a1;
              goto LABEL_167;
            case 0x19:
              v119 = *a1;
              goto LABEL_167;
            case 0x1A:
              v132 = *a1;
LABEL_167:
              *(&v474[0] + 1) = LLVMMDStringInContext();
              v144 = *a1;
              goto LABEL_240;
            case 0x1C:
              v125 = glpLayoutObjectFind(*(v90 + 8), 35);
              v126 = *a1;
              *(&v474[0] + 1) = LLVMMDStringInContext();
              if (*(a1 + 832))
              {
                v467 = 0u;
                v468 = 0u;
                v180 = *(v125 + 4);
                v181 = glpLayoutObjectFind(*(v90 + 8), 38);
                if (v181 && *(v181 + 4) || (v180 & 0xFFFFFFF8) != 8)
                {
                  if ((*(v90 + 53) & 2) != 0)
                  {
                    snprintf(&v467, 0x1FuLL, "user(patch%u)");
                  }

                  else
                  {
                    snprintf(&v467, 0x1FuLL, "user(slot%u)");
                  }
                }

                else
                {
                  snprintf(&v467, 0x1FuLL, "user(tex_coord%u)");
                }

                v218 = *a1;
                strlen(&v467);
LABEL_238:
                v123 = LLVMMDStringInContext();
LABEL_239:
                *&v474[1] = v123;
                v219 = *a1;
              }

              else
              {
                v127 = *a1;
                *&v474[1] = LLVMMDStringInContext();
                v128 = *(v125 + 4);
                if (v128 > 7)
                {
                  v185 = *(a1 + 40);
                  v129 = LLVMConstInt();
                }

                else
                {
                  v129 = *(v87 + 8 * v128);
                  if (!v129)
                  {
                    v130 = *(a1 + 40);
                    v129 = LLVMConstInt();
                    *(v87 + 8 * v128) = v129;
                  }
                }

                *(&v474[1] + 1) = v129;
                v186 = *a1;
              }

              goto LABEL_240;
            default:
              goto LABEL_241;
          }
        }

        v96 = v91;
        if (v92 == 4)
        {
          if (*(v91 + 4) != 24)
          {
            v104 = glpLayoutObjectFind(*(v90 + 8), 34);
            v105 = glpPrecisionIndexFromSAFlags(*(v90 + 48));
            v501 = 0u;
            v502 = 0u;
            v499 = 0u;
            v500 = 0u;
            v497 = 0u;
            v498 = 0u;
            v495 = 0u;
            v496 = 0u;
            v493 = 0u;
            v494 = 0u;
            v491 = 0u;
            v492 = 0u;
            v489 = 0u;
            v490 = 0u;
            v487 = 0u;
            v488 = 0u;
            v485 = 0u;
            v486 = 0u;
            v483 = 0u;
            v484 = 0u;
            v481 = 0u;
            v482 = 0u;
            v479 = 0u;
            v480 = 0u;
            v477 = 0u;
            v478 = 0u;
            v475 = 0u;
            v476 = 0u;
            memset(v474, 0, sizeof(v474));
            glpMetalGetArgTypeNameFromASTType(v474, *v90, v105, 0);
            v469 = 0u;
            v470 = 0u;
            v467 = 0u;
            v468 = 0u;
            if (v86 > 7)
            {
              v112 = *(a1 + 40);
              v106 = LLVMConstInt();
            }

            else
            {
              v106 = *(v87 + 8 * v86);
              if (!v106)
              {
                v107 = *(a1 + 40);
                v106 = LLVMConstInt();
                *(v87 + 8 * v86) = v106;
              }
            }

            v102 = 0;
            *&v467 = v106;
            v113 = *(v104 + 4);
            if (v113 > 13)
            {
              if (v113 > 22)
              {
                if (v113 == 23)
                {
                  v206 = *a1;
                  goto LABEL_224;
                }

                if (v113 != 27)
                {
                  if (v113 != 28)
                  {
                    goto LABEL_241;
                  }

                  v145 = glpLayoutObjectFind(*(v90 + 8), 35);
                  v146 = *(v90 + 48);
                  v147 = "air.perspective";
                  if ((v146 & 0x2000000000) != 0)
                  {
                    v147 = "air.no_perspective";
                  }

                  if ((v146 & 0x1000000000) != 0)
                  {
                    v147 = "air.flat";
                  }

                  v456 = v147;
                  v148 = "air.center";
                  if ((v146 & 0x1000000000) == 0)
                  {
                    v148 = "air.interpolation_function";
                    if ((v146 & 0x1000000) == 0)
                    {
                      v149 = "air.sample";
                      if ((v146 & 0x40000000000) == 0)
                      {
                        v149 = "air.center";
                      }

                      if ((v146 & 0x4000000000) != 0)
                      {
                        v148 = "air.centroid";
                      }

                      else
                      {
                        v148 = v149;
                      }
                    }
                  }

                  v150 = *a1;
                  *(&v467 + 1) = LLVMMDStringInContext();
                  if (*(a1 + 832))
                  {
                    v472 = 0u;
                    v473 = 0u;
                    v220 = *(v145 + 4);
                    v221 = glpLayoutObjectFind(*(v90 + 8), 38);
                    if (v221)
                    {
                      v222 = *(v221 + 4) == 0;
                    }

                    else
                    {
                      v222 = 1;
                    }

                    v229 = v456;
                    if (v222 && (v220 & 0xFFFFFFF8) == 8)
                    {
                      snprintf(&v472, 0x1FuLL, "user(tex_coord%u)");
                    }

                    else
                    {
                      snprintf(&v472, 0x1FuLL, "user(slot%u)");
                    }

                    v230 = *a1;
                    strlen(&v472);
                    *&v468 = LLVMMDStringInContext();
                    v231 = *a1;
                    strlen(v229);
                    *(&v468 + 1) = LLVMMDStringInContext();
                    v232 = *a1;
                    strlen(v148);
                    *&v469 = LLVMMDStringInContext();
                    v233 = *a1;
                    *(&v469 + 1) = LLVMMDStringInContext();
                    v234 = *a1;
                    strlen(v474);
                    *&v470 = LLVMMDStringInContext();
                    v235 = *a1;
                  }

                  else
                  {
                    v151 = *a1;
                    *&v468 = LLVMMDStringInContext();
                    v152 = *(v145 + 4);
                    if (v152 > 7)
                    {
                      v223 = *(a1 + 40);
                      v153 = LLVMConstInt();
                      v154 = v456;
                    }

                    else
                    {
                      v153 = *(v87 + 8 * v152);
                      v154 = v456;
                      if (!v153)
                      {
                        v155 = *(a1 + 40);
                        v153 = LLVMConstInt();
                        *(v87 + 8 * v152) = v153;
                      }
                    }

                    *(&v468 + 1) = v153;
                    v224 = *a1;
                    strlen(v154);
                    *&v469 = LLVMMDStringInContext();
                    v225 = *a1;
                    strlen(v148);
                    *(&v469 + 1) = LLVMMDStringInContext();
                    v226 = *a1;
                    *&v470 = LLVMMDStringInContext();
                    v227 = *a1;
                    strlen(v474);
                    *(&v470 + 1) = LLVMMDStringInContext();
                    v228 = *a1;
                  }

                  goto LABEL_240;
                }

                v195 = glpLayoutObjectFind(*(v90 + 8), 45);
                v196 = *a1;
              }

              else
              {
                if (v113 != 14)
                {
                  if (v113 != 16)
                  {
                    if (v113 == 22)
                    {
                      v114 = *a1;
                      goto LABEL_224;
                    }

LABEL_241:
                    *&v464[8 * v86++] = v102;
                    goto LABEL_242;
                  }

                  v194 = *a1;
LABEL_224:
                  *(&v467 + 1) = LLVMMDStringInContext();
                  v207 = *a1;
                  *&v468 = LLVMMDStringInContext();
                  v208 = *a1;
                  strlen(v474);
                  *(&v468 + 1) = LLVMMDStringInContext();
                  v209 = *a1;
                  goto LABEL_240;
                }

                v195 = glpLayoutObjectFind(*(v90 + 8), 43);
                v198 = *a1;
              }

              *(&v467 + 1) = LLVMMDStringInContext();
              v199 = *(v195 + 4);
              if (v199 > 7)
              {
                v202 = *(a1 + 40);
                v200 = LLVMConstInt();
              }

              else
              {
                v200 = *(v87 + 8 * v199);
                if (!v200)
                {
                  v201 = *(a1 + 40);
                  v200 = LLVMConstInt();
                  *(v87 + 8 * v199) = v200;
                }
              }

              *&v468 = v200;
              v203 = *a1;
              *(&v468 + 1) = LLVMMDStringInContext();
              v204 = *a1;
              strlen(v474);
              *&v469 = LLVMMDStringInContext();
              v205 = *a1;
              goto LABEL_240;
            }

            if (v113 > 2)
            {
              switch(v113)
              {
                case 3:
                  v197 = *a1;
                  break;
                case 11:
                  v193 = *a1;
                  break;
                case 12:
                  v118 = *a1;
                  break;
                default:
                  goto LABEL_241;
              }

              goto LABEL_224;
            }

            if (v113 != 1)
            {
              if (v113 != 2)
              {
                goto LABEL_241;
              }

              v182 = *a1;
              goto LABEL_224;
            }

            v187 = *a1;
            *(&v467 + 1) = LLVMMDStringInContext();
            v188 = *a1;
            *&v468 = LLVMMDStringInContext();
            v189 = *a1;
            *(&v468 + 1) = LLVMMDStringInContext();
            v190 = *a1;
            *&v469 = LLVMMDStringInContext();
            v191 = *a1;
            strlen(v474);
            *(&v469 + 1) = LLVMMDStringInContext();
            v192 = *a1;
LABEL_240:
            v102 = LLVMMDNodeInContext();
            goto LABEL_241;
          }
        }

        else if (!v92)
        {
          v97 = *(a1 + 832);
          if (*(v91 + 4) == 28)
          {
            if ((v97 & 1) == 0)
            {
              v98 = glpLayoutObjectFind(*(v90 + 8), 35);
              memset(v474, 0, 32);
              if (v86 > 7)
              {
                v156 = *(a1 + 40);
                v99 = LLVMConstInt();
              }

              else
              {
                v99 = *(v87 + 8 * v86);
                if (!v99)
                {
                  v100 = *(a1 + 40);
                  v99 = LLVMConstInt();
                  *(v87 + 8 * v86) = v99;
                }
              }

              *&v474[0] = v99;
              v157 = *a1;
              *(&v474[0] + 1) = LLVMMDStringInContext();
              v158 = *a1;
              *&v474[1] = LLVMMDStringInContext();
              v159 = *(v98 + 4);
              if (v159 > 7)
              {
                v168 = *(a1 + 40);
                v160 = LLVMConstInt();
              }

              else
              {
                v160 = *(v87 + 8 * v159);
                if (!v160)
                {
                  v161 = *(a1 + 40);
                  v160 = LLVMConstInt();
                  *(v87 + 8 * v159) = v160;
                }
              }

              *(&v474[1] + 1) = v160;
              v169 = *a1;
              goto LABEL_230;
            }

            v115 = glpPrecisionIndexFromSAFlags(*(v90 + 48));
            v501 = 0u;
            v502 = 0u;
            v499 = 0u;
            v500 = 0u;
            v497 = 0u;
            v498 = 0u;
            v495 = 0u;
            v496 = 0u;
            v493 = 0u;
            v494 = 0u;
            v491 = 0u;
            v492 = 0u;
            v489 = 0u;
            v490 = 0u;
            v487 = 0u;
            v488 = 0u;
            v485 = 0u;
            v486 = 0u;
            v483 = 0u;
            v484 = 0u;
            v481 = 0u;
            v482 = 0u;
            v479 = 0u;
            v480 = 0u;
            v477 = 0u;
            v478 = 0u;
            v475 = 0u;
            v476 = 0u;
            memset(v474, 0, sizeof(v474));
            glpMetalGetArgTypeNameFromASTType(v474, *v90, v115, 0);
            v472 = 0u;
            v473 = 0u;
            snprintf(&v472, 0x1FuLL, "attrib%d", v462);
            v471 = 0;
            v469 = 0u;
            v470 = 0u;
            v467 = 0u;
            v468 = 0u;
            if (v86 > 7)
            {
              v162 = *(a1 + 40);
              v116 = LLVMConstInt();
            }

            else
            {
              v116 = *(v87 + 8 * v86);
              if (!v116)
              {
                v117 = *(a1 + 40);
                v116 = LLVMConstInt();
                *(v87 + 8 * v86) = v116;
              }
            }

            *&v467 = v116;
            v163 = *a1;
            *(&v467 + 1) = LLVMMDStringInContext();
            v164 = *a1;
            *&v468 = LLVMMDStringInContext();
            if (v462 > 7)
            {
              v170 = *(a1 + 40);
              v165 = LLVMConstInt();
            }

            else
            {
              v165 = *(v87 + 8 * v462);
              if (!v165)
              {
                v166 = v462;
                v167 = *(a1 + 40);
                v165 = LLVMConstInt();
                *(v87 + 8 * v166) = v165;
              }
            }

            *(&v468 + 1) = v165;
            v171 = *(a1 + 528);
            if (!v171)
            {
              v172 = *(a1 + 40);
              v171 = LLVMConstInt();
              *(a1 + 528) = v171;
            }

            *&v469 = v171;
            v173 = *a1;
            *(&v469 + 1) = LLVMMDStringInContext();
            v174 = *a1;
            strlen(v474);
            *&v470 = LLVMMDStringInContext();
            v175 = *a1;
            *(&v470 + 1) = LLVMMDStringInContext();
            v176 = *a1;
            strlen(&v472);
            v471 = LLVMMDStringInContext();
            v177 = *a1;
            *&v464[8 * v86] = LLVMMDNodeInContext();
            v178 = v86 + 1;
            v462 = (v462 + 1);
LABEL_231:
            v86 = v178;
            goto LABEL_242;
          }

          if (v97)
          {
            v108 = glpPrecisionIndexFromSAFlags(*(v90 + 48));
            v501 = 0u;
            v502 = 0u;
            v499 = 0u;
            v500 = 0u;
            v497 = 0u;
            v498 = 0u;
            v495 = 0u;
            v496 = 0u;
            v493 = 0u;
            v494 = 0u;
            v491 = 0u;
            v492 = 0u;
            v489 = 0u;
            v490 = 0u;
            v487 = 0u;
            v488 = 0u;
            v485 = 0u;
            v486 = 0u;
            v483 = 0u;
            v484 = 0u;
            v481 = 0u;
            v482 = 0u;
            v479 = 0u;
            v480 = 0u;
            v477 = 0u;
            v478 = 0u;
            v475 = 0u;
            v476 = 0u;
            memset(v474, 0, sizeof(v474));
            glpMetalGetArgTypeNameFromASTType(v474, *v90, v108, 1);
            v109 = *(v96 + 4);
            if (v109 == 18)
            {
              v467 = 0u;
              v468 = 0u;
              if (v86 > 7)
              {
                v213 = *(a1 + 40);
                v183 = LLVMConstInt();
              }

              else
              {
                v183 = *(v87 + 8 * v86);
                if (!v183)
                {
                  v184 = *(a1 + 40);
                  v183 = LLVMConstInt();
                  *(v87 + 8 * v86) = v183;
                }
              }

              *&v467 = v183;
              v214 = *a1;
              v212 = v457;
LABEL_229:
              strlen(v212);
              *(&v467 + 1) = LLVMMDStringInContext();
              v215 = *a1;
              *&v468 = LLVMMDStringInContext();
              v216 = *a1;
              strlen(v474);
              *(&v468 + 1) = LLVMMDStringInContext();
              v217 = *a1;
LABEL_230:
              *&v464[8 * v86] = LLVMMDNodeInContext();
              v178 = v86 + 1;
              goto LABEL_231;
            }

            if (v109 == 17)
            {
              v467 = 0u;
              v468 = 0u;
              if (v86 > 7)
              {
                v210 = *(a1 + 40);
                v110 = LLVMConstInt();
              }

              else
              {
                v110 = *(v87 + 8 * v86);
                if (!v110)
                {
                  v111 = *(a1 + 40);
                  v110 = LLVMConstInt();
                  *(v87 + 8 * v86) = v110;
                }
              }

              *&v467 = v110;
              v211 = *a1;
              v212 = v458;
              goto LABEL_229;
            }
          }
        }

LABEL_242:
        v85 += 8;
        if (v89 == v85)
        {
          if (*(a1 + 804))
          {
            v474[0] = 0uLL;
            if (v86 > 7)
            {
              v238 = *(a1 + 40);
              v236 = LLVMConstInt();
              v76 = v465;
              LODWORD(v28) = v466;
            }

            else
            {
              v76 = v465;
              LODWORD(v28) = v466;
LABEL_259:
              v236 = *(a1 + 520 + 8 * v86);
              if (!v236)
              {
                v237 = *(a1 + 40);
                v236 = LLVMConstInt();
                *(a1 + 520 + 8 * v86) = v236;
              }
            }

            *&v474[0] = v236;
            v239 = *a1;
            *(&v474[0] + 1) = LLVMMDStringInContext();
            v240 = *a1;
            *&v464[8 * v86++] = LLVMMDNodeInContext();
          }

          else
          {
            v76 = v465;
            LODWORD(v28) = v466;
          }

          if (*(a1 + 812))
          {
            memset(v474, 0, 32);
            if (v86 > 7)
            {
              v241 = *(a1 + 40);
              v242 = LLVMConstInt();
              goto LABEL_271;
            }

LABEL_269:
            v242 = *(a1 + 520 + 8 * v86);
            if (!v242)
            {
              v243 = *(a1 + 40);
              v242 = LLVMConstInt();
              *(a1 + 520 + 8 * v86) = v242;
            }

LABEL_271:
            *&v474[0] = v242;
            v244 = *a1;
            *(&v474[0] + 1) = LLVMMDStringInContext();
            v245 = *a1;
            *&v474[1] = LLVMMDStringInContext();
            v246 = *a1;
            *(&v474[1] + 1) = LLVMMDStringInContext();
            v247 = *a1;
            *&v464[8 * v86++] = LLVMMDNodeInContext();
          }

          if (*(a1 + 820))
          {
            memset(v474, 0, 32);
            if (v86 > 7)
            {
              v250 = *(a1 + 40);
              v248 = LLVMConstInt();
            }

            else
            {
LABEL_274:
              v248 = *(a1 + 520 + 8 * v86);
              if (!v248)
              {
                v249 = *(a1 + 40);
                v248 = LLVMConstInt();
                *(a1 + 520 + 8 * v86) = v248;
              }
            }

            *&v474[0] = v248;
            v251 = *a1;
            *(&v474[0] + 1) = LLVMMDStringInContext();
            v252 = *a1;
            *&v474[1] = LLVMMDStringInContext();
            v253 = *a1;
            *(&v474[1] + 1) = LLVMMDStringInContext();
            v254 = *a1;
            *&v464[8 * v86++] = LLVMMDNodeInContext();
          }

          goto LABEL_278;
        }
      }
    }

    if (*(a1 + 804))
    {
      v86 = 0;
      v474[0] = 0uLL;
      goto LABEL_259;
    }

    if (*(a1 + 812))
    {
      v86 = 0;
      memset(v474, 0, 32);
      goto LABEL_269;
    }

    if (*(a1 + 820))
    {
      v86 = 0;
      memset(v474, 0, 32);
      goto LABEL_274;
    }

    v86 = 0;
LABEL_278:
    if ((*(a1 + 320) | 2) == 3)
    {
      v255 = *(a1 + 692);
      if (v255 >= 1)
      {
        v256 = 0;
        v257 = 8 * v255;
        v258 = &v464[8 * v86];
        do
        {
          *&v258[v256] = glpLLVMVertexGeometryMetadata(a1, *(*(a1 + 696) + v256), v86);
          v256 += 8;
          ++v86;
        }

        while (v257 != v256);
      }
    }

    v259 = *(a1 + 832);
    DefaultUniformLocationCount = glpLinkedProgramGetDefaultUniformLocationCount(*(a1 + 136));
    v261 = 4 * glpLinkedProgramGetSubroutineUniformLocationCount(*(a1 + 136), *(a1 + 320)) + 16 * DefaultUniformLocationCount;
    if (v259)
    {
      memset(v474, 0, sizeof(v474));
      if (v86 > 7)
      {
        v271 = *(a1 + 40);
        v264 = LLVMConstInt();
      }

      else
      {
        v264 = *(a1 + 520 + 8 * v86);
        if (!v264)
        {
          v265 = *(a1 + 40);
          v264 = LLVMConstInt();
          *(a1 + 520 + 8 * v86) = v264;
        }
      }

      *&v474[0] = v264;
      v272 = *a1;
      *(&v474[0] + 1) = LLVMMDStringInContext();
      v273 = *a1;
      *&v474[1] = LLVMMDStringInContext();
      if (v261 > 7)
      {
        v278 = *(a1 + 40);
        v274 = LLVMConstInt();
      }

      else
      {
        v274 = *(a1 + 520 + 8 * v261);
        if (!v274)
        {
          v275 = *(a1 + 40);
          v274 = LLVMConstInt();
          *(a1 + 520 + 8 * v261) = v274;
        }
      }

      *(&v474[1] + 1) = v274;
      v279 = *a1;
      *&v474[2] = LLVMMDStringInContext();
      v280 = *(a1 + 40);
      *(&v474[2] + 1) = LLVMConstInt();
      v281 = *(a1 + 528);
      if (!v281)
      {
        v282 = *(a1 + 40);
        v281 = LLVMConstInt();
        *(a1 + 528) = v281;
      }

      *&v474[3] = v281;
      v283 = *a1;
      *(&v474[3] + 1) = LLVMMDStringInContext();
      v284 = *a1;
    }

    else
    {
      memset(v474, 0, 32);
      if (v86 > 7)
      {
        v266 = *(a1 + 40);
        v262 = LLVMConstInt();
      }

      else
      {
        v262 = *(a1 + 520 + 8 * v86);
        if (!v262)
        {
          v263 = *(a1 + 40);
          v262 = LLVMConstInt();
          *(a1 + 520 + 8 * v86) = v262;
        }
      }

      *&v474[0] = v262;
      v267 = *a1;
      *(&v474[0] + 1) = LLVMMDStringInContext();
      v268 = *a1;
      *&v474[1] = LLVMMDStringInContext();
      if (v261 > 7)
      {
        v276 = *(a1 + 40);
        v269 = LLVMConstInt();
      }

      else
      {
        v269 = *(a1 + 520 + 8 * v261);
        if (!v269)
        {
          v270 = *(a1 + 40);
          v269 = LLVMConstInt();
          *(a1 + 520 + 8 * v261) = v269;
        }
      }

      *(&v474[1] + 1) = v269;
      v277 = *a1;
    }

    *&v464[8 * v86] = LLVMMDNodeInContext();
    if (*(a1 + 832))
    {
      *(a1 + 824) = v76;
      if (!v76)
      {
        v286 = v86 + 1;
LABEL_341:
        if (v28 >= 1)
        {
          v331 = 0;
          v332 = v28;
          v333 = &v464[8 * v286];
          v334 = a1 + 520;
          v335 = a1 + 520 + 8 * v286;
          v465 = v286;
          do
          {
            v336 = v286 + v331;
            v337 = *(*(a1 + 728) + 8 * v331);
            if (*(a1 + 832))
            {
              memset(v474, 0, 48);
              if (v336 > 7)
              {
                v349 = *(a1 + 40);
                v340 = LLVMConstInt();
              }

              else
              {
                v340 = *(v335 + 8 * v331);
                if (!v340)
                {
                  v341 = *(a1 + 40);
                  v340 = LLVMConstInt();
                  *(v335 + 8 * v331) = v340;
                }
              }

              *&v474[0] = v340;
              v350 = *a1;
              *(&v474[0] + 1) = LLVMMDStringInContext();
              v351 = *a1;
              *&v474[1] = LLVMMDStringInContext();
              v352 = *v337 + 32;
              if (v352 > 7)
              {
                v362 = *(a1 + 40);
                v353 = LLVMConstInt();
              }

              else
              {
                v353 = *(v334 + 8 * v352);
                if (!v353)
                {
                  v354 = v352;
                  v355 = *(a1 + 40);
                  v353 = LLVMConstInt();
                  *(v334 + 8 * v354) = v353;
                }
              }

              *(&v474[1] + 1) = v353;
              v363 = *(a1 + 528);
              if (!v363)
              {
                v364 = *(a1 + 40);
                v363 = LLVMConstInt();
                *(a1 + 528) = v363;
              }

              *&v474[2] = v363;
              v365 = *a1;
              *(&v474[2] + 1) = LLVMMDStringInContext();
              v366 = *a1;
            }

            else
            {
              memset(v474, 0, sizeof(v474));
              if (v336 > 7)
              {
                v342 = *(a1 + 40);
                v338 = LLVMConstInt();
              }

              else
              {
                v338 = *(v335 + 8 * v331);
                if (!v338)
                {
                  v339 = *(a1 + 40);
                  v338 = LLVMConstInt();
                  *(v335 + 8 * v331) = v338;
                }
              }

              *&v474[0] = v338;
              v343 = *a1;
              *(&v474[0] + 1) = LLVMMDStringInContext();
              v344 = *a1;
              *&v474[1] = LLVMMDStringInContext();
              v345 = *v337;
              if (v345 > 7)
              {
                v356 = *(a1 + 40);
                v346 = LLVMConstInt();
              }

              else
              {
                v346 = *(v334 + 8 * v345);
                if (!v346)
                {
                  v347 = *(a1 + 40);
                  v348 = *v337;
                  v346 = LLVMConstInt();
                  *(v334 + 8 * v345) = v346;
                }
              }

              *(&v474[1] + 1) = v346;
              v357 = *a1;
              *&v474[2] = LLVMMDStringInContext();
              v358 = v337[2];
              if (v358 > 7)
              {
                v367 = *(a1 + 40);
                v359 = LLVMConstInt();
              }

              else
              {
                v359 = *(v334 + 8 * v358);
                if (!v359)
                {
                  v360 = *(a1 + 40);
                  v361 = v337[2];
                  v359 = LLVMConstInt();
                  *(v334 + 8 * v358) = v359;
                }
              }

              *(&v474[2] + 1) = v359;
              v368 = *a1;
              *&v474[3] = LLVMMDStringInContext();
              v369 = v337[1];
              if (v369 > 7)
              {
                v373 = *(a1 + 40);
                v370 = LLVMConstInt();
              }

              else
              {
                v370 = *(v334 + 8 * v369);
                if (!v370)
                {
                  v371 = *(a1 + 40);
                  v372 = v337[1];
                  v370 = LLVMConstInt();
                  *(v334 + 8 * v369) = v370;
                }
              }

              *(&v474[3] + 1) = v370;
              v374 = *a1;
            }

            *&v333[8 * v331++] = LLVMMDNodeInContext();
          }

          while (v332 != v331);
          LODWORD(v286) = v465 + v331;
        }

        v375 = v463;
        if ((v461 & 1) == 0)
        {
          v474[2] = 0uLL;
          if (v286 > 7)
          {
            v378 = *(a1 + 40);
            v376 = LLVMConstInt();
          }

          else
          {
            v376 = *(a1 + 520 + 8 * v286);
            if (!v376)
            {
              v377 = *(a1 + 40);
              v376 = LLVMConstInt();
              *(a1 + 520 + 8 * v286) = v376;
            }
          }

          *&v474[0] = v376;
          v379 = *a1;
          *(&v474[0] + 1) = LLVMMDStringInContext();
          v380 = *a1;
          *&v474[1] = LLVMMDStringInContext();
          v381 = *(a1 + 40);
          *(&v474[1] + 1) = LLVMConstInt();
          v382 = *(a1 + 528);
          if (!v382)
          {
            v383 = *(a1 + 40);
            v382 = LLVMConstInt();
            *(a1 + 528) = v382;
          }

          *&v474[2] = v382;
          v384 = *a1;
          *(&v474[2] + 1) = LLVMMDStringInContext();
          v385 = *a1;
          *&v464[8 * v286] = LLVMMDNodeInContext();
          LODWORD(v286) = v286 + 1;
        }

        if ((*(a1 + 832) & 1) == 0)
        {
LABEL_386:
          if (v375 >= 1)
          {
            v387 = 0;
            v388 = 0;
            v389 = v286;
            v390 = v375;
            v391 = v286 + v375;
            v462 = &v464[8 * v391];
            v463 = v391;
            v392 = "air.binding";
            v393 = "air.sampler";
            v461 = &v464[8 * v286];
            v458 = a1 + 520 + 8 * v286;
            v459 = (a1 + 520 + 8 * v391);
            v394 = a1 + 520;
            v456 = v390;
            v457 = v389;
            do
            {
              v395 = &v389[v388];
              v396 = &v387[*(a1 + 600)];
              v466 = *(v396 + 10);
              v465 = v466;
              if (*(a1 + 832))
              {
                v460 = v387;
                v399 = v393;
                v400 = v392;
                v501 = 0u;
                v502 = 0u;
                v499 = 0u;
                v500 = 0u;
                v497 = 0u;
                v498 = 0u;
                v495 = 0u;
                v496 = 0u;
                v493 = 0u;
                v494 = 0u;
                v491 = 0u;
                v492 = 0u;
                v489 = 0u;
                v490 = 0u;
                v487 = 0u;
                v488 = 0u;
                v485 = 0u;
                v486 = 0u;
                v483 = 0u;
                v484 = 0u;
                v481 = 0u;
                v482 = 0u;
                v479 = 0u;
                v480 = 0u;
                v477 = 0u;
                v478 = 0u;
                v475 = 0u;
                v476 = 0u;
                memset(v474, 0, sizeof(v474));
                v401 = *(v396 + 9);
                PPTextarget = glpPrimitiveSamplerGetPPTextarget(v401);
                if (PPTextarget >= 0x12)
                {
                  goto LABEL_444;
                }

                v403 = (&off_278B4DE18)[PPTextarget];
                PPDatatype = glpPrimitiveSamplerGetPPDatatype(v401);
                if (PPDatatype)
                {
                  if (PPDatatype == 3)
                  {
                    v405 = "uint";
                  }

                  else
                  {
                    if (PPDatatype != 2)
                    {
                      goto LABEL_444;
                    }

                    v405 = "int";
                  }
                }

                else
                {
                  v405 = "float";
                }

                v414 = glpPrimitiveSamplerGetPPTextarget(v401);
                if (v414 >= 0x12)
                {
                  printf("Unsupported PP_TEX_TARGET: %d\n", v414);
                  abort();
                }

                snprintf_l(v474, 0x200uLL, 0, "%s<%s, %s>", v403, v405, (&off_278B4DEA8)[v414]);
                *(*(a1 + 512) + 4 * v388) = v466;
                v469 = 0u;
                v470 = 0u;
                v467 = 0u;
                v468 = 0u;
                if (v395 > 7)
                {
                  v417 = *(a1 + 40);
                  v415 = LLVMConstInt();
                  v390 = v456;
                  v389 = v457;
                  v392 = v400;
                }

                else
                {
                  v389 = v457;
                  v415 = *(v458 + 8 * v388);
                  v390 = v456;
                  v392 = v400;
                  if (!v415)
                  {
                    v416 = *(a1 + 40);
                    v415 = LLVMConstInt();
                    *(v458 + 8 * v388) = v415;
                  }
                }

                *&v467 = v415;
                v418 = *a1;
                *(&v467 + 1) = LLVMMDStringInContext();
                v419 = *a1;
                *&v468 = LLVMMDStringInContext();
                v393 = v399;
                if (v388 > 7)
                {
                  v422 = *(a1 + 40);
                  v420 = LLVMConstInt();
                  v387 = v460;
                }

                else
                {
                  v420 = *(v394 + 8 * v388);
                  v387 = v460;
                  if (!v420)
                  {
                    v421 = *(a1 + 40);
                    v420 = LLVMConstInt();
                    *(v394 + 8 * v388) = v420;
                  }
                }

                *(&v468 + 1) = v420;
                v423 = *(a1 + 528);
                if (!v423)
                {
                  v424 = *(a1 + 40);
                  v423 = LLVMConstInt();
                  *(a1 + 528) = v423;
                }

                *&v469 = v423;
                v425 = *a1;
                *(&v469 + 1) = LLVMMDStringInContext();
                v426 = *a1;
                *&v470 = LLVMMDStringInContext();
                v427 = *a1;
                strlen(v474);
                *(&v470 + 1) = LLVMMDStringInContext();
                v428 = *a1;
                *&v461[8 * v388] = LLVMMDNodeInContext();
                v409 = v466;
              }

              else
              {
                memset(v474, 0, 32);
                if (v395 > 7)
                {
                  v406 = *(a1 + 40);
                  v397 = LLVMConstInt();
                }

                else
                {
                  v397 = *(v458 + 8 * v388);
                  if (!v397)
                  {
                    v398 = *(a1 + 40);
                    v397 = LLVMConstInt();
                    *(v458 + 8 * v388) = v397;
                  }
                }

                *&v474[0] = v397;
                v407 = *a1;
                *(&v474[0] + 1) = LLVMMDStringInContext();
                v408 = *a1;
                *&v474[1] = LLVMMDStringInContext();
                v409 = v466;
                if (v466 > 7)
                {
                  v412 = *(a1 + 40);
                  v410 = LLVMConstInt();
                }

                else
                {
                  v410 = *(v394 + 8 * v466);
                  if (!v410)
                  {
                    v411 = *(a1 + 40);
                    v410 = LLVMConstInt();
                    *(v394 + 8 * v409) = v410;
                  }
                }

                *(&v474[1] + 1) = v410;
                v413 = *a1;
                *&v461[8 * v388] = LLVMMDNodeInContext();
              }

              v429 = v463 + v388;
              if (*(a1 + 832))
              {
                memset(v474, 0, 40);
                if (v429 > 7)
                {
                  v439 = *(a1 + 40);
                  v432 = LLVMConstInt();
                }

                else
                {
                  v432 = v459[v388];
                  if (!v432)
                  {
                    v433 = *(a1 + 40);
                    v432 = LLVMConstInt();
                    v459[v388] = v432;
                  }
                }

                *&v474[0] = v432;
                v440 = *a1;
                *(&v474[0] + 1) = LLVMMDStringInContext();
                v441 = *a1;
                *&v474[1] = LLVMMDStringInContext();
                if (v388 > 7)
                {
                  v446 = *(a1 + 40);
                  v442 = LLVMConstInt();
                }

                else
                {
                  v442 = *(v394 + 8 * v388);
                  if (!v442)
                  {
                    v443 = *(a1 + 40);
                    v442 = LLVMConstInt();
                    *(v394 + 8 * v388) = v442;
                  }
                }

                *(&v474[1] + 1) = v442;
                v447 = *(a1 + 528);
                if (!v447)
                {
                  v448 = *(a1 + 40);
                  v447 = LLVMConstInt();
                  *(a1 + 528) = v447;
                }

                *&v474[2] = v447;
                v449 = *a1;
              }

              else
              {
                memset(v474, 0, 32);
                if (v429 > 7)
                {
                  v434 = *(a1 + 40);
                  v430 = LLVMConstInt();
                }

                else
                {
                  v430 = v459[v388];
                  if (!v430)
                  {
                    v431 = *(a1 + 40);
                    v430 = LLVMConstInt();
                    v459[v388] = v430;
                  }
                }

                *&v474[0] = v430;
                v435 = *a1;
                *(&v474[0] + 1) = LLVMMDStringInContext();
                v436 = *a1;
                *&v474[1] = LLVMMDStringInContext();
                if (v409 > 7)
                {
                  v444 = *(a1 + 40);
                  v437 = LLVMConstInt();
                }

                else
                {
                  v437 = *(v394 + 8 * v409);
                  if (!v437)
                  {
                    v438 = *(a1 + 40);
                    v437 = LLVMConstInt();
                    *(v394 + 8 * v409) = v437;
                  }
                }

                *(&v474[1] + 1) = v437;
                v445 = *a1;
              }

              *(v462 + 8 * v388++) = LLVMMDNodeInContext();
              v387 += 48;
            }

            while (v390 != v388);
          }

          goto LABEL_439;
        }

        *(a1 + 828) = v375;
        if (!v375)
        {
LABEL_439:
          v450 = *a1;
          *(a1 + 192) = LLVMMDNodeInContext();
          result = v455;
          goto LABEL_440;
        }

        v386 = malloc_type_malloc(4 * v375, 0x75808E6AuLL);
        if (v386)
        {
          *(a1 + 512) = v386;
          bzero(v386, 4 * v375);
          goto LABEL_386;
        }

LABEL_444:
        abort();
      }

      v285 = malloc_type_malloc(4 * v76, 0x75808E6AuLL);
      if (!v285)
      {
        goto LABEL_444;
      }

      *(a1 + 504) = v285;
      bzero(v285, 4 * v76);
    }

    v286 = v86 + 1;
    if (v76 >= 1)
    {
      v287 = 0;
      v288 = v76;
      v289 = &v464[8 * v286];
      v290 = a1 + 520;
      v291 = v286;
      v292 = a1 + 520 + 8 * v286;
      v465 = v291;
      v293 = v291;
      do
      {
        v294 = v293 + v287;
        v295 = *(*(a1 + 712) + 8 * v287);
        if (*(a1 + 832))
        {
          *(*(a1 + 504) + 4 * v287) = *v295;
          memset(v474, 0, sizeof(v474));
          if (v294 > 7)
          {
            v307 = *(a1 + 40);
            v298 = LLVMConstInt();
          }

          else
          {
            v298 = *(v292 + 8 * v287);
            if (!v298)
            {
              v299 = *(a1 + 40);
              v298 = LLVMConstInt();
              *(v292 + 8 * v287) = v298;
            }
          }

          *&v474[0] = v298;
          v308 = *a1;
          *(&v474[0] + 1) = LLVMMDStringInContext();
          v309 = *a1;
          *&v474[1] = LLVMMDStringInContext();
          v310 = v295[1];
          if (v310 > 7)
          {
            v320 = *(a1 + 40);
            v311 = LLVMConstInt();
          }

          else
          {
            v311 = *(v290 + 8 * v310);
            if (!v311)
            {
              v312 = *(a1 + 40);
              v313 = v295[1];
              v311 = LLVMConstInt();
              *(v290 + 8 * v310) = v311;
            }
          }

          *(&v474[1] + 1) = v311;
          v321 = *a1;
          *&v474[2] = LLVMMDStringInContext();
          if (v287 > 7)
          {
            v326 = *(a1 + 40);
            v322 = LLVMConstInt();
          }

          else
          {
            v322 = *(v290 + 8 * v287);
            if (!v322)
            {
              v323 = *(a1 + 40);
              v322 = LLVMConstInt();
              *(v290 + 8 * v287) = v322;
            }
          }

          *(&v474[2] + 1) = v322;
          v327 = *(a1 + 528);
          if (!v327)
          {
            v328 = *(a1 + 40);
            v327 = LLVMConstInt();
            *(a1 + 528) = v327;
          }

          *&v474[3] = v327;
          v329 = *a1;
          *(&v474[3] + 1) = LLVMMDStringInContext();
          v330 = *a1;
        }

        else
        {
          memset(v474, 0, 48);
          if (v294 > 7)
          {
            v300 = *(a1 + 40);
            v296 = LLVMConstInt();
          }

          else
          {
            v296 = *(v292 + 8 * v287);
            if (!v296)
            {
              v297 = *(a1 + 40);
              v296 = LLVMConstInt();
              *(v292 + 8 * v287) = v296;
            }
          }

          *&v474[0] = v296;
          v301 = *a1;
          *(&v474[0] + 1) = LLVMMDStringInContext();
          v302 = *a1;
          *&v474[1] = LLVMMDStringInContext();
          v303 = *v295;
          if (v303 > 7)
          {
            v314 = *(a1 + 40);
            v304 = LLVMConstInt();
          }

          else
          {
            v304 = *(v290 + 8 * v303);
            if (!v304)
            {
              v305 = *(a1 + 40);
              v306 = *v295;
              v304 = LLVMConstInt();
              *(v290 + 8 * v303) = v304;
            }
          }

          *(&v474[1] + 1) = v304;
          v315 = *a1;
          *&v474[2] = LLVMMDStringInContext();
          v316 = v295[1];
          if (v316 > 7)
          {
            v324 = *(a1 + 40);
            v317 = LLVMConstInt();
          }

          else
          {
            v317 = *(v290 + 8 * v316);
            if (!v317)
            {
              v318 = *(a1 + 40);
              v319 = v295[1];
              v317 = LLVMConstInt();
              *(v290 + 8 * v316) = v317;
            }
          }

          *(&v474[2] + 1) = v317;
          v325 = *a1;
        }

        *&v289[8 * v287++] = LLVMMDNodeInContext();
      }

      while (v288 != v287);
      LODWORD(v28) = v466;
      v286 = (v465 + v287);
    }

    goto LABEL_341;
  }

  v41 = v37;
  v42 = Extra;
  LODWORD(v458) = v25;
  v43 = strndup(v39, v38);
  v44 = v39;
  v45 = v35;
  v456 = v38;
  v457 = v44;
  if (v35)
  {
    v46 = 0;
    v47 = v458;
    v48 = v459;
  }

  else
  {
    v48 = v459;
    v46 = *v459;
    v47 = v458;
  }

  glpLLVMBuildFunctionType(a1, v46, v35, v41, v47, *(v48 + 2));
  v49 = *(a1 + 8);
  v455 = LLVMAddFunction();
  glpLLVMAddFunctionAttrInner(a1, v455, 1);
  v51 = v465;
  if ((*(v42 + 10) & 0x10) != 0)
  {
    v52 = (*(*(a1 + 152) + 8))(**(a1 + 152), 24, "subroutine");
    v52[1] = 0;
    v52[2] = 0;
    *v52 = 0;
    *v52 = v42;
    *(v52 + 4) = *(v42 + 160);
    v52[1] = v455;
    v53 = *(a1 + 628);
    v54 = *(a1 + 624);
    if (v53 + 1 <= v54)
    {
      v60 = *(a1 + 632);
      v61 = *(a1 + 628);
    }

    else
    {
      if (v54 <= 1)
      {
        v54 = 1;
      }

      v55 = 2 * v54;
      if (v55 <= v53 + 1)
      {
        v55 = v53 + 1;
      }

      v56 = *(a1 + 152);
      v57 = *v56;
      v58 = v56[1];
      v459 = v43;
      v59 = v55;
      v60 = v58(v57, 8 * v55, "Vector Storage (GLPLLVMSubroutineFunction *, growth)");
      memcpy(v60, *(a1 + 632), 8 * *(a1 + 628));
      (v56[3])(*v56, *(a1 + 632));
      *(a1 + 624) = v59;
      v43 = v459;
      *(a1 + 632) = v60;
      v61 = *(a1 + 628);
    }

    memmove(&v60[8 * v53 + 8], &v60[8 * v53], 8 * (v61 - v53));
    *(*(a1 + 632) + 8 * v53) = v52;
    ++*(a1 + 628);
  }

  if (v464)
  {
    v63 = v462 + 1;
    v62 = LLVMGetParam();
  }

  else
  {
    v62 = 0;
    v63 = v462;
  }

  LODWORD(v459) = v45;
  *(a1 + 440) = v62;
  if (v51 < 1)
  {
    v67 = v63;
  }

  else
  {
    v64 = 0;
    v65 = 8 * v51;
    do
    {
      v66 = *(*(a1 + 712) + v64);
      v67 = v63 + 1;
      *(v66 + 8) = LLVMGetParam();
      v64 += 8;
      ++v63;
    }

    while (v65 != v64);
  }

  if (v466 >= 1)
  {
    v68 = 0;
    v69 = 8 * v466;
    do
    {
      v70 = *(*(a1 + 728) + v68);
      *(v70 + 16) = LLVMGetParam();
      v68 += 8;
      ++v67;
    }

    while (v69 != v68);
  }

  if ((v461 & 1) == 0)
  {
    *(a1 + 448) = LLVMGetParam();
  }

  v71 = v455;
  if (v463 >= 1)
  {
    v72 = 0;
    v73 = v463;
    v74 = 8;
    do
    {
      v75 = (*(a1 + 600) + v74);
      *(v75 - 1) = LLVMGetParam();
      *v75 = LLVMGetParam();
      ++v72;
      v74 += 48;
    }

    while (v73 != v72);
  }

  glpStringHashPut(*(a1 + 736), v457, v456, v71, v50);
  free(v43);
  result = v71;
  LODWORD(v36) = v463;
  LODWORD(v28) = v466;
  if (v459)
  {
    goto LABEL_97;
  }

LABEL_440:
  v451 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMCGVariableDeclarationGroup(uint64_t a1, uint64_t a2)
{
  result = glpVariableDeclarationGroupNodeGetDeclarationCount(a2);
  if (result)
  {
    v5 = 0;
    do
    {
      Declaration = glpVariableDeclarationGroupNodeGetDeclaration(a2, v5);
      glpLLVMCGNode(a1, Declaration, 1);
      ++v5;
      result = glpVariableDeclarationGroupNodeGetDeclarationCount(a2);
    }

    while (v5 < result);
  }

  return result;
}

llvm::Function *glpLLVMCGFunctionDefinition(uint64_t a1, uint64_t a2)
{
  v137[1] = *MEMORY[0x277D85DE8];
  Prototype = glpFunctionDefinitionNodeGetPrototype(a2);
  Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
  if ((*(Extra + 9) & 0x20) != 0)
  {
    v7 = 0;
  }

  else
  {
    v6 = Extra;
    v7 = glpLLVMCGNode(a1, Prototype, 0);
    *(v6 + 144) = v7;
    *(a1 + 432) = 0;
    *(a1 + 160) = v7;
    *(a1 + 336) = **(v6 + 152);
    v8 = *a1;
    v9 = LLVMCreateBuilderInContext();
    *(a1 + 16) = v9;
    glpLLVMSetFastMathFlags(v9, *(a1 + 326), (*(a1 + 832) >> 5) & 1);
    Body = glpFunctionDefinitionNodeGetBody(a2);
    v10 = *(a1 + 160);
    *(a1 + 176) = LLVMAppendBasicBlock();
    v11 = *(a1 + 160);
    *(a1 + 184) = LLVMAppendBasicBlock();
    v12 = *(a1 + 160);
    LLVMAppendBasicBlock();
    v13 = *(a1 + 16);
    LLVMPositionBuilderAtEnd();
    if (*(a1 + 24))
    {
      Name = glpFunctionPrototypeNodeGetName(Prototype);
      v16 = strndup(Name, v15);
      glpLLVMDIBuilderCreateSubProgram(*(a1 + 24), v7, v16);
      glpLLVMAddLineInformation(a1, a2);
      free(v16);
    }

    v17 = glpFunctionPrototypeNodeGetName(Prototype);
    *(a1 + 324) = glpStringsEqual(v17, v18, "main", 0x83863A00000004);
    *(a1 + 344) = glpMakePointerHash(GLP_MALLOC_ALLOCATOR);
    *(a1 + 352) = glpMakePointerHash(GLP_MALLOC_ALLOCATOR);
    if (*(a1 + 324))
    {
      v19 = *(a1 + 676);
      if (v19 >= 1)
      {
        v99 = v7;
        v20 = 0;
        v21 = 0;
        v22 = 8 * v19;
        v102 = 0;
        v103 = 8 * v19;
        while (1)
        {
          v23 = *(*(a1 + 680) + v20);
          v24 = *(a1 + 320);
          if ((v24 - 1) >= 3)
          {
            if (v24 == 4)
            {
              v45 = glpLayoutObjectFind(*(v23 + 8), 34);
              v46 = glpPrecisionIndexFromSAFlags(*(v23 + 48));
              v47 = glpTypeToLLVMTypeWithUnderlying(a1, *v23, v46, v23);
              v48 = *(v45 + 4);
              if (v48 > 0x1C)
              {
                goto LABEL_33;
              }

              if (((1 << v48) & 0x8C15800) != 0)
              {
                goto LABEL_34;
              }

              if (v48 == 24)
              {
                v83 = *(a1 + 160);
                v84 = *(a1 + 800);
                v137[0] = LLVMGetParam();
                v85 = MEMORY[0x23EE854F0](*(a1 + 496), 2);
                *__dst = 0x300000001;
                glpLLVMCallFunctionInner(a1, "air.get_sample_position.v2f32", v85, v137, 1u, __dst, 2u, "");
                goto LABEL_36;
              }

              if (v48 == 28)
              {
                if ((*(*(v23 + 144) + 32) & 1) == 0)
                {
                  v49 = *(a1 + 644);
                  v50 = *(a1 + 640);
                  if (v49 + 1 <= v50)
                  {
                    v54 = *(a1 + 648);
                    v55 = *(a1 + 644);
                  }

                  else
                  {
                    if (v50 <= 1)
                    {
                      v50 = 1;
                    }

                    v51 = 2 * v50;
                    if (v51 <= v49 + 1)
                    {
                      v52 = v49 + 1;
                    }

                    else
                    {
                      v52 = v51;
                    }

                    v53 = *(a1 + 152);
                    v54 = (v53[1])(*v53, 8 * v52, "Vector Storage (GLPVariableObject *, growth)");
                    memcpy(v54, *(a1 + 648), 8 * *(a1 + 644));
                    (v53[3])(*v53, *(a1 + 648));
                    *(a1 + 640) = v52;
                    *(a1 + 648) = v54;
                    v55 = *(a1 + 644);
                  }

                  memmove(&v54[8 * v49 + 8], &v54[8 * v49], 8 * (v55 - v49));
                  *(*(a1 + 648) + 8 * v49) = v23;
                  ++*(a1 + 644);
                  *(*(v23 + 144) + 32) |= 1u;
                }

LABEL_34:
                v56 = *(a1 + 160);
                LLVMGetParam();
LABEL_35:
                ++v21;
              }

              else
              {
LABEL_33:
                if (v48 - 2 < 2)
                {
                  goto LABEL_34;
                }

                if (v48 == 1)
                {
                  v77 = glpLayoutObjectFind(*(v23 + 8), 20);
                  v78 = *(a1 + 160);
                  LLVMGetParam();
                  if (v77 && (*(a1 + 832) & 1) != 0)
                  {
                    v79 = *a1;
                    LLVMFloatTypeInContext();
                    v80 = llvm::ConstantFP::get();
                    v81 = *a1;
                    LLVMFloatTypeInContext();
                    *__dst = llvm::ConstantFP::get();
                    *&__dst[8] = *__dst;
                    *&v106 = v80;
                    *(&v106 + 1) = v80;
                    v82 = *(a1 + 16);
                    LLVMConstVector();
                    LLVMBuildFSub();
                  }

                  goto LABEL_35;
                }
              }

LABEL_36:
              glpLLVMGetVariablePointer(a1, v23);
              MEMORY[0x23EE85440](v47, 0);
              v57 = *(a1 + 16);
              LLVMBuildPointerCast();
              v58 = *(a1 + 16);
              LLVMBuildStore();
              v22 = v103;
              goto LABEL_64;
            }

            if (!v24)
            {
              v32 = glpLayoutObjectFind(*(v23 + 8), 34);
              v33 = glpPrecisionIndexFromSAFlags(*(v23 + 48));
              v34 = v33;
              v135 = 0u;
              v136 = 0u;
              v133 = 0u;
              v134 = 0u;
              v131 = 0u;
              v132 = 0u;
              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v125 = 0u;
              v126 = 0u;
              v123 = 0u;
              v124 = 0u;
              v121 = 0u;
              v122 = 0u;
              v119 = 0u;
              v120 = 0u;
              v117 = 0u;
              v118 = 0u;
              v115 = 0u;
              v116 = 0u;
              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              *__dst = 0u;
              v106 = 0u;
              v104 = 0;
              if ((*(*(v23 + 144) + 32) & 1) == 0)
              {
                v101 = v32;
                v35 = v33;
                v36 = *(a1 + 644);
                v37 = *(a1 + 640);
                if (v36 + 1 <= v37)
                {
                  v41 = *(a1 + 648);
                  v44 = *(a1 + 644);
                }

                else
                {
                  if (v37 <= 1)
                  {
                    v37 = 1;
                  }

                  v38 = 2 * v37;
                  if (v38 <= v36 + 1)
                  {
                    v39 = v36 + 1;
                  }

                  else
                  {
                    v39 = v38;
                  }

                  v40 = *(a1 + 152);
                  v41 = (v40[1])(*v40, 8 * v39, "Vector Storage (GLPVariableObject *, growth)");
                  memcpy(v41, *(a1 + 648), 8 * *(a1 + 644));
                  v42 = v40[3];
                  v43 = *v40;
                  v22 = v103;
                  v42(v43, *(a1 + 648));
                  *(a1 + 640) = v39;
                  *(a1 + 648) = v41;
                  v44 = *(a1 + 644);
                }

                memmove(&v41[8 * v36 + 8], &v41[8 * v36], 8 * (v44 - v36));
                *(*(a1 + 648) + 8 * v36) = v23;
                ++*(a1 + 644);
                *(*(v23 + 144) + 32) |= 1u;
                v34 = v35;
                v32 = v101;
              }

              v59 = v34;
              v60 = glpTypeToLLVMTypeWithUnderlying(a1, *v23, v34, v23);
              v61 = *(v32 + 4);
              switch(v61)
              {
                case 17:
                  if ((*(a1 + 832) & 1) == 0)
                  {
                    v69 = v102;
                    if (!v102)
                    {
                      strncpy(__dst, "air.get_vertex_id.i32", 0x200uLL);
                      v69 = 0;
                    }

                    v67 = 0;
                    v68 = *(a1 + 40);
                    if (!v69)
                    {
LABEL_52:
                      v137[0] = 0x400000001;
                      v70 = glpLLVMCallFunctionInner(a1, __dst, v68, &v104, v67, v137, 2u, "");
                      v71 = *(v32 + 4);
                      v72 = v102;
                      if (v71 == 17)
                      {
                        v72 = v70;
                      }

                      v102 = v72;
LABEL_58:
                      if ((v71 - 17) <= 1 && v59 && v59 != 3)
                      {
                        v74 = *(a1 + 16);
                        LLVMBuildTrunc();
                      }

                      glpLLVMGetVariablePointer(a1, v23);
                      MEMORY[0x23EE85440](v60, 0);
                      v75 = *(a1 + 16);
                      LLVMBuildPointerCast();
                      v76 = *(a1 + 16);
LABEL_63:
                      LLVMBuildStore();
                      break;
                    }

LABEL_57:
                    v71 = *(v32 + 4);
                    goto LABEL_58;
                  }

LABEL_55:
                  v73 = *(a1 + 160);
                  v66 = LLVMGetParam();
LABEL_56:
                  ++v21;
                  v67 = 1;
                  v68 = v60;
                  if (!v66)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_57;
                case 18:
                  if ((*(a1 + 832) & 1) == 0)
                  {
                    strncpy(__dst, "air.get_instance_id.i32", 0x200uLL);
                    v67 = 0;
                    v68 = *(a1 + 40);
                    goto LABEL_52;
                  }

                  goto LABEL_55;
                case 28:
                  if (*(a1 + 832))
                  {
                    goto LABEL_55;
                  }

                  v62 = v102;
                  if (!v102)
                  {
                    v63 = *(a1 + 40);
                    v137[0] = 0x400000001;
                    v62 = glpLLVMCallFunctionInner(a1, "air.get_vertex_id.i32", v63, &v104, 0, v137, 2u, "");
                  }

                  v64 = *(a1 + 160);
                  v65 = v62;
                  LLVMGetParam();
                  v102 = v65;
                  v137[0] = v65;
                  LLVMBuildGEP();
                  v66 = LLVMBuildLoad();
                  goto LABEL_56;
              }
            }
          }

          else
          {
            glpLayoutObjectFind(*(v23 + 8), 34);
            v25 = *(a1 + 160);
            v26 = LLVMGetParam();
            ++v21;
            if ((*(*(v23 + 144) + 32) & 4) == 0)
            {
              glpLLVMGetVariablePointer(a1, v23);
              v28 = glpPrecisionIndexFromSAFlags(*(v23 + 48));
              v29 = glpTypeToLLVMTypeWithUnderlying(a1, *v23, v28, v23);
              MEMORY[0x23EE85440](v29, 0);
              v30 = *(a1 + 16);
              LLVMBuildPointerCast();
              v31 = *(a1 + 16);
              goto LABEL_63;
            }

            glpPointerHashPut(*(a1 + 344), v23, v26, v27);
          }

LABEL_64:
          v20 += 8;
          if (v22 == v20)
          {
            v86 = v21;
            v7 = v99;
            goto LABEL_76;
          }
        }
      }

      v86 = 0;
LABEL_76:
      *(a1 + 168) = v7;
      *(a1 + 208) = 0;
      if ((*(a1 + 320) | 2) == 3)
      {
        v87 = *(a1 + 692);
        if (v87 >= 1)
        {
          v88 = 0;
          v89 = 8 * v87;
          do
          {
            v90 = *(*(a1 + 696) + v88);
            v91 = *(a1 + 160);
            v92 = LLVMGetParam();
            glpPointerHashPut(*(a1 + 344), v90, v92, v93);
            ++v86;
            v88 += 8;
          }

          while (v89 != v88);
        }
      }
    }

    glpLLVMCGNode(a1, Body, 0);
    glpDestroyPointerHash(*(a1 + 344));
    *(a1 + 344) = 0;
    glpDestroyPointerHash(*(a1 + 352));
    *(a1 + 352) = 0;
    if (*(a1 + 24))
    {
      glpLLVMClearCurrentLineInner(a1);
    }

    *(a1 + 332) = 0;
    *(a1 + 440) = 0;
    *(a1 + 324) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    v94 = *(a1 + 16);
    LLVMPositionBuilderAtEnd();
    glpLLVMEmitBranchInnerReal(a1);
    *(a1 + 332) = 0;
    v95 = *(a1 + 16);
    LLVMPositionBuilderAtEnd();
    glpLLVMEmitBranchInnerReal(a1);
    *(a1 + 332) = 0;
    v96 = *(a1 + 16);
    LLVMDisposeBuilder();
    *(a1 + 16) = 0;
    *(a1 + 160) = 0;
  }

  v97 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t glpLLVMCGInterfaceBlock(uint64_t a1, uint64_t a2)
{
  Extra = glpInterfaceBlockNodeGetExtra(a2);
  result = glpInterfaceBlockObjectGetVariableObjectCount(Extra);
  if (result)
  {
    v5 = 0;
    v6 = 8 * result;
    do
    {
      result = glpLLVMCGDeclareVariable(a1, *(*(Extra + 72) + v5));
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t glpLLVMCGBlock(uint64_t *a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  result = glpBlockNodeGetStatementCount(a2);
  v47 = result;
  if (result)
  {
    v4 = 0;
    v45 = a1 + 65;
    v5 = "";
    do
    {
      Statement = glpBlockNodeGetStatement(a2, v4);
      memset(v51, 0, sizeof(v51));
      memset(v50, 0, sizeof(v50));
      v48 = 0;
      v49 = 0;
      if (!glpIsSimpleComponentAssigment(Statement, &v49, &v48, v51, v50))
      {
        goto LABEL_23;
      }

      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v49);
      if (glpPrimitiveTypeGetCategory(PrimitiveType) != 2)
      {
        goto LABEL_23;
      }

      v8 = 0;
      v44 = v4;
      v9 = v4 + 1;
      v10 = v51 + 1;
      v11 = v50 + 1;
      v12 = 1;
      while (v8 != 7)
      {
        v13 = v8;
        if (v9 + v8 >= v47)
        {
          goto LABEL_11;
        }

        v14 = glpBlockNodeGetStatement(a2, v9 + v8);
        IsSimpleComponentAssigment = glpIsSimpleComponentAssigment(v14, &v49, &v48, v10, v11);
        ++v12;
        v8 = v13 + 1;
        ++v11;
        ++v10;
        if (!IsSimpleComponentAssigment)
        {
          v12 = v13 + 1;
          goto LABEL_11;
        }
      }

      v12 = 8;
LABEL_11:
      Length = glpPrimitiveVectorGetLength(PrimitiveType);
      v17 = v48;
      v18 = glpPrimitiveTypeGetPrimitiveType(*v48);
      v19 = glpPrimitiveVectorGetLength(v18);
      v20 = v12 == Length;
      v4 = v44;
      if (v20)
      {
        v21 = v19;
        v22 = 0;
        v23 = v12;
        while (v22 == *(v51 + v22))
        {
          if (v12 == ++v22)
          {
            goto LABEL_18;
          }
        }

        if (v12 != v22)
        {
          goto LABEL_23;
        }

LABEL_18:
        v24 = glpLLVMGetVariablePointer(a1, v17);
        glpLoadSourceVariable(a1, v24, v17);
        if (v21 == v12)
        {
          v25 = 0;
          v26 = v12;
          while (v25 == *(v50 + v25))
          {
            ++v25;
            if (!--v26)
            {
              glpLLVMGetVariablePointer(a1, v49);
              goto LABEL_39;
            }
          }

          glpLLVMGetVariablePointer(a1, v49);
          if (v26)
          {
            goto LABEL_28;
          }

LABEL_39:
          v42 = a1[2];
          result = LLVMBuildStore();
        }

        else
        {
          glpLLVMGetVariablePointer(a1, v49);
LABEL_28:
          LLVMTypeOf();
          v27 = LLVMGetElementType();
          MEMORY[0x23EE85370](v27);
          v28 = v51;
          v29 = v50;
          do
          {
            v31 = *v29++;
            v30 = v31;
            if (v31 > 7)
            {
              v33 = a1[5];
              LLVMConstInt();
            }

            else if (!v45[v30])
            {
              v32 = a1[5];
              v45[v30] = LLVMConstInt();
            }

            v34 = a1[2];
            v35 = v5;
            LLVMBuildExtractElement();
            v36 = *v28;
            if (v36 > 7)
            {
              v39 = a1[5];
              LLVMConstInt();
            }

            else if (!v45[v36])
            {
              v37 = a1[5];
              v38 = *v28;
              v45[v36] = LLVMConstInt();
            }

            v40 = a1[2];
            v5 = v35;
            LLVMBuildInsertElement();
            ++v28;
            --v23;
          }

          while (v23);
          v41 = a1[2];
          result = LLVMBuildStore();
          v4 = v44;
        }

        v4 += v12;
      }

      else
      {
LABEL_23:
        result = glpLLVMCGNode(a1, Statement, 0);
        ++v4;
      }
    }

    while (v4 < v47);
  }

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMCGIfStatement(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 432);
  Cond = glpIfStatementNodeGetCond(a2);
  glpLLVMCGNode(a1, Cond, 1);
  glpLLVMCGInsertBasicBlock(a1);
  ElseStatement = glpIfStatementNodeGetElseStatement(a2);
  if (ElseStatement)
  {
    v7 = glpLLVMCGInsertBasicBlock(a1);
  }

  else
  {
    v7 = 0;
  }

  v8 = glpLLVMCGInsertBasicBlock(a1);
  glpLLVMClearCurrentLineInner(a1);
  v9 = *(a1 + 16);
  LLVMBuildCondBr();
  v10 = *(a1 + 16);
  LLVMPositionBuilderAtEnd();
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  *(a1 + 432) = v11;
  IfStatement = glpIfStatementNodeGetIfStatement(a2);
  glpLLVMCGNode(a1, IfStatement, 0);
  glpLLVMEmitBranchInnerReal(a1);
  *(a1 + 332) = 0;
  if (ElseStatement)
  {
    v13 = *(a1 + 16);
    LLVMPositionBuilderAtEnd();
    *(a1 + 432) = v8;
    glpLLVMCGNode(a1, ElseStatement, 0);
    glpLLVMEmitBranchInnerReal(a1);
    *(a1 + 332) = 0;
  }

  v14 = *(a1 + 16);
  result = LLVMPositionBuilderAtEnd();
  *(a1 + 432) = v4;
  return result;
}

uint64_t glpLLVMCGLoopStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v4 = *(a1 + 432);
  Body0 = glpLoopStatementNodeGetBody0(a2);
  Body1 = glpLoopStatementNodeGetBody1(a2);
  v7 = Body1;
  if (!Body0)
  {
    if (Body1)
    {
      v10 = glpLLVMCGInsertBasicBlock(a1);
      goto LABEL_7;
    }

    v11 = 1;
LABEL_12:
    v9 = glpLLVMCGInsertBasicBlock(a1);
    glpLLVMEmitBranchInnerReal(a1);
    *(a1 + 332) = 0;
    v12 = *(a1 + 16);
    LLVMPositionBuilderAtEnd();
    goto LABEL_13;
  }

  v8 = glpLLVMCGInsertBasicBlock(a1);
  v9 = v8;
  if (v7)
  {
    v10 = glpLLVMCGInsertBasicBlock(a1);
    if (v9)
    {
      v11 = 0;
      goto LABEL_14;
    }

LABEL_7:
    v11 = 0;
    v9 = v10;
    if (v10)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v11 = 1;
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  v10 = 0;
LABEL_14:
  v13 = glpLLVMCGInsertBasicBlock(a1);
  v14 = v13;
  v21 = *(a1 + 416);
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v9;
  }

  *(a1 + 416) = v15;
  *(a1 + 424) = v13;
  if (Body0)
  {
    glpLLVMEmitBranchInnerReal(a1);
    *(a1 + 332) = 0;
    v16 = *(a1 + 16);
    LLVMPositionBuilderAtEnd();
    if (v11)
    {
      v17 = v14;
    }

    else
    {
      v17 = v10;
    }

    *(a1 + 432) = v17;
    glpLLVMCGNode(a1, Body0, 0);
  }

  if ((v11 & 1) == 0)
  {
    glpLLVMEmitBranchInnerReal(a1);
    *(a1 + 332) = 0;
    v18 = *(a1 + 16);
    LLVMPositionBuilderAtEnd();
    *(a1 + 432) = v14;
    glpLLVMCGNode(a1, v7, 0);
  }

  glpLLVMEmitBranchInnerReal(a1);
  *(a1 + 332) = 0;
  *(a1 + 416) = v21;
  v19 = *(a1 + 16);
  result = LLVMPositionBuilderAtEnd();
  *(a1 + 432) = v4;
  return result;
}

uint64_t glpLLVMCGSwitchStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v4 = *(a1 + 432);
  Expr = glpSwitchStatementNodeGetExpr(a2);
  glpLLVMCGNode(a1, Expr, 1);
  v6 = glpLLVMCGInsertBasicBlock(a1);
  v7 = *(a1 + 424);
  *(a1 + 424) = v6;
  *(a1 + 432) = v6;
  glpLLVMCGInsertBasicBlock(a1);
  Body = glpSwitchStatementNodeGetBody(a2);
  ChildCount = glpASTNodeGetChildCount(Body);
  if (ChildCount >= 1)
  {
    v10 = ChildCount;
    v11 = 0;
    for (i = 0; i != v10; ++i)
    {
      Child = glpASTNodeGetChild(Body, i);
      if (glpIsCaseStatementNode(Child))
      {
        ++v11;
      }
    }
  }

  v14 = *(a1 + 408);
  v15 = *(a1 + 16);
  *(a1 + 408) = LLVMBuildSwitch();
  glpLLVMCGNode(a1, Body, 0);
  glpLLVMEmitBranchInnerReal(a1);
  *(a1 + 332) = 0;
  v16 = *(a1 + 16);
  LLVMPositionBuilderAtEnd();
  glpLLVMEmitBranchInnerReal(a1);
  *(a1 + 332) = 0;
  v17 = *(a1 + 16);
  result = LLVMPositionBuilderAtEnd();
  *(a1 + 408) = v14;
  *(a1 + 424) = v7;
  *(a1 + 432) = v4;
  return result;
}

void glpLLVMCGCaseStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  ConstValue = glpCaseStatementNodeGetConstValue(a2);
  glpLLVMCGNode(a1, ConstValue, 1);
  v5 = *(a1 + 16);
  inserted = LLVMGetInsertBlock();
  if (!glpLLVMBasicBlockEmpty(inserted))
  {
    glpLLVMCGInsertBasicBlock(a1);
    glpLLVMEmitBranchInnerReal(a1);
    *(a1 + 332) = 0;
  }

  v7 = *(a1 + 16);
  LLVMPositionBuilderAtEnd();
  v8 = *(a1 + 408);

  JUMPOUT(0x23EE84E40);
}

uint64_t glpLLVMCGDefaultStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v3 = *(a1 + 408);
  LLVMGetSwitchDefaultDest();
  glpLLVMEmitBranchInnerReal(a1);
  *(a1 + 332) = 0;
  v4 = *(a1 + 16);

  return LLVMPositionBuilderAtEnd();
}

uint64_t glpLLVMCGBreakStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  glpLLVMClearCurrentLineInner(a1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 424);

  return LLVMBuildBr();
}

uint64_t glpLLVMCGContinueStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  glpLLVMClearCurrentLineInner(a1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 416);

  return LLVMBuildBr();
}

uint64_t glpLLVMCGDiscardStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  v3 = *a1;
  v4 = LLVMVoidTypeInContext();
  *(a1 + 744) |= 2uLL;
  v6 = 2;
  return glpLLVMCallFunctionInner(a1, "air.discard_fragment", v4, 0, 0, &v6, (*(a1 + 832) & 0x10) == 0, "");
}

void glpLLVMCGReturnStatement(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  if (!*(a1 + 408))
  {
    *(a1 + 332) = 1;
  }

  if (*(a1 + 324) && *(a1 + 208))
  {
    *(a1 + 208) = 0;
    v3 = *(a1 + 16);

    JUMPOUT(0x23EE850B0);
  }

  v4 = *(a1 + 16);

  JUMPOUT(0x23EE850C0);
}

uint64_t glpLLVMCGRawCallNode(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  v4 = glpRawCallNodeGetExtra(a2);
  v5 = *(v4 + 144);
  v6 = *(v4 + 152);
  v7 = *v6;
  v8 = *(*v6 + 36);
  MEMORY[0x28223BE20](v4);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFF0);
  bzero(v10, v9);
  v11 = *(v7 + 32);
  if (v11)
  {
    v12 = (*(v7 + 40) + 8);
    do
    {
      v13 = *(v12 - 1);
      if (v13)
      {
        *&v10[((v13 << 32) - 0x100000000) >> 29] = *v12;
      }

      v12 += 3;
      --v11;
    }

    while (v11);
  }

  result = glpLLVMSharedRawCall(a1, v6[2], v5, v10, v8);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMCGSubroutineRawCall(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  v4 = glpSubroutineRawCallNodeGetExtra(a2);
  v5 = glpSubroutineRawCallNodeGetIndexExpr(a2);
  v6 = *(v4 + 16);
  MEMORY[0x23EE85440](*(a1 + 40), 2);
  v7 = *(a1 + 16);
  v8 = *(a1 + 440);
  LLVMBuildPointerCast();
  v9 = *(v4 + 40) + 4 * glpLinkedProgramGetDefaultUniformLocationCount(*(a1 + 136));
  if (v9 > 7)
  {
    v13 = *(a1 + 40);
    v10 = LLVMConstInt();
  }

  else
  {
    v10 = *(a1 + 520 + 8 * v9);
    if (!v10)
    {
      v11 = v9;
      v12 = *(a1 + 40);
      v10 = LLVMConstInt();
      *(a1 + 520 + 8 * v11) = v10;
    }
  }

  v57 = v10;
  if (v5)
  {
    glpArrayTypeGetElementType(v6);
    glpLLVMCGNode(a1, v5, 1);
    v14 = *(a1 + 16);
    v57 = LLVMBuildAdd();
  }

  LLVMBuildGEP();
  LLVMBuildLoad();
  SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(*(a1 + 136), *(a1 + 320));
  v16 = *(SubroutineUniformHash + 32);
  if (v16)
  {
    v17 = 0;
    v18 = *(SubroutineUniformHash + 40);
    do
    {
      v19 = *v18;
      if (*v18)
      {
        v20 = *(v19 + 4);
        v21 = v19 + 64;
        if (v20 == *(v4 + 40))
        {
          v17 = v21;
        }
      }

      v18 += 4;
      --v16;
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v22 = glpLLVMCGInsertBasicBlock(a1);
  v23 = *(a1 + 16);
  v24 = *(v17 + 4);
  v56 = v22;
  v55 = LLVMBuildSwitch();
  if (*(v17 + 4))
  {
    v25 = 0;
    v53 = a1 + 520;
    v54 = v17;
    do
    {
      v26 = *(*(v17 + 8) + 4 * v25);
      v27 = glpLLVMCGInsertBasicBlock(a1);
      v28 = *(a1 + 16);
      LLVMPositionBuilderAtEnd();
      glpTopLevelNodeGetDefCount(*(*(a1 + 128) + 8 * *(a1 + 320) + 184));
      v29 = 0;
      v30 = 0;
      do
      {
        Def = glpTopLevelNodeGetDef(*(*(a1 + 128) + 8 * *(a1 + 320) + 184), v30);
        if (Def)
        {
          v32 = Def;
          if (glpASTNodeGetKind(Def) == 51)
          {
            Prototype = glpFunctionDefinitionNodeGetPrototype(v32);
            Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
            if ((*(Extra + 10) & 0x10) != 0 && *(Extra + 160) == v26)
            {
              v29 = Extra;
            }
          }
        }

        ++v30;
        DefCount = glpTopLevelNodeGetDefCount(*(*(a1 + 128) + 8 * *(a1 + 320) + 184));
      }

      while (v30 < DefCount);
      v36 = *(v29 + 152);
      v37 = *v36;
      v38 = *(*v36 + 36);
      MEMORY[0x28223BE20](DefCount);
      v40 = &v53 - ((v39 + 15) & 0xFFFFFFFF0);
      bzero(v40, v39);
      v41 = *(v37 + 32);
      if (v41)
      {
        v42 = (*(v37 + 40) + 8);
        do
        {
          v43 = *(v42 - 1);
          if (v43)
          {
            *&v40[((v43 << 32) - 0x100000000) >> 29] = *v42;
          }

          v42 += 3;
          --v41;
        }

        while (v41);
      }

      v44 = *(a1 + 628);
      if (v44)
      {
        v45 = 0;
        v46 = *(a1 + 632);
        do
        {
          if (*(*v46 + 16) == v26)
          {
            v45 = *(*v46 + 8);
          }

          v46 += 8;
          --v44;
        }

        while (v44);
      }

      else
      {
        v45 = 0;
      }

      glpLLVMSharedRawCall(a1, v36[2], v45, v40, v38);
      glpLLVMEmitBranchInnerReal(a1);
      *(a1 + 332) = 0;
      if (v26 > 7)
      {
        v49 = *(a1 + 40);
        v47 = LLVMConstInt();
      }

      else
      {
        v47 = *(v53 + 8 * v26);
        if (!v47)
        {
          v48 = *(a1 + 40);
          v47 = LLVMConstInt();
          *(v53 + 8 * v26) = v47;
        }
      }

      MEMORY[0x23EE84E40](v55, v47, v27);
      ++v25;
      v17 = v54;
    }

    while (v25 < *(v54 + 4));
  }

  v50 = *(a1 + 16);
  result = LLVMPositionBuilderAtEnd();
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMCGLValue(uint64_t *a1, uint64_t a2, int a3)
{
  v90[2] = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  VariableExtra = glpLValueNodeGetVariableExtra(a2);
  v7 = *(*(VariableExtra + 144) + 16);
  if (v7)
  {
    OffsetExpr = *(v7 + 16);
    goto LABEL_3;
  }

  v11 = VariableExtra;
  v12 = *(VariableExtra + 8);
  if (v12)
  {
    v13 = glpLayoutObjectFind(v12, 46);
    if (v13)
    {
      if (*(v13 + 4) == 9)
      {
        v14 = a1[5];
        v90[0] = 0x300000001;
        OffsetExpr = glpLLVMCallFunctionInner(a1, "air.get_num_samples.i32", v14, 0, 0, v90, 2u, "");
        goto LABEL_3;
      }
    }
  }

  v15 = glpLLVMGetVariablePointer(a1, v11);
  SaType = glpASTNodeGetSaType(a2);
  SaFlags = glpASTNodeGetSaFlags(a2);
  v18 = glpPrecisionIndexFromSAFlags(SaFlags);
  if (!v18)
  {
    v19 = glpLValueNodeGetVariableExtra(a2);
    v18 = glpPrecisionIndexFromSAFlags(*(v19 + 48));
  }

  Offset = glpDerefNodeGetOffset(a2);
  v86 = a1[5];
  IsAtomic = glpTypeIsAtomic(SaType);
  if (IsAtomic)
  {
    IsAtomic = glpPrimitiveTypeGetPrimitiveType(SaType);
  }

  if (Offset)
  {
    PreSwizzlePrimitiveType = IsAtomic;
    BankIndex = glpOffsetNodeGetBankIndex(Offset);
    if (BankIndex)
    {
      v23 = *glpConstantNodeGetValue(BankIndex);
    }

    else
    {
      v23 = 0;
    }

    CompStride = glpOffsetNodeGetCompStride(Offset);
    OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
    if (glpOffsetNodeGetPreSwizzlePrimitiveType(Offset))
    {
      PreSwizzlePrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(Offset);
    }

    if (!a3)
    {
      if (OffsetExpr)
      {
        glpLLVMCGNode(a1, OffsetExpr, 0);
        OffsetExpr = 0;
      }

      goto LABEL_3;
    }
  }

  else
  {
    OffsetExpr = 0;
    if (!a3)
    {
      goto LABEL_3;
    }

    PreSwizzlePrimitiveType = IsAtomic;
    v23 = 0;
    CompStride = -1;
  }

  if (!glpTypeIsAtomic(SaType))
  {
    v30 = *MEMORY[0x277D85DE8];

    return LLVMBuildLoad();
  }

  v90[0] = 0;
  v90[1] = 0;
  v89 = 0;
  if ((*(v11 + 52) & 1) == 0)
  {
    if (OffsetExpr)
    {
      v24 = PreSwizzlePrimitiveType;
      if ((PreSwizzlePrimitiveType & 0xFFFFFFFE) != 0x40 || *(*(v11 + 144) + 24) == PreSwizzlePrimitiveType)
      {
        v26 = a1;
        v27 = v11;
        v28 = v15;
        v29 = OffsetExpr;
        v25 = 0;
      }

      else
      {
        v25 = &v89;
        v26 = a1;
        v27 = v11;
        v28 = v15;
        v29 = OffsetExpr;
      }

      v15 = glpBuildArrayElementPtr(v26, v27, v28, v29, v25, 0);
    }

    else
    {
      v24 = PreSwizzlePrimitiveType;
    }

    v41 = glpLLVMLoadVector(a1, v11, v15, v24, v18, *(*(v11 + 144) + 24), *(*(v11 + 144) + 28));
    goto LABEL_86;
  }

  v31 = glpASTNodeGetSaType(a2);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v31);
  if (glpPrimitiveTypeGetCategory(PrimitiveType) == 4)
  {
    v33 = a1[5];
    v34 = *(v11 + 156);
    inserted = LLVMConstInt();
    if (OffsetExpr)
    {
      glpLLVMCGNode(a1, OffsetExpr, 1);
      v36 = a1[2];
      v37 = a1[5];
      LLVMBuildZExt();
      v38 = a1[2];
      Element = LLVMBuildAdd();
      goto LABEL_92;
    }

    goto LABEL_93;
  }

  if ((*(v11 + 52) & 8) != 0)
  {
    v42 = *(v11 + 88);
    v43 = *(a1[89] + 8 * (v23 + *(v42 + 24) - 1));
    if (*(v42 + 8) == 1)
    {
      v44 = *a1;
      v45 = LLVMFloatTypeInContext();
      v46 = MEMORY[0x23EE85440](v45, 2);
    }

    else
    {
      v46 = 0;
    }

    LODWORD(v88) = 0;
    if (!OffsetExpr)
    {
      v49 = 0;
      v48 = *(v11 + 88);
      goto LABEL_52;
    }

    ConstantOffset = glpGetConstantOffset(OffsetExpr, &v88);
    v48 = *(v11 + 88);
    if (ConstantOffset)
    {
      v49 = v88;
LABEL_52:
      if (*(v48 + 8) == 1)
      {
        v51 = v49 >> 2;
      }

      else
      {
        v51 = v49;
      }

      v52 = glpBuildUniformElementPtr(a1, v11, *(v43 + 8), v46, v23, v51);
      goto LABEL_69;
    }

    v56 = *(v43 + 8);
    if (*(v48 + 8) == 1)
    {
      v57 = a1[2];
      v58 = *(v43 + 8);
      LLVMBuildPointerCast();
    }

    v59 = glpLLVMCGNode(a1, OffsetExpr, 1);
    if (v59)
    {
      v60 = v59;
      LLVMTypeOf();
      if (*(*(v11 + 88) + 8) != 1)
      {
LABEL_68:
        v90[0] = v60;
        v52 = LLVMBuildGEP();
LABEL_69:
        v65 = v52;
        if (*(*(v11 + 88) + 8) == 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = 4;
        }

        v84 = v66;
        v24 = PreSwizzlePrimitiveType;
        goto LABEL_73;
      }

      v61 = a1[2];
      LLVMConstInt();
      v62 = LLVMBuildAShr();
    }

    else
    {
      v62 = LLVMConstInt();
    }

    v60 = v62;
    goto LABEL_68;
  }

  LODWORD(v88) = 0;
  if (OffsetExpr)
  {
    v24 = PreSwizzlePrimitiveType;
    if (!glpGetConstantOffset(OffsetExpr, &v88))
    {
      if (glpLLVMCGNode(a1, OffsetExpr, 1))
      {
        LLVMTypeOf();
        v53 = *(v11 + 156);
        LLVMConstInt();
        v54 = a1[2];
        v55 = LLVMBuildAdd();
      }

      else
      {
        v63 = *(v11 + 156);
        v55 = LLVMConstInt();
      }

      v24 = PreSwizzlePrimitiveType;
      v90[0] = v55;
      v64 = a1[55];
      v50 = LLVMBuildGEP();
      goto LABEL_65;
    }

    v40 = v88;
  }

  else
  {
    v40 = 0;
    v24 = PreSwizzlePrimitiveType;
  }

  v50 = glpBuildUniformElementPtr(a1, v11, a1[55], 0, 0, *(v11 + 156) + v40);
LABEL_65:
  v65 = v50;
  v84 = 4;
LABEL_73:
  if (glpPrimitiveTypeGetCategory(v24) != 2 || (Length = glpPrimitiveVectorGetLength(v24), Length < 2) || CompStride == -1)
  {
    v41 = glpLLVMReadUniform(a1, v65, v84, v24, v18);
LABEL_86:
    inserted = v41;
    goto LABEL_87;
  }

  v68 = Length;
  ScalarType = glpPrimitiveTypeGetScalarType(v24);
  v83 = ScalarType;
  glpLLVMReadUniform(a1, v65, v84, ScalarType, v18);
  v70 = LLVMTypeOf();
  v71 = MEMORY[0x23EE854F0](v70, v68);
  MEMORY[0x23EE85370](v71);
  v72 = 0;
  v88 = LLVMConstInt();
  v73 = v68;
  do
  {
    if (v72)
    {
      glpLLVMReadUniform(a1, v65, v84, v83, v18);
      v74 = a1[2];
      if (v72 > 7)
      {
        v75 = a1[5];
        LLVMConstInt();
        goto LABEL_83;
      }
    }

    else
    {
      v76 = a1[2];
    }

    v77 = &a1[v72];
    if (!v77[65])
    {
      v78 = a1[5];
      v77[65] = LLVMConstInt();
    }

LABEL_83:
    inserted = LLVMBuildInsertElement();
    v65 = LLVMBuildGEP();
    ++v72;
  }

  while (v73 != v72);
  v24 = PreSwizzlePrimitiveType;
LABEL_87:
  if (Offset)
  {
    Swizzle = glpOffsetNodeGetSwizzle(Offset);
    inserted = glpCGSwizzle(a1, 0, 0, inserted, v24, Swizzle);
    VectorElementExpr = glpOffsetNodeGetVectorElementExpr(Offset);
    if (VectorElementExpr)
    {
      glpLLVMCGNode(a1, VectorElementExpr, 1);
      if (LLVMTypeOf() != v86)
      {
        v81 = a1[2];
        LLVMBuildIntCast();
      }

      v82 = a1[2];
      Element = LLVMBuildExtractElement();
LABEL_92:
      inserted = Element;
    }
  }

LABEL_93:
  OffsetExpr = inserted;
LABEL_3:
  v9 = *MEMORY[0x277D85DE8];
  return OffsetExpr;
}