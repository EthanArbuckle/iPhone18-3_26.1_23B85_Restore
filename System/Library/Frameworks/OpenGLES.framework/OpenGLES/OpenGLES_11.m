uint64_t glpPrimitiveTypeFromScalarType(unsigned int a1)
{
  if (a1 >= 5)
  {
    abort();
  }

  return dword_23A29C3B0[a1];
}

uint64_t *glpAppendFlagDescription(uint64_t *result, uint64_t a2)
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
                                                    if ((a2 & 0x2000000) == 0)
                                                    {
                                                      if ((a2 & 0x4000000) == 0)
                                                      {
                                                        if ((a2 & 0x8000000) == 0)
                                                        {
                                                          if ((a2 & 0x10000000) == 0)
                                                          {
                                                            if ((a2 & 0x20000000) == 0)
                                                            {
                                                              if ((a2 & 0x40000000) == 0)
                                                              {
                                                                if ((a2 & 0x80000000) == 0)
                                                                {
                                                                  if ((a2 & 0x100000000) == 0)
                                                                  {
                                                                    if ((a2 & 0x200000000) == 0)
                                                                    {
                                                                      if ((a2 & 0x400000000) == 0)
                                                                      {
                                                                        if ((a2 & 0x800000000) == 0)
                                                                        {
                                                                          if ((a2 & 0x1000000000) == 0)
                                                                          {
                                                                            if ((a2 & 0x2000000000) == 0)
                                                                            {
                                                                              if ((a2 & 0x4000000000) == 0)
                                                                              {
                                                                                if ((a2 & 0x8000000000) == 0)
                                                                                {
                                                                                  if ((a2 & 0x10000000000) == 0)
                                                                                  {
                                                                                    if ((a2 & 0x20000000000) == 0)
                                                                                    {
                                                                                      if ((a2 & 0x40000000000) == 0)
                                                                                      {
                                                                                        if ((a2 & 0x80000000000) == 0)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        goto LABEL_175;
                                                                                      }

                                                                                      goto LABEL_173;
                                                                                    }

LABEL_171:
                                                                                    result = glpStringBufferAppendCString(v3, "PATCH");
                                                                                    if ((a2 & 0x40000000000) != 0)
                                                                                    {
                                                                                      goto LABEL_172;
                                                                                    }

                                                                                    goto LABEL_88;
                                                                                  }

LABEL_169:
                                                                                  result = glpStringBufferAppendCString(v3, "INVARIANT_420");
                                                                                  if ((a2 & 0x20000000000) != 0)
                                                                                  {
                                                                                    goto LABEL_170;
                                                                                  }

                                                                                  goto LABEL_87;
                                                                                }

LABEL_167:
                                                                                result = glpStringBufferAppendCString(v3, "INVARIANT");
                                                                                if ((a2 & 0x10000000000) != 0)
                                                                                {
                                                                                  goto LABEL_168;
                                                                                }

                                                                                goto LABEL_86;
                                                                              }

LABEL_165:
                                                                              result = glpStringBufferAppendCString(v3, "CENTROID");
                                                                              if ((a2 & 0x8000000000) != 0)
                                                                              {
                                                                                goto LABEL_166;
                                                                              }

                                                                              goto LABEL_85;
                                                                            }

LABEL_163:
                                                                            result = glpStringBufferAppendCString(v3, "NOPERSPECTIVE");
                                                                            if ((a2 & 0x4000000000) != 0)
                                                                            {
                                                                              goto LABEL_164;
                                                                            }

                                                                            goto LABEL_84;
                                                                          }

LABEL_161:
                                                                          result = glpStringBufferAppendCString(v3, "FLAT");
                                                                          if ((a2 & 0x2000000000) != 0)
                                                                          {
                                                                            goto LABEL_162;
                                                                          }

                                                                          goto LABEL_83;
                                                                        }

LABEL_159:
                                                                        result = glpStringBufferAppendCString(v3, "BUFFER_BACKED");
                                                                        if ((a2 & 0x1000000000) != 0)
                                                                        {
                                                                          goto LABEL_160;
                                                                        }

                                                                        goto LABEL_82;
                                                                      }

LABEL_157:
                                                                      result = glpStringBufferAppendCString(v3, "BINDABLE");
                                                                      if ((a2 & 0x800000000) != 0)
                                                                      {
                                                                        goto LABEL_158;
                                                                      }

                                                                      goto LABEL_81;
                                                                    }

LABEL_155:
                                                                    result = glpStringBufferAppendCString(v3, "SUBROUTINE_UNIFORM");
                                                                    if ((a2 & 0x400000000) != 0)
                                                                    {
                                                                      goto LABEL_156;
                                                                    }

                                                                    goto LABEL_80;
                                                                  }

LABEL_153:
                                                                  result = glpStringBufferAppendCString(v3, "UNIFORM");
                                                                  if ((a2 & 0x200000000) != 0)
                                                                  {
                                                                    goto LABEL_154;
                                                                  }

                                                                  goto LABEL_79;
                                                                }

LABEL_151:
                                                                result = glpStringBufferAppendCString(v3, "GLOBAL");
                                                                if ((a2 & 0x100000000) != 0)
                                                                {
                                                                  goto LABEL_152;
                                                                }

                                                                goto LABEL_78;
                                                              }

LABEL_149:
                                                              result = glpStringBufferAppendCString(v3, "STAGE_OUT");
                                                              if ((a2 & 0x80000000) != 0)
                                                              {
                                                                goto LABEL_150;
                                                              }

                                                              goto LABEL_77;
                                                            }

LABEL_147:
                                                            result = glpStringBufferAppendCString(v3, "STAGE_IN");
                                                            if ((a2 & 0x40000000) != 0)
                                                            {
                                                              goto LABEL_148;
                                                            }

                                                            goto LABEL_76;
                                                          }

LABEL_145:
                                                          result = glpStringBufferAppendCString(v3, "MAY_BE_REDECLARED_INVARIANT");
                                                          if ((a2 & 0x20000000) != 0)
                                                          {
                                                            goto LABEL_146;
                                                          }

                                                          goto LABEL_75;
                                                        }

LABEL_143:
                                                        result = glpStringBufferAppendCString(v3, "ARRAY_SIZED_BY_EXTRINSIC");
                                                        if ((a2 & 0x10000000) != 0)
                                                        {
                                                          goto LABEL_144;
                                                        }

                                                        goto LABEL_74;
                                                      }

LABEL_141:
                                                      result = glpStringBufferAppendCString(v3, "ARG_OUT");
                                                      if ((a2 & 0x8000000) != 0)
                                                      {
                                                        goto LABEL_142;
                                                      }

                                                      goto LABEL_73;
                                                    }

LABEL_139:
                                                    result = glpStringBufferAppendCString(v3, "ARG_IN");
                                                    if ((a2 & 0x4000000) != 0)
                                                    {
                                                      goto LABEL_140;
                                                    }

                                                    goto LABEL_72;
                                                  }

LABEL_137:
                                                  result = glpStringBufferAppendCString(v3, "STAGE_IN_REF");
                                                  if ((a2 & 0x2000000) != 0)
                                                  {
                                                    goto LABEL_138;
                                                  }

                                                  goto LABEL_71;
                                                }

LABEL_135:
                                                result = glpStringBufferAppendCString(v3, "CONST_EXPR");
                                                if ((a2 & 0x1000000) != 0)
                                                {
                                                  goto LABEL_136;
                                                }

                                                goto LABEL_70;
                                              }

LABEL_133:
                                              result = glpStringBufferAppendCString(v3, "PARAMETER");
                                              if ((a2 & 0x800000) != 0)
                                              {
                                                goto LABEL_134;
                                              }

                                              goto LABEL_69;
                                            }

LABEL_131:
                                            result = glpStringBufferAppendCString(v3, "SUBROUTINE_STATIC");
                                            if ((a2 & 0x400000) != 0)
                                            {
                                              goto LABEL_132;
                                            }

                                            goto LABEL_68;
                                          }

LABEL_129:
                                          result = glpStringBufferAppendCString(v3, "SUBROUTINE_IMPLEMENTATION");
                                          if ((a2 & 0x200000) != 0)
                                          {
                                            goto LABEL_130;
                                          }

                                          goto LABEL_67;
                                        }

LABEL_127:
                                        result = glpStringBufferAppendCString(v3, "SUBROUTINE_TYPEDEF");
                                        if ((a2 & 0x100000) != 0)
                                        {
                                          goto LABEL_128;
                                        }

                                        goto LABEL_66;
                                      }

LABEL_125:
                                      result = glpStringBufferAppendCString(v3, "REQUIRE_OUTPUT_POINTS");
                                      if ((a2 & 0x80000) != 0)
                                      {
                                        goto LABEL_126;
                                      }

                                      goto LABEL_65;
                                    }

LABEL_123:
                                    result = glpStringBufferAppendCString(v3, "LINKER_GENERATED_FUNCTION");
                                    if ((a2 & 0x40000) != 0)
                                    {
                                      goto LABEL_124;
                                    }

                                    goto LABEL_64;
                                  }

LABEL_121:
                                  result = glpStringBufferAppendCString(v3, "SA_HANDLING");
                                  if ((a2 & 0x20000) != 0)
                                  {
                                    goto LABEL_122;
                                  }

                                  goto LABEL_63;
                                }

LABEL_119:
                                result = glpStringBufferAppendCString(v3, "FAIL_FUNCTION");
                                if ((a2 & 0x10000) != 0)
                                {
                                  goto LABEL_120;
                                }

                                goto LABEL_62;
                              }

LABEL_117:
                              result = glpStringBufferAppendCString(v3, "PPSTREAMOP");
                              if ((a2 & 0x8000) != 0)
                              {
                                goto LABEL_118;
                              }

                              goto LABEL_61;
                            }

LABEL_115:
                            result = glpStringBufferAppendCString(v3, "INLINE");
                            if ((a2 & 0x4000) != 0)
                            {
                              goto LABEL_116;
                            }

                            goto LABEL_60;
                          }

LABEL_113:
                          result = glpStringBufferAppendCString(v3, "PURE");
                          if ((a2 & 0x2000) != 0)
                          {
                            goto LABEL_114;
                          }

                          goto LABEL_59;
                        }

LABEL_111:
                        result = glpStringBufferAppendCString(v3, "PURE_110");
                        if ((a2 & 0x1000) != 0)
                        {
                          goto LABEL_112;
                        }

                        goto LABEL_58;
                      }

LABEL_109:
                      result = glpStringBufferAppendCString(v3, "ROW_MAJOR");
                      if ((a2 & 0x800) != 0)
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_57;
                    }

LABEL_107:
                    result = glpStringBufferAppendCString(v3, "FOLDABLE");
                    if ((a2 & 0x400) != 0)
                    {
                      goto LABEL_108;
                    }

                    goto LABEL_56;
                  }

LABEL_105:
                  result = glpStringBufferAppendCString(v3, "READONLY");
                  if ((a2 & 0x200) != 0)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_55;
                }

LABEL_103:
                result = glpStringBufferAppendCString(v3, "NOT_FOLDABLE");
                if ((a2 & 0x100) != 0)
                {
                  goto LABEL_104;
                }

                goto LABEL_54;
              }

LABEL_101:
              result = glpStringBufferAppendCString(v3, "CONST_120");
              if ((a2 & 0x80) != 0)
              {
                goto LABEL_102;
              }

              goto LABEL_53;
            }

LABEL_99:
            result = glpStringBufferAppendCString(v3, "CONST_110");
            if ((a2 & 0x40) != 0)
            {
              goto LABEL_100;
            }

            goto LABEL_52;
          }

LABEL_97:
          result = glpStringBufferAppendCString(v3, "HIGHP");
          if ((a2 & 0x20) != 0)
          {
            goto LABEL_98;
          }

          goto LABEL_51;
        }

LABEL_95:
        result = glpStringBufferAppendCString(v3, "MEDIUMP");
        if ((a2 & 0x10) != 0)
        {
          goto LABEL_96;
        }

        goto LABEL_50;
      }

LABEL_93:
      result = glpStringBufferAppendCString(v3, "LOWP");
      if ((a2 & 8) != 0)
      {
        goto LABEL_94;
      }

      goto LABEL_49;
    }

LABEL_91:
    result = glpStringBufferAppendCString(v3, "_ANYP");
    if ((a2 & 4) != 0)
    {
      goto LABEL_92;
    }

    goto LABEL_48;
  }

  result = glpStringBufferAppendCString(result, "_ARGP");
  if ((a2 & 2) != 0)
  {
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_91;
  }

  if ((a2 & 4) != 0)
  {
LABEL_92:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_93;
  }

LABEL_48:
  if ((a2 & 8) != 0)
  {
LABEL_94:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_95;
  }

LABEL_49:
  if ((a2 & 0x10) != 0)
  {
LABEL_96:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_97;
  }

LABEL_50:
  if ((a2 & 0x20) != 0)
  {
LABEL_98:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_99;
  }

LABEL_51:
  if ((a2 & 0x40) != 0)
  {
LABEL_100:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_101;
  }

LABEL_52:
  if ((a2 & 0x80) != 0)
  {
LABEL_102:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_103;
  }

LABEL_53:
  if ((a2 & 0x100) != 0)
  {
LABEL_104:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_105;
  }

LABEL_54:
  if ((a2 & 0x200) != 0)
  {
LABEL_106:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_107;
  }

LABEL_55:
  if ((a2 & 0x400) != 0)
  {
LABEL_108:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_109;
  }

LABEL_56:
  if ((a2 & 0x800) != 0)
  {
LABEL_110:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_111;
  }

LABEL_57:
  if ((a2 & 0x1000) != 0)
  {
LABEL_112:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_113;
  }

LABEL_58:
  if ((a2 & 0x2000) != 0)
  {
LABEL_114:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_115;
  }

LABEL_59:
  if ((a2 & 0x4000) != 0)
  {
LABEL_116:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_117;
  }

LABEL_60:
  if ((a2 & 0x8000) != 0)
  {
LABEL_118:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_119;
  }

LABEL_61:
  if ((a2 & 0x10000) != 0)
  {
LABEL_120:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_121;
  }

LABEL_62:
  if ((a2 & 0x20000) != 0)
  {
LABEL_122:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_123;
  }

LABEL_63:
  if ((a2 & 0x40000) != 0)
  {
LABEL_124:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_125;
  }

LABEL_64:
  if ((a2 & 0x80000) != 0)
  {
LABEL_126:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_127;
  }

LABEL_65:
  if ((a2 & 0x100000) != 0)
  {
LABEL_128:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_129;
  }

LABEL_66:
  if ((a2 & 0x200000) != 0)
  {
LABEL_130:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_131;
  }

LABEL_67:
  if ((a2 & 0x400000) != 0)
  {
LABEL_132:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_133;
  }

LABEL_68:
  if ((a2 & 0x800000) != 0)
  {
LABEL_134:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_135;
  }

LABEL_69:
  if ((a2 & 0x1000000) != 0)
  {
LABEL_136:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_137;
  }

LABEL_70:
  if ((a2 & 0x2000000) != 0)
  {
LABEL_138:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_139;
  }

LABEL_71:
  if ((a2 & 0x4000000) != 0)
  {
LABEL_140:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_141;
  }

LABEL_72:
  if ((a2 & 0x8000000) != 0)
  {
LABEL_142:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_143;
  }

LABEL_73:
  if ((a2 & 0x10000000) != 0)
  {
LABEL_144:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_145;
  }

LABEL_74:
  if ((a2 & 0x20000000) != 0)
  {
LABEL_146:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_147;
  }

LABEL_75:
  if ((a2 & 0x40000000) != 0)
  {
LABEL_148:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_149;
  }

LABEL_76:
  if ((a2 & 0x80000000) != 0)
  {
LABEL_150:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_151;
  }

LABEL_77:
  if ((a2 & 0x100000000) != 0)
  {
LABEL_152:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_153;
  }

LABEL_78:
  if ((a2 & 0x200000000) != 0)
  {
LABEL_154:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_155;
  }

LABEL_79:
  if ((a2 & 0x400000000) != 0)
  {
LABEL_156:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_157;
  }

LABEL_80:
  if ((a2 & 0x800000000) != 0)
  {
LABEL_158:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_159;
  }

LABEL_81:
  if ((a2 & 0x1000000000) != 0)
  {
LABEL_160:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_161;
  }

LABEL_82:
  if ((a2 & 0x2000000000) != 0)
  {
LABEL_162:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_163;
  }

LABEL_83:
  if ((a2 & 0x4000000000) != 0)
  {
LABEL_164:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_165;
  }

LABEL_84:
  if ((a2 & 0x8000000000) != 0)
  {
LABEL_166:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_167;
  }

LABEL_85:
  if ((a2 & 0x10000000000) != 0)
  {
LABEL_168:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_169;
  }

LABEL_86:
  if ((a2 & 0x20000000000) != 0)
  {
LABEL_170:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
    goto LABEL_171;
  }

LABEL_87:
  if ((a2 & 0x40000000000) != 0)
  {
LABEL_172:
    glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
LABEL_173:
    result = glpStringBufferAppendCString(v3, "SAMPLE");
    if ((a2 & 0x80000000000) == 0)
    {
      return result;
    }

    goto LABEL_174;
  }

LABEL_88:
  if ((a2 & 0x80000000000) == 0)
  {
    return result;
  }

LABEL_174:
  glpStringBufferAppendFormat(v3, ",", v4, v5, v6, v7, v8, v9, v10);
LABEL_175:

  return glpStringBufferAppendCString(v3, "PRECISE");
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

double glpMakeFunctionObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (*(a1 + 8))(*a1, 168, "Function Object");
  result = 0.0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 160) = 0;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 112) = 0u;
  *(v13 + 128) = 0u;
  *(v13 + 144) = 0u;
  *v13 = a2;
  *(v13 + 8) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = a7;
  *(v13 + 160) = -1;
  *(v13 + 144) = 0;
  return result;
}

double glpMakeVariableObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v18 = (*(a1 + 8))(*a1, 160, "Variable Object");
  result = 0.0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0u;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  *v18 = a2;
  *(v18 + 8) = a3;
  *(v18 + 40) = a8;
  *(v18 + 48) = a4;
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  *(v18 + 32) = a7;
  *(v18 + 56) = a9;
  *(v18 + 64) = a10;
  *(v18 + 72) = a11;
  return result;
}

uint64_t glpVariableObjectGetABI(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

void *glpAppendVariableObjectDescription(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    glpStringBufferAppendFormat(a1, "*((GLPVariableObject *)%p): ", a3, a4, a5, a6, a7, a8, a2);
    v16 = *(a2 + 48);
    if (v16)
    {
      glpAppendFlagDescription(a1, v16);
      glpStringBufferAppendCString(a1, " ");
    }

    glpDumpTypeToStringBuffer(a1, *a2, v10, v11, v12, v13, v14, v15, v24);
    v25 = *(a2 + 16);
    return glpStringBufferAppendFormat(a1, " %.*s", v17, v18, v19, v20, v21, v22, *(a2 + 24));
  }

  else
  {

    return glpStringBufferAppendCString(a1, "(GLPVariableObject *)0");
  }
}

uint64_t glpVariableObjectValidateImplicitArraySize(uint64_t a1, int a2, unsigned int a3, uint64_t **a4, __int128 *a5)
{
  v9 = *a1;
  if (a2)
  {
    v10 = a2;
    do
    {
      Kind = glpTypeGetKind(v9);
      if (Kind == 3)
      {
        ElementType = glpBankTypeGetElementType(v9);
      }

      else
      {
        if (Kind != 2)
        {
          abort();
        }

        ElementType = glpArrayTypeGetElementType(v9);
      }

      v9 = ElementType;
      --v10;
    }

    while (v10);
  }

  if (glpArrayTypeGetMaxElementCount(v9) >= a3)
  {
    return 1;
  }

  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v20 = *a5;
  v21 = *(a5 + 2);
  glpLogMessage(a4, 0, &v20, "special unsized array '%.*s' may have at most %u elements (%u requested)", v13, v14, v15, v16, v18);
  return 0;
}

uint64_t glpVariableObjectExtendImplicitArraySize(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t **a4, uint64_t a5)
{
  v11 = *a5;
  v12 = *(a5 + 16);
  result = glpVariableObjectValidateImplicitArraySize(a1, a2, a3, a4, &v11);
  if (result)
  {
    v9 = a1 + 4 * a2;
    v10 = *(v9 + 96);
    if (v10 <= a3)
    {
      v10 = a3;
    }

    *(v9 + 96) = v10;
    return 1;
  }

  return result;
}

uint64_t glpGetIBVariableObjectCount(uint64_t a1, unsigned int *a2)
{
  ElementType = a2;
  v12 = *MEMORY[0x277D85DE8];
  Kind = glpTypeGetKind(a2);
  v6 = a1 == 0x20000000 || a1 == 0x40000000;
  v11 = xmmword_23A29C2D0;
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

uint64_t glpMakeUnnamedInterfaceBlockObject(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int *a6)
{
  result = glpMakeNamedInterfaceBlockObject(a1, a2, a3, "<<BUG: printing instance name of interface block without an instance name>>", 0xDFA3F2CD0000004BLL, a4, a5, a6);
  *(result + 32) = 0;
  return result;
}

uint64_t glpMakeNamedInterfaceBlockObject(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int *a8)
{
  v98 = *MEMORY[0x277D85DE8];
  v16 = (a1[1])(*a1, 88, "Interface Block Object");
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 80) = 0;
  v95 = a6;
  v17 = a6 & 0x160000000;
  *v16 = a2;
  *(v16 + 8) = a3;
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = 1;
  *(v16 + 40) = a6 & 0x160000000;
  v96 = v16;
  *(v16 + 64) = a8;
  if ((a6 & 0x160000000) == 0x100000000)
  {
    ElementType = a8;
    if (glpTypeGetKind(a8) == 3)
    {
      ElementType = glpBankTypeGetElementType(a8);
    }

    if (glpTypeGetKind(a8) == 3)
    {
      ElementCount = glpBankTypeGetElementCount(a8);
    }

    else
    {
      ElementCount = 1;
    }

    v20 = (a1[1])(*a1, 32, "Buffer Object");
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *v20 = ElementType;
    *(v20 + 8) = a7;
    *(v20 + 12) = ElementCount;
    *(v96 + 80) = v20;
  }

  Kind = glpTypeGetKind(a8);
  v23 = v17 == 0x20000000 || v17 == 0x40000000;
  v97 = xmmword_23A29C2D0;
  v24 = *(&v97 | (8 * (Kind == 3)) | (4 * v23));
  if (v24 <= 1)
  {
    v25 = a1;
    if (v24)
    {
      if (v24 != 1)
      {
        goto LABEL_46;
      }

      goto LABEL_30;
    }

LABEL_20:
    StringBuffer = glpMakeStringBuffer(v25);
    v33 = StringBuffer;
    if (v17 == 0x20000000)
    {
      v34 = 105;
    }

    else
    {
      v34 = 111;
    }

    if (v17 == 0x20000000)
    {
      v35 = "in";
    }

    else
    {
      v35 = "out";
    }

    if (v17 == 0x100000000)
    {
      v34 = 117;
      v36 = "uniform";
    }

    else
    {
      LOBYTE(v36) = v35;
    }

    glpStringBufferAppendFormat(StringBuffer, "$ib$%c$%.*s", v27, v28, v29, v30, v31, v32, v34);
    v37 = glpMakeStringBuffer(v25);
    glpStringBufferAppendFormat(v37, "<%s %.*s>", v38, v39, v40, v41, v42, v43, v36);
    *(v96 + 72) = (v25[1])(*v25, 8, "Variable Object Array of Interface Block");
    String = glpStringBufferGetString(v33);
    v46 = v45;
    v47 = glpStringBufferGetString(v37);
    v49 = v48;
    v50 = (v25[1])(*v25, 160, "Variable Object");
    *v50 = 0u;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 0u;
    *(v50 + 48) = 0u;
    *(v50 + 128) = 0u;
    *(v50 + 144) = 0u;
    *(v50 + 96) = 0u;
    *(v50 + 112) = 0u;
    *(v50 + 64) = 0u;
    *(v50 + 80) = 0u;
    *v50 = a8;
    *(v50 + 8) = 0;
    *(v50 + 40) = v49;
    *(v50 + 48) = v95 | 0x80000000;
    *(v50 + 16) = String;
    *(v50 + 24) = v46;
    *(v50 + 32) = v47;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    *(v50 + 72) = 0;
    **(v96 + 72) = v50;
    v51 = *(v96 + 72);
    v52 = *(v96 + 80);
    *(*v51 + 80) = v96;
    *(*v51 + 88) = v52;
    goto LABEL_46;
  }

  if (v24 != 3)
  {
    v25 = a1;
    if (v24 != 2)
    {
      goto LABEL_46;
    }

    goto LABEL_20;
  }

LABEL_30:
  v53 = a8;
  if (glpTypeGetKind(a8) == 3)
  {
    v53 = glpBankTypeGetElementType(a8);
  }

  v54 = glpAggregateTypeGetElementCount(v53);
  v55 = a1;
  *(v96 + 72) = (a1[1])(*a1, 8 * v54, "Variable Object Array of Interface Block");
  if (v54)
  {
    v56 = 0;
    if (v17 == 0x20000000)
    {
      v57 = 105;
    }

    else
    {
      v57 = 111;
    }

    v58 = "out";
    if (v17 == 0x20000000)
    {
      v58 = "in";
    }

    if (v17 == 0x100000000)
    {
      v57 = 117;
    }

    v92 = v57;
    v93 = v54;
    v59 = "uniform";
    if (v17 != 0x100000000)
    {
      LOBYTE(v59) = v58;
    }

    v91 = v59;
    v94 = a8;
    v90 = v53;
    do
    {
      glpStructTypeGetFieldName(v53, v56);
      BankType = glpAggregateTypeGetElementType(v53, v56);
      v61 = glpMakeStringBuffer(v55);
      glpStringBufferAppendFormat(v61, "$ib$%c$%.*s$%.*s", v62, v63, v64, v65, v66, v67, v92);
      v68 = glpMakeStringBuffer(v55);
      glpStringBufferAppendFormat(v68, "<%s %.*s.%.*s>", v69, v70, v71, v72, v73, v74, v91);
      if (glpTypeGetKind(a8) == 3)
      {
        Bank = glpBankTypeGetBank(a8);
        v76 = glpBankTypeGetElementCount(a8);
        BankType = glpMakeBankType(v55, Bank, BankType, v76);
      }

      v53 = v90;
      ElementLayout = glpAggregateTypeGetElementLayout(v90, v56);
      v78 = glpAggregateTypeGetElementFlags(v90, v56) | v95 | 0x80000000;
      v79 = glpStringBufferGetString(v61);
      v81 = v80;
      v82 = glpStringBufferGetString(v68);
      v84 = v83;
      v85 = (v55[1])(*v55, 160, "Variable Object");
      *v85 = 0u;
      *(v85 + 16) = 0u;
      *(v85 + 32) = 0u;
      *(v85 + 48) = 0u;
      *(v85 + 128) = 0u;
      *(v85 + 144) = 0u;
      *(v85 + 96) = 0u;
      *(v85 + 112) = 0u;
      *(v85 + 64) = 0u;
      *(v85 + 80) = 0u;
      *v85 = BankType;
      *(v85 + 8) = ElementLayout;
      *(v85 + 40) = v84;
      *(v85 + 48) = v78;
      *(v85 + 16) = v79;
      *(v85 + 24) = v81;
      *(v85 + 32) = v82;
      *(v85 + 56) = 0;
      *(v85 + 64) = 0;
      *(v85 + 72) = 0;
      *(*(v96 + 72) + 8 * v56) = v85;
      v86 = *(v96 + 72);
      v87 = *(v96 + 80);
      *(*(v86 + 8 * v56) + 80) = v96;
      *(*(v86 + 8 * v56++) + 88) = v87;
      a8 = v94;
    }

    while (v93 != v56);
  }

LABEL_46:
  v88 = *MEMORY[0x277D85DE8];
  return v96;
}

double glpMakeBufferObject(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = (*(a1 + 8))(*a1, 32, "Buffer Object");
  result = 0.0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 12) = a4;
  return result;
}

uint64_t glpGetStructTypeFromIBType(unsigned int *a1)
{
  if (glpTypeGetKind(a1) != 3)
  {
    return a1;
  }

  return glpBankTypeGetElementType(a1);
}

uint64_t glpInterfaceBlockObjectGetRepresentation(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  Kind = glpTypeGetKind(*(a1 + 64));
  v4 = v1 == 0x20000000 || v1 == 0x40000000;
  v7 = xmmword_23A29C2D0;
  result = *(&v7 | (8 * (Kind == 3)) | (4 * v4));
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

double glpMakeOffsetObject(uint64_t a1)
{
  v1 = (*(a1 + 8))(*a1, 32, "Offset Object");
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 24) = -1;
  return result;
}

uint64_t glpPopulatePrecisionWidths(uint64_t result, void *a2)
{
  if (result > 9)
  {
    abort();
  }

  if (((1 << result) & 0x3BE) != 0)
  {
    a2[1] = -1;
    a2[2] = -1;
    *a2 = -1;
  }

  else
  {
    if (result)
    {
      *a2 = xmmword_23A29C3D0;
      v2 = 0x2000000010;
    }

    else
    {
      *a2 = xmmword_23A29C3E0;
      v2 = 0x110000000BLL;
    }

    a2[2] = v2;
  }

  return result;
}

uint64_t glpGLSLVersionFromInt(int a1)
{
  if (a1 > 149)
  {
    if (a1 <= 329)
    {
      if (a1 == 150)
      {
        return 5;
      }

      if (a1 == 300)
      {
        return 6;
      }
    }

    else
    {
      switch(a1)
      {
        case 330:
          return 7;
        case 400:
          return 8;
        case 410:
          return 9;
      }
    }
  }

  else if (a1 <= 119)
  {
    if (a1 == 100)
    {
      return 0;
    }

    if (a1 == 110)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 120:
        return 2;
      case 130:
        return 3;
      case 140:
        return 4;
    }
  }

  return 10;
}

uint64_t glpGLSLVersionToInt(unsigned int a1)
{
  if (a1 >= 0xA)
  {
    abort();
  }

  return dword_23A29C400[a1];
}

uint64_t glpGLSLVersionGetDefault(uint64_t a1, int a2)
{
  if ((a2 - 1) > 3)
  {
    v2 = 10;
  }

  else
  {
    v2 = dword_23A29C480[a2 - 1];
  }

  if (!a2)
  {
    v2 = 1;
  }

  if (a2 == 1)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

BOOL glpGLSLVersionAllowed(uint64_t a1, int a2)
{
  GLProfile = glpCompilerGetGLProfile(a1);
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 != 5)
      {
        return GLProfile == 4;
      }
    }

    else if (a2 != 7 && a2 != 8 && a2 != 9)
    {
      goto LABEL_27;
    }

    return GLProfile == 1;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return 0;
      }

      return GLProfile == 1;
    }

    return GLProfile == 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      return GLProfile == 0;
    }

LABEL_27:
    abort();
  }

  return GLProfile == 1 || (GLProfile - 3) < 2;
}

uint64_t glpGLSLVersionRequired(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    abort();
  }

  return dword_23A29C428[a2];
}

uint64_t glpBankForInputsInLanguage(unsigned int a1)
{
  if (a1 >= 5)
  {
    abort();
  }

  return dword_23A29C450[a1];
}

uint64_t glpBankForOutputsInLanguage(unsigned int a1)
{
  if (a1 >= 5)
  {
    abort();
  }

  return dword_23A29C464[a1];
}

uint64_t glpExtensionFromString(char *__s2)
{
  result = strcmp("GL_OES_standard_derivatives", __s2);
  if (result)
  {
    if (!strcmp("GL_EXT_separate_shader_objects", __s2))
    {
      return 1;
    }

    else if (!strcmp("GL_EXT_shader_framebuffer_fetch", __s2))
    {
      return 2;
    }

    else if (!strcmp("GL_EXT_shader_texture_lod", __s2))
    {
      return 3;
    }

    else if (!strcmp("GL_EXT_shadow_samplers", __s2))
    {
      return 4;
    }

    else if (!strcmp("GL_EXT_draw_instanced", __s2))
    {
      return 5;
    }

    else if (!strcmp("GL_APPLE_ES2_extension_testing_compatibility_extension_that_shouldnt_exist", __s2))
    {
      return 6;
    }

    else if (!strcmp("GL_APPLE_clip_distance", __s2))
    {
      return 7;
    }

    else if (!strcmp("GL_ARB_draw_buffers", __s2))
    {
      return 8;
    }

    else if (!strcmp("GL_ARB_draw_instanced", __s2))
    {
      return 9;
    }

    else if (!strcmp("GL_ARB_shader_texture_lod", __s2))
    {
      return 10;
    }

    else if (!strcmp("GL_ARB_texture_rectangle", __s2))
    {
      return 11;
    }

    else if (!strcmp("GL_EXT_bindable_uniform", __s2))
    {
      return 12;
    }

    else if (!strcmp("GL_EXT_geometry_shader4", __s2))
    {
      return 13;
    }

    else if (!strcmp("GL_EXT_gpu_shader4", __s2))
    {
      return 14;
    }

    else if (!strcmp("GL_EXT_texture_array", __s2))
    {
      return 15;
    }

    else if (!strcmp("GL_APPLE_vertex_point_size", __s2))
    {
      return 16;
    }

    else if (!strcmp("GL_ARB_explicit_attrib_location", __s2))
    {
      return 17;
    }

    else if (!strcmp("GL_ARB_gpu_shader_fp64", __s2))
    {
      return 18;
    }

    else if (!strcmp("GL_ARB_gpu_shader5", __s2))
    {
      return 19;
    }

    else if (!strcmp("GL_ARB_sample_shading", __s2))
    {
      return 20;
    }

    else if (!strcmp("GL_ARB_separate_shader_objects", __s2))
    {
      return 21;
    }

    else if (!strcmp("GL_ARB_shader_bit_encoding", __s2))
    {
      return 22;
    }

    else if (!strcmp("GL_ARB_shader_precision", __s2))
    {
      return 23;
    }

    else if (!strcmp("GL_ARB_shader_subroutine", __s2))
    {
      return 24;
    }

    else if (!strcmp("GL_ARB_shading_language_include", __s2))
    {
      return 25;
    }

    else if (!strcmp("GL_ARB_tessellation_shader", __s2))
    {
      return 26;
    }

    else if (!strcmp("GL_ARB_texture_cube_map_array", __s2))
    {
      return 27;
    }

    else if (!strcmp("GL_ARB_texture_gather", __s2))
    {
      return 28;
    }

    else if (!strcmp("GL_ARB_texture_multisample", __s2))
    {
      return 29;
    }

    else if (!strcmp("GL_ARB_texture_query_lod", __s2))
    {
      return 30;
    }

    else if (!strcmp("GL_ARB_vertex_attrib_64bit", __s2))
    {
      return 31;
    }

    else if (!strcmp("GL_ARB_viewport_array", __s2))
    {
      return 32;
    }

    else if (!strcmp("GL_APPLE_shader_draw_parameters_draw_id", __s2))
    {
      return 33;
    }

    else if (!strcmp("GL_APPLE_bad_sl_glsl_usage", __s2))
    {
      return 34;
    }

    else if (!strcmp("GL_APPLE_special_ops", __s2))
    {
      return 35;
    }

    else if (!strcmp("GL_APPLE_sa_assertions", __s2))
    {
      return 36;
    }

    else if (!strcmp("GL_APPLE_fail_mixed_int_uint", __s2))
    {
      return 37;
    }

    else
    {
      return 38;
    }
  }

  return result;
}

char *glpExtensionToString(unsigned int a1)
{
  if (a1 >= 0x26)
  {
    abort();
  }

  return off_278B492C0[a1];
}

BOOL glpExtensionAllowed(uint64_t a1, int a2)
{
  GLProfile = glpCompilerGetGLProfile(a1);
  NameTable = glpCompilerGetNameTable(a1);
  GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
  result = 1;
  switch(a2)
  {
    case 0:
    case 3:
    case 4:
    case 5:
      v8 = GLProfile == 4 && GLSLVersion == 0 || GLProfile == 3;
      goto LABEL_10;
    case 1:
    case 2:
    case 7:
      return (GLProfile - 3) < 2;
    case 6:
      v8 = GLProfile == 1 && GLSLVersion == 0;
      goto LABEL_10;
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 34:
      v8 = GLProfile == 0;
      goto LABEL_10;
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
      v8 = GLProfile == 1;
LABEL_10:
      result = v8;
      break;
    case 26:
      result = GLProfile == 1 && GLSLVersion > 4;
      break;
    case 35:
    case 36:
    case 37:
      return result;
    default:
      abort();
  }

  return result;
}

BOOL glpExtensionAllowedAndDefault(uint64_t a1, int a2)
{
  GLProfile = glpCompilerGetGLProfile(a1);
  NameTable = glpCompilerGetNameTable(a1);
  GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
  v7 = glpCompilerGetNameTable(a1);
  Language = glpNameTableGetLanguage(v7);
  result = 0;
  if (a2 <= 13)
  {
    if (a2 > 8)
    {
      if (a2 > 11)
      {
        if (a2 == 12)
        {
          return result;
        }

        return !GLProfile && Language == 3;
      }

      if ((a2 - 9) < 2)
      {
        return result;
      }

      if (a2 != 11)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (a2 < 8)
      {
        return result;
      }

      if (a2 != 8)
      {
        goto LABEL_37;
      }
    }

    return GLProfile == 0;
  }

  if ((a2 - 14) < 0xC)
  {
    return result;
  }

  if (a2 > 0x25)
  {
LABEL_23:
    if (a2 == 26)
    {
      v12 = Language - 1;
      v10 = GLProfile != 1 || GLSLVersion <= 4 || v12 >= 2;
      return !v10;
    }

LABEL_37:
    abort();
  }

  if (((1 << a2) & 0x1BF8000000) != 0)
  {
    return result;
  }

  if (a2 != 34)
  {
    if (a2 == 37)
    {
      v10 = GLSLVersion >= 8;
      return !v10;
    }

    goto LABEL_23;
  }

  if (GLProfile)
  {
    return 0;
  }

  else
  {
    return glpCompilerGetIOSVersion(a1) >> 31;
  }
}

char *glpLanguageToString(unsigned int a1)
{
  if (a1 >= 5)
  {
    abort();
  }

  return off_278B493F0[a1];
}

uint64_t glpFixInterpolateAt(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  PointerHash = glpMakePointerHash(a1);
  v10 = *(a3 + 32);
  if (v10)
  {
    v11 = 0;
    for (i = 0; i < v10; ++i)
    {
      v13 = *(*(a3 + 40) + v11);
      if (v13)
      {
        glpPointerHashPut(PointerHash, *v13, v13, v9);
        v10 = *(a3 + 32);
      }

      v11 += 32;
    }
  }

  return _fixInterpolateAt(a1, PointerHash, a4, a2);
}

uint64_t _fixInterpolateAt(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = result;
    if (glpASTNodeGetChildCount(a4))
    {
      v8 = 0;
      do
      {
        Child = glpASTNodeGetChild(a4, v8);
        _fixInterpolateAt(v7, a2, a3, Child);
        ++v8;
      }

      while (v8 < glpASTNodeGetChildCount(a4));
    }

    result = glpASTNodeGetKind(a4);
    if (result == 84)
    {

      return _fixInterpolateAtInPPStreamOp(v7, a2, a3, a4);
    }
  }

  return result;
}

uint64_t _fixInterpolateAtInPPStreamOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = glpPPStreamOpNodeGetOpcode(a4);
  if ((result - 167) <= 2)
  {
    v9 = glpCallNodeGetArg(a4, 0);
    VariableExtra = glpLValueNodeGetVariableExtra(v9);
    v11 = glpPointerHashGet(a2, VariableExtra);
    glpASTNodeGetSaType(v9);
    Offset = glpDerefNodeGetOffset(v9);
    if (Offset)
    {
      v13 = Offset;
      OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
      v15 = OffsetExpr;
      if (OffsetExpr)
      {
        SaType = glpASTNodeGetSaType(OffsetExpr);
        Value = glpConstantNodeGetValue(v15);
        LODWORD(v15) = glpValueGetAsSize(SaType, Value);
      }

      Swizzle = glpOffsetNodeGetSwizzle(v13);
      v19 = a1;
      v20 = VariableExtra;
      v21 = v15;
    }

    else
    {
      v19 = a1;
      v20 = VariableExtra;
      v21 = 0;
      Swizzle = 0;
    }

    v22 = v11 + 8 * _slotInLocationForOffsetIntoUserIn(v19, v20, v21, Swizzle);
    v23 = glpIntHashGet(a3, *(v22 + 16));
    Swizzle_0 = glpMakeSwizzle_0(v23, v24, v25, v26, v27, v28, v29, v30, *(v22 + 20));
    glpASTNodeGetLocation(v9, &v44);
    OffsetNode = glpMakeOffsetNode(a1, &v44);
    glpOffsetNodeSetSwizzle(OffsetNode, Swizzle_0);
    v33 = glpASTNodeGetSaType(v23);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v33);
    glpOffsetNodeSetPreSwizzlePrimitiveType(OffsetNode, PrimitiveType);
    glpMakeOffsetObject(a1);
    glpOffsetNodeSetExtra(OffsetNode, v35);
    glpASTNodeGetLocation(v9, &v44);
    VariableName = glpLValueNodeGetVariableName(v9);
    v38 = v37;
    Extra = glpVariableDeclarationNodeGetExtra(v23);
    glpMakeLValueNode(a1, &v44, VariableName, v38, Extra);
    v41 = v40;
    glpDerefNodeSetOffset(v40, OffsetNode);
    v42 = glpGetPrimitiveType(1u);
    glpASTNodeSetSaType(v41, v42);
    glpASTNodeSetSaFlags(v41, 0);
    v43 = glpLValueNodeGetVariableExtra(v41);
    *(v43 + 48) |= 0x1000000uLL;
    return glpCallNodeSetArg(a4, 0, v41);
  }

  return result;
}

uint64_t _slotInLocationForOffsetIntoUserIn(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  v8 = glpABIGetTypeSize(0, *a2, 0);
  Size = glpTypeSizeGetSize(v8);
  v10 = (*(a1 + 8))(*a1, 4 * Size, "Array of vec4 types for fixing interpolateAt");
  glpTypeGetAppleVec4Types(*a2, v10, 1, 0, 0, 0, 0, 0, 0);
  if (a3)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (BitSetGetEquals(a2[15], v11))
      {
        v12 += glpPrimitiveTypeGetScalarCount(v10[v11]);
      }

      ++v11;
    }

    while (a3 != v11);
  }

  else
  {
    v12 = 0;
  }

  if ((a4 & 7) == 1)
  {
    v13 = (a4 >> 3) & 3;
  }

  else
  {
    v13 = 0;
  }

  return (v12 + v13);
}

uint64_t glpGetBIArchiveData(int a1, uint8_t **a2, _DWORD *a3)
{
  memset(&v10, 0, sizeof(v10));
  if (dladdr(&glpGetBIArchiveData__anchor, &v10))
  {
    size = 0;
    v6 = getsectiondata(v10.dli_fbase, "__GLSLBUILTINS", ARCHIVE_SECTIONS[a1], &size);
    if (v6)
    {
      *a2 = v6;
      *a3 = size;
      return 1;
    }

    v8 = "getsectiondata() == NULL";
  }

  else
  {
    v8 = "dladdr() != 0";
  }

  _glpSetCrashLogMessage(v8);
  return 0;
}

uint64_t glpInitializeExtensionBehavior(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 616;
  do
  {
    *(v3 + 4 * v2) = 3;
    result = glpExtensionAllowedAndDefault(*(a1 + 784), v2);
    if (result)
    {
      *(v3 + 4 * v2) = 1;
      NameTable = glpCompilerGetNameTable(*(a1 + 784));
      result = glpNameTableSetGLSLExtensionBehavior(NameTable, v2, 1);
    }

    ++v2;
  }

  while (v2 != 38);
  return result;
}

uint64_t glpAddExtensionDefines(uint64_t a1)
{
  for (i = 0; i != 2; ++i)
  {
    v3 = glpAddExtensionDefines_builtinDefines[i];
    v4 = strlen(v3);
    v5 = malloc_type_malloc(v4 + 14, 0xCA0EF1E7uLL);
    if (!v5)
    {
LABEL_10:
      abort();
    }

    v6 = v5;
    sprintf_l(v5, 0, "#define %s 1\n", v3);
    ScanFromSimpleString(a1 + 40, v6, 1);
  }

  for (j = 0; j != 38; ++j)
  {
    result = glpExtensionAllowed(*(a1 + 784), j);
    if (result)
    {
      v9 = glpExtensionToString(j);
      v10 = strlen(v9);
      v11 = malloc_type_malloc(v10 + 14, 0xCA0EF1E7uLL);
      if (!v11)
      {
        goto LABEL_10;
      }

      v12 = v11;
      sprintf_l(v11, 0, "#define %s 1\n", v9);
      result = ScanFromSimpleString(a1 + 40, v12, 1);
    }
  }

  return result;
}

uint64_t glpInitParseContext(uint64_t *a1, uint64_t a2)
{
  bzero(a1, 0x320uLL);
  *a1 = glpCompilerGetLanguage(a2);
  *(a1 + 152) = 1;
  a1[98] = a2;
  Allocator = glpCompilerGetAllocator(a2);
  StringHash = glpMakeStringHash(Allocator);
  a1[4] = StringHash;
  glpStringHashPut(StringHash, "gl_DepthRangeParameters", 0x775A9C5100000017uLL, 1, v6);
  glpStringHashPut(a1[4], "gl_FogParameters", 0x46B6471700000010uLL, 1, v7);
  glpStringHashPut(a1[4], "gl_LightSourceParameters", 0xBE176FAB00000018, 1, v8);
  glpStringHashPut(a1[4], "gl_LightModelParameters", 0xCD6CB4500000017uLL, 1, v9);
  glpStringHashPut(a1[4], "gl_LightModelProducts", 0xC75531D000000015, 1, v10);
  glpStringHashPut(a1[4], "gl_LightProducts", 0x7CA8967F00000010uLL, 1, v11);
  glpStringHashPut(a1[4], "gl_MaterialParameters", 0xAE967D6C00000015, 1, v12);
  glpStringHashPut(a1[4], "gl_PointParameters", 0x3E31F0AB00000012uLL, 1, v13);
  a1[9] = a1;
  glpLexerNew(a1);

  return glpInitPreprocessor((a1 + 5), 0, 0);
}

uint64_t glpFinalizeParseContext(uint64_t a1)
{
  glpFinalizePreprocessor(a1 + 40);

  return glpLexerFree(a1);
}

void *glpMakeLayoutObject(uint64_t a1)
{
  result = (*(a1 + 8))(*a1, 16, "Layout Object");
  *result = 0;
  result[1] = 0;
  return result;
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

void *glpCopyLayoutObject(void *a1, void **a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = (a1[1])(*a1, 16, "Layout Object");
  *v4 = 0;
  v4[1] = 0;
  v5 = *a2;
  if (*a2)
  {
    do
    {
      v6 = *v5;
      v7 = (a1[1])(*a1, 24, "Layout Pair (copy)");
      *v7 = 0;
      v7[1] = v5[1];
      v7[2] = v5[2];
      *v7 = 0;
      v8 = v4[1];
      if (!v8)
      {
        v8 = v4;
      }

      *v8 = v7;
      v4[1] = v7;
      v5 = v6;
    }

    while (v6);
  }

  return v4;
}

uint64_t glpDestroyLayoutObject(uint64_t result, void **a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      do
      {
        v5 = *v4;
        (*(v3 + 24))(*v3);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *(v3 + 24);
    v7 = *v3;

    return v6(v7, a2);
  }

  return result;
}

uint64_t glpLayoutObjectAppend(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, void *a6, int a7)
{
  v13 = (*(a1 + 8))(*a1, 24, "Layout Pair (no value)");
  *(v13 + 8) = a7;
  *(v13 + 12) = 0;
  v15 = *a3;
  v16 = *(a3 + 16);
  return addPair(a2, &v15, a4, a5, a6, v13);
}

uint64_t addPair(uint64_t a1, __int128 *a2, int a3, unint64_t a4, void *a5, uint64_t a6)
{
  v98 = *a2;
  v102 = *(a2 + 2);
  v11 = *(a6 + 8);
  v12 = glpLayoutQualifierValueBehavior(v11);
  v96 = a6;
  v13 = *(a6 + 12);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_9;
    }

    if (a1)
    {
      v14 = glpLayoutQualifierToString(v11);
      InfoLog = glpCompilerGetInfoLog(a1);
      v106 = v98;
      v107 = v102;
      glpLogMessage(InfoLog, 0, &v106, "Identifier '%s' in layout must not have a value", v16, v17, v18, v19, v14);
    }

    return 0;
  }

  if (v12 != 1)
  {
    if ((v12 - 2) < 2)
    {
LABEL_4:
      abort();
    }

    goto LABEL_9;
  }

  if (v13 != 1)
  {
    if (a1)
    {
      v58 = glpLayoutQualifierToString(v11);
      v59 = glpCompilerGetInfoLog(a1);
      v106 = v98;
      v107 = v102;
      glpLogMessage(v59, 0, &v106, "Identifier '%s' in layout must have a value", v60, v61, v62, v63, v58);
    }

    return 0;
  }

LABEL_9:
  v95 = a4;
  v20 = a1;
  v99 = *a2;
  v103 = *(a2 + 2);
  v21 = *(v96 + 8);
  v22 = glpLayoutQualifierValueBehavior(v21);
  v23 = glpLayoutQualifierMutexGroup(v21);
  v24 = glpLayoutMutexGroupBehavior(v23);
  v25 = *a5;
  if (*a5)
  {
    v26 = v24;
    while (1)
    {
      v27 = v25;
      v25 = *v25;
      v28 = *(v27 + 2);
      v29 = glpLayoutQualifierMutexGroup(v28);
      if (v26)
      {
        v30 = v23 == v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;
      if (v21 != v28 && v31 == 0)
      {
        goto LABEL_39;
      }

      if (v22 == 1)
      {
        if (*(v96 + 16) != *(v27 + 4))
        {
          if (v20)
          {
            v64 = glpCompilerGetInfoLog(v20);
            v65 = glpLayoutQualifierToString(v21);
            v66 = *(v96 + 16);
            v67 = *(v27 + 4);
            v106 = v99;
            v107 = v103;
            glpLogMessage(v64, 0, &v106, "New value for layout '%s' ('%d') does not match previous declaration ('%d')", v68, v69, v70, v71, v65);
          }

          return 0;
        }
      }

      else if ((v22 - 2) < 2)
      {
        goto LABEL_4;
      }

      if (v26 != 2)
      {
        if (v26 == 1)
        {
          v33 = 0;
          v34 = a5;
          while (1)
          {
            v35 = v33;
            v33 = *v34;
            if (!*v34)
            {
              break;
            }

            v34 = *v34;
            if (*(v33 + 2) == v28)
            {
              goto LABEL_35;
            }
          }
        }

        goto LABEL_39;
      }

      if (v21 != v28)
      {
        if (v20)
        {
          v72 = glpCompilerGetInfoLog(v20);
          v73 = glpLayoutMutexGroupToString(v23);
          glpLayoutQualifierToString(v21);
          glpLayoutQualifierToString(v28);
          v106 = v99;
          v107 = v103;
          glpLogMessage(v72, 0, &v106, "New %s layout '%s' does not match previous declaration ('%s')", v74, v75, v76, v77, v73);
        }

        return 0;
      }

      v33 = 0;
      v36 = a5;
      do
      {
        v35 = v33;
        v33 = *v36;
        if (!*v36)
        {
          goto LABEL_39;
        }

        v36 = *v36;
      }

      while (*(v33 + 2) != v21);
LABEL_35:
      v37 = *v33;
      if (v35)
      {
        *v35 = v37;
        if (v33 == a5[1])
        {
          goto LABEL_42;
        }

LABEL_39:
        if (!v25)
        {
          break;
        }
      }

      else
      {
        *a5 = v37;
        if (v33 != a5[1])
        {
          goto LABEL_39;
        }

        v35 = 0;
LABEL_42:
        a5[1] = v35;
        if (!v25)
        {
          break;
        }
      }
    }
  }

  v100 = *a2;
  v104 = *(a2 + 2);
  v38 = *(v96 + 8);
  if (v38 == 9)
  {
    v39 = v20;
    if (*(v96 + 16))
    {
      if (v20)
      {
        v46 = glpCompilerGetInfoLog(v20);
        v47 = *(v96 + 16);
        v106 = v100;
        v107 = v104;
        glpLogMessage(v46, 0, &v106, "layout(stream=%d) value must be greater than or equal to zero and may not exceed (%u)", v48, v49, v50, v51, v47);
      }

      return 0;
    }
  }

  else
  {
    v39 = v20;
    if (v38 == 18 && (*(v96 + 16) - 33) <= 0xFFFFFFDF)
    {
      if (v20)
      {
        v40 = glpCompilerGetInfoLog(v20);
        v41 = *(v96 + 16);
        v106 = v100;
        v107 = v104;
        glpLogMessage(v40, 0, &v106, "layout(vertices=%d) value must be greater than zero and may not exceed gl_MaxPatchVertices (%u)", v42, v43, v44, v45, v41);
      }

      return 0;
    }
  }

  v101 = *a2;
  v105 = *(a2 + 2);
  if (v39 && a3)
  {
    NameTable = glpCompilerGetNameTable(v39);
    Language = glpNameTableGetLanguage(NameTable);
    GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
    v55 = *(v96 + 8);
    v56 = GLSLVersion;
    switch(v55)
    {
      case 0:
        v83 = a3 == 2 && Language == 3;
        v84 = !v83;
        v85 = (v95 >> 29) & 1;
        LODWORD(v78) = v85 & (v84 ^ 1);
        if (!v83)
        {
          LODWORD(v85) = 1;
        }

        if (!v85)
        {
          LODWORD(v78) = (v95 >> 30) & 1;
        }

        goto LABEL_135;
      case 1:
      case 2:
      case 4:
        if (a3 != 2 || Language != 3)
        {
          goto LABEL_141;
        }

        goto LABEL_131;
      case 3:
        if (a3 == 2 && (v95 & 0x20000000) != 0 && Language == 3)
        {
          goto LABEL_136;
        }

        goto LABEL_129;
      case 5:
        if ((v95 & 0x20000000) == 0 || a3 != 2)
        {
          goto LABEL_141;
        }

        goto LABEL_109;
      case 6:
      case 7:
      case 8:
        if (a3 != 2 || Language != 3)
        {
          goto LABEL_141;
        }

        goto LABEL_134;
      case 9:
        if ((v95 & 0x40000000) == 0 || (a3 & 0xFFFFFFF7) != 1)
        {
          goto LABEL_141;
        }

LABEL_109:
        if (Language != 3)
        {
          goto LABEL_141;
        }

        if (GLSLVersion > 7)
        {
          goto LABEL_136;
        }

        v79 = NameTable;
        v80 = 19;
LABEL_112:
        LODWORD(v78) = glpNameTableIsExtensionEnabled(v79, v80);
        goto LABEL_135;
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
LABEL_129:
        if (a3 == 2 && Language == 2)
        {
          goto LABEL_131;
        }

        goto LABEL_141;
      case 18:
        if (a3 == 2 && Language == 1)
        {
          goto LABEL_134;
        }

        goto LABEL_141;
      case 19:
      case 20:
        if (a3 != 1 || Language != 4)
        {
          goto LABEL_141;
        }

        goto LABEL_131;
      case 21:
        if (a3 != 7 && a3 != 2)
        {
          goto LABEL_141;
        }

        v78 = HIDWORD(v95) & 1;
        goto LABEL_135;
      case 22:
      case 23:
        if (a3 != 7 && a3 != 2)
        {
          goto LABEL_141;
        }

        v78 = HIDWORD(v95) & 1;
        goto LABEL_135;
      case 24:
      case 25:
        if (a3 == 2 || a3 == 7)
        {
          if ((v95 & 0x100000000) != 0)
          {
            goto LABEL_136;
          }

          LODWORD(v78) = 0;
        }

        else
        {
          v78 = HIDWORD(v95) & 1;
        }

        if (a3 != 9)
        {
          LODWORD(v78) = 0;
        }

        goto LABEL_135;
      case 26:
        if (GLSLVersion > 5 || glpNameTableIsExtensionEnabled(NameTable, 0x11u) || glpNameTableIsExtensionEnabled(NameTable, 0x15u) || glpNameTableIsExtensionEnabled(NameTable, 1u) || glpNameTableIsExtensionEnabled(NameTable, 0x23u))
        {
          v81 = v95;
          if ((v95 & 0x20000000) == 0 || Language)
          {
            v82 = (Language == 4) & (v95 >> 30);
          }

          else
          {
            v82 = 1;
          }

          if (v56 > 8)
          {
            goto LABEL_153;
          }
        }

        else
        {
          v82 = 0;
          v81 = v95;
        }

        if (!glpNameTableIsExtensionEnabled(NameTable, 0x15u) && !glpNameTableIsExtensionEnabled(NameTable, 1u))
        {
          goto LABEL_165;
        }

LABEL_153:
        if (v82)
        {
          v82 = 1;
        }

        else
        {
          v82 = (v81 & 0x60000000) != 0 && ((v81 & 0x20000000) == 0 || Language) && ((v81 & 0x40000000) == 0 || Language != 4);
        }

LABEL_165:
        if (a3 == 1)
        {
          LODWORD(v78) = v82;
        }

        else
        {
          LODWORD(v78) = 0;
        }

LABEL_135:
        if (v78)
        {
          goto LABEL_136;
        }

LABEL_141:
        v88 = glpCompilerGetInfoLog(v39);
        v106 = v101;
        v107 = v105;
        v94 = glpLayoutQualifierToString(v55);
        glpLogMessage(v88, 0, &v106, "Invalid use of layout '%s'", v89, v90, v91, v92, v94);
        break;
      case 27:
        if ((v95 & 0x40000000) == 0 || (a3 & 0xFFFFFFF7) != 1 || Language != 4)
        {
          goto LABEL_141;
        }

        if (GLSLVersion > 6)
        {
          goto LABEL_136;
        }

        v79 = NameTable;
        v80 = 17;
        goto LABEL_112;
      case 28:
      case 29:
      case 30:
      case 33:
      case 34:
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
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 79:
      case 80:
      case 81:
      case 83:
        v57 = (a3 & 0xFFFFFFF7) == 1;
        goto LABEL_88;
      case 31:
      case 78:
        LODWORD(v78) = (v95 & 0x60000000) != 0;
        if ((a3 & 0xFFFFFFF7) != 1)
        {
          goto LABEL_141;
        }

        goto LABEL_135;
      case 32:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
        v57 = a3 == 4;
        goto LABEL_88;
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
        if ((a3 & 0xFFFFFFF7) != 1)
        {
          goto LABEL_141;
        }

LABEL_131:
        LODWORD(v78) = (v95 >> 29) & 1;
        goto LABEL_135;
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
        if ((a3 & 0xFFFFFFF7) != 1)
        {
          goto LABEL_141;
        }

LABEL_134:
        LODWORD(v78) = (v95 >> 30) & 1;
        goto LABEL_135;
      case 77:
        LODWORD(v78) = Language == 4;
        if ((a3 & 0xFFFFFFF7) != 1 || (v95 & 0x40000000) == 0)
        {
          goto LABEL_141;
        }

        goto LABEL_135;
      case 82:
        v57 = a3 == 1 || a3 == 7;
        goto LABEL_88;
      case 84:
        LODWORD(v78) = a3 == 7;
        if ((a3 & 0xFFFFFFF7) == 1)
        {
          goto LABEL_136;
        }

        goto LABEL_135;
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
        goto LABEL_136;
      case 98:
      case 99:
        v57 = a3 == 5;
LABEL_88:
        LODWORD(v78) = v57;
        goto LABEL_135;
      default:
        goto LABEL_141;
    }

    return 0;
  }

LABEL_136:
  *v96 = 0;
  v86 = a5[1];
  if (!v86)
  {
    v86 = a5;
  }

  *v86 = v96;
  a5[1] = v96;
  return 1;
}

uint64_t glpLayoutObjectAppendInteger(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, void *a6, int a7, int a8)
{
  v15 = (*(a1 + 8))(*a1, 24, "Layout Pair (int value)");
  v15[2] = a7;
  v15[3] = 1;
  v15[4] = a8;
  v17 = *a3;
  v18 = *(a3 + 16);
  return addPair(a2, &v17, a4, a5, a6, v15);
}

BOOL glpLayoutObjectAppendMany(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void **a5)
{
  if (!a5)
  {
    return 1;
  }

  v9 = *a5;
  do
  {
    v10 = v9;
    if (!v9)
    {
      break;
    }

    v9 = *v9;
    v11 = (*(a1 + 8))(*a1, 24, "Layout Pair (copy)");
    *v11 = 0;
    v11[1] = v10[1];
    v11[2] = v10[2];
    v13 = *a3;
    v14 = *(a3 + 16);
  }

  while (addPair(a2, &v13, 0, 0, a4, v11));
  return v10 == 0;
}

void glpLayoutObjectRemove(uint64_t a1, void *a2, int a3)
{
  v3 = 0;
  v4 = a2;
  while (1)
  {
    v5 = v3;
    v3 = *v4;
    if (!*v4)
    {
      break;
    }

    v4 = *v4;
    if (*(v3 + 2) == a3)
    {
      v6 = *v3;
      if (v5)
      {
        *v5 = v6;
        if (v3 != a2[1])
        {
          return;
        }
      }

      else
      {
        *a2 = v6;
        if (v3 != a2[1])
        {
          return;
        }

        v5 = 0;
      }

      a2[1] = v5;
      return;
    }
  }
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

BOOL glpLayoutQualifierFromString(char *__s2, uint64_t a2, int *a3)
{
  if (glpStringsEqual("points", 0x7B7EE50D00000006uLL, __s2, a2))
  {
    v6 = 0;
LABEL_75:
    *a3 = v6;
    return 1;
  }

  if (glpStringsEqual("lines", 0x12E7E8E100000005uLL, __s2, a2))
  {
    v6 = 1;
    goto LABEL_75;
  }

  if (glpStringsEqual("lines_adjacency", 0xFE3C3DF0000000FuLL, __s2, a2))
  {
    v6 = 2;
    goto LABEL_75;
  }

  if (glpStringsEqual("triangles", 0x4499ED2F00000009uLL, __s2, a2))
  {
    v6 = 3;
    goto LABEL_75;
  }

  if (glpStringsEqual("triangles_adjacency", 0x4DA743600000013uLL, __s2, a2))
  {
    v6 = 4;
    goto LABEL_75;
  }

  if (glpStringsEqual("invocations", 0x5D18CBDA0000000BuLL, __s2, a2))
  {
    v6 = 5;
    goto LABEL_75;
  }

  if (glpStringsEqual("line_strip", 0xA97F411C0000000ALL, __s2, a2))
  {
    v6 = 6;
    goto LABEL_75;
  }

  if (glpStringsEqual("triangle_strip", 0x363FB6020000000EuLL, __s2, a2))
  {
    v6 = 7;
    goto LABEL_75;
  }

  if (glpStringsEqual("max_vertices", 0x326FEE410000000CuLL, __s2, a2))
  {
    v6 = 8;
    goto LABEL_75;
  }

  if (glpStringsEqual("stream", 0x799D8DE900000006uLL, __s2, a2))
  {
    v6 = 9;
    goto LABEL_75;
  }

  if (glpStringsEqual("quads", 0x12E7139A00000005uLL, __s2, a2))
  {
    v6 = 10;
    goto LABEL_75;
  }

  if (glpStringsEqual("isolines", 0x18196CE900000008uLL, __s2, a2))
  {
    v6 = 11;
    goto LABEL_75;
  }

  if (glpStringsEqual("equal_spacing", 0x1517300C0000000DuLL, __s2, a2))
  {
    v6 = 12;
    goto LABEL_75;
  }

  if (glpStringsEqual("fractional_even_spacing", 0xFD76F59A00000017, __s2, a2))
  {
    v6 = 13;
    goto LABEL_75;
  }

  if (glpStringsEqual("fractional_odd_spacing", 0x3A06069000000016uLL, __s2, a2))
  {
    v6 = 14;
    goto LABEL_75;
  }

  if (glpStringsEqual("cw", 0x178500000002uLL, __s2, a2))
  {
    v6 = 15;
    goto LABEL_75;
  }

  if (glpStringsEqual("ccw", 0x39B1A00000003uLL, __s2, a2))
  {
    v6 = 16;
    goto LABEL_75;
  }

  if (glpStringsEqual("point_mode", 0xCFB513380000000ALL, __s2, a2))
  {
    v6 = 17;
    goto LABEL_75;
  }

  if (glpStringsEqual("vertices", 0x421BABD800000008uLL, __s2, a2))
  {
    v6 = 18;
    goto LABEL_75;
  }

  if (glpStringsEqual("origin_upper_left", 0x77C0A8C800000011uLL, __s2, a2))
  {
    v6 = 19;
    goto LABEL_75;
  }

  if (glpStringsEqual("pixel_center_integer", 0x1E02A93600000014uLL, __s2, a2))
  {
    v6 = 20;
    goto LABEL_75;
  }

  if (glpStringsEqual("shared", 0x76D5503200000006uLL, __s2, a2))
  {
    v6 = 21;
    goto LABEL_75;
  }

  if (glpStringsEqual("packed", 0x76DB285300000006uLL, __s2, a2))
  {
    v6 = 22;
    goto LABEL_75;
  }

  if (glpStringsEqual("std140", 0xFA5994CE00000006, __s2, a2))
  {
    v6 = 23;
    goto LABEL_75;
  }

  if (glpStringsEqual("row_major", 0x5970B78800000009uLL, __s2, a2))
  {
    v6 = 24;
    goto LABEL_75;
  }

  if (glpStringsEqual("column_major", 0xE6CB1880000000CuLL, __s2, a2))
  {
    v6 = 25;
    goto LABEL_75;
  }

  if (glpStringsEqual("location", 0x7C6728BC00000008uLL, __s2, a2))
  {
    v6 = 26;
    goto LABEL_75;
  }

  if (glpStringsEqual("index", 0x1392090200000005uLL, __s2, a2))
  {
    v6 = 27;
    goto LABEL_75;
  }

  if (glpStringsEqual("$getter", 0x9A13093A00000007, __s2, a2))
  {
    v6 = 28;
    goto LABEL_75;
  }

  if (glpStringsEqual("$setter", 0x9A1308B500000007, __s2, a2))
  {
    v6 = 29;
    goto LABEL_75;
  }

  if (glpStringsEqual("$can_be_declared_invariant", 0xB61EFF3F0000001ALL, __s2, a2))
  {
    v6 = 30;
    goto LABEL_75;
  }

  if (glpStringsEqual("$packed_copy_in_out", 0x9F188E8400000013, __s2, a2))
  {
    v6 = 31;
    goto LABEL_75;
  }

  if (glpStringsEqual("$ppstreamop", 0xF8DF7DAF0000000BLL, __s2, a2))
  {
    v6 = 32;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_regtype", 0x25A314FE0000000BuLL, __s2, a2))
  {
    v6 = 33;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindattrib_info_type", 0x170805C300000018uLL, __s2, a2))
  {
    v6 = 34;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindattrib_generic_code", 0x78942BE50000001BuLL, __s2, a2))
  {
    v6 = 35;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindattrib_generic_fill_w_0", 0x6D916CAB0000001FuLL, __s2, a2))
  {
    v6 = 36;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindattrib_generic_on_vec4", 0xC50F77F30000001ELL, __s2, a2))
  {
    v6 = 37;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindattrib_generic_not_builtin", 0xAD81F67300000022, __s2, a2))
  {
    v6 = 38;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindattrib_position_origin_upper_left", 0x14C4DE9900000029uLL, __s2, a2))
  {
    v6 = 39;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindattrib_position_pixel_center_integer", 0x6DCDB1C50000002CuLL, __s2, a2))
  {
    v6 = 40;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindattrib_color_face", 0xC788CA3E00000019, __s2, a2))
  {
    v6 = 41;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindattrib_seccolor_face", 0x18EEFDE0000001CuLL, __s2, a2))
  {
    v6 = 42;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindattrib_clipdistance_index", 0xD5DD809500000021, __s2, a2))
  {
    v6 = 43;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindattrib_samplemask_index", 0xEA9FD02E0000001FLL, __s2, a2))
  {
    v6 = 44;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindattrib_fragdata_buffer", 0xDD9F66730000001ELL, __s2, a2))
  {
    v6 = 45;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_info_type", 0xE49DB01A00000017, __s2, a2))
  {
    v6 = 46;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_generic_offset", 0x69D760E40000001CuLL, __s2, a2))
  {
    v6 = 47;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_generic_stride", 0x48B4EDFE0000001CuLL, __s2, a2))
  {
    v6 = 48;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_generic_type", 0x981C60B80000001ALL, __s2, a2))
  {
    v6 = 49;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_light_index", 0x234A4D7300000019uLL, __s2, a2))
  {
    v6 = 50;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_light_binding", 0x9D1E58650000001BLL, __s2, a2))
  {
    v6 = 51;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_lightprod_index", 0xC30C20DF0000001DLL, __s2, a2))
  {
    v6 = 52;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_lightprod_face", 0xDAEB02810000001CLL, __s2, a2))
  {
    v6 = 53;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_lightprod_binding", 0xB16F87D40000001FLL, __s2, a2))
  {
    v6 = 54;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_material_face", 0xE5A951780000001BLL, __s2, a2))
  {
    v6 = 55;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_material_binding", 0x4B6D3CC90000001EuLL, __s2, a2))
  {
    v6 = 56;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_texgen_texunit", 0x422A65E50000001CuLL, __s2, a2))
  {
    v6 = 57;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_texgen_texcoord", 0x1305E8E80000001DuLL, __s2, a2))
  {
    v6 = 58;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_texenv_texunit", 0x32AFA5880000001CuLL, __s2, a2))
  {
    v6 = 59;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_clipplane_index", 0x441FEC630000001DuLL, __s2, a2))
  {
    v6 = 60;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_matrix_matindex", 0x9970110A0000001DLL, __s2, a2))
  {
    v6 = 61;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_matrix_transform", 0x191EDAA50000001EuLL, __s2, a2))
  {
    v6 = 62;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_matrix_rowindex", 0x4A6C18900000001DuLL, __s2, a2))
  {
    v6 = 63;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_matrix_binding", 0x57FC42400000001CuLL, __s2, a2))
  {
    v6 = 64;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_tfbuffer_index", 0x229FAFE40000001CuLL, __s2, a2))
  {
    v6 = 65;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_tfbuffer_stream", 0xA88EDAF70000001DLL, __s2, a2))
  {
    v6 = 66;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindparam_tfbuffer_stride", 0xA9BAEE60000001DuLL, __s2, a2))
  {
    v6 = 67;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindoutput_info_type", 0xBEA893400000018uLL, __s2, a2))
  {
    v6 = 68;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindoutput_generic_code", 0x91B38E370000001BLL, __s2, a2))
  {
    v6 = 69;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindoutput_generic_not_builtin", 0x5085B18500000022uLL, __s2, a2))
  {
    v6 = 70;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindoutput_color_face", 0xD4E5200B00000019, __s2, a2))
  {
    v6 = 71;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindoutput_color_buffer", 0x8E57AB560000001BLL, __s2, a2))
  {
    v6 = 72;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindoutput_color_index", 0xD19BC26F0000001ALL, __s2, a2))
  {
    v6 = 73;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindoutput_seccolor_face", 0x89E2DB1B0000001CLL, __s2, a2))
  {
    v6 = 74;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindoutput_clipdistance_index", 0xDC303F4100000021, __s2, a2))
  {
    v6 = 75;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_bindoutput_samplemask_index", 0xB345128E0000001FLL, __s2, a2))
  {
    v6 = 76;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pp_draw_buffers", 0xF49461A300000010, __s2, a2))
  {
    v6 = 77;
    goto LABEL_75;
  }

  if (glpStringsEqual("$block_slot", 0x2B007B0000000BuLL, __s2, a2))
  {
    v6 = 78;
    goto LABEL_75;
  }

  if (glpStringsEqual("$does_not_count_as_used_component", 0xC077861000000021, __s2, a2))
  {
    v6 = 79;
    goto LABEL_75;
  }

  if (glpStringsEqual("$builtin_should_link_type_check", 0x982C93B50000001FLL, __s2, a2))
  {
    v6 = 80;
    goto LABEL_75;
  }

  if (glpStringsEqual("$redeclarable", 0x55A31D420000000DuLL, __s2, a2))
  {
    v6 = 81;
    goto LABEL_75;
  }

  if (glpStringsEqual("$sso_redeclaration_required", 0xC04A20BA0000001BLL, __s2, a2))
  {
    v6 = 82;
    goto LABEL_75;
  }

  if (glpStringsEqual("$nonarray_inout", 0xF79B6A9E0000000FLL, __s2, a2))
  {
    v6 = 83;
    goto LABEL_75;
  }

  if (glpStringsEqual("$sized_by_extrinsic", 0xD81B12C500000013, __s2, a2))
  {
    v6 = 84;
    goto LABEL_75;
  }

  if (glpStringsEqual("$full_type", 0x6B590F0000000AuLL, __s2, a2))
  {
    v6 = 85;
    goto LABEL_75;
  }

  if (glpStringsEqual("$array", 0x8539F78100000006, __s2, a2))
  {
    v6 = 86;
    goto LABEL_75;
  }

  if (glpStringsEqual("$element_count", 0x650004DD0000000EuLL, __s2, a2))
  {
    v6 = 87;
    goto LABEL_75;
  }

  if (glpStringsEqual("$max_elements", 0xC73162D10000000DLL, __s2, a2))
  {
    v6 = 88;
    goto LABEL_75;
  }

  if (glpStringsEqual("$struct", 0x3DC8107B00000007uLL, __s2, a2))
  {
    v6 = 89;
    goto LABEL_75;
  }

  if (glpStringsEqual("$indirect_const", 0xCE9154AA0000000FLL, __s2, a2))
  {
    v6 = 90;
    goto LABEL_75;
  }

  if (glpStringsEqual("$inline", 0x9D91D10100000007, __s2, a2))
  {
    v6 = 91;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pure", 0x10ED079000000005uLL, __s2, a2))
  {
    v6 = 92;
    goto LABEL_75;
  }

  if (glpStringsEqual("$pure110", 0x8B40482E00000008, __s2, a2))
  {
    v6 = 93;
    goto LABEL_75;
  }

  if (glpStringsEqual("$fail", 0x113B635200000005uLL, __s2, a2))
  {
    v6 = 94;
    goto LABEL_75;
  }

  if (glpStringsEqual("$sa_handling", 0x20FBBBCD0000000CuLL, __s2, a2))
  {
    v6 = 95;
    goto LABEL_75;
  }

  if (glpStringsEqual("$linker_generated", 0x1FE07ADD00000011uLL, __s2, a2))
  {
    v6 = 96;
    goto LABEL_75;
  }

  if (glpStringsEqual("$require_output_points", 0x4B326A8300000016uLL, __s2, a2))
  {
    v6 = 97;
    goto LABEL_75;
  }

  if (glpStringsEqual("$constexpr", 0xFA8DD1240000000ALL, __s2, a2))
  {
    v6 = 98;
    goto LABEL_75;
  }

  result = glpStringsEqual("$stage_in_ref", 0xFB428FA60000000DLL, __s2, a2);
  if (result)
  {
    v6 = 99;
    goto LABEL_75;
  }

  return result;
}

const char *glpLayoutQualifierToString(int a1)
{
  if ((a1 - 1) > 0x62)
  {
    return "points";
  }

  else
  {
    return off_278B49440[a1 - 1];
  }
}

uint64_t glpLayoutQualifierValueBehavior(int a1)
{
  if ((a1 - 5) > 0x55)
  {
    return 0;
  }

  else
  {
    return dword_23A29C490[a1 - 5];
  }
}

uint64_t glpLayoutQualifierMutexGroup(int a1)
{
  if ((a1 - 5) > 0x5E)
  {
    return 3;
  }

  else
  {
    return dword_23A29C5E8[a1 - 5];
  }
}

const char *glpLayoutMutexGroupToString(int a1)
{
  result = "buffer storage";
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 2:
        return "matrix storage";
      case 3:
        return "primitive type";
      case 0:
        abort();
    }
  }

  else
  {
    v3 = "spacing";
    v4 = "inliner mode";
    if (a1 != 6)
    {
      v4 = "buffer storage";
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 == 4)
    {
      return "winding";
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t glpLayoutMutexGroupBehavior(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return dword_23A29C764[a1 - 1];
  }
}

_DWORD *glpCompileShader(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  bzero(v19, 0x320uLL);
  glpInitParseContext(v19, a1);
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v10 = strlen(a2);
  v11 = malloc_type_malloc(v10 + 1, 0xCA0EF1E7uLL);
  if (!v11)
  {
    abort();
  }

  v18 = v11;
  strcpy(v11, a2);
  v17 = strlen(a2);
  if (glpPaParseStrings(v19, &v18, &v17, 1, 0) || (v24 = glpSANode(a1, v24), v24 == -1))
  {
    glpFinalizeParseContext(v19);
    free(v18);
    CompiledShader = 0;
  }

  else
  {
    Language = glpCompilerGetLanguage(a1);
    CompiledShader = glpMakeCompiledShader(Language, v20, 0, 0);
    ValueHash = glpCompilerGetValueHash(a1);
    glpSerializeAST(ValueHash, v24, CompiledShader + 2, CompiledShader + 2);
    CompiledShader[3] = glpCompilerRequiresOutputPoints(a1) != 0;
    free(v18);
    glpFinalizeParseContext(v19);
  }

  v15 = *MEMORY[0x277D85DE8];
  return CompiledShader;
}

void *__abort_malloc_0(size_t a1)
{
  result = malloc_type_malloc(a1, 0xCA0EF1E7uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

_DWORD *glpMakeCompiledShader(int a1, int a2, uint64_t a3, int a4)
{
  result = malloc_type_malloc(0x18uLL, 0xCA0EF1E7uLL);
  if (!result)
  {
    abort();
  }

  *result = a1;
  result[1] = a2;
  *(result + 2) = a3;
  result[2] = a4;
  result[3] = 0;
  return result;
}

void *glpCompiledShaderSerialize(uint64_t a1, void *a2)
{
  *a2 = *a1;
  v2 = *(a1 + 8);
  a2[1] = v2;
  return memcpy(a2 + 2, *(a1 + 16), v2);
}

_DWORD *glpCompiledShaderDeserialize(int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = malloc_type_malloc(v4, 0xCA0EF1E7uLL);
  if (!v5)
  {
    abort();
  }

  v6 = v5;
  memcpy(v5, a1 + 4, v4);

  return glpMakeCompiledShader(v2, v3, v6, v4);
}

void *glpMakeLinker(int a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13)
{
  v18 = malloc_type_malloc(0x170uLL, 0xCA0EF1E7uLL);
  if (!v18)
  {
    abort();
  }

  v19 = v18;
  glpInitPoolAllocator(0x8000, 0x8000, v18);
  *(v19 + 14) = a1;
  *(v19 + 15) = a2;
  *(v19 + 10) = a3;
  *(v19 + 11) = a4;
  *(v19 + 12) = a5;
  v19[8] = a6;
  v19[9] = a7;
  v19[10] = a8;
  v19[11] = a9;
  v20 = *a11;
  v21 = a11[2];
  *(v19 + 39) = a11[1];
  *(v19 + 41) = v21;
  *(v19 + 37) = v20;
  v19[12] = a10;
  v19[43] = 0;
  v19[44] = a13;
  v19[28] = 5;
  v19[29] = (v19[1])(*v19, 40, "Vector Storage (GLPTFBuffer *)");
  v19[30] = 5;
  v22 = 0;
  v19[31] = (v19[1])(*v19, 40, "Vector Storage (GLPTFStore *)");
  v23 = 276;
  do
  {
    v24 = (v19 + v23);
    *(v24 - 5) = 0;
    *v24 = 0;
    v19[v22 + 13] = 5;
    v19[v22 + 14] = (v19[1])(*v19, 40, "Vector Storage (GLPCompiledShader *)");
    v23 += 4;
    v22 += 2;
  }

  while (v22 != 10);
  v25 = getenv("GL_SHADER_STYLE_GUIDE");
  if (v25)
  {
    v26 = *v25 != 48 || v25[1] != 0;
  }

  else
  {
    v26 = 0;
  }

  *(v19 + 360) = v26;
  v19[4] = a12;
  return v19;
}

void glpDestroyLinker(void *a1)
{
  (a1[3])(*a1, a1[29]);
  (a1[3])(*a1, a1[31]);
  for (i = 14; i != 24; i += 2)
  {
    (a1[3])(*a1, a1[i]);
  }

  glpDestroyPoolAllocator(a1);
  v3 = a1[43];
  if (v3)
  {
    v4 = *(v3 + 32);
    if (v4)
    {
      v5 = 0;
      for (j = 0; j < v4; ++j)
      {
        v7 = *(*(v3 + 40) + v5);
        if (v7)
        {
          free(*v7);
          free(v7);
          v4 = *(v3 + 32);
        }

        v5 += 16;
      }

      v3 = a1[43];
    }

    glpDestroyIntHash(v3);
  }

  free(a1);
}

void *glpLinkerAddShader(void *a1, unsigned int *a2)
{
  v3 = a1 + 13;
  v4 = *a2;
  v5 = &a1[2 * v4 + 13];
  v6 = *v5;
  v8 = v5[1];
  v7 = v8;
  if (v8 + 1 > v6)
  {
    if (v6 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6;
    }

    v11 = 2 * v10;
    if (v11 <= (v8 + 1))
    {
      v12 = v8 + 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = (a1[1])(*a1, 8 * v12, "Vector Storage (GLPCompiledShader *, growth)");
    memcpy(v13, v3[2 * *a2 + 1], 8 * HIDWORD(v3[2 * *a2]));
    (a1[3])(*a1, v3[2 * *a2 + 1]);
    v4 = *a2;
    v14 = &v3[2 * v4];
    *v14 = v12;
    v14[1] = v13;
    v8 = *(v14 + 1);
  }

  v15 = v3[2 * v4 + 1] + 8 * v7;
  result = memmove((v15 + 8), v15, 8 * (v8 - v7));
  *(v3[2 * *a2 + 1] + 8 * v7) = a2;
  ++HIDWORD(v3[2 * *a2]);
  return result;
}

uint64_t serialize_bindings(void *a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = glp_serialized_integer32_control(v4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = v7 + 1;
  if (v7 + 1 <= v6)
  {
    v11 = a1[5];
    v12 = *(a1 + 9);
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

    v11 = (a1[1])(*a1, v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v10;
    a1[5] = v11;
    v12 = *(a1 + 9);
  }

  result = memmove(&v11[v7 + 1], &v11[v7], (v12 - v7));
  *(a1[5] + v7) = v5;
  v14 = *(a1 + 9);
  v15 = v14 + 1;
  *(a1 + 9) = v14 + 1;
  if ((v5 & 0x80000000) != 0)
  {
    v16 = (v5 >> 1) & 7;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v35 = v14 + 4;
        v36 = *(a1 + 8);
        if (v35 <= v36)
        {
          v39 = a1[5];
          v40 = v15;
        }

        else
        {
          if (v36 <= 1)
          {
            v36 = 1;
          }

          v37 = 2 * v36;
          if (v37 <= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = v37;
          }

          v39 = (a1[1])(*a1, v38, "Vector Storage (uint8_t, growth)");
          memcpy(v39, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v38;
          a1[5] = v39;
          v40 = *(a1 + 9);
        }

        result = memmove(&v39[v15 + 1], &v39[v15], v40 - v15);
        v42 = a1[5] + v15;
        *(v42 + 2) = BYTE2(v4);
        *v42 = v4;
        v41 = 3;
      }

      else
      {
        if (v16 != 3)
        {
          goto LABEL_52;
        }

        v23 = v14 + 5;
        v24 = *(a1 + 8);
        if (v23 <= v24)
        {
          v27 = a1[5];
          v28 = v15;
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

          v27 = (a1[1])(*a1, v26, "Vector Storage (uint8_t, growth)");
          memcpy(v27, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v26;
          a1[5] = v27;
          v28 = *(a1 + 9);
        }

        result = memmove(&v27[v15 + 1], &v27[v15], v28 - v15);
        *(a1[5] + v15) = v4;
        v41 = 4;
      }
    }

    else if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_52;
      }

      v17 = v14 + 3;
      v18 = *(a1 + 8);
      if (v17 <= v18)
      {
        v21 = a1[5];
        v22 = v15;
      }

      else
      {
        if (v18 <= 1)
        {
          v18 = 1;
        }

        v19 = 2 * v18;
        if (v19 <= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        v21 = (a1[1])(*a1, v20, "Vector Storage (uint8_t, growth)");
        memcpy(v21, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v20;
        a1[5] = v21;
        v22 = *(a1 + 9);
      }

      result = memmove(&v21[v15 + 1], &v21[v15], v22 - v15);
      *(a1[5] + v15) = v4;
      v41 = 2;
    }

    else
    {
      v29 = v14 + 2;
      v30 = *(a1 + 8);
      if (v29 <= v30)
      {
        v33 = a1[5];
        v34 = v15;
      }

      else
      {
        if (v30 <= 1)
        {
          v30 = 1;
        }

        v31 = 2 * v30;
        if (v31 <= v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = v31;
        }

        v33 = (a1[1])(*a1, v32, "Vector Storage (uint8_t, growth)");
        memcpy(v33, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v32;
        a1[5] = v33;
        v34 = *(a1 + 9);
      }

      result = memmove(&v33[v15 + 1], &v33[v15], v34 - v15);
      *(a1[5] + v15) = v4;
      v41 = 1;
    }

    *(a1 + 9) += v41;
  }

LABEL_52:
  v43 = *(a2 + 32);
  if (v43)
  {
    v44 = 0;
    v45 = 0;
    while (1)
    {
      v46 = *(a2 + 40);
      v47 = *(v46 + v44);
      if (v47)
      {
        break;
      }

LABEL_158:
      ++v45;
      v44 += 32;
      if (v45 >= v43)
      {
        return result;
      }
    }

    serialize_GLPString(a1, *(v46 + v44 + 8), *(v46 + v44 + 16));
    v48 = *v47;
    v49 = glp_serialized_integer32_control(*v47);
    v50 = *(a1 + 8);
    v51 = *(a1 + 9);
    v52 = v51 + 1;
    if (v51 + 1 <= v50)
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
    *(a1[5] + v51) = v49;
    v57 = *(a1 + 9);
    v58 = v57 + 1;
    *(a1 + 9) = v57 + 1;
    if (v49 < 0)
    {
      v59 = (v49 >> 1) & 7;
      if (v59 > 1)
      {
        if (v59 == 2)
        {
          v78 = v57 + 4;
          v79 = *(a1 + 8);
          if (v78 <= v79)
          {
            v82 = a1[5];
            v83 = v58;
          }

          else
          {
            if (v79 <= 1)
            {
              v79 = 1;
            }

            v80 = 2 * v79;
            if (v80 <= v78)
            {
              v81 = v78;
            }

            else
            {
              v81 = v80;
            }

            v82 = (a1[1])(*a1, v81, "Vector Storage (uint8_t, growth)");
            memcpy(v82, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v81;
            a1[5] = v82;
            v83 = *(a1 + 9);
          }

          memmove(&v82[v58 + 1], &v82[v58], v83 - v58);
          v85 = a1[5] + v58;
          *(v85 + 2) = BYTE2(v48);
          *v85 = v48;
          v84 = 3;
        }

        else
        {
          if (v59 != 3)
          {
            goto LABEL_106;
          }

          v66 = v57 + 5;
          v67 = *(a1 + 8);
          if (v66 <= v67)
          {
            v70 = a1[5];
            v71 = v58;
          }

          else
          {
            if (v67 <= 1)
            {
              v67 = 1;
            }

            v68 = 2 * v67;
            if (v68 <= v66)
            {
              v69 = v66;
            }

            else
            {
              v69 = v68;
            }

            v70 = (a1[1])(*a1, v69, "Vector Storage (uint8_t, growth)");
            memcpy(v70, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v69;
            a1[5] = v70;
            v71 = *(a1 + 9);
          }

          memmove(&v70[v58 + 1], &v70[v58], v71 - v58);
          *(a1[5] + v58) = v48;
          v84 = 4;
        }
      }

      else if (v59)
      {
        if (v59 != 1)
        {
          goto LABEL_106;
        }

        v60 = v57 + 3;
        v61 = *(a1 + 8);
        if (v60 <= v61)
        {
          v64 = a1[5];
          v65 = v58;
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

        memmove(&v64[v58 + 1], &v64[v58], v65 - v58);
        *(a1[5] + v58) = v48;
        v84 = 2;
      }

      else
      {
        v72 = v57 + 2;
        v73 = *(a1 + 8);
        if (v72 <= v73)
        {
          v76 = a1[5];
          v77 = v58;
        }

        else
        {
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = 2 * v73;
          if (v74 <= v72)
          {
            v75 = v72;
          }

          else
          {
            v75 = v74;
          }

          v76 = (a1[1])(*a1, v75, "Vector Storage (uint8_t, growth)");
          memcpy(v76, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v75;
          a1[5] = v76;
          v77 = *(a1 + 9);
        }

        memmove(&v76[v58 + 1], &v76[v58], v77 - v58);
        *(a1[5] + v58) = v48;
        v84 = 1;
      }

      *(a1 + 9) += v84;
    }

LABEL_106:
    v86 = v47[1];
    v87 = glp_serialized_integer32_control(v86);
    v88 = *(a1 + 8);
    v89 = *(a1 + 9);
    v90 = v89 + 1;
    if (v89 + 1 <= v88)
    {
      v93 = a1[5];
      v94 = *(a1 + 9);
    }

    else
    {
      if (v88 <= 1)
      {
        v88 = 1;
      }

      v91 = 2 * v88;
      if (v91 <= v90)
      {
        v92 = v90;
      }

      else
      {
        v92 = v91;
      }

      v93 = (a1[1])(*a1, v92, "Vector Storage (uint8_t, growth)");
      memcpy(v93, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v92;
      a1[5] = v93;
      v94 = *(a1 + 9);
    }

    memmove(&v93[v89 + 1], &v93[v89], (v94 - v89));
    *(a1[5] + v89) = v87;
    v95 = *(a1 + 9);
    v96 = v95 + 1;
    *(a1 + 9) = v95 + 1;
    if ((v87 & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

    v97 = (v87 >> 1) & 7;
    if (v97 > 1)
    {
      if (v97 == 2)
      {
        v116 = v95 + 4;
        v117 = *(a1 + 8);
        if (v116 <= v117)
        {
          v120 = a1[5];
          v121 = v96;
        }

        else
        {
          if (v117 <= 1)
          {
            v117 = 1;
          }

          v118 = 2 * v117;
          if (v118 <= v116)
          {
            v119 = v116;
          }

          else
          {
            v119 = v118;
          }

          v120 = (a1[1])(*a1, v119, "Vector Storage (uint8_t, growth)");
          memcpy(v120, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v119;
          a1[5] = v120;
          v121 = *(a1 + 9);
        }

        memmove(&v120[v96 + 1], &v120[v96], v121 - v96);
        v123 = a1[5] + v96;
        *(v123 + 2) = BYTE2(v86);
        *v123 = v86;
        v122 = 3;
        goto LABEL_156;
      }

      if (v97 == 3)
      {
        v104 = v95 + 5;
        v105 = *(a1 + 8);
        if (v104 <= v105)
        {
          v108 = a1[5];
          v109 = v96;
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

          v108 = (a1[1])(*a1, v107, "Vector Storage (uint8_t, growth)");
          memcpy(v108, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v107;
          a1[5] = v108;
          v109 = *(a1 + 9);
        }

        memmove(&v108[v96 + 1], &v108[v96], v109 - v96);
        *(a1[5] + v96) = v86;
        v122 = 4;
        goto LABEL_156;
      }
    }

    else
    {
      if (!v97)
      {
        v110 = v95 + 2;
        v111 = *(a1 + 8);
        if (v110 <= v111)
        {
          v114 = a1[5];
          v115 = v96;
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

          v114 = (a1[1])(*a1, v113, "Vector Storage (uint8_t, growth)");
          memcpy(v114, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v113;
          a1[5] = v114;
          v115 = *(a1 + 9);
        }

        memmove(&v114[v96 + 1], &v114[v96], v115 - v96);
        *(a1[5] + v96) = v86;
        v122 = 1;
        goto LABEL_156;
      }

      if (v97 == 1)
      {
        v98 = v95 + 3;
        v99 = *(a1 + 8);
        if (v98 <= v99)
        {
          v102 = a1[5];
          v103 = v96;
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

          v102 = (a1[1])(*a1, v101, "Vector Storage (uint8_t, growth)");
          memcpy(v102, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v101;
          a1[5] = v102;
          v103 = *(a1 + 9);
        }

        memmove(&v102[v96 + 1], &v102[v96], v103 - v96);
        *(a1[5] + v96) = v86;
        v122 = 2;
LABEL_156:
        *(a1 + 9) += v122;
      }
    }

LABEL_157:
    result = serialize_GLPType(a1, *(v47 + 1));
    v43 = *(a2 + 32);
    goto LABEL_158;
  }

  return result;
}

uint64_t deserialize_bindings(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 260);
  v4 = *(result + 256);
  if (v3 >= v4)
  {
    goto LABEL_111;
  }

  v6 = *(result + 248);
  v7 = *(v6 + v3);
  v8 = *(v6 + v3);
  v9 = v3 + 1;
  *(result + 260) = v3 + 1;
  if ((v7 & 0x80000000) == 0)
  {
    if (!v8)
    {
      return result;
    }

    goto LABEL_35;
  }

  v10 = (v8 >> 1) & 7;
  if (((v8 >> 1) & 7) > 3)
  {
    if (((v8 >> 1) & 7) > 5)
    {
      if (v10 == 6)
      {
        if (v3 + 5 <= v4)
        {
          LODWORD(v6) = *(v6 + v9);
          *(result + 260) = v3 + 5;
          v11 = v3 + 8;
          if (v11 <= v4)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_111;
      }

      if (v3 + 9 > v4)
      {
        goto LABEL_111;
      }

      v6 = *(v6 + v9);
      v11 = v3 + 9;
    }

    else
    {
      v12 = v3 + 5;
      if (v10 == 4)
      {
        if (v12 > v4)
        {
          goto LABEL_111;
        }

        LODWORD(v6) = *(v6 + v9);
        *(result + 260) = v3 + 5;
        if (v3 + 5 >= v4)
        {
          goto LABEL_111;
        }

        v11 = v3 + 6;
      }

      else
      {
        if (v12 > v4)
        {
          goto LABEL_111;
        }

        LODWORD(v6) = *(v6 + v9);
        v13 = (v3 + 5);
        *(result + 260) = v13;
        if (v13 + 2 > v4)
        {
          goto LABEL_111;
        }

        v11 = v3 + 7;
      }
    }
  }

  else if (((v8 >> 1) & 7) > 1)
  {
    if (v10 == 2)
    {
      v11 = v3 + 4;
      if (v11 > v4)
      {
        goto LABEL_111;
      }

      LODWORD(v6) = *(v6 + v9) | (*(v6 + v9 + 2) << 16);
    }

    else
    {
      if (v3 + 5 > v4)
      {
        goto LABEL_111;
      }

      LODWORD(v6) = *(v6 + v9);
      v11 = v3 + 5;
    }
  }

  else
  {
    if (!v10)
    {
      if (v9 < v4)
      {
        LODWORD(v6) = *(v6 + v9);
        v11 = v3 + 2;
        goto LABEL_31;
      }

LABEL_111:
      glpDeserialError(v2, 1u);
    }

    if (v3 + 3 > v4)
    {
      goto LABEL_111;
    }

    LODWORD(v6) = *(v6 + v9);
    v11 = v3 + 3;
  }

LABEL_31:
  *(result + 260) = v11;
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
  if (v6 | v15)
  {
LABEL_35:
    v16 = 0;
    while (1)
    {
      v17 = deserialize_GLPString(v2);
      v19 = v18;
      v20 = malloc_type_malloc(0x10uLL, 0xCA0EF1E7uLL);
      if (!v20)
      {
LABEL_112:
        abort();
      }

      v21 = v20;
      *v20 = 0;
      v20[1] = 0;
      v22 = *(v2 + 260);
      v23 = *(v2 + 256);
      if (v22 >= v23)
      {
        goto LABEL_111;
      }

      v24 = *(v2 + 248);
      v25 = *(v24 + v22);
      v26 = *(v24 + v22);
      v27 = v22 + 1;
      *(v2 + 260) = v22 + 1;
      if (v25 < 0)
      {
        break;
      }

LABEL_70:
      *v20 = v26;
      if (v27 >= v23)
      {
        goto LABEL_111;
      }

      v35 = *(v24 + v27);
      v36 = *(v24 + v27);
      v37 = v27 + 1;
      *(v2 + 260) = v37;
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_103;
      }

      v38 = (v36 >> 1) & 7;
      if (v38 > 3)
      {
        if (v38 <= 5)
        {
          v40 = v27 + 5;
          if (v38 == 4)
          {
            if (v40 > v23)
            {
              goto LABEL_111;
            }

            LODWORD(v24) = *(v24 + v37);
            *(v2 + 260) = v27 + 5;
            if (v27 + 5 >= v23)
            {
              goto LABEL_111;
            }

            v39 = v27 + 6;
          }

          else
          {
            if (v40 > v23)
            {
              goto LABEL_111;
            }

            LODWORD(v24) = *(v24 + v37);
            v42 = (v27 + 5);
            *(v2 + 260) = v42;
            if (v42 + 2 > v23)
            {
              goto LABEL_111;
            }

            v39 = v27 + 7;
          }

          goto LABEL_98;
        }

        if (v38 != 6)
        {
          if (v27 + 9 > v23)
          {
            goto LABEL_111;
          }

          v24 = *(v24 + v37);
          v39 = v27 + 9;
          goto LABEL_98;
        }

        if (v27 + 5 > v23)
        {
          goto LABEL_111;
        }

        LODWORD(v24) = *(v24 + v37);
        *(v2 + 260) = v27 + 5;
        v41 = v27 + 8;
        if (v41 > v23)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if (v38 <= 1)
        {
          if (v38)
          {
            if (v27 + 3 > v23)
            {
              goto LABEL_111;
            }

            LODWORD(v24) = *(v24 + v37);
            v39 = v27 + 3;
          }

          else
          {
            if (v37 >= v23)
            {
              goto LABEL_111;
            }

            LODWORD(v24) = *(v24 + v37);
            v39 = v27 + 2;
          }

LABEL_98:
          *(v2 + 260) = v39;
          goto LABEL_99;
        }

        if (v38 != 2)
        {
          if (v27 + 5 > v23)
          {
            goto LABEL_111;
          }

          LODWORD(v24) = *(v24 + v37);
          v39 = v27 + 5;
          goto LABEL_98;
        }

        v41 = v27 + 4;
        if (v41 > v23)
        {
          goto LABEL_111;
        }

        LODWORD(v24) = *(v24 + v37) | (*(v24 + v37 + 2) << 16);
      }

      *(v2 + 260) = v41;
LABEL_99:
      if (v35)
      {
        v43 = -256 << (8 * v38);
      }

      else
      {
        LODWORD(v43) = 0;
      }

      LODWORD(v36) = v24 | v43;
LABEL_103:
      *(v20 + 1) = v36;
      v52 = 0;
      deserialize_GLPType(v2, &v52);
      *(v21 + 8) = glpDeepCopyType(&GLP_MALLOC_ALLOCATOR, v52);
      v44 = v19;
      v45 = malloc_type_malloc(v19, 0xCA0EF1E7uLL);
      if (!v45)
      {
        goto LABEL_112;
      }

      v46 = v45;
      memcpy(v45, v17, v19);
      if (v19)
      {
        v48 = v19 >> 5;
        LODWORD(v49) = v19;
        v50 = ~(v19 >> 5);
        do
        {
          v49 = (32 * v49 + (v49 >> 2) + v46[v19 - 1]) ^ v49;
          v19 += v50;
        }

        while (v19 > v48);
        v51 = v49 << 32;
      }

      else
      {
        v51 = 0;
      }

      result = glpStringHashPut(a2, v46, v51 | v44, v21, v47);
      if (++v16 == v8)
      {
        return result;
      }
    }

    v28 = (v26 >> 1) & 7;
    if (v28 > 3)
    {
      if (v28 > 5)
      {
        if (v28 == 6)
        {
          if (v22 + 5 > v23)
          {
            goto LABEL_111;
          }

          LODWORD(v29) = *(v24 + v27);
          *(v2 + 260) = v22 + 5;
          LODWORD(v27) = v22 + 8;
          if (v22 + 8 > v23)
          {
            goto LABEL_111;
          }
        }

        else
        {
          if (v22 + 9 > v23)
          {
            goto LABEL_111;
          }

          v29 = *(v24 + v27);
          LODWORD(v27) = v22 + 9;
        }
      }

      else
      {
        v30 = v22 + 5;
        if (v28 == 4)
        {
          if (v30 > v23)
          {
            goto LABEL_111;
          }

          LODWORD(v29) = *(v24 + v27);
          *(v2 + 260) = v22 + 5;
          if (v22 + 5 >= v23)
          {
            goto LABEL_111;
          }

          LODWORD(v27) = v22 + 6;
        }

        else
        {
          if (v30 > v23)
          {
            goto LABEL_111;
          }

          LODWORD(v29) = *(v24 + v27);
          v32 = (v22 + 5);
          *(v2 + 260) = v32;
          if (v32 + 2 > v23)
          {
            goto LABEL_111;
          }

          LODWORD(v27) = v22 + 7;
        }
      }
    }

    else if (v28 > 1)
    {
      if (v28 == 2)
      {
        v31 = v22 + 4;
        if (v31 > v23)
        {
          goto LABEL_111;
        }

        LODWORD(v29) = *(v24 + v27) | (*(v24 + v27 + 2) << 16);
        *(v2 + 260) = v31;
        LODWORD(v27) = v31;
        goto LABEL_66;
      }

      if (v22 + 5 > v23)
      {
        goto LABEL_111;
      }

      LODWORD(v29) = *(v24 + v27);
      LODWORD(v27) = v22 + 5;
    }

    else if (v28)
    {
      if (v22 + 3 > v23)
      {
        goto LABEL_111;
      }

      LODWORD(v29) = *(v24 + v27);
      LODWORD(v27) = v22 + 3;
    }

    else
    {
      if (v27 >= v23)
      {
        goto LABEL_111;
      }

      LODWORD(v29) = *(v24 + v27);
      LODWORD(v27) = v22 + 2;
    }

    *(v2 + 260) = v27;
LABEL_66:
    v33 = -256 << (8 * v28);
    if (v25)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    LODWORD(v26) = v29 | v34;
    goto LABEL_70;
  }

  return result;
}

void *glpSerializeLinkedProgram(void *a1, uint64_t a2)
{
  serialize_bindings(a1, *(a2 + 184));
  serialize_bindings(a1, *(a2 + 192));
  glpSerializeUniformBindings(a1, *(a2 + 80));
  v4 = *(a2 + 224);
  v5 = glp_serialized_integer32_control(v4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = v7 + 1;
  if (v7 + 1 <= v6)
  {
    v11 = a1[5];
    v12 = *(a1 + 9);
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

    v11 = (a1[1])(*a1, v10, "Vector Storage (uint8_t, growth)");
    memcpy(v11, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v10;
    a1[5] = v11;
    v12 = *(a1 + 9);
  }

  memmove(&v11[v7 + 1], &v11[v7], (v12 - v7));
  *(a1[5] + v7) = v5;
  v13 = *(a1 + 9);
  v14 = v13 + 1;
  *(a1 + 9) = v13 + 1;
  if ((v5 & 0x80000000) != 0)
  {
    v15 = (v5 >> 1) & 7;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v34 = v13 + 4;
        v35 = *(a1 + 8);
        if (v34 <= v35)
        {
          v38 = a1[5];
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

          v38 = (a1[1])(*a1, v37, "Vector Storage (uint8_t, growth)");
          memcpy(v38, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v37;
          a1[5] = v38;
          v39 = *(a1 + 9);
        }

        memmove(&v38[v14 + 1], &v38[v14], v39 - v14);
        v41 = a1[5] + v14;
        *(v41 + 2) = BYTE2(v4);
        *v41 = v4;
        v40 = 3;
      }

      else
      {
        if (v15 != 3)
        {
          goto LABEL_51;
        }

        v22 = v13 + 5;
        v23 = *(a1 + 8);
        if (v22 <= v23)
        {
          v26 = a1[5];
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

          v26 = (a1[1])(*a1, v25, "Vector Storage (uint8_t, growth)");
          memcpy(v26, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v25;
          a1[5] = v26;
          v27 = *(a1 + 9);
        }

        memmove(&v26[v14 + 1], &v26[v14], v27 - v14);
        *(a1[5] + v14) = v4;
        v40 = 4;
      }
    }

    else if (v15)
    {
      v16 = v13 + 3;
      v17 = *(a1 + 8);
      if (v16 <= v17)
      {
        v20 = a1[5];
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

        v20 = (a1[1])(*a1, v19, "Vector Storage (uint8_t, growth)");
        memcpy(v20, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v19;
        a1[5] = v20;
        v21 = *(a1 + 9);
      }

      memmove(&v20[v14 + 1], &v20[v14], v21 - v14);
      *(a1[5] + v14) = v4;
      v40 = 2;
    }

    else
    {
      v28 = v13 + 2;
      v29 = *(a1 + 8);
      if (v28 <= v29)
      {
        v32 = a1[5];
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

        v32 = (a1[1])(*a1, v31, "Vector Storage (uint8_t, growth)");
        memcpy(v32, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v31;
        a1[5] = v32;
        v33 = *(a1 + 9);
      }

      memmove(&v32[v14 + 1], &v32[v14], v33 - v14);
      *(a1[5] + v14) = v4;
      v40 = 1;
    }

    *(a1 + 9) += v40;
  }

LABEL_51:
  v42 = *(a2 + 204);
  v43 = glp_serialized_integer32_control(v42);
  v44 = *(a1 + 8);
  v45 = *(a1 + 9);
  v46 = v45 + 1;
  if (v45 + 1 <= v44)
  {
    v49 = a1[5];
    v50 = *(a1 + 9);
  }

  else
  {
    if (v44 <= 1)
    {
      v44 = 1;
    }

    v47 = 2 * v44;
    if (v47 <= v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = v47;
    }

    v49 = (a1[1])(*a1, v48, "Vector Storage (uint8_t, growth)");
    memcpy(v49, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v48;
    a1[5] = v49;
    v50 = *(a1 + 9);
  }

  memmove(&v49[v45 + 1], &v49[v45], (v50 - v45));
  *(a1[5] + v45) = v43;
  v51 = *(a1 + 9);
  v52 = v51 + 1;
  *(a1 + 9) = v51 + 1;
  if ((v43 & 0x80000000) != 0)
  {
    v53 = (v43 >> 1) & 7;
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        v72 = v51 + 4;
        v73 = *(a1 + 8);
        if (v72 <= v73)
        {
          v76 = a1[5];
          v77 = v52;
        }

        else
        {
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = 2 * v73;
          if (v74 <= v72)
          {
            v75 = v72;
          }

          else
          {
            v75 = v74;
          }

          v76 = (a1[1])(*a1, v75, "Vector Storage (uint8_t, growth)");
          memcpy(v76, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v75;
          a1[5] = v76;
          v77 = *(a1 + 9);
        }

        memmove(&v76[v52 + 1], &v76[v52], v77 - v52);
        v79 = a1[5] + v52;
        *(v79 + 2) = BYTE2(v42);
        *v79 = v42;
        v78 = 3;
      }

      else
      {
        if (v53 != 3)
        {
          goto LABEL_101;
        }

        v60 = v51 + 5;
        v61 = *(a1 + 8);
        if (v60 <= v61)
        {
          v64 = a1[5];
          v65 = v52;
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

        memmove(&v64[v52 + 1], &v64[v52], v65 - v52);
        *(a1[5] + v52) = v42;
        v78 = 4;
      }
    }

    else if (v53)
    {
      v54 = v51 + 3;
      v55 = *(a1 + 8);
      if (v54 <= v55)
      {
        v58 = a1[5];
        v59 = v52;
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

      memmove(&v58[v52 + 1], &v58[v52], v59 - v52);
      *(a1[5] + v52) = v42;
      v78 = 2;
    }

    else
    {
      v66 = v51 + 2;
      v67 = *(a1 + 8);
      if (v66 <= v67)
      {
        v70 = a1[5];
        v71 = v52;
      }

      else
      {
        if (v67 <= 1)
        {
          v67 = 1;
        }

        v68 = 2 * v67;
        if (v68 <= v66)
        {
          v69 = v66;
        }

        else
        {
          v69 = v68;
        }

        v70 = (a1[1])(*a1, v69, "Vector Storage (uint8_t, growth)");
        memcpy(v70, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v69;
        a1[5] = v70;
        v71 = *(a1 + 9);
      }

      memmove(&v70[v52 + 1], &v70[v52], v71 - v52);
      *(a1[5] + v52) = v42;
      v78 = 1;
    }

    *(a1 + 9) += v78;
  }

LABEL_101:
  if (v42 >= 1)
  {
    v80 = 0;
    while (1)
    {
      v81 = *(*(a2 + 208) + v80);
      LOBYTE(v82) = glp_serialized_integer32_control(v81);
      v83 = *(a1 + 8);
      v84 = *(a1 + 9);
      v85 = v84 + 1;
      if (v84 + 1 <= v83)
      {
        v88 = a1[5];
        v89 = *(a1 + 9);
      }

      else
      {
        if (v83 <= 1)
        {
          v83 = 1;
        }

        v86 = 2 * v83;
        if (v86 <= v85)
        {
          v87 = v85;
        }

        else
        {
          v87 = v86;
        }

        v88 = (a1[1])(*a1, v87, "Vector Storage (uint8_t, growth)");
        memcpy(v88, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v87;
        a1[5] = v88;
        v89 = *(a1 + 9);
      }

      v82 = v82;
      memmove(&v88[v84 + 1], &v88[v84], (v89 - v84));
      *(a1[5] + v84) = v82;
      v90 = *(a1 + 9);
      v91 = v90 + 1;
      *(a1 + 9) = v90 + 1;
      if ((v82 & 0x80000000) == 0)
      {
        goto LABEL_153;
      }

      v92 = (v82 >> 1) & 7;
      if (v92 <= 1)
      {
        break;
      }

      if (v92 == 2)
      {
        v111 = v90 + 4;
        v112 = *(a1 + 8);
        if (v111 <= v112)
        {
          v115 = a1[5];
          v116 = v91;
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

          v115 = (a1[1])(*a1, v114, "Vector Storage (uint8_t, growth)");
          memcpy(v115, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v114;
          a1[5] = v115;
          v116 = *(a1 + 9);
        }

        memmove(&v115[v91 + 1], &v115[v91], v116 - v91);
        v118 = a1[5] + v91;
        *(v118 + 2) = BYTE2(v81);
        *v118 = v81;
        v117 = 3;
        goto LABEL_152;
      }

      if (v92 == 3)
      {
        v99 = v90 + 5;
        v100 = *(a1 + 8);
        if (v99 <= v100)
        {
          v103 = a1[5];
          v104 = v91;
        }

        else
        {
          if (v100 <= 1)
          {
            v100 = 1;
          }

          v101 = 2 * v100;
          if (v101 <= v99)
          {
            v102 = v99;
          }

          else
          {
            v102 = v101;
          }

          v103 = (a1[1])(*a1, v102, "Vector Storage (uint8_t, growth)");
          memcpy(v103, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v102;
          a1[5] = v103;
          v104 = *(a1 + 9);
        }

        memmove(&v103[v91 + 1], &v103[v91], v104 - v91);
        *(a1[5] + v91) = v81;
        v117 = 4;
        goto LABEL_152;
      }

LABEL_153:
      v80 += 4;
      if (4 * v42 == v80)
      {
        goto LABEL_154;
      }
    }

    if (v92)
    {
      v93 = v90 + 3;
      v94 = *(a1 + 8);
      if (v93 <= v94)
      {
        v97 = a1[5];
        v98 = v91;
      }

      else
      {
        if (v94 <= 1)
        {
          v94 = 1;
        }

        v95 = 2 * v94;
        if (v95 <= v93)
        {
          v96 = v93;
        }

        else
        {
          v96 = v95;
        }

        v97 = (a1[1])(*a1, v96, "Vector Storage (uint8_t, growth)");
        memcpy(v97, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v96;
        a1[5] = v97;
        v98 = *(a1 + 9);
      }

      memmove(&v97[v91 + 1], &v97[v91], v98 - v91);
      *(a1[5] + v91) = v81;
      v117 = 2;
    }

    else
    {
      v105 = v90 + 2;
      v106 = *(a1 + 8);
      if (v105 <= v106)
      {
        v109 = a1[5];
        v110 = v91;
      }

      else
      {
        if (v106 <= 1)
        {
          v106 = 1;
        }

        v107 = 2 * v106;
        if (v107 <= v105)
        {
          v108 = v105;
        }

        else
        {
          v108 = v107;
        }

        v109 = (a1[1])(*a1, v108, "Vector Storage (uint8_t, growth)");
        memcpy(v109, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v108;
        a1[5] = v109;
        v110 = *(a1 + 9);
      }

      memmove(&v109[v91 + 1], &v109[v91], v110 - v91);
      *(a1[5] + v91) = v81;
      v117 = 1;
    }

LABEL_152:
    *(a1 + 9) += v117;
    goto LABEL_153;
  }

LABEL_154:
  v119 = *(a2 + 216);
  v120 = *v119;
  v121 = glp_serialized_integer32_control(v120);
  v122 = *(a1 + 8);
  v123 = *(a1 + 9);
  v124 = v123 + 1;
  if (v123 + 1 <= v122)
  {
    v127 = a1[5];
    v128 = *(a1 + 9);
  }

  else
  {
    if (v122 <= 1)
    {
      v122 = 1;
    }

    v125 = 2 * v122;
    if (v125 <= v124)
    {
      v126 = v124;
    }

    else
    {
      v126 = v125;
    }

    v127 = (a1[1])(*a1, v126, "Vector Storage (uint8_t, growth)");
    memcpy(v127, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v126;
    a1[5] = v127;
    v128 = *(a1 + 9);
  }

  memmove(&v127[v123 + 1], &v127[v123], (v128 - v123));
  *(a1[5] + v123) = v121;
  v129 = *(a1 + 9);
  v130 = v129 + 1;
  *(a1 + 9) = v129 + 1;
  if ((v121 & 0x80000000) != 0)
  {
    v131 = (v121 >> 1) & 7;
    if (v131 > 1)
    {
      if (v131 == 2)
      {
        v150 = v129 + 4;
        v151 = *(a1 + 8);
        if (v150 <= v151)
        {
          v154 = a1[5];
          v155 = v130;
        }

        else
        {
          if (v151 <= 1)
          {
            v151 = 1;
          }

          v152 = 2 * v151;
          if (v152 <= v150)
          {
            v153 = v150;
          }

          else
          {
            v153 = v152;
          }

          v154 = (a1[1])(*a1, v153, "Vector Storage (uint8_t, growth)");
          memcpy(v154, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v153;
          a1[5] = v154;
          v155 = *(a1 + 9);
        }

        memmove(&v154[v130 + 1], &v154[v130], v155 - v130);
        v157 = a1[5] + v130;
        *(v157 + 2) = BYTE2(v120);
        *v157 = v120;
        v156 = 3;
      }

      else
      {
        if (v131 != 3)
        {
          goto LABEL_204;
        }

        v138 = v129 + 5;
        v139 = *(a1 + 8);
        if (v138 <= v139)
        {
          v142 = a1[5];
          v143 = v130;
        }

        else
        {
          if (v139 <= 1)
          {
            v139 = 1;
          }

          v140 = 2 * v139;
          if (v140 <= v138)
          {
            v141 = v138;
          }

          else
          {
            v141 = v140;
          }

          v142 = (a1[1])(*a1, v141, "Vector Storage (uint8_t, growth)");
          memcpy(v142, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v141;
          a1[5] = v142;
          v143 = *(a1 + 9);
        }

        memmove(&v142[v130 + 1], &v142[v130], v143 - v130);
        *(a1[5] + v130) = v120;
        v156 = 4;
      }
    }

    else if (v131)
    {
      v132 = v129 + 3;
      v133 = *(a1 + 8);
      if (v132 <= v133)
      {
        v136 = a1[5];
        v137 = v130;
      }

      else
      {
        if (v133 <= 1)
        {
          v133 = 1;
        }

        v134 = 2 * v133;
        if (v134 <= v132)
        {
          v135 = v132;
        }

        else
        {
          v135 = v134;
        }

        v136 = (a1[1])(*a1, v135, "Vector Storage (uint8_t, growth)");
        memcpy(v136, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v135;
        a1[5] = v136;
        v137 = *(a1 + 9);
      }

      memmove(&v136[v130 + 1], &v136[v130], v137 - v130);
      *(a1[5] + v130) = v120;
      v156 = 2;
    }

    else
    {
      v144 = v129 + 2;
      v145 = *(a1 + 8);
      if (v144 <= v145)
      {
        v148 = a1[5];
        v149 = v130;
      }

      else
      {
        if (v145 <= 1)
        {
          v145 = 1;
        }

        v146 = 2 * v145;
        if (v146 <= v144)
        {
          v147 = v144;
        }

        else
        {
          v147 = v146;
        }

        v148 = (a1[1])(*a1, v147, "Vector Storage (uint8_t, growth)");
        memcpy(v148, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v147;
        a1[5] = v148;
        v149 = *(a1 + 9);
      }

      memmove(&v148[v130 + 1], &v148[v130], v149 - v130);
      *(a1[5] + v130) = v120;
      v156 = 1;
    }

    *(a1 + 9) += v156;
  }

LABEL_204:
  if (v120 >= 1)
  {
    v158 = v119 + 4;
    while (1)
    {
      v159 = *(v158 - 2);
      v160 = glp_serialized_integer32_control(v159);
      v161 = *(a1 + 8);
      v162 = *(a1 + 9);
      v163 = v162 + 1;
      if (v162 + 1 <= v161)
      {
        v166 = a1[5];
        v167 = *(a1 + 9);
      }

      else
      {
        if (v161 <= 1)
        {
          v161 = 1;
        }

        v164 = 2 * v161;
        if (v164 <= v163)
        {
          v165 = v163;
        }

        else
        {
          v165 = v164;
        }

        v166 = (a1[1])(*a1, v165, "Vector Storage (uint8_t, growth)");
        memcpy(v166, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v165;
        a1[5] = v166;
        v167 = *(a1 + 9);
      }

      memmove(&v166[v162 + 1], &v166[v162], (v167 - v162));
      *(a1[5] + v162) = v160;
      v168 = *(a1 + 9);
      v169 = v168 + 1;
      *(a1 + 9) = v168 + 1;
      if ((v160 & 0x80000000) == 0)
      {
        goto LABEL_256;
      }

      v170 = (v160 >> 1) & 7;
      if (v170 <= 1)
      {
        break;
      }

      if (v170 == 2)
      {
        v189 = v168 + 4;
        v190 = *(a1 + 8);
        if (v189 <= v190)
        {
          v193 = a1[5];
          v194 = v169;
        }

        else
        {
          if (v190 <= 1)
          {
            v190 = 1;
          }

          v191 = 2 * v190;
          if (v191 <= v189)
          {
            v192 = v189;
          }

          else
          {
            v192 = v191;
          }

          v193 = (a1[1])(*a1, v192, "Vector Storage (uint8_t, growth)");
          memcpy(v193, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v192;
          a1[5] = v193;
          v194 = *(a1 + 9);
        }

        memmove(&v193[v169 + 1], &v193[v169], v194 - v169);
        v196 = a1[5] + v169;
        *(v196 + 2) = BYTE2(v159);
        *v196 = v159;
        v195 = 3;
        goto LABEL_255;
      }

      if (v170 == 3)
      {
        v177 = v168 + 5;
        v178 = *(a1 + 8);
        if (v177 <= v178)
        {
          v181 = a1[5];
          v182 = v169;
        }

        else
        {
          if (v178 <= 1)
          {
            v178 = 1;
          }

          v179 = 2 * v178;
          if (v179 <= v177)
          {
            v180 = v177;
          }

          else
          {
            v180 = v179;
          }

          v181 = (a1[1])(*a1, v180, "Vector Storage (uint8_t, growth)");
          memcpy(v181, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v180;
          a1[5] = v181;
          v182 = *(a1 + 9);
        }

        memmove(&v181[v169 + 1], &v181[v169], v182 - v169);
        *(a1[5] + v169) = v159;
        v195 = 4;
        goto LABEL_255;
      }

LABEL_256:
      v197 = *v158;
      v198 = v169 + 8;
      v199 = *(a1 + 8);
      if (v169 + 8 <= v199)
      {
        v202 = a1[5];
        v203 = v169;
      }

      else
      {
        if (v199 <= 1)
        {
          v199 = 1;
        }

        v200 = 2 * v199;
        if (v200 <= v198)
        {
          v201 = v198;
        }

        else
        {
          v201 = v200;
        }

        v202 = (a1[1])(*a1, v201, "Vector Storage (uint8_t, growth)");
        memcpy(v202, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v201;
        a1[5] = v202;
        v203 = *(a1 + 9);
      }

      memmove(&v202[v169 + 1], &v202[v169], v203 - v169);
      *(a1[5] + v169) = v197;
      *(a1 + 9) += 8;
      v158 += 2;
      if (!--v120)
      {
        goto LABEL_265;
      }
    }

    if (v170)
    {
      v171 = v168 + 3;
      v172 = *(a1 + 8);
      if (v171 <= v172)
      {
        v175 = a1[5];
        v176 = v169;
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

        v175 = (a1[1])(*a1, v174, "Vector Storage (uint8_t, growth)");
        memcpy(v175, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v174;
        a1[5] = v175;
        v176 = *(a1 + 9);
      }

      memmove(&v175[v169 + 1], &v175[v169], v176 - v169);
      *(a1[5] + v169) = v159;
      v195 = 2;
    }

    else
    {
      v183 = v168 + 2;
      v184 = *(a1 + 8);
      if (v183 <= v184)
      {
        v187 = a1[5];
        v188 = v169;
      }

      else
      {
        if (v184 <= 1)
        {
          v184 = 1;
        }

        v185 = 2 * v184;
        if (v185 <= v183)
        {
          v186 = v183;
        }

        else
        {
          v186 = v185;
        }

        v187 = (a1[1])(*a1, v186, "Vector Storage (uint8_t, growth)");
        memcpy(v187, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v186;
        a1[5] = v187;
        v188 = *(a1 + 9);
      }

      memmove(&v187[v169 + 1], &v187[v169], v188 - v169);
      *(a1[5] + v169) = v159;
      v195 = 1;
    }

LABEL_255:
    v169 = *(a1 + 9) + v195;
    *(a1 + 9) = v169;
    goto LABEL_256;
  }

LABEL_265:
  v204 = *(a2 + 88);
  if (v204)
  {
    glpSerializeUniformBindings(a1, v204);
    goto LABEL_317;
  }

  v205 = glp_serialized_integer32_control(0);
  v206 = *(a1 + 8);
  v207 = *(a1 + 9);
  v208 = v207 + 1;
  if (v207 + 1 <= v206)
  {
    v211 = a1[5];
    v212 = *(a1 + 9);
  }

  else
  {
    if (v206 <= 1)
    {
      v206 = 1;
    }

    v209 = 2 * v206;
    if (v209 <= v208)
    {
      v210 = v208;
    }

    else
    {
      v210 = v209;
    }

    v211 = (a1[1])(*a1, v210, "Vector Storage (uint8_t, growth)");
    memcpy(v211, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v210;
    a1[5] = v211;
    v212 = *(a1 + 9);
  }

  memmove(&v211[v207 + 1], &v211[v207], (v212 - v207));
  *(a1[5] + v207) = v205;
  v213 = *(a1 + 9);
  v214 = v213 + 1;
  *(a1 + 9) = v213 + 1;
  if ((v205 & 0x80000000) != 0)
  {
    v215 = (v205 >> 1) & 7;
    if (v215 > 1)
    {
      if (v215 == 2)
      {
        v234 = v213 + 4;
        v235 = *(a1 + 8);
        if (v234 <= v235)
        {
          v238 = a1[5];
          v239 = v214;
        }

        else
        {
          if (v235 <= 1)
          {
            v235 = 1;
          }

          v236 = 2 * v235;
          if (v236 <= v234)
          {
            v237 = v234;
          }

          else
          {
            v237 = v236;
          }

          v238 = (a1[1])(*a1, v237, "Vector Storage (uint8_t, growth)");
          memcpy(v238, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v237;
          a1[5] = v238;
          v239 = *(a1 + 9);
        }

        memmove(&v238[v214 + 1], &v238[v214], v239 - v214);
        v241 = a1[5] + v214;
        *(v241 + 2) = 0;
        *v241 = 0;
        v240 = *(a1 + 9) + 3;
      }

      else
      {
        if (v215 != 3)
        {
          goto LABEL_317;
        }

        v222 = v213 + 5;
        v223 = *(a1 + 8);
        if (v222 <= v223)
        {
          v226 = a1[5];
          v227 = v214;
        }

        else
        {
          if (v223 <= 1)
          {
            v223 = 1;
          }

          v224 = 2 * v223;
          if (v224 <= v222)
          {
            v225 = v222;
          }

          else
          {
            v225 = v224;
          }

          v226 = (a1[1])(*a1, v225, "Vector Storage (uint8_t, growth)");
          memcpy(v226, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v225;
          a1[5] = v226;
          v227 = *(a1 + 9);
        }

        memmove(&v226[v214 + 1], &v226[v214], v227 - v214);
        *(a1[5] + v214) = 0;
        v240 = *(a1 + 9) + 4;
      }
    }

    else if (v215)
    {
      v216 = v213 + 3;
      v217 = *(a1 + 8);
      if (v216 <= v217)
      {
        v220 = a1[5];
        v221 = v214;
      }

      else
      {
        if (v217 <= 1)
        {
          v217 = 1;
        }

        v218 = 2 * v217;
        if (v218 <= v216)
        {
          v219 = v216;
        }

        else
        {
          v219 = v218;
        }

        v220 = (a1[1])(*a1, v219, "Vector Storage (uint8_t, growth)");
        memcpy(v220, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v219;
        a1[5] = v220;
        v221 = *(a1 + 9);
      }

      memmove(&v220[v214 + 1], &v220[v214], v221 - v214);
      *(a1[5] + v214) = 0;
      v240 = *(a1 + 9) + 2;
    }

    else
    {
      v228 = v213 + 2;
      v229 = *(a1 + 8);
      if (v228 <= v229)
      {
        v232 = a1[5];
        v233 = v214;
      }

      else
      {
        if (v229 <= 1)
        {
          v229 = 1;
        }

        v230 = 2 * v229;
        if (v230 <= v228)
        {
          v231 = v228;
        }

        else
        {
          v231 = v230;
        }

        v232 = (a1[1])(*a1, v231, "Vector Storage (uint8_t, growth)");
        memcpy(v232, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v231;
        a1[5] = v232;
        v233 = *(a1 + 9);
      }

      memmove(&v232[v214 + 1], &v232[v214], v233 - v214);
      *(a1[5] + v214) = 0;
      v240 = *(a1 + 9) + 1;
    }

    *(a1 + 9) = v240;
  }

LABEL_317:
  v242 = *(a2 + 96);
  if (v242)
  {
    glpSerializeUniformBindings(a1, v242);
    goto LABEL_369;
  }

  v243 = glp_serialized_integer32_control(0);
  v244 = *(a1 + 8);
  v245 = *(a1 + 9);
  v246 = v245 + 1;
  if (v245 + 1 <= v244)
  {
    v249 = a1[5];
    v250 = *(a1 + 9);
  }

  else
  {
    if (v244 <= 1)
    {
      v244 = 1;
    }

    v247 = 2 * v244;
    if (v247 <= v246)
    {
      v248 = v246;
    }

    else
    {
      v248 = v247;
    }

    v249 = (a1[1])(*a1, v248, "Vector Storage (uint8_t, growth)");
    memcpy(v249, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v248;
    a1[5] = v249;
    v250 = *(a1 + 9);
  }

  memmove(&v249[v245 + 1], &v249[v245], (v250 - v245));
  *(a1[5] + v245) = v243;
  v251 = *(a1 + 9);
  v252 = v251 + 1;
  *(a1 + 9) = v251 + 1;
  if ((v243 & 0x80000000) != 0)
  {
    v253 = (v243 >> 1) & 7;
    if (v253 > 1)
    {
      if (v253 == 2)
      {
        v272 = v251 + 4;
        v273 = *(a1 + 8);
        if (v272 <= v273)
        {
          v276 = a1[5];
          v277 = v252;
        }

        else
        {
          if (v273 <= 1)
          {
            v273 = 1;
          }

          v274 = 2 * v273;
          if (v274 <= v272)
          {
            v275 = v272;
          }

          else
          {
            v275 = v274;
          }

          v276 = (a1[1])(*a1, v275, "Vector Storage (uint8_t, growth)");
          memcpy(v276, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v275;
          a1[5] = v276;
          v277 = *(a1 + 9);
        }

        memmove(&v276[v252 + 1], &v276[v252], v277 - v252);
        v279 = a1[5] + v252;
        *(v279 + 2) = 0;
        *v279 = 0;
        v278 = *(a1 + 9) + 3;
      }

      else
      {
        if (v253 != 3)
        {
          goto LABEL_369;
        }

        v260 = v251 + 5;
        v261 = *(a1 + 8);
        if (v260 <= v261)
        {
          v264 = a1[5];
          v265 = v252;
        }

        else
        {
          if (v261 <= 1)
          {
            v261 = 1;
          }

          v262 = 2 * v261;
          if (v262 <= v260)
          {
            v263 = v260;
          }

          else
          {
            v263 = v262;
          }

          v264 = (a1[1])(*a1, v263, "Vector Storage (uint8_t, growth)");
          memcpy(v264, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v263;
          a1[5] = v264;
          v265 = *(a1 + 9);
        }

        memmove(&v264[v252 + 1], &v264[v252], v265 - v252);
        *(a1[5] + v252) = 0;
        v278 = *(a1 + 9) + 4;
      }
    }

    else if (v253)
    {
      v254 = v251 + 3;
      v255 = *(a1 + 8);
      if (v254 <= v255)
      {
        v258 = a1[5];
        v259 = v252;
      }

      else
      {
        if (v255 <= 1)
        {
          v255 = 1;
        }

        v256 = 2 * v255;
        if (v256 <= v254)
        {
          v257 = v254;
        }

        else
        {
          v257 = v256;
        }

        v258 = (a1[1])(*a1, v257, "Vector Storage (uint8_t, growth)");
        memcpy(v258, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v257;
        a1[5] = v258;
        v259 = *(a1 + 9);
      }

      memmove(&v258[v252 + 1], &v258[v252], v259 - v252);
      *(a1[5] + v252) = 0;
      v278 = *(a1 + 9) + 2;
    }

    else
    {
      v266 = v251 + 2;
      v267 = *(a1 + 8);
      if (v266 <= v267)
      {
        v270 = a1[5];
        v271 = v252;
      }

      else
      {
        if (v267 <= 1)
        {
          v267 = 1;
        }

        v268 = 2 * v267;
        if (v268 <= v266)
        {
          v269 = v266;
        }

        else
        {
          v269 = v268;
        }

        v270 = (a1[1])(*a1, v269, "Vector Storage (uint8_t, growth)");
        memcpy(v270, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v269;
        a1[5] = v270;
        v271 = *(a1 + 9);
      }

      memmove(&v270[v252 + 1], &v270[v252], v271 - v252);
      *(a1[5] + v252) = 0;
      v278 = *(a1 + 9) + 1;
    }

    *(a1 + 9) = v278;
  }

LABEL_369:
  v280 = *(a2 + 320);
  if (v280)
  {
    v281 = *(v280 + 36);
    v282 = glp_serialized_integer32_control(v281);
    v283 = *(a1 + 8);
    v284 = *(a1 + 9);
    v285 = v284 + 1;
    if (v284 + 1 <= v283)
    {
      v288 = a1[5];
      v289 = *(a1 + 9);
    }

    else
    {
      if (v283 <= 1)
      {
        v283 = 1;
      }

      v286 = 2 * v283;
      if (v286 <= v285)
      {
        v287 = v285;
      }

      else
      {
        v287 = v286;
      }

      v288 = (a1[1])(*a1, v287, "Vector Storage (uint8_t, growth)");
      memcpy(v288, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v287;
      a1[5] = v288;
      v289 = *(a1 + 9);
    }

    result = memmove(&v288[v284 + 1], &v288[v284], (v289 - v284));
    *(a1[5] + v284) = v282;
    v299 = *(a1 + 9);
    v300 = v299 + 1;
    *(a1 + 9) = v299 + 1;
    if ((v282 & 0x80000000) != 0)
    {
      v301 = (v282 >> 1) & 7;
      if (v301 > 1)
      {
        if (v301 == 2)
        {
          v335 = v299 + 4;
          v336 = *(a1 + 8);
          if (v335 <= v336)
          {
            v339 = a1[5];
            v340 = v300;
          }

          else
          {
            if (v336 <= 1)
            {
              v336 = 1;
            }

            v337 = 2 * v336;
            if (v337 <= v335)
            {
              v338 = v335;
            }

            else
            {
              v338 = v337;
            }

            v339 = (a1[1])(*a1, v338, "Vector Storage (uint8_t, growth)");
            memcpy(v339, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v338;
            a1[5] = v339;
            v340 = *(a1 + 9);
          }

          result = memmove(&v339[v300 + 1], &v339[v300], v340 - v300);
          v354 = a1[5] + v300;
          *(v354 + 2) = BYTE2(v281);
          *v354 = v281;
          v353 = 3;
        }

        else
        {
          if (v301 != 3)
          {
            goto LABEL_461;
          }

          v317 = v299 + 5;
          v318 = *(a1 + 8);
          if (v317 <= v318)
          {
            v321 = a1[5];
            v322 = v300;
          }

          else
          {
            if (v318 <= 1)
            {
              v318 = 1;
            }

            v319 = 2 * v318;
            if (v319 <= v317)
            {
              v320 = v317;
            }

            else
            {
              v320 = v319;
            }

            v321 = (a1[1])(*a1, v320, "Vector Storage (uint8_t, growth)");
            memcpy(v321, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v320;
            a1[5] = v321;
            v322 = *(a1 + 9);
          }

          result = memmove(&v321[v300 + 1], &v321[v300], v322 - v300);
          *(a1[5] + v300) = v281;
          v353 = 4;
        }
      }

      else if (v301)
      {
        v302 = v299 + 3;
        v303 = *(a1 + 8);
        if (v302 <= v303)
        {
          v306 = a1[5];
          v307 = v300;
        }

        else
        {
          if (v303 <= 1)
          {
            v303 = 1;
          }

          v304 = 2 * v303;
          if (v304 <= v302)
          {
            v305 = v302;
          }

          else
          {
            v305 = v304;
          }

          v306 = (a1[1])(*a1, v305, "Vector Storage (uint8_t, growth)");
          memcpy(v306, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v305;
          a1[5] = v306;
          v307 = *(a1 + 9);
        }

        result = memmove(&v306[v300 + 1], &v306[v300], v307 - v300);
        *(a1[5] + v300) = v281;
        v353 = 2;
      }

      else
      {
        v329 = v299 + 2;
        v330 = *(a1 + 8);
        if (v329 <= v330)
        {
          v333 = a1[5];
          v334 = v300;
        }

        else
        {
          if (v330 <= 1)
          {
            v330 = 1;
          }

          v331 = 2 * v330;
          if (v331 <= v329)
          {
            v332 = v329;
          }

          else
          {
            v332 = v331;
          }

          v333 = (a1[1])(*a1, v332, "Vector Storage (uint8_t, growth)");
          memcpy(v333, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v332;
          a1[5] = v333;
          v334 = *(a1 + 9);
        }

        result = memmove(&v333[v300 + 1], &v333[v300], v334 - v300);
        *(a1[5] + v300) = v281;
        v353 = 1;
      }

      *(a1 + 9) += v353;
    }

LABEL_461:
    v355 = *(v280 + 32);
    if (v355)
    {
      v356 = 0;
      v357 = 0;
      while (1)
      {
        v358 = *(v280 + 40);
        v359 = *(v358 + v356);
        if (v359)
        {
          break;
        }

LABEL_531:
        ++v357;
        v356 += 16;
        if (v357 >= v355)
        {
          return result;
        }
      }

      v360 = *(v358 + v356 + 8);
      LOBYTE(v361) = glp_serialized_integer32_control(v360);
      v362 = *(a1 + 8);
      v363 = *(a1 + 9);
      v364 = v363 + 1;
      if (v363 + 1 <= v362)
      {
        v367 = a1[5];
        v368 = *(a1 + 9);
      }

      else
      {
        if (v362 <= 1)
        {
          v362 = 1;
        }

        v365 = 2 * v362;
        if (v365 <= v364)
        {
          v366 = v364;
        }

        else
        {
          v366 = v365;
        }

        v367 = (a1[1])(*a1, v366, "Vector Storage (uint8_t, growth)");
        memcpy(v367, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v366;
        a1[5] = v367;
        v368 = *(a1 + 9);
      }

      v361 = v361;
      memmove(&v367[v363 + 1], &v367[v363], (v368 - v363));
      *(a1[5] + v363) = v361;
      v369 = *(a1 + 9);
      v370 = v369 + 1;
      *(a1 + 9) = v369 + 1;
      if (v361 < 0)
      {
        v371 = (v361 >> 1) & 7;
        if (v371 <= 1)
        {
          if (v371)
          {
            v372 = v369 + 3;
            v373 = *(a1 + 8);
            if (v372 <= v373)
            {
              v376 = a1[5];
              v377 = v370;
            }

            else
            {
              if (v373 <= 1)
              {
                v373 = 1;
              }

              v374 = 2 * v373;
              if (v374 <= v372)
              {
                v375 = v372;
              }

              else
              {
                v375 = v374;
              }

              v376 = (a1[1])(*a1, v375, "Vector Storage (uint8_t, growth)");
              memcpy(v376, a1[5], *(a1 + 9));
              (a1[3])(*a1, a1[5]);
              *(a1 + 8) = v375;
              a1[5] = v376;
              v377 = *(a1 + 9);
            }

            memmove(&v376[v370 + 1], &v376[v370], v377 - v370);
            *(a1[5] + v370) = v360;
            v396 = 2;
          }

          else
          {
            v384 = v369 + 2;
            v385 = *(a1 + 8);
            if (v384 <= v385)
            {
              v388 = a1[5];
              v389 = v370;
            }

            else
            {
              if (v385 <= 1)
              {
                v385 = 1;
              }

              v386 = 2 * v385;
              if (v386 <= v384)
              {
                v387 = v384;
              }

              else
              {
                v387 = v386;
              }

              v388 = (a1[1])(*a1, v387, "Vector Storage (uint8_t, growth)");
              memcpy(v388, a1[5], *(a1 + 9));
              (a1[3])(*a1, a1[5]);
              *(a1 + 8) = v387;
              a1[5] = v388;
              v389 = *(a1 + 9);
            }

            memmove(&v388[v370 + 1], &v388[v370], v389 - v370);
            *(a1[5] + v370) = v360;
            v396 = 1;
          }

LABEL_513:
          *(a1 + 9) += v396;
          goto LABEL_514;
        }

        if (v371 == 2)
        {
          v390 = v369 + 4;
          v391 = *(a1 + 8);
          if (v390 <= v391)
          {
            v394 = a1[5];
            v395 = v370;
          }

          else
          {
            if (v391 <= 1)
            {
              v391 = 1;
            }

            v392 = 2 * v391;
            if (v392 <= v390)
            {
              v393 = v390;
            }

            else
            {
              v393 = v392;
            }

            v394 = (a1[1])(*a1, v393, "Vector Storage (uint8_t, growth)");
            memcpy(v394, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v393;
            a1[5] = v394;
            v395 = *(a1 + 9);
          }

          memmove(&v394[v370 + 1], &v394[v370], v395 - v370);
          v397 = a1[5] + v370;
          *(v397 + 2) = BYTE2(v360);
          *v397 = v360;
          v396 = 3;
          goto LABEL_513;
        }

        if (v371 == 3)
        {
          v378 = v369 + 5;
          v379 = *(a1 + 8);
          if (v378 <= v379)
          {
            v382 = a1[5];
            v383 = v370;
          }

          else
          {
            if (v379 <= 1)
            {
              v379 = 1;
            }

            v380 = 2 * v379;
            if (v380 <= v378)
            {
              v381 = v378;
            }

            else
            {
              v381 = v380;
            }

            v382 = (a1[1])(*a1, v381, "Vector Storage (uint8_t, growth)");
            memcpy(v382, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v381;
            a1[5] = v382;
            v383 = *(a1 + 9);
          }

          memmove(&v382[v370 + 1], &v382[v370], v383 - v370);
          *(a1[5] + v370) = v360;
          v396 = 4;
          goto LABEL_513;
        }
      }

LABEL_514:
      serialize_GLPString(a1, *v359, *(v359 + 8));
      v398 = *(v359 + 16);
      v399 = *(a1 + 8);
      v400 = *(a1 + 9);
      v401 = v400 + 4;
      if (v400 + 4 <= v399)
      {
        v404 = a1[5];
        v405 = *(a1 + 9);
      }

      else
      {
        if (v399 <= 1)
        {
          v399 = 1;
        }

        v402 = 2 * v399;
        if (v402 <= v401)
        {
          v403 = v401;
        }

        else
        {
          v403 = v402;
        }

        v404 = (a1[1])(*a1, v403, "Vector Storage (uint8_t, growth)");
        memcpy(v404, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v403;
        a1[5] = v404;
        v405 = *(a1 + 9);
      }

      memmove(&v404[v400 + 1], &v404[v400], (v405 - v400));
      *(a1[5] + v400) = v398;
      v406 = *(a1 + 8);
      v407 = *(a1 + 9);
      v408 = v407 + 4;
      *(a1 + 9) = v407 + 4;
      v409 = *(v359 + 20);
      v410 = v407 + 8;
      if (v410 <= v406)
      {
        v413 = a1[5];
        v414 = v408;
      }

      else
      {
        if (v406 <= 1)
        {
          v406 = 1;
        }

        v411 = 2 * v406;
        if (v411 <= v410)
        {
          v412 = v410;
        }

        else
        {
          v412 = v411;
        }

        v413 = (a1[1])(*a1, v412, "Vector Storage (uint8_t, growth)");
        memcpy(v413, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v412;
        a1[5] = v413;
        v414 = *(a1 + 9);
      }

      result = memmove(&v413[v408 + 1], &v413[v408], v414 - v408);
      *(a1[5] + v408) = v409;
      *(a1 + 9) += 4;
      v355 = *(v280 + 32);
      goto LABEL_531;
    }

    return result;
  }

  v290 = glp_serialized_integer32_control(0);
  v291 = *(a1 + 8);
  v292 = *(a1 + 9);
  v293 = v292 + 1;
  if (v292 + 1 <= v291)
  {
    v296 = a1[5];
    v297 = *(a1 + 9);
  }

  else
  {
    if (v291 <= 1)
    {
      v291 = 1;
    }

    v294 = 2 * v291;
    if (v294 <= v293)
    {
      v295 = v293;
    }

    else
    {
      v295 = v294;
    }

    v296 = (a1[1])(*a1, v295, "Vector Storage (uint8_t, growth)");
    memcpy(v296, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v295;
    a1[5] = v296;
    v297 = *(a1 + 9);
  }

  result = memmove(&v296[v292 + 1], &v296[v292], (v297 - v292));
  *(a1[5] + v292) = v290;
  v308 = *(a1 + 9);
  v309 = v308 + 1;
  *(a1 + 9) = v308 + 1;
  if ((v290 & 0x80000000) != 0)
  {
    v310 = (v290 >> 1) & 7;
    if (v310 > 1)
    {
      if (v310 == 2)
      {
        v347 = v308 + 4;
        v348 = *(a1 + 8);
        if (v347 <= v348)
        {
          v351 = a1[5];
          v352 = v309;
        }

        else
        {
          if (v348 <= 1)
          {
            v348 = 1;
          }

          v349 = 2 * v348;
          if (v349 <= v347)
          {
            v350 = v347;
          }

          else
          {
            v350 = v349;
          }

          v351 = (a1[1])(*a1, v350, "Vector Storage (uint8_t, growth)");
          memcpy(v351, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v350;
          a1[5] = v351;
          v352 = *(a1 + 9);
        }

        result = memmove(&v351[v309 + 1], &v351[v309], v352 - v309);
        v416 = a1[5] + v309;
        *(v416 + 2) = 0;
        *v416 = 0;
        v415 = 3;
      }

      else
      {
        if (v310 != 3)
        {
          return result;
        }

        v323 = v308 + 5;
        v324 = *(a1 + 8);
        if (v323 <= v324)
        {
          v327 = a1[5];
          v328 = v309;
        }

        else
        {
          if (v324 <= 1)
          {
            v324 = 1;
          }

          v325 = 2 * v324;
          if (v325 <= v323)
          {
            v326 = v323;
          }

          else
          {
            v326 = v325;
          }

          v327 = (a1[1])(*a1, v326, "Vector Storage (uint8_t, growth)");
          memcpy(v327, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v326;
          a1[5] = v327;
          v328 = *(a1 + 9);
        }

        result = memmove(&v327[v309 + 1], &v327[v309], v328 - v309);
        *(a1[5] + v309) = 0;
        v415 = 4;
      }
    }

    else if (v310)
    {
      v311 = v308 + 3;
      v312 = *(a1 + 8);
      if (v311 <= v312)
      {
        v315 = a1[5];
        v316 = v309;
      }

      else
      {
        if (v312 <= 1)
        {
          v312 = 1;
        }

        v313 = 2 * v312;
        if (v313 <= v311)
        {
          v314 = v311;
        }

        else
        {
          v314 = v313;
        }

        v315 = (a1[1])(*a1, v314, "Vector Storage (uint8_t, growth)");
        memcpy(v315, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v314;
        a1[5] = v315;
        v316 = *(a1 + 9);
      }

      result = memmove(&v315[v309 + 1], &v315[v309], v316 - v309);
      *(a1[5] + v309) = 0;
      v415 = 2;
    }

    else
    {
      v341 = v308 + 2;
      v342 = *(a1 + 8);
      if (v341 <= v342)
      {
        v345 = a1[5];
        v346 = v309;
      }

      else
      {
        if (v342 <= 1)
        {
          v342 = 1;
        }

        v343 = 2 * v342;
        if (v343 <= v341)
        {
          v344 = v341;
        }

        else
        {
          v344 = v343;
        }

        v345 = (a1[1])(*a1, v344, "Vector Storage (uint8_t, growth)");
        memcpy(v345, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v344;
        a1[5] = v345;
        v346 = *(a1 + 9);
      }

      result = memmove(&v345[v309 + 1], &v345[v309], v346 - v309);
      *(a1[5] + v309) = 0;
      v415 = 1;
    }

    *(a1 + 9) += v415;
  }

  return result;
}

void *glpSerializeUniformBindings(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = glp_serialized_integer32_control(v3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = v6 + 1;
  if (v6 + 1 <= v5)
  {
    v10 = a1[5];
    v11 = *(a1 + 9);
  }

  else
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v8 = 2 * v5;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = (a1[1])(*a1, v9, "Vector Storage (uint8_t, growth)");
    memcpy(v10, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v9;
    a1[5] = v10;
    v11 = *(a1 + 9);
  }

  memmove(&v10[v6 + 1], &v10[v6], (v11 - v6));
  *(a1[5] + v6) = v4;
  v12 = *(a1 + 9);
  v13 = v12 + 1;
  *(a1 + 9) = v12 + 1;
  if ((v4 & 0x80000000) != 0)
  {
    v14 = (v4 >> 1) & 7;
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v33 = v12 + 4;
        v34 = *(a1 + 8);
        if (v33 <= v34)
        {
          v37 = a1[5];
          v38 = v13;
        }

        else
        {
          if (v34 <= 1)
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

          v37 = (a1[1])(*a1, v36, "Vector Storage (uint8_t, growth)");
          memcpy(v37, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v36;
          a1[5] = v37;
          v38 = *(a1 + 9);
        }

        memmove(&v37[v13 + 1], &v37[v13], v38 - v13);
        v40 = a1[5] + v13;
        *(v40 + 2) = BYTE2(v3);
        *v40 = v3;
        v39 = 3;
      }

      else
      {
        if (v14 != 3)
        {
          goto LABEL_51;
        }

        v21 = v12 + 5;
        v22 = *(a1 + 8);
        if (v21 <= v22)
        {
          v25 = a1[5];
          v26 = v13;
        }

        else
        {
          if (v22 <= 1)
          {
            v22 = 1;
          }

          v23 = 2 * v22;
          if (v23 <= v21)
          {
            v24 = v21;
          }

          else
          {
            v24 = v23;
          }

          v25 = (a1[1])(*a1, v24, "Vector Storage (uint8_t, growth)");
          memcpy(v25, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v24;
          a1[5] = v25;
          v26 = *(a1 + 9);
        }

        memmove(&v25[v13 + 1], &v25[v13], v26 - v13);
        *(a1[5] + v13) = v3;
        v39 = 4;
      }
    }

    else if (v14)
    {
      v15 = v12 + 3;
      v16 = *(a1 + 8);
      if (v15 <= v16)
      {
        v19 = a1[5];
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

        v19 = (a1[1])(*a1, v18, "Vector Storage (uint8_t, growth)");
        memcpy(v19, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v18;
        a1[5] = v19;
        v20 = *(a1 + 9);
      }

      memmove(&v19[v13 + 1], &v19[v13], v20 - v13);
      *(a1[5] + v13) = v3;
      v39 = 2;
    }

    else
    {
      v27 = v12 + 2;
      v28 = *(a1 + 8);
      if (v27 <= v28)
      {
        v31 = a1[5];
        v32 = v13;
      }

      else
      {
        if (v28 <= 1)
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

        v31 = (a1[1])(*a1, v30, "Vector Storage (uint8_t, growth)");
        memcpy(v31, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v30;
        a1[5] = v31;
        v32 = *(a1 + 9);
      }

      memmove(&v31[v13 + 1], &v31[v13], v32 - v13);
      *(a1[5] + v13) = v3;
      v39 = 1;
    }

    *(a1 + 9) += v39;
  }

LABEL_51:
  v41 = *(a2 + 36);
  v42 = glp_serialized_integer32_control(v41);
  v43 = *(a1 + 8);
  v44 = *(a1 + 9);
  v45 = v44 + 1;
  if (v44 + 1 <= v43)
  {
    v48 = a1[5];
    v49 = *(a1 + 9);
  }

  else
  {
    if (v43 <= 1)
    {
      v43 = 1;
    }

    v46 = 2 * v43;
    if (v46 <= v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = v46;
    }

    v48 = (a1[1])(*a1, v47, "Vector Storage (uint8_t, growth)");
    memcpy(v48, a1[5], *(a1 + 9));
    (a1[3])(*a1, a1[5]);
    *(a1 + 8) = v47;
    a1[5] = v48;
    v49 = *(a1 + 9);
  }

  result = memmove(&v48[v44 + 1], &v48[v44], (v49 - v44));
  *(a1[5] + v44) = v42;
  v51 = *(a1 + 9);
  v52 = v51 + 1;
  *(a1 + 9) = v51 + 1;
  if ((v42 & 0x80000000) != 0)
  {
    v53 = (v42 >> 1) & 7;
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        v72 = v51 + 4;
        v73 = *(a1 + 8);
        if (v72 <= v73)
        {
          v76 = a1[5];
          v77 = v52;
        }

        else
        {
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = 2 * v73;
          if (v74 <= v72)
          {
            v75 = v72;
          }

          else
          {
            v75 = v74;
          }

          v76 = (a1[1])(*a1, v75, "Vector Storage (uint8_t, growth)");
          memcpy(v76, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v75;
          a1[5] = v76;
          v77 = *(a1 + 9);
        }

        result = memmove(&v76[v52 + 1], &v76[v52], v77 - v52);
        v79 = a1[5] + v52;
        *(v79 + 2) = BYTE2(v41);
        *v79 = v41;
        v78 = 3;
      }

      else
      {
        if (v53 != 3)
        {
          goto LABEL_101;
        }

        v60 = v51 + 5;
        v61 = *(a1 + 8);
        if (v60 <= v61)
        {
          v64 = a1[5];
          v65 = v52;
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

        result = memmove(&v64[v52 + 1], &v64[v52], v65 - v52);
        *(a1[5] + v52) = v41;
        v78 = 4;
      }
    }

    else if (v53)
    {
      v54 = v51 + 3;
      v55 = *(a1 + 8);
      if (v54 <= v55)
      {
        v58 = a1[5];
        v59 = v52;
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

      result = memmove(&v58[v52 + 1], &v58[v52], v59 - v52);
      *(a1[5] + v52) = v41;
      v78 = 2;
    }

    else
    {
      v66 = v51 + 2;
      v67 = *(a1 + 8);
      if (v66 <= v67)
      {
        v70 = a1[5];
        v71 = v52;
      }

      else
      {
        if (v67 <= 1)
        {
          v67 = 1;
        }

        v68 = 2 * v67;
        if (v68 <= v66)
        {
          v69 = v66;
        }

        else
        {
          v69 = v68;
        }

        v70 = (a1[1])(*a1, v69, "Vector Storage (uint8_t, growth)");
        memcpy(v70, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v69;
        a1[5] = v70;
        v71 = *(a1 + 9);
      }

      result = memmove(&v70[v52 + 1], &v70[v52], v71 - v52);
      *(a1[5] + v52) = v41;
      v78 = 1;
    }

    *(a1 + 9) += v78;
  }

LABEL_101:
  v80 = *(a2 + 32);
  if (v80)
  {
    v81 = 0;
    v82 = 0;
    v291 = *(a2 + 40);
    while (1)
    {
      v83 = (v291 + 32 * v81);
      v84 = *v83;
      if (*v83)
      {
        break;
      }

      v82 = (v82 + 1);
LABEL_358:
      if (++v81 >= v80)
      {
        return result;
      }
    }

    v85 = glp_serialized_integer32_control(v82);
    v86 = *(a1 + 8);
    v87 = *(a1 + 9);
    v88 = v87 + 1;
    if (v87 + 1 <= v86)
    {
      v91 = a1[5];
      v92 = *(a1 + 9);
    }

    else
    {
      if (v86 <= 1)
      {
        v86 = 1;
      }

      v89 = 2 * v86;
      if (v89 <= v88)
      {
        v90 = v88;
      }

      else
      {
        v90 = v89;
      }

      v91 = (a1[1])(*a1, v90, "Vector Storage (uint8_t, growth)");
      memcpy(v91, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v90;
      a1[5] = v91;
      v92 = *(a1 + 9);
    }

    memmove(&v91[v87 + 1], &v91[v87], (v92 - v87));
    *(a1[5] + v87) = v85;
    v93 = *(a1 + 9);
    v94 = v93 + 1;
    *(a1 + 9) = v93 + 1;
    if (v85 < 0)
    {
      v95 = (v85 >> 1) & 7;
      if (v95 > 1)
      {
        if (v95 == 2)
        {
          v114 = v93 + 4;
          v115 = *(a1 + 8);
          if (v114 <= v115)
          {
            v118 = a1[5];
            v119 = v94;
          }

          else
          {
            if (v115 <= 1)
            {
              v115 = 1;
            }

            v116 = 2 * v115;
            if (v116 <= v114)
            {
              v117 = v114;
            }

            else
            {
              v117 = v116;
            }

            v118 = (a1[1])(*a1, v117, "Vector Storage (uint8_t, growth)");
            memcpy(v118, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v117;
            a1[5] = v118;
            v119 = *(a1 + 9);
          }

          memmove(&v118[v94 + 1], &v118[v94], v119 - v94);
          v121 = a1[5] + v94;
          *(v121 + 2) = BYTE2(v82);
          *v121 = v82;
          v120 = 3;
        }

        else
        {
          if (v95 != 3)
          {
            goto LABEL_155;
          }

          v102 = v93 + 5;
          v103 = *(a1 + 8);
          if (v102 <= v103)
          {
            v106 = a1[5];
            v107 = v94;
          }

          else
          {
            if (v103 <= 1)
            {
              v103 = 1;
            }

            v104 = 2 * v103;
            if (v104 <= v102)
            {
              v105 = v102;
            }

            else
            {
              v105 = v104;
            }

            v106 = (a1[1])(*a1, v105, "Vector Storage (uint8_t, growth)");
            memcpy(v106, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v105;
            a1[5] = v106;
            v107 = *(a1 + 9);
          }

          memmove(&v106[v94 + 1], &v106[v94], v107 - v94);
          *(a1[5] + v94) = v82;
          v120 = 4;
        }
      }

      else if (v95)
      {
        v96 = v93 + 3;
        v97 = *(a1 + 8);
        if (v96 <= v97)
        {
          v100 = a1[5];
          v101 = v94;
        }

        else
        {
          if (v97 <= 1)
          {
            v97 = 1;
          }

          v98 = 2 * v97;
          if (v98 <= v96)
          {
            v99 = v96;
          }

          else
          {
            v99 = v98;
          }

          v100 = (a1[1])(*a1, v99, "Vector Storage (uint8_t, growth)");
          memcpy(v100, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v99;
          a1[5] = v100;
          v101 = *(a1 + 9);
        }

        memmove(&v100[v94 + 1], &v100[v94], v101 - v94);
        *(a1[5] + v94) = v82;
        v120 = 2;
      }

      else
      {
        v108 = v93 + 2;
        v109 = *(a1 + 8);
        if (v108 <= v109)
        {
          v112 = a1[5];
          v113 = v94;
        }

        else
        {
          if (v109 <= 1)
          {
            v109 = 1;
          }

          v110 = 2 * v109;
          if (v110 <= v108)
          {
            v111 = v108;
          }

          else
          {
            v111 = v110;
          }

          v112 = (a1[1])(*a1, v111, "Vector Storage (uint8_t, growth)");
          memcpy(v112, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v111;
          a1[5] = v112;
          v113 = *(a1 + 9);
        }

        memmove(&v112[v94 + 1], &v112[v94], v113 - v94);
        *(a1[5] + v94) = v82;
        v120 = 1;
      }

      *(a1 + 9) += v120;
    }

LABEL_155:
    serialize_GLPString(a1, v83[1], v83[2]);
    v122 = *v84;
    v123 = *(a1 + 8);
    v124 = *(a1 + 9);
    v125 = v124 + 4;
    if (v124 + 4 <= v123)
    {
      v128 = a1[5];
      v129 = *(a1 + 9);
    }

    else
    {
      if (v123 <= 1)
      {
        v123 = 1;
      }

      v126 = 2 * v123;
      if (v126 <= v125)
      {
        v127 = v125;
      }

      else
      {
        v127 = v126;
      }

      v128 = (a1[1])(*a1, v127, "Vector Storage (uint8_t, growth)");
      memcpy(v128, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v127;
      a1[5] = v128;
      v129 = *(a1 + 9);
    }

    memmove(&v128[v124 + 1], &v128[v124], (v129 - v124));
    *(a1[5] + v124) = v122;
    v130 = *(a1 + 8);
    v131 = *(a1 + 9);
    v132 = v131 + 4;
    *(a1 + 9) = v131 + 4;
    v133 = v84[1];
    v134 = v131 + 8;
    if (v134 <= v130)
    {
      v137 = a1[5];
      v138 = v132;
    }

    else
    {
      if (v130 <= 1)
      {
        v130 = 1;
      }

      v135 = 2 * v130;
      if (v135 <= v134)
      {
        v136 = v134;
      }

      else
      {
        v136 = v135;
      }

      v137 = (a1[1])(*a1, v136, "Vector Storage (uint8_t, growth)");
      memcpy(v137, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v136;
      a1[5] = v137;
      v138 = *(a1 + 9);
    }

    memmove(&v137[v132 + 1], &v137[v132], v138 - v132);
    *(a1[5] + v132) = v133;
    v139 = *(a1 + 8);
    v140 = *(a1 + 9);
    v141 = v140 + 4;
    *(a1 + 9) = v140 + 4;
    v142 = v84[2];
    v143 = v140 + 8;
    if (v143 <= v139)
    {
      v146 = a1[5];
      v147 = v141;
    }

    else
    {
      if (v139 <= 1)
      {
        v139 = 1;
      }

      v144 = 2 * v139;
      if (v144 <= v143)
      {
        v145 = v143;
      }

      else
      {
        v145 = v144;
      }

      v146 = (a1[1])(*a1, v145, "Vector Storage (uint8_t, growth)");
      memcpy(v146, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v145;
      a1[5] = v146;
      v147 = *(a1 + 9);
    }

    memmove(&v146[v141 + 1], &v146[v141], v147 - v141);
    *(a1[5] + v141) = v142;
    v148 = *(a1 + 8);
    v149 = *(a1 + 9);
    v150 = v149 + 4;
    *(a1 + 9) = v149 + 4;
    v151 = v84[3];
    v152 = v149 + 8;
    if (v152 <= v148)
    {
      v155 = a1[5];
      v156 = v150;
    }

    else
    {
      if (v148 <= 1)
      {
        v148 = 1;
      }

      v153 = 2 * v148;
      if (v153 <= v152)
      {
        v154 = v152;
      }

      else
      {
        v154 = v153;
      }

      v155 = (a1[1])(*a1, v154, "Vector Storage (uint8_t, growth)");
      memcpy(v155, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v154;
      a1[5] = v155;
      v156 = *(a1 + 9);
    }

    memmove(&v155[v150 + 1], &v155[v150], v156 - v150);
    *(a1[5] + v150) = v151;
    v157 = *(a1 + 8);
    v158 = *(a1 + 9);
    v159 = v158 + 4;
    *(a1 + 9) = v158 + 4;
    v160 = *(v84 + 80);
    v161 = v158 + 8;
    if (v161 <= v157)
    {
      v164 = a1[5];
      v165 = v159;
    }

    else
    {
      if (v157 <= 1)
      {
        v157 = 1;
      }

      v162 = 2 * v157;
      if (v162 <= v161)
      {
        v163 = v161;
      }

      else
      {
        v163 = v162;
      }

      v164 = (a1[1])(*a1, v163, "Vector Storage (uint8_t, growth)");
      memcpy(v164, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v163;
      a1[5] = v164;
      v165 = *(a1 + 9);
    }

    memmove(&v164[v159 + 1], &v164[v159], v165 - v159);
    *(a1[5] + v159) = v160;
    *(a1 + 9) += 4;
    serialize_GLPType(a1, *(v84 + 3));
    real_serialize_GLPValue(a1, *(v84 + 2), *(v84 + 3));
    v166 = *(v84 + 4);
    if (!v166)
    {
      LOBYTE(v176) = glp_serialized_integer32_control(0);
      v177 = *(a1 + 8);
      v178 = *(a1 + 9);
      v179 = v178 + 1;
      if (v178 + 1 <= v177)
      {
        v182 = a1[5];
        v183 = *(a1 + 9);
      }

      else
      {
        if (v177 <= 1)
        {
          v177 = 1;
        }

        v180 = 2 * v177;
        if (v180 <= v179)
        {
          v181 = v179;
        }

        else
        {
          v181 = v180;
        }

        v182 = (a1[1])(*a1, v181, "Vector Storage (uint8_t, growth)");
        memcpy(v182, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v181;
        a1[5] = v182;
        v183 = *(a1 + 9);
      }

      v176 = v176;
      memmove(&v182[v178 + 1], &v182[v178], (v183 - v178));
      *(a1[5] + v178) = v176;
      v193 = *(a1 + 9);
      v194 = v193 + 1;
      *(a1 + 9) = v193 + 1;
      if ((v176 & 0x80000000) == 0)
      {
        goto LABEL_347;
      }

      v195 = (v176 >> 1) & 7;
      if (v195 > 1)
      {
        if (v195 == 2)
        {
          v230 = v193 + 4;
          v231 = *(a1 + 8);
          if (v230 <= v231)
          {
            v200 = a1[5];
            v234 = v194;
          }

          else
          {
            if (v231 <= 1)
            {
              v231 = 1;
            }

            v232 = 2 * v231;
            if (v232 <= v230)
            {
              v233 = v230;
            }

            else
            {
              v233 = v232;
            }

            v200 = (a1[1])(*a1, v233, "Vector Storage (uint8_t, growth)");
            memcpy(v200, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v233;
            a1[5] = v200;
            v234 = *(a1 + 9);
          }

          memmove((v200 + v194 + 1), (v200 + v194), v234 - v194);
          v289 = a1[5] + v194;
          *(v289 + 2) = 0;
          *v289 = 0;
          LODWORD(v200) = 3;
        }

        else
        {
          if (v195 != 3)
          {
            goto LABEL_347;
          }

          v208 = v193 + 5;
          v209 = *(a1 + 8);
          if (v208 <= v209)
          {
            v200 = a1[5];
            v212 = v194;
          }

          else
          {
            if (v209 <= 1)
            {
              v209 = 1;
            }

            v210 = 2 * v209;
            if (v210 <= v208)
            {
              v211 = v208;
            }

            else
            {
              v211 = v210;
            }

            v200 = (a1[1])(*a1, v211, "Vector Storage (uint8_t, growth)");
            memcpy(v200, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v211;
            a1[5] = v200;
            v212 = *(a1 + 9);
          }

          memmove((v200 + v194 + 1), (v200 + v194), v212 - v194);
          *(a1[5] + v194) = 0;
          LODWORD(v200) = 4;
        }
      }

      else if (v195)
      {
        v196 = v193 + 3;
        v197 = *(a1 + 8);
        if (v196 <= v197)
        {
          v200 = a1[5];
          v201 = v194;
        }

        else
        {
          if (v197 <= 1)
          {
            v197 = 1;
          }

          v198 = 2 * v197;
          if (v198 <= v196)
          {
            v199 = v196;
          }

          else
          {
            v199 = v198;
          }

          v200 = (a1[1])(*a1, v199, "Vector Storage (uint8_t, growth)");
          memcpy(v200, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v199;
          a1[5] = v200;
          v201 = *(a1 + 9);
        }

        memmove((v200 + v194 + 1), (v200 + v194), v201 - v194);
        *(a1[5] + v194) = 0;
        LODWORD(v200) = 2;
      }

      else
      {
        v225 = v193 + 2;
        v226 = *(a1 + 8);
        if (v225 <= v226)
        {
          v200 = a1[5];
          v229 = v194;
        }

        else
        {
          if (v226 <= 1)
          {
            v226 = 1;
          }

          v227 = 2 * v226;
          if (v227 <= v225)
          {
            v228 = v225;
          }

          else
          {
            v228 = v227;
          }

          v200 = (a1[1])(*a1, v228, "Vector Storage (uint8_t, growth)");
          memcpy(v200, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v228;
          a1[5] = v200;
          v229 = *(a1 + 9);
        }

        memmove((v200 + v194 + 1), (v200 + v194), v229 - v194);
        *(a1[5] + v194) = 0;
        LODWORD(v200) = 1;
      }

LABEL_346:
      v194 = *(a1 + 9) + v200;
      *(a1 + 9) = v194;
LABEL_347:
      v281 = 0;
      do
      {
        v282 = v84[v281 + 10];
        v283 = v194 + 4;
        v284 = *(a1 + 8);
        if (v194 + 4 <= v284)
        {
          v287 = a1[5];
          v288 = v194;
        }

        else
        {
          if (v284 <= 1)
          {
            v284 = 1;
          }

          v285 = 2 * v284;
          if (v285 <= v283)
          {
            v286 = v283;
          }

          else
          {
            v286 = v285;
          }

          v287 = (a1[1])(*a1, v286, "Vector Storage (uint8_t, growth)");
          memcpy(v287, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v286;
          a1[5] = v287;
          v288 = *(a1 + 9);
        }

        ++v281;
        result = memmove(&v287[v194 + 1], &v287[v194], v288 - v194);
        *(a1[5] + v194) = v282;
        v194 = *(a1 + 9) + 4;
        *(a1 + 9) = v194;
      }

      while (v281 != 5);
      v82 = 0;
      v80 = *(a2 + 32);
      goto LABEL_358;
    }

    v167 = *(v166 + 32);
    v168 = glp_serialized_integer32_control(v167);
    v169 = *(a1 + 8);
    v170 = *(a1 + 9);
    v171 = v170 + 1;
    if (v170 + 1 <= v169)
    {
      v174 = a1[5];
      v175 = *(a1 + 9);
    }

    else
    {
      if (v169 <= 1)
      {
        v169 = 1;
      }

      v172 = 2 * v169;
      if (v172 <= v171)
      {
        v173 = v171;
      }

      else
      {
        v173 = v172;
      }

      v174 = (a1[1])(*a1, v173, "Vector Storage (uint8_t, growth)");
      memcpy(v174, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v173;
      a1[5] = v174;
      v175 = *(a1 + 9);
    }

    memmove(&v174[v170 + 1], &v174[v170], (v175 - v170));
    *(a1[5] + v170) = v168;
    v184 = *(a1 + 9);
    v185 = v184 + 1;
    *(a1 + 9) = v184 + 1;
    if (v168 < 0)
    {
      v186 = (v168 >> 1) & 7;
      if (v186 > 1)
      {
        if (v186 == 2)
        {
          v219 = v184 + 4;
          v220 = *(a1 + 8);
          if (v219 <= v220)
          {
            v223 = a1[5];
            v224 = v185;
          }

          else
          {
            if (v220 <= 1)
            {
              v220 = 1;
            }

            v221 = 2 * v220;
            if (v221 <= v219)
            {
              v222 = v219;
            }

            else
            {
              v222 = v221;
            }

            v223 = (a1[1])(*a1, v222, "Vector Storage (uint8_t, growth)");
            memcpy(v223, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v222;
            a1[5] = v223;
            v224 = *(a1 + 9);
          }

          memmove(&v223[v185 + 1], &v223[v185], v224 - v185);
          v236 = a1[5] + v185;
          *(v236 + 2) = BYTE2(v167);
          *v236 = v167;
          v235 = 3;
        }

        else
        {
          if (v186 != 3)
          {
            goto LABEL_287;
          }

          v202 = v184 + 5;
          v203 = *(a1 + 8);
          if (v202 <= v203)
          {
            v206 = a1[5];
            v207 = v185;
          }

          else
          {
            if (v203 <= 1)
            {
              v203 = 1;
            }

            v204 = 2 * v203;
            if (v204 <= v202)
            {
              v205 = v202;
            }

            else
            {
              v205 = v204;
            }

            v206 = (a1[1])(*a1, v205, "Vector Storage (uint8_t, growth)");
            memcpy(v206, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v205;
            a1[5] = v206;
            v207 = *(a1 + 9);
          }

          memmove(&v206[v185 + 1], &v206[v185], v207 - v185);
          *(a1[5] + v185) = v167;
          v235 = 4;
        }
      }

      else if (v186)
      {
        v187 = v184 + 3;
        v188 = *(a1 + 8);
        if (v187 <= v188)
        {
          v191 = a1[5];
          v192 = v185;
        }

        else
        {
          if (v188 <= 1)
          {
            v188 = 1;
          }

          v189 = 2 * v188;
          if (v189 <= v187)
          {
            v190 = v187;
          }

          else
          {
            v190 = v189;
          }

          v191 = (a1[1])(*a1, v190, "Vector Storage (uint8_t, growth)");
          memcpy(v191, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v190;
          a1[5] = v191;
          v192 = *(a1 + 9);
        }

        memmove(&v191[v185 + 1], &v191[v185], v192 - v185);
        *(a1[5] + v185) = v167;
        v235 = 2;
      }

      else
      {
        v213 = v184 + 2;
        v214 = *(a1 + 8);
        if (v213 <= v214)
        {
          v217 = a1[5];
          v218 = v185;
        }

        else
        {
          if (v214 <= 1)
          {
            v214 = 1;
          }

          v215 = 2 * v214;
          if (v215 <= v213)
          {
            v216 = v213;
          }

          else
          {
            v216 = v215;
          }

          v217 = (a1[1])(*a1, v216, "Vector Storage (uint8_t, growth)");
          memcpy(v217, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v216;
          a1[5] = v217;
          v218 = *(a1 + 9);
        }

        memmove(&v217[v185 + 1], &v217[v185], v218 - v185);
        *(a1[5] + v185) = v167;
        v235 = 1;
      }

      *(a1 + 9) += v235;
    }

LABEL_287:
    v237 = *(v166 + 36);
    v238 = glp_serialized_integer32_control(v237);
    v239 = *(a1 + 8);
    v240 = *(a1 + 9);
    v241 = v240 + 1;
    if (v240 + 1 <= v239)
    {
      v244 = a1[5];
      v245 = *(a1 + 9);
    }

    else
    {
      if (v239 <= 1)
      {
        v239 = 1;
      }

      v242 = 2 * v239;
      if (v242 <= v241)
      {
        v243 = v241;
      }

      else
      {
        v243 = v242;
      }

      v244 = (a1[1])(*a1, v243, "Vector Storage (uint8_t, growth)");
      memcpy(v244, a1[5], *(a1 + 9));
      (a1[3])(*a1, a1[5]);
      *(a1 + 8) = v243;
      a1[5] = v244;
      v245 = *(a1 + 9);
    }

    memmove(&v244[v240 + 1], &v244[v240], (v245 - v240));
    *(a1[5] + v240) = v238;
    v246 = *(a1 + 9);
    v247 = v246 + 1;
    *(a1 + 9) = v246 + 1;
    if ((v238 & 0x80000000) == 0)
    {
      goto LABEL_337;
    }

    v248 = (v238 >> 1) & 7;
    if (v248 > 1)
    {
      if (v248 == 2)
      {
        v267 = v246 + 4;
        v268 = *(a1 + 8);
        if (v267 <= v268)
        {
          v271 = a1[5];
          v272 = v247;
        }

        else
        {
          if (v268 <= 1)
          {
            v268 = 1;
          }

          v269 = 2 * v268;
          if (v269 <= v267)
          {
            v270 = v267;
          }

          else
          {
            v270 = v269;
          }

          v271 = (a1[1])(*a1, v270, "Vector Storage (uint8_t, growth)");
          memcpy(v271, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v270;
          a1[5] = v271;
          v272 = *(a1 + 9);
        }

        memmove(&v271[v247 + 1], &v271[v247], v272 - v247);
        v274 = a1[5] + v247;
        *(v274 + 2) = BYTE2(v237);
        *v274 = v237;
        v273 = 3;
      }

      else
      {
        if (v248 != 3)
        {
LABEL_337:
          v200 = *(v166 + 36);
          v275 = v200 + v247;
          v276 = *(a1 + 8);
          if (v200 + v247 <= v276)
          {
            v279 = a1[5];
            v280 = v247;
          }

          else
          {
            if (v276 <= 1)
            {
              v276 = 1;
            }

            v277 = 2 * v276;
            if (v277 <= v275)
            {
              v278 = v275;
            }

            else
            {
              v278 = v277;
            }

            v279 = (a1[1])(*a1, v278, "Vector Storage (uint8_t, growth)");
            memcpy(v279, a1[5], *(a1 + 9));
            (a1[3])(*a1, a1[5]);
            *(a1 + 8) = v278;
            a1[5] = v279;
            v280 = *(a1 + 9);
          }

          memmove(&v279[v247 + 1], &v279[v247], v280 - v247);
          memcpy((a1[5] + v247), *(v166 + 40), v200);
          goto LABEL_346;
        }

        v255 = v246 + 5;
        v256 = *(a1 + 8);
        if (v255 <= v256)
        {
          v259 = a1[5];
          v260 = v247;
        }

        else
        {
          if (v256 <= 1)
          {
            v256 = 1;
          }

          v257 = 2 * v256;
          if (v257 <= v255)
          {
            v258 = v255;
          }

          else
          {
            v258 = v257;
          }

          v259 = (a1[1])(*a1, v258, "Vector Storage (uint8_t, growth)");
          memcpy(v259, a1[5], *(a1 + 9));
          (a1[3])(*a1, a1[5]);
          *(a1 + 8) = v258;
          a1[5] = v259;
          v260 = *(a1 + 9);
        }

        memmove(&v259[v247 + 1], &v259[v247], v260 - v247);
        *(a1[5] + v247) = v237;
        v273 = 4;
      }
    }

    else if (v248)
    {
      v249 = v246 + 3;
      v250 = *(a1 + 8);
      if (v249 <= v250)
      {
        v253 = a1[5];
        v254 = v247;
      }

      else
      {
        if (v250 <= 1)
        {
          v250 = 1;
        }

        v251 = 2 * v250;
        if (v251 <= v249)
        {
          v252 = v249;
        }

        else
        {
          v252 = v251;
        }

        v253 = (a1[1])(*a1, v252, "Vector Storage (uint8_t, growth)");
        memcpy(v253, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v252;
        a1[5] = v253;
        v254 = *(a1 + 9);
      }

      memmove(&v253[v247 + 1], &v253[v247], v254 - v247);
      *(a1[5] + v247) = v237;
      v273 = 2;
    }

    else
    {
      v261 = v246 + 2;
      v262 = *(a1 + 8);
      if (v261 <= v262)
      {
        v265 = a1[5];
        v266 = v247;
      }

      else
      {
        if (v262 <= 1)
        {
          v262 = 1;
        }

        v263 = 2 * v262;
        if (v263 <= v261)
        {
          v264 = v261;
        }

        else
        {
          v264 = v263;
        }

        v265 = (a1[1])(*a1, v264, "Vector Storage (uint8_t, growth)");
        memcpy(v265, a1[5], *(a1 + 9));
        (a1[3])(*a1, a1[5]);
        *(a1 + 8) = v264;
        a1[5] = v265;
        v266 = *(a1 + 9);
      }

      memmove(&v265[v247 + 1], &v265[v247], v266 - v247);
      *(a1[5] + v247) = v237;
      v273 = 1;
    }

    v247 = *(a1 + 9) + v273;
    *(a1 + 9) = v247;
    goto LABEL_337;
  }

  return result;
}

void *glpLinkProgramFromLinkerOutput(uint64_t a1, int a2, _OWORD *a3)
{
  v142 = *MEMORY[0x277D85DE8];
  v6 = malloc_type_calloc(1uLL, 0x148uLL, 0x1A32276BuLL);
  if (!v6)
  {
LABEL_284:
    abort();
  }

  v7 = v6;
  v8 = 0;
  v6[40] = 0;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 17) = 0u;
  *(v6 + 14) = 0u;
  *(v6 + 15) = 0u;
  *(v6 + 12) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 10) = 0u;
  *(v6 + 11) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 9) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  v9 = (a3 + 6);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  do
  {
    if (*(v9 - 2))
    {
      if (v9[1])
      {
        v10 = *v9;
        v11 = PPStreamCreate();
        PPStreamAttachStream(v11, a3 + v10);
        v7[v8] = v11;
      }

      if (v9[3])
      {
        glpCreateShaderByteCode();
        v13 = v12;
        v14 = malloc_type_malloc(v9[3], 0xCA0EF1E7uLL);
        if (!v14)
        {
          goto LABEL_284;
        }

        *v13 = v14;
        memcpy(v14, a3 + v9[2], v9[3]);
        v15 = v9[7];
        if (v15)
        {
          v16 = malloc_type_malloc(v15, 0xCA0EF1E7uLL);
          if (!v16)
          {
            goto LABEL_284;
          }

          *(v13 + 8) = v16;
          memcpy(v16, a3 + v9[6], v9[7]);
        }

        v17 = v9[5];
        if (v17)
        {
          v18 = malloc_type_malloc(v17, 0xCA0EF1E7uLL);
          if (!v18)
          {
            goto LABEL_284;
          }

          *(v13 + 40) = v18;
          memcpy(v18, a3 + v9[4], v9[5]);
        }

        v19 = v9[9];
        if (v19)
        {
          v20 = malloc_type_malloc(v19, 0xCA0EF1E7uLL);
          if (!v20)
          {
            goto LABEL_284;
          }

          *(v13 + 16) = v20;
          memcpy(v20, a3 + v9[8], v9[9]);
        }

        v21 = v9[11];
        if (v21)
        {
          v22 = malloc_type_malloc(v21, 0xCA0EF1E7uLL);
          if (!v22)
          {
            goto LABEL_284;
          }

          *(v13 + 24) = v22;
          memcpy(v22, a3 + v9[10], v9[11]);
        }

        v23 = v9[13];
        if (v23)
        {
          v24 = malloc_type_malloc(v23, 0xCA0EF1E7uLL);
          if (!v24)
          {
            goto LABEL_284;
          }

          *(v13 + 32) = v24;
          memcpy(v24, a3 + v9[12], v9[13]);
        }

        *(v13 + 48) = v9[14];
        *(v13 + 72) = *(v9 + 10);
        *(v13 + 80) = *(v9 + 11);
        *(v13 + 52) = v9[15];
        *(v13 + 56) = *(v9 + 4);
        v7[v8 + 5] = v13;
      }
    }

    v9 += 26;
    ++v8;
  }

  while (v8 != 5);
  memset(v138, 0, sizeof(v138));
  glpInitPoolAllocator(4096, 4096, v138);
  v141 = 0;
  v140 = 0u;
  memset(v139, 0, sizeof(v139));
  glpInitDeserialContext(v139, v138, v138, a1, a2);
  StringHash = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  v7[23] = StringHash;
  deserialize_bindings(v139, StringHash);
  v26 = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
  v7[24] = v26;
  deserialize_bindings(v139, v26);
  v7[10] = glpDeserializeUniformBindings(v139);
  v27 = HIDWORD(v141);
  v28 = v141;
  if (HIDWORD(v141) >= v141)
  {
LABEL_283:
    glpDeserialError(v139, 1u);
  }

  v29 = *(&v140 + 1);
  v30 = *(*(&v140 + 1) + HIDWORD(v141));
  v31 = *(*(&v140 + 1) + HIDWORD(v141));
  v32 = HIDWORD(v141) + 1;
  ++HIDWORD(v141);
  if (v30 < 0)
  {
    v33 = (v31 >> 1) & 7;
    if (v33 > 3)
    {
      if (v33 > 5)
      {
        if (v33 == 6)
        {
          if (v27 + 5 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v34) = *(*(&v140 + 1) + v32);
          HIDWORD(v141) = v27 + 5;
          LODWORD(v32) = v27 + 8;
          if (v27 + 8 > v141)
          {
            goto LABEL_283;
          }
        }

        else
        {
          if (v27 + 9 > v141)
          {
            goto LABEL_283;
          }

          v34 = *(*(&v140 + 1) + v32);
          LODWORD(v32) = v27 + 9;
        }
      }

      else
      {
        v35 = v27 + 5;
        if (v33 == 4)
        {
          if (v35 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v34) = *(*(&v140 + 1) + v32);
          HIDWORD(v141) = v27 + 5;
          if (v27 + 5 >= v141)
          {
            goto LABEL_283;
          }

          LODWORD(v32) = v27 + 6;
        }

        else
        {
          if (v35 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v34) = *(*(&v140 + 1) + v32);
          HIDWORD(v141) = v27 + 5;
          if ((v27 + 5) + 2 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v32) = v27 + 7;
        }
      }
    }

    else if (v33 > 1)
    {
      if (v33 == 2)
      {
        v36 = v27 + 4;
        if (v36 > v141)
        {
          goto LABEL_283;
        }

        LODWORD(v34) = *(*(&v140 + 1) + v32) | (*(*(&v140 + 1) + v32 + 2) << 16);
        HIDWORD(v141) = v36;
        LODWORD(v32) = v36;
        goto LABEL_54;
      }

      if (v27 + 5 > v141)
      {
        goto LABEL_283;
      }

      LODWORD(v34) = *(*(&v140 + 1) + v32);
      LODWORD(v32) = v27 + 5;
    }

    else if (v33)
    {
      if (v27 + 3 > v141)
      {
        goto LABEL_283;
      }

      LODWORD(v34) = *(*(&v140 + 1) + v32);
      LODWORD(v32) = v27 + 3;
    }

    else
    {
      if (v32 >= v141)
      {
        goto LABEL_283;
      }

      LODWORD(v34) = *(*(&v140 + 1) + v32);
      LODWORD(v32) = v27 + 2;
    }

    HIDWORD(v141) = v32;
LABEL_54:
    v37 = -256 << (8 * v33);
    if (v30)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    LODWORD(v31) = v34 | v38;
  }

  *(v7 + 56) = v31;
  if (v32 >= v28)
  {
    goto LABEL_283;
  }

  v39 = *(v29 + v32);
  v40 = *(v29 + v32);
  v41 = v32 + 1;
  HIDWORD(v141) = v32 + 1;
  if (v39 < 0)
  {
    v42 = (v40 >> 1) & 7;
    if (((v40 >> 1) & 7) > 3)
    {
      if (((v40 >> 1) & 7) <= 5)
      {
        v44 = v32 + 5;
        if (v42 == 4)
        {
          if (v44 > v28)
          {
            goto LABEL_283;
          }

          LODWORD(v29) = *(v29 + v41);
          HIDWORD(v141) = v32 + 5;
          if (v32 + 5 >= v28)
          {
            goto LABEL_283;
          }

          v43 = v32 + 6;
        }

        else
        {
          if (v44 > v28)
          {
            goto LABEL_283;
          }

          LODWORD(v29) = *(v29 + v41);
          HIDWORD(v141) = v32 + 5;
          if ((v32 + 5) + 2 > v28)
          {
            goto LABEL_283;
          }

          v43 = v32 + 7;
        }

        goto LABEL_86;
      }

      if (v42 != 6)
      {
        if (v32 + 9 > v28)
        {
          goto LABEL_283;
        }

        v29 = *(v29 + v41);
        v43 = v32 + 9;
        goto LABEL_86;
      }

      if (v32 + 5 > v28)
      {
        goto LABEL_283;
      }

      LODWORD(v29) = *(v29 + v41);
      HIDWORD(v141) = v32 + 5;
      v45 = v32 + 8;
      if (v45 > v28)
      {
        goto LABEL_283;
      }
    }

    else
    {
      if (((v40 >> 1) & 7) <= 1)
      {
        if (v42)
        {
          if (v32 + 3 > v28)
          {
            goto LABEL_283;
          }

          LODWORD(v29) = *(v29 + v41);
          v43 = v32 + 3;
        }

        else
        {
          if (v41 >= v28)
          {
            goto LABEL_283;
          }

          LODWORD(v29) = *(v29 + v41);
          v43 = v32 + 2;
        }

LABEL_86:
        HIDWORD(v141) = v43;
        goto LABEL_87;
      }

      if (v42 != 2)
      {
        if (v32 + 5 > v28)
        {
          goto LABEL_283;
        }

        LODWORD(v29) = *(v29 + v41);
        v43 = v32 + 5;
        goto LABEL_86;
      }

      v45 = v32 + 4;
      if (v45 > v28)
      {
        goto LABEL_283;
      }

      LODWORD(v29) = *(v29 + v41) | (*(v29 + v41 + 2) << 16);
    }

    HIDWORD(v141) = v45;
LABEL_87:
    if (v39)
    {
      v46 = -256 << (8 * v42);
    }

    else
    {
      LODWORD(v46) = 0;
    }

    LODWORD(v40) = v29 | v46;
  }

  v7[25] = 4;
  for (v7[26] = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 16, "Vector Storage (int)"); v40; LODWORD(v40) = v40 - 1)
  {
    v47 = HIDWORD(v141);
    if (HIDWORD(v141) >= v141)
    {
      goto LABEL_283;
    }

    v48 = *(*(&v140 + 1) + HIDWORD(v141));
    v49 = *(*(&v140 + 1) + HIDWORD(v141));
    v50 = HIDWORD(v141) + 1;
    ++HIDWORD(v141);
    if (v48 < 0)
    {
      v51 = (v49 >> 1) & 7;
      if (((v49 >> 1) & 7) > 3)
      {
        if (((v49 >> 1) & 7) > 5)
        {
          if (v51 == 6)
          {
            if (v47 + 5 > v141)
            {
              goto LABEL_283;
            }

            LODWORD(v52) = *(*(&v140 + 1) + v50);
            HIDWORD(v141) = v47 + 5;
            v53 = v47 + 8;
            if (v53 > v141)
            {
              goto LABEL_283;
            }
          }

          else
          {
            if (v47 + 9 > v141)
            {
              goto LABEL_283;
            }

            v52 = *(*(&v140 + 1) + v50);
            v53 = v47 + 9;
          }
        }

        else
        {
          v54 = v47 + 5;
          if (v51 == 4)
          {
            if (v54 > v141)
            {
              goto LABEL_283;
            }

            LODWORD(v52) = *(*(&v140 + 1) + v50);
            HIDWORD(v141) = v47 + 5;
            if (v47 + 5 >= v141)
            {
              goto LABEL_283;
            }

            v53 = v47 + 6;
          }

          else
          {
            if (v54 > v141)
            {
              goto LABEL_283;
            }

            LODWORD(v52) = *(*(&v140 + 1) + v50);
            HIDWORD(v141) = v47 + 5;
            if ((v47 + 5) + 2 > v141)
            {
              goto LABEL_283;
            }

            v53 = v47 + 7;
          }
        }
      }

      else if (((v49 >> 1) & 7) > 1)
      {
        if (v51 == 2)
        {
          v53 = v47 + 4;
          if (v53 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v52) = *(*(&v140 + 1) + v50) | (*(*(&v140 + 1) + v50 + 2) << 16);
        }

        else
        {
          if (v47 + 5 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v52) = *(*(&v140 + 1) + v50);
          v53 = v47 + 5;
        }
      }

      else if (v51)
      {
        if (v47 + 3 > v141)
        {
          goto LABEL_283;
        }

        LODWORD(v52) = *(*(&v140 + 1) + v50);
        v53 = v47 + 3;
      }

      else
      {
        if (v50 >= v141)
        {
          goto LABEL_283;
        }

        LODWORD(v52) = *(*(&v140 + 1) + v50);
        v53 = v47 + 2;
      }

      HIDWORD(v141) = v53;
      v55 = -256 << (8 * v51);
      if (v48)
      {
        v56 = v55;
      }

      else
      {
        v56 = 0;
      }

      LODWORD(v49) = v52 | v56;
    }

    v57 = *(v7 + 50);
    v58 = *(v7 + 51);
    if (v58 + 1 <= v57)
    {
      v61 = v7[26];
      v62 = *(v7 + 51);
    }

    else
    {
      if (v57 <= 1)
      {
        v57 = 1;
      }

      v59 = 2 * v57;
      if (v59 <= v58 + 1)
      {
        v60 = v58 + 1;
      }

      else
      {
        v60 = v59;
      }

      v61 = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, 4 * v60, "Vector Storage (int, growth)");
      memcpy(v61, v7[26], 4 * *(v7 + 51));
      off_2819B9B80(GLP_MALLOC_ALLOCATOR, v7[26]);
      *(v7 + 50) = v60;
      v7[26] = v61;
      v62 = *(v7 + 51);
    }

    memmove(&v61[4 * v58 + 4], &v61[4 * v58], 4 * (v62 - v58));
    *(v7[26] + 4 * v58) = v49;
    ++*(v7 + 51);
  }

  v63 = HIDWORD(v141);
  if (HIDWORD(v141) >= v141)
  {
    goto LABEL_283;
  }

  v64 = *(*(&v140 + 1) + HIDWORD(v141));
  v65 = *(*(&v140 + 1) + HIDWORD(v141));
  v66 = HIDWORD(v141) + 1;
  ++HIDWORD(v141);
  if (v64 < 0)
  {
    v67 = (v65 >> 1) & 7;
    if (((v65 >> 1) & 7) > 3)
    {
      if (((v65 >> 1) & 7) > 5)
      {
        if (v67 == 6)
        {
          if (v63 + 5 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v68) = *(*(&v140 + 1) + v66);
          HIDWORD(v141) = v63 + 5;
          v69 = v63 + 8;
          if (v69 > v141)
          {
            goto LABEL_283;
          }
        }

        else
        {
          if (v63 + 9 > v141)
          {
            goto LABEL_283;
          }

          v68 = *(*(&v140 + 1) + v66);
          v69 = v63 + 9;
        }
      }

      else
      {
        v70 = v63 + 5;
        if (v67 == 4)
        {
          if (v70 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v68) = *(*(&v140 + 1) + v66);
          HIDWORD(v141) = v63 + 5;
          if (v63 + 5 >= v141)
          {
            goto LABEL_283;
          }

          v69 = v63 + 6;
        }

        else
        {
          if (v70 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v68) = *(*(&v140 + 1) + v66);
          HIDWORD(v141) = v63 + 5;
          if ((v63 + 5) + 2 > v141)
          {
            goto LABEL_283;
          }

          v69 = v63 + 7;
        }
      }
    }

    else if (((v65 >> 1) & 7) > 1)
    {
      if (v67 == 2)
      {
        v69 = v63 + 4;
        if (v69 > v141)
        {
          goto LABEL_283;
        }

        LODWORD(v68) = *(*(&v140 + 1) + v66) | (*(*(&v140 + 1) + v66 + 2) << 16);
      }

      else
      {
        if (v63 + 5 > v141)
        {
          goto LABEL_283;
        }

        LODWORD(v68) = *(*(&v140 + 1) + v66);
        v69 = v63 + 5;
      }
    }

    else if (v67)
    {
      if (v63 + 3 > v141)
      {
        goto LABEL_283;
      }

      LODWORD(v68) = *(*(&v140 + 1) + v66);
      v69 = v63 + 3;
    }

    else
    {
      if (v66 >= v141)
      {
        goto LABEL_283;
      }

      LODWORD(v68) = *(*(&v140 + 1) + v66);
      v69 = v63 + 2;
    }

    HIDWORD(v141) = v69;
    v71 = -256 << (8 * v67);
    if (v64)
    {
      v72 = v71;
    }

    else
    {
      v72 = 0;
    }

    LODWORD(v65) = v68 | v72;
  }

  v73 = ((16 * v65) | 8);
  v74 = (*(&GLP_MALLOC_ALLOCATOR + 1))(GLP_MALLOC_ALLOCATOR, v73, "context state");
  bzero(v74, v73);
  *v74 = v65;
  if (v65)
  {
    v75 = v65;
    v76 = v74 + 4;
    while (1)
    {
      v77 = HIDWORD(v141);
      v78 = v141;
      if (HIDWORD(v141) >= v141)
      {
        goto LABEL_283;
      }

      v79 = *(&v140 + 1);
      v80 = *(*(&v140 + 1) + HIDWORD(v141));
      v81 = *(*(&v140 + 1) + HIDWORD(v141));
      v82 = HIDWORD(v141) + 1;
      ++HIDWORD(v141);
      if (v80 < 0)
      {
        break;
      }

LABEL_200:
      *(v76 - 2) = v81;
      if (v82 + 8 > v78)
      {
        goto LABEL_283;
      }

      v89 = *(v79 + v82);
      HIDWORD(v141) = v82 + 8;
      *v76 = v89;
      v90 = v76 + 2;
      PPStreamTokenConvertParamBindingsToGeneric(v76, 1);
      v76 = v90;
      if (!--v75)
      {
        goto LABEL_202;
      }
    }

    v83 = (v81 >> 1) & 7;
    if (v83 > 3)
    {
      if (v83 > 5)
      {
        if (v83 == 6)
        {
          if (v77 + 5 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v84) = *(*(&v140 + 1) + v82);
          HIDWORD(v141) = v77 + 5;
          LODWORD(v82) = v77 + 8;
          if (v77 + 8 > v141)
          {
            goto LABEL_283;
          }
        }

        else
        {
          if (v77 + 9 > v141)
          {
            goto LABEL_283;
          }

          v84 = *(*(&v140 + 1) + v82);
          LODWORD(v82) = v77 + 9;
        }
      }

      else
      {
        v85 = v77 + 5;
        if (v83 == 4)
        {
          if (v85 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v84) = *(*(&v140 + 1) + v82);
          HIDWORD(v141) = v77 + 5;
          if (v77 + 5 >= v141)
          {
            goto LABEL_283;
          }

          LODWORD(v82) = v77 + 6;
        }

        else
        {
          if (v85 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v84) = *(*(&v140 + 1) + v82);
          HIDWORD(v141) = v77 + 5;
          if ((v77 + 5) + 2 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v82) = v77 + 7;
        }
      }
    }

    else if (v83 > 1)
    {
      if (v83 == 2)
      {
        v86 = v77 + 4;
        if (v86 > v141)
        {
          goto LABEL_283;
        }

        LODWORD(v84) = *(*(&v140 + 1) + v82) | (*(*(&v140 + 1) + v82 + 2) << 16);
        HIDWORD(v141) = v86;
        LODWORD(v82) = v86;
        goto LABEL_196;
      }

      if (v77 + 5 > v141)
      {
        goto LABEL_283;
      }

      LODWORD(v84) = *(*(&v140 + 1) + v82);
      LODWORD(v82) = v77 + 5;
    }

    else if (v83)
    {
      if (v77 + 3 > v141)
      {
        goto LABEL_283;
      }

      LODWORD(v84) = *(*(&v140 + 1) + v82);
      LODWORD(v82) = v77 + 3;
    }

    else
    {
      if (v82 >= v141)
      {
        goto LABEL_283;
      }

      LODWORD(v84) = *(*(&v140 + 1) + v82);
      LODWORD(v82) = v77 + 2;
    }

    HIDWORD(v141) = v82;
LABEL_196:
    v87 = -256 << (8 * v83);
    if (v80)
    {
      v88 = v87;
    }

    else
    {
      v88 = 0;
    }

    LODWORD(v81) = v84 | v88;
    goto LABEL_200;
  }

LABEL_202:
  v7[27] = v74;
  v7[11] = glpDeserializeUniformBindings(v139);
  v7[12] = glpDeserializeUniformBindings(v139);
  v91 = HIDWORD(v141);
  if (HIDWORD(v141) >= v141)
  {
    goto LABEL_283;
  }

  v92 = *(*(&v140 + 1) + HIDWORD(v141));
  v93 = *(*(&v140 + 1) + HIDWORD(v141));
  v94 = HIDWORD(v141) + 1;
  ++HIDWORD(v141);
  if (v92 < 0)
  {
    v125 = (v93 >> 1) & 7;
    if (((v93 >> 1) & 7) > 3)
    {
      if (((v93 >> 1) & 7) > 5)
      {
        if (v125 == 6)
        {
          if (v91 + 5 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v126) = *(*(&v140 + 1) + v94);
          HIDWORD(v141) = v91 + 5;
          v127 = v91 + 8;
          if (v127 > v141)
          {
            goto LABEL_283;
          }
        }

        else
        {
          if (v91 + 9 > v141)
          {
            goto LABEL_283;
          }

          v126 = *(*(&v140 + 1) + v94);
          v127 = v91 + 9;
        }
      }

      else
      {
        v128 = v91 + 5;
        if (v125 == 4)
        {
          if (v128 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v126) = *(*(&v140 + 1) + v94);
          HIDWORD(v141) = v91 + 5;
          if (v91 + 5 >= v141)
          {
            goto LABEL_283;
          }

          v127 = v91 + 6;
        }

        else
        {
          if (v128 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v126) = *(*(&v140 + 1) + v94);
          HIDWORD(v141) = v91 + 5;
          if ((v91 + 5) + 2 > v141)
          {
            goto LABEL_283;
          }

          v127 = v91 + 7;
        }
      }
    }

    else if (((v93 >> 1) & 7) > 1)
    {
      if (v125 == 2)
      {
        v127 = v91 + 4;
        if (v127 > v141)
        {
          goto LABEL_283;
        }

        LODWORD(v126) = *(*(&v140 + 1) + v94) | (*(*(&v140 + 1) + v94 + 2) << 16);
      }

      else
      {
        if (v91 + 5 > v141)
        {
          goto LABEL_283;
        }

        LODWORD(v126) = *(*(&v140 + 1) + v94);
        v127 = v91 + 5;
      }
    }

    else if (v125)
    {
      if (v91 + 3 > v141)
      {
        goto LABEL_283;
      }

      LODWORD(v126) = *(*(&v140 + 1) + v94);
      v127 = v91 + 3;
    }

    else
    {
      if (v94 >= v141)
      {
        goto LABEL_283;
      }

      LODWORD(v126) = *(*(&v140 + 1) + v94);
      v127 = v91 + 2;
    }

    HIDWORD(v141) = v127;
    v129 = -256 << (8 * v125);
    if (v92)
    {
      v130 = v129;
    }

    else
    {
      v130 = 0;
    }

    LODWORD(v93) = v126 | v130;
    if (v126 | v130)
    {
      goto LABEL_205;
    }
  }

  else if (v93)
  {
LABEL_205:
    v95 = 0;
    v7[40] = glpMakeIntHash(&GLP_MALLOC_ALLOCATOR);
    while (1)
    {
      v96 = HIDWORD(v141);
      if (HIDWORD(v141) >= v141)
      {
        goto LABEL_283;
      }

      v97 = *(*(&v140 + 1) + HIDWORD(v141));
      v98 = *(*(&v140 + 1) + HIDWORD(v141));
      v99 = HIDWORD(v141) + 1;
      ++HIDWORD(v141);
      if (v97 < 0)
      {
        v100 = (v98 >> 1) & 7;
        if (((v98 >> 1) & 7) > 3)
        {
          if (((v98 >> 1) & 7) > 5)
          {
            if (v100 == 6)
            {
              if (v96 + 5 > v141)
              {
                goto LABEL_283;
              }

              LODWORD(v101) = *(*(&v140 + 1) + v99);
              HIDWORD(v141) = v96 + 5;
              v102 = v96 + 8;
              if (v102 > v141)
              {
                goto LABEL_283;
              }
            }

            else
            {
              if (v96 + 9 > v141)
              {
                goto LABEL_283;
              }

              v101 = *(*(&v140 + 1) + v99);
              v102 = v96 + 9;
            }
          }

          else
          {
            v103 = v96 + 5;
            if (v100 == 4)
            {
              if (v103 > v141)
              {
                goto LABEL_283;
              }

              LODWORD(v101) = *(*(&v140 + 1) + v99);
              HIDWORD(v141) = v96 + 5;
              if (v96 + 5 >= v141)
              {
                goto LABEL_283;
              }

              v102 = v96 + 6;
            }

            else
            {
              if (v103 > v141)
              {
                goto LABEL_283;
              }

              LODWORD(v101) = *(*(&v140 + 1) + v99);
              HIDWORD(v141) = v96 + 5;
              if ((v96 + 5) + 2 > v141)
              {
                goto LABEL_283;
              }

              v102 = v96 + 7;
            }
          }
        }

        else if (((v98 >> 1) & 7) > 1)
        {
          if (v100 == 2)
          {
            v102 = v96 + 4;
            if (v102 > v141)
            {
              goto LABEL_283;
            }

            LODWORD(v101) = *(*(&v140 + 1) + v99) | (*(*(&v140 + 1) + v99 + 2) << 16);
          }

          else
          {
            if (v96 + 5 > v141)
            {
              goto LABEL_283;
            }

            LODWORD(v101) = *(*(&v140 + 1) + v99);
            v102 = v96 + 5;
          }
        }

        else if (v100)
        {
          if (v96 + 3 > v141)
          {
            goto LABEL_283;
          }

          LODWORD(v101) = *(*(&v140 + 1) + v99);
          v102 = v96 + 3;
        }

        else
        {
          if (v99 >= v141)
          {
            goto LABEL_283;
          }

          LODWORD(v101) = *(*(&v140 + 1) + v99);
          v102 = v96 + 2;
        }

        HIDWORD(v141) = v102;
        v104 = -256 << (8 * v100);
        if (v97)
        {
          v105 = v104;
        }

        else
        {
          v105 = 0;
        }

        LODWORD(v98) = v101 | v105;
      }

      v106 = malloc_type_malloc(0x18uLL, 0xCA0EF1E7uLL);
      if (!v106)
      {
        goto LABEL_284;
      }

      v107 = v106;
      *v106 = 0;
      v106[1] = 0;
      v106[2] = 0;
      v108 = deserialize_GLPString(v139);
      v110 = v109;
      v111 = v109;
      v112 = malloc_type_malloc(v109, 0xCA0EF1E7uLL);
      if (!v112)
      {
        goto LABEL_284;
      }

      v113 = v112;
      memcpy(v112, v108, v111);
      if (v110)
      {
        v115 = v110 >> 5;
        LODWORD(v116) = v110;
        v117 = ~(v110 >> 5);
        do
        {
          v116 = (32 * v116 + (v116 >> 2) + v113[v110 - 1]) ^ v116;
          v110 += v117;
        }

        while (v110 > v115);
        v118 = v116 << 32;
      }

      else
      {
        v118 = 0;
      }

      *v107 = v113;
      *(v107 + 8) = v118 | v111;
      v119 = HIDWORD(v141);
      v120 = v141;
      if (HIDWORD(v141) + 4 > v141)
      {
        goto LABEL_283;
      }

      v121 = *(&v140 + 1);
      v122 = *(*(&v140 + 1) + HIDWORD(v141));
      HIDWORD(v141) += 4;
      v123 = HIDWORD(v141);
      *(v107 + 16) = v122;
      if (v123 + 4 > v120)
      {
        goto LABEL_283;
      }

      v124 = *(v121 + v123);
      HIDWORD(v141) = v119 + 8;
      *(v107 + 20) = v124;
      glpIntHashPut(v7[40], v98, v107, v114);
      if (++v95 == v93)
      {
        goto LABEL_280;
      }
    }
  }

  v7[40] = 0;
LABEL_280:
  v131 = 232;
  v132 = 13;
  do
  {
    v7[v132] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
    v7[v132 + 5] = glpMakeStringHash(&GLP_MALLOC_ALLOCATOR);
    v133 = (v7 + v131);
    *v133 = 0;
    v133[5] = 0;
    v131 += 4;
    ++v132;
  }

  while (v131 != 252);
  v134 = *a3;
  v135 = a3[2];
  *(v7 + 18) = a3[1];
  *(v7 + 19) = v135;
  *(v7 + 17) = v134;
  glpDestroyDeserialContext(v139);
  glpDestroyPoolAllocator(v138);
  v136 = *MEMORY[0x277D85DE8];
  return v7;
}