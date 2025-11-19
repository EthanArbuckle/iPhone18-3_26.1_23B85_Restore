uint64_t writeArrayAccess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(ArrayAccess:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeFieldAccess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(FieldAccess:", a3, a4, a5, a6, a7, a8, v33);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v34);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v35);
      --v23;
    }

    while (v23);
  }

  glpFieldAccessNodeGetField(a2);
  v25 = v24;
  glpFieldAccessNodeGetField(a2);
  return glpStringBufferAppendFormat(a1, "%.*s\n", v26, v27, v28, v29, v30, v31, v25);
}

uint64_t writeUndeterminedCall(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(UndeterminedCall:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeFunctionCall(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(FunctionCall:", a3, a4, a5, a6, a7, a8, v33);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v34);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v35);
      --v23;
    }

    while (v23);
  }

  glpFunctionCallNodeGetName(a2);
  v25 = v24;
  glpFunctionCallNodeGetName(a2);
  return glpStringBufferAppendFormat(a1, "%.*s\n", v26, v27, v28, v29, v30, v31, v25);
}

uint64_t writeSubroutineArrayCall(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(SubroutineArrayCall:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeMethodCall(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(MethodCall:", a3, a4, a5, a6, a7, a8, v33);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v34);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v35);
      --v23;
    }

    while (v23);
  }

  glpMethodCallNodeGetName(a2);
  v25 = v24;
  glpMethodCallNodeGetName(a2);
  return glpStringBufferAppendFormat(a1, "%.*s\n", v26, v27, v28, v29, v30, v31, v25);
}

uint64_t writeConstructorCall(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(ConstructorCall:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writePostincrement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Postincrement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writePostdecrement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Postdecrement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writePreincrement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Preincrement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writePredecrement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Predecrement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeUnaryPlus(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(UnaryPlus:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeNegate(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Negate:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeLogicalNot(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(LogicalNot:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeBitwiseNot(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(BitwiseNot:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeMultiply(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Multiply:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeDivide(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Divide:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeModulo(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Modulo:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeAdd(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Add:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeSubtract(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Subtract:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeShiftLeft(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(ShiftLeft:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeShiftRight(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(ShiftRight:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeLess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Less:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeLessEqual(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(LessEqual:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeGreater(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Greater:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeGreaterEqual(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(GreaterEqual:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeEqual(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Equal:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeNotEqual(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(NotEqual:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeLogicalAnd(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(LogicalAnd:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeLogicalOr(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(LogicalOr:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeLogicalXor(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(LogicalXor:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeBitwiseAnd(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(BitwiseAnd:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeBitwiseOr(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(BitwiseOr:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeBitwiseXor(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(BitwiseXor:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeIfExpr(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(IfExpr:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeAssign(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(Assign:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeOpAssign(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(OpAssign:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeReadInput(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(ReadInput:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeWriteOutput(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(WriteOutput:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeCommaExpr(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(CommaExpr:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

void *writeParameterDeclaration(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(ParameterDeclaration:", a3, a4, a5, a6, a7, a8, v40);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v41);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v42);
      --v23;
    }

    while (v23);
  }

  glpParameterDeclarationNodeGetName(a2);
  v25 = v24;
  glpParameterDeclarationNodeGetName(a2);
  glpStringBufferAppendFormat(a1, "%.*s -> ", v26, v27, v28, v29, v30, v31, v25);
  Extra = glpParameterDeclarationNodeGetExtra(a2);
  glpAppendVariableObjectDescription(a1, Extra, v33, v34, v35, v36, v37, v38);

  return glpStringBufferAppendCString(a1, "\n");
}

uint64_t writeFunctionPrototype(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a3;
  glpStringBufferAppendFormat(a1, "(FunctionPrototype:", a3, a4, a5, a6, a7, a8, v76);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v12, v13, v14, v15, v16, v17, v77);
  if (v9 != -1)
  {
    v24 = v9 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v18, v19, v20, v21, v22, v23, v78);
      --v24;
    }

    while (v24);
  }

  glpFunctionPrototypeNodeGetName(a2);
  v26 = v25;
  glpFunctionPrototypeNodeGetName(a2);
  glpFunctionPrototypeNodeGetExtra(a2);
  glpStringBufferAppendFormat(a1, "%.*s == %p", v27, v28, v29, v30, v31, v32, v26);
  if (glpFunctionPrototypeNodeGetExtra(a2) && *(glpFunctionPrototypeNodeGetExtra(a2) + 8))
  {
    glpStringBufferAppendFormat(a1, ";", v33, v34, v35, v36, v37, v38, v79);
    Extra = glpFunctionPrototypeNodeGetExtra(a2);
    glpAppendFlagDescription(a1, *(Extra + 8));
  }

  glpStringBufferAppendFormat(a1, "\n", v33, v34, v35, v36, v37, v38, v79);
  if (glpFunctionPrototypeNodeGetExtra(a2))
  {
    if (v9 != -1)
    {
      v46 = v9 + 1;
      do
      {
        glpStringBufferAppendFormat(a1, "    ", v40, v41, v42, v43, v44, v45, v80);
        --v46;
      }

      while (v46);
    }

    v47 = glpFunctionPrototypeNodeGetExtra(a2);
    glpStringBufferAppendFormat(a1, "  %p\n", v48, v49, v50, v51, v52, v53, *(v47 + 72));
  }

  result = glpFunctionPrototypeNodeGetExtra(a2);
  if (result)
  {
    if (v9 != -1)
    {
      v61 = v9 + 1;
      do
      {
        glpStringBufferAppendFormat(a1, "    ", v55, v56, v57, v58, v59, v60, v80);
        --v61;
      }

      while (v61);
    }

    glpStringBufferAppendFormat(a1, "  ", v55, v56, v57, v58, v59, v60, v80);
    if (glpFunctionPrototypeNodeGetParameterCount(a2))
    {
      v68 = 0;
      do
      {
        v69 = glpFunctionPrototypeNodeGetExtra(a2);
        glpStringBufferAppendFormat(a1, "%p ", v70, v71, v72, v73, v74, v75, *(*(v69 + 80) + 8 * v68++));
      }

      while (v68 < glpFunctionPrototypeNodeGetParameterCount(a2));
    }

    return glpStringBufferAppendFormat(a1, "\n", v62, v63, v64, v65, v66, v67, a9);
  }

  return result;
}

uint64_t writeVariableDeclaration(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a3;
  glpStringBufferAppendFormat(a1, "(VariableDeclaration:", a3, a4, a5, a6, a7, a8, v84);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v12, v13, v14, v15, v16, v17, v85);
  if (v9 != -1)
  {
    v24 = v9 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v18, v19, v20, v21, v22, v23, v86);
      --v24;
    }

    while (v24);
  }

  glpVariableDeclarationNodeGetName(a2);
  v26 = v25;
  glpVariableDeclarationNodeGetName(a2);
  glpStringBufferAppendFormat(a1, "%.*s -> ", v27, v28, v29, v30, v31, v32, v26);
  Extra = glpVariableDeclarationNodeGetExtra(a2);
  glpAppendVariableObjectDescription(a1, Extra, v34, v35, v36, v37, v38, v39);
  glpStringBufferAppendCString(a1, "\n");
  if (glpVariableDeclarationNodeGetExtra(a2) && *(glpVariableDeclarationNodeGetExtra(a2) + 64))
  {
    if (v9 == -1)
    {
      v47 = 64;
    }

    else
    {
      v46 = v9 + 1;
      v47 = 64;
      do
      {
        glpStringBufferAppendFormat(a1, "    ", v40, v41, v42, v43, v44, v45, v87);
        --v46;
      }

      while (v46);
    }

LABEL_18:
    SaType = glpASTNodeGetSaType(a2);
    v56 = glpVariableDeclarationNodeGetExtra(a2);
    glpAppendValueDescriptionToStringBuffer(a1, SaType, *(v56 + v47));
    glpStringBufferAppendFormat(a1, "\n", v57, v58, v59, v60, v61, v62, v87);
    goto LABEL_19;
  }

  if (glpVariableDeclarationNodeGetExtra(a2) && *(glpVariableDeclarationNodeGetExtra(a2) + 72))
  {
    if (v9 == -1)
    {
      v47 = 72;
    }

    else
    {
      v54 = v9 + 1;
      v47 = 72;
      do
      {
        glpStringBufferAppendFormat(a1, "    ", v48, v49, v50, v51, v52, v53, v87);
        --v54;
      }

      while (v54);
    }

    goto LABEL_18;
  }

LABEL_19:
  result = glpVariableDeclarationNodeGetExtra(a2);
  if (result)
  {
    result = glpVariableDeclarationNodeGetExtra(a2);
    if (*(result + 8))
    {
      if (v9 != -1)
      {
        v70 = v9 + 1;
        do
        {
          glpStringBufferAppendFormat(a1, "    ", v64, v65, v66, v67, v68, v69, v87);
          --v70;
        }

        while (v70);
      }

      v71 = glpVariableDeclarationNodeGetExtra(a2);
      writeLayoutObject(a1, *(v71 + 8), v72, v73, v74, v75, v76, v77);

      return glpStringBufferAppendFormat(a1, "\n", v78, v79, v80, v81, v82, v83, a9);
    }
  }

  return result;
}

uint64_t writeVariableDeclarationGroup(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(VariableDeclarationGroup:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writePrecisionDeclaration(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(PrecisionDeclaration:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeQualifiedDeclaration(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(QualifiedDeclaration:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeQualifiedDeclarationGroup(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(QualifiedDeclarationGroup:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeFunctionDefinition(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(FunctionDefinition:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeQualifiedType(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(QualifiedType:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writePrimitiveType(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(PrimitiveType:", a3, a4, a5, a6, a7, a8, v33);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v34);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v35);
      --v23;
    }

    while (v23);
  }

  Type = glpPrimitiveTypeNodeGetType(a2);
  v25 = glpPrimitiveTypeToString(Type);
  return glpStringBufferAppendFormat(a1, "%s", v26, v27, v28, v29, v30, v31, v25);
}

uint64_t writeArrayType(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(ArrayType:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeFieldDeclaration(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(FieldDeclaration:", a3, a4, a5, a6, a7, a8, v33);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v34);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v35);
      --v23;
    }

    while (v23);
  }

  glpFieldDeclarationNodeGetName(a2);
  v25 = v24;
  glpFieldDeclarationNodeGetName(a2);
  return glpStringBufferAppendFormat(a1, "%.*s\n", v26, v27, v28, v29, v30, v31, v25);
}

uint64_t writeStructType(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(StructType:", a3, a4, a5, a6, a7, a8, v33);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v34);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v35);
      --v23;
    }

    while (v23);
  }

  glpStructTypeNodeGetName(a2);
  v25 = v24;
  glpStructTypeNodeGetName(a2);
  return glpStringBufferAppendFormat(a1, "%.*s\n", v26, v27, v28, v29, v30, v31, v25);
}

void *writeInterfaceBlock(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(InterfaceBlock:", a3, a4, a5, a6, a7, a8, v52);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v53);
  Extra = glpInterfaceBlockNodeGetExtra(a2);
  if (v8 != -1)
  {
    v24 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v54);
      --v24;
    }

    while (v24);
  }

  BlockName = glpInterfaceBlockNodeGetBlockName(a2);
  glpStringBufferAppendString(a1, BlockName, v26);
  if (!glpInterfaceBlockNodeGetHasInstanceName(a2))
  {
    result = glpStringBufferAppendCString(a1, "\n");
    if (!Extra)
    {
      return result;
    }

    goto LABEL_10;
  }

  glpStringBufferAppendCString(a1, " ");
  InstanceName = glpInterfaceBlockNodeGetInstanceName(a2);
  glpStringBufferAppendString(a1, InstanceName, v28);
  if (Extra)
  {
    if (glpInterfaceBlockNodeGetDimension(a2))
    {
      ElementCount = glpBankTypeGetElementCount(*(Extra + 64));
      glpStringBufferAppendFormat(a1, "[%u]", v30, v31, v32, v33, v34, v35, ElementCount);
    }

    glpStringBufferAppendCString(a1, "\n");
LABEL_10:
    result = glpInterfaceBlockObjectGetVariableObjectCount(Extra);
    if (result)
    {
      v43 = 0;
      v44 = result;
      do
      {
        if (v8 != -1)
        {
          v45 = v8 + 1;
          do
          {
            glpStringBufferAppendFormat(a1, "    ", v37, v38, v39, v40, v41, v42, v54);
            --v45;
          }

          while (v45);
        }

        glpStringBufferAppendCString(a1, "  -> ");
        glpAppendVariableObjectDescription(a1, *(*(Extra + 72) + 8 * v43), v46, v47, v48, v49, v50, v51);
        result = glpStringBufferAppendCString(a1, "\n");
        ++v43;
      }

      while (v43 != v44);
    }

    return result;
  }

  return glpStringBufferAppendCString(a1, "\n");
}

uint64_t writeLayoutType(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(LayoutType:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

void *writeKeywordQualifier(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(KeywordQualifier:", a3, a4, a5, a6, a7, a8, v27);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v28);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v29);
      --v23;
    }

    while (v23);
  }

  Qualifier = glpKeywordQualifierNodeGetQualifier(a2);
  v25 = glpQualifierName(Qualifier);

  return glpStringBufferAppendCString(a1, v25);
}

uint64_t writeLayoutQualifier(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(LayoutQualifier:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeSubroutineTypeList(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(SubroutineTypeList:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeQualifierList(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(QualifierList:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeGlobalTypeQualifier(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a3;
  glpStringBufferAppendFormat(a1, "(GlobalTypeQualifier:", a3, a4, a5, a6, a7, a8, v39);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v12, v13, v14, v15, v16, v17, v40);
  result = glpGlobalTypeQualifierNodeGetLayout(a2);
  if (result)
  {
    if (v9 != -1)
    {
      v25 = v9 + 1;
      do
      {
        glpStringBufferAppendFormat(a1, "    ", v19, v20, v21, v22, v23, v24, v41);
        --v25;
      }

      while (v25);
    }

    Layout = glpGlobalTypeQualifierNodeGetLayout(a2);
    writeLayoutObject(a1, Layout, v27, v28, v29, v30, v31, v32);

    return glpStringBufferAppendFormat(a1, "\n", v33, v34, v35, v36, v37, v38, a9);
  }

  return result;
}

uint64_t writeLayoutPair(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(LayoutPair:", a3, a4, a5, a6, a7, a8, v41);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v42);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v43);
      --v23;
    }

    while (v23);
  }

  Identifier = glpLayoutPairNodeGetIdentifier(a2);
  glpStringBufferAppendString(a1, Identifier, v25);
  result = glpLayoutPairNodeGetValueKind(a2);
  if (result > 1)
  {
    if (result != 2)
    {
      if (result != 3)
      {
        goto LABEL_12;
      }

      glpLayoutPairNodeGetString(a2);
      v34 = v33;
      glpLayoutPairNodeGetString(a2);
      return glpStringBufferAppendFormat(a1, "=%.*s", v35, v36, v37, v38, v39, v40, v34);
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      Value = glpLayoutPairNodeGetValue(a2);
      return glpStringBufferAppendFormat(a1, "=%d", v27, v28, v29, v30, v31, v32, Value);
    }

LABEL_12:
    abort();
  }

  return result;
}

uint64_t writeExpressionStatement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(ExpressionStatement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

void *writeBlock(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(Block:", a3, a4, a5, a6, a7, a8, v26);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v27);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v28);
      --v23;
    }

    while (v23);
  }

  if (glpBlockNodeGetNeedsNewScope(a2))
  {
    v24 = "--new scope--\n";
  }

  else
  {
    v24 = "no new scope\n";
  }

  return glpStringBufferAppendCString(a1, v24);
}

uint64_t writeIfStatement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(IfStatement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeLoopStatement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(LoopStatement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeSwitchStatement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(SwitchStatement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeCaseStatement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(CaseStatement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeDefaultStatement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(DefaultStatement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeBreakStatement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(BreakStatement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeContinueStatement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(ContinueStatement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeDiscardStatement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(DiscardStatement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeReturnStatement(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(ReturnStatement:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeTopLevel(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(TopLevel:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeAvailabilityDeclaration(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(AvailabilityDeclaration:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

void *writeRawCall(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(RawCall:", a3, a4, a5, a6, a7, a8, v27);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v28);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v29);
      --v23;
    }

    while (v23);
  }

  v24 = glpRawCallNodeGetName(a2);
  glpStringBufferAppendString(a1, v24, v25);

  return glpStringBufferAppendCString(a1, "\n");
}

void *writeSubroutineRawCall(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(SubroutineRawCall:", a3, a4, a5, a6, a7, a8, v26);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v27);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v28);
      --v23;
    }

    while (v23);
  }

  v24 = glpSubroutineRawCallNodeGetExtra(a2);
  glpStringBufferAppendString(a1, *v24, v24[1]);

  return glpStringBufferAppendCString(a1, "\n");
}

uint64_t writeOffset(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(Offset:", a3, a4, a5, a6, a7, a8, v45);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v46);
  v17 = v8 + 1;
  Swizzle = glpOffsetNodeGetSwizzle(a2);
  if (Swizzle)
  {
    v49 = 0;
    v48 = 0;
    v25 = Swizzle & 7;
    if ((Swizzle & 7) != 0)
    {
      v26 = &v48;
      v27 = 3;
      v28 = Swizzle & 7;
      do
      {
        *v26 = aXyzw[(Swizzle >> v27) & 3];
        v26 = (v26 + 1);
        v27 += 2;
        --v28;
      }

      while (v28);
    }

    else
    {
      v25 = 0;
    }

    *(&v48 + v25) = 0;
    if (v8 != -1)
    {
      v29 = v8 + 1;
      do
      {
        glpStringBufferAppendFormat(a1, "    ", v19, v20, v21, v22, v23, v24, v47);
        --v29;
      }

      while (v29);
    }

    glpStringBufferAppendFormat(a1, ".%s\n", v19, v20, v21, v22, v23, v24, &v48);
  }

  result = glpOffsetNodeGetPreSwizzlePrimitiveType(a2);
  if (result)
  {
    v37 = result;
    if (v8 != -1)
    {
      do
      {
        glpStringBufferAppendFormat(a1, "    ", v31, v32, v33, v34, v35, v36, v47);
        --v17;
      }

      while (v17);
    }

    v38 = glpPrimitiveTypeToString(v37);
    return glpStringBufferAppendFormat(a1, "pre-swizzle type: %s\n", v39, v40, v41, v42, v43, v44, v38);
  }

  return result;
}

void *writeLValue(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(LValue:", a3, a4, a5, a6, a7, a8, v40);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v41);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v42);
      --v23;
    }

    while (v23);
  }

  glpLValueNodeGetVariableName(a2);
  v25 = v24;
  glpLValueNodeGetVariableName(a2);
  glpStringBufferAppendFormat(a1, "%.*s -> ", v26, v27, v28, v29, v30, v31, v25);
  VariableExtra = glpLValueNodeGetVariableExtra(a2);
  glpAppendVariableObjectDescription(a1, VariableExtra, v33, v34, v35, v36, v37, v38);

  return glpStringBufferAppendCString(a1, "\n");
}

uint64_t writeRValue(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(RValue:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writeIBPartialDeref(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  glpStringBufferAppendFormat(a1, "(IBPartialDeref:", a3, a4, a5, a6, a7, a8, v18);
  writeSAInfo(a1, a2);

  return glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, a9);
}

uint64_t writePPStreamOp(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(PPStreamOp:", a3, a4, a5, a6, a7, a8, v106);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v107);
  if (v8 == -1)
  {
    ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
    v40 = glpPrimitiveTypeToString(ReturnPrimitiveType);
    glpStringBufferAppendFormat(a1, "returnPrimitiveType: %s\n", v41, v42, v43, v44, v45, v46, v40);
  }

  else
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v108);
      --v23;
    }

    while (v23);
    v24 = glpPPStreamOpNodeGetReturnPrimitiveType(a2);
    v25 = glpPrimitiveTypeToString(v24);
    glpStringBufferAppendFormat(a1, "returnPrimitiveType: %s\n", v26, v27, v28, v29, v30, v31, v25);
    v38 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v32, v33, v34, v35, v36, v37, v109);
      --v38;
    }

    while (v38);
  }

  Opcode = glpPPStreamOpNodeGetOpcode(a2);
  glpStringBufferAppendFormat(a1, "opcode: %s\n", v48, v49, v50, v51, v52, v53, (&ppstreamOpString)[Opcode]);
  if (v8 == -1)
  {
    OpPrimitiveType = glpPPStreamOpNodeGetOpPrimitiveType(a2);
    v77 = glpPrimitiveTypeToString(OpPrimitiveType);
    glpStringBufferAppendFormat(a1, "opPrimitiveType: %s\n", v78, v79, v80, v81, v82, v83, v77);
  }

  else
  {
    v60 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v54, v55, v56, v57, v58, v59, v110);
      --v60;
    }

    while (v60);
    v61 = glpPPStreamOpNodeGetOpPrimitiveType(a2);
    v62 = glpPrimitiveTypeToString(v61);
    glpStringBufferAppendFormat(a1, "opPrimitiveType: %s\n", v63, v64, v65, v66, v67, v68, v62);
    v75 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v69, v70, v71, v72, v73, v74, v111);
      --v75;
    }

    while (v75);
  }

  HasSrctex = glpPPStreamOpNodeGetHasSrctex(a2);
  glpStringBufferAppendFormat(a1, "has_srctex: %d\n", v85, v86, v87, v88, v89, v90, HasSrctex);
  if (v8 != -1)
  {
    v97 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v91, v92, v93, v94, v95, v96, v112);
      --v97;
    }

    while (v97);
  }

  HasOffset = glpPPStreamOpNodeGetHasOffset(a2);
  return glpStringBufferAppendFormat(a1, "has_offset: %d\n", v99, v100, v101, v102, v103, v104, HasOffset);
}

void *writeSubroutineUniform(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  glpStringBufferAppendFormat(a1, "(SubroutineUniform:", a3, a4, a5, a6, a7, a8, v26);
  writeSAInfo(a1, a2);
  glpStringBufferAppendFormat(a1, "\n", v11, v12, v13, v14, v15, v16, v27);
  if (v8 != -1)
  {
    v23 = v8 + 1;
    do
    {
      glpStringBufferAppendFormat(a1, "    ", v17, v18, v19, v20, v21, v22, v28);
      --v23;
    }

    while (v23);
  }

  Extra = glpSubroutineUniformNodeGetExtra(a2);
  glpStringBufferAppendString(a1, *Extra, Extra[1]);

  return glpStringBufferAppendCString(a1, "\n");
}

uint64_t *writeSAInfo(uint64_t *a1, uint64_t a2)
{
  SaType = glpASTNodeGetSaType(a2);
  glpDumpTypeToStringBuffer(a1, SaType, v5, v6, v7, v8, v9, v10, v19);
  result = glpASTNodeGetSaFlags(a2);
  if (result)
  {
    glpStringBufferAppendFormat(a1, ";", v12, v13, v14, v15, v16, v17, v20);
    SaFlags = glpASTNodeGetSaFlags(a2);

    return glpAppendFlagDescription(a1, SaFlags);
  }

  return result;
}

uint64_t writeLayoutObject(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = glpStringBufferAppendFormat(a1, "layout:", a3, a4, a5, a6, a7, a8, v26);
  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = *v11;
      v13 = glpLayoutQualifierToString(*(v11 + 2));
      result = glpStringBufferAppendFormat(a1, "%s ", v14, v15, v16, v17, v18, v19, v13);
      if (*(v11 + 3) == 1)
      {
        result = glpStringBufferAppendFormat(a1, "= %d ", v20, v21, v22, v23, v24, v25, *(v11 + 4));
      }

      v11 = v12;
    }

    while (v12);
  }

  return result;
}

uint64_t phase2AddDef(uint64_t *a1, uint64_t a2)
{
  if (glpIsFunctionDefinitionNode(a2))
  {
    Prototype = glpFunctionDefinitionNodeGetPrototype(a2);
    Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
    v6 = glpPointerHashGet(a1[16], Extra);
    v7 = Prototype;
LABEL_3:
    glpFunctionPrototypeNodeSetExtra(v7, v6);
    if (glpPointerHashGet(a1[22], v6))
    {
      return 1;
    }

    v9 = a1[22];
    goto LABEL_5;
  }

  if (glpIsVariableDeclarationNode(a2))
  {
    v11 = glpVariableDeclarationNodeGetExtra(a2);
    v12 = glpPointerHashGet(a1[15], v11);
    glpVariableDeclarationNodeSetExtra(a2, v12);
    if (glpPointerHashGet(a1[21], v12))
    {
      return 1;
    }

    glpPointerHashPut(a1[21], v12, v12, v13);
    v10 = (*(v12 + 51) & 0x60) == 0;
    goto LABEL_10;
  }

  if (!glpIsInterfaceBlockNode(a2))
  {
    if (glpIsSubroutineUniformNode(a2))
    {
      v20 = glpSubroutineUniformNodeGetExtra(a2);
      if (glpStringHashGet(a1[20], *v20, *(v20 + 8)))
      {
        return 1;
      }

      glpStringHashPut(a1[20], *v20, *(v20 + 8), v20, v21);
      goto LABEL_6;
    }

    v22 = glpFunctionPrototypeNodeGetExtra(a2);
    v6 = glpPointerHashGet(a1[16], v22);
    v7 = a2;
    goto LABEL_3;
  }

  v6 = glpInterfaceBlockNodeGetExtra(a2);
  if (glpPointerHashGet(a1[23], v6))
  {
    return 1;
  }

  v9 = a1[23];
LABEL_5:
  glpPointerHashPut(v9, v6, v6, v8);
LABEL_6:
  v10 = 1;
LABEL_10:
  v14 = phase2Process(a1, a2);
  if (v14 == -1)
  {
    return 0;
  }

  v15 = v14;
  v16 = *a1;
  v17 = a1[19];
  if (v10)
  {
    DefCount = glpTopLevelNodeGetDefCount(v17);
  }

  else
  {
    DefCount = 0;
  }

  glpTopLevelNodeInsertDef(v16, v17, v15, DefCount);
  return 1;
}

uint64_t phase2Process(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    if (!glpASTNodeGetChildCount(a2))
    {
LABEL_6:
      switch(glpASTNodeGetKind(v2))
      {
        case 0u:
        case 1u:
        case 2u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x10u:
        case 0x11u:
        case 0x12u:
        case 0x13u:
        case 0x14u:
        case 0x15u:
        case 0x16u:
        case 0x17u:
        case 0x18u:
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
        case 0x23u:
        case 0x24u:
        case 0x25u:
        case 0x26u:
        case 0x27u:
        case 0x28u:
        case 0x29u:
        case 0x2Au:
        case 0x2Bu:
        case 0x2Fu:
        case 0x30u:
        case 0x31u:
        case 0x32u:
        case 0x33u:
        case 0x34u:
        case 0x35u:
        case 0x36u:
        case 0x37u:
        case 0x38u:
        case 0x3Au:
        case 0x3Bu:
        case 0x3Cu:
        case 0x3Du:
        case 0x3Eu:
        case 0x3Fu:
        case 0x40u:
        case 0x41u:
        case 0x42u:
        case 0x43u:
        case 0x44u:
        case 0x45u:
        case 0x46u:
        case 0x47u:
        case 0x48u:
        case 0x49u:
        case 0x4Au:
        case 0x4Bu:
        case 0x4Cu:
        case 0x4Du:
        case 0x50u:
        case 0x52u:
        case 0x53u:
        case 0x54u:
          return v2;
        case 3u:
          phase2ProcessConstant(a1, v2);
          return v2;
        case 0x2Cu:
          phase2ProcessParameterDeclaration(a1, v2);
          return v2;
        case 0x2Du:
          phase2ProcessFunctionPrototype(a1, v2);
          return v2;
        case 0x2Eu:
          phase2ProcessVariableDeclaration(a1, v2);
          return v2;
        case 0x39u:
          phase2ProcessInterfaceBlock(a1, v2);
          return v2;
        case 0x4Eu:

          return phase2ProcessRawCall(a1, v2);
        case 0x4Fu:

          return phase2ProcessSubroutineRawCall(a1, v2);
        case 0x51u:

          return phase2ProcessLValue(a1, v2);
        case 0x55u:

          return phase2ProcessSubroutineUniform(a1, v2);
        default:
          abort();
      }
    }

    v4 = 0;
    while (1)
    {
      Child = glpASTNodeGetChild(v2, v4);
      v6 = phase2Process(a1, Child);
      if (v6 == -1)
      {
        return -1;
      }

      glpASTNodeSetChild(v2, v4++, v6);
      if (v4 >= glpASTNodeGetChildCount(v2))
      {
        goto LABEL_6;
      }
    }
  }

  return v2;
}

uint64_t phase2ProcessConstant(uint64_t a1, uint64_t a2)
{
  SaFlags = glpASTNodeGetSaFlags(a2);
  Type = glpConstantNodeGetType(a2);
  Value = glpConstantNodeGetValue(a2);
  v7 = glpMergeRemapValue(a1, SaFlags, Type, Value);
  glpConstantNodeSetValue(a2, v7);
  return a2;
}

uint64_t phase2ProcessParameterDeclaration(uint64_t a1, uint64_t a2)
{
  Extra = glpParameterDeclarationNodeGetExtra(a2);
  v5 = glpPointerHashGet(*(a1 + 120), Extra);
  glpParameterDeclarationNodeSetExtra(a2, v5);
  lazyPrepareVariableObject(a1, v5);
  glpASTNodeSetSaType(a2, *v5);
  return a2;
}

uint64_t phase2ProcessFunctionPrototype(uint64_t a1, uint64_t a2)
{
  Extra = glpFunctionPrototypeNodeGetExtra(a2);
  v5 = glpPointerHashGet(*(a1 + 128), Extra);
  glpFunctionPrototypeNodeSetExtra(a2, v5);
  return a2;
}

uint64_t phase2ProcessVariableDeclaration(uint64_t a1, uint64_t a2)
{
  Extra = glpVariableDeclarationNodeGetExtra(a2);
  lazyPrepareVariableObject(a1, Extra);
  glpASTNodeSetSaType(a2, *Extra);
  return a2;
}

uint64_t phase2ProcessInterfaceBlock(uint64_t a1, uint64_t a2)
{
  Extra = glpInterfaceBlockNodeGetExtra(a2);
  v6 = *(**(Extra + 72) + 48);
  if ((v6 & 0x20000000) != 0)
  {
    v7 = 224;
  }

  else if ((v6 & 0x40000000) != 0)
  {
    v7 = 232;
  }

  else
  {
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_8;
    }

    v7 = 240;
  }

  glpStringHashPut(*(a1 + v7), *Extra, *(Extra + 8), Extra, v5);
LABEL_8:
  VariableObjectCount = glpInterfaceBlockObjectGetVariableObjectCount(Extra);
  if (VariableObjectCount)
  {
    v9 = 0;
    v10 = 8 * VariableObjectCount;
    do
    {
      lazyPrepareVariableObject(a1, *(*(Extra + 72) + v9));
      v9 += 8;
    }

    while (v10 != v9);
  }

  return a2;
}

uint64_t phase2ProcessRawCall(uint64_t a1, uint64_t a2)
{
  v4 = glpRawCallNodeGetExtra(a2);
  v5 = glpPointerHashGet(*(a1 + 128), v4);
  if (!v5)
  {
    v5 = glpStringHashGet(*(a1 + 48), *(v4 + 40), *(v4 + 48));
    if (v5)
    {
      glpPointerHashPut(*(a1 + 128), v4, v5, v6);
    }
  }

  glpRawCallNodeSetExtra(a2, v5);
  v7 = glpPointerHashGet(*(a1 + 96), v5);
  if (!v7)
  {
    v17 = *(a1 + 8);
    v18 = *(v4 + 24);
    v19 = *(a1 + 24);
    v20 = *(v4 + 32);
    v28 = "-1";
    v29 = 0xEDA00000002;
    v30 = 0xFFFFFFFFLL;
    glpLanguageToString(v19);
    glpLogMessage(v17, 0, &v28, "No definition of %.*s in %s shader", v21, v22, v23, v24, v20);
    return -1;
  }

  if (*(v5 + 128))
  {
    v8 = *(v4 + 24);
    v9 = *(v4 + 32);
    if (v9 >= 0x12)
    {
      v10 = 18;
    }

    else
    {
      v10 = v9;
    }

    v15 = strncmp("$SubroutineStatic$", v8, v10);
    v16 = *(a1 + 8);
    v28 = "-1";
    v29 = 0xEDA00000002;
    v30 = 0xFFFFFFFFLL;
    if (v15)
    {
      v27 = v9;
    }

    else
    {
      v27 = v9 - 18;
    }

    glpLogMessage(v16, 0, &v28, "Recursive function call to %.*s", v11, v12, v13, v14, v27);
    return -1;
  }

  *(v5 + 128) = 1;
  v25 = phase2AddDef(a1, v7);
  *(v5 + 128) = 0;
  if (v25)
  {
    return a2;
  }

  else
  {
    return -1;
  }
}

uint64_t phase2ProcessSubroutineRawCall(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = glpSubroutineRawCallNodeGetExtra(a2);
  v5 = glpPointerHashGet(a1[14], v4);
  if (!v5)
  {
    v18 = a1[1];
    v19 = *v4;
    v20 = *(a1 + 6);
    v21 = *(v4 + 8);
    v35 = "-1";
    v36 = 0xEDA00000002;
    v37 = 0xFFFFFFFFLL;
    glpLanguageToString(v20);
    glpLogMessage(v18, 0, &v35, "No definition of subroutine uniform %.*s in %s shader", v22, v23, v24, v25, v21);
    return -1;
  }

  v6 = v5;
  ElementType = *(v4 + 16);
  if (glpTypeGetKind(ElementType) == 2)
  {
    ElementType = glpArrayTypeGetElementType(ElementType);
  }

  v8 = *(a1 + 71);
  if (v8)
  {
    v9 = a1[36];
    v10 = *(a1 + 71);
    while (ElementType != *v9)
    {
      ++v9;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    v26 = a1[1];
    v27 = *v4;
    v28 = *(a1 + 6);
    v29 = *(v4 + 8);
    v35 = "-1";
    v36 = 0xEDA00000002;
    v37 = 0xFFFFFFFFLL;
    glpLanguageToString(v28);
    glpLogMessage(v26, 0, &v35, "Potentially recursive subroutine call through subroutine uniform %.*s in %s shader", v30, v31, v32, v33, v29);
    return -1;
  }

LABEL_8:
  v11 = v8 + 1;
  v12 = *(a1 + 70);
  if (v8 + 1 <= v12)
  {
    v16 = a1[36];
    v17 = *(a1 + 71);
  }

  else
  {
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = 2 * v12;
    if (v13 <= v11)
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = v13;
    }

    v15 = *a1;
    v16 = (*(*a1 + 8))(**a1, 8 * v14, "Vector Storage (GLPType *, growth)");
    memcpy(v16, a1[36], 8 * *(a1 + 71));
    (*(v15 + 24))(*v15, a1[36]);
    *(a1 + 70) = v14;
    a1[36] = v16;
    v17 = *(a1 + 71);
  }

  memmove(&v16[8 * v8 + 8], &v16[8 * v8], 8 * (v17 - v8));
  *(a1[36] + 8 * v8) = ElementType;
  ++*(a1 + 71);
  if (!phase2AddDef(a1, v6))
  {
    return -1;
  }

  memmove((a1[36] + 8 * v8), (a1[36] + 8 * v11), 8 * (*(a1 + 71) - v11));
  --*(a1 + 71);
  return v2;
}

uint64_t phase2ProcessLValue(void **a1, uint64_t a2)
{
  v2 = a2;
  v66 = *MEMORY[0x277D85DE8];
  VariableExtra = glpLValueNodeGetVariableExtra(a2);
  v5 = VariableExtra;
  if (*(a1 + 32))
  {
    v6 = *(VariableExtra + 8);
    if (v6)
    {
      if (glpLayoutObjectFind(v6, 82))
      {
        v11 = a1[1];
        v12 = *(v5 + 32);
        v13 = *(v5 + 40);
        v64.n128_u64[0] = "-1";
        v64.n128_u64[1] = 0xEDA00000002;
        v65 = 0xFFFFFFFFLL;
        glpLogMessage(v11, 0, &v64, "Built-in variable '%.*s' must be redeclared before use, with separate shader objects.", v7, v8, v9, v10, v13);
LABEL_8:
        v2 = -1;
        goto LABEL_32;
      }
    }
  }

  v14 = glpPointerHashGet(a1[15], v5);
  if (v14)
  {
    v15 = v14;
    glpLValueNodeSetVariableExtra(v2, v14);
    v16 = glpPointerHashGet(a1[11], v15);
    if (v16)
    {
      v5 = v15;
      if (!phase2AddDef(a1, v16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = v15;
    }
  }

  lazyPrepareVariableObject(a1, v5);
  if (*(v5 + 120))
  {
    Offset = glpDerefNodeGetOffset(v2);
    if (Offset && (v18 = Offset, (OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset)) != 0) && (v20 = OffsetExpr, glpIsConstantNode(OffsetExpr)))
    {
      Value = glpConstantNodeGetValue(v20);
      SaType = glpASTNodeGetSaType(v20);
      AsSize = glpValueGetAsSize(SaType, Value);
      if (glpOffsetNodeGetPreSwizzlePrimitiveType(v18))
      {
        PreSwizzlePrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(v18);
        PrimitiveType = glpGetPrimitiveType(PreSwizzlePrimitiveType);
      }

      else
      {
        PrimitiveType = glpASTNodeGetSaType(v2);
      }

      v32 = glpABIGetTypeSize(0, PrimitiveType, 0);
      Size = glpTypeSizeGetSize(v32);
      v34 = Size + AsSize;
      BitSetSetRangeEquals(*(v5 + 120), AsSize, Size + AsSize, 1);
      v35 = *(v5 + 128);
      if (v35 <= v34)
      {
        v35 = v34;
      }

      *(v5 + 128) = v35;
    }

    else
    {
      ElementType = *v5;
      if (glpTypeGetKind(*v5) == 3)
      {
        ElementType = glpBankTypeGetElementType(ElementType);
      }

      v27 = glpABIGetTypeSize(0, ElementType, 0);
      v28 = glpTypeSizeGetSize(v27);
      MEMORY[0x28223BE20](v28);
      v30 = (&v64 - v29);
      bzero(&v64 - v29, v31);
      glpTypeGetAppleVec4Types(ElementType, v30, 1, 0, 0, 0, *(v5 + 120), 0, 0);
      *(v5 + 128) = BitSetLastSetBit(*(v5 + 120)) + 1;
    }
  }

  v36 = glpDerefNodeGetOffset(v2);
  if (v36)
  {
    v37 = v36;
    BankIndex = glpOffsetNodeGetBankIndex(v36);
    glpTypeGetKind(*v5);
    if (BankIndex)
    {
      Bank = glpBankTypeGetBank(*v5);
      if ((Bank - 1) < 2 || Bank == 4)
      {
        glpBankTypeGetElementCount(*v5);
        v40 = glpBankTypeGetElementType(*v5);
        v41 = glpABIGetTypeSize(0, v40, 0);
        v42 = glpTypeSizeGetSize(v41);
        v43 = glpOffsetNodeGetOffsetExpr(v37);
        if (!v43)
        {
          IntConstantNode = makeIntConstantNode(a1, 0);
          v43 = phase2Process(a1, IntConstantNode);
        }

        v45 = makeIntConstantNode(a1, v42);
        v46 = phase2Process(a1, v45);
        v47 = glpGetPrimitiveType(5u);
        glpASTNodeSetSaType(v46, v47);
        glpASTNodeSetSaFlags(v46, 96);
        v48 = *a1;
        v64.n128_u64[0] = "-1";
        v64.n128_u64[1] = 0xEDA00000002;
        v65 = 0xFFFFFFFFLL;
        glpMakePPStreamOpNode(v48, &v64, 5, 34, 5, 0, 0);
        v50 = v49;
        glpCallNodeAddArg(*a1, v49, BankIndex);
        glpCallNodeAddArg(*a1, v50, v46);
        v51 = glpGetPrimitiveType(5u);
        glpASTNodeSetSaType(v50, v51);
        SaFlags = glpASTNodeGetSaFlags(BankIndex);
        v53 = glpASTNodeGetSaFlags(v46);
        glpASTNodeSetSaFlags(v50, v53 & SaFlags);
        v54 = glpConstantFold(*a1, a1[31], v50);
        v55 = *a1;
        v64.n128_u64[0] = "-1";
        v64.n128_u64[1] = 0xEDA00000002;
        v65 = 0xFFFFFFFFLL;
        glpMakePPStreamOpNode(v55, &v64, 5, 31, 5, 0, 0);
        v57 = v56;
        glpCallNodeAddArg(*a1, v56, v54);
        glpCallNodeAddArg(*a1, v57, v43);
        v58 = glpGetPrimitiveType(5u);
        glpASTNodeSetSaType(v57, v58);
        v59 = glpASTNodeGetSaFlags(v54);
        v60 = glpASTNodeGetSaFlags(v43);
        glpASTNodeSetSaFlags(v57, v60 & v59);
        v61 = glpConstantFold(*a1, a1[31], v57);
        glpOffsetNodeSetOffsetExpr(v37, v61);
        glpOffsetNodeSetBankIndex(v37, 0);
      }

      else if (!Bank)
      {
        abort();
      }
    }
  }

LABEL_32:
  v62 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t phase2ProcessSubroutineUniform(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Extra = glpSubroutineUniformNodeGetExtra(a2);
  ElementType = *(Extra + 16);
  if (glpTypeGetKind(ElementType) == 2)
  {
    ElementType = glpArrayTypeGetElementType(ElementType);
  }

  v6 = glpPointerHashGet(*(a1 + 144), ElementType);
  if (v6 && (v11 = v6, *(v6 + 4)))
  {
    v12 = 0;
    while (phase2AddDef(a1, *(*(v11 + 8) + 8 * v12)))
    {
      if (++v12 >= *(v11 + 4))
      {
        return v2;
      }
    }
  }

  else
  {
    v13 = *(a1 + 8);
    v14 = *Extra;
    v15 = *(Extra + 8);
    v17[0] = "-1";
    v17[1] = 0xEDA00000002;
    v17[2] = 0xFFFFFFFFLL;
    glpLogMessage(v13, 0, v17, "Subroutine uniform '%.*s' has no possible implementations", v7, v8, v9, v10, v15);
  }

  return -1;
}

uint64_t lazyPrepareVariableObject(uint64_t result, uint64_t a2)
{
  if (*(a2 + 128) || *(a2 + 120))
  {
    return result;
  }

  v3 = result;
  if (!*(result + 20) && *(result + 24) == 3 && (*(a2 + 51) & 0x20) != 0 && glpTypeGetKind(*a2) == 3)
  {
    v4 = *v3;
    ElementType = glpBankTypeGetElementType(*a2);
    *a2 = glpMakeBankType(v4, 1, ElementType, *(v3 + 28));
  }

  Kind = glpTypeGetKind(*a2);
  v7 = *a2;
  if (Kind == 3)
  {
    v8 = glpBankTypeGetElementType(v7);
    if (!glpTypeIsSized(v8))
    {
      v10 = *v3;
      v11 = glpArrayTypeGetElementType(v8);
      ArrayType = glpMakeArrayType(v10, v11, *(a2 + 100), -1);
      v13 = *v3;
      Bank = glpBankTypeGetBank(*a2);
      ElementCount = glpBankTypeGetElementCount(*a2);
      BankType = glpMakeBankType(v13, Bank, ArrayType, ElementCount);
LABEL_13:
      *a2 = BankType;
    }
  }

  else if (!glpTypeIsSized(v7))
  {
    v17 = *v3;
    v18 = glpArrayTypeGetElementType(*a2);
    BankType = glpMakeArrayType(v17, v18, *(a2 + 96), -1);
    goto LABEL_13;
  }

  v19 = *(a2 + 48);
  if (*(v3 + 24) == 4 && (*(a2 + 48) & 0x60000000) == 0x60000000)
  {
    glpStringHashPut(*(v3 + 192), *(a2 + 16), *(a2 + 24), a2, v9);
    goto LABEL_17;
  }

  if ((v19 & 0x20000000) != 0)
  {
    v24 = *(v3 + 192);
    v25 = *(a2 + 16);
    v26 = *(a2 + 24);
    goto LABEL_25;
  }

  if ((v19 & 0x40000000) != 0)
  {
LABEL_17:
    glpStringHashPut(*(v3 + 200), *(a2 + 16), *(a2 + 24), a2, v9);
    v20 = *(v3 + 216);
    v21 = apiName(*v3, a2);
    v23 = v22;
    v24 = v20;
    v25 = v21;
    v26 = v23;
LABEL_25:
    glpStringHashPut(v24, v25, v26, a2, v9);
    v27 = 0;
    goto LABEL_26;
  }

  if ((v19 & 0x100000000) != 0)
  {
    glpStringHashPut(*(v3 + 208), *(a2 + 16), *(a2 + 24), a2, v9);
LABEL_34:
    v27 = *(a2 + 88) != 0;
    goto LABEL_26;
  }

  if (glpTypeGetKind(*a2) == 2 || glpTypeGetKind(*a2) == 1)
  {
    goto LABEL_34;
  }

  v27 = 1;
LABEL_26:
  v28 = *a2;
  if (glpTypeGetKind(*a2) == 3)
  {
    v28 = glpBankTypeGetElementType(v28);
  }

  if (v27)
  {
    v29 = glpABIGetTypeSize(0, v28, 0);
    Size = glpTypeSizeGetSize(v29);
  }

  else
  {
    v31 = *v3;
    v32 = glpABIGetTypeSize(0, v28, 0);
    v33 = glpTypeSizeGetSize(v32);
    v34 = BitSetNewWithAllocator(v33, *v31, *(v31 + 8), *(v31 + 16), *(v31 + 24));
    Size = 0;
    *(a2 + 120) = v34;
  }

  *(a2 + 128) = Size;
  *(a2 + 64) = glpMergeRemapValue(v3, *(a2 + 48), *a2, *(a2 + 64));
  result = glpMergeRemapValue(v3, *(a2 + 48), *a2, *(a2 + 72));
  *(a2 + 72) = result;
  return result;
}

uint64_t apiName(void *a1, void *a2)
{
  v3 = a2[10];
  if (v3)
  {
    if (glpInterfaceBlockObjectGetVariableObjectCount(a2[10]))
    {
      v5 = 0;
      do
      {
        if (*(*(v3 + 72) + 8 * v5) == a2)
        {
          break;
        }

        ++v5;
      }

      while (v5 < glpInterfaceBlockObjectGetVariableObjectCount(v3));
    }

    else
    {
      LODWORD(v5) = 0;
    }

    ElementType = *(v3 + 64);
    if (glpTypeGetKind(ElementType) == 3)
    {
      ElementType = glpBankTypeGetElementType(ElementType);
    }

    FieldName = glpStructTypeGetFieldName(ElementType, v5);
    if (*(v3 + 32))
    {
      StringBuffer = glpMakeStringBuffer(a1);
      v17 = *v3;
      glpStringBufferAppendFormat(StringBuffer, "%.*s.%.*s", v10, v11, v12, v13, v14, v15, *(v3 + 8));
      return glpStringBufferGetString(StringBuffer);
    }
  }

  else
  {
    FieldName = a2[4];
    v7 = a2[5];
  }

  return FieldName;
}

uint64_t makeIntConstantNode(uint64_t *a1, uint64_t a2)
{
  PrimitiveType = glpGetPrimitiveType(5u);
  v5 = *a1;
  MutableValue = glpMakeMutableValue(v5, PrimitiveType, 1, v6, v7, v8, v9, v10, a2);
  v15.n128_u64[0] = "-1";
  v15.n128_u64[1] = 0xEDA00000002;
  v16 = 0xFFFFFFFFLL;
  glpMakeConstantNode(v5, &v15, PrimitiveType, MutableValue);
  v13 = v12;
  glpASTNodeSetSaType(v12, PrimitiveType);
  glpASTNodeSetSaFlags(v13, 96);
  return v13;
}

uint64_t checkBarrier(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a1)
  {
    return 1;
  }

  Body = a1;
  while (1)
  {
    Kind = glpASTNodeGetKind(Body);
    if (Kind >= 68)
    {
      break;
    }

    if (Kind == 51)
    {
      Prototype = glpFunctionDefinitionNodeGetPrototype(Body);
      result = checkBarrier(Prototype, a2, a3);
      if (!result)
      {
        return result;
      }

      v14 = glpFunctionDefinitionNodeGetPrototype(Body);
      Name = glpFunctionPrototypeNodeGetName(v14);
      if (glpStringsEqual("main", 0x83863A00000004uLL, Name, v16))
      {
        a2 = 1;
        *a3 = 1;
      }

      Body = glpFunctionDefinitionNodeGetBody(Body);
      goto LABEL_20;
    }

    if (Kind != 67)
    {
      goto LABEL_28;
    }

    Cond = glpIfStatementNodeGetCond(Body);
    result = checkBarrier(Cond, a2, a3);
    if (!result)
    {
      return result;
    }

    IfStatement = glpIfStatementNodeGetIfStatement(Body);
    result = checkBarrier(IfStatement, 0, a3);
    if (!result)
    {
      return result;
    }

    ElseStatement = glpIfStatementNodeGetElseStatement(Body);
LABEL_15:
    Body = ElseStatement;
    a2 = 0;
LABEL_20:
    if (!Body)
    {
      return 1;
    }
  }

  if (Kind <= 68)
  {
    Body0 = glpLoopStatementNodeGetBody0(Body);
    result = checkBarrier(Body0, 0, a3);
    if (!result)
    {
      return result;
    }

    ElseStatement = glpLoopStatementNodeGetBody1(Body);
    goto LABEL_15;
  }

  if (Kind == 69)
  {
    Expr = glpSwitchStatementNodeGetExpr(Body);
    result = checkBarrier(Expr, a2, a3);
    if (!result)
    {
      return result;
    }

    ElseStatement = glpSwitchStatementNodeGetBody(Body);
    goto LABEL_15;
  }

  if (Kind != 75)
  {
    if (Kind == 84 && glpPPStreamOpNodeGetOpcode(Body) == 170)
    {
      return a2 && *a3 != 0;
    }

LABEL_28:

    return genericCheckKidsBarrier(Body, a2, a3);
  }

  result = genericCheckKidsBarrier(Body, a2, a3);
  if (!result)
  {
    return result;
  }

  *a3 = 0;
  return 1;
}

uint64_t genericCheckKidsBarrier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!glpASTNodeGetChildCount(a1))
  {
    return 1;
  }

  v6 = 0;
  while (1)
  {
    Child = glpASTNodeGetChild(a1, v6);
    result = checkBarrier(Child, a2, a3);
    if (!result)
    {
      break;
    }

    if (++v6 >= glpASTNodeGetChildCount(a1))
    {
      return 1;
    }
  }

  return result;
}

uint64_t glpConstantValueFromDecomposedInitializer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Kind = glpASTNodeGetKind(a3);
  result = 0;
  if (Kind > 42)
  {
    if (Kind == 81)
    {
      Offset = glpDerefNodeGetOffset(a3);
      if (!Offset)
      {
        return glpLValueNodeGetVariableExtra(a3) == a1;
      }

      v26 = Offset;
      if (!glpOffsetNodeGetBankIndex(Offset) || (BankIndex = glpOffsetNodeGetBankIndex(v26), result = glpIsConstantNode(BankIndex), result))
      {
        if (!glpOffsetNodeGetVectorElementExpr(v26) || (VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v26), result = glpIsConstantNode(VectorElementExpr), result))
        {
          if (!glpOffsetNodeGetOffsetExpr(v26))
          {
            return glpLValueNodeGetVariableExtra(a3) == a1;
          }

          OffsetExpr = glpOffsetNodeGetOffsetExpr(v26);
          result = glpIsConstantNode(OffsetExpr);
          if (result)
          {
            return glpLValueNodeGetVariableExtra(a3) == a1;
          }
        }
      }
    }

    else
    {
      if (Kind != 43)
      {
        return result;
      }

      ExprCount = glpCommaExprNodeGetExprCount(a3);
      if (!ExprCount)
      {
        return 1;
      }

      v22 = ExprCount;
      v23 = 0;
      while (1)
      {
        Expr = glpCommaExprNodeGetExpr(a3, v23);
        result = glpConstantValueFromDecomposedInitializer(a1, a2, Expr);
        if (!result)
        {
          break;
        }

        if (v22 == ++v23)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    if (Kind == 3)
    {
      return 1;
    }

    if (Kind == 39)
    {
      Lhs = glpBinaryOperatorNodeGetLhs(a3);
      Rhs = glpBinaryOperatorNodeGetRhs(a3);
      result = glpIsLValueNode(Lhs);
      if (result)
      {
        if (glpLValueNodeGetVariableExtra(Lhs) != a1)
        {
          return 0;
        }

        result = glpIsConstantNode(Rhs);
        if (!result)
        {
          return result;
        }

        v10 = glpDerefNodeGetOffset(Lhs);
        if (!v10)
        {
          LODWORD(v13) = 0;
          goto LABEL_38;
        }

        v11 = v10;
        if (glpOffsetNodeGetBankIndex(v10) || glpOffsetNodeGetVectorElementExpr(v11))
        {
          return 0;
        }

        v12 = glpOffsetNodeGetOffsetExpr(v11);
        v13 = v12;
        if (!v12)
        {
LABEL_14:
          Swizzle = glpOffsetNodeGetSwizzle(v11);
          if ((Swizzle & 6) == 0)
          {
            v16 = Swizzle;
            if (Swizzle)
            {
              SaType = glpASTNodeGetSaType(Lhs);
              PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
              v19 = a2 + 16 * v13;
              v20 = (v16 >> 3) & 3;
              if (PrimitiveType <= 8)
              {
                if (PrimitiveType != 1 && PrimitiveType != 5)
                {
                  goto LABEL_45;
                }
              }

              else if (PrimitiveType != 9 && PrimitiveType != 36)
              {
                if (PrimitiveType == 62)
                {
                  *(v19 + 8 * v20) = *glpConstantNodeGetValue(Rhs);
                  return 1;
                }

LABEL_45:
                abort();
              }

              *(v19 + 4 * v20) = *glpConstantNodeGetValue(Rhs);
              return 1;
            }

LABEL_38:
            v30 = glpASTNodeGetSaType(Rhs);
            Value = glpConstantNodeGetValue(Rhs);
            glpCopyValueInto((a2 + 16 * v13), v30, Value);
            return 1;
          }

          return 0;
        }

        result = glpIsConstantNode(v12);
        if (result)
        {
          v14 = glpASTNodeGetSaType(v13);
          v13 = glpConstantNodeGetValue(v13);
          result = glpValueIsUsableAsSize(v14, v13);
          if (result)
          {
            LODWORD(v13) = glpValueGetAsSize(v14, v13);
            goto LABEL_14;
          }
        }
      }
    }
  }

  return result;
}

uint64_t glpConstantFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 + 1) < 2 || (glpASTNodeGetSaFlags(a3) & 0x80) != 0)
  {
    return a3;
  }

  switch(glpASTNodeGetKind(a3))
  {
    case 0u:

      return foldTypeConversion(a1, a2, a3);
    case 3u:

      return foldConstant(a1, a2, a3);
    case 0x10u:

      return foldNegate(a1, a2, a3);
    case 0x11u:
      v8 = a1;
      v9 = a2;
      v10 = a3;
      v11 = 10;
      goto LABEL_25;
    case 0x12u:
      v8 = a1;
      v9 = a2;
      v10 = a3;
      v11 = 132;
LABEL_25:

      result = foldUnaryOperator(v8, v9, v10, v11);
      break;
    case 0x27u:
      foldAssign(a3);
      return a3;
    case 0x2Bu:

      result = foldCommaExpr(a3);
      break;
    case 0x2Eu:

      result = foldVariableDeclaration(a1, a3);
      break;
    case 0x42u:

      result = foldBlock(a3);
      break;
    case 0x43u:

      result = foldIfStatement(a3);
      break;
    case 0x45u:
      foldSwitchStatement(a1, a3);
      return a3;
    case 0x51u:

      result = foldLValue(a1, a2, a3);
      break;
    case 0x52u:

      result = foldRValue(a1, a2, a3);
      break;
    case 0x54u:

      result = foldPPStreamOp(a1, a2, a3);
      break;
    default:
      SaFlags = glpASTNodeGetSaFlags(a3);
      glpASTNodeSetSaFlags(a3, SaFlags | 0x80);
      return a3;
  }

  return result;
}

uint64_t foldTypeConversion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ConstantNodeFromNodeAndMutableValue = a3;
  v34 = *MEMORY[0x277D85DE8];
  Expr = glpUnaryOperatorNodeGetExpr(a3);
  if (glpIsConstantNode(Expr))
  {
    SaType = glpASTNodeGetSaType(Expr);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    Value = glpConstantNodeGetValue(Expr);
    v10 = glpASTNodeGetSaType(ConstantNodeFromNodeAndMutableValue);
    v11 = glpPrimitiveTypeGetPrimitiveType(v10);
    v12 = glpASTNodeGetSaType(ConstantNodeFromNodeAndMutableValue);
    MutableValue = glpMakeMutableValue(a1, v12, 0, v13, v14, v15, v16, v17, v31);
    v32 = 0;
    v19 = glpASTNodeGetSaType(ConstantNodeFromNodeAndMutableValue);
    v20 = glpPrimitiveTypeGetPrimitiveType(v19);
    ScalarType = glpPrimitiveTypeGetScalarType(v20);
    if (ScalarType == 36)
    {
      v22 = 3;
    }

    else
    {
      v22 = 4;
    }

    if (ScalarType == 9)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    if (ScalarType == 5)
    {
      v24 = 2;
    }

    else
    {
      v24 = 4;
    }

    if (ScalarType == 1)
    {
      v24 = 0;
    }

    if (ScalarType <= 8)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    GLVMType = glpGLPTypeGetGLVMType(PrimitiveType);
    glvmChooseDestTypeConversion(v25, GLVMType, &v32);
    if ((v32 & 0x7C0000000000000) != 0)
    {
      memset(v33, 0, sizeof(v33));
      glpVecFromValue(v33, PrimitiveType, Value);
      glvmTypeConvertCF(v33, (v32 >> 54) & 0x1F);
      glpMutableValueFromVec(MutableValue, v11, v33);
    }

    else
    {
      v28 = glpASTNodeGetSaType(ConstantNodeFromNodeAndMutableValue);
      glpCopyValueInto(MutableValue, v28, Value);
    }

    ConstantNodeFromNodeAndMutableValue = glpMakeConstantNodeFromNodeAndMutableValue(a1, a2, ConstantNodeFromNodeAndMutableValue, MutableValue);
  }

  else
  {
    SaFlags = glpASTNodeGetSaFlags(ConstantNodeFromNodeAndMutableValue);
    glpASTNodeSetSaFlags(ConstantNodeFromNodeAndMutableValue, SaFlags | 0x80);
  }

  v29 = *MEMORY[0x277D85DE8];
  return ConstantNodeFromNodeAndMutableValue;
}

uint64_t foldConstant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SaType = glpASTNodeGetSaType(a3);
  Value = glpConstantNodeGetValue(a3);
  v13 = glpCopyValue(a1, SaType, Value, v8, v9, v10, v11, v12);

  return glpMakeConstantNodeFromNodeAndMutableValue(a1, a2, a3, v13);
}

uint64_t foldNegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ConstantNodeFromNodeAndMutableValue = a3;
  v27 = *MEMORY[0x277D85DE8];
  Expr = glpUnaryOperatorNodeGetExpr(a3);
  if (glpIsConstantNode(Expr))
  {
    SaType = glpASTNodeGetSaType(ConstantNodeFromNodeAndMutableValue);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    Category = glpPrimitiveTypeGetCategory(PrimitiveType);
    if ((Category - 1) >= 2)
    {
      if (Category == 3)
      {
        LODWORD(v11) = glpPrimitiveMatrixGetColumns(PrimitiveType);
        PrimitiveType = glpPrimitiveMatrixGetColumnType(PrimitiveType);
        ByteStride = glpPrimitiveTypeGetByteStride(PrimitiveType);
      }

      else
      {
        ByteStride = 0;
        LODWORD(v11) = 0;
      }
    }

    else
    {
      ByteStride = 0;
      LODWORD(v11) = 1;
    }

    Value = glpConstantNodeGetValue(Expr);
    v14 = glpASTNodeGetSaType(ConstantNodeFromNodeAndMutableValue);
    MutableValue = glpMakeMutableValue(a1, v14, 0, v15, v16, v17, v18, v19, *&v26[0]);
    GLVMType = glpGLPTypeGetGLVMType(PrimitiveType);
    memset(v26, 0, sizeof(v26));
    if (v11)
    {
      v22 = GLVMType;
      v23 = 0;
      v11 = v11;
      do
      {
        glpVecFromValue(v26, PrimitiveType, (Value + v23));
        glvmSourceNegateCF(0, v22, v26);
        glpMutableValueFromVec(&MutableValue[v23], PrimitiveType, v26);
        v23 += ByteStride;
        --v11;
      }

      while (v11);
    }

    ConstantNodeFromNodeAndMutableValue = glpMakeConstantNodeFromNodeAndMutableValue(a1, a2, ConstantNodeFromNodeAndMutableValue, MutableValue);
  }

  else
  {
    SaFlags = glpASTNodeGetSaFlags(ConstantNodeFromNodeAndMutableValue);
    glpASTNodeSetSaFlags(ConstantNodeFromNodeAndMutableValue, SaFlags | 0x80);
  }

  v24 = *MEMORY[0x277D85DE8];
  return ConstantNodeFromNodeAndMutableValue;
}

uint64_t foldAssign(uint64_t a1)
{
  Lhs = glpBinaryOperatorNodeGetLhs(a1);
  Rhs = glpBinaryOperatorNodeGetRhs(a1);
  if (!glpIsLValueNode(Lhs))
  {
    goto LABEL_6;
  }

  VariableExtra = glpLValueNodeGetVariableExtra(Lhs);
  v5 = *(VariableExtra + 104);
  if (!v5 || !glpIsConstantNode(Rhs) || !glpConstantValueFromDecomposedInitializer(VariableExtra, v5, a1))
  {
    *(VariableExtra + 104) = 0;
LABEL_6:
    SaFlags = glpASTNodeGetSaFlags(a1);
    glpASTNodeSetSaFlags(a1, SaFlags | 0x80);
  }

  return a1;
}

uint64_t foldCommaExpr(uint64_t a1)
{
  ChildCount = glpASTNodeGetChildCount(a1);
  if (!ChildCount)
  {
    return a1;
  }

  v3 = ChildCount;
  v4 = 0;
  v5 = 0;
  do
  {
    while (1)
    {
      Child = glpASTNodeGetChild(a1, v4);
      v7 = Child;
      if (!Child)
      {
        goto LABEL_8;
      }

      if (!v5)
      {
        break;
      }

      ++v4;
      v5 = 1;
      if (v4 == v3)
      {
        goto LABEL_10;
      }
    }

    v5 = (glpASTNodeGetSaFlags(Child) >> 7) & 1;
LABEL_8:
    ++v4;
  }

  while (v4 != v3);
  if (!v5)
  {
    return v7;
  }

LABEL_10:
  SaFlags = glpASTNodeGetSaFlags(a1);
  glpASTNodeSetSaFlags(a1, SaFlags | 0x80);
  return a1;
}

uint64_t foldVariableDeclaration(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Extra = glpVariableDeclarationNodeGetExtra(a2);
  Name = glpVariableDeclarationNodeGetName(v2);
  if (v6 && (v7 = Name, *Name == 36))
  {
    v8 = v6 < 9 || strncmp("$ib$", Name, 4uLL) || strncmp("$gl_", v7 + 5, 4uLL) != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(Extra + 64);
  Initializer = glpVariableDeclarationNodeGetInitializer(v2);
  if (v9)
  {
    v8 = 1;
  }

  if (!v8 || Initializer != 0)
  {
    v12 = Initializer;
    SaFlags = glpASTNodeGetSaFlags(v2);
    glpASTNodeSetSaFlags(v2, SaFlags | 0x80);
    if (v12)
    {
      v19 = v8;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      MutableValue = glpMakeMutableValue(a1, *Extra, 0, v14, v15, v16, v17, v18, v23);
      v21 = glpVariableDeclarationNodeGetInitializer(v2);
      if (glpConstantValueFromDecomposedInitializer(Extra, MutableValue, v21))
      {
        *(Extra + 64) = MutableValue;
        *(Extra + 72) = MutableValue;
        glpVariableDeclarationNodeSetInitializer(v2, 0);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t foldBlock(uint64_t a1)
{
  v1 = a1;
  if (!glpBlockNodeGetStatementCount(a1))
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    Statement = glpBlockNodeGetStatement(v1, v2);
    if (Statement)
    {
      if ((glpASTNodeGetSaFlags(Statement) & 0x80) != 0)
      {
        break;
      }
    }

    if (++v2 >= glpBlockNodeGetStatementCount(v1))
    {
      return 0;
    }
  }

  SaFlags = glpASTNodeGetSaFlags(v1);
  glpASTNodeSetSaFlags(v1, SaFlags | 0x80);
  return v1;
}

uint64_t foldIfStatement(uint64_t a1)
{
  Cond = glpIfStatementNodeGetCond(a1);
  if (glpIsConstantNode(Cond))
  {
    if (*glpConstantNodeGetValue(Cond))
    {

      return glpIfStatementNodeGetIfStatement(a1);
    }

    else
    {

      return glpIfStatementNodeGetElseStatement(a1);
    }
  }

  else
  {
    SaFlags = glpASTNodeGetSaFlags(a1);
    glpASTNodeSetSaFlags(a1, SaFlags | 0x80);
    return a1;
  }
}

uint64_t foldSwitchStatement(uint64_t a1, uint64_t a2)
{
  if (!glpSwitchStatementNodeGetBody(a2))
  {
    glpASTNodeGetLocation(a2, &v7);
    glpMakeBlockNode(a1, &v7, 0);
    glpSwitchStatementNodeSetBody(a2, v4);
  }

  SaFlags = glpASTNodeGetSaFlags(a2);
  glpASTNodeSetSaFlags(a2, SaFlags | 0x80);
  return a2;
}

uint64_t foldLValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VariableExtra = glpLValueNodeGetVariableExtra(a3);
  v7 = VariableExtra[8];
  if (v7)
  {
    v8 = *VariableExtra;

    return foldDerefNode(a1, a2, a3, v7, v8);
  }

  else
  {
    SaFlags = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(a3, SaFlags | 0x80);
    return a3;
  }
}

uint64_t foldRValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Base = glpRValueNodeGetBase(a3);
  if (glpIsConstantNode(Base))
  {
    Value = glpConstantNodeGetValue(Base);
    Type = glpConstantNodeGetType(Base);

    return foldDerefNode(a1, a2, a3, Value, Type);
  }

  else
  {
    SaFlags = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(a3, SaFlags | 0x80);
    return a3;
  }
}

uint64_t foldPPStreamOp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = *MEMORY[0x277D85DE8];
  ReturnPrimitiveType = glpPPStreamOpNodeGetReturnPrimitiveType(a3);
  Opcode = glpPPStreamOpNodeGetOpcode(a3);
  OpPrimitiveType = glpPPStreamOpNodeGetOpPrimitiveType(a3);
  HasSrctex = glpPPStreamOpNodeGetHasSrctex(a3);
  ChildCount = glpASTNodeGetChildCount(a3);
  v10 = ChildCount;
  MEMORY[0x28223BE20](ChildCount);
  v12 = (&v68 - v11);
  bzero(&v68 - v11, v13);
  v14 = v10;
  if (HasSrctex)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10 >= 5;
  }

  v16 = !v15;
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      Child = glpASTNodeGetChild(a3, i);
      v12[i] = Child;
      if (!glpIsConstantNode(Child))
      {
        v16 = 0;
      }
    }

    if (v16)
    {
      goto LABEL_13;
    }
  }

  else if (v16)
  {
LABEL_13:
    v19 = 1;
    goto LABEL_57;
  }

  v19 = 0;
  if (Opcode > 0x22 || ((1 << Opcode) & 0x580000000) == 0)
  {
LABEL_57:
    if (!ReturnPrimitiveType)
    {
      v19 = 0;
    }

    if (OpPrimitiveType)
    {
      v36 = v19;
    }

    else
    {
      v36 = 0;
    }

    if (Opcode - 78 <= 0x28 && ((1 << (Opcode - 78)) & 0x18000000001) != 0 || Opcode == 11)
    {
      goto LABEL_73;
    }

    if (Opcode != 34)
    {
      goto LABEL_70;
    }

    goto LABEL_66;
  }

  v68 = a1;
  v69 = a2;
  v20 = *v12;
  SaType = glpASTNodeGetSaType(*v12);
  v22 = v12[1];
  v23 = glpASTNodeGetSaType(v22);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
  v25 = glpPrimitiveTypeGetPrimitiveType(v23);
  IsConstantNode = glpIsConstantNode(v20);
  v28 = PrimitiveType == 5 || PrimitiveType == 36;
  v29 = IsConstantNode && v28;
  v30 = glpIsConstantNode(v22);
  v32 = v25 == 5 || v25 == 36;
  v33 = v30 && v32;
  if (v29)
  {
    Value = glpConstantNodeGetValue(v20);
    if (!v33)
    {
LABEL_37:
      v35 = 0;
      goto LABEL_40;
    }
  }

  else
  {
    Value = 0;
    if (!v33)
    {
      goto LABEL_37;
    }
  }

  v35 = glpConstantNodeGetValue(v22);
LABEL_40:
  if (Opcode == 31)
  {
    if (Value && !*Value)
    {
      goto LABEL_74;
    }

LABEL_54:
    if (v35)
    {
      v22 = v20;
      if (!*v35)
      {
        goto LABEL_74;
      }
    }

    goto LABEL_56;
  }

  if (Opcode == 32)
  {
    goto LABEL_54;
  }

  if (Opcode != 34)
  {
LABEL_56:
    v19 = 0;
    a1 = v68;
    a2 = v69;
    goto LABEL_57;
  }

  if (Value && !*Value || v35 && !*v35)
  {
    v60 = glpGetPrimitiveType(ReturnPrimitiveType);
    v61 = v68;
    MutableValue = glpMakeMutableValue(v68, v60, 0, v62, v63, v64, v65, v66, v68);
    glpPrimitiveTypeGetScalarCount(ReturnPrimitiveType);
    v67 = *MEMORY[0x277D85DE8];
    v56 = v69;
    v55 = v61;
    goto LABEL_76;
  }

  if (Value && *Value == 1 || v35 && (v22 = v20, *v35 == 1))
  {
LABEL_74:
    v58 = *MEMORY[0x277D85DE8];
    return v22;
  }

  v36 = 0;
  a1 = v68;
  a2 = v69;
LABEL_66:
  v37 = glpCallNodeGetArg(a3, 0);
  v38 = glpASTNodeGetSaType(v37);
  v39 = glpCallNodeGetArg(a3, 1u);
  v40 = glpASTNodeGetSaType(v39);
  v41 = glpPrimitiveTypeGetPrimitiveType(v38);
  Category = glpPrimitiveTypeGetCategory(v41);
  v43 = glpPrimitiveTypeGetPrimitiveType(v40);
  v44 = glpPrimitiveTypeGetCategory(v43);
  if (Category == 3 && (v44 & 0xFFFFFFFE) == 2 || Category == 2 && v44 == 3)
  {
    goto LABEL_73;
  }

LABEL_70:
  if (Opcode - 171 < 4 || !v36)
  {
LABEL_73:
    SaFlags = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(a3, SaFlags | 0x80);
    v22 = a3;
    goto LABEL_74;
  }

  v45 = glpGetPrimitiveType(ReturnPrimitiveType);
  MutableValue = glpMakeMutableValue(a1, v45, 0, v46, v47, v48, v49, v50, v68);
  v52 = glpGetPrimitiveType(OpPrimitiveType);
  v53 = glpGetPrimitiveType(ReturnPrimitiveType);
  glvmOp(Opcode, v52, v14, v12, MutableValue, v53);
  v54 = *MEMORY[0x277D85DE8];
  v55 = a1;
  v56 = a2;
LABEL_76:

  return glpMakeConstantNodeFromNodeAndMutableValue(v55, v56, a3, MutableValue);
}

uint64_t glpGLPTypeGetGLVMType(uint64_t a1)
{
  ScalarType = glpPrimitiveTypeGetScalarType(a1);
  if (ScalarType == 36)
  {
    v2 = 8;
  }

  else
  {
    v2 = 16;
  }

  if (ScalarType == 9)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2;
  }

  if (ScalarType == 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = 16;
  }

  if (ScalarType == 1)
  {
    v4 = 4;
  }

  if (ScalarType <= 8)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t glpVecFromValue(int *a1, uint64_t a2, const void *a3)
{
  BytesPerComponent = glpPrimitiveTypeGetBytesPerComponent(a2);
  ScalarCount = glpPrimitiveTypeGetScalarCount(a2);
  memcpy(a1, a3, ScalarCount * BytesPerComponent);
  result = glpPrimitiveTypeGetScalarType(a2);
  if (result == 9 && ScalarCount)
  {
    v9 = ScalarCount;
    do
    {
      if (*a1)
      {
        v10 = -1;
      }

      else
      {
        v10 = 0;
      }

      *a1++ = v10;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t glpMutableValueFromVec(_DWORD *a1, uint64_t a2, const void *a3)
{
  BytesPerComponent = glpPrimitiveTypeGetBytesPerComponent(a2);
  ScalarCount = glpPrimitiveTypeGetScalarCount(a2);
  memcpy(a1, a3, ScalarCount * BytesPerComponent);
  result = glpPrimitiveTypeGetScalarType(a2);
  if (result == 9 && ScalarCount)
  {
    v9 = ScalarCount;
    do
    {
      *a1 = *a1 != 0;
      ++a1;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t glpMakeConstantNodeFromNodeAndMutableValue(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  glpASTNodeGetLocation(a3, &v16);
  SaType = glpASTNodeGetSaType(a3);
  v9 = glpASTNodeGetSaType(a3);
  v10 = glpRemapValue(a2, v9, a4);
  glpMakeConstantNode(a1, &v16, SaType, v10);
  v12 = v11;
  v13 = glpASTNodeGetSaType(a3);
  glpASTNodeSetSaType(v12, v13);
  SaFlags = glpASTNodeGetSaFlags(a3);
  glpASTNodeSetSaFlags(v12, SaFlags);
  return v12;
}

uint64_t foldUnaryOperator(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  Expr = glpUnaryOperatorNodeGetExpr(a3);
  if (glpIsConstantNode(Expr))
  {
    SaType = glpASTNodeGetSaType(a3);
    MutableValue = glpMakeMutableValue(a1, SaType, 0, v9, v10, v11, v12, v13, v17);
    glvmOp(a4, SaType, 1, &Expr, MutableValue, SaType);

    return glpMakeConstantNodeFromNodeAndMutableValue(a1, a2, a3, MutableValue);
  }

  else
  {
    SaFlags = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(a3, SaFlags | 0x80);
    return a3;
  }
}

uint64_t glvmOp(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5, uint64_t a6)
{
  v70 = a5;
  v68 = a1;
  v79 = *MEMORY[0x277D85DE8];
  Constants = glvmGetConstants();
  MEMORY[0x28223BE20](Constants);
  v10 = (4 * a3 + 15) & 0x7FFFFFFF0;
  v11 = &v65 - v10;
  bzero(&v65 - v10, 4 * a3);
  MEMORY[0x28223BE20](v12);
  v13 = &v65 - v10;
  bzero(&v65 - v10, 4 * a3);
  v75 = a4;
  if (a3)
  {
    v76 = a2;
    v14 = 0;
    v15 = a3;
    v16 = (&v65 - v10);
    v17 = v11;
    do
    {
      v18 = *a4++;
      Type = glpConstantNodeGetType(v18);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(Type);
      *v17++ = PrimitiveType;
      ScalarCount = glpPrimitiveTypeGetScalarCount(PrimitiveType);
      *v16++ = ScalarCount;
      if (v14 <= ScalarCount)
      {
        v14 = ScalarCount;
      }

      --v15;
    }

    while (v15);
    v77.i32[0] = 0;
    v78.i32[0] = 0;
    v74 = v13;
    v22 = 0;
    v77.i32[3] = 0;
    *(v77.i64 + 4) = 0;
    *(v78.i64 + 4) = 0;
    v78.i32[3] = 0;
    do
    {
      v23 = *&v11[v22 * 4];
      v77.i32[v22] = glpPrimitiveTypeGetScalarCount(v23) - 1;
      v78.i32[v22++] = glpGLPTypeGetGLVMType(v23);
    }

    while (a3 != v22);
    v24.i64[0] = 0x1F0000001FLL;
    v24.i64[1] = 0x1F0000001FLL;
    v25 = vandq_s8(v78, v24);
    v26.i64[0] = v25.u32[0];
    v26.i64[1] = v25.u32[1];
    v27 = v26;
    v26.i64[0] = v25.u32[2];
    v26.i64[1] = v25.u32[3];
    v28 = vandq_s8(vshlq_u32(v77, xmmword_23A29D3B0), xmmword_23A29D3C0);
    v29 = vorrq_s8(vshlq_u64(v27, xmmword_23A29D3A0), vshlq_u64(v26, xmmword_23A29D390));
    *v27.i8 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
    v26.i64[0] = v27.u32[0];
    v26.i64[1] = v27.u32[1];
    v30 = vorrq_s8(v29, v26);
    v31 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
    v13 = v74;
    a2 = v76;
  }

  else
  {
    v14 = 0;
    v31 = 0;
  }

  v32 = v75;
  if (a6)
  {
    v33 = glpPrimitiveTypeGetPrimitiveType(a6);
    v31 = v31 & 0xE0FFFFFFFFFFFFFFLL | (glpGLPTypeGetGLVMType(v33) << 56);
  }

  v69 = a6;
  v34 = glpPrimitiveTypeGetPrimitiveType(a6);
  v35 = glpPrimitiveTypeGetScalarCount(v34);
  v36 = v31 & 0xFFFFFFFFFFFFFF0FLL | 0x10;
  if (v35 == 4)
  {
    v36 = v31 | 0xF0;
  }

  if (v35 == 3)
  {
    v36 = v31 & 0xFFFFFFFFFFFFFF0FLL | 0x70;
  }

  if (v35 == 2)
  {
    v37 = v31 & 0xFFFFFFFFFFFFFF0FLL | 0x30;
  }

  else
  {
    v37 = v36;
  }

  v38 = glpPrimitiveTypeGetPrimitiveType(a2);
  v39 = glpPrimitiveTypeGetScalarCount(v38);
  v40 = v37 & 0xFFFFFFFFFF87FFFFLL | ((v39 << 19) + 1572864) & 0x180000;
  MEMORY[0x28223BE20](v39);
  v41 = (&v65 - 16 * a3) & 0xFFFFFFFFFFFFFFE0;
  bzero(v41, v42);
  v66 = a3;
  if (a3)
  {
    v76 = a3;
    v46 = 0;
    v74 = ((v14 << 17) + 393216) & 0x60000;
    v73 = ((v14 << 15) + 98304) & 0x18000;
    v72 = ((v14 << 13) + 24576) & 0x6000;
    v71 = ((v14 << 11) + 6144) & 0x1800;
    do
    {
      Value = glpConstantNodeGetValue(v32[v46]);
      v48 = v11;
      v49 = *&v11[4 * v46];
      v50 = (v41 + (v46 << 7));
      glpVecFromValue(v50, v49, Value);
      v51 = v13;
      v52 = *&v13[4 * v46];
      if (v52 < v14)
      {
        v53 = v41;
        v54 = v40;
        v55 = v52 - 1;
        do
        {
          BytesPerComponent = glpPrimitiveTypeGetBytesPerComponent(v49);
          memcpy(v50 + BytesPerComponent * v52++, v50 + BytesPerComponent * v55, BytesPerComponent);
        }

        while (v14 != v52);
        v57 = v54 & 0xFFFFFFFFFFFE7FFFLL | v73;
        v58 = v54 & 0xFFFFFFFFFFF9FFFFLL | v74;
        if (v46 != 3)
        {
          v58 = v54;
        }

        if (v46 != 2)
        {
          v57 = v58;
        }

        v59 = v54 & 0xFFFFFFFFFFFFE7FFLL | v71;
        v60 = v54 & 0xFFFFFFFFFFFF9FFFLL | v72;
        if (v46 != 1)
        {
          v60 = v54;
        }

        if (v46)
        {
          v59 = v60;
        }

        if (v46 <= 1)
        {
          v40 = v59;
        }

        else
        {
          v40 = v57;
        }

        v41 = v53;
        v32 = v75;
      }

      ++v46;
      v13 = v51;
      v11 = v48;
    }

    while (v46 != v76);
  }

  memset(&v77, 0, 128);
  v61 = v69;
  switch(v68)
  {
    case 2:
      glvmOperationABS(Constants, v41, &v77, v40);
      break;
    case 3:
      glvmOperationCEI(Constants, v41, &v77, v40, 0);
      break;
    case 4:
      glvmOperationFRC(Constants, v41, v77.i64, v40);
      break;
    case 5:
      glvmOperationFLR(Constants, v41, &v77, v40, 0);
      break;
    case 6:
    case 80:
    case 81:
      glvmOperationZERO(Constants, &v77, v40);
      break;
    case 7:
      glvmOperationSSG(0, Constants, v41, v77.i64, v40);
      break;
    case 8:
      glvmOperationANY(0, Constants, v41, &v77, v40);
      break;
    case 9:
      glvmOperationALL(0, Constants, v41, &v77, v40);
      break;
    case 10:
      glvmOperationNOT(Constants, v41, &v77);
      break;
    case 11:
      glvmOperationNSE(Constants, v41, v77.i32, v40);
      break;
    case 12:
      glvmOperationSQT(Constants, v41, v77.i64, v40);
      break;
    case 16:
      glvmOperationEX2(Constants, v41, &v77, v40);
      break;
    case 18:
      glvmOperationLEN(Constants, v41, v77.i64, v40, 0, v43.f64[0], v44.f64[0], v45.f64[0]);
      break;
    case 19:
      glvmOperationLG2(Constants, v41, &v77, v40);
      break;
    case 21:
      glvmOperationNRM(Constants, v41, v77.i64, v40, 0);
      break;
    case 22:
      glvmOperationRAD(Constants, v41, &v77);
      break;
    case 23:
      glvmOperationDEG(Constants, v41, &v77);
      break;
    case 25:
      glvmOperationSIN(Constants, v41, &v77, v40);
      break;
    case 26:
      glvmOperationCOS(Constants, v41, &v77);
      break;
    case 27:
      glvmOperationTAN(Constants, v41, &v77);
      break;
    case 28:
      glvmOperationASN(Constants, v41, &v77);
      break;
    case 29:
      glvmOperationACS(Constants, v41, &v77);
      break;
    case 30:
      if (v66 == 2)
      {
        glvmOperationATN2(Constants, v41, (v41 + 128), &v77);
      }

      else
      {
        glvmOperationATN(Constants, v41, &v77);
      }

      break;
    case 31:
      glvmOperationADD(Constants, v41, v41 + 128, &v77, v40);
      break;
    case 32:
      glvmOperationSUB(Constants, v41, v41 + 128, &v77, v40);
      break;
    case 33:
      glvmOperationMOD(Constants, v41, v41 + 128, &v77, v40);
      break;
    case 34:
      glvmOperationMUL(Constants, v41, v41 + 128, &v77, v40);
      break;
    case 35:
      glvmOperationMLC(Constants, v41, v41 + 128, &v77, v40);
      break;
    case 36:
      glvmOperationANL(Constants, v41, (v41 + 128), &v77);
      break;
    case 37:
      glvmOperationORL(Constants, v41, (v41 + 128), &v77);
      break;
    case 38:
      glvmOperationXRL(Constants, v41, (v41 + 128), &v77);
      break;
    case 39:
      glvmOperationDOT(0.0, Constants, v41, v41 + 128, &v77, v40);
      break;
    case 44:
      glvmOperationMIN(Constants, v41, (v41 + 128), &v77, v40);
      break;
    case 45:
      glvmOperationMAX(Constants, v41, (v41 + 128), &v77, v40);
      break;
    case 46:
      glvmOperationXPD(Constants, v41, v41 + 128, &v77, v40);
      break;
    case 47:
      glvmOperationRFL(0, v43.f64[0], v44.f64[0], v45.f64[0], Constants, v41, v41 + 128, &v77, v40);
      break;
    case 49:
      glvmOperationSEQ(0, Constants, v41, v41 + 128, &v77, v40);
      break;
    case 50:
      glvmOperationSGE(Constants, v41, v41 + 128, &v77, v40);
      break;
    case 51:
      glvmOperationSGT(Constants, v41, v41 + 128, &v77, v40);
      break;
    case 52:
      glvmOperationSLE(Constants, v41, v41 + 128, &v77, v40);
      break;
    case 53:
      glvmOperationSLT(Constants, v41, v41 + 128, &v77, v40);
      break;
    case 54:
      glvmOperationSNE(0, Constants, v41, v41 + 128, &v77, v40);
      break;
    case 56:
      glvmOperationPOW(Constants, v41, (v41 + 128), &v77, v40);
      break;
    case 58:
      glvmOperationDIV(0, Constants, v41, v41 + 128, &v77, v40);
      break;
    case 59:
      glvmOperationFFW(0, v43, v44, v45, Constants, v41, v41 + 128, v41 + 256, &v77, v40);
      break;
    case 60:
      glvmOperationLRP(Constants, v41, (v41 + 128), (v41 + 256), &v77, v40);
      break;
    case 61:
      glvmOperationCLM(Constants, v41, (v41 + 128), (v41 + 256), &v77, v40);
      break;
    case 63:
      glvmOperationMAD(Constants, v41, (v41 + 128), (v41 + 256), &v77, v40);
      break;
    case 64:
      glvmOperationSMS(Constants, v41, (v41 + 128), (v41 + 256), &v77, v40);
      break;
    case 92:
      glvmOperationPK2H(Constants, v41, &v77);
      break;
    case 93:
      glvmOperationPK2US(Constants, v41, &v77);
      break;
    case 94:
      glvmOperationPK4B(Constants, v41, &v77);
      break;
    case 95:
      glvmOperationPK4UB(Constants, v41, &v77);
      break;
    case 100:
      glvmOperationUP2H(Constants, v41, v77.i32);
      break;
    case 101:
      glvmOperationUP2US(0.0, Constants, v41, &v77);
      break;
    case 102:
      glvmOperationUP4B(0, Constants, v41, &v77);
      break;
    case 103:
      glvmOperationUP4UB(0.0, Constants, v41, &v77);
      break;
    case 105:
      glvmOperationRFR(Constants, v41, v41 + 128, (v41 + 256), &v77, v40, 0);
      break;
    case 112:
      glvmOperationEXPE(Constants, v41, &v77, v40);
      break;
    case 113:
      glvmOperationLOGE(Constants, v41, &v77, v40);
      break;
    case 123:
      glvmOperationROUND(Constants, v41, &v77, v40);
      break;
    case 124:
      glvmOperationTRUNCATE(Constants, v41, &v77, v40);
      break;
    case 125:
      glvmOperationAND(Constants, v41, (v41 + 128), &v77);
      break;
    case 126:
      glvmOperationOR(Constants, v41, (v41 + 128), &v77);
      break;
    case 127:
      glvmOperationXOR(Constants, v41, (v41 + 128), &v77);
      break;
    case 128:
      glvmOperationSHL(Constants, v41, (v41 + 128), &v77);
      break;
    case 129:
      glvmOperationSHR(Constants, v41, (v41 + 128), &v77, v40);
      break;
    case 132:
      glvmOperationCOMP(Constants, v41, &v77);
      break;
    case 133:
      glvmOperationDISTANCE(Constants, v41, (v41 + 128), v77.i64, v40, 0);
      break;
    case 134:
      glvmOperationINVERSESQRT(Constants, v41, &v77, v40);
      break;
    case 137:
      glvmOperationROUNDEVEN(Constants, v41, v77.i64, v40);
      break;
    case 138:
      glvmOperationISNAN(Constants, v41, &v77, v40);
      break;
    case 139:
      glvmOperationISINF(Constants, v41, &v77, v40);
      break;
    case 144:
      glvmOperationSINH(Constants, v41, v77.i32);
      break;
    case 145:
      glvmOperationCOSH(Constants, v41, v77.i32);
      break;
    case 146:
      glvmOperationTANH(Constants, v41, v77.i32);
      break;
    case 147:
      glvmOperationASINH(Constants, v41, v77.i32);
      break;
    case 148:
      glvmOperationACOSH(Constants, v41, v77.i32);
      break;
    case 149:
      glvmOperationATANH(Constants, v41, v77.i32);
      break;
    case 150:
      glvmOperationTO_BITS(Constants, v41, &v77);
      break;
    case 151:
      glvmOperationFROM_BITS(Constants, v41, &v77);
      break;
    case 154:
      glvmOperationEXTRACT_EXPONENT(Constants, v41, &v77, v40);
      break;
    case 155:
      glvmOperationEXTRACT_SIGNIFICAND(Constants, v41, &v77, v40);
      break;
    case 156:
      glvmOperationLDEXP(Constants, v41, (v41 + 128), &v77, v40);
      break;
    case 157:
      glvmOperationPK2W(Constants, v41, &v77);
      break;
    case 158:
      glvmOperationUP2W(Constants, v41, &v77);
      break;
    case 159:
      glvmOperationMUL_HB(Constants, v41, (v41 + 128), &v77, v40);
      break;
    case 160:
      glvmOperationBITFIELD_REVERSE(Constants, v41, &v77);
      break;
    case 161:
      glvmOperationBITCOUNT(Constants, v41, &v77);
      break;
    case 162:
      glvmOperationFIND_LSB(Constants, v41, &v77);
      break;
    case 163:
      glvmOperationFIND_MSB(Constants, v41, v77.i32, v40);
      break;
    default:
      break;
  }

  v62 = glpPrimitiveTypeGetPrimitiveType(v61);
  result = glpMutableValueFromVec(v70, v62, &v77);
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t foldDerefNode(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  Offset = glpDerefNodeGetOffset(a3);
  VectorElementExpr = Offset;
  if (Offset)
  {
    v11 = glpOffsetNodeGetBankIndex(Offset) == 0;
    OffsetExpr = glpOffsetNodeGetOffsetExpr(VectorElementExpr);
    Swizzle = glpOffsetNodeGetSwizzle(VectorElementExpr);
    VectorElementExpr = glpOffsetNodeGetVectorElementExpr(VectorElementExpr);
  }

  else
  {
    Swizzle = 0;
    OffsetExpr = 0;
    v11 = 1;
  }

  v14 = glpDerefNodeGetOffset(a3);
  SaType = glpASTNodeGetSaType(a3);
  if (!glpTypeGetKind(SaType) && v14 && glpOffsetNodeGetPreSwizzlePrimitiveType(v14))
  {
    PreSwizzlePrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(v14);
    SaType = glpGetPrimitiveType(PreSwizzlePrimitiveType);
  }

  if (!v11)
  {
    goto LABEL_27;
  }

  if (OffsetExpr)
  {
    if (!glpIsConstantNode(OffsetExpr))
    {
      goto LABEL_27;
    }

    Value = glpConstantNodeGetValue(OffsetExpr);
    Type = glpConstantNodeGetType(OffsetExpr);
    if (!glpValueIsUsableAsSize(Type, Value))
    {
      goto LABEL_27;
    }

    AsSize = glpValueGetAsSize(Type, Value);
    v20 = glpABIGetTypeSize(0, a5, 0);
    if (AsSize >= glpTypeSizeGetSize(v20))
    {
      goto LABEL_27;
    }

    v26 = glpCopyValue(a1, SaType, &a4[16 * AsSize], v21, v22, v23, v24, v25);
    if (!Swizzle)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v26 = a4;
    if (!Swizzle)
    {
      goto LABEL_17;
    }
  }

  v27 = glpASTNodeGetSaType(a3);
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v27);
  ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
  VectorType = glpGetVectorType(ScalarType, Swizzle & 7);
  v31 = glpGetPrimitiveType(VectorType);
  MutableValue = glpMakeMutableValue(a1, v31, 0, v32, v33, v34, v35, v36, v66);
  glpCopyValueIntoWithSwizzle(MutableValue, v31, v26, Swizzle);
  v26 = MutableValue;
LABEL_17:
  if (VectorElementExpr)
  {
    if (glpIsConstantNode(VectorElementExpr))
    {
      v38 = glpConstantNodeGetValue(VectorElementExpr);
      v39 = glpConstantNodeGetType(VectorElementExpr);
      if (glpValueIsUsableAsSize(v39, v38))
      {
        v40 = glpValueGetAsSize(v39, v38);
        v41 = glpPrimitiveTypeGetPrimitiveType(SaType);
        if (v40 < glpPrimitiveTypeGetScalarCount(v41))
        {
          v42 = glpASTNodeGetSaType(a3);
          v48 = glpMakeMutableValue(a1, v42, 0, v43, v44, v45, v46, v47, v66);
          v49 = glpASTNodeGetSaType(a3);
          Swizzle_2 = glpMakeSwizzle_2(v49, v50, v51, v52, v53, v54, v55, v56, v40);
          glpCopyValueIntoWithSwizzle(v48, v49, v26, Swizzle_2);
          v26 = v48;
          goto LABEL_22;
        }
      }
    }

LABEL_27:
    SaFlags = glpASTNodeGetSaFlags(a3);
    glpASTNodeSetSaFlags(a3, SaFlags | 0x80);
    return a3;
  }

LABEL_22:
  if (v26 == a4)
  {
    v58 = glpASTNodeGetSaType(a3);
    v26 = glpCopyValue(a1, v58, a4, v59, v60, v61, v62, v63);
  }

  return glpMakeConstantNodeFromNodeAndMutableValue(a1, a2, a3, v26);
}

uint64_t glpCopyValueIntoWithSwizzle(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = a4 & 7;
  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a2);
  result = glpPrimitiveTypeGetBytesPerComponent(PrimitiveType);
  if (v7)
  {
    v10 = result;
    v11 = 0;
    v12 = result;
    v13 = 3;
    do
    {
      result = memcpy((a1 + v11), (a3 + ((a4 >> v13) & 3) * v10), v12);
      v13 += 2;
      v11 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t glpPPTNode(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    switch(glpASTNodeGetKind(a2))
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
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
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Du:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
        goto LABEL_3;
      case 0x2Eu:

        return glpPPTVariableDeclaration(a1, a2);
      case 0x33u:

        return glpPPTFunctionDefinition(a1, a2);
      case 0x45u:
        glpPPTSwitchStatement(a1, a2);
        return a2;
      case 0x4Cu:
        a1[3] = a2;
LABEL_3:
        transformKids(a1, a2);
        return a2;
      case 0x4Eu:

        return glpPPTRawCall(a1, a2);
      default:
        abort();
    }
  }

  return a2;
}

uint64_t glpPPTVariableDeclaration(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  transformKids(a1, a2);
  if (glpVariableDeclarationNodeGetInitializer(v2) && (glpASTNodeGetSaFlags(v2) & 0x100000000) == 0)
  {
    Initializer = glpVariableDeclarationNodeGetInitializer(v2);
    glpVariableDeclarationNodeSetInitializer(v2, 0);
    if ((glpASTNodeGetSaFlags(v2) & 0x80000000) != 0)
    {
      if (glpTopLevelNodeGetDefCount(a1[3]))
      {
        v9 = 0;
        while (1)
        {
          Def = glpTopLevelNodeGetDef(a1[3], v9);
          if (glpIsFunctionDefinitionNode(Def))
          {
            Prototype = glpFunctionDefinitionNodeGetPrototype(Def);
            Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
            if (glpStringsEqual("$copy_in", 0x2CF8B77300000008uLL, *(Extra + 24), *(Extra + 32)))
            {
              break;
            }
          }

          if (++v9 >= glpTopLevelNodeGetDefCount(a1[3]))
          {
            goto LABEL_10;
          }
        }

        Body = glpFunctionDefinitionNodeGetBody(Def);
      }

      else
      {
LABEL_10:
        Body = 0;
      }

      glpBlockNodeAddStatement(*a1, Body, Initializer);
    }

    else
    {
      v5 = *a1;
      glpASTNodeGetLocation(v2, &v15);
      glpMakeCommaExprNode(v5, &v15, 0);
      v7 = v6;
      glpCommaExprNodeAddExpr(*a1, v6, v2);
      glpCommaExprNodeAddExpr(*a1, v7, Initializer);
      SaType = glpASTNodeGetSaType(v2);
      glpASTNodeSetSaType(v7, SaType);
      return v7;
    }
  }

  return v2;
}

uint64_t glpPPTFunctionDefinition(uint64_t *a1, uint64_t a2)
{
  transformKids(a1, a2);
  Prototype = glpFunctionDefinitionNodeGetPrototype(a2);
  if ((*(glpFunctionPrototypeNodeGetExtra(Prototype) + 9) & 0x20) != 0)
  {
    Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
    *(Extra + 64) = a2;
    if ((*(Extra + 10) & 2) == 0)
    {
      return Prototype;
    }
  }

  else
  {
    Body = glpFunctionDefinitionNodeGetBody(a2);
    StatementCount = glpBlockNodeGetStatementCount(Body);
    do
    {
      if (!StatementCount)
      {
        goto LABEL_13;
      }

      --StatementCount;
    }

    while (!glpBlockNodeGetStatement(Body, StatementCount));
    Statement = glpBlockNodeGetStatement(Body, StatementCount);
    if (!Statement)
    {
      goto LABEL_13;
    }

    Expr = Statement;
    while (glpIsCommaExprNode(Expr))
    {
      ExprCount = glpCommaExprNodeGetExprCount(Expr);
      Expr = glpCommaExprNodeGetExpr(Expr, ExprCount - 1);
      if (!Expr)
      {
        goto LABEL_13;
      }
    }

    if (!glpIsReturnStatementNode(Expr))
    {
LABEL_13:
      v11 = *a1;
      glpASTNodeGetLocation(a2, &v16);
      glpMakeReturnStatementNode(v11, &v16);
      v13 = v12;
      PrimitiveType = glpGetPrimitiveType(0);
      glpASTNodeSetSaType(v13, PrimitiveType);
      glpBlockNodeAddStatement(*a1, Body, v13);
    }
  }

  return a2;
}

uint64_t glpPPTSwitchStatement(uint64_t *a1, uint64_t a2)
{
  transformKids(a1, a2);
  Body = glpSwitchStatementNodeGetBody(a2);
  StatementCount = glpBlockNodeGetStatementCount(Body);
  do
  {
    if (!StatementCount)
    {
      goto LABEL_10;
    }

    --StatementCount;
  }

  while (!glpBlockNodeGetStatement(Body, StatementCount));
  Statement = glpBlockNodeGetStatement(Body, StatementCount);
  if (!Statement)
  {
    goto LABEL_10;
  }

  Expr = Statement;
  while (glpIsCommaExprNode(Expr))
  {
    ExprCount = glpCommaExprNodeGetExprCount(Expr);
    Expr = glpCommaExprNodeGetExpr(Expr, ExprCount - 1);
    if (!Expr)
    {
      goto LABEL_10;
    }
  }

  if (!glpIsBreakStatementNode(Expr))
  {
LABEL_10:
    v9 = *a1;
    glpASTNodeGetLocation(a2, &v14);
    glpMakeBreakStatementNode(v9, &v14);
    v11 = v10;
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(v11, PrimitiveType);
    glpBlockNodeAddStatement(*a1, Body, v11);
  }

  return a2;
}

uint64_t glpPPTRawCall(uint64_t *a1, uint64_t a2)
{
  transformKids(a1, a2);
  v4 = *a1;
  glpASTNodeGetLocation(a2, &v13);
  glpMakeCommaExprNode(v4, &v13, 0);
  v6 = v5;
  v7 = glpRawCallNodeGetExtra(a2);
  ExprCount = glpCommaExprNodeGetExprCount(v6);
  glpCommaExprNodeAddExpr(*a1, v6, a2);
  if (*(v7 + 64) && (*(v7 + 9) & 0x20) != 0)
  {
    v13.n128_u64[0] = 0;
    v13.n128_u64[1] = glpMakePointerHash(*a1);
    PointerHash = glpMakePointerHash(*a1);
    v9 = *a1;
    Body = glpFunctionDefinitionNodeGetBody(*(v7 + 64));
    v11 = glpDeepCopyASTNode(v9, Body, inliningNodeReplacement, &v13);
    glpCommaExprNodeSetExpr(v6, ExprCount, v11);
  }

  return v6;
}

uint64_t transformKids(uint64_t a1, uint64_t a2)
{
  result = glpASTNodeGetChildCount(a2);
  if (result)
  {
    v5 = 0;
    do
    {
      Child = glpASTNodeGetChild(a2, v5);
      v7 = glpPPTNode(a1, Child);
      glpASTNodeSetChild(a2, v5++, v7);
      result = glpASTNodeGetChildCount(a2);
    }

    while (v5 < result);
  }

  return result;
}

uint64_t inliningNodeReplacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  Kind = glpASTNodeGetKind(a3);
  if (Kind > 79)
  {
    if (Kind == 80)
    {
      Extra = glpOffsetNodeGetExtra(v3);
      v20 = *(a1 + 16);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 0x40000000;
      v23[2] = __inliningNodeReplacement_block_invoke;
      v23[3] = &__block_descriptor_tmp_13;
      v23[4] = a2;
      v23[5] = Extra;
      v21 = glpPointerHashCache_b(v20, Extra, v23);
      glpOffsetNodeSetExtra(v3, v21);
    }

    else if (Kind == 81)
    {
      VariableExtra = glpLValueNodeGetVariableExtra(v3);
      v8 = glpPointerHashGet(*(a1 + 8), VariableExtra);
      if (v8)
      {
        glpLValueNodeSetVariableExtra(v3, v8);
      }
    }
  }

  else if (Kind == 46)
  {
    v9 = glpVariableDeclarationNodeGetExtra(v3);
    v10 = (*(a2 + 8))(*a2, 160, "Variable Object (PPT inlining)");
    v11 = v9[1];
    *v10 = *v9;
    v10[1] = v11;
    v12 = v9[5];
    v14 = v9[2];
    v13 = v9[3];
    v10[4] = v9[4];
    v10[5] = v12;
    v10[2] = v14;
    v10[3] = v13;
    v15 = v9[8];
    v16 = v9[9];
    v18 = v9[6];
    v17 = v9[7];
    v10[8] = v15;
    v10[9] = v16;
    v10[6] = v18;
    v10[7] = v17;
    glpPointerHashPut(*(a1 + 8), v9, v10, *&v15);
    glpVariableDeclarationNodeSetExtra(v3, v10);
  }

  else if (Kind == 75)
  {
    v3 = 0;
    *a1 = 1;
  }

  return v3;
}

__n128 __inliningNodeReplacement_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 8))(**(a1 + 32), 32, "Offset Object (PPT inlining)");
  v3 = *(a1 + 40);
  result = *(v3 + 16);
  *v2 = *v3;
  *(v2 + 16) = result;
  return result;
}

uint64_t glpSANode(void *a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 + 1) >= 2 && !glpASTNodeGetSaType(a2))
  {
    glpCompilerPushSAContext(a1, v2);
    switch(glpASTNodeGetKind(v2))
    {
      case 0u:
        v4 = glpSATypeConversion(a1, v2);
        goto LABEL_84;
      case 1u:
        v4 = glpSAVariableIdentifier(a1, v2);
        goto LABEL_84;
      case 2u:
        v4 = glpSATypeIdentifier(a1, v2);
        goto LABEL_84;
      case 3u:
        glpSAConstant(v2);
        goto LABEL_85;
      case 4u:
        v4 = glpSAArrayAccess(a1, v2);
        goto LABEL_84;
      case 5u:
        v4 = glpSAFieldAccess(a1, v2);
        goto LABEL_84;
      case 6u:
        v4 = glpSAUndeterminedCall(a1, v2);
        goto LABEL_84;
      case 7u:
        v4 = glpSAFunctionCall(a1, v2);
        goto LABEL_84;
      case 8u:
        v4 = glpSASubroutineArrayCall(a1, v2);
        goto LABEL_84;
      case 9u:
        v4 = glpSAMethodCall(a1, v2);
        goto LABEL_84;
      case 0xAu:
        v4 = glpSAConstructorCall(a1, v2);
        goto LABEL_84;
      case 0xBu:
        v4 = glpSAPostincrement(a1, v2);
        goto LABEL_84;
      case 0xCu:
        v4 = glpSAPostdecrement(a1, v2);
        goto LABEL_84;
      case 0xDu:
        v4 = glpSAPreincrement(a1, v2);
        goto LABEL_84;
      case 0xEu:
        v4 = glpSAPredecrement(a1, v2);
        goto LABEL_84;
      case 0xFu:
        v4 = glpSAUnaryPlus(a1, v2);
        goto LABEL_84;
      case 0x10u:
        v4 = glpSANegate(a1, v2);
        goto LABEL_84;
      case 0x11u:
        v4 = glpSALogicalNot(a1, v2);
        goto LABEL_84;
      case 0x12u:
        v4 = glpSABitwiseNot(a1, v2);
        goto LABEL_84;
      case 0x13u:
        v4 = glpSAMultiply(a1, v2);
        goto LABEL_84;
      case 0x14u:
        v4 = glpSADivide(a1, v2);
        goto LABEL_84;
      case 0x15u:
        v4 = glpSAModulo(a1, v2);
        goto LABEL_84;
      case 0x16u:
        v4 = glpSAAdd(a1, v2);
        goto LABEL_84;
      case 0x17u:
        v4 = glpSASubtract(a1, v2);
        goto LABEL_84;
      case 0x18u:
        v4 = glpSAShiftLeft(a1, v2);
        goto LABEL_84;
      case 0x19u:
        v4 = glpSAShiftRight(a1, v2);
        goto LABEL_84;
      case 0x1Au:
        v4 = glpSALess(a1, v2);
        goto LABEL_84;
      case 0x1Bu:
        v4 = glpSALessEqual(a1, v2);
        goto LABEL_84;
      case 0x1Cu:
        v4 = glpSAGreater(a1, v2);
        goto LABEL_84;
      case 0x1Du:
        v4 = glpSAGreaterEqual(a1, v2);
        goto LABEL_84;
      case 0x1Eu:
        v4 = glpSAEqual(a1, v2);
        goto LABEL_84;
      case 0x1Fu:
        v4 = glpSANotEqual(a1, v2);
        goto LABEL_84;
      case 0x20u:
        v4 = glpSALogicalAnd(a1, v2);
        goto LABEL_84;
      case 0x21u:
        v4 = glpSALogicalOr(a1, v2);
        goto LABEL_84;
      case 0x22u:
        v4 = glpSALogicalXor(a1, v2);
        goto LABEL_84;
      case 0x23u:
        v4 = glpSABitwiseAnd(a1, v2);
        goto LABEL_84;
      case 0x24u:
        v4 = glpSABitwiseOr(a1, v2);
        goto LABEL_84;
      case 0x25u:
        v4 = glpSABitwiseXor(a1, v2);
        goto LABEL_84;
      case 0x26u:
        v4 = glpSAIfExpr(a1, v2);
        goto LABEL_84;
      case 0x27u:
        v4 = glpSAAssign(a1, v2);
        goto LABEL_84;
      case 0x28u:
        v4 = glpSAOpAssign(a1, v2);
        goto LABEL_84;
      case 0x29u:
        glpSAReadInput();
      case 0x2Au:
        glpSAWriteOutput();
      case 0x2Bu:
        v4 = glpSACommaExpr(a1, v2);
        goto LABEL_84;
      case 0x2Cu:
        v4 = glpSAParameterDeclaration(a1, v2);
        goto LABEL_84;
      case 0x2Du:
        v4 = glpSAFunctionPrototype(a1, v2);
        goto LABEL_84;
      case 0x2Eu:
        v4 = glpSAVariableDeclaration(a1, v2);
        goto LABEL_84;
      case 0x2Fu:
        v4 = glpSAVariableDeclarationGroup(a1, v2);
        goto LABEL_84;
      case 0x30u:
        v4 = glpSAPrecisionDeclaration(a1, v2);
        goto LABEL_84;
      case 0x31u:
        v4 = glpSAQualifiedDeclaration(a1, v2);
        goto LABEL_84;
      case 0x32u:
        v4 = glpSAQualifiedDeclarationGroup(a1, v2);
        goto LABEL_84;
      case 0x33u:
        v4 = glpSAFunctionDefinition(a1, v2);
        goto LABEL_84;
      case 0x34u:
        v4 = glpSAQualifiedType(a1, v2);
        goto LABEL_84;
      case 0x35u:
        glpSAPrimitiveType(v2);
        goto LABEL_85;
      case 0x36u:
        v4 = glpSAArrayType(a1, v2);
        goto LABEL_84;
      case 0x37u:
        v4 = glpSAFieldDeclaration(a1, v2);
        goto LABEL_84;
      case 0x38u:
        v4 = glpSAStructType(a1, v2);
        goto LABEL_84;
      case 0x39u:
        v4 = glpSAInterfaceBlock(a1, v2);
        goto LABEL_84;
      case 0x3Au:
        v4 = glpSALayoutType(a1, v2);
        goto LABEL_84;
      case 0x3Bu:
        glpSAKeywordQualifier();
      case 0x3Cu:
        v4 = glpSALayoutQualifier(a1, v2);
        goto LABEL_84;
      case 0x3Du:
        v4 = glpSASubroutineTypeList(a1, v2);
        goto LABEL_84;
      case 0x3Eu:
        v4 = glpSAQualifierList(a1, v2);
        goto LABEL_84;
      case 0x3Fu:
        v4 = glpSAGlobalTypeQualifier(a1, v2);
        goto LABEL_84;
      case 0x40u:
        v4 = glpSALayoutPair(a1, v2);
        goto LABEL_84;
      case 0x41u:
        v4 = glpSAExpressionStatement(a1, v2);
        goto LABEL_84;
      case 0x42u:
        v4 = glpSABlock(a1, v2);
        goto LABEL_84;
      case 0x43u:
        v4 = glpSAIfStatement(a1, v2);
        goto LABEL_84;
      case 0x44u:
        v4 = glpSALoopStatement(a1, v2);
        goto LABEL_84;
      case 0x45u:
        v4 = glpSASwitchStatement(a1, v2);
        goto LABEL_84;
      case 0x46u:
        v4 = glpSACaseStatement(a1, v2);
        goto LABEL_84;
      case 0x47u:
        v4 = glpSADefaultStatement(a1, v2);
        goto LABEL_84;
      case 0x48u:
        v4 = glpSABreakStatement(a1, v2);
        goto LABEL_84;
      case 0x49u:
        v4 = glpSAContinueStatement(a1, v2);
        goto LABEL_84;
      case 0x4Au:
        v4 = glpSADiscardStatement(a1, v2);
        goto LABEL_84;
      case 0x4Bu:
        v4 = glpSAReturnStatement(a1, v2);
        goto LABEL_84;
      case 0x4Cu:
        v4 = glpSATopLevel(a1, v2);
        goto LABEL_84;
      case 0x4Du:
        glpSAAvailabilityDeclaration();
      case 0x4Eu:
        glpSARawCall();
      case 0x4Fu:
        v4 = glpSASubroutineRawCall(a1, v2);
        goto LABEL_84;
      case 0x50u:
        v4 = glpSAOffset(a1, v2);
        goto LABEL_84;
      case 0x51u:
        v4 = glpSALValue(a1, v2);
        goto LABEL_84;
      case 0x52u:
        v4 = glpSARValue(a1, v2);
        goto LABEL_84;
      case 0x53u:
        v4 = glpSAIBPartialDeref(a1, v2);
        goto LABEL_84;
      case 0x54u:
        v4 = glpSAPPStreamOp(a1, v2);
LABEL_84:
        v2 = v4;
LABEL_85:
        if ((v2 + 1) >= 2)
        {
          Allocator = glpCompilerGetAllocator(a1);
          ValueHash = glpCompilerGetValueHash(a1);
          v2 = glpConstantFold(Allocator, ValueHash, v2);
        }

        glpCompilerPopSAContext(a1);
        break;
      case 0x55u:
        glpSASubroutineUniform();
      default:
        abort();
    }
  }

  return v2;
}

uint64_t glpSATypeConversion(uint64_t a1, uint64_t a2)
{
  if (glpSAUnaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {
    v4 = glpTypeConversionNodeGetToType(a2);
    if (glpTypeIsAtomic(v4))
    {
      glpASTNodeSetSaType(a2, v4);
      Expr = glpUnaryOperatorNodeGetExpr(a2);
      SaFlags = glpASTNodeGetSaFlags(Expr);
      v7 = glpTypeConversionNodeGetToPrecision(a2);
      v8 = glpUnaryOperatorNodeGetExpr(a2);
      if (glpIsConstantNode(v8))
      {
        glpSAValidateConstPrecisionConversion(a1, Expr, v7);
      }

      glpASTNodeSetSaFlags(a2, SaFlags & 0x60 | v7);
      return a2;
    }

    else
    {

      return glpLowerNonatomicTypeConversion(a1, a2);
    }
  }
}

uint64_t glpSAVariableIdentifier(uint64_t a1, uint64_t a2)
{
  NameTable = glpCompilerGetNameTable(a1);
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  Name = glpVariableIdentifierNodeGetName(a2);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 0x40000000;
  v43[2] = __glpSAVariableIdentifier_block_invoke;
  v43[3] = &unk_278B4C360;
  v43[4] = &v48;
  v43[5] = &v44;
  v43[6] = NameTable;
  glpNameTableGet(NameTable, Name, v6, 0, v43);
  v7 = v45[3];
  if (!v7)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v42);
    glpVariableIdentifierNodeGetName(a2);
    v41 = v21;
    glpVariableIdentifierNodeGetName(a2);
    v22 = "Use of undeclared identifier '%.*s'";
    goto LABEL_6;
  }

  v8 = *(v49 + 6);
  if (v8 <= 3)
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 == 1)
        {
          Allocator = glpCompilerGetAllocator(a1);
          glpASTNodeGetLocation(a2, &v42);
          glpMakeIBPartialDerefNode(Allocator, &v42, v7);
          a2 = v25;
          glpASTNodeSetSaType(v25, *(v7 + 64));
        }

        goto LABEL_24;
      }

      glpASTNodeGetLocation(a2, &v42);
      v36 = a1;
      v37 = v7;
      goto LABEL_23;
    }

    if (v8 != 2)
    {
      Representation = glpInterfaceBlockObjectGetRepresentation(v45[3]);
      StructTypeFromIBType = glpGetStructTypeFromIBType(*(v7 + 64));
      v28 = glpVariableIdentifierNodeGetName(a2);
      v30 = v29;
      FieldIndex = glpStructTypeGetFieldIndex(StructTypeFromIBType, v28, v29);
      if (Representation != 1)
      {
        if (Representation)
        {
          goto LABEL_21;
        }

        glpASTNodeGetLocation(a2, &v42);
        LValueForVariableObject = glpMakeLValueForVariableObject(a1, &v42, **(v7 + 72));
        v33 = glpCompilerGetAllocator(a1);
        glpASTNodeGetLocation(a2, &v42);
        glpMakeFieldAccessNode(v33, &v42, v28, v30);
        v35 = v34;
        glpFieldAccessNodeSetStructure(v34, LValueForVariableObject);
        a2 = glpSAFieldAccessInternal(a1, v35);
        if (a2 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_24;
      }

      v38 = FieldIndex;
      glpASTNodeGetLocation(a2, &v42);
      v37 = *(*(v7 + 72) + 8 * v38);
      v36 = a1;
LABEL_23:
      a2 = glpMakeLValueForVariableObject(v36, &v42, v37);
      goto LABEL_24;
    }

    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v42);
    v22 = "You may never refer to an interface block by its block name within a shader";
LABEL_6:
    glpLogMessage(InfoLog, 0, &v42, v22, v17, v18, v19, v20, v41);
    goto LABEL_7;
  }

  if ((v8 - 4) >= 5)
  {
    if ((v8 - 10) < 4 || v8 == 9)
    {
LABEL_21:
      abort();
    }

LABEL_24:
    v23 = glpCheckIBDeref(a1, a2);
    goto LABEL_25;
  }

  v9 = glpCompilerGetInfoLog(a1);
  glpASTNodeGetLocation(a2, &v42);
  glpVariableIdentifierNodeGetName(a2);
  v11 = v10;
  glpVariableIdentifierNodeGetName(a2);
  glpLogMessage(v9, 0, &v42, "Attempt to use '%.*s' as a variable", v12, v13, v14, v15, v11);
LABEL_7:
  v23 = glpSAFailed();
LABEL_25:
  v39 = v23;
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  return v39;
}

uint64_t glpSATypeIdentifier(uint64_t a1, uint64_t a2)
{
  NameTable = glpCompilerGetNameTable(a1);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  Name = glpTypeIdentifierNodeGetName(a2);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 0x40000000;
  v25[2] = __glpSATypeIdentifier_block_invoke;
  v25[3] = &unk_278B4C388;
  v25[4] = &v30;
  v25[5] = &v26;
  v25[6] = NameTable;
  glpNameTableGet(NameTable, Name, v6, 0, v25);
  v7 = v27[3];
  if (!v7)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v24);
    glpTypeIdentifierNodeGetName(a2);
    v18 = v17;
    glpTypeIdentifierNodeGetName(a2);
    glpLogMessage(InfoLog, 0, &v24, "Use of undeclared type '%.*s'", v19, v20, v21, v22, v18);
    goto LABEL_6;
  }

  v8 = *(v31 + 6);
  if (v8 > 5)
  {
    if (v8 > 7)
    {
      if (v8 != 8)
      {
        if ((v8 - 10) < 4 || v8 == 9)
        {
          abort();
        }

        goto LABEL_7;
      }
    }

    else if (v8 != 6)
    {
      goto LABEL_4;
    }

    glpASTNodeSetSaType(a2, v7);
    goto LABEL_7;
  }

  if (v8 < 6)
  {
LABEL_4:
    v9 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v24);
    glpTypeIdentifierNodeGetName(a2);
    v11 = v10;
    glpTypeIdentifierNodeGetName(a2);
    glpLogMessage(v9, 0, &v24, "Attempt to use '%.*s' as a type", v12, v13, v14, v15, v11);
LABEL_6:
    a2 = glpSAFailed();
  }

LABEL_7:
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  return a2;
}

uint64_t glpSAConstant(uint64_t a1)
{
  Type = glpConstantNodeGetType(a1);
  glpASTNodeSetSaType(a1, Type);
  glpASTNodeSetSaFlags(a1, 96);
  return a1;
}

uint64_t glpSAArrayAccess(uint64_t a1, uint64_t a2)
{
  Array = glpArrayAccessNodeGetArray(a2);
  v5 = glpSANode(a1, Array);
  if (v5 != -1)
  {
    glpArrayAccessNodeSetArray(a2, v5);
  }

  Element = glpArrayAccessNodeGetElement(a2);
  v7 = glpSANode(a1, Element);
  if (v7 != -1)
  {
    glpArrayAccessNodeSetElement(a2, v7);
    if (v5 != -1)
    {
      v8 = glpArrayAccessNodeGetArray(a2);
      SaType = glpASTNodeGetSaType(v8);
      if (glpIsIBPartialDerefNode(v8) && glpTypeGetKind(SaType) != 3)
      {
        Ib = glpIBPartialDerefNodeGetIb(v8);
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v38);
        v36 = *(Ib + 16);
        glpLogMessage(InfoLog, 0, &v38, "You may not index the non-array interface block '%.*s'", v17, v18, v19, v20, *(Ib + 24));
        return glpSAFailed();
      }

      Kind = glpTypeGetKind(SaType);
      if (Kind == 3)
      {
        if (glpIsIBPartialDerefNode(v8))
        {
          NameTable = glpCompilerGetNameTable(a1);
          v31 = (*(**(glpIBPartialDerefNodeGetIb(v8) + 72) + 52) & 1) != 0 && glpNameTableGetGLSLVersion(NameTable) <= 7 && !glpNameTableIsExtensionEnabled(NameTable, 0x13u);
          v32 = glpArrayAccessNodeGetElement(a2);
          v37 = 0;
          glpASTNodeGetLocation(v32, &v38);
          ElementCount = glpBankTypeGetElementCount(SaType);
          v34 = glpCheckArrayIndex(a1, &v38, v32, v31, 0, ElementCount, &v37);
          if (v34 != -1)
          {
            glpIBPartialDerefNodeSetBankIndex(v8, v34);
            ElementType = glpBankTypeGetElementType(SaType);
            glpASTNodeSetSaType(v8, ElementType);
            return glpCheckIBDeref(a1, v8);
          }

          return glpSAFailed();
        }

        v29 = glpBankTypeGetElementType(SaType);
      }

      else
      {
        if (Kind != 2)
        {
          if (!Kind)
          {
            PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
            Category = glpPrimitiveTypeGetCategory(PrimitiveType);
            if (Category == 3)
            {
              v13 = glpIndirectMatrixColumn(a1, a2, PrimitiveType);
              goto LABEL_26;
            }

            if (Category == 2)
            {
              v13 = glpIndirectVectorElement(a1, a2, PrimitiveType);
LABEL_26:
              v8 = v13;
              return glpCheckIBDeref(a1, v8);
            }
          }

          Allocator = glpCompilerGetAllocator(a1);
          glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
          v23 = v22;
          v24 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(a2, &v38);
          glpLogMessage(v24, 0, &v38, "Can't access array element of type '%.*s'", v25, v26, v27, v28, v23);
          return glpSAFailed();
        }

        v29 = glpArrayTypeGetElementType(SaType);
      }

      v13 = glpIndirectArrayElement(a1, a2, v29);
      goto LABEL_26;
    }
  }

  return glpSAFailed();
}

uint64_t glpSAFieldAccess(uint64_t a1, uint64_t a2)
{
  Structure = glpFieldAccessNodeGetStructure(a2);
  v5 = glpSANode(a1, Structure);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpFieldAccessNodeSetStructure(a2, v5);
    v6 = glpSAFieldAccessInternal(a1, a2);

    return glpCheckIBDeref(a1, v6);
  }
}

uint64_t glpSAUndeterminedCall(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (glpSACall(a1, a2) == -1)
  {
    goto LABEL_21;
  }

  v4 = glpUndeterminedCallNodeGetCallee(v2);
  Kind = glpASTNodeGetKind(v4);
  switch(Kind)
  {
    case 5:
      Allocator = glpCompilerGetAllocator(a1);
      glpASTNodeGetLocation(v2, &v79);
      Field = glpFieldAccessNodeGetField(v4);
      glpMakeMethodCallNode(Allocator, &v79, Field, v25);
      v16 = v26;
      Structure = glpFieldAccessNodeGetStructure(v4);
      glpMethodCallNodeSetReceiver(v16, Structure);
      v28 = glpCallNodeGetArgCount(v2);
      if (v28)
      {
        v29 = v28;
        for (i = 0; i != v29; ++i)
        {
          v31 = glpCompilerGetAllocator(a1);
          v32 = glpCallNodeGetArg(v2, i);
          glpCallNodeAddArg(v31, v16, v32);
        }
      }

      return glpSANode(a1, v16);
    case 4:
      Array = glpArrayAccessNodeGetArray(v4);
      if (!glpIsVariableIdentifierNode(Array))
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v4, &v79);
        glpLogMessage(InfoLog, 0, &v79, "Call of element of non-subroutine-uniform array", v46, v47, v48, v49, v72);
        return glpSAFailed();
      }

      v12 = glpCompilerGetAllocator(a1);
      glpASTNodeGetLocation(v2, &v79);
      Name = glpVariableIdentifierNodeGetName(Array);
      glpMakeSubroutineArrayCallNode(v12, &v79, Name, v14);
      v16 = v15;
      Element = glpArrayAccessNodeGetElement(v4);
      glpSubroutineArrayCallNodeSetIndexExpr(v16, Element);
      v18 = glpCallNodeGetArgCount(v2);
      if (v18)
      {
        v19 = v18;
        for (j = 0; j != v19; ++j)
        {
          v21 = glpCompilerGetAllocator(a1);
          v22 = glpCallNodeGetArg(v2, j);
          glpCallNodeAddArg(v21, v16, v22);
        }
      }

      return glpSANode(a1, v16);
    case 1:
      v6 = glpVariableIdentifierNodeGetName(v4);
      v8 = v7;
      NameTable = glpCompilerGetNameTable(a1);
      if (glpNameTableIsExtensionEnabled(NameTable, 0x24u) && glpStringsEqual("$assert", 0x75B16CFF00000007uLL, v6, v8))
      {

        return glpSASpecialAssert(a1, v2);
      }

      if (glpStringsEqual("$ppstreamop", 0xF8DF7DAF0000000BLL, v6, v8))
      {

        return glpSABuiltinPPStreamOp(a1, v2);
      }

      v50 = glpCompilerGetNameTable(a1);
      v79.n128_u64[0] = 0;
      v79.n128_u64[1] = &v79;
      v80 = 0x2000000000;
      v81 = 0;
      v75 = 0;
      v76 = &v75;
      v77 = 0x2000000000;
      v78 = 0;
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 0x40000000;
      v74[2] = __glpSAUndeterminedCall_block_invoke;
      v74[3] = &unk_278B4C3B0;
      v74[4] = &v79;
      v74[5] = &v75;
      v74[6] = v50;
      v74[7] = a1;
      glpNameTableGet(v50, v6, v8, 0, v74);
      if (v76[3])
      {
        v51 = *(v79.n128_u64[1] + 24);
        if (v51 > 0xD)
        {
LABEL_39:
          _Block_object_dispose(&v75, 8);
          _Block_object_dispose(&v79, 8);
          return v2;
        }

        v52 = 1 << v51;
        if ((v52 & 0x10F) == 0)
        {
          if ((v52 & 0x90) == 0)
          {
            abort();
          }

          v64 = glpCompilerGetAllocator(a1);
          glpASTNodeGetLocation(v2, &v73);
          glpMakeFunctionCallNode(v64, &v73, v6, v8);
          v66 = v65;
          v67 = glpCallNodeGetArgCount(v2);
          if (v67)
          {
            v68 = v67;
            for (k = 0; k != v68; ++k)
            {
              v70 = glpCompilerGetAllocator(a1);
              v71 = glpCallNodeGetArg(v2, k);
              glpCallNodeAddArg(v70, v66, v71);
            }
          }

          v63 = glpSANode(a1, v66);
          goto LABEL_38;
        }

        v53 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v4, &v73);
        glpLogMessage(v53, 0, &v73, "Invalid call of '%.*s' (not a function or subroutine uniform)", v54, v55, v56, v57, v8);
      }

      else
      {
        v58 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v4, &v73);
        glpLogMessage(v58, 0, &v73, "Invalid call of undeclared identifier '%.*s'", v59, v60, v61, v62, v8);
      }

      v63 = glpSAFailed();
LABEL_38:
      v2 = v63;
      goto LABEL_39;
  }

  v34 = glpSANode(a1, v4);
  if (v34 != -1)
  {
    v35 = v34;
    SaType = glpASTNodeGetSaType(v34);
    v37 = glpCompilerGetAllocator(a1);
    glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v37);
    v39 = v38;
    v40 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(v35, &v79);
    glpLogMessage(v40, 0, &v79, "'%.*s' is not callable", v41, v42, v43, v44, v39);
    return glpSAFailed();
  }

LABEL_21:

  return glpSAFailed();
}

uint64_t glpSAFunctionCall(uint64_t a1, uint64_t a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (glpSACall(a1, a2) == -1)
  {
    v16 = *MEMORY[0x277D85DE8];

    return glpSAFailed();
  }

  else
  {
    v4 = glpFunctionCallNodeGetName(a2);
    v6 = v5;
    v7 = glpCallNodeGetArgCount(a2);
    MEMORY[0x28223BE20](v7);
    v9 = (&v22 - v8);
    bzero(&v22 - v8, v10);
    v11 = glpMakeExpectedSignatureFromCall(a1, a2, v9);
    v24[0] = 0;
    if (glpLookUpAndAnalyzeCall(a1, a2, v4, v6, v11, v9, v24) && (v12 = glpFunctionCallNodeGetExtra(a2), v13 = glpCalculateCallPrecision(a1, a2, v12), glpHandleArgumentConversions(a1, a2, v12, v13)))
    {
      v14 = v12[1];
      if ((v14 & 0x4000) != 0)
      {
        result = glpLowerCallToBodilessPPStreamOp(a1, a2, v12);
      }

      else if ((v14 & 0x10000) != 0)
      {
        result = glpHandleSpecialOperatorFunction(a1, a2, v12);
      }

      else if ((v14 & 0x2000) != 0 && v12[8])
      {
        result = glpInlineFunction(a1, a2, v12, v13);
      }

      else
      {
        v17 = v24[0];
        Allocator = glpCompilerGetAllocator(a1);
        glpASTNodeGetLocation(a2, &v23);
        if (v17)
        {
          glpMakeSubroutineRawCallNode(Allocator, &v23, v24[0]);
        }

        else
        {
          v20 = glpFunctionCallNodeGetExtra(a2);
          glpMakeRawCallNode(Allocator, &v23, v4, v6, v20);
        }

        result = glpSALowerCallArgsToAssignment(a1, a2, v12, v19);
      }
    }

    else
    {
      result = glpSAFailed();
    }

    v21 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t glpSASubroutineArrayCall(uint64_t a1, uint64_t a2)
{
  if (glpSACall(a1, a2) != -1)
  {
    v4 = glpSubroutineArrayCallNodeGetIndexExpr(a2);
    v5 = glpSANode(a1, v4);
    if (v5 != -1)
    {
      glpSubroutineArrayCallNodeSetIndexExpr(a2, v5);
      v6 = glpSubroutineArrayCallNodeGetName(a2);
      v8 = v7;
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
      v44[2] = __glpSASubroutineArrayCall_block_invoke;
      v44[3] = &unk_278B4C3D8;
      v44[4] = &v49;
      v44[5] = &v45;
      glpNameTableGet(NameTable, v6, v8, 0, v44);
      v10 = v46[3];
      if (v10 && *(v50 + 6) == 7)
      {
        v11 = *(v10 + 16);
        if (glpTypeGetKind(v11) == 2)
        {
          v12 = glpSubroutineArrayCallNodeGetIndexExpr(a2);
          v42 = 0;
          glpASTNodeGetLocation(v12, &v43);
          ElementCount = glpArrayTypeGetElementCount(v11);
          v14 = glpCheckArrayIndex(a1, &v43, v12, 0, 0, ElementCount, &v42);
          if (v14 != -1)
          {
            v15 = v14;
            ElementType = glpArrayTypeGetElementType(v11);
            FunctionObject = glpSubroutineTypeGetFunctionObject(ElementType);
            if (glpAnalyzeCallToSubroutineArray(a1, FunctionObject, a2))
            {
              ReturnType = glpFunctionTypeGetReturnType(*FunctionObject);
              glpASTNodeSetSaType(a2, ReturnType);
              v19 = glpCalculateCallPrecision(a1, a2, FunctionObject);
              if (glpHandleArgumentConversions(a1, a2, FunctionObject, v19))
              {
                Allocator = glpCompilerGetAllocator(a1);
                glpASTNodeGetLocation(a2, &v43);
                glpMakeSubroutineRawCallNode(Allocator, &v43, v10);
                v22 = v21;
                glpSubroutineRawCallNodeSetIndexExpr(v21, v15);
                v23 = glpSALowerCallArgsToAssignment(a1, a2, FunctionObject, v22);
LABEL_15:
                v30 = v23;
                _Block_object_dispose(&v45, 8);
                _Block_object_dispose(&v49, 8);
                return v30;
              }
            }

            else
            {
              glpSubroutineTypeGetName(ElementType);
              InfoLog = glpCompilerGetInfoLog(a1);
              glpASTNodeGetLocation(a2, &v43);
              v41 = *v10;
              glpLogMessage(InfoLog, 0, &v43, "Arguments of call to subroutine uniform array '%.*s' cannot be converted to match its element type ('%.*s')", v37, v38, v39, v40, *(v10 + 8));
            }
          }
        }

        else
        {
          v31 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(a2, &v43);
          glpLogMessage(v31, 0, &v43, "'%.*s' does not name a subroutine array", v32, v33, v34, v35, v8);
        }
      }

      else
      {
        v25 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v43);
        glpLogMessage(v25, 0, &v43, "'%.*s' does not name a subroutine uniform", v26, v27, v28, v29, v8);
      }

      v23 = glpSAFailed();
      goto LABEL_15;
    }
  }

  return glpSAFailed();
}

uint64_t glpSAMethodCall(uint64_t a1, uint64_t a2)
{
  if (glpSACall(a1, a2) != -1)
  {
    v92 = 0uLL;
    v93 = 0;
    glpASTNodeGetLocation(a2, &v92);
    v4 = glpMethodCallNodeGetName(a2);
    v6 = v5;
    NameTable = glpCompilerGetNameTable(a1);
    if (glpNameTableGetGLSLVersion(NameTable) < 2)
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v89 = v92;
      v90 = v93;
      v13 = "Method calls not allowed in this GLSL version";
LABEL_11:
      glpLogMessage(InfoLog, 0, &v89, v13, v9, v10, v11, v12, v80);
      return glpSAFailed();
    }

    if (!glpStringsEqual("length", 0x9836E88D00000006, v4, v6))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v89 = v92;
      v90 = v93;
      v80 = v6;
      v13 = "Call of unknown method '%.*s'";
      goto LABEL_11;
    }

    if (glpCallNodeGetArgCount(a2))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v89 = v92;
      v90 = v93;
      v13 = ".length() method takes no arguments";
      goto LABEL_11;
    }

    v16 = glpMethodCallNodeGetReceiver(a2);
    if (!glpIsVariableIdentifierNode(v16))
    {
LABEL_27:
      v43 = glpMethodCallNodeGetReceiver(a2);
      v44 = glpSANode(a1, v43);
      if (v44 != -1)
      {
        glpMethodCallNodeSetReceiver(a2, v44);
        v45 = glpMethodCallNodeGetReceiver(a2);
        SaType = glpASTNodeGetSaType(v45);
        if (glpTypeGetKind(SaType) == 2)
        {
          if (glpArrayTypeGetElementCount(SaType) == -1)
          {
            v70 = glpCompilerGetInfoLog(a1);
            v89 = v92;
            v90 = v93;
            glpLogMessage(v70, 0, &v89, "Call to method '%.*s' of unsized array", v71, v72, v73, v74, v6);
            return glpSAFailed();
          }

          PrimitiveType = glpGetPrimitiveType(5u);
          Allocator = glpCompilerGetAllocator(a1);
          ElementCount = glpArrayTypeGetElementCount(SaType);
          MutableValue = glpMakeMutableValue(Allocator, PrimitiveType, 1, v49, v50, v51, v52, v53, ElementCount);
        }

        else
        {
          if (glpTypeGetKind(SaType) != 3)
          {
            v64 = glpCompilerGetAllocator(a1);
            glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v64);
            v65 = glpCompilerGetInfoLog(a1);
            v89 = v92;
            v90 = v93;
            glpLogMessage(v65, 0, &v89, "Call to method '%.*s' of non-array type '%.*s'", v66, v67, v68, v69, v6);
            return glpSAFailed();
          }

          v55 = glpBankTypeGetElementCount(SaType);
          if (v55 == -1)
          {
            v75 = glpCompilerGetInfoLog(a1);
            v89 = v92;
            v90 = v93;
            glpLogMessage(v75, 0, &v89, "Call to method '%.*s' of unsized interface block array", v76, v77, v78, v79, v6);
            return glpSAFailed();
          }

          v56 = v55;
          PrimitiveType = glpGetPrimitiveType(5u);
          v57 = glpCompilerGetAllocator(a1);
          MutableValue = glpMakeMutableValue(v57, PrimitiveType, 1, v58, v59, v60, v61, v62, v56);
        }

        v63 = glpCompilerRemapValue(a1, PrimitiveType, MutableValue);
        v89 = v92;
        v90 = v93;
        return glpMakeConstantValueFragment(a1, &v89, PrimitiveType, v63);
      }

      return glpSAFailed();
    }

    v89.n128_u64[0] = 0;
    v89.n128_u64[1] = &v89;
    v90 = 0x2000000000;
    v91 = 0;
    v85 = 0;
    v86 = &v85;
    v87 = 0x2000000000;
    v88 = 0;
    v17 = glpCompilerGetNameTable(a1);
    Name = glpVariableIdentifierNodeGetName(v16);
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 0x40000000;
    v84[2] = __glpSAMethodCall_block_invoke;
    v84[3] = &unk_278B4C400;
    v84[4] = &v89;
    v84[5] = &v85;
    glpNameTableGet(v17, Name, v19, 0, v84);
    v20 = v86[3];
    if (!v20 || *(v89.n128_u64[1] + 24) != 1)
    {
      v32 = 1;
      goto LABEL_26;
    }

    if (glpTypeGetKind(*(v20 + 64)) == 3)
    {
      if (glpBankTypeGetElementCount(*(v20 + 64)) != -1)
      {
        v21 = glpGetPrimitiveType(5u);
        v22 = glpCompilerGetAllocator(a1);
        v23 = glpBankTypeGetElementCount(*(v20 + 64));
        v29 = glpMakeMutableValue(v22, v21, 1, v24, v25, v26, v27, v28, v23);
        v30 = glpCompilerRemapValue(a1, v21, v29);
        v82 = v92;
        v83 = v93;
        ConstantValueFragment = glpMakeConstantValueFragment(a1, &v82, v21, v30);
LABEL_25:
        v16 = ConstantValueFragment;
        v32 = 0;
LABEL_26:
        _Block_object_dispose(&v85, 8);
        _Block_object_dispose(&v89, 8);
        if (!v32)
        {
          return v16;
        }

        goto LABEL_27;
      }

      v38 = glpCompilerGetInfoLog(a1);
      v82 = v92;
      v83 = v93;
      glpLogMessage(v38, 0, &v82, "Call to method '%.*s' of unsized interface block", v39, v40, v41, v42, v6);
    }

    else
    {
      v33 = glpCompilerGetInfoLog(a1);
      glpVariableIdentifierNodeGetName(v16);
      glpVariableIdentifierNodeGetName(v16);
      v82 = v92;
      v83 = v93;
      glpLogMessage(v33, 0, &v82, "Call to method '%.*s' of non-array interface block '%.*s'", v34, v35, v36, v37, v6);
    }

    ConstantValueFragment = glpSAFailed();
    goto LABEL_25;
  }

  return glpSAFailed();
}

uint64_t glpSAConstructorCall(uint64_t a1, uint64_t a2)
{
  if (glpSACall(a1, a2) == -1 || (v4 = glpConstructorCallNodeGetType(a2), v5 = glpSANode(a1, v4), v5 == -1) || (glpConstructorCallNodeSetType(a2, v5), result = glpCheckAndSanitizeConstructorCall(a1, a2), result == -1))
  {

    return glpSAFailed();
  }

  return result;
}

uint64_t glpSAPostincrement(uint64_t a1, uint64_t a2)
{
  if (glpSAIncrementOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpSAPostIncrementOrDecrement(a1, a2, 1);
  }
}

uint64_t glpSAPostdecrement(uint64_t a1, uint64_t a2)
{
  if (glpSAIncrementOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpSAPostIncrementOrDecrement(a1, a2, 0);
  }
}

uint64_t glpSAPreincrement(uint64_t a1, uint64_t a2)
{
  if (glpSAIncrementOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpSAPreIncrementOrDecrement(a1, a2, 1);
  }
}

uint64_t glpSAPredecrement(uint64_t a1, uint64_t a2)
{
  if (glpSAIncrementOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpSAPreIncrementOrDecrement(a1, a2, 0);
  }
}

uint64_t glpSAUnaryPlus(uint64_t a1, uint64_t a2)
{
  if (glpSAUnaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeUnaryMathOp(a1, a2);
  }
}

uint64_t glpSANegate(uint64_t a1, uint64_t a2)
{
  if (glpSAUnaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeUnaryMathOp(a1, a2);
  }
}

uint64_t glpSALogicalNot(uint64_t a1, uint64_t a2)
{
  if (glpSAUnaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeUnaryMathOp(a1, a2);
  }
}

uint64_t glpSABitwiseNot(uint64_t a1, uint64_t a2)
{
  if (glpSAUnaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeUnaryMathOp(a1, a2);
  }
}

uint64_t glpSAMultiply(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSADivide(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSAModulo(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSAAdd(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSASubtract(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSAShiftLeft(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSAShiftRight(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSALess(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    PrimitiveType = glpGetPrimitiveType(9u);
    glpASTNodeSetSaType(v5, PrimitiveType);
    if (glpCompilerDoesTrackPrecision(a1))
    {
      SaFlags = glpASTNodeGetSaFlags(v5);
      glpASTNodeSetSaFlags(v5, SaFlags & 0xFFFFFFFFFFFFFFE0);
    }

    return v5;
  }
}

uint64_t glpSALessEqual(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    PrimitiveType = glpGetPrimitiveType(9u);
    glpASTNodeSetSaType(v5, PrimitiveType);
    if (glpCompilerDoesTrackPrecision(a1))
    {
      SaFlags = glpASTNodeGetSaFlags(v5);
      glpASTNodeSetSaFlags(v5, SaFlags & 0xFFFFFFFFFFFFFFE0);
    }

    return v5;
  }
}

uint64_t glpSAGreater(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    PrimitiveType = glpGetPrimitiveType(9u);
    glpASTNodeSetSaType(v5, PrimitiveType);
    if (glpCompilerDoesTrackPrecision(a1))
    {
      SaFlags = glpASTNodeGetSaFlags(v5);
      glpASTNodeSetSaFlags(v5, SaFlags & 0xFFFFFFFFFFFFFFE0);
    }

    return v5;
  }
}

uint64_t glpSAGreaterEqual(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    PrimitiveType = glpGetPrimitiveType(9u);
    glpASTNodeSetSaType(v5, PrimitiveType);
    if (glpCompilerDoesTrackPrecision(a1))
    {
      SaFlags = glpASTNodeGetSaFlags(v5);
      glpASTNodeSetSaFlags(v5, SaFlags & 0xFFFFFFFFFFFFFFE0);
    }

    return v5;
  }
}

uint64_t glpSAEqual(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) != -1)
  {
    Lhs = glpBinaryOperatorNodeGetLhs(a2);
    Rhs = glpBinaryOperatorNodeGetRhs(a2);
    SaType = glpASTNodeGetSaType(Lhs);
    if (glpTypeGetKind(SaType))
    {
      if (glpEqualNodeGetIsFromSource(a2))
      {
        v7 = glpASTNodeGetSaType(Lhs);
        if (glpTypeGetKind(v7) == 2)
        {
          NameTable = glpCompilerGetNameTable(a1);
          if (glpNameTableGetGLSLVersion(NameTable) <= 1)
          {
            InfoLog = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(a2, &v41);
            v14 = "'==' disallowed on array types";
LABEL_24:
            glpLogMessage(InfoLog, 0, &v41, v14, v10, v11, v12, v13, v35);
            return glpSAFailed();
          }
        }
      }

      v15 = glpASTNodeGetSaType(Lhs);
      v16 = glpASTNodeGetSaType(Rhs);
      if (!glpTypesEqual(v15, v16))
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v41);
        v14 = "Incompatible types in '=='";
        goto LABEL_24;
      }

      v41 = 0uLL;
      v42 = 0;
      glpASTNodeGetLocation(a2, &v41);
      Allocator = glpCompilerGetAllocator(a1);
      v39 = v41;
      v40 = v42;
      glpMakeCommaExprNode(Allocator, &v39, 0);
      v19 = v18;
      v37 = 0;
      v38 = 0;
      glpHandleSideEffectsForExpr(a1, Lhs, &v38, &v37);
      if (v37)
      {
        v20 = glpCompilerGetAllocator(a1);
        glpCommaExprNodeAddExpr(v20, v19, v37);
        v37 = 0;
      }

      v35 = 0;
      v36 = 0;
      glpHandleSideEffectsForExpr(a1, Rhs, &v36, &v35);
      if (v35)
      {
        v21 = glpCompilerGetAllocator(a1);
        glpCommaExprNodeAddExpr(v21, v19, v35);
        v35 = 0;
      }

      AccessorCount = glpGetAccessorCount(v38);
      if (AccessorCount)
      {
        v23 = AccessorCount;
        v24 = 0;
        v25 = 0;
        do
        {
          Accessor = glpMakeAccessor(a1, v38, v24);
          v27 = glpMakeAccessor(a1, v36, v24);
          v39 = v41;
          v40 = v42;
          EqualFragment = glpMakeEqualFragment(a1, &v39, Accessor, v27);
          if (v25)
          {
            v39 = v41;
            v40 = v42;
            EqualFragment = glpMakeLogicalAndFragment(a1, &v39, v25, EqualFragment);
          }

          v24 = (v24 + 1);
          v25 = EqualFragment;
        }

        while (v23 != v24);
      }

      else
      {
        EqualFragment = 0;
      }

      v33 = glpCompilerGetAllocator(a1);
      glpCommaExprNodeAddExpr(v33, v19, EqualFragment);
      v30 = glpSANode(a1, v19);
LABEL_27:
      if (glpCompilerDoesTrackPrecision(a1))
      {
        SaFlags = glpASTNodeGetSaFlags(v30);
        glpASTNodeSetSaFlags(v30, SaFlags & 0xFFFFFFFFFFFFFFE0);
      }

      return v30;
    }

    v29 = glpAnalyzeBinaryMathOp(a1, a2);
    if (v29 != -1)
    {
      v30 = v29;
      PrimitiveType = glpGetPrimitiveType(9u);
      glpASTNodeSetSaType(v30, PrimitiveType);
      goto LABEL_27;
    }
  }

  return glpSAFailed();
}

uint64_t glpSANotEqual(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) != -1)
  {
    Lhs = glpBinaryOperatorNodeGetLhs(a2);
    Rhs = glpBinaryOperatorNodeGetRhs(a2);
    SaType = glpASTNodeGetSaType(Lhs);
    if (glpTypeGetKind(SaType))
    {
      if (glpNotEqualNodeGetIsFromSource(a2))
      {
        v7 = glpASTNodeGetSaType(Lhs);
        if (glpTypeGetKind(v7) == 2)
        {
          NameTable = glpCompilerGetNameTable(a1);
          if (glpNameTableGetGLSLVersion(NameTable) <= 1)
          {
            InfoLog = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(a2, &v41);
            v14 = "'!=' disallowed on array types";
LABEL_24:
            glpLogMessage(InfoLog, 0, &v41, v14, v10, v11, v12, v13, v35);
            return glpSAFailed();
          }
        }
      }

      v15 = glpASTNodeGetSaType(Lhs);
      v16 = glpASTNodeGetSaType(Rhs);
      if (!glpTypesEqual(v15, v16))
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v41);
        v14 = "Incompatible types in '!='";
        goto LABEL_24;
      }

      v41 = 0uLL;
      v42 = 0;
      glpASTNodeGetLocation(a2, &v41);
      Allocator = glpCompilerGetAllocator(a1);
      v39 = v41;
      v40 = v42;
      glpMakeCommaExprNode(Allocator, &v39, 0);
      v19 = v18;
      v37 = 0;
      v38 = 0;
      glpHandleSideEffectsForExpr(a1, Lhs, &v38, &v37);
      if (v37)
      {
        v20 = glpCompilerGetAllocator(a1);
        glpCommaExprNodeAddExpr(v20, v19, v37);
        v37 = 0;
      }

      v35 = 0;
      v36 = 0;
      glpHandleSideEffectsForExpr(a1, Rhs, &v36, &v35);
      if (v35)
      {
        v21 = glpCompilerGetAllocator(a1);
        glpCommaExprNodeAddExpr(v21, v19, v35);
        v35 = 0;
      }

      AccessorCount = glpGetAccessorCount(v38);
      if (AccessorCount)
      {
        v23 = AccessorCount;
        v24 = 0;
        v25 = 0;
        do
        {
          Accessor = glpMakeAccessor(a1, v38, v24);
          v27 = glpMakeAccessor(a1, v36, v24);
          v39 = v41;
          v40 = v42;
          NotEqualFragment = glpMakeNotEqualFragment(a1, &v39, Accessor, v27);
          if (v25)
          {
            v39 = v41;
            v40 = v42;
            NotEqualFragment = glpMakeLogicalOrFragment(a1, &v39, v25, NotEqualFragment);
          }

          v24 = (v24 + 1);
          v25 = NotEqualFragment;
        }

        while (v23 != v24);
      }

      else
      {
        NotEqualFragment = 0;
      }

      v33 = glpCompilerGetAllocator(a1);
      glpCommaExprNodeAddExpr(v33, v19, NotEqualFragment);
      v30 = glpSANode(a1, v19);
LABEL_27:
      if (glpCompilerDoesTrackPrecision(a1))
      {
        SaFlags = glpASTNodeGetSaFlags(v30);
        glpASTNodeSetSaFlags(v30, SaFlags & 0xFFFFFFFFFFFFFFE0);
      }

      return v30;
    }

    v29 = glpAnalyzeBinaryMathOp(a1, a2);
    if (v29 != -1)
    {
      v30 = v29;
      PrimitiveType = glpGetPrimitiveType(9u);
      glpASTNodeSetSaType(v30, PrimitiveType);
      goto LABEL_27;
    }
  }

  return glpSAFailed();
}

uint64_t glpSALogicalAnd(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    SaType = glpASTNodeGetSaType(v4);
    PrimitiveType = glpGetPrimitiveType(9u);
    if (!glpTypesEqual(SaType, PrimitiveType))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v5, &v15);
      glpLogMessage(InfoLog, 0, &v15, "logical operator must be of type BOOL", v9, v10, v11, v12, v14);
      return glpSAFailed();
    }

    return v5;
  }
}

uint64_t glpSALogicalOr(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    SaType = glpASTNodeGetSaType(v4);
    PrimitiveType = glpGetPrimitiveType(9u);
    if (!glpTypesEqual(SaType, PrimitiveType))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v5, &v15);
      glpLogMessage(InfoLog, 0, &v15, "logical operator must be of type BOOL", v9, v10, v11, v12, v14);
      return glpSAFailed();
    }

    return v5;
  }
}

uint64_t glpSALogicalXor(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1 || (v4 = glpAnalyzeBinaryMathOp(a1, a2), v4 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v5 = v4;
    SaType = glpASTNodeGetSaType(v4);
    PrimitiveType = glpGetPrimitiveType(9u);
    if (!glpTypesEqual(SaType, PrimitiveType))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v5, &v15);
      glpLogMessage(InfoLog, 0, &v15, "logical operator must be of type BOOL", v9, v10, v11, v12, v14);
      return glpSAFailed();
    }

    return v5;
  }
}

uint64_t glpSABitwiseAnd(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSABitwiseOr(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSABitwiseXor(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) == -1)
  {

    return glpSAFailed();
  }

  else
  {

    return glpAnalyzeBinaryMathOp(a1, a2);
  }
}

uint64_t glpSAIfExpr(uint64_t a1, uint64_t a2)
{
  Condition = glpIfExprNodeGetCondition(a2);
  v5 = glpSANode(a1, Condition);
  v6 = v5 == -1;
  if (v5 != -1)
  {
    glpIfExprNodeSetCondition(a2, v5);
  }

  IfExpr = glpIfExprNodeGetIfExpr(a2);
  v8 = glpSANode(a1, IfExpr);
  if (v8 == -1)
  {
    v6 = 1;
  }

  else
  {
    glpIfExprNodeSetIfExpr(a2, v8);
  }

  ElseExpr = glpIfExprNodeGetElseExpr(a2);
  v10 = glpSANode(a1, ElseExpr);
  if (v10 == -1 || (glpIfExprNodeSetElseExpr(a2, v10), v6))
  {

    return glpSAFailed();
  }

  v12 = glpIfExprNodeGetCondition(a2);
  SaType = glpASTNodeGetSaType(v12);
  PrimitiveType = glpGetPrimitiveType(9u);
  if (!glpTypesEqual(SaType, PrimitiveType))
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v61);
    v31 = "Condition must be of type BOOL";
LABEL_24:
    glpLogMessage(InfoLog, 0, &v61, v31, v27, v28, v29, v30, v59);
    return glpSAFailed();
  }

  v15 = glpIfExprNodeGetIfExpr(a2);
  v16 = glpIfExprNodeGetElseExpr(a2);
  v17 = glpASTNodeGetSaType(v15);
  v18 = glpASTNodeGetSaType(v16);
  v19 = glpASTNodeGetSaFlags(v15) & 0x1F;
  v20 = glpASTNodeGetSaFlags(v16) & 0x1F;
  if (glpTypesEqual(v17, v18))
  {
    goto LABEL_13;
  }

  if (glpTypeGetKind(v17) || glpTypeGetKind(v18))
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a2, &v61);
    v31 = "Types in conditional operator do not match";
    goto LABEL_24;
  }

  ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
  v49 = glpPrimitiveTypeGetPrimitiveType(v17);
  v50 = glpPrimitiveTypeGetPrimitiveType(v18);
  v60 = v50;
  if (glpCanConvert(v50, v49, ImplicitConversionPolicy))
  {
    v51 = glpConvert(a1, v16, v17, v19);
    glpIfExprNodeSetElseExpr(a2, v51);
  }

  else
  {
    if (!glpCanConvert(v49, v60, ImplicitConversionPolicy))
    {
      v53 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v61);
      v54 = glpPrimitiveTypeToString(v49);
      glpPrimitiveTypeToString(v60);
      glpLogMessage(v53, 0, &v61, "Types '%s' and '%s' in conditional operator do not match (and no applicable implicit type conversion)", v55, v56, v57, v58, v54);
      return glpSAFailed();
    }

    v52 = glpConvert(a1, v15, v18, v20);
    glpIfExprNodeSetIfExpr(a2, v52);
  }

LABEL_13:
  if (v19 != v20)
  {
    if (v19 != 31 && v19)
    {
      if (v19 <= v20)
      {
        v15 = glpConvert(a1, v15, v17, v20);
        glpIfExprNodeSetIfExpr(a2, v15);
      }

      else
      {
        v16 = glpConvert(a1, v16, v18, v19);
        glpIfExprNodeSetElseExpr(a2, v16);
      }
    }

    else
    {
      glpPushdownPrecision(a1, v15, v20);
    }
  }

  Allocator = glpCompilerGetAllocator(a1);
  ValueHash = glpCompilerGetValueHash(a1);
  v23 = glpIfExprNodeGetCondition(a2);
  v24 = glpConstantFold(Allocator, ValueHash, v23);
  if (!glpIsConstantNode(v24))
  {
    v33 = glpCompilerGetAllocator(a1);
    glpASTNodeGetLocation(a2, &v61);
    glpMakeTypeIdentifierNode(v33, &v61, "<<BUG: placeholder type still exists>>", 0x781A7BE300000026);
    v35 = v34;
    v36 = glpIfExprNodeGetIfExpr(a2);
    v37 = glpASTNodeGetSaType(v36);
    glpASTNodeSetSaType(v35, v37);
    glpASTNodeSetSaFlags(v35, v19);
    v38 = glpIfExprNodeGetCondition(a2);
    v39 = glpASTNodeGetSaFlags(v38) | 0x1F;
    SaFlags = glpASTNodeGetSaFlags(v15);
    v41 = SaFlags & glpASTNodeGetSaFlags(v16);
    glpASTNodeGetLocation(a2, &v61);
    v42 = glpCompilerNewTempName(a1);
    v44 = v43;
    v45 = glpIfExprNodeGetCondition(a2);
    v46 = glpIfExprNodeGetIfExpr(a2);
    v47 = glpIfExprNodeGetElseExpr(a2);
    IfExprFragment = glpMakeIfExprFragment(a1, &v61, v42, v44, v35, v45, v46, v47);
    glpASTNodeSetSaFlags(v35, v39 & v41);
    return IfExprFragment;
  }

  if (*glpConstantNodeGetValue(v24))
  {
    v25 = glpIfExprNodeGetIfExpr(a2);
  }

  else
  {
    v25 = glpIfExprNodeGetElseExpr(a2);
  }

  return glpSANode(a1, v25);
}

uint64_t glpSAAssign(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (glpSABinaryOperator(a1, a2) != -1)
  {
    Lhs = glpBinaryOperatorNodeGetLhs(v2);
    Rhs = glpBinaryOperatorNodeGetRhs(v2);
    if (!glpIsLValueNode(Lhs))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v92);
      v11 = "Left-hand-side of assignment must be an lvalue";
      goto LABEL_11;
    }

    if ((glpASTNodeGetSaFlags(Lhs) & 0x60) != 0)
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v92);
      v11 = "Left-hand-side of assignment must not be const";
LABEL_11:
      glpLogMessage(InfoLog, 0, &v92, v11, v7, v8, v9, v10, v85);
      return glpSAFailed();
    }

    if ((glpASTNodeGetSaFlags(Lhs) & 0x300) != 0)
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v92);
      v11 = "Left-hand-side of assignment must not be read-only";
      goto LABEL_11;
    }

    if (glpAssignNodeGetIsFromSource(v2))
    {
      SaType = glpASTNodeGetSaType(Lhs);
      if (glpTypeGetSamplerCount(SaType))
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v2, &v92);
        v11 = "Cannot assign samplers";
        goto LABEL_11;
      }
    }

    v14 = glpASTNodeGetSaType(Lhs);
    if (glpTypeGetKind(v14) != 1)
    {
      v15 = glpASTNodeGetSaType(Lhs);
      if (glpTypeGetKind(v15) != 2)
      {
        v16 = glpASTNodeGetSaType(Lhs);
        if (glpTypeGetKind(v16))
        {
          InfoLog = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v2, &v92);
          v11 = "You can't assign non-struct non-primitives directly.";
          goto LABEL_11;
        }
      }
    }

    v17 = glpASTNodeGetSaType(Lhs);
    v18 = glpASTNodeGetSaType(Rhs);
    if (!glpTypesEqual(v17, v18))
    {
      v23 = glpASTNodeGetSaType(Lhs);
      if (glpTypeGetKind(v23) || (v24 = glpASTNodeGetSaType(Rhs), glpTypeGetKind(v24)))
      {
        v25 = glpASTNodeGetSaType(Lhs);
        Allocator = glpCompilerGetAllocator(a1);
        glpTypeHumanReadableDescription(v25, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
        v28 = v27;
        v29 = glpASTNodeGetSaType(Rhs);
        v30 = glpCompilerGetAllocator(a1);
        glpTypeHumanReadableDescription(v29, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v30);
        v31 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v2, &v92);
        glpLogMessage(v31, 0, &v92, "Incompatible types (%.*s and %.*s) in assignment", v32, v33, v34, v35, v28);
        return glpSAFailed();
      }

      v67 = glpASTNodeGetSaType(Lhs);
      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v67);
      v69 = glpASTNodeGetSaType(Rhs);
      v70 = glpPrimitiveTypeGetPrimitiveType(v69);
      ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
      LODWORD(v70) = glpCanConvert(v70, PrimitiveType, ImplicitConversionPolicy);
      v72 = glpASTNodeGetSaType(Lhs);
      if (!v70)
      {
        v75 = glpCompilerGetAllocator(a1);
        glpTypeHumanReadableDescription(v72, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v75);
        v77 = v76;
        v78 = glpASTNodeGetSaType(Rhs);
        v79 = glpCompilerGetAllocator(a1);
        glpTypeHumanReadableDescription(v78, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v79);
        v80 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v2, &v92);
        glpLogMessage(v80, 0, &v92, "Incompatible types (%.*s and %.*s) in assignment (and no available implicit conversion)", v81, v82, v83, v84, v77);
        return glpSAFailed();
      }

      SaFlags = glpASTNodeGetSaFlags(Lhs);
      v74 = glpConvert(a1, Rhs, v72, SaFlags & 0x1F);
      glpBinaryOperatorNodeSetRhs(v2, v74);
    }

    v19 = glpASTNodeGetSaFlags(Rhs) & 0x1F;
    v20 = glpASTNodeGetSaType(Lhs);
    if (glpTypeIsAtomic(v20) && (glpASTNodeGetSaFlags(Lhs) & 0x1F) != v19)
    {
      if (v19 != 31 && v19)
      {
        if ((glpASTNodeGetSaFlags(Lhs) & 0x1F) != 0)
        {
          v65 = glpASTNodeGetSaType(Lhs);
          v66 = glpASTNodeGetSaFlags(Lhs);
          Rhs = glpConvert(a1, Rhs, v65, v66 & 0x1F);
          glpBinaryOperatorNodeSetRhs(v2, Rhs);
        }

        else
        {
          glpASTNodeGetSaFlags(Rhs);
        }

LABEL_34:
        if (glpDerefNodeGetOffset(Lhs))
        {
          Offset = glpDerefNodeGetOffset(Lhs);
          Swizzle = glpOffsetNodeGetSwizzle(Offset);
          if (glpSwizzleHasDuplicateComponents(Swizzle))
          {
            InfoLog = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(v2, &v92);
            v11 = "Destination swizzle may not have duplicate components";
            goto LABEL_11;
          }
        }

        v39 = glpASTNodeGetSaType(Lhs);
        glpASTNodeSetSaType(v2, v39);
        v40 = glpASTNodeGetSaType(Lhs);
        if (glpTypeIsAtomic(v40))
        {
          if (!*(glpLValueNodeGetVariableExtra(Lhs) + 8) || (VariableExtra = glpLValueNodeGetVariableExtra(Lhs), !glpLayoutObjectFind(*(VariableExtra + 8), 29)))
          {
LABEL_54:
            if (glpIsBinaryOperatorNode(v2))
            {
              Expr = glpBinaryOperatorNodeGetLhs(v2);
            }

            else
            {
              if (!glpIsCommaExprNode(v2))
              {
                v64 = v2;
                v63 = 0;
                goto LABEL_59;
              }

              ExprCount = glpCommaExprNodeGetExprCount(v2);
              Expr = glpCommaExprNodeGetExpr(v2, ExprCount - 1);
            }

            v63 = glpASTNodeGetSaFlags(Expr) & 0x1F;
            v64 = v2;
LABEL_59:
            glpASTNodeSetSaFlags(v64, v63);
            return v2;
          }

          v42 = glpASTNodeGetSaType(Lhs);
          v43 = glpDerefNodeGetOffset(Lhs);
          OffsetExpr = glpOffsetNodeGetOffsetExpr(v43);
          v45 = glpHandleGetterSetter(a1, Lhs, v42, OffsetExpr, Rhs, "setter", 0x7663306B00000006, 0);
        }

        else
        {
          if (glpAssignNodeGetIsFromSource(v2))
          {
            v46 = glpASTNodeGetSaType(Lhs);
            if (glpTypeGetKind(v46) == 2)
            {
              NameTable = glpCompilerGetNameTable(a1);
              if (glpNameTableGetGLSLVersion(NameTable) <= 1)
              {
                InfoLog = glpCompilerGetInfoLog(a1);
                glpASTNodeGetLocation(v2, &v92);
                v11 = "'=' disallowed on array types";
                goto LABEL_11;
              }
            }
          }

          v92 = 0uLL;
          v93 = 0;
          glpASTNodeGetLocation(v2, &v92);
          v48 = glpCompilerGetAllocator(a1);
          v90 = v92;
          v91 = v93;
          glpMakeCommaExprNode(v48, &v90, 0);
          v50 = v49;
          v88 = 0;
          v89 = 0;
          glpHandleSideEffectsForExpr(a1, Lhs, &v89, &v88);
          if (v88)
          {
            v51 = glpCompilerGetAllocator(a1);
            glpCommaExprNodeAddExpr(v51, v50, v88);
            v88 = 0;
          }

          v86 = 0;
          v87 = 0;
          glpHandleSideEffectsForExpr(a1, Rhs, &v87, &v86);
          if (v86)
          {
            v52 = glpCompilerGetAllocator(a1);
            glpCommaExprNodeAddExpr(v52, v50, v86);
            v86 = 0;
          }

          AccessorCount = glpGetAccessorCount(v89);
          if (AccessorCount)
          {
            v54 = AccessorCount;
            v55 = 0;
            do
            {
              v56 = glpCompilerGetAllocator(a1);
              Accessor = glpMakeAccessor(a1, v89, v55);
              v58 = glpMakeAccessor(a1, v87, v55);
              v90 = v92;
              v91 = v93;
              AssignFragment = glpMakeAssignFragment(a1, &v90, Accessor, v58);
              glpCommaExprNodeAddExpr(v56, v50, AssignFragment);
              v55 = (v55 + 1);
            }

            while (v54 != v55);
          }

          v60 = glpCompilerGetAllocator(a1);
          glpCommaExprNodeAddExpr(v60, v50, v89);
          v45 = glpSANode(a1, v50);
        }

        v2 = v45;
        goto LABEL_54;
      }
    }

    else
    {
      v21 = glpASTNodeGetSaType(Lhs);
      if (glpTypeIsAtomic(v21))
      {
        goto LABEL_34;
      }

      if (v19)
      {
        goto LABEL_34;
      }

      v22 = glpASTNodeGetSaType(Lhs);
      if (!glpCompilerDoesTypeRequirePrecision(a1, v22))
      {
        goto LABEL_34;
      }
    }

    v36 = glpASTNodeGetSaFlags(Lhs);
    glpPushdownPrecision(a1, Rhs, v36);
    goto LABEL_34;
  }

  return glpSAFailed();
}

uint64_t glpSAOpAssign(uint64_t a1, uint64_t a2)
{
  if (glpSABinaryOperator(a1, a2) != -1)
  {
    Lhs = glpBinaryOperatorNodeGetLhs(a2);
    Rhs = glpBinaryOperatorNodeGetRhs(a2);
    SaType = glpASTNodeGetSaType(Lhs);
    if (glpCompilerDoesTypeRequirePrecision(a1, SaType) && (glpASTNodeGetSaFlags(Rhs) & 0x1F) == 0)
    {
      SaFlags = glpASTNodeGetSaFlags(Lhs);
      glpPushdownPrecision(a1, Rhs, SaFlags);
    }

    v31 = 0;
    v32 = 0;
    glpHandleSideEffectsForExpr(a1, Lhs, &v32, &v31);
    v29 = 0;
    v30 = 0;
    glpHandleSideEffectsForExpr(a1, Rhs, &v30, &v29);
    Desugar = glpOpAssignNodeGetDesugar(a2);
    Allocator = glpCompilerGetAllocator(a1);
    Location = glpASTNodeGetLocation(a2, &v28);
    v11 = Desugar(Allocator, &v28, Location);
    glpBinaryOperatorNodeSetLhs(v11, v32);
    glpBinaryOperatorNodeSetRhs(v11, v30);
    v12 = glpCompilerGetAllocator(a1);
    glpASTNodeGetLocation(a2, &v28);
    AssignNode = glpMakeAssignNode(v12, &v28, 0);
    v14 = glpDuplicateDerefOrConstant(a1, v32);
    glpBinaryOperatorNodeSetLhs(AssignNode, v14);
    glpBinaryOperatorNodeSetRhs(AssignNode, v11);
    if (v29 && glpIsCommaExprNode(v29))
    {
      v15 = glpCommaExprNodeGetExprCount(v29) - 1;
      glpCommaExprNodeSetExpr(v29, v15, 0);
      v16 = v29;
      glpASTNodeSetSaType(v29, 0);
    }

    else
    {
      v17 = glpCompilerGetAllocator(a1);
      glpASTNodeGetLocation(a2, &v28);
      glpMakeCommaExprNode(v17, &v28, 0);
      v16 = v18;
      if (v29)
      {
        v19 = glpCompilerGetAllocator(a1);
        glpCommaExprNodeAddExpr(v19, v16, v29);
      }

      v15 = -1;
    }

    if (v31)
    {
      if (glpIsCommaExprNode(v31))
      {
        ExprCount = glpCommaExprNodeGetExprCount(v31);
        v21 = ExprCount - 1;
        if (ExprCount != 1)
        {
          v22 = 0;
          do
          {
            Expr = glpCommaExprNodeGetExpr(v31, v22);
            if ((v15 & 0x80000000) != 0)
            {
              v24 = glpCompilerGetAllocator(a1);
              glpCommaExprNodeAddExpr(v24, v16, Expr);
            }

            else
            {
              glpCommaExprNodeSetExpr(v16, v15, Expr);
              v15 = -1;
            }

            glpCommaExprNodeSetExpr(v31, v22++, 0);
          }

          while (v21 != v22);
        }

        glpASTNodeSetSaType(v16, 0);
      }

      else if (v31)
      {
        if ((v15 & 0x80000000) != 0)
        {
          v26 = glpCompilerGetAllocator(a1);
          glpCommaExprNodeAddExpr(v26, v16, v31);
        }

        else
        {
          glpCommaExprNodeSetExpr(v16, v15, v31);
        }

        goto LABEL_29;
      }
    }

    if ((v15 & 0x80000000) == 0)
    {
      glpCommaExprNodeSetExpr(v16, v15, AssignNode);
      return glpSANode(a1, v16);
    }

LABEL_29:
    v27 = glpCompilerGetAllocator(a1);
    glpCommaExprNodeAddExpr(v27, v16, AssignNode);
    return glpSANode(a1, v16);
  }

  return glpSAFailed();
}

uint64_t glpSACommaExpr(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!glpCommaExprNodeGetExprCount(a2))
  {
    goto LABEL_8;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    Expr = glpCommaExprNodeGetExpr(v2, v4);
    v7 = glpSANode(a1, Expr);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpCommaExprNodeSetExpr(v2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpCommaExprNodeGetExprCount(v2));
  if (!v5)
  {

    return glpSAFailed();
  }

  else
  {
LABEL_8:
    ExprCount = glpCommaExprNodeGetExprCount(v2);
    v9 = glpCommaExprNodeGetExpr(v2, ExprCount - 1);
    SaType = glpASTNodeGetSaType(v9);
    glpASTNodeSetSaType(v2, SaType);
    if (glpCommaExprNodeGetExprCount(v2))
    {
      v11 = 0;
      v12 = 96;
      while (1)
      {
        v13 = glpCommaExprNodeGetExpr(v2, v11);
        if (v13)
        {
          v14 = v13;
          v12 &= glpASTNodeGetSaFlags(v13);
          if (glpCommaExprNodeGetIsFromSource(v2))
          {
            if (v11 != glpCommaExprNodeGetExprCount(v2) - 1)
            {
              v15 = glpASTNodeGetSaType(v14);
              if (glpCompilerDoesTypeRequirePrecision(a1, v15) && (glpASTNodeGetSaFlags(v14) & 0x1F) == 0)
              {
                v16 = glpASTNodeGetSaType(v14);
                DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, v16);
                if (!DefaultPrecisionForType)
                {
                  v22 = glpASTNodeGetSaType(v14);
                  Allocator = glpCompilerGetAllocator(a1);
                  glpTypeHumanReadableDescription(v22, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
                  v25 = v24;
                  InfoLog = glpCompilerGetInfoLog(a1);
                  glpASTNodeGetLocation(v2, &v31);
                  glpLogMessage(InfoLog, 0, &v31, "Expression of type '%.*s' - precision can not be inferred and no default precision available", v27, v28, v29, v30, v25);
                  return glpSAFailed();
                }

                glpPushdownPrecision(a1, v14, DefaultPrecisionForType);
              }
            }
          }
        }

        if (++v11 >= glpCommaExprNodeGetExprCount(v2))
        {
          goto LABEL_20;
        }
      }
    }

    v12 = 96;
LABEL_20:
    v18 = glpCommaExprNodeGetExprCount(v2);
    v19 = glpCommaExprNodeGetExpr(v2, v18 - 1);
    SaFlags = glpASTNodeGetSaFlags(v19);
    glpASTNodeSetSaFlags(v2, SaFlags & 0x1F | v12);
    return v2;
  }
}

uint64_t glpSAParameterDeclaration(uint64_t a1, uint64_t a2)
{
  Type = glpParameterDeclarationNodeGetType(a2);
  v5 = glpSANode(a1, Type);
  if (v5 != -1)
  {
    glpParameterDeclarationNodeSetType(a2, v5);
    v6 = glpParameterDeclarationNodeGetType(a2);
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    glpASTNodeGetLocation(a2, &v28);
    if (glpEvaluateTypeNode(a1, &v28, 5, 1, v6, 0, &v32, &v31, &v30, &v29))
    {
      if (glpCompilerUsingStyleGuide(a1) && !glpTypeIsAtomic(v32))
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v28);
        glpLogMessage(InfoLog, 2u, &v28, "Passing large objects to functions may result in significant unnecessary copying", v8, v9, v10, v11, v27);
      }

      Name = glpParameterDeclarationNodeGetName(a2);
      v14 = glpCheckName(a1, a2, Name, v13);
      if (v14 != -1)
      {
        v15 = v14;
        if (glpTypeGetKind(v32) != 2 || glpArrayTypeGetElementCount(v32) != -1)
        {
          SaType = glpASTNodeGetSaType(v6);
          glpASTNodeSetSaType(v15, SaType);
          if (v30)
          {
            v17 = *v30;
            if (*v30)
            {
              v18 = v31;
              while (1)
              {
                v19 = *(v17 + 2);
                v17 = *v17;
                if (v19 == 99)
                {
                  break;
                }

                if (v19 == 98)
                {
                  v18 |= 0x800100uLL;
LABEL_16:
                  v31 = v18;
                }

                if (!v17)
                {
                  goto LABEL_18;
                }
              }

              v18 |= 0x1000000uLL;
              goto LABEL_16;
            }

LABEL_18:
            Allocator = glpCompilerGetAllocator(a1);
            glpDestroyLayoutObject(Allocator, v30);
            v30 = 0;
          }

          glpASTNodeSetSaFlags(v15, v31 | 0x400000);
          glpParameterDeclarationNodeSetType(v15, 0);
          return v15;
        }

        v22 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v15, &v28);
        glpLogMessage(v22, 0, &v28, "Unsized arrays are not allowed as parameter or return types.", v23, v24, v25, v26, v27);
      }
    }

    return glpSAFailed();
  }

  return glpSAFailed();
}

uint64_t glpSAFunctionPrototype(void *a1, uint64_t a2)
{
  v237[1] = *MEMORY[0x277D85DE8];
  if (glpFunctionPrototypeNodeGetParameterCount(a2) == 1)
  {
    Parameter = glpFunctionPrototypeNodeGetParameter(a2, 0);
    Type = glpParameterDeclarationNodeGetType(Parameter);
    if (glpIsPrimitiveTypeNode(Type) && !glpPrimitiveTypeNodeGetType(Type))
    {
      glpFunctionPrototypeNodeClearParameters(a2);
    }
  }

  ReturnType = glpFunctionPrototypeNodeGetReturnType(a2);
  v7 = glpSANode(a1, ReturnType);
  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    glpFunctionPrototypeNodeSetReturnType(a2, v7);
    v8 = 1;
  }

  ReturnOutParam = glpFunctionPrototypeNodeGetReturnOutParam(a2);
  v10 = glpSANode(a1, ReturnOutParam);
  if (v10 == -1)
  {
    v8 = 0;
  }

  else
  {
    glpFunctionPrototypeNodeSetReturnOutParam(a2, v10);
  }

  if (glpFunctionPrototypeNodeGetParameterCount(a2))
  {
    v11 = 0;
    do
    {
      v12 = glpFunctionPrototypeNodeGetParameter(a2, v11);
      v13 = glpSANode(a1, v12);
      if (v13 == -1)
      {
        v8 = 0;
      }

      else
      {
        glpFunctionPrototypeNodeSetParameter(a2, v11, v13);
      }

      ++v11;
    }

    while (v11 < glpFunctionPrototypeNodeGetParameterCount(a2));
  }

  if (v8)
  {
    Name = glpFunctionPrototypeNodeGetName(a2);
    v16 = v15;
    ImmediateSAContext = glpCompilerGetImmediateSAContext(a1);
    if (!glpIsTopLevelNode(ImmediateSAContext) && !glpIsFunctionDefinitionNode(ImmediateSAContext))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v231);
      glpLogMessage(InfoLog, 0, &v231, "Prototype for function '%.*s' must occur at the top level", v30, v31, v32, v33, v16);
      goto LABEL_31;
    }

    v18 = glpFunctionPrototypeNodeGetReturnType(a2);
    v236 = 0;
    v237[0] = 0;
    v234 = 0;
    v235 = 0;
    glpASTNodeGetLocation(a2, &v231);
    if (!glpEvaluateTypeNode(a1, &v231, 4, 1, v18, 0, v237, &v236, &v235, &v234))
    {
      goto LABEL_31;
    }

    v19 = glpCheckName(a1, a2, Name, v16);
    if (v19 == -1)
    {
      goto LABEL_31;
    }

    v20 = v19;
    if (glpStringsEqual("main", 0x83863A00000004uLL, Name, v16))
    {
      if (glpTypeGetKind(v237[0]) || glpPrimitiveTypeGetPrimitiveType(v237[0]))
      {
        v21 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v20, &v231);
        v26 = "main() must return void";
LABEL_26:
        glpLogMessage(v21, 0, &v231, v26, v22, v23, v24, v25, v205[0]);
LABEL_31:
        SubroutineType = glpSAFailed();
LABEL_32:
        v35 = *MEMORY[0x277D85DE8];
        return SubroutineType;
      }

      if (glpFunctionPrototypeNodeGetParameterCount(v20))
      {
        v21 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v20, &v231);
        v26 = "main() may not take any arguments";
        goto LABEL_26;
      }
    }

    ParameterCount = glpFunctionPrototypeNodeGetParameterCount(v20);
    v205[1] = v205;
    MEMORY[0x28223BE20](ParameterCount);
    v38 = v205 - v37;
    bzero(v205 - v37, v39);
    v40 = glpFunctionPrototypeNodeGetParameterCount(v20);
    MEMORY[0x28223BE20](v40);
    v42 = v205 - v41;
    bzero(v205 - v41, v43);
    v44 = glpFunctionPrototypeNodeGetParameterCount(v20);
    MEMORY[0x28223BE20](v44);
    v46 = v205 - v45;
    bzero(v205 - v45, v47);
    if (glpFunctionPrototypeNodeGetParameterCount(v20))
    {
      v48 = 0;
      do
      {
        v49 = glpFunctionPrototypeNodeGetParameter(v20, v48);
        *&v38[8 * v48] = glpASTNodeGetSaFlags(v49);
        *&v42[8 * v48] = glpASTNodeGetSaType(v49);
        *&v46[8 * v48++] = 0;
      }

      while (v48 < glpFunctionPrototypeNodeGetParameterCount(v20));
    }

    Allocator = glpCompilerGetAllocator(a1);
    v51 = v237[0];
    v52 = glpFunctionPrototypeNodeGetParameterCount(v20);
    FunctionType = glpMakeFunctionType(Allocator, v51, v52, v42, v38, v46);
    glpASTNodeSetSaType(v20, FunctionType);
    v54 = v236;
    v207 = v20;
    if (v235)
    {
      v55 = *v235;
      if (*v235)
      {
        v56 = 0;
        do
        {
          v57 = *(v55 + 2);
          if (v57 > 93)
          {
            v58 = v54 | 0x20000;
            v59 = v54 | 0x40000;
            if (v57 != 97)
            {
              v59 = v54;
            }

            if (v57 != 96)
            {
              v58 = v59;
            }

            v60 = v54 | 0x8000;
            v61 = v54 | 0x10000;
            if (v57 != 95)
            {
              v61 = v54;
            }

            if (v57 != 94)
            {
              v60 = v61;
            }

            if (v57 <= 95)
            {
              v54 = v60;
            }

            else
            {
              v54 = v58;
            }
          }

          else if (v57 > 91)
          {
            v62 = v54 | 0x800;
            if (v57 != 93)
            {
              v62 = v54;
            }

            if (v57 == 92)
            {
              v54 |= 0x1000uLL;
            }

            else
            {
              v54 = v62;
            }
          }

          else if (v57 == 32)
          {
            v54 |= 0x4000uLL;
            v56 = *(v55 + 4);
          }

          else if (v57 == 91)
          {
            v54 |= 0x2000uLL;
          }

          v55 = *v55;
        }

        while (v55);
      }

      else
      {
        v56 = 0;
      }

      v63 = glpCompilerGetAllocator(a1);
      glpDestroyLayoutObject(v63, v235);
      v235 = 0;
    }

    else
    {
      v56 = 0;
    }

    NameTable = glpCompilerGetNameTable(a1);
    v65 = glpCompilerGetAllocator(a1);
    v66 = glpAggregateTypeMangleName(FunctionType, Name, v16, v65);
    v68 = v67;
    v69 = glpCompilerGetAllocator(a1);
    v206 = FunctionType;
    glpMakeFunctionObject(v69, FunctionType, v54, Name, v16, v66, v68);
    FunctionObject = v70;
    *(v70 + 92) = v56;
    if (v234)
    {
      v72 = (v54 & 0x180000) != 0;
    }

    else
    {
      v72 = 0;
    }

    if ((v54 & 0x180000) != 0 && !v234)
    {
      *(v70 + 8) &= ~0x100000uLL;
      SubroutineType = glpCompilerGetSubroutineType(a1, *(v70 + 24), *(v70 + 32), v70);
      v231.n128_u64[0] = 0;
      v231.n128_u64[1] = &v231;
      v232 = 0x2000000000;
      v233 = 0;
      v227 = 0;
      v228 = &v227;
      v229 = 0x2000000000;
      v230 = 0;
      v226[0] = MEMORY[0x277D85DD0];
      v226[1] = 0x40000000;
      v226[2] = __glpSAFunctionPrototype_block_invoke;
      v226[3] = &unk_278B4C428;
      v226[4] = &v231;
      v226[5] = &v227;
      glpNameTableGet(NameTable, *(FunctionObject + 24), *(FunctionObject + 32), 2, v226);
      v73 = v228[3];
      if (v73)
      {
        v74 = v207;
        if (*(v231.n128_u64[1] + 24) == 8)
        {
          if (glpTypesEqual(SubroutineType, v73))
          {
            SubroutineType = v228[3];
LABEL_92:
            FunctionObject = glpSubroutineTypeGetFunctionObject(SubroutineType);
            v206 = *FunctionObject;
            v88 = 1;
            goto LABEL_97;
          }

          v99 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v74, &v223);
          v203 = *(FunctionObject + 24);
          glpLogMessage(v99, 0, &v223, "Redeclaration of subroutine type '%.*s' does not match previous declaration", v100, v101, v102, v103, *(FunctionObject + 32));
        }

        else
        {
          v89 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v74, &v223);
          v202 = *(FunctionObject + 24);
          glpLogMessage(v89, 0, &v223, "subroutine type '%.*s' previously declared as another kind of object", v90, v91, v92, v93, *(FunctionObject + 32));
        }

        SubroutineType = glpSAFailed();
        v88 = 0;
LABEL_97:
        _Block_object_dispose(&v227, 8);
        _Block_object_dispose(&v231, 8);
        if ((v88 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_137;
      }

      glpNameTablePut(NameTable, Name, v16, 8, SubroutineType);
      goto LABEL_92;
    }

    v75 = glpCompilerGetImmediateSAContext(a1);
    IsFunctionDefinitionNode = glpIsFunctionDefinitionNode(v75);
    if (!IsFunctionDefinitionNode && v72)
    {
      v78 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v207, &v231);
      glpLogMessage(v78, 0, &v231, "Subroutine type declaration '%.*s' may not include a list of compatible subroutine types", v79, v80, v81, v82, v16);
      goto LABEL_158;
    }

    SubroutineType = IsFunctionDefinitionNode;
    *(FunctionObject + 8) &= ~0x80000uLL;
    *(FunctionObject + 56) = v234;
    v231.n128_u64[0] = 0;
    v231.n128_u64[1] = &v231;
    v232 = 0x2000000000;
    v233 = 0;
    v227 = 0;
    v228 = &v227;
    v229 = 0x2000000000;
    v230 = 0;
    v223.n128_u64[0] = 0;
    v223.n128_u64[1] = &v223;
    v224 = 0x2000000000;
    v225 = 0;
    v222[0] = MEMORY[0x277D85DD0];
    v222[1] = 0x40000000;
    v222[2] = __glpSAFunctionPrototype_block_invoke_2;
    v222[3] = &unk_278B4C450;
    v222[4] = &v231;
    v222[5] = &v227;
    v222[6] = &v223;
    v222[7] = NameTable;
    glpNameTableGet(NameTable, Name, v16, 0, v222);
    v218 = 0;
    v219 = &v218;
    v220 = 0x2000000000;
    v221 = 0;
    v214 = 0;
    v215 = &v214;
    v216 = 0x2000000000;
    v217 = 0;
    v213[0] = MEMORY[0x277D85DD0];
    v213[1] = 0x40000000;
    v213[2] = __glpSAFunctionPrototype_block_invoke_3;
    v213[3] = &unk_278B4C478;
    v213[4] = &v218;
    v213[5] = &v214;
    glpNameTableGet(NameTable, v66, v68, 0, v213);
    v83 = v228[3];
    if (!v83)
    {
      goto LABEL_114;
    }

    if (*(v231.n128_u64[1] + 24) != 4)
    {
      v94 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v207, &v210);
      glpLogMessage(v94, 0, &v210, "Function '%.*s' previously declared as non-function", v95, v96, v97, v98, v16);
      goto LABEL_134;
    }

    if (!v83[1])
    {
      v205[0] = *v83;
      v84 = glpCompilerGetAllocator(a1);
      v85 = glpAggregateTypeMangleName(v205[0], Name, v16, v84);
      v210.n128_u64[0] = 0;
      v210.n128_u64[1] = &v210;
      v211 = 0x2000000000;
      v212 = 0;
      v209[0] = MEMORY[0x277D85DD0];
      v209[1] = 0x40000000;
      v209[2] = __glpSAFunctionPrototype_block_invoke_4;
      v209[3] = &unk_278B4C4A0;
      v209[4] = &v210;
      glpNameTableGet(NameTable, v85, v86, 0, v209);
      if ((*(*(v210.n128_u64[1] + 24) + 10) & 0x20) != 0)
      {
        v111 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v207, &v208);
        glpLogMessage(v111, 0, &v208, "Function '%.*s' previously declared as subroutine implementation", v112, v113, v114, v115, v16);
        SubroutineType = glpSAFailed();
        _Block_object_dispose(&v210, 8);
LABEL_135:
        v142 = 0;
LABEL_136:
        _Block_object_dispose(&v214, 8);
        _Block_object_dispose(&v218, 8);
        _Block_object_dispose(&v223, 8);
        _Block_object_dispose(&v227, 8);
        _Block_object_dispose(&v231, 8);
        if (!v142)
        {
          goto LABEL_32;
        }

LABEL_137:
        v150 = v207;
        glpFunctionPrototypeNodeSetExtra(v207, FunctionObject);
        v237[0] = glpFunctionTypeGetReturnType(v206);
        if (*(FunctionObject + 112) && ((v236 ^ *(*(FunctionObject + 72) + 48)) & 0x8000000001FLL) != 0)
        {
          v151 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v150, &v231);
          glpLogMessage(v151, 0, &v231, "Qualification of return type in redeclared function '%.*s' differs from previous declaration", v152, v153, v154, v155, v16);
        }

        Extra = glpFunctionPrototypeNodeGetExtra(v150);
        v157 = glpFunctionPrototypeNodeGetReturnOutParam(v150);
        v206 = Extra;
        if (v157)
        {
          v158 = v157;
          v159 = *(Extra + 72);
          if (!v159)
          {
            v160 = glpCompilerGetAllocator(a1);
            StringBuffer = glpMakeStringBuffer(v160);
            glpStringBufferAppendCString(StringBuffer, "<Compiler Temporary ");
            v162 = glpParameterDeclarationNodeGetName(v158);
            glpStringBufferAppendString(StringBuffer, v162, v163);
            glpStringBufferAppendCString(StringBuffer, ">");
            v164 = glpCompilerGetAllocator(a1);
            v165 = v237[0];
            SaFlags = glpASTNodeGetSaFlags(v158);
            v167 = glpParameterDeclarationNodeGetName(v158);
            v169 = v168;
            String = glpStringBufferGetString(StringBuffer);
            v171 = v169;
            Extra = v206;
            glpMakeVariableObject(v164, v165, 0, SaFlags, v167, v171, String, v172, 0, 0, 0);
            v159 = v173;
            *(Extra + 72) = v173;
          }

          glpParameterDeclarationNodeSetExtra(v158, v159);
        }

        v174 = *(Extra + 80);
        if (!v174)
        {
          glpFunctionPrototypeNodeGetParameterCount(v150);
          *(Extra + 80) = glpCompilerPoolAlloc(a1);
          *(Extra + 88) = glpFunctionPrototypeNodeGetParameterCount(v150);
        }

        if (glpFunctionPrototypeNodeGetParameterCount(v150))
        {
          v175 = 0;
          do
          {
            v176 = glpFunctionPrototypeNodeGetParameter(v150, v175);
            v177 = v176;
            if (!v174)
            {
              SaType = glpASTNodeGetSaType(v176);
              v179 = glpCompilerGetAllocator(a1);
              v180 = glpASTNodeGetSaFlags(v177);
              v181 = glpParameterDeclarationNodeGetName(v177);
              v183 = v182;
              v184 = glpParameterDeclarationNodeGetName(v177);
              v186 = v185;
              v187 = SaType;
              v188 = v183;
              Extra = v206;
              v150 = v207;
              glpMakeVariableObject(v179, v187, 0, v180, v181, v188, v184, v186, 0, 0, 0);
              *(*(Extra + 80) + 8 * v175) = v189;
            }

            glpParameterDeclarationNodeSetExtra(v177, *(*(Extra + 80) + 8 * v175++));
          }

          while (v175 < glpFunctionPrototypeNodeGetParameterCount(v150));
        }

        v190 = *(Extra + 88);
        v191 = *(Extra + 8);
        if (!v190)
        {
LABEL_156:
          SubroutineType = v207;
          glpASTNodeSetSaFlags(v207, v191);
          glpFunctionPrototypeNodeSetReturnType(SubroutineType, 0);
          goto LABEL_32;
        }

        v192 = 0;
        v193 = 8 * v190;
        while ((v191 & 0x3800) == 0 || (*(*(*(Extra + 80) + v192) + 48) & 0x4800200) != 0)
        {
          v192 += 8;
          if (v193 == v192)
          {
            goto LABEL_156;
          }
        }

        v194 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v207, &v231);
        v195 = *(*(Extra + 80) + v192);
        v201 = *(v195 + 40);
        v204 = *(v195 + 32);
        v200 = *(Extra + 24);
        glpLogMessage(v194, 0, &v231, "Inline function '%.*s' argument '%.*s' not foldable/out", v196, v197, v198, v199, *(Extra + 32));
LABEL_158:
        SubroutineType = glpSAFailed();
        goto LABEL_32;
      }

      _Block_object_dispose(&v210, 8);
    }

    v87 = *(v223.n128_u64[1] + 24);
    if (v72)
    {
      if (v87 != 3)
      {
LABEL_126:
        v136 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v207, &v210);
        glpLogMessage(v136, 0, &v210, "Subroutine implementation '%.*s' previously declared as function", v137, v138, v139, v140, v16);
        goto LABEL_134;
      }
    }

    else if (v87 != 3)
    {
      if (SubroutineType)
      {
        v105 = v219[3];
        if (v105)
        {
          if (*(v105 + 64))
          {
            v106 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(v207, &v210);
            glpLogMessage(v106, 0, &v210, "Function '%.*s' redefines an existing function", v107, v108, v109, v110, v16);
            goto LABEL_134;
          }
        }
      }

      goto LABEL_114;
    }

    GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
    if (GLSLVersion <= 0xA)
    {
      if (((1 << GLSLVersion) & 0x3BC) != 0)
      {
        v228[3] = 0;
LABEL_114:
        v126 = v219[3];
        if (!v126)
        {
          goto LABEL_121;
        }

        if (!*(v215 + 6) && (*(FunctionObject + 10) & 0x10) != 0)
        {
          goto LABEL_126;
        }

        v127 = v207;
        if ((*(v126 + 10) & 0x20) == 0)
        {
          SubroutineType = v206;
          if (!glpTypesEqual(*v126, v206))
          {
            v143 = glpFunctionTypeGetReturnType(*v219[3]);
            v144 = glpFunctionTypeGetReturnType(SubroutineType);
            LODWORD(v143) = glpTypesEqual(v143, v144);
            v145 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(v127, &v210);
            if (v143)
            {
              glpLogMessage(v145, 0, &v210, "Qualification of arguments in redeclared function '%.*s' differs from previous declaration", v146, v147, v148, v149, v16);
            }

            else
            {
              glpLogMessage(v145, 0, &v210, "Return type in redeclared function '%.*s' differs from previous declaration", v146, v147, v148, v149, v16);
            }

            goto LABEL_134;
          }

          if (!*(v215 + 6))
          {
            FunctionObject = v219[3];
          }

LABEL_121:
          v128 = v228[3];
          if (v128)
          {
            while (1)
            {
              v129 = v128;
              if (glpTypesEqual(*v128, v206))
              {
                break;
              }

              v128 = v129[1];
              if (!v128)
              {
                v130 = glpCompilerPoolAlloc(a1);
                *v130 = v206;
                *(v130 + 1) = 0;
                v129[1] = v130;
                goto LABEL_129;
              }
            }

            if (!*(v215 + 6))
            {
              goto LABEL_130;
            }
          }

          else
          {
            v141 = glpCompilerPoolAlloc(a1);
            *v141 = v206;
            v141[1] = 0;
            glpNameTablePut(NameTable, Name, v16, 4, v141);
          }

LABEL_129:
          glpNameTablePut(NameTable, v66, v68, 5, FunctionObject);
LABEL_130:
          v142 = 1;
          goto LABEL_136;
        }

        v131 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v127, &v210);
        glpLogMessage(v131, 0, &v210, "Function '%.*s' previously declared as subroutine implementation", v132, v133, v134, v135, v16);
LABEL_134:
        SubroutineType = glpSAFailed();
        goto LABEL_135;
      }

      if (GLSLVersion == 6)
      {
        v116 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v207, &v210);
        glpLogMessage(v116, 0, &v210, "Function '%.*s' overloads or redefines a built-in function", v117, v118, v119, v120, v16);
        goto LABEL_134;
      }

      if (GLSLVersion == 10)
      {
        abort();
      }
    }

    if (!GLSLVersion && v219[3])
    {
      v121 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v207, &v210);
      glpLogMessage(v121, 0, &v210, "Function '%.*s' redefines a built-in function", v122, v123, v124, v125, v16);
      goto LABEL_134;
    }

    goto LABEL_114;
  }

  v27 = *MEMORY[0x277D85DE8];

  return glpSAFailed();
}

uint64_t glpSAVariableDeclaration(uint64_t a1, uint64_t a2)
{
  v221 = *MEMORY[0x277D85DE8];
  Type = glpVariableDeclarationNodeGetType(a2);
  v5 = glpSANode(a1, Type);
  if (v5 != -1)
  {
    glpVariableDeclarationNodeSetType(a2, v5);
  }

  Initializer = glpVariableDeclarationNodeGetInitializer(a2);
  v7 = glpSANode(a1, Initializer);
  if (v7 != -1)
  {
    glpVariableDeclarationNodeSetInitializer(a2, v7);
    if (v5 != -1)
    {
      Name = glpVariableDeclarationNodeGetName(a2);
      v10 = v9;
      NameTable = glpCompilerGetNameTable(a1);
      CurrentFunction = glpNameTableGetCurrentFunction(NameTable);
      v217 = 0;
      v218 = &v217;
      v219 = 0x2000000000;
      v220 = 0;
      v213 = 0;
      v214 = &v213;
      v215 = 0x2000000000;
      v216 = 0;
      v209 = 0;
      v210 = &v209;
      v211 = 0x2000000000;
      v212 = 0;
      v208[0] = MEMORY[0x277D85DD0];
      v208[1] = 0x40000000;
      v208[2] = __glpSAVariableDeclaration_block_invoke;
      v208[3] = &unk_278B4C4C8;
      v208[4] = &v217;
      v208[5] = &v213;
      v208[6] = &v209;
      v208[7] = NameTable;
      glpNameTableGet(NameTable, Name, v10, 2 * (CurrentFunction != 0), v208);
      if (v214[3])
      {
        v13 = *(v218 + 6);
        if (v13 <= 3)
        {
          switch(v13)
          {
            case 1:
              InfoLog = glpCompilerGetInfoLog(a1);
              glpASTNodeGetLocation(a2, &v199);
              glpLogMessage(InfoLog, 0, &v199, "'%.*s' already declared as an interface block instance", v25, v26, v27, v28, v10);
              goto LABEL_51;
            case 2:
              v29 = glpCompilerGetInfoLog(a1);
              glpASTNodeGetLocation(a2, &v199);
              glpLogMessage(v29, 0, &v199, "'%.*s' already declared as an interface block", v30, v31, v32, v33, v10);
              goto LABEL_51;
            case 3:
              v14 = 10;
              goto LABEL_32;
          }
        }

        else if ((v13 - 4) >= 5)
        {
          if ((v13 - 10) < 4 || v13 == 9)
          {
            abort();
          }
        }

        else
        {
          if (!*(v210 + 6))
          {
            v19 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(a2, &v199);
            glpLogMessage(v19, 0, &v199, "Attempt to redeclare '%.*s' as a variable", v20, v21, v22, v23, v10);
            goto LABEL_51;
          }

          v214[3] = 0;
        }
      }

      if (CurrentFunction || (v10 & 0xFFFFFFFE) != 0 && *Name == 36 && ((v17 = Name[1], (v17 & 0x80000000) != 0) ? (v18 = __maskrune_l(v17, 0x400uLL, 0)) : (v18 = *(MEMORY[0x277D85DE0] + 4 * v17 + 60) & 0x400), v18))
      {
        v14 = 6;
      }

      else
      {
        v14 = 1;
      }

LABEL_32:
      v34 = glpVariableDeclarationNodeGetType(a2);
      v206 = 0;
      v207 = 0;
      v204 = 0;
      v205 = 0;
      glpASTNodeGetLocation(a2, &v199);
      v35 = glpVariableDeclarationNodeGetIsFromSource(a2);
      SaFlags = glpASTNodeGetSaFlags(v34);
      if (!glpEvaluateTypeNode(a1, &v199, v14, v35, v34, SaFlags & 0x1F, &v207, &v206, &v205, &v204))
      {
        goto LABEL_51;
      }

      glpASTNodeSetSaType(a2, v207);
      if (glpCompilerUsingStyleGuide(a1))
      {
        if (glpTypeGetKind(v207) == 2)
        {
          ElementType = glpArrayTypeGetElementType(v207);
          if (glpTypeGetKind(ElementType) == 1)
          {
            v38 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(a2, &v199);
            glpLogMessage(v38, 2u, &v199, "Arrays of structs may be less performant than structs of arrays", v39, v40, v41, v42, v189);
          }
        }
      }

      v43 = glpVariableDeclarationNodeGetInitializer(a2);
      if (!v43)
      {
        if ((v206 & 0x60) != 0)
        {
          v57 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(a2, &v199);
          glpVariableDeclarationNodeGetName(a2);
          v59 = v58;
          glpVariableDeclarationNodeGetName(a2);
          glpLogMessage(v57, 0, &v199, "Missing initializer for const variable '%.*s'", v60, v61, v62, v63, v59);
          goto LABEL_51;
        }

LABEL_70:
        if (glpNameTableGetGLSLVersion(NameTable) == 6 && !glpNameTableIsExtensionEnabled(NameTable, 0x23u) && glpTypeGetKind(v207) == 2 && glpArrayTypeGetElementCount(v207) == -1)
        {
          v151 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(a2, &v199);
          glpVariableDeclarationNodeGetName(a2);
          v153 = v152;
          glpVariableDeclarationNodeGetName(a2);
          glpLogMessage(v151, 0, &v199, "Unsized array '%.*s' requires sized initializer under GLSL 300", v154, v155, v156, v157, v153);
          goto LABEL_51;
        }

        glpASTNodeSetSaFlags(a2, v206);
        v82 = v214[3];
        if (v82)
        {
          v83 = *(v218 + 6);
          if (!v83)
          {
            glpASTNodeGetLocation(a2, &v199);
            if (glpHandleVariableRedeclaration(a1, &v199, Name, v10, *v82, *(v82 + 48), *(v82 + 8), (v82 + 96), v207, v206, v205, v82, (v82 + 48), (v82 + 8)))
            {
              goto LABEL_127;
            }

            goto LABEL_51;
          }

          if (v83 != 3)
          {
            abort();
          }

          if (glpNameTableGetLanguage(NameTable) == 3 && glpStringsEqual("gl_ClipDistance", 0xA52D52050000000FLL, Name, v10) && (v206 & 0x20000000) != 0)
          {
            v84 = glpCompilerGetNameTable(a1);
            v203[0] = MEMORY[0x277D85DD0];
            v203[1] = 0x40000000;
            v203[2] = __glpSAVariableDeclaration_block_invoke_2;
            v203[3] = &unk_278B4C4F0;
            v203[4] = &v213;
            glpNameTableGet(v84, "gl_in", 0x1057ED5B00000005uLL, 0, v203);
          }

          v85 = v214[3];
          v191 = *(v85 + 64);
          StructTypeFromIBType = glpGetStructTypeFromIBType(v191);
          FieldIndex = glpStructTypeGetFieldIndex(StructTypeFromIBType, Name, v10);
          v192 = glpAggregateTypeGetElementType(StructTypeFromIBType, FieldIndex);
          ElementFlags = glpAggregateTypeGetElementFlags(StructTypeFromIBType, FieldIndex);
          LODWORD(v193) = FieldIndex;
          ElementLayout = glpAggregateTypeGetElementLayout(StructTypeFromIBType, FieldIndex);
          Representation = glpInterfaceBlockObjectGetRepresentation(v85);
          v91 = 0;
          if (Representation > 1)
          {
            if (Representation == 3)
            {
LABEL_96:
              v101 = (*(v85 + 72) + 8 * v193);
              goto LABEL_97;
            }

            if (Representation != 2)
            {
LABEL_98:
              v196.n128_u64[0] = 0;
              v194.n128_u64[0] = 0;
              v202 = 0;
              glpASTNodeGetLocation(a2, &v199);
              if (glpHandleVariableRedeclaration(a1, &v199, Name, v10, v192, ElementFlags, ElementLayout, (v91 + 96), v207, v206, v205, &v196, v194.n128_u64, &v202))
              {
                v192 = v85;
                ElementCount = glpAggregateTypeGetElementCount(StructTypeFromIBType);
                v103 = ElementCount;
                v104 = ElementCount;
                v190 = ElementCount;
                MEMORY[0x28223BE20](ElementCount);
                bzero(&v189 - 2 * v103, v105);
                v106 = 8 * v104;
                MEMORY[0x28223BE20](v107);
                v108 = (&v189 - ((v106 + 15) & 0xFFFFFFFF0));
                bzero(v108, v106);
                MEMORY[0x28223BE20](v109);
                v110 = v108;
                bzero(v108, v106);
                MEMORY[0x28223BE20](v111);
                v112 = v108;
                bzero(v108, v106);
                if (v190)
                {
                  v113 = 0;
                  v114 = &v189 - 2 * v103 + 1;
                  do
                  {
                    *(v114 - 1) = glpStructTypeGetFieldName(StructTypeFromIBType, v113);
                    *v114 = v115;
                    v108[v113] = glpAggregateTypeGetElementType(StructTypeFromIBType, v113);
                    v108[v113] = glpAggregateTypeGetElementFlags(StructTypeFromIBType, v113);
                    v108[v113] = glpAggregateTypeGetElementLayout(StructTypeFromIBType, v113);
                    ++v113;
                    v114 += 2;
                  }

                  while (v103 != v113);
                }

                v116 = v193;
                v108[v193] = v196.n128_u64[0];
                v108[v116] = v194.n128_u64[0];
                v108[v116] = v202;
                Allocator = glpCompilerGetAllocator(a1);
                v118 = glpStructTypeGetName(StructTypeFromIBType);
                v190 = v103;
                StructType = glpMakeStructType(Allocator, v118, v119, v103, (&v189 - 2 * v103), v108, v108, v108);
                v121 = glpInterfaceBlockObjectGetRepresentation(v192);
                v122 = v191;
                if (v121 <= 1)
                {
                  if (v121)
                  {
                    if (v121 != 1)
                    {
                      goto LABEL_127;
                    }

LABEL_113:
                    v136 = v190;
                    if (v190)
                    {
                      v137 = *(v192 + 9);
                      v138 = *(v192 + 5);
                      do
                      {
                        v139 = *v108++;
                        **v137 = v139;
                        v140 = *v110++;
                        v141 = v140 | v138;
                        v143 = *v137++;
                        v142 = v143;
                        v143[6] = v141 | 0x80000000;
                        v144 = *v112++;
                        v142[1] = v144;
                        --v136;
                      }

                      while (v136);
                    }

                    *(v192 + 8) = StructType;
                    goto LABEL_127;
                  }

                  goto LABEL_126;
                }

                if (v121 == 2)
                {
                  v147 = glpCompilerGetAllocator(a1);
                  Bank = glpBankTypeGetBank(v122);
                  v149 = glpBankTypeGetElementCount(v122);
                  StructType = glpMakeBankType(v147, Bank, StructType, v149);
LABEL_126:
                  v150 = v192;
                  *(v192 + 8) = StructType;
                  ***(v150 + 9) = StructType;
                  goto LABEL_127;
                }

                if (v121 == 3)
                {
                  v189 = StructType;
                  if (v190)
                  {
                    v128 = v190;
                    v129 = v108;
                    do
                    {
                      v193 = glpCompilerGetAllocator(a1);
                      v130 = glpBankTypeGetBank(v122);
                      v131 = *v129;
                      v132 = glpBankTypeGetElementCount(v122);
                      *v129++ = glpMakeBankType(v193, v130, v131, v132);
                      --v128;
                    }

                    while (v128);
                  }

                  v133 = glpCompilerGetAllocator(a1);
                  v134 = glpBankTypeGetBank(v122);
                  v135 = glpBankTypeGetElementCount(v122);
                  StructType = glpMakeBankType(v133, v134, v189, v135);
                  goto LABEL_113;
                }

LABEL_127:
                v64 = 0;
                goto LABEL_52;
              }

              v123 = glpCompilerGetInfoLog(a1);
              glpASTNodeGetLocation(a2, &v199);
              glpLogMessage(v123, 0, &v199, "'%.*s' already declared within an interface block", v124, v125, v126, v127, v10);
LABEL_51:
              v64 = glpSAFailed();
LABEL_52:
              _Block_object_dispose(&v209, 8);
              _Block_object_dispose(&v213, 8);
              _Block_object_dispose(&v217, 8);
              v65 = *MEMORY[0x277D85DE8];
              return v64;
            }
          }

          else if (Representation)
          {
            if (Representation != 1)
            {
              goto LABEL_98;
            }

            goto LABEL_96;
          }

          v101 = *(v85 + 72);
LABEL_97:
          v91 = *v101;
          goto LABEL_98;
        }

        v92 = glpCheckName(a1, a2, Name, v10);
        if (v92 == -1)
        {
          goto LABEL_51;
        }

        v64 = v92;
        v93 = glpVariableDeclarationNodeGetInitializer(v92);
        v94 = v93;
        if (v93)
        {
          if (glpIsConstantNode(v93))
          {
            Value = glpConstantNodeGetValue(v94);
          }

          else
          {
            Value = 0;
          }

          v146 = v206;
          if ((v206 & 0x60) != 0)
          {
            if (glpIsConstantNode(v94))
            {
              glpVariableDeclarationNodeSetInitializer(v64, 0);
              v146 = v206;
            }

            else
            {
              v146 = v206 & 0xFFFFFFFFFFFFFE9FLL | 0x100;
              v206 = v146;
            }

            v145 = Value;
          }

          else
          {
            v145 = 0;
          }

          if ((v146 & 0x100000000) != 0 && glpIsConstantNode(v94))
          {
            glpVariableDeclarationNodeSetInitializer(v64, 0);
          }
        }

        else
        {
          v145 = 0;
          Value = 0;
        }

        v158 = glpCompilerGetAllocator(a1);
        glpMakeVariableObject(v158, v207, v205, v206, Name, v10, Name, v10, v94 != 0, v145, Value);
        v214[3] = v159;
        if ((v206 & 0x200000000) == 0)
        {
          v160 = v159;
          if ((v206 & 0x400000000) != 0)
          {
            v161 = glpCompilerGetAllocator(a1);
            glpMakeBufferObject(v161, v207, 0, 1);
            *(v160 + 88) = v162;
          }

          glpNameTablePut(NameTable, Name, v10, 0, v160);
          if (glpVariableDeclarationNodeGetInitializer(v64) && (v206 & 0x100000000) == 0)
          {
            v199 = 0uLL;
            v200 = 0;
            glpASTNodeGetLocation(v64, &v199);
            v163 = glpCompilerGetAllocator(a1);
            v196 = v199;
            v197 = v200;
            glpMakeVariableIdentifierNode(v163, &v196, Name, v10);
            v165 = glpSANode(a1, v164);
            if (v165 == -1)
            {
              goto LABEL_51;
            }

            v166 = v165;
            v167 = glpASTNodeGetSaFlags(v165);
            glpASTNodeSetSaFlags(v166, v167 & 0xFFFFFFFFFFFFFEFFLL);
            v168 = glpVariableDeclarationNodeGetInitializer(v64);
            v196 = v199;
            v197 = v200;
            AssignFragment = glpMakeAssignFragment(a1, &v196, v166, v168);
            glpVariableDeclarationNodeSetInitializer(v64, AssignFragment);
          }

          glpVariableDeclarationNodeSetExtra(v64, v214[3]);
          glpVariableDeclarationNodeSetType(v64, 0);
          goto LABEL_52;
        }

        v199.n128_u64[0] = 0;
        v199.n128_u64[1] = &v199;
        v200 = 0x2000000000;
        v201 = 0;
        v196.n128_u64[0] = 0;
        v196.n128_u64[1] = &v196;
        v197 = 0x2000000000;
        v198 = 0;
        v195[0] = MEMORY[0x277D85DD0];
        v195[1] = 0x40000000;
        v195[2] = __glpSAVariableDeclaration_block_invoke_3;
        v195[3] = &unk_278B4C518;
        v195[4] = &v199;
        v195[5] = &v196;
        glpNameTableGet(NameTable, Name, v10, 2, v195);
        v170 = *(v196.n128_u64[1] + 24);
        if (v170)
        {
          if (*(v199.n128_u64[1] + 24) != 7)
          {
            v184 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(v64, &v194);
            glpLogMessage(v184, 0, &v194, "subroutine uniform '%.*s' previously declared as different kind of object", v185, v186, v187, v188, v10);
            goto LABEL_149;
          }

          if (!glpTypesEqual(*(v170 + 16), v207))
          {
            v171 = v207;
            v172 = glpCompilerGetAllocator(a1);
            glpTypeHumanReadableDescription(v171, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v172);
            v174 = v173;
            v175 = *(v170 + 16);
            v176 = glpCompilerGetAllocator(a1);
            glpTypeHumanReadableDescription(v175, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v176);
            v177 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(v64, &v194);
            glpLogMessage(v177, 0, &v194, "Type ('%.*s') of subroutine uniform '%.*s' does not match previous declaration ('%.*s')", v178, v179, v180, v181, v174);
LABEL_149:
            v64 = glpSAFailed();
            goto LABEL_150;
          }
        }

        else
        {
          v170 = glpCompilerPoolAlloc(a1);
          *v170 = Name;
          *(v170 + 8) = v10;
          *(v170 + 16) = v207;
          glpNameTablePut(NameTable, Name, v10, 7, v170);
        }

        v182 = glpCompilerGetAllocator(a1);
        glpASTNodeGetLocation(v64, &v194);
        glpMakeSubroutineUniformNode(v182, &v194, v170);
        v64 = v183;
        glpASTNodeSetSaType(v183, v207);
        glpASTNodeSetSaFlags(v64, v206);
LABEL_150:
        _Block_object_dispose(&v196, 8);
        _Block_object_dispose(&v199, 8);
        goto LABEL_52;
      }

      v44 = v43;
      SaType = glpASTNodeGetSaType(v43);
      if (!glpTypesEqual(SaType, v207))
      {
        v66 = glpASTNodeGetSaType(v44);
        if (glpTypeGetKind(v66) || glpTypeGetKind(v207))
        {
          v67 = glpASTNodeGetSaType(v44);
          if (glpTypeGetKind(v67) != 2 || glpTypeGetKind(v207) != 2 || (v68 = glpASTNodeGetSaType(v44), v69 = glpArrayTypeGetElementType(v68), v70 = glpArrayTypeGetElementType(v207), !glpTypesEqual(v69, v70)) || glpArrayTypeGetElementCount(v207) != -1)
          {
            v71 = glpASTNodeGetSaType(v44);
            v72 = glpCompilerGetAllocator(a1);
            glpTypeHumanReadableDescription(v71, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v72);
            v74 = v73;
            v75 = v207;
            v76 = glpCompilerGetAllocator(a1);
            glpTypeHumanReadableDescription(v75, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v76);
            v77 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(a2, &v199);
            glpLogMessage(v77, 0, &v199, "Initializer has type incompatible with declaration (got '%.*s', expected '%.*s')", v78, v79, v80, v81, v74);
            goto LABEL_51;
          }

          v207 = glpASTNodeGetSaType(v44);
          glpASTNodeSetSaType(a2, v207);
        }

        else
        {
          ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
          v97 = glpASTNodeGetSaType(v44);
          PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v97);
          v99 = glpPrimitiveTypeGetPrimitiveType(v207);
          if (!glpCanConvert(PrimitiveType, v99, ImplicitConversionPolicy))
          {
            v51 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(a2, &v199);
            v56 = "Incompatible types in initialization (and no available implicit conversion)";
            goto LABEL_48;
          }

          v100 = glpConvert(a1, v44, v207, v206 & 0x1F);
          glpVariableDeclarationNodeSetInitializer(a2, v100);
        }
      }

      v46 = glpCompilerGetNameTable(a1);
      GLSLVersion = glpNameTableGetGLSLVersion(v46);
      v48 = GLSLVersion > 1;
      if (glpCompilerGetIOSVersion(a1) >= 9)
      {
        v48 = GLSLVersion > 1 && GLSLVersion != 6;
      }

      v50 = v206;
      if ((v206 & 0xC20000000) == 0)
      {
        if ((v206 & 0x100000000) == 0 || (glpASTNodeGetSaFlags(v44) & 0x60) != 0 && (v50 = v206, (v206 & 0x100000000) == 0 || v48))
        {
          if (((v50 & 0x60) == 0 || (glpASTNodeGetSaFlags(v44) & 0x60) != 0 && ((v206 & 0x60) == 0 || (glpASTNodeGetSaFlags(v44) & 0x20) != 0 || GLSLVersion != 1)) && (glpTypeGetKind(v207) != 2 || GLSLVersion > 1))
          {
            goto LABEL_70;
          }
        }
      }

      v51 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v199);
      v56 = "Initializer not allowed";
LABEL_48:
      glpLogMessage(v51, 0, &v199, v56, v52, v53, v54, v55, v189);
      goto LABEL_51;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return glpSAFailed();
}

uint64_t glpSAVariableDeclarationGroup(uint64_t a1, uint64_t a2)
{
  BaseType = glpVariableDeclarationGroupNodeGetBaseType(a2);
  v5 = glpSANode(a1, BaseType);
  if (v5 == -1)
  {
    v6 = 0;
  }

  else
  {
    glpVariableDeclarationGroupNodeSetBaseType(a2, v5);
    v6 = 1;
  }

  if (glpVariableDeclarationGroupNodeGetDeclarationCount(a2))
  {
    v7 = 0;
    do
    {
      Declaration = glpVariableDeclarationGroupNodeGetDeclaration(a2, v7);
      v9 = glpSANode(a1, Declaration);
      if (v9 == -1)
      {
        v6 = 0;
      }

      else
      {
        glpVariableDeclarationGroupNodeSetDeclaration(a2, v7, v9);
      }

      ++v7;
    }

    while (v7 < glpVariableDeclarationGroupNodeGetDeclarationCount(a2));
  }

  if (v6)
  {
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    v11 = glpVariableDeclarationGroupNodeGetBaseType(a2);
    if (!glpIsStructTypeNode(v11))
    {
      if (glpVariableDeclarationGroupNodeGetDeclarationCount(a2) == 1)
      {

        return glpVariableDeclarationGroupNodeGetDeclaration(a2, 0);
      }

      glpVariableDeclarationGroupNodeSetBaseType(a2, 0);
    }

    return a2;
  }

  return glpSAFailed();
}

uint64_t glpSAPrecisionDeclaration(uint64_t a1, uint64_t a2)
{
  if (!glpCompilerDoesTrackPrecision(a1))
  {
    return 0;
  }

  Type = glpPrecisionDeclarationNodeGetType(a2);
  v5 = glpSANode(a1, Type);
  if (v5 != -1)
  {
    v6 = v5;
    glpPrecisionDeclarationNodeSetType(a2, v5);
    SaType = glpASTNodeGetSaType(v6);
    if (glpTypeGetKind(SaType))
    {
      glpPrimitiveTypeGetCategory(0);
LABEL_15:
      Allocator = glpCompilerGetAllocator(a1);
      glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, Allocator);
      v14 = v13;
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v24);
      glpLogMessage(InfoLog, 0, &v24, "Default precision qualifier cannot be applied to type '%.*s'", v16, v17, v18, v19, v14);
      return glpSAFailed();
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    Category = glpPrimitiveTypeGetCategory(PrimitiveType);
    v11 = Category == 4 || Category == 1;
    if (!v11 || PrimitiveType == 9 || PrimitiveType == 36)
    {
      goto LABEL_15;
    }

    Qualifier = glpPrecisionDeclarationNodeGetQualifier(a2);
    v21 = glpKeywordQualifierNodeGetQualifier(Qualifier) - 20;
    if (v21 >= 5)
    {
      abort();
    }

    v22 = qword_23A29D3D0[v21];
    NameTable = glpCompilerGetNameTable(a1);
    glpNameTablePutPrecision(NameTable, PrimitiveType, v22);
    return 0;
  }

  return glpSAFailed();
}

uint64_t glpSAQualifiedDeclaration(uint64_t a1, uint64_t a2)
{
  NameTable = glpCompilerGetNameTable(a1);
  if (!glpNameTableGetCurrentFunction(NameTable))
  {
    Name = glpQualifiedDeclarationNodeGetName(a2);
    v13 = v12;
    v42.n128_u64[0] = 0;
    v42.n128_u64[1] = &v42;
    v43 = 0x2000000000;
    v44 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2000000000;
    v41 = 0;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 0x40000000;
    v37[2] = __glpSAQualifiedDeclaration_block_invoke;
    v37[3] = &unk_278B4C540;
    v37[4] = &v42;
    v37[5] = &v38;
    glpNameTableGet(NameTable, Name, v12, 0, v37);
    v14 = v39[3];
    if (v14)
    {
      v15 = *(v42.n128_u64[1] + 24);
      if (v15)
      {
        if (v15 != 3)
        {
          InfoLog = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(a2, &v36);
          glpLogMessage(InfoLog, 0, &v36, "Only variables and interface block fields may retroactively qualified", v27, v28, v29, v30, v33);
          goto LABEL_16;
        }

        v16 = *(v14 + 72);
        StructTypeFromIBType = glpGetStructTypeFromIBType(*(v14 + 64));
        v14 = *(v16 + 8 * glpStructTypeGetFieldIndex(StructTypeFromIBType, Name, v13));
        v18 = 12;
      }

      else
      {
        v18 = 11;
      }

      v24 = *(v14 + 8);
      if (v24)
      {
        v25 = (glpLayoutObjectFind(v24, 30) != 0) << 28;
      }

      else
      {
        v25 = 0;
      }

      v35 = 0;
      v36.n128_u64[0] = 0;
      v34 = 0;
      Qualifiers = glpQualifiedDeclarationNodeGetQualifiers(a2);
      if (glpParseQualifiers(a1, v18, Qualifiers, *(v14 + 48) | v25, &v36, &v35, &v34))
      {
        v10 = 0;
        *(v14 + 48) = v36.n128_u64[0];
LABEL_17:
        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(&v42, 8);
        return v10;
      }
    }

    else
    {
      v19 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v36);
      glpLogMessage(v19, 0, &v36, "Cannot retroactivly qualify undeclared identifier '%.*s'", v20, v21, v22, v23, v13);
    }

LABEL_16:
    v10 = glpSAFailed();
    goto LABEL_17;
  }

  v5 = glpCompilerGetInfoLog(a1);
  glpASTNodeGetLocation(a2, &v42);
  glpLogMessage(v5, 0, &v42, "Retroactive qualifier declarations must appear at global scope", v6, v7, v8, v9, v33);
  return glpSAFailed();
}

uint64_t glpSAQualifiedDeclarationGroup(uint64_t a1, uint64_t a2)
{
  if (!glpQualifiedDeclarationGroupNodeGetDeclarationCount(a2))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    Declaration = glpQualifiedDeclarationGroupNodeGetDeclaration(a2, v4);
    v7 = glpSANode(a1, Declaration);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpQualifiedDeclarationGroupNodeSetDeclaration(a2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpQualifiedDeclarationGroupNodeGetDeclarationCount(a2));
  if (v5)
  {
    return 0;
  }

  return glpSAFailed();
}

uint64_t glpSAFunctionDefinition(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Prototype = glpFunctionDefinitionNodeGetPrototype(a2);
  if (glpSANode(a1, Prototype) == -1)
  {

    return glpSAFailed();
  }

  else
  {
    Extra = glpFunctionPrototypeNodeGetExtra(Prototype);
    v6 = Extra;
    if ((*(Extra + 10) & 8) != 0)
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v110);
      v100 = *(v6 + 32);
      v101 = *(v6 + 24);
      v39 = "Subroutine function definition '%.*s' must include a list of compatible subroutine types";
      goto LABEL_14;
    }

    v7 = *(Extra + 56);
    v106 = Extra;
    if (v7)
    {
      TypeCount = glpSubroutineTypeListNodeGetTypeCount(v7);
      v9 = glpCompilerPoolAlloc(a1);
      if (glpSubroutineTypeListNodeGetTypeCount(v7))
      {
        v10 = 0;
        while (1)
        {
          Type = glpSubroutineTypeListNodeGetType(v7, v10);
          SaType = glpASTNodeGetSaType(Type);
          v13 = glpASTNodeGetSaType(Prototype);
          FunctionObject = glpSubroutineTypeGetFunctionObject(SaType);
          if (!glpTypesEqual(v13, *FunctionObject))
          {
            break;
          }

          v9[v10++] = SaType;
          if (v10 >= glpSubroutineTypeListNodeGetTypeCount(v7))
          {
            goto LABEL_8;
          }
        }

        glpSubroutineTypeGetName(SaType);
        v41 = v40;
        InfoLog = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v2, &v110);
        v103 = *(v6 + 32);
        v104 = *(v6 + 24);
        LOBYTE(v100) = v41;
        v39 = "Subroutine type '%.*s' is incompatible with definition of subroutine '%.*s'";
LABEL_14:
        glpLogMessage(InfoLog, 0, &v110, v39, v35, v36, v37, v38, v100);
        return glpSAFailed();
      }

LABEL_8:
      v15 = glpSubroutineTypeListNodeGetType(v7, 0);
      glpASTNodeGetSaType(v15);
      v108 = 0;
      v109 = 0;
      v107 = 0;
      Allocator = glpCompilerGetAllocator(a1);
      v110.n128_u64[0] = "-1";
      v110.n128_u64[1] = 0xEDA00000002;
      v111 = 0xFFFFFFFFLL;
      SubroutineImplementationFragment = glpMakeSubroutineImplementationFragment(Allocator, &v110, &v109, *(v6 + 24), *(v6 + 32), &v108, &v107, v17, *(v6 + 24), *(v6 + 32));
      v19 = glpCompilerPoolAlloc(a1);
      v20 = glpSubroutineTypeGetFunctionObject(*v9);
      v22 = *(v20 + 48);
      v21 = *(v20 + 64);
      v23 = *(v20 + 80);
      *(v19 + 96) = *(v20 + 96);
      v24 = *(v20 + 16);
      v25 = *(v20 + 32);
      *v19 = *v20;
      *(v19 + 16) = v24;
      *(v19 + 32) = v25;
      *(v19 + 48) = v22;
      *(v19 + 64) = v21;
      *(v19 + 80) = v23;
      v26 = *(v20 + 112);
      v27 = *(v20 + 128);
      v28 = *(v20 + 144);
      *(v19 + 160) = *(v20 + 160);
      *(v19 + 128) = v27;
      *(v19 + 144) = v28;
      *(v19 + 112) = v26;
      *(v19 + 96) = TypeCount;
      *(v19 + 104) = v9;
      *(v19 + 8) = *(v19 + 8) & 0xFFFFFFFFFFE7FFFFLL | 0x100000;
      *(v19 + 24) = *(v6 + 24);
      *(v19 + 40) = *(v6 + 40);
      glpFunctionPrototypeNodeSetExtra(v109, v19);
      glpASTNodeSetSaType(v109, *v19);
      glpASTNodeSetSaFlags(v109, *(v19 + 8));
      v29 = *(v19 + 72);
      v30 = glpCompilerGetAllocator(a1);
      v31 = v30;
      v105 = SubroutineImplementationFragment;
      if (v29)
      {
        glpASTNodeGetLocation(v2, &v110);
        SubroutineParameterFragment = glpMakeSubroutineParameterFragment(v31, &v110, *(*(v19 + 72) + 32), *(*(v19 + 72) + 40));
        glpASTNodeSetSaType(SubroutineParameterFragment, **(v19 + 72));
        glpASTNodeSetSaFlags(SubroutineParameterFragment, *(*(v19 + 72) + 48));
        glpParameterDeclarationNodeSetExtra(SubroutineParameterFragment, *(v19 + 72));
        glpFunctionPrototypeNodeSetReturnOutParam(v109, SubroutineParameterFragment);
      }

      else
      {
        v110.n128_u64[0] = "-1";
        v110.n128_u64[1] = 0xEDA00000002;
        v111 = 0xFFFFFFFFLL;
        glpMakeExpressionStatementNode(v30, &v110);
        v43 = v42;
        glpExpressionStatementNodeSetExpr(v42, v107);
        glpBlockNodeSetStatement(v108, 0, v43);
      }

      if (*(v19 + 88))
      {
        v44 = 0;
        do
        {
          v45 = glpCompilerGetAllocator(a1);
          StringBuffer = glpMakeStringBuffer(v45);
          glpStringBufferAppendFormat(StringBuffer, "$subroutine$implementation_parameter$%u", v47, v48, v49, v50, v51, v52, v44);
          String = glpStringBufferGetString(StringBuffer);
          v55 = v54;
          v56 = glpCompilerGetAllocator(a1);
          glpASTNodeGetLocation(v2, &v110);
          v57 = glpMakeSubroutineParameterFragment(v56, &v110, String, v55);
          glpASTNodeSetSaType(v57, **(*(v19 + 80) + 8 * v44));
          glpASTNodeSetSaFlags(v57, *(*(*(v19 + 80) + 8 * v44) + 48));
          glpParameterDeclarationNodeSetExtra(v57, *(*(v19 + 80) + 8 * v44));
          v58 = glpCompilerGetAllocator(a1);
          glpFunctionPrototypeNodeAddParameter(v58, v109, v57);
          v59 = glpCompilerGetAllocator(a1);
          v110.n128_u64[0] = "-1";
          v110.n128_u64[1] = 0xEDA00000002;
          v111 = 0xFFFFFFFFLL;
          glpMakeVariableIdentifierNode(v59, &v110, String, v55);
          v61 = v60;
          v62 = glpCompilerGetAllocator(a1);
          glpCallNodeAddArg(v62, v107, v61);
          ++v44;
        }

        while (v44 < *(v19 + 88));
      }

      v63 = glpCompilerGetAllocator(a1);
      v64 = glpMakeStringBuffer(v63);
      glpStringBufferAppendCString(v64, "$SubroutineStatic$");
      v6 = v106;
      glpStringBufferAppendString(v64, *(v106 + 24), *(v106 + 32));
      v65 = glpStringBufferGetString(v64);
      v67 = v66;
      *(v106 + 24) = v65;
      *(v106 + 32) = v66;
      v68 = *v106;
      v69 = glpCompilerGetAllocator(a1);
      *(v106 + 40) = glpAggregateTypeMangleName(v68, v65, v67, v69);
      *(v106 + 48) = v70;
      SaFlags = glpASTNodeGetSaFlags(Prototype);
      glpASTNodeSetSaFlags(Prototype, SaFlags & 0xFFFFFFFFFFCFFFFFLL | 0x200000);
      *(v106 + 8) = *(v106 + 8) & 0xFFFFFFFFFFCFFFFFLL | 0x200000;
    }

    else
    {
      v105 = 0;
    }

    NameTable = glpCompilerGetNameTable(a1);
    Body = glpFunctionDefinitionNodeGetBody(v2);
    v74 = glpFunctionDefinitionNodeGetPrototype(v2);
    v75 = glpFunctionPrototypeNodeGetExtra(v74);
    glpNameTablePushForFunction(NameTable, Body, v75);
    v76 = glpCompilerGetNameTable(a1);
    *(v6 + 64) = v2;
    if (glpFunctionPrototypeNodeGetParameterCount(Prototype))
    {
      for (i = 0; i < glpFunctionPrototypeNodeGetParameterCount(Prototype); ++i)
      {
        Parameter = glpFunctionPrototypeNodeGetParameter(Prototype, i);
        Name = glpParameterDeclarationNodeGetName(Parameter);
        v81 = v80;
        if (!glpStringsEqual("<<unnamed>>", 0x725D7890000000BuLL, Name, v80))
        {
          if (glpNameTableGet(v76, Name, v81, 2, &__block_literal_global_4))
          {
            v89 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(Parameter, &v110);
            glpLogMessage(v89, 0, &v110, "'%.*s': Duplicate parameter name", v90, v91, v92, v93, v81);
            return glpSAFailed();
          }

          v82 = glpParameterDeclarationNodeGetExtra(Parameter);
          glpNameTablePut(v76, Name, v81, 0, v82);
        }
      }
    }

    v83 = glpFunctionDefinitionNodeGetBody(v2);
    if (glpSANode(a1, v83) == -1)
    {
      v88 = glpCompilerGetNameTable(a1);
      glpNameTablePop(v88);
      *(v106 + 64) = 0;
      return glpSAFailed();
    }

    glpFunctionDefinitionNodeGetBody(v2);
    if (*(v106 + 72) && !*(v106 + 112))
    {
      v94 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(v2, &v110);
      v102 = *(v106 + 24);
      glpLogMessage(v94, 0, &v110, "Missing return for function '%.*s'", v95, v96, v97, v98, *(v106 + 32));
      v99 = glpCompilerGetNameTable(a1);
      glpNameTablePop(v99);
      *(v106 + 64) = 0;
      return glpSAFailed();
    }

    else
    {
      v84 = glpFunctionDefinitionNodeGetPrototype(v2);
      v85 = glpASTNodeGetSaType(v84);
      glpASTNodeSetSaType(v2, v85);
      v86 = glpCompilerGetNameTable(a1);
      glpNameTablePop(v86);
      if (v105)
      {
        v87 = glpSANode(a1, v105);
        glpCompilerInsertDef(a1, v87);
      }
    }

    return v2;
  }
}

uint64_t glpSAQualifiedType(uint64_t a1, uint64_t a2)
{
  Type = glpQualifiedTypeNodeGetType(a2);
  v5 = glpSANode(a1, Type);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpQualifiedTypeNodeSetType(a2, v5);
    v6 = glpQualifiedTypeNodeGetType(a2);
    SaType = glpASTNodeGetSaType(v6);
    glpASTNodeSetSaType(a2, SaType);
    glpASTNodeSetSaFlags(a2, 0);
    return a2;
  }
}

uint64_t glpSAPrimitiveType(uint64_t a1)
{
  Type = glpPrimitiveTypeNodeGetType(a1);
  PrimitiveType = glpGetPrimitiveType(Type);
  glpASTNodeSetSaType(a1, PrimitiveType);
  return a1;
}

uint64_t glpSAArrayType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  ElementType = glpArrayTypeNodeGetElementType(a2);
  v5 = glpSANode(a1, ElementType);
  if (v5 != -1)
  {
    glpArrayTypeNodeSetElementType(v2, v5);
  }

  Dimension = glpArrayTypeNodeGetDimension(v2);
  v7 = glpSANode(a1, Dimension);
  if (v7 == -1 || (glpArrayTypeNodeSetDimension(v2, v7), v5 == -1))
  {

    return glpSAFailed();
  }

  else
  {
    v24 = 0;
    glpASTNodeGetLocation(v2, &v23);
    v8 = glpArrayTypeNodeGetDimension(v2);
    v9 = glpEvaluateArraySize(a1, &v23, v8, &v24);
    if (!v9)
    {
      return glpSAFailed();
    }

    v10 = v9;
    v11 = glpArrayTypeNodeGetElementType(v2);
    SaFlags = glpASTNodeGetSaFlags(v11);
    Allocator = glpCompilerGetAllocator(a1);
    SaType = glpASTNodeGetSaType(v11);
    ArrayType = glpMakeArrayType(Allocator, SaType, v24, -1);
    glpASTNodeSetSaType(v2, ArrayType);
    if (glpIsQualifiedTypeNode(v11))
    {
      v16 = glpCompilerGetAllocator(a1);
      glpASTNodeGetLocation(v2, &v23);
      glpMakeQualifiedTypeNode(v16, &v23);
      v18 = v17;
      glpQualifiedTypeNodeSetType(v17, v2);
      Type = glpQualifiedTypeNodeGetType(v11);
      glpArrayTypeNodeSetElementType(v2, Type);
      Qualifiers = glpQualifiedTypeNodeGetQualifiers(v11);
      glpQualifiedTypeNodeSetQualifiers(v18, Qualifiers);
      glpASTNodeSetSaType(v18, ArrayType);
      v2 = v18;
    }

    if (v10 == 3)
    {
      v21 = SaFlags | 0x8000000;
    }

    else
    {
      v21 = SaFlags;
    }

    glpASTNodeSetSaFlags(v2, v21);
    return v2;
  }
}

uint64_t glpSAFieldDeclaration(uint64_t a1, uint64_t a2)
{
  Type = glpFieldDeclarationNodeGetType(a2);
  v5 = glpSANode(a1, Type);
  if (v5 == -1)
  {

    return glpSAFailed();
  }

  else
  {
    glpFieldDeclarationNodeSetType(a2, v5);
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    return a2;
  }
}

uint64_t glpSAStructType(uint64_t a1, uint64_t a2)
{
  v80[1] = *MEMORY[0x277D85DE8];
  if (glpSAStructure(a1, a2) != -1)
  {
    Name = glpStructTypeNodeGetName(a2);
    v6 = v5;
    v7 = glpCheckName(a1, a2, Name, v5);
    if (v7 != -1)
    {
      v8 = v7;
      v65 = Name;
      v66 = v6;
      FieldCount = glpStructureNodeGetFieldCount(v7);
      v67 = &v64;
      MEMORY[0x28223BE20](FieldCount);
      v11 = &(&v64)[-2 * v10];
      bzero(v11, v12);
      v13 = glpStructureNodeGetFieldCount(v8);
      MEMORY[0x28223BE20](v13);
      v69 = &v64 - v14;
      bzero(&v64 - v14, v15);
      v16 = glpStructureNodeGetFieldCount(v8);
      MEMORY[0x28223BE20](v16);
      v68 = &v64 - v17;
      bzero(&v64 - v17, v18);
      v19 = glpStructureNodeGetFieldCount(v8);
      MEMORY[0x28223BE20](v19);
      v21 = &v64 - v20;
      bzero(&v64 - v20, v22);
      if (glpStructureNodeGetFieldCount(v8))
      {
        v23 = 0;
        v64 = v11 + 1;
        while (1)
        {
          Field = glpStructureNodeGetField(v8, v23);
          v72 = 0;
          v70.n128_u64[0] = 0;
          v79 = 0;
          v80[0] = 0;
          glpASTNodeGetLocation(Field, &v76);
          Type = glpFieldDeclarationNodeGetType(Field);
          if (!glpEvaluateTypeNode(a1, &v76, 8, 1, Type, 0, &v72, &v70, v80, &v79))
          {
            break;
          }

          v26 = v11;
          v27 = glpFieldDeclarationNodeGetName(Field);
          v29 = v28;
          if (v23)
          {
            v30 = v23;
            v31 = v64;
            while (!glpStringsEqual(*(v31 - 1), *v31, v27, v29))
            {
              v31 += 2;
              if (!--v30)
              {
                goto LABEL_10;
              }
            }

            InfoLog = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(Field, &v76);
            glpLogMessage(InfoLog, 0, &v76, "Duplicate field name '%.*s' in struct type '%.*s'", v43, v44, v45, v46, v29);
            break;
          }

LABEL_10:
          if (glpTypeGetKind(v72) == 2 && glpArrayTypeGetElementCount(v72) == -1)
          {
            v59 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(v8, &v76);
            glpLogMessage(v59, 0, &v76, "Unsized array field '%.*s' in struct type '%.*s'", v60, v61, v62, v63, v29);
            break;
          }

          v11 = v26;
          v32 = &v26[2 * v23];
          *v32 = v27;
          v32[1] = v29;
          *(v69 + 8 * v23) = v72;
          *(v68 + 8 * v23) = v70.n128_u64[0] | 0x2000000;
          *&v21[8 * v23++] = 0;
          if (v23 >= glpStructureNodeGetFieldCount(v8))
          {
            goto LABEL_13;
          }
        }

        NameTable = glpSAFailed();
        goto LABEL_30;
      }

LABEL_13:
      Allocator = glpCompilerGetAllocator(a1);
      v34 = glpStructureNodeGetFieldCount(v8);
      v35 = v65;
      v36 = v66;
      StructType = glpMakeStructType(Allocator, v65, v66, v34, v11, v69, v68, v21);
      glpASTNodeSetSaType(v8, StructType);
      if (glpStringsEqual("<<unnamed>>", 0x725D7890000000BuLL, v35, v36))
      {
        goto LABEL_29;
      }

      NameTable = glpCompilerGetNameTable(a1);
      v76.n128_u64[0] = 0;
      v76.n128_u64[1] = &v76;
      v77 = 0x2000000000;
      v78 = 0;
      v72 = 0;
      v73 = &v72;
      v74 = 0x2000000000;
      v75 = 0;
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 0x40000000;
      v71[2] = __glpSAStructType_block_invoke;
      v71[3] = &unk_278B4C588;
      v71[5] = &v72;
      v71[6] = NameTable;
      v71[4] = &v76;
      glpNameTableGet(NameTable, v35, v36, 2, v71);
      v39 = v73[3];
      if (v39)
      {
        if (*(v76.n128_u64[1] + 24) == 6)
        {
          if (glpTypesEqual(StructType, v39))
          {
            glpASTNodeSetSaType(v8, v73[3]);
LABEL_24:
            v47 = 1;
            goto LABEL_28;
          }

          v53 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v8, &v70);
          glpLogMessage(v53, 0, &v70, "Redeclaration of struct '%.*s' does not match previous declaration", v54, v55, v56, v57, v36);
        }

        else
        {
          v48 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v8, &v70);
          glpLogMessage(v48, 0, &v70, "Attempt to redeclare '%.*s' as a struct", v49, v50, v51, v52, v36);
        }

        NameTable = glpSAFailed();
        v47 = 0;
LABEL_28:
        _Block_object_dispose(&v72, 8);
        _Block_object_dispose(&v76, 8);
        if (!v47)
        {
LABEL_30:
          v58 = *MEMORY[0x277D85DE8];
          return NameTable;
        }

LABEL_29:
        glpStructureNodeClearFields(v8);
        NameTable = v8;
        goto LABEL_30;
      }

      glpNameTablePut(NameTable, v35, v36, 6, StructType);
      goto LABEL_24;
    }
  }

  v40 = *MEMORY[0x277D85DE8];

  return glpSAFailed();
}

uint64_t glpSAInterfaceBlock(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v193[1] = *MEMORY[0x277D85DE8];
  if (glpSAStructure(a1, a2) != -1)
  {
    Dimension = glpInterfaceBlockNodeGetDimension(v2);
    v5 = glpSANode(a1, Dimension);
    if (v5 != -1)
    {
      glpInterfaceBlockNodeSetDimension(v2, v5);
      ImmediateSAContext = glpCompilerGetImmediateSAContext(a1);
      if (glpIsTopLevelNode(ImmediateSAContext))
      {
        PrimitiveType = glpGetPrimitiveType(0);
        glpASTNodeSetSaType(v2, PrimitiveType);
        NameTable = glpCompilerGetNameTable(a1);
        Language = glpNameTableGetLanguage(NameTable);
        v192 = 0;
        v193[0] = 0;
        v191 = 0;
        Qualifiers = glpInterfaceBlockNodeGetQualifiers(v2);
        if (glpParseQualifiers(a1, 7, Qualifiers, 0, v193, &v192, &v191))
        {
          TopLevelNode = glpCompilerGetTopLevelNode(a1);
          GlobalTypeQualifier = glpTopLevelNodeGetGlobalTypeQualifier(TopLevelNode, 0x100000000);
          Allocator = glpCompilerGetAllocator(a1);
          v14 = Allocator;
          if (GlobalTypeQualifier)
          {
            Layout = glpGlobalTypeQualifierNodeGetLayout(GlobalTypeQualifier);
            LayoutObject = glpCopyLayoutObject(v14, Layout);
          }

          else
          {
            LayoutObject = glpMakeLayoutObject(Allocator);
          }

          v24 = LayoutObject;
          if (!v192 || (v25 = glpCompilerGetAllocator(a1), glpASTNodeGetLocation(v2, &v188), glpLayoutObjectAppendMany(v25, a1, &v188, v24, v192)))
          {
            if ((v193[0] & 0x100000000) != 0)
            {
              v26 = 117;
              v27 = "uniform";
            }

            else if ((v193[0] & 0x20000000) != 0)
            {
              v26 = 105;
              v27 = "in";
            }

            else
            {
              if ((v193[0] & 0x40000000) == 0)
              {
                goto LABEL_107;
              }

              v26 = 111;
              v27 = "out";
            }

            v173 = v27;
            BlockName = glpInterfaceBlockNodeGetBlockName(v2);
            v30 = v29;
            v31 = glpCompilerGetAllocator(a1);
            StringBuffer = glpMakeStringBuffer(v31);
            glpStringBufferAppendFormat(StringBuffer, "$IB$%c$5%.*s", v33, v34, v35, v36, v37, v38, v26);
            v188.n128_u64[0] = 0;
            v188.n128_u64[1] = &v188;
            v189 = 0x2000000000;
            LODWORD(v190) = 0;
            v185.n128_u64[0] = 0;
            v185.n128_u64[1] = &v185;
            v186 = 0x2000000000;
            v187 = 0;
            v184[0] = MEMORY[0x277D85DD0];
            v184[1] = 0x40000000;
            v184[2] = __glpSAInterfaceBlock_block_invoke;
            v184[3] = &unk_278B4C5B0;
            v184[4] = &v188;
            v184[5] = &v185;
            v39 = glpNameTableGet(NameTable, BlockName, v30, 2, v184);
            if (!*(v185.n128_u64[1] + 24) || *(v188.n128_u64[1] + 24) == 2)
            {
              _Block_object_dispose(&v185, 8);
              _Block_object_dispose(&v188, 8);
              v188.n128_u64[0] = 0;
              v188.n128_u64[1] = &v188;
              v189 = 0x2000000000;
              v190 = 0;
              String = glpStringBufferGetString(StringBuffer);
              v182[0] = MEMORY[0x277D85DD0];
              v182[1] = 0x40000000;
              v182[2] = __glpSAInterfaceBlock_block_invoke_2;
              v182[3] = &unk_278B4C5D8;
              v182[4] = &v188;
              glpNameTableGet(NameTable, String, v41, 0, v182);
              v42 = *(v188.n128_u64[1] + 24);
              if (v42)
              {
                v43 = *(v42 + 56);
                if (!v43 || !glpLayoutObjectFind(v43, 82) && !glpLayoutObjectFind(*(*(v188.n128_u64[1] + 24) + 56), 81))
                {
                  InfoLog = glpCompilerGetInfoLog(a1);
                  glpASTNodeGetLocation(v2, &v185);
                  glpLogMessage(InfoLog, 0, &v185, "Cannot redeclare interface block '%s %.*s'", v45, v46, v47, v48, v173);
                  v2 = -1;
LABEL_111:
                  _Block_object_dispose(&v188, 8);
                  goto LABEL_112;
                }
              }

              else
              {
                v2 = glpCheckName(a1, v2, BlockName, v30);
                if (v2 == -1)
                {
                  v2 = glpSAFailed();
                  goto LABEL_111;
                }
              }

              v166 = v39;
              v167 = StringBuffer;
              v171 = v30;
              v172 = BlockName;
              v178 = v24;
              v168 = Language;
              FieldCount = glpStructureNodeGetFieldCount(v2);
              v55 = FieldCount;
              v56 = FieldCount;
              MEMORY[0x28223BE20](FieldCount);
              v57 = &v165[-16 * v56];
              bzero(v57, v58);
              MEMORY[0x28223BE20](v59);
              v60 = (8 * v55 + 15) & 0xFFFFFFFF0;
              v177 = &v165[-v60];
              bzero(&v165[-v60], 8 * v55);
              MEMORY[0x28223BE20](v61);
              v176 = &v165[-v60];
              bzero(&v165[-v60], 8 * v55);
              MEMORY[0x28223BE20](v62);
              v175 = &v165[-v60];
              bzero(&v165[-v60], 8 * v55);
              if (v55)
              {
                v169 = v165;
                v63 = 0;
                v170 = &v165[-16 * v56];
                v64 = (v57 + 8);
                v174 = NameTable;
                do
                {
                  Field = glpStructureNodeGetField(v2, v63);
                  Name = glpFieldDeclarationNodeGetName(Field);
                  v68 = v66;
                  v69 = *(v188.n128_u64[1] + 24);
                  if (v69)
                  {
                    StructTypeFromIBType = glpGetStructTypeFromIBType(*(v69 + 64));
                    FieldIndex = glpStructTypeGetFieldIndex(StructTypeFromIBType, Name, v68);
                    if (FieldIndex == -1)
                    {
                      v111 = glpCompilerGetInfoLog(a1);
                      glpASTNodeGetLocation(v2, &v185);
                      glpLogMessage(v111, 0, &v185, "Field name '%.*s' in redeclaration of '%s %.*s' was not in previous declaration", v112, v113, v114, v115, v68);
                      goto LABEL_110;
                    }

                    ElementLayout = glpAggregateTypeGetElementLayout(StructTypeFromIBType, FieldIndex);
                  }

                  else
                  {
                    v73 = glpCheckName(a1, Field, Name, v66);
                    if (v73 == -1)
                    {
                      goto LABEL_110;
                    }

                    Field = v73;
                    ElementLayout = 0;
                  }

                  v183.n128_u64[0] = 0;
                  v181 = 0;
                  v180 = 0;
                  v179 = 0;
                  glpASTNodeGetLocation(v2, &v185);
                  Type = glpFieldDeclarationNodeGetType(Field);
                  if (!glpEvaluateTypeNode(a1, &v185, 9, 1, Type, v193[0], &v183, &v181, &v180, &v179))
                  {
                    goto LABEL_110;
                  }

                  v75 = glpCompilerGetAllocator(a1);
                  v76 = glpCopyLayoutObject(v75, v178);
                  if (*(v188.n128_u64[1] + 24))
                  {
                    v77 = glpCompilerGetAllocator(a1);
                    glpASTNodeGetLocation(v2, &v185);
                    if (!glpLayoutObjectAppendMany(v77, a1, &v185, v76, ElementLayout))
                    {
                      goto LABEL_110;
                    }

                    v78 = glpCompilerGetAllocator(a1);
                    glpLayoutObjectRemove(v78, v76, 82);
                  }

                  v79 = glpCompilerGetAllocator(a1);
                  glpASTNodeGetLocation(v2, &v185);
                  if (!glpLayoutObjectAppendMany(v79, a1, &v185, v76, v180))
                  {
                    goto LABEL_110;
                  }

                  if (v76)
                  {
                    v80 = glpLayoutObjectFind(v76, 24);
                    v81 = v181;
                    NameTable = v174;
                    if (v80)
                    {
                      v81 = v181 | 0x400;
                      v181 |= 0x400uLL;
                    }
                  }

                  else
                  {
                    v81 = v181;
                    NameTable = v174;
                  }

                  *(v64 - 1) = Name;
                  *v64 = v68;
                  *&v177[8 * v63] = v183.n128_u64[0];
                  *&v176[8 * v63] = v193[0] | v81;
                  *&v175[8 * v63] = v76;
                  if (glpNameTableGetGLSLVersion(NameTable) == 6 && glpTypeGetKind(v183.n128_u64[0]) == 2 && glpArrayTypeGetElementCount(v183.n128_i64[0]) == -1)
                  {
                    v131 = glpCompilerGetInfoLog(a1);
                    glpASTNodeGetLocation(v2, &v185);
                    v164 = *(v64 - 1);
                    glpLogMessage(v131, 0, &v185, "Unsized array '%.*s' not allowed under GLSL 300", v132, v133, v134, v135, *v64);
                    goto LABEL_110;
                  }

                  ++v63;
                  v64 += 2;
                }

                while (v56 != v63);
                HasInstanceName = glpInterfaceBlockNodeGetHasInstanceName(v2);
                v57 = v170;
                if (!HasInstanceName)
                {
                  if (v56)
                  {
                    v83 = (v170 + 8);
                    v84 = 0xDFA3F2CD0000004BLL;
                    v85 = v56;
                    v174 = "<<BUG: printing instance name of interface block without an instance name>>";
                    while (!glpNameTableGet(NameTable, *(v83 - 1), *v83, 2, &__block_literal_global_140))
                    {
                      v83 += 2;
                      if (!--v85)
                      {
                        goto LABEL_64;
                      }
                    }

                    v157 = glpCompilerGetInfoLog(a1);
                    glpASTNodeGetLocation(v2, &v185);
                    v163 = *(v83 - 1);
                    glpLogMessage(v157, 0, &v185, "Field name '%.*s' of interface block without instance name '%.*s' would shadow a previous declaration", v158, v159, v160, v161, *v83);
                    goto LABEL_110;
                  }

                  goto LABEL_63;
                }
              }

              else if (!glpInterfaceBlockNodeGetHasInstanceName(v2))
              {
                v170 = &v165[-16 * v56];
LABEL_63:
                v84 = 0xDFA3F2CD0000004BLL;
                v174 = "<<BUG: printing instance name of interface block without an instance name>>";
LABEL_64:
                v93 = 1;
LABEL_66:
                v94 = glpCompilerGetAllocator(a1);
                v95 = glpMakeStringBuffer(v94);
                glpStringBufferAppendFormat(v95, "$InterfaceBlockStruct$%.*s", v96, v97, v98, v99, v100, v101, v171);
                v102 = glpCompilerGetAllocator(a1);
                v103 = glpStringBufferGetString(v95);
                StructType = glpMakeStructType(v102, v103, v104, v56, v170, v177, v176, v175);
                v106 = v193[0];
                IsArray = glpInterfaceBlockNodeGetIsArray(v2);
                v183.n128_u32[0] = 1;
                if (IsArray)
                {
                  v108 = v106 & 0x160000000;
                  if ((v106 & 0x160000000) == 0x100000000)
                  {
                    v116 = 5;
                  }

                  else
                  {
                    if (v108 == 0x40000000)
                    {
                      v109 = glpBankForOutputsInLanguage(v168);
                    }

                    else
                    {
                      if (v108 != 0x20000000)
                      {
LABEL_75:
                        v117 = glpCompilerGetInfoLog(a1);
                        glpASTNodeGetLocation(v2, &v185);
                        if ((v193[0] & 0x20000000) != 0)
                        {
                          v118 = "in";
                        }

                        else
                        {
                          v118 = "out";
                        }

                        glpLanguageToString(v168);
                        glpLogMessage(v117, 0, &v185, "Interface block array not allowed as %s in %s shader", v119, v120, v121, v122, v118);
                        goto LABEL_110;
                      }

                      v109 = glpBankForInputsInLanguage(v168);
                    }

                    v116 = v109;
                    if (!v109)
                    {
                      goto LABEL_75;
                    }
                  }

                  glpASTNodeGetLocation(v2, &v185);
                  v123 = glpInterfaceBlockNodeGetDimension(v2);
                  if (!glpEvaluateArraySize(a1, &v185, v123, &v183))
                  {
                    goto LABEL_110;
                  }

                  ImpliedBankSize = glpCompilerGetImpliedBankSize(a1, v116);
                  if (v183.n128_u32[0] == -1)
                  {
                    v183.n128_u32[0] = ImpliedBankSize;
                    if (v116 == 5 && ImpliedBankSize == -1)
                    {
                      v136 = glpCompilerGetInfoLog(a1);
                      glpASTNodeGetLocation(v2, &v185);
                      glpLogMessage(v136, 0, &v185, "Uniform interface block arrays must be sized", v137, v138, v139, v140, v165[0]);
                      goto LABEL_110;
                    }
                  }

                  else if (ImpliedBankSize != -1 && v183.n128_u32[0] != ImpliedBankSize)
                  {
                    v125 = glpCompilerGetInfoLog(a1);
                    glpASTNodeGetLocation(v2, &v185);
                    v126 = v183.n128_u8[0];
                    glpLanguageToString(v168);
                    glpLogMessage(v125, 0, &v185, "Declared size (%u) of %s interface block array in the %s shader is incompatible with earlier declarations (expected %u)", v127, v128, v129, v130, v126);
                    goto LABEL_110;
                  }

                  v141 = glpCompilerGetAllocator(a1);
                  StructType = glpMakeBankType(v141, v116, StructType, v183.n128_i32[0]);
                  v110 = v178;
                }

                else
                {
                  v110 = v178;
                }

                v142 = glpCompilerGetAllocator(a1);
                v173 = v84;
                if (v93)
                {
                  UnnamedInterfaceBlockObject = glpMakeUnnamedInterfaceBlockObject(v142, v172, v171, v193[0], 1, StructType);
                  if (v56)
                  {
                    v144 = (v170 + 8);
                    do
                    {
                      glpNameTablePut(NameTable, *(v144 - 1), *v144, 3, UnnamedInterfaceBlockObject);
                      v144 += 2;
                      --v56;
                    }

                    while (v56);
                  }

                  v145 = v172;
                  v146 = v171;
                }

                else
                {
                  v145 = v172;
                  v147 = v84;
                  v146 = v171;
                  UnnamedInterfaceBlockObject = glpMakeNamedInterfaceBlockObject(v142, v172, v171, v174, v147, v193[0], 1, StructType);
                }

                *(UnnamedInterfaceBlockObject + 56) = v110;
                v148 = v167;
                if (!v166)
                {
                  glpNameTablePut(NameTable, v145, v146, 2, UnnamedInterfaceBlockObject);
                }

                v149 = glpStringBufferGetString(v148);
                glpNameTablePut(NameTable, v149, v150, 2, UnnamedInterfaceBlockObject);
                if ((v93 & 1) == 0)
                {
                  glpNameTablePut(NameTable, v174, v173, 1, UnnamedInterfaceBlockObject);
                }

                glpInterfaceBlockNodeSetExtra(v2, UnnamedInterfaceBlockObject);
                glpInterfaceBlockNodeSetQualifiers(v2, 0);
                glpInterfaceBlockNodeSetDimension(v2, 0);
                glpStructureNodeClearFields(v2);
                if (!*(v188.n128_u64[1] + 24))
                {
                  goto LABEL_111;
                }

                v151 = glpCompilerGetTopLevelNode(a1);
                DefCount = glpTopLevelNodeGetDefCount(v151);
                if (DefCount)
                {
                  v153 = DefCount;
                  v154 = 0;
                  while (1)
                  {
                    Def = glpTopLevelNodeGetDef(v151, v154);
                    if (glpIsInterfaceBlockNode(Def))
                    {
                      Extra = glpInterfaceBlockNodeGetExtra(Def);
                      if (Extra == *(v188.n128_u64[1] + 24))
                      {
                        break;
                      }
                    }

                    if (v153 == ++v154)
                    {
                      goto LABEL_107;
                    }
                  }

                  glpTopLevelNodeSetDef(v151, v154, v2);
                  v2 = 0;
                  goto LABEL_111;
                }

LABEL_107:
                abort();
              }

              InstanceName = glpInterfaceBlockNodeGetInstanceName(v2);
              v84 = v86;
              if (!*(v188.n128_u64[1] + 24))
              {
                v2 = glpCheckName(a1, v2, InstanceName, v86);
                if (v2 == -1)
                {
LABEL_110:
                  v2 = glpSAFailed();
                  goto LABEL_111;
                }
              }

              if (glpNameTableGet(NameTable, InstanceName, v84, 2, &__block_literal_global_136))
              {
                v88 = glpCompilerGetInfoLog(a1);
                glpASTNodeGetLocation(v2, &v185);
                glpLogMessage(v88, 0, &v185, "Interface block instance name '%.*s' would shadow a previous declaration", v89, v90, v91, v92, v84);
                v2 = -1;
                goto LABEL_111;
              }

              v174 = InstanceName;
              v170 = v57;
              v93 = 0;
              goto LABEL_66;
            }

            v49 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(v2, &v183);
            glpLogMessage(v49, 0, &v183, "Interface block name '%.*s' would shadow a previous declaration", v50, v51, v52, v53, v30);
            _Block_object_dispose(&v185, 8);
            _Block_object_dispose(&v188, 8);
            v2 = -1;
LABEL_112:
            v162 = *MEMORY[0x277D85DE8];
            return v2;
          }
        }
      }

      else
      {
        v19 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(v2, &v188);
        glpLogMessage(v19, 0, &v188, "Interface blocks may only be declared at global scope", v20, v21, v22, v23, v165[0]);
      }

      v2 = glpSAFailed();
      goto LABEL_112;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return glpSAFailed();
}

uint64_t glpSALayoutType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v86 = *MEMORY[0x277D85DE8];
  if (!glpLayoutTypeNodeGetLayoutPairCount(a2))
  {
    goto LABEL_8;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    LayoutPair = glpLayoutTypeNodeGetLayoutPair(v2, v4);
    v7 = glpSANode(a1, LayoutPair);
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      glpLayoutTypeNodeSetLayoutPair(v2, v4, v7);
    }

    ++v4;
  }

  while (v4 < glpLayoutTypeNodeGetLayoutPairCount(v2));
  if (!v5)
  {
    v41 = *MEMORY[0x277D85DE8];

    return glpSAFailed();
  }

  else
  {
LABEL_8:
    LayoutPairCount = glpLayoutTypeNodeGetLayoutPairCount(v2);
    v9 = 16 * LayoutPairCount;
    MEMORY[0x28223BE20](LayoutPairCount);
    v11 = &v70[-2 * v10];
    bzero(v11, v9);
    MEMORY[0x28223BE20](v12);
    v13 = v70 - ((8 * LayoutPairCount + 15) & 0xFFFFFFFF0);
    bzero(v13, 8 * LayoutPairCount);
    MEMORY[0x28223BE20](v14);
    bzero(v13, 8 * LayoutPairCount);
    MEMORY[0x28223BE20](v15);
    v16 = v13;
    bzero(v13, 8 * LayoutPairCount);
    bzero(v11, v9);
    v76 = v13;
    bzero(v13, 8 * LayoutPairCount);
    v75 = v13;
    bzero(v13, 8 * LayoutPairCount);
    bzero(v13, 8 * LayoutPairCount);
    if (LayoutPairCount)
    {
      v70[0] = v11;
      v70[1] = v70;
      v81 = 0;
      SaType = 0;
      v77 = 0;
      v78 = 0;
      v17 = 0;
      v83 = 0;
      v72 = v11 + 1;
      v73 = v70 - ((8 * LayoutPairCount + 15) & 0xFFFFFFFF0);
      v71 = LayoutPairCount - 1;
      v18 = -1;
      v79 = -1;
      Value = -1;
      v74 = LayoutPairCount;
      while (1)
      {
        v19 = glpLayoutTypeNodeGetLayoutPair(v2, v17);
        Identifier = glpLayoutPairNodeGetIdentifier(v19);
        v22 = v21;
        v85 = 0;
        Allocator = glpCompilerGetAllocator(a1);
        v24 = glpLowerCaseCopyOfString(Allocator, Identifier, v22);
        if (!glpLayoutQualifierFromString(v24, v25, &v85))
        {
          InfoLog = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v2, &v84);
          glpLogMessage(InfoLog, 0, &v84, "Unknown identifier '%.*s' in layout", v44, v45, v46, v47, v22);
          goto LABEL_48;
        }

        v26 = glpLayoutQualifierValueBehavior(v85);
        ValueKind = glpLayoutPairNodeGetValueKind(v19);
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            if (ValueKind != 2)
            {
              v60 = glpCompilerGetInfoLog(a1);
              glpASTNodeGetLocation(v2, &v84);
              glpLogMessage(v60, 0, &v84, "Identifier '%.*s' in layout must have a type", v61, v62, v63, v64, v22);
              goto LABEL_48;
            }
          }

          else
          {
            if (v26 != 3)
            {
              goto LABEL_52;
            }

            if (ValueKind != 3)
            {
              v55 = glpCompilerGetInfoLog(a1);
              glpASTNodeGetLocation(v2, &v84);
              glpLogMessage(v55, 0, &v84, "Identifier '%.*s' in layout must have a string", v56, v57, v58, v59, v22);
              goto LABEL_48;
            }
          }
        }

        else if (v26)
        {
          if (v26 != 1)
          {
            goto LABEL_52;
          }

          if (ValueKind != 1)
          {
            v50 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(v2, &v84);
            glpLogMessage(v50, 0, &v84, "Identifier '%.*s' in layout must have a value", v51, v52, v53, v54, v22);
LABEL_48:
            v2 = glpSAFailed();
            goto LABEL_49;
          }
        }

        else if (ValueKind)
        {
          v65 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(v2, &v84);
          glpLogMessage(v65, 0, &v84, "Identifier '%.*s' in layout must not have a value", v66, v67, v68, v69, v22);
          goto LABEL_48;
        }

        if (v85 <= 86)
        {
          if (v85 == 85)
          {
            Type = glpLayoutPairNodeGetType(v19);
            SaType = glpASTNodeGetSaType(Type);
          }

          else
          {
            if (v85 != 86)
            {
LABEL_52:
              abort();
            }

            v37 = glpLayoutPairNodeGetType(v19);
            v81 = glpASTNodeGetSaType(v37);
            v18 = 2;
          }
        }

        else
        {
          switch(v85)
          {
            case 'W':
              Value = glpLayoutPairNodeGetValue(v19);
              break;
            case 'X':
              v79 = glpLayoutPairNodeGetValue(v19);
              break;
            case 'Y':
              if (v17 + 1 >= LayoutPairCount)
              {
                v18 = 1;
                ++v17;
                v77 = "<<unnamed>>";
                v78 = 0x725D7890000000BLL;
              }

              else
              {
                v28 = 0;
                v29 = &v72[2 * v83];
                v30 = &v76[8 * v83];
                v31 = &v75[8 * v83];
                v32 = v16 + 8 * v83;
                v33 = v71 - v17;
                do
                {
                  v34 = glpLayoutTypeNodeGetLayoutPair(v2, v17 + v28 + 1);
                  *(v29 - 1) = glpLayoutPairNodeGetIdentifier(v34);
                  *v29 = v35;
                  v36 = glpLayoutPairNodeGetType(v34);
                  *&v30[8 * v28] = glpASTNodeGetSaType(v36);
                  *&v31[8 * v28] = 0;
                  *(v32 + 8 * v28) = 0;
                  v29 += 2;
                  ++v28;
                }

                while (v33 != v28);
                v83 += v28;
                v18 = 1;
                v78 = 0x725D7890000000BLL;
                v16 = v73;
                LODWORD(LayoutPairCount) = v74;
                v17 = v74;
                v77 = "<<unnamed>>";
              }

              break;
            default:
              goto LABEL_52;
          }
        }

        if (++v17 >= LayoutPairCount)
        {
          if (v18 == 2)
          {
            v49 = glpCompilerGetAllocator(a1);
            ArrayType = glpMakeArrayType(v49, v81, Value, v79);
          }

          else
          {
            ArrayType = SaType;
            if (v18 == 1)
            {
              v40 = glpCompilerGetAllocator(a1);
              ArrayType = glpMakeStructType(v40, v77, v78, v83, v70[0], v76, v75, v16);
            }
          }

          goto LABEL_43;
        }
      }
    }

    ArrayType = 0;
LABEL_43:
    glpASTNodeSetSaType(v2, ArrayType);
    glpASTNodeSetSaFlags(v2, 0);
LABEL_49:
    v48 = *MEMORY[0x277D85DE8];
    return v2;
  }
}