@interface GLPASTNode
@end

@implementation GLPASTNode

void *__deserialize_GLPASTNode_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 260);
  v4 = *(v2 + 256);
  if (v3 >= v4)
  {
    goto LABEL_116;
  }

  v5 = *(v2 + 248);
  v6 = *(v5 + v3);
  v7 = *(v5 + v3);
  v8 = v3 + 1;
  *(v2 + 260) = v3 + 1;
  if (v6 < 0)
  {
    v9 = (v7 >> 1) & 7;
    if (((v7 >> 1) & 7) > 3)
    {
      if (((v7 >> 1) & 7) > 5)
      {
        if (v9 == 6)
        {
          if (v3 + 5 > v4)
          {
            goto LABEL_116;
          }

          v10 = *(v5 + v8);
          *(v2 + 260) = v3 + 5;
          v11 = v3 + 8;
          if (v11 > v4)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v3 + 9 > v4)
          {
            goto LABEL_116;
          }

          v10 = *(v5 + v8);
          v11 = v3 + 9;
        }
      }

      else
      {
        v12 = v3 + 5;
        if (v9 == 4)
        {
          if (v12 > v4)
          {
            goto LABEL_116;
          }

          v10 = *(v5 + v8);
          *(v2 + 260) = v3 + 5;
          if (v3 + 5 >= v4)
          {
            goto LABEL_116;
          }

          v11 = v3 + 6;
        }

        else
        {
          if (v12 > v4)
          {
            goto LABEL_116;
          }

          v10 = *(v5 + v8);
          v13 = (v3 + 5);
          *(v2 + 260) = v13;
          if (v13 + 2 > v4)
          {
            goto LABEL_116;
          }

          v11 = v3 + 7;
        }
      }
    }

    else if (((v7 >> 1) & 7) > 1)
    {
      if (v9 == 2)
      {
        v11 = v3 + 4;
        if (v11 > v4)
        {
          goto LABEL_116;
        }

        v10 = *(v5 + v8) | (*(v5 + v8 + 2) << 16);
      }

      else
      {
        if (v3 + 5 > v4)
        {
          goto LABEL_116;
        }

        v10 = *(v5 + v8);
        v11 = v3 + 5;
      }
    }

    else if (v9)
    {
      if (v3 + 3 > v4)
      {
        goto LABEL_116;
      }

      v10 = *(v5 + v8);
      v11 = v3 + 3;
    }

    else
    {
      if (v8 >= v4)
      {
        goto LABEL_116;
      }

      v10 = *(v5 + v8);
      v11 = v3 + 2;
    }

    *(v2 + 260) = v11;
    v14 = -256 << (8 * v9);
    if (v6)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v7 = v10 | v15;
  }

  v16 = glp_serialized_integer32_control(v7);
  v17 = (v16 & 0x80u) == 0 ? 1 : ((v16 >> 1) & 7) + 2;
  v18 = *(a1 + 32);
  *(v18 + 260) -= v17;
  v19 = *(v18 + 240);
  v20 = *v19;
  v21 = v19[1];
  v22 = glpBaseSizeOfNodeKind(v7);
  v23 = v21(v20, v22, "Deserialized");
  v24 = *(a1 + 32);
  v25 = v23;
  switch(v7)
  {
    case 0:
      deserializeTypeConversionFields(*(a1 + 32), v23);
      break;
    case 1:
      deserializeVariableIdentifierFields(*(a1 + 32), v23);
      break;
    case 2:
      deserializeTypeIdentifierFields(*(a1 + 32), v23);
      break;
    case 3:
      deserializeConstantFields(*(a1 + 32), v23);
      break;
    case 4:
    case 11:
    case 12:
    case 13:
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
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 48:
    case 51:
    case 52:
    case 54:
    case 65:
    case 67:
    case 68:
    case 69:
    case 72:
    case 73:
    case 74:
    case 77:
    case 82:
      v26.n128_f64[0] = deserializeASTFields(*(a1 + 32), v23);
      break;
    case 5:
      deserializeFieldAccessFields(*(a1 + 32), v23);
      break;
    case 6:
    case 10:
      deserializeCallFields(*(a1 + 32), v23);
      break;
    case 7:
      deserializeFunctionCallFields(*(a1 + 32), v23);
      break;
    case 8:
      deserializeSubroutineArrayCallFields(*(a1 + 32), v23);
      break;
    case 9:
      deserializeMethodCallFields(*(a1 + 32), v23);
      break;
    case 30:
      deserializeEqualFields(*(a1 + 32), v23);
      break;
    case 31:
      deserializeNotEqualFields(*(a1 + 32), v23);
      break;
    case 39:
      deserializeAssignFields(*(a1 + 32), v23);
      break;
    case 40:
      deserializeASTFields(*(a1 + 32), v23);
      abort();
    case 41:
    case 42:
      deserializeASTFields(*(a1 + 32), v23);
      deserialize_GLPVariableObject(v24, v25 + 8);
      break;
    case 43:
      deserializeCommaExprFields(*(a1 + 32), v23);
      break;
    case 44:
      deserializeParameterDeclarationFields(*(a1 + 32), v23);
      break;
    case 45:
      deserializeFunctionPrototypeFields(*(a1 + 32), v23);
      break;
    case 46:
      deserializeVariableDeclarationFields(*(a1 + 32), v23);
      break;
    case 47:
      deserializeVariableDeclarationGroupFields(*(a1 + 32), v23);
      break;
    case 49:
      deserializeQualifiedDeclarationFields(*(a1 + 32), v23);
      break;
    case 50:
      deserializeQualifiedDeclarationGroupFields(*(a1 + 32), v23);
      break;
    case 53:
      deserializePrimitiveTypeFields(*(a1 + 32), v23);
      break;
    case 55:
      deserializeFieldDeclarationFields(*(a1 + 32), v23);
      break;
    case 56:
      deserializeStructTypeFields(*(a1 + 32), v23);
      break;
    case 57:
      deserializeInterfaceBlockFields(*(a1 + 32), v23);
      break;
    case 58:
      deserializeLayoutTypeFields(*(a1 + 32), v23);
      break;
    case 59:
      deserializeKeywordQualifierFields(*(a1 + 32), v23);
      break;
    case 60:
      deserializeLayoutQualifierFields(*(a1 + 32), v23);
      break;
    case 61:
      deserializeSubroutineTypeListFields(*(a1 + 32), v23);
      break;
    case 62:
      deserializeQualifierListFields(*(a1 + 32), v23);
      break;
    case 63:
      deserializeASTFields(*(a1 + 32), v23);
      deserialize_GLPLayoutObject(v24, v25 + 8);
      break;
    case 64:
      deserializeLayoutPairFields(*(a1 + 32), v23);
      break;
    case 66:
      deserializeBlockFields(*(a1 + 32), v23);
      break;
    case 70:
      deserializeCaseStatementFields(*(a1 + 32), v23);
      break;
    case 71:
      deserializeDefaultStatementFields(*(a1 + 32), v23);
      break;
    case 75:
      deserializeASTFields(*(a1 + 32), v23);
      deserialize_GLPFunctionObject(v24, v25 + 8);
      break;
    case 76:
      deserializeTopLevelFields(*(a1 + 32), v23);
      break;
    case 78:
      deserializeRawCallFields(*(a1 + 32), v23);
      break;
    case 79:
    case 85:
      deserializeASTFields(*(a1 + 32), v23);
      deserialize_GLPSubroutineUniformObject(v24, v25 + 8);
      break;
    case 80:
      deserializeOffsetFields(*(a1 + 32), v23);
      break;
    case 81:
      deserializeLValueFields(*(a1 + 32), v23);
      break;
    case 83:
      deserializeASTFields(*(a1 + 32), v23);
      deserialize_GLPInterfaceBlockObject(v24, v25 + 8);
      break;
    case 84:
      deserializePPStreamOpFields(*(a1 + 32), v23);
      break;
    default:
      glpDeserialError(*(a1 + 32), 9u);
  }

  v2 = *(a1 + 32);
  v27 = *(v2 + 260);
  v28 = *(v2 + 256);
  if (v27 >= v28)
  {
LABEL_116:
    glpDeserialError(v2, 1u);
  }

  v29 = *(v2 + 248);
  v30 = *(v29 + v27);
  v31 = *(v29 + v27);
  v32 = v27 + 1;
  *(v2 + 260) = v27 + 1;
  if (v30 < 0)
  {
    v33 = (v31 >> 1) & 7;
    if (((v31 >> 1) & 7) > 3)
    {
      if (((v31 >> 1) & 7) > 5)
      {
        if (v33 == 6)
        {
          if (v27 + 5 <= v28)
          {
            LODWORD(v29) = *(v29 + v32);
            *(v2 + 260) = v27 + 5;
            v34 = v27 + 8;
            if (v34 <= v28)
            {
LABEL_66:
              *(v2 + 260) = v34;
              v37 = -256 << (8 * v33);
              if (v30)
              {
                v38 = v37;
              }

              else
              {
                v38 = 0;
              }

              LODWORD(v31) = v29 | v38;
              goto LABEL_70;
            }
          }
        }

        else if (v27 + 9 <= v28)
        {
          v29 = *(v29 + v32);
          v34 = v27 + 9;
          goto LABEL_66;
        }
      }

      else
      {
        v35 = v27 + 5;
        if (v33 == 4)
        {
          if (v35 <= v28)
          {
            LODWORD(v29) = *(v29 + v32);
            *(v2 + 260) = v27 + 5;
            if (v27 + 5 < v28)
            {
              v34 = v27 + 6;
              goto LABEL_66;
            }
          }
        }

        else if (v35 <= v28)
        {
          LODWORD(v29) = *(v29 + v32);
          v36 = (v27 + 5);
          *(v2 + 260) = v36;
          if (v36 + 2 <= v28)
          {
            v34 = v27 + 7;
            goto LABEL_66;
          }
        }
      }
    }

    else if (((v31 >> 1) & 7) > 1)
    {
      if (v33 == 2)
      {
        v34 = v27 + 4;
        if (v34 <= v28)
        {
          LODWORD(v29) = *(v29 + v32) | (*(v29 + v32 + 2) << 16);
          goto LABEL_66;
        }
      }

      else if (v27 + 5 <= v28)
      {
        LODWORD(v29) = *(v29 + v32);
        v34 = v27 + 5;
        goto LABEL_66;
      }
    }

    else if (v33)
    {
      if (v27 + 3 <= v28)
      {
        LODWORD(v29) = *(v29 + v32);
        v34 = v27 + 3;
        goto LABEL_66;
      }
    }

    else if (v32 < v28)
    {
      LODWORD(v29) = *(v29 + v32);
      v34 = v27 + 2;
      goto LABEL_66;
    }

    goto LABEL_116;
  }

LABEL_70:
  v39 = *(v2 + 240);
  *v25 = v31;
  *(v25 + 1) = 0;
  v25[1] = (*(v39 + 8))(*v39, 8 * v31, "Vector Storage (GLPASTNode *)", v26);
  if (v31)
  {
    v40 = 0;
    v41 = v31;
    v42 = MEMORY[0x277D85DD0];
    v43 = 8 * v41;
    do
    {
      *(v25[1] + 8 * (*(v25 + 1))++) = 3730710945;
      v44 = *(a1 + 32);
      v45 = v25[1];
      v47[0] = v42;
      v47[1] = 0x40000000;
      v47[2] = __deserialize_GLPASTNode_block_invoke;
      v47[3] = &__block_descriptor_tmp_16_0;
      v47[4] = v44;
      deserialize_pointer(v44, v47, (v45 + v40));
      v40 += 8;
    }

    while (v43 != v40);
  }

  return v25;
}

@end