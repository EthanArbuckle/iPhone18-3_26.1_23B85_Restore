uint64_t glpDeserializeLLVMValue(uint64_t a1)
{
  v1 = *(a1 + 364);
  v2 = *(a1 + 360);
  if (v1 >= v2)
  {
    goto LABEL_34;
  }

  v3 = *(a1 + 352);
  v4 = *(v3 + v1);
  v5 = *(v3 + v1);
  v6 = v1 + 1;
  *(a1 + 364) = v1 + 1;
  if ((v4 & 0x80000000) == 0)
  {
    return *(*(a1 + 408) + 8 * v5);
  }

  v7 = (v5 >> 1) & 7;
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = v1 + 4;
        if (v8 <= v2)
        {
          LODWORD(v3) = *(v3 + v6) | (*(v3 + v6 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v1 + 5 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        v8 = v1 + 5;
        goto LABEL_29;
      }
    }

    else if (v7)
    {
      if (v1 + 3 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        v8 = v1 + 3;
        goto LABEL_29;
      }
    }

    else if (v6 < v2)
    {
      LODWORD(v3) = *(v3 + v6);
      v8 = v1 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1 + 104, 1u);
  }

  if (v7 <= 5)
  {
    v9 = v1 + 5;
    if (v7 == 4)
    {
      if (v9 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        *(a1 + 364) = v1 + 5;
        if (v1 + 5 < v2)
        {
          v8 = v1 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v9 <= v2)
    {
      LODWORD(v3) = *(v3 + v6);
      v10 = (v1 + 5);
      *(a1 + 364) = v10;
      if (v10 + 2 <= v2)
      {
        v8 = v1 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v7 != 6)
  {
    if (v1 + 9 <= v2)
    {
      v3 = *(v3 + v6);
      v8 = v1 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v1 + 5 > v2)
  {
    goto LABEL_34;
  }

  LODWORD(v3) = *(v3 + v6);
  *(a1 + 364) = v1 + 5;
  v8 = v1 + 8;
  if (v8 > v2)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 364) = v8;
  v11 = -256 << (8 * v7);
  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  LODWORD(v5) = v3 | v12;
  return *(*(a1 + 408) + 8 * v5);
}

uint64_t glpDeserializeLLVMBlock(uint64_t a1)
{
  v1 = *(a1 + 364);
  v2 = *(a1 + 360);
  if (v1 >= v2)
  {
    goto LABEL_34;
  }

  v3 = *(a1 + 352);
  v4 = *(v3 + v1);
  v5 = *(v3 + v1);
  v6 = v1 + 1;
  *(a1 + 364) = v1 + 1;
  if ((v4 & 0x80000000) == 0)
  {
    return *(*(a1 + 416) + 8 * v5);
  }

  v7 = (v5 >> 1) & 7;
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = v1 + 4;
        if (v8 <= v2)
        {
          LODWORD(v3) = *(v3 + v6) | (*(v3 + v6 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v1 + 5 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        v8 = v1 + 5;
        goto LABEL_29;
      }
    }

    else if (v7)
    {
      if (v1 + 3 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        v8 = v1 + 3;
        goto LABEL_29;
      }
    }

    else if (v6 < v2)
    {
      LODWORD(v3) = *(v3 + v6);
      v8 = v1 + 2;
      goto LABEL_29;
    }

LABEL_34:
    glpDeserialError(a1 + 104, 1u);
  }

  if (v7 <= 5)
  {
    v9 = v1 + 5;
    if (v7 == 4)
    {
      if (v9 <= v2)
      {
        LODWORD(v3) = *(v3 + v6);
        *(a1 + 364) = v1 + 5;
        if (v1 + 5 < v2)
        {
          v8 = v1 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v9 <= v2)
    {
      LODWORD(v3) = *(v3 + v6);
      v10 = (v1 + 5);
      *(a1 + 364) = v10;
      if (v10 + 2 <= v2)
      {
        v8 = v1 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

  if (v7 != 6)
  {
    if (v1 + 9 <= v2)
    {
      v3 = *(v3 + v6);
      v8 = v1 + 9;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if (v1 + 5 > v2)
  {
    goto LABEL_34;
  }

  LODWORD(v3) = *(v3 + v6);
  *(a1 + 364) = v1 + 5;
  v8 = v1 + 8;
  if (v8 > v2)
  {
    goto LABEL_34;
  }

LABEL_29:
  *(a1 + 364) = v8;
  v11 = -256 << (8 * v7);
  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  LODWORD(v5) = v3 | v12;
  return *(*(a1 + 416) + 8 * v5);
}

uint64_t glpPrecisionIndexFromSAFlags(char a1)
{
  result = 0;
  v3 = a1 & 0x1F;
  if (v3 <= 7)
  {
    if (!v3)
    {
      return result;
    }

    if (v3 == 4)
    {
      return 1;
    }

LABEL_11:
    abort();
  }

  if (v3 == 8)
  {
    return 2;
  }

  if (v3 == 16)
  {
    return 3;
  }

  if (v3 != 31)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t glpGetIBVariableObjectCount(uint64_t a1, unsigned int *a2)
{
  ElementType = a2;
  v12 = *MEMORY[0x277D85DE8];
  Kind = glpTypeGetKind(a2);
  v6 = a1 == 0x20000000 || a1 == 0x40000000;
  v11 = xmmword_23A300DF0;
  v7 = *(&v11 | (8 * (Kind == 3)) | (4 * v6));
  if (v7 != 1)
  {
    if (v7 != 3)
    {
      v10 = *MEMORY[0x277D85DE8];
      return 1;
    }

    ElementType = glpBankTypeGetElementType(ElementType);
  }

  v8 = *MEMORY[0x277D85DE8];

  return glpAggregateTypeGetElementCount(ElementType);
}

uint64_t *glpLayoutObjectFind(uint64_t *result, int a2)
{
  do
  {
    result = *result;
  }

  while (result && *(result + 2) != a2);
  return result;
}

uint64_t *glpLayoutObjectGetGeomInOut(uint64_t *result, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v6 = result;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (!*(v6 + 2))
    {
      if (a4)
      {
        *a4 = 0;
      }

      if (a5)
      {
        *a5 = 0;
      }

      if (a2)
      {
        *a2 = 1;
      }

      break;
    }
  }

  v7 = result;
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    if (*(v7 + 2) == 1)
    {
      if (a4)
      {
        *a4 = 1;
      }

      if (a2)
      {
        *a2 = 2;
      }

      break;
    }
  }

  v8 = result;
  while (1)
  {
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    if (*(v8 + 2) == 2)
    {
      if (a4)
      {
        *a4 = 10;
      }

      if (a2)
      {
        *a2 = 4;
      }

      break;
    }
  }

  v9 = result;
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (*(v9 + 2) == 3)
    {
      if (a4)
      {
        *a4 = 4;
      }

      if (a2)
      {
        *a2 = 3;
      }

      break;
    }
  }

  v10 = result;
  while (1)
  {
    v10 = *v10;
    if (!v10)
    {
      break;
    }

    if (*(v10 + 2) == 4)
    {
      if (a4)
      {
        *a4 = 12;
      }

      if (a2)
      {
        *a2 = 6;
      }

      break;
    }
  }

  v11 = result;
  do
  {
    v11 = *v11;
    if (!v11)
    {
      v12 = a5 != 0;
      goto LABEL_45;
    }
  }

  while (*(v11 + 2) != 6);
  if (a5)
  {
    *a5 = 3;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_45:
  v13 = result;
  while (1)
  {
    v13 = *v13;
    if (!v13)
    {
      break;
    }

    if (*(v13 + 2) == 7)
    {
      if (v12)
      {
        *a5 = 5;
      }

      break;
    }
  }

  v14 = result;
  while (1)
  {
    v14 = *v14;
    if (!v14)
    {
      break;
    }

    if (*(v14 + 2) == 8)
    {
      if (a3)
      {
        v15 = result;
        do
        {
          v15 = *v15;
        }

        while (v15 && *(v15 + 2) != 8);
        *a3 = *(v15 + 4);
      }

      break;
    }
  }

  v16 = result;
  while (1)
  {
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    if (*(v16 + 2) == 5)
    {
      if (a6)
      {
        do
        {
          result = *result;
        }

        while (result && *(result + 2) != 5);
        *a6 = *(result + 4);
      }

      return result;
    }
  }

  return result;
}

uint64_t glpLinkedProgramGetSubroutineUniformLocationCount(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8 * a2 + 144);
  v3 = *(v2 + 32);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(*(v2 + 40) + v4);
    if (v7)
    {
      v8 = glpABIGetTypeSize(0, *(v7 + 24), 0);
      v6 = glpTypeSizeGetSize(v8) + v6;
      v3 = *(v2 + 32);
    }

    ++v5;
    v4 += 32;
  }

  while (v5 < v3);
  return v6;
}

__n128 glpLinkedProgramGetOverrides(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 272);
  v3 = *(a1 + 304);
  *(a2 + 16) = *(a1 + 288);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

char *glpPrimitiveTypeToString(unsigned int a1)
{
  if (a1 >= 0x4F)
  {
    abort();
  }

  return (&off_278B4DFF0)[a1];
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
      v2 = &unk_23A300F20;
      return v2[a2 - 1];
    }

LABEL_14:
    abort();
  }

  if (a1 == 9)
  {
    v2 = &unk_23A300F30;
    return v2[a2 - 1];
  }

  if (a1 == 36)
  {
    v2 = &unk_23A300F40;
    return v2[a2 - 1];
  }

  if (a1 != 62)
  {
    goto LABEL_14;
  }

  v2 = &unk_23A300F10;
  return v2[a2 - 1];
}

uint64_t glpPrimitiveTypeGetCategory(unsigned int a1)
{
  if (a1 >= 0x4F)
  {
    abort();
  }

  return dword_23A300F50[a1];
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

char *deserialErrorString(unsigned int a1)
{
  if (a1 >= 7)
  {
    abort();
  }

  return (&off_278B4E268)[a1];
}

uint64_t glpInitDeserialContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a1 + 200) = a2;
  *(a1 + 208) = 4096;
  result = (*(a2 + 8))(*a2, 0x8000, "Vector Storage (void *)");
  *(a1 + 216) = result;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a3;
  *(a1 + 248) = a4;
  *(a1 + 256) = a5;
  *(a1 + 260) = 0;
  return result;
}

uint64_t glpDestroyDeserialContext(void *a1)
{
  for (i = a1[28]; i; i = a1[28])
  {
    a1[28] = *i;
    (*(a1[25] + 24))(*a1[25]);
  }

  v3 = a1[25];
  v4 = v3[3];
  v5 = *v3;
  v6 = a1[27];

  return v4(v5, v6);
}

double deserialize_double(uint64_t a1)
{
  v1 = *(a1 + 260);
  if (v1 + 8 > *(a1 + 256))
  {
    glpDeserialError(a1, 1u);
  }

  result = *(*(a1 + 248) + v1);
  *(a1 + 260) = v1 + 8;
  return result;
}

void glpDeserialError(uint64_t a1, unsigned int a2)
{
  *md = 0;
  v8 = 0;
  v9 = 0;
  CC_SHA1(*(a1 + 248), *(a1 + 256), md);
  v4 = deserialErrorString(a2);
  v5 = *(a1 + 260);
  v6 = *(a1 + 256);
  glpSetCrashLogMessagef("GLProgrammability: deserial error (%s) at offset %u into data of length %u with SHA1 %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", BYTE2(v8), BYTE3(v8), BYTE4(v8), BYTE5(v8), BYTE6(v8), HIBYTE(v8), v9, v4);
  _longjmp(a1, a2);
}

uint64_t glpTypeGetSamplerCount(uint64_t a1)
{
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_27;
      }

      v3 = *(a1 + 4);
      if (!v3)
      {
        return 0;
      }

      v4 = 0;
      LODWORD(v5) = 0;
      v6 = 8 * v3;
      do
      {
        SamplerCount = glpTypeGetSamplerCount(*(*(a1 + 8) + v4));
        if (SamplerCount == -1)
        {
          v5 = 0xFFFFFFFFLL;
        }

        else
        {
          v5 = (SamplerCount + v5);
        }

        v4 += 8;
      }

      while (v6 != v4);
    }

    else
    {
      Category = glpPrimitiveTypeGetCategory(*(a1 + 4));
      if (Category >= 5)
      {
        goto LABEL_27;
      }

      return dword_23A301098[Category];
    }
  }

  else
  {
    if (v2 != 2 && v2 != 3)
    {
      if (v2 != 5)
      {
LABEL_27:
        abort();
      }

      return 0;
    }

    v8 = glpTypeGetSamplerCount(*(a1 + 16));
    v9 = *(a1 + 4);
    if (v8)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 * v8;
    if (v8 == -1)
    {
      v11 = -1;
    }

    if (v9 == -1)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  return v5;
}

uint64_t glpTypeIsAtomic(_DWORD *a1)
{
  if ((*a1 - 1) < 2)
  {
    return 0;
  }

  if (*a1)
  {
    goto LABEL_10;
  }

  Category = glpPrimitiveTypeGetCategory(a1[1]);
  result = 1;
  if (Category > 2)
  {
    if (Category == 3)
    {
      return 0;
    }

    if (Category == 4)
    {
      return result;
    }

LABEL_10:
    abort();
  }

  if ((Category - 1) >= 2)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t glpGetPrimitiveType(uint64_t a1)
{
  if (glpGetPrimitiveType_glProgrammabilityHandle)
  {
    v2 = glpGetPrimitiveType_LIB_glpGetPrimitiveType;
  }

  else
  {
    glpGetPrimitiveType_glProgrammabilityHandle = dlopen("/System/Library/Frameworks/OpenGLES.framework/libGLProgrammability.dylib", 5);
    v2 = dlsym(glpGetPrimitiveType_glProgrammabilityHandle, "glpGetPrimitiveType");
    glpGetPrimitiveType_LIB_glpGetPrimitiveType = v2;
  }

  return (v2)(a1);
}

uint64_t glpStructTypeGetSizesAndAlignments(unsigned int a1, uint64_t a2, uint64_t a3, _DWORD *a4, int *a5, unsigned int *a6)
{
  TypeSize = glpMakeTypeSize(0);
  v30 = glpABIGetMinimumStructAlignment(a1);
  v11 = *(a2 + 4);
  if (v11 >= 1)
  {
    v29 = a3;
    v12 = 0;
    v28 = a6;
    do
    {
      v13 = TypeSize;
      if (glpTypeSizeIsValid(TypeSize))
      {
        v14 = *(*(a2 + 8) + 8 * v12);
        v15 = *(*(a2 + 16) + 8 * v12);
        v16 = glpABIGetTypeSize(a1, v14, v15 | v29);
        v17 = v16;
        if (glpTypeSizeIsValid(v16))
        {
          v18 = glpABIGetTypeAlign(a1, v14, v15 | v29);
          v19 = (v18 + glpTypeSizeGetSize(v13) - 1) / v18 * v18;
          Size = glpTypeSizeGetSize(v17);
          v21 = Size;
          if (v18 <= v30)
          {
            v22 = v30;
          }

          else
          {
            v22 = v18;
          }

          v30 = v22;
          TypeSize = glpMakeTypeSize(v19 + Size);
          if (v28)
          {
            *a6 = v19;
            a6[1] = v21;
          }
        }

        else
        {
          TypeSize = glpInvalidTypeSize();
        }
      }

      ++v12;
      a6 += 2;
    }

    while (v11 != v12);
  }

  result = glpTypeSizeIsValid(TypeSize);
  if (result)
  {
    v24 = v30;
    if (a4)
    {
      result = glpAlignTypeSize(TypeSize, v30);
      *a4 = result;
    }

    v25 = a5;
    if (!a5)
    {
      return result;
    }

LABEL_21:
    *v25 = v24;
    return result;
  }

  if (a4)
  {
    result = glpInvalidTypeSize();
    *a4 = result;
  }

  v25 = a5;
  if (a5)
  {
    v24 = -1;
    goto LABEL_21;
  }

  return result;
}

uint64_t writeByteCode(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v6 = 0uLL;
  v8 = 0u;
  v9 = 1;
  v7 = 0uLL;
  v5 = MEMORY[0x277D82200] + 16;
  llvm::raw_ostream::SetUnbuffered(&v5);
  llvm::WriteBitcodeToFile();
  v3 = *(a2 + 8);
  llvm::raw_ostream::~raw_ostream(&v5);
  return v3;
}

void *copyBitCodeStorage(void *a1, _DWORD *a2, unint64_t a3, int a4)
{
  if (a1[1] + 8 > a3)
  {
    copyBitCodeStorage_cold_1();
  }

  v7 = llvm::SmallString<0u>::c_str(a1);
  result = memcpy(a2 + 2, v7, a1[1]);
  *a2 = *(a1 + 2) + 4;
  a2[1] = a4;
  return result;
}

uint64_t llvm::SmallString<0u>::c_str(void *a1)
{
  llvm::SmallVectorTemplateBase<char,true>::push_back(a1, 0);
  v2 = a1[1] - 1;
  if (a1[2] < v2)
  {
    llvm::SmallString<0u>::c_str();
  }

  a1[1] = v2;
  return *a1;
}

void **deleteBitCodeStorage(void **result)
{
  if (result)
  {
    v2 = result + 3;
    v1 = *result;
    if (v1 != v2)
    {
      free(v1);
    }

    JUMPOUT(0x23EE856F0);
  }

  return result;
}

uint64_t glpLLVMSetupModule(uint64_t a1)
{
  LLVMSetTarget();

  return MEMORY[0x2821F17D0](a1, "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-n8:16:32");
}

uint64_t glpAddNamedMetadataOperand(int a1, char *__s, uint64_t a3)
{
  if (__s)
  {
    strlen(__s);
  }

  result = llvm::Module::getOrInsertNamedMetadata();
  if (a3 && result)
  {
    if (*(a3 + 16) == 23)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v5 + 24);
    v7 = v6;
    result = llvm::isa_impl_wrap<llvm::MDNode,llvm::Metadata const*,llvm::Metadata const*>::doit(&v7);
    if ((result & 1) == 0)
    {
      glpAddNamedMetadataOperand_cold_1();
    }

    if (v6)
    {
      return llvm::NamedMDNode::addOperand();
    }
  }

  return result;
}

uint64_t glpLLVMBasicBlockGetTerminator(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == a1 + 40)
  {
    return 0;
  }

  v2 = v1 - 24;
  if (v1)
  {
    v3 = v1 - 24;
  }

  else
  {
    v3 = 0;
  }

  if (*(v3 + 16) - 29 >= 0xB)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t glpLLVMSetFastMathFlags(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = -1;
  }

  else
  {
    v3 = 121;
  }

  if (a2)
  {
    v3 = 24;
  }

  *(result + 96) = v3;
  return result;
}

void GLPDebugInfoContext::~GLPDebugInfoContext(GLPDebugInfoContext *this)
{
  llvm::DIBuilder::finalize(this);
  v2 = *(this + 60);
  if (v2)
  {
    *(this + 61) = v2;
    operator delete(v2);
  }

  llvm::DIBuilder::~DIBuilder(this);
}

uint64_t GLPDebugInfoContext::createCompileUnit(GLPDebugInfoContext *this, const char *__s, const char *a3)
{
  if (!__s)
  {
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  strlen(__s);
  if (a3)
  {
LABEL_3:
    strlen(a3);
  }

LABEL_5:
  llvm::DIBuilder::createFile();
  result = llvm::DIBuilder::createCompileUnit();
  *(this + 58) = result;
  return result;
}

uint64_t GLPDebugInfoContext::createFile(GLPDebugInfoContext *this, const char *__s, const char *a3)
{
  if (!__s)
  {
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  strlen(__s);
  if (a3)
  {
LABEL_3:
    strlen(a3);
  }

LABEL_5:
  result = llvm::DIBuilder::createFile();
  *(this + 57) = result;
  return result;
}

void GLPDebugInfoContext::createFunction(GLPDebugInfoContext *this, const char *__s, llvm::Function *a3)
{
  if (__s)
  {
    strlen(__s);
  }

  llvm::DIBuilder::getOrCreateTypeArray();
  v6 = *(this + 57);
  v5 = *(this + 58);
  llvm::DIBuilder::createSubroutineType();
  Function = llvm::DIBuilder::createFunction();
  if (llvm::Function::getSubprogram(a3))
  {
    GLPDebugInfoContext::createFunction();
  }

  llvm::Function::setSubprogram();
  *(this + 56) = Function;
  v8 = *(this + 60);
  v9 = *(this + 61);
  v10 = (v9 - v8) >> 3;
  if (v10)
  {
    if (v10 != 1)
    {
      GLPDebugInfoContext::createFunction();
    }

    *(this + 61) = --v9;
  }

  v11 = *(this + 62);
  if (v9 >= v11)
  {
    v13 = (v9 - v8) >> 3;
    if ((v13 + 1) >> 61)
    {
      std::vector<llvm::MDNode *>::__throw_length_error[abi:nn200100]();
    }

    v14 = v11 - v8;
    v15 = v14 >> 2;
    if (v14 >> 2 <= (v13 + 1))
    {
      v15 = v13 + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MDNode *>>(this + 480, v16);
    }

    v17 = (8 * v13);
    *v17 = Function;
    v12 = 8 * v13 + 8;
    v18 = *(this + 60);
    v19 = *(this + 61) - v18;
    v20 = v17 - v19;
    memcpy(v17 - v19, v18, v19);
    v21 = *(this + 60);
    *(this + 60) = v20;
    *(this + 61) = v12;
    *(this + 62) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = Function;
    v12 = (v9 + 1);
  }

  *(this + 61) = v12;
}

void glpLLVMDIBuilderCreateSubProgram(GLPDebugInfoContext *a1, llvm::Function *a2, char *__s)
{
  if (!a2)
  {
    glpLLVMDIBuilderCreateSubProgram_cold_2();
  }

  if (*(a2 + 16))
  {
    glpLLVMDIBuilderCreateSubProgram_cold_1();
  }

  GLPDebugInfoContext::createFunction(a1, __s, a2);
}

uint64_t glpLLVMGetDebugLocation(uint64_t a1)
{
  v2 = *(a1 + 472);
  v3 = *(*(a1 + 488) - 8);
  Impl = llvm::DILocation::getImpl();
  v5 = *(a1 + 472);

  return MEMORY[0x2821F2680](v5, Impl);
}

GLPDebugInfoContext *glpLLVMDIBuilderDelete(GLPDebugInfoContext *result)
{
  if (result)
  {
    GLPDebugInfoContext::~GLPDebugInfoContext(result);

    JUMPOUT(0x23EE856F0);
  }

  return result;
}

uint64_t llvm::raw_ostream::SetUnbuffered(llvm::raw_ostream *this)
{
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  return MEMORY[0x2821F1EA8](this, 0, 0, 0);
}

void llvm::DIBuilder::~DIBuilder(llvm::DIBuilder *this)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>,llvm::DenseMapInfo<llvm::MDNode *,void>,llvm::detail::DenseMapPair<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>>>,llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>,llvm::DenseMapInfo<llvm::MDNode *,void>,llvm::detail::DenseMapPair<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>>>::destroyAll(this + 53);
  llvm::deallocate_buffer(*(this + 53), (32 * *(this + 110)));
  llvm::DenseMapBase<llvm::DenseMap<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>,llvm::DenseMapInfo<llvm::MDNode *,void>,llvm::detail::DenseMapPair<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>>>,llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>,llvm::DenseMapInfo<llvm::MDNode *,void>,llvm::detail::DenseMapPair<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>>>::destroyAll(this + 50);
  llvm::deallocate_buffer(*(this + 50), (32 * *(this + 104)));
  llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,4u>::~SmallVector(this + 43);
  v5 = (this + 320);
  std::vector<std::pair<llvm::MDNode *,llvm::SetVector<llvm::Metadata *,std::vector<llvm::Metadata *>,llvm::DenseSet<llvm::Metadata *,llvm::DenseMapInfo<llvm::Metadata *,void>>>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  llvm::deallocate_buffer(*(this + 37), (16 * *(this + 78)));
  llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,4u>::~SmallVector(this + 31);
  v2 = *(this + 25);
  if (v2 != this + 216)
  {
    free(v2);
  }

  v3 = *(this + 19);
  if (v3 != this + 168)
  {
    free(v3);
  }

  llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,4u>::~SmallVector(this + 13);
  v4 = *(this + 7);
  if (v4 != this + 72)
  {
    free(v4);
  }
}

char **llvm::DenseMapBase<llvm::DenseMap<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>,llvm::DenseMapInfo<llvm::MDNode *,void>,llvm::detail::DenseMapPair<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>>>,llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>,llvm::DenseMapInfo<llvm::MDNode *,void>,llvm::detail::DenseMapPair<llvm::MDNode *,llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>>>::destroyAll(char **result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = 32 * v1;
    result = (*result + 8);
    do
    {
      if ((*(result - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>::~SmallVector(result);
      }

      result += 4;
      v2 -= 32;
    }

    while (v2);
  }

  return result;
}

char **llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,1u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -8 * v3;
    v5 = &v2[8 * v3 - 8];
    do
    {
      if (*v5)
      {
        llvm::MetadataTracking::untrack();
      }

      v5 -= 8;
      v4 += 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

char **llvm::SmallVector<llvm::TypedTrackingMDRef<llvm::MDNode>,4u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -8 * v3;
    v5 = &v2[8 * v3 - 8];
    do
    {
      if (*v5)
      {
        llvm::MetadataTracking::untrack();
      }

      v5 -= 8;
      v4 += 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void std::vector<std::pair<llvm::MDNode *,llvm::SetVector<llvm::Metadata *,std::vector<llvm::Metadata *>,llvm::DenseSet<llvm::Metadata *,llvm::DenseMapInfo<llvm::Metadata *,void>>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        std::allocator<std::pair<llvm::MDNode *,llvm::SetVector<llvm::Metadata *,std::vector<llvm::Metadata *>,llvm::DenseSet<llvm::Metadata *,llvm::DenseMapInfo<llvm::Metadata *,void>>>>>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator<std::pair<llvm::MDNode *,llvm::SetVector<llvm::Metadata *,std::vector<llvm::Metadata *>,llvm::DenseSet<llvm::Metadata *,llvm::DenseMapInfo<llvm::Metadata *,void>>>>>::destroy[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    *(a2 + 40) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 8);
  v5 = (8 * *(a2 + 24));

  return llvm::deallocate_buffer(v4, v5);
}

void *llvm::SmallVectorTemplateBase<char,true>::push_back(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*result + v2) = a2;
  v3 = result[1] + 1;
  if (result[2] < v3)
  {
    llvm::SmallVectorTemplateBase<char,true>::push_back();
  }

  result[1] = v3;
  return result;
}

uint64_t llvm::isa_impl_wrap<llvm::MDNode,llvm::Metadata const*,llvm::Metadata const*>::doit(_BYTE **a1)
{
  v2 = *a1;
  if (!v2)
  {
    llvm::isa_impl_wrap<llvm::MDNode,llvm::Metadata const*,llvm::Metadata const*>::doit();
  }

  return llvm::MDNode::classof(v2);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MDNode *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
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

void PPStreamChunkListFree(_DWORD *a1)
{
  v2 = a1[4];
  if (v2 >= 1)
  {
    v3 = *a1;
    do
    {
      v4 = v3[1];
      free(v3);
      v3 = v4;
      --v2;
    }

    while (v2);
  }

  free(a1);
}

void PPStreamFree(_DWORD **a1)
{
  PPStreamChunkListFree(a1[2]);
  PPStreamChunkListFree(a1[3]);
  PPStreamChunkListFree(a1[4]);
  PPStreamChunkListFree(a1[10]);
  PPStreamChunkListFree(a1[5]);
  PPStreamChunkListFree(a1[7]);
  PPStreamChunkListFree(a1[9]);
  PPStreamChunkListFree(a1[6]);
  PPStreamChunkListFree(a1[8]);
  PPStreamChunkListFree(a1[11]);
  PPStreamChunkListFree(a1[13]);
  PPStreamChunkListFree(a1[14]);
  PPStreamChunkListFree(a1[16]);
  PPStreamChunkListFree(a1[15]);
  PPStreamChunkListFree(a1[12]);

  free(a1);
}

void *PPStreamChunkCreate(uint64_t a1)
{
  result = malloc_type_calloc(a1 + 24, 1uLL, 0x1116B6A2uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

char *PPStreamAddTempUsage(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 2;
  *(result + 24) = *a2;
  v5 = *(a1 + 32);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

_BYTE *PPStreamAddAddressUsage(uint64_t a1, _DWORD *a2)
{
  result = PPStreamChunkCreate(4);
  result[16] = 3;
  *(result + 6) = *a2;
  v5 = *(a1 + 40);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddParamBinding(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 5;
  *(result + 24) = *a2;
  v5 = *(a1 + 56);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

_BYTE *PPStreamAddParamBindingArray(uint64_t a1, void *a2)
{
  result = PPStreamChunkCreate(8);
  result[16] = 7;
  *(result + 3) = *a2;
  v5 = *(a1 + 72);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddAttribBinding(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 4;
  *(result + 24) = *a2;
  v5 = *(a1 + 48);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddOutputBinding(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 6;
  *(result + 24) = *a2;
  v5 = *(a1 + 64);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddOperation(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = *(a2 + 72);
  if (v6)
  {
    v7 = (v6 + 81);
  }

  else
  {
    v7 = 80;
  }

  v8 = PPStreamChunkCreate(v7);
  v9 = v8;
  v8[16] = 11;
  *(v8 + 24) = *a2;
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 32);
  *(v8 + 40) = *(a2 + 16);
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = v12;
  if (a3 && v6)
  {
    memmove(v8 + 104, a3, v6);
    v9[v6 + 104] = 0;
  }

  v13 = *(a1 + 140);
  *(a1 + 140) = v13 + 1;
  *(v9 + 22) = v13;
  v14 = *(a1 + 104);
  if (!*v14)
  {
    *v14 = v9;
    *v9 = 0;
  }

  v15 = *(v14 + 8);
  if (v15)
  {
    *(v15 + 8) = v9;
    *v9 = v15;
  }

  *(v9 + 1) = 0;
  *(v14 + 8) = v9;
  ++*(v14 + 16);
  return v9;
}

char *PPStreamAddLabel(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = a3;
  v7 = PPStreamChunkCreate(a3 + 9);
  v7[16] = 14;
  *(v7 + 7) = a3;
  *(v7 + 6) = *(a1 + 140);
  memmove(v7 + 32, a2, v6);
  v7[a3 + 32] = 0;
  v8 = *(a1 + 112);
  if (!*v8)
  {
    *v8 = v7;
    *v7 = 0;
  }

  v9 = *(v8 + 8);
  if (v9)
  {
    *(v9 + 8) = v7;
    *v7 = v9;
  }

  *(v7 + 1) = 0;
  *(v8 + 8) = v7;
  ++*(v8 + 16);
  return v7;
}

_BYTE *PPStreamAddConstant(uint64_t a1, _DWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 13;
  *(result + 6) = *a2;
  *(result + 7) = a2[1];
  *(result + 8) = a2[2];
  *(result + 9) = a2[3];
  v5 = *(a1 + 128);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

_BYTE *PPStreamAddOption(uint64_t a1, char a2)
{
  result = PPStreamChunkCreate(8);
  result[16] = 10;
  result[27] = a2;
  v5 = *(a1 + 96);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

uint64_t PPStreamResolveBranches(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = *(a1 + 112);
  v3 = *v1;
  if (*v1)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 96);
      if (v5)
      {
        v6 = *(v3 + 24);
        *(v3 + 24) = v6 & 0x3FFFFFFFFFFFLL | ((*(v1 + 4) + 1) << 46);
        v7 = *v2;
        if (*v2)
        {
          v8 = v6 & 0x3FFFFFFFFFFFLL;
          while (v5 != *(v7 + 28) || strncmp((v3 + 104), (v7 + 32), v5))
          {
            v7 = *(v7 + 8);
            if (!v7)
            {
              goto LABEL_9;
            }
          }

          *(v3 + 24) = v8 | (*(v7 + 24) << 46);
        }

        else
        {
LABEL_9:
          v4 = 1;
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v9 = *v2;
  if (v9)
  {
    while (strcmp("main(", (v9 + 32)))
    {
      v9 = *(v9 + 8);
      if (!v9)
      {
        return v4;
      }
    }

    v10 = *v1;
    if (*v1)
    {
      while (*(v9 + 24) != *(v10 + 88))
      {
        v10 = *(v10 + 8);
        if (!v10)
        {
          return v4;
        }
      }

      *(v10 + 24) |= 0x4000uLL;
    }
  }

  return v4;
}

void gleLLVMInitBuildContext(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, int a8, int a9, int a10)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = a2;
  *a1 = 0;
  *(a1 + 24) = LLVMModuleCreateWithNameInContext();
  *(a1 + 32) = 0;
  *(a1 + 136) = 0;
  *(a1 + 184) = 0;
  v15 = malloc_type_malloc(8 * a4, 0xA07D3369uLL);
  *(a1 + 64) = v15;
  bzero(v15, 8 * a4);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v16 = 8 * a5;
  v17 = 8 * a5;
  v18 = malloc_type_malloc(v16, 0xA07D3369uLL);
  *(a1 + 88) = v18;
  bzero(v18, v17);
  v19 = malloc_type_malloc(v17, 0xA07D3369uLL);
  *(a1 + 96) = v19;
  bzero(v19, v17);
  v20 = malloc_type_malloc(8 * a7, 0xA07D3369uLL);
  *(a1 + 112) = v20;
  bzero(v20, 8 * a7);
  v21 = 8 * a9;
  v22 = malloc_type_malloc(v21, 0xA07D3369uLL);
  *(a1 + 104) = v22;
  bzero(v22, v21);
  v23 = 8 * a8;
  v24 = 8 * a8;
  v25 = malloc_type_malloc(v23, 0xA07D3369uLL);
  *(a1 + 120) = v25;
  bzero(v25, v24);
  v26 = malloc_type_malloc(v24, 0xA07D3369uLL);
  *(a1 + 128) = v26;
  bzero(v26, v24);
  *(a1 + 4) = a7;
  *(a1 + 12) = 0;
  if (a10 < 1)
  {
    *(a1 + 176) = 0;
  }

  else
  {
    v27 = malloc_type_malloc(40 * a10, 0x57E740CFuLL);
    *(a1 + 176) = v27;
    bzero(v27, 40 * a10);
  }

  *(a1 + 8) = a10;
}

void gleLLVMDestroyBuildContext(uint64_t a1)
{
  if (*(a1 + 24))
  {
    LLVMDisposeModule();
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    free(v3);
    *(a1 + 88) = 0;
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    free(v4);
    *(a1 + 112) = 0;
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    free(v5);
    *(a1 + 120) = 0;
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    free(v6);
    *(a1 + 104) = 0;
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    free(v7);
    *(a1 + 96) = 0;
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    free(v8);
    *(a1 + 128) = 0;
  }

  free(*(a1 + 176));
  *(a1 + 176) = 0;
}

uint64_t gleLLVMGetConstantInt32(uint64_t a1)
{
  if (!*(a1 + 152))
  {
    v2 = *(a1 + 16);
    *(a1 + 152) = LLVMInt32TypeInContext();
  }

  return LLVMConstInt();
}

uint64_t gleGetLLVMTypeFromType(uint64_t a1, int a2)
{
  v2 = a2;
  result = 0;
  v5 = a2 & 0xFFFF7FFF;
  if ((a2 & 0xFFFF7FFF) <= 4)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          result = *(a1 + 152);
          if (!result)
          {
            v9 = *(a1 + 16);
            result = LLVMInt32TypeInContext();
            *(a1 + 152) = result;
          }
        }
      }

      else
      {
        v12 = *(a1 + 16);
        result = LLVMInt1TypeInContext();
      }
    }

    else
    {
      if ((v5 - 2) < 2)
      {
        if (!*(a1 + 152))
        {
          v7 = *(a1 + 16);
          *(a1 + 152) = LLVMInt32TypeInContext();
        }

        goto LABEL_11;
      }

      if (v5 == 4)
      {
        v11 = *(a1 + 16);
        result = LLVMFloatTypeInContext();
      }
    }
  }

  else
  {
    if ((v5 - 5) < 3)
    {
      v8 = *(a1 + 16);
      LLVMFloatTypeInContext();
      goto LABEL_11;
    }

    if ((v5 - 9) < 3)
    {
      v6 = *(a1 + 16);
      LLVMHalfTypeInContext();
LABEL_11:
      result = MEMORY[0x23EE854F0]();
      goto LABEL_12;
    }

    if (v5 == 8)
    {
      v10 = *(a1 + 16);
      result = LLVMHalfTypeInContext();
    }
  }

LABEL_12:
  if (v2 < 0)
  {

    JUMPOUT(0x23EE85440);
  }

  return result;
}

const char *gleLLVMGetArgTypeName(int a1)
{
  if ((a1 & 0xFFFF7FFF) > 0xB)
  {
    return "float4";
  }

  else
  {
    return (&off_278B4E2A0)[a1 & 0xFFFF7FFF];
  }
}

uint64_t gleLLVMBeginMain(uint64_t a1, uint64_t a2, int *a3, int a4, int *a5, uint64_t a6, int a7)
{
  v55 = a2;
  v56 = *MEMORY[0x277D85DE8];
  v13 = a4 + 1;
  v14 = (a4 + 1 + 2 * a7);
  v15 = *(a1 + 16);
  v16 = LLVMFloatTypeInContext();
  v17 = MEMORY[0x23EE854F0](v16, 4);
  v54 = v14;
  (MEMORY[0x28223BE20])();
  v19 = (v52 - v18);
  bzero(v52 - v18, v20);
  if (*(a1 + 216))
  {
    v21 = a4 < 1;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v53 = a6;
    v23 = a4;
    v24 = v19;
    do
    {
      v25 = *a3++;
      LLVMTypeFromType = gleGetLLVMTypeFromType(a1, v25);
      if (!*a1 && !*(a1 + 220))
      {
        LLVMTypeFromType = MEMORY[0x23EE85440](LLVMTypeFromType, 1);
      }

      *v24++ = LLVMTypeFromType;
      --v23;
    }

    while (v23);
    v22 = a4;
    LODWORD(a6) = v53;
  }

  v19[v22] = MEMORY[0x23EE85440](v17, 2);
  v27 = *(a1 + 8);
  if (v27 >= 1)
  {
    v28 = v22 + 1;
    v29 = (*(a1 + 176) + 24);
    do
    {
      if (*v29)
      {
        v19[v28] = *v29;
        v30 = v28 + a7;
        ++v28;
        v19[v30] = *(v29 - 1);
      }

      v29 += 5;
      --v27;
    }

    while (v27);
  }

  v31 = *(a1 + 16);
  v32 = LLVMVoidTypeInContext();
  if (*(a1 + 216))
  {
    LODWORD(v53) = a4;
    v52[1] = v52;
    MEMORY[0x28223BE20](v32);
    v34 = (v52 - v33);
    bzero(v52 - v33, v35);
    v36 = a6;
    if (a6 >= 1)
    {
      a6 = a6;
      v37 = v34;
      do
      {
        v38 = *a5++;
        *v37++ = gleGetLLVMTypeFromType(a1, v38);
        --a6;
      }

      while (a6);
    }

    if (v36)
    {
      v39 = *(a1 + 16);
      *(a1 + 168) = LLVMStructTypeInContext();
    }
  }

  LLVMFunctionType();
  v40 = *(a1 + 24);
  v41 = LLVMAddFunction();
  v42 = *(a1 + 16);
  MEMORY[0x23EE852E0]("nounwind", 8);
  LLVMCreateEnumAttribute();
  LLVMAddAttributeAtIndex();
  *(a1 + 136) = LLVMGetParam();
  v43 = *(a1 + 8);
  if (v43 >= 1)
  {
    v44 = 0;
    v45 = 0;
    v46 = *(a1 + 176);
    do
    {
      if (*(v46 + v44 + 24))
      {
        *(*(a1 + 176) + v44) = LLVMGetParam();
        v47 = LLVMGetParam();
        v46 = *(a1 + 176);
        *(v46 + v44 + 8) = v47;
        ++v13;
        v43 = *(a1 + 8);
      }

      ++v45;
      v44 += 40;
    }

    while (v45 < v43);
  }

  *(a1 + 56) = v41;
  v48 = *(a1 + 16);
  v49 = LLVMCreateBuilderInContext();
  glpLLVMSetFastMathFlags(v49, *a1 == 0, 0);
  *(a1 + 32) = v49;
  LLVMAppendBasicBlockInContext();
  LLVMAppendBasicBlockInContext();
  LLVMPositionBuilderAtEnd();
  *(a1 + 40) = LLVMBuildBr();
  *(a1 + 48) = 0;
  result = LLVMPositionBuilderAtEnd();
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleLLVMAddCommonMetaData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 16);
  if (*(a1 + 220))
  {
    *__s = gleLLVMGetConstantInt32(a1);
    v10 = *(a1 + 16);
    *&__s[8] = LLVMMDStringInContext();
    v11 = *(a1 + 16);
    *&v43 = LLVMMDStringInContext();
    *(&v43 + 1) = gleLLVMGetConstantInt32(a1);
    v12 = *(a1 + 16);
    *&v44 = LLVMMDStringInContext();
    *(&v44 + 1) = gleLLVMGetConstantInt32(a1);
    *&v45 = gleLLVMGetConstantInt32(a1);
    v13 = *(a1 + 16);
    *(&v45 + 1) = LLVMMDStringInContext();
  }

  else
  {
    *__s = gleLLVMGetConstantInt32(a1);
    v14 = *(a1 + 16);
    *&__s[8] = LLVMMDStringInContext();
    v15 = *(a1 + 16);
    *&v43 = LLVMMDStringInContext();
    *(&v43 + 1) = gleLLVMGetConstantInt32(a1);
  }

  result = LLVMMDNodeInContext();
  *a2 = result;
  if (*(a1 + 8) >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v41 = a6 + 1;
    do
    {
      v20 = *(a1 + 176);
      if (*(v20 + v17 + 24))
      {
        v21 = v19 + 1;
        if (*(a1 + 220))
        {
          v44 = 0u;
          v45 = 0u;
          *__s = 0u;
          v43 = 0u;
          v22 = *(v20 + v17 + 32);
          v23 = (v22 & 7) - 1;
          v24 = "texture2d";
          if (v23 <= 4)
          {
            v25 = (v22 & 8) == 0;
            v26 = &off_278B4E300;
            if (v25)
            {
              v26 = &off_278B4E328;
            }

            v24 = v26[v23];
          }

          snprintf_l(__s, 0x40uLL, 0, "%s<float, sample>", v24);
          gleLLVMGetConstantInt32(a1);
          v27 = *(a1 + 16);
          LLVMMDStringInContext();
          v28 = *(a1 + 16);
          LLVMMDStringInContext();
          gleLLVMGetConstantInt32(a1);
          gleLLVMGetConstantInt32(a1);
          v29 = *(a1 + 16);
          LLVMMDStringInContext();
          v30 = *(a1 + 16);
          LLVMMDStringInContext();
          v31 = *(a1 + 16);
          strlen(__s);
          LLVMMDStringInContext();
          a2[v21] = LLVMMDNodeInContext();
          v32 = v41 + v19;
          gleLLVMGetConstantInt32(a1);
          v33 = *(a1 + 16);
          LLVMMDStringInContext();
          v34 = *(a1 + 16);
          LLVMMDStringInContext();
          gleLLVMGetConstantInt32(a1);
          gleLLVMGetConstantInt32(a1);
        }

        else
        {
          *__s = 0u;
          v43 = 0u;
          *__s = gleLLVMGetConstantInt32(a1);
          v35 = *(a1 + 16);
          *&__s[8] = LLVMMDStringInContext();
          v36 = *(a1 + 16);
          *&v43 = LLVMMDStringInContext();
          *(&v43 + 1) = gleLLVMGetConstantInt32(a1);
          a2[v21] = LLVMMDNodeInContext();
          v32 = v41 + v19;
          gleLLVMGetConstantInt32(a1);
          v37 = *(a1 + 16);
          LLVMMDStringInContext();
          v38 = *(a1 + 16);
          LLVMMDStringInContext();
          gleLLVMGetConstantInt32(a1);
          gleLLVMGetConstantInt32(a1);
          v39 = *(a1 + 16);
          LLVMMDStringInContext();
        }

        result = LLVMMDNodeInContext();
        a2[v32] = result;
      }

      else
      {
        v21 = v19;
      }

      ++v18;
      v17 += 40;
      v19 = v21;
    }

    while (v18 < *(a1 + 8));
  }

  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleLLVMCreateFunctionMetadata(uint64_t a1, char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = *(a1 + 56);
  v4 = *(a1 + 16);
  v5 = LLVMMDNodeInContext();
  glpAddNamedMetadataOperand(*(a1 + 24), a2, v5);
  if (*(a1 + 220))
  {
    v6 = *(a1 + 16);
    LLVMMDStringInContext();
    gleLLVMGetConstantInt32(a1);
    gleLLVMGetConstantInt32(a1);
    gleLLVMGetConstantInt32(a1);
    v7 = *(a1 + 16);
    v8 = LLVMMDNodeInContext();
    glpAddNamedMetadataOperand(*(a1 + 24), "air.language_version", v8);
    glpLLVMSetupModule(*(a1 + 24));
  }

  v9 = *(a1 + 16);
  LLVMMDStringInContext();
  v10 = *(a1 + 16);
  v11 = LLVMMDNodeInContext();
  glpAddNamedMetadataOperand(*(a1 + 24), "air.compile_options", v11);
  v12 = *(a1 + 16);
  LLVMMDStringInContext();
  v13 = *(a1 + 16);
  v14 = LLVMMDNodeInContext();
  glpAddNamedMetadataOperand(*(a1 + 24), "air.compile_options", v14);
  v15 = *(a1 + 16);
  LLVMMDStringInContext();
  v16 = *(a1 + 16);
  v17 = LLVMMDNodeInContext();
  result = glpAddNamedMetadataOperand(*(a1 + 24), "air.compile_options", v17);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleLLVMFinishMain(uint64_t a1, uint64_t a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = (2 * a3 + 2);
  MEMORY[0x28223BE20](a1);
  v6 = &v29 - v5;
  bzero(v6, v7);
  *v6 = *(a1 + 56);
  if (!*(a1 + 216))
  {
    v29 = v5;
    v8 = *(a1 + 16);
    v30 = LLVMMDStringInContext();
    v9 = *(a1 + 16);
    v31 = LLVMMDStringInContext();
    if (!*(a1 + 152))
    {
      v10 = *(a1 + 16);
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    v32 = LLVMConstInt();
    if (!*(a1 + 152))
    {
      v11 = *(a1 + 16);
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    v33 = LLVMConstInt();
    v6[1] = LLVMMDNodeInContext();
    v12 = *(a1 + 8);
    if (v12 >= 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = a3 + 2;
      v16 = 24;
      do
      {
        if (*(*(a1 + 176) + v16))
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v17 = *(a1 + 16);
          v30 = LLVMMDStringInContext();
          v18 = *(a1 + 16);
          v31 = LLVMMDStringInContext();
          LLVMInt32TypeInContext();
          v32 = LLVMConstInt();
          v6[v14 + 2] = LLVMMDNodeInContext();
          v19 = *(a1 + 16);
          v31 = LLVMMDStringInContext();
          v6[v15 + v14++] = LLVMMDNodeInContext();
          v12 = *(a1 + 8);
        }

        ++v13;
        v16 += 40;
      }

      while (v13 < v12);
    }

    v20 = LLVMMDNodeInContext();
    glpAddNamedMetadataOperand(*(a1 + 24), "opengl.kernel_arg_info", v20);
  }

  v21 = *(a1 + 12);
  LODWORD(v30) = 0;
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if (*(*(a1 + 120) + 8 * i))
      {
        v23 = *(a1 + 32);
        v24 = LLVMBuildLoad();
        (*(a1 + 192))(*(a1 + 184), i, &v30, v24);
      }
    }
  }

  v25 = *(a1 + 32);
  if (*(a1 + 160))
  {
    MEMORY[0x23EE850B0](v25);
  }

  else
  {
    MEMORY[0x23EE850C0](v25);
  }

  v26 = *(a1 + 32);
  result = LLVMDisposeBuilder();
  *(a1 + 32) = 0;
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleLLVMCreateVaryingsMetaData(void *a1, char *a2, int a3, int a4, int a5, int a6, int a7)
{
  v29 = a2;
  v40 = *MEMORY[0x277D85DE8];
  v11 = (a4 + a3 + a5);
  v33 = a1[2];
  v28[1] = (v11 + 1);
  MEMORY[0x28223BE20](a1);
  v13 = (v28 - v12);
  bzero(v28 - v12, v14);
  v15 = a1[7];
  v30 = v13;
  *v13 = v15;
  v32 = v11;
  if (v11 >= 1)
  {
    v16 = 0;
    v17 = v38;
    if (a7)
    {
      v17 = v37;
    }

    v31 = a3;
    if (a6)
    {
      v18 = v34;
    }

    else
    {
      v18 = v17;
    }

    v19 = v30 + 1;
    do
    {
      strcpy(__s, "4 x float");
      strcpy(v34, "flat");
      strcpy(v38, "nonperspective");
      strcpy(v37, "perspective");
      if (v16 >= v31)
      {
        v20 = v37;
      }

      else
      {
        v20 = v18;
      }

      v35 = 0u;
      v36 = 0u;
      if (!a1[19])
      {
        v21 = a1[2];
        a1[19] = LLVMInt32TypeInContext();
      }

      *&v35 = LLVMConstInt();
      if (!a1[19])
      {
        v22 = a1[2];
        a1[19] = LLVMInt32TypeInContext();
      }

      *(&v35 + 1) = LLVMConstInt();
      v23 = a1[2];
      strlen(v20);
      *&v36 = LLVMMDStringInContext();
      v24 = a1[2];
      strlen(__s);
      *(&v36 + 1) = LLVMMDStringInContext();
      v19[v16++] = LLVMMDNodeInContext();
    }

    while (v32 != v16);
  }

  v25 = LLVMMDNodeInContext();
  result = glpAddNamedMetadataOperand(a1[3], v29, v25);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleLLVMAddTexture(uint64_t a1, int a2, int a3, uint64_t a4, char a5)
{
  v6 = a3;
  if ((a3 - 1) <= 3)
  {
    if (*(a1 + 216))
    {
      v9 = &off_278B4E350;
    }

    else
    {
      v9 = &off_278B4E370;
    }

    v10 = v9[a3 - 1];
  }

  v11 = *(a1 + 24);
  Named = LLVMGetTypeByName();
  if (!Named)
  {
    v13 = *(a1 + 16);
    Named = LLVMStructCreateNamed();
  }

  if (*(a1 + 216))
  {
    Named = MEMORY[0x23EE85440](Named, 1);
  }

  v14 = *(a1 + 176) + 40 * a2;
  *(v14 + 32) = *(v14 + 32) & 0xFFFFFFF8 | v6 & 7;
  v15 = *(a1 + 176) + 40 * a2;
  *(v15 + 32) = *(v15 + 32) & 0xFFFFFFF7 | (8 * (a5 & 1));
  *(*(a1 + 176) + 40 * a2 + 24) = Named;
  LODWORD(v15) = *(a1 + 216);
  v16 = *(a1 + 24);
  result = LLVMGetTypeByName();
  if (!result)
  {
    v18 = *(a1 + 16);
    result = LLVMStructCreateNamed();
  }

  if (*(a1 + 216))
  {
    result = MEMORY[0x23EE85440](result, 2);
  }

  *(*(a1 + 176) + 40 * a2 + 16) = result;
  return result;
}

uint64_t gleLLVMCallFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5, uint64_t *a6, unsigned int a7)
{
  v27 = a7;
  v28 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20]();
  v12 = &v26[-v11];
  bzero(&v26[-v11], v13);
  if (a5)
  {
    v14 = a5;
    v15 = v12;
    v16 = a4;
    do
    {
      v17 = *v16++;
      *v15++ = LLVMTypeOf();
      --v14;
    }

    while (v14);
  }

  v18 = *(a1 + 24);
  v19 = LLVMGetNamedFunction();
  LLVMFunctionType();
  if (!v19)
  {
    v20 = *(a1 + 24);
    LLVMAddFunction();
    if (v27)
    {
      v21 = v27;
      do
      {
        v22 = *a6++;
        LLVMAddAttributeAtIndex();
        --v21;
      }

      while (v21);
    }
  }

  v23 = *(a1 + 32);
  result = LLVMBuildCall();
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleLLVMGetAttribute(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = 0;
  v7 = *(a1 + 152);
  if (v7)
  {
    v39 = v7;
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = LLVMInt32TypeInContext();
    *(a1 + 152) = v9;
    v39 = v9;
    if (!v9)
    {
      v10 = *(a1 + 16);
      *(a1 + 152) = LLVMInt32TypeInContext();
    }
  }

  v38 = 0;
  v11 = 1;
  v37 = LLVMConstInt();
  if (*a1)
  {
    if (*(a1 + 152))
    {
      v40 = *(a1 + 152);
    }

    else
    {
      v12 = *(a1 + 16);
      v13 = LLVMInt32TypeInContext();
      *(a1 + 152) = v13;
      v40 = v13;
      if (!v13)
      {
        v14 = *(a1 + 16);
        *(a1 + 152) = LLVMInt32TypeInContext();
      }
    }

    v38 = LLVMConstInt();
    v11 = 2;
  }

  v35 = 0u;
  v36 = 0u;
  *v33 = 0u;
  v34 = 0u;
  if (a3 == 2)
  {
    if (!*(a1 + 152))
    {
      v15 = *(a1 + 16);
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    v16 = MEMORY[0x23EE854F0]();
    if (*a1)
    {
      v17 = "graphics.interpolate.center.4xi";
    }

    else
    {
      v17 = "graphics.vertex.readAttribute.4xi";
    }
  }

  else
  {
    v18 = (a3 - 3);
    v19 = *(a1 + 16);
    if (a4 == 1)
    {
      v16 = LLVMFloatTypeInContext();
      v20 = "f";
    }

    else
    {
      v16 = LLVMHalfTypeInContext();
      v20 = "h";
    }

    if (v18 >= 2)
    {
      v16 = MEMORY[0x23EE854F0](v16, v18);
    }

    if (*a1)
    {
      v21 = "graphics.interpolate.center.%dx%s";
      v31 = v20;
    }

    else
    {
      v21 = "graphics.vertex.readAttribute.%dxf";
    }

    v30 = v18;
    v17 = v33;
    snprintf_l(v33, 0x40uLL, 0, v21, v30, v31);
  }

  memset(v32, 0, sizeof(v32));
  glpMangleNameLLVM(*(a1 + 24), v32, 0x200uLL, v17, v16, &v39, 0, v11);
  v22 = *(a1 + 24);
  v23 = LLVMGetNamedFunction();
  LLVMFunctionType();
  if (!v23)
  {
    v24 = *(a1 + 24);
    LLVMAddFunction();
    v25 = *(a1 + 16);
    MEMORY[0x23EE852E0]("readonly", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
    v26 = *(a1 + 16);
    MEMORY[0x23EE852E0]("nounwind", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
  }

  v27 = *(a1 + 32);
  result = LLVMBuildCall();
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleLLVMCreateConstantVec4(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  LLVMFloatTypeInContext();
  if (a3 != 1)
  {
    v7 = *(a1 + 16);
    LLVMHalfTypeInContext();
  }

  v8 = 0;
  memset(v12, 0, sizeof(v12));
  do
  {
    v9 = *(a2 + 4 * v8);
    *(v12 + v8++) = llvm::ConstantFP::get();
  }

  while (v8 != 4);
  result = LLVMConstVector();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleLLVMClampColor(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = LLVMTypeOf();
  if (LLVMGetTypeKind() == 13)
  {
    v5 = LLVMGetVectorSize();
    LLVMGetElementType();
    v6 = llvm::ConstantFP::get();
    v7 = llvm::ConstantFP::get();
    v26 = 0u;
    v27 = 0u;
    if (v5 <= 0)
    {
      v15 = LLVMConstVector();
      v26 = 0u;
      v27 = 0u;
    }

    else
    {
      v8 = v7;
      v9 = (v5 + 1) & 0xFFFFFFFE;
      v10 = vdupq_n_s64(v5 - 1);
      v11 = xmmword_23A300E20;
      v12 = &v26 + 1;
      v13 = vdupq_n_s64(2uLL);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v10, v11));
        if (v14.i8[0])
        {
          *(v12 - 1) = v6;
        }

        if (v14.i8[4])
        {
          *v12 = v6;
        }

        v11 = vaddq_s64(v11, v13);
        v12 += 2;
        v9 -= 2;
      }

      while (v9);
      v25 = v10;
      v15 = LLVMConstVector();
      v26 = 0u;
      v27 = 0u;
      v16 = (v5 + 1) & 0xFFFFFFFE;
      v17 = xmmword_23A300E20;
      v18 = &v26 + 1;
      v19 = vdupq_n_s64(2uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v25, v17));
        if (v20.i8[0])
        {
          *(v18 - 1) = v8;
        }

        if (v20.i8[4])
        {
          *v18 = v8;
        }

        v17 = vaddq_s64(v17, v19);
        v18 += 2;
        v16 -= 2;
      }

      while (v16);
    }

    v21 = LLVMConstVector();
  }

  else
  {
    v15 = llvm::ConstantFP::get();
    v21 = llvm::ConstantFP::get();
  }

  *&v26 = a2;
  *(&v26 + 1) = v15;
  *&v27 = v21;
  if (*(a1 + 216))
  {
    v22 = "air.clamp";
  }

  else
  {
    v22 = "clamp";
  }

  result = gleStateProgram_BuildOperation(a1, v22, 3, &v26, v4);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleStateProgram_BuildOperation(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5)
{
  v57[3] = *MEMORY[0x277D85DE8];
  memset(v57, 0, 24);
  if (a3 >= 1)
  {
    v10 = 0;
    v11 = 8 * a3;
    do
    {
      v12 = *(a4 + v10);
      v57[v10 / 8] = LLVMTypeOf();
      v10 += 8;
    }

    while (v11 != v10);
  }

  if (LLVMGetTypeKind() == 13)
  {
    LLVMGetElementType();
    v13 = LLVMGetVectorSize() - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = LLVMGetTypeKind();
  switch(v14)
  {
    case 1:
      if (v13 < 3)
      {
        v15 = &off_278B4E3A8;
        goto LABEL_16;
      }

      v16 = "v4f16";
      break;
    case 8:
      if (v13 < 3)
      {
        v15 = &off_278B4E3C0;
        goto LABEL_16;
      }

      v16 = "v4i1";
      break;
    case 2:
      if (v13 < 3)
      {
        v15 = &off_278B4E390;
LABEL_16:
        v16 = v15[v13];
        break;
      }

      v16 = "v4f32";
      break;
    default:
      abort();
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
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
  v27 = 0u;
  v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  if (*(a1 + 216))
  {
    snprintf_l(v25, 0x200uLL, 0, "%s.%s", a2, v16);
  }

  else
  {
    glpMangleNameLLVM(*(a1 + 24), v25, 0x200uLL, a2, a5, v57, 0, a3);
  }

  v17 = *(a1 + 24);
  v18 = LLVMGetNamedFunction();
  LLVMFunctionType();
  if (!v18)
  {
    v19 = *(a1 + 24);
    LLVMAddFunction();
    v20 = *(a1 + 16);
    MEMORY[0x23EE852E0]("nounwind", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
    v21 = *(a1 + 16);
    MEMORY[0x23EE852E0]("readonly", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
  }

  v22 = *(a1 + 32);
  result = LLVMBuildCall();
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleLLVMAddFunctionCall(void *a1, char *__s, uint64_t a3, int a4, uint64_t *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  glpMangleNameLLVM(a1[3], v13, 0x200uLL, __s, a3, a5, 0, a4);
  v6 = a1[3];
  v7 = LLVMGetNamedFunction();
  LLVMFunctionType();
  if (!v7)
  {
    v8 = a1[3];
    LLVMAddFunction();
    v9 = a1[2];
    MEMORY[0x23EE852E0]("nounwind", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
  }

  v10 = a1[4];
  result = LLVMBuildCall();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleLLVMAddVoidFunctionCall(void *a1, char *a2, int a3, uint64_t *a4)
{
  v8 = a1[2];
  v9 = LLVMVoidTypeInContext();

  return gleLLVMAddFunctionCall(a1, a2, v9, a3, a4);
}

uint64_t gleStateProgram_TruncateVec4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[2];
  v6 = LLVMFloatTypeInContext();
  v7 = MEMORY[0x23EE854F0](v6, a3);
  inserted = MEMORY[0x23EE85370](v7);
  if (a3 >= 1)
  {
    v9 = 0;
    do
    {
      if (!a1[19])
      {
        v10 = a1[2];
        a1[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v11 = a1[4];
      LLVMBuildExtractElement();
      v12 = a1[4];
      inserted = LLVMBuildInsertElement();
      ++v9;
    }

    while (a3 != v9);
  }

  return inserted;
}

void gleLLVMAddOperation(void *a1, _DWORD *a2, int a3)
{
  LODWORD(v341) = a3;
  v3 = a1;
  v381 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v342 = a2;
  v5 = *a2;
  v6 = *a2 & 7;
  v7 = (v6 + (v5 >> 15) + (v5 << 15 >> 31));
  MEMORY[0x28223BE20]();
  v9 = v337 - v8;
  bzero(v337 - v8, v10);
  v11 = 8 * v7;
  v343 = v7;
  v344 = v3;
  v340 = v4;
  if (v7 > 0)
  {
    memset_pattern16(v9, &unk_23A3010C0, 4 * ((v5 >> 15) + (v5 << 15 >> 31) + v6 - 1) + 4);
    MEMORY[0x28223BE20]();
    v12 = (v337 - ((v11 + 15) & 0xFFFFFFFF0));
    bzero(v12, 8 * v7);
    v13 = 0;
    v14 = v342;
    v338 = v9;
    v339 = v12;
    while (1)
    {
      v15 = *&v9[4 * v13];
      v16 = *v14;
      v17 = v14 + 8 * v13;
      v18 = *(v17 + 16);
      v19 = HIWORD(v18);
      v348[0] = 0;
      v20 = (v18 >> 6) & 7;
      if (!v20)
      {
        break;
      }

      if (v20 != 2)
      {
        TempValue = 0;
        v3 = v344;
        if (v20 == 1)
        {
          TempValue = readTempValue(v344, v19, 1);
          v348[0] = TempValue;
        }

        goto LABEL_40;
      }

      if ((v18 & 0x1000000000000000) == 0)
      {
        v22 = v344[4];
        if (!v344[19])
        {
          v23 = v344;
          v24 = v344[2];
          v23[19] = LLVMInt32TypeInContext();
        }

        v25 = LLVMConstInt();
        if (v18)
        {
          v32 = v344;
          readAddressValue(v344, (v18 >> 1) & 1, 1);
          if (!v32[19])
          {
            v33 = v32[2];
            v32[19] = LLVMInt32TypeInContext();
          }

          LLVMConstInt();
          LLVMBuildExtractElement();
          LLVMConstInt();
          v26 = LLVMBuildAdd();
          v34 = v32[26];
          v3 = v32;
          if (v34)
          {
            v34(v32[23]);
            LLVMBuildICmp();
            LLVMConstInt();
            v3 = v344;
            v26 = LLVMBuildSelect();
          }

          v9 = v338;
          v12 = v339;
        }

        else
        {
          v26 = v25;
          v3 = v344;
        }

        *&v349 = v26;
        v35 = v3[17];
        LLVMBuildGEP();
        TempValue = LLVMBuildLoad();
        if (v341 != 1)
        {
          v36 = v3[2];
          v37 = LLVMHalfTypeInContext();
          MEMORY[0x23EE854F0](v37, 4);
          TempValue = LLVMBuildFPTrunc();
        }

        goto LABEL_38;
      }

      v3 = v344;
      TempValue = *(v344[13] + 8 * v19 - 0x8000);
LABEL_39:
      v348[0] = TempValue;
LABEL_40:
      v44 = gleLLVMApplySwizzle(v3, TempValue, (*(v17 + 16) >> 9) & 3, (*(v17 + 16) >> 11) & 3, (*(v17 + 16) >> 13) & 3, (*(v17 + 16) >> 15) & 3);
      v348[0] = v44;
      v45 = *(v17 + 16);
      if ((v45 & 0x20) != 0)
      {
        v46 = LLVMTypeOf();
        v44 = gleStateProgram_BuildOperation(v3, "air.fabs", 1, v348, v46);
        v348[0] = v44;
        v45 = *(v17 + 16);
      }

      if ((v45 & 0x10) != 0)
      {
        v44 = LLVMBuildFNeg();
      }

      v12[v13++] = v44;
      if (v343 == v13)
      {
        goto LABEL_47;
      }
    }

    v27 = v15 + 3;
    if ((v16 & 0x3FC0) == 0x1200)
    {
      v28 = 2;
    }

    else
    {
      v28 = v27;
    }

    v3 = v344;
    TempValue = *(v344[14] + 8 * v19);
    if (!TempValue)
    {
      v29 = v344[25];
      if (!v29 || (TempValue = v29(v344[23], v19, v28)) == 0)
      {
        if (*(v3 + 54))
        {
          v30 = v3[7];
          v31 = LLVMGetParam();
        }

        else
        {
          v31 = gleLLVMGetAttribute(v3, v19, v28, v341);
        }

        TempValue = v31;
      }
    }

    *(v3[14] + 8 * v19) = TempValue;
    if (v28 < 5)
    {
      if (v341 != 1)
      {
        v42 = v3[2];
        v41 = LLVMHalfTypeInContext();
LABEL_36:
        if (v41 != LLVMTypeOf())
        {
          v43 = v3[4];
          TempValue = LLVMBuildFPTrunc();
        }
      }
    }

    else
    {
      v38 = (v28 - 3);
      TempValue = gleLLVMVectorExtend(v3, TempValue, v38);
      if (v341 != 1)
      {
        v39 = v3[2];
        v40 = LLVMHalfTypeInContext();
        v41 = MEMORY[0x23EE854F0](v40, v38);
        goto LABEL_36;
      }
    }

LABEL_38:
    v14 = v342;
    goto LABEL_39;
  }

  MEMORY[0x28223BE20]();
  v12 = (v337 - ((v11 + 15) & 0xFFFFFFFF0));
  bzero(v12, 8 * v7);
  v14 = v342;
LABEL_47:
  v47 = *(v14 + 8);
  v48 = (v47 >> 12) & 7;
  if (v48 == 4)
  {
    v51 = v3[19];
    if (!v51)
    {
      v53 = v3[2];
      v51 = LLVMInt32TypeInContext();
      v3[19] = v51;
      if (!v51)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v49 = HIWORD(v47);
    if (v48 == 3)
    {
      v50 = v3[16];
    }

    else
    {
      if (v48 != 1)
      {
LABEL_53:
        v52 = v3[2];
        v51 = LLVMFloatTypeInContext();
        goto LABEL_56;
      }

      v50 = v3[12];
    }

    v51 = *(v50 + 8 * v49);
    if (!v51)
    {
      goto LABEL_53;
    }
  }

LABEL_56:
  if (v341 == 1 && LLVMGetTypeKind() == 1)
  {
    v54 = v3[2];
    v51 = LLVMFloatTypeInContext();
  }

  inserted = *v12;
  v55 = MEMORY[0x23EE854F0](v51, 4);
  v56 = *v14;
  switch((*v14 >> 6))
  {
    case 0u:
      inserted = *v12;
      goto LABEL_295;
    case 1u:
      if (!v3[19])
      {
        v148 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v149 = LLVMConstInt();
      if (!v3[19])
      {
        v150 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v151 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v341 = v55;
      v343 = LLVMConstInt();
      if (!v3[19])
      {
        v152 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v339 = LLVMConstInt();
      v153 = *v12;
      Element = LLVMBuildExtractElement();
      v155 = *v12;
      v156 = LLVMBuildExtractElement();
      v157 = *v12;
      v158 = LLVMBuildExtractElement();
      LLVMTypeOf();
      v159 = llvm::ConstantFP::get();
      v338 = v149;
      v160 = v159;
      LLVMTypeOf();
      v337[1] = llvm::ConstantFP::get();
      LLVMTypeOf();
      v161 = llvm::ConstantFP::get();
      LLVMTypeOf();
      v162 = llvm::ConstantFP::get();
      v348[0] = Element;
      v348[1] = v160;
      v163 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v3, "air.fast_fmax", 2, v348, v163);
      v347[0] = v156;
      v347[1] = v160;
      v164 = LLVMTypeOf();
      v165 = gleStateProgram_BuildOperation(v344, "air.fast_fmax", 2, v347, v164);
      *&v349 = v158;
      *(&v349 + 1) = v162;
      *&v350 = v161;
      v166 = LLVMTypeOf();
      v167 = gleStateProgram_BuildOperation(v344, "air.clamp", 3, &v349, v166);
      LLVMBuildFCmp();
      v346[0] = v165;
      v346[1] = v167;
      v168 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v344, "air.fast_powr", 2, v346, v168);
      LLVMBuildSelect();
      v55 = v341;
      inserted = MEMORY[0x23EE85370](v341);
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      goto LABEL_219;
    case 2u:
      if (*(v3 + 54))
      {
        v80 = "air.fabs";
      }

      else
      {
        v80 = "__cl_fabs";
      }

      goto LABEL_289;
    case 4u:
      v80 = "air.fract";
      goto LABEL_289;
    case 5u:
      v80 = "air.floor";
      goto LABEL_289;
    case 0xCu:
      *&v349 = 0;
      v131 = (v56 >> 36) & 3;
      if (v131 == 3)
      {
        *&v349 = *v12;
        goto LABEL_328;
      }

      if (v131)
      {
LABEL_328:
        v134 = 1;
        goto LABEL_329;
      }

      if (!v3[19])
      {
        v132 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v133 = *v12;
      v134 = 0;
      *&v349 = LLVMBuildExtractElement();
LABEL_329:
      v305 = "air.sqrt";
      if (v341 == 1)
      {
        v305 = "air.fast_sqrt";
      }

      if (*(v3 + 54))
      {
        v306 = v305;
      }

      else
      {
        v306 = "native_sqrt";
      }

      v307 = LLVMTypeOf();
      v308 = gleStateProgram_BuildOperation(v3, v306, 1, &v349, v307);
      inserted = v308;
      if ((v134 & 1) == 0)
      {
        *&v349 = v308;
        v309 = 0;
        inserted = MEMORY[0x23EE85370](v55);
        do
        {
          if (!v3[19])
          {
            v310 = v3[2];
            v3[19] = LLVMInt32TypeInContext();
          }

          LLVMConstInt();
          inserted = LLVMBuildInsertElement();
          ++v309;
        }

        while (v309 != 4);
      }

LABEL_221:
      v14 = v342;
LABEL_295:
      v277 = *v14;
      if ((*v14 & 0x100000000) == 0)
      {
        goto LABEL_322;
      }

      v278 = *(v14 + 8);
      v279 = HIWORD(v278);
      v280 = (~v278 & 0x78000 | v278 & 0xE | v277 & 0x20000000000) != 0;
      v281 = inserted;
      v282 = v344;
      if ((v277 & 0x80000000000) != 0)
      {
        v281 = gleLLVMClampColor(v344, inserted);
        inserted = v281;
        v278 = *(v14 + 8);
      }

      inserted = gleLLVMApplySwizzle(v282, v281, (v278 >> 23) & 3, (v278 >> 25) & 3, (v278 >> 27) & 3, (v278 >> 29) & 3);
      v283 = (*(v14 + 8) >> 12) & 7;
      switch(v283)
      {
        case 4:
          v287 = v344;
          AddressValue = readAddressValue(v344, v279, v280);
          v289 = v287[8];
LABEL_317:
          v293 = *(v289 + 8 * v279);
          if (v280)
          {
            inserted = gleLLVMApplyDestMaskAndCC(v287, AddressValue, inserted, v342);
          }

          goto LABEL_321;
        case 3:
          v290 = v344;
          if (*(v344 + 3) <= v279)
          {
            *(v344 + 3) = v279 + 1;
          }

          if (*(v290 + 54))
          {
            v291 = *(v290[16] + 8 * v279);
            if (!v291 || (v55 = MEMORY[0x23EE854F0](v291, 4), *(v344 + 54)))
            {
              if (LLVMTypeOf() != v55)
              {
                inserted = LLVMBuildFPCast();
              }
            }
          }

          if (*(v344[15] + 8 * v279))
          {
            if (!v280)
            {
LABEL_321:
              LLVMBuildStore();
              break;
            }
          }

          else
          {
            v294 = MEMORY[0x23EE85370](v55);
            v295 = v344;
            *(v295[15] + 8 * v279) = allocateVariable(v344, v55, v294);
            v296 = *(v295[15] + 8 * v279);
            if (!v280)
            {
              goto LABEL_321;
            }
          }

          v292 = LLVMBuildLoad();
          inserted = gleLLVMApplyDestMaskAndCC(v344, v292, inserted, v342);
          goto LABEL_321;
        case 1:
          v284 = *(v344[12] + 8 * v279);
          if (!v284)
          {
            v285 = v344[2];
            v284 = LLVMFloatTypeInContext();
          }

          v286 = MEMORY[0x23EE854F0](v284, 4);
          if (v286 != LLVMTypeOf())
          {
            inserted = LLVMBuildFPCast();
          }

          v287 = v344;
          AddressValue = readTempValue(v344, v279, v280);
          v289 = v287[11];
          goto LABEL_317;
      }

LABEL_322:
      v297 = *MEMORY[0x277D85DE8];
      return;
    case 0xDu:
      *&v349 = 0;
      v169 = (v56 >> 36) & 3;
      if (v169 == 3)
      {
        *&v349 = *v12;
      }

      else if (!v169)
      {
        if (!v3[19])
        {
          v170 = v3[2];
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        v171 = *v12;
        v172 = 0;
        *&v349 = LLVMBuildExtractElement();
LABEL_341:
        v311 = *(v3 + 54);
        v312 = LLVMTypeOf();
        if (v311)
        {
          *&v349 = gleStateProgram_BuildOperation(v3, "air.fabs", 1, &v349, v312);
          if (v341 == 1)
          {
            v313 = "air.fast_rsqrt";
          }

          else
          {
            v313 = "air.rsqrt";
          }
        }

        else
        {
          *&v349 = gleStateProgram_BuildOperation(v3, "__cl_fabs", 1, &v349, v312);
          v313 = "native_rsqrt";
        }

        v314 = LLVMTypeOf();
        v315 = gleStateProgram_BuildOperation(v3, v313, 1, &v349, v314);
        inserted = v315;
        if ((v172 & 1) == 0)
        {
          *&v349 = v315;
          v316 = 0;
          inserted = MEMORY[0x23EE85370](v55);
          do
          {
            if (!v3[19])
            {
              v317 = v3[2];
              v3[19] = LLVMInt32TypeInContext();
            }

            LLVMConstInt();
            inserted = LLVMBuildInsertElement();
            ++v316;
          }

          while (v316 != 4);
        }

        goto LABEL_221;
      }

      v172 = 1;
      goto LABEL_341;
    case 0xEu:
      v348[0] = 0;
      v173 = (v56 >> 36) & 3;
      if (v173 == 3)
      {
        v348[0] = *v12;
      }

      else if (!v173)
      {
        if (!v3[19])
        {
          v174 = v3[2];
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        v175 = *v12;
        v176 = 0;
        v348[0] = LLVMBuildExtractElement();
LABEL_353:
        if (*(v3 + 54))
        {
          v318 = llvm::ConstantFP::get();
          LLVMTypeOf();
          if (LLVMGetTypeKind() == 13)
          {
            LLVMTypeOf();
            v319 = LLVMGetVectorSize();
            v349 = 0u;
            v350 = 0u;
            if (v319 >= 1)
            {
              v320 = (v319 + 1) & 0xFFFFFFFE;
              v321 = vdupq_n_s64(v319 - 1);
              v322 = xmmword_23A300E20;
              v323 = &v349 + 1;
              v324 = vdupq_n_s64(2uLL);
              do
              {
                v325 = vmovn_s64(vcgeq_u64(v321, v322));
                if (v325.i8[0])
                {
                  *(v323 - 1) = v318;
                }

                if (v325.i8[4])
                {
                  *v323 = v318;
                }

                v322 = vaddq_s64(v322, v324);
                v323 += 2;
                v320 -= 2;
              }

              while (v320);
            }

            LLVMConstVector();
          }

          v326 = LLVMBuildFDiv();
        }

        else
        {
          v327 = LLVMTypeOf();
          v326 = gleStateProgram_BuildOperation(v3, "native_recip", 1, v348, v327);
        }

        inserted = v326;
        if ((v176 & 1) == 0)
        {
          v348[0] = v326;
          v328 = 0;
          inserted = MEMORY[0x23EE85370](v55);
          do
          {
            if (!v3[19])
            {
              v329 = v3[2];
              v3[19] = LLVMInt32TypeInContext();
            }

            LLVMConstInt();
            inserted = LLVMBuildInsertElement();
            ++v328;
          }

          while (v328 != 4);
        }

        goto LABEL_221;
      }

      v176 = 1;
      goto LABEL_353;
    case 0x10u:
      *&v349 = 0;
      if (!v3[19])
      {
        v202 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v203 = *v12;
      *&v349 = LLVMBuildExtractElement();
      v204 = "air.exp2";
      if (v341 == 1)
      {
        v204 = "air.fast_exp2";
      }

      if (*(v3 + 54))
      {
        v205 = v204;
      }

      else
      {
        v205 = "native_exp2";
      }

      v206 = LLVMTypeOf();
      inserted = gleStateProgram_BuildOperation(v3, v205, 1, &v349, v206);
      *&v349 = inserted;
      v207 = 0;
      inserted = MEMORY[0x23EE85370](v55);
      do
      {
        if (!v3[19])
        {
          v208 = v3[2];
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        inserted = LLVMBuildInsertElement();
        ++v207;
      }

      while (v207 != 4);
      goto LABEL_221;
    case 0x11u:
      if (!v3[19])
      {
        v189 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v190 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v343 = LLVMConstInt();
      if (!v3[19])
      {
        v191 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v341 = LLVMConstInt();
      if (!v3[19])
      {
        v192 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v193 = *v12;
      *&v349 = LLVMBuildExtractElement();
      v194 = LLVMTypeOf();
      v348[0] = gleStateProgram_BuildOperation(v344, "air.floor", 1, &v349, v194);
      v195 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v344, "air.fast_exp2", 1, v348, v195);
      v196 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v344, "air.fract", 1, &v349, v196);
      v197 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v344, "air.fast_exp2", 1, &v349, v197);
      LLVMTypeOf();
      llvm::ConstantFP::get();
      inserted = MEMORY[0x23EE85370](v55);
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      goto LABEL_219;
    case 0x13u:
      if (!v3[19])
      {
        v110 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v111 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v112 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v113 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v114 = *v12;
      *&v349 = LLVMBuildExtractElement();
      v115 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v344, "air.fast_log2", 1, &v349, v115);
      inserted = MEMORY[0x23EE85370](v55);
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      goto LABEL_219;
    case 0x14u:
      if (!v3[19])
      {
        v135 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v136 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v343 = LLVMConstInt();
      if (!v3[19])
      {
        v137 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v341 = LLVMConstInt();
      if (!v3[19])
      {
        v138 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v339 = LLVMConstInt();
      v139 = *v12;
      *&v349 = LLVMBuildExtractElement();
      v140 = LLVMTypeOf();
      *&v349 = gleStateProgram_BuildOperation(v3, "air.fabs", 1, &v349, v140);
      if (!v3[19])
      {
        v141 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMBuildBitCast();
      if (!v3[19])
      {
        v142 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      LLVMBuildLShr();
      if (!v3[19])
      {
        v143 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      LLVMBuildAnd();
      LLVMTypeOf();
      LLVMBuildUIToFP();
      LLVMTypeOf();
      llvm::ConstantFP::get();
      v144 = v344;
      LLVMBuildFSub();
      if (!v144[19])
      {
        v145 = v144[2];
        v144[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      LLVMBuildAnd();
      if (!v144[19])
      {
        v146 = v144[2];
        v144[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      LLVMBuildOr();
      LLVMTypeOf();
      LLVMBuildBitCast();
      v147 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v144, "air.fast_log2", 1, &v349, v147);
      LLVMTypeOf();
      llvm::ConstantFP::get();
      inserted = MEMORY[0x23EE85370](v55);
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      goto LABEL_219;
    case 0x15u:
      *&v349 = *v12;
      *(&v349 + 1) = v349;
      v348[0] = 0;
      v348[0] = gleStateProgram_BuildOperation(v3, "air.dot", 2, &v349, v51);
      if (v341 == 1)
      {
        v116 = "air.fast_rsqrt";
      }

      else
      {
        v116 = "air.rsqrt";
      }

      v117 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v3, v116, 1, v348, v117);
      v118 = 0;
      inserted = MEMORY[0x23EE85370](v55);
      do
      {
        if (!v3[19])
        {
          v119 = v3[2];
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        inserted = LLVMBuildInsertElement();
        ++v118;
      }

      while (v118 != 4);
      v120 = *v12;
      v121 = LLVMBuildFMul();
      goto LABEL_220;
    case 0x18u:
      if (!v3[19])
      {
        v94 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v95 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v96 = *v12;
      *&v349 = LLVMBuildExtractElement();
      v97 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v344, "air.fast_cos", 1, &v349, v97);
      v98 = LLVMTypeOf();
      gleStateProgram_BuildOperation(v344, "air.fast_sin", 1, &v349, v98);
      inserted = MEMORY[0x23EE85370](v55);
      inserted = LLVMBuildInsertElement();
      goto LABEL_219;
    case 0x19u:
      if (!v3[19])
      {
        v177 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v178 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v179 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v180 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v181 = *v12;
      *&v349 = LLVMBuildExtractElement();
      v182 = LLVMTypeOf();
      v183 = "air.fast_sin";
      goto LABEL_207;
    case 0x1Au:
      if (!v3[19])
      {
        v184 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v185 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v186 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v187 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v188 = *v12;
      *&v349 = LLVMBuildExtractElement();
      v182 = LLVMTypeOf();
      v183 = "air.fast_cos";
LABEL_207:
      gleStateProgram_BuildOperation(v344, v183, 1, &v349, v182);
      inserted = MEMORY[0x23EE85370](v55);
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      goto LABEL_219;
    case 0x1Fu:
      gleLLVMFixPrecision(v3, v341, v12, 2);
      v224 = *v12;
      v225 = v12[1];
      goto LABEL_246;
    case 0x20u:
      gleLLVMFixPrecision(v3, v341, v12, 2);
      v209 = *v12;
      v210 = v12[1];
      v62 = LLVMBuildFSub();
      goto LABEL_294;
    case 0x22u:
      gleLLVMFixPrecision(v3, v341, v12, 2);
      v92 = *v12;
      v93 = v12[1];
      v62 = LLVMBuildFMul();
      goto LABEL_294;
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x52u:
      v64 = *v12;
      v349 = *v12;
      if ((v56 & 0x3FC0) == 0xA00)
      {
        *&v349 = gleStateProgram_TruncateVec4(v3, v64, 3);
        *(&v349 + 1) = gleStateProgram_TruncateVec4(v3, *(&v349 + 1), 3);
        v56 = *v14;
      }

      if ((v56 & 0x3FC0) == 0x1480)
      {
        *&v349 = gleStateProgram_TruncateVec4(v3, v349, 2);
        *(&v349 + 1) = gleStateProgram_TruncateVec4(v3, *(&v349 + 1), 2);
        v56 = *v14;
      }

      if ((v56 & 0x3FC0) == 0xA80)
      {
        v65 = v3[2];
        LLVMFloatTypeInContext();
        llvm::ConstantFP::get();
        if (!v3[19])
        {
          v66 = v3[2];
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        *&v349 = LLVMBuildInsertElement();
      }

      if (*(v3 + 54))
      {
        v67 = "air.dot";
      }

      else
      {
        v67 = "dot";
      }

      gleStateProgram_BuildOperation(v3, v67, 2, &v349, v51);
      v68 = 0;
      inserted = MEMORY[0x23EE85370](v55);
      do
      {
        if (!v344[19])
        {
          v69 = v344;
          v70 = v344[2];
          v69[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        inserted = LLVMBuildInsertElement();
        ++v68;
      }

      while (v68 != 4);
      goto LABEL_221;
    case 0x2Bu:
      if (!v3[19])
      {
        v101 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v343 = LLVMConstInt();
      if (!v3[19])
      {
        v102 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      if (!v3[19])
      {
        v103 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v104 = LLVMConstInt();
      if (!v3[19])
      {
        v105 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v106 = *v12;
      LLVMBuildExtractElement();
      v107 = v12[1];
      LLVMBuildExtractElement();
      v108 = *v12;
      LLVMBuildExtractElement();
      v341 = v104;
      v109 = v12[1];
      LLVMBuildExtractElement();
      LLVMBuildFMul();
      LLVMTypeOf();
      llvm::ConstantFP::get();
      inserted = MEMORY[0x23EE85370](v55);
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
      inserted = LLVMBuildInsertElement();
LABEL_219:
      v121 = LLVMBuildInsertElement();
      goto LABEL_220;
    case 0x2Cu:
      if (*(v3 + 54))
      {
        v99 = "air.fmin";
        v100 = "air.fast_fmin";
        goto LABEL_166;
      }

      v80 = "__cl_fmin";
      goto LABEL_292;
    case 0x2Du:
      if (*(v3 + 54))
      {
        v99 = "air.fmax";
        v100 = "air.fast_fmax";
LABEL_166:
        if (v341 == 1)
        {
          v80 = v100;
        }

        else
        {
          v80 = v99;
        }
      }

      else
      {
        v80 = "__cl_fmax";
      }

      goto LABEL_292;
    case 0x2Eu:
      if (*(v3 + 54))
      {
        v232 = *v12;
        if (!v3[19])
        {
          v233 = v3[2];
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        v343 = LLVMBuildExtractElement();
        v234 = *v12;
        if (!v3[19])
        {
          v235 = v3[2];
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildExtractElement();
        v236 = *v12;
        if (!v3[19])
        {
          v237 = v3[2];
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildExtractElement();
        v238 = v12[1];
        if (!v3[19])
        {
          v239 = v3[2];
          v3[19] = LLVMInt32TypeInContext();
        }

        v341 = v55;
        LLVMConstInt();
        v339 = LLVMBuildExtractElement();
        v240 = v12[1];
        if (!v3[19])
        {
          v241 = v3[2];
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildExtractElement();
        v242 = v3;
        v243 = v12[1];
        if (!*(v242 + 152))
        {
          v244 = *(v242 + 16);
          *(v242 + 152) = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildExtractElement();
        LLVMBuildFMul();
        LLVMBuildFMul();
        LLVMBuildFSub();
        gleLLVMGetConstantInt32(v242);
        inserted = LLVMBuildInsertElement();
        LLVMBuildFMul();
        LLVMBuildFMul();
        LLVMBuildFSub();
        gleLLVMGetConstantInt32(v242);
        inserted = LLVMBuildInsertElement();
        LLVMBuildFMul();
        LLVMBuildFMul();
        LLVMBuildFSub();
        gleLLVMGetConstantInt32(v242);
        inserted = LLVMBuildInsertElement();
LABEL_268:
        v55 = v341;
        v14 = v342;
        goto LABEL_295;
      }

      v80 = "cross";
LABEL_292:
      v275 = v3;
      v276 = 2;
LABEL_293:
      v62 = gleStateProgram_BuildOperation(v275, v80, v276, v12, v55);
      goto LABEL_294;
    case 0x30u:
      if (!v3[19])
      {
        v230 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v231 = MEMORY[0x23EE854F0]();
      v62 = MEMORY[0x23EE851D0](v231);
      goto LABEL_294;
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
      v57 = *(&unk_23A3010E0 + (((v56 >> 6 << 56) - 0x3100000000000000) >> 54));
      v58 = *v12;
      v59 = v12[1];
      LLVMBuildFCmp();
      v60 = llvm::ConstantFP::get();
      v61 = llvm::ConstantFP::get();
      *&v349 = v60;
      *(&v349 + 1) = v60;
      *&v350 = v60;
      *(&v350 + 1) = v60;
      LLVMConstVector();
      *&v349 = v61;
      *(&v349 + 1) = v61;
      *&v350 = v61;
      *(&v350 + 1) = v61;
      LLVMConstVector();
      v14 = v342;
      goto LABEL_61;
    case 0x37u:
      if (!v3[19])
      {
        v226 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v227 = MEMORY[0x23EE854F0]();
      v62 = MEMORY[0x23EE85200](v227);
      goto LABEL_294;
    case 0x38u:
      v349 = 0uLL;
      v249 = (v56 >> 36) & 3;
      if (v249 == 3)
      {
        v253 = v12[1];
        *&v349 = *v12;
        v254 = 1;
      }

      else
      {
        if (v249)
        {
          v254 = 1;
LABEL_374:
          v330 = "air.powr";
          if (v341 == 1)
          {
            v330 = "air.fast_powr";
          }

          if (*(v3 + 54))
          {
            v331 = v330;
          }

          else
          {
            v331 = "native_powr";
          }

          v332 = LLVMTypeOf();
          inserted = gleStateProgram_BuildOperation(v3, v331, 2, &v349, v332);
          v333 = LLVMTypeOf();
          MEMORY[0x23EE85200](v333);
          LLVMBuildFCmp();
          inserted = LLVMBuildSelect();
          if ((v254 & 1) == 0)
          {
            v334 = 0;
            inserted = MEMORY[0x23EE85370](v55);
            do
            {
              if (!v344[19])
              {
                v335 = v344;
                v336 = v344[2];
                v335[19] = LLVMInt32TypeInContext();
              }

              LLVMConstInt();
              inserted = LLVMBuildInsertElement();
              ++v334;
            }

            while (v334 != 4);
          }

          goto LABEL_221;
        }

        if (!v3[19])
        {
          v250 = v3[2];
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        v251 = *v12;
        *&v349 = LLVMBuildExtractElement();
        v252 = v12[1];
        v253 = LLVMBuildExtractElement();
        v254 = 0;
      }

      *(&v349 + 1) = v253;
      goto LABEL_374;
    case 0x3Au:
      gleLLVMFixPrecision(v3, v341, v12, 2);
      v90 = *v12;
      v91 = v12[1];
      v62 = LLVMBuildFDiv();
      goto LABEL_294;
    case 0x3Cu:
      gleLLVMFixPrecision(v3, v341, v12, 3);
      v198 = v12[1];
      v199 = v12[2];
      LLVMBuildFSub();
      v200 = *v12;
      LLVMBuildFMul();
      v201 = v12[2];
      v14 = v342;
LABEL_246:
      v62 = LLVMBuildFAdd();
      goto LABEL_294;
    case 0x3Eu:
      v84 = *v12;
      v85 = v3[2];
      v86 = LLVMFloatTypeInContext();
      v87 = MEMORY[0x23EE854F0](v86, 4);
      MEMORY[0x23EE85200](v87);
      v14 = v342;
      LLVMBuildFCmp();
      v88 = v12[1];
      v89 = v12[2];
LABEL_61:
      v62 = LLVMBuildSelect();
      goto LABEL_294;
    case 0x3Fu:
      if (*(v3 + 54))
      {
        v80 = "air.mad";
      }

      else
      {
        v80 = "mad";
      }

      v275 = v3;
      v276 = 3;
      goto LABEL_293;
    case 0x41u:
      v122 = *(v14 + 24);
      *&v349 = vand_s8(vshl_u32(vdup_n_s32(v122), 0xFFFFFFECFFFFFFF0), 0xF0000000FLL);
      DWORD2(v349) = HIBYTE(v122) & 0xF;
      HIDWORD(v349) = v122 >> 28;
      v123 = v3[2];
      LLVMFloatTypeInContext();
      v343 = llvm::ConstantFP::get();
      v124 = v3[2];
      LLVMFloatTypeInContext();
      llvm::ConstantFP::get();
      v125 = v3[2];
      LLVMFloatTypeInContext();
      llvm::ConstantFP::get();
      v341 = v55;
      v126 = 0;
      inserted = MEMORY[0x23EE85370](v55);
      do
      {
        v127 = *(&v349 + v126);
        if (v127 < 8)
        {
          v128 = *v12;
          if (!v3[19])
          {
            v129 = v3[2];
            v3[19] = LLVMInt32TypeInContext();
          }

          LLVMConstInt();
          LLVMBuildExtractElement();
          if ((v127 & 4) != 0)
          {
            LLVMBuildFNeg();
          }

          v3 = v344;
        }

        if (!v3[19])
        {
          v130 = v3[2];
          v3[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        inserted = LLVMBuildInsertElement();
        ++v126;
      }

      while (v126 != 4);
      goto LABEL_268;
    case 0x42u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
    case 0x46u:
      if (v343 < 2)
      {
        v63 = 0;
      }

      else
      {
        v63 = v12[1];
      }

      v62 = gleStateProgram_BuildTextureOperation(v3, v14, *v12, v63, v51);
      goto LABEL_294;
    case 0x48u:
      v211 = *v12;
      v212 = LLVMTypeOf();
      if (!v3[19])
      {
        v213 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v214 = MEMORY[0x23EE854F0]();
      v121 = *v12;
      if (v212 == v214)
      {
LABEL_220:
        inserted = v121;
        goto LABEL_221;
      }

      v215 = LLVMTypeOf();
      inserted = gleStateProgram_BuildOperation(v3, "air.floor", 1, v12, v215);
      v379 = 0u;
      v380 = 0u;
      v377 = 0u;
      v378 = 0u;
      v375 = 0u;
      v376 = 0u;
      v373 = 0u;
      v374 = 0u;
      v371 = 0u;
      v372 = 0u;
      v369 = 0u;
      v370 = 0u;
      v367 = 0u;
      v368 = 0u;
      v365 = 0u;
      v366 = 0u;
      v363 = 0u;
      v364 = 0u;
      v361 = 0u;
      v362 = 0u;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v355 = 0u;
      v356 = 0u;
      v354 = 0u;
      v352 = 0u;
      v353 = 0u;
      v350 = 0u;
      v351 = 0u;
      v349 = 0u;
      snprintf_l(&v349, 0x200uLL, 0, "%s%s.%s%s.%s", "air.convert", ".s", "v4i32", ".f", "v4f32");
      v14 = v342;
      if (!v3[19])
      {
        v216 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      v217 = MEMORY[0x23EE854F0]();
      v62 = gleLLVMCallFunction(v3, &v349, v217, &inserted, 1u, 0, 0);
LABEL_294:
      inserted = v62;
      goto LABEL_295;
    case 0x4Fu:
      if (v343)
      {
        v255 = v3[2];
        LLVMFloatTypeInContext();
        *&v349 = llvm::ConstantFP::get();
        *(&v349 + 1) = v349;
        *&v350 = v349;
        *(&v350 + 1) = v349;
        LLVMConstVector();
        v256 = *v12;
        *&v349 = LLVMBuildFCmp();
        v257 = v3[2];
        v258 = LLVMInt1TypeInContext();
        gleStateProgram_BuildOperation(v3, "air.any", 1, &v349, v258);
      }

      else
      {
        TestCC_XYZW(v3, v14);
      }

      v298 = v3[2];
      v299 = v3[7];
      LLVMAppendBasicBlockInContext();
      v300 = v344[2];
      v301 = v344[7];
      LLVMAppendBasicBlockInContext();
      LLVMBuildCondBr();
      LLVMPositionBuilderAtEnd();
      v302 = v344[2];
      v303 = LLVMVoidTypeInContext();
      v304 = v344[2];
      MEMORY[0x23EE852E0]("noreturn", 8);
      *&v349 = LLVMCreateEnumAttribute();
      gleLLVMCallFunction(v344, "air.discard_fragment", v303, 0, 0, &v349, 1u);
      LLVMBuildBr();
      LLVMPositionBuilderAtEnd();
      goto LABEL_221;
    case 0x50u:
      v80 = "air.dfdx";
      goto LABEL_289;
    case 0x51u:
      v80 = "air.dfdy";
      goto LABEL_289;
    case 0x55u:
      v71 = malloc_type_malloc(0x28uLL, 0x20040769AC3DAuLL);
      *v71 = 0;
      v72 = v3[2];
      v73 = v3[7];
      v71[1] = LLVMAppendBasicBlockInContext();
      v74 = v3[2];
      v75 = v3[7];
      v76 = LLVMAppendBasicBlockInContext();
      v71[2] = v76;
      v71[3] = v76;
      TestCC_XYZW(v3, v342);
      v77 = v71[1];
      v78 = v71[2];
      LLVMBuildCondBr();
      v79 = v71[1];
      LLVMPositionBuilderAtEnd();
      v71[4] = v3[6];
      v3[6] = v71;
      goto LABEL_221;
    case 0x57u:
      v259 = malloc_type_malloc(0x28uLL, 0x20040769AC3DAuLL);
      v260 = v3[19];
      if (!v260)
      {
        v261 = v3[2];
        v260 = LLVMInt32TypeInContext();
        v3[19] = v260;
      }

      *v259 = allocateVariable(v3, v260, 0);
      v262 = v3[2];
      v263 = v3[7];
      v259[1] = LLVMAppendBasicBlockInContext();
      v259[2] = 0;
      v264 = v3[2];
      v265 = v3[7];
      v259[3] = LLVMAppendBasicBlockInContext();
      if (!v3[19])
      {
        v266 = v3[2];
        v3[19] = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v267 = *v12;
      v348[0] = LLVMBuildExtractElement();
      v268 = LLVMTypeOf();
      v347[0] = gleStateProgram_BuildOperation(v3, "air.floor", 1, v348, v268);
      v379 = 0u;
      v380 = 0u;
      v377 = 0u;
      v378 = 0u;
      v375 = 0u;
      v376 = 0u;
      v373 = 0u;
      v374 = 0u;
      v371 = 0u;
      v372 = 0u;
      v369 = 0u;
      v370 = 0u;
      v367 = 0u;
      v368 = 0u;
      v365 = 0u;
      v366 = 0u;
      v363 = 0u;
      v364 = 0u;
      v361 = 0u;
      v362 = 0u;
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      v355 = 0u;
      v356 = 0u;
      v354 = 0u;
      v352 = 0u;
      v353 = 0u;
      v350 = 0u;
      v351 = 0u;
      v349 = 0u;
      snprintf_l(&v349, 0x200uLL, 0, "%s%s.%s%s.%s", "air.convert", ".s", "i32", ".f", "f32");
      v269 = v3[19];
      if (!v269)
      {
        v270 = v3[2];
        v269 = LLVMInt32TypeInContext();
        v3[19] = v269;
      }

      gleLLVMCallFunction(v3, &v349, v269, v347, 1u, 0, 0);
      v271 = *v259;
      LLVMBuildStore();
      gleLLVMGetConstantInt32(v3);
      LLVMBuildICmp();
      v272 = v259[1];
      v273 = v259[3];
      LLVMBuildCondBr();
      v274 = v259[1];
      LLVMPositionBuilderAtEnd();
      v259[4] = v3[6];
      v3[6] = v259;
      goto LABEL_221;
    case 0x58u:
      v245 = v3[2];
      v247 = v3[6];
      v246 = v3[7];
      *(v247 + 24) = LLVMAppendBasicBlockInContext();
      LLVMBuildBr();
      v248 = *(v247 + 16);
      v14 = v342;
      LLVMPositionBuilderAtEnd();
      goto LABEL_295;
    case 0x59u:
      v81 = v3[6];
      v82 = v81[3];
      LLVMBuildBr();
      v83 = v81[3];
      LLVMPositionBuilderAtEnd();
      v3[6] = v81[4];
      goto LABEL_244;
    case 0x5Bu:
      v81 = v3[6];
      v218 = *v81;
      LLVMBuildLoad();
      gleLLVMGetConstantInt32(v344);
      LLVMBuildSub();
      v219 = *v81;
      LLVMBuildStore();
      gleLLVMGetConstantInt32(v344);
      LLVMBuildICmp();
      v220 = v81[1];
      v221 = v81[3];
      LLVMBuildCondBr();
      v222 = v81[3];
      LLVMPositionBuilderAtEnd();
      v344[6] = v81[4];
LABEL_244:
      v223 = v81;
      v14 = v342;
      free(v223);
      goto LABEL_295;
    case 0x6Du:
      v228 = v3[4];
      v229 = *v12;
      v62 = LLVMBuildFPCast();
      goto LABEL_294;
    case 0x70u:
      if (*(v3 + 54))
      {
        if (v341 == 1)
        {
          v80 = "air.fast_exp";
        }

        else
        {
          v80 = "air.exp";
        }
      }

      else
      {
        v80 = "native_exp";
      }

LABEL_289:
      v275 = v3;
      v276 = 1;
      goto LABEL_293;
    default:
      goto LABEL_295;
  }
}

uint64_t readTempValue(void *a1, unsigned int a2, int a3)
{
  v6 = a1[4];
  v7 = *(a1[12] + 8 * a2);
  if (!v7)
  {
    v8 = a1[2];
    v7 = LLVMFloatTypeInContext();
  }

  v9 = MEMORY[0x23EE854F0](v7, 4);
  if (!*(a1[11] + 8 * a2))
  {
    v12 = v9;
    v13 = MEMORY[0x23EE85200]();
    *(a1[11] + 8 * a2) = allocateVariable(a1, v12, v13);
    if (a3)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

LABEL_5:
  v10 = *(a1[11] + 8 * a2);

  return LLVMBuildLoad();
}

uint64_t gleLLVMApplySwizzle(void *a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3 || a4 != 1 || a5 != 2 || a6 != 3)
  {
    if (!a1[19])
    {
      v8 = a1[2];
      a1[19] = LLVMInt32TypeInContext();
    }

    LLVMConstInt();
    LLVMConstInt();
    LLVMConstInt();
    LLVMConstInt();
    LLVMConstVector();
    v9 = a1[4];
    a2 = LLVMBuildShuffleVector();
  }

  v10 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t gleLLVMFixPrecision(uint64_t a1, int a2, uint64_t *a3, int a4)
{
  v8 = *(a1 + 16);
  result = LLVMFloatTypeInContext();
  if (a2 != 1)
  {
    v10 = *(a1 + 16);
    result = LLVMHalfTypeInContext();
  }

  v11 = result;
  if (a4 >= 1)
  {
    v12 = a4;
    do
    {
      v13 = *a3;
      v14 = LLVMTypeOf();
      result = LLVMGetTypeKind();
      v15 = v11;
      if (result == 13)
      {
        v16 = LLVMGetVectorSize();
        result = MEMORY[0x23EE854F0](v11, v16);
        v15 = result;
      }

      if (v14 != v15)
      {
        v17 = *(a1 + 32);
        v18 = *a3;
        result = LLVMBuildFPCast();
        *a3 = result;
      }

      ++a3;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t gleStateProgram_BuildTextureOperation(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a4;
  v93 = *MEMORY[0x277D85DE8];
  v8 = a2[(*a2 & 7) + 1] & 0x1FLL;
  v9 = (a2[(*a2 & 7) + 1] & 0x1F) != 0;
  v10 = (*a2 >> 6);
  v79 = a2[(*a2 & 7) + 1];
  v81 = v10;
  v83 = a2 + 2;
  v84 = a2;
  if (v10 != 69 && v10 != 67)
  {
    v9 = 0;
  }

  v11 = *(a1 + 32);
  v12 = 1;
  v88 = v8;
  if (v8 <= 4)
  {
    if (v8 < 2)
    {
      v13 = 0;
      v14 = 3;
      goto LABEL_12;
    }

    if ((v8 - 2) >= 2)
    {
      v80 = 0;
      v13 = 1;
      v14 = 1;
      goto LABEL_13;
    }

LABEL_10:
    v13 = 0;
    v14 = 2;
LABEL_12:
    v80 = 1;
    goto LABEL_13;
  }

  if ((v8 - 5) < 2)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v13 = 1;
  v14 = 1;
  v80 = 0;
  v12 = v8 != 7;
LABEL_13:
  v86 = v12;
  v82 = *(a1 + 216);
  if (v9)
  {
    if (!*(a1 + 152))
    {
      v15 = *(a1 + 16);
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    LLVMConstInt();
    Element = LLVMBuildExtractElement();
  }

  else
  {
    Element = 0;
  }

  v16 = *(a1 + 16);
  v17 = LLVMFloatTypeInContext();
  v85 = a5;
  v78 = v14;
  if (v13)
  {
    if (!*(a1 + 152))
    {
      v18 = *(a1 + 16);
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    LLVMConstInt();
    inserted = LLVMBuildExtractElement();
    if (v9)
    {
      inserted = LLVMBuildFDiv();
    }
  }

  else
  {
    v20 = MEMORY[0x23EE854F0](v17, v14);
    inserted = a3;
    if (v20 != LLVMTypeOf() || v9)
    {
      MEMORY[0x23EE85370](v20);
      v21 = 0;
      v22 = v78;
      do
      {
        if (!*(a1 + 152))
        {
          v23 = *(a1 + 16);
          *(a1 + 152) = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildExtractElement();
        if (v9)
        {
          LLVMBuildFDiv();
        }

        inserted = LLVMBuildInsertElement();
        ++v21;
      }

      while (v22 != v21);
    }
  }

  v24 = *(a1 + 216);
  v25 = v86;
  if (v86)
  {
    LODWORD(v26) = 4;
  }

  else
  {
    LODWORD(v26) = 5;
  }

  if (v86)
  {
    v27 = 8;
  }

  else
  {
    v27 = 10;
  }

  if (!v88)
  {
    v27 -= 2;
  }

  v28 = v27 | 1;
  if (v24)
  {
    v26 = v28;
  }

  else
  {
    v26 = v26;
  }

  v87 = v26;
  v29 = 8 * v26;
  MEMORY[0x28223BE20]();
  v31 = (&v77 - v30);
  bzero(&v77 - v30, v29);
  v32 = (*(a1 + 176) + 40 * (HIDWORD(v83[(*v84 & 7) - 1]) & 0x7F));
  *v31 = *v32;
  v31[1] = v32[1];
  if (v25)
  {
    v31[2] = inserted;
    v33 = 3;
  }

  else
  {
    if (!*(a1 + 152))
    {
      v34 = *(a1 + 16);
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    v31[2] = LLVMConstInt();
    v31[3] = inserted;
    if (!*(a1 + 152))
    {
      v35 = *(a1 + 16);
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    LLVMConstInt();
    v36 = LLVMBuildExtractElement();
    if (v9)
    {
      v36 = LLVMBuildFDiv();
    }

    v31[4] = v36;
    v24 = *(a1 + 216);
    v33 = 5;
  }

  v37 = v87;
  v38 = *(a1 + 16);
  if (v24)
  {
    LLVMInt1TypeInContext();
    v39 = *(a1 + 152);
    if (!v39)
    {
      v40 = *(a1 + 16);
      v39 = LLVMInt32TypeInContext();
      *(a1 + 152) = v39;
    }

    v41 = v88;
    if (v80)
    {
      v39 = MEMORY[0x23EE854F0](v39, v78);
    }

    if (v41)
    {
      v42 = &v31[v33];
      *v42 = LLVMConstInt();
      v33 += 2;
      v42[1] = MEMORY[0x23EE85200](v39);
    }

    v37 = v87;
    v43 = v81;
    v44 = &v31[v33];
    *v44 = LLVMConstInt();
    if ((v43 - 68) > 2)
    {
      v48 = *(a1 + 16);
      LLVMFloatTypeInContext();
      v49 = llvm::ConstantFP::get();
      v46 = v86;
    }

    else
    {
      v45 = *(a1 + 152);
      v46 = v86;
      if (v77)
      {
        if (!v45)
        {
          v47 = *(a1 + 16);
          *(a1 + 152) = LLVMInt32TypeInContext();
        }
      }

      else if (!v45)
      {
        v50 = *(a1 + 16);
        *(a1 + 152) = LLVMInt32TypeInContext();
      }

      LLVMConstInt();
      v49 = LLVMBuildExtractElement();
    }

    v44[1] = v49;
    v51 = *(a1 + 16);
    v52 = LLVMFloatTypeInContext();
    v44[2] = MEMORY[0x23EE85200](v52);
    if (!*(a1 + 152))
    {
      v53 = *(a1 + 16);
      *(a1 + 152) = LLVMInt32TypeInContext();
    }

    v44[3] = LLVMConstInt();
  }

  else
  {
    LLVMFloatTypeInContext();
    v31[v33] = llvm::ConstantFP::get();
    v46 = v86;
  }

  MEMORY[0x28223BE20]();
  v54 = &v77 - ((8 * v37 + 15) & 0xFFFFFFFF0);
  bzero(v54, v29);
  v55 = 0;
  do
  {
    v56 = v31[v55];
    *&v54[v55 * 8] = LLVMTypeOf();
    ++v55;
  }

  while (v37 != v55);
  memset(v92, 0, sizeof(v92));
  v57 = v85;
  if (*(a1 + 216))
  {
    if (v46)
    {
      v58 = "air.sample_";
    }

    else
    {
      v58 = "air.sample_compare_";
    }

    if (v88 >= 0x12)
    {
      abort();
    }

    v59 = (&off_278B4E3D8)[v79 & 0x1F];
    v60 = LLVMGetTypeKind();
    if (v46)
    {
      if (v60 == 2)
      {
        v61 = "v4f32";
      }

      else
      {
        v61 = "v4f16";
      }

      v57 = MEMORY[0x23EE854F0](v57, 4);
    }

    else if (v60 == 2)
    {
      v61 = "f32";
    }

    else
    {
      v61 = "f16";
    }

    snprintf_l(v92, 0x200uLL, 0, "%s%s.%s", v58, v59, v61);
    v63 = v82;
  }

  else
  {
    if (LLVMGetTypeKind() == 2)
    {
      v62 = "read_imagef";
    }

    else
    {
      v62 = "read_imageh";
    }

    v63 = v82;
    if (v46)
    {
      v57 = MEMORY[0x23EE854F0](v57, 4);
    }

    glpMangleNameLLVM(*(a1 + 24), v92, 0x200uLL, v62, v57, v54, 0, v37);
  }

  v64 = *(a1 + 24);
  v65 = LLVMGetNamedFunction();
  if (v63)
  {
    v90 = v57;
    v66 = *(a1 + 16);
    v91 = LLVMInt8TypeInContext();
    v67 = *(a1 + 16);
    LLVMStructTypeInContext();
  }

  LLVMFunctionType();
  if (!v65)
  {
    v68 = *(a1 + 24);
    LLVMAddFunction();
    v69 = *(a1 + 16);
    MEMORY[0x23EE852E0]("readonly", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
    v70 = *(a1 + 16);
    MEMORY[0x23EE852E0]("nounwind", 8);
    LLVMCreateEnumAttribute();
    LLVMAddAttributeAtIndex();
  }

  Value = LLVMBuildCall();
  if (v63)
  {
    Value = LLVMBuildExtractValue();
  }

  if (!v46)
  {
    v72 = *(a1 + 16);
    v73 = LLVMFloatTypeInContext();
    v74 = MEMORY[0x23EE854F0](v73, 4);
    MEMORY[0x23EE85370](v74);
    gleLLVMGetConstantInt32(a1);
    LLVMBuildInsertElement();
    gleLLVMGetConstantInt32(a1);
    LLVMBuildInsertElement();
    gleLLVMGetConstantInt32(a1);
    LLVMBuildInsertElement();
    gleLLVMGetConstantInt32(a1);
    Value = LLVMBuildInsertElement();
  }

  v75 = *MEMORY[0x277D85DE8];
  return Value;
}

uint64_t TestCC_XYZW(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  if ((*(a2 + 8) & 0xELL) != 0)
  {
    readCCValue(a1, *(a2 + 8) & 1);
  }

  v5 = a1[2];
  LLVMInt1TypeInContext();
  LLVMConstInt();
  v6 = 0;
  v7 = (a2 + 8);
  v8 = vld1q_dup_f32(v7);
  v9.i64[0] = 0x300000003;
  v9.i64[1] = 0x300000003;
  v13 = vandq_s8(vshlq_u32(v8, xmmword_23A3010B0), v9);
  do
  {
    v10 = v13.u32[v6];
    TestCC(a1, (*(a2 + 8) >> 1) & 7);
    result = LLVMBuildOr();
    ++v6;
  }

  while (v6 != 4);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t allocateVariable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  LLVMGetInsertBlock();
  v6 = *(a1 + 40);
  LLVMPositionBuilderBefore();
  v7 = LLVMBuildAlloca();
  if (a3)
  {
    LLVMBuildStore();
  }

  LLVMPositionBuilderAtEnd();
  return v7;
}

uint64_t gleLLVMApplyDestMaskAndCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  if (*(a1 + 216))
  {
    LLVMTypeOf();
  }

  if (!*(a1 + 152))
  {
    v7 = *(a1 + 16);
    *(a1 + 152) = LLVMInt32TypeInContext();
  }

  if ((*(a4 + 8) & 0xELL) != 0)
  {
    readCCValue(a1, *(a4 + 8) & 1);
  }

  v8 = (*a4 >> 42) & 1;
  v33 = v8;
  if ((*a4 & 0x20000000000) != 0)
  {
    CCValue = readCCValue(a1, v8);
  }

  else
  {
    CCValue = 0;
  }

  v10 = 0;
  v11 = (a4 + 8);
  v12 = vld1q_dup_f32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14.i64[0] = 0x300000003;
  v14.i64[1] = 0x300000003;
  v37 = vandq_s8(vshlq_u32(v12, xmmword_23A3010B0), v14);
  v38 = vandq_s8(vshlq_u32(v12, xmmword_23A300DC0), v13);
  do
  {
    if (v38.i32[v10])
    {
      LLVMConstInt();
      LLVMBuildExtractElement();
      inserted = LLVMBuildInsertElement();
      if (CCValue)
      {
        v15 = *(a1 + 32);
        v16 = LLVMTypeOf();
        MEMORY[0x23EE85200](v16);
        LLVMTypeOf();
        if (LLVMGetTypeKind() == 2)
        {
          v17 = *(a1 + 32);
          v18 = *(a1 + 16);
          LLVMFloatTypeInContext();
          v36 = LLVMBuildFPCast();
          v19 = LLVMTypeOf();
          v36 = gleStateProgram_BuildOperation(a1, "air.fabs", 1, &v36, v19);
          LLVMTypeOf();
          llvm::ConstantFP::get();
          if (!*(a1 + 152))
          {
            v20 = *(a1 + 16);
            *(a1 + 152) = LLVMInt32TypeInContext();
          }

          v36 = LLVMBuildBitCast();
          LLVMBuildBitCast();
          LLVMBuildICmp();
          LLVMBuildFCmp();
          LLVMBuildFCmp();
          if (!*(a1 + 152))
          {
            v21 = *(a1 + 16);
            *(a1 + 152) = LLVMInt32TypeInContext();
          }

          LLVMConstInt();
          if (!*(a1 + 152))
          {
            v22 = *(a1 + 16);
            *(a1 + 152) = LLVMInt32TypeInContext();
          }

          LLVMConstInt();
          LLVMBuildSelect();
          if (!*(a1 + 152))
          {
            v23 = *(a1 + 16);
            *(a1 + 152) = LLVMInt32TypeInContext();
          }
        }

        else
        {
          LLVMBuildICmp();
          LLVMBuildICmp();
          if (!*(a1 + 152))
          {
            v25 = *(a1 + 16);
            *(a1 + 152) = LLVMInt32TypeInContext();
          }

          LLVMConstInt();
          if (!*(a1 + 152))
          {
            v26 = *(a1 + 16);
            *(a1 + 152) = LLVMInt32TypeInContext();
          }
        }

        LLVMConstInt();
        LLVMBuildSelect();
        if (!*(a1 + 152))
        {
          v27 = *(a1 + 16);
          *(a1 + 152) = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildSelect();
        v24 = LLVMBuildInsertElement();
      }

      else
      {
        v24 = 0;
      }

      v28 = (*(a4 + 8) >> 1) & 7;
      if (v28)
      {
        v29 = v37.u32[v10];
        TestCC(a1, v28);
        a2 = LLVMBuildSelect();
        if (CCValue)
        {
          CCValue = LLVMBuildSelect();
        }

        else
        {
          CCValue = v24;
        }
      }

      else
      {
        CCValue = v24;
        a2 = inserted;
      }
    }

    ++v10;
  }

  while (v10 != 4);
  if ((*(a4 + 5) & 2) != 0)
  {
    v30 = *(a1 + 8 * v33 + 72);
    LLVMBuildStore();
  }

  v31 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t readAddressValue(void *a1, unsigned int a2, int a3)
{
  v6 = a1[4];
  if (!a1[19])
  {
    v7 = a1[2];
    a1[19] = LLVMInt32TypeInContext();
  }

  v8 = MEMORY[0x23EE854F0]();
  if (!*(a1[8] + 8 * a2))
  {
    v11 = v8;
    v12 = MEMORY[0x23EE85200]();
    *(a1[8] + 8 * a2) = allocateVariable(a1, v11, v12);
    if (a3)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

LABEL_5:
  v9 = *(a1[8] + 8 * a2);

  return LLVMBuildLoad();
}

uint64_t gleLLVMVectorExtend(void *a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = LLVMTypeOf();
  if (LLVMGetTypeKind() == 13)
  {
    if (LLVMGetVectorSize() != a3)
    {
      if (!a1[19])
      {
        v7 = a1[2];
        a1[19] = LLVMInt32TypeInContext();
      }

      MEMORY[0x28223BE20]();
      v9 = v18 - v8;
      bzero(v18 - v8, v10);
      if (a3 >= 1)
      {
        v11 = 0;
        do
        {
          *&v9[8 * v11++] = LLVMConstInt();
        }

        while (a3 != v11);
      }

      LLVMConstVector();
      v12 = a1[4];
      a2 = LLVMBuildShuffleVector();
    }

    v13 = *MEMORY[0x277D85DE8];
    return a2;
  }

  else
  {
    v15 = MEMORY[0x23EE854F0](v6, a3);
    MEMORY[0x23EE85370](v15);
    v16 = a1[4];
    gleLLVMGetConstantInt32(a1);
    v17 = *MEMORY[0x277D85DE8];

    return LLVMBuildInsertElement();
  }
}

uint64_t readCCValue(void *a1, unsigned int a2)
{
  v4 = a1[4];
  if (!a1[19])
  {
    v5 = a1[2];
    a1[19] = LLVMInt32TypeInContext();
  }

  v6 = MEMORY[0x23EE854F0]();
  if (!a1[a2 + 9])
  {
    v7 = v6;
    v8 = MEMORY[0x23EE85200]();
    a1[a2 + 9] = allocateVariable(a1, v7, v8);
  }

  return LLVMBuildLoad();
}

uint64_t TestCC(void *a1, int a2)
{
  v4 = a1[4];
  if (!a1[19])
  {
    v5 = a1[2];
    a1[19] = LLVMInt32TypeInContext();
  }

  LLVMConstInt();
  LLVMBuildExtractElement();
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        if (!a1[19])
        {
          v8 = a1[2];
          a1[19] = LLVMInt32TypeInContext();
        }

        goto LABEL_28;
      case 2:
        if (!a1[19])
        {
          v13 = a1[2];
          a1[19] = LLVMInt32TypeInContext();
        }

LABEL_33:
        LLVMConstInt();
        LLVMBuildICmp();
        if (!a1[19])
        {
          v14 = a1[2];
          a1[19] = LLVMInt32TypeInContext();
        }

        LLVMConstInt();
        LLVMBuildICmp();

        return LLVMBuildOr();
      case 3:
        if (!a1[19])
        {
          v7 = a1[2];
          a1[19] = LLVMInt32TypeInContext();
        }

        goto LABEL_28;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 != 4)
      {
        if (!a1[19])
        {
          v6 = a1[2];
          a1[19] = LLVMInt32TypeInContext();
        }

LABEL_28:
        LLVMConstInt();

        return LLVMBuildICmp();
      }

      if (!a1[19])
      {
        v11 = a1[2];
        a1[19] = LLVMInt32TypeInContext();
      }

      goto LABEL_33;
    }

    if (a2 == 6)
    {
      if (!a1[19])
      {
        v12 = a1[2];
        a1[19] = LLVMInt32TypeInContext();
      }

      goto LABEL_28;
    }
  }

  v9 = a1[2];
  LLVMInt1TypeInContext();

  return LLVMConstInt();
}

uint64_t gleVStateProgram_AttribToFunction(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  if ((*(a1 + 2033) & 8) != 0)
  {
    v11 = v1[7];
    v12 = *MEMORY[0x277D85DE8];

    return LLVMGetParam();
  }

  else
  {
    if (!v1[18])
    {
      v2 = v1[2];
      MEMORY[0x23EE852E0]("nounwind", 8);
      v13[0] = LLVMCreateEnumAttribute();
      v3 = v1[2];
      MEMORY[0x23EE852E0]("readonly", 8);
      v13[1] = LLVMCreateEnumAttribute();
      v4 = v1[19];
      if (!v4)
      {
        v5 = v1[2];
        v4 = LLVMInt32TypeInContext();
        v1[19] = v4;
      }

      v1[18] = gleLLVMCallFunction(v1, "air.get_vertex_id.i32", v4, 0, 0, v13, 2u);
    }

    v6 = v1[7];
    LLVMGetParam();
    v7 = v1[4];
    LLVMBuildGEP();
    v8 = v1[4];
    result = LLVMBuildLoad();
    v10 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t gleVStateProgram_OutputToFunction(uint64_t a1, int a2, _DWORD *a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 4 * a2 + 1694);
  v8 = *(a1 + 8);
  v9 = v8[19];
  if (!v9)
  {
    v10 = v8[2];
    v9 = LLVMInt32TypeInContext();
    v8[19] = v9;
  }

  if (*(a1 + 2032))
  {
    if (!v8[20])
    {
      v8[20] = MEMORY[0x23EE85370](v8[21]);
    }

    if (v7 > 47)
    {
      if ((v7 - 48) < 2)
      {
        v16 = v8[4];
        goto LABEL_20;
      }
    }

    else if ((v7 - 3) >= 4)
    {
      if (v7 == 1)
      {
        gleStateProgram_TruncateVec4(v8, a4, 2);
      }

      else if (v7 == 2)
      {
        v19 = v8[4];
        LLVMConstInt();
        LLVMBuildExtractElement();
      }
    }

    else
    {
      gleLLVMClampColor(v8, a4);
    }

    v14 = v8[4];
    v15 = v8[20];
LABEL_20:
    v17 = *a3;
    result = LLVMBuildInsertValue();
    v8[20] = result;
    ++*a3;
    goto LABEL_37;
  }

  ++*a3;
  if (v7 > 46)
  {
    if ((v7 - 48) < 2)
    {
      for (i = 0; i != 4; ++i)
      {
        v22 = v8[4];
        LLVMConstInt();
        result = LLVMBuildExtractElement();
        if (((1 << (4 * (v7 == 49) + i)) & (*(a1 + 2032) >> 3) & 0x3F) != 0)
        {
          v24 = v9;
          v25 = 0;
          v25 = LLVMTypeOf();
          LLVMConstInt();
          result = gleLLVMAddVoidFunctionCall(v8, "graphics.vertex.writeClipDistance", 2, &v24);
        }
      }

      goto LABEL_37;
    }

    if (v7 == 47)
    {
      v24 = LLVMTypeOf();
      v11 = "graphics.vertex.writeClipVertex";
      goto LABEL_35;
    }

    if (v7 != 50)
    {
      goto LABEL_7;
    }

LABEL_32:
    v24 = LLVMTypeOf();
    v11 = "graphics.vertex.writePosition";
LABEL_35:
    v12 = v8;
    v13 = 1;
    goto LABEL_36;
  }

  if ((v7 - 3) < 4)
  {
    gleLLVMClampColor(v8, a4);
LABEL_7:
    v24 = v9;
    v25 = v9;
    v26 = LLVMTypeOf();
    LLVMConstInt();
    LLVMConstInt();
    v11 = "graphics.vertex.writeOutput";
    v12 = v8;
    v13 = 3;
LABEL_36:
    result = gleLLVMAddVoidFunctionCall(v12, v11, v13, &v24);
    goto LABEL_37;
  }

  if (!v7)
  {
    goto LABEL_32;
  }

  if (v7 != 2)
  {
    goto LABEL_7;
  }

  v20 = v8[4];
  LLVMConstInt();
  LLVMBuildExtractElement();
  v24 = LLVMTypeOf();
  result = gleLLVMAddVoidFunctionCall(v8, "graphics.vertex.writePointSize", 1, &v24);
  *(a1 + 2032) |= 2u;
LABEL_37:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpVertexStateToLLVMModule(uint64_t a1, uint64_t a2)
{
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  bzero(v8, 0x7E8uLL);
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(v13 + 14) = v4;
  v12 = v4;
  v13[0] = v4;
  v10 = v4;
  v11 = v4;
  v9 = v4;
  memset(&v8[4], 255, 0x754uLL);
  v7[0] = 0;
  v7[1] = 0;
  v14 = 1;
  gleVertexStateToModule(a1, a2, &v15, v7);
  v5 = *(&v16 + 1);
  *(&v16 + 1) = 0;
  gleLLVMDestroyBuildContext(&v15);
  return v5;
}

uint64_t gleVertexStateToModule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 2032) & 0xFFFFFDFF | (((*(a1 + 32) >> 8) & 1) << 9);
  *(a4 + 2032) = v7;
  v8 = (v7 & 0xFFFFFBFF | (((*(a1 + 32) >> 9) & 1) << 10)) ^ 0x400;
  *(a4 + 2032) = v8;
  *(a4 + 2032) = v8 & 0xFFFFF7FF | (((*(a1 + 32) >> 12) & 1) << 11);
  gleLLVMInitBuildContext(a3, a2, "Vertex_State_Program", 1, 48, 0, 48, 51, v43, SHIDWORD(v43));
  *(a3 + 216) = *(a4 + 2032) & 1;
  *(a3 + 220) = (*(a1 + 32) >> 12) & 1;
  *a3 = 0;
  *(a3 + 184) = a4;
  *(a3 + 192) = gleVStateProgram_OutputToFunction;
  *(a3 + 208) = 0;
  if (*(a4 + 2032))
  {
    v10 = gleVStateProgram_AttribToFunction;
  }

  else
  {
    v10 = 0;
  }

  *(a3 + 200) = v10;
  **(a3 + 104) = 0;
  v11 = *(a4 + 2032);
  v12 = v11 & 0xFFFFFE07 | (8 * (HIBYTE(*(a1 + 8)) & 0x3F));
  *(a4 + 2032) = v12;
  *(a4 + 8) = a3;
  *(a4 + 1664) = 4096;
  if (v11)
  {
    *(a4 + 2016) = gleVStateProgram_IgnoreOption;
    gleVStateProgram_AllocateOutputs(a1, a4);
    if ((*(a1 + 1) & 1) == 0)
    {
      gleVStateProgram_GetAttrib(a4, 0);
    }

    v9 = gleVStateProgram_Core(a1, a4);
    v12 = *(a4 + 2032);
    if ((v12 & 1) == 0)
    {
      v15 = **(*a4 + 104);
      if (v15)
      {
        *(v15 + 24) |= 0x4000uLL;
        v12 = *(a4 + 2032);
      }
    }

    v14 = *(a4 + 1996);
    v13 = *(a4 + 2000);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  *(a4 + 2016) = gleVStateProgram_LLVMAddOperation;
  if (v12)
  {
    v13 = *(a4 + 2000) & ~(*(a4 + 2000) >> 31);
    *(a4 + 2036) = v13;
  }

  MEMORY[0x28223BE20](v9);
  v17 = (v44 - v16);
  bzero(v44 - v16, v18);
  MEMORY[0x28223BE20](v19);
  v21 = (v44 - v20);
  bzero(v44 - v20, v22);
  if (v12)
  {
    if (v14 >= 1)
    {
      v23 = (a4 + 22);
      v24 = v17;
      v25 = v14;
      do
      {
        v26 = *v23;
        v23 += 2;
        if (v26 == 7)
        {
          v27 = 3;
        }

        else
        {
          v27 = 7;
        }

        *v24++ = v27;
        --v25;
      }

      while (v25);
    }

    v28 = *(a4 + 2000);
    if (v28 >= 1)
    {
      v29 = (a4 + 1694);
      v30 = v21;
      do
      {
        v32 = *v29;
        v29 += 2;
        v31 = v32;
        v33 = v32 - 48;
        if (v32 == 1)
        {
          v34 = 5;
        }

        else
        {
          v34 = 7;
        }

        if (v31 == 2)
        {
          v35 = 4;
        }

        else
        {
          v35 = v34;
        }

        if (v33 < 2)
        {
          v35 = 7;
        }

        *v30++ = v35;
        --v28;
      }

      while (v28);
    }

    if ((v12 & 0x800) != 0)
    {
      v36 = "#main";
    }

    else
    {
      v36 = "vertexShader";
    }

    gleLLVMBeginMain(a3, v36, v17, v14, v21, v13, 0);
    v37 = *(a3 + 16);
    v44[0] = LLVMMDStringInContext();
    v38 = *(a3 + 16);
    v39 = LLVMMDNodeInContext();
    glpAddNamedMetadataOperand(*(a3 + 24), "air.compile_options", v39);
  }

  else
  {
    gleLLVMBeginMain(a3, "vertexShader", 0, 0, 0, 0, 0);
  }

  if ((*(a4 + 2032) & 1) == 0)
  {
    gleVStateProgram_AllocateOutputs(a1, a4);
  }

  if ((*(a1 + 1) & 1) == 0)
  {
    gleVStateProgram_GetAttrib(a4, 0);
  }

  gleVStateProgram_Core(a1, a4);
  if (*(a4 + 2032) & 1) != 0 || (v40 = **(*a4 + 104)) != 0 && (*(v40 + 24) |= 0x4000uLL, (*(a4 + 2032)))
  {
    gleVStateProgram_GenerateMetadata(a4, v17, v14, v13);
  }

  result = gleLLVMFinishMain(a3, *(a4 + 1998), 0);
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void glpVertexStateToLLVMIR(uint64_t a1)
{
  memset(v12, 0, sizeof(v12));
  bzero(v5, 0x7E8uLL);
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(v10 + 14) = v2;
  v9 = v2;
  v10[0] = v2;
  v7 = v2;
  v8 = v2;
  v6 = v2;
  memset(&v5[4], 255, 0x754uLL);
  v4[0] = 0;
  v4[1] = 0;
  v11 = 1;
  v3 = LLVMContextCreate();
  gleVertexStateToModule(a1, v3, v12, v4);
  createBitCodeStorage();
}

uint64_t gleVStateProgram_AllocateOutputs(uint64_t result, uint64_t a2)
{
  v2 = *result;
  if ((*result & 0x1800) != 0)
  {
    v3 = *(a2 + 2000);
    *(a2 + 1704) = v3;
    *(a2 + 1692 + 4 * v3 + 2) = 3;
    v4 = v3 + 1;
    *(a2 + 2000) = v3 + 1;
    v2 = *result;
    if ((*result & 0x1000000000000) != 0)
    {
      *(a2 + 1708) = v4;
      *(a2 + 1692 + 4 * v4 + 2) = 4;
      *(a2 + 2000) = v3 + 2;
      v2 = *result;
      v5 = 2;
      if ((*result & 0x2000) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = 1;
      if ((v2 & 0x2000) != 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = 0;
    if ((v2 & 0x2000) != 0)
    {
LABEL_9:
      v6 = *(a2 + 2000);
      *(a2 + 1712) = v6;
      *(a2 + 1692 + 4 * v6 + 2) = 5;
      v7 = v6 + 1;
      *(a2 + 2000) = v6 + 1;
      if (*(result + 6))
      {
        *(a2 + 1716) = v7;
        *(a2 + 1692 + 4 * v7 + 2) = 6;
        *(a2 + 2000) = v6 + 2;
        v5 += 2;
      }

      else
      {
        ++v5;
      }

      goto LABEL_12;
    }
  }

  if ((v2 & 0x8000000000000800) == 0x8000000000000800)
  {
    goto LABEL_9;
  }

LABEL_12:
  if ((*(result + 32) & 3) != 0)
  {
    v8 = *(a2 + 2000);
    *(a2 + 1696) = v8;
    v9 = 1;
    *(a2 + 4 * v8 + 1694) = 1;
    *(a2 + 2000) = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(result + 2);
  if (*(result + 2))
  {
    v11 = 0;
    v12 = (a2 + 1720);
    v13 = 7;
    do
    {
      if (v10)
      {
        v14 = *(a2 + 2000);
        *v12 = v14;
        *(a2 + 1692 + 4 * v14 + 2) = v13;
        *(a2 + 2000) = v14 + 1;
        ++v11;
      }

      ++v13;
      v12 += 2;
      v15 = v10 > 1;
      v10 >>= 1;
    }

    while (v15);
  }

  else
  {
    v11 = 0;
  }

  v16 = HIDWORD(*(result + 8));
  if (v16)
  {
    v17 = (a2 + 1752);
    v18 = 15;
    do
    {
      if (v16)
      {
        v19 = *(a2 + 2000);
        *v17 = v19;
        *(a2 + 1692 + 4 * v19 + 2) = v18;
        *(a2 + 2000) = v19 + 1;
        ++v11;
      }

      ++v18;
      v17 += 2;
      v15 = v16 > 1;
      LODWORD(v16) = v16 >> 1;
    }

    while (v15);
  }

  v20 = *(a2 + 2032);
  if ((v20 & 1) == 0)
  {
    v21 = *(a2 + 2000);
    v22 = a2 + 1692;
    *(a2 + 1692) = v21;
    *(a2 + 1692 + 4 * v21 + 2) = 0;
    *(a2 + 1892) = v21 + 1;
    *(a2 + 1692 + 4 * (v21 + 1) + 2) = 50;
    *(a2 + 1700) = v21 + 2;
    *(a2 + 1692 + 4 * (v21 + 2) + 2) = 2;
    v23 = v21 + 3;
    *(a2 + 2000) = v21 + 3;
    if ((*(result + 7) & 0x40) != 0)
    {
      *(a2 + 1880) = v23;
      *(v22 + 4 * v23 + 2) = 47;
      v23 = v21 + 4;
    }

    *(a2 + 1884) = v23;
    *(v22 + 4 * v23 + 2) = 48;
    *(a2 + 1888) = v23 + 1;
    *(v22 + 4 * (v23 + 1) + 2) = 49;
    *(a2 + 2000) = v23 + 2;
    v20 = *(a2 + 2032);
  }

  if ((v20 & 1) == 0)
  {
    return gleLLVMCreateVaryingsMetaData(*(a2 + 8), "graphics.vertexOutputs", v5, v9, v11, (*(result + 32) >> 8) & 1, (*(result + 32) & 0x200) == 0);
  }

  return result;
}

uint64_t gleVStateProgram_Core(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v298 = result;
  if ((*result & 0x200) == 0)
  {
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_3;
    }

LABEL_120:
    memset(v299, 0, 80);
    if ((v3 & 0xFF0000000000) != 0)
    {
      v54 = 0;
      v55 = 48;
      v56 = v298;
      while (1)
      {
        if ((*(v56 + 33) & 4) != 0)
        {
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100001201;
          *(a2 + 16) = 1;
          Attrib = gleVStateProgram_GetAttrib(a2, 7);
          *(a2 + 2002) = 1;
          *(&v299[0] + 1) = 1919172608;
          *&v299[1] = ((v54 & 3) << 9) | (Attrib << 48) | ((v54 & 3) << 11) | ((v54 & 3) << 13) | ((v54 & 3) << 15);
          (*(a2 + 2016))(a2, v299);
          v57 = (*v56 >> 57) & 1;
          v58 = a2;
          v59 = 152;
          v60 = 1;
        }

        else
        {
          v57 = (v3 >> 57) & 1;
          v58 = a2;
          v59 = v55;
          v60 = 0;
        }

        gleVStateProgram_MultMatrix3x3(v58, v59, 23, 23, v60, v57);
        if ((*v56 & 2) != 0)
        {
          if (!v54)
          {
            memset(&v299[2], 0, 48);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            v73 = *(a2 + 1946);
            if (v73 == 0xFFFF)
            {
              v73 = *(a2 + 2004);
              *(a2 + 1946) = v73;
              *(a2 + 2004) = v73 + 1;
            }

            *&v299[1] = (v73 << 48) | 0x19C840;
            v74 = *(a2 + 1944);
            if (v74 == 0xFFFF)
            {
              v74 = *(a2 + 2004);
              *(a2 + 1944) = v74;
              *(a2 + 2004) = v74 + 1;
            }

            v72 = (v74 << 48) | 0x40;
            goto LABEL_148;
          }

          memset(v299 + 8, 0, 72);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v64 = *(a2 + 1946);
          if (v64 == 0xFFFF)
          {
            v64 = *(a2 + 2004);
            *(a2 + 1946) = v64;
            *(a2 + 2004) = v64 + 1;
          }

          *&v299[1] = (v64 << 48) | 0x19C840;
          v65 = *(a2 + 1944);
          if (v65 == 0xFFFF)
          {
            v65 = *(a2 + 2004);
            *(a2 + 1944) = v65;
            *(a2 + 2004) = v65 + 1;
          }

          v63 = ((v54 & 3) << 9) | (v65 << 48) | ((v54 & 3) << 11) | ((v54 & 3) << 13) | ((v54 & 3) << 15) | 0x40;
        }

        else
        {
          if (!v54)
          {
            memset(&v299[2], 0, 48);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            v71 = *(a2 + 1946);
            if (v71 == 0xFFFF)
            {
              v71 = *(a2 + 2004);
              *(a2 + 1946) = v71;
              *(a2 + 2004) = v71 + 1;
            }

            *&v299[1] = (v71 << 48) | 0x19C840;
            v72 = gleVStateProgram_GetAttrib(a2, 4) << 48;
LABEL_148:
            *(&v299[1] + 1) = v72;
            v68 = *(a2 + 1902);
            if (v68 == 0xFFFF)
            {
              v68 = *(a2 + 2004);
              *(a2 + 1902) = v68;
              *(a2 + 2004) = v68 + 1;
            }

LABEL_150:
            v67 = v68 << 48;
            goto LABEL_151;
          }

          memset(v299 + 8, 0, 72);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v62 = *(a2 + 1946);
          if (v62 == 0xFFFF)
          {
            v62 = *(a2 + 2004);
            *(a2 + 1946) = v62;
            *(a2 + 2004) = v62 + 1;
          }

          *&v299[1] = (v62 << 48) | 0x19C840;
          v63 = ((v54 & 3) << 9) | (gleVStateProgram_GetAttrib(a2, 4) << 48) | ((v54 & 3) << 11) | ((v54 & 3) << 13) | ((v54 & 3) << 15);
        }

        *(&v299[1] + 1) = v63;
        v66 = *(a2 + 1902);
        if (v66 == 0xFFFF)
        {
          v68 = *(a2 + 2004);
          v69 = *(a2 + 2004);
          *(a2 + 1902) = v68;
          v70 = v69 + 1;
          *(a2 + 2004) = v70;
          *&v299[2] = (v68 << 48) | 0x19C840;
          if ((v70 & 0x10000) == 0)
          {
            goto LABEL_150;
          }

          v67 = 0;
          *(a2 + 1902) = v70;
          *(a2 + 2004) = 1;
        }

        else
        {
          v67 = v66 << 48;
          *&v299[2] = (v66 << 48) | 0x19C840;
        }

LABEL_151:
        *(&v299[0] + 1) = v67 | 0x72679000;
        result = (*(a2 + 2016))(a2, v299);
        ++v54;
        v56 = v298;
        v3 = *v298;
        v55 += 8;
        if (v54 >= (WORD2(*v298) >> 8))
        {
          goto LABEL_159;
        }
      }
    }

    if ((v3 & 0x10) != 0)
    {
      *(&v299[4] + 1) = 0;
      *(&v299[3] + 8) = 0uLL;
      *(&v299[2] + 8) = 0uLL;
      *(&v299[1] + 8) = 0uLL;
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      *&v299[1] = (gleVStateProgram_GetAttrib(a2, 1) << 48) | 0x19C800;
      v75 = *(a2 + 1902);
      if (v75 == 0xFFFF)
      {
        v75 = *(a2 + 2004);
        *(a2 + 1902) = v75;
        *(a2 + 2004) = v75 + 1;
      }

      *(&v299[0] + 1) = (v75 << 48) | 0x72679000;
      result = (*(a2 + 2016))(a2, v299);
    }

    else
    {
      result = gleVStateProgram_MultMatrix3x3(a2, 48, 1, 1, 0, (v3 & 0x200000000000000) != 0);
    }

    v56 = v298;
LABEL_159:
    if ((*v56 & 0x20) != 0)
    {
      result = gleVStateProgram_NormalizeVector(a2, 1, 1, 23, 23);
    }

    v76 = *(v56 + 24);
    if (!v76)
    {
LABEL_238:
      v3 = *v298;
      if ((*v298 & 0x100) == 0)
      {
        goto LABEL_243;
      }

LABEL_239:
      if ((v3 & 0xFF0000000000) != 0)
      {
        result = gleVStateProgram_MultMatrix4x4(a2, 0, 0, 0, 23, 0, 0, 1, HIBYTE(v3) & 1);
        goto LABEL_243;
      }

      if ((v3 & 4) == 0)
      {
        result = gleVStateProgram_MultMatrix4x4(a2, 0, 8, 0, 23, 1, 0, 1, HIBYTE(v3) & 1);
        goto LABEL_243;
      }

      memset(&v299[1] + 8, 0, 56);
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
      if ((*(v298 + 1) & 0x80) != 0)
      {
        v165 = *(a2 + 1892);
        if (v165 == 0xFFFF)
        {
          v167 = (a2 + 1892);
          v166 = 50;
          goto LABEL_301;
        }
      }

      else
      {
        v165 = *(a2 + 1692);
        if (v165 == 0xFFFF)
        {
          v166 = 0;
          v167 = (a2 + 1692);
LABEL_301:
          v177 = *(a2 + 2000);
          v165 = *(a2 + 2000);
          *v167 = v177;
          *(a2 + 4 * v177 + 1694) = v166;
          *(a2 + 2000) = v177 + 1;
        }
      }

      *(&v299[0] + 1) = ((v165 << 48) | 0x72679000) + 0x2000;
      result = (*(a2 + 2016))(a2, v299);
      goto LABEL_243;
    }

    v77 = HIDWORD(v76) & v76;
    if (!HIDWORD(v76))
    {
LABEL_218:
      v122 = 0;
      v123 = v77 ^ v76;
      v124 = HIDWORD(v76) & v76;
      v125 = v77 ^ HIDWORD(v76);
      do
      {
        v126 = a2 + 2 * v122;
        if (((v123 >> v122) & 0x1010101) != 0)
        {
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v127 = *(a2 + 1902);
          if (v127 == 0xFFFF)
          {
            v127 = *(a2 + 2004);
            *(a2 + 1902) = v127;
            *(a2 + 2004) = v127 + 1;
          }

          *&v299[1] = (v127 << 48) | 0x19C840;
          v128 = *(v126 + 1978);
          if (v128 == 0xFFFF)
          {
            v128 = *(a2 + 2004);
            *(v126 + 1978) = v128;
            *(a2 + 2004) = v128 + 1;
          }

          *(&v299[0] + 1) = ((((v123 >> v122) & 1) << 18) | (v128 << 48) | (v123 >> v122 << 9) & 0x20000 | ((v123 >> v122) & 0x10000) | (v123 >> v122 >> 9) & 0x8000) + 1918898176;
          result = (*(a2 + 2016))(a2, v299);
        }

        if (((v125 >> v122) & 0x1010101) != 0)
        {
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v129 = *(a2 + 1946);
          if (v129 == 0xFFFF)
          {
            v129 = *(a2 + 2004);
            *(a2 + 1946) = v129;
            *(a2 + 2004) = v129 + 1;
          }

          *&v299[1] = (v129 << 48) | 0x19C840;
          v130 = *(v126 + 1978);
          if (v130 == 0xFFFF)
          {
            v130 = *(a2 + 2004);
            *(v126 + 1978) = v130;
            *(a2 + 2004) = v130 + 1;
          }

          *(&v299[0] + 1) = ((((v125 >> v122) & 1) << 18) | (v130 << 48) | (v125 >> v122 << 9) & 0x20000 | ((v125 >> v122) & 0x10000) | (v125 >> v122 >> 9) & 0x8000) + 1918898176;
          result = (*(a2 + 2016))(a2, v299);
        }

        if (((v124 >> v122) & 0x1010101) != 0)
        {
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v131 = *(a2 + 1954);
          if (v131 == 0xFFFF)
          {
            v131 = *(a2 + 2004);
            *(a2 + 1954) = v131;
            *(a2 + 2004) = v131 + 1;
          }

          *&v299[1] = (v131 << 48) | 0x19C840;
          v132 = *(v126 + 1978);
          if (v132 == 0xFFFF)
          {
            v132 = *(a2 + 2004);
            *(v126 + 1978) = v132;
            *(a2 + 2004) = v132 + 1;
          }

          *(&v299[0] + 1) = ((((v124 >> v122) & 1) << 18) | (v132 << 48) | (v124 >> v122 << 9) & 0x20000 | ((v124 >> v122) & 0x10000) | (v124 >> v122 >> 9) & 0x8000) + 1918898176;
          result = (*(a2 + 2016))(a2, v299);
        }

        ++v122;
      }

      while (v122 != 8);
      goto LABEL_238;
    }

    gleVStateProgram_NormalizeVector(a2, 0, 23, 27, 27);
    memset(&v299[2], 0, 48);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
    *(a2 + 16) = 2;
    v78 = *(a2 + 1902);
    if (v78 == 0xFFFF)
    {
      v78 = *(a2 + 2004);
      *(a2 + 1902) = v78;
      *(a2 + 2004) = v78 + 1;
    }

    *&v299[1] = (v78 << 48) | 0x19C840;
    v79 = *(a2 + 1946);
    if (v79 == 0xFFFF)
    {
      v79 = *(a2 + 2004);
      *(a2 + 1946) = v79;
      *(a2 + 2004) = v79 + 1;
    }

    *(&v299[1] + 1) = (v79 << 48) | 0x19C840;
    v80 = *(a2 + 1954);
    if (v80 == 0xFFFF)
    {
      v80 = *(a2 + 2004);
      *(a2 + 1954) = v80;
      *(a2 + 2004) = v80 + 1;
    }

    *(&v299[0] + 1) = (v80 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, v299);
    memset(&v299[1], 0, 64);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
    *(a2 + 16) = 2;
    v81 = *(a2 + 1954);
    if (v81 == 0xFFFF)
    {
      v84 = *(a2 + 2004);
      v85 = *(a2 + 2004);
      *(a2 + 1954) = v84;
      v86 = v85 + 1;
      *(a2 + 2004) = v85 + 1;
      v83 = (v84 << 48) | 0x19C840;
      *&v299[1] = v83;
      if ((v86 & 0x10000) != 0)
      {
        *(a2 + 1954) = v86;
        *(a2 + 2004) = 1;
        v83 = 1689664;
        v87 = 1919389696;
        goto LABEL_175;
      }

      v82 = v84 << 48;
    }

    else
    {
      v82 = v81 << 48;
      v83 = (v81 << 48) | 0x19C840;
      *&v299[1] = v83;
    }

    v87 = v82 | 0x72679000;
LABEL_175:
    *(&v299[1] + 1) = v83;
    *(&v299[0] + 1) = v87;
    (*(a2 + 2016))(a2, v299);
    memset(v299 + 8, 0, 72);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
    *(a2 + 16) = 3;
    v88 = *(a2 + 1954);
    if (v88 == 0xFFFF)
    {
      v88 = *(a2 + 2004);
      *(a2 + 1954) = v88;
      *(a2 + 2004) = v88 + 1;
    }

    *&v299[1] = (v88 << 48) | 0x19C840;
    v89 = *(a2 + 1902);
    if (v89 == 0xFFFF)
    {
      v89 = *(a2 + 2004);
      *(a2 + 1902) = v89;
      *(a2 + 2004) = v89 + 1;
    }

    *(&v299[1] + 1) = ((v89 << 48) | 0x19C840) + 16;
    v90 = *(a2 + 1946);
    if (v90 == 0xFFFF)
    {
      v92 = *(a2 + 2004);
      v93 = *(a2 + 2004);
      *(a2 + 1946) = v92;
      v94 = v93 + 1;
      *(a2 + 2004) = v94;
      *&v299[2] = (v92 << 48) | 0x19C840;
      if ((v94 & 0x10000) != 0)
      {
        v91 = 0;
        *(a2 + 1946) = v94;
        *(a2 + 2004) = 1;
      }

      else
      {
        v91 = v92 << 48;
      }
    }

    else
    {
      v91 = v90 << 48;
      *&v299[2] = (v90 << 48) | 0x19C840;
    }

    *(&v299[0] + 1) = v91 | 0x72679000;
    result = (*(a2 + 2016))(a2, v299);
    if (!v77)
    {
      goto LABEL_218;
    }

    memset(&v299[2], 0, 48);
    v95 = *(a2 + 16);
    *(a2 + 16) = 2;
    *&v299[0] = (8 * (v95 & 7)) | 0x3100011042;
    v96 = *(a2 + 1946);
    if (v96 == 0xFFFF)
    {
      v96 = *(a2 + 2004);
      *(a2 + 1946) = v96;
      *(a2 + 2004) = v96 + 1;
    }

    *&v299[1] = (v96 << 48) | 0x19C840;
    *(&v299[1] + 1) = 2560163840;
    v97 = *(a2 + 1954);
    if (v97 == 0xFFFF)
    {
      v97 = *(a2 + 2004);
      *(a2 + 1954) = v97;
      *(a2 + 2004) = v97 + 1;
    }

    *(&v299[0] + 1) = (v97 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, v299);
    memset(v299 + 8, 0, 72);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
    *(a2 + 16) = 2;
    v98 = *(a2 + 1946);
    if (v98 == 0xFFFF)
    {
      v98 = *(a2 + 2004);
      *(a2 + 1946) = v98;
      *(a2 + 2004) = v98 + 1;
    }

    *&v299[1] = (v98 << 48) | 0x19C840;
    v99 = *(a2 + 1954);
    if (v99 == 0xFFFF)
    {
      v101 = *(a2 + 2004);
      v102 = *(a2 + 2004);
      *(a2 + 1954) = v101;
      v103 = v102 + 1;
      *(a2 + 2004) = v103;
      *(&v299[1] + 1) = (v101 << 48) | 0x19C840;
      if ((v103 & 0x10000) != 0)
      {
        v100 = 0;
        *(a2 + 1954) = v103;
        *(a2 + 2004) = 1;
      }

      else
      {
        v100 = v101 << 48;
      }
    }

    else
    {
      v100 = v99 << 48;
      *(&v299[1] + 1) = (v99 << 48) | 0x19C840;
    }

    *(&v299[0] + 1) = v100 | 0x72679000;
    (*(a2 + 2016))(a2, v299);
    memset(&v299[1], 0, 64);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
    *(a2 + 16) = 2;
    v104 = *(a2 + 1954);
    if (v104 == 0xFFFF)
    {
      v107 = *(a2 + 2004);
      v108 = *(a2 + 2004);
      *(a2 + 1954) = v107;
      v109 = v108 + 1;
      *(a2 + 2004) = v108 + 1;
      v106 = (v107 << 48) | 0x19C840;
      *&v299[1] = v106;
      if ((v109 & 0x10000) != 0)
      {
        *(a2 + 1954) = v109;
        *(a2 + 2004) = 1;
        v106 = 1689664;
        v110 = 1919389696;
LABEL_202:
        *(&v299[1] + 1) = v106;
        *(&v299[0] + 1) = v110;
        (*(a2 + 2016))(a2, v299);
        memset(&v299[1], 0, 64);
        v111 = *(a2 + 16);
        *(a2 + 16) = 1;
        *&v299[0] = (8 * (v111 & 7)) | 0x100100341;
        v112 = *(a2 + 1954);
        if (v112 == 0xFFFF)
        {
          v114 = *(a2 + 2004);
          v115 = *(a2 + 2004);
          *(a2 + 1954) = v114;
          v116 = v115 + 1;
          *(a2 + 2004) = v116;
          *&v299[1] = (v114 << 48) | 0x19C840;
          if ((v116 & 0x10000) != 0)
          {
            v113 = 0;
            *(a2 + 1954) = v116;
            *(a2 + 2004) = 1;
          }

          else
          {
            v113 = v114 << 48;
          }
        }

        else
        {
          v113 = v112 << 48;
          *&v299[1] = (v112 << 48) | 0x19C840;
        }

        *(&v299[0] + 1) = v113 | 0x72679000;
        (*(a2 + 2016))(a2, v299);
        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v117 = *(a2 + 1954);
        if (v117 == 0xFFFF)
        {
          v117 = *(a2 + 2004);
          *(a2 + 1954) = v117;
          *(a2 + 2004) = v117 + 1;
        }

        *&v299[1] = (v117 << 48) | 0x19C840;
        *(&v299[1] + 1) = (gleVStateProgram_GetParam(a2, 351) << 48) | 0x80;
        v118 = *(a2 + 1954);
        if (v118 == 0xFFFF)
        {
          v118 = *(a2 + 2004);
          *(a2 + 1954) = v118;
          *(a2 + 2004) = v118 + 1;
        }

        *(&v299[0] + 1) = (v118 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v299);
        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v119 = *(a2 + 1946);
        if (v119 == 0xFFFF)
        {
          v119 = *(a2 + 2004);
          *(a2 + 1946) = v119;
          *(a2 + 2004) = v119 + 1;
        }

        *&v299[1] = (v119 << 48) | 0x19C840;
        v120 = *(a2 + 1954);
        if (v120 == 0xFFFF)
        {
          v120 = *(a2 + 2004);
          *(a2 + 1954) = v120;
          *(a2 + 2004) = v120 + 1;
        }

        *(&v299[1] + 1) = (v120 << 48) | 0x19C840;
        *&v299[2] = (gleVStateProgram_GetParam(a2, 351) << 48) | 0x80;
        v121 = *(a2 + 1954);
        if (v121 == 0xFFFF)
        {
          v121 = *(a2 + 2004);
          *(a2 + 1954) = v121;
          *(a2 + 2004) = v121 + 1;
        }

        *(&v299[0] + 1) = (v121 << 48) | 0x72679000;
        result = (*(a2 + 2016))(a2, v299);
        goto LABEL_218;
      }

      v105 = v107 << 48;
    }

    else
    {
      v105 = v104 << 48;
      v106 = (v104 << 48) | 0x19C840;
      *&v299[1] = v106;
    }

    v110 = v105 | 0x72679000;
    goto LABEL_202;
  }

  memset(v299, 0, 80);
  v4 = *(result + 16);
  v5 = result;
  if (!v4)
  {
    goto LABEL_27;
  }

  v6 = -32;
  v7 = 989;
  do
  {
    v8 = v4 >> (v7 + 35);
    if ((v8 & 0x1010101) == 0)
    {
      goto LABEL_25;
    }

    if (v8)
    {
      memset(v299 + 8, 0, 72);
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
      *(a2 + 16) = 2;
      *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
      *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v6 + 192) << 48) | 0x19C840) + 64;
      v9 = *(a2 + 2 * v7);
      if (v9 == 0xFFFF)
      {
        v9 = *(a2 + 2004);
        *(a2 + 2 * v7) = v9;
        *(a2 + 2004) = v9 + 1;
      }

      *(&v299[0] + 1) = (v9 << 48) | 0x72641000;
      result = (*(a2 + 2016))(a2, v299);
      if ((v8 & 0x100) == 0)
      {
LABEL_10:
        if ((v8 & 0x10000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

    else if ((v8 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    memset(v299 + 8, 0, 72);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
    *(a2 + 16) = 2;
    *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
    *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v6 + 193) << 48) | 0x19C840) + 64;
    v10 = *(a2 + 2 * v7);
    if (v10 == 0xFFFF)
    {
      v10 = *(a2 + 2004);
      *(a2 + 2 * v7) = v10;
      *(a2 + 2004) = v10 + 1;
    }

    *(&v299[0] + 1) = (v10 << 48) | 0x72621000;
    result = (*(a2 + 2016))(a2, v299);
    if ((v8 & 0x10000) == 0)
    {
LABEL_11:
      if ((v8 & 0x1000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_22:
      memset(v299 + 8, 0, 72);
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
      *(a2 + 16) = 2;
      *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
      *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v6 + 195) << 48) | 0x19C840) + 64;
      v12 = *(a2 + 2 * v7);
      if (v12 == 0xFFFF)
      {
        v12 = *(a2 + 2004);
        *(a2 + 2 * v7) = v12;
        *(a2 + 2004) = v12 + 1;
      }

      *(&v299[0] + 1) = (v12 << 48) | 0x72609000;
      result = (*(a2 + 2016))(a2, v299);
      goto LABEL_25;
    }

LABEL_19:
    memset(v299 + 8, 0, 72);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
    *(a2 + 16) = 2;
    *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
    *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v6 + 194) << 48) | 0x19C840) + 64;
    v11 = *(a2 + 2 * v7);
    if (v11 == 0xFFFF)
    {
      v11 = *(a2 + 2004);
      *(a2 + 2 * v7) = v11;
      *(a2 + 2004) = v11 + 1;
    }

    *(&v299[0] + 1) = (v11 << 48) | 0x72611000;
    result = (*(a2 + 2016))(a2, v299);
    if ((v8 & 0x1000000) != 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    ++v7;
    v6 += 4;
  }

  while (v6);
  v5 = v298;
  v3 = *v298;
LABEL_27:
  if ((v3 & 0xFF0000000000) == 0)
  {
    if ((v3 & 0x40) != 0)
    {
      if ((v3 & 8) == 0)
      {
        result = gleVStateProgram_MultMatrix4x4(a2, 0, 16, 0, 0, 1, 0, 0, HIBYTE(v3) & 1);
        goto LABEL_90;
      }
    }

    else
    {
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_90;
      }

      if ((v3 & 8) == 0)
      {
        memset(&v299[2], 0, 48);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
        *(a2 + 16) = 2;
        *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
        v15 = *(a2 + 348);
        if (v15 == 0xFFFF)
        {
          v16 = *(a2 + 1998);
          v15 = *(a2 + 1998);
          *(a2 + 348) = v16;
          *(a2 + 4 * v16 + 262) = 22;
          *(a2 + 1998) = v16 + 1;
        }

        *(&v299[1] + 1) = ((v15 << 48) | 0x19C840) + 64;
        v17 = *(a2 + 1900);
        if (v17 == 0xFFFF)
        {
          v17 = *(a2 + 2004);
          *(a2 + 1900) = v17;
          *(a2 + 2004) = v17 + 1;
        }

        v18 = (v17 << 48) | 0x72679000;
LABEL_89:
        *(&v299[0] + 1) = v18;
        result = (*(a2 + 2016))(a2, v299);
        goto LABEL_90;
      }
    }

    memset(&v299[1] + 8, 0, 56);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    *&v299[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
    v41 = *(a2 + 1900);
    if (v41 == 0xFFFF)
    {
      v41 = *(a2 + 2004);
      *(a2 + 1900) = v41;
      *(a2 + 2004) = v41 + 1;
    }

    v18 = (v41 << 48) | 0x72679000;
    goto LABEL_89;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_45;
  }

  memset(&v299[2], 0, 48);
  v13 = *(a2 + 16);
  *(a2 + 16) = 2;
  *&v299[0] = (8 * (v13 & 7)) | 0x3100011042;
  *&v299[1] = (gleVStateProgram_GetAttrib(a2, 4) << 48) | 0x19C800;
  if (*(v5 + 5) - 1 > 2)
  {
    v14 = 2182086656;
  }

  else
  {
    v14 = qword_23A301120[(*(v5 + 5) - 1)];
  }

  *(&v299[1] + 1) = v14;
  v19 = *(a2 + 1944);
  if (v19 == 0xFFFF)
  {
    v19 = *(a2 + 2004);
    *(a2 + 1944) = v19;
    *(a2 + 2004) = v19 + 1;
  }

  *(&v299[0] + 1) = (v19 << 48) | 0x72679000;
  result = (*(a2 + 2016))(a2, v299);
  v3 = *v5;
  if ((*v5 & 0xFF0000000000) != 0)
  {
LABEL_45:
    v20 = 0;
    v21 = 16;
    do
    {
      if ((*(v5 + 33) & 4) != 0)
      {
        memset(&v299[1] + 8, 0, 56);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100001201;
        *(a2 + 16) = 1;
        v22 = gleVStateProgram_GetAttrib(a2, 7);
        *(a2 + 2002) = 1;
        *(&v299[0] + 1) = 1919172608;
        *&v299[1] = ((v20 & 3) << 9) | (v22 << 48) | ((v20 & 3) << 11) | ((v20 & 3) << 13) | ((v20 & 3) << 15);
        (*(a2 + 2016))(a2, v299);
        gleVStateProgram_MultMatrix4x4(a2, 0, 144, 23, 23, 1, 1, 0, *(v5 + 7) & 1);
      }

      else
      {
        gleVStateProgram_MultMatrix4x4(a2, 0, v21, 23, 23, 1, 0, 0, HIBYTE(v3) & 1);
      }

      if ((*v5 & 2) != 0)
      {
        if (v20 < (WORD2(*v5) >> 8) - 1)
        {
          memset(&v299[1], 0, 64);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000802;
          *(a2 + 16) = 2;
          v25 = *(a2 + 1944);
          if (v25 == 0xFFFF)
          {
            v29 = *(a2 + 2004);
            v30 = *(a2 + 2004);
            *(a2 + 1944) = v29;
            v31 = v30 + 1;
            *(a2 + 2004) = v31;
            *&v299[1] = (v29 << 48) | 0x19C840;
            if ((v31 & 0x10000) != 0)
            {
              v26 = 0;
              *(a2 + 1944) = v31;
              *(a2 + 2004) = 1;
            }

            else
            {
              v26 = v29 << 48;
            }
          }

          else
          {
            v26 = v25 << 48;
            *&v299[1] = (v25 << 48) | 0x19C840;
          }

          *(&v299[1] + 1) = v26 | (43520 * (v20 & 3)) | 0x40;
          *(&v299[0] + 1) = v26 + 1918898176;
          if (*(v5 + 5) - 2 <= 2)
          {
            *(&v299[0] + 1) = qword_23A301138[(*(v5 + 5) - 2)] | v26;
          }

          (*(a2 + 2016))(a2, v299);
        }

        if (!v20)
        {
          memset(&v299[2], 0, 48);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v39 = *(a2 + 1946);
          if (v39 == 0xFFFF)
          {
            v39 = *(a2 + 2004);
            *(a2 + 1946) = v39;
            *(a2 + 2004) = v39 + 1;
          }

          *&v299[1] = (v39 << 48) | 0x19C840;
          v40 = *(a2 + 1944);
          if (v40 == 0xFFFF)
          {
            v40 = *(a2 + 2004);
            *(a2 + 1944) = v40;
            *(a2 + 2004) = v40 + 1;
          }

          v28 = (v40 << 48) | 0x40;
          goto LABEL_81;
        }

        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v32 = *(a2 + 1946);
        if (v32 == 0xFFFF)
        {
          v32 = *(a2 + 2004);
          *(a2 + 1946) = v32;
          *(a2 + 2004) = v32 + 1;
        }

        *&v299[1] = (v32 << 48) | 0x19C840;
        v33 = *(a2 + 1944);
        if (v33 == 0xFFFF)
        {
          v33 = *(a2 + 2004);
          *(a2 + 1944) = v33;
          *(a2 + 2004) = v33 + 1;
        }

        v24 = ((v20 & 3) << 9) | (v33 << 48) | ((v20 & 3) << 11) | ((v20 & 3) << 13) | ((v20 & 3) << 15) | 0x40;
      }

      else
      {
        if (!v20)
        {
          memset(&v299[2], 0, 48);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v27 = *(a2 + 1946);
          if (v27 == 0xFFFF)
          {
            v27 = *(a2 + 2004);
            *(a2 + 1946) = v27;
            *(a2 + 2004) = v27 + 1;
          }

          *&v299[1] = (v27 << 48) | 0x19C840;
          v28 = gleVStateProgram_GetAttrib(a2, 4) << 48;
LABEL_81:
          *(&v299[1] + 1) = v28;
          v36 = *(a2 + 1900);
          if (v36 == 0xFFFF)
          {
            v36 = *(a2 + 2004);
            *(a2 + 1900) = v36;
            *(a2 + 2004) = v36 + 1;
          }

LABEL_83:
          v35 = v36 << 48;
          goto LABEL_84;
        }

        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v23 = *(a2 + 1946);
        if (v23 == 0xFFFF)
        {
          v23 = *(a2 + 2004);
          *(a2 + 1946) = v23;
          *(a2 + 2004) = v23 + 1;
        }

        *&v299[1] = (v23 << 48) | 0x19C840;
        v24 = ((v20 & 3) << 9) | (gleVStateProgram_GetAttrib(a2, 4) << 48) | ((v20 & 3) << 11) | ((v20 & 3) << 13) | ((v20 & 3) << 15);
      }

      *(&v299[1] + 1) = v24;
      v34 = *(a2 + 1900);
      if (v34 == 0xFFFF)
      {
        v36 = *(a2 + 2004);
        v37 = *(a2 + 2004);
        *(a2 + 1900) = v36;
        v38 = v37 + 1;
        *(a2 + 2004) = v38;
        *&v299[2] = (v36 << 48) | 0x19C840;
        if ((v38 & 0x10000) == 0)
        {
          goto LABEL_83;
        }

        v35 = 0;
        *(a2 + 1900) = v38;
        *(a2 + 2004) = 1;
      }

      else
      {
        v35 = v34 << 48;
        *&v299[2] = (v34 << 48) | 0x19C840;
      }

LABEL_84:
      *(&v299[0] + 1) = v35 | 0x72679000;
      result = (*(a2 + 2016))(a2, v299);
      ++v20;
      v3 = *v5;
      v21 += 8;
    }

    while (v20 < (WORD2(*v5) >> 8));
  }

LABEL_90:
  v42 = HIDWORD(*(v5 + 16));
  if (v42)
  {
    v43 = -32;
    v44 = 989;
    while (2)
    {
      v45 = v42 >> (v44 + 35);
      if ((v45 & 0x1010101) == 0)
      {
        goto LABEL_118;
      }

      if (v45)
      {
        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
        *(a2 + 16) = 2;
        v46 = *(a2 + 1900);
        if (v46 == 0xFFFF)
        {
          v46 = *(a2 + 2004);
          *(a2 + 1900) = v46;
          *(a2 + 2004) = v46 + 1;
        }

        *&v299[1] = (v46 << 48) | 0x19C840;
        *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v43 + 224) << 48) | 0x19C840) + 64;
        v47 = *(a2 + 2 * v44);
        if (v47 == 0xFFFF)
        {
          v47 = *(a2 + 2004);
          *(a2 + 2 * v44) = v47;
          *(a2 + 2004) = v47 + 1;
        }

        *(&v299[0] + 1) = (v47 << 48) | 0x72641000;
        result = (*(a2 + 2016))(a2, v299);
        if ((v45 & 0x100) == 0)
        {
          goto LABEL_95;
        }
      }

      else if ((v45 & 0x100) == 0)
      {
LABEL_95:
        if ((v45 & 0x10000) != 0)
        {
          goto LABEL_108;
        }

        goto LABEL_96;
      }

      memset(v299 + 8, 0, 72);
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
      *(a2 + 16) = 2;
      v48 = *(a2 + 1900);
      if (v48 == 0xFFFF)
      {
        v48 = *(a2 + 2004);
        *(a2 + 1900) = v48;
        *(a2 + 2004) = v48 + 1;
      }

      *&v299[1] = (v48 << 48) | 0x19C840;
      *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v43 + 225) << 48) | 0x19C840) + 64;
      v49 = *(a2 + 2 * v44);
      if (v49 == 0xFFFF)
      {
        v49 = *(a2 + 2004);
        *(a2 + 2 * v44) = v49;
        *(a2 + 2004) = v49 + 1;
      }

      *(&v299[0] + 1) = (v49 << 48) | 0x72621000;
      result = (*(a2 + 2016))(a2, v299);
      if ((v45 & 0x10000) != 0)
      {
LABEL_108:
        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
        *(a2 + 16) = 2;
        v50 = *(a2 + 1900);
        if (v50 == 0xFFFF)
        {
          v50 = *(a2 + 2004);
          *(a2 + 1900) = v50;
          *(a2 + 2004) = v50 + 1;
        }

        *&v299[1] = (v50 << 48) | 0x19C840;
        *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v43 + 226) << 48) | 0x19C840) + 64;
        v51 = *(a2 + 2 * v44);
        if (v51 == 0xFFFF)
        {
          v51 = *(a2 + 2004);
          *(a2 + 2 * v44) = v51;
          *(a2 + 2004) = v51 + 1;
        }

        *(&v299[0] + 1) = (v51 << 48) | 0x72611000;
        result = (*(a2 + 2016))(a2, v299);
        if ((v45 & 0x1000000) == 0)
        {
          goto LABEL_118;
        }

LABEL_113:
        memset(v299 + 8, 0, 72);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
        *(a2 + 16) = 2;
        v52 = *(a2 + 1900);
        if (v52 == 0xFFFF)
        {
          v52 = *(a2 + 2004);
          *(a2 + 1900) = v52;
          *(a2 + 2004) = v52 + 1;
        }

        *&v299[1] = (v52 << 48) | 0x19C840;
        *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v43 + 227) << 48) | 0x19C840) + 64;
        v53 = *(a2 + 2 * v44);
        if (v53 == 0xFFFF)
        {
          v53 = *(a2 + 2004);
          *(a2 + 2 * v44) = v53;
          *(a2 + 2004) = v53 + 1;
        }

        *(&v299[0] + 1) = (v53 << 48) | 0x72609000;
        result = (*(a2 + 2016))(a2, v299);
        goto LABEL_118;
      }

LABEL_96:
      if ((v45 & 0x1000000) != 0)
      {
        goto LABEL_113;
      }

LABEL_118:
      ++v44;
      v43 += 4;
      if (!v43)
      {
        break;
      }

      continue;
    }
  }

  v3 = *v298;
  if ((*v298 & 0x400) != 0)
  {
    goto LABEL_120;
  }

LABEL_3:
  if ((v3 & 0x100) != 0)
  {
    goto LABEL_239;
  }

LABEL_243:
  v133 = *v298;
  if ((*v298 & 0x1000) != 0)
  {
    memset(&v299[1] + 8, 0, 56);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    *&v299[1] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
    v134 = a2 + 1692;
    v135 = *(a2 + 1704);
    if (v135 == 0xFFFF)
    {
      v136 = *(a2 + 2000);
      v135 = *(a2 + 2000);
      *(a2 + 1704) = v136;
      *(v134 + 4 * v136 + 2) = 3;
      *(a2 + 2000) = v136 + 1;
    }

    *(&v299[0] + 1) = ((v135 << 48) | 0x72679000) + 0x2000;
    result = (*(a2 + 2016))(a2, v299);
    v133 = *v298;
    if ((*v298 & 0x1000000000000) != 0)
    {
      memset(&v299[1] + 8, 0, 56);
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      *&v299[1] = (gleVStateProgram_GetAttrib(a2, 2) << 48) | 0x19C800;
      v137 = *(a2 + 1708);
      if (v137 == 0xFFFF)
      {
        v138 = *(a2 + 2000);
        v137 = *(a2 + 2000);
        *(a2 + 1708) = v138;
        *(v134 + 4 * v138 + 2) = 4;
        *(a2 + 2000) = v138 + 1;
      }

      *(&v299[0] + 1) = ((v137 << 48) | 0x72679000) + 0x2000;
      result = (*(a2 + 2016))(a2, v299);
      v133 = *v298;
    }

    if ((v133 & 0x2000) == 0)
    {
LABEL_245:
      if ((v133 & 0x4000) == 0)
      {
        goto LABEL_481;
      }

LABEL_261:
      v144 = *(v298 + 32);
      if ((v144 & 0x40) == 0 && (~*(v298 + 8) & 0xC0000000) != 0)
      {
LABEL_277:
        if ((v144 & 0x40) != 0)
        {
          memset(v299 + 8, 0, 72);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v161 = *(a2 + 1962);
          if (v161 == 0xFFFF)
          {
            v161 = *(a2 + 2004);
            *(a2 + 1962) = v161;
            *(a2 + 2004) = v161 + 1;
          }

          *&v299[1] = (v161 << 48) | 0x19C840;
          v162 = a2 + 260;
          v163 = *(a2 + 1648);
          if (v163 == 0xFFFF)
          {
            v168 = *(a2 + 1998);
            v169 = *(a2 + 1998);
            *(a2 + 1648) = v168;
            *(v162 + 4 * v168 + 2) = 347;
            v170 = v169 + 1;
            *(a2 + 1998) = v170;
            *(&v299[1] + 1) = (v168 << 48) | 0x15480;
            if ((v170 & 0x10000) != 0)
            {
              v164 = 0;
              *(a2 + 1648) = v170;
              *(v162 + 4 * v170 + 2) = 347;
              *(a2 + 1998) = 1;
            }

            else
            {
              v164 = v168 << 48;
            }
          }

          else
          {
            v164 = v163 << 48;
            *(&v299[1] + 1) = (v163 << 48) | 0x15480;
          }

          *&v299[2] = v164 | 0xAA80;
          v178 = *(a2 + 1954);
          if (v178 == 0xFFFF)
          {
            v178 = *(a2 + 2004);
            *(a2 + 1954) = v178;
            *(a2 + 2004) = v178 + 1;
          }

          *(&v299[0] + 1) = (v178 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, v299);
          memset(v299 + 8, 0, 72);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v179 = *(a2 + 1962);
          if (v179 == 0xFFFF)
          {
            v179 = *(a2 + 2004);
            *(a2 + 1962) = v179;
            *(a2 + 2004) = v179 + 1;
          }

          *&v299[1] = (v179 << 48) | 0x19C840;
          v180 = *(a2 + 1954);
          if (v180 == 0xFFFF)
          {
            v180 = *(a2 + 2004);
            *(a2 + 1954) = v180;
            *(a2 + 2004) = v180 + 1;
          }

          *(&v299[1] + 1) = (v180 << 48) | 0x19C840;
          v181 = *(a2 + 1648);
          if (v181 == 0xFFFF)
          {
            v182 = *(a2 + 1998);
            v181 = *(a2 + 1998);
            *(a2 + 1648) = v182;
            *(v162 + 4 * v182 + 2) = 347;
            *(a2 + 1998) = v182 + 1;
            v180 = *(a2 + 1954);
          }

          *&v299[2] = ((v181 << 48) | 0x19C840) + 64;
          if (v180 == 0xFFFF)
          {
            v180 = *(a2 + 2004);
            *(a2 + 1954) = v180;
            *(a2 + 2004) = v180 + 1;
          }

          *(&v299[0] + 1) = (v180 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, v299);
          memset(&v299[1] + 8, 0, 56);
          v183 = 8 * (*(a2 + 16) & 7);
          *(a2 + 16) = 1;
          *&v299[0] = v183 | 0x100100341;
          v184 = *(a2 + 1954);
          if (v184 == 0xFFFF)
          {
            v184 = *(a2 + 2004);
            *(a2 + 1954) = v184;
            *(a2 + 2004) = v184 + 1;
          }

          *&v299[1] = (v184 << 48) | 0x19C840;
          v185 = *(a2 + 1946);
          if (v185 == 0xFFFF)
          {
            v185 = *(a2 + 2004);
            *(a2 + 1946) = v185;
            *(a2 + 2004) = v185 + 1;
          }

          *(&v299[0] + 1) = (v185 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, v299);
          memset(v299 + 8, 0, 72);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v186 = *(a2 + 1946);
          if (v186 == 0xFFFF)
          {
            v186 = *(a2 + 2004);
            *(a2 + 1946) = v186;
            *(a2 + 2004) = v186 + 1;
          }

          *&v299[1] = (v186 << 48) | 0x19C840;
          if ((*(v298 + 32) & 0x20) != 0)
          {
            v189 = gleVStateProgram_GetAttrib(a2, 6) << 48;
          }

          else
          {
            v187 = *(a2 + 1652);
            if (v187 == 0xFFFF)
            {
              v188 = *(a2 + 1998);
              v187 = *(a2 + 1998);
              *(a2 + 1652) = v188;
              *(v162 + 4 * v188 + 2) = 348;
              *(a2 + 1998) = v188 + 1;
            }

            v189 = ((v187 << 48) | 0x19C840) + 64;
          }

          *(&v299[1] + 1) = v189;
          v190 = *(a2 + 1946);
          if (v190 == 0xFFFF)
          {
            v190 = *(a2 + 2004);
            *(a2 + 1946) = v190;
            *(a2 + 2004) = v190 + 1;
          }

          *(&v299[0] + 1) = (v190 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, v299);
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
          *(a2 + 16) = 2;
          v191 = *(a2 + 1946);
          if (v191 == 0xFFFF)
          {
            v191 = *(a2 + 2004);
            *(a2 + 1946) = v191;
            *(a2 + 2004) = v191 + 1;
          }

          *&v299[1] = (v191 << 48) | 0x19C840;
          v192 = *(a2 + 1652);
          if (v192 == 0xFFFF)
          {
            v193 = *(a2 + 1998);
            v192 = *(a2 + 1998);
            *(a2 + 1652) = v193;
            *(v162 + 4 * v193 + 2) = 348;
            *(a2 + 1998) = v193 + 1;
            v191 = *(a2 + 1946);
          }

          *(&v299[1] + 1) = (v192 << 48) | 0xAA80;
          if (v191 == 0xFFFF)
          {
            v191 = *(a2 + 2004);
            *(a2 + 1946) = v191;
            *(a2 + 2004) = v191 + 1;
          }

          *(&v299[0] + 1) = (v191 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, v299);
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B02;
          *(a2 + 16) = 2;
          v194 = *(a2 + 1946);
          if (v194 == 0xFFFF)
          {
            v194 = *(a2 + 2004);
            *(a2 + 1946) = v194;
            *(a2 + 2004) = v194 + 1;
          }

          *&v299[1] = (v194 << 48) | 0x19C840;
          v195 = *(a2 + 1652);
          if (v195 == 0xFFFF)
          {
            v196 = *(a2 + 1998);
            v195 = *(a2 + 1998);
            *(a2 + 1652) = v196;
            *(v162 + 4 * v196 + 2) = 348;
            *(a2 + 1998) = v196 + 1;
          }

          *(&v299[1] + 1) = (v195 << 48) | 0x15480;
        }

        else
        {
          if ((v144 & 0x80) == 0)
          {
            goto LABEL_354;
          }

          if ((v144 & 0x800) != 0)
          {
            memset(v299 + 8, 0, 72);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
            *(a2 + 16) = 2;
            if ((*(v298 + 32) & 0x20) != 0)
            {
              v176 = gleVStateProgram_GetAttrib(a2, 6) << 48;
            }

            else
            {
              v174 = *(a2 + 1652);
              if (v174 == 0xFFFF)
              {
                v175 = *(a2 + 1998);
                v174 = *(a2 + 1998);
                *(a2 + 1652) = v175;
                *(a2 + 4 * v175 + 262) = 348;
                *(a2 + 1998) = v175 + 1;
              }

              v176 = ((v174 << 48) | 0x19C840) + 64;
            }

            *&v299[1] = v176;
            *(&v299[1] + 1) = (gleVStateProgram_GetParam(a2, 351) << 48) | 0x15480;
            v199 = *(a2 + 1946);
            if (v199 == 0xFFFF)
            {
              v199 = *(a2 + 2004);
              *(a2 + 1946) = v199;
              *(a2 + 2004) = v199 + 1;
            }

            *(&v299[0] + 1) = (v199 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, v299);
            memset(&v299[1] + 8, 0, 56);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
            *(a2 + 16) = 1;
            v200 = *(a2 + 1946);
            if (v200 == 0xFFFF)
            {
              v200 = *(a2 + 2004);
              *(a2 + 1946) = v200;
              *(a2 + 2004) = v200 + 1;
            }

            v160 = (v200 << 48) | 0x19C840;
          }

          else
          {
            memset(&v299[1] + 8, 0, 56);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
            *(a2 + 16) = 1;
            if ((*(v298 + 32) & 0x20) != 0)
            {
              v160 = gleVStateProgram_GetAttrib(a2, 6) << 48;
            }

            else
            {
              v158 = *(a2 + 1652);
              if (v158 == 0xFFFF)
              {
                v159 = *(a2 + 1998);
                v158 = *(a2 + 1998);
                *(a2 + 1652) = v159;
                *(a2 + 4 * v159 + 262) = 348;
                *(a2 + 1998) = v159 + 1;
              }

              v160 = ((v158 << 48) | 0x19C840) + 64;
            }
          }

          *&v299[1] = v160;
        }

        v201 = *(a2 + 1700);
        if (v201 == 0xFFFF)
        {
          v202 = *(a2 + 2000);
          v201 = *(a2 + 2000);
          *(a2 + 1700) = v202;
          *(a2 + 4 * v202 + 1694) = 2;
          *(a2 + 2000) = v202 + 1;
        }

        *(&v299[0] + 1) = (v201 << 48) | 0x72643000;
        result = (*(a2 + 2016))(a2, v299);
        *(a2 + 2032) |= 2u;
        v144 = *(v298 + 32);
LABEL_354:
        if ((v144 & 2) == 0)
        {
          if ((v144 & 1) == 0)
          {
LABEL_457:
            if ((*(v298 + 7) & 0x40) != 0)
            {
              memset(&v299[1] + 8, 0, 56);
              *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              v261 = *(a2 + 1900);
              if (v261 == 0xFFFF)
              {
                v261 = *(a2 + 2004);
                *(a2 + 1900) = v261;
                *(a2 + 2004) = v261 + 1;
              }

              *&v299[1] = (v261 << 48) | 0x19C840;
              v262 = *(a2 + 1880);
              if (v262 == 0xFFFF)
              {
                v263 = *(a2 + 2000);
                v262 = *(a2 + 2000);
                *(a2 + 1880) = v263;
                *(a2 + 4 * v263 + 1694) = 47;
                *(a2 + 2000) = v263 + 1;
              }

              *(&v299[0] + 1) = ((v262 << 48) | 0x72679000) + 0x2000;
              result = (*(a2 + 2016))(a2, v299);
            }

            if ((*(v298 + 11) & 0x3F) != 0)
            {
              if ((*v298 & 0x40) != 0)
              {
                v269 = 0;
                v270 = a2 + 1692;
                do
                {
                  if (((1 << v269) & *(v298 + 11) & 0x3F) != 0)
                  {
                    memset(v299 + 8, 0, 72);
                    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
                    *(a2 + 16) = 2;
                    v271 = *(a2 + 1900);
                    if (v271 == 0xFFFF)
                    {
                      v271 = *(a2 + 2004);
                      *(a2 + 1900) = v271;
                      *(a2 + 2004) = v271 + 1;
                    }

                    *&v299[1] = (v271 << 48) | 0x19C840;
                    *(&v299[1] + 1) = ((gleVStateProgram_GetParam(a2, v269 + 352) << 48) | 0x19C840) + 64;
                    v272 = (v269 >> 2) | 0x30;
                    v273 = (v270 + 4 * v272);
                    v274 = *v273;
                    if (v274 == 0xFFFF)
                    {
                      v275 = *(a2 + 2000);
                      v274 = *(a2 + 2000);
                      *v273 = v275;
                      *(v270 + 4 * v275 + 2) = v272;
                      *(a2 + 2000) = v275 + 1;
                    }

                    v276 = vceqq_s32(vdupq_n_s32(v269 & 3), xmmword_23A300DF0);
                    v277.i64[0] = v276.u32[0];
                    v277.i64[1] = v276.u32[1];
                    v278 = v277;
                    v277.i64[0] = v276.u32[2];
                    v277.i64[1] = v276.u32[3];
                    v279 = vorrq_s8(vandq_s8(v278, xmmword_23A3009F0), vandq_s8(v277, xmmword_23A3009E0));
                    *(&v299[0] + 1) = *&vorr_s8(*v279.i8, *&vextq_s8(v279, v279, 8uLL)) | (v274 << 48) | 0x72603000;
                    result = (*(a2 + 2016))(a2, v299);
                  }

                  ++v269;
                }

                while (v269 != 6);
              }

              else
              {
                v264 = 0;
                v265 = 1;
                do
                {
                  v266 = v265;
                  if ((*(v298 + 11) >> v264))
                  {
                    memset(&v299[1] + 8, 0, 56);
                    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
                    *(a2 + 16) = 1;
                    *&v299[1] = (gleVStateProgram_GetAttrib(a2, 58) << 48) | 0x19C800;
                    v267 = *(a2 + 1884);
                    if (v267 == 0xFFFF)
                    {
                      v268 = *(a2 + 2000);
                      v267 = *(a2 + 2000);
                      *(a2 + 1884) = v268;
                      *(a2 + 1692 + 4 * v268 + 2) = 48;
                      *(a2 + 2000) = v268 + 1;
                    }

                    *(&v299[0] + 1) = ((v267 << 48) | 0x72679000) + 0x2000;
                    result = (*(a2 + 2016))(a2, v299);
                  }

                  v265 = 0;
                  v264 = 1;
                }

                while ((v266 & 1) != 0);
              }
            }

            v133 = *v298;
            goto LABEL_481;
          }

          v203 = *(v298 + 8) >> 30;
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          if (v203 == 3)
          {
            v235 = *(a2 + 1962);
            if (v235 == 0xFFFF)
            {
              v235 = *(a2 + 2004);
              *(a2 + 1962) = v235;
              *(a2 + 2004) = v235 + 1;
            }

            v236 = (v235 << 48) | 0x19C840;
          }

          else
          {
            if (v203 == 1)
            {
              *&v299[1] = gleVStateProgram_GetAttrib(a2, 5) << 48;
              v204 = *(a2 + 1696);
              if (v204 == 0xFFFF)
              {
                v205 = *(a2 + 2000);
                v204 = *(a2 + 2000);
                *(a2 + 1696) = v205;
                *(a2 + 4 * v205 + 1694) = 1;
                *(a2 + 2000) = v205 + 1;
              }

              v206 = 1919168512;
LABEL_447:
              v257 = v206 | (v204 << 48);
LABEL_456:
              *(&v299[0] + 1) = v257;
              result = (*(a2 + 2016))(a2, v299);
              goto LABEL_457;
            }

            v237 = *(a2 + 1900);
            if (v237 == 0xFFFF)
            {
              v237 = *(a2 + 2004);
              *(a2 + 1900) = v237;
              *(a2 + 2004) = v237 + 1;
            }

            v236 = ((v237 << 48) | 0x15480) - 64;
          }

          *&v299[1] = v236;
          v238 = *(a2 + 1696);
          if (v238 == 0xFFFF)
          {
            v239 = *(a2 + 2000);
            v238 = *(a2 + 2000);
            *(a2 + 1696) = v239;
            *(a2 + 4 * v239 + 1694) = 1;
            *(a2 + 2000) = v239 + 1;
          }

          v240 = 1919168512;
LABEL_455:
          v257 = v240 | (v238 << 48);
          goto LABEL_456;
        }

        v207 = *(v298 + 8) >> 30;
        memset(&v299[1] + 8, 0, 56);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        if (v207 == 2)
        {
          v209 = *(a2 + 1900);
          if (v209 == 0xFFFF)
          {
            v209 = *(a2 + 2004);
            *(a2 + 1900) = v209;
            *(a2 + 2004) = v209 + 1;
          }

          v210 = ((v209 << 48) | 0x15480) - 64;
        }

        else
        {
          if (v207 == 1)
          {
            *&v299[1] = gleVStateProgram_GetAttrib(a2, 5) << 48;
            v208 = *(a2 + 1970);
            goto LABEL_371;
          }

          v211 = *(a2 + 1962);
          if (v211 == 0xFFFF)
          {
            v211 = *(a2 + 2004);
            *(a2 + 1962) = v211;
            *(a2 + 2004) = v211 + 1;
          }

          v210 = (v211 << 48) | 0x19C840;
        }

        *&v299[1] = v210;
        v208 = *(a2 + 1970);
LABEL_371:
        if (v208 == 0xFFFF)
        {
          v208 = *(a2 + 2004);
          *(a2 + 1970) = v208;
          *(a2 + 2004) = v208 + 1;
        }

        *(&v299[0] + 1) = (v208 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v299);
        v212 = *(v298 + 32);
        if (v212)
        {
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v213 = *(a2 + 1970);
          if (v213 == 0xFFFF)
          {
            v213 = *(a2 + 2004);
            *(a2 + 1970) = v213;
            *(a2 + 2004) = v213 + 1;
          }

          *&v299[1] = (v213 << 48) | 0x19C840;
          v214 = *(a2 + 1696);
          if (v214 == 0xFFFF)
          {
            v215 = *(a2 + 2000);
            v214 = *(a2 + 2000);
            *(a2 + 1696) = v215;
            *(a2 + 4 * v215 + 1694) = 1;
            *(a2 + 2000) = v215 + 1;
          }

          *(&v299[0] + 1) = (v214 << 48) | 0x72643000;
          (*(a2 + 2016))(a2, v299);
          v212 = *(v298 + 32);
        }

        v216 = (v212 >> 2) & 3;
        if (v216 <= 1)
        {
          if (v216)
          {
            if ((v212 & 0x10) == 0)
            {
              memset(&v299[1] + 8, 0, 56);
              *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000081;
              *(a2 + 16) = 1;
              v217 = *(a2 + 1970);
              if (v217 == 0xFFFF)
              {
                v217 = *(a2 + 2004);
                *(a2 + 1970) = v217;
                *(a2 + 2004) = v217 + 1;
              }

              *&v299[1] = (v217 << 48) | 0x40;
              v218 = *(a2 + 1954);
              if (v218 == 0xFFFF)
              {
                v218 = *(a2 + 2004);
                *(a2 + 1954) = v218;
                *(a2 + 2004) = v218 + 1;
              }

              *(&v299[0] + 1) = (v218 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, v299);
            }

            memset(v299 + 8, 0, 72);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
            *(a2 + 16) = 3;
            if ((*(v298 + 32) & 0x10) != 0)
            {
              v219 = *(a2 + 1970);
              v220 = 64;
              if (v219 == 0xFFFF)
              {
                v221 = (a2 + 1970);
                goto LABEL_417;
              }
            }

            else
            {
              v219 = *(a2 + 1954);
              v220 = 1689664;
              if (v219 == 0xFFFF)
              {
                v221 = (a2 + 1954);
                v220 = 1689664;
LABEL_417:
                v219 = *(a2 + 2004);
                *v221 = v219;
                *(a2 + 2004) = v219 + 1;
              }
            }

            *&v299[1] = v220 | (v219 << 48) | 0x10;
            v241 = a2 + 260;
            v242 = *(a2 + 1656);
            if (v242 == 0xFFFF)
            {
              v243 = *(a2 + 1998);
              v242 = *(a2 + 1998);
              *(a2 + 1656) = v243;
              *(v241 + 4 * v243 + 2) = 349;
              *(a2 + 1998) = v243 + 1;
            }

            *(&v299[1] + 1) = (v242 << 48) | 0x1FE80;
            v244 = *(a2 + 1660);
            if (v244 == 0xFFFF)
            {
              v245 = *(a2 + 1998);
              v244 = *(a2 + 1998);
              *(a2 + 1660) = v245;
              *(v241 + 4 * v245 + 2) = 350;
              *(a2 + 1998) = v245 + 1;
            }

            *&v299[2] = (v244 << 48) | 0x1FE80;
            v246 = *(a2 + 1954);
            if (v246 == 0xFFFF)
            {
              v246 = *(a2 + 2004);
              *(a2 + 1954) = v246;
              *(a2 + 2004) = v246 + 1;
            }

            *(&v299[0] + 1) = (v246 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, v299);
            memset(v299 + 8, 0, 72);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
            *(a2 + 16) = 2;
            v247 = *(a2 + 1954);
            if (v247 == 0xFFFF)
            {
              v247 = *(a2 + 2004);
              *(a2 + 1954) = v247;
              *(a2 + 2004) = v247 + 1;
            }

            *&v299[1] = (v247 << 48) | 0x19C840;
            *(&v299[1] + 1) = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
            v248 = *(a2 + 1954);
            if (v248 == 0xFFFF)
            {
              v248 = *(a2 + 2004);
              *(a2 + 1954) = v248;
              *(a2 + 2004) = v248 + 1;
            }

            *(&v299[0] + 1) = (v248 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, v299);
            memset(v299 + 8, 0, 72);
            *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B02;
            *(a2 + 16) = 2;
            v249 = *(a2 + 1954);
            if (v249 == 0xFFFF)
            {
              v249 = *(a2 + 2004);
              *(a2 + 1954) = v249;
              *(a2 + 2004) = v249 + 1;
            }

            *&v299[1] = (v249 << 48) | 0x19C840;
            *(&v299[1] + 1) = (gleVStateProgram_GetParam(a2, 351) << 48) | 0x15480;
LABEL_444:
            v204 = *(a2 + 1696);
            if (v204 == 0xFFFF)
            {
              v256 = *(a2 + 2000);
              v204 = *(a2 + 2000);
              *(a2 + 1696) = v256;
              *(a2 + 4 * v256 + 1694) = 1;
              *(a2 + 2000) = v256 + 1;
            }

            v206 = 1919037440;
            goto LABEL_447;
          }

LABEL_396:
          memset(&v299[2], 0, 48);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v224 = *(a2 + 1970);
          if (v224 == 0xFFFF)
          {
            v224 = *(a2 + 2004);
            *(a2 + 1970) = v224;
            *(a2 + 2004) = v224 + 1;
          }

          *&v299[1] = (v224 << 48) | 0x40;
          v225 = *(a2 + 1660);
          if (v225 == 0xFFFF)
          {
            v226 = *(a2 + 1998);
            v225 = *(a2 + 1998);
            *(a2 + 1660) = v226;
            *(a2 + 4 * v226 + 262) = 350;
            *(a2 + 1998) = v226 + 1;
          }

          *(&v299[1] + 1) = (v225 << 48) | 0xAA80;
          v227 = *(a2 + 1954);
          if (v227 == 0xFFFF)
          {
            v227 = *(a2 + 2004);
            *(a2 + 1954) = v227;
            *(a2 + 2004) = v227 + 1;
          }

          *(&v299[0] + 1) = (v227 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, v299);
          memset(&v299[1], 0, 64);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v228 = *(a2 + 1954);
          if (v228 == 0xFFFF)
          {
            v231 = *(a2 + 2004);
            v232 = *(a2 + 2004);
            *(a2 + 1954) = v231;
            v233 = v232 + 1;
            *(a2 + 2004) = v232 + 1;
            v230 = (v231 << 48) | 0x19C840;
            *&v299[1] = v230;
            if ((v233 & 0x10000) != 0)
            {
              *(a2 + 1954) = v233;
              *(a2 + 2004) = 1;
              v230 = 1689664;
              v234 = 1919389696;
LABEL_450:
              *(&v299[1] + 1) = v230;
              *(&v299[0] + 1) = v234;
              (*(a2 + 2016))(a2, v299);
              memset(&v299[1] + 8, 0, 56);
              v258 = *(a2 + 16);
              *(a2 + 16) = 1;
              *&v299[0] = (8 * (v258 & 7)) | 0x100000401;
              v259 = *(a2 + 1954);
              if (v259 == 0xFFFF)
              {
                v259 = *(a2 + 2004);
                *(a2 + 1954) = v259;
                *(a2 + 2004) = v259 + 1;
              }

              *&v299[1] = (v259 << 48) | 0x50;
              v238 = *(a2 + 1696);
              if (v238 == 0xFFFF)
              {
                v260 = *(a2 + 2000);
                v238 = *(a2 + 2000);
                *(a2 + 1696) = v260;
                *(a2 + 4 * v260 + 1694) = 1;
                *(a2 + 2000) = v260 + 1;
              }

              v240 = 1919037440;
              goto LABEL_455;
            }

            v229 = v231 << 48;
          }

          else
          {
            v229 = v228 << 48;
            v230 = (v228 << 48) | 0x19C840;
            *&v299[1] = v230;
          }

          v234 = v229 | 0x72679000;
          goto LABEL_450;
        }

        if (v216 != 2)
        {
          goto LABEL_396;
        }

        if ((v212 & 0x10) != 0)
        {
          memset(v299 + 8, 0, 72);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
          *(a2 + 16) = 2;
          v250 = *(a2 + 1970);
          if (v250 == 0xFFFF)
          {
            v250 = *(a2 + 2004);
            *(a2 + 1970) = v250;
            *(a2 + 2004) = v250 + 1;
          }

          *&v299[1] = (v250 << 48) | 0x40;
          *(&v299[1] + 1) = (gleVStateProgram_GetParam(a2, 351) << 48) | 0xAA80;
          v223 = *(a2 + 1954);
          if (v223 != 0xFFFF)
          {
            goto LABEL_435;
          }
        }

        else
        {
          memset(&v299[1] + 8, 0, 56);
          *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000081;
          *(a2 + 16) = 1;
          v222 = *(a2 + 1970);
          if (v222 == 0xFFFF)
          {
            v222 = *(a2 + 2004);
            *(a2 + 1970) = v222;
            *(a2 + 2004) = v222 + 1;
          }

          *&v299[1] = (v222 << 48) | 0x40;
          v223 = *(a2 + 1954);
          if (v223 != 0xFFFF)
          {
            goto LABEL_435;
          }
        }

        v223 = *(a2 + 2004);
        *(a2 + 1954) = v223;
        *(a2 + 2004) = v223 + 1;
LABEL_435:
        *(&v299[0] + 1) = (v223 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v299);
        memset(&v299[2], 0, 48);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v251 = *(a2 + 1954);
        if (v251 == 0xFFFF)
        {
          v251 = *(a2 + 2004);
          *(a2 + 1954) = v251;
          *(a2 + 2004) = v251 + 1;
        }

        *&v299[1] = (v251 << 48) | 0x19C840;
        v252 = *(a2 + 1660);
        if (v252 == 0xFFFF)
        {
          v253 = *(a2 + 1998);
          v252 = *(a2 + 1998);
          *(a2 + 1660) = v253;
          *(a2 + 4 * v253 + 262) = 350;
          *(a2 + 1998) = v253 + 1;
          v251 = *(a2 + 1954);
        }

        *(&v299[1] + 1) = (v252 << 48) | 0x80;
        if (v251 == 0xFFFF)
        {
          v251 = *(a2 + 2004);
          *(a2 + 1954) = v251;
          *(a2 + 2004) = v251 + 1;
        }

        *(&v299[0] + 1) = (v251 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v299);
        memset(&v299[1] + 8, 0, 56);
        v254 = *(a2 + 16);
        *(a2 + 16) = 1;
        *&v299[0] = (8 * (v254 & 7)) | 0x100000401;
        v255 = *(a2 + 1954);
        if (v255 == 0xFFFF)
        {
          v255 = *(a2 + 2004);
          *(a2 + 1954) = v255;
          *(a2 + 2004) = v255 + 1;
        }

        *&v299[1] = (v255 << 48) | 0x50;
        goto LABEL_444;
      }

      memset(&v299[1], 0, 64);
      *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
      *(a2 + 16) = 2;
      v145 = *(a2 + 1900);
      if (v145 == 0xFFFF)
      {
        v147 = *(a2 + 2004);
        v148 = *(a2 + 2004);
        *(a2 + 1900) = v147;
        v149 = v148 + 1;
        *(a2 + 2004) = v149;
        v146 = (v147 << 48) | 0x19C840;
        *&v299[1] = v146;
        if ((v149 & 0x10000) != 0)
        {
          *(a2 + 1900) = v149;
          *(a2 + 2004) = 1;
          v146 = 1689664;
        }
      }

      else
      {
        v146 = (v145 << 48) | 0x19C840;
        *&v299[1] = v146;
      }

      *(&v299[1] + 1) = v146;
      v150 = *(a2 + 1946);
      if (v150 == 0xFFFF)
      {
        v150 = *(a2 + 2004);
        *(a2 + 1946) = v150;
        *(a2 + 2004) = v150 + 1;
      }

      *(&v299[0] + 1) = (v150 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, v299);
      v151 = *v298;
      memset(&v299[1], 0, 64);
      v152 = 8 * (*(a2 + 16) & 7);
      *(a2 + 16) = 1;
      if ((v151 & 0x1000000000000000) != 0)
      {
        *&v299[0] = v152 + 0x100100301;
        v156 = *(a2 + 1946);
        if (v156 == 0xFFFF)
        {
          v156 = *(a2 + 2004);
          *(a2 + 1946) = v156;
          *(a2 + 2004) = v156 + 1;
        }

        *&v299[1] = (v156 << 48) | 0x19C840;
        v157 = *(a2 + 1962);
        v155 = v298;
        if (v157 != 0xFFFF)
        {
          goto LABEL_276;
        }
      }

      else
      {
        *&v299[0] = v152 | 0x100100341;
        v153 = *(a2 + 1946);
        if (v153 == 0xFFFF)
        {
          v171 = *(a2 + 2004);
          v172 = *(a2 + 2004);
          *(a2 + 1946) = v171;
          v173 = v172 + 1;
          *(a2 + 2004) = v173;
          *&v299[1] = (v171 << 48) | 0x19C840;
          v155 = v298;
          if ((v173 & 0x10000) != 0)
          {
            v154 = 0;
            *(a2 + 1946) = v173;
            *(a2 + 2004) = 1;
          }

          else
          {
            v154 = v171 << 48;
          }
        }

        else
        {
          v154 = v153 << 48;
          *&v299[1] = (v153 << 48) | 0x19C840;
          v155 = v298;
        }

        *(&v299[0] + 1) = v154 | 0x72679000;
        (*(a2 + 2016))(a2, v299);
        memset(&v299[1] + 8, 0, 56);
        v197 = 8 * (*(a2 + 16) & 7);
        *(a2 + 16) = 1;
        *&v299[0] = v197 | 0x100100381;
        v198 = *(a2 + 1946);
        if (v198 == 0xFFFF)
        {
          v198 = *(a2 + 2004);
          *(a2 + 1946) = v198;
          *(a2 + 2004) = v198 + 1;
        }

        *&v299[1] = (v198 << 48) | 0x19C840;
        v157 = *(a2 + 1962);
        if (v157 != 0xFFFF)
        {
          goto LABEL_276;
        }
      }

      v157 = *(a2 + 2004);
      *(a2 + 1962) = v157;
      *(a2 + 2004) = v157 + 1;
LABEL_276:
      *(&v299[0] + 1) = (v157 << 48) | 0x72679000;
      result = (*(a2 + 2016))(a2, v299);
      v144 = *(v155 + 32);
      goto LABEL_277;
    }
  }

  else if ((v133 & 0x2000) == 0)
  {
    goto LABEL_245;
  }

  memset(&v299[1] + 8, 0, 56);
  *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
  *(a2 + 16) = 1;
  *&v299[1] = (gleVStateProgram_GetAttrib(a2, 3) << 48) | 0x19C800;
  v139 = a2 + 1692;
  v140 = *(a2 + 1712);
  if (v140 == 0xFFFF)
  {
    v141 = *(a2 + 2000);
    v140 = *(a2 + 2000);
    *(a2 + 1712) = v141;
    *(v139 + 4 * v141 + 2) = 5;
    *(a2 + 2000) = v141 + 1;
  }

  *(&v299[0] + 1) = ((v140 << 48) | 0x72679000) + 0x2000;
  result = (*(a2 + 2016))(a2, v299);
  v133 = *v298;
  if ((*v298 & 0x1000000000000) != 0)
  {
    memset(&v299[1] + 8, 0, 56);
    *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    *&v299[1] = (gleVStateProgram_GetAttrib(a2, 3) << 48) | 0x19C800;
    v142 = *(a2 + 1716);
    if (v142 == 0xFFFF)
    {
      v143 = *(a2 + 2000);
      v142 = *(a2 + 2000);
      *(a2 + 1716) = v143;
      *(v139 + 4 * v143 + 2) = 6;
      *(a2 + 2000) = v143 + 1;
    }

    *(&v299[0] + 1) = ((v142 << 48) | 0x72679000) + 0x2000;
    result = (*(a2 + 2016))(a2, v299);
    v133 = *v298;
  }

  if ((v133 & 0x4000) != 0)
  {
    goto LABEL_261;
  }

LABEL_481:
  v280 = v298;
  if ((v133 & 0x800) != 0)
  {
    result = gleVStateProgram_LightingStage(v298, a2);
    v133 = *v298;
  }

  if ((v133 & 0xFF0000) != 0)
  {
    v281 = BYTE2(v133);
    if (BYTE2(v133))
    {
      v282 = 0;
      v283 = 0;
      v297 = *(v298 + 16) | *(v298 + 24) | ((*(v298 + 24) | *(v298 + 16)) >> 32);
      v284 = a2 + 1978;
      v285 = 80;
      memset(v299, 0, 80);
      do
      {
        if (v281)
        {
          if (((v297 >> v283) & 0x1010101) != 0)
          {
            if (((v297 >> v283) & 0x1010101) != 0x1010101)
            {
              memset(&v299[1] + 8, 0, 56);
              *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              *&v299[1] = (gleVStateProgram_GetAttrib(a2, v283 + 8) << 48) | 0x19C800;
              v286 = *(v284 + 2 * v283);
              if (v286 == 0xFFFF)
              {
                v286 = *(a2 + 2004);
                *(v284 + 2 * v283) = v286;
                *(a2 + 2004) = v286 + 1;
              }

              *(&v299[0] + 1) = ~(v297 >> v283 << 18) & 0x40000 | (v286 << 48) | ~(v297 >> v283 << 9) & 0x20000 | (~(v297 >> v283) & 0x10000) | ~(v297 >> v283 >> 9) & 0x8000 | 0x72601000;
              (*(a2 + 2016))(a2, v299);
            }

            if (((1 << v283) & BYTE3(*v298)) != 0)
            {
              memset(&v299[1] + 8, 0, 56);
              *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              v287 = *(v284 + 2 * v283);
              if (v287 == 0xFFFF)
              {
                v287 = *(a2 + 2004);
                *(v284 + 2 * v283) = v287;
                *(a2 + 2004) = v287 + 1;
              }

              *&v299[1] = (v287 << 48) | 0x19C840;
              v288 = (v284 + v282 - 258);
              v289 = *v288;
              goto LABEL_498;
            }

            result = gleVStateProgram_MultMatrix4x4(a2, v283 + 39, v285, v283 + 7, 23, 0, 0, 1, HIBYTE(*v298) & 1);
          }

          else
          {
            if (((1 << v283) & BYTE3(*v298)) != 0)
            {
              memset(&v299[1] + 8, 0, 56);
              *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              *&v299[1] = (gleVStateProgram_GetAttrib(a2, v283 + 8) << 48) | 0x19C800;
              v288 = (v284 + v282 - 258);
              v289 = *v288;
LABEL_498:
              if (v289 == 0xFFFF)
              {
                v290 = *(a2 + 2000);
                v289 = *(a2 + 2000);
                *v288 = v290;
                *(a2 + 1692 + 4 * v290 + 2) = v283 + 7;
                *(a2 + 2000) = v290 + 1;
              }

              *(&v299[0] + 1) = ((v289 << 48) | 0x72679000) + 0x2000;
              result = (*(a2 + 2016))(a2, v299);
              goto LABEL_503;
            }

            result = gleVStateProgram_MultMatrix4x4(a2, v283 + 8, v285, v283 + 7, 23, 1, 0, 1, HIBYTE(*v298) & 1);
          }
        }

LABEL_503:
        ++v283;
        v282 += 4;
        v285 += 8;
        v291 = v281 > 1;
        v281 >>= 1;
      }

      while (v291);
    }

    v280 = v298;
  }

  v292 = HIDWORD(*(v280 + 8));
  if (v292)
  {
    v293 = 15;
    v294 = 1752;
    do
    {
      if (v292)
      {
        memset(&v299[1] + 8, 0, 56);
        *&v299[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        *&v299[1] = (gleVStateProgram_GetAttrib(a2, v293 + 1) << 48) | 0x19C800;
        v295 = *(a2 + v294);
        if (v295 == 0xFFFF)
        {
          v296 = *(a2 + 2000);
          v295 = *(a2 + 2000);
          *(a2 + v294) = v296;
          *(a2 + 1692 + 4 * v296 + 2) = v293;
          *(a2 + 2000) = v296 + 1;
        }

        *(&v299[0] + 1) = ((v295 << 48) | 0x72679000) + 0x2000;
        result = (*(a2 + 2016))(a2, v299);
      }

      ++v293;
      v294 += 4;
      v291 = v292 > 1;
      LODWORD(v292) = v292 >> 1;
    }

    while (v291);
  }

  return result;
}

uint64_t gleVStateProgram_GenerateMetadata(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v69[2] = a4;
  v72 = a2;
  v5 = a1;
  v79 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v7 = *(a1 + 2000);
  v8 = *(v6 + 152);
  if (!v8)
  {
    v9 = *(v6 + 16);
    a1 = LLVMInt32TypeInContext();
    v8 = a1;
    *(v6 + 152) = a1;
  }

  v69[1] = (a3 + 1);
  MEMORY[0x28223BE20](a1);
  v11 = v69 - v10;
  bzero(v69 - v10, v12);
  v70 = a3;
  if (a3 >= 1)
  {
    v13 = 0;
    v14 = v70;
    v15 = (v5 + 22);
    v16 = "air.vertex_input";
    v71 = v70;
    do
    {
      if ((*(v5 + 2033) & 8) != 0)
      {
        v20 = gleLLVMGetArgTypeName(*(v72 + v13));
        memset(__str, 0, sizeof(__str));
        snprintf(__str, 0x1FuLL, "attrib%d", v13);
        v77 = 0;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        *&v73 = gleLLVMGetConstantInt32(v6);
        v21 = *(v6 + 16);
        *(&v73 + 1) = LLVMMDStringInContext();
        v22 = *(v6 + 16);
        *&v74 = LLVMMDStringInContext();
        *(&v74 + 1) = LLVMConstInt();
        *&v75 = LLVMConstInt();
        v23 = *(v6 + 16);
        *(&v75 + 1) = LLVMMDStringInContext();
        v24 = v7;
        v25 = v11;
        v26 = v5;
        v27 = v8;
        v28 = v16;
        v29 = *(v6 + 16);
        strlen(v20);
        v14 = v71;
        *&v76 = LLVMMDStringInContext();
        v30 = *(v6 + 16);
        *(&v76 + 1) = LLVMMDStringInContext();
        v31 = *(v6 + 16);
        strlen(__str);
        v16 = v28;
        v8 = v27;
        v5 = v26;
        v11 = v25;
        v7 = v24;
        v77 = LLVMMDStringInContext();
      }

      else
      {
        v73 = 0u;
        v74 = 0u;
        *&v73 = gleLLVMGetConstantInt32(v6);
        v17 = *(v6 + 16);
        *(&v73 + 1) = LLVMMDStringInContext();
        v18 = *(v6 + 16);
        *&v74 = LLVMMDStringInContext();
        gleVStateProgram_VertexCodeFromAttrib(*v15);
        *(&v74 + 1) = LLVMConstInt();
      }

      v19 = *(v6 + 16);
      *&v11[8 * v13++] = LLVMMDNodeInContext();
      v15 += 2;
    }

    while (v14 != v13);
  }

  gleLLVMAddCommonMetaData(v6, &v11[8 * v70], 1, v70, *(v5 + 1998), 0);
  v32 = *(v6 + 16);
  v71 = LLVMMDNodeInContext();
  MEMORY[0x28223BE20](v71);
  v72 = (v69 - v33);
  bzero(v69 - v33, v34);
  if (v7 >= 1)
  {
    v35 = (v5 + 1694);
    v36 = v72;
    while (1)
    {
      v38 = *v35;
      v35 += 2;
      v37 = v38;
      v39 = v38;
      if (v38 <= 46)
      {
        break;
      }

      if ((v37 - 48) >= 2)
      {
        if (v37 == 47)
        {
          *&v73 = 0;
          v53 = *(v6 + 16);
          *&v73 = LLVMMDStringInContext();
          v54 = *(v6 + 16);
          goto LABEL_56;
        }

        v41 = "air.perspective";
        if (v37 != 50)
        {
          goto LABEL_17;
        }

LABEL_29:
        *&v74 = 0;
        v73 = 0uLL;
        v49 = *(v6 + 16);
LABEL_30:
        *&v73 = LLVMMDStringInContext();
        v50 = *(v6 + 16);
        *(&v73 + 1) = LLVMMDStringInContext();
        v51 = *(v6 + 16);
        *&v74 = LLVMMDStringInContext();
        v52 = *(v6 + 16);
        goto LABEL_56;
      }

      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      v44 = *(v6 + 16);
      *&v73 = LLVMMDStringInContext();
      *(&v73 + 1) = LLVMConstInt();
      v45 = *(v6 + 16);
      *&v74 = LLVMMDStringInContext();
      *(&v74 + 1) = LLVMConstInt();
      v46 = *(v6 + 16);
      *&v75 = LLVMMDStringInContext();
      v47 = *(v6 + 16);
      *(&v75 + 1) = LLVMMDStringInContext();
      v48 = *(v6 + 16);
LABEL_56:
      *v36++ = LLVMMDNodeInContext();
      if (!--v7)
      {
        goto LABEL_57;
      }
    }

    if ((v37 - 3) < 4)
    {
      v40 = *(v5 + 2032);
      v41 = "air.flat";
      if ((v40 & 0x200) == 0)
      {
        if ((v40 & 0x400) != 0)
        {
          v41 = "air.perspective";
        }

        else
        {
          v41 = "air.no_perspective";
        }
      }

LABEL_17:
      memset(__str, 0, sizeof(__str));
      if (v39 <= 4u)
      {
        if (v39 != 1)
        {
          if (v39 == 3)
          {
            if ((*(v5 + 2033) & 8) != 0)
            {
              strcpy(__str, "user(front_color)");
            }

            v42 = 2;
            goto LABEL_51;
          }

          if (v39 == 4)
          {
            if ((*(v5 + 2033) & 8) != 0)
            {
              strcpy(__str, "user(back_color)");
            }

            v42 = 1;
            goto LABEL_51;
          }

          goto LABEL_47;
        }

        v42 = 5;
      }

      else
      {
        if (v39 - 7 < 8)
        {
          v42 = v39 + 1;
          if ((*(v5 + 2033) & 8) != 0)
          {
            snprintf(__str, 0x1FuLL, "user(tex_coord%u)", v39 - 7);
          }

          goto LABEL_51;
        }

        if (v39 == 5)
        {
          if ((*(v5 + 2033) & 8) != 0)
          {
            strcpy(__str, "user(sec_front_color)");
          }

          v42 = 3;
          goto LABEL_51;
        }

        if (v39 == 6)
        {
          if ((*(v5 + 2033) & 8) != 0)
          {
            strcpy(__str, "user(sec_back_color)");
          }

          v42 = 4;
          goto LABEL_51;
        }

LABEL_47:
        v42 = v39 - 15;
      }

LABEL_51:
      if ((*(v5 + 2033) & 8) != 0)
      {
        if (!__str[0])
        {
          snprintf(__str, 0x1FuLL, "user(slot%u)", v42);
        }

        v73 = 0u;
        v74 = 0u;
        v60 = *(v6 + 16);
        *&v73 = LLVMMDStringInContext();
        v61 = *(v6 + 16);
        strlen(__str);
        *(&v73 + 1) = LLVMMDStringInContext();
        v62 = *(v6 + 16);
        strlen(v41);
        *&v74 = LLVMMDStringInContext();
        v63 = *(v6 + 16);
        *(&v74 + 1) = LLVMMDStringInContext();
        v64 = *(v6 + 16);
      }

      else
      {
        *&v75 = 0;
        v73 = 0u;
        v74 = 0u;
        v55 = *(v6 + 16);
        *&v73 = LLVMMDStringInContext();
        v56 = *(v6 + 16);
        *(&v73 + 1) = LLVMMDStringInContext();
        *&v74 = LLVMConstInt();
        v57 = *(v6 + 16);
        strlen(v41);
        *(&v74 + 1) = LLVMMDStringInContext();
        v58 = *(v6 + 16);
        *&v75 = LLVMMDStringInContext();
        v59 = *(v6 + 16);
      }

      goto LABEL_56;
    }

    if (!v37)
    {
      goto LABEL_29;
    }

    v41 = "air.perspective";
    if (v37 != 2)
    {
      goto LABEL_17;
    }

    *&v74 = 0;
    v73 = 0uLL;
    v43 = *(v6 + 16);
    goto LABEL_30;
  }

LABEL_57:
  v65 = *(v6 + 16);
  v66 = *(v5 + 2036);
  LLVMMDNodeInContext();
  result = gleLLVMCreateFunctionMetadata(v6, "air.vertex");
  v68 = *MEMORY[0x277D85DE8];
  return result;
}