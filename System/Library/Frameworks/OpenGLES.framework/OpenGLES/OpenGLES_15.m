BOOL glpValueIsUsableAsSize(unsigned int *a1, _DWORD *a2)
{
  if (glpTypeGetKind(a1))
  {
    return 0;
  }

  if (glpPrimitiveTypeGetPrimitiveType(a1) != 5 || (*a2 & 0x80000000) != 0)
  {
    return glpPrimitiveTypeGetPrimitiveType(a1) == 36;
  }

  return 1;
}

void *glpAppendValueDescriptionToStringBuffer(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v6 = glpABIGetTypeSize(0, a2, 0);
  Size = glpTypeSizeGetSize(v6);
  v8 = Size;
  MEMORY[0x28223BE20](Size);
  v10 = (v49 - v9);
  bzero(v49 - v9, v11);
  glpTypeGetAppleVec4Types(a2, v10, 1, 0, 0, 0, 0, 0, 0);
  glpStringBufferAppendCString(a1, "(");
  if (v8)
  {
    v18 = 0;
    v49[0] = v8;
    do
    {
      v19 = ", {";
      if (!v18)
      {
        v19 = "{";
      }

      glpStringBufferAppendFormat(a1, "%s", v12, v13, v14, v15, v16, v17, v19);
      ScalarType = glpPrimitiveTypeGetScalarType(v10[v18]);
      ScalarCount = glpPrimitiveTypeGetScalarCount(v10[v18]);
      glpPrimitiveTypeGetBytesPerComponent(v10[v18]);
      if (ScalarType <= 8)
      {
        if (ScalarType == 1)
        {
          if (ScalarCount)
          {
            v40 = 0;
            v41 = 4 * ScalarCount;
            do
            {
              if (v40)
              {
                v42 = ", ";
              }

              else
              {
                v42 = "";
              }

              v46 = *(a3 + v40);
              glpStringBufferAppendFormat(a1, "%s%f (= %a)", v22, v23, v24, v25, v26, v27, v42);
              v40 += 4;
            }

            while (v41 != v40);
          }
        }

        else
        {
          if (ScalarType != 5)
          {
LABEL_47:
            abort();
          }

          if (ScalarCount)
          {
            v31 = 0;
            v32 = 4 * ScalarCount;
            do
            {
              if (v31)
              {
                v33 = ", ";
              }

              else
              {
                v33 = "";
              }

              v47 = *(a3 + v31);
              glpStringBufferAppendFormat(a1, "%s%d", v22, v23, v24, v25, v26, v27, v33);
              v31 += 4;
            }

            while (v32 != v31);
          }
        }
      }

      else
      {
        switch(ScalarType)
        {
          case 62:
            if (ScalarCount)
            {
              v34 = 0;
              v35 = 8 * ScalarCount;
              do
              {
                if (v34)
                {
                  v36 = ", ";
                }

                else
                {
                  v36 = "";
                }

                v45 = *(a3 + v34);
                glpStringBufferAppendFormat(a1, "%s%f (= %a)", v22, v23, v24, v25, v26, v27, v36);
                v34 += 8;
              }

              while (v35 != v34);
            }

            break;
          case 36:
            if (ScalarCount)
            {
              v37 = 0;
              v38 = 4 * ScalarCount;
              do
              {
                if (v37)
                {
                  v39 = ", ";
                }

                else
                {
                  v39 = "";
                }

                v48 = *(a3 + v37);
                glpStringBufferAppendFormat(a1, "%s%u", v22, v23, v24, v25, v26, v27, v39);
                v37 += 4;
              }

              while (v38 != v37);
            }

            break;
          case 9:
            if (ScalarCount)
            {
              v28 = 0;
              v29 = 4 * ScalarCount;
              do
              {
                if (v28)
                {
                  v30 = ", ";
                }

                else
                {
                  v30 = "";
                }

                *(a3 + v28);
                glpStringBufferAppendFormat(a1, "%s%s", v22, v23, v24, v25, v26, v27, v30);
                v28 += 4;
              }

              while (v29 != v28);
            }

            break;
          default:
            goto LABEL_47;
        }
      }

      glpStringBufferAppendFormat(a1, "}", v22, v23, v24, v25, v26, v27, v49[0]);
      ++v18;
      a3 += 16;
    }

    while (v18 != v49[0]);
  }

  result = glpStringBufferAppendCString(a1, ")");
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpTypedValueHash(uint64_t a1, uint64_t a2)
{
  v3 = glpABIGetTypeSize(0, a1, 0);
  Size = glpTypeSizeGetSize(v3);
  v5 = 16 * Size;
  if (!(16 * Size))
  {
    return 0;
  }

  v6 = (Size >> 1) & 0x7FFFFFF;
  v7 = ~(v5 >> 5);
  LODWORD(result) = 16 * Size;
  do
  {
    result = (32 * result + (result >> 2) + *(a2 + v5 - 1)) ^ result;
    v5 += v7;
  }

  while (v5 > v6);
  return result;
}

uint64_t glpTypedValuesEqual(unsigned int *a1, char *a2, uint64_t a3, char *a4)
{
  result = glpTypesEqual(a1, a3);
  if (result)
  {
    return glpCompareValues(a2, a1, a4) == 0;
  }

  return result;
}

uint64_t glpRemapValue(uint64_t a1, unsigned int *a2, char *a3)
{
  if (a3)
  {
    return glpTypedValueHashCache(a1, a2, a3, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t LookUpAddString(uint64_t a1, char *a2)
{
  v3 = LookUpAddStringHash(a1, a2);
  result = *(*(a1 + 16) + 8 * v3 + 4);
  if (!result)
  {
    v5 = v3;
    v6 = *(a1 + 64);
    if (v6 >= *(a1 + 68))
    {
      GrowAtomTable(a1, 2 * v6);
      v6 = *(a1 + 64);
    }

    v7 = *(a1 + 48);
    *(v7 + 4 * v6) = -1;
    v8 = *(a1 + 64);
    if (v8)
    {
      v9 = 0;
      v10 = __clz(v8);
      v11 = 32 - v10;
      v12 = v10 - 32;
      v13 = *(a1 + 64);
      do
      {
        v9 = v13 & 1 | (2 * v9);
        v13 >>= 1;
        v14 = __CFADD__(v12++, 1);
      }

      while (!v14);
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v14 = v11 <= 0x14;
    v15 = 20 - v11;
    if (!v14)
    {
      v15 = 0;
    }

    *(*(a1 + 56) + 4 * v8) = v9 << v15;
    result = *(a1 + 64);
    *(a1 + 64) = result + 1;
    v16 = (*(a1 + 16) + 8 * v5);
    *(v7 + 4 * result) = *v16;
    v16[1] = result;
  }

  return result;
}

uint64_t LookUpAddStringHash(uint64_t a1, char *a2)
{
  for (i = FindHashLoc(a1, a2); (i & 0x80000000) != 0; i = FindHashLoc(a1, a2))
  {
    v5 = *(a1 + 48);
    v21 = *(a1 + 32);
    v22 = v5;
    v23 = *(a1 + 64);
    v6 = *(a1 + 16);
    v19 = *a1;
    v20 = v6;
    if (InitAtomTable(a1, (2 * DWORD2(v6)) | 1u))
    {
      v7 = *(a1 + 64);
      if (v7 < v23)
      {
        do
        {
          v8 = v19;
          v9 = *(v22 + 4 * v7);
          HashLoc = FindHashLoc(&v19, (v19 + v9));
          AddAtomFixed(a1, v8 + v9, *(v20 + 8 * HashLoc + 4));
          ++v7;
        }

        while (v7 < v23);
      }

      FreeAtomTable(&v19);
    }
  }

  v11 = i;
  if (!*(*(a1 + 16) + 8 * i))
  {
    ++*(a1 + 28);
    v12 = strlen(a2) + 1;
    v14 = *(a1 + 8);
    v13 = *(a1 + 12);
    if (v12 + v14 >= v13)
    {
      do
      {
        v16 = malloc_type_malloc(2 * v13, 0xCA0EF1E7uLL);
        if (!v16)
        {
          abort();
        }

        v15 = v16;
        memcpy(v16, *a1, *(a1 + 12));
        free(*a1);
        *a1 = v15;
        v14 = *(a1 + 8);
        v13 = 2 * *(a1 + 12);
        *(a1 + 12) = v13;
      }

      while (v14 + v12 >= v13);
    }

    else
    {
      v15 = *a1;
    }

    strcpy((v15 + v14), a2);
    *(a1 + 8) += v12;
    v17 = (*(a1 + 16) + 8 * v11);
    *v17 = v14;
    v17[1] = 0;
  }

  return v11;
}

const char *GetAtomString(uint64_t a1, int a2)
{
  if (a2 < 1 || *(a1 + 64) <= a2)
  {
    v4 = "<invalid atom>";
    if (a2 == -1)
    {
      v4 = "<EOF>";
    }

    if (a2)
    {
      return v4;
    }

    else
    {
      return "<null atom>";
    }
  }

  else
  {
    v2 = *(*(a1 + 48) + 4 * a2);
    if (v2 < 1 || v2 >= *(a1 + 8))
    {
      return "<internal error: bad soffset>";
    }

    else
    {
      return (*a1 + v2);
    }
  }
}

uint64_t GetReversedAtom(uint64_t a1, int a2)
{
  if (a2 < 1 || *(a1 + 64) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 56) + 4 * a2);
  }
}

uint64_t InitAtomTable(uint64_t a1, int a2)
{
  v4 = malloc_type_malloc(0x4000uLL, 0xCA0EF1E7uLL);
  if (!v4 || ((*a1 = v4, *(a1 + 8) = 0x400000000001, a2 >= 1) ? (v5 = a2) : (v5 = 2047), (v6 = malloc_type_malloc(8 * v5, 0xCA0EF1E7uLL)) == 0))
  {
    abort();
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  bzero(v6, 8 * v5);
  *(a1 + 64) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
  GrowAtomTable(a1, 1024);
  if (!*(a1 + 48))
  {
    return 0;
  }

  AddAtomFixed(a1, "<undefined>", 0);
  v7 = *(a1 + 48);
  v10 = *v7;
  v8 = v7 + 2;
  v9 = v10;
  v11 = xmmword_23A29C350;
  v12 = xmmword_23A29C340;
  v13 = 292;
  v14 = vdupq_n_s64(0x122uLL);
  v15 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v14, v12)), *v11.i8).u8[0])
    {
      *(v8 - 2) = v9;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x122uLL), *&v12)), *&v11).i8[2])
    {
      *(v8 - 1) = v9;
    }

    if (vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x122uLL), *&v11))).i32[1])
    {
      *v8 = v9;
      v8[1] = v9;
    }

    v11 = vaddq_s64(v11, v15);
    v12 = vaddq_s64(v12, v15);
    v8 += 4;
    v13 -= 4;
  }

  while (v13);
  v21[1] = 0;
  v16 = 126;
  v17 = 1u;
  do
  {
    v21[0] = v16;
    AddAtomFixed(a1, v21, v16);
    v16 = asc_23A2ADD2D[v17++];
  }

  while (v17 != 26);
  v18 = &off_278B49ED0;
  v19 = 32;
  do
  {
    AddAtomFixed(a1, *v18, *(v18 - 2));
    v18 += 2;
    --v19;
  }

  while (v19);
  LookUpAddString(a1, "<*** end fixed atoms ***>");
  return 1;
}

void GrowAtomTable(uint64_t a1, int a2)
{
  if (*(a1 + 68) < a2)
  {
    v4 = *(a1 + 48);
    v5 = 4 * a2;
    if (v4)
    {
      v6 = malloc_type_realloc(v4, 4 * a2, 0x352A3853uLL);
      if (v6)
      {
        v7 = v6;
        v8 = malloc_type_realloc(*(a1 + 56), v5, 0x352A3853uLL);
        if (v8)
        {
          v9 = v8;
          v10 = *(a1 + 68);
LABEL_9:
          bzero(&v7[4 * v10], 4 * (a2 - v10));
          bzero(&v9[4 * *(a1 + 68)], 4 * (a2 - *(a1 + 68)));
          *(a1 + 48) = v7;
          *(a1 + 56) = v9;
          *(a1 + 68) = a2;
          return;
        }
      }
    }

    else
    {
      v11 = malloc_type_malloc(4 * a2, 0xCA0EF1E7uLL);
      if (v11)
      {
        v7 = v11;
        v12 = malloc_type_malloc(v5, 0xCA0EF1E7uLL);
        if (v12)
        {
          v9 = v12;
          v10 = 0;
          *(a1 + 68) = 0;
          goto LABEL_9;
        }
      }
    }

    abort();
  }
}

uint64_t AddAtomFixed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = LookUpAddStringHash();
  v6 = *(a1 + 68);
  if (*(a1 + 64) >= v6 || v6 <= a3)
  {
    v8 = 2 * v6;
    if (v8 <= a3)
    {
      v9 = a3 + 1;
    }

    else
    {
      v9 = v8;
    }

    GrowAtomTable(a1, v9);
  }

  v10 = (*(a1 + 16) + 8 * v5);
  *(*(a1 + 48) + 4 * a3) = *v10;
  v10[1] = a3;
  v11 = *(a1 + 64);
  if (v11 <= a3)
  {
    v12 = *(a1 + 56);
    do
    {
      v13 = 0;
      if (v11)
      {
        v14 = __clz(v11);
        v15 = 32 - v14;
        v16 = v14 - 32;
        v17 = v11;
        do
        {
          v13 = v17 & 1 | (2 * v13);
          v17 >>= 1;
          v18 = __CFADD__(v16++, 1);
        }

        while (!v18);
      }

      else
      {
        v15 = 0;
      }

      v18 = v15 <= 0x14;
      v19 = 20 - v15;
      if (!v18)
      {
        v19 = 0;
      }

      *(v12 + 4 * v11) = v13 << v19;
      v20 = *(a1 + 64);
      v11 = v20 + 1;
      *(a1 + 64) = v20 + 1;
    }

    while (v20 < a3);
  }

  return a3;
}

void FreeAtomTable(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    free(v3);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = *(a1 + 48);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    free(v5);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

uint64_t FindHashLoc(uint64_t *a1, char *__s1)
{
  v4 = *__s1;
  if (*__s1)
  {
    v5 = 0;
    v6 = __s1 + 1;
    v7 = *__s1;
    do
    {
      v5 = (13507 * v5 + 197 * v7) ^ (v5 >> 2);
      v8 = *v6++;
      v7 = v8;
    }

    while (v8);
    v9 = v5 & 0x7FFFFFFF;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 6);
  v11 = (v9 % v10);
  v12 = a1[2];
  v13 = *(v12 + 8 * v11);
  if (v13)
  {
    v14 = *a1;
    if (strcmp(__s1, (*a1 + v13)))
    {
      v15 = 0;
      if (v4)
      {
        v16 = __s1 + 1;
        do
        {
          v15 = (729 * v15 + 37 * v4) ^ (v15 >> 1);
          v17 = *v16++;
          LOBYTE(v4) = v17;
        }

        while (v17);
      }

      v18 = 0;
      while (1)
      {
        v11 = (((v11 + v15) & 0x7FFFFFFF) % v10);
        v19 = *(v12 + 8 * v11);
        if (!v19)
        {
          break;
        }

        if (!strcmp(__s1, (v14 + v19)))
        {
          return v11;
        }

        v18 += 4;
        if (v18 == 12)
        {
          return 0xFFFFFFFFLL;
        }
      }

      ++*(a1 + v18 + 32);
    }
  }

  return v11;
}

uint64_t lazyCPPSetup(uint64_t result)
{
  if (!*(result + 28))
  {
    v1 = result;
    glpInitializeExtensionBehavior(*(result + 32));
    glpAddExtensionDefines(*(v1 + 32));
    result = glpParseContextValidateGLSLVersion(*(v1 + 32));
    *(v1 + 28) = 1;
  }

  return result;
}

uint64_t InitCPP(uint64_t a1)
{
  *(a1 + 456) = LookUpAddString(a1 + 384, "define");
  *(a1 + 460) = LookUpAddString(a1 + 384, "defined");
  *(a1 + 468) = LookUpAddString(a1 + 384, "elif");
  *(a1 + 464) = LookUpAddString(a1 + 384, "else");
  *(a1 + 472) = LookUpAddString(a1 + 384, "endif");
  *(a1 + 476) = LookUpAddString(a1 + 384, "if");
  *(a1 + 480) = LookUpAddString(a1 + 384, "ifdef");
  *(a1 + 484) = LookUpAddString(a1 + 384, "ifndef");
  *(a1 + 488) = LookUpAddString(a1 + 384, "include");
  *(a1 + 492) = LookUpAddString(a1 + 384, "line");
  *(a1 + 496) = LookUpAddString(a1 + 384, "pragma");
  *(a1 + 500) = LookUpAddString(a1 + 384, "undef");
  *(a1 + 504) = LookUpAddString(a1 + 384, "error");
  *(a1 + 508) = LookUpAddString(a1 + 384, "__LINE__");
  *(a1 + 512) = LookUpAddString(a1 + 384, "__FILE__");
  *(a1 + 516) = LookUpAddString(a1 + 384, "__VERSION__");
  *(a1 + 520) = LookUpAddString(a1 + 384, "version");
  *(a1 + 524) = LookUpAddString(a1 + 384, "extension");
  *(a1 + 528) = LookUpAddString(a1 + 384, "core");
  *(a1 + 532) = LookUpAddString(a1 + 384, "es");
  Pool = mem_CreatePool(0, 0, v2);
  *(a1 + 536) = NewScopeInPool(a1, Pool);
  return 1;
}

uint64_t FreeCPP(uint64_t a1)
{
  v1 = *(a1 + 536);
  if (v1)
  {
    mem_FreePool(*(v1 + 40));
    *(a1 + 536) = 0;
  }

  return 1;
}

BOOL op_logand(int a1, int a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t op_div(int a1, int a2)
{
  if (a2)
  {
    return (a1 / a2);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t op_mod(int a1, int a2)
{
  if (a2)
  {
    return (a1 % a2);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t readCPPline(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v10 = (*(*(a1 + 16) + 16))();
  if (v10 != 270)
  {
    goto LABEL_110;
  }

  v11 = *(a2 + 12);
  if (v11 != *(a1 + 520) && !*(a1 + 28))
  {
    StringOfAtom = GetStringOfAtom((a1 + 384), v11);
    v18 = strlen(StringOfAtom);
    v19 = malloc_type_malloc(v18 + 4, 0xCA0EF1E7uLL);
    if (!v19)
    {
      abort();
    }

    v20 = v19;
    sprintf_l(v19, 0, "#%s", StringOfAtom);
    ScanFromSimpleString(a1, v20, 0);
    lazyCPPSetup(a1);
    v10 = 10;
    goto LABEL_116;
  }

  if (v11 != *(a1 + 456))
  {
    if (v11 == *(a1 + 464))
    {
      v15 = *(a1 + 40);
      if (v15 < 1)
      {
        v14 = "#else mismatch";
        goto LABEL_108;
      }

      if (*(a1 + 44 + 4 * v15))
      {
        v14 = "#else after a #else";
        goto LABEL_108;
      }

      if ((*(*(a1 + 16) + 16))() != 10)
      {
        if (glpCompilerGetIOSVersion(*(*(a1 + 32) + 784)) < 10)
        {
          glpCPPWarningToInfoLog(a1, "unexpected tokens following #else preprocessor directive - expected a newline");
        }

        else
        {
          glpCPPErrorToInfoLog(a1, "unexpected tokens following #else preprocessor directive - expected a newline");
        }

          ;
        }
      }

      *(a1 + 44 + 4 * *(a1 + 40)) = 1;
LABEL_98:
      v28 = CPPelse(a1, 0, a2);
      goto LABEL_99;
    }

    if (v11 == *(a1 + 468))
    {
      v16 = *(a1 + 40);
      if (v16 < 1)
      {
        v14 = "#elif mismatch";
        goto LABEL_108;
      }

      if (*(a1 + 4 * v16 + 44))
      {
        v14 = "#elif after a #else";
        goto LABEL_108;
      }

        ;
      }

      goto LABEL_98;
    }

    if (v11 == *(a1 + 472))
    {
      v21 = *(a1 + 40);
      v22 = __OFSUB__(v21, 1);
      v23 = v21 - 1;
      if (v23 < 0 != v22)
      {
        v14 = "#endif mismatch";
        goto LABEL_108;
      }

      *(a1 + 40) = v23;
      if ((*(*(a1 + 16) + 16))() != 10)
      {
        if (glpCompilerGetIOSVersion(*(*(a1 + 32) + 784)) < 8)
        {
          glpCPPWarningToInfoLog(a1, "unexpected tokens following #endif preprocessor directive - expected a newline");
        }

        else
        {
          glpCPPErrorToInfoLog(a1, "unexpected tokens following #endif preprocessor directive - expected a newline");
        }

        do
        {
          v10 = 10;
        }

        while ((*(*(a1 + 16) + 16))() != 10);
        goto LABEL_110;
      }

      goto LABEL_27;
    }

    if (v11 == *(a1 + 476))
    {
      v28 = CPPif (a1, a2);
    }

    else
    {
      if (v11 == *(a1 + 480))
      {
        v51 = a1;
        v52 = 1;
      }

      else
      {
        if (v11 != *(a1 + 484))
        {
          if (v11 == *(a1 + 488))
          {
            if (glpIsExtensionEnabled(*(a1 + 32), 0x19u) || glpIsExtensionEnabled(*(a1 + 32), 0x23u))
            {
              v28 = CPPinclude(a1, a2);
              goto LABEL_99;
            }

            v11 = *(a2 + 12);
          }

          if (v11 == *(a1 + 492))
          {
            v28 = CPPline(a1, a2);
            goto LABEL_99;
          }

          if (v11 == *(a1 + 496))
          {
            v28 = CPPpragma(a1, a2);
            goto LABEL_99;
          }

          if (v11 == *(a1 + 500))
          {
            v28 = CPPundef(a1, a2);
            goto LABEL_99;
          }

          if (v11 != *(a1 + 504))
          {
            if (v11 == *(a1 + 520))
            {
              v28 = CPPversion(a1, a2);
            }

            else
            {
              if (v11 != *(a1 + 524))
              {
                glpStoreErrMsg(a1, "Invalid Directive:", v4, v5, v6, v7, v8, v9);
                v69 = GetStringOfAtom((a1 + 384), *(a2 + 12));
                glpStoreErrMsg(a1, v69, v70, v71, v72, v73, v74, v75);
                ErrMsg = glpGetErrMsg(a1);
                glpCPPShInfoLogMsg(a1, ErrMsg);
                glpResetErrMsg(a1);
                goto LABEL_109;
              }

              v28 = CPPextension(a1, a2);
            }

            goto LABEL_99;
          }

          CPPerror(a1, a2);
LABEL_27:
          v10 = 10;
          goto LABEL_110;
        }

        v51 = a1;
        v52 = 0;
      }

      v28 = CPPifdef(v51, v52, a2);
    }

LABEL_99:
    v10 = v28;
    goto LABEL_110;
  }

  v12 = (*(*(a1 + 16) + 16))();
  if (v12 != 270)
  {
    v10 = v12;
LABEL_15:
    glpCPPErrorToInfoLog(a1, "#define");
    goto LABEL_110;
  }

  if (!*(a1 + 28))
  {
    lazyCPPSetup(a1);
  }

  v13 = *(a2 + 12);
  if (checkReservedName(a1, v13))
  {
    v14 = "#define of reserved name";
    goto LABEL_108;
  }

  v24 = (*(*(a1 + 16) + 16))();
  if (v24 != 40)
  {
    v27 = v24;
    v25 = 0;
    v26 = 0;
LABEL_39:
    AtomString = GetAtomString(a1 + 384, v13);
    v30 = NewTokenStream(a1, AtomString, *(*(a1 + 536) + 40));
    while ((v27 + 1) > 0xB || ((1 << (v27 + 1)) & 0x803) == 0)
    {
      while (v27 == 92)
      {
        v32 = (*(*(a1 + 16) + 16))();
        if ((v32 + 1) > 0xB || ((1 << (v32 + 1)) & 0x803) == 0)
        {
          v27 = v32;
          RecordToken(v30, 92, a2);
        }

        else
        {
          v27 = (*(*(a1 + 16) + 16))();
        }
      }

      if ((v27 + 1) > 0xB || ((1 << (v27 + 1)) & 0x803) == 0)
      {
        RecordToken(v30, v27, a2);
        v27 = (*(*(a1 + 16) + 16))();
      }
    }

    v34 = LookUpSymbol(a1, *(a1 + 536), v13);
    if (v34)
    {
      v41 = v34;
      if ((*(v34 + 56) & 2) == 0)
      {
        if (*(v34 + 32) == v25)
        {
          if (v25 < 1)
          {
LABEL_62:
            RewindTokenStream(*(v34 + 48));
            RewindTokenStream(v30);
            while (1)
            {
              bzero(__s2, 0x402uLL);
              bzero(a2, 0x420uLL);
              Token = ReadToken(*(v41 + 48), a2);
              v49 = *(a2 + 12);
              v50 = *(a2 + 20);
              __strcpy_chk();
              bzero(a2, 0x420uLL);
              if (ReadToken(v30, a2) != Token || *(a2 + 12) != v49 || *(a2 + 20) != v50 || strcmp((a2 + 24), __s2))
              {
                break;
              }

              if (Token <= 0)
              {
                goto LABEL_73;
              }
            }
          }

          else
          {
            v42 = *(v34 + 40);
            v43 = v25;
            v44 = v26;
            while (1)
            {
              v46 = *v42++;
              v45 = v46;
              v47 = *v44++;
              if (v45 != v47)
              {
                break;
              }

              if (!--v43)
              {
                goto LABEL_62;
              }
            }
          }
        }

        glpStoreErrMsg(a1, "Macro Redefined", v35, v36, v37, v38, v39, v40);
        v53 = GetStringOfAtom((a1 + 384), v13);
        glpStoreErrMsg(a1, v53, v54, v55, v56, v57, v58, v59);
        v60 = glpGetErrMsg(a1);
        glpDecLineNumber(a1);
        glpCPPShInfoLogMsg(a1, v60);
        glpIncLineNumber(a1);
        glpResetErrMsg(a1);
      }
    }

    else
    {
      v41 = AddSymbol(a1, *(a1 + 536), v13, 0);
    }

LABEL_73:
    *(v41 + 32) = v25;
    *(v41 + 36) = 0;
    *(v41 + 40) = v26;
    *(v41 + 48) = v30;
    v10 = 10;
    *(v41 + 56) = 0;
    goto LABEL_110;
  }

  if (*(a2 + 16))
  {
    v25 = 0;
    v26 = 0;
    v27 = 40;
    goto LABEL_39;
  }

  v25 = 0;
  memset(__src, 0, 256);
  while (1)
  {
    v61 = (*(*(a1 + 16) + 16))();
    v10 = v61;
    if (!v25 && v61 == 41)
    {
      v25 = 0;
LABEL_118:
      v26 = mem_Alloc(*(*(a1 + 536) + 40), 4 * v25);
      memcpy(v26, __src, 4 * v25);
      v27 = (*(*(a1 + 16) + 16))();
      *(a2 + 20) = 1;
      goto LABEL_39;
    }

    if (v61 != 270)
    {
      goto LABEL_15;
    }

    if (v25 <= 63)
    {
      break;
    }

    if (glpCompilerGetIOSVersion(*(*(a1 + 32) + 784)) >= 10)
    {
      v14 = "too many arguments for #define";
      goto LABEL_108;
    }

LABEL_89:
    v65 = (*(*(a1 + 16) + 16))();
    if (v65 != 44)
    {
      v10 = v65;
      if (v65 != 41)
      {
        goto LABEL_15;
      }

      goto LABEL_118;
    }
  }

  if (v25 < 1)
  {
LABEL_87:
    __src[v25++] = *(a2 + 12);
    goto LABEL_89;
  }

  v62 = v25;
  v63 = __src;
  while (1)
  {
    v64 = *v63++;
    if (v64 == *(a2 + 12) && glpCompilerGetIOSVersion(*(*(a1 + 32) + 784)) >= 10)
    {
      break;
    }

    if (!--v62)
    {
      goto LABEL_87;
    }
  }

  v14 = "#define has duplicate argument names";
LABEL_108:
  glpCPPErrorToInfoLog(a1, v14);
LABEL_109:
  v10 = 270;
LABEL_110:
  while ((v10 + 1) > 0xB || ((1 << (v10 + 1)) & 0x803) == 0)
  {
    v10 = (*(*(a1 + 16) + 16))();
  }

  lazyCPPSetup(a1);
LABEL_116:
  v67 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t CPPelse(uint64_t a1, int a2, uint64_t a3)
{
  result = (*(*(a1 + 16) + 16))();
  if (result < 1)
  {
    return result;
  }

  v7 = *(a1 + 40);
  v8 = a1 + 44;
  while (1)
  {
    if (result == 10)
    {
      goto LABEL_13;
    }

    if (result != 35)
    {
        ;
      }

LABEL_13:
      result = (*(*(a1 + 16) + 16))();
      goto LABEL_14;
    }

    result = (*(*(a1 + 16) + 16))();
    if (result == 270)
    {
      break;
    }

LABEL_14:
    if (result <= 0)
    {
      return result;
    }
  }

  v9 = *(a3 + 12);
  if (v9 == *(a1 + 476) || v9 == *(a1 + 480) || v9 == *(a1 + 484))
  {
    v10 = *(a1 + 40) + 1;
    *(a1 + 40) = v10;
    if (v10 >= 0x40)
    {
      glpCPPErrorToInfoLog(a1, "max #if nesting depth exceeded");
      return 0;
    }

    *(v8 + 4 * v10) = 0;
    goto LABEL_11;
  }

  if (v9 == *(a1 + 472))
  {
    v11 = *(a1 + 40);
    *(a1 + 40) = v11 - 1;
    if (v11 <= v7)
    {
      result = (*(*(a1 + 16) + 16))();
      if (result != 10)
      {
        if (glpCompilerGetIOSVersion(*(*(a1 + 32) + 784)) < 8)
        {
          glpCPPWarningToInfoLog(a1, "unexpected tokens following #endif preprocessor directive - expected a newline");
        }

        else
        {
          glpCPPErrorToInfoLog(a1, "unexpected tokens following #endif preprocessor directive - expected a newline");
        }

        do
        {
          v15 = (*(*(a1 + 16) + 16))();
          result = 10;
        }

        while (v15 != 10);
      }

      return result;
    }

    goto LABEL_11;
  }

  if (v9 == *(a1 + 468))
  {
    v12 = *(a1 + 40);
    if (!*(v8 + 4 * v12))
    {
      result = 270;
      if (a2 && v12 == v7)
      {
        *(a1 + 40) = v7 - 1;

        return CPPif (a1, a3);
      }

      goto LABEL_14;
    }

    v14 = "#elif after a #else";
LABEL_41:
    glpCPPErrorToInfoLog(a1, v14);
    return 270;
  }

  if (v9 != *(a1 + 464))
  {
LABEL_11:
    result = 270;
    goto LABEL_14;
  }

  v13 = *(a1 + 40);
  if (*(v8 + 4 * v13))
  {
    v14 = "#else after a #else";
    goto LABEL_41;
  }

  *(v8 + 4 * v13) = 1;
  result = 270;
  if (!a2 || *(a1 + 40) != v7)
  {
    goto LABEL_14;
  }

  result = (*(*(a1 + 16) + 16))();
  if (result != 10)
  {
    if (glpCompilerGetIOSVersion(*(*(a1 + 32) + 784)) < 10)
    {
      glpCPPWarningToInfoLog(a1, "unexpected tokens following #else preprocessor directive - expected a newline");
    }

    else
    {
      glpCPPErrorToInfoLog(a1, "unexpected tokens following #else preprocessor directive - expected a newline");
    }

    do
    {
      v16 = (*(*(a1 + 16) + 16))();
      result = 10;
    }

    while (v16 != 10);
  }

  return result;
}

uint64_t CPPif (uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a1 + 16) + 16))();
  v7 = 0;
  if (!*(a1 + 28))
  {
    lazyCPPSetup(a1);
  }

  v5 = *(a1 + 40) + 1;
  *(a1 + 40) = v5;
  if (v5 < 0x40)
  {
    *(a1 + 4 * v5 + 44) = 0;
    if (eval(a1, v4, 0, &v7 + 1, &v7, a2, 0) != 10)
    {
      glpCPPErrorToInfoLog(a1, "unexpected tokens following #if preprocessor directive - expected a newline");
        ;
      }
    }

    if (v7)
    {
      return 10;
    }

    else
    {
      return CPPelse(a1, 1, a2);
    }
  }

  else
  {
    glpCPPErrorToInfoLog(a1, "max #if nesting depth exceeded");
    return 0;
  }
}

uint64_t CPPifdef(uint64_t a1, int a2, uint64_t a3)
{
  v6 = (*(*(a1 + 16) + 16))();
  v7 = *(a3 + 12);
  if (!*(a1 + 28))
  {
    lazyCPPSetup(a1);
  }

  v8 = *(a1 + 40) + 1;
  *(a1 + 40) = v8;
  if (v8 >= 0x40)
  {
    glpCPPErrorToInfoLog(a1, "max #if nesting depth exceeded");
    return 0;
  }

  *(a1 + 4 * v8 + 44) = 0;
  if (v6 != 270)
  {
    if (a2)
    {
      v10 = "ifdef";
    }

    else
    {
      v10 = "ifndef";
    }

    glpCPPErrorToInfoLog(a1, v10);
    return v6;
  }

  v9 = LookUpSymbol(a1, *(a1 + 536), v7);
  if ((*(*(a1 + 16) + 16))() != 10)
  {
    if (glpCompilerGetIOSVersion(*(*(a1 + 32) + 784)) < 10)
    {
      glpCPPWarningToInfoLog(a1, "unexpected tokens following #ifdef preprocessor directive - expected a newline");
    }

    else
    {
      glpCPPErrorToInfoLog(a1, "unexpected tokens following #ifdef preprocessor directive - expected a newline");
    }

      ;
    }
  }

  if (v9)
  {
    v11 = ((*(v9 + 56) >> 1) & 1) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == a2)
  {
    return 10;
  }

  return CPPelse(a1, 1, a3);
}

uint64_t CPPinclude(uint64_t a1, uint64_t a2)
{
  v45[1] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 28))
  {
    lazyCPPSetup(a1);
  }

  *(a1 + 352) |= 2u;
  while (1)
  {
    v4 = (*(*(a1 + 16) + 16))();
    if (v4 != 270)
    {
      break;
    }

    if (!MacroExpand(a1, *(a2 + 12), a2))
    {
      *(a1 + 352) &= ~2u;
LABEL_16:
      glpCPPErrorToInfoLog(a1, "#include");
      result = 10;
      goto LABEL_20;
    }
  }

  *(a1 + 352) &= ~2u;
  if (v4 != 278)
  {
    goto LABEL_16;
  }

  StringOfAtom = GetStringOfAtom((a1 + 384), *(a2 + 12));
  if ((*(*(a1 + 16) + 16))() != 10)
  {
    glpCPPWarningToInfoLog(a1, "unexpected tokens following #include preprocessor directive - expected a newline");
      ;
    }
  }

  if (*(a1 + 368) && *(a1 + 376))
  {
    v12 = strlen(StringOfAtom);
    v13 = MEMORY[0x28223BE20](v12);
    v14 = v45 - ((v13 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v14, v13 + 1);
    strncpy(v14, StringOfAtom, v12);
    v14[v12] = 0;
    v15 = (*(a1 + 368))(*(a1 + 360), v14);
    if (v15)
    {
      v22 = *(a1 + 356);
      *(a1 + 356) = v22 + 1;
      if (v22 < 199)
      {
        ScanFromIncludeString(a1, v15, StringOfAtom);
        result = 10;
        goto LABEL_20;
      }

      glpDecLineNumber(a1);
      glpCPPShInfoLogMsg(a1, "#include nested too deeply");
      glpIncLineNumber(a1);
    }

    else
    {
      glpStoreErrMsg(a1, "Cannot #include", v16, v17, v18, v19, v20, v21);
      glpStoreErrMsg(a1, StringOfAtom, v31, v32, v33, v34, v35, v36);
      glpStoreErrMsg(a1, "not found", v37, v38, v39, v40, v41, v42);
      ErrMsg = glpGetErrMsg(a1);
      glpDecLineNumber(a1);
      glpCPPShInfoLogMsg(a1, ErrMsg);
      glpIncLineNumber(a1);
      glpResetErrMsg(a1);
    }
  }

  else
  {
    glpStoreErrMsg(a1, "GetInclude, FreeInclude callbacks unset, cannot #include", v6, v7, v8, v9, v10, v11);
    glpStoreErrMsg(a1, StringOfAtom, v24, v25, v26, v27, v28, v29);
    v30 = glpGetErrMsg(a1);
    glpDecLineNumber(a1);
    glpCPPShInfoLogMsg(a1, v30);
    glpIncLineNumber(a1);
    glpResetErrMsg(a1);
  }

  result = 0;
LABEL_20:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CPPline(uint64_t a1, uint64_t a2)
{
  for (i = *(*(a1 + 16) + 16); ; i = *(*(a1 + 16) + 16))
  {
    v5 = i();
    v6 = v5;
    if (v5 != 270)
    {
      break;
    }

    if (!MacroExpand(a1, *(a2 + 12), a2))
    {
      goto LABEL_26;
    }
  }

  if (v5 == 10)
  {
    glpDecLineNumber(a1);
    glpCPPErrorToInfoLog(a1, "#line");
    glpIncLineNumber(a1);
    return v6;
  }

  if (v5 != 271)
  {
    goto LABEL_26;
  }

  v7 = strtol_l((a2 + 24), 0, 10, 0);
  *(a2 + 16) = v7;
  glpSetLineNumber(a1, v7 - (*a1 > 5u));
  while (1)
  {
    v8 = (*(*(a1 + 16) + 16))();
    v6 = v8;
    if (v8 != 270)
    {
      break;
    }

    if (!MacroExpand(a1, *(a2 + 12), a2))
    {
      goto LABEL_26;
    }
  }

  if (v8 != 10)
  {
    if (v8 == 271)
    {
      glpSetFilename(a1, (a2 + 24));
      while (1)
      {
        v6 = (*(*(a1 + 16) + 16))();
        if (v6 != 270)
        {
          break;
        }

        if (!MacroExpand(a1, *(a2 + 12), a2))
        {
          goto LABEL_26;
        }
      }

LABEL_25:
      if (v6 == 10)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v8 == 278 && (glpIsExtensionEnabled(*(a1 + 32), 0x19u) || glpIsExtensionEnabled(*(a1 + 32), 0x23u)))
    {
      StringOfAtom = GetStringOfAtom((a1 + 384), *(a2 + 12));
      glpSetFilename(a1, StringOfAtom);
      do
      {
        v6 = (*(*(a1 + 16) + 16))();
        if (v6 != 270)
        {
          goto LABEL_25;
        }
      }

      while (MacroExpand(a1, *(a2 + 12), a2));
    }

LABEL_26:
    glpCPPErrorToInfoLog(a1, "#line");
  }

  return v6;
}

uint64_t CPPpragma(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a1 + 16) + 16))();
  if (v4 == 10)
  {
    return 10;
  }

  v6 = v4;
  v7 = malloc_type_malloc(0x50uLL, 0xCA0EF1E7uLL);
  if (!v7)
  {
LABEL_25:
    abort();
  }

  v8 = v7;
  v9 = 0;
  v10 = 10;
  do
  {
    if (v9 >= v10)
    {
      v10 *= 2;
      v11 = malloc_type_realloc(v8, 8 * v10, 0x352A3853uLL);
      if (!v11)
      {
        goto LABEL_25;
      }

      v8 = v11;
    }

    if (v6 > 269)
    {
      if (v6 == 271)
      {
LABEL_16:
        v16 = strlen((a2 + 24));
        v14 = malloc_type_malloc(v16 + 1, 0xCA0EF1E7uLL);
        if (!v14)
        {
          goto LABEL_25;
        }

        *(v8 + v9) = v14;
        v15 = (a2 + 24);
        goto LABEL_20;
      }

      if (v6 == 270)
      {
        AtomString = GetAtomString(a1 + 384, *(a2 + 12));
        v13 = strlen(AtomString);
        v14 = malloc_type_malloc(v13 + 1, 0xCA0EF1E7uLL);
        if (!v14)
        {
          goto LABEL_25;
        }

        *(v8 + v9) = v14;
        v15 = AtomString;
        goto LABEL_20;
      }
    }

    else
    {
      if ((v6 - 266) < 2)
      {
        goto LABEL_16;
      }

      if (v6 == -1)
      {
        glpCPPShInfoLogMsg(a1, "#pragma directive must end with a newline");
        return 0xFFFFFFFFLL;
      }
    }

    __src[0] = v6;
    __src[1] = 0;
    v14 = malloc_type_malloc(2uLL, 0xCA0EF1E7uLL);
    if (!v14)
    {
      goto LABEL_25;
    }

    *(v8 + v9) = v14;
    v15 = __src;
LABEL_20:
    strcpy(v14, v15);
    ++v9;
    v6 = (*(*(a1 + 16) + 16))();
  }

  while (v6 != 10);
  (*(*(a1 + 16) + 32))();
  glpHandlePragma(a1, v8, v9);
  v5 = (*(*(a1 + 16) + 16))();
  v17 = 0;
  do
  {
    free(*(v8 + v17++));
  }

  while (v9 != v17);
  free(v8);
  return v5;
}

uint64_t CPPundef(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a1 + 16) + 16))();
  if (v4 != 270)
  {
    v5 = v4;
    goto LABEL_5;
  }

  if (checkReservedName(a1, *(a2 + 12)))
  {
    v5 = 270;
    v6 = "#undef of reserved name";
LABEL_6:
    glpCPPErrorToInfoLog(a1, v6);
    return v5;
  }

  v8 = LookUpSymbol(a1, *(a1 + 536), *(a2 + 12));
  if (v8)
  {
    *(v8 + 56) |= 2u;
  }

  v5 = (*(*(a1 + 16) + 16))();
  if (v5 != 10)
  {
LABEL_5:
    v6 = "#undef";
    goto LABEL_6;
  }

  return v5;
}

uint64_t CPPerror(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a1 + 16) + 16))();
  glpStoreErrMsg(a1, "", v5, v6, v7, v8, v9, v10);
  while (1)
  {
    v17 = v4 - 9;
    if ((v4 - 265) > 0xD)
    {
      break;
    }

    if (((1 << v17) & 0x46) != 0)
    {
      StringOfAtom = a2 + 24;
      goto LABEL_11;
    }

    if (((1 << v17) & 0x2020) == 0)
    {
      if (v4 == 265)
      {
        goto LABEL_12;
      }

      break;
    }

    v19 = *(a2 + 12);
    v20 = (a1 + 384);
LABEL_10:
    StringOfAtom = GetStringOfAtom(v20, v19);
LABEL_11:
    glpStoreErrMsg(a1, StringOfAtom, v11, v12, v13, v14, v15, v16);
    v4 = (*(*(a1 + 16) + 16))();
  }

  if (v4 != 10)
  {
    v20 = (a1 + 384);
    v19 = v4;
    goto LABEL_10;
  }

LABEL_12:
  glpDecLineNumber(a1);
  ErrMsg = glpGetErrMsg(a1);
  glpCPPShInfoLogMsg(a1, ErrMsg);
  glpResetErrMsg(a1);

  return glpIncLineNumber(a1);
}

uint64_t CPPversion(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a1 + 16) + 16))();
  if (*(a1 + 28) == 1)
  {
    glpCPPShInfoLogMsg(a1, "#version must occur before any other statement in the program");
  }

  if (v4 != 271)
  {
    if (v4 == 10)
    {
      glpDecLineNumber(a1);
      glpCPPErrorToInfoLog(a1, "#version");
      glpIncLineNumber(a1);
      return v4;
    }

    glpCPPErrorToInfoLog(a1, "#version");
  }

  v5 = strtol_l((a2 + 24), 0, 10, 0);
  *(a2 + 16) = v5;
  glpParseContextSetGLSLVersion(*(a1 + 32), v5);
  v4 = (*(*(a1 + 16) + 16))();
  if (v4 == 10 && *a1 != 6)
  {
    lazyCPPSetup(a1);
    return 10;
  }

  else
  {
    v6 = *(a2 + 12);
    if (v6 == *(a1 + 528) && *a1 >= 5u || v6 == *(a1 + 532) && *a1 == 6)
    {
      lazyCPPSetup(a1);
    }

    else
    {
      glpCPPErrorToInfoLog(a1, "#version");
    }
  }

  return v4;
}

uint64_t CPPextension(uint64_t a1, uint64_t a2)
{
  if (glpCompilerGetIOSVersion(*(*(a1 + 32) + 784)) >= 10 && (*(a1 + 352) & 8) != 0)
  {
    glpCPPErrorToInfoLog(a1, "#extension must always be before any non-preprocessor tokens");
  }

  v4 = (*(*(a1 + 16) + 16))();
  if (v4 != 270)
  {
    if (v4 == 10)
    {
      glpDecLineNumber(a1);
      glpCPPShInfoLogMsg(a1, "extension name not specified");
      glpIncLineNumber(a1);
      return 10;
    }

    glpCPPErrorToInfoLog(a1, "#extension");
  }

  v6 = *(a2 + 12);
  v7 = (*(*(a1 + 16) + 16))();
  if (v7 != 58)
  {
    v5 = v7;
    v12 = "':' missing after extension name";
LABEL_14:
    glpCPPShInfoLogMsg(a1, v12);
    return v5;
  }

  v8 = (*(*(a1 + 16) + 16))();
  if (v8 != 270)
  {
    v5 = v8;
    v12 = "behavior for extension not specified";
    goto LABEL_14;
  }

  v9 = *(a1 + 32);
  AtomString = GetAtomString(a1 + 384, v6);
  v11 = GetAtomString(a1 + 384, *(a2 + 12));
  glpUpdateExtensionBehavior(v9, AtomString, v11);
  v5 = (*(*(a1 + 16) + 16))();
  if (v5 != 10)
  {
    glpCPPErrorToInfoLog(a1, "#extension");
  }

  return v5;
}

uint64_t MacroExpand(uint64_t a1, int a2, uint64_t a3)
{
  v6 = LookUpSymbol(a1, *(a1 + 536), a2);
  if (*(a1 + 508) == a2)
  {
    LineNumber = glpGetLineNumber(a1);
LABEL_3:
    *(a3 + 16) = LineNumber;
    sprintf_l((a3 + 24), 0, "%d", LineNumber);
LABEL_4:
    v8 = a1;
    v9 = 271;
LABEL_5:
    UngetToken(v8, v9, a3);
    return 1;
  }

  if (*(a1 + 512) == a2)
  {
    if (*glpGetFilename(a1) - 48 > 9)
    {
      Filename = glpGetFilename(a1);
      *(a3 + 12) = LookUpAddString(a1 + 384, Filename);
      v8 = a1;
      v9 = 278;
      goto LABEL_5;
    }

    v11 = glpGetFilename(a1);
    LineNumber = strtol_l(v11, 0, 10, 0);
    goto LABEL_3;
  }

  if (*(a1 + 516) == a2)
  {
    v12 = glpGLSLVersionToInt(*a1);
    sprintf_l((a3 + 24), 0, "%d", v12);
    *(a3 + 16) = strtol_l((a3 + 24), 0, 10, 0);
    goto LABEL_4;
  }

  v14 = v6;
  if (!v6 || (*(v6 + 56) & 3) != 0)
  {
    return 0;
  }

  v15 = malloc_type_malloc(0x48uLL, 0xCA0EF1E7uLL);
  if (!v15)
  {
    goto LABEL_81;
  }

  v16 = v15;
  *(v15 + 8) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 24) = 0u;
  *v15 = a1;
  *(v15 + 2) = macro_scan;
  v17 = *(a1 + 16);
  *(v16 + 12) = *(v17 + 48);
  v16[5] = *(v17 + 40);
  v16[7] = (v14 + 32);
  if (!*(v14 + 40))
  {
    goto LABEL_79;
  }

  v18 = (*(v17 + 16))(v17, a3);
  if (v18 != 40)
  {
    UngetToken(a1, v18, a3);
    *(a3 + 12) = a2;
    free(v16);
    return 0;
  }

  v16[8] = mem_Alloc(*(*(a1 + 536) + 40), 8 * *v16[7]);
  if (*v16[7] >= 1)
  {
    v19 = 0;
    do
    {
      *&v16[8][2 * v19++] = NewTokenStream(a1, "macro arg2", *(*(a1 + 536) + 40));
    }

    while (v19 < *v16[7]);
  }

  v20 = 0;
  v21 = 0;
  do
  {
    v22 = 0;
    while (1)
    {
      while (1)
      {
        v23 = (*(*(a1 + 16) + 16))();
        if (v23 != 270)
        {
          break;
        }

        if (!MacroExpand(a1, *(a3 + 12), a3))
        {
          v30 = 270;
          goto LABEL_28;
        }
      }

      v30 = v23;
      if (v23 <= 0)
      {
LABEL_50:
        glpStoreErrMsg(a1, "EOF in Macro ", v24, v25, v26, v27, v28, v29);
        StringOfAtom = GetStringOfAtom((a1 + 384), a2);
        glpStoreErrMsg(a1, StringOfAtom, v37, v38, v39, v40, v41, v42);
        ErrMsg = glpGetErrMsg(a1);
        glpCPPShInfoLogMsg(a1, ErrMsg);
        glpResetErrMsg(a1);
        free(v16);
        return 1;
      }

LABEL_28:
      v31 = *v16[7];
      v32 = v30 != 41;
      if (v30 != 41 && !v31)
      {
        break;
      }

      if (v22)
      {
        if (v30 == 40)
        {
          goto LABEL_37;
        }
      }

      else
      {
        switch(v30)
        {
          case '(':
LABEL_37:
            ++v22;
            goto LABEL_38;
          case ')':
            if (v31 == 1 && v21 == 0)
            {
              v45 = v20;
            }

            else
            {
              v45 = v20 + 1;
            }

            if (v45 >= v31)
            {
              goto LABEL_61;
            }

LABEL_59:
            v46 = "Too few args in Macro ";
            goto LABEL_60;
          case ',':
            goto LABEL_40;
        }

        v22 = 0;
      }

LABEL_38:
      v22 -= v30 == 41;
      RecordToken(*&v16[8][2 * v20], v30, a3);
      v21 = 1;
    }

    v32 = 1;
LABEL_40:
    ++v20;
  }

  while (v20 < v31);
  if (v31 > v20)
  {
    goto LABEL_59;
  }

  if (v32)
  {
    v33 = 0;
    while (v30 != 41 || v33 >= 1)
    {
      v34 = v33 - (v30 == 41);
      v35 = (*(*(a1 + 16) + 16))();
      v30 = v35;
      if (v35 == 40)
      {
        v33 = v34 + 1;
      }

      else
      {
        v33 = v34;
      }

      if (v35 < 0)
      {
        goto LABEL_50;
      }
    }

    v46 = "Too many args in Macro ";
LABEL_60:
    glpStoreErrMsg(a1, v46, v24, v25, v26, v27, v28, v29);
    v47 = GetStringOfAtom((a1 + 384), a2);
    glpStoreErrMsg(a1, v47, v48, v49, v50, v51, v52, v53);
    v54 = glpGetErrMsg(a1);
    glpCPPShInfoLogMsg(a1, v54);
    glpResetErrMsg(a1);
  }

LABEL_61:
  if (*v16[7] >= 1)
  {
    v55 = 0;
    while (1)
    {
      v56 = *&v16[8][2 * v55];
      RewindTokenStream(v56);
      do
      {
        while (1)
        {
          Token = ReadToken(v56, a3);
          if (Token == 270)
          {
            break;
          }

          if (Token <= 0)
          {
            v58 = v56;
            goto LABEL_78;
          }
        }
      }

      while (!LookUpSymbol(a1, *(a1 + 536), *(a3 + 12)));
      v58 = NewTokenStream(a1, "macro arg1", *(*(a1 + 536) + 40));
      v59 = malloc_type_malloc(0x38uLL, 0xCA0EF1E7uLL);
      if (!v59)
      {
        break;
      }

      *(v59 + 8) = 0u;
      *(v59 + 24) = 0u;
      *(v59 + 40) = 0u;
      *v59 = a1;
      *(v59 + 2) = eof_scan;
      *(v59 + 3) = eof_scan;
      *(v59 + 4) = noop;
      *(v59 + 1) = *(a1 + 16);
      *(a1 + 16) = v59;
      ReadFromTokenStream(v56, 0);
      v60 = (*(*(a1 + 16) + 16))();
      if (v60 >= 1)
      {
        for (i = v60; i > 0; i = (*(*(a1 + 16) + 16))())
        {
          if (i != 270 || !MacroExpand(a1, *(a3 + 12), a3))
          {
            RecordToken(v58, i, a3);
          }
        }
      }

      v62 = *(a1 + 16);
      if (*(v62 + 16) == eof_scan)
      {
        *(a1 + 16) = *(v62 + 8);
        free(v62);
      }

LABEL_78:
      *&v16[8][2 * v55++] = v58;
      if (v55 >= *v16[7])
      {
        goto LABEL_79;
      }
    }

LABEL_81:
    abort();
  }

LABEL_79:
  v16[1] = *(a1 + 16);
  *(v14 + 56) |= 1u;
  RewindTokenStream(*(v14 + 48));
  *(a1 + 16) = v16;
  return 1;
}

uint64_t macro_scan(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v29 = *MEMORY[0x277D85DE8];
  v5 = *v1;
  bzero(v28, 0x2710uLL);
  v6 = 0;
  LODWORD(v7) = 0;
LABEL_2:
  v8 = 1;
  while (1)
  {
    while (1)
    {
      v9 = v8;
      Token = ReadToken(*(v4[7] + 16), v3);
      if (Token != 289)
      {
        break;
      }

      v8 = 1;
      if (v9)
      {
        glpCPPErrorToInfoLog(v5, "pasting invalid tokens");
        goto LABEL_2;
      }
    }

    v11 = Token;
    v12 = v4[7];
    if (Token == 270)
    {
      v7 = *v12;
      v13 = (v7 & (v7 >> 31)) - 1;
      v14 = v7 - 1;
      while (1)
      {
        v15 = __OFSUB__(v7, 1);
        LODWORD(v7) = v7 - 1;
        if (v7 < 0 != v15)
        {
          break;
        }

        v16 = *(*(v12 + 1) + 4 * v14--);
        if (v16 == *(v3 + 12))
        {
          goto LABEL_12;
        }
      }

      LODWORD(v7) = v13;
    }

LABEL_12:
    matched = MatchNextToken(*(v12 + 2), 289);
    v18 = v11 != 270 || v7 < 0;
    v19 = !v18;
    if ((!matched & (v6 ^ 1)) != 0)
    {
      break;
    }

    v20 = matched;
    if (v19)
    {
      v21 = *(v4[8] + 8 * v7);
      RewindTokenStream(v21);
      v22 = ReadToken(v21, v3);
      if ((v22 & 0x80000000) == 0)
      {
        while ((v22 - 266) <= 0xD)
        {
          v23 = 1 << (v22 - 10);
          if ((v23 & 0x23) == 0)
          {
            if ((v23 & 0x3010) == 0)
            {
              break;
            }

            GetAtomString(v5 + 384, *(v3 + 12));
          }

LABEL_26:
          if (__strlcat_chk() >> 4 >= 0x271)
          {
            glpCPPErrorToInfoLog(v5, "## pastebuf exceeded");
          }

          v22 = ReadToken(v21, v3);
          if (v22 < 0)
          {
            goto LABEL_37;
          }
        }

        glpCPPErrorToInfoLog(v5, "pasting invalid tokens");
        goto LABEL_26;
      }

      goto LABEL_37;
    }

    if ((v11 - 266) > 0xD)
    {
      goto LABEL_34;
    }

    v24 = 1 << (v11 - 10);
    if ((v24 & 0x23) != 0)
    {
      goto LABEL_35;
    }

    if ((v24 & 0x3010) != 0)
    {
      GetAtomString(v5 + 384, *(v3 + 12));
    }

    else
    {
LABEL_34:
      glpCPPErrorToInfoLog(v5, "pasting invalid tokens");
    }

LABEL_35:
    if (__strlcat_chk() >> 4 >= 0x271)
    {
      glpCPPErrorToInfoLog(v5, "## pastebuf exceeded");
    }

LABEL_37:
    v8 = 0;
    v6 = 1;
    if (!v20)
    {
      if (__strlcat_chk() >> 4 >= 0x271)
      {
        glpCPPErrorToInfoLog(v5, "## pastebuf exceeded");
      }

      ScanFromTokenPastedString(v5, v28);
LABEL_44:
      v25 = v5 + 16;
LABEL_45:
      v11 = (*(*v25 + 16))();
      goto LABEL_46;
    }
  }

  if (v19)
  {
    ReadFromTokenStream(*(v4[8] + 8 * v7), 0);
    goto LABEL_44;
  }

  if (v11 <= 0)
  {
    *(v4[7] + 24) &= ~1u;
    *(v5 + 16) = v4[1];
    v25 = v5 + 16;
    free(v4);
    goto LABEL_45;
  }

LABEL_46:
  v26 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL checkReservedName(uint64_t a1, int a2)
{
  result = 0;
  if (!glpIsExtensionEnabled(*(a1 + 32), 0x23u) && !*(a1 + 12) && glpCompilerGetIOSVersion(*(*(a1 + 32) + 784)) >= 10)
  {
    StringOfAtom = GetStringOfAtom((a1 + 384), a2);
    v5 = *StringOfAtom;
    if (v5 == 71)
    {
      v5 = StringOfAtom[1];
      if (v5 == 76)
      {
        v5 = StringOfAtom[2];
        v6 = 95;
      }

      else
      {
        v6 = 76;
      }
    }

    else
    {
      v6 = 71;
    }

    if (v6 == v5 || *(a1 + 508) == a2 || *(a1 + 512) == a2 || *(a1 + 516) == a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t eval(uint64_t a1, uint64_t a2, int a3, _BOOL4 *a4, _DWORD *a5, uint64_t a6, uint64_t a7)
{
  while (1)
  {
    if (a2 != 270)
    {
      if (a2 == 40)
      {
        v15 = (*(*(a1 + 16) + 16))();
        a2 = eval(a1, v15, 0, a4, a5, a6, a7);
        if (*a5)
        {
          return a2;
        }

LABEL_25:
        if (a2 != 41)
        {
          goto LABEL_48;
        }

        v30 = a3;
        goto LABEL_27;
      }

      if (a2 == 271)
      {
        v30 = a3;
        *a4 = *(a6 + 16);
LABEL_27:
        a2 = (*(*(a1 + 16) + 16))();
        goto LABEL_28;
      }

      v16 = 3;
      while (1)
      {
        v17 = v16;
        if (unop[2 * v16] == a2)
        {
          break;
        }

        --v16;
        if (!v17)
        {
          goto LABEL_48;
        }
      }

      v30 = a3;
      v22 = (*(*(a1 + 16) + 16))();
      a2 = eval(a1, v22, 12, a4, a5, a6, a7);
      *a4 = unop[2 * v17 + 1](*a4);
LABEL_28:
      if (*a5)
      {
        return a2;
      }

      goto LABEL_29;
    }

    v14 = *(a6 + 12);
    if (v14 == *(a1 + 460))
    {
      v18 = (*(*(a1 + 16) + 16))();
      v19 = v18;
      a2 = v18;
      if (v18 == 40)
      {
        a2 = (*(*(a1 + 16) + 16))();
      }

      if (a2 != 270)
      {
        goto LABEL_48;
      }

      v20 = LookUpSymbol(a1, *(a1 + 536), *(a6 + 12));
      if (v20)
      {
        v21 = ((*(v20 + 56) >> 1) & 1) == 0;
      }

      else
      {
        v21 = 0;
      }

      *a4 = v21;
      a2 = (*(*(a1 + 16) + 16))();
      if (v19 == 40)
      {
        goto LABEL_25;
      }

      v30 = a3;
      goto LABEL_28;
    }

    if (!MacroExpand(a1, v14, a6))
    {
      break;
    }

    a2 = (*(*(a1 + 16) + 16))();
  }

  if (!a7)
  {
    a2 = 270;
LABEL_48:
    glpCPPErrorToInfoLog(a1, "incorrect preprocessor directive");
    *a5 = 1;
    *a4 = 0;
    return a2;
  }

  v30 = a3;
  a2 = (*(*(a1 + 16) + 16))();
  *a4 = 0;
  *a5 = 0;
  LODWORD(a7) = 1;
  do
  {
LABEL_29:
    if (a2 == 10 || a2 == 41)
    {
      break;
    }

    v23 = 17;
    while (1)
    {
      v24 = (&binop + 16 * v23);
      if (*v24 == a2)
      {
        break;
      }

      if (--v23 == -1)
      {
        goto LABEL_48;
      }
    }

    v25 = *(v24 + 1);
    if (v25 <= v30)
    {
      break;
    }

    v26 = *a4;
    if (a7 || a2 == 276 && v26)
    {
      a7 = 1;
    }

    else
    {
      v28 = a2 == 257 && !v26;
      a7 = v28;
    }

    v27 = (*(*(a1 + 16) + 16))();
    a2 = eval(a1, v27, v25, a4, a5, a6, a7);
    *a4 = v24[1](v26, *a4);
  }

  while (!*a5);
  return a2;
}

uint64_t glpInitPreprocessor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 320) = 0;
  *(a1 + 40) = 0;
  *(a1 + 352) &= 0xFFFFFFFC;
  *(a1 + 312) = 0;
  *(a1 + 364) = 0;
  *(a1 + 356) = 0;
  *(a1 + 544) = 0;
  *(a1 + 560) = 0;
  *(a1 + 552) = 0;
  *(a1 + 368) = a2;
  *(a1 + 376) = a3;
  InitAtomTable(a1 + 384, 0);
  InitScanner(a1);
  return 0;
}

uint64_t glpFinalizePreprocessor(uint64_t a1)
{
  FreeAtomTable(a1 + 384);
  FreeScanner(a1);
  return 0;
}

void *mem_CreatePool(size_t a1, unsigned int a2, int8x8_t a3)
{
  result = 0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 8;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0x10000;
  }

  if (v6 >= 0x30)
  {
    a3.i32[0] = v5;
    v7 = vcnt_s8(a3);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.i32[0] <= 1u && (v6 & (v5 - 1)) == 0)
    {
      result = malloc_type_malloc(v6, 0xCA0EF1E7uLL);
      if (!result)
      {
        abort();
      }

      *result = 0;
      result[1] = (result + v5 + 47) & -v5;
      result[2] = result + v6;
      result[3] = v6;
      result[4] = v5 - 1;
      result[5] = 0;
    }
  }

  return result;
}

void mem_FreePool(void *a1)
{
  v1 = a1;
  v2 = a1[5];
  if (!v2)
  {
    goto LABEL_7;
  }

  do
  {
    (v2[1])(v2[2]);
    v2 = *v2;
  }

  while (v2);
  if (v1)
  {
LABEL_7:
    do
    {
      v3 = *v1;
      free(v1);
      v1 = v3;
    }

    while (v3);
  }
}

uint64_t mem_Alloc(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = (v3 + a2) & ~v3;
  if (!v4)
  {
    v4 = v3 + 1;
  }

  result = a1[1];
  v6 = a1[2];
  v7 = v4 + result;
  v8 = __CFADD__(v4, result);
  a1[1] = v7;
  if (v7 > v6 || v8)
  {
    v10 = ~v3;
    v11 = v3 + v4 + 8;
    v12 = v11 & v10;
    a1[1] = result;
    v13 = a1[3];
    if ((v11 & v10) >= v13)
    {
      v14 = malloc_type_malloc(v11 & v10, 0xCA0EF1E7uLL);
      if (v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = malloc_type_malloc(v13, 0xCA0EF1E7uLL);
      if (v14)
      {
        v15 = v14 + a1[3];
        a1[1] = v14 + v12;
        a1[2] = v15;
LABEL_14:
        *v14 = *a1;
        *a1 = v14;
        return (v14 + a1[4] + 8) & ~a1[4];
      }
    }

    abort();
  }

  return result;
}

uint64_t mem_AddCleanup(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = (a1[1] + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = mem_Alloc(a1, 24);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  result = 0;
  *v7 = a1[5];
  v7[1] = a2;
  v7[2] = a3;
  a1[5] = v7;
  return result;
}

uint64_t InitScanner(uint64_t a1)
{
  result = InitCPP(a1);
  if (result)
  {
    eof_inputsrc = a1;
    *(a1 + 8) = 0;
    *(a1 + 16) = &eof_inputsrc;
    *(a1 + 352) &= ~8u;
    *(a1 + 24) = 10;
    return 1;
  }

  return result;
}

uint64_t FreeScanner(uint64_t a1)
{
  for (i = *(a1 + 16); i != &eof_inputsrc; i = *(a1 + 16))
  {
    *(a1 + 16) = i[1];
    free(i);
  }

  return FreeCPP(a1);
}

uint64_t ScanFromString(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x40uLL, 0xCA0EF1E7uLL);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 7) = a2;
  *v4 = a1;
  glpSetFileNumber(a1, 0);
  glpSetLineNumber(a1, 1);
  *(v5 + 12) = glpGetLineNumber(a1);
  Filename = glpGetFilename(a1);
  *(v5 + 2) = byte_scan;
  *(v5 + 3) = str_getch;
  *(v5 + 4) = str_ungetch;
  *(v5 + 5) = Filename;
  *(v5 + 1) = *(a1 + 16);
  *(a1 + 16) = v5;
  return 1;
}

uint64_t byte_scan(uint64_t *a1, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  bzero(v62, 0x402uLL);
  bzero(v61, 0x402uLL);
  *(a2 + 20) = 0;
LABEL_2:
  *(a2 + 16) = 0;
  while (1)
  {
    v4 = (*(*(v3 + 16) + 24))();
    v5 = v4;
    if (v4 > 0x20 || ((1 << v4) & 0x100002200) == 0)
    {
      break;
    }

    *(a2 + 16) = 0x100000001;
  }

  v6 = *(v3 + 352);
  if ((v6 & 4) == 0 || (v6 &= ~4u, *(v3 + 352) = v6, (v4 & 0xFFFFFFDF) - 65 >= 0x1A) && v4 != 95 && (v4 - 48) > 9)
  {
    switch(v4)
    {
      case '!':
        if ((*(*(v3 + 16) + 24))() == 61)
        {
          v5 = 275;
        }

        else
        {
          (*(*(v3 + 16) + 32))();
          v5 = 33;
        }

        goto LABEL_33;
      case '""':
        v61[0] = 34;
        v37 = (*(*(v3 + 16) + 24))();
        v38 = 1;
        while (2)
        {
          if (v37 == 92)
          {
            goto LABEL_115;
          }

          if (v37 == -1 || v37 == 10)
          {
            goto LABEL_169;
          }

          if (v37 != 34)
          {
            if (v38 > 0x400)
            {
              glpCPPErrorToInfoLog(v3, "ERROR___STRING_TOO_LONG");
            }

            else
            {
              v61[v38++] = v37;
            }

LABEL_115:
            v37 = (*(*(v3 + 16) + 24))();
            continue;
          }

          break;
        }

        if (v38 > 0x400)
        {
          goto LABEL_217;
        }

        v54 = 34;
        goto LABEL_216;
      case '#':
        if ((*(*(v3 + 16) + 24))() == 35 && (*v3 > 2u || glpIsExtensionEnabled(*(v3 + 32), 0x23u)))
        {
          *(v3 + 352) |= 4u;
          v5 = 289;
        }

        else
        {
          (*(*(v3 + 16) + 32))();
          v5 = 35;
        }

        goto LABEL_33;
      case '$':
        if (!glpIsExtensionEnabled(*(v3 + 32), 0x23u))
        {
          v5 = 36;
          if (!glpIsExtensionEnabled(*(v3 + 32), 0x24u))
          {
            goto LABEL_33;
          }
        }

        v62[0] = 36;
        LOBYTE(v5) = (*(*(v3 + 16) + 24))();
        v9 = 1;
        goto LABEL_21;
      case '%':
        v28 = (*(*(v3 + 16) + 24))();
        if (v28 == 61)
        {
          v5 = 259;
        }

        else if (v28 == 62)
        {
          v5 = 288;
        }

        else
        {
          (*(*(v3 + 16) + 32))();
          v5 = 37;
        }

        goto LABEL_33;
      case '&':
        v41 = (*(*(v3 + 16) + 24))();
        if (v41 == 38)
        {
          v5 = 257;
        }

        else if (v41 == 61)
        {
          v5 = 282;
        }

        else
        {
          (*(*(v3 + 16) + 32))();
          v5 = 38;
        }

        goto LABEL_33;
      case '*':
        if ((*(*(v3 + 16) + 24))() == 61)
        {
          v5 = 262;
        }

        else
        {
          (*(*(v3 + 16) + 32))();
          v5 = 42;
        }

        goto LABEL_33;
      case '+':
        v40 = (*(*(v3 + 16) + 24))();
        if (v40 == 43)
        {
          v5 = 277;
        }

        else if (v40 == 61)
        {
          v5 = 260;
        }

        else
        {
          (*(*(v3 + 16) + 32))();
          v5 = 43;
        }

        goto LABEL_33;
      case '-':
        v39 = (*(*(v3 + 16) + 24))();
        if (v39 == 45)
        {
          v5 = 274;
        }

        else if (v39 == 61)
        {
          v5 = 258;
        }

        else
        {
          (*(*(v3 + 16) + 32))();
          v5 = 45;
        }

        goto LABEL_33;
      case '.':
        v42 = (*(*(v3 + 16) + 24))();
        if ((v42 - 48) <= 9)
        {
          (*(*(v3 + 16) + 32))();
          v43 = *MEMORY[0x277D85DE8];
          v17 = v3;
          v18 = 0;
          v19 = 46;
          goto LABEL_46;
        }

        if (v42 == 46)
        {
          goto LABEL_19;
        }

        (*(*(v3 + 16) + 32))();
        v5 = 46;
        goto LABEL_33;
      case '/':
        v7 = (*(*(v3 + 16) + 24))();
        if (v7 != 42)
        {
          if (v7 == 61)
          {
            v5 = 261;
          }

          else if (v7 == 47)
          {
            do
            {
              v22 = (*(*(v3 + 16) + 24))();
            }

            while (v22 != -1 && v22 != 10);
            v5 = v22;
          }

          else
          {
            (*(*(v3 + 16) + 32))();
            v5 = 47;
          }

          goto LABEL_33;
        }

        do
        {
          v8 = (*(*(v3 + 16) + 24))();
          while (v8 == 42)
          {
            v8 = (*(*(v3 + 16) + 24))();
            if (v8 == 47)
            {
              goto LABEL_2;
            }

            if (v8 == -1)
            {
              goto LABEL_18;
            }
          }
        }

        while (v8 != -1);
LABEL_18:
        glpCPPErrorToInfoLog(v3, "ERROR___EOF_IN_COMMENT");
LABEL_19:
        v5 = 0xFFFFFFFFLL;
        goto LABEL_33;
      case '0':
        *(a2 + 24) = 48;
        v29 = a2 + 24;
        v30 = (*(*(v3 + 16) + 24))();
        LODWORD(v5) = v30;
        if ((v30 & 0xFFFFFFDF) == 0x58)
        {
          *(a2 + 25) = v30;
          v31 = (*(*(v3 + 16) + 24))();
          v32 = v31;
          if ((v31 - 48) >= 0xA && ((v31 - 65) <= 0x25 ? (v33 = ((1 << (v31 - 65)) & 0x3F0000003FLL) == 0) : (v33 = 1), v33))
          {
            glpCPPErrorToInfoLog(v3, "ERROR___ERROR_IN_HEX_CONSTANT");
            v34 = 2;
          }

          else
          {
            v34 = 2;
            do
            {
              if (v34 > 0x400)
              {
                glpCPPErrorToInfoLog(v3, "ERROR___TOKEN_TOO_LONG");
              }

              else
              {
                *(v29 + v34++) = v32;
              }

              v35 = (*(*(v3 + 16) + 24))();
              v32 = v35;
            }

            while ((v35 - 48) < 0xA || (v35 - 65) <= 0x25 && ((1 << (v35 - 65)) & 0x3F0000003FLL) != 0);
          }

          if (*v3 <= 2u)
          {
            IsExtensionEnabled = glpIsExtensionEnabled(*(v3 + 32), 0xEu);
            if ((v32 & 0xFFFFFFDF) != 0x55 || !IsExtensionEnabled)
            {
              goto LABEL_224;
            }
          }

          else if ((v32 & 0xFFFFFFDF) != 0x55)
          {
LABEL_224:
            if (v34 >= 0x401)
            {
              glpCPPErrorToInfoLog(v3, "ERROR___TOKEN_TOO_LONG");
              v34 = 1024;
            }

            *(v29 + v34) = 0;
            (*(*(v3 + 16) + 32))();
            v57 = strtoll_l((a2 + 24), 0, 0, 0);
            *(a2 + 16) = v57;
            if (!HIDWORD(v57))
            {
              goto LABEL_159;
            }

            v48 = "ERROR___HEX_CONST_OVERFLOW";
LABEL_158:
            glpCPPErrorToInfoLog(v3, v48);
LABEL_159:
            v5 = 271;
            goto LABEL_33;
          }

          if (v34 > 0x400)
          {
            glpCPPErrorToInfoLog(v3, "ERROR___TOKEN_TOO_LONG");
          }

          else
          {
            *(v29 + v34++) = v32;
          }

          (*(*(v3 + 16) + 24))();
          goto LABEL_224;
        }

        if ((v30 & 0xFFFFFFF8) == 0x30)
        {
          v50 = 1;
          do
          {
            if (v50 > 0x400)
            {
              glpCPPErrorToInfoLog(v3, "ERROR___TOKEN_TOO_LONG");
            }

            else
            {
              *(v29 + v50++) = v5;
            }

            v51 = (*(*(v3 + 16) + 24))();
            LODWORD(v5) = v51;
          }

          while ((v51 & 0xFFFFFFF8) == 0x30);
          if ((v51 - 46) <= 0x37 && ((1 << (v51 - 46)) & 0x80000000800001) != 0)
          {
            v53 = *MEMORY[0x277D85DE8];
            v17 = v3;
            v18 = v50;
LABEL_45:
            v19 = v5;
LABEL_46:

            return lFloatConst(v17, v18, v19, a2);
          }

          if (*v3 <= 2u)
          {
            v58 = glpIsExtensionEnabled(*(v3 + 32), 0xEu);
            if ((v5 & 0xFFFFFFDF) != 0x55 || !v58)
            {
              goto LABEL_244;
            }
          }

          else if ((v51 & 0xFFFFFFDF) != 0x55)
          {
LABEL_244:
            if (v50 >= 0x401)
            {
              glpCPPErrorToInfoLog(v3, "ERROR___TOKEN_TOO_LONG");
              v50 = 1024;
            }

            *(v29 + v50) = 0;
            (*(*(v3 + 16) + 32))();
            v60 = strtoll_l((a2 + 24), 0, 0, 0);
            *(a2 + 16) = v60;
            if (!HIDWORD(v60))
            {
              goto LABEL_159;
            }

            v48 = "ERROR___OCT_CONST_OVERFLOW";
            goto LABEL_158;
          }

          if (v50 > 0x400)
          {
            glpCPPErrorToInfoLog(v3, "ERROR___TOKEN_TOO_LONG");
          }

          else
          {
            *(v29 + v50++) = v5;
          }

          (*(*(v3 + 16) + 24))();
          goto LABEL_244;
        }

        v14 = 1;
LABEL_35:
        if ((v5 - 48) <= 9)
        {
          do
          {
            if (v14 > 0x400)
            {
              glpCPPErrorToInfoLog(v3, "ERROR___TOKEN_TOO_LONG");
            }

            else
            {
              *(a2 + 24 + v14++) = v5;
            }

            LODWORD(v5) = (*(*(v3 + 16) + 24))();
          }

          while ((v5 - 48) < 0xA);
        }

        if ((v5 - 46) <= 0x37 && ((1 << (v5 - 46)) & 0x80000000800001) != 0)
        {
          v16 = *MEMORY[0x277D85DE8];
          v17 = v3;
          v18 = v14;
          goto LABEL_45;
        }

        if (*v3 <= 2u)
        {
          v24 = glpIsExtensionEnabled(*(v3 + 32), 0xEu);
          if ((v5 & 0xFFFFFFDF) != 0x55 || !v24)
          {
            goto LABEL_154;
          }
        }

        else if ((v5 & 0xFFFFFFDF) != 0x55)
        {
LABEL_154:
          if (v14 >= 0x401)
          {
            glpCPPErrorToInfoLog(v3, "ERROR___TOKEN_TOO_LONG");
            v14 = 1024;
          }

          *(a2 + 24 + v14) = 0;
          (*(*(v3 + 16) + 32))();
          v47 = strtoll_l((a2 + 24), 0, 0, 0);
          *(a2 + 16) = v47;
          if (!HIDWORD(v47))
          {
            goto LABEL_159;
          }

          v48 = "ERROR___INTEGER_CONST_OVERFLOW";
          goto LABEL_158;
        }

        if (v14 > 0x400)
        {
          glpCPPErrorToInfoLog(v3, "ERROR___TOKEN_TOO_LONG");
        }

        else
        {
          v26 = a2 + v14++;
          *(v26 + 24) = v5;
        }

        (*(*(v3 + 16) + 24))();
        goto LABEL_154;
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
        v14 = 0;
        goto LABEL_35;
      case ':':
        if ((*(*(v3 + 16) + 24))() == 62)
        {
          v5 = 286;
        }

        else
        {
          (*(*(v3 + 16) + 32))();
          v5 = 58;
        }

        goto LABEL_33;
      case '<':
        if ((v6 & 2) == 0)
        {
          v27 = (*(*(v3 + 16) + 24))();
          if (v27 > 59)
          {
            if (v27 == 61)
            {
              v5 = 272;
              goto LABEL_33;
            }

            if (v27 == 60)
            {
              if ((*(*(v3 + 16) + 24))() == 61)
              {
                v5 = 281;
              }

              else
              {
                (*(*(v3 + 16) + 32))();
                v5 = 273;
              }

              goto LABEL_33;
            }
          }

          else
          {
            if (v27 == 37)
            {
              v5 = 287;
              goto LABEL_33;
            }

            if (v27 == 58)
            {
              v5 = 285;
              goto LABEL_33;
            }
          }

          (*(*(v3 + 16) + 32))();
          v5 = 60;
          goto LABEL_33;
        }

        v61[0] = 60;
        v49 = (*(*(v3 + 16) + 24))();
        v38 = 1;
        while (2)
        {
          if (v49 == 92)
          {
            goto LABEL_162;
          }

          if (v49 == -1 || v49 == 10)
          {
LABEL_169:
            glpCPPErrorToInfoLog(v3, "ERROR___CPP_EOL_IN_STRING");
            v5 = 265;
            goto LABEL_33;
          }

          if (v49 != 62)
          {
            if (v38 > 0x400)
            {
              glpCPPErrorToInfoLog(v3, "ERROR___STRING_TOO_LONG");
            }

            else
            {
              v61[v38++] = v49;
            }

LABEL_162:
            v49 = (*(*(v3 + 16) + 24))();
            continue;
          }

          break;
        }

        if (v38 > 0x400)
        {
LABEL_217:
          glpCPPErrorToInfoLog(v3, "ERROR___STRING_TOO_LONG");
        }

        else
        {
          v54 = 62;
LABEL_216:
          v61[v38++] = v54;
        }

        (*(*(v3 + 16) + 24))();
        if (v38 >= 0x401)
        {
          glpCPPErrorToInfoLog(v3, "ERROR___STRING_TOO_LONG");
          v38 = 1024;
        }

        v61[v38] = 0;
        *(a2 + 12) = LookUpAddString(v3 + 384, v61);
        (*(*(v3 + 16) + 32))();
        v5 = 278;
        goto LABEL_33;
      case '=':
        if ((*(*(v3 + 16) + 24))() == 61)
        {
          v5 = 263;
        }

        else
        {
          (*(*(v3 + 16) + 32))();
          v5 = 61;
        }

        goto LABEL_33;
      case '>':
        v44 = (*(*(v3 + 16) + 24))();
        if (v44 == 61)
        {
          v5 = 268;
        }

        else if (v44 == 62)
        {
          if ((*(*(v3 + 16) + 24))() == 61)
          {
            v5 = 280;
          }

          else
          {
            (*(*(v3 + 16) + 32))();
            v5 = 269;
          }
        }

        else
        {
          (*(*(v3 + 16) + 32))();
          v5 = 62;
        }

        goto LABEL_33;
      case 'A':
      case 'B':
      case 'C':
      case 'D':
      case 'E':
      case 'F':
      case 'G':
      case 'H':
      case 'I':
      case 'J':
      case 'K':
      case 'L':
      case 'M':
      case 'N':
      case 'O':
      case 'P':
      case 'Q':
      case 'R':
      case 'S':
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '_':
      case 'a':
      case 'b':
      case 'c':
      case 'd':
      case 'e':
      case 'f':
      case 'g':
      case 'h':
      case 'i':
      case 'j':
      case 'k':
      case 'l':
      case 'm':
      case 'n':
      case 'o':
      case 'p':
      case 'q':
      case 'r':
      case 's':
      case 't':
      case 'u':
      case 'v':
      case 'w':
      case 'x':
      case 'y':
      case 'z':
        v9 = 0;
        do
        {
LABEL_21:
          if (v9 > 0x400)
          {
            glpCPPErrorToInfoLog(v3, "ERROR___TOKEN_TOO_LONG");
          }

          else
          {
            v62[v9++] = v5;
          }

          v10 = (*(*(v3 + 16) + 24))();
          LOBYTE(v5) = v10;
          v11 = (v10 - 48) >= 0xA && (v10 & 0xFFFFFFDF) - 65 >= 0x1A;
        }

        while (!v11 || v10 == 95);
        goto LABEL_30;
      case '^':
        v46 = (*(*(v3 + 16) + 24))();
        if (v46 == 94)
        {
          v5 = 264;
        }

        else if (v46 == 61)
        {
          v5 = 284;
        }

        else
        {
          (*(*(v3 + 16) + 32))();
          v5 = 94;
        }

        goto LABEL_33;
      case '|':
        v45 = (*(*(v3 + 16) + 24))();
        if (v45 == 124)
        {
          v5 = 276;
        }

        else if (v45 == 61)
        {
          v5 = 283;
        }

        else
        {
          (*(*(v3 + 16) + 32))();
          v5 = 124;
        }

        goto LABEL_33;
      default:
        goto LABEL_33;
    }
  }

  v9 = 0;
  do
  {
    if (v9 > 0x400)
    {
      glpCPPErrorToInfoLog(v3, "ERROR___TOKEN_TOO_LONG");
    }

    else
    {
      v62[v9++] = v5;
    }

    v20 = (*(*(v3 + 16) + 24))();
    LOBYTE(v5) = v20;
    v21 = (v20 - 48) >= 0xA && (v20 & 0xFFFFFFDF) - 65 >= 0x1A;
  }

  while (!v21 || v20 == 95);
LABEL_30:
  if (v9 >= 0x401)
  {
    glpCPPErrorToInfoLog(v3, "ERROR___TOKEN_TOO_LONG");
    v9 = 1024;
  }

  v62[v9] = 0;
  (*(*(v3 + 16) + 32))();
  *(a2 + 12) = LookUpAddString(v3 + 384, v62);
  v5 = 270;
LABEL_33:
  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t str_getch(uint64_t *a1, uint64_t a2)
{
  for (i = *a1; ; a1 = *(i + 16))
  {
    v4 = a1[7];
    v5 = *v4;
    if (*v4)
    {
      break;
    }

    v6 = *(i + 324) + 1;
    *(i + 324) = v6;
    v7 = *(i + 336);
    *(i + 16) = a1[1];
    if (v6 >= v7)
    {
      *(i + 324) = 0;
      free(a1);
      return 0xFFFFFFFFLL;
    }

    free(a1);
    glpSetFileNumber(i, *(i + 324));
    glpSetLineNumber(i, 1);
    ScanFromString(i, *(*(i + 344) + 8 * *(i + 324)));
  }

  a1[7] = (v4 + 1);
  if (v5 != 92)
  {
    if (v5 == 10)
    {
      ++*(a1 + 12);
      glpIncLineNumber(i);
    }

    return v5;
  }

  v8 = (*(*(i + 16) + 24))();
  v9 = *(i + 16);
  if (v8 != 10)
  {
    (*(v9 + 32))(v9, v8, a2);
    return 92;
  }

  v10 = *(v9 + 24);

  return v10();
}

uint64_t *str_ungetch(uint64_t *result, int a2)
{
  v2 = result[7];
  v4 = *(v2 - 1);
  v3 = v2 - 1;
  if (v4 == a2)
  {
    result[7] = v3;
  }

  else
  {
    *result[7] = 0;
    --*(*result + 324);
  }

  if (a2 == 10)
  {
    --*(result + 12);
    return glpDecLineNumber(*result);
  }

  return result;
}

uint64_t ScanFromIncludeString(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = malloc_type_malloc(0x48uLL, 0xCA0EF1E7uLL);
  if (!v6)
  {
    abort();
  }

  v7 = v6;
  *(v6 + 40) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 7) = a2;
  *(v6 + 8) = a2;
  *v6 = a1;
  glpSetFilename(a1, a3);
  glpSetLineNumber(a1, 1);
  *(v7 + 12) = glpGetLineNumber(a1);
  Filename = glpGetFilename(a1);
  *(v7 + 2) = byte_scan;
  *(v7 + 3) = include_str_getch;
  *(v7 + 4) = include_str_ungetch;
  *(v7 + 5) = Filename;
  *(v7 + 1) = *(a1 + 16);
  *(a1 + 16) = v7;
  return 1;
}

uint64_t include_str_getch(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[7];
  v6 = *v5;
  if (*v5)
  {
    a1[7] = (v5 + 1);
    if (v6 != 92)
    {
      if (v6 == 10)
      {
        ++*(a1 + 12);
        glpIncLineNumber(v4);
      }

      return v6;
    }

    v8 = (*(*(v4 + 16) + 24))();
    v7 = *(v4 + 16);
    if (v8 != 10)
    {
      (*(v7 + 32))(v7, v8, a2);
      return 92;
    }
  }

  else
  {
    *(v4 + 16) = a1[1];
    --*(v4 + 356);
    (*(v4 + 376))(*(v4 + 360), a1[8]);
    free(a1);
    glpSetLineNumber(v4, *(*(v4 + 16) + 48));
    glpSetFilename(v4, *(*(v4 + 16) + 40));
    v7 = *(v4 + 16);
  }

  v9 = *(v7 + 24);

  return v9();
}

uint64_t include_str_ungetch(uint64_t result, int a2)
{
  --*(result + 56);
  if (a2 == 10)
  {
    --*(result + 48);
    return glpDecLineNumber(*result);
  }

  return result;
}

uint64_t ScanFromSimpleString(uint64_t a1, uint64_t a2, int a3)
{
  v6 = malloc_type_malloc(0x50uLL, 0xCA0EF1E7uLL);
  if (!v6)
  {
    abort();
  }

  v7 = v6;
  *(v6 + 56) = 0u;
  *(v6 + 8) = a2;
  *(v6 + 9) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 7) = a2;
  *v6 = a1;
  *(v6 + 12) = glpGetLineNumber(a1);
  Filename = glpGetFilename(a1);
  *(v7 + 2) = byte_scan;
  *(v7 + 3) = simple_str_getch;
  *(v7 + 4) = simple_str_ungetch;
  *(v7 + 5) = Filename;
  *(v7 + 1) = *(a1 + 16);
  *(a1 + 16) = v7;
  *(v7 + 18) = *(a1 + 12);
  *(a1 + 12) = a3;
  return 1;
}

uint64_t simple_str_getch(void *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 7);
  v6 = *v5;
  if (*v5)
  {
    *(a1 + 7) = v5 + 1;
    if (v6 != 92)
    {
      if (v6 == 10)
      {
        ++*(a1 + 12);
        glpIncLineNumber(v4);
      }

      return v6;
    }

    v8 = (*(*(v4 + 16) + 24))();
    v7 = *(v4 + 16);
    if (v8 != 10)
    {
      (*(v7 + 32))(v7, v8, a2);
      return 92;
    }
  }

  else
  {
    *(v4 + 16) = *(a1 + 1);
    *(v4 + 12) = *(a1 + 18);
    free(*(a1 + 8));
    free(a1);
    glpSetLineNumber(v4, *(*(v4 + 16) + 48));
    glpSetFilename(v4, *(*(v4 + 16) + 40));
    v7 = *(v4 + 16);
  }

  v9 = *(v7 + 24);

  return v9();
}

uint64_t simple_str_ungetch(uint64_t result, int a2)
{
  --*(result + 56);
  if (a2 == 10)
  {
    --*(result + 48);
    return glpDecLineNumber(*result);
  }

  return result;
}

uint64_t ScanFromTokenPastedString(uint64_t a1, const char *a2)
{
  v4 = malloc_type_malloc(0x50uLL, 0xCA0EF1E7uLL);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = 0u;
  v6 = strlen(a2);
  v7 = malloc_type_malloc(v6 + 1, 0xCA0EF1E7uLL);
  if (!v7)
  {
LABEL_4:
    abort();
  }

  *(v5 + 8) = v7;
  strcpy(v7, a2);
  *(v5 + 7) = *(v5 + 8);
  *(v5 + 18) = 0;
  *v5 = a1;
  v8 = *(a1 + 16);
  *(v5 + 12) = *(v8 + 48);
  v9 = *(v8 + 40);
  *(v5 + 1) = v8;
  *(v5 + 2) = token_pasted_str_scan;
  *(v5 + 3) = token_pasted_str_getch;
  *(v5 + 4) = token_pasted_str_ungetch;
  *(v5 + 5) = v9;
  *(a1 + 16) = v5;
  return 1;
}

uint64_t token_pasted_str_scan(_DWORD *a1, uint64_t a2)
{
  if (a1[18])
  {
    v3 = *a1;
    *(*a1 + 16) = *(a1 + 1);
    free(*(a1 + 8));
    free(a1);
    glpSetLineNumber(v3, *(*(v3 + 16) + 48));
    glpSetFilename(v3, *(*(v3 + 16) + 40));
    v4 = *(*(v3 + 16) + 16);

    return v4();
  }

  else
  {
    a1[18] = 1;

    return byte_scan(a1, a2);
  }
}

uint64_t token_pasted_str_getch(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *v2;
  if (!*v2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a1;
  *(a1 + 56) = v2 + 1;
  if (v3 != 92)
  {
    if (v3 == 10)
    {
      ++*(a1 + 48);
      glpIncLineNumber(v4);
    }

    return v3;
  }

  v6 = (*(*(v4 + 16) + 24))();
  v7 = *(v4 + 16);
  if (v6 != 10)
  {
    (*(v7 + 32))(v7, v6, a2);
    return 92;
  }

  v8 = *(v7 + 24);

  return v8();
}

uint64_t token_pasted_str_ungetch(uint64_t result, int a2)
{
  --*(result + 56);
  if (a2 == 10)
  {
    --*(result + 48);
    return glpDecLineNumber(*result);
  }

  return result;
}

size_t yylex_CPP(uint64_t a1, char *a2, size_t a3)
{
  v25[129] = *MEMORY[0x277D85DE8];
  bzero(v23, 0x420uLL);
  v6 = v25;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v7 = (*(*(a1 + 16) + 16))();
            if (v7 != 35)
            {
              break;
            }

            v9 = *(a1 + 24);
            if (v9 != 10 && v9 != 0)
            {
              glpCPPErrorToInfoLog(a1, "preprocessor command must not be preceded by any other statement in that line");
LABEL_44:
              a3 = 0;
              goto LABEL_45;
            }

            if (readCPPline(a1, v23) == -1)
            {
LABEL_38:
              if (*(a1 + 40) >= 1)
              {
                glpCPPErrorToInfoLog(a1, "#endif missing!! Compilation stopped");
                a3 = 0;
                *(a1 + 320) = 1;
                goto LABEL_45;
              }

              goto LABEL_44;
            }
          }

          v8 = v7;
          if (v7 == -1)
          {
            goto LABEL_38;
          }

          if (*(a1 + 28))
          {
            break;
          }

          if (v7 > 269)
          {
            if (v7 == 289)
            {
              StringOfAtom = "##";
              goto LABEL_36;
            }

            StringOfAtom = v25;
            if (v7 == 271)
            {
              goto LABEL_36;
            }

            if (v7 != 270)
            {
LABEL_34:
              v13 = (a1 + 384);
              v12 = v8;
              goto LABEL_35;
            }

            v12 = v24;
            v13 = (a1 + 384);
LABEL_35:
            StringOfAtom = GetStringOfAtom(v13, v12);
LABEL_36:
            v17 = strlen(StringOfAtom);
            v18 = malloc_type_malloc(v17 + 1, 0xCA0EF1E7uLL);
            if (!v18)
            {
              abort();
            }

            v19 = v18;
            strcpy(v18, StringOfAtom);
            ScanFromSimpleString(a1, v19, 0);
            lazyCPPSetup(a1);
          }

          else
          {
            StringOfAtom = v25;
            if ((v7 - 266) < 2)
            {
              goto LABEL_36;
            }

            if (v7 != 10)
            {
              goto LABEL_34;
            }
          }
        }

        *(a1 + 24) = v7;
        if (v7 > 269)
        {
          break;
        }

        if (v7 != 10)
        {
          if ((v7 - 266) < 2)
          {
            goto LABEL_40;
          }

          goto LABEL_30;
        }
      }

      if (v7 != 270)
      {
        break;
      }

      v14 = MacroExpand(a1, v24, v23);
      lazyCPPSetup(a1);
      if (!v14)
      {
        v8 = v24;
LABEL_31:
        v15 = GetStringOfAtom((a1 + 384), v8);
        v16 = *(a1 + 352);
        *(a1 + 352) = v16 | 8;
        if (v15)
        {
          v6 = v15;
          goto LABEL_41;
        }
      }
    }

    if (v7 != 289)
    {
      break;
    }

    lazyCPPSetup(a1);
    *(a1 + 352) |= 8u;
  }

  if (v7 != 271)
  {
LABEL_30:
    lazyCPPSetup(a1);
    goto LABEL_31;
  }

LABEL_40:
  lazyCPPSetup(a1);
  v16 = *(a1 + 352);
  *(a1 + 352) = v16 | 8;
LABEL_41:
  v20 = strlen(v6);
  if (v20 < a3)
  {
    if (v20)
    {
      strcpy(a2, v6);
      *(a1 + 352) |= 1u;
      a3 = strlen(v6);
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  *(a1 + 352) = v16 | 9;
LABEL_45:
  v21 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t lFloatConst(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v5 = a2;
  v7 = (a4 + 24);
  if (a3 == 46)
  {
    if (a2 > 0x400)
    {
      glpCPPErrorToInfoLog(a1, "ERROR___FP_CONST_TOO_LONG");
    }

    else
    {
      v7[a2] = 46;
      v5 = a2 + 1;
    }

    v8 = (*(*(a1 + 16) + 24))();
    if ((v8 - 48) <= 9)
    {
      do
      {
        if (v5 > 0x400)
        {
          glpCPPErrorToInfoLog(a1, "ERROR___FP_CONST_TOO_LONG");
        }

        else
        {
          v7[v5++] = v8;
        }

        v8 = (*(*(a1 + 16) + 24))();
      }

      while ((v8 - 48) < 0xA);
    }
  }

  else
  {
    v8 = a3;
  }

  if ((v8 & 0xFFFFFFDF) == 0x45)
  {
    if (v5 > 0x400)
    {
      glpCPPErrorToInfoLog(a1, "ERROR___FP_CONST_TOO_LONG");
    }

    else
    {
      v7[v5++] = v8;
    }

    v9 = (*(*(a1 + 16) + 24))();
    if (v9 == 45)
    {
      if (v5 <= 0x400)
      {
        v10 = 45;
        goto LABEL_21;
      }
    }

    else
    {
      v8 = v9;
      if (v9 != 43)
      {
        goto LABEL_24;
      }

      if (v5 <= 0x400)
      {
        v10 = 43;
LABEL_21:
        v7[v5++] = v10;
LABEL_23:
        v8 = (*(*(a1 + 16) + 24))();
LABEL_24:
        if ((v8 - 48) > 9)
        {
          glpCPPErrorToInfoLog(a1, "ERROR___ERROR_IN_EXPONENT");
        }

        else
        {
          do
          {
            if (v5 > 0x400)
            {
              glpCPPErrorToInfoLog(a1, "ERROR___FP_CONST_TOO_LONG");
            }

            else
            {
              v7[v5++] = v8;
            }

            v8 = (*(*(a1 + 16) + 24))();
          }

          while ((v8 - 48) < 0xA);
        }

        goto LABEL_31;
      }
    }

    glpCPPErrorToInfoLog(a1, "ERROR___FP_CONST_TOO_LONG");
    goto LABEL_23;
  }

LABEL_31:
  if ((*a1 > 7u || glpIsExtensionEnabled(*(a1 + 32), 0x12u)) && (v8 | 0x20) == 0x6C)
  {
    if (v5 > 0x400)
    {
      glpCPPErrorToInfoLog(a1, "ERROR___FP_CONST_TOO_LONG");
    }

    else
    {
      v7[v5++] = v8;
    }

    v13 = (*(*(a1 + 16) + 24))();
    if (v8 == 108)
    {
      v14 = 102;
    }

    else
    {
      v14 = 70;
    }

    if (v13 == v14)
    {
      if (v5 > 0x400)
      {
        glpCPPErrorToInfoLog(a1, "ERROR___FP_CONST_TOO_LONG");
      }

      else
      {
        v7[v5++] = v13;
      }

      (*(*(a1 + 16) + 24))();
      v12 = 0;
      v11 = 267;
    }

    else
    {
      (*(*(a1 + 16) + 32))();
      --v5;
      v11 = 266;
      v12 = 1;
    }
  }

  else
  {
    v11 = 266;
    v12 = 1;
    if ((v8 & 0xFFFFFFDF) == 0x46 && *a1 >= 2u)
    {
      if (v5 > 0x400)
      {
        glpCPPErrorToInfoLog(a1, "ERROR___FP_CONST_TOO_LONG");
      }

      else
      {
        v7[v5++] = v8;
      }

      (*(*(a1 + 16) + 24))();
    }
  }

  if (v5 >= 0x401)
  {
    glpCPPErrorToInfoLog(a1, "ERROR___FP_CONST_TOO_LONG");
    v5 = 1024;
  }

  v7[v5] = 0;
  if (v12)
  {
    *(a4 + 8) = strtof_l(v7, 0, 0);
  }

  else
  {
    *a4 = strtod_l(v7, 0, 0);
  }

  (*(*(a1 + 16) + 32))();
  return v11;
}

uint64_t NewScopeInPool(uint64_t a1, void *a2)
{
  v4 = mem_Alloc(a2, 72);
  v5 = v4;
  *(v4 + 40) = a2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v6 = *(a1 + 544);
  *v4 = a1;
  *(v4 + 8) = v6;
  if (v6)
  {
    *(v6 + 16) = v4;
  }

  *(v4 + 16) = 0;
  *(a1 + 544) = v4;
  mem_AddCleanup(a2, unlinkScope, v4);
  return v5;
}

void *unlinkScope(void *result)
{
  v1 = result[1];
  v2 = result[2];
  if (v1)
  {
    *(v1 + 16) = v2;
  }

  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = (*result + 544);
  }

  *v3 = v1;
  return result;
}

uint64_t AddSymbol(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  if (!a2)
  {
    v6 = *(a1 + 552);
  }

  v8 = mem_Alloc(*(v6 + 40), 64);
  v9 = v8;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  *(v8 + 24) = a3;
  *(v8 + 28) = a4;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  v10 = *(v6 + 48);
  if (v10)
  {
    ReversedAtom = GetReversedAtom(a1 + 384, a3);
    v12 = GetReversedAtom(a1 + 384, *(v10 + 6));
    while (1)
    {
      if (v12 == ReversedAtom)
      {
        glpCPPErrorToInfoLog(a1, "GetAtomString(&cpp->atable, fSymb->name)");
        return v9;
      }

      if (v12 <= ReversedAtom)
      {
        v13 = v10[1];
        if (!v13)
        {
          v10[1] = v9;
          return v9;
        }
      }

      else
      {
        v13 = *v10;
        if (!*v10)
        {
          *v10 = v9;
          return v9;
        }
      }

      v12 = GetReversedAtom(a1 + 384, *(v13 + 6));
      v10 = v13;
    }
  }

  *(v6 + 48) = v8;
  return v9;
}

uint64_t LookUpLocalSymbol(uint64_t a1, uint64_t a2, int a3)
{
  ReversedAtom = GetReversedAtom(a1 + 384, a3);
  if (!a2)
  {
    a2 = *(a1 + 552);
  }

  for (i = *(a2 + 48); i; i = *(i + 8 * (v7 <= ReversedAtom)))
  {
    v7 = GetReversedAtom(a1 + 384, *(i + 24));
    if (v7 == ReversedAtom)
    {
      break;
    }
  }

  return i;
}

uint64_t LookUpSymbol(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (!a2)
  {
    v4 = *(a1 + 552);
    if (!v4)
    {
      return 0;
    }
  }

  while (1)
  {
    result = LookUpLocalSymbol(a1, v4, a3);
    if (result)
    {
      break;
    }

    v4 = *(v4 + 24);
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

void *NewTokenStream(uint64_t a1, const char *a2, void *a3)
{
  v6 = mem_Alloc(a3, 40);
  *v6 = a1;
  v6[1] = 0;
  v7 = strlen(a2);
  v8 = mem_Alloc(a3, v7 + 1);
  v9 = v8;
  v10 = *a2;
  v11 = v8;
  if (*a2)
  {
    v12 = (a2 + 1);
    v13 = MEMORY[0x277D85DE0];
    v11 = v8;
    do
    {
      if (v10 < 0)
      {
        v14 = __maskrune_l(v10, 0x500uLL, 0);
        v10 = *(v12 - 1);
        if (v14)
        {
          goto LABEL_9;
        }
      }

      else if ((*(v13 + 4 * v10 + 60) & 0x500) != 0)
      {
        goto LABEL_9;
      }

      if ((v10 & 0xFE) == 0x2E)
      {
        v10 = 95;
LABEL_9:
        *v11++ = v10;
      }

      v15 = *v12++;
      v10 = v15;
    }

    while (v15);
  }

  *v11 = 0;
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v9;
  lNewBlock(v6, a3);
  return v6;
}

uint64_t lNewBlock(uint64_t a1, void *a2)
{
  result = mem_Alloc(a2, 288);
  *(result + 24) = result + 32;
  *(result + 16) = 256;
  *result = 0u;
  v4 = (a1 + 24);
  if (*(a1 + 24))
  {
    v4 = *(a1 + 32);
  }

  *v4 = result;
  *(a1 + 32) = result;
  return result;
}

uint64_t RecordToken(void *a1, int a2, uint64_t a3)
{
  if (*(a3 + 20))
  {
    lAddByte(a1, 0);
  }

  result = lAddByte(a1, a2 & 0x7Fu | ((a2 > 256) << 7));
  if ((a2 - 266) <= 0xD)
  {
    v7 = 1 << (a2 - 10);
    if ((v7 & 0x23) != 0)
    {
      v12 = *(a3 + 24);
      if (v12)
      {
        v13 = (a3 + 25);
        do
        {
          lAddByte(a1, v12);
          v14 = *v13++;
          v12 = v14;
        }

        while (v14);
      }
    }

    else
    {
      if ((v7 & 0x3010) == 0)
      {
        return result;
      }

      AtomString = GetAtomString(*a1 + 384, *(a3 + 12));
      v9 = *AtomString;
      if (*AtomString)
      {
        v10 = (AtomString + 1);
        do
        {
          lAddByte(a1, v9);
          v11 = *v10++;
          v9 = v11;
        }

        while (v11);
      }
    }

    return lAddByte(a1, 0);
  }

  return result;
}

uint64_t lAddByte(void *a1, char a2)
{
  result = a1[4];
  v5 = *(result + 12);
  if (v5 >= *(result + 16))
  {
    result = lNewBlock(a1, *(*(*a1 + 536) + 40));
    v5 = *(result + 12);
  }

  v6 = *(result + 24);
  *(result + 12) = v5 + 1;
  *(v6 + v5) = a2;
  return result;
}

uint64_t RewindTokenStream(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(result + 32) = v1;
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t ReadToken(uint64_t *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  Byte = lReadByte(a1);
  v5 = Byte;
  if (Byte)
  {
    if ((Byte & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    result = 0xFFFFFFFFLL;
    goto LABEL_88;
  }

  *(a2 + 20) = 1;
  v5 = lReadByte(a1);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  bzero(v27, 0x402uLL);
  bzero(v26, 0x402uLL);
  if (v5 <= 0x7F)
  {
    result = v5;
  }

  else
  {
    result = v5 + 128;
  }

  if (result > 270)
  {
    if (result != 279)
    {
      if (result == 278)
      {
        v22 = lReadByte(a1);
        if (v22)
        {
          v23 = 0;
          do
          {
            if (v23 > 0x400)
            {
              glpCPPErrorToInfoLog(*a1, "ERROR_TOKEN_TOO_LONG");
            }

            else
            {
              v26[v23++] = v22;
            }

            v22 = lReadByte(a1);
          }

          while (v22);
          if (v23 >= 0x401)
          {
            glpCPPErrorToInfoLog(*a1, "ERROR_TOKEN_TOO_LONG");
            v23 = 1024;
          }
        }

        else
        {
          v23 = 0;
        }

        v26[v23] = 0;
        *(a2 + 12) = LookUpAddString(*a1 + 384, v26);
        result = 278;
      }

      else if (result == 271)
      {
        v7 = 0;
        while (1)
        {
          v8 = lReadByte(a1);
          if ((v8 - 48) >= 0xA)
          {
            v9 = v8 - 65;
            v10 = v9 > 0x25;
            v11 = (1 << v9) & 0x3F0000003FLL;
            v12 = v10 || v11 == 0;
            if (v12 && (v8 & 0xDF) != 0x58 && (v8 & 0xDF) != 0x55)
            {
              break;
            }
          }

          if (v7 <= 0x400)
          {
            v27[v7++] = v8;
          }

          else
          {
            glpCPPErrorToInfoLog(*a1, "ERROR_TOKEN_TOO_LONG");
          }
        }

        if (v7 >= 0x401)
        {
          glpCPPErrorToInfoLog(*a1, "ERROR_TOKEN_TOO_LONG");
          v7 = 1024;
        }

        v27[v7] = 0;
        __strcpy_chk();
        *(a2 + 16) = strtoul_l((a2 + 24), 0, 0, 0);
        result = 271;
      }

      goto LABEL_88;
    }
  }

  else
  {
    if (result == 266)
    {
      v15 = lReadByte(a1);
      if ((v15 & 0xDF) == 0x46 || (v16 = v15 << 24, v15 << 24 == 754974720) || v16 == 721420288 || v16 == 771751936 || (v15 & 0xDF) == 0x45 || (v15 - 48) <= 9)
      {
        v17 = 0;
        while (1)
        {
          if (v17 > 0x400)
          {
            glpCPPErrorToInfoLog(*a1, "ERROR_TOKEN_TOO_LONG");
          }

          else
          {
            v27[v17++] = v15;
          }

          v15 = lReadByte(a1);
          if ((v15 & 0xDF) != 0x46)
          {
            v24 = v15 << 24;
            if (v15 << 24 != 754974720 && v24 != 721420288 && v24 != 771751936 && (v15 & 0xDF) != 0x45 && (v15 - 48) >= 0xA)
            {
              break;
            }
          }
        }

        if (v17 >= 0x401)
        {
          glpCPPErrorToInfoLog(*a1, "ERROR_TOKEN_TOO_LONG");
          v17 = 1024;
        }
      }

      else
      {
        v17 = 0;
      }

      v27[v17] = 0;
      __strcpy_chk();
      *(a2 + 8) = strtof_l((a2 + 24), 0, 0);
      result = 266;
      goto LABEL_88;
    }

    if (result == 267)
    {
      v18 = 0;
      while (1)
      {
        v19 = lReadByte(a1);
        v20 = v19 & 0xDF;
        if (v20 != 70 && v20 != 76)
        {
          v21 = v19 << 24;
          if (v19 << 24 != 754974720 && v21 != 721420288 && v21 != 771751936 && v20 != 69 && (v19 - 48) > 9)
          {
            break;
          }
        }

        if (v18 <= 0x400)
        {
          v27[v18++] = v19;
        }

        else
        {
          glpCPPErrorToInfoLog(*a1, "ERROR_TOKEN_TOO_LONG");
        }
      }

      if (v18 >= 0x401)
      {
        glpCPPErrorToInfoLog(*a1, "ERROR_TOKEN_TOO_LONG");
        v18 = 1024;
      }

      v27[v18] = 0;
      __strcpy_chk();
      *a2 = strtod_l((a2 + 24), 0, 0);
      result = 267;
      goto LABEL_88;
    }

    if (result != 270)
    {
      goto LABEL_88;
    }
  }

  v13 = lReadByte(a1);
  v14 = 0;
  if (!glpIsExtensionEnabled(*(*a1 + 32), 0x23u) || v13 != 36)
  {
    goto LABEL_79;
  }

  v27[0] = 36;
  v14 = 1;
  while (1)
  {
    v13 = lReadByte(a1);
LABEL_79:
    if ((v13 & 0xFFFFFFDF) - 65 >= 0x1A && v13 != 95 && (v13 - 48) > 9)
    {
      break;
    }

    if (v14 > 0x400)
    {
      glpCPPErrorToInfoLog(*a1, "ERROR_TOKEN_TOO_LONG");
    }

    else
    {
      v27[v14++] = v13;
    }
  }

  if (v14 >= 0x401)
  {
    glpCPPErrorToInfoLog(*a1, "ERROR_TOKEN_TOO_LONG");
    v14 = 1024;
  }

  v27[v14] = 0;
  *(a2 + 12) = LookUpAddString(*a1 + 384, v27);
  result = 270;
LABEL_88:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t lReadByte(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 2);
    if (v2 < *(v1 + 3))
    {
LABEL_5:
      v3 = v1[3];
      *(v1 + 2) = v2 + 1;
      return *(v3 + v2);
    }

    v1 = *v1;
    if (v1)
    {
      v2 = 0;
      *(v1 + 2) = 0;
      *(a1 + 32) = v1;
      goto LABEL_5;
    }

    *(a1 + 32) = 0;
  }

  return 0xFFFFFFFFLL;
}

BOOL MatchNextToken(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v5 = *(v2 + 2);
  if (v5 >= *(v2 + 3))
  {
    v2 = *v2;
    if (!v2)
    {
LABEL_13:
      result = 0;
      *(a1 + 32) = 0;
      return result;
    }

    v5 = 0;
    *(v2 + 2) = 0;
    *(a1 + 32) = v2;
  }

  v6 = *(v2[3] + v5);
  if (v6)
  {
    return (v6 & 0x80) + v6 == a2;
  }

  lReadByte(a1);
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 2);
    if (v8 < *(v7 + 3))
    {
LABEL_10:
      v6 = *(v7[3] + v8);
      return (v6 & 0x80) + v6 == a2;
    }

    v7 = *v7;
    if (v7)
    {
      v8 = 0;
      *(v7 + 2) = 0;
      *(a1 + 32) = v7;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  return 0;
}

uint64_t ReadFromTokenStream(uint64_t *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x48uLL, 0xCA0EF1E7uLL);
  if (!v4)
  {
    abort();
  }

  v4[8] = 0;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = *a1;
  *v4 = *a1;
  v6 = *(v5 + 16);
  *(v4 + 12) = *(v6 + 48);
  v4[5] = *(v6 + 40);
  v4[1] = v6;
  v4[2] = scan_token;
  v4[7] = a1;
  v4[8] = a2;
  v7 = a1[3];
  if (v7)
  {
    a1[4] = v7;
    *(v7 + 8) = 0;
  }

  *(v5 + 16) = v4;
  return 1;
}

uint64_t scan_token(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v4 = *v3;
  result = ReadToken(v3, a2);
  if (result == 10)
  {
    ++*(a1 + 48);
  }

  else if (result <= 0)
  {
    *(v4 + 16) = *(a1 + 8);
    v6 = *(a1 + 64);
    free(a1);
    if (v6 && !v6(v4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      v7 = *(*(v4 + 16) + 16);

      return v7();
    }
  }

  return result;
}

void *UngetToken(uint64_t a1, int a2, const void *a3)
{
  v6 = malloc_type_malloc(0x460uLL, 0xCA0EF1E7uLL);
  if (!v6)
  {
    abort();
  }

  v7 = v6;
  bzero(v6, 0x460uLL);
  v7[14] = a2;
  result = memcpy(v7 + 16, a3, 0x420uLL);
  *v7 = a1;
  v9 = *(a1 + 16);
  v7[12] = *(v9 + 48);
  *(v7 + 5) = *(v9 + 40);
  *(v7 + 1) = v9;
  *(v7 + 2) = reget_token;
  *(a1 + 16) = v7;
  return result;
}

uint64_t reget_token(void *a1, void *__dst)
{
  v3 = *(a1 + 14);
  memcpy(__dst, a1 + 8, 0x420uLL);
  *(*a1 + 16) = a1[1];
  free(a1);
  return v3;
}

_OWORD *glpCacheOpen()
{
  v18[128] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v0 = getenv("GL_SHADER_CACHE_SIZE");
  if (!v0 || sscanf(v0, "%d", &v15) != 1 || v15 >= 0x10000001)
  {
    v15 = 0x10000000;
  }

  v1 = malloc_type_malloc(0x30uLL, 0xCA0EF1E7uLL);
  if (!v1)
  {
    abort();
  }

  v2 = v1;
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = 0u;
  if (v15)
  {
    *(v1 + 3) = dispatch_queue_create("CompilerFSCacheSerialQueue", 0);
    bzero(v18, 0x400uLL);
    v3 = CFCopySearchPathForDirectoriesInDomains();
    Count = CFArrayGetCount(v3);
    if (Count < 1)
    {
      goto LABEL_11;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v3, Count - 1);
    if (!ValueAtIndex)
    {
      goto LABEL_11;
    }

    __s[0] = 0;
    v6 = CFURLCopyFileSystemPath(ValueAtIndex, kCFURLPOSIXPathStyle);
    v7 = strlen(__s);
    CFStringGetCString(v6, &__s[v7], 1025 - v7, 0x8000100u);
    CFRelease(v6);
    memset(&v16, 0, sizeof(v16));
    if (stat(__s, &v16))
    {
      syslog(3, "path for application cache was not found: %s");
LABEL_11:
      CFRelease(v3);
      goto LABEL_12;
    }

    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      Identifier = CFBundleGetIdentifier(MainBundle);
      if (Identifier)
      {
        v12 = Identifier;
        v13 = strlen(__s);
        if (v13 && __s[v13] != 47)
        {
          __strncat_chk();
        }

        v14 = strlen(__s);
        CFStringGetCString(v12, &__s[v14], 1025 - v14, 0x8000100u);
      }

      if (stat(__s, &v16) && mkdir(__s, 0x1FFu))
      {
        syslog(3, "could not create path: %s");
        goto LABEL_11;
      }
    }

    strlen(__s);
    __strncat_chk();
    if (stat(__s, &v16) && mkdir(__s, 0x1FFu))
    {
      goto LABEL_11;
    }

    CFRelease(v3);
    __strlcat_chk();
    __strlcat_chk();
    *(v2 + 1) = v15;
    *(v2 + 4) = 2097153;
    if (!fscache_open())
    {
      if (*(v2 + 5))
      {
        *v2 = v15;
      }

      else
      {
        syslog(3, "fscache_open returned a NULL pointer but no error.");
      }
    }
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

void glpCacheDelete(void *a1)
{
  if (*a1 >= 1)
  {
    v2 = *(a1 + 3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __glpCacheDelete_block_invoke;
    block[3] = &__block_descriptor_tmp_11;
    block[4] = a1;
    dispatch_sync(v2, block);
  }

  dispatch_release(*(a1 + 3));
  free(a1);
}

uint64_t glpCacheGenerateHash(const void *a1, CC_LONG a2, unsigned __int8 *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA256_Init(&v7);
  CC_SHA256_Update(&v7, a1, a2);
  CC_SHA256_Update(&v7, "Oct 10 2025", 0xBu);
  CC_SHA256_Update(&v7, "21:30:34", 8u);
  return CC_SHA256_Final(a3, &v7);
}

uint64_t glpCacheGetElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (*a1)
  {
    v4 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __glpCacheGetElement_block_invoke;
    block[3] = &unk_278B4A0F0;
    block[4] = &v8;
    block[5] = a1;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(v4, block);
    v5 = *(v9 + 6);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __glpCacheGetElement_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 40);
  result = fscache_find_and_retain();
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24) == 203)
  {
    ++*(*(a1 + 40) + 36);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    v5 = *(*(a1 + 40) + 40);
    result = fscache_element_get_data();
    *(*(*(a1 + 32) + 8) + 24) = result;
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 24))
    {
      *(v6 + 24) = 0;
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      glpCacheGenerateHash(0x20, 0xFFFFFFE0, &v15);
      if (v15 == MEMORY[0] && *(&v15 + 1) == MEMORY[8] && v16 == MEMORY[0x10] && *(&v16 + 1) == MEMORY[0x18])
      {
        v12 = malloc_type_malloc(0xFFFFFFFFFFFFFFE0, 0xCA0EF1E7uLL);
        if (!v12)
        {
          abort();
        }

        **(a1 + 56) = v12;
        v13 = *(a1 + 56);
        **(a1 + 64) = -32;
        result = memcpy(*v13, 0x20, 0xFFFFFFFFFFFFFFE0);
        ++*(*(a1 + 40) + 32);
        v11 = 1;
      }

      else
      {
        v10 = *(*(a1 + 40) + 40);
        result = fscache_remove_and_release();
        v11 = 0;
      }

      *(*(*(a1 + 32) + 8) + 24) = v11;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void glpCacheAddElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1)
  {
    v4 = *(a1 + 24);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = __glpCacheAddElement_block_invoke;
    v5[3] = &__block_descriptor_tmp_24;
    v5[4] = a3;
    v5[5] = a4;
    v5[6] = a1;
    v5[7] = a2;
    dispatch_sync(v4, v5);
  }
}

void __glpCacheAddElement_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  glpCacheGenerateHash(*(a1 + 32), *(a1 + 40), &v8);
  v2 = malloc_type_malloc(*(a1 + 40) + 32, 0xCA0EF1E7uLL);
  if (!v2)
  {
    abort();
  }

  v3 = v2;
  v4 = v9;
  *v2 = v8;
  v2[1] = v4;
  memcpy(v2 + 2, *(a1 + 32), *(a1 + 40));
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 48) + 40);
  fscache_insert_and_retain();
  free(v3);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t glpBaseSizeOfNodeKind(unsigned int a1)
{
  if (a1 >= 0x56)
  {
    abort();
  }

  return qword_23A29CE00[a1];
}

uint64_t glpDeepCopyASTNode(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *, _DWORD *), uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = *(a2 + 4);
  v8 = *a1;
  v9 = a1[1];
  v10 = glpBaseSizeOfNodeKind(*(a2 + 16));
  v11 = v9(v8, v10 + 8 * v7, "AST Node (copy)");
  v12 = glpBaseSizeOfNodeKind(*(a2 + 16));
  memcpy(v11, a2, v12);
  *v11 = v7;
  v11[1] = v7;
  *(v11 + 1) = v11 + glpBaseSizeOfNodeKind(*(a2 + 16));
  if (v7)
  {
    v13 = 0;
    v14 = 8 * v7;
    do
    {
      *(*(v11 + 1) + v13) = glpDeepCopyASTNode(a1, *(*(a2 + 8) + v13), a3, a4);
      v13 += 8;
    }

    while (v14 != v13);
  }

  if (!a3)
  {
    return v11;
  }

  return a3(a4, a1, v11);
}

uint64_t glpTopLevelNodeGetGlobalTypeQualifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  for (i = *(a1 + 8); ; ++i)
  {
    result = *i;
    if ((*i + 1) >= 2 && *(result + 16) == 63 && *(result + 32) && (*(result + 24) & 0xFFFFFFFFFFFFFF7FLL) == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

__n128 glpASTNodeGetLocation@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 56);
  return result;
}

__n128 glpASTNodeSetLocation(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 56) = a2[1].n128_u64[0];
  *(a1 + 40) = result;
  return result;
}

uint64_t glpIsBinaryOperatorNode(uint64_t a1)
{
  v1 = *(a1 + 16) - 19;
  if (v1 > 0x15)
  {
    return 0;
  }

  else
  {
    return dword_23A29D0B4[v1];
  }
}

void *glpCallNodeInsertArg(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 4);
  v8 = v7 + 1;
  if ((v7 + 1) <= *a2)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    if (*a2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 2 * v10;
    if (v11 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v13, *(a2 + 8), 8 * *(a2 + 4));
    (a1[3])(*a1, *(a2 + 8));
    *a2 = v12;
    *(a2 + 8) = v13;
    v7 = *(a2 + 4);
  }

  result = memmove(&v13[8 * a4 + 8], &v13[8 * a4], 8 * (v7 - a4));
  *(*(a2 + 8) + 8 * a4) = a3;
  ++*(a2 + 4);
  ++*(a2 + 64);
  return result;
}

void *glpStructureNodeClearFields(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = memmove(*(a1 + 8), (*(a1 + 8) + 8 * v2), 8 * (*(a1 + 4) - v2));
  *(a1 + 4) -= v2;
  *(a1 + 64) = 0;
  return result;
}

void *glpStructureNodeInsertField(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 4);
  v8 = v7 + 1;
  if ((v7 + 1) <= *a2)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    if (*a2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 2 * v10;
    if (v11 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v13, *(a2 + 8), 8 * *(a2 + 4));
    (a1[3])(*a1, *(a2 + 8));
    *a2 = v12;
    *(a2 + 8) = v13;
    v7 = *(a2 + 4);
  }

  result = memmove(&v13[8 * a4 + 8], &v13[8 * a4], 8 * (v7 - a4));
  *(*(a2 + 8) + 8 * a4) = a3;
  ++*(a2 + 4);
  ++*(a2 + 64);
  return result;
}

__n128 glpMakeTypeConversionNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 88, "AST Node (TypeConversion)");
  *(v7 + 8) = v7 + 80;
  *v7 = 1;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  **(v7 + 8) = 0;
  ++*(v7 + 4);
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  return result;
}

__n128 glpMakeVariableIdentifierNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 80, "AST Node (VariableIdentifier)");
  *(v7 + 8) = v7 + 80;
  *v7 = 0;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 1;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  return result;
}

__n128 glpMakeTypeIdentifierNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 80, "AST Node (TypeIdentifier)");
  *(v7 + 8) = v7 + 80;
  *v7 = 0;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 2;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  return result;
}

__n128 glpMakeConstantNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 80, "AST Node (Constant)");
  *(v7 + 8) = v7 + 80;
  *v7 = 0;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 3;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  return result;
}

__n128 glpMakeArrayAccessNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (ArrayAccess)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 4;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  LODWORD(v4) = *(v3 + 4) + 1;
  *(v3 + 4) = v4;
  *(*(v3 + 8) + 8 * v4) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeFieldAccessNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 88, "AST Node (FieldAccess)");
  *(v7 + 8) = v7 + 80;
  *v7 = 1;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 5;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  **(v7 + 8) = 0;
  ++*(v7 + 4);
  return result;
}

__n128 glpMakeUndeterminedCallNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 88, "AST Node (UndeterminedCall)");
  *(v3 + 8) = v3 + 72;
  *v3 = 2;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 6;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeFunctionCallNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 104, "AST Node (FunctionCall)");
  *(v7 + 8) = v7 + 96;
  *v7 = 1;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 7;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 88) = 0;
  return result;
}

__n128 glpMakeSubroutineArrayCallNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 104, "AST Node (SubroutineArrayCall)");
  *(v7 + 8) = v7 + 88;
  *v7 = 2;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  **(v7 + 8) = 0;
  ++*(v7 + 4);
  return result;
}

__n128 glpMakeMethodCallNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 104, "AST Node (MethodCall)");
  *(v7 + 8) = v7 + 88;
  *v7 = 2;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 9;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  **(v7 + 8) = 0;
  ++*(v7 + 4);
  return result;
}

__n128 glpMakeConstructorCallNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 88, "AST Node (ConstructorCall)");
  *(v3 + 8) = v3 + 72;
  *v3 = 2;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 10;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakePostincrementNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 72, "AST Node (Postincrement)");
  *(v3 + 8) = v3 + 64;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 11;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakePostdecrementNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 72, "AST Node (Postdecrement)");
  *(v3 + 8) = v3 + 64;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 12;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakePreincrementNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 72, "AST Node (Preincrement)");
  *(v3 + 8) = v3 + 64;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 13;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakePredecrementNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 72, "AST Node (Predecrement)");
  *(v3 + 8) = v3 + 64;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 14;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeUnaryPlusNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 72, "AST Node (UnaryPlus)");
  *(v3 + 8) = v3 + 64;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 15;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeNegateNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 72, "AST Node (Negate)");
  *(v3 + 8) = v3 + 64;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 16;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeLogicalNotNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 72, "AST Node (LogicalNot)");
  *(v3 + 8) = v3 + 64;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 17;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeBitwiseNotNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 72, "AST Node (BitwiseNot)");
  *(v3 + 8) = v3 + 64;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 18;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

uint64_t glpMakeMultiplyNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (Multiply)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 19, &v5);
  return v3;
}

uint64_t glpMakeDivideNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (Divide)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 20, &v5);
  return v3;
}

uint64_t glpMakeModuloNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (Modulo)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 21, &v5);
  return v3;
}

uint64_t glpMakeAddNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (Add)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 22, &v5);
  return v3;
}

uint64_t glpMakeSubtractNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (Subtract)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 23, &v5);
  return v3;
}

uint64_t glpMakeShiftLeftNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (ShiftLeft)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 24, &v5);
  return v3;
}

uint64_t glpMakeShiftRightNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (ShiftRight)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 25, &v5);
  return v3;
}

uint64_t glpMakeLessNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (Less)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 26, &v5);
  return v3;
}

uint64_t glpMakeLessEqualNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (LessEqual)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 27, &v5);
  return v3;
}

uint64_t glpMakeGreaterNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (Greater)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 28, &v5);
  return v3;
}

uint64_t glpMakeGreaterEqualNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (GreaterEqual)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 29, &v5);
  return v3;
}

uint64_t glpMakeEqualNode(uint64_t a1, __n128 *a2, char a3)
{
  v5 = (*(a1 + 8))(*a1, 88, "AST Node (Equal)");
  *(v5 + 8) = v5 + 72;
  *v5 = 2;
  v7 = *a2;
  v8 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v5, 30, &v7);
  *(v5 + 64) = a3;
  return v5;
}

uint64_t glpMakeNotEqualNode(uint64_t a1, __n128 *a2, char a3)
{
  v5 = (*(a1 + 8))(*a1, 88, "AST Node (NotEqual)");
  *(v5 + 8) = v5 + 72;
  *v5 = 2;
  v7 = *a2;
  v8 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v5, 31, &v7);
  *(v5 + 64) = a3;
  return v5;
}

uint64_t glpMakeLogicalAndNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (LogicalAnd)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 32, &v5);
  return v3;
}

uint64_t glpMakeLogicalOrNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (LogicalOr)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 33, &v5);
  return v3;
}

uint64_t glpMakeLogicalXorNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (LogicalXor)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 34, &v5);
  return v3;
}

uint64_t glpMakeBitwiseAndNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (BitwiseAnd)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 35, &v5);
  return v3;
}

uint64_t glpMakeBitwiseOrNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (BitwiseOr)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 36, &v5);
  return v3;
}

uint64_t glpMakeBitwiseXorNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (BitwiseXor)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v5 = *a2;
  v6 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v3, 37, &v5);
  return v3;
}

__n128 glpMakeIfExprNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 88, "AST Node (IfExpr)");
  *(v3 + 8) = v3 + 64;
  *v3 = 3;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 38;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  LODWORD(v4) = *(v3 + 4) + 1;
  *(v3 + 4) = v4;
  *(*(v3 + 8) + 8 * v4) = 0;
  LODWORD(v4) = *(v3 + 4) + 1;
  *(v3 + 4) = v4;
  *(*(v3 + 8) + 8 * v4) = 0;
  ++*(v3 + 4);
  return result;
}

uint64_t glpMakeAssignNode(uint64_t a1, __n128 *a2, char a3)
{
  v5 = (*(a1 + 8))(*a1, 88, "AST Node (Assign)");
  *(v5 + 8) = v5 + 72;
  *v5 = 2;
  v7 = *a2;
  v8 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v5, 39, &v7);
  *(v5 + 64) = a3;
  return v5;
}

uint64_t glpMakeOpAssignNode(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v5 = (*(a1 + 8))(*a1, 88, "AST Node (OpAssign)");
  *(v5 + 8) = v5 + 72;
  *v5 = 2;
  v7 = *a2;
  v8 = a2[1].n128_u64[0];
  initBinaryOperatorNode(v5, 40, &v7);
  *(v5 + 64) = a3;
  return v5;
}

__n128 glpMakeWriteOutputNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 72, "AST Node (WriteOutput)");
  *(v3 + 8) = v3 + 72;
  *v3 = 0;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 42;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  return result;
}

__n128 glpMakeCommaExprNode(uint64_t a1, __n128 *a2, char a3)
{
  v5 = (*(a1 + 8))(*a1, 80, "AST Node (CommaExpr)");
  *(v5 + 8) = v5 + 72;
  *v5 = 1;
  v6 = a2[1].n128_u64[0];
  result = *a2;
  *(v5 + 4) = 0;
  *(v5 + 16) = 43;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = result;
  *(v5 + 56) = v6;
  *(v5 + 64) = a3;
  *(v5 + 68) = 0;
  return result;
}

void *glpCommaExprNodeClearExprs(uint64_t a1)
{
  v2 = *(a1 + 68);
  result = memmove(*(a1 + 8), (*(a1 + 8) + 8 * v2), 8 * (*(a1 + 4) - v2));
  *(a1 + 4) -= v2;
  *(a1 + 68) = 0;
  return result;
}

void *glpCommaExprNodeInsertExpr(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 4);
  v8 = v7 + 1;
  if ((v7 + 1) <= *a2)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    if (*a2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 2 * v10;
    if (v11 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v13, *(a2 + 8), 8 * *(a2 + 4));
    (a1[3])(*a1, *(a2 + 8));
    *a2 = v12;
    *(a2 + 8) = v13;
    v7 = *(a2 + 4);
  }

  result = memmove(&v13[8 * a4 + 8], &v13[8 * a4], 8 * (v7 - a4));
  *(*(a2 + 8) + 8 * a4) = a3;
  ++*(a2 + 4);
  ++*(a2 + 68);
  return result;
}

__n128 glpMakeParameterDeclarationNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 96, "AST Node (ParameterDeclaration)");
  *(v7 + 8) = v7 + 88;
  *v7 = 1;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 44;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 80) = 0;
  **(v7 + 8) = 0;
  ++*(v7 + 4);
  return result;
}

__n128 glpMakeFunctionPrototypeNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 120, "AST Node (FunctionPrototype)");
  *(v7 + 8) = v7 + 96;
  *v7 = 3;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 45;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 80) = 0;
  **(v7 + 8) = 0;
  LODWORD(v8) = *(v7 + 4) + 1;
  *(v7 + 4) = v8;
  *(*(v7 + 8) + 8 * v8) = 0;
  ++*(v7 + 4);
  *(v7 + 88) = 0;
  return result;
}

void *glpFunctionPrototypeNodeClearParameters(uint64_t a1)
{
  v2 = *(a1 + 88);
  result = memmove((*(a1 + 8) + 16), (*(a1 + 8) + 8 * (v2 + 2)), 8 * (*(a1 + 4) - (v2 + 2)));
  *(a1 + 4) -= v2;
  *(a1 + 88) = 0;
  return result;
}

void *glpFunctionPrototypeNodeInsertParameter(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 4);
  v8 = v7 + 1;
  if ((v7 + 1) <= *a2)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    if (*a2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 2 * v10;
    if (v11 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v13, *(a2 + 8), 8 * *(a2 + 4));
    (a1[3])(*a1, *(a2 + 8));
    *a2 = v12;
    *(a2 + 8) = v13;
    v7 = *(a2 + 4);
  }

  v14 = a4 + 2;
  result = memmove(&v13[8 * v14 + 8], &v13[8 * v14], 8 * (v7 - v14));
  *(*(a2 + 8) + 8 * v14) = a3;
  ++*(a2 + 4);
  ++*(a2 + 88);
  return result;
}

__n128 glpMakeVariableDeclarationNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = (*(a1 + 8))(*a1, 112, "AST Node (VariableDeclaration)");
  *(v9 + 8) = v9 + 96;
  *v9 = 2;
  v10 = a2[1].n128_u64[0];
  result = *a2;
  *(v9 + 4) = 0;
  *(v9 + 16) = 46;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = result;
  *(v9 + 56) = v10;
  *(v9 + 64) = a3;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  *(v9 + 88) = 0;
  **(v9 + 8) = 0;
  LODWORD(v10) = *(v9 + 4) + 1;
  *(v9 + 4) = v10;
  *(*(v9 + 8) + 8 * v10) = 0;
  ++*(v9 + 4);
  return result;
}

uint64_t glpVariableDeclarationNodeSetName(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 64) = a2;
  *(result + 72) = a3;
  return result;
}

__n128 glpMakeVariableDeclarationGroupNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 88, "AST Node (VariableDeclarationGroup)");
  *(v3 + 8) = v3 + 72;
  *v3 = 2;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 47;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  *(v3 + 64) = 0;
  return result;
}

void *glpVariableDeclarationGroupNodeInsertDeclaration(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 4);
  v8 = v7 + 1;
  if ((v7 + 1) <= *a2)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    if (*a2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 2 * v10;
    if (v11 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v13, *(a2 + 8), 8 * *(a2 + 4));
    (a1[3])(*a1, *(a2 + 8));
    *a2 = v12;
    *(a2 + 8) = v13;
    v7 = *(a2 + 4);
  }

  v14 = a4 + 1;
  result = memmove(&v13[8 * v14 + 8], &v13[8 * v14], 8 * (v7 - v14));
  *(*(a2 + 8) + 8 * v14) = a3;
  ++*(a2 + 4);
  ++*(a2 + 64);
  return result;
}

__n128 glpMakePrecisionDeclarationNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (PrecisionDeclaration)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 48;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  LODWORD(v4) = *(v3 + 4) + 1;
  *(v3 + 4) = v4;
  *(*(v3 + 8) + 8 * v4) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeQualifiedDeclarationNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 88, "AST Node (QualifiedDeclaration)");
  *(v7 + 8) = v7 + 80;
  *v7 = 1;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 49;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  **(v7 + 8) = 0;
  ++*(v7 + 4);
  return result;
}

__n128 glpMakeQualifiedDeclarationGroupNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (QualifiedDeclarationGroup)");
  *(v3 + 8) = v3 + 72;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 50;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  return result;
}

void *glpQualifiedDeclarationGroupNodeInsertDeclaration(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 4);
  v8 = v7 + 1;
  if ((v7 + 1) <= *a2)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    if (*a2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 2 * v10;
    if (v11 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v13, *(a2 + 8), 8 * *(a2 + 4));
    (a1[3])(*a1, *(a2 + 8));
    *a2 = v12;
    *(a2 + 8) = v13;
    v7 = *(a2 + 4);
  }

  result = memmove(&v13[8 * a4 + 8], &v13[8 * a4], 8 * (v7 - a4));
  *(*(a2 + 8) + 8 * a4) = a3;
  ++*(a2 + 4);
  ++*(a2 + 64);
  return result;
}

__n128 glpMakeFunctionDefinitionNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (FunctionDefinition)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 51;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  LODWORD(v4) = *(v3 + 4) + 1;
  *(v3 + 4) = v4;
  *(*(v3 + 8) + 8 * v4) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeQualifiedTypeNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (QualifiedType)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 52;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  LODWORD(v4) = *(v3 + 4) + 1;
  *(v3 + 4) = v4;
  *(*(v3 + 8) + 8 * v4) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakePrimitiveTypeNode(uint64_t a1, __n128 *a2, int a3)
{
  v5 = (*(a1 + 8))(*a1, 72, "AST Node (PrimitiveType)");
  *(v5 + 8) = v5 + 72;
  *v5 = 0;
  v6 = a2[1].n128_u64[0];
  result = *a2;
  *(v5 + 4) = 0;
  *(v5 + 16) = 53;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = result;
  *(v5 + 56) = v6;
  *(v5 + 64) = a3;
  return result;
}

__n128 glpMakeArrayTypeNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (ArrayType)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 54;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  LODWORD(v4) = *(v3 + 4) + 1;
  *(v3 + 4) = v4;
  *(*(v3 + 8) + 8 * v4) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeFieldDeclarationNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 88, "AST Node (FieldDeclaration)");
  *(v7 + 8) = v7 + 80;
  *v7 = 1;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 55;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  **(v7 + 8) = 0;
  ++*(v7 + 4);
  return result;
}

__n128 glpMakeStructTypeNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 96, "AST Node (StructType)");
  *(v7 + 8) = v7 + 88;
  *v7 = 1;
  v8 = a2[1].n128_u64[0];
  result = *a2;
  *(v7 + 4) = 0;
  *(v7 + 16) = 56;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = result;
  *(v7 + 56) = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  return result;
}

__n128 glpMakeInterfaceBlockNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9)
{
  v16 = (*(a1 + 8))(*a1, 144, "AST Node (InterfaceBlock)");
  *(v16 + 8) = v16 + 120;
  *v16 = 3;
  v17 = a2[1].n128_u64[0];
  result = *a2;
  *(v16 + 4) = 0;
  *(v16 + 16) = 57;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = result;
  *(v16 + 56) = v17;
  *(v16 + 64) = 0;
  *(v16 + 72) = a3;
  *(v16 + 80) = a4;
  *(v16 + 88) = a5;
  *(v16 + 96) = a6;
  *(v16 + 104) = a7;
  *(v16 + 105) = a8;
  *(v16 + 112) = a9;
  **(v16 + 8) = 0;
  LODWORD(v17) = *(v16 + 4) + 1;
  *(v16 + 4) = v17;
  *(*(v16 + 8) + 8 * v17) = 0;
  ++*(v16 + 4);
  return result;
}

__n128 glpMakeLayoutTypeNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (LayoutType)");
  *(v3 + 8) = v3 + 72;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 58;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  return result;
}

void *glpLayoutTypeNodeInsertLayoutPair(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 4);
  v8 = v7 + 1;
  if ((v7 + 1) <= *a2)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    if (*a2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 2 * v10;
    if (v11 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v13, *(a2 + 8), 8 * *(a2 + 4));
    (a1[3])(*a1, *(a2 + 8));
    *a2 = v12;
    *(a2 + 8) = v13;
    v7 = *(a2 + 4);
  }

  result = memmove(&v13[8 * a4 + 8], &v13[8 * a4], 8 * (v7 - a4));
  *(*(a2 + 8) + 8 * a4) = a3;
  ++*(a2 + 4);
  ++*(a2 + 64);
  return result;
}

__n128 glpMakeKeywordQualifierNode(uint64_t a1, __n128 *a2, int a3)
{
  v5 = (*(a1 + 8))(*a1, 72, "AST Node (KeywordQualifier)");
  *(v5 + 8) = v5 + 72;
  *v5 = 0;
  v6 = a2[1].n128_u64[0];
  result = *a2;
  *(v5 + 4) = 0;
  *(v5 + 16) = 59;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = result;
  *(v5 + 56) = v6;
  *(v5 + 64) = a3;
  return result;
}

__n128 glpMakeLayoutQualifierNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (LayoutQualifier)");
  *(v3 + 8) = v3 + 72;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 60;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  return result;
}

void *glpLayoutQualifierNodeInsertLayoutPair(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 4);
  v8 = v7 + 1;
  if ((v7 + 1) <= *a2)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    if (*a2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 2 * v10;
    if (v11 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v13, *(a2 + 8), 8 * *(a2 + 4));
    (a1[3])(*a1, *(a2 + 8));
    *a2 = v12;
    *(a2 + 8) = v13;
    v7 = *(a2 + 4);
  }

  result = memmove(&v13[8 * a4 + 8], &v13[8 * a4], 8 * (v7 - a4));
  *(*(a2 + 8) + 8 * a4) = a3;
  ++*(a2 + 4);
  ++*(a2 + 64);
  return result;
}

__n128 glpMakeSubroutineTypeListNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (SubroutineTypeList)");
  *(v3 + 8) = v3 + 72;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 61;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  return result;
}

void *glpSubroutineTypeListNodeInsertType(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 4);
  v8 = v7 + 1;
  if ((v7 + 1) <= *a2)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    if (*a2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 2 * v10;
    if (v11 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v13, *(a2 + 8), 8 * *(a2 + 4));
    (a1[3])(*a1, *(a2 + 8));
    *a2 = v12;
    *(a2 + 8) = v13;
    v7 = *(a2 + 4);
  }

  result = memmove(&v13[8 * a4 + 8], &v13[8 * a4], 8 * (v7 - a4));
  *(*(a2 + 8) + 8 * a4) = a3;
  ++*(a2 + 4);
  ++*(a2 + 64);
  return result;
}

__n128 glpMakeQualifierListNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (QualifierList)");
  *(v3 + 8) = v3 + 72;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 62;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  return result;
}

void *glpQualifierListNodeInsertQualifier(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 4);
  v8 = v7 + 1;
  if ((v7 + 1) <= *a2)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    if (*a2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 2 * v10;
    if (v11 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v13, *(a2 + 8), 8 * *(a2 + 4));
    (a1[3])(*a1, *(a2 + 8));
    *a2 = v12;
    *(a2 + 8) = v13;
    v7 = *(a2 + 4);
  }

  result = memmove(&v13[8 * a4 + 8], &v13[8 * a4], 8 * (v7 - a4));
  *(*(a2 + 8) + 8 * a4) = a3;
  ++*(a2 + 4);
  ++*(a2 + 64);
  return result;
}

__n128 glpMakeGlobalTypeQualifierNode(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v5 = (*(a1 + 8))(*a1, 80, "AST Node (GlobalTypeQualifier)");
  *(v5 + 8) = v5 + 72;
  *v5 = 1;
  v6 = a2[1].n128_u64[0];
  result = *a2;
  *(v5 + 4) = 0;
  *(v5 + 16) = 63;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = result;
  *(v5 + 56) = v6;
  *(v5 + 64) = a3;
  **(v5 + 8) = 0;
  ++*(v5 + 4);
  return result;
}

__n128 glpMakeLayoutPairNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v15 = (*(a1 + 8))(*a1, 112, "AST Node (LayoutPair)");
  *(v15 + 8) = v15 + 104;
  *v15 = 1;
  v16 = a2[1].n128_u64[0];
  result = *a2;
  *(v15 + 4) = 0;
  *(v15 + 16) = 64;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = result;
  *(v15 + 56) = v16;
  *(v15 + 64) = a3;
  *(v15 + 72) = a4;
  *(v15 + 80) = a5;
  *(v15 + 84) = a6;
  *(v15 + 88) = a7;
  *(v15 + 96) = a8;
  **(v15 + 8) = 0;
  ++*(v15 + 4);
  return result;
}

__n128 glpMakeExpressionStatementNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 72, "AST Node (ExpressionStatement)");
  *(v3 + 8) = v3 + 64;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 65;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeBlockNode(uint64_t a1, __n128 *a2, char a3)
{
  v5 = (*(a1 + 8))(*a1, 80, "AST Node (Block)");
  *(v5 + 8) = v5 + 72;
  *v5 = 1;
  v6 = a2[1].n128_u64[0];
  result = *a2;
  *(v5 + 4) = 0;
  *(v5 + 16) = 66;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = result;
  *(v5 + 56) = v6;
  *(v5 + 64) = a3;
  *(v5 + 68) = 0;
  return result;
}

void *glpBlockNodeInsertStatement(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 4);
  v8 = v7 + 1;
  if ((v7 + 1) <= *a2)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    if (*a2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 2 * v10;
    if (v11 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v13, *(a2 + 8), 8 * *(a2 + 4));
    (a1[3])(*a1, *(a2 + 8));
    *a2 = v12;
    *(a2 + 8) = v13;
    v7 = *(a2 + 4);
  }

  result = memmove(&v13[8 * a4 + 8], &v13[8 * a4], 8 * (v7 - a4));
  *(*(a2 + 8) + 8 * a4) = a3;
  ++*(a2 + 4);
  ++*(a2 + 68);
  return result;
}

__n128 glpMakeIfStatementNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 88, "AST Node (IfStatement)");
  *(v3 + 8) = v3 + 64;
  *v3 = 3;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 67;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  LODWORD(v4) = *(v3 + 4) + 1;
  *(v3 + 4) = v4;
  *(*(v3 + 8) + 8 * v4) = 0;
  LODWORD(v4) = *(v3 + 4) + 1;
  *(v3 + 4) = v4;
  *(*(v3 + 8) + 8 * v4) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeLoopStatementNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (LoopStatement)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 68;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  LODWORD(v4) = *(v3 + 4) + 1;
  *(v3 + 4) = v4;
  *(*(v3 + 8) + 8 * v4) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeSwitchStatementNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (SwitchStatement)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 69;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  LODWORD(v4) = *(v3 + 4) + 1;
  *(v3 + 4) = v4;
  *(*(v3 + 8) + 8 * v4) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeCaseStatementNode(uint64_t a1, __n128 *a2, char a3)
{
  v5 = (*(a1 + 8))(*a1, 80, "AST Node (CaseStatement)");
  *(v5 + 8) = v5 + 72;
  *v5 = 1;
  v6 = a2[1].n128_u64[0];
  result = *a2;
  *(v5 + 4) = 0;
  *(v5 + 16) = 70;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = result;
  *(v5 + 56) = v6;
  *(v5 + 64) = a3;
  **(v5 + 8) = 0;
  ++*(v5 + 4);
  return result;
}

__n128 glpMakeDefaultStatementNode(uint64_t a1, __n128 *a2, char a3)
{
  v5 = (*(a1 + 8))(*a1, 72, "AST Node (DefaultStatement)");
  *(v5 + 8) = v5 + 72;
  *v5 = 0;
  v6 = a2[1].n128_u64[0];
  result = *a2;
  *(v5 + 4) = 0;
  *(v5 + 16) = 71;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = result;
  *(v5 + 56) = v6;
  *(v5 + 64) = a3;
  return result;
}

__n128 glpMakeBreakStatementNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 64, "AST Node (BreakStatement)");
  *(v3 + 8) = v3 + 64;
  *v3 = 0;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 72;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  return result;
}

__n128 glpMakeContinueStatementNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 64, "AST Node (ContinueStatement)");
  *(v3 + 8) = v3 + 64;
  *v3 = 0;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 73;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  return result;
}

__n128 glpMakeDiscardStatementNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 64, "AST Node (DiscardStatement)");
  *(v3 + 8) = v3 + 64;
  *v3 = 0;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 74;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  return result;
}

__n128 glpMakeReturnStatementNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (ReturnStatement)");
  *(v3 + 8) = v3 + 72;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 75;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeTopLevelNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (TopLevel)");
  *(v3 + 8) = v3 + 72;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 76;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  return result;
}

void *glpTopLevelNodeInsertDef(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a2 + 4);
  v8 = v7 + 1;
  if ((v7 + 1) <= *a2)
  {
    v13 = *(a2 + 8);
  }

  else
  {
    if (*a2 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 2 * v10;
    if (v11 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPASTNode *, growth)");
    memcpy(v13, *(a2 + 8), 8 * *(a2 + 4));
    (a1[3])(*a1, *(a2 + 8));
    *a2 = v12;
    *(a2 + 8) = v13;
    v7 = *(a2 + 4);
  }

  result = memmove(&v13[8 * a4 + 8], &v13[8 * a4], 8 * (v7 - a4));
  *(*(a2 + 8) + 8 * a4) = a3;
  ++*(a2 + 4);
  ++*(a2 + 64);
  return result;
}

__n128 glpMakeAvailabilityDeclarationNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 72, "AST Node (AvailabilityDeclaration)");
  *(v3 + 8) = v3 + 64;
  *v3 = 1;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 77;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeRawCallNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a1 + 8))(*a1, 88, "AST Node (RawCall)");
  *(v9 + 8) = v9 + 88;
  *v9 = 0;
  v10 = a2[1].n128_u64[0];
  result = *a2;
  *(v9 + 4) = 0;
  *(v9 + 16) = 78;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = result;
  *(v9 + 56) = v10;
  *(v9 + 64) = a3;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  return result;
}

__n128 glpMakeSubroutineRawCallNode(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v5 = (*(a1 + 8))(*a1, 80, "AST Node (SubroutineRawCall)");
  *(v5 + 8) = v5 + 72;
  *v5 = 1;
  v6 = a2[1].n128_u64[0];
  result = *a2;
  *(v5 + 4) = 0;
  *(v5 + 16) = 79;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = result;
  *(v5 + 56) = v6;
  *(v5 + 64) = a3;
  **(v5 + 8) = 0;
  ++*(v5 + 4);
  return result;
}

uint64_t glpMakeOffsetNode(uint64_t a1, uint64_t a2)
{
  v3 = (*(a1 + 8))(*a1, 112, "AST Node (Offset)");
  *&v4 = 0;
  *(v3 + 8) = v3 + 88;
  *v3 = 3;
  v5 = *(a2 + 16);
  *(v3 + 40) = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 80;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;
  *(v3 + 80) = 0;
  **(v3 + 8) = 0;
  LODWORD(v5) = *(v3 + 4) + 1;
  *(v3 + 4) = v5;
  *(*(v3 + 8) + 8 * v5) = 0;
  LODWORD(v5) = *(v3 + 4) + 1;
  *(v3 + 4) = v5;
  *(*(v3 + 8) + 8 * v5) = 0;
  ++*(v3 + 4);
  *(v3 + 32) = glpGetPrimitiveType(0);
  *(v3 + 80) = -1;
  return v3;
}

__n128 glpMakeLValueNode(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a1 + 8))(*a1, 104, "AST Node (LValue)");
  *(v9 + 8) = v9 + 96;
  *v9 = 1;
  v10 = a2[1].n128_u64[0];
  result = *a2;
  *(v9 + 4) = 0;
  *(v9 + 16) = 81;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = result;
  *(v9 + 56) = v10;
  **(v9 + 8) = 0;
  ++*(v9 + 4);
  *(v9 + 64) = a3;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  *(v9 + 88) = 0;
  return result;
}

uint64_t glpLValueNodeSetVariableName(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 64) = a2;
  *(result + 72) = a3;
  return result;
}

__n128 glpMakeRValueNode(uint64_t a1, __n128 *a2)
{
  v3 = (*(a1 + 8))(*a1, 80, "AST Node (RValue)");
  *(v3 + 8) = v3 + 64;
  *v3 = 2;
  v4 = a2[1].n128_u64[0];
  result = *a2;
  *(v3 + 4) = 0;
  *(v3 + 16) = 82;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = result;
  *(v3 + 56) = v4;
  **(v3 + 8) = 0;
  LODWORD(v4) = *(v3 + 4) + 1;
  *(v3 + 4) = v4;
  *(*(v3 + 8) + 8 * v4) = 0;
  ++*(v3 + 4);
  return result;
}

__n128 glpMakeIBPartialDerefNode(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v5 = (*(a1 + 8))(*a1, 80, "AST Node (IBPartialDeref)");
  *(v5 + 8) = v5 + 72;
  *v5 = 1;
  v6 = a2[1].n128_u64[0];
  result = *a2;
  *(v5 + 4) = 0;
  *(v5 + 16) = 83;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = result;
  *(v5 + 56) = v6;
  *(v5 + 64) = a3;
  **(v5 + 8) = 0;
  ++*(v5 + 4);
  return result;
}

__n128 glpMakePPStreamOpNode(uint64_t a1, __n128 *a2, int a3, int a4, int a5, int a6, int a7)
{
  v13 = (*(a1 + 8))(*a1, 104, "AST Node (PPStreamOp)");
  *(v13 + 8) = v13 + 96;
  *v13 = 1;
  v14 = a2[1].n128_u64[0];
  result = *a2;
  *(v13 + 4) = 0;
  *(v13 + 16) = 84;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = result;
  *(v13 + 56) = v14;
  *(v13 + 64) = 0;
  *(v13 + 72) = a3;
  *(v13 + 76) = a4;
  *(v13 + 80) = a5;
  *(v13 + 84) = a6;
  *(v13 + 88) = a7;
  return result;
}

__n128 glpMakeSubroutineUniformNode(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v5 = (*(a1 + 8))(*a1, 72, "AST Node (SubroutineUniform)");
  *(v5 + 8) = v5 + 72;
  *v5 = 0;
  v6 = a2[1].n128_u64[0];
  result = *a2;
  *(v5 + 4) = 0;
  *(v5 + 16) = 85;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = result;
  *(v5 + 56) = v6;
  *(v5 + 64) = a3;
  return result;
}

__n128 initBinaryOperatorNode(uint64_t a1, int a2, __n128 *a3)
{
  v3 = a3[1].n128_u64[0];
  result = *a3;
  *(a1 + 4) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = result;
  *(a1 + 56) = v3;
  **(a1 + 8) = 0;
  LODWORD(v3) = *(a1 + 4) + 1;
  *(a1 + 4) = v3;
  *(*(a1 + 8) + 8 * v3) = 0;
  ++*(a1 + 4);
  return result;
}

void *deserialize_GLPType(void *a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __deserialize_GLPType_block_invoke;
  v3[3] = &__block_descriptor_tmp_12;
  v3[4] = a1;
  return deserialize_pointer(a1, v3, a2);
}

void *deserialize_GLPLayoutObject(void *a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __deserialize_GLPLayoutObject_block_invoke;
  v3[3] = &__block_descriptor_tmp_3;
  v3[4] = a1;
  return deserialize_pointer(a1, v3, a2);
}

void *deserialize_GLPFunctionObject(void *a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __deserialize_GLPFunctionObject_block_invoke;
  v3[3] = &__block_descriptor_tmp_5;
  v3[4] = a1;
  return deserialize_pointer(a1, v3, a2);
}

void *deserialize_GLPValue(void *a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __deserialize_GLPValue_block_invoke;
  v4[3] = &__block_descriptor_tmp_2;
  v4[4] = a1;
  v4[5] = a2;
  return deserialize_pointer(a1, v4, a3);
}

void *deserialize_GLPNameTableEntry(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*(a1 + 240) + 8))(**(a1 + 240), 16, "Deserialized");
  v5 = *(a1 + 260);
  v6 = *(a1 + 256);
  if (v5 >= v6)
  {
    goto LABEL_89;
  }

  v7 = v4;
  v8 = *(a1 + 248);
  v9 = *(v8 + v5);
  v10 = *(v8 + v5);
  v11 = v5 + 1;
  *(a1 + 260) = v5 + 1;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  v12 = (v10 >> 1) & 7;
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 == 6)
      {
        if (v5 + 5 > v6)
        {
          goto LABEL_89;
        }

        LODWORD(v13) = *(v8 + v11);
        *(a1 + 260) = v5 + 5;
        LODWORD(v11) = v5 + 8;
        if (v5 + 8 > v6)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v5 + 9 > v6)
        {
          goto LABEL_89;
        }

        v13 = *(v8 + v11);
        LODWORD(v11) = v5 + 9;
      }
    }

    else
    {
      v14 = v5 + 5;
      if (v12 == 4)
      {
        if (v14 > v6)
        {
          goto LABEL_89;
        }

        LODWORD(v13) = *(v8 + v11);
        *(a1 + 260) = v5 + 5;
        if (v5 + 5 >= v6)
        {
          goto LABEL_89;
        }

        LODWORD(v11) = v5 + 6;
      }

      else
      {
        if (v14 > v6)
        {
          goto LABEL_89;
        }

        LODWORD(v13) = *(v8 + v11);
        v16 = (v5 + 5);
        *(a1 + 260) = v16;
        if (v16 + 2 > v6)
        {
          goto LABEL_89;
        }

        LODWORD(v11) = v5 + 7;
      }
    }
  }

  else if (v12 > 1)
  {
    if (v12 == 2)
    {
      v15 = v5 + 4;
      if (v15 > v6)
      {
        goto LABEL_89;
      }

      LODWORD(v13) = *(v8 + v11) | (*(v8 + v11 + 2) << 16);
      *(a1 + 260) = v15;
      LODWORD(v11) = v15;
      goto LABEL_30;
    }

    if (v5 + 5 > v6)
    {
      goto LABEL_89;
    }

    LODWORD(v13) = *(v8 + v11);
    LODWORD(v11) = v5 + 5;
  }

  else if (v12)
  {
    if (v5 + 3 > v6)
    {
      goto LABEL_89;
    }

    LODWORD(v13) = *(v8 + v11);
    LODWORD(v11) = v5 + 3;
  }

  else
  {
    if (v11 >= v6)
    {
      goto LABEL_89;
    }

    LODWORD(v13) = *(v8 + v11);
    LODWORD(v11) = v5 + 2;
  }

  *(a1 + 260) = v11;
LABEL_30:
  v17 = -256 << (8 * v12);
  if (v9)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  LODWORD(v10) = v13 | v18;
LABEL_34:
  *v4 = v10;
  switch(v10)
  {
    case 0:
    case 12:
      v43 = MEMORY[0x277D85DD0];
      v44 = 0x40000000;
      v19 = __deserialize_GLPVariableObject_block_invoke;
      v20 = &__block_descriptor_tmp_6;
      goto LABEL_50;
    case 1:
    case 2:
    case 3:
      v43 = MEMORY[0x277D85DD0];
      v44 = 0x40000000;
      v19 = __deserialize_GLPInterfaceBlockObject_block_invoke;
      v20 = &__block_descriptor_tmp_9;
      goto LABEL_50;
    case 4:
      v43 = MEMORY[0x277D85DD0];
      v44 = 0x40000000;
      v19 = __deserialize_GLPOverload_block_invoke;
      v20 = &__block_descriptor_tmp_10;
      goto LABEL_50;
    case 5:
      v43 = MEMORY[0x277D85DD0];
      v44 = 0x40000000;
      v19 = __deserialize_GLPFunctionObject_block_invoke;
      v20 = &__block_descriptor_tmp_5;
      goto LABEL_50;
    case 6:
    case 8:
    case 10:
      v43 = MEMORY[0x277D85DD0];
      v44 = 0x40000000;
      v19 = __deserialize_GLPType_block_invoke;
      v20 = &__block_descriptor_tmp_12;
      goto LABEL_50;
    case 7:
      v43 = MEMORY[0x277D85DD0];
      v44 = 0x40000000;
      v19 = __deserialize_GLPSubroutineUniformObject_block_invoke;
      v20 = &__block_descriptor_tmp_11;
      goto LABEL_50;
    case 9:
      v43 = MEMORY[0x277D85DD0];
      v44 = 0x40000000;
      v19 = __deserialize_GLPTwoThings_block_invoke;
      v20 = &__block_descriptor_tmp_12;
      goto LABEL_50;
    case 11:
      v43 = MEMORY[0x277D85DD0];
      v44 = 0x40000000;
      v19 = __deserialize_GLPLayoutObject_block_invoke;
      v20 = &__block_descriptor_tmp_3;
LABEL_50:
      v45 = v19;
      v46 = v20;
      v47 = a1;
      result = deserialize_pointer(a1, &v43, (v4 + 8));
      goto LABEL_51;
    case 13:
      if (v11 >= v6)
      {
        goto LABEL_89;
      }

      v21 = *(v8 + v11);
      v22 = *(v8 + v11);
      v23 = v11 + 1;
      *(a1 + 260) = v23;
      v42 = a2;
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_78;
      }

      v24 = (v22 >> 1) & 7;
      if (((v22 >> 1) & 7) > 3)
      {
        if (((v22 >> 1) & 7) <= 5)
        {
          v27 = v11 + 5;
          if (v24 == 4)
          {
            if (v27 <= v6)
            {
              LODWORD(v8) = *(v8 + v23);
              *(a1 + 260) = v11 + 5;
              if (v11 + 5 < v6)
              {
                v25 = v11 + 6;
                goto LABEL_73;
              }
            }
          }

          else if (v27 <= v6)
          {
            LODWORD(v8) = *(v8 + v23);
            v29 = (v11 + 5);
            *(a1 + 260) = v29;
            if (v29 + 2 <= v6)
            {
              v25 = v11 + 7;
              goto LABEL_73;
            }
          }

LABEL_89:
          glpDeserialError(a1, 1u);
        }

        if (v24 != 6)
        {
          if (v11 + 9 <= v6)
          {
            v8 = *(v8 + v23);
            v25 = v11 + 9;
            goto LABEL_73;
          }

          goto LABEL_89;
        }

        if (v11 + 5 > v6)
        {
          goto LABEL_89;
        }

        LODWORD(v8) = *(v8 + v23);
        *(a1 + 260) = v11 + 5;
        v28 = v11 + 8;
        if (v28 > v6)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (((v22 >> 1) & 7) <= 1)
        {
          if (v24)
          {
            if (v11 + 3 <= v6)
            {
              LODWORD(v8) = *(v8 + v23);
              v25 = v11 + 3;
              goto LABEL_73;
            }
          }

          else if (v23 < v6)
          {
            LODWORD(v8) = *(v8 + v23);
            v25 = v11 + 2;
LABEL_73:
            *(a1 + 260) = v25;
            goto LABEL_74;
          }

          goto LABEL_89;
        }

        if (v24 != 2)
        {
          if (v11 + 5 <= v6)
          {
            LODWORD(v8) = *(v8 + v23);
            v25 = v11 + 5;
            goto LABEL_73;
          }

          goto LABEL_89;
        }

        v28 = v11 + 4;
        if (v28 > v6)
        {
          goto LABEL_89;
        }

        LODWORD(v8) = *(v8 + v23) | (*(v8 + v23 + 2) << 16);
      }

      *(a1 + 260) = v28;
LABEL_74:
      if (v21)
      {
        v30 = -256 << (8 * v24);
      }

      else
      {
        LODWORD(v30) = 0;
      }

      LODWORD(v22) = v8 | v30;
LABEL_78:
      v31 = (*(*(a1 + 240) + 8))(**(a1 + 240), 16, "Deserialized");
      v32 = *(a1 + 240);
      *v31 = v22;
      *(v31 + 4) = 0;
      result = (*(v32 + 8))(*v32, 24 * v22, "Vector Storage (GLPNameTableEntryWithName)");
      *(v31 + 8) = result;
      if (v22 >= 1)
      {
        do
        {
          *&v48 = 0;
          *(&v48 + 1) = deserialize_GLPString(a1);
          v49 = v33;
          deserialize_GLPNameTableEntry(a1, &v48);
          v34 = *v31;
          v35 = *(v31 + 4);
          if ((v35 + 1) <= *v31)
          {
            v39 = *(v31 + 8);
            v40 = *(v31 + 4);
          }

          else
          {
            if (v34 <= 1)
            {
              v34 = 1;
            }

            v36 = 2 * v34;
            if (v36 <= v35 + 1)
            {
              v37 = v35 + 1;
            }

            else
            {
              v37 = v36;
            }

            v38 = *(a1 + 240);
            v39 = (v38[1])(*v38, 24 * v37, "Vector Storage (GLPNameTableEntryWithName, growth)");
            memcpy(v39, *(v31 + 8), 24 * *(v31 + 4));
            (v38[3])(*v38, *(v31 + 8));
            *v31 = v37;
            *(v31 + 8) = v39;
            v40 = *(v31 + 4);
          }

          result = memmove(&v39[24 * v35 + 24], &v39[24 * v35], 24 * (v40 - v35));
          v41 = *(v31 + 8) + 24 * v35;
          *(v41 + 16) = v49;
          *v41 = v48;
          ++*(v31 + 4);
          LODWORD(v22) = v22 - 1;
        }

        while (v22);
      }

      *(v7 + 8) = v31;
      a2 = v42;
LABEL_51:
      *a2 = v7;
      return result;
    default:
      glpDeserialError(a1, 0xAu);
  }
}

void *deserialize_GLPVariableObject(void *a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __deserialize_GLPVariableObject_block_invoke;
  v3[3] = &__block_descriptor_tmp_6;
  v3[4] = a1;
  return deserialize_pointer(a1, v3, a2);
}

void *deserialize_GLPInterfaceBlockObject(void *a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __deserialize_GLPInterfaceBlockObject_block_invoke;
  v3[3] = &__block_descriptor_tmp_9;
  v3[4] = a1;
  return deserialize_pointer(a1, v3, a2);
}

void *deserialize_GLPSubroutineUniformObject(void *a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __deserialize_GLPSubroutineUniformObject_block_invoke;
  v3[3] = &__block_descriptor_tmp_11;
  v3[4] = a1;
  return deserialize_pointer(a1, v3, a2);
}

uint64_t glpDeserializeAST(uint64_t a1, uint64_t a2, int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  memset(v32, 0, sizeof(v32));
  glpInitPoolAllocator(0x20000, 0x20000, v32);
  v41 = 0;
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  glpInitDeserialContext(v39, v32, a1, a2, a3);
  if (!_setjmp(v39))
  {
    v7 = HIDWORD(v41);
    if (HIDWORD(v41) >= v41)
    {
      goto LABEL_43;
    }

    v8 = *(*(&v40 + 1) + HIDWORD(v41));
    v9 = *(*(&v40 + 1) + HIDWORD(v41));
    v10 = HIDWORD(v41) + 1;
    ++HIDWORD(v41);
    if ((v8 & 0x80000000) == 0)
    {
      v11 = v9;
      if (!v9)
      {
LABEL_41:
        v31 = 0;
        v33 = MEMORY[0x277D85DD0];
        v34 = 0x40000000;
        v35 = __deserialize_GLPASTNode_block_invoke;
        v36 = &__block_descriptor_tmp_16_0;
        v37 = v39;
        deserialize_pointer(v39, &v33, &v31);
        glpDestroyDeserialContext(v39);
        glpDestroyPoolAllocator(v32);
        result = v31;
        goto LABEL_42;
      }

LABEL_39:
      v26 = v11;
      v27 = MEMORY[0x277D85DD0];
      do
      {
        v28 = v26;
        v31 = 0;
        v33 = v27;
        v34 = 0x40000000;
        v35 = __deserialize_GLPType_block_invoke;
        v36 = &__block_descriptor_tmp_12;
        v37 = v39;
        deserialize_pointer(v39, &v33, &v31);
        v30 = 0;
        v33 = MEMORY[0x277D85DD0];
        v34 = 0x40000000;
        v35 = __deserialize_GLPValue_block_invoke;
        v36 = &__block_descriptor_tmp_2;
        v37 = v39;
        v38 = v31;
        deserialize_pointer(v39, &v33, &v30);
        v26 = v28 - 1;
      }

      while (v28 != 1);
      goto LABEL_41;
    }

    v12 = v7;
    v13 = v7 + 1;
    v14 = (v9 >> 1) & 7;
    if (v14 > 3)
    {
      if (v14 <= 5)
      {
        v17 = v7 + 5;
        if (v14 == 4)
        {
          if (v17 <= v41)
          {
            v18 = *(*(&v40 + 1) + v13);
            HIDWORD(v41) = v7 + 5;
            if (v7 + 5 < v41)
            {
              v15 = v18;
              v16 = v7 + 6;
              goto LABEL_31;
            }
          }
        }

        else if (v17 <= v41)
        {
          v23 = *(*(&v40 + 1) + v13);
          HIDWORD(v41) = v7 + 5;
          if ((v7 + 5) + 2 <= v41)
          {
            v15 = v23;
            v16 = v7 + 7;
            goto LABEL_31;
          }
        }

LABEL_43:
        glpDeserialError(v39, 1u);
      }

      if (v14 == 6)
      {
        if (v7 + 5 <= v41)
        {
          v21 = v7;
          v22 = *(*(&v40 + 1) + v13);
          HIDWORD(v41) = v12 + 5;
          if (v21 + 8 <= v41)
          {
            HIDWORD(v41) = v21 + 8;
            goto LABEL_35;
          }
        }

        goto LABEL_43;
      }

      if (v7 + 9 > v41)
      {
        goto LABEL_43;
      }

      v20 = *(*(&v40 + 1) + v10);
      v19 = v7 + 9;
    }

    else
    {
      if (v14 <= 1)
      {
        if (v14)
        {
          if (v7 + 3 <= v41)
          {
            v15 = *(*(&v40 + 1) + v10);
            v16 = v7 + 3;
            goto LABEL_31;
          }
        }

        else if (v10 < v41)
        {
          v15 = *(*(&v40 + 1) + v10);
          v16 = v7 + 2;
LABEL_31:
          HIDWORD(v41) = v16;
          v22 = v15;
          goto LABEL_35;
        }

        goto LABEL_43;
      }

      if (v14 != 2)
      {
        if (v10 + 4 <= v41)
        {
          v15 = *(*(&v40 + 1) + v10);
          v16 = v7 + 5;
          goto LABEL_31;
        }

        goto LABEL_43;
      }

      v19 = v7 + 4;
      if (v19 > v41)
      {
        goto LABEL_43;
      }

      LODWORD(v20) = *(*(&v40 + 1) + v10) | (*(*(&v40 + 1) + v10 + 2) << 16);
    }

    HIDWORD(v41) = v19;
    v22 = v20;
LABEL_35:
    v24 = -256 << (8 * v14);
    if (v8)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v11 = v22 | v25;
    if (!(v22 | v25))
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  glpDestroyDeserialContext(v39);
  glpDestroyPoolAllocator(v32);
  result = 0;
LABEL_42:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL glpDeserializeNames(uint64_t a1, unsigned int *a2, int a3, uint64_t *a4)
{
  v97 = *MEMORY[0x277D85DE8];
  memset(v87, 0, sizeof(v87));
  glpInitPoolAllocator(0x20000, 0x20000, v87);
  v96 = 0;
  v95 = 0u;
  memset(v94, 0, sizeof(v94));
  v8 = *a2;
  glpInitDeserialContext(v94, v87, a1, (a2 + 1), a3);
  if (!_setjmp(v94))
  {
    v10 = HIDWORD(v96);
    if (HIDWORD(v96) >= v96)
    {
      goto LABEL_124;
    }

    v11 = *(*(&v95 + 1) + HIDWORD(v96));
    v12 = *(*(&v95 + 1) + HIDWORD(v96));
    v13 = HIDWORD(v96) + 1;
    v14 = ++HIDWORD(v96);
    if ((v11 & 0x80000000) == 0)
    {
      v15 = v12;
      if (v12)
      {
LABEL_6:
        v84 = a2;
        v16 = MEMORY[0x277D85DD0];
        v17 = v15;
        do
        {
          v86 = 0;
          v88 = v16;
          v89 = 0x40000000;
          v90 = __deserialize_GLPType_block_invoke;
          v91 = &__block_descriptor_tmp_12;
          v92 = v94;
          deserialize_pointer(v94, &v88, &v86);
          v85 = 0;
          v88 = MEMORY[0x277D85DD0];
          v89 = 0x40000000;
          v90 = __deserialize_GLPValue_block_invoke;
          v91 = &__block_descriptor_tmp_2;
          v92 = v94;
          v93 = v86;
          deserialize_pointer(v94, &v88, &v85);
          --v17;
        }

        while (v17);
        v18 = HIDWORD(v96);
        v19 = v96;
        a2 = v84;
        v8 = v8;
LABEL_43:
        if (v18 >= v19)
        {
          goto LABEL_124;
        }

        v35 = *(*(&v95 + 1) + v18);
        HIDWORD(v96) = v18 + 1;
        if (!v35)
        {
          v47 = 0;
          goto LABEL_122;
        }

        v36 = (*(v95 + 8))(*v95, 56, "Deserialized");
        v37 = HIDWORD(v96);
        v38 = v96;
        if (HIDWORD(v96) >= v96)
        {
          goto LABEL_124;
        }

        v39 = *(&v95 + 1);
        v40 = *(&v95 + 1);
        v41 = *(*(&v95 + 1) + HIDWORD(v96));
        v42 = *(*(&v95 + 1) + HIDWORD(v96));
        v43 = HIDWORD(v96) + 1;
        v44 = ++HIDWORD(v96);
        if ((v41 & 0x80000000) == 0)
        {
          v45 = v37 + 1;
          v46 = v42;
          goto LABEL_82;
        }

        v48 = v37;
        v49 = v37 + 1;
        v50 = (v42 >> 1) & 7;
        if (v50 > 3)
        {
          if (v50 <= 5)
          {
            v53 = v37 + 5;
            if (v50 == 4)
            {
              if (v53 > v96)
              {
                goto LABEL_124;
              }

              v54 = v37;
              v55 = *(*(&v95 + 1) + v49);
              HIDWORD(v96) = v54 + 5;
              if (v54 + 5 >= v96)
              {
                goto LABEL_124;
              }

              v56 = v55;
              v57 = v48 + 6;
            }

            else
            {
              if (v53 > v96)
              {
                goto LABEL_124;
              }

              v60 = v37;
              v61 = *(*(&v95 + 1) + v49);
              HIDWORD(v96) = v60 + 5;
              if ((v60 + 5) + 2 > v96)
              {
                goto LABEL_124;
              }

              v56 = v61;
              v57 = v48 + 7;
            }

            goto LABEL_71;
          }

          if (v50 == 6)
          {
            if (v37 + 5 > v96)
            {
              goto LABEL_124;
            }

            v51 = *(*(&v95 + 1) + v49);
            HIDWORD(v96) = v37 + 5;
            v52 = v37 + 8;
            if (v52 > v96)
            {
              goto LABEL_124;
            }

            goto LABEL_74;
          }

          if (v43 + 8 > v96)
          {
            goto LABEL_124;
          }

          v59 = *(*(&v95 + 1) + v43);
          v58 = v48 + 9;
        }

        else
        {
          if (v50 <= 1)
          {
            if (!v50)
            {
              if (v44 >= v96)
              {
                goto LABEL_124;
              }

              v51 = *(*(&v95 + 1) + v43);
              v52 = v37 + 2;
LABEL_74:
              HIDWORD(v96) = v52;
              v62 = v52;
              goto LABEL_78;
            }

            if (v43 + 2 > v96)
            {
              goto LABEL_124;
            }

            v56 = *(*(&v95 + 1) + v43);
            v57 = v37 + 3;
LABEL_71:
            HIDWORD(v96) = v57;
            v62 = v57;
            v51 = v56;
LABEL_78:
            v63 = -256 << (8 * v50);
            if (v41)
            {
              v64 = v63;
            }

            else
            {
              v64 = 0;
            }

            v46 = v51 | v64;
            v45 = v62;
LABEL_82:
            *(v36 + 32) = v46;
            if (v45 >= v38)
            {
              goto LABEL_124;
            }

            v47 = v36;
            v65 = *(v40 + v45);
            v66 = *(v40 + v45);
            v67 = v45 + 1;
            HIDWORD(v96) = v45 + 1;
            if ((v65 & 0x80000000) == 0)
            {
              v68 = v66;
              goto LABEL_115;
            }

            v69 = (v66 >> 1) & 7;
            if (v69 > 3)
            {
              if (v69 > 5)
              {
                if (v69 == 6)
                {
                  if (v45 + 5 > v38)
                  {
                    goto LABEL_124;
                  }

                  v73 = v38;
                  LODWORD(v40) = *(v40 + v67);
                  HIDWORD(v96) = v45 + 5;
                  v70 = v45 + 8;
                  if (v45 + 8 > v73)
                  {
                    goto LABEL_124;
                  }
                }

                else
                {
                  if (v45 + 9 > v38)
                  {
                    goto LABEL_124;
                  }

                  v40 = *(v40 + v67);
                  v70 = v45 + 9;
                }
              }

              else
              {
                v71 = v45 + 5;
                if (v69 == 4)
                {
                  if (v71 > v38)
                  {
                    goto LABEL_124;
                  }

                  LODWORD(v40) = *(v40 + v67);
                  HIDWORD(v96) = v45 + 5;
                  if (v45 + 5 >= v38)
                  {
                    goto LABEL_124;
                  }

                  v70 = v45 + 6;
                }

                else
                {
                  if (v71 > v38)
                  {
                    goto LABEL_124;
                  }

                  LODWORD(v40) = *(v40 + v67);
                  HIDWORD(v96) = v45 + 5;
                  if ((v45 + 5) + 2 > v38)
                  {
                    goto LABEL_124;
                  }

                  v70 = v45 + 7;
                }
              }
            }

            else if (v69 > 1)
            {
              if (v69 == 2)
              {
                if (v45 + 4 > v38)
                {
                  goto LABEL_124;
                }

                v72 = *(v39 + v67) | (*(v39 + v67 + 2) << 16);
                HIDWORD(v96) = v45 + 4;
                LODWORD(v40) = v72;
                goto LABEL_112;
              }

              if (v45 + 5 > v38)
              {
                goto LABEL_124;
              }

              LODWORD(v40) = *(v40 + v67);
              v70 = v45 + 5;
            }

            else if (v69)
            {
              if (v45 + 3 > v38)
              {
                goto LABEL_124;
              }

              LODWORD(v40) = *(v40 + v67);
              v70 = v45 + 3;
            }

            else
            {
              if (v67 >= v38)
              {
                goto LABEL_124;
              }

              LODWORD(v40) = *(v40 + v67);
              v70 = v45 + 2;
            }

            HIDWORD(v96) = v70;
LABEL_112:
            v74 = 0;
            if (v65)
            {
              v74 = -256 << (8 * v69);
            }

            v68 = v40 | v74;
LABEL_115:
            *(v47 + 36) = v68;
            *(v47 + 40) = (*(v95 + 8))(*v95, 32 * v46, "Deserialized");
            *(v47 + 48) = 0;
            *v47 = 0u;
            *(v47 + 16) = 0u;
            v75 = *(v47 + 32);
            if (v75)
            {
              v76 = a2 + v8;
              v77 = 0;
              v78 = 0;
              while (HIDWORD(v96) + 4 <= v96)
              {
                v79 = *(*(&v95 + 1) + HIDWORD(v96));
                HIDWORD(v96) += 4;
                v80 = *(v47 + 40);
                if (v79 == -1)
                {
                  *(v80 + v78) = 0;
                }

                else
                {
                  v81 = v80 + v78;
                  *(v80 + v78) = &v76[v79];
                  *(v81 + 8) = deserialize_GLPString(v94);
                  *(v81 + 16) = v82;
                  v75 = *(v47 + 32);
                }

                ++v77;
                v78 += 32;
                if (v77 >= v75)
                {
                  goto LABEL_122;
                }
              }

LABEL_124:
              glpDeserialError(v94, 1u);
            }

LABEL_122:
            *a4 = v47;
            glpDestroyDeserialContext(v94);
            glpDestroyPoolAllocator(v87);
            result = *a4 != 0;
            goto LABEL_123;
          }

          if (v50 != 2)
          {
            if (v37 + 5 > v96)
            {
              goto LABEL_124;
            }

            v51 = *(*(&v95 + 1) + v43);
            v52 = v37 + 5;
            goto LABEL_74;
          }

          v58 = v37 + 4;
          if (v37 + 4 > v96)
          {
            goto LABEL_124;
          }

          LODWORD(v59) = *(*(&v95 + 1) + v43) | (*(*(&v95 + 1) + v43 + 2) << 16);
        }

        HIDWORD(v96) = v58;
        v62 = v58;
        v51 = v59;
        goto LABEL_78;
      }

LABEL_42:
      v19 = v96;
      v18 = v14;
      goto LABEL_43;
    }

    v20 = v10;
    v21 = v10 + 1;
    v22 = (v12 >> 1) & 7;
    if (v22 > 3)
    {
      if (v22 <= 5)
      {
        v25 = v10 + 5;
        if (v22 == 4)
        {
          if (v25 > v96)
          {
            goto LABEL_124;
          }

          v26 = *(*(&v95 + 1) + v21);
          HIDWORD(v96) = v10 + 5;
          if (v10 + 5 >= v96)
          {
            goto LABEL_124;
          }

          v27 = v26;
          v28 = v10 + 6;
        }

        else
        {
          if (v25 > v96)
          {
            goto LABEL_124;
          }

          v32 = *(*(&v95 + 1) + v21);
          HIDWORD(v96) = v10 + 5;
          if ((v10 + 5) + 2 > v96)
          {
            goto LABEL_124;
          }

          v27 = v32;
          v28 = v10 + 7;
        }

        goto LABEL_31;
      }

      if (v22 == 6)
      {
        if (v10 + 5 > v96)
        {
          goto LABEL_124;
        }

        v31 = v10;
        v23 = *(*(&v95 + 1) + v21);
        HIDWORD(v96) = v20 + 5;
        v24 = v31 + 8;
        if (v31 + 8 > v96)
        {
          goto LABEL_124;
        }

        goto LABEL_34;
      }

      if (v10 + 9 > v96)
      {
        goto LABEL_124;
      }

      v30 = *(*(&v95 + 1) + v13);
      v29 = v10 + 9;
    }

    else
    {
      if (v22 <= 1)
      {
        if (!v22)
        {
          if (v14 >= v96)
          {
            goto LABEL_124;
          }

          v23 = *(*(&v95 + 1) + v13);
          v24 = v20 + 2;
LABEL_34:
          HIDWORD(v96) = v24;
          v14 = v24;
          goto LABEL_38;
        }

        if (v10 + 3 > v96)
        {
          goto LABEL_124;
        }

        v27 = *(*(&v95 + 1) + v13);
        v28 = v10 + 3;
LABEL_31:
        HIDWORD(v96) = v28;
        v14 = v28;
        v23 = v27;
        goto LABEL_38;
      }

      if (v22 != 2)
      {
        if (v13 + 4 > v96)
        {
          goto LABEL_124;
        }

        v23 = *(*(&v95 + 1) + v13);
        v24 = v20 + 5;
        goto LABEL_34;
      }

      v29 = v10 + 4;
      if (v29 > v96)
      {
        goto LABEL_124;
      }

      LODWORD(v30) = *(*(&v95 + 1) + v13) | (*(*(&v95 + 1) + v13 + 2) << 16);
    }

    HIDWORD(v96) = v29;
    v14 = v29;
    v23 = v30;
LABEL_38:
    v33 = -256 << (8 * v22);
    if (v11)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v15 = v23 | v34;
    if (v23 | v34)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

  glpDestroyDeserialContext(v94);
  glpDestroyPoolAllocator(v87);
  result = 0;
LABEL_123:
  v83 = *MEMORY[0x277D85DE8];
  return result;
}

void *deserializeTypeConversionFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 0x40000000;
  v22[2] = __deserialize_GLPType_block_invoke;
  v22[3] = &__block_descriptor_tmp_12;
  v22[4] = a1;
  result = deserialize_pointer(a1, v22, (a2 + 64));
  v5 = *(a1 + 260);
  v6 = *(a1 + 256);
  if (v5 >= v6)
  {
    goto LABEL_36;
  }

  v7 = *(a1 + 248);
  v8 = *(v7 + v5);
  v9 = *(v7 + v5);
  v10 = v5 + 1;
  *(a1 + 260) = v5 + 1;
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  v11 = (v9 >> 1) & 7;
  if (v11 <= 3)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v13 = v5 + 4;
        if (v13 <= v6)
        {
          v12 = *(v7 + v10) | (*(v7 + v10 + 2) << 16);
          goto LABEL_30;
        }
      }

      else if (v5 + 5 <= v6)
      {
        v12 = *(v7 + v10);
        v13 = v5 + 5;
        goto LABEL_30;
      }
    }

    else if (v11)
    {
      if (v5 + 3 <= v6)
      {
        v12 = *(v7 + v10);
        v13 = v5 + 3;
        goto LABEL_30;
      }
    }

    else if (v10 < v6)
    {
      v12 = *(v7 + v10);
      v13 = v5 + 2;
LABEL_30:
      *(a1 + 260) = v13;
      goto LABEL_31;
    }

LABEL_36:
    glpDeserialError(a1, 1u);
  }

  if (v11 > 5)
  {
    if (v11 != 6)
    {
      if (v5 + 9 <= v6)
      {
        v12 = *(v7 + v10);
        v13 = v5 + 9;
        goto LABEL_30;
      }

      goto LABEL_36;
    }

    if (v5 + 5 > v6)
    {
      goto LABEL_36;
    }

    v15 = *(v7 + v10);
    v18 = v5 + 5;
    *(a1 + 260) = v5 + 5;
    v17 = v5 + 8;
    if (v17 > v6)
    {
      goto LABEL_36;
    }

    v16 = *(v7 + v18) | (*(v7 + v18 + 2) << 16);
  }

  else
  {
    v14 = v5 + 5;
    if (v11 == 4)
    {
      if (v14 > v6)
      {
        goto LABEL_36;
      }

      v15 = *(v7 + v10);
      *(a1 + 260) = v5 + 5;
      if (v5 + 5 >= v6)
      {
        goto LABEL_36;
      }

      v16 = *(v7 + (v5 + 5));
      v17 = v5 + 6;
    }

    else
    {
      if (v14 > v6)
      {
        goto LABEL_36;
      }

      v15 = *(v7 + v10);
      v19 = (v5 + 5);
      *(a1 + 260) = v19;
      if (v19 + 2 > v6)
      {
        goto LABEL_36;
      }

      v16 = *(v7 + v19);
      v17 = v5 + 7;
    }
  }

  *(a1 + 260) = v17;
  v12 = v15 | (v16 << 32);
LABEL_31:
  v20 = -256 << (8 * v11);
  if (v8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v9 = v12 | v21;
LABEL_35:
  *(a2 + 72) = v9;
  return result;
}

uint64_t deserializeVariableIdentifierFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  result = deserialize_GLPString(a1);
  *(a2 + 64) = result;
  *(a2 + 72) = v5;
  return result;
}

uint64_t deserializeTypeIdentifierFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  result = deserialize_GLPString(a1);
  *(a2 + 64) = result;
  *(a2 + 72) = v5;
  return result;
}

void *deserializeConstantFields(void *a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v6 = MEMORY[0x277D85DD0];
  v7 = 0x40000000;
  v8 = __deserialize_GLPType_block_invoke;
  v9 = &__block_descriptor_tmp_12;
  v10 = a1;
  deserialize_pointer(a1, &v6, (a2 + 64));
  Type = glpConstantNodeGetType(a2);
  v6 = MEMORY[0x277D85DD0];
  v7 = 0x40000000;
  v8 = __deserialize_GLPValue_block_invoke;
  v9 = &__block_descriptor_tmp_2;
  v10 = a1;
  v11 = Type;
  return deserialize_pointer(a1, &v6, (a2 + 72));
}

uint64_t deserializeFieldAccessFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  result = deserialize_GLPString(a1);
  *(a2 + 64) = result;
  *(a2 + 72) = v5;
  return result;
}

void *deserializeFunctionCallFields(void *a1, void *a2)
{
  deserializeCallFields(a1, a2);
  a2[9] = deserialize_GLPString(a1);
  a2[10] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __deserialize_GLPFunctionObject_block_invoke;
  v6[3] = &__block_descriptor_tmp_5;
  v6[4] = a1;
  return deserialize_pointer(a1, v6, a2 + 11);
}

uint64_t deserializeSubroutineArrayCallFields(uint64_t a1, uint64_t a2)
{
  deserializeCallFields(a1, a2);
  result = deserialize_GLPString(a1);
  *(a2 + 72) = result;
  *(a2 + 80) = v5;
  return result;
}

uint64_t deserializeMethodCallFields(uint64_t a1, uint64_t a2)
{
  deserializeCallFields(a1, a2);
  result = deserialize_GLPString(a1);
  *(a2 + 72) = result;
  *(a2 + 80) = v5;
  return result;
}

void deserializeEqualFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  if (v4 >= *(a1 + 256))
  {
    glpDeserialError(a1, 1u);
  }

  v5 = *(*(a1 + 248) + v4);
  *(a1 + 260) = v4 + 1;
  *(a2 + 64) = v5;
}

void deserializeNotEqualFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  if (v4 >= *(a1 + 256))
  {
    glpDeserialError(a1, 1u);
  }

  v5 = *(*(a1 + 248) + v4);
  *(a1 + 260) = v4 + 1;
  *(a2 + 64) = v5;
}

void deserializeAssignFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  if (v4 >= *(a1 + 256))
  {
    glpDeserialError(a1, 1u);
  }

  v5 = *(*(a1 + 248) + v4);
  *(a1 + 260) = v4 + 1;
  *(a2 + 64) = v5;
}

void deserializeCommaExprFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  if (v4 >= *(a1 + 256))
  {
    goto LABEL_35;
  }

  v5 = *(*(a1 + 248) + v4);
  *(a1 + 260) = v4 + 1;
  *(a2 + 64) = v5;
  v6 = *(a1 + 260);
  v7 = *(a1 + 256);
  if (v6 >= v7)
  {
    goto LABEL_35;
  }

  v8 = *(a1 + 248);
  v9 = *(v8 + v6);
  v10 = *(v8 + v6);
  v11 = v6 + 1;
  *(a1 + 260) = v6 + 1;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

  v12 = (v10 >> 1) & 7;
  if (v12 <= 3)
  {
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = v6 + 4;
        if (v13 <= v7)
        {
          LODWORD(v8) = *(v8 + v11) | (*(v8 + v11 + 2) << 16);
          goto LABEL_30;
        }
      }

      else if (v6 + 5 <= v7)
      {
        LODWORD(v8) = *(v8 + v11);
        v13 = v6 + 5;
        goto LABEL_30;
      }
    }

    else if (v12)
    {
      if (v6 + 3 <= v7)
      {
        LODWORD(v8) = *(v8 + v11);
        v13 = v6 + 3;
        goto LABEL_30;
      }
    }

    else if (v11 < v7)
    {
      LODWORD(v8) = *(v8 + v11);
      v13 = v6 + 2;
      goto LABEL_30;
    }

LABEL_35:
    glpDeserialError(a1, 1u);
  }

  if (v12 <= 5)
  {
    v14 = v6 + 5;
    if (v12 == 4)
    {
      if (v14 <= v7)
      {
        LODWORD(v8) = *(v8 + v11);
        *(a1 + 260) = v6 + 5;
        if (v6 + 5 < v7)
        {
          v13 = v6 + 6;
          goto LABEL_30;
        }
      }
    }

    else if (v14 <= v7)
    {
      LODWORD(v8) = *(v8 + v11);
      v15 = (v6 + 5);
      *(a1 + 260) = v15;
      if (v15 + 2 <= v7)
      {
        v13 = v6 + 7;
        goto LABEL_30;
      }
    }

    goto LABEL_35;
  }

  if (v12 != 6)
  {
    if (v6 + 9 <= v7)
    {
      v8 = *(v8 + v11);
      v13 = v6 + 9;
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  if (v6 + 5 > v7)
  {
    goto LABEL_35;
  }

  LODWORD(v8) = *(v8 + v11);
  *(a1 + 260) = v6 + 5;
  v13 = v6 + 8;
  if (v13 > v7)
  {
    goto LABEL_35;
  }

LABEL_30:
  *(a1 + 260) = v13;
  v16 = -256 << (8 * v12);
  if (v9)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  LODWORD(v10) = v8 | v17;
LABEL_34:
  *(a2 + 68) = v10;
}

void *deserializeParameterDeclarationFields(void *a1, void *a2)
{
  deserializeASTFields(a1, a2);
  a2[8] = deserialize_GLPString(a1);
  a2[9] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = __deserialize_GLPVariableObject_block_invoke;
  v6[3] = &__block_descriptor_tmp_6;
  v6[4] = a1;
  return deserialize_pointer(a1, v6, a2 + 10);
}

void *deserializeFunctionPrototypeFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  *(a2 + 64) = deserialize_GLPString(a1);
  *(a2 + 72) = v4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 0x40000000;
  v18[2] = __deserialize_GLPFunctionObject_block_invoke;
  v18[3] = &__block_descriptor_tmp_5;
  v18[4] = a1;
  result = deserialize_pointer(a1, v18, (a2 + 80));
  v6 = *(a1 + 260);
  v7 = *(a1 + 256);
  if (v6 >= v7)
  {
    goto LABEL_34;
  }

  v8 = *(a1 + 248);
  v9 = *(v8 + v6);
  v10 = *(v8 + v6);
  v11 = v6 + 1;
  *(a1 + 260) = v6 + 1;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v12 = (v10 >> 1) & 7;
  if (v12 <= 3)
  {
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = v6 + 4;
        if (v13 <= v7)
        {
          LODWORD(v8) = *(v8 + v11) | (*(v8 + v11 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v6 + 5 <= v7)
      {
        LODWORD(v8) = *(v8 + v11);
        v13 = v6 + 5;
        goto LABEL_29;
      }
    }

    else if (v12)
    {
      if (v6 + 3 <= v7)
      {
        LODWORD(v8) = *(v8 + v11);
        v13 = v6 + 3;
        goto LABEL_29;
      }
    }

    else if (v11 < v7)
    {
      LODWORD(v8) = *(v8 + v11);
      v13 = v6 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v12 <= 5)
  {
    v14 = v6 + 5;
    if (v12 == 4)
    {
      if (v14 <= v7)
      {
        LODWORD(v8) = *(v8 + v11);
        *(a1 + 260) = v6 + 5;
        if (v6 + 5 < v7)
        {
          v13 = v6 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v14 <= v7)
    {
      LODWORD(v8) = *(v8 + v11);
      v15 = (v6 + 5);
      *(a1 + 260) = v15;
      if (v15 + 2 <= v7)
      {
        v13 = v6 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v12 != 6)
  {
    if (v6 + 9 <= v7)
    {
      v8 = *(v8 + v11);
      v13 = v6 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v6 + 5 > v7)
  {
    goto LABEL_34;
  }

  LODWORD(v8) = *(v8 + v11);
  *(a1 + 260) = v6 + 5;
  v13 = v6 + 8;
  if (v13 > v7)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v13;
  v16 = -256 << (8 * v12);
  if (v9)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  LODWORD(v10) = v8 | v17;
LABEL_33:
  *(a2 + 88) = v10;
  return result;
}

void *deserializeVariableDeclarationFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  *(a2 + 64) = deserialize_GLPString(a1);
  *(a2 + 72) = v4;
  v5 = *(a1 + 260);
  if (v5 >= *(a1 + 256))
  {
    glpDeserialError(a1, 1u);
  }

  v6 = *(*(a1 + 248) + v5);
  *(a1 + 260) = v5 + 1;
  *(a2 + 80) = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = __deserialize_GLPVariableObject_block_invoke;
  v8[3] = &__block_descriptor_tmp_6;
  v8[4] = a1;
  return deserialize_pointer(a1, v8, (a2 + 88));
}

void deserializeVariableDeclarationGroupFields(uint64_t a1, uint64_t a2)
{
  deserializeASTFields(a1, a2);
  v4 = *(a1 + 260);
  v5 = *(a1 + 256);
  if (v4 >= v5)
  {
    goto LABEL_34;
  }

  v6 = *(a1 + 248);
  v7 = *(v6 + v4);
  v8 = *(v6 + v4);
  v9 = v4 + 1;
  *(a1 + 260) = v4 + 1;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v10 = (v8 >> 1) & 7;
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = v4 + 4;
        if (v11 <= v5)
        {
          LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v10)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v9 < v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v11 = v4 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1, 1u);
  }

  if (v10 <= 5)
  {
    v12 = v4 + 5;
    if (v10 == 4)
    {
      if (v12 <= v5)
      {
        LODWORD(v6) = *(v6 + v9);
        *(a1 + 260) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v11 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v12 <= v5)
    {
      LODWORD(v6) = *(v6 + v9);
      v13 = (v4 + 5);
      *(a1 + 260) = v13;
      if (v13 + 2 <= v5)
      {
        v11 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v10 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v6 = *(v6 + v9);
      v11 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_34;
  }

  LODWORD(v6) = *(v6 + v9);
  *(a1 + 260) = v4 + 5;
  v11 = v4 + 8;
  if (v11 > v5)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 260) = v11;
  v14 = -256 << (8 * v10);
  if (v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  LODWORD(v8) = v6 | v15;
LABEL_33:
  *(a2 + 64) = v8;
}