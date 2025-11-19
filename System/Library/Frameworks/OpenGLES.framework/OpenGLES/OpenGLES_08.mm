uint64_t glpMakeCodeGenContext(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = glpLinkerPoolAlloc(a1);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = a2;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  Allocator = glpLinkerGetAllocator(a1);
  *(v6 + 24) = glpMakeIntHash(Allocator);
  v8 = glpLinkerGetAllocator(a1);
  *(v6 + 32) = glpMakeIntHash(v8);
  if (a3 <= 4)
  {
    **(v6 + 136) = word_23A29C2F0[a3];
  }

  *(v6 + 144) = a3;
  *(v6 + 148) = 0;
  v9 = 160;
  *(v6 + 152) = a1;
  do
  {
    v10 = glpLinkerGetAllocator(a1);
    *(v6 + v9) = glpMakePointerHash(v10);
    v9 += 8;
  }

  while (v9 != 192);
  v11 = glpLinkerGetAllocator(a1);
  *(v6 + 192) = glpMakeIntHash(v11);
  return v6;
}

uint64_t glpDestroyCodeGenContext(void *a1)
{
  glpDestroyIntHash(a1[3]);
  result = glpDestroyIntHash(a1[4]);
  if (*a1)
  {
    *a1 = 0;
  }

  if (a1[1])
  {
    a1[1] = 0;
  }

  if (a1[2])
  {
    a1[2] = 0;
  }

  return result;
}

uint64_t glpCGTypeConversion(uint64_t a1, uint64_t a2)
{
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  result = glpCGNode(a1, Expr);
  if (result)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 88);
    v26 = *(a1 + 72);
    v27 = v7;
    v28 = *(a1 + 104);
    v24 = *(a1 + 40);
    v25 = v6;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    SaType = glpASTNodeGetSaType(a2);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    SaFlags = glpASTNodeGetSaFlags(a2);
    addTempsForGLPPrimitiveType(a1, &v19, v18, PrimitiveType, 1, 0, SaFlags);
    DWORD1(v23) = 1;
    if (HIDWORD(v20) == HIDWORD(v25) && v21 == v26)
    {
      v15 = 0;
    }

    else
    {
      v15 = 109;
    }

    *(a1 + 128) = AddOp(*(a1 + 136), v15, 0, &v19, 0, v11, v12, v13, &v24);
    v16 = v19;
    *(a1 + 56) = v20;
    v17 = v22;
    *(a1 + 72) = v21;
    *(a1 + 88) = v17;
    *(a1 + 104) = v23;
    result = 2;
    *(a1 + 40) = v16;
  }

  return result;
}

double glpCGConstant(uint64_t a1, uint64_t a2)
{
  Value = glpConstantNodeGetValue(a2);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  Type = glpConstantNodeGetType(a2);
  SaFlags = glpASTNodeGetSaFlags(a2);
  addConstantsForGLPValue(a1, &v11, v10, Type, Value, SaFlags);
  v7 = v11;
  *(a1 + 56) = v12;
  v8 = v14;
  *(a1 + 72) = v13;
  *(a1 + 88) = v8;
  result = *&v15;
  *(a1 + 104) = v15;
  *(a1 + 40) = v7;
  return result;
}

uint64_t glpCGPPStreamOpNode(uint64_t a1, uint64_t a2)
{
  v50[1] = *MEMORY[0x277D85DE8];
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
  Opcode = glpPPStreamOpNodeGetOpcode(a2);
  OpPrimitiveType = glpPPStreamOpNodeGetOpPrimitiveType(a2);
  HasSrctex = glpPPStreamOpNodeGetHasSrctex(a2);
  HasOffset = glpPPStreamOpNodeGetHasOffset(a2);
  v50[0] = 0;
  v40 = Opcode;
  *(a1 + 148) = Opcode == 78;
  ChildCount = glpASTNodeGetChildCount(a2);
  v8 = ChildCount;
  v42 = v38;
  v9 = ChildCount;
  MEMORY[0x28223BE20](ChildCount);
  v11 = &v38[-16 * v10];
  bzero(v11, v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v38[-v14];
  bzero(&v38[-v14], v16 + 16);
  if (!v8)
  {
LABEL_5:
    *(a1 + 148) = 0;
    if (HasSrctex)
    {
      Child = glpASTNodeGetChild(a2, v8 - 1);
      SaType = glpASTNodeGetSaType(Child);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
      v25 = glpPrimitiveSamplerGetPPTextarget(PrimitiveType) & 0x1F;
      v50[0] = v25 & 0xFFFFFF1F | (32 * (glpPrimitiveSamplerGetPPDatatype(PrimitiveType) & 7));
      v26 = &v15[2 * v9];
      *v26 = 0;
      v26[1] = v50;
      ++v8;
    }

    v27 = ReturnPrimitiveType;
    v28 = &v15[2 * v8];
    *v28 = 0;
    v28[1] = 0;
    memset(v49, 0, sizeof(v49));
    if (OpPrimitiveType)
    {
      SaFlags = glpASTNodeGetSaFlags(a2);
      v30 = v49;
      initTypeWithGLPPrimitiveType(v49, OpPrimitiveType, SaFlags);
      if (v27)
      {
LABEL_9:
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        memset(v43, 0, sizeof(v43));
        v31 = glpASTNodeGetSaFlags(a2);
        addTempsForGLPPrimitiveType(a1, &v44, v43, v27, 1, 0, v31);
        v32 = AddOpv(*(a1 + 136), v40, v30, &v44, 0, v15);
        v33 = v44;
        *(a1 + 56) = v45;
        v34 = v47;
        *(a1 + 72) = v46;
        *(a1 + 88) = v34;
        *(a1 + 104) = v48;
        *(a1 + 40) = v33;
        v35 = 2;
LABEL_13:
        *(a1 + 128) = v32;
        *(v32 + 3) = *(v32 + 3) & 0xFFFFFFFFFFFBFFFFLL | ((HasOffset & 1) << 18);
        goto LABEL_14;
      }
    }

    else
    {
      v30 = 0;
      if (v27)
      {
        goto LABEL_9;
      }
    }

    v32 = AddOpv(*(a1 + 136), v40, v30, 0, 0, v15);
    v35 = 1;
    goto LABEL_13;
  }

  v17 = 0;
  v18 = v15 + 1;
  while (1)
  {
    v19 = glpASTNodeGetChild(a2, v17);
    if (!glpCGNode(a1, v19))
    {
      break;
    }

    v20 = *(a1 + 56);
    v21 = *(a1 + 88);
    v11[2] = *(a1 + 72);
    v11[3] = v21;
    v11[4] = *(a1 + 104);
    *v11 = *(a1 + 40);
    v11[1] = v20;
    ++v17;
    *(v18 - 1) = v11;
    *v18 = 0;
    v11 += 5;
    v18 += 2;
    if (v9 == v17)
    {
      goto LABEL_5;
    }
  }

  v35 = 0;
LABEL_14:
  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

double glpCGSubroutineUniformNode(uint64_t a1, uint64_t a2)
{
  Extra = glpSubroutineUniformNodeGetExtra(a2);
  v4 = *(Extra + 40);
  *(Extra + 32) = glpLinkerPoolAlloc(*(a1 + 152));
  memset(v30, 0, sizeof(v30));
  initTypeWithGLPPrimitiveType(v30, 5, 0);
  v5 = *(Extra + 16);
  v6 = glpABIGetTypeSize(0, v5, 0);
  v7 = 0;
  v28 = 0u;
  v29 = 0u;
  v8 = glpTypeSizeGetSize(v6) - 1;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  do
  {
    v24 = (((v4 + v7) & 0x3FFFF) << 32) | 0x300;
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
    AddBinding(*(a1 + 136), &v19, &v14, 2, v30, &v24);
    if (!v7)
    {
      v9 = *(Extra + 32);
      *v9 = v19;
      v10 = v20;
      v11 = v21;
      v12 = v23;
      v9[3] = v22;
      v9[4] = v12;
      v9[1] = v10;
      v9[2] = v11;
    }

    if (v8 == v7)
    {
      v27 = v16;
      v28 = v17;
      v29 = v18;
      v25 = v14;
      v26 = v15;
    }

    ++v7;
  }

  while (v7 <= v8);
  if (glpTypeGetKind(v5) == 2)
  {
    return AddArray(*(a1 + 136), *(Extra + 32), &v25);
  }

  return result;
}

uint64_t glpCGNegate(uint64_t a1, uint64_t a2)
{
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  result = glpCGNode(a1, Expr);
  if (result)
  {
    *(a1 + 84) ^= 1u;
    return 2;
  }

  return result;
}

uint64_t glpCGLogicalNot(uint64_t a1, uint64_t a2)
{
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  result = glpCGNode(a1, Expr);
  if (result)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 88);
    v24[2] = *(a1 + 72);
    v24[3] = v7;
    v24[4] = *(a1 + 104);
    v24[0] = *(a1 + 40);
    v24[1] = v6;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    SaType = glpASTNodeGetSaType(a2);
    v9 = glpASTNodeGetSaType(a2);
    v10 = glpABIGetTypeSize(0, v9, 0);
    Size = glpTypeSizeGetSize(v10);
    SaFlags = glpASTNodeGetSaFlags(a2);
    addTempsForGLPType(a1, &v19, v18, SaType, Size, 1, 0, SaFlags);
    *(a1 + 128) = AddOp(*(a1 + 136), 0xAu, 0, &v19, 0, v13, v14, v15, v24);
    v16 = v19;
    *(a1 + 56) = v20;
    v17 = v22;
    *(a1 + 72) = v21;
    *(a1 + 88) = v17;
    *(a1 + 104) = v23;
    result = 2;
    *(a1 + 40) = v16;
  }

  return result;
}

uint64_t glpCGBitwiseNot(uint64_t a1, uint64_t a2)
{
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  result = glpCGNode(a1, Expr);
  if (result)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 88);
    v24[2] = *(a1 + 72);
    v24[3] = v7;
    v24[4] = *(a1 + 104);
    v24[0] = *(a1 + 40);
    v24[1] = v6;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    SaType = glpASTNodeGetSaType(a2);
    v9 = glpASTNodeGetSaType(a2);
    v10 = glpABIGetTypeSize(0, v9, 0);
    Size = glpTypeSizeGetSize(v10);
    SaFlags = glpASTNodeGetSaFlags(a2);
    addTempsForGLPType(a1, &v19, v18, SaType, Size, 1, 0, SaFlags);
    *(a1 + 128) = AddOp(*(a1 + 136), 0x84u, 0, &v19, 0, v13, v14, v15, v24);
    v16 = v19;
    *(a1 + 56) = v20;
    v17 = v22;
    *(a1 + 72) = v21;
    *(a1 + 88) = v17;
    *(a1 + 104) = v23;
    result = 2;
    *(a1 + 40) = v16;
  }

  return result;
}

uint64_t glpCGAssign(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x277D85DE8];
  Rhs = glpBinaryOperatorNodeGetRhs(a2);
  result = glpCGNode(a1, Rhs);
  v95 = result;
  if (result)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 88);
    v92 = *(a1 + 72);
    v93 = v7;
    v94 = *(a1 + 104);
    v90 = *(a1 + 40);
    v91 = v6;
    Lhs = glpBinaryOperatorNodeGetLhs(a2);
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    v9 = *(glpLValueNodeGetVariableExtra(Lhs) + 136);
    v85 = *v9;
    v10 = v9[4];
    v12 = v9[1];
    v11 = v9[2];
    v88 = v9[3];
    v89 = v10;
    v86 = v12;
    v87 = v11;
    v13 = v9[3];
    v84[2] = v9[2];
    v84[3] = v13;
    v84[4] = v9[4];
    v14 = v9[1];
    v84[0] = *v9;
    v84[1] = v14;
    Offset = glpDerefNodeGetOffset(Lhs);
    SaType = glpASTNodeGetSaType(Lhs);
    v17 = evalOffsetExtraOfOffset(a1, SaType, Offset, &v95);
    if (v95)
    {
      v24 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      if (*v17)
      {
        *(a1 + 128) = AddOp(*(a1 + 136), 0x79u, 0, 0, 0, v21, v22, v23, *v17);
      }

      v25 = *(v24 + 8);
      if (!v25)
      {
        goto LABEL_25;
      }

      if (*v25 != 2)
      {
LABEL_23:
        SetAddressRegister(*(a1 + 136), v25, v18, v19, v20, v21, v22, v23);
        setArrayUsed(a1, v84);
        goto LABEL_24;
      }

      if (v25[2] != 1 || DWORD2(v87) != 1 || (v26 = PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 56), v25[1]), (*(v26 + 24) & 0x1F00) != 0x600))
      {
LABEL_22:
        v25 = *(v24 + 8);
        if (v25)
        {
          goto LABEL_23;
        }

LABEL_25:
        if (Offset && glpOffsetNodeGetSwizzle(Offset))
        {
          v83 = xmmword_23A29C2D0;
          v82 = 0uLL;
        }

        else
        {
          if (!v24 || !*(v24 + 16))
          {
            v43 = AddOp(*(a1 + 136), 0, 0, &v85, 0, v21, v22, v23, &v90);
            goto LABEL_72;
          }

          v83 = xmmword_23A29C2D0;
          v82 = 0uLL;
          if (!Offset)
          {
            goto LABEL_44;
          }
        }

        if (glpOffsetNodeGetSwizzle(Offset))
        {
          if ((glpOffsetNodeGetSwizzle(Offset) & 7) != 0)
          {
            v40 = 0;
            v41 = 3;
            do
            {
              v42 = (glpOffsetNodeGetSwizzle(Offset) >> v41) & 3;
              if (v42 > 1)
              {
                if (v42 == 2)
                {
                  DWORD2(v83) = v40;
                  v82.i32[2] = 1;
                }

                else
                {
                  HIDWORD(v83) = v40;
                  v82.i32[3] = 1;
                }
              }

              else if (v42)
              {
                DWORD1(v83) = v40;
                v82.i32[1] = 1;
              }

              else
              {
                LODWORD(v83) = v40;
                v82.i32[0] = 1;
              }

              ++v40;
              v41 += 2;
            }

            while (v40 < (glpOffsetNodeGetSwizzle(Offset) & 7u));
          }

          goto LABEL_54;
        }

LABEL_44:
        if (SDWORD2(v85) > 2)
        {
          if (DWORD2(v85) != 3)
          {
            if (DWORD2(v85) != 4)
            {
LABEL_54:
              if (v24)
              {
                v24 = *(v24 + 16);
                if (v24)
                {
                  if (*v24 == 2 && *(v24 + 8) == 1)
                  {
                    v44 = *(PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 56), *(v24 + 4)) + 24);
                    if ((v44 & 0x1F00) == 0x600)
                    {
                      v45 = PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 128), WORD2(v44));
                      if (foldDstSwizzleMaskForComp(&v85, &v83, &v82, *(v45 + 4 * *(v24 + 48) + 24)))
                      {
                        v24 = 0;
                      }
                    }
                  }

                  if (v24 && v85 == 5)
                  {
                    memset(v96, 0, sizeof(v96));
                    v46 = AddOp(*(a1 + 136), 0x8Cu, (v24 + 8), 0, 0, v21, v22, v23, v24);
                    for (i = 0; i != 4; ++i)
                    {
                      v80 = v82;
                      v81 = v83;
                      if (foldDstSwizzleMaskForComp(&v85, &v81, &v80, i))
                      {
                        memset(v79, 0, sizeof(v79));
                        memset(v78, 0, sizeof(v78));
                        PrimitiveType = glpGetPrimitiveType(5u);
                        Allocator = glpLinkerGetAllocator(*(a1 + 152));
                        MutableValue = glpMakeMutableValue(Allocator, PrimitiveType, 1, v53, v54, v55, v56, v57, i);
                        addConstantsForGLPValue(a1, v79, v78, PrimitiveType, MutableValue, 0);
                        *(a1 + 128) = AddOp(*(a1 + 136), 0x8Du, v79 + 2, 0, 0, v59, v60, v61, v79);
                        *(a1 + 128) = DstSwizzleMask(*(a1 + 136), &v85, &v90, 0, &v81, &v80, v62, v63);
                        *(v96 + i) = AddOp(*(a1 + 136), 0x54u, 0, 0, 0, v64, v65, v66, 0);
                      }
                    }

                    AddOp(*(a1 + 136), 0x8Fu, 0, 0, 0, v48, v49, v50, 0);
                    v70 = AddOp(*(a1 + 136), 0x74u, 0, 0, 0, v67, v68, v69, 0);
                    *(v46 + 3) = *(v46 + 3) & 0x3FFFFFFFFFFFLL | (*(v70 + 22) << 46);
                    v71 = DWORD2(v85);
                    if (DWORD2(v85))
                    {
                      v72 = *(v70 + 22) << 46;
                      v73 = v96;
                      do
                      {
                        v74 = *v73++;
                        *(v74 + 24) = *(v74 + 24) & 0x3FFFFFFFFFFFLL | v72;
                        --v71;
                      }

                      while (v71);
                    }

                    goto LABEL_73;
                  }
                }
              }

              v43 = DstSwizzleMask(*(a1 + 136), &v85, &v90, v24, &v83, &v82, v22, v23);
LABEL_72:
              *(a1 + 128) = v43;
LABEL_73:
              v75 = v90;
              *(a1 + 56) = v91;
              v76 = v93;
              *(a1 + 72) = v92;
              *(a1 + 88) = v76;
              *(a1 + 104) = v94;
              *(a1 + 40) = v75;
              result = 2;
              goto LABEL_74;
            }

            v82.i32[3] = 1;
          }

          v82.i32[2] = 1;
        }

        else
        {
          if (DWORD2(v85) == 1)
          {
LABEL_53:
            v82.i32[0] = 1;
            goto LABEL_54;
          }

          if (DWORD2(v85) != 2)
          {
            goto LABEL_54;
          }
        }

        v82.i32[1] = 1;
        goto LABEL_53;
      }

      v27 = v26;
      VariableExtra = glpLValueNodeGetVariableExtra(Lhs);
      Kind = glpTypeGetKind(*VariableExtra);
      if (Kind == 3)
      {
        v30 = glpLValueNodeGetVariableExtra(Lhs);
        v31 = glpBankTypeGetBank(*v30) != 3;
      }

      else
      {
        v31 = 0;
      }

      v32 = *(PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 128), *(v27 + 28)) + 4 * *(*(v24 + 8) + 48) + 24);
      v33 = *glpLValueNodeGetVariableExtra(Lhs);
      if (Kind == 3)
      {
        if (v31)
        {
          ElementCount = glpBankTypeGetElementCount(v33);
          v35 = glpLValueNodeGetVariableExtra(Lhs);
          ElementType = glpBankTypeGetElementType(*v35);
          Vec4s = glpTypeGetVec4s(ElementType) * ElementCount;
          goto LABEL_20;
        }

        v33 = glpBankTypeGetElementType(v33);
      }

      Vec4s = glpTypeGetVec4s(v33);
LABEL_20:
      if (v32 < Vec4s)
      {
        DWORD1(v85) += v32;
        DWORD2(v87) = 0;
LABEL_24:
        v38 = primitiveTypeOfDeref(Lhs);
        SaFlags = glpASTNodeGetSaFlags(a2);
        initTypeWithGLPPrimitiveType(&v85 + 2, v38, SaFlags);
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    result = 0;
  }

LABEL_74:
  v77 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t glpCGCommaExpr(uint64_t a1, uint64_t a2)
{
  if (!glpCommaExprNodeGetExprCount(a2))
  {
    return 1;
  }

  v4 = 0;
  do
  {
    Expr = glpCommaExprNodeGetExpr(a2, v4);
    v6 = glpCGNode(a1, Expr);
    if (!v6)
    {
      break;
    }

    ++v4;
  }

  while (v4 < glpCommaExprNodeGetExprCount(a2));
  return v6;
}

char *glpCGParameterDeclaration(uint64_t a1, uint64_t a2)
{
  result = glpParameterDeclarationNodeGetExtra(a2);
  if (!*(result + 17))
  {
    v5 = result;
    v6 = glpLinkerPoolAlloc(*(a1 + 152));
    *(v5 + 17) = v6;
    memset(v11, 0, sizeof(v11));
    v7 = *v5;
    v8 = *(v5 + 32);
    v9 = *(v5 + 15);
    SaFlags = glpASTNodeGetSaFlags(a2);
    return addTempsForGLPType(a1, v6, v11, v7, v8, 1, v9, SaFlags);
  }

  return result;
}

uint64_t glpCGFunctionPrototype(uint64_t a1, uint64_t a2)
{
  glpFunctionPrototypeNodeGetExtra(a2);
  if (glpFunctionPrototypeNodeGetParameterCount(a2))
  {
    v4 = 0;
    while (1)
    {
      Parameter = glpFunctionPrototypeNodeGetParameter(a2, v4);
      result = glpCGNode(a1, Parameter);
      if (!result)
      {
        break;
      }

      if (++v4 >= glpFunctionPrototypeNodeGetParameterCount(a2))
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    ReturnOutParam = glpFunctionPrototypeNodeGetReturnOutParam(a2);
    return glpCGNode(a1, ReturnOutParam) != 0;
  }

  return result;
}

uint64_t glpCGVariableDeclaration(uint64_t a1, uint64_t a2)
{
  Extra = glpVariableDeclarationNodeGetExtra(a2);
  glpVariableDeclarationNodeGetInitializer(a2);

  return cgDeclareVariableObject(a1, Extra);
}

uint64_t glpCGVariableDeclarationGroup(uint64_t a1, uint64_t a2)
{
  if (!glpVariableDeclarationGroupNodeGetDeclarationCount(a2))
  {
    return 1;
  }

  v4 = 0;
  while (1)
  {
    Declaration = glpVariableDeclarationGroupNodeGetDeclaration(a2, v4);
    result = glpCGNode(a1, Declaration);
    if (!result)
    {
      break;
    }

    if (++v4 >= glpVariableDeclarationGroupNodeGetDeclarationCount(a2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t glpCGFunctionDefinition(uint64_t a1, uint64_t a2)
{
  Prototype = glpFunctionDefinitionNodeGetPrototype(a2);
  if (!glpCGNode(a1, Prototype))
  {
    return 0;
  }

  Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
  if ((*(Extra + 9) & 0x20) != 0)
  {
    return 1;
  }

  v9 = Extra;
  v10 = AddOp(*(a1 + 136), 0x87u, 0, 0, 0, v6, v7, v8, 0);
  Name = glpFunctionPrototypeNodeGetName(Prototype);
  if (glpStringsEqual(Name, v12, "main", 0x83863A00000004))
  {
    *(v10 + 3) |= 0x4000uLL;
  }

  *(v9 + 136) = v10;
  Body = glpFunctionDefinitionNodeGetBody(a2);
  v17 = glpCGNode(a1, Body);
  if (v17)
  {
    v18 = AddOp(*(a1 + 136), 0x88u, 0, 0, 0, v14, v15, v16, 0);
    v19 = *(a1 + 8);
    if (v19)
    {
      v20 = *(v18 + 22) << 46;
      do
      {
        *(v19[1] + 24) = *(v19[1] + 24) & 0x3FFFFFFFFFFFLL | v20;
        v19 = *v19;
      }

      while (v19);
      if (*(a1 + 8))
      {
        *(a1 + 8) = 0;
      }
    }
  }

  return v17;
}

uint64_t glpCGInterfaceBlock(uint64_t a1, uint64_t a2)
{
  Extra = glpInterfaceBlockNodeGetExtra(a2);
  result = glpGetIBVariableObjectCount(*(Extra + 40), *(Extra + 64));
  if (result)
  {
    v5 = 0;
    v6 = 8 * result;
    do
    {
      result = cgDeclareVariableObject(a1, *(*(Extra + 72) + v5));
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t glpCGBlock(uint64_t a1, uint64_t a2)
{
  if (!glpBlockNodeGetStatementCount(a2))
  {
    return 1;
  }

  v4 = 0;
  while (1)
  {
    Statement = glpBlockNodeGetStatement(a2, v4);
    result = glpCGNode(a1, Statement);
    if (!result)
    {
      break;
    }

    if (++v4 >= glpBlockNodeGetStatementCount(a2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t glpCGIfStatement(uint64_t a1, uint64_t a2)
{
  Cond = glpIfStatementNodeGetCond(a2);
  result = glpCGNode(a1, Cond);
  if (result)
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 88);
    v27[2] = *(a1 + 72);
    v27[3] = v10;
    v27[4] = *(a1 + 104);
    v27[0] = *(a1 + 40);
    v27[1] = v9;
    v11 = AddOp(*(a1 + 136), 0x55u, v27 + 2, 0, 0, v6, v7, v8, v27);
    IfStatement = glpIfStatementNodeGetIfStatement(a2);
    result = glpCGNode(a1, IfStatement);
    if (result)
    {
      if (glpIfStatementNodeGetElseStatement(a2))
      {
        v16 = AddOp(*(a1 + 136), 0x58u, 0, 0, 0, v13, v14, v15, 0);
        v20 = AddOp(*(a1 + 136), 0x6Fu, 0, 0, 0, v17, v18, v19, 0);
        ElseStatement = glpIfStatementNodeGetElseStatement(a2);
        result = glpCGNode(a1, ElseStatement);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v16 = 0;
        v20 = 0;
      }

      AddOp(*(a1 + 136), 0x59u, 0, 0, 0, v13, v14, v15, 0);
      v25 = AddOp(*(a1 + 136), 0x6Fu, 0, 0, 0, v22, v23, v24, 0);
      v26 = *(v11 + 3) & 0x3FFFFFFFFFFFLL;
      if (v20)
      {
        *(v11 + 3) = v26 | (*(v20 + 22) << 46);
        *(v16 + 3) = *(v16 + 3) & 0x3FFFFFFFFFFFLL | (*(v25 + 22) << 46);
      }

      else
      {
        *(v11 + 3) = v26 | (*(v25 + 22) << 46);
      }

      return 1;
    }
  }

  return result;
}

uint64_t glpCGLoopStatement(void *a1, uint64_t a2)
{
  v4 = glpLinkerPoolAlloc(a1[19]);
  *v4 = a1[2];
  v4[1] = 0;
  a1[2] = v4;
  v8 = AddOp(a1[17], 0x6Bu, 0, 0, 0, v5, v6, v7, 0);
  v12 = AddOp(a1[17], 0x6Fu, 0, 0, 0, v9, v10, v11, 0);
  if (!glpLoopStatementNodeGetBody0(a2) || (Body0 = glpLoopStatementNodeGetBody0(a2), result = glpCGNode(a1, Body0), result))
  {
    v18 = AddOp(a1[17], 0x73u, 0, 0, 0, v13, v14, v15, 0);
    if (!glpLoopStatementNodeGetBody1(a2) || (Body1 = glpLoopStatementNodeGetBody1(a2), result = glpCGNode(a1, Body1), result))
    {
      v23 = AddOp(a1[17], 0x6Cu, 0, 0, 0, v19, v20, v21, 0);
      v27 = AddOp(a1[17], 0x74u, 0, 0, 0, v24, v25, v26, 0);
      v29 = *(v27 + 22);
      v28 = v27 + 88;
      *(v8 + 3) = *(v8 + 3) & 0x3FFFFFFFFFFFLL | (v29 << 46);
      *(v23 + 3) = *(v23 + 3) & 0x3FFFFFFFFFFFLL | (*(v12 + 22) << 46);
      for (i = *(a1[2] + 8); i; i = *i)
      {
        v31 = i[1];
        v32 = *(v31 + 24);
        v33 = (v32 >> 6);
        v34 = v28;
        if (v33 != 84)
        {
          if (v33 != 106)
          {
            v35 = 0;
            goto LABEL_11;
          }

          v34 = v18 + 88;
        }

        v35 = *v34 << 46;
LABEL_11:
        *(v31 + 24) = v35 | v32 & 0x3FFFFFFFFFFFLL;
      }

      v36 = a1[2];
      v36[1] = 0;
      a1[2] = *v36;
      return 1;
    }
  }

  return result;
}

uint64_t glpCGSwitchStatement(uint64_t a1, uint64_t a2)
{
  v4 = glpLinkerPoolAlloc(*(a1 + 152));
  *v4 = *(a1 + 16);
  v4[1] = 0;
  *(a1 + 16) = v4;
  Expr = glpSwitchStatementNodeGetExpr(a2);
  result = glpCGNode(a1, Expr);
  if (result)
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 88);
    v27[2] = *(a1 + 72);
    v27[3] = v11;
    v27[4] = *(a1 + 104);
    v27[0] = *(a1 + 40);
    v27[1] = v10;
    v12 = AddOp(*(a1 + 136), 0x8Cu, v27 + 2, 0, 0, v7, v8, v9, v27);
    Body = glpSwitchStatementNodeGetBody(a2);
    result = glpCGNode(a1, Body);
    if (result)
    {
      AddOp(*(a1 + 136), 0x8Fu, 0, 0, 0, v14, v15, v16, 0);
      v20 = AddOp(*(a1 + 136), 0x74u, 0, 0, 0, v17, v18, v19, 0);
      *(v12 + 3) = *(v12 + 3) & 0x3FFFFFFFFFFFLL | (*(v20 + 22) << 46);
      v21 = *(*(a1 + 16) + 8);
      if (!v21)
      {
LABEL_9:
        v26 = *(a1 + 16);
        v26[1] = 0;
        *(a1 + 16) = *v26;
        return 1;
      }

      while (1)
      {
        v22 = v21[1];
        v23 = *(v22 + 24);
        v24 = (v23 >> 6);
        if (v24 == 84)
        {
          v25 = *(v20 + 22) << 46;
        }

        else
        {
          if (v24 == 106)
          {
            return 0;
          }

          v25 = 0;
        }

        *(v22 + 24) = v25 | v23 & 0x3FFFFFFFFFFFLL;
        v21 = *v21;
        if (!v21)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

uint64_t glpCGCaseStatement(uint64_t a1, uint64_t a2)
{
  ConstValue = glpCaseStatementNodeGetConstValue(a2);
  result = glpCGNode(a1, ConstValue);
  if (result)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 88);
    v10[2] = *(a1 + 72);
    v10[3] = v9;
    v10[4] = *(a1 + 104);
    v10[0] = *(a1 + 40);
    v10[1] = v8;
    *(a1 + 128) = AddOp(*(a1 + 136), 0x8Du, v10 + 2, 0, 0, v5, v6, v7, v10);
    return *(a1 + 16) != 0;
  }

  return result;
}

uint64_t glpCGBreakStatement(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = AddOp(a1[17], 0x54u, 0, 0, 0, a6, a7, a8, 0);
  v10 = glpLinkerPoolAlloc(a1[19]);
  v10[1] = v9;
  v11 = a1[2];
  if (!v11)
  {
    return 0;
  }

  *v10 = *(v11 + 8);
  *(v11 + 8) = v10;
  return 1;
}

uint64_t glpCGContinueStatement(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = AddOp(a1[17], 0x6Au, 0, 0, 0, a6, a7, a8, 0);
  v10 = glpLinkerPoolAlloc(a1[19]);
  v10[1] = v9;
  v11 = a1[2];
  if (!v11)
  {
    return 0;
  }

  *v10 = *(v11 + 8);
  *(v11 + 8) = v10;
  return 1;
}

void *glpCGReturnStatement(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = AddOp(a1[17], 0x4Du, 0, 0, 0, a6, a7, a8, 0);
  result = glpLinkerPoolAlloc(a1[19]);
  *result = a1[1];
  result[1] = v9;
  a1[1] = result;
  return result;
}

void *glpCGRawCallNode(void *a1, uint64_t a2)
{
  v3 = glpRawCallNodeGetExtra(a2);
  v7 = AddOp(a1[17], 0x4Cu, 0, 0, 0, v4, v5, v6, 0);
  a1[16] = v7;
  result = glpLinkerPoolAlloc(a1[19]);
  result[2] = v3;
  *result = *a1;
  result[1] = v7;
  *a1 = result;
  return result;
}

uint64_t glpCGSubroutineRawCallNode(uint64_t a1, uint64_t a2)
{
  v4 = glpSubroutineRawCallNodeGetExtra(a2);
  v5 = *(v4 + 32);
  v29[0] = *v5;
  v6 = v5[4];
  v8 = v5[1];
  v7 = v5[2];
  v31 = v5[3];
  v32 = v6;
  v29[1] = v8;
  v30 = v7;
  v28 = 116736;
  v9 = glpABIGetTypeSize(0, *(v4 + 16), 0);
  Size = glpTypeSizeGetSize(v9);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v11 = glpSubroutineRawCallNodeGetIndexExpr(a2);
  if (v11)
  {
    result = glpCGNode(a1, v11);
    if (!result)
    {
      return result;
    }

    v19 = *(a1 + 56);
    v23 = *(a1 + 40);
    v24 = v19;
    v20 = *(a1 + 88);
    v25 = *(a1 + 72);
    v26 = v20;
    v27 = *(a1 + 104);
    if (v23 == 2 && DWORD2(v23) == 1 && DWORD2(v30) == 1 && (v21 = *(PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 56), SDWORD1(v23)) + 24), (v21 & 0x1F00) == 0x600) && (v22 = *(PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 128), WORD2(v21)) + 4 * v26 + 24), v22 < Size))
    {
      DWORD1(v29[0]) += v22;
      DWORD2(v30) = 0;
    }

    else
    {
      *(a1 + 128) = SetAddressRegister(*(a1 + 136), &v23, v16, v17, v18, v12, v13, v14);
      v28 = 116737;
    }
  }

  *(a1 + 128) = AddOp(*(a1 + 136), 0x4Cu, 0, 0, 0, v12, v13, v14, v29);
  return 1;
}

uint64_t glpCGLValue(uint64_t a1, uint64_t a2)
{
  VariableExtra = glpLValueNodeGetVariableExtra(a2);
  v5 = *(VariableExtra + 8);
  if (v5 && glpLayoutObjectFind(v5, 28))
  {
    return 1;
  }

  v7 = *(VariableExtra + 136);
  *(a1 + 40) = *v7;
  v8 = v7[1];
  v9 = v7[2];
  v10 = v7[3];
  *(a1 + 104) = v7[4];
  *(a1 + 88) = v10;
  *(a1 + 72) = v9;
  *(a1 + 56) = v8;
  v11 = v7[3];
  v13[2] = v7[2];
  v13[3] = v11;
  v13[4] = v7[4];
  v12 = v7[1];
  v13[0] = *v7;
  v13[1] = v12;
  return cgDerefNode(a1, a2, v13);
}

uint64_t glpCGRValue(uint64_t a1, uint64_t a2)
{
  Base = glpRValueNodeGetBase(a2);
  result = glpCGNode(a1, Base);
  if (result)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 88);
    v8[2] = *(a1 + 72);
    v8[3] = v7;
    v8[4] = *(a1 + 104);
    v8[0] = *(a1 + 40);
    v8[1] = v6;
    return cgDerefNode(a1, a2, v8);
  }

  return result;
}

char *addTempsForGLPPrimitiveType(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7)
{
  memset(v13, 0, sizeof(v13));
  initTypeWithGLPPrimitiveType(v13, a4, a7);
  result = AddTemp(*(a1 + 136), a2, a3, v13);
  if (a5)
  {
    if (DWORD1(v13[0]) >= 2)
    {
      return addArrayHelper(a1, a2, a3, a6);
    }
  }

  return result;
}

unsigned int *initTypeWithGLPPrimitiveType(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = __ROR8__(a3 & 0x1F, 2) - 1;
  if (v6 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_23A29C2E0[v6];
  }

  a1[6] = v7;
  Category = glpPrimitiveTypeGetCategory(a2);
  if (Category > 2)
  {
    if (Category != 3)
    {
      if (Category != 4)
      {
        goto LABEL_26;
      }

      *a1 = 0x100000001;
      a1[6] = 3;
      goto LABEL_21;
    }

    ElementType = glpPrimitiveMatrixGetElementType(v4);
    a1[1] = glpPrimitiveMatrixGetColumns(v4);
    Category = glpPrimitiveMatrixGetRows(v4);
    goto LABEL_13;
  }

  if (Category != 1)
  {
    if (Category != 2)
    {
      goto LABEL_26;
    }

    ElementType = glpPrimitiveVectorGetElementType(v4);
    a1[1] = 1;
    Category = glpPrimitiveVectorGetLength(v4);
LABEL_13:
    LODWORD(v4) = ElementType;
    goto LABEL_14;
  }

  a1[1] = 1;
LABEL_14:
  *a1 = Category;
  if (v4 > 8)
  {
    switch(v4)
    {
      case 9:
        v10 = 1;
        break;
      case 0x24:
        v10 = 3;
        break;
      case 0x3E:
        v10 = 4;
        break;
      default:
        goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v4 == 1)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 != 5)
  {
    goto LABEL_26;
  }

LABEL_21:
  v10 = 2;
LABEL_25:
  a1[5] = v10;
LABEL_26:
  a1[7] = (a3 >> 43) & 1;

  return FinishType(a1);
}

void *addArrayHelper(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  AddArray(*(a1 + 136), a2, a3);
  v8 = v7;
  result = glpLinkerPoolAlloc(*(a1 + 152));
  v11 = result;
  *result = v8;
  result[1] = a4;
  if (*a2 == 1)
  {
    v12 = 24;
  }

  else
  {
    if (*a2 != 2)
    {
      return result;
    }

    v12 = 32;
  }

  v13 = *(a1 + v12);
  v14 = a2[1];

  return glpIntHashPut(v13, v14, v11, v10);
}

void addConstantsForGLPValue(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, char *a5, unint64_t a6)
{
  v12 = *(a1 + 8 * glpPrecisionIndexFromSAFlags(a6) + 160);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 0x40000000;
  v29[2] = __addConstantsForGLPValue_block_invoke;
  v29[3] = &__block_descriptor_tmp_1;
  v29[4] = a1;
  v13 = glpPointerHashCache_b(v12, a5, v29);
  v14 = v13;
  if (*v13 == 1)
  {
    v21 = *(v13 + 8);
    if (!*(v21 + 32))
    {
      v22 = glpTypeFromScalarTypeAndComponentCount(*(v21 + 8), *(v21 + 12));
      addConstantsForGLPType(a1, v21 + 40, v21 + 120, v22, (v21 + 16), 1, a6);
      *(v21 + 32) = 1;
    }

    *a2 = *(v21 + 40);
    v23 = *(v21 + 56);
    v24 = *(v21 + 72);
    v25 = *(v21 + 104);
    *(a2 + 48) = *(v21 + 88);
    *(a2 + 64) = v25;
    *(a2 + 16) = v23;
    *(a2 + 32) = v24;
    *(a2 + 48) = *(v14 + 20);
    *(a2 + 8) = *(v14 + 16);
    FinishType((a2 + 8));
    *a3 = *(v21 + 120);
    v26 = *(v21 + 136);
    v27 = *(v21 + 152);
    v28 = *(v21 + 184);
    *(a3 + 48) = *(v21 + 168);
    *(a3 + 64) = v28;
    *(a3 + 16) = v26;
    *(a3 + 32) = v27;
    *(a3 + 48) = *(v14 + 20);
    *(a3 + 8) = *(v14 + 16);
    FinishType((a3 + 8));
  }

  else
  {
    if (*v13)
    {
      abort();
    }

    if (!*(v13 + 8))
    {
      addConstantsForGLPType(a1, v13 + 16, v13 + 96, a4, a5, 1, a6);
      *(v14 + 8) = 1;
    }

    *a2 = *(v14 + 16);
    v15 = *(v14 + 32);
    v16 = *(v14 + 48);
    v17 = *(v14 + 80);
    *(a2 + 48) = *(v14 + 64);
    *(a2 + 64) = v17;
    *(a2 + 16) = v15;
    *(a2 + 32) = v16;
    v18 = *(v14 + 160);
    v20 = *(v14 + 112);
    v19 = *(v14 + 128);
    *(a3 + 48) = *(v14 + 144);
    *(a3 + 64) = v18;
    *(a3 + 16) = v20;
    *(a3 + 32) = v19;
    *a3 = *(v14 + 96);
  }
}

uint64_t __addConstantsForGLPValue_block_invoke(uint64_t a1)
{
  result = glpLinkerPoolAlloc(*(*(a1 + 32) + 152));
  *result = 0;
  *(result + 8) = 0;
  return result;
}

__n128 addConstantsForGLPType(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, char *a5, int a6, unint64_t a7)
{
  Kind = glpTypeGetKind(a4);
  if (Kind == 2)
  {
    ElementType = glpArrayTypeGetElementType(a4);
    ElementCount = glpArrayTypeGetElementCount(a4);
    v30 = 0;
    v31 = ElementCount - 1;
    do
    {
      v45 = 0u;
      memset(v46, 0, sizeof(v46));
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      *__n = 0u;
      addConstantsForGLPType(a1, v46, &v41, ElementType, a5, 0, a7);
      v32 = glpABIGetTypeSize(0, ElementType, 0);
      Size = glpTypeSizeGetSize(v32);
      if (!v30)
      {
        v34 = v46[3];
        *(a2 + 32) = v46[2];
        *(a2 + 48) = v34;
        *(a2 + 64) = v46[4];
        result = v46[1];
        *a2 = v46[0];
        *(a2 + 16) = result;
      }

      if (v31 == v30)
      {
        v35 = v44;
        *(a3 + 32) = v43;
        *(a3 + 48) = v35;
        *(a3 + 64) = v45;
        result = *__n;
        *a3 = v41;
        *(a3 + 16) = result;
      }

      a5 += 16 * Size;
      ++v30;
    }

    while (v30 <= v31);
LABEL_26:
    if (!a6)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (Kind == 1)
  {
    v20 = 0;
    v21 = glpAggregateTypeGetElementCount(a4) - 1;
    do
    {
      v22 = glpAggregateTypeGetElementType(a4, v20);
      v45 = 0u;
      memset(v46, 0, sizeof(v46));
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      *__n = 0u;
      ElementFlags = glpAggregateTypeGetElementFlags(a4, v20);
      addConstantsForGLPType(a1, v46, &v41, v22, a5, 0, ElementFlags);
      v24 = glpABIGetTypeSize(0, v22, 0);
      v25 = glpTypeSizeGetSize(v24);
      if (!v20)
      {
        v26 = v46[3];
        *(a2 + 32) = v46[2];
        *(a2 + 48) = v26;
        *(a2 + 64) = v46[4];
        result = v46[1];
        *a2 = v46[0];
        *(a2 + 16) = result;
      }

      if (v21 == v20)
      {
        v27 = v44;
        *(a3 + 32) = v43;
        *(a3 + 48) = v27;
        *(a3 + 64) = v45;
        result = *__n;
        *a3 = v41;
        *(a3 + 16) = result;
      }

      a5 += 16 * v25;
      ++v20;
    }

    while (v20 <= v21);
    goto LABEL_26;
  }

  if (Kind)
  {
    return result;
  }

  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a4);
  v41 = 0u;
  *__n = 0u;
  initTypeWithGLPPrimitiveType(&v41, PrimitiveType, a7);
  if (!a6)
  {
    AddConstant(*(a1 + 136), a2, a3, &v41, a5);
    return result;
  }

  if (*(&v41 + 1) != 0x100000001 || (v17 = **(*(a1 + 136) + 56)) == 0)
  {
LABEL_11:
    AddConstant(*(a1 + 136), a2, a3, &v41, a5);
    if (DWORD1(v41) < 2)
    {
      return result;
    }

LABEL_27:
    addArrayHelper(a1, a2, a3, 0);
    return result;
  }

  while (1)
  {
    v18 = *(v17 + 24);
    if ((v18 & 0x1FC0) == 0x600 && __PAIR64__(v18 & 7, (v18 >> 3) & 7) == *(__n + 4))
    {
      v19 = PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 128), WORD2(v18));
      if (!memcmp((v19 + 24), a5, LODWORD(__n[0])))
      {
        break;
      }
    }

    v17 = *(v17 + 8);
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  memset(&v46[2] + 8, 0, 40);
  v36 = *(v17 + 32);
  LODWORD(v46[0]) = 2;
  DWORD1(v46[0]) = v36;
  *(v46 + 8) = v41;
  *(&v46[1] + 8) = *__n;
  InitReg(*(a1 + 136), 0, v46);
  result = v46[2];
  v37 = v46[3];
  *(a2 + 32) = v46[2];
  *(a2 + 48) = v37;
  v38 = v46[4];
  *(a2 + 64) = v46[4];
  v40 = v46[0];
  v39 = v46[1];
  *a2 = v46[0];
  *(a2 + 16) = v39;
  *(a3 + 48) = v37;
  *(a3 + 64) = v38;
  *(a3 + 16) = v39;
  *(a3 + 32) = result;
  *a3 = v40;
  return result;
}

uint64_t glpTypeGetVec4s(uint64_t a1)
{
  v1 = glpABIGetTypeSize(0, a1, 0);

  return glpTypeSizeGetSize(v1);
}

char *addTempsForGLPType(uint64_t a1, uint64_t a2, _OWORD *a3, unsigned int *a4, int a5, int a6, uint64_t a7, unint64_t a8)
{
  result = glpTypeGetKind(a4);
  if (result > 1)
  {
    if (result == 2)
    {
      ElementType = glpArrayTypeGetElementType(a4);
      v39 = glpABIGetTypeSize(0, ElementType, 0);
      Size = glpTypeSizeGetSize(v39);
      v41 = 0;
      v42 = (a5 + Size - 1) / Size - 1;
      do
      {
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
        result = addTempsForGLPType(a1, &v52, &v47, ElementType, Size, 0, 0, a8);
        if (!v41)
        {
          v43 = v55;
          *(a2 + 32) = v54;
          *(a2 + 48) = v43;
          *(a2 + 64) = v56;
          v44 = v53;
          *a2 = v52;
          *(a2 + 16) = v44;
        }

        if (v42 == v41)
        {
          v45 = v50;
          a3[2] = v49;
          a3[3] = v45;
          a3[4] = v51;
          v46 = v48;
          *a3 = v47;
          a3[1] = v46;
        }

        ++v41;
      }

      while (v41 <= v42);
    }

    else
    {
      if (result != 3)
      {
        return result;
      }

      v27 = glpBankTypeGetElementType(a4);
      v28 = glpABIGetTypeSize(0, v27, 0);
      v29 = glpTypeSizeGetSize(v28);
      ElementCount = glpBankTypeGetElementCount(a4);
      v31 = 0;
      v32 = ElementCount - 1;
      do
      {
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
        result = addTempsForGLPType(a1, &v52, &v47, v27, v29, 0, 0, a8);
        if (!v31)
        {
          v33 = v55;
          *(a2 + 32) = v54;
          *(a2 + 48) = v33;
          *(a2 + 64) = v56;
          v34 = v53;
          *a2 = v52;
          *(a2 + 16) = v34;
        }

        if (v32 == v31)
        {
          v35 = v50;
          a3[2] = v49;
          a3[3] = v35;
          a3[4] = v51;
          v36 = v48;
          *a3 = v47;
          a3[1] = v36;
        }

        ++v31;
      }

      while (v31 <= v32);
    }

    goto LABEL_29;
  }

  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v17 = 0;
    v18 = glpAggregateTypeGetElementCount(a4) - 1;
    do
    {
      v19 = glpAggregateTypeGetElementType(a4, v17);
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
      v20 = glpABIGetTypeSize(0, v19, 0);
      v21 = glpTypeSizeGetSize(v20);
      ElementFlags = glpAggregateTypeGetElementFlags(a4, v17);
      result = addTempsForGLPType(a1, &v52, &v47, v19, v21, 0, 0, ElementFlags);
      if (!v17)
      {
        v23 = v55;
        *(a2 + 32) = v54;
        *(a2 + 48) = v23;
        *(a2 + 64) = v56;
        v24 = v53;
        *a2 = v52;
        *(a2 + 16) = v24;
      }

      if (v18 == v17)
      {
        v25 = v50;
        a3[2] = v49;
        a3[3] = v25;
        a3[4] = v51;
        v26 = v48;
        *a3 = v47;
        a3[1] = v26;
      }

      ++v17;
    }

    while (v17 <= v18);
LABEL_29:
    if (a6)
    {
      return addArrayHelper(a1, a2, a3, a7);
    }

    return result;
  }

  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a4);

  return addTempsForGLPPrimitiveType(a1, a2, a3, PrimitiveType, a6, a7, a8);
}

uint64_t evalOffsetExtraOfOffset(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *a4 = 1;
  if (!a3)
  {
    return 0;
  }

  Extra = glpOffsetNodeGetExtra(a3);
  if (glpOffsetNodeGetBankIndex(a3) && !*Extra)
  {
    BankIndex = glpOffsetNodeGetBankIndex(a3);
    v10 = glpCGNode(a1, BankIndex);
    *a4 = v10;
    if (!v10)
    {
      return 0;
    }

    v11 = glpLinkerPoolAlloc(*(a1 + 152));
    *Extra = v11;
    *v11 = *(a1 + 40);
    v12 = *(a1 + 72);
    v13 = *(a1 + 104);
    v14 = *(a1 + 56);
    v11[3] = *(a1 + 88);
    v11[4] = v13;
    v11[1] = v14;
    v11[2] = v12;
  }

  if (glpOffsetNodeGetOffsetExpr(a3) && !*(Extra + 8))
  {
    OffsetExpr = glpOffsetNodeGetOffsetExpr(a3);
    v16 = glpCGNode(a1, OffsetExpr);
    *a4 = v16;
    if (!v16)
    {
      return 0;
    }

    v17 = glpLinkerPoolAlloc(*(a1 + 152));
    *(Extra + 8) = v17;
    *v17 = *(a1 + 40);
    v18 = *(a1 + 72);
    v19 = *(a1 + 104);
    v20 = *(a1 + 56);
    v17[3] = *(a1 + 88);
    v17[4] = v19;
    v17[1] = v20;
    v17[2] = v18;
  }

  if (glpOffsetNodeGetVectorElementExpr(a3) && !*(Extra + 16))
  {
    VectorElementExpr = glpOffsetNodeGetVectorElementExpr(a3);
    v22 = glpCGNode(a1, VectorElementExpr);
    *a4 = v22;
    if (v22)
    {
      v23 = glpLinkerPoolAlloc(*(a1 + 152));
      *(Extra + 16) = v23;
      *v23 = *(a1 + 40);
      v24 = *(a1 + 72);
      v25 = *(a1 + 104);
      v26 = *(a1 + 56);
      v23[3] = *(a1 + 88);
      v23[4] = v25;
      v23[1] = v26;
      v23[2] = v24;
      goto LABEL_14;
    }

    return 0;
  }

LABEL_14:
  CompStride = glpOffsetNodeGetCompStride(a3);
  *(Extra + 24) = CompStride;
  if (CompStride == -1)
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a2);
    if (glpPrimitiveTypeGetCategory(PrimitiveType) - 1 <= 2)
    {
      LODWORD(PrimitiveType) = glpPrimitiveTypeGetScalarType(PrimitiveType);
    }

    if (PrimitiveType == 62)
    {
      v29 = 8;
    }

    else
    {
      v29 = 4;
    }

    *(Extra + 24) = v29;
  }

  return Extra;
}

uint64_t primitiveTypeOfDeref(uint64_t a1)
{
  Offset = glpDerefNodeGetOffset(a1);
  if (glpOffsetNodeGetPreSwizzlePrimitiveType(Offset))
  {

    return glpOffsetNodeGetPreSwizzlePrimitiveType(Offset);
  }

  else
  {
    SaType = glpASTNodeGetSaType(a1);

    return glpPrimitiveTypeGetPrimitiveType(SaType);
  }
}

uint64_t setArrayUsed(uint64_t result, _DWORD *a2)
{
  v3 = result;
  if (*a2 == 1)
  {
    v4 = 24;
  }

  else
  {
    if (*a2 != 2)
    {
      return result;
    }

    v4 = 32;
  }

  glpIntHashGet(*(result + v4), a2[1]);
  v5 = *(v3 + v4);
  v6 = a2[1];

  return glpIntHashRemove(v5, v6);
}

BOOL foldDstSwizzleMaskForComp(uint64_t a1, _DWORD *a2, _DWORD *a3, int a4)
{
  if (*a3)
  {
    if (*a2 == a4)
    {
      v4 = 0;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  v5 = a3 + 1;
  if (a3[1] && a2[1] == a4)
  {
    v4 = 1;
  }

  if (a3[2] && a2[2] == a4)
  {
    v4 = 2;
  }

  v6 = a3 + 3;
  if (a3[3] && a2[3] == a4)
  {
    v4 = 3;
  }

  v7 = *(a1 + 8);
  if (v4 < v7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    if (v4 == 2)
    {
      v8 = a3 + 3;
    }

    else
    {
      v8 = a3 + 2;
    }

    if (v4)
    {
      v9 = a3;
    }

    else
    {
      v9 = a3 + 1;
    }

    if (v4 <= 1)
    {
      v5 = a3 + 2;
    }

    else
    {
      v6 = v8;
    }

    if (v4 <= 1)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    *v6 = 0;
    *v5 = 0;
    *v10 = 0;
  }

  return v4 < v7;
}

uint64_t cgDeclareVariableObject(uint64_t a1, uint64_t a2)
{
  v119 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  ElementType = *a2;
  if ((v4 & 0x20040000000) == 0x40000000 && **(a1 + 136) == 36488)
  {
    ElementType = glpBankTypeGetElementType(*a2);
  }

  memset(v101, 0, sizeof(v101));
  v6 = *(a2 + 8);
  if (v6 && glpLayoutObjectFind(v6, 28) || !*(a2 + 128))
  {
    goto LABEL_39;
  }

  if ((v4 & 0x800000000) != 0)
  {
    v8 = *(a2 + 88);
    v9 = *(v8 + 16);
    if (!v9)
    {
      *(v8 + 16) = glpLinkerPoolAlloc(*(a1 + 152));
      memset(v118, 0, sizeof(v118));
      initTypeWithGLPPrimitiveType(v118, 1, 0);
      if (glpTypeGetKind(*a2) == 3)
      {
        v10 = glpBankTypeGetElementCount(*a2) - 1;
      }

      else
      {
        v10 = 0;
      }

      v26 = 0;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v113 = 0u;
      do
      {
        v27 = *(a2 + 88);
        v112 = ((v26 + *(v27 + 28)) << 32) | 0x400;
        MinimumBufferSize = glpBufferObjectGetMinimumBufferSize(v27);
        v112 = v112 & 0xF00000FFFFFFFFFFLL | (((MinimumBufferSize >> 4) & 0xFFFFFLL) << 40);
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        AddBinding(*(a1 + 136), &v107, &v102, 2, v118, &v112);
        if (!v26)
        {
          v29 = *(v8 + 16);
          *v29 = v107;
          v30 = v108;
          v31 = v109;
          v32 = v111;
          v29[3] = v110;
          v29[4] = v32;
          v29[1] = v30;
          v29[2] = v31;
        }

        if (v10 == v26)
        {
          v115 = v104;
          v116 = v105;
          v117 = v106;
          v113 = v102;
          v114 = v103;
        }

        ++v26;
      }

      while (v26 <= v10);
      if (glpTypeGetKind(*a2) == 3)
      {
        addArrayHelper(a1, *(v8 + 16), &v113, 0);
        v33 = *(v8 + 16);
        v34 = 4;
      }

      else
      {
        v33 = *(v8 + 16);
        if ((*(a2 + 52) & 4) != 0)
        {
          v34 = 2;
        }

        else
        {
          v34 = 3;
        }
      }

      *(v33 + 40) = v34;
      v9 = *(*(a2 + 88) + 16);
    }

    *(a2 + 136) = v9;
    goto LABEL_39;
  }

  v7 = glpLinkerPoolAlloc(*(a1 + 152));
  *(a2 + 136) = v7;
  if ((v4 & 0x60) != 0)
  {
    addConstantsForGLPValue(a1, v7, v101, ElementType, *(a2 + 64), *(a2 + 48));
LABEL_39:
    v25 = 1;
    goto LABEL_40;
  }

  v11 = *(a2 + 8);
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = glpLayoutObjectFind(v11, 77);
  if (v12)
  {
    *(*(a1 + 136) + 136) = *(v12 + 4);
  }

  v13 = *(a2 + 8);
  if (v13 && (v14 = glpLayoutObjectFind(v13, 33)) != 0)
  {
    v15 = v14;
    if (glpTypeGetKind(ElementType) == 2)
    {
      v16 = *(a2 + 128);
      v17 = glpArrayTypeGetElementType(ElementType);
      v18 = glpABIGetTypeSize(0, v17, 0);
      Size = glpTypeSizeGetSize(v18);
      v20 = (v16 + Size - 1) / Size * Size;
    }

    else if (glpTypeGetKind(ElementType) && (Size = glpTypeGetKind(ElementType), Size != 1))
    {
      v20 = *(a2 + 128);
    }

    else
    {
      Size = glpTypeGetVec4s(ElementType);
      v20 = Size;
    }

    v99 = &v99;
    MEMORY[0x28223BE20](Size);
    v43 = &v99 - v42;
    bzero(&v99 - v42, 8 * v20);
    v100 = v43;
    bzero(v43, 8 * v20);
    v44 = *(v15 + 4);
    if (v20)
    {
      v45 = 0;
      v46 = 0;
      v47 = v100;
      do
      {
        v48 = glpLayoutObjectFind(*(a2 + 8), 34);
        if (v48)
        {
          *v47 = *v47 & 0xFFFFFFFFFFFF83FFLL | ((v48[2] & 0x1F) << 10);
        }

        v49 = glpLayoutObjectFind(*(a2 + 8), 35);
        if (v49)
        {
          *v47 = *v47 & 0xFFFFFFC0FFFFFFFFLL | ((v49[2] & 0x3F) << 32);
        }

        v50 = glpLayoutObjectFind(*(a2 + 8), 36);
        if (v50)
        {
          *v47 = *v47 & 0xFFFFFFBFFFFFFFFFLL | ((v50[2] & 1) << 38);
        }

        v51 = glpLayoutObjectFind(*(a2 + 8), 37);
        if (v51)
        {
          *v47 = *v47 & 0xFFFFFF7FFFFFFFFFLL | ((v51[2] & 1) << 39);
        }

        v52 = glpLayoutObjectFind(*(a2 + 8), 38);
        if (v52)
        {
          *v47 = *v47 & 0xFFFFFEFFFFFFFFFFLL | ((v52[2] & 1) << 40);
        }

        v53 = glpLayoutObjectFind(*(a2 + 8), 39);
        if (v53)
        {
          *v47 = *v47 & 0xFFFFFFFEFFFFFFFFLL | ((v53[2] & 1) << 32);
        }

        v54 = glpLayoutObjectFind(*(a2 + 8), 40);
        if (v54)
        {
          *v47 = *v47 & 0xFFFFFFFDFFFFFFFFLL | ((v54[2] & 1) << 33);
        }

        v55 = glpLayoutObjectFind(*(a2 + 8), 41);
        if (v55)
        {
          *v47 = *v47 & 0xFFFFFFFEFFFFFFFFLL | ((v55[2] & 1) << 32);
        }

        v56 = glpLayoutObjectFind(*(a2 + 8), 42);
        if (v56)
        {
          *v47 = *v47 & 0xFFFFFFFEFFFFFFFFLL | ((v56[2] & 1) << 32);
        }

        v57 = glpLayoutObjectFind(*(a2 + 8), 43);
        if (v57)
        {
          *v47 = *v47 & 0xFFFFFFE0FFFFFFFFLL | ((v57[2] & 0x1F) << 32);
        }

        v58 = glpLayoutObjectFind(*(a2 + 8), 44);
        if (v58)
        {
          *(v47 + 1) = *(v58 + 4);
        }

        v59 = glpLayoutObjectFind(*(a2 + 8), 45);
        if (v59)
        {
          *v47 = *v47 & 0xFFFFFFF8FFFFFFFFLL | ((v59[2] & 7) << 32);
        }

        v60 = glpLayoutObjectFind(*(a2 + 8), 46);
        if (v60)
        {
          *v47 = *v47 & 0xFFFFFFFFFFFFE0FFLL | ((v60[2] & 0x1F) << 8);
        }

        v61 = glpLayoutObjectFind(*(a2 + 8), 48);
        if (v61)
        {
          *v47 = *v47 & 0xFFFFFFF8FFFFFFFFLL | ((v61[2] & 7) << 32);
        }

        v62 = glpLayoutObjectFind(*(a2 + 8), 49);
        if (v62)
        {
          *v47 = *v47 & 0xFFFFFF07FFFFFFFFLL | ((v62[2] & 0x1F) << 35);
        }

        v63 = glpLayoutObjectFind(*(a2 + 8), 51);
        if (v63)
        {
          *v47 = *v47 & 0xFFFFF0FFFFFFFFFFLL | ((v63[2] & 0xF) << 40);
        }

        v64 = glpLayoutObjectFind(*(a2 + 8), 53);
        if (v64)
        {
          *v47 = *v47 & 0xFFFFFEFFFFFFFFFFLL | ((v64[2] & 1) << 40);
        }

        v65 = glpLayoutObjectFind(*(a2 + 8), 54);
        if (v65)
        {
          *v47 = *v47 & 0xFFFFF9FFFFFFFFFFLL | ((v65[2] & 3) << 41);
        }

        v66 = glpLayoutObjectFind(*(a2 + 8), 55);
        if (v66)
        {
          *v47 = *v47 & 0xFFFFFFFEFFFFFFFFLL | ((v66[2] & 1) << 32);
        }

        v67 = glpLayoutObjectFind(*(a2 + 8), 56);
        if (v67)
        {
          *v47 = *v47 & 0xFFFFFFF1FFFFFFFFLL | ((v67[2] & 7) << 33);
        }

        v68 = glpLayoutObjectFind(*(a2 + 8), 58);
        if (v68)
        {
          *v47 = *v47 & 0xFFFFFC7FFFFFFFFFLL | ((v68[2] & 7) << 39);
        }

        v69 = glpLayoutObjectFind(*(a2 + 8), 62);
        if (v69)
        {
          *v47 = *v47 & 0xFFFFFCFFFFFFFFFFLL | ((v69[2] & 3) << 40);
        }

        v70 = glpLayoutObjectFind(*(a2 + 8), 64);
        if (v70)
        {
          *v47 = *v47 & 0xFFFF8FFFFFFFFFFFLL | ((v70[2] & 7) << 44);
        }

        v71 = glpLayoutObjectFind(*(a2 + 8), 65);
        if (v71)
        {
          *v47 = *v47 & 0xFFFFFFF0FFFFFFFFLL | ((v71[2] & 0xF) << 32);
        }

        v72 = glpLayoutObjectFind(*(a2 + 8), 66);
        if (v72)
        {
          *v47 = *v47 & 0xFFFFFF0FFFFFFFFFLL | ((v72[2] & 0xF) << 36);
        }

        v73 = glpLayoutObjectFind(*(a2 + 8), 67);
        if (v73)
        {
          *v47 = *v47 & 0xFFFFFFFFFFLL | (*(v73 + 4) << 40);
        }

        v74 = glpLayoutObjectFind(*(a2 + 8), 68);
        if (v74)
        {
          *v47 = *v47 & 0xFFFFFFFFFFFFE0FFLL | ((v74[2] & 0x1F) << 8);
        }

        v75 = glpLayoutObjectFind(*(a2 + 8), 70);
        if (v75)
        {
          *v47 = *v47 & 0xFFFFFFBFFFFFFFFFLL | ((v75[2] & 1) << 38);
        }

        v76 = glpLayoutObjectFind(*(a2 + 8), 71);
        if (v76)
        {
          *v47 = *v47 & 0xFFFFFFFEFFFFFFFFLL | ((v76[2] & 1) << 32);
        }

        v77 = glpLayoutObjectFind(*(a2 + 8), 72);
        if (v77)
        {
          *v47 = *v47 & 0xFFFFFFF1FFFFFFFFLL | ((v77[2] & 7) << 33);
        }

        v78 = glpLayoutObjectFind(*(a2 + 8), 73);
        if (v78)
        {
          *v47 = *v47 & 0xFFFFFFEFFFFFFFFFLL | ((v78[2] & 1) << 36);
        }

        v79 = glpLayoutObjectFind(*(a2 + 8), 74);
        if (v79)
        {
          *v47 = *v47 & 0xFFFFFFFEFFFFFFFFLL | ((v79[2] & 1) << 32);
        }

        v80 = glpLayoutObjectFind(*(a2 + 8), 75);
        if (v80)
        {
          *v47 = *v47 & 0xFFFFFFE0FFFFFFFFLL | ((v80[2] & 0x1F) << 32);
        }

        v81 = glpLayoutObjectFind(*(a2 + 8), 76);
        if (v81)
        {
          *(v47 + 1) = *(v81 + 4);
        }

        v82 = glpLayoutObjectFind(*(a2 + 8), 47);
        if (v82)
        {
          *v47 = *v47 & 0xFFFFFFFF0000FFFFLL | (v45 + (*(v82 + 4) << 16));
        }

        v83 = glpLayoutObjectFind(*(a2 + 8), 50);
        if (v83)
        {
          v84 = (v46 + *(v83 + 4));
          *(v47 + 4) = v46 + *(v83 + 16);
        }

        v85 = glpLayoutObjectFind(*(a2 + 8), 52);
        if (v85)
        {
          v86 = (v46 + *(v85 + 4));
          *(v47 + 4) = v46 + *(v85 + 16);
        }

        v87 = glpLayoutObjectFind(*(a2 + 8), 57);
        if (v87)
        {
          *v47 = *v47 & 0xFFFFFF80FFFFFFFFLL | (((v46 + *(v87 + 4)) & 0x7F) << 32);
        }

        v88 = glpLayoutObjectFind(*(a2 + 8), 59);
        if (v88)
        {
          *v47 = *v47 & 0xFFFFFF80FFFFFFFFLL | (((v46 + *(v88 + 4)) & 0x7F) << 32);
        }

        v89 = glpLayoutObjectFind(*(a2 + 8), 60);
        if (v89)
        {
          v90 = (v46 + *(v89 + 4));
          *(v47 + 4) = v46 + *(v89 + 16);
        }

        v91 = glpLayoutObjectFind(*(a2 + 8), 61);
        if (v91)
        {
          v92 = *(v91 + 4) + (v46 >> 2);
          *(v47 + 4) = *(v91 + 16) + (v46 >> 2);
        }

        v93 = glpLayoutObjectFind(*(a2 + 8), 63);
        if (v93)
        {
          *v47 = *v47 & 0xFFFFF3FFFFFFFFFFLL | (((v46 + *(v93 + 4)) & 3) << 42);
        }

        v94 = glpLayoutObjectFind(*(a2 + 8), 69);
        if (v94)
        {
          *v47 = *v47 & 0xFFFFFFC0FFFFFFFFLL | (((v46 + *(v94 + 4)) & 0x3F) << 32);
        }

        if (!applySAFlagsToToken(a1, v44, v47, v4))
        {
          goto LABEL_147;
        }

        ++v46;
        ++v47;
        v45 += 0x40000;
      }

      while (v20 != v46);
    }

    if (!v44 && (*v100 & 0x7C00) == 0x400)
    {
      if (glpLayoutObjectFind(*(a2 + 8), 19))
      {
        *v100 |= 0x100000000uLL;
      }

      if (glpLayoutObjectFind(*(a2 + 8), 20))
      {
        *v100 |= 0x200000000uLL;
      }
    }

    v95 = *(a2 + 136);
    v96 = *(a2 + 128);
    v97 = *(a2 + 120);
    v98 = *(a2 + 48);
    v25 = 1;
    addBindingsForGLPType(a1, v95, v101, v44, ElementType, v100, v96, 1, v97, v98);
  }

  else
  {
LABEL_20:
    if ((v4 & 0x500000000) == 0x100000000)
    {
      if ((v4 & 0x7F000000000) != 0)
      {
LABEL_147:
        v25 = 0;
        goto LABEL_40;
      }

      v21 = *(a2 + 136);
      v22 = *(a2 + 156);
      v23 = *(a2 + 128);
      v24 = *(a2 + 120);
      v97 = *(a2 + 48);
      v25 = 1;
      addUniformsForGLPType(a1, v21, v101, ElementType, v22, v23, 1, v24, v97);
    }

    else
    {
      if (glpTypeGetKind(ElementType) == 3)
      {
        ElementCount = glpBankTypeGetElementCount(ElementType);
      }

      else
      {
        ElementCount = 1;
      }

      v38 = *(a2 + 136);
      v39 = *(a2 + 128) * ElementCount;
      v40 = *(a2 + 48);
      if ((v40 & 0x60000000) != 0)
      {
        v41 = 0;
      }

      else
      {
        v41 = *(a2 + 120);
      }

      v25 = 1;
      addTempsForGLPType(a1, v38, v101, ElementType, v39, 1, v41, v40);
    }
  }

LABEL_40:
  v36 = *MEMORY[0x277D85DE8];
  return v25;
}

BOOL applySAFlagsToToken(uint64_t a1, unsigned int a2, void *a3, unint64_t a4)
{
  v4 = __ROR8__(a4 & 0x1F, 2) - 1;
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_23A29C300[v4];
  }

  if (a2 > 5)
  {
    return 0;
  }

  v6 = a4 & 0x7F000000000;
  if (((1 << a2) & 0x16) != 0)
  {
    return v6 == 0;
  }

  if (((1 << a2) & 0x28) != 0)
  {
    v8 = (a4 >> 19) & 0x20000 | (a4 >> 21) & 0x10000 | (a4 >> 20) & 0x40000 | v5 | *a3 & 0xFFFFFFFFFFFFFFF8;
    if ((a4 & 0x18000000000) != 0)
    {
      v8 |= 0x2000uLL;
    }

    v9 = v8 | (a4 >> 27) & 0x4000;
    *a3 = v9;
    if ((a4 & 0x40000000000) != 0)
    {
      *a3 = v9 | 0x8000;
    }

    return 1;
  }

  else
  {
    if (v6)
    {
      v10 = *(a1 + 144) == 0;
    }

    else
    {
      v10 = 0;
    }

    result = !v10;
    v11 = (a4 >> 21) & 0x8000 | (a4 >> 29) & 0x300 | (a4 >> 25) & 0x10000 | v5 | *a3 & 0xFFFFFFFFFFFFFFF8;
    *a3 = v11;
    if ((a4 & 0x40000000000) != 0)
    {
      *a3 = v11 | 0x20000;
    }
  }

  return result;
}

void *addBindingsForGLPType(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4, unsigned int *a5, uint64_t a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  result = glpTypeGetKind(a5);
  if (result > 1)
  {
    if (result == 2)
    {
      v48 = a8;
      v47 = a9;
      ElementType = glpArrayTypeGetElementType(a5);
      v39 = glpABIGetTypeSize(0, ElementType, 0);
      Size = glpTypeSizeGetSize(v39);
      v41 = 0;
      v42 = (a7 + Size - 1) / Size - 1;
      do
      {
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        result = addBindingsForGLPType(a1, &v54, &v49, a4, ElementType, a6, Size, 0, 0, a10);
        if (!v41)
        {
          v43 = v57;
          a2[2] = v56;
          a2[3] = v43;
          a2[4] = v58;
          v44 = v55;
          *a2 = v54;
          a2[1] = v44;
        }

        if (v42 == v41)
        {
          v45 = v52;
          a3[2] = v51;
          a3[3] = v45;
          a3[4] = v53;
          v46 = v50;
          *a3 = v49;
          a3[1] = v46;
        }

        ++v41;
        a6 += 8 * Size;
      }

      while (v41 <= v42);
LABEL_23:
      if (!v48)
      {
        return result;
      }

      v34 = a1;
      v35 = a2;
      v36 = a3;
      v37 = v47;
      return addArrayHelper(v34, v35, v36, v37);
    }

    if (result == 3)
    {
      v30 = glpBankTypeGetElementType(a5);
      v31 = glpABIGetTypeSize(0, v30, 0);
      v32 = glpTypeSizeGetSize(v31);
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      return addBindingsForGLPType(a1, &v54, &v49, a4, v30, a6, v32, 0, 0, a10);
    }
  }

  else
  {
    if (result)
    {
      v47 = a9;
      if (result != 1)
      {
        return result;
      }

      v48 = a8;
      v19 = 0;
      v20 = glpAggregateTypeGetElementCount(a5) - 1;
      do
      {
        v21 = glpAggregateTypeGetElementType(a5, v19);
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v22 = glpABIGetTypeSize(0, v21, 0);
        v23 = glpTypeSizeGetSize(v22);
        ElementFlags = glpAggregateTypeGetElementFlags(a5, v19);
        addBindingsForGLPType(a1, &v54, &v49, a4, v21, a6, v23, 0, 0, ElementFlags);
        v25 = glpABIGetTypeSize(0, v21, 0);
        result = glpTypeSizeGetSize(v25);
        if (!v19)
        {
          v26 = v57;
          a2[2] = v56;
          a2[3] = v26;
          a2[4] = v58;
          v27 = v55;
          *a2 = v54;
          a2[1] = v27;
        }

        if (v20 == v19)
        {
          v28 = v52;
          a3[2] = v51;
          a3[3] = v28;
          a3[4] = v53;
          v29 = v50;
          *a3 = v49;
          a3[1] = v29;
        }

        a6 += 8 * result;
        ++v19;
      }

      while (v19 <= v20);
      goto LABEL_23;
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a5);
    v54 = 0u;
    v55 = 0u;
    initTypeWithGLPPrimitiveType(&v54, PrimitiveType, a10);
    result = AddBinding(*(a1 + 136), a2, a3, a4, &v54, a6);
    if (a8 && DWORD1(v54) >= 2)
    {
      v34 = a1;
      v35 = a2;
      v36 = a3;
      v37 = a9;
      return addArrayHelper(v34, v35, v36, v37);
    }
  }

  return result;
}

void *addUniformsForGLPType(uint64_t a1, uint64_t a2, _OWORD *a3, unsigned int *a4, uint64_t a5, int a6, int a7, uint64_t a8, unint64_t a9)
{
  result = glpTypeGetKind(a4);
  switch(result)
  {
    case 2:
      v40 = a8;
      ElementType = glpArrayTypeGetElementType(a4);
      v32 = glpABIGetTypeSize(0, ElementType, 0);
      Size = glpTypeSizeGetSize(v32);
      v34 = 0;
      v35 = (a6 + Size - 1) / Size - 1;
      do
      {
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
        result = addUniformsForGLPType(a1, &v46, &v41, ElementType, a5, Size, 0, 0, a9);
        if (!v34)
        {
          v36 = v49;
          *(a2 + 32) = v48;
          *(a2 + 48) = v36;
          *(a2 + 64) = v50;
          v37 = v47;
          *a2 = v46;
          *(a2 + 16) = v37;
        }

        if (v35 == v34)
        {
          v38 = v44;
          a3[2] = v43;
          a3[3] = v38;
          a3[4] = v45;
          v39 = v42;
          *a3 = v41;
          a3[1] = v39;
        }

        a5 = (a5 + Size);
        ++v34;
      }

      while (v34 <= v35);
      break;
    case 1:
      v40 = a8;
      v20 = 0;
      v21 = glpAggregateTypeGetElementCount(a4) - 1;
      do
      {
        v22 = glpAggregateTypeGetElementType(a4, v20);
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
        v23 = glpABIGetTypeSize(0, v22, 0);
        v24 = glpTypeSizeGetSize(v23);
        ElementFlags = glpAggregateTypeGetElementFlags(a4, v20);
        addUniformsForGLPType(a1, &v46, &v41, v22, a5, v24, 0, 0, ElementFlags);
        v26 = glpABIGetTypeSize(0, v22, 0);
        result = glpTypeSizeGetSize(v26);
        if (!v20)
        {
          v27 = v49;
          *(a2 + 32) = v48;
          *(a2 + 48) = v27;
          *(a2 + 64) = v50;
          v28 = v47;
          *a2 = v46;
          *(a2 + 16) = v28;
        }

        if (v21 == v20)
        {
          v29 = v44;
          a3[2] = v43;
          a3[3] = v29;
          a3[4] = v45;
          v30 = v42;
          *a3 = v41;
          a3[1] = v30;
        }

        a5 = (result + a5);
        ++v20;
      }

      while (v20 <= v21);
      break;
    case 0:
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a4);
      v19 = PrimitiveType;
      v46 = 0u;
      v47 = 0u;
      initTypeWithGLPPrimitiveType(&v46, PrimitiveType, a9);
      return addUniformsForType(a1, a2, a3, &v46, v19, a5, a7, a8);
    default:
      return result;
  }

  if (a7)
  {
    return addArrayHelper(a1, a2, a3, v40);
  }

  return result;
}

void *addUniformsForType(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5, __int16 a6, int a7, uint64_t a8)
{
  v21[0] = a8;
  v21[1] = *MEMORY[0x277D85DE8];
  v15 = *(a4 + 12);
  MEMORY[0x28223BE20](a1);
  v16 = v21 - ((8 * v15 + 15) & 0xFFFFFFFF0);
  bzero(v16, 8 * v15);
  bzero(v16, 8 * v15);
  if (v15)
  {
    v17 = 0;
    do
    {
      *&v16[8 * v17] = *&v16[8 * v17] & 0xFFFFC000FFFFE0FFLL | (((a6 + v17) & 0x3FFF) << 32) | 0x200;
      Category = glpPrimitiveTypeGetCategory(a5);
      *&v16[8 * v17] = *&v16[8 * v17] & 0xFFFFBFFFFFFFFFFFLL | ((Category == 4) << 46);
      if (Category == 4)
      {
        *&v16[8 * v17] = *&v16[8 * v17] & 0xFFF07FFFFFFFFFFFLL | ((glpPrimitiveSamplerGetPPTextarget(a5) & 0x1F) << 47);
        *&v16[8 * v17] = *&v16[8 * v17] & 0xFF8FFFFFFFFFFFFFLL | ((glpPrimitiveSamplerGetPPDatatype(a5) & 7) << 52);
      }

      ++v17;
    }

    while (v17 < *(a4 + 12));
  }

  result = AddBinding(*(a1 + 136), a2, a3, 2, a4, v16);
  if (a7 && *(a4 + 4) >= 2u)
  {
    result = addArrayHelper(a1, a2, a3, v21[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t cgDerefNode(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (!*(a1 + 148))
  {
    SaType = glpASTNodeGetSaType(a2);
    if (!glpTypeIsAtomic(SaType))
    {
      return 1;
    }
  }

  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v94 = 0u;
  memset(v93, 0, sizeof(v93));
  v7 = glpASTNodeGetSaType(a2);
  SaFlags = glpASTNodeGetSaFlags(a2);
  if (!glpTypeGetKind(v7))
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v7);
    initTypeWithGLPPrimitiveType(&v94 + 2, PrimitiveType, SaFlags);
  }

  InitReg(*(a1 + 136), 0, &v94);
  v10 = a3[1];
  v11 = a3[3];
  v90 = a3[2];
  v91 = v11;
  v12 = a3[3];
  v92 = a3[4];
  v13 = a3[1];
  v88 = *a3;
  v89 = v13;
  v85 = v90;
  v86 = v12;
  v87 = a3[4];
  v84[0] = v88;
  v84[1] = v10;
  Offset = glpDerefNodeGetOffset(a2);
  v15 = glpASTNodeGetSaType(a2);
  v16 = evalOffsetExtraOfOffset(a1, v15, Offset, &v99);
  if (!v99)
  {
    return 0;
  }

  v23 = v16;
  if (v16)
  {
    v24 = *v16;
    if (!*v16)
    {
      goto LABEL_19;
    }

    if (DWORD2(v85) == 4)
    {
      if (*v24 == 2 && v24[2] == 1)
      {
        v25 = *(PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 56), v24[1]) + 24);
        if ((v25 & 0x1F00) == 0x600)
        {
          v26 = *(PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 128), WORD2(v25)) + 4 * (*v23)[12] + 24);
          VariableExtra = glpLValueNodeGetVariableExtra(a2);
          if (v26 < glpBankTypeGetElementCount(*VariableExtra))
          {
            DWORD1(v84[0]) += v26;
            DWORD2(v85) = 3;
            goto LABEL_19;
          }
        }
      }

      v29 = SetAddressRegister(*(a1 + 136), *v23, v17, v18, v19, v20, v21, v22);
    }

    else
    {
      v29 = AddOp(*(a1 + 136), 0x79u, 0, 0, 0, v20, v21, v22, v24);
    }

    *(a1 + 128) = v29;
LABEL_19:
    v30 = v23[1];
    if (!v30)
    {
      goto LABEL_45;
    }

    if (*v30 != 2)
    {
      goto LABEL_40;
    }

    if (v30[2] != 1 || DWORD2(v90) != 1 || ((v31 = PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 56), v30[1]), !glpIsLValueNode(a2)) ? (Base = glpRValueNodeGetBase(a2), v32 = glpASTNodeGetSaType(Base)) : (v32 = *glpLValueNodeGetVariableExtra(a2)), (*(v31 + 24) & 0x1F00) != 0x600))
    {
LABEL_39:
      if (!v23[1])
      {
        goto LABEL_45;
      }

LABEL_40:
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      memset(v78, 0, sizeof(v78));
      v43 = primitiveTypeOfDeref(a2);
      v44 = glpASTNodeGetSaFlags(a2);
      addTempsForGLPPrimitiveType(a1, &v79, v78, v43, 1, 0, v44);
      v48 = 0;
      if ((DWORD2(v85) - 1) >= 2)
      {
        v49 = *(v23 + 6);
        v50 = *(a1 + 192);
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 0x40000000;
        v100[2] = __getOrAddComponentStride_block_invoke;
        v100[3] = &__block_descriptor_tmp_16;
        v100[4] = a1;
        v101 = v49;
        v48 = glpIntHashCache_b(v50, v49, v100);
      }

      *(a1 + 128) = Load(*(a1 + 136), &v79, v84, v23[1], v48, v45, v46, v47);
      if ((DWORD2(v85) - 4) <= 0xFFFFFFFD)
      {
        setArrayUsed(a1, v84);
      }

      v90 = v81;
      v91 = v82;
      v92 = v83;
      v88 = v79;
      v89 = v80;
      goto LABEL_45;
    }

    Kind = glpTypeGetKind(v32);
    if (Kind == 3)
    {
      v35 = glpBankTypeGetBank(v32) != 3;
      if (glpBankTypeGetBank(v32) == 5)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = *(PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 128), *(v31 + 28)) + 4 * v23[1][12] + 24);
    if (Kind == 3)
    {
      if (v35)
      {
        ElementCount = glpBankTypeGetElementCount(v32);
        ElementType = glpBankTypeGetElementType(v32);
        Vec4s = glpTypeGetVec4s(ElementType) * ElementCount;
        goto LABEL_37;
      }

      v40 = glpBankTypeGetElementType(v32);
    }

    else
    {
      v40 = v32;
    }

    Vec4s = glpTypeGetVec4s(v40);
LABEL_37:
    if (v36 < Vec4s)
    {
      DWORD1(v88) += v36;
      DWORD2(v90) = 0;
      v41 = primitiveTypeOfDeref(a2);
      v42 = glpASTNodeGetSaFlags(a2);
      initTypeWithGLPPrimitiveType(&v88 + 2, v41, v42);
      goto LABEL_45;
    }

    goto LABEL_39;
  }

LABEL_45:
  if (Offset && glpOffsetNodeGetSwizzle(Offset))
  {
    v51 = DWORD2(v88);
    v79 = xmmword_23A29C2D0;
    goto LABEL_51;
  }

  if (!v23 || (v52 = v23[2]) == 0)
  {
    v59 = 0;
    v96 = v90;
    v97 = v91;
    v98 = v92;
    v94 = v88;
    v95 = v89;
    if (v23)
    {
      goto LABEL_81;
    }

    goto LABEL_87;
  }

  v51 = DWORD2(v88);
  v79 = xmmword_23A29C2D0;
  if (Offset)
  {
LABEL_51:
    if (glpOffsetNodeGetSwizzle(Offset) && (v51 = glpOffsetNodeGetSwizzle(Offset) & 7) != 0)
    {
      v55 = 0;
      v56 = 2;
      v57 = 1;
      v58 = 3;
      do
      {
        if (v55 > 1)
        {
          if (v55 == 2)
          {
            v56 = (glpOffsetNodeGetSwizzle(Offset) >> 7) & 3;
            DWORD2(v79) = v56;
          }

          else if (v55 == 3)
          {
            v58 = (glpOffsetNodeGetSwizzle(Offset) >> 9) & 3;
            HIDWORD(v79) = v58;
          }
        }

        else if (v55)
        {
          if (v55 == 1)
          {
            v57 = (glpOffsetNodeGetSwizzle(Offset) >> 5) & 3;
            DWORD1(v79) = v57;
          }
        }

        else
        {
          LODWORD(v79) = (glpOffsetNodeGetSwizzle(Offset) >> 3) & 3;
        }

        ++v55;
      }

      while (v51 != v55);
      if (v23)
      {
LABEL_65:
        v52 = v23[2];
        if (!v52)
        {
          v59 = 0;
          goto LABEL_80;
        }

        goto LABEL_72;
      }
    }

    else
    {
      v56 = 2;
      v57 = 1;
      v58 = 3;
      if (v23)
      {
        goto LABEL_65;
      }
    }

    v59 = 0;
    v52 = 0;
    goto LABEL_80;
  }

  v58 = 3;
  v57 = 1;
  v56 = 2;
LABEL_72:
  if (*v52 == 2 && v52[2] == 1 && (v60 = *(PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 56), v52[1]) + 24), (v60 & 0x1F00) == 0x600))
  {
    v61 = *(PPStreamChunkListChunkAtIndex(*(*(a1 + 136) + 128), WORD2(v60)) + 4 * v52[12] + 24);
    if (v61 == 3)
    {
      v59 = 0;
      v52 = 0;
      LODWORD(v79) = v58;
    }

    else if (v61 == 2)
    {
      v59 = 0;
      v52 = 0;
      LODWORD(v79) = v56;
    }

    else
    {
      v59 = 0;
      v52 = 0;
      if (v61 == 1)
      {
        LODWORD(v79) = v57;
      }
    }

    v51 = 1;
  }

  else
  {
    v62 = glpASTNodeGetSaType(a2);
    v63 = glpASTNodeGetSaType(a2);
    v64 = glpABIGetTypeSize(0, v63, 0);
    Size = glpTypeSizeGetSize(v64);
    v66 = glpASTNodeGetSaFlags(a2);
    v59 = 1;
    addTempsForGLPType(a1, &v94, v93, v62, Size, 1, 0, v66);
  }

LABEL_80:
  *(a1 + 128) = SrcSwizzle(*(a1 + 136), &v94, &v88, v51, v52, &v79, v53, v54);
  if (v23)
  {
LABEL_81:
    if (DWORD2(v85) <= 1)
    {
      if (*v23)
      {
        v67 = v59;
      }

      else
      {
        v67 = 1;
      }

      if ((v67 & 1) == 0)
      {
        v81 = v96;
        v82 = v97;
        v83 = v98;
        v79 = v94;
        v80 = v95;
        v68 = glpASTNodeGetSaType(a2);
        v69 = glpASTNodeGetSaType(a2);
        v70 = glpABIGetTypeSize(0, v69, 0);
        v71 = glpTypeSizeGetSize(v70);
        v72 = glpASTNodeGetSaFlags(a2);
        addTempsForGLPType(a1, &v94, v93, v68, v71, 1, 0, v72);
        *(a1 + 128) = AddOp(*(a1 + 136), 0, 0, &v94, 0, v73, v74, v75, &v79);
      }
    }
  }

LABEL_87:
  v76 = v94;
  *(a1 + 56) = v95;
  v77 = v97;
  *(a1 + 72) = v96;
  *(a1 + 88) = v77;
  *(a1 + 104) = v98;
  *(a1 + 40) = v76;
  return 2;
}

uint64_t __getOrAddComponentStride_block_invoke(uint64_t a1)
{
  v2 = glpLinkerPoolAlloc(*(*(a1 + 32) + 152));
  memset(v5, 0, sizeof(v5));
  initTypeWithGLPPrimitiveType(v5, 5, 0);
  memset(v4, 0, sizeof(v4));
  AddConstant(*(*(a1 + 32) + 136), v2, v4, v5, a1 + 40);
  return v2;
}

void *glpMakeLLVMCodeGenContext(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, __int16 a6, char a7)
{
  v14 = glpLinkerPoolAlloc(a1);
  bzero(v14, 0x348uLL);
  v15 = *(a5 + 16);
  *(v14 + 13) = *a5;
  v14[15] = v15;
  v14[16] = a1;
  v14[17] = a2;
  v14[18] = a3;
  v14[19] = glpLinkerGetAllocator(a1);
  *(v14 + 417) = a6;
  *v14 = 0;
  *(v14 + 74) = 0;
  *(v14 + 308) = 0;
  *(v14 + 75) = (glpLinkerGetCodeGenType(a1) >> 2) & 1;
  *(v14 + 1) = 0u;
  *(v14 + 3) = 0u;
  *(v14 + 5) = 0u;
  *(v14 + 7) = 0u;
  *(v14 + 9) = 0u;
  *(v14 + 11) = 0u;
  *(v14 + 80) = a4;
  *(v14 + 81) = 0;
  *(v14 + 10) = 0u;
  v14[103] = 0;
  *(v14 + 51) = 0u;
  *(v14 + 53) = 0u;
  v14[55] = 0;
  *(v14 + 63) = 0u;
  *(v14 + 93) = 0u;
  *(v14 + 190) = 0;
  *(v14 + 197) = glpLinkerGetGenerateDebugMetadata(a1);
  v14[56] = 0;
  *&v16 = 0xFFFFFFFFLL;
  *(&v16 + 1) = 0xFFFFFFFFLL;
  *(v14 + 50) = v16;
  v14[102] = 0xFFFFFFFFLL;
  *(v14 + 416) = v14[104] & 0xFFFE | (glpLinkerGetCodeGenType(a1) >> 3) & 1;
  *(v14 + 83) = 0;
  v17 = v14[19];
  v14[74] = 8;
  v14[75] = (*(v17 + 8))(*v17, 384, "Vector Storage (GLPLLVMTextureSampler)");
  v18 = v14[19];
  v14[80] = 8;
  v14[81] = (*(v18 + 8))(*v18, 64, "Vector Storage (GLPVariableObject *)");
  v19 = v14[19];
  v14[82] = 8;
  v14[83] = (*(v19 + 8))(*v19, 64, "Vector Storage (GLPVariableObject *)");
  v20 = v14[19];
  v14[84] = 8;
  v14[85] = (*(v20 + 8))(*v20, 64, "Vector Storage (GLPVariableObject *)");
  v21 = v14[19];
  v14[88] = 8;
  v14[89] = (*(v21 + 8))(*v21, 64, "Vector Storage (GLPLLVMBufferDescription *)");
  v22 = v14[19];
  v14[90] = 8;
  v14[91] = (*(v22 + 8))(*v22, 64, "Vector Storage (GLPLLVMBufferDescription *)");
  v23 = v14[19];
  v14[76] = 8;
  v14[77] = (*(v23 + 8))(*v23, 64, "Vector Storage (GLPLLVMSubroutine *)");
  v24 = v14[19];
  v14[78] = 8;
  v14[79] = (*(v24 + 8))(*v24, 64, "Vector Storage (GLPLLVMSubroutineFunction *)");
  v25 = v14[19];
  v14[86] = 8;
  v14[87] = (*(v25 + 8))(*v25, 64, "Vector Storage (GLPVariableObject *)");
  v14[92] = glpMakeStringHash(v14[19]);
  v26 = v14[104] & 0xFFFB | (4 * (*(a1 + 44) & 1));
  *(v14 + 416) = v14[104] & 0xFFFB | (4 * (*(a1 + 44) & 1));
  v27 = v26 & 0xFFFFFFF5 | (2 * (a7 & 1)) & 0xF7 | (8 * ((*(a1 + 44) >> 1) & 1));
  *(v14 + 416) = v27;
  v28 = v27 & 0xFFFFFFEF | (16 * ((*(a1 + 44) >> 3) & 1));
  *(v14 + 416) = v28;
  *(v14 + 416) = v28 & 0xFFDF | (2 * *(a1 + 44)) & 0x20;
  return v14;
}

uint64_t glpDestroyLLVMCodeGenContext(void *a1)
{
  (*(a1[19] + 24))(*a1[19], a1[75]);
  (*(a1[19] + 24))(*a1[19], a1[81]);
  (*(a1[19] + 24))(*a1[19], a1[83]);
  (*(a1[19] + 24))(*a1[19], a1[85]);
  (*(a1[19] + 24))(*a1[19], a1[89]);
  (*(a1[19] + 24))(*a1[19], a1[91]);
  (*(a1[19] + 24))(*a1[19], a1[77]);
  (*(a1[19] + 24))(*a1[19], a1[79]);
  (*(a1[19] + 24))(*a1[19], a1[87]);
  v2 = a1[63];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[64];
  if (v3)
  {
    free(v3);
  }

  result = glpDestroyStringHash(a1[92]);
  a1[92] = 0;
  return result;
}

double glpLLVMAllocVariableExtra(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 144))
  {
    v3 = (*(a1 + 8))(*a1, 40, "llvm codegen extra");
    *(a2 + 144) = v3;
    result = 0.0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0;
  }

  return result;
}

uint64_t glpLLVMCGTopLevel(uint64_t a1, uint64_t a2)
{
  v195 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 832) & 4) != 0)
  {
    glpInitTempPoolAllocator(0x4000, 0x4000, (a1 + 360));
    *(a1 + 392) = glpMakeDataHash((a1 + 360));
  }

  memset(v191, 0, sizeof(v191));
  glpInitPoolAllocator(0x4000, 0x4000, v191);
  glpInitSerialContext((a1 + 224), v191);
  *(a1 + 304) = vadd_s32(*(a1 + 304), 0x100000001);
  ++*(a1 + 312);
  v4 = *(a1 + 260);
  v5 = v4 + 1;
  v6 = *(a1 + 256);
  if (v4 + 1 <= v6)
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 260);
  }

  else
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 2 * v6;
    if (v7 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(a1 + 232))(*(a1 + 224), v8, "Vector Storage (uint8_t, growth)");
    memcpy(v9, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v8;
    *(a1 + 264) = v9;
    v10 = *(a1 + 260);
  }

  memmove(&v9[v4 + 1], &v9[v4], (v10 - v4));
  *(*(a1 + 264) + v4) = 0;
  v11 = *(a1 + 260);
  v12 = v11 + 1;
  *(a1 + 260) = v11 + 1;
  ++*(a1 + 296);
  v13 = *(a1 + 304);
  *(a1 + 304) = v13 + 1;
  *(a1 + 32) = v13;
  v14 = v11 + 2;
  v15 = *(a1 + 256);
  if (v14 <= v15)
  {
    v18 = *(a1 + 264);
    v19 = v12;
  }

  else
  {
    if (v15 <= 1)
    {
      v15 = 1;
    }

    v16 = 2 * v15;
    if (v16 <= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    v18 = (*(a1 + 232))(*(a1 + 224), v17, "Vector Storage (uint8_t, growth)");
    memcpy(v18, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v17;
    *(a1 + 264) = v18;
    v19 = *(a1 + 260);
  }

  memmove(&v18[v12 + 1], &v18[v12], v19 - v12);
  *(*(a1 + 264) + v12) = 1;
  v20 = *(a1 + 260);
  v21 = v20 + 1;
  *(a1 + 260) = v20 + 1;
  ++*(a1 + 296);
  v22 = *(a1 + 304);
  *(a1 + 304) = v22 + 1;
  *(a1 + 40) = v22;
  v23 = v20 + 2;
  v24 = *(a1 + 256);
  if (v23 <= v24)
  {
    v27 = *(a1 + 264);
    v28 = v21;
  }

  else
  {
    if (v24 <= 1)
    {
      v24 = 1;
    }

    v25 = 2 * v24;
    if (v25 <= v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = v25;
    }

    v27 = (*(a1 + 232))(*(a1 + 224), v26, "Vector Storage (uint8_t, growth)");
    memcpy(v27, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v26;
    *(a1 + 264) = v27;
    v28 = *(a1 + 260);
  }

  memmove(&v27[v21 + 1], &v27[v21], v28 - v21);
  *(*(a1 + 264) + v21) = 2;
  v29 = *(a1 + 260);
  v30 = v29 + 1;
  *(a1 + 260) = v29 + 1;
  ++*(a1 + 296);
  v31 = *(a1 + 304);
  *(a1 + 304) = v31 + 1;
  *(a1 + 48) = v31;
  v32 = v29 + 2;
  v33 = *(a1 + 256);
  if (v32 <= v33)
  {
    v36 = *(a1 + 264);
    v37 = v30;
  }

  else
  {
    if (v33 <= 1)
    {
      v33 = 1;
    }

    v34 = 2 * v33;
    if (v34 <= v32)
    {
      v35 = v32;
    }

    else
    {
      v35 = v34;
    }

    v36 = (*(a1 + 232))(*(a1 + 224), v35, "Vector Storage (uint8_t, growth)");
    memcpy(v36, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v35;
    *(a1 + 264) = v36;
    v37 = *(a1 + 260);
  }

  memmove(&v36[v30 + 1], &v36[v30], v37 - v30);
  *(*(a1 + 264) + v30) = 3;
  v38 = *(a1 + 260);
  v39 = v38 + 1;
  *(a1 + 260) = v38 + 1;
  ++*(a1 + 296);
  v40 = *(a1 + 304);
  *(a1 + 304) = v40 + 1;
  *(a1 + 56) = v40;
  v41 = v38 + 2;
  v42 = *(a1 + 256);
  if (v41 <= v42)
  {
    v45 = *(a1 + 264);
    v46 = v39;
  }

  else
  {
    if (v42 <= 1)
    {
      v42 = 1;
    }

    v43 = 2 * v42;
    if (v43 <= v41)
    {
      v44 = v41;
    }

    else
    {
      v44 = v43;
    }

    v45 = (*(a1 + 232))(*(a1 + 224), v44, "Vector Storage (uint8_t, growth)");
    memcpy(v45, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v44;
    *(a1 + 264) = v45;
    v46 = *(a1 + 260);
  }

  memmove(&v45[v39 + 1], &v45[v39], v46 - v39);
  *(*(a1 + 264) + v39) = 4;
  v47 = *(a1 + 260);
  v48 = v47 + 1;
  *(a1 + 260) = v47 + 1;
  ++*(a1 + 296);
  v49 = *(a1 + 304);
  *(a1 + 304) = v49 + 1;
  *(a1 + 64) = v49;
  v50 = v47 + 2;
  v51 = *(a1 + 256);
  if (v50 <= v51)
  {
    v54 = *(a1 + 264);
    v55 = v48;
  }

  else
  {
    if (v51 <= 1)
    {
      v51 = 1;
    }

    v52 = 2 * v51;
    if (v52 <= v50)
    {
      v53 = v50;
    }

    else
    {
      v53 = v52;
    }

    v54 = (*(a1 + 232))(*(a1 + 224), v53, "Vector Storage (uint8_t, growth)");
    memcpy(v54, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v53;
    *(a1 + 264) = v54;
    v55 = *(a1 + 260);
  }

  memmove(&v54[v48 + 1], &v54[v48], v55 - v48);
  *(*(a1 + 264) + v48) = 5;
  v56 = *(a1 + 260);
  v57 = v56 + 1;
  *(a1 + 260) = v56 + 1;
  ++*(a1 + 296);
  v58 = *(a1 + 304);
  *(a1 + 304) = v58 + 1;
  *(a1 + 72) = v58;
  v59 = v56 + 2;
  v60 = *(a1 + 256);
  if (v59 <= v60)
  {
    v63 = *(a1 + 264);
    v64 = v57;
  }

  else
  {
    if (v60 <= 1)
    {
      v60 = 1;
    }

    v61 = 2 * v60;
    if (v61 <= v59)
    {
      v62 = v59;
    }

    else
    {
      v62 = v61;
    }

    v63 = (*(a1 + 232))(*(a1 + 224), v62, "Vector Storage (uint8_t, growth)");
    memcpy(v63, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v62;
    *(a1 + 264) = v63;
    v64 = *(a1 + 260);
  }

  memmove(&v63[v57 + 1], &v63[v57], v64 - v57);
  *(*(a1 + 264) + v57) = 6;
  v65 = *(a1 + 260);
  v66 = v65 + 1;
  *(a1 + 260) = v65 + 1;
  ++*(a1 + 296);
  v67 = *(a1 + 304);
  *(a1 + 304) = v67 + 1;
  *(a1 + 80) = v67;
  v68 = v65 + 2;
  v69 = *(a1 + 256);
  if (v68 <= v69)
  {
    v72 = *(a1 + 264);
    v73 = v66;
  }

  else
  {
    if (v69 <= 1)
    {
      v69 = 1;
    }

    v70 = 2 * v69;
    if (v70 <= v68)
    {
      v71 = v68;
    }

    else
    {
      v71 = v70;
    }

    v72 = (*(a1 + 232))(*(a1 + 224), v71, "Vector Storage (uint8_t, growth)");
    memcpy(v72, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v71;
    *(a1 + 264) = v72;
    v73 = *(a1 + 260);
  }

  memmove(&v72[v66 + 1], &v72[v66], v73 - v66);
  *(*(a1 + 264) + v66) = 7;
  v74 = *(a1 + 260);
  v75 = v74 + 1;
  *(a1 + 260) = v74 + 1;
  ++*(a1 + 296);
  v76 = *(a1 + 304);
  *(a1 + 304) = v76 + 1;
  *(a1 + 88) = v76;
  v77 = v74 + 2;
  v78 = *(a1 + 256);
  if (v77 <= v78)
  {
    v81 = *(a1 + 264);
    v82 = v75;
  }

  else
  {
    if (v78 <= 1)
    {
      v78 = 1;
    }

    v79 = 2 * v78;
    if (v79 <= v77)
    {
      v80 = v77;
    }

    else
    {
      v80 = v79;
    }

    v81 = (*(a1 + 232))(*(a1 + 224), v80, "Vector Storage (uint8_t, growth)");
    memcpy(v81, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v80;
    *(a1 + 264) = v81;
    v82 = *(a1 + 260);
  }

  memmove(&v81[v75 + 1], &v81[v75], v82 - v75);
  *(*(a1 + 264) + v75) = 8;
  v83 = *(a1 + 260);
  v84 = v83 + 1;
  *(a1 + 260) = v83 + 1;
  ++*(a1 + 296);
  v85 = *(a1 + 304);
  *(a1 + 304) = v85 + 1;
  *(a1 + 96) = v85;
  if (*(a1 + 788))
  {
    v86 = v83 + 2;
    v87 = *(a1 + 256);
    if (v86 <= v87)
    {
      v90 = *(a1 + 264);
      v91 = v84;
    }

    else
    {
      if (v87 <= 1)
      {
        v87 = 1;
      }

      v88 = 2 * v87;
      if (v88 <= v86)
      {
        v89 = v86;
      }

      else
      {
        v89 = v88;
      }

      v90 = (*(a1 + 232))(*(a1 + 224), v89, "Vector Storage (uint8_t, growth)");
      memcpy(v90, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v89;
      *(a1 + 264) = v90;
      v91 = *(a1 + 260);
    }

    memmove(&v90[v84 + 1], &v90[v84], v91 - v84);
    *(*(a1 + 264) + v84) = 99;
    v92 = *(a1 + 260);
    v93 = v92 + 1;
    *(a1 + 260) = v92 + 1;
    ++*(a1 + 296);
    v94 = *(a1 + 308);
    *(a1 + 308) = v94 + 1;
    *(a1 + 24) = v94;
    v95 = v92 + 2;
    v96 = *(a1 + 256);
    if (v95 <= v96)
    {
      v99 = *(a1 + 264);
      v100 = v93;
    }

    else
    {
      if (v96 <= 1)
      {
        v96 = 1;
      }

      v97 = 2 * v96;
      if (v97 <= v95)
      {
        v98 = v95;
      }

      else
      {
        v98 = v97;
      }

      v99 = (*(a1 + 232))(*(a1 + 224), v98, "Vector Storage (uint8_t, growth)");
      memcpy(v99, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v98;
      *(a1 + 264) = v99;
      v100 = *(a1 + 260);
    }

    memmove(&v99[v93 + 1], &v99[v93], v100 - v93);
    *(*(a1 + 264) + v93) = 101;
    v101 = *(a1 + 260);
    v102 = v101 + 1;
    *(a1 + 260) = v101 + 1;
    ++*(a1 + 296);
    v103 = v101 + 3;
    v104 = *(a1 + 256);
    if (v103 <= v104)
    {
      v107 = *(a1 + 264);
      v108 = v102;
    }

    else
    {
      if (v104 <= 1)
      {
        v104 = 1;
      }

      v105 = 2 * v104;
      if (v105 <= v103)
      {
        v106 = v103;
      }

      else
      {
        v106 = v105;
      }

      v107 = (*(a1 + 232))(*(a1 + 224), v106, "Vector Storage (uint8_t, growth)");
      memcpy(v107, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v106;
      *(a1 + 264) = v107;
      v108 = *(a1 + 260);
    }

    memmove(&v107[v102 + 1], &v107[v102], v108 - v102);
    *(*(a1 + 264) + v102) = 48;
    v109 = *(a1 + 260);
    v110 = v109 + 2;
    *(a1 + 260) = v109 + 2;
    v111 = v109 + 3;
    v112 = *(a1 + 256);
    if (v111 <= v112)
    {
      v115 = *(a1 + 264);
      v116 = v110;
    }

    else
    {
      if (v112 <= 1)
      {
        v112 = 1;
      }

      v113 = 2 * v112;
      if (v113 <= v111)
      {
        v114 = v111;
      }

      else
      {
        v114 = v113;
      }

      v115 = (*(a1 + 232))(*(a1 + 224), v114, "Vector Storage (uint8_t, growth)");
      memcpy(v115, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v114;
      *(a1 + 264) = v115;
      v116 = *(a1 + 260);
    }

    memmove(&v115[v110 + 1], &v115[v110], v116 - v110);
    *(*(a1 + 264) + v110) = 102;
    v117 = *(a1 + 260);
    v118 = v117 + 1;
    *(a1 + 260) = v117 + 1;
    ++*(a1 + 296);
    v119 = v117 + 3;
    v120 = *(a1 + 256);
    if (v119 <= v120)
    {
      v123 = *(a1 + 264);
      v124 = v118;
    }

    else
    {
      if (v120 <= 1)
      {
        v120 = 1;
      }

      v121 = 2 * v120;
      if (v121 <= v119)
      {
        v122 = v119;
      }

      else
      {
        v122 = v121;
      }

      v123 = (*(a1 + 232))(*(a1 + 224), v122, "Vector Storage (uint8_t, growth)");
      memcpy(v123, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v122;
      *(a1 + 264) = v123;
      v124 = *(a1 + 260);
    }

    memmove(&v123[v118 + 1], &v123[v118], v124 - v118);
    *(*(a1 + 264) + v118) = 48;
    *(a1 + 260) += 2;
  }

  v125 = *(a1 + 116);
  if (v125 < 0x11)
  {
    v126 = 48;
LABEL_121:
    v127 = *(a1 + v126);
    goto LABEL_123;
  }

  if (v125 <= 0x20)
  {
    v126 = 40;
    goto LABEL_121;
  }

  v127 = 0;
LABEL_123:
  *(a1 + 456) = v127;
  v128 = *(a1 + 120);
  if (v128 < 0x11)
  {
    v129 = 48;
LABEL_127:
    v130 = *(a1 + v129);
    goto LABEL_129;
  }

  if (v128 <= 0x20)
  {
    v129 = 40;
    goto LABEL_127;
  }

  v130 = 0;
LABEL_129:
  *(a1 + 464) = v130;
  v131 = *(a1 + 124);
  if (v131 < 0x11)
  {
    v132 = 48;
LABEL_133:
    v133 = *(a1 + v132);
    goto LABEL_135;
  }

  if (v131 <= 0x20)
  {
    v132 = 40;
    goto LABEL_133;
  }

  v133 = 0;
LABEL_135:
  *(a1 + 472) = v133;
  v134 = *(a1 + 104);
  if (v134 < 0x11)
  {
    v135 = 80;
LABEL_139:
    v136 = *(a1 + v135);
    goto LABEL_141;
  }

  if (v134 <= 0x20)
  {
    v135 = 72;
    goto LABEL_139;
  }

  v136 = 0;
LABEL_141:
  *(a1 + 480) = v136;
  v137 = *(a1 + 108);
  if (v137 < 0x11)
  {
    v138 = 80;
LABEL_145:
    v139 = *(a1 + v138);
    goto LABEL_147;
  }

  if (v137 <= 0x20)
  {
    v138 = 72;
    goto LABEL_145;
  }

  v139 = 0;
LABEL_147:
  *(a1 + 488) = v139;
  v140 = *(a1 + 112);
  if (v140 < 0x11)
  {
    v141 = 80;
LABEL_151:
    v142 = *(a1 + v141);
    goto LABEL_153;
  }

  if (v140 <= 0x20)
  {
    v141 = 72;
    goto LABEL_151;
  }

  v142 = 0;
LABEL_153:
  *(a1 + 496) = v142;
  if (*(a1 + 320) != 3)
  {
    goto LABEL_166;
  }

  v193 = 0u;
  v194 = 0u;
  v192 = 0u;
  glpLinkedProgramGetOverrides(*(a1 + 136), &v192);
  if (SHIDWORD(v192) > 3)
  {
    if (HIDWORD(v192) != 4)
    {
      if (HIDWORD(v192) == 10)
      {
        v143 = 4;
        goto LABEL_164;
      }

      goto LABEL_161;
    }

    v143 = 3;
  }

  else
  {
    if (HIDWORD(v192))
    {
      if (HIDWORD(v192) == 1)
      {
        v143 = 2;
        goto LABEL_164;
      }

LABEL_161:
      v143 = 6;
      goto LABEL_164;
    }

    v143 = 1;
  }

LABEL_164:
  *(a1 + 792) = v143;
  GlobalTypeQualifier = glpTopLevelNodeGetGlobalTypeQualifier(a2, 0x20000000);
  if (GlobalTypeQualifier)
  {
    Layout = glpGlobalTypeQualifierNodeGetLayout(GlobalTypeQualifier);
    glpLayoutObjectGetGeomInOut(Layout, (a1 + 792), 0, 0, 0, 0);
  }

LABEL_166:
  glpLLVMBuildSubroutinesTypeClasses(a1, a2);
  if (glpTopLevelNodeGetDefCount(a2))
  {
    v146 = 0;
    do
    {
      Def = glpTopLevelNodeGetDef(a2, v146);
      if (*(a1 + 834))
      {
        glpLLVMCleanUpASTObjects(a1, Def);
      }

      glpLLVMCGFindSamplersAndBuffers(a1, Def);
      ++v146;
    }

    while (v146 < glpTopLevelNodeGetDefCount(a2));
  }

  if (glpTopLevelNodeGetDefCount(a2))
  {
    v148 = 0;
    do
    {
      v149 = glpTopLevelNodeGetDef(a2, v148);
      glpLLVMCGNode(a1, v149, 0);
      ++v148;
    }

    while (v148 < glpTopLevelNodeGetDefCount(a2));
  }

  v150 = 0;
  v151 = *(a1 + 320);
  if (v151 <= 1)
  {
    if (!v151)
    {
      if (*(a1 + 834))
      {
        v150 = 0;
      }

      else
      {
        v150 = glpLLVMCreateAttributeDescription(a1);
      }

      glpLLVMVertexMetaData(a1, "air.vertex");
      goto LABEL_193;
    }

    if (v151 != 1)
    {
      goto LABEL_193;
    }

    *&v192 = *(a1 + 168);
    v152 = glpLLVMMDNodeInContext(a1, 0, 0);
    v153 = *(a1 + 192);
    *(&v192 + 1) = v152;
    *&v193 = v153;
    v154 = glpLLVMMDNodeInContext(a1, &v192, 3);
    v155 = "air.tess_control";
    goto LABEL_187;
  }

  switch(v151)
  {
    case 2:
      glpLLVMVertexMetaData(a1, "air.tess_evaluation");
LABEL_188:
      v150 = 0;
      break;
    case 3:
      *&v192 = *(a1 + 168);
      v156 = glpLLVMMDNodeInContext(a1, 0, 0);
      v157 = *(a1 + 192);
      *(&v192 + 1) = v156;
      *&v193 = v157;
      v154 = glpLLVMMDNodeInContext(a1, &v192, 3);
      v155 = "air.geometry";
LABEL_187:
      glpLLVMNamedMetadata(a1, v155, v154);
      goto LABEL_188;
    case 4:
      if ((*(a1 + 832) & 1) != 0 && !*(a1 + 834))
      {
        v150 = glpLLVMCreateAttributeDescription(a1);
      }

      else
      {
        v150 = 0;
      }

      glpLLVMFragmentMetaData(a1);
      break;
  }

LABEL_193:
  if (*(a1 + 834))
  {
    v158 = 0;
    v159 = 0;
  }

  else
  {
    v160 = *(a1 + 824);
    if (v160)
    {
      v161 = *(a1 + 504);
      v162 = malloc_type_malloc(4 * v160 + 4, 0xCA0EF1E7uLL);
      if (!v162)
      {
        goto LABEL_238;
      }

      v159 = v162;
      *v162 = v160;
      v163 = v162 + 1;
      do
      {
        v164 = *v161++;
        *v163++ = v164;
        --v160;
      }

      while (v160);
    }

    else
    {
      v159 = 0;
    }

    v165 = *(a1 + 828);
    if (v165)
    {
      v166 = *(a1 + 512);
      v167 = malloc_type_malloc(4 * v165 + 4, 0xCA0EF1E7uLL);
      if (!v167)
      {
        goto LABEL_238;
      }

      v158 = v167;
      *v167 = v165;
      v168 = v167 + 1;
      do
      {
        v169 = *v166++;
        *v168++ = v169;
        --v165;
      }

      while (v165);
    }

    else
    {
      v158 = 0;
    }
  }

  if (*(a1 + 24))
  {
    v170 = *(a1 + 260);
    v171 = v170 + 1;
    v172 = *(a1 + 256);
    if (v170 + 1 <= v172)
    {
      v175 = *(a1 + 264);
      v176 = *(a1 + 260);
    }

    else
    {
      if (v172 <= 1)
      {
        v172 = 1;
      }

      v173 = 2 * v172;
      if (v173 <= v171)
      {
        v174 = v171;
      }

      else
      {
        v174 = v173;
      }

      v175 = (*(a1 + 232))(*(a1 + 224), v174, "Vector Storage (uint8_t, growth)");
      memcpy(v175, *(a1 + 264), *(a1 + 260));
      (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
      *(a1 + 256) = v174;
      *(a1 + 264) = v175;
      v176 = *(a1 + 260);
    }

    memmove(&v175[v170 + 1], &v175[v170], (v176 - v170));
    *(*(a1 + 264) + v170) = 100;
    ++*(a1 + 260);
    ++*(a1 + 296);
  }

  if (*(a1 + 832))
  {
    v193 = 0uLL;
    *&v192 = glpLLVMStringMetadata(a1, "OpenGL ES GLSL");
    v177 = *(a1 + 528);
    if (!v177)
    {
      v177 = glpLLVMConstIntCache(a1, *(a1 + 40), 1uLL, 0);
      *(a1 + 528) = v177;
    }

    *(&v192 + 1) = v177;
    v178 = *(a1 + 520);
    if (v178)
    {
      *&v193 = *(a1 + 520);
    }

    else
    {
      v178 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
      *(a1 + 520) = v178;
      *&v193 = v178;
      if (!v178)
      {
        v178 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
        *(a1 + 520) = v178;
      }
    }

    *(&v193 + 1) = v178;
    v179 = glpLLVMMDNodeInContext(a1, &v192, 4);
    glpLLVMNamedMetadata(a1, "air.language_version", v179);
  }

  if (*(a1 + 326))
  {
    v180 = "air.compile.fast_math_disable";
  }

  else
  {
    v180 = "air.compile.fast_math_enable";
  }

  *&v192 = glpLLVMStringMetadata(a1, v180);
  v181 = glpLLVMMDNodeInContext(a1, &v192, 1);
  glpLLVMNamedMetadata(a1, "air.compile_options", v181);
  *&v192 = glpLLVMStringMetadata(a1, "air.compile.denorms_disable");
  v182 = glpLLVMMDNodeInContext(a1, &v192, 1);
  glpLLVMNamedMetadata(a1, "air.compile_options", v182);
  *&v192 = glpLLVMStringMetadata(a1, "air.compile.native_double_disable");
  v183 = glpLLVMMDNodeInContext(a1, &v192, 1);
  glpLLVMNamedMetadata(a1, "air.compile_options", v183);
  v184 = *(a1 + 144);
  v185 = *(a1 + 260);
  v186 = malloc_type_malloc((v185 + 32), 0xCA0EF1E7uLL);
  if (!v186)
  {
LABEL_238:
    abort();
  }

  v187 = v186;
  *v186 = v185 + 28;
  *(v186 + 1) = 3;
  *(v186 + 2) = *(a1 + 296);
  *(v186 + 12) = vrev64_s32(*(a1 + 304));
  *(v186 + 5) = *(a1 + 312);
  v188 = *(a1 + 300) != 0;
  *(v186 + 6) = v188;
  *(v186 + 7) = 0;
  if (*(a1 + 326))
  {
    *(v186 + 6) = v188 | 2;
  }

  memcpy(v186 + 32, *(a1 + 264), v185);
  glpDestroySerialContext((a1 + 224), 1);
  glpDestroyPoolAllocator(v191);
  if ((*(a1 + 832) & 4) != 0)
  {
    glpDestroyPoolAllocator(a1 + 360);
  }

  if (*(a1 + 834))
  {
    *(v184 + 40) = *v184;
    *v184 = v187;
  }

  else
  {
    *v184 = v187;
    *(v184 + 8) = v150;
    *(v184 + 16) = v159;
    *(v184 + 24) = v158;
    *(v184 + 32) = 0;
    *(v184 + 48) = *(a1 + 760);
    *(v184 + 72) = *(a1 + 744);
    *(v184 + 80) = *(a1 + 752);
    *(v184 + 52) = *(a1 + 764);
    *(v184 + 56) = *(a1 + 768);
  }

  v189 = *MEMORY[0x277D85DE8];
  return 0;
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
            v45 = glpLLVMAllocateFunctionParameters(v3, 0);
            result = glpLLVMGetFunctionGlobalVariableUse(v3, Body, *v45, (v45 + 8));
            *(v6 + 152) = v45;
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
        v46 = v22;
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
            v47 = 0u;
            v48 = 0u;
            DWORD1(v48) = v32[3];
            *(&v47 + 1) = glpLLVMGetTextureTypeFromSampler(v3, &v47, SDWORD1(v48));
            v33 = *v32;
            LODWORD(v48) = v32[2];
            DWORD2(v48) = v33;
            v34 = *(v3 + 596);
            v35 = *(v3 + 592);
            if (v34 + 1 <= v35)
            {
              v39 = *(v3 + 600);
              v40 = *(v3 + 596);
            }

            else
            {
              if (v35 <= 1)
              {
                v35 = 1;
              }

              v36 = 2 * v35;
              if (v36 <= v34 + 1)
              {
                v37 = v34 + 1;
              }

              else
              {
                v37 = v36;
              }

              v38 = *(v3 + 152);
              v39 = (v38[1])(*v38, 48 * v37, "Vector Storage (GLPLLVMTextureSampler, growth)");
              memcpy(v39, *(v3 + 600), 48 * *(v3 + 596));
              (v38[3])(*v38, *(v3 + 600));
              *(v3 + 592) = v37;
              *(v3 + 600) = v39;
              v40 = *(v3 + 596);
            }

            result = memmove(&v39[48 * v34 + 48], &v39[48 * v34], 48 * (v40 - v34));
            v41 = (*(v3 + 600) + 48 * v34);
            v42 = v48;
            v41[1] = v47;
            v41[2] = v42;
            *v41 = 0u;
            ++*(v3 + 596);
            v28 += 16;
            ++v29;
          }

          while (v31 != v28);
        }

        v22 = v46;
      }

      if ((*(v22 + 52) & 4) != 0)
      {
        v43 = *(v22 + 88);

        return glpLLVMCGDeclareUniformBufferObject(v3, v43);
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

uint64_t glpLLVMCGNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  Expr = a2;
  while (2)
  {
    if (*(a1 + 332))
    {
      return 0;
    }

    Kind = glpASTNodeGetKind(Expr);
    switch(Kind)
    {
      case 10:
      case 18:
      case 41:
      case 63:
      case 85:
        return 0;
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

        return glpLLVMCGNegate(a1, Expr);
      case 17:

        return glpLLVMCGLogicalNot(a1, Expr);
      case 39:

        return glpLLVMCGAssign(a1, Expr);
      case 42:
        glpLLVMWriteOutput(a1, Expr);
        return 0;
      case 43:

        return glpLLVMCGCommaExpr(a1, Expr, a3);
      case 44:
        glpLLVMCGParameterDeclaration(a1, Expr);
        return 0;
      case 45:

        return glpLLVMCGFunctionPrototype(a1, Expr);
      case 46:
        Extra = glpVariableDeclarationNodeGetExtra(Expr);

        return glpLLVMCGDeclareVariable(a1, Extra);
      case 47:
        glpLLVMCGVariableDeclarationGroup(a1, Expr);
        return 0;
      case 51:

        return glpLLVMCGFunctionDefinition(a1, Expr);
      case 57:
        glpLLVMCGInterfaceBlock(a1, Expr);
        return 0;
      case 65:
        Expr = glpExpressionStatementNodeGetExpr(Expr);
        if (!Expr)
        {
          return 0;
        }

        continue;
      case 66:
        glpLLVMCGBlock(a1, Expr);
        return 0;
      case 67:
        glpLLVMCGIfStatement(a1, Expr);
        return 0;
      case 68:
        glpLLVMCGLoopStatement(a1, Expr);
        return 0;
      case 69:
        glpLLVMCGSwitchStatement(a1, Expr);
        return 0;
      case 70:
        glpLLVMCGCaseStatement(a1, Expr);
        return 0;
      case 71:
        glpLLVMCGDefaultStatement(a1, Expr);
        return 0;
      case 72:
        glpLLVMCGBreakStatement(a1, Expr);
        return 0;
      case 73:
        glpLLVMCGContinueStatement(a1, Expr);
        return 0;
      case 74:

        return glpLLVMCGDiscardStatement(a1, Expr);
      case 75:

        return glpLLVMCGReturnStatement(a1, Expr);
      case 78:

        return glpLLVMCGRawCallNode(a1, Expr);
      case 79:
        glpLLVMCGSubroutineRawCall(a1, Expr);
        return 0;
      case 81:

        return glpLLVMCGLValue(a1, Expr, a3);
      case 82:

        return glpLLVMCGRValue(a1, Expr);
      case 84:

        return glpLLVMCGPPStreamOpNode(a1, Expr);
      default:
        if (Kind == 3)
        {

          result = glpLLVMCGConstant(a1, Expr);
        }

        else
        {
          if (Kind)
          {
LABEL_68:
            abort();
          }

          result = glpLLVMCGImplicitConversion(a1, Expr, a3);
        }

        break;
    }

    return result;
  }
}

_DWORD *glpLLVMCreateAttributeDescription(uint64_t a1)
{
  v2 = *(a1 + 644);
  v3 = 8 * v2 + 8;
  v4 = malloc_type_malloc(v3, 0xCA0EF1E7uLL);
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
      v13 = v12 > 3 ? 0 : dword_23A29C2E0[v12];
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

void *glpLLVMVertexMetaData(uint64_t a1, const char *a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 692);
  v5 = 8 * v4;
  MEMORY[0x28223BE20](a1);
  bzero(v12 - ((8 * v4 + 15) & 0xFFFFFFFF0), 8 * v4);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      *(&v12[v6 / 8] - ((8 * v4 + 15) & 0xFFFFFFFF0)) = glpLLVMVertexGeometryMetadata(a1, *(*(a1 + 696) + v6), 0xFFFFFFFF);
      v6 += 8;
    }

    while (v5 != v6);
  }

  v12[0] = *(a1 + 168);
  v7 = glpLLVMMDNodeInContext(a1, (v12 - ((v5 + 15) & 0xFFFFFFFF0)), v4);
  v8 = *(a1 + 192);
  v12[1] = v7;
  v12[2] = v8;
  v9 = glpLLVMMDNodeInContext(a1, v12, 3);
  v10 = *MEMORY[0x277D85DE8];

  return glpLLVMNamedMetadata(a1, a2, v9);
}

void *glpLLVMFragmentMetaData(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 692);
  v3 = 8 * v2;
  MEMORY[0x28223BE20](a1);
  bzero(&v22 - ((8 * v2 + 15) & 0xFFFFFFFF0), 8 * v2);
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = a1 + 520;
    while (1)
    {
      v6 = *(*(a1 + 696) + v4);
      v7 = *(glpLayoutObjectFind(*(v6 + 8), 68) + 4);
      if (v7 == 15)
      {
        break;
      }

      if (v7 == 7)
      {
        v22 = glpLLVMStringMetadata(a1, "air.depth");
        v23 = glpLLVMStringMetadata(a1, "air.depth_qualifier");
        v12 = glpLLVMStringMetadata(a1, "air.any");
        goto LABEL_18;
      }

      if (v7 == 4)
      {
        v8 = glpLayoutObjectFind(*(v6 + 8), 72);
        v9 = glpLayoutObjectFind(*(v6 + 8), 73);
        v22 = glpLLVMStringMetadata(a1, "air.render_target");
        v10 = *(v8 + 4);
        if (v10 > 7)
        {
          v11 = glpLLVMConstIntCache(a1, *(a1 + 40), v10, 1);
        }

        else
        {
          v11 = *(v5 + 8 * v10);
          if (!v11)
          {
            v11 = glpLLVMConstIntCache(a1, *(a1 + 40), v10, 0);
            *(v5 + 8 * v10) = v11;
          }
        }

        v23 = v11;
        if (v9)
        {
          v15 = *(v9 + 4);
          if (v15 > 7)
          {
            v12 = glpLLVMConstIntCache(a1, *(a1 + 40), v15, 1);
            goto LABEL_18;
          }
        }

        else
        {
          v15 = 0;
        }

        v12 = *(v5 + 8 * v15);
        if (!v12)
        {
          v16 = v15;
          v12 = glpLLVMConstIntCache(a1, *(a1 + 40), v15, 0);
          *(v5 + 8 * v16) = v12;
        }

LABEL_18:
        v24 = v12;
        v13 = a1;
        v14 = 3;
LABEL_19:
        *(&v22 + v4 - ((8 * v2 + 15) & 0xFFFFFFFF0)) = glpLLVMMDNodeInContext(v13, &v22, v14);
      }

      v4 += 8;
      if (v3 == v4)
      {
        goto LABEL_21;
      }
    }

    v22 = glpLLVMStringMetadata(a1, "air.sample_mask");
    v13 = a1;
    v14 = 1;
    goto LABEL_19;
  }

LABEL_21:
  v22 = *(a1 + 168);
  v17 = glpLLVMMDNodeInContext(a1, (&v22 - ((v3 + 15) & 0xFFFFFFFF0)), v2);
  v18 = *(a1 + 192);
  v23 = v17;
  v24 = v18;
  v19 = glpLLVMMDNodeInContext(a1, &v22, 3);
  v20 = *MEMORY[0x277D85DE8];

  return glpLLVMNamedMetadata(a1, "air.fragment", v19);
}

uint64_t glpLLVMStringMetadata(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 260);
  v5 = v4 + 1;
  v6 = *(a1 + 256);
  if (v4 + 1 <= v6)
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 260);
  }

  else
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 2 * v6;
    if (v7 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(a1 + 232))(*(a1 + 224), v8, "Vector Storage (uint8_t, growth)");
    memcpy(v9, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v8;
    *(a1 + 264) = v9;
    v10 = *(a1 + 260);
  }

  memmove(&v9[v4 + 1], &v9[v4], (v10 - v4));
  *(*(a1 + 264) + v4) = 28;
  v11 = *(a1 + 260) + 1;
  *(a1 + 260) = v11;
  ++*(a1 + 296);
  v12 = strlen(a2) + 1;
  v13 = v12 + v11;
  v14 = *(a1 + 256);
  if (v12 + v11 <= v14)
  {
    v17 = *(a1 + 264);
    v18 = v11;
  }

  else
  {
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v15 = 2 * v14;
    if (v15 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    v17 = (*(a1 + 232))(*(a1 + 224), v16, "Vector Storage (uint8_t, growth)");
    memcpy(v17, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v16;
    *(a1 + 264) = v17;
    v18 = *(a1 + 260);
  }

  memmove(&v17[v11 + 1], &v17[v11], v18 - v11);
  memcpy((*(a1 + 264) + v11), a2, v12);
  *(a1 + 260) += v12;
  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

uint64_t glpGetConstantInt32(uint64_t a1, unsigned int a2)
{
  if (a2 > 7)
  {
    v7 = a2;
    v8 = *(a1 + 40);

    return glpLLVMConstIntCache(a1, v8, v7, 1);
  }

  else
  {
    v3 = a1 + 520;
    v4 = *(a1 + 520 + 8 * a2);
    if (!v4)
    {
      v5 = a2;
      v4 = glpLLVMConstIntCache(a1, *(a1 + 40), a2, 0);
      *(v3 + 8 * v5) = v4;
    }

    return v4;
  }
}

uint64_t glpLLVMMDNodeInContext(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 27;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeArrayOfLLVMValues(a1, a2, a3);
  result = *(a1 + 308);
  *(a1 + 308) = result + 1;
  return result;
}

void *glpLLVMNamedMetadata(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 29;
  v13 = *(a1 + 260) + 1;
  *(a1 + 260) = v13;
  ++*(a1 + 296);
  v14 = strlen(a2) + 1;
  v15 = v14 + v13;
  v16 = *(a1 + 256);
  if (v14 + v13 <= v16)
  {
    v19 = *(a1 + 264);
    v20 = v13;
  }

  else
  {
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = 2 * v16;
    if (v17 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    v19 = (*(a1 + 232))(*(a1 + 224), v18, "Vector Storage (uint8_t, growth)");
    memcpy(v19, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v18;
    *(a1 + 264) = v19;
    v20 = *(a1 + 260);
  }

  memmove(&v19[v13 + 1], &v19[v13], v20 - v13);
  memcpy((*(a1 + 264) + v13), a2, v14);
  *(a1 + 260) += v14;

  return glpSerializeLLVMValue(a1, a3);
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

uint64_t glpLLVMGetTextureTypeFromSampler(uint64_t a1, uint64_t *a2, int a3)
{
  PPTextarget = glpPrimitiveSamplerGetPPTextarget(a3);
  if (PPTextarget >= 0x12)
  {
    abort();
  }

  v6 = off_278B48FE0[PPTextarget];
  v7 = glpLLVMGetNamedType(a1, "struct._sampler_t");
  *a2 = glpLLVMPointerType(a1, v7, 2);
  v8 = glpLLVMGetNamedType(a1, v6);

  return glpLLVMPointerType(a1, v8, 1);
}

uint64_t glpLLVMPointerType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 260);
  v7 = v6 + 1;
  v8 = *(a1 + 256);
  if (v6 + 1 <= v8)
  {
    v11 = *(a1 + 264);
    v12 = *(a1 + 260);
  }

  else
  {
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 2 * v8;
    if (v9 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    v11 = (*(a1 + 232))(*(a1 + 224), v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v10;
    *(a1 + 264) = v11;
    v12 = *(a1 + 260);
  }

  memmove(&v11[v6 + 1], &v11[v6], (v12 - v6));
  *(*(a1 + 264) + v6) = 10;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMType(a1, a2);
  v13 = glp_serialized_integer32_control(a3);
  v14 = *(a1 + 260);
  v15 = v14 + 1;
  v16 = *(a1 + 256);
  if (v14 + 1 <= v16)
  {
    v19 = *(a1 + 264);
    v20 = *(a1 + 260);
  }

  else
  {
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = 2 * v16;
    if (v17 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    v19 = (*(a1 + 232))(*(a1 + 224), v18, "Vector Storage (uint8_t, growth)");
    memcpy(v19, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v18;
    *(a1 + 264) = v19;
    v20 = *(a1 + 260);
  }

  memmove(&v19[v14 + 1], &v19[v14], (v20 - v14));
  *(*(a1 + 264) + v14) = v13;
  v21 = *(a1 + 260);
  v22 = v21 + 1;
  *(a1 + 260) = v21 + 1;
  if ((v13 & 0x80000000) != 0)
  {
    v23 = (v13 >> 1) & 7;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v42 = v21 + 4;
        v43 = *(a1 + 256);
        if (v42 <= v43)
        {
          v46 = *(a1 + 264);
          v47 = v22;
        }

        else
        {
          if (v43 <= 1)
          {
            v43 = 1;
          }

          v44 = 2 * v43;
          if (v44 <= v42)
          {
            v45 = v42;
          }

          else
          {
            v45 = v44;
          }

          v46 = (*(a1 + 232))(*(a1 + 224), v45, "Vector Storage (uint8_t, growth)");
          memcpy(v46, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v45;
          *(a1 + 264) = v46;
          v47 = *(a1 + 260);
        }

        memmove(&v46[v22 + 1], &v46[v22], v47 - v22);
        v49 = *(a1 + 264) + v22;
        *(v49 + 2) = BYTE2(a3);
        *v49 = a3;
        v48 = 3;
        goto LABEL_59;
      }

      if (v23 == 3)
      {
        v30 = v21 + 5;
        v31 = *(a1 + 256);
        if (v30 <= v31)
        {
          v34 = *(a1 + 264);
          v35 = v22;
        }

        else
        {
          if (v31 <= 1)
          {
            v31 = 1;
          }

          v32 = 2 * v31;
          if (v32 <= v30)
          {
            v33 = v30;
          }

          else
          {
            v33 = v32;
          }

          v34 = (*(a1 + 232))(*(a1 + 224), v33, "Vector Storage (uint8_t, growth)");
          memcpy(v34, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v33;
          *(a1 + 264) = v34;
          v35 = *(a1 + 260);
        }

        memmove(&v34[v22 + 1], &v34[v22], v35 - v22);
        *(*(a1 + 264) + v22) = a3;
        v48 = 4;
        goto LABEL_59;
      }
    }

    else
    {
      if (!v23)
      {
        v36 = v21 + 2;
        v37 = *(a1 + 256);
        if (v36 <= v37)
        {
          v40 = *(a1 + 264);
          v41 = v22;
        }

        else
        {
          if (v37 <= 1)
          {
            v37 = 1;
          }

          v38 = 2 * v37;
          if (v38 <= v36)
          {
            v39 = v36;
          }

          else
          {
            v39 = v38;
          }

          v40 = (*(a1 + 232))(*(a1 + 224), v39, "Vector Storage (uint8_t, growth)");
          memcpy(v40, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v39;
          *(a1 + 264) = v40;
          v41 = *(a1 + 260);
        }

        memmove(&v40[v22 + 1], &v40[v22], v41 - v22);
        *(*(a1 + 264) + v22) = a3;
        v48 = 1;
        goto LABEL_59;
      }

      if (v23 == 1)
      {
        v24 = v21 + 3;
        v25 = *(a1 + 256);
        if (v24 <= v25)
        {
          v28 = *(a1 + 264);
          v29 = v22;
        }

        else
        {
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = 2 * v25;
          if (v26 <= v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v28 = (*(a1 + 232))(*(a1 + 224), v27, "Vector Storage (uint8_t, growth)");
          memcpy(v28, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v27;
          *(a1 + 264) = v28;
          v29 = *(a1 + 260);
        }

        memmove(&v28[v22 + 1], &v28[v22], v29 - v22);
        *(*(a1 + 264) + v22) = a3;
        v48 = 2;
LABEL_59:
        *(a1 + 260) += v48;
      }
    }
  }

  result = *(a1 + 304);
  *(a1 + 304) = result + 1;
  return result;
}

uint64_t glpLLVMGetNamedType(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 260);
  v5 = v4 + 1;
  v6 = *(a1 + 256);
  if (v4 + 1 <= v6)
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 260);
  }

  else
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 2 * v6;
    if (v7 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(a1 + 232))(*(a1 + 224), v8, "Vector Storage (uint8_t, growth)");
    memcpy(v9, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v8;
    *(a1 + 264) = v9;
    v10 = *(a1 + 260);
  }

  memmove(&v9[v4 + 1], &v9[v4], (v10 - v4));
  *(*(a1 + 264) + v4) = 42;
  v11 = *(a1 + 260) + 1;
  *(a1 + 260) = v11;
  ++*(a1 + 296);
  v12 = strlen(a2) + 1;
  v13 = v12 + v11;
  v14 = *(a1 + 256);
  if (v12 + v11 <= v14)
  {
    v17 = *(a1 + 264);
    v18 = v11;
  }

  else
  {
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v15 = 2 * v14;
    if (v15 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    v17 = (*(a1 + 232))(*(a1 + 224), v16, "Vector Storage (uint8_t, growth)");
    memcpy(v17, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v16;
    *(a1 + 264) = v17;
    v18 = *(a1 + 260);
  }

  memmove(&v17[v11 + 1], &v17[v11], v18 - v11);
  memcpy((*(a1 + 264) + v11), a2, v12);
  *(a1 + 260) += v12;
  result = *(a1 + 304);
  *(a1 + 304) = result + 1;
  return result;
}

void *glpSerializeLLVMType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = glp_serialized_integer32_control(a2);
  v5 = *(a1 + 260);
  v6 = v5 + 1;
  v7 = *(a1 + 256);
  if (v5 + 1 <= v7)
  {
    v10 = *(a1 + 264);
    v11 = *(a1 + 260);
  }

  else
  {
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = 2 * v7;
    if (v8 <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    v10 = (*(a1 + 232))(*(a1 + 224), v9, "Vector Storage (uint8_t, growth)");
    memcpy(v10, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v9;
    *(a1 + 264) = v10;
    v11 = *(a1 + 260);
  }

  result = memmove(&v10[v5 + 1], &v10[v5], (v11 - v5));
  *(*(a1 + 264) + v5) = v4;
  v13 = *(a1 + 260);
  v14 = v13 + 1;
  *(a1 + 260) = v13 + 1;
  if ((v4 & 0x80000000) != 0)
  {
    v15 = (v4 >> 1) & 7;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v34 = v13 + 4;
        v35 = *(a1 + 256);
        if (v34 <= v35)
        {
          v38 = *(a1 + 264);
          v39 = v14;
        }

        else
        {
          if (v35 <= 1)
          {
            v35 = 1;
          }

          v36 = 2 * v35;
          if (v36 <= v34)
          {
            v37 = v34;
          }

          else
          {
            v37 = v36;
          }

          v38 = (*(a1 + 232))(*(a1 + 224), v37, "Vector Storage (uint8_t, growth)");
          memcpy(v38, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v37;
          *(a1 + 264) = v38;
          v39 = *(a1 + 260);
        }

        result = memmove(&v38[v14 + 1], &v38[v14], v39 - v14);
        v41 = *(a1 + 264) + v14;
        *(v41 + 2) = BYTE2(v2);
        *v41 = v2;
        v40 = 3;
      }

      else
      {
        if (v15 != 3)
        {
          return result;
        }

        v22 = v13 + 5;
        v23 = *(a1 + 256);
        if (v22 <= v23)
        {
          v26 = *(a1 + 264);
          v27 = v14;
        }

        else
        {
          if (v23 <= 1)
          {
            v23 = 1;
          }

          v24 = 2 * v23;
          if (v24 <= v22)
          {
            v25 = v22;
          }

          else
          {
            v25 = v24;
          }

          v26 = (*(a1 + 232))(*(a1 + 224), v25, "Vector Storage (uint8_t, growth)");
          memcpy(v26, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v25;
          *(a1 + 264) = v26;
          v27 = *(a1 + 260);
        }

        result = memmove(&v26[v14 + 1], &v26[v14], v27 - v14);
        *(*(a1 + 264) + v14) = v2;
        v40 = 4;
      }
    }

    else if (v15)
    {
      if (v15 != 1)
      {
        return result;
      }

      v16 = v13 + 3;
      v17 = *(a1 + 256);
      if (v16 <= v17)
      {
        v20 = *(a1 + 264);
        v21 = v14;
      }

      else
      {
        if (v17 <= 1)
        {
          v17 = 1;
        }

        v18 = 2 * v17;
        if (v18 <= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        v20 = (*(a1 + 232))(*(a1 + 224), v19, "Vector Storage (uint8_t, growth)");
        memcpy(v20, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v19;
        *(a1 + 264) = v20;
        v21 = *(a1 + 260);
      }

      result = memmove(&v20[v14 + 1], &v20[v14], v21 - v14);
      *(*(a1 + 264) + v14) = v2;
      v40 = 2;
    }

    else
    {
      v28 = v13 + 2;
      v29 = *(a1 + 256);
      if (v28 <= v29)
      {
        v32 = *(a1 + 264);
        v33 = v14;
      }

      else
      {
        if (v29 <= 1)
        {
          v29 = 1;
        }

        v30 = 2 * v29;
        if (v30 <= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v30;
        }

        v32 = (*(a1 + 232))(*(a1 + 224), v31, "Vector Storage (uint8_t, growth)");
        memcpy(v32, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v31;
        *(a1 + 264) = v32;
        v33 = *(a1 + 260);
      }

      result = memmove(&v32[v14 + 1], &v32[v14], v33 - v14);
      *(*(a1 + 264) + v14) = v2;
      v40 = 1;
    }

    *(a1 + 260) += v40;
  }

  return result;
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

uint64_t glpLLVMCGImplicitConversion(void *a1, uint64_t a2, uint64_t a3)
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
  v17 = glpLLVMTypeOf(a1, v7);
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
      v21 = glpLLVMConstFromTypeCache(a1, 35, v17);

      return glpLLVMBuildFCmp(a1, 6, v7, v21, "mtc");
    }

    else
    {
      v24 = glpLLVMConstFromTypeCache(a1, 35, v17);

      return glpLLVMBuildICmp(a1, 1, v7, v24, "mtc");
    }
  }

  if (ScalarType == 1 || ScalarType == 62)
  {
    if (v20 == 62 || v20 == 1)
    {
      v22 = a1;
      v23 = 88;
      goto LABEL_14;
    }
  }

  else
  {
    if (v20 != 1 && v20 != 62)
    {
      if (ScalarType == 9)
      {
        goto LABEL_27;
      }

      v29 = v11 > 3 || *(a1 + qword_23A29C380[v11]) <= 0x10u;
      if (v15 > 3)
      {
        goto LABEL_44;
      }

      v30 = !v29;
      if (*(a1 + qword_23A29C380[v15]) < 0x11u)
      {
        v30 = 1;
      }

      if (v30)
      {
LABEL_44:
        v22 = a1;
        v23 = 74;
        goto LABEL_14;
      }

      v31 = glpPrimitiveTypeGetScalarType(PrimitiveType);
      if (v31 == 36 || v31 == 9)
      {
LABEL_27:
        v22 = a1;
        v23 = 75;
      }

      else
      {
        v22 = a1;
        v23 = 76;
      }

LABEL_14:

      return glpLLVMCastOperation(v22, v23, v7, v16, "mtc");
    }

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

      v28 = glpPrimitiveTypeToLLVMType(a1, PrimitiveType, v11);
      v27 = glpLLVMCastOperation(a1, 75, v7, v28, "mtc");
      v26 = a1;
      goto LABEL_30;
    }
  }

  v26 = a1;
  v27 = v7;
LABEL_30:

  return glpLLVMBuildConversion(v26, v27, v16, PrimitiveType, v11, v13, v15);
}

uint64_t glpLLVMCGConstant(void *a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
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
      v16 = v20 - v15;
      bzero(v20 - v15, v17);
      glpLLVMPrimitiveConstant(a1, Value, v16, 0, PrimitiveType, ColumnType, v5);
      v18 = glpPrimitiveTypeToLLVMType(a1, ColumnType, v5);
      result = glpLLVMConstArrayCache(a1, v18, v16, Size);
    }

    else
    {
      v20[0] = 0;
      glpLLVMPrimitiveConstant(a1, Value, v20, 0, PrimitiveType, PrimitiveType, v5);
      result = v20[0];
    }

    v19 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_2:
  v9 = *MEMORY[0x277D85DE8];

  return glpLLVMAggregateConstant(a1, Type, v5, Value);
}

uint64_t glpLLVMCGPPStreamOpNode(uint64_t a1, uint64_t a2)
{
  v402[1] = *MEMORY[0x277D85DE8];
  glpLLVMAddLineInformation(a1, a2);
  Opcode = glpPPStreamOpNodeGetOpcode(a2);
  v5 = 0;
  if (Opcode > 166)
  {
    LODWORD(v363) = Opcode;
    if ((Opcode - 167) < 3)
    {
      Child = glpASTNodeGetChild(a2, 0);
      v5 = *(glpLValueNodeGetVariableExtra(Child) + 51) & 1;
    }

    goto LABEL_10;
  }

  if (Opcode == 78)
  {
    v36 = glpASTNodeGetChild(a2, 0);
    v37 = glpASTNodeGetChild(a2, 1u);
    VariableExtra = glpLValueNodeGetVariableExtra(v36);
    Offset = glpDerefNodeGetOffset(v36);
    if (Offset && (OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset), glpIsConstantNode(OffsetExpr)))
    {
      v41 = *glpConstantNodeGetValue(OffsetExpr);
    }

    else
    {
      v41 = 0;
    }

    v364 = glpBuildUniformElementPtr(a1, VariableExtra, *(a1 + 440), 0, 0, *(VariableExtra + 156) + v41);
    v47 = glpLLVMCGNode(a1, v37, 1);
    ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
    SaFlags = glpASTNodeGetSaFlags(a2);
    v50 = glpPrecisionIndexFromSAFlags(SaFlags);
    v363 = glpPrimitiveTypeToLLVMType(a1, ReturnPrimitiveType, v50);
    SaType = glpASTNodeGetSaType(v37);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    Swizzle = glpMakeSwizzle(PrimitiveType, v53, v54, v55, v56, v57, v58, v59, 0);
    v61 = glpCGSwizzle(a1, 0, 0, v47, PrimitiveType, Swizzle);
    v62 = *(a1 + 520);
    if (!v62)
    {
      v62 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
      *(a1 + 520) = v62;
    }

    *&v370 = v62;
    v63 = glpLLVMBuildGEP2(a1, v364, &v370, 1, "ptr_mat_0");
    v64 = glpLLVMBuildLoad2(a1, v63, "mat_0");
    v65 = glpLLVMBinaryOperation(a1, 58, v61, v64, "mul");
    v73 = glpMakeSwizzle(v65, v66, v67, v68, v69, v70, v71, v72, 1);
    v74 = glpCGSwizzle(a1, 0, 0, v47, PrimitiveType, v73);
    v75 = *(a1 + 528);
    if (!v75)
    {
      v75 = glpLLVMConstIntCache(a1, *(a1 + 40), 1uLL, 0);
      *(a1 + 528) = v75;
    }

    v365 = v75;
    v76 = glpLLVMBuildGEP2(a1, v364, &v365, 1, "ptr_mat_1");
    v77 = glpLLVMBuildLoad2(a1, v76, "mat_1");
    v367 = v74;
    v368 = v77;
    v369 = v65;
    v78 = glpLLVMGetTypeString(&v366, ReturnPrimitiveType, v50);
    v400 = 0u;
    v401 = 0u;
    v398 = 0u;
    v399 = 0u;
    v396 = 0u;
    v397 = 0u;
    v394 = 0u;
    v395 = 0u;
    v392 = 0u;
    v393 = 0u;
    v390 = 0u;
    v391 = 0u;
    v388 = 0u;
    v389 = 0u;
    v386 = 0u;
    v387 = 0u;
    v384 = 0u;
    v385 = 0u;
    v382 = 0u;
    v383 = 0u;
    v380 = 0u;
    v381 = 0u;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v374 = 0u;
    v375 = 0u;
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    snprintf_l(&v370, 0x200uLL, 0, "%s.%s", "air.fma", v78);
    v402[0] = 0x300000001;
    v79 = v363;
    v80 = glpLLVMCallFunction(a1, &v370, v363, &v367, 3, v402, 2);
    v88 = glpMakeSwizzle(v80, v81, v82, v83, v84, v85, v86, v87, 2);
    v89 = glpCGSwizzle(a1, 0, 0, v47, PrimitiveType, v88);
    v90 = *(a1 + 536);
    if (!v90)
    {
      v90 = glpLLVMConstIntCache(a1, *(a1 + 40), 2uLL, 0);
      *(a1 + 536) = v90;
    }

    v365 = v90;
    v91 = glpLLVMBuildGEP2(a1, v364, &v365, 1, "ptr_mat_2");
    v92 = glpLLVMBuildLoad2(a1, v91, "mat_2");
    v367 = v89;
    v368 = v92;
    v369 = v80;
    v93 = glpLLVMGetTypeString(&v366, ReturnPrimitiveType, v50);
    v400 = 0u;
    v401 = 0u;
    v398 = 0u;
    v399 = 0u;
    v396 = 0u;
    v397 = 0u;
    v394 = 0u;
    v395 = 0u;
    v392 = 0u;
    v393 = 0u;
    v390 = 0u;
    v391 = 0u;
    v388 = 0u;
    v389 = 0u;
    v386 = 0u;
    v387 = 0u;
    v384 = 0u;
    v385 = 0u;
    v382 = 0u;
    v383 = 0u;
    v380 = 0u;
    v381 = 0u;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v374 = 0u;
    v375 = 0u;
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    snprintf_l(&v370, 0x200uLL, 0, "%s.%s", "air.fma", v93);
    v402[0] = 0x300000001;
    v94 = glpLLVMCallFunction(a1, &v370, v79, &v367, 3, v402, 2);
    v102 = glpMakeSwizzle(v94, v95, v96, v97, v98, v99, v100, v101, 3);
    v103 = glpCGSwizzle(a1, 0, 0, v47, PrimitiveType, v102);
    v104 = *(a1 + 544);
    if (!v104)
    {
      v104 = glpLLVMConstIntCache(a1, *(a1 + 40), 3uLL, 0);
      *(a1 + 544) = v104;
    }

    v365 = v104;
    v105 = glpLLVMBuildGEP2(a1, v364, &v365, 1, "ptr_mat_3");
    v106 = glpLLVMBuildLoad2(a1, v105, "mat_3");
    v367 = v103;
    v368 = v106;
    v369 = v94;
    v107 = glpLLVMGetTypeString(&v366, ReturnPrimitiveType, v50);
    v400 = 0u;
    v401 = 0u;
    v398 = 0u;
    v399 = 0u;
    v396 = 0u;
    v397 = 0u;
    v394 = 0u;
    v395 = 0u;
    v392 = 0u;
    v393 = 0u;
    v390 = 0u;
    v391 = 0u;
    v388 = 0u;
    v389 = 0u;
    v386 = 0u;
    v387 = 0u;
    v384 = 0u;
    v385 = 0u;
    v382 = 0u;
    v383 = 0u;
    v380 = 0u;
    v381 = 0u;
    v378 = 0u;
    v379 = 0u;
    v376 = 0u;
    v377 = 0u;
    v374 = 0u;
    v375 = 0u;
    v372 = 0u;
    v373 = 0u;
    v370 = 0u;
    v371 = 0u;
    snprintf_l(&v370, 0x200uLL, 0, "%s.%s", "air.fma", v107);
    v402[0] = 0x300000001;
    result = glpLLVMCallFunction(a1, &v370, v79, &v367, 3, v402, 2);
  }

  else
  {
    if (Opcode == 121)
    {
      v42 = glpASTNodeGetChild(a2, 0);
      v43 = glpLLVMCGNode(a1, v42, 1);
      v44 = *(a1 + 584);
      if (!v44)
      {
        v45 = glpLLVMTypeOf(a1, v43);
        v44 = glpBuildAlloca(a1, v45);
        *(a1 + 584) = v44;
      }

      glpLLVMBuildStore(a1, v43, v44);
    }

    else
    {
      LODWORD(v363) = Opcode;
      if (Opcode != 153)
      {
LABEL_10:
        HasSrctex = glpPPStreamOpNodeGetHasSrctex(a2);
        ChildCount = glpASTNodeGetChildCount(a2);
        v362 = &v360;
        MEMORY[0x28223BE20](ChildCount);
        v10 = (&v360 - v9);
        bzero(&v360 - v9, v11);
        OpPrimitiveType = glpPPStreamOpNodeGetOpPrimitiveType(a2);
        if (OpPrimitiveType)
        {
          OpPrimitiveType = glpPrimitiveTypeGetScalarType(OpPrimitiveType);
          LODWORD(v360) = OpPrimitiveType;
        }

        else
        {
          LODWORD(v360) = 0;
        }

        v13 = 4 * (ChildCount + HasSrctex);
        MEMORY[0x28223BE20](OpPrimitiveType);
        v14 = (v13 + 15) & 0x7FFFFFFF0;
        v364 = (&v360 - v14);
        bzero(&v360 - v14, v13);
        MEMORY[0x28223BE20](v15);
        v16 = (&v360 - v14);
        bzero(&v360 - v14, v13);
        v361 = ChildCount;
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
              v21 = glpASTNodeGetSaType(v20);
              v22 = glpPrimitiveTypeGetPrimitiveType(v21);
              v364[i] = v22;
              v23 = glpASTNodeGetSaFlags(v20);
              v16[i] = glpPrecisionIndexFromSAFlags(v23);
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
          v28 = v361;
          v29 = glpASTNodeGetChild(a2, v361 - 1);
          v10[v28 - 1] = glpLLVMCGSamplerNode(a1, v29, &v10[v28]);
        }

        v30 = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
        v31 = glpASTNodeGetSaFlags(a2);
        v32 = glpPrecisionIndexFromSAFlags(v31);
        v33 = glpPrimitiveTypeToLLVMType(a1, v30, v32);
        v402[0] = 0;
        v34 = v33;
        switch(v363)
        {
          case 2:
            if (v361 == 2)
            {
              glpMatchInputSize(v26, v10, v364);
            }

            if (v360 <= 0x24 && ((1 << v360) & 0x1000000220) != 0)
            {
              v196 = "air.abs";
              v199 = v26;
              v200 = 1;
              goto LABEL_271;
            }

            v129 = "air.fabs";
            goto LABEL_325;
          case 3:
            v129 = "air.ceil";
            goto LABEL_325;
          case 4:
            v129 = "air.fract";
            goto LABEL_325;
          case 5:
            v129 = "air.floor";
            goto LABEL_325;
          case 6:
            v129 = "air.fwidth";
            goto LABEL_325;
          case 7:
            if (v360 <= 0x24 && ((1 << v360) & 0x1000000220) != 0)
            {
              v201 = *v364;
              v202 = *v16;
              v203 = glpBuildConstantIntVector(v26, v201, v202, 0xFFFFFFFFFFFFFFFFLL);
              v204 = glpBuildConstantIntVector(v26, v201, v202, 0);
              v205 = glpBuildConstantIntVector(v26, v201, v202, 1uLL);
              v206 = *v27;
              v207 = glpLLVMBuildICmp(v26, 6, v206, v204, "cmp");
              v208 = glpLLVMBuildSelect(v26, v207, v205, v204, "sel");
              v193 = glpLLVMBuildICmp(v26, 8, v206, v204, "cmp");
              v192 = v26;
              v191 = v203;
              v194 = v208;
              v195 = "sel";
              goto LABEL_381;
            }

            v129 = "air.sign";
LABEL_325:
            v165 = v26;
            v166 = 1;
            goto LABEL_326;
          case 8:
            v209 = *(v26 + 64);
            v168 = *v364;
            v169 = *v16;
            v129 = "air.any";
            goto LABEL_235;
          case 9:
            v209 = *(v26 + 64);
            v168 = *v364;
            v169 = *v16;
            v129 = "air.all";
LABEL_235:
            v165 = v26;
            v166 = 1;
            v167 = v10;
            goto LABEL_329;
          case 10:
            LODOperation = glpLLVMUnaryOperation(v26, 73, *v10, "not");
            goto LABEL_399;
          case 11:
            if (glpPrimitiveTypeGetCategory(v30) == 1)
            {
              v168 = *v364;
              v169 = *v16;
              v129 = "air.noise1";
            }

            else
            {
              Length = glpPrimitiveVectorGetLength(v30);
              switch(Length)
              {
                case 4:
                  v168 = *v364;
                  v169 = *v16;
                  v129 = "air.noise4";
                  break;
                case 3:
                  v168 = *v364;
                  v169 = *v16;
                  v129 = "air.noise3";
                  break;
                case 2:
                  v168 = *v364;
                  v169 = *v16;
                  v129 = "air.noise2";
                  break;
                default:
                  goto LABEL_400;
              }
            }

LABEL_243:
            v165 = v26;
            v166 = 1;
LABEL_281:
            v167 = v10;
            v209 = v34;
            goto LABEL_329;
          case 12:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_sqrt";
            v159 = "air.sqrt";
            goto LABEL_322;
          case 16:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_exp2";
            v159 = "air.exp2";
            goto LABEL_322;
          case 18:
            LODOperation = glpLLVMBuildLength(v26, v10, v364, v32, v33);
            goto LABEL_399;
          case 19:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_log2";
            v159 = "air.log2";
            goto LABEL_322;
          case 21:
            LODOperation = glpLLVMBuildNormalize(v26, v10, v364, v32, v33);
            goto LABEL_399;
          case 22:
            v210 = 0.0174532925;
            goto LABEL_252;
          case 23:
            v210 = 57.2957795;
LABEL_252:
            LODOperation = glpLLVMBuildConvert(v26, v10, v364, v210);
            goto LABEL_399;
          case 25:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_sin";
            v159 = "air.sin";
            goto LABEL_322;
          case 26:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_cos";
            v159 = "air.cos";
            goto LABEL_322;
          case 27:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_tan";
            v159 = "air.tan";
            goto LABEL_322;
          case 28:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_asin";
            v159 = "air.asin";
            goto LABEL_322;
          case 29:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_acos";
            v159 = "air.acos";
            goto LABEL_322;
          case 30:
            v198 = v32 != 3 && v32 != 0;
            v168 = *v364;
            v166 = v361;
            if (v361 == 2)
            {
              if (v198)
              {
                v129 = "air.atan2";
              }

              else
              {
                v129 = "air.fast_atan2";
              }

              v165 = v26;
            }

            else
            {
              if (v198)
              {
                v129 = "air.atan";
              }

              else
              {
                v129 = "air.fast_atan";
              }

              v165 = v26;
            }

            goto LABEL_384;
          case 31:
            glpMatchInputSize(v26, v10, v364);
            if (v360 <= 0x24 && ((1 << v360) & 0x1000000220) != 0)
            {
              v130 = *v10;
              v131 = v10[1];
              v132 = "add";
              v133 = v26;
              v134 = 53;
            }

            else
            {
              v130 = *v10;
              v131 = v10[1];
              v132 = "add";
              v133 = v26;
              v134 = 54;
            }

            goto LABEL_398;
          case 32:
            glpMatchInputSize(v26, v10, v364);
            if (v360 <= 0x24 && ((1 << v360) & 0x1000000220) != 0)
            {
              v130 = *v10;
              v131 = v10[1];
              v132 = "sub";
              v133 = v26;
              v134 = 55;
            }

            else
            {
              v130 = *v10;
              v131 = v10[1];
              v132 = "sub";
              v133 = v26;
              v134 = 56;
            }

            goto LABEL_398;
          case 33:
            glpMatchInputSize(v26, v10, v364);
            if (v360 <= 0x24 && ((1 << v360) & 0x1000000220) != 0)
            {
              v130 = *v10;
              v131 = v10[1];
              if (v360 == 5)
              {
                v134 = 63;
              }

              else
              {
                v134 = 62;
              }

              v132 = "mod";
              goto LABEL_172;
            }

            v168 = *v364;
            v129 = "air.mod";
            v165 = v26;
            v166 = 2;
LABEL_384:
            v167 = v10;
            v209 = v34;
            goto LABEL_328;
          case 34:
            glpMatchInputSize(v26, v10, v364);
            if (v360 <= 0x24 && ((1 << v360) & 0x1000000220) != 0)
            {
              v130 = *v10;
              v131 = v10[1];
              v132 = "mul";
              v133 = v26;
              v134 = 57;
            }

            else
            {
              v130 = *v10;
              v131 = v10[1];
              v132 = "mul";
              v133 = v26;
              v134 = 58;
            }

            goto LABEL_398;
          case 36:
          case 125:
            glpMatchInputSize(v26, v10, v364);
            v130 = *v10;
            v131 = v10[1];
            v132 = "and";
            v133 = v26;
            v134 = 68;
            goto LABEL_398;
          case 37:
          case 126:
            glpMatchInputSize(v26, v10, v364);
            v130 = *v10;
            v131 = v10[1];
            v132 = "or";
            v133 = v26;
            v134 = 69;
            goto LABEL_398;
          case 38:
          case 127:
            glpMatchInputSize(v26, v10, v364);
            v130 = *v10;
            v131 = v10[1];
            v132 = "xor";
            v133 = v26;
            v134 = 70;
            goto LABEL_398;
          case 39:
            v168 = *v364;
            v169 = *v16;
            v129 = "air.dot";
            goto LABEL_280;
          case 44:
            if (v361 == 2)
            {
              glpMatchInputSize(v26, v10, v364);
            }

            if (v360 <= 0x24 && ((1 << v360) & 0x1000000220) != 0)
            {
              v196 = "air.min";
              goto LABEL_212;
            }

            if (v32)
            {
              v162 = v32 == 3;
            }

            else
            {
              v162 = 1;
            }

            v163 = "air.fast_fmin";
            v164 = "air.fmin";
            goto LABEL_113;
          case 45:
            if (v361 == 2)
            {
              glpMatchInputSize(v26, v10, v364);
            }

            if (v360 <= 0x24 && ((1 << v360) & 0x1000000220) != 0)
            {
              v196 = "air.max";
LABEL_212:
              v199 = v26;
              v200 = 2;
              goto LABEL_271;
            }

            if (v32)
            {
              v162 = v32 == 3;
            }

            else
            {
              v162 = 1;
            }

            v163 = "air.fast_fmax";
            v164 = "air.fmax";
LABEL_113:
            if (v162)
            {
              v129 = v163;
            }

            else
            {
              v129 = v164;
            }

            v165 = v26;
            v166 = 2;
            goto LABEL_326;
          case 46:
            LODOperation = glpLLVMBuildCross(v26, v10);
            goto LABEL_399;
          case 47:
            LODOperation = glpLLVMBuildReflect(v26, v10, v364, v32);
            goto LABEL_399;
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
            v108 = v363;
            glpMatchInputSize(v26, v27, v364);
            v109 = glpASTNodeGetChild(a2, 0);
            v110 = glpASTNodeGetSaType(v109);
            v111 = glpPrimitiveTypeGetPrimitiveType(v110);
            ScalarType = glpPrimitiveTypeGetScalarType(v111);
            v113 = 6;
            v114 = 7;
            v115 = 9;
            v116 = 8;
            v117 = 1;
            if (ScalarType > 35)
            {
              v118 = v108;
              if (ScalarType == 36)
              {
LABEL_52:
                v113 = 2;
                v114 = 3;
                v115 = 5;
                v116 = 4;
LABEL_53:
                if (v118 > 51)
                {
                  if (v118 == 52)
                  {
                    v122 = 5;
                    v113 = v115;
                  }

                  else if (v118 == 53)
                  {
                    v122 = 4;
                    v113 = v116;
                  }

                  else
                  {
                    v122 = 6;
                    v113 = 1;
                  }
                }

                else if (v118 == 49)
                {
                  v113 = 0;
                  v122 = 1;
                }

                else if (v118 == 50)
                {
                  v122 = 3;
                  v113 = v114;
                }

                else
                {
                  v122 = 2;
                }

                v140 = *v27;
                v141 = v27[1];
                if (v117)
                {
                  v142 = glpLLVMBuildICmp(v26, v113, v140, v141, "cmp");
                }

                else
                {
                  v142 = glpLLVMBuildFCmp(v26, v122, v140, v141, "cmp");
                }

                v143 = v142;
                if (glpPrimitiveTypeGetCategory(v30) == 2)
                {
                  v144 = glpPrimitiveVectorGetLength(v30);
                }

                else
                {
                  v144 = 1;
                }

                v145 = *v364;
                if (glpPrimitiveTypeGetCategory(*v364) == 2)
                {
                  v146 = glpPrimitiveVectorGetLength(v145);
                  if (v144 < v146)
                  {
                    if (v146 < 1)
                    {
                      Element = 0;
LABEL_99:
                      v402[0] = Element;
LABEL_400:
                      result = v402[0];
                      goto LABEL_401;
                    }

LABEL_88:
                    v148 = 0;
                    v149 = 0;
                    v150 = v146;
                    do
                    {
                      if (v148 > 7)
                      {
                        v153 = glpLLVMConstIntCache(v26, *(v26 + 40), v148, 1);
                        v151 = v26;
                      }

                      else
                      {
                        v151 = v26;
                        v152 = v26 + 8 * v148;
                        v153 = *(v152 + 520);
                        if (!v153)
                        {
                          v153 = glpLLVMConstIntCache(v151, *(v151 + 40), v148, 0);
                          *(v152 + 520) = v153;
                        }
                      }

                      Element = glpLLVMBuildExtractElement(v151, v143, v153, "");
                      v26 = v151;
                      if (v149)
                      {
                        if (v108 == 49)
                        {
                          v154 = 68;
                          v155 = v149;
                          v156 = "equal";
                        }

                        else
                        {
                          v154 = 69;
                          v155 = v149;
                          v156 = "notEqual";
                        }

                        Element = glpLLVMBinaryOperation(v151, v154, v155, Element, v156);
                      }

                      ++v148;
                      v149 = Element;
                    }

                    while (v150 != v148);
                    goto LABEL_99;
                  }
                }

                else if (v144 < 1)
                {
                  v146 = 1;
                  goto LABEL_88;
                }

                Element = v143;
                goto LABEL_99;
              }

              if (ScalarType != 62)
              {
                goto LABEL_53;
              }
            }

            else
            {
              v118 = v108;
              if (ScalarType != 1)
              {
                if (ScalarType != 9)
                {
                  goto LABEL_53;
                }

                goto LABEL_52;
              }
            }

            v117 = 0;
            goto LABEL_53;
          case 56:
            if (v32)
            {
              v222 = v32 == 3;
            }

            else
            {
              v222 = 1;
            }

            if (v222)
            {
              v129 = "air.fast_powr";
            }

            else
            {
              v129 = "air.powr";
            }

            v168 = *v364;
            v169 = *v16;
LABEL_280:
            v165 = v26;
            v166 = 2;
            goto LABEL_281;
          case 57:
            v223 = *v10;
            v224 = glpLLVMBuildExtractElement(v26, *v27, v27[1], "");
            ComponentCount = glpGetComponentCount(*v364);
            v226 = *(v26 + 520);
            if (!v226)
            {
              v226 = glpLLVMConstIntCache(v26, *(v26 + 40), 0, 0);
              *(v26 + 520) = v226;
            }

            v227 = glpLLVMTypeOf(v26, v223);
            v228 = glpLLVMConstFromTypeCache(v26, 37, v227);
            inserted = glpLLVMBuildInsertElement(v26, v228, v224, v226, "");
            v230 = glpLLVMVectorType(v26, *(v26 + 40), ComponentCount);
            v231 = glpLLVMConstFromTypeCache(v26, 35, v230);
            LODOperation = glpLLVMBuildShuffleVector(v26, inserted, inserted, v231, "sel");
            goto LABEL_399;
          case 58:
            glpMatchInputSize(v26, v10, v364);
            if (v360 <= 0x24 && ((1 << v360) & 0x1000000220) != 0)
            {
              v130 = *v10;
              v131 = v10[1];
              if (v360 == 5)
              {
                v134 = 60;
              }

              else
              {
                v134 = 59;
              }

              v132 = "div";
LABEL_172:
              v133 = v26;
            }

            else
            {
              v130 = *v10;
              v131 = v10[1];
              v132 = "div";
              v133 = v26;
              v134 = 61;
            }

LABEL_398:
            LODOperation = glpLLVMBinaryOperation(v133, v134, v130, v131, v132);
            goto LABEL_399;
          case 59:
            LODOperation = glpLLVMBuildFaceForward(v26, v10, v364, v32);
            goto LABEL_399;
          case 60:
            LODOperation = glpLLVMBuildMix(v26, v10, v364, v33, v32);
            goto LABEL_399;
          case 61:
            glpMatchInputSize3(v26, v10, v364);
            if (v360 <= 0x24 && ((1 << v360) & 0x1000000220) != 0)
            {
              v196 = "air.clamp";
              v199 = v26;
              v200 = 3;
LABEL_271:
              LODOperation = glpLLVMBuildBuiltinWithPrefix(v199, v196, v200, v10, v34, v30, v32);
            }

            else
            {
              v129 = "air.clamp";
LABEL_178:
              v165 = v26;
              v166 = 3;
LABEL_326:
              v167 = v10;
LABEL_327:
              v209 = v34;
              v168 = v30;
LABEL_328:
              v169 = v32;
LABEL_329:
              LODOperation = glpLLVMBuildBuiltinNoPrefix(v165, v129, v166, v167, v209, v168, v169);
            }

            goto LABEL_399;
          case 62:
            if (v360 <= 0x24 && ((1 << v360) & 0x1000000220) != 0)
            {
              if (v360 == 5)
              {
                v170 = *v10;
                v171 = glpLLVMTypeOf(v26, *v10);
                v172 = glpLLVMConstFromTypeCache(v26, 35, v171);
                v173 = v26;
                v174 = 8;
              }

              else
              {
                if (v360 != 36 && v360 != 9)
                {
                  v193 = 0;
LABEL_380:
                  v191 = v10[1];
                  v194 = v10[2];
                  v195 = "sel";
                  v192 = v26;
LABEL_381:
                  LODOperation = glpLLVMBuildSelect(v192, v193, v191, v194, v195);
LABEL_399:
                  v402[0] = LODOperation;
                  goto LABEL_400;
                }

                v170 = *v10;
                v351 = glpLLVMTypeOf(v26, *v10);
                v172 = glpLLVMConstFromTypeCache(v26, 35, v351);
                v173 = v26;
                v174 = 4;
              }

              v352 = glpLLVMBuildICmp(v173, v174, v170, v172, "cmp");
            }

            else
            {
              v353 = *v10;
              v354 = glpLLVMTypeOf(v26, *v10);
              v355 = glpLLVMConstFromTypeCache(v26, 35, v354);
              v352 = glpLLVMBuildFCmp(v26, 4, v353, v355, "cmp");
            }

            v193 = v352;
            goto LABEL_380;
          case 63:
            v129 = "air.mad";
            goto LABEL_178;
          case 64:
            LODOperation = glpLLVMBuildSmoothStep(v26, v10, v364, v32, v33);
            goto LABEL_399;
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
            LODOperation = glpBuildTextureOperation(v26, a2, v10, v364, v16, v361 + 1);
            goto LABEL_399;
          case 78:
          case 161:
            v129 = "air.popcount";
            goto LABEL_325;
          case 80:
            v129 = "air.dfdx";
            goto LABEL_325;
          case 81:
            v129 = "air.dfdy";
            goto LABEL_325;
          case 92:
            v160 = glpLLVMCastToHalf(v26, *v10, *v364, *v16);
            goto LABEL_263;
          case 93:
            v168 = *v364;
            v169 = *v16;
            v129 = "air.pack.unorm2x16";
            goto LABEL_243;
          case 94:
            v168 = *v364;
            v169 = *v16;
            v129 = "air.pack.snorm4x8";
            goto LABEL_243;
          case 95:
            v168 = *v364;
            v169 = *v16;
            v129 = "air.pack.unorm4x8";
            goto LABEL_243;
          case 100:
            v247 = glpLLVMVectorType(v26, *(v26 + 80), 2);
            v402[0] = glpLLVMCastOperation(v26, 85, *v10, v247, "int");
            if (v32 != 3 && v32)
            {
              goto LABEL_400;
            }

            *&v370 = 0x300000001;
            LODOperation = glpLLVMCallFunction(v26, "air.convert.f.v2f32.f.v2f16", v34, v402, 1, &v370, 2);
            goto LABEL_399;
          case 101:
            v129 = "air.unpack.unorm2x16";
            goto LABEL_325;
          case 102:
            v129 = "air.unpack.snorm4x8";
            goto LABEL_325;
          case 103:
            v129 = "air.unpack.unorm4x8";
            goto LABEL_325;
          case 105:
            LODOperation = glpLLVMBuildRefract(v26, v10, v364, v32, v33);
            goto LABEL_399;
          case 112:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_exp";
            v159 = "air.exp";
            goto LABEL_322;
          case 113:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_log";
            v159 = "air.log";
            goto LABEL_322;
          case 119:
          case 120:
            v367 = *v10;
            v123 = *(v26 + 88);
            if (v363 == 119)
            {
              v124 = "air.emit_vertex";
            }

            else
            {
              v124 = "air.end_primitive";
            }

            *&v370 = 0x300000001;
            v125 = &v367;
            v126 = &v370;
            v127 = v26;
            v128 = 1;
            goto LABEL_299;
          case 123:
            v129 = "air.round";
            goto LABEL_325;
          case 124:
            v129 = "air.trunc";
            goto LABEL_325;
          case 128:
            glpMatchInputSize(v26, v10, v364);
            v130 = *v10;
            v131 = v10[1];
            v132 = "shl";
            v133 = v26;
            v134 = 65;
            goto LABEL_398;
          case 129:
            glpMatchInputSize(v26, v10, v364);
            v130 = *v10;
            v131 = v10[1];
            if (v360 == 5)
            {
              v132 = "ashr";
              v133 = v26;
              v134 = 67;
            }

            else
            {
              v132 = "lshr";
              v133 = v26;
              v134 = 66;
            }

            goto LABEL_398;
          case 131:
            LODOperation = glpBuildTextureSizeOperation(v26, a2, v10, v361);
            goto LABEL_399;
          case 132:
            v220 = *v10;
            v221 = glpLLVMTypeOf(v26, *v10);
            v131 = glpLLVMConstFromTypeCache(v26, 36, v221);
            v132 = "not";
            v133 = v26;
            v134 = 70;
            v130 = v220;
            goto LABEL_398;
          case 133:
            LODOperation = glpLLVMBuildDistance(v26, v10, v364, v32, v33);
            goto LABEL_399;
          case 134:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_rsqrt";
            v159 = "air.rsqrt";
            goto LABEL_322;
          case 137:
            v129 = "air.rint";
            goto LABEL_325;
          case 138:
            v271 = *v364;
            *&v370 = glpLLVMf32Extend(v26, *v10, v271, *v16);
            v272 = glpLLVMTypeOf(v26, v370);
            v273 = glpLLVMBuildBuiltinNoPrefix(v26, "air.fabs", 1, &v370, v272, v271, 3);
            v274 = glpLLVMTypeOf(v26, v273);
            v275 = glpLLVMGetInfinityProxy(v26, v274);
            v276 = *(v26 + 40);
            if (glpPrimitiveTypeGetScalarType(v271) == 62)
            {
              v276 = *(v26 + 32);
            }

            v277 = glpGetComponentCount(v271);
            if (v277 >= 2)
            {
              v276 = glpLLVMVectorType(v26, v276, v277);
            }

            v278 = glpLLVMCastOperation(v26, 85, v273, v276, "int");
            v279 = glpLLVMCastOperation(v26, 85, v275, v276, "int");
            LODOperation = glpLLVMBuildICmp(v26, 2, v278, v279, "cmp");
            goto LABEL_399;
          case 139:
            v263 = *v364;
            *&v370 = glpLLVMf32Extend(v26, *v10, *v364, *v16);
            v264 = glpLLVMTypeOf(v26, v370);
            v265 = glpLLVMBuildBuiltinNoPrefix(v26, "air.fabs", 1, &v370, v264, v263, 3);
            v266 = glpLLVMTypeOf(v26, v265);
            v267 = glpLLVMGetInfinityProxy(v26, v266);
            LODOperation = glpLLVMBuildFCmp(v26, 1, v265, v267, "isInf");
            goto LABEL_399;
          case 144:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_sinh";
            v159 = "air.sinh";
            goto LABEL_322;
          case 145:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_cosh";
            v159 = "air.cosh";
            goto LABEL_322;
          case 146:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_tanh";
            v159 = "air.tanh";
            goto LABEL_322;
          case 147:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_asinh";
            v159 = "air.asinh";
            goto LABEL_322;
          case 148:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_acosh";
            v159 = "air.acosh";
            goto LABEL_322;
          case 149:
            if (v32)
            {
              v157 = v32 == 3;
            }

            else
            {
              v157 = 1;
            }

            v158 = "air.fast_atanh";
            v159 = "air.atanh";
LABEL_322:
            if (v157)
            {
              v129 = v158;
            }

            else
            {
              v129 = v159;
            }

            goto LABEL_325;
          case 150:
            v160 = *v10;
LABEL_263:
            v161 = "int";
            goto LABEL_316;
          case 151:
            v160 = *v10;
            v161 = "float";
            goto LABEL_316;
          case 153:
            if ((*(v26 + 320) & 0xFFFFFFFE) == 2)
            {
              v248 = glpASTNodeGetChild(a2, 1u);
              v249 = *(*(glpLValueNodeGetVariableExtra(v248) + 144) + 16);
              v250 = glpLLVMPointerType(v26, *(v26 + 56), 1);
              v251 = glpLLVMCastOperation(v26, 86, v10[1], v250, "ptr");
              ConstantInt32 = glpGetConstantInt32(v26, *(v249 + 4));
              v253 = glpGetConstantInt32(v26, *(v249 + 8));
              v254 = v27[2];
              v255 = glpLLVMTypeOf(v26, v254);
              v256 = v27;
              v257 = v26;
              v258 = glpBuildAlloca(v26, v255);
              glpLLVMBuildStore(v257, v254, v258);
              v259 = glpLLVMPointerType(v257, *(v257 + 56), 0);
              v260 = glpLLVMCastOperation(v257, 86, v258, v259, "valPtr");
              ScalarCount = glpPrimitiveTypeGetScalarCount(v364[2]);
              v262 = glpGetConstantInt32(v257, 4 * ScalarCount);
              v123 = *(v257 + 88);
              *&v370 = *v256;
              *(&v370 + 1) = v251;
              *&v371 = ConstantInt32;
              *(&v371 + 1) = v253;
              *&v372 = v260;
              *(&v372 + 1) = v262;
              v367 = 0x300000001;
              v124 = "air.gs_tf_store";
              v125 = &v370;
              v126 = &v367;
              v127 = v257;
              v128 = 6;
LABEL_299:
              glpLLVMCallFunction(v127, v124, v123, v125, v128, v126, 2);
              goto LABEL_400;
            }

            if ((*(v26 + 832) & 2) == 0)
            {
              goto LABEL_400;
            }

            v318 = glpLLVMPointerType(v26, *(v26 + 72), 1);
            v319 = glpLLVMCastOperation(v26, 86, v10[1], v318, "ptr");
            v320 = *v10;
            v321 = glpLLVMTypeOf(v26, *v10);
            v322 = glpLLVMConstIntCache(v26, v321, 2uLL, 1);
            v323 = glpLLVMBinaryOperation(v26, 67, v320, v322, "offset");
            *&v370 = v323;
            if (*(v26 + 832))
            {
              v324 = v323;
              v325 = *(v26 + 448);
              v361 = glpLLVMBuildLoad2(v26, v325, "first");
              v326 = *(v26 + 528);
              if (!v326)
              {
                v326 = glpLLVMConstIntCache(v26, *(v26 + 40), 1uLL, 0);
                *(v26 + 528) = v326;
              }

              v363 = v319;
              v367 = v326;
              v327 = glpLLVMBuildGEP2(v26, v325, &v367, 1, "ptr");
              v360 = glpLLVMBuildLoad2(v26, v327, "count");
              v328 = *(v26 + 536);
              if (!v328)
              {
                v328 = glpLLVMConstIntCache(v26, *(v26 + 40), 2uLL, 0);
                *(v26 + 536) = v328;
              }

              v366 = v328;
              v329 = glpLLVMBuildGEP2(v26, v325, &v366, 1, "ptr");
              v330 = glpLLVMBuildLoad2(v26, v329, "vertexOffset");
              v331 = glpASTNodeGetChild(a2, 1u);
              v332 = *(*(glpLValueNodeGetVariableExtra(v331) + 144) + 16);
              v333 = glpLLVMGetParam(v26, *(v26 + 160), *(v26 + 808));
              v334 = glpLLVMGetParam(v26, *(v26 + 160), *(v26 + 816));
              v335 = glpLLVMBinaryOperation(v26, 53, v330, v333, "vertexStart");
              v336 = glpLLVMBinaryOperation(v26, 55, v335, v361, "vertexStart");
              v337 = glpLLVMBinaryOperation(v26, 57, v360, v334, "tmpValue");
              v338 = glpLLVMBinaryOperation(v26, 53, v336, v337, "vertexStart");
              v339 = glpGetConstantInt32(v26, *(v332 + 8) >> 2);
              v340 = glpLLVMBinaryOperation(v26, 57, v339, v338, "offset");
              *&v370 = glpLLVMBinaryOperation(v26, 53, v324, v340, "offset");
              v27 = v10;
              v319 = v363;
            }

            v341 = glpLLVMBuildGEP2(v26, v319, &v370, 1, "ptr");
            v342 = v27[2];
            v343 = v16[2];
            v344 = v342;
            if (!v343)
            {
              goto LABEL_411;
            }

            v344 = v342;
            if (v343 == 3)
            {
              goto LABEL_411;
            }

            v345 = v364[2];
            v346 = glpPrimitiveTypeGetScalarType(v345);
            v347 = glpPrimitiveTypeToLLVMType(v26, v345, 3);
            if (v346 > 8)
            {
              v348 = 75;
              if (v346 != 9)
              {
                v344 = v342;
                if (v346 != 36)
                {
                  goto LABEL_411;
                }
              }
            }

            else if (v346 == 1)
            {
              v348 = 88;
            }

            else
            {
              v344 = v342;
              if (v346 != 5)
              {
LABEL_411:
                v357 = glpLLVMTypeOf(v26, v344);
                v358 = glpLLVMPointerType(v26, v357, 1);
                v359 = glpLLVMCastOperation(v26, 86, v341, v358, "ptr");
                glpLLVMBuildStore(v26, v344, v359);
                v402[0] = v342;
                goto LABEL_400;
              }

              v348 = 76;
            }

            v344 = glpLLVMCastOperation(v26, v348, v342, v347, "tf_output");
            goto LABEL_411;
          case 154:
            v175 = v33;
            v176 = *v364;
            v177 = glpGetComponentCount(v176);
            if (glpPrimitiveTypeGetScalarType(v176) == 1)
            {
              v178 = *(v26 + 40);
              if (v177 >= 2)
              {
                v178 = glpLLVMVectorType(v26, *(v26 + 40), v177);
              }

              v179 = glpLLVMCastOperation(v26, 85, *v10, v175, "exp");
              v180 = glpLLVMConstIntCache(v26, *(v26 + 40), 0x17uLL, 1);
              v181 = glpLLVMSplatConstantVector(v26, v180, v177);
              v182 = glpLLVMBinaryOperation(v26, 66, v179, v181, "exp");
              v402[0] = v182;
              v183 = glpLLVMConstIntCache(v26, *(v26 + 40), 0xFFuLL, 1);
              v184 = glpLLVMSplatConstantVector(v26, v183, v177);
              v185 = glpLLVMBinaryOperation(v26, 68, v182, v184, "exp");
              v186 = glpLLVMConstFromTypeCache(v26, 35, v178);
              v187 = glpLLVMBuildICmp(v26, 0, v185, v186, "cmp");
              v188 = glpLLVMConstIntCache(v26, *(v26 + 40), 0x7EuLL, 1);
              v189 = glpLLVMSplatConstantVector(v26, v188, v177);
              v190 = glpLLVMBinaryOperation(v26, 55, v185, v189, "exp");
              v191 = glpLLVMConstFromTypeCache(v26, 35, v178);
              v192 = v26;
              v193 = v187;
              v194 = v190;
              v195 = "exp";
              goto LABEL_381;
            }

            v291 = *(v26 + 32);
            v292 = v291;
            if (v177 >= 2)
            {
              v292 = glpLLVMVectorType(v26, *(v26 + 32), v177);
            }

            v293 = glpLLVMCastOperation(v26, 85, *v27, v292, "exp");
            v294 = glpLLVMConstIntCache(v26, v291, 0x34uLL, 0);
            v295 = glpLLVMSplatConstantVector(v26, v294, v177);
            v296 = glpLLVMBinaryOperation(v26, 66, v293, v295, "exp");
            v297 = glpLLVMConstIntCache(v26, v291, 0x7FFuLL, 0);
            v298 = glpLLVMSplatConstantVector(v26, v297, v177);
            v299 = glpLLVMBinaryOperation(v26, 68, v296, v298, "exp");
            v402[0] = v299;
            v300 = glpLLVMConstFromTypeCache(v26, 35, v292);
            v301 = glpLLVMBuildICmp(v26, 1, v299, v300, "cmp");
            v302 = glpLLVMConstIntCache(v26, v291, 0x3FEuLL, 0);
            v303 = glpLLVMSplatConstantVector(v26, v302, v177);
            v304 = glpLLVMBinaryOperation(v26, 55, v299, v303, "exp");
            v305 = glpLLVMConstFromTypeCache(v26, 35, v292);
            v160 = glpLLVMBuildSelect(v26, v301, v305, v304, "exp");
            v161 = "exponent";
            v268 = v26;
            v269 = 74;
            v270 = v175;
LABEL_317:
            LODOperation = glpLLVMCastOperation(v268, v269, v160, v270, v161);
            goto LABEL_399;
          case 155:
            v232 = v33;
            v233 = *v364;
            v234 = glpGetComponentCount(v233);
            if (glpPrimitiveTypeGetScalarType(v233) == 1)
            {
              v235 = *(v26 + 40);
              if (v234 >= 2)
              {
                v235 = glpLLVMVectorType(v26, *(v26 + 40), v234);
              }

              v236 = glpLLVMCastOperation(v26, 85, *v10, v235, "float");
              v237 = glpLLVMConstIntCache(v26, *(v26 + 40), 0x7F800000uLL, 1);
              v238 = glpLLVMSplatConstantVector(v26, v237, v234);
              v239 = glpLLVMBinaryOperation(v26, 68, v236, v238, "only_exp");
              v240 = glpLLVMConstFromTypeCache(v26, 35, v235);
              v241 = glpLLVMBuildICmp(v26, 0, v239, v240, "cmp");
              v242 = glpLLVMUnaryOperation(v26, 73, v238, "no_exp_mask");
              v243 = glpLLVMBinaryOperation(v26, 68, v236, v242, "no_exp");
              v244 = *(v26 + 40);
              v245 = v26;
              v246 = 1056964608;
            }

            else
            {
              v307 = *(v26 + 32);
              v235 = v307;
              if (v234 >= 2)
              {
                v235 = glpLLVMVectorType(v26, *(v26 + 32), v234);
              }

              v308 = glpLLVMCastOperation(v26, 85, *v27, v235, "double");
              v402[0] = v308;
              v309 = glpLLVMConstIntCache(v26, v307, 0x7FF0000000000000uLL, 0);
              v310 = glpLLVMSplatConstantVector(v26, v309, v234);
              v311 = glpLLVMBinaryOperation(v26, 68, v308, v310, "only_exp");
              v312 = glpLLVMConstFromTypeCache(v26, 35, v235);
              v241 = glpLLVMBuildICmp(v26, 0, v311, v312, "cmp");
              v313 = glpLLVMUnaryOperation(v26, 73, v310, "no_exp_mask");
              v243 = glpLLVMBinaryOperation(v26, 68, v308, v313, "no_exp");
              v245 = v26;
              v244 = v307;
              v246 = 0x3FE0000000000000;
            }

            v314 = glpLLVMConstIntCache(v245, v244, v246, 0);
            v315 = glpLLVMSplatConstantVector(v26, v314, v234);
            v316 = glpLLVMBinaryOperation(v26, 69, v243, v315, "significand");
            v317 = glpLLVMConstFromTypeCache(v26, 35, v235);
            v160 = glpLLVMBuildSelect(v26, v241, v317, v316, "exp");
            v268 = v26;
            v269 = 85;
            v270 = v232;
            v161 = "significand";
            goto LABEL_317;
          case 156:
            if (v32)
            {
              v162 = v32 == 3;
            }

            else
            {
              v162 = 1;
            }

            v163 = "air.fast_ldexp";
            v164 = "air.ldexp";
            goto LABEL_113;
          case 157:
            v160 = *v10;
            v161 = "pack";
            goto LABEL_316;
          case 158:
            v160 = *v10;
            v161 = "unpack";
LABEL_316:
            v268 = v26;
            v269 = 85;
            v270 = v34;
            goto LABEL_317;
          case 159:
            v196 = "air.mul_hi";
            goto LABEL_212;
          case 160:
            v129 = "air.reverse_bits";
            goto LABEL_325;
          case 162:
            *&v370 = *v10;
            *(&v370 + 1) = glpLLVMConstIntCache(v26, *(v26 + 64), 0, 0);
            v129 = "air.ctz";
            v167 = &v370;
            v165 = v26;
            v166 = 2;
            goto LABEL_327;
          case 163:
            v211 = v30;
            v212 = *v364;
            v213 = glpGetComponentCount(v212);
            v214 = glpPrimitiveTypeGetScalarType(v212);
            if (v214 == 36)
            {
              v219 = *v27;
            }

            else
            {
              if (v214 != 5)
              {
                abort();
              }

              v215 = *v27;
              v216 = glpLLVMConstIntCache(v26, *(v26 + 40), 0x1FuLL, 1);
              v217 = glpLLVMSplatConstantVector(v26, v216, v213);
              v218 = glpLLVMBinaryOperation(v26, 67, v215, v217, "splatSign");
              v219 = glpLLVMBinaryOperation(v26, 70, v218, v215, "correctSign");
            }

            *&v370 = v219;
            *(&v370 + 1) = glpLLVMConstIntCache(v26, *(v26 + 64), 0, 0);
            v349 = glpLLVMBuildBuiltinNoPrefix(v26, "air.clz", 2, &v370, v34, v211, v32);
            v350 = glpLLVMConstIntCache(v26, *(v26 + 40), 0x1FuLL, 1);
            v130 = glpLLVMSplatConstantVector(v26, v350, v213);
            v132 = "msb";
            v133 = v26;
            v134 = 55;
            v131 = v349;
            goto LABEL_398;
          case 164:
            LODOperation = glpBuildGetLODOperation(v26, a2, v10, v364);
            goto LABEL_399;
          case 167:
          case 168:
          case 169:
            v119 = v363;
            v120 = glpASTNodeGetChild(a2, 0);
            v121 = glpLValueNodeGetVariableExtra(v120);
            if ((*(v121 + 51) & 1) == 0)
            {
              v402[0] = *v10;
              goto LABEL_400;
            }

            v135 = v121;
            v136 = glpLLVMGetVariablePointer(v26, v121);
            v137 = *(v135 + 48) & 0x2000000000;
            if (v119 == 169)
            {
              v138 = v137 | 0x800000;
              v280 = v27[1];
              *&v370 = glpLLVMConstRealCache(v26, *(v26 + 72), 0.5);
              *(&v370 + 1) = v370;
              v281 = glpLLVMConstVectorCache(v26, &v370, 2);
              v139 = glpLLVMBinaryOperation(v26, 54, v280, v281, "");
            }

            else if (v119 == 168)
            {
              v138 = v137 | 0x40000000000;
              v139 = v27[1];
            }

            else
            {
              v139 = 0;
              v138 = v137 | 0x4000000000;
            }

            v282 = glpBuildInterpolateAt(v26, v136, v135, v138, "", v139);
            v402[0] = v282;
            v283 = *(*(v135 + 144) + 24);
            v284 = glpDerefNodeGetOffset(v120);
            if (!v284)
            {
              goto LABEL_400;
            }

            v285 = v284;
            v286 = glpOffsetNodeGetSwizzle(v284);
            v287 = glpCGSwizzle(v26, 0, 0, v282, v283, v286);
            v402[0] = v287;
            VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v285);
            if (!VectorElementExpr)
            {
              goto LABEL_400;
            }

            v289 = glpLLVMCGNode(v26, VectorElementExpr, 1);
            v290 = glpLLVMCastOperation(v26, 87, v289, *(v26 + 40), "mtc");
            LODOperation = glpLLVMBuildExtractElement(v26, v287, v290, "offv");
            goto LABEL_399;
          case 170:
            v123 = *(v26 + 88);
            *&v370 = 0x300000001;
            v124 = "air.cs_barrier";
            v126 = &v370;
            v127 = v26;
            v125 = 0;
            v128 = 0;
            goto LABEL_299;
          case 171:
            v129 = "air.gamma_compress";
            goto LABEL_325;
          case 172:
            v129 = "air.gamma_expand";
            goto LABEL_325;
          case 173:
            v129 = "air.gamma_compress_xr";
            goto LABEL_325;
          case 174:
            v129 = "air.gamma_expand_xr";
            goto LABEL_325;
          default:
            goto LABEL_400;
        }
      }

      if ((*(a1 + 320) & 0xFFFFFFFE) == 2 || (*(a1 + 832) & 2) != 0)
      {
        v5 = 0;
        goto LABEL_10;
      }
    }

    result = 0;
  }

LABEL_401:
  v356 = *MEMORY[0x277D85DE8];
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
  if (ScalarType == 1 || ScalarType == 62)
  {
    v11 = 72;
  }

  else
  {
    v11 = 71;
  }

  return glpLLVMUnaryOperation(a1, v11, v5, "neg");
}

uint64_t glpLLVMCGLogicalNot(uint64_t a1, uint64_t a2)
{
  glpLLVMAddLineInformation(a1, a2);
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  v5 = glpLLVMCGNode(a1, Expr, 1);

  return glpLLVMUnaryOperation(a1, 73, v5, "lnot");
}

uint64_t glpLLVMCGAssign(uint64_t a1, uint64_t a2)
{
  v80[2] = *MEMORY[0x277D85DE8];
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

    v79 = 0;
    LODWORD(v77) = PrimitiveType;
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
        v19 = *(a1 + 520);
        if (!v19)
        {
          v19 = glpLLVMConstIntCache(a1, *(a1 + 40), 0, 0);
          *(a1 + 520) = v19;
        }

        v80[0] = v19;
        v80[1] = v18;
        v10 = glpLLVMBuildGEP2(a1, v10, v80, 2, "offsetByBankIndex");
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
          v20 = v13;
          v23 = &v79;
          v24 = a1;
          v25 = VariableExtra;
          v26 = v10;
        }

        else
        {
          v20 = v13;
          v24 = a1;
          v25 = VariableExtra;
          v26 = v10;
          v23 = 0;
        }

        v10 = glpBuildArrayElementPtr(v24, v25, v26, v22, v23, v18);
      }

      else
      {
        v20 = v13;
      }
    }

    else
    {
      v20 = v13;
      PreSwizzlePrimitiveType = 0;
    }

    v27 = glpASTNodeGetSaType(Lhs);
    v28 = glpPrimitiveTypeGetPrimitiveType(v27);
    v29 = glpASTNodeGetSaFlags(Lhs);
    v30 = glpPrecisionIndexFromSAFlags(v29);
    if (Offset)
    {
      v78 = PreSwizzlePrimitiveType;
      VectorElementExpr = glpOffsetNodeGetVectorElementExpr(Offset);
      if (glpOffsetNodeGetSwizzle(Offset) || (inserted = v7, VectorElementExpr))
      {
        v28 = v78;
        v30 = v20;
        v33 = glpLLVMLoadVector(a1, VariableExtra, v10, v78, v20, *(*(VariableExtra + 144) + 24), *(*(VariableExtra + 144) + 28));
        v34 = v33;
        if (VectorElementExpr)
        {
          v77 = v33;
          v35 = *(a1 + 40);
          v36 = glpLLVMCGNode(a1, VectorElementExpr, 1);
          v37 = glpASTNodeGetSaFlags(VectorElementExpr);
          v38 = glpPrecisionIndexFromSAFlags(v37);
          if (v38)
          {
            v39 = v78;
            if (v38 == 3)
            {
              v76 = v36;
            }

            else
            {
              v76 = glpLLVMCastOperation(a1, 87, v36, v35, "mtc");
            }
          }

          else
          {
            v76 = v36;
            v39 = v78;
          }

          Swizzle = glpOffsetNodeGetSwizzle(Offset);
          if (Swizzle)
          {
            v42 = Swizzle;
            v72 = v30;
            v73 = v71;
            v74 = v10;
            v43 = Swizzle & 7;
            MEMORY[0x28223BE20](Swizzle);
            v75 = &v71[-v44];
            bzero(&v71[-v44], v45);
            v46 = v43;
            if (v43)
            {
              v47 = a1 + 520;
              v48 = 3;
              v49 = v43;
              v50 = v75;
              do
              {
                v51 = (v42 >> v48) & 3;
                v52 = *(v47 + 8 * v51);
                if (!v52)
                {
                  v52 = glpLLVMConstIntCache(a1, *(a1 + 40), (v42 >> v48) & 3, 0);
                  *(v47 + 8 * v51) = v52;
                }

                *v50++ = v52;
                v48 += 2;
                --v49;
              }

              while (v49);
            }

            v53 = glpLLVMConstVectorCache(a1, v75, v46);
            Element = glpLLVMBuildExtractElement(a1, v53, v76, "offv");
            v10 = v74;
            v30 = v72;
            v39 = v78;
          }

          else
          {
            Element = v76;
          }

          inserted = glpLLVMBuildInsertElement(a1, v77, v7, Element, "res");
          v28 = v39;
        }

        else
        {
          v40 = glpOffsetNodeGetSwizzle(Offset);
          inserted = glpCGSwizzle(a1, v34, v78, v7, v77, v40);
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
        v68 = glpLLVMPointerType(a1, *(a1 + 40), 0);
        v10 = glpLLVMCastOperation(a1, 86, v10, v68, "ptr");
      }

      else if (!Category)
      {
        abort();
      }
    }

    else if (v56 && !glpLLVMTypesEqual(a1, v56, v57, v28, v30))
    {
      v59 = glpLLVMTypeOf(a1, v10);
      v60 = glpLLVMGetElementType(a1, v59);
      v61 = *(a1 + 260);
      v62 = v61 + 1;
      v63 = *(a1 + 256);
      if (v61 + 1 <= v63)
      {
        v66 = *(a1 + 264);
        v67 = *(a1 + 260);
      }

      else
      {
        if (v63 <= 1)
        {
          v63 = 1;
        }

        v64 = 2 * v63;
        if (v64 <= v62)
        {
          v65 = v62;
        }

        else
        {
          v65 = v64;
        }

        v66 = (*(a1 + 232))(*(a1 + 224), v65, "Vector Storage (uint8_t, growth)");
        memcpy(v66, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v65;
        *(a1 + 264) = v66;
        v67 = *(a1 + 260);
      }

      memmove(&v66[v61 + 1], &v66[v61], (v67 - v61));
      *(*(a1 + 264) + v61) = 106;
      ++*(a1 + 260);
      ++*(a1 + 296);
      glpSerializeLLVMValue(a1, inserted);
      glpSerializeLLVMType(a1, v60);
      inserted = *(a1 + 308);
      *(a1 + 308) = inserted + 1;
    }

    glpLLVMBuildStore(a1, inserted, v10);
  }

  v69 = *MEMORY[0x277D85DE8];
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

uint64_t glpLLVMCGParameterDeclaration(uint64_t a1, uint64_t a2)
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
  v382 = *MEMORY[0x277D85DE8];
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
    LODWORD(v340) = v6;
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
          v6 = v340;
          if (v18 == -1)
          {
            *(a1 + 804) = 1;
            v18 = v15++;
          }

          *(a1 + 800) = v18;
        }

        else
        {
          v6 = v340;
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

  v28 = v15;
  v340 = *(Extra + 152);
  v29 = v6;
  if ((v26 & 4) != 0)
  {
    v30 = *(a1 + 724);
  }

  else
  {
    v30 = 0;
  }

  v31 = *(a1 + 832);
  v32 = v30;
  v34 = (v31 & 2) == 0 || v30 < 1;
  v35 = (v31 & 1) == 0;
  v36 = (v31 & 1) == 0 || v34;
  LODWORD(v342) = v36;
  v37 = !v35 && !v34;
  LODWORD(v341) = v37;
  v347 = v27;
  if ((v26 & 8) != 0)
  {
    v38 = *(a1 + 596);
  }

  else
  {
    v38 = 0;
  }

  LODWORD(v344) = v25 + v28;
  LODWORD(v346) = v26 & 1;
  v40 = *(Extra + 40);
  v39 = *(Extra + 48);
  v41 = glpStringHashGet(*(a1 + 736), v40, v39);
  v42 = v25;
  v43 = v41;
  v44 = v38;
  v345 = v38;
  v45 = v32;
  v343 = v32;
  v46 = v29;
  if (v41)
  {
    if (!v29)
    {
      goto LABEL_518;
    }

LABEL_174:
    v337 = &v334;
    v143 = v347;
    v144 = v44;
    LODWORD(v336) = v346 + v344 + v347 + v45 + v341 + 2 * v44;
    v145 = 8 * (v336 + 1);
    MEMORY[0x28223BE20](v41);
    v147 = (&v334 - v146);
    bzero(&v334 - v146, v145);
    v344 = v147;
    bzero(v147, v145);
    v148 = *(a1 + 676);
    v149 = *(a1 + 832);
    if (v149)
    {
      v150 = "air.vertex_id";
    }

    else
    {
      v150 = 0;
    }

    if (v149)
    {
      v151 = "air.instance_id";
    }

    else
    {
      v151 = 0;
    }

    v152 = "air.location_index";
    if ((v149 & 1) == 0)
    {
      v152 = "air.location";
    }

    v341 = v152;
    v346 = v43;
    if (v148 >= 1)
    {
      v339 = v151;
      v340 = v150;
      v153 = 0;
      v154 = 0;
      v155 = 0;
      v156 = a1 + 520;
      v157 = 8 * v148;
      while (1)
      {
        v158 = *(*(a1 + 680) + v153);
        v159 = glpLayoutObjectFind(*(v158 + 8), 34);
        v160 = *(a1 + 320);
        if ((v160 - 1) < 3)
        {
          v161 = glpLayoutObjectFind(*(v158 + 8), 34);
          if (v154 > 7)
          {
            v162 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 1);
          }

          else
          {
            v162 = *(v156 + 8 * v154);
            if (!v162)
            {
              v162 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 0);
              *(v156 + 8 * v154) = v162;
            }
          }

          v167 = 0;
          *(&v353[3] + 1) = 0;
          *(&v353[2] + 8) = 0u;
          *(&v353[1] + 8) = 0u;
          *(v353 + 8) = 0u;
          *&v353[0] = v162;
          switch(*(v161 + 4))
          {
            case 1:
              v168 = a1;
              v169 = "air.position";
              goto LABEL_243;
            case 2:
              v191 = glpLayoutObjectFind(*(v158 + 8), 41);
              *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.geometry_input");
              v188 = *(v191 + 4) == 0;
              v189 = "user(back_color)";
              v190 = "user(front_color)";
              goto LABEL_236;
            case 3:
              v187 = glpLayoutObjectFind(*(v158 + 8), 42);
              *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.geometry_input");
              v188 = *(v187 + 4) == 0;
              v189 = "user(sec_back_color";
              v190 = "user(sec_front_color)";
LABEL_236:
              if (v188)
              {
                v192 = v190;
              }

              else
              {
                v192 = v189;
              }

              goto LABEL_315;
            case 0xD:
              v168 = a1;
              v169 = "air.clip_vertex";
              goto LABEL_243;
            case 0xE:
              v181 = glpLayoutObjectFind(*(v158 + 8), 43);
              *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.clip_distance");
              v182 = *(v181 + 4);
              if (v182 > 7)
              {
                v183 = glpLLVMConstIntCache(a1, *(a1 + 40), v182, 1);
              }

              else
              {
                v183 = *(v156 + 8 * v182);
                if (!v183)
                {
                  v183 = glpLLVMConstIntCache(a1, *(a1 + 40), v182, 0);
                  *(v156 + 8 * v182) = v183;
                }
              }

              goto LABEL_316;
            case 0xF:
              v168 = a1;
              v169 = "air.point_size";
              goto LABEL_243;
            case 0x10:
              v168 = a1;
              v169 = "air.primitive_id";
              goto LABEL_243;
            case 0x13:
              v168 = a1;
              v169 = "air.edge_tessellation_factor";
              goto LABEL_243;
            case 0x14:
              v168 = a1;
              v169 = "air.inside_tessellation_factor";
              goto LABEL_243;
            case 0x15:
              v168 = a1;
              v169 = "air.position_in_patch";
              goto LABEL_243;
            case 0x19:
              v168 = a1;
              v169 = "air.invocation_id";
              goto LABEL_243;
            case 0x1A:
              v168 = a1;
              v169 = "air.patch_vertices_in";
LABEL_243:
              *(&v353[0] + 1) = glpLLVMStringMetadata(v168, v169);
              v193 = v353;
              v194 = a1;
              v195 = 2;
              goto LABEL_317;
            case 0x1C:
              v184 = glpLayoutObjectFind(*(v158 + 8), 35);
              *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.geometry_input");
              if ((*(a1 + 832) & 1) == 0)
              {
                *&v353[1] = glpLLVMStringMetadata(a1, "air.location");
                v185 = *(v184 + 4);
                if (v185 > 7)
                {
                  v186 = glpLLVMConstIntCache(a1, *(a1 + 40), v185, 1);
                }

                else
                {
                  v186 = *(v156 + 8 * v185);
                  if (!v186)
                  {
                    v186 = glpLLVMConstIntCache(a1, *(a1 + 40), v185, 0);
                    *(v156 + 8 * v185) = v186;
                  }
                }

                *(&v353[1] + 1) = v186;
                v193 = v353;
                goto LABEL_301;
              }

              memset(v348, 0, 32);
              v211 = *(v184 + 4);
              v212 = glpLayoutObjectFind(*(v158 + 8), 38);
              if (v212 && *(v212 + 4) || (v211 & 0xFFFFFFF8) != 8)
              {
                if ((*(v158 + 53) & 2) != 0)
                {
                  snprintf(v348, 0x1FuLL, "user(patch%u)");
                }

                else
                {
                  snprintf(v348, 0x1FuLL, "user(slot%u)");
                }
              }

              else
              {
                snprintf(v348, 0x1FuLL, "user(tex_coord%u)");
              }

              v192 = v348;
LABEL_315:
              v183 = glpLLVMStringMetadata(a1, v192);
LABEL_316:
              *&v353[1] = v183;
              v193 = v353;
              v194 = a1;
              v195 = 3;
              break;
            default:
              goto LABEL_318;
          }

          goto LABEL_317;
        }

        v163 = v159;
        if (v160 == 4)
        {
          if (*(v159 + 4) != 24)
          {
            v170 = glpLayoutObjectFind(*(v158 + 8), 34);
            v171 = glpPrecisionIndexFromSAFlags(*(v158 + 48));
            v380 = 0u;
            v381 = 0u;
            v378 = 0u;
            v379 = 0u;
            v376 = 0u;
            v377 = 0u;
            v374 = 0u;
            v375 = 0u;
            v372 = 0u;
            v373 = 0u;
            v370 = 0u;
            v371 = 0u;
            v368 = 0u;
            v369 = 0u;
            v366 = 0u;
            v367 = 0u;
            v364 = 0u;
            v365 = 0u;
            v362 = 0u;
            v363 = 0u;
            v360 = 0u;
            v361 = 0u;
            v358 = 0u;
            v359 = 0u;
            v356 = 0u;
            v357 = 0u;
            v354 = 0u;
            v355 = 0u;
            memset(v353, 0, sizeof(v353));
            glpMetalGetArgTypeNameFromASTType(v353, *v158, v171, 0);
            *&v350 = 0;
            v349 = 0u;
            memset(&v348[1], 0, 32);
            if (v154 > 7)
            {
              v172 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 1);
            }

            else
            {
              v172 = *(v156 + 8 * v154);
              if (!v172)
              {
                v172 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 0);
                *(v156 + 8 * v154) = v172;
              }
            }

            v167 = 0;
            v348[0] = v172;
            v176 = *(v170 + 4);
            if (v176 > 13)
            {
              if (v176 > 22)
              {
                if (v176 == 23)
                {
                  v177 = a1;
                  v178 = "air.sample_id";
                  goto LABEL_300;
                }

                if (v176 != 27)
                {
                  if (v176 == 28)
                  {
                    v338 = v155;
                    v196 = glpLayoutObjectFind(*(v158 + 8), 35);
                    v197 = *(v158 + 48);
                    v198 = "air.perspective";
                    if ((v197 & 0x2000000000) != 0)
                    {
                      v198 = "air.no_perspective";
                    }

                    if ((v197 & 0x1000000000) != 0)
                    {
                      v198 = "air.flat";
                    }

                    v335 = v198;
                    v199 = "air.center";
                    if ((v197 & 0x1000000000) == 0)
                    {
                      v199 = "air.interpolation_function";
                      if ((v197 & 0x1000000) == 0)
                      {
                        v200 = "air.sample";
                        if ((v197 & 0x40000000000) == 0)
                        {
                          v200 = "air.center";
                        }

                        if ((v197 & 0x4000000000) != 0)
                        {
                          v199 = "air.centroid";
                        }

                        else
                        {
                          v199 = v200;
                        }
                      }
                    }

                    v348[1] = glpLLVMStringMetadata(a1, "air.fragment_input");
                    if (*(a1 + 832))
                    {
                      v351 = 0u;
                      v352 = 0u;
                      v222 = *(v196 + 4);
                      v223 = glpLayoutObjectFind(*(v158 + 8), 38);
                      if (v223)
                      {
                        v224 = *(v223 + 4) == 0;
                      }

                      else
                      {
                        v224 = 1;
                      }

                      if (v224 && (v222 & 0xFFFFFFF8) == 8)
                      {
                        snprintf(&v351, 0x1FuLL, "user(tex_coord%u)");
                      }

                      else
                      {
                        snprintf(&v351, 0x1FuLL, "user(slot%u)");
                      }

                      v348[2] = glpLLVMStringMetadata(a1, &v351);
                      v348[3] = glpLLVMStringMetadata(a1, v335);
                      v348[4] = glpLLVMStringMetadata(a1, v199);
                      *&v349 = glpLLVMStringMetadata(a1, "air.arg_type_name");
                      *(&v349 + 1) = glpLLVMStringMetadata(a1, v353);
                      v225 = a1;
                      v226 = 7;
                    }

                    else
                    {
                      v348[2] = glpLLVMStringMetadata(a1, "air.location");
                      v201 = *(v196 + 4);
                      if (v201 > 7)
                      {
                        v202 = glpLLVMConstIntCache(a1, *(a1 + 40), v201, 1);
                        v203 = v335;
                      }

                      else
                      {
                        v202 = *(v156 + 8 * v201);
                        v203 = v335;
                        if (!v202)
                        {
                          v202 = glpLLVMConstIntCache(a1, *(a1 + 40), v201, 0);
                          *(v156 + 8 * v201) = v202;
                        }
                      }

                      v348[3] = v202;
                      v348[4] = glpLLVMStringMetadata(a1, v203);
                      *&v349 = glpLLVMStringMetadata(a1, v199);
                      *(&v349 + 1) = glpLLVMStringMetadata(a1, "air.arg_type_name");
                      *&v350 = glpLLVMStringMetadata(a1, v353);
                      v225 = a1;
                      v226 = 8;
                    }

                    v167 = glpLLVMMDNodeInContext(v225, v348, v226);
                    v155 = v338;
                  }

                  goto LABEL_318;
                }

                v214 = glpLayoutObjectFind(*(v158 + 8), 45);
                v215 = a1;
                v216 = "air.render_target";
              }

              else
              {
                if (v176 != 14)
                {
                  if (v176 == 16)
                  {
                    v177 = a1;
                    v178 = "air.primitive_id";
                    goto LABEL_300;
                  }

                  if (v176 == 22)
                  {
                    v177 = a1;
                    v178 = "air.sample_mask_in";
LABEL_300:
                    v348[1] = glpLLVMStringMetadata(v177, v178);
                    v348[2] = glpLLVMStringMetadata(a1, "air.arg_type_name");
                    v348[3] = glpLLVMStringMetadata(a1, v353);
                    v193 = v348;
LABEL_301:
                    v194 = a1;
                    v195 = 4;
LABEL_317:
                    v167 = glpLLVMMDNodeInContext(v194, v193, v195);
                  }

LABEL_318:
                  v344[v154++] = v167;
                  goto LABEL_319;
                }

                v214 = glpLayoutObjectFind(*(v158 + 8), 43);
                v215 = a1;
                v216 = "air.clip_distance";
              }

              v348[1] = glpLLVMStringMetadata(v215, v216);
              v217 = *(v214 + 4);
              if (v217 > 7)
              {
                v218 = glpLLVMConstIntCache(a1, *(a1 + 40), v217, 1);
              }

              else
              {
                v218 = *(v156 + 8 * v217);
                if (!v218)
                {
                  v218 = glpLLVMConstIntCache(a1, *(a1 + 40), v217, 0);
                  *(v156 + 8 * v217) = v218;
                }
              }

              v348[2] = v218;
              v348[3] = glpLLVMStringMetadata(a1, "air.arg_type_name");
              v348[4] = glpLLVMStringMetadata(a1, v353);
              v193 = v348;
              v194 = a1;
              v195 = 5;
              goto LABEL_317;
            }

            if (v176 <= 2)
            {
              if (v176 == 1)
              {
                v348[1] = glpLLVMStringMetadata(a1, "air.position");
                v348[2] = glpLLVMStringMetadata(a1, "air.center");
                v348[3] = glpLLVMStringMetadata(a1, "air.perspective");
                v348[4] = glpLLVMStringMetadata(a1, "air.arg_type_name");
                *&v349 = glpLLVMStringMetadata(a1, v353);
                v193 = v348;
                v194 = a1;
                v195 = 6;
                goto LABEL_317;
              }

              if (v176 == 2)
              {
                v177 = a1;
                v178 = "air.color";
                goto LABEL_300;
              }
            }

            else
            {
              switch(v176)
              {
                case 3:
                  v177 = a1;
                  v178 = "air.secondary_color";
                  goto LABEL_300;
                case 11:
                  v177 = a1;
                  v178 = "air.front_facing";
                  goto LABEL_300;
                case 12:
                  v177 = a1;
                  v178 = "air.point_coord";
                  goto LABEL_300;
              }
            }

            goto LABEL_318;
          }
        }

        else if (!v160)
        {
          v164 = *(a1 + 832);
          if (*(v159 + 4) == 28)
          {
            if ((v164 & 1) == 0)
            {
              v165 = glpLayoutObjectFind(*(v158 + 8), 35);
              *(&v353[1] + 1) = 0;
              if (v154 > 7)
              {
                v166 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 1);
              }

              else
              {
                v166 = *(v156 + 8 * v154);
                if (!v166)
                {
                  v166 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 0);
                  *(v156 + 8 * v154) = v166;
                }
              }

              *&v353[0] = v166;
              *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.vertex_input");
              *&v353[1] = glpLLVMStringMetadata(a1, v341);
              v204 = *(v165 + 4);
              if (v204 > 7)
              {
                v205 = glpLLVMConstIntCache(a1, *(a1 + 40), v204, 1);
              }

              else
              {
                v205 = *(v156 + 8 * v204);
                if (!v205)
                {
                  v205 = glpLLVMConstIntCache(a1, *(a1 + 40), v204, 0);
                  *(v156 + 8 * v204) = v205;
                }
              }

              *(&v353[1] + 1) = v205;
              v207 = v353;
              goto LABEL_307;
            }

            v179 = glpPrecisionIndexFromSAFlags(*(v158 + 48));
            v380 = 0u;
            v381 = 0u;
            v378 = 0u;
            v379 = 0u;
            v376 = 0u;
            v377 = 0u;
            v374 = 0u;
            v375 = 0u;
            v372 = 0u;
            v373 = 0u;
            v370 = 0u;
            v371 = 0u;
            v368 = 0u;
            v369 = 0u;
            v366 = 0u;
            v367 = 0u;
            v364 = 0u;
            v365 = 0u;
            v362 = 0u;
            v363 = 0u;
            v360 = 0u;
            v361 = 0u;
            v358 = 0u;
            v359 = 0u;
            v356 = 0u;
            v357 = 0u;
            v354 = 0u;
            v355 = 0u;
            memset(v353, 0, sizeof(v353));
            glpMetalGetArgTypeNameFromASTType(v353, *v158, v179, 0);
            v351 = 0u;
            v352 = 0u;
            snprintf(&v351, 0x1FuLL, "attrib%d", v155);
            v350 = 0u;
            v349 = 0u;
            *&v348[3] = 0u;
            if (v154 > 7)
            {
              v180 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 1);
            }

            else
            {
              v180 = *(v156 + 8 * v154);
              if (!v180)
              {
                v180 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 0);
                *(v156 + 8 * v154) = v180;
              }
            }

            v348[0] = v180;
            v348[1] = glpLLVMStringMetadata(a1, "air.vertex_input");
            v348[2] = glpLLVMStringMetadata(a1, v341);
            if (v155 > 7)
            {
              v206 = glpLLVMConstIntCache(a1, *(a1 + 40), v155, 1);
            }

            else
            {
              v206 = *(v156 + 8 * v155);
              if (!v206)
              {
                v206 = glpLLVMConstIntCache(a1, *(a1 + 40), v155, 0);
                *(v156 + 8 * v155) = v206;
              }
            }

            v348[3] = v206;
            v208 = *(a1 + 528);
            if (!v208)
            {
              v208 = glpLLVMConstIntCache(a1, *(a1 + 40), 1uLL, 0);
              *(a1 + 528) = v208;
            }

            v348[4] = v208;
            *&v349 = glpLLVMStringMetadata(a1, "air.arg_type_name");
            *(&v349 + 1) = glpLLVMStringMetadata(a1, v353);
            *&v350 = glpLLVMStringMetadata(a1, "air.arg_name");
            *(&v350 + 1) = glpLLVMStringMetadata(a1, &v351);
            v209 = glpLLVMMDNodeInContext(a1, v348, 9);
            v344[v154] = v209;
            v210 = v154 + 1;
            v155 = (v155 + 1);
LABEL_308:
            v154 = v210;
            goto LABEL_319;
          }

          if (v164)
          {
            v173 = glpPrecisionIndexFromSAFlags(*(v158 + 48));
            v380 = 0u;
            v381 = 0u;
            v378 = 0u;
            v379 = 0u;
            v376 = 0u;
            v377 = 0u;
            v374 = 0u;
            v375 = 0u;
            v372 = 0u;
            v373 = 0u;
            v370 = 0u;
            v371 = 0u;
            v368 = 0u;
            v369 = 0u;
            v366 = 0u;
            v367 = 0u;
            v364 = 0u;
            v365 = 0u;
            v362 = 0u;
            v363 = 0u;
            v360 = 0u;
            v361 = 0u;
            v358 = 0u;
            v359 = 0u;
            v356 = 0u;
            v357 = 0u;
            v354 = 0u;
            v355 = 0u;
            memset(v353, 0, sizeof(v353));
            glpMetalGetArgTypeNameFromASTType(v353, *v158, v173, 1);
            v174 = *(v163 + 4);
            if (v174 == 18)
            {
              if (v154 > 7)
              {
                v213 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 1);
              }

              else
              {
                v213 = *(v156 + 8 * v154);
                if (!v213)
                {
                  v213 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 0);
                  *(v156 + 8 * v154) = v213;
                }
              }

              v348[0] = v213;
              v219 = a1;
              v220 = v339;
LABEL_306:
              v348[1] = glpLLVMStringMetadata(v219, v220);
              v348[2] = glpLLVMStringMetadata(a1, "air.arg_type_name");
              v348[3] = glpLLVMStringMetadata(a1, v353);
              v207 = v348;
LABEL_307:
              v221 = glpLLVMMDNodeInContext(a1, v207, 4);
              v344[v154] = v221;
              v210 = v154 + 1;
              goto LABEL_308;
            }

            if (v174 == 17)
            {
              if (v154 > 7)
              {
                v175 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 1);
              }

              else
              {
                v175 = *(v156 + 8 * v154);
                if (!v175)
                {
                  v175 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 0);
                  *(v156 + 8 * v154) = v175;
                }
              }

              v348[0] = v175;
              v219 = a1;
              v220 = v340;
              goto LABEL_306;
            }
          }
        }

LABEL_319:
        v153 += 8;
        if (v157 == v153)
        {
          if (*(a1 + 804))
          {
            if (v154 > 7)
            {
              v227 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 1);
              v144 = v345;
              v43 = v346;
              v45 = v343;
              v143 = v347;
            }

            else
            {
              v144 = v345;
              v43 = v346;
              v45 = v343;
              v143 = v347;
LABEL_337:
              v227 = *(a1 + 520 + 8 * v154);
              if (!v227)
              {
                v227 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 0);
                *(a1 + 520 + 8 * v154) = v227;
              }
            }

            *&v353[0] = v227;
            *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.sample_id");
            v228 = glpLLVMMDNodeInContext(a1, v353, 2);
            v344[v154++] = v228;
          }

          else
          {
            v144 = v345;
            v43 = v346;
            v45 = v343;
            v143 = v347;
          }

          if (*(a1 + 812))
          {
            if (v154 > 7)
            {
              v229 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 1);
              goto LABEL_349;
            }

LABEL_347:
            v229 = *(a1 + 520 + 8 * v154);
            if (!v229)
            {
              v229 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 0);
              *(a1 + 520 + 8 * v154) = v229;
            }

LABEL_349:
            *&v353[0] = v229;
            *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.vertex_id");
            *&v353[1] = glpLLVMStringMetadata(a1, "air.arg_type_name");
            *(&v353[1] + 1) = glpLLVMStringMetadata(a1, "uint");
            v230 = glpLLVMMDNodeInContext(a1, v353, 4);
            v344[v154++] = v230;
          }

          if (*(a1 + 820))
          {
            if (v154 > 7)
            {
              v231 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 1);
            }

            else
            {
LABEL_352:
              v231 = *(a1 + 520 + 8 * v154);
              if (!v231)
              {
                v231 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 0);
                *(a1 + 520 + 8 * v154) = v231;
              }
            }

            *&v353[0] = v231;
            *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.instance_id");
            *&v353[1] = glpLLVMStringMetadata(a1, "air.arg_type_name");
            *(&v353[1] + 1) = glpLLVMStringMetadata(a1, "uint");
            v232 = glpLLVMMDNodeInContext(a1, v353, 4);
            v344[v154++] = v232;
          }

          goto LABEL_356;
        }
      }
    }

    if (*(a1 + 804))
    {
      v154 = 0;
      goto LABEL_337;
    }

    if (*(a1 + 812))
    {
      v154 = 0;
      goto LABEL_347;
    }

    if (*(a1 + 820))
    {
      v154 = 0;
      goto LABEL_352;
    }

    v154 = 0;
LABEL_356:
    if ((*(a1 + 320) | 2) == 3)
    {
      v233 = *(a1 + 692);
      if (v233 >= 1)
      {
        v234 = 0;
        v235 = 8 * v233;
        v236 = &v344[v154];
        do
        {
          v236[v234 / 8] = glpLLVMVertexGeometryMetadata(a1, *(*(a1 + 696) + v234), v154);
          v234 += 8;
          ++v154;
        }

        while (v235 != v234);
      }
    }

    v237 = *(a1 + 832);
    DefaultUniformLocationCount = glpLinkedProgramGetDefaultUniformLocationCount(*(a1 + 136));
    v239 = 4 * glpLinkedProgramGetSubroutineUniformLocationCount(*(a1 + 136), *(a1 + 320)) + 16 * DefaultUniformLocationCount;
    if (v237)
    {
      *(&v353[3] + 1) = 0;
      *(&v353[2] + 8) = 0u;
      *(&v353[1] + 8) = 0u;
      if (v154 > 7)
      {
        v241 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 1);
      }

      else
      {
        v241 = *(a1 + 520 + 8 * v154);
        if (!v241)
        {
          v241 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 0);
          *(a1 + 520 + 8 * v154) = v241;
        }
      }

      *&v353[0] = v241;
      *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.buffer");
      *&v353[1] = glpLLVMStringMetadata(a1, "air.buffer_size");
      if (v239 > 7)
      {
        v243 = glpLLVMConstIntCache(a1, *(a1 + 40), v239, 1);
      }

      else
      {
        v243 = *(a1 + 520 + 8 * v239);
        if (!v243)
        {
          v243 = glpLLVMConstIntCache(a1, *(a1 + 40), v239, 0);
          *(a1 + 520 + 8 * v239) = v243;
        }
      }

      *(&v353[1] + 1) = v243;
      *&v353[2] = glpLLVMStringMetadata(a1, "air.location_index");
      *(&v353[2] + 1) = glpLLVMConstIntCache(a1, *(a1 + 40), 0xCuLL, 1);
      v246 = *(a1 + 528);
      if (!v246)
      {
        v246 = glpLLVMConstIntCache(a1, *(a1 + 40), 1uLL, 0);
        *(a1 + 528) = v246;
      }

      *&v353[3] = v246;
      *(&v353[3] + 1) = glpLLVMStringMetadata(a1, "air.read");
      v244 = a1;
      v245 = 8;
    }

    else
    {
      *(&v353[1] + 1) = 0;
      if (v154 > 7)
      {
        v240 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 1);
      }

      else
      {
        v240 = *(a1 + 520 + 8 * v154);
        if (!v240)
        {
          v240 = glpLLVMConstIntCache(a1, *(a1 + 40), v154, 0);
          *(a1 + 520 + 8 * v154) = v240;
        }
      }

      *&v353[0] = v240;
      *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.default_uniform");
      *&v353[1] = glpLLVMStringMetadata(a1, "air.buffer_size");
      if (v239 > 7)
      {
        v242 = glpLLVMConstIntCache(a1, *(a1 + 40), v239, 1);
      }

      else
      {
        v242 = *(a1 + 520 + 8 * v239);
        if (!v242)
        {
          v242 = glpLLVMConstIntCache(a1, *(a1 + 40), v239, 0);
          *(a1 + 520 + 8 * v239) = v242;
        }
      }

      *(&v353[1] + 1) = v242;
      v244 = a1;
      v245 = 4;
    }

    v247 = glpLLVMMDNodeInContext(v244, v353, v245);
    v344[v154] = v247;
    if (*(a1 + 832))
    {
      *(a1 + 824) = v143;
      if (!v143)
      {
        v249 = v154 + 1;
LABEL_419:
        if (v45 >= 1)
        {
          v268 = 0;
          v269 = v45;
          v270 = &v344[v249];
          v271 = a1 + 520;
          v347 = a1 + 520 + 8 * v249;
          v341 = v249;
          v272 = v249;
          do
          {
            v273 = v272 + v268;
            v274 = *(*(a1 + 728) + 8 * v268);
            if (*(a1 + 832))
            {
              *(&v353[1] + 1) = 0;
              v353[2] = 0uLL;
              if (v273 > 7)
              {
                v276 = glpLLVMConstIntCache(a1, *(a1 + 40), v273, 1);
              }

              else
              {
                v276 = *(v347 + 8 * v268);
                if (!v276)
                {
                  v276 = glpLLVMConstIntCache(a1, *(a1 + 40), v273, 0);
                  *(v347 + 8 * v268) = v276;
                }
              }

              *&v353[0] = v276;
              *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.buffer");
              *&v353[1] = glpLLVMStringMetadata(a1, "air.location_index");
              v279 = *v274;
              v280 = v279 + 32;
              if ((v279 + 32) > 7)
              {
                v281 = glpLLVMConstIntCache(a1, *(a1 + 40), v280, 1);
              }

              else
              {
                v281 = *(v271 + 8 * v280);
                if (!v281)
                {
                  v282 = v280;
                  v281 = glpLLVMConstIntCache(a1, *(a1 + 40), v280, 0);
                  *(v271 + 8 * v282) = v281;
                }
              }

              *(&v353[1] + 1) = v281;
              v285 = *(a1 + 528);
              if (!v285)
              {
                v285 = glpLLVMConstIntCache(a1, *(a1 + 40), 1uLL, 0);
                *(a1 + 528) = v285;
              }

              *&v353[2] = v285;
              *(&v353[2] + 1) = glpLLVMStringMetadata(a1, "air.write");
              v286 = a1;
              v287 = 6;
            }

            else
            {
              *(&v353[3] + 1) = 0;
              *(&v353[2] + 8) = 0u;
              *(&v353[1] + 8) = 0u;
              if (v273 > 7)
              {
                v275 = glpLLVMConstIntCache(a1, *(a1 + 40), v273, 1);
              }

              else
              {
                v275 = *(v347 + 8 * v268);
                if (!v275)
                {
                  v275 = glpLLVMConstIntCache(a1, *(a1 + 40), v273, 0);
                  *(v347 + 8 * v268) = v275;
                }
              }

              *&v353[0] = v275;
              *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.vertex_transform_feedback");
              *&v353[1] = glpLLVMStringMetadata(a1, "air.binding");
              v277 = *v274;
              if (v277 > 7)
              {
                v278 = glpLLVMConstIntCache(a1, *(a1 + 40), v277, 1);
              }

              else
              {
                v278 = *(v271 + 8 * v277);
                if (!v278)
                {
                  v278 = glpLLVMConstIntCache(a1, *(a1 + 40), *v274, 0);
                  *(v271 + 8 * v277) = v278;
                }
              }

              *(&v353[1] + 1) = v278;
              *&v353[2] = glpLLVMStringMetadata(a1, "air.stride");
              v283 = v274[2];
              if (v283 > 7)
              {
                v284 = glpLLVMConstIntCache(a1, *(a1 + 40), v283, 1);
              }

              else
              {
                v284 = *(v271 + 8 * v283);
                if (!v284)
                {
                  v284 = glpLLVMConstIntCache(a1, *(a1 + 40), v274[2], 0);
                  *(v271 + 8 * v283) = v284;
                }
              }

              *(&v353[2] + 1) = v284;
              *&v353[3] = glpLLVMStringMetadata(a1, "air.stream");
              v288 = v274[1];
              if (v288 > 7)
              {
                v289 = glpLLVMConstIntCache(a1, *(a1 + 40), v288, 1);
              }

              else
              {
                v289 = *(v271 + 8 * v288);
                if (!v289)
                {
                  v289 = glpLLVMConstIntCache(a1, *(a1 + 40), v274[1], 0);
                  *(v271 + 8 * v288) = v289;
                }
              }

              *(&v353[3] + 1) = v289;
              v286 = a1;
              v287 = 8;
            }

            v270[v268++] = glpLLVMMDNodeInContext(v286, v353, v287);
          }

          while (v269 != v268);
          LODWORD(v249) = v341 + v268;
          v144 = v345;
          v43 = v346;
        }

        if ((v342 & 1) == 0)
        {
          v353[2] = 0uLL;
          if (v249 > 7)
          {
            v290 = v249;
            v291 = glpLLVMConstIntCache(a1, *(a1 + 40), v249, 1);
          }

          else
          {
            v290 = v249;
            v291 = *(a1 + 520 + 8 * v249);
            if (!v291)
            {
              v291 = glpLLVMConstIntCache(a1, *(a1 + 40), v249, 0);
              *(a1 + 520 + 8 * v290) = v291;
            }
          }

          *&v353[0] = v291;
          *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.buffer");
          *&v353[1] = glpLLVMStringMetadata(a1, "air.location_index");
          *(&v353[1] + 1) = glpLLVMConstIntCache(a1, *(a1 + 40), 0x1FuLL, 1);
          v292 = *(a1 + 528);
          if (!v292)
          {
            v292 = glpLLVMConstIntCache(a1, *(a1 + 40), 1uLL, 0);
            *(a1 + 528) = v292;
          }

          *&v353[2] = v292;
          *(&v353[2] + 1) = glpLLVMStringMetadata(a1, "air.read");
          v293 = glpLLVMMDNodeInContext(a1, v353, 6);
          v344[v290] = v293;
          LODWORD(v249) = v290 + 1;
        }

        if ((*(a1 + 832) & 1) == 0)
        {
LABEL_464:
          if (v144 >= 1)
          {
            v296 = 0;
            v297 = 0;
            v298 = v249;
            v299 = v144;
            v300 = v249 + v144;
            v301 = &v344[v300];
            v302 = a1 + 520;
            v342 = &v344[v249];
            v343 = v299;
            v339 = a1 + 520 + 8 * v249;
            v340 = (a1 + 520 + 8 * v300);
            v338 = v249;
            do
            {
              v303 = &v298[v297];
              v304 = &v296[*(a1 + 600)];
              v347 = *(v304 + 10);
              v345 = v347;
              if (*(a1 + 832))
              {
                v341 = v296;
                v306 = v302;
                v307 = v301;
                v308 = v300;
                v380 = 0u;
                v381 = 0u;
                v378 = 0u;
                v379 = 0u;
                v376 = 0u;
                v377 = 0u;
                v374 = 0u;
                v375 = 0u;
                v372 = 0u;
                v373 = 0u;
                v370 = 0u;
                v371 = 0u;
                v368 = 0u;
                v369 = 0u;
                v366 = 0u;
                v367 = 0u;
                v364 = 0u;
                v365 = 0u;
                v362 = 0u;
                v363 = 0u;
                v360 = 0u;
                v361 = 0u;
                v358 = 0u;
                v359 = 0u;
                v356 = 0u;
                v357 = 0u;
                v354 = 0u;
                v355 = 0u;
                memset(v353, 0, sizeof(v353));
                v309 = *(v304 + 9);
                PPTextarget = glpPrimitiveSamplerGetPPTextarget(v309);
                if (PPTextarget >= 0x12)
                {
                  goto LABEL_522;
                }

                v311 = off_278B49070[PPTextarget];
                PPDatatype = glpPrimitiveSamplerGetPPDatatype(v309);
                if (PPDatatype)
                {
                  if (PPDatatype == 3)
                  {
                    v313 = "uint";
                  }

                  else
                  {
                    if (PPDatatype != 2)
                    {
                      goto LABEL_522;
                    }

                    v313 = "int";
                  }
                }

                else
                {
                  v313 = "float";
                }

                v319 = glpPrimitiveSamplerGetPPTextarget(v309);
                if (v319 >= 0x12)
                {
                  printf("Unsupported PP_TEX_TARGET: %d\n", v319);
                  abort();
                }

                snprintf_l(v353, 0x200uLL, 0, "%s<%s, %s>", v311, v313, off_278B49100[v319]);
                *(*(a1 + 512) + 4 * v297) = v347;
                *&v350 = 0;
                v349 = 0u;
                *&v348[3] = 0u;
                v300 = v308;
                if (v303 > 7)
                {
                  v320 = glpLLVMConstIntCache(a1, *(a1 + 40), v303, 1);
                  v43 = v346;
                  v298 = v338;
                  v301 = v307;
                }

                else
                {
                  v298 = v338;
                  v320 = *(v339 + 8 * v297);
                  v43 = v346;
                  v301 = v307;
                  if (!v320)
                  {
                    v320 = glpLLVMConstIntCache(a1, *(a1 + 40), v303, 0);
                    *(v339 + 8 * v297) = v320;
                  }
                }

                v348[0] = v320;
                v348[1] = glpLLVMStringMetadata(a1, "air.texture");
                v348[2] = glpLLVMStringMetadata(a1, "air.location_index");
                v302 = v306;
                if (v297 > 7)
                {
                  v321 = glpLLVMConstIntCache(a1, *(a1 + 40), v297, 1);
                  v296 = v341;
                  v314 = v347;
                }

                else
                {
                  v321 = *(v306 + 8 * v297);
                  v296 = v341;
                  v314 = v347;
                  if (!v321)
                  {
                    v321 = glpLLVMConstIntCache(a1, *(a1 + 40), v297, 0);
                    *(v302 + 8 * v297) = v321;
                  }
                }

                v348[3] = v321;
                v322 = *(a1 + 528);
                if (!v322)
                {
                  v322 = glpLLVMConstIntCache(a1, *(a1 + 40), 1uLL, 0);
                  *(a1 + 528) = v322;
                }

                v348[4] = v322;
                *&v349 = glpLLVMStringMetadata(a1, "air.sample");
                *(&v349 + 1) = glpLLVMStringMetadata(a1, "air.arg_type_name");
                *&v350 = glpLLVMStringMetadata(a1, v353);
                v316 = v348;
                v317 = a1;
                v318 = 8;
              }

              else
              {
                *(&v353[1] + 1) = 0;
                if (v303 > 7)
                {
                  v305 = glpLLVMConstIntCache(a1, *(a1 + 40), &v298[v297], 1);
                }

                else
                {
                  v305 = *(v339 + 8 * v297);
                  if (!v305)
                  {
                    v305 = glpLLVMConstIntCache(a1, *(a1 + 40), &v298[v297], 0);
                    *(v339 + 8 * v297) = v305;
                  }
                }

                *&v353[0] = v305;
                *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.texture");
                *&v353[1] = glpLLVMStringMetadata(a1, "air.binding");
                v314 = v347;
                if (v347 > 7)
                {
                  v315 = glpLLVMConstIntCache(a1, *(a1 + 40), v345, 1);
                }

                else
                {
                  v315 = *(v302 + 8 * v347);
                  if (!v315)
                  {
                    v315 = glpLLVMConstIntCache(a1, *(a1 + 40), v347, 0);
                    *(v302 + 8 * v314) = v315;
                  }
                }

                *(&v353[1] + 1) = v315;
                v316 = v353;
                v317 = a1;
                v318 = 4;
              }

              v323 = glpLLVMMDNodeInContext(v317, v316, v318);
              v342[v297] = v323;
              v324 = v300 + v297;
              if (*(a1 + 832))
              {
                *(&v353[1] + 1) = 0;
                *&v353[2] = 0;
                if (v324 > 7)
                {
                  v326 = glpLLVMConstIntCache(a1, *(a1 + 40), v324, 1);
                }

                else
                {
                  v326 = v340[v297];
                  if (!v326)
                  {
                    v326 = glpLLVMConstIntCache(a1, *(a1 + 40), v324, 0);
                    v340[v297] = v326;
                  }
                }

                *&v353[0] = v326;
                *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.sampler");
                *&v353[1] = glpLLVMStringMetadata(a1, "air.location_index");
                if (v297 > 7)
                {
                  v328 = glpLLVMConstIntCache(a1, *(a1 + 40), v297, 1);
                }

                else
                {
                  v328 = *(v302 + 8 * v297);
                  if (!v328)
                  {
                    v328 = glpLLVMConstIntCache(a1, *(a1 + 40), v297, 0);
                    *(v302 + 8 * v297) = v328;
                  }
                }

                *(&v353[1] + 1) = v328;
                v331 = *(a1 + 528);
                if (!v331)
                {
                  v331 = glpLLVMConstIntCache(a1, *(a1 + 40), 1uLL, 0);
                  *(a1 + 528) = v331;
                }

                *&v353[2] = v331;
                v329 = a1;
                v330 = 5;
              }

              else
              {
                *(&v353[1] + 1) = 0;
                if (v324 > 7)
                {
                  v325 = glpLLVMConstIntCache(a1, *(a1 + 40), v324, 1);
                }

                else
                {
                  v325 = v340[v297];
                  if (!v325)
                  {
                    v325 = glpLLVMConstIntCache(a1, *(a1 + 40), v324, 0);
                    v340[v297] = v325;
                  }
                }

                *&v353[0] = v325;
                *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.sampler");
                *&v353[1] = glpLLVMStringMetadata(a1, "air.binding");
                if (v314 > 7)
                {
                  v327 = glpLLVMConstIntCache(a1, *(a1 + 40), v345, 1);
                }

                else
                {
                  v327 = *(v302 + 8 * v314);
                  if (!v327)
                  {
                    v327 = glpLLVMConstIntCache(a1, *(a1 + 40), v314, 0);
                    *(v302 + 8 * v314) = v327;
                  }
                }

                *(&v353[1] + 1) = v327;
                v329 = a1;
                v330 = 4;
              }

              v301[v297++] = glpLLVMMDNodeInContext(v329, v353, v330);
              v296 += 48;
            }

            while (v343 != v297);
          }

          goto LABEL_517;
        }

        *(a1 + 828) = v144;
        if (!v144)
        {
LABEL_517:
          *(a1 + 192) = glpLLVMMDNodeInContext(a1, v344, v336);
          goto LABEL_518;
        }

        v294 = v249;
        v295 = malloc_type_malloc(4 * v144, 0xCA0EF1E7uLL);
        if (v295)
        {
          *(a1 + 512) = v295;
          bzero(v295, 4 * v144);
          LODWORD(v249) = v294;
          goto LABEL_464;
        }

LABEL_522:
        abort();
      }

      v248 = malloc_type_malloc(4 * v143, 0xCA0EF1E7uLL);
      if (!v248)
      {
        goto LABEL_522;
      }

      *(a1 + 504) = v248;
      bzero(v248, 4 * v143);
    }

    v249 = v154 + 1;
    if (v143 >= 1)
    {
      v250 = 0;
      v251 = &v344[v249];
      v252 = a1 + 520;
      v347 = a1 + 520 + 8 * v249;
      v341 = v249;
      v253 = v249;
      do
      {
        v254 = v253 + v250;
        v255 = *(*(a1 + 712) + 8 * v250);
        if (*(a1 + 832))
        {
          *(*(a1 + 504) + 4 * v250) = *v255;
          *(&v353[3] + 1) = 0;
          *(&v353[2] + 8) = 0u;
          *(&v353[1] + 8) = 0u;
          if (v254 > 7)
          {
            v257 = glpLLVMConstIntCache(a1, *(a1 + 40), v254, 1);
          }

          else
          {
            v257 = *(v347 + 8 * v250);
            if (!v257)
            {
              v257 = glpLLVMConstIntCache(a1, *(a1 + 40), v254, 0);
              *(v347 + 8 * v250) = v257;
            }
          }

          *&v353[0] = v257;
          *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.buffer");
          *&v353[1] = glpLLVMStringMetadata(a1, "air.buffer_size");
          v260 = v255[1];
          if (v260 > 7)
          {
            v261 = glpLLVMConstIntCache(a1, *(a1 + 40), v260, 1);
            v43 = v346;
          }

          else
          {
            v261 = *(v252 + 8 * v260);
            v43 = v346;
            if (!v261)
            {
              v261 = glpLLVMConstIntCache(a1, *(a1 + 40), v260, 0);
              *(v252 + 8 * v260) = v261;
            }
          }

          *(&v353[1] + 1) = v261;
          *&v353[2] = glpLLVMStringMetadata(a1, "air.location_index");
          if (v250 > 7)
          {
            v264 = glpLLVMConstIntCache(a1, *(a1 + 40), v250, 1);
          }

          else
          {
            v264 = *(v252 + 8 * v250);
            if (!v264)
            {
              v264 = glpLLVMConstIntCache(a1, *(a1 + 40), v250, 0);
              *(v252 + 8 * v250) = v264;
            }
          }

          *(&v353[2] + 1) = v264;
          v267 = *(a1 + 528);
          if (!v267)
          {
            v267 = glpLLVMConstIntCache(a1, *(a1 + 40), 1uLL, 0);
            *(a1 + 528) = v267;
          }

          *&v353[3] = v267;
          *(&v353[3] + 1) = glpLLVMStringMetadata(a1, "air.read");
          v265 = a1;
          v266 = 8;
        }

        else
        {
          *(&v353[1] + 1) = 0;
          v353[2] = 0uLL;
          if (v254 > 7)
          {
            v256 = glpLLVMConstIntCache(a1, *(a1 + 40), v254, 1);
          }

          else
          {
            v256 = *(v347 + 8 * v250);
            if (!v256)
            {
              v256 = glpLLVMConstIntCache(a1, *(a1 + 40), v254, 0);
              *(v347 + 8 * v250) = v256;
            }
          }

          *&v353[0] = v256;
          *(&v353[0] + 1) = glpLLVMStringMetadata(a1, "air.uniform");
          *&v353[1] = glpLLVMStringMetadata(a1, "air.binding");
          v258 = *v255;
          if (v258 > 7)
          {
            v259 = glpLLVMConstIntCache(a1, *(a1 + 40), v258, 1);
          }

          else
          {
            v259 = *(v252 + 8 * v258);
            if (!v259)
            {
              v259 = glpLLVMConstIntCache(a1, *(a1 + 40), *v255, 0);
              *(v252 + 8 * v258) = v259;
            }
          }

          *(&v353[1] + 1) = v259;
          *&v353[2] = glpLLVMStringMetadata(a1, "air.buffer_size");
          v262 = v255[1];
          if (v262 > 7)
          {
            v263 = glpLLVMConstIntCache(a1, *(a1 + 40), v262, 1);
            v43 = v346;
          }

          else
          {
            v263 = *(v252 + 8 * v262);
            v43 = v346;
            if (!v263)
            {
              v263 = glpLLVMConstIntCache(a1, *(a1 + 40), v262, 0);
              *(v252 + 8 * v262) = v263;
            }
          }

          *(&v353[2] + 1) = v263;
          v265 = a1;
          v266 = 6;
        }

        v251[v250++] = glpLLVMMDNodeInContext(v265, v353, v266);
      }

      while (v143 != v250);
      v249 = (v341 + v250);
      v144 = v345;
      v45 = v343;
    }

    goto LABEL_419;
  }

  LODWORD(v339) = v42;
  v336 = Extra;
  v47 = strndup(v40, v39);
  v48 = v39;
  if (v29)
  {
    v49 = 0;
    v50 = v339;
    v51 = v28;
    v52 = v340;
  }

  else
  {
    v52 = v340;
    v49 = *v340;
    v50 = v339;
    v51 = v28;
  }

  v53 = *(v52 + 2);
  LODWORD(v340) = v46;
  v54 = glpLLVMBuildFunctionType(a1, v49, v46, v51, v50, v53);
  v55 = *(a1 + 260);
  v56 = v55 + 1;
  v57 = *(a1 + 256);
  if (v55 + 1 <= v57)
  {
    v60 = *(a1 + 264);
    v61 = *(a1 + 260);
  }

  else
  {
    if (v57 <= 1)
    {
      v57 = 1;
    }

    v58 = 2 * v57;
    if (v58 <= v56)
    {
      v59 = v56;
    }

    else
    {
      v59 = v58;
    }

    v60 = (*(a1 + 232))(*(a1 + 224), v59, "Vector Storage (uint8_t, growth)");
    memcpy(v60, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v59;
    *(a1 + 264) = v60;
    v61 = *(a1 + 260);
  }

  memmove(&v60[v55 + 1], &v60[v55], (v61 - v55));
  *(*(a1 + 264) + v55) = 13;
  v62 = *(a1 + 260) + 1;
  *(a1 + 260) = v62;
  ++*(a1 + 296);
  v63 = strlen(v47) + 1;
  v64 = v63 + v62;
  v65 = *(a1 + 256);
  v337 = v48;
  v338 = v40;
  if (v63 + v62 <= v65)
  {
    v69 = *(a1 + 264);
    v70 = v62;
  }

  else
  {
    if (v65 <= 1)
    {
      v65 = 1;
    }

    v66 = 2 * v65;
    v67 = v47;
    if (v66 <= v64)
    {
      v68 = v64;
    }

    else
    {
      v68 = v66;
    }

    v69 = (*(a1 + 232))(*(a1 + 224), v68, "Vector Storage (uint8_t, growth)");
    memcpy(v69, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v68;
    v47 = v67;
    *(a1 + 264) = v69;
    v70 = *(a1 + 260);
  }

  memmove(&v69[v62 + 1], &v69[v62], v70 - v62);
  memcpy((*(a1 + 264) + v62), v47, v63);
  *(a1 + 260) += v63;
  glpSerializeLLVMType(a1, v54);
  v43 = *(a1 + 308);
  *(a1 + 308) = v43 + 1;
  v71 = *(a1 + 260);
  v72 = v71 + 1;
  v73 = *(a1 + 256);
  v74 = v336;
  v75 = v47;
  if (v71 + 1 <= v73)
  {
    v78 = *(a1 + 264);
    v79 = *(a1 + 260);
  }

  else
  {
    if (v73 <= 1)
    {
      v73 = 1;
    }

    v76 = 2 * v73;
    if (v76 <= v72)
    {
      v77 = v72;
    }

    else
    {
      v77 = v76;
    }

    v78 = (*(a1 + 232))(*(a1 + 224), v77, "Vector Storage (uint8_t, growth)");
    memcpy(v78, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v77;
    *(a1 + 264) = v78;
    v79 = *(a1 + 260);
  }

  memmove(&v78[v71 + 1], &v78[v71], (v79 - v71));
  *(*(a1 + 264) + v71) = 12;
  ++*(a1 + 260);
  ++*(a1 + 296);
  glpSerializeLLVMValue(a1, v43);
  v80 = glp_serialized_integer32_control(1);
  v81 = *(a1 + 260);
  v82 = v81 + 1;
  v83 = *(a1 + 256);
  if (v81 + 1 <= v83)
  {
    v86 = *(a1 + 264);
    v87 = *(a1 + 260);
  }

  else
  {
    if (v83 <= 1)
    {
      v83 = 1;
    }

    v84 = 2 * v83;
    if (v84 <= v82)
    {
      v85 = v82;
    }

    else
    {
      v85 = v84;
    }

    v86 = (*(a1 + 232))(*(a1 + 224), v85, "Vector Storage (uint8_t, growth)");
    memcpy(v86, *(a1 + 264), *(a1 + 260));
    (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
    *(a1 + 256) = v85;
    *(a1 + 264) = v86;
    v87 = *(a1 + 260);
  }

  memmove(&v86[v81 + 1], &v86[v81], (v87 - v81));
  *(*(a1 + 264) + v81) = v80;
  v89 = *(a1 + 260);
  v90 = v89 + 1;
  *(a1 + 260) = v89 + 1;
  if ((v80 & 0x80000000) != 0)
  {
    v91 = (v80 >> 1) & 7;
    if (v91 > 1)
    {
      if (v91 == 2)
      {
        v110 = v89 + 4;
        v111 = *(a1 + 256);
        if (v110 <= v111)
        {
          v114 = *(a1 + 264);
          v115 = v90;
        }

        else
        {
          if (v111 <= 1)
          {
            v111 = 1;
          }

          v112 = 2 * v111;
          if (v112 <= v110)
          {
            v113 = v110;
          }

          else
          {
            v113 = v112;
          }

          v114 = (*(a1 + 232))(*(a1 + 224), v113, "Vector Storage (uint8_t, growth)");
          memcpy(v114, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v113;
          *(a1 + 264) = v114;
          v115 = *(a1 + 260);
        }

        memmove(&v114[v90 + 1], &v114[v90], v115 - v90);
        v117 = *(a1 + 264) + v90;
        *(v117 + 2) = 0;
        *v117 = 1;
        v116 = 3;
      }

      else
      {
        if (v91 != 3)
        {
          goto LABEL_145;
        }

        v98 = v89 + 5;
        v99 = *(a1 + 256);
        if (v98 <= v99)
        {
          v102 = *(a1 + 264);
          v103 = v90;
        }

        else
        {
          if (v99 <= 1)
          {
            v99 = 1;
          }

          v100 = 2 * v99;
          if (v100 <= v98)
          {
            v101 = v98;
          }

          else
          {
            v101 = v100;
          }

          v102 = (*(a1 + 232))(*(a1 + 224), v101, "Vector Storage (uint8_t, growth)");
          memcpy(v102, *(a1 + 264), *(a1 + 260));
          (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
          *(a1 + 256) = v101;
          *(a1 + 264) = v102;
          v103 = *(a1 + 260);
        }

        memmove(&v102[v90 + 1], &v102[v90], v103 - v90);
        *(*(a1 + 264) + v90) = 1;
        v116 = 4;
      }
    }

    else if (v91)
    {
      v92 = v89 + 3;
      v93 = *(a1 + 256);
      if (v92 <= v93)
      {
        v96 = *(a1 + 264);
        v97 = v90;
      }

      else
      {
        if (v93 <= 1)
        {
          v93 = 1;
        }

        v94 = 2 * v93;
        if (v94 <= v92)
        {
          v95 = v92;
        }

        else
        {
          v95 = v94;
        }

        v96 = (*(a1 + 232))(*(a1 + 224), v95, "Vector Storage (uint8_t, growth)");
        memcpy(v96, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v95;
        *(a1 + 264) = v96;
        v97 = *(a1 + 260);
      }

      memmove(&v96[v90 + 1], &v96[v90], v97 - v90);
      *(*(a1 + 264) + v90) = 1;
      v116 = 2;
    }

    else
    {
      v104 = v89 + 2;
      v105 = *(a1 + 256);
      if (v104 <= v105)
      {
        v108 = *(a1 + 264);
        v109 = v90;
      }

      else
      {
        if (v105 <= 1)
        {
          v105 = 1;
        }

        v106 = 2 * v105;
        if (v106 <= v104)
        {
          v107 = v104;
        }

        else
        {
          v107 = v106;
        }

        v108 = (*(a1 + 232))(*(a1 + 224), v107, "Vector Storage (uint8_t, growth)");
        memcpy(v108, *(a1 + 264), *(a1 + 260));
        (*(a1 + 248))(*(a1 + 224), *(a1 + 264));
        *(a1 + 256) = v107;
        *(a1 + 264) = v108;
        v109 = *(a1 + 260);
      }

      memmove(&v108[v90 + 1], &v108[v90], v109 - v90);
      v116 = 1;
      *(*(a1 + 264) + v90) = 1;
    }

    *(a1 + 260) += v116;
  }

LABEL_145:
  if ((*(v74 + 10) & 0x10) != 0)
  {
    v118 = (*(*(a1 + 152) + 8))(**(a1 + 152), 24, "subroutine");
    v118[1] = 0;
    v118[2] = 0;
    *v118 = 0;
    *v118 = v74;
    *(v118 + 4) = *(v74 + 160);
    v118[1] = v43;
    v119 = *(a1 + 628);
    v120 = *(a1 + 624);
    if (v119 + 1 <= v120)
    {
      v124 = *(a1 + 632);
      v125 = *(a1 + 628);
    }

    else
    {
      if (v120 <= 1)
      {
        v120 = 1;
      }

      v121 = 2 * v120;
      if (v121 <= v119 + 1)
      {
        v122 = v119 + 1;
      }

      else
      {
        v122 = v121;
      }

      v123 = *(a1 + 152);
      v124 = (v123[1])(*v123, 8 * v122, "Vector Storage (GLPLLVMSubroutineFunction *, growth)");
      memcpy(v124, *(a1 + 632), 8 * *(a1 + 628));
      (v123[3])(*v123, *(a1 + 632));
      *(a1 + 624) = v122;
      *(a1 + 632) = v124;
      v125 = *(a1 + 628);
    }

    memmove(&v124[8 * v119 + 8], &v124[8 * v119], 8 * (v125 - v119));
    *(*(a1 + 632) + 8 * v119) = v118;
    ++*(a1 + 628);
  }

  if (v346)
  {
    v127 = (v344 + 1);
    v126 = glpLLVMGetParam(a1, v43, v344);
  }

  else
  {
    v126 = 0;
    v127 = v344;
  }

  *(a1 + 440) = v126;
  if (v347 < 1)
  {
    v131 = v127;
  }

  else
  {
    v128 = 0;
    v129 = 8 * v347;
    do
    {
      v130 = *(*(a1 + 712) + v128);
      v131 = (v127 + 1);
      *(v130 + 8) = glpLLVMGetParam(a1, v43, v127);
      v128 += 8;
      v127 = v131;
    }

    while (v129 != v128);
  }

  if (v343 < 1)
  {
    v135 = v131;
  }

  else
  {
    v132 = 0;
    v133 = 8 * v343;
    do
    {
      v134 = *(*(a1 + 728) + v132);
      v135 = (v131 + 1);
      *(v134 + 16) = glpLLVMGetParam(a1, v43, v131);
      v132 += 8;
      v131 = v135;
    }

    while (v133 != v132);
  }

  if ((v342 & 1) == 0)
  {
    *(a1 + 448) = glpLLVMGetParam(a1, v43, v135);
  }

  if (v345 >= 1)
  {
    v136 = 0;
    v137 = v345;
    v138 = v51 + v339;
    v139 = v51 + v339 + v345 + v347 + v343 + v341 + v346;
    v140 = v138 + v343 + v347 + v341 + v346;
    v141 = 8;
    do
    {
      v142 = (*(a1 + 600) + v141);
      *(v142 - 1) = glpLLVMGetParam(a1, v43, (v140 + v136));
      *v142 = glpLLVMGetParam(a1, v43, (v139 + v136++));
      v141 += 48;
    }

    while (v137 != v136);
  }

  glpStringHashPut(*(a1 + 736), v338, v337, v43, v88);
  free(v75);
  v44 = v345;
  v45 = v343;
  if (v340)
  {
    goto LABEL_174;
  }

LABEL_518:
  v332 = *MEMORY[0x277D85DE8];
  return v43;
}