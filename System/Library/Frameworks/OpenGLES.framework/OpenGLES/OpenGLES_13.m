uint64_t componentCountForSet(char a1)
{
  if ((a1 & 8) != 0)
  {
    return 4;
  }

  if ((a1 & 4) != 0)
  {
    return 3;
  }

  if ((a1 & 2) != 0)
  {
    return 2;
  }

  if ((a1 & 1) == 0)
  {
    abort();
  }

  return 1;
}

void *propagateCopyBindings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ElementType = *a2;
  if (glpTypeGetKind(*a2) == 3)
  {
    ElementType = glpBankTypeGetElementType(ElementType);
  }

  v7 = glpABIGetTypeSize(0, ElementType, 0);
  Size = glpTypeSizeGetSize(v7);
  v9 = Size;
  v10 = glpLinkerPoolAlloc(a1);
  v11 = glpLinkerPoolAlloc(a1);
  glpTypeGetAppleVec4Types(ElementType, v10, 1, 0, 0, v11, 0, 0, 0);
  v12 = glpLinkerPoolAlloc(a1);
  *v12 = a2;
  v12[1] = 0;
  *(v12 + 2) = 0;
  if (Size)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      Equals = BitSetGetEquals(*(a2 + 120), v13);
      v16 = BitSetGetEquals(*(*a3 + 120), v13);
      if (Equals)
      {
        if (glpPrimitiveTypeGetScalarCount(v10[v13]))
        {
          v17 = 0;
          do
          {
            v18 = *(v12 + 2);
            v12[v18 + 2] = *(a3 + 16 + 8 * (v14 + v17++));
            *(v12 + 2) = v18 + 1;
          }

          while (v17 < glpPrimitiveTypeGetScalarCount(v10[v13]));
          v14 += v17;
        }
      }

      else if (v16)
      {
        v14 += glpPrimitiveTypeGetScalarCount(v10[v13]);
      }

      ++v13;
    }

    while (v13 != v9);
  }

  return v12;
}

uint64_t compareVariableObjectsLocationFirstNameSecond(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 8);
  if (v4)
  {
    v5 = glpLayoutObjectFind(v4, 26) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v3[1];
  if (v6)
  {
    if (glpLayoutObjectFind(v6, 26))
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  result = (v7 + v5);
  if (!(v7 + v5))
  {
    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    v11 = v3[2];
    v12 = v3[3];

    return glpStringsCompare(v9, v10, v11, v12);
  }

  return result;
}

uint64_t outputForInput(uint64_t a1, _BYTE *a2, size_t __n)
{
  v3 = __n;
  v15[1] = *MEMORY[0x277D85DE8];
  if ((__n & 0xFFFFFFFC) != 0 && *a2 == 36 && a2[1] == 105 && a2[2] == 98 && a2[3] == 36)
  {
    v6 = __n;
    MEMORY[0x28223BE20](a1);
    v7 = v15 - ((v3 + 15) & 0x1FFFFFFF0);
    bzero(v7, v3);
    memcpy(v15 - ((v6 + 15) & 0x1FFFFFFF0), a2, v3);
    v7[4] = 111;
    if (v3)
    {
      v8 = v3 >> 5;
      v9 = ~(v3 >> 5);
      LODWORD(v10) = v3;
      do
      {
        v10 = (32 * v10 + (v10 >> 2) + v7[v3 - 1]) ^ v10;
        v3 += v9;
      }

      while (v3 > v8);
      v11 = v10 << 32;
    }

    else
    {
      v11 = 0;
    }

    result = glpStringHashGet(a1, v15 - ((v6 + 15) & 0x1FFFFFFF0), v11 | v6);
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];

    return glpStringHashGet(a1, a2, __n);
  }

  return result;
}

uint64_t topLevelLookUpObjectTypeFromStringHash(uint64_t a1, const char *a2, size_t a3)
{
  v3 = glpStringHashGet(a1, a2, a3);
  if (v3)
  {
    return *v3;
  }

  else
  {
    return -1;
  }
}

uint64_t glpMakeLog(void *a1)
{
  v2 = (a1[1])(*a1, 48, "Log");
  *v2 = a1;
  *(v2 + 8) = 0;
  *(v2 + 16) = glpMakeStringBuffer(a1);
  *(v2 + 24) = 0;
  return v2;
}

uint64_t glpDestroyLog(uint64_t ***a1)
{
  glpDestroyStringBuffer(a1[2]);
  v2 = (*a1)[3];
  v3 = **a1;

  return (v2)(v3, a1);
}

uint64_t **glpLogMessage(uint64_t **result, unsigned int a2, uint64_t *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = result;
  if (*(result + 6))
  {
    ++*(result + a2 + 7);
  }

  else
  {
    if (!a2)
    {
      *(result + 8) = 1;
    }

    v12 = *(a3 + 4);
    v13 = result[2];
    v14 = logLevelToString(a2);
    if (v12 == -1)
    {
      glpStringBufferAppendFormat(v13, "%s: ", v15, v16, v17, v18, v19, v20, v14);
    }

    else
    {
      v22 = *a3;
      v23 = *(a3 + 4);
      v21 = *(a3 + 2);
      glpStringBufferAppendFormat(v13, "%s: %.*s:%u: ", v15, v16, v17, v18, v19, v20, v14);
    }

    glpStringBufferAppendFormatv(v9[2], a4, &a9);
    return glpStringBufferAppendCString(v9[2], "\n");
  }

  return result;
}

char *logLevelToString(unsigned int a1)
{
  if (a1 >= 4)
  {
    abort();
  }

  return off_278B49758[a1];
}

uint64_t glpLogSuppress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 28) = 0;
  v4 = a1 + 28;
  *(a1 + 36) = 0;
  *(a1 + 24) = 1;
  (*(a2 + 16))(a2);
  *(v4 - 4) = 0;
  v5 = *(a3 + 16);

  return v5(a3, v4);
}

void *glpLogSerialize(uint64_t a1, _DWORD *a2)
{
  String = glpStringBufferGetString(*(a1 + 16));
  v6 = v5;
  *a2++ = *(a1 + 8);
  result = memcpy(a2, String, v5);
  *(a2 + v6) = 0;
  return result;
}

uint64_t glpMakeNameTable(uint64_t a1, int a2, int a3)
{
  v6 = glpCompilerPoolAlloc(a1);
  *(v6 + 264) = a1;
  Allocator = glpCompilerGetAllocator(a1);
  glpInitDeserialContext(v6, Allocator, Allocator, 0, 0);
  v8 = glpCompilerGetAllocator(a1);
  StringHash = glpMakeStringHash(v8);
  v10 = (v8[1])(*v8, 40, "Name List Node");
  *(v10 + 16) = 0;
  *v10 = StringHash;
  *(v10 + 8) = glpMakeIntHash(v8);
  *(v10 + 36) = 0;
  *(v10 + 24) = 0;
  *(v6 + 272) = v10;
  *(v6 + 280) = v10;
  v11 = glpCompilerGetAllocator(*(v6 + 264));
  v12 = glpCompilerGetAllocator(*(v6 + 264));
  v13 = glpMakeStringHash(v12);
  v14 = (v11[1])(*v11, 40, "Name List Node");
  *(v14 + 16) = 0;
  *v14 = v13;
  *(v14 + 8) = glpMakeIntHash(v11);
  *(v14 + 36) = 0;
  *(v14 + 24) = 0;
  *(*(v6 + 280) + 16) = v14;
  v15 = glpCompilerGetAllocator(*(v6 + 264));
  *(v6 + 456) = 10;
  *(v6 + 464) = (*(v15 + 8))(*v15, 80, "Vector Storage (GLPHashTable *)");
  *(v6 + 288) = 0;
  *(v6 + 292) = a2;
  glpNameTableSetGLSLVersion(v6, a3);
  *(v6 + 472) = 0;
  return v6;
}

uint64_t glpNameTableSetGLSLVersion(uint64_t a1, int a2)
{
  *(a1 + 296) = a2;
  memset_pattern16((a1 + 300), &unk_23A29C840, 0x98uLL);
  *(a1 + 288) = 0;
  glpDestroyIntHash(*(*(a1 + 272) + 8));
  Allocator = glpCompilerGetAllocator(*(a1 + 264));
  result = glpMakeIntHash(Allocator);
  *(*(a1 + 272) + 8) = result;
  v6 = *(a1 + 292);
  if (v6 == 4)
  {
    v10 = *(a1 + 264);
    v8 = 8;
  }

  else
  {
    if (v6)
    {
      return result;
    }

    v7 = glpCompilerPoolAlloc(*(a1 + 264));
    v8 = 16;
    *v7 = 16;
    glpIntHashPut(*(*(a1 + 272) + 8), 1u, v7, v9);
    v10 = *(a1 + 264);
  }

  v11 = glpCompilerPoolAlloc(v10);
  *v11 = v8;
  glpIntHashPut(*(*(a1 + 272) + 8), 5u, v11, v12);
  v13 = glpCompilerPoolAlloc(*(a1 + 264));
  *v13 = 4;
  glpIntHashPut(*(*(a1 + 272) + 8), 0x11u, v13, v14);
  v15 = glpCompilerPoolAlloc(*(a1 + 264));
  *v15 = 4;
  result = glpIntHashPut(*(*(a1 + 272) + 8), 0x13u, v15, v16);
  if (!a2)
  {
    v17 = glpCompilerPoolAlloc(*(a1 + 264));
    *v17 = 4;
    v19 = *(*(a1 + 272) + 8);

    return glpIntHashPut(v19, 0x15u, v17, v18);
  }

  return result;
}

uint64_t glpDestroyNameTable(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    do
    {
      v3 = v2[2];
      glpDestroyStringHash(*v2);
      Allocator = glpCompilerGetAllocator(*(a1 + 264));
      (*(Allocator + 24))(*Allocator, v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = glpCompilerGetAllocator(*(a1 + 264));
  v6 = v5[3];
  v7 = *v5;

  return v6(v7, a1);
}

uint64_t glpNameTablePutPrecision(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = glpCompilerPoolAlloc(*(a1 + 264));
  *v6 = a3;
  v8 = *(*(a1 + 272) + 8);

  return glpIntHashPut(v8, a2, v6, v7);
}

uint64_t glpNameTableSetGLSLExtensionBehavior(uint64_t result, unsigned int a2, int a3)
{
  *(result + 4 * a2 + 300) = a3;
  *(result + 288) = 0;
  if (a2 == 19 && a3 != 3)
  {
    *(result + 448) = 3;
  }

  return result;
}

BOOL glpNameTableGet(uint64_t a1, char *a2, size_t a3, char a4, uint64_t a5)
{
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 0x40000000;
  v82 = __glpNameTableGet_block_invoke;
  v83 = &unk_278B49780;
  v84 = a5;
  v6 = *(a1 + 272);
  if (v6)
  {
    v7 = 0;
    v8 = *(*(a1 + 280) + 16);
    v9 = a4 & 2;
    do
    {
      v10 = *(v6 + 36);
      v11 = *(a1 + 280);
      v12 = glpStringHashGet(*v6, a2, a3);
      if (v12)
      {
        v13 = v10 != 0;
        if (v6 == v11)
        {
          v13 = 2;
        }

        if (v6 == v8)
        {
          v14 = 3;
        }

        else
        {
          v14 = v13;
        }

        v15 = (v82)(v81, v14, v12);
        if (v15 | v9)
        {
          return v15 != 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if (v12)
      {
        v16 = v6 == v8;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v7 = 1;
      }

      v6 = *(v6 + 16);
    }

    while (v6);
    if (v7)
    {
      return 0;
    }
  }

  if (*(a1 + 288))
  {
    goto LABEL_79;
  }

  v17 = *(a1 + 296);
  if (v17 > 4)
  {
    if (v17 > 6)
    {
      if (v17 != 7 && v17 != 8)
      {
        abort();
      }

      goto LABEL_92;
    }

    if (v17 != 6)
    {
      abort();
    }

    v17 = 1;
  }

  else
  {
    if (v17 > 0)
    {
      if (v17 <= 2 && v17 != 1)
      {
        abort();
      }

      goto LABEL_92;
    }

    if (v17)
    {
      goto LABEL_92;
    }
  }

  v19 = v17;
  if (!builtInsArchives[v17])
  {
    pthread_mutex_lock(&mutex);
    if (builtInsArchives[v19])
    {
LABEL_35:
      pthread_mutex_unlock(&mutex);
      goto LABEL_36;
    }

    glpInitPoolAllocator(0x20000, 0x20000, &poolAllocators[4 * v19]);
    v86 = 0;
    v85 = 0;
    if (!glpGetBIArchiveData(v19, &v85, &v86))
    {
      aborting_due_to_builtin_read_failure_suggesting_corrupt_os_installation();
    }

    v20 = glpOpenArchive(&poolAllocators[4 * v19], v86, v85);
    builtInsArchives[v19] = v20;
    if (!v20)
    {
      aborting_due_to_invalid_builtin_contents_suggesting_corrupt_os_installation();
    }

    v21 = malloc_type_calloc(*(&GLP_BI_INDEX_COUNT + v19), 8uLL, 0x1A32276BuLL);
    if (v21)
    {
      nameTableSets[v19] = v21;
      glpLockPoolAllocator(&poolAllocators[4 * v19]);
      goto LABEL_35;
    }

LABEL_92:
    abort();
  }

LABEL_36:
  v22 = *(a1 + 280);
  v23 = *(v22 + 16);
  if (v23)
  {
    do
    {
      v24 = v23[2];
      glpDestroyStringHash(*v23);
      Allocator = glpCompilerGetAllocator(*(a1 + 264));
      (*(Allocator + 24))(*Allocator, v23);
      v23 = v24;
    }

    while (v24);
    v22 = *(a1 + 280);
  }

  *(v22 + 16) = 0;
  v26 = glpCompilerGetAllocator(*(a1 + 264));
  v27 = glpCompilerGetAllocator(*(a1 + 264));
  StringHash = glpMakeStringHash(v27);
  v29 = (v26[1])(*v26, 40, "Name List Node");
  *(v29 + 16) = 0;
  *v29 = StringHash;
  *(v29 + 8) = glpMakeIntHash(v26);
  *(v29 + 36) = 0;
  *(v29 + 24) = 0;
  *(*(a1 + 280) + 16) = v29;
  v30 = glpCompilerGetAllocator(*(a1 + 264));
  (*(v30 + 24))(*v30, *(a1 + 464));
  v31 = glpCompilerGetAllocator(*(a1 + 264));
  *(a1 + 456) = 10;
  *(a1 + 464) = (*(v31 + 8))(*v31, 80, "Vector Storage (GLPHashTable *)");
  v32 = *(&GLP_BI_INDEX_COUNT + v19);
  if (v32)
  {
    v33 = 0;
    v34 = GLP_BI_INDEX[v19];
    v35 = a1 + 300;
    v77 = v34;
    v78 = &poolAllocators[4 * v19];
    v36 = v34 + 27;
    v37 = v34 + 3;
    v38 = v34 + 8;
    v74 = *(&GLP_BI_INDEX_COUNT + v19);
    v75 = v19;
    do
    {
      v39 = &v34[30 * v33];
      v40 = *(v39 + 5);
      if (v40)
      {
        v41 = v36;
        while (1)
        {
          v42 = *v41;
          v41 = (v41 + 4);
          if (v42 == *(a1 + 292))
          {
            break;
          }

          if (!--v40)
          {
            goto LABEL_77;
          }
        }

        v43 = *(v39 + 3);
        if (v43)
        {
          v44 = v37;
          while (1)
          {
            v45 = *v44;
            v44 = (v44 + 4);
            if (v45 == *(a1 + 296))
            {
              break;
            }

            if (!--v43)
            {
              goto LABEL_50;
            }
          }
        }

        else
        {
LABEL_50:
          v46 = *(v39 + 4);
          v47 = v38;
          if (!v46)
          {
            goto LABEL_77;
          }

          while (1)
          {
            v48 = *v47;
            v47 = (v47 + 4);
            if (*(v35 + 4 * v48) != 3)
            {
              break;
            }

            if (!--v46)
            {
              goto LABEL_77;
            }
          }
        }

        pthread_mutex_lock(&mutex);
        if (!*(nameTableSets[v19] + 8 * v33))
        {
          glpUnlockPoolAllocator(v78);
          v49 = *v39;
          v50 = nameTableSets[v19];
          v76 = builtInsArchives[v19];
          v51 = strlen(*v39);
          if (v51)
          {
            v52 = v51;
            LODWORD(v53) = v51;
            do
            {
              v53 = (32 * v53 + (v53 >> 2) + v49[v52 - 1]) ^ v53;
              v52 += ~(v51 >> 5);
            }

            while (v52 > v51 >> 5);
            v54 = v53 << 32;
          }

          else
          {
            v54 = 0;
          }

          v86 = 0;
          v85 = 0;
          if (!glpArchiveFileGetEntryNamed(v76, v49, v54 | v51, &v86, &v85) || !glpDeserializeNames(v78, v85, v86, (v50 + 8 * v33)))
          {
            goto LABEL_92;
          }

          v55 = *v39;
          v56 = strlen(*v39);
          if (v56)
          {
            v57 = v56;
            LODWORD(v58) = v56;
            do
            {
              v58 = (32 * v58 + (v58 >> 2) + v55[v57 - 1]) ^ v58;
              v57 += ~(v56 >> 5);
            }

            while (v57 > v56 >> 5);
            v59 = v58 << 32;
          }

          else
          {
            v59 = 0;
          }

          glpArchiveFileFinishEntryNamed(builtInsArchives[v19], v55, v59 | v56);
          glpLockPoolAllocator(v78);
        }

        pthread_mutex_unlock(&mutex);
        v60 = *(nameTableSets[v19] + 8 * v33);
        v61 = *(a1 + 460);
        v62 = *(a1 + 456);
        if (v61 + 1 <= v62)
        {
          v67 = *(a1 + 464);
          v70 = *(a1 + 460);
        }

        else
        {
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = 2 * v62;
          if (v63 <= v61 + 1)
          {
            v64 = v61 + 1;
          }

          else
          {
            v64 = v63;
          }

          v65 = *(nameTableSets[v19] + 8 * v33);
          v66 = glpCompilerGetAllocator(*(a1 + 264));
          v67 = (*(v66 + 8))(*v66, 8 * v64, "Vector Storage (GLPHashTable *, growth)");
          memcpy(v67, *(a1 + 464), 8 * *(a1 + 460));
          v68 = *(v66 + 24);
          v69 = *v66;
          v60 = v65;
          v68(v69, *(a1 + 464));
          *(a1 + 456) = v64;
          v32 = v74;
          v19 = v75;
          *(a1 + 464) = v67;
          v70 = *(a1 + 460);
        }

        memmove(&v67[8 * v61 + 8], &v67[8 * v61], 8 * (v70 - v61));
        *(*(a1 + 464) + 8 * v61) = v60;
        ++*(a1 + 460);
        v35 = a1 + 300;
        v34 = v77;
      }

LABEL_77:
      ++v33;
      v36 += 30;
      v37 += 30;
      v38 += 30;
    }

    while (v33 != v32);
  }

  *(a1 + 288) = 1;
LABEL_79:
  v71 = *(a1 + 460);
  if (!v71)
  {
    return 0;
  }

  v72 = 0;
  while (1)
  {
    v73 = getAndRemapBuiltinFromScope(a1, *(*(a1 + 464) + 8 * v72), a2, a3, v72, v71, 6);
    if (v73)
    {
      if ((v82)(v81, 3, v73))
      {
        break;
      }
    }

    if (v71 == ++v72)
    {
      return 0;
    }
  }

  return 1;
}

BOOL __glpNameTableGet_block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v14 = 0;
  v5 = *a3;
  if (v5 == 9)
  {
    v6 = *(a3 + 1);
    v7 = *(a1 + 32);
    v8 = **v6;
    v9 = *(*v6 + 1);
    (*(*(a1 + 32) + 16))();
    if (v14)
    {
      return 1;
    }

    v10 = *(a1 + 32);
    v11 = v6[1];
    v5 = *v11;
    v12 = *(v11 + 1);
  }

  else
  {
    v10 = *(a1 + 32);
    v12 = *(a3 + 1);
  }

  (*(v10 + 16))(v10, v5, v12, a2, &v14);
  return v14 != 0;
}

uint64_t getAndRemapBuiltinFromScope(uint64_t a1, uint64_t a2, char *a3, size_t __n, int a5, unsigned int a6, char a7)
{
  v23 = **(*(a1 + 280) + 16);
  v11 = glpStringHashGet(a2, a3, __n);
  if (!v11)
  {
    return 0;
  }

  glpReInitDeserialContext(a1, (v11 + 1), *v11);
  v24 = 0;
  deserialize_GLPNameTableEntry(a1, &v24);
  v13 = v24;
  if (*v24 == 13)
  {
    v14 = *(v24 + 8);
    v15 = *(v14 + 4);
    if (v15)
    {
      v16 = 0;
      v13 = 0;
      v17 = 24 * v15;
      do
      {
        v18 = *(v14 + 8);
        if ((a7 & 2) != 0)
        {
          remap(a1, a3, __n, a5, a6, *(v18 + v16), **(v18 + v16), *(*(v18 + v16) + 8));
        }

        if (glpStringsEqual(*(v18 + v16 + 8), *(v18 + v16 + 16), a3, __n))
        {
          v13 = *(v18 + v16);
        }

        if ((a7 & 4) != 0)
        {
          glpStringHashPut(v23, *(v18 + v16 + 8), *(v18 + v16 + 16), *(v18 + v16), v19);
        }

        v16 += 24;
      }

      while (v17 != v16);
      return v13;
    }

    return 0;
  }

  if ((a7 & 2) != 0)
  {
    remap(a1, a3, __n, a5, a6, v24, *v24, *(v24 + 8));
    v13 = v24;
  }

  if ((a7 & 4) != 0)
  {
    glpStringHashPut(v23, a3, __n, v13, v12);
    return v24;
  }

  return v13;
}

uint64_t glpNameTablePut(uint64_t a1, const char *a2, size_t a3, int a4, uint64_t a5)
{
  v10 = *(a1 + 272);
  v11 = glpStringHashGet(*v10, a2, a3);
  if (v11 && *(a1 + 296) == 1)
  {
    v12 = v11;
    v13 = glpCompilerPoolAlloc(*(a1 + 264));
    v14 = glpCompilerPoolAlloc(*(a1 + 264));
    *v14 = *v12;
    *(v14 + 8) = *(v12 + 8);
    *v13 = v14;
    result = glpCompilerPoolAlloc(*(a1 + 264));
    *result = a4;
    *(result + 8) = a5;
    v13[1] = result;
    *v12 = 9;
    *(v12 + 8) = v13;
  }

  else
  {
    v16 = glpCompilerPoolAlloc(*(a1 + 264));
    *v16 = a4;
    *(v16 + 8) = a5;
    v18 = *v10;

    return glpStringHashPut(v18, a2, a3, v16, v17);
  }

  return result;
}

uint64_t glpNameTablePush(uint64_t a1, uint64_t a2)
{
  Allocator = glpCompilerGetAllocator(*(a1 + 264));

  return nameTablePush(Allocator, (a1 + 272), a2, 0);
}

uint64_t nameTablePush(void *a1, uint64_t *a2, uint64_t a3, char a4)
{
  StringHash = glpMakeStringHash(a1);
  v9 = (a1[1])(*a1, 40, "Name List Node");
  *(v9 + 16) = 0;
  *v9 = StringHash;
  result = glpMakeIntHash(a1);
  *(v9 + 8) = result;
  *(v9 + 36) = a4;
  *(v9 + 24) = a3;
  *(v9 + 16) = *a2;
  *a2 = v9;
  return result;
}

uint64_t glpNameTablePushForFunction(void *a1, uint64_t a2, uint64_t a3)
{
  Allocator = glpCompilerGetAllocator(a1[33]);
  result = nameTablePush(Allocator, a1 + 34, a2, 1);
  a1[59] = a3;
  return result;
}

uint64_t glpNameTablePop(void *a1)
{
  v2 = a1[34];
  if (*(v2 + 36))
  {
    a1[59] = 0;
  }

  glpDestroyStringHash(*v2);
  v3 = *(v2 + 16);
  Allocator = glpCompilerGetAllocator(a1[33]);
  result = (*(Allocator + 24))(*Allocator, v2);
  a1[34] = v3;
  return result;
}

uint64_t glpNameTableGetPrecision(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 272);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v4 = v2[2];
    if (*v2)
    {
      v5 = glpIntHashGet(v2[1], a2);
      if (v5)
      {
        break;
      }
    }

    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return *v5;
}

void *remap(uint64_t a1, int a2, size_t a3, int a4, unsigned int a5, uint64_t a6, int a7, void *a8)
{
  *a6 = a7;
  v10 = *(a1 + 264);
  if (a7 == 4)
  {
    result = glpCompilerRemapObject(v10, 4, a8, 0, 1);
    v16 = result;
    v17 = (a4 + 1);
    if (v17 >= a5)
    {
      v19 = result;
    }

    else
    {
      do
      {
        result = getAndRemapBuiltinFromScope(a1, *(*(a1 + 464) + 8 * v17), a2, a3);
        if (result && (v18 = result[1]) != 0)
        {
          do
          {
            v19 = glpCompilerPoolAlloc(*(a1 + 264));
            result = glpCompilerRemapObject(*(a1 + 264), 10, *v18, 0, 1);
            *v19 = result;
            v19[1] = v16;
            v18 = *(v18 + 8);
            v16 = v19;
          }

          while (v18);
        }

        else
        {
          v19 = v16;
        }

        ++v17;
        v16 = v19;
      }

      while (v17 != a5);
    }
  }

  else
  {
    result = glpCompilerRemapObject(v10, a7, a8, 0, 1);
    v19 = result;
  }

  *(a6 + 8) = v19;
  return result;
}

unsigned int *FinishType(unsigned int *result)
{
  v1 = result[5];
  if (v1 >= 4)
  {
    if (v1 == 4)
    {
      v3 = *result;
      v2 = result[1];
      result[2] = *result;
      result[3] = v2;
      result[4] = 8;
      if (v3 >= 3)
      {
        result[2] = 2;
        result[3] = 2 * v2;
      }
    }
  }

  else
  {
    *(result + 1) = *result;
    result[4] = 4;
  }

  return result;
}

double InitReg(unsigned __int16 *a1, int a2, uint64_t a3)
{
  *(a3 + 40) = a2;
  result = 0.0;
  *(a3 + 44) = xmmword_23A29C850;
  *(a3 + 60) = 3;
  *(a3 + 64) = *a1;
  *(a3 + 72) = 0;
  return result;
}

double AddArray(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == 2)
  {
    v6 = (*(a2 + 4) << 16) | (*(a3 + 4) << 48);
    PPStreamAddParamBindingArray(a1, &v6);
  }

  else if (*a2 == 1)
  {
    v6 = (*(a2 + 4) << 16) | (*(a3 + 4) << 48);
    PPStreamAddTempUsageArray(a1, &v6);
  }

  *(a2 + 40) = xmmword_23A29C860;
  *&result = 0x300000002;
  *(a2 + 56) = 0x300000002;
  *(a2 + 64) = *a1;
  *(a2 + 72) = 0;
  return result;
}

char *AddBinding(char *result, uint64_t a2, uint64_t a3, int a4, __int128 *a5, uint64_t a6)
{
  if (*(a5 + 3))
  {
    v11 = result;
    v12 = 0;
    v13 = 0;
    do
    {
      NextIndex = 0;
      v15 = *(a5 + 2);
      v16 = v15 - 1;
      v17 = *a5 <= v15 || (v12 & 1) == 0;
      v18 = *a5 + ~v15;
      if (v17)
      {
        v18 = v16;
      }

      if (a4 <= 2)
      {
        if (a4)
        {
          if (a4 == 1)
          {
            v33 = ((v18 & 3) << 6) | (8 * (*(a5 + 20) & 7)) | *(a5 + 6) & 7 | ((*(a5 + 7) & 1u) << 8);
            NextIndex = PPStreamChunkListGetNextIndex(v11[4]);
            DWORD2(v33) = NextIndex;
            result = PPStreamAddTempUsage(v11, &v33);
          }

          else if (a4 == 2)
          {
            v19 = *(a6 + 8 * v12) & 0xFFFFFFFFFFFFFF3FLL | ((v18 & 3) << 6);
            *(a6 + 8 * v12) = v19;
            v20 = v19 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a5 + 5) & 7));
            *(a6 + 8 * v12) = v20;
            v21 = v20 & 0xFFFFFFFFFFFFFFF8 | *(a5 + 6) & 7;
            *(a6 + 8 * v12) = v21;
            v33 = v21;
            NextIndex = PPStreamChunkListGetNextIndex(v11[7]);
            DWORD2(v33) = NextIndex;
            result = PPStreamAddParamBinding(v11, &v33);
            if ((v33 & 0x1F00) == 0x400)
            {
              v13 = 2;
            }
          }
        }

        else
        {
          v25 = *(a6 + 8 * v12) & 0xFFFFFFFFFFFFFF3FLL | ((v18 & 3) << 6);
          *(a6 + 8 * v12) = v25;
          v26 = v25 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a5 + 5) & 7));
          *(a6 + 8 * v12) = v26;
          v27 = v26 & 0xFFFFFFFFFFFFFFF8 | *(a5 + 6) & 7;
          *(a6 + 8 * v12) = v27;
          v33 = v27;
          NextIndex = PPStreamChunkListGetNextIndex(v11[6]);
          DWORD2(v33) = NextIndex;
          result = PPStreamAddAttribBinding(v11, &v33);
        }

        goto LABEL_22;
      }

      switch(a4)
      {
        case 3:
          goto LABEL_18;
        case 4:
          LODWORD(v33) = 0;
          NextIndex = PPStreamChunkListGetNextIndex(v11[5]);
          LODWORD(v33) = NextIndex;
          result = PPStreamAddAddressUsage(v11, &v33);
          break;
        case 5:
LABEL_18:
          v22 = *(a6 + 8 * v12) & 0xFFFFFFFFFFFFFF3FLL | ((v18 & 3) << 6);
          *(a6 + 8 * v12) = v22;
          v23 = v22 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a5 + 5) & 7));
          *(a6 + 8 * v12) = v23;
          v24 = v23 & 0xFFFFFFFFFFFFFFF8 | *(a5 + 6) & 7;
          *(a6 + 8 * v12) = v24;
          v33 = v24;
          NextIndex = PPStreamChunkListGetNextIndex(v11[8]);
          DWORD2(v33) = NextIndex;
          result = PPStreamAddOutputBinding(v11, &v33);
          break;
      }

LABEL_22:
      v28 = a5[1];
      v33 = *a5;
      v34 = v28;
      v29 = *v11;
      if (!v12)
      {
        *a2 = a4;
        *(a2 + 4) = NextIndex;
        v30 = v34;
        *(a2 + 8) = v33;
        *(a2 + 24) = v30;
        *(a2 + 40) = v13;
        *(a2 + 44) = xmmword_23A29C850;
        *(a2 + 60) = 3;
        *(a2 + 64) = v29;
        *(a2 + 72) = 0;
        *(a2 + 68) = 0;
      }

      v31 = *(a5 + 3);
      if (v12 == v31 - 1)
      {
        *a3 = a4;
        *(a3 + 4) = NextIndex;
        v32 = v34;
        *(a3 + 8) = v33;
        *(a3 + 24) = v32;
        *(a3 + 40) = v13;
        *(a3 + 44) = xmmword_23A29C850;
        *(a3 + 60) = 3;
        *(a3 + 64) = v29;
        *(a3 + 72) = 0;
        *(a3 + 68) = 0;
        v31 = *(a5 + 3);
      }

      ++v12;
    }

    while (v12 < v31);
  }

  return result;
}

char *AddConstant(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = 0;
  v10 = 8 * *(a4 + 12);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFF0);
  bzero(v11, v10);
  bzero(v11, v10);
  if (*(a4 + 12))
  {
    v12 = 0;
    do
    {
      v13 = *&v11[8 * v12] & 0xFFFFFFFFFFFFE0FFLL | 0x600;
      *&v11[8 * v12] = v13;
      *&v11[8 * v12] = v13 & 0xFFFF0000FFFFFFFFLL | (PPStreamChunkListGetNextIndex(*(a1 + 128)) << 32);
      v19 = 0;
      v20 = 0;
      v14 = *(a4 + 8);
      v15 = *(a4 + 16);
      __memcpy_chk();
      PPStreamAddConstant(a1, &v19);
      ++v12;
      a5 += 16;
    }

    while (v12 < *(a4 + 12));
  }

  result = AddBinding(a1, a2, a3, 2, a4, v11);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

char *AddOpv(uint64_t a1, unsigned __int8 a2, _DWORD *a3, _DWORD *a4, uint64_t *a5, unint64_t *a6)
{
  v7 = a1;
  v108 = *MEMORY[0x277D85DE8];
  v8 = *(*(a1 + 104) + 8);
  if (v8)
  {
    v9 = (v8 + 3);
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = 8 * (v8[3] & 7);
  }

  else
  {
    v10 = 0;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v94 = 0u;
  if (a4)
  {
    if (a4[17])
    {
      ++a4[19];
    }

    if (a5)
    {
      v11 = *a5;
    }

    else
    {
      v73 = a4[2];
      v11 = 1912602624;
      if (v73 > 2)
      {
        if (v73 == 3)
        {
          v11 = 1913061376;
        }

        else if (v73 == 4)
        {
          v11 = 1913094144;
        }
      }

      else if (v73 == 1)
      {
        v11 = 1912864768;
      }

      else if (v73 == 2)
      {
        v11 = 1912995840;
      }
    }

    if (a4[10] == 1)
    {
      v12 = v11 | 0x100000000;
    }

    else
    {
      v12 = v11;
    }

    v13.i64[0] = 0x100000001;
    v13.i64[1] = 0x100000001;
    v14 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v12), xmmword_23A29C870), v13)) - 1;
    *(&v94 + 1) = v12 & 0xFFFFFF878FFFLL | ((a4[2] << 21) + 6291456) & 0x600000 | ((a4[3] << 19) + 1572864) & 0x180000 | ((*a4 & 7) << 12) | (a4[1] << 48);
  }

  else
  {
    v14 = -1;
  }

  v15 = *a6;
  v16 = a6[1];
  v17 = *a6 != 0;
  v18 = *a6 | v16;
  if (*a6 == 0)
  {
    v32 = 1;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      if (v17)
      {
        if (*(v15 + 68))
        {
          ++*(v15 + 72);
        }

        if (v16)
        {
          v22 = *v16;
        }

        else
        {
          *(&v95 + v19) = 0;
          v24 = (*(v15 + 48) & 3) << 9;
          *(&v95 + v19) = v24;
          v25 = v24 & 0xFFFFE7FF | ((*(v15 + 52) & 3u) << 11);
          *(&v95 + v19) = v25;
          v26 = v25 & 0xFFFF9FFF | ((*(v15 + 56) & 3u) << 13);
          *(&v95 + v19) = v26;
          v22 = v26 & 0xFFFE7FFF | ((*(v15 + 60) & 3u) << 15);
        }

        *(&v95 + v19) = v22;
        v27 = v22 & 0xFFFFFFFFFFE7FFFFLL | ((*(v15 + 8) << 19) + 1572864) & 0x180000;
        *(&v95 + v19) = v27;
        v28 = v27 & 0xFFFFFFFFFFF9FFFFLL | ((*(v15 + 12) << 17) + 393216) & 0x60000;
        *(&v95 + v19) = v28;
        v29 = v28 & 0xFFFFFFFFFFFFFE3FLL | ((*v15 & 7) << 6);
        *(&v95 + v19) = v29;
        v30 = v29 & 0xFFFFFFFFFFFFLL | (*(v15 + 4) << 48);
        *(&v95 + v19) = v30;
        v23 = v30 & 0xFFFFFFFFFFFFFFEFLL | (16 * (*(v15 + 44) & 1));
      }

      else
      {
        v23 = *v16;
        v20 = 1;
      }

      *(&v95 + v19) = v23;
      v19 = (v21 + 1);
      v31 = &a6[2 * v19];
      v15 = *v31;
      v16 = v31[1];
      v17 = *v31 != 0;
      v21 = v19;
    }

    while (v15 | v16);
    v32 = v20 == 0;
    v18 = v19 & 7;
  }

  v33 = a4 + 2;
  if (a3)
  {
    v33 = a3;
    v34 = -1;
  }

  else
  {
    v34 = v14;
  }

  if (a4)
  {
    v35 = v33;
  }

  else
  {
    v35 = a3;
  }

  if (a4)
  {
    v36 = v34;
  }

  else
  {
    v36 = -1;
  }

  if (v35 && v36 == -1)
  {
    v36 = *v35 - 1;
  }

  if (v32)
  {
    v37 = (a4 != 0) << 32;
  }

  else
  {
    v37 = ((a4 != 0) << 32) | 0x28000;
  }

  v38 = v37 | v10 & 0xFFFFC03F | (a2 << 6) | v18;
  *&v94 = v38;
  if (v35)
  {
    v38 = ((v36 & 3) << 36) | (((v35[1] - 1) & 3) << 34) | ((v35[5] & 7) << 38) | v38 & 0x17FC7FFFFLL | ((v35[6] & 7) << 19);
    *&v94 = v38;
  }

  v39 = 0;
  while (1)
  {
    if ((v38 & 0x3FC0) != 0 || !v9)
    {
      if ((v38 & 0x3FC0) != 0x1B40)
      {
        goto LABEL_125;
      }

      if (!v9)
      {
        goto LABEL_125;
      }

      v40 = *v9;
      if ((*v9 & 0x3FC0) != 0x1B40)
      {
        goto LABEL_125;
      }

LABEL_64:
      v45 = 1;
      goto LABEL_65;
    }

    v40 = *v9;
    v41 = *v9 & 0x3FC0;
    if (v41)
    {
      v42 = v41 == 6976;
    }

    else
    {
      v42 = 1;
    }

    if (!v42)
    {
      goto LABEL_125;
    }

    v43 = (v40 >> 6);
    if (v43 != 109 && v43 != 0)
    {
      goto LABEL_64;
    }

    v45 = *(*a6 + 68) == 0;
LABEL_65:
    v46 = v9[1];
    v47 = DWORD2(v94);
    v48 = (DWORD2(v94) >> 18) & 1;
    v49 = (((DWORD2(v94) & 0x40000) == 0) & (v46 >> 18)) == 0 && ((v46 >> 17) & ~(DWORD2(v94) >> 17) & 1) == 0 && (WORD1(v46) & ~HIWORD(DWORD2(v94)) & 1) == 0 && ((v46 >> 15) & ~(DWORD2(v94) >> 15) & 1) == 0;
    v50 = 0;
    v51 = v9[2];
    v52 = v95;
    v53 = ((v95 ^ v51) & 0x30) == 0;
    if (!((v95 ^ v46) >> 48) && (((v95 >> 6) ^ (v46 >> 12)) & 7) == 0)
    {
      v50 = ((v95 ^ HIDWORD(v46)) & 1) == 0 && (((v46 >> 33) ^ (v95 >> 1)) & 1) == 0 && (((v46 >> 34) ^ (v95 >> 2)) & 3) == 0 && ((v95 << 32) ^ (v46 << 20)) >> 56 == 0;
    }

    v54 = v40 ^ v38;
    v55 = (v40 ^ v38) & 0xFFFFC9CE00380000;
    if ((v38 & 0xC00000000) != 0)
    {
      v53 = 0;
      v49 = v49 && (v54 & 0x3000000000) == 0;
      v56 = 0;
    }

    else
    {
      if (v49)
      {
        v49 = ((v38 >> 36) & 3) >= ((v40 >> 36) & 3);
      }

      if ((v54 & 0x3000000000) != 0)
      {
        v45 = 1;
      }

      if (v45 || *(*a6 + 72) != 1)
      {
        v56 = 0;
      }

      else
      {
        v57 = v7;
        v58 = 0;
        v59.i64[0] = 0x300000003;
        v59.i64[1] = 0x300000003;
        v107 = vandq_s8(vshlq_u32(vdupq_n_s32(v95), xmmword_23A29BE90), v59);
        do
        {
          v60 = v107.i32[v58];
          if (v60 == 3)
          {
            v61 = (v46 >> 15) & 1;
          }

          else
          {
            v61 = 1;
          }

          if (v60 == 2)
          {
            v61 = WORD1(v46) & 1;
          }

          if (v60 == 1)
          {
            v62 = (v46 >> 17) & 1;
          }

          else
          {
            v62 = 1;
          }

          if (!v60)
          {
            v62 = (v46 >> 18) & 1;
          }

          if (v60 <= 1)
          {
            v56 = v62;
          }

          else
          {
            v56 = v61;
          }

          if (v58 >= ((v38 >> 36) & 3))
          {
            break;
          }

          ++v58;
        }

        while (v56);
        if (v55)
        {
          v56 = 0;
        }

        v7 = v57;
      }
    }

    v63 = (*(&v94 + 1) ^ v46) & 0xFFFF0FFF00007000;
    if (v63 | v55)
    {
      v49 = 0;
    }

    if (v50)
    {
      v49 = v56;
    }

    if (!v49)
    {
      break;
    }

    if (v39)
    {
      PPStreamChunkListRemoveChunk(*(v7 + 104), v39);
      v40 = *v9;
      v38 = v94;
    }

    v64 = v38 & 0xFFFFFFFFFFFFFFC7 | (8 * ((v40 >> 3) & 7));
    *&v94 = v64;
    LODWORD(v98) = *(v9 + 16);
    if ((v50 & v56 & 1) == 0)
    {
      v71 = v97;
      v70 = v98;
      *(v9 + 2) = v96;
      *(v9 + 3) = v71;
      *(v9 + 4) = v70;
      v72 = v95;
      *v9 = v94;
      *(v9 + 1) = v72;
      goto LABEL_155;
    }

    v38 = v64 & 0xFFFFFFFFFFFFC03FLL | ((*v9 >> 6) << 6);
    v65 = v9[2];
    *&v94 = v38;
    *&v95 = v65;
    v67 = v97;
    v66 = v98;
    *(v9 + 2) = v96;
    *(v9 + 3) = v67;
    *(v9 + 4) = v66;
    v68 = v95;
    *v9 = v94;
    *(v9 + 1) = v68;
    v39 = v8;
    v8 = *v8;
    if (v8)
    {
      v9 = (v8 + 3);
    }

    else
    {
      v9 = 0;
    }
  }

  v69 = !v53;
  if (v63 | (v95 ^ v51) & 0xFFFF0000FF0001CFLL | v55)
  {
    v69 = 1;
  }

  if ((v69 & 1) != 0 || v50)
  {
LABEL_125:
    if (!v39)
    {
      v39 = PPStreamAddOperation(v7, &v94, 0);
    }

    goto LABEL_156;
  }

  if (v39)
  {
    PPStreamChunkListRemoveChunk(*(v7 + 104), v39);
    v47 = DWORD2(v94);
    v52 = v95;
    LODWORD(v46) = *(v9 + 2);
    v51 = v9[2];
    v48 = (DWORD2(v94) >> 18) & 1;
  }

  v74 = 0;
  v104 = v48;
  memset(&v107, 0, 64);
  v75 = vdupq_n_s32(v47);
  v105 = vand_s8(vshl_u32(*v75.i8, 0xFFFFFFF0FFFFFFEFLL), 0x100000001);
  v106 = (v47 >> 15) & 1;
  v76.i64[0] = 0x300000003;
  v76.i64[1] = 0x300000003;
  v102 = vandq_s8(vshlq_u32(vdupq_n_s32(v52), xmmword_23A29BE90), v76);
  v103 = vandq_s8(vshlq_u32(v75, xmmword_23A29BEA0), v76);
  v77 = vdupq_n_s32(v46);
  LODWORD(v101) = (v46 >> 18) & 1;
  *(&v101 + 4) = vand_s8(vshl_u32(*v77.i8, 0xFFFFFFF0FFFFFFEFLL), 0x100000001);
  HIDWORD(v101) = (v46 >> 15) & 1;
  v99 = vandq_s8(vshlq_u32(vdupq_n_s32(v51), xmmword_23A29BE90), v76);
  v100 = vandq_s8(vshlq_u32(v77, xmmword_23A29BEA0), v76);
  while (2)
  {
    if (*(&v104 + v74 * 4))
    {
      v78 = &v102;
      v79 = &v103;
      goto LABEL_140;
    }

    if (*(&v101 + v74 * 4))
    {
      v78 = &v99;
      v79 = &v100;
LABEL_140:
      v107.i32[4 * v78->u32[v79->u32[v74]] + v74] = 1;
    }

    if (++v74 != 4)
    {
      continue;
    }

    break;
  }

  v80 = 0;
  v81 = 0;
  v82 = 0;
  v101 = 0uLL;
  v99 = xmmword_23A29C2D0;
  v100 = xmmword_23A29C2D0;
  v83 = v9[2] & 0xFFFFFFFFFFE7FFFFLL;
  v84 = vandq_s8(*v9, xmmword_23A29C880);
  v85 = v84.u64[1];
  v9[2] = v83;
  *v9 = v84;
  v86 = &v107;
  do
  {
    v87 = 0;
    v88 = 0;
    do
    {
      if (v86->i32[v87])
      {
        v89 = (v85 >> 21) & 3;
        if (v87 > v89)
        {
          v89 = v87;
        }

        v85 = v85 & 0xFFFFFFFFFF9FFFFFLL | (v89 << 21);
        v90 = (v83 >> 19) & 3;
        if (v82 > v90)
        {
          LOBYTE(v90) = v82;
        }

        v83 = v83 & 0xFFFFFFFFFFE7FFFFLL | ((v90 & 3) << 19);
        v88 = 1;
        *(&v101 + v87) = 1;
        ++v81;
        v9[1] = v85;
        v9[2] = v83;
        v100.i32[v87] = v82;
        v99.i32[v82] = v80;
      }

      ++v87;
    }

    while (v87 != 4);
    if (v88)
    {
      ++v82;
    }

    ++v80;
    ++v86;
  }

  while (v80 != 4);
  v91 = v83 & 0xFFFFFFFFFFFE01FFLL | ((v99.i8[0] & 3) << 9) & 0x7FF | ((v99.i8[4] & 3) << 11) & 0x1FFF | ((v99.i8[8] & 3) << 13) & 0x7FFF | ((v99.i8[12] & 3) << 15);
  v9[1] = v85 & 0xFFFFFFFF80787FFFLL | ((v101 & 1) << 18) & 0xFFFFFFFFF87FFFFFLL | ((BYTE4(v101) & 1) << 17) & 0xFFFFFFFFF87FFFFFLL | ((BYTE8(v101) & 1) << 16) & 0xFFFFFFFFF87FFFFFLL | ((BYTE12(v101) & 1u) << 15) | ((v100.i8[0] & 3) << 23) & 0xF9FFFFFF | ((v100.i8[4] & 3) << 25) | ((v100.i8[8] & 3) << 27) | ((v100.i8[12] & 3) << 29);
  v9[2] = v91;
  *v9 = v84.i64[0] | (((v81 - 1) & 3) << 36);
LABEL_155:
  v39 = v8;
LABEL_156:
  v92 = *MEMORY[0x277D85DE8];
  return v39;
}

char *AddOp(uint64_t a1, unsigned __int8 a2, _DWORD *a3, _DWORD *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v16 = &a9;
  do
  {
    v10 = v16;
    v11 = *v16;
    v16 += 2;
    v12 = v10[1];
    v13 = &v17[v9];
    *v13 = v11;
    v13[1] = v12;
    ++v9;
  }

  while (v11 | v12);
  result = AddOpv(a1, a2, a3, a4, a5, v17);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

char *SrcSwizzle(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, uint64_t a5, uint32x4_t *a6, uint64_t a7, uint64_t a8)
{
  v8 = vandq_s8(vshlq_u32(*a6, xmmword_23A29C890), xmmword_23A29C8A0);
  *v8.i8 = vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  v30 = (v8.i32[0] | v8.i32[1]);
  v9 = a3[3];
  v27 = a3[2];
  v28 = v9;
  v29 = a3[4];
  v10 = a3[1];
  v25 = *a3;
  v26 = v10;
  if (a5)
  {
    DWORD2(v25) = a4;
    if (HIDWORD(v26) >= 4)
    {
      if (HIDWORD(v26) == 4)
      {
        *&v26 = __PAIR64__(HIDWORD(v25), a4);
        DWORD2(v26) = 8;
        if (a4 >= 3)
        {
          LODWORD(v26) = 2;
          DWORD1(v26) = 2 * HIDWORD(v25);
        }
      }
    }

    else
    {
      *&v26 = __PAIR64__(HIDWORD(v25), a4);
      DWORD2(v26) = 4;
    }

    return AddOp(a1, 0x39u, 0, a2, 0, a6, a7, a8, &v25);
  }

  else
  {
    v11 = *(a2 + 8);
    DWORD2(v25) = v11;
    if (HIDWORD(v26) >= 4)
    {
      if (HIDWORD(v26) == 4)
      {
        *&v26 = __PAIR64__(HIDWORD(v25), v11);
        DWORD2(v26) = 8;
        if (v11 >= 3)
        {
          LODWORD(v26) = 2;
          DWORD1(v26) = 2 * HIDWORD(v25);
        }
      }
    }

    else
    {
      *&v26 = __PAIR64__(HIDWORD(v25), v11);
      DWORD2(v26) = 4;
    }

    v13 = v29;
    *(a2 + 48) = v28;
    *(a2 + 64) = v13;
    v14 = v27;
    *(a2 + 16) = v26;
    *(a2 + 32) = v14;
    *a2 = v25;
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    v17 = a6->i32[0];
    v18 = a6->i32[1];
    if (a6->i32[0] > 1)
    {
      v19 = *(a2 + 56);
      if (v17 != 2)
      {
        LODWORD(v19) = 0;
        if (v17 == 3)
        {
          v19 = HIDWORD(v16);
        }
      }
    }

    else
    {
      v19 = *(a2 + 48);
      if (v17)
      {
        LODWORD(v19) = 0;
        if (v17 == 1)
        {
          v19 = HIDWORD(v15);
        }
      }
    }

    v20 = a6->i32[2];
    if (v18 > 1)
    {
      v21 = *(a2 + 56);
      if (v18 != 2)
      {
        LODWORD(v21) = 0;
        if (v18 == 3)
        {
          v21 = HIDWORD(v16);
        }
      }
    }

    else
    {
      v21 = *(a2 + 48);
      if (v18)
      {
        LODWORD(v21) = 0;
        if (v18 == 1)
        {
          v21 = HIDWORD(v15);
        }
      }
    }

    v22 = a6->i32[3];
    if (v20 > 1)
    {
      v23 = *(a2 + 56);
      if (v20 != 2)
      {
        LODWORD(v23) = 0;
        if (v20 == 3)
        {
          v23 = HIDWORD(v16);
        }
      }
    }

    else
    {
      v23 = *(a2 + 48);
      if (v20)
      {
        LODWORD(v23) = 0;
        if (v20 == 1)
        {
          v23 = HIDWORD(v15);
        }
      }
    }

    if (v22 > 1)
    {
      v24 = *(a2 + 56);
      if (v22 != 2)
      {
        LODWORD(v24) = 0;
        if (v22 == 3)
        {
          v24 = HIDWORD(v16);
        }
      }
    }

    else
    {
      v24 = *(a2 + 48);
      if (v22)
      {
        LODWORD(v24) = 0;
        if (v22 == 1)
        {
          v24 = HIDWORD(v15);
        }
      }
    }

    *(a2 + 48) = v19 | (v21 << 32);
    *(a2 + 56) = v23 | (v24 << 32);
    return *(*(a1 + 104) + 8);
  }
}

char *DstSwizzleMask(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint32x4_t *a5, uint32x4_t *a6, uint64_t a7, uint64_t a8)
{
  v8 = vorrq_s8(vandq_s8(vshlq_u32(*a5, xmmword_23A29C8B0), xmmword_23A29C8E0), vandq_s8(vshlq_u32(*a6, xmmword_23A29C8C0), xmmword_23A29C8D0));
  *v8.i8 = vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  v10 = (v8.i32[0] | v8.i32[1]);
  if (a4)
  {
    return AddOp(a1, 0x6Eu, 0, a2, &v10, a6, a7, a8, a3);
  }

  else
  {
    return AddOp(a1, 0, 0, a2, &v10, a6, a7, a8, a3);
  }
}

char *SetAddressRegister(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  *&v10 = 0x100000001;
  *(&v10 + 1) = 0x100000001;
  v17 = v10;
  v18 = xmmword_23A29C8F0;
  v11 = **(a1 + 5);
  if (v11)
  {
    *(v14 + 8) = v17;
    v12 = *(v11 + 24);
    LODWORD(v14[0]) = 4;
    DWORD1(v14[0]) = v12;
    *(&v14[1] + 8) = v18;
    *(&v14[2] + 8) = xmmword_23A29BDD0;
    *(&v14[3] + 1) = 0x300000002;
    v15 = *a1;
  }

  else
  {
    AddBinding(a1, v14, v16, 4, &v17, 0);
  }

  return AddOp(a1, 0x48u, 0, v14, 0, a6, a7, a8, a2);
}

char *Load(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  v12 = *(a3 + 40);
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      if (v12 != 4)
      {
        return result;
      }

      *v18 = 116737;
    }

    return AddOp(a1, 0x98u, 0, a2, 0, a6, a7, a8, a4);
  }

  else if (v12 == 1)
  {
    SetAddressRegister(a1, a4, a3, a4, a5, a6, a7, a8);
    v13 = *(a3 + 16);
    *v18 = *a3;
    *&v18[16] = v13;
    v14 = *(a3 + 48);
    *&v18[32] = *(a3 + 32);
    v19 = v14;
    v20 = *(a3 + 64);
    *&v18[24] = *(a2 + 24);
    *&v18[8] = *(a2 + 8);
    return AddOp(a1, 0, 0, a2, 0, v15, v16, v17, v18);
  }

  else if (v12 == 2)
  {
    return AddOp(a1, 0x7Au, 0, a2, 0, a6, a7, a8, a4);
  }

  return result;
}

char *glpPrimitiveTypeToString(unsigned int a1)
{
  if (a1 >= 0x4F)
  {
    abort();
  }

  return off_278B497A0[a1];
}

uint64_t glpGetVectorType(int a1, int a2)
{
  if ((a2 - 5) <= 0xFFFFFFFB)
  {
    goto LABEL_14;
  }

  if (a1 <= 8)
  {
    if (a1 == 1)
    {
      v2 = &GLP_VECTOR_TYPES;
      return v2[a2 - 1];
    }

    if (a1 == 5)
    {
      v2 = &unk_23A29C928;
      return v2[a2 - 1];
    }

LABEL_14:
    abort();
  }

  if (a1 == 9)
  {
    v2 = &unk_23A29C938;
    return v2[a2 - 1];
  }

  if (a1 == 36)
  {
    v2 = &unk_23A29C948;
    return v2[a2 - 1];
  }

  if (a1 != 62)
  {
    goto LABEL_14;
  }

  v2 = &unk_23A29C918;
  return v2[a2 - 1];
}

uint64_t glpPrimitiveTypeGetGLType(unsigned int a1)
{
  if (a1 >= 0x4F)
  {
    abort();
  }

  return dword_23A29C9A0[a1];
}

uint64_t glpPrimitiveTypeGetCategory(unsigned int a1)
{
  if (a1 >= 0x4F)
  {
    abort();
  }

  return dword_23A29CADC[a1];
}

uint64_t glpPrimitiveVectorGetLength(uint64_t a1)
{
  v1 = a1;
  result = 2;
  switch(v1)
  {
    case 2:
    case 6:
    case 10:
    case 37:
    case 63:
      return result;
    case 3:
    case 4:
      result = a1;
      break;
    case 7:
    case 11:
    case 38:
    case 64:
      result = 3;
      break;
    case 8:
    case 12:
    case 39:
    case 65:
      result = 4;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveVectorGetElementType(int a1)
{
  result = 1;
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
      return result;
    case 6:
    case 7:
    case 8:
      result = 5;
      break;
    case 10:
    case 11:
    case 12:
      result = 9;
      break;
    case 37:
    case 38:
    case 39:
      result = 36;
      break;
    case 63:
    case 64:
    case 65:
      result = 62;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetColumns(int a1)
{
  result = 2;
  switch(a1)
  {
    case 13:
    case 22:
    case 23:
    case 66:
    case 69:
    case 70:
      return result;
    case 14:
    case 24:
    case 25:
    case 67:
    case 71:
    case 72:
      result = 3;
      break;
    case 15:
    case 26:
    case 27:
    case 68:
    case 73:
    case 74:
      result = 4;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetRows(int a1)
{
  result = 2;
  switch(a1)
  {
    case 13:
    case 24:
    case 26:
    case 66:
    case 71:
    case 73:
      return result;
    case 14:
    case 22:
    case 27:
    case 67:
    case 69:
    case 74:
      result = 3;
      break;
    case 15:
    case 23:
    case 25:
    case 68:
    case 70:
    case 72:
      result = 4;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetColumnType(int a1)
{
  result = 2;
  switch(a1)
  {
    case 13:
    case 24:
    case 26:
      return result;
    case 14:
    case 22:
    case 27:
      result = 3;
      break;
    case 15:
    case 23:
    case 25:
      result = 4;
      break;
    case 66:
    case 71:
    case 73:
      result = 63;
      break;
    case 67:
    case 69:
    case 74:
      result = 64;
      break;
    case 68:
    case 70:
    case 72:
      result = 65;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetRowType(int a1)
{
  result = 2;
  switch(a1)
  {
    case 13:
    case 22:
    case 23:
      return result;
    case 14:
    case 24:
    case 25:
      result = 3;
      break;
    case 15:
    case 26:
    case 27:
      result = 4;
      break;
    case 66:
    case 69:
    case 70:
      result = 63;
      break;
    case 67:
    case 71:
    case 72:
      result = 64;
      break;
    case 68:
    case 73:
    case 74:
      result = 65;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetElementType(int a1)
{
  result = 1;
  switch(a1)
  {
    case 13:
    case 14:
    case 15:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
      return result;
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
      result = 62;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveSamplerGetPPTextarget(int a1)
{
  result = 4;
  switch(a1)
  {
    case 16:
    case 40:
    case 48:
      return result;
    case 17:
    case 41:
    case 49:
      result = 3;
      break;
    case 18:
    case 42:
    case 50:
      result = 1;
      break;
    case 19:
    case 43:
    case 51:
      result = 0;
      break;
    case 20:
      result = 7;
      break;
    case 21:
      result = 6;
      break;
    case 28:
    case 44:
    case 52:
      result = 2;
      break;
    case 29:
      result = 5;
      break;
    case 30:
    case 45:
    case 53:
      result = 9;
      break;
    case 31:
    case 46:
    case 54:
      result = 10;
      break;
    case 32:
    case 47:
    case 55:
      result = 13;
      break;
    case 33:
      result = 11;
      break;
    case 34:
      result = 12;
      break;
    case 35:
      result = 8;
      break;
    case 56:
    case 58:
    case 60:
      result = 14;
      break;
    case 57:
    case 59:
    case 61:
      result = 15;
      break;
    case 75:
    case 77:
    case 78:
      result = 16;
      break;
    case 76:
      result = 17;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveSamplerGetPPDatatype(int a1)
{
  result = 0;
  switch(a1)
  {
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 56:
    case 57:
    case 75:
    case 76:
      return result;
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 58:
    case 59:
    case 77:
      result = 2;
      break;
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 60:
    case 61:
    case 78:
      result = 3;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveTypeGetScalarType(uint64_t a1)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category <= 1)
  {
    if (Category == 1)
    {
      return a1;
    }

    goto LABEL_12;
  }

  if (Category != 2)
  {
    if (Category == 3)
    {

      return glpPrimitiveMatrixGetElementType(a1);
    }

LABEL_12:
    abort();
  }

  return glpPrimitiveVectorGetElementType(a1);
}

uint64_t glpPrimitiveTypeReplaceScalarType(uint64_t a1, uint64_t a2)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category <= 1)
  {
    if (Category == 1)
    {
      return a2;
    }

    goto LABEL_8;
  }

  if (Category != 2)
  {
    if (Category != 3)
    {
      abort();
    }

    Columns = glpPrimitiveMatrixGetColumns(a1);
    Rows = glpPrimitiveMatrixGetRows(a1);
    if (a2 == 1)
    {
      v7 = &GLP_MATRIX_TYPES;
      return v7[3 * (Columns - 2) + Rows - 2];
    }

    if (a2 == 62)
    {
      v7 = &unk_23A29C97C;
      return v7[3 * (Columns - 2) + Rows - 2];
    }

LABEL_8:
    abort();
  }

  Length = glpPrimitiveVectorGetLength(a1);

  return glpGetVectorType(a2, Length);
}

uint64_t glpPrimitiveTypeGetScalarCount(uint64_t a1)
{
  result = glpPrimitiveTypeGetCategory(a1);
  if (result <= 1)
  {
    if (result != 1)
    {
      abort();
    }
  }

  else if (result == 2)
  {

    return glpPrimitiveVectorGetLength(a1);
  }

  else
  {
    if (result != 3)
    {
      abort();
    }

    Columns = glpPrimitiveMatrixGetColumns(a1);
    return glpPrimitiveMatrixGetRows(a1) * Columns;
  }

  return result;
}

uint64_t glpPrimitiveTypeGetBytesPerComponent(uint64_t a1)
{
  ScalarType = glpPrimitiveTypeGetScalarType(a1);
  if (ScalarType > 0x3E)
  {
    goto LABEL_7;
  }

  if (((1 << ScalarType) & 0x1000000222) == 0)
  {
    if (ScalarType == 62)
    {
      return 8;
    }

LABEL_7:
    abort();
  }

  return 4;
}

uint64_t glpPrimitiveTypeGetMaxComponentsPerVec4(uint64_t a1)
{
  ScalarType = glpPrimitiveTypeGetScalarType(a1);
  if (ScalarType > 0x3E)
  {
    goto LABEL_7;
  }

  if (((1 << ScalarType) & 0x1000000222) == 0)
  {
    if (ScalarType == 62)
    {
      v2 = 8;
      return 0x10 / v2;
    }

LABEL_7:
    abort();
  }

  v2 = 4;
  return 0x10 / v2;
}

uint64_t glpPrimitiveTypeGetNumVec4s(uint64_t a1)
{
  ColumnType = a1;
  Category = glpPrimitiveTypeGetCategory(a1);
  if ((Category - 1) >= 2)
  {
    if (Category != 3)
    {
      abort();
    }

    Columns = glpPrimitiveMatrixGetColumns(ColumnType);
    ColumnType = glpPrimitiveMatrixGetColumnType(ColumnType);
  }

  else
  {
    Columns = 1;
  }

  ScalarCount = glpPrimitiveTypeGetScalarCount(ColumnType);
  MaxComponentsPerVec4 = glpPrimitiveTypeGetMaxComponentsPerVec4(ColumnType);
  return Columns * ((ScalarCount + MaxComponentsPerVec4 - 1) / MaxComponentsPerVec4);
}

char *glpQualifierName(unsigned int a1)
{
  if (a1 >= 0x19)
  {
    abort();
  }

  return off_278B49A18[a1];
}

uint64_t glpMakeExpectedSignatureFromCall(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = glpCallNodeGetArgCount(a2);
  v7 = v6;
  v8 = v6;
  v9 = 8 * v6;
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFF0);
  bzero(v10, v9);
  MEMORY[0x28223BE20](v11);
  bzero(v10, v9);
  if (v7)
  {
    v12 = 0;
    do
    {
      v13 = glpCallNodeGetArg(a2, v12);
      *(a3 + 8 * v12) = glpASTNodeGetSaType(v13);
      *&v10[8 * v12] = 0;
      *&v10[8 * v12++] = 0;
    }

    while (v8 != v12);
  }

  Allocator = glpCompilerGetAllocator(a1);
  PrimitiveType = glpGetPrimitiveType(0);
  result = glpMakeFunctionType(Allocator, PrimitiveType, v8, a3, v10, v10);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLookUpAndAnalyzeCall(uint64_t a1, uint64_t a2, char *a3, size_t a4, uint64_t a5, uint64_t *a6, uint64_t **a7)
{
  NameTable = glpCompilerGetNameTable(a1);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2000000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2000000000;
  v48 = 0;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 0x40000000;
  v44[2] = __glpLookUpAndAnalyzeCall_block_invoke;
  v44[3] = &unk_278B49AE8;
  v44[4] = &v49;
  v44[5] = &v45;
  v44[6] = NameTable;
  v44[7] = a1;
  glpNameTableGet(NameTable, a3, a4, 0, v44);
  if (v46[3])
  {
    if (*(v50 + 6) == 4)
    {
      Allocator = glpCompilerGetAllocator(a1);
      v16 = glpAggregateTypeMangleName(a5, a3, a4, Allocator);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 0x40000000;
      v43[2] = __glpLookUpAndAnalyzeCall_block_invoke_2;
      v43[3] = &unk_278B49B10;
      v43[4] = &v45;
      if (glpNameTableGet(NameTable, v16, v17, 0, v43))
      {
        *(v50 + 6) = 5;
      }
    }
  }

  v18 = v46;
  v19 = v46[3];
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = *(v50 + 6);
  if (v20 != 5)
  {
    *a7 = 0;
    if (v20 <= 3)
    {
      if (v20 >= 4)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    if (v20 > 7)
    {
      if (v20 == 8)
      {
LABEL_15:
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v42);
        glpLogMessage(InfoLog, 0, &v42, "Call to non-function '%.*s'", v30, v31, v32, v33, a4);
        goto LABEL_16;
      }

      if ((v20 - 10) >= 4 && v20 != 9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v20 == 4)
      {
        if (glpAnalyzeCallToOverload(a1, v18[3], a2))
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }

      if (v20 == 7)
      {
        v35 = v18[3];
        *a7 = v35;
        FunctionObject = glpSubroutineTypeGetFunctionObject(v35[2]);
        if (glpAnalyzeCallToFunction(a1, FunctionObject, a2))
        {
          goto LABEL_9;
        }

        glpSubroutineTypeGetName((*a7)[2]);
        v36 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v42);
        v41 = **a7;
        glpLogMessage(v36, 0, &v42, "Arguments of call to subroutine uniform '%.*s' cannot be converted to match its type ('%.*s')", v37, v38, v39, v40, *(*a7 + 2));
LABEL_16:
        v23 = 0;
        goto LABEL_17;
      }
    }

    abort();
  }

  if ((*(v19 + 9) & 0x80) != 0)
  {
LABEL_11:
    if (!glpOperatorAsFunctionError(a1, a3, a4, a6, a2))
    {
      v24 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v42);
      glpLogMessage(v24, 0, &v42, "Call to undeclared function '%.*s'", v25, v26, v27, v28, a4);
    }

    goto LABEL_16;
  }

  *a7 = 0;
  FunctionObject = v18[3];
LABEL_9:
  ReturnType = glpFunctionTypeGetReturnType(*FunctionObject);
  glpASTNodeSetSaType(a2, ReturnType);
  glpFunctionCallNodeSetExtra(a2, FunctionObject);
LABEL_10:
  v23 = 1;
LABEL_17:
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
  return v23;
}

void *__glpLookUpAndAnalyzeCall_block_invoke(void *result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = result;
  if (a2 == 7 || a2 == 4)
  {
    *(*(result[4] + 8) + 24) = a2;
    *(*(result[5] + 8) + 24) = a3;
LABEL_4:
    *a5 = 1;
    return result;
  }

  result = glpNameTableGetGLSLVersion(result[6]);
  if (result != 1)
  {
    result = glpCompilerGetIOSVersion(v6[7]);
    if (result >= 9)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t __glpLookUpAndAnalyzeCall_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

unint64_t glpCalculateCallPrecision(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (a3[1] >> 6) & 0x20 | (((a3[1] & 0x1800) != 0) << 6);
  v6 = glpCallNodeGetArgCount(a2);
  v7 = v5;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v7 = v5;
    v10 = v6;
    do
    {
      v11 = glpCallNodeGetArg(a2, v8);
      v12 = *(a3[10] + 8 * v8);
      SaFlags = glpASTNodeGetSaFlags(v11);
      v14 = glpASTNodeGetSaFlags(v11);
      v15 = v14 & 0x1F;
      if (v14 & 0x1F) != 0 && v15 != 31 && v15 > v9 && (*(v12 + 48))
      {
        v9 = v14 & 0x1F;
      }

      v7 &= SaFlags;
      ++v8;
    }

    while (v10 != v8);
    if (v9)
    {
LABEL_12:
      if (!v5)
      {
        return v9;
      }

      goto LABEL_13;
    }
  }

  v16 = a3[9];
  if (v16)
  {
    v9 = *(v16 + 48) & 0x1FLL;
    goto LABEL_12;
  }

  v9 = 0;
  if (!v5)
  {
    return v9;
  }

LABEL_13:
  if (v9)
  {
    v17 = 0;
  }

  else
  {
    v17 = v9;
  }

  v18 = glpASTNodeGetSaFlags(a2);
  glpASTNodeSetSaFlags(a2, v17 | v18 | v7);
  return v9;
}

uint64_t glpHandleArgumentConversions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 72);
  if (v8)
  {
    DoesTypeRequirePrecision = glpCompilerDoesTypeRequirePrecision(a1, *v8);
    v10 = (a4 & 1) != 0 ? 0 : a4;
    if (!DoesTypeRequirePrecision)
    {
      a4 = v10;
    }
  }

  if (!*(a3 + 88))
  {
    return 1;
  }

  v11 = 0;
  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4;
  }

  while (1)
  {
    Expr = glpCallNodeGetArg(a2, v11);
    if (glpIsTypeConversionNode(Expr))
    {
      Expr = glpUnaryOperatorNodeGetExpr(Expr);
    }

    v14 = *(*(*(a3 + 80) + 8 * v11) + 48);
    if ((v14 & 0x800000) != 0)
    {
      if ((glpASTNodeGetSaFlags(Expr) & 0x60) == 0)
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v75);
        v66 = *(a3 + 32);
        v71 = *(a3 + 24);
        glpLogMessage(InfoLog, 0, &v75, "Argument %d to function '%.*s' must be a constant expression", v37, v38, v39, v40, v11 + 1);
        return 0;
      }

      v14 = *(*(*(a3 + 80) + 8 * v11) + 48);
    }

    if ((v14 & 0x1000000) != 0)
    {
      if (!glpIsLValueNode(Expr) || (*(glpLValueNodeGetVariableExtra(Expr) + 51) & 0x20) == 0)
      {
        v31 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v75);
        v65 = *(a3 + 32);
        v70 = *(a3 + 24);
        glpLogMessage(v31, 0, &v75, "Argument %d to function '%.*s' must be a reference to a stage in variable", v32, v33, v34, v35, v11 + 1);
        return 0;
      }

      Offset = glpDerefNodeGetOffset(Expr);
      if (Offset)
      {
        v16 = Offset;
        OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
        VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v16);
        if (OffsetExpr)
        {
          if (!glpIsConstantNode(OffsetExpr))
          {
            break;
          }
        }

        if (VectorElementExpr && !glpIsConstantNode(VectorElementExpr))
        {
          break;
        }
      }
    }

    if ((*(*(*(a3 + 80) + 8 * v11) + 51) & 4) != 0)
    {
      v19 = glpCommaResult(Expr);
      if (glpASTNodeGetKind(v19) != 81)
      {
        v41 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v75);
        v67 = *(a3 + 32);
        v72 = *(a3 + 24);
        glpLogMessage(v41, 0, &v75, "'out' or 'inout' argument %d to function '%.*s' must be an lvalue", v42, v43, v44, v45, v11 + 1);
        return 0;
      }

      if ((glpASTNodeGetSaFlags(v19) & 0x360) != 0)
      {
        v46 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v75);
        v68 = *(a3 + 32);
        v73 = *(a3 + 24);
        glpLogMessage(v46, 0, &v75, "'out' or 'inout' argument %d to function '%.*s' must be writable", v47, v48, v49, v50, v11 + 1);
        return 0;
      }
    }

    SaType = glpASTNodeGetSaType(Expr);
    if (glpCompilerDoesTypeRequirePrecision(a1, SaType))
    {
      v21 = *(*(*(a3 + 80) + 8 * v11) + 48);
      if ((v21 & 2) != 0)
      {
        DefaultPrecisionForType = glpASTNodeGetSaFlags(Expr) & 0x1F;
      }

      else
      {
        if (v21)
        {
          DefaultPrecisionForType = v12;
        }

        else
        {
          DefaultPrecisionForType = *(*(*(a3 + 80) + 8 * v11) + 48) & 0x1DLL;
        }

        if ((v21 & 1) != 0 && !a4)
        {
          DefaultPrecisionForType = v12;
          if ((glpASTNodeGetSaFlags(Expr) & 1) == 0)
          {
            v23 = glpASTNodeGetSaType(Expr);
            DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, v23);
            if (!DefaultPrecisionForType)
            {
              v56 = glpASTNodeGetSaType(Expr);
              Allocator = glpCompilerGetAllocator(a1);
              glpTypeHumanReadableDescription(v56, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
              v59 = v58;
              v60 = glpCompilerGetInfoLog(a1);
              glpASTNodeGetLocation(a2, &v75);
              glpLogMessage(v60, 0, &v75, "Expression of type '%.*s' - precision can not be inferred and no default precision available", v61, v62, v63, v64, v59);
              return 0;
            }
          }
        }
      }

      SaFlags = glpASTNodeGetSaFlags(Expr);
      v25 = glpASTNodeGetSaType(Expr);
      if (!glpTypeGetKind(v25) && DefaultPrecisionForType && DefaultPrecisionForType != (SaFlags & 0x1F))
      {
        if ((SaFlags & 0x1F) != 0x1FLL && (SaFlags & 0x1F) != 0)
        {
          v26 = glpCompilerGetAllocator(a1);
          glpASTNodeGetLocation(a2, &v75);
          glpMakeTypeConversionNode(v26, &v75, **(*(a3 + 80) + 8 * v11), DefaultPrecisionForType);
          v28 = v27;
          glpUnaryOperatorNodeSetExpr(v27, Expr);
          v29 = glpSANode(a1, v28);
          glpCallNodeSetArg(a2, v11, v29);
        }

        else
        {
          glpPushdownPrecision(a1, Expr, DefaultPrecisionForType);
        }
      }
    }

    if (++v11 >= *(a3 + 88))
    {
      return 1;
    }
  }

  v51 = glpCompilerGetInfoLog(a1);
  glpASTNodeGetLocation(a2, &v75);
  v69 = *(a3 + 32);
  v74 = *(a3 + 24);
  glpLogMessage(v51, 0, &v75, "Argument %d to function '%.*s' must be a direct reference to a stage in variable", v52, v53, v54, v55, v11 + 1);
  return 0;
}

uint64_t glpLowerCallToBodilessPPStreamOp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SaType = glpASTNodeGetSaType(a2);
  if (glpTypeGetKind(SaType))
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v66);
    glpLogMessage(InfoLog, 0, &v66, "return of ppstreamop is not a primitive type", v8, v9, v10, v11, v65);
    return glpSAFailed();
  }

  else
  {
    v13 = glpASTNodeGetSaType(a2);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v13);
    Allocator = glpCompilerGetAllocator(a1);
    glpASTNodeGetLocation(a2, &v66);
    glpMakeUndeterminedCallNode(Allocator, &v66);
    v17 = v16;
    v18 = glpCompilerGetAllocator(a1);
    glpASTNodeGetLocation(a2, &v66);
    glpMakeVariableIdentifierNode(v18, &v66, "$ppstreamop", 0xF8DF7DAF0000000BLL);
    glpUndeterminedCallNodeSetCallee(v17, v19);
    v20 = glpCompilerGetAllocator(a1);
    v21 = glpCompilerGetAllocator(a1);
    glpASTNodeGetLocation(a2, &v66);
    v22 = glpGetPrimitiveType(5u);
    v23 = glpCompilerGetAllocator(a1);
    v24 = glpGetPrimitiveType(5u);
    MutableValue = glpMakeMutableValue(v23, v24, 1, v25, v26, v27, v28, v29, 2);
    glpMakeConstantNode(v21, &v66, v22, MutableValue);
    glpCallNodeAddArg(v20, v17, v31);
    v32 = glpCompilerGetAllocator(a1);
    v33 = glpCompilerGetAllocator(a1);
    glpASTNodeGetLocation(a2, &v66);
    v34 = glpGetPrimitiveType(5u);
    v35 = glpCompilerGetAllocator(a1);
    v36 = glpGetPrimitiveType(5u);
    v42 = glpMakeMutableValue(v35, v36, 1, v37, v38, v39, v40, v41, PrimitiveType);
    glpMakeConstantNode(v33, &v66, v34, v42);
    glpCallNodeAddArg(v32, v17, v43);
    v44 = glpCompilerGetAllocator(a1);
    v45 = glpCompilerGetAllocator(a1);
    glpASTNodeGetLocation(a2, &v66);
    v46 = glpGetPrimitiveType(5u);
    v47 = glpCompilerGetAllocator(a1);
    v48 = glpGetPrimitiveType(5u);
    v54 = glpMakeMutableValue(v47, v48, 1, v49, v50, v51, v52, v53, *(a3 + 92));
    glpMakeConstantNode(v45, &v66, v46, v54);
    glpCallNodeAddArg(v44, v17, v55);
    v56 = glpCallNodeGetArgCount(a2);
    if (v56)
    {
      v57 = v56;
      for (i = 0; i != v57; ++i)
      {
        v59 = glpCompilerGetAllocator(a1);
        v60 = glpCallNodeGetArg(a2, i);
        glpCallNodeAddArg(v59, v17, v60);
      }
    }

    SaFlags = glpASTNodeGetSaFlags(a2);
    v62 = glpSANode(a1, v17);
    v12 = v62;
    if ((v62 + 1) >= 2)
    {
      v63 = glpASTNodeGetSaFlags(v62);
      glpASTNodeSetSaFlags(v12, SaFlags & 0xFFFFFFFFFFFFFFE0 | v63 & 0x1F);
    }
  }

  return v12;
}

uint64_t glpHandleSpecialOperatorFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (glpStringsEqual("$OP_pos", 0xA31C9B1600000007, *(a3 + 24), *(a3 + 32)))
  {

    return glpCallNodeGetArg(a2, 0);
  }

  else
  {
    if (!glpStringsEqual("$OP_neg", 0x34DF279C00000007uLL, *(a3 + 24), *(a3 + 32)))
    {
      abort();
    }

    Allocator = glpCompilerGetAllocator(a1);
    glpASTNodeGetLocation(a2, &v13);
    glpMakeNegateNode(Allocator, &v13);
    v9 = v8;
    v10 = glpCallNodeGetArg(a2, 0);
    glpUnaryOperatorNodeSetExpr(v9, v10);
    SaType = glpASTNodeGetSaType(v10);
    glpASTNodeSetSaType(v9, SaType);
    SaFlags = glpASTNodeGetSaFlags(v10);
    glpASTNodeSetSaFlags(v9, SaFlags);
    return v9;
  }
}

uint64_t glpSALowerCallArgsToAssignment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = a4;
  v97 = *MEMORY[0x277D85DE8];
  v7 = glpCallNodeGetArgCount(a2);
  v88 = a3;
  v8 = *(a3 + 80);
  v95 = 0uLL;
  v96 = 0;
  glpASTNodeGetLocation(a2, &v95);
  Allocator = glpCompilerGetAllocator(a1);
  v93 = v95;
  v94 = v96;
  glpMakeCommaExprNode(Allocator, &v93, 0);
  v91 = v10;
  v89 = &v87;
  MEMORY[0x28223BE20](v10);
  v12 = (&v87 - v11);
  bzero(&v87 - v11, v13);
  if (v7)
  {
    v14 = 0;
    v15 = v7;
    v16 = v12;
    do
    {
      *v16 = 0;
      v17 = glpCallNodeGetArg(a2, v14);
      if ((*(v8[v14] + 51) & 2) != 0)
      {
        v18 = v17;
        if (glpIsConstantNode(v17) || glpIsLValueNode(v18) && ((Offset = glpDerefNodeGetOffset(v18)) == 0 || ((v20 = Offset, OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset), VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v20), !OffsetExpr) || glpIsConstantNode(OffsetExpr)) && (!VectorElementExpr || glpIsConstantNode(VectorElementExpr))))
        {
          *v16 = v18;
        }

        else
        {
          v93.n128_u64[0] = 0;
          SaType = glpASTNodeGetSaType(v18);
          SaFlags = glpASTNodeGetSaFlags(v18);
          glpMakeTemporary(a1, SaType, SaFlags & 0x1F, v18, &v93, v16);
          v25 = glpCompilerGetAllocator(a1);
          glpCommaExprNodeAddExpr(v25, v91, v93.n128_i64[0]);
        }
      }

      ++v14;
      ++v16;
    }

    while (v15 != v14);
    v26 = v15;
    v27 = v8;
    do
    {
      if ((*(*v27 + 51) & 2) != 0)
      {
        v28 = glpCompilerGetAllocator(a1);
        v29 = *v27;
        v94 = v96;
        v93 = v95;
        glpMakeLValueNode(v28, &v93, v29[2], v29[3], v29);
        v31 = v30;
        glpASTNodeSetSaType(v30, **v27);
        glpASTNodeSetSaFlags(v31, (*v27)[6] & 0x1F);
        v32 = glpCompilerGetAllocator(a1);
        v33 = *v12;
        v93 = v95;
        v94 = v96;
        AssignFragment = glpMakeAssignFragment(a1, &v93, v31, v33);
        glpCommaExprNodeAddExpr(v32, v91, AssignFragment);
      }

      ++v27;
      ++v12;
      --v26;
    }

    while (v26);
    v35 = glpASTNodeGetSaFlags(a2);
    v36 = v90;
    glpASTNodeSetSaFlags(v90, v35 & 0x1F);
    v37 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v37, v91, v36);
    for (i = 0; i != v15; ++i)
    {
      v39 = glpCallNodeGetArg(a2, i);
      if ((*(v8[i] + 51) & 4) != 0)
      {
        Expr = v39;
        v41 = glpCompilerGetAllocator(a1);
        v42 = v8[i];
        v94 = v96;
        v93 = v95;
        glpMakeLValueNode(v41, &v93, *(v42 + 16), *(v42 + 24), v42);
        v44 = v43;
        glpASTNodeSetSaType(v43, *v8[i]);
        glpASTNodeSetSaFlags(v44, v8[i][6] & 0x1F);
        if (glpIsTypeConversionNode(Expr))
        {
          Expr = glpUnaryOperatorNodeGetExpr(Expr);
          v45 = glpCompilerGetAllocator(a1);
          v46 = glpASTNodeGetSaType(Expr);
          v47 = glpASTNodeGetSaFlags(Expr);
          v93 = v95;
          v94 = v96;
          glpMakeTypeConversionNode(v45, &v93, v46, v47 & 0x1F);
          v49 = v48;
          glpUnaryOperatorNodeSetExpr(v48, v44);
          v44 = glpSANode(a1, v49);
        }

        v93 = v95;
        v94 = v96;
        v50 = glpMakeAssignFragment(a1, &v93, Expr, v44);
        v51 = glpCompilerGetAllocator(a1);
        glpCommaExprNodeAddExpr(v51, v91, v50);
      }
    }
  }

  else
  {
    v52 = glpASTNodeGetSaFlags(a2);
    v53 = v90;
    glpASTNodeSetSaFlags(v90, v52 & 0x1F);
    v54 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v54, v91, v53);
  }

  v55 = v88;
  if (!*(v88 + 72))
  {
    goto LABEL_33;
  }

  v56 = glpCompilerGetAllocator(a1);
  v57 = *(v55 + 72);
  v94 = v96;
  v93 = v95;
  glpMakeLValueNode(v56, &v93, *(v57 + 16), *(v57 + 24), v57);
  v59 = v58;
  glpASTNodeSetSaType(v58, **(v55 + 72));
  glpASTNodeSetSaFlags(v59, *(*(v55 + 72) + 48) & 0x80000037FLL);
  v60 = glpCompilerNewTempName(a1);
  v62 = v61;
  v92 = 0;
  v63 = glpCompilerGetAllocator(a1);
  v93 = v95;
  v94 = v96;
  TypedVariableFragment = glpMakeTypedVariableFragment(v63, &v93, v60, v62, &v92, v59);
  v65 = v92;
  v66 = glpASTNodeGetSaFlags(v59);
  glpASTNodeSetSaFlags(v65, v66 & 0x1F);
  glpASTNodeSetSaType(v92, **(v55 + 72));
  v67 = glpSANode(a1, TypedVariableFragment);
  v68 = v67;
  if ((v67 + 1) > 1)
  {
    v69 = glpASTNodeGetSaFlags(v67);
    glpASTNodeSetSaFlags(v68, v69 & 0xFFFFFFFF7FFFFFFFLL);
    Extra = glpVariableDeclarationNodeGetExtra(v68);
    *(Extra + 48) &= ~0x80000000uLL;
    v71 = glpCompilerGetAllocator(a1);
    v72 = v91;
    glpCommaExprNodeAddExpr(v71, v91, v68);
    v73 = glpCompilerGetAllocator(a1);
    v93 = v95;
    v94 = v96;
    glpMakeVariableIdentifierNode(v73, &v93, v60, v62);
    v75 = glpSANode(a1, v74);
    v76 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v76, v72, v75);
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    if (glpCompilerDoesTrackPrecision(a1) && (glpASTNodeGetSaFlags(v90) & 0x1F) == 0)
    {
      v78 = v90;
      v79 = glpASTNodeGetSaFlags(v90);
      v80 = glpASTNodeGetSaFlags(v68);
      glpASTNodeSetSaFlags(v78, v80 & 0x1F | v79);
    }
  }

  else
  {
    v60 = glpSAFailed();
  }

  if ((v68 + 1) >= 2)
  {
LABEL_33:
    v81 = glpASTNodeGetSaFlags(a2);
    v82 = glpASTNodeGetSaType(a2);
    glpASTNodeSetSaType(v90, v82);
    v83 = glpSANode(a1, v91);
    v60 = v83;
    if ((v83 + 1) >= 2)
    {
      v84 = glpASTNodeGetSaFlags(v83);
      glpASTNodeSetSaFlags(v60, v84 & 0x1F | v81);
    }
  }

  v85 = *MEMORY[0x277D85DE8];
  return v60;
}

uint64_t glpInlineFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = *MEMORY[0x277D85DE8];
  if ((*(a3 + 10) & 4) != 0)
  {
    glpCompilerSetRequiresOutputPoints(a1, 1);
  }

  if (a4)
  {
    a4 = 0;
  }

  v98 = 0uLL;
  v99 = 0;
  glpASTNodeGetLocation(a2, &v98);
  v93[0] = a4;
  v93[1] = 0;
  v88[0] = a4;
  v93[2] = a1;
  Allocator = glpCompilerGetAllocator(a1);
  PointerHash = glpMakePointerHash(Allocator);
  v94 = PointerHash;
  v10 = glpCompilerGetAllocator(a1);
  v95 = glpMakePointerHash(v10);
  v96 = v98;
  v97 = v99;
  v11 = glpCompilerGetAllocator(a1);
  v91 = v98;
  v92 = v99;
  glpMakeCommaExprNode(v11, &v91, 0);
  v88[1] = v88;
  v89 = v12;
  v13 = *(a3 + 88);
  MEMORY[0x28223BE20](v12);
  v15 = v88 - ((v14 + 15) & 0xFFFFFFFF0);
  bzero(v15, v14);
  if (*(a3 + 88))
  {
    v16 = 0;
    v17 = v15;
    while (1)
    {
      *v17 = 0;
      v18 = glpCallNodeGetArg(a2, v16);
      if (!glpIsLValueNode(v18))
      {
        break;
      }

      Offset = glpDerefNodeGetOffset(v18);
      if (Offset)
      {
        v21 = Offset;
        OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
        VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v21);
        if (OffsetExpr)
        {
          if (!glpIsConstantNode(OffsetExpr))
          {
            break;
          }
        }

        if (VectorElementExpr && !glpIsConstantNode(VectorElementExpr))
        {
          break;
        }
      }

      v24 = *(*(a3 + 80) + 8 * v16);
      v25 = PointerHash;
      v26 = v18;
LABEL_25:
      glpPointerHashPut(v25, v24, v26, v20);
      ++v16;
      ++v17;
      if (v16 >= *(a3 + 88))
      {
        goto LABEL_26;
      }
    }

    if (glpIsConstantNode(v18))
    {
      if ((glpASTNodeGetSaFlags(v18) & 2) != 0)
      {
        SaType = glpASTNodeGetSaType(v18);
        DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, SaType);
      }

      else
      {
        DefaultPrecisionForType = glpASTNodeGetSaFlags(v18) & 0x1F;
      }

      glpASTNodeSetSaFlags(v18, DefaultPrecisionForType | 0x60);
      glpASTNodeGetSaFlags(v18);
      Value = glpConstantNodeGetValue(v18);
      v90 = 0;
      v28 = *(*(a3 + 80) + 8 * v16);
      v29 = *v28;
      if (Value)
      {
        v32 = 96;
LABEL_22:
        SaFlags = glpASTNodeGetSaFlags(v18);
        Temporary = glpMakeTemporary(a1, v29, SaFlags & 0x1F | v32, v18 & ((*(*(*(a3 + 80) + 8 * v16) + 48) << 38) >> 63), &v90, v17);
        if (v90)
        {
          v35 = glpCompilerGetAllocator(a1);
          glpCommaExprNodeAddExpr(v35, v89, v90);
        }

        v36 = glpCompilerGetAllocator(a1);
        glpASTNodeGetLocation(a2, &v91);
        glpMakeLValueNode(v36, &v91, Temporary[2], Temporary[3], Temporary);
        v38 = v37;
        glpASTNodeSetSaType(v37, **(*(a3 + 80) + 8 * v16));
        glpASTNodeSetSaFlags(v38, Temporary[6]);
        PointerHash = v94;
        v24 = *(*(a3 + 80) + 8 * v16);
        v25 = v94;
        v26 = v38;
        goto LABEL_25;
      }
    }

    else
    {
      v90 = 0;
      v28 = *(*(a3 + 80) + 8 * v16);
      v29 = *v28;
    }

    v32 = (v28[6] >> 17) & 0x100;
    goto LABEL_22;
  }

LABEL_26:
  if (*(a3 + 72))
  {
    v39 = glpCompilerNewTempName(a1);
    v41 = v40;
    v90 = 0;
    v42 = glpCompilerGetAllocator(a1);
    glpASTNodeGetLocation(a2, &v91);
    TypedVariableFragment = glpMakeTypedVariableFragment(v42, &v91, v39, v41, &v90, 0);
    if (*(*(a3 + 72) + 48))
    {
      v44 = v88[0];
    }

    else
    {
      v44 = *(*(a3 + 72) + 48) & 0x1FLL;
    }

    glpASTNodeSetSaFlags(v90, v44);
    glpASTNodeSetSaType(v90, **(a3 + 72));
    v45 = glpSANode(a1, TypedVariableFragment);
    v46 = glpCompilerGetAllocator(a1);
    v47 = v89;
    glpCommaExprNodeAddExpr(v46, v89, v45);
    v48 = glpASTNodeGetSaFlags(v45);
    glpASTNodeSetSaFlags(v45, v48 & 0xFFFFFFFF7FFFFF7FLL);
    Extra = glpVariableDeclarationNodeGetExtra(v45);
    *(Extra + 48) &= 0xFFFFFFFF7FFFFF7FLL;
    v50 = glpVariableDeclarationNodeGetExtra(v45);
    v51 = glpCompilerGetAllocator(a1);
    glpASTNodeGetLocation(a2, &v91);
    glpMakeLValueNode(v51, &v91, v50[2], v50[3], v50);
    v53 = v52;
    glpASTNodeSetSaType(v52, *v50);
    glpASTNodeSetSaFlags(v53, v50[6]);
    glpPointerHashPut(PointerHash, *(a3 + 72), v53, v54);
    v55 = glpCompilerGetAllocator(a1);
    v56 = (*(v55 + 8))(*v55, 16, "String: $return_value_inline");
    v57 = glpCompilerGetAllocator(a1);
    StringBuffer = glpMakeStringBuffer(v57);
    glpStringBufferAppendCString(StringBuffer, "$return_value_inline$");
    glpStringBufferAppendString(StringBuffer, *(a3 + 40), *(a3 + 48));
    *v56 = glpStringBufferGetString(StringBuffer);
    v56[1] = v59;
    glpPointerHashPut(v95, *(a3 + 72), v56, v60);
    if ((*(a3 + 9) & 0x18) != 0)
    {
      v61 = glpCompilerGetAllocator(a1);
      v50[13] = glpMakeMutableValue(v61, **(a3 + 72), 0, v62, v63, v64, v65, v66, v88[0]);
    }
  }

  else
  {
    v50 = 0;
    v47 = v89;
  }

  v67 = glpCompilerGetAllocator(a1);
  v68 = glpCompilerGetAllocator(a1);
  Body = glpFunctionDefinitionNodeGetBody(*(a3 + 64));
  v70 = glpDeepCopyASTNode(v68, Body, saInliningNodeReplacement, v93);
  glpCommaExprNodeAddExpr(v67, v47, v70);
  v71 = *(a3 + 88);
  if (v71)
  {
    for (i = 0; i < v71; ++i)
    {
      if ((*(*(*(a3 + 80) + 8 * i) + 51) & 4) != 0 && *&v15[8 * i])
      {
        Expr = glpCallNodeGetArg(a2, i);
        if (!glpIsLValueNode(Expr))
        {
          Expr = glpUnaryOperatorNodeGetExpr(Expr);
        }

        v74 = glpCompilerGetAllocator(a1);
        v75 = *&v15[8 * i];
        v91 = v98;
        v92 = v99;
        AssignFragment = glpMakeAssignFragment(a1, &v91, Expr, v75);
        v47 = v89;
        glpCommaExprNodeAddExpr(v74, v89, AssignFragment);
        v71 = *(a3 + 88);
      }
    }
  }

  if (v50)
  {
    v77 = v50[13];
    if (v77)
    {
      v50[8] = v77;
      v50[13] = 0;
      glpCommaExprNodeClearExprs(v47);
    }

    v78 = glpCompilerGetAllocator(a1);
    v92 = v99;
    v91 = v98;
    glpMakeLValueNode(v78, &v91, v50[2], v50[3], v50);
    v80 = v79;
    glpASTNodeSetSaType(v79, *v50);
    glpASTNodeSetSaFlags(v80, v50[6] & 0x80000037FLL);
    v81 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v81, v47, v80);
  }

  v82 = glpASTNodeGetSaFlags(a2);
  v83 = glpSANode(a1, v47);
  v84 = v83;
  if ((v83 + 1) >= 2)
  {
    v85 = glpASTNodeGetSaFlags(v83);
    glpASTNodeSetSaFlags(v84, v85 & 0x1F | v82);
  }

  v86 = *MEMORY[0x277D85DE8];
  return v84;
}

uint64_t saInliningNodeReplacement(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  Kind = glpASTNodeGetKind(a3);
  if (Kind > 74)
  {
    if (Kind > 80)
    {
      if (Kind == 81)
      {
        VariableExtra = glpLValueNodeGetVariableExtra(v3);
        v26 = glpPointerHashGet(*(a1 + 24), VariableExtra);
        if (v26)
        {
          v27 = v26;
          v28 = glpLValueNodeGetVariableExtra(v26);
          glpLValueNodeSetVariableExtra(v3, v28);
          SaFlags = glpASTNodeGetSaFlags(v3);
          v30 = glpASTNodeGetSaFlags(v27);
          glpASTNodeSetSaFlags(v3, SaFlags & 0xFFFFFFFFFFFFFFE0 | v30 & 0x1F);
        }

        else if ((*(VariableExtra + 50) & 0x8040) != 0)
        {
          v27 = 0;
        }

        else
        {
          v36 = (a2[1])(*a2, 160, "Variable Object (SA inlining)");
          v37 = *(VariableExtra + 16);
          *v36 = *VariableExtra;
          *(v36 + 16) = v37;
          v38 = *(VariableExtra + 80);
          v40 = *(VariableExtra + 32);
          v39 = *(VariableExtra + 48);
          *(v36 + 64) = *(VariableExtra + 64);
          *(v36 + 80) = v38;
          *(v36 + 32) = v40;
          *(v36 + 48) = v39;
          v41 = *(VariableExtra + 144);
          v43 = *(VariableExtra + 96);
          v42 = *(VariableExtra + 112);
          *(v36 + 128) = *(VariableExtra + 128);
          *(v36 + 144) = v41;
          *(v36 + 96) = v43;
          *(v36 + 112) = v42;
          glpASTNodeGetLocation(v3, &v62);
          glpMakeLValueNode(a2, &v62, *(v36 + 16), *(v36 + 24), v36);
          v27 = v44;
          glpASTNodeSetSaType(v44, *v36);
          glpASTNodeSetSaFlags(v27, *(v36 + 48));
          glpPointerHashPut(*(a1 + 24), VariableExtra, v27, v45);
          glpLValueNodeSetVariableExtra(v3, v36);
        }

        if (glpASTNodeGetSaFlags(v3))
        {
          v46 = glpASTNodeGetSaFlags(v3);
          glpASTNodeSetSaFlags(v3, v46 & 0xFFFFFFFFFFFFFFE0 | *a1);
        }

        v47 = glpPointerHashGet(*(a1 + 32), VariableExtra);
        if (v47)
        {
          glpLValueNodeSetVariableName(v3, *v47, v47[1]);
        }

        if (v27 && glpIsDerefNode(v27) && glpDerefNodeGetOffset(v27))
        {
          Offset = glpDerefNodeGetOffset(v27);
          v49 = glpDerefNodeGetOffset(v3);
          if (!v49)
          {
            glpAddOffsetIfNeeded(a2, v3);
            v49 = glpDerefNodeGetOffset(v3);
          }

          glpOffsetNodeGetOffsetExpr(v49);
          glpOffsetNodeGetSwizzle(v49);
          glpOffsetNodeGetVectorElementExpr(v49);
          if (glpOffsetNodeGetOffsetExpr(Offset))
          {
            glpOffsetNodeGetOffsetExpr(Offset);
            if (v49 && glpOffsetNodeGetOffsetExpr(v49))
            {
              v50 = *(a1 + 16);
              glpASTNodeGetLocation(v3, &v62);
              OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
              v52 = glpOffsetNodeGetOffsetExpr(v49);
              AddFragment = glpMakeAddFragment(v50, &v62, OffsetExpr, v52);
            }

            else
            {
              AddFragment = glpOffsetNodeGetOffsetExpr(Offset);
            }

            glpOffsetNodeSetOffsetExpr(v49, AddFragment);
          }

          if (glpOffsetNodeGetBankIndex(Offset))
          {
            BankIndex = glpOffsetNodeGetBankIndex(Offset);
            glpOffsetNodeSetBankIndex(v49, BankIndex);
          }

          Swizzle = glpOffsetNodeGetSwizzle(Offset);
          v56 = glpOffsetNodeGetSwizzle(v49);
          if (Swizzle)
          {
            if (v56)
            {
              v57 = v56 & 7;
              if ((v56 & 7) != 0)
              {
                v58 = 0;
                v59 = 2 * v57;
                do
                {
                  v57 = (((Swizzle >> (2 * ((v56 >> (v58 + 3)) & 3) + 3)) & 3) << (v58 + 3)) | v57 & ~(24 << v58);
                  v58 += 2;
                }

                while (v59 != v58);
              }
            }

            else
            {
              v57 = Swizzle;
            }
          }

          else
          {
            v57 = v56;
          }

          glpOffsetNodeSetSwizzle(v49, v57);
          if (glpOffsetNodeGetVectorElementExpr(Offset))
          {
            VectorElementExpr = glpOffsetNodeGetVectorElementExpr(Offset);
            glpOffsetNodeSetVectorElementExpr(v49, VectorElementExpr);
          }

          if (glpOffsetNodeGetPreSwizzlePrimitiveType(Offset))
          {
            PreSwizzlePrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(Offset);
            glpOffsetNodeSetPreSwizzlePrimitiveType(v49, PreSwizzlePrimitiveType);
          }
        }

        goto LABEL_37;
      }

      if (Kind == 84)
      {
        v3 = glpSAInlinePPStreamOpFixup(*(a1 + 16), v3);
        goto LABEL_37;
      }
    }

    else
    {
      if (Kind == 75)
      {
        v24 = 0;
        *(a1 + 8) = 1;
        return v24;
      }

      if (Kind == 80)
      {
        Extra = glpOffsetNodeGetExtra(v3);
        v8 = (a2[1])(*a2, 32, "Offest Object (SA inlining)");
        v9 = Extra[1];
        *v8 = *Extra;
        v8[1] = v9;
        glpOffsetNodeSetExtra(v3, v8);
        goto LABEL_37;
      }
    }

LABEL_30:
    if ((glpASTNodeGetSaFlags(v3) & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_36:
    v31 = glpASTNodeGetSaFlags(v3);
    glpASTNodeSetSaFlags(v3, v31 & 0xFFFFFFFFFFFFFFE0 | *a1);
    goto LABEL_37;
  }

  if (Kind)
  {
    if (Kind == 3)
    {
      if ((glpASTNodeGetSaFlags(v3) & 0x1F) != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (Kind == 46)
    {
      v10 = glpVariableDeclarationNodeGetExtra(v3);
      v11 = *(a1 + 24);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 0x40000000;
      v64[2] = __saInliningNodeReplacement_block_invoke;
      v64[3] = &__block_descriptor_tmp_6;
      v64[4] = a2;
      v64[5] = v10;
      v64[6] = v3;
      v12 = glpPointerHashCache_b(v11, v10, v64);
      v13 = glpLValueNodeGetVariableExtra(v12);
      glpVariableDeclarationNodeSetExtra(v3, v13);
      v14 = *(v13 + 48);
      if (v14)
      {
        *(v13 + 48) = *a1 | v14 & 0xFFFFFFFFFFFFFFE0;
        v15 = glpASTNodeGetSaFlags(v3);
        glpASTNodeSetSaFlags(v3, v15 & 0xFFFFFFFFFFFFFFE0 | *a1);
      }

      v16 = glpPointerHashGet(*(a1 + 32), v10);
      if (v16)
      {
        glpVariableDeclarationNodeSetName(v3, *v16, v16[1]);
      }

      Initializer = glpVariableDeclarationNodeGetInitializer(v3);
      if (Initializer)
      {
        v18 = Initializer;
        if (glpIsAssignNode(Initializer) && (*(v13 + 49) & 2) != 0)
        {
          Lhs = glpBinaryOperatorNodeGetLhs(v18);
          Rhs = glpBinaryOperatorNodeGetRhs(v18);
          if (glpIsLValueNode(Lhs) && glpIsConstantNode(Rhs) && glpLValueNodeGetVariableExtra(Lhs) == v13)
          {
            v21 = glpDerefNodeGetOffset(Lhs);
            if (!v21 || (v22 = v21, !glpOffsetNodeGetOffsetExpr(v21)) && !glpOffsetNodeGetSwizzle(v22) && !glpOffsetNodeGetVectorElementExpr(v22))
            {
              v23 = glpLValueNodeGetVariableExtra(Lhs);
              *(v23 + 64) = glpConstantNodeGetValue(Rhs);
              glpVariableDeclarationNodeSetInitializer(v3, 0);
            }
          }
        }
      }

      goto LABEL_37;
    }

    goto LABEL_30;
  }

  if (glpTypeConversionNodeGetToPrecision(v3) & 1) != 0 || (glpASTNodeGetSaFlags(v3))
  {
    glpTypeConversionNodeSetToPrecision(v3, *a1);
    goto LABEL_36;
  }

LABEL_37:
  if (!v3)
  {
    return 0;
  }

  v32 = glpASTNodeGetSaFlags(v3);
  glpASTNodeSetSaFlags(v3, v32 & 0xFFFFFFFFFFFFFF1FLL);
  ValueHash = glpCompilerGetValueHash(*(a1 + 16));
  v34 = glpConstantFold(a2, ValueHash, v3);
  v24 = v34;
  if (v34)
  {
    v62 = *(a1 + 40);
    v63 = *(a1 + 56);
    glpASTNodeSetLocation(v34, &v62);
  }

  return v24;
}

uint64_t __saInliningNodeReplacement_block_invoke(void *a1)
{
  v2 = (*(a1[4] + 8))(*a1[4], 160, "VariableObject (SA inlining)");
  v3 = a1[5];
  v4 = v3[1];
  *v2 = *v3;
  *(v2 + 16) = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  *(v2 + 64) = v3[4];
  *(v2 + 80) = v7;
  *(v2 + 32) = v5;
  *(v2 + 48) = v6;
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[9];
  *(v2 + 128) = v3[8];
  *(v2 + 144) = v10;
  *(v2 + 96) = v8;
  *(v2 + 112) = v9;
  v11 = a1[4];
  glpASTNodeGetLocation(a1[6], &v15);
  glpMakeLValueNode(v11, &v15, *(v2 + 16), *(v2 + 24), v2);
  v13 = v12;
  glpASTNodeSetSaType(v12, *v2);
  glpASTNodeSetSaFlags(v13, *(v2 + 48));
  return v13;
}

char *glpQualifierKindToString(unsigned int a1)
{
  if (a1 >= 7)
  {
    abort();
  }

  return off_278B49B50[a1];
}

uint64_t glpQualifierKindOfNode(uint64_t a1)
{
  Kind = glpASTNodeGetKind(a1);
  if (Kind == 61)
  {
    return 5;
  }

  if (Kind == 60)
  {
    return 0;
  }

  if (Kind != 59 || (Qualifier = glpKeywordQualifierNodeGetQualifier(a1), Qualifier >= 0x19))
  {
    abort();
  }

  return dword_23A29CC20[Qualifier];
}

uint64_t glpParseQualifiers(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t *a5, void **a6, uint64_t *a7)
{
  v11 = a2;
  v12 = a1;
  if (!a3)
  {
    *a6 = 0;
    *a7 = 0;
LABEL_5:
    v15 = a4;
    v14 = 0;
    goto LABEL_6;
  }

  v13 = a3;
  if (glpIsKeywordQualifierNode(a3))
  {
    *a6 = 0;
    *a7 = 0;
    v14 = 1 << glpKeywordQualifierNodeGetQualifier(v13);
    a1 = v12;
    a2 = v11;
    a3 = v13;
    v15 = a4;
LABEL_6:

    return qualifierMaskToSAFlags(a1, a2, a3, v15, v14, a5);
  }

  if (glpIsLayoutQualifierNode(v13))
  {
    *a7 = 0;
    result = qualifierMaskToSAFlags(v12, v11, v13, a4, 0, a5);
    if (!result)
    {
      return result;
    }

    v17 = parseLayout(v12, v11, v13, a4, a6) == 0;
    return !v17;
  }

  if (glpIsSubroutineTypeListNode(v13))
  {
    *a6 = 0;
    *a7 = glpSANode(v12, v13);
    result = qualifierMaskToSAFlags(v12, v11, v13, a4 | 0x180000, 0, a5);
    if (!result)
    {
      return result;
    }

    v17 = *a7 == -1;
    return !v17;
  }

  if (!glpIsQualifierListNode(v13))
  {
LABEL_64:
    abort();
  }

  *a6 = 0;
  *a7 = 0;
  QualifierCount = glpQualifierListNodeGetQualifierCount(v13);
  if (!QualifierCount)
  {
    a1 = v12;
    a2 = v11;
    a3 = v13;
    goto LABEL_5;
  }

  v49 = a5;
  v51 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    Qualifier = glpQualifierListNodeGetQualifier(v13, v18);
    v21 = Qualifier;
    if (v19)
    {
      if (!glpIsKeywordQualifierNode(Qualifier))
      {
        goto LABEL_49;
      }

      v22 = glpKeywordQualifierNodeGetQualifier(v21);
      if (v22 > 0x12 || ((1 << v22) & 0x46000) == 0)
      {
        goto LABEL_49;
      }
    }

    v23 = glpQualifierKindOfNode(v21);
    if (glpIsKeywordQualifierNode(v21) && glpKeywordQualifierNodeGetQualifier(v21) == 4)
    {
      NameTable = glpCompilerGetNameTable(v12);
      if (glpNameTableIsExtensionEnabled(NameTable, 0xEu))
      {
        v23 = 4;
      }
    }

    if (v23 < HIDWORD(v51))
    {
      v25 = glpCompilerGetNameTable(v12);
      if (glpNameTableGetGLSLVersion(v25) <= 9)
      {
        if (glpIsKeywordQualifierNode(v21))
        {
          v37 = glpKeywordQualifierNodeGetQualifier(v21);
          glpQualifierName(v37);
        }

        InfoLog = glpCompilerGetInfoLog(v12);
        glpASTNodeGetLocation(v21, &v52);
        v46 = glpQualifierKindToString(v23);
        glpQualifierKindToString(HIDWORD(v51));
        v47 = v46;
        v36 = "%s qualifier %s%s%smust precede %s qualifiers";
        goto LABEL_62;
      }
    }

    if (glpIsKeywordQualifierNode(v21))
    {
      HIDWORD(v51) = v23;
      v26 = glpKeywordQualifierNodeGetQualifier(v21);
      v27 = 1 << v26;
      if (((1 << v26) & v51) != 0)
      {
        v28 = glpCompilerGetNameTable(v12);
        if (glpNameTableGetGLSLVersion(v28) < 0xA)
        {
          v38 = glpCompilerGetInfoLog(v12);
          glpASTNodeGetLocation(v21, &v52);
          v48 = glpQualifierName(v26);
          glpLogMessage(v38, 0, &v52, "Duplicate qualifier '%s'", v39, v40, v41, v42, v48);
          return 0;
        }
      }

      if (v26 - 6 > 2)
      {
        v19 = 0;
      }

      else
      {
        v29 = glpCompilerGetNameTable(v12);
        v19 = !glpNameTableIsExtensionEnabled(v29, 0xEu);
      }

      LODWORD(v51) = v27 | v51;
    }

    else if (glpIsLayoutQualifierNode(v21))
    {
      v19 = 0;
    }

    else
    {
      if (!glpIsSubroutineTypeListNode(v21) || *a7)
      {
        goto LABEL_64;
      }

      v30 = glpSANode(v12, v21);
      *a7 = v30;
      if (v30 == -1)
      {
        return 0;
      }

      v19 = 0;
      a4 |= 0x180000uLL;
    }

    ++v18;
  }

  while (QualifierCount != v18);
  if (v19)
  {
LABEL_49:
    InfoLog = glpCompilerGetInfoLog(v12);
    glpASTNodeGetLocation(v13, &v52);
    v36 = "'centroid', 'sample' and 'patch' must be directly followed by 'in', 'out' or 'varying'";
LABEL_62:
    glpLogMessage(InfoLog, 0, &v52, v36, v32, v33, v34, v35, v47);
    return 0;
  }

  result = qualifierMaskToSAFlags(v12, v11, v13, a4, v51, v49);
  if (result)
  {
    for (i = 0; i != QualifierCount; ++i)
    {
      v44 = glpQualifierListNodeGetQualifier(v13, i);
      if (glpIsLayoutQualifierNode(v44))
      {
        if (!*a6)
        {
          Allocator = glpCompilerGetAllocator(v12);
          *a6 = glpMakeLayoutObject(Allocator);
        }

        result = parseLayout(v12, v11, v44, *v49, a6);
        if (!result)
        {
          break;
        }
      }

      result = 1;
    }
  }

  return result;
}

uint64_t qualifierMaskToSAFlags(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  *a6 = a4;
  v9 = a5 & 0x1F80000;
  if (a2 > 0xC)
  {
    goto LABEL_17;
  }

  if (((1 << a2) & 0x772) != 0)
  {
    if ((a5 & 0x1F80000u) < 0x200000)
    {
      if (!v9 || v9 == 0x80000)
      {
        goto LABEL_21;
      }

      if (v9 == 0x100000)
      {
        v12 = 2;
        goto LABEL_20;
      }
    }

    else if ((a5 & 0x1F80000u) >= 0x800000)
    {
      if (v9 == 0x800000)
      {
        v12 = 8;
        goto LABEL_20;
      }

      if (v9 == 0x1000000)
      {
        v12 = 16;
        goto LABEL_20;
      }
    }

    else
    {
      if (v9 == 0x200000)
      {
        v12 = 1;
        goto LABEL_20;
      }

      if (v9 == 0x400000)
      {
        v12 = 4;
LABEL_20:
        *a6 = v12 | a4;
        goto LABEL_21;
      }
    }

LABEL_17:
    Allocator = glpCompilerGetAllocator(a1);
    StringBuffer = glpMakeStringBuffer(Allocator);
    qualifierMaskToStringBuffer(StringBuffer, v9);
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a3, &v131);
    CString = glpStringBufferGetCString(StringBuffer);
    qualifierContextToString(a2);
    glpLogMessage(InfoLog, 0, &v131, "Invalid precision qualifiers '%s' in %s context", v25, v26, v27, v28, CString);
    return 0;
  }

  if (v9)
  {
    v13 = glpCompilerGetAllocator(a1);
    v14 = glpMakeStringBuffer(v13);
    qualifierMaskToStringBuffer(v14, v9);
    v15 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a3, &v131);
    v16 = glpStringBufferGetCString(v14);
    qualifierContextToString(a2);
    glpLogMessage(v15, 0, &v131, "Precision qualifiers '%s' not allowed in %s context", v17, v18, v19, v20, v16);
    return 0;
  }

LABEL_21:
  v29 = a5 & 0x7E000;
  NameTable = glpCompilerGetNameTable(a1);
  GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
  Language = glpNameTableGetLanguage(NameTable);
  v33 = glpNameTableIsExtensionEnabled(NameTable, 0xEu) || glpNameTableIsExtensionEnabled(NameTable, 0x23u);
  IsExtensionEnabled = glpNameTableIsExtensionEnabled(NameTable, 2u);
  v35 = (glpCompilerAllOutputsAreInvariant(a1) != 0) << 40;
  v36 = (a2 != 2) << 31;
  v37 = *a6;
  if (a2 == 7 && !Language)
  {
    v38 = (v37 & 0x120000000) != 0;
    v39 = (*a6 & 0x60000000) == 0;
    v40 = 1;
    goto LABEL_30;
  }

  v40 = (v37 & 0x140000000) != 0;
  if (a2 == 7 && Language == 4)
  {
    v39 = (*a6 & 0x60000000) == 0;
    v38 = 1;
    goto LABEL_30;
  }

  v38 = (v37 & 0x120000000) != 0;
  v39 = (*a6 & 0x60000000) == 0;
  if (a2 <= 4)
  {
    if (a2 <= 2 && a2)
    {
      if (a2 != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_58;
    }

LABEL_71:
    if (!v29)
    {
      goto LABEL_94;
    }

    v45 = glpCompilerGetAllocator(a1);
    v46 = glpMakeStringBuffer(v45);
    qualifierMaskToStringBuffer(v46, a5 & 0x7E000);
    v47 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a3, &v131);
    v48 = glpStringBufferGetCString(v46);
    qualifierContextToString(a2);
    glpLogMessage(v47, 0, &v131, "Storage qualifiers '%s' not allowed in %s context", v49, v50, v51, v52, v48);
    return 0;
  }

  if (a2 > 0xC)
  {
LABEL_51:
    v43 = v29 >> 13;
    if (v29 >> 13 < 2)
    {
      v44 = v37 | 0x2000000;
      goto LABEL_93;
    }

    if (v43 == 2)
    {
      v44 = v37 | 0x4000000;
      goto LABEL_93;
    }

    if (v43 != 4)
    {
      goto LABEL_103;
    }

    v44 = v37 | 0x6000000;
    goto LABEL_93;
  }

  if (((1 << a2) & 0x1940) != 0)
  {
    goto LABEL_71;
  }

  if (((1 << a2) & 0x600) == 0)
  {
    if (a2 != 7)
    {
      goto LABEL_51;
    }

LABEL_30:
    if ((a5 & 0x7E000u) >= 0x10000)
    {
      if ((a5 & 0x7E000u) >= 0x40000)
      {
        if (v29 != 0x40000)
        {
          goto LABEL_33;
        }

LABEL_61:
        if (GLSLVersion > 2)
        {
          goto LABEL_103;
        }

        if (Language != 3 && Language)
        {
          if (Language == 4)
          {
            goto LABEL_79;
          }

          goto LABEL_103;
        }

LABEL_92:
        v44 = v37 | v36 | v35 | 0x40000000;
        goto LABEL_93;
      }

      goto LABEL_66;
    }

    v42 = v29 == 0x4000;
    if ((a5 & 0x7E000u) < 0x4000)
    {
      if (v29)
      {
LABEL_42:
        if (v29 == 0x2000 && GLSLVersion >= 3 && !v40)
        {
          goto LABEL_79;
        }

        goto LABEL_103;
      }

      v55 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a3, &v131);
      v130 = qualifierContextToString(a2);
      glpLogMessage(v55, 0, &v131, "Storage qualifier required in %s context", v56, v57, v58, v59, v130);
      return 0;
    }

    goto LABEL_86;
  }

LABEL_58:
  if ((a5 & 0x7E000u) >= 0x10000)
  {
    if ((a5 & 0x7E000u) >= 0x40000)
    {
      if (v29 != 0x40000)
      {
LABEL_33:
        if (v29 != 270336)
        {
          if (v29 != 278528)
          {
            goto LABEL_103;
          }

          v41 = v33 && Language == 4;
          if (Language == 3)
          {
            v41 = 1;
          }

          if (GLSLVersion > 2 || !v41)
          {
            goto LABEL_103;
          }

          goto LABEL_92;
        }

        if (GLSLVersion <= 2 && Language == 3)
        {
LABEL_79:
          v54 = 2684354816;
          if (a2 == 2)
          {
            v54 = 0x20000000;
          }

          v44 = v37 | v54;
          goto LABEL_93;
        }

LABEL_103:
        v64 = glpCompilerGetAllocator(a1);
        v65 = glpMakeStringBuffer(v64);
        qualifierMaskToStringBuffer(v65, a5 & 0x7E000);
        v66 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a3, &v131);
        v67 = glpStringBufferGetCString(v65);
        qualifierContextToString(a2);
        glpLogMessage(v66, 0, &v131, "Invalid storage qualifiers '%s' in %s context", v68, v69, v70, v71, v67);
        return 0;
      }

      goto LABEL_61;
    }

LABEL_66:
    if (v29 == 0x10000)
    {
      if (v39)
      {
        v53 = 0x180000100;
        if (a2 == 2)
        {
          v53 = 0x100000000;
        }

        v44 = v53 | ((a2 == 7) << 35) | v37;
        goto LABEL_93;
      }
    }

    else if (v29 == 0x20000 && GLSLVersion <= 2 && !Language)
    {
      goto LABEL_79;
    }

    goto LABEL_103;
  }

  v42 = v29 == 0x4000;
  if ((a5 & 0x7E000u) >= 0x4000)
  {
LABEL_86:
    if (v42)
    {
      if (GLSLVersion < 3 || v38)
      {
        goto LABEL_103;
      }

      goto LABEL_92;
    }

    if (v29 != 0x8000 || !IsExtensionEnabled)
    {
      goto LABEL_103;
    }

    v44 = v37 | v36 | v35 | 0x60000000;
    goto LABEL_93;
  }

  if (v29)
  {
    goto LABEL_42;
  }

  v44 = v37 | v36;
LABEL_93:
  *a6 = v44;
LABEL_94:
  v60 = a5 & 0x1FE0;
  v61 = glpCompilerGetNameTable(a1);
  v62 = glpNameTableGetLanguage(v61);
  if (a2 <= 3)
  {
    if ((a2 - 2) >= 2 && a2)
    {
      if ((glpCompilerGetOptions(a1) & 1) == 0)
      {
        goto LABEL_113;
      }

      v88 = *a6;
      if (a3)
      {
        if (!glpIsVariableDeclarationNode(a3) || !glpVariableDeclarationNodeGetInitializer(a3) || (v88 & 0x160000000) != 0)
        {
          goto LABEL_113;
        }

        v88 = *a6;
      }

      else if ((v88 & 0x160000000) != 0)
      {
        goto LABEL_113;
      }

      v80 = v88 | 0x60;
      goto LABEL_171;
    }

LABEL_106:
    if ((a5 & 0x1FE0) != 0)
    {
      v72 = glpCompilerGetAllocator(a1);
      v73 = glpMakeStringBuffer(v72);
      qualifierMaskToStringBuffer(v73, a5 & 0x1FE0);
      v74 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a3, &v131);
      v75 = glpStringBufferGetCString(v73);
      qualifierContextToString(a2);
      glpLogMessage(v74, 0, &v131, "Auxiliary storage qualifiers '%s' not allowed in %s context", v76, v77, v78, v79, v75);
      return 0;
    }

    goto LABEL_172;
  }

  if (a2 <= 0xC)
  {
    if (((1 << a2) & 0x1980) == 0)
    {
      if (((1 << a2) & 0x600) == 0)
      {
        if (a2 == 6)
        {
          if ((a5 & 0x1FE0) != 0)
          {
            if (v60 != 2048)
            {
              if (v60 == 32)
              {
                v63 = *a6;
LABEL_127:
                v80 = v63 | 0x60;
                goto LABEL_171;
              }

LABEL_209:
              v122 = glpCompilerGetAllocator(a1);
              v123 = glpMakeStringBuffer(v122);
              qualifierMaskToStringBuffer(v123, a5 & 0x1FE0);
              v124 = glpCompilerGetInfoLog(a1);
              glpASTNodeGetLocation(a3, &v131);
              v125 = glpStringBufferGetCString(v123);
              qualifierContextToString(a2);
              glpLogMessage(v124, 0, &v131, "Invalid auxiliary storage qualifiers '%s' in %s context", v126, v127, v128, v129, v125);
              return 0;
            }

            v63 = *a6;
LABEL_170:
            v80 = v63 | 0x100;
            goto LABEL_171;
          }

          goto LABEL_172;
        }

        goto LABEL_108;
      }

LABEL_113:
      v63 = *a6;
      v81 = (*a6 >> 29) & 1;
      if (v62)
      {
        v82 = 0;
      }

      else
      {
        v82 = (*a6 & 0x20000000) != 0;
      }

      v83 = (v63 & 0x60000000) == 0 || v82;
      v84 = (v63 >> 30) & 1;
      v85 = v62 == 4 && (*a6 & 0x40000000) != 0;
      v86 = v83 | v85;
      if ((a5 & 0x1FE0u) > 0xFF)
      {
        if ((a5 & 0x1FE0u) <= 0x3FF)
        {
          if (v60 == 256)
          {
            if ((v86 & 1) == 0)
            {
              v80 = v63 | 0x40000000000;
              goto LABEL_171;
            }
          }

          else if (v60 == 512 && (v63 & 0x100000000) != 0)
          {
            v80 = v63 | 0xC00000000;
            goto LABEL_171;
          }

          goto LABEL_209;
        }

        if (v60 == 1024)
        {
          if ((v63 & 0x100000000) != 0)
          {
            v80 = v63 | 0x200000000;
            goto LABEL_171;
          }

          goto LABEL_209;
        }

        if (v60 != 2048 || (v63 & 0x160000000) != 0)
        {
          goto LABEL_209;
        }

        goto LABEL_170;
      }

      if ((a5 & 0x1FE0u) > 0x3F)
      {
        if (v60 == 64)
        {
          if ((v86 & 1) == 0)
          {
            v80 = v63 | 0x4000000000;
            goto LABEL_171;
          }
        }

        else if (v60 == 128 && a2 == 1)
        {
          if (v62 != 1)
          {
            LOBYTE(v84) = 0;
          }

          if (v62 != 2)
          {
            LODWORD(v81) = 0;
          }

          if ((v84 & 1) != 0 || v81)
          {
            v80 = v63 | 0x20000000000;
            goto LABEL_171;
          }
        }

        goto LABEL_209;
      }

      if ((a5 & 0x1FE0) != 0)
      {
        if (v60 == 32 && (v63 & 0x160000000) == 0)
        {
          goto LABEL_127;
        }

        goto LABEL_209;
      }

      goto LABEL_172;
    }

    goto LABEL_106;
  }

LABEL_108:
  if (a2 != 4)
  {
    v63 = *a6;
    v87 = *a6 & 0x6000000;
    if ((a5 & 0x1FE0u) > 0x7FF)
    {
      if (v60 == 4096)
      {
        if (v87 == 0x2000000)
        {
          v80 = v63 | 0x200;
          goto LABEL_171;
        }

        goto LABEL_209;
      }

      if (v60 != 2048)
      {
        goto LABEL_209;
      }
    }

    else
    {
      if ((a5 & 0x1FE0) == 0)
      {
        goto LABEL_172;
      }

      if (v60 != 32)
      {
        goto LABEL_209;
      }
    }

    if (v87 != 0x2000000)
    {
      goto LABEL_209;
    }

    goto LABEL_170;
  }

  if ((a5 & 0x1FE0) != 0)
  {
    if (v60 == 1024)
    {
      v80 = *a6 | 0x180000;
LABEL_171:
      *a6 = v80;
      goto LABEL_172;
    }

    goto LABEL_209;
  }

LABEL_172:
  result = parseInterpolationQualifiers(a1, a2, a3, a5, a6);
  if (result)
  {
    result = parseInterpolationQualifiers(a1, a2, a3, a5, a6);
    if (result)
    {
      v90 = glpCompilerGetNameTable(a1);
      v91 = glpNameTableGetGLSLVersion(v90);
      v92 = glpNameTableGetLanguage(v90);
      if (((1 << a2) & 0x1FD) != 0)
      {
        if ((a5 & 2) != 0)
        {
          v93 = glpCompilerGetAllocator(a1);
          v94 = glpMakeStringBuffer(v93);
          v95 = v94;
          v96 = a5 & 2;
LABEL_206:
          qualifierMaskToStringBuffer(v94, v96);
          v116 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(a3, &v131);
          v117 = glpStringBufferGetCString(v95);
          qualifierContextToString(a2);
          glpLogMessage(v116, 0, &v131, "Qualifiers '%s' not allowed in %s context", v118, v119, v120, v121, v117);
          return 0;
        }
      }

      else
      {
        v97 = *a6;
        v98 = v91 > 9 || v91 == 6;
        v99 = 0x8000000000;
        if (v98)
        {
          v99 = 0x10000000000;
        }

        if ((v97 & 0x10000000) != 0)
        {
          if ((a5 & 2) == 0)
          {
            goto LABEL_200;
          }
        }

        else
        {
          if ((a5 & 2) == 0)
          {
            goto LABEL_200;
          }

          v100 = v92 != 0;
          v101 = (*a6 & 0x20000000) == 0;
          if ((v97 & 0x20000000) == 0)
          {
            v100 = 1;
          }

          if ((v97 & 0x60000000) == 0)
          {
            v100 = 0;
          }

          v102 = (v97 >> 30) & 1;
          if (v92 != 4)
          {
            LODWORD(v102) = 0;
          }

          v103 = v100 & ~v102;
          if (v91 != 6)
          {
            v101 = 1;
          }

          v104 = v103 & v101;
          if (v91 == 2)
          {
            v105 = 0;
          }

          else
          {
            v105 = v102;
          }

          if ((v104 & 1) == 0 && !v105)
          {
            v106 = glpCompilerGetAllocator(a1);
            v107 = glpMakeStringBuffer(v106);
            qualifierMaskToStringBuffer(v107, a5 & 2);
            v108 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(a3, &v131);
            v109 = glpStringBufferGetCString(v107);
            qualifierContextToString(a2);
            glpLogMessage(v108, 0, &v131, "Invalid qualifiers '%s' in %s context", v110, v111, v112, v113, v109);
            return 0;
          }
        }

        *a6 = v97 | v99;
      }

LABEL_200:
      v114 = a5 & 1;
      if (((1 << a2) & 0x1E72) != 0)
      {
        if (v114)
        {
          *a6 |= 0x80000000000uLL;
        }
      }

      else if (v114)
      {
        v115 = glpCompilerGetAllocator(a1);
        v94 = glpMakeStringBuffer(v115);
        v95 = v94;
        v96 = v114;
        goto LABEL_206;
      }

      return 1;
    }
  }

  return result;
}

uint64_t parseLayout(uint64_t a1, int a2, uint64_t a3, unint64_t a4, void **a5)
{
  v36 = 0uLL;
  v37 = 0;
  glpASTNodeGetLocation(a3, &v36);
  LayoutPairCount = glpLayoutQualifierNodeGetLayoutPairCount(a3);
  if (!LayoutPairCount)
  {
    return 1;
  }

  v10 = LayoutPairCount;
  v11 = 0;
  while (1)
  {
    LayoutPair = glpLayoutQualifierNodeGetLayoutPair(a3, v11);
    Identifier = glpLayoutPairNodeGetIdentifier(LayoutPair);
    v15 = v14;
    v35 = 0;
    Allocator = glpCompilerGetAllocator(a1);
    v17 = glpLowerCaseCopyOfString(Allocator, Identifier, v15);
    if (!glpLayoutQualifierFromString(v17, v18, &v35))
    {
      break;
    }

    ValueKind = glpLayoutPairNodeGetValueKind(LayoutPair);
    if (ValueKind)
    {
      if (ValueKind != 1)
      {
        abort();
      }

      v20 = glpCompilerGetAllocator(a1);
      v21 = *a5;
      v22 = v35;
      Value = glpLayoutPairNodeGetValue(LayoutPair);
      v33 = v36;
      v34 = v37;
      if (!glpLayoutObjectAppendInteger(v20, a1, &v33, a2, a4, v21, v22, Value))
      {
        return 0;
      }
    }

    else
    {
      v24 = glpCompilerGetAllocator(a1);
      v25 = *a5;
      v33 = v36;
      v34 = v37;
      if (!glpLayoutObjectAppend(v24, a1, &v33, a2, a4, v25, v35))
      {
        return 0;
      }
    }

    if (v10 == ++v11)
    {
      return 1;
    }
  }

  InfoLog = glpCompilerGetInfoLog(a1);
  v33 = v36;
  v34 = v37;
  glpLogMessage(InfoLog, 0, &v33, "Unknown identifier '%.*s' in layout", v28, v29, v30, v31, v15);
  return 0;
}

uint64_t parseInterpolationQualifiers(uint64_t a1, unsigned int a2, uint64_t a3, char a4, uint64_t *a5)
{
  v9 = a4 & 0x1C;
  NameTable = glpCompilerGetNameTable(a1);
  Language = glpNameTableGetLanguage(NameTable);
  if (a2 > 0xC)
  {
    goto LABEL_31;
  }

  if (((1 << a2) & 0x19FD) == 0)
  {
    v20 = *a5;
    v22 = (*a5 & 0x20000000) == 0 || Language != 0;
    if ((v20 & 0x40000000) != 0 && Language == 4)
    {
      v22 = 0;
    }

    if ((v20 & 0x60000000) == 0)
    {
      v22 = 0;
    }

    v24 = v9 >> 2;
    if (v9 >> 2 <= 1)
    {
      if (!v24 || v24 == 1 && v22)
      {
        return 1;
      }

LABEL_31:
      Allocator = glpCompilerGetAllocator(a1);
      StringBuffer = glpMakeStringBuffer(Allocator);
      qualifierMaskToStringBuffer(StringBuffer, v9);
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a3, &v35);
      CString = glpStringBufferGetCString(StringBuffer);
      qualifierContextToString(a2);
      glpLogMessage(InfoLog, 0, &v35, "Invalid interpolation qualifiers '%s' in %s context", v31, v32, v33, v34, CString);
      return 0;
    }

    if (v24 == 2)
    {
      if (!v22)
      {
        goto LABEL_31;
      }

      v25 = v20 | 0x1000000000;
    }

    else
    {
      if (v24 != 4 || !v22)
      {
        goto LABEL_31;
      }

      v25 = v20 | 0x2000000000;
    }

    *a5 = v25;
    return 1;
  }

  if (!v9)
  {
    return 1;
  }

  v12 = glpCompilerGetAllocator(a1);
  v13 = glpMakeStringBuffer(v12);
  qualifierMaskToStringBuffer(v13, v9);
  v14 = glpCompilerGetInfoLog(a1);
  glpASTNodeGetLocation(a3, &v35);
  v15 = glpStringBufferGetCString(v13);
  qualifierContextToString(a2);
  glpLogMessage(v14, 0, &v35, "Interpolation qualifiers '%s' not allowed in %s context", v16, v17, v18, v19, v15);
  return 0;
}

uint64_t *qualifierMaskToStringBuffer(uint64_t *result, int a2)
{
  v3 = result;
  if ((a2 & 1) == 0)
  {
    if ((a2 & 2) == 0)
    {
      if ((a2 & 4) == 0)
      {
        if ((a2 & 8) == 0)
        {
          if ((a2 & 0x10) == 0)
          {
            if ((a2 & 0x20) == 0)
            {
              if ((a2 & 0x40) == 0)
              {
                if ((a2 & 0x80) == 0)
                {
                  if ((a2 & 0x100) == 0)
                  {
                    if ((a2 & 0x200) == 0)
                    {
                      if ((a2 & 0x400) == 0)
                      {
                        if ((a2 & 0x800) == 0)
                        {
                          if ((a2 & 0x1000) == 0)
                          {
                            if ((a2 & 0x2000) == 0)
                            {
                              if ((a2 & 0x4000) == 0)
                              {
                                if ((a2 & 0x8000) == 0)
                                {
                                  if ((a2 & 0x10000) == 0)
                                  {
                                    if ((a2 & 0x20000) == 0)
                                    {
                                      if ((a2 & 0x40000) == 0)
                                      {
                                        if ((a2 & 0x80000) == 0)
                                        {
                                          if ((a2 & 0x100000) == 0)
                                          {
                                            if ((a2 & 0x200000) == 0)
                                            {
                                              if ((a2 & 0x400000) == 0)
                                              {
                                                if ((a2 & 0x800000) == 0)
                                                {
                                                  if ((a2 & 0x1000000) == 0)
                                                  {
                                                    return result;
                                                  }

                                                  goto LABEL_99;
                                                }

                                                goto LABEL_97;
                                              }

LABEL_95:
                                              result = glpStringBufferAppendCString(v3, "lowp");
                                              if ((a2 & 0x800000) != 0)
                                              {
                                                goto LABEL_96;
                                              }

                                              goto LABEL_50;
                                            }

LABEL_93:
                                            result = glpStringBufferAppendCString(v3, "$argp");
                                            if ((a2 & 0x400000) != 0)
                                            {
                                              goto LABEL_94;
                                            }

                                            goto LABEL_49;
                                          }

LABEL_91:
                                          result = glpStringBufferAppendCString(v3, "$anyp");
                                          if ((a2 & 0x200000) != 0)
                                          {
                                            goto LABEL_92;
                                          }

                                          goto LABEL_48;
                                        }

LABEL_89:
                                        result = glpStringBufferAppendCString(v3, "$nop");
                                        if ((a2 & 0x100000) != 0)
                                        {
                                          goto LABEL_90;
                                        }

                                        goto LABEL_47;
                                      }

LABEL_87:
                                      result = glpStringBufferAppendCString(v3, "varying");
                                      if ((a2 & 0x80000) != 0)
                                      {
                                        goto LABEL_88;
                                      }

                                      goto LABEL_46;
                                    }

LABEL_85:
                                    result = glpStringBufferAppendCString(v3, "attribute");
                                    if ((a2 & 0x40000) != 0)
                                    {
                                      goto LABEL_86;
                                    }

                                    goto LABEL_45;
                                  }

LABEL_83:
                                  result = glpStringBufferAppendCString(v3, "uniform");
                                  if ((a2 & 0x20000) != 0)
                                  {
                                    goto LABEL_84;
                                  }

                                  goto LABEL_44;
                                }

LABEL_81:
                                result = glpStringBufferAppendCString(v3, "inout");
                                if ((a2 & 0x10000) != 0)
                                {
                                  goto LABEL_82;
                                }

                                goto LABEL_43;
                              }

LABEL_79:
                              result = glpStringBufferAppendCString(v3, "out");
                              if ((a2 & 0x8000) != 0)
                              {
                                goto LABEL_80;
                              }

                              goto LABEL_42;
                            }

LABEL_77:
                            result = glpStringBufferAppendCString(v3, "in");
                            if ((a2 & 0x4000) != 0)
                            {
                              goto LABEL_78;
                            }

                            goto LABEL_41;
                          }

LABEL_75:
                          result = glpStringBufferAppendCString(v3, "$foldable");
                          if ((a2 & 0x2000) != 0)
                          {
                            goto LABEL_76;
                          }

                          goto LABEL_40;
                        }

LABEL_73:
                        result = glpStringBufferAppendCString(v3, "$readonly");
                        if ((a2 & 0x1000) != 0)
                        {
                          goto LABEL_74;
                        }

                        goto LABEL_39;
                      }

LABEL_71:
                      result = glpStringBufferAppendCString(v3, "subroutine");
                      if ((a2 & 0x800) != 0)
                      {
                        goto LABEL_72;
                      }

                      goto LABEL_38;
                    }

LABEL_69:
                    result = glpStringBufferAppendCString(v3, "bindable");
                    if ((a2 & 0x400) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_37;
                  }

LABEL_67:
                  result = glpStringBufferAppendCString(v3, "sample");
                  if ((a2 & 0x200) != 0)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_36;
                }

LABEL_65:
                result = glpStringBufferAppendCString(v3, "patch");
                if ((a2 & 0x100) != 0)
                {
                  goto LABEL_66;
                }

                goto LABEL_35;
              }

LABEL_63:
              result = glpStringBufferAppendCString(v3, "centroid");
              if ((a2 & 0x80) != 0)
              {
                goto LABEL_64;
              }

              goto LABEL_34;
            }

LABEL_61:
            result = glpStringBufferAppendCString(v3, "const");
            if ((a2 & 0x40) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_33;
          }

LABEL_59:
          result = glpStringBufferAppendCString(v3, "noperspective");
          if ((a2 & 0x20) != 0)
          {
            goto LABEL_60;
          }

          goto LABEL_32;
        }

LABEL_57:
        result = glpStringBufferAppendCString(v3, "flat");
        if ((a2 & 0x10) != 0)
        {
          goto LABEL_58;
        }

        goto LABEL_31;
      }

LABEL_55:
      result = glpStringBufferAppendCString(v3, "smooth");
      if ((a2 & 8) != 0)
      {
        goto LABEL_56;
      }

      goto LABEL_30;
    }

LABEL_53:
    result = glpStringBufferAppendCString(v3, "invariant");
    if ((a2 & 4) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_29;
  }

  result = glpStringBufferAppendCString(result, "precise");
  if ((a2 & 2) != 0)
  {
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_53;
  }

  if ((a2 & 4) != 0)
  {
LABEL_54:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_55;
  }

LABEL_29:
  if ((a2 & 8) != 0)
  {
LABEL_56:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_57;
  }

LABEL_30:
  if ((a2 & 0x10) != 0)
  {
LABEL_58:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_59;
  }

LABEL_31:
  if ((a2 & 0x20) != 0)
  {
LABEL_60:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_61;
  }

LABEL_32:
  if ((a2 & 0x40) != 0)
  {
LABEL_62:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_63;
  }

LABEL_33:
  if ((a2 & 0x80) != 0)
  {
LABEL_64:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_65;
  }

LABEL_34:
  if ((a2 & 0x100) != 0)
  {
LABEL_66:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_67;
  }

LABEL_35:
  if ((a2 & 0x200) != 0)
  {
LABEL_68:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_69;
  }

LABEL_36:
  if ((a2 & 0x400) != 0)
  {
LABEL_70:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_71;
  }

LABEL_37:
  if ((a2 & 0x800) != 0)
  {
LABEL_72:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_73;
  }

LABEL_38:
  if ((a2 & 0x1000) != 0)
  {
LABEL_74:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_75;
  }

LABEL_39:
  if ((a2 & 0x2000) != 0)
  {
LABEL_76:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_77;
  }

LABEL_40:
  if ((a2 & 0x4000) != 0)
  {
LABEL_78:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_79;
  }

LABEL_41:
  if ((a2 & 0x8000) != 0)
  {
LABEL_80:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_81;
  }

LABEL_42:
  if ((a2 & 0x10000) != 0)
  {
LABEL_82:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_83;
  }

LABEL_43:
  if ((a2 & 0x20000) != 0)
  {
LABEL_84:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_85;
  }

LABEL_44:
  if ((a2 & 0x40000) != 0)
  {
LABEL_86:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_87;
  }

LABEL_45:
  if ((a2 & 0x80000) != 0)
  {
LABEL_88:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_89;
  }

LABEL_46:
  if ((a2 & 0x100000) != 0)
  {
LABEL_90:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_91;
  }

LABEL_47:
  if ((a2 & 0x200000) != 0)
  {
LABEL_92:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_93;
  }

LABEL_48:
  if ((a2 & 0x400000) != 0)
  {
LABEL_94:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_95;
  }

LABEL_49:
  if ((a2 & 0x800000) != 0)
  {
LABEL_96:
    glpStringBufferAppendCString(v3, " ");
LABEL_97:
    result = glpStringBufferAppendCString(v3, "mediump");
    if ((a2 & 0x1000000) == 0)
    {
      return result;
    }

    goto LABEL_98;
  }

LABEL_50:
  if ((a2 & 0x1000000) == 0)
  {
    return result;
  }

LABEL_98:
  glpStringBufferAppendCString(v3, " ");
LABEL_99:

  return glpStringBufferAppendCString(v3, "highp");
}

char *qualifierContextToString(int a1)
{
  if ((a1 - 1) >= 0xC)
  {
    abort();
  }

  return off_278B49B88[a1 - 1];
}

uint64_t glpMakeLValueForVariableObject(uint64_t a1, __n128 *a2, uint64_t *a3)
{
  Allocator = glpCompilerGetAllocator(a1);
  v11 = *a2;
  v12 = a2[1].n128_u64[0];
  glpMakeLValueNode(Allocator, &v11, a3[2], a3[3], a3);
  v8 = v7;
  glpASTNodeSetSaType(v7, *a3);
  glpASTNodeSetSaFlags(v8, a3[6] & 0x80000037FLL);
  if (a3[11])
  {
    v9 = glpCompilerGetAllocator(a1);
    glpAddOffsetIfNeeded(v9, v8);
    v11 = *a2;
    v12 = a2[1].n128_u64[0];
    glpEnsureOffsetsExist(a1, &v11, v8);
  }

  return v8;
}

uint64_t glpAddOffsetIfNeeded(uint64_t a1, uint64_t a2)
{
  result = glpDerefNodeGetOffset(a2);
  if (!result)
  {
    glpASTNodeGetLocation(a2, &v7);
    OffsetNode = glpMakeOffsetNode(a1, &v7);
    glpMakeOffsetObject(a1);
    glpOffsetNodeSetExtra(OffsetNode, v6);
    return glpDerefNodeSetOffset(a2, OffsetNode);
  }

  return result;
}

uint64_t glpEnsureOffsetsExist(uint64_t a1, __n128 *a2, uint64_t a3)
{
  SaType = glpASTNodeGetSaType(a3);
  result = glpTypeGetKind(SaType);
  if (result != 3)
  {
    Offset = glpDerefNodeGetOffset(a3);
    result = glpOffsetNodeGetOffsetExpr(Offset);
    if (!result)
    {
      PrimitiveType = glpGetPrimitiveType(5u);
      IntConstant = glpCompilerGetIntConstant(a1, 0);
      v12 = *a2;
      v13 = a2[1].n128_u64[0];
      ConstantValueFragment = glpMakeConstantValueFragment(a1, &v12, PrimitiveType, IntConstant);
      return glpOffsetNodeSetOffsetExpr(Offset, ConstantValueFragment);
    }
  }

  return result;
}

uint64_t glpCheckIBDeref(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 + 1) >= 2)
  {
    ImmediateSAContext = glpCompilerGetImmediateSAContext(a1);
    if (glpIsIBPartialDerefNode(v2))
    {
      Ib = glpIBPartialDerefNodeGetIb(v2);
      Kind = glpTypeGetKind(*(Ib + 64));
      if (Kind == 1)
      {
        goto LABEL_20;
      }

      if (Kind != 3)
      {
        return v2;
      }

      if (glpIBPartialDerefNodeGetBankIndex(v2))
      {
LABEL_20:
        if (glpIsFieldAccessNode(ImmediateSAContext))
        {
          return v2;
        }

        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v2, &v29);
        v25 = *(Ib + 16);
        glpLogMessage(InfoLog, 0, &v29, "You must access a specific variable of the interface block '%.*s'", v9, v10, v11, v12, *(Ib + 24));
      }

      else
      {
        if (glpIsArrayAccessNode(ImmediateSAContext))
        {
          return v2;
        }

        v20 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v2, &v29);
        v26 = *(Ib + 16);
        glpLogMessage(v20, 0, &v29, "You must access an element of the interface block '%.*s'", v21, v22, v23, v24, *(Ib + 24));
      }

      return -1;
    }

    if (glpIsLValueNode(v2) && *(glpLValueNodeGetVariableExtra(v2) + 88) && *(*(glpLValueNodeGetVariableExtra(v2) + 88) + 8) && !glpIsFieldAccessNode(ImmediateSAContext) && !glpIsArrayAccessNode(ImmediateSAContext))
    {
      v27 = 0;
      v28 = 0;
      SaType = glpASTNodeGetSaType(v2);
      SaFlags = glpASTNodeGetSaFlags(v2);
      glpMakeTemporary(a1, SaType, SaFlags & 0x80000037FLL, v2, &v28, &v27);
      Allocator = glpCompilerGetAllocator(a1);
      glpASTNodeGetLocation(v2, &v29);
      glpMakeCommaExprNode(Allocator, &v29, 0);
      v17 = v16;
      v18 = glpCompilerGetAllocator(a1);
      glpCommaExprNodeAddExpr(v18, v17, v28);
      v19 = glpCompilerGetAllocator(a1);
      glpCommaExprNodeAddExpr(v19, v17, v27);
      return glpSANode(a1, v17);
    }
  }

  return v2;
}

uint64_t glpSAFieldAccessInternal(uint64_t a1, uint64_t a2)
{
  Structure = glpFieldAccessNodeGetStructure(a2);
  SaType = glpASTNodeGetSaType(Structure);
  Field = glpFieldAccessNodeGetField(a2);
  v8 = v7;
  v100[0] = Field;
  v100[1] = v7;
  if (glpIsIBPartialDerefNode(Structure))
  {
    Ib = glpIBPartialDerefNodeGetIb(Structure);
    if (glpTypeGetKind(SaType) != 1)
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v99);
      v95 = *(Ib + 16);
      glpLogMessage(InfoLog, 0, &v99, "You must access an element of the interface block '%.*s'", v15, v16, v17, v18, *(Ib + 24));
      return -1;
    }

    FieldIndex = glpStructTypeGetFieldIndex(SaType, Field, v8);
    if (FieldIndex == -1)
    {
      v19 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v99);
      v96 = *(Ib + 16);
      glpLogMessage(v19, 0, &v99, "Interface block '%.*s' has no variable named '%.*s'", v20, v21, v22, v23, *(Ib + 24));
      return -1;
    }

    v11 = FieldIndex;
    Representation = glpInterfaceBlockObjectGetRepresentation(Ib);
    if (Representation > 1)
    {
      if (Representation == 2)
      {
        glpASTNodeGetLocation(Structure, &v99);
        LValueForVariableObject = glpMakeLValueForVariableObject(a1, &v99, **(Ib + 72));
        Allocator = glpCompilerGetAllocator(a1);
        glpASTNodeGetLocation(Structure, &v99);
        glpMakeArrayAccessNode(Allocator, &v99);
        v32 = v31;
        glpArrayAccessNodeSetArray(v31, LValueForVariableObject);
        BankIndex = glpIBPartialDerefNodeGetBankIndex(Structure);
        glpArrayAccessNodeSetElement(v32, BankIndex);
        result = glpSANode(a1, v32);
        Structure = result;
        if (result == -1)
        {
          return result;
        }
      }

      else if (Representation == 3)
      {
        glpASTNodeGetLocation(Structure, &v99);
        v24 = glpMakeLValueForVariableObject(a1, &v99, *(*(Ib + 72) + 8 * v11));
        v25 = glpCompilerGetAllocator(a1);
        glpASTNodeGetLocation(Structure, &v99);
        glpMakeArrayAccessNode(v25, &v99);
        v27 = v26;
        glpArrayAccessNodeSetArray(v26, v24);
        v28 = glpIBPartialDerefNodeGetBankIndex(Structure);
        glpArrayAccessNodeSetElement(v27, v28);
        return glpSANode(a1, v27);
      }
    }

    else if (Representation)
    {
      if (Representation == 1)
      {
        glpASTNodeGetLocation(Structure, &v99);
        return glpMakeLValueForVariableObject(a1, &v99, *(*(Ib + 72) + 8 * v11));
      }
    }

    else
    {
      glpASTNodeGetLocation(Structure, &v99);
      Structure = glpMakeLValueForVariableObject(a1, &v99, **(Ib + 72));
    }
  }

  Kind = glpTypeGetKind(SaType);
  if (Kind == 1)
  {
    v46 = glpStructTypeGetFieldIndex(SaType, Field, v8);
    if (v46 != -1)
    {
      v47 = v46;
      v98 = 0;
      v48 = glpEnsureDeref(a1, Structure, &v98);
      glpASTNodeGetLocation(v48, &v99);
      glpEnsureOffsetsExist(a1, &v99, v48);
      SaFlags = glpASTNodeGetSaFlags(v48);
      Offset = glpDerefNodeGetOffset(v48);
      OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
      if (glpIsLValueNode(v48) && *(glpLValueNodeGetVariableExtra(v48) + 8) && (v52 = glpLValueNodeGetVariableExtra(v48), glpLayoutObjectFind(*(v52 + 8), 28)))
      {
        VariableExtra = glpLValueNodeGetVariableExtra(v48);
        if (glpTypeGetKind(*VariableExtra) == 2)
        {
          glpASTNodeGetLocation(a2, &v99);
          glpASTNodeGetLocation(a2, &v97);
          PrimitiveType = glpGetPrimitiveType(5u);
          v55 = glpABIGetStructTypeRangeOfField(0, SaType, SaFlags, v47);
          IntConstant = glpCompilerGetIntConstant(a1, v55);
          ConstantValueFragment = glpMakeConstantValueFragment(a1, &v97, PrimitiveType, IntConstant);
          v58 = glpABIGetArrayStrideForElementType(0, SaType, SaFlags);
          v59 = glpCompilerGetIntConstant(a1, v58);
          ArrayIndexOffsetFragment = glpMakeArrayIndexOffsetFragment(a1, &v99, ConstantValueFragment, OffsetExpr, v59);
        }

        else
        {
          glpASTNodeGetLocation(a2, &v99);
          v83 = glpABIGetStructTypeRangeOfField(0, SaType, SaFlags, v47);
          v84 = glpCompilerGetIntConstant(a1, v83);
          ArrayIndexOffsetFragment = glpMakeFieldOffsetFragment(a1, &v99, OffsetExpr, v84);
        }

        v85 = ArrayIndexOffsetFragment;
        v86 = glpDerefNodeGetOffset(v48);
        glpOffsetNodeSetOffsetExpr(v86, v85);
        v87 = glpCompilerGetAllocator(a1);
        v88 = v98;
        ElementType = glpAggregateTypeGetElementType(SaType, v47);
        v82 = glpHandleGetterSetter(a1, v48, ElementType, OffsetExpr, 0, "getter", 0x7663339F00000006, v100);
        v80 = v87;
        v81 = v88;
      }

      else
      {
        if (glpIsLValueNode(v48) && *(glpLValueNodeGetVariableExtra(v48) + 88))
        {
          v72 = *(*(glpLValueNodeGetVariableExtra(v48) + 88) + 8);
        }

        else
        {
          v72 = 0;
        }

        glpASTNodeGetLocation(a2, &v99);
        v73 = glpABIGetStructTypeRangeOfField(v72, SaType, SaFlags, v47);
        v74 = glpCompilerGetIntConstant(a1, v73);
        FieldOffsetFragment = glpMakeFieldOffsetFragment(a1, &v99, OffsetExpr, v74);
        v76 = glpDerefNodeGetOffset(v48);
        glpOffsetNodeSetOffsetExpr(v76, FieldOffsetFragment);
        v77 = glpAggregateTypeGetElementType(SaType, v47);
        glpASTNodeSetSaType(v48, v77);
        v78 = glpASTNodeGetSaFlags(v48);
        ElementFlags = glpAggregateTypeGetElementFlags(SaType, v47);
        glpASTNodeSetSaFlags(v48, ElementFlags & 0x41F | v78);
        v80 = glpCompilerGetAllocator(a1);
        v81 = v98;
        v82 = v48;
      }

      return glpMangleSideEffectsWithNewResult(v80, v81, v82);
    }

    v61 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v99);
    v93 = v8;
    v66 = "Structure has no field named %.*s";
  }

  else
  {
    if (!Kind)
    {
      v35 = glpPrimitiveTypeGetPrimitiveType(SaType);
      if (glpPrimitiveTypeGetCategory(v35) == 2)
      {
        v97.n128_u32[0] = 0;
        glpASTNodeGetLocation(a2, &v99);
        Length = glpPrimitiveVectorGetLength(v35);
        if (glpValidateSwizzle(a1, Field, v8, &v99, Length, &v97))
        {
          v99.n128_u64[0] = 0;
          v37 = glpEnsureDeref(a1, Structure, &v99);
          v38 = glpDerefNodeGetOffset(v37);
          if (!glpOffsetNodeGetSwizzle(v38))
          {
            v39 = glpDerefNodeGetOffset(v37);
            glpOffsetNodeSetPreSwizzlePrimitiveType(v39, v35);
          }

          v40 = glpDerefNodeGetOffset(v37);
          v41 = glpDerefNodeGetOffset(v37);
          Swizzle = glpOffsetNodeGetSwizzle(v41);
          if (Swizzle)
          {
            if (v97.n128_u32[0])
            {
              v43 = v97.n128_u8[0] & 7;
              if ((v97.n128_u8[0] & 7) != 0)
              {
                v44 = 0;
                v45 = 2 * v43;
                do
                {
                  v43 = (((Swizzle >> (2 * ((v97.n128_u32[0] >> (v44 + 3)) & 3) + 3)) & 3) << (v44 + 3)) | v43 & ~(24 << v44);
                  v44 += 2;
                }

                while (v45 != v44);
              }
            }

            else
            {
              v43 = Swizzle;
            }
          }

          else
          {
            v43 = v97.n128_u32[0];
          }

          glpOffsetNodeSetSwizzle(v40, v43);
          v90 = glpPrimitiveVectorGetElementType(v35);
          VectorType = glpGetVectorType(v90, v8);
          v92 = glpGetPrimitiveType(VectorType);
          glpASTNodeSetSaType(v37, v92);
          v80 = glpCompilerGetAllocator(a1);
          v81 = v99.n128_u64[0];
          v82 = v37;
          return glpMangleSideEffectsWithNewResult(v80, v81, v82);
        }

        glpASTNodeSetSaType(a2, 0);
      }

      else
      {
        v67 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v99);
        v94 = glpPrimitiveTypeToString(v35);
        glpLogMessage(v67, 0, &v99, "Swizzle of non-vector primitive %s", v68, v69, v70, v71, v94);
      }

      return -1;
    }

    v61 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v99);
    v66 = "Field access or swizzle of non-struct non-vector";
  }

  glpLogMessage(v61, 0, &v99, v66, v62, v63, v64, v65, v93);
  return -1;
}

uint64_t glpValidateSwizzle(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4, unsigned int a5, _DWORD *a6)
{
  v7 = a3;
  if (a3 < 5)
  {
    *a6 = a3;
    if (!a3)
    {
      return 1;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = a3;
    while (1)
    {
      v18 = *(a2 + v15);
      v19 = v18 - 97;
      if ((v18 - 97) >= 0x1A || ((0x3CF8043u >> v19) & 1) == 0)
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        v37 = *a4;
        v38 = *(a4 + 2);
        glpLogMessage(InfoLog, 0, &v37, "Invalid character '%c' in swizzle", v23, v24, v25, v26, v18);
        return 0;
      }

      v20 = dword_23A29CCF0[(v18 - 97)];
      if (v15)
      {
        if ((v18 - 97) >= 0x1Au || ((0x3CF8043u >> v19) & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v16 != dword_23A29CD58[(v18 - 97)])
        {
          v32 = glpCompilerGetInfoLog(a1);
          v37 = *a4;
          v38 = *(a4 + 2);
          glpLogMessage(v32, 0, &v37, "Inconsistent component characters in swizzle '%.*s'", v33, v34, v35, v36, v7);
          return 0;
        }
      }

      else
      {
        if ((v18 - 97) >= 0x1Au || ((0x3CF8043u >> v19) & 1) == 0)
        {
LABEL_22:
          abort();
        }

        v16 = dword_23A29CD58[(v18 - 97)];
      }

      if (v20 >= a5)
      {
        break;
      }

      v17 = v17 & ~(24 << v14) | (v20 << (v14 + 3));
      *a6 = v17;
      ++v15;
      v14 += 2;
      if ((a3 & 7) == v15)
      {
        return 1;
      }
    }

    v27 = glpCompilerGetInfoLog(a1);
    v37 = *a4;
    v38 = *(a4 + 2);
    glpLogMessage(v27, 0, &v37, "Swizzle component '%c' indexes beyond end of input vector (length %u)", v28, v29, v30, v31, v18);
  }

  else
  {
    v9 = glpCompilerGetInfoLog(a1);
    v37 = *a4;
    v38 = *(a4 + 2);
    glpLogMessage(v9, 0, &v37, "Swizzle '%.*s' has more than 4 result components", v10, v11, v12, v13, v7);
  }

  return 0;
}

uint64_t glpEnsureDeref(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = 0;
  if (glpIsDerefNode(a2))
  {
    v14 = a2;
  }

  else
  {
    glpHandleSideEffectsForExpr(a1, a2, &v14, a3);
    if (glpIsConstantNode(v14))
    {
      Allocator = glpCompilerGetAllocator(a1);
      glpASTNodeGetLocation(v14, &v13);
      glpMakeRValueNode(Allocator, &v13);
      v8 = v7;
      glpRValueNodeSetBase(v7, v14);
      SaType = glpASTNodeGetSaType(v14);
      glpASTNodeSetSaType(v8, SaType);
      SaFlags = glpASTNodeGetSaFlags(v14);
      glpASTNodeSetSaFlags(v8, SaFlags);
      v14 = v8;
    }
  }

  v11 = glpCompilerGetAllocator(a1);
  glpAddOffsetIfNeeded(v11, v14);
  return v14;
}

uint64_t glpHandleGetterSetter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  glpLValueNodeGetVariableName(a2);
  v14 = v13;
  Allocator = glpCompilerGetAllocator(a1);
  StringBuffer = glpMakeStringBuffer(Allocator);
  glpStringBufferAppendFormat(StringBuffer, "$%.*s_%.*s", v17, v18, v19, v20, v21, v22, v14);
  if (a8)
  {
    v45 = *a8;
    glpStringBufferAppendFormat(StringBuffer, "_%.*s", v23, v24, v25, v26, v27, v28, *(a8 + 2));
  }

  v29 = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a2, &v47);
  String = glpStringBufferGetString(StringBuffer);
  glpMakeFunctionCallNode(v29, &v47, String, v31);
  v33 = v32;
  v34 = glpCompilerGetAllocator(a1);
  glpCallNodeAddArg(v34, v33, a4);
  if (a5)
  {
    v35 = glpCompilerGetAllocator(a1);
    glpCallNodeAddArg(v35, v33, a5);
  }

  v36 = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a2, &v47);
  glpMakeCommaExprNode(v36, &v47, 0);
  v38 = v37;
  glpASTNodeSetSaType(a2, a3);
  v39 = glpCompilerGetAllocator(a1);
  glpCommaExprNodeAddExpr(v39, v38, a2);
  v40 = glpSANode(a1, v33);
  glpASTNodeSetSaType(v40, a3);
  SaFlags = glpASTNodeGetSaFlags(v40);
  glpASTNodeSetSaFlags(v40, SaFlags & 0x1F | 0x100);
  v42 = glpCompilerGetAllocator(a1);
  glpCommaExprNodeAddExpr(v42, v38, v40);
  glpASTNodeSetSaType(v38, a3);
  v43 = glpASTNodeGetSaFlags(v40);
  glpASTNodeSetSaFlags(v38, v43 & 0x1F | 0x100);
  return v38;
}

uint64_t glpPrecisionQualifierFromSaFlags(char a1)
{
  v1 = a1 & 0x1F;
  if (v1 == 8)
  {
    v2 = 23;
  }

  else
  {
    v2 = 19;
  }

  if (v1 == 16)
  {
    v3 = 24;
  }

  else
  {
    v3 = v2;
  }

  if (v1 == 4)
  {
    return 22;
  }

  else
  {
    return v3;
  }
}

uint64_t glpGetMostBasicPrimitiveType(unsigned int *a1)
{
  Kind = glpTypeGetKind(a1);
  if (Kind)
  {
    if (Kind == 2)
    {
      ElementType = glpArrayTypeGetElementType(a1);
      glpTypeGetKind(ElementType);
    }

    return 0;
  }

  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);
  v4 = PrimitiveType;
  if (!PrimitiveType || (glpPrimitiveTypeGetCategory(PrimitiveType) & 0xFFFFFFFE) != 2)
  {
    return v4;
  }

  return glpPrimitiveTypeGetScalarType(v4);
}

uint64_t glpGetDefaultPrecisionForType(uint64_t a1, unsigned int *a2)
{
  MostBasicPrimitiveType = glpGetMostBasicPrimitiveType(a2);
  if (MostBasicPrimitiveType == 36)
  {
    v4 = 5;
  }

  else
  {
    v4 = MostBasicPrimitiveType;
  }

  if (!v4)
  {
    return 0;
  }

  NameTable = glpCompilerGetNameTable(a1);

  return glpNameTableGetPrecision(NameTable, v4);
}

uint64_t glpSAValidateConstPrecisionConversion(uint64_t a1, uint64_t a2, char a3)
{
  Type = glpConstantNodeGetType(a2);
  Value = glpConstantNodeGetValue(a2);
  result = glpTypeGetKind(Type);
  if (!result)
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(Type);
    result = glpPrimitiveTypeGetCategory(PrimitiveType);
    Columns = result;
    if (result == 1)
    {
      Rows = 1;
    }

    else
    {
      if (result == 3)
      {
        Rows = glpPrimitiveMatrixGetRows(PrimitiveType);
        Columns = glpPrimitiveMatrixGetColumns(PrimitiveType);
      }

      else
      {
        if (result != 2)
        {
          return result;
        }

        Rows = glpPrimitiveVectorGetLength(PrimitiveType);
        Columns = 1;
      }

      LODWORD(PrimitiveType) = glpPrimitiveTypeGetScalarType(PrimitiveType);
    }

    NameTable = glpCompilerGetNameTable(a1);
    GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    result = glpPopulatePrecisionWidths(GLSLVersion, &v50);
    if (PrimitiveType == 36)
    {
      if ((a3 & 0x1F) == 4 && Columns)
      {
        v34 = 0;
        v35 = ~(-1 << SBYTE4(v51));
        v36 = Columns;
        do
        {
          if (Rows)
          {
            v37 = Rows;
            v38 = Value;
            do
            {
              v39 = *v38++;
              if (v39 > v35)
              {
                InfoLog = glpCompilerGetInfoLog(a1);
                glpASTNodeGetLocation(a2, &v49);
                result = glpLogMessage(InfoLog, 1u, &v49, "Overflow in implicit constant conversion, minimum range for lowp unsigned int is [0,%d]", v41, v42, v43, v44, v35);
              }

              --v37;
            }

            while (v37);
          }

          ++v34;
          Value += 16;
        }

        while (v34 != v36);
      }
    }

    else
    {
      v48 = Value;
      if (PrimitiveType == 5)
      {
        if ((a3 & 0x1F) == 4 && Columns)
        {
          v22 = 0;
          v23 = 1 << (BYTE4(v51) - 1);
          v46 = Columns;
          do
          {
            if (Rows)
            {
              v24 = Rows;
              v25 = v48;
              do
              {
                v27 = *v25++;
                v26 = v27;
                if (v27 >= v23 || v26 < -v23)
                {
                  v29 = glpCompilerGetInfoLog(a1);
                  glpASTNodeGetLocation(a2, &v49);
                  result = glpLogMessage(v29, 1u, &v49, "Overflow in implicit constant conversion, minimum range for lowp int is [%d,%d]", v30, v31, v32, v33, -v23);
                }

                --v24;
              }

              while (v24);
            }

            ++v22;
            v48 += 4;
          }

          while (v22 != v46);
        }
      }

      else if (PrimitiveType == 1 && (a3 & 0x1F) == 4 && Columns)
      {
        v13 = 0;
        v14 = Columns;
        do
        {
          if (Rows)
          {
            v15 = Rows;
            v16 = v48;
            do
            {
              if (fabsf(*v16) >= 2.0)
              {
                v17 = glpCompilerGetInfoLog(a1);
                glpASTNodeGetLocation(a2, &v49);
                result = glpLogMessage(v17, 1u, &v49, "Overflow in implicit constant conversion, minimum range for lowp float is (-2,2)", v18, v19, v20, v21, v45);
              }

              ++v16;
              --v15;
            }

            while (v15);
          }

          ++v13;
          v48 += 4;
        }

        while (v13 != v14);
      }
    }
  }

  return result;
}

uint64_t glpCheckArrayIndex(uint64_t a1, __int128 *a2, uint64_t a3, int a4, int a5, unsigned int a6, unsigned int *a7)
{
  v11 = a3;
  SaType = glpASTNodeGetSaType(a3);
  if (glpTypeGetKind(SaType) || glpPrimitiveTypeGetPrimitiveType(SaType) != 5 && glpPrimitiveTypeGetPrimitiveType(SaType) != 36)
  {
    Allocator = glpCompilerGetAllocator(a1);
    glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
    v17 = v16;
    InfoLog = glpCompilerGetInfoLog(a1);
    v54 = *a2;
    v55 = *(a2 + 2);
    v53 = v17;
    v23 = "Index expression has type '%.*s' but should have integral type";
LABEL_3:
    glpLogMessage(InfoLog, 0, &v54, v23, v19, v20, v21, v22, v53);
    return -1;
  }

  if (glpCompilerDoesTypeRequirePrecision(a1, SaType) && (glpASTNodeGetSaFlags(v11) & 0x1F) == 0)
  {
    DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, SaType);
    if (!DefaultPrecisionForType)
    {
      v45 = glpCompilerGetAllocator(a1);
      glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v45);
      v47 = v46;
      v48 = glpCompilerGetInfoLog(a1);
      v54 = *a2;
      v55 = *(a2 + 2);
      glpLogMessage(v48, 0, &v54, "Array index of type '%.*s' - precision can not be inferred and no default precision available", v49, v50, v51, v52, v47);
      return -1;
    }

    glpPushdownPrecision(a1, v11, DefaultPrecisionForType);
  }

  if (glpPrimitiveTypeGetPrimitiveType(SaType) == 36)
  {
    PrimitiveType = glpGetPrimitiveType(5u);
    SaFlags = glpASTNodeGetSaFlags(v11);
    v28 = glpConvert(a1, v11, PrimitiveType, SaFlags & 0x1F);
    v29 = glpSANode(a1, v28);
    if ((v29 + 1) < 2)
    {
      return -1;
    }

    v11 = v29;
  }

  IsConstantNode = glpIsConstantNode(v11);
  if (IsConstantNode)
  {
    Value = glpConstantNodeGetValue(v11);
    Type = glpConstantNodeGetType(v11);
    if (!glpValueIsUsableAsSize(Type, Value))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v54 = *a2;
      v55 = *(a2 + 2);
      v23 = "Index expression is negative";
      goto LABEL_3;
    }

    *a7 = glpValueGetAsSize(Type, Value);
  }

  NameTable = glpCompilerGetNameTable(a1);
  GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
  v35 = glpASTNodeGetSaFlags(v11);
  if (GLSLVersion == 1)
  {
    if ((v35 & 0x20) != 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (!a4)
    {
      if (a5 || a6 != -1)
      {
        return v11;
      }

      InfoLog = glpCompilerGetInfoLog(a1);
      v54 = *a2;
      v55 = *(a2 + 2);
      v23 = "Indirect index into implicitly-sized array";
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  if ((v35 & 0x40) == 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  v36 = glpCompilerGetAllocator(a1);
  ValueHash = glpCompilerGetValueHash(a1);
  v38 = glpConstantFold(v36, ValueHash, v11);
  if (!IsConstantNode)
  {
LABEL_26:
    InfoLog = glpCompilerGetInfoLog(a1);
    v54 = *a2;
    v55 = *(a2 + 2);
    v23 = "Index expression must be constant";
    goto LABEL_3;
  }

  v11 = v38;
  if (a6 != -1 && *a7 >= a6)
  {
    v39 = glpCompilerGetInfoLog(a1);
    v40 = *a7;
    v54 = *a2;
    v55 = *(a2 + 2);
    glpLogMessage(v39, 0, &v54, "Index %u beyond bounds (size %u)", v41, v42, v43, v44, v40);
    return -1;
  }

  return v11;
}

uint64_t glpConvert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Allocator = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a2, &v12);
  glpMakeTypeConversionNode(Allocator, &v12, a3, a4);
  v10 = v9;
  glpUnaryOperatorNodeSetExpr(v9, a2);
  return glpSANode(a1, v10);
}

uint64_t glpIndirectVectorElement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  Array = glpArrayAccessNodeGetArray(a2);
  v7 = glpEnsureDeref(a1, Array, &v20);
  Element = glpArrayAccessNodeGetElement(a2);
  v19 = 0;
  glpASTNodeGetLocation(a2, &v18);
  Length = glpPrimitiveVectorGetLength(a3);
  result = glpCheckArrayIndex(a1, &v18, Element, 0, 0, Length, &v19);
  if (result != -1)
  {
    v11 = result;
    Offset = glpDerefNodeGetOffset(v7);
    glpOffsetNodeSetVectorElementExpr(Offset, v11);
    v13 = glpDerefNodeGetOffset(v7);
    if (!glpOffsetNodeGetPreSwizzlePrimitiveType(v13))
    {
      v14 = glpDerefNodeGetOffset(v7);
      glpOffsetNodeSetPreSwizzlePrimitiveType(v14, a3);
    }

    ElementType = glpPrimitiveVectorGetElementType(a3);
    PrimitiveType = glpGetPrimitiveType(ElementType);
    glpASTNodeSetSaType(v7, PrimitiveType);
    Allocator = glpCompilerGetAllocator(a1);
    return glpMangleSideEffectsWithNewResult(Allocator, v20, v7);
  }

  return result;
}

uint64_t glpIndirectMatrixColumn(uint64_t a1, uint64_t a2, int a3)
{
  ColumnType = glpPrimitiveMatrixGetColumnType(a3);
  PrimitiveType = glpGetPrimitiveType(ColumnType);

  return glpIndirectArrayElement(a1, a2, PrimitiveType);
}

uint64_t glpIndirectArrayElement(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  glpASTNodeGetLocation(a2, &v55);
  Array = glpArrayAccessNodeGetArray(a2);
  Element = glpArrayAccessNodeGetElement(a2);
  v60 = 0;
  v8 = glpEnsureDeref(a1, Array, &v60);
  glpASTNodeGetLocation(v8, &v58);
  glpEnsureOffsetsExist(a1, &v58, v8);
  SaType = glpASTNodeGetSaType(v8);
  Kind = glpTypeGetKind(SaType);
  if (Kind)
  {
    if (Kind == 3)
    {
      ElementCount = glpBankTypeGetElementCount(SaType);
    }

    else
    {
      if (Kind != 2)
      {
        abort();
      }

      ElementCount = glpArrayTypeGetElementCount(SaType);
    }
  }

  else
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    ElementCount = glpPrimitiveMatrixGetColumns(PrimitiveType);
  }

  v13 = ElementCount;
  v15 = glpTypeGetKind(SaType) == 3 && glpIsLValueNode(v8) && (v14 = *(glpLValueNodeGetVariableExtra(v8) + 8)) != 0 && glpLayoutObjectFind(v14, 84) != 0;
  v57 = 0;
  v58 = v55;
  v59 = v56;
  result = glpCheckArrayIndex(a1, &v58, Element, 0, v15, v13, &v57);
  if (result != -1)
  {
    v17 = result;
    NameTable = glpCompilerGetNameTable(a1);
    if (glpNameTableGetGLSLVersion(NameTable) == 6 && (glpASTNodeGetSaFlags(v17) & 0x60) == 0 && glpTypeGetSamplerCount(a3))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v58 = v55;
      v59 = v56;
      glpLogMessage(InfoLog, 0, &v58, "Dynamic indexing of sampler types is not allowed", v39, v40, v41, v42, v55.n128_i8[0]);
      return -1;
    }

    if (glpIsLValueNode(v8) && glpIsConstantNode(v17) && glpTypeGetKind(SaType) == 2 && !glpTypeIsSized(SaType))
    {
      VariableExtra = glpLValueNodeGetVariableExtra(v8);
      IndexLevel = glpLValueNodeGetIndexLevel(v8);
      v21 = v57;
      v22 = glpCompilerGetInfoLog(a1);
      v58 = v55;
      v59 = v56;
      if (!glpVariableObjectExtendImplicitArraySize(VariableExtra, IndexLevel, v21 + 1, v22, &v58))
      {
        return -1;
      }
    }

    if (glpIsLValueNode(v8) && *(glpLValueNodeGetVariableExtra(v8) + 8) && ((v23 = glpLValueNodeGetVariableExtra(v8), glpLayoutObjectFind(*(v23 + 8), 28)) || (v24 = glpLValueNodeGetVariableExtra(v8), glpLayoutObjectFind(*(v24 + 8), 29))))
    {
      ImmediateSAContext = glpCompilerGetImmediateSAContext(a1);
      if (!glpIsAssignNode(ImmediateSAContext) || (Lhs = glpBinaryOperatorNodeGetLhs(ImmediateSAContext), !glpIsArrayAccessNode(Lhs)) || (v27 = glpBinaryOperatorNodeGetLhs(ImmediateSAContext), v28 = v17, glpArrayAccessNodeGetArray(v27) != v8))
      {
        v28 = v17;
        if (glpTypeGetKind(SaType) == 2)
        {
          v28 = v17;
          if (!glpTypeGetKind(a3))
          {
            Allocator = glpCompilerGetAllocator(a1);
            v30 = v60;
            v31 = glpHandleGetterSetter(a1, v8, a3, v17, 0, "getter", 0x7663339F00000006, 0);
            v32 = Allocator;
            v33 = v30;
            return glpMangleSideEffectsWithNewResult(v32, v33, v31);
          }
        }
      }
    }

    else
    {
      if (glpTypeGetKind(SaType) == 3)
      {
        Offset = glpDerefNodeGetOffset(v8);
        glpOffsetNodeSetBankIndex(Offset, v17);
        OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
      }

      else
      {
        if (glpIsLValueNode(v8))
        {
          v36 = glpLValueNodeGetVariableExtra(v8);
          ABI = glpVariableObjectGetABI(v36);
        }

        else
        {
          ABI = 0;
        }

        SaFlags = glpASTNodeGetSaFlags(v8);
        v44 = glpABIGetArrayStrideForElementType(ABI, a3, SaFlags);
        if ((SaFlags & 0x400) != 0 && !glpTypeGetKind(SaType))
        {
          v45 = glpPrimitiveTypeGetPrimitiveType(SaType);
          v46 = glpDerefNodeGetOffset(v8);
          v47 = glpABIGetMatrixStride(ABI, v45, SaFlags);
          glpOffsetNodeSetCompStride(v46, v47);
          v44 = 4;
        }

        glpASTNodeGetLocation(v8, &v58);
        v48 = glpDerefNodeGetOffset(v8);
        v49 = glpOffsetNodeGetOffsetExpr(v48);
        IntConstant = glpCompilerGetIntConstant(a1, v44);
        OffsetExpr = glpMakeArrayIndexOffsetFragment(a1, &v58, v49, v17, IntConstant);
      }

      v28 = OffsetExpr;
    }

    v51 = glpDerefNodeGetOffset(v8);
    glpOffsetNodeSetOffsetExpr(v51, v28);
    if (glpIsLValueNode(v8))
    {
      v52 = glpLValueNodeGetIndexLevel(v8);
      glpLValueNodeSetIndexLevel(v8, v52 + 1);
    }

    glpASTNodeSetSaType(v8, a3);
    v53 = glpASTNodeGetSaFlags(v8);
    v54 = glpASTNodeGetSaFlags(v17);
    glpASTNodeSetSaFlags(v8, (v54 | 0x51F) & v53);
    v32 = glpCompilerGetAllocator(a1);
    v33 = v60;
    v31 = v8;
    return glpMangleSideEffectsWithNewResult(v32, v33, v31);
  }

  return result;
}

uint64_t glpAnalyzeCallToOverload(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v129 = *MEMORY[0x277D85DE8];
  Allocator = glpCompilerGetAllocator(a1);
  v126 = (*(Allocator + 8))(*Allocator, 16, "Vector Storage (GLPType *)");
  v123 = a1;
  ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
  if (!a2)
  {
    v19 = glpCallNodeGetArgCount(a3);
    v20 = v19;
LABEL_86:
    v61 = v20;
    MEMORY[0x28223BE20](v19);
    v63 = (&v120 - v62);
    bzero(&v120 - v62, v64);
    if (v20)
    {
      for (i = 0; i != v20; v63[i++] = glpASTNodeGetSaType(v66))
      {
        v66 = glpCallNodeGetArg(a3, i);
      }
    }

    v67 = glpFunctionCallNodeGetName(a3);
    v69 = v68;
    v70 = v123;
    if (!glpOperatorAsFunctionError(v123, v67, v68, v63, a3))
    {
      v124 = v69;
      v125 = v67;
      v126 = &v120;
      v71 = glpCompilerGetAllocator(v70);
      StringBuffer = glpMakeStringBuffer(v71);
      if (v61)
      {
        v73 = 1;
        v74 = v61;
        do
        {
          v75 = *v63;
          v76 = glpCompilerGetAllocator(v123);
          v77 = glpTypeHumanReadableDescription(v75, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v76);
          glpStringBufferAppendString(StringBuffer, v77, v78);
          if (v73 < v61)
          {
            glpStringBufferAppendCString(StringBuffer, ", ");
          }

          ++v63;
          ++v73;
          --v74;
        }

        while (v74);
      }

      InfoLog = glpCompilerGetInfoLog(v123);
      glpASTNodeGetLocation(a3, &v128);
      glpStringBufferGetCString(StringBuffer);
      glpLogMessage(InfoLog, 0, &v128, "No matching function for call to %.*s(%s)", v80, v81, v82, v83, v124);
    }

    goto LABEL_96;
  }

  LODWORD(v8) = 0;
  v9 = &PROMOTIONS + 2 * ImplicitConversionPolicy;
  v10 = *v9;
  v11 = *(v9 + 2);
  v12 = 2;
  do
  {
    v13 = a2[1];
    if (_canCall(*a2, a3, v10, v11))
    {
      v14 = *a2;
      if (v8 + 1 <= v12)
      {
        v8 = v8;
        v18 = v126;
      }

      else
      {
        v125 = *a2;
        if (v12 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v12;
        }

        v16 = 2 * v15;
        if (v16 <= v8 + 1)
        {
          v12 = v8 + 1;
        }

        else
        {
          v12 = v16;
        }

        v17 = glpCompilerGetAllocator(v123);
        v18 = (v17[1])(*v17, 8 * v12, "Vector Storage (GLPType *, growth)");
        v8 = v8;
        memcpy(v18, v126, 8 * v8);
        (v17[3])(*v17, v126);
        v14 = v125;
      }

      v126 = v18;
      v18[v8] = v14;
      LODWORD(v8) = v8 + 1;
    }

    a2 = v13;
  }

  while (v13);
  v19 = glpCallNodeGetArgCount(a3);
  v20 = v19;
  if (!v8)
  {
    goto LABEL_86;
  }

  v120 = v19;
  v21 = 0;
  v8 = v8;
  v22 = v126;
  v121 = v8;
LABEL_17:
  v23 = 0;
  v24 = v22[v21];
  v122 = v21;
  do
  {
    if (v21 == v23)
    {
      goto LABEL_79;
    }

    v25 = v22[v23];
    v19 = glpCallNodeGetArgCount(a3);
    if (!v19)
    {
      v50 = 0;
      v49 = 1;
      goto LABEL_76;
    }

    LODWORD(v125) = 0;
    LODWORD(v124) = 0;
    v26 = 0;
    do
    {
      v27 = glpCallNodeGetArg(a3, v26);
      SaType = glpASTNodeGetSaType(v27);
      if (glpTypeGetKind(SaType))
      {
        goto LABEL_73;
      }

      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
      ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
      ElementType = glpAggregateTypeGetElementType(v24, v26);
      v32 = glpPrimitiveTypeGetPrimitiveType(ElementType);
      v33 = glpPrimitiveTypeGetScalarType(v32);
      v34 = glpAggregateTypeGetElementType(v25, v26);
      v35 = glpPrimitiveTypeGetPrimitiveType(v34);
      v36 = glpPrimitiveTypeGetScalarType(v35);
      ElementFlags = glpAggregateTypeGetElementFlags(v24, v26);
      if ((ElementFlags & 0x4000000) != 0)
      {
        v38 = ScalarType;
      }

      else
      {
        v38 = v33;
      }

      if ((ElementFlags & 0x4000000) != 0)
      {
        v39 = v33;
      }

      else
      {
        v39 = ScalarType;
      }

      v40 = glpAggregateTypeGetElementFlags(v25, v26);
      if ((v40 & 0x4000000) != 0)
      {
        v41 = ScalarType;
      }

      else
      {
        v41 = v36;
      }

      if ((v40 & 0x4000000) != 0)
      {
        v42 = v36;
      }

      else
      {
        v42 = ScalarType;
      }

      LOBYTE(v43) = ScalarType == v36;
      if (ScalarType == v33 || ScalarType == v36)
      {
        if (ScalarType != v33)
        {
          goto LABEL_72;
        }

LABEL_56:
        if (!v43)
        {
          goto LABEL_64;
        }

        goto LABEL_73;
      }

      v45 = v39 == 1 && v38 == 62;
      v43 = v42 == 1 && v41 == 62;
      if (v45 || v43)
      {
        if (!v45)
        {
          goto LABEL_72;
        }

        goto LABEL_56;
      }

      v47 = (v39 == 36 || v39 == 5) && v38 == 1;
      if (v42 == 36 || v42 == 5)
      {
        if (v41 != 62)
        {
          v47 = 0;
        }

        if (v47)
        {
LABEL_64:
          LODWORD(v124) = 1;
          goto LABEL_73;
        }

        v48 = v41 == 1;
      }

      else
      {
        v48 = 0;
      }

      if (v39 == 5 || v39 == 36)
      {
        if (v38 != 62)
        {
          v48 = 0;
        }

        if (v48)
        {
LABEL_72:
          LODWORD(v125) = 1;
        }
      }

LABEL_73:
      ++v26;
      v19 = glpCallNodeGetArgCount(a3);
    }

    while (v26 < v19);
    v49 = v125 == 0;
    v50 = v124 != 0;
    v22 = v126;
    v8 = v121;
    v21 = v122;
LABEL_76:
    if (!v49 && !v50 || !v50 || !v49)
    {
      if (++v21 == v8)
      {
LABEL_98:
        v85 = v120;
        v86 = v120;
        MEMORY[0x28223BE20](v19);
        v88 = (&v120 - v87);
        bzero(&v120 - v87, v89);
        if (v85)
        {
          for (j = 0; j != v85; v88[j++] = glpASTNodeGetSaType(v91))
          {
            v91 = glpCallNodeGetArg(a3, j);
          }
        }

        v92 = glpFunctionCallNodeGetName(a3);
        v94 = v93;
        v95 = v123;
        if (!glpOperatorAsFunctionError(v123, v92, v93, v88, a3))
        {
          v124 = &v120;
          v125 = v92;
          v96 = v8;
          v97 = glpCompilerGetAllocator(v95);
          v98 = glpMakeStringBuffer(v97);
          if (v120)
          {
            v99 = 1;
            v100 = v86;
            do
            {
              v101 = *v88;
              v102 = glpCompilerGetAllocator(v123);
              v103 = glpTypeHumanReadableDescription(v101, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v102);
              glpStringBufferAppendString(v98, v103, v104);
              if (v99 < v86)
              {
                glpStringBufferAppendCString(v98, ", ");
              }

              ++v88;
              ++v99;
              --v100;
            }

            while (v100);
          }

          v105 = glpCompilerGetAllocator(v123);
          v106 = glpMakeStringBuffer(v105);
          v107 = 1;
          v108 = v96;
          v109 = v126;
          do
          {
            glpStringBufferAppendCString(v106, "    ");
            v110 = v109;
            v111 = *v109;
            v112 = glpCompilerGetAllocator(v123);
            v113 = glpTypeHumanReadableDescription(v111, v125, v94, v112);
            glpStringBufferAppendString(v106, v113, v114);
            if (v107 < v96)
            {
              glpStringBufferAppendCString(v106, "\n");
            }

            v109 = v110 + 1;
            ++v107;
            --v108;
          }

          while (v108);
          v115 = glpCompilerGetInfoLog(v123);
          glpASTNodeGetLocation(a3, &v128);
          glpStringBufferGetCString(v98);
          glpStringBufferGetCString(v106);
          glpLogMessage(v115, 0, &v128, "Ambiguous call to function %.*s(%s).   Candidates are:\n%s", v116, v117, v118, v119, v94);
        }

LABEL_96:
        result = 0;
        goto LABEL_97;
      }

      goto LABEL_17;
    }

LABEL_79:
    ++v23;
  }

  while (v23 != v8);
  if (!v24)
  {
    goto LABEL_98;
  }

  _makeConversions(v123, v24, a3);
  ReturnType = glpFunctionTypeGetReturnType(v24);
  glpASTNodeSetSaType(a3, ReturnType);
  v52 = glpFunctionCallNodeGetName(a3);
  v54 = v53;
  v55 = glpCompilerGetAllocator(v123);
  v56 = glpAggregateTypeMangleName(v24, v52, v54, v55);
  v58 = v57;
  NameTable = glpCompilerGetNameTable(v123);
  v127[0] = MEMORY[0x277D85DD0];
  v127[1] = 0x40000000;
  v127[2] = __glpAnalyzeCallToOverload_block_invoke;
  v127[3] = &__block_descriptor_tmp_7;
  v127[4] = a3;
  glpNameTableGet(NameTable, v56, v58, 0, v127);
  result = 1;
LABEL_97:
  v84 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _canCall(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = glpCallNodeGetArgCount(a2);
  if (v8 != glpAggregateTypeGetElementCount(a1))
  {
    return 0;
  }

  if (v8)
  {
    v9 = 0;
    v10 = (a3 + 4);
    do
    {
      v11 = glpCallNodeGetArg(a2, v9);
      SaType = glpASTNodeGetSaType(v11);
      ElementType = glpAggregateTypeGetElementType(a1, v9);
      ElementFlags = glpAggregateTypeGetElementFlags(a1, v9);
      if (!glpTypesEqual(SaType, ElementType))
      {
        if ((~ElementFlags & 0x6000000) == 0 || glpTypeGetKind(SaType) || glpTypeGetKind(ElementType))
        {
          return 0;
        }

        PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
        v16 = glpPrimitiveTypeGetPrimitiveType(ElementType);
        result = _primitiveStructuresMatch(PrimitiveType, v16);
        if (!result)
        {
          return result;
        }

        ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
        v19 = glpPrimitiveTypeGetScalarType(v16);
        if ((ElementFlags & 0x4000000) != 0)
        {
          if (!a4)
          {
            return 0;
          }

          v22 = v10;
          v23 = a4;
          while (*(v22 - 1) != v19 || *v22 != ScalarType)
          {
            v22 += 2;
            if (!--v23)
            {
              return 0;
            }
          }
        }

        else
        {
          if (!a4)
          {
            return 0;
          }

          v20 = v10;
          v21 = a4;
          while (*(v20 - 1) != ScalarType || *v20 != v19)
          {
            v20 += 2;
            if (!--v21)
            {
              return 0;
            }
          }
        }
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return 1;
}

uint64_t glpOperatorAsFunctionError(uint64_t a1, const char *a2, int a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = a3;
  }

  if (strncmp("$OP_", a2, v8))
  {
    return 0;
  }

  v10 = glpCallNodeGetArgCount(a5);
  v11 = *a4;
  if (v10 == 2)
  {
    v12 = a4[1];
    Allocator = glpCompilerGetAllocator(a1);
    glpTypeHumanReadableDescription(v11, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
    v14 = glpCompilerGetAllocator(a1);
    glpTypeHumanReadableDescription(v12, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v14);
    v30 = 0;
    *__s2 = 0;
    __strncpy_chk();
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a5, &v28);
    v26 = glpBinaryOperatorStringToSymbol(__s2);
    glpLogMessage(InfoLog, 0, &v28, "'%s' does not operate on '%.*s' and '%.*s'", v16, v17, v18, v19, v26);
  }

  else
  {
    v20 = glpCompilerGetAllocator(a1);
    glpTypeHumanReadableDescription(v11, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v20);
    v30 = 0;
    *__s2 = 0;
    __strncpy_chk();
    v21 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a5, &v28);
    v27 = glpUnaryOperatorStringToSymbol(__s2);
    glpLogMessage(v21, 0, &v28, "'%s' does not operate on '%.*s'", v22, v23, v24, v25, v27);
  }

  return 1;
}

uint64_t _makeConversions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = glpCallNodeGetArgCount(a3);
  if (result)
  {
    v6 = result;
    for (i = 0; i != v6; ++i)
    {
      v8 = glpCallNodeGetArg(a3, i);
      SaType = glpASTNodeGetSaType(v8);
      v10 = glpASTNodeGetSaFlags(v8) & 0x1F;
      ElementType = glpAggregateTypeGetElementType(a2, i);
      ElementFlags = glpAggregateTypeGetElementFlags(a2, i);
      v13 = ElementFlags & 0x1F;
      result = glpTypesEqual(SaType, ElementType);
      if (!result || v10 != v13)
      {
        if ((ElementFlags & 0x2000000) != 0)
        {
          v8 = glpConvert(a1, v8, ElementType, v13);
        }

        if ((ElementFlags & 0x4000000) != 0)
        {
          v8 = glpConvert(a1, v8, SaType, v10);
        }

        result = glpCallNodeSetArg(a3, i, v8);
      }
    }
  }

  return result;
}

uint64_t __glpAnalyzeCallToOverload_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  result = glpFunctionCallNodeSetExtra(*(a1 + 32), a3);
  *a5 = 1;
  return result;
}

uint64_t glpAnalyzeCallToFunction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
  if (_canCall(*a2, a3, *(&PROMOTIONS + 2 * ImplicitConversionPolicy), *(&PROMOTIONS + 4 * ImplicitConversionPolicy + 2)))
  {
    _makeConversions(a1, *a2, a3);
    ReturnType = glpFunctionTypeGetReturnType(*a2);
    glpASTNodeSetSaType(a3, ReturnType);
    glpFunctionCallNodeSetExtra(a3, a2);
    return 1;
  }

  else
  {
    glpFunctionCallNodeGetName(a3);
    v10 = v9;
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a3, &v16);
    glpLogMessage(InfoLog, 0, &v16, "Cannot call '%.*s'", v12, v13, v14, v15, v10);
    return 0;
  }
}

uint64_t glpAnalyzeCallToSubroutineArray(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
  if (_canCall(*a2, a3, *(&PROMOTIONS + 2 * ImplicitConversionPolicy), *(&PROMOTIONS + 4 * ImplicitConversionPolicy + 2)))
  {
    _makeConversions(a1, *a2, a3);
    ReturnType = glpFunctionTypeGetReturnType(*a2);
    glpASTNodeSetSaType(a3, ReturnType);
    return 1;
  }

  else
  {
    glpSubroutineArrayCallNodeGetName(a3);
    v10 = v9;
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a3, &v16);
    glpLogMessage(InfoLog, 0, &v16, "Cannot call subroutine array '%.*s'", v12, v13, v14, v15, v10);
    return 0;
  }
}

uint64_t glpCanConvert(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = _primitiveStructuresMatch(a1, a2);
  if (result)
  {
    ScalarType = glpPrimitiveTypeGetScalarType(a1);
    v8 = glpPrimitiveTypeGetScalarType(a2);
    v9 = &PROMOTIONS + 2 * a3;
    v10 = *(v9 + 2);
    if (v10)
    {
      for (i = (*v9 + 4); *(i - 1) != ScalarType || *i != v8; i += 2)
      {
        if (!--v10)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _primitiveStructuresMatch(uint64_t a1, uint64_t a2)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category != glpPrimitiveTypeGetCategory(a2))
  {
    return 0;
  }

  if (Category <= 1)
  {
    if (Category)
    {
      if (Category == 1)
      {
        return 1;
      }

LABEL_18:
      abort();
    }

    return 0;
  }

  if (Category == 4)
  {
    return a1 == a2;
  }

  if (Category == 3)
  {
    Columns = glpPrimitiveMatrixGetColumns(a1);
    if (Columns == glpPrimitiveMatrixGetColumns(a2))
    {
      Rows = glpPrimitiveMatrixGetRows(a1);
      Length = glpPrimitiveMatrixGetRows(a2);
      return Rows == Length;
    }

    return 0;
  }

  if (Category != 2)
  {
    goto LABEL_18;
  }

  Rows = glpPrimitiveVectorGetLength(a1);
  Length = glpPrimitiveVectorGetLength(a2);
  return Rows == Length;
}

uint64_t glpEvaluateArraySize(uint64_t a1, __int128 *a2, uint64_t a3, int *a4)
{
  NameTable = glpCompilerGetNameTable(a1);
  GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
  Language = glpNameTableGetLanguage(NameTable);
  if (!a3)
  {
    v27 = 1;
LABEL_20:
    if (GLSLVersion < 3 && Language == 3 && a3 == 0)
    {
      result = 3;
    }

    else
    {
      result = v27;
    }

    AsSize = -1;
    goto LABEL_30;
  }

  SaFlags = glpASTNodeGetSaFlags(a3);
  if ((GLSLVersion != 1 || (SaFlags & 0x20) == 0) && (GLSLVersion == 1 || (SaFlags & 0x40) == 0))
  {
    if (!glpIsLValueNode(a3) || (VariableExtra = glpLValueNodeGetVariableExtra(a3), !glpStringsEqual("gl_VerticesIn", 0x6B1263A0000000DuLL, *(VariableExtra + 16), *(VariableExtra + 24))))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v31 = *a2;
      v32 = *(a2 + 2);
      v26 = "Array size must be a constant";
      goto LABEL_36;
    }

    v27 = 3;
    goto LABEL_20;
  }

  Allocator = glpCompilerGetAllocator(a1);
  ValueHash = glpCompilerGetValueHash(a1);
  v14 = glpConstantFold(Allocator, ValueHash, a3);
  result = glpIsConstantNode(v14);
  if (!result)
  {
    return result;
  }

  Value = glpConstantNodeGetValue(v14);
  Type = glpConstantNodeGetType(v14);
  if (!glpValueIsUsableAsSize(Type, Value))
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    v31 = *a2;
    v32 = *(a2 + 2);
    v26 = "Array size must be an integer constant expression";
    goto LABEL_36;
  }

  AsSize = glpValueGetAsSize(Type, Value);
  if (GLSLVersion < 3 && Language == 3 && v14 == 0)
  {
    result = 3;
  }

  else
  {
    result = 2;
  }

  if (AsSize)
  {
LABEL_30:
    *a4 = AsSize;
    return result;
  }

  InfoLog = glpCompilerGetInfoLog(a1);
  v31 = *a2;
  v32 = *(a2 + 2);
  v26 = "Array size must be greater than zero";
LABEL_36:
  glpLogMessage(InfoLog, 0, &v31, v26, v22, v23, v24, v25, v31);
  return 0;
}

uint64_t glpEvaluateTypeNode(uint64_t a1, __int128 *a2, int a3, int a4, uint64_t a5, unint64_t a6, unsigned int **a7, uint64_t a8, uint64_t **a9, uint64_t *a10)
{
  *a7 = glpASTNodeGetSaType(a5);
  if (glpIsQualifiedTypeNode(a5))
  {
    Qualifiers = glpQualifiedTypeNodeGetQualifiers(a5);
  }

  else
  {
    Qualifiers = 0;
  }

  result = glpParseQualifiers(a1, a3, Qualifiers, a6, a8, a9, a10);
  if (!result)
  {
    return result;
  }

  if (glpTypeGetKind(*a7) == 5 && (*(a8 + 4) & 1) == 0)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    v166 = *a2;
    v167 = *(a2 + 2);
    v25 = "Only subroutine uniforms may have subroutine types";
LABEL_172:
    glpLogMessage(InfoLog, 0, &v166, v25, v21, v22, v23, v24, v143);
    return 0;
  }

  v155 = a4;
  v26 = *a7;
  for (i = *a7; glpTypeGetKind(i) == 2; v26 = i)
  {
    i = glpArrayTypeGetElementType(v26);
  }

  if ((*a8 & 0x1F) != 0)
  {
    if (glpTypeGetKind(v26))
    {
      v28 = *a7;
      Allocator = glpCompilerGetAllocator(a1);
      glpTypeHumanReadableDescription(v28, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
      v30 = glpCompilerGetInfoLog(a1);
      v31 = *a8 & 0x1FLL;
      if (v31 == 8)
      {
        v32 = 23;
      }

      else
      {
        v32 = 19;
      }

      if (v31 == 16)
      {
        v33 = 24;
      }

      else
      {
        v33 = v32;
      }

      if (v31 == 4)
      {
        v34 = 22;
      }

      else
      {
        v34 = v33;
      }

      v35 = glpQualifierName(v34);
      v166 = *a2;
      v167 = *(a2 + 2);
      v143 = v35;
      v25 = "'%s' : precision qualifier not allowed for type %.*s";
      goto LABEL_23;
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v26);
    if ((glpPrimitiveTypeGetCategory(PrimitiveType) & 0xFFFFFFFB) != 0)
    {
      LODWORD(PrimitiveType) = glpPrimitiveTypeGetScalarType(PrimitiveType);
    }

    if (PrimitiveType == 9 || !PrimitiveType)
    {
      v37 = *a7;
      v38 = glpCompilerGetAllocator(a1);
      glpTypeHumanReadableDescription(v37, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v38);
      v152 = glpCompilerGetInfoLog(a1);
      v39 = *a8 & 0x1FLL;
      switch(v39)
      {
        case 4:
          v40 = 22;
          break;
        case 16:
          v40 = 24;
          break;
        case 8:
          v40 = 23;
          break;
        default:
          v40 = 19;
          break;
      }

      v41 = glpQualifierName(v40);
      v166 = *a2;
      v167 = *(a2 + 2);
      glpLogMessage(v152, 0, &v166, "'%s' : precision qualifier not allowed for type %.*s", v42, v43, v44, v45, v41);
      return 0;
    }
  }

  if (!glpCompilerDoesTrackPrecision(a1))
  {
    *a8 &= 0xFFFFFFFFFFFFFFE0;
  }

  DoesTrackPrecision = glpCompilerDoesTrackPrecision(a1);
  if (v155)
  {
    if (DoesTrackPrecision && (*a8 & 0x1F) == 0 && !glpTypeGetKind(v26))
    {
      MostBasicPrimitiveType = glpGetMostBasicPrimitiveType(v26);
      Category = glpPrimitiveTypeGetCategory(MostBasicPrimitiveType);
      if (Category)
      {
        if (Category != 4)
        {
          LODWORD(MostBasicPrimitiveType) = glpPrimitiveTypeGetScalarType(MostBasicPrimitiveType);
        }

        DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, v26);
        if (!DefaultPrecisionForType && MostBasicPrimitiveType != 9)
        {
          v86 = *a7;
          v87 = glpCompilerGetAllocator(a1);
          glpTypeHumanReadableDescription(v86, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v87);
          v89 = v88;
          v90 = glpCompilerGetInfoLog(a1);
          v166 = *a2;
          v167 = *(a2 + 2);
          glpLogMessage(v90, 0, &v166, "'%.*s' : declaration must include a precision qualifier for type", v91, v92, v93, v94, v89);
          return 0;
        }

        if (MostBasicPrimitiveType != 9)
        {
          *a8 |= DefaultPrecisionForType;
        }
      }
    }
  }

  if ((glpASTNodeGetSaFlags(a5) & 0x8000000) != 0)
  {
    if (!*a9)
    {
      v47 = glpCompilerGetAllocator(a1);
      *a9 = glpMakeLayoutObject(v47);
    }

    v48 = glpCompilerGetAllocator(a1);
    v49 = *a9;
    *&v166 = "-1";
    *(&v166 + 1) = 0xEDA00000002;
    v167 = 0xFFFFFFFFLL;
    glpLayoutObjectAppend(v48, 0, &v166, 0, 0, v49, 84);
  }

  if ((*(a8 + 3) & 0x60) != 0)
  {
    NameTable = glpCompilerGetNameTable(a1);
    GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
    Language = glpNameTableGetLanguage(NameTable);
    IsExtensionEnabled = glpNameTableIsExtensionEnabled(NameTable, 0x23u);
    v153 = GLSLVersion;
    v154 = a2;
    v53 = GLSLVersion > 2 || glpNameTableIsExtensionEnabled(NameTable, 0xEu);
    v145 = v53;
    v56 = *a8;
    v57 = (*a8 >> 29) & 1;
    if (Language)
    {
      v58 = 0;
    }

    else
    {
      v58 = (*a8 >> 29) & 1;
    }

    v150 = v58;
    if (Language != 4)
    {
      LODWORD(v57) = 0;
    }

    v147 = v57;
    Kind = glpTypeGetKind(*a7);
    ElementType = *a7;
    if (Kind == 2)
    {
      ElementType = glpArrayTypeGetElementType(*a7);
    }

    v149 = glpTypeGetKind(ElementType);
    if (v149 == 2)
    {
      ElementType = glpArrayTypeGetElementType(ElementType);
    }

    v144 = Language;
    v146 = Kind;
    v148 = Language == 4;
    if (glpTypeGetKind(ElementType))
    {
      v61 = 0;
    }

    else
    {
      v61 = glpPrimitiveTypeGetPrimitiveType(ElementType);
    }

    v62 = glpPrimitiveTypeGetCategory(v61);
    v63 = glpPrimitiveTypeGetCategory(v61);
    v64 = v63;
    if (v62)
    {
      v63 = glpPrimitiveTypeGetCategory(v61);
      if (v64 != 4)
      {
        v69 = v63;
        ScalarType = glpPrimitiveTypeGetScalarType(v61);
        v71 = ScalarType;
        v68 = IsExtensionEnabled;
        if (ScalarType == 9 && !IsExtensionEnabled)
        {
          goto LABEL_77;
        }

        v72 = v145;
        if (IsExtensionEnabled)
        {
          v72 = 1;
        }

        if ((v72 & 1) != 0 || ScalarType == 1)
        {
          v95 = glpPrimitiveTypeGetScalarType(ScalarType);
          v68 = IsExtensionEnabled;
          v66 = v95 != 62;
          v65 = v71 != 1;
          v62 = 1;
        }

        else
        {
LABEL_77:
          v62 = 0;
          v65 = 1;
          v66 = 1;
        }

        v67 = v150;
        v63 = v69;
LABEL_91:
        v96 = *a8;
        if ((*a8 & 0x1000000000) != 0)
        {
          v98 = 1;
          if (!v67)
          {
            goto LABEL_96;
          }
        }

        else
        {
          v97 = ((v153 < 5) | v147) & v65 ^ 1;
          if (v68)
          {
            v98 = 1;
          }

          else
          {
            v98 = v97;
          }

          if (!v67)
          {
LABEL_96:
            if ((*&v148 & (v56 >> 30)) != 0)
            {
              if (v63 == 3)
              {
                v99 = 0;
              }

              else
              {
                v99 = v62;
              }

              if (v149 == 2)
              {
                v99 = 0;
              }

              v62 = v99 & v66;
              a2 = v154;
              if (v153 > 2 || v68)
              {
                goto LABEL_157;
              }

LABEL_109:
              if (v146 == 2)
              {
                v62 = 0;
              }

              goto LABEL_157;
            }

            a2 = v154;
            if ((a3 - 9) < 2 || (v96 & 0x20000000000) != 0)
            {
              goto LABEL_124;
            }

            if (*a9)
            {
              v100 = v68;
              v101 = glpLayoutObjectFind(*a9, 83);
              v68 = v100;
              if (v101)
              {
                goto LABEL_124;
              }

              v96 = *a8;
            }

            if ((v96 & 0x20000000) != 0)
            {
              v102 = v68;
              v103 = glpBankForInputsInLanguage(v144);
              v68 = v102;
              if (v103)
              {
                goto LABEL_122;
              }

              v96 = *a8;
            }

            if ((v96 & 0x40000000) != 0)
            {
              v104 = v68;
              v105 = glpBankForOutputsInLanguage(v144);
              v68 = v104;
              if (v105)
              {
LABEL_122:
                v106 = v68;
                if ((*(a8 + 3) & 0x20) != 0)
                {
                  v107 = glpBankForInputsInLanguage(v144);
                }

                else
                {
                  v107 = glpBankForOutputsInLanguage(v144);
                }

                v113 = v107;
                if (v146 != 2)
                {
                  v114 = glpCompilerGetInfoLog(a1);
                  if ((*a8 & 0x20000000) != 0)
                  {
                    v115 = "inputs";
                  }

                  else
                  {
                    v115 = "outputs";
                  }

                  glpLanguageToString(v144);
                  v166 = *v154;
                  v167 = *(v154 + 2);
                  glpLogMessage(v114, 0, &v166, "%s in the %s shader must be arrays", v116, v117, v118, v119, v115);
                  return 0;
                }

                if (glpTypeGetKind(ElementType) != 1)
                {
                  goto LABEL_147;
                }

                *&v166 = 0;
                *(&v166 + 1) = &v166;
                v167 = 0x2000000000;
                v168 = 1;
                v162 = 0;
                v163 = &v162;
                v164 = 0x2000000000;
                v165 = 0;
                v120 = *a7;
                v160[0] = MEMORY[0x277D85DD0];
                v160[1] = 0x40000000;
                v160[2] = __glpEvaluateTypeNode_block_invoke;
                v160[3] = &unk_278B49C50;
                v161 = v106;
                v160[4] = &v166;
                v160[5] = &v162;
                glpEachPrimitiveComponentOfType(v120, v160);
                if (*(*(&v166 + 1) + 24))
                {
                  _Block_object_dispose(&v162, 8);
                  _Block_object_dispose(&v166, 8);
                  v62 = 1;
LABEL_147:
                  v121 = glpArrayTypeGetElementType(*a7);
                  ElementCount = glpArrayTypeGetElementCount(*a7);
                  ImpliedBankSize = glpCompilerGetImpliedBankSize(a1, v113);
                  if (ElementCount == -1)
                  {
                    ElementCount = ImpliedBankSize;
                  }

                  if (ImpliedBankSize != -1 && ElementCount != ImpliedBankSize)
                  {
                    v30 = glpCompilerGetInfoLog(a1);
                    *a8;
                    glpLanguageToString(v144);
                    v166 = *v154;
                    v167 = *(v154 + 2);
                    v143 = ElementCount;
                    v25 = "Declared size (%u) of %s array in the %s shader is incompatible with earlier declarations (expected %u)";
LABEL_23:
                    InfoLog = v30;
                    goto LABEL_172;
                  }

                  v131 = glpCompilerGetAllocator(a1);
                  *a7 = glpMakeBankType(v131, v113, v121, ElementCount);
                  goto LABEL_157;
                }

LABEL_152:
                v124 = glpCompilerGetInfoLog(a1);
                if ((*a8 & 0x20000000) != 0)
                {
                  v129 = "Input";
                }

                else
                {
                  v129 = "Output";
                }

                v130 = v163[3];
                v158 = *v154;
                v159 = *(v154 + 2);
                glpLogMessage(v124, 0, &v158, "%s variables may not contain %s", v125, v126, v127, v128, v129);
                _Block_object_dispose(&v162, 8);
                _Block_object_dispose(&v166, 8);
                return 0;
              }
            }

LABEL_124:
            if (v149 == 2)
            {
              v108 = 0;
            }

            else
            {
              v108 = v62;
            }

            v62 = v108 & v98;
            if (v153 < 5)
            {
              goto LABEL_157;
            }

            if ((v62 & 1) == 0)
            {
              v109 = v68;
              v110 = glpTypeGetKind(*a7);
              v68 = v109;
              if (v110 != 1)
              {
                if (v146 != 2)
                {
                  goto LABEL_166;
                }

                if (v149 == 2)
                {
                  goto LABEL_166;
                }

                v112 = glpTypeGetKind(ElementType);
                v68 = v109;
                if (v112 != 1)
                {
                  goto LABEL_166;
                }
              }
            }

            *&v166 = 0;
            *(&v166 + 1) = &v166;
            v167 = 0x2000000000;
            v168 = 1;
            v162 = 0;
            v163 = &v162;
            v164 = 0x2000000000;
            v165 = 0;
            v111 = *a7;
            v156[0] = MEMORY[0x277D85DD0];
            v156[1] = 0x40000000;
            v156[2] = __glpEvaluateTypeNode_block_invoke_2;
            v156[3] = &unk_278B49C78;
            v157 = v68;
            v156[4] = &v166;
            v156[5] = &v162;
            glpEachPrimitiveComponentOfType(v111, v156);
            if (*(*(&v166 + 1) + 24))
            {
              _Block_object_dispose(&v162, 8);
              _Block_object_dispose(&v166, 8);
              goto LABEL_158;
            }

            goto LABEL_152;
          }
        }

        if (v149 == 2)
        {
          v62 = 0;
        }

        a2 = v154;
        if (v153 <= 4)
        {
          goto LABEL_109;
        }

LABEL_157:
        if (v62)
        {
          goto LABEL_158;
        }

LABEL_166:
        v132 = *a7;
        v133 = glpCompilerGetAllocator(a1);
        glpTypeHumanReadableDescription(v132, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v133);
        v135 = v134;
        v136 = glpCompilerGetInfoLog(a1);
        *a8;
        v137 = glpCompilerGetNameTable(a1);
        v138 = glpNameTableGetLanguage(v137);
        glpLanguageToString(v138);
        v166 = *a2;
        v167 = *(a2 + 2);
        glpLogMessage(v136, 0, &v166, "%.*s can't be an %s in the %s shader", v139, v140, v141, v142, v135);
        return 0;
      }

      v62 = 0;
      v65 = 1;
    }

    else
    {
      v65 = 1;
    }

    v66 = 1;
    v67 = v150;
    v68 = IsExtensionEnabled;
    goto LABEL_91;
  }

  v54 = glpTypeGetKind(*a7);
  v55 = *a7;
  if (v54 == 2)
  {
    v55 = glpArrayTypeGetElementType(v55);
  }

  if (glpTypeGetKind(v55) == 2)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    v166 = *a2;
    v167 = *(a2 + 2);
    v25 = "Multi-dimensional array types not supported";
    goto LABEL_172;
  }

  if ((~*a8 & 0x300000000) == 0 && glpTypeGetKind(*a7) != 5)
  {
    if (glpTypeGetKind(*a7) != 2 || (v73 = glpArrayTypeGetElementType(*a7), glpTypeGetKind(v73) != 5))
    {
      v74 = *a7;
      v75 = glpCompilerGetAllocator(a1);
      glpTypeHumanReadableDescription(v74, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v75);
      v77 = v76;
      v78 = glpCompilerGetInfoLog(a1);
      v166 = *a2;
      v167 = *(a2 + 2);
      glpLogMessage(v78, 0, &v166, "subroutine uniform may not have non-subroutine type '%.*s'", v79, v80, v81, v82, v77);
      return 0;
    }
  }

LABEL_158:
  if (!glpTypeGetKind(*a7) && !glpPrimitiveTypeGetPrimitiveType(*a7))
  {
    if ((*a8 & 0xFFFFFFFFFFE7FFFFLL) != 0)
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v166 = *a2;
      v167 = *(a2 + 2);
      v25 = "void may not be qualified";
      goto LABEL_172;
    }

    if (a3 != 4)
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v166 = *a2;
      v167 = *(a2 + 2);
      v25 = "void not allowed except as return type";
      goto LABEL_172;
    }
  }

  result = 1;
  if (a3 != 8 && v155 && (*a8 & 0x900000000) != 0x100000000 && (*a8 & 0x6000000) != 0x2000000)
  {
    if (!glpTypeGetSamplerCount(*a7))
    {
      return 1;
    }

    InfoLog = glpCompilerGetInfoLog(a1);
    v166 = *a2;
    v167 = *(a2 + 2);
    v25 = "Samplers not allowed except in non-buffer uniforms and in-parameters";
    goto LABEL_172;
  }

  return result;
}

uint64_t __glpEvaluateTypeNode_block_invoke(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = glpPrimitiveTypeGetCategory(a2);
  if ((result - 1) >= 3)
  {
    if (result == 4)
    {
      v7 = "samplers";
      goto LABEL_9;
    }

    if (!result)
    {
      abort();
    }
  }

  else if (!*(a1 + 48))
  {
    result = glpPrimitiveTypeGetScalarType(a2);
    if (result == 9)
    {
      v7 = "BOOLs";
LABEL_9:
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *(*(*(a1 + 40) + 8) + 24) = v7;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t __glpEvaluateTypeNode_block_invoke_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = glpPrimitiveTypeGetCategory(a2);
  if ((result - 1) >= 3)
  {
    if (result == 4)
    {
      v7 = "samplers";
      goto LABEL_9;
    }

    if (!result)
    {
      abort();
    }
  }

  else if (!*(a1 + 48))
  {
    result = glpPrimitiveTypeGetScalarType(a2);
    if (result == 9)
    {
      v7 = "BOOLs";
LABEL_9:
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *(*(*(a1 + 40) + 8) + 24) = v7;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t glpCheckName(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  NameTable = glpCompilerGetNameTable(a1);
  if (!glpNameTableIsExtensionEnabled(NameTable, 0x23u) && a4 >= 3)
  {
    v9 = *a3;
    if (v9 == 103)
    {
      v9 = a3[1];
      if (v9 == 108)
      {
        v9 = a3[2];
        v10 = 95;
      }

      else
      {
        v10 = 108;
      }
    }

    else
    {
      v10 = 103;
    }

    if (v10 == v9)
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v17);
      glpLogMessage(InfoLog, 0, &v17, "Identifier name '%.*s' cannot start with 'gl_'", v12, v13, v14, v15, a4);
      return -1;
    }
  }

  return a2;
}

BOOL glpHandleVariableRedeclaration(uint64_t a1, __int128 *a2, uint64_t a3, char a4, unsigned int *a5, uint64_t a6, uint64_t *a7, unsigned int *a8, unsigned int *a9, uint64_t a10, void **a11, unsigned int **a12, unint64_t *a13, void **a14)
{
  if (a7)
  {
    v19 = glpLayoutObjectFind(a7, 81) != 0;
    if (glpLayoutObjectFind(a7, 82))
    {
      NameTable = glpCompilerGetNameTable(a1);
      if (glpNameTableGetGLSLVersion(NameTable) > 8 || glpNameTableIsExtensionEnabled(NameTable, 0x15u) || glpNameTableIsExtensionEnabled(NameTable, 1u))
      {
        v19 = 1;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v144 = v19;
  Allocator = glpCompilerGetAllocator(a1);
  glpTypeHumanReadableDescription(a5, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
  v22 = glpCompilerGetAllocator(a1);
  glpTypeHumanReadableDescription(a9, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v22);
  v24 = v23;
  Kind = glpTypeGetKind(a5);
  if (Kind != glpTypeGetKind(a9))
  {
    goto LABEL_31;
  }

  v26 = a5;
  if (Kind == 3)
  {
    ElementCount = glpBankTypeGetElementCount(a5);
    v34 = glpBankTypeGetElementCount(a9);
    if (ElementCount != -1 && v34 != -1 && ElementCount != v34)
    {
      goto LABEL_31;
    }

    ElementType = glpBankTypeGetElementType(a5);
    v36 = glpBankTypeGetElementType(a9);
    v139 = ElementType;
    v37 = glpTypeGetKind(ElementType);
    v140 = v36;
    if (v37 != glpTypeGetKind(v36))
    {
      goto LABEL_31;
    }

    if (v37 == 2)
    {
      v38 = glpArrayTypeGetElementCount(v139);
      v39 = glpArrayTypeGetElementCount(v36);
      if (v38 != -1 && v39 != -1 && v38 != v39)
      {
        goto LABEL_31;
      }

      v40 = glpArrayTypeGetElementType(v139);
      v32 = glpArrayTypeGetElementType(v140);
      v26 = v40;
    }

    else
    {
      v26 = v139;
      v32 = v36;
    }
  }

  else if (Kind == 2)
  {
    v27 = glpArrayTypeGetElementCount(a5);
    v28 = glpArrayTypeGetElementCount(a9);
    if (v27 != -1 && v28 != -1 && v27 != v28)
    {
      goto LABEL_31;
    }

    v29 = glpArrayTypeGetElementType(a5);
    v30 = glpArrayTypeGetElementType(a9);
    v31 = glpTypeGetKind(v29);
    if (v31 != glpTypeGetKind(v30))
    {
      goto LABEL_31;
    }

    v26 = v29;
    v32 = v30;
  }

  else
  {
    v32 = a9;
  }

  if (!glpTypesEqual(v26, v32))
  {
LABEL_31:
    InfoLog = glpCompilerGetInfoLog(a1);
    v146 = *a2;
    v147 = *(a2 + 2);
    glpLogMessage(InfoLog, 0, &v146, "Type (%.*s) of redeclaration of '%.*s' is incompatible with type (%.*s) of previous declaration", v43, v44, v45, v46, v24);
    return 0;
  }

  if (glpTypeGetKind(a5) != 2 && glpTypeGetKind(a5) != 3)
  {
    if (!v144)
    {
      v70 = glpCompilerGetInfoLog(a1);
      v146 = *a2;
      v147 = *(a2 + 2);
      glpLogMessage(v70, 0, &v146, "Regular non-array variable '%.*s' may not be redeclared", v71, v72, v73, v74, a4);
      return 0;
    }

    if (!glpTypesEqual(a5, a9))
    {
      v61 = glpCompilerGetInfoLog(a1);
      v146 = *a2;
      v147 = *(a2 + 2);
      glpLogMessage(v61, 0, &v146, "Type (%.*s) of redeclaration of '%.*s' differs from type (%.*s) of previous declaration", v62, v63, v64, v65, v24);
      return 0;
    }

    goto LABEL_88;
  }

  if (glpTypeGetKind(a5) == 2)
  {
    v41 = 1;
  }

  else
  {
    v48 = glpBankTypeGetElementType(a5);
    v41 = glpTypeGetKind(v48) != 2;
  }

  v49 = _elementCount(a5);
  v50 = _elementCount(a9);
  if (v50 == -1 && v49 != -1)
  {
    goto LABEL_36;
  }

  if (!v41)
  {
    v141 = v50;
    v66 = _elementType(a5);
    v67 = _elementType(a9);
    v68 = _elementCount(v66);
    v69 = _elementCount(v67);
    if (v69 == -1 && v68 != -1)
    {
LABEL_36:
      v51 = glpCompilerGetInfoLog(a1);
      v146 = *a2;
      v147 = *(a2 + 2);
      glpLogMessage(v51, 0, &v146, "Type (%.*s) of redeclaration of '%.*s' is less specific than type (%.*s) of previous declaration", v52, v53, v54, v55, v24);
      return 0;
    }

    if (v49 != -1 || v141 == -1)
    {
      if (v68 != -1 || v69 == -1)
      {
        if ((v141 & v49 & v68 & v69) != 0xFFFFFFFF)
        {
          v113 = glpCompilerGetInfoLog(a1);
          v146 = *a2;
          v147 = *(a2 + 2);
          glpLogMessage(v113, 0, &v146, "Size in type (%.*s) of redeclaration of sized array '%.*s' adds nothing to size in type (%.*s) of previous declaration", v114, v115, v116, v117, v24);
          return 0;
        }

        goto LABEL_100;
      }

      if (v49 == -1 || v49 == v141)
      {
LABEL_82:
        if (*a8 > v141)
        {
          v107 = glpCompilerGetInfoLog(a1);
          v108 = *a8;
          v146 = *a2;
          v147 = *(a2 + 2);
          glpLogMessage(v107, 0, &v146, "Outer size in type (%.*s) of redeclaration of implicitly-sized array '%.*s' is less than the implicit size (%u)", v109, v110, v111, v112, v24);
          return 0;
        }

        if (a8[1] > v69)
        {
          v124 = glpCompilerGetInfoLog(a1);
          v125 = a8[1];
          v146 = *a2;
          v147 = *(a2 + 2);
          glpLogMessage(v124, 0, &v146, "Inner size in type (%.*s) of redeclaration of implicitly-sized array '%.*s' is less than the implicit size (%u)", v126, v127, v128, v129, v24);
          return 0;
        }

LABEL_100:
        v145 = a4;
        v130 = glpBankTypeGetElementType(a5);
        v131 = glpBankTypeGetElementType(a9);
        v132 = glpCompilerGetAllocator(a1);
        v133 = glpArrayTypeGetElementType(v130);
        v134 = glpArrayTypeGetElementCount(v130);
        v135 = glpArrayTypeGetElementCount(v131);
        if (v134 == -1)
        {
          v136 = v135;
        }

        else
        {
          v136 = v134;
        }

        MaxElementCount = glpArrayTypeGetMaxElementCount(v130);
        ArrayType = glpMakeArrayType(v132, v133, v136, MaxElementCount);
        if (glpArrayTypeGetMaxElementCount(ArrayType) != -1)
        {
          v138 = glpArrayTypeGetElementCount(ArrayType);
          if (v138 > glpArrayTypeGetMaxElementCount(ArrayType))
          {
LABEL_79:
            v97 = glpCompilerGetInfoLog(a1);
            v146 = *a2;
            v147 = *(a2 + 2);
            glpLogMessage(v97, 0, &v146, "Redeclaration of special array '%.*s' exceeds maximum allowed size", v98, v99, v100, v101, v145);
            return 0;
          }
        }

        goto LABEL_59;
      }
    }

    else if (v68 == -1 || v68 == v69)
    {
      goto LABEL_82;
    }

    v91 = glpCompilerGetInfoLog(a1);
    v146 = *a2;
    v147 = *(a2 + 2);
    glpLogMessage(v91, 0, &v146, "Size in type (%.*s) of redeclaration of sized array '%.*s' doesn't match size in type (%.*s) of previous declaration", v92, v93, v94, v95, v24);
    return 0;
  }

  if (v49 == -1)
  {
    if (v50 != -1 && *a8 > v50)
    {
      v75 = glpCompilerGetInfoLog(a1);
      v76 = *a8;
      v146 = *a2;
      v147 = *(a2 + 2);
      glpLogMessage(v75, 0, &v146, "Size in type (%.*s) of redeclaration of implicitly-sized array '%.*s' is less than the implicit size (%u)", v77, v78, v79, v80, v24);
      return 0;
    }
  }

  else
  {
    if (!v144)
    {
      v86 = glpCompilerGetInfoLog(a1);
      v146 = *a2;
      v147 = *(a2 + 2);
      glpLogMessage(v86, 0, &v146, "Redeclaration of sized array '%.*s' not allowed", v87, v88, v89, v90, a4);
      return 0;
    }

    if (v49 != v50)
    {
      v56 = glpCompilerGetInfoLog(a1);
      v146 = *a2;
      v147 = *(a2 + 2);
      glpLogMessage(v56, 0, &v146, "Redeclaration of redeclarable sized array '%.*s' would alter size", v57, v58, v59, v60, a4);
      return 0;
    }
  }

  v145 = a4;
  ArrayType = _elementType(a5);
LABEL_59:
  v82 = _elementCount(a5);
  v83 = _elementCount(a9);
  if (v82 == -1)
  {
    v84 = v83;
  }

  else
  {
    v84 = v82;
  }

  if (glpTypeGetKind(a5) == 3)
  {
    v85 = -1;
  }

  else
  {
    v85 = glpArrayTypeGetMaxElementCount(a5);
  }

  if (glpTypeGetKind(a9) == 3)
  {
    v96 = -1;
  }

  else
  {
    v96 = glpArrayTypeGetMaxElementCount(a9);
  }

  if (v85 == -1)
  {
    v85 = v96;
  }

  if (v85 != -1 && v84 != -1 && v84 > v85)
  {
    goto LABEL_79;
  }

  v102 = glpTypeGetKind(a5);
  v103 = glpCompilerGetAllocator(a1);
  v104 = v103;
  if (v102 == 3)
  {
    Bank = glpBankTypeGetBank(a5);
    BankType = glpMakeBankType(v104, Bank, ArrayType, v84);
  }

  else
  {
    BankType = glpMakeArrayType(v103, ArrayType, v84, v85);
  }

  a5 = BankType;
LABEL_88:
  *a12 = a5;
  if (a7)
  {
    v118 = glpCompilerGetAllocator(a1);
    v119 = glpCopyLayoutObject(v118, a7);
    *a14 = v119;
    if (a11)
    {
      v120 = glpCompilerGetAllocator(a1);
      v121 = *a14;
      v146 = *a2;
      v147 = *(a2 + 2);
      result = glpLayoutObjectAppendMany(v120, a1, &v146, v121, a11);
      if (!result)
      {
        return result;
      }

      goto LABEL_94;
    }
  }

  else
  {
    if (!a11)
    {
LABEL_94:
      v119 = *a14;
      goto LABEL_95;
    }

    v122 = glpCompilerGetAllocator(a1);
    v119 = glpCopyLayoutObject(v122, a11);
    *a14 = v119;
  }

LABEL_95:
  if (v119)
  {
    v123 = glpCompilerGetAllocator(a1);
    glpLayoutObjectRemove(v123, *a14, 82);
  }

  *a13 = a6 & 0xFFFFFFFFFFFFFFE0 | a10;
  return 1;
}

uint64_t _elementCount(unsigned int *a1)
{
  Kind = glpTypeGetKind(a1);
  if (Kind == 3)
  {

    return glpBankTypeGetElementCount(a1);
  }

  else
  {
    if (Kind != 2)
    {
      abort();
    }

    return glpArrayTypeGetElementCount(a1);
  }
}

uint64_t _elementType(unsigned int *a1)
{
  Kind = glpTypeGetKind(a1);
  if (Kind == 3)
  {

    return glpBankTypeGetElementType(a1);
  }

  else
  {
    if (Kind != 2)
    {
      abort();
    }

    return glpArrayTypeGetElementType(a1);
  }
}

uint64_t glpFlattenCommaTree(uint64_t a1, uint64_t a2)
{
  Allocator = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a2, &v7);
  glpMakeCommaExprNode(Allocator, &v7, 0);
  v5 = v4;
  flattenCommaTreeInto(a2, v4, Allocator);
  return v5;
}

void *flattenCommaTreeInto(uint64_t a1, uint64_t a2, void *a3)
{
  if (glpASTNodeGetKind(a1) == 43)
  {
    result = glpCommaExprNodeGetExprCount(a1);
    if (result)
    {
      v7 = result;
      for (i = 0; i != v7; ++i)
      {
        Expr = glpCommaExprNodeGetExpr(a1, i);
        result = flattenCommaTreeInto(Expr, a2, a3);
      }
    }
  }

  else
  {

    return glpCommaExprNodeAddExpr(a3, a2, a1);
  }

  return result;
}

uint64_t glpCommaResult(uint64_t Expr)
{
  while (1)
  {
    v1 = Expr;
    if (glpASTNodeGetKind(Expr) != 43)
    {
      break;
    }

    ExprCount = glpCommaExprNodeGetExprCount(v1);
    Expr = glpCommaExprNodeGetExpr(v1, ExprCount - 1);
  }

  return v1;
}

uint64_t glpSASpecialAssert(uint64_t a1, uint64_t a2)
{
  if (glpCallNodeGetArgCount(a2) <= 1)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v73);
    v9 = "$assert requires at least 2 arguments";
LABEL_13:
    glpLogMessage(InfoLog, 0, &v73, v9, v5, v6, v7, v8, v69);
    return -1;
  }

  v10 = glpCallNodeGetArg(a2, 0);
  if (glpASTNodeGetKind(v10) != 1)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v73);
    v9 = "first argument to $assert must be an identifier";
    goto LABEL_13;
  }

  Name = glpVariableIdentifierNodeGetName(v10);
  v12 = Name;
  v14 = v13;
  if (v13 >= 8)
  {
    if (!strncmp(Name, "type_is_", 8uLL))
    {
      v23 = v12 + 8;
      v24 = (v14 - 8);
      if (v14 == 8)
      {
        v27 = 0;
      }

      else
      {
        v25 = v14 - 9;
        LODWORD(v26) = v14 - 8;
        do
        {
          v26 = (32 * v26 + (v26 >> 2) + v23[v25]) ^ v26;
          v25 += ~(v24 >> 5);
        }

        while (v25 + 1 > v24 >> 5);
        v27 = v26 << 32;
      }

      v30 = glpPrimitiveTypeFromString(v23, v27 | v24);
      PrimitiveType = glpGetPrimitiveType(v30);
      v32 = glpCallNodeGetArg(a2, 1u);
      v33 = glpSANode(a1, v32);
      if (v33 == -1)
      {
        v37 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v73);
        glpLogMessage(v37, 0, &v73, "$assert type_is: expected %.*s but got SA failure", v38, v39, v40, v41, v24);
        return -1;
      }

      SaType = glpASTNodeGetSaType(v33);
      if (!glpTypesEqual(PrimitiveType, SaType))
      {
        Allocator = glpCompilerGetAllocator(a1);
        glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
        v44 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v73);
        glpLogMessage(v44, 0, &v73, "$assert type_is: expected %.*s but got %.*s", v45, v46, v47, v48, v24);
        return -1;
      }

LABEL_25:
      glpASTNodeGetLocation(a2, &v73);
      v35 = glpGetPrimitiveType(5u);
      IntConstant = glpCompilerGetIntConstant(a1, 1);
      return glpMakeConstantValueFragment(a1, &v73, v35, IntConstant);
    }

    if (v14 < 0xD || strncmp(v12, "precision_is_", 0xDuLL))
    {
      goto LABEL_8;
    }

    if (v14 < 0x11)
    {
      if (v14 != 16)
      {
        goto LABEL_49;
      }

      goto LABEL_34;
    }

    v42 = 4;
    if (!strncmp(v12 + 13, "lowp", 4uLL))
    {
      goto LABEL_38;
    }

    if (v14 < 0x14)
    {
      if (v14 == 17)
      {
LABEL_34:
        if (v12[13] == 110 && v12[14] == 111 && v12[15] == 112)
        {
          v42 = 0;
          goto LABEL_38;
        }

LABEL_49:
        abort();
      }
    }

    else if (!strncmp(v12 + 13, "mediump", 7uLL))
    {
      v42 = 8;
      goto LABEL_38;
    }

    if (!strncmp(v12 + 13, "highp", 5uLL))
    {
      v42 = 16;
    }

    else
    {
      if (strncmp(v12 + 13, "_argp", 5uLL))
      {
        if (!strncmp(v12 + 13, "_anyp", 5uLL))
        {
          v42 = 2;
          goto LABEL_38;
        }

        goto LABEL_34;
      }

      v42 = 1;
    }

LABEL_38:
    v49 = glpCallNodeGetArg(a2, 1u);
    v50 = glpSANode(a1, v49);
    if (v50 == -1)
    {
      v62 = glpCompilerGetAllocator(a1);
      StringBuffer = glpMakeStringBuffer(v62);
      _formatPrecisionToStringBuffer(StringBuffer, v42);
      v64 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v73);
      CString = glpStringBufferGetCString(StringBuffer);
      glpLogMessage(v64, 0, &v73, "$assert precision_is: expected %s but got SA failure", v65, v66, v67, v68, CString);
      return -1;
    }

    v51 = glpASTNodeGetSaFlags(v50) & 0x1F;
    if (v51 != v42)
    {
      v52 = glpCompilerGetAllocator(a1);
      v53 = glpMakeStringBuffer(v52);
      _formatPrecisionToStringBuffer(v53, v42);
      v54 = glpCompilerGetAllocator(a1);
      v55 = glpMakeStringBuffer(v54);
      _formatPrecisionToStringBuffer(v55, v51);
      v56 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v73);
      v57 = glpStringBufferGetCString(v53);
      glpStringBufferGetCString(v55);
      glpLogMessage(v56, 0, &v73, "$assert precision_is: expected %s but got %s", v58, v59, v60, v61, v57);
      return -1;
    }

    goto LABEL_25;
  }

LABEL_8:
  if (!glpStringsEqual("sa_failed", 0xBA70AE8500000009, v12, v14))
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v73);
    v69 = v14;
    v9 = "$assert unknown assertion kind: %.*s";
    goto LABEL_13;
  }

  v73.n128_u64[0] = 0;
  v73.n128_u64[1] = &v73;
  v74 = 0x2000000000;
  v75 = 0;
  v15 = glpCompilerGetInfoLog(a1);
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 0x40000000;
  v72[2] = __glpSASpecialAssert_block_invoke;
  v72[3] = &unk_278B49CA0;
  v72[4] = &v73;
  v72[5] = a1;
  v72[6] = a2;
  glpLogSuppress(v15, v72, &__block_literal_global_2);
  if (*(v73.n128_u64[1] + 24) == -1)
  {
    glpASTNodeGetLocation(a2, &v71);
    v28 = glpGetPrimitiveType(5u);
    v29 = glpCompilerGetIntConstant(a1, 1);
    ConstantValueFragment = glpMakeConstantValueFragment(a1, &v71, v28, v29);
  }

  else
  {
    v16 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v71);
    glpLogMessage(v16, 0, &v71, "$assert sa_failed: expected this code to fail SA, but it passed", v17, v18, v19, v20, v69);
    ConstantValueFragment = -1;
  }

  _Block_object_dispose(&v73, 8);
  return ConstantValueFragment;
}

uint64_t *_formatPrecisionToStringBuffer(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 0:
        v4 = "nop";
        goto LABEL_35;
      case 1:
        v4 = "$argp";
        goto LABEL_35;
      case 2:
        v4 = "$anyp";
        goto LABEL_35;
    }

    goto LABEL_14;
  }

  if (a2 > 15)
  {
    if (a2 == 16)
    {
LABEL_34:
      v4 = "highp";
      goto LABEL_35;
    }

    if (a2 == 31)
    {
      v4 = "allp";
      goto LABEL_35;
    }

LABEL_14:
    if ((a2 & 2) != 0)
    {
      result = glpStringBufferAppendCString(result, "$anyp");
      if ((v2 & 1) == 0)
      {
        if ((v2 & 4) != 0)
        {
LABEL_29:
          glpStringBufferAppendCString(v3, "|");
          goto LABEL_30;
        }

LABEL_24:
        if ((v2 & 8) != 0)
        {
LABEL_31:
          glpStringBufferAppendCString(v3, "|");
LABEL_32:
          result = glpStringBufferAppendCString(v3, "mediump");
          if ((v2 & 0x10) == 0)
          {
            return result;
          }

          goto LABEL_33;
        }

LABEL_25:
        if ((v2 & 0x10) == 0)
        {
          return result;
        }

LABEL_33:
        glpStringBufferAppendCString(v3, "|");
        goto LABEL_34;
      }

      glpStringBufferAppendCString(v3, "|");
    }

    else if ((a2 & 1) == 0)
    {
      if ((a2 & 4) == 0)
      {
        if ((a2 & 8) == 0)
        {
          if ((a2 & 0x10) == 0)
          {
            return result;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }

LABEL_30:
      result = glpStringBufferAppendCString(v3, "lowp");
      if ((v2 & 8) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }

    result = glpStringBufferAppendCString(v3, "$argp");
    if ((v2 & 4) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  if (a2 == 4)
  {
    v4 = "lowp";
    goto LABEL_35;
  }

  if (a2 != 8)
  {
    goto LABEL_14;
  }

  v4 = "mediump";
LABEL_35:

  return glpStringBufferAppendCString(v3, v4);
}

uint64_t __glpSASpecialAssert_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = glpCallNodeGetArg(a1[6], 1u);
  result = glpSANode(v2, v3);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t glpApplySizeToBanks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  TopLevelNode = glpCompilerGetTopLevelNode(a1);
  if (glpTopLevelNodeGetDefCount(TopLevelNode))
  {
    v7 = 0;
    v46 = a2;
    do
    {
      Def = glpTopLevelNodeGetDef(TopLevelNode, v7);
      if ((Def + 1) >= 2)
      {
        v9 = Def;
        Kind = glpASTNodeGetKind(Def);
        if ((Kind - 46) >= 2)
        {
          if (Kind == 57)
          {
            Extra = glpInterfaceBlockNodeGetExtra(v9);
            if (Extra)
            {
              v25 = Extra;
              if (*(Extra + 40) == a2)
              {
                v26 = *(Extra + 64);
                Bank = glpBankTypeGetBank(v26);
                v44 = v26;
                v45 = a3;
                if (glpBankTypeGetElementCount(v26) == -1)
                {
                  VariableObjectCount = glpInterfaceBlockObjectGetVariableObjectCount(v25);
                  if (VariableObjectCount)
                  {
                    v29 = 0;
                    v30 = 8 * VariableObjectCount;
                    do
                    {
                      v31 = *(*(v25 + 72) + v29);
                      Allocator = glpCompilerGetAllocator(v5);
                      ElementType = glpBankTypeGetElementType(*v31);
                      *v31 = glpMakeBankType(Allocator, Bank, ElementType, v45);
                      v29 += 8;
                    }

                    while (v30 != v29);
                  }
                }

                else if (glpBankTypeGetElementCount(v26) != a3)
                {
                  InfoLog = glpCompilerGetInfoLog(v5);
                  glpASTNodeGetLocation(v9, &v47);
                  v37 = *v25;
                  v38 = *(v25 + 8);
                  glpBankTypeGetElementCount(v44);
                  glpLogMessage(InfoLog, 0, &v47, "Size of interface block array '%.*s' should have been %u but was %u", v39, v40, v41, v42, v38);
                  return 0;
                }

                v34 = glpCompilerGetAllocator(v5);
                v35 = glpBankTypeGetElementType(v44);
                a3 = v45;
                *(v25 + 64) = glpMakeBankType(v34, Bank, v35, v45);
              }
            }
          }
        }

        else
        {
          for (i = 0; ; ++i)
          {
            v12 = glpASTNodeGetKind(v9) == 47 ? glpVariableDeclarationGroupNodeGetDeclarationCount(v9) : 1;
            if (i >= v12)
            {
              break;
            }

            Declaration = v9;
            if (glpASTNodeGetKind(v9) == 47)
            {
              Declaration = glpVariableDeclarationGroupNodeGetDeclaration(v9, i);
            }

            SaType = glpASTNodeGetSaType(Declaration);
            if ((glpASTNodeGetSaFlags(Declaration) & a2) != 0 && SaType && glpTypeGetKind(SaType) == 3 && glpBankTypeGetElementCount(SaType) == -1)
            {
              v15 = glpCompilerGetAllocator(v5);
              v16 = TopLevelNode;
              v17 = v5;
              v18 = a3;
              v19 = v15;
              v20 = glpBankTypeGetBank(SaType);
              v21 = glpBankTypeGetElementType(SaType);
              v22 = v19;
              a3 = v18;
              v5 = v17;
              TopLevelNode = v16;
              a2 = v46;
              BankType = glpMakeBankType(v22, v20, v21, a3);
              glpASTNodeSetSaType(Declaration, BankType);
              *glpVariableDeclarationNodeGetExtra(Declaration) = BankType;
            }
          }
        }
      }

      ++v7;
    }

    while (v7 < glpTopLevelNodeGetDefCount(TopLevelNode));
  }

  return 1;
}

uint64_t glpSAPreIncrementOrDecrement(uint64_t a1, uint64_t a2, int a3)
{
  v19 = 0;
  v20 = 0;
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  glpHandleSideEffectsForExpr(a1, Expr, &v20, &v19);
  if (a3)
  {
    v7 = glpMakeIncrementFragment;
  }

  else
  {
    v7 = glpMakeDecrementFragment;
  }

  glpASTNodeGetLocation(a2, &v18);
  v8 = v20;
  v9 = glpDuplicateDerefOrConstant(a1, v20);
  v10 = v7(a1, &v18, v8, v9);
  if (v19 && glpIsCommaExprNode(v19))
  {
    ExprCount = glpCommaExprNodeGetExprCount(v19);
    glpCommaExprNodeSetExpr(v19, ExprCount - 1, v10);
    glpASTNodeSetSaType(v19, 0);
    v12 = v19;
  }

  else
  {
    Allocator = glpCompilerGetAllocator(a1);
    glpASTNodeGetLocation(a2, &v18);
    glpMakeCommaExprNode(Allocator, &v18, 0);
    v12 = v14;
    if (v19)
    {
      v15 = glpCompilerGetAllocator(a1);
      glpCommaExprNodeAddExpr(v15, v12, v19);
    }

    v16 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v16, v12, v10);
  }

  return glpSANode(a1, v12);
}

uint64_t glpSAPostIncrementOrDecrement(uint64_t a1, uint64_t a2, int a3)
{
  v30 = 0;
  v31 = 0;
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  glpHandleSideEffectsForExpr(a1, Expr, &v31, &v30);
  v28 = 0;
  v29 = 0;
  SaType = glpASTNodeGetSaType(v31);
  SaFlags = glpASTNodeGetSaFlags(v31);
  v9 = glpDuplicateDerefOrConstant(a1, v31);
  glpMakeTemporary(a1, SaType, SaFlags & 0x1F, v9, &v29, &v28);
  if (a3)
  {
    v10 = glpMakeIncrementFragment;
  }

  else
  {
    v10 = glpMakeDecrementFragment;
  }

  glpASTNodeGetLocation(a2, &v27);
  v11 = v31;
  v12 = glpDuplicateDerefOrConstant(a1, v31);
  v13 = v10(a1, &v27, v11, v12);
  Allocator = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a2, &v27);
  glpMakeCommaExprNode(Allocator, &v27, 0);
  v16 = v15;
  if (v30)
  {
    if (glpIsCommaExprNode(v30))
    {
      ExprCount = glpCommaExprNodeGetExprCount(v30);
      if (ExprCount)
      {
        v18 = ExprCount;
        for (i = 0; i != v18; ++i)
        {
          v20 = glpCompilerGetAllocator(a1);
          v21 = glpCommaExprNodeGetExpr(v30, i);
          glpCommaExprNodeAddExpr(v20, v16, v21);
        }
      }
    }

    else
    {
      v22 = glpCompilerGetAllocator(a1);
      glpCommaExprNodeAddExpr(v22, v16, v30);
    }
  }

  if (v29)
  {
    v23 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v23, v16, v29);
  }

  v24 = glpCompilerGetAllocator(a1);
  glpCommaExprNodeAddExpr(v24, v16, v13);
  v25 = glpCompilerGetAllocator(a1);
  glpCommaExprNodeAddExpr(v25, v16, v28);
  return glpSANode(a1, v16);
}

uint64_t glpSABuiltinPPStreamOp(uint64_t a1, uint64_t a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = glpCallNodeGetArgCount(a2);
  if (v4 <= 2)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v59);
    v10 = "too few arguments to $ppstreamop.";
LABEL_16:
    glpLogMessage(InfoLog, 0, &v59, v10, v6, v7, v8, v9, v56[0]);
    v32 = glpSAFailed();
    goto LABEL_17;
  }

  v11 = v4;
  v12 = glpCallNodeGetArg(a2, 0);
  SaType = glpASTNodeGetSaType(v12);
  if (!glpIsConstantNode(v12) || (Value = glpConstantNodeGetValue(v12), !glpValueIsUsableAsSize(SaType, Value)))
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v59);
    v10 = "argsToIgnore for $ppstreamop must be an integer constant.";
    goto LABEL_16;
  }

  v15 = glpConstantNodeGetValue(v12);
  AsSize = glpValueGetAsSize(SaType, v15);
  if (AsSize >= v11 || (AsSize - 2) >= 3)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v59);
    v10 = "argsToIgnore for $ppstreamop not valid, must be 2, 3 or 4 and less than call args.";
    goto LABEL_16;
  }

  v17 = AsSize;
  MEMORY[0x28223BE20](AsSize);
  v19 = &v56[-((v18 + 15) & 0x7FFFFFFF0)];
  bzero(v19, v18);
  v20 = 0;
  do
  {
    v21 = glpCallNodeGetArg(a2, v20 + 1);
    v22 = glpASTNodeGetSaType(v21);
    if (!glpIsConstantNode(v21) || (v23 = glpConstantNodeGetValue(v21), !glpValueIsUsableAsSize(v22, v23)))
    {
      v35 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v59);
      glpLogMessage(v35, 0, &v59, "Argument %u to $ppstreamop must be an integer constant.", v36, v37, v38, v39, v20 + 2);
      goto LABEL_19;
    }

    v24 = glpConstantNodeGetValue(v21);
    v19[v20++] = glpValueGetAsSize(v22, v24);
  }

  while (v17 != v20);
  v25 = *v19;
  if (*v19 >= 0x4F)
  {
    v26 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v59);
    v31 = "returnPrimitiveType of $ppstreamop must represent a primitive type.";
    goto LABEL_13;
  }

  v40 = v20 + 1;
  if (v17 < 2)
  {
    v42 = 0;
    v58 = 0;
    v43 = 0;
    v44 = v25;
    goto LABEL_27;
  }

  v41 = v19[1];
  if (v41 >= 0xAF)
  {
    v26 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v59);
    v31 = "opcode of $ppstreamop must represent an opcode.";
    goto LABEL_13;
  }

  if (v17 == 2)
  {
    v42 = 0;
    v58 = 0;
    v44 = v25;
    goto LABEL_26;
  }

  v52 = v19[2];
  if (v52 >= 0x4F)
  {
    v26 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v59);
    v31 = "opPrimitiveType of $ppstreamop must represent a primitive type.";
    goto LABEL_13;
  }

  if (v17 >= 4)
  {
    v42 = v19[3];
    if (v42 < 2)
    {
      if (v40 >= v11)
      {
        v26 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v59);
        v31 = "texture op last arg is missing, it must be a sampler";
      }

      else
      {
        v57 = v19[1];
        v53 = glpCallNodeGetArg(a2, v11 - 1);
        v54 = glpASTNodeGetSaType(v53);
        if (!glpTypeGetKind(v54))
        {
          PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v54);
          if (glpPrimitiveTypeGetCategory(PrimitiveType) == 4)
          {
            v58 = 1;
            v44 = v52;
            v43 = v57;
            goto LABEL_27;
          }
        }

        v26 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v59);
        v31 = "texture op last arg is not a sampler, it must be a sampler";
      }
    }

    else
    {
      v26 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v59);
      v31 = "has_offset of $ppstreamop must be 0 or 1.";
    }

LABEL_13:
    glpLogMessage(v26, 0, &v59, v31, v27, v28, v29, v30, v56[0]);
LABEL_19:
    v32 = glpSAFailed();
    goto LABEL_17;
  }

  v42 = 0;
  v58 = 0;
  v44 = v52;
LABEL_26:
  v43 = v41;
LABEL_27:
  Allocator = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a2, &v59);
  glpMakePPStreamOpNode(Allocator, &v59, v25, v43, v44, v58, v42);
  v32 = v46;
  if (v40 < v11)
  {
    do
    {
      v47 = glpCompilerGetAllocator(a1);
      v48 = glpCallNodeGetArg(a2, v40);
      glpCallNodeAddArg(v47, v32, v48);
      ++v40;
    }

    while (v11 != v40);
  }

  v49 = glpGetPrimitiveType(v25);
  glpASTNodeSetSaType(v32, v49);
  if (glpCompilerDoesTrackPrecision(a1))
  {
    PrecisionFlagsFromArgs = getPrecisionFlagsFromArgs(v32);
    v51 = v32;
  }

  else
  {
    v51 = v32;
    PrecisionFlagsFromArgs = 0;
  }

  glpASTNodeSetSaFlags(v51, PrecisionFlagsFromArgs);
LABEL_17:
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}