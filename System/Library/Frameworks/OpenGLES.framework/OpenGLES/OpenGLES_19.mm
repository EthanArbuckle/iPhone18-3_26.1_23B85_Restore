uint64_t glpSALayoutQualifier(uint64_t a1, uint64_t a2)
{
  if (!glpLayoutQualifierNodeGetLayoutPairCount(a2))
  {
    goto LABEL_11;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    LayoutPair = glpLayoutQualifierNodeGetLayoutPair(a2, v4);
    v7 = glpSANode(a1, LayoutPair);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpLayoutQualifierNodeSetLayoutPair(a2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpLayoutQualifierNodeGetLayoutPairCount(a2));
  if (v5)
  {
LABEL_11:
    abort();
  }

  return glpSAFailed();
}

uint64_t glpSASubroutineTypeList(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!glpSubroutineTypeListNodeGetTypeCount(a2))
  {
    goto LABEL_20;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    Type = glpSubroutineTypeListNodeGetType(v2, v4);
    v7 = glpSANode(a1, Type);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpSubroutineTypeListNodeSetType(v2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpSubroutineTypeListNodeGetTypeCount(v2));
  if (!v5)
  {

    return glpSAFailed();
  }

  else
  {
LABEL_20:
    if (glpSubroutineTypeListNodeGetTypeCount(v2))
    {
      v8 = 0;
      while (1)
      {
        v9 = glpSubroutineTypeListNodeGetType(v2, v8);
        SaType = glpASTNodeGetSaType(v9);
        if (glpTypeGetKind(SaType) != 5)
        {
          break;
        }

        if (++v8 >= glpSubroutineTypeListNodeGetTypeCount(v2))
        {
          goto LABEL_12;
        }
      }

      glpTypeIdentifierNodeGetName(v9);
      v13 = v12;
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v20);
      glpLogMessage(InfoLog, 0, &v20, "Non-subroutine type '%.*s' in subroutine type list", v15, v16, v17, v18, v13);
      return glpSAFailed();
    }

    else
    {
LABEL_12:
      PrimitiveType = glpGetPrimitiveType(0);
      glpASTNodeSetSaType(v2, PrimitiveType);
    }

    return v2;
  }
}

uint64_t glpSAQualifierList(uint64_t a1, uint64_t a2)
{
  if (!glpQualifierListNodeGetQualifierCount(a2))
  {
    goto LABEL_11;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    Qualifier = glpQualifierListNodeGetQualifier(a2, v4);
    v7 = glpSANode(a1, Qualifier);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpQualifierListNodeSetQualifier(a2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpQualifierListNodeGetQualifierCount(a2));
  if (v5)
  {
LABEL_11:
    abort();
  }

  return glpSAFailed();
}

uint64_t glpSAGlobalTypeQualifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  QualifierList = glpGlobalTypeQualifierNodeGetQualifierList(a2);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  if (!glpParseQualifiers(a1, 2, QualifierList, 0, &v23, &v22, &v21))
  {
    return glpSAFailed();
  }

  if (v22)
  {
    NameTable = glpCompilerGetNameTable(a1);
    if (!glpNameTableGetCurrentFunction(NameTable))
    {
      TopLevelNode = glpCompilerGetTopLevelNode(a1);
      GlobalTypeQualifier = glpTopLevelNodeGetGlobalTypeQualifier(TopLevelNode, v23);
      if (GlobalTypeQualifier)
      {
        v14 = GlobalTypeQualifier;
        Allocator = glpCompilerGetAllocator(a1);
        Layout = glpGlobalTypeQualifierNodeGetLayout(v14);
        v17 = glpCopyLayoutObject(Allocator, Layout);
        v18 = glpCompilerGetAllocator(a1);
        glpASTNodeGetLocation(v2, &v20);
        if (!glpLayoutObjectAppendMany(v18, a1, &v20, v17, v22))
        {
          return glpSAFailed();
        }

        v2 = 0;
        v22 = v17;
      }

      else
      {
        PrimitiveType = glpGetPrimitiveType(0);
        glpASTNodeSetSaType(v2, PrimitiveType);
        glpASTNodeSetSaFlags(v2, v23);
        glpGlobalTypeQualifierNodeSetQualifierList(v2, 0);
        v17 = v22;
        v14 = v2;
      }

      glpGlobalTypeQualifierNodeSetLayout(v14, v17);
      if (glpCompilerApplyImplictRulesForGlobalTypeQualifier(a1, v14))
      {
        return v2;
      }

      return glpSAFailed();
    }
  }

  InfoLog = glpCompilerGetInfoLog(a1);
  glpASTNodeGetLocation(v2, &v20);
  glpLogMessage(InfoLog, 0, &v20, "Invalid non-global or non-layout type-qualifier", v7, v8, v9, v10, v20.n128_i8[0]);
  return glpSAFailed();
}

uint64_t glpSALayoutPair(uint64_t a1, uint64_t a2)
{
  Type = glpLayoutPairNodeGetType(a2);
  v5 = glpSANode(a1, Type);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpLayoutPairNodeSetType(a2, v5);
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    return a2;
  }
}

uint64_t glpSAExpressionStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  Expr = glpExpressionStatementNodeGetExpr(v2);
  v5 = glpSANode(a1, Expr);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpExpressionStatementNodeSetExpr(v2, v5);
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v2, PrimitiveType);
    v7 = glpExpressionStatementNodeGetExpr(v2);
    if (v7)
    {
      v8 = v7;
      SaType = glpASTNodeGetSaType(v7);
      if (glpCompilerDoesTypeRequirePrecision(a1, SaType) && (glpASTNodeGetSaFlags(v8) & 0x1F) == 0)
      {
        v10 = glpASTNodeGetSaType(v8);
        DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, v10);
        if (DefaultPrecisionForType)
        {
          glpPushdownPrecision(a1, v8, DefaultPrecisionForType);
        }

        else
        {
          v13 = glpASTNodeGetSaType(v8);
          Allocator = glpCompilerGetAllocator(a1);
          glpTypeHumanReadableDescription(v13, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
          v16 = v15;
          InfoLog = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v2, &v22);
          glpLogMessage(InfoLog, 0, &v22, "Expression of type '%.*s' - precision can not be inferred and no default precision available", v18, v19, v20, v21, v16);
          return glpSAFailed();
        }
      }
    }

    return v2;
  }
}

uint64_t glpSABlock(uint64_t a1, uint64_t a2)
{
  glpSAStatement(a2);
  if (glpBlockNodeGetNeedsNewScope(a2))
  {
    NameTable = glpCompilerGetNameTable(a1);
    glpNameTablePush(NameTable, a2);
  }

  StatementCount = glpBlockNodeGetStatementCount(a2);
  if (!StatementCount)
  {
    goto LABEL_17;
  }

  v6 = -StatementCount;
  v7 = 1;
  do
  {
    v8 = glpBlockNodeGetStatementCount(a2);
    Statement = glpBlockNodeGetStatement(a2, v8 + v6);
    if (Statement)
    {
      v10 = Statement;
      v11 = glpCompilerGetNameTable(a1);
      glpNameTableSetStatementIndex(v11, v8 + v6);
      v12 = glpSANode(a1, v10);
      v13 = glpBlockNodeGetStatementCount(a2);
      if (v12 != -1)
      {
        glpBlockNodeSetStatement(a2, v13 + v6, v12);
      }

      if (v7)
      {
        v14 = v12 == -1;
      }

      else
      {
        v14 = 1;
      }

      v7 = !v14;
    }
  }

  while (!__CFADD__(v6++, 1));
  if (!v7)
  {
    if (glpBlockNodeGetNeedsNewScope(a2))
    {
      v25 = glpCompilerGetNameTable(a1);
      glpNameTablePop(v25);
    }

    return glpSAFailed();
  }

  else
  {
LABEL_17:
    v16 = glpBlockNodeGetStatementCount(a2);
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      IsReturnStatementNode = 0;
      do
      {
        v20 = glpBlockNodeGetStatement(a2, v18);
        if (v20)
        {
          v21 = v20;
          if (IsReturnStatementNode && !glpIsCaseStatementNode(v20) && !glpIsDefaultStatementNode(v21))
          {
            glpBlockNodeSetStatement(a2, v18, 0);
LABEL_28:
            IsReturnStatementNode = 1;
            goto LABEL_29;
          }

          if (glpIsDiscardStatementNode(v21) || glpIsBreakStatementNode(v21) || glpIsContinueStatementNode(v21))
          {
            goto LABEL_28;
          }

          IsReturnStatementNode = glpIsReturnStatementNode(v21);
        }

LABEL_29:
        ++v18;
      }

      while (v17 != v18);
    }

    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    if (glpBlockNodeGetNeedsNewScope(a2))
    {
      v23 = glpCompilerGetNameTable(a1);
      glpNameTablePop(v23);
    }

    return a2;
  }
}

uint64_t glpSAIfStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  Cond = glpIfStatementNodeGetCond(v2);
  v5 = glpSANode(a1, Cond);
  v6 = v5 == -1;
  if (v5 != -1)
  {
    glpIfStatementNodeSetCond(v2, v5);
  }

  IfStatement = glpIfStatementNodeGetIfStatement(v2);
  v8 = glpSANode(a1, IfStatement);
  if (v8 == -1)
  {
    v6 = 1;
  }

  else
  {
    glpIfStatementNodeSetIfStatement(v2, v8);
  }

  ElseStatement = glpIfStatementNodeGetElseStatement(v2);
  v10 = glpSANode(a1, ElseStatement);
  if (v10 == -1 || (glpIfStatementNodeSetElseStatement(v2, v10), v6))
  {

    return glpSAFailed();
  }

  else
  {
    v12 = glpIfStatementNodeGetCond(v2);
    SaType = glpASTNodeGetSaType(v12);
    PrimitiveType = glpGetPrimitiveType(9u);
    if (glpTypesEqual(SaType, PrimitiveType))
    {
      v15 = glpGetPrimitiveType(0);
      glpASTNodeSetSaType(v2, v15);
    }

    else
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v22);
      glpLogMessage(InfoLog, 0, &v22, "Condition must be of type BOOL", v17, v18, v19, v20, v21);
      return glpSAFailed();
    }

    return v2;
  }
}

uint64_t glpSALoopStatement(uint64_t a1, uint64_t a2)
{
  glpSAStatement(a2);
  NameTable = glpCompilerGetNameTable(a1);
  CurrentFunction = glpNameTableGetCurrentFunction(NameTable);
  ++*(CurrentFunction + 120);
  Body0 = glpLoopStatementNodeGetBody0(a2);
  v7 = glpSANode(a1, Body0);
  if (v7 != -1)
  {
    glpLoopStatementNodeSetBody0(a2, v7);
  }

  Body1 = glpLoopStatementNodeGetBody1(a2);
  v9 = glpSANode(a1, Body1);
  if (v9 == -1 || (glpLoopStatementNodeSetBody1(a2, v9), v7 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    --*(CurrentFunction + 120);
    return a2;
  }
}

uint64_t glpSASwitchStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  NameTable = glpCompilerGetNameTable(a1);
  CurrentFunction = glpNameTableGetCurrentFunction(NameTable);
  ++*(CurrentFunction + 124);
  Expr = glpSwitchStatementNodeGetExpr(v2);
  v7 = glpSANode(a1, Expr);
  if (v7 == -1)
  {

    return glpSAFailed();
  }

  v8 = v7;
  SaType = glpASTNodeGetSaType(v7);
  if (glpTypeGetKind(SaType) || glpPrimitiveTypeGetPrimitiveType(SaType) != 5 && glpPrimitiveTypeGetPrimitiveType(SaType) != 36)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(v2, &v65);
    v15 = "Switch expression must be of type int or uint";
    goto LABEL_4;
  }

  if (glpPrimitiveTypeGetPrimitiveType(SaType) != 5)
  {
    Allocator = glpCompilerGetAllocator(a1);
    glpASTNodeGetLocation(v8, &v65);
    PrimitiveType = glpGetPrimitiveType(5u);
    SaFlags = glpASTNodeGetSaFlags(v8);
    glpMakeTypeConversionNode(Allocator, &v65, PrimitiveType, SaFlags & 0x1F);
    v22 = v21;
    glpUnaryOperatorNodeSetExpr(v21, v8);
    v8 = glpSANode(a1, v22);
    if (v8 == -1)
    {
      return glpSAFailed();
    }
  }

  glpSwitchStatementNodeSetExpr(v2, v8);
  if (!glpCompilerDoesTypeRequirePrecision(a1, SaType))
  {
    v23 = 0;
    goto LABEL_20;
  }

  v23 = glpASTNodeGetSaFlags(v8) & 0x1F;
  if (!v23)
  {
    DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, SaType);
    if (DefaultPrecisionForType)
    {
      v23 = DefaultPrecisionForType;
      glpPushdownPrecision(a1, v8, DefaultPrecisionForType);
      goto LABEL_20;
    }

    v54 = glpCompilerGetAllocator(a1);
    glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v54);
    v56 = v55;
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(v2, &v65);
    v58 = v56;
    v15 = "Switch condition of type '%.*s' - precision can not be inferred and no default precision available";
LABEL_4:
    v16 = InfoLog;
    goto LABEL_5;
  }

LABEL_20:
  Body = glpSwitchStatementNodeGetBody(v2);
  v26 = glpCompilerGetAllocator(a1);
  IntHash = glpMakeIntHash(v26);
  if (glpBlockNodeGetStatementCount(Body))
  {
    v59 = v23;
    v60 = IntHash;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    while (1)
    {
      Statement = glpBlockNodeGetStatement(Body, v29);
      Kind = glpASTNodeGetKind(Statement);
      if (Kind == 70)
      {
        ConstValue = glpCaseStatementNodeGetConstValue(Statement);
        v35 = glpSANode(a1, ConstValue);
        if (v35 == -1)
        {
          return glpSAFailed();
        }

        v36 = v35;
        v37 = glpCompilerGetNameTable(a1);
        if (glpNameTableGetGLSLVersion(v37) == 6)
        {
          v38 = glpASTNodeGetSaType(v36);
          if (!glpTypesEqual(SaType, v38))
          {
            v53 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(Statement, &v65);
            v15 = "Type of 'case' expressions must match type of 'switch' expression";
            goto LABEL_50;
          }
        }

        v39 = glpCompilerGetAllocator(a1);
        glpASTNodeGetLocation(v36, &v65);
        v40 = glpGetPrimitiveType(5u);
        glpMakeTypeConversionNode(v39, &v65, v40, v59);
        v42 = v41;
        glpUnaryOperatorNodeSetExpr(v41, v36);
        v43 = glpSANode(a1, v42);
        if (v43 == -1)
        {
          return glpSAFailed();
        }

        v44 = v43;
        glpCaseStatementNodeSetConstValue(Statement, v43);
        if (!glpIsConstantNode(v44))
        {
          v53 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(Statement, &v65);
          v15 = "Value of 'case' expression must be constant";
          goto LABEL_50;
        }

        v45 = *glpConstantNodeGetValue(v44);
        v46 = glpIntHashGet(v60, v45);
        if (v46)
        {
          v57 = v46;
          v53 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(Statement, &v65);
          glpASTNodeGetLocation(v57, &v61);
          v58 = v62;
          v15 = "Duplicate case value found.  Previous occurrence on line %d";
          goto LABEL_50;
        }

        glpIntHashPut(v60, v45, Statement, v47);
        glpCaseStatementNodeSetIsStray(Statement, 0);
        v33 = 0;
      }

      else
      {
        if (Kind == 71)
        {
          if (v30)
          {
            v53 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(Statement, &v65);
            glpASTNodeGetLocation(v30, &v63);
            v58 = v64;
            v15 = "Multiple default statements in switch see line %d";
            goto LABEL_50;
          }

          glpDefaultStatementNodeSetIsStray(Statement, 0);
          v33 = 0;
          goto LABEL_36;
        }

        if ((v28 & 1) == 0)
        {
          v53 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(Statement, &v65);
          v15 = "First statement in switch is not case/default";
          goto LABEL_50;
        }

        v33 = 1;
      }

      Statement = v30;
LABEL_36:
      ++v29;
      v28 = 1;
      v30 = Statement;
      if (v29 >= glpBlockNodeGetStatementCount(Body))
      {
        IntHash = v60;
        if (v33)
        {
          break;
        }

        v53 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(Body, &v65);
        v15 = "Expected statement after final 'case'/'default'";
LABEL_50:
        v16 = v53;
LABEL_5:
        glpLogMessage(v16, 0, &v65, v15, v11, v12, v13, v14, v58);
        return glpSAFailed();
      }
    }
  }

  glpDestroyIntHash(IntHash);
  v48 = glpSwitchStatementNodeGetExpr(v2);
  v49 = glpSANode(a1, v48);
  if (v49 != -1)
  {
    glpSwitchStatementNodeSetExpr(v2, v49);
  }

  v50 = glpSwitchStatementNodeGetBody(v2);
  v51 = glpSANode(a1, v50);
  if (v51 == -1)
  {
    return glpSAFailed();
  }

  glpSwitchStatementNodeSetBody(v2, v51);
  if (v49 == -1)
  {
    return glpSAFailed();
  }

  v52 = glpGetPrimitiveType(0);
  glpASTNodeSetSaType(v2, v52);
  --*(CurrentFunction + 124);
  return v2;
}

uint64_t glpSACaseStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  ConstValue = glpCaseStatementNodeGetConstValue(v2);
  v5 = glpSANode(a1, ConstValue);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpCaseStatementNodeSetConstValue(v2, v5);
    if (glpCaseStatementNodeGetIsStray(v2))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v14);
      glpLogMessage(InfoLog, 0, &v14, "case disallowed outside switch body", v7, v8, v9, v10, v13);
      return glpSAFailed();
    }

    else
    {
      PrimitiveType = glpGetPrimitiveType(0);
      glpASTNodeSetSaType(v2, PrimitiveType);
    }

    return v2;
  }
}

uint64_t glpSADefaultStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  if (glpDefaultStatementNodeGetIsStray(v2))
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(v2, &v12);
    glpLogMessage(InfoLog, 0, &v12, "default disallowed outside switch body", v5, v6, v7, v8, v11);
    return glpSAFailed();
  }

  else
  {
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v2, PrimitiveType);
  }

  return v2;
}

uint64_t glpSABreakStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  NameTable = glpCompilerGetNameTable(a1);
  CurrentFunction = glpNameTableGetCurrentFunction(NameTable);
  if (*(CurrentFunction + 124) || *(CurrentFunction + 120))
  {
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v2, PrimitiveType);
  }

  else
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(v2, &v14);
    glpLogMessage(InfoLog, 0, &v14, "break disallowed outside switch/loop body", v9, v10, v11, v12, v13);
    return glpSAFailed();
  }

  return v2;
}

uint64_t glpSAContinueStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  NameTable = glpCompilerGetNameTable(a1);
  if (*(glpNameTableGetCurrentFunction(NameTable) + 120))
  {
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v2, PrimitiveType);
  }

  else
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(v2, &v13);
    glpLogMessage(InfoLog, 0, &v13, "continue disallowed outside loop body", v7, v8, v9, v10, v12);
    return glpSAFailed();
  }

  return v2;
}

uint64_t glpSADiscardStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  NameTable = glpCompilerGetNameTable(a1);
  if (glpNameTableGetLanguage(NameTable) == 4)
  {
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v2, PrimitiveType);
  }

  else
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(v2, &v13);
    glpLogMessage(InfoLog, 0, &v13, "'discard' is only meaningful in the fragment shader.", v7, v8, v9, v10, v12);
    return glpSAFailed();
  }

  return v2;
}

uint64_t glpSAReturnStatement(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  glpSAStatement(a2);
  Expr = glpReturnStatementNodeGetExpr(v2);
  v5 = glpSANode(a1, Expr);
  if (v5 != -1)
  {
    glpReturnStatementNodeSetExpr(v2, v5);
    if (glpReturnStatementNodeGetExpr(v2))
    {
      v6 = glpReturnStatementNodeGetExpr(v2);
      SaType = glpASTNodeGetSaType(v6);
    }

    else
    {
      SaType = glpGetPrimitiveType(0);
    }

    v9 = SaType;
    NameTable = glpCompilerGetNameTable(a1);
    CurrentFunction = glpNameTableGetCurrentFunction(NameTable);
    v12 = CurrentFunction;
    if ((*(CurrentFunction + 9) & 0x20) != 0 && *(CurrentFunction + 112))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v40);
      v36 = *(v12 + 32);
      v37 = *(v12 + 24);
      v18 = "Inline function '%.*s' can only have 1 return";
LABEL_11:
      glpLogMessage(InfoLog, 0, &v40, v18, v14, v15, v16, v17, v36);
      return glpSAFailed();
    }

    *(CurrentFunction + 112) = 1;
    ReturnType = glpFunctionTypeGetReturnType(*CurrentFunction);
    if (!glpTypesEqual(v9, ReturnType) && !glpTypeGetKind(v9) && !glpTypeGetKind(ReturnType))
    {
      ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v9);
      v23 = glpPrimitiveTypeGetPrimitiveType(ReturnType);
      if (!glpCanConvert(PrimitiveType, v23, ImplicitConversionPolicy))
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v2, &v40);
        v18 = "Expression in 'return' statement must match return type of function (and no available implicit conversion)";
        goto LABEL_11;
      }

      v24 = glpReturnStatementNodeGetExpr(v2);
      v25 = glpConvert(a1, v24, ReturnType, 0);
      glpReturnStatementNodeSetExpr(v2, v25);
    }

    glpASTNodeSetSaType(v2, v9);
    glpReturnStatementNodeSetExtra(v2, v12);
    if (!glpReturnStatementNodeGetExpr(v2))
    {
      return v2;
    }

    v40 = 0uLL;
    v41 = 0;
    glpASTNodeGetLocation(v2, &v40);
    v26 = *(glpReturnStatementNodeGetExtra(v2) + 72);
    v38 = v40;
    v39 = v41;
    LValueForVariableObject = glpMakeLValueForVariableObject(a1, &v38, v26);
    Allocator = glpCompilerGetAllocator(a1);
    v38 = v40;
    v39 = v41;
    glpMakeCommaExprNode(Allocator, &v38, 0);
    v30 = v29;
    v31 = glpCompilerGetAllocator(a1);
    v32 = glpReturnStatementNodeGetExpr(v2);
    v38 = v40;
    v39 = v41;
    AssignFragment = glpMakeAssignFragment(a1, &v38, LValueForVariableObject, v32);
    glpCommaExprNodeAddExpr(v31, v30, AssignFragment);
    v34 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v34, v30, v2);
    glpReturnStatementNodeSetExpr(v2, 0);
    v35 = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v2, v35);
    return glpSANode(a1, v30);
  }

  return glpSAFailed();
}

uint64_t glpSATopLevel(uint64_t a1, uint64_t a2)
{
  NameTable = glpCompilerGetNameTable(a1);
  glpNameTableSetTopLevelBlock(NameTable, a2);
  DefCount = glpTopLevelNodeGetDefCount(a2);
  if (!DefCount)
  {
    goto LABEL_8;
  }

  v6 = -DefCount;
  v7 = 1;
  do
  {
    v8 = glpTopLevelNodeGetDefCount(a2);
    Def = glpTopLevelNodeGetDef(a2, v8 + v6);
    v10 = glpCompilerGetNameTable(a1);
    glpNameTableSetStatementIndex(v10, v8 + v6);
    v11 = glpSANode(a1, Def);
    v12 = glpTopLevelNodeGetDefCount(a2);
    if (v11 != -1)
    {
      glpTopLevelNodeSetDef(a2, v12 + v6, v11);
    }

    v7 &= v11 != -1;
  }

  while (!__CFADD__(v6++, 1));
  if ((v7 & 1) == 0)
  {

    return glpSAFailed();
  }

  else
  {
LABEL_8:
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    v15 = glpCompilerGetNameTable(a1);
    if (glpNameTableGetLanguage(v15) == 1 && !glpCheckBarrier(a2))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v23[0] = "-1";
      v23[1] = 0xEDA00000002;
      v23[2] = 0xFFFFFFFFLL;
      glpLogMessage(InfoLog, 0, v23, "You can't call barrier() outside main, within control flow, or after a return statement.", v17, v18, v19, v20, v22);
      return glpSAFailed();
    }

    return a2;
  }
}

uint64_t glpSASubroutineRawCall(uint64_t a1, uint64_t a2)
{
  v4 = glpSubroutineRawCallNodeGetIndexExpr(a2);
  v5 = glpSANode(a1, v4);
  if (v5 != -1)
  {
    glpSubroutineRawCallNodeSetIndexExpr(a2, v5);
    abort();
  }

  return glpSAFailed();
}

uint64_t glpSAOffset(uint64_t a1, uint64_t a2)
{
  BankIndex = glpOffsetNodeGetBankIndex(a2);
  v5 = glpSANode(a1, BankIndex);
  v6 = v5 == -1;
  if (v5 != -1)
  {
    glpOffsetNodeSetBankIndex(a2, v5);
  }

  OffsetExpr = glpOffsetNodeGetOffsetExpr(a2);
  v8 = glpSANode(a1, OffsetExpr);
  if (v8 == -1)
  {
    v6 = 1;
  }

  else
  {
    glpOffsetNodeSetOffsetExpr(a2, v8);
  }

  VectorElementExpr = glpOffsetNodeGetVectorElementExpr(a2);
  v10 = glpSANode(a1, VectorElementExpr);
  if (v10 != -1)
  {
    glpOffsetNodeSetVectorElementExpr(a2, v10);
    if (!v6)
    {
      abort();
    }
  }

  return glpSAFailed();
}

uint64_t glpSALValue(uint64_t a1, uint64_t a2)
{
  if (glpSADeref(a1, a2) != -1)
  {
    abort();
  }

  return glpSAFailed();
}

uint64_t glpSARValue(uint64_t a1, uint64_t a2)
{
  if (glpSADeref(a1, a2) != -1)
  {
    Base = glpRValueNodeGetBase(a2);
    v5 = glpSANode(a1, Base);
    if (v5 != -1)
    {
      glpRValueNodeSetBase(a2, v5);
      abort();
    }
  }

  return glpSAFailed();
}

uint64_t glpSAIBPartialDeref(uint64_t a1, uint64_t a2)
{
  BankIndex = glpIBPartialDerefNodeGetBankIndex(a2);
  v5 = glpSANode(a1, BankIndex);
  if (v5 != -1)
  {
    glpIBPartialDerefNodeSetBankIndex(a2, v5);
    abort();
  }

  return glpSAFailed();
}

uint64_t glpSAPPStreamOp(uint64_t a1, uint64_t a2)
{
  if (glpSACall(a1, a2) != -1)
  {
    abort();
  }

  return glpSAFailed();
}

uint64_t glpSAUnaryOperator(uint64_t a1, uint64_t a2)
{
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  v5 = glpSANode(a1, Expr);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpUnaryOperatorNodeSetExpr(a2, v5);
    v6 = glpUnaryOperatorNodeGetExpr(a2);
    SaFlags = glpASTNodeGetSaFlags(v6);
    glpASTNodeSetSaFlags(a2, SaFlags & 0x7F);
    return a2;
  }
}

void *__glpSAVariableIdentifier_block_invoke(void *result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  v6 = *(*(result[4] + 8) + 24);
  if (v6)
  {
    v7 = v6 == 6;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || (result = glpNameTableGetGLSLVersion(result[6]), result != 1))
  {
    *a5 = 1;
  }

  return result;
}

void *__glpSATypeIdentifier_block_invoke(void *result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(result[4] + 8) + 24) = a2;
  *(*(result[5] + 8) + 24) = a3;
  v6 = *(*(result[4] + 8) + 24);
  if (v6)
  {
    v7 = v6 == 6;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || (result = glpNameTableGetGLSLVersion(result[6]), result != 1))
  {
    *a5 = 1;
  }

  return result;
}

uint64_t glpSACall(uint64_t a1, uint64_t a2)
{
  if (glpIsUndeterminedCallNode(a2))
  {
    v4 = glpUndeterminedCallNodeGetCallee(a2);
    if (glpIsVariableIdentifierNode(v4))
    {
      NameTable = glpCompilerGetNameTable(a1);
      if (glpNameTableIsExtensionEnabled(NameTable, 0x24u))
      {
        v6 = glpUndeterminedCallNodeGetCallee(a2);
        Name = glpVariableIdentifierNodeGetName(v6);
        if (glpStringsEqual("$assert", 0x75B16CFF00000007uLL, Name, v8))
        {
          return a2;
        }
      }
    }
  }

  if (!glpCallNodeGetArgCount(a2))
  {
    return a2;
  }

  v9 = 0;
  v10 = 1;
  do
  {
    v11 = glpCallNodeGetArg(a2, v9);
    v12 = glpSANode(a1, v11);
    if (v12 == -1)
    {
      v10 = 0;
    }

    else
    {
      glpCallNodeSetArg(a2, v9, v12);
    }

    ++v9;
  }

  while (v9 < glpCallNodeGetArgCount(a2));
  if (v10)
  {
    return a2;
  }

  return glpSAFailed();
}

uint64_t __glpSAUndeterminedCall_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v8 = result;
  if (a2 == 4 || a2 == 7 || (result = glpNameTableGetGLSLVersion(*(result + 48)), result != 1) && (result = glpCompilerGetIOSVersion(v8[7]), result >= 9))
  {
    *(*(v8[4] + 8) + 24) = a2;
    *(*(v8[5] + 8) + 24) = a3;
    *a5 = 1;
  }

  return result;
}

uint64_t __glpSASubroutineArrayCall_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t __glpSAMethodCall_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t glpSAIncrementOperator(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (glpSAUnaryOperator(a1, a2) != -1)
  {
    Expr = glpUnaryOperatorNodeGetExpr(v2);
    SaType = glpASTNodeGetSaType(Expr);
    if (glpTypeGetKind(SaType))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v16);
      v11 = "Pre- or post- -increment or -decrement of nonprimitive type";
    }

    else
    {
      v13 = glpASTNodeGetSaType(Expr);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v13);
      if (glpPrimitiveTypeGetCategory(PrimitiveType) - 1 >= 3)
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v2, &v16);
        v11 = "Pre- or post- -increment or -decrement of nonscalar nonvector nonmatrix type";
      }

      else if (glpIsLValueNode(Expr))
      {
        if ((glpASTNodeGetSaFlags(Expr) & 0x360) == 0)
        {
          return v2;
        }

        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v2, &v16);
        v11 = "Pre- or post- -increment or -decrement of read-only variable";
      }

      else
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v2, &v16);
        v11 = "Pre- or post- -increment or -decrement of non-lvalue";
      }
    }

    glpLogMessage(InfoLog, 0, &v16, v11, v7, v8, v9, v10, v15);
    return glpSAFailed();
  }

  return glpSAFailed();
}

uint64_t glpSABinaryOperator(uint64_t a1, uint64_t a2)
{
  Lhs = glpBinaryOperatorNodeGetLhs(a2);
  v5 = glpSANode(a1, Lhs);
  if (v5 != -1)
  {
    glpBinaryOperatorNodeSetLhs(a2, v5);
  }

  Rhs = glpBinaryOperatorNodeGetRhs(a2);
  v7 = glpSANode(a1, Rhs);
  if (v7 != -1)
  {
    glpBinaryOperatorNodeSetRhs(a2, v7);
    if (v5 != -1)
    {
      v8 = glpBinaryOperatorNodeGetLhs(a2);
      v9 = glpBinaryOperatorNodeGetRhs(a2);
      SaFlags = glpASTNodeGetSaFlags(v8);
      v11 = glpASTNodeGetSaFlags(v9);
      if (glpCompilerDoesTrackPrecision(a1))
      {
        v12 = SaFlags & 0x1F;
        v13 = v11 & 0x1F;
        if (v12 != v13 && !glpIsAssignNode(a2) && !glpIsOpAssignNode(a2))
        {
          if (v12 == 31 || (SaFlags & 0x1F) == 0)
          {
            v15 = glpBinaryOperatorNodeGetLhs(a2);
            glpPushdownPrecision(a1, v15, v11 & 0x1F);
            goto LABEL_14;
          }

          if (v13 != 31 && (v11 & 0x1F) != 0)
          {
            if (v12 <= v13)
            {
              SaType = glpASTNodeGetSaType(v8);
              v20 = glpConvert(a1, v8, SaType, v11 & 0x1F);
              glpBinaryOperatorNodeSetLhs(a2, v20);
              goto LABEL_14;
            }

            v17 = glpASTNodeGetSaType(v9);
            v18 = glpConvert(a1, v9, v17, SaFlags & 0x1F);
            glpBinaryOperatorNodeSetRhs(a2, v18);
          }

          else
          {
            v16 = glpBinaryOperatorNodeGetRhs(a2);
            glpPushdownPrecision(a1, v16, SaFlags & 0x1F);
          }
        }

        v13 = SaFlags & 0x1F;
      }

      else
      {
        v13 = 0;
      }

LABEL_14:
      glpASTNodeSetSaFlags(a2, v13 | SaFlags & v11 & 0x60);
      return a2;
    }
  }

  return glpSAFailed();
}

uint64_t glpSwizzleHasDuplicateComponents(unsigned int a1)
{
  v1 = a1 & 7;
  if ((a1 & 7) == 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = v1 - 1;
  v4 = 5;
  while (1)
  {
    v5 = v2 + 1;
    if (v2 + 1 < v1)
    {
      break;
    }

LABEL_7:
    v4 += 2;
    --v3;
    v2 = v5;
    if (v5 == v1)
    {
      return 0;
    }
  }

  v6 = a1 >> (2 * v2 + 3);
  v7 = v3;
  v8 = v4;
  while ((((a1 >> v8) ^ v6) & 3) != 0)
  {
    v8 += 2;
    if (!--v7)
    {
      goto LABEL_7;
    }
  }

  return 1;
}

uint64_t __glpSAFunctionPrototype_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t __glpSAFunctionPrototype_block_invoke_2(uint64_t result, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v9 = result;
  if (a2 == 4 || (result = glpNameTableGetGLSLVersion(*(result + 56)), result != 1))
  {
    *(*(v9[4] + 8) + 24) = a2;
    *(*(v9[5] + 8) + 24) = a3;
    *(*(v9[6] + 8) + 24) = a4;
    *a5 = 1;
  }

  return result;
}

uint64_t __glpSAFunctionPrototype_block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *(*(*(result + 40) + 8) + 24) = a4 == 3;
  *a5 = 1;
  return result;
}

uint64_t __glpSAFunctionPrototype_block_invoke_4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t __glpSAVariableDeclaration_block_invoke(uint64_t result, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v9 = result;
  if (!a2 || a2 == 6 || (result = glpNameTableGetGLSLVersion(*(result + 56)), result != 1))
  {
    *(*(v9[4] + 8) + 24) = a2;
    *(*(v9[5] + 8) + 24) = a3;
    *(*(v9[6] + 8) + 24) = a4 == 3;
    *a5 = 1;
  }

  return result;
}

uint64_t __glpSAVariableDeclaration_block_invoke_2(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a2 == 1)
  {
    *a5 = 1;
  }

  *(*(*(result + 32) + 8) + 24) = a3;
  return result;
}

uint64_t __glpSAVariableDeclaration_block_invoke_3(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t __glpSAQualifiedDeclaration_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t glpSAStructure(uint64_t a1, uint64_t a2)
{
  if (!glpStructureNodeGetFieldCount(a2))
  {
    return a2;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    Field = glpStructureNodeGetField(a2, v4);
    v7 = glpSANode(a1, Field);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpStructureNodeSetField(a2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpStructureNodeGetFieldCount(a2));
  if (v5)
  {
    return a2;
  }

  return glpSAFailed();
}

uint64_t __glpSAStructType_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v8 = result;
  if (!a2 || a2 == 6 || (result = glpNameTableGetGLSLVersion(*(result + 48)), result != 1))
  {
    *(*(*(v8 + 32) + 8) + 24) = a2;
    *(*(*(v8 + 40) + 8) + 24) = a3;
    *a5 = 1;
  }

  return result;
}

uint64_t __glpSAInterfaceBlock_block_invoke(uint64_t result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t __glpSAInterfaceBlock_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

uint64_t glpSADeref(uint64_t a1, uint64_t a2)
{
  Offset = glpDerefNodeGetOffset(a2);
  v5 = glpSANode(a1, Offset);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpDerefNodeSetOffset(a2, v5);
    return a2;
  }
}

char *glpSetFilename(uint64_t a1, char *__s)
{
  v4 = *(*(a1 + 32) + 784);
  strlen(__s);
  v5 = glpCompilerPoolAlloc(v4);
  result = strcpy(v5, __s);
  *(a1 + 304) = result;
  return result;
}

char *glpSetFileNumber(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__s = 0u;
  v6 = 0u;
  snprintf_l(__s, 0x100uLL, 0, "%d", a2);
  result = glpSetFilename(a1, __s);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t yylex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (!*(a3 + 80))
  {
    *(a3 + 80) = 1;
    if (!*(a3 + 84))
    {
      *(a3 + 84) = 1;
    }

    if (!*(a3 + 8))
    {
      *(a3 + 8) = *MEMORY[0x277D85E00];
    }

    if (!*(a3 + 16))
    {
      *(a3 + 16) = *MEMORY[0x277D85E08];
    }

    v5 = *(a3 + 40);
    if (!v5 || (v6 = *(a3 + 24), (v7 = *(v5 + 8 * v6)) == 0))
    {
      yyensure_buffer_stack(a3);
      buffer = yy_create_buffer(*(a3 + 8), 0x4000, a3);
      v4 = a1;
      v6 = *(a3 + 24);
      *(*(a3 + 40) + 8 * v6) = buffer;
      v5 = *(a3 + 40);
      v7 = *(v5 + 8 * v6);
    }

    *(a3 + 56) = *(v7 + 32);
    v10 = *(v7 + 16);
    *(a3 + 72) = v10;
    *(a3 + 136) = v10;
    *(a3 + 8) = **(v5 + 8 * v6);
    *(a3 + 48) = *v10;
  }

  v11 = (a3 + 72);
  v12 = (a3 + 120);
LABEL_13:
  v13 = *(a3 + 72);
  *v13 = *(a3 + 48);
  v14 = *(a3 + 84);
  v15 = v13;
  do
  {
LABEL_14:
    v16 = yy_ec[*v15];
    if (yy_accept[v14])
    {
      *(a3 + 112) = v14;
      *(a3 + 120) = v15;
    }

    v17 = v14;
    v18 = yy_base[v14] + v16;
    if (v14 != yy_chk[v18])
    {
      do
      {
        v17 = yy_def[v17];
        if (v17 >= 876)
        {
          v16 = *(&yy_meta + v16);
        }

        v18 = yy_base[v17] + v16;
      }

      while (yy_chk[v18] != v17);
    }

    v14 = yy_nxt[v18];
    ++v15;
  }

  while (v14 != 875);
  while (1)
  {
    previous_state = *(a3 + 112);
    v20 = v12;
LABEL_22:
    v21 = *v20;
    v22 = yy_accept[previous_state];
    *(a3 + 136) = v13;
    *(a3 + 64) = v21 - v13;
    *(a3 + 48) = *v21;
    *v21 = 0;
    *(a3 + 72) = v21;
LABEL_23:
    switch(v22)
    {
      case 0:
        *v21 = *(a3 + 48);
        continue;
      case 1:
        if (*(*a3 + 756) == 3)
        {
          return 0;
        }

        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 310;
      case 2:
        if (*(*a3 + 756) == 3)
        {
          return 0;
        }

        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 309;
      case 3:
        if (*(*a3 + 756) == 3)
        {
          return 0;
        }

        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 428;
      case 4:
        if (*(*a3 + 756) == 3)
        {
          return 0;
        }

        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 429;
      case 5:
        if (*(*a3 + 756) == 3)
        {
          return 0;
        }

        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 431;
      case 6:
        if (*(*a3 + 756) == 3)
        {
          return 0;
        }

        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 430;
      case 7:
      case 10:
      case 20:
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
      case 46:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 86:
      case 87:
      case 90:
      case 91:
      case 92:
      case 94:
      case 96:
      case 118:
      case 122:
      case 123:
      case 124:
      case 128:
      case 130:
      case 131:
      case 136:
      case 137:
      case 143:
      case 145:
      case 146:
      case 150:
      case 153:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 170:
      case 171:
      case 174:
      case 175:
      case 176:
      case 178:
      case 180:
      case 205:
        v37 = *a3;
        goto LABEL_45;
      case 8:
      case 17:
      case 19:
      case 38:
      case 39:
      case 40:
      case 41:
      case 43:
      case 44:
      case 45:
      case 47:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 57:
      case 58:
      case 59:
      case 80:
      case 82:
      case 84:
      case 101:
      case 116:
      case 117:
      case 120:
      case 126:
      case 139:
      case 142:
      case 148:
      case 149:
      case 151:
      case 154:
      case 156:
      case 157:
      case 158:
      case 168:
      case 169:
      case 181:
      case 190:
        v47 = *a3;
        goto LABEL_52;
      case 9:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 258;
      case 11:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 260;
      case 12:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 263;
      case 13:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 271;
      case 14:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 272;
      case 15:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 273;
      case 16:
        v58 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        if (v58 <= 5)
        {
          goto LABEL_47;
        }

        return 342;
      case 18:
        v56 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        if (v56 <= 5)
        {
          goto LABEL_47;
        }

        return 290;
      case 21:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 259;
      case 22:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 264;
      case 23:
        v57 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        if (v57 <= 5)
        {
          goto LABEL_47;
        }

        return 343;
      case 24:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 269;
      case 37:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 265;
      case 42:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 266;
      case 48:
        v47 = *a3;
        if (*(*a3 + 40) < 6u)
        {
          goto LABEL_52;
        }

        *(v4 + 8) = *(v47 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 339;
      case 49:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 261;
      case 50:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 267;
      case 56:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 306;
      case 60:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 268;
      case 79:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 291;
      case 81:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 293;
      case 83:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 262;
      case 85:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 289;
      case 88:
        v95 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v95 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 322;
      case 89:
        v86 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v86 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 327;
      case 93:
        v90 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v90 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 323;
      case 95:
        v91 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v91 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 324;
      case 97:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 274;
      case 98:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 275;
      case 99:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 276;
      case 100:
        v37 = *a3;
        if (*(*a3 + 756) == 3 && *(v37 + 620) == 3 && *(v37 + 40) < 6u)
        {
          goto LABEL_45;
        }

        *(v4 + 8) = *(v37 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 347;
      case 102:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 308;
      case 103:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        goto LABEL_230;
      case 104:
        v92 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v92 < 6)
        {
          goto LABEL_48;
        }

LABEL_230:
        *(v39 + 20) = 1;
        return 280;
      case 105:
        v98 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v98 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 281;
      case 106:
        v73 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v73 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 282;
      case 107:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        goto LABEL_211;
      case 108:
        v59 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v59 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 283;
      case 109:
        v103 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v103 < 6)
        {
          goto LABEL_48;
        }

LABEL_211:
        *(v39 + 20) = 1;
        return 284;
      case 110:
        v94 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v94 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 285;
      case 111:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        goto LABEL_157;
      case 112:
        v70 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v70 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 286;
      case 113:
        v107 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v107 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 287;
      case 114:
        v93 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v93 < 6)
        {
          goto LABEL_48;
        }

LABEL_157:
        *(v39 + 20) = 1;
        return 288;
      case 115:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 307;
      case 119:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 292;
      case 121:
        v47 = *a3;
        if (*(*a3 + 40) < 6u)
        {
          goto LABEL_52;
        }

        v38 = *(v47 + 344);
        goto LABEL_46;
      case 125:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 305;
      case 127:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 270;
      case 129:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 299;
      case 132:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 303;
      case 133:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 300;
      case 134:
        v106 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v106 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 317;
      case 135:
        v96 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v96 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 320;
      case 138:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 345;
      case 140:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 304;
      case 141:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 301;
      case 144:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 302;
      case 147:
        v85 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v85 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 315;
      case 152:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 296;
      case 155:
        v47 = *a3;
        if (*(*a3 + 40) < 6u)
        {
LABEL_52:
          glpPaReservedWord(v47);
          return 0;
        }

        else
        {
          *(v4 + 8) = *(v47 + 344);
          *(v4 + 16) = *(*a3 + 340);
          return 341;
        }

      case 166:
        v60 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v60 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 340;
      case 167:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 294;
      case 172:
        v69 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v69 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 330;
      case 173:
        v105 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v105 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 335;
      case 177:
        v104 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v104 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 331;
      case 179:
        v89 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v89 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 332;
      case 182:
        v88 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v88 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 312;
      case 183:
        v97 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v97 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 313;
      case 184:
        v87 = *(*a3 + 40);
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        v39 = *a3;
        if (v87 < 6)
        {
          goto LABEL_48;
        }

        *(v39 + 20) = 1;
        return 314;
      case 185:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 295;
      case 186:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 277;
      case 187:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 278;
      case 188:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 279;
      case 189:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        *(*a3 + 20) = 1;
        return 297;
      case 191:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 298;
      case 192:
        *v4 = 1;
        goto LABEL_178;
      case 193:
        *v4 = 0;
LABEL_178:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 381;
      case 194:
      case 195:
      case 197:
        v50 = *(a3 + 136);
        v51 = v4;
        v52 = v50[strlen(v50) - 1] & 0xDF;
        *v51 = strtoul_l(v50, 0, 0, 0);
        *(v51 + 8) = *(*a3 + 344);
        *(v51 + 16) = *(*a3 + 340);
        if (v52 == 85)
        {
          return 337;
        }

        else
        {
          return 380;
        }

      case 196:
        InfoLog = glpCompilerGetInfoLog(*(*a3 + 784));
        v62 = *a3;
        StringZ = glpMakeStringZ(*(*a3 + 344));
        glpMakeSourceLocation(StringZ, v64, *(v62 + 340), v113);
        glpLogMessage(InfoLog, 0, v113, "'%s' : Invalid Octal number. ", v65, v66, v67, v68, *(a3 + 136));
        glpParseRecover(*a3);
        return 0;
      case 198:
      case 199:
      case 200:
        v48 = v4;
        *v4 = strtof_l(*(a3 + 136), 0, 0);
        *(v48 + 8) = *(*a3 + 344);
        *(v48 + 16) = *(*a3 + 340);
        return 379;
      case 201:
      case 202:
      case 203:
        v49 = v4;
        *v4 = strtod_l(*(a3 + 136), 0, 0);
        *(v49 + 8) = *(*a3 + 344);
        *(v49 + 16) = *(*a3 + 340);
        return 354;
      case 204:
        v37 = *a3;
        if (*(*a3 + 756) == 3 && *(v37 + 760) == 3)
        {
          return 0;
        }

LABEL_45:
        v38 = *(v37 + 344);
LABEL_46:
        *(v4 + 8) = v38;
        *(v4 + 16) = *(*a3 + 340);
LABEL_47:
        v39 = *a3;
LABEL_48:
        v40 = *(v39 + 784);
        v41 = v4;
        v42 = strlen(*(a3 + 136));
        v43 = glpCompilerPoolAlloc(v40);
        *v41 = v43;
        strcpy(v43, *(a3 + 136));
        v44 = *a3;
        v45 = *v41;

        return glpPaIdentOrType(v44, v45);
      case 206:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 393;
      case 207:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 425;
      case 208:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 401;
      case 209:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 386;
      case 210:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 416;
      case 211:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 403;
      case 212:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 412;
      case 213:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 415;
      case 214:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 390;
      case 215:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 427;
      case 216:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 419;
      case 217:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 394;
      case 218:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 420;
      case 219:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 395;
      case 220:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 426;
      case 221:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 391;
      case 222:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 400;
      case 223:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 421;
      case 224:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 397;
      case 225:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 418;
      case 226:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 385;
      case 227:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 396;
      case 228:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 422;
      case 229:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 383;
      case 230:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 398;
      case 231:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 387;
      case 232:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 389;
      case 233:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 423;
      case 234:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 388;
      case 235:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 384;
      case 236:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 399;
      case 237:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 424;
      case 238:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 402;
      case 239:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 392;
      case 240:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 417;
      case 241:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 406;
      case 242:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 407;
      case 243:
        *(v4 + 8) = *(*a3 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 409;
      case 244:
      case 254:
      case 255:
        goto LABEL_13;
      case 245:
        v35 = v4;
        v36 = v11;
        v112 = v12;
        glpPaParseComment(*a3, (v4 + 16));
        goto LABEL_43;
      case 246:
        v102 = *a3;
        *(v102 + 20) = 0;
        *(v4 + 8) = *(v102 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 414;
      case 247:
        v71 = *a3;
        *(v71 + 20) = 0;
        *(v4 + 8) = *(v71 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 408;
      case 248:
        v72 = *a3;
        *(v72 + 20) = 0;
        *(v4 + 8) = *(v72 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 413;
      case 249:
        v84 = *a3;
        *(v84 + 20) = 0;
        *(v84 + 4) = 1;
        *(v4 + 8) = *(v84 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 404;
      case 250:
        v75 = *a3;
        *(v75 + 20) = 0;
        *(v75 + 4) = 0;
        *(v4 + 8) = *(v75 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 405;
      case 251:
        v74 = *a3;
        if (*(*a3 + 4))
        {
          *(v74 + 20) = 0;
        }

        *(v4 + 8) = *(v74 + 344);
        *(v4 + 16) = *(*a3 + 340);
        return 411;
      case 252:
        *(a3 + 84) = 3;
        return 410;
      case 253:
        *(a3 + 84) = 1;
        v99 = v4;
        v100 = strlen(*(a3 + 136));
        v101 = glpCompilerPoolAlloc(*(*a3 + 784));
        *v99 = v101;
        strcpy(v101, *(a3 + 136));
        *(v99 + 8) = *(*a3 + 344);
        *(v99 + 16) = *(*a3 + 340);
        return 382;
      case 256:
        v76 = glpCompilerGetInfoLog(*(*a3 + 784));
        StringBuffer = glpLogGetStringBuffer(v76);
        glpStringBufferAppendFormat(StringBuffer, "FLEX: Unknown char %s\n", v78, v79, v80, v81, v82, v83, *(a3 + 136));
        return 0;
      case 257:
        v35 = v4;
        v36 = v11;
        v112 = v12;
        fwrite(*(a3 + 136), *(a3 + 64), 1uLL, *(a3 + 16));
LABEL_43:
        v12 = v112;
        v11 = v36;
        v4 = v35;
        goto LABEL_13;
      case 258:
        v23 = *(a3 + 136);
        *v21 = *(a3 + 48);
        v24 = *(a3 + 40);
        v25 = *(a3 + 24);
        v26 = *(v24 + 8 * v25);
        if (*(v26 + 64))
        {
          v27 = *(a3 + 56);
        }

        else
        {
          v27 = *(v26 + 32);
          *(a3 + 56) = v27;
          *v26 = *(a3 + 8);
          v26 = *(v24 + 8 * v25);
          *(v26 + 64) = 1;
        }

        v110 = v4;
        v111 = v12;
        v109 = v11;
        if (*v11 > (*(v26 + 8) + v27))
        {
          v108 = v23;
          next_buffer = yy_get_next_buffer(a3);
          if (next_buffer == 1)
          {
            *(a3 + 88) = 0;
            *(a3 + 72) = *(a3 + 136);
            v22 = (*(a3 + 84) - 1) / 2 + 259;
            v11 = v109;
            v4 = v110;
            v12 = v111;
            goto LABEL_23;
          }

          if (next_buffer == 2)
          {
            *(a3 + 72) = *(*(*(a3 + 40) + 8 * *(a3 + 24)) + 8) + *(a3 + 56);
            previous_state = yy_get_previous_state(a3);
            v13 = *(a3 + 136);
            v11 = v109;
            v4 = v110;
            v20 = v109;
            v12 = v111;
            goto LABEL_22;
          }

          *(a3 + 72) = *(a3 + 136) + ~v108 + v21;
          v14 = yy_get_previous_state(a3);
          v15 = *(a3 + 72);
          v13 = *(a3 + 136);
          v11 = v109;
          v4 = v110;
          v12 = v111;
          goto LABEL_14;
        }

        *(a3 + 72) = *(a3 + 136) + ~v23 + v21;
        v29 = yy_get_previous_state(a3);
        if (yy_accept[v29])
        {
          v30 = *(a3 + 72);
          *(a3 + 112) = v29;
          *(a3 + 120) = v30;
        }

        v31 = v29;
        v32 = yy_base[v29] + 1;
        v11 = v109;
        v4 = v110;
        v12 = v111;
        if (v29 != yy_chk[v32])
        {
          do
          {
            v33 = yy_def[v31];
            v31 = v33;
            v32 = yy_base[v33] + 1;
          }

          while (v33 != yy_chk[v32]);
        }

        v34 = yy_nxt[v32];
        v13 = *(a3 + 136);
        if (yy_nxt[v32] && v34 != 875)
        {
          v14 = v34;
          v15 = (*v109 + 1);
          *v109 = v15;
          goto LABEL_14;
        }

        break;
      case 259:
      case 260:
        v53 = *a3;
        *(*a3 + 16) = 1;
        v54 = *(a3 + 40);
        if (v54)
        {
          v55 = *(v54 + 8 * *(a3 + 24));
        }

        else
        {
          v55 = 0;
        }

        yy_delete_buffer(v55, *(v53 + 24));
        return 0;
      default:
        glpLexerFatalError();
    }
  }
}

double yyensure_buffer_stack(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    if (a1[3] >= (v3 - 1))
    {
      v4 = v3 + 8;
      v5 = malloc_type_realloc(v2, 8 * (v3 + 8), 0x352A3853uLL);
      if (v5)
      {
        a1[5] = v5;
        v6 = &v5[8 * a1[4]];
        result = 0.0;
        *(v6 + 2) = 0u;
        *(v6 + 3) = 0u;
        *v6 = 0u;
        *(v6 + 1) = 0u;
        a1[4] = v4;
        return result;
      }

LABEL_8:
      abort();
    }
  }

  else
  {
    v8 = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL);
    if (!v8)
    {
      goto LABEL_8;
    }

    a1[5] = v8;
    *v8 = 0;
    result = 0.0;
    *(a1 + 3) = xmmword_23A29C340;
  }

  return result;
}

uint64_t yy_create_buffer(uint64_t a1, int a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x48uLL, 0xCA0EF1E7uLL);
  if (!v6 || (v7 = v6, v6[6] = a2, (v8 = malloc_type_malloc(a2 + 2, 0xCA0EF1E7uLL)) == 0))
  {
    abort();
  }

  *(v7 + 8) = v8;
  *(v7 + 40) = 1;
  yy_init_buffer(v7, a1, a3);
  return v7;
}

uint64_t glpPaIdentOrType(uint64_t a1, char *__s)
{
  if (*(a1 + 20))
  {
    return 377;
  }

  v5 = *(a1 + 32);
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

  if (!glpStringHashGet(v5, __s, v9 | v6))
  {
    return 377;
  }

  *(a1 + 20) = 1;
  return 378;
}

uint64_t glpPaReservedWord(uint64_t a1)
{
  v2 = *(a1 + 24);
  InfoLog = glpCompilerGetInfoLog(*(a1 + 784));
  v4 = *(a1 + 344);
  v5 = strlen(v4);
  if (v5)
  {
    v6 = v5;
    LODWORD(v7) = v5;
    do
    {
      v7 = (32 * v7 + (v7 >> 2) + v4[v6 - 1]) ^ v7;
      v6 += ~(v5 >> 5);
    }

    while (v6 > v5 >> 5);
    v8 = v7 << 32;
  }

  else
  {
    v8 = 0;
  }

  glpMakeSourceLocation(v4, v8 | v5, *(a1 + 340), v14);
  glpLogMessage(InfoLog, 0, v14, "'%s' : Reserved word. ", v9, v10, v11, v12, *(v2 + 136));
  return glpParseRecover(a1);
}

const char *glpMakeStringZ(const char *a1)
{
  v2 = strlen(a1);
  if (v2)
  {
    v3 = v2;
    v4 = v2;
    do
    {
      v4 ^= 32 * v4 + (v4 >> 2) + a1[v3 - 1];
      v3 += ~(v2 >> 5);
    }

    while (v3 > v2 >> 5);
  }

  return a1;
}

uint64_t glpPaParseComment(uint64_t a1, _DWORD *a2)
{
LABEL_1:
  v4 = 0;
  do
  {
    while (1)
    {
      v5 = v4;
      v6 = *(a1 + 24);
      **(v6 + 72) = *(v6 + 48);
      v7 = *(v6 + 72);
      v8 = *v7;
      if (!*v7)
      {
        if (v7 >= *(*(*(v6 + 40) + 8 * *(v6 + 24)) + 8) + *(v6 + 56))
        {
          v9 = *(v6 + 136);
          *(v6 + 72) = v7 + 1;
          next_buffer = yy_get_next_buffer(v6);
          if (next_buffer)
          {
            if (next_buffer != 1)
            {
              yyrestart(*(v6 + 8), v6);
            }

            goto LABEL_1;
          }

          v7 = &v7[*(v6 + 136) - v9];
          *(v6 + 72) = v7;
        }

        else
        {
          *v7 = 0;
          v7 = *(v6 + 72);
        }

        v8 = *v7;
      }

      *v7 = 0;
      v11 = (*(v6 + 72) + 1);
      *(v6 + 72) = v11;
      *(v6 + 48) = *v11;
      if (v8 == 47)
      {
        break;
      }

      v4 = 1;
      if (v8 != 42)
      {
        if (v8 == 10)
        {
          ++*a2;
        }

        goto LABEL_1;
      }
    }

    v4 = 0;
  }

  while ((v5 & 1) == 0);
  return 1;
}

void yy_delete_buffer(void **a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      v4 = *(v3 + 8 * *(a2 + 24));
    }

    else
    {
      v4 = 0;
    }

    if (v4 == a1)
    {
      *(v3 + 8 * *(a2 + 24)) = 0;
    }

    if (*(a1 + 10))
    {
      free(a1[1]);
    }

    free(a1);
  }
}

uint64_t yy_get_previous_state(uint64_t a1)
{
  v1 = *(a1 + 84);
  v2 = *(a1 + 136);
  v3 = *(a1 + 72);
  if (v2 < v3)
  {
    do
    {
      if (*v2)
      {
        v4 = yy_ec[*v2];
      }

      else
      {
        v4 = 1u;
      }

      if (yy_accept[v1])
      {
        *(a1 + 112) = v1;
        *(a1 + 120) = v2;
      }

      v5 = v1;
      v6 = yy_base[v1] + v4;
      if (v1 != yy_chk[v6])
      {
        do
        {
          v5 = yy_def[v5];
          if (v5 >= 876)
          {
            v4 = *(&yy_meta + v4);
          }

          v6 = yy_base[v5] + v4;
        }

        while (yy_chk[v6] != v5);
      }

      v1 = yy_nxt[v6];
      ++v2;
    }

    while (v2 != v3);
  }

  return v1;
}

uint64_t yy_get_next_buffer(void *a1)
{
  v1 = *(a1[5] + 8 * a1[3]);
  v2 = *(v1 + 8);
  v3 = a1[9];
  if (v3 > &v2[a1[7] + 1])
  {
    goto LABEL_38;
  }

  v5 = a1[17];
  if (*(v1 + 60))
  {
    v6 = ~v5 + v3;
    if (v6 >= 1)
    {
      v7 = ~v5 + v3;
      do
      {
        v8 = *v5++;
        *v2++ = v8;
        --v7;
      }

      while (v7);
      v1 = *(a1[5] + 8 * a1[3]);
    }

    v9 = v6;
    if (*(v1 + 64) == 2)
    {
      a1[7] = 0;
    }

    else
    {
      v11 = ~v6;
      v12 = *(v1 + 24);
      v13 = v12 + ~v6;
      if (!v13)
      {
        v14 = a1[9];
        while (*(v1 + 40))
        {
          v15 = *(v1 + 8);
          v16 = 2 * v12;
          *(v1 + 24) = v16;
          v17 = malloc_type_realloc(v15, v16 + 2, 0x352A3853uLL);
          if (!v17)
          {
            goto LABEL_36;
          }

          *(v1 + 8) = v17;
          v14 = &v17[v14 - v15];
          a1[9] = v14;
          v1 = *(a1[5] + 8 * a1[3]);
          v12 = *(v1 + 24);
          v13 = v12 + v11;
          if (v12 + v11)
          {
            goto LABEL_17;
          }
        }

        *(v1 + 8) = 0;
        goto LABEL_38;
      }

LABEL_17:
      if (v13 >= 0x2000)
      {
        v18 = 0x2000;
      }

      else
      {
        v18 = v13;
      }

      v19 = yylex_CPP(*a1 + 40, (*(v1 + 8) + v6), v18);
      a1[7] = v19;
      if (v19)
      {
        if (v19 >= v18)
        {
          goto LABEL_38;
        }

        *(*(*(a1[5] + 8 * a1[3]) + 8) + v6 + v19) = 32;
        v20 = a1[7];
        v21 = __CFADD__(v20, 1);
        v22 = v20 + 1;
        a1[7] = v22;
        v1 = *(a1[5] + 8 * a1[3]);
        *(v1 + 32) = v22;
        if (!v21)
        {
          v10 = 0;
LABEL_29:
          v23 = v22 + v6;
          if (v23 <= *(v1 + 24))
          {
            v29 = *(v1 + 8);
            goto LABEL_34;
          }

          v24 = v23 + (v22 >> 1);
          v25 = malloc_type_realloc(*(v1 + 8), v24, 0x352A3853uLL);
          if (!v25)
          {
LABEL_36:
            abort();
          }

          v26 = a1[5];
          v27 = a1[3];
          *(*(v26 + 8 * v27) + 8) = v25;
          v28 = *(v26 + 8 * v27);
          v29 = *(v28 + 8);
          if (v29)
          {
            *(v28 + 24) = v24 - 2;
            v23 = a1[7] + v9;
LABEL_34:
            a1[7] = v23;
            *(v29 + v23) = 0;
            *(*(*(a1[5] + 8 * a1[3]) + 8) + a1[7] + 1) = 0;
            a1[17] = *(*(a1[5] + 8 * a1[3]) + 8);
            return v10;
          }

LABEL_38:
          glpLexerFatalError();
        }

LABEL_26:
        if (v6)
        {
          v22 = 0;
          v10 = 2;
          *(v1 + 64) = 2;
        }

        else
        {
          yyrestart(a1[1], a1);
          v22 = a1[7];
          v1 = *(a1[5] + 8 * a1[3]);
          v10 = 1;
        }

        goto LABEL_29;
      }

      a1[7] = 0;
      v1 = *(a1[5] + 8 * a1[3]);
    }

    *(v1 + 32) = 0;
    goto LABEL_26;
  }

  if (v3 - v5 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

int *yyrestart(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4 && (v5 = *(a2 + 24), *(v4 + 8 * v5)) || (yyensure_buffer_stack(a2), buffer = yy_create_buffer(*(a2 + 8), 0x4000, a2), v5 = *(a2 + 24), *(*(a2 + 40) + 8 * v5) = buffer, (v4 = *(a2 + 40)) != 0))
  {
    v7 = *(v4 + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  result = yy_init_buffer(v7, a1, a2);
  v9 = *(a2 + 40);
  v10 = *(a2 + 24);
  v11 = *(v9 + 8 * v10);
  *(a2 + 56) = *(v11 + 32);
  v12 = *(v11 + 16);
  *(a2 + 72) = v12;
  *(a2 + 136) = v12;
  *(a2 + 8) = **(v9 + 8 * v10);
  *(a2 + 48) = *v12;
  return result;
}

int *yy_init_buffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *__error();
  yy_flush_buffer(a1, a3);
  *a1 = a2;
  *(a1 + 60) = 1;
  v7 = *(a3 + 40);
  if (v7)
  {
    v7 = *(v7 + 8 * *(a3 + 24));
  }

  if (v7 != a1)
  {
    *(a1 + 52) = 1;
  }

  *(a1 + 44) = 0;
  result = __error();
  *result = v6;
  return result;
}

uint64_t yy_flush_buffer(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = 0;
    **(result + 8) = 0;
    *(*(result + 8) + 1) = 0;
    *(result + 16) = *(result + 8);
    *(result + 48) = 1;
    *(result + 64) = 0;
    v2 = *(a2 + 40);
    if (v2)
    {
      v3 = *(v2 + 8 * *(a2 + 24));
    }

    else
    {
      v3 = 0;
    }

    if (v3 == result)
    {
      v4 = *(a2 + 24);
      v5 = *(v2 + 8 * v4);
      *(a2 + 56) = *(v5 + 32);
      v6 = *(v5 + 16);
      *(a2 + 72) = v6;
      *(a2 + 136) = v6;
      *(a2 + 8) = **(v2 + 8 * v4);
      *(a2 + 48) = *v6;
    }
  }

  return result;
}

void yypop_buffer_state(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(v1 + 8 * *(a1 + 24));
    if (v3)
    {
      yy_delete_buffer(v3, a1);
      v4 = *(a1 + 24);
      *(*(a1 + 40) + 8 * v4) = 0;
      if (v4)
      {
        *(a1 + 24) = --v4;
      }

      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = *(v5 + 8 * v4);
        if (v6)
        {
          *(a1 + 56) = *(v6 + 32);
          v7 = *(v6 + 16);
          *(a1 + 72) = v7;
          *(a1 + 136) = v7;
          *(a1 + 8) = **(v5 + 8 * v4);
          *(a1 + 48) = *v7;
          *(a1 + 88) = 1;
        }
      }
    }
  }
}

uint64_t yylex_init(uint64_t *a1)
{
  if (a1)
  {
    v2 = malloc_type_malloc(0x98uLL, 0xCA0EF1E7uLL);
    if (!v2)
    {
      abort();
    }

    v3 = v2;
    result = 0;
    *a1 = v3;
    v3[18] = 0;
    *(v3 + 7) = 0u;
    *(v3 + 8) = 0u;
    *(v3 + 5) = 0u;
    *(v3 + 6) = 0u;
    *(v3 + 3) = 0u;
    *(v3 + 4) = 0u;
    *(v3 + 1) = 0u;
    *(v3 + 2) = 0u;
    *v3 = 0u;
    v5 = *a1;
    *(v5 + 92) = 0;
    *(v5 + 96) = 0;
    *(v5 + 104) = 0;
    *(v5 + 8) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 40) = 0;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
  }

  else
  {
    *__error() = 22;
    return 1;
  }

  return result;
}

uint64_t yylex_destroy(uint64_t a1)
{
  for (i = *(a1 + 40); i; i = *(a1 + 40))
  {
    if (!i[*(a1 + 24)])
    {
      break;
    }

    yy_delete_buffer(i[*(a1 + 24)], a1);
    *(*(a1 + 40) + 8 * *(a1 + 24)) = 0;
    yypop_buffer_state(a1);
  }

  free(i);
  *(a1 + 40) = 0;
  free(*(a1 + 104));
  free(a1);
  return 0;
}

uint64_t glpPaParseStrings(uint64_t a1, uint64_t *a2, int *a3, int a4, int a5)
{
  ScanFromString(a1 + 40, *a2);
  if (a4)
  {
    v26 = 0;
    if (a4 < 1)
    {
LABEL_6:
      if (!a3)
      {
        v26 = strlen(*a2);
        a3 = &v26;
      }

      yyrestart(0, *(a1 + 24));
      *(a1 + 16) = 0;
      *(a1 + 364) = 0;
      *(a1 + 384) = a2;
      *(a1 + 376) = a4;
      *(a1 + 368) = a3;
      *(a1 + 68) = 0;
      NameTable = glpCompilerGetNameTable(*(a1 + 784));
      *(a1 + 40) = glpNameTableGetGLSLVersion(NameTable);
      *(a1 + 44) = 0;
      glpInitializeExtensionBehavior(a1);
      if ((**(a1 + 368) & 0x80000000) != 0)
      {
        return 0;
      }

      yyparse(a1);
      if (*(a1 + 360) != 1 && !*(a1 + 8) && *(a1 + 12) < 1)
      {
        return 0;
      }

      if (a5)
      {
        while (1)
        {
          v13 = *(a1 + 56);
          if (!v13)
          {
            break;
          }

          *(a1 + 56) = v13[1];
          free(v13);
        }
      }
    }

    else
    {
      v10 = a4;
      v11 = a2;
      while (*v11)
      {
        ++v11;
        if (!--v10)
        {
          goto LABEL_6;
        }
      }

      InfoLog = glpCompilerGetInfoLog(*(a1 + 784));
      v15 = *(a1 + 344);
      v16 = strlen(v15);
      if (v16)
      {
        v17 = v16;
        LODWORD(v18) = v16;
        do
        {
          v18 = (32 * v18 + (v18 >> 2) + v15[v17 - 1]) ^ v18;
          v17 += ~(v16 >> 5);
        }

        while (v17 > v16 >> 5);
        v19 = v18 << 32;
      }

      else
      {
        v19 = 0;
      }

      glpMakeSourceLocation(v15, v19 | v16, *(a1 + 340), v25);
      glpLogMessage(InfoLog, 0, v25, "'' : NULL shader source string ", v21, v22, v23, v24, v25[0]);
      glpParseRecover(a1);
    }
  }

  return 1;
}

void yyerror(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a2 + 16))
  {
    if ((*(a2 + 392) & 1) == 0)
    {
      return;
    }

    InfoLog = glpCompilerGetInfoLog(*(a2 + 784));
    v6 = *(a2 + 344);
    v7 = strlen(v6);
    if (v7)
    {
      v8 = v7;
      LODWORD(v9) = v7;
      do
      {
        v9 = (32 * v9 + (v9 >> 2) + v6[v8 - 1]) ^ v9;
        v8 += ~(v7 >> 5);
      }

      while (v8 > v7 >> 5);
      v10 = v9 << 32;
    }

    else
    {
      v10 = 0;
    }

    glpMakeSourceLocation(v6, v10 | v7, *(a2 + 340), v26);
    glpLogMessage(InfoLog, 0, v26, "'premature EOF' : syntax error %s", v22, v23, v24, v25, a3);
  }

  else
  {
    v11 = *(a2 + 24);
    v12 = glpCompilerGetInfoLog(*(a2 + 784));
    v13 = *(a2 + 344);
    v14 = strlen(v13);
    if (v14)
    {
      v15 = v14;
      LODWORD(v16) = v14;
      do
      {
        v16 = (32 * v16 + (v16 >> 2) + v13[v15 - 1]) ^ v16;
        v15 += ~(v14 >> 5);
      }

      while (v15 > v14 >> 5);
      v17 = v16 << 32;
    }

    else
    {
      v17 = 0;
    }

    glpMakeSourceLocation(v13, v17 | v14, *(a2 + 340), v26);
    glpLogMessage(v12, 0, v26, "'%s' : syntax error: %s", v18, v19, v20, v21, *(v11 + 136));
  }

  glpParseRecover(a2);
}

uint64_t **glpCPPWarningToInfoLog(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  InfoLog = glpCompilerGetInfoLog(*(v3 + 784));
  v5 = *(v3 + 344);
  v6 = strlen(v5);
  if (v6)
  {
    v7 = v6;
    LODWORD(v8) = v6;
    do
    {
      v8 = (32 * v8 + (v8 >> 2) + v5[v7 - 1]) ^ v8;
      v7 += ~(v6 >> 5);
    }

    while (v7 > v6 >> 5);
    v9 = v8 << 32;
  }

  else
  {
    v9 = 0;
  }

  glpMakeSourceLocation(v5, v9 | v6, *(v3 + 340), v15);
  return glpLogMessage(InfoLog, 1u, v15, "%s", v10, v11, v12, v13, a2);
}

uint64_t glpCPPShInfoLogMsg(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  InfoLog = glpCompilerGetInfoLog(*(v3 + 784));
  v5 = *(v3 + 344);
  v6 = strlen(v5);
  if (v6)
  {
    v7 = v6;
    LODWORD(v8) = v6;
    do
    {
      v8 = (32 * v8 + (v8 >> 2) + v5[v7 - 1]) ^ v8;
      v7 += ~(v6 >> 5);
    }

    while (v7 > v6 >> 5);
    v9 = v8 << 32;
  }

  else
  {
    v9 = 0;
  }

  glpMakeSourceLocation(v5, v9 | v6, *(v3 + 340), v15);
  glpLogMessage(InfoLog, 0, v15, "'' :  %s", v10, v11, v12, v13, a2);
  return glpParseRecover(v3);
}

uint64_t glpCPPErrorToInfoLog(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  InfoLog = glpCompilerGetInfoLog(*(v3 + 784));
  v5 = *(v3 + 344);
  v6 = strlen(v5);
  if (v6)
  {
    v7 = v6;
    LODWORD(v8) = v6;
    do
    {
      v8 = (32 * v8 + (v8 >> 2) + v5[v7 - 1]) ^ v8;
      v7 += ~(v6 >> 5);
    }

    while (v7 > v6 >> 5);
    v9 = v8 << 32;
  }

  else
  {
    v9 = 0;
  }

  glpMakeSourceLocation(v5, v9 | v6, *(v3 + 340), v15);
  glpLogMessage(InfoLog, 0, v15, "'' : syntax error: %s", v10, v11, v12, v13, a2);
  return glpParseRecover(v3);
}

uint64_t glpHandlePragma(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 32);
  v7 = *a2;
  if (!strcmp(*a2, "optimize"))
  {
    if (a3 == 4)
    {
      v9 = *(a2 + 8);
      if (*v9 == 40 && !v9[1])
      {
        result = *(a2 + 16);
        if (*result == 111 && *(result + 1) == 110 && !*(result + 2))
        {
          v13 = 1;
        }

        else
        {
          result = strcmp(result, "off");
          if (result)
          {
            v10 = "on or off expected after '(' for 'optimize' pragma";
            goto LABEL_17;
          }

          v13 = 0;
        }

        *(v6 + 608) = v13;
        v15 = *(a2 + 24);
        if (*v15 == 41 && !v15[1])
        {
          return result;
        }

        v10 = ") expected to end 'optimize' pragma";
        goto LABEL_17;
      }

      v10 = "( expected after 'optimize' keyword";
    }

    else
    {
      v10 = "optimize pragma syntax is incorrect";
    }

LABEL_17:

    return glpCPPShInfoLogMsg(a1, v10);
  }

  if (!strcmp(v7, "debug"))
  {
    if (a3 == 4)
    {
      v11 = *(a2 + 8);
      if (*v11 == 40 && !v11[1])
      {
        result = *(a2 + 16);
        if (*result == 111 && *(result + 1) == 110 && !*(result + 2))
        {
          v14 = 1;
        }

        else
        {
          result = strcmp(result, "off");
          if (result)
          {
            v10 = "on or off expected after '(' for 'debug' pragma";
            goto LABEL_17;
          }

          v14 = 0;
        }

        *(v6 + 612) = v14;
        v16 = *(a2 + 24);
        if (*v16 == 41 && !v16[1])
        {
          return result;
        }

        v10 = ") expected to end 'debug' pragma";
        goto LABEL_17;
      }

      v10 = "( expected after 'debug' keyword";
    }

    else
    {
      v10 = "debug pragma syntax is incorrect";
    }

    goto LABEL_17;
  }

  result = strcmp(v7, "STDGL");
  if (a3 < 2)
  {
    return result;
  }

  if (result)
  {
    return result;
  }

  result = strcmp(*(a2 + 8), "invariant");
  if (result)
  {
    return result;
  }

  if (*(v6 + 40) && *v6 == 4)
  {
    v10 = "'STDGL invariant' pragma is not allowed in fragment shader except in OpenGL ES 2";
    goto LABEL_17;
  }

  if (a3 != 5)
  {
    v10 = "'STDGL invariant' pragma syntax is incorrect";
    goto LABEL_17;
  }

  v12 = *(a2 + 16);
  if (*v12 != 40 || v12[1])
  {
    v10 = "( expected after 'invariant' keyword";
    goto LABEL_17;
  }

  if (strcmp(*(a2 + 24), "all"))
  {
    v10 = "all expected after '(' for 'STDGL invariant' pragma";
    goto LABEL_17;
  }

  v17 = *(a2 + 32);
  if (*v17 != 41 || v17[1])
  {
    v10 = ") expected to end 'STDGL invariant' pragma";
    goto LABEL_17;
  }

  v18 = *(v6 + 784);

  return glpCompilerForceAllOutputsToBeInvariant(v18);
}

uint64_t glpStoreErrMsg(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  StringBuffer = *(a1 + 312);
  if (!StringBuffer)
  {
    StringBuffer = glpMakeStringBuffer(&GLP_MALLOC_ALLOCATOR);
    *(a1 + 312) = StringBuffer;
  }

  return glpStringBufferAppendFormat(StringBuffer, " %s", a3, a4, a5, a6, a7, a8, a2);
}

uint64_t glpResetErrMsg(uint64_t a1)
{
  result = glpDestroyStringBuffer(*(a1 + 312));
  *(a1 + 312) = 0;
  return result;
}

uint64_t glpUpdateExtensionBehavior(uint64_t a1, char *a2, char *__s1)
{
  v6 = strcmp(__s1, "require");
  if (!v6)
  {
    v13 = 0;
    v14 = 1;
    goto LABEL_15;
  }

  if (!strcmp(__s1, "enable"))
  {
    v14 = 1;
    v13 = 1;
    goto LABEL_15;
  }

  if (strcmp(__s1, "disable"))
  {
    if (!strcmp(__s1, "warn"))
    {
      v14 = 0;
      v13 = 2;
      goto LABEL_15;
    }

    InfoLog = glpCompilerGetInfoLog(*(a1 + 784));
    v8 = *(a1 + 344);
    v9 = strlen(v8);
    if (v9)
    {
      v10 = v9;
      LODWORD(v11) = v9;
      do
      {
        v11 = (32 * v11 + (v11 >> 2) + v8[v10 - 1]) ^ v11;
        v10 += ~(v9 >> 5);
      }

      while (v10 > v9 >> 5);
      v12 = v11 << 32;
    }

    else
    {
      v12 = 0;
    }

    glpMakeSourceLocation(v8, v12 | v9, *(a1 + 340), v44);
    glpLogMessage(InfoLog, 0, v44, "'' :  behavior '%s' is not supported", v15, v16, v17, v18, __s1);
    glpParseRecover(a1);
  }

  v14 = 0;
  v13 = 3;
LABEL_15:
  if (!strcmp(a2, "all"))
  {
    if (v14)
    {
      return glpCPPShInfoLogMsg(a1 + 40, "extension 'all' cannot have 'require' or 'enable' behavior");
    }

    else
    {
      for (i = 0; i != 38; ++i)
      {
        result = glpExtensionAllowed(*(a1 + 784), i);
        if (result)
        {
          *(a1 + 616 + 4 * i) = v13;
          NameTable = glpCompilerGetNameTable(*(a1 + 784));
          result = glpNameTableSetGLSLExtensionBehavior(NameTable, i, v13);
        }
      }
    }
  }

  else
  {
    v19 = glpExtensionFromString(a2);
    if (v19 == 38 || (v20 = v19, !glpExtensionAllowed(*(a1 + 784), v19)))
    {
      v23 = glpCompilerGetInfoLog(*(a1 + 784));
      if (v6)
      {
        v24 = *(a1 + 344);
        v25 = strlen(v24);
        if (v25)
        {
          v26 = v25;
          LODWORD(v27) = v25;
          do
          {
            v27 = (32 * v27 + (v27 >> 2) + v24[v26 - 1]) ^ v27;
            v26 += ~(v25 >> 5);
          }

          while (v26 > v25 >> 5);
          v28 = v27 << 32;
        }

        else
        {
          v28 = 0;
        }

        glpMakeSourceLocation(v24, v28 | v25, *(a1 + 340), v44);
        return glpLogMessage(v23, 1u, v44, "extension '%s' is not supported", v36, v37, v38, v39, a2);
      }

      else
      {
        v31 = *(a1 + 344);
        v32 = strlen(v31);
        if (v32)
        {
          v33 = v32;
          LODWORD(v34) = v32;
          do
          {
            v34 = (32 * v34 + (v34 >> 2) + v31[v33 - 1]) ^ v34;
            v33 += ~(v32 >> 5);
          }

          while (v33 > v32 >> 5);
          v35 = v34 << 32;
        }

        else
        {
          v35 = 0;
        }

        glpMakeSourceLocation(v31, v35 | v32, *(a1 + 340), v44);
        glpLogMessage(v23, 0, v44, "'' :  extension '%s' is not supported", v40, v41, v42, v43, a2);
        return glpParseRecover(a1);
      }
    }

    else
    {
      *(a1 + 4 * v20 + 616) = v13;
      v21 = glpCompilerGetNameTable(*(a1 + 784));
      return glpNameTableSetGLSLExtensionBehavior(v21, v20, v13);
    }
  }

  return result;
}

uint64_t glpParseContextSetGLSLVersion(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = glpGLSLVersionFromInt(a2);
  if (v4 == 10 || (v5 = v4, !glpGLSLVersionAllowed(*(a1 + 784), v4)))
  {
    InfoLog = glpCompilerGetInfoLog(*(a1 + 784));
    v9 = *(a1 + 344);
    v10 = strlen(v9);
    if (v10)
    {
      v11 = v10;
      LODWORD(v12) = v10;
      do
      {
        v12 = (32 * v12 + (v12 >> 2) + v9[v11 - 1]) ^ v12;
        v11 += ~(v10 >> 5);
      }

      while (v11 > v10 >> 5);
      v13 = v12 << 32;
    }

    else
    {
      v13 = 0;
    }

    glpMakeSourceLocation(v9, v13 | v10, *(a1 + 340), v18);
    glpLogMessage(InfoLog, 0, v18, "'' :  version '%d' is not supported", v14, v15, v16, v17, v2);
    return glpParseRecover(a1);
  }

  else
  {
    *(a1 + 40) = v5;
    *(a1 + 44) = 1;
    NameTable = glpCompilerGetNameTable(*(a1 + 784));

    return glpNameTableSetGLSLVersion(NameTable, v5);
  }
}

uint64_t glpParseContextValidateGLSLVersion(uint64_t a1)
{
  result = glpGLSLVersionRequired(*(a1 + 784), *(a1 + 40));
  if (result && !*(a1 + 44))
  {
    InfoLog = glpCompilerGetInfoLog(*(a1 + 784));
    v4 = *(a1 + 344);
    v5 = strlen(v4);
    if (v5)
    {
      v6 = v5;
      LODWORD(v7) = v5;
      do
      {
        v7 = (32 * v7 + (v7 >> 2) + v4[v6 - 1]) ^ v7;
        v6 += ~(v5 >> 5);
      }

      while (v6 > v5 >> 5);
      v8 = v7 << 32;
    }

    else
    {
      v8 = 0;
    }

    glpMakeSourceLocation(v4, v8 | v5, *(a1 + 340), v14);
    glpLogMessage(InfoLog, 0, v14, "'' :  #version required and missing.", v9, v10, v11, v12, v13);
    return glpParseRecover(a1);
  }

  return result;
}

uint64_t glpLexerNew(uint64_t a1)
{
  result = yylex_init((a1 + 24));
  **(a1 + 24) = a1;
  return result;
}

uint64_t yyparse(void *a1)
{
  bzero(v79, 0x218uLL);
  v83 = 0uLL;
  v84 = 0;
  DWORD2(v85) = 1;
  *&v85 = 1;
  v82 = 0xFFFFFFFE00000000;
  v89 = 200;
  v2 = malloc_type_malloc(0x3840uLL, 0xCA0EF1E7uLL);
  if (!v2)
  {
    goto LABEL_147;
  }

  v87 = v2;
  v88 = v2;
  v90 = 0;
  v91 = 0;
  v94 = 1;
  v95 = 16;
  v3 = malloc_type_malloc(0x80uLL, 0xCA0EF1E7uLL);
  if (!v3)
  {
    goto LABEL_147;
  }

  v92 = v3;
  *v3 = 0;
  v4 = malloc_type_malloc(0x10uLL, 0xCA0EF1E7uLL);
  if (!v4)
  {
    goto LABEL_147;
  }

  v93 = v4;
  v5 = setjmp(v86);
  if (v5 == 2)
  {
    yyerror(&v85, a1, "memory exhausted");
    v5 = 2;
    goto LABEL_13;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      goto LABEL_147;
    }

    v6 = v88;
    v88 += 72;
    --v89;
    *(v6 + 1) = 0;
    *v6 = 1;
    v6[1] = 1;
    *(v6 + 1) = *v92;
    *(v6 + 2) = 0;
    v7 = v83;
    *(v6 + 5) = v84;
    *(v6 + 24) = v7;
    *(v6 + 3) = v85;
    v8 = v89;
    *v92 = v6;
    if (v8 <= 1)
    {
      yyexpandGLRStack(v79);
    }

    v9 = *(*v92 + 4);
    if (v9 == 161)
    {
LABEL_10:
      v5 = 0;
      goto LABEL_13;
    }

    v15 = 0;
    do
    {
      v16 = yypact[v9];
      v17 = v9;
      if (v16 == -400)
      {
        if (!yydefact[v9])
        {
          goto LABEL_90;
        }

        v18 = yyglrReduce(v79, 0, yydefact[v9], 1, a1);
        if (v18 <= 1)
        {
          if (!v18)
          {
            goto LABEL_133;
          }

          goto LABEL_146;
        }

        goto LABEL_92;
      }

      v19 = HIDWORD(v82);
      if (HIDWORD(v82) == -2)
      {
        v20 = yylex(&v83, &v85, a1[3]);
        v19 = v20;
        HIDWORD(v82) = v20;
        if (v20 < 1)
        {
          goto LABEL_34;
        }

        v21 = v20;
        if (v20 < 0x1B0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v21 = HIDWORD(v82);
        if (SHIDWORD(v82) < 1)
        {
LABEL_34:
          v22 = 0;
          goto LABEL_35;
        }

        if (HIDWORD(v82) <= 0x1AF)
        {
LABEL_32:
          v22 = yytranslate[v21];
          goto LABEL_33;
        }
      }

      v22 = 2;
LABEL_33:
      v19 = 1;
LABEL_35:
      v23 = v22 + v16;
      if ((v22 + v16) >> 1 <= 0x81A && v22 == yycheck[v23])
      {
        v24 = &yyconfl[yyconflp[v23]];
        v25 = yytable[v23];
        v26 = v24;
      }

      else
      {
        v25 = -yydefact[v17];
        v26 = yyconfl;
      }

      if (*v26)
      {
        v27 = v94;
        v28 = v15;
        while (v27)
        {
          v29 = 0;
          do
          {
            *(v93 + v29++) = HIDWORD(v82) != -2;
          }

          while (v29 < v94);
          if (!v94)
          {
            break;
          }

          for (i = 0; i < v94; ++i)
          {
            v31 = yyprocessOneStack(v79, i, a1);
            if (v31)
            {
              if (v31 == 1)
              {
                goto LABEL_10;
              }

              if (v31 != 2)
              {
                if (v31 != 3)
                {
                  goto LABEL_147;
                }

                goto LABEL_93;
              }

              goto LABEL_145;
            }
          }

          if (!v94)
          {
            break;
          }

          v32 = v94;
          v33 = 0;
          v34 = 0;
          do
          {
            v35 = v34;
            v36 = *(v92 + v33);
            if (v36)
            {
              *(v92 + v34) = v36;
              *(v93 + v34) = *(v93 + v33);
              v35 = v34 + 1;
              v32 = v94;
            }

            else
            {
              v94 = --v32;
            }

            ++v33;
            v34 = v35;
          }

          while (v35 < v32);
          if (!v32)
          {
            break;
          }

          if (SHIDWORD(v82) < 1)
          {
            v37 = 0;
          }

          else if (HIDWORD(v82) > 0x1AF)
          {
            v37 = 2;
          }

          else
          {
            v37 = yytranslate[HIDWORD(v82)];
          }

          HIDWORD(v82) = -2;
          v15 = v28 + 1;
          v38 = 0;
          do
          {
            v39 = *(*(v92 + v38) + 4);
            v40 = v37 + yypact[v39];
            if (v40 >> 1 <= 0x81A && v37 == yycheck[v40])
            {
              v41 = yytable[v40];
            }

            else
            {
              v41 = -yydefact[v39];
            }

            v42 = v88;
            v88 += 72;
            --v89;
            *v42 = 1;
            *(v42 + 1) = v41;
            v42[1] = 1;
            *(v42 + 1) = *(v92 + v38);
            *(v42 + 2) = v15;
            v43 = v83;
            *(v42 + 5) = v84;
            *(v42 + 24) = v43;
            *(v42 + 3) = v85;
            v44 = v89;
            *(v92 + v38) = v42;
            if (v44 <= 1)
            {
              yyexpandGLRStack(v79);
            }

            ++v38;
          }

          while (v38 < v94);
          v27 = v94;
          v28 = v15;
          if (v94 == 1)
          {
            v18 = yyresolveStack(v79, a1);
            if (v18 > 1)
            {
              goto LABEL_92;
            }

            if (!v18)
            {
              yycompressStack(v79);
              goto LABEL_133;
            }

LABEL_146:
            if (v18 != 1)
            {
LABEL_147:
              abort();
            }

            goto LABEL_10;
          }
        }

        if (!v91)
        {
          yyFail(v79, &v85, a1, "syntax error");
        }

        *v92 = v91;
        v94 = 1;
        v91 = 0;
        v18 = yyresolveStack(v79, a1);
        if (v18 <= 1)
        {
          if (v18)
          {
            goto LABEL_146;
          }

LABEL_90:
          v80 = v85;
          v48 = v79[0];
          if (!LODWORD(v79[0]))
          {
LABEL_91:
            yyerror(&v85, a1, "syntax error");
            LODWORD(v82) = v82 + 1;
            goto LABEL_93;
          }

LABEL_94:
          if (v48 == 3)
          {
            v49 = HIDWORD(v82);
            while (1)
            {
              if (v49 != -2)
              {
                if (!v49)
                {
                  goto LABEL_150;
                }

                *(*v92 + 56) = *(&v85 + 1);
              }

              v50 = yylex(&v83, &v85, a1[3]);
              v49 = v50;
              HIDWORD(v82) = v50;
              if (v50 < 1)
              {
                v51 = 0;
              }

              else
              {
                v51 = v50 > 0x1AF ? 2 : yytranslate[v50];
              }

              v52 = *v92;
              v53 = *(*v92 + 4);
              v54 = yypact[v53];
              if (v54 == -400)
              {
                break;
              }

              v55 = v51 + v54;
              if (v55 >> 1 <= 0x81A && v51 == yycheck[v55])
              {
                if (yytable[v55])
                {
                  break;
                }
              }

              else if (yydefact[v53])
              {
                break;
              }
            }
          }

          else
          {
            v56 = v94;
            if (!v94)
            {
              goto LABEL_150;
            }

            v57 = 0;
            while (1)
            {
              v58 = v57 + 1;
              if (*(v92 + v57))
              {
                break;
              }

              ++v57;
              if (v94 == v58)
              {
                goto LABEL_150;
              }
            }

            v59 = v57 + 1;
            if (v58 < v94)
            {
              do
              {
                if (*(v92 + v59))
                {
                  v91 = *(v92 + v59);
                }

                *(v92 + v59++) = 0;
              }

              while (v56 != v59);
            }

            v60 = v56;
            v61 = 0;
            v62 = 0;
            do
            {
              v63 = *(v92 + v61);
              if (v63)
              {
                *(v92 + v62) = v63;
                *(v93 + v62++) = *(v93 + v61);
                v60 = v94;
              }

              else
              {
                v94 = --v60;
              }

              ++v61;
            }

            while (v62 < v60);
            yycompressStack(v79);
            LODWORD(v79[0]) = 3;
            v64 = *v92;
            if (*v92)
            {
              v65 = v89 - 1;
              v66 = v92;
              while (1)
              {
                v67 = yypact[*(v64 + 4)];
                if (v67 >= -1)
                {
                  v68 = v67 + 1;
                  if (yycheck[v68] == 1)
                  {
                    v69 = yytable[v68];
                    if (v69 >= 1)
                    {
                      break;
                    }
                  }
                }

                v80 = *(v64 + 48);
                yydestroyGLRState(v64);
                *v66 = *(v64 + 8);
                v88 -= 72;
                v89 = v65 + 2;
                v64 = *v92;
                ++v65;
                v66 = v92;
                if (!*v92)
                {
                  goto LABEL_131;
                }
              }

              v81 = v85;
              *&v70 = v80;
              v71 = *(&v85 + 1);
              v72 = *(v64 + 16);
              v73 = v88;
              v88 += 72;
              v89 = v65;
              *v73 = 1;
              *(v73 + 1) = v69;
              v73[1] = 1;
              *(v73 + 1) = *v92;
              *(v73 + 2) = v72;
              v74 = v83;
              *(v73 + 5) = v84;
              *(&v70 + 1) = v71;
              *(v73 + 24) = v74;
              *(v73 + 3) = v70;
              v75 = v89;
              *v92 = v73;
              if (v75 <= 1)
              {
                yyexpandGLRStack(v79);
              }
            }

LABEL_131:
            v52 = *v92;
            if (!*v92)
            {
LABEL_150:
              longjmp(v86, 1);
            }
          }

          v15 = *(v52 + 16);
          goto LABEL_133;
        }

LABEL_92:
        if (v18 != 3)
        {
          if (v18 != 2)
          {
            goto LABEL_147;
          }

LABEL_145:
          v5 = 1;
          break;
        }

LABEL_93:
        v48 = v79[0];
        goto LABEL_94;
      }

      if (v25 < 1)
      {
        if (!v25)
        {
          v80 = v85;
          if (!LODWORD(v79[0]))
          {
            goto LABEL_91;
          }

          goto LABEL_93;
        }

        v18 = yyglrReduce(v79, 0, -v25, 1, a1);
        if (v18 > 1)
        {
          goto LABEL_92;
        }

        if (v18)
        {
          if (v18 != 1)
          {
            goto LABEL_147;
          }

          v5 = 0;
          break;
        }
      }

      else
      {
        if (v19)
        {
          HIDWORD(v82) = -2;
        }

        ++v15;
        v45 = v88;
        v88 += 72;
        --v89;
        *v45 = 1;
        *(v45 + 1) = v25;
        v45[1] = 1;
        *(v45 + 1) = *v92;
        *(v45 + 2) = v15;
        v46 = v83;
        *(v45 + 5) = v84;
        *(v45 + 24) = v46;
        *(v45 + 3) = v85;
        v47 = v89;
        *v92 = v45;
        if (v47 <= 1)
        {
          yyexpandGLRStack(v79);
        }

        if (SLODWORD(v79[0]) >= 1)
        {
          --LODWORD(v79[0]);
        }
      }

LABEL_133:
      v5 = 0;
      v9 = *(*v92 + 4);
    }

    while (v9 != 161);
  }

LABEL_13:
  v10 = v5;
  v11 = v87;
  if (v87)
  {
    if (v92 && v94)
    {
      v12 = v92;
      v13 = v94;
      while (1)
      {
        v14 = *v12;
        if (*v12)
        {
          break;
        }

        ++v12;
        if (!--v13)
        {
          goto LABEL_142;
        }
      }

      v76 = v89 + 1;
      do
      {
        v77 = v76;
        v80 = *(v14 + 48);
        yydestroyGLRState(v14);
        *v12 = *(v14 + 8);
        v88 -= 72;
        v89 = v77;
        v14 = *v12;
        v76 = v77 + 1;
      }

      while (*v12);
      v11 = v87;
    }

LABEL_142:
    free(v11);
    free(v92);
    free(v93);
  }

  return v10;
}

uint64_t yyglrReduce(void *a1, uint64_t a2, int a3, int a4, void *a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = a1[63];
  v10 = v9[a2];
  v11 = *(v10 + 16);
  v12 = a1[61];
  if (!a4 && v12)
  {
    v15 = v9[a2];
    if (yyr2[a3])
    {
      v16 = yyr2[a3] + 1;
      v15 = v9[a2];
      do
      {
        v15 = *(v15 + 8);
        if (!v15)
        {
          goto LABEL_62;
        }
      }

      while (--v16 >= 2);
    }

    if (v12 > v15)
    {
      a1[61] = v15;
      v12 = v15;
    }

    v17 = *(v15 + 4);
    v18 = yyr1[a3] - 177;
    v19 = (v17 + yypgoto[v18]);
    if (v19 >> 1 <= 0x81A && v17 == yycheck[v19])
    {
      v20 = &yytable + 2 * v19;
    }

    else
    {
      v20 = &yydefgoto + 2 * v18;
    }

    v33 = *v20;
    v34 = a1[65];
    if (v34)
    {
      for (i = 0; i != v34; ++i)
      {
        if (i != a2)
        {
          v36 = v9[i];
          v37 = !v36 || v36 == v15;
          if (!v37 && v36 != v12)
          {
            while (*(v36 + 16) >= v11)
            {
              v39 = *(v36 + 8);
              if (*(v36 + 4) == v33 && v39 == v15)
              {
                yyaddDeferredAction(a1, a2, v36, v10, a3);
                v45 = a1[63];
                v46 = *(v45 + 8 * a2);
                if (v46)
                {
                  a1[62] = v46;
                }

                result = 0;
                *(v45 + 8 * a2) = 0;
                goto LABEL_58;
              }

              v41 = v39 == v15 || v39 == v12;
              v36 = *(v36 + 8);
              if (v41)
              {
                break;
              }
            }
          }
        }
      }
    }

    v9[a2] = v15;
    v42 = a1[59];
    v43 = a1[60] - 1;
    a1[59] = v42 + 72;
    a1[60] = v43;
    *v42 = 1;
    *(v42 + 4) = v33;
    *(v42 + 1) = 0;
    *(v42 + 8) = *(a1[63] + 8 * a2);
    *(v42 + 16) = v11;
    *(v42 + 24) = 0;
    *(a1[63] + 8 * a2) = v42;
    yyaddDeferredAction(a1, a2, v42, v10, a3);
    goto LABEL_57;
  }

  v48 = 0uLL;
  v49 = 0;
  v47 = 0uLL;
  v13 = yyr2[a3];
  if (v12)
  {
    bzero(v50, 0x288uLL);
    v52 = v10;
    if (v13)
    {
      v14 = v13;
      while (1)
      {
        v10 = *(v10 + 8);
        if (!v10)
        {
          break;
        }

        if (!--v14)
        {
          goto LABEL_21;
        }
      }

LABEL_62:
      abort();
    }

    v51[3] = *(v10 + 48);
LABEL_21:
    if (v12 > v10)
    {
      a1[61] = v10;
    }

    v9[a2] = v10;
    v21 = v51;
  }

  else
  {
    if (a2)
    {
      goto LABEL_62;
    }

    v21 = *v9;
    v22 = a1[59] + 72 * -v13;
    v23 = a1[60] + v13;
    a1[59] = v22;
    a1[60] = v23;
    *v9 = v22 - 72;
  }

  result = yyuserAction(a3, v13, v21, &v48, &v47, a1, a5);
  if (!result)
  {
    v25 = *(*(a1[63] + 8 * a2) + 4);
    v26 = yyr1[a3] - 177;
    v27 = (v25 + yypgoto[v26]);
    if (v27 >> 1 <= 0x81A && v25 == yycheck[v27])
    {
      v28 = &yytable + 2 * v27;
    }

    else
    {
      v28 = &yydefgoto + 2 * v26;
    }

    v29 = *v28;
    v30 = a1[59];
    v31 = a1[60] - 1;
    a1[59] = v30 + 72;
    a1[60] = v31;
    *v30 = 1;
    *(v30 + 4) = v29;
    *(v30 + 1) = 1;
    *(v30 + 8) = *(a1[63] + 8 * a2);
    *(v30 + 16) = v11;
    v32 = v47;
    *(v30 + 24) = v48;
    *(v30 + 40) = v49;
    *(v30 + 48) = v32;
    *(a1[63] + 8 * a2) = v30;
    if (a1[60] <= 1uLL)
    {
      yyexpandGLRStack(a1);
    }

LABEL_57:
    result = 0;
  }

LABEL_58:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t yyprocessOneStack(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 504);
  v4 = *(v3 + 8 * a2);
  if (!v4)
  {
    return 0;
  }

  while (1)
  {
    v8 = *(v4 + 4);
    if (v8 == 161)
    {
LABEL_42:
      abort();
    }

    v9 = yypact[v8];
    if (v9 != -400)
    {
      break;
    }

    if (!yydefact[v8])
    {
      v24 = (v3 + 8 * a2);
      goto LABEL_40;
    }

    result = yyglrReduce(a1, a2, yydefact[v8], 0, a3);
    if (result)
    {
      return result;
    }

LABEL_35:
    v3 = *(a1 + 504);
    v4 = *(v3 + 8 * a2);
    if (!v4)
    {
      return 0;
    }
  }

  *(*(a1 + 512) + a2) = 1;
  v11 = *(a1 + 228);
  if (v11 != -2)
  {
    if (v11 >= 1)
    {
      if (v11 > 0x1AF)
      {
        goto LABEL_10;
      }

LABEL_13:
      v12 = yytranslate[v11];
      goto LABEL_15;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v11 = yylex(a1 + 232, a1 + 256, a3[3]);
  *(a1 + 228) = v11;
  if (v11 < 1)
  {
    goto LABEL_14;
  }

  if (v11 < 0x1B0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v12 = 2;
LABEL_15:
  v13 = v12 + v9;
  if ((v12 + v9) >> 1 <= 0x81A && v12 == yycheck[v13])
  {
    v14 = yytable[v13];
    v15 = &yyconfl[yyconflp[v13]];
  }

  else
  {
    v14 = -yydefact[v8];
    v15 = yyconfl;
  }

  v16 = *v15;
  if (*v15)
  {
    v17 = (v15 + 1);
    do
    {
      if (!*(a1 + 488))
      {
        if (a2)
        {
          goto LABEL_42;
        }

        *(a1 + 488) = **(a1 + 504);
      }

      v18 = *(a1 + 520);
      v19 = *(a1 + 528);
      if (v18 >= v19)
      {
        if (v19 >> 60)
        {
          yyMemoryExhausted(a1);
        }

        *(a1 + 528) = 2 * v19;
        v20 = malloc_type_realloc(*(a1 + 504), 16 * v19, 0x352A3853uLL);
        if (!v20)
        {
          goto LABEL_42;
        }

        *(a1 + 504) = v20;
        v21 = malloc_type_realloc(*(a1 + 512), *(a1 + 528), 0x352A3853uLL);
        if (!v21)
        {
          goto LABEL_42;
        }

        *(a1 + 512) = v21;
        v18 = *(a1 + 520);
      }

      *(*(a1 + 504) + 8 * v18) = *(*(a1 + 504) + 8 * a2);
      *(*(a1 + 512) + v18) = *(*(a1 + 512) + a2);
      v22 = *(a1 + 520);
      *(a1 + 520) = v22 + 1;
      result = yyglrReduce(a1, v22, v16, 0, a3);
      if (result)
      {
        return result;
      }

      result = yyprocessOneStack(a1, v22, a3);
      if (result)
      {
        return result;
      }

      v23 = *v17++;
      v16 = v23;
    }

    while (v23);
  }

  if (v14 > 0)
  {
    return 0;
  }

  if (v14)
  {
    result = yyglrReduce(a1, a2, -v14, 0, a3);
    if (result)
    {
      return result;
    }

    goto LABEL_35;
  }

  v24 = (*(a1 + 504) + 8 * a2);
  v4 = *v24;
  if (!*v24)
  {
    goto LABEL_41;
  }

LABEL_40:
  *(a1 + 496) = v4;
LABEL_41:
  result = 0;
  *v24 = 0;
  return result;
}

void yyFail(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    yyerror(a2, a3, a4);
  }

  longjmp((a1 + 272), 1);
}

uint64_t yyresolveStack(uint64_t a1, void *a2)
{
  v2 = *(a1 + 488);
  if (!v2)
  {
    return 0;
  }

  v5 = **(a1 + 504);
  if (v5 == v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v5;
    do
    {
      ++v6;
      v7 = *(v7 + 8);
    }

    while (v7 != v2);
  }

  result = yyresolveStates(v5, v6, a1, a2);
  if (!result)
  {
    return 0;
  }

  return result;
}

__n128 yycompressStack(uint64_t a1)
{
  if (*(a1 + 520) == 1)
  {
    v1 = *(a1 + 488);
    if (v1)
    {
      v2 = **(a1 + 504);
      if (v2 == v1)
      {
        v4 = 0;
      }

      else
      {
        v3 = 0;
        do
        {
          v4 = v2;
          v2 = *(v2 + 8);
          *(v4 + 8) = v3;
          v3 = v4;
        }

        while (v2 != v1);
      }

      v5 = v1 + 72;
      v6 = *(a1 + 480) - 0x71C71C71C71C71C7 * ((*(a1 + 472) - *(a1 + 464)) >> 3) + 0x71C71C71C71C71C7 * ((v5 - *(a1 + 464)) >> 3);
      *(a1 + 472) = v5;
      *(a1 + 480) = v6;
      *(a1 + 488) = 0;
      for (*(a1 + 496) = 0; v4; *(a1 + 480) = v11 - 1)
      {
        result = *v4;
        v8 = *(v4 + 16);
        v9 = *(v4 + 48);
        *(v5 + 32) = *(v4 + 32);
        *(v5 + 48) = v9;
        *v5 = result;
        *(v5 + 16) = v8;
        v4 = *(v4 + 8);
        *(*(a1 + 472) + 8) = *(a1 + 472) - 72;
        v10 = *(a1 + 472);
        v11 = *(a1 + 480);
        **(a1 + 504) = v10;
        v5 = v10 + 72;
        *(a1 + 472) = v10 + 72;
      }
    }
  }

  return result;
}

uint64_t yydestroyGLRState(uint64_t result)
{
  if (!*(result + 1))
  {
    v1 = *(result + 24);
    if (v1)
    {
      if (yyr2[*(v1 + 4)])
      {
        v2 = yyr2[*(v1 + 4)] + 1;
        do
        {
          v1 = *(v1 + 8);
          result = yydestroyGLRState(v1);
          --v2;
        }

        while (v2 > 1);
      }
    }
  }

  return result;
}

void yyexpandGLRStack(uint64_t a1)
{
  v3 = *(a1 + 464);
  v2 = *(a1 + 472);
  v4 = 0x8E38E38E38E38E39 * ((v2 - v3) >> 3);
  if (v4 >= 0x270F)
  {
    yyMemoryExhausted(a1);
  }

  if ((0x1C71C71C71C71C72 * ((v2 - v3) >> 3)) >= 0x2710)
  {
    v5 = 10000;
  }

  else
  {
    v5 = 0x1C71C71C71C71C72 * ((v2 - v3) >> 3);
  }

  v6 = malloc_type_malloc(72 * v5, 0xCA0EF1E7uLL);
  if (!v6)
  {
    abort();
  }

  v7 = v6;
  if (v2 != v3)
  {
    v8 = 0;
    v9 = *(a1 + 464);
    for (i = 0x8E38E38E38E38E39 * ((v2 - v3) >> 3); i; --i)
    {
      v11 = &v6[v8];
      *v11 = *(v9 + v8);
      v12 = *(v9 + v8 + 16);
      v13 = *(v9 + v8 + 32);
      v14 = *(v9 + v8 + 48);
      *(v11 + 8) = *(v9 + v8 + 64);
      *(v11 + 2) = v13;
      *(v11 + 3) = v14;
      *(v11 + 1) = v12;
      v15 = *(v9 + v8 + 8);
      if (*(v9 + v8))
      {
        if (v15)
        {
          *&v6[v8 + 8] = &v6[v15 - v9];
        }

        if (*(v9 + v8 + 1))
        {
          goto LABEL_19;
        }

        v16 = *(v9 + v8 + 24);
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = 24;
      }

      else
      {
        if (v15)
        {
          *&v6[v8 + 8] = &v6[v15 - v9];
        }

        v16 = *(v9 + v8 + 64);
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = 64;
      }

      *&v6[v17 + v8] = &v6[v16 - v9];
LABEL_19:
      v8 += 72;
    }
  }

  v18 = *(a1 + 488);
  if (v18)
  {
    *(a1 + 488) = &v6[v18 - *(a1 + 464)];
  }

  v19 = *(a1 + 520);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      v21 = *(a1 + 504);
      v22 = *(v21 + 8 * j);
      if (v22)
      {
        *(v21 + 8 * j) = &v6[v22 - *(a1 + 464)];
      }
    }
  }

  free(*(a1 + 464));
  *(a1 + 464) = v7;
  *(a1 + 472) = &v7[v2 - v3];
  *(a1 + 480) = v5 - v4;
}

void yyaddDeferredAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 472);
  v6 = *(a1 + 480) - 1;
  *(a1 + 472) = v5 + 72;
  *(a1 + 480) = v6;
  *v5 = 0;
  *(v5 + 8) = a4;
  *(v5 + 4) = a5;
  if (*(*(a1 + 512) + a2))
  {
    *(v5 + 16) = *(a1 + 228);
    v7 = *(a1 + 232);
    *(v5 + 40) = *(a1 + 248);
    *(v5 + 24) = v7;
    *(v5 + 48) = *(a1 + 256);
  }

  else
  {
    *(v5 + 16) = -2;
  }

  *(v5 + 64) = *(a3 + 24);
  *(a3 + 24) = v5;
  if (*(a1 + 480) <= 1uLL)
  {
    yyexpandGLRStack(a1);
  }
}

uint64_t yyuserAction(int a1, int a2, uint64_t a3, uint64_t *a4, _DWORD *a5, uint64_t a6, void *a7)
{
  v11 = *(a6 + 488);
  v1072[0] = 1;
  if (a2)
  {
    if (a2 >= 1 && v11)
    {
      v12 = *(a3 + 80);
      v13 = 1 - a2;
      v14 = a3 + 24;
      v15 = 1;
      do
      {
        if (!*(v12 + 1))
        {
LABEL_374:
          abort();
        }

        --v15;
        *(v14 - 23) = 1;
        v16 = *(v12 + 24);
        *(v14 + 16) = *(v12 + 40);
        *v14 = v16;
        *(v14 + 24) = *(v12 + 48);
        v12 = *(v12 + 8);
        *(v14 - 16) = v12;
        v14 -= 72;
      }

      while (v15 > 1 - a2);
      v1072[0] = 1 - a2;
    }

    else
    {
      v13 = 1 - a2;
    }

    v20 = a3 + 72 * v13;
    v21 = *(v20 + 24);
    a4[2] = *(v20 + 40);
    *a4 = v21;
    v22 = a3 - 72 * a2;
    *a5 = *(v22 + 120);
    a5[1] = *(v22 + 124);
    a5[2] = *(a3 + 56);
    v18 = *(a3 + 60);
    v19 = 3;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v17 = *(a3 + 56);
    a5[2] = v17;
    *a5 = v17;
    v18 = *(a3 + 60);
    a5[3] = v18;
    v19 = 1;
  }

  a5[v19] = v18;
  *(a6 + 128) = *a5;
  switch(a1)
  {
    case 2:
      Allocator = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      StringZ_0 = glpMakeStringZ_0(*(a3 + 32));
      v1021 = v1020;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(StringZ_0, v1021, *(a3 + 40), &v1068);
      yyfill(a3, v1072, 0, v11 == 0);
      v1022 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeVariableIdentifierNode(Allocator, &v1068, v1022, v1023);
      goto LABEL_333;
    case 3:
    case 10:
    case 12:
    case 16:
    case 17:
    case 18:
    case 22:
    case 29:
    case 37:
    case 41:
    case 44:
    case 47:
    case 52:
    case 55:
    case 57:
    case 59:
    case 61:
    case 63:
    case 65:
    case 67:
    case 69:
    case 82:
    case 84:
    case 98:
    case 99:
    case 106:
    case 109:
    case 120:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 163:
    case 249:
    case 251:
    case 259:
    case 267:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 280:
    case 281:
    case 291:
    case 295:
    case 301:
    case 302:
    case 303:
    case 314:
    case 315:
      goto LABEL_12;
    case 4:
      v97 = 5;
      goto LABEL_350;
    case 5:
      v97 = 36;
      goto LABEL_350;
    case 6:
      PrimitiveType = glpGetPrimitiveType(1u);
      v110 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v439 = glpMakeStringZ_0(*(a3 + 32));
      v441 = v440;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v439, v441, *(a3 + 40), &v1068);
      v114 = a7[98];
      v115 = glpCompilerGetAllocator(v114);
      yyfill(a3, v1072, 0, v11 == 0);
      *&v121 = *(a3 + 24);
      goto LABEL_165;
    case 7:
      v97 = 9;
LABEL_350:
      PrimitiveType = glpGetPrimitiveType(v97);
      v110 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v1009 = glpMakeStringZ_0(*(a3 + 32));
      v1011 = v1010;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v1009, v1011, *(a3 + 40), &v1068);
      v114 = a7[98];
      v1012 = glpCompilerGetAllocator(v114);
      yyfill(a3, v1072, 0, v11 == 0);
      MutableValue = glpMakeMutableValue(v1012, PrimitiveType, 1, v1013, v1014, v1015, v1016, v1017, *(a3 + 24));
      goto LABEL_351;
    case 8:
      PrimitiveType = glpGetPrimitiveType(0x3Eu);
      v110 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v111 = glpMakeStringZ_0(*(a3 + 32));
      v113 = v112;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v111, v113, *(a3 + 40), &v1068);
      v114 = a7[98];
      v115 = glpCompilerGetAllocator(v114);
      yyfill(a3, v1072, 0, v11 == 0);
      v121 = *(a3 + 24);
LABEL_165:
      MutableValue = glpMakeMutableValue(v115, PrimitiveType, 1, v116, v117, v118, v119, v120, v121);
LABEL_351:
      v615 = glpCompilerRemapValue(v114, PrimitiveType, MutableValue);
      v616 = v110;
      v617 = PrimitiveType;
      goto LABEL_352;
    case 9:
    case 19:
    case 20:
    case 21:
    case 25:
    case 85:
    case 86:
    case 126:
    case 129:
    case 155:
    case 283:
      goto LABEL_121;
    case 11:
      v392 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 192), &v1068);
      glpMakeArrayAccessNode(v392, &v1068);
      v394 = v393;
      *a4 = v393;
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpArrayAccessNodeSetArray(v394, *(a3 - 192));
      v395 = *a4;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpArrayAccessNodeSetElement(v395, *(a3 - 48));
      return 0;
    case 13:
      v57 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      yyfill(a3, v1072, 0, v11 == 0);
      v58 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeFieldAccessNode(v57, &v1068, v58, v59);
      v61 = v60;
      *a4 = v60;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpFieldAccessNodeSetStructure(v61, *(a3 - 120));
      return 0;
    case 14:
      v1002 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1068);
      glpMakePostincrementNode(v1002, &v1068);
      goto LABEL_341;
    case 15:
      v50 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1068);
      glpMakePostdecrementNode(v50, &v1068);
LABEL_341:
      v633 = v51;
      *a4 = v51;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v634 = *(a3 - 48);
      goto LABEL_342;
    case 23:
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v84 = *(a3 - 48);
      goto LABEL_284;
    case 24:
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v84 = *(a3 - 120);
LABEL_284:
      *a4 = v84;
      v867 = glpCompilerGetAllocator(a7[98]);
      v868 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpCallNodeAddArg(v867, v868, *(a3 + 24));
      return 0;
    case 26:
      goto LABEL_346;
    case 27:
      if (glpCompilerGetIOSVersion(a7[98]) >= 9)
      {
        v246 = "Constructor calls may not have precision";
        goto LABEL_371;
      }

LABEL_346:
      v1004 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1068);
      glpMakeConstructorCallNode(v1004, &v1068);
      v1006 = v1005;
      *a4 = v1005;
      yyfill(a3, v1072, 0, v11 == 0);
      glpConstructorCallNodeSetType(v1006, *(a3 + 24));
      return 0;
    case 28:
      v847 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1068);
      glpMakeUndeterminedCallNode(v847, &v1068);
      v849 = v848;
      *a4 = v848;
      yyfill(a3, v1072, 0, v11 == 0);
      glpUndeterminedCallNodeSetCallee(v849, *(a3 + 24));
      return 0;
    case 30:
      v44 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v45 = glpMakeStringZ_0(*(a3 - 40));
      v47 = v46;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v45, v47, *(a3 - 32), &v1068);
      glpMakePreincrementNode(v44, &v1068);
      goto LABEL_217;
    case 31:
      v629 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v630 = glpMakeStringZ_0(*(a3 - 40));
      v632 = v631;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v630, v632, *(a3 - 32), &v1068);
      glpMakePredecrementNode(v629, &v1068);
      goto LABEL_217;
    case 32:
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v68 = *(a3 - 48);
      v69 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      Location = glpASTNodeGetLocation(*(a3 + 24), &v1068);
      v48 = v68(v69, &v1068, Location);
LABEL_217:
      v633 = v48;
      *a4 = v48;
      yyfill(a3, v1072, 0, v11 == 0);
      v634 = *(a3 + 24);
LABEL_342:
      glpUnaryOperatorNodeSetExpr(v633, v634);
      return 0;
    case 33:
      result = 0;
      v49 = glpMakeUnaryPlusNode;
      goto LABEL_338;
    case 34:
      result = 0;
      v49 = glpMakeNegateNode;
      goto LABEL_338;
    case 35:
      result = 0;
      v49 = glpMakeLogicalNotNode;
      goto LABEL_338;
    case 36:
      result = 0;
      v49 = glpMakeBitwiseNotNode;
      goto LABEL_338;
    case 38:
      v930 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeMultiplyNode(v930, &v1068);
      goto LABEL_358;
    case 39:
      v157 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeDivideNode(v157, &v1068);
      goto LABEL_358;
    case 40:
      v995 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeModuloNode(v995, &v1068);
      goto LABEL_358;
    case 42:
      v1001 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeAddNode(v1001, &v1068);
      goto LABEL_358;
    case 43:
      v1008 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeSubtractNode(v1008, &v1068);
      goto LABEL_358;
    case 45:
      v929 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeShiftLeftNode(v929, &v1068);
      goto LABEL_358;
    case 46:
      v1000 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeShiftRightNode(v1000, &v1068);
      goto LABEL_358;
    case 48:
      v52 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeLessNode(v52, &v1068);
      goto LABEL_358;
    case 49:
      v54 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeGreaterNode(v54, &v1068);
      goto LABEL_358;
    case 50:
      v920 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeLessEqualNode(v920, &v1068);
      goto LABEL_358;
    case 51:
      v55 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeGreaterEqualNode(v55, &v1068);
      goto LABEL_358;
    case 53:
      v1007 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeEqualNode(v1007, &v1068, 1);
      goto LABEL_358;
    case 54:
      v429 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeNotEqualNode(v429, &v1068, 1);
      goto LABEL_358;
    case 56:
      v949 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeBitwiseAndNode(v949, &v1068);
      goto LABEL_358;
    case 58:
      v56 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeBitwiseXorNode(v56, &v1068);
      goto LABEL_358;
    case 60:
      v555 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeBitwiseOrNode(v555, &v1068);
      goto LABEL_358;
    case 62:
      v635 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeLogicalAndNode(v635, &v1068);
      goto LABEL_358;
    case 64:
      v499 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeLogicalXorNode(v499, &v1068);
      goto LABEL_358;
    case 66:
      v1003 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      MultiplyNode = glpMakeLogicalOrNode(v1003, &v1068);
      goto LABEL_358;
    case 68:
      v230 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967292, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 264), &v1068);
      glpMakeIfExprNode(v230, &v1068);
      v232 = v231;
      *a4 = v231;
      yyfill(a3, v1072, 4294967292, v11 == 0);
      glpIfExprNodeSetCondition(v232, *(a3 - 264));
      v233 = *a4;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpIfExprNodeSetIfExpr(v233, *(a3 - 120));
      v234 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpIfExprNodeSetElseExpr(v234, *(a3 + 24));
      return 0;
    case 70:
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v306 = *(a3 - 48);
      v307 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      if (v306)
      {
        yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
        MultiplyNode = glpMakeOpAssignNode(v307, &v1068, *(a3 - 48));
      }

      else
      {
        MultiplyNode = glpMakeAssignNode(v307, &v1068, 1);
      }

LABEL_358:
      v1034 = MultiplyNode;
      *a4 = MultiplyNode;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpBinaryOperatorNodeSetLhs(v1034, *(a3 - 120));
      v1035 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpBinaryOperatorNodeSetRhs(v1035, *(a3 + 24));
      return 0;
    case 71:
    case 286:
      result = 0;
      *a4 = 0;
      return result;
    case 72:
      result = 0;
      v49 = glpMakeMultiplyNode;
      goto LABEL_338;
    case 73:
      result = 0;
      v49 = glpMakeDivideNode;
      goto LABEL_338;
    case 74:
      result = 0;
      v49 = glpMakeModuloNode;
      goto LABEL_338;
    case 75:
      result = 0;
      v49 = glpMakeAddNode;
      goto LABEL_338;
    case 76:
      result = 0;
      v49 = glpMakeSubtractNode;
      goto LABEL_338;
    case 77:
      result = 0;
      v49 = glpMakeShiftLeftNode;
      goto LABEL_338;
    case 78:
      result = 0;
      v49 = glpMakeShiftRightNode;
      goto LABEL_338;
    case 79:
      result = 0;
      v49 = glpMakeBitwiseAndNode;
      goto LABEL_338;
    case 80:
      result = 0;
      v49 = glpMakeBitwiseXorNode;
      goto LABEL_338;
    case 81:
      result = 0;
      v49 = glpMakeBitwiseOrNode;
LABEL_338:
      *a4 = v49;
      return result;
    case 83:
      v312 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      glpMakeCommaExprNode(v312, &v1068, 1);
      *a4 = v313;
      v314 = glpCompilerGetAllocator(a7[98]);
      v315 = *a4;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpCommaExprNodeAddExpr(v314, v315, *(a3 - 120));
      v316 = glpCompilerGetAllocator(a7[98]);
      v317 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpCommaExprNodeAddExpr(v316, v317, *(a3 + 24));
      return 0;
    case 87:
      v636 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967293, v11 == 0);
      v637 = glpMakeStringZ_0(*(a3 - 184));
      v639 = v638;
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpMakeSourceLocation(v637, v639, *(a3 - 176), &v1068);
      glpMakePrecisionDeclarationNode(v636, &v1068);
      v641 = v640;
      *a4 = v640;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpPrecisionDeclarationNodeSetQualifier(v641, *(a3 - 120));
      v642 = *a4;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpPrecisionDeclarationNodeSetType(v642, *(a3 - 48));
      return 0;
    case 88:
      v958 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967291, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 336), &v1068);
      yyfill(a3, v1072, 4294967292, v11 == 0);
      v959 = glpMakeStringZ_0(*(a3 - 264));
      glpMakeInterfaceBlockNode(v958, &v1068, v959, v960, "<<BUG: printing instance name of interface block without an instance name>>", 0xDFA3F2CD0000004BLL, 0, 0, 0);
      v962 = v961;
      *a4 = v961;
      yyfill(a3, v1072, 4294967291, v11 == 0);
      glpInterfaceBlockNodeSetQualifiers(v962, *(a3 - 336));
      v732 = glpCompilerGetAllocator(a7[98]);
      v733 = *a4;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v734 = *(a3 - 120);
      goto LABEL_355;
    case 89:
      NameTable = glpCompilerGetNameTable(a7[98]);
      if (glpNameTableGetGLSLVersion(NameTable) <= 4)
      {
        goto LABEL_81;
      }

      v1024 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967290, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 408), &v1068);
      yyfill(a3, v1072, 4294967291, v11 == 0);
      v1025 = glpMakeStringZ_0(*(a3 - 336));
      v1027 = v1026;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v1028 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeInterfaceBlockNode(v1024, &v1068, v1025, v1027, v1028, v1029, 1, 0, 0);
      v1031 = v1030;
      *a4 = v1030;
      yyfill(a3, v1072, 4294967290, v11 == 0);
      glpInterfaceBlockNodeSetQualifiers(v1031, *(a3 - 408));
      v732 = glpCompilerGetAllocator(a7[98]);
      v733 = *a4;
      yyfill(a3, v1072, 4294967293, v11 == 0);
      v734 = *(a3 - 192);
      goto LABEL_355;
    case 90:
      v235 = glpCompilerGetNameTable(a7[98]);
      if (glpNameTableGetGLSLVersion(v235) <= 4)
      {
LABEL_81:
        v246 = "Uniform blocks may not have identifiers in GLSL 140";
        goto LABEL_371;
      }

      v236 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967289, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 480), &v1068);
      yyfill(a3, v1072, 4294967290, v11 == 0);
      v237 = glpMakeStringZ_0(*(a3 - 408));
      v239 = v238;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v240 = glpMakeStringZ_0(*(a3 - 120));
      glpMakeInterfaceBlockNode(v236, &v1068, v237, v239, v240, v241, 1, 1, 0);
      v243 = v242;
      *a4 = v242;
      yyfill(a3, v1072, 4294967289, v11 == 0);
      glpInterfaceBlockNodeSetQualifiers(v243, *(a3 - 480));
      v244 = glpCompilerGetAllocator(a7[98]);
      v245 = *a4;
      yyfill(a3, v1072, 4294967292, v11 == 0);
      addFields(v244, v245, *(a3 - 264));
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      if (glpArrayTypeNodeGetElementType(*(a3 - 48)))
      {
        v246 = "Interface blocks may not be multidimensional arrays";
        goto LABEL_371;
      }

      v1053 = *a4;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      Dimension = glpArrayTypeNodeGetDimension(*(a3 - 48));
      glpInterfaceBlockNodeSetDimension(v1053, Dimension);
      return 0;
    case 91:
      v81 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1068);
      glpMakeGlobalTypeQualifierNode(v81, &v1068, 0);
      v83 = v82;
      *a4 = v82;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpGlobalTypeQualifierNodeSetQualifierList(v83, *(a3 - 48));
      return 0;
    case 92:
      v73 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v74 = glpMakeStringZ_0(*(a3 - 40));
      v76 = v75;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v74, v76, *(a3 - 32), &v1068);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v77 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeQualifiedDeclarationNode(v73, &v1068, v77, v78);
      v80 = v79;
      *a4 = v79;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpQualifiedDeclarationNodeSetQualifiers(v80, *(a3 - 120));
      return 0;
    case 93:
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      *a4 = *(a3 - 48);
      v975 = glpCompilerGetAllocator(a7[98]);
      v976 = *a4;
      v977 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v978 = glpMakeStringZ_0(*(a3 - 112));
      v980 = v979;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpMakeSourceLocation(v978, v980, *(a3 - 104), &v1068);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v981 = glpMakeStringZ_0(*(a3 - 120));
      glpMakeQualifiedDeclarationNode(v977, &v1068, v981, v982);
      glpQualifiedDeclarationGroupNodeInsertDeclaration(v975, v976, v983, 0);
      result = glpQualifiedDeclarationGroupNodeGetDeclarationCount(*a4);
      if (!result)
      {
        return result;
      }

      v984 = result;
      for (i = 0; i != v984; ++i)
      {
        Declaration = glpQualifiedDeclarationGroupNodeGetDeclaration(*a4, i);
        if (v11 && v1072[0] >= -2)
        {
          v987 = *(a3 + 72 * v1072[0] + 8);
          v988 = v1072[0] + 1;
          v989 = a3 - 71 + 72 * v1072[0];
          do
          {
            if (!*(v987 + 1))
            {
              goto LABEL_374;
            }

            *v989 = 1;
            v990 = *(v987 + 24);
            *(v989 + 39) = *(v987 + 40);
            *(v989 + 23) = v990;
            *(v989 + 47) = *(v987 + 48);
            v987 = *(v987 + 8);
            *(v989 + 7) = v987;
            --v988;
            v989 -= 72;
          }

          while (v988 > -2);
          v1072[0] = -3;
        }

        glpQualifiedDeclarationNodeSetQualifiers(Declaration, *(a3 - 192));
        result = 0;
      }

      return result;
    case 94:
      v85 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967292, v11 == 0);
      v86 = glpMakeStringZ_0(*(a3 - 256));
      v88 = v87;
      yyfill(a3, v1072, 4294967292, v11 == 0);
      glpMakeSourceLocation(v86, v88, *(a3 - 248), &v1068);
      glpMakeAvailabilityDeclarationNode(v85, &v1068);
      v90 = v89;
      *a4 = v89;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpAvailabilityDeclarationNodeSetExpr(v90, *(a3 - 120));
      return 0;
    case 95:
      v790 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v791 = glpMakeStringZ_0(*(a3 + 32));
      v793 = v792;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v791, v793, *(a3 + 40), &v1068);
      glpMakeQualifiedDeclarationGroupNode(v790, &v1068);
      *a4 = v794;
      goto LABEL_261;
    case 96:
      yyfill(a3, v1072, 4294967294, v11 == 0);
      *a4 = *(a3 - 120);
LABEL_261:
      v795 = glpCompilerGetAllocator(a7[98]);
      v796 = *a4;
      v797 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v798 = glpMakeStringZ_0(*(a3 + 32));
      v800 = v799;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v798, v800, *(a3 + 40), &v1068);
      yyfill(a3, v1072, 0, v11 == 0);
      v801 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeQualifiedDeclarationNode(v797, &v1068, v801, v802);
      glpQualifiedDeclarationGroupNodeAddDeclaration(v795, v796, v803);
      return 0;
    case 97:
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v443 = *(a3 - 48);
      *a4 = v443;
      ReturnType = glpFunctionPrototypeNodeGetReturnType(v443);
      result = glpIsQualifiedTypeNode(ReturnType);
      if (!result)
      {
        return result;
      }

      Qualifiers = glpQualifiedTypeNodeGetQualifiers(ReturnType);
      v1071[0] = MEMORY[0x277D85DD0];
      v1071[1] = 0x40000000;
      v1071[2] = __yyuserAction_block_invoke;
      v1071[3] = &__block_descriptor_tmp_15;
      v1071[4] = a7;
      v1071[5] = v443;
      iterateQualifiers(Qualifiers, v1071);
      return 0;
    case 100:
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v98 = *(a3 - 48);
      goto LABEL_272;
    case 101:
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v98 = *(a3 - 120);
LABEL_272:
      *a4 = v98;
      v837 = glpCompilerGetAllocator(a7[98]);
      v838 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpFunctionPrototypeNodeAddParameter(v837, v838, *(a3 + 24));
      return 0;
    case 102:
      v826 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v827 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeFunctionPrototypeNode(v826, &v1068, v827, v828);
      *a4 = v829;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      IsQualifiedTypeNode = glpIsQualifiedTypeNode(*(a3 - 120));
      yyfill(a3, v1072, 4294967294, v11 == 0);
      Type = *(a3 - 120);
      if (IsQualifiedTypeNode)
      {
        Type = glpQualifiedTypeNodeGetType(*(a3 - 120));
      }

      yyfill(a3, v1072, 4294967294, v11 == 0);
      if (glpIsQualifiedTypeNode(*(a3 - 120)))
      {
        yyfill(a3, v1072, 4294967294, v11 == 0);
        v832 = glpQualifiedTypeNodeGetQualifiers(*(a3 - 120));
      }

      else
      {
        v832 = 0;
      }

      v1068.n128_u64[0] = 0;
      v1068.n128_u64[1] = &v1068;
      v1069 = 0x2000000000;
      v1070 = 0;
      v1066 = 0;
      v1067[0] = MEMORY[0x277D85DD0];
      v1067[1] = 0x40000000;
      v1067[2] = __yyuserAction_block_invoke_2;
      v1067[3] = &unk_278B4C660;
      v1067[4] = &v1068;
      v1067[5] = a7;
      v1067[6] = Type;
      v1063 = 0;
      v1064 = &v1063;
      v1065 = 0x2000000000;
      v1058[0] = MEMORY[0x277D85DD0];
      v1058[1] = 0x40000000;
      v1059 = __yyuserAction_block_invoke_3;
      v1060 = &unk_278B4C688;
      v1061 = &v1063;
      v1062 = a7;
      v1057[0] = MEMORY[0x277D85DD0];
      v1057[1] = 0x40000000;
      v1057[2] = __yyuserAction_block_invoke_4;
      v1057[3] = &unk_278B4C6B0;
      v1057[4] = v1067;
      v1057[5] = v1058;
      iterateQualifiers(v832, v1057);
      v1036 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1056);
      glpMakeQualifiedTypeNode(v1036, &v1056);
      v1038 = v1037;
      glpQualifiedTypeNodeSetType(v1037, Type);
      glpQualifiedTypeNodeSetQualifiers(v1038, *(v1068.n128_u64[1] + 24));
      glpFunctionPrototypeNodeSetReturnType(*a4, v1038);
      if (!glpIsPrimitiveTypeNode(Type) || glpPrimitiveTypeNodeGetType(Type))
      {
        v1039 = glpCompilerGetAllocator(a7[98]);
        yyfill(a3, v1072, 4294967294, v11 == 0);
        glpASTNodeGetLocation(*(a3 - 120), &v1056);
        KeywordQualifierNode = glpMakeKeywordQualifierNode(v1039, &v1056, 14);
        (v1059)(v1058, v1041, KeywordQualifierNode);
        qsort_b(*(v1064[3] + 8), *(v1064[3] + 4), 8uLL, &__block_literal_global_5);
        v1042 = glpCompilerGetAllocator(a7[98]);
        glpASTNodeGetLocation(Type, &v1056);
        glpMakeQualifierListNode(v1042, &v1056);
        v1044 = v1043;
        if (*(v1064[3] + 4))
        {
          v1045 = 0;
          do
          {
            v1046 = glpCompilerGetAllocator(a7[98]);
            glpQualifierListNodeAddQualifier(v1046, v1044, *(*(v1064[3] + 8) + 8 * v1045++));
          }

          while (v1045 < *(v1064[3] + 4));
        }

        v1047 = glpCompilerGetAllocator(a7[98]);
        yyfill(a3, v1072, 4294967294, v11 == 0);
        glpASTNodeGetLocation(*(a3 - 120), &v1056);
        glpMakeQualifiedTypeNode(v1047, &v1056);
        v1049 = v1048;
        glpQualifiedTypeNodeSetType(v1048, Type);
        glpQualifiedTypeNodeSetQualifiers(v1049, v1044);
        v1050 = glpCompilerGetAllocator(a7[98]);
        yyfill(a3, v1072, 4294967294, v11 == 0);
        glpASTNodeGetLocation(*(a3 - 120), &v1056);
        glpMakeParameterDeclarationNode(v1050, &v1056, "$return_value", 0xE306948F0000000DLL);
        v1052 = v1051;
        glpParameterDeclarationNodeSetType(v1051, v1049);
        glpFunctionPrototypeNodeSetReturnOutParam(*a4, v1052);
      }

      _Block_object_dispose(&v1063, 8);
      _Block_object_dispose(&v1068, 8);
      return 0;
    case 103:
      v905 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1068);
      yyfill(a3, v1072, 0, v11 == 0);
      v906 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeParameterDeclarationNode(v905, &v1068, v906, v907);
      v866 = v908;
      *a4 = v908;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v505 = *(a3 - 48);
      goto LABEL_296;
    case 104:
      v877 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v878 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeParameterDeclarationNode(v877, &v1068, v878, v879);
      v881 = v880;
      *a4 = v880;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v882 = *(a3 - 120);
      yyfill(a3, v1072, 0, v11 == 0);
      v883 = *(a3 + 24);
      arrayify(v882, v883);
      v504 = v881;
      v505 = v883;
      goto LABEL_297;
    case 105:
      yyfill(a3, v1072, 0, v11 == 0);
      *a4 = *(a3 + 24);
      v753 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1068);
      glpMakeQualifiedTypeNode(v753, &v1068);
      v755 = v754;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpQualifiedTypeNodeSetQualifiers(v755, *(a3 - 48));
      v756 = glpParameterDeclarationNodeGetType(*a4);
      glpQualifiedTypeNodeSetType(v755, v756);
      v504 = *a4;
      v505 = v755;
      goto LABEL_297;
    case 107:
      v500 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1068);
      glpMakeQualifiedTypeNode(v500, &v1068);
      v502 = v501;
      yyfill(a3, v1072, 0, v11 == 0);
      glpQualifiedTypeNodeSetType(v502, *(a3 + 24));
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpQualifiedTypeNodeSetQualifiers(v502, *(a3 - 48));
      v503 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1068);
      glpMakeParameterDeclarationNode(v503, &v1068, "<<unnamed>>", 0x725D7890000000BLL);
      *a4 = v504;
      v505 = v502;
      goto LABEL_297;
    case 108:
      v864 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1068);
      glpMakeParameterDeclarationNode(v864, &v1068, "<<unnamed>>", 0x725D7890000000BLL);
      v866 = v865;
      *a4 = v865;
      yyfill(a3, v1072, 0, v11 == 0);
      v505 = *(a3 + 24);
LABEL_296:
      v504 = v866;
LABEL_297:
      glpParameterDeclarationNodeSetType(v504, v505);
      return 0;
    case 110:
      v858 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1068);
      glpMakeVariableDeclarationGroupNode(v858, &v1068);
      v860 = v859;
      *a4 = v859;
      yyfill(a3, v1072, 0, v11 == 0);
      glpVariableDeclarationGroupNodeSetBaseType(v860, *(a3 + 32));
      yyfill(a3, v1072, 0, v11 == 0);
      Kind = glpASTNodeGetKind(*(a3 + 24));
      if (Kind > 0x38)
      {
        goto LABEL_374;
      }

      if (((1 << Kind) & 0x170000000000004) != 0)
      {
        return 0;
      }

      if (Kind != 46)
      {
        goto LABEL_374;
      }

      v862 = glpCompilerGetAllocator(a7[98]);
      v863 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpVariableDeclarationGroupNodeAddDeclaration(v862, v863, *(a3 + 24));
      return 0;
    case 111:
      v99 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v100 = glpMakeStringZ_0(*(a3 + 32));
      v102 = v101;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v100, v102, *(a3 + 40), &v1068);
      yyfill(a3, v1072, 0, v11 == 0);
      v103 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeVariableDeclarationNode(v99, &v1068, v103, v104, 1);
      v106 = v105;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      BaseType = glpVariableDeclarationGroupNodeGetBaseType(*(a3 - 120));
      glpVariableDeclarationNodeSetType(v106, BaseType);
      v108 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpVariableDeclarationGroupNodeAddDeclaration(v108, *(a3 - 120), v106);
      goto LABEL_56;
    case 112:
      v938 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v939 = glpMakeStringZ_0(*(a3 - 40));
      v941 = v940;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v939, v941, *(a3 - 32), &v1068);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v942 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeVariableDeclarationNode(v938, &v1068, v942, v943, 1);
      v945 = v944;
      yyfill(a3, v1072, 4294967293, v11 == 0);
      v946 = glpVariableDeclarationGroupNodeGetBaseType(*(a3 - 192));
      yyfill(a3, v1072, 0, v11 == 0);
      v947 = *(a3 + 24);
      arrayify(v946, v947);
      glpVariableDeclarationNodeSetType(v945, v947);
      v948 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpVariableDeclarationGroupNodeAddDeclaration(v948, *(a3 - 192), v945);
      goto LABEL_308;
    case 113:
      v909 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967293, v11 == 0);
      v910 = glpMakeStringZ_0(*(a3 - 184));
      v912 = v911;
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpMakeSourceLocation(v910, v912, *(a3 - 176), &v1068);
      yyfill(a3, v1072, 4294967293, v11 == 0);
      v913 = glpMakeStringZ_0(*(a3 - 192));
      glpMakeVariableDeclarationNode(v909, &v1068, v913, v914, 1);
      v916 = v915;
      yyfill(a3, v1072, 4294967291, v11 == 0);
      v130 = (a3 - 336);
      v917 = glpVariableDeclarationGroupNodeGetBaseType(*(a3 - 336));
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v918 = *(a3 - 120);
      arrayify(v917, v918);
      glpVariableDeclarationNodeSetType(v916, v918);
      yyfill(a3, v1072, 0, v11 == 0);
      glpVariableDeclarationNodeSetInitializer(v916, *(a3 + 24));
      v919 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967291, v11 == 0);
      glpVariableDeclarationGroupNodeAddDeclaration(v919, *(a3 - 336), v916);
      v133 = a3;
      v134 = 4294967291;
      goto LABEL_299;
    case 114:
      v122 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v123 = glpMakeStringZ_0(*(a3 - 112));
      v125 = v124;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpMakeSourceLocation(v123, v125, *(a3 - 104), &v1068);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v126 = glpMakeStringZ_0(*(a3 - 120));
      glpMakeVariableDeclarationNode(v122, &v1068, v126, v127, 1);
      v129 = v128;
      yyfill(a3, v1072, 4294967292, v11 == 0);
      v130 = (a3 - 264);
      v131 = glpVariableDeclarationGroupNodeGetBaseType(*(a3 - 264));
      glpVariableDeclarationNodeSetType(v129, v131);
      yyfill(a3, v1072, 0, v11 == 0);
      glpVariableDeclarationNodeSetInitializer(v129, *(a3 + 24));
      v132 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967292, v11 == 0);
      glpVariableDeclarationGroupNodeAddDeclaration(v132, *(a3 - 264), v129);
      v133 = a3;
      v134 = 4294967292;
LABEL_299:
      yyfill(v133, v1072, v134, v11 == 0);
      result = 0;
      v24 = *v130;
      goto LABEL_334;
    case 115:
      yyfill(a3, v1072, 0, v11 == 0);
      v293 = *(a3 + 24);
      goto LABEL_211;
    case 116:
      v62 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1068);
      yyfill(a3, v1072, 0, v11 == 0);
      v63 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeVariableDeclarationNode(v62, &v1068, v63, v64, 1);
      v66 = v65;
      *a4 = v65;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpVariableDeclarationNodeSetType(v66, *(a3 - 48));
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      result = 0;
      v67 = *(a3 - 48);
      goto LABEL_311;
    case 117:
      v931 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 120), &v1068);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v932 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeVariableDeclarationNode(v931, &v1068, v932, v933, 1);
      v935 = v934;
      *a4 = v934;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v936 = *(a3 - 120);
      yyfill(a3, v1072, 0, v11 == 0);
      v937 = *(a3 + 24);
      arrayify(v936, v937);
      glpVariableDeclarationNodeSetType(v935, v937);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      result = 0;
      v67 = *(a3 - 120);
      goto LABEL_311;
    case 118:
      v950 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967292, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 264), &v1068);
      yyfill(a3, v1072, 4294967293, v11 == 0);
      v951 = glpMakeStringZ_0(*(a3 - 192));
      glpMakeVariableDeclarationNode(v950, &v1068, v951, v952, 1);
      v954 = v953;
      *a4 = v953;
      yyfill(a3, v1072, 4294967292, v11 == 0);
      v955 = *(a3 - 264);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v956 = *(a3 - 120);
      arrayify(v955, v956);
      glpVariableDeclarationNodeSetType(v954, v956);
      v957 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpVariableDeclarationNodeSetInitializer(v957, *(a3 + 24));
      yyfill(a3, v1072, 4294967292, v11 == 0);
      result = 0;
      v67 = *(a3 - 264);
      goto LABEL_311;
    case 119:
      v184 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 192), &v1068);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v185 = glpMakeStringZ_0(*(a3 - 120));
      glpMakeVariableDeclarationNode(v184, &v1068, v185, v186, 1);
      v188 = v187;
      *a4 = v187;
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpVariableDeclarationNodeSetType(v188, *(a3 - 192));
      v189 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpVariableDeclarationNodeSetInitializer(v189, *(a3 + 24));
      yyfill(a3, v1072, 4294967293, v11 == 0);
      result = 0;
      v67 = *(a3 - 192);
      goto LABEL_311;
    case 121:
      v495 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1068);
      glpMakeQualifiedTypeNode(v495, &v1068);
      v497 = v496;
      *a4 = v496;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpQualifiedTypeNodeSetQualifiers(v497, *(a3 - 48));
      v498 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpQualifiedTypeNodeSetType(v498, *(a3 + 24));
      return 0;
    case 122:
      v158 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v159 = glpMakeStringZ_0(*(a3 + 32));
      v161 = v160;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v159, v161, *(a3 + 40), &v1068);
      v95 = v158;
      v96 = 1;
      goto LABEL_332;
    case 123:
      v206 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v207 = glpMakeStringZ_0(*(a3 + 32));
      v209 = v208;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v207, v209, *(a3 + 40), &v1068);
      v95 = v206;
      v96 = 2;
      goto LABEL_332;
    case 124:
      v921 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v922 = glpMakeStringZ_0(*(a3 + 32));
      v924 = v923;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v922, v924, *(a3 + 40), &v1068);
      v95 = v921;
      v96 = 3;
      goto LABEL_332;
    case 125:
      v149 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v150 = glpMakeStringZ_0(*(a3 + 32));
      v152 = v151;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v150, v152, *(a3 + 40), &v1068);
      v95 = v149;
      v96 = 4;
      goto LABEL_332;
    case 127:
      v71 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1068);
      glpMakeLayoutTypeNode(v71, &v1068);
      *a4 = v72;
      goto LABEL_58;
    case 128:
      yyfill(a3, v1072, 4294967294, v11 == 0);
      *a4 = *(a3 - 120);
LABEL_58:
      v168 = glpCompilerGetAllocator(a7[98]);
      v169 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpLayoutTypeNodeAddLayoutPair(v168, v169, *(a3 + 24));
      return 0;
    case 130:
      v925 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1068);
      glpMakeLayoutQualifierNode(v925, &v1068);
      *a4 = v926;
      goto LABEL_303;
    case 131:
      yyfill(a3, v1072, 4294967294, v11 == 0);
      *a4 = *(a3 - 120);
LABEL_303:
      v927 = glpCompilerGetAllocator(a7[98]);
      v928 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpLayoutQualifierNodeAddLayoutPair(v927, v928, *(a3 + 24));
      return 0;
    case 132:
      v430 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v431 = glpMakeStringZ_0(*(a3 + 32));
      v433 = v432;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v431, v433, *(a3 + 40), &v1068);
      yyfill(a3, v1072, 0, v11 == 0);
      v41 = glpMakeStringZ_0(*(a3 + 24));
      v42 = v434;
      v38 = "<<BUG: printing string of non-string layout>>";
      v39 = 0x4FE9A940000002DLL;
      v40 = v430;
      v43 = 0;
      goto LABEL_290;
    case 133:
    case 134:
      v25 = glpCompilerGetNameTable(a7[98]);
      if (glpNameTableGetGLSLVersion(v25) > 4 || (v26 = glpCompilerGetNameTable(a7[98]), glpNameTableIsExtensionEnabled(v26, 0x23u)) || (v27 = glpCompilerGetNameTable(a7[98]), glpNameTableIsExtensionEnabled(v27, 1u)) || (v28 = glpCompilerGetNameTable(a7[98]), glpNameTableIsExtensionEnabled(v28, 0x15u)) || (v29 = glpCompilerGetNameTable(a7[98]), glpNameTableIsExtensionEnabled(v29, 0x11u)))
      {
        v30 = glpCompilerGetAllocator(a7[98]);
        yyfill(a3, v1072, 4294967294, v11 == 0);
        v31 = glpMakeStringZ_0(*(a3 - 112));
        v33 = v32;
        yyfill(a3, v1072, 4294967294, v11 == 0);
        glpMakeSourceLocation(v31, v33, *(a3 - 104), &v1068);
        yyfill(a3, v1072, 4294967294, v11 == 0);
        v34 = glpMakeStringZ_0(*(a3 - 120));
        v36 = v35;
        yyfill(a3, v1072, 0, v11 == 0);
        v37 = *(a3 + 24);
        v38 = "<<BUG: printing string of non-string layout>>";
        v39 = 0x4FE9A940000002DLL;
        v40 = v30;
        v41 = v34;
        v42 = v36;
        v43 = 1;
        goto LABEL_291;
      }

      v246 = "integers in layouts require GLSL 140 or later";
      goto LABEL_371;
    case 135:
      v653 = glpCompilerGetNameTable(a7[98]);
      if (!glpNameTableIsExtensionEnabled(v653, 0x23u))
      {
        v246 = "types in layouts is an unsupported extension";
        goto LABEL_371;
      }

      v654 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v655 = glpMakeStringZ_0(*(a3 - 112));
      v657 = v656;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpMakeSourceLocation(v655, v657, *(a3 - 104), &v1068);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v658 = glpMakeStringZ_0(*(a3 - 120));
      glpMakeLayoutPairNode(v654, &v1068, v658, v659, 2, 0, "<<BUG: printing string of non-string layout>>", 0x4FE9A940000002DLL);
      v661 = v660;
      *a4 = v660;
      yyfill(a3, v1072, 0, v11 == 0);
      glpLayoutPairNodeSetType(v661, *(a3 + 24));
      return 0;
    case 136:
      v884 = glpCompilerGetNameTable(a7[98]);
      if (!glpNameTableIsExtensionEnabled(v884, 0x23u))
      {
        v246 = "identifiers in layouts is an unsupported extension";
        goto LABEL_371;
      }

      v885 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v886 = glpMakeStringZ_0(*(a3 - 112));
      v888 = v887;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpMakeSourceLocation(v886, v888, *(a3 - 104), &v1068);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v889 = glpMakeStringZ_0(*(a3 - 120));
      v891 = v890;
      yyfill(a3, v1072, 0, v11 == 0);
      v38 = glpMakeStringZ_0(*(a3 + 24));
      v39 = v892;
      v40 = v885;
      v41 = v889;
      v42 = v891;
      v43 = 3;
LABEL_290:
      v37 = 0;
LABEL_291:
      glpMakeLayoutPairNode(v40, &v1068, v41, v42, v43, v37, v38, v39);
LABEL_333:
      v24 = WhileFragment;
      result = 0;
      goto LABEL_334;
    case 137:
      v649 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v650 = glpMakeStringZ_0(*(a3 + 32));
      v652 = v651;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v650, v652, *(a3 + 40), &v1068);
      v95 = v649;
      v96 = 0;
      goto LABEL_332;
    case 138:
      v318 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1068);
      glpMakeQualifierListNode(v318, &v1068);
      *a4 = v319;
      goto LABEL_105;
    case 139:
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      *a4 = *(a3 - 48);
LABEL_105:
      v320 = glpCompilerGetAllocator(a7[98]);
      v321 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpQualifierListNodeAddQualifier(v320, v321, *(a3 + 24));
      return 0;
    case 146:
      v280 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v281 = glpMakeStringZ_0(*(a3 + 32));
      v283 = v282;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v281, v283, *(a3 + 40), &v1068);
      v95 = v280;
      v96 = 5;
      goto LABEL_332;
    case 147:
      v214 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v215 = glpMakeStringZ_0(*(a3 + 32));
      v217 = v216;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v215, v217, *(a3 + 40), &v1068);
      v95 = v214;
      v96 = 15;
      goto LABEL_332;
    case 148:
      v91 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v92 = glpMakeStringZ_0(*(a3 + 32));
      v94 = v93;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v92, v94, *(a3 + 40), &v1068);
      v95 = v91;
      v96 = 13;
      goto LABEL_332;
    case 149:
      v996 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v997 = glpMakeStringZ_0(*(a3 + 32));
      v999 = v998;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v997, v999, *(a3 + 40), &v1068);
      v95 = v996;
      v96 = 14;
      goto LABEL_332;
    case 150:
      v967 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v968 = glpMakeStringZ_0(*(a3 + 32));
      v970 = v969;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v968, v970, *(a3 + 40), &v1068);
      v95 = v967;
      v96 = 6;
      goto LABEL_332;
    case 151:
      v991 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v992 = glpMakeStringZ_0(*(a3 + 32));
      v994 = v993;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v992, v994, *(a3 + 40), &v1068);
      v95 = v991;
      v96 = 7;
      goto LABEL_332;
    case 152:
      v893 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v894 = glpMakeStringZ_0(*(a3 + 32));
      v896 = v895;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v894, v896, *(a3 + 40), &v1068);
      v95 = v893;
      v96 = 8;
      goto LABEL_332;
    case 153:
      v308 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v309 = glpMakeStringZ_0(*(a3 + 32));
      v311 = v310;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v309, v311, *(a3 + 40), &v1068);
      v95 = v308;
      v96 = 16;
      goto LABEL_332;
    case 154:
      v198 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v199 = glpMakeStringZ_0(*(a3 + 32));
      v201 = v200;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v199, v201, *(a3 + 40), &v1068);
      v95 = v198;
      v96 = 10;
      goto LABEL_332;
    case 156:
      v247 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v248 = glpMakeStringZ_0(*(a3 + 32));
      v250 = v249;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v248, v250, *(a3 + 40), &v1068);
      v95 = v247;
      v96 = 17;
      goto LABEL_332;
    case 157:
      v971 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v972 = glpMakeStringZ_0(*(a3 + 32));
      v974 = v973;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v972, v974, *(a3 + 40), &v1068);
      v95 = v971;
      v96 = 18;
      goto LABEL_332;
    case 158:
      v145 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v146 = glpMakeStringZ_0(*(a3 + 32));
      v148 = v147;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v146, v148, *(a3 + 40), &v1068);
      v95 = v145;
      v96 = 9;
      goto LABEL_332;
    case 159:
      v251 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v252 = glpMakeStringZ_0(*(a3 + 32));
      v254 = v253;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v252, v254, *(a3 + 40), &v1068);
      v95 = v251;
      v96 = 11;
      goto LABEL_332;
    case 160:
      v276 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v277 = glpMakeStringZ_0(*(a3 + 32));
      v279 = v278;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v277, v279, *(a3 + 40), &v1068);
      v95 = v276;
      v96 = 12;
      goto LABEL_332;
    case 161:
      v808 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v809 = glpMakeStringZ_0(*(a3 + 32));
      v811 = v810;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v809, v811, *(a3 + 40), &v1068);
      glpMakeSubroutineTypeListNode(v808, &v1068);
      *a4 = v812;
      goto LABEL_264;
    case 162:
      yyfill(a3, v1072, 4294967294, v11 == 0);
      *a4 = *(a3 - 120);
LABEL_264:
      v813 = glpCompilerGetAllocator(a7[98]);
      v814 = *a4;
      v815 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v816 = glpMakeStringZ_0(*(a3 + 32));
      v818 = v817;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v816, v818, *(a3 + 40), &v1068);
      yyfill(a3, v1072, 0, v11 == 0);
      v819 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeTypeIdentifierNode(v815, &v1068, v819, v820);
      glpSubroutineTypeListNodeAddType(v813, v814, v821);
      return 0;
    case 164:
      v288 = glpCompilerGetNameTable(a7[98]);
      if (glpNameTableGetGLSLVersion(v288) > 1)
      {
        yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
        v1032 = *(a3 - 48);
        yyfill(a3, v1072, 0, v11 == 0);
        v1033 = *(a3 + 24);
        arrayify(v1032, v1033);
        result = 0;
        *a4 = v1033;
      }

      else
      {
        v246 = "Array size must appear after variable name";
LABEL_371:
        yyerror(0, a7, v246);
        *a6 = 0;
        return 3;
      }

      return result;
    case 165:
      v322 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v323 = glpMakeStringZ_0(*(a3 - 40));
      v325 = v324;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v323, v325, *(a3 - 32), &v1068);
      glpMakeArrayTypeNode(v322, &v1068);
      goto LABEL_333;
    case 166:
      v512 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v513 = glpMakeStringZ_0(*(a3 - 112));
      v515 = v514;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpMakeSourceLocation(v513, v515, *(a3 - 104), &v1068);
      glpMakeArrayTypeNode(v512, &v1068);
      v517 = v516;
      *a4 = v516;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpArrayTypeNodeSetDimension(v517, *(a3 - 48));
      return 0;
    case 167:
      v162 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v163 = glpMakeStringZ_0(*(a3 - 40));
      v165 = v164;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v163, v165, *(a3 - 32), &v1068);
      glpMakeArrayTypeNode(v162, &v1068);
      v167 = v166;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpArrayTypeNodeSetElementType(*(a3 - 120), v167);
LABEL_56:
      yyfill(a3, v1072, 4294967294, v11 == 0);
      result = 0;
      v24 = *(a3 - 120);
      goto LABEL_334;
    case 168:
      v396 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v397 = glpMakeStringZ_0(*(a3 - 112));
      v399 = v398;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpMakeSourceLocation(v397, v399, *(a3 - 104), &v1068);
      glpMakeArrayTypeNode(v396, &v1068);
      v401 = v400;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpArrayTypeNodeSetDimension(v401, *(a3 - 48));
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpArrayTypeNodeSetElementType(*(a3 - 192), v401);
LABEL_308:
      yyfill(a3, v1072, 4294967293, v11 == 0);
      result = 0;
      v24 = *(a3 - 192);
      goto LABEL_334;
    case 169:
      v170 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v171 = glpMakeStringZ_0(*(a3 + 32));
      v173 = v172;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v171, v173, *(a3 + 40), &v1068);
      v139 = v170;
      v140 = 0;
      goto LABEL_314;
    case 170:
      v869 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v870 = glpMakeStringZ_0(*(a3 + 32));
      v872 = v871;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v870, v872, *(a3 + 40), &v1068);
      v139 = v869;
      v140 = 1;
      goto LABEL_314;
    case 171:
      v735 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v736 = glpMakeStringZ_0(*(a3 + 32));
      v738 = v737;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v736, v738, *(a3 + 40), &v1068);
      v178 = v735;
      v179 = 62;
      goto LABEL_247;
    case 172:
      v662 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v663 = glpMakeStringZ_0(*(a3 + 32));
      v665 = v664;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v663, v665, *(a3 + 40), &v1068);
      v139 = v662;
      v140 = 5;
      goto LABEL_314;
    case 173:
      v331 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v332 = glpMakeStringZ_0(*(a3 + 32));
      v334 = v333;
      yyfill(a3, v1072, 0, v11 == 0);
      v335 = *(a3 + 40);
      goto LABEL_253;
    case 174:
      v331 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v332 = glpMakeStringZ_0(*(a3 - 40));
      v334 = v765;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v335 = *(a3 - 32);
LABEL_253:
      glpMakeSourceLocation(v332, v334, v335, &v1068);
      v139 = v331;
      v140 = 36;
      goto LABEL_314;
    case 175:
      v854 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v855 = glpMakeStringZ_0(*(a3 + 32));
      v857 = v856;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v855, v857, *(a3 + 40), &v1068);
      v139 = v854;
      v140 = 9;
      goto LABEL_314;
    case 176:
      v963 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v964 = glpMakeStringZ_0(*(a3 + 32));
      v966 = v965;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v964, v966, *(a3 + 40), &v1068);
      v139 = v963;
      v140 = 2;
      goto LABEL_314;
    case 177:
      v388 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v389 = glpMakeStringZ_0(*(a3 + 32));
      v391 = v390;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v389, v391, *(a3 + 40), &v1068);
      v139 = v388;
      v140 = 3;
      goto LABEL_314;
    case 178:
      v180 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v181 = glpMakeStringZ_0(*(a3 + 32));
      v183 = v182;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v181, v183, *(a3 + 40), &v1068);
      v139 = v180;
      v140 = 4;
      goto LABEL_314;
    case 179:
      v210 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v211 = glpMakeStringZ_0(*(a3 + 32));
      v213 = v212;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v211, v213, *(a3 + 40), &v1068);
      v178 = v210;
      v179 = 63;
      goto LABEL_247;
    case 180:
      v743 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v744 = glpMakeStringZ_0(*(a3 + 32));
      v746 = v745;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v744, v746, *(a3 + 40), &v1068);
      v178 = v743;
      v179 = 64;
      goto LABEL_247;
    case 181:
      v412 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v413 = glpMakeStringZ_0(*(a3 + 32));
      v415 = v414;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v413, v415, *(a3 + 40), &v1068);
      v178 = v412;
      v179 = 65;
      goto LABEL_247;
    case 182:
      v839 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v840 = glpMakeStringZ_0(*(a3 + 32));
      v842 = v841;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v840, v842, *(a3 + 40), &v1068);
      v139 = v839;
      v140 = 10;
      goto LABEL_314;
    case 183:
      v897 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v898 = glpMakeStringZ_0(*(a3 + 32));
      v900 = v899;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v898, v900, *(a3 + 40), &v1068);
      v139 = v897;
      v140 = 11;
      goto LABEL_314;
    case 184:
      v153 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v154 = glpMakeStringZ_0(*(a3 + 32));
      v156 = v155;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v154, v156, *(a3 + 40), &v1068);
      v139 = v153;
      v140 = 12;
      goto LABEL_314;
    case 185:
      v135 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v136 = glpMakeStringZ_0(*(a3 + 32));
      v138 = v137;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v136, v138, *(a3 + 40), &v1068);
      v139 = v135;
      v140 = 6;
      goto LABEL_314;
    case 186:
      v417 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v418 = glpMakeStringZ_0(*(a3 + 32));
      v420 = v419;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v418, v420, *(a3 + 40), &v1068);
      v139 = v417;
      v140 = 7;
      goto LABEL_314;
    case 187:
      v453 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v454 = glpMakeStringZ_0(*(a3 + 32));
      v456 = v455;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v454, v456, *(a3 + 40), &v1068);
      v139 = v453;
      v140 = 8;
      goto LABEL_314;
    case 188:
      v672 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v673 = glpMakeStringZ_0(*(a3 + 32));
      v675 = v674;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v673, v675, *(a3 + 40), &v1068);
      v139 = v672;
      v140 = 37;
      goto LABEL_314;
    case 189:
      v485 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v486 = glpMakeStringZ_0(*(a3 + 32));
      v488 = v487;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v486, v488, *(a3 + 40), &v1068);
      v139 = v485;
      v140 = 38;
      goto LABEL_314;
    case 190:
      v668 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v669 = glpMakeStringZ_0(*(a3 + 32));
      v671 = v670;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v669, v671, *(a3 + 40), &v1068);
      v139 = v668;
      v140 = 39;
      goto LABEL_314;
    case 191:
      v522 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v523 = glpMakeStringZ_0(*(a3 + 32));
      v525 = v524;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v523, v525, *(a3 + 40), &v1068);
      v139 = v522;
      v140 = 13;
      goto LABEL_314;
    case 192:
      v757 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v758 = glpMakeStringZ_0(*(a3 + 32));
      v760 = v759;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v758, v760, *(a3 + 40), &v1068);
      v139 = v757;
      v140 = 22;
      goto LABEL_314;
    case 193:
      v141 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v142 = glpMakeStringZ_0(*(a3 + 32));
      v144 = v143;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v142, v144, *(a3 + 40), &v1068);
      v139 = v141;
      v140 = 23;
      goto LABEL_314;
    case 194:
      v190 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v191 = glpMakeStringZ_0(*(a3 + 32));
      v193 = v192;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v191, v193, *(a3 + 40), &v1068);
      v139 = v190;
      v140 = 24;
      goto LABEL_314;
    case 195:
      v461 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v462 = glpMakeStringZ_0(*(a3 + 32));
      v464 = v463;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v462, v464, *(a3 + 40), &v1068);
      v139 = v461;
      v140 = 14;
      goto LABEL_314;
    case 196:
      v260 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v261 = glpMakeStringZ_0(*(a3 + 32));
      v263 = v262;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v261, v263, *(a3 + 40), &v1068);
      v139 = v260;
      v140 = 25;
      goto LABEL_314;
    case 197:
      v688 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v689 = glpMakeStringZ_0(*(a3 + 32));
      v691 = v690;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v689, v691, *(a3 + 40), &v1068);
      v139 = v688;
      v140 = 26;
      goto LABEL_314;
    case 198:
      v715 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v716 = glpMakeStringZ_0(*(a3 + 32));
      v718 = v717;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v716, v718, *(a3 + 40), &v1068);
      v139 = v715;
      v140 = 27;
      goto LABEL_314;
    case 199:
      v435 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v436 = glpMakeStringZ_0(*(a3 + 32));
      v438 = v437;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v436, v438, *(a3 + 40), &v1068);
      v139 = v435;
      v140 = 15;
      goto LABEL_314;
    case 200:
      v724 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v725 = glpMakeStringZ_0(*(a3 + 32));
      v727 = v726;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v725, v727, *(a3 + 40), &v1068);
      v178 = v724;
      v179 = 66;
      goto LABEL_247;
    case 201:
      v684 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v685 = glpMakeStringZ_0(*(a3 + 32));
      v687 = v686;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v685, v687, *(a3 + 40), &v1068);
      v178 = v684;
      v179 = 69;
      goto LABEL_247;
    case 202:
      v327 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v328 = glpMakeStringZ_0(*(a3 + 32));
      v330 = v329;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v328, v330, *(a3 + 40), &v1068);
      v178 = v327;
      v179 = 70;
      goto LABEL_247;
    case 203:
      v340 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v341 = glpMakeStringZ_0(*(a3 + 32));
      v343 = v342;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v341, v343, *(a3 + 40), &v1068);
      v178 = v340;
      v179 = 71;
      goto LABEL_247;
    case 204:
      v692 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v693 = glpMakeStringZ_0(*(a3 + 32));
      v695 = v694;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v693, v695, *(a3 + 40), &v1068);
      v178 = v692;
      v179 = 67;
      goto LABEL_247;
    case 205:
      v739 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v740 = glpMakeStringZ_0(*(a3 + 32));
      v742 = v741;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v740, v742, *(a3 + 40), &v1068);
      v178 = v739;
      v179 = 72;
      goto LABEL_247;
    case 206:
      v174 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v175 = glpMakeStringZ_0(*(a3 + 32));
      v177 = v176;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v175, v177, *(a3 + 40), &v1068);
      v178 = v174;
      v179 = 73;
      goto LABEL_247;
    case 207:
      v202 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v203 = glpMakeStringZ_0(*(a3 + 32));
      v205 = v204;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v203, v205, *(a3 + 40), &v1068);
      v178 = v202;
      v179 = 74;
      goto LABEL_247;
    case 208:
      v336 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v337 = glpMakeStringZ_0(*(a3 + 32));
      v339 = v338;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v337, v339, *(a3 + 40), &v1068);
      v178 = v336;
      v179 = 68;
LABEL_247:
      PrimitiveTypeNode = glpMakePrimitiveTypeNode(v178, &v1068, v179);
      *a4 = v748;
      glpCreateDoublesTelemetry(PrimitiveTypeNode);
      return 0;
    case 209:
      v354 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v355 = glpMakeStringZ_0(*(a3 + 32));
      v357 = v356;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v355, v357, *(a3 + 40), &v1068);
      v139 = v354;
      v140 = 16;
      goto LABEL_314;
    case 210:
      v226 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v227 = glpMakeStringZ_0(*(a3 + 32));
      v229 = v228;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v227, v229, *(a3 + 40), &v1068);
      v139 = v226;
      v140 = 17;
      goto LABEL_314;
    case 211:
      v268 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v269 = glpMakeStringZ_0(*(a3 + 32));
      v271 = v270;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v269, v271, *(a3 + 40), &v1068);
      v139 = v268;
      v140 = 18;
      goto LABEL_314;
    case 212:
      v774 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v775 = glpMakeStringZ_0(*(a3 + 32));
      v777 = v776;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v775, v777, *(a3 + 40), &v1068);
      v139 = v774;
      v140 = 19;
      goto LABEL_314;
    case 213:
      v778 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v779 = glpMakeStringZ_0(*(a3 + 32));
      v781 = v780;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v779, v781, *(a3 + 40), &v1068);
      v139 = v778;
      v140 = 20;
      goto LABEL_314;
    case 214:
      v302 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v303 = glpMakeStringZ_0(*(a3 + 32));
      v305 = v304;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v303, v305, *(a3 + 40), &v1068);
      v139 = v302;
      v140 = 21;
      goto LABEL_314;
    case 215:
      v786 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v787 = glpMakeStringZ_0(*(a3 + 32));
      v789 = v788;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v787, v789, *(a3 + 40), &v1068);
      v139 = v786;
      v140 = 35;
      goto LABEL_314;
    case 216:
      v833 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v834 = glpMakeStringZ_0(*(a3 + 32));
      v836 = v835;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v834, v836, *(a3 + 40), &v1068);
      v139 = v833;
      v140 = 30;
      goto LABEL_314;
    case 217:
      v901 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v902 = glpMakeStringZ_0(*(a3 + 32));
      v904 = v903;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v902, v904, *(a3 + 40), &v1068);
      v139 = v901;
      v140 = 31;
      goto LABEL_314;
    case 218:
      v556 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v557 = glpMakeStringZ_0(*(a3 + 32));
      v559 = v558;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v557, v559, *(a3 + 40), &v1068);
      v139 = v556;
      v140 = 33;
      goto LABEL_314;
    case 219:
      v873 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v874 = glpMakeStringZ_0(*(a3 + 32));
      v876 = v875;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v874, v876, *(a3 + 40), &v1068);
      v139 = v873;
      v140 = 34;
      goto LABEL_314;
    case 220:
      v264 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v265 = glpMakeStringZ_0(*(a3 + 32));
      v267 = v266;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v265, v267, *(a3 + 40), &v1068);
      v139 = v264;
      v140 = 75;
      goto LABEL_314;
    case 221:
      v822 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v823 = glpMakeStringZ_0(*(a3 + 32));
      v825 = v824;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v823, v825, *(a3 + 40), &v1068);
      v139 = v822;
      v140 = 76;
      goto LABEL_314;
    case 222:
      v574 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v575 = glpMakeStringZ_0(*(a3 + 32));
      v577 = v576;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v575, v577, *(a3 + 40), &v1068);
      v139 = v574;
      v140 = 40;
      goto LABEL_314;
    case 223:
      v289 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v290 = glpMakeStringZ_0(*(a3 + 32));
      v292 = v291;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v290, v292, *(a3 + 40), &v1068);
      v139 = v289;
      v140 = 41;
      goto LABEL_314;
    case 224:
      v544 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v545 = glpMakeStringZ_0(*(a3 + 32));
      v547 = v546;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v545, v547, *(a3 + 40), &v1068);
      v139 = v544;
      v140 = 42;
      goto LABEL_314;
    case 225:
      v222 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v223 = glpMakeStringZ_0(*(a3 + 32));
      v225 = v224;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v223, v225, *(a3 + 40), &v1068);
      v139 = v222;
      v140 = 43;
      goto LABEL_314;
    case 226:
      v843 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v844 = glpMakeStringZ_0(*(a3 + 32));
      v846 = v845;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v844, v846, *(a3 + 40), &v1068);
      v139 = v843;
      v140 = 45;
      goto LABEL_314;
    case 227:
      v850 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v851 = glpMakeStringZ_0(*(a3 + 32));
      v853 = v852;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v851, v853, *(a3 + 40), &v1068);
      v139 = v850;
      v140 = 46;
      goto LABEL_314;
    case 228:
      v294 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v295 = glpMakeStringZ_0(*(a3 + 32));
      v297 = v296;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v295, v297, *(a3 + 40), &v1068);
      v139 = v294;
      v140 = 77;
      goto LABEL_314;
    case 229:
      v766 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v767 = glpMakeStringZ_0(*(a3 + 32));
      v769 = v768;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v767, v769, *(a3 + 40), &v1068);
      v139 = v766;
      v140 = 48;
      goto LABEL_314;
    case 230:
      v680 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v681 = glpMakeStringZ_0(*(a3 + 32));
      v683 = v682;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v681, v683, *(a3 + 40), &v1068);
      v139 = v680;
      v140 = 49;
      goto LABEL_314;
    case 231:
      v676 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v677 = glpMakeStringZ_0(*(a3 + 32));
      v679 = v678;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v677, v679, *(a3 + 40), &v1068);
      v139 = v676;
      v140 = 50;
      goto LABEL_314;
    case 232:
      v194 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v195 = glpMakeStringZ_0(*(a3 + 32));
      v197 = v196;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v195, v197, *(a3 + 40), &v1068);
      v139 = v194;
      v140 = 51;
      goto LABEL_314;
    case 233:
      v218 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v219 = glpMakeStringZ_0(*(a3 + 32));
      v221 = v220;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v219, v221, *(a3 + 40), &v1068);
      v139 = v218;
      v140 = 53;
      goto LABEL_314;
    case 234:
      v457 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v458 = glpMakeStringZ_0(*(a3 + 32));
      v460 = v459;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v458, v460, *(a3 + 40), &v1068);
      v139 = v457;
      v140 = 54;
      goto LABEL_314;
    case 235:
      v471 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v472 = glpMakeStringZ_0(*(a3 + 32));
      v474 = v473;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v472, v474, *(a3 + 40), &v1068);
      v139 = v471;
      v140 = 78;
      goto LABEL_314;
    case 236:
      v346 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v347 = glpMakeStringZ_0(*(a3 + 32));
      v349 = v348;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v347, v349, *(a3 + 40), &v1068);
      v139 = v346;
      v140 = 28;
      goto LABEL_314;
    case 237:
      v256 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v257 = glpMakeStringZ_0(*(a3 + 32));
      v259 = v258;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v257, v259, *(a3 + 40), &v1068);
      v139 = v256;
      v140 = 29;
      goto LABEL_314;
    case 238:
      v782 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v783 = glpMakeStringZ_0(*(a3 + 32));
      v785 = v784;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v783, v785, *(a3 + 40), &v1068);
      v139 = v782;
      v140 = 44;
      goto LABEL_314;
    case 239:
      v284 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v285 = glpMakeStringZ_0(*(a3 + 32));
      v287 = v286;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v285, v287, *(a3 + 40), &v1068);
      v139 = v284;
      v140 = 52;
      goto LABEL_314;
    case 240:
      v595 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v596 = glpMakeStringZ_0(*(a3 + 32));
      v598 = v597;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v596, v598, *(a3 + 40), &v1068);
      v139 = v595;
      v140 = 32;
      goto LABEL_314;
    case 241:
      v367 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v368 = glpMakeStringZ_0(*(a3 + 32));
      v370 = v369;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v368, v370, *(a3 + 40), &v1068);
      v139 = v367;
      v140 = 47;
      goto LABEL_314;
    case 242:
      v770 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v771 = glpMakeStringZ_0(*(a3 + 32));
      v773 = v772;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v771, v773, *(a3 + 40), &v1068);
      v139 = v770;
      v140 = 55;
      goto LABEL_314;
    case 243:
      v761 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v762 = glpMakeStringZ_0(*(a3 + 32));
      v764 = v763;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v762, v764, *(a3 + 40), &v1068);
      v139 = v761;
      v140 = 56;
      goto LABEL_314;
    case 244:
      v749 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v750 = glpMakeStringZ_0(*(a3 + 32));
      v752 = v751;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v750, v752, *(a3 + 40), &v1068);
      v139 = v749;
      v140 = 58;
      goto LABEL_314;
    case 245:
      v350 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v351 = glpMakeStringZ_0(*(a3 + 32));
      v353 = v352;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v351, v353, *(a3 + 40), &v1068);
      v139 = v350;
      v140 = 60;
      goto LABEL_314;
    case 246:
      v272 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v273 = glpMakeStringZ_0(*(a3 + 32));
      v275 = v274;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v273, v275, *(a3 + 40), &v1068);
      v139 = v272;
      v140 = 57;
      goto LABEL_314;
    case 247:
      v402 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v403 = glpMakeStringZ_0(*(a3 + 32));
      v405 = v404;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v403, v405, *(a3 + 40), &v1068);
      v139 = v402;
      v140 = 59;
      goto LABEL_314;
    case 248:
      v804 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v805 = glpMakeStringZ_0(*(a3 + 32));
      v807 = v806;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v805, v807, *(a3 + 40), &v1068);
      v139 = v804;
      v140 = 61;
LABEL_314:
      glpMakePrimitiveTypeNode(v139, &v1068, v140);
      goto LABEL_333;
    case 250:
      v643 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v644 = glpMakeStringZ_0(*(a3 + 32));
      v646 = v645;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v644, v646, *(a3 + 40), &v1068);
      yyfill(a3, v1072, 0, v11 == 0);
      v647 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeTypeIdentifierNode(v643, &v1068, v647, v648);
      goto LABEL_333;
    case 252:
      v421 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v422 = glpMakeStringZ_0(*(a3 + 32));
      v424 = v423;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v422, v424, *(a3 + 40), &v1068);
      v95 = v421;
      v96 = 24;
      goto LABEL_332;
    case 253:
      v298 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v299 = glpMakeStringZ_0(*(a3 + 32));
      v301 = v300;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v299, v301, *(a3 + 40), &v1068);
      v95 = v298;
      v96 = 23;
      goto LABEL_332;
    case 254:
      v711 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v712 = glpMakeStringZ_0(*(a3 + 32));
      v714 = v713;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v712, v714, *(a3 + 40), &v1068);
      v95 = v711;
      v96 = 22;
      goto LABEL_332;
    case 255:
      v560 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v561 = glpMakeStringZ_0(*(a3 + 32));
      v563 = v562;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v561, v563, *(a3 + 40), &v1068);
      v95 = v560;
      v96 = 20;
      goto LABEL_332;
    case 256:
      v475 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v476 = glpMakeStringZ_0(*(a3 + 32));
      v478 = v477;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v476, v478, *(a3 + 40), &v1068);
      v95 = v475;
      v96 = 21;
LABEL_332:
      glpMakeKeywordQualifierNode(v95, &v1068, v96);
      goto LABEL_333;
    case 257:
      v696 = a7[4];
      yyfill(a3, v1072, 4294967293, v11 == 0);
      v697 = glpMakeStringZ_0(*(a3 - 192));
      glpStringHashPut(v696, v697, v698, 1, v699);
      v700 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967292, v11 == 0);
      v701 = glpMakeStringZ_0(*(a3 - 256));
      v703 = v702;
      yyfill(a3, v1072, 4294967292, v11 == 0);
      glpMakeSourceLocation(v701, v703, *(a3 - 248), &v1068);
      yyfill(a3, v1072, 4294967293, v11 == 0);
      v704 = glpMakeStringZ_0(*(a3 - 192));
      v706 = v705;
      goto LABEL_243;
    case 258:
      v700 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967293, v11 == 0);
      v728 = glpMakeStringZ_0(*(a3 - 184));
      v730 = v729;
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpMakeSourceLocation(v728, v730, *(a3 - 176), &v1068);
      v704 = "<<unnamed>>";
      v706 = 0x725D7890000000BLL;
LABEL_243:
      glpMakeStructTypeNode(v700, &v1068, v704, v706);
      *a4 = v731;
      v732 = glpCompilerGetAllocator(a7[98]);
      v733 = *a4;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v734 = *(a3 - 48);
LABEL_355:
      addFields(v732, v733, v734);
      return 0;
    case 260:
      yyfill(a3, v1072, 0, v11 == 0);
      v344 = *(a3 + 24);
      do
      {
        v345 = v344;
        v344 = *(v344 + 16);
      }

      while (v344);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      *(v345 + 16) = *(a3 - 48);
LABEL_12:
      yyfill(a3, v1072, 0, v11 == 0);
      result = 0;
      v24 = *(a3 + 24);
      goto LABEL_334;
    case 261:
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v371 = *(a3 - 48);
      if (!v371)
      {
        goto LABEL_146;
      }

      v372 = v1072[0];
      v1055 = a3 - 71;
      break;
    case 262:
      v358 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 192), &v1068);
      glpMakeQualifiedTypeNode(v358, &v1068);
      v360 = v359;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpQualifiedTypeNodeSetType(v360, *(a3 - 120));
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpQualifiedTypeNodeSetQualifiers(v360, *(a3 - 192));
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v361 = *(a3 - 48);
      if (v361)
      {
        do
        {
          v362 = v361[1];
          v363 = v361[2];
          v364 = v360;
          if (v362)
          {
            glpArrayTypeNodeSetElementType(v361[1], v360);
            v364 = v362;
          }

          glpFieldDeclarationNodeSetType(*v361, v364);
          v361 = v363;
        }

        while (v363);
      }

LABEL_121:
      v365 = a3;
      v366 = v11 == 0;
      goto LABEL_122;
    case 263:
      v411 = glpCompilerPoolAlloc(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      *v411 = *(a3 + 24);
      yyfill(a3, v1072, 0, v11 == 0);
      result = 0;
      v411[1] = *(a3 + 32);
      v411[2] = 0;
      goto LABEL_160;
    case 264:
      v411 = glpCompilerPoolAlloc(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      *v411 = *(a3 + 24);
      yyfill(a3, v1072, 0, v11 == 0);
      v411[1] = *(a3 + 32);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      result = 0;
      v411[2] = *(a3 - 120);
LABEL_160:
      *a4 = v411;
      return result;
    case 265:
      v622 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      v623 = glpMakeStringZ_0(*(a3 + 32));
      v625 = v624;
      yyfill(a3, v1072, 0, v11 == 0);
      glpMakeSourceLocation(v623, v625, *(a3 + 40), &v1068);
      yyfill(a3, v1072, 0, v11 == 0);
      v626 = glpMakeStringZ_0(*(a3 + 24));
      glpMakeFieldDeclarationNode(v622, &v1068, v626, v627);
      v484 = v628;
      result = 0;
      goto LABEL_214;
    case 266:
      v536 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v537 = glpMakeStringZ_0(*(a3 - 40));
      v539 = v538;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v537, v539, *(a3 - 32), &v1068);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v540 = glpMakeStringZ_0(*(a3 - 48));
      glpMakeFieldDeclarationNode(v536, &v1068, v540, v541);
      *a4 = v542;
      yyfill(a3, v1072, 0, v11 == 0);
      v543 = *(a3 + 24);
      arrayify(0, v543);
      result = 0;
      a4[1] = v543;
      return result;
    case 268:
      v618 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0, v11 == 0);
      glpASTNodeGetLocation(*(a3 + 24), &v1068);
      glpMakeExpressionStatementNode(v618, &v1068);
      v620 = v619;
      *a4 = v619;
      yyfill(a3, v1072, 0, v11 == 0);
      v621 = *(a3 + 24);
      goto LABEL_226;
    case 278:
      v720 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v721 = glpMakeStringZ_0(*(a3 - 40));
      v723 = v722;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v721, v723, *(a3 - 32), &v1068);
      v410 = v720;
      v416 = 1;
      goto LABEL_240;
    case 279:
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v719 = *(a3 - 48);
      *a4 = v719;
      glpBlockNodeSetNeedsNewScope(v719, 1);
      return 0;
    case 282:
      v406 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v407 = glpMakeStringZ_0(*(a3 - 40));
      v409 = v408;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v407, v409, *(a3 - 32), &v1068);
      v410 = v406;
      goto LABEL_155;
    case 284:
      v489 = glpCompilerGetAllocator(a7[98]);
      v1068.n128_u64[0] = "-1";
      v1068.n128_u64[1] = 0xEDA00000002;
      v1069 = 0xFFFFFFFFLL;
      glpMakeBlockNode(v489, &v1068, 0);
      *a4 = v490;
      goto LABEL_180;
    case 285:
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      *a4 = *(a3 - 48);
LABEL_180:
      v491 = glpCompilerGetAllocator(a7[98]);
      v492 = *a4;
      goto LABEL_201;
    case 287:
      v666 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1068);
      glpMakeExpressionStatementNode(v666, &v1068);
      v620 = v667;
      *a4 = v667;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v621 = *(a3 - 48);
LABEL_226:
      glpExpressionStatementNodeSetExpr(v620, v621);
      return 0;
    case 288:
      v578 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967292, v11 == 0);
      v579 = glpMakeStringZ_0(*(a3 - 256));
      v581 = v580;
      yyfill(a3, v1072, 4294967292, v11 == 0);
      glpMakeSourceLocation(v579, v581, *(a3 - 248), &v1068);
      glpMakeIfStatementNode(v578, &v1068);
      v583 = v582;
      *a4 = v582;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpIfStatementNodeSetCond(v583, *(a3 - 120));
      v584 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpIfStatementNodeSetIfStatement(v584, *(a3 + 24));
      v585 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpIfStatementNodeSetElseStatement(v585, *(a3 + 32));
      return 0;
    case 289:
      v564 = glpCompilerGetAllocator(a7[98]);
      v1068.n128_u64[0] = "-1";
      v1068.n128_u64[1] = 0xEDA00000002;
      v1069 = 0xFFFFFFFFLL;
      glpMakeBlockNode(v564, &v1068, 1);
      *a4 = v565;
      v566 = glpCompilerGetAllocator(a7[98]);
      v567 = *a4;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpBlockNodeAddStatement(v566, v567, *(a3 - 120));
      v568 = glpCompilerGetAllocator(a7[98]);
      v1068.n128_u64[0] = "-1";
      v1068.n128_u64[1] = 0xEDA00000002;
      v1069 = 0xFFFFFFFFLL;
      glpMakeBlockNode(v568, &v1068, 1);
      a4[1] = v569;
      v491 = glpCompilerGetAllocator(a7[98]);
      v492 = a4[1];
LABEL_201:
      yyfill(a3, v1072, 0, v11 == 0);
      glpBlockNodeAddStatement(v491, v492, *(a3 + 24));
      return 0;
    case 290:
      v707 = glpCompilerGetAllocator(a7[98]);
      v1068.n128_u64[0] = "-1";
      v1068.n128_u64[1] = 0xEDA00000002;
      v1069 = 0xFFFFFFFFLL;
      glpMakeBlockNode(v707, &v1068, 1);
      *a4 = v708;
      v709 = glpCompilerGetAllocator(a7[98]);
      v710 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpBlockNodeAddStatement(v709, v710, *(a3 + 24));
      result = 0;
      a4[1] = 0;
      return result;
    case 292:
      v599 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 192), &v1068);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v600 = glpMakeStringZ_0(*(a3 - 120));
      glpMakeVariableDeclarationNode(v599, &v1068, v600, v601, 1);
      v603 = v602;
      *a4 = v602;
      yyfill(a3, v1072, 4294967293, v11 == 0);
      glpVariableDeclarationNodeSetType(v603, *(a3 - 192));
      v604 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpVariableDeclarationNodeSetInitializer(v604, *(a3 + 24));
      return 0;
    case 293:
      v548 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967290, v11 == 0);
      v549 = glpMakeStringZ_0(*(a3 - 400));
      v551 = v550;
      yyfill(a3, v1072, 4294967290, v11 == 0);
      glpMakeSourceLocation(v549, v551, *(a3 - 392), &v1068);
      glpMakeSwitchStatementNode(v548, &v1068);
      v553 = v552;
      *a4 = v552;
      yyfill(a3, v1072, 4294967292, v11 == 0);
      glpSwitchStatementNodeSetExpr(v553, *(a3 - 264));
      v554 = *a4;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpSwitchStatementNodeSetBody(v554, *(a3 - 48));
      return 0;
    case 294:
      v410 = glpCompilerGetAllocator(a7[98]);
      v1068.n128_u64[0] = "-1";
      v1068.n128_u64[1] = 0xEDA00000002;
      v1069 = 0xFFFFFFFFLL;
LABEL_155:
      v416 = 0;
LABEL_240:
      glpMakeBlockNode(v410, &v1068, v416);
      goto LABEL_333;
    case 296:
      v506 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v507 = glpMakeStringZ_0(*(a3 - 112));
      v509 = v508;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpMakeSourceLocation(v507, v509, *(a3 - 104), &v1068);
      glpMakeCaseStatementNode(v506, &v1068, 1);
      v511 = v510;
      *a4 = v510;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpCaseStatementNodeSetConstValue(v511, *(a3 - 48));
      return 0;
    case 297:
      v425 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v426 = glpMakeStringZ_0(*(a3 - 40));
      v428 = v427;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v426, v428, *(a3 - 32), &v1068);
      glpMakeDefaultStatementNode(v425, &v1068, 1);
      goto LABEL_333;
    case 298:
      v586 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967292, v11 == 0);
      v587 = glpMakeStringZ_0(*(a3 - 256));
      v589 = v588;
      yyfill(a3, v1072, 4294967292, v11 == 0);
      glpMakeSourceLocation(v587, v589, *(a3 - 248), &v1068);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v590 = *(a3 - 120);
      yyfill(a3, v1072, 0, v11 == 0);
      WhileFragment = glpMakeWhileFragment(v586, &v1068, v590, *(a3 + 24));
      goto LABEL_333;
    case 299:
      v479 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967290, v11 == 0);
      v480 = glpMakeStringZ_0(*(a3 - 400));
      v482 = v481;
      yyfill(a3, v1072, 4294967290, v11 == 0);
      glpMakeSourceLocation(v480, v482, *(a3 - 392), &v1068);
      yyfill(a3, v1072, 4294967291, v11 == 0);
      v483 = *(a3 - 336);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      WhileFragment = glpMakeDoWhileFragment(v479, &v1068, v483, *(a3 - 120));
      goto LABEL_333;
    case 300:
      v446 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967291, v11 == 0);
      v447 = glpMakeStringZ_0(*(a3 - 328));
      v449 = v448;
      yyfill(a3, v1072, 4294967291, v11 == 0);
      glpMakeSourceLocation(v447, v449, *(a3 - 320), &v1068);
      yyfill(a3, v1072, 4294967293, v11 == 0);
      v450 = *(a3 - 192);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v451 = *(a3 - 120);
      yyfill(a3, v1072, 0, v11 == 0);
      v452 = *(a3 + 24);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      WhileFragment = glpMakeForFragment(v446, &v1068, v450, v451, v452, *(a3 - 112));
      goto LABEL_333;
    case 304:
      v605 = glpGetPrimitiveType(9u);
      v606 = glpCompilerGetAllocator(a7[98]);
      v607 = a7[98];
      v608 = glpCompilerGetAllocator(v607);
      v614 = glpMakeMutableValue(v608, v605, 1, v609, v610, v611, v612, v613, 1);
      v615 = glpCompilerRemapValue(v607, v605, v614);
      v1068.n128_u64[0] = "-1";
      v1068.n128_u64[1] = 0xEDA00000002;
      v1069 = 0xFFFFFFFFLL;
      v616 = v606;
      v617 = v605;
LABEL_352:
      glpMakeConstantNode(v616, &v1068, v617, v615);
      goto LABEL_333;
    case 305:
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      result = 0;
      v484 = *(a3 - 48);
LABEL_214:
      *a4 = v484;
      a4[1] = 0;
      return result;
    case 306:
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v293 = *(a3 - 120);
LABEL_211:
      *a4 = v293;
      yyfill(a3, v1072, 0, v11 == 0);
      result = 0;
      v67 = *(a3 + 24);
LABEL_311:
      a4[1] = v67;
      return result;
    case 307:
      v526 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v527 = glpMakeStringZ_0(*(a3 - 40));
      v529 = v528;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v527, v529, *(a3 - 32), &v1068);
      glpMakeContinueStatementNode(v526, &v1068);
      goto LABEL_333;
    case 308:
      v591 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v592 = glpMakeStringZ_0(*(a3 - 40));
      v594 = v593;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v592, v594, *(a3 - 32), &v1068);
      glpMakeBreakStatementNode(v591, &v1068);
      goto LABEL_333;
    case 309:
      v570 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v571 = glpMakeStringZ_0(*(a3 - 40));
      v573 = v572;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v571, v573, *(a3 - 32), &v1068);
      glpMakeReturnStatementNode(v570, &v1068);
      goto LABEL_333;
    case 310:
      v465 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 4294967294, v11 == 0);
      v466 = glpMakeStringZ_0(*(a3 - 112));
      v468 = v467;
      yyfill(a3, v1072, 4294967294, v11 == 0);
      glpMakeSourceLocation(v466, v468, *(a3 - 104), &v1068);
      glpMakeReturnStatementNode(v465, &v1068);
      v470 = v469;
      *a4 = v469;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpReturnStatementNodeSetExpr(v470, *(a3 - 48));
      return 0;
    case 311:
      v518 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      v519 = glpMakeStringZ_0(*(a3 - 40));
      v521 = v520;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpMakeSourceLocation(v519, v521, *(a3 - 32), &v1068);
      glpMakeDiscardStatementNode(v518, &v1068);
      goto LABEL_333;
    case 312:
      *a4 = glpCompilerGetTopLevelNode(a7[98]);
      v493 = glpCompilerGetAllocator(a7[98]);
      v494 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpTopLevelNodeAddDef(v493, v494, *(a3 + 24));
      result = 0;
      a7[99] = *a4;
      return result;
    case 313:
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      *a4 = *(a3 - 48);
      v530 = glpCompilerGetAllocator(a7[98]);
      v531 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpTopLevelNodeAddDef(v530, v531, *(a3 + 24));
      return 0;
    case 316:
      v532 = glpCompilerGetAllocator(a7[98]);
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpASTNodeGetLocation(*(a3 - 48), &v1068);
      glpMakeFunctionDefinitionNode(v532, &v1068);
      v534 = v533;
      *a4 = v533;
      yyfill(a3, v1072, 0xFFFFFFFFLL, v11 == 0);
      glpFunctionDefinitionNodeSetPrototype(v534, *(a3 - 48));
      v535 = *a4;
      yyfill(a3, v1072, 0, v11 == 0);
      glpFunctionDefinitionNodeSetBody(v535, *(a3 + 24));
      return 0;
    default:
      return 0;
  }

  do
  {
    v373 = v371;
    v374 = v371;
    v375 = v371[1];
    v371 = v371[2];
    v376 = v374 + 1;
    if (v375)
    {
      for (j = v375; ; j = v379)
      {
        ElementType = glpArrayTypeNodeGetElementType(j);
        if (!ElementType)
        {
          break;
        }

        v379 = ElementType;
        if (!glpIsArrayTypeNode(ElementType))
        {
          break;
        }

        v375 = v379;
      }

      if (v11 && v372 >= -1)
      {
        v380 = *(a3 + 72 * v372 + 8);
        v381 = v372 + 1;
        v382 = v1055 + 72 * v372;
        do
        {
          if (!*(v380 + 1))
          {
            goto LABEL_374;
          }

          *v382 = 1;
          v383 = *(v380 + 24);
          *(v382 + 39) = *(v380 + 40);
          *(v382 + 23) = v383;
          *(v382 + 47) = *(v380 + 48);
          v380 = *(v380 + 8);
          *(v382 + 7) = v380;
          --v381;
          v382 -= 72;
        }

        while ((v381 & 0x8000000000000000) == 0);
        v372 = -2;
        v1072[0] = -2;
      }

      glpArrayTypeNodeSetElementType(v375, *(a3 - 120));
    }

    else
    {
      if (v11 && v372 >= -1)
      {
        v384 = *(a3 + 72 * v372 + 8);
        v385 = v372 + 1;
        v386 = v1055 + 72 * v372;
        do
        {
          if (!*(v384 + 1))
          {
            goto LABEL_374;
          }

          *v386 = 1;
          v387 = *(v384 + 24);
          *(v386 + 39) = *(v384 + 40);
          *(v386 + 23) = v387;
          *(v386 + 47) = *(v384 + 48);
          v384 = *(v384 + 8);
          *(v386 + 7) = v384;
          --v385;
          v386 -= 72;
        }

        while ((v385 & 0x8000000000000000) == 0);
        v372 = -2;
        v1072[0] = -2;
      }

      v376 = (a3 - 120);
    }

    glpFieldDeclarationNodeSetType(*v373, *v376);
  }

  while (v371);
LABEL_146:
  v365 = a3;
  v366 = v11 == 0;
LABEL_122:
  yyfill(v365, v1072, 0xFFFFFFFFLL, v366);
  result = 0;
  v24 = *(a3 - 48);
LABEL_334:
  *a4 = v24;
  return result;
}

uint64_t yyfill(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    v4 = *a2;
    if (v4 > a3)
    {
      v5 = a1 + 72 * v4;
      v6 = *(v5 + 8);
      v7 = v5 - 71;
      do
      {
        if (!*(v6 + 1))
        {
          abort();
        }

        --v4;
        *v7 = 1;
        v8 = *(v6 + 24);
        *(v7 + 39) = *(v6 + 40);
        *(v7 + 23) = v8;
        *(v7 + 47) = *(v6 + 48);
        v6 = *(v6 + 8);
        *(v7 + 7) = v6;
        v7 -= 72;
      }

      while (v4 > a3);
      *a2 = a3;
    }
  }

  return a3;
}

const char *glpMakeStringZ_0(const char *a1)
{
  v2 = strlen(a1);
  if (v2)
  {
    v3 = v2;
    v4 = v2;
    do
    {
      v4 ^= 32 * v4 + (v4 >> 2) + a1[v3 - 1];
      v3 += ~(v2 >> 5);
    }

    while (v3 > v2 >> 5);
  }

  return a1;
}

void *addFields(void *a1, uint64_t a2, uint64_t *a3)
{
  if (a3[2])
  {
    addFields(a1, a2);
  }

  v6 = *a3;

  return glpStructureNodeAddField(a1, a2, v6);
}

uint64_t iterateQualifiers(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    Kind = glpASTNodeGetKind(result);
    if ((Kind - 59) >= 3)
    {
      if (Kind != 62)
      {
        abort();
      }

      result = glpQualifierListNodeGetQualifierCount(v3);
      if (result)
      {
        v6 = result;
        for (i = 0; i != v6; ++i)
        {
          Qualifier = glpQualifierListNodeGetQualifier(v3, i);
          result = (*(a2 + 16))(a2, Qualifier);
        }
      }
    }

    else
    {
      v5 = *(a2 + 16);

      return v5(a2, v3);
    }
  }

  return result;
}

uint64_t __yyuserAction_block_invoke(uint64_t a1, uint64_t a2)
{
  result = glpIsKeywordQualifierNode(a2);
  if (result)
  {
    result = glpKeywordQualifierNodeGetQualifier(a2);
    if (result == 10)
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 32);
      Name = glpFunctionPrototypeNodeGetName(v5);

      return glpStringHashPut(v6, Name, v7, 1, v9);
    }
  }

  return result;
}

void *__yyuserAction_block_invoke_2(void *a1, uint64_t a2)
{
  if (!*(*(a1[4] + 8) + 24))
  {
    Allocator = glpCompilerGetAllocator(*(a1[5] + 784));
    glpASTNodeGetLocation(a1[6], &v8);
    glpMakeQualifierListNode(Allocator, &v8);
    *(*(a1[4] + 8) + 24) = v5;
  }

  v6 = glpCompilerGetAllocator(*(a1[5] + 784));
  return glpQualifierListNodeAddQualifier(v6, *(*(a1[4] + 8) + 24), a2);
}

void *__yyuserAction_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (!v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = glpCompilerPoolAlloc(*(*(a1 + 40) + 784));
    Allocator = glpCompilerGetAllocator(*(*(a1 + 40) + 784));
    **(*(*(a1 + 32) + 8) + 24) = 4;
    *(*(*(*(a1 + 32) + 8) + 24) + 4) = 0;
    *(*(*(*(a1 + 32) + 8) + 24) + 8) = (*(Allocator + 8))(*Allocator, 32, "Vector Storage (GLPASTNode *)");
    v4 = *(*(*(a1 + 32) + 8) + 24);
  }

  v6 = *(v4 + 4);
  v7 = *(v4 + 4);
  if ((v6 + 1) > *v4)
  {
    if (*v4 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = *v4;
    }

    v9 = 2 * v8;
    if (v9 <= v6 + 1)
    {
      v10 = v6 + 1;
    }

    else
    {
      v10 = v9;
    }

    v11 = glpCompilerGetAllocator(*(*(a1 + 40) + 784));
    v12 = (v11[1])(*v11, 8 * v10, "Vector Storage (GLPASTNode *, growth)");
    v13 = *(*(*(a1 + 32) + 8) + 24);
    memcpy(v12, *(v13 + 8), 8 * *(v13 + 4));
    (v11[3])(*v11, *(*(*(*(a1 + 32) + 8) + 24) + 8));
    **(*(*(a1 + 32) + 8) + 24) = v10;
    *(*(*(*(a1 + 32) + 8) + 24) + 8) = v12;
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v7 = *(v4 + 4);
  }

  result = memmove((*(v4 + 8) + 8 * v6 + 8), (*(v4 + 8) + 8 * v6), 8 * (v7 - v6));
  *(*(*(*(*(a1 + 32) + 8) + 24) + 8) + 8 * v6) = a2;
  v15 = *(*(*(a1 + 32) + 8) + 24);
  ++*(v15 + 4);
  return result;
}

uint64_t __yyuserAction_block_invoke_4(uint64_t a1, uint64_t a2)
{
  Kind = glpASTNodeGetKind(a2);
  if ((Kind - 60) < 2)
  {
    v5 = 32;
LABEL_3:
    v6 = *(*(a1 + v5) + 16);

    return v6();
  }

  if (Kind != 59)
  {
    abort();
  }

  Qualifier = glpKeywordQualifierNodeGetQualifier(a2);
  result = (*(*(a1 + 32) + 16))();
  if (Qualifier != 10)
  {
    v5 = 40;
    goto LABEL_3;
  }

  return result;
}

uint64_t __yyuserAction_block_invoke_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = glpQualifierKindOfNode(*a2);
  return v4 - glpQualifierKindOfNode(v3);
}

uint64_t arrayify(uint64_t a1, uint64_t a2)
{
  ElementType = a2;
  if (glpArrayTypeNodeGetElementType(a2))
  {
    ElementType = a2;
    do
    {
      ElementType = glpArrayTypeNodeGetElementType(ElementType);
    }

    while (glpArrayTypeNodeGetElementType(ElementType));
  }

  glpArrayTypeNodeSetElementType(ElementType, a1);
  return a2;
}

uint64_t yyresolveStates(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    abort();
  }

  v7 = (yyresolveStates)();
  if (!v7)
  {
    if (*(a1 + 1))
    {
LABEL_5:
      v7 = 0;
      goto LABEL_6;
    }

    v10 = (a1 + 24);
    v11 = *(a1 + 24);
    v45 = 0uLL;
    v46 = 0;
    v13 = (v11 + 64);
    v12 = *(v11 + 64);
    if (v12)
    {
      while (1)
      {
        v14 = *(v11 + 4);
        v15 = *(v12 + 4);
        if (v14 != v15)
        {
          goto LABEL_34;
        }

        v16 = yyr2[v14];
        if (yyr2[v14])
        {
          v17 = v16 + 1;
          v18 = v11;
          v19 = v12;
          while (1)
          {
            v19 = *(v19 + 8);
            v18 = *(v18 + 8);
            if (*(v18 + 16) != *(v19 + 16))
            {
              break;
            }

            if (--v17 < 2)
            {
              v20 = *(v11 + 8);
              for (i = *(v12 + 8); v20 != i; i = *(i + 8))
              {
                if (*(v20 + 1))
                {
                  *(i + 1) = 1;
                  v22 = *(v20 + 24);
                  *(i + 40) = *(v20 + 40);
                  *(i + 24) = v22;
                }

                else if (*(i + 1))
                {
                  *(v20 + 1) = 1;
                  v23 = *(i + 24);
                  *(v20 + 40) = *(i + 40);
                  *(v20 + 24) = v23;
                }

                else
                {
                  v24 = *(v20 + 24);
                  v25 = *(i + 24);
                  if (v25)
                  {
                    v26 = v25 == v24;
                  }

                  else
                  {
                    v26 = 1;
                  }

                  if (!v26)
                  {
                    v27 = (v20 + 24);
                    while (v24)
                    {
                      if (v24 < v25)
                      {
                        *v27 = v25;
                        v28 = *(v25 + 64);
                        *(v25 + 64) = v24;
                        v24 = *v27;
                        v25 = v28;
                      }

                      if (v25)
                      {
                        v27 = (v24 + 64);
                        v24 = *(v24 + 64);
                        if (v25 != v24)
                        {
                          continue;
                        }
                      }

                      goto LABEL_31;
                    }

                    *v27 = v25;
                  }

LABEL_31:
                  *(i + 24) = *(v20 + 24);
                }

                if (v16 < 2)
                {
                  break;
                }

                --v16;
                v20 = *(v20 + 8);
              }

              goto LABEL_45;
            }
          }

LABEL_34:
          v29 = yydprec[v14];
          v30 = yydprec[v15];
          v32 = v29 == v30 || v29 == 0 || v30 == 0;
          if (v32 || (v33 = v12, v29 >= v30) && (v33 = v11, v30 >= v29))
          {
            yyresolveLocations(a1, 1, a3);
            yyerror(a1 + 48, a4, "syntax is ambiguous");
            v7 = 2;
            goto LABEL_6;
          }

          v13 = (v12 + 64);
          v12 = *(v12 + 64);
          v11 = v33;
          if (!v12)
          {
            break;
          }
        }

        else
        {
LABEL_45:
          v12 = *(v12 + 64);
          *v13 = v12;
          if (!v12)
          {
            break;
          }
        }
      }
    }

    bzero(v50, 0x288uLL);
    v34 = (v11 + 8);
    v35 = *(v11 + 4);
    v36 = yyr2[v35];
    v37 = yyresolveStates(*(v11 + 8), yyr2[v35], a3, a4);
    if (v37)
    {
      v7 = v37;
      if (!v36)
      {
LABEL_56:
        *v10 = 0;
        goto LABEL_6;
      }

      v38 = v36 + 1;
      do
      {
        v39 = *v34;
        yydestroyGLRState(*v34);
        v34 = (v39 + 8);
        --v38;
      }

      while (v38 > 1);
    }

    else
    {
      v40 = *v34;
      v52 = *v34;
      if (!v36)
      {
        v51[3] = *(v40 + 48);
      }

      v41 = *(a3 + 228);
      v49 = *(a3 + 248);
      v42 = *(a3 + 232);
      v47 = *(a3 + 256);
      v48 = v42;
      *(a3 + 228) = *(v11 + 16);
      v43 = *(v11 + 40);
      *(a3 + 232) = *(v11 + 24);
      *(a3 + 248) = v43;
      *(a3 + 256) = *(v11 + 48);
      v7 = yyuserAction(*(v11 + 4), v36, v51, &v45, (a1 + 48), a3, a4);
      *(a3 + 228) = v41;
      v44 = v47;
      *(a3 + 232) = v48;
      *(a3 + 248) = v49;
      *(a3 + 256) = v44;
    }

    if (!v7)
    {
      *(a1 + 1) = 1;
      *v10 = v45;
      *(a1 + 40) = v46;
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void yyresolveLocations(uint64_t a1, int a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    yyresolveLocations(*(a1 + 8));
    if (!*(a1 + 1))
    {
      bzero(v20, 0x288uLL);
      v5 = *(a1 + 24);
      if (!v5)
      {
        abort();
      }

      v6 = *(v5 + 4);
      v7 = yyr2[v6];
      if (yyr2[v6])
      {
        v8 = (v5 + 8);
        v9 = yyr2[v6];
        yyresolveLocations(*(v5 + 8));
        v10 = v7 + 1;
        v11 = &v20[9 * v7 + 6];
        do
        {
          v12 = *v8;
          *v11 = *(*v8 + 48);
          v11 = (v11 - 72);
          v8 = (v12 + 8);
          --v10;
        }

        while (v10 > 1);
      }

      else
      {
        v21[0] = *(*(v5 + 8) + 48);
      }

      v13 = *(a3 + 228);
      v19 = *(a3 + 248);
      v17 = *(a3 + 256);
      v18 = *(a3 + 232);
      *(a3 + 228) = *(v5 + 16);
      v14 = *(v5 + 24);
      *(a3 + 248) = *(v5 + 40);
      *(a3 + 232) = v14;
      if (v7)
      {
        *&v15 = v22;
        *(&v15 + 1) = *(v21 + 9 * v7 + 1);
      }

      else
      {
        *&v15 = *(&v21[0] + 1);
        *(&v15 + 1) = *(&v21[0] + 1);
      }

      *(a1 + 48) = v15;
      *(a3 + 228) = v13;
      *(a3 + 232) = v18;
      *(a3 + 248) = v19;
      *(a3 + 256) = v17;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t BitSetNewWithAllocator(unsigned int a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *), uint64_t a4, uint64_t a5)
{
  v10 = ((a1 >> 3) & 0x1FFFFFFC) + 4;
  v11 = a3(a2, 48, "Bit Set");
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = a1;
  *(v11 + 36) = v10;
  *(v11 + 40) = a3(a2, v10, "Bit Set (packed bits)");

  return BitSetSetRangeEqualsInternal(v11, 0, a1, 0);
}

void *glpMallocAlloc_0(int a1, size_t size)
{
  result = malloc_type_malloc(size, 0xCA0EF1E7uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *glpMallocRealloc_0(int a1, void *ptr, size_t size)
{
  result = malloc_type_realloc(ptr, size, 0x352A3853uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

uint64_t BitSetSetRangeEqualsInternal(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a2 < a3)
  {
    v6 = -1 << a2;
    v7 = 0xFFFFFFFF >> -a3;
    v8 = a2 >> 5;
    v9 = ~(a2 >> 5) + ((a3 - 1) >> 5);
    if (v9 < 0)
    {
      v14 = v7 & v6;
      v15 = *(a1 + 40);
      if (a4)
      {
        v16 = *(v15 + 4 * v8) | v14;
      }

      else
      {
        v16 = *(v15 + 4 * v8) & ~v14;
      }

      *(v15 + 4 * v8) = v16;
    }

    else
    {
      v10 = (a3 - 1) >> 5;
      if (a4)
      {
        v11 = -1;
      }

      else
      {
        v11 = 0;
      }

      memset((*(a1 + 40) + 4 * v8 + 4), v11, (4 * v9));
      v12 = *(a1 + 40);
      if (a4)
      {
        *(v12 + 4 * v8) |= v6;
        v13 = *(v12 + 4 * v10) | v7;
      }

      else
      {
        *(v12 + 4 * v8) &= ~v6;
        v13 = *(v12 + 4 * v10) & ~v7;
      }

      *(v12 + 4 * v10) = v13;
    }
  }

  return a1;
}

uint64_t BitSetClone(uint64_t a1)
{
  v2 = BitSetNewWithAllocator(*(a1 + 32), *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));

  return BitSetCopyEquals(v2, a1);
}

uint64_t BitSetCloneWithAllocator(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *), uint64_t a4, uint64_t a5)
{
  v6 = BitSetNewWithAllocator(*(a1 + 32), a2, a3, a4, a5);

  return BitSetCopyEquals(v6, a1);
}

uint64_t BitSetCopyEquals(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  if (v5 < v4)
  {
    BitSetSetSizeEquals(a1, v4);
    v5 = *(a1 + 32);
    v4 = *(a2 + 32);
  }

  if (v4 < v5)
  {
    BitSetSetSizeEquals(a2, v5);
  }

  v6 = *(a1 + 36);
  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    v8 = *(a2 + 40);
    v9 = *(a1 + 40);
    do
    {
      v10 = *v8++;
      *v9++ = v10;
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t BitSetFree(uint64_t *a1)
{
  (a1[3])(*a1, a1[5]);
  v2 = a1[3];
  v3 = *a1;

  return v2(v3, a1);
}

uint64_t BitSetGetEquals(uint64_t a1, unsigned int a2)
{
  v3 = a2 + 1;
  if (*(a1 + 32) < v3)
  {
    a1 = BitSetSetSizeEquals(a1, v3);
  }

  return (*(*(a1 + 40) + 4 * (a2 >> 5)) >> a2) & 1;
}

uint64_t BitSetSetEquals(uint64_t result, unsigned int a2)
{
  v3 = a2 + 1;
  if (*(result + 32) < v3)
  {
    result = BitSetSetSizeEquals(result, v3);
  }

  *(*(result + 40) + 4 * (a2 >> 5)) |= 1 << a2;
  return result;
}

uint64_t BitSetClearEquals(uint64_t result, unsigned int a2)
{
  v3 = a2 + 1;
  if (*(result + 32) < v3)
  {
    result = BitSetSetSizeEquals(result, v3);
  }

  *(*(result + 40) + 4 * (a2 >> 5)) &= ~(1 << a2);
  return result;
}

uint64_t BitSetSetRangeEquals(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  if (*(a1 + 32) < a3)
  {
    a1 = BitSetSetSizeEquals(a1, a3);
  }

  return BitSetSetRangeEqualsInternal(a1, a2, a3, a4);
}

uint64_t BitSetSetSizeEquals(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);
  if (v4 != a2)
  {
    v5 = ((a2 >> 3) & 0x1FFFFFFC) + 4;
    if (v4 < a2)
    {
      *(a1 + 40) = (*(a1 + 16))(*a1, *(a1 + 40), v5, "Bit Set (packed bits, growth)");
      v4 = *(a1 + 32);
    }

    BitSetSetRangeEqualsInternal(a1, v4, a2, 0);
    *(a1 + 32) = a2;
    *(a1 + 36) = v5;
  }

  return a1;
}

uint64_t BitSetNextSetBit(uint64_t a1, int a2)
{
  v2 = (a2 + 1) >> 5;
  v3 = *(a1 + 36) >> 2;
  if (v2 >= v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = (a2 + 1) & 0x1F;
  for (i = 32 * v2; ; i += 32)
  {
    v6 = *(*(a1 + 40) + 4 * v2);
    if (v6)
    {
      break;
    }

LABEL_7:
    v4 = 0;
    if (++v2 == v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  while (1)
  {
    if ((v6 >> v4))
    {
      v7 = (i + v4);
      if (v7 < *(a1 + 32))
      {
        return v7;
      }
    }

    if (++v4 == 32)
    {
      goto LABEL_7;
    }
  }
}

uint64_t BitSetPreviousSetBit(uint64_t a1, int a2)
{
  v2 = (a2 - 1) & 0x1F;
  v3 = *(a1 + 40);
  v4 = (a2 - 1) >> 5;
  v5 = 32 * v4;
  while (1)
  {
    v6 = *(v3 + 4 * v4);
    if (v6)
    {
      break;
    }

LABEL_7:
    v5 -= 32;
    v2 = 31;
    v8 = v4-- <= 0;
    if (v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = (v2 + v5);
  while (((v6 >> v2) & 1) == 0)
  {
    result = (result - 1);
    v8 = v2-- <= 0;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t BitSetOr(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2 <= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v2 <= v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  result = BitSetClone(v5);
  v7 = *(v4 + 32);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *(v4 + 40);
    v10 = *(v5 + 40);
    do
    {
      v11 = v8 >> 5;
      v12 = 1 << v8;
      v13 = *(result + 40);
      if (((*(v10 + 4 * v11) | *(v9 + 4 * v11)) & (1 << v8)) != 0)
      {
        v14 = *(v13 + 4 * v11) | v12;
      }

      else
      {
        v14 = *(v13 + 4 * v11) & ~v12;
      }

      *(v13 + 4 * v11) = v14;
      ++v8;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t BitSetAndEquals(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  if (v5 < v4)
  {
    BitSetSetSizeEquals(a1, v4);
    v5 = *(a1 + 32);
    v4 = *(a2 + 32);
  }

  if (v4 < v5)
  {
    BitSetSetSizeEquals(a2, v5);
  }

  v6 = *(a1 + 36);
  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    v8 = *(a2 + 40);
    v9 = *(a1 + 40);
    do
    {
      v10 = *v8++;
      *v9++ &= v10;
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t BitSetAndNotEquals(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  if (v5 < v4)
  {
    BitSetSetSizeEquals(a1, v4);
    v5 = *(a1 + 32);
    v4 = *(a2 + 32);
  }

  if (v4 < v5)
  {
    BitSetSetSizeEquals(a2, v5);
  }

  v6 = *(a1 + 36);
  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    v8 = *(a2 + 40);
    v9 = *(a1 + 40);
    do
    {
      v10 = *v8++;
      *v9++ &= ~v10;
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t BitSetOrEquals(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  if (v5 < v4)
  {
    BitSetSetSizeEquals(a1, v4);
    v5 = *(a1 + 32);
    v4 = *(a2 + 32);
  }

  if (v4 < v5)
  {
    BitSetSetSizeEquals(a2, v5);
  }

  v6 = *(a1 + 36);
  if (v6 >= 4)
  {
    v7 = v6 >> 2;
    v8 = *(a2 + 40);
    v9 = *(a1 + 40);
    do
    {
      v10 = *v8++;
      *v9++ |= v10;
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t BitSetEqualsTest(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v6 = *(a1 + 32);
  if (v6 < v5)
  {
    BitSetSetSizeEquals(a1, v5);
    v6 = *(a1 + 32);
    v5 = *(a2 + 32);
  }

  if (v5 < v6)
  {
    BitSetSetSizeEquals(a2, v6);
    v6 = *(a1 + 32);
  }

  if (v6 < 1)
  {
    return 1;
  }

  v7 = 0;
  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  v10 = xmmword_23A2A5E50;
  v11 = xmmword_23A29C2D0;
  v12.i64[0] = 0x1F0000001FLL;
  v12.i64[1] = 0x1F0000001FLL;
  v13.i64[0] = 0x400000004;
  v13.i64[1] = 0x400000004;
  v14 = vdupq_n_s32(v6 - 1);
  do
  {
    v15 = v10;
    v16 = vcgeq_u32(v14, v11);
    v17 = vmovn_s32(v16);
    v18 = v7 >> 5;
    if (v17.i8[0])
    {
      v10.i32[0] = *(v8 + 4 * v18);
    }

    if (v17.i8[2])
    {
      v10.i32[1] = *(v8 + 4 * v18);
    }

    if (v17.i8[4])
    {
      v10.i32[2] = *(v8 + 4 * v18);
    }

    if (v17.i8[6])
    {
      v10.i32[3] = *(v8 + 4 * v18);
    }

    if (v17.i8[0])
    {
      v2.i32[0] = *(v9 + 4 * v18);
    }

    if (v17.i8[2])
    {
      v2.i32[1] = *(v9 + 4 * v18);
    }

    if (v17.i8[4])
    {
      v2.i32[2] = *(v9 + 4 * v18);
    }

    if (v17.i8[6])
    {
      v2.i32[3] = *(v9 + 4 * v18);
    }

    v10 = vandq_s8(v15, vshlq_u32(vmvnq_s8(veorq_s8(v10, v2)), vnegq_s32(vandq_s8(v11, v12))));
    v7 += 4;
    v11 = vaddq_s32(v11, v13);
  }

  while (((v6 + 3) & 0xFFFFFFFC) != v7);
  v19 = vbslq_s8(v16, v10, v15);
  *v19.i8 = vand_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  return (v19.i32[0] & v19.i32[1]);
}

uint64_t PPStreamChunkGetStream(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, int *a5)
{
  *a3 = 1;
  v5 = 16;
  switch(*(a1 + 16))
  {
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 0xA:
    case 0xC:
      v5 = a1 + 24;
      break;
    case 9:
      *a3 = 2;
      v5 = a1 + 32;
      v7 = a1 + 24;
      v8 = a4 == 0;
      goto LABEL_8;
    case 0xB:
      v5 = a1 + 24;
      v9 = *(a1 + 24) & 7;
      if (a4)
      {
        *a3 = v9 + 2;
        v5 = a1 + 8 * (a4 - 2) + 40;
        v7 = a1 + 32;
        v8 = a4 == 1;
LABEL_8:
        if (v8)
        {
          v5 = v7;
        }
      }

      else
      {
        *a5 = v9;
        *a3 = (*v5 & 7) + 2;
      }

      break;
    case 0xD:
      *a3 = 2;
      v5 = a1 + 4 * (2 * a4) + 24;
      break;
    default:
      return *v5;
  }

  return *v5;
}

uint64_t PPStreamChunkCompare(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 1;
  }

  switch(*(a1 + 16))
  {
    case 0:
    case 1:
    case 7:
    case 8:
    case 0xA:
    case 0xC:
      if (*(a1 + 24) != *(a2 + 24))
      {
        return 1;
      }

      break;
    case 2:
    case 4:
    case 5:
    case 6:
    case 9:
    case 0xD:
      if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
      {
        return 1;
      }

      break;
    case 3:
      if (*(a1 + 24) != *(a2 + 24))
      {
        return 1;
      }

      break;
    case 0xB:
      *(a2 + 92) = *(a1 + 92);
      *(a2 + 96) = *(a1 + 96);
      if (memcmp((a1 + 24), (a2 + 24), 0x50uLL))
      {
        return 1;
      }

      break;
    default:
      return 1;
  }

  return 0;
}

void *PPStreamChunkListCreate()
{
  result = malloc_type_calloc(0x18uLL, 1uLL, 0x1A32276BuLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *PPStreamChunkListCreateFromChunkList(uint64_t *a1)
{
  v2 = PPStreamChunkListCreate();
  for (i = *a1; i; i = *(i + 8))
  {
    switch(*(i + 16))
    {
      case 0:
      case 1:
      case 7:
      case 8:
      case 0xA:
      case 0xC:
        v4 = 8;
        break;
      case 2:
      case 4:
      case 5:
      case 6:
      case 9:
      case 0xD:
        v4 = 16;
        break;
      case 3:
        v4 = 4;
        break;
      case 0xB:
        v9 = *(i + 96);
        if (v9)
        {
          v4 = v9 + 81;
        }

        else
        {
          v4 = 80;
        }

        break;
      case 0xE:
        v8 = *(i + 28);
        if (v8)
        {
          v4 = v8 + 9;
        }

        else
        {
          v4 = 8;
        }

        break;
      default:
        v4 = 0;
        break;
    }

    v5 = v4;
    v6 = PPStreamChunkCreate(v4);
    memmove(v6, i, v5 + 24);
    *v6 = 0;
    v6[1] = 0;
    if (!*v2)
    {
      *v2 = v6;
    }

    v7 = v2[1];
    if (v7)
    {
      *(v7 + 8) = v6;
      *v6 = v7;
    }

    v6[1] = 0;
    v2[1] = v6;
    ++*(v2 + 4);
  }

  return v2;
}