uint64_t glpLLVMCGRValue(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  SaType = glpASTNodeGetSaType(a2);
  if (glpTypeIsAtomic(SaType))
  {
    glpLLVMAddLineInformation(a1, a2);
    Base = glpRValueNodeGetBase(a2);
    Element = glpLLVMCGNode(a1, Base, 1);
    Offset = glpDerefNodeGetOffset(a2);
    if (Offset)
    {
      v8 = Offset;
      OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
      if (OffsetExpr)
      {
        v10 = glpLLVMCGNode(a1, OffsetExpr, 1);
      }

      else
      {
        v10 = 0;
      }

      v11 = glpASTNodeGetSaType(a2);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v11);
      if (glpOffsetNodeGetPreSwizzlePrimitiveType(v8))
      {
        PrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(v8);
      }

      if (v10)
      {
        if ((*(a1 + 832) & 8) != 0 && glpASTNodeGetKind(Base) == 3 && (glpASTNodeGetSaFlags(Base) & 0x60) != 0)
        {
          if (!glpPointerHashGet(*(a1 + 344), Element))
          {
            v13 = *(a1 + 8);
            LLVMTypeOf();
            v14 = LLVMAddGlobalInAddressSpace();
            LLVMSetGlobalConstant();
            v15 = MEMORY[0x23EE854A0](v14, Element);
            glpPointerHashPut(*(a1 + 344), Element, v14, v15);
          }
        }

        else
        {
          LLVMTypeOf();
          glpBuildAlloca(a1);
          v16 = *(a1 + 16);
          LLVMBuildStore();
        }

        if (!*(a1 + 520))
        {
          v17 = *(a1 + 40);
          *(a1 + 520) = LLVMConstInt();
        }

        LLVMBuildGEP();
        Element = LLVMBuildLoad();
        SaFlags = glpASTNodeGetSaFlags(a2);
        v19 = glpPrecisionIndexFromSAFlags(SaFlags);
        glpPrimitiveTypeToLLVMType(a1, PrimitiveType, v19);
      }

      Swizzle = glpOffsetNodeGetSwizzle(v8);
      Element = glpCGSwizzle(a1, 0, 0, Element, PrimitiveType, Swizzle);
      VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v8);
      if (VectorElementExpr)
      {
        glpLLVMCGNode(a1, VectorElementExpr, 1);
        v22 = *(a1 + 40);
        if (LLVMTypeOf() != v22)
        {
          v23 = *(a1 + 16);
          LLVMBuildIntCast();
        }

        v24 = *(a1 + 16);
        Element = LLVMBuildExtractElement();
      }
    }
  }

  else
  {
    Element = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return Element;
}

unint64_t glpLLVMWriteOutput(uint64_t a1, uint64_t a2)
{
  result = glpWriteOutputNodeGetExtra(a2);
  v4 = result;
  v5 = *(a1 + 320);
  if (v5 == 4)
  {
    if (!*(a1 + 208))
    {
      *(a1 + 208) = MEMORY[0x23EE85370](*(a1 + 200));
    }

    v6 = *(a1 + 692);
    if (v6 >= 1)
    {
      v7 = 0;
      while (*(*(a1 + 696) + 8 * v7) != v4)
      {
        if (v6 == ++v7)
        {
          v8 = *(a1 + 692);
          break;
        }
      }
    }

    v9 = glpLayoutObjectFind(*(v4 + 8), 68);
    glpLLVMGetVariablePointer(a1, v4);
    v10 = glpPrecisionIndexFromSAFlags(*(v4 + 48));
    v11 = glpTypeToLLVMTypeWithUnderlying(a1, *v4, v10, v4);
    MEMORY[0x23EE85440](v11, 0);
    v12 = *(a1 + 16);
    LLVMBuildPointerCast();
    LLVMBuildLoad();
    v13 = glpLayoutObjectFind(*(v4 + 8), 77);
    if (v13 && *(v13 + 4) == 2)
    {
      *(a1 + 760) |= 0x1000u;
    }

    if (*(v9 + 4) != 4)
    {
      goto LABEL_33;
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v4);
    if (glpPrimitiveTypeGetCategory(PrimitiveType) == 2)
    {
      Length = glpPrimitiveVectorGetLength(PrimitiveType);
      if (Length > 3)
      {
LABEL_33:
        v24 = *(a1 + 16);
        v25 = *(a1 + 208);
        result = LLVMBuildInsertValue();
        *(a1 + 208) = result;
        return result;
      }

      v16 = Length;
      if (Length > 1)
      {
        v11 = LLVMGetElementType();
      }
    }

    else
    {
      v16 = 1;
    }

    v17 = MEMORY[0x23EE854F0](v11, 4);
    MEMORY[0x23EE85370](v17);
    if (v16 >= 1)
    {
      v18 = 0;
      v19 = a1 + 520;
      do
      {
        if (v18 > 7)
        {
          v21 = *(a1 + 40);
          LLVMConstInt();
        }

        else if (!*(v19 + 8 * v18))
        {
          v20 = *(a1 + 40);
          *(v19 + 8 * v18) = LLVMConstInt();
        }

        if (v16 != 1)
        {
          v22 = *(a1 + 16);
          LLVMBuildExtractElement();
        }

        v23 = *(a1 + 16);
        LLVMBuildInsertElement();
        ++v18;
      }

      while (v16 != v18);
    }

    goto LABEL_33;
  }

  if (v5 == 2 || !v5)
  {

    return glpLLVMCGWriteVertexOutput(a1, result);
  }

  return result;
}

void glpLLVMAddLineInformation(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v3 = 0uLL;
    v4 = 0;
    glpASTNodeGetLocation(a2, &v3);
    if (v4 != -1)
    {
      glpLLVMSetCurrentLineInner(a1);
    }
  }
}

uint64_t glpPrimitiveTypeToLLVMType(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  Category = glpPrimitiveTypeGetCategory(a2);
  if (Category <= 1)
  {
    if (!Category)
    {
      v12 = *a1;

      return LLVMVoidTypeInContext();
    }

    if (Category != 1)
    {
      goto LABEL_37;
    }

    if (a2 <= 8)
    {
      if (a2 == 1)
      {
        if (a3 == 2)
        {
          return a1[61];
        }

        if (a3 == 1)
        {
          return a1[60];
        }

        return a1[62];
      }

      if (a2 != 5)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (a2 == 9)
      {
        return a1[8];
      }

      if (a2 != 36)
      {
        if (a2 == 62)
        {
          v8 = *a1;

          return LLVMDoubleTypeInContext();
        }

LABEL_26:
        glpPrimitiveVectorGetLength(a2);
        ElementType = glpPrimitiveVectorGetElementType(a2);
        glpPrimitiveTypeToLLVMType(a1, ElementType, a3);

        JUMPOUT(0x23EE854F0);
      }
    }

    if (a3 == 2)
    {
      return a1[58];
    }

    if (a3 == 1)
    {
      return a1[57];
    }

    return a1[59];
  }

  if (Category == 2)
  {
    goto LABEL_26;
  }

  if (Category != 3)
  {
    if (Category == 4)
    {
      return a1[5];
    }

LABEL_37:
    glpPrimitiveTypeToLLVMType_cold_1(a2);
  }

  ColumnType = glpPrimitiveMatrixGetColumnType(a2);
  PrimitiveType = glpGetPrimitiveType(a2);
  v11 = glpABIGetTypeSize(0, PrimitiveType, 0);
  glpTypeSizeGetSize(v11);
  glpPrimitiveTypeToLLVMType(a1, ColumnType, a3);

  return LLVMArrayType();
}

uint64_t glpLLVMBuildConversion(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = a2;
  v11 = glpLLVMGetTypeString(&v16, a4, a5);
  v15 = 0;
  v12 = glpLLVMGetTypeString(&v15, a6, a7);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v18 = 0u;
  snprintf_l(v18, 0x200uLL, 0, "%s%s.%s%s.%s", "air.convert", v15, v12, v16, v11);
  v50[0] = 0x300000001;
  result = glpLLVMCallFunctionInner(a1, v18, a3, &v17, 1u, v50, 2u, "");
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpTypeGetVec4s(uint64_t a1)
{
  v1 = glpABIGetTypeSize(0, a1, 0);

  return glpTypeSizeGetSize(v1);
}

const char *glpLLVMGetTypeString(const char **a1, int a2, int a3)
{
  *a1 = "";
  if (a2 > 61)
  {
    if (a2 > 63)
    {
      if (a2 == 64)
      {
        *a1 = ".f";
        return "v3f64";
      }

      else if (a2 == 65)
      {
        *a1 = ".f";
        return "v4f64";
      }

      else
      {
        return "";
      }
    }

    else
    {
      *a1 = ".f";
      if (a2 == 62)
      {
        return "f64";
      }

      else
      {
        return "v2f64";
      }
    }
  }

  else
  {
    result = "i1";
    switch(a2)
    {
      case 1:
        *a1 = ".f";
        v5 = a3 - 1;
        v6 = "f32";
        v7 = "f16";
        break;
      case 2:
        *a1 = ".f";
        v5 = a3 - 1;
        v6 = "v2f32";
        v7 = "v2f16";
        break;
      case 3:
        *a1 = ".f";
        v5 = a3 - 1;
        v6 = "v3f32";
        v7 = "v3f16";
        break;
      case 4:
        *a1 = ".f";
        v5 = a3 - 1;
        v6 = "v4f32";
        v7 = "v4f16";
        break;
      case 5:
        v8 = ".s";
        goto LABEL_14;
      case 6:
        v9 = ".s";
        goto LABEL_20;
      case 7:
        v10 = ".s";
        goto LABEL_22;
      case 8:
        v11 = ".s";
        goto LABEL_25;
      case 9:
        return result;
      case 10:
        return "v2i1";
      case 11:
        return "v3i1";
      case 12:
        return "v4i1";
      case 36:
        v8 = ".u";
LABEL_14:
        *a1 = v8;
        v5 = a3 - 1;
        v6 = "i32";
        v7 = "i16";
        break;
      case 37:
        v9 = ".u";
LABEL_20:
        *a1 = v9;
        v5 = a3 - 1;
        v6 = "v2i32";
        v7 = "v2i16";
        break;
      case 38:
        v10 = ".u";
LABEL_22:
        *a1 = v10;
        v5 = a3 - 1;
        v6 = "v3i32";
        v7 = "v3i16";
        break;
      case 39:
        v11 = ".u";
LABEL_25:
        *a1 = v11;
        v5 = a3 - 1;
        v6 = "v4i32";
        v7 = "v4i16";
        break;
      default:
        return "";
    }

    if (v5 >= 2)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t glpLLVMAggregateConstant(uint64_t *a1, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = 1;
  v7 = glpLLVMGetMinCommonType(a2, &v19, &v18);
  v8 = glpABIGetTypeSize(0, a2, 0);
  glpTypeSizeGetSize(v8);
  v9 = v19;
  VectorType = glpGetVectorType(v7, v19);
  MEMORY[0x28223BE20](VectorType);
  v12 = &v18 - v11;
  bzero(&v18 - v11, v13);
  v14 = v18;
  glpLLVMCreateConstantVectors(a1, v12, 0, a4, a2, VectorType, v18);
  v15 = glpPrimitiveTypeToLLVMType(a1, v7, v14);
  if (v9 >= 2)
  {
    MEMORY[0x23EE854F0](v15, v9);
  }

  result = LLVMConstArray();
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMPrimitiveConstant(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v14 = glpPrimitiveTypeToLLVMType(a1, a6, a7);
  result = glpPrimitiveTypeGetCategory(a5);
  if ((result - 1) >= 2)
  {
    if (result == 3)
    {
      ColumnType = glpPrimitiveMatrixGetColumnType(a5);
      PrimitiveType = glpGetPrimitiveType(a5);
      v19 = glpABIGetTypeSize(0, PrimitiveType, 0);
      result = glpTypeSizeGetSize(v19);
      if (result)
      {
        v20 = result;
        do
        {
          result = glpLLVMPrimitiveConstant(a1, a2, a3, a4, ColumnType, a6, a7);
          a4 = (a4 + 1);
          a2 += 16;
          --v20;
        }

        while (v20);
      }
    }
  }

  else
  {
    if (glpPrimitiveTypeGetCategory(a6) == 2)
    {
      Length = glpPrimitiveVectorGetLength(a6);
    }

    else
    {
      Length = 1;
    }

    if (glpPrimitiveTypeGetCategory(a5) == 2)
    {
      v21 = glpPrimitiveVectorGetLength(a5);
    }

    else
    {
      v21 = 1;
    }

    if (Length == 1)
    {
      result = glpGetPConst(v14, a6, a2, 0);
      *(a3 + 8 * a4) = result;
    }

    else
    {
      ElementType = glpPrimitiveVectorGetElementType(a6);
      v23 = LLVMGetElementType();
      v31[0] = v31;
      MEMORY[0x28223BE20](v23);
      v25 = v31 - v24;
      bzero(v31 - v24, v26);
      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          *&v25[8 * i] = glpGetPConst(v23, ElementType, a2, i);
        }
      }

      v28 = Length - v21;
      if (Length > v21)
      {
        v29 = &v25[8 * v21];
        do
        {
          *v29 = MEMORY[0x23EE85370](v23);
          v29 += 8;
          --v28;
        }

        while (v28);
      }

      result = LLVMConstVector();
      *(a3 + 8 * a4) = result;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMGetMinCommonType(uint64_t ElementType, int *a2, _DWORD *a3)
{
LABEL_1:
  v5 = ElementType;
  while (1)
  {
    Kind = glpTypeGetKind(v5);
    if (Kind > 2)
    {
      if (Kind == 3)
      {
        ElementType = glpBankTypeGetElementType(v5);
        goto LABEL_1;
      }

      return 0;
    }

    if (Kind != 2)
    {
      break;
    }

    do
    {
      v5 = glpArrayTypeGetElementType(v5);
    }

    while (glpTypeGetKind(v5) == 2);
  }

  if (Kind)
  {
    if (Kind == 1)
    {
      ElementCount = glpAggregateTypeGetElementCount(v5);
      if (ElementCount)
      {
        v8 = ElementCount;
        v9 = 0;
        LODWORD(v10) = 0;
        do
        {
          v11 = glpAggregateTypeGetElementType(v5, v9);
          ElementFlags = glpAggregateTypeGetElementFlags(v5, v9);
          v25 = 0;
          v24 = glpPrecisionIndexFromSAFlags(ElementFlags);
          v13 = glpLLVMGetMinCommonType(v11, &v25, &v24);
          if (v9)
          {
            if (v10 == v13)
            {
              v10 = v10;
            }

            else
            {
              v10 = 5;
            }

            if (!v24 || v24 == 3 || v24 == 2 && *a3 == 1)
            {
              *a3 = v24;
            }

            if (v25 > *a2)
            {
              *a2 = v25;
            }
          }

          else
          {
            v14 = v24;
            *a2 = v25;
            *a3 = v14;
            v10 = v13;
          }

          ++v9;
        }

        while (v8 != v9);
        return v10;
      }
    }

    return 0;
  }

  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v5);
  Category = glpPrimitiveTypeGetCategory(PrimitiveType);
  v10 = 0;
  if (Category > 2)
  {
    if (Category != 3)
    {
      if (Category != 4)
      {
        return v10;
      }

      *a2 = 1;
      *a3 = 3;
      return 5;
    }

    ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
    ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
    Length = glpPrimitiveVectorGetLength(ColumnType);
    if (ScalarType != 62)
    {
      *a2 = Length;
      v19 = ColumnType;
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  if (Category == 1)
  {
    if (PrimitiveType != 62)
    {
      *a2 = 1;
      return PrimitiveType;
    }

    v20 = 2;
    goto LABEL_40;
  }

  if (Category != 2)
  {
    return v10;
  }

  v17 = glpPrimitiveVectorGetElementType(PrimitiveType);
  Length = glpPrimitiveVectorGetLength(PrimitiveType);
  if (v17 == 62)
  {
LABEL_38:
    v20 = 2 * Length;
    if ((2 * Length) >= 4)
    {
      v20 = 4;
    }

LABEL_40:
    *a2 = v20;
    return 5;
  }

  *a2 = Length;
  v19 = PrimitiveType;
LABEL_45:

  return glpPrimitiveVectorGetElementType(v19);
}

uint64_t glpLLVMCreateConstantVectors(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  Kind = glpTypeGetKind(a5);
  if (Kind == 2)
  {
    ElementCount = glpArrayTypeGetElementCount(v9);
    ElementType = glpArrayTypeGetElementType(v9);
    v27 = glpABIGetTypeSize(0, ElementType, 0);
    result = glpTypeSizeGetSize(v27);
    if (ElementCount)
    {
      v28 = result;
      v29 = 16 * result;
      do
      {
        result = glpLLVMCreateConstantVectors(a1, a2, a3, a4, ElementType, a6, a7);
        a3 = (a3 + v28);
        a4 += v29;
        --ElementCount;
      }

      while (ElementCount);
    }
  }

  else if (Kind == 1)
  {
    result = glpAggregateTypeGetElementCount(v9);
    if (result)
    {
      v17 = 0;
      v30 = result;
      do
      {
        v18 = a6;
        v19 = a7;
        v20 = glpAggregateTypeGetElementType(v9, v17);
        v21 = glpABIGetTypeSize(0, v20, 0);
        v22 = v9;
        Size = glpTypeSizeGetSize(v21);
        v24 = v20;
        a7 = v19;
        a6 = v18;
        glpLLVMCreateConstantVectors(a1, a2, a3, a4, v24, v18, a7);
        result = v30;
        a4 += 16 * Size;
        a3 = Size + a3;
        v9 = v22;
        ++v17;
      }

      while (v30 != v17);
    }
  }

  else
  {
    if (Kind)
    {
      abort();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v9);

    return glpLLVMPrimitiveConstant(a1, a4, a2, a3, PrimitiveType, a6, a7);
  }

  return result;
}

uint64_t glpGetComponentCount(uint64_t a1)
{
  if (glpPrimitiveTypeGetCategory(a1) != 2)
  {
    return 1;
  }

  return glpPrimitiveVectorGetLength(a1);
}

uint64_t glpGetPConst(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 <= 8)
  {
    if (a2 == 1)
    {
      v8 = *(a3 + 4 * a4);
      return llvm::ConstantFP::get();
    }

    if (a2 != 5)
    {
      return 0;
    }

    v5 = *(a3 + 4 * a4);
    return LLVMConstInt();
  }

  switch(a2)
  {
    case 9:
      v6 = *(a3 + 4 * a4);
      return LLVMConstInt();
    case 36:
      v7 = *(a3 + 4 * a4);
      return LLVMConstInt();
    case 62:
      v4 = *(a3 + 8 * a4);
      return llvm::ConstantFP::get();
  }

  return 0;
}

uint64_t glpBuildAlloca(uint64_t a1)
{
  v2 = *(a1 + 16);
  LLVMGetInsertBlock();
  v3 = *(a1 + 16);
  v4 = *(a1 + 176);
  LLVMPositionBuilderAtEnd();
  v5 = *(a1 + 16);
  v6 = LLVMBuildAlloca();
  v7 = *(a1 + 16);
  LLVMPositionBuilderAtEnd();
  return v6;
}

uint64_t glpLLVMCGSamplerNode(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v67[2] = *MEMORY[0x277D85DE8];
  VariableExtra = glpLValueNodeGetVariableExtra(a2);
  Offset = glpDerefNodeGetOffset(a2);
  if (Offset)
  {
    OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
  }

  else
  {
    OffsetExpr = 0;
  }

  if (*(VariableExtra + 52))
  {
    v16 = *(*(VariableExtra + 144) + 8);
    v17 = *(v16 + 4);
    if (OffsetExpr)
    {
      if (!glpIsConstantNode(OffsetExpr))
      {
LABEL_20:
        v21 = 0;
        goto LABEL_47;
      }

      v18 = *(VariableExtra + 156);
      v19 = *glpConstantNodeGetValue(OffsetExpr) + v18;
    }

    else
    {
      v19 = *(VariableExtra + 156);
    }

    if (v17 >= 1)
    {
      v20 = (*(v16 + 8) + 8);
      while (v19 != *v20)
      {
        v20 += 4;
        if (!--v17)
        {
          goto LABEL_20;
        }
      }

      v22 = (*(a1 + 600) + 48 * *(v20 - 1));
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  glpLLVMGetVariablePointer(a1, VariableExtra);
  v9 = *(a1 + 40);
  LLVMTypeOf();
  if (LLVMGetElementType() != v9)
  {
    MEMORY[0x23EE85440](v9, 0);
    if (OffsetExpr)
    {
      Value = glpConstantNodeGetValue(OffsetExpr);
      v11 = *(a1 + 520);
      if (!v11)
      {
        v12 = *(a1 + 40);
        v11 = LLVMConstInt();
        *(a1 + 520) = v11;
      }

      v67[0] = v11;
      v13 = *Value;
      if (v13 > 7)
      {
        v23 = *(a1 + 40);
        v14 = LLVMConstInt();
      }

      else
      {
        v14 = *(a1 + 520 + 8 * v13);
        if (!v14)
        {
          v15 = *(a1 + 40);
          v14 = LLVMConstInt();
          *(a1 + 520 + 8 * v13) = v14;
        }
      }

      v67[1] = v14;
      LLVMBuildGEP();
    }

    v24 = *(a1 + 16);
    LLVMBuildPointerCast();
  }

  LLVMBuildLoad();
  v25 = *(a1 + 596);
  SaType = glpASTNodeGetSaType(a2);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  v28 = PrimitiveType;
  if (v25 < 1)
  {
    v30 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = (*(a1 + 600) + 36);
    do
    {
      v33 = *v32;
      v32 += 12;
      if (v33 == PrimitiveType)
      {
        v31 = v29;
        ++v30;
      }

      ++v29;
    }

    while (v25 != v29);
    if (v30 == 1)
    {
      v22 = (*(a1 + 600) + 48 * v31);
LABEL_32:
      *a3 = v22[1];
      v21 = *v22;
      goto LABEL_47;
    }
  }

  v61 = a3;
  v67[0] = 0;
  glpLLVMGetTextureTypeFromSampler(a1, v67, PrimitiveType);
  v60[1] = v34;
  v35 = glpLLVMCGInsertBasicBlock(a1);
  v60[0] = *(a1 + 432);
  *(a1 + 432) = v35;
  v36 = *(a1 + 16);
  inserted = LLVMGetInsertBlock();
  v37 = *(a1 + 16);
  v65 = v35;
  v64 = LLVMBuildSwitch();
  v60[2] = v60;
  MEMORY[0x28223BE20](v64);
  v38 = (8 * v30 + 15) & 0xFFFFFFFF0;
  v66 = (v60 - v38);
  bzero(v60 - v38, 8 * v30);
  MEMORY[0x28223BE20](v39);
  v40 = (v60 - v38);
  bzero(v60 - v38, 8 * v30);
  MEMORY[0x28223BE20](v41);
  v42 = (v60 - v38);
  bzero(v60 - v38, 8 * v30);
  if (v25 >= 1)
  {
    v43 = 0;
    v44 = 0;
    v63 = a1 + 520;
    v45 = 48 * v25;
    do
    {
      v46 = *(a1 + 600);
      if (*(v46 + v43 + 36) == v28)
      {
        if (v44)
        {
          v47 = glpLLVMCGInsertBasicBlock(a1);
          v48 = *(a1 + 16);
          LLVMPositionBuilderAtEnd();
          v66[v44] = v47;
          v49 = v46 + v43;
          v40[v44] = *v49;
          v42[v44] = *(v49 + 8);
          glpLLVMEmitBranchInnerReal(a1);
          *(a1 + 332) = 0;
          v50 = *(v49 + 32);
          if (v50 > 7)
          {
            v53 = *(a1 + 40);
            v51 = LLVMConstInt();
          }

          else
          {
            v51 = *(v63 + 8 * v50);
            if (!v51)
            {
              v52 = *(a1 + 40);
              v51 = LLVMConstInt();
              *(v63 + 8 * v50) = v51;
            }
          }

          MEMORY[0x23EE84E40](v64, v51, v47);
        }

        else
        {
          *v66 = inserted;
          *v40 = *(v46 + v43);
          *v42 = *(v46 + v43 + 8);
        }

        ++v44;
      }

      v43 += 48;
    }

    while (v45 != v43);
  }

  *(a1 + 432) = v60[0];
  v54 = *(a1 + 16);
  LLVMPositionBuilderAtEnd();
  v55 = *(a1 + 16);
  v21 = LLVMBuildPhi();
  LLVMAddIncoming();
  v56 = *(a1 + 16);
  v57 = LLVMBuildPhi();
  LLVMAddIncoming();
  *v61 = v57;
LABEL_47:
  v58 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t glpMatchInputSize(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  if (v3 != a3[1])
  {
    v6 = result;
    if (glpPrimitiveTypeGetCategory(*a3) == 2)
    {
      Length = glpPrimitiveVectorGetLength(v3);
    }

    else
    {
      Length = 1;
    }

    v10[0] = Length;
    v8 = a3[1];
    if (glpPrimitiveTypeGetCategory(v8) == 2)
    {
      result = glpPrimitiveVectorGetLength(v8);
    }

    else
    {
      result = 1;
    }

    v10[1] = result;
    if (Length != result)
    {
      result = glpLLVMSplatScalar(v6, *(a2 + 8 * (Length > 1)), v10[Length < 2]);
      *(a2 + 8 * (Length > 1)) = result;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildBuiltinNoPrefix(uint64_t *a1, const char *a2, unsigned int a3, uint64_t *a4, uint64_t a5, int a6, int a7)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v12 = glpLLVMGetTypeString(&v15, a6, a7);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
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
  *v16 = 0u;
  v17 = 0u;
  snprintf_l(v16, 0x200uLL, 0, "%s.%s", a2, v12);
  v48[0] = 0x300000001;
  result = glpLLVMCallFunctionInner(a1, v16, a5, a4, a3, v48, 2u, "");
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpBuildConstantIntVector(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (glpPrimitiveTypeGetCategory(a2) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a2);
  }

  else
  {
    Length = 1;
  }

  ScalarType = glpPrimitiveTypeGetScalarType(a2);
  glpPrimitiveTypeToLLVMType(a1, ScalarType, a3);
  v8 = LLVMConstInt();
  v9 = v8;
  if (Length >= 2)
  {
    MEMORY[0x28223BE20](v8);
    v11 = v21 - v10;
    bzero(v21 - v10, v12);
    v13 = (Length + 1) & 0xFFFFFFFE;
    v14 = vdupq_n_s64(Length - 1);
    v15 = (v11 + 8);
    v16 = xmmword_23A300E20;
    v17 = vdupq_n_s64(2uLL);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v14, v16));
      if (v18.i8[0])
      {
        *(v15 - 1) = v9;
      }

      if (v18.i8[4])
      {
        *v15 = v9;
      }

      v16 = vaddq_s64(v16, v17);
      v15 += 2;
      v13 -= 2;
    }

    while (v13);
    v9 = LLVMConstVector();
  }

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t glpLLVMCastToHalf(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  if (a4 == 3 || !a4)
  {
    v6 = glpLLVMGetTypeString(&v12, a3, a4);
    v7 = "v2f16";
    if (glpPrimitiveTypeGetCategory(a3) == 2 && glpPrimitiveVectorGetLength(a3) == 4)
    {
      v7 = "v4f16";
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
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
    v16 = 0u;
    v17 = 0u;
    *v14 = 0u;
    v15 = 0u;
    snprintf_l(v14, 0x200uLL, 0, "air.convert.f.%s.f.%s", v7, v6);
    v8 = *a1;
    v9 = LLVMHalfTypeInContext();
    v46[0] = 0x300000001;
    a2 = glpLLVMCallFunctionInner(a1, v14, v9, &v13, 1u, v46, 2u, "");
  }

  v10 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t glpMatchInputSize3(uint64_t result, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 != a3[1])
  {
    v6 = result;
    if (glpPrimitiveTypeGetCategory(*a3) == 2)
    {
      Length = glpPrimitiveVectorGetLength(v3);
    }

    else
    {
      Length = 1;
    }

    v8 = a3[1];
    if (glpPrimitiveTypeGetCategory(v8) == 2)
    {
      result = glpPrimitiveVectorGetLength(v8);
    }

    else
    {
      result = 1;
    }

    if (Length != result)
    {
      *(a2 + 8) = glpLLVMSplatScalar(v6, *(a2 + 8), Length);
      result = glpLLVMSplatScalar(v6, *(a2 + 16), Length);
      *(a2 + 16) = result;
    }
  }

  return result;
}

uint64_t glpLLVMBuildBuiltinWithPrefix(uint64_t *a1, const char *a2, unsigned int a3, uint64_t *a4, uint64_t a5, int a6, int a7)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v12 = glpLLVMGetTypeString(&v15, a6, a7);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
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
  *v16 = 0u;
  v17 = 0u;
  snprintf_l(v16, 0x200uLL, 0, "%s%s.%s", a2, v15, v12);
  v48[0] = 0x300000001;
  result = glpLLVMCallFunctionInner(a1, v16, a5, a4, a3, v48, 2u, "");
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildLength(uint64_t *a1, uint64_t *a2, int *a3, int a4, uint64_t a5)
{
  v68[1] = *MEMORY[0x277D85DE8];
  if (glpPrimitiveTypeGetCategory(*a3) == 1)
  {
    v10 = glpLLVMGetTypeString(&v35, *a3, a4);
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
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
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    *v36 = 0u;
    v37 = 0u;
    snprintf_l(v36, 0x200uLL, 0, "%s.%s", "air.fabs", v10);
    v68[0] = 0x300000001;
    v11 = a1;
    v12 = a5;
    v13 = a2;
  }

  else
  {
    v14 = *a2;
    v15 = *a3;
    if (glpPrimitiveTypeGetCategory(*a3) == 1)
    {
      v16 = a1[2];
      v17 = LLVMBuildFMul();
    }

    else
    {
      Length = glpPrimitiveVectorGetLength(v15);
      if (Length < 1)
      {
        v17 = 0;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v21 = a1 + 65;
        v22 = Length;
        do
        {
          if (v19 > 7)
          {
            v24 = a1[5];
            LLVMConstInt();
          }

          else if (!v21[v19])
          {
            v23 = a1[5];
            v21[v19] = LLVMConstInt();
          }

          v25 = a1[2];
          LLVMBuildExtractElement();
          v26 = a1[2];
          v17 = LLVMBuildFMul();
          if (v20)
          {
            v27 = a1[2];
            v17 = LLVMBuildFAdd();
          }

          ++v19;
          v20 = v17;
        }

        while (v22 != v19);
      }
    }

    v34 = v17;
    ScalarType = glpPrimitiveTypeGetScalarType(*a3);
    if (a4)
    {
      v29 = a4 == 3;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      v30 = "air.fast_sqrt";
    }

    else
    {
      v30 = "air.sqrt";
    }

    v31 = glpLLVMGetTypeString(&v35, ScalarType, a4);
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
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
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    *v36 = 0u;
    v37 = 0u;
    snprintf_l(v36, 0x200uLL, 0, "%s.%s", v30, v31);
    v68[0] = 0x300000001;
    v13 = &v34;
    v11 = a1;
    v12 = a5;
  }

  result = glpLLVMCallFunctionInner(v11, v36, v12, v13, 1u, v68, 2u, "");
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildNormalize(uint64_t *a1, uint64_t *a2, int *a3, int a4)
{
  if (glpPrimitiveTypeGetCategory(*a3) == 1)
  {
    v8 = *a2;
    v9 = LLVMTypeOf();
    v10 = a1[2];
    v11 = *a2;
    MEMORY[0x23EE85200](v9);
    LLVMBuildFCmp();
    v12 = a1[2];
    llvm::ConstantFP::get();
    llvm::ConstantFP::get();

    return LLVMBuildSelect();
  }

  else
  {
    Length = glpPrimitiveVectorGetLength(*a3);
    v15 = LLVMGetElementType();
    v16 = glpLLVMBuildLength(a1, a2, a3, a4, v15);
    glpLLVMSplatElement(a1, v16, Length);
    v17 = a1[2];
    v18 = *a2;

    return LLVMBuildFDiv();
  }
}

uint64_t glpLLVMBuildConvert(void *a1, uint64_t *a2, unsigned int *a3)
{
  if (glpPrimitiveTypeGetCategory(*a3) == 1)
  {
    v6 = *a2;
    LLVMTypeOf();
    llvm::ConstantFP::get();
  }

  else
  {
    Length = glpPrimitiveVectorGetLength(*a3);
    v8 = *a2;
    LLVMTypeOf();
    LLVMGetElementType();
    v9 = llvm::ConstantFP::get();
    glpLLVMSplatElement(a1, v9, Length);
  }

  v10 = a1[2];
  v11 = *a2;

  return LLVMBuildFMul();
}

uint64_t glpLLVMBuildCross(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v29[3] = *MEMORY[0x277D85DE8];
  memset(v29, 0, 24);
  memset(v28, 0, sizeof(v28));
  v5 = a1 + 520;
  do
  {
    if (!*(v5 + 8 * v4))
    {
      v6 = *(a1 + 40);
      *(v5 + 8 * v4) = LLVMConstInt();
    }

    v7 = *(a1 + 16);
    v8 = *a2;
    v29[v4] = LLVMBuildExtractElement();
    v9 = *(a1 + 16);
    v10 = a2[1];
    v28[v4++] = LLVMBuildExtractElement();
  }

  while (v4 != 3);
  v11 = *a2;
  v12 = LLVMTypeOf();
  MEMORY[0x23EE85370](v12);
  v13 = 0;
  v27 = *(a1 + 40);
  do
  {
    v14 = v13 + 1;
    v15 = *(a1 + 16);
    if (v13 == 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13 + 1;
    }

    v17 = v29[v16];
    if (v13)
    {
      v18 = v13 - 1;
    }

    else
    {
      v18 = 2;
    }

    v19 = v28[v18];
    LLVMBuildFMul();
    v20 = *(a1 + 16);
    v21 = v28[v16];
    v22 = v29[v18];
    LLVMBuildFMul();
    v23 = *(a1 + 16);
    LLVMBuildFSub();
    v24 = *(a1 + 16);
    LLVMConstInt();
    result = LLVMBuildInsertElement();
    ++v13;
  }

  while (v14 != 3);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildReflect(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a3 + 4);
  if (glpPrimitiveTypeGetCategory(*(a3 + 4)) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v10);
    v12 = LLVMTypeOf();
    if (Length < 2)
    {
      v13 = 0;
    }

    else
    {
      v12 = LLVMGetElementType();
      v13 = 1;
    }
  }

  else
  {
    v12 = LLVMTypeOf();
    v13 = 0;
    Length = 1;
  }

  v14 = glpLLVMGetTypeString(&v21, *a3, a4);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  snprintf_l(v22, 0x200uLL, 0, "%s.%s", "air.dot", v14);
  v54[0] = 0x300000001;
  glpLLVMCallFunctionInner(a1, v22, v12, a2, 2u, v54, 2u, "");
  llvm::ConstantFP::get();
  v15 = a1[2];
  v16 = LLVMBuildFMul();
  if (v13)
  {
    glpLLVMSplatElement(a1, v16, Length);
  }

  v17 = a1[2];
  LLVMBuildFMul();
  v18 = a1[2];
  result = LLVMBuildFSub();
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildFaceForward(uint64_t *a1, uint64_t *a2, unsigned int *a3, int a4)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = *a3;
  if (glpPrimitiveTypeGetCategory(*a3) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v9);
    v11 = LLVMTypeOf();
    if (Length < 2)
    {
      v12 = 0;
    }

    else
    {
      v11 = LLVMGetElementType();
      v12 = 1;
    }
  }

  else
  {
    v11 = LLVMTypeOf();
    v12 = 0;
    Length = 1;
  }

  v13 = glpLLVMGetTypeString(&v20, *a3, a4);
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
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  snprintf_l(v21, 0x200uLL, 0, "%s.%s", "air.dot", v13);
  v53[0] = 0x300000001;
  glpLLVMCallFunctionInner(a1, v21, v11, a2 + 1, 2u, v53, 2u, "");
  v14 = a1[2];
  MEMORY[0x23EE85200](v11);
  LLVMBuildFCmp();
  v15 = llvm::ConstantFP::get();
  if (v12)
  {
    glpLLVMSplatElement(a1, v15, Length);
  }

  v16 = a1[2];
  LLVMBuildFMul();
  v17 = a1[2];
  result = LLVMBuildSelect();
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildMix(uint64_t *a1, uint64_t *a2, unsigned int *a3, uint64_t a4, int a5)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = a3[2];
  if (glpPrimitiveTypeGetCategory(a3[2]) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v12);
  }

  else
  {
    Length = 1;
  }

  Category = glpPrimitiveTypeGetCategory(*a3);
  if (glpPrimitiveTypeGetScalarType(*a3) == 9)
  {
    if (Category == 1)
    {
      glpLLVMSplatElement(a1, v10, Length);
    }

    v15 = a1[2];
    v16 = *MEMORY[0x277D85DE8];

    return LLVMBuildSelect();
  }

  else
  {
    if (Length >= 2 && Category == 1)
    {
      v10 = glpLLVMSplatElement(a1, v10, Length);
    }

    v21[0] = v11;
    v21[1] = v9;
    v21[2] = v10;
    v18 = glpLLVMGetTypeString(&v20, a3[2], a5);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *v22 = 0u;
    v23 = 0u;
    snprintf_l(v22, 0x200uLL, 0, "%s.%s", "air.mix", v18);
    v54[0] = 0x300000001;
    result = glpLLVMCallFunctionInner(a1, v22, a4, v21, 3u, v54, 2u, "");
    v19 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t glpLLVMBuildSmoothStep(uint64_t *a1, uint64_t *a2, unsigned int *a3, int a4, uint64_t a5)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v9 = a2[2];
  LLVMTypeOf();
  if (glpPrimitiveTypeGetCategory(a3[2]) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a3[2]);
    LLVMGetElementType();
    if (glpPrimitiveTypeGetCategory(*a3) != 2)
    {
      *a2 = glpLLVMSplatElement(a1, *a2, Length);
      a2[1] = glpLLVMSplatElement(a1, a2[1], Length);
    }
  }

  else
  {
    LODWORD(Length) = 1;
  }

  v11 = a1[2];
  v12 = a2[2];
  v13 = *a2;
  LLVMBuildFSub();
  v14 = a1[2];
  v16 = *a2;
  v15 = a2[1];
  LLVMBuildFSub();
  v17 = llvm::ConstantFP::get();
  v18 = llvm::ConstantFP::get();
  if (Length >= 2)
  {
    v17 = glpLLVMSplatConstantVector(v17, Length);
    v18 = glpLLVMSplatConstantVector(v18, Length);
  }

  v19 = a1[2];
  v31[0] = LLVMBuildFDiv();
  v31[1] = v17;
  v31[2] = v18;
  v20 = glpLLVMGetTypeString(&v30, a3[2], a4);
  v62 = 0u;
  v63 = 0u;
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
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *v32 = 0u;
  v33 = 0u;
  snprintf_l(v32, 0x200uLL, 0, "%s.%s", "air.clamp", v20);
  v64[0] = 0x300000001;
  glpLLVMCallFunctionInner(a1, v32, a5, v31, 3u, v64, 2u, "");
  v21 = a1[2];
  LLVMBuildFMul();
  v22 = llvm::ConstantFP::get();
  v23 = llvm::ConstantFP::get();
  if (Length >= 2)
  {
    glpLLVMSplatConstantVector(v22, Length);
    glpLLVMSplatConstantVector(v23, Length);
  }

  v24 = a1[2];
  LLVMBuildFMul();
  v25 = a1[2];
  LLVMBuildFSub();
  v26 = a1[2];
  result = LLVMBuildFMul();
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpBuildTextureOperation(uint64_t a1, uint64_t a2, const char **a3, unsigned int *a4, int *a5, int a6)
{
  v228 = a5;
  v273[1] = *MEMORY[0x277D85DE8];
  Opcode = glpPPStreamOpNodeGetOpcode(a2);
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  SaFlags = glpASTNodeGetSaFlags(a2);
  v13 = glpPrecisionIndexFromSAFlags(SaFlags);
  v239 = 0;
  v238 = 0u;
  v237 = 0u;
  v236 = 0u;
  v235 = 0u;
  v234 = 0u;
  v14 = a3[a6 - 2];
  if (Opcode == 130)
  {
    v15 = 1;
  }

  else
  {
    *&v234 = a3[a6 - 1];
    v15 = 2;
  }

  v222 = v15;
  v206 = a6;
  v219 = v13;
  v233 = v14;
  v214 = *a3;
  ChildCount = glpASTNodeGetChildCount(a2);
  Child = glpASTNodeGetChild(a2, ChildCount - 1);
  SaType = glpASTNodeGetSaType(Child);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(PrimitiveType);
  v20 = PPTextarget;
  v21 = (PPTextarget - 5) < 8 && ((0xCFu >> (PPTextarget - 5)) & 1) != 0 || PPTextarget == 17;
  v230 = v21;
  v24 = Opcode == 99 || (Opcode & 0xFFFFFFFB) == 67 || Opcode == 69;
  v221 = v24 & ((PPTextarget > 0x11) | (0xFEFEu >> PPTextarget));
  v25 = *a4;
  if (glpPrimitiveTypeGetCategory(*a4) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v25);
  }

  else
  {
    Length = 1;
  }

  v27 = (Length - 1);
  v229 = v20;
  v226 = a4;
  if (v221)
  {
    v28 = *(a1 + 16);
    if (v27 > 7)
    {
      v30 = *(a1 + 40);
      LLVMConstInt();
    }

    else if (!*(a1 + 520 + 8 * v27))
    {
      v29 = *(a1 + 40);
      *(a1 + 520 + 8 * v27) = LLVMConstInt();
    }

    Element = LLVMBuildExtractElement();
    v27 = (Length - 2);
    LODWORD(v20) = v229;
    a4 = v226;
  }

  else
  {
    Element = 0;
  }

  v208 = v27;
  if (v21)
  {
    v31 = *(a1 + 528);
    if (!v31)
    {
      v32 = *(a1 + 40);
      v31 = LLVMConstInt();
      *(a1 + 528) = v31;
    }

    v33 = v222;
    *(&v233 + v222) = v31;
    v222 = v33 + 1;
  }

  v215 = v20 > 0x11;
  TextureSize = glpGetTextureSize(v20, &v230);
  v211 = (v20 > 0x10 || ((1 << v20) & 0x10101) == 0) && v20 != 17;
  v210 = *(a1 + 832);
  HasOffset = glpPPStreamOpNodeGetHasOffset(a2);
  v220 = 0;
  HIDWORD(v217) = 1;
  v216 = HasOffset;
  if (Opcode > 97)
  {
    if (Opcode > 164)
    {
      if (Opcode == 165)
      {
        if (v216)
        {
          v46 = v206 - 3;
        }

        else
        {
          v46 = 0;
        }

        v220 = v230 == 0;
        v217 = v230 | 0x100000000;
        v212 = 1;
        v213 = v46;
        goto LABEL_48;
      }

      v212 = v220;
      v213 = v220;
      v36 = 1;
      LODWORD(v217) = v220;
      if (Opcode != 166)
      {
        goto LABEL_55;
      }

      v211 = 0;
      v213 = 0;
      v217 = v230;
      v220 = v230 == 0;
    }

    else
    {
      if ((Opcode - 98) >= 2)
      {
        v212 = v220;
        v213 = v220;
        v36 = 1;
        LODWORD(v217) = v220;
        if (Opcode != 130)
        {
          goto LABEL_55;
        }

        v220 = 0;
        v211 = 0;
      }

      else
      {
        v220 = 0;
        v36 = 0;
      }

      v37 = v206 - 3;
      if (!HasOffset)
      {
        v37 = 0;
      }

      v213 = v37;
      v217 = 0x100000000;
    }

    v212 = 1;
  }

  else
  {
    if ((Opcode - 66) < 2)
    {
      v220 = 0;
      v212 = 0;
      LODWORD(v217) = 0;
      v35 = HasOffset != 0;
      goto LABEL_47;
    }

    if ((Opcode - 68) < 2 || (Opcode - 70) < 2)
    {
      v220 = 0;
      v212 = 0;
      LODWORD(v217) = 0;
      v35 = 2 * (HasOffset != 0);
LABEL_47:
      v213 = v35;
      HIDWORD(v217) = 1;
LABEL_48:
      v36 = 1;
      goto LABEL_55;
    }

    v212 = v220;
    v213 = v220;
    v36 = 1;
    LODWORD(v217) = v220;
  }

LABEL_55:
  memset(v240, 0, sizeof(v240));
  v38 = *a3;
  v227 = a3;
  v224 = Opcode;
  if (v221)
  {
    v39 = *a4;
    v40 = *v228;
    v232 = v38;
    v41 = glpLLVMGetTypeString(&v231, v39, 3);
    v42 = glpPrimitiveTypeToLLVMType(a1, v39, 3);
    v271 = 0u;
    v272 = 0u;
    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v261 = 0u;
    v262 = 0u;
    v259 = 0u;
    v260 = 0u;
    v257 = 0u;
    v258 = 0u;
    v255 = 0u;
    v256 = 0u;
    v253 = 0u;
    v254 = 0u;
    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    snprintf_l(&v241, 0x200uLL, 0, "%s.%s", "air.projective_coordinates", v41);
    if (v40)
    {
      a4 = v226;
      if (v40 != 3)
      {
        v43 = *a1;
        v44 = LLVMFloatTypeInContext();
        if (glpPrimitiveTypeGetCategory(v39) == 2)
        {
          v45 = glpPrimitiveVectorGetLength(v39);
        }

        else
        {
          v45 = 1;
        }

        v42 = MEMORY[0x23EE854F0](v44, v45);
        v47 = *(a1 + 16);
        v232 = LLVMBuildFPExt();
      }
    }

    else
    {
      a4 = v226;
    }

    v273[0] = 0x300000001;
    v38 = glpLLVMCallFunctionInner(a1, &v241, v42, &v232, 1u, v273, 2u, "");
    a3 = v227;
    Opcode = v224;
  }

  v48 = *a4;
  Category = glpPrimitiveTypeGetCategory(*a4);
  v50 = TextureSize;
  if (TextureSize == 1)
  {
    if (Category == 2 && glpPrimitiveVectorGetLength(v48) >= 2)
    {
      v51 = *(a1 + 16);
      if (!*(a1 + 520))
      {
        v52 = *(a1 + 40);
        *(a1 + 520) = LLVMConstInt();
      }

      v38 = LLVMBuildExtractElement();
    }
  }

  else
  {
    if (Category == 2)
    {
      Category = glpPrimitiveVectorGetLength(v48);
      v50 = TextureSize;
    }

    v53 = v50;
    MEMORY[0x28223BE20](Category);
    v55 = &Element - v54;
    bzero(&Element - v54, v56);
    v57 = 0;
    v58 = a1 + 520;
    do
    {
      v59 = *(v58 + 8 * v57);
      if (!v59)
      {
        v60 = *(a1 + 40);
        v59 = LLVMConstInt();
        *(v58 + 8 * v57) = v59;
      }

      *&v55[8 * v57++] = v59;
    }

    while (v53 != v57);
    LLVMConstVector();
    v61 = *(a1 + 16);
    v62 = LLVMTypeOf();
    MEMORY[0x23EE85370](v62);
    v38 = LLVMBuildShuffleVector();
    a3 = v227;
    Opcode = v224;
    LOBYTE(v20) = v229;
  }

  ScalarType = glpPrimitiveTypeGetScalarType(*v226);
  if (!*v228)
  {
    goto LABEL_94;
  }

  v64 = v216;
  if (*v228 != 3)
  {
    if (ScalarType == 5)
    {
      v65 = *(a1 + 40);
      if (TextureSize >= 2)
      {
        MEMORY[0x23EE854F0](*(a1 + 40));
      }

      v66 = *(a1 + 16);
      v67 = LLVMBuildSExt();
LABEL_93:
      v38 = v67;
LABEL_94:
      v64 = v216;
      goto LABEL_95;
    }

    if (ScalarType == 1)
    {
      if (v221)
      {
        v205 = v216 != 0;
LABEL_100:
        v73 = v222;
        goto LABEL_105;
      }

      v68 = *a1;
      v69 = LLVMFloatTypeInContext();
      if (TextureSize >= 2)
      {
        MEMORY[0x23EE854F0](v69);
      }

      v70 = *(a1 + 16);
      v67 = LLVMBuildFPExt();
      goto LABEL_93;
    }
  }

LABEL_95:
  v205 = v64 != 0;
  if (Opcode != 130 || !v64)
  {
    goto LABEL_100;
  }

  v71 = a3[v213];
  v72 = v228[v213];
  if (v72 && v72 != 3)
  {
    v74 = *(a1 + 40);
    v73 = v222;
    if (TextureSize >= 2)
    {
      MEMORY[0x23EE854F0](*(a1 + 40));
    }

    v75 = *(a1 + 16);
    LLVMBuildSExt();
  }

  else
  {
    v73 = v222;
  }

  v76 = *(a1 + 16);
  v38 = LLVMBuildAdd();
  v205 = 1;
LABEL_105:
  v77 = 0x61FFu >> v20;
  *(&v233 + v73) = v38;
  v218 = v230;
  v207 = v36;
  if (!v230)
  {
    switch(Opcode)
    {
      case 130:
        v81 = glpTextureNameFromSamplerType(PrimitiveType);
        v79 = "air.read_";
        goto LABEL_123;
      case 165:
        v79 = "air.gather_";
        break;
      case 166:
        v79 = "air.gather_offsets_";
        break;
      default:
        v79 = "air.sample_";
        goto LABEL_111;
    }

    v81 = glpTextureNameFromSamplerType(PrimitiveType);
    v203 = 0;
    v204 = 0;
    v82 = "";
    goto LABEL_124;
  }

  v78 = "air.sample_compare_";
  if (Opcode == 166)
  {
    v78 = "air.gather_compare_offsets_";
  }

  if (Opcode == 165)
  {
    v79 = "air.gather_compare_";
  }

  else
  {
    v79 = v78;
  }

LABEL_111:
  v80 = Opcode;
  v81 = glpTextureNameFromSamplerType(PrimitiveType);
  v82 = "";
  v83 = v80 - 70;
  if ((v80 - 70) > 0x3C)
  {
    v203 = 0;
    v204 = 0;
    goto LABEL_124;
  }

  if (((1 << v83) & 0x1000000000000003) != 0)
  {
LABEL_123:
    v82 = "";
    v204 = 1;
    v203 = 1;
    goto LABEL_124;
  }

  v204 = 0;
  v203 = 0;
  if (((1 << v83) & 0x30000000) != 0)
  {
    v82 = "_grad";
  }

LABEL_124:
  v84 = v73 + 1;
  v85 = v215 | v77;
  v232 = 0;
  v86 = ReturnPrimitiveType;
  if (v218)
  {
    v87 = 1;
  }

  else
  {
    v87 = ReturnPrimitiveType;
  }

  if (glpPrimitiveTypeGetScalarType(ReturnPrimitiveType) == 1)
  {
    v88 = v219;
  }

  else
  {
    v88 = 3;
  }

  PrimitiveType = v88;
  v89 = glpLLVMGetTypeString(&v232, v87, v88);
  if (glpPrimitiveTypeGetScalarType(v86) == 1)
  {
    v90 = "";
    v232 = "";
  }

  else
  {
    v90 = v232;
  }

  snprintf_l(v240, 0x200uLL, 0, "%s%s%s%s.%s", v79, v81, v82, v90, v89);
  v91 = v227;
  v92 = v229;
  if ((v85 & 1) == 0)
  {
    if (!*(a1 + 520 + 8 * TextureSize))
    {
      v93 = TextureSize;
      v94 = *(a1 + 40);
      *(a1 + 520 + 8 * v93) = LLVMConstInt();
    }

    v95 = *(a1 + 16);
    v231 = LLVMBuildExtractElement();
    v96 = v226;
    v97 = glpPrimitiveTypeGetScalarType(*v226);
    v98 = v222;
    if (v97 == 1)
    {
      v99 = LLVMTypeOf();
      v100 = *(a1 + 16);
      llvm::ConstantFP::get();
      v91 = v227;
      v92 = v229;
      v231 = LLVMBuildFAdd();
      v271 = 0u;
      v272 = 0u;
      v269 = 0u;
      v270 = 0u;
      v267 = 0u;
      v268 = 0u;
      v265 = 0u;
      v266 = 0u;
      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v259 = 0u;
      v260 = 0u;
      v257 = 0u;
      v258 = 0u;
      v255 = 0u;
      v256 = 0u;
      v253 = 0u;
      v254 = 0u;
      v251 = 0u;
      v252 = 0u;
      v249 = 0u;
      v250 = 0u;
      v247 = 0u;
      v248 = 0u;
      v245 = 0u;
      v246 = 0u;
      v243 = 0u;
      v244 = 0u;
      v241 = 0u;
      v242 = 0u;
      snprintf_l(&v241, 0x200uLL, 0, "%s.%s", "air.floor", "f32");
      v273[0] = 0x300000001;
      v231 = glpLLVMCallFunctionInner(a1, &v241, v99, &v231, 1u, v273, 2u, "");
      v101 = glpLLVMBuildConversion(a1, v231, *(a1 + 40), 1, 0, 36, 0);
    }

    else
    {
      v102 = glpPrimitiveTypeGetScalarType(*v96);
      v101 = v231;
      if (v102 == 5)
      {
        v103 = LLVMTypeOf();
        MEMORY[0x23EE85200](v103);
        v104 = *(a1 + 16);
        LLVMBuildICmp();
        v105 = *(a1 + 16);
        v101 = LLVMBuildSelect();
      }
    }

    *(&v233 + (v84 - 12 * ((357913942 * v84) >> 32))) = v101;
    v84 = v98 + 2;
  }

  if (v218)
  {
    if (v92 == 17 || v217)
    {
      v109 = v91[1];
      v110 = v228[1];
      if (v110)
      {
        v108 = ReturnPrimitiveType;
        if (v110 != 3)
        {
          v111 = v226[1];
          v112 = *a1;
          v113 = LLVMFloatTypeInContext();
          if (glpPrimitiveTypeGetCategory(v111) == 2)
          {
            v114 = glpPrimitiveVectorGetLength(v111);
            MEMORY[0x23EE854F0](v113, v114);
          }

          v115 = *(a1 + 16);
          v109 = LLVMBuildFPCast();
          v91 = v227;
        }
      }

      else
      {
        v108 = ReturnPrimitiveType;
      }
    }

    else
    {
      if (v208 > 7)
      {
        v116 = *(a1 + 40);
        LLVMConstInt();
      }

      else if (!*(a1 + 520 + 8 * v208))
      {
        v106 = v208;
        v107 = *(a1 + 40);
        *(a1 + 520 + 8 * v106) = LLVMConstInt();
      }

      v117 = *(a1 + 16);
      v109 = LLVMBuildExtractElement();
      v108 = ReturnPrimitiveType;
      if (v221)
      {
        v118 = *(a1 + 16);
        v109 = LLVMBuildFDiv();
      }
    }

    *(&v233 + (v84 - 12 * ((357913942 * v84) >> 32))) = v109;
    ++v84;
  }

  else
  {
    v108 = ReturnPrimitiveType;
  }

  if ((v207 & 1) == 0)
  {
    v119 = v91[1];
    v120 = v228[1];
    if (v120 && v120 != 3)
    {
      v121 = v226[1];
      v122 = *a1;
      v123 = LLVMFloatTypeInContext();
      if (glpPrimitiveTypeGetCategory(v121) == 2)
      {
        v124 = glpPrimitiveVectorGetLength(v121);
        MEMORY[0x23EE854F0](v123, v124);
      }

      v91 = v227;
      v125 = *(a1 + 16);
      v119 = LLVMBuildFPCast();
    }

    *(&v233 + (v84 - 12 * ((357913942 * v84) >> 32))) = v119;
    v126 = v91[2];
    v127 = v228[2];
    if (v127 && v127 != 3)
    {
      v128 = v226[2];
      v129 = *a1;
      v130 = LLVMFloatTypeInContext();
      if (glpPrimitiveTypeGetCategory(v128) == 2)
      {
        v131 = glpPrimitiveVectorGetLength(v128);
        MEMORY[0x23EE854F0](v130, v131);
      }

      v132 = *(a1 + 16);
      v126 = LLVMBuildFPCast();
      v91 = v227;
    }

    *(&v233 + (v84 + 1 - 12 * ((357913942 * (v84 + 1)) >> 32))) = v126;
    v133 = *a1;
    v134 = LLVMFloatTypeInContext();
    *(&v233 + (v84 + 2 - 12 * ((357913942 * (v84 + 2)) >> 32))) = MEMORY[0x23EE85200](v134);
    v84 += 3;
    v108 = ReturnPrimitiveType;
    v92 = v229;
  }

  if (v211)
  {
    v135 = *(a1 + 64);
    v136 = v213;
    *(&v233 + (v84 - 12 * ((357913942 * v84) >> 32))) = LLVMConstInt();
    if (v136 < 1)
    {
      v138 = *(a1 + 40);
      if (TextureSize >= 2)
      {
        v138 = MEMORY[0x23EE854F0](v138);
      }

      v137 = MEMORY[0x23EE85200](v138);
    }

    else
    {
      v137 = v91[v136];
    }

    *(&v233 + (v84 + 1 - 12 * ((357913942 * (v84 + 1)) >> 32))) = v137;
    v84 += 2;
  }

  if ((v217 & 0x100000000) == 0)
  {
    if (v230)
    {
      v139 = 2;
    }

    else
    {
      v139 = 1;
    }

    MEMORY[0x23EE854F0](*(a1 + 40), 2);
    v140 = LLVMArrayType();
    MEMORY[0x23EE85370](v140);
    v141 = 0;
    v142 = v91;
    v143 = 0;
    v144 = &v142[v139];
    v145 = (a1 + 528);
    do
    {
      v241 = 0uLL;
      v146 = *(v145 - 1);
      if (!v146)
      {
        v147 = *(a1 + 40);
        v146 = LLVMConstInt();
        *(v145 - 1) = v146;
      }

      *&v241 = v146;
      v148 = *v145;
      if (!*v145)
      {
        v149 = *(a1 + 40);
        v148 = LLVMConstInt();
        *v145 = v148;
      }

      *(&v241 + 1) = v148;
      LLVMConstVector();
      v150 = *(a1 + 16);
      v151 = *v144;
      v152 = v144[1];
      LLVMBuildShuffleVector();
      v153 = *(a1 + 16);
      inserted = LLVMBuildInsertValue();
      ++v143;
      v141 += 2;
      v145 += 2;
    }

    while (v143 != 4);
    *(&v233 + (v84 - 12 * ((357913942 * v84) >> 32))) = inserted;
    ++v84;
    v108 = ReturnPrimitiveType;
    v91 = v227;
    v92 = v229;
  }

  if ((v212 & 1) == 0)
  {
    v155 = v215 | (0x1EFDBu >> v92);
    v156 = (v224 & 0xFFFFFFFE) == 68;
    v157 = *(a1 + 64);
    *(&v233 + (v84 - 12 * ((357913942 * v84) >> 32))) = LLVMConstInt();
    if ((v204 | v156 & v155) == 1)
    {
      v158 = v91[1];
      v159 = v228[1];
      if (!v159 || v159 == 3)
      {
        goto LABEL_197;
      }

      v160 = v226[1];
      v161 = *a1;
      v162 = LLVMFloatTypeInContext();
      if (glpPrimitiveTypeGetCategory(v160) == 2)
      {
        v163 = glpPrimitiveVectorGetLength(v160);
        MEMORY[0x23EE854F0](v162, v163);
      }

      v164 = *(a1 + 16);
      v165 = LLVMBuildFPCast();
    }

    else
    {
      v166 = *a1;
      v167 = LLVMFloatTypeInContext();
      v165 = MEMORY[0x23EE85200](v167);
    }

    v158 = v165;
LABEL_197:
    *(&v233 + (v84 + 1 - 12 * ((357913942 * (v84 + 1)) >> 32))) = v158;
    v168 = *a1;
    v169 = LLVMFloatTypeInContext();
    *(&v233 + (v84 + 2 - 12 * ((357913942 * (v84 + 2)) >> 32))) = MEMORY[0x23EE85200](v169);
    v84 += 3;
    v92 = v229;
  }

  if (!v220)
  {
    goto LABEL_214;
  }

  if (v224 == 165)
  {
    v170 = v205;
    if (v206 != 5)
    {
      v170 = 0;
    }

    if (v216)
    {
      v171 = 0;
    }

    else
    {
      v171 = v206 == 4;
    }

    v172 = 1;
    if (v171 || v170)
    {
      goto LABEL_210;
    }

LABEL_211:
    v173 = *(a1 + 520);
    if (!v173)
    {
      v174 = *(a1 + 40);
      v173 = LLVMConstInt();
      *(a1 + 520) = v173;
    }

    goto LABEL_213;
  }

  if (v206 != 6)
  {
    goto LABEL_211;
  }

  v172 = 3;
LABEL_210:
  v173 = v91[v172];
LABEL_213:
  *(&v233 + (v84 - 12 * ((357913942 * v84) >> 32))) = v173;
  ++v84;
LABEL_214:
  if (v224 == 130)
  {
    if (v92 == 13 || v92 == 2)
    {
      v175 = *(a1 + 520);
      v177 = PrimitiveType;
      v176 = v210;
      if (!v175)
      {
        v178 = *(a1 + 40);
        v175 = LLVMConstInt();
        *(a1 + 520) = v175;
      }
    }

    else
    {
      v175 = v91[1];
      v179 = v228[1];
      if (v179)
      {
        v177 = PrimitiveType;
        v176 = v210;
        if (v179 != 3)
        {
          v180 = *(a1 + 40);
          v181 = *(a1 + 16);
          v175 = LLVMBuildSExt();
        }
      }

      else
      {
        v177 = PrimitiveType;
        v176 = v210;
      }
    }

    *(&v233 + (v84 - 12 * ((357913942 * v84) >> 32))) = v175;
    ++v84;
  }

  else
  {
    v177 = PrimitiveType;
    v176 = v210;
  }

  v182 = *(a1 + 520);
  if (!v182)
  {
    v183 = *(a1 + 40);
    v182 = LLVMConstInt();
    *(a1 + 520) = v182;
  }

  *(&v233 + (v84 - 12 * ((357913942 * v84) >> 32))) = v182;
  if (v230)
  {
    v184 = v217 == 0;
  }

  else
  {
    v184 = 0;
  }

  v185 = !v184;
  if (v184)
  {
    v186 = 1;
  }

  else
  {
    v186 = v108;
  }

  v187 = glpPrimitiveTypeToLLVMType(a1, v186, v177);
  if (v176)
  {
    *&v241 = v187;
    v189 = *a1;
    *(&v241 + 1) = LLVMInt8TypeInContext();
    v190 = *a1;
    v191 = LLVMStructTypeInContext();
    *&v241 = 0x400000001;
    glpLLVMCallFunctionInner(a1, v240, v191, &v233, v84 + 1, &v241, 2u, "");
    v192 = *(a1 + 16);
    Value = LLVMBuildExtractValue();
  }

  else
  {
    *&v241 = 0x400000001;
    Value = glpLLVMCallFunctionInner(a1, v240, v187, &v233, v84 + 1, &v241, 2u, "");
  }

  v193 = Value;
  if (v108 == 1)
  {
    v194 = 1;
  }

  else
  {
    v194 = v185;
  }

  v195 = v219;
  if ((v194 & 1) == 0)
  {
    v196 = glpPrimitiveTypeToLLVMType(a1, v108, v177);
    MEMORY[0x23EE85370](v196);
    v197 = *(a1 + 16);
    if (!*(a1 + 520))
    {
      v198 = *(a1 + 40);
      *(a1 + 520) = LLVMConstInt();
    }

    v193 = LLVMBuildInsertElement();
  }

  if (!glpLLVMTypesEqual(a1, v108, v177, v108, v195))
  {
    v199 = glpPrimitiveTypeToLLVMType(a1, v108, v195);
    v193 = glpLLVMBuildConversion(a1, v193, v199, v108, v177, v108, v195);
  }

  v200 = *MEMORY[0x277D85DE8];
  return v193;
}

uint64_t glpBuildTextureSizeOperation(uint64_t *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v55[1] = *MEMORY[0x277D85DE8];
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  SaFlags = glpASTNodeGetSaFlags(a2);
  v10 = glpPrecisionIndexFromSAFlags(SaFlags);
  ChildCount = glpASTNodeGetChildCount(a2);
  Child = glpASTNodeGetChild(a2, ChildCount - 1);
  SaType = glpASTNodeGetSaType(Child);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(PrimitiveType);
  v54 = 0;
  v53 = 0;
  if (a4 == 1)
  {
    v53 = *a3;
    v16 = a1[65];
    if (!v16)
    {
      v17 = a1[5];
      v16 = LLVMConstInt();
      a1[65] = v16;
    }
  }

  else
  {
    v16 = *a3;
    v53 = a3[1];
  }

  v54 = v16;
  if (PPTextarget - 13 < 3)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v49 = glpPrimitiveTypeToLLVMType(a1, ReturnPrimitiveType, v10);
  TextureSize = glpGetTextureSize(PPTextarget, &v51);
  v20 = TextureSize;
  if (PPTextarget <= 0x11 && ((1 << PPTextarget) & 0x30101) != 0)
  {
    v20 = TextureSize - 1;
  }

  memset(v52, 0, sizeof(v52));
  v21 = glpTextureNameFromSamplerType(PrimitiveType);
  snprintf_l(v52, 0x200uLL, 0, "%s%s", "air.get_width_", v21);
  v50 = PrimitiveType;
  if (PPTextarget <= 0x11 && ((1 << PPTextarget) & 0x39E00) != 0)
  {
    v22 = v18;
    v23 = v20 > 1;
    v24 = 1;
  }

  else
  {
    if (v20 <= 1)
    {
      v55[0] = 0x400000001;
      inserted = glpLLVMCallFunctionInner(a1, v52, v49, &v53, v18, v55, 2u, "");
      goto LABEL_25;
    }

    v22 = v18;
    v24 = 0;
    v23 = 1;
  }

  v25 = v20;
  v26 = v49;
  v27 = LLVMGetElementType();
  v55[0] = 0x400000001;
  v28 = glpLLVMCallFunctionInner(a1, v52, v27, &v53, v22, v55, 2u, "");
  v48 = &v46;
  v46 = v24;
  v47 = v25;
  v29 = v25 + v24;
  MEMORY[0x28223BE20](v28);
  v31 = (&v46 - v30);
  bzero(&v46 - v30, v32);
  *v31 = v28;
  v33 = v22;
  inserted = MEMORY[0x23EE85370](v26);
  if (v23)
  {
    v35 = glpTextureNameFromSamplerType(v50);
    snprintf_l(v52, 0x200uLL, 0, "%s%s", "air.get_height_", v35);
    v55[0] = 0x400000001;
    v31[1] = glpLLVMCallFunctionInner(a1, v52, v27, &v53, v33, v55, 2u, "");
  }

  if (v46)
  {
    v36 = glpTextureNameFromSamplerType(v50);
    snprintf_l(v52, 0x200uLL, 0, "%s%s", "air.get_array_size_", v36);
    v55[0] = 0x400000001;
    v37 = glpLLVMCallFunctionInner(a1, v52, v27, &v53, v33, v55, 2u, "");
    v31[v47] = v37;
  }

  else if (v47 >= 3)
  {
    v38 = glpTextureNameFromSamplerType(v50);
    snprintf_l(v52, 0x200uLL, 0, "%s%s", "air.get_depth_", v38);
    v55[0] = 0x400000001;
    v31[2] = glpLLVMCallFunctionInner(a1, v52, v27, &v53, v33, v55, 2u, "");
  }

  if (v29)
  {
    v39 = 0;
    v40 = a1 + 65;
    do
    {
      if (!v40[v39])
      {
        v41 = a1[5];
        v40[v39] = LLVMConstInt();
      }

      v42 = a1[2];
      v43 = v31[v39];
      inserted = LLVMBuildInsertElement();
      ++v39;
    }

    while (v29 != v39);
  }

LABEL_25:
  v44 = *MEMORY[0x277D85DE8];
  return inserted;
}

uint64_t glpLLVMBuildRefract(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v34 = *a2;
  v9 = a2[2];
  v10 = *(a3 + 4);
  v33 = a2[1];
  if (glpPrimitiveTypeGetCategory(*(a3 + 4)) == 2)
  {
    Length = glpPrimitiveVectorGetLength(v10);
    v12 = LLVMTypeOf();
    v32 = Length;
    if (Length >= 2)
    {
      v12 = LLVMGetElementType();
    }
  }

  else
  {
    v12 = LLVMTypeOf();
    v32 = 1;
  }

  v13 = glpLLVMGetTypeString(&v37, *a3, a4);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
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
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *v38 = 0u;
  v39 = 0u;
  snprintf_l(v38, 0x200uLL, 0, "%s.%s", "air.dot", v13);
  v70[0] = 0x300000001;
  glpLLVMCallFunctionInner(a1, v38, v12, a2, 2u, v70, 2u, "");
  v14 = a1[2];
  LLVMBuildFMul();
  llvm::ConstantFP::get();
  v15 = a1[2];
  LLVMBuildFMul();
  v16 = a1[2];
  LLVMBuildFSub();
  v17 = a1[2];
  LLVMBuildFMul();
  v18 = a1[2];
  v36 = LLVMBuildFSub();
  v19 = a1[2];
  MEMORY[0x23EE85200](v12);
  LLVMBuildFCmp();
  if (a4)
  {
    v20 = a4 == 3;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = "air.fast_sqrt";
  }

  else
  {
    v21 = "air.sqrt";
  }

  v22 = glpLLVMGetTypeString(&v37, *(a3 + 8), a4);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
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
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *v38 = 0u;
  v39 = 0u;
  snprintf_l(v38, 0x200uLL, 0, "%s.%s", v21, v22);
  v70[0] = 0x300000001;
  glpLLVMCallFunctionInner(a1, v38, v12, &v36, 1u, v70, 2u, "");
  v23 = a1[2];
  LLVMBuildFMul();
  v24 = a1[2];
  v25 = LLVMBuildFAdd();
  glpLLVMSplatElement(a1, v25, v32);
  v26 = a1[2];
  glpLLVMSplatElement(a1, v9, v32);
  LLVMBuildFMul();
  v27 = a1[2];
  LLVMBuildFMul();
  v28 = a1[2];
  LLVMBuildFSub();
  v29 = a1[2];
  MEMORY[0x23EE85200](a5);
  result = LLVMBuildSelect();
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildDistance(uint64_t *a1, uint64_t *a2, int *a3, int a4, uint64_t a5)
{
  v9 = a1[2];
  v11 = *a2;
  v10 = a2[1];
  v13 = LLVMBuildFSub();
  return glpLLVMBuildLength(a1, &v13, a3, a4, a5);
}

uint64_t glpLLVMf32Extend(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4 || a4 == 3)
  {
    return a2;
  }

  v7 = *a1;
  v8 = LLVMFloatTypeInContext();
  if (glpPrimitiveTypeGetCategory(a3) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a3);
    MEMORY[0x23EE854F0](v8, Length);
  }

  v10 = a1[2];

  return LLVMBuildFPCast();
}

uint64_t glpLLVMSplatConstantVector(uint64_t a1, int a2)
{
  v2 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  if (a2 != 1)
  {
    MEMORY[0x28223BE20](a1);
    v5 = v15 - v4;
    bzero(v15 - v4, v6);
    if (a2 >= 1)
    {
      v7 = (a2 + 1) & 0xFFFFFFFE;
      v8 = vdupq_n_s64(a2 - 1);
      v9 = xmmword_23A300E20;
      v10 = (v5 + 8);
      v11 = vdupq_n_s64(2uLL);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v8, v9));
        if (v12.i8[0])
        {
          *(v10 - 1) = v2;
        }

        if (v12.i8[4])
        {
          *v10 = v2;
        }

        v9 = vaddq_s64(v9, v11);
        v10 += 2;
        v7 -= 2;
      }

      while (v7);
    }

    v2 = LLVMConstVector();
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t glpBuildGetLODOperation(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = a2;
  v43[1] = *MEMORY[0x277D85DE8];
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  SaFlags = glpASTNodeGetSaFlags(v6);
  v10 = glpPrecisionIndexFromSAFlags(SaFlags);
  v41 = 0u;
  v42 = 0u;
  *v39 = 0u;
  v40 = 0u;
  v11 = 1;
  Child = glpASTNodeGetChild(v6, 1u);
  SaType = glpASTNodeGetSaType(Child);
  LODWORD(v6) = glpPrimitiveTypeGetPrimitiveType(SaType);
  v14 = glpTextureNameFromSamplerType(v6);
  snprintf_l(v39, 0x40uLL, 0, "air.compute_lod_%s", v14);
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(v6);
  TextureSize = glpGetTextureSize(PPTextarget, &v35);
  v17 = *a3;
  v18 = *a4;
  Category = glpPrimitiveTypeGetCategory(v18);
  if (Category == 2)
  {
    Category = glpPrimitiveVectorGetLength(v18);
    v11 = Category;
  }

  if (TextureSize != v11)
  {
    MEMORY[0x28223BE20](Category);
    v21 = &v34[-v20];
    bzero(&v34[-v20], v22);
    v23 = 0;
    v24 = a1 + 65;
    do
    {
      v25 = v24[v23];
      if (!v25)
      {
        v26 = a1[5];
        v25 = LLVMConstInt();
        v24[v23] = v25;
      }

      *&v21[8 * v23++] = v25;
    }

    while (TextureSize != v23);
    LLVMConstVector();
    v27 = a1[2];
    v28 = *a3;
    v29 = LLVMTypeOf();
    MEMORY[0x23EE85370](v29);
    v17 = LLVMBuildShuffleVector();
  }

  v36 = *(a3 + 8);
  v37 = v17;
  v30 = a1[8];
  v38 = LLVMConstInt();
  v31 = glpPrimitiveTypeToLLVMType(a1, ReturnPrimitiveType, v10);
  v43[0] = 0x400000001;
  result = glpLLVMCallFunctionInner(a1, v39, v31, &v36, 4u, v43, 2u, "");
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMGetVariablePointer(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 144);
  v3 = *v2;
  if (*v2 && (*(a2 + 51) & 0x86) != 0)
  {
    v3 = glpPointerHashGet(*(a1 + 344), a2);
    if (!v3)
    {
      if (*(a1 + 324))
      {
        v6 = *v2;
        LLVMGetElementType();
        v7 = glpBuildAlloca(a1);
      }

      else
      {
        glpPointerHashGet(*(a1 + 336), a2);
        v9 = *(a1 + 160);
        v7 = LLVMGetParam();
      }

      v3 = v7;
      glpPointerHashPut(*(a1 + 344), a2, v7, v8);
    }

    if ((*(v2 + 32) & 4) != 0)
    {
      v10 = *(a1 + 584);
      LLVMBuildLoad();
      if (!*(a1 + 520))
      {
        v11 = *(a1 + 40);
        *(a1 + 520) = LLVMConstInt();
      }

      v3 = LLVMBuildGEP();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t glpBuildInterpolateAt(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 144);
  v11 = *(v10 + 24);
  v12 = *(v10 + 28);
  v13 = glpPrimitiveTypeToLLVMType(a1, v11, v12);
  v53 = LLVMBuildLoad();
  v14 = a4 & 0x46000800000;
  if ((a4 & 0x46000800000uLL) > 0x3FFFFFFFFFLL)
  {
    if ((a4 & 0x46000800000uLL) > 0x3FFFFFFFFFFLL)
    {
      if (v14 == 0x40000000000)
      {
        v15 = "air.interpolate_sample_perspective";
      }

      else
      {
        if (v14 != 0x42000000000)
        {
          goto LABEL_24;
        }

        v15 = "air.interpolate_sample_no_perspective";
      }
    }

    else if (v14 == 0x4000000000)
    {
      v15 = "air.interpolate_centroid_perspective";
    }

    else
    {
      if (v14 != 0x6000000000)
      {
        goto LABEL_24;
      }

      v15 = "air.interpolate_centroid_no_perspective";
    }
  }

  else if ((a4 & 0x46000800000uLL) > 0x1FFFFFFFFFLL)
  {
    if (v14 == 0x2000000000)
    {
      v15 = "air.interpolate_center_no_perspective";
    }

    else
    {
      if (v14 != 0x2000800000)
      {
        goto LABEL_24;
      }

      v15 = "air.interpolate_offset_no_perspective";
    }
  }

  else
  {
    if (v14)
    {
      if (v14 == 0x800000)
      {
        v15 = "air.interpolate_offset_perspective";
        goto LABEL_20;
      }

LABEL_24:
      abort();
    }

    v15 = "air.interpolate_center_perspective";
  }

LABEL_20:
  v54 = 0;
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
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  snprintf_l(v21, 0x200uLL, 0, "%s%s", v15, a5);
  if (a6)
  {
    v54 = a6;
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = glpLLVMGetTypeString(&v20, v11, v12);
  memset(v55, 0, sizeof(v55));
  snprintf_l(v55, 0x200uLL, 0, "%s.%s", v21, v17);
  v56[0] = 0x300000001;
  result = glpLLVMCallFunctionInner(a1, v55, v13, &v53, v16, v56, 2u, "");
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpCGSwizzle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v117 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    goto LABEL_107;
  }

  Category = glpPrimitiveTypeGetCategory(a5);
  v13 = Category;
  v14 = a6 & 7;
  if (!a2)
  {
    MEMORY[0x28223BE20](Category);
    v46 = (v113 - v45);
    bzero(v113 - v45, v47);
    if ((a6 & 7) == 0)
    {
      goto LABEL_47;
    }

    v115 = a4;
    v116 = v113;
    v48 = 0;
    v49 = a1 + 520;
    v50 = 3;
    do
    {
      v51 = (a6 >> v50) & 3;
      v52 = *(v49 + 8 * v51);
      if (!v52)
      {
        v53 = *(a1 + 40);
        v52 = LLVMConstInt();
        *(v49 + 8 * v51) = v52;
      }

      v46[v48] = v52;
      v50 += 2;
      ++v48;
    }

    while (v14 != v48);
    a4 = v115;
    if (v14 == 1)
    {
      if (v13 != 2)
      {
        goto LABEL_107;
      }

      v54 = *(a1 + 16);
      v55 = *v46;
      Element = LLVMBuildExtractElement();
    }

    else
    {
LABEL_47:
      if (v13 != 2)
      {
        v62 = LLVMTypeOf();
        v63 = MEMORY[0x23EE854F0](v62, a6 & 7);
        v64 = *(a1 + 16);
        MEMORY[0x23EE85370](v63);
        v65 = *v46;
        LLVMBuildInsertElement();
      }

      LLVMConstVector();
      v66 = *(a1 + 16);
      Element = LLVMBuildShuffleVector();
    }

    a4 = Element;
    goto LABEL_107;
  }

  v15 = glpPrimitiveTypeGetCategory(a3);
  if (v13 == 2)
  {
    Length = glpPrimitiveVectorGetLength(a3);
    v17 = Length;
    MEMORY[0x28223BE20](Length);
    v116 = (v113 - v18);
    bzero(v113 - v18, v19);
    MEMORY[0x28223BE20](v20);
    v22 = (v113 - v21);
    bzero(v113 - v21, v23);
    v24 = glpPrimitiveVectorGetLength(a5);
    v114 = Length;
    if (Length == v24)
    {
      if (Length)
      {
        v25 = 0;
        v26 = vdupq_n_s64(Length - 1);
        v27 = xmmword_23A300E30;
        v28 = xmmword_23A300E20;
        v29 = v22 + 2;
        v30 = vdupq_n_s64(4uLL);
        do
        {
          v31 = vmovn_s64(vcgeq_u64(v26, v28));
          if (vuzp1_s16(v31, *v26.i8).u8[0])
          {
            *(v29 - 2) = v25;
          }

          if (vuzp1_s16(v31, *&v26).i8[2])
          {
            *(v29 - 1) = v25 + 1;
          }

          if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, *&v27))).i32[1])
          {
            *v29 = v25 + 2;
            v29[1] = v25 + 3;
          }

          v25 += 4;
          v27 = vaddq_s64(v27, v30);
          v28 = vaddq_s64(v28, v30);
          v29 += 4;
        }

        while (((Length + 3) & 0x1FFFFFFFCLL) != v25);
      }

      if ((a6 & 7) != 0)
      {
        v32 = 0;
        v33 = vdupq_n_s32(v14 - 1);
        v34 = xmmword_23A300DF0;
        v35.i64[0] = 0x400000004;
        v35.i64[1] = 0x400000004;
        v36 = Length;
        do
        {
          v37 = vmovn_s32(vcgeq_u32(v33, v34));
          if (v37.i8[0])
          {
            v22[(a6 >> (v32 + 3)) & 3] = v36;
          }

          if (v37.i8[2])
          {
            v22[(a6 >> (v32 + 5)) & 3] = v36 + 1;
          }

          if (v37.i8[4])
          {
            v22[(a6 >> (v32 + 7)) & 3] = v36 + 2;
          }

          if (v37.i8[6])
          {
            v22[(a6 >> (v32 + 9)) & 3] = v36 + 3;
          }

          v34 = vaddq_s32(v34, v35);
          v32 += 8;
          v36 += 4;
        }

        while (((2 * (a6 & 7) + 6) & 0x18) != v32);
      }

      if (Length)
      {
        v38 = a1 + 520;
        v39 = v116;
        do
        {
          v41 = *v22++;
          v40 = v41;
          if (v41 > 7)
          {
            v44 = *(a1 + 40);
            v42 = LLVMConstInt();
          }

          else
          {
            v42 = *(v38 + 8 * v40);
            if (!v42)
            {
              v43 = *(a1 + 40);
              v42 = LLVMConstInt();
              *(v38 + 8 * v40) = v42;
            }
          }

          *v39++ = v42;
          --v17;
        }

        while (v17);
      }
    }

    else
    {
      if (Length)
      {
        v67 = (Length + 3) & 0x1FFFFFFFCLL;
        v68 = vdupq_n_s64(Length - 1);
        v69 = xmmword_23A300E30;
        v70 = xmmword_23A300E20;
        v71 = v22 + 2;
        v72 = vdupq_n_s64(4uLL);
        do
        {
          v73 = vmovn_s64(vcgeq_u64(v68, v70));
          if (vuzp1_s16(v73, *v68.i8).u8[0])
          {
            *(v71 - 2) = v14;
          }

          if (vuzp1_s16(v73, *&v68).i8[2])
          {
            *(v71 - 1) = v14;
          }

          if (vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, *&v69))).i32[1])
          {
            *v71 = v14;
            v71[1] = v14;
          }

          v69 = vaddq_s64(v69, v72);
          v70 = vaddq_s64(v70, v72);
          v71 += 4;
          v67 -= 4;
        }

        while (v67);
      }

      if ((a6 & 7) != 0)
      {
        v74 = vdupq_n_s32(v14 - 1);
        v75 = xmmword_23A300DF0;
        v76 = 9;
        v77 = 3;
        v78.i64[0] = 0x400000004;
        v78.i64[1] = 0x400000004;
        do
        {
          v79 = vmovn_s32(vcgeq_u32(v74, v75));
          if (v79.i8[0])
          {
            v22[(a6 >> (v76 - 6)) & 3] = v77 - 3;
          }

          if (v79.i8[2])
          {
            v22[(a6 >> (v76 - 4)) & 3] = v77 - 2;
          }

          if (v79.i8[4])
          {
            v22[(a6 >> (v76 - 2)) & 3] = v77 - 1;
          }

          if (v79.i8[6])
          {
            v22[(a6 >> v76) & 3] = v77;
          }

          v75 = vaddq_s32(v75, v78);
          v76 += 8;
          v77 += 4;
        }

        while (v77 - (((a6 & 7) + 3) & 0xC) != 3);
      }

      v115 = a4;
      v113[0] = v113;
      v113[1] = a2;
      if (Length)
      {
        v80 = a1 + 520;
        Length = Length;
        v81 = v116;
        v82 = v22;
        do
        {
          v84 = *v82++;
          v83 = v84;
          if (v84 > 7)
          {
            v87 = *(a1 + 40);
            v85 = LLVMConstInt();
          }

          else
          {
            v85 = *(v80 + 8 * v83);
            if (!v85)
            {
              v86 = *(a1 + 40);
              v85 = LLVMConstInt();
              *(v80 + 8 * v83) = v85;
            }
          }

          *v81++ = v85;
          --Length;
        }

        while (Length);
      }

      v88 = v114;
      LLVMConstVector();
      v89 = *(a1 + 16);
      v90 = LLVMTypeOf();
      MEMORY[0x23EE85370](v90);
      LLVMBuildShuffleVector();
      if (v88)
      {
        v91 = 0;
        v92 = vdupq_n_s64(v17 - 1);
        v93 = xmmword_23A300E30;
        v94 = xmmword_23A300E20;
        v95 = v22 + 2;
        v96 = vdupq_n_s64(4uLL);
        do
        {
          v97 = vmovn_s64(vcgeq_u64(v92, v94));
          if (vuzp1_s16(v97, *v92.i8).u8[0])
          {
            *(v95 - 2) = v91;
          }

          if (vuzp1_s16(v97, *&v92).i8[2])
          {
            *(v95 - 1) = v91 + 1;
          }

          if (vuzp1_s16(*&v92, vmovn_s64(vcgeq_u64(v92, *&v93))).i32[1])
          {
            *v95 = v91 + 2;
            v95[1] = v91 + 3;
          }

          v91 += 4;
          v93 = vaddq_s64(v93, v96);
          v94 = vaddq_s64(v94, v96);
          v95 += 4;
        }

        while (((v17 + 3) & 0x1FFFFFFFCLL) != v91);
      }

      if ((a6 & 7) != 0)
      {
        v98 = ((a6 & 7) + 3) & 0xC;
        v99 = xmmword_23A300DF0;
        v100 = vdupq_n_s32(v14 - 1);
        v101 = 9;
        v102.i64[0] = 0x400000004;
        v102.i64[1] = 0x400000004;
        do
        {
          v103 = vmovn_s32(vcgeq_u32(v100, v99));
          if (v103.i8[0])
          {
            v22[(a6 >> (v101 - 6)) & 3] = ((a6 >> (v101 - 6)) & 3) + v88;
          }

          if (v103.i8[2])
          {
            v22[(a6 >> (v101 - 4)) & 3] = ((a6 >> (v101 - 4)) & 3) + v88;
          }

          if (v103.i8[4])
          {
            v22[(a6 >> (v101 - 2)) & 3] = ((a6 >> (v101 - 2)) & 3) + v88;
          }

          if (v103.i8[6])
          {
            v22[(a6 >> v101) & 3] = ((a6 >> v101) & 3) + v88;
          }

          v99 = vaddq_s32(v99, v102);
          v101 += 8;
          v98 -= 4;
        }

        while (v98);
      }

      if (v88)
      {
        v104 = a1 + 520;
        v105 = v116;
        do
        {
          v107 = *v22++;
          v106 = v107;
          if (v107 > 7)
          {
            v110 = *(a1 + 40);
            v108 = LLVMConstInt();
          }

          else
          {
            v108 = *(v104 + 8 * v106);
            if (!v108)
            {
              v109 = *(a1 + 40);
              v108 = LLVMConstInt();
              *(v104 + 8 * v106) = v108;
            }
          }

          *v105++ = v108;
          --v17;
        }

        while (v17);
      }
    }

    LLVMConstVector();
    v111 = *(a1 + 16);
    a4 = LLVMBuildShuffleVector();
    goto LABEL_107;
  }

  if (v15 != 2)
  {
LABEL_107:
    v112 = *MEMORY[0x277D85DE8];
    return a4;
  }

  v57 = (a6 >> 3) & 3;
  if (!*(a1 + 520 + 8 * v57))
  {
    v58 = *(a1 + 40);
    *(a1 + 520 + 8 * v57) = LLVMConstInt();
  }

  v59 = *(a1 + 16);
  v60 = *MEMORY[0x277D85DE8];

  return LLVMBuildInsertElement();
}

BOOL glpGetConstantOffset(uint64_t a1, _DWORD *a2)
{
  result = glpIsConstantNode(a1);
  if (result)
  {
    *a2 = *glpConstantNodeGetValue(a1);
    return 1;
  }

  return result;
}

uint64_t glpBuildUniformElementPtr(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v20 = *MEMORY[0x277D85DE8];
  Gep = glpFindGep(a1, a2, a5, a6);
  if (!Gep)
  {
    v12 = a1[5];
    LLVMConstInt();
    v13 = a1[2];
    LLVMGetInsertBlock();
    v14 = a1[2];
    v15 = a1[23];
    LLVMPositionBuilderAtEnd();
    if (a4)
    {
      v16 = a1[2];
      LLVMBuildPointerCast();
    }

    Gep = LLVMBuildGEP();
    v17 = a1[2];
    LLVMPositionBuilderAtEnd();
    glpAddGep(a1, a2, a5, a6, Gep);
  }

  v18 = *MEMORY[0x277D85DE8];
  return Gep;
}

uint64_t glpMakeSwizzle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = 0;
  v12 = &a9;
  LODWORD(result) = 4;
  do
  {
    v11 = v12;
    v12 += 8;
    result = (*v11 << (v9 + 3)) | result & ~(24 << v9);
    v9 += 2;
  }

  while (v9 != 8);
  return result;
}

uint64_t glpFindGep(uint64_t a1, unint64_t a2, int a3, int a4)
{
  result = glpPointerHashGet(*(a1 + 352), a2);
  if (result)
  {
    v7 = *(result + 4);
    if (v7)
    {
      for (i = *(result + 8) + 8; *(i - 4) != a4 || *(i - 8) != a3; i += 16)
      {
        if (!--v7)
        {
          return 0;
        }
      }

      return *i;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *glpAddGep(uint64_t *a1, unint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = glpPointerHashGet(a1[44], a2);
  if (!v10)
  {
    v10 = glpLinkerPoolAlloc(a1[16]);
    v11 = a1[19];
    *v10 = 4;
    *(v10 + 8) = (*(v11 + 8))(*v11, 64, "Vector Storage (GLPGepEntry)");
    glpPointerHashPut(a1[44], a2, v10, v12);
  }

  v13 = *v10;
  v14 = *(v10 + 4);
  if ((v14 + 1) <= *v10)
  {
    v18 = *(v10 + 8);
    v19 = *(v10 + 4);
  }

  else
  {
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v15 = 2 * v13;
    if (v15 <= v14 + 1)
    {
      v16 = v14 + 1;
    }

    else
    {
      v16 = v15;
    }

    v17 = a1[19];
    v18 = (v17[1])(*v17, 16 * v16, "Vector Storage (GLPGepEntry, growth)");
    memcpy(v18, *(v10 + 8), 16 * *(v10 + 4));
    (v17[3])(*v17, *(v10 + 8));
    *v10 = v16;
    *(v10 + 8) = v18;
    v19 = *(v10 + 4);
  }

  result = memmove(&v18[16 * v14 + 16], &v18[16 * v14], 16 * (v19 - v14));
  v21 = *(v10 + 8) + 16 * v14;
  *v21 = a3;
  *(v21 + 4) = a4;
  *(v21 + 8) = a5;
  ++*(v10 + 4);
  return result;
}

uint64_t glpLLVMCGInsertBasicBlock(uint64_t a1)
{
  v2 = *(a1 + 160);
  v3 = LLVMAppendBasicBlock();
  if (*(a1 + 432))
  {
    LLVMMoveBasicBlockBefore();
  }

  return v3;
}

uint64_t glpLLVMSplatScalar(void *a1, uint64_t a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a1[65];
  if (!v5)
  {
    v6 = a1[5];
    v5 = LLVMConstInt();
    a1[65] = v5;
  }

  v7 = LLVMTypeOf();
  v8 = MEMORY[0x23EE854F0](v7, a3);
  MEMORY[0x23EE85370](v8);
  v9 = a1[2];
  inserted = LLVMBuildInsertElement();
  MEMORY[0x28223BE20](inserted);
  v12 = v23 - v11;
  bzero(v23 - v11, v13);
  if (a3)
  {
    v14 = (a3 + 1) & 0x1FFFFFFFELL;
    v15 = vdupq_n_s64(a3 - 1);
    v16 = xmmword_23A300E20;
    v17 = (v12 + 8);
    v18 = vdupq_n_s64(2uLL);
    do
    {
      v19 = vmovn_s64(vcgeq_u64(v15, v16));
      if (v19.i8[0])
      {
        *(v17 - 1) = v5;
      }

      if (v19.i8[4])
      {
        *v17 = v5;
      }

      v16 = vaddq_s64(v16, v18);
      v17 += 2;
      v14 -= 2;
    }

    while (v14);
  }

  LLVMConstVector();
  v20 = a1[2];
  result = LLVMBuildShuffleVector();
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMSplatElement(void *a1, uint64_t a2, uint64_t a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (a3 != 1)
  {
    v6 = LLVMTypeOf();
    v7 = MEMORY[0x23EE854F0](v6, a3);
    MEMORY[0x23EE85370](v7);
    v8 = a1[65];
    if (!v8)
    {
      v9 = a1[5];
      v8 = LLVMConstInt();
      a1[65] = v8;
    }

    v10 = a1[2];
    inserted = LLVMBuildInsertElement();
    MEMORY[0x28223BE20](inserted);
    v13 = v24 - v12;
    bzero(v24 - v12, v14);
    if (a3 >= 1)
    {
      v15 = (a3 + 1) & 0xFFFFFFFE;
      v16 = vdupq_n_s64(a3 - 1);
      v17 = xmmword_23A300E20;
      v18 = (v13 + 8);
      v19 = vdupq_n_s64(2uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v16, v17));
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
        v15 -= 2;
      }

      while (v15);
    }

    LLVMConstVector();
    v21 = a1[2];
    a2 = LLVMBuildShuffleVector();
  }

  v22 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t glpGetTextureSize(int a1, int *a2)
{
  v3 = 0;
  result = 2;
  if (a1 > 7)
  {
    if (a1 > 11)
    {
      if (a1 <= 15)
      {
        if (a1 != 12)
        {
          if (a1 != 13)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        goto LABEL_16;
      }

      if (a1 != 16)
      {
        if (a1 != 17)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

LABEL_20:
      result = 3;
      goto LABEL_24;
    }

    if (a1 == 8)
    {
LABEL_19:
      v3 = 1;
      goto LABEL_20;
    }

    if (a1 != 9)
    {
      if (a1 != 11)
      {
        goto LABEL_24;
      }

LABEL_22:
      v3 = 1;
    }

LABEL_23:
    result = 1;
    goto LABEL_24;
  }

  if (a1 <= 4)
  {
    if (a1 < 2)
    {
      goto LABEL_20;
    }

    if (a1 != 4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((a1 - 5) >= 2)
  {
    if (a1 != 7)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_16:
  v3 = 1;
LABEL_24:
  *a2 = v3;
  return result;
}

char *glpTextureNameFromSamplerType(int a1)
{
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(a1);
  if (PPTextarget >= 0x12)
  {
    abort();
  }

  return (&off_278B4DF38)[PPTextarget];
}

BOOL glpLLVMTypesEqual(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v10 = glpPrimitiveTypeGetScalarType(a2) == 5 || glpPrimitiveTypeGetScalarType(a2) == 36;
  v11 = glpPrimitiveTypeGetScalarType(a4) == 5 || glpPrimitiveTypeGetScalarType(a4) == 36;
  if (glpPrimitiveTypeGetCategory(a2) == 2)
  {
    Length = glpPrimitiveVectorGetLength(a2);
  }

  else
  {
    Length = 1;
  }

  if (glpPrimitiveTypeGetCategory(a4) == 2)
  {
    v13 = glpPrimitiveVectorGetLength(a4);
  }

  else
  {
    v13 = 1;
  }

  if (a2 == a4 || (result = 0, v10 && v11) && Length == v13)
  {
    if (a3 == a5)
    {
      return 1;
    }

    ScalarType = glpPrimitiveTypeGetScalarType(a2);
    v16 = ScalarType;
    if (ScalarType <= 8)
    {
      if (ScalarType == 1)
      {
        v17 = &unk_23A300E40;
        goto LABEL_27;
      }

      if (ScalarType != 5)
      {
        return 0;
      }
    }

    else
    {
      result = 1;
      if (v16 == 9)
      {
        return result;
      }

      if (v16 != 36)
      {
        if (v16 == 62)
        {
          return result;
        }

        return 0;
      }
    }

    v17 = qword_23A300E60;
LABEL_27:
    if (a3 <= 3 && *(a1 + v17[a3]) > 0x10u)
    {
      v18 = 32;
    }

    else
    {
      v18 = 16;
    }

    if (a5 <= 3 && *(a1 + v17[a5]) > 0x10u)
    {
      v19 = 32;
    }

    else
    {
      v19 = 16;
    }

    return v18 == v19;
  }

  return result;
}

uint64_t glpBuildArrayElementPtr(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v21 = *MEMORY[0x277D85DE8];
  if (glpIsConstantNode(a4) && (Value = glpConstantNodeGetValue(a4), !a6))
  {
    v18 = *Value;
    v14 = glpBuildArrayElementPtrCst(a1, a2, a3, *Value);
    if (a5)
    {
      v17 = glpBuildArrayElementPtrCst(a1, a2, a3, v18 + 1);
LABEL_11:
      *a5 = v17;
    }
  }

  else
  {
    if (!a1[65])
    {
      v13 = a1[5];
      a1[65] = LLVMConstInt();
    }

    glpLLVMCGNode(a1, a4, 1);
    v14 = LLVMBuildGEP();
    if (a5)
    {
      v15 = a1[2];
      if (!a1[66])
      {
        v16 = a1[5];
        a1[66] = LLVMConstInt();
      }

      LLVMBuildAdd();
      v17 = LLVMBuildGEP();
      goto LABEL_11;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t glpLLVMLoadVector(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  SourceVariable = glpLoadSourceVariable(a1, a3, a2);
  v13 = glpPrimitiveTypeToLLVMType(a1, a4, a5);
  if (!a6)
  {
    return SourceVariable;
  }

  v14 = v13;
  if (glpLLVMTypesEqual(a1, a6, a7, a4, a5))
  {
    return SourceVariable;
  }

  return glpLLVMUnpackTypeInner(a1, SourceVariable, v14);
}

uint64_t glpBuildArrayElementPtrCst(uint64_t *a1, unint64_t a2, uint64_t a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  Gep = glpFindGep(a1, a2, 0, a4);
  if (!Gep)
  {
    if (!a1[65])
    {
      v8 = a1[5];
      a1[65] = LLVMConstInt();
    }

    v9 = a1[5];
    LLVMConstInt();
    v10 = a1[2];
    LLVMGetInsertBlock();
    v11 = a1[2];
    v12 = a1[23];
    LLVMPositionBuilderAtEnd();
    Gep = LLVMBuildGEP();
    v13 = a1[2];
    LLVMPositionBuilderAtEnd();
    glpAddGep(a1, a2, 0, a4, Gep);
  }

  v14 = *MEMORY[0x277D85DE8];
  return Gep;
}

uint64_t glpLoadSourceVariable(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a3 + 51))
  {
    v8 = glpLayoutObjectFind(*(a3 + 8), 35);
    *__str = 0u;
    v11 = 0u;
    snprintf(__str, 0x1FuLL, "user(slot%u)", *(v8 + 4));
    result = glpBuildInterpolateAt(a1, a2, a3, *(a3 + 48), __str, 0);
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = *MEMORY[0x277D85DE8];

    return LLVMBuildLoad();
  }

  return result;
}

uint64_t glpIsComponentAssigment(uint64_t result, unsigned int ***a2, _DWORD *a3, _DWORD *a4, int *a5, int a6)
{
  if (result)
  {
    v11 = result;
    if (glpASTNodeGetKind(result) == 39)
    {
      Lhs = glpBinaryOperatorNodeGetLhs(v11);
      VariableExtra = glpLValueNodeGetVariableExtra(Lhs);
      result = glpDerefNodeGetOffset(Lhs);
      if (!result)
      {
        return result;
      }

      OffsetExpr = glpOffsetNodeGetOffsetExpr(result);
      if (OffsetExpr)
      {
        v15 = OffsetExpr;
        result = glpIsConstantNode(OffsetExpr);
        if (!result)
        {
          return result;
        }

        v16 = *glpConstantNodeGetValue(v15);
      }

      else
      {
        v16 = 0;
      }

      if (*a2)
      {
        if (*a2 == VariableExtra && !*a3 && *a4 == v16)
        {
LABEL_20:
          result = glpGetVectorSwizzle(Lhs, a5);
          if (result)
          {
            *a2 = VariableExtra;
            *a3 = 0;
            result = 1;
            *a4 = v16;
          }

          return result;
        }
      }

      else
      {
        v17 = *VariableExtra;
        if (!glpTypeGetKind(*VariableExtra))
        {
          PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v17);
          Category = glpPrimitiveTypeGetCategory(PrimitiveType);
          if (Category == 2 || Category == 3 && !a6 && glpPrimitiveTypeGetScalarType(PrimitiveType) != 62)
          {
            goto LABEL_20;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t glpProcessComponentWiseVectorAssignment(uint64_t a1, unsigned int **a2, int a3, uint64_t *a4, unsigned int *a5, int a6, uint64_t a7)
{
  v7 = a7;
  v10 = a3;
  v121 = a2;
  v124 = *MEMORY[0x277D85DE8];
  v11 = (a7 - 1);
  v122 = a1;
  if (a7 >= 1)
  {
    LODWORD(v120) = a6;
    LODWORD(v118) = a3;
    v12 = 0;
    v123 = 0;
    v13 = 1;
    v119 = a7;
    v14 = a7;
    while (1)
    {
      v15 = v13;
      Rhs = glpBinaryOperatorNodeGetRhs(a4[v12]);
      Kind = glpASTNodeGetKind(Rhs);
      if (Kind == 3)
      {
        v13 = v15;
      }

      else
      {
        if (Kind != 81 || (VariableExtra = glpLValueNodeGetVariableExtra(Rhs), glpTypeGetKind(*VariableExtra)) || (*(VariableExtra + 52) & 1) != 0 || (PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*VariableExtra), glpPrimitiveTypeGetCategory(PrimitiveType) != 2) || (Offset = glpDerefNodeGetOffset(Rhs), VectorElementExpr = glpOffsetNodeGetVectorElementExpr(Offset), OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset), glpOffsetNodeGetBankIndex(Offset)) || OffsetExpr || VectorElementExpr)
        {
          do
          {
            v27 = *a4++;
            v26 = v27;
            if (v120)
            {
              v28 = v11 == 0;
            }

            else
            {
              v28 = 0;
            }

            v29 = v28;
            v30 = glpLLVMCGNode(v122, v26, v29);
            --v11;
            --v14;
          }

          while (v14);
          inserted = v30;
          goto LABEL_110;
        }

        v13 = 0;
        v23 = v123 == VariableExtra || v123 == 0;
        if (v23 && (v15 & 1) != 0)
        {
          glpOffsetNodeGetSwizzle(Offset);
          v13 = 1;
          v123 = VariableExtra;
        }
      }

      if (++v12 >= v14)
      {
        v24 = v13 == 0;
        v25 = v122;
        v7 = v119;
        v10 = v118;
        goto LABEL_30;
      }
    }
  }

  v25 = a1;
  v123 = 0;
  v24 = 0;
LABEL_30:
  v32 = glpLLVMGetVariablePointer(v25, v121);
  v33 = *v121;
  v34 = glpTypeGetKind(*v121);
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v36 = glpPrimitiveTypeGetPrimitiveType(v33);
    Category = glpPrimitiveTypeGetCategory(v36);
    if (Category == 3)
    {
      ColumnType = glpPrimitiveMatrixGetColumnType(v36);
      Length = glpPrimitiveVectorGetLength(ColumnType);
      v40 = v10;
      v35 = Length;
      v34 = glpBuildArrayElementPtrCst(v25, v121, v32, v40);
      v32 = v34;
    }

    else
    {
      if (Category != 2)
      {
        abort();
      }

      v34 = glpPrimitiveVectorGetLength(v36);
      v35 = v34;
    }
  }

  v120 = v32;
  if (v35 != v7)
  {
    goto LABEL_45;
  }

  if (v7 < 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = 0;
    v42 = v7 - 1;
    do
    {
      v43 = 1 << a5[v42];
      if ((v43 & v41) != 0)
      {
        a4[v42] = 0;
      }

      v41 |= v43;
      v44 = v42-- + 1;
    }

    while (v44 > 1);
  }

  if ((((v41 ^ (-1 << v7)) == -1) & ~v24) != 0)
  {
    v54 = v7;
    MEMORY[0x28223BE20](v34);
    v56 = (v117 - v55);
    bzero(v117 - v55, 8 * v7);
    if (v7 < 1)
    {
      v58 = 0;
    }

    else
    {
      v58 = 0;
      v59 = v7;
      do
      {
        v57 = *a4;
        if (*a4)
        {
          v60 = glpBinaryOperatorNodeGetRhs(v57);
          v56[*a5] = v60;
          v57 = glpASTNodeGetKind(v60);
          if (v57 == 3)
          {
            ++v58;
          }
        }

        ++a5;
        ++a4;
        --v59;
      }

      while (v59);
    }

    v61 = 8 * v7;
    if (v58 == v7)
    {
      MEMORY[0x28223BE20](v57);
      bzero(v117 - ((v61 + 15) & 0xFFFFFFFF0), 8 * v7);
      v62 = v122;
      if (v7)
      {
        v63 = (v117 - ((v61 + 15) & 0xFFFFFFFF0));
        do
        {
          v64 = *v56++;
          *v63++ = glpLLVMCGNode(v62, v64, 0);
          --v54;
        }

        while (v54);
      }

      LLVMConstVector();
    }

    else
    {
      v117[4] = v117;
      v65 = v122;
      v66 = v123;
      v67 = glpLLVMGetVariablePointer(v122, v123);
      SourceVariable = glpLoadSourceVariable(v65, v67, v66);
      v69 = LLVMTypeOf();
      v117[3] = v117;
      MEMORY[0x28223BE20](v69);
      bzero(v117 - ((v61 + 15) & 0xFFFFFFFF0), 8 * v7);
      v121 = (v117 - ((v61 + 15) & 0xFFFFFFFF0));
      bzero(v121, 8 * v7);
      v70 = glpPrimitiveTypeGetPrimitiveType(*v66);
      v71 = glpPrimitiveVectorGetLength(v70);
      v72 = MEMORY[0x23EE85370](v69);
      v73 = 0;
      v123 = v71;
      v119 = v7;
      if (v58 && v71 >= v58)
      {
        v117[1] = v117;
        v117[2] = SourceVariable;
        MEMORY[0x28223BE20](v72);
        v74 = v7;
        v76 = (v117 - v75);
        bzero(v117 - v75, v77);
        if (v74)
        {
          v78 = 0;
          v79 = v121;
          v118 = (v122 + 65);
          v80 = v54;
          v81 = v56;
          do
          {
            v82 = *v81;
            if (glpASTNodeGetKind(*v81) == 3)
            {
              v83 = v122;
              v76[v78] = glpLLVMCGNode(v122, v82, 0);
              v84 = (v78 + v123);
              if (v84 > 7)
              {
                v87 = *(v83 + 40);
                v85 = LLVMConstInt();
              }

              else
              {
                v85 = *(v118 + 8 * v84);
                if (!v85)
                {
                  v86 = v122[5];
                  v85 = LLVMConstInt();
                  *(v118 + 8 * v84) = v85;
                }
              }

              *v79 = v85;
              ++v78;
            }

            ++v79;
            ++v81;
            --v80;
          }

          while (v80);
        }

        v88 = v123 - v58;
        if (v123 > v58)
        {
          v89 = v58;
          do
          {
            v90 = *v76;
            v91 = LLVMTypeOf();
            v76[v89++] = MEMORY[0x23EE85370](v91);
            --v88;
          }

          while (v88);
        }

        LODWORD(v71) = v123;
        v72 = LLVMConstVector();
        v73 = 1;
        LODWORD(v7) = v119;
      }

      v118 = v72;
      if (v7)
      {
        v92 = 0;
        v93 = (2 * v71 - 1);
        v94 = 2 * v71 - 1;
        v95 = v122 + 65;
        do
        {
          v96 = v56[v92];
          if (glpASTNodeGetKind(v96) == 81)
          {
            v97 = glpDerefNodeGetOffset(v96);
            v98 = (glpOffsetNodeGetSwizzle(v97) >> 3) & 3;
            v99 = v95[v98];
            if (!v99)
            {
              v100 = v122[5];
              v99 = LLVMConstInt();
              v95[v98] = v99;
            }

            v121[v92] = v99;
            if (v92 != v98)
            {
              v73 = 1;
            }
          }

          else if (!v121[v92])
          {
            if (v94 > 7)
            {
              v103 = v122[5];
              v101 = LLVMConstInt();
            }

            else
            {
              v101 = v95[v93];
              if (!v101)
              {
                v102 = v122[5];
                v101 = LLVMConstInt();
                v95[v93] = v101;
              }
            }

            v121[v92] = v101;
            v73 = 1;
          }

          ++v92;
        }

        while (v54 != v92);
      }

      v104 = v119;
      v105 = v123;
      if (v73 || v123 != v119)
      {
        LLVMConstVector();
        v106 = v122[2];
        LLVMBuildShuffleVector();
      }

      if (v58 && v105 < v58 && v104)
      {
        v107 = 0;
        do
        {
          v108 = v56[v107];
          if (glpASTNodeGetKind(v108) == 3)
          {
            v109 = v122;
            glpLLVMCGNode(v122, v108, 0);
            v110 = *(v109 + 16);
            if (v107 > 7)
            {
              v113 = *(v109 + 40);
              LLVMConstInt();
            }

            else
            {
              v111 = v109 + 8 * v107;
              if (!*(v111 + 520))
              {
                v112 = v122[5];
                *(v111 + 520) = LLVMConstInt();
              }
            }

            LLVMBuildInsertElement();
          }

          ++v107;
        }

        while (v54 != v107);
      }
    }

    v114 = v122[2];
    LLVMBuildStore();
    inserted = 0;
  }

  else
  {
LABEL_45:
    inserted = LLVMBuildLoad();
    if (v7 >= 1)
    {
      v45 = v25 + 65;
      v46 = v7;
      do
      {
        v47 = glpBinaryOperatorNodeGetRhs(*a4);
        glpLLVMCGNode(v25, v47, 1);
        v48 = v25[2];
        v50 = *a5++;
        v49 = v50;
        if (v50 > 7)
        {
          v52 = v25[5];
          LLVMConstInt();
        }

        else if (!v45[v49])
        {
          v51 = v25[5];
          v45[v49] = LLVMConstInt();
        }

        inserted = LLVMBuildInsertElement();
        ++a4;
        --v46;
      }

      while (v46);
    }

    v53 = v25[2];
    LLVMBuildStore();
  }

LABEL_110:
  v115 = *MEMORY[0x277D85DE8];
  return inserted;
}

uint64_t glpGetVectorSwizzle(uint64_t a1, int *a2)
{
  result = glpDerefNodeGetOffset(a1);
  if (result)
  {
    v4 = result;
    if (glpOffsetNodeGetVectorElementExpr(result))
    {
      return 0;
    }

    Swizzle = glpOffsetNodeGetSwizzle(v4);
    if ((Swizzle & 7) != 1)
    {
      return 0;
    }

    else
    {
      *a2 = (Swizzle >> 3) & 3;
      return 1;
    }
  }

  return result;
}

uint64_t *glpLLVMCGGlobalVariable(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 52) & 0x980) != 0)
  {
    *(a1 + 326) = 1;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    v15 = 0;
    v16 = 0;
LABEL_41:
    v31 = glpPrecisionIndexFromSAFlags(*(a2 + 48));
    v32 = glpTypeToLLVMTypeWithUnderlying(a1, *a2, v31, a2);
    v33 = *(a2 + 8);
    if (v33)
    {
      v34 = glpLayoutObjectFind(v33, 83) == 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = *(a1 + 320);
    switch(v35)
    {
      case 3:
        if ((v16 & v34) != 1)
        {
          goto LABEL_58;
        }

        v36 = 0;
        v38 = *(a1 + 792);
        break;
      case 2:
        if (!v16)
        {
          goto LABEL_58;
        }

        v36 = 0;
        *(*(a1 + 128) + 320);
        if ((*(a2 + 53) & 2) != 0 || !v34)
        {
          v37 = 0;
LABEL_60:
          result = MEMORY[0x23EE85440](v32, v36);
          v39 = *(a2 + 144);
          *v39 = result;
          *(v39 + 32) = *(v39 + 32) & 0xFFFFFFFB | v37;
          return result;
        }

        break;
      case 1:
        if (v15)
        {
          v36 = 3;
        }

        else
        {
          v36 = 0;
        }

        if (v16 & v34)
        {
          break;
        }

LABEL_59:
        v37 = 0;
        goto LABEL_60;
      default:
LABEL_58:
        v36 = 0;
        goto LABEL_59;
    }

    v32 = LLVMArrayType();
    v37 = 4;
    goto LABEL_60;
  }

  v5 = glpLayoutObjectFind(v4, 33);
  if (v5)
  {
    v6 = *(v5 + 4);
    switch(v6)
    {
      case 5:
        v7 = (a1 + 692);
        v8 = *(a1 + 692);
        v17 = *(a1 + 688);
        if (v8 + 1 <= v17)
        {
          v21 = *(a1 + 696);
          v22 = *(a1 + 692);
        }

        else
        {
          if (v17 <= 1)
          {
            v17 = 1;
          }

          v18 = 2 * v17;
          if (v18 <= v8 + 1)
          {
            v19 = v8 + 1;
          }

          else
          {
            v19 = v18;
          }

          v20 = *(a1 + 152);
          v21 = (v20[1])(*v20, 8 * v19, "Vector Storage (GLPVariableObject *, growth)");
          memcpy(v21, *(a1 + 696), 8 * *(a1 + 692));
          (v20[3])(*v20, *(a1 + 696));
          *(a1 + 688) = v19;
          *(a1 + 696) = v21;
          v22 = *(a1 + 692);
        }

        v29 = (a1 + 696);
        memmove(&v21[8 * v8 + 8], &v21[8 * v8], 8 * (v22 - v8));
        v16 = 0;
        v15 = 1;
        goto LABEL_38;
      case 3:
        if ((~*(a1 + 832) & 3) != 0)
        {
          v7 = (a1 + 692);
          v8 = *(a1 + 692);
          v23 = *(a1 + 688);
          if (v8 + 1 <= v23)
          {
            v27 = *(a1 + 696);
            v28 = *(a1 + 692);
          }

          else
          {
            if (v23 <= 1)
            {
              v23 = 1;
            }

            v24 = 2 * v23;
            if (v24 <= v8 + 1)
            {
              v25 = v8 + 1;
            }

            else
            {
              v25 = v24;
            }

            v26 = *(a1 + 152);
            v27 = (v26[1])(*v26, 8 * v25, "Vector Storage (GLPVariableObject *, growth)");
            memcpy(v27, *(a1 + 696), 8 * *(a1 + 692));
            (v26[3])(*v26, *(a1 + 696));
            *(a1 + 688) = v25;
            *(a1 + 696) = v27;
            v28 = *(a1 + 692);
          }

          v29 = (a1 + 696);
          memmove(&v27[8 * v8 + 8], &v27[8 * v8], 8 * (v28 - v8));
          v15 = 0;
          v16 = 0;
          goto LABEL_38;
        }

        break;
      case 0:
        v7 = (a1 + 676);
        v8 = *(a1 + 676);
        v9 = *(a1 + 672);
        if (v8 + 1 <= v9)
        {
          v13 = *(a1 + 680);
          v14 = *(a1 + 676);
        }

        else
        {
          if (v9 <= 1)
          {
            v9 = 1;
          }

          v10 = 2 * v9;
          if (v10 <= v8 + 1)
          {
            v11 = v8 + 1;
          }

          else
          {
            v11 = v10;
          }

          v12 = *(a1 + 152);
          v13 = (v12[1])(*v12, 8 * v11, "Vector Storage (GLPVariableObject *, growth)");
          memcpy(v13, *(a1 + 680), 8 * *(a1 + 676));
          (v12[3])(*v12, *(a1 + 680));
          *(a1 + 672) = v11;
          *(a1 + 680) = v13;
          v14 = *(a1 + 676);
        }

        v29 = (a1 + 680);
        memmove(&v13[8 * v8 + 8], &v13[8 * v8], 8 * (v14 - v8));
        v15 = 0;
        v16 = 1;
LABEL_38:
        *(*v29 + 8 * v8) = a2;
        ++*v7;
        goto LABEL_39;
    }
  }

  v15 = 0;
  v16 = 0;
LABEL_39:
  result = glpLayoutObjectFind(*(a2 + 8), 46);
  if (!result || (*(result + 4) - 9) >= 2)
  {
    goto LABEL_41;
  }

  return result;
}

uint64_t glpTypeToLLVMTypeWithUnderlying(uint64_t *a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *(a4[18] + 24) = 0;
  }

  Kind = glpTypeGetKind(a2);
  if (Kind >= 2)
  {
    if (Kind > 2)
    {
LABEL_37:
      abort();
    }

LABEL_16:
    v15 = glpLLVMGetAggregateType(a1, a2, a3, a4);
    goto LABEL_20;
  }

  if (!Kind)
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a2);
    if (glpPrimitiveTypeGetCategory(PrimitiveType) != 3 || glpPrimitiveTypeGetScalarType(PrimitiveType) != 62)
    {
      v15 = glpPrimitiveTypeToLLVMType(a1, PrimitiveType, a3);
LABEL_20:
      v17 = v15;
      if (!a4)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (Kind != 1)
  {
    goto LABEL_37;
  }

  ElementCount = glpAggregateTypeGetElementCount(a2);
  v10 = ElementCount;
  if (!ElementCount)
  {
    MEMORY[0x28223BE20](ElementCount);
    goto LABEL_27;
  }

  v11 = 0;
  v12 = 1;
  do
  {
    while (1)
    {
      ElementType = glpAggregateTypeGetElementType(a2, v11);
      if (glpTypeIsAtomic(ElementType))
      {
        break;
      }

      v12 = 0;
      if (++v11 == v10)
      {
        goto LABEL_16;
      }
    }

    v14 = glpPrimitiveTypeGetPrimitiveType(ElementType);
    if ((v14 & 0xFFFFFFFE) == 0x40)
    {
      v12 = 0;
    }

    ++v11;
  }

  while (v11 != v10);
  if (!v12)
  {
    goto LABEL_16;
  }

  MEMORY[0x28223BE20](v14);
  v19 = v33 - v18;
  bzero(v33 - v18, v20);
  v21 = 0;
  do
  {
    v22 = glpAggregateTypeGetElementType(a2, v21);
    ElementFlags = glpAggregateTypeGetElementFlags(a2, v21);
    v24 = glpPrecisionIndexFromSAFlags(ElementFlags);
    *&v19[8 * v21++] = glpTypeToLLVMTypeWithUnderlying(a1, v22, v24, a4);
  }

  while (v10 != v21);
LABEL_27:
  v25 = *a1;
  v17 = LLVMStructTypeInContext();
  if (!a4)
  {
    goto LABEL_33;
  }

LABEL_28:
  v26 = a4[1];
  if (!v26 || (v27 = glpLayoutObjectFind(v26, 34)) == 0)
  {
    v28 = a4[6];
LABEL_35:
    v32 = v28 & 0xFFFFFFFFFEFFFFFFLL;
    a4[6] = v32;
    if ((v32 & 0x1000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v28 = a4[6];
  if (*(v27 + 4) != 28)
  {
    goto LABEL_35;
  }

  if ((v28 & 0x1000000) != 0)
  {
LABEL_32:
    *(a4[18] + 24) = glpPrimitiveTypeGetPrimitiveType(a2);
    v29 = glpLLVMGetNamedTypeInner(a1);
    v17 = MEMORY[0x23EE85440](v29, 1);
  }

LABEL_33:
  v30 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t glpLLVMGetAggregateType(uint64_t *a1, unsigned int *a2, unsigned int a3, uint64_t a4)
{
  v17 = a3;
  v18 = 1;
  v7 = glpLLVMGetMinCommonType(a2, &v18, &v17);
  if (glpTypeGetKind(a2) == 3)
  {
    glpBankTypeGetElementCount(a2);
    ElementType = glpBankTypeGetElementType(a2);
    v9 = glpABIGetTypeSize(0, ElementType, 0);
    glpTypeSizeGetSize(v9);
    if (a4)
    {
LABEL_3:
      v10 = v18;
      VectorType = glpGetVectorType(v7, v18);
      v12 = *(a4 + 144);
      v13 = v17;
      *(v12 + 24) = VectorType;
      *(v12 + 28) = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = glpABIGetTypeSize(0, a2, 0);
    glpTypeSizeGetSize(v14);
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = v17;
  v10 = v18;
LABEL_6:
  v15 = glpPrimitiveTypeToLLVMType(a1, v7, v13);
  if (v10 >= 2)
  {
    MEMORY[0x23EE854F0](v15, v10);
  }

  return LLVMArrayType();
}

uint64_t glpLLVMBuildFunctionType(uint64_t a1, uint64_t a2, int a3, int a4, int a5, char a6)
{
  v87 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v13 = LLVMVoidTypeInContext();
  v14 = v13;
  if ((a6 & 2) != 0)
  {
    v15 = *(a1 + 708);
    if ((a6 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    if ((a6 & 4) != 0)
    {
LABEL_3:
      v16 = *(a1 + 724);
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_6:
  v17 = a5 + a4;
  v18 = *(a1 + 832);
  v20 = (v18 & 2) == 0 || v16 < 1;
  v21 = (v18 & 1) == 0 || v20;
  v22 = (v18 & 1) != 0 && !v20;
  v84 = v21;
  if ((a6 & 8) != 0)
  {
    v23 = *(a1 + 596);
  }

  else
  {
    v23 = 0;
  }

  v83 = a6 & 1;
  v85 = v23;
  v79 = v83 + v17 + v15 + v16 + v22;
  v24 = (v79 + 2 * v23);
  MEMORY[0x28223BE20](v13);
  v86 = &v76 - v25;
  bzero(&v76 - v25, v26);
  if (a3)
  {
    v80 = v17;
    v81 = v24;
    v28 = *(a1 + 676);
    if (v28 >= 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 8 * v28;
      while (1)
      {
        v32 = *(*(a1 + 680) + v29);
        v33 = glpLayoutObjectFind(*(v32 + 8), 34);
        v27 = glpPrecisionIndexFromSAFlags(*(v32 + 48));
        v34 = *(a1 + 320);
        if ((v34 - 1) < 3)
        {
          break;
        }

        if (v34 == 4)
        {
          if (*(v33 + 4) != 24)
          {
            goto LABEL_33;
          }
        }

        else if (!v34)
        {
          v36 = *(v33 + 4);
          if ((v36 - 17) >= 2)
          {
            if (v36 != 28)
            {
              goto LABEL_35;
            }

            v27 = glpTypeToLLVMTypeWithUnderlying(a1, *v32, v27, v32);
            if ((*(a1 + 832) & 1) == 0)
            {
              v27 = MEMORY[0x23EE85440](v27, 1);
            }
          }

          else
          {
            if ((*(a1 + 832) & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_33:
            v27 = glpTypeToLLVMTypeWithUnderlying(a1, *v32, v27, v32);
          }

LABEL_34:
          *&v86[8 * v30++] = v27;
        }

LABEL_35:
        v29 += 8;
        if (v31 == v29)
        {
          goto LABEL_49;
        }
      }

      v35 = *(v32 + 144);
      v27 = *v35;
      if ((*(v35 + 32) & 4) == 0)
      {
        v27 = LLVMGetElementType();
      }

      goto LABEL_34;
    }

    v30 = 0;
LABEL_49:
    if (*(a1 + 804))
    {
      *&v86[8 * v30++] = *(a1 + 40);
    }

    if (*(a1 + 812))
    {
      *&v86[8 * v30++] = *(a1 + 40);
    }

    v45 = *(a1 + 820);
    v82 = v14;
    if (v45)
    {
      *&v86[8 * v30++] = *(a1 + 40);
    }

    v78 = &v76;
    v46 = *(a1 + 692);
    v47 = 8 * v46;
    MEMORY[0x28223BE20](v27);
    v48 = &v76 - ((8 * v46 + 15) & 0xFFFFFFFF0);
    bzero(v48, 8 * v46);
    v77 = v46;
    if (v46 >= 1)
    {
      v49 = 0;
      while (1)
      {
        v50 = *(*(a1 + 696) + v49);
        v51 = glpPrecisionIndexFromSAFlags(*(v50 + 48));
        v52 = *(a1 + 320);
        if (v52 > 1)
        {
          break;
        }

        if (!v52)
        {
          goto LABEL_65;
        }

        if (v52 == 1)
        {
          goto LABEL_64;
        }

LABEL_78:
        v49 += 8;
        if (v47 == v49)
        {
          goto LABEL_79;
        }
      }

      switch(v52)
      {
        case 4:
          if (*(glpLayoutObjectFind(*(v50 + 8), 68) + 4) != 4)
          {
            goto LABEL_76;
          }

          PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v50);
          if (glpPrimitiveTypeGetCategory(PrimitiveType) == 2 && glpPrimitiveVectorGetLength(PrimitiveType) > 3)
          {
            goto LABEL_76;
          }

          ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
          v59 = glpPrimitiveTypeToLLVMType(a1, ScalarType, v51);
          v53 = MEMORY[0x23EE854F0](v59, 4);
          break;
        case 3:
LABEL_64:
          v53 = **(v50 + 144);
          break;
        case 2:
LABEL_65:
          if ((*(a1 + 832) & 1) == 0)
          {
            goto LABEL_76;
          }

          v54 = glpLayoutObjectFind(*(v50 + 8), 69);
          v55 = glpLayoutObjectFind(*(v50 + 8), 70);
          if (v55)
          {
            v56 = *(v55 + 4) == 0;
            if (!v54)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v56 = 1;
            if (!v54)
            {
              goto LABEL_76;
            }
          }

          if (*(v54 + 4) == 5 && v56)
          {
            v53 = glpPrimitiveTypeToLLVMType(a1, 4, v51);
            break;
          }

LABEL_76:
          v53 = glpTypeToLLVMTypeWithUnderlying(a1, *v50, v51, v50);
          break;
        default:
          goto LABEL_78;
      }

      *&v48[v49] = v53;
      goto LABEL_78;
    }

LABEL_79:
    if ((*(a1 + 320) | 2) == 3)
    {
      memcpy(&v86[8 * v30], &v76 - ((v47 + 15) & 0xFFFFFFFF0), v47);
      v60 = 0;
      v17 = v80;
    }

    else
    {
      v17 = v80;
      if (v77)
      {
        v61 = *a1;
        v60 = LLVMStructTypeInContext();
      }

      else
      {
        v60 = 0;
      }
    }

    *(a1 + 200) = v60;
  }

  else
  {
    v37 = *(a2 + 32);
    if (v37)
    {
      v80 = v17;
      v81 = v24;
      v82 = v14;
      v38 = 0;
      for (i = 0; i < v37; ++i)
      {
        v40 = *(a2 + 40);
        v41 = *(v40 + v38);
        if (v41)
        {
          v42 = *(v40 + v38 + 8);
          v43 = *(v42 + 144);
          if (!v43)
          {
            v44 = (*(*(a1 + 152) + 8))(**(a1 + 152), 40, "llvm codegen extra");
            *(v42 + 144) = v44;
            *v44 = 0u;
            *(v44 + 16) = 0u;
            *(v44 + 32) = 0;
            glpLLVMCGGlobalVariable(a1, v42);
            v43 = *(v42 + 144);
            v37 = *(a2 + 32);
          }

          *&v86[((v41 << 32) - 0x100000000) >> 29] = *v43;
        }

        v38 += 24;
      }

      v17 = v80;
    }
  }

  v62 = *a1;
  v63 = LLVMFloatTypeInContext();
  v64 = MEMORY[0x23EE854F0](v63, 4);
  v65 = v64;
  if (v83)
  {
    v66 = MEMORY[0x23EE85440](v64, 2);
    *&v86[8 * v17++] = v66;
  }

  if (v15 >= 1)
  {
    v67 = &v86[8 * v17];
    v17 += v15;
    do
    {
      *v67 = MEMORY[0x23EE85440](v65, 2);
      v67 += 8;
      --v15;
    }

    while (v15);
  }

  if (v16 >= 1)
  {
    v68 = &v86[8 * v17];
    v17 += v16;
    do
    {
      *v68 = MEMORY[0x23EE85440](v65, 1);
      v68 += 8;
      --v16;
    }

    while (v16);
  }

  if ((v84 & 1) == 0)
  {
    v69 = MEMORY[0x23EE85440](*(a1 + 40), 1);
    *&v86[8 * v17] = v69;
  }

  if (v85 >= 1)
  {
    v70 = v85;
    v71 = &v86[8 * v79];
    v72 = &v86[8 * v85 + 8 * v79];
    v73 = (*(a1 + 600) + 24);
    do
    {
      *v71 = *v73;
      v71 += 8;
      *v72 = *(v73 - 1);
      v72 += 8;
      v73 += 6;
      --v70;
    }

    while (v70);
  }

  result = LLVMFunctionType();
  v75 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpMetalGetArgTypeNameFromASTType(char *a1, unsigned int *a2, int a3, int a4)
{
  result = glpTypeGetKind(a2);
  if (!result)
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a2);
    result = glpPrimitiveTypeGetCategory(PrimitiveType);
    if (result > 1)
    {
      if (result == 2)
      {
        glpPrimitiveVectorGetLength(PrimitiveType);
        ElementType = glpPrimitiveVectorGetElementType(PrimitiveType);
        glpScalarTypeGetMetalArgType(ElementType, a3, 0);
        return snprintf_l(a1, 0x200uLL, 0, "%s%u");
      }

      else if (result == 3)
      {
        ColumnType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
        glpPrimitiveMatrixGetColumns(PrimitiveType);
        glpPrimitiveMatrixGetRows(PrimitiveType);
        glpScalarTypeGetMetalArgType(ColumnType, a3, 0);
        return snprintf_l(a1, 0x200uLL, 0, "%s%ux%u");
      }
    }

    else if (result)
    {
      if (result == 1)
      {
        glpScalarTypeGetMetalArgType(PrimitiveType, a3, a4);
        return snprintf_l(a1, 0x200uLL, 0, "%s");
      }
    }

    else
    {

      return snprintf_l(a1, 0x200uLL, 0, "void");
    }
  }

  return result;
}

uint64_t glpLLVMVertexGeometryMetadata(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = glpLayoutObjectFind(*(a2 + 8), 68);
  memset(v56, 0, sizeof(v56));
  if ((*(a1 + 320) | 2) == 3)
  {
    if (a3 > 7)
    {
      v10 = *(a1 + 40);
      v7 = LLVMConstInt();
    }

    else
    {
      v7 = *(a1 + 520 + 8 * a3);
      if (!v7)
      {
        v8 = *(a1 + 40);
        v7 = LLVMConstInt();
        *(a1 + 520 + 8 * a3) = v7;
      }
    }

    *&v56[0] = v7;
    v11 = *a1;
    *(&v56[0] + 1) = LLVMMDStringInContext();
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v12 = *(v6 + 4);
  if (v12 > 10)
  {
    if (v12 <= 13)
    {
      v15 = *a1;
      goto LABEL_43;
    }

    switch(v12)
    {
      case 14:
        v29 = *a1;
        goto LABEL_43;
      case 16:
        v32 = *a1;
        goto LABEL_43;
      case 17:
        v21 = glpLayoutObjectFind(*(a2 + 8), 69);
        v22 = *(a2 + 48);
        v23 = "air.no_perspective";
        if ((v22 & 0x2000000000) == 0)
        {
          v23 = "air.perspective";
        }

        if ((v22 & 0x1000000000) != 0)
        {
          v24 = "air.flat";
        }

        else
        {
          v24 = v23;
        }

        v25 = "air.center";
        if ((v22 & 0x1000000000) == 0)
        {
          if ((v22 & 0x4000000000) != 0)
          {
            v25 = "air.centroid";
          }

          else if ((v22 & 0x40000000000) != 0)
          {
            v25 = "air.sample";
          }
        }

        if ((*(a1 + 320) | 2) == 2)
        {
          v37 = *a1;
          *(v56 + v9) = LLVMMDStringInContext();
          v9 |= 1u;
        }

        if (*(a1 + 832))
        {
          *__str = 0u;
          v55 = 0u;
          v43 = *(v21 + 4);
          v44 = glpLayoutObjectFind(*(a2 + 8), 70);
          if (v44)
          {
            v45 = *(v44 + 4) == 0;
          }

          else
          {
            v45 = 1;
          }

          if (v45 && (v43 & 0xFFFFFFF8) == 8)
          {
            snprintf(__str, 0x1FuLL, "user(tex_coord%u)");
          }

          else if ((*(a2 + 53) & 2) != 0)
          {
            snprintf(__str, 0x1FuLL, "user(patch%u)");
          }

          else
          {
            snprintf(__str, 0x1FuLL, "user(slot%u)");
          }

          v48 = *a1;
          strlen(__str);
          v49 = v9 + 1;
          *(v56 + v9) = LLVMMDStringInContext();
          if (*(a1 + 320) == 1)
          {
            ElementType = *a2;
            if (glpTypeGetKind(ElementType) == 3)
            {
              ElementType = glpBankTypeGetElementType(ElementType);
            }

            *(v56 + v49) = glpLLVMStringMetadata(a1, "air.vec4_size");
            Vec4s = glpTypeGetVec4s(ElementType);
            *(&v56[1] + v9) = glpGetConstantInt32(a1, Vec4s);
            v49 = v9 + 3;
          }

          v47 = v49;
        }

        else
        {
          v38 = *a1;
          *(v56 + v9) = LLVMMDStringInContext();
          v39 = *(v21 + 4);
          if (v39 > 7)
          {
            v46 = *(a1 + 40);
            v40 = LLVMConstInt();
          }

          else
          {
            v40 = *(a1 + 520 + 8 * v39);
            if (!v40)
            {
              v41 = *(a1 + 40);
              v42 = *(v21 + 4);
              v40 = LLVMConstInt();
              *(a1 + 520 + 8 * v39) = v40;
            }
          }

          *(v56 + v9 + 1) = v40;
          v47 = v9 + 2;
        }

        if ((*(a1 + 320) | 2) != 2 || (*(a1 + 832) & 1) == 0)
        {
          v52 = *a1;
          strlen(v24);
          *(v56 + v47) = LLVMMDStringInContext();
          v53 = *a1;
          strlen(v25);
          *(v56 + v47 + 1) = LLVMMDStringInContext();
        }

        break;
    }
  }

  else if (v12 > 4)
  {
    switch(v12)
    {
      case 5:
        v27 = *(glpLayoutObjectFind(*(a2 + 8), 74) + 4);
        v28 = *a1;
        goto LABEL_43;
      case 9:
        *(a1 + 744) |= 4uLL;
        v31 = *a1;
        goto LABEL_43;
      case 10:
        v16 = glpLayoutObjectFind(*(a2 + 8), 75);
        v17 = *a1;
        *(v56 + v9) = LLVMMDStringInContext();
        v18 = *(v16 + 4);
        if (v18 > 7)
        {
          v33 = *(a1 + 40);
          v19 = LLVMConstInt();
        }

        else
        {
          v19 = *(a1 + 520 + 8 * v18);
          if (!v19)
          {
            v20 = *(a1 + 40);
            v19 = LLVMConstInt();
            *(a1 + 520 + 8 * v18) = v19;
          }
        }

        *(v56 + (v9 | 1)) = v19;
        break;
    }
  }

  else
  {
    switch(v12)
    {
      case 1:
        v26 = *a1;
        goto LABEL_43;
      case 3:
        v30 = *a1;
        goto LABEL_43;
      case 4:
        v13 = *(glpLayoutObjectFind(*(a2 + 8), 71) + 4);
        v14 = *a1;
LABEL_43:
        *(v56 + v9) = LLVMMDStringInContext();
        break;
    }
  }

  v34 = *a1;
  result = LLVMMDNodeInContext();
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

const char *glpScalarTypeGetMetalArgType(int a1, int a2, int a3)
{
  if (a3)
  {
    v3 = a1 == 5;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = 36;
  }

  else
  {
    v4 = a1;
  }

  if (v4 <= 8)
  {
    if (v4 == 1)
    {
      v6 = a2 - 1;
      v7 = "float";
      v8 = "half";
    }

    else
    {
      if (v4 != 5)
      {
        goto LABEL_21;
      }

      v6 = a2 - 1;
      v7 = "int";
      v8 = "short";
    }
  }

  else
  {
    if (v4 == 9)
    {
      return "BOOL";
    }

    if (v4 != 36)
    {
      if (v4 == 62)
      {
        return "double";
      }

LABEL_21:
      abort();
    }

    v6 = a2 - 1;
    v7 = "uint";
    v8 = "ushort";
  }

  if (v6 >= 2)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t glpLLVMCGDeclareVariable(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 52) & 0x980) != 0)
  {
    *(a1 + 326) = 1;
  }

  v4 = *(a2 + 144);
  if (v4)
  {
    result = *v4;
    if (*v4)
    {
      return result;
    }
  }

  else
  {
    v6 = (*(*(a1 + 152) + 8))(**(a1 + 152), 40, "llvm codegen extra");
    *(a2 + 144) = v6;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0;
  }

  v7 = *(a2 + 8);
  if ((!v7 || !glpLayoutObjectFind(v7, 28)) && *(a2 + 128))
  {
    v8 = *(a2 + 48);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = glpPrecisionIndexFromSAFlags(v8);
      glpTypeToLLVMTypeWithUnderlying(a1, *a2, v9, a2);
      result = glpBuildAlloca(a1);
      **(a2 + 144) = result;
      return result;
    }

    if ((v8 & 0x100000000) != 0)
    {
      result = 0;
      **(a2 + 144) = 0;
      return result;
    }

    glpLLVMCGGlobalVariable(a1, a2);
  }

  return 0;
}

uint64_t glpIsSimpleComponentAssigment(uint64_t a1, unsigned int ***a2, uint64_t **a3, int *a4, int *a5)
{
  v9 = *a2;
  v15 = 0;
  v16 = v9;
  result = glpIsComponentAssigment(a1, &v16, &v15 + 1, &v15, a4, 1);
  if (result)
  {
    Rhs = glpBinaryOperatorNodeGetRhs(a1);
    if (glpASTNodeGetKind(Rhs) == 81)
    {
      VariableExtra = glpLValueNodeGetVariableExtra(Rhs);
      v13 = VariableExtra;
      if (*a3)
      {
        if (*a3 == VariableExtra)
        {
LABEL_8:
          result = glpGetVectorSwizzle(Rhs, a5);
          if (result)
          {
            *a2 = v16;
            *a3 = v13;
            return 1;
          }

          return result;
        }
      }

      else if (!glpTypeGetKind(*VariableExtra))
      {
        PrimitiveType = glpPrimitiveTypeGetPrimitiveType(*v13);
        if (glpPrimitiveTypeGetCategory(PrimitiveType) == 2)
        {
          goto LABEL_8;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t glpLLVMSharedRawCall(uint64_t a1, char a2, uint64_t a3, unint64_t *a4, int a5)
{
  v5 = a5;
  v43 = *MEMORY[0x277D85DE8];
  if ((a2 & 2) != 0)
  {
    v8 = *(a1 + 708);
    if ((a2 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 0;
    if ((a2 & 4) != 0)
    {
LABEL_3:
      v9 = *(a1 + 724);
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = a2 & 1;
  v11 = *(a1 + 832);
  v13 = (v11 & 2) == 0 || v9 < 1;
  v14 = (v11 & 1) == 0 || v13;
  v42 = a3;
  if ((a2 & 8) != 0)
  {
    v15 = *(a1 + 596);
  }

  else
  {
    v15 = 0;
  }

  v16 = v10 + a5 + v8 + v9 + 2 * v15;
  MEMORY[0x28223BE20](a1);
  v18 = (&v39 - v17);
  bzero(&v39 - v17, v19);
  if (v5 < 1)
  {
    v5 = 0;
  }

  else
  {
    v40 = v14;
    v41 = v15;
    v20 = v10 + v5 + v8 + v9 + 2 * v15;
    v21 = v5;
    v22 = v18;
    do
    {
      v23 = *a4++;
      *v22++ = glpLLVMGetVariablePointer(a1, v23);
      --v21;
    }

    while (v21);
    v16 = v20;
    LOBYTE(v14) = v40;
    v15 = v41;
  }

  v24 = v42;
  if (v10)
  {
    v18[v5++] = *(a1 + 440);
  }

  if (v8 >= 1)
  {
    v25 = *(a1 + 712);
    v26 = &v18[v5];
    v5 += v8;
    v27 = v8;
    do
    {
      v28 = *v25++;
      *v26 = *(v28 + 8);
      v26 += 8;
      --v27;
    }

    while (v27);
  }

  if (v9 >= 1)
  {
    v29 = *(a1 + 728);
    v30 = &v18[v5];
    v5 += v9;
    v31 = v9;
    do
    {
      v32 = *v29++;
      *v30 = *(v32 + 16);
      v30 += 8;
      --v31;
    }

    while (v31);
  }

  if ((v14 & 1) == 0)
  {
    v18[v5++] = *(a1 + 448);
  }

  if (v15 >= 1)
  {
    v33 = (*(a1 + 600) + 8);
    v34 = &v18[v5];
    v35 = v15;
    do
    {
      *v34 = *(v33 - 1);
      v36 = *v33;
      v33 += 6;
      *&v34[8 * v15] = v36;
      v34 += 8;
      --v35;
    }

    while (v35);
  }

  result = glpLLVMBuildFunctionCallInner(a1, *(a1 + 160), v24, v18, v16);
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMReadUniform(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  ScalarType = glpPrimitiveTypeGetScalarType(a4);
  if (ScalarType == 9)
  {
    v10 = a1[5];
    if (glpPrimitiveTypeGetCategory(a4) != 2)
    {
      goto LABEL_13;
    }

    Length = glpPrimitiveVectorGetLength(a4);
    v12 = MEMORY[0x23EE854F0](v10, Length);
LABEL_12:
    v10 = v12;
LABEL_13:
    MEMORY[0x23EE85440](v10, 2);
    v16 = a1[2];
    LLVMBuildPointerCast();
    LLVMBuildLoad();
    glpPrimitiveTypeToLLVMType(a1, a4, a5);
    if (ScalarType == 9)
    {
      v17 = a1[2];
      MEMORY[0x23EE85200](v10);

      return LLVMBuildICmp();
    }

    else
    {
      v18 = a1[2];
      if (ScalarType == 1)
      {

        return LLVMBuildFPCast();
      }

      else
      {

        return LLVMBuildIntCast();
      }
    }
  }

  if (a5 != 3 && a5)
  {
    v12 = glpPrimitiveTypeToLLVMType(a1, a4, 3);
    goto LABEL_12;
  }

  v13 = glpPrimitiveTypeToLLVMType(a1, a4, a5);
  MEMORY[0x23EE85440](v13, 2);
  if (a3 != a4)
  {
    v14 = a1[2];
    LLVMBuildPointerCast();
  }

  return LLVMBuildLoad();
}

uint64_t glpLLVMCGWriteVertexOutput(uint64_t result, unint64_t a2)
{
  if ((~*(result + 832) & 3) != 0)
  {
    v3 = result;
    if (!*(result + 208))
    {
      *(result + 208) = MEMORY[0x23EE85370](*(result + 200));
    }

    v4 = *(v3 + 692);
    if (v4 >= 1)
    {
      v5 = 0;
      while (*(*(v3 + 696) + 8 * v5) != a2)
      {
        if (v4 == ++v5)
        {
          v6 = *(v3 + 692);
          break;
        }
      }
    }

    glpLLVMGetVariablePointer(v3, a2);
    v7 = glpPrecisionIndexFromSAFlags(*(a2 + 48));
    v8 = glpTypeToLLVMTypeWithUnderlying(v3, *a2, v7, a2);
    MEMORY[0x23EE85440](v8, 0);
    v9 = *(v3 + 16);
    LLVMBuildPointerCast();
    LLVMBuildLoad();
    if ((*(v3 + 832) & 1) == 0)
    {
      goto LABEL_18;
    }

    v10 = glpLayoutObjectFind(*(a2 + 8), 69);
    v11 = glpLayoutObjectFind(*(a2 + 8), 70);
    if (v11)
    {
      v12 = *(v11 + 4) == 0;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 1;
      if (!v10)
      {
LABEL_18:
        v16 = *(v3 + 16);
        v17 = *(v3 + 208);
        result = LLVMBuildInsertValue();
        *(v3 + 208) = result;
        return result;
      }
    }

    if (*(v10 + 4) == 5 && v12)
    {
      v13 = *(v3 + 16);
      v14 = MEMORY[0x23EE854F0](v8, 4);
      MEMORY[0x23EE85370](v14);
      if (!*(v3 + 520))
      {
        v15 = *(v3 + 40);
        *(v3 + 520) = LLVMConstInt();
      }

      LLVMBuildInsertElement();
    }

    goto LABEL_18;
  }

  return result;
}

void _glpSetCrashLogMessage(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    _glpSetCrashLogMessage_cold_1(a1);
  }
}

void glpSetCrashLogMessagef(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  os_unfair_lock_lock(&message_lock);
  vsnprintf_l(message, 0x400uLL, 0, a1, &a9);
  os_unfair_lock_unlock(&message_lock);
  _glpSetCrashLogMessage(message);
}

uint64_t glpMangleNameLLVM(int a1, char *a2, size_t a3, char *__s, uint64_t a5, uint64_t *a6, unsigned int *a7, int a8)
{
  LODWORD(v8) = a8;
  v14 = strlen(__s);
  result = snprintf_l(a2, a3, 0, "_Z%d%s", v14, __s);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  if (v8)
  {
    v16 = result;
    v8 = v8;
    v17 = a7;
    do
    {
      if (a7)
      {
        v18 = *v17;
        if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v18 = 0;
        if ((v16 & 0x80000000) == 0)
        {
LABEL_7:
          if (a3 > v16)
          {
            result = glpMangleTypeName(&a2[v16], a3 - v16, *a6, v18, v19);
            v16 += result & ~(result >> 31);
          }
        }
      }

      ++v17;
      ++a6;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t glpMangleTypeName(char *a1, size_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v10 = LLVMGetTypeKind();
  result = 0xFFFFFFFFLL;
  if (v10 <= 7)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        v17 = "h";
      }

      else
      {
        if (v10 != 2)
        {
          return result;
        }

        v17 = "f";
      }
    }

    else
    {
      v17 = "v";
    }

    goto LABEL_30;
  }

  if (v10 > 11)
  {
    if (v10 == 12)
    {
      v27 = snprintf_l(a1, a2, 0, "P");
LABEL_37:
      if ((v27 & 0x80000000) == 0)
      {
        v28 = v27;
        if (a2 > v27)
        {
          v29 = LLVMGetElementType();
          v30 = glpMangleTypeName(&a1[v28], a2 - v28, v29, a4, a5);
          if ((v30 & 0x80000000) == 0)
          {
            return v30 + v28;
          }
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (v10 != 13)
    {
      return result;
    }

    if (LLVMGetTypeKind() == 13)
    {
      LLVMGetElementType();
      v18 = LLVMGetTypeKind();
      v19 = LLVMGetVectorSize();
      LODWORD(v20) = *a5;
      if (*a5 >= 1)
      {
        v21 = v19;
        v22 = 0;
        while (1)
        {
          v23 = &a5[2 * v22];
          v24 = *(v23 + 1);
          LLVMGetElementType();
          if (v18 == LLVMGetTypeKind())
          {
            v25 = *(v23 + 1);
            if (v21 == LLVMGetVectorSize() && a5[v22 + 42] == a4)
            {
              break;
            }
          }

          ++v22;
          v20 = *a5;
          if (v22 >= v20)
          {
            goto LABEL_34;
          }
        }

        if (v22)
        {
          return snprintf_l(a1, a2, 0, "S%d_");
        }

        v17 = "S_";
        goto LABEL_30;
      }
    }

    else
    {
      LODWORD(v20) = *a5;
LABEL_34:
      if (v20 > 19)
      {
        goto LABEL_36;
      }
    }

    *&a5[2 * v20 + 2] = a3;
    a5[v20 + 42] = a4;
    ++*a5;
LABEL_36:
    LLVMGetVectorSize();
    v27 = snprintf_l(a1, a2, 0, "Dv%d_");
    goto LABEL_37;
  }

  if (v10 == 8)
  {
    v26 = LLVMGetIntTypeWidth();
    if (v26 == 16)
    {
      if (a4 == 2)
      {
        v17 = "t";
      }

      else
      {
        v17 = "s";
      }
    }

    else if (v26 == 1)
    {
      v17 = "b";
    }

    else if (a4 == 2)
    {
      v17 = "j";
    }

    else
    {
      v17 = "i";
    }

LABEL_30:

    return snprintf_l(a1, a2, 0, v17);
  }

  if (v10 != 10)
  {
    return result;
  }

  v12 = LLVMGetStructName();
  v13 = glpOpaqueTypeMangling[0];
  if (!glpOpaqueTypeMangling[0])
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v12;
  v15 = 0;
  while (strcmp(v14, v13))
  {
    v16 = &glpOpaqueTypeMangling[v15];
    v15 += 2;
    v13 = v16[2];
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v31 = glpOpaqueTypeMangling[(v15 & 0xFFFFFFFE) + 1];
  return snprintf_l(a1, a2, 0, "%s");
}

uint64_t glpLLVMGetNamedTypeInner(uint64_t *a1)
{
  v2 = a1[1];
  result = LLVMGetTypeByName();
  if (!result)
  {
    v4 = *a1;

    return LLVMStructCreateNamed();
  }

  return result;
}

uint64_t glpLLVMEmitBranchInnerReal(uint64_t a1)
{
  v2 = *(a1 + 16);
  inserted = LLVMGetInsertBlock();
  if (inserted && !glpLLVMBasicBlockGetTerminator(inserted))
  {
    v4 = *(a1 + 16);
    LLVMSetCurrentDebugLocation();
    v5 = *(a1 + 16);
    LLVMBuildBr();
  }

  v6 = *(a1 + 16);

  return MEMORY[0x2821F1618](v6);
}

uint64_t glpLLVMPackVectorInner(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = LLVMTypeOf();
  if (LLVMGetTypeKind() == 13)
  {
    v7 = LLVMGetVectorSize();
  }

  else
  {
    v7 = 1;
  }

  if (LLVMGetTypeKind() == 13)
  {
    v8 = LLVMGetVectorSize();
  }

  else
  {
    v8 = 1;
  }

  if (v7 == v8)
  {
    inserted = a2;
  }

  else
  {
    v10 = LLVMGetTypeKind();
    v11 = v6;
    if (v10 == 13)
    {
      v11 = LLVMGetElementType();
    }

    v12 = MEMORY[0x23EE854F0](v11, v8);
    inserted = MEMORY[0x23EE85370](v12);
    if (v7 == 1)
    {
      v13 = a1[2];
      v14 = a1[5];
      LLVMConstInt();
      inserted = LLVMBuildInsertElement();
    }

    else if (v7 >= 1)
    {
      for (i = 0; i != v7; ++i)
      {
        v16 = a1[5];
        LLVMConstInt();
        v17 = a1[2];
        LLVMBuildExtractElement();
        v18 = a1[2];
        inserted = LLVMBuildInsertElement();
      }
    }
  }

  if (LLVMTypeOf() == a3)
  {
    return inserted;
  }

  if (LLVMGetTypeKind() == 13)
  {
    LLVMGetElementType();
  }

  v19 = LLVMGetTypeKind();
  if (LLVMGetTypeKind() == 13)
  {
    LLVMGetElementType();
  }

  v20 = LLVMGetTypeKind();
  if (v19 != 1)
  {
    if (v19 != 8)
    {
      if (v19 == 2)
      {
        v21 = a1[2];
LABEL_43:

        return LLVMBuildBitCast();
      }

      return inserted;
    }

    if (v20 == 1)
    {
      v31 = a1[2];
      v32 = *a1;
      v23 = LLVMInt16TypeInContext();
      goto LABEL_40;
    }

    if (v20 == 2)
    {
      v22 = a1[2];
      v23 = a1[5];
LABEL_40:
      if (v8 != 1)
      {
        MEMORY[0x23EE854F0](v23, v8);
      }

      LLVMBuildIntCast();
      v33 = a1[2];
      goto LABEL_43;
    }

    v34 = a1[2];
    goto LABEL_47;
  }

  if (v20 != 2)
  {
    if (LLVMGetTypeKind() == 13)
    {
      LLVMGetElementType();
    }

    v26 = LLVMGetIntTypeWidth();
    v27 = *a1;
    v28 = LLVMInt16TypeInContext();
    v29 = a1[2];
    if (v8 != 1)
    {
      MEMORY[0x23EE854F0](v28, v8);
    }

    inserted = LLVMBuildBitCast();
    if (v26 < 0x11)
    {
      return inserted;
    }

    v30 = a1[2];
LABEL_47:

    return LLVMBuildIntCast();
  }

  v24 = a1[2];

  return LLVMBuildFPCast();
}

uint64_t glpLLVMAddFunctionAttrInner(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = (&glpLLVMConvertAttribute_functionAttribStrings)[a3];
  v5 = strlen(v4);
  MEMORY[0x23EE852E0](v4, v5);
  v6 = *a1;
  LLVMCreateEnumAttribute();

  return LLVMAddAttributeAtIndex();
}

uint64_t glpLLVMUnpackTypeInner(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = LLVMTypeOf();
  if (LLVMGetTypeKind() == 13)
  {
    v7 = LLVMGetVectorSize();
    if (LLVMGetTypeKind() != 13)
    {
      if (v7 > 1)
      {
LABEL_14:
        v15 = a1[2];
        v16 = a1[5];
        LLVMConstInt();
        Element = LLVMBuildExtractElement();
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (LLVMGetTypeKind() != 13)
    {
      goto LABEL_13;
    }

    v7 = 1;
  }

  v8 = LLVMGetVectorSize();
  if (v8 >= v7)
  {
    goto LABEL_13;
  }

  v9 = v8;
  if (v8 == 1)
  {
    goto LABEL_14;
  }

  v10 = LLVMGetTypeKind();
  v11 = v6;
  if (v10 == 13)
  {
    v11 = LLVMGetElementType();
  }

  MEMORY[0x23EE854F0](v11, v9);
  if (LLVMGetTypeKind() != 13)
  {
    goto LABEL_14;
  }

  LLVMTypeOf();
  v12 = LLVMGetVectorSize();
  v13 = LLVMGetVectorSize();
  if (v12 == v13)
  {
LABEL_13:
    Element = a2;
    goto LABEL_15;
  }

  v35 = v13;
  v36 = LLVMGetElementType();
  v37 = MEMORY[0x23EE854F0](v36, v35);
  Element = MEMORY[0x23EE85370](v37);
  if (v35 >= 1)
  {
    v38 = 0;
    do
    {
      v39 = a1[2];
      v40 = a1[5];
      LLVMConstInt();
      LLVMBuildExtractElement();
      v41 = a1[2];
      v42 = a1[5];
      LLVMConstInt();
      Element = LLVMBuildInsertElement();
      ++v38;
    }

    while (v35 != v38);
  }

LABEL_15:
  LLVMTypeOf();
  if (LLVMGetTypeKind() == 13)
  {
    v17 = LLVMGetVectorSize();
  }

  else
  {
    v17 = 1;
  }

  v18 = v6;
  if (LLVMGetTypeKind() == 13)
  {
    v18 = LLVMGetElementType();
  }

  v19 = a3;
  if (LLVMGetTypeKind() == 13)
  {
    v19 = LLVMGetElementType();
  }

  if (v18 == v19)
  {
    return Element;
  }

  v20 = LLVMGetTypeKind();
  v21 = LLVMGetTypeKind();
  if (v21 != 1)
  {
    if (v21 != 8)
    {
      if (v21 == 2)
      {
        v22 = a1[2];
LABEL_42:

        return LLVMBuildBitCast();
      }

      return Element;
    }

    if (v20 == 1)
    {
      v32 = a1[2];
      v33 = *a1;
      v25 = LLVMInt16TypeInContext();
    }

    else
    {
      if (v20 != 2)
      {
LABEL_49:
        v34 = a1[2];

        return LLVMBuildIntCast();
      }

      v24 = a1[2];
      v25 = a1[5];
    }

    if (v17 != 1)
    {
      MEMORY[0x23EE854F0](v25, v17);
    }

    LLVMBuildBitCast();
    goto LABEL_49;
  }

  if (v20 != 2)
  {
    if (LLVMGetTypeKind() == 13)
    {
      LLVMGetElementType();
    }

    v27 = LLVMGetIntTypeWidth();
    v28 = *a1;
    v29 = LLVMInt16TypeInContext();
    if (v27 >= 0x11)
    {
      v30 = a1[2];
      if (v17 != 1)
      {
        MEMORY[0x23EE854F0](v29, v17);
      }

      LLVMBuildTrunc();
    }

    v31 = a1[2];
    goto LABEL_42;
  }

  v26 = a1[2];

  return LLVMBuildFPCast();
}

uint64_t glpLLVMSetCurrentLineInner(uint64_t a1)
{
  glpLLVMGetDebugLocation(*(a1 + 24));
  v2 = *(a1 + 16);

  return LLVMSetCurrentDebugLocation();
}

uint64_t glpLLVMCallFunctionInner(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5, int *a6, unsigned int a7, uint64_t a8)
{
  v30 = a8;
  v29 = a7;
  v31 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](a1);
  v13 = &v28[-v12];
  bzero(&v28[-v12], v14);
  if (a5)
  {
    v15 = a5;
    v16 = v13;
    v17 = a4;
    do
    {
      v18 = *v17++;
      *v16++ = LLVMTypeOf();
      --v15;
    }

    while (v15);
  }

  v19 = a1[1];
  v20 = LLVMGetNamedFunction();
  LLVMFunctionType();
  if (!v20)
  {
    v21 = a1[1];
    v22 = LLVMAddFunction();
    if (v29)
    {
      v23 = v29;
      do
      {
        v24 = *a6++;
        glpLLVMAddFunctionAttrInner(a1, v22, v24);
        --v23;
      }

      while (v23);
    }
  }

  v25 = a1[2];
  result = LLVMBuildCall();
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildFunctionCallInner(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, int a5)
{
  LODWORD(v5) = a5;
  v19[1] = *MEMORY[0x277D85DE8];
  LLVMTypeOf();
  LLVMGetElementType();
  v8 = LLVMCountParamTypes();
  LLVMTypeOf();
  LLVMGetElementType();
  v9 = LLVMCountParamTypes();
  v10 = v9 - v5;
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  bzero(v19 - v11, v13);
  if (v5 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
    memcpy(v12, a4, 8 * v5);
  }

  if (v10 >= 1)
  {
    v14 = v8 - v10;
    v15 = &v12[8 * v5];
    do
    {
      *v15++ = LLVMGetParam();
      ++v14;
      --v10;
    }

    while (v10);
  }

  v16 = *(a1 + 16);
  result = LLVMBuildCall();
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMXXXXTypeInContext(uint64_t *a1, int a2)
{
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        v8 = *a1;
        result = LLVMInt64TypeInContext();
        goto LABEL_20;
      }

      if (a2 == 1)
      {
        v5 = *a1;
        result = LLVMInt32TypeInContext();
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v6 = *a1;
    if (a2 == 2)
    {
      result = LLVMInt16TypeInContext();
    }

    else
    {
      result = LLVMInt8TypeInContext();
    }
  }

  else
  {
    if (a2 > 5)
    {
      switch(a2)
      {
        case 6:
          v9 = *a1;
          result = LLVMHalfTypeInContext();
          goto LABEL_20;
        case 7:
          v10 = *a1;
          result = LLVMVoidTypeInContext();
          goto LABEL_20;
        case 8:
          v3 = *a1;
          result = LLVMDoubleTypeInContext();
          goto LABEL_20;
      }

LABEL_21:
      abort();
    }

    v7 = *a1;
    if (a2 == 4)
    {
      result = LLVMInt1TypeInContext();
    }

    else
    {
      result = LLVMFloatTypeInContext();
    }
  }

LABEL_20:
  v11 = *(a1 + 95);
  *(a1 + 95) = v11 + 1;
  *(a1[50] + 8 * v11) = result;
  return result;
}

uint64_t glpLLVMVectorType(uint64_t a1)
{
  v2 = glpDeserializeLLVMType(a1);
  v3 = glpDeserializeuint32(a1);
  result = MEMORY[0x23EE854F0](v2, v3);
  v5 = *(a1 + 380);
  *(a1 + 380) = v5 + 1;
  *(*(a1 + 400) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMPointerType(uint64_t a1)
{
  v2 = glpDeserializeLLVMType(a1);
  v3 = glpDeserializeuint32(a1);
  v4 = *(a1 + 380);
  *(a1 + 380) = v4 + 1;
  result = MEMORY[0x23EE85440](v2, v3);
  *(*(a1 + 400) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMFunctionType(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  glpDeserializeLLVMType(a1);
  v2 = glpDeserializeArraySize(a1);
  v3 = v2;
  v4 = v2;
  MEMORY[0x28223BE20](v2);
  v6 = (v13 - v5);
  bzero(v13 - v5, v7);
  if (v3)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      *v8++ = glpDeserializeLLVMType(a1);
      --v9;
    }

    while (v9);
  }

  v10 = *(a1 + 380);
  *(a1 + 380) = v10 + 1;
  result = LLVMFunctionType();
  *(*(a1 + 400) + 8 * v10) = result;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMAddFunctionAttr(uint64_t *a1)
{
  v2 = glpDeserializeLLVMValue(a1);
  v3 = glpDeserializeuint32(a1);

  return glpLLVMAddFunctionAttrInner(a1, v2, v3);
}

uint64_t glpLLVMAddFunction(uint64_t a1)
{
  v2 = *(a1 + 364);
  *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  glpDeserializeLLVMType(a1);
  v3 = *(a1 + 8);
  result = LLVMAddFunction();
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMGetNamedFunction(uint64_t a1)
{
  v2 = *(a1 + 364);
  *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  v3 = *(a1 + 8);
  result = LLVMGetNamedFunction();
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMSetGlobalConstant(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeuint32(a1);

  return LLVMSetGlobalConstant();
}

void glpLLVMSetInitializer(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);

  JUMPOUT(0x23EE854A0);
}

uint64_t glpLLVMGetParam(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeuint32(a1);
  result = LLVMGetParam();
  v3 = *(a1 + 384);
  *(a1 + 384) = v3 + 1;
  *(*(a1 + 408) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMCreateBuilderInContext(uint64_t *a1)
{
  v2 = *a1;
  v3 = LLVMCreateBuilderInContext();
  a1[2] = v3;
  v4 = *(a1 + 91);
  if (v4 >= *(a1 + 90))
  {
    glpDeserialError((a1 + 13), 1u);
  }

  v5 = *(a1[44] + v4);
  *(a1 + 91) = v4 + 1;
  v6 = *(a1 + 99);

  return glpLLVMSetFastMathFlags(v3, v6, v5);
}

uint64_t glpLLVMDisposeBuilder(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = LLVMDisposeBuilder();
  *(a1 + 16) = 0;
  return result;
}

uint64_t glpLLVMAppendBasicBlock(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  v2 = *(a1 + 364);
  *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  v3 = *(a1 + 388);
  *(a1 + 388) = v3 + 1;
  v4 = *a1;
  result = LLVMAppendBasicBlockInContext();
  *(*(a1 + 416) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMGetInsertBlock(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = LLVMGetInsertBlock();
  v4 = *(a1 + 388);
  *(a1 + 388) = v4 + 1;
  *(*(a1 + 416) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMMoveBasicBlockBefore(uint64_t a1)
{
  glpDeserializeLLVMBlock(a1);
  glpDeserializeLLVMBlock(a1);

  return LLVMMoveBasicBlockBefore();
}

uint64_t glpLLVMPositionBuilderAtEnd(uint64_t a1)
{
  glpDeserializeLLVMBlock(a1);
  v2 = *(a1 + 16);

  return LLVMPositionBuilderAtEnd();
}

uint64_t glpLLVMBuildRetVoid(uint64_t a1)
{
  v2 = *(a1 + 384);
  *(a1 + 384) = v2 + 1;
  result = MEMORY[0x23EE850C0](*(a1 + 16));
  *(*(a1 + 408) + 8 * v2) = result;
  return result;
}

uint64_t glpLLVMBuildRet(uint64_t a1)
{
  v2 = glpDeserializeLLVMValue(a1);
  v3 = *(a1 + 384);
  *(a1 + 384) = v3 + 1;
  result = MEMORY[0x23EE850B0](*(a1 + 16), v2);
  *(*(a1 + 408) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMEmitBranch(uint64_t a1)
{
  glpDeserializeLLVMBlock(a1);

  return glpLLVMEmitBranchInnerReal(a1);
}

uint64_t glpLLVMMDNodeInContext(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = glpDeserializeArraySize(a1);
  v3 = v2;
  v4 = v2;
  MEMORY[0x28223BE20](v2);
  v6 = (v14 - v5);
  bzero(v14 - v5, v7);
  if (v3)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      *v8++ = glpDeserializeLLVMValue(a1);
      --v9;
    }

    while (v9);
  }

  v10 = *(a1 + 384);
  *(a1 + 384) = v10 + 1;
  v11 = *a1;
  result = LLVMMDNodeInContext();
  *(*(a1 + 408) + 8 * v10) = result;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMMDStringInContext(uint64_t *a1)
{
  v2 = a1[44];
  v3 = *(a1 + 91);
  *(a1 + 91) = v3 + strnlen((v2 + v3), *(a1 + 90)) + 1;
  v4 = *(a1 + 96);
  *(a1 + 96) = v4 + 1;
  v5 = *a1;
  strlen((v2 + v3));
  result = LLVMMDStringInContext();
  *(a1[51] + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMNamedMetadata(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 364);
  *(a1 + 364) = v3 + strnlen((v2 + v3), *(a1 + 360)) + 1;
  v4 = glpDeserializeLLVMValue(a1);
  v5 = *(a1 + 8);

  return glpAddNamedMetadataOperand(v5, (v2 + v3), v4);
}

uint64_t glpLLVMConstInt(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  v2 = *(a1 + 364);
  v3 = *(a1 + 360);
  if (v2 >= v3)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 352);
  v5 = *(v4 + v2);
  *(a1 + 364) = v2 + 1;
  if (v2 + 1 >= v3)
  {
    goto LABEL_33;
  }

  v6 = *(v4 + v2 + 1);
  v7 = *(v4 + v2 + 1);
  v8 = v2 + 2;
  *(a1 + 364) = v2 + 2;
  if (v6 < 0)
  {
    v9 = (v7 >> 1) & 7;
    if (((v7 >> 1) & 7) <= 3)
    {
      if (((v7 >> 1) & 7) > 1)
      {
        if (v9 == 2)
        {
          v11 = v2 + 5;
          if (v11 <= v3)
          {
            v16 = *(v4 + v8) | (*(v4 + v8 + 2) << 16);
            goto LABEL_31;
          }
        }

        else if (v2 + 6 <= v3)
        {
          v24 = *(v4 + v8);
          v11 = v2 + 6;
          goto LABEL_31;
        }
      }

      else if (v9)
      {
        if (v2 + 4 <= v3)
        {
          v20 = *(v4 + v8);
          v11 = v2 + 4;
          goto LABEL_31;
        }
      }

      else if (v8 < v3)
      {
        v10 = *(v4 + v8);
        v11 = v2 + 3;
LABEL_31:
        *(a1 + 364) = v11;
        goto LABEL_32;
      }

LABEL_33:
      glpDeserialError(a1 + 104, 1u);
    }

    if (((v7 >> 1) & 7) > 5)
    {
      if (v9 != 6)
      {
        if (v2 + 10 <= v3)
        {
          v25 = *(v4 + v8);
          v11 = v2 + 10;
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      if (v2 + 6 > v3)
      {
        goto LABEL_33;
      }

      v17 = *(v4 + v8);
      v18 = v2 + 6;
      *(a1 + 364) = v2 + 6;
      v15 = v2 + 9;
      if (v15 > v3)
      {
        goto LABEL_33;
      }

      v19 = *(v4 + v18) | (*(v4 + v18 + 2) << 16);
    }

    else
    {
      v12 = v2 + 6;
      if (v9 == 4)
      {
        if (v12 > v3)
        {
          goto LABEL_33;
        }

        v13 = *(v4 + v8);
        *(a1 + 364) = v2 + 6;
        if (v2 + 6 >= v3)
        {
          goto LABEL_33;
        }

        v14 = *(v4 + (v2 + 6));
        v15 = v2 + 7;
      }

      else
      {
        if (v12 > v3)
        {
          goto LABEL_33;
        }

        v21 = *(v4 + v8);
        v22 = (v2 + 6);
        *(a1 + 364) = v22;
        if (v22 + 2 > v3)
        {
          goto LABEL_33;
        }

        v23 = *(v4 + v22);
        v15 = v2 + 8;
      }
    }

    *(a1 + 364) = v15;
  }

LABEL_32:
  result = LLVMConstInt();
  v27 = *(a1 + 384);
  *(a1 + 384) = v27 + 1;
  *(*(a1 + 408) + 8 * v27) = result;
  return result;
}

uint64_t glpLLVMConstUint64(uint64_t *a1)
{
  v2 = *(a1 + 91);
  if (v2 + 8 > *(a1 + 90))
  {
    glpDeserialError((a1 + 13), 1u);
  }

  v3 = *(a1[44] + v2);
  *(a1 + 91) = v2 + 8;
  v4 = *a1;
  LLVMInt64TypeInContext();
  result = LLVMConstInt();
  v6 = *(a1 + 96);
  *(a1 + 96) = v6 + 1;
  *(a1[51] + 8 * v6) = result;
  return result;
}

uint64_t glpLLVMConstReal(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  deserialize_double(a1 + 104);
  result = llvm::ConstantFP::get();
  v3 = *(a1 + 384);
  *(a1 + 384) = v3 + 1;
  *(*(a1 + 408) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMConstVector(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = glpDeserializeArraySize(a1);
  v3 = v2;
  v4 = v2;
  MEMORY[0x28223BE20](v2);
  v6 = (v13 - v5);
  bzero(v13 - v5, v7);
  if (v3)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      *v8++ = glpDeserializeLLVMValue(a1);
      --v9;
    }

    while (v9);
  }

  result = LLVMConstVector();
  v11 = *(a1 + 384);
  *(a1 + 384) = v11 + 1;
  *(*(a1 + 408) + 8 * v11) = result;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMConstArray(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  glpDeserializeLLVMType(a1);
  v2 = glpDeserializeArraySize(a1);
  v3 = v2;
  v4 = v2;
  MEMORY[0x28223BE20](v2);
  v6 = (v13 - v5);
  bzero(v13 - v5, v7);
  if (v3)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      *v8++ = glpDeserializeLLVMValue(a1);
      --v9;
    }

    while (v9);
  }

  result = LLVMConstArray();
  v11 = *(a1 + 384);
  *(a1 + 384) = v11 + 1;
  *(*(a1 + 408) + 8 * v11) = result;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMConstFromType(uint64_t a1, unsigned int a2)
{
  v4 = glpDeserializeLLVMType(a1);
  result = (gOperations[4 * a2 + 3])(v4);
  v6 = *(a1 + 384);
  *(a1 + 384) = v6 + 1;
  *(*(a1 + 408) + 8 * v6) = result;
  return result;
}

uint64_t glpLLVMArrayType(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  glpDeserializeuint32(a1);
  result = LLVMArrayType();
  v3 = *(a1 + 380);
  *(a1 + 380) = v3 + 1;
  *(*(a1 + 400) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMStructTypeInContext(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = glpDeserializeuint32(a1);
  v3 = v2;
  v4 = v2;
  MEMORY[0x28223BE20](v2);
  v6 = (v32 - v5);
  bzero(v32 - v5, v7);
  if (v3)
  {
    v8 = v4;
    v9 = v6;
    do
    {
      *v9++ = glpDeserializeLLVMType(a1);
      --v8;
    }

    while (v8);
  }

  v10 = *(a1 + 364);
  v11 = *(a1 + 360);
  if (v10 >= v11)
  {
    goto LABEL_34;
  }

  v12 = *(a1 + 352);
  v13 = *(v12 + v10);
  v14 = *(v12 + v10);
  v15 = v10 + 1;
  *(a1 + 364) = v10 + 1;
  if (v13 < 0)
  {
    v16 = (v14 >> 1) & 7;
    if (((v14 >> 1) & 7) > 3)
    {
      if (((v14 >> 1) & 7) > 5)
      {
        if (v16 == 6)
        {
          if (v10 + 5 <= v11)
          {
            v22 = *(v12 + v15);
            *(a1 + 364) = v10 + 5;
            v18 = v10 + 8;
            if (v18 <= v11)
            {
              goto LABEL_32;
            }
          }
        }

        else if (v10 + 9 <= v11)
        {
          v27 = *(v12 + v15);
          v18 = v10 + 9;
          goto LABEL_32;
        }
      }

      else
      {
        v19 = v10 + 5;
        if (v16 == 4)
        {
          if (v19 <= v11)
          {
            v20 = *(v12 + v15);
            *(a1 + 364) = v10 + 5;
            if (v10 + 5 < v11)
            {
              v18 = v10 + 6;
              goto LABEL_32;
            }
          }
        }

        else if (v19 <= v11)
        {
          v24 = *(v12 + v15);
          v25 = (v10 + 5);
          *(a1 + 364) = v25;
          if (v25 + 2 <= v11)
          {
            v18 = v10 + 7;
            goto LABEL_32;
          }
        }
      }
    }

    else if (((v14 >> 1) & 7) > 1)
    {
      if (v16 == 2)
      {
        v18 = v10 + 4;
        if (v18 <= v11)
        {
          v21 = *(v12 + v15) | (*(v12 + v15 + 2) << 16);
          goto LABEL_32;
        }
      }

      else if (v10 + 5 <= v11)
      {
        v26 = *(v12 + v15);
        v18 = v10 + 5;
        goto LABEL_32;
      }
    }

    else if (v16)
    {
      if (v10 + 3 <= v11)
      {
        v23 = *(v12 + v15);
        v18 = v10 + 3;
        goto LABEL_32;
      }
    }

    else if (v15 < v11)
    {
      v17 = *(v12 + v15);
      v18 = v10 + 2;
LABEL_32:
      *(a1 + 364) = v18;
      goto LABEL_33;
    }

LABEL_34:
    glpDeserialError(a1 + 104, 1u);
  }

LABEL_33:
  v28 = *a1;
  result = LLVMStructTypeInContext();
  v30 = *(a1 + 380);
  *(a1 + 380) = v30 + 1;
  *(*(a1 + 400) + 8 * v30) = result;
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMTypeOf(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  result = LLVMTypeOf();
  v3 = *(a1 + 380);
  *(a1 + 380) = v3 + 1;
  *(*(a1 + 400) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMGetElementType(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  result = LLVMGetElementType();
  v3 = *(a1 + 380);
  *(a1 + 380) = v3 + 1;
  *(*(a1 + 400) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMGetNamedType(uint64_t a1)
{
  v2 = *(a1 + 364);
  *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  result = glpLLVMGetNamedTypeInner(a1);
  v4 = *(a1 + 380);
  *(a1 + 380) = v4 + 1;
  *(*(a1 + 400) + 8 * v4) = result;
  return result;
}

uint64_t glpLLVMBuildFunctionCall(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = glpDeserializeLLVMValue(a1);
  v3 = glpDeserializeLLVMValue(a1);
  v4 = glpDeserializeArraySize(a1);
  v5 = v4;
  v6 = v4;
  MEMORY[0x28223BE20](v4);
  v8 = (v15 - v7);
  bzero(v15 - v7, v9);
  if (v5)
  {
    v10 = v8;
    v11 = v6;
    do
    {
      *v10++ = glpDeserializeLLVMValue(a1);
      --v11;
    }

    while (v11);
  }

  result = glpLLVMBuildFunctionCallInner(a1, v2, v3, v8, v6);
  v13 = *(a1 + 384);
  *(a1 + 384) = v13 + 1;
  *(*(a1 + 408) + 8 * v13) = result;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildAlloca(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  v3 = *(a1 + 16);
  result = LLVMBuildAlloca();
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMBuildLoad(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  v3 = *(a1 + 16);
  result = LLVMBuildLoad();
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMBuildStore(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  v2 = *(a1 + 16);

  return LLVMBuildStore();
}

uint64_t glpLLVMBuildExtractElement(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  v3 = *(a1 + 16);
  result = LLVMBuildExtractElement();
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMBuildInsertElement(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  v3 = *(a1 + 16);
  result = LLVMBuildInsertElement();
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMBuildShuffleVector(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  v3 = *(a1 + 16);
  result = LLVMBuildShuffleVector();
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMBuildGEP(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  glpDeserializeLLVMValue(a1);
  v2 = glpDeserializeArraySize(a1);
  v3 = v2;
  v4 = v2;
  MEMORY[0x28223BE20](v2);
  v6 = (v15 - v5);
  bzero(v15 - v5, v7);
  if (v3)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      *v8++ = glpDeserializeLLVMValue(a1);
      --v9;
    }

    while (v9);
  }

  if (*(a1 + 392))
  {
    v10 = *(a1 + 364);
    *(a1 + 364) = v10 + strnlen((*(a1 + 352) + v10), *(a1 + 360)) + 1;
  }

  v11 = *(a1 + 16);
  result = LLVMBuildGEP();
  v13 = *(a1 + 384);
  *(a1 + 384) = v13 + 1;
  *(*(a1 + 408) + 8 * v13) = result;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMBuildInsertValue(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  v2 = *(a1 + 364);
  v3 = *(a1 + 360);
  if (v2 >= v3)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 352);
  v5 = *(v4 + v2);
  v6 = *(v4 + v2);
  v7 = v2 + 1;
  *(a1 + 364) = v2 + 1;
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  v8 = (v6 >> 1) & 7;
  if (((v6 >> 1) & 7) > 3)
  {
    if (((v6 >> 1) & 7) > 5)
    {
      if (v8 == 6)
      {
        if (v2 + 5 <= v3)
        {
          v14 = *(v4 + v7);
          *(a1 + 364) = v2 + 5;
          LODWORD(v7) = v2 + 8;
          if (v2 + 8 <= v3)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v2 + 9 <= v3)
      {
        v19 = *(v4 + v7);
        LODWORD(v7) = v2 + 9;
        goto LABEL_29;
      }
    }

    else
    {
      v10 = v2 + 5;
      if (v8 == 4)
      {
        if (v10 <= v3)
        {
          v11 = *(v4 + v7);
          *(a1 + 364) = v2 + 5;
          if (v2 + 5 < v3)
          {
            LODWORD(v7) = v2 + 6;
            goto LABEL_29;
          }
        }
      }

      else if (v10 <= v3)
      {
        v16 = *(v4 + v7);
        v17 = (v2 + 5);
        *(a1 + 364) = v17;
        if (v17 + 2 <= v3)
        {
          LODWORD(v7) = v2 + 7;
          goto LABEL_29;
        }
      }
    }

LABEL_33:
    glpDeserialError(a1 + 104, 1u);
  }

  if (((v6 >> 1) & 7) > 1)
  {
    if (v8 == 2)
    {
      v12 = v2 + 4;
      if (v12 <= v3)
      {
        v13 = *(v4 + v7) | (*(v4 + v7 + 2) << 16);
        *(a1 + 364) = v12;
        LODWORD(v7) = v12;
        goto LABEL_30;
      }
    }

    else if (v2 + 5 <= v3)
    {
      v18 = *(v4 + v7);
      LODWORD(v7) = v2 + 5;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v8)
  {
    if (v2 + 3 <= v3)
    {
      v15 = *(v4 + v7);
      LODWORD(v7) = v2 + 3;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v7 >= v3)
  {
    goto LABEL_33;
  }

  v9 = *(v4 + v7);
  LODWORD(v7) = v2 + 2;
LABEL_29:
  *(a1 + 364) = v7;
LABEL_30:
  if (*(a1 + 392))
  {
    *(a1 + 364) = v7 + strnlen((v4 + v7), v3) + 1;
  }

  v20 = *(a1 + 16);
  result = LLVMBuildInsertValue();
  v22 = *(a1 + 384);
  *(a1 + 384) = v22 + 1;
  *(*(a1 + 408) + 8 * v22) = result;
  return result;
}

uint64_t glpLLVMBuildExtractValue(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  v2 = *(a1 + 364);
  v3 = *(a1 + 360);
  if (v2 >= v3)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 352);
  v5 = *(v4 + v2);
  v6 = *(v4 + v2);
  v7 = v2 + 1;
  *(a1 + 364) = v2 + 1;
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  v8 = (v6 >> 1) & 7;
  if (((v6 >> 1) & 7) > 3)
  {
    if (((v6 >> 1) & 7) > 5)
    {
      if (v8 == 6)
      {
        if (v2 + 5 <= v3)
        {
          v14 = *(v4 + v7);
          *(a1 + 364) = v2 + 5;
          LODWORD(v7) = v2 + 8;
          if (v2 + 8 <= v3)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v2 + 9 <= v3)
      {
        v19 = *(v4 + v7);
        LODWORD(v7) = v2 + 9;
        goto LABEL_29;
      }
    }

    else
    {
      v10 = v2 + 5;
      if (v8 == 4)
      {
        if (v10 <= v3)
        {
          v11 = *(v4 + v7);
          *(a1 + 364) = v2 + 5;
          if (v2 + 5 < v3)
          {
            LODWORD(v7) = v2 + 6;
            goto LABEL_29;
          }
        }
      }

      else if (v10 <= v3)
      {
        v16 = *(v4 + v7);
        v17 = (v2 + 5);
        *(a1 + 364) = v17;
        if (v17 + 2 <= v3)
        {
          LODWORD(v7) = v2 + 7;
          goto LABEL_29;
        }
      }
    }

LABEL_33:
    glpDeserialError(a1 + 104, 1u);
  }

  if (((v6 >> 1) & 7) > 1)
  {
    if (v8 == 2)
    {
      v12 = v2 + 4;
      if (v12 <= v3)
      {
        v13 = *(v4 + v7) | (*(v4 + v7 + 2) << 16);
        *(a1 + 364) = v12;
        LODWORD(v7) = v12;
        goto LABEL_30;
      }
    }

    else if (v2 + 5 <= v3)
    {
      v18 = *(v4 + v7);
      LODWORD(v7) = v2 + 5;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v8)
  {
    if (v2 + 3 <= v3)
    {
      v15 = *(v4 + v7);
      LODWORD(v7) = v2 + 3;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v7 >= v3)
  {
    goto LABEL_33;
  }

  v9 = *(v4 + v7);
  LODWORD(v7) = v2 + 2;
LABEL_29:
  *(a1 + 364) = v7;
LABEL_30:
  if (*(a1 + 392))
  {
    *(a1 + 364) = v7 + strnlen((v4 + v7), v3) + 1;
  }

  v20 = *(a1 + 16);
  result = LLVMBuildExtractValue();
  v22 = *(a1 + 384);
  *(a1 + 384) = v22 + 1;
  *(*(a1 + 408) + 8 * v22) = result;
  return result;
}

uint64_t glpLLVMBinaryOperation(uint64_t a1, unsigned int a2)
{
  v4 = glpDeserializeLLVMValue(a1);
  v5 = glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v6 = *(a1 + 364);
    v7 = (*(a1 + 352) + v6);
    *(a1 + 364) = v6 + strnlen(v7, *(a1 + 360)) + 1;
  }

  else
  {
    v7 = "";
  }

  result = (gOperations[4 * a2 + 3])(*(a1 + 16), v4, v5, v7);
  v9 = *(a1 + 384);
  *(a1 + 384) = v9 + 1;
  *(*(a1 + 408) + 8 * v9) = result;
  return result;
}

uint64_t glpLLVMUnaryOperation(uint64_t a1, unsigned int a2)
{
  v4 = glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v5 = *(a1 + 364);
    v6 = (*(a1 + 352) + v5);
    *(a1 + 364) = v5 + strnlen(v6, *(a1 + 360)) + 1;
  }

  else
  {
    v6 = "";
  }

  result = (gOperations[4 * a2 + 3])(*(a1 + 16), v4, v6);
  v8 = *(a1 + 384);
  *(a1 + 384) = v8 + 1;
  *(*(a1 + 408) + 8 * v8) = result;
  return result;
}

uint64_t glpLLVMCastOperation(uint64_t a1, unsigned int a2)
{
  v4 = glpDeserializeLLVMValue(a1);
  v5 = glpDeserializeLLVMType(a1);
  if (*(a1 + 392))
  {
    v6 = *(a1 + 364);
    v7 = (*(a1 + 352) + v6);
    *(a1 + 364) = v6 + strnlen(v7, *(a1 + 360)) + 1;
  }

  else
  {
    v7 = "";
  }

  result = LLVMTypeOf();
  if (result != v5)
  {
    result = (gOperations[4 * a2 + 3])(*(a1 + 16), v4, v5, v7);
    v4 = result;
  }

  v9 = *(a1 + 384);
  *(a1 + 384) = v9 + 1;
  *(*(a1 + 408) + 8 * v9) = v4;
  return result;
}

uint64_t glpLLVMBuildICmp(uint64_t a1)
{
  v2 = glpDeserializeuint32(a1);
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v3 = *(a1 + 364);
    *(a1 + 364) = v3 + strnlen((*(a1 + 352) + v3), *(a1 + 360)) + 1;
  }

  v4 = *(a1 + 16);
  v5 = glpLLVMBuildICmp_predicate[v2];
  result = LLVMBuildICmp();
  v7 = *(a1 + 384);
  *(a1 + 384) = v7 + 1;
  *(*(a1 + 408) + 8 * v7) = result;
  return result;
}

uint64_t glpLLVMBuildFCmp(uint64_t a1)
{
  v2 = glpDeserializeuint32(a1);
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v3 = *(a1 + 364);
    *(a1 + 364) = v3 + strnlen((*(a1 + 352) + v3), *(a1 + 360)) + 1;
  }

  v4 = *(a1 + 16);
  v5 = glpLLVMBuildFCmp_predicate[v2];
  result = LLVMBuildFCmp();
  v7 = *(a1 + 384);
  *(a1 + 384) = v7 + 1;
  *(*(a1 + 408) + 8 * v7) = result;
  return result;
}

uint64_t glpLLVMBuildSelect(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  v3 = *(a1 + 16);
  result = LLVMBuildSelect();
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMBuildSwitch(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMBlock(a1);
  glpDeserializeuint32(a1);
  v2 = *(a1 + 16);
  result = LLVMBuildSwitch();
  v4 = *(a1 + 384);
  *(a1 + 384) = v4 + 1;
  *(*(a1 + 408) + 8 * v4) = result;
  return result;
}

void glpLLVMAddCase(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMBlock(a1);

  JUMPOUT(0x23EE84E40);
}

uint64_t glpLLVMBuildPhi(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  v3 = *(a1 + 16);
  result = LLVMBuildPhi();
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMAddIncoming(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  glpDeserializeLLVMValue(a1);
  v2 = glpDeserializeuint32(a1);
  v3 = v2;
  v4 = v2;
  v5 = 8 * v2;
  MEMORY[0x28223BE20](v2);
  bzero(v13 - ((v5 + 15) & 0xFFFFFFFF0), v5);
  MEMORY[0x28223BE20](v6);
  v7 = v13 - ((v5 + 15) & 0xFFFFFFFF0);
  bzero(v7, v5);
  if (v3)
  {
    v8 = v4;
    v9 = (v13 - ((v5 + 15) & 0xFFFFFFFF0));
    v10 = v7;
    do
    {
      *v9++ = glpDeserializeLLVMValue(a1);
      *v10++ = glpDeserializeLLVMBlock(a1);
      --v8;
    }

    while (v8);
  }

  result = LLVMAddIncoming();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMGetSwitchDefaultDest(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  result = LLVMGetSwitchDefaultDest();
  v3 = *(a1 + 388);
  *(a1 + 388) = v3 + 1;
  *(*(a1 + 416) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMBuildBr(uint64_t a1)
{
  glpDeserializeLLVMBlock(a1);

  return glpLLVMEmitBranchInnerReal(a1);
}

uint64_t glpLLVMBuildCondBr(uint64_t a1)
{
  glpDeserializeLLVMValue(a1);
  glpDeserializeLLVMBlock(a1);
  glpDeserializeLLVMBlock(a1);
  v2 = *(a1 + 16);

  return LLVMBuildCondBr();
}

GLPDebugInfoContext *glpLLVMDIBuilderDeleteStub(uint64_t a1)
{
  result = glpLLVMDIBuilderDelete(*(a1 + 24));
  *(a1 + 24) = 0;
  return result;
}

uint64_t glpLLVMDIBuilderCreateCompileUnitStub(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 364);
  *(a1 + 364) = v3 + strnlen((v2 + v3), *(a1 + 360)) + 1;
  v4 = *(a1 + 24);

  return glpLLVMDIBuilderCreateCompileUnit(v4, (v2 + v3));
}

uint64_t glpLLVMDIBuilderCreateFileStub(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 364);
  *(a1 + 364) = v3 + strnlen((v2 + v3), *(a1 + 360)) + 1;
  v4 = *(a1 + 24);

  return glpLLVMDIBuilderCreateFile(v4, (v2 + v3));
}

void glpLLVMDIBuilderCreateSubProgramStub(uint64_t a1)
{
  v2 = glpDeserializeLLVMValue(a1);
  v3 = *(a1 + 352);
  v4 = *(a1 + 364);
  *(a1 + 364) = v4 + strnlen((v3 + v4), *(a1 + 360)) + 1;
  v5 = *(a1 + 24);

  glpLLVMDIBuilderCreateSubProgram(v5, v2, (v3 + v4));
}

uint64_t glpLLVMSetCurrentLineStub(uint64_t a1)
{
  v2 = *(a1 + 364);
  v3 = *(a1 + 360);
  if (v2 >= v3)
  {
    goto LABEL_33;
  }

  v4 = *(a1 + 352);
  v5 = *(v4 + v2);
  v6 = *(v4 + v2);
  v7 = v2 + 1;
  *(a1 + 364) = v2 + 1;
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  v8 = (v6 >> 1) & 7;
  if (((v6 >> 1) & 7) > 3)
  {
    if (((v6 >> 1) & 7) > 5)
    {
      if (v8 == 6)
      {
        if (v2 + 5 <= v3)
        {
          v14 = *(v4 + v7);
          *(a1 + 364) = v2 + 5;
          v10 = v2 + 8;
          if (v10 <= v3)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v2 + 9 <= v3)
      {
        v19 = *(v4 + v7);
        v10 = v2 + 9;
        goto LABEL_29;
      }
    }

    else
    {
      v11 = v2 + 5;
      if (v8 == 4)
      {
        if (v11 <= v3)
        {
          v12 = *(v4 + v7);
          *(a1 + 364) = v2 + 5;
          if (v2 + 5 < v3)
          {
            v10 = v2 + 6;
            goto LABEL_29;
          }
        }
      }

      else if (v11 <= v3)
      {
        v16 = *(v4 + v7);
        v17 = (v2 + 5);
        *(a1 + 364) = v17;
        if (v17 + 2 <= v3)
        {
          v10 = v2 + 7;
          goto LABEL_29;
        }
      }
    }

LABEL_33:
    glpDeserialError(a1 + 104, 1u);
  }

  if (((v6 >> 1) & 7) > 1)
  {
    if (v8 == 2)
    {
      v10 = v2 + 4;
      if (v10 <= v3)
      {
        v13 = *(v4 + v7) | (*(v4 + v7 + 2) << 16);
        goto LABEL_29;
      }
    }

    else if (v2 + 5 <= v3)
    {
      v18 = *(v4 + v7);
      v10 = v2 + 5;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v8)
  {
    if (v2 + 3 <= v3)
    {
      v15 = *(v4 + v7);
      v10 = v2 + 3;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v7 >= v3)
  {
    goto LABEL_33;
  }

  v9 = *(v4 + v7);
  v10 = v2 + 2;
LABEL_29:
  *(a1 + 364) = v10;
LABEL_30:
  glpLLVMGetDebugLocation(*(a1 + 24));
  v20 = *(a1 + 16);

  return LLVMSetCurrentDebugLocation();
}

uint64_t glpLLVMPackVector(uint64_t a1)
{
  v2 = glpDeserializeLLVMValue(a1);
  v3 = glpDeserializeLLVMType(a1);
  result = glpLLVMPackVectorInner(a1, v2, v3);
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMUnpackVector(uint64_t a1)
{
  v2 = glpDeserializeLLVMValue(a1);
  v3 = glpDeserializeLLVMType(a1);
  result = glpLLVMUnpackTypeInner(a1, v2, v3);
  v5 = *(a1 + 384);
  *(a1 + 384) = v5 + 1;
  *(*(a1 + 408) + 8 * v5) = result;
  return result;
}

uint64_t glpLLVMCallFunction(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 352);
  v3 = *(a1 + 364);
  *(a1 + 364) = v3 + strnlen((v2 + v3), *(a1 + 360)) + 1;
  v4 = glpDeserializeLLVMType(a1);
  v5 = glpDeserializeArraySize(a1);
  v6 = v5;
  v7 = v5;
  MEMORY[0x28223BE20](v5);
  v9 = (v26 - v8);
  bzero(v26 - v8, v10);
  if (v6)
  {
    v11 = v9;
    v12 = v7;
    do
    {
      *v11++ = glpDeserializeLLVMValue(a1);
      --v12;
    }

    while (v12);
  }

  v13 = glpDeserializeuint32(a1);
  v14 = v13;
  v15 = v13;
  MEMORY[0x28223BE20](v13);
  v17 = (v26 - v16);
  bzero(v26 - v16, v18);
  if (v14)
  {
    v19 = v15;
    v20 = v17;
    do
    {
      *v20++ = glpDeserializeuint32(a1);
      --v19;
    }

    while (v19);
  }

  if (*(a1 + 392))
  {
    v21 = *(a1 + 364);
    v22 = (*(a1 + 352) + v21);
    *(a1 + 364) = v21 + strnlen(v22, *(a1 + 360)) + 1;
  }

  else
  {
    v22 = "";
  }

  result = glpLLVMCallFunctionInner(a1, v2 + v3, v4, v9, v7, v17, v15, v22);
  v24 = *(a1 + 384);
  *(a1 + 384) = v24 + 1;
  *(*(a1 + 408) + 8 * v24) = result;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpLLVMGetInfinityProxy(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  result = glpLLVMGetInfinity();
  v3 = *(a1 + 384);
  *(a1 + 384) = v3 + 1;
  *(*(a1 + 408) + 8 * v3) = result;
  return result;
}

uint64_t glpLLVMAddGlobalInAddressSpace(uint64_t a1)
{
  glpDeserializeLLVMType(a1);
  if (*(a1 + 392))
  {
    v2 = *(a1 + 364);
    *(a1 + 364) = v2 + strnlen((*(a1 + 352) + v2), *(a1 + 360)) + 1;
  }

  glpDeserializeuint32(a1);
  v3 = *(a1 + 8);
  v4 = LLVMAddGlobalInAddressSpace();
  result = LLVMSetGlobalConstant();
  v6 = *(a1 + 384);
  *(a1 + 384) = v6 + 1;
  *(*(a1 + 408) + 8 * v6) = v4;
  return result;
}

uint64_t glpGenerateLLVMIRModule(int *a1, int a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0;
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v6 = a1[1];
  v28 = a1[2];
  v29 = v6;
  v30 = a1[3];
  v7 = malloc_type_malloc(8 * v6, 0x75808E6AuLL);
  if (!v7 || (v8 = v7, v36 = v7, (v9 = malloc_type_malloc(8 * a1[2], 0x75808E6AuLL)) == 0) || (v10 = v9, v35 = v9, (v11 = malloc_type_malloc(8 * a1[3], 0x75808E6AuLL)) == 0))
  {
    abort();
  }

  v37 = v11;
  *v8 = 0;
  *v10 = 0;
  *v11 = 0;
  v31 = 1;
  v32 = 0x100000001;
  v12 = a1[4];
  v33 = v12 & 1;
  v34 = (v12 >> 1) & 1;
  v18 = a3;
  *(&v20 + 1) = LLVMInt64TypeInContext();
  *&v21 = LLVMInt32TypeInContext();
  *(&v21 + 1) = LLVMInt16TypeInContext();
  *&v22 = LLVMInt8TypeInContext();
  *(&v22 + 1) = LLVMInt1TypeInContext();
  *&v23 = LLVMFloatTypeInContext();
  *(&v23 + 1) = LLVMHalfTypeInContext();
  *&v24 = LLVMVoidTypeInContext();
  *(&v24 + 1) = LLVMDoubleTypeInContext();
  memset(v17, 0, sizeof(v17));
  glpInitPoolAllocator(4096, 4096, v17);
  glpInitDeserialContext(v25, v17, &GLP_MALLOC_ALLOCATOR, (a1 + 6), a2 - 24);
  *&v19 = LLVMModuleCreateWithNameInContext();
  glpLLVMSetupModule(v19);
  v13 = *a1;
  if (v13 >= 1)
  {
    do
    {
      if (HIDWORD(v27) >= v27)
      {
        glpDeserialError(v25, 1u);
      }

      v14 = *(*(&v26 + 1) + HIDWORD(v27));
      ++HIDWORD(v27);
      gOperations[4 * v14 + 1](&v18);
      --v13;
    }

    while (v13);
  }

  glpDestroyDeserialContext(v25);
  glpDestroyPoolAllocator(v17);
  free(v36);
  free(v35);
  free(v37);
  result = v19;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpDeserializeLLVMType(uint64_t a1)
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
    return *(*(a1 + 400) + 8 * v5);
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
  return *(*(a1 + 400) + 8 * v5);
}

unint64_t glpDeserializeuint32(uint64_t a1)
{
  v1 = *(a1 + 364);
  v2 = *(a1 + 360);
  if (v1 >= v2)
  {
    goto LABEL_33;
  }

  v3 = *(a1 + 352);
  v4 = *(v3 + v1);
  v5 = *(v3 + v1);
  v6 = v1 + 1;
  *(a1 + 364) = v1 + 1;
  if ((v4 & 0x80000000) == 0)
  {
    return v5;
  }

  v7 = (v5 >> 1) & 7;
  if (v7 > 3)
  {
    if (v7 > 5)
    {
      if (v7 == 6)
      {
        if (v1 + 5 <= v2)
        {
          v8 = *(v3 + v6);
          *(a1 + 364) = v1 + 5;
          v9 = v1 + 8;
          if (v9 <= v2)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v1 + 9 <= v2)
      {
        v8 = *(v3 + v6);
        v9 = v1 + 9;
        goto LABEL_29;
      }
    }

    else
    {
      v10 = v1 + 5;
      if (v7 == 4)
      {
        if (v10 <= v2)
        {
          v8 = *(v3 + v6);
          *(a1 + 364) = v1 + 5;
          if (v1 + 5 < v2)
          {
            v9 = v1 + 6;
            goto LABEL_29;
          }
        }
      }

      else if (v10 <= v2)
      {
        v8 = *(v3 + v6);
        v11 = (v1 + 5);
        *(a1 + 364) = v11;
        if (v11 + 2 <= v2)
        {
          v9 = v1 + 7;
          goto LABEL_29;
        }
      }
    }

LABEL_33:
    glpDeserialError(a1 + 104, 1u);
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = v1 + 4;
      if (v9 <= v2)
      {
        v8 = *(v3 + v6) | (*(v3 + v6 + 2) << 16);
        goto LABEL_29;
      }
    }

    else if (v1 + 5 <= v2)
    {
      v8 = *(v3 + v6);
      v9 = v1 + 5;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v7)
  {
    if (v1 + 3 <= v2)
    {
      v8 = *(v3 + v6);
      v9 = v1 + 3;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v6 >= v2)
  {
    goto LABEL_33;
  }

  v8 = *(v3 + v6);
  v9 = v1 + 2;
LABEL_29:
  *(a1 + 364) = v9;
  v12 = -256 << (8 * v7);
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  return v8 | v12;
}

unint64_t glpDeserializeArraySize(uint64_t a1)
{
  v1 = *(a1 + 364);
  v2 = *(a1 + 360);
  if (v1 >= v2)
  {
    goto LABEL_33;
  }

  v3 = *(a1 + 352);
  v4 = *(v3 + v1);
  v5 = *(v3 + v1);
  v6 = v1 + 1;
  *(a1 + 364) = v1 + 1;
  if ((v4 & 0x80000000) == 0)
  {
    return v5;
  }

  v7 = (v5 >> 1) & 7;
  if (v7 > 3)
  {
    if (v7 > 5)
    {
      if (v7 == 6)
      {
        if (v1 + 5 <= v2)
        {
          v8 = *(v3 + v6);
          *(a1 + 364) = v1 + 5;
          v9 = v1 + 8;
          if (v9 <= v2)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v1 + 9 <= v2)
      {
        v8 = *(v3 + v6);
        v9 = v1 + 9;
        goto LABEL_29;
      }
    }

    else
    {
      v10 = v1 + 5;
      if (v7 == 4)
      {
        if (v10 <= v2)
        {
          v8 = *(v3 + v6);
          *(a1 + 364) = v1 + 5;
          if (v1 + 5 < v2)
          {
            v9 = v1 + 6;
            goto LABEL_29;
          }
        }
      }

      else if (v10 <= v2)
      {
        v8 = *(v3 + v6);
        v11 = (v1 + 5);
        *(a1 + 364) = v11;
        if (v11 + 2 <= v2)
        {
          v9 = v1 + 7;
          goto LABEL_29;
        }
      }
    }

LABEL_33:
    glpDeserialError(a1 + 104, 1u);
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = v1 + 4;
      if (v9 <= v2)
      {
        v8 = *(v3 + v6) | (*(v3 + v6 + 2) << 16);
        goto LABEL_29;
      }
    }

    else if (v1 + 5 <= v2)
    {
      v8 = *(v3 + v6);
      v9 = v1 + 5;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v7)
  {
    if (v1 + 3 <= v2)
    {
      v8 = *(v3 + v6);
      v9 = v1 + 3;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v6 >= v2)
  {
    goto LABEL_33;
  }

  v8 = *(v3 + v6);
  v9 = v1 + 2;
LABEL_29:
  *(a1 + 364) = v9;
  v12 = -256 << (8 * v7);
  if ((v4 & 1) == 0)
  {
    v12 = 0;
  }

  return v8 | v12;
}