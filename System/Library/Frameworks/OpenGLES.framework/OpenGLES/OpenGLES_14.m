uint64_t getPrecisionFlagsFromArgs(uint64_t a1)
{
  SaType = glpASTNodeGetSaType(a1);
  if (!glpTypeGetKind(SaType))
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    if (glpPrimitiveTypeGetCategory(PrimitiveType))
    {
      v17 = glpPrimitiveTypeGetPrimitiveType(SaType);
      if (glpPrimitiveTypeGetCategory(v17) != 4)
      {
        v18 = glpPrimitiveTypeGetPrimitiveType(SaType);
        if (glpPrimitiveTypeGetScalarType(v18) == 9)
        {
          return 0;
        }
      }
    }
  }

  v3 = glpCallNodeGetArgCount(a1);
  HasSrctex = glpPPStreamOpNodeGetHasSrctex(a1);
  if (!v3)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v5 = HasSrctex;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = glpCallNodeGetArg(a1, v6);
    v9 = glpASTNodeGetSaFlags(v8) & 0x1F;
    if (v9 != 2)
    {
      break;
    }

LABEL_13:
    if (v3 == ++v6)
    {
      goto LABEL_20;
    }
  }

  if (!v5 || (v10 = glpCallNodeGetArg(a1, v6), v11 = glpASTNodeGetSaType(v10), glpTypeGetKind(v11)) || (v12 = glpCallNodeGetArg(a1, v6), v13 = glpASTNodeGetSaType(v12), v14 = glpPrimitiveTypeGetPrimitiveType(v13), glpPrimitiveTypeGetCategory(v14) != 4))
  {
    if (v9 <= v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = v9;
    }

    if (v9 != 31)
    {
      v7 = v15;
    }

    goto LABEL_13;
  }

  v7 = v9;
LABEL_20:
  Opcode = glpPPStreamOpNodeGetOpcode(a1);
  result = 16;
  if ((Opcode - 92) >= 2 && Opcode != 131)
  {
    if (Opcode == 100)
    {
      return 8;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t glpSAInlinePPStreamOpFixup(uint64_t a1, uint64_t a2)
{
  if (glpCompilerDoesTrackPrecision(a1))
  {
    v3 = glpASTNodeGetSaFlags(a2) & 0xFFFFFFFFFFFFFFE0;
    PrecisionFlagsFromArgs = getPrecisionFlagsFromArgs(a2);
    glpASTNodeSetSaFlags(a2, v3 | PrecisionFlagsFromArgs);
  }

  return a2;
}

uint64_t pushdownPrecisionInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v6 = a2;
  while (1)
  {
    Kind = glpASTNodeGetKind(v6);
    if (Kind > 64)
    {
      if (Kind > 77)
      {
        if (Kind <= 81)
        {
          if (Kind == 78)
          {
            return 1;
          }

          if (Kind == 81)
          {
            SaType = glpASTNodeGetSaType(v6);
            if (glpCompilerDoesTypeRequirePrecision(a1, SaType) && (glpASTNodeGetSaFlags(v6) & 0x1F) == 0)
            {
              glpLValueNodeGetVariableExtra(v6);
              goto LABEL_60;
            }

            return 1;
          }

          goto LABEL_62;
        }

        if (Kind != 82)
        {
          if (Kind == 84)
          {
            if (a4 || (v25 = glpASTNodeGetSaType(v6), glpCompilerDoesTypeRequirePrecision(a1, v25)))
            {
              switch(glpPPStreamOpNodeGetOpcode(v6))
              {
                case 2u:
                case 3u:
                case 4u:
                case 5u:
                case 6u:
                case 7u:
                case 0xCu:
                case 0x10u:
                case 0x12u:
                case 0x13u:
                case 0x15u:
                case 0x16u:
                case 0x17u:
                case 0x19u:
                case 0x1Au:
                case 0x1Bu:
                case 0x1Cu:
                case 0x1Du:
                case 0x1Eu:
                case 0x1Fu:
                case 0x20u:
                case 0x21u:
                case 0x22u:
                case 0x27u:
                case 0x2Cu:
                case 0x2Du:
                case 0x2Eu:
                case 0x2Fu:
                case 0x31u:
                case 0x32u:
                case 0x33u:
                case 0x34u:
                case 0x35u:
                case 0x36u:
                case 0x38u:
                case 0x3Au:
                case 0x3Bu:
                case 0x3Cu:
                case 0x3Du:
                case 0x3Fu:
                case 0x40u:
                case 0x50u:
                case 0x51u:
                case 0x69u:
                case 0x70u:
                case 0x71u:
                case 0x7Bu:
                case 0x7Cu:
                case 0x7Du:
                case 0x7Eu:
                case 0x7Fu:
                case 0x80u:
                case 0x81u:
                case 0x84u:
                case 0x85u:
                case 0x86u:
                case 0x89u:
                case 0x8Au:
                case 0x8Bu:
                case 0x90u:
                case 0x91u:
                case 0x92u:
                case 0x93u:
                case 0x94u:
                case 0x95u:
                  if (glpCallNodeGetArgCount(v6))
                  {
                    v26 = 0;
                    do
                    {
                      v27 = glpCallNodeGetArg(v6, v26);
                      pushdownPrecisionInternal(a1, v27, a3, a4);
                      ++v26;
                    }

                    while (v26 < glpCallNodeGetArgCount(v6));
                  }

                  goto LABEL_58;
                default:
                  if (!a4)
                  {
                    goto LABEL_62;
                  }

                  goto LABEL_58;
              }
            }

            return 1;
          }

          goto LABEL_62;
        }

        Base = glpRValueNodeGetBase(v6);
      }

      else
      {
        switch(Kind)
        {
          case 'A':
            Base = glpExpressionStatementNodeGetExpr(v6);
            break;
          case 'C':
            IfStatement = glpIfStatementNodeGetIfStatement(v6);
            pushdownPrecisionInternal(a1, IfStatement, a3, a4);
            Base = glpIfStatementNodeGetElseStatement(v6);
            break;
          case 'B':
            if (glpBlockNodeGetStatementCount(v6))
            {
              v23 = 0;
              do
              {
                Statement = glpBlockNodeGetStatement(v6, v23);
                pushdownPrecisionInternal(a1, Statement, a3, a4);
                ++v23;
              }

              while (v23 < glpBlockNodeGetStatementCount(v6));
            }

            return 1;
          default:
            goto LABEL_62;
        }
      }

      goto LABEL_27;
    }

    if (Kind > 38)
    {
      break;
    }

    if (Kind)
    {
      if (Kind != 16)
      {
        if (Kind == 3)
        {
          v22 = glpASTNodeGetSaType(v6);
          if (glpCompilerDoesTypeRequirePrecision(a1, v22) && (glpASTNodeGetSaFlags(v6) & 0x1F) == 0)
          {
            glpSAValidateConstPrecisionConversion(a1, v6, a3);
            goto LABEL_60;
          }

          return 1;
        }

        goto LABEL_62;
      }

      v11 = glpASTNodeGetSaType(v6);
      if (glpCompilerDoesTypeRequirePrecision(a1, v11) && (glpASTNodeGetSaFlags(v6) & 0x1F) == 0)
      {
        SaFlags = glpASTNodeGetSaFlags(v6);
        glpASTNodeSetSaFlags(v6, SaFlags & 0xFFFFFFFFFFFFFFE0 | a3);
      }
    }

    else
    {
      v16 = glpASTNodeGetSaType(v6);
      if (glpCompilerDoesTypeRequirePrecision(a1, v16) && (glpASTNodeGetSaFlags(v6) & 0x1F) == 0)
      {
        v17 = glpASTNodeGetSaFlags(v6);
        glpASTNodeSetSaFlags(v6, v17 & 0xFFFFFFFFFFFFFFE0 | a3);
        glpTypeConversionNodeSetToPrecision(v6, a3);
      }
    }

    Base = glpUnaryOperatorNodeGetExpr(v6);
LABEL_27:
    v6 = Base;
    if (!Base)
    {
      return 1;
    }
  }

  if (Kind == 46)
  {
    v13 = glpASTNodeGetSaType(v6);
    if (glpCompilerDoesTypeRequirePrecision(a1, v13) && (glpASTNodeGetSaFlags(v6) & 0x1F) == 0)
    {
      Extra = glpVariableDeclarationNodeGetExtra(v6);
      *(Extra + 48) = *(Extra + 48) & 0xFFFFFFFFFFFFFFE0 | a3;
      v15 = glpASTNodeGetSaFlags(v6);
      glpASTNodeSetSaFlags(v6, v15 & 0xFFFFFFFFFFFFFFE0 | a3);
    }

    Base = glpVariableDeclarationNodeGetInitializer(v6);
    goto LABEL_27;
  }

  if (Kind == 39)
  {
    Lhs = glpBinaryOperatorNodeGetLhs(v6);
    pushdownPrecisionInternal(a1, Lhs, a3, a4);
    Rhs = glpBinaryOperatorNodeGetRhs(v6);
    pushdownPrecisionInternal(a1, Rhs, a3, a4);
    goto LABEL_58;
  }

  if (Kind != 43)
  {
LABEL_62:
    abort();
  }

  if (glpCommaExprNodeGetExprCount(v6))
  {
    v19 = 0;
    do
    {
      Expr = glpCommaExprNodeGetExpr(v6, v19);
      pushdownPrecisionInternal(a1, Expr, a3, 1);
      ++v19;
    }

    while (v19 < glpCommaExprNodeGetExprCount(v6));
  }

LABEL_58:
  v30 = glpASTNodeGetSaType(v6);
  if (glpCompilerDoesTypeRequirePrecision(a1, v30) && (glpASTNodeGetSaFlags(v6) & 0x1F) == 0)
  {
LABEL_60:
    v31 = glpASTNodeGetSaFlags(v6);
    glpASTNodeSetSaFlags(v6, v31 & 0xFFFFFFFFFFFFFFE0 | a3);
  }

  return 1;
}

unint64_t glp_serialized_integer64_control(unint64_t result)
{
  if (result >= 0x80)
  {
    v1 = result & 0xFF00000000000000;
    v2 = (result & 0xFF00000000000000) != 0 && HIBYTE(result) != 255;
    if ((v1 ^ (v2 << 63 >> 63)) == 0xFF00000000000000)
    {
      v3 = -113;
    }

    else
    {
      v3 = -114;
    }

    if ((v2 & 1) == 0)
    {
      v4 = 0xFF00000000000000;
      do
      {
        v3 = v3 & 0xFFFFFFF1 | (2 * (((v3 + 14) >> 1) & 7));
        if (v4 >> 8 == 255)
        {
          break;
        }

        v1 >>= 8;
        v5 = result & (v4 >> 8);
        v4 >>= 8;
      }

      while (v5 == v1);
    }

    return v3 & 0xFFFFFF8F;
  }

  return result;
}

uint64_t glp_serialized_integer32_control(uint64_t result)
{
  if (result >= 0)
  {
    v1 = -128;
  }

  else
  {
    v1 = -127;
  }

  v2 = result ^ (result >> 31);
  if (HIBYTE(v2))
  {
    v3 = 6;
  }

  else
  {
    v3 = 4;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2 * (v2 > 0xFF);
  }

  v5 = v4 | v1;
  if (result >= 0x80)
  {
    return v5;
  }

  else
  {
    return result;
  }
}

uint64_t glpInitSerialContext(void *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v3;
  a1[4] = 1024;
  a1[5] = (a1[1])(*a1, 1024, "Vector Storage (uint8_t)");
  a1[6] = glpMakeStringHash(a1);
  a1[7] = 0;
  result = glpMakePointerHash(a1);
  a1[8] = result;
  return result;
}

uint64_t glpDestroySerialContext(uint64_t *a1, int a2)
{
  glpDestroyPointerHash(a1[8]);
  result = glpDestroyStringHash(a1[6]);
  if (a2)
  {
    v5 = a1[3];
    v6 = *a1;
    v7 = a1[5];

    return v5(v6, v7);
  }

  return result;
}

uint64_t serialize_pointer(void *a1, unint64_t a2)
{
  if (a2)
  {
    v4 = glpPointerHashGet(a1[8], a2);
    if (!v4)
    {
      v28 = a1[8];
      v29 = a1[7] + 1;
      a1[7] = v29;
      glpPointerHashPut(v28, a2, v29, v5);
      v13 = a1 + 9;
      v30 = *(a1 + 9);
      v31 = v30 + 1;
      v32 = *(a1 + 8);
      if (v30 + 1 <= v32)
      {
        v35 = a1[5];
        v36 = *(a1 + 9);
      }

      else
      {
        if (v32 <= 1)
        {
          v32 = 1;
        }

        v33 = 2 * v32;
        if (v33 <= v31)
        {
          v34 = v31;
        }

        else
        {
          v34 = v33;
        }

        v35 = (a1[1])(*a1, v34, "Vector Storage (uint8_t, growth)");
        memcpy(v35, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v34;
        a1[5] = v35;
        v36 = *(a1 + 9);
      }

      memmove(&v35[v30 + 1], &v35[v30], (v36 - v30));
      v40 = 1;
      *(a1[5] + v30) = 1;
      result = 1;
      goto LABEL_53;
    }

    v6 = v4 + 1;
    if (v4 + 1 >= 0)
    {
      v7 = -128;
    }

    else
    {
      v7 = -127;
    }

    v8 = v6 ^ (v6 >> 31);
    if (HIBYTE(v8))
    {
      v9 = 6;
    }

    else
    {
      v9 = 4;
    }

    if (v8 >= 0x10000)
    {
      v10 = v9;
    }

    else
    {
      v10 = 2 * (v8 > 0xFF);
    }

    v11 = v10 | v7;
    if (v6 < 0x80)
    {
      v12 = v4 + 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = a1 + 9;
    v14 = *(a1 + 9);
    v15 = v14 + 1;
    v16 = *(a1 + 8);
    if (v14 + 1 <= v16)
    {
      v19 = a1[5];
      v20 = *(a1 + 9);
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

      v19 = (a1[1])(*a1, v18, "Vector Storage (uint8_t, growth)");
      memcpy(v19, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v18;
      a1[5] = v19;
      v20 = *(a1 + 9);
    }

    memmove(&v19[v14 + 1], &v19[v14], (v20 - v14));
    *(a1[5] + v14) = v12;
    v37 = *(a1 + 9);
    v38 = v37 + 1;
    *(a1 + 9) = v37 + 1;
    if ((v12 & 0x80) == 0)
    {
      return 0;
    }

    v41 = (v12 >> 1) & 7;
    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v48 = v37 + 4;
        v49 = *(a1 + 8);
        if (v48 <= v49)
        {
          v52 = a1[5];
          v53 = v38;
        }

        else
        {
          if (v49 <= 1)
          {
            v49 = 1;
          }

          v50 = 2 * v49;
          if (v50 <= v48)
          {
            v51 = v48;
          }

          else
          {
            v51 = v50;
          }

          v52 = (a1[1])(*a1, v51, "Vector Storage (uint8_t, growth)");
          memcpy(v52, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v51;
          a1[5] = v52;
          v53 = *(a1 + 9);
        }

        memmove(&v52[v38 + 1], &v52[v38], v53 - v38);
        result = 0;
        v66 = a1[5] + v38;
        *(v66 + 2) = BYTE2(v6);
        *v66 = v6;
        v40 = 3;
      }

      else
      {
        v60 = v37 + 5;
        v61 = *(a1 + 8);
        if (v60 <= v61)
        {
          v64 = a1[5];
          v65 = v38;
        }

        else
        {
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = 2 * v61;
          if (v62 <= v60)
          {
            v63 = v60;
          }

          else
          {
            v63 = v62;
          }

          v64 = (a1[1])(*a1, v63, "Vector Storage (uint8_t, growth)");
          memcpy(v64, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v63;
          a1[5] = v64;
          v65 = *(a1 + 9);
        }

        memmove(&v64[v38 + 1], &v64[v38], v65 - v38);
        result = 0;
        *(a1[5] + v38) = v6;
        v40 = 4;
      }

      goto LABEL_53;
    }

    if (v41)
    {
      v54 = v37 + 3;
      v55 = *(a1 + 8);
      if (v54 <= v55)
      {
        v58 = a1[5];
        v59 = v38;
      }

      else
      {
        if (v55 <= 1)
        {
          v55 = 1;
        }

        v56 = 2 * v55;
        if (v56 <= v54)
        {
          v57 = v54;
        }

        else
        {
          v57 = v56;
        }

        v58 = (a1[1])(*a1, v57, "Vector Storage (uint8_t, growth)");
        memcpy(v58, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v57;
        a1[5] = v58;
        v59 = *(a1 + 9);
      }

      memmove(&v58[v38 + 1], &v58[v38], v59 - v38);
      result = 0;
      *(a1[5] + v38) = v6;
      v40 = 2;
      goto LABEL_53;
    }

    v42 = v37 + 2;
    v43 = *(a1 + 8);
    if (v42 <= v43)
    {
      v46 = a1[5];
      v47 = v38;
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

      v46 = (a1[1])(*a1, v45, "Vector Storage (uint8_t, growth)");
      memcpy(v46, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v45;
      a1[5] = v46;
      v47 = *(a1 + 9);
    }

    memmove(&v46[v38 + 1], &v46[v38], v47 - v38);
    result = 0;
    *(a1[5] + v38) = v6;
  }

  else
  {
    v13 = a1 + 9;
    v21 = *(a1 + 9);
    v22 = v21 + 1;
    v23 = *(a1 + 8);
    if (v21 + 1 <= v23)
    {
      v26 = a1[5];
      v27 = *(a1 + 9);
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

      v26 = (a1[1])(*a1, v25, "Vector Storage (uint8_t, growth)");
      memcpy(v26, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v25;
      a1[5] = v26;
      v27 = *(a1 + 9);
    }

    memmove(&v26[v21 + 1], &v26[v21], (v27 - v21));
    result = 0;
    *(a1[5] + v21) = 0;
  }

  v40 = 1;
LABEL_53:
  *v13 += v40;
  return result;
}

uint64_t serialize_GLPString(void *a1, const char *a2, size_t a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    v6 = -128;
  }

  else
  {
    v6 = -127;
  }

  v7 = a3 ^ (a3 >> 31);
  if (HIBYTE(v7))
  {
    v8 = 6;
  }

  else
  {
    v8 = 4;
  }

  if (v7 >= 0x10000)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2 * (v7 > 0xFF);
  }

  v10 = v9 | v6;
  if (a3 >= 0x80)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 9);
  v14 = v13 + 1;
  if (v13 + 1 <= v12)
  {
    v17 = a1[5];
    v18 = *(a1 + 9);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v15 = 2 * v12;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v17 = (a1[1])(*a1, v16, "Vector Storage (uint8_t, growth)");
    memcpy(v17, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v16;
    a1[5] = v17;
    v18 = *(a1 + 9);
  }

  memmove(&v17[v13 + 1], &v17[v13], (v18 - v13));
  *(a1[5] + v13) = v11;
  v19 = *(a1 + 9);
  v20 = v19 + 1;
  *(a1 + 9) = v19 + 1;
  if ((v11 & 0x80) != 0)
  {
    v21 = (v11 >> 1) & 7;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v28 = v19 + 4;
        v29 = *(a1 + 8);
        if (v28 <= v29)
        {
          v32 = a1[5];
          v33 = v20;
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

          v32 = (a1[1])(*a1, v31, "Vector Storage (uint8_t, growth)");
          memcpy(v32, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v31;
          a1[5] = v32;
          v33 = *(a1 + 9);
        }

        memmove(&v32[v20 + 1], &v32[v20], v33 - v20);
        v47 = a1[5] + v20;
        *(v47 + 2) = BYTE2(a3);
        *v47 = a3;
        v46 = 3;
      }

      else
      {
        v40 = v19 + 5;
        v41 = *(a1 + 8);
        if (v40 <= v41)
        {
          v44 = a1[5];
          v45 = v20;
        }

        else
        {
          if (v41 <= 1)
          {
            v41 = 1;
          }

          v42 = 2 * v41;
          if (v42 <= v40)
          {
            v43 = v40;
          }

          else
          {
            v43 = v42;
          }

          v44 = (a1[1])(*a1, v43, "Vector Storage (uint8_t, growth)");
          memcpy(v44, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v43;
          a1[5] = v44;
          v45 = *(a1 + 9);
        }

        memmove(&v44[v20 + 1], &v44[v20], v45 - v20);
        *(a1[5] + v20) = a3;
        v46 = 4;
      }
    }

    else if (v21)
    {
      v34 = v19 + 3;
      v35 = *(a1 + 8);
      if (v34 <= v35)
      {
        v38 = a1[5];
        v39 = v20;
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

        v38 = (a1[1])(*a1, v37, "Vector Storage (uint8_t, growth)");
        memcpy(v38, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v37;
        a1[5] = v38;
        v39 = *(a1 + 9);
      }

      memmove(&v38[v20 + 1], &v38[v20], v39 - v20);
      *(a1[5] + v20) = a3;
      v46 = 2;
    }

    else
    {
      v22 = v19 + 2;
      v23 = *(a1 + 8);
      if (v22 <= v23)
      {
        v26 = a1[5];
        v27 = v20;
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

        v26 = (a1[1])(*a1, v25, "Vector Storage (uint8_t, growth)");
        memcpy(v26, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v25;
        a1[5] = v26;
        v27 = *(a1 + 9);
      }

      memmove(&v26[v20 + 1], &v26[v20], v27 - v20);
      *(a1[5] + v20) = a3;
      v46 = 1;
    }

    *(a1 + 9) += v46;
  }

  v48 = glpStringHashCache(a1[6], a2, a3, a2);
  result = serialize_pointer(a1, v48);
  if (result)
  {
    v50 = *(a1 + 8);
    v51 = *(a1 + 9);
    v52 = v51 + a3;
    if (v51 + a3 <= v50)
    {
      v55 = a1[5];
      v56 = *(a1 + 9);
    }

    else
    {
      if (v50 <= 1)
      {
        v50 = 1;
      }

      v53 = 2 * v50;
      if (v53 <= v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = v53;
      }

      v55 = (a1[1])(*a1, v54, "Vector Storage (uint8_t, growth)");
      memcpy(v55, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v54;
      a1[5] = v55;
      v56 = *(a1 + 9);
    }

    memmove(&v55[v51 + 1], &v55[v51], (v56 - v51));
    result = memcpy((a1[5] + v51), v48, a3);
    *(a1 + 9) += a3;
  }

  return result;
}

char *deserialErrorString(unsigned int a1)
{
  if (a1 >= 7)
  {
    abort();
  }

  return off_278B49D00[a1];
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

uint64_t glpReInitDeserialContext(uint64_t result, uint64_t a2, int a3)
{
  *(result + 212) = 0;
  *(result + 248) = a2;
  *(result + 256) = a3;
  *(result + 260) = 0;
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

float deserialize_float(uint64_t a1)
{
  v1 = *(a1 + 260);
  if (v1 + 4 > *(a1 + 256))
  {
    glpDeserialError(a1, 1u);
  }

  result = *(*(a1 + 248) + v1);
  *(a1 + 260) = v1 + 4;
  return result;
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

void *deserialize_pointer(void *result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = *(result + 65);
  v5 = *(result + 64);
  if (v4 >= v5)
  {
    goto LABEL_67;
  }

  v8 = result[31];
  v9 = *(v8 + v4);
  v10 = *(v8 + v4);
  v11 = v4 + 1;
  *(result + 65) = v4 + 1;
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
        v13 = v4 + 4;
        if (v13 <= v5)
        {
          LODWORD(v8) = *(v8 + v11) | (*(v8 + v11 + 2) << 16);
          goto LABEL_29;
        }
      }

      else if (v4 + 5 <= v5)
      {
        LODWORD(v8) = *(v8 + v11);
        v13 = v4 + 5;
        goto LABEL_29;
      }
    }

    else if (v12)
    {
      if (v4 + 3 <= v5)
      {
        LODWORD(v8) = *(v8 + v11);
        v13 = v4 + 3;
        goto LABEL_29;
      }
    }

    else if (v11 < v5)
    {
      LODWORD(v8) = *(v8 + v11);
      v13 = v4 + 2;
      goto LABEL_29;
    }

LABEL_67:
    glpDeserialError(result, 1u);
  }

  if (v12 <= 5)
  {
    v14 = v4 + 5;
    if (v12 == 4)
    {
      if (v14 <= v5)
      {
        LODWORD(v8) = *(v8 + v11);
        *(result + 65) = v4 + 5;
        if (v4 + 5 < v5)
        {
          v13 = v4 + 6;
          goto LABEL_29;
        }
      }
    }

    else if (v14 <= v5)
    {
      LODWORD(v8) = *(v8 + v11);
      v15 = (v4 + 5);
      *(result + 65) = v15;
      if (v15 + 2 <= v5)
      {
        v13 = v4 + 7;
        goto LABEL_29;
      }
    }

    goto LABEL_67;
  }

  if (v12 != 6)
  {
    if (v4 + 9 <= v5)
    {
      v8 = *(v8 + v11);
      v13 = v4 + 9;
      goto LABEL_29;
    }

    goto LABEL_67;
  }

  if (v4 + 5 > v5)
  {
    goto LABEL_67;
  }

  LODWORD(v8) = *(v8 + v11);
  *(result + 65) = v4 + 5;
  v13 = v4 + 8;
  if (v13 > v5)
  {
    goto LABEL_67;
  }

LABEL_29:
  *(result + 65) = v13;
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
  if (v10 == 1)
  {
    v18 = result[29];
    if (v18)
    {
      result[29] = *v18;
    }

    else
    {
      v18 = (*(result[25] + 8))(*result[25], 32, "FutureStack");
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *v18 = 0;
    }

    *v18 = v3[28];
    v29 = *(v3 + 52);
    v30 = *(v3 + 53);
    *(v18 + 24) = v30;
    v3[28] = v18;
    if (v30 + 1 <= v29)
    {
      v34 = v3[27];
      v35 = v30;
    }

    else
    {
      if (v29 <= 1)
      {
        v29 = 1;
      }

      v31 = 2 * v29;
      if (v31 <= v30 + 1)
      {
        v32 = v30 + 1;
      }

      else
      {
        v32 = v31;
      }

      v33 = v3[25];
      v34 = (v33[1])(*v33, 8 * v32, "Vector Storage (void *, growth)");
      memcpy(v34, v3[27], 8 * *(v3 + 53));
      (v33[3])(*v33, v3[27]);
      *(v3 + 52) = v32;
      v3[27] = v34;
      v35 = *(v3 + 53);
    }

    memmove(&v34[8 * v30 + 8], &v34[8 * v30], 8 * (v35 - v30));
    *(v3[27] + 8 * v30) = 0;
    ++*(v3 + 53);
    result = (*(a2 + 16))(a2);
    *(v3[27] + 8 * *(v18 + 24)) = result;
    v36 = *(v18 + 12);
    if (v36)
    {
      v37 = 0;
      v38 = 8 * v36;
      do
      {
        **(*(v18 + 16) + v37) = result;
        v37 += 8;
      }

      while (v38 != v37);
    }

    v39 = *v18;
    *(v18 + 12) = 0;
    *(v18 + 24) = 0;
    *v18 = v3[29];
    v3[28] = v39;
    v3[29] = v18;
    *a3 = result;
  }

  else if (v10)
  {
    v19 = v10 - 2;
    if ((v10 - 2) < *(result + 53) && (v20 = *(result[27] + 8 * v19)) != 0)
    {
      *a3 = v20;
    }

    else
    {
      v21 = (result + 28);
      do
      {
        v21 = *v21;
        if (!v21)
        {
          glpDeserialError(result, 2u);
        }
      }

      while (*(v21 + 6) != v19);
      v22 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v23 + 1 <= v22)
      {
        v27 = *(v21 + 2);
        v28 = *(v21 + 3);
      }

      else
      {
        if (v22 <= 1)
        {
          v22 = 1;
        }

        v24 = 2 * v22;
        if (v24 <= v23 + 1)
        {
          v25 = v23 + 1;
        }

        else
        {
          v25 = v24;
        }

        v26 = result[25];
        v27 = (v26[1])(*v26, 8 * v25, "Vector Storage (void**, growth)");
        memcpy(v27, *(v21 + 2), 8 * *(v21 + 3));
        (v26[3])(*v26, *(v21 + 2));
        *(v21 + 2) = v25;
        *(v21 + 2) = v27;
        v28 = *(v21 + 3);
      }

      result = memmove(&v27[8 * v23 + 8], &v27[8 * v23], 8 * (v28 - v23));
      *(*(v21 + 2) + 8 * v23) = a3;
      ++*(v21 + 3);
    }
  }

  else
  {
    *a3 = 0;
  }

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

uint64_t deserialize_GLPString(uint64_t a1)
{
  v1 = *(a1 + 260);
  v2 = *(a1 + 256);
  if (v1 >= v2)
  {
    goto LABEL_38;
  }

  v3 = *(a1 + 248);
  v4 = *(v3 + v1);
  v5 = *(v3 + v1);
  v6 = v1 + 1;
  *(a1 + 260) = v1 + 1;
  if (v4 < 0)
  {
    v7 = (v5 >> 1) & 7;
    if (((v5 >> 1) & 7) > 3)
    {
      if (((v5 >> 1) & 7) > 5)
      {
        if (v7 == 6)
        {
          if (v1 + 5 <= v2)
          {
            LODWORD(v3) = *(v3 + v6);
            *(a1 + 260) = v1 + 5;
            v8 = v1 + 8;
            if (v8 <= v2)
            {
LABEL_29:
              *(a1 + 260) = v8;
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
              goto LABEL_33;
            }
          }
        }

        else if (v1 + 9 <= v2)
        {
          v3 = *(v3 + v6);
          v8 = v1 + 9;
          goto LABEL_29;
        }
      }

      else
      {
        v9 = v1 + 5;
        if (v7 == 4)
        {
          if (v9 <= v2)
          {
            LODWORD(v3) = *(v3 + v6);
            *(a1 + 260) = v1 + 5;
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
          *(a1 + 260) = v10;
          if (v10 + 2 <= v2)
          {
            v8 = v1 + 7;
            goto LABEL_29;
          }
        }
      }
    }

    else if (((v5 >> 1) & 7) > 1)
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

LABEL_38:
    glpDeserialError(a1, 1u);
  }

LABEL_33:
  v18 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 0x40000000;
  v17[2] = __deserialize_GLPString_block_invoke;
  v17[3] = &__block_descriptor_tmp_8;
  v17[4] = a1;
  v17[5] = v5;
  deserialize_pointer(a1, v17, &v18);
  result = v18;
  if (v5)
  {
    v14 = v5 >> 5;
    v15 = ~(v5 >> 5);
    v16 = v5;
    do
    {
      v16 ^= 32 * v16 + (v16 >> 2) + *(v18 + (v5 - 1));
      LODWORD(v5) = v5 + v15;
    }

    while (v5 > v14);
  }

  return result;
}

uint64_t ShInitialize(_OWORD *a1, int a2)
{
  if (a1)
  {
    v2 = (&glpBuiltInConstantValues + 32 * (a2 == 4));
    v3 = a1[1];
    *v2 = *a1;
    v2[1] = v3;
    v4 = &glpBuiltInConstantsInitialized;
    if (a2 == 4)
    {
      v4 = &unk_28144F891;
    }

    *v4 = 1;
  }

  return 1;
}

_DWORD *ShConstructCompiler(int *a1)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = a1[4];
  v5 = malloc_type_malloc(0x88uLL, 0xCA0EF1E7uLL);
  if (!v5)
  {
    abort();
  }

  v6 = v5;
  *v5 = 0;
  v5[2] = 0;
  v5[3] = v2;
  v5[4] = a1[3];
  v5[5] = v4;
  *(v5 + 3) = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
  Log = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
  *(v6 + 5) = 0;
  *(v6 + 6) = 0;
  *(v6 + 4) = Log;
  v6[14] = v3;
  return v6;
}

_DWORD *ShConstructLinker(int *a1)
{
  v2 = *a1;
  v3 = a1[4];
  v4 = malloc_type_malloc(0x88uLL, 0xCA0EF1E7uLL);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  *v4 = 1;
  v4[2] = 0;
  v4[3] = v2;
  v4[4] = a1[3];
  v4[5] = v3;
  *(v4 + 3) = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
  *(v5 + 4) = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
  *(v5 + 10) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 17) = 0u;
  *(v5 + 11) = 0;
  *(v5 + 12) = 0;
  *(v5 + 13) = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  *(v5 + 14) = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  *(v5 + 15) = 0;
  *(v5 + 16) = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 0);
  return v5;
}

void ShDestruct(unsigned int *a1)
{
  handleResetPre(a1);
  handleResetPost(a1);
  if (*a1 == 1)
  {
    v2 = *(a1 + 13);
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(v2 + 40);
        v7 = *(v6 + v4);
        if (v7)
        {
          free(*(v6 + v4 + 8));
          free(v7);
          v3 = *(v2 + 32);
        }

        v4 += 32;
      }

      v2 = *(a1 + 13);
    }

    glpDestroyStringHash(v2);
    *(a1 + 13) = 0;
    v8 = *(a1 + 14);
    v9 = *(v8 + 32);
    if (v9)
    {
      v10 = 0;
      for (j = 0; j < v9; ++j)
      {
        v12 = *(v8 + 40);
        v13 = *(v12 + v10);
        if (v13)
        {
          free(*(v12 + v10 + 8));
          free(v13);
          v9 = *(v8 + 32);
        }

        v10 += 32;
      }

      v8 = *(a1 + 14);
    }

    glpDestroyStringHash(v8);
    *(a1 + 14) = 0;
    if (a1[31])
    {
      v14 = 0;
      v15 = 0;
      do
      {
        free(*(*(a1 + 16) + v14));
        ++v15;
        v14 += 16;
      }

      while (v15 < a1[31]);
    }

    off_2819B9B80(GLP_MALLOC_ALLOCATOR, *(a1 + 16));
  }

  free(a1);
}

uint64_t handleResetPre(uint64_t result)
{
  v1 = result;
  if (*result <= 1u)
  {
    v2 = *(result + 24);
    if (v2)
    {
      glpDestroyLog(v2);
      v1[3] = 0;
    }

    v3 = v1[4];
    if (v3)
    {
      glpDestroyLog(v3);
      v1[4] = 0;
    }

    v5 = v1[5];
    v4 = v1 + 5;
    result = v5;
    if (v5)
    {
      result = glpDestroyStringBuffer(result);
      *v4 = 0;
    }
  }

  return result;
}

void handleResetPost(uint64_t a1)
{
  if (*a1 == 1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      glpDestroyLinkedProgram(v4);
      *(a1 + 48) = 0;
    }

    free(*(a1 + 56));
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    free(*(a1 + 72));
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    v5 = *(a1 + 88);
    if (v5)
    {
      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = 0;
        for (i = 0; i < v6; ++i)
        {
          v9 = *(*(v5 + 40) + v7);
          if (v9)
          {
            free(v9);
            v6 = *(v5 + 32);
          }

          v7 += 16;
        }

        v5 = *(a1 + 88);
      }

      glpDestroyIntHash(v5);
      *(a1 + 88) = 0;
    }

    v10 = *(a1 + 96);
    v3 = (a1 + 96);
    free(v10);
    goto LABEL_16;
  }

  if (!*a1)
  {
    v3 = (a1 + 48);
    v2 = *(a1 + 48);
    if (v2)
    {
      glpDestroyCompiledShader(v2);
LABEL_16:
      *v3 = 0;
    }
  }
}

BOOL ShCompile(int32x2_t *a1, const char **a2, uint64_t a3, int32x2_t *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a4[10];
  v8 = a4[11];
  v9 = a4[12];
  v35 = *a4;
  a1[1] = vrev64_s32(*a4);
  handleResetPre(a1);
  Log = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
  v11 = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
  memset(v38, 0, sizeof(v38));
  if (!compilerCache)
  {
    dispatch_sync(gSerialQueue, &__block_literal_global_3);
  }

  v12 = strlen(*a2);
  v13 = malloc_type_malloc(v12 + 17, 0xCA0EF1E7uLL);
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  *v13 = a1[2].i32[0];
  *(v13 + 1) = a1[2].i32[1];
  *(v13 + 1) = a1[7].u32[0];
  memcpy(v13 + 16, *a2, v12 + 1);
  glpCacheGenerateHash(v14, v12 + 17, v38);
  free(v14);
  v36 = 0;
  v37 = 0;
  if (!glpCacheGetElement(compilerCache, v38, &v37, &v36))
  {
    v34 = v11;
    Compiler = glpMakeCompiler(a1[2].u32[0], a1[2].i32[1], a1[7].i32[0], Log, v11, 128, (a4[3].i32[0] >> 2) & 1);
    v18 = glpCompileShader(Compiler, *a2, v7, v8, v9);
    v17 = v18;
    v32 = v18 != 0;
    if (v18)
    {
      v19 = (glpCompiledShaderSerializedSize(v18) + 19) & 0xFFFFFFFFFFFFFFFCLL;
      v20 = 16;
    }

    else
    {
      v20 = 0;
      v19 = 16;
    }

    v25 = glpLogGetSerializedSize(Log) + v19 + 3;
    v26 = glpLogGetSerializedSize(Log) + (v25 & 0xFFFFFFFFFFFFFFFCLL) + 3;
    v27 = malloc_type_malloc(v26 & 0xFFFFFFFFFFFFFFFCLL, 0xCA0EF1E7uLL);
    if (v27)
    {
      v28 = v27;
      *v27 = v32;
      *(v27 + 1) = v20;
      *(v27 + 2) = v19;
      *(v27 + 3) = v25 & 0xFFFFFFFC;
      if (v17)
      {
        glpCompiledShaderSerialize(v17, &v27[v20]);
        glpLogSerialize(Log, &v28[v19 & 0xFFFFFFFC]);
        v22 = v34;
        glpLogSerialize(v34, &v28[v25 & 0xFFFFFFFC]);
        glpCacheAddElement(compilerCache, v38, v28, v26 & 0xFFFFFFFFFFFFFFFCLL);
        free(v28);
        v29 = Compiler;
        if (v35)
        {
          StringBuffer = glpLogGetStringBuffer(v34);
          glpStringBufferAppendCString(StringBuffer, "\nIntermediate Parse Tree\n========================\n");
          TopLevelNode = glpCompilerGetTopLevelNode(Compiler);
          glpDumpASTNodeToStringBuffer(StringBuffer, TopLevelNode);
        }
      }

      else
      {
        glpLogSerialize(Log, &v27[v19 & 0xFFFFFFFC]);
        v22 = v34;
        glpLogSerialize(v34, &v28[v25 & 0xFFFFFFFC]);
        glpCacheAddElement(compilerCache, v38, v28, v26 & 0xFFFFFFFFFFFFFFFCLL);
        free(v28);
        v29 = Compiler;
      }

      glpDestroyCompiler(v29);
      if (v17)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

LABEL_21:
    abort();
  }

  v15 = v11;
  v16 = v37;
  if (*v37)
  {
    v17 = glpCompiledShaderDeserialize((v37 + *(v37 + 1)));
  }

  else
  {
    v17 = 0;
  }

  glpLogDeserialize(Log, v37 + v16[2]);
  v21 = v37 + v16[3];
  v22 = v15;
  glpLogDeserialize(v15, v21);
  free(v37);
  v37 = 0;
  if (v17)
  {
LABEL_11:
    handleResetPost(a1);
    a1[6] = v17;
  }

LABEL_12:
  result = v17 != 0;
  a1[3] = Log;
  a1[4] = v22;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void __ShCompile_block_invoke()
{
  if (!compilerCache)
  {
    compilerCache = glpCacheOpen();
  }
}

BOOL ShLink(uint64_t a1, uint64_t *a2, unsigned int a3, char *a4)
{
  v229 = *MEMORY[0x277D85DE8];
  v4 = *a4;
  v5 = *(a4 + 1);
  *(a1 + 8) = v5;
  *(a1 + 12) = v4;
  if (v5)
  {
    handleResetPre(a1);
    if (!linkerCache)
    {
      dispatch_sync(gSerialQueue, &__block_literal_global_6);
    }

    v207 = a4;
    memset(v221, 0, sizeof(v221));
    v210 = a3;
    if (a3)
    {
      v10 = a3;
      v11 = 208;
      v12 = a2;
      do
      {
        LODWORD(v222) = 0;
        v13 = *v12++;
        glpGetCompiledShaderAST(*(v13 + 48), &v222);
        v11 = (v222 + v11 + 7) & 0xFFFFFFF8;
        --v10;
      }

      while (v10);
    }

    else
    {
      v11 = 208;
    }

    v215 = 0u;
    v216 = 0u;
    glpInitPoolAllocator(0x4000, 0x4000, &v215);
    v226[0] = 0;
    *__n = 0u;
    v225 = 0u;
    v222 = 0u;
    v223 = 0u;
    glpInitSerialContext(&v222, &v215);
    serialize_bindings(&v222, *(a1 + 104));
    serialize_bindings(&v222, *(a1 + 112));
    v15 = *(a1 + 124);
    v16 = glp_serialized_integer32_control(v15);
    v17 = HIDWORD(__n[0]);
    v18 = __n[0];
    v19 = HIDWORD(__n[0]) + 1;
    if ((HIDWORD(__n[0]) + 1) <= LODWORD(__n[0]))
    {
      v22 = __n[1];
      v23 = HIDWORD(__n[0]);
    }

    else
    {
      if (SLODWORD(__n[0]) <= 1)
      {
        v18 = 1;
      }

      v20 = 2 * v18;
      if (v20 <= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

      v22 = (*(&v222 + 1))(v222, v21, "Vector Storage (uint8_t, growth)");
      memcpy(v22, __n[1], HIDWORD(__n[0]));
      (*(&v223 + 1))(v222, __n[1]);
      LODWORD(__n[0]) = v21;
      __n[1] = v22;
      v23 = HIDWORD(__n[0]);
    }

    memmove(&v22[v17 + 1], &v22[v17], (v23 - v17));
    *(__n[1] + v17) = v16;
    v24 = HIDWORD(__n[0]);
    v25 = ++HIDWORD(__n[0]);
    if ((v16 & 0x80000000) != 0)
    {
      v26 = (v16 >> 1) & 7;
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v45 = v24 + 4;
          v46 = __n[0];
          if (v45 <= LODWORD(__n[0]))
          {
            v49 = __n[1];
            v50 = v25;
          }

          else
          {
            if (SLODWORD(__n[0]) <= 1)
            {
              v46 = 1;
            }

            v47 = 2 * v46;
            if (v47 <= v45)
            {
              v48 = v45;
            }

            else
            {
              v48 = v47;
            }

            v49 = (*(&v222 + 1))(v222, v48, "Vector Storage (uint8_t, growth)");
            memcpy(v49, __n[1], HIDWORD(__n[0]));
            (*(&v223 + 1))(v222, __n[1]);
            LODWORD(__n[0]) = v48;
            __n[1] = v49;
            v50 = HIDWORD(__n[0]);
          }

          memmove(&v49[v25 + 1], &v49[v25], v50 - v25);
          v52 = __n[1] + v25;
          *(v52 + 2) = BYTE2(v15);
          *v52 = v15;
          v51 = 3;
        }

        else
        {
          if (v26 != 3)
          {
            goto LABEL_60;
          }

          v33 = v24 + 5;
          v34 = __n[0];
          if (v33 <= LODWORD(__n[0]))
          {
            v37 = __n[1];
            v38 = v25;
          }

          else
          {
            if (SLODWORD(__n[0]) <= 1)
            {
              v34 = 1;
            }

            v35 = 2 * v34;
            if (v35 <= v33)
            {
              v36 = v33;
            }

            else
            {
              v36 = v35;
            }

            v37 = (*(&v222 + 1))(v222, v36, "Vector Storage (uint8_t, growth)");
            memcpy(v37, __n[1], HIDWORD(__n[0]));
            (*(&v223 + 1))(v222, __n[1]);
            LODWORD(__n[0]) = v36;
            __n[1] = v37;
            v38 = HIDWORD(__n[0]);
          }

          memmove(&v37[v25 + 1], &v37[v25], v38 - v25);
          *(__n[1] + v25) = v15;
          v51 = 4;
        }
      }

      else if (v26)
      {
        v27 = v24 + 3;
        v28 = __n[0];
        if (v27 <= LODWORD(__n[0]))
        {
          v31 = __n[1];
          v32 = v25;
        }

        else
        {
          if (SLODWORD(__n[0]) <= 1)
          {
            v28 = 1;
          }

          v29 = 2 * v28;
          if (v29 <= v27)
          {
            v30 = v27;
          }

          else
          {
            v30 = v29;
          }

          v31 = (*(&v222 + 1))(v222, v30, "Vector Storage (uint8_t, growth)");
          memcpy(v31, __n[1], HIDWORD(__n[0]));
          (*(&v223 + 1))(v222, __n[1]);
          LODWORD(__n[0]) = v30;
          __n[1] = v31;
          v32 = HIDWORD(__n[0]);
        }

        memmove(&v31[v25 + 1], &v31[v25], v32 - v25);
        *(__n[1] + v25) = v15;
        v51 = 2;
      }

      else
      {
        v39 = v24 + 2;
        v40 = __n[0];
        if (v39 <= LODWORD(__n[0]))
        {
          v43 = __n[1];
          v44 = v25;
        }

        else
        {
          if (SLODWORD(__n[0]) <= 1)
          {
            v40 = 1;
          }

          v41 = 2 * v40;
          if (v41 <= v39)
          {
            v42 = v39;
          }

          else
          {
            v42 = v41;
          }

          v43 = (*(&v222 + 1))(v222, v42, "Vector Storage (uint8_t, growth)");
          memcpy(v43, __n[1], HIDWORD(__n[0]));
          (*(&v223 + 1))(v222, __n[1]);
          LODWORD(__n[0]) = v42;
          __n[1] = v43;
          v44 = HIDWORD(__n[0]);
        }

        memmove(&v43[v25 + 1], &v43[v25], v44 - v25);
        *(__n[1] + v25) = v15;
        v51 = 1;
      }

      v25 = HIDWORD(__n[0]) + v51;
      HIDWORD(__n[0]) += v51;
    }

LABEL_60:
    if (v15)
    {
      v53 = 0;
      do
      {
        serialize_GLPString(&v222, *(*(a1 + 128) + v53), *(*(a1 + 128) + v53 + 8));
        v53 += 16;
      }

      while (16 * v15 != v53);
      v25 = HIDWORD(__n[0]);
    }

    v54 = v25 + v11;
    v55 = malloc_type_malloc(v25 + v11, 0xCA0EF1E7uLL);
    if (v55)
    {
      v56 = v55;
      bzero(v55, v25 + v11);
      if (v210)
      {
        v57 = v56 + 140;
        v58 = 208;
        v59 = a2;
        v60 = v210;
        do
        {
          v61 = *v59++;
          v62 = *(v61 + 48);
          LODWORD(v227[0]) = 0;
          CompiledShaderAST = glpGetCompiledShaderAST(v62, v227);
          *(v57 - 3) = glpGetCompiledShaderLanguage(v62);
          *(v57 - 2) = glpGetCompiledShaderVersion(v62);
          *(v57 - 1) = v58;
          v64 = LODWORD(v227[0]);
          *v57 = v227[0];
          v57 += 4;
          memcpy(&v56[v58], CompiledShaderAST, v64);
          v65 = v64 + v58;
          v58 = (v65 + 7) & 0xFFFFFFF8;
          bzero(&v56[v65], v58 - v65);
          --v60;
        }

        while (v60);
      }

      else
      {
        v58 = 208;
      }

      v66 = HIDWORD(__n[0]);
      *(v56 + 28) = v58;
      *(v56 + 29) = v66;
      memcpy(&v56[v58], __n[1], v66);
      glpDestroySerialContext(&v222, 1);
      glpDestroyPoolAllocator(&v215);
      *v56 = *v207;
      *(v56 + 2) = *(v207 + 2);
      *(v56 + 3) = *(a1 + 16);
      v67 = *(a1 + 20);
      *(v56 + 4) = v67;
      *(v56 + 20) = *(v207 + 20);
      *(v56 + 7) = *(v207 + 7);
      v68 = *(v207 + 2);
      v69 = *(v207 + 4);
      *(v56 + 3) = *(v207 + 3);
      *(v56 + 4) = v69;
      *(v56 + 2) = v68;
      v70 = &glpBuiltInConstantValues[8 * (v67 == 4)];
      v71 = v70[1];
      *(v56 + 5) = *v70;
      *(v56 + 6) = v71;
      *(v56 + 30) = v210;
      glpCacheGenerateHash(v56, v54, v221);
      free(v56);
      v213 = 0;
      v214 = 0;
      if (glpCacheGetElement(linkerCache, v221, &v214, &v213))
      {
        v72 = v214;
        v73 = v214[12];
        Log = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
        v75 = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
        glpLogSetContainsErrors(Log, v72[16]);
        StringBuffer = glpLogGetStringBuffer(Log);
        v196 = v72 + v72[17];
        glpStringBufferAppendFormat(StringBuffer, "%.*s", v77, v78, v79, v80, v81, v82, v72[18]);
        glpLogSetContainsErrors(v75, v72[19]);
        v83 = glpLogGetStringBuffer(v75);
        v197 = v72 + v72[20];
        glpStringBufferAppendFormat(v83, "%.*s", v84, v85, v86, v87, v88, v89, v72[21]);
        if (v73)
        {
          v90 = v72[15];
          v91 = v72[14];
          handleResetPost(a1);
          v92 = glpLinkProgramFromLinkerOutput(v72 + v91, v90, v72);
        }

        else
        {
          v92 = 0;
        }

        *(a1 + 48) = v92;
        *(a1 + 24) = Log;
        *(a1 + 32) = v75;
        v109 = v214;
      }

      else
      {
        v93 = (v207 + 32);
        v94 = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
        v95 = glpMakeLog(&GLP_MALLOC_ALLOCATOR);
        v205 = v94;
        Linker = glpMakeLinker(*(a1 + 16), *(a1 + 20), *(v207 + 5), *(v207 + 6), *(v207 + 7), v94, v95, *(a1 + 104), *(a1 + 112), a1 + 120, v207 + 2, 0, &glpBuiltInConstantValues[8 * (v207[16] == 4)]);
        if (v210 >= 1)
        {
          v97 = v210;
          do
          {
            v98 = *a2++;
            glpLinkerAddShader(Linker, *(v98 + 48));
            --v97;
          }

          while (v97);
        }

        v99 = *v207;
        v100 = glpLinkProgram(Linker);
        v211 = v100;
        if (v100)
        {
          v101 = v100;
          handleResetPost(a1);
          *(a1 + 48) = v101;
          glpLinkedProgramGetOverrides(v101, v93);
          if (*(a1 + 8) >= 4u)
          {
            for (i = 0; i != 5; ++i)
            {
              PPStreamManager = glpLinkedProgramGetPPStreamManager(*(a1 + 48), i);
              if (PPStreamManager)
              {
                glpPPShaderLinearizeStreamMgr(PPStreamManager, 25291);
              }
            }
          }

          *(a1 + 24) = v94;
          *(a1 + 32) = v95;
          if (v99)
          {
            v104 = glpLogGetStringBuffer(v95);
            glpStringBufferAppendCString(v104, "\nMerged ASTs\n========================\n");
            for (j = 0; j != 5; ++j)
            {
              MergedAST = glpLinkerGetMergedAST(Linker, j);
              if (MergedAST)
              {
                v107 = MergedAST;
                glpStringBufferAppendCString(v104, "\nMerged AST for ");
                v108 = glpLanguageToString(j);
                glpStringBufferAppendCString(v104, v108);
                glpStringBufferAppendCString(v104, " shader\n");
                glpDumpASTNodeToStringBuffer(v104, v107);
              }
            }
          }
        }

        else
        {
          *(a1 + 24) = v94;
          *(a1 + 32) = v95;
        }

        glpDestroyLinker(Linker);
        v110 = glpLogGetStringBuffer(v205);
        String = glpStringBufferGetString(v110);
        v113 = v112;
        v114 = glpLogGetStringBuffer(v95);
        v115 = glpStringBufferGetString(v114);
        v117 = v115;
        v118 = v116;
        v119 = v113 + 608;
        if ((v113 & 7) != 0)
        {
          v119 = (v113 & 0xFFFFFFF8) + 616;
        }

        v208 = v119;
        v120 = v116 + v119 + 7;
        v121 = v120 & 0xFFFFFFF8;
        v92 = v211;
        if (v211)
        {
          v199 = v116;
          v200 = v113;
          v201 = v115;
          v202 = String;
          v203 = v95;
          v228 = 0;
          memset(v227, 0, sizeof(v227));
          bzero(&v222, 0x208uLL);
          v122 = 0;
          for (k = 0; k != 5; ++k)
          {
            v124 = glpLinkedProgramGetPPStreamManager(v92, k);
            ShaderBytesCode = glpLinkedProgramGetShaderBytesCode(v92, k);
            v126 = (&v222 + v122);
            *(&v222 + v122 + 4) = k;
            if (v124)
            {
              LODWORD(v215) = 0;
              Stream = PPStreamGetStream(v124, &v215);
              v128 = v215;
              v129 = 8 * v215;
              v126[2] = v121;
              v126[3] = v129;
              *v126 = 1;
              LODWORD(v121) = v121 + 8 * v128;
            }

            else
            {
              Stream = 0;
            }

            *(v227 + k) = Stream;
            v92 = v211;
            if (ShaderBytesCode && *ShaderBytesCode)
            {
              v130 = **ShaderBytesCode + 4;
              v131 = (&v222 + v122);
              v131[4] = v121;
              v131[5] = v130;
              *v131 = 1;
              LODWORD(v121) = v130 + v121;
              v132 = *(ShaderBytesCode + 8);
              if (v132)
              {
                v133 = 8 * *v132 + 8;
                v131[8] = v121;
                v131[9] = v133;
                LODWORD(v121) = v133 + v121;
              }

              v134 = *(ShaderBytesCode + 40);
              if (v134)
              {
                v135 = *v134 + 4;
                v136 = &v222 + v122;
                *(v136 + 6) = v121;
                *(v136 + 7) = v135;
                LODWORD(v121) = v135 + v121;
              }

              v137 = *(ShaderBytesCode + 16);
              if (v137)
              {
                v138 = 4 * *v137 + 4;
                v139 = &v222 + v122;
                *(v139 + 10) = v121;
                *(v139 + 11) = v138;
                LODWORD(v121) = v138 + v121;
              }

              v140 = *(ShaderBytesCode + 24);
              if (v140)
              {
                v141 = 4 * *v140 + 4;
                v142 = &v222 + v122;
                *(v142 + 12) = v121;
                *(v142 + 13) = v141;
                LODWORD(v121) = v141 + v121;
              }

              if (*(ShaderBytesCode + 32))
              {
                v143 = &v222 + v122;
                *(v143 + 14) = v121;
                *(v143 + 15) = 0;
              }

              v144 = &v222 + v122;
              *(v144 + 88) = *(ShaderBytesCode + 72);
              *(v144 + 8) = *(ShaderBytesCode + 48);
              *(v144 + 72) = *(ShaderBytesCode + 56);
            }

            v122 += 104;
          }

          memset(v220, 0, sizeof(v220));
          glpInitPoolAllocator(0x4000, 0x4000, v220);
          v219 = 0;
          *__src = 0u;
          v218 = 0u;
          v215 = 0u;
          v216 = 0u;
          glpInitSerialContext(&v215, v220);
          glpSerializeLinkedProgram(&v215, v211);
          v145 = HIDWORD(__src[0]);
          v198 = (v121 + 7) & 0xFFFFFFF8;
          if ((BYTE4(__src[0]) & 7) != 0)
          {
            v121 = ((HIDWORD(__src[0]) + v198) & 0xFFFFFFF8) + 8;
          }

          else
          {
            v121 = (HIDWORD(__src[0]) + v198);
          }

          v146 = malloc_type_malloc(v121, 0xCA0EF1E7uLL);
          if (!v146)
          {
            goto LABEL_158;
          }

          v147 = v146;
          v148 = 0;
          v149 = 0;
          v150 = *v93;
          v151 = v93[2];
          *(v146 + 1) = v93[1];
          *(v146 + 2) = v151;
          *v146 = v150;
          *(v146 + 6) = 0x500000001;
          v152 = (v146 + 22);
          do
          {
            v153 = &v152[v148 * 8];
            *(v153 + 3) = *&v226[v148 - 2];
            *(v153 + 4) = *&v226[v148];
            *(v153 + 5) = *&v226[v148 + 2];
            *(v153 + 12) = v226[v148 + 4];
            *v153 = *(&v222 + v148 * 8);
            *(v153 + 1) = *(&v222 + v148 * 8 + 16);
            *(v153 + 2) = *&__n[v148];
            v154 = *(v227 + v149);
            if (v154)
            {
              memcpy(v147 + *(&v222 + v148 * 8 + 8), *(v227 + v149), *(&v222 + v148 * 8 + 12));
              free(v154);
              *(v227 + v149) = 0;
            }

            v155 = glpLinkedProgramGetShaderBytesCode(v211, v149);
            if (v155)
            {
              v156 = v155;
              if (*v155)
              {
                memcpy(v147 + *(&v222 + v148 * 8 + 16), *v155, *(&v223 + v148 * 8 + 4));
                v157 = v156[1];
                if (v157)
                {
                  memcpy(v147 + LODWORD(__n[v148]), v157, SHIDWORD(__n[v148]));
                }

                v158 = v156[5];
                if (v158)
                {
                  memcpy(v147 + LODWORD(__n[v148 - 1]), v158, *(&v223 + v148 * 8 + 12));
                }

                v159 = v156[2];
                if (v159)
                {
                  memcpy(v147 + LODWORD(__n[v148 + 1]), v159, SHIDWORD(__n[v148 + 1]));
                }

                v160 = v156[3];
                if (v160)
                {
                  memcpy(v147 + LODWORD(v226[v148 - 2]), v160, *(&v225 + v148 * 8 + 4));
                }

                v161 = v156[4];
                if (v161)
                {
                  memcpy(v147 + LODWORD(v226[v148 - 1]), v161, *(&v225 + v148 * 8 + 12));
                }
              }
            }

            ++v149;
            v148 += 13;
          }

          while (v148 != 65);
          v147[14] = v198;
          v147[15] = v145;
          memcpy(v147 + v198, __src[1], v145);
          glpDestroySerialContext(&v215, 1);
          glpDestroyPoolAllocator(v220);
          v92 = v211;
          String = v202;
          v95 = v203;
          v113 = v200;
          v117 = v201;
          v118 = v199;
        }

        else
        {
          v162 = malloc_type_malloc(v120 & 0xFFFFFFF8, 0xCA0EF1E7uLL);
          if (!v162)
          {
            goto LABEL_158;
          }

          v147 = v162;
          v162[12] = 0;
          *(v162 + 7) = 0;
        }

        v147[17] = 608;
        v147[18] = v113;
        v147[16] = glpLogContainsErrors(v205);
        v147[20] = v208;
        v147[21] = v118;
        v147[19] = glpLogContainsErrors(v95);
        memcpy(v147 + 152, String, v113);
        memcpy(v147 + v208, v117, v118);
        glpCacheAddElement(linkerCache, v221, v147, v121);
        v109 = v147;
      }

      free(v109);
      v212 = v92;
      if (!v92)
      {
LABEL_156:
        result = v212 != 0;
        goto LABEL_157;
      }

      *(a1 + 64) = glpLinkedProgramGetDefaultUniformLocationCount(*(a1 + 48));
      UniformHash = glpLinkedProgramGetUniformHash(*(a1 + 48));
      BindableUniformHash = glpLinkedProgramGetBindableUniformHash(*(a1 + 48));
      v165 = *(BindableUniformHash + 32);
      if (v165)
      {
        v166 = BindableUniformHash;
        v167 = 0;
        v168 = 0;
        v169 = 0;
        do
        {
          v170 = *(*(v166 + 40) + v167);
          if (v170)
          {
            v171 = glpABIGetTypeSize(0, *(v170 + 24), 0);
            Size = glpTypeSizeGetSize(v171);
            *(a1 + 68) += Size;
            v173 = malloc_type_realloc(*(a1 + 96), 4 * (v169 + 1), 0x352A3853uLL);
            if (!v173)
            {
              goto LABEL_158;
            }

            *(a1 + 96) = v173;
            v173[v169] = Size;
            v165 = *(v166 + 32);
            ++v169;
          }

          ++v168;
          v167 += 32;
        }

        while (v168 < v165);
      }

      v174 = *(a1 + 64);
      *(a1 + 80) = v174;
      v175 = malloc_type_calloc(v174, 8uLL, 0x1A32276BuLL);
      if (v175)
      {
        *(a1 + 72) = v175;
        v176 = *(UniformHash + 32);
        if (v176)
        {
          v177 = 0;
          v204 = UniformHash;
          while (1)
          {
            v178 = *(*(UniformHash + 40) + 32 * v177);
            if (v178)
            {
              v179 = *(v178 + 4);
              if (v179 != -1)
              {
                v180 = glpABIGetTypeSize(0, *(v178 + 24), 0);
                v181 = glpTypeSizeGetSize(v180);
                v182 = 4 * v181;
                v183 = malloc_type_malloc(v182, 0xCA0EF1E7uLL);
                if (!v183)
                {
                  goto LABEL_158;
                }

                v184 = v183;
                v185 = malloc_type_malloc(v182, 0xCA0EF1E7uLL);
                if (!v185)
                {
                  goto LABEL_158;
                }

                v186 = v185;
                v187 = malloc_type_malloc(v181, 0xCA0EF1E7uLL);
                if (!v187)
                {
                  goto LABEL_158;
                }

                v188 = v187;
                v206 = v186;
                v209 = v184;
                glpTypeGetAppleVec4Types(*(v178 + 24), v184, 1, v186, 0, v187, 0, 0, 1);
                if (v181)
                {
                  v189 = 0;
                  v190 = 8 * v179;
                  v191 = 8 * v181;
                  v192 = v188;
                  do
                  {
                    v193 = *v186++;
                    *(*(a1 + 72) + v190 + v189) = v193;
                    v194 = *v184++;
                    *(*(a1 + 72) + v190 + v189 + 4) = glpPrimitiveTypeGetGLType(v194);
                    *(*(a1 + 72) + v190 + v189 + 6) = *v178;
                    *(*(a1 + 72) + v190 + v189 + 7) = *(*(a1 + 72) + v190 + v189 + 7) & 0xFE | *v192 & 1;
                    *(*(a1 + 72) + v190 + v189 + 7) = *(*(a1 + 72) + v190 + v189 + 7) & 0xFD | *v192 & 2;
                    LOBYTE(v194) = *v192++;
                    *(*(a1 + 72) + v190 + v189 + 7) = *(*(a1 + 72) + v190 + v189 + 7) & 0xFB | v194 & 4;
                    v189 += 8;
                  }

                  while (v191 != v189);
                }

                free(v209);
                free(v206);
                free(v188);
                UniformHash = v204;
                v176 = *(v204 + 32);
              }
            }

            if (++v177 >= v176)
            {
              goto LABEL_156;
            }
          }
        }

        goto LABEL_156;
      }
    }

LABEL_158:
    abort();
  }

  result = 0;
LABEL_157:
  v195 = *MEMORY[0x277D85DE8];
  return result;
}

void __ShLink_block_invoke()
{
  if (!linkerCache)
  {
    linkerCache = glpCacheOpen();
  }
}

void ShCleanup(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    glpCleanUpLinkedProgram(v1);
  }
}

uint64_t ShGetInfoLog(uint64_t a1)
{
  String = glpLogGetString(*(a1 + 24));
  v3 = glpLogGetString(*(a1 + 32));
  if (!*v3)
  {
    return String;
  }

  v4 = v3;
  v5 = *(a1 + 40);
  if (v5)
  {
    glpDestroyStringBuffer(v5);
  }

  StringBuffer = glpMakeStringBuffer(&GLP_MALLOC_ALLOCATOR);
  *(a1 + 40) = StringBuffer;
  glpStringBufferAppendCString(StringBuffer, String);
  glpStringBufferAppendCString(*(a1 + 40), v4);
  v7 = *(a1 + 40);

  return glpStringBufferGetCString(v7);
}

_DWORD *ShAttributeBindingRequest(_DWORD *result, int a2, char *__s)
{
  v5 = result;
  if (*__s != 103 || __s[1] != 108 || __s[2] != 95)
  {
    v6 = strlen(__s);
    if (v6)
    {
      v7 = v6;
      LODWORD(v8) = v6;
      do
      {
        v8 = (32 * v8 + (v8 >> 2) + __s[v7 - 1]) ^ v8;
        v7 += ~(v6 >> 5);
      }

      while (v7 > v6 >> 5);
      v9 = v8 << 32;
    }

    else
    {
      v9 = 0;
    }

    result = glpStringHashGet(*(v5 + 13), __s, v9 | v6);
    if (result)
    {
      *result = a2;
    }

    else
    {
      v10 = malloc_type_malloc(0x10uLL, 0xCA0EF1E7uLL);
      if (!v10 || (v11 = v10, *v10 = a2, v10[1] = 0, *(v10 + 1) = 0, v12 = strlen(__s), (v13 = malloc_type_malloc(v12, 0xCA0EF1E7uLL)) == 0))
      {
        abort();
      }

      v14 = v13;
      memcpy(v13, __s, v12);
      v16 = *(v5 + 13);
      if (v12)
      {
        v17 = v12;
        LODWORD(v18) = v12;
        do
        {
          v18 = (32 * v18 + (v18 >> 2) + v14[v17 - 1]) ^ v18;
          v17 += ~(v12 >> 5);
        }

        while (v17 > v12 >> 5);
        v19 = v18 << 32;
      }

      else
      {
        v19 = 0;
      }

      return glpStringHashPut(v16, v14, v19 | v12, v11, v15);
    }
  }

  return result;
}

uint64_t ShGetNumActiveAttributes(uint64_t a1)
{
  v15 = 0;
  result = *(a1 + 48);
  if (result)
  {
    AttribHash = glpLinkedProgramGetAttribHash(result);
    v4 = 0u;
    v5 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    memset(v3, 0, sizeof(v3));
    v7 = 0u;
    DWORD2(v4) = -1;
    v8 = 0;
    v9 = 0xFFFFFFFFLL;
    v14 = 0;
    v6 = &v15;
    getBindingInfo(AttribHash, typeFromGLPBinding, v3);
    return v15;
  }

  return result;
}

uint64_t getBindingInfo(uint64_t a1, uint64_t (*a2)(uint64_t result, unsigned int *a2, unsigned int *a3, unsigned int **a4, uint64_t *a5, unsigned __int8 *a6), uint64_t a3)
{
  ptr = 0;
  *v34 = 0;
  v32 = 0;
  v31 = 0;
  v6 = *(a3 + 8);
  if (v6)
  {
    *v6 = 0;
  }

  v7 = *(a3 + 104);
  if (v7)
  {
    *v7 = 0;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
LABEL_28:
    v18 = 0;
    goto LABEL_38;
  }

  v9 = 0;
  v10 = 0;
  v12 = a2 == typeFromGLPUniformBlockBinding || a2 == typeFromGLPUniformBinding;
  while (1)
  {
    v13 = *(a1 + 40);
    v14 = *(v13 + v9);
    if (v14)
    {
      break;
    }

LABEL_27:
    ++v10;
    v9 += 32;
    if (v10 >= v8)
    {
      goto LABEL_28;
    }
  }

  v15 = *(v13 + v9 + 8);
  v16 = *(v13 + v9 + 16);
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  a2(v14, &v30, &v29, &v28, &v27, &v26);
  v34[0] = 0;
  if (v26)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (*(a3 + 48) && *(a3 + 16) || *(a3 + 56))
  {
    v17 = malloc_type_realloc(ptr, v16, 0x352A3853uLL);
    if (!v17)
    {
      abort();
    }

    ptr = v17;
    memcpy(v17, v15, v16);
  }

  v34[0] = v16;
  if (v12)
  {
LABEL_22:
    if (*(v14 + 4) == -1 && *(v14 + 8) != -1)
    {
      v31 = *(v14 + 8);
    }
  }

LABEL_25:
  if (!getBindingInfoForType(1, v26, v30, 0, &ptr, v29, v28, 0, &v32 + 1, &v32, &v31, 0, a3))
  {
    v8 = *(a1 + 32);
    goto LABEL_27;
  }

  if (*a3)
  {
    **a3 = v14;
  }

  v19 = v34[0];
  getString(ptr, v34[0], *(a3 + 16), *(a3 + 24), *(a3 + 48));
  v20 = *(a3 + 64);
  if (v20)
  {
    *v20 = v19 + 1;
  }

  v21 = *(a3 + 80);
  if (v21)
  {
    *v21 = HIDWORD(v32);
  }

  v22 = *(a3 + 128);
  if (v22)
  {
    *v22 = v31;
  }

  v18 = 1;
LABEL_38:
  free(ptr);
  v23 = *(a3 + 88);
  if (v23)
  {
    *v23 = HIDWORD(v32);
  }

  v24 = *(a3 + 136);
  if (v24)
  {
    *v24 = v32;
  }

  return v18;
}

uint64_t typeFromGLPBinding(uint64_t result, _DWORD *a2, _DWORD *a3, void *a4, void *a5, _BYTE *a6)
{
  *a2 = 0;
  *a3 = 0;
  *a4 = *(result + 8);
  *a5 = 0;
  *a6 = 0;
  return result;
}

uint64_t ShGetActiveNonbindableUniformsSize(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return *(a1 + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t ShGetNumBindableUniformBuffers(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return *(glpLinkedProgramGetBindableUniformHash(result) + 36);
  }

  return result;
}

uint64_t ShGetActiveBindableUniformBufferSizeTable(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return *(a1 + 96);
  }

  else
  {
    return 0;
  }
}

uint64_t ShGetActiveBindableUniformBufferIndexOffsetFromLocation(uint64_t a1, signed int a2, _DWORD *a3, _DWORD *a4)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  result = getBindableUniformLocationInfo(a1, a2);
  if (result)
  {
    if (a3)
    {
      *a3 = *result;
    }

    if (a4)
    {
      *a4 = *(result + 4);
    }

    return 1;
  }

  return result;
}

uint64_t getBindableUniformLocationInfo(uint64_t a1, signed int a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  IntHash = *(a1 + 88);
  if (!IntHash)
  {
    IntHash = glpMakeIntHash(&GLP_MALLOC_ALLOCATOR);
    *(a1 + 88) = IntHash;
  }

  v5 = glpIntHashGet(IntHash, a2);
  if (!v5)
  {
    BindableUniformHash = glpLinkedProgramGetBindableUniformHash(*(a1 + 48));
    v7 = *(BindableUniformHash + 32);
    if (!v7)
    {
LABEL_14:
      v5 = 0;
      goto LABEL_17;
    }

    v8 = BindableUniformHash;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(*(v8 + 40) + v9);
      if (v11)
      {
        v12 = glpABIGetTypeSize(0, *(v11 + 24), 0);
        Size = glpTypeSizeGetSize(v12);
        v14 = *(v11 + 4);
        if (v14 <= a2 && (v14 + Size) > a2)
        {
          v16 = Size;
          v17 = malloc_type_malloc(0x18uLL, 0xCA0EF1E7uLL);
          if (!v17)
          {
            abort();
          }

          v5 = v17;
          v19 = glpIntHashPut(*(a1 + 88), a2, v17, v18);
          v20 = a2 - *(v11 + 4);
          *v5 = *(v11 + 8);
          *(v5 + 4) = v20;
          v21 = 4 * v16;
          MEMORY[0x28223BE20](v19);
          v22 = v27 - ((v21 + 15) & 0x7FFFFFFF0);
          bzero(v22, v21);
          MEMORY[0x28223BE20](v23);
          bzero(v22, v21);
          glpTypeGetAppleVec4Types(*(v11 + 24), v22, 1, v22, 0, 0, 0, 0, 1);
          v24 = a2 - *(v11 + 4);
          *(v5 + 8) = *&v22[4 * v24];
          *(v5 + 12) = glpPrimitiveTypeGetGLType(*&v22[4 * v24]);
          *(v5 + 16) = *v11;
          break;
        }

        v7 = *(v8 + 32);
      }

      ++v10;
      v9 += 32;
      if (v10 >= v7)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ShGetBindableUniformTypeInfo(uint64_t a1, signed int a2, _DWORD *a3, _DWORD *a4, _BYTE *a5)
{
  if (!*(a1 + 48))
  {
    return 0;
  }

  result = getBindableUniformLocationInfo(a1, a2);
  if (result)
  {
    if (a3)
    {
      *a3 = *(result + 8);
    }

    if (a4)
    {
      *a4 = *(result + 12);
    }

    if (a5)
    {
      *a5 = *(result + 16);
    }

    return 1;
  }

  return result;
}

uint64_t ShGetMaxAttributeLength(uint64_t a1)
{
  v17 = 0;
  result = *(a1 + 48);
  if (result)
  {
    AttribHash = glpLinkedProgramGetAttribHash(result);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v9 = 0u;
    v5 = 0u;
    v6 = 0u;
    v3[0] = 0;
    v4 = 0u;
    v7 = 0u;
    v8 = 0u;
    DWORD2(v7) = -1;
    v10 = 0;
    v11 = 0xFFFFFFFFLL;
    v16 = 0;
    v3[1] = &v17;
    getBindingInfo(AttribHash, typeFromGLPBinding, v3);
    return v17;
  }

  return result;
}

uint64_t ShGetActiveAttrib(uint64_t a1, int a2, int a3, _DWORD *a4, int *a5, _DWORD *a6, void *a7)
{
  result = *(a1 + 48);
  if (!result)
  {
    return result;
  }

  AttribHash = glpLinkedProgramGetAttribHash(result);
  v15 = *(AttribHash + 32);
  if (!v15)
  {
    return 0;
  }

  for (i = (*(AttribHash + 40) + 16); ; i += 8)
  {
    v17 = *(i - 2);
    if (v17)
    {
      break;
    }

LABEL_7:
    if (!--v15)
    {
      return 0;
    }
  }

  if (a2)
  {
    --a2;
    goto LABEL_7;
  }

  v18 = *i;
  v19 = *(i - 1);
  Kind = glpTypeGetKind(*(v17 + 8));
  getString(v19, v18, a3, a4, a7);
  if (a5)
  {
    if (Kind == 2)
    {
      ElementCount = glpArrayTypeGetElementCount(*(v17 + 8));
    }

    else
    {
      ElementCount = 1;
    }

    *a5 = ElementCount;
  }

  if (a6)
  {
    ElementType = *(v17 + 8);
    if (Kind == 2)
    {
      ElementType = glpArrayTypeGetElementType(ElementType);
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(ElementType);
    *a6 = glpPrimitiveTypeGetGLType(PrimitiveType);
  }

  return 1;
}

const void *getString(const void *__src, int a2, int a3, _DWORD *a4, void *__dst)
{
  if (!a3)
  {
    if (!a4)
    {
      return __src;
    }

    __src = 0;
    goto LABEL_11;
  }

  if (a3 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
  }

  __src = memcpy(__dst, __src, v9);
  v10 = a3 - 1;
  if (a3 - 1 >= a2)
  {
    v10 = a2;
  }

  *(__dst + v10) = 0;
  if (a4)
  {
    __src = strlen(__dst);
LABEL_11:
    *a4 = __src;
  }

  return __src;
}

uint64_t ShGetAttribLocation(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 48);
  v3 = 0xFFFFFFFFLL;
  if (v2)
  {
    AttribHash = glpLinkedProgramGetAttribHash(v2);
    v6 = strlen(a2);
    if (v6)
    {
      v7 = v6;
      LODWORD(v8) = v6;
      do
      {
        v8 = (32 * v8 + (v8 >> 2) + a2[v7 - 1]) ^ v8;
        v7 += ~(v6 >> 5);
      }

      while (v7 > v6 >> 5);
      v9 = v8 << 32;
    }

    else
    {
      v9 = 0;
    }

    v10 = glpStringHashGet(AttribHash, a2, v9 | v6);
    if (v10)
    {
      return *v10;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t ShGetContextStateUniforms(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return glpLinkedProgramGetContextStateUniforms(result);
  }

  return result;
}

uint64_t ShGetUniformLocation(uint64_t a1, const char *a2, _BYTE *a3)
{
  v4 = *(a1 + 48);
  v5 = 0xFFFFFFFFLL;
  if (v4)
  {
    UniformHash = glpLinkedProgramGetUniformHash(v4);
    v9 = strlen(a2);
    if (v9)
    {
      v10 = v9;
      v11 = v9;
      do
      {
        v11 ^= 32 * v11 + (v11 >> 2) + a2[v10 - 1];
        v10 += ~(v9 >> 5);
      }

      while (v10 > v9 >> 5);
    }

    v12 = v9;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    if ((glpTypeParseDeref(UniformHash, topLevelLookUpUniformBindingTypeFromStringHash, a2, v9, &v21, &v20, &v19) && (v13 = glpStringHashGet(UniformHash, v21, v22), *a3 = 0, v13) || (BindableUniformHash = glpLinkedProgramGetBindableUniformHash(*(a1 + 48)), glpTypeParseDeref(BindableUniformHash, topLevelLookUpUniformBindingTypeFromStringHash, a2, v12, &v21, &v20, &v19)) && (v13 = glpStringHashGet(BindableUniformHash, v21, v22), *a3 = 1, v13)) && (v15 = v13, *(v13 + 4) != -1))
    {
      Kind = glpTypeGetKind(v20);
      ElementType = v20;
      if (Kind == 2)
      {
        ElementType = glpArrayTypeGetElementType(v20);
        v20 = ElementType;
      }

      if (glpTypeGetKind(ElementType))
      {
        v5 = 0xFFFFFFFFLL;
        if (*a3 && !v19)
        {
          return *(v15 + 4);
        }
      }

      else
      {
        return (v19 + *(v15 + 4));
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t topLevelLookUpUniformBindingTypeFromStringHash(uint64_t a1, const char *a2, size_t a3)
{
  result = glpStringHashGet(a1, a2, a3);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t ShSetInitialUniformValue(uint64_t a1, int a2, uint64_t a3)
{
  result = glpLinkedProgramGetUniformHash(*(a1 + 48));
  v6 = *(result + 32);
  if (v6)
  {
    v7 = result;
    v8 = 0;
    for (i = 0; i < v6; ++i)
    {
      v10 = *(*(v7 + 40) + v8);
      if (v10 && *(v10 + 4) != -1)
      {
        v11 = glpABIGetTypeSize(0, *(v10 + 24), 0);
        result = glpTypeSizeGetSize(v11);
        v12 = *(v10 + 4);
        v13 = v12 + result;
        v14 = __OFSUB__(a2, v12);
        v15 = a2 - v12;
        if (v15 < 0 == v14 && v13 > a2)
        {
          v17 = *(v10 + 16);
          if (v17)
          {
            *a3 = *(v17 + 16 * v15);
          }

          else
          {
            *a3 = 0;
            *(a3 + 8) = 0;
          }

          return result;
        }

        v6 = *(v7 + 32);
      }

      v8 += 32;
    }
  }

  return result;
}

uint64_t ShGetPPStreamManager(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return glpLinkedProgramGetPPStreamManager(result, a2);
  }

  return result;
}

uint64_t ShGetShaderByteCode(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return glpLinkedProgramGetShaderBytesCode(result, a2);
  }

  return result;
}

uint64_t ShGetLinkerPPStream(uint64_t a1, uint64_t a2)
{
  free(*(a1 + 56));
  v4 = malloc_type_malloc(1uLL, 0xCA0EF1E7uLL);
  if (!v4)
  {
LABEL_9:
    abort();
  }

  v5 = 0;
  *(a1 + 56) = v4;
  *v4 = 0;
  do
  {
    if (*(a2 + v5 * 8))
    {
      v6 = off_278B49D78[v5];
      v7 = strlen(*(a1 + 56));
      v8 = strlen(v6);
      v9 = malloc_type_realloc(*(a1 + 56), v7 + v8 + 1, 0x352A3853uLL);
      if (!v9)
      {
        goto LABEL_9;
      }

      *(a1 + 56) = v9;
      strcat(v9, v6);
      v10 = glpPPDisassemble(*(a2 + v5 * 8));
      v11 = strlen(*(a1 + 56));
      v12 = strlen(v10);
      v13 = malloc_type_realloc(*(a1 + 56), v11 + v12 + 1, 0x352A3853uLL);
      if (!v13)
      {
        goto LABEL_9;
      }

      *(a1 + 56) = v13;
      strcat(v13, v10);
      glpPPDisassembleFree(v10);
    }

    ++v5;
  }

  while (v5 != 5);
  return *(a1 + 56);
}

uint64_t ShTransformFeedbackVaryings(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 124))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      free(*(*(a1 + 128) + v6));
      ++v7;
      v6 += 16;
    }

    while (v7 < *(a1 + 124));
  }

  off_2819B9B80(GLP_MALLOC_ALLOCATOR, *(a1 + 128));
  *(a1 + 120) = a2;
  *(a1 + 124) = 0;
  *(a1 + 128) = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 16 * a2);
  if (a2)
  {
    v8 = 0;
    v9 = a2;
    do
    {
      v10 = strlen(*(a3 + 8 * v8));
      v11 = v10;
      v12 = malloc_type_malloc(v10, 0xCA0EF1E7uLL);
      if (!v12)
      {
        abort();
      }

      v13 = v12;
      memcpy(v12, *(a3 + 8 * v8), v10);
      if (v10)
      {
        v14 = v10 >> 5;
        LODWORD(v15) = v10;
        v16 = ~(v10 >> 5);
        do
        {
          v15 = (32 * v15 + (v15 >> 2) + v13[v10 - 1]) ^ v15;
          v10 += v16;
        }

        while (v10 > v14);
        v17 = v15 << 32;
      }

      else
      {
        v17 = 0;
      }

      v18 = (*(a1 + 128) + 16 * *(a1 + 124));
      *v18 = v13;
      v18[1] = v17 | v11;
      ++*(a1 + 124);
      ++v8;
    }

    while (v8 != v9);
  }

  return 0;
}

uint64_t ShGetMaxTransformFeedbackVaryingLength(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    result = glpLinkedProgramGetTransformFeedbackHash(result);
    if (result)
    {
      v2 = result;
      v3 = *(result + 32);
      if (v3)
      {
        result = 0;
        v4 = *(v2 + 40);
        do
        {
          if (*v4)
          {
            v5 = *(*v4 + 8);
            if (result <= v5 + 1)
            {
              result = (v5 + 1);
            }

            else
            {
              result = result;
            }
          }

          v4 += 16;
          --v3;
        }

        while (v3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ShGetTransformFeedbackVarying(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, void *a7)
{
  result = *(a1 + 48);
  if (result)
  {
    TransformFeedbackHash = glpLinkedProgramGetTransformFeedbackHash(result);
    v15 = glpIntHashGet(TransformFeedbackHash, a2);
    getString(*v15, *(v15 + 8), a3, a4, a7);
    if (a5)
    {
      *a5 = *(v15 + 16);
    }

    if (a6)
    {
      *a6 = glpPrimitiveTypeGetGLType(*(v15 + 20));
    }

    return 1;
  }

  return result;
}

uint64_t ShGetNumActiveVaryingsComponents(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return glpLinkedProgramGetActiveOutComponents(result, a2);
  }

  return result;
}

_DWORD *ShFragDataBindingRequest(_DWORD *result, int a2, int a3, char *__s)
{
  v7 = result;
  if (*__s != 103 || __s[1] != 108 || __s[2] != 95)
  {
    v8 = strlen(__s);
    if (v8)
    {
      v9 = v8;
      LODWORD(v10) = v8;
      do
      {
        v10 = (32 * v10 + (v10 >> 2) + __s[v9 - 1]) ^ v10;
        v9 += ~(v8 >> 5);
      }

      while (v9 > v8 >> 5);
      v11 = v10 << 32;
    }

    else
    {
      v11 = 0;
    }

    result = glpStringHashGet(*(v7 + 14), __s, v11 | v8);
    if (result)
    {
      *result = a2;
      result[1] = a3;
    }

    else
    {
      v12 = malloc_type_malloc(0x10uLL, 0xCA0EF1E7uLL);
      if (!v12 || (v13 = v12, *v12 = a2, v12[1] = a3, *(v12 + 1) = 0, v14 = strlen(__s), (v15 = malloc_type_malloc(v14, 0xCA0EF1E7uLL)) == 0))
      {
        abort();
      }

      v16 = v15;
      memcpy(v15, __s, v14);
      v18 = *(v7 + 14);
      if (v14)
      {
        v19 = v14;
        LODWORD(v20) = v14;
        do
        {
          v20 = (32 * v20 + (v20 >> 2) + v16[v19 - 1]) ^ v20;
          v19 += ~(v14 >> 5);
        }

        while (v19 > v14 >> 5);
        v21 = v20 << 32;
      }

      else
      {
        v21 = 0;
      }

      return glpStringHashPut(v18, v16, v21 | v14, v13, v17);
    }
  }

  return result;
}

uint64_t ShGetFragDataLocation(uint64_t a1, const char *a2, _DWORD *a3)
{
  v3 = *(a1 + 48);
  v4 = 0xFFFFFFFFLL;
  if (v3)
  {
    OutputHash = glpLinkedProgramGetOutputHash(v3);
    v8 = strlen(a2);
    if (v8)
    {
      v9 = v8;
      v10 = v8;
      do
      {
        v10 ^= 32 * v10 + (v10 >> 2) + a2[v9 - 1];
        v9 += ~(v8 >> 5);
      }

      while (v9 > v8 >> 5);
    }

    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    if (glpTypeParseDeref(OutputHash, topLevelLookUpGLPBindingTypeFromStringHash, a2, v8, &v18, &v17, &v16) && (v11 = glpStringHashGet(OutputHash, v18, v19)) != 0)
    {
      v12 = v11;
      Kind = glpTypeGetKind(v17);
      ElementType = v17;
      if (Kind == 2)
      {
        ElementType = glpArrayTypeGetElementType(v17);
        v17 = ElementType;
      }

      if (glpTypeGetKind(ElementType))
      {
        v4 = 0xFFFFFFFFLL;
        if (!a3)
        {
          return v4;
        }

        goto LABEL_14;
      }

      v4 = (v16 + *v12);
      if (a3)
      {
LABEL_14:
        *a3 = v12[1];
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t topLevelLookUpGLPBindingTypeFromStringHash(uint64_t a1, const char *a2, size_t a3)
{
  result = glpStringHashGet(a1, a2, a3);
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t ShGetNumActiveUniformBlocks(uint64_t a1)
{
  v15 = 0;
  result = *(a1 + 48);
  if (result)
  {
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(result);
    v12 = 0u;
    v13 = 0u;
    v9 = 0;
    v11 = 0u;
    v6 = 0u;
    memset(v3, 0, sizeof(v3));
    v4 = 0u;
    v5 = 0u;
    DWORD2(v4) = -1;
    v7 = 0;
    v8 = 0xFFFFFFFFLL;
    v14 = 256;
    v10 = &v15;
    getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBlockBinding, v3);
    return v15;
  }

  return result;
}

uint64_t typeFromGLPUniformBlockBinding(uint64_t result, _DWORD *a2, _DWORD *a3, void *a4, void *a5, _BYTE *a6)
{
  *a2 = *(result + 12);
  *a3 = *result;
  *a4 = *(result + 24);
  *a5 = *(result + 32);
  *a6 = 0;
  return result;
}

uint64_t ShGetMaxActiveUniformBlockLength(uint64_t a1)
{
  v15 = 0;
  result = *(a1 + 48);
  if (result)
  {
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(result);
    v6 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    memset(v3, 0, sizeof(v3));
    v4 = 0u;
    v5 = 0u;
    DWORD2(v4) = -1;
    v9 = 0xFFFFFFFFLL;
    v14 = 256;
    v7 = &v15;
    v8 = 0;
    getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBlockBinding, v3);
    return v15;
  }

  return result;
}

uint64_t ShGetUniformBlockIndex(uint64_t a1, uint64_t a2)
{
  v2 = 0xFFFFFFFFLL;
  v19 = -1;
  v3 = *(a1 + 48);
  if (v3)
  {
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(v3);
    v12 = 0u;
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v10 = 0u;
    v11 = 0u;
    DWORD2(v10) = -1;
    v13 = 0;
    v14 = 0xFFFFFFFFLL;
    v16 = 0u;
    v17 = 0u;
    memset(v18, 0, sizeof(v18));
    v15 = &v19;
    v9 = a2;
    BYTE1(v18[3]) = 1;
    getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBlockBinding, v7);
    return v19;
  }

  return v2;
}

uint64_t ShGetActiveUniformBlockiv(uint64_t a1, int a2, int a3, int *a4)
{
  result = *(a1 + 48);
  if (result)
  {
    v34 = 0;
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v33 = 0;
    v25 = 0u;
    *&v26 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    memset(v24, 0, sizeof(v24));
    v27 = 0u;
    DWORD2(v25) = -1;
    *&v28 = 0;
    DWORD2(v28) = -1;
    *(&v26 + 1) = &v34;
    getBindingInfo(UniformHash, typeFromGLPUniformBinding, v24);
    v22 = 0;
    v23 = 0;
    v21 = 0;
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(*(a1 + 48));
    memset(v24, 0, 20);
    memset(&v24[1] + 8, 0, 40);
    DWORD2(v25) = -1;
    v26 = 0u;
    *(&v27 + 1) = 0;
    LOWORD(v33) = 256;
    v29 = 0u;
    v31 = 0u;
    v32 = 0u;
    DWORD2(v28) = a2;
    *&v28 = &v23 + 4;
    *&v25 = &v23;
    *&v27 = &v22 + 4;
    *&v30 = &v22;
    *(&v30 + 1) = &v21;
    result = getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBlockBinding, v24);
    if (a3 <= 35393)
    {
      if (a3 > 35391)
      {
        if (a3 == 35392)
        {
          v11 = HIDWORD(v23);
        }

        else
        {
          v11 = v23;
        }
      }

      else if (a3 == 34032)
      {
        v11 = (HIDWORD(v22) >> 1) & 1;
      }

      else
      {
        if (a3 != 34033)
        {
          return result;
        }

        v11 = (HIDWORD(v22) >> 2) & 1;
      }

      goto LABEL_30;
    }

    if (a3 > 35395)
    {
      switch(a3)
      {
        case 35396:
          v11 = BYTE4(v22) & 1;
          break;
        case 35397:
          v11 = (HIDWORD(v22) >> 3) & 1;
          break;
        case 35398:
          v11 = (HIDWORD(v22) >> 4) & 1;
          break;
        default:
          return result;
      }

      goto LABEL_30;
    }

    if (a3 == 35394)
    {
      v11 = v21;
LABEL_30:
      *a4 = v11;
      return result;
    }

    if (v21 >= 1)
    {
      v12 = 0;
      v13 = vdupq_n_s64(v21 - 1);
      v14 = (v21 + 3) & 0xFFFFFFFC;
      v15 = v34 + v22;
      v16 = xmmword_23A29C350;
      v17 = xmmword_23A29C340;
      v18 = a4 + 2;
      v19 = vdupq_n_s64(4uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v13, v17));
        if (vuzp1_s16(v20, *v13.i8).u8[0])
        {
          *(v18 - 2) = v15 + v12;
        }

        if (vuzp1_s16(v20, *&v13).i8[2])
        {
          *(v18 - 1) = v15 + v12 + 1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v16))).i32[1])
        {
          *v18 = v15 + v12 + 2;
          v18[1] = v15 + v12 + 3;
        }

        v12 += 4;
        v16 = vaddq_s64(v16, v19);
        v17 = vaddq_s64(v17, v19);
        v18 += 4;
      }

      while (v14 != v12);
    }
  }

  return result;
}

uint64_t typeFromGLPUniformBinding(uint64_t result, _DWORD *a2, _DWORD *a3, void *a4, void *a5, _BYTE *a6)
{
  *a2 = *(result + 12);
  *a3 = *result;
  *a4 = *(result + 24);
  *a5 = *(result + 32);
  *a6 = *(result + 80);
  return result;
}

uint64_t ShGetActiveUniformBlockName(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unint64_t a5)
{
  result = *(a1 + 48);
  if (result)
  {
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(result);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = 0u;
    v14 = 0u;
    v11 = 0u;
    v16 = 0u;
    v17 = 0u;
    DWORD2(v16) = -1;
    v19 = 0;
    v25 = 256;
    v20 = a2;
    v12 = a3;
    v13 = a4;
    v15 = a5;
    return getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBlockBinding, &v11);
  }

  return result;
}

uint64_t ShGetUniformIndex(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = 0xFFFFFFFFLL;
  if (v3)
  {
    UniformHash = glpLinkedProgramGetUniformHash(v3);
    v24 = 0;
    v14 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    DWORD2(v14) = -1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0xFFFFFFFFLL;
    v23 = 0;
    v15 = &v24;
    v13 = a2;
    if (getBindingInfo(UniformHash, typeFromGLPUniformBinding, v11))
    {
      return v24;
    }

    else
    {
      LOBYTE(v23) = 1;
      UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(*(a1 + 48));
      BindingInfo = getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBinding, v11);
      NumActiveNonbindableUniforms = ShGetNumActiveNonbindableUniforms(a1);
      if (BindingInfo)
      {
        return v24 + NumActiveNonbindableUniforms;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return v4;
}

uint64_t ShGetNumActiveNonbindableUniforms(uint64_t a1)
{
  v15 = 0;
  result = *(a1 + 48);
  if (result)
  {
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v4 = 0u;
    v5 = 0;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    memset(v3, 0, sizeof(v3));
    v7 = 0u;
    DWORD2(v4) = -1;
    v8 = 0;
    v9 = 0xFFFFFFFFLL;
    v14 = 0;
    v6 = &v15;
    getBindingInfo(UniformHash, typeFromGLPUniformBinding, v3);
    return v15;
  }

  return result;
}

uint64_t ShGetActiveUniformIndex(uint64_t a1, unsigned int a2, int a3, unsigned int *a4)
{
  result = *(a1 + 48);
  if (result)
  {
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v34 = 0;
    v32 = -1;
    v33 = 0;
    v30 = -1;
    v31 = -1;
    v29 = -1;
    v28 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = 0u;
    memset(v13, 0, sizeof(v13));
    v19 = 0u;
    v22 = 0xFFFFFFFFLL;
    v27 = 0;
    v18 = a2;
    v14 = &v34;
    v15 = &v34 + 4;
    v21 = 0;
    v20 = &v28;
    v17 = &v33;
    result = getBindingInfo(UniformHash, typeFromGLPUniformBinding, v13);
    if (!result)
    {
      *&v23 = &v32;
      *&v25 = &v31;
      *(&v25 + 1) = &v30;
      *&v26 = &v29;
      *(&v26 + 1) = &v28 + 4;
      NumActiveNonbindableUniforms = ShGetNumActiveNonbindableUniforms(a1);
      LODWORD(v18) = v18 - NumActiveNonbindableUniforms;
      LOBYTE(v27) = 1;
      UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(*(a1 + 48));
      result = getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBinding, v13);
    }

    if (a3 <= 35388)
    {
      if (a3 > 35385)
      {
        if (a3 == 35386)
        {
          v12 = v32;
        }

        else if (a3 == 35387)
        {
          v12 = v31;
        }

        else
        {
          v12 = v30;
        }
      }

      else
      {
        switch(a3)
        {
          case 35383:
            v12 = HIDWORD(v34);
            break;
          case 35384:
            v12 = v34;
            break;
          case 35385:
            v12 = v33;
            break;
          default:
            return result;
        }
      }
    }

    else if (a3 <= 35424)
    {
      switch(a3)
      {
        case 35389:
          v12 = v29;
          break;
        case 35390:
          v12 = HIDWORD(v28);
          break;
        case 35424:
          v12 = v28 & 1;
          break;
        default:
          return result;
      }
    }

    else if (a3 > 35426)
    {
      if (a3 == 35427)
      {
        v12 = (v28 >> 3) & 1;
      }

      else
      {
        if (a3 != 35428)
        {
          return result;
        }

        v12 = (v28 >> 4) & 1;
      }
    }

    else if (a3 == 35425)
    {
      v12 = (v28 >> 1) & 1;
    }

    else
    {
      v12 = (v28 >> 2) & 1;
    }

    *a4 = v12;
  }

  return result;
}

uint64_t ShGetActiveUniformName(uint64_t a1, int a2, unsigned int a3, uint64_t a4, unint64_t a5)
{
  result = *(a1 + 48);
  if (result)
  {
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = 0u;
    v17 = 0u;
    v14 = 0u;
    v19 = 0u;
    v20 = 0u;
    v22 = 0;
    v23 = 0xFFFFFFFFLL;
    v28 = 0;
    DWORD2(v19) = a2;
    v15 = a3;
    v16 = a4;
    v18 = a5;
    result = getBindingInfo(UniformHash, typeFromGLPUniformBinding, &v14);
    if (!result)
    {
      NumActiveNonbindableUniforms = ShGetNumActiveNonbindableUniforms(a1);
      DWORD2(v19) -= NumActiveNonbindableUniforms;
      LOBYTE(v28) = 1;
      UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(*(a1 + 48));
      return getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBinding, &v14);
    }
  }

  return result;
}

uint64_t ShGetNumActiveUniforms(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    v20 = 0;
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v9 = 0u;
    v10 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    memset(v8, 0, sizeof(v8));
    v12 = 0u;
    DWORD2(v9) = -1;
    v13 = 0;
    v14 = 0xFFFFFFFFLL;
    v19 = 0;
    v11 = &v20;
    getBindingInfo(UniformHash, typeFromGLPUniformBinding, v8);
    v4 = v20;
    BindableUniformHash = glpLinkedProgramGetBindableUniformHash(*(a1 + 48));
    getBindingInfo(BindableUniformHash, typeFromGLPUniformBinding, v8);
    v6 = v20 + v4;
    LOBYTE(v19) = 1;
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(*(a1 + 48));
    getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBinding, v8);
    return (v6 + v20);
  }

  return result;
}

uint64_t ShGetMaxActiveUniformLength(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    v22 = 0;
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8[0] = 0;
    v9 = 0u;
    v12 = 0u;
    v13 = 0u;
    DWORD2(v12) = -1;
    v15 = 0;
    v16 = 0xFFFFFFFFLL;
    v21 = 0;
    v8[1] = &v22;
    getBindingInfo(UniformHash, typeFromGLPUniformBinding, v8);
    v4 = v22;
    BindableUniformHash = glpLinkedProgramGetBindableUniformHash(*(a1 + 48));
    getBindingInfo(BindableUniformHash, typeFromGLPUniformBinding, v8);
    if (v4 <= v22)
    {
      v4 = v22;
    }

    LOBYTE(v21) = 1;
    UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(*(a1 + 48));
    getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBinding, v8);
    v7 = v22;
    if (v4 > v22)
    {
      v7 = v4;
    }

    return v7 & ~(v7 >> 31);
  }

  return result;
}

uint64_t ShGetActiveUniform(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = *(a1 + 48);
  if (result)
  {
    UniformHash = glpLinkedProgramGetUniformHash(result);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = 0u;
    v22 = 0u;
    v28 = 0u;
    v29 = 0u;
    v31 = 0;
    v32 = 0xFFFFFFFFLL;
    v37 = 0;
    DWORD2(v28) = a2;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    if (getBindingInfo(UniformHash, typeFromGLPUniformBinding, &v22))
    {
      return 1;
    }

    NumActiveNonbindableUniforms = ShGetNumActiveNonbindableUniforms(a1);
    DWORD2(v28) -= NumActiveNonbindableUniforms;
    BindableUniformHash = glpLinkedProgramGetBindableUniformHash(*(a1 + 48));
    if (getBindingInfo(BindableUniformHash, typeFromGLPUniformBinding, &v22))
    {
      return 1;
    }

    else
    {
      v50 = 0;
      v18 = *(a1 + 48);
      if (v18)
      {
        v19 = glpLinkedProgramGetBindableUniformHash(v18);
        v39 = 0u;
        v40 = 0;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        memset(v38, 0, sizeof(v38));
        v42 = 0u;
        DWORD2(v39) = -1;
        v43 = 0;
        v44 = 0xFFFFFFFFLL;
        v49 = 0;
        v41 = &v50;
        getBindingInfo(v19, typeFromGLPUniformBinding, v38);
        v20 = v50;
        v18 = *(a1 + 48);
      }

      else
      {
        v20 = 0;
      }

      DWORD2(v28) -= v20;
      LOBYTE(v37) = 1;
      UniformInterfaceBlockHash = glpLinkedProgramGetUniformInterfaceBlockHash(v18);
      return getBindingInfo(UniformInterfaceBlockHash, typeFromGLPUniformBinding, &v22);
    }
  }

  return result;
}

uint64_t ShGetActiveSamplerLocations(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 48);
  if (result)
  {
    SamplerLocations = glpLinkedProgramGetSamplerLocations(result);
    v5 = *(SamplerLocations + 4);
    result = *(SamplerLocations + 8);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t ShGetNumActiveSubroutines(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return *(glpLinkedProgramGetSubroutineHash(result, a2) + 36);
  }

  return result;
}

uint64_t ShGetNumActiveSubroutineUniforms(uint64_t a1, unsigned int a2)
{
  v16 = 0;
  result = *(a1 + 48);
  if (result)
  {
    SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(result, a2);
    v5 = 0u;
    v6 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    memset(v4, 0, sizeof(v4));
    v8 = 0u;
    DWORD2(v5) = -1;
    v9 = 0;
    v10 = 0xFFFFFFFFLL;
    v15 = 0;
    v7 = &v16;
    getBindingInfo(SubroutineUniformHash, typeFromGLPUniformBinding, v4);
    return v16;
  }

  return result;
}

uint64_t ShGetNumActiveSubroutineUniformLocations(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    return glpLinkedProgramGetSubroutineUniformLocationCount(result, a2);
  }

  return result;
}

uint64_t ShGetMaxActiveSubroutineLength(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    SubroutineHash = glpLinkedProgramGetSubroutineHash(result, a2);
    v4 = *(SubroutineHash + 32);
    if (v4)
    {
      v5 = SubroutineHash;
      result = 0;
      v6 = (*(v5 + 40) + 16);
      do
      {
        if (*(v6 - 2))
        {
          if (result <= *v6 + 1)
          {
            result = (*v6 + 1);
          }

          else
          {
            result = result;
          }
        }

        v6 += 8;
        --v4;
      }

      while (v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ShGetMaxActiveSubroutineUniformLength(uint64_t a1, unsigned int a2)
{
  v18 = 0;
  result = *(a1 + 48);
  if (result)
  {
    SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(result, a2);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v10 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4[0] = 0;
    v5 = 0u;
    v8 = 0u;
    v9 = 0u;
    DWORD2(v8) = -1;
    v11 = 0;
    v12 = 0xFFFFFFFFLL;
    v17 = 0;
    v4[1] = &v18;
    getBindingInfo(SubroutineUniformHash, typeFromGLPUniformBinding, v4);
    return v18;
  }

  return result;
}

uint64_t ShGetSubroutineUniformLocation(uint64_t a1, unsigned int a2, const char *a3)
{
  v3 = *(a1 + 48);
  v4 = 0xFFFFFFFFLL;
  if (v3)
  {
    SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(v3, a2);
    v7 = strlen(a3);
    if (v7)
    {
      v8 = v7;
      v9 = v7;
      do
      {
        v9 ^= 32 * v9 + (v9 >> 2) + a3[v8 - 1];
        v8 += ~(v7 >> 5);
      }

      while (v8 > v7 >> 5);
    }

    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = 0;
    if (!glpTypeParseDeref(SubroutineUniformHash, topLevelLookUpUniformBindingTypeFromStringHash, a3, v7, &v17, &v16, &v15))
    {
      return 0xFFFFFFFFLL;
    }

    v10 = glpStringHashGet(SubroutineUniformHash, v17, v18);
    if (!v10)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v10;
    if (*(v10 + 4) == -1)
    {
      return 0xFFFFFFFFLL;
    }

    Kind = glpTypeGetKind(v16);
    ElementType = v16;
    if (Kind == 2)
    {
      ElementType = glpArrayTypeGetElementType(v16);
      v16 = ElementType;
    }

    if (glpTypeGetKind(ElementType) == 5)
    {
      return (v15 + *(v11 + 4));
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t ShGetSubroutineIndex(uint64_t a1, unsigned int a2, const char *a3)
{
  v3 = *(a1 + 48);
  v4 = 0xFFFFFFFFLL;
  if (v3)
  {
    SubroutineHash = glpLinkedProgramGetSubroutineHash(v3, a2);
    v7 = strlen(a3);
    if (v7)
    {
      v8 = v7;
      LODWORD(v9) = v7;
      do
      {
        v9 = (32 * v9 + (v9 >> 2) + a3[v8 - 1]) ^ v9;
        v8 += ~(v7 >> 5);
      }

      while (v8 > v7 >> 5);
      v10 = v9 << 32;
    }

    else
    {
      v10 = 0;
    }

    v11 = glpStringHashGet(SubroutineHash, a3, v10 | v7);
    if (v11)
    {
      return *(v11 + 4);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t ShGetActiveSubroutineUniformiv(uint64_t a1, unsigned int a2, unsigned int a3, int a4, _DWORD *a5)
{
  result = *(a1 + 48);
  if (result)
  {
    SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(result, a2);
    v29 = 0;
    v30 = 0;
    v18 = 0u;
    v19 = 0;
    v15 = 0u;
    v16 = 0;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    v25[0] = 0xFFFFFFFFLL;
    *&v25[1] = 0u;
    v26 = 0u;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    v14 = &v30;
    v21 = a3;
    v10 = (&v29 + 4);
    v17 = &v29 + 4;
    v20 = &v29;
    result = getBindingInfo(SubroutineUniformHash, typeFromGLPUniformBinding, &v14);
    if (a4 <= 36425)
    {
      if (a4 != 35384)
      {
        if (a4 != 35385)
        {
          return result;
        }

        v10 = &v29;
      }

      goto LABEL_13;
    }

    if (a4 == 36426)
    {
      v10 = (v30 + 68);
LABEL_13:
      *a5 = *v10;
      return result;
    }

    if (a4 == 36427)
    {
      v11 = v30;
      if (*(v30 + 68))
      {
        v12 = 0;
        v13 = *(v30 + 72);
        do
        {
          a5[v12] = *(v13 + 4 * v12);
          ++v12;
        }

        while (v12 < *(v11 + 68));
      }
    }
  }

  return result;
}

uint64_t ShGetActiveSubroutineUniformName(uint64_t a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  result = *(a1 + 48);
  if (result)
  {
    SubroutineUniformHash = glpLinkedProgramGetSubroutineUniformHash(result, a2);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = 0u;
    v15 = 0u;
    v12 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 0;
    v21 = 0xFFFFFFFFLL;
    v26 = 0;
    DWORD2(v17) = a3;
    v13 = a4;
    v14 = a5;
    v16 = a6;
    return getBindingInfo(SubroutineUniformHash, typeFromGLPUniformBinding, &v12);
  }

  return result;
}

void *ShGetActiveSubroutineName(uint64_t a1, unsigned int a2, int a3, int a4, _DWORD *a5, void *a6)
{
  result = *(a1 + 48);
  if (result)
  {
    result = glpLinkedProgramGetSubroutineHash(result, a2);
    v11 = *(result + 8);
    if (v11)
    {
      for (i = (result[5] + 16); ; i += 8)
      {
        v13 = *(i - 2);
        if (v13)
        {
          if (*(v13 + 4) == a3)
          {
            break;
          }
        }

        if (!--v11)
        {
          return result;
        }
      }

      v14 = *i;
      v15 = *(i - 1);

      return getString(v15, v14, a4, a5, a6);
    }
  }

  return result;
}

uint64_t ShGetCachedUniformIndexTable(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return *(a1 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t ShGetCachedUniformIndexTableSize(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return *(a1 + 80);
  }

  else
  {
    return 0;
  }
}

uint64_t ShGetInteger(uint64_t *a1, int a2, _DWORD *a3)
{
  v5 = 10010;
  if (a2 <= 1708)
  {
    if (a2 == 1707)
    {
      v6 = malloc_type_realloc(0, 4uLL, 0x352A3853uLL);
      if (v6)
      {
        v58 = a3;
        *v6 = 0;
        v26 = a1[13];
        v27 = *(v26 + 32);
        if (v27)
        {
          v28 = 0;
          v29 = 0;
          v11 = 0;
          v30 = 4;
          while (1)
          {
            v31 = *(v26 + 40);
            v32 = *(v31 + v28);
            if (v32)
            {
              v33 = *(v31 + v28 + 8);
              v34 = *(v31 + v28 + 16);
              v35 = v30;
              v36 = v30 + 4;
              v37 = malloc_type_realloc(v6, v36, 0x352A3853uLL);
              if (!v37)
              {
                goto LABEL_42;
              }

              *&v37[v35] = v34;
              v38 = v34 + v36;
              v39 = malloc_type_realloc(v37, v38, 0x352A3853uLL);
              if (!v39)
              {
                goto LABEL_42;
              }

              v40 = v39;
              memcpy(&v39[v36], v33, v34);
              v6 = malloc_type_realloc(v40, v38 + 4, 0x352A3853uLL);
              if (!v6)
              {
                goto LABEL_42;
              }

              *(v6 + v38) = *v32;
              ++v11;
              v27 = *(v26 + 32);
              v30 = v38 + 4;
            }

            ++v29;
            v28 += 32;
            if (v29 >= v27)
            {
              goto LABEL_38;
            }
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (a2 != 1708)
      {
        return v5;
      }

      v6 = malloc_type_realloc(0, 4uLL, 0x352A3853uLL);
      if (v6)
      {
        v58 = a3;
        *v6 = 0;
        v7 = a1[14];
        v8 = *(v7 + 32);
        if (v8)
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 4;
          while (1)
          {
            v13 = *(v7 + 40);
            v14 = *(v13 + v9);
            if (v14)
            {
              v15 = *(v13 + v9 + 8);
              v16 = *(v13 + v9 + 16);
              v17 = v12;
              v18 = v12 + 4;
              v19 = malloc_type_realloc(v6, v18, 0x352A3853uLL);
              if (!v19)
              {
                goto LABEL_42;
              }

              *&v19[v17] = v16;
              v20 = v16 + v18;
              v21 = malloc_type_realloc(v19, v20, 0x352A3853uLL);
              if (!v21)
              {
                goto LABEL_42;
              }

              v22 = v21;
              memcpy(&v21[v18], v15, v16);
              v23 = malloc_type_realloc(v22, v20 + 4, 0x352A3853uLL);
              if (!v23)
              {
                goto LABEL_42;
              }

              *&v23[v20] = *v14;
              v6 = malloc_type_realloc(v23, v20 + 8, 0x352A3853uLL);
              if (!v6)
              {
                goto LABEL_42;
              }

              *(v6 + v20 + 4) = v14[1];
              ++v11;
              v8 = *(v7 + 32);
              v12 = v20 + 8;
            }

            ++v10;
            v9 += 32;
            if (v10 >= v8)
            {
              goto LABEL_38;
            }
          }
        }

LABEL_37:
        v11 = 0;
LABEL_38:
        v5 = 0;
        *v6 = v11;
        *v58 = v6;
        return v5;
      }
    }

LABEL_42:
    abort();
  }

  if (a2 != 1709)
  {
    if (a2 == 1710)
    {
      CompiledShaderVersion = glpGetCompiledShaderVersion(a1[6]);
      v25 = glpGLSLVersionToInt(CompiledShaderVersion);
      v5 = 0;
      *a3 = v25;
    }

    return v5;
  }

  v41 = malloc_type_realloc(0, 4uLL, 0x352A3853uLL);
  if (!v41)
  {
    goto LABEL_42;
  }

  v42 = v41;
  *v41 = 0;
  OutputHash = glpLinkedProgramGetOutputHash(a1[6]);
  v44 = *(OutputHash + 32);
  if (v44)
  {
    v45 = OutputHash;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 4;
    while (1)
    {
      v50 = *(v45 + 40);
      if (*(v50 + v46))
      {
        v51 = *(v50 + v46 + 8);
        v52 = *(v50 + v46 + 16);
        v53 = v49;
        v54 = v49 + 4;
        v55 = malloc_type_realloc(v42, v54, 0x352A3853uLL);
        if (!v55)
        {
          goto LABEL_42;
        }

        *&v55[v53] = v52;
        v56 = malloc_type_realloc(v55, v52 + v54, 0x352A3853uLL);
        if (!v56)
        {
          goto LABEL_42;
        }

        v42 = v56;
        memcpy(v56 + v54, v51, v52);
        ++v48;
        v44 = *(v45 + 32);
        v49 = v52 + v54;
      }

      ++v47;
      v46 += 32;
      if (v47 >= v44)
      {
        goto LABEL_40;
      }
    }
  }

  v48 = 0;
LABEL_40:
  v5 = 0;
  *v42 = v48;
  *a3 = v42;
  return v5;
}

dispatch_queue_t ShInitializeLibrary()
{
  result = dispatch_queue_create("OpenGL Caching", 0);
  gSerialQueue = result;
  return result;
}

void ShTerminateLibrary()
{
  if (compilerCache)
  {
    glpCacheDelete(compilerCache);
    compilerCache = 0;
  }

  if (linkerCache)
  {
    glpCacheDelete(linkerCache);
    linkerCache = 0;
  }

  dispatch_release(gSerialQueue);
  gSerialQueue = 0;
}

uint64_t getBindingInfoForType(int a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int *a7, uint64_t a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, int a12, uint64_t a13)
{
  v17 = a13;
  v126 = a12;
  v130 = *MEMORY[0x277D85DE8];
  v18 = *(a13 + 48) && *(a13 + 16) || *(a13 + 56) != 0;
  v123 = v18;
  Kind = glpTypeGetKind(a7);
  v20 = 0;
  LODWORD(v21) = 1;
  v122 = a7;
  if (Kind > 1)
  {
    if ((Kind - 2) >= 2)
    {
      v30 = a7;
      if (Kind != 5)
      {
        goto LABEL_118;
      }

      goto LABEL_74;
    }

    if (glpTypeGetKind(a7) == 3)
    {
      ElementCount = glpBankTypeGetElementCount(a7);
    }

    else
    {
      ElementCount = glpArrayTypeGetElementCount(a7);
    }

    v21 = ElementCount;
    if (glpTypeGetKind(a7) == 3)
    {
      ElementType = glpBankTypeGetElementType(a7);
    }

    else
    {
      ElementType = glpArrayTypeGetElementType(a7);
    }

    v30 = ElementType;
    v118 = (a4 != 0) << 10;
    v121 = glpABIGetArrayStrideForElementType(a3, ElementType, v118);
    if (a1 && *(a13 + 192) && glpTypeGetKind(a7) == 3)
    {
      v32 = glpABIGetMinimumBufferBytesForType(a3, v30, v118);
      if (*a11 == *(a13 + 120))
      {
LABEL_28:
        v33 = *(v17 + 96);
        if (v33)
        {
          *v33 = a6;
        }

        v34 = *(v17 + 112);
        if (v34)
        {
          *v34 = v32;
        }

        v35 = 0;
        LODWORD(v36) = *a9;
        goto LABEL_131;
      }

      if (*(a13 + 128))
      {
        v36 = *(a13 + 56);
        if (!v36)
        {
LABEL_130:
          v35 = 1;
LABEL_131:
          v87 = *(a13 + 104);
          if (v87)
          {
            v88 = *v87;
            v89 = *(a5 + 8);
            if (*v87 <= v89 + 1)
            {
              v88 = v89 + 1;
            }

            *v87 = v88;
          }

          BindingInfoForType = getBindingInfoForType(0, 0, a3, a4, a5, a6, v30, a8, a9, a10, a11, 0, a13);
          v91 = glpABIGetTypeSize(0, v30, 0);
          glpTypeSizeGetSize(v91);
          if ((v35 & 1) == 0)
          {
            v92 = *(a13 + 144);
            if (v92)
            {
              *v92 = v36;
            }

            v77 = *(a13 + 152);
            if (v77)
            {
              v78 = *a9 - v36;
              goto LABEL_116;
            }

            goto LABEL_117;
          }

          if (BindingInfoForType)
          {
            goto LABEL_117;
          }

          v20 = 0;
          ++*a11;
          ++*a10;
          *a11 += v21 - 1;
          *a10 += v21 - 1;
          goto LABEL_118;
        }

        v85 = strlen(v36);
        if (v85 == *(a5 + 8))
        {
          v86 = memcmp(v36, *a5, v85);
          v17 = a13;
          if (!v86)
          {
            goto LABEL_28;
          }
        }
      }

      LODWORD(v36) = 0;
      goto LABEL_130;
    }

    if (glpTypeGetKind(v30) != 5 && glpTypeGetKind(v30))
    {
      if (v21 >= 1)
      {
        v37 = 0;
        v38 = 0;
        v113 = *a9;
        v114 = 0;
        v116 = *(a5 + 8);
        while (1)
        {
          *(a5 + 8) = v116;
          *__src = 0u;
          v129 = 0u;
          v39 = snprintf_l(__src, 0x20uLL, 0, "[%d]", v38);
          if (v123)
          {
            v40 = malloc_type_realloc(*a5, *(a5 + 8) + v39, 0x352A3853uLL);
            if (!v40)
            {
              goto LABEL_180;
            }

            *a5 = v40;
            memcpy(&v40[*(a5 + 8)], __src, v39);
          }

          v41 = v21;
          v42 = *(a5 + 8) + v39;
          *(a5 + 8) = v42;
          if (!a1)
          {
            v46 = v126;
            goto LABEL_62;
          }

          v43 = glpABIGetMinimumBufferBytesForType(a3, v30, v118);
          if (*a11 != *(v17 + 120))
          {
            if (!*(v17 + 128))
            {
              goto LABEL_54;
            }

            v47 = *(v17 + 56);
            if (!v47 || (v48 = strlen(v47), v48 != *(a5 + 8)))
            {
              v17 = a13;
              goto LABEL_54;
            }

            v49 = memcmp(v47, *a5, v48);
            v17 = a13;
            if (v49)
            {
              goto LABEL_54;
            }
          }

          v44 = *(v17 + 96);
          if (v44)
          {
            *v44 = a6;
          }

          v45 = *(v17 + 112);
          if (v45)
          {
            *v45 = v43;
          }

          v114 = *a9;
          v37 = 1;
LABEL_54:
          v50 = *(v17 + 104);
          if (v50)
          {
            v51 = *v50;
            v52 = *(a5 + 8);
            if (*v50 <= v52 + 1)
            {
              v51 = v52 + 1;
            }

            *v50 = v51;
          }

          v46 = *(v17 + 193);
          if (*(v17 + 193))
          {
            v53 = glpTypeGetKind(v122);
            v46 = 0;
            if (v38)
            {
              if (v53 == 3)
              {
                v114 = v113;
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          v20 = getBindingInfoForType(0, 0, a3, a4, a5, a6, v30, a8, a9, a10, a11, v46, v17);
          v54 = glpABIGetTypeSize(0, v30, 0);
          a8 = glpTypeSizeGetSize(v54) + a8;
          if (!a1)
          {
            goto LABEL_66;
          }

          if (v20)
          {
            if (!v37)
            {
              goto LABEL_117;
            }

LABEL_176:
            v112 = *(v17 + 144);
            if (v112)
            {
              *v112 = v114;
            }

            v77 = *(v17 + 152);
            if (v77)
            {
              v78 = *a9 - v114;
LABEL_116:
              *v77 = v78;
            }

            goto LABEL_117;
          }

LABEL_64:
          *(a5 + 8) = v42;
          if (v37)
          {
            goto LABEL_176;
          }

          v20 = 0;
          ++*a11;
          ++*a10;
LABEL_66:
          if (++v38 < v41)
          {
            v21 = v41;
            v126 += v121;
            if (!v20)
            {
              continue;
            }
          }

          goto LABEL_118;
        }
      }

LABEL_170:
      v20 = 0;
      goto LABEL_118;
    }

    if (!v123)
    {
      goto LABEL_72;
    }

    v55 = malloc_type_realloc(*a5, (*(a5 + 8) + 3), 0x352A3853uLL);
    if (v55)
    {
      *a5 = v55;
      v56 = &v55[*(a5 + 8)];
      v56[2] = 93;
      *v56 = 12379;
LABEL_72:
      *(a5 + 8) += 3;
      LODWORD(v20) = v121;
      if (!*(a13 + 80))
      {
        goto LABEL_83;
      }

LABEL_74:
      v57 = *(a13 + 56);
      if (!v57)
      {
        goto LABEL_84;
      }

      v58 = strlen(*(a13 + 56));
      LODWORD(v57) = v58 == *(a5 + 8) && memcmp(v57, *a5, v58) == 0;
      if (glpTypeGetKind(v122) != 2 || (v57 & 1) != 0)
      {
        goto LABEL_84;
      }

      v59 = strlen(*(a13 + 56));
      if (v59 == *(a5 + 8) - 3)
      {
        LODWORD(v57) = memcmp(*(a13 + 56), *a5, v59) == 0;
      }

      else
      {
LABEL_83:
        LODWORD(v57) = 0;
      }

LABEL_84:
      if (*a9 == *(a13 + 72) || v57 != 0)
      {
        if (glpTypeGetKind(v30))
        {
          v61 = 0;
        }

        else
        {
          PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v30);
          v61 = glpPrimitiveTypeGetCategory(PrimitiveType) == 3;
        }

        v68 = *(a13 + 32);
        if (v68)
        {
          *v68 = v21;
        }

        if (*(a13 + 40))
        {
          v69 = glpPrimitiveTypeGetPrimitiveType(v30);
          **(a13 + 40) = glpPrimitiveTypeGetGLType(v69);
        }

        v70 = *(a13 + 160);
        if (v70)
        {
          *v70 = a12;
        }

        v71 = *(a13 + 168);
        if (v71)
        {
          *v71 = v20;
        }

        v72 = *(a13 + 176);
        if (v72)
        {
          if (v61)
          {
            v73 = glpPrimitiveTypeGetPrimitiveType(v30);
            v74 = glpABIGetMatrixStride(a3, v73, (a4 != 0) << 10);
            v72 = *(a13 + 176);
          }

          else
          {
            v74 = 0;
          }

          *v72 = v74;
        }

        v75 = *(a13 + 184);
        if (v75)
        {
          v76 = a4;
          if (!v61)
          {
            v76 = 0;
          }

          *v75 = v76;
        }

        v77 = *(a13 + 96);
        if (v77)
        {
          v78 = a6;
          goto LABEL_116;
        }

        goto LABEL_117;
      }

      v62 = glpABIGetTypeSize(0, v30, 0);
      glpTypeSizeGetSize(v62);
      v63 = *(a13 + 8);
      if (v63)
      {
        v64 = *v63;
        v65 = *(a5 + 8);
        if (*v63 <= v65 + 1)
        {
          v64 = v65 + 1;
        }

        *v63 = v64;
      }

      v20 = 0;
      v66 = a9;
      goto LABEL_95;
    }

LABEL_180:
    abort();
  }

  if (!Kind)
  {
    v30 = a7;
    goto LABEL_74;
  }

  if (Kind != 1)
  {
    goto LABEL_118;
  }

  v23 = *(a5 + 8);
  if (!a1)
  {
    v29 = 0;
    v28 = 1;
    v81 = *(a5 + 8);
    v24 = v122;
    goto LABEL_147;
  }

  v24 = a7;
  v25 = glpABIGetMinimumBufferBytesForType(a3, a7, (a4 != 0) << 10);
  if (*a11 == *(a13 + 120))
  {
    goto LABEL_13;
  }

  if (!*(a13 + 128))
  {
    goto LABEL_124;
  }

  v82 = *(a13 + 56);
  if (v82)
  {
    v83 = strlen(v82);
    if (v83 == *(a5 + 8))
    {
      v84 = memcmp(v82, *a5, v83);
      v17 = a13;
      if (!v84)
      {
LABEL_13:
        v26 = *(v17 + 96);
        if (v26)
        {
          *v26 = a6;
        }

        v27 = *(v17 + 112);
        if (v27)
        {
          *v27 = v25;
        }

        v28 = 0;
        v29 = *a9;
        goto LABEL_143;
      }

LABEL_124:
      v29 = 0;
      v28 = 1;
      goto LABEL_143;
    }
  }

  v29 = 0;
  v28 = 1;
  v17 = a13;
LABEL_143:
  v93 = *(v17 + 104);
  v81 = *(a5 + 8);
  if (v93)
  {
    v94 = *v93;
    if (*v93 <= v81 + 1)
    {
      v94 = v81 + 1;
    }

    *v93 = v94;
    v81 = *(a5 + 8);
  }

LABEL_147:
  if (!a2)
  {
    if (v123)
    {
      v95 = malloc_type_realloc(*a5, (v81 + 1), 0x352A3853uLL);
      if (!v95)
      {
        goto LABEL_180;
      }

      *a5 = v95;
      v95[*(a5 + 8)] = 46;
      v81 = *(a5 + 8);
    }

    *(a5 + 8) = ++v81;
  }

  v96 = glpAggregateTypeGetElementCount(v24);
  if (v96 < 1)
  {
    if (!a1)
    {
      goto LABEL_170;
    }

    goto LABEL_168;
  }

  v97 = v96;
  v117 = v23;
  v119 = v28;
  v115 = v29;
  v98 = 1;
  do
  {
    ElementFlags = glpAggregateTypeGetElementFlags(v24, v98 - 1);
    v100 = glpABIGetStructTypeRangeOfField(a3, v24, (a4 != 0) << 10, v98 - 1);
    v101 = glpAggregateTypeGetElementType(v24, v98 - 1);
    FieldName = glpStructTypeGetFieldName(v24, v98 - 1);
    v104 = v103;
    *(a5 + 8) = v81;
    if (v123)
    {
      v105 = FieldName;
      v106 = malloc_type_realloc(*a5, v81 + v103, 0x352A3853uLL);
      if (!v106)
      {
        goto LABEL_180;
      }

      *a5 = v106;
      memcpy(&v106[*(a5 + 8)], v105, v104);
      v107 = *(a5 + 8);
    }

    else
    {
      v107 = v81;
    }

    *(a5 + 8) = v107 + v104;
    if ((ElementFlags & 0x400) != 0)
    {
      v108 = 1;
    }

    else
    {
      v108 = a4;
    }

    v17 = a13;
    v20 = getBindingInfoForType(0, 0, a3, v108, a5, a6, v101, a8, a9, a10, a11, v100 + a12, a13);
    v109 = glpABIGetTypeSize(0, v101, 0);
    Size = glpTypeSizeGetSize(v109);
    v24 = v122;
    if (v98 >= v97)
    {
      break;
    }

    a8 = (Size + a8);
    ++v98;
  }

  while (!v20);
  v28 = v119;
  if (a1)
  {
    v29 = v115;
    v23 = v117;
    if (v20)
    {
      if (v119)
      {
        goto LABEL_117;
      }

LABEL_171:
      v111 = *(v17 + 144);
      if (v111)
      {
        *v111 = v29;
      }

      v77 = *(v17 + 152);
      if (v77)
      {
        v78 = *a9 - v29;
        goto LABEL_116;
      }

LABEL_117:
      v20 = 1;
      goto LABEL_118;
    }

LABEL_168:
    *(a5 + 8) = v23;
    if (v28)
    {
      v20 = 0;
      ++*a11;
      v66 = a10;
LABEL_95:
      ++*v66;
      goto LABEL_118;
    }

    goto LABEL_171;
  }

LABEL_118:
  v79 = *MEMORY[0x277D85DE8];
  return v20;
}

void *glpCopyString(uint64_t a1, const void *a2, unsigned int a3)
{
  v4 = a3;
  v5 = (*(a1 + 8))(*a1, a3, "String Contents (copy)");
  memcpy(v5, a2, v4);
  return v5;
}

char *glpLowerCaseCopyOfString(uint64_t a1, const void *a2, unsigned int a3)
{
  v4 = a3;
  v5 = (*(a1 + 8))(*a1, a3, "String Contents (copy)");
  memcpy(v5, a2, v4);
  if (v4)
  {
    v6 = MEMORY[0x277D85DE0];
    v7 = v5;
    do
    {
      v8 = *v7;
      if ((v8 & 0x80000000) != 0)
      {
        LOBYTE(v9) = ___tolower_l(v8, 0);
      }

      else
      {
        v9 = *(v6 + 4 * v8 + 1084);
      }

      *v7++ = v9;
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t glpStringsCompare(const char *a1, unsigned int a2, char *__s2, unsigned int a4)
{
  v5 = a2 - a4;
  if (a2 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2;
  }

  LODWORD(result) = strncmp(a1, __s2, v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

void *glpMakeStringBuffer(void *a1)
{
  v2 = (a1[1])(*a1, 24, "String Buffer");
  *v2 = a1;
  v2[1] = 64;
  v2[2] = (a1[1])(*a1, 64, "Vector Storage (char)");
  return v2;
}

uint64_t glpDestroyStringBuffer(uint64_t **a1)
{
  ((*a1)[3])(**a1, a1[2]);
  v2 = (*a1)[3];
  v3 = **a1;

  return v2(v3, a1);
}

uint64_t glpStringBufferGetString(uint64_t a1)
{
  result = *(a1 + 16);
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = v3;
    v5 = v3;
    do
    {
      v5 ^= 32 * v5 + (v5 >> 2) + *(result + v4 - 1);
      v4 += ~(v3 >> 5);
    }

    while (v4 > v3 >> 5);
  }

  return result;
}

uint64_t glpStringBufferGetCString(uint64_t *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = v3 + 1;
  if (v3 + 1 <= v2)
  {
    v8 = a1[2];
    v9 = *(a1 + 3);
  }

  else
  {
    if (v2 <= 1)
    {
      v2 = 1;
    }

    v5 = 2 * v2;
    if (v5 <= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = *a1;
    v8 = (*(*a1 + 8))(**a1, v6, "Vector Storage (char, growth)");
    memcpy(v8, a1[2], *(a1 + 3));
    (*(v7 + 24))(*v7, a1[2]);
    *(a1 + 2) = v6;
    a1[2] = v8;
    v9 = *(a1 + 3);
  }

  memmove(&v8[v3 + 1], &v8[v3], (v9 - v3));
  *(a1[2] + v3) = 0;
  return a1[2];
}

void *glpStringBufferAppend(uint64_t *a1, const void *a2, unsigned int a3)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = v7 + a3;
  if (v7 + a3 <= v6)
  {
    v12 = a1[2];
    v13 = *(a1 + 3);
  }

  else
  {
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v9 = 2 * v6;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    v11 = *a1;
    v12 = (*(*a1 + 8))(**a1, v10, "Vector Storage (char, growth)");
    memcpy(v12, a1[2], *(a1 + 3));
    (*(v11 + 24))(*v11, a1[2]);
    *(a1 + 2) = v10;
    a1[2] = v12;
    v13 = *(a1 + 3);
  }

  memmove(&v12[v7 + 1], &v12[v7], (v13 - v7));
  result = memcpy((a1[2] + v7), a2, a3);
  *(a1 + 3) += a3;
  return result;
}

void *glpStringBufferAppendCString(uint64_t *a1, char *__s)
{
  v4 = strlen(__s);

  return glpStringBufferAppend(a1, __s, v4);
}

uint64_t glpStringBufferAppendFormatv(uint64_t *a1, char *a2, va_list a3)
{
  v5 = *(a1 + 3);
  v6 = (*(a1 + 2) - v5);
  v7 = vsnprintf_l((a1[2] + v5), v6, 0, a2, a3);
  v8 = (v7 + 1);
  if (v8 <= v6)
  {
    v14 = a1[2];
  }

  else
  {
    v9 = *(a1 + 2);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = 2 * v9;
    v11 = v8 + *(a1 + 3);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = *a1;
    v14 = (*(*a1 + 8))(**a1, v12, "Vector Storage (char, growth)");
    memcpy(v14, a1[2], *(a1 + 3));
    (*(v13 + 24))(*v13, a1[2]);
    *(a1 + 2) = v12;
    a1[2] = v14;
  }

  result = vsnprintf_l(v14 + *(a1 + 3), v8, 0, a2, a3);
  *(a1 + 3) += v7;
  return result;
}

uint64_t glpDeepCopyType(void *a1, uint64_t a2)
{
  StructType = a2;
  v37 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 > 2)
  {
    if (v4 == 3)
    {
      v30 = *(a2 + 8);
      v31 = glpDeepCopyType(a1, *(a2 + 16));
      v32 = *(StructType + 4);
      StructType = (a1[1])(*a1, 24, "Bank Type");
      *StructType = 0;
      *(StructType + 8) = 0;
      *(StructType + 4) = v32;
      *(StructType + 8) = v30;
      *(StructType + 16) = v31;
      *StructType = 3;
      goto LABEL_19;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        v7 = glpCopyString(a1, *(a2 + 16), *(a2 + 24));
        v9 = v8;
        StructType = (a1[1])(*a1, 32, "Subroutine Type");
        *StructType = 0u;
        *(StructType + 16) = 0u;
        *StructType = 5;
        *(StructType + 16) = v7;
        *(StructType + 24) = v9;
        *(StructType + 8) = 0;
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    v23 = *(a2 + 4);
    MEMORY[0x28223BE20](a1);
    v24 = v35 - ((8 * v23 + 15) & 0xFFFFFFFF0);
    bzero(v24, 8 * v23);
    MEMORY[0x28223BE20](v25);
    bzero(v24, 8 * v23);
    MEMORY[0x28223BE20](v26);
    bzero(v24, 8 * v23);
    if (v23)
    {
      v27 = 0;
      do
      {
        v28 = *(StructType + 8);
        *&v24[v27] = *(*(StructType + 16) + v27);
        *&v24[v27] = glpDeepCopyType(a1, *(v28 + v27));
        *&v24[v27] = glpCopyLayoutObject(a1, *(*(StructType + 24) + v27));
        v27 += 8;
      }

      while (8 * v23 != v27);
    }

    v29 = glpDeepCopyType(a1, *(StructType + 32));
    StructType = (a1[1])(*a1, 40, "Function Type");
    *StructType = 0u;
    *(StructType + 16) = 0u;
    *(StructType + 32) = 0;
    *StructType = 4;
    initAggregateType(a1, StructType, v23, v24, v24, v24);
    *(StructType + 32) = v29;
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v5 = glpDeepCopyType(a1, *(a2 + 16));
        v6 = *(StructType + 4);
        StructType = (a1[1])(*a1, 24, "Array Type");
        *StructType = 0;
        *(StructType + 8) = 0;
        *StructType = 2;
        *(StructType + 16) = v5;
        *(StructType + 4) = v6;
        goto LABEL_19;
      }

LABEL_20:
      abort();
    }

    v35[1] = v35;
    v10 = *(a2 + 4);
    MEMORY[0x28223BE20](a1);
    v36 = &v35[-2 * v10];
    bzero(v36, v11);
    MEMORY[0x28223BE20](v12);
    v13 = v35 - ((8 * v10 + 15) & 0xFFFFFFFF0);
    bzero(v13, 8 * v10);
    MEMORY[0x28223BE20](v14);
    bzero(v13, 8 * v10);
    MEMORY[0x28223BE20](v15);
    bzero(v13, 8 * v10);
    if (v10)
    {
      v16 = 0;
      v17 = v36 + 8;
      v18 = 8;
      do
      {
        *(v17 - 1) = glpCopyString(a1, *(*(StructType + 48) + v18 - 8), *(*(StructType + 48) + v18));
        *v17 = v19;
        *&v13[v16] = glpDeepCopyType(a1, *(*(StructType + 8) + v16));
        v20 = *(StructType + 24);
        *&v13[v16] = *(*(StructType + 16) + v16);
        *&v13[v16] = glpCopyLayoutObject(a1, *(v20 + v16));
        v16 += 8;
        v17 += 2;
        v18 += 16;
      }

      while (8 * v10 != v16);
    }

    v21 = glpCopyString(a1, *(StructType + 32), *(StructType + 40));
    StructType = glpMakeStructType(a1, v21, v22, v10, v36, v13, v13, v13);
  }

LABEL_19:
  v33 = *MEMORY[0x277D85DE8];
  return StructType;
}

uint64_t glpStructTypeGetFieldName(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 48) + 16 * a2);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t glpMakeStructType(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = (a1[1])(*a1, 56, "Struct Type");
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0;
  *v16 = 1;
  initAggregateType(a1, v16, a4, a6, a7, a8);
  *(v16 + 48) = (a1[1])(*a1, 16 * a4, "Struct type (field name storage)");
  if (a4)
  {
    v17 = 0;
    do
    {
      *(*(v16 + 48) + v17) = *(a5 + v17);
      v17 += 16;
    }

    while (16 * a4 != v17);
  }

  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  return v16;
}

uint64_t glpMakeArrayType(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = (*(a1 + 8))(*a1, 24, "Array Type");
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *result = 2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  return result;
}

uint64_t glpMakeBankType(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = (*(a1 + 8))(*a1, 24, "Bank Type");
  *result = 0;
  *(result + 8) = 0;
  *(result + 4) = a4;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *result = 3;
  return result;
}

uint64_t glpMakeFunctionType(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (a1[1])(*a1, 40, "Function Type");
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  *v12 = 4;
  initAggregateType(a1, v12, a3, a4, a5, a6);
  *(v12 + 32) = a2;
  return v12;
}

double glpMakeSubroutineType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a1 + 8))(*a1, 32, "Subroutine Type");
  result = 0.0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *v7 = 5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 8) = a4;
  return result;
}

void *glpDestroyType(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2 > 2)
  {
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        if (v4 != 5)
        {
          goto LABEL_21;
        }

        (result[3])(*result, *(a2 + 16));
        goto LABEL_17;
      }

      destroyAggregateType(result, a2);
      v5 = *(a2 + 32);
      goto LABEL_16;
    }
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    if (v4 == 1)
    {
      destroyAggregateType(result, a2);
      (v3[3])(*v3, *(a2 + 32));
      v6 = *(a2 + 4);
      if (v6)
      {
        v7 = 0;
        v8 = 16 * v6;
        do
        {
          (v3[3])(*v3, *(*(a2 + 48) + v7));
          v7 += 16;
        }

        while (v8 != v7);
      }

      (v3[3])(*v3, *(a2 + 48));
      goto LABEL_17;
    }

    if (v4 != 2)
    {
LABEL_21:
      abort();
    }
  }

  v5 = *(a2 + 16);
LABEL_16:
  glpDestroyType(v3, v5);
LABEL_17:
  v9 = v3[3];
  v10 = *v3;

  return v9(v10, a2);
}

uint64_t destroyAggregateType(void *a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      glpDestroyType(a1, *(*(a2 + 8) + v5));
      glpDestroyLayoutObject(a1, *(*(a2 + 24) + v5));
      v5 += 8;
    }

    while (v6 != v5);
  }

  (a1[3])(*a1, *(a2 + 8));
  (a1[3])(*a1, *(a2 + 16));
  v7 = a1[3];
  v8 = *a1;
  v9 = *(a2 + 24);

  return v7(v8, v9);
}

uint64_t glpTypesEqual(unsigned int *a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  while (1)
  {
    result = *v3;
    if (result != *v2)
    {
      return 0;
    }

    if (result != 5)
    {
      break;
    }

    result = glpStringsEqual(*(v3 + 2), *(v3 + 3), *(v2 + 16), *(v2 + 24));
    if (!result)
    {
      return result;
    }

    v3 = **(v3 + 1);
    v2 = **(v2 + 8);
    if (v3 == v2)
    {
      return 1;
    }
  }

  if (result <= 1)
  {
    if (!result)
    {
      return result;
    }

    if (result != 1)
    {
LABEL_31:
      abort();
    }

    result = glpStringsEqual(*(v3 + 4), *(v3 + 5), *(v2 + 32), *(v2 + 40));
    if (!result)
    {
      return result;
    }

    result = aggregateGutsEqual(v3, v2);
    if (!result)
    {
      return result;
    }

    v5 = v3[1];
    if (v5)
    {
      v6 = 0;
      v7 = 16 * v5;
      do
      {
        result = glpStringsEqual(*(*(v3 + 6) + v6), *(*(v3 + 6) + v6 + 8), *(*(v2 + 48) + v6), *(*(v2 + 48) + v6 + 8));
        if (!result)
        {
          break;
        }

        v6 += 16;
        result = 1;
      }

      while (v7 != v6);
      return result;
    }

    return 1;
  }

  if (result == 2)
  {
    result = glpTypesEqual(*(v3 + 2), *(v2 + 16));
    if (!result)
    {
      return result;
    }

    return v3[1] == *(v2 + 4);
  }

  if (result == 3)
  {
    result = glpTypesEqual(*(v3 + 2), *(v2 + 16));
    if (!result)
    {
      return result;
    }

    if (v3[2] != *(v2 + 8))
    {
      return 0;
    }

    return v3[1] == *(v2 + 4);
  }

  if (result != 4)
  {
    goto LABEL_31;
  }

  result = glpTypesEqual(*(v3 + 4), *(v2 + 32));
  if (result)
  {

    return aggregateGutsEqual(v3, v2);
  }

  return result;
}

uint64_t aggregateGutsEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2 != *(a2 + 4))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = 0;
  while (1)
  {
    result = glpTypesEqual(*(*(a1 + 8) + 8 * v5), *(*(a2 + 8) + 8 * v5));
    if (!result)
    {
      break;
    }

    if (((*(*(a2 + 16) + 8 * v5) ^ *(*(a1 + 16) + 8 * v5)) & 0xFFFFFFFFFFFFFDFFLL) != 0)
    {
      return 0;
    }

    if (++v5 >= *(a1 + 4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _eachPrimitiveComponent(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = result; ; i = *(i + 16))
  {
    v6 = *i;
    if ((*i - 2) >= 2)
    {
      break;
    }
  }

  if (v6 <= 0)
  {
    if (!v6)
    {
      v8 = *(i + 4);
      v9 = *(a3 + 16);

      return v9(a3, v8, a2);
    }
  }

  else if (v6 == 1)
  {
    if (*(i + 4))
    {
      v7 = 0;
      do
      {
        result = _eachPrimitiveComponent(*(*(i + 8) + 8 * v7), a2, a3);
        if (a2)
        {
          break;
        }

        ++v7;
      }

      while (v7 < *(i + 4));
    }
  }

  else if (v6 == 4 || v6 == 5)
  {
    abort();
  }

  return result;
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

      return dword_23A29CDE0[Category];
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

uint64_t glpTypeIsSized(int *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 1;
  }

  if (v1 == 2)
  {
    return a1[1] != -1;
  }

  if (v1 != 1)
  {
    abort();
  }

  v3 = 0;
  glpStructTypeGetSizesAndAlignments(0, a1, 0, &v3, 0, 0);
  return glpTypeSizeIsValid(v3);
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

uint64_t initAggregateType(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a2 + 4) = a3;
  v12 = 8 * a3;
  *(a2 + 8) = (a1[1])(*a1, v12, "Aggregate type (element type storage)");
  *(a2 + 16) = (a1[1])(*a1, v12, "Aggregate type (element flag storage)");
  result = (a1[1])(*a1, v12, "Aggregate type (element layout storage)");
  *(a2 + 24) = result;
  if (a3)
  {
    v14 = 0;
    do
    {
      *(*(a2 + 8) + v14) = *(a4 + v14);
      v15 = *(a2 + 24);
      *(*(a2 + 16) + v14) = *(a5 + v14);
      *(v15 + v14) = *(a6 + v14);
      v14 += 8;
    }

    while (8 * a3 != v14);
  }

  return result;
}

uint64_t glpAggregateTypeMangleName(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  StringBuffer = glpMakeStringBuffer(a4);
  glpStringBufferAppendCString(StringBuffer, "#");
  glpStringBufferAppendString(StringBuffer, a2, a3);
  if (*(a1 + 4))
  {
    v8 = 0;
    do
    {
      glpStringBufferAppendCString(StringBuffer, "@");
      appendTypeName(*(*(a1 + 8) + 8 * v8++), StringBuffer);
    }

    while (v8 < *(a1 + 4));
  }

  return glpStringBufferGetString(StringBuffer);
}

void *appendTypeName(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  if (*a1 >= 2)
  {
    if (v4 < 4)
    {
      appendTypeName(*(a1 + 16), a2);
      if (*(a1 + 4) != -1)
      {
        return glpStringBufferAppendFormat(a2, "[%u]", v5, v6, v7, v8, v9, v10, *(a1 + 4));
      }

      v14 = "[]";
      goto LABEL_12;
    }

    if (v4 == 5)
    {
      appendTypeName_cold_1(a1, a2);
      abort();
    }

    goto LABEL_17;
  }

  if (!v4)
  {
    v14 = glpPrimitiveTypeToString(*(a1 + 4));
LABEL_12:

    return glpStringBufferAppendCString(a2, v14);
  }

  if (v4 != 1)
  {
LABEL_17:
    abort();
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);

  return glpStringBufferAppendString(a2, v12, v13);
}

uint64_t glpStructTypeGetFieldIndex(uint64_t a1, const char *a2, size_t __n)
{
  v3 = *(a1 + 4);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = 0;
  v8 = 0;
  v9 = 16 * v3;
  while (!glpStringsEqual(a2, __n, *(*(a1 + 48) + v7), *(*(a1 + 48) + v7 + 8)))
  {
    v7 += 16;
    v8 = (v8 + 1);
    if (v9 == v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v8;
}

uint64_t glpTypeParseDeref(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, size_t), uint64_t a3, unsigned int a4, void *a5, uint64_t *a6, _DWORD *a7)
{
  v45 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  LODWORD(v14) = 0;
  v46 = 0;
  v42 = a3 + 1;
  v15 = 1;
  do
  {
    if (v11 == a4)
    {
      v16 = v15 != 0;
      if (v13 == a4 && !v15)
      {
        goto LABEL_46;
      }

LABEL_12:
      if (!v16)
      {
        return 0;
      }

      v19 = v11 - v13;
      if (v19)
      {
        v20 = v11 - v13;
        LODWORD(v21) = v11 - v13;
        do
        {
          v21 = (32 * v21 + (v21 >> 2) + *(a3 + v13 + v20 - 1)) ^ v21;
          v20 += ~(v19 >> 5);
        }

        while (v20 > v19 >> 5);
        v22 = v21 << 32;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22 | v19;
      if (v10)
      {
        if (*v10 != 1)
        {
          return 0;
        }

        FieldIndex = glpStructTypeGetFieldIndex(v10, (a3 + v13), v23);
        if (FieldIndex == -1)
        {
          return 0;
        }

        v25 = FieldIndex;
        v26 = *(*(v10 + 8) + 8 * FieldIndex);
        v27 = glpABIGetStructTypeRangeOfField(0, v10, v12, FieldIndex);
        v14 = HIDWORD(v27);
        v46 += v27;
        v12 |= *(*(v10 + 16) + 8 * v25) & 0x400;
        v10 = v26;
        v23 = v9;
      }

      else
      {
        v28 = a2(a1, a3 + v13, v23);
        if (v28 == -1)
        {
          v10 = 0;
          v15 = 1;
          v9 = v23;
          v45 = a3 + v13;
          goto LABEL_43;
        }

        v10 = v28;
        if (!v28)
        {
          return 0;
        }

        v29 = glpABIGetTypeSize(0, v28, 0);
        LODWORD(v14) = glpTypeSizeGetSize(v29);
        v46 = 0;
        v45 = a3 + v13;
      }

      v13 = v11 + 1;
      if (v11 == a4)
      {
        v15 = 0;
        v11 = a4;
        v9 = v23;
        goto LABEL_43;
      }

      v18 = v11;
      v17 = *(a3 + v11);
      v9 = v23;
      goto LABEL_28;
    }

    v17 = *(a3 + v11);
    if (v17 != 91 && v17 != 46)
    {
      goto LABEL_43;
    }

    v16 = v15 != 0;
    if (v11 != v13 || v15)
    {
      goto LABEL_12;
    }

    if (!*v10)
    {
      return 0;
    }

    v18 = v11;
    v13 = v11;
LABEL_28:
    if (v17 == 46)
    {
      v15 = *v10;
      if (*v10 != 1)
      {
        return 0;
      }

      v13 = v11 + 1;
    }

    else
    {
      if (v17 == 91)
      {
        v30 = v18 << 32;
        v31 = (v42 + v18);
        v11 = v18;
        while (++v11 < a4)
        {
          v32 = *v31++;
          v30 += 0x100000000;
          if ((v32 - 48) >= 0xA)
          {
            if (v13 != v11)
            {
              v33 = v30 >> 32;
              if (*(a3 + (v30 >> 32)) == 93)
              {
                v47 = 0;
                v34 = strtoul_l((a3 + v13), &v47, 10, 0);
                if (*v10 == 2 && *(a3 + v33) == 93)
                {
                  v35 = v34;
                  if (*(v10 + 4) > v34)
                  {
                    v13 = v11 + 1;
                    v10 = *(v10 + 16);
                    v36 = glpABIGetTypeSize(0, v10, 0);
                    v46 += glpTypeSizeGetSize(v36) * v35;
                    v37 = glpABIGetTypeSize(0, v10, 0);
                    LODWORD(v14) = glpTypeSizeGetSize(v37);
                    goto LABEL_39;
                  }
                }
              }
            }

            return 0;
          }
        }

        return 0;
      }

LABEL_39:
      v15 = 0;
    }

LABEL_43:
    ++v11;
  }

  while (v11 <= a4);
  if (v15)
  {
    return 0;
  }

LABEL_46:
  *a5 = v45;
  a5[1] = v9;
  *a6 = v10;
  result = 1;
  *a7 = v46;
  a7[1] = v14;
  return result;
}

uint64_t glpTypeHumanReadableDescription(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  if (*a1 <= 2)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        if (v5 != 2)
        {
LABEL_28:
          abort();
        }

        goto LABEL_10;
      }

      v7 = *(a1 + 32);
      v15 = *(a1 + 40);
    }

    else
    {
      v7 = glpPrimitiveTypeToString(*(a1 + 4));
      v19 = strlen(v7);
      if (v19)
      {
        v20 = v19;
        v21 = v19;
        do
        {
          v21 ^= 32 * v21 + (v21 >> 2) + v7[v20 - 1];
          v20 += ~(v19 >> 5);
        }

        while (v20 > v19 >> 5);
      }
    }

    return v7;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      StringBuffer = glpMakeStringBuffer(a4);
      humanReadableDescriptionToBuffer(*(a1 + 32), StringBuffer);
      glpStringBufferAppendCString(StringBuffer, " ");
      glpStringBufferAppendString(StringBuffer, a2, a3);
      glpStringBufferAppendCString(StringBuffer, "(");
      if (*(a1 + 4))
      {
        v18 = 0;
        do
        {
          if (v18)
          {
            glpStringBufferAppendCString(StringBuffer, ", ");
          }

          humanReadableDescriptionToBuffer(*(*(a1 + 8) + 8 * v18++), StringBuffer);
        }

        while (v18 < *(a1 + 4));
      }

      glpStringBufferAppendCString(StringBuffer, ")");
      goto LABEL_24;
    }

    if (v5 != 5)
    {
      goto LABEL_28;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    return v7;
  }

LABEL_10:
  StringBuffer = glpMakeStringBuffer(a4);
  humanReadableDescriptionToBuffer(*(a1 + 16), StringBuffer);
  if (*(a1 + 4) == -1)
  {
    glpStringBufferAppendFormat(StringBuffer, "[]", v9, v10, v11, v12, v13, v14, v23);
  }

  else
  {
    glpStringBufferAppendFormat(StringBuffer, "[%u]", v9, v10, v11, v12, v13, v14, *(a1 + 4));
  }

LABEL_24:

  return glpStringBufferGetString(StringBuffer);
}

void *humanReadableDescriptionToBuffer(void *result, uint64_t *a2)
{
  v3 = *result;
  if (*result <= 2)
  {
    if (!v3)
    {
      v6 = glpPrimitiveTypeToString(*(result + 1));
      goto LABEL_11;
    }

    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return result;
      }

      goto LABEL_9;
    }

    v4 = *(result + 4);
    v5 = *(result + 5);
    goto LABEL_15;
  }

  switch(v3)
  {
    case 3:
LABEL_9:
      humanReadableDescriptionToBuffer(*(result + 2), a2);
      v6 = "[]";
LABEL_11:

      return glpStringBufferAppendCString(a2, v6);
    case 5:
      v4 = *(result + 2);
      v5 = *(result + 3);
LABEL_15:

      return glpStringBufferAppendString(a2, v4, v5);
    case 4:
      abort();
  }

  return result;
}

void *glpDumpTypeToStringBuffer(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a2)
  {
LABEL_6:
    v14 = "NULL";
LABEL_7:

    return glpStringBufferAppendFormat(a1, v14, a3, a4, a5, a6, a7, a8, a9);
  }

  v10 = a2;
  while (1)
  {
    v11 = *v10;
    if (*v10 != 5)
    {
      break;
    }

    v38 = *(v10 + 16);
    result = glpStringBufferAppendFormat(a1, "subroutine %.*s: ", a3, a4, a5, a6, a7, a8, *(v10 + 24));
    v13 = *(v10 + 8);
    if (!v13)
    {
      return result;
    }

    v10 = *v13;
    if (!*v13)
    {
      goto LABEL_6;
    }
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      v37 = glpPrimitiveTypeToString(*(v10 + 4));
      return glpStringBufferAppendFormat(a1, "%s", v29, v30, v31, v32, v33, v34, v37);
    }

    if (v11 == 1)
    {
      v39 = *(v10 + 32);
      return glpStringBufferAppendFormat(a1, "struct %.*s", a3, a4, a5, a6, a7, a8, *(v10 + 40));
    }

    goto LABEL_32;
  }

  switch(v11)
  {
    case 2:
      v22 = "array<";
      break;
    case 3:
      v22 = "bank<";
      break;
    case 4:
      glpDumpTypeToStringBuffer(a1, *(v10 + 32));
      glpStringBufferAppendFormat(a1, " (*)(", v15, v16, v17, v18, v19, v20, v35);
      if (*(v10 + 4))
      {
        v21 = 0;
        do
        {
          if (v21)
          {
            glpStringBufferAppendFormat(a1, ", ", a3, a4, a5, a6, a7, a8, v36);
          }

          glpDumpTypeToStringBuffer(a1, *(*(v10 + 8) + 8 * v21++));
        }

        while (v21 < *(v10 + 4));
      }

      v14 = ")";
      goto LABEL_7;
    default:
LABEL_32:
      abort();
  }

  glpStringBufferAppendCString(a1, v22);
  glpDumpTypeToStringBuffer(a1, *(v10 + 16));
  if (*(v10 + 4) != -1)
  {
    return glpStringBufferAppendFormat(a1, ", %u>", v23, v24, v25, v26, v27, v28, *(v10 + 4));
  }

  return glpStringBufferAppendCString(a1, ", ?>");
}

const char *glpUnaryOperatorStringToSymbol(char *__s2)
{
  if (!strcmp("pos", __s2))
  {
    return "+";
  }

  if (!strcmp("neg", __s2))
  {
    return "-";
  }

  if (!strcmp("not", __s2))
  {
    return "!";
  }

  if (strcmp("comp", __s2))
  {
    abort();
  }

  return "~";
}

uint64_t glpAnalyzeUnaryMathOp(uint64_t a1, uint64_t a2)
{
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  Allocator = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a2, &v11);
  Kind = glpASTNodeGetKind(a2);
  if (Kind > 16)
  {
    if (Kind == 18)
    {
      v7 = "$OP_comp";
      v8 = 0xEBA2867D00000008;
      goto LABEL_10;
    }

    if (Kind == 17)
    {
      v7 = "$OP_not";
      v8 = 0x9366A7C400000007;
      goto LABEL_10;
    }

LABEL_11:
    abort();
  }

  if (Kind == 15)
  {
    v7 = "$OP_pos";
    v8 = 0xA31C9B1600000007;
    goto LABEL_10;
  }

  if (Kind != 16)
  {
    goto LABEL_11;
  }

  v7 = "$OP_neg";
  v8 = 0x34DF279C00000007;
LABEL_10:
  UnopFuncallFragment = glpMakeUnopFuncallFragment(Allocator, &v11, v7, v8, Expr);
  return glpSANode(a1, UnopFuncallFragment);
}

const char *glpBinaryOperatorStringToSymbol(char *__s2)
{
  if (!strcmp("slt", __s2))
  {
    return "<";
  }

  if (!strcmp("sle", __s2))
  {
    return "<=";
  }

  if (!strcmp("sgt", __s2))
  {
    return ">";
  }

  if (!strcmp("sge", __s2))
  {
    return ">=";
  }

  if (!strcmp("seq", __s2))
  {
    return "==";
  }

  if (!strcmp("sne", __s2))
  {
    return "!=";
  }

  if (!strcmp("mul", __s2))
  {
    return "*";
  }

  if (!strcmp("div", __s2))
  {
    return "/";
  }

  if (!strcmp("mod", __s2))
  {
    return "%";
  }

  if (!strcmp("add", __s2))
  {
    return "+";
  }

  if (!strcmp("sub", __s2))
  {
    return "-";
  }

  if (!strcmp("and", __s2))
  {
    return "&";
  }

  v2 = *__s2;
  if (v2 == 111)
  {
    v2 = __s2[1];
    if (v2 == 114)
    {
      v3 = -__s2[2];
      goto LABEL_31;
    }

    v5 = 114;
  }

  else
  {
    v5 = 111;
  }

  v3 = v5 - v2;
LABEL_31:
  if (!v3)
  {
    return "|";
  }

  if (!strcmp("xor", __s2))
  {
    return "^";
  }

  if (!strcmp("shl", __s2))
  {
    return "<<";
  }

  if (!strcmp("shr", __s2))
  {
    return ">>";
  }

  if (!strcmp("anl", __s2))
  {
    return "&&";
  }

  if (!strcmp("orl", __s2))
  {
    return "||";
  }

  if (strcmp("xrl", __s2))
  {
    abort();
  }

  return "^^";
}

uint64_t glpAnalyzeBinaryMathOp(uint64_t a1, uint64_t a2)
{
  Lhs = glpBinaryOperatorNodeGetLhs(a2);
  Rhs = glpBinaryOperatorNodeGetRhs(a2);
  Allocator = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a2, &v12);
  v7 = glpASTNodeGetKind(a2) - 19;
  v8 = "$OP_xrl";
  v9 = 0xCB2BD55100000007;
  switch(v7)
  {
    case 0:
      v8 = "$OP_mul";
      v9 = 0x952C13B700000007;
      break;
    case 1:
      v8 = "$OP_div";
      v9 = 0xF835D66B00000007;
      break;
    case 2:
      v8 = "$OP_mod";
      v9 = 0x2827016500000007;
      break;
    case 3:
      v8 = "$OP_add";
      v9 = 0xBD95F1700000007;
      break;
    case 4:
      v8 = "$OP_sub";
      v9 = 0x597AE55300000007;
      break;
    case 5:
      v8 = "$OP_shl";
      v9 = 0xC08132B300000007;
      break;
    case 6:
      v8 = "$OP_shr";
      v9 = 0x4CDCFCD000000007;
      break;
    case 7:
      v8 = "$OP_slt";
      v9 = 0x7B30B0FF00000007;
      break;
    case 8:
      v8 = "$OP_sle";
      v9 = 0xA153270000000007;
      break;
    case 9:
      v8 = "$OP_sgt";
      v9 = 0x1F55519B00000007;
      break;
    case 10:
      v8 = "$OP_sge";
      v9 = 0x1B1FEDA500000007;
      break;
    case 11:
      v8 = "$OP_seq";
      v9 = 0x8C71514400000007;
      break;
    case 12:
      v8 = "$OP_sne";
      v9 = 0x97C1FFE700000007;
      break;
    case 13:
      v8 = "$OP_anl";
      v9 = 0x6C41D90B00000007;
      break;
    case 14:
      v8 = "$OP_orl";
      v9 = 0xCEE17B3300000007;
      break;
    case 15:
      break;
    case 16:
      v8 = "$OP_and";
      v9 = 0x2CFF98A600000007;
      break;
    case 17:
      v8 = "$OP_or";
      v9 = 0x77FE58B000000006;
      break;
    case 18:
      v8 = "$OP_xor";
      v9 = 0x8ADCA24100000007;
      break;
    default:
      abort();
  }

  BinopFuncallFragment = glpMakeBinopFuncallFragment(Allocator, &v12, v8, v9, Lhs, Rhs);
  return glpSANode(a1, BinopFuncallFragment);
}

uint64_t glpCheckAndSanitizeConstructorCall(uint64_t a1, uint64_t a2)
{
  v4 = glpConstructorCallNodeGetType(a2);
  SaType = glpASTNodeGetSaType(v4);
  Kind = glpTypeGetKind(SaType);
  if (Kind > 1)
  {
    if (Kind <= 3)
    {
      if (Kind == 2)
      {
        if (!glpTypeIsSized(SaType))
        {
          Allocator = glpCompilerGetAllocator(a1);
          ElementType = glpArrayTypeGetElementType(SaType);
          v9 = glpCallNodeGetArgCount(a2);
          SaType = glpMakeArrayType(Allocator, ElementType, v9, -1);
        }

        v10 = glpArrayTypeGetElementType(SaType);
        v61 = 0;
        v62 = &v61;
        v63 = 0x2000000000;
        v64 = 0;
        v57 = 0;
        v58 = &v57;
        v59 = 0x2000000000;
        v60 = 96;
        v49.n128_u64[0] = MEMORY[0x277D85DD0];
        v49.n128_u64[1] = 0x40000000;
        v50 = ___checkAndSanitizeArrayConstructorCall_block_invoke;
        v51 = &unk_278B49E60;
        v52 = &v61;
        v53 = &v57;
        v54 = v10;
        v55 = a1;
        v56 = SaType;
        if (!_checkConstructorArgs(a1, a2, &v49))
        {
          v13 = glpSAFailed();
          goto LABEL_30;
        }

        v11 = v62;
        if (v58[3])
        {
          goto LABEL_8;
        }

        if (!v62[3])
        {
          v12 = 0;
          goto LABEL_9;
        }

        DoesTypeRequirePrecision = glpCompilerDoesTypeRequirePrecision(a1, SaType);
        v11 = v62;
        if (!DoesTypeRequirePrecision)
        {
LABEL_8:
          v12 = 0;
          v11[3] = 0;
        }

        else
        {
          v12 = v62[3];
        }

LABEL_9:
        v13 = _elementwiseConstructor(a1, a2, SaType, v12, v58[3]);
LABEL_30:
        v35 = v13;
        _Block_object_dispose(&v57, 8);
LABEL_31:
        _Block_object_dispose(&v61, 8);
        return v35;
      }

LABEL_61:
      abort();
    }

    if (Kind != 5)
    {
      abort();
    }

    v15 = glpCompilerGetAllocator(a1);
    glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v15);
    v17 = v16;
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v49);
    glpLogMessage(InfoLog, 0, &v49, "Subroutine type '%.*s' can't be constructed", v19, v20, v21, v22, v17);
    return glpSAFailed();
  }

  if (Kind)
  {
    if (Kind == 1)
    {
      v61 = 0;
      v62 = &v61;
      v63 = 0x2000000000;
      v64 = 96;
      v49.n128_u64[0] = MEMORY[0x277D85DD0];
      v49.n128_u64[1] = 0x40000000;
      v50 = ___checkAndSanitizeStructConstructorCall_block_invoke;
      v51 = &unk_278B49EA8;
      v52 = &v61;
      v53 = SaType;
      v54 = a1;
      if (_checkConstructorArgs(a1, a2, &v49))
      {
        v14 = _elementwiseConstructor(a1, a2, SaType, 0, v62[3]);
      }

      else
      {
        v14 = glpSAFailed();
      }

      v35 = v14;
      goto LABEL_31;
    }

    goto LABEL_61;
  }

  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  if (glpPrimitiveTypeGetCategory(PrimitiveType) - 1 > 2)
  {
    v30 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v49);
    v48 = glpPrimitiveTypeToString(PrimitiveType);
    glpLogMessage(v30, 0, &v49, "Primitive type '%s' can't be constructed", v31, v32, v33, v34, v48);
    return glpSAFailed();
  }

  v24 = glpCallNodeGetArgCount(a2);
  if (!v24)
  {
    v37 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v49);
    v42 = "Constructor of primitive type must have at least one argument";
LABEL_36:
    glpLogMessage(v37, 0, &v49, v42, v38, v39, v40, v41, v47);
    return glpSAFailed();
  }

  if (v24 != 1)
  {
    goto LABEL_20;
  }

  v25 = glpCallNodeGetArg(a2, 0);
  v26 = glpASTNodeGetSaType(v25);
  if (glpTypeGetKind(v26))
  {
    goto LABEL_20;
  }

  v44 = glpPrimitiveTypeGetPrimitiveType(v26);
  Category = glpPrimitiveTypeGetCategory(v44);
  if (Category == 3)
  {
    v27 = 0;
    goto LABEL_21;
  }

  if (Category != 1)
  {
LABEL_20:
    v27 = 1;
LABEL_21:
    v28 = 1;
    goto LABEL_22;
  }

  v28 = 0;
  v27 = 1;
LABEL_22:
  v29 = glpPrimitiveTypeGetCategory(PrimitiveType);
  if (v29 != 3)
  {
    if (v29 != 2)
    {
      if (v29 != 1)
      {
        goto LABEL_61;
      }

      goto LABEL_45;
    }

    if ((v28 & 1) == 0)
    {

      return _checkAndSanitizeSplat(a1, a2, PrimitiveType);
    }

LABEL_45:

    return _checkAndSanitizeComponentwiseConstructorCall(a1, a2, PrimitiveType);
  }

  if (v28)
  {
    if (v27)
    {
      goto LABEL_45;
    }

    NameTable = glpCompilerGetNameTable(a1);
    if (glpNameTableGetGLSLVersion(NameTable) == 1)
    {
      v37 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v49);
      v42 = "GLSL 110 does not allow sub- or super-matrix constructors";
      goto LABEL_36;
    }

    return _checkAndSanitizeSubOrSuperMatrixConstructorCall(a1, a2, PrimitiveType);
  }

  else
  {

    return _checkAndSanitizeDiagonalMatrixConstructorCall(a1, a2, PrimitiveType);
  }
}

uint64_t glpLowerNonatomicTypeConversion(uint64_t a1, uint64_t a2)
{
  v4 = glpTypeConversionNodeGetToType(a2);
  v5 = glpTypeConversionNodeGetToPrecision(a2);
  v18 = 0;
  v19 = 0;
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  glpHandleSideEffectsForExpr(a1, Expr, &v18, &v19);
  Allocator = glpCompilerGetAllocator(a1);
  v16.n128_u64[0] = "-1";
  v16.n128_u64[1] = 0xEDA00000002;
  v17 = 0xFFFFFFFFLL;
  glpMakeCommaExprNode(Allocator, &v16, 0);
  v9 = v8;
  v10 = v19;
  if (v19)
  {
    v11 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v11, v9, v10);
  }

  v12 = v18;
  SaFlags = glpASTNodeGetSaFlags(v18);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 0x40000000;
  v15[2] = __glpLowerNonatomicTypeConversion_block_invoke;
  v15[3] = &__block_descriptor_tmp_10;
  v15[4] = a1;
  v15[5] = v12;
  return _constructor(a1, v4, v9, v5, SaFlags & 0x60, v15);
}

uint64_t glpHandleSideEffectsForExpr(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = glpFlattenCommaTree(a1, a2);
  v8 = glpSANode(a1, v7);
  v9 = glpCommaResult(v8);
  result = glpASTNodeGetKind(v9);
  if ((result - 81) >= 2)
  {
    if (result == 3)
    {
      if (v9 == v8)
      {
        v33 = 0;
      }

      else
      {
        v33 = v8;
      }

      *a4 = v33;
      *a3 = v9;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      _tempForExpr(a1, v8, &v43, &v42);
      Allocator = glpCompilerGetAllocator(a1);
      v44.n128_u64[0] = "-1";
      v44.n128_u64[1] = 0xEDA00000002;
      v45 = 0xFFFFFFFFLL;
      glpMakeCommaExprNode(Allocator, &v44, 0);
      v36 = v35;
      v37 = glpCompilerGetAllocator(a1);
      glpCommaExprNodeAddExpr(v37, v36, v43);
      v38 = glpCompilerGetAllocator(a1);
      v39 = v42;
      v40 = glpCompilerGetAllocator(a1);
      v41 = glpDeepCopyASTNode(v40, v39, getAccessorReplaceCallback, 0);
      result = glpCommaExprNodeAddExpr(v38, v36, v41);
      *a4 = v36;
      *a3 = v39;
    }
  }

  else
  {
    if (v9 == v8)
    {
      v11 = glpCompilerGetAllocator(a1);
      v44.n128_u64[0] = "-1";
      v44.n128_u64[1] = 0xEDA00000002;
      v45 = 0xFFFFFFFFLL;
      glpMakeCommaExprNode(v11, &v44, 0);
      v8 = v12;
      v13 = glpCompilerGetAllocator(a1);
      glpCommaExprNodeAddExpr(v13, v8, v9);
    }

    Offset = glpDerefNodeGetOffset(v9);
    if (Offset)
    {
      v15 = Offset;
      BankIndex = glpOffsetNodeGetBankIndex(Offset);
      if (BankIndex)
      {
        v17 = BankIndex;
        if (!glpIsConstantNode(BankIndex))
        {
          v43 = 0;
          v44.n128_u64[0] = 0;
          _tempForExpr(a1, v17, &v44, &v43);
          v18 = glpCompilerGetAllocator(a1);
          v19 = v44.n128_u64[0];
          ExprCount = glpCommaExprNodeGetExprCount(v8);
          glpCommaExprNodeInsertExpr(v18, v8, v19, ExprCount - 1);
          glpOffsetNodeSetBankIndex(v15, v43);
        }
      }

      OffsetExpr = glpOffsetNodeGetOffsetExpr(v15);
      if (OffsetExpr)
      {
        v22 = OffsetExpr;
        if (!glpIsConstantNode(OffsetExpr))
        {
          v43 = 0;
          v44.n128_u64[0] = 0;
          _tempForExpr(a1, v22, &v44, &v43);
          v23 = glpCompilerGetAllocator(a1);
          v24 = v44.n128_u64[0];
          v25 = glpCommaExprNodeGetExprCount(v8);
          glpCommaExprNodeInsertExpr(v23, v8, v24, v25 - 1);
          glpOffsetNodeSetOffsetExpr(v15, v43);
        }
      }

      VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v15);
      if (VectorElementExpr)
      {
        v27 = VectorElementExpr;
        if (!glpIsConstantNode(VectorElementExpr))
        {
          v43 = 0;
          v44.n128_u64[0] = 0;
          _tempForExpr(a1, v27, &v44, &v43);
          v28 = glpCompilerGetAllocator(a1);
          v29 = v44.n128_u64[0];
          v30 = glpCommaExprNodeGetExprCount(v8);
          glpCommaExprNodeInsertExpr(v28, v8, v29, v30 - 1);
          glpOffsetNodeSetVectorElementExpr(v15, v43);
        }
      }
    }

    if (glpCommaExprNodeGetExprCount(v8) == 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = v8;
    }

    *a4 = v31;
    v32 = glpCompilerGetAllocator(a1);
    result = glpDeepCopyASTNode(v32, v9, getAccessorReplaceCallback, 0);
    *a3 = result;
  }

  if (*a4)
  {
    result = glpSANode(a1, *a4);
    *a4 = result;
  }

  return result;
}

uint64_t _constructor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Allocator = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a3, &v33);
  glpMakeCommaExprNode(Allocator, &v33, 0);
  v14 = v13;
  v31 = 0;
  v32 = 0;
  Temporary = glpMakeTemporary(a1, a2, a4, 0, &v32, &v31);
  (*(a6 + 16))(a6, v31, v14);
  v16 = v32;
  v17 = glpASTNodeGetSaFlags(v32) & 0xFFFFFFFFFFFFFF7FLL;
  glpASTNodeSetSaFlags(v16, v17);
  *(glpVariableDeclarationNodeGetExtra(v16) + 48) = v17;
  v18 = glpSANode(a1, v14);
  glpVariableDeclarationNodeSetInitializer(v16, v18);
  v19 = glpCompilerGetAllocator(a1);
  ValueHash = glpCompilerGetValueHash(a1);
  v21 = glpConstantFold(v19, ValueHash, v16);
  v22 = glpCompilerGetAllocator(a1);
  glpCommaExprNodeAddExpr(v22, a3, v21);
  v23 = glpCompilerGetAllocator(a1);
  v24 = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a3, &v33);
  glpMakeVariableIdentifierNode(v24, &v33, *(Temporary + 32), *(Temporary + 40));
  glpCommaExprNodeAddExpr(v23, a3, v25);
  v26 = glpSANode(a1, a3);
  Expr = v26;
  if (glpIsCommaExprNode(v26))
  {
    ExprCount = glpCommaExprNodeGetExprCount(v26);
    Expr = glpCommaExprNodeGetExpr(v26, ExprCount - 1);
  }

  if (glpIsConstantNode(Expr))
  {
    SaFlags = glpASTNodeGetSaFlags(Expr);
    glpASTNodeSetSaFlags(Expr, SaFlags | a5);
    return Expr;
  }

  return v26;
}

uint64_t __glpLowerNonatomicTypeConversion_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = glpGetAccessorCount(a2);
  if (result)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v9 = *(a1 + 32);
      Accessor = glpMakeAccessor(v9, a2, v8);
      v11 = glpSANode(v9, Accessor);
      v12 = *(a1 + 32);
      v13 = glpMakeAccessor(v12, *(a1 + 40), v8);
      v14 = glpSANode(v12, v13);
      Allocator = glpCompilerGetAllocator(*(a1 + 32));
      v19.n128_u64[0] = "-1";
      v19.n128_u64[1] = 0xEDA00000002;
      v20 = 0xFFFFFFFFLL;
      AssignNode = glpMakeAssignNode(Allocator, &v19, 0);
      glpBinaryOperatorNodeSetLhs(AssignNode, v11);
      glpBinaryOperatorNodeSetRhs(AssignNode, v14);
      v17 = glpSANode(*(a1 + 32), AssignNode);
      v18 = glpCompilerGetAllocator(*(a1 + 32));
      result = glpCommaExprNodeAddExpr(v18, a3, v17);
      v8 = (v8 + 1);
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t glpGetAccessorCount(uint64_t a1)
{
  SaType = glpASTNodeGetSaType(a1);
  Kind = glpTypeGetKind(SaType);
  if (Kind == 2)
  {

    return glpArrayTypeGetElementCount(SaType);
  }

  else if (Kind == 1)
  {

    return glpAggregateTypeGetElementCount(SaType);
  }

  else
  {
    if (Kind || (PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType), glpPrimitiveTypeGetCategory(PrimitiveType) != 3))
    {
      abort();
    }

    v4 = glpPrimitiveTypeGetPrimitiveType(SaType);

    return glpPrimitiveMatrixGetColumns(v4);
  }
}

uint64_t glpMakeAccessor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SaType = glpASTNodeGetSaType(a2);
  Kind = glpTypeGetKind(SaType);
  if (Kind == 2)
  {
LABEL_5:
    Allocator = glpCompilerGetAllocator(a1);
    v10 = glpCompilerGetAllocator(a1);
    v11 = glpDeepCopyASTNode(v10, a2, getAccessorReplaceCallback, 0);
    IntConstant = glpCompilerGetIntConstant(a1, a3);
    v20.n128_u64[0] = "-1";
    v20.n128_u64[1] = 0xEDA00000002;
    v21 = 0xFFFFFFFFLL;
    return glpMakeArrayAccessFragment(Allocator, &v20, v11, IntConstant);
  }

  if (Kind != 1)
  {
    if (Kind || (PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType), glpPrimitiveTypeGetCategory(PrimitiveType) != 3))
    {
      abort();
    }

    goto LABEL_5;
  }

  v14 = glpCompilerGetAllocator(a1);
  FieldName = glpStructTypeGetFieldName(SaType, a3);
  v17 = v16;
  v18 = glpCompilerGetAllocator(a1);
  v19 = glpDeepCopyASTNode(v18, a2, getAccessorReplaceCallback, 0);
  v20.n128_u64[0] = "-1";
  v20.n128_u64[1] = 0xEDA00000002;
  v21 = 0xFFFFFFFFLL;
  return glpMakeFieldAccessFragment(v14, &v20, FieldName, v17, v19);
}

uint64_t glpMakeTemporary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v12 = glpCompilerNewTempName(a1);
  v14 = v13;
  v30 = 0;
  Allocator = glpCompilerGetAllocator(a1);
  v27.n128_u64[0] = "-1";
  v27.n128_u64[1] = 0xEDA00000002;
  v28 = 0xFFFFFFFFLL;
  TypedVariableFragment = glpMakeTypedVariableFragment(Allocator, &v27, v12, v14, &v30, a4);
  glpASTNodeSetSaFlags(v30, a3);
  glpASTNodeSetSaType(v30, a2);
  v17 = glpSANode(a1, TypedVariableFragment);
  v27.n128_u64[0] = 0;
  v27.n128_u64[1] = &v27;
  v28 = 0x2000000000;
  v29 = 0;
  NameTable = glpCompilerGetNameTable(a1);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 0x40000000;
  v26[2] = __glpMakeTemporary_block_invoke;
  v26[3] = &unk_278B49DC8;
  v26[4] = &v27;
  glpNameTableGet(NameTable, v12, v14, 0, v26);
  if (v17)
  {
    SaFlags = glpASTNodeGetSaFlags(v17);
    glpASTNodeSetSaFlags(v17, SaFlags & 0xFFFFFFFF7FFFFFFFLL);
  }

  *(*(v27.n128_u64[1] + 24) + 48) &= ~0x80000000uLL;
  *a5 = v17;
  v20 = glpCompilerGetAllocator(a1);
  v24.n128_u64[0] = "-1";
  v24.n128_u64[1] = 0xEDA00000002;
  v25 = 0xFFFFFFFFLL;
  glpMakeVariableIdentifierNode(v20, &v24, v12, v14);
  *a6 = glpSANode(a1, v21);
  v22 = *(v27.n128_u64[1] + 24);
  _Block_object_dispose(&v27, 8);
  return v22;
}

uint64_t __glpMakeTemporary_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t _tempForExpr(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  SaFlags = glpASTNodeGetSaFlags(a2);
  if ((SaFlags & 0x60) != 0)
  {
    v9 = SaFlags & 0x60;
  }

  else
  {
    v9 = 256;
  }

  v10 = glpASTNodeGetSaFlags(a2) & 0x1F;
  SaType = glpASTNodeGetSaType(a2);

  return glpMakeTemporary(a1, SaType, v9 | v10, a2, a3, a4);
}

uint64_t glpDuplicateDerefOrConstant(uint64_t a1, uint64_t a2)
{
  Allocator = glpCompilerGetAllocator(a1);

  return glpDeepCopyASTNode(Allocator, a2, getAccessorReplaceCallback, 0);
}

uint64_t glpMangleSideEffectsWithNewResult(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return a3;
  }

  v4 = a2;
  if (glpIsCommaExprNode(a2))
  {
    ExprCount = glpCommaExprNodeGetExprCount(v4);
    glpCommaExprNodeSetExpr(v4, ExprCount - 1, a3);
    SaType = glpASTNodeGetSaType(a3);
    glpASTNodeSetSaType(v4, SaType);
    SaFlags = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(v4, SaFlags);
  }

  else
  {
    glpASTNodeGetLocation(a3, &v14);
    glpMakeCommaExprNode(a1, &v14, 0);
    v10 = v9;
    glpCommaExprNodeAddExpr(a1, v9, v4);
    glpCommaExprNodeAddExpr(a1, v10, a3);
    v11 = glpASTNodeGetSaType(a3);
    glpASTNodeSetSaType(v10, v11);
    v12 = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(v10, v12);
    return v10;
  }

  return v4;
}

uint64_t getAccessorReplaceCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Kind = glpASTNodeGetKind(a3);
  if (Kind == 80)
  {
    Extra = glpOffsetNodeGetExtra(a3);
    v7 = (*(a2 + 8))(*a2, 32, "Offset Object (accessor replacement)");
    v8 = Extra[1];
    *v7 = *Extra;
    v7[1] = v8;
    glpOffsetNodeSetExtra(a3, v7);
  }

  else if (Kind == 7 || Kind == 39)
  {
    abort();
  }

  return a3;
}

uint64_t glpGetScalarAccessorCount(uint64_t a1)
{
  SaType = glpASTNodeGetSaType(a1);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  result = glpPrimitiveTypeGetCategory(PrimitiveType);
  if (result != 1)
  {
    if (result != 2)
    {
      abort();
    }

    return glpPrimitiveVectorGetLength(PrimitiveType);
  }

  return result;
}

uint64_t glpMakeScalarAccessor(uint64_t a1, uint64_t a2, int a3)
{
  SaType = glpASTNodeGetSaType(a2);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  Category = glpPrimitiveTypeGetCategory(PrimitiveType);
  if (Category == 2)
  {
    Allocator = glpCompilerGetAllocator(a1);
    v12 = &aXyzw[a3];
    v13 = ((*v12 ^ 1u) << 32) + 0x2000000001;
    v14 = glpCompilerGetAllocator(a1);
    v15 = glpDeepCopyASTNode(v14, a2, getAccessorReplaceCallback, 0);
    v16.n128_u64[0] = "-1";
    v16.n128_u64[1] = 0xEDA00000002;
    v17 = 0xFFFFFFFFLL;
    return glpMakeFieldAccessFragment(Allocator, &v16, v12, v13, v15);
  }

  else
  {
    if (Category != 1)
    {
      abort();
    }

    v9 = glpCompilerGetAllocator(a1);

    return glpDeepCopyASTNode(v9, a2, getAccessorReplaceCallback, 0);
  }
}

uint64_t _checkAndSanitizeComponentwiseConstructorCall(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = *MEMORY[0x277D85DE8];
  ScalarCount = glpPrimitiveTypeGetScalarCount(a3);
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2000000000;
  v61 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = 96;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 0x40000000;
  v50[2] = ___checkAndSanitizeComponentwiseConstructorCall_block_invoke;
  v50[3] = &unk_278B49DF0;
  v50[4] = &v52;
  v50[5] = &v56;
  v50[6] = v60;
  v51 = ScalarCount;
  if (!_checkConstructorArgs(a1, a2, v50))
  {
    v41 = glpSAFailed();
    goto LABEL_19;
  }

  v7 = v53 + 3;
  if (!v57[3])
  {
    if (!*v7)
    {
      goto LABEL_4;
    }

    PrimitiveType = glpGetPrimitiveType(a3);
    if (glpCompilerDoesTypeRequirePrecision(a1, PrimitiveType))
    {
      goto LABEL_4;
    }

    v7 = v53 + 3;
  }

  *v7 = 0;
LABEL_4:
  v8 = glpCallNodeGetArgCount(a2);
  doPrecisionWarningsForLowpInt(a1, a2, a3, v53[3]);
  v9 = glpGetPrimitiveType(a3);
  DoesTypeRequirePrecision = glpCompilerDoesTypeRequirePrecision(a1, v9);
  if (!DoesTypeRequirePrecision && v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v12 = glpCallNodeGetArg(a2, i);
      SaType = glpASTNodeGetSaType(v12);
      DoesTypeRequirePrecision = glpCompilerDoesTypeRequirePrecision(a1, SaType);
      if (DoesTypeRequirePrecision)
      {
        DoesTypeRequirePrecision = glpASTNodeGetSaFlags(v12);
        if ((DoesTypeRequirePrecision & 0x1F) == 0)
        {
          DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, SaType);
          if (DefaultPrecisionForType)
          {
            DoesTypeRequirePrecision = glpPushdownPrecision(a1, v12, DefaultPrecisionForType);
          }

          else
          {
            Allocator = glpCompilerGetAllocator(a1);
            glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
            v17 = v16;
            InfoLog = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(a2, &v49);
            DoesTypeRequirePrecision = glpLogMessage(InfoLog, 0, &v49, "Constructor argument of type '%.*s' - precision can not be inferred and no default precision available", v19, v20, v21, v22, v17);
          }
        }
      }
    }
  }

  v48 = 0;
  MEMORY[0x28223BE20](DoesTypeRequirePrecision);
  v24 = (&v46 - v23);
  bzero(&v46 - v23, v25);
  ArgsAccessible = _makeArgsAccessible(a1, a2, v53[3], v24, &v48);
  v47 = 0;
  MEMORY[0x28223BE20](ArgsAccessible);
  v28 = &v46 - v27;
  bzero(v28, v29);
  v30 = _atomicizeArgs(a1, v8, v24, &v47, v28);
  v46 = 0;
  LODWORD(v24) = v47;
  MEMORY[0x28223BE20](v30);
  v32 = &v46 - ((v31 + 15) & 0xFFFFFFFF0);
  bzero(v32, v31);
  ScalarType = glpPrimitiveTypeGetScalarType(a3);
  _convertAccesses(a1, ScalarType, v53[3], v24, v28, &v46, v32);
  v34 = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a2, &v49);
  glpMakeCommaExprNode(v34, &v49, 0);
  v36 = v35;
  v37 = v48;
  if (v48)
  {
    v38 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v38, v36, v37);
  }

  v39 = v46;
  if (v46)
  {
    v40 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v40, v36, v39);
  }

  v41 = _componentwiseConstructor(a1, a3, v36, v53[3], v57[3], v32);
LABEL_19:
  v42 = v41;
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(v60, 8);
  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

uint64_t _checkAndSanitizeSplat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v43 = 0;
  v45[0] = 0;
  _makeArgsAccessible(a1, a2, 0, v45, &v43);
  v6 = glpASTNodeGetSaFlags(v45[0]) & 0x1F;
  if (v6)
  {
    PrimitiveType = glpGetPrimitiveType(a3);
    if (!glpCompilerDoesTypeRequirePrecision(a1, PrimitiveType))
    {
      v6 = 0;
    }
  }

  doPrecisionWarningsForLowpInt(a1, a2, a3, v6);
  v8 = glpGetPrimitiveType(a3);
  if (!glpCompilerDoesTypeRequirePrecision(a1, v8))
  {
    v30 = glpCallNodeGetArg(a2, 0);
    SaType = glpASTNodeGetSaType(v30);
    if (glpCompilerDoesTypeRequirePrecision(a1, SaType) && (glpASTNodeGetSaFlags(v30) & 0x1F) == 0)
    {
      DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, SaType);
      if (DefaultPrecisionForType)
      {
        glpPushdownPrecision(a1, v30, DefaultPrecisionForType);
      }

      else
      {
        Allocator = glpCompilerGetAllocator(a1);
        glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
        v35 = v34;
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v42);
        glpLogMessage(InfoLog, 0, &v42, "Constructor argument of type '%.*s' - precision can not be inferred and no default precision available", v37, v38, v39, v40, v35);
      }
    }
  }

  v41 = 0;
  v44 = 0;
  ScalarType = glpPrimitiveTypeGetScalarType(a3);
  _convertAccesses(a1, ScalarType, v6, 1u, v45, &v41, &v44);
  ScalarCount = glpPrimitiveTypeGetScalarCount(a3);
  v11 = ScalarCount;
  MEMORY[0x28223BE20](ScalarCount);
  v13 = (&v41 - v12);
  bzero(&v41 - v12, v14);
  if (v11)
  {
    v15 = v11;
    v16 = v44;
    v17 = v13;
    do
    {
      v18 = glpCompilerGetAllocator(a1);
      *v17++ = glpDeepCopyASTNode(v18, v16, getAccessorReplaceCallback, 0);
      --v15;
    }

    while (v15);
  }

  v19 = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a2, &v42);
  glpMakeCommaExprNode(v19, &v42, 0);
  v21 = v20;
  v22 = v43;
  if (v43)
  {
    v23 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v23, v21, v22);
  }

  v24 = v41;
  if (v41)
  {
    v25 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v25, v21, v24);
  }

  v26 = glpCallNodeGetArg(a2, 0);
  SaFlags = glpASTNodeGetSaFlags(v26);
  result = _componentwiseConstructor(a1, a3, v21, v6, SaFlags & 0x60, v13);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _checkAndSanitizeDiagonalMatrixConstructorCall(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v47 = 0;
  v49[0] = 0;
  _makeArgsAccessible(a1, a2, 0, v49, &v47);
  SaFlags = glpASTNodeGetSaFlags(v49[0]);
  v43 = a2;
  doPrecisionWarningsForLowpInt(a1, a2, a3, SaFlags & 0x1F);
  v46 = 0;
  v48 = 0;
  ScalarType = glpPrimitiveTypeGetScalarType(a3);
  v42 = SaFlags;
  _convertAccesses(a1, ScalarType, SaFlags & 0x1F, 1u, v49, &v46, &v48);
  v8 = glpPrimitiveTypeGetScalarType(a3);
  PrimitiveType = glpGetPrimitiveType(v8);
  Allocator = glpCompilerGetAllocator(a1);
  MutableValue = glpMakeMutableValue(Allocator, PrimitiveType, 0, v11, v12, v13, v14, v15, v41[0]);
  v17 = glpCompilerRemapValue(a1, PrimitiveType, MutableValue);
  v44.n128_u64[0] = "-1";
  v44.n128_u64[1] = 0xEDA00000002;
  v45 = 0xFFFFFFFFLL;
  ConstantValueFragment = glpMakeConstantValueFragment(a1, &v44, PrimitiveType, v17);
  Rows = glpPrimitiveMatrixGetRows(a3);
  ScalarCount = glpPrimitiveTypeGetScalarCount(a3);
  v21 = ScalarCount;
  v41[1] = v41;
  MEMORY[0x28223BE20](ScalarCount);
  v23 = v41 - v22;
  bzero(v41 - v22, v24);
  if (v21)
  {
    v25 = 0;
    v26 = v48;
    do
    {
      v27 = glpCompilerGetAllocator(a1);
      if (v25 % Rows == v25 / Rows)
      {
        v28 = v26;
      }

      else
      {
        v28 = ConstantValueFragment;
      }

      *&v23[8 * v25++] = glpDeepCopyASTNode(v27, v28, getAccessorReplaceCallback, 0);
    }

    while (v21 != v25);
  }

  v29 = glpCompilerGetAllocator(a1);
  v30 = v43;
  glpASTNodeGetLocation(v43, &v44);
  glpMakeCommaExprNode(v29, &v44, 0);
  v32 = v31;
  v33 = v47;
  if (v47)
  {
    v34 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v34, v32, v33);
  }

  v35 = v46;
  if (v46)
  {
    v36 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v36, v32, v35);
  }

  v37 = glpCallNodeGetArg(v30, 0);
  v38 = glpASTNodeGetSaFlags(v37);
  result = _componentwiseConstructor(a1, a3, v32, v42 & 0x1F, v38 & 0x60, v23);
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _checkAndSanitizeSubOrSuperMatrixConstructorCall(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80[1] = *MEMORY[0x277D85DE8];
  v6 = glpCallNodeGetArgCount(a2);
  v78 = 0;
  v80[0] = 0;
  v69 = a2;
  _makeArgsAccessible(a1, a2, 0, v80, &v78);
  v77 = 0;
  memset(v79, 0, sizeof(v79));
  v7 = _atomicizeArgs(a1, v6, v80, &v77, v79);
  v76 = 0;
  v8 = v77;
  MEMORY[0x28223BE20](v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFF0);
  bzero(v10, v9);
  ScalarType = glpPrimitiveTypeGetScalarType(a3);
  v12 = v80[0];
  SaFlags = glpASTNodeGetSaFlags(v80[0]);
  _convertAccesses(a1, ScalarType, SaFlags & 0x1F, v8, v79, &v76, v10);
  v14 = glpPrimitiveTypeGetScalarType(a3);
  PrimitiveType = glpGetPrimitiveType(v14);
  Allocator = glpCompilerGetAllocator(a1);
  MutableValue = glpMakeMutableValue(Allocator, PrimitiveType, 0, v17, v18, v19, v20, v21, v68);
  v23 = glpCompilerRemapValue(a1, PrimitiveType, MutableValue);
  v74.n128_u64[0] = "-1";
  v74.n128_u64[1] = 0xEDA00000002;
  v75 = 0xFFFFFFFFLL;
  ConstantValueFragment = glpMakeConstantValueFragment(a1, &v74, PrimitiveType, v23);
  v24 = glpCompilerGetAllocator(a1);
  v30 = glpMakeMutableValue(v24, PrimitiveType, 1, v25, v26, v27, v28, v29, 0x3FF0000000000000);
  v31 = glpCompilerRemapValue(a1, PrimitiveType, v30);
  v74.n128_u64[0] = "-1";
  v74.n128_u64[1] = 0xEDA00000002;
  v75 = 0xFFFFFFFFLL;
  v32 = glpMakeConstantValueFragment(a1, &v74, PrimitiveType, v31);
  Rows = glpPrimitiveMatrixGetRows(a3);
  v70 = a3;
  Columns = glpPrimitiveMatrixGetColumns(a3);
  SaType = glpASTNodeGetSaType(v12);
  v36 = glpPrimitiveTypeGetPrimitiveType(SaType);
  v37 = glpPrimitiveMatrixGetRows(v36);
  v38 = glpASTNodeGetSaType(v12);
  v39 = glpPrimitiveTypeGetPrimitiveType(v38);
  v40 = glpPrimitiveMatrixGetColumns(v39);
  v41 = v40;
  v68 = &v68;
  v72 = Rows;
  MEMORY[0x28223BE20](v40);
  v43 = &v68 - v42;
  bzero(&v68 - v42, v44);
  if (Columns)
  {
    v45 = 0;
    v46 = 0;
    v47 = v41;
    v71 = Columns;
    v48 = v72;
    do
    {
      if (v72)
      {
        v49 = 0;
        do
        {
          if (v45 >= v47 || v49 >= v37)
          {
            v52 = glpCompilerGetAllocator(a1);
            if (v45 == v49)
            {
              v53 = v32;
            }

            else
            {
              v53 = ConstantValueFragment;
            }

            v51 = glpDeepCopyASTNode(v52, v53, getAccessorReplaceCallback, 0);
          }

          else
          {
            ScalarAccessor = glpMakeScalarAccessor(a1, *&v10[8 * v45], v49);
            v51 = glpSANode(a1, ScalarAccessor);
          }

          *&v43[8 * v46++] = v51;
          ++v49;
        }

        while (v48 != v49);
      }

      ++v45;
    }

    while (v45 != v71);
  }

  v54 = glpCompilerGetAllocator(a1);
  v74.n128_u64[0] = "-1";
  v74.n128_u64[1] = 0xEDA00000002;
  v75 = 0xFFFFFFFFLL;
  glpMakeCommaExprNode(v54, &v74, 0);
  v56 = v55;
  v57 = v78;
  if (v78)
  {
    v58 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v58, v56, v57);
  }

  v59 = v76;
  if (v76)
  {
    v60 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v60, v56, v59);
  }

  v61 = v69;
  v62 = glpCallNodeGetArg(v69, 0);
  v63 = glpASTNodeGetSaFlags(v62);
  v64 = glpCallNodeGetArg(v61, 0);
  v65 = glpASTNodeGetSaFlags(v64);
  result = _componentwiseConstructor(a1, v70, v56, v63 & 0x1F, v65 & 0x60, v43);
  v67 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _checkConstructorArgs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = glpConstructorCallNodeGetType(a2);
  SaType = glpASTNodeGetSaType(v6);
  v8 = glpCallNodeGetArgCount(a2);
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      v11 = glpCallNodeGetArg(a2, v10);
      v12 = (*(a3 + 16))(a3, v10, v11);
      if (v12 == 2)
      {
        break;
      }

      if (v12 == 1)
      {
        v21 = glpASTNodeGetSaType(v11);
        Allocator = glpCompilerGetAllocator(a1);
        glpTypeHumanReadableDescription(v21, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
        v24 = v23;
        v25 = glpCompilerGetAllocator(a1);
        glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v25);
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v40);
        glpLogMessage(InfoLog, 0, &v40, "Invalid type '%.*s' as argument %u of constructor of '%.*s'", v27, v28, v29, v30, v24);
        return 0;
      }

      v10 = (v10 + 1);
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    if (v10 + 1 >= v9)
    {
      return 1;
    }

    v31 = glpCompilerGetAllocator(a1);
    glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v31);
    v33 = v32;
    v34 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v40);
    glpLogMessage(v34, 0, &v40, "Too many arguments to constructor of '%.*s'", v35, v36, v37, v38, v33);
  }

  else
  {
LABEL_6:
    v13 = glpCompilerGetAllocator(a1);
    glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v13);
    v15 = v14;
    v16 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v40);
    glpLogMessage(v16, 0, &v40, "Too few arguments to constructor of '%.*s'", v17, v18, v19, v20, v15);
  }

  return 0;
}

uint64_t ___checkAndSanitizeComponentwiseConstructorCall_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SaFlags = glpASTNodeGetSaFlags(a3);
  v6 = SaFlags & 0x1F;
  if (v6 != 31)
  {
    v7 = *(*(a1 + 32) + 8);
    if (*(v7 + 24) > v6)
    {
      v6 = *(v7 + 24);
    }

    *(v7 + 24) = v6;
  }

  *(*(*(a1 + 40) + 8) + 24) &= SaFlags;
  SaType = glpASTNodeGetSaType(a3);
  if (glpTypeGetKind(SaType))
  {
    return 1;
  }

  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  if (glpPrimitiveTypeGetCategory(PrimitiveType) - 1 > 2)
  {
    return 1;
  }

  *(*(*(a1 + 48) + 8) + 24) += glpPrimitiveTypeGetScalarCount(PrimitiveType);
  return 2 * (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56));
}

uint64_t doPrecisionWarningsForLowpInt(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  result = glpCallNodeGetArgCount(a2);
  if (a4 == 4)
  {
    v9 = result;
    PrimitiveType = glpGetPrimitiveType(a3);
    result = glpGetMostBasicPrimitiveType(PrimitiveType);
    if (result == 1)
    {
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          v12 = glpCallNodeGetArg(a2, i);
          SaType = glpASTNodeGetSaType(v12);
          result = glpGetMostBasicPrimitiveType(SaType);
          if (result == 36 || result == 5)
          {
            result = glpASTNodeGetSaFlags(v12);
            if ((result & 0x1F) == 4)
            {
              v15 = glpASTNodeGetSaType(v12);
              Allocator = glpCompilerGetAllocator(a1);
              glpTypeHumanReadableDescription(v15, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
              v18 = v17;
              InfoLog = glpCompilerGetInfoLog(a1);
              glpASTNodeGetLocation(a2, &v24);
              result = glpLogMessage(InfoLog, 1u, &v24, "Casting lowp %.*s to lowp float - this may produce incorrect results", v20, v21, v22, v23, v18);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _makeArgsAccessible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  Allocator = glpCompilerGetAllocator(a1);
  v20.n128_u64[0] = "-1";
  v20.n128_u64[1] = 0xEDA00000002;
  v21 = 0xFFFFFFFFLL;
  glpMakeCommaExprNode(Allocator, &v20, 0);
  *a5 = v11;
  v12 = glpCallNodeGetArgCount(a2);
  if (v12)
  {
    v13 = 0;
    v14 = v12;
    do
    {
      v15 = glpCallNodeGetArg(a2, v13);
      v16 = v15;
      if (a3 && (glpASTNodeGetSaFlags(v15) & 0x1F) == 0)
      {
        glpPushdownPrecision(a1, v16, a3);
      }

      v20.n128_u64[0] = 0;
      glpHandleSideEffectsForExpr(a1, v16, a4, &v20);
      v17 = v20.n128_u64[0];
      if (v20.n128_u64[0])
      {
        v18 = glpCompilerGetAllocator(a1);
        glpCommaExprNodeAddExpr(v18, *a5, v17);
      }

      ++v13;
      ++a4;
    }

    while (v14 != v13);
  }

  result = glpCommaExprNodeGetExprCount(*a5);
  if (!result)
  {
    *a5 = 0;
  }

  return result;
}

uint64_t _atomicizeArgs(uint64_t result, unsigned int a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (a2)
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    v11 = a2;
    do
    {
      SaType = glpASTNodeGetSaType(*(a3 + 8 * v9));
      IsAtomic = glpTypeIsAtomic(SaType);
      result = *(a3 + 8 * v9);
      if (IsAtomic)
      {
        v14 = (v10 + 1);
        *(a5 + 8 * v10) = result;
      }

      else
      {
        result = glpGetAccessorCount(result);
        if (result)
        {
          v15 = result;
          v16 = 0;
          do
          {
            Accessor = glpMakeAccessor(v8, *(a3 + 8 * v9), v16);
            result = glpSANode(v8, Accessor);
            v14 = (v10 + 1);
            *(a5 + 8 * v10) = result;
            v16 = (v16 + 1);
            LODWORD(v10) = v10 + 1;
          }

          while (v15 != v16);
        }

        else
        {
          v14 = v10;
        }
      }

      ++v9;
      v10 = v14;
    }

    while (v9 != v11);
  }

  else
  {
    LODWORD(v14) = 0;
  }

  *a4 = v14;
  return result;
}

uint64_t _convertAccesses(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  Allocator = glpCompilerGetAllocator(a1);
  v27.n128_u64[0] = "-1";
  v27.n128_u64[1] = 0xEDA00000002;
  v28 = 0xFFFFFFFFLL;
  glpMakeCommaExprNode(Allocator, &v27, 0);
  *a6 = v15;
  if (a4)
  {
    v16 = a4;
    do
    {
      SaType = glpASTNodeGetSaType(*a5);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
      v19 = PrimitiveType;
      v20 = glpPrimitiveTypeReplaceScalarType(PrimitiveType, a2);
      if (v19 == v20)
      {
        *a7 = *a5;
      }

      else
      {
        v27.n128_u64[0] = 0;
        v21 = *a5;
        v22 = glpGetPrimitiveType(v20);
        v23 = glpConvert(a1, v21, v22, a3);
        glpHandleSideEffectsForExpr(a1, v23, a7, &v27);
        v24 = v27.n128_u64[0];
        if (v27.n128_u64[0])
        {
          v25 = glpCompilerGetAllocator(a1);
          glpCommaExprNodeAddExpr(v25, *a6, v24);
        }
      }

      ++a5;
      ++a7;
      --v16;
    }

    while (v16);
    v15 = *a6;
  }

  result = glpCommaExprNodeGetExprCount(v15);
  if (!result)
  {
    *a6 = 0;
  }

  return result;
}

uint64_t _componentwiseConstructor(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  PrimitiveType = glpGetPrimitiveType(a2);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = ___componentwiseConstructor_block_invoke;
  v13[3] = &__block_descriptor_tmp_86;
  v13[4] = a1;
  v13[5] = a6;
  return _constructor(a1, PrimitiveType, a3, a4, a5, v13);
}

void ___componentwiseConstructor_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2000000000;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2000000000;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 0x40000000;
  v17 = ___componentwiseConstructor_block_invoke_2;
  v18 = &unk_278B49E18;
  v15 = *(a1 + 32);
  v21 = v15;
  v19 = v25;
  v20 = v23;
  v22 = a3;
  SaType = glpASTNodeGetSaType(a2);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  if (glpPrimitiveTypeGetCategory(PrimitiveType) == 3)
  {
    AccessorCount = glpGetAccessorCount(a2);
    if (!AccessorCount)
    {
      goto LABEL_13;
    }
  }

  else
  {
    AccessorCount = 1;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = a2;
    if (AccessorCount != 1)
    {
      Accessor = glpMakeAccessor(v15, a2, v7);
      v9 = glpSANode(v15, Accessor);
    }

    ScalarAccessorCount = glpGetScalarAccessorCount(v9);
    if (ScalarAccessorCount)
    {
      v12 = ScalarAccessorCount;
      for (i = 0; i != v12; ++i)
      {
        ScalarAccessor = glpMakeScalarAccessor(v15, v9, i);
        (v17)(v16, ScalarAccessor, (v8 + i));
      }

      v8 += i;
    }

    v7 = (v7 + 1);
  }

  while (v7 != AccessorCount);
LABEL_13:
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
}

uint64_t ___componentwiseConstructor_block_invoke_2(void *a1, uint64_t a2)
{
  ScalarAccessor = glpMakeScalarAccessor(a1[6], *(a1[7] + 8 * *(*(a1[4] + 8) + 24)), *(*(a1[5] + 8) + 24));
  v5 = a1[6];
  v6 = a1[8];
  Allocator = glpCompilerGetAllocator(v5);
  v11.n128_u64[0] = "-1";
  v11.n128_u64[1] = 0xEDA00000002;
  v12 = 0xFFFFFFFFLL;
  AssignNode = glpMakeAssignNode(Allocator, &v11, 0);
  glpBinaryOperatorNodeSetLhs(AssignNode, a2);
  glpBinaryOperatorNodeSetRhs(AssignNode, ScalarAccessor);
  v9 = glpCompilerGetAllocator(v5);
  glpCommaExprNodeAddExpr(v9, v6, AssignNode);
  LODWORD(a2) = ++*(*(a1[5] + 8) + 24);
  result = glpGetScalarAccessorCount(*(a1[7] + 8 * *(*(a1[4] + 8) + 24)));
  if (a2 >= result)
  {
    ++*(*(a1[4] + 8) + 24);
    *(*(a1[5] + 8) + 24) = 0;
  }

  return result;
}

uint64_t ___checkAndSanitizeArrayConstructorCall_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  SaFlags = glpASTNodeGetSaFlags(a3);
  v7 = SaFlags & 0x1F;
  if (v7 != 31)
  {
    v8 = *(*(a1 + 32) + 8);
    if (*(v8 + 24) > v7)
    {
      v7 = *(v8 + 24);
    }

    *(v8 + 24) = v7;
  }

  *(*(*(a1 + 40) + 8) + 24) &= SaFlags;
  SaType = glpASTNodeGetSaType(a3);
  if (glpTypesEqual(*(a1 + 48), SaType))
  {
    return 2 * (a2 + 1 == glpArrayTypeGetElementCount(*(a1 + 64)));
  }

  if (!glpTypeGetKind(SaType) && !glpTypeGetKind(*(a1 + 48)) && (PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType), v12 = glpPrimitiveTypeGetPrimitiveType(*(a1 + 48)), ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(*(a1 + 56)), glpCanConvert(PrimitiveType, v12, ImplicitConversionPolicy)))
  {
    return 2 * (a2 + 1 == glpArrayTypeGetElementCount(*(a1 + 64)));
  }

  else
  {
    return 1;
  }
}

uint64_t _elementwiseConstructor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  v10 = glpCallNodeGetArgCount(a2);
  MEMORY[0x28223BE20](v10);
  v12 = (v21 - v11);
  bzero(v21 - v11, v13);
  _makeArgsAccessible(a1, a2, a4, v12, v23);
  Allocator = glpCompilerGetAllocator(a1);
  glpASTNodeGetLocation(a2, &v22);
  glpMakeCommaExprNode(Allocator, &v22, 0);
  v16 = v15;
  v17 = v23[0];
  if (v23[0])
  {
    v18 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v18, v16, v17);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 0x40000000;
  v21[2] = ___elementwiseConstructor_block_invoke;
  v21[3] = &__block_descriptor_tmp_88;
  v21[4] = a1;
  v21[5] = v16;
  v21[6] = v12;
  result = _constructor(a1, a3, v16, a4, a5, v21);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___elementwiseConstructor_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  result = glpGetAccessorCount(a2);
  if (result)
  {
    v7 = 0;
    v8 = result;
    do
    {
      v9 = a1[4];
      Accessor = glpMakeAccessor(v9, a2, v7);
      v11 = glpSANode(v9, Accessor);
      Allocator = glpCompilerGetAllocator(a1[4]);
      glpASTNodeGetLocation(a1[5], &v16);
      AssignNode = glpMakeAssignNode(Allocator, &v16, 0);
      glpBinaryOperatorNodeSetLhs(AssignNode, v11);
      glpBinaryOperatorNodeSetRhs(AssignNode, *(a1[6] + 8 * v7));
      v14 = glpSANode(a1[4], AssignNode);
      v15 = glpCompilerGetAllocator(a1[4]);
      result = glpCommaExprNodeAddExpr(v15, a3, v14);
      ++v7;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t ___checkAndSanitizeStructConstructorCall_block_invoke(void *a1, unsigned int a2, uint64_t a3)
{
  *(*(a1[4] + 8) + 24) &= glpASTNodeGetSaFlags(a3);
  SaType = glpASTNodeGetSaType(a3);
  ElementType = glpAggregateTypeGetElementType(a1[5], a2);
  if (glpTypesEqual(ElementType, SaType))
  {
    return 2 * (a2 + 1 == glpAggregateTypeGetElementCount(a1[5]));
  }

  if (!glpTypeGetKind(SaType) && !glpTypeGetKind(ElementType) && (PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType), v10 = glpPrimitiveTypeGetPrimitiveType(ElementType), ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1[6]), glpCanConvert(PrimitiveType, v10, ImplicitConversionPolicy)))
  {
    return 2 * (a2 + 1 == glpAggregateTypeGetElementCount(a1[5]));
  }

  else
  {
    return 1;
  }
}

uint64_t glpMakeSourceLocation@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  a4[1] = a2;
  a4[2] = 0;
  *a4 = result;
  *(a4 + 4) = a3;
  return result;
}

char *glpMakeMutableValue(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v12 = glpABIGetTypeSize(0, a2, 0);
  Size = glpTypeSizeGetSize(v12);
  v14 = (*(a1 + 8))(*a1, 16 * Size, "Value");
  bzero(v14, 16 * Size);
  if (a3)
  {
    v16 = Size;
    MEMORY[0x28223BE20](v15);
    v18 = v36 - ((v17 + 15) & 0x7FFFFFFF0);
    bzero(v18, v17);
    glpTypeGetAppleVec4Types(a2, v18, 1, 0, 0, 0, 0, 0, 0);
    v36[0] = &a9;
    if (v16)
    {
      v19 = 0;
      v20 = v14;
      do
      {
        ScalarType = glpPrimitiveTypeGetScalarType(*&v18[4 * v19]);
        ScalarCount = glpPrimitiveTypeGetScalarCount(*&v18[4 * v19]);
        glpPrimitiveTypeGetBytesPerComponent(*&v18[4 * v19]);
        if (ScalarType <= 8)
        {
          if (ScalarType == 1)
          {
            if (ScalarCount)
            {
              v31 = 0;
              do
              {
                v32 = v36[0];
                v36[0] += 8;
                v33 = *v32;
                *&v20[v31] = v33;
                v31 += 4;
              }

              while (4 * ScalarCount != v31);
            }
          }

          else
          {
            if (ScalarType != 5)
            {
LABEL_31:
              abort();
            }

            if (ScalarCount)
            {
              v25 = 0;
              do
              {
                v26 = v36[0];
                v36[0] += 8;
                *&v20[v25] = *v26;
                v25 += 4;
              }

              while (4 * ScalarCount != v25);
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
                v27 = 0;
                do
                {
                  v28 = v36[0];
                  v36[0] += 8;
                  *&v20[v27] = *v28;
                  v27 += 8;
                }

                while (8 * ScalarCount != v27);
              }

              break;
            case 36:
              if (ScalarCount)
              {
                v29 = 0;
                do
                {
                  v30 = v36[0];
                  v36[0] += 8;
                  *&v20[v29] = *v30;
                  v29 += 4;
                }

                while (4 * ScalarCount != v29);
              }

              break;
            case 9:
              if (ScalarCount)
              {
                v23 = 0;
                do
                {
                  v24 = v36[0];
                  v36[0] += 8;
                  *&v20[v23] = *v24 != 0;
                  v23 += 4;
                }

                while (4 * ScalarCount != v23);
              }

              break;
            default:
              goto LABEL_31;
          }
        }

        ++v19;
        v20 += 16;
      }

      while (v19 != v16);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v14;
}

char *glpCopyValue(uint64_t a1, unsigned int *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MutableValue = glpMakeMutableValue(a1, a2, 0, a4, a5, a6, a7, a8, v12);
  glpCopyValueInto(MutableValue, a2, a3);
  return MutableValue;
}

void *glpCopyValueInto(void *a1, uint64_t a2, const void *a3)
{
  v5 = glpABIGetTypeSize(0, a2, 0);
  v6 = 16 * glpTypeSizeGetSize(v5);

  return memcpy(a1, a3, v6);
}

uint64_t glpCompareValues(char *a1, unsigned int *a2, char *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = glpABIGetTypeSize(0, a2, 0);
  Size = glpTypeSizeGetSize(v6);
  v8 = Size;
  MEMORY[0x28223BE20](Size);
  v10 = (v19 - v9);
  bzero(v19 - v9, v11);
  glpTypeGetAppleVec4Types(a2, v10, 1, 0, 0, 0, 0, 0, 0);
  v12 = 0;
  if (v8)
  {
    v13 = v8;
    do
    {
      BytesPerComponent = glpPrimitiveTypeGetBytesPerComponent(*v10);
      v15 = *v10++;
      ScalarCount = glpPrimitiveTypeGetScalarCount(v15);
      v12 = memcmp(a1, a3, (ScalarCount * BytesPerComponent)) | v12;
      a1 += 16;
      a3 += 16;
      --v13;
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}