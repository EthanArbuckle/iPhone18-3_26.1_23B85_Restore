uint64_t llvm::LLT::dump(llvm::LLT *this)
{
  v2 = llvm::dbgs(this);
  v3 = llvm::LLT::print(this, v2);
  result = llvm::dbgs(v3);
  v5 = *(result + 32);
  if (v5 >= *(result + 24))
  {

    return MEMORY[0x2821F1EB8]();
  }

  else
  {
    *(result + 32) = v5 + 1;
    *v5 = 10;
  }

  return result;
}

uint64_t oglCodeGenServiceGenerateIR(uint64_t a1, int *a2, unint64_t a3)
{
  v3 = 0;
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 > 2)
  {
    if (v4 == 3)
    {
      v7 = *MEMORY[0x277D85DE8];

      return glpGenerateLLVMIRModule(a2 + 1, a3 - 4, a1);
    }

    if (v4 == 4)
    {
      v9 = *MEMORY[0x277D85DE8];

      return glpARBProgramInfoToLLVMModule(a1, a2);
    }

    if (v4 != 186106078)
    {
      goto LABEL_28;
    }

LABEL_13:
    v13 = 0;
    llvm::MemoryBuffer::getMemBuffer();
    v15[0] = 0;
    v15[1] = 0;
    v16 = 0;
    llvm::MemoryBuffer::getMemBufferRef(v12, 0);
    llvm::parseBitcodeFile();
    llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(v14, v15);
    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(v14);
    if (v16)
    {
      if (!LODWORD(v15[0]))
      {
        oglCodeGenServiceGenerateIR_cold_1();
      }

      v3 = 0;
    }

    else
    {
      v3 = v15[0];
      v15[0] = 0;
      std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](v15);
    }

    v10 = v13;
    v13 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    goto LABEL_28;
  }

  if (!v4)
  {
    if (a3 <= 3)
    {
      oglCodeGenServiceGenerateIR_cold_2();
    }

    goto LABEL_13;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v5 = *MEMORY[0x277D85DE8];

      return glpFragmentStateToLLVMModule((a2 + 1), a1);
    }

LABEL_28:
    v11 = *MEMORY[0x277D85DE8];
    return v3;
  }

  v8 = *MEMORY[0x277D85DE8];

  return glpVertexStateToLLVMModule((a2 + 1), a1);
}

void llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1;
    *a1 = 0;
    v7 = v3;
    v4 = llvm::errorToErrorCodeAndEmitErrors();
    *(a2 + 16) |= 1u;
    *a2 = v4;
    *(a2 + 8) = v5;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  else
  {
    *(a2 + 16) &= ~1u;
    v6 = *a1;
    *a1 = 0;
    *a2 = v6;
  }
}

void *cvmsPluginServiceInitialize()
{
  v0 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *v0 = LLVMContextCreate();
  return v0;
}

void cvmsPluginServiceTerminate(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    LLVMContextDispose();
  }

  free(v1);
}

uint64_t cvmsPluginElementBuild(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = **v1;
  if ((v2 - 20) > 4)
  {
LABEL_6:
    result = 540;
    goto LABEL_15;
  }

  v4 = v1[2];
  if ((v2 - 22) >= 2)
  {
    if ((v2 - 20) <= 1)
    {
      *v12 = a1;
      if (v2 == 20)
      {
        glpVertexStateToLLVMIR(v4);
      }

      glpFragmentStateToLLVMIR(v4);
    }

    goto LABEL_6;
  }

  v7 = *v4;
  v6 = v4 + 4;
  v8 = (v7 - 4);
  bzero(v12, 0x400uLL);
  v9 = v2 == 22;
  if (v2 == 22)
  {
    v10 = &cvmsPluginBuild(_cvms_plugin_element_s const*)::shaderindex;
  }

  else
  {
    v10 = &cvmsPluginBuild(_cvms_plugin_element_s const*)::shaderindex;
  }

  if (v9)
  {
    snprintf_l(v12, 0x400uLL, 0, "/tmp/vertex_shader_llvm_ir%d.txt");
  }

  else
  {
    snprintf_l(v12, 0x400uLL, 0, "/tmp/fragment_shader_llvm_ir%d.txt");
  }

  glpDumpLLVMIR(v12, v6, v8);
  ++*v10;
  (*(*a1 + 32))(a1, 4);
  result = 0;
LABEL_15:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x23EE85620]();
    MEMORY[0x23EE856F0](v3, 0x10B2C407FF26C1CLL);
  }

  return a1;
}

void *PPParserMacroCreate()
{
  result = malloc_type_calloc(0x38uLL, 1uLL, 0x1116B6A2uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *PPParserMacroCreateFromMacro(uint64_t a1)
{
  v2 = PPParserMacroCreate();
  v3 = strlen(*a1);
  v4 = malloc_type_calloc(v3 + 1, 1uLL, 0x1116B6A2uLL);
  if (!v4 || (*v2 = v4, memmove(v4, *a1, v3), v5 = strlen(*(a1 + 8)), (v6 = malloc_type_calloc(v5 + 1, 1uLL, 0x1116B6A2uLL)) == 0))
  {
    abort();
  }

  v2[1] = v6;
  memmove(v6, *(a1 + 8), v5);
  PPParserMacroSetParamStringsCount(v2, *(a1 + 16));
  if (*(a1 + 16))
  {
    v7 = 0;
    do
    {
      PPParserMacroSetParamString(v2, v7, *(*(a1 + 24) + 8 * v7));
      ++v7;
    }

    while (v7 < *(a1 + 16));
  }

  return v2;
}

void *PPParserMacroSetParamStringsCount(uint64_t a1, size_t size)
{
  v2 = size;
  result = malloc_type_calloc(8uLL, size, 0x1116B6A2uLL);
  if (!result)
  {
    abort();
  }

  *(a1 + 24) = result;
  *(a1 + 16) = v2;
  return result;
}

void *PPParserMacroSetParamString(uint64_t a1, unsigned int a2, char *__s)
{
  v6 = strlen(__s);
  v7 = malloc_type_malloc(v6 + 1, 0x75808E6AuLL);
  if (!v7)
  {
    abort();
  }

  *(*(a1 + 24) + 8 * a2) = v7;
  result = memmove(*(*(a1 + 24) + 8 * a2), __s, v6);
  *(*(*(a1 + 24) + 8 * a2) + v6) = 0;
  return result;
}

void PPParserMacroFree(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 8));
  v2 = *(a1 + 16);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 24) + 8 * i);
      if (v4)
      {
        free(v4);
        v2 = *(a1 + 16);
      }
    }
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    free(v5);
  }

  free(a1);
}

void PPParserMacroSetSearchString(uint64_t a1, void **a2, const void *a3, unsigned int a4)
{
  if (*a2)
  {
    free(*a2);
    *a2 = 0;
  }

  if (a3)
  {
    v7 = malloc_type_malloc(a4 + 1, 0x75808E6AuLL);
    if (!v7)
    {
      abort();
    }

    *a2 = v7;
    memmove(v7, a3, a4);
    *(*a2 + a4) = 0;
  }
}

void *__abort_malloc(size_t a1)
{
  result = malloc_type_malloc(a1, 0x75808E6AuLL);
  if (!result)
  {
    abort();
  }

  return result;
}

uint64_t PPParserMacroGetReplaceString(uint64_t a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v4 = a4;
  v5 = *(a1 + 8);
  v6 = *v5;
  if (!*v5)
  {
    v8 = 0;
    if (!a4)
    {
      return v8;
    }

    goto LABEL_20;
  }

  v7 = a1;
  LODWORD(v8) = 0;
  do
  {
    v9 = 0;
    while (v6 != 10 && v6 != 32)
    {
      v6 = v5[++v9];
    }

    v10 = *(v7 + 16);
    v11 = v5;
    v12 = v9;
    if (v10)
    {
      v13 = v7;
      v14 = *(v7 + 24);
      v15 = a3;
      while (strlen(*v14) != v9 || strncmp(v5, *v14, v9))
      {
        ++v15;
        ++v14;
        if (!--v10)
        {
          v11 = v5;
          v12 = v9;
          goto LABEL_14;
        }
      }

      v11 = *v15;
      v12 = strlen(*v15);
LABEL_14:
      v7 = v13;
      v4 = a4;
    }

    if (v4)
    {
      memmove((v4 + v8), v11, (v12 + 1));
      v16 = v12 + v8;
      *(v4 + (v12 + v8)) = v6;
    }

    else
    {
      v16 = v8 + v12;
    }

    v8 = (v16 + 1);
    v5 += v9 + 1;
    v6 = *v5;
  }

  while (*v5);
  if (v4)
  {
LABEL_20:
    *(v4 + v8) = 0;
  }

  return v8;
}

_DWORD *PPParserIdentifierCreate()
{
  result = malloc_type_calloc(0x30uLL, 1uLL, 0x1116B6A2uLL);
  if (!result)
  {
    abort();
  }

  result[2] = 1;
  *(result + 21) = -1;
  return result;
}

void **PPParserIdentifierCreateFromIdentifier(uint64_t a1)
{
  v2 = PPParserIdentifierCreate();
  PPParserIdentifierSetName(v2, *a1);
  v2[1] = *(a1 + 8);
  *(v2 + 4) = *(a1 + 16);
  *(v2 + 10) = *(a1 + 20);
  return v2;
}

uint64_t PPParserIdentifierSetName(void **a1, char *__s)
{
  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
  }

  if (!__s)
  {
    return 1;
  }

  v5 = strlen(__s);
  v6 = malloc_type_calloc(v5 + 1, 1uLL, 0x1116B6A2uLL);
  if (!v6)
  {
    abort();
  }

  *a1 = v6;
  memmove(v6, __s, v5);
  return 0;
}

void PPParserIdentifierFree(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void *PPParserScopeCreate()
{
  v0 = malloc_type_calloc(0x38uLL, 1uLL, 0x1116B6A2uLL);
  if (!v0)
  {
    abort();
  }

  v1 = v0;
  v2 = PPParserMacroCreate();
  PPParserMacroSetSearchString(v2, v2, "MVMULT", 6u);
  PPParserMacroSetParamStringsCount(v2, 3uLL);
  PPParserMacroSetParamString(v2, 0, "dst");
  PPParserMacroSetParamString(v2, 1u, "mat");
  v3 = PPParserMacroSetParamString(v2, 2u, "vec");
  v2[1] = PPParserPreprocessString(v3, "DP4 dst.x, mat[0], vec;\nDP4 dst.y, mat[1], vec;\nDP4 dst.z, mat[2], vec;\nDP4 dst.w, mat[3], vec;", 0);
  v5 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (!v5)
  {
    v5 = v2;
  }

  *(v1 + 2) = v5;
  if (v4)
  {
    v4[6] = v2;
    v2[5] = v4;
  }

  *(v1 + 3) = v2;
  v6 = PPParserMacroCreate();
  PPParserMacroSetSearchString(v6, v6, "TMVMULT", 7u);
  PPParserMacroSetParamStringsCount(v6, 4uLL);
  PPParserMacroSetParamString(v6, 0, "dst");
  PPParserMacroSetParamString(v6, 1u, "mat");
  PPParserMacroSetParamString(v6, 2u, "vec");
  v7 = PPParserMacroSetParamString(v6, 3u, "tmp");
  v6[1] = PPParserPreprocessString(v7, "MUL tmp, mat[0], vec.x;\nMAD tmp, mat[1], vec.y, tmp;\nMAD tmp, mat[2], vec.z, tmp;\nMAD dst, mat[3], vec.w, tmp;\n", 0);
  v9 = *(v1 + 2);
  v8 = *(v1 + 3);
  if (!v9)
  {
    v9 = v6;
  }

  *(v1 + 2) = v9;
  if (v8)
  {
    v8[6] = v6;
    v6[5] = v8;
  }

  *(v1 + 3) = v6;
  return v1;
}

_BYTE *PPParserPreprocessString(int a1, char *__s, int a3)
{
  v5 = strlen(__s);
  v6 = v5;
  if (a3)
  {
    if (v5 >= 0xA)
    {
      v7 = 10;
    }

    else
    {
      v7 = v5;
    }

    if (v5 < 0xB || ((v8 = __s[v7], v9 = v8 > 0x23, v10 = (1 << v8) & 0x900002600, !v9) ? (v11 = v10 == 0) : (v11 = 1), !v11))
    {
      v12 = 0;
      v13 = v7;
      goto LABEL_13;
    }

    v13 = v7 + 1;
  }

  else
  {
    v7 = 0;
    v13 = 0;
  }

  v12 = 1;
LABEL_13:
  if (v7 < v5)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = __s[v7];
      if (v15)
      {
        break;
      }

      v19 = 0;
      v18 = 1;
      v15 = 1;
      v20 = 1;
      switch(__s[v7])
      {
        case 9:
        case 32:
          if (v12)
          {
            goto LABEL_86;
          }

          v27 = v7 + 1;
          if (v27 < v6)
          {
            v28 = __s[v27];
            v9 = v28 > 0x23;
            v29 = (1 << v28) & 0x900002600;
            if (v9 || v29 == 0)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_68;
        case 10:
LABEL_51:
          v15 = 0;
          v19 = 0;
          ++v13;
          goto LABEL_30;
        case 11:
        case 12:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
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
        case 33:
        case 34:
        case 36:
        case 37:
        case 38:
        case 39:
        case 42:
        case 47:
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
        case 66:
        case 67:
        case 68:
          goto LABEL_71;
        case 13:
          ++v13;
          v46 = v7 + 1;
          if (v46 >= v6)
          {
LABEL_86:
            v15 = 0;
            goto LABEL_87;
          }

          v15 = 0;
          v19 = 0;
          if (__s[v46] == 10)
          {
            v18 = 2;
          }

          else
          {
            v18 = 1;
          }

          goto LABEL_30;
        case 35:
          goto LABEL_30;
        case 40:
        case 41:
        case 44:
        case 58:
        case 59:
        case 61:
          goto LABEL_34;
        case 43:
        case 45:
          if (v12 | v14)
          {
            v31 = v13;
          }

          else
          {
            v31 = v13 + 1;
          }

          v13 = v31 + 1;
          v32 = v7 + 1;
          if (v32 >= v6)
          {
            goto LABEL_68;
          }

          v33 = __s[v32];
          if (v33 - 58 <= 0xFFFFFFF5)
          {
            v9 = v33 > 0x2E;
            v34 = (1 << v33) & 0x400900002600;
            if (v9 || v34 == 0)
            {
              v15 = 0;
              v19 = 0;
              v13 = v31 + 2;
              goto LABEL_30;
            }
          }

          v36 = 0;
          v18 = v6 - v7;
          v37 = &__s[v32];
          do
          {
            v38 = v37[v36];
            v39 = v36 + 1;
            if (v38 != 32 && v38 != 9)
            {
              v19 = v38 == 46 || v38 - 48 < 0xA;
              if (v38 - 58 >= 0xFFFFFFF6 || v38 <= 0x2E && ((1 << v38) & 0x400800002400) != 0)
              {
                v15 = 0;
                v20 = 0;
                v18 = v36 + 1;
              }

              else
              {
                v15 = 0;
                v20 = 0;
                v18 = v36;
              }

              goto LABEL_30;
            }

            ++v36;
          }

          while (v6 - 1 - v7 != v39);
LABEL_68:
          v15 = 0;
          v20 = 0;
LABEL_87:
          v19 = 0;
          goto LABEL_30;
        case 46:
          v41 = v7 + 1;
          if (v41 >= v6)
          {
            v15 = 0;
            v20 = 0;
            if (v12)
            {
              v47 = 1;
            }

            else
            {
              v47 = v14 == 1;
            }

            if (!v47)
            {
              ++v13;
            }

            ++v13;
          }

          else
          {
            v42 = __s[v41];
            if (v42 == 46)
            {
              if (v12)
              {
                v43 = v13;
              }

              else
              {
                v43 = v13 + 1;
              }

              v13 = v43 + 2;
              v44 = v7 + 2;
              if (v44 >= v6 || (v45 = __s[v44], v45 <= 0x23) && ((1 << v45) & 0x900002600) != 0)
              {
                v15 = 0;
                v20 = 0;
                v19 = 0;
              }

              else
              {
                v15 = 0;
                v19 = 0;
                v13 = v43 + 3;
              }

              v18 = 2;
              goto LABEL_30;
            }

            if (v12)
            {
              v49 = 1;
            }

            else
            {
              v49 = v14 == 1;
            }

            if (v49)
            {
              v50 = v13;
            }

            else
            {
              v50 = v13 + 1;
            }

            v13 = v50 + 1;
            if (v42 - 48 < 0xA)
            {
              v15 = 0;
              v20 = 0;
              v19 = 3;
              goto LABEL_30;
            }

            if (v42 <= 0x23 && ((1 << v42) & 0x900002600) != 0)
            {
              v15 = 0;
              v20 = 0;
            }

            else
            {
              v15 = 0;
              v13 = v50 + 2;
            }
          }

          goto LABEL_29;
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
          v15 = 0;
          v20 = 0;
          ++v13;
          v19 = v14 | v12;
          goto LABEL_30;
        case 69:
          goto LABEL_70;
        default:
          v21 = (v16 - 91);
          if (v21 > 0x22)
          {
            goto LABEL_71;
          }

          if (((1 << (v16 - 91)) & 0x700000005) == 0)
          {
            if (v21 != 10)
            {
LABEL_71:
              v15 = 0;
              v20 = 0;
              v19 = 0;
              ++v13;
              goto LABEL_43;
            }

LABEL_70:
            v15 = 0;
            v20 = 0;
            ++v13;
            v18 = 1;
            goto LABEL_29;
          }

LABEL_34:
          if (v12)
          {
            v22 = v13;
          }

          else
          {
            v22 = v13 + 1;
          }

          v13 = v22 + 1;
          v23 = v7 + 1;
          if (v23 >= v6 || ((v24 = __s[v23], v9 = v24 > 0x23, v25 = (1 << v24) & 0x900002600, !v9) ? (v26 = v25 == 0) : (v26 = 1), !v26))
          {
            v15 = 0;
            v20 = 0;
            v19 = 0;
LABEL_43:
            v18 = 1;
            goto LABEL_30;
          }

          v15 = 0;
          v19 = 0;
          v13 = v22 + 2;
          v18 = 1;
          v20 = 1;
LABEL_30:
          v7 += v18;
          v14 = v19;
          v12 = v20;
          if (v7 >= v6)
          {
            goto LABEL_121;
          }

          break;
      }
    }

    if (v16 == 10)
    {
      v15 = 0;
      ++v13;
    }

    else
    {
      if (v16 != 13)
      {
        v18 = 1;
        v15 = 1;
LABEL_28:
        v20 = v12;
LABEL_29:
        v19 = v14;
        goto LABEL_30;
      }

      ++v13;
      v17 = v7 + 1;
      if (v17 < v6)
      {
        v15 = 0;
        if (__s[v17] == 10)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        goto LABEL_28;
      }

      v15 = 0;
    }

    v18 = 1;
    goto LABEL_28;
  }

  LOBYTE(v20) = v12;
LABEL_121:
  if (v20)
  {
    v51 = 1;
  }

  else
  {
    v51 = 2;
  }

  result = malloc_type_calloc(v51 + v13, 1uLL, 0x1116B6A2uLL);
  if (!result)
  {
    abort();
  }

  if (a3)
  {
    if (v6 >= 0xA)
    {
      v53 = 10;
    }

    else
    {
      v53 = v6;
    }

    if (v6)
    {
      if (v53 <= 1)
      {
        v54 = 1;
      }

      else
      {
        v54 = v53;
      }

      v55 = v54;
      v56 = result;
      v57 = __s;
      do
      {
        v58 = *v57++;
        *v56++ = v58;
        --v55;
      }

      while (v55);
      if (v6 >= 0xB && ((v59 = __s[v53], v9 = v59 > 0x23, v60 = (1 << v59) & 0x900002600, !v9) ? (v61 = v60 == 0) : (v61 = 1), v61))
      {
        result[v54] = 32;
        v62 = 1;
        LODWORD(v54) = v54 + 1;
      }

      else
      {
        v62 = 0;
      }
    }

    else
    {
      v62 = 0;
      LODWORD(v54) = 0;
    }
  }

  else
  {
    v53 = 0;
    LODWORD(v54) = 0;
    v62 = 1;
  }

  if (v53 < v6)
  {
    v63 = 0;
    v64 = 0;
    while (1)
    {
      v65 = __s[v53];
      v66 = v53;
      if (!v64)
      {
        v69 = 0;
        v68 = 1;
        v64 = 1;
        v70 = 1;
        switch(__s[v53])
        {
          case 9:
          case 32:
            if (v62)
            {
              v64 = 0;
              goto LABEL_215;
            }

            if (v53 + 1 >= v6)
            {
              goto LABEL_214;
            }

            v87 = __s[v53 + 1];
            v9 = v87 > 0x23;
            v88 = (1 << v87) & 0x900002600;
            if (!v9 && v88 != 0)
            {
              goto LABEL_214;
            }

            v64 = 0;
            v69 = 0;
            result[v54] = 32;
LABEL_183:
            v67 = v54 + 1;
            goto LABEL_161;
          case 10:
            v64 = 0;
            v69 = 0;
            result[v54] = 10;
            goto LABEL_183;
          case 11:
          case 12:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
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
          case 33:
          case 34:
          case 36:
          case 37:
          case 38:
          case 39:
          case 42:
          case 47:
          case 60:
          case 62:
          case 63:
          case 64:
          case 65:
          case 66:
          case 67:
          case 68:
            goto LABEL_181;
          case 13:
            v67 = v54 + 1;
            result[v54] = 10;
            if (v66 + 1 >= v6)
            {
              v64 = 0;
              v69 = 0;
            }

            else
            {
              v64 = 0;
              v69 = 0;
              if (__s[v66 + 1] == 10)
              {
                v68 = 2;
              }

              else
              {
                v68 = 1;
              }
            }

            goto LABEL_161;
          case 35:
            goto LABEL_162;
          case 40:
          case 41:
          case 44:
          case 58:
          case 59:
          case 61:
            goto LABEL_166;
          case 43:
          case 45:
            if (v62 | v63)
            {
              v76 = v54;
            }

            else
            {
              v76 = v54 + 1;
              result[v54] = 32;
              LOBYTE(v65) = __s[v66];
            }

            LODWORD(v54) = v76 + 1;
            result[v76] = v65;
            v79 = v66 + 1;
            if (v66 + 1 >= v6)
            {
              goto LABEL_214;
            }

            v80 = __s[v79];
            if (v80 - 58 <= 0xFFFFFFF5 && (v80 > 0x2E || ((1 << v80) & 0x400900002600) == 0))
            {
              v64 = 0;
              v69 = 0;
              result[v54] = 32;
              v67 = v76 + 2;
              goto LABEL_161;
            }

            v81 = 0;
            v68 = v6 - v66;
            v82 = &__s[v79];
            break;
          case 46:
            v77 = v53 + 1;
            if (v66 + 1 >= v6 || __s[v77] != 46)
            {
              if (v62 || v63 == 1)
              {
                v86 = v54;
              }

              else
              {
                v86 = v54 + 1;
                result[v54] = 32;
              }

              LODWORD(v54) = v86 + 1;
              result[v86] = 46;
              if (v77 >= v6)
              {
                goto LABEL_233;
              }

              v90 = __s[v77];
              if (v90 - 48 < 0xA)
              {
                v64 = 0;
                v70 = 0;
                v69 = 3;
                goto LABEL_162;
              }

              if (v90 <= 0x23 && ((1 << v90) & 0x900002600) != 0)
              {
LABEL_233:
                v64 = 0;
                v70 = 0;
                goto LABEL_156;
              }

              v64 = 0;
              result[v54] = 32;
              v67 = v86 + 2;
              goto LABEL_160;
            }

            if (v62)
            {
              v78 = v54;
            }

            else
            {
              v78 = v54 + 1;
              result[v54] = 32;
            }

            result[v78] = 46;
            LODWORD(v54) = v78 + 2;
            result[v78 + 1] = 46;
            if (v66 + 2 >= v6 || (v92 = __s[v66 + 2], v92 <= 0x23) && ((1 << v92) & 0x900002600) != 0)
            {
              v64 = 0;
              v70 = 0;
              v69 = 0;
              v68 = 2;
              goto LABEL_162;
            }

            v64 = 0;
            v69 = 0;
            result[v54] = 32;
            v67 = v78 + 3;
            v68 = 2;
            goto LABEL_161;
          case 48:
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 57:
            v64 = 0;
            v70 = 0;
            result[v54] = v65;
            v67 = v54 + 1;
            v69 = v63 | v62;
            goto LABEL_161;
          case 69:
            goto LABEL_180;
          default:
            v71 = (v65 - 91);
            if (v71 > 0x22)
            {
              goto LABEL_181;
            }

            if (((1 << (v65 - 91)) & 0x700000005) != 0)
            {
LABEL_166:
              if (v62)
              {
                v72 = v54;
              }

              else
              {
                v72 = v54 + 1;
                result[v54] = 32;
                LOBYTE(v65) = __s[v66];
              }

              LODWORD(v54) = v72 + 1;
              result[v72] = v65;
              if (v66 + 1 >= v6 || ((v73 = __s[v66 + 1], v9 = v73 > 0x23, v74 = (1 << v73) & 0x900002600, !v9) ? (v75 = v74 == 0) : (v75 = 1), !v75))
              {
                v64 = 0;
                v70 = 0;
                v69 = 0;
                v68 = 1;
                goto LABEL_162;
              }

              v64 = 0;
              v69 = 0;
              result[v54] = 32;
              v67 = v72 + 2;
              v68 = 1;
              v70 = 1;
            }

            else
            {
              if (v71 == 10)
              {
LABEL_180:
                v64 = 0;
                v70 = 0;
                result[v54] = v65;
                v67 = v54 + 1;
                v68 = 1;
                goto LABEL_160;
              }

LABEL_181:
              v64 = 0;
              v70 = 0;
              v69 = 0;
              result[v54] = v65;
              v67 = v54 + 1;
              v68 = 1;
            }

            goto LABEL_161;
        }

        do
        {
          v83 = v82[v81];
          v84 = v81 + 1;
          if (v83 != 32 && v83 != 9)
          {
            v69 = v83 == 46 || v83 - 48 < 0xA;
            if (v83 - 58 >= 0xFFFFFFF6 || v83 <= 0x2E && ((1 << v83) & 0x400800002400) != 0)
            {
              v64 = 0;
              v70 = 0;
              v68 = v81 + 1;
            }

            else
            {
              v64 = 0;
              v70 = 0;
              v68 = v81;
            }

            goto LABEL_162;
          }

          ++v81;
        }

        while (v6 - 1 - v66 != v84);
LABEL_214:
        v64 = 0;
        v70 = 0;
LABEL_215:
        v69 = 0;
        goto LABEL_162;
      }

      if (v65 == 10)
      {
        break;
      }

      if (v65 == 13)
      {
        v67 = v54 + 1;
        result[v54] = 10;
        if (v66 + 1 < v6)
        {
          v64 = 0;
          if (__s[v66 + 1] == 10)
          {
            v68 = 2;
          }

          else
          {
            v68 = 1;
          }

          goto LABEL_159;
        }

        v64 = 0;
LABEL_158:
        v68 = 1;
LABEL_159:
        v70 = v62;
LABEL_160:
        v69 = v63;
LABEL_161:
        LODWORD(v54) = v67;
        goto LABEL_162;
      }

      v68 = 1;
      v64 = 1;
      v70 = v62;
LABEL_156:
      v69 = v63;
LABEL_162:
      v53 = v68 + v66;
      v63 = v69;
      v62 = v70;
      if (v68 + v66 >= v6)
      {
        goto LABEL_245;
      }
    }

    v64 = 0;
    result[v54] = 10;
    v67 = v54 + 1;
    goto LABEL_158;
  }

  LOBYTE(v70) = v62;
LABEL_245:
  if (!v70)
  {
    result[v54] = 32;
  }

  return result;
}

uint64_t *PPParserScopeCreateFromScope(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = malloc_type_calloc(0x38uLL, 1uLL, 0x1116B6A2uLL);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  for (v4[4] = a1[4]; v2; v2 = *(v2 + 40))
  {
    v6 = PPParserIdentifierCreateFromIdentifier(v2);
    PPParserScopeAddIdentifier(v5, v6);
  }

  for (; v3; v3 = *(v3 + 48))
  {
    v7 = PPParserMacroCreateFromMacro(v3);
    v9 = v5[2];
    v8 = v5[3];
    if (!v9)
    {
      v9 = v7;
    }

    v5[2] = v9;
    if (v8)
    {
      *(v8 + 48) = v7;
      v7[5] = v8;
    }

    v5[3] = v7;
  }

  return v5;
}

uint64_t PPParserScopeAddIdentifier(uint64_t *a1, uint64_t a2)
{
  if (PPParserScopeFindIdentifier(a1, *a2))
  {
    return 1;
  }

  v6 = *a1;
  v5 = a1[1];
  if (!*a1)
  {
    v6 = a2;
  }

  *a1 = v6;
  if (v5)
  {
    *(v5 + 40) = a2;
    *(a2 + 32) = v5;
  }

  result = 0;
  a1[1] = a2;
  return result;
}

void PPParserScopeFree(void *a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v3 = *(v2 + 32);
      v4 = *(v2 + 40);
      v5 = (v3 + 40);
      if (!v3)
      {
        v5 = a1;
      }

      *v5 = v4;
      if (v4)
      {
        v6 = (v4 + 32);
      }

      else
      {
        v6 = a1 + 1;
      }

      *v6 = v3;
      PPParserIdentifierFree(v2);
      v2 = *a1;
    }

    while (*a1);
  }

  v8 = a1 + 2;
  v7 = a1[2];
  if (v7)
  {
    do
    {
      v9 = *(v7 + 40);
      v10 = *(v7 + 48);
      v11 = (v9 + 48);
      if (!v9)
      {
        v11 = a1 + 2;
      }

      *v11 = v10;
      if (v10)
      {
        v12 = (v10 + 40);
      }

      else
      {
        v12 = a1 + 3;
      }

      *v12 = v9;
      PPParserMacroFree(v7);
      v7 = *v8;
    }

    while (*v8);
  }

  free(a1);
}

uint64_t PPParserScopeFindIdentifier(uint64_t *a1, char *__s2)
{
  for (i = *a1; i; i = *(i + 40))
  {
    if (*i && !strcmp(*i, __s2))
    {
      break;
    }
  }

  return i;
}

uint64_t PPParserScopeFindMacro(uint64_t a1, char *__s2)
{
  for (i = *(a1 + 16); i; i = *(i + 48))
  {
    if (*i && !strcmp(*i, __s2))
    {
      break;
    }
  }

  return i;
}

_DWORD *PPParserCreate(int a1)
{
  v2 = malloc_type_calloc(0x588uLL, 1uLL, 0x1116B6A2uLL);
  if (!v2)
  {
    abort();
  }

  v3 = v2;
  v2[92] = a1;
  v2[93] = -1;
  *(v2 + 1) = -1;
  *(v2 + 2) = -1;
  v4 = PPParserScopeCreate();
  v6 = *(v3 + 3);
  v5 = *(v3 + 4);
  if (!v6)
  {
    v6 = v4;
  }

  *(v3 + 3) = v6;
  if (v5)
  {
    *(v5 + 48) = v4;
    v4[5] = v5;
  }

  *(v3 + 4) = v4;
  return v3;
}

void PPParserShutdown(uint64_t a1)
{
  v3 = (a1 + 24);
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v4 = v2[5];
      v5 = v2[6];
      v6 = (v4 + 48);
      if (!v4)
      {
        v6 = v3;
      }

      *v6 = v5;
      if (v5)
      {
        v7 = (v5 + 40);
      }

      else
      {
        v7 = (a1 + 32);
      }

      *v7 = v4;
      PPParserScopeFree(v2);
      v2 = *v3;
    }

    while (*v3);
  }

  if (*a1)
  {
    free(*a1);
    *a1 = 0;
    *(a1 + 336) = 0;
  }
}

void PPParserAttachString(uint64_t a1, char *__s, int a3)
{
  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
    *(a1 + 336) = 0;
  }

  else if (__s)
  {
    if (a3)
    {
      v6 = PPParserPreprocessString(0, __s, 1);
      *a1 = v6;
    }

    else
    {
      v7 = strlen(__s);
      v8 = malloc_type_calloc(v7 + 1, 1uLL, 0x1116B6A2uLL);
      if (!v8)
      {
        abort();
      }

      *a1 = v8;
      memmove(v8, __s, v7);
      v6 = *a1;
    }

    v9 = strlen(v6);
    *(a1 + 336) = v9;
    if (v9)
    {
      v10 = 0;
      v11 = v9;
      do
      {
        v12 = *v6++;
        if (v12 == 10)
        {
          *(a1 + 340) = ++v10;
        }

        --v11;
      }

      while (v11);
    }
  }
}

void PPParserFree(uint64_t a1)
{
  PPParserShutdown(a1);
  free(*(a1 + 96));
  *(a1 + 96) = 0;
  free(*(a1 + 104));
  *(a1 + 104) = 0;
  PPParserLabelsFree(*(a1 + 112));
  *(a1 + 112) = 0;
  free(*(a1 + 136));
  *(a1 + 136) = 0;
  free(*(a1 + 144));
  *(a1 + 144) = 0;
  PPParserLabelsFree(*(a1 + 152));

  free(a1);
}

void PPParserLabelsFree(void **a1)
{
  if (a1 && *a1)
  {
    v2 = 1;
    do
    {
      free(a1[v2]);
    }

    while (v2++ < *a1);
  }

  free(a1);
}

void PPParserAttachStream(void *a1, uint64_t a2)
{
  v4 = a1[5];
  if (v4)
  {
    PPStreamFree(v4);
  }

  a1[5] = a2;
  a1[20] = glpProgram_PPStreamSetTarget;
  a1[21] = glpProgram_PPStreamAddOperation;
  a1[22] = glpProgram_PPStreamAddTempUsage;
  a1[23] = glpProgram_PPStreamAddAddressUsage;
  a1[24] = glpProgram_PPStreamAddParamBinding;
  a1[25] = glpProgram_PPStreamAddParamBindingArray;
  a1[26] = glpProgram_PPStreamAddAttribBinding;
  a1[27] = glpProgram_PPStreamAddOutputBinding;
  a1[28] = glpProgram_PPStreamAddOption;
  a1[29] = glpProgram_PPStreamAddConstant;
  a1[30] = glpProgram_PPStreamAddLabel;
  a1[31] = glpProgram_PPStreamResolveBranches;
}

char *glpProgram_PPStreamAddOperation(uint64_t a1, unint64_t *a2, const void *a3)
{
  v4 = *a2 & 7;
  *a2 = *a2 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a1 + 124) & 7));
  *(a1 + 124) = v4;
  result = PPStreamAddOperation(*(a1 + 40), a2, a3);
  ++*(a1 + 120);
  return result;
}

char *glpProgram_PPStreamAddAttribBinding(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 348);
  *(a1 + 348) = v4 + 1;
  *(a2 + 8) = v4;
  result = PPStreamAddAttribBinding(*(a1 + 40), a2);
  if ((*(a1 + 368) & 2) == 0)
  {

    return GLDAttribBindingsAddAttribBinding((a1 + 144), a2);
  }

  return result;
}

int *glpProgram_PPStreamAddOutputBinding(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 352);
  *(a1 + 352) = v4 + 1;
  *(a2 + 8) = v4;
  PPStreamAddOutputBinding(*(a1 + 40), a2);

  return PPParserOutputBindingsAddOutputBinding((a1 + 136), a2);
}

char *glpProgram_PPStreamAddLabel(uint64_t a1, const void *a2, unsigned int a3)
{
  PPStreamAddLabel(*(a1 + 40), a2, a3);

  return PPParserLabelsAddLabel((a1 + 152), a2, a3);
}

void llvmir_PPStreamAddOperation(uint64_t a1, _DWORD *a2, const char *a3)
{
  if (a3 && a2[18])
  {
    PPParserLabelsAddLabel((a1 + 112), a3, a2[18]);
  }

  gleLLVMAddOperation(*(a1 + 48), a2, 1);
  ++*(a1 + 120);
}

_DWORD *llvmir_PPStreamAddParamBinding(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 + 1;
  result = malloc_type_realloc(v4, 8 * (v5 + 1) + 16, 0x7A98113FuLL);
  if (!result)
  {
    abort();
  }

  *(a1 + 104) = result;
  *result = v6;
  result[1] = 0;
  result[2] = v6;
  *&result[2 * v5 + 4] = *a2;
  return result;
}

int **llvmir_PPStreamAddAttribBinding(uint64_t a1, uint64_t a2)
{
  v4 = GLDAttribBindingForPPStreamToken(*a2);
  result = (a1 + 144);
  v6 = *(a1 + 144);
  if (v6 && (v7 = *v6, v7))
  {
    v8 = 0;
    v9 = v6 + 2;
    while (*&v9[2 * v8] != v4)
    {
      if (v7 == ++v8)
      {
        goto LABEL_6;
      }
    }

    *(a2 + 8) = v8;
  }

  else
  {
LABEL_6:
    v10 = *(a1 + 348);
    *(a1 + 348) = v10 + 1;
    *(a2 + 8) = v10;

    return GLDAttribBindingsAddAttribBinding(result, a2);
  }

  return result;
}

int *llvmir_PPStreamAddOutputBinding(int *result, uint64_t a2)
{
  v2 = *a2;
  if ((*a2 & 0x1F00) == 0xA00)
  {
    v2 = (v2 >> 2) & 0x700000000 | v2 & 0xFFFFFFE0FFFFEAFFLL;
    *a2 = v2;
  }

  v3 = *(result + 17);
  if (v3 && (v4 = *v3, v4))
  {
    v5 = 0;
    v6 = v3 + 2;
    while (*&v6[2 * v5] != v2)
    {
      if (v4 == ++v5)
      {
        goto LABEL_8;
      }
    }

    *(a2 + 8) = v5;
  }

  else
  {
LABEL_8:
    v7 = result[88];
    result[88] = v7 + 1;
    *(a2 + 8) = v7;
    return PPParserOutputBindingsAddOutputBinding(result + 17, a2);
  }

  return result;
}

__n128 llvmir_PPStreamAddConstant(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  v8 = *a2;
  v5 = (v4 + 1);
  v6 = malloc_type_realloc(v3, (16 * v5) | 8, 0x7A98113FuLL);
  if (!v6)
  {
    abort();
  }

  *(a1 + 96) = v6;
  *v6 = v5;
  result = v8;
  *&v6[4 * v4 + 2] = v8;
  return result;
}

BOOL llvmir_PPStreamResolveBranches(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 112);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v14 = v3 + 2;
  v6 = (v1 + 2);
  v7 = 1;
  do
  {
    v8 = 0;
    if (v2)
    {
      v9 = *&v14[2 * v5];
      v10 = v2;
      v11 = v6;
      do
      {
        v12 = *v11++;
        if (!strcmp(v12, v9))
        {
          v8 = 1;
        }

        --v10;
      }

      while (v10);
    }

    v7 &= v8;
    ++v5;
  }

  while (v5 != v4);
  return v7 == 0;
}

uint64_t PPParserGetCharacter(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 320);
  if (v2 == *(a1 + 336))
  {
    return 1;
  }

  v4 = 1;
  while (1)
  {
    v5 = v4;
    *a2 = *(*a1 + v2);
    v2 = *(a1 + 320) + 1;
    *(a1 + 320) = v2;
    if (*a2 != 10)
    {
      break;
    }

    v4 = 0;
    ++*(a1 + 324);
    if (v2 == *(a1 + 336))
    {
      *a2 = 32;
      break;
    }
  }

  v3 = 0;
  if ((v5 & 1) == 0)
  {
    *a2 = 32;
    --*(a1 + 320);
  }

  return v3;
}

uint64_t PPParserReturnCharacter(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 320);
  if (!v2)
  {
    return 1;
  }

  v3 = 1;
  while (1)
  {
    v4 = v3;
    *a2 = *(*a1 + (v2 - 1));
    v2 = *(a1 + 320) - 1;
    *(a1 + 320) = v2;
    if (*a2 != 10)
    {
      break;
    }

    v3 = 0;
    --*(a1 + 324);
    if (!v2)
    {
      *a2 = 32;
      break;
    }
  }

  v5 = 0;
  if ((v4 & 1) == 0)
  {
    *a2 = 32;
    ++*(a1 + 320);
  }

  return v5;
}

uint64_t PPParserGetPart(uint64_t a1, char *a2, int a3)
{
  v6 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v17 = *(a1 + 320);
  while (!PPParserGetCharacter(a1, &a2[v6]) && a2[v6] != 32)
  {
    if (++v6 == 255)
    {
      result = 0;
      a2[255] = 0;
      goto LABEL_12;
    }
  }

  result = 0;
  a2[v6] = 0;
  if (v6 && v6 != 255)
  {
    if (a3 && (Macro = PPParserScopeFindMacro(*(a1 + 32), a2)) != 0 && !*(Macro + 16))
    {
      memset(__src, 0, sizeof(__src));
      ReplaceString = PPParserMacroGetReplaceString(Macro, v9, 0, __src);
      v12 = ReplaceString + *(a1 + 336);
      v13 = malloc_type_calloc(v12 - v6, 1uLL, 0x1116B6A2uLL);
      if (!v13)
      {
        abort();
      }

      v14 = v13;
      v15 = ~v6 + v12;
      memmove(v13, *a1, v17);
      v16 = &v14[v17];
      memmove(v16, __src, ReplaceString);
      memmove(&v16[ReplaceString], (*a1 + *(a1 + 320)), (*(a1 + 336) - *(a1 + 320)));
      free(*a1);
      *(a1 + 336) = v15;
      *a1 = v14;
      *(a1 + 320) = v17;
      result = PPParserGetPart(a1, a2, 0);
    }

    else
    {
      result = v6;
    }
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserReturnPart(uint64_t a1)
{
  v4 = 0;
  if (PPParserReturnCharacter(a1, &v4) || PPParserReturnCharacter(a1, &v4))
  {
    return 0;
  }

  v2 = 0;
  while (v4 != 32)
  {
    v2 = (v2 + 1);
    if (PPParserReturnCharacter(a1, &v4))
    {
      return v2;
    }
  }

  PPParserGetCharacter(a1, &v4);
  return v2;
}

uint64_t PPParserDeclareNVAddressRegisters(uint64_t a1)
{
  v2 = PPParserIdentifierCreate();
  PPParserIdentifierSetName(v2, "A0");
  *(v2 + 3) = 0xFFFFFFFF00000000;
  v3 = *(a1 + 32);

  return PPParserScopeAddIdentifier(v3, v2);
}

uint64_t PPParserGetInteger(uint64_t a1, _DWORD *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v7 = 0;
  Part = PPParserGetPart(a1, v8, 1);
  if (Part)
  {
    v4 = Part;
    *a2 = strtol_l(v8, &v7, 0, 0);
    if (v7 == &v8[v4])
    {
      result = 0;
    }

    else
    {
      result = 21;
    }
  }

  else
  {
    result = 46;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserGetScalars(uint64_t a1, float *a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v12 = 0;
  Part = PPParserGetPart(a1, v13, 1);
  if (Part)
  {
    v7 = Part;
    v8 = (a3 - 1) + 1;
    while (1)
    {
      v9 = glp_strtod(v13, &v12);
      *a2 = v9;
      if (v12 != (v13 + v7))
      {
        result = 21;
        goto LABEL_12;
      }

      if (!--v8)
      {
        break;
      }

      if (!PPParserGetPart(a1, v13, 0))
      {
        goto LABEL_8;
      }

      if (LOBYTE(v13[0]) != 44)
      {
        PPParserReturnPart(a1);
        break;
      }

      ++a2;
      v12 = 0;
      v7 = PPParserGetPart(a1, v13, 1);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    result = 46;
  }

LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseOptionIdentifier(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  memset(v32, 0, sizeof(v32));
  if (!PPParserGetPart(a1, v32, 0))
  {
    result = 46;
    goto LABEL_126;
  }

  if ((*(a1 + 368) & 2) == 0)
  {
    if (*&v32[0] == 0x69736F705F425241 && *(&v32[0] + 1) == 0x766E695F6E6F6974 && *(v32 + 15) == 0x746E6169726176)
    {
      *(a1 + 380) |= 1u;
      if ((*(a1 + 376) & 1) == 0)
      {
        (*(a1 + 224))(a1, 0);
        v31 = xmmword_23A3009B0;
        (*(a1 + 208))(a1, &v31);
      }

      goto LABEL_125;
    }

    if (*&v32[0] == 0x65747265765F564ELL && *(&v32[0] + 1) == 0x6172676F72705F78 && *(v32 + 11) == 0x326D6172676F72)
    {
      *(a1 + 368) = 49;
      (*(a1 + 224))(a1, 10);
      goto LABEL_125;
    }

    if (*&v32[0] == 0x65747265765F564ELL && *(&v32[0] + 1) == 0x6172676F72705F78 && *(v32 + 11) == 0x336D6172676F72)
    {
      *(a1 + 368) = 52;
      (*(a1 + 224))(a1, 11);
      goto LABEL_125;
    }

    if (*&v32[0] == 0x65765F454C505041 && *(&v32[0] + 1) == 0x696F705F78657472 && *&v32[1] == 0x657A69735F746ELL)
    {
      result = 0;
      *(a1 + 379) |= 8u;
      goto LABEL_126;
    }

    goto LABEL_31;
  }

  if (*&v32[0] == 0x5F676F665F425241 && DWORD2(v32[0]) == 7370853)
  {
    v29 = *(a1 + 381) | 2;
    if (v29 != 2)
    {
      goto LABEL_121;
    }

    result = 0;
LABEL_112:
    *(a1 + 381) = v29;
    goto LABEL_126;
  }

  if (*&v32[0] == 0x5F676F665F425241 && *(v32 + 5) == 0x327078655F676FLL)
  {
    if (*(a1 + 381) != 3 && *(a1 + 381))
    {
      goto LABEL_121;
    }

    result = 0;
    LOBYTE(v29) = 3;
    goto LABEL_112;
  }

  if (*&v32[0] == 0x5F676F665F425241 && *(v32 + 7) == 0x7261656E696C5FLL)
  {
    if (*(a1 + 381) > 1u)
    {
      goto LABEL_121;
    }

    result = 0;
    LOBYTE(v29) = 1;
    goto LABEL_112;
  }

  if (!(*&v32[0] ^ 0x6F665F454C505041 | *(&v32[0] + 1) ^ 0x64656E6769735F67 | LOBYTE(v32[1])))
  {
    result = 0;
    *(a1 + 385) = 1;
    goto LABEL_126;
  }

  if (*&v32[0] == 0x636572705F425241 && *(&v32[0] + 1) == 0x69685F6E6F697369 && *&v32[1] == 0x65747361665F746ELL && *(&v32[1] + 3) == 0x74736574736166)
  {
    if ((*(a1 + 382) | 4) == 4)
    {
      *(a1 + 382) = 4;
      (*(a1 + 224))(a1, 4);
      goto LABEL_125;
    }

LABEL_121:
    result = 39;
    goto LABEL_126;
  }

  if (*&v32[0] == 0x636572705F425241 && *(&v32[0] + 1) == 0x69685F6E6F697369 && *&v32[1] == 0x736563696E5F746ELL && WORD4(v32[1]) == 116)
  {
    if (*(a1 + 382) == 5 || !*(a1 + 382))
    {
      *(a1 + 382) = 5;
      (*(a1 + 224))(a1, 5);
      goto LABEL_125;
    }

    goto LABEL_121;
  }

  if (*&v32[0] == 0x6D676172665F564ELL && *(&v32[0] + 1) == 0x676F72705F746E65 && LODWORD(v32[1]) == 7168370)
  {
    *(a1 + 368) = 51;
    (*(a1 + 224))(a1, 8);
    goto LABEL_125;
  }

  if (*&v32[0] == 0x6D676172665F564ELL && *(&v32[0] + 1) == 0x676F72705F746E65 && *(v32 + 13) == 0x326D6172676F72)
  {
    *(a1 + 368) = 54;
    (*(a1 + 224))(a1, 9);
    PPParserDeclareNVAddressRegisters(a1);
    goto LABEL_125;
  }

  if (*&v32[0] == 0x676172665F425241 && *(&v32[0] + 1) == 0x6F72705F746E656DLL && *&v32[1] == 0x6168735F6D617267 && DWORD2(v32[1]) == 7827300)
  {
    *(a1 + 384) = 1;
    (*(a1 + 224))(a1, 13);
    goto LABEL_125;
  }

  if (!(*&v32[0] ^ 0x776172645F425241 | *(&v32[0] + 1) ^ 0x737265666675625FLL | LOBYTE(v32[1])) || !(*&v32[0] ^ 0x776172645F495441 | *(&v32[0] + 1) ^ 0x737265666675625FLL | LOBYTE(v32[1])))
  {
    *(a1 + 383) = 1;
    (*(a1 + 224))(a1, 12);
    goto LABEL_125;
  }

LABEL_31:
  if (!(*&v32[0] ^ 0x6F6E5F454C505041 | *(&v32[0] + 1) ^ 0x656D69746E75725FLL | *&v32[1] ^ 0x656C69706D6F635FLL | BYTE8(v32[1])))
  {
LABEL_125:
    result = 0;
    goto LABEL_126;
  }

  if (*&v32[0] == 0x70735F454C505041 && *(&v32[0] + 1) == 0x706F5F6C61696365 && LOWORD(v32[1]) == 115)
  {
    result = 0;
    *(a1 + 380) |= 2u;
  }

  else
  {
    result = 5;
  }

LABEL_126:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseBlock(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  if (!PPParserGetPart(a1, v13, 0))
  {
    goto LABEL_22;
  }

  if (LODWORD(v13[0]) != 1380013139 || WORD2(v13[0]) != 84)
  {
    if (LODWORD(v13[0]) != 4476485)
    {
      result = 7;
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  v4 = PPParserScopeCreate();
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (!v6)
  {
    v6 = v4;
  }

  *(a1 + 24) = v6;
  if (v5)
  {
    *(v5 + 48) = v4;
    v4[5] = v5;
  }

  *(a1 + 32) = v4;
  if (LODWORD(v13[0]) == 4476485)
  {
LABEL_13:
    v8 = (a1 + 32);
    v7 = *(a1 + 32);
    v9 = v7[5];
    v10 = v7[6];
    v11 = (a1 + 24);
    if (v9)
    {
      v11 = (v9 + 48);
    }

    *v11 = v10;
    if (v10)
    {
      v8 = (v10 + 40);
    }

    *v8 = v9;
    PPParserScopeFree(v7);
  }

  if (!PPParserGetPart(a1, v13, 0))
  {
LABEL_22:
    result = 46;
    goto LABEL_23;
  }

  if (LOBYTE(v13[0]) == 59)
  {
    result = 0;
  }

  else
  {
    result = 30;
  }

LABEL_23:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseArray(uint64_t a1, _DWORD *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  if (!PPParserGetPart(a1, v6, 0))
  {
    goto LABEL_9;
  }

  if (LOBYTE(v6[0]) != 91)
  {
    result = 11;
    goto LABEL_11;
  }

  result = PPParserGetInteger(a1, a2);
  if (!result)
  {
    if ((*a2 & 0x80000000) != 0)
    {
      result = 35;
      goto LABEL_11;
    }

    if (PPParserGetPart(a1, v6, 0))
    {
      if (LOBYTE(v6[0]) == 93)
      {
        result = 0;
      }

      else
      {
        result = 11;
      }

      goto LABEL_11;
    }

LABEL_9:
    result = 46;
  }

LABEL_11:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseDefaultArray(uint64_t a1, _DWORD *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  if (!PPParserGetPart(a1, v6, 0))
  {
    goto LABEL_13;
  }

  if (LOBYTE(v6[0]) != 91)
  {
    result = 11;
    goto LABEL_14;
  }

  if (!PPParserGetPart(a1, v6, 0))
  {
    goto LABEL_13;
  }

  if (LOBYTE(v6[0]) == 93)
  {
    result = 0;
    *a2 = 0;
    goto LABEL_14;
  }

  PPParserReturnPart(a1);
  result = PPParserGetInteger(a1, a2);
  if (result)
  {
    goto LABEL_14;
  }

  if ((*a2 & 0x80000000) != 0)
  {
    result = 35;
    goto LABEL_14;
  }

  if (!PPParserGetPart(a1, v6, 0))
  {
LABEL_13:
    result = 46;
    goto LABEL_14;
  }

  if (LOBYTE(v6[0]) == 93)
  {
    result = 0;
  }

  else
  {
    result = 11;
  }

LABEL_14:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseRangeArray(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  if (!PPParserGetPart(a1, v8, 0))
  {
    goto LABEL_17;
  }

  if (LOBYTE(v8[0]) != 91)
  {
    goto LABEL_9;
  }

  result = PPParserGetInteger(a1, a2);
  if (!result)
  {
    if ((*a2 & 0x80000000) != 0)
    {
      goto LABEL_12;
    }

    if (PPParserGetPart(a1, v8, 0))
    {
      if (LOBYTE(v8[0]) == 93)
      {
        result = 0;
        *a3 = *a2;
        goto LABEL_18;
      }

      if (LOWORD(v8[0]) ^ 0x2E2E | BYTE2(v8[0]))
      {
LABEL_9:
        result = 11;
        goto LABEL_18;
      }

      result = PPParserGetInteger(a1, a3);
      if (result)
      {
        goto LABEL_18;
      }

      if (*a3 < *a2)
      {
LABEL_12:
        result = 35;
        goto LABEL_18;
      }

      if (PPParserGetPart(a1, v8, 0))
      {
        if (LOBYTE(v8[0]) == 93)
        {
          result = 0;
        }

        else
        {
          result = 11;
        }

        goto LABEL_18;
      }
    }

LABEL_17:
    result = 46;
  }

LABEL_18:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseIndirectArray(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__s2 = 0u;
  v17 = 0u;
  if (!PPParserGetPart(a1, __s2, 0))
  {
    goto LABEL_24;
  }

  if (__s2[0] != 91)
  {
    result = 11;
    goto LABEL_25;
  }

  if (!PPParserGetInteger(a1, a3))
  {
    if ((*a3 & 0x80000000) != 0)
    {
      result = 35;
      goto LABEL_25;
    }

    goto LABEL_10;
  }

  v15 = 0;
  PPParserReturnPart(a1);
  if (!PPParserGetPart(a1, __s2, 0))
  {
    goto LABEL_24;
  }

  Identifier = PPParserScopeFindIdentifier(*(a1 + 32), __s2);
  if (!Identifier)
  {
    result = 26;
    goto LABEL_25;
  }

  v7 = Identifier;
  if (*(Identifier + 16) != -1)
  {
    result = 22;
    goto LABEL_25;
  }

  Part = PPParserGetPart(a1, __s2, 0);
  if (!Part)
  {
    goto LABEL_24;
  }

  v10 = Part;
  result = 13;
  if (v10 == 1 && __s2[0] == 46)
  {
    v11 = PPParserGetPart(a1, __s2, 0);
    if (!v11)
    {
      goto LABEL_24;
    }

    if (v11 != 1)
    {
LABEL_23:
      result = 13;
      goto LABEL_25;
    }

    if ((*(a1 + 368) & 0x10) != 0)
    {
      result = 13;
      if (__s2[0] > 0x78u)
      {
        if (__s2[0] == 121)
        {
          v13 = *a2 & 0xFFFFFFFFFFFFFFF3 | 4;
        }

        else
        {
          if (__s2[0] != 122)
          {
            goto LABEL_25;
          }

          v13 = *a2 & 0xFFFFFFFFFFFFFFF3 | 8;
        }

        goto LABEL_35;
      }

      if (__s2[0] == 119)
      {
        v13 = *a2 | 0xC;
        goto LABEL_35;
      }

      if (__s2[0] != 120)
      {
        goto LABEL_25;
      }
    }

    else if (__s2[0] != 120)
    {
      goto LABEL_23;
    }

    v13 = *a2 & 0xFFFFFFFFFFFFFFF3;
LABEL_35:
    *a2 = v13;
    if (PPParserGetInteger(a1, &v15))
    {
      PPParserReturnPart(a1);
      v15 = 0;
    }

    if ((*(a1 + 368) & 0x10) != 0)
    {
      if ((v15 - 256) < 0xFFFFFE00)
      {
        goto LABEL_39;
      }
    }

    else if ((v15 - 64) <= 0xFFFFFF7F)
    {
LABEL_39:
      result = 36;
      goto LABEL_25;
    }

    v14 = *a2 & 0xFFFFFFFF00FFFFFFLL | (v15 << 24);
    *a2 = v14;
    *a2 = v14 & 0xFFFFFFFFFFFFFFFCLL | (2 * (*(v7 + 12) & 1)) | 1;
LABEL_10:
    if (PPParserGetPart(a1, __s2, 0))
    {
      if (__s2[0] == 93)
      {
        result = 0;
      }

      else
      {
        result = 11;
      }

      goto LABEL_25;
    }

LABEL_24:
    result = 46;
  }

LABEL_25:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseAddressDeclaration(uint64_t a1)
{
  v2 = 0;
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__s = 0u;
  v11 = 0u;
  do
  {
    if (!PPParserGetPart(a1, __s, 0))
    {
LABEL_10:
      result = 46;
      goto LABEL_17;
    }

    if (PPParserValidateName(a1, __s))
    {
      result = 18;
      goto LABEL_17;
    }

    v3 = PPParserIdentifierCreate();
    PPParserIdentifierSetName(v3, __s);
    v4 = *(a1 + 32);
    *(v3 + 3) = v2 + *(v4 + 32);
    *(v3 + 4) = -1;
    if (PPParserScopeAddIdentifier(v4, v3))
    {
      PPParserIdentifierFree(v3);
      result = 28;
      goto LABEL_17;
    }

    if (!PPParserGetPart(a1, __s, 0))
    {
      goto LABEL_10;
    }

    ++v2;
  }

  while (__s[0] == 44);
  if (__s[0] == 59)
  {
    v5 = *(*(a1 + 32) + 32);
    if ((v5 + v2) <= *(a1 + 284))
    {
      for (; v2; --v2)
      {
        v9 = v5;
        (*(a1 + 184))(a1, &v9);
        v7 = *(a1 + 32);
        v5 = *(v7 + 32) + 1;
        *(v7 + 32) = v5;
      }

      result = 0;
    }

    else
    {
      result = 56;
    }
  }

  else
  {
    result = 31;
  }

LABEL_17:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserValidateName(uint64_t a1, char *__s)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v4 = &fpDclList;
  v5 = *(a1 + 368);
  if ((v5 & 2) == 0)
  {
    v4 = &vpDclList;
  }

  v6 = *v4;
  if (!*v4)
  {
LABEL_7:
    if ((v5 | 2) == 2)
    {
      v9 = strlen(__s);
      result = 0;
      if (v9 > 8 || ((1 << v9) & 0x198) == 0)
      {
        goto LABEL_65;
      }
    }

    v11 = v31;
    memset(v31, 0, 32);
    if ((v5 & 2) != 0)
    {
      v12 = &OpsList_ARBfp10;
    }

    else
    {
      v12 = &OpsList_ARBvp10;
    }

    v30 = v12;
    v13 = &OpsList_NVvp20;
    v14 = 1;
    if (v5 > 51)
    {
      v11 = &v31[1];
      if (v5 == 54)
      {
        v31[0] = &OpsList_NVfp10;
        v14 = 3;
        v13 = &OpsList_NVfp20;
      }

      else
      {
        if (v5 != 52)
        {
          goto LABEL_23;
        }

        v31[0] = &OpsList_NVvp20;
        v14 = 3;
        v13 = &OpsList_NVvp30;
      }
    }

    else if (v5 == 49)
    {
      v14 = 2;
    }

    else
    {
      if (v5 != 51)
      {
        goto LABEL_23;
      }

      v14 = 2;
      v13 = &OpsList_NVfp10;
    }

    *v11 = v13;
LABEL_23:
    if ((*(a1 + 380) & 2) != 0)
    {
      v15 = &OpsList_fpSpecial;
      if ((v5 & 2) == 0)
      {
        v15 = &OpsList_vpSpecial;
      }

      v31[v14++ - 1] = v15;
    }

    v16 = 0;
    v31[v14 - 1] = 0;
    while (!*v12)
    {
LABEL_62:
      v12 = v31[++v16 - 1];
      if (!v12)
      {
        result = 0;
        goto LABEL_65;
      }
    }

    while (1)
    {
      *__s2 = 0;
      v29 = 0;
      v17 = *v12;
      if (!strcmp(__s, *v12))
      {
        goto LABEL_64;
      }

      v18 = *(a1 + 368);
      if ((v18 & 0x10) != 0)
      {
        sprintf_l(__s2, 0, "%sC", v17);
        if (!strcmp(__s, __s2))
        {
          goto LABEL_64;
        }

        v18 = *(a1 + 368);
        if (v18 == 52)
        {
          sprintf_l(__s2, 0, "%sC0", *v12);
          if (!strcmp(__s, __s2))
          {
            goto LABEL_64;
          }

          sprintf_l(__s2, 0, "%sC1", *v12);
          if (!strcmp(__s, __s2))
          {
            goto LABEL_64;
          }

          sprintf_l(__s2, 0, "%s_SAT", *v12);
          if (!strcmp(__s, __s2))
          {
            goto LABEL_64;
          }

          sprintf_l(__s2, 0, "%sC_SAT", *v12);
          if (!strcmp(__s, __s2))
          {
            goto LABEL_64;
          }

          sprintf_l(__s2, 0, "%sC0_SAT", *v12);
          if (!strcmp(__s, __s2))
          {
            goto LABEL_64;
          }

          sprintf_l(__s2, 0, "%sC1_SAT", *v12);
          if (!strcmp(__s, __s2))
          {
            goto LABEL_64;
          }

          v18 = *(a1 + 368);
        }
      }

      if ((v18 & 2) != 0)
      {
        sprintf_l(__s2, 0, "%s_SAT", *v12);
        if (!strcmp(__s, __s2))
        {
          goto LABEL_64;
        }

        if ((*(a1 + 368) & 0x10) != 0)
        {
          sprintf_l(__s2, 0, "%sC_SAT", *v12);
          if (!strcmp(__s, __s2))
          {
            goto LABEL_64;
          }

          v19 = strlen(__s);
          v20 = *v12;
          v21 = strlen(*v12);
          if (v21 + 1 == v19)
          {
            sprintf_l(__s2, 0, "%sR", v20);
            if (!strcmp(__s, __s2))
            {
              goto LABEL_64;
            }

            sprintf_l(__s2, 0, "%sH", *v12);
            if (!strcmp(__s, __s2))
            {
              goto LABEL_64;
            }

            v22 = *v12;
            sprintf_l(__s2, 0, "%sX");
LABEL_60:
            if (!strcmp(__s, __s2))
            {
              goto LABEL_64;
            }

            goto LABEL_61;
          }

          if (v21 + 2 == v19)
          {
            sprintf_l(__s2, 0, "%sRC", v20);
            if (!strcmp(__s, __s2))
            {
              goto LABEL_64;
            }

            sprintf_l(__s2, 0, "%sHC", *v12);
            if (!strcmp(__s, __s2))
            {
              goto LABEL_64;
            }

            v23 = *v12;
            sprintf_l(__s2, 0, "%sXC");
            goto LABEL_60;
          }

          if (v21 + 5 == v19)
          {
            sprintf_l(__s2, 0, "%sR_SAT", v20);
            if (!strcmp(__s, __s2))
            {
              goto LABEL_64;
            }

            sprintf_l(__s2, 0, "%sH_SAT", *v12);
            if (!strcmp(__s, __s2))
            {
              goto LABEL_64;
            }

            v24 = *v12;
            sprintf_l(__s2, 0, "%sX_SAT");
            goto LABEL_60;
          }

          if (v21 + 6 == v19)
          {
            sprintf_l(__s2, 0, "%sRC_SAT", v20);
            if (!strcmp(__s, __s2))
            {
              goto LABEL_64;
            }

            sprintf_l(__s2, 0, "%sHC_SAT", *v12);
            if (!strcmp(__s, __s2))
            {
              goto LABEL_64;
            }

            v25 = *v12;
            sprintf_l(__s2, 0, "%sXC_SAT");
            goto LABEL_60;
          }
        }
      }

LABEL_61:
      v26 = v12[2];
      v12 += 2;
      if (!v26)
      {
        goto LABEL_62;
      }
    }
  }

  v7 = (v4 + 2);
  while (strcmp(__s, v6))
  {
    v8 = *v7;
    v7 += 2;
    v6 = v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

LABEL_64:
  result = 18;
LABEL_65:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseTempDeclaration(uint64_t a1, int a2)
{
  v4 = 0;
  v35 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *__s = 0u;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    v5 = v4;
    if (!PPParserGetPart(a1, __s, 0))
    {
LABEL_14:
      result = 46;
      goto LABEL_22;
    }

    if (PPParserValidateName(a1, __s))
    {
      result = 18;
      goto LABEL_22;
    }

    v6 = PPParserIdentifierCreate();
    PPParserIdentifierSetName(v6, __s);
    *(v6 + 6) = a2;
    v7 = *(a1 + 32);
    *(v6 + 3) = *(v7 + 36) + v5;
    *(v6 + 4) = 1;
    if (PPParserScopeAddIdentifier(v7, v6))
    {
      PPParserIdentifierFree(v6);
      result = 28;
      goto LABEL_22;
    }

    if (!PPParserGetPart(a1, __s, 0))
    {
      goto LABEL_14;
    }

    v8 = __s[0];
    if (__s[0] == 91)
    {
      PPParserReturnPart(a1);
      result = PPParserParseArray(a1, &v18);
      if (result)
      {
        goto LABEL_22;
      }

      *(v6 + 20) = 1;
      *(v6 + 2) = v18;
      if (!PPParserGetPart(a1, __s, 0))
      {
        goto LABEL_14;
      }

      v8 = __s[0];
    }

    v10 = *(v6 + 2);
    v4 = v10 + v5;
  }

  while (v8 == 44);
  if (v8 == 59)
  {
    v11 = *(*(a1 + 32) + 36);
    if (v11 + v4 <= *(a1 + 272))
    {
      if (v4)
      {
        v12 = a2 & 7 | 0xC0u;
        v13 = v5 + v10;
        do
        {
          v16 = v12;
          v17 = v11;
          (*(a1 + 176))(a1, &v16);
          v14 = *(a1 + 32);
          v11 = *(v14 + 36) + 1;
          *(v14 + 36) = v11;
          --v13;
        }

        while (v13);
      }

      result = 0;
    }

    else
    {
      result = 52;
    }
  }

  else
  {
    result = 31;
  }

LABEL_22:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseParamBinding(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v138 = *MEMORY[0x277D85DE8];
  memset(v137, 0, sizeof(v137));
  v135 = 0;
  v134 = 0uLL;
  v6 = *(a1 + 368);
  if (!a2)
  {
    goto LABEL_4;
  }

  if (PPParserGetPart(a1, v137, 0))
  {
    if (LOBYTE(v137[0]) == 123)
    {
LABEL_4:
      v7 = 0;
      v8 = 0;
      v9 = 0x6D6172676F7270;
      v133 = (*(a1 + 344) << 16);
      v10 = -1;
      v132 = -1;
      while (1)
      {
        v11 = v7;
        if (!PPParserGetPart(a1, v137, 1))
        {
          goto LABEL_415;
        }

        v12 = *(a1 + 344);
        v134 = xmmword_23A3009C0;
        DWORD2(v134) = v12;
        if (*&v137[0] == v9)
        {
          Part = PPParserGetPart(a1, v137, 0);
          if (!Part)
          {
            goto LABEL_415;
          }

          v17 = Part;
          result = 10;
          if (v17 != 1 || LOBYTE(v137[0]) != 46)
          {
            goto LABEL_423;
          }

          if (!PPParserGetPart(a1, v137, 0))
          {
            goto LABEL_415;
          }

          if (LODWORD(v137[0]) == 7761509)
          {
            *&v134 = v134 & 0xFFFFFFFFFFFFE0FFLL | 0x500;
            if (v4)
            {
              result = PPParserParseRangeArray(a1, &v135 + 1, &v135);
            }

            else
            {
              result = PPParserParseArray(a1, &v135 + 1);
              LODWORD(v135) = HIDWORD(v135);
            }

            if (v10 == -1)
            {
              v10 = (v134 >> 8) & 0x1F;
            }

            if (result)
            {
              goto LABEL_423;
            }

            v34 = HIDWORD(v135);
            if (HIDWORD(v135) >= *(a1 + 256))
            {
LABEL_417:
              result = 47;
              goto LABEL_423;
            }

            v35 = v4;
            v36 = a3;
            v37 = v6;
            v38 = v9;
            v8 |= v10 != ((v134 >> 8) & 0x1F);
            v39 = v135;
            v11 = v11 + v135 - HIDWORD(v135);
            while (1)
            {
              *&v134 = v134 & 0xFFFFC000FFFFFFFFLL | ((v34 & 0x3FFF) << 32);
              (*(a1 + 192))(a1, &v134);
              if (v39 == v34)
              {
                break;
              }

              v40 = *(a1 + 344) + 1;
              *(a1 + 344) = v40;
              DWORD2(v134) = v40;
              if (++v34 >= *(a1 + 256))
              {
                goto LABEL_417;
              }
            }

            v9 = v38;
            v6 = v37;
            a3 = v36;
            v4 = v35;
          }

          else if (LODWORD(v137[0]) == 1633906540 && WORD2(v137[0]) == 108)
          {
            *&v134 = v134 & 0xFFFFFFFFFFFFE0FFLL | 0x100;
            if (v4)
            {
              result = PPParserParseRangeArray(a1, &v135 + 1, &v135);
            }

            else
            {
              result = PPParserParseArray(a1, &v135 + 1);
              LODWORD(v135) = HIDWORD(v135);
            }

            if (v10 == -1)
            {
              v10 = (v134 >> 8) & 0x1F;
            }

            v8 |= v10 != ((v134 >> 8) & 0x1F);
            if (v132 != -1)
            {
              v8 |= v132 + 1 != HIDWORD(v135);
            }

            if (result)
            {
              goto LABEL_423;
            }

            v49 = HIDWORD(v135);
            if (HIDWORD(v135) >= *(a1 + 260))
            {
              goto LABEL_416;
            }

            v132 = v135;
            v11 = v11 + v135 - HIDWORD(v135);
            while (1)
            {
              *&v134 = v134 & 0xFFFFC000FFFFFFFFLL | ((v49 & 0x3FFF) << 32);
              (*(a1 + 192))(a1, &v134);
              if (v132 == v49)
              {
                break;
              }

              v50 = *(a1 + 344) + 1;
              *(a1 + 344) = v50;
              DWORD2(v134) = v50;
              if (++v49 >= *(a1 + 260))
              {
                goto LABEL_416;
              }
            }
          }

          else
          {
            if ((*(a1 + 380) & 2) == 0 || *&v137[0] != 0x6D726F66696E75)
            {
              break;
            }

            *&v134 = v134 & 0xFFFFFFFFFFFFE0FFLL | 0x200;
            if (v4)
            {
              result = PPParserParseRangeArray(a1, &v135 + 1, &v135);
            }

            else
            {
              result = PPParserParseArray(a1, &v135 + 1);
              LODWORD(v135) = HIDWORD(v135);
            }

            if (v10 == -1)
            {
              v10 = (v134 >> 8) & 0x1F;
            }

            v8 |= v10 != ((v134 >> 8) & 0x1F);
            if (v132 != -1)
            {
              v8 |= v132 + 1 != HIDWORD(v135);
            }

            if (result)
            {
              goto LABEL_423;
            }

            v41 = HIDWORD(v135);
            if (HIDWORD(v135) >= *(a1 + 260))
            {
LABEL_416:
              result = 48;
              goto LABEL_423;
            }

            v132 = v135;
            v11 = v11 + v135 - HIDWORD(v135);
            while (1)
            {
              *&v134 = v134 & 0xFFFFC000FFFFFFFFLL | ((v41 & 0x3FFF) << 32);
              (*(a1 + 192))(a1, &v134);
              if (v132 == v41)
              {
                break;
              }

              v42 = *(a1 + 344) + 1;
              *(a1 + 344) = v42;
              DWORD2(v134) = v42;
              if (++v41 >= *(a1 + 260))
              {
                goto LABEL_416;
              }
            }
          }

          goto LABEL_374;
        }

        if (LODWORD(v137[0]) != 1952543859 || WORD2(v137[0]) != 101)
        {
          if (LOBYTE(v137[0]) == 123)
          {
            *&v134 = 1728;
            if (v10 == -1)
            {
              v10 = 6;
            }

            v136 = xmmword_23A3009D0;
            result = PPParserGetScalars(a1, &v136, 4);
            if (result)
            {
              goto LABEL_423;
            }

            if (!PPParserGetPart(a1, v137, 0))
            {
              goto LABEL_415;
            }

            if (LOBYTE(v137[0]) != 125)
            {
              break;
            }

            v8 |= v10 != 6;
            (*(a1 + 232))(a1, &v136);
            v15 = *(a1 + 356);
            *(a1 + 356) = v15 + 1;
            WORD2(v134) = v15;
            (*(a1 + 192))(a1, &v134);
            goto LABEL_374;
          }

          v136 = 0uLL;
          PPParserReturnPart(a1);
          *&v134 = 1728;
          if (PPParserGetScalars(a1, &v136, 1))
          {
            break;
          }

          if (v10 == -1)
          {
            v10 = 6;
          }

          v8 |= v10 != 6;
          DWORD1(v136) = v136;
          DWORD2(v136) = v136;
          HIDWORD(v136) = v136;
          (*(a1 + 232))(a1, &v136);
          v26 = *(a1 + 356);
          *(a1 + 356) = v26 + 1;
          WORD2(v134) = v26;
          goto LABEL_373;
        }

        if (v10 == -1)
        {
          v10 = 5;
        }

        v19 = PPParserGetPart(a1, v137, 0);
        if (!v19)
        {
          goto LABEL_415;
        }

        v20 = v19;
        result = 10;
        if (v20 != 1 || LOBYTE(v137[0]) != 46)
        {
          goto LABEL_423;
        }

        if (!PPParserGetPart(a1, v137, 0))
        {
          goto LABEL_415;
        }

        v8 |= v10 != 5;
        if (!(*&v137[0] ^ 0x6C6169726574616DLL | BYTE8(v137[0])))
        {
          *&v134 = v134 & 0xFFFFFFFEFFFFE0FFLL | 0x1200;
          v27 = PPParserGetPart(a1, v137, 0);
          if (!v27)
          {
            goto LABEL_415;
          }

          v28 = v27;
          result = 10;
          if (v28 != 1 || LOBYTE(v137[0]) != 46)
          {
            goto LABEL_423;
          }

          if (!PPParserGetPart(a1, v137, 0))
          {
            goto LABEL_415;
          }

          if (LODWORD(v137[0]) == 1852797542 && WORD2(v137[0]) == 116)
          {
LABEL_81:
            v30 = PPParserGetPart(a1, v137, 0);
            if (!v30)
            {
              goto LABEL_415;
            }

            v31 = v30;
            result = 10;
            if (v31 != 1 || LOBYTE(v137[0]) != 46)
            {
              goto LABEL_423;
            }

            if (!PPParserGetPart(a1, v137, 0))
            {
              goto LABEL_415;
            }
          }

          else if (!(LODWORD(v137[0]) ^ 0x6B636162 | BYTE4(v137[0])))
          {
            *&v134 = v134 | 0x100000000;
            goto LABEL_81;
          }

          if (*&v137[0] == 0x746E6569626D61)
          {
            v33 = v134 & 0xFFFFFFF1FFFFFFFFLL;
          }

          else if (*&v137[0] == 0x65737566666964)
          {
            v33 = v134 & 0xFFFFFFF1FFFFFFFFLL | 0x200000000;
          }

          else if (*&v137[0] ^ 0x72616C7563657073 | BYTE8(v137[0]))
          {
            if (*&v137[0] ^ 0x6E6F697373696D65 | BYTE8(v137[0]))
            {
              if (*&v137[0] != 0x73656E696E696873 || WORD4(v137[0]) != 115)
              {
                break;
              }

              v33 = v134 & 0xFFFFFFF1FFFFFFFFLL | 0x800000000;
            }

            else
            {
              v33 = v134 & 0xFFFFFFF1FFFFFFFFLL | 0x600000000;
            }
          }

          else
          {
            v33 = v134 & 0xFFFFFFF1FFFFFFFFLL | 0x400000000;
          }

          goto LABEL_372;
        }

        if ((*(a1 + 380) & 2) != 0 && (*&v137[0] == 0x63736C616D726F6ELL ? (v21 = DWORD2(v137[0]) == 6646881) : (v21 = 0), v21))
        {
          v33 = v134 | 0x1F00;
        }

        else
        {
          if (LODWORD(v137[0]) == 1751607660 && WORD2(v137[0]) == 116)
          {
            *&v134 = v134 & 0xFFFFFFFFFFFFE0FFLL | 0x1000;
            result = PPParserParseArray(a1, &v135 + 1);
            if (result)
            {
              goto LABEL_423;
            }

            if (HIDWORD(v135) >= *(a1 + 308))
            {
              result = 61;
              goto LABEL_423;
            }

            BYTE4(v134) = BYTE4(v135);
            v43 = PPParserGetPart(a1, v137, 0);
            if (!v43)
            {
              goto LABEL_415;
            }

            v44 = v43;
            result = 10;
            if (v44 != 1 || LOBYTE(v137[0]) != 46)
            {
              goto LABEL_423;
            }

            if (!PPParserGetPart(a1, v137, 0))
            {
              goto LABEL_415;
            }

            if (*&v137[0] == 0x746E6569626D61)
            {
              v33 = v134 & 0xFFFFF0FFFFFFFFFFLL;
              goto LABEL_372;
            }

            if (*&v137[0] == 0x65737566666964)
            {
              v64 = v134 & 0xFFFFF0FFFFFFFFFFLL;
LABEL_205:
              v33 = v64 | 0x10000000000;
              goto LABEL_372;
            }

            if (!(*&v137[0] ^ 0x72616C7563657073 | BYTE8(v137[0])))
            {
              v76 = v134 & 0xFFFFF0FFFFFFFFFFLL;
LABEL_259:
              v33 = v76 | 0x20000000000;
              goto LABEL_372;
            }

            if (!(*&v137[0] ^ 0x6E6F697469736F70 | BYTE8(v137[0])))
            {
              v33 = v134 & 0xFFFFF0FFFFFFFFFFLL | 0x30000000000;
              goto LABEL_372;
            }

            if (*&v137[0] == 0x7461756E65747461 && DWORD2(v137[0]) == 7237481)
            {
              v47 = v134;
              v48 = 5;
LABEL_326:
              v33 = v47 & 0xFFFFF0FFFFFFFFFFLL | ((v48 & 0xF) << 40);
              goto LABEL_372;
            }

            if (LODWORD(v137[0]) ^ 0x746F7073 | BYTE4(v137[0]))
            {
              if (!(LODWORD(v137[0]) ^ 0x666C6168 | BYTE4(v137[0])))
              {
                v33 = v134 & 0xFFFFF0FFFFFFFFFFLL | 0x60000000000;
                goto LABEL_372;
              }

              if (*&v137[0] != 0x6F747563746F7073 || *(v137 + 3) != 0x66666F74756374)
              {
                break;
              }

              v47 = v134;
              v48 = 9;
              goto LABEL_326;
            }

            v107 = PPParserGetPart(a1, v137, 0);
            if (!v107)
            {
              goto LABEL_415;
            }

            v108 = v107;
            result = 10;
            if (v108 != 1 || LOBYTE(v137[0]) != 46)
            {
              goto LABEL_423;
            }

            if (!PPParserGetPart(a1, v137, 0))
            {
              goto LABEL_415;
            }

            if (*&v137[0] != 0x6F69746365726964 || WORD4(v137[0]) != 110)
            {
              break;
            }

            v60 = v134 & 0xFFFFF0FFFFFFFFFFLL;
            goto LABEL_182;
          }

          if (*&v137[0] != 0x646F6D746867696CLL || *(v137 + 3) != 0x6C65646F6D7468)
          {
            if (*&v137[0] != 0x6F7270746867696CLL || WORD4(v137[0]) != 100)
            {
              if ((v6 & 2) != 0)
              {
                if ((*(a1 + 380) & 2) == 0)
                {
                  goto LABEL_188;
                }

                if (LODWORD(v137[0]) != 1735943540 || *(v137 + 3) != 7234919)
                {
                  goto LABEL_188;
                }
              }

              else if (LODWORD(v137[0]) != 1735943540 || *(v137 + 3) != 7234919)
              {
                if ((*(a1 + 380) & 2) != 0)
                {
LABEL_188:
                  if (LODWORD(v137[0]) == 1702389108 && *(v137 + 3) == 7761509)
                  {
                    *&v134 = v134 & 0xFFFFFF80FFFFE0FFLL | 0x1600;
                    v69 = PPParserGetPart(a1, v137, 0);
                    if (!v69)
                    {
                      goto LABEL_415;
                    }

                    v70 = LOBYTE(v137[0]);
                    if (LOBYTE(v137[0]) == 91)
                    {
                      PPParserReturnPart(a1);
                      result = PPParserParseArray(a1, &v135 + 1);
                      if (result)
                      {
                        goto LABEL_423;
                      }

                      *&v134 = v134 & 0xFFFFFF80FFFFFFFFLL | ((BYTE4(v135) & 0x7F) << 32);
                      if (HIDWORD(v135) >= *(a1 + 288))
                      {
LABEL_431:
                        result = 57;
                        goto LABEL_423;
                      }

                      v71 = PPParserGetPart(a1, v137, 0);
                      if (!v71)
                      {
                        goto LABEL_415;
                      }

                      v72 = v71;
                      v70 = LOBYTE(v137[0]);
                    }

                    else
                    {
                      v72 = v69;
                    }

                    result = 10;
                    if (v72 != 1 || v70 != 46)
                    {
                      goto LABEL_423;
                    }

                    if (!PPParserGetPart(a1, v137, 0))
                    {
                      goto LABEL_415;
                    }

                    v93 = WORD2(v137[0]);
                    v94 = LODWORD(v137[0]) == 1869377379;
                    v95 = 114;
                    goto LABEL_333;
                  }

                  if (LODWORD(v137[0]) != 6778726)
                  {
                    if ((v6 & 2) != 0)
                    {
                      if (LODWORD(v137[0]) == 1953523044 && WORD2(v137[0]) == 104)
                      {
LABEL_328:
                        *&v134 = v134 & 0xFFFFFFFFFFFFE0FFLL | 0x1E00;
                        v101 = PPParserGetPart(a1, v137, 0);
                        if (!v101)
                        {
                          goto LABEL_415;
                        }

                        v102 = v101;
                        result = 10;
                        if (v102 != 1 || LOBYTE(v137[0]) != 46)
                        {
                          goto LABEL_423;
                        }

                        if (!PPParserGetPart(a1, v137, 0))
                        {
                          goto LABEL_415;
                        }

                        v93 = WORD2(v137[0]);
                        v94 = LODWORD(v137[0]) == 1735287154;
                        v95 = 101;
LABEL_333:
                        if (!v94 || v93 != v95)
                        {
                          break;
                        }

                        goto LABEL_373;
                      }

                      if ((*(a1 + 380) & 2) == 0)
                      {
                        goto LABEL_270;
                      }
                    }

                    else if ((*(a1 + 380) & 2) != 0 && LODWORD(v137[0]) == 1953523044 && WORD2(v137[0]) == 104)
                    {
                      goto LABEL_328;
                    }

                    goto LABEL_265;
                  }

LABEL_231:
                  v77 = PPParserGetPart(a1, v137, 0);
                  if (!v77)
                  {
                    goto LABEL_415;
                  }

                  v78 = v77;
                  result = 10;
                  if (v78 != 1 || LOBYTE(v137[0]) != 46)
                  {
                    goto LABEL_423;
                  }

                  if (!PPParserGetPart(a1, v137, 0))
                  {
                    goto LABEL_415;
                  }

                  if (LODWORD(v137[0]) == 1869377379 && WORD2(v137[0]) == 114)
                  {
                    v81 = 6400;
                  }

                  else
                  {
                    if (LODWORD(v137[0]) != 1634886000 || *(v137 + 3) != 7564641)
                    {
                      break;
                    }

                    v81 = 6656;
                  }
                }

                else
                {
                  if (LODWORD(v137[0]) == 6778726)
                  {
                    goto LABEL_231;
                  }

LABEL_265:
                  if (!(LODWORD(v137[0]) ^ 0x70696C63 | BYTE4(v137[0])))
                  {
                    result = PPParserParseArray(a1, &v135 + 1);
                    if (result)
                    {
                      goto LABEL_423;
                    }

                    if (HIDWORD(v135) >= *(a1 + 304))
                    {
                      result = 60;
                      goto LABEL_423;
                    }

                    BYTE4(v134) = BYTE4(v135);
                    v98 = PPParserGetPart(a1, v137, 0);
                    if (!v98)
                    {
                      goto LABEL_415;
                    }

                    v99 = v98;
                    result = 10;
                    if (v99 != 1 || LOBYTE(v137[0]) != 46)
                    {
                      goto LABEL_423;
                    }

                    if (!PPParserGetPart(a1, v137, 0))
                    {
                      goto LABEL_415;
                    }

                    if (LODWORD(v137[0]) != 1851878512 || WORD2(v137[0]) != 101)
                    {
                      break;
                    }

                    v33 = v134 & 0xFFFFFFFFFFFFE0FFLL | 0x1800;
                    goto LABEL_372;
                  }

                  if (LODWORD(v137[0]) != 1852403568 || WORD2(v137[0]) != 116)
                  {
LABEL_270:
                    if (LODWORD(v137[0]) != 1920229741 || *(v137 + 3) != 7891314)
                    {
                      break;
                    }

                    *&v134 = v134 & 0xFFFFFCFFFFFFE0FFLL | 0xF00;
                    v87 = PPParserGetPart(a1, v137, 0);
                    if (!v87)
                    {
                      goto LABEL_415;
                    }

                    v88 = v87;
                    result = 10;
                    if (v88 != 1 || LOBYTE(v137[0]) != 46)
                    {
                      goto LABEL_423;
                    }

                    if (!PPParserGetPart(a1, v137, 0))
                    {
                      goto LABEL_415;
                    }

                    if (*&v137[0] != 0x6569766C65646F6DLL || WORD4(v137[0]) != 119)
                    {
                      if (*&v137[0] == 0x697463656A6F7270 && *(v137 + 3) == 0x6E6F697463656ALL)
                      {
                        v111 = v134 & 0xFFFF8FFFFFFFFFFFLL | 0x100000000000;
                      }

                      else if (LODWORD(v137[0]) == 7370349)
                      {
                        v111 = v134 & 0xFFFF8FFFFFFFFFFFLL;
                      }

                      else if (LODWORD(v137[0]) == 1869377379 && WORD2(v137[0]) == 114)
                      {
                        v111 = v134 & 0xFFFF8FFFFFFFFFFFLL | 0x200000000000;
                      }

                      else
                      {
                        if (*&v137[0] != 0x65727574786574)
                        {
                          if (*&v137[0] != v9)
                          {
                            break;
                          }

                          *&v134 = v134 & 0xFFFF8FFFFFFFFFFFLL | 0x500000000000;
                          result = PPParserParseArray(a1, &v135 + 1);
                          if (result)
                          {
                            goto LABEL_423;
                          }

                          v92 = BYTE4(v135);
                          if (HIDWORD(v135) >= *(a1 + 264))
                          {
                            result = 49;
                            goto LABEL_423;
                          }

LABEL_365:
                          BYTE4(v134) = v92;
LABEL_381:
                          v112 = PPParserGetPart(a1, v137, 0);
                          if (!v112)
                          {
                            goto LABEL_415;
                          }

                          v113 = LOBYTE(v137[0]);
                          if (v112 == 1 && LOBYTE(v137[0]) == 46)
                          {
                            if (!PPParserGetPart(a1, v137, 0))
                            {
                              goto LABEL_415;
                            }

                            if (*&v137[0] == 0x65737265766E69)
                            {
                              v115 = v134 & 0xFFFFFCFFFFFFFFFFLL | 0x20000000000;
                            }

                            else if (*&v137[0] == 0x736F70736E617274 && WORD4(v137[0]) == 101)
                            {
                              v115 = v134 & 0xFFFFFCFFFFFFFFFFLL | 0x10000000000;
                            }

                            else
                            {
                              if (*&v137[0] ^ 0x736E617274766E69 | BYTE8(v137[0]))
                              {
                                PPParserReturnPart(a1);
                                v113 = 46;
                                LOWORD(v137[0]) = 46;
                                v112 = 1;
                                goto LABEL_397;
                              }

                              v115 = v134 | 0x30000000000;
                            }

                            *&v134 = v115;
                            v112 = PPParserGetPart(a1, v137, 0);
                            if (!v112)
                            {
                              goto LABEL_415;
                            }

                            v113 = LOBYTE(v137[0]);
                          }

LABEL_397:
                          v135 = 3;
                          if (v112 == 1 && v113 == 46)
                          {
                            if (!PPParserGetPart(a1, v137, 0))
                            {
                              goto LABEL_415;
                            }

                            if (LODWORD(v137[0]) != 7827314)
                            {
                              break;
                            }

                            if (v4)
                            {
                              result = PPParserParseRangeArray(a1, &v135 + 1, &v135);
                            }

                            else
                            {
                              result = PPParserParseArray(a1, &v135 + 1);
                              LODWORD(v135) = HIDWORD(v135);
                            }

                            if (result)
                            {
                              goto LABEL_423;
                            }

                            v117 = v135;
                            v116 = HIDWORD(v135);
                          }

                          else
                          {
                            if (!v4)
                            {
                              break;
                            }

                            PPParserReturnPart(a1);
                            v116 = 0;
                            v117 = 3;
                          }

                          result = 10;
                          v131 = v116;
                          if (v116 > 3 || v117 > 3)
                          {
                            goto LABEL_423;
                          }

                          v118 = v117;
                          *&v134 = v134 & 0xFFFFF3FFFFFFFFFFLL | ((v116 & 3) << 42);
                          (*(a1 + 192))(a1, &v134);
                          v119 = v118;
                          v120 = v118 - v131;
                          if (v120)
                          {
                            v130 = v8;
                            v121 = v4;
                            v122 = a3;
                            v123 = v6;
                            v124 = v9;
                            v125 = v11 + v119;
                            v126 = v131 + 1;
                            do
                            {
                              v127 = *(a1 + 344) + 1;
                              *(a1 + 344) = v127;
                              DWORD2(v134) = v127;
                              *&v134 = v134 & 0xFFFFF3FFFFFFFFFFLL | ((v126 & 3) << 42);
                              (*(a1 + 192))(a1, &v134);
                              ++v126;
                              --v120;
                            }

                            while (v120);
                            v11 = v125 - v131;
                            v9 = v124;
                            v6 = v123;
                            a3 = v122;
                            v4 = v121;
                            v8 = v130;
                          }

                          goto LABEL_374;
                        }

                        v110 = v134 & 0xFFFF8FFFFFFFFFFFLL | 0x400000000000;
LABEL_361:
                        *&v134 = v110;
                        if (!PPParserGetPart(a1, v137, 0))
                        {
                          goto LABEL_415;
                        }

                        PPParserReturnPart(a1);
                        if (LOBYTE(v137[0]) == 91)
                        {
                          result = PPParserParseArray(a1, &v135 + 1);
                          if (result)
                          {
                            goto LABEL_423;
                          }

                          v92 = BYTE4(v135);
                          goto LABEL_365;
                        }

                        v111 = v134 & 0xFFFFFF00FFFFFFFFLL;
                      }

                      *&v134 = v111;
                      goto LABEL_381;
                    }

                    v110 = v134 & 0xFFFF8FFFFFFFFFFFLL | 0x300000000000;
                    goto LABEL_361;
                  }

                  v104 = PPParserGetPart(a1, v137, 0);
                  if (!v104)
                  {
                    goto LABEL_415;
                  }

                  v105 = v104;
                  result = 10;
                  if (v105 != 1 || LOBYTE(v137[0]) != 46)
                  {
                    goto LABEL_423;
                  }

                  if (!PPParserGetPart(a1, v137, 0))
                  {
                    goto LABEL_415;
                  }

                  if (LODWORD(v137[0]) ^ 0x657A6973 | BYTE4(v137[0]))
                  {
                    if (*&v137[0] != 0x7461756E65747461 || DWORD2(v137[0]) != 7237481)
                    {
                      break;
                    }

                    v81 = 7424;
                  }

                  else
                  {
                    v81 = 7168;
                  }
                }

                v33 = v134 & 0xFFFFFFFFFFFFE0FFLL | v81;
                goto LABEL_372;
              }

              v65 = PPParserGetPart(a1, v137, 0);
              if (!v65)
              {
                goto LABEL_415;
              }

              v66 = LOBYTE(v137[0]);
              if (LOBYTE(v137[0]) == 91)
              {
                PPParserReturnPart(a1);
                result = PPParserParseArray(a1, &v135 + 1);
                if (result)
                {
                  goto LABEL_423;
                }

                if (HIDWORD(v135) >= *(a1 + 288))
                {
                  goto LABEL_431;
                }

                *&v134 = v134 & 0xFFFFFF80FFFFFFFFLL | ((BYTE4(v135) & 0x7F) << 32);
                v67 = PPParserGetPart(a1, v137, 0);
                if (!v67)
                {
                  goto LABEL_415;
                }

                v68 = v67;
                v66 = LOBYTE(v137[0]);
              }

              else
              {
                v68 = v65;
                *&v134 = v134 & 0xFFFFFF80FFFFFFFFLL;
              }

              result = 10;
              if (v68 != 1 || v66 != 46)
              {
                goto LABEL_423;
              }

              if (!PPParserGetPart(a1, v137, 0))
              {
                goto LABEL_415;
              }

              if (LODWORD(v137[0]) == 6650213)
              {
                v83 = 5120;
              }

              else
              {
                if (LODWORD(v137[0]) != 1701470831 || *(v137 + 3) != 7627621)
                {
                  break;
                }

                v83 = 5376;
              }

              *&v134 = v134 & 0xFFFFFFFFFFFFE0FFLL | v83;
              v96 = PPParserGetPart(a1, v137, 0);
              if (!v96)
              {
                goto LABEL_415;
              }

              v97 = v96;
              result = 10;
              if (v97 != 1 || LOBYTE(v137[0]) != 46)
              {
                goto LABEL_423;
              }

              if (!PPParserGetPart(a1, v137, 0))
              {
                goto LABEL_415;
              }

              if (LOWORD(v137[0]) == 115)
              {
                v33 = v134 & 0xFFFFFC7FFFFFFFFFLL;
                goto LABEL_372;
              }

              if (LOWORD(v137[0]) == 116)
              {
                v33 = v134 & 0xFFFFFC7FFFFFFFFFLL | 0x8000000000;
                goto LABEL_372;
              }

              if (LOWORD(v137[0]) != 114)
              {
                if (LOWORD(v137[0]) != 113)
                {
                  result = 17;
                  goto LABEL_423;
                }

                v33 = v134 & 0xFFFFFC7FFFFFFFFFLL | 0x18000000000;
                goto LABEL_372;
              }

              v64 = v134 & 0xFFFFFC7FFFFFFFFFLL;
              goto LABEL_205;
            }

            *&v134 = v134 & 0xFFFFFEFFFFFFE0FFLL | 0x1100;
            result = PPParserParseArray(a1, &v135 + 1);
            if (result)
            {
              goto LABEL_423;
            }

            BYTE4(v134) = BYTE4(v135);
            v55 = PPParserGetPart(a1, v137, 0);
            if (!v55)
            {
              goto LABEL_415;
            }

            v56 = v55;
            result = 10;
            if (v56 != 1 || LOBYTE(v137[0]) != 46)
            {
              goto LABEL_423;
            }

            if (!PPParserGetPart(a1, v137, 0))
            {
              goto LABEL_415;
            }

            if (LODWORD(v137[0]) == 1852797542 && WORD2(v137[0]) == 116)
            {
LABEL_174:
              v58 = PPParserGetPart(a1, v137, 0);
              if (!v58)
              {
                goto LABEL_415;
              }

              v59 = v58;
              result = 10;
              if (v59 != 1 || LOBYTE(v137[0]) != 46)
              {
                goto LABEL_423;
              }

              if (!PPParserGetPart(a1, v137, 0))
              {
                goto LABEL_415;
              }
            }

            else if (!(LODWORD(v137[0]) ^ 0x6B636162 | BYTE4(v137[0])))
            {
              *&v134 = v134 | 0x10000000000;
              goto LABEL_174;
            }

            if (*&v137[0] == 0x746E6569626D61)
            {
              v33 = v134 & 0xFFFFF9FFFFFFFFFFLL;
              goto LABEL_372;
            }

            if (*&v137[0] == 0x65737566666964)
            {
              v76 = v134 & 0xFFFFF9FFFFFFFFFFLL;
              goto LABEL_259;
            }

            if (*&v137[0] ^ 0x72616C7563657073 | BYTE8(v137[0]))
            {
              break;
            }

            v60 = v134 & 0xFFFFF9FFFFFFFFFFLL;
LABEL_182:
            v33 = v60 | 0x40000000000;
            goto LABEL_372;
          }

          v51 = PPParserGetPart(a1, v137, 0);
          if (!v51)
          {
            goto LABEL_415;
          }

          v52 = v51;
          result = 10;
          if (v52 != 1 || LOBYTE(v137[0]) != 46)
          {
            goto LABEL_423;
          }

          if (!PPParserGetPart(a1, v137, 0))
          {
            goto LABEL_415;
          }

          if (*&v137[0] != 0x746E6569626D61)
          {
            if (LODWORD(v137[0]) == 1852797542 && WORD2(v137[0]) == 116)
            {
              v54 = v134 & 0xFFFFFFFEFFFFFFFFLL;
LABEL_220:
              *&v134 = v54;
              v73 = PPParserGetPart(a1, v137, 0);
              if (!v73)
              {
                goto LABEL_415;
              }

              v74 = v73;
              result = 10;
              if (v74 != 1 || LOBYTE(v137[0]) != 46)
              {
                goto LABEL_423;
              }

              if (!PPParserGetPart(a1, v137, 0))
              {
                goto LABEL_415;
              }
            }

            else if (!(LODWORD(v137[0]) ^ 0x6B636162 | BYTE4(v137[0])))
            {
              v54 = v134 | 0x100000000;
              goto LABEL_220;
            }

            if (*&v137[0] != 0x6C6F63656E656373 || *(v137 + 3) != 0x726F6C6F63656ELL)
            {
              break;
            }

            v33 = v134 & 0xFFFFFFF1FFFFE0FFLL | 0xA00001200;
            goto LABEL_372;
          }

          v33 = v134 & 0xFFFFFFFFFFFFE0FFLL | 0x1300;
        }

LABEL_372:
        *&v134 = v33;
LABEL_373:
        (*(a1 + 192))(a1, &v134);
LABEL_374:
        ++*(a1 + 344);
        v7 = v11 + 1;
        if (!v4)
        {
          goto LABEL_419;
        }

        if (!PPParserGetPart(a1, v137, 0))
        {
          goto LABEL_415;
        }

        if (LOBYTE(v137[0]) != 44)
        {
          if (LOBYTE(v137[0]) != 125)
          {
            break;
          }

LABEL_419:
          if (*a3)
          {
            if (*a3 != v7)
            {
              result = 37;
              goto LABEL_423;
            }
          }

          else
          {
            *a3 = v7;
          }

          v129 = 0x8000;
          if ((v8 & 1) == 0)
          {
            v129 = 0;
          }

          v133 = v133 & 0xFFFFFFFF7FFFLL | ((*(a1 + 344) - 1) << 48) | v129;
          if ((v11 & 0x80000000) == 0)
          {
            (*(a1 + 200))(a1, &v133);
          }

          result = 0;
          goto LABEL_423;
        }
      }
    }

    result = 10;
  }

  else
  {
LABEL_415:
    result = 46;
  }

LABEL_423:
  v128 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseParameterDeclaration(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__s = 0u;
  v9 = 0u;
  v7 = 1;
  if (!PPParserGetPart(a1, __s, 0))
  {
    goto LABEL_18;
  }

  if (PPParserValidateName(a1, __s))
  {
    result = 18;
    goto LABEL_19;
  }

  v3 = PPParserIdentifierCreate();
  PPParserIdentifierSetName(v3, __s);
  *(v3 + 4) = 2;
  if (PPParserScopeAddIdentifier(*(a1 + 32), v3))
  {
    PPParserIdentifierFree(v3);
    result = 28;
    goto LABEL_19;
  }

  if (!PPParserGetPart(a1, __s, 0))
  {
    goto LABEL_18;
  }

  v4 = __s[0];
  if (__s[0] == 91)
  {
    PPParserReturnPart(a1);
    result = PPParserParseDefaultArray(a1, &v7);
    if (result)
    {
      goto LABEL_19;
    }

    *(v3 + 20) = 1;
    if (!PPParserGetPart(a1, __s, 0))
    {
      goto LABEL_18;
    }

    v4 = __s[0];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v4 != 61)
  {
    result = 10;
    goto LABEL_19;
  }

  *(v3 + 3) = *(a1 + 344);
  result = PPParserParseParamBinding(a1, v5, &v7);
  if (!result)
  {
    *(v3 + 2) = v7;
    if (PPParserGetPart(a1, __s, 0))
    {
      if (__s[0] == 59)
      {
        result = 0;
      }

      else
      {
        result = 10;
      }

      goto LABEL_19;
    }

LABEL_18:
    result = 46;
  }

LABEL_19:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseAttributeBinding(uint64_t a1, int *a2, _DWORD *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  memset(v67, 0, sizeof(v67));
  v64 = 0;
  v6 = *(a1 + 368);
  if (!PPParserGetPart(a1, v67, 0))
  {
    goto LABEL_184;
  }

  *a3 = -1;
  v66 = 0;
  if ((v6 & 2) != 0)
  {
    if (*&v67[0] ^ 0x746E656D67617266 | BYTE8(v67[0]))
    {
LABEL_10:
      result = 10;
      goto LABEL_185;
    }
  }

  else if (LODWORD(v67[0]) != 1953654134 || *(v67 + 3) != 7890292)
  {
    goto LABEL_10;
  }

  v65 = 192;
  Part = PPParserGetPart(a1, v67, 0);
  if (!Part)
  {
    goto LABEL_184;
  }

  v10 = Part;
  result = 10;
  if (v10 != 1 || LOBYTE(v67[0]) != 46)
  {
    goto LABEL_185;
  }

  if (!PPParserGetPart(a1, v67, 0))
  {
    goto LABEL_184;
  }

  if ((v6 & 2) != 0)
  {
    if (!(*&v67[0] ^ 0x6E6F697469736F70 | BYTE8(v67[0])))
    {
      v23 = v65 & 0xFFFFFFFFFFFF83FFLL | 0x400;
      goto LABEL_77;
    }

    if (LODWORD(v67[0]) != 1869377379 || WORD2(v67[0]) != 114)
    {
      goto LABEL_44;
    }

    v29 = v65 & 0xFFFFFFFFFFFF83FFLL | 0x800;
LABEL_96:
    v65 = v29;
    v33 = PPParserGetPart(a1, v67, 0);
    if (!v33)
    {
      goto LABEL_184;
    }

    if (v33 != 1 || LOBYTE(v67[0]) != 46)
    {
LABEL_106:
      PPParserReturnPart(a1);
      goto LABEL_118;
    }

    if (!PPParserGetPart(a1, v67, 0))
    {
      goto LABEL_184;
    }

    if (*&v67[0] != 0x7261646E6F636573 || WORD4(v67[0]) != 121)
    {
      if (*&v67[0] == 0x7972616D697270)
      {
        goto LABEL_118;
      }

      PPParserReturnPart(a1);
      goto LABEL_106;
    }

    if ((v6 & 2) == 0)
    {
      v31 = v65 & 0xFFFFFFC0FFFF83FFLL;
      v32 = 0x300007000;
      goto LABEL_88;
    }

    v23 = v65 & 0xFFFFFFFFFFFF83FFLL | 0xC00;
LABEL_77:
    v65 = v23;
    goto LABEL_78;
  }

  if (LODWORD(v67[0]) == 1920234593 && *(v67 + 3) == 6449522)
  {
    v65 = v65 & 0xFFFFFFFFFFFF83FFLL | 0x7000;
    result = PPParserParseArray(a1, &v64);
    if (result)
    {
      goto LABEL_185;
    }

    if (v64 >= *(a1 + 312))
    {
      result = 62;
      goto LABEL_185;
    }

    v65 = v65 & 0xFFFFFFC0FFFFFFFFLL | (((v64 + 16) & 0x3F) << 32);
    goto LABEL_119;
  }

  if (!(*&v67[0] ^ 0x6E6F697469736F70 | BYTE8(v67[0])))
  {
    v28 = v65 & 0xFFFFFFC0FFFF83FFLL | 0x7000;
LABEL_89:
    v65 = v28;
    goto LABEL_119;
  }

  if (LODWORD(v67[0]) == 1836216174 && *(v67 + 3) == 7102829)
  {
    v31 = v65;
    v32 = 0x100007000;
LABEL_88:
    v28 = v31 | v32;
    goto LABEL_89;
  }

  if (LODWORD(v67[0]) == 1869377379 && WORD2(v67[0]) == 114)
  {
    v29 = v65 & 0xFFFFFFC0FFFF83FFLL | 0x200007000;
    goto LABEL_96;
  }

  if (LODWORD(v67[0]) == 1734960503 && *(v67 + 3) == 7628903)
  {
    v65 = v65 & 0xFFFFFF80FFFF83FFLL | 0x4400007000;
    if (PPParserGetPart(a1, v67, 0))
    {
      PPParserReturnPart(a1);
      if (LOBYTE(v67[0]) == 91)
      {
        result = PPParserParseArray(a1, &v64);
        if (result)
        {
          goto LABEL_185;
        }

        if (v64 >= *(a1 + 296))
        {
          result = 58;
          goto LABEL_185;
        }
      }

      goto LABEL_119;
    }

    goto LABEL_184;
  }

LABEL_44:
  if (!(*&v67[0] ^ 0x64726F6F63676F66 | BYTE8(v67[0])))
  {
    v30 = v65 & 0xFFFFFFC0FFFF83FFLL | 0x500007000;
    v65 = v30;
    if ((v6 & 2) == 0)
    {
      goto LABEL_119;
    }

    v23 = v30 & 0xFFFFFFC5FFFFF33FLL;
    goto LABEL_77;
  }

  if ((*(a1 + 379) & 8) != 0 && *&v67[0] == 0x7A6973746E696F70 && WORD4(v67[0]) == 101)
  {
    v36 = v65 & 0xFFFFFFC0FFFF83FFLL | 0x600007000;
    goto LABEL_117;
  }

  if (!(*&v67[0] ^ 0x64726F6F63786574 | BYTE8(v67[0])))
  {
    v65 = v65 & 0xFFFFFFFFFFFF83FFLL | 0x7000;
    if (!PPParserGetPart(a1, v67, 0))
    {
      goto LABEL_184;
    }

    PPParserReturnPart(a1);
    if (LOBYTE(v67[0]) == 91)
    {
      result = PPParserParseArray(a1, &v64);
      if (result)
      {
        goto LABEL_185;
      }

      if (v64 >= *(a1 + 288))
      {
        result = 57;
        goto LABEL_185;
      }

      v65 = v65 & 0xFFFFFFC0FFFFFFFFLL | (((v64 + 8) & 0x3F) << 32);
LABEL_118:
      if ((v6 & 2) == 0)
      {
LABEL_119:
        v37 = GLDAttribBindingForPPStreamToken(v65);
        v38 = *(a1 + 144);
        if (v38)
        {
          v39 = *v38;
          if (v39)
          {
            v40 = (v38 + 2);
            v42 = (v37 & 0x1F00) == 0x1C00 && (BYTE4(v37) & 0x30) == 16;
            do
            {
              v44 = *v40++;
              v43 = v44;
              v45 = HIDWORD(v44);
              v46 = BYTE4(v44) & 0x30;
              v48 = (v44 & 0x1F00) == 0x1C00 && v46 == 16;
              if (v42)
              {
                v49 = HIDWORD(v37);
                if (v48)
                {
                  goto LABEL_165;
                }
              }

              else
              {
                LOBYTE(v49) = v45;
                v45 = HIDWORD(v37);
                v43 = v37;
                if (!v48)
                {
                  goto LABEL_165;
                }
              }

              v50 = v49 & 0x3F;
              if (v50 > 19)
              {
                if ((v50 - 22) < 2)
                {
                  goto LABEL_165;
                }

                if (v50 == 20)
                {
                  if ((v43 & 0x1F00) == 0x1C00 && (v45 & 0x3F) == 3)
                  {
LABEL_169:
                    result = 19;
                    goto LABEL_185;
                  }
                }

                else
                {
                  if (v50 != 21)
                  {
                    goto LABEL_163;
                  }

                  if ((v43 & 0x1F00) == 0x1C00 && (v45 & 0x3F) == 5)
                  {
                    goto LABEL_169;
                  }
                }
              }

              else if (v50 > 17)
              {
                if (v50 == 18)
                {
                  if ((v43 & 0x1F00) == 0x1C00 && (v45 & 0x3F) == 1)
                  {
                    goto LABEL_169;
                  }
                }

                else if ((v43 & 0x1F00) == 0x1C00 && (v45 & 0x3F) == 2)
                {
                  goto LABEL_169;
                }
              }

              else
              {
                if (v50 != 16)
                {
                  if (v50 == 17)
                  {
                    if ((v43 & 0x1F00) == 0x1C00 && (v45 & 0x3F) == 4)
                    {
                      goto LABEL_169;
                    }

                    goto LABEL_165;
                  }

LABEL_163:
                  if ((v43 & 0x1F00) == 0x1C00 && (v45 & 0x3F) == v50 - 16)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_165;
                }

                if ((v43 & 0x1F00) == 0x1C00 && (v45 & 0x3F) == 0)
                {
                  goto LABEL_169;
                }
              }

LABEL_165:
              --v39;
            }

            while (v39);
          }
        }

        (*(a1 + 208))(a1, &v65);
        *a3 = v66;
        goto LABEL_167;
      }

LABEL_78:
      (*(a1 + 208))(a1, &v65);
      *a3 = v66;
      v24 = v65;
      if ((v65 & 0x3F00007C00) == 0x500007000)
      {
        v25 = *(a1 + 372);
        if (v25 == -1)
        {
          v26 = *(a1 + 32);
          v27 = *(v26 + 36);
          *(a1 + 372) = v27;
          v61 = v24 & 0xF8;
          v63 = 0;
          *(v26 + 36) = v27 + 1;
          v62 = v27;
          (*(a1 + 176))(a1, &v61);
          v60 = 0u;
          v59 = 0u;
          v58 = 0u;
          v57[0] = 0x3100011042;
          if (*(a1 + 378) == 1)
          {
            v57[0] = 0x3100015042;
            *(a1 + 378) = 2;
          }

          v57[2] = (*a3 << 48) | 0x19C800;
          v57[3] = 2307915776;
          v57[1] = (*(a1 + 372) << 48) | 0x72679000;
          (*(a1 + 168))(a1, v57, 0);
          v25 = *(a1 + 372);
        }

        goto LABEL_168;
      }

LABEL_167:
      v25 = -1;
LABEL_168:
      result = 0;
      *a2 = v25;
      goto LABEL_185;
    }

    v36 = v65 & 0xFFFFFFC0FFFFFFFFLL | 0x800000000;
LABEL_117:
    v65 = v36;
    goto LABEL_118;
  }

  if ((v6 & 2) != 0)
  {
    v35 = LODWORD(v67[0]) == 1768120678 && *(v67 + 3) == 6778473;
    if (!v35 || *(a1 + 368) != 54)
    {
      goto LABEL_10;
    }

    v23 = v65 & 0xFFFFFFFFFFFF83FFLL | 0x2C00;
    goto LABEL_77;
  }

  if (*&v67[0] ^ 0x6C6169726574616DLL | BYTE8(v67[0]))
  {
    goto LABEL_10;
  }

  v65 = v65 & 0xFFFFFFFFFFFF83FFLL | 0x7000;
  v17 = PPParserGetPart(a1, v67, 0);
  if (!v17)
  {
    goto LABEL_184;
  }

  v18 = v17;
  result = 10;
  if (v18 != 1 || LOBYTE(v67[0]) != 46)
  {
    goto LABEL_185;
  }

  if (!PPParserGetPart(a1, v67, 0))
  {
    goto LABEL_184;
  }

  if (LODWORD(v67[0]) == 1852797542 && WORD2(v67[0]) == 116)
  {
    v51 = PPParserGetPart(a1, v67, 0);
    if (!v51)
    {
      goto LABEL_184;
    }

    v52 = v51;
    result = 10;
    if (v52 != 1 || LOBYTE(v67[0]) != 46)
    {
      goto LABEL_185;
    }

    if (PPParserGetPart(a1, v67, 0))
    {
      goto LABEL_62;
    }

LABEL_184:
    result = 46;
    goto LABEL_185;
  }

  if (LODWORD(v67[0]) ^ 0x6B636162 | BYTE4(v67[0]))
  {
LABEL_62:
    v20 = 0;
LABEL_63:
    if (*&v67[0] == 0x746E6569626D61)
    {
      v56 = v20 | 0x20u;
    }

    else
    {
      if (*&v67[0] == 0x65737566666964)
      {
        v22 = 34;
      }

      else if (*&v67[0] ^ 0x72616C7563657073 | BYTE8(v67[0]))
      {
        if (*&v67[0] ^ 0x6E6F697373696D65 | BYTE8(v67[0]))
        {
          if (*&v67[0] != 0x73656E696E696873 || WORD4(v67[0]) != 115)
          {
            goto LABEL_10;
          }

          v22 = 40;
        }

        else
        {
          v22 = 38;
        }
      }

      else
      {
        v22 = 36;
      }

      v56 = v20 | v22;
    }

    v28 = v65 & 0xFFFFFFC0FFFFFFFFLL | (v56 << 32);
    goto LABEL_89;
  }

  v53 = PPParserGetPart(a1, v67, 0);
  if (!v53)
  {
    goto LABEL_184;
  }

  v54 = v53;
  result = 10;
  if (v54 == 1 && LOBYTE(v67[0]) == 46)
  {
    if (PPParserGetPart(a1, v67, 0))
    {
      v20 = 1;
      goto LABEL_63;
    }

    goto LABEL_184;
  }

LABEL_185:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GLDAttribBindingForPPStreamToken(uint64_t a1)
{
  v1 = (a1 >> 10) & 0x1F;
  v2 = a1 & 0x100000000;
  v3 = a1 & 0x1FF00000000;
  if (v1 != 28)
  {
    v3 = 0;
  }

  if (v1 == 3)
  {
    v3 = a1 & 0x100000000;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  return v2 | a1 | (v1 << 8) | (a1 >> 2) & 0x2000;
}

uint64_t PPParserParseAttributeDeclaration(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__s = 0u;
  v7 = 0u;
  if (!PPParserGetPart(a1, __s, 0))
  {
    goto LABEL_15;
  }

  if (PPParserValidateName(a1, __s))
  {
    result = 18;
    goto LABEL_16;
  }

  v3 = PPParserIdentifierCreate();
  PPParserIdentifierSetName(v3, __s);
  if (PPParserScopeAddIdentifier(*(a1 + 32), v3))
  {
    PPParserIdentifierFree(v3);
    result = 28;
    goto LABEL_16;
  }

  if (!PPParserGetPart(a1, __s, 0))
  {
    goto LABEL_15;
  }

  if (__s[0] != 61)
  {
    result = 10;
    goto LABEL_16;
  }

  v5 = 0;
  *(v3 + 4) = 0;
  result = PPParserParseAttributeBinding(a1, &v5, v3 + 3);
  if (!result)
  {
    if (v5 != -1)
    {
      *(v3 + 3) = *(a1 + 372);
      *(v3 + 4) = 1;
    }

    if (PPParserGetPart(a1, __s, 0))
    {
      if (__s[0] == 59)
      {
        result = 0;
      }

      else
      {
        result = 10;
      }

      goto LABEL_16;
    }

LABEL_15:
    result = 46;
  }

LABEL_16:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseOutputBinding(uint64_t a1, char a2, _DWORD *a3, _BYTE *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  memset(v36, 0, sizeof(v36));
  v8 = *(a1 + 368);
  if (!PPParserGetPart(a1, v36, 0))
  {
    goto LABEL_95;
  }

  *a3 = -1;
  *a4 = -1;
  v34 = 0;
  v35 = 0;
  if (LODWORD(v36[0]) != 1970496882 || *(v36 + 3) != 7629941)
  {
    goto LABEL_6;
  }

  Part = PPParserGetPart(a1, v36, 0);
  if (!Part)
  {
    goto LABEL_95;
  }

  v12 = Part;
  result = 10;
  if (v12 == 1 && LOBYTE(v36[0]) == 46)
  {
    if (!PPParserGetPart(a1, v36, 0))
    {
      goto LABEL_95;
    }

    v13 = a2 & 7 | 0xC0u;
    v33 = 0;
    if ((v8 & 2) == 0)
    {
      if (*&v36[0] ^ 0x6E6F697469736F70 | BYTE8(v36[0]))
      {
        if ((*(a1 + 380) & 2) == 0 || (LODWORD(v36[0]) == 1684957559 ? (v14 = *(v36 + 3) == 7827300) : (v14 = 0), !v14))
        {
          if (LODWORD(v36[0]) != 1869377379 || WORD2(v36[0]) != 114)
          {
            if (*&v36[0] ^ 0x64726F6F63676F66 | BYTE8(v36[0]))
            {
              if (*&v36[0] != 0x7A6973746E696F70 || WORD4(v36[0]) != 101)
              {
                if (*&v36[0] ^ 0x64726F6F63786574 | BYTE8(v36[0]))
                {
                  if (!(LODWORD(v36[0]) ^ 0x70696C63 | BYTE4(v36[0])))
                  {
                    v17 = *(a1 + 368);
                    if (v17 == 52 || v17 == 49)
                    {
                      result = PPParserParseArray(a1, &v33);
                      if (result)
                      {
                        goto LABEL_96;
                      }

                      v18 = v33;
                      if (v33 >= *(a1 + 304))
                      {
                        result = 60;
                        goto LABEL_96;
                      }

                      *a4 = v33;
                      v19 = v13 | ((v18 & 0x1F) << 32);
                      v20 = 2560;
                      goto LABEL_99;
                    }
                  }

LABEL_6:
                  result = 10;
                  goto LABEL_96;
                }

                if (PPParserGetPart(a1, v36, 0))
                {
                  PPParserReturnPart(a1);
                  if (LOBYTE(v36[0]) == 91)
                  {
                    result = PPParserParseArray(a1, &v33);
                    if (result)
                    {
                      goto LABEL_96;
                    }

                    v24 = a2 & 7 | 0x11C0 | (((v33 + 8) & 0x3F) << 32);
                    goto LABEL_71;
                  }

                  v30 = 0x800001100;
                  goto LABEL_81;
                }

LABEL_95:
                result = 46;
                goto LABEL_96;
              }

              v23 = 768;
            }

            else
            {
              v23 = 0x500001100;
            }

            goto LABEL_70;
          }

          v26 = a2 & 7 | 0x4C0;
          v34 = v26;
          v27 = PPParserGetPart(a1, v36, 0);
          if (!v27)
          {
            goto LABEL_95;
          }

          v28 = LOBYTE(v36[0]);
          if (v27 == 1 && LOBYTE(v36[0]) == 46)
          {
            if (!PPParserGetPart(a1, v36, 0))
            {
              goto LABEL_95;
            }

            if (LODWORD(v36[0]) ^ 0x6B636162 | BYTE4(v36[0]))
            {
              if (LODWORD(v36[0]) != 1852797542 || WORD2(v36[0]) != 116)
              {
                PPParserReturnPart(a1);
                v28 = 46;
                LOWORD(v36[0]) = 46;
                v27 = 1;
                goto LABEL_85;
              }
            }

            else
            {
              v26 = (a2 & 7 | 0x1000001C0) + 768;
              v34 = v26;
            }

            v27 = PPParserGetPart(a1, v36, 0);
            if (!v27)
            {
              goto LABEL_95;
            }

            v28 = LOBYTE(v36[0]);
          }

LABEL_85:
          if (v27 == 1 && v28 == 46)
          {
            if (!PPParserGetPart(a1, v36, 0))
            {
              goto LABEL_95;
            }

            if (*&v36[0] == 0x7261646E6F636573 && WORD4(v36[0]) == 121)
            {
              v19 = v26 & 0xFFFFFFFFFFFFE1FFLL;
              v20 = 1280;
LABEL_99:
              v24 = v19 | v20;
              goto LABEL_71;
            }

            if (*&v36[0] == 0x7972616D697270)
            {
              goto LABEL_75;
            }

            PPParserReturnPart(a1);
          }

          PPParserReturnPart(a1);
          goto LABEL_75;
        }

        if ((*(a1 + 380) & 1) == 0)
        {
          if ((*(a1 + 379) & 4) == 0)
          {
            *(a1 + 380) |= 4u;
            v30 = 0x100000100;
LABEL_81:
            v24 = v13 | v30;
            goto LABEL_71;
          }

          goto LABEL_68;
        }
      }

      else if ((*(a1 + 380) & 1) == 0)
      {
        if ((*(a1 + 380) & 4) == 0)
        {
          *(a1 + 379) |= 4u;
          v24 = a2 & 7 | 0x1C0;
LABEL_71:
          v34 = v24;
LABEL_75:
          (*(a1 + 216))(a1, &v34);
          result = 0;
          *a3 = v35;
          goto LABEL_96;
        }

LABEL_68:
        result = 41;
        goto LABEL_96;
      }

      result = 34;
      goto LABEL_96;
    }

    if (LODWORD(v36[0]) != 1869377379 || WORD2(v36[0]) != 114)
    {
      if (LODWORD(v36[0]) != 1953523044 || WORD2(v36[0]) != 104)
      {
        goto LABEL_6;
      }

      v23 = 1792;
LABEL_70:
      v24 = v23 & 0xFFFFFFFFFFFFFFF8 | a2 & 7;
      goto LABEL_71;
    }

    v34 = a2 & 7 | 0x4C0;
    if (*(a1 + 383))
    {
      if (!PPParserGetPart(a1, v36, 0))
      {
        goto LABEL_95;
      }

      PPParserReturnPart(a1);
      if (LOBYTE(v36[0]) == 91)
      {
        result = PPParserParseArray(a1, &v33);
        if (result)
        {
          goto LABEL_96;
        }

        v34 = a2 & 7 | 0x4C0 | ((v33 & 7) << 33);
        if (v33 >= *(a1 + 316))
        {
          result = 64;
          goto LABEL_96;
        }

        v25 = *(a1 + 386) | (1 << v33);
        goto LABEL_74;
      }

      v34 = a2 & 7 | 0x4C0;
    }

    LOBYTE(v25) = *(a1 + 386) | 1;
LABEL_74:
    *(a1 + 386) = v25;
    goto LABEL_75;
  }

LABEL_96:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseOutputDeclaration(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  if (!PPParserGetPart(a1, v7, 0))
  {
    goto LABEL_13;
  }

  if (PPParserValidateName(a1, v7))
  {
    result = 18;
    goto LABEL_14;
  }

  v5 = PPParserIdentifierCreate();
  PPParserIdentifierSetName(v5, v7);
  *(v5 + 6) = a2;
  *(v5 + 4) = 3;
  if (PPParserScopeAddIdentifier(*(a1 + 32), v5))
  {
    PPParserIdentifierFree(v5);
    result = 28;
    goto LABEL_14;
  }

  if (!PPParserGetPart(a1, v7, 0))
  {
    goto LABEL_13;
  }

  if (LOBYTE(v7[0]) != 61)
  {
    result = 10;
    goto LABEL_14;
  }

  result = PPParserParseOutputBinding(a1, a2, v5 + 3, v5 + 21);
  if (!result)
  {
    if (PPParserGetPart(a1, v7, 0))
    {
      if (LOBYTE(v7[0]) == 59)
      {
        result = 0;
      }

      else
      {
        result = 10;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = 46;
  }

LABEL_14:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseDestinationMask(uint64_t a1, unint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  Part = PPParserGetPart(a1, v15, 0);
  if (!Part)
  {
    result = 46;
    goto LABEL_41;
  }

  v5 = 0;
  v6 = *a2 & 0xFFFFFFFFFFF87FFFLL;
  *a2 = v6;
  v7 = Part;
  v8 = v15;
  result = 12;
  do
  {
    v11 = *v8++;
    v10 = v11;
    if (v11 > 118)
    {
      if (v10 <= 120)
      {
        if (v10 == 119)
        {
          if ((v6 & 0x8000) != 0)
          {
            goto LABEL_38;
          }

          v12 = 1;
LABEL_28:
          v13 = 0x8000;
          goto LABEL_34;
        }

        if (v10 != 120)
        {
          goto LABEL_41;
        }

        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_38;
        }

        v12 = 1;
LABEL_18:
        v13 = 0x40000;
        goto LABEL_34;
      }

      if (v10 != 121)
      {
        if (v10 != 122)
        {
          goto LABEL_41;
        }

        if ((v6 & 0x10000) != 0)
        {
          goto LABEL_38;
        }

        v12 = 1;
        goto LABEL_23;
      }

      if ((v6 & 0x20000) != 0)
      {
        goto LABEL_38;
      }

      v12 = 1;
    }

    else
    {
      if (v10 <= 102)
      {
        if (v10 != 97)
        {
          if (v10 != 98)
          {
            goto LABEL_41;
          }

          if ((v6 & 0x10000) != 0)
          {
            goto LABEL_38;
          }

          v12 = 2;
LABEL_23:
          v13 = 0x10000;
          goto LABEL_34;
        }

        if ((v6 & 0x8000) != 0)
        {
          goto LABEL_38;
        }

        v12 = 2;
        goto LABEL_28;
      }

      if (v10 != 103)
      {
        if (v10 != 114)
        {
          goto LABEL_41;
        }

        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_38;
        }

        v12 = 2;
        goto LABEL_18;
      }

      if ((v6 & 0x20000) != 0)
      {
        goto LABEL_38;
      }

      v12 = 2;
    }

    v13 = 0x20000;
LABEL_34:
    v5 |= v12;
    v6 |= v13;
    *a2 = v6;
    --v7;
  }

  while (v7);
  if (v5 == 3 || v5 == 2 && (*(a1 + 368) & 2) == 0)
  {
LABEL_38:
    result = 12;
    goto LABEL_41;
  }

  result = 0;
LABEL_41:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseSourceSwizzle(uint64_t a1, void *a2, _DWORD *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  Part = PPParserGetPart(a1, v18, 0);
  if (!Part)
  {
    result = 46;
    goto LABEL_43;
  }

  if (Part != 4)
  {
    if (Part != 1)
    {
      goto LABEL_40;
    }

    *a3 = 1;
    *a2 &= 0xFFFFFFFFFFE7FFFFLL;
  }

  v7 = 0;
  v8 = 0;
  v9 = Part != 1;
  v10 = v18;
  while (1)
  {
    v11 = *v10;
    if (v11 > 0x76)
    {
      if (*v10 > 0x78u)
      {
        if (v11 == 122)
        {
          v13 = 1;
          v12 = 2;
          goto LABEL_27;
        }

        if (v11 != 121)
        {
          goto LABEL_40;
        }

        v13 = 1;
LABEL_25:
        v12 = 1;
        goto LABEL_27;
      }

      if (v11 == 119)
      {
        v13 = 1;
        goto LABEL_23;
      }

      if (v11 != 120)
      {
        goto LABEL_40;
      }

      v12 = 0;
      v13 = 1;
    }

    else
    {
      if (*v10 <= 0x66u)
      {
        if (v11 != 97)
        {
          if (v11 != 98)
          {
            goto LABEL_40;
          }

          v12 = 2;
          v13 = 2;
          goto LABEL_27;
        }

        v13 = 2;
LABEL_23:
        v12 = 3;
        goto LABEL_27;
      }

      if (v11 == 103)
      {
        v13 = 2;
        goto LABEL_25;
      }

      if (v11 != 114)
      {
        goto LABEL_40;
      }

      v12 = 0;
      v13 = 2;
    }

LABEL_27:
    v7 |= v13;
    if (v8 > 1)
    {
      break;
    }

    if (v8)
    {
      v14 = 11;
    }

    else
    {
      v14 = 9;
    }

    if (v8)
    {
      v15 = -6145;
    }

    else
    {
      v15 = -1537;
    }

LABEL_36:
    v10 += v9;
    *a2 = *a2 & v15 | (v12 << v14);
    ++v8;
  }

  if (v8 == 2)
  {
    v15 = -24577;
    v14 = 13;
    goto LABEL_36;
  }

  *a2 = *a2 & 0xFFFFFFFFFFFE7FFFLL | ((v12 & 3) << 15);
  if (v7 == 3 || v7 == 2 && (*(a1 + 368) & 2) == 0)
  {
LABEL_40:
    result = 13;
  }

  else
  {
    result = 0;
  }

LABEL_43:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseLabel(uint64_t a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, sizeof(v12));
  if (PPParserGetPart(a1, v12, 0))
  {
    if (LOBYTE(v12[0]) == 58)
    {
      v6 = *(a1 + 152);
      if (v6)
      {
        v7 = *v6;
        if (v7)
        {
          v8 = (v6 + 2);
          v9 = a3;
          while (strlen(*v8) != a3 || strncmp(a2, *v8, a3))
          {
            ++v8;
            if (!--v7)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_17;
        }
      }

      v9 = a3;
LABEL_14:
      if (!strncmp(a2, "start", v9) || !strncmp(a2, "main", v9))
      {
        if (*(a1 + 378))
        {
LABEL_17:
          result = 29;
          goto LABEL_12;
        }

        *(a1 + 378) = 1;
      }

      (*(a1 + 240))(a1, a2, a3);
      result = 0;
      goto LABEL_12;
    }

    PPParserReturnPart(a1);
  }

  result = 3;
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseAddressDestination(uint64_t a1, unint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  if (!PPParserGetPart(a1, v13, 0))
  {
    goto LABEL_15;
  }

  Identifier = PPParserScopeFindIdentifier(*(a1 + 32), v13);
  if (!Identifier)
  {
    result = 25;
    goto LABEL_16;
  }

  v5 = Identifier;
  if (*(Identifier + 16) == -1)
  {
    v7 = *a2;
    v8 = *a2 | 0x40000;
    *a2 = v8;
    v9 = v8 & 0xFFFFFFFFFFFC7FFFLL;
    v10 = v7 | 0x78000;
    if ((*(a1 + 368) & 0x10) == 0)
    {
      v10 = v9;
    }

    *a2 = v10;
    Part = PPParserGetPart(a1, v13, 0);
    if (Part)
    {
      if (Part == 1 && LOBYTE(v13[0]) == 46)
      {
        result = PPParserParseDestinationMask(a1, a2);
        if (result)
        {
          goto LABEL_16;
        }

        if ((*(a1 + 368) & 0x10) == 0)
        {
          if ((*a2 & 0x78000) == 0x40000)
          {
            goto LABEL_21;
          }

LABEL_18:
          result = 12;
          goto LABEL_16;
        }
      }

      else
      {
        if ((*(a1 + 368) & 0x10) == 0)
        {
          goto LABEL_18;
        }

        PPParserReturnPart(a1);
        if ((*(a1 + 368) & 0x10) == 0)
        {
LABEL_21:
          result = 0;
          *a2 = *a2 & 0xFFFFFFFF8FFFLL | (*(v5 + 12) << 48) | 0x4000;
          goto LABEL_16;
        }
      }

      result = PPParserParseBranchCondition(a1, a2, 0);
      if (result)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_15:
    result = 46;
    goto LABEL_16;
  }

  result = 22;
LABEL_16:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseBranchCondition(uint64_t a1, void *a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  if (a3 == 79 || a3 == 85)
  {
    goto LABEL_5;
  }

  if (!PPParserGetPart(a1, v20, 0))
  {
    goto LABEL_62;
  }

  if (LOBYTE(v20[0]) == 40)
  {
LABEL_5:
    Part = PPParserGetPart(a1, v20, 0);
    if (!Part)
    {
      goto LABEL_62;
    }

    if (*(a1 + 368) == 52)
    {
      if ((Part - 4) < 0xFFFFFFFE)
      {
        goto LABEL_61;
      }
    }

    else if (Part != 2)
    {
      goto LABEL_61;
    }

    switch(LOWORD(v20[0]))
    {
      case 0x5254u:
        v7 = *a2 & 0xFFFFFFFFFFFFFFF1;
        goto LABEL_28;
      case 0x5145u:
        v7 = *a2 & 0xFFFFFFFFFFFFFFF1 | 2;
        goto LABEL_28;
      case 0x4547u:
        v7 = *a2 & 0xFFFFFFFFFFFFFFF1 | 4;
        goto LABEL_28;
      case 0x5447u:
        v7 = *a2 & 0xFFFFFFFFFFFFFFF1 | 6;
        goto LABEL_28;
      case 0x454Cu:
        v7 = *a2 & 0xFFFFFFFFFFFFFFF1 | 8;
        goto LABEL_28;
      case 0x544Cu:
        v7 = *a2 & 0xFFFFFFFFFFFFFFF1 | 0xA;
        goto LABEL_28;
      case 0x454Eu:
        v7 = *a2 & 0xFFFFFFFFFFFFFFF1 | 0xC;
        goto LABEL_28;
      case 0x4C46u:
        v7 = *a2 | 0xELL;
LABEL_28:
        *a2 = v7;
        if (Part == 3 && *(a1 + 368) == 52)
        {
          if (BYTE2(v20[0]) == 49)
          {
            v9 = v7 | 1;
          }

          else
          {
            if (BYTE2(v20[0]) != 48)
            {
              goto LABEL_35;
            }

            v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
          }

          *a2 = v9;
        }

LABEL_35:
        v10 = PPParserGetPart(a1, v20, 0);
        if (v10)
        {
          if (LOBYTE(v20[0]) == 41)
          {
            result = 16;
            if (a3 != 79 && a3 != 85)
            {
              result = 0;
              *a2 = *a2 & 0xFFFFFFFFFFFFF00FLL | 0xE40;
            }

            goto LABEL_63;
          }

          v11 = v10;
          result = 16;
          if (v11 != 1 || LOBYTE(v20[0]) != 46)
          {
            goto LABEL_63;
          }

          v12 = PPParserGetPart(a1, v20, 0);
          if (v12)
          {
            if (v12 == 4 || v12 == 1)
            {
              v13 = 0;
              v14 = v12 == 4;
              v15 = v20;
              while ((*v15 - 119) <= 3u)
              {
                v16 = qword_23A300B88[(*v15 - 119)];
                if (v13 > 1)
                {
                  if (v13 != 2)
                  {
                    *a2 = *a2 & 0xFFFFFFFFFFFFF3FFLL | (v16 << 10);
                    if (a3 == 79 || a3 == 85)
                    {
                      goto LABEL_20;
                    }

                    if (!PPParserGetPart(a1, v20, 0))
                    {
                      goto LABEL_62;
                    }

                    if (LOBYTE(v20[0]) == 41)
                    {
                      goto LABEL_20;
                    }

                    goto LABEL_61;
                  }

                  v18 = -769;
                  v17 = 8;
                }

                else
                {
                  if (v13)
                  {
                    v17 = 6;
                  }

                  else
                  {
                    v17 = 4;
                  }

                  if (v13)
                  {
                    v18 = -193;
                  }

                  else
                  {
                    v18 = -49;
                  }
                }

                v15 += v14;
                *a2 = *a2 & v18 | (v16 << v17);
                ++v13;
              }
            }

            break;
          }
        }

LABEL_62:
        result = 46;
        goto LABEL_63;
    }

LABEL_61:
    result = 16;
    goto LABEL_63;
  }

  PPParserReturnPart(a1);
LABEL_20:
  result = 0;
LABEL_63:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseDestination(uint64_t a1, unint64_t *a2, int a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *__s2 = 0u;
  v28 = 0u;
  if (!PPParserGetPart(a1, __s2, 1))
  {
    goto LABEL_30;
  }

  Identifier = PPParserScopeFindIdentifier(*(a1 + 32), __s2);
  v26 = -1;
  if (!Identifier)
  {
    if (*__s2 != 1970496882 || *&__s2[3] != 7629941)
    {
      result = 25;
      goto LABEL_31;
    }

    v25 = 0;
    PPParserReturnPart(a1);
    result = PPParserParseOutputBinding(a1, 0, &v25, &v26);
    if (result)
    {
      goto LABEL_31;
    }

    v11 = *a2 & 0xFFFFFFFF8FFFLL | (v25 << 48) | 0x3000;
LABEL_25:
    *a2 = v11 & 0xFFFFFFFF80187001 | 0x72678000;
    Part = PPParserGetPart(a1, __s2, 0);
    if (Part)
    {
      if (Part == 1 && __s2[0] == 46)
      {
        result = PPParserParseDestinationMask(a1, a2);
        if (result)
        {
          goto LABEL_31;
        }
      }

      else
      {
        PPParserReturnPart(a1);
      }

      v16 = *(a1 + 368);
      if ((v16 & 0x22) == 0)
      {
        goto LABEL_52;
      }

      v17 = *a2;
      if ((*a2 & 0x7000) != 0x3000)
      {
        goto LABEL_52;
      }

      v18 = *(*(a1 + 136) + 8 * HIWORD(v17) + 8);
      v19 = (v18 >> 8) & 0x1F;
      if (v19 == 4)
      {
        if ((v16 & 2) != 0 && *(a1 + 381))
        {
          v20 = v17 & 0xFFFFFFFF9FFFLL | (((v18 >> 33) & 7) << 48);
          goto LABEL_51;
        }
      }

      else if (v19 == 10)
      {
        if ((v16 & 0x20) != 0)
        {
          v21 = vmovl_u16(vceq_s16(vdup_n_s16(v26 & 3), 0x3000200010000));
          v22.i64[0] = v21.u32[0];
          v22.i64[1] = v21.u32[1];
          v23 = vshrq_n_s64(vshlq_n_s64(v22, 0x38uLL), 0x38uLL);
          v22.i64[0] = v21.u32[2];
          v22.i64[1] = v21.u32[3];
          v24 = vorrq_s8(vandq_s8(v23, xmmword_23A3009F0), vandq_s8(vshrq_n_s64(vshlq_n_s64(v22, 0x38uLL), 0x38uLL), xmmword_23A3009E0));
          v20 = *&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | v17 & 0xFFFFFFFF80783FFFLL;
          goto LABEL_51;
        }
      }

      else if (v19 == 7 && (v16 & 2) != 0)
      {
        if ((v17 & 0x10000) != 0)
        {
          v20 = v17 & 0xFFFFFFFF807BBFFFLL | 0x55040000;
          goto LABEL_51;
        }

        if ((v17 & 0x40000) != 0)
        {
          *a2 = v17 & 0xFFFFFFFFFFFABFFFLL;
          if ((v17 & 0x28000) == 0)
          {
            v20 = v17 & 0xFFFFFFFFFFF83FFFLL | 0x20000;
LABEL_51:
            *a2 = v20;
          }
        }
      }

LABEL_52:
      if ((*(a1 + 368) & 0x10) == 0 || (result = PPParserParseBranchCondition(a1, a2, 0), !result))
      {
        result = 0;
      }

      goto LABEL_31;
    }

LABEL_30:
    result = 46;
    goto LABEL_31;
  }

  v7 = Identifier;
  v25 = 0;
  if ((a3 & 0xFFFFFFFC) == 0x5C && *(Identifier + 24) == 2)
  {
    result = 45;
    goto LABEL_31;
  }

  if (!PPParserGetPart(a1, __s2, 0))
  {
    goto LABEL_30;
  }

  PPParserReturnPart(a1);
  v9 = *(v7 + 20);
  if (__s2[0] != 91)
  {
    if (*(v7 + 20))
    {
      result = 33;
      goto LABEL_31;
    }

LABEL_21:
    v12 = *a2 & 0xFFFFFFFFFFFFLL | ((v9 + *(v7 + 12)) << 48);
    *a2 = v12;
    v13 = *(v7 + 16);
    if (v13 != 1)
    {
      if (v13 != 3)
      {
        result = 24;
        goto LABEL_31;
      }

      v26 = *(v7 + 21);
    }

    v11 = v12 & 0xFFFFFFFFFFFF8FFFLL | ((v13 & 7) << 12);
    goto LABEL_25;
  }

  if (!*(v7 + 20))
  {
    result = 32;
    goto LABEL_31;
  }

  result = PPParserParseArray(a1, &v25);
  if (!result)
  {
    v9 = v25;
    if (v25 >= *(v7 + 8))
    {
      PPParserReturnPart(a1);
      result = 35;
      goto LABEL_31;
    }

    goto LABEL_21;
  }

LABEL_31:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseSourceVar(uint64_t a1, unint64_t *a2, int a3, _DWORD *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__s2 = 0u;
  v26 = 0u;
  Part = PPParserGetPart(a1, __s2, 1);
  if (!Part)
  {
    goto LABEL_12;
  }

  v9 = Part;
  Identifier = PPParserScopeFindIdentifier(*(a1 + 32), __s2);
  if (!Identifier)
  {
    if ((*(a1 + 368) & 2) != 0)
    {
      if (*__s2 ^ 0x746E656D67617266 | __s2[8])
      {
LABEL_19:
        if (__s2[0] != 123 && *__s2 != 0x6D6172676F7270 && (*__s2 != 1952543859 || *&__s2[4] != 101))
        {
          v24 = 0;
          glp_strtod(__s2, &v24);
          v15 = v24 == &__s2[v9];
          *a4 = v15;
          if (!v15)
          {
            result = 26;
            goto LABEL_13;
          }
        }

        LODWORD(v24) = 1;
        *a2 = *a2 & 0xFFFFFFFFFE3FLL | (*(a1 + 344) << 48) | 0x80;
        PPParserReturnPart(a1);
        result = PPParserParseParamBinding(a1, 0, &v24);
        if (result)
        {
          goto LABEL_13;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v15 = *__s2 == 1953654134 && *&__s2[3] == 7890292;
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    v23 = 0;
    LODWORD(v24) = 0;
    PPParserReturnPart(a1);
    result = PPParserParseAttributeBinding(a1, &v24, &v23);
    if (result)
    {
      goto LABEL_13;
    }

    v17 = *a2 & 0xFFFFFFFFFE3FLL | (v23 << 48);
    *a2 = v17;
    if (v24 == -1)
    {
      goto LABEL_38;
    }

    v18 = v17 | 0x40;
    *a2 = v18;
    v19 = v18 & 0xFFFFFFFFFE7FLL | (*(a1 + 372) << 48);
LABEL_37:
    *a2 = v19;
LABEL_38:
    result = 0;
    if (*a4)
    {
      v22 = *a2 & 0xFFFFFFFFFFE601FFLL;
    }

    else
    {
      v22 = *a2 & 0xFFFFFFFFFFE601FFLL | 0x19C800;
    }

    *a2 = v22;
    goto LABEL_13;
  }

  v11 = Identifier;
  LODWORD(v24) = 0;
  if ((a3 & 0xFFFFFFFC) == 0x64 && *(Identifier + 24) == 2)
  {
    result = 44;
    goto LABEL_13;
  }

  if (!PPParserGetPart(a1, __s2, 0))
  {
LABEL_12:
    result = 46;
    goto LABEL_13;
  }

  PPParserReturnPart(a1);
  v13 = *(v11 + 20);
  if (__s2[0] != 91)
  {
    if (*(v11 + 20))
    {
      result = 33;
      goto LABEL_13;
    }

LABEL_35:
    v20 = *a2 & 0xFFFFFFFFFFFFLL | ((v13 + *(v11 + 12)) << 48);
    *a2 = v20;
    v21 = *(v11 + 16);
    if (v21 >= 3)
    {
      result = 23;
      goto LABEL_13;
    }

    v19 = v20 & 0xFFFFFFFFFFFFFE3FLL | (v21 << 6);
    goto LABEL_37;
  }

  if (!*(v11 + 20))
  {
    result = 32;
    goto LABEL_13;
  }

  result = PPParserParseIndirectArray(a1, a2, &v24);
  if (!result)
  {
    v13 = v24;
    if (v24 >= *(v11 + 8))
    {
      PPParserReturnPart(a1);
      result = 35;
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseSwizzleSourceVar(uint64_t a1, unint64_t *a2, int a3, _DWORD *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  if (!PPParserGetPart(a1, v11, 0))
  {
    goto LABEL_24;
  }

  if (LOWORD(v11[0]) == 45)
  {
    *a2 |= 0x10uLL;
  }

  else if (LOWORD(v11[0]) != 43)
  {
    PPParserReturnPart(a1);
  }

  if ((*(a1 + 368) & 0x20) != 0)
  {
    if (!PPParserGetPart(a1, v11, 0))
    {
      goto LABEL_24;
    }

    if (LOWORD(v11[0]) == 124)
    {
      *a2 |= 0x20uLL;
    }

    else
    {
      PPParserReturnPart(a1);
    }
  }

  result = PPParserParseSourceVar(a1, a2, a3, a4);
  if (!result)
  {
    Part = PPParserGetPart(a1, v11, 0);
    if (!Part)
    {
      goto LABEL_24;
    }

    if (Part != 1 || LOBYTE(v11[0]) != 46)
    {
      PPParserReturnPart(a1);
      goto LABEL_18;
    }

    result = PPParserParseSourceSwizzle(a1, a2, a4);
    if (!result)
    {
LABEL_18:
      if ((*(a1 + 368) & 0x20) == 0 || (*a2 & 0x20) == 0)
      {
LABEL_20:
        result = 0;
        goto LABEL_25;
      }

      if (PPParserGetPart(a1, v11, 0))
      {
        if (LOWORD(v11[0]) != 124)
        {
          result = 23;
          goto LABEL_25;
        }

        goto LABEL_20;
      }

LABEL_24:
      result = 46;
    }
  }

LABEL_25:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseSwizzleCode(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  Part = PPParserGetPart(a1, v15, 0);
  if (!Part)
  {
LABEL_67:
    result = 46;
    goto LABEL_73;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    if (Part > 2)
    {
LABEL_68:
      result = 15;
      goto LABEL_73;
    }

    v7 = LOBYTE(v15[0]);
    if (LOBYTE(v15[0]) == 43)
    {
      break;
    }

    if (LOBYTE(v15[0]) == 45)
    {
      v8 = 1;
      goto LABEL_8;
    }

    if (Part == 2)
    {
      goto LABEL_68;
    }

    v8 = 0;
LABEL_14:
    result = 15;
    if (v7 > 113)
    {
      if (v7 > 119)
      {
        if (v7 != 122)
        {
          if (v7 != 121)
          {
            if (v7 != 120)
            {
              goto LABEL_73;
            }

            v5 |= 1u;
            goto LABEL_48;
          }

          v5 |= 1u;
          goto LABEL_35;
        }

        v5 |= 1u;
        goto LABEL_43;
      }

      if (v7 == 114)
      {
        v5 |= 2u;
LABEL_48:
        v11 = 4 * v8;
        goto LABEL_49;
      }

      if (v7 != 119)
      {
        goto LABEL_73;
      }

      v5 |= 1u;
      goto LABEL_39;
    }

    if (v7 > 96)
    {
      if (v7 != 97)
      {
        if (v7 != 98)
        {
          if (v7 != 103)
          {
            goto LABEL_73;
          }

          v5 |= 2u;
LABEL_35:
          if (v8)
          {
            v11 = 5;
          }

          else
          {
            v11 = 1;
          }

          goto LABEL_49;
        }

        v5 |= 2u;
LABEL_43:
        if (v8)
        {
          v11 = 6;
        }

        else
        {
          v11 = 2;
        }

        goto LABEL_49;
      }

      v5 |= 2u;
LABEL_39:
      if (v8)
      {
        v11 = 7;
      }

      else
      {
        v11 = 3;
      }

      goto LABEL_49;
    }

    if (v7 == 48)
    {
      v11 = 9;
    }

    else
    {
      if (v7 != 49)
      {
        goto LABEL_73;
      }

      if (v8)
      {
        v11 = 10;
      }

      else
      {
        v11 = 8;
      }
    }

LABEL_49:
    if (v5 == 2)
    {
      if ((*(a1 + 368) & 2) == 0)
      {
LABEL_69:
        result = 13;
        goto LABEL_73;
      }
    }

    else if (v5 == 3)
    {
      goto LABEL_69;
    }

    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          goto LABEL_61;
        }

        v12 = -15728641;
        v13 = 20;
      }

      else
      {
        v12 = -983041;
        v13 = 16;
      }

      goto LABEL_60;
    }

    if (v6 == 2)
    {
      v12 = -251658241;
      v13 = 24;
LABEL_60:
      *a2 = *a2 & v12 | (v11 << v13);
      goto LABEL_61;
    }

    if (v6 == 3)
    {
      result = 0;
      *a2 = *a2 & 0xFFFFFFFF0FFFFFFFLL | (v11 << 28);
      goto LABEL_73;
    }

LABEL_61:
    if (!PPParserGetPart(a1, v15, 0))
    {
      goto LABEL_67;
    }

    if (LOBYTE(v15[0]) != 44)
    {
      goto LABEL_68;
    }

    ++v6;
    Part = PPParserGetPart(a1, v15, 0);
    if (!Part)
    {
      goto LABEL_67;
    }
  }

  v8 = 0;
LABEL_8:
  if (Part == 2)
  {
    v7 = BYTE1(v15[0]);
    LOBYTE(v15[0]) = BYTE1(v15[0]);
    goto LABEL_14;
  }

  v9 = PPParserGetPart(a1, v15, 0);
  if (v9 == 1)
  {
    v7 = LOBYTE(v15[0]);
    goto LABEL_14;
  }

  if (v9)
  {
    result = 15;
  }

  else
  {
    result = 46;
  }

LABEL_73:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseTextureSourceVar(uint64_t a1, unint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  if (!PPParserGetPart(a1, v17, 0))
  {
    goto LABEL_27;
  }

  if (*&v17[0] != 0x65727574786574)
  {
LABEL_3:
    result = 14;
    goto LABEL_28;
  }

  if (!PPParserGetPart(a1, v17, 0))
  {
    goto LABEL_27;
  }

  v5 = LOBYTE(v17[0]);
  if (LOBYTE(v17[0]) == 91)
  {
    v16 = 0;
    PPParserReturnPart(a1);
    result = PPParserParseArray(a1, &v16);
    if (result)
    {
      goto LABEL_28;
    }

    v6 = v16;
    result = 57;
    if (v16 > 15 || v16 >= *(a1 + 292))
    {
      goto LABEL_28;
    }

    if (PPParserGetPart(a1, v17, 0))
    {
      v5 = LOBYTE(v17[0]);
      goto LABEL_12;
    }

LABEL_27:
    result = 46;
    goto LABEL_28;
  }

  v6 = 0;
LABEL_12:
  if (v5 != 44)
  {
    result = 31;
    goto LABEL_28;
  }

  if (!PPParserGetPart(a1, v17, 0))
  {
    goto LABEL_27;
  }

  v7 = *(a1 + 16);
  if (LODWORD(v17[0]) ^ 0x45425543 | BYTE4(v17[0]))
  {
    if (LOWORD(v17[0]) ^ 0x4433 | BYTE2(v17[0]))
    {
      if (LODWORD(v17[0]) ^ 0x54434552 | BYTE4(v17[0]))
      {
        if (LOWORD(v17[0]) ^ 0x4432 | BYTE2(v17[0]))
        {
          if (LOWORD(v17[0]) ^ 0x4431 | BYTE2(v17[0]))
          {
            if (!*(a1 + 384))
            {
              goto LABEL_3;
            }

            if (*&v17[0] == 0x4552574F44414853 && *(v17 + 3) == 0x54434552574F44)
            {
              v9 = 5;
              v10 = 2;
            }

            else if (*&v17[0] ^ 0x4432574F44414853 | BYTE8(v17[0]))
            {
              if (*&v17[0] ^ 0x4431574F44414853 | BYTE8(v17[0]))
              {
                goto LABEL_3;
              }

              v9 = 7;
              v10 = 4;
            }

            else
            {
              v9 = 6;
              v10 = 3;
            }

            goto LABEL_36;
          }

          v10 = 4;
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 2;
      }

      v9 = v10;
    }

    else
    {
      v9 = 1;
      v10 = 1;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

LABEL_36:
  v12 = 4 * v6;
  v13 = (v7 >> (4 * v6)) & 0xF;
  if (v13 == 15)
  {
    v14 = v7 & ~(15 << v12);
    v15 = v9;
    *(a1 + 8) = *(a1 + 8) & ~(15 << v12) | (v10 << v12);
    *(a1 + 16) = (v9 << v12) | v14;
  }

  else
  {
    if (v13 != v9)
    {
      result = 40;
      goto LABEL_28;
    }

    v15 = v9;
  }

  result = 0;
  *a2 = *a2 & 0xFFFFFF80FFFFFFE0 | v15 | ((v6 & 0x7F) << 32);
LABEL_28:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseAddressSourceVar(uint64_t a1, unint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  if (PPParserGetPart(a1, v8, 0))
  {
    Identifier = PPParserScopeFindIdentifier(*(a1 + 32), v8);
    if (Identifier)
    {
      v5 = Identifier;
      if (*(Identifier + 16) == -1)
      {
        result = 0;
        *a2 = *a2 & 0xFFFFFFFFFE3FLL | (*(v5 + 12) << 48) | 0x100;
      }

      else
      {
        result = 22;
      }
    }

    else
    {
      result = 26;
    }
  }

  else
  {
    result = 46;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseOperation(uint64_t a1, int a2, int a3, char a4, char a5, char a6)
{
  v42 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v9 = *(a1 + 332);
  HIDWORD(v38) = v9;
  if ((*(a1 + 379) & 1) == 0)
  {
    HIDWORD(v38) = *(a1 + 324) + v9;
  }

  Part = 0;
  memset(v41, 0, 256);
  memset(v40, 0, sizeof(v40));
  v11 = (a2 << 6) | ((a4 & 1) << 41) | ((a6 & 1) << 42) | ((a5 & 1) << 43);
  v34 = v11;
  v12 = 1;
  v13 = a2;
  v14 = 0;
  v15 = 0;
  switch(a2)
  {
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    case 7:
    case 21:
    case 80:
    case 81:
    case 92:
    case 93:
    case 94:
    case 95:
      Part = 0;
      goto LABEL_8;
    case 3:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 18:
    case 22:
    case 23:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 57:
    case 59:
    case 61:
    case 64:
    case 69:
    case 71:
    case 78:
    case 99:
      goto LABEL_10;
    case 12:
      v14 = 1;
      Part = 2;
      goto LABEL_9;
    case 13:
    case 14:
      if ((*(a1 + 380) & 2) != 0)
      {
        Part = 2;
      }

      else
      {
        Part = 1;
      }

      v19 = *(a1 + 368);
      if ((v19 == 54 || v19 == 51) && a3 == 2)
      {
        a3 = 3;
      }

      if (!a3)
      {
        LOBYTE(a3) = 2;
      }

      goto LABEL_8;
    case 15:
    case 16:
    case 17:
    case 19:
    case 20:
    case 24:
    case 25:
    case 26:
    case 100:
    case 101:
    case 102:
    case 103:
      Part = 1;
LABEL_8:
      v14 = 1;
LABEL_9:
      v15 = 1;
      goto LABEL_10;
    case 31:
    case 32:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 58:
    case 65:
    case 66:
    case 67:
    case 68:
    case 70:
    case 82:
      Part = 0;
      v15 = 2;
      goto LABEL_5;
    case 56:
      v14 = 1;
      if ((*(a1 + 380) & 2) != 0)
      {
        Part = 2;
      }

      else
      {
        Part = 1;
      }

      v15 = 2;
      goto LABEL_10;
    case 60:
    case 62:
    case 63:
    case 83:
    case 104:
      Part = 0;
      v15 = 3;
      goto LABEL_5;
    case 72:
      Part = ((*(a1 + 368) >> 4) & 1) == 0;
      goto LABEL_102;
    case 73:
    case 74:
LABEL_102:
      v34 = v11 | ((a3 & 7) << 19) | 0x100000000;
      result = PPParserParseAddressDestination(a1, &v35);
      v14 = 1;
      goto LABEL_11;
    case 75:
    case 76:
      Part = PPParserGetPart(a1, v40, 0);
      v13 = a2;
      if (Part)
      {
        goto LABEL_32;
      }

      goto LABEL_94;
    case 77:
    case 84:
    case 85:
      goto LABEL_32;
    case 79:
      v27 = *(a1 + 368);
      if (v27 != 54 && v27 != 51)
      {
        goto LABEL_20;
      }

      v28 = PPParserGetPart(a1, v41, 0);
      if (!v28)
      {
        goto LABEL_94;
      }

      v29 = v28;
      PPParserReturnPart(a1);
      if (v29 != 2)
      {
LABEL_20:
        Part = 0;
        goto LABEL_34;
      }

      if (*v41 == 21076 || *v41 == 20805 || *v41 == 17735 || *v41 == 21575 || *v41 == 17740 || *v41 == 21580 || *v41 == 17742)
      {
        Part = 0;
      }

      else
      {
        Part = 0;
        if (*v41 != 19526)
        {
          goto LABEL_34;
        }
      }

      v13 = 79;
LABEL_32:
      result = PPParserParseBranchCondition(a1, &v35, v13);
      if (result)
      {
        goto LABEL_95;
      }

      v12 = 0;
      v11 = v34;
LABEL_34:
      v34 = v11 & 0xFFFFFFCEFFC7FFFFLL | ((a3 & 7) << 19) | 0x3000000000;
      if ((v12 & 1) == 0)
      {
        goto LABEL_71;
      }

      v17 = 0;
      v18 = 1;
      goto LABEL_36;
    case 86:
    case 87:
    case 96:
    case 97:
      goto LABEL_34;
    case 88:
    case 89:
    case 90:
    case 91:
      v12 = 0;
      goto LABEL_20;
    case 98:
      Part = 0;
      v15 = 4;
LABEL_5:
      v14 = 1;
      goto LABEL_10;
    default:
      v14 = 0;
      v15 = 0;
LABEL_10:
      v34 = v11 | ((a3 & 7) << 19) | 0x100000000;
      result = PPParserParseDestination(a1, &v35, a2);
      v12 = v15;
LABEL_11:
      v17 = Part;
      if (result)
      {
        goto LABEL_95;
      }

      if (!Part)
      {
        v34 |= 0x3000000000uLL;
        if (v14)
        {
          Part = 0;
          v18 = 0;
          v17 = 0;
          goto LABEL_36;
        }

LABEL_17:
        Part = 0;
        goto LABEL_71;
      }

      if (!v14)
      {
        goto LABEL_17;
      }

      Part = 0;
      v18 = 0;
LABEL_36:
      v20 = 0;
      if (v12 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v12;
      }

      v22 = 8 * v21;
      v31 = a2 - 74;
      v32 = a2 - 66;
      do
      {
        v33 = 0;
        if ((v18 & 1) == 0)
        {
          if (!PPParserGetPart(a1, v41, 0))
          {
            goto LABEL_94;
          }

          if (v41[0] != 44)
          {
            result = 31;
            goto LABEL_95;
          }
        }

        if (a2 == 65)
        {
          if (v20)
          {
            v34 |= 0x10000uLL;
            result = PPParserParseSwizzleCode(a1, &v36);
            if (result)
            {
              goto LABEL_95;
            }
          }

          else
          {
            result = PPParserParseSourceVar(a1, &v35 + 1, 65, &v33);
            if (result)
            {
              goto LABEL_95;
            }
          }

          goto LABEL_65;
        }

        if (a2 == 98 && v20 == 24)
        {
          v34 |= 0x8000uLL;
          v23 = &v37;
          goto LABEL_50;
        }

        if (v20 == 8)
        {
          if (v32 > 0x1F)
          {
            goto LABEL_64;
          }

          v24 = 1 << v32;
          if (((1 << v32) & 0x17) != 0)
          {
            v34 |= 0x8000uLL;
            v23 = &v36;
LABEL_50:
            result = PPParserParseTextureSourceVar(a1, v23);
            if (result)
            {
              goto LABEL_95;
            }

            goto LABEL_65;
          }

          v25 = -1073741568;
        }

        else
        {
          if (v31 > 0x17)
          {
            goto LABEL_64;
          }

          v24 = 1 << v31;
          v25 = 12582913;
        }

        if ((v24 & v25) != 0)
        {
          result = PPParserParseAddressSourceVar(a1, &v35 + 1);
          if (result)
          {
            goto LABEL_95;
          }

          goto LABEL_65;
        }

LABEL_64:
        result = PPParserParseSwizzleSourceVar(a1, (&v35 + v20 + 8), a2, &v33);
        if (result)
        {
          goto LABEL_95;
        }

LABEL_65:
        if (!v33)
        {
          if (v17 == 2)
          {
            v34 |= 0x3000000000uLL;
          }

          else if (v17 == 1)
          {
            result = 20;
            goto LABEL_95;
          }
        }

        v20 += 8;
      }

      while (v22 != v20);
LABEL_71:
      if (!PPParserGetPart(a1, v41, 0))
      {
LABEL_94:
        result = 46;
        goto LABEL_95;
      }

      if (v41[0] == 59)
      {
        if (*(a1 + 120) >= *(a1 + 268))
        {
          result = 51;
        }

        else
        {
          v26 = v34 & 0xFFFFFFFFFFFFFFF8 | v12;
          v34 = v26;
          LODWORD(v39) = Part;
          if (*(a1 + 378) == 1)
          {
            v34 = v26 | 0x4000;
            *(a1 + 378) = 2;
          }

          (*(a1 + 168))(a1, &v34, v40);
          result = 0;
        }
      }

      else
      {
        result = 30;
      }

LABEL_95:
      v30 = *MEMORY[0x277D85DE8];
      return result;
  }
}

uint64_t PPParserParseMacroDeclaration(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  if (PPParserGetPart(a1, v18, 0))
  {
    if (LOBYTE(v18[0]) != 123)
    {
LABEL_33:
      result = 10;
      goto LABEL_34;
    }

    Part = PPParserGetPart(a1, v18, 0);
    if (Part)
    {
      v3 = Part;
      v4 = PPParserMacroCreate();
      PPParserMacroSetSearchString(v4, v4, v18, v3);
      LODWORD(v5) = 0;
      v6 = a1[40];
      while (PPParserGetPart(a1, v18, 0) && PPParserGetPart(a1, v18, 0))
      {
        v5 = (v5 + 1);
        if (LOBYTE(v18[0]) != 44)
        {
          if (LOBYTE(v18[0]) != 125)
          {
            result = 31;
            goto LABEL_34;
          }

          PPParserMacroSetParamStringsCount(v4, v5);
          a1[40] = v6;
          if (v5)
          {
            v7 = 0;
            do
            {
              PPParserGetPart(a1, v18, 0);
              PPParserMacroSetParamString(v4, v7, v18);
              if (v5 - 1 != v7)
              {
                PPParserGetPart(a1, v18, 0);
              }

              ++v7;
            }

            while (v5 != v7);
          }

          if (PPParserGetPart(a1, v18, 0))
          {
            if (LOBYTE(v18[0]) != 125)
            {
              goto LABEL_33;
            }

            if (PPParserGetPart(a1, v18, 0))
            {
              if (LOBYTE(v18[0]) != 61)
              {
                goto LABEL_33;
              }

              if (PPParserGetPart(a1, v18, 0))
              {
                if (LOBYTE(v18[0]) != 123)
                {
                  goto LABEL_33;
                }

                v4[4] = a1[40];
                v8 = *(a1 + 80);
                while (PPParserGetPart(a1, v18, 0))
                {
                  if (LOBYTE(v18[0]) == 125)
                  {
                    v9 = *(a1 + 80) - v8;
                    v10 = (v9 - 2);
                    v11 = __abort_malloc((v9 - 1));
                    memmove(v11, (*a1 + v8), v10);
                    *(v11 + v10) = 0;
                    v12 = v4[1];
                    if (v12)
                    {
                      free(v12);
                    }

                    v4[1] = v11;
                    if (PPParserGetPart(a1, v18, 0))
                    {
                      if (LOBYTE(v18[0]) == 59)
                      {
                        v13 = a1[4];
                        v15 = *(v13 + 16);
                        v14 = *(v13 + 24);
                        if (!v15)
                        {
                          v15 = v4;
                        }

                        *(v13 + 16) = v15;
                        if (v14)
                        {
                          v14[6] = v4;
                          v4[5] = v14;
                        }

                        result = 0;
                        *(v13 + 24) = v4;
                      }

                      else
                      {
                        result = 30;
                      }

                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }
                }
              }
            }
          }

          break;
        }
      }
    }
  }

LABEL_32:
  result = 46;
LABEL_34:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseAliasDeclaration(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  memset(v21, 0, sizeof(v21));
  Part = PPParserGetPart(a1, v21, 0);
  if (!Part)
  {
    goto LABEL_8;
  }

  v3 = Part;
  v4 = PPParserMacroCreate();
  PPParserMacroSetSearchString(v4, v4, v21, v3);
  if (!PPParserGetPart(a1, v21, 0))
  {
    goto LABEL_8;
  }

  if (LOBYTE(v21[0]) != 61)
  {
LABEL_16:
    result = 10;
    goto LABEL_17;
  }

  v5 = *(a1 + 320);
  v6 = PPParserGetPart(a1, v21, 0);
  if (!v6)
  {
LABEL_8:
    result = 46;
    goto LABEL_17;
  }

  v7 = 0;
  while (LOBYTE(v21[0]) != 59)
  {
    v7 += v6 + 1;
    v6 = PPParserGetPart(a1, v21, 0);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  *(a1 + 320) = v5;
  v9 = malloc_type_malloc((v7 + 2), 0x75808E6AuLL);
  if (!v9)
  {
    abort();
  }

  v10 = v9;
  v11 = PPParserGetPart(a1, v9, 0);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  LODWORD(v13) = 0;
  v14 = v10;
  while (*v14 != 59)
  {
    v15 = v12 + v13;
    v13 = (v15 + 1);
    v10[v15] = 32;
    v14 = &v10[v13];
    v12 = PPParserGetPart(a1, &v10[v13], 0);
    result = 46;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  *v14 = 0;
  v17 = v4[1];
  if (v17)
  {
    free(v17);
  }

  v4[1] = v10;
  v18 = *(a1 + 32);
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  if (!v20)
  {
    v20 = v4;
  }

  *(v18 + 16) = v20;
  if (v19)
  {
    v19[6] = v4;
    v4[5] = v19;
  }

  result = 0;
  *(v18 + 24) = v4;
LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserExpandMacro(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v32 = *MEMORY[0x277D85DE8];
  memset(v31, 0, sizeof(v31));
  v5 = *(a1 + 320);
  do
  {
    v6 = v4;
    if (!PPParserGetPart(a1, v31, 0))
    {
      result = 46;
      goto LABEL_35;
    }

    if (LOBYTE(v31[0]) == 44)
    {
      v4 = v6 + 1;
    }

    else
    {
      v4 = v6;
    }
  }

  while (LOBYTE(v31[0]) != 59);
  v7 = (v6 + 1);
  if (v7 == *(a2 + 16))
  {
    v8 = malloc_type_calloc(8uLL, v7, 0x1116B6A2uLL);
    if (!v8)
    {
      goto LABEL_36;
    }

    v10 = v8;
    *(a1 + 320) = v5;
    if (v7)
    {
      v11 = 0;
      while (1)
      {
        v12 = malloc_type_calloc(0x100uLL, 1uLL, 0x1116B6A2uLL);
        if (!v12)
        {
          break;
        }

        v10[v11] = v12;
        PPParserGetPart(a1, v31, 0);
        if (LOBYTE(v31[0]) != 44 && LOBYTE(v31[0]) != 59)
        {
          while (1)
          {
            strcat(v10[v11], v31);
            PPParserGetPart(a1, v31, 0);
            if (LOBYTE(v31[0]) == 44 || LOBYTE(v31[0]) == 59)
            {
              break;
            }

            *&v10[v11][strlen(v10[v11])] = 32;
          }
        }

        if (++v11 == v7)
        {
          goto LABEL_19;
        }
      }

LABEL_36:
      abort();
    }

LABEL_19:
    ReplaceString = PPParserMacroGetReplaceString(a2, v9, v10, 0);
    v14 = malloc_type_malloc((ReplaceString + 1), 0x75808E6AuLL);
    if (!v14)
    {
      goto LABEL_36;
    }

    v16 = v14;
    PPParserMacroGetReplaceString(a2, v15, v10, v14);
    if (v7)
    {
      v17 = v10;
      do
      {
        v18 = *v17++;
        free(v18);
        --v7;
      }

      while (v7);
    }

    free(v10);
    v19 = PPParserCreate(*(a1 + 368));
    v20 = *(a1 + 304);
    v22 = *(a1 + 256);
    v21 = *(a1 + 272);
    *(v19 + 18) = *(a1 + 288);
    *(v19 + 19) = v20;
    *(v19 + 16) = v22;
    *(v19 + 17) = v21;
    PPParserInherit(v19, a1);
    v23 = PPParserScopeCreateFromScope(*(a1 + 32));
    v25 = *(v19 + 3);
    v24 = *(v19 + 4);
    if (!v25)
    {
      v25 = v23;
    }

    *(v19 + 3) = v25;
    if (v24)
    {
      *(v24 + 48) = v23;
      v23[5] = v24;
    }

    *(v19 + 4) = v23;
    PPParserAttachString(v19, v16, 0);
    if (*(a1 + 80))
    {
      v26 = *(a1 + 72);
      *(v19 + 14) = *(a1 + 56);
      *(v19 + 9) = v26;
      v19[20] = 1;
      *(v19 + 20) = llvmir_PPStreamSetTarget;
      *(v19 + 21) = llvmir_PPStreamAddOperation;
      *(v19 + 22) = llvmir_PPStreamAddTempUsage;
      *(v19 + 23) = llvmir_PPStreamAddAddressUsage;
      *(v19 + 24) = llvmir_PPStreamAddParamBinding;
      *(v19 + 25) = llvmir_PPStreamAddParamBindingArray;
      *(v19 + 26) = llvmir_PPStreamAddAttribBinding;
      *(v19 + 27) = llvmir_PPStreamAddOutputBinding;
      *(v19 + 28) = llvmir_PPStreamAddOption;
      *(v19 + 29) = llvmir_PPStreamAddConstant;
      *(v19 + 30) = llvmir_PPStreamAddLabel;
      *(v19 + 31) = llvmir_PPStreamResolveBranches;
    }

    else
    {
      PPParserAttachStream(v19, *(a1 + 40));
    }

    *(v19 + 41) = *(a1 + 320);
    *(v19 + 379) |= 3u;
    v28 = PPParserParse(v19);
    if (v28)
    {
      PPParserBuildErrorString(v19, v28, *a2);
      v29 = strlen(v19 + 392);
      memmove((a1 + 392), v19 + 98, v29);
      PPParserFree(v19);
      result = 2;
    }

    else
    {
      PPParserInherit(a1, v19);
      PPParserFree(v19);
      free(v16);
      result = 0;
    }
  }

  else
  {
    result = 38;
  }

LABEL_35:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParse(uint64_t a1)
{
  if ((*(a1 + 379) & 2) != 0 || (v2 = PPParserParseVersion(a1), !v2))
  {
    do
    {
      v2 = PPParserParseOption(a1);
    }

    while (!v2);
  }

  v3 = v2;
  if (*(a1 + 380) & 1) != 0 && (*(a1 + 376))
  {
    v45 = 0uLL;
    v47 = xmmword_23A3009B0;
    (*(a1 + 208))(a1, &v47);
    v4 = 0;
    v5 = 4032;
    if ((*(a1 + 376) & 2) == 0)
    {
      v5 = 0x10000000FC0;
    }

    v46 = v5;
    v6 = 4;
    do
    {
      *&v46 = v4 + (v46 & 0xFFFFF3FFFFFFFFFFLL);
      v7 = *(a1 + 344);
      *(a1 + 344) = v7 + 1;
      DWORD2(v46) = v7;
      (*(a1 + 192))(a1, &v46);
      v4 += 0x40000000000;
      --v6;
    }

    while (v6);
    v8 = 0;
    *&v46 = v46 & 0xFFFF8FFFFFFFFFFFLL | 0x300000000000;
    v9 = 4;
    do
    {
      *&v46 = v8 + (v46 & 0xFFFFF3FFFFFFFFFFLL);
      v10 = *(a1 + 344);
      *(a1 + 344) = v10 + 1;
      DWORD2(v46) = v10;
      (*(a1 + 192))(a1, &v46);
      v8 += 0x40000000000;
      --v9;
    }

    while (v9);
    v45 = xmmword_23A300A00;
    (*(a1 + 216))(a1, &v45);
    *&v45 = v45 & 0xFFFFFFFFFFFFE0FFLL | 0x900;
    (*(a1 + 216))(a1, &v45);
    if ((*(a1 + 376) & 2) != 0)
    {
      v48[1] = xmmword_23A300A10;
      memset(&v48[2], 0, 48);
      *&v48[0] = 0x3100000A42;
      *(&v48[0] + 1) = 1919168512;
      (*(a1 + 168))(a1, v48, 0);
      v48[1] = xmmword_23A300A20;
      memset(&v48[2], 0, 48);
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000A42;
      *(&v48[0] + 1) = 1919037440;
      (*(a1 + 168))(a1, v48, 0);
      v48[1] = xmmword_23A300A30;
      memset(&v48[2], 0, 48);
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000A42;
      *(&v48[0] + 1) = 1918971904;
      (*(a1 + 168))(a1, v48, 0);
      v48[1] = xmmword_23A300A40;
      memset(&v48[2], 0, 48);
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000A42;
      *(&v48[0] + 1) = 1918939136;
      (*(a1 + 168))(a1, v48, 0);
      v48[1] = xmmword_23A300A50;
      memset(&v48[2], 0, 48);
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000A42;
      *(&v48[0] + 1) = 0x1000072643000;
      (*(a1 + 168))(a1, v48, 0);
      v48[1] = xmmword_23A300A60;
      memset(&v48[2], 0, 48);
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000A42;
      *(&v48[0] + 1) = 0x1000072623000;
      (*(a1 + 168))(a1, v48, 0);
      v48[1] = xmmword_23A300A70;
      memset(&v48[2], 0, 48);
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000A42;
      *(&v48[0] + 1) = 0x1000072613000;
      (*(a1 + 168))(a1, v48, 0);
      memset(&v48[2], 0, 48);
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000A42;
      *(&v48[1] + 1) = 0x700000019C880;
      v13 = xmmword_23A300A80;
    }

    else
    {
      v44 = xmmword_23A3009C0;
      v11 = *(a1 + 32);
      v12 = *(v11 + 36);
      *(v11 + 36) = v12 + 1;
      DWORD2(v44) = v12;
      (*(a1 + 176))(a1, &v44);
      v48[1] = xmmword_23A300A90;
      memset(&v48[2], 0, 48);
      *&v48[0] = 0x3100000882;
      *(&v48[0] + 1) = 1919389696;
      (*(a1 + 168))(a1, v48, 0);
      memset(&v48[2] + 8, 0, 40);
      v48[1] = xmmword_23A300AA0;
      *&v48[2] = 1689664;
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000FC3;
      *(&v48[0] + 1) = 1919389696;
      (*(a1 + 168))(a1, v48, 0);
      memset(&v48[2] + 8, 0, 40);
      v48[1] = xmmword_23A300AB0;
      *&v48[2] = 1689664;
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000FC3;
      *(&v48[0] + 1) = 1919389696;
      (*(a1 + 168))(a1, v48, 0);
      memset(&v48[2] + 8, 0, 40);
      v48[1] = xmmword_23A300AC0;
      *&v48[2] = 1689664;
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000FC3;
      *(&v48[0] + 1) = 1919397888;
      (*(a1 + 168))(a1, v48, 0);
      memset(&v48[2], 0, 48);
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000882;
      *(&v48[1] + 1) = 0x400000019C880;
      *(v48 + 8) = xmmword_23A300AD0;
      (*(a1 + 168))(a1, v48, 0);
      memset(&v48[2] + 8, 0, 40);
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000FC3;
      *(&v48[1] + 8) = xmmword_23A300AE0;
      *(v48 + 8) = xmmword_23A300AF0;
      (*(a1 + 168))(a1, v48, 0);
      memset(&v48[2] + 8, 0, 40);
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000FC3;
      *(&v48[1] + 8) = xmmword_23A300B00;
      *(v48 + 8) = xmmword_23A300B10;
      (*(a1 + 168))(a1, v48, 0);
      memset(&v48[2] + 8, 0, 40);
      *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000FC3;
      *(&v48[1] + 8) = xmmword_23A300B20;
      v13 = xmmword_23A300B30;
    }

    *(v48 + 8) = v13;
    (*(a1 + 168))(a1, v48, 0);
  }

  if (*(a1 + 381))
  {
    v48[0] = 0uLL;
    if (*(a1 + 383))
    {
      v14 = *(a1 + 316);
      if (v14 < 0)
      {
LABEL_22:
        v47 = xmmword_23A300B40;
        (*(a1 + 208))(a1, &v47);
        v18 = *(a1 + 344);
        *(a1 + 344) = v18 + 1;
        v46 = xmmword_23A300B50;
        DWORD2(v46) = v18;
        (*(a1 + 192))(a1, &v46);
        v19 = *(a1 + 344);
        *(a1 + 344) = v19 + 1;
        DWORD2(v46) = v19;
        *&v46 = v46 & 0xFFFFFFFFFFFFE0FFLL | 0x1A00;
        (*(a1 + 192))(a1, &v46);
        v20 = *(a1 + 344);
        *(a1 + 344) = v20 + 1;
        DWORD2(v46) = v20;
        *&v46 = v46 & 0xFFFFFFFFFFFFE0FFLL | 0x1B00;
        (*(a1 + 192))(a1, &v46);
        goto LABEL_23;
      }

      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    do
    {
      v48[0] = xmmword_23A3009C0;
      v16 = *(a1 + 32);
      v17 = *(v16 + 36);
      *(v16 + 36) = v17 + 1;
      DWORD2(v48[0]) = v17;
      (*(a1 + 176))(a1, v48);
      --v15;
    }

    while (v15);
    goto LABEL_22;
  }

LABEL_23:
  if (v3 == 3)
  {
    do
    {
      v21 = PPParserParseStatement(a1);
    }

    while (!v21);
    v3 = v21;
  }

  if ((*(a1 + 379) & 2) != 0)
  {
    if (v3 == 1)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == 6)
    {
      LODWORD(v3) = PPParserParseEnd(a1);
    }

    if (v3 == 1)
    {
      v3 = 46;
    }

    else
    {
      v3 = v3;
    }

    if (!v3)
    {
      if (!*(a1 + 381))
      {
        goto LABEL_76;
      }

      if (*(a1 + 383))
      {
        v22 = *(a1 + 316);
        if (v22 < 1)
        {
LABEL_76:
          if ((*(a1 + 368) & 0x10) != 0 && (*(a1 + 248))(a1))
          {
            v3 = 27;
            goto LABEL_39;
          }

          if (!*(a1 + 80) && !*(a1 + 378))
          {
            v43 = **(*(a1 + 40) + 104);
            if (v43)
            {
              v3 = 0;
              *(v43 + 24) |= 0x4000uLL;
              *(a1 + 378) = 2;
              return v3;
            }
          }

          return 0;
        }
      }

      else
      {
        v22 = 1;
      }

      v23 = 0;
      v24 = 0uLL;
      while (1)
      {
        v48[3] = v24;
        v48[4] = v24;
        v48[1] = v24;
        v48[2] = v24;
        v48[0] = v24;
        if ((*(a1 + 386) >> v23))
        {
          break;
        }

LABEL_75:
        v23 = (v23 + 1);
        if (v23 == v22)
        {
          goto LABEL_76;
        }
      }

      v25 = *(a1 + 136);
      if (v25 && (v26 = *v25, v26))
      {
        v27 = 0;
        v28 = v25 + 2;
        while (1)
        {
          v29 = (*&v28[2 * v27] & 0x1F00) == 0x400 && ((*&v28[2 * v27] >> 33) & 7) == v23;
          if (v29)
          {
            break;
          }

          if (v26 == ++v27)
          {
            goto LABEL_54;
          }
        }

        v26 = v27;
LABEL_54:
        v30 = v26 << 48;
      }

      else
      {
        v30 = 0;
      }

      v31 = *(a1 + 124);
      *(&v48[1] + 8) = v24;
      *(&v48[2] + 8) = v24;
      *(&v48[3] + 8) = v24;
      *(&v48[4] + 1) = 0;
      *&v48[0] = (8 * (v31 & 7)) | 0x3100000001;
      *(&v48[0] + 1) = v30 + 1919397888;
      *&v48[1] = (v23 << 48) | 0x19C840;
      (*(a1 + 168))(a1, v48, 0);
      v32 = *(a1 + 381);
      if (v32 == 3)
      {
        memset(&v48[2], 0, 48);
        v48[1] = xmmword_23A300B60;
        *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000882;
        *(&v48[0] + 1) = (v22 << 48) | 0x72679000;
        (*(a1 + 168))(a1, v48, 0);
        memset(&v48[2], 0, 48);
        *&v48[1] = (v22 << 48) | 0x19C840;
        *(&v48[1] + 1) = *&v48[1];
        *&v48[0] = (8 * (v48[0] & 7)) | 0x3100000882;
        *(&v48[0] + 1) = (v22 << 48) | 0x72679000;
        (*(a1 + 168))(a1, v48, 0);
        memset(&v48[1] + 8, 0, 56);
        v38 = 8 * (v48[0] & 7);
        v39 = 0x100000401;
      }

      else
      {
        if (v32 != 2)
        {
          v33 = 0uLL;
          if (v32 != 1)
          {
LABEL_74:
            *(&v48[2] + 8) = v33;
            *(&v48[3] + 8) = v33;
            *(&v48[4] + 1) = 0;
            *&v48[1] = (v22 << 48) | 0x19C840;
            *(&v48[1] + 1) = (v23 << 48) | 0x19C840;
            *&v48[2] = 1689728;
            *&v48[0] = 8 * (v48[0] & 7) + 0x3100000F03;
            *(&v48[0] + 1) = v30 + 1919365120;
            (*(a1 + 168))(a1, v48, 0);
            v24 = 0uLL;
            goto LABEL_75;
          }

          v34 = 8 * (v48[0] & 7);
          if (*(a1 + 385))
          {
            *(&v48[4] + 1) = 0;
            *(&v48[3] + 8) = 0uLL;
            v35 = 16;
            *(&v48[2] + 8) = 0uLL;
          }

          else
          {
            *(&v48[0] + 1) = (v22 << 48) | 0x72679000;
            memset(&v48[1], 0, 64);
            *&v48[0] = v34 + 0x3100000081;
            (*(a1 + 168))(a1, v48, 0);
            v41 = *(a1 + 385);
            memset(&v48[2] + 8, 0, 40);
            v34 = 8 * (v48[0] & 7);
            v29 = v41 == 0;
            v35 = (v22 << 48) | 0x19C850;
            if (!v29)
            {
              v35 = 16;
            }
          }

          *&v48[0] = v34 | 0x83100000FC3;
          *&v48[1] = v35;
          *(&v48[1] + 8) = xmmword_23A300B70;
LABEL_73:
          *(&v48[0] + 1) = (v22 << 48) | 0x72679000;
          (*(a1 + 168))(a1, v48, 0);
          v33 = 0uLL;
          goto LABEL_74;
        }

        v36 = 8 * (v48[0] & 7);
        if (*(a1 + 385))
        {
          v37 = 0;
          memset(&v48[2], 0, 48);
        }

        else
        {
          *(&v48[0] + 1) = (v22 << 48) | 0x72679000;
          memset(&v48[1], 0, 64);
          *&v48[0] = v36 + 0x3100000081;
          (*(a1 + 168))(a1, v48, 0);
          v40 = *(a1 + 385);
          memset(&v48[2], 0, 48);
          v36 = 8 * (v48[0] & 7);
          if (v40)
          {
            v37 = 0;
          }

          else
          {
            v37 = (v22 << 48) | 0x19C840;
          }
        }

        *(&v48[0] + 1) = (v22 << 48) | 0x72679000;
        *&v48[1] = v37;
        *(&v48[1] + 1) = 0x2000000000080;
        *&v48[0] = v36 + 0x3100000882;
        (*(a1 + 168))(a1, v48, 0);
        memset(&v48[1] + 8, 0, 56);
        v38 = 8 * (v48[0] & 7);
        *&v48[0] = v38 | 0x100000401;
        if (!*(a1 + 385))
        {
LABEL_69:
          *&v48[1] = (v22 << 48) | 0x50;
          goto LABEL_73;
        }

        v39 = 0x80100000401;
      }

      *&v48[0] = v38 | v39;
      goto LABEL_69;
    }
  }

  if (v3 != 2)
  {
LABEL_39:
    PPParserBuildErrorString(a1, v3, 0);
  }

  return v3;
}

uint64_t PPParserBuildErrorString(uint64_t a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((a2 - 4) <= 0x3C)
  {
    v5 = off_278B4DBA0[a2 - 4];
  }

  v9 = 0;
  memset(v10, 0, sizeof(v10));
  PPParserReturnPart(a1);
  PPParserGetPart(a1, v10, 0);
  PPParserReturnCharacter(a1, &v9);
  v6 = (*(a1 + 324) + 1);
  PPParserGetCharacter(a1, &v9);
  if (a3)
  {
    result = sprintf_l((a1 + 392), 0, "Error in macro %s on line %u: %s (hint: '%s')");
  }

  else
  {
    result = sprintf_l((a1 + 392), 0, "Error on line %u: %s (hint: '%s')");
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 PPParserInherit(uint64_t a1, uint64_t a2)
{
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 360) = *(a2 + 360);
  result = *(a2 + 344);
  *(a1 + 344) = result;
  return result;
}

uint64_t PPParserParseVersion(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  if (PPParserGetPart(a1, v8, 0))
  {
    if ((*(a1 + 368) & 2) != 0)
    {
      if (*&v8[0] != 0x3170664252412121 || *(v8 + 3) != 0x302E3170664252)
      {
        goto LABEL_13;
      }

      v4 = 34820;
      v3 = 2;
    }

    else
    {
      if (*&v8[0] != 0x3170764252412121 || *(v8 + 3) != 0x302E3170764252)
      {
        goto LABEL_13;
      }

      v3 = 0;
      v4 = 34336;
    }

    *(a1 + 368) = v3;
    (*(a1 + 160))(a1, v4);
    result = 0;
    goto LABEL_16;
  }

LABEL_13:
  result = 4;
LABEL_16:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseOption(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  if (PPParserGetPart(a1, v5, 0))
  {
    if (LODWORD(v5[0]) == 1230262351 && *(v5 + 3) == 5132105)
    {
      result = PPParserParseOptionIdentifier(a1);
      if (!result)
      {
        if (PPParserGetPart(a1, v5, 0))
        {
          if (LOBYTE(v5[0]) == 59)
          {
            result = 0;
          }

          else
          {
            result = 30;
          }
        }

        else
        {
          result = 46;
        }
      }
    }

    else
    {
      PPParserReturnPart(a1);
      result = 3;
    }
  }

  else
  {
    result = 1;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseStatement(uint64_t a1)
{
  v63[4] = *MEMORY[0x277D85DE8];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *__s1 = 0u;
  v47 = 0u;
  Part = PPParserGetPart(a1, __s1, 0);
  if (!Part)
  {
    goto LABEL_19;
  }

  v3 = Part;
  if ((*(a1 + 368) & 0x22) == 0)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_12;
  }

  if (*__s1 ^ 0x474E4F4C | __s1[4])
  {
    if (*__s1 != 1380927571 || *&__s1[4] != 84)
    {
      goto LABEL_8;
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v3 = PPParserGetPart(a1, __s1, 0);
  if (!v3)
  {
LABEL_19:
    result = 1;
    goto LABEL_20;
  }

LABEL_12:
  if (!(*__s1 ^ 0x504D4554 | __s1[4]))
  {
    v9 = *MEMORY[0x277D85DE8];

    return PPParserParseTempDeclaration(a1, v5);
  }

  if (*__s1 == 1347704143 && *&__s1[3] == 5526864)
  {
    v10 = *MEMORY[0x277D85DE8];

    return PPParserParseOutputDeclaration(a1, v5);
  }

  if (v5)
  {
    result = 43;
    goto LABEL_20;
  }

  v11 = *(a1 + 368);
  if ((v11 & 2) == 0 && *__s1 == 0x53534552444441)
  {
    v23 = *MEMORY[0x277D85DE8];

    return PPParserParseAddressDeclaration(a1);
  }

  if (*__s1 == 1095909712 && *&__s1[4] == 77)
  {
    v21 = *MEMORY[0x277D85DE8];

    return PPParserParseParameterDeclaration(a1);
  }

  if (*__s1 == 1381258305 && *&__s1[3] == 4344146)
  {
    v22 = *MEMORY[0x277D85DE8];

    return PPParserParseAttributeDeclaration(a1);
  }

  if (*__s1 == 1095322689 && *&__s1[4] == 83)
  {
    v24 = *MEMORY[0x277D85DE8];

    return PPParserParseAliasDeclaration(a1);
  }

  if (*__s1 == 1380139341 && *&__s1[4] == 79)
  {
    v25 = *MEMORY[0x277D85DE8];

    return PPParserParseMacroDeclaration(a1);
  }

  if (*__s1 == 1129270338 && *&__s1[4] == 75)
  {
    v26 = *MEMORY[0x277D85DE8];

    return PPParserParseBlock(a1);
  }

  v17 = v63;
  memset(v63, 0, 32);
  v18 = &OpsList_ARBfp10;
  if ((v11 & 2) == 0)
  {
    v18 = &OpsList_ARBvp10;
  }

  v62 = v18;
  v19 = &OpsList_NVvp20;
  v20 = 1;
  if (v11 > 51)
  {
    v17 = &v63[1];
    if (v11 == 54)
    {
      v63[0] = &OpsList_NVfp10;
      v20 = 3;
      v19 = &OpsList_NVfp20;
    }

    else
    {
      if (v11 != 52)
      {
        goto LABEL_79;
      }

      v63[0] = &OpsList_NVvp20;
      v20 = 3;
      v19 = &OpsList_NVvp30;
    }
  }

  else if (v11 == 49)
  {
    v20 = 2;
  }

  else
  {
    if (v11 != 51)
    {
      goto LABEL_79;
    }

    v20 = 2;
    v19 = &OpsList_NVfp10;
  }

  *v17 = v19;
LABEL_79:
  if ((*(a1 + 380) & 2) != 0)
  {
    if ((v11 & 2) != 0)
    {
      v27 = &OpsList_fpSpecial;
    }

    else
    {
      v27 = &OpsList_vpSpecial;
    }

    v63[v20++ - 1] = v27;
  }

  v28 = 0;
  v63[v20 - 1] = 0;
  while (!*v18)
  {
LABEL_122:
    v18 = v63[++v28 - 1];
    if (!v18)
    {
      if ((*(a1 + 368) & 0x10) == 0 || (result = PPParserParseLabel(a1, __s1, v3), result == 3))
      {
        Macro = PPParserScopeFindMacro(*(a1 + 32), __s1);
        if (Macro)
        {
          result = PPParserExpandMacro(a1, Macro);
        }

        else if (*__s1 == 1230262351 && *&__s1[3] == 5132105)
        {
          result = 8;
        }

        else
        {
          PPParserReturnPart(a1);
          result = 6;
        }
      }

      goto LABEL_20;
    }
  }

  v29 = v18 + 1;
  while (1)
  {
    *__s2 = 0;
    v45 = 0;
    v30 = *(v29 - 1);
    if (!strcmp(__s1, v30))
    {
      v40 = *v29;
      v41 = a1;
      v42 = 0;
      goto LABEL_128;
    }

    v31 = *(a1 + 368);
    if ((v31 & 0x10) != 0)
    {
      sprintf_l(__s2, 0, "%sC", v30);
      if (!strcmp(__s1, __s2))
      {
        goto LABEL_129;
      }

      v31 = *(a1 + 368);
      if (v31 == 52)
      {
        break;
      }
    }

LABEL_98:
    if ((v31 & 2) != 0)
    {
      sprintf_l(__s2, 0, "%s_SAT", *(v29 - 1));
      if (!strcmp(__s1, __s2))
      {
LABEL_132:
        v40 = *v29;
        v41 = a1;
        v42 = 0;
        goto LABEL_133;
      }

      if ((*(a1 + 368) & 0x10) != 0)
      {
        sprintf_l(__s2, 0, "%sC_SAT", *(v29 - 1));
        if (!strcmp(__s1, __s2))
        {
          goto LABEL_134;
        }

        v32 = strlen(__s1);
        v33 = *(v29 - 1);
        v34 = strlen(v33);
        if (v34 + 1 == v32)
        {
          sprintf_l(__s2, 0, "%sR", v33);
          if (!strcmp(__s1, __s2))
          {
            v40 = *v29;
            v41 = a1;
            v42 = 1;
            goto LABEL_128;
          }

          sprintf_l(__s2, 0, "%sH", *(v29 - 1));
          if (!strcmp(__s1, __s2))
          {
            v40 = *v29;
            v41 = a1;
            v42 = 2;
            goto LABEL_128;
          }

          sprintf_l(__s2, 0, "%sX", *(v29 - 1));
          if (!strcmp(__s1, __s2))
          {
            v40 = *v29;
            v41 = a1;
            v42 = 3;
LABEL_128:
            v37 = 0;
LABEL_131:
            v38 = 0;
            goto LABEL_137;
          }
        }

        else
        {
          if (v34 + 2 != v32)
          {
            if (v34 + 5 == v32)
            {
              sprintf_l(__s2, 0, "%sR_SAT", v33);
              if (!strcmp(__s1, __s2))
              {
                v40 = *v29;
                v41 = a1;
                v42 = 1;
                goto LABEL_133;
              }

              sprintf_l(__s2, 0, "%sH_SAT", *(v29 - 1));
              if (!strcmp(__s1, __s2))
              {
                v40 = *v29;
                v41 = a1;
                v42 = 2;
                goto LABEL_133;
              }

              sprintf_l(__s2, 0, "%sX_SAT", *(v29 - 1));
              if (!strcmp(__s1, __s2))
              {
                v40 = *v29;
                v41 = a1;
                v42 = 3;
LABEL_133:
                v37 = 0;
                goto LABEL_136;
              }
            }

            else if (v34 + 6 == v32)
            {
              sprintf_l(__s2, 0, "%sRC_SAT", v33);
              if (!strcmp(__s1, __s2))
              {
                v40 = *v29;
                v41 = a1;
                v42 = 1;
                goto LABEL_135;
              }

              sprintf_l(__s2, 0, "%sHC_SAT", *(v29 - 1));
              if (!strcmp(__s1, __s2))
              {
                v40 = *v29;
                v41 = a1;
                v42 = 2;
                goto LABEL_135;
              }

              sprintf_l(__s2, 0, "%sXC_SAT", *(v29 - 1));
              if (!strcmp(__s1, __s2))
              {
                v40 = *v29;
                v41 = a1;
                v42 = 3;
LABEL_135:
                v37 = 1;
LABEL_136:
                v38 = 1;
LABEL_137:
                v39 = 0;
                goto LABEL_138;
              }
            }

            goto LABEL_121;
          }

          sprintf_l(__s2, 0, "%sRC", v33);
          if (!strcmp(__s1, __s2))
          {
            v40 = *v29;
            v41 = a1;
            v42 = 1;
LABEL_130:
            v37 = 1;
            goto LABEL_131;
          }

          sprintf_l(__s2, 0, "%sHC", *(v29 - 1));
          if (!strcmp(__s1, __s2))
          {
            v40 = *v29;
            v41 = a1;
            v42 = 2;
            goto LABEL_130;
          }

          sprintf_l(__s2, 0, "%sXC", *(v29 - 1));
          if (!strcmp(__s1, __s2))
          {
            v40 = *v29;
            v41 = a1;
            v42 = 3;
            goto LABEL_130;
          }
        }
      }
    }

LABEL_121:
    v35 = v29[1];
    v29 += 2;
    if (!v35)
    {
      goto LABEL_122;
    }
  }

  sprintf_l(__s2, 0, "%sC0", *(v29 - 1));
  if (!strcmp(__s1, __s2))
  {
LABEL_129:
    v40 = *v29;
    v41 = a1;
    v42 = 0;
    goto LABEL_130;
  }

  sprintf_l(__s2, 0, "%sC1", *(v29 - 1));
  if (strcmp(__s1, __s2))
  {
    sprintf_l(__s2, 0, "%s_SAT", *(v29 - 1));
    if (!strcmp(__s1, __s2))
    {
      goto LABEL_132;
    }

    sprintf_l(__s2, 0, "%sC_SAT", *(v29 - 1));
    if (!strcmp(__s1, __s2) || (sprintf_l(__s2, 0, "%sC0_SAT", *(v29 - 1)), !strcmp(__s1, __s2)))
    {
LABEL_134:
      v40 = *v29;
      v41 = a1;
      v42 = 0;
      goto LABEL_135;
    }

    sprintf_l(__s2, 0, "%sC1_SAT", *(v29 - 1));
    if (!strcmp(__s1, __s2))
    {
      v40 = *v29;
      v41 = a1;
      v42 = 0;
      v37 = 1;
      v38 = 1;
      goto LABEL_141;
    }

    v31 = *(a1 + 368);
    goto LABEL_98;
  }

  v40 = *v29;
  v41 = a1;
  v42 = 0;
  v37 = 1;
  v38 = 0;
LABEL_141:
  v39 = 1;
LABEL_138:
  result = PPParserParseOperation(v41, v40, v42, v37, v38, v39);
LABEL_20:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPParserParseEnd(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  if (PPParserGetPart(a1, v4, 0))
  {
    if (LODWORD(v4[0]) == 4476485)
    {
      if (PPParserGetPart(a1, v4, 0))
      {
        result = 9;
      }

      else
      {
        result = 0;
      }
    }

    else
    {
      result = 6;
    }
  }

  else
  {
    result = 46;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpARBProgramInfoToLLVMModule(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v83 = *MEMORY[0x277D85DE8];
  v65 = *(a2 + 4);
  v3 = *(a2 + 8);
  v4 = *(a2 + 74);
  v5 = *(a2 + (v4 + 79));
  v6 = *(a2 + (v4 + 87));
  v7 = 8 * v6;
  v8 = malloc_type_malloc(8 * v6 + 8, 0x75808E6AuLL);
  if (!v8)
  {
    goto LABEL_59;
  }

  v9 = v8;
  v10 = (v4 + 91);
  *v8 = v6;
  v11 = (v8 + 2);
  memcpy(v8 + 2, (a2 + v10), 8 * v6);
  v12 = v10 + v7;
  v13 = *(a2 + (v10 + v7));
  v14 = malloc_type_malloc(8 * v13 + 8, 0x75808E6AuLL);
  if (!v14)
  {
LABEL_59:
    abort();
  }

  v15 = v14;
  v16 = (v12 + 4);
  *v14 = v13;
  v17 = (v14 + 2);
  memcpy(v14 + 2, (a2 + v16), 8 * v13);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0;
  v68 = 0;
  v18 = PPParserCreate(v65);
  *(v18 + 188) = v3;
  v19 = *(a2 + 26);
  v20 = *(a2 + 58);
  v21 = *(a2 + 10);
  *(v18 + 18) = *(a2 + 42);
  *(v18 + 19) = v20;
  *(v18 + 16) = v21;
  *(v18 + 17) = v19;
  PPParserAttachString(v18, (a2 + 78), 0);
  v61 = v58;
  *(v18 + 7) = 0;
  v62 = v18 + 14;
  *(v18 + 8) = &v68;
  *(v18 + 9) = &v67;
  v18[20] = 1;
  *(v18 + 20) = llvmir_PPStreamSetTarget;
  *(v18 + 21) = llvmir_PPStreamAddOperation;
  *(v18 + 22) = llvmir_PPStreamAddTempUsage;
  *(v18 + 23) = llvmir_PPStreamAddAddressUsage;
  *(v18 + 24) = llvmir_PPStreamAddParamBinding;
  *(v18 + 25) = llvmir_PPStreamAddParamBindingArray;
  *(v18 + 26) = llvmir_PPStreamAddAttribBinding;
  *(v18 + 27) = llvmir_PPStreamAddOutputBinding;
  *(v18 + 28) = llvmir_PPStreamAddOption;
  *(v18 + 29) = llvmir_PPStreamAddConstant;
  *(v18 + 30) = llvmir_PPStreamAddLabel;
  *(v18 + 31) = llvmir_PPStreamResolveBranches;
  v22 = v18[71];
  v23 = v18[68];
  v59 = v18[69];
  v24 = *v9;
  MEMORY[0x28223BE20](v25);
  v64 = &v58[-((v26 + 15) & 0x7FFFFFFF0)];
  bzero(v64, v26);
  v66 = v24;
  if (v24)
  {
    v27 = v66;
    v28 = v64;
    while (1)
    {
      v30 = *v11;
      v11 += 2;
      v29 = v30;
      v31 = v30 >> 6;
      if (!(v30 >> 6))
      {
        break;
      }

      if (v31 == 3)
      {
        v32 = 7;
LABEL_9:
        *v28 = v32;
      }

      if ((v29 & 0x1F00) == 0xB00)
      {
        *v28 = 0;
      }

      ++v28;
      if (!--v27)
      {
        goto LABEL_13;
      }
    }

    v32 = 4;
    goto LABEL_9;
  }

LABEL_13:
  free(v9);
  v33 = *v15;
  MEMORY[0x28223BE20](v34);
  v36 = &v58[-((v35 + 15) & 0x7FFFFFFF0)];
  bzero(v36, v35);
  if (v33)
  {
    v37 = v33;
    v38 = v36;
    while (1)
    {
      v39 = *v17;
      v17 += 2;
      v40 = v39 >> 6;
      if (!(v39 >> 6))
      {
        break;
      }

      if (v40 == 3)
      {
        v41 = 7;
LABEL_19:
        *v38 = v41;
      }

      ++v38;
      if (!--v37)
      {
        goto LABEL_21;
      }
    }

    v41 = 4;
    goto LABEL_19;
  }

LABEL_21:
  v60 = v36;
  free(v15);
  v42 = v63;
  v63 = v33;
  gleLLVMInitBuildContext(&v69, v42, "ARB_Program", v22, v23, v59, v66, v33, 0, 16);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  *(&v82 + 1) = 0x100000001;
  LODWORD(v69) = (v65 >> 1) & 1;
  *(&v80 + 1) = v18;
  *&v81 = glpARBProgram_OutputToFunction;
  *(&v81 + 1) = glpARBProgram_AttribToFunction;
  *&v82 = glpARBProgram_ParamCountFunction;
  *(v18 + 6) = &v69;
  do
  {
    v46 = (v5 >> v43) & 0xF;
    if (((v5 >> v43) & 0xF) <= 3)
    {
      if (v46 == 3)
      {
        v49 = 4;
      }

      else
      {
        v49 = 0;
      }

      if (v46 == 2)
      {
        v49 = 3;
      }

      if (v46 == 1)
      {
        v50 = 2;
      }

      else
      {
        v50 = 0;
      }

      if (!v46)
      {
        v50 = 1;
      }

      if (((v5 >> v43) & 0xF) <= 1)
      {
        v47 = v50;
      }

      else
      {
        v47 = v49;
      }

      v48 = 0;
    }

    else if (((v5 >> v43) & 0xF) <= 5)
    {
      if (v46 == 5)
      {
        v51 = 3;
      }

      else
      {
        v51 = 0;
      }

      if (v46 == 4)
      {
        v47 = 5;
      }

      else
      {
        v47 = v51;
      }

      v48 = v46 != 4 && v46 == 5;
    }

    else
    {
      switch(v46)
      {
        case 6:
          v48 = 1;
          v47 = 4;
          break;
        case 7:
          v48 = 1;
          v47 = 5;
          break;
        case 0xF:
          goto LABEL_54;
        default:
          v47 = 0;
          v48 = 0;
          break;
      }
    }

    ++v45;
    gleLLVMAddTexture(&v69, v44, v47, v48, v48);
LABEL_54:
    ++v44;
    v43 += 4;
  }

  while (v44 != 16);
  gleLLVMBeginMain(*(v18 + 6), "#main", v64, v66, v60, v63, v45);
  PPParserParse(v18);
  v52 = *(v18 + 13);
  if (v52)
  {
    v53 = *v52;
  }

  else
  {
    v53 = 0;
  }

  glpARBProgram_GenerateMetadata(v18, v45);
  gleLLVMFinishMain(&v69, v53, v45);
  v54 = *(&v70 + 1);
  *(&v70 + 1) = 0;
  gleLLVMDestroyBuildContext(&v69);
  v55 = v62;
  *v62 = 0;
  v55[1] = 0;
  v55[2] = 0;
  v18[20] = 1;
  *(v18 + 20) = llvmir_PPStreamSetTarget;
  *(v18 + 21) = llvmir_PPStreamAddOperation;
  *(v18 + 22) = llvmir_PPStreamAddTempUsage;
  *(v18 + 23) = llvmir_PPStreamAddAddressUsage;
  *(v18 + 24) = llvmir_PPStreamAddParamBinding;
  *(v18 + 25) = llvmir_PPStreamAddParamBindingArray;
  *(v18 + 26) = llvmir_PPStreamAddAttribBinding;
  *(v18 + 27) = llvmir_PPStreamAddOutputBinding;
  *(v18 + 28) = llvmir_PPStreamAddOption;
  *(v18 + 29) = llvmir_PPStreamAddConstant;
  *(v18 + 30) = llvmir_PPStreamAddLabel;
  *(v18 + 31) = llvmir_PPStreamResolveBranches;
  PPParserFree(v18);
  v56 = *MEMORY[0x277D85DE8];
  return v54;
}