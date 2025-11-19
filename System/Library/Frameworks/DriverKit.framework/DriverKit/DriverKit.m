uint64_t OSUnserializeXMLparse(void *a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v79[4] = *MEMORY[0x277D85DE8];
  v5 = v74;
  memset(v74, 0, 512);
  v75[0] = 0;
  v6 = -2;
  while (1)
  {
    if (((0xFEB5FFC3FEuLL >> v3) & 1) == 0)
    {
      v7 = yypact[v3];
      if (v6 != -2)
      {
        goto LABEL_34;
      }

      v73 = 0;
      while (1)
      {
        do
        {
          while (1)
          {
            v8 = *(v1 + 8);
            v6 = *(*v1 + v8);
            v9 = v6 == 32 || v6 == 9;
            if (v9)
            {
              v10 = (*v1 + v8 + 1);
              do
              {
                do
                {
                  *(v1 + 8) = ++v8;
                  v11 = *v10++;
                  v6 = v11;
                }

                while (v11 == 9);
              }

              while (v6 == 32);
              if (!v6)
              {
                goto LABEL_34;
              }
            }

            if (v6 != 10)
            {
              break;
            }

            v18 = *(v1 + 12) + 1;
            *(v1 + 8) = v8 + 1;
            *(v1 + 12) = v18;
          }

          if (!v6)
          {
            goto LABEL_34;
          }

          Tag = getTag(v1, v79, &v73 + 1, aKey, __str);
        }

        while (Tag == 4);
        v13 = Tag;
        if (!Tag)
        {
          v6 = 0x10Bu;
          goto LABEL_34;
        }

        v70 = newObject(v1);
        *(v70 + 20) = -1;
        v69 = HIDWORD(v73);
        if (SHIDWORD(v73) >= 1)
        {
          break;
        }

LABEL_25:
        if (LOBYTE(v79[0]) != 112)
        {
          v6 = 267;
          if (LOBYTE(v79[0]) <= 0x68u)
          {
            if (LOBYTE(v79[0]) == 97)
            {
              v58 = LODWORD(v79[0]) == 1634890337 && WORD2(v79[0]) == 121;
              v4 = v70;
              if (v58)
              {
                if (v13 == 3)
                {
                  v70[2] = 0;
                  v6 = 0x102u;
                }

                else if (v13 == 1)
                {
                  v6 = 40;
                }

                else
                {
                  v6 = 41;
                }
              }

              goto LABEL_34;
            }

            v4 = v70;
            if (LOBYTE(v79[0]) == 100)
            {
              if (!(LODWORD(v79[0]) ^ 0x74636964 | BYTE4(v79[0])))
              {
                if (v13 == 3)
                {
                  v70[2] = 0;
                  v6 = 0x105u;
                }

                else if (v13 == 1)
                {
                  v6 = 123;
                }

                else
                {
                  v6 = 125;
                }

                goto LABEL_34;
              }

              if (LODWORD(v79[0]) ^ 0x61746164 | BYTE4(v79[0]))
              {
                goto LABEL_34;
              }

              v72 = 0;
              if (v13 == 3)
              {
                v70[6] = 0;
                *(v70 + 10) = 0;
                v6 = 0x104u;
                goto LABEL_34;
              }

              if (v69 < 1)
              {
LABEL_198:
                CFEncodedData = getCFEncodedData(v1, &v72);
              }

              else
              {
                v61 = __str;
                v62 = aKey;
                while (strcmp(v62, "format") || strcmp(v61, "hex"))
                {
                  v61 += 32;
                  v62 += 32;
                  if (!--v69)
                  {
                    goto LABEL_198;
                  }
                }

                CFEncodedData = getHexData(v1, &v72);
              }

              v70[6] = CFEncodedData;
              *(v70 + 10) = v72;
              if (getTag(v1, v79, &v73 + 1, aKey, __str) == 2)
              {
                if (LODWORD(v79[0]) ^ 0x61746164 | BYTE4(v79[0]))
                {
                  v6 = 267;
                }

                else
                {
                  v6 = 260;
                }

                goto LABEL_34;
              }

              goto LABEL_203;
            }

            if (LOBYTE(v79[0]) != 102)
            {
              goto LABEL_34;
            }

            v54 = LODWORD(v79[0]) == 1936482662 && WORD2(v79[0]) == 101;
            v55 = !v54;
            if (v13 != 3 || v55)
            {
              goto LABEL_34;
            }

            v70[9] = 0;
          }

          else
          {
            if (LOBYTE(v79[0]) <= 0x72u)
            {
              v4 = v70;
              if (LOBYTE(v79[0]) != 105)
              {
                if (LOBYTE(v79[0]) != 107)
                {
                  goto LABEL_34;
                }

                if (v13 == 3)
                {
                  goto LABEL_34;
                }

                if (LODWORD(v79[0]) != 7955819)
                {
                  goto LABEL_34;
                }

                String = getString(v1, &v73);
                v70[7] = String;
                if (!String)
                {
                  goto LABEL_34;
                }

                *(v70 + 16) = v73;
                if (getTag(v1, v79, &v73 + 1, aKey, __str) != 2)
                {
                  goto LABEL_34;
                }

                v52 = LODWORD(v79[0]) == 7955819;
                v53 = 263;
                goto LABEL_179;
              }

              if (v79[0] != 0x72656765746E69)
              {
                goto LABEL_34;
              }

              *(v70 + 10) = 64;
              if (v69 >= 1)
              {
                v68 = __str;
                v56 = aKey;
                do
                {
                  if (!strcmp(v56, "size"))
                  {
                    *(v70 + 10) = strtoul(v68, 0, 0);
                  }

                  v56 += 32;
                  v9 = v69 == 1;
                  v68 += 32;
                  --v69;
                }

                while (!v9);
              }

              if (v13 == 3)
              {
                v70[9] = 0;
                v6 = 0x108u;
                goto LABEL_34;
              }

              v70[9] = getNumber(v1);
              if (getTag(v1, v79, &v73 + 1, aKey, __str) == 2)
              {
                v52 = v79[0] == 0x72656765746E69;
                v53 = 264;
LABEL_179:
                if (v52)
                {
                  v6 = v53;
                }

                else
                {
                  v6 = 267;
                }

                goto LABEL_34;
              }

LABEL_203:
              v6 = 267;
              goto LABEL_34;
            }

            v4 = v70;
            if (LOBYTE(v79[0]) == 115)
            {
              if (LODWORD(v79[0]) == 1769108595 && *(v79 + 3) == 6778473)
              {
                if (v13 == 3)
                {
                  v59 = malloc_type_calloc(1uLL, 1uLL, 0xB8616DuLL);
                  v70[7] = v59;
                  *(v70 + 16) = 1;
                  *v59 = 0;
                  v6 = 0x10Au;
                }

                else
                {
                  v60 = getString(v1, &v73);
                  v70[7] = v60;
                  if (v60)
                  {
                    *(v70 + 16) = v73;
                    if (getTag(v1, v79, &v73 + 1, aKey, __str) == 2)
                    {
                      if (LODWORD(v79[0]) ^ 0x69727473 | *(v79 + 3) ^ 0x676E69)
                      {
                        v6 = 267;
                      }

                      else
                      {
                        v6 = 266;
                      }
                    }
                  }
                }
              }

              else if (LODWORD(v79[0]) == 7628147)
              {
                if (v13 == 1)
                {
                  v6 = 0x5Bu;
                }

                else if (v13 == 3)
                {
                  v70[2] = 0;
                  v6 = 0x109u;
                }

                else
                {
                  v6 = 0x5Du;
                }
              }

              goto LABEL_34;
            }

            if (LOBYTE(v79[0]) != 116 || v13 != 3 || LODWORD(v79[0]) ^ 0x65757274 | BYTE4(v79[0]))
            {
              goto LABEL_34;
            }

            v70[9] = 1;
          }

          v6 = 0x103u;
          goto LABEL_34;
        }

        if (LODWORD(v79[0]) != 1936288880 || WORD2(v79[0]) != 116)
        {
          v6 = 267;
          v4 = v70;
          goto LABEL_34;
        }

        v4 = v70;
        *v70 = *(v1 + 24);
        *(v1 + 24) = v70;
      }

      v14 = __str;
      v15 = HIDWORD(v73);
      v16 = v78;
      while (1)
      {
        if (*(v16 - 2) != 73 || *(v16 - 1) != 68)
        {
          goto LABEL_24;
        }

        if (*v16)
        {
          break;
        }

        *(v70 + 20) = strtol(v14, 0, 0);
LABEL_24:
        v14 += 32;
        v16 += 32;
        if (!--v15)
        {
          goto LABEL_25;
        }
      }

      if (*v16 == 82)
      {
        if (v16[1] == 69 && v16[2] == 70)
        {
          v6 = 267;
          if (v13 == 3 && !v16[3])
          {
            v4 = v70;
            *(v70 + 20) = strtol(v14, 0, 0);
            v6 = 0x106u;
            goto LABEL_34;
          }
        }

        else
        {
          v6 = 267;
        }

        v4 = v70;
      }

      else
      {
        v6 = 267;
        v4 = v70;
      }

LABEL_34:
      if (v6 < 1)
      {
        v19 = 0;
        v6 = 0;
      }

      else
      {
        v19 = v6 > 0x10B ? 2 : yytranslate[v6];
      }

      v20 = v19 + v7;
      if ((v19 + v7) <= 0x6C && v19 == yycheck[v20])
      {
        break;
      }
    }

    if ((0x14A003C00uLL >> v3))
    {
      goto LABEL_207;
    }

    v21 = yydefact[v3];
    v22 = yyr2[yydefact[v3]];
    v23 = v5[1 - v22];
    switch(v21)
    {
      case 2u:
        v67 = "unexpected end of buffer";
        goto LABEL_209;
      case 3u:
        result = 0;
        *(v1 + 48) = *(*v5 + 24);
        *(*v5 + 24) = 0;
        v66 = *v5;
        *v66 = *(v1 + 24);
        *(v1 + 24) = v66;
        goto LABEL_210;
      case 4u:
        goto LABEL_207;
      case 5u:
        v23 = *v5;
        v26 = *(*v5 + 16);
        if (v26)
        {
          v27 = 0;
          v28 = 0;
          do
          {
            v29 = v26;
            ++v27;
            v26 = *v26;
            *v29 = v28;
            v28 = v29;
          }

          while (v26);
        }

        else
        {
          v29 = 0;
          v27 = 0;
        }

        v71 = v4;
        *(v23 + 16) = v29;
        v42 = OSDictionary::withCapacity(v27);
        if ((*(v23 + 80) & 0x80000000) == 0)
        {
          snprintf(aKey, 0x10uLL, "%u", *(v23 + 80));
          OSDictionary::setObject(*(v1 + 32), aKey, v42);
        }

        v43 = *(v23 + 16);
        if (v43)
        {
          do
          {
            OSDictionary::setObject(v42, v43[4], v43[3]);
            (*(*v43[4] + 16))(v43[4]);
            (*(*v43[3] + 16))(v43[3]);
            v43[3] = 0;
            v43[4] = 0;
            v44 = *v43;
            *v43 = *(v1 + 24);
            *(v1 + 24) = v43;
            v43 = v44;
          }

          while (v44);
        }

        *(v23 + 24) = v42;
        if (!v42)
        {
          v67 = "buildDictionary";
          goto LABEL_209;
        }

        v45 = *(v1 + 56);
        *(v1 + 56) = v45 + 1;
        v34 = v45 < 0x1FFFF;
        v4 = v71;
        goto LABEL_100;
      case 6u:
        v23 = *v5;
        buildArray(v1, *v5);
        if (*(v23 + 24))
        {
          goto LABEL_72;
        }

        v67 = "buildArray";
        goto LABEL_209;
      case 7u:
        v23 = *v5;
        buildArray(v1, *v5);
        if (*(v23 + 24))
        {
          goto LABEL_72;
        }

        v67 = "buildSet";
        goto LABEL_209;
      case 8u:
        v23 = *v5;
        v25 = OSString::withCString(*(*v5 + 56));
        if ((*(v23 + 80) & 0x80000000) == 0)
        {
          snprintf(aKey, 0x10uLL, "%u", *(v23 + 80));
          OSDictionary::setObject(*(v1 + 32), aKey, v25);
        }

        free(*(v23 + 56));
        *(v23 + 56) = 0;
        *(v23 + 24) = v25;
        if (v25)
        {
          goto LABEL_99;
        }

        v67 = "buildString";
        goto LABEL_209;
      case 9u:
        v23 = *v5;
        v36 = *(*v5 + 40);
        if (v36)
        {
          v37 = OSData::withBytes(*(v23 + 48), v36);
        }

        else
        {
          v37 = OSData::withCapacity(0);
        }

        v46 = v37;
        if ((*(v23 + 80) & 0x80000000) == 0)
        {
          snprintf(aKey, 0x10uLL, "%u", *(v23 + 80));
          OSDictionary::setObject(*(v1 + 32), aKey, v46);
        }

        if (*(v23 + 40))
        {
          free(*(v23 + 48));
        }

        *(v23 + 48) = 0;
        *(v23 + 24) = v46;
        if (v46)
        {
          goto LABEL_99;
        }

        v67 = "buildData";
        goto LABEL_209;
      case 0xAu:
        v23 = *v5;
        v35 = OSNumber::withNumber(*(*v5 + 72), *(*v5 + 40));
        if ((*(v23 + 80) & 0x80000000) == 0)
        {
          snprintf(aKey, 0x10uLL, "%u", *(v23 + 80));
          OSDictionary::setObject(*(v1 + 32), aKey, v35);
        }

        *(v23 + 24) = v35;
        if (v35)
        {
          goto LABEL_99;
        }

        v67 = "buildNumber";
        goto LABEL_209;
      case 0xBu:
        v23 = *v5;
        v31 = &kOSBooleanFalse;
        if (*(*v5 + 72))
        {
          v31 = &kOSBooleanTrue;
        }

        v32 = *v31;
        *(v23 + 24) = *v31;
        (v32->retain)(v32);
        if (!*(v23 + 24))
        {
          v67 = "buildBoolean";
LABEL_209:
          OSUnserializeerror(v1, v67);
          result = 1;
          goto LABEL_210;
        }

LABEL_72:
        v33 = *(v1 + 56);
        *(v1 + 56) = v33 + 1;
        v34 = v33 < 0x1FFFF;
LABEL_100:
        if (!v34)
        {
          v67 = "maximum object count";
          goto LABEL_209;
        }

LABEL_102:
        v48 = &v5[-v22];
        v2 -= 2 * v22;
        v48[1] = v23;
        v5 = v48 + 1;
        v49 = yyr1[v21] - 19;
        v50 = v75[v2 / 2] + yypgoto[v49];
        if (v50 <= 0x6C && v75[v2 / 2] == yycheck[v50])
        {
          v3 = yytable[v50];
        }

        else
        {
          v3 = yydefgoto[v49];
        }

LABEL_106:
        v75[v2 / 2 + 1] = v3;
        v34 = v2 <= 395;
        v2 += 2;
        if (!v34)
        {
          OSUnserializeerror(v1, "memory exhausted");
          result = 2;
          goto LABEL_210;
        }

        break;
      case 0xCu:
        snprintf(aKey, 0x10uLL, "%u", *(*v5 + 80));
        Object = OSDictionary::getObject(*(v1 + 32), aKey);
        if (!Object)
        {
          v67 = "forward reference detected";
          goto LABEL_209;
        }

        v39 = Object;
        v23 = newObject(v1);
        *(v23 + 24) = v39;
        ++*(v1 + 60);
        (v39->retain)(v39);
        if (*(v1 + 60) >= 0x10000)
        {
          v67 = "maximum object reference count";
          goto LABEL_209;
        }

        v40 = *v5;
        *v40 = *(v1 + 24);
        *(v1 + 24) = v40;
LABEL_99:
        v47 = *(v1 + 56);
        *(v1 + 56) = v47 + 1;
        v34 = v47 < 0x1FFFF;
        goto LABEL_100;
      case 0xDu:
      case 0x14u:
      case 0x17u:
        v23 = *(v5 - 1);
        *(v23 + 16) = 0;
        goto LABEL_102;
      case 0xEu:
      case 0x15u:
      case 0x18u:
        v23 = *(v5 - 2);
        *(v23 + 16) = *(v5 - 1);
        goto LABEL_102;
      case 0x11u:
        v24 = *(v5 - 1);
        v23 = *v5;
        **v5 = v24;
        if (!v24)
        {
          goto LABEL_102;
        }

        while (v24[4] != *(v23 + 32))
        {
          v24 = *v24;
          if (!v24)
          {
            goto LABEL_102;
          }
        }

        v67 = "duplicate dictionary key";
        goto LABEL_209;
      case 0x12u:
        v23 = *(v5 - 1);
        *(v23 + 32) = *(v23 + 24);
        *(v23 + 24) = *(*v5 + 24);
        *v23 = 0;
        *(*v5 + 24) = 0;
        v30 = *v5;
        *v30 = *(v1 + 24);
        *(v1 + 24) = v30;
        goto LABEL_102;
      case 0x13u:
        v23 = *v5;
        v41 = OSString::withCString(*(*v5 + 56));
        if ((*(v23 + 80) & 0x80000000) == 0)
        {
          snprintf(aKey, 0x10uLL, "%u", *(v23 + 80));
          OSDictionary::setObject(*(v1 + 32), aKey, v41);
        }

        free(*(v23 + 56));
        *(v23 + 56) = 0;
        *(v23 + 24) = v41;
        goto LABEL_102;
      case 0x1Au:
        v23 = *v5;
        **v5 = 0;
        goto LABEL_102;
      case 0x1Bu:
        v23 = *v5;
        **v5 = *(v5 - 1);
        goto LABEL_102;
      default:
        goto LABEL_102;
    }
  }

  v3 = yytable[v20];
  if (!yytable[v20])
  {
LABEL_207:
    v67 = "syntax error";
    goto LABEL_209;
  }

  if (v20 != 10)
  {
    if (v6)
    {
      v6 = -2;
    }

    else
    {
      v6 = 0;
    }

    v5[1] = v4;
    ++v5;
    goto LABEL_106;
  }

  result = 0;
LABEL_210:
  v65 = *MEMORY[0x277D85DE8];
  return result;
}

OSStringPtr OSUnserializeerror(OSStringPtr result, const char *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (result->ivars)
  {
    v2 = result;
    snprintf(__str, 0x80uLL, "OSUnserializeXML: %s near line %d\n", a2, result->reserved);
    result = OSString::withCString(__str);
    *v2->ivars = result;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t buildArray(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v4;
      ++v5;
      v4 = *v4;
      *v7 = v6;
      v6 = v7;
    }

    while (v4);
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  *(a2 + 16) = v7;
  v8 = OSArray::withCapacity(v5);
  if ((*(a2 + 80) & 0x80000000) == 0)
  {
    snprintf(__str, 0x10uLL, "%u", *(a2 + 80));
    OSDictionary::setObject(*(a1 + 32), __str, v8);
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    do
    {
      OSArray::setObject(v8, v9[3]);
      (*(*v9[3] + 16))(v9[3]);
      v9[3] = 0;
      v10 = *v9;
      *v9 = *(a1 + 24);
      *(a1 + 24) = v9;
      v9 = v10;
    }

    while (v10);
  }

  *(a2 + 24) = v8;
  v11 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t OSUnserializeXML(const char *a1, OSString **a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F0040FF80D6CBuLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2)
  {
    *a2 = 0;
  }

  *v4 = a1;
  v4[1] = 0x100000000;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = OSDictionary::withCapacity(0x80u);
  v5[5] = a2;
  v5[6] = 0;
  v5[7] = 0;
  OSUnserializeXMLparse(v5);
  v6 = v5[6];
  v7 = v5[2];
  if (v7)
  {
    do
    {
      v8 = v7[3];
      if (v8)
      {
        (*(*v8 + 16))(v8);
      }

      v9 = v7[6];
      if (v9)
      {
        free(v9);
      }

      v10 = v7[4];
      if (v10)
      {
        (*(*v10 + 16))(v10);
      }

      v11 = v7[7];
      if (v11)
      {
        free(v11);
      }

      v12 = v7[1];
      free(v7);
      v7 = v12;
    }

    while (v12);
  }

  (*(*v5[4] + 16))(v5[4]);
  free(v5);
  return v6;
}

uint64_t OSUnserializeXML(const char *a1, uint64_t a2, OSString **a3)
{
  if (a1 && !a1[a2 - 1])
  {
    return OSUnserializeXML(a1, a3);
  }

  else
  {
    return 0;
  }
}

void IOLogBuffer(const char *title, const void *buffer, size_t size)
{
  v15 = *MEMORY[0x277D85DE8];
  IOLog("%s(0x%lx):\n", title, size);
  IOLog("              0     1     2     3     4     5     6     7     8     9     A     B     C     D     E     F\n");
  if (size >= 0x10000)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = size;
  }

  v13[16] = 0;
  if (size)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(buffer + v7);
      snprintf(&v14[6 * (v7 & 0xF)], 7uLL, "0x%02x, ", *(buffer + v7));
      if (v8 <= 32)
      {
        v9 = 32;
      }

      else
      {
        v9 = v8;
      }

      v13[v7 & 0xF] = v9;
      v10 = v7 + 1;
      v11 = (v7 + 1) & 0xF;
      if (v5 - 1 == v7 || !v11)
      {
        if (v11)
        {
          v13[v11] = 0;
        }

        IOLog("/* %04lx: */ %-96s /* |%-16s| */\n", v6, v14, v13);
        v6 += 16;
      }

      ++v7;
    }

    while (v5 != v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

int IOLogv(const char *format, va_list ap)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = vsnprintf(__str, 0x400uLL, format, ap);
  if (qword_27DEF6860 != -1)
  {
    IOLogv_cold_1();
  }

  v3 = _MergedGlobals;
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v4)
    {
      v9 = 136446210;
      v10 = __str;
      v5 = MEMORY[0x277D86220];
      v6 = "%{public}s";
LABEL_8:
      _os_log_impl(&dword_2381D4000, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, 0xCu);
    }
  }

  else if (v4)
  {
    v9 = 136315138;
    v10 = __str;
    v5 = MEMORY[0x277D86220];
    v6 = "%s";
    goto LABEL_8;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void *__cdecl IOMalloc(void *length)
{
  if (length)
  {
    return malloc_type_calloc(1uLL, length, 0xB8616DuLL);
  }

  return length;
}

uint64_t IOLibInit()
{
  v1 = 1024;
  if (sysctlbyname("kern.bootargs", &gBootArgs, &v1, 0, 0) < 0)
  {
    gBootArgs = 0;
  }

  PE_parse_boot_argn_internal("dk", &gIODKDebug, 8, 0);
  IOLog("Boot args: %s\n", &gBootArgs);
  return IOLog("debug=0x%qx\n", gIODKDebug);
}

uint64_t PE_parse_boot_argn_internal(const char *__s2, unsigned __int8 *a2, int a3, int a4)
{
  v4 = 0;
  if (a3 == -1)
  {
    return v4 & 1;
  }

  v5 = gBootArgs;
  if (!gBootArgs)
  {
    return v4 & 1;
  }

  v9 = &gBootArgs;
  while (v5 == 9 || v5 == 32)
  {
    v10 = *++v9;
    v5 = v10;
  }

  v4 = 0;
  v52 = a3 - 1;
  while (2)
  {
    if (v5 == 45)
    {
      v11 = 1;
    }

    else
    {
      if (!v5)
      {
        return v4 & 1;
      }

      v11 = 0;
    }

    v12 = 0;
    while (v5 > 31)
    {
      if (v5 == 32)
      {
        goto LABEL_20;
      }

      if (v5 == 61)
      {
        goto LABEL_21;
      }

LABEL_19:
      v5 = v9[++v12];
    }

    if (v5 && v5 != 9)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (!v11)
    {
      goto LABEL_105;
    }

LABEL_21:
    if (strncmp(v9, __s2, v12) || strlen(__s2) != v12)
    {
      goto LABEL_105;
    }

    if (v11)
    {
      if (a4)
      {
        return v4 & 1;
      }

      if (a3 >= 1)
      {
        v4 = 1;
        argnumcpy(1, a2, a3);
        return v4 & 1;
      }

LABEL_129:
      v4 |= a3 == 0;
      return v4 & 1;
    }

    v13 = &v9[v12 + 1];
    for (i = v5; i == 9 || i == 32; i = v15)
    {
      v15 = *v13++;
    }

    if (i)
    {
      v16 = i == 61;
      if (v5 != 61 && i == 61)
      {
        v9 = v13;
        goto LABEL_105;
      }
    }

    else
    {
      v16 = 0;
    }

    if (*__s2 != 95)
    {
      if (v16 & a4)
      {
        goto LABEL_32;
      }

      if (v16)
      {
        v23 = *v13;
        if (v23 == 45)
        {
          v24 = v13 + 1;
        }

        else
        {
          v24 = v13;
        }

        if (v23 == 45)
        {
          v25 = -1;
        }

        else
        {
          v25 = 1;
        }

        v26 = (v24 + 1);
        v27 = *v24 - 48;
        if (*v24 == 48)
        {
          v30 = *v26;
          if (v30 <= 0x37)
          {
            if (((1 << v30) & 0xFF000000000000) != 0)
            {
              v28 = 0;
              v27 = v30 - 48;
              v26 = (v24 + 2);
              v31 = 8;
              goto LABEL_62;
            }

            if (((1 << v30) & 0x100000201) != 0)
            {
              v28 = 0;
              v27 = 0;
              goto LABEL_61;
            }
          }

          if (v30 == 98)
          {
            v28 = 0;
            v27 = 0;
            v26 = (v24 + 2);
            v31 = 2;
          }

          else
          {
            if (v30 != 120)
            {
              goto LABEL_32;
            }

            v27 = 0;
            v26 = (v24 + 2);
            v28 = 1;
            v31 = 16;
          }
        }

        else
        {
          if (v27 > 9)
          {
            goto LABEL_32;
          }

          v28 = 0;
LABEL_61:
          v31 = 10;
        }

LABEL_62:
        v32 = v26 + 1;
        while (2)
        {
          v33 = *(v32 - 1);
          if (v33 <= 0x20 && ((1 << v33) & 0x100000201) != 0)
          {
            goto LABEL_100;
          }

          if (v31 + 47 >= v33)
          {
            v35 = (*(v32 - 1) > 0x2Fu) & ~v28;
          }

          else
          {
            v35 = 0;
          }

          v36 = v33 - 48;
          if ((v33 - 48) < 0xAu)
          {
            v37 = v28;
          }

          else
          {
            v37 = 0;
          }

          if (v35 & 1) != 0 || (v37)
          {
LABEL_85:
            if (v31 <= v36)
            {
              goto LABEL_32;
            }

            ++v32;
            v27 = v36 + v27 * v31;
            continue;
          }

          break;
        }

        v38 = v28 ^ 1;
        if ((v33 - 97) > 5u)
        {
          v39 = 1;
        }

        else
        {
          v39 = v28 ^ 1;
        }

        if ((v39 & 1) == 0)
        {
          v36 = v33 - 87;
          goto LABEL_85;
        }

        if ((v33 - 65) > 5u)
        {
          v38 = 1;
        }

        if ((v38 & 1) == 0)
        {
          v36 = v33 - 55;
          goto LABEL_85;
        }

        v40 = v33 & 0xFFFFFFDF;
        if ((v33 & 0xFFFFFFDF) == 0x47)
        {
          v41 = 30;
        }

        else if (v40 == 75)
        {
          v41 = 10;
        }

        else
        {
          if (v40 != 77)
          {
            goto LABEL_32;
          }

          v41 = 20;
        }

        v42 = *v32;
        if (v42 <= 0x20 && ((1 << v42) & 0x100000201) != 0)
        {
          v25 <<= v41;
LABEL_100:
          v29 = v27 * v25;
          goto LABEL_101;
        }

LABEL_32:
        if (a3 >= 1)
        {
          v17 = a2;
          if (v52)
          {
            v18 = v52;
            v17 = a2;
            do
            {
              v20 = *v13++;
              v19 = v20;
              v21 = (1 << v20) & 0x100000201;
              if (v20 <= 0x20 && v21 != 0)
              {
                break;
              }

              *v17++ = v19;
              --v18;
            }

            while (v18);
          }

          *v17 = 0;
          v4 = 1;
LABEL_105:
          while (1)
          {
            v5 = *v9;
            if (v5 <= 0x20 && ((1 << v5) & 0x100000201) != 0)
            {
              break;
            }

            ++v9;
          }

          while (v5 == 32 || v5 == 9)
          {
            v44 = *++v9;
            v5 = v44;
          }

          continue;
        }
      }

      else
      {
        v29 = 1;
LABEL_101:
        if (a3 >= 1)
        {
          argnumcpy(v29, a2, a3);
          v4 = 1;
          goto LABEL_105;
        }
      }

      v4 |= a3 == 0;
      goto LABEL_105;
    }

    break;
  }

  if (a3 < 1)
  {
    goto LABEL_129;
  }

  if (a3 <= 0x11)
  {
    v45 = 17;
  }

  else
  {
    v45 = a3;
  }

  v46 = v45 - 1;
  do
  {
    v48 = *v13++;
    v47 = v48;
    v49 = (1 << v48) & 0x100000201;
    if (v48 <= 0x20 && v49 != 0)
    {
      break;
    }

    *a2++ = v47;
    --v46;
  }

  while (v46);
  *a2 = 0;
  v4 = 1;
  return v4 & 1;
}

void OSReportWithBacktrace(const char *str, ...)
{
  va_start(va, str);
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v6 = 0;
  pthread_threadid_np(0, &v6);
  v8 = 32;
  if (sysctlbyname("kern.backtrace.user", v10, &v8, 0, 0))
  {
    v8 = 0;
  }

  else if (v8 >= 0x21)
  {
    v8 = 32;
  }

  va_copy(v9, va);
  vsnprintf(__str, 0x80uLL, str, va);
  IOLog("%sbacktrace:\n", __str);
  if (v8 >= 3)
  {
    for (i = 2; i < v8; ++i)
    {
      v3 = dladdr(v10[i], &v7);
      dli_sname = v7.dli_sname;
      if (!v7.dli_sname)
      {
        dli_sname = v7.dli_fname;
      }

      if (!v3)
      {
        dli_sname = 0;
      }

      if (!dli_sname)
      {
        dli_sname = "???";
      }

      IOLog("[%#qx] 0x%016qx: %s\n", v6, v10[i], dli_sname);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t nanoseconds_to_absolutetime(unint64_t a1, unint64_t *a2)
{
  if (!a2)
  {
    nanoseconds_to_absolutetime_cold_2();
  }

  result = mach_timebase_info(&info);
  if (result)
  {
    nanoseconds_to_absolutetime_cold_1();
  }

  if (0xFFFFFFFFFFFFFFFFLL / info.denom <= a1)
  {
    v6 = a1 / info.numer;
    if (is_mul_ok(v6, info.denom))
    {
      v5 = v6 * info.denom;
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = info.denom * a1 / info.numer;
  }

  *a2 = v5;
  return result;
}

uint64_t absolutetime_to_nanoseconds(unint64_t a1, unint64_t *a2)
{
  if (!a2)
  {
    absolutetime_to_nanoseconds_cold_2();
  }

  result = mach_timebase_info(&info);
  if (result)
  {
    absolutetime_to_nanoseconds_cold_1();
  }

  if (0xFFFFFFFFFFFFFFFFLL / info.numer <= a1)
  {
    v6 = a1 / info.denom;
    if (is_mul_ok(v6, info.numer))
    {
      v5 = v6 * info.numer;
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = info.numer * a1 / info.denom;
  }

  *a2 = v5;
  return result;
}

uint64_t clock_get_calendar_nanotime(_DWORD *a1, _DWORD *a2)
{
  result = clock_gettime(_CLOCK_REALTIME, &v6);
  if (result)
  {
    clock_get_calendar_nanotime_cold_1();
  }

  tv_nsec = v6.tv_nsec;
  *a1 = v6.tv_sec;
  *a2 = tv_nsec;
  return result;
}

uint64_t clock_get_calendar_microtime(_DWORD *a1, _DWORD *a2)
{
  result = clock_gettime(_CLOCK_REALTIME, &v6);
  if (result)
  {
    clock_get_calendar_microtime_cold_1();
  }

  tv_nsec = v6.tv_nsec;
  *a1 = v6.tv_sec;
  *a2 = tv_nsec / 0x3E8;
  return result;
}

uint64_t clock_get_system_nanotime(_DWORD *a1, _DWORD *a2)
{
  result = clock_gettime(_CLOCK_MONOTONIC, &v6);
  if (result)
  {
    clock_get_system_nanotime_cold_1();
  }

  tv_nsec = v6.tv_nsec;
  *a1 = v6.tv_sec;
  *a2 = tv_nsec;
  return result;
}

uint64_t clock_interval_to_deadline(unsigned int a1, unsigned int a2, uint64_t *a3)
{
  v6 = 0;
  nanoseconds_to_absolutetime(a2 * a1, &v6);
  result = mach_absolute_time();
  v5 = result + v6;
  if (__CFADD__(result, v6))
  {
    v5 = -1;
  }

  *a3 = v5;
  return result;
}

unint64_t continuoustime_to_absolutetime(unint64_t a1)
{
  if (a1 >= MEMORY[0xFFFFFC098])
  {
    return a1 - MEMORY[0xFFFFFC098];
  }

  else
  {
    return 0;
  }
}

uint32_t PE_i_can_has_debugger(uint32_t *a1)
{
  v1 = MEMORY[0xFFFFF4084];
  if (a1 && MEMORY[0xFFFFF4084])
  {
    PE_parse_boot_argn_internal("debug", a1, 4, 0);
  }

  return v1 != 0;
}

uint64_t getTag(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + *(a1 + 8));
  *a3 = 0;
  if (v6 != 60)
  {
    return 0;
  }

  v7 = *(a1 + 8);
  *(a1 + 8) = v7 + 1;
  LODWORD(v8) = *(v5 + v7 + 1);
  switch(v8)
  {
    case '!':
      LODWORD(v13) = v7 + 2;
      *(a1 + 8) = v7 + 2;
      v14 = *(v5 + v7 + 2);
      if (v14 == 45)
      {
        LODWORD(v13) = v7 + 3;
        *(a1 + 8) = v7 + 3;
        v14 = *(v5 + v7 + 3);
        v15 = v14 == 45;
        v16 = v14 == 0;
        if (!*(v5 + v7 + 3))
        {
          v14 = 0;
        }

        if (v16)
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v20 = (v14 - 65) < 0x1A || v15;
      v21 = (v14 - 123) < 0xFFFFFFE6;
      v22 = v14 == 0;
      if (!v20)
      {
        v22 = v21;
      }

      if (v22)
      {
        return 0;
      }

      while (1)
      {
        do
        {
          while (1)
          {
            while (1)
            {
              v23 = v13;
              v13 = v13 + 1;
              *(a1 + 8) = v13;
              v11 = *(v5 + v13);
              if (v11 != 10)
              {
                break;
              }

              ++*(a1 + 12);
              if (!v15)
              {
                LODWORD(v11) = 10;
                goto LABEL_47;
              }
            }

            if (!*(v5 + v13))
            {
              return v11;
            }

            if (v15)
            {
              break;
            }

LABEL_46:
            if (v11 == 62)
            {
              v47 = v13 + 1;
LABEL_86:
              v11 = 4;
              goto LABEL_87;
            }

LABEL_47:
            if (v11)
            {
              v24 = v15;
            }

            else
            {
              v24 = 1;
            }

            if (v24)
            {
              return 0;
            }
          }
        }

        while (v11 != 45);
        v13 = v23 + 2;
        *(a1 + 8) = v13;
        v11 = *(v5 + v13);
        if (v11 == 45)
        {
          LODWORD(v13) = v23 + 3;
          *(a1 + 8) = v23 + 3;
          LODWORD(v11) = *(v5 + v23 + 3);
          goto LABEL_46;
        }

        if (!*(v5 + v13))
        {
          return v11;
        }
      }

    case '/':
      *(a1 + 8) = v7 + 2;
      LOBYTE(v8) = *(v5 + v7 + 2);
      v12 = 2;
      break;
    case '?':
      LODWORD(v9) = v7 + 1;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v10 = v9;
            v9 = v9 + 1;
            *(a1 + 8) = v9;
            v11 = *(v5 + v9);
            if (v11 != 10)
            {
              break;
            }

            ++*(a1 + 12);
          }

          if (v11 == 63)
          {
            break;
          }

          if (!*(v5 + v9))
          {
            return v11;
          }
        }

        v9 = v10 + 2;
        *(a1 + 8) = v9;
        if (!*(v5 + v9))
        {
          return 4;
        }

        if (*(v5 + v9) == 62)
        {
          v47 = v10 + 3;
          goto LABEL_86;
        }
      }

    default:
      v12 = 1;
      break;
  }

  if (((v8 & 0xDF) - 65) > 0x19u)
  {
    return 0;
  }

  v17 = 0;
  while (((v8 & 0xDF) - 65) < 0x1Au || v8 == 45 || (v8 - 48) <= 9u)
  {
    *(a2 + v17) = v8;
    v18 = v17 + 1;
    v19 = *a1;
    v8 = *(a1 + 8) + 1;
    *(a1 + 8) = v8;
    LOBYTE(v8) = *(v19 + v8);
    v17 = v18;
    if (v18 == 31)
    {
      return 0;
    }
  }

  *(a2 + v17) = 0;
  do
  {
    if (v8 == 47)
    {
      v48 = *a1;
      v49 = *(a1 + 8) + 1;
      *(a1 + 8) = v49;
      if (*(v48 + v49) == 62)
      {
        v12 = 3;
        goto LABEL_90;
      }

      return 0;
    }

    if (v8 == 62)
    {
      LODWORD(v49) = *(a1 + 8);
LABEL_90:
      v47 = v49 + 1;
      v11 = v12;
LABEL_87:
      *(a1 + 8) = v47;
      return v11;
    }

    while (v8 == 9 || v8 == 32)
    {
      v26 = *a1;
      v8 = *(a1 + 8) + 1;
      *(a1 + 8) = v8;
      LOBYTE(v8) = *(v26 + v8);
    }

    v27 = 30;
    for (i = a4; ; ++i)
    {
      v29 = v8;
      if ((v8 & 0xFFFFFFDF) - 65 <= 0x19)
      {
        v30 = *a3;
        goto LABEL_65;
      }

      v30 = *a3;
      if (v8 != 45 && (v8 - 48) > 9)
      {
        break;
      }

LABEL_65:
      *(i + 32 * v30) = v8;
      if (!v27)
      {
        return 0;
      }

      v8 = *a1;
      v31 = *(a1 + 8) + 1;
      *(a1 + 8) = v31;
      LOBYTE(v8) = *(v8 + v31);
      --v27;
    }

    *(i + 32 * v30) = 0;
    while (v29 == 9 || v29 == 32)
    {
      v32 = *a1;
      v33 = *(a1 + 8) + 1;
      *(a1 + 8) = v33;
      v29 = *(v32 + v33);
    }

    if (v29 != 61)
    {
      return 0;
    }

    v34 = *a1;
    v35 = *(a1 + 8);
    v36 = (*a1 + v35 + 1);
    for (j = v35 + 2; ; ++j)
    {
      *(a1 + 8) = j - 1;
      v39 = *v36++;
      v38 = v39;
      if (v39 != 9 && v38 != 32)
      {
        break;
      }
    }

    if (v38 != 34)
    {
      return 0;
    }

    *(a1 + 8) = j;
    v40 = *(v34 + j);
    v41 = 30;
    for (k = a5; ; ++k)
    {
      v43 = *a3;
      if (v40 == 34)
      {
        break;
      }

      *(k + 32 * v43) = v40;
      if (!v41)
      {
        return 0;
      }

      v11 = 0;
      v44 = *a1;
      v45 = *(a1 + 8) + 1;
      *(a1 + 8) = v45;
      v40 = *(v44 + v45);
      --v41;
      if (!v40)
      {
        return v11;
      }
    }

    v11 = 0;
    *(k + 32 * v43) = 0;
    v8 = *a1;
    v46 = *(a1 + 8) + 1;
    *(a1 + 8) = v46;
    LOBYTE(v8) = *(v8 + v46);
    LODWORD(v46) = (*a3)++;
  }

  while (v46 <= 30);
  return v11;
}

void *newObject(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    *(a1 + 24) = *result;
  }

  else
  {
    result = malloc_type_calloc(1uLL, 0x58uLL, 0x10B00400181E628uLL);
    result[1] = *(a1 + 16);
    *(a1 + 16) = result;
  }

  return result;
}

_BYTE *getHexData(uint64_t *a1, _DWORD *a2)
{
  v4 = 4096;
  v5 = malloc_type_calloc(1uLL, 0x1000uLL, 0xB8616DuLL);
  v6 = *a1;
  v7 = *(a1 + 2);
  v8 = (*a1 + v7);
  v9 = v5;
  while (1)
  {
    v10 = *v8;
    if (v10 != 9 && v10 != 32)
    {
      if (v10 == 60)
      {
        *a2 = v5 - v9;
        return v9;
      }

      goto LABEL_10;
    }

    v11 = (v6 + 1 + v7);
    do
    {
      do
      {
        LODWORD(v7) = v7 + 1;
        *(a1 + 2) = v7;
        v12 = *v11++;
        v10 = v12;
      }

      while (v12 == 9);
    }

    while (v10 == 32);
    if (!v10)
    {
      break;
    }

LABEL_10:
    if (v10 == 10)
    {
      v13 = *(a1 + 3) + 1;
      LODWORD(v7) = v7 + 1;
      *(a1 + 2) = v7;
      *(a1 + 3) = v13;
      v8 = (v6 + v7);
    }

    else
    {
      if ((v10 - 48) > 9)
      {
        if ((v10 - 97) > 5)
        {
          break;
        }

        v14 = 16 * v10 - 112;
      }

      else
      {
        v14 = 16 * v10;
      }

      *v5 = v14;
      v15 = *a1;
      v16 = *(a1 + 2) + 1;
      *(a1 + 2) = v16;
      v17 = *(v15 + v16);
      v18 = v17 - 48;
      if ((v17 - 48) >= 0xA)
      {
        if ((v17 - 97) > 5)
        {
          break;
        }

        v18 = v17 - 87;
      }

      *v5++ |= v18;
      if (v5 - v9 >= v4)
      {
        if (v5 - v9 != v4)
        {
          getHexData();
        }

        if (v9)
        {
          if (v4)
          {
            v19 = malloc_type_realloc(v9, 2 * v4, 0x481BFDA2uLL);
            v9 = v19;
            if (v4 >= 1)
            {
              if (v19)
              {
                bzero(&v19[v4], v4);
              }
            }
          }
        }

        else if (2 * v4)
        {
          v9 = malloc_type_calloc(1uLL, 2 * v4, 0xB8616DuLL);
        }

        else
        {
          v9 = 0;
        }

        v5 = &v9[v4];
        v4 *= 2;
      }

      v6 = *a1;
      v7 = *(a1 + 2) + 1;
      *(a1 + 2) = v7;
      v8 = (v6 + v7);
    }
  }

  *a2 = 0;
  free(v9);
  return 0;
}

void *getCFEncodedData(uint64_t *a1, _DWORD *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x1000uLL, 0xB8616DuLL);
  v5 = *a1;
  v6 = *(*a1 + *(a1 + 2));
  *a2 = 0;
  if (v6 == 60)
  {
    goto LABEL_34;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 4096;
  do
  {
    v12 = v6 & 0x7F;
    switch(v12)
    {
      case 0xA:
        v10 = 0;
        ++*(a1 + 3);
        break;
      case 0x3D:
        ++v10;
        break;
      case 0:
        goto LABEL_34;
      default:
        v10 = 0;
        break;
    }

    v13 = __CFPLDataDecodeTable[v12];
    if (v13 < 0)
    {
      v14 = *(a1 + 2) + 1;
      *(a1 + 2) = v14;
      v6 = *(v5 + v14);
    }

    else
    {
      ++v9;
      v8 = v13 + (v8 << 6);
      if ((v9 & 3) != 0)
      {
        v15 = v11;
      }

      else
      {
        v16 = v7;
        v17 = v7 + 2;
        if (v11 <= v17)
        {
          v15 = 2 * v11;
          if (v4)
          {
            if (v11)
            {
              v18 = malloc_type_realloc(v4, 2 * v11, 0x481BFDA2uLL);
              v4 = v18;
              if (v11 >= 1 && v18)
              {
                bzero(&v18[v11], v11);
              }

              v16 = v7;
              v17 = v7 + 2;
            }

            else
            {
              v15 = 0;
            }
          }

          else if (v15)
          {
            v19 = malloc_type_calloc(1uLL, 2 * v11, 0xB8616DuLL);
            v16 = v7;
            v17 = v7 + 2;
            v4 = v19;
          }

          else
          {
            v4 = 0;
          }
        }

        else
        {
          v15 = v11;
        }

        *(v4 + v16) = BYTE2(v8);
        if (v10 > 1)
        {
          v7 = v16 + 1;
        }

        else
        {
          *(v4 + v16 + 1) = BYTE1(v8);
          if (v10 == 1)
          {
            v7 = v17;
          }

          else
          {
            v7 += 3;
            *(v4 + v17) = v8;
          }
        }
      }

      v5 = *a1;
      v20 = *(a1 + 2) + 1;
      *(a1 + 2) = v20;
      v6 = *(v5 + v20);
      v11 = v15;
    }
  }

  while (v6 != 60);
  *a2 = v7;
  if (!v7)
  {
LABEL_34:
    free(v4);
    return 0;
  }

  return v4;
}

uint64_t getNumber(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  v3 = *(*a1 + v2);
  if (v3 != 48)
  {
    LODWORD(v4) = *(a1 + 2);
    goto LABEL_18;
  }

  v4 = v2 + 1;
  *(a1 + 2) = v4;
  v3 = *(v1 + v4);
  if (v3 != 120)
  {
LABEL_18:
    if (v3 == 45)
    {
      v4 = v4 + 1;
      *(a1 + 2) = v4;
      v15 = *(v1 + v4);
    }

    else
    {
      v15 = v3;
    }

    v16 = v15;
    if ((v15 - 48) > 9)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = (v1 + v4 + 1);
      v19 = v4 + 1;
      do
      {
        v17 = 10 * v17 + v16 - 48;
        *(a1 + 2) = v19;
        v20 = *v18++;
        v16 = v20;
        ++v19;
      }

      while (v20 - 48 < 0xA);
    }

    if (v3 == 45)
    {
      return -v17;
    }

    else
    {
      return v17;
    }
  }

  *(a1 + 2) = v2 + 2;
  v5 = *(v1 + v2 + 2);
  v6 = v5 - 48 < 0xA;
  v7 = 0;
  if (v5 - 48 < 0xA || v5 - 97 <= 5)
  {
    v9 = (v2 + 2 + v1 + 1);
    v10 = v2 + 3;
    do
    {
      if (v6)
      {
        v11 = -48;
      }

      else
      {
        v11 = -87;
      }

      v7 = v11 + 16 * v7 + v5;
      *(a1 + 2) = v10;
      v12 = *v9++;
      v5 = v12;
      v13 = v12 - 97;
      v6 = v12 - 48 < 0xA;
      ++v10;
    }

    while (v12 - 48 < 0xA || v13 < 6);
  }

  return v7;
}

_BYTE *getString(uint64_t *a1, _DWORD *a2)
{
  v4 = 0;
  v5 = *(a1 + 2);
  v6 = *a1 + v5;
  while (1)
  {
    v7 = *(v6 + v4);
    if (v7 == 10)
    {
      ++*(a1 + 3);
      goto LABEL_7;
    }

    if (!*(v6 + v4))
    {
      return 0;
    }

    if (v7 == 60)
    {
      break;
    }

LABEL_7:
    *(a1 + 2) = v5 + 1 + v4++;
  }

  if (v4 == -1 || (result = malloc_type_calloc(1uLL, v4 + 1, 0xB8616DuLL)) == 0)
  {
    puts("OSUnserializeXML: can't alloc temp memory");
    return 0;
  }

  if (a2)
  {
    *a2 = v4 + 1;
  }

  if (v4 >= 1)
  {
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = v5 + 3;
    v12 = result;
    while (1)
    {
      v13 = *a1;
      v14 = v10;
      v15 = v10 + 1;
      v16 = *(*a1 + v5 + v10);
      if (v16 == 38)
      {
        v10 = v10 + 4;
        if (v14 + 4 > v4)
        {
          goto LABEL_35;
        }

        v17 = v14 + 2;
        v18 = *(v13 + v15 + v5);
        if (v18 == 103)
        {
          if (*(v13 + v5 + v17) != 116 || *(v13 + v11 + v14) != 59)
          {
LABEL_35:
            free(result);
            if (a2)
            {
              result = 0;
              *a2 = 0;
              return result;
            }

            return 0;
          }

          LOBYTE(v16) = 62;
        }

        else if (v18 == 108)
        {
          if (*(v13 + v17 + v5) != 116 || *(v13 + v11 + v14) != 59)
          {
            goto LABEL_35;
          }

          LOBYTE(v16) = 60;
        }

        else
        {
          if (v14 + 5 > v4 || v18 != 97 || *(v13 + v5 + v17) != 109 || *(v13 + v11 + v14) != 112 || *(v13 + v10 + v5) != 59)
          {
            goto LABEL_35;
          }

          LOBYTE(v16) = 38;
          LODWORD(v10) = v14 + 5;
        }
      }

      else
      {
        LODWORD(v10) = v10 + 1;
      }

      *v12++ = v16;
      v9 += 0x100000000;
      if (v10 >= v4)
      {
        v19 = v9 >> 32;
        goto LABEL_38;
      }
    }
  }

  v19 = 0;
LABEL_38:
  result[v19] = 0;
  return result;
}

uint64_t ___ZL18isFirstPartyDriverv_block_invoke()
{
  getpid();
  result = csops();
  _MergedGlobals = 0;
  return result;
}

uint64_t argnumcpy(uint64_t result, unsigned __int8 *a2, int a3)
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      result = result & 0xFFFFFF | (a2[3] << 24);
    }

    else if (a3 == 8)
    {
      *a2 = result;
      return result;
    }

LABEL_9:
    *a2 = result;
    return result;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      *a2 = result;
      return result;
    }

    goto LABEL_9;
  }

  *a2 = result;
  return result;
}

__int32 *OSMetaClassBase::RemotePrivate(OSMetaClassBase *this)
{
  if (this[-1].meta)
  {
    return &this[-4].refcount;
  }

  else
  {
    return 0;
  }
}

_DWORD *OSCopyInStringArray(const char *a1, unsigned int a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v4 = a2;
  v5 = IOMallocTyped(a2 + 8, 0x100004000313F17uLL);
  *v5 = a2;
  v6 = (v5 + 2);
  memmove(v5 + 2, a1, v4);
  v5[1] = 0;
  v7 = *(v5 + 8);
  if (v7)
  {
    v8 = &v6[a2];
    for (i = 1; ; ++i)
    {
      v6 += v7 + 1;
      if (v6 >= v8)
      {
        break;
      }

      v5[1] = i;
      v7 = *v6;
      if (!*v6)
      {
        return v5;
      }
    }

    IOFree(v5, v4 + 8);
    return 0;
  }

  return v5;
}

uint64_t OSStringArrayIndex(unsigned int *a1, char *__s)
{
  v4 = *a1;
  v5 = strlen(__s);
  v8 = *(a1 + 8);
  v7 = a1 + 2;
  v6 = v8;
  if (v8)
  {
    v9 = v5;
    v10 = 0;
    v11 = &v7[v4];
    do
    {
      v12 = v7 + 1;
      v7 += v6 + 1;
      if (v7 >= v11)
      {
        break;
      }

      if (v9 == v6 && !strncmp(v12, __s, v9))
      {
        return v10;
      }

      v10 = (v10 + 1);
      v6 = *v7;
    }

    while (*v7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t OSRegisterClass(uint64_t a1, void ***a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 2;
  v17 = 0;
  v2 = **a2[3];
  v3 = *v2;
  if (v2[49] + v2[50] > *v2)
  {
    OSRegisterClass();
  }

  if (v2[53] + v2[54] > v3)
  {
    OSRegisterClass();
  }

  if (io_connect_method(*(a1 + 16), 4096, 0, 0, v2, v3, 0, 0, 0, &v18, &v20, &v19, 0, &v17))
  {
    OSRegisterClass();
  }

  v5 = v20;
  v6 = v21;
  if (*(a2 - 1))
  {
    v7 = a2 - 11;
  }

  else
  {
    v7 = 0;
  }

  v7[3] = v20;
  *(a2 - 3) = v6;
  if ((gIODKDebug & 2) != 0)
  {
    v8 = a2[3];
    v9 = v8[1];
    v10 = (**v8 + 4);
    if (v9)
    {
      v11 = (**v9[3] + 4);
    }

    else
    {
      v11 = "-";
    }

    IOLog("Register class: %s (super %s) object %p ref %qd\n", v10, v11, a2, v5);
  }

  v12 = v2[49];
  *(a2[3] + 7) = v12 >> 4;
  v13 = IOMallocTyped(v12 & 0xFFFFFFF0, 0x100004000313F17uLL);
  v14 = a2[3];
  v14[4] = v13;
  memmove(v13, v2 + v2[50], 8 * (2 * *(v14 + 7)));
  a2[3][2] = OSCopyInStringArray(v2 + v2[54], v2[53]);
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t OSFindClass(uint64_t a1, const char *a2)
{
  os_unfair_lock_assert_owner(a1);
  v4 = *(a1 + 56);
  if (!v4)
  {
LABEL_4:
    panic("Failed to find class: %s", a2);
  }

  while (strcmp(a2, (**v4 + 4)))
  {
    v4 = v4[2];
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  result = v4[1];
  if (!result)
  {
    OSFindClass();
  }

  return result;
}

uint64_t OSObjectAllocate(OSMetaClass *a1, __int16 a2, OSObject **a3)
{
  v4 = a1;
  v5 = *a1->metaClassPrivate;
  v6 = v5[5];
  if (*(*v5 + 240))
  {
    a2 = 1;
  }

  v8 = 88;
  if ((a2 & 1) == 0)
  {
    v8 = 24;
  }

  v9 = IOMallocZeroTyped(v8 + v6, 0x100004077774924uLL);
  if (!v9)
  {
    return 3758097085;
  }

  v10 = v9;
  if (a2)
  {
    *v9 = *&v4[-3].refcount;
    v10 = v9 + 8;
  }

  *(v10 + 8) = a2;
  atomic_store(1u, v10 + 8);
  v10[5] = v4;
  if ((v4->New)(v4, v10 + 3))
  {
    OSObjectAllocate();
  }

  v11 = *(v4->metaClassPrivate + 2);
  if (v11)
  {
    v12 = *(v11 + 4);
    v13 = v12 + 1;
    if ((gIODKDebug & 2) != 0)
    {
      IOLog("%s %d queues\n", (***(v10[5] + 24) + 4), v12);
    }

    if (v13 < 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = IOMallocZeroTyped(8 * v13, 0x2004093837F09uLL);
    }
  }

  else
  {
    v14 = 0;
    v13 = 1;
  }

  *v10 = v14;
  *(v10 + 2) = v13;
  if ((gIODKDebug & 2) != 0)
  {
    IOLog("%s allocated %p\n", (***(v10[5] + 24) + 4), v10 + 3);
  }

  *a3 = (v10 + 3);
  do
  {
    atomic_fetch_add_explicit(v4->metaClassPrivate + 6, 1u, memory_order_relaxed);
    v4 = *(v4->metaClassPrivate + 1);
  }

  while (v4);
  return 0;
}

void OSObjectPortFinalize(OSMetaClassBase *a1)
{
  if ((a1[-1].meta & 1) == 0)
  {
    OSObjectPortFinalize();
  }

  if (*&a1[-3].refcount)
  {
    v2 = *&a1[-4].refcount;
    os_unfair_lock_lock(v2);
    v3 = *&a1[-3].refcount;
    if (v3)
    {
      p_refcount = &a1[-4].refcount;
      meta = a1[-4].meta;
      v6 = a1[-3].__vftable;
      if (meta)
      {
        meta->meta = v6;
      }

      v6->getMetaClass = meta;
      if ((a1[-1].meta & 1) == 0)
      {
        p_refcount = 0;
      }

      v7 = p_refcount[8];
      p_refcount[8] = 0;
      *&a1[-3].refcount = 0;
      os_unfair_lock_unlock(v2);
      if (v7)
      {
        v8 = MEMORY[0x277D85F48];
        v9 = mach_port_mod_refs(*MEMORY[0x277D85F48], v3, 0, -v7);
        if (v9 == 17)
        {
          v9 = mach_port_mod_refs(*v8, v3, 4u, -v7);
        }

        if (v9)
        {
          OSObjectPortFinalize();
        }
      }
    }

    else
    {

      os_unfair_lock_unlock(v2);
    }
  }
}

void OSObjectFree(OSMetaClassBase *a1)
{
  meta = a1->meta;
  if (meta == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1->meta;
  }

  v4 = v3 != 0;
  if (v3)
  {
    v5 = v3 == gIOServiceMetaClass;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = a1->meta;
    do
    {
      v6 = *(v6->metaClassPrivate + 1);
      v4 = v6 != 0;
      if (v6)
      {
        v7 = v6 == gIOServiceMetaClass;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
  }

  if (a1)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1 - 1;
  v10 = a1[-1].meta;
  if (a1[-1].refcount)
  {
    CompactArray<IODispatchQueue *>::reset(&a1[-1]);
  }

  if ((v10 & 1) == 0)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_29;
  }

  v12 = *&a1[-3].refcount;
  v11 = a1[-3].meta;
  v13 = *&a1[-2].refcount;
  if (v13)
  {
    if (!HIDWORD(a1[-3].meta))
    {
      v17 = 0;
      goto LABEL_28;
    }

    v14 = 0;
    v15 = MEMORY[0x277D85F48];
    do
    {
      mach_port_deallocate(*v15, *(*&a1[-2].refcount + 8 * v14++));
      meta_high = HIDWORD(a1[-3].meta);
    }

    while (v14 < meta_high);
    v13 = *&a1[-2].refcount;
    if (v13)
    {
      v17 = 8 * meta_high;
LABEL_28:
      IOFree(v13, v17);
      *&a1[-2].refcount = 0;
    }
  }

LABEL_29:
  if ((gIODKDebug & 2) != 0)
  {
    IOLog("free %s %p 0x%qx %d\n", (**a1->meta->metaClassPrivate + 4), a1, v12, v11);
  }

  p_refcount = &a1[-4].refcount;
  if (v12 && (OSObjectPortFinalize(a1), v8))
  {
    v19 = *p_refcount;
    if (!atomic_load((*p_refcount + 4176)))
    {
      OSObjectFree();
    }

    v21 = atomic_fetch_add_explicit((v19 + 4176), 0xFFFFFFFF, memory_order_relaxed) < 3;
    if ((gIODKDebug & 2) != 0)
    {
      v22 = atomic_load((v19 + 4176));
      IOLog("serviceCount %d\n", v22);
    }
  }

  else
  {
    v21 = 0;
  }

  v23 = 88;
  if (v10)
  {
    v9 = p_refcount;
  }

  else
  {
    v23 = 24;
  }

  memset(v9, 238, v23 + *(meta[1].getMetaClass + 5));
  free(v9);
  if (v21)
  {
    IOLog("no services left, exiting\n");
    exit(0);
  }

  do
  {
    atomic_fetch_add_explicit(&meta[1].isEqualTo, 0xFFFFFFFF, memory_order_relaxed);
    meta = meta[1].retain;
  }

  while (meta);
}

OSMetaClassBase *__cdecl OSMetaClassBase::safeMetaCast(OSMetaClassBase *anObject, const OSMetaClass *toMeta)
{
  if (anObject)
  {
    meta = anObject->meta;
    if (meta == anObject)
    {
      v3 = 0;
    }

    else
    {
      v3 = anObject->meta;
    }

    v4 = v3 != 0;
    if (v3)
    {
      v5 = v3 == toMeta;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      do
      {
        meta = *(meta->metaClassPrivate + 1);
        v4 = meta != 0;
        if (meta)
        {
          v6 = meta == toMeta;
        }

        else
        {
          v6 = 1;
        }
      }

      while (!v6);
    }

    if (!v4)
    {
      return 0;
    }
  }

  return anObject;
}

void CompactArray<IODispatchQueue *>::reset(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 1)
  {
    v5 = *a1;
    if (*a1)
    {
      (*(*v5 + 16))(v5);
      goto LABEL_11;
    }
  }

  else
  {
    if (!*(a1 + 8))
    {
      CompactArray<IODispatchQueue *>::reset();
    }

    v3 = 0;
    do
    {
      v4 = *(*a1 + 8 * v3);
      if (v4)
      {
        (*(*v4 + 16))(v4);
        *(*a1 + 8 * v3) = 0;
        v2 = *(a1 + 8);
      }

      ++v3;
    }

    while (v3 < v2);
    if (*a1)
    {
      IOFree(*a1, 8 * v2);
LABEL_11:
      *a1 = 0;
    }
  }

  *(a1 + 8) = 0;
}

BOOL OSObjectTryRetain(OSObject *a1)
{
  v1 = atomic_load(&a1->refcount);
  while (1)
  {
    v2 = v1;
    if (!v1)
    {
      break;
    }

    atomic_compare_exchange_strong_explicit(&a1->refcount, &v1, v1 + 1, memory_order_relaxed, memory_order_relaxed);
    if (v1 == v2)
    {
      if (v2 >= 0x7FFF)
      {
        OSObjectTryRetain();
      }

      return v2 != 0;
    }
  }

  return v2 != 0;
}

void OSObject::retain(const OSObject *this)
{
  add_explicit = atomic_fetch_add_explicit(&this->refcount, 1u, memory_order_relaxed);
  if (!add_explicit)
  {
    OSObject::retain();
  }

  if (add_explicit >= 0x7FFF)
  {
    OSObject::retain();
  }
}

void OSObject::release(const OSObject *this)
{
  if (!atomic_load(&this->refcount))
  {
    OSObject::release();
  }

  if (atomic_fetch_add_explicit(&this->refcount, 0xFFFFFFFF, memory_order_release) <= 1)
  {
    __dmb(9u);
    free = this->free;

    free();
  }
}

OSMetaClassBase *__cdecl OSMetaClassBase::requiredMetaCast(OSMetaClassBase *anObject, const OSMetaClass *toMeta)
{
  if (anObject)
  {
    if (anObject->meta == anObject)
    {
      meta = 0;
    }

    else
    {
      meta = anObject->meta;
    }

    v3 = meta != 0;
    if (meta)
    {
      v4 = meta == toMeta;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = anObject->meta;
      do
      {
        v5 = *(v5->metaClassPrivate + 1);
        v3 = v5 != 0;
        if (v5)
        {
          v6 = v5 == toMeta;
        }

        else
        {
          v6 = 1;
        }
      }

      while (!v6);
    }

    if (!v3)
    {
      OSMetaClassBase::requiredMetaCast(anObject->meta, toMeta);
    }
  }

  return anObject;
}

uint64_t SearchMethodArray(unint64_t a1, const unint64_t *a2, unsigned int a3, unint64_t *a4)
{
  if (!a3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a3;
  while (1)
  {
    v6 = v4 + (v5 >> 1);
    v7 = a2[v6];
    v8 = v7 >= a1;
    if (v7 == a1)
    {
      break;
    }

    v9 = v7 < a1;
    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = (v5 >> 1) + 1;
    }

    v4 += v10;
    v11 = v5 - v9;
    v5 = (v5 - v9) >> 1;
    if (v11 <= 1)
    {
      return 0;
    }
  }

  *a4 = a2[v6 + a3];
  return 1;
}

uint64_t OSMetaClassBase::QueueForObject(OSMetaClassBase *this, unint64_t a2)
{
  if (this->meta == this)
  {
    return 0;
  }

  if (!this[-1].refcount)
  {
    OSMetaClassBase::QueueForObject();
  }

  v4 = *CompactArray<IODispatchQueue *>::operator[](&this[-1], 0);
  metaClassPrivate = this->meta->metaClassPrivate;
  v6 = *(metaClassPrivate + 4);
  if (v6)
  {
    v7 = *(metaClassPrivate + 7);
    if (v7)
    {
      v8 = 0;
      v9 = *(metaClassPrivate + 7);
      while (1)
      {
        v10 = v8 + (v9 >> 1);
        v11 = *(v6 + 8 * v10);
        v12 = v11 >= a2;
        if (v11 == a2)
        {
          break;
        }

        v13 = v11 < a2;
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = (v9 >> 1) + 1;
        }

        v8 += v14;
        v15 = v9 - v13;
        v9 = (v9 - v13) >> 1;
        if (v15 <= 1)
        {
          return v4;
        }
      }

      v16 = *(v6 + 8 * (v10 + v7));
      if (v16 < *(*(metaClassPrivate + 2) + 4) && *CompactArray<IODispatchQueue *>::operator[](&this[-1], v16 + 1))
      {
        v4 = *CompactArray<IODispatchQueue *>::operator[](&this[-1], v16 + 1);
      }

      if (!v4)
      {
        OSMetaClassBase::QueueForObject();
      }
    }
  }

  return v4;
}

uint64_t CompactArray<IODispatchQueue *>::operator[](uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    CompactArray<IODispatchQueue *>::operator[]();
  }

  if (v2 <= a2)
  {
    CompactArray<IODispatchQueue *>::operator[]();
  }

  if (v2 != 1)
  {
    return *result + 8 * a2;
  }

  return result;
}

IORPCMessage *__cdecl IORPCMessageFromMach(IORPCMessageMach *msg, BOOL reply)
{
  if (reply)
  {
    v2 = 1302509197;
  }

  else
  {
    v2 = 1302509196;
  }

  if (msg->msgh.msgh_id != v2)
  {
    IORPCMessageFromMach_cold_1();
  }

  msgh_descriptor_count = msg->msgh_body.msgh_descriptor_count;
  v4 = msg + 1;
  if (msgh_descriptor_count)
  {
    msgh_size = msg->msgh.msgh_size;
    while (v4 < (msg + msgh_size))
    {
      msgh_remote_port_high = HIBYTE(v4->msgh.msgh_remote_port);
      if (msgh_remote_port_high)
      {
        if (msgh_remote_port_high != 1)
        {
          IORPCMessageFromMach_cold_2(msg, msgh_size);
        }

        v7 = 16;
      }

      else
      {
        v7 = 12;
      }

      v4 = (v4 + v7);
      if (!--msgh_descriptor_count)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

kern_return_t OSMetaClassBase::Dispatch(OSMetaClassBase *this, IORPC *invoke)
{
  v4 = IORPCMessageFromMach(invoke->message, 0);
  meta = this[-1].meta;
  if (meta)
  {
    p_refcount = &this[-4].refcount;
  }

  else
  {
    p_refcount = 0;
  }

  if ((meta & 1) == 0)
  {
    OSMetaClassBase::Dispatch();
  }

  v7 = v4;
  if ((gIODKDebug & 4) != 0)
  {
    reply = invoke->reply;
    IOLog("OSMetaClassBase::InvokeRemote(0x%x) 0x%qx 0x%qx %p %p\n", this[-1].reserved, v4->flags, v4->msgid, reply, this->meta);
  }

  if ((this[-1].reserved & 2) != 0 && (v7->flags & 0x80) != 0 && (objectRefs = v7->objectRefs, objectRefs <= 2) && (sendSize = invoke->sendSize, replySize = invoke->replySize, (replySize + sendSize) <= 0x7FF) && objectRefs == invoke->message->msgh_body.msgh_descriptor_count)
  {
    v12 = *&this[-3].refcount;
    if (!v12)
    {
      OSMetaClassBase::Dispatch();
    }

    if (objectRefs == 2 && (flags = v7[1].flags) != 0)
    {
      v14 = *(flags - 8);
      v15 = flags - 88;
      if ((v14 & 1) == 0)
      {
        v15 = 0;
      }

      v16 = *(v15 + 24);
      if (!*(v15 + 24))
      {
        OSMetaClassBase::Dispatch();
      }
    }

    else
    {
      v16 = 0;
    }

    if (v12 == 0xFFFFFFFFLL)
    {
      OSMetaClassBase::Dispatch();
    }

    v33 = invoke->reply;
    result = iokit_user_client_trap((v12 & 0xFFFFFFFFFFFFFFFCLL), 0, v7, invoke->message + sendSize - v7, &v33->msgh.msgh_id, (replySize - 20), v16, 0);
    if (!result)
    {
      v34 = invoke->reply;
      v34->msgh.msgh_size = v33->msgh.msgh_id + 20;
      *&v34->msgh.msgh_id = 1302509197;
    }
  }

  else
  {
    v17 = *&this[-4].refcount;
    v18 = *&this[-2].refcount;
    if (v18)
    {
      v19 = *v18;
      v20 = this[-2].__vftable;
      if (v20)
      {
        v21 = 0;
        msgid = v7->msgid;
        v23 = this[-2].meta;
        v24 = this[-2].__vftable;
        while (1)
        {
          v25 = v21 + (v24 >> 1);
          v26 = *(&v23->__vftable + v25);
          v27 = v26 >= msgid;
          if (v26 == msgid)
          {
            break;
          }

          v28 = v26 < msgid;
          if (v27)
          {
            v29 = 0;
          }

          else
          {
            v29 = (v24 >> 1) + 1;
          }

          v21 += v29;
          v30 = v24 - v28;
          v24 = (v24 - v28) >> 1;
          if (v30 <= 1)
          {
            goto LABEL_31;
          }
        }

        v31 = *(&v23->__vftable + 8 * v25 + 8 * v20) + 1;
        if (v31 < p_refcount[9])
        {
          v19 = v18[v31];
        }
      }
    }

    else
    {
      v19 = *(v17 + 24);
    }

LABEL_31:
    v35 = *&invoke->message;
    v36 = *&invoke->sendSize;
    return InvokeRemote(v17, v19, &v35);
  }

  return result;
}

uint64_t InvokeRemote(uint64_t a1, mach_port_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v6 = *(a1 + 24);
  pthread_threadid_np(0, &v27);
  v7 = *(a3 + 16);
  if (v7 <= 0x33)
  {
    InvokeRemote();
  }

  v8 = *a3;
  v9 = *(a3 + 20);
  v10 = IORPCMessageFromMach(*a3, 0);
  flags = v10->flags;
  if ((flags & 8) == 0 && v9 <= 0x33)
  {
    InvokeRemote();
  }

  if (OSCopyOutObjects(v8, v10))
  {
    InvokeRemote();
  }

  v8->msgh.msgh_remote_port = a2;
  if ((flags & 8) != 0)
  {
    reply_port = 0;
  }

  else
  {
    reply_port = mig_get_reply_port();
  }

  v8->msgh.msgh_local_port = reply_port;
  v8->msgh.msgh_bits = -2147478253;
  *&v8->msgh.msgh_voucher_port = 0x4DA2B68C00000000;
  if ((gIODKDebug & 0x10) != 0)
  {
    snprintf(__str, 0x40uLL, "[%#qx] INVOKE MSG:", v27);
    IOLogBuffer(__str, v8, v7);
  }

  if ((flags & 8) != 0 || *(a3 + 8) == *a3)
  {
    v14 = 1;
  }

  else
  {
    if (v9 <= v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v9;
    }

    v8 = malloc_type_malloc(v13, 0x100004027586B93uLL);
    memmove(v8, *a3, v7);
    v14 = 0;
  }

  v15 = *&v8->msgh.msgh_remote_port & 0xFFFFFFFF00000000;
  if ((v8->msgh.msgh_bits & 0x80000000) != 0)
  {
    msgh_descriptor_count = v8->msgh_body.msgh_descriptor_count;
  }

  v17 = v8->msgh.msgh_voucher_port | (v8->msgh.msgh_id << 32);
  msgid_low = mach_msg2_internal();
  if ((flags & 8) == 0)
  {
    msgh_size = v8->msgh.msgh_size;
    if ((gIODKDebug & 0x10) != 0)
    {
      snprintf(__str, 0x40uLL, "[%#qx] INVOKE REPLY:", v27);
      IOLogBuffer(__str, v8, msgh_size);
    }

    if (msgid_low)
    {
      if ((v14 & 1) == 0)
      {
        free(v8);
      }

      mach_error("mach_msg: ", msgid_low);
    }

    else
    {
      msgh_id = v8->msgh.msgh_id;
      if (msgh_id == 1302509197)
      {
        if (msgh_size > 0x33)
        {
          if ((v8->msgh.msgh_bits & 0x80000000) == 0)
          {
            v8->msgh_body.msgh_descriptor_count = 0;
          }

          v21 = IORPCMessageFromMach(v8, 1);
          v22 = v21->flags;
          v23 = OSCopyInObjects(a1, v8, v21);
          if ((v22 & 0x40) != 0)
          {
            msgid_low = LODWORD(v21[1].msgid);
          }

          else
          {
            msgid_low = v23;
          }

          if (!msgid_low)
          {
            v24 = *(a3 + 8);
            if (v24 != *a3)
            {
              if (msgh_size > *(a3 + 20))
              {
                InvokeRemote();
              }

              memmove(v24, v8, msgh_size);
            }

            msgid_low = 0;
          }
        }

        else
        {
          if ((gIODKDebug & 4) != 0)
          {
            IOLog("BAD REPLY SIZE 0x%x\n", 1302509197);
          }

          msgid_low = 4294966992;
        }
      }

      else
      {
        if ((gIODKDebug & 4) != 0)
        {
          IOLog("BAD REPLY ID 0x%x\n", v8->msgh.msgh_id);
          msgh_id = v8->msgh.msgh_id;
        }

        if (msgh_id == 71)
        {
          msgid_low = 4294966988;
        }

        else
        {
          msgid_low = 4294966995;
        }
      }

      if ((v14 & 1) == 0)
      {
        free(v8);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return msgid_low;
}

kern_return_t OSMetaClassBase::Invoke(OSMetaClassBase *this, IORPC *invoke)
{
  v4 = -536870184;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2000000000;
  v48 = 0;
  v5 = IORPCMessageFromMach(invoke->message, 0);
  if (!invoke->message->msgh_body.msgh_descriptor_count)
  {
    v4 = -536870172;
    goto LABEL_67;
  }

  v6 = v5;
  msgid = v5[1].msgid;
  if (msgid)
  {
    v8 = v5->msgid;
    meta = msgid->meta;
    if (meta == msgid)
    {
      v10 = 0;
    }

    else
    {
      v10 = msgid->meta;
    }

    v11 = v10 != 0;
    if (v10)
    {
      v12 = v10 == gOSActionMetaClass;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      do
      {
        meta = *(meta->metaClassPrivate + 1);
        v11 = meta != 0;
        if (meta)
        {
          v13 = meta == gOSActionMetaClass;
        }

        else
        {
          v13 = 1;
        }
      }

      while (!v13);
    }

    flags = v5->flags;
    if (!v11)
    {
      goto LABEL_32;
    }

    if ((gIODKDebug & 4) != 0)
    {
      IOLog("is action\n");
    }

    if ((this[-1].reserved & 2) != 0 && v6->objectRefs == 2)
    {
      if ((this[-1].meta & 1) == 0)
      {
        OSMetaClassBase::Invoke();
      }

      v15 = *&this[-3].refcount;
      if (!v15)
      {
        OSMetaClassBase::Invoke();
      }

      if (v15 == 0xFFFFFFFFLL)
      {
        OSMetaClassBase::Invoke();
      }

      v16 = iokit_user_client_trap((v15 & 0xFFFFFFFFFFFFFFFCLL), 0, v6, (invoke->message - v6 + invoke->sendSize), 0, 0, 0, 0);
      v4 = 0;
      *(v46 + 6) = v16;
      if (v16)
      {
        OSMetaClassBase::Invoke();
      }

      goto LABEL_67;
    }

    v17 = &msgid[1].meta->__vftable;
    if (v17 && *v17)
    {
      if ((gIODKDebug & 4) != 0)
      {
        IOLog("is local target\n");
      }

      (msgid->retain)(msgid);
      v18 = msgid[1].meta;
      if (v8 != v18->meta)
      {
        OSMetaClassBase::Invoke();
      }

      v19 = msgid;
      msgid = v18->__vftable;
      v8 = *&v18->refcount;
      v6[1].msgid = v18->__vftable;
      v6->msgid = v8;
    }

    else
    {
LABEL_32:
      v19 = 0;
    }

    if ((v6->flags & 0x20) != 0)
    {
      if ((gIODKDebug & 4) == 0)
      {
        goto LABEL_53;
      }

      v21 = 0;
      if (flags)
      {
        v22 = "remote";
      }

      else
      {
        v22 = "local";
      }
    }

    else
    {
      v20 = OSMetaClassBase::QueueForObject(msgid, v8);
      v21 = v20;
      if ((gIODKDebug & 4) == 0)
      {
        goto LABEL_46;
      }

      if (flags)
      {
        v22 = "remote";
      }

      else
      {
        v22 = "local";
      }

      if (v20)
      {
        label = dispatch_queue_get_label(**(v20 + 40));
LABEL_45:
        IOLog("Invoke from %s 0x%qx, q %s refs %llx rpcKernel %d %s\n", v22, v8, label, v6->objectRefs, this[-1].reserved & 2, (**this->meta->metaClassPrivate + 4));
LABEL_46:
        if (v21)
        {
          v24 = *(v21->ivars + 4);
          if ((v24 & 2) == 0 && (flags & 1) != 0 && v8 != 0xAB6F76DDE6D693F2)
          {
            if (!IODispatchQueue::OnQueue(v21))
            {
              OSMetaClassBase::Invoke();
            }

            goto LABEL_58;
          }

          if ((v24 & 2) == 0)
          {
            if ((flags & 1) == 0 && (v6->flags & 8) != 0)
            {
              v29 = malloc_type_malloc(invoke->sendSize + 40, 0x1020040DBF2485DuLL);
              memmove(v29 + 40, invoke->message, invoke->sendSize);
              v30 = IORPCMessageFromMach((v29 + 40), 0);
              objectRefs = v30->objectRefs;
              if (objectRefs)
              {
                v32 = v30 + 1;
                do
                {
                  v34 = v32->msgid;
                  v32 = (v32 + 8);
                  v33 = v34;
                  if (v34)
                  {
                    (*(*v33 + 8))(v33);
                  }

                  --objectRefs;
                }

                while (objectRefs);
              }

              *(v29 + 2) = v29 + 40;
              sendSize = invoke->sendSize;
              *(v29 + 3) = 0;
              *(v29 + 4) = sendSize;
              *(v29 + 1) = msgid;
              if (v19)
              {
                (v19->retain)(v19);
              }

              *v29 = v19;
              v36 = *v21->ivars;
              *&block = MEMORY[0x277D85DD0];
              *(&block + 1) = 0x40000000;
              v50 = ___ZN15IODispatchQueue15DispatchAsync_fEPvPFvS0_E_block_invoke;
              v51 = &__block_descriptor_tmp_87;
              v52 = v21;
              v53 = IORPCAsync;
              v54 = v29;
              dispatch_async(v36, &block);
              *(v46 + 6) = 0;
              if (v19)
              {
                goto LABEL_66;
              }

              goto LABEL_76;
            }

LABEL_58:
            context[0] = MEMORY[0x277D85DD0];
            context[1] = 1174405120;
            v26 = ___ZN15OSMetaClassBase6InvokeE5IORPC_block_invoke;
            v38 = ___ZN15OSMetaClassBase6InvokeE5IORPC_block_invoke;
            v39 = &__block_descriptor_tmp_1;
            v41 = v19;
            if (v19)
            {
              (v19->retain)(v19);
              v26 = v38;
            }

            v40 = &v45;
            v42 = msgid;
            v43 = *&invoke->message;
            v44 = *&invoke->sendSize;
            if (v26)
            {
              v27 = v26;
            }

            else
            {
              v27 = 0;
            }

            IODispatchQueue::DispatchSync_f(v21, context, v27);
            if (v41)
            {
              (v41->release)(v41);
            }

            v41 = 0;
            if (v19)
            {
              goto LABEL_66;
            }

LABEL_76:
            v4 = *(v46 + 6);
            goto LABEL_67;
          }
        }

LABEL_53:
        block = *&invoke->message;
        v50 = *&invoke->sendSize;
        v25 = (msgid->Dispatch)(msgid, &block);
        *(v46 + 6) = v25;
        if (!v19)
        {
          v4 = v25;
          goto LABEL_67;
        }

        DidAction(v19);
LABEL_66:
        v6->msgid = v19[1].meta->meta;
        v6[1].msgid = v19;
        v4 = *(v46 + 6);
        (v19->release)(v19);
        goto LABEL_67;
      }
    }

    label = "noq";
    goto LABEL_45;
  }

LABEL_67:
  _Block_object_dispose(&v45, 8);
  return v4;
}

BOOL IODispatchQueue::OnQueue(IODispatchQueue *this)
{
  v2 = *(this->ivars + 6);
  if (v2)
  {

    LOBYTE(specific) = IORecursiveConditionLockHaveLock(v2);
  }

  else
  {
    specific = dispatch_get_specific(&gIODispatchQueueKey);
    if (specific)
    {
      v4 = specific[5] + 8;
      do
      {
        v4 = *v4;
        LOBYTE(specific) = v4 != 0;
      }

      while (v4 && *(v4 + 8) != this);
    }
  }

  return specific;
}

uint64_t DidAction(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 104))
  {
    v2 = result;
    pthread_mutex_lock((v1 + 40));
    v3 = *(v2 + 40);
    v4 = *(v3 + 104);
    if (v4)
    {
      ++*(v4 + 48);
      if (pthread_cond_signal(*(*(v2 + 40) + 104)))
      {
        DidAction();
      }

      v3 = *(v2 + 40);
    }

    return pthread_mutex_unlock((v3 + 40));
  }

  return result;
}

void IODispatchQueue::DispatchAsync_f(IODispatchQueue *this, void *context, IODispatchFunction function)
{
  v3 = *this->ivars;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN15IODispatchQueue15DispatchAsync_fEPvPFvS0_E_block_invoke;
  block[3] = &__block_descriptor_tmp_87;
  block[4] = this;
  block[5] = function;
  block[6] = context;
  dispatch_async(v3, block);
}

void IORPCAsync(void *a1)
{
  if (*a1 && *(*(*a1 + 40) + 32))
  {
    if ((gIODKDebug & 4) != 0)
    {
      IOLog("is canceled action\n");
    }
  }

  else
  {
    v2 = a1[1];
    v3 = *(a1 + 1);
    v4 = a1[4];
    (*(*v2 + 32))(v2, &v3);
    if (*a1)
    {
      DidAction(*a1);
    }
  }

  OSConsumeObjects(a1[2], 0);
  if (*a1)
  {
    (*(**a1 + 16))(*a1);
  }

  free(a1);
}

void IODispatchQueue::DispatchSync(IODispatchQueue *this, IODispatchBlock block)
{
  if (*(block + 2))
  {
    v2 = *(block + 2);
  }

  else
  {
    v2 = 0;
  }

  IODispatchQueue::DispatchSync_f(this, block, v2);
}

uint64_t ___ZN15OSMetaClassBase6InvokeE5IORPC_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 && *(*(v2 + 40) + 32))
  {
    if ((gIODKDebug & 4) != 0)
    {
      result = IOLog("is canceled action\n");
    }

    *(*(*(v1 + 32) + 8) + 24) = -536870195;
  }

  else
  {
    v3 = *(result + 48);
    v5 = *(v1 + 56);
    v6 = *(v1 + 72);
    v4 = (*(*v3 + 32))(v3, &v5);
    result = *(v1 + 40);
    *(*(*(v1 + 32) + 8) + 24) = v4;
    if (result)
    {
      return DidAction(result);
    }
  }

  return result;
}

uint64_t __copy_helper_block_8_32r40c28_ZTS11OSSharedPtrI8OSActionE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

void __destroy_helper_block_8_32r40c28_ZTS11OSSharedPtrI8OSActionE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  *(a1 + 40) = 0;
  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

IOLock *IOLockAlloc(void)
{
  result = IOMallocZeroTyped(4uLL, 0x100004052888210uLL);
  if (result)
  {
    *result = 0;
  }

  return result;
}

void IOLockFree(IOLock *lock)
{
  if (lock)
  {
    IOFree(lock, 4uLL);
  }
}

void IOLockAssert(IOLock *lock, IOLockAssertState type)
{
  if (type == kIOLockAssertNotOwned)
  {

    os_unfair_lock_assert_not_owner(lock);
  }

  else
  {
    if (type != kIOLockAssertOwned)
    {
      IOLockAssert_cold_1();
    }

    os_unfair_lock_assert_owner(lock);
  }
}

IORecursiveLock *IORecursiveLockAlloc(void)
{
  result = IOMallocZeroTyped(8uLL, 0x100004000313F17uLL);
  if (result)
  {
    *result = 0;
  }

  return result;
}

void IORecursiveLockFree(IORecursiveLock *lock)
{
  if (lock)
  {
    IOFree(lock, 8uLL);
  }
}

IORecursiveConditionLock *IORecursiveConditionLockAlloc(void)
{
  v0 = IOMallocZeroTyped(0x50uLL, 0x1020040D51851D7uLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutex_init(v0, 0);
  }

  return v1;
}

void IORecursiveConditionLockFree(IORecursiveConditionLock *lock)
{
  if (lock)
  {
    IOFree(lock, 0x50uLL);
  }
}

void IORecursiveConditionLockLock(IORecursiveConditionLock *lock)
{
  v2 = pthread_self();
  if (v2 == *(lock + 8))
  {
    v4 = *(lock + 9);
    if (!v4)
    {
      IORecursiveConditionLockLock_cold_2();
    }

    *(lock + 9) = v4 + 1;
  }

  else
  {
    v3 = v2;
    pthread_mutex_lock(lock);
    if (*(lock + 9))
    {
      IORecursiveConditionLockLock_cold_1();
    }

    *(lock + 8) = v3;
    *(lock + 9) = 1;
  }
}

void IORecursiveConditionLockUnlock(IORecursiveConditionLock *lock)
{
  if (pthread_self() != *(lock + 8))
  {
    IORecursiveConditionLockUnlock_cold_1();
  }

  v2 = *(lock + 9);
  if (!v2)
  {
    IORecursiveConditionLockUnlock_cold_2();
  }

  v3 = v2 - 1;
  *(lock + 9) = v3;
  if (!v3)
  {
    *(lock + 8) = 0;

    pthread_mutex_unlock(lock);
  }
}

BOOL IORecursiveConditionLockHaveLock(IORecursiveConditionLock *lock)
{
  v2 = pthread_self();
  v3 = *(lock + 8);
  if (v2 == v3 && !*(lock + 9))
  {
    IORecursiveConditionLockHaveLock_cold_1();
  }

  return v2 == v3;
}

BOOL IORecursiveConditionLockTryLock(IORecursiveConditionLock *lock)
{
  v2 = pthread_self();
  if (v2 == *(lock + 8))
  {
    v5 = *(lock + 9);
    if (!v5)
    {
      IORecursiveConditionLockTryLock_cold_2();
    }

    *(lock + 9) = v5 + 1;
    return 1;
  }

  else
  {
    v3 = v2;
    if (pthread_mutex_trylock(lock))
    {
      return 0;
    }

    else
    {
      if (*(lock + 9))
      {
        IORecursiveConditionLockTryLock_cold_1();
      }

      result = 1;
      *(lock + 8) = v3;
      *(lock + 9) = 1;
    }
  }

  return result;
}

IORWLock *IORWLockAlloc(void)
{
  v0 = IOMallocZeroTyped(0xC8uLL, 0x1000040BEF03554uLL);
  v1 = v0;
  if (v0 && pthread_rwlock_init(v0, 0))
  {
    IORWLockAlloc_cold_1();
  }

  return v1;
}

void IORWLockFree(IORWLock *lock)
{
  if (lock)
  {
    pthread_rwlock_destroy(lock);

    IOFree(lock, 0xC8uLL);
  }
}

void IORWLockRead(IORWLock *lock)
{
  if (pthread_rwlock_rdlock(lock))
  {
    IORWLockRead_cold_1();
  }
}

void IORWLockWrite(IORWLock *lock)
{
  if (pthread_rwlock_wrlock(lock))
  {
    IORWLockWrite_cold_1();
  }
}

void IORWLockUnlock(IORWLock *lock)
{
  if (pthread_rwlock_unlock(lock))
  {
    IORWLockUnlock_cold_1();
  }
}

void IOCallOnce(dispatch_once_t *predicate, dispatch_block_t block)
{
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }
}

kern_return_t IOThreadLocalStorageKeyCreate(uint64_t *key)
{
  v3 = 0;
  result = pthread_key_create(&v3, 0);
  if (result)
  {
    return -536870211;
  }

  *key = v3;
  return result;
}

kern_return_t IOThreadLocalStorageKeyDelete(uint64_t key)
{
  if (pthread_key_delete(key))
  {
    return -536870206;
  }

  else
  {
    return 0;
  }
}

kern_return_t IOThreadLocalStorageSet(uint64_t key, const void *value)
{
  v2 = pthread_setspecific(key, value);
  if (v2 == 22)
  {
    v3 = -536870206;
  }

  else
  {
    v3 = -536870211;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

pthread_t ThreadStart(void *(__cdecl *a1)(void *), void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0;
  if (pthread_attr_init(&v8))
  {
    ThreadStart();
  }

  pthread_attr_setschedpolicy(&v8, 2);
  if (pthread_attr_getschedparam(&v8, &v6))
  {
    ThreadStart();
  }

  v6.sched_priority = 63;
  if (pthread_attr_setschedparam(&v8, &v6))
  {
    ThreadStart();
  }

  if (pthread_attr_setdetachstate(&v8, 2))
  {
    ThreadStart();
  }

  if (pthread_create(&v7, &v8, a1, a2))
  {
    ThreadStart();
  }

  pthread_attr_destroy(&v8);
  result = v7;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OSCopyOutObjects(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 > *(a1 + 24))
  {
    OSCopyOutObjects();
  }

  v4 = a2 + 24;
  if (v2 > ((a1 - (a2 + 24) + *(a1 + 4)) >> 3))
  {
    OSCopyOutObjects();
  }

  if (v2)
  {
    v5 = 0;
    v6 = a1 + 28;
    do
    {
      v7 = *(v6 + 8);
      if (HIBYTE(v7) == 1)
      {
        v10 = *(v4 + 8 * v5);
        if (v10)
        {
          length = 0;
          v11 = OSSerialization::createFromObject(v10);
          if (!v11)
          {
            OSCopyOutObjects();
          }

          v12 = v11;
          v13 = OSSerialization::finalizeBuffer(v11, &length);
          if (!v13)
          {
            OSCopyOutObjects();
          }

          *(v6 + 8) = 257;
          *(v6 + 12) = length;
          *v6 = v13;
          (v12->release)(v12);
        }

        v9 = 16;
      }

      else
      {
        if (HIBYTE(v7))
        {
          OSCopyOutObjects();
        }

        v8 = *(v4 + 8 * v5);
        if ((*(a2 + 8) & 0x10) == 0 && v8)
        {
          if ((*(v8 - 8) & 1) == 0)
          {
            OSCopyOutObjects();
          }

          v8 = *(v8 - 64);
          if (!v8)
          {
            OSCopyOutObjects();
          }
        }

        *v6 = v8;
        *(v6 + 4) = 0;
        *(v6 + 8) = v7 & 0xFF000000 | 0x130000;
        v9 = 12;
      }

      v6 += v9;
      ++v5;
    }

    while (v5 < v2);
  }

  return 0;
}

uint64_t OSCopyInObjects(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = a3 + 16;
  v4 = *(a3 + 16);
  if (v4 > a2[6])
  {
    OSCopyInObjects();
  }

  if (v4 > ((a2 + a2[1] - a3 - 24) >> 3))
  {
    OSCopyInObjects();
  }

  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = (a2 + 7);
  while (1)
  {
    v19 = 0;
    v9 = HIBYTE(*(v8 + 2));
    if (v9 != 1)
    {
      break;
    }

    v13 = *(v8 + 3);
    if (v13 && *v8)
    {
      v14 = OSSerialization::createFromBytes(*v8, v13, &__block_literal_global_0);
      if (!v14)
      {
        OSCopyInObjects();
      }

      v15 = v14;
      *(v8 + 3) = 0;
      *v8 = 0;
      v12 = OSSerialization::copyObject(v14);
      v19 = v12;
      (v15->release)(v15);
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v12 = 0;
    }

    v16 = 16;
LABEL_19:
    *(v3 + 8 + v6) = v12;
    v8 = (v8 + v16);
    ++v7;
    v6 += 8;
    if (v7 >= v4)
    {
      return 0;
    }
  }

  if (v9)
  {
    OSCopyInObjects();
  }

  v10 = *v8;
  if (!v10)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v11 = _OSObjectCopyIn(a1, v10, &v19);
  if (!v11)
  {
    v12 = v19;
LABEL_18:
    v16 = 12;
    goto LABEL_19;
  }

  LODWORD(v12) = v11;
LABEL_22:
  if (v7)
  {
    do
    {
      v18 = *(v3 + v6);
      if (v18)
      {
        (*(*v18 + 16))(v18);
      }

      *(v3 + v6) = 0;
      v6 -= 8;
    }

    while (v6);
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return 3758097090;
  }
}

char *astrcpy(const char *a1)
{
  v2 = strlen(a1);
  v3 = malloc_type_malloc(v2 + 1, 0x100004077774924uLL);

  return strcpy(v3, a1);
}

uint64_t OSLoadBundleByPath(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    while (strcmp(__s1, *v4))
    {
      v4 = *(v4 + 16);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    return 3758097093;
  }

  else
  {
LABEL_4:
    v5 = dlopen(__s1, 10);
    if (v5)
    {
      v6 = v5;
      v7 = _dyld_image_count();
      while (v7)
      {
        image_name = _dyld_get_image_name(--v7);
        if (!strcmp(__s1, image_name))
        {
          image_header = _dyld_get_image_header(v7);
          if (image_header)
          {
            OSScanClassesInMachO(a1, image_header);
            v10 = IOMallocZeroTyped(0x20uLL, 0x10F00402688C218uLL);
            v11 = 0;
            *v10 = astrcpy(__s1);
            v10[1] = v6;
            v10[2] = *(a1 + 48);
            *(a1 + 48) = v10;
            return v11;
          }

          break;
        }
      }

      v11 = 3758097084;
      dlclose(v6);
    }

    else
    {
      v11 = 3758097084;
      v12 = dlerror();
      IOLog("%s: %s\n", __s1, v12);
    }
  }

  return v11;
}

void OSScanClassesInMachO(uint64_t a1, mach_header_64 *mhp)
{
  size = 0;
  v3 = getsectiondata(mhp, "__DATA_CONST", "__osclassinfo", &size);
  if (v3)
  {
    v4 = v3;
    size >>= 3;
    os_unfair_lock_lock(a1);
    if (size)
    {
      v5 = 0;
      v6 = *(a1 + 56);
      do
      {
        for (i = (**&v4[8 * v5] + 4); v6; v6 = v6[2])
        {
          if (!strcmp(i, (**v6 + 4)))
          {
            OSScanClassesInMachO(i);
          }
        }

        IOLog("Found class: %s\n", i);
        v8 = IOMallocZeroTyped(0x18uLL, 0x60040CE5A77A8uLL);
        if (!v8)
        {
          OSScanClassesInMachO();
        }

        v6 = v8;
        *v8 = *&v4[8 * v5];
        v8[2] = *(a1 + 56);
        *(a1 + 56) = v8;
        ++v5;
      }

      while (v5 < size);
    }

    os_unfair_lock_unlock(a1);
  }
}

void DriverExecutableMain(int a1, uint64_t a2)
{
  if (a1 <= 2)
  {
    IOLog("usage: %s <server name> <server tag> <bundle ID> <bundle executable path> [<bundle executable path>] ...\n", *a2);
    exit(1);
  }

  IOUserServerMain(*(a2 + 8), *(a2 + 16), *(a2 + 24), a1 - 4, (a2 + 32));
  dispatch_main();
}

uint64_t IOUserServerMain(char *__s2, char *a2, const char *a3, unsigned int a4, char **a5)
{
  program_sdk_version = gIOExecutableSDKVersion;
  if (!gIOExecutableSDKVersion)
  {
    program_sdk_version = dyld_get_program_sdk_version();
    gIOExecutableSDKVersion = program_sdk_version;
  }

  v11 = HIWORD(program_sdk_version) > 0x14u || strncmp("com.motu.driver", __s2, 0xFuLL) != 0;
  v60 = 0;
  *io_main = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v54 = 0;
  init_port_set = 0;
  *init_port_setCnt = 0;
  gIOTimerInterruptDispatchLeakFix = v11;
  pthread_key_create(&gIOThreadTLSKey, 0);
  v12 = IOMallocZeroTyped(0x1458uLL, 0x1070040D14E2063uLL);
  gServer = v12;
  *v12 = 0;
  v12[8] = v12 + 8;
  v12[9] = v12 + 8;
  v13 = MEMORY[0x2383EC240]();
  if (host_get_io_main(v13, &io_main[1]))
  {
    IOUserServerMain_cold_1();
  }

  v14 = MEMORY[0x277D85F48];
  mach_port_deallocate(*MEMORY[0x277D85F48], v13);
  if (io_registry_entry_from_path(io_main[1], "IOService:/"))
  {
    IOUserServerMain_cold_2();
  }

  mach_port_deallocate(*v14, io_main[1]);
  if (io_service_open_extended(io_main[0], *v14, -1728053245, *MEMORY[0x277D85EF8], 0, 0))
  {
    IOUserServerMain_cold_3();
  }

  mach_port_deallocate(*v14, io_main[0]);
  if (v58)
  {
    v40 = *MEMORY[0x277D85DF8];
    v41 = mach_error_string(v58);
    fprintf(v40, "open(kIOKitUserServerClientType) %s (0x%x)\n", v41, v58);
    exit(1);
  }

  IOLibInit();
  if (mach_ports_lookup(*v14, &init_port_set, &init_port_setCnt[1]))
  {
    IOUserServerMain_cold_4();
  }

  v54 = *init_port_set;
  v15 = gServer;
  *(gServer + 8) = __s2;
  *(v15 + 16) = HIDWORD(v60);
  init_port_setCnt[0] = 1024;
  if (_NSGetExecutablePath((v15 + 4180), init_port_setCnt))
  {
    IOUserServerMain_cold_5();
  }

  __str = a2;
  v43 = __s2;
  v59 = 0;
  HIDWORD(v58) = 0;
  LODWORD(v60) = 1;
  if (io_connect_method(SHIDWORD(v60), 4097, &v54, 1, 0, 0, 0, 0, 0, &v58 + 1, &v57, &v60, 0, &v59))
  {
    IOLog("%s: kIOUserServerMethodStart failed, exiting\n", "IOUserServerMain");
    exit(0);
  }

  v16 = gServer;
  *(gServer + 24) = v57;
  OSScanLibraries(v16, "/DriverKit");
  OSCollectionsInitialize();
  v17 = gServer;
  if (_dyld_image_count())
  {
    v18 = 0;
    do
    {
      image_name = _dyld_get_image_name(v18);
      if ((gIODKDebug & 2) != 0)
      {
        IOLog("OSCollectionsRunInitializers(%s)\n", image_name);
      }

      image_header = _dyld_get_image_header(v18);
      size = 0;
      v21 = getsectiondata(image_header, "__DATA", "__osstringinfo", &size);
      if (v21)
      {
        v22 = v21;
        size >>= 4;
        os_unfair_lock_lock(v17);
        if (size)
        {
          v23 = 0;
          v24 = (v22 + 8);
          do
          {
            v25 = OSString::withCStringNoCopy(*(v24 - 1));
            if (!v25)
            {
              IOUserServerMain_cold_6();
            }

            *v24 = v25;
            v24 += 2;
            ++v23;
          }

          while (v23 < size);
        }

        os_unfair_lock_unlock(v17);
      }

      ++v18;
    }

    while (v18 < _dyld_image_count());
  }

  if (a4)
  {
    v26 = a4;
    do
    {
      v27 = *a5++;
      OSLoadBundleByPath(gServer, v27);
      --v26;
    }

    while (v26);
  }

  __endptr = 0;
  OSScanLibraries(gServer, 0);
  v28 = strtoll(__str, &__endptr, 0);
  if (*__endptr)
  {
    IOUserServerMain_cold_7();
  }

  v29 = v28;
  v30 = OSString::withCString(a3);
  v32 = IOUserServer::Create(v43, v29, 0, v30, (gServer + 40), v31);
  if (v30)
  {
    (v30->release)(v30);
  }

  if (v32)
  {
    IOUserServerMain_cold_8();
  }

  v33 = gServer;
  *(*(gServer + 40) + 48) = gServer;
  IODispatchQueue::Create("Root", 0, 0, (v33 + 32));
  if (IOService::RegisterService(*(gServer + 40), 0))
  {
    IOUserServerMain_cold_9();
  }

  if ((gIODKDebug & 2) != 0)
  {
    IOLog("Registered: %s\n", v43);
  }

  size = 0;
  p_size = &size;
  v51 = 0x2000000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2000000000;
  v48 = 0;
  IODispatchQueue::Create("q1", 0, 0, &v52);
  IODispatchQueue::Create("q2", 0, 0, v46 + 3);
  v34 = p_size[3];
  context[0] = MEMORY[0x277D85DD0];
  context[1] = 1107296256;
  context[2] = __IOUserServerMain_block_invoke;
  context[3] = &__block_descriptor_tmp_77;
  context[4] = &v45;
  context[5] = &size;
  if (__IOUserServerMain_block_invoke)
  {
    v35 = __IOUserServerMain_block_invoke;
  }

  else
  {
    v35 = 0;
  }

  v36 = MEMORY[0x277D85F48];
  IODispatchQueue::DispatchSync_f(v34, context, v35);
  (*(*p_size[3] + 16))(p_size[3]);
  (v46[3]->release)(v46[3]);
  if (init_port_setCnt[1])
  {
    v37 = 0;
    do
    {
      if (mach_port_deallocate(*v36, init_port_set[v37]))
      {
        IOUserServerMain_cold_10();
      }

      ++v37;
    }

    while (v37 < init_port_setCnt[1]);
    v38 = 4 * init_port_setCnt[1];
  }

  else
  {
    v38 = 0;
  }

  mig_deallocate(init_port_set, v38);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&size, 8);
  return 0;
}

uint64_t IOGetExecutableSDKVersion()
{
  result = gIOExecutableSDKVersion;
  if (!gIOExecutableSDKVersion)
  {
    result = dyld_get_program_sdk_version();
    gIOExecutableSDKVersion = result;
  }

  return result;
}

uint64_t IODriverKitTest()
{
  v30 = 0;
  v31[0] = &v30;
  v31[1] = 0x2000000000;
  v31[2] = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  v24 = 0;
  v25[0] = &v24;
  v25[1] = 0x2000000000;
  v25[2] = 0;
  v0 = IOMallocZeroTyped(4uLL, 0x100004052888210uLL);
  if (!v0)
  {
    IODriverKitTest_cold_8(v31);
  }

  *v0 = 0;
  *(v31[0] + 24) = v0;
  v1 = IORWLockAlloc();
  v27[3] = v1;
  if (!v1)
  {
    IODriverKitTest_cold_7();
  }

  v2 = IOMallocZeroTyped(8uLL, 0x100004000313F17uLL);
  if (!v2)
  {
    IODriverKitTest_cold_6(v25);
  }

  *v2 = 0;
  *(v25[0] + 24) = v2;
  v3 = dispatch_group_create();
  if (!v3)
  {
    IODriverKitTest_cold_5();
  }

  v4 = v3;
  v5 = dispatch_queue_create("LockTest", MEMORY[0x277D85CD8]);
  if (!v5)
  {
    IODriverKitTest_cold_4();
  }

  v6 = v5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v7 = MEMORY[0x277D85DD0];
  v8 = 100;
  do
  {
    block[0] = v7;
    block[1] = 1107296256;
    block[2] = ___ZL8LockTesti_block_invoke;
    block[3] = &__block_descriptor_tmp_219;
    block[4] = &v30;
    block[5] = &v20;
    dispatch_group_async(v4, v6, block);
    --v8;
  }

  while (v8);
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v21 + 6) != 100)
  {
    IODriverKitTest_cold_1();
  }

  *(v21 + 6) = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 100;
  do
  {
    v18[0] = v9;
    v18[1] = 1107296256;
    v18[2] = ___ZL8LockTesti_block_invoke_221;
    v18[3] = &__block_descriptor_tmp_224;
    v18[4] = &v26;
    v18[5] = &v20;
    dispatch_group_async(v4, v6, v18);
    --v10;
  }

  while (v10);
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v21 + 6) != 100)
  {
    IODriverKitTest_cold_2();
  }

  *(v21 + 6) = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 100;
  do
  {
    v17[0] = v11;
    v17[1] = 1107296256;
    v17[2] = ___ZL8LockTesti_block_invoke_225;
    v17[3] = &__block_descriptor_tmp_228;
    v17[4] = &v24;
    v17[5] = &v20;
    dispatch_group_async(v4, v6, v17);
    --v12;
  }

  while (v12);
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v21 + 6) != 100)
  {
    IODriverKitTest_cold_3();
  }

  v13 = *(v31[0] + 24);
  if (v13)
  {
    IOFree(v13, 4uLL);
    *(v31[0] + 24) = 0;
  }

  v14 = v27[3];
  if (v14)
  {
    pthread_rwlock_destroy(v27[3]);
    IOFree(v14, 0xC8uLL);
    v27[3] = 0;
  }

  v15 = *(v25[0] + 24);
  if (v15)
  {
    IOFree(v15, 8uLL);
    *(v25[0] + 24) = 0;
  }

  dispatch_release(v4);
  dispatch_release(v6);
  IOLog("LockTest ok\n");
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  return 0;
}

void OSScanLibraries(uint64_t a1, const char *a2)
{
  if (_dyld_image_count())
  {
    v4 = 0;
    do
    {
      image_name = _dyld_get_image_name(v4);
      v6 = image_name;
      if (!a2 || (v7 = strlen(image_name), v8 = strlen(a2), v7 >= v8) && !strncmp(&v6[v7 - v8], a2, v8))
      {
        v9 = *(a1 + 48);
        if (v9)
        {
          while (strcmp(v6, *v9))
          {
            v9 = *(v9 + 16);
            if (!v9)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
LABEL_9:
          v10 = IOMallocZeroTyped(0x20uLL, 0x10F00402688C218uLL);
          v11 = astrcpy(v6);
          *v10 = v11;
          v10[2] = *(a1 + 48);
          *(v10 + 24) = strcmp(v11, (a1 + 4180)) == 0;
          *(a1 + 48) = v10;
          if ((gIODKDebug & 2) != 0)
          {
            IOLog("OSScanClassesInMachO(%s)\n", v6);
          }

          image_header = _dyld_get_image_header(v4);
          OSScanClassesInMachO(a1, image_header);
        }
      }

      ++v4;
    }

    while (v4 < _dyld_image_count());
  }

  os_unfair_lock_lock(a1);
  do
  {
    v13 = *(a1 + 56);
    if (!v13)
    {
      break;
    }

    v14 = 0;
    do
    {
      if (v13[1])
      {
        goto LABEL_29;
      }

      v15 = *v13;
      v16 = **v13;
      if (!strcmp("OSMetaClassBase", (v16 + 100)))
      {
        v18 = 0;
LABEL_25:
        v19 = IOMallocZeroTyped(0x78uLL, 0x100004077774924uLL);
        if (!v19)
        {
          OSScanLibraries();
        }

        v20 = v19;
        *v19 = a1;
        *(v19 + 40) = 1;
        v21 = (v19 + 88);
        atomic_store(1u, v19 + 24);
        *(v19 + 13) = v19 + 88;
        v22 = IOMallocZeroTyped(0x28uLL, 0x10700400BBADE83uLL);
        *(v20 + 14) = v22;
        *v22 = v15;
        v22[1] = v18;
        if ((v15[11])(v21))
        {
          OSScanLibraries();
        }

        v13[1] = v21;
        *(*v13)[1] = v21;
        if (OSRegisterClass(a1, v21))
        {
          OSScanLibraries();
        }

        v14 = 1;
        goto LABEL_29;
      }

      v17 = *(a1 + 56);
      if (!v17)
      {
LABEL_37:
        OSScanLibraries((v16 + 100));
      }

      while (strcmp((v16 + 100), (**v17 + 4)))
      {
        v17 = v17[2];
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      v18 = v17[1];
      if (v18)
      {
        goto LABEL_25;
      }

LABEL_29:
      v13 = v13[2];
    }

    while (v13);
  }

  while ((v14 & 1) != 0);

  os_unfair_lock_unlock(a1);
}

kern_return_t IODispatchQueue::Create(const char *name, uint64_t options, uint64_t priority, IODispatchQueue **queue)
{
  queuea = 0;
  namea = 0;
  if (IODispatchQueue::Create_Call(name, options, priority, &queuea))
  {
    IODispatchQueue::Create();
  }

  ivars = queuea->ivars;
  *(ivars + 4) = options;
  if (mach_port_allocate(*MEMORY[0x277D85F48], 1u, &namea))
  {
    IODispatchQueue::Create();
  }

  v8 = namea;
  *(ivars + 6) = namea;
  if (IODispatchQueue::SetPort(queuea, v8, 0))
  {
    IODispatchQueue::Create();
  }

  if (options)
  {
    v12 = IORecursiveConditionLockAlloc();
    *(ivars + 6) = v12;
    if (!v12)
    {
      IODispatchQueue::Create();
    }

    v13 = IOMallocZeroTyped(0x1000uLL, 0x1080040E1BEC80AuLL);
    *(ivars + 5) = v13;
    if (!v13)
    {
      IODispatchQueue::Create();
    }

    for (i = 0; i != 4096; i += 64)
    {
      pthread_cond_init((*(ivars + 5) + i), 0);
    }

    v11 = dispatch_queue_create(name, MEMORY[0x277D85CD8]);
    *ivars = v11;
    if (!v11)
    {
      IODispatchQueue::Create();
    }
  }

  else
  {
    inactive = dispatch_workloop_create_inactive(name);
    dispatch_workloop_set_scheduler_priority();
    dispatch_activate(inactive);
    v10 = dispatch_queue_create_with_target_V2(name, 0, inactive);
    *ivars = v10;
    if (!v10)
    {
      IODispatchQueue::Create();
    }

    dispatch_release(inactive);
    v11 = *ivars;
  }

  dispatch_queue_set_specific(v11, &gIODispatchQueueKey, queuea, 0);
  v15 = *ivars;
  f = dispatch_mach_create_f();
  *(ivars + 2) = f;
  if (!f)
  {
    IODispatchQueue::Create();
  }

  dispatch_mach_connect();
  *queue = queuea;
  return 0;
}

void __IOUserServerMain_block_invoke(int8x16_t *a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v1 = vextq_s8(a1[2], a1[2], 8uLL);
  v2 = *(*(a1[2].i64[0] + 8) + 24);
  v4[1] = 1107296256;
  v4[2] = __IOUserServerMain_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_74;
  v5 = v1;
  if (__IOUserServerMain_block_invoke_2)
  {
    v3 = __IOUserServerMain_block_invoke_2;
  }

  else
  {
    v3 = 0;
  }

  IODispatchQueue::DispatchSync_f(v2, v4, v3);
}

void __IOUserServerMain_block_invoke_2(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v4[1] = 1107296256;
  v4[2] = __IOUserServerMain_block_invoke_3;
  v4[3] = &__block_descriptor_tmp_71;
  v5 = v1;
  if (__IOUserServerMain_block_invoke_3)
  {
    v3 = __IOUserServerMain_block_invoke_3;
  }

  else
  {
    v3 = 0;
  }

  IODispatchQueue::DispatchSync_f(v2, v4, v3);
}

BOOL __IOUserServerMain_block_invoke_3(uint64_t a1)
{
  program_sdk_version = gIOExecutableSDKVersion;
  if (!gIOExecutableSDKVersion)
  {
    program_sdk_version = dyld_get_program_sdk_version();
    gIOExecutableSDKVersion = program_sdk_version;
  }

  IOLog("OnQueue SDK version 0x%x\n", program_sdk_version);
  if (!IODispatchQueue::OnQueue(*(*(*(a1 + 32) + 8) + 24)))
  {
    __IOUserServerMain_block_invoke_3_cold_1();
  }

  result = IODispatchQueue::OnQueue(*(*(*(a1 + 40) + 8) + 24));
  if (!result)
  {
    __IOUserServerMain_block_invoke_3_cold_2();
  }

  return result;
}

void __copy_helper_block_8_32r40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void __destroy_helper_block_8_32r40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void IOService::free(IOService *this)
{
  os_unfair_lock_lock(gServer);
  ivars = this->ivars;
  v3 = (gServer + 64);
  v4 = *(ivars + 4);
  v5 = *(ivars + 5);
  v6 = (gServer + 72);
  if (v4 != (gServer + 64))
  {
    v6 = v4 + 5;
  }

  if (v5 != v3)
  {
    v3 = v5 + 4;
  }

  if (*v6 == ivars && *v3 == ivars)
  {
    *v6 = v5;
    *v3 = v4;
    *(ivars + 4) = 0;
    *(ivars + 5) = 0;
    os_unfair_lock_unlock(gServer);
    v8 = this->ivars;
    if (v8)
    {
      IOFree(v8, 0x38uLL);
      this->ivars = 0;
    }

    OSObjectFree(this);
  }

  else
  {
    __break(1u);
  }
}

uint64_t IOUserServer::LoadModule_Impl(IOUserServer *this, char *__s1)
{
  if ((gIODKDebug & 2) != 0)
  {
    IOLog("Load module %s\n", __s1);
  }

  v4 = *(this + 6);

  return OSLoadBundleByPath(v4, __s1);
}

kern_return_t IODispatchQueue::Cancel(IODispatchQueue *this, IODispatchQueueCancelHandler handler)
{
  v2 = *this->ivars;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = ___ZN15IODispatchQueue6CancelEU13block_pointerFvvE_block_invoke;
  v4[3] = &__block_descriptor_tmp_80;
  v4[4] = handler;
  v4[5] = this;
  dispatch_async(v2, v4);
  return 0;
}

uint64_t ___ZN15IODispatchQueue6CancelEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[5];
  if (*(v3 + 48))
  {
    (*(*v2 + 8))(*(a1 + 40));
    IORecursiveConditionLockLock(*(v2[5] + 48));
    v3 = v2[5];
  }

  else
  {
    v2 = 0;
  }

  *(v3 + 28) = 1;
  result = (*(*(a1 + 32) + 16))();
  if (v2)
  {
    IORecursiveConditionLockUnlock(*(v2[5] + 48));
    v5 = *(*v2 + 16);

    return v5(v2);
  }

  return result;
}

void IODispatchQueue::free(IODispatchQueue *this)
{
  ivars = this->ivars;
  if ((*(ivars + 32) & 1) == 0)
  {
    goto LABEL_19;
  }

  if (*(ivars + 5))
  {
    for (i = 0; i != 4096; i += 64)
    {
      pthread_cond_destroy((*(this->ivars + 5) + i));
    }

    ivars = this->ivars;
    if (*(ivars + 5))
    {
      IOFree(*(ivars + 5), 0x1000uLL);
      *(this->ivars + 5) = 0;
      ivars = this->ivars;
    }
  }

  dispatch_release(*ivars);
  *this->ivars = 0;
  ivars = this->ivars;
  if (!*(ivars + 6) || (IOFree(*(ivars + 6), 0x50uLL), *(this->ivars + 6) = 0, (ivars = this->ivars) != 0))
  {
LABEL_19:
    if (*(ivars + 2))
    {
      v4 = *(ivars + 2);

      MEMORY[0x282201CF8](v4);
      return;
    }

    IOFree(ivars, 0x48uLL);
    this->ivars = 0;
  }

  OSObjectFree(this);
}

void uiomachchannel(OSMetaClassBase *a1, uint64_t a2)
{
  meta = a1[1].meta;
  switch(a2)
  {
    case 8:
      dispatch_release(meta->meta);
      if (meta->__vftable)
      {
        dispatch_release(meta->__vftable);
        meta->__vftable = 0;
      }

      v12 = a1[1].meta;
      if (v12)
      {
        IOFree(v12, 0x48uLL);
        a1[1].meta = 0;
      }

      OSObjectFree(a1);
      break;
    case 7:
      msg = dispatch_mach_msg_get_msg();
      if ((*(msg + 8) - 1) <= 0xFFFFFFFD)
      {
        uiomachchannel();
      }

      v11 = *(msg + 12);
      if (v11 + 1 >= 2)
      {
        if (LODWORD(meta->metaClassPrivate) != v11)
        {
          uiomachchannel();
        }

        if (mach_port_mod_refs(*MEMORY[0x277D85F48], v11, 1u, -1))
        {
          uiomachchannel();
        }
      }

      break;
    case 2:
      v4 = dispatch_mach_msg_get_msg();
      v5 = v4;
      if (meta[1].meta)
      {
        v6 = malloc_type_malloc(*(v4 + 4) + 16, 0x20040A4A59CD2uLL);
        if (!v6)
        {
          uiomachchannel();
        }

        v7 = v6;
        v8 = (v6 + 2);
        *v7 = a1;
        v7[1] = v8;
        memcpy(v8, v5, v5[1]);
        v9 = meta->__vftable;

        dispatch_async_f(v9, v7, uiomessage);
      }

      else
      {
        v13[0] = a1;
        v13[1] = v4;
        uiomessage(v13);
      }

      break;
  }
}

void IODispatchQueue::Log(const char *message, IODispatchLogFunction output)
{
  specific = dispatch_get_specific(&gIODispatchQueueKey);
  label = dispatch_queue_get_label(*specific[5]);
  output("%s queue: %s\n", message, label);
}

void IODispatchQueue::DispatchAsync(IODispatchQueue *this, IODispatchBlock block)
{
  v3 = _Block_copy(block);
  v4 = *this->ivars;
  blocka[0] = MEMORY[0x277D85DD0];
  blocka[1] = 0x40000000;
  blocka[2] = ___ZN15IODispatchQueue15DispatchAsync_fEPvPFvS0_E_block_invoke;
  blocka[3] = &__block_descriptor_tmp_87;
  blocka[4] = this;
  blocka[5] = IODispatchQueueBlockFunction;
  blocka[6] = v3;
  dispatch_async(v4, blocka);
}

void IODispatchQueueBlockFunction(void (**a1)(void))
{
  a1[2]();

  _Block_release(a1);
}

void ___ZN15IODispatchQueue15DispatchAsync_fEPvPFvS0_E_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if ((*(v2 + 28) & 1) == 0)
  {
    v4 = *(v2 + 48);
    if (v4)
    {
      IORecursiveConditionLockLock(v4);
      *(*(v1 + 40) + 29) = 1;
      (*(a1 + 40))(*(a1 + 48));
      *(*(v1 + 40) + 29) = 0;
      v5 = *(*(v1 + 40) + 48);

      IORecursiveConditionLockUnlock(v5);
    }

    else
    {
      v6[0] = *(v2 + 8);
      v6[1] = v1;
      *(v2 + 8) = v6;
      *(*(v1 + 40) + 29) = 1;
      (*(a1 + 40))(*(a1 + 48));
      *(*(v1 + 40) + 29) = 0;
      *(*(v1 + 40) + 8) = v6[0];
    }
  }
}

void IODispatchQueue::DispatchConcurrent(IODispatchQueue *this, IODispatchBlock block)
{
  v3 = _Block_copy(block);

  IODispatchQueue::DispatchConcurrent_f(this, v3, IODispatchQueueBlockFunction);
}

void IODispatchQueue::DispatchConcurrent_f(IODispatchQueue *this, void *context, IODispatchFunction function)
{
  ivars = this->ivars;
  if (!*(ivars + 6))
  {
    IODispatchQueue::DispatchConcurrent_f();
  }

  v4 = *ivars;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN15IODispatchQueue20DispatchConcurrent_fEPvPFvS0_E_block_invoke;
  v5[3] = &__block_descriptor_tmp_88;
  v5[4] = function;
  v5[5] = context;
  dispatch_async(v4, v5);
}

void IODispatchQueue::DispatchSync_f(IODispatchQueue *this, void *context, IODispatchFunction function)
{
  ivars = this->ivars;
  v7 = *(ivars + 6);
  if (v7)
  {
    IORecursiveConditionLockLock(v7);
    *(this->ivars + 29) = 1;
    (function)(context);
    *(this->ivars + 29) = 0;
    v8 = *(this->ivars + 6);

    IORecursiveConditionLockUnlock(v8);
    return;
  }

  specific = dispatch_get_specific(&gIODispatchQueueKey);
  if (!specific)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = *(specific[5] + 8);
  if (!v10)
  {
LABEL_12:
    v12 = *ivars;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v13[2] = ___ZN15IODispatchQueue14DispatchSync_fEPvPFvS0_E_block_invoke;
    v13[3] = &__block_descriptor_tmp_89;
    v13[4] = this;
    v13[5] = v10;
    v13[6] = function;
    v13[7] = context;
    dispatch_sync(v12, v13);
    return;
  }

  v11 = *(specific[5] + 8);
  while (v11[1] != this)
  {
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  *(ivars + 29) = 1;
  (function)(context);
  *(this->ivars + 29) = 0;
}

uint64_t ___ZN15IODispatchQueue14DispatchSync_fEPvPFvS0_E_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 40);
  if ((*(v2 + 28) & 1) == 0)
  {
    v4[0] = *(result + 40);
    v4[1] = v1;
    v3 = *(v2 + 8);
    *(v2 + 8) = v4;
    *(*(v1 + 40) + 29) = 1;
    result = (*(result + 48))(*(result + 56));
    *(*(v1 + 40) + 29) = 0;
    *(*(v1 + 40) + 8) = v3;
  }

  return result;
}

kern_return_t IODispatchQueue::SleepWithDeadline(IODispatchQueue *this, void *event, uint64_t options, uint64_t deadline)
{
  v4 = deadline;
  v5 = options;
  v15 = deadline;
  result = -536870206;
  if (options > 0x87u)
  {
    if (options != 136)
    {
      if (options == 196)
      {
        v10 = mach_continuous_time();
      }

      else
      {
        if (options != 200)
        {
          return result;
        }

        v10 = mach_absolute_time();
      }

      v15 = v4 - v10;
      if (v4 >= v10)
      {
        convert_mach_time_to_nsec(&v15);
        v13 = v15;
      }

      else
      {
        v13 = 1;
        v15 = 1;
      }

      v4 = clock_gettime_nsec_np(_CLOCK_REALTIME) + v13;
      goto LABEL_22;
    }

    v9 = _CLOCK_UPTIME_RAW;
LABEL_13:
    v11 = clock_gettime_nsec_np(v9);
    if (v4 < v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v4 - v11;
    }

    v4 = v12 + clock_gettime_nsec_np(_CLOCK_REALTIME);
LABEL_22:
    v15 = v4;
    goto LABEL_23;
  }

  if (!options)
  {
    if (deadline)
    {
      IODispatchQueue::SleepWithDeadline();
    }

    goto LABEL_25;
  }

  if (options != 128)
  {
    if (options != 132)
    {
      return result;
    }

    v9 = _CLOCK_MONOTONIC_RAW;
    goto LABEL_13;
  }

LABEL_23:
  if (!v4)
  {
LABEL_25:
    v14.tv_sec = 0;
    v14.tv_nsec = 0;
    return _IODispatchQueueSleep(this->ivars, v5 & 0xFF00, event, v14);
  }

  v14.tv_sec = v4 / 0x3B9ACA00;
  v14.tv_nsec = v4 % 0x3B9ACA00;
  return _IODispatchQueueSleep(this->ivars, v5 & 0xFF00, event, v14);
}

uint64_t convert_mach_time_to_nsec(unint64_t *a1)
{
  if (mach_timebase_info(&info))
  {
    convert_mach_time_to_nsec();
  }

  result = *a1;
  if (*a1 < 0x7FFFFFFFFFFFFFFFuLL / info.numer * info.denom)
  {
    return absolutetime_to_nanoseconds(result, a1);
  }

  *a1 = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t _IODispatchQueueSleep(IODispatchQueue_LocalIVars *a1, __int16 a2, void *a3, timespec a4)
{
  v5 = 3758097090;
  v23 = a4;
  v6 = *(a1 + 6);
  if (!v6)
  {
    return 3758097112;
  }

  if (a3)
  {
    if (!IORecursiveConditionLockHaveLock(v6))
    {
      _IODispatchQueueSleep();
    }

    v9 = *(a1 + 5);
    v10 = 64;
    v11 = v9;
    do
    {
      if (*(v11 + 48) == a3)
      {
        v13 = *(v11 + 56) + 1;
        v9 = v11;
        goto LABEL_14;
      }

      v11 += 64;
      --v10;
    }

    while (v10);
    v12 = 64;
    while (*(v9 + 48))
    {
      v9 += 64;
      if (!--v12)
      {
        return 3758097115;
      }
    }

    *(v9 + 48) = a3;
    *(v9 + 56) = 0;
    v13 = 1;
LABEL_14:
    *(v9 + 56) = v13;
    if ((a2 & 0x100) != 0)
    {
      v14 = *(v9 + 60);
    }

    else
    {
      v14 = 0;
    }

    while (*(v9 + 48) == a3 && *(v9 + 60) == v14)
    {
      v15 = *(a1 + 6);
      v16 = *(v15 + 72);
      *(v15 + 64) = 0;
      *(v15 + 72) = 0;
      *(a1 + 29) = 0;
      if (v23.tv_sec)
      {
        v17 = pthread_cond_timedwait(v9, v15, &v23);
      }

      else
      {
        v17 = pthread_cond_wait(v9, v15);
      }

      v18 = v17;
      v19 = *(a1 + 6);
      if (*(v19 + 72))
      {
        _IODispatchQueueSleep();
      }

      if (*(v19 + 64))
      {
        _IODispatchQueueSleep();
      }

      *(a1 + 29) = 1;
      *(v19 + 72) = v16;
      *(*(a1 + 6) + 64) = pthread_self();
      if (v18)
      {
        goto LABEL_27;
      }
    }

    v18 = 0;
LABEL_27:
    v20 = *(v9 + 56) - 1;
    *(v9 + 56) = v20;
    if (!v20)
    {
      *(v9 + 48) = 0;
    }

    v21 = -536870199;
    if (v18 == 60)
    {
      v21 = -536870186;
    }

    if (v18)
    {
      return v21;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

kern_return_t IODispatchQueue::SleepWithTimeout(IODispatchQueue *this, void *event, uint64_t timeout)
{
  if (timeout)
  {
    v6 = clock_gettime_nsec_np(_CLOCK_REALTIME);
    v7.tv_sec = (v6 + timeout) / 0x3B9ACA00;
    v7.tv_nsec = (v6 + timeout) % 0x3B9ACA00;
  }

  else
  {
    v7.tv_nsec = 0;
    v7.tv_sec = 0;
  }

  ivars = this->ivars;

  return _IODispatchQueueSleep(ivars, 0, event, v7);
}

kern_return_t IODispatchQueue::WakeupWithOptions(IODispatchQueue *this, void *event, uint64_t options)
{
  v4 = -536870206;
  v5 = *(this->ivars + 6);
  if (!v5)
  {
    return -536870184;
  }

  if (event)
  {
    v7 = options;
    if (!IORecursiveConditionLockHaveLock(v5))
    {
      IODispatchQueue::WakeupWithOptions();
    }

    v8 = *(this->ivars + 5);
    v9 = 64;
    while (*(v8 + 48) != event)
    {
      v8 += 64;
      if (!--v9)
      {
        return -536870160;
      }
    }

    ++*(v8 + 60);
    if (v7)
    {
      v10 = pthread_cond_broadcast(v8);
    }

    else
    {
      v10 = pthread_cond_signal(v8);
    }

    if (v10)
    {
      IODispatchQueue::WakeupWithOptions();
    }

    return 0;
  }

  return v4;
}

kern_return_t IODispatchQueue::RunAction(IODispatchQueue *this, IODispatchAction action)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = ___ZN15IODispatchQueue9RunActionEU13block_pointerFivE_block_invoke;
  v5[3] = &__block_descriptor_tmp_93;
  v5[4] = action;
  v5[5] = &v6;
  if (___ZN15IODispatchQueue9RunActionEU13block_pointerFivE_block_invoke)
  {
    v2 = ___ZN15IODispatchQueue9RunActionEU13block_pointerFivE_block_invoke;
  }

  else
  {
    v2 = 0;
  }

  v9 = 0;
  IODispatchQueue::DispatchSync_f(this, v5, v2);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t ___ZN15IODispatchQueue9RunActionEU13block_pointerFivE_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __copy_helper_block_8_32b40r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 7);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 8);
}

void __destroy_helper_block_8_32b40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 7);
}

kern_return_t IOInterruptDispatchSource::Create(IOService *provider, uint32_t index, IODispatchQueue *queue, IOInterruptDispatchSource **source)
{
  v6 = IOInterruptDispatchSource::Create_Call(provider, index, queue, source);
  if (!v6)
  {
    *((*source)->ivars + 1) = queue;
    (queue->retain)(queue);
  }

  return v6;
}

BOOL IOInterruptDispatchSource::init(IOInterruptDispatchSource *this)
{
  v2 = IOMallocZeroTyped(0x38uLL, 0x1020040764E79FEuLL);
  this->ivars = v2;
  *v2 = this;
  return 1;
}

uint64_t non-virtual thunk toIOInterruptDispatchSource::init(IOInterruptDispatchSource *this)
{
  p_ivars = &this[-1].ivars;
  v3 = IOMallocZeroTyped(0x38uLL, 0x1020040764E79FEuLL);
  this->IODispatchSource::OSObject::OSObjectInterface::__vftable = v3;
  v3->init = p_ivars;
  return 1;
}

void IOInterruptDispatchSource::free(IOInterruptDispatchSource *this)
{
  if (gIOTimerInterruptDispatchLeakFix == 1)
  {
    v2 = *(this->ivars + 3);
    if (v2)
    {
      (*(*v2 + 16))(v2);
      *(this->ivars + 3) = 0;
    }
  }

  ivars = this->ivars;
  v4 = *(ivars + 1);
  if (!v4 || ((*(*v4 + 16))(*(ivars + 1)), *(this->ivars + 1) = 0, (ivars = this->ivars) != 0))
  {
    IOFree(ivars, 0x38uLL);
    this->ivars = 0;
  }

  OSObjectFree(this);
}

kern_return_t IOInterruptDispatchSource::SetHandler_Impl(IOInterruptDispatchSource *this, OSAction *action)
{
  v4 = *(this->ivars + 3);
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(this->ivars + 3) = 0;
  }

  (action->retain)(action);
  *(this->ivars + 3) = action;
  return 0;
}

kern_return_t IOInterruptDispatchSource::SetEnableWithCompletion_Impl(IOInterruptDispatchSource *this, BOOL enable, IODispatchSourceCancelHandler handler)
{
  v6 = IODispatchSource::SetEnableWithCompletion(this, enable, handler, IODispatchSource::_Dispatch);
  if (!v6)
  {
    v7 = *(this->ivars + 1);
    context[0] = MEMORY[0x277D85DD0];
    context[1] = 1107296256;
    context[2] = ___ZN25IOInterruptDispatchSource28SetEnableWithCompletion_ImplEbU13block_pointerFvvE_block_invoke;
    context[3] = &__block_descriptor_tmp_96;
    v11 = enable;
    context[4] = handler;
    context[5] = this;
    if (___ZN25IOInterruptDispatchSource28SetEnableWithCompletion_ImplEbU13block_pointerFvvE_block_invoke)
    {
      v8 = ___ZN25IOInterruptDispatchSource28SetEnableWithCompletion_ImplEbU13block_pointerFvvE_block_invoke;
    }

    else
    {
      v8 = 0;
    }

    IODispatchQueue::DispatchSync_f(v7, context, v8);
  }

  return v6;
}

uint64_t ___ZN25IOInterruptDispatchSource28SetEnableWithCompletion_ImplEbU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  *(v2[6] + 32) = v3;
  if (v3 == 1 && !*(v2[6] + 16))
  {
    (*(*v2 + 8))(v2);
    *(v2[6] + 16) = ThreadStart(IOInterruptDispatchSourceThread, v2);
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t IOInterruptDispatchSourceThread(_WORD *a1)
{
  if ((*(a1 - 4) & 1) == 0)
  {
    IOInterruptDispatchSourceThread();
  }

  v2 = *(a1 + 6);
  while (!iokit_user_client_trap(*(*(a1 - 11) + 16), 0, *(a1 - 8), v9, 0, 0, 0, 0))
  {
    if (!atomic_fetch_add(v2 + 5, v9[1]))
    {
      v2[6] = v9[0];
      v3 = v2[1];
      if (*(v3->ivars + 29))
      {
        (*(*a1 + 8))(a1);
        v4 = **(v2[1] + 40);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZL31IOInterruptDispatchSourceThreadPv_block_invoke;
        block[3] = &__block_descriptor_tmp_248;
        block[4] = v2;
        block[5] = a1;
        dispatch_async(v4, block);
      }

      else
      {
        context[0] = MEMORY[0x277D85DD0];
        context[1] = 0x40000000;
        context[2] = ___ZL31IOInterruptDispatchSourceThreadPv_block_invoke_2;
        context[3] = &__block_descriptor_tmp_249;
        context[4] = a1;
        if (___ZL31IOInterruptDispatchSourceThreadPv_block_invoke_2)
        {
          v5 = ___ZL31IOInterruptDispatchSourceThreadPv_block_invoke_2;
        }

        else
        {
          v5 = 0;
        }

        IODispatchQueue::DispatchSync_f(v3, context, v5);
      }
    }
  }

  (*(*a1 + 16))(a1);
  return 0;
}

kern_return_t IOInterruptDispatchSource::Cancel_Impl(IOInterruptDispatchSource *this, IODispatchSourceCancelHandler handler)
{
  if (IODispatchSource::Cancel(this, 0, IODispatchSource::_Dispatch))
  {
    IOInterruptDispatchSource::Cancel_Impl();
  }

  v4 = **(*(this->ivars + 1) + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = ___ZN25IOInterruptDispatchSource11Cancel_ImplEU13block_pointerFvvE_block_invoke;
  v6[3] = &__block_descriptor_tmp_99;
  v6[4] = handler;
  v6[5] = this;
  dispatch_async(v4, v6);
  return 0;
}

uint64_t ___ZN25IOInterruptDispatchSource11Cancel_ImplEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 48);
  v4 = *(v3 + 8);
  if (*(v4[5] + 48))
  {
    (*(*v4 + 8))(v4);
    IORecursiveConditionLockLock(*(*(*(*(v2 + 48) + 8) + 40) + 48));
    v3 = *(v2 + 48);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 33) = 1;
  *(*(v2 + 48) + 32) = 0;
  result = (*(*(a1 + 32) + 16))();
  if (v4)
  {
    IORecursiveConditionLockUnlock(*(v4[5] + 48));
    v6 = *(*v4 + 16);

    return v6(v4);
  }

  return result;
}

kern_return_t IOInterruptDispatchSource::CheckForWork_Impl(IOInterruptDispatchSource *this, const IORPC *rpc, BOOL synchronous)
{
  v5 = -536870184;
  ivars = this->ivars;
  if (*(ivars + 32) == 1)
  {
    if (*(ivars + 3))
    {
      v7 = *(ivars + 6);
      v8 = atomic_exchange(ivars + 5, 0);
      if (v8)
      {
        v11 = v3;
        v12 = v4;
        v10 = *rpc;
        return IOInterruptDispatchSource::InterruptOccurred(this, &v10, *(this->ivars + 3), v8, v7, 0);
      }
    }
  }

  return v5;
}

kern_return_t IOServiceNotificationDispatchSource::Create(OSDictionary *matching, uint64_t options, IODispatchQueue *queue, IOServiceNotificationDispatchSource **notification)
{
  result = IOServiceNotificationDispatchSource::Create_Call(matching, options, queue, notification);
  if (result)
  {
    IOServiceNotificationDispatchSource::Create();
  }

  v7 = *notification;
  *((*notification)->ivars + 1) = queue;
  *(v7->ivars + 24) = 1;
  return result;
}

BOOL IOServiceNotificationDispatchSource::init(IOServiceNotificationDispatchSource *this)
{
  v2 = IOMallocZeroTyped(0x30uLL, 0x1020040D82A5A9EuLL);
  this->ivars = v2;
  *v2 = this;
  *(this->ivars + 2) = OSArray::withCapacity(1u);
  return 1;
}

uint64_t non-virtual thunk toIOServiceNotificationDispatchSource::init(IOServiceNotificationDispatchSource *this)
{
  p_ivars = &this[-1].ivars;
  v3 = IOMallocZeroTyped(0x30uLL, 0x1020040D82A5A9EuLL);
  this->IODispatchSource::OSObject::OSObjectInterface::__vftable = v3;
  v3->init = p_ivars;
  this->IODispatchSource::OSObject::OSObjectInterface::__vftable[1].init = OSArray::withCapacity(1u);
  return 1;
}

void IOServiceNotificationDispatchSource::free(IOServiceNotificationDispatchSource *this)
{
  ivars = this->ivars;
  if (ivars)
  {
    v3 = *(ivars + 2);
    if (!v3 || ((*(*v3 + 16))(*(ivars + 2)), *(this->ivars + 2) = 0, (ivars = this->ivars) != 0))
    {
      IOFree(ivars, 0x30uLL);
      this->ivars = 0;
    }
  }

  OSObjectFree(this);
}

kern_return_t IOServiceNotificationDispatchSource::SetEnableWithCompletion_Impl(IOServiceNotificationDispatchSource *this, BOOL enable, IODispatchSourceCancelHandler handler)
{
  v6 = IODispatchSource::SetEnableWithCompletion(this, enable, handler, IODispatchSource::_Dispatch);
  if (!v6)
  {
    v7 = *(this->ivars + 1);
    context[0] = MEMORY[0x277D85DD0];
    context[1] = 1107296256;
    context[2] = ___ZN35IOServiceNotificationDispatchSource28SetEnableWithCompletion_ImplEbU13block_pointerFvvE_block_invoke;
    context[3] = &__block_descriptor_tmp_102;
    v11 = enable;
    context[4] = handler;
    context[5] = this;
    if (___ZN35IOServiceNotificationDispatchSource28SetEnableWithCompletion_ImplEbU13block_pointerFvvE_block_invoke)
    {
      v8 = ___ZN35IOServiceNotificationDispatchSource28SetEnableWithCompletion_ImplEbU13block_pointerFvvE_block_invoke;
    }

    else
    {
      v8 = 0;
    }

    IODispatchQueue::DispatchSync_f(v7, context, v8);
  }

  return v6;
}

uint64_t ___ZN35IOServiceNotificationDispatchSource28SetEnableWithCompletion_ImplEbU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 48) + 24) = *(a1 + 48);
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

kern_return_t IOServiceNotificationDispatchSource::Cancel_Impl(IOServiceNotificationDispatchSource *this, IODispatchSourceCancelHandler handler)
{
  v2 = **(*(this->ivars + 1) + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = ___ZN35IOServiceNotificationDispatchSource11Cancel_ImplEU13block_pointerFvvE_block_invoke;
  v4[3] = &__block_descriptor_tmp_105;
  v4[4] = handler;
  v4[5] = this;
  dispatch_async(v2, v4);
  return 0;
}

uint64_t ___ZN35IOServiceNotificationDispatchSource11Cancel_ImplEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 48);
  v4 = *(v3 + 8);
  if (*(v4[5] + 48))
  {
    (*(*v4 + 8))(v4);
    IORecursiveConditionLockLock(*(*(*(*(v2 + 48) + 8) + 40) + 48));
    v3 = *(v2 + 48);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 25) = 1;
  *(*(v2 + 48) + 24) = 0;
  result = (*(*(a1 + 32) + 16))();
  if (v4)
  {
    IORecursiveConditionLockUnlock(*(v4[5] + 48));
    v6 = *(*v4 + 16);

    return v6(v4);
  }

  return result;
}

kern_return_t IOServiceNotificationDispatchSource::DeliverNotifications(IOServiceNotificationDispatchSource *this, IOServiceNotificationBlock block)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = -536870212;
  v3 = *(this->ivars + 1);
  context[0] = MEMORY[0x277D85DD0];
  context[1] = 1107296256;
  context[2] = ___ZN35IOServiceNotificationDispatchSource20DeliverNotificationsEU13block_pointerFvyP9IOServiceyE_block_invoke;
  context[3] = &__block_descriptor_tmp_111;
  context[5] = &v8;
  context[6] = this;
  context[4] = block;
  if (___ZN35IOServiceNotificationDispatchSource20DeliverNotificationsEU13block_pointerFvyP9IOServiceyE_block_invoke)
  {
    v4 = ___ZN35IOServiceNotificationDispatchSource20DeliverNotificationsEU13block_pointerFvyP9IOServiceyE_block_invoke;
  }

  else
  {
    v4 = 0;
  }

  IODispatchQueue::DispatchSync_f(v3, context, v4);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t ___ZN35IOServiceNotificationDispatchSource20DeliverNotificationsEU13block_pointerFvyP9IOServiceyE_block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  if (*(v1->ivars + 24) == 1)
  {
    v2 = result;
    options = 0;
    type = 0;
    service = 0;
    while (1)
    {
      do
      {
        result = IOServiceNotificationDispatchSource::CopyNextNotification(v1, &type, &service, &options, 0);
        *(*(*(v2 + 40) + 8) + 24) = result;
        v3 = *(*(*(v2 + 40) + 8) + 24);
      }

      while (v3 == -536870185);
      if (v3)
      {
        result = IOLog("CopyNextNotification ret 0x%x\n", *(*(*(v2 + 40) + 8) + 24));
        if (*(*(*(v2 + 40) + 8) + 24))
        {
          ___ZN35IOServiceNotificationDispatchSource20DeliverNotificationsEU13block_pointerFvyP9IOServiceyE_block_invoke_cold_1();
        }
      }

      if (type == 1)
      {
        OSArray::setObject(*(v1->ivars + 2), service);
      }

      else if (type == 0xFFFFFFFF)
      {
        if (service)
        {
          ___ZN35IOServiceNotificationDispatchSource20DeliverNotificationsEU13block_pointerFvyP9IOServiceyE_block_invoke_cold_2();
        }

        return result;
      }

      (*(*(v2 + 32) + 16))();
      if (!type)
      {
        NextIndexOfObject = OSArray::getNextIndexOfObject(*(v1->ivars + 2), service, 0);
        if (NextIndexOfObject != -1)
        {
          OSArray::removeObject(*(v1->ivars + 2), NextIndexOfObject);
        }
      }

      if (service)
      {
        (service->release)(service);
      }
    }
  }

  return result;
}

OSDictionary *__cdecl IOService::CreatePropertyMatchingDictionary(const char *key, OSObjectPtr value, OSDictionary *matching)
{
  if (!value)
  {
    return 0;
  }

  v3 = matching;
  if (matching || (v3 = OSDictionary::withCapacity(2u)) != 0)
  {
    Object = OSDictionary::getObject(v3, "IOPropertyMatch");
    if (!Object)
    {
      goto LABEL_18;
    }

    v7 = Object;
    meta = Object->meta;
    if (meta == Object)
    {
      v9 = 0;
    }

    else
    {
      v9 = Object->meta;
    }

    v10 = v9 != 0;
    if (v9)
    {
      v11 = v9 == gOSDictionaryMetaClass;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      do
      {
        meta = *(meta->metaClassPrivate + 1);
        v10 = meta != 0;
        if (meta)
        {
          v12 = meta == gOSDictionaryMetaClass;
        }

        else
        {
          v12 = 1;
        }
      }

      while (!v12);
    }

    if (!v10)
    {
LABEL_18:
      v7 = OSDictionary::withCapacity(4u);
      OSDictionary::setObject(v3, "IOPropertyMatch", v7);
      (v7->release)(v7);
    }

    OSDictionary::setObject(v7, key, value);
  }

  return v3;
}

OSDictionary *__cdecl IOService::CreatePropertyMatchingDictionary(const char *key, const char *stringValue, OSDictionary *matching)
{
  v5 = OSString::withCString(stringValue);
  if (!v5)
  {
    IOService::CreatePropertyMatchingDictionary();
  }

  v6 = v5;
  PropertyMatchingDictionary = IOService::CreatePropertyMatchingDictionary(key, v5, matching);
  (v6->release)(v6);
  return PropertyMatchingDictionary;
}

OSDictionary *__cdecl IOService::CreateKernelClassMatchingDictionary(OSString *className, OSDictionary *matching)
{
  if (!className)
  {
    return 0;
  }

  v2 = matching;
  if (matching || (v2 = OSDictionary::withCapacity(2u)) != 0)
  {
    OSDictionary::setObject(v2, "IOProviderClass", className);
  }

  return v2;
}

OSDictionary *__cdecl IOService::CreateKernelClassMatchingDictionary(const char *className, OSDictionary *matching)
{
  v3 = OSString::withCString(className);
  KernelClassMatchingDictionary = IOService::CreateKernelClassMatchingDictionary(v3, matching);
  if (v3)
  {
    (v3->release)(v3);
  }

  return KernelClassMatchingDictionary;
}

OSDictionary *__cdecl IOService::CreateNameMatchingDictionary(OSString *serviceName, OSDictionary *matching)
{
  if (!serviceName)
  {
    return 0;
  }

  v2 = matching;
  if (matching || (v2 = OSDictionary::withCapacity(2u)) != 0)
  {
    OSDictionary::setObject(v2, "IONameMatch", serviceName);
  }

  return v2;
}

OSDictionary *__cdecl IOService::CreateNameMatchingDictionary(const char *serviceName, OSDictionary *matching)
{
  v3 = OSString::withCString(serviceName);
  NameMatchingDictionary = IOService::CreateNameMatchingDictionary(v3, matching);
  if (v3)
  {
    (v3->release)(v3);
  }

  return NameMatchingDictionary;
}

BOOL IODataQueueDispatchSource::init(IODataQueueDispatchSource *this)
{
  v2 = IOMallocZeroTyped(0x38uLL, 0x10200402722E754uLL);
  this->ivars = v2;
  *(v2 + 1) = this;
  if (IODataQueueDispatchSource::CopyMemory(this, this->ivars + 2, 0))
  {
    IODataQueueDispatchSource::init();
  }

  v5 = 0;
  returnAddress = 0;
  if (IOMemoryDescriptor::Map(*(this->ivars + 2), 0, 0, 0, 0, &returnAddress, &v5))
  {
    IODataQueueDispatchSource::init();
  }

  v3 = v5;
  *this->ivars = returnAddress;
  *(this->ivars + 12) = v3;
  return 1;
}

kern_return_t IOMemoryDescriptor::Map(IOMemoryDescriptor *this, uint64_t options, uint64_t address, uint64_t length, uint64_t alignment, uint64_t *returnAddress, uint64_t *returnLength)
{
  map = 0;
  v10 = IOMemoryDescriptor::CreateMapping(this, options, address, 0, length, alignment, &map, 0);
  v11 = v10;
  if (v10)
  {
    IOLog("CreateMapping fail(0x%x)\n", v10);
  }

  else
  {
    v12 = *(this->ivars + 2);
    if (!v12)
    {
      v13 = OSArray::withCapacity(8u);
      ivars = this->ivars;
      if (*(ivars + 2))
      {
        IOMemoryDescriptor::Map();
      }

      *(ivars + 2) = v13;
      v12 = *(this->ivars + 2);
    }

    if (OSArray::getNextIndexOfObject(v12, map, 0) == -1)
    {
      OSArray::setObject(*(this->ivars + 2), map);
    }

    (map->release)(map);
    v15 = map;
    *returnAddress = *(map->ivars + 3);
    *returnLength = *v15->ivars;
  }

  return v11;
}

void IODataQueueDispatchSource::SendDataAvailable(IODataQueueDispatchSource *this)
{
  ivars = this->ivars;
  if (!*(ivars + 3))
  {
    v3 = IODataQueueDispatchSource::CopyDataAvailableHandler(this, ivars + 3, 0);
    ivars = this->ivars;
    if (v3)
    {
      *(ivars + 3) = 0;
      ivars = this->ivars;
    }
  }

  v4 = *(ivars + 3);
  if (v4)
  {

    IODataQueueDispatchSource::DataAvailable(this, v4, 0);
  }
}

void IODataQueueDispatchSource::SendDataServiced(IODataQueueDispatchSource *this)
{
  ivars = this->ivars;
  if (!ivars[4])
  {
    v3 = IODataQueueDispatchSource::CopyDataServicedHandler(this, ivars + 4, 0);
    ivars = this->ivars;
    if (v3)
    {
      ivars[4] = 0;
      ivars = this->ivars;
    }
  }

  if (ivars[4])
  {
    LOBYTE((*ivars)->refcount) = 0;
    v4 = *(this->ivars + 4);

    IODataQueueDispatchSource::DataServiced(this, v4, 0);
  }
}

void IODataQueueDispatchSource::free(IODataQueueDispatchSource *this)
{
  ivars = this->ivars;
  v3 = *(ivars + 2);
  if (v3)
  {
    (*(*v3 + 16))(*(ivars + 2));
    *(this->ivars + 2) = 0;
    ivars = this->ivars;
  }

  v4 = *(ivars + 3);
  if (v4)
  {
    (*(*v4 + 16))(*(ivars + 3));
    *(this->ivars + 3) = 0;
    ivars = this->ivars;
  }

  v5 = *(ivars + 4);
  if (!v5 || ((*(*v5 + 16))(*(ivars + 4)), *(this->ivars + 4) = 0, (ivars = this->ivars) != 0))
  {
    IOFree(ivars, 0x38uLL);
    this->ivars = 0;
  }

  OSObjectFree(this);
}

kern_return_t IODataQueueDispatchSource::Cancel_Impl(IODataQueueDispatchSource *this, IODispatchSourceCancelHandler handler)
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }

  return 0;
}

kern_return_t IODataQueueDispatchSource::Peek(IODataQueueDispatchSource *this, IODataQueueClientDequeueEntryBlock callback)
{
  result = -536870212;
  v4 = *this->ivars;
  if (!v4)
  {
    return -536870211;
  }

  v5 = *v4;
  if (v5 == atomic_load_explicit(v4 + 1, memory_order_acquire))
  {
    return -536870169;
  }

  v6 = (*(this->ivars + 12) - 128);
  if (v5 <= v6)
  {
    v7 = (v4 + v5 + 128);
    v8 = *v7;
    if ((v8 + 3) << 31 >> 31 == v8 + 3)
    {
      if (v5 <= 0xFFFFFFFB)
      {
        v9 = (v8 + 3) & 0xFFFFFFFC;
        v10 = v5 + 4 > v6 || v5 + 4 > ~v9;
        v11 = (v9 + v5) + 4;
        if (!v10 && v11 <= v6)
        {
          v16 = v7 + 1;
LABEL_25:
          (*(callback + 2))(callback, v16, v8);
          return 0;
        }
      }

      v8 = v4[32];
      v13 = (v8 + 3) & 0xFFFFFFFCLL;
      if ((v8 + 3) << 31 >> 31 == v8 + 3 && v13 != 4294967292 && v13 + 4 <= v6)
      {
        v16 = (v4 + 33);
        goto LABEL_25;
      }
    }
  }

  return result;
}

kern_return_t IODataQueueDispatchSource::Dequeue(IODataQueueDispatchSource *this, IODataQueueClientDequeueEntryBlock callback)
{
  sendDataServiced = 0;
  v3 = IODataQueueDispatchSource::DequeueWithCoalesce(this, &sendDataServiced, callback);
  if (sendDataServiced)
  {
    IODataQueueDispatchSource::SendDataServiced(this);
  }

  return v3;
}

kern_return_t IODataQueueDispatchSource::DequeueWithCoalesce(IODataQueueDispatchSource *this, BOOL *sendDataServiced, IODataQueueClientDequeueEntryBlock callback)
{
  result = -536870212;
  v5 = *this->ivars;
  if (!v5)
  {
    return -536870211;
  }

  v7 = *v5;
  explicit = atomic_load_explicit(v5 + 1, memory_order_acquire);
  if (v7 == explicit)
  {
    result = -536870169;
    if (*(v5 + 8))
    {
      *sendDataServiced = 1;
    }

    return result;
  }

  v9 = (*(this->ivars + 12) - 128);
  if (v7 <= v9)
  {
    v10 = v5 + 32;
    v11 = (v5 + v7 + 128);
    v12 = *v11;
    if ((v12 + 3) << 31 >> 31 == v12 + 3)
    {
      if (v7 > 0xFFFFFFFB || ((v13 = (v12 + 3) & 0xFFFFFFFC, v7 + 4 <= v9) ? (v14 = v7 + 4 > ~v13) : (v14 = 1), (v15 = (v13 + v7) + 4, !v14) ? (v16 = v15 > v9) : (v16 = 1), v16))
      {
        v12 = *v10;
        v17 = (v12 + 3) & 0xFFFFFFFCLL;
        v15 = v17 + 4;
        if ((v12 + 3) << 31 >> 31 != v12 + 3 || v17 == 4294967292 || v15 > v9)
        {
          return result;
        }
      }

      else
      {
        v20 = ~v7;
        v21 = v13 + 4 + v7;
        if ((v12 + 3) > 0xFFFFFFFB || v13 + 4 > v20 || v21 > v9)
        {
          return result;
        }

        v10 = v11;
      }

      (*(callback + 2))(callback, v10 + 1, v12);
      if (*(v5 + 8))
      {
        *sendDataServiced = 1;
      }

      atomic_store(v15, v5);
      result = 0;
      if (v15 == explicit)
      {
        __dmb(0xBu);
      }
    }
  }

  return result;
}

kern_return_t IODataQueueDispatchSource::Enqueue(IODataQueueDispatchSource *this, uint32_t dataSize, IODataQueueClientEnqueueEntryBlock callback)
{
  sendDataAvailable = 0;
  v4 = IODataQueueDispatchSource::EnqueueWithCoalesce(this, dataSize, &sendDataAvailable, callback);
  if (sendDataAvailable)
  {
    IODataQueueDispatchSource::SendDataAvailable(this);
  }

  return v4;
}

kern_return_t IODataQueueDispatchSource::EnqueueWithCoalesce(IODataQueueDispatchSource *this, uint32_t dataSize, BOOL *sendDataAvailable, IODataQueueClientEnqueueEntryBlock callback)
{
  result = -536870168;
  ivars = this->ivars;
  v7 = *ivars;
  if (!*ivars)
  {
    return -536870211;
  }

  v10 = *(ivars + 12);
  v11 = *(v7 + 4);
  explicit = atomic_load_explicit(v7, memory_order_acquire);
  v13 = dataSize + 3;
  if (v13 << 31 >> 31 == v13 && (~v13 & 0xFFFFFFFC) != 0)
  {
    v15 = v10 - 128;
    if (v10 - 128 < v11 || v15 < explicit)
    {
      return -536870169;
    }

    v17 = v13 & 0xFFFFFFFC;
    v18 = (v13 & 0xFFFFFFFC) + 4;
    if (explicit <= v11)
    {
      if (!__CFADD__(v11, v18) && v11 + v18 <= v15)
      {
        goto LABEL_22;
      }

      if (explicit > v18)
      {
        (*(callback + 2))(callback, v7 + 132);
        *(v7 + 128) = dataSize;
        if (v15 - v11 >= 4)
        {
          *(v11 + v7 + 128) = v17;
        }

        goto LABEL_23;
      }
    }

    else if (explicit - v11 > v18)
    {
LABEL_22:
      (*(callback + 2))(callback, v7 + v11 + 132);
      *(v7 + v11 + 128) = dataSize;
      v18 += v11;
LABEL_23:
      atomic_store(v18, (v7 + 4));
      if (v11 == explicit)
      {
        result = 0;
        goto LABEL_26;
      }

      result = 0;
      __dmb(0xBu);
      if (v11 == *v7)
      {
        goto LABEL_26;
      }

      return result;
    }

    *(v7 + 8) = 1;
LABEL_26:
    *sendDataAvailable = 1;
  }

  return result;
}

kern_return_t IODataQueueDispatchSource::CanEnqueueData(IODataQueueDispatchSource *this, uint32_t dataSize, uint32_t entryCount)
{
  result = -536870168;
  ivars = this->ivars;
  v6 = *ivars;
  if (!*ivars)
  {
    return -536870211;
  }

  v7 = *(ivars + 12);
  v8 = v6[1];
  explicit = atomic_load_explicit(v6, memory_order_acquire);
  v10 = dataSize + 3;
  if (v10 << 31 >> 31 == v10)
  {
    v11 = (v10 & 0xFFFFFFFC) + 4;
    if ((v11 & 0x100000000) == 0)
    {
      v12 = v7 - 128;
      v13 = v7 - 128 - v8;
      if (v12 < v8 || v12 < explicit)
      {
        return -536870212;
      }

      if (v8 < explicit)
      {
        if ((explicit + ~v8) / v11 < entryCount)
        {
          return result;
        }

        return 0;
      }

      v15 = explicit / v11 + v13 / v11;
      if (v13 / v11 >= entryCount || v15 > entryCount)
      {
        return 0;
      }
    }
  }

  return result;
}

kern_return_t IOTimerDispatchSource::Create_Impl(IODispatchQueue *queue, IOTimerDispatchSource **source)
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (OSObjectAllocate(gIOTimerDispatchSourceMetaClass, 0, &v12))
  {
    IOTimerDispatchSource::Create_Impl();
  }

  v4 = v12;
  (v12->init)(v12);
  *(v4->ivars + 1) = queue;
  ivars = queue->ivars;
  if (*(ivars + 6))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    *__str = 0u;
    v14 = 0u;
    label = dispatch_queue_get_label(*ivars);
    snprintf(__str, 0x80uLL, "IOTimerDispatchSourceQueue-%s-%p", label, v4);
    v7 = dispatch_queue_create_with_target_V2(__str, 0, **(*(v4->ivars + 1) + 40));
    *(v4->ivars + 4) = v7;
  }

  else
  {
    v7 = *ivars;
  }

  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
  *(v4->ivars + 3) = v8;
  if (!v8)
  {
    IOTimerDispatchSource::Create_Impl();
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN21IOTimerDispatchSource11Create_ImplEP15IODispatchQueuePPS__block_invoke;
  handler[3] = &__block_descriptor_tmp_121;
  handler[4] = v4;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(*(v4->ivars + 3));
  *source = v4;
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void ___ZN21IOTimerDispatchSource11Create_ImplEP15IODispatchQueuePPS__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  v4 = *(v3 + 8);
  ivars = v4->ivars;
  if (*(ivars + 6))
  {
    context[0] = MEMORY[0x277D85DD0];
    context[1] = 0x40000000;
    context[2] = ___ZN21IOTimerDispatchSource11Create_ImplEP15IODispatchQueuePPS__block_invoke_2;
    context[3] = &__block_descriptor_tmp_120;
    context[4] = v2;
    if (___ZN21IOTimerDispatchSource11Create_ImplEP15IODispatchQueuePPS__block_invoke_2)
    {
      v6 = ___ZN21IOTimerDispatchSource11Create_ImplEP15IODispatchQueuePPS__block_invoke_2;
    }

    else
    {
      v6 = 0;
    }

    IODispatchQueue::DispatchSync_f(v4, context, v6);
  }

  else if (*(v3 + 64) == 1)
  {
    v7[0] = *(ivars + 1);
    v7[1] = v4;
    *(ivars + 1) = v7;
    IODispatchSource::CheckForWork(*(a1 + 32), 1, 0);
    *(*(*(*(*(a1 + 32) + 48) + 8) + 40) + 8) = v7[0];
  }
}

IODispatchSource *___ZN21IOTimerDispatchSource11Create_ImplEP15IODispatchQueuePPS__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (LOBYTE(result[1].OSObject::OSMetaClassBase::__vftable[1].retain) == 1)
  {
    return IODispatchSource::CheckForWork(result, 1, 0);
  }

  return result;
}

kern_return_t IOTimerDispatchSource::SetHandler_Impl(IOTimerDispatchSource *this, OSAction *action)
{
  v4 = *(this->ivars + 2);
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(this->ivars + 2) = 0;
  }

  (action->retain)(action);
  *(this->ivars + 2) = action;
  return 0;
}

BOOL IOTimerDispatchSource::init(IOTimerDispatchSource *this)
{
  v2 = IOMallocZeroTyped(0x48uLL, 0x1020040BF833E4AuLL);
  this->ivars = v2;
  *v2 = this;
  return 1;
}

uint64_t non-virtual thunk toIOTimerDispatchSource::init(IOTimerDispatchSource *this)
{
  p_ivars = &this[-1].IODispatchSource::OSObject::ivars;
  v3 = IOMallocZeroTyped(0x48uLL, 0x1020040BF833E4AuLL);
  this->IODispatchSource::OSObject::OSObjectInterface::__vftable = v3;
  v3->init = p_ivars;
  return 1;
}

void IOTimerDispatchSource::free(IOTimerDispatchSource *this)
{
  dispatch_release(*(this->ivars + 3));
  v2 = *(this->ivars + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  ivars = this->ivars;
  if (gIOTimerInterruptDispatchLeakFix == 1)
  {
    v4 = *(ivars + 2);
    if (v4)
    {
      (*(*v4 + 16))(*(ivars + 2));
      ivars = this->ivars;
      *(ivars + 2) = 0;
    }
  }

  else if (!ivars)
  {
    goto LABEL_8;
  }

  IOFree(ivars, 0x48uLL);
  this->ivars = 0;
LABEL_8:

  OSObjectFree(this);
}

kern_return_t IOTimerDispatchSource::Cancel_Impl(IOTimerDispatchSource *this, IODispatchSourceCancelHandler handler)
{
  v3 = *(this->ivars + 3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = ___ZN21IOTimerDispatchSource11Cancel_ImplEU13block_pointerFvvE_block_invoke;
  v5[3] = &__block_descriptor_tmp_124;
  v5[4] = handler;
  v5[5] = this;
  dispatch_source_set_cancel_handler(v3, v5);
  dispatch_source_cancel(*(this->ivars + 3));
  return 0;
}

IORecursiveConditionLock *___ZN21IOTimerDispatchSource11Cancel_ImplEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 48);
  v4 = *(v3 + 8);
  v5 = v4[5];
  if (*(v5 + 48))
  {
    (*(*v4 + 8))(v4);
    IORecursiveConditionLockLock(*(v4[5] + 48));
    v3 = *(v2 + 48);
  }

  else
  {
    v8[0] = *(v5 + 8);
    v8[1] = v4;
    *(v5 + 8) = v8;
  }

  *(v3 + 64) = 256;
  (*(*(a1 + 32) + 16))();
  v6 = v4[5];
  result = *(v6 + 48);
  if (result)
  {
    IORecursiveConditionLockUnlock(result);
    return (*(*v4 + 16))(v4);
  }

  else
  {
    *(v6 + 8) = v8[0];
  }

  return result;
}

kern_return_t IOTimerDispatchSource::WakeAtTime_Impl(IOTimerDispatchSource *this, uint64_t options, uint64_t deadline, uint64_t leeway)
{
  v4 = options;
  v6 = -536870206;
  v17 = leeway;
  v18 = deadline;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (options > 0xC3u)
  {
    if (options != 196 && options != 200)
    {
      goto LABEL_25;
    }
  }

  else if (options - 128 > 8 || ((1 << (options + 0x80)) & 0x111) == 0)
  {
    if (options)
    {
      goto LABEL_25;
    }

    v4 = options & 0xFFFFFFFFFFFFFF00 | 0xC8;
  }

  if (deadline <= 1)
  {
    deadline = 2;
    v18 = 2;
  }

  if ((v4 & 0x40) != 0)
  {
    convert_mach_time_to_nsec(&v18);
    convert_mach_time_to_nsec(&v17);
    deadline = v18;
  }

  v12 = 0;
  if (deadline > 0x3FFFFFFFFFFFFFFELL)
  {
    v7 = -1;
  }

  else if ((v4 & 0x3F) != 0)
  {
    v12 = deadline;
    nanoseconds_to_absolutetime(deadline, &v12);
    if ((v4 & 0x3F) == 4)
    {
      v7 = v12 | 0x8000000000000000;
    }

    else
    {
      v7 = v12;
    }
  }

  else
  {
    v7 = -deadline;
  }

  v8 = *(this->ivars + 1);
  context[0] = MEMORY[0x277D85DD0];
  context[1] = 1107296256;
  context[2] = ___ZN21IOTimerDispatchSource15WakeAtTime_ImplEyyy_block_invoke;
  context[3] = &__block_descriptor_tmp_125;
  context[4] = &v13;
  context[5] = this;
  context[6] = v4;
  context[7] = v18;
  context[8] = v17;
  context[9] = v7;
  if (___ZN21IOTimerDispatchSource15WakeAtTime_ImplEyyy_block_invoke)
  {
    v9 = ___ZN21IOTimerDispatchSource15WakeAtTime_ImplEyyy_block_invoke;
  }

  else
  {
    v9 = 0;
  }

  IODispatchQueue::DispatchSync_f(v8, context, v9);
  if (*(v14 + 24))
  {
    v6 = -536870185;
  }

  else
  {
    v6 = 0;
  }

LABEL_25:
  _Block_object_dispose(&v13, 8);
  return v6;
}

void ___ZN21IOTimerDispatchSource15WakeAtTime_ImplEyyy_block_invoke(void *a1)
{
  v1 = *(a1[5] + 48);
  *(*(a1[4] + 8) + 24) = *(v1 + 65);
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    *(v1 + 56) = a1[6];
    *(v1 + 40) = a1[7];
    v2 = a1[8];
    *(v1 + 48) = v2;
    *(v1 + 64) = 1;
    dispatch_source_set_timer(*(v1 + 24), a1[9], 0xFFFFFFFFFFFFFFFFLL, v2);
  }
}

kern_return_t IOTimerDispatchSource::CheckForWork_Impl(IOTimerDispatchSource *this, const IORPC *rpc, BOOL synchronous)
{
  v5 = -536870184;
  v6 = clock_gettime_nsec_np((*(this->ivars + 14) & 0x3F));
  time = v6;
  ivars = this->ivars;
  v8 = *(ivars + 2);
  if (v8)
  {
    v9 = v6;
    if (*(ivars + 5) - 1 < v6)
    {
      *(ivars + 5) = 0;
      if ((*(ivars + 56) & 0x40) != 0)
      {
        if (v6 < 0x7FFFFFFFFFFFFFFFLL)
        {
          nanoseconds_to_absolutetime(v6, &time);
          v8 = *(this->ivars + 2);
          v9 = time;
        }

        else
        {
          time = 0x7FFFFFFFFFFFFFFFLL;
          v9 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      v11 = *rpc;
      return IOTimerDispatchSource::TimerOccurred(this, &v11, v8, v9, 0);
    }
  }

  return v5;
}

kern_return_t OSAction::CreateWithTypeName(OSObject *target, uint64_t targetmsgid, uint64_t msgid, size_t referenceSize, OSString *typeName, OSAction **action)
{
  v10 = target;
  if (target && ((target[-1].ivars & 1) == 0 || !target[-2].meta))
  {
    target = 0;
  }

  v11 = OSAction::CreateWithTypeName_Call(target, targetmsgid, msgid, 0, typeName, action);
  if (!v11)
  {
    v12 = *action;
    v13 = IOMallocZeroTyped(referenceSize + 120, 0x100004077774924uLL);
    v12->ivars = v13;
    *v13 = v10;
    *(v12->ivars + 1) = targetmsgid;
    *(v12->ivars + 2) = msgid;
    *(v12->ivars + 14) = referenceSize;
    ivars = v12->ivars;
    *(ivars + 5) = 850045857;
    *(ivars + 12) = 0;
    *(ivars + 4) = 0u;
    *(ivars + 5) = 0u;
    *(ivars + 3) = 0u;
  }

  return v11;
}

void OSAction::free(OSAction *this)
{
  ivars = this->ivars;
  if (ivars)
  {
    if (*(ivars + 13))
    {
      OSAction::free();
    }

    pthread_mutex_destroy((ivars + 40));
    v3 = this->ivars;
    if (!*(v3 + 3) || (_Block_release(*(v3 + 3)), *(this->ivars + 3) = 0, (v3 = this->ivars) != 0))
    {
      IOFree(v3, *(v3 + 14) + 120);
      this->ivars = 0;
    }
  }

  OSObjectFree(this);
}

kern_return_t OSAction::Cancel(OSAction *this, OSActionCancelHandler handler)
{
  ivars = this->ivars;
  if (ivars && *ivars)
  {
    v5 = OSMetaClassBase::QueueForObject(*ivars, *(ivars + 1));
    if (!v5)
    {
      OSAction::Cancel();
    }

    v6 = v5;
    (this->retain)(this);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = ___ZN8OSAction6CancelEU13block_pointerFvvE_block_invoke;
    v8[3] = &__block_descriptor_tmp_129;
    v8[4] = handler;
    v8[5] = this;
    IODispatchQueue::DispatchAsync(v6, v8);
  }

  return 0;
}

uint64_t ___ZN8OSAction6CancelEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(v1[5] + 32) = 1;
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  DidAction(v1);
  v3 = *(*v1 + 16);

  return v3(v1);
}

void *__cdecl OSAction::GetReference(OSAction *this)
{
  ivars = this->ivars;
  if (!ivars)
  {
    OSAction::GetReference();
  }

  return ivars + 120;
}

void OSAction::Aborted_Impl(OSAction *this)
{
  v1 = *(this->ivars + 3);
  if (v1)
  {
    (*(v1 + 16))();
  }
}

kern_return_t OSAction::WillWait(OSAction *this, OSActionWaitToken **token)
{
  v2 = -536870211;
  if (*(this->ivars + 13))
  {
    return -536870187;
  }

  v5 = IOMallocZeroTyped(0x38uLL, 0x100004021716A34uLL);
  if (v5)
  {
    v6 = v5;
    if (pthread_cond_init(v5, 0))
    {
      OSAction::WillWait();
    }

    v2 = 0;
    *(this->ivars + 13) = v6;
    *token = v6;
  }

  return v2;
}

kern_return_t OSAction::EndWait(OSAction *this, OSActionWaitToken *token)
{
  if (!token)
  {
    return -536870184;
  }

  ivars = this->ivars;
  if (*(ivars + 13) != token)
  {
    OSAction::EndWait();
  }

  *(ivars + 13) = 0;
  pthread_cond_destroy(token);
  IOFree(token, 0x38uLL);
  return 0;
}

kern_return_t OSAction::Wait(OSAction *this, OSActionWaitToken *token, uint64_t options, uint64_t deadline)
{
  v4 = -536870206;
  v18 = deadline;
  if (options > 0xFF)
  {
    return -536870201;
  }

  v5 = deadline;
  if (options > 0x87u)
  {
    if (options != 136)
    {
      if (options == 196)
      {
        v9 = mach_continuous_time();
      }

      else
      {
        if (options != 200)
        {
          return v4;
        }

        v9 = mach_absolute_time();
      }

      v18 = v5 - v9;
      if (v5 >= v9)
      {
        convert_mach_time_to_nsec(&v18);
        v12 = v18;
      }

      else
      {
        v12 = 1;
        v18 = 1;
      }

      v5 = clock_gettime_nsec_np(_CLOCK_REALTIME) + v12;
      goto LABEL_24;
    }

    v8 = _CLOCK_UPTIME_RAW;
LABEL_15:
    v10 = clock_gettime_nsec_np(v8);
    if (v5 < v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v5 - v10;
    }

    v5 = v11 + clock_gettime_nsec_np(_CLOCK_REALTIME);
LABEL_24:
    v18 = v5;
LABEL_25:
    if (v5)
    {
      v17.tv_sec = v5 / 0x3B9ACA00;
      v17.tv_nsec = v5 % 0x3B9ACA00;
    }

    goto LABEL_27;
  }

  if (options)
  {
    if (options == 128)
    {
      goto LABEL_25;
    }

    if (options != 132)
    {
      return v4;
    }

    v8 = _CLOCK_MONOTONIC_RAW;
    goto LABEL_15;
  }

  if (deadline)
  {
    OSAction::Wait();
  }

LABEL_27:
  pthread_mutex_lock((this->ivars + 40));
  while (!*(token + 6))
  {
    ivars = this->ivars;
    if (*(ivars + 32))
    {
      break;
    }

    if (v18)
    {
      v14 = pthread_cond_timedwait(token, (ivars + 40), &v17);
    }

    else
    {
      v14 = pthread_cond_wait(token, (ivars + 40));
    }

    v15 = v14;
    if (v14)
    {
      goto LABEL_36;
    }
  }

  v15 = 0;
LABEL_36:
  *(token + 6) = 0;
  pthread_mutex_unlock((this->ivars + 40));
  if (v15)
  {
    if (v15 == 60)
    {
      return -536870186;
    }

    else
    {
      return -536870199;
    }
  }

  else if (*(this->ivars + 32))
  {
    return -536870165;
  }

  else
  {
    return 0;
  }
}

void IOMemoryDescriptor::free(IOMemoryDescriptor *this)
{
  ivars = this->ivars;
  v3 = *(ivars + 2);
  if (!v3 || ((*(*v3 + 16))(*(ivars + 2)), *(this->ivars + 2) = 0, (ivars = this->ivars) != 0))
  {
    IOFree(ivars, 0x18uLL);
    this->ivars = 0;
  }

  OSObjectFree(this);
}

kern_return_t IOMemoryDescriptor::GetLength(IOMemoryDescriptor *this, uint64_t *returnLength)
{
  result = IOMemoryDescriptor::_CopyState(this, this->ivars, 0);
  if (result)
  {
    IOMemoryDescriptor::GetLength();
  }

  *returnLength = *this->ivars;
  return result;
}

BOOL IOMemoryMap::init(IOMemoryMap *this)
{
  v2 = IOMallocZeroTyped(0x20uLL, 0x1000040E0EAB150uLL);
  this->ivars = v2;
  if (IOMemoryMap::_CopyState(this, v2, 0))
  {
    IOMemoryMap::init();
  }

  return 1;
}

void IOMemoryMap::free(IOMemoryMap *this)
{
  ivars = this->ivars;
  if (ivars)
  {
    IOFree(ivars, 0x20uLL);
    this->ivars = 0;
  }

  OSObjectFree(this);
}

BOOL IOBufferMemoryDescriptor::init(IOBufferMemoryDescriptor *this)
{
  this->ivars = IOMallocZeroTyped(0x18uLL, 0x10200403ED2C137uLL);
  this->ivars = IOMallocZeroTyped(8uLL, 0x2004093837F09uLL);
  return 1;
}

uint64_t non-virtual thunk toIOBufferMemoryDescriptor::init(IOBufferMemoryDescriptor *this)
{
  this->meta = IOMallocZeroTyped(0x18uLL, 0x10200403ED2C137uLL);
  this->IOMemoryDescriptor::OSObject::OSObjectInterface::__vftable = IOMallocZeroTyped(8uLL, 0x2004093837F09uLL);
  return 1;
}

void IOBufferMemoryDescriptor::free(IOBufferMemoryDescriptor *this)
{
  ivars = this->ivars;
  if (!*ivars || ((*(**ivars + 16))(*ivars), *this->ivars = 0, (ivars = this->ivars) != 0))
  {
    IOFree(ivars, 8uLL);
    this->ivars = 0;
  }

  IOMemoryDescriptor::free(this);
}

kern_return_t IOBufferMemoryDescriptor::GetAddressRange(IOBufferMemoryDescriptor *this, IOAddressSegment *range)
{
  ivars = this->ivars;
  v5 = *ivars;
  if (*ivars)
  {
    goto LABEL_2;
  }

  result = IOMemoryDescriptor::CreateMapping(this, 0, 0, 0, 0, 0, ivars, 0);
  if (!result)
  {
    v5 = *this->ivars;
LABEL_2:
    result = 0;
    range->address = *(v5->ivars + 3);
    range->length = **(*this->ivars + 40);
  }

  return result;
}

void IODMACommand::free(IODMACommand *this)
{
  ivars = this->ivars;
  if (ivars)
  {
    IOFree(ivars, 1uLL);
    this->ivars = 0;
  }

  OSObjectFree(this);
}

BOOL IOUserClient::init(IOUserClient *this)
{
  LODWORD(v2) = IOService::init(this);
  if (v2)
  {
    v2 = IOMallocZeroTyped(8uLL, 0x2004093837F09uLL);
    this->ivars = v2;
    LOBYTE(v2) = v2 != 0;
  }

  return v2;
}

BOOL IOService::init(IOService *this)
{
  v2 = IOMallocZeroTyped(0x38uLL, 0x10200402C681018uLL);
  v3 = v2;
  this->ivars = v2;
  if (!v2)
  {
    return v3 != 0;
  }

  *(v2 + 3) = this;
  os_unfair_lock_lock(gServer);
  v4 = gServer;
  v5 = gServer + 64;
  v6 = *(gServer + 72);
  v7 = (v6 + 32);
  if (v6 == gServer + 64)
  {
    v7 = (gServer + 64);
  }

  if (*v7 != v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  ivars = this->ivars;
  *(ivars + 4) = v5;
  *(ivars + 5) = v6;
  *v7 = ivars;
  *(v4 + 72) = ivars;
  os_unfair_lock_unlock(gServer);
  if (BYTE4(this[-1].lvars))
  {
    return v3 != 0;
  }

  v9 = this->ivars;
  v11 = *(v9 + 1);
  v10 = (v9 + 8);
  if (v11)
  {
    return v3 != 0;
  }

  if (IOService::CreateDefaultDispatchQueue(this, v10, 0))
  {
LABEL_11:
    IOService::init();
  }

  if (OSObject::SetDispatchQueue(this, "Default", *(this->ivars + 1), 0))
  {
    IOService::init();
  }

  return v3 != 0;
}

void IOUserClient::free(IOUserClient *this)
{
  ivars = this->ivars;
  if (ivars)
  {
    if (!*ivars || ((*(**ivars + 16))(*ivars), *this->ivars = 0, (ivars = this->ivars) != 0))
    {
      IOFree(ivars, 8uLL);
      this->ivars = 0;
    }
  }

  IOService::free(this);
}

kern_return_t IOService::CreateDefaultDispatchQueue_Impl(IOService *this, IODispatchQueue **queue)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__str = 0u;
  v7 = 0u;
  snprintf(__str, 0x100uLL, "%s-Default", (**this->meta->metaClassPrivate + 4));
  IODispatchQueue::Create(__str, 0, 0, queue);
  if ((gIODKDebug & 2) != 0)
  {
    IOLog("IODispatchQueue::Create(Default) %p\n", *(this->ivars + 1));
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

kern_return_t IOService::GetRegistryEntryID_Impl(IOService *this, uint64_t *registryEntryID)
{
  ivars = this->ivars;
  if (ivars && (v5 = *ivars) != 0)
  {
    result = 0;
    *registryEntryID = v5;
  }

  else
  {
    result = IOService::GetRegistryEntryID(this, registryEntryID, OSObject::_Dispatch);
    v7 = this->ivars;
    if (v7)
    {
      v8 = result == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      result = 0;
      *v7 = *registryEntryID;
    }
  }

  return result;
}

kern_return_t IOService::Start_Impl(IOService *this, IOService *provider)
{
  (this->retain)(this);
  *(this->ivars + 48) = 1;
  if ((BYTE4(this[-1].lvars) & 1) == 0)
  {
    *(this->ivars + 2) = provider;
    (*(**(this->ivars + 2) + 8))(*(this->ivars + 2));
  }

  return 0;
}

kern_return_t IOService::Stop_Impl(IOService *this, IOService *provider)
{
  v3 = IOService::Stop(this, provider, OSObject::_Dispatch);
  if ((gIODKDebug & 2) != 0)
  {
    IOLog("IOService::Stop kernel done 0x%x\n", v3);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v9 = ___ZN9IOService9Stop_ImplEPS__block_invoke;
  v10 = &__block_descriptor_tmp_140;
  v11 = this;
  ivars = this->ivars;
  if ((*(ivars + 48) & 1) == 0)
  {
    (this->retain)(this);
    ivars = this->ivars;
  }

  v5 = *(ivars + 1);
  if (v5)
  {
    v6 = **(v5 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1107296256;
    block[2] = ___ZN15IODispatchQueue6CancelEU13block_pointerFvvE_block_invoke;
    block[3] = &__block_descriptor_tmp_80;
    block[4] = v8;
    block[5] = v5;
    dispatch_async(v6, block);
  }

  else
  {
    v9(v8);
  }

  return 0;
}

uint64_t ___ZN9IOService9Stop_ImplEPS__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((gIODKDebug & 2) != 0)
  {
    IOLog("IOService::finalize\n");
  }

  *(v1[5] + 49) = 1;
  v2 = v1[5];
  v3 = *(v2 + 8);
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(v1[5] + 8) = 0;
    v2 = v1[5];
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(v1[5] + 16) = 0;
  }

  v5 = *(*v1 + 16);

  return v5(v1);
}

void IOService::Stop_async_Impl(IOService *this, IOService *provider)
{
  if ((gIODKDebug & 2) != 0)
  {
    IOLog("IOService::Stop_async\n");
  }

  IOService::Stop(this, provider, 0);
}

kern_return_t IOService::SetPowerState_Impl(IOService *this, uint32_t powerFlags)
{
  if ((gIODKDebug & 8) != 0)
  {
    IOLog("IOService::SetPowerState(%s, %d) ack kernel\n", (**this->meta->metaClassPrivate + 4), powerFlags);
  }

  return IOService::SetPowerState(this, powerFlags, OSObject::_Dispatch);
}

kern_return_t IOService::SetDispatchQueue_Impl(IOService *this, const char *name, IODispatchQueue *queue)
{
  result = OSObject::SetDispatchQueue(this, name, queue, OSObject::_Dispatch);
  if (!result)
  {
    if ((gIODKDebug & 2) != 0)
    {
      IOLog("IOService::SetDispatchQueue(%s, %s)\n", (**this->meta->metaClassPrivate + 4), name);
    }

    v7 = OSObjectQueueIndex(this, name);
    if (v7 == -1)
    {
      return -536870206;
    }

    else
    {
      v8 = &this[-1].OSObjectInterface;
      v9 = v7;
      v10 = *CompactArray<IODispatchQueue *>::operator[](&this[-1].OSObjectInterface, v7);
      *CompactArray<IODispatchQueue *>::operator[](v8, v9) = queue;
      (queue->retain)(queue);
      if (v10)
      {
        (*(*v10 + 16))(v10);
      }

      return 0;
    }
  }

  return result;
}

uint64_t OSObjectQueueIndex(OSObject *a1, char *a2)
{
  result = strcmp("Default", a2);
  if (result)
  {
    metaClassPrivate = a1->meta->metaClassPrivate;
    v6 = *(metaClassPrivate + 2);
    if (v6)
    {
      v7 = OSStringArrayIndex(v6, a2);
      v8 = v7;
      if ((gIODKDebug & 2) != 0)
      {
        IOLog("IODispatchQueue::Create(%s, %s, %d)\n", (**metaClassPrivate + 4), a2, v7);
      }

      if (v8 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return (v8 + 1);
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

kern_return_t IOService::Create_Impl(IOService *this, IOService *provider, const char *propertiesKey, IOService **result)
{
  resulta = 0;
  v6 = IOService::Create(this, provider, propertiesKey, &resulta, OSObject::_Dispatch);
  if (v6)
  {
    v7 = v6;
LABEL_3:
    v8 = 0;
    goto LABEL_4;
  }

  v8 = resulta;
  if (resulta)
  {
    meta = resulta->meta;
    if (meta == resulta)
    {
      v11 = 0;
    }

    else
    {
      v11 = resulta->meta;
    }

    v12 = v11 != 0;
    if (v11)
    {
      v13 = v11 == gIOUserClientMetaClass;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      do
      {
        meta = meta->free;
        v12 = meta != 0;
        if (meta)
        {
          v14 = meta == gIOUserClientMetaClass;
        }

        else
        {
          v14 = 1;
        }
      }

      while (!v14);
    }

    if (v12)
    {
      v7 = 0;
      goto LABEL_4;
    }
  }

  v7 = IOService::Start(resulta, this, 0);
  v8 = resulta;
  if (v7 && resulta)
  {
    (resulta->release)();
    goto LABEL_3;
  }

LABEL_4:
  *result = v8;
  return v7;
}

kern_return_t IOService::_NewUserClient_Impl(IOService *this, uint32_t type, OSDictionary *entitlements, IOUserClient **userClient)
{
  v7 = IOService::NewUserClient(this, type, userClient, 0);
  if (!v7)
  {
    v8 = *userClient;
    if (v8)
    {
      if (entitlements)
      {
        (entitlements->retain)(entitlements);
        *v8->ivars = entitlements;
      }

      v9 = IOService::Start(v8, this, 0);
      if (v9)
      {
        v7 = v9;
        (v8->release)(v8);
      }

      else
      {
        v10 = OSObjectQueueIndex(v8, "IOUserClientQueueExternalMethod");
        if (v10 != -1 && !*CompactArray<IODispatchQueue *>::operator[](&v8[-1].ivars, v10) && OSObject::SetDispatchQueue(v8, "IOUserClientQueueExternalMethod", *(this->ivars + 1), 0))
        {
          IOService::_NewUserClient_Impl();
        }

        return 0;
      }
    }
  }

  return v7;
}

const char *__cdecl IOService::StringFromReturn(IOService *this, IOReturn retval)
{
  str = 0;
  if (IOService::StringFromReturn(this, retval, &str, 0))
  {
    return "<internal error>";
  }

  CStringNoCopy = OSString::getCStringNoCopy(str);
  v3 = atomic_load(&str->refcount);
  if (v3 >= 1025)
  {
    (str->release)(str);
  }

  return CStringNoCopy;
}

kern_return_t IOUserClient::CopyClientEntitlements_Impl(IOUserClient *this, OSDictionary **entitlements)
{
  result = -536870184;
  ivars = this->ivars;
  if (ivars)
  {
    v5 = *ivars;
    if (v5)
    {
      (*(*v5 + 8))(v5);
      result = 0;
      *entitlements = *this->ivars;
    }
  }

  return result;
}

kern_return_t IOUserClient::ExternalMethod(IOUserClient *this, uint64_t selector, IOUserClientMethodArguments *arguments, const IOUserClientMethodDispatch *dispatch, OSObject *target, void *reference)
{
  v6 = -536870206;
  if (!dispatch)
  {
    return -536870201;
  }

  checkCompletionExists = dispatch->checkCompletionExists;
  if (checkCompletionExists != -1 && checkCompletionExists != (arguments->completion != 0))
  {
    return v6;
  }

  checkScalarInputCount = dispatch->checkScalarInputCount;
  if (checkScalarInputCount != -1 && checkScalarInputCount != arguments->scalarInputCount)
  {
    return v6;
  }

  checkStructureInputSize = dispatch->checkStructureInputSize;
  if (checkStructureInputSize != -1)
  {
    returnLength = 0;
    structureInputDescriptor = arguments->structureInputDescriptor;
    if (structureInputDescriptor)
    {
      IOMemoryDescriptor::GetLength(structureInputDescriptor, &returnLength);
      structureInput = returnLength;
    }

    else
    {
      structureInput = arguments->structureInput;
      if (structureInput)
      {
        structureInput = OSData::getLength(structureInput);
      }
    }

    if (structureInput != checkStructureInputSize)
    {
      return v6;
    }
  }

  checkScalarOutputCount = dispatch->checkScalarOutputCount;
  if (checkScalarOutputCount != -1 && checkScalarOutputCount != arguments->scalarOutputCount)
  {
    return v6;
  }

  checkStructureOutputSize = dispatch->checkStructureOutputSize;
  if (checkStructureOutputSize != -1)
  {
    returnLength = 0;
    structureOutputDescriptor = arguments->structureOutputDescriptor;
    if (structureOutputDescriptor)
    {
      p_returnLength = &returnLength;
      IOMemoryDescriptor::GetLength(structureOutputDescriptor, &returnLength);
    }

    else
    {
      p_returnLength = &arguments->structureOutputMaximumSize;
    }

    if (*p_returnLength != checkStructureOutputSize)
    {
      return v6;
    }
  }

  function = dispatch->function;
  if (!dispatch->function)
  {
    return -536870166;
  }

  return (function)(target, reference, arguments);
}

kern_return_t IOUserClient::_ExternalMethod_Impl(IOUserClient *this, uint64_t selector, const unint64_t *scalarInput, uint32_t scalarInputCount, OSData *structureInput, IOMemoryDescriptor *structureInputDescriptor, unint64_t *scalarOutput, uint32_t *scalarOutputCount, uint64_t structureOutputMaximumSize, OSData **structureOutput, IOMemoryDescriptor *structureOutputDescriptor, OSAction *completion)
{
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
  v23 = 0u;
  v22[0] = 2;
  v22[1] = selector;
  v22[2] = completion;
  v22[3] = scalarInput;
  v22[4] = scalarInputCount;
  v22[5] = structureInput;
  v22[6] = structureInputDescriptor;
  v22[7] = scalarOutput;
  LODWORD(v23) = *scalarOutputCount;
  *&v24 = structureOutputDescriptor;
  *(&v24 + 1) = structureOutputMaximumSize;
  if (structureInput && structureInputDescriptor)
  {
    return -536870206;
  }

  v13 = (this->ExternalMethod)(this, selector, v22, 0, 0, 0);
  if (!v13)
  {
    if (v24 && *(&v23 + 1))
    {
      (*(**(&v23 + 1) + 16))(*(&v23 + 1), v14, v15, v16, v17, v18, v19, v20);
      return -536870212;
    }

    else
    {
      v13 = 0;
      *structureOutput = *(&v23 + 1);
      *scalarOutputCount = v23;
    }
  }

  return v13;
}

OSBundle *OSBundle::mainBundle(void)
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = *(*&gOSBundleMetaClass[-3].refcount + 48);
  if (v0)
  {
    while ((*(v0 + 24) & 1) == 0)
    {
      v0 = *(v0 + 16);
      if (!v0)
      {
        goto LABEL_4;
      }
    }

    v2 = *v0;
    for (i = strnlen(*v0, 0x400uLL) - 1; ; --i)
    {
      if (v2[i] == 47)
      {
        bzero(__dst, 0x400uLL);
        if (strlcat(__dst, v2, i + 1) >= 0x400)
        {
          OSBundle::mainBundle();
        }

        if (strlcat(__dst, "/Info.plist", 0x400uLL) >= 0x400)
        {
          OSBundle::mainBundle();
        }

        if (!stat(__dst, &v9))
        {
          break;
        }
      }
    }

    v4 = OSString::withCString(v2, i);
    if (!v4)
    {
      OSBundle::mainBundle();
    }

    v5 = v4;
    CStringNoCopy = OSString::getCStringNoCopy(v4);
    v1 = OSBundle::createFromPath(CStringNoCopy);
    (v5->release)(v5);
  }

  else
  {
LABEL_4:
    v1 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v1;
}

OSBundle *__cdecl OSBundle::createFromPath(const char *path)
{
  if (!path)
  {
    return 0;
  }

  v4 = 0;
  if (OSObjectAllocate(gOSBundleMetaClass, 0, &v4))
  {
    return 0;
  }

  v2 = v4;
  if (((v4->init)(v4) & 1) == 0)
  {
    (v2->release)(v2);
    return 0;
  }

  *v2->ivars = OSString::withCString(path);
  return v2;
}

void OSBundle::free(OSBundle *this)
{
  ivars = this->ivars;
  if (!*ivars || ((*(**ivars + 16))(*ivars), *this->ivars = 0, (ivars = this->ivars) != 0))
  {
    IOFree(ivars, 8uLL);
    this->ivars = 0;
  }

  OSObjectFree(this);
}

kern_return_t OSBundle::loadResource(OSBundle *this, const char *name, uint64_t options, size_t minGuardSize, OSMappedFile **outputMap)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if (name)
  {
    bzero(__dst, 0x400uLL);
    CStringNoCopy = OSString::getCStringNoCopy(*this->ivars);
    strlcat(__dst, CStringNoCopy, 0x400uLL);
    strlcat(__dst, "/", 0x400uLL);
    strlcat(__dst, name, 0x400uLL);
    v11 = OSMappedFile::createFromPath(__dst, v10, minGuardSize, &v14);
    if (v11)
    {
      if (v14)
      {
        (v14->release)();
      }
    }

    else
    {
      *outputMap = v14;
    }
  }

  else
  {
    v11 = -536870212;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

kern_return_t OSMappedFile::createFromPath(const char *path, uint64_t options, size_t minGuardSize, OSMappedFile **outputMappedFile)
{
  v4 = -536870212;
  v28 = 0;
  if (!path)
  {
    v13 = 0;
    v12 = 0;
    v4 = -536870206;
    goto LABEL_23;
  }

  if ((gIODKDebug & 2) != 0)
  {
    IOLog("Open file: %s\n", path);
  }

  v8 = open(path, 0);
  if (v8 < 0)
  {
    v14 = __error();
    v15 = strerror(*v14);
    IOLog("Failed to open %s: %s\n", path, v15);
    v13 = 0;
    v12 = 0;
    goto LABEL_23;
  }

  v9 = v8;
  if (fstat(v8, &v29))
  {
    v10 = __error();
    v11 = strerror(*v10);
    IOLog("Failed to fstat %s: %s\n", path, v11);
    v12 = 0;
    v13 = 0;
LABEL_22:
    close(v9);
    goto LABEL_23;
  }

  if (minGuardSize)
  {
    v16 = MEMORY[0x277D85FA0];
    if ((gIODKDebug & 2) != 0)
    {
      IOLog("Using guard pages: requested guard size is %zu, rounding up to %zu\n", minGuardSize, (minGuardSize - 1 + *MEMORY[0x277D85FA0]) & -*MEMORY[0x277D85FA0]);
    }

    v18 = *v16;
    v19 = -*v16;
    v17 = (minGuardSize - 1 + *v16) & v19;
  }

  else
  {
    v17 = 0;
    v18 = *MEMORY[0x277D85FA0];
    v19 = -*MEMORY[0x277D85FA0];
  }

  v12 = ((v29.st_size + v18 - 1) & v19) + 2 * v17;
  v20 = mmap(0, v12, 0, 4098, 0, 0);
  v13 = v20;
  if (v20 == -1)
  {
    v25 = __error();
    strerror(*v25);
    IOLog("Failed to mmap region of size %zu: %s\n");
    goto LABEL_22;
  }

  v21 = mmap(v20 + v17, v29.st_size, 1, 17, v9, 0);
  if (v21 == -1)
  {
    v26 = __error();
    strerror(*v26);
    IOLog("Failed to mmap file %s, size %lld at %p in mapped region %p->%p: %s\n");
    goto LABEL_22;
  }

  v22 = v21;
  v23 = OSObjectAllocate(gOSMappedFileMetaClass, 0, &v28);
  v24 = v28;
  if (!v23)
  {
    if ((v28->init)(v28))
    {
      v24[1].getMetaClass = v13;
      v24[1].retain = v12;
      v24[1].release = v22;
      v24[1].isEqualTo = v29.st_size;
      close(v9);
      v4 = 0;
      *outputMappedFile = v24;
      return v4;
    }

    close(v9);
    goto LABEL_29;
  }

  close(v9);
  if (v24)
  {
LABEL_29:
    (v24->release)(v24);
    v28 = 0;
  }

LABEL_23:
  if (v13 + 1 >= 2)
  {
    munmap(v13, v12);
  }

  return v4;
}

void OSMappedFile::free(OSMappedFile *this)
{
  munmap(*this->ivars, *(this->ivars + 1));
  ivars = this->ivars;
  if (ivars)
  {
    IOFree(ivars, 0x20uLL);
    this->ivars = 0;
  }

  OSObjectFree(this);
}

BOOL IOCommand::init(IOCommand *this)
{
  v2 = IOMallocZeroTyped(0x18uLL, 0x20040960023A9uLL);
  this->ivars = v2;
  if (v2)
  {
    *(v2 + 2) = this;
  }

  return v2 != 0;
}

BOOL non-virtual thunk toIOCommand::init(IOCommand *this)
{
  v2 = IOMallocZeroTyped(0x18uLL, 0x20040960023A9uLL);
  this->meta = v2;
  if (v2)
  {
    v2->meta = &this[-1].OSObjectInterface;
  }

  return v2 != 0;
}

void IOCommand::free(IOCommand *this)
{
  ivars = this->ivars;
  if (ivars)
  {
    IOFree(ivars, 0x18uLL);
    this->ivars = 0;
  }

  OSObjectFree(this);
}

BOOL IOCommandPool::initWithQueue(IOCommandPool *this, IODispatchQueue *queue)
{
  v4 = IOMallocZeroTyped(0x20uLL, 0x102004055CCDE27uLL);
  v5 = v4;
  this->ivars = v4;
  if (v4)
  {
    *v4 = v4;
    *(this->ivars + 1) = this->ivars;
    (queue->retain)(queue);
    *(this->ivars + 2) = queue;
  }

  return v5 != 0;
}

void IOCommandPool::free(IOCommandPool *this)
{
  ivars = this->ivars;
  v3 = *(ivars + 2);
  if (!v3 || ((*(*v3 + 16))(*(ivars + 2)), *(this->ivars + 2) = 0, (ivars = this->ivars) != 0))
  {
    IOFree(ivars, 0x20uLL);
    this->ivars = 0;
  }

  OSObjectFree(this);
}

IOCommandPoolPtr IOCommandPool::withQueue(IODispatchQueue *queue)
{
  v4 = 0;
  if (OSObjectAllocate(gIOCommandPoolMetaClass, 0, &v4))
  {
    return 0;
  }

  v2 = v4;
  if (v4 && ((v4->OSMetaClassBase::__vftable[1].getMetaClass)(v4, queue) & 1) == 0)
  {
    (v2->release)(v2);
    return 0;
  }

  return v2;
}

IOCommandPtr IOCommandPool::getCommand(IOCommandPool *this, BOOL blockForCommand)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v3 = *(this->ivars + 2);
  context[0] = MEMORY[0x277D85DD0];
  context[1] = 1107296256;
  context[2] = ___ZN13IOCommandPool10getCommandEb_block_invoke;
  context[3] = &__block_descriptor_tmp_156;
  context[4] = &v9;
  context[5] = this;
  v8 = blockForCommand;
  if (___ZN13IOCommandPool10getCommandEb_block_invoke)
  {
    v4 = ___ZN13IOCommandPool10getCommandEb_block_invoke;
  }

  else
  {
    v4 = 0;
  }

  IODispatchQueue::DispatchSync_f(v3, context, v4);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN13IOCommandPool10getCommandEb_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 80))(*(a1 + 40), *(*(a1 + 32) + 8) + 24, *(a1 + 48));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

void IOCommandPool::returnCommand(IOCommandPool *this, IOCommand *command)
{
  v3 = *(this->ivars + 2);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZN13IOCommandPool13returnCommandEP9IOCommand_block_invoke;
  v5[3] = &__block_descriptor_tmp_157;
  v5[4] = this;
  v5[5] = command;
  if (___ZN13IOCommandPool13returnCommandEP9IOCommand_block_invoke)
  {
    v4 = ___ZN13IOCommandPool13returnCommandEP9IOCommand_block_invoke;
  }

  else
  {
    v4 = 0;
  }

  IODispatchQueue::DispatchSync_f(v3, v5, v4);
}

uint64_t ___ZN13IOCommandPool13returnCommandEP9IOCommand_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 32) + 88))(*(a1 + 32), *(a1 + 40));
  if (result)
  {
    ___ZN13IOCommandPool13returnCommandEP9IOCommand_block_invoke_cold_1();
  }

  return result;
}

kern_return_t IOCommandPool::gatedGetCommand(IOCommandPool *this, IOCommand **command, BOOL blockForCommand)
{
  v3 = blockForCommand;
  result = IODispatchQueue::OnQueue(*(this->ivars + 2));
  if (!result)
  {
    IOCommandPool::gatedGetCommand();
  }

  ivars = this->ivars;
  v8 = *ivars;
  if (ivars == *ivars)
  {
    if (!v3)
    {
      return -536870210;
    }

    do
    {
      ++*(ivars + 6);
      v12.tv_sec = 0;
      v12.tv_nsec = 0;
      result = _IODispatchQueueSleep(*(*(this->ivars + 2) + 40), 0, this->ivars + 24, v12);
      ivars = this->ivars;
      v8 = *ivars;
    }

    while (ivars == *ivars);
  }

  v9 = *v8;
  v10 = v8[1];
  if (*(*v8 + 8) == v8 && *v10 == v8)
  {
    result = 0;
    v9[1] = v10;
    *v10 = v9;
    *v8 = 0;
    v8[1] = 0;
    *command = v8[2];
  }

  else
  {
    __break(1u);
  }

  return result;
}

kern_return_t IOCommandPool::gatedReturnCommand(IOCommandPool *this, IOCommand *command)
{
  result = IODispatchQueue::OnQueue(*(this->ivars + 2));
  if ((result & 1) == 0)
  {
    IOCommandPool::gatedReturnCommand();
  }

  ivars = this->ivars;
  v6 = *ivars;
  if (*(*ivars + 8) == ivars)
  {
    v7 = command->ivars;
    *v7 = v6;
    *(v7 + 1) = ivars;
    *(v6 + 8) = v7;
    *ivars = v7;
    v8 = this->ivars;
    v10 = *(v8 + 6);
    v9 = v8 + 24;
    if (v10)
    {
      IODispatchQueue::WakeupWithOptions(*(this->ivars + 2), v9, 0);
      --*(this->ivars + 6);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

kern_return_t IOServiceStateNotificationDispatchSource::Create(IOService *service, OSArray *items, IODispatchQueue *queue, IOServiceStateNotificationDispatchSource **source)
{
  result = IOServiceStateNotificationDispatchSource::Create_Call(service, items, queue, source);
  if (result)
  {
    IOServiceStateNotificationDispatchSource::Create();
  }

  *(*source)->ivars = queue;
  return result;
}

BOOL IOServiceStateNotificationDispatchSource::init(IOServiceStateNotificationDispatchSource *this)
{
  v2 = IOMallocZeroTyped(0x18uLL, 0x1020040839F2BD9uLL);
  this->ivars = v2;
  return v2 != 0;
}

BOOL non-virtual thunk toIOServiceStateNotificationDispatchSource::init(IOServiceStateNotificationDispatchSource *this)
{
  v2 = IOMallocZeroTyped(0x18uLL, 0x1020040839F2BD9uLL);
  this->IODispatchSource::OSObject::OSObjectInterface::__vftable = v2;
  return v2 != 0;
}

void IOServiceStateNotificationDispatchSource::free(IOServiceStateNotificationDispatchSource *this)
{
  ivars = this->ivars;
  if (ivars)
  {
    IOFree(ivars, 0x18uLL);
  }

  OSObjectFree(this);
}

kern_return_t IOServiceStateNotificationDispatchSource::SetEnableWithCompletion_Impl(IOServiceStateNotificationDispatchSource *this, BOOL enable, IODispatchSourceCancelHandler handler)
{
  v6 = IODispatchSource::SetEnableWithCompletion(this, enable, handler, IODispatchSource::_Dispatch);
  if (!v6)
  {
    v7 = *this->ivars;
    context[0] = MEMORY[0x277D85DD0];
    context[1] = 1107296256;
    context[2] = ___ZN40IOServiceStateNotificationDispatchSource28SetEnableWithCompletion_ImplEbU13block_pointerFvvE_block_invoke;
    context[3] = &__block_descriptor_tmp_161;
    v11 = enable;
    context[4] = handler;
    context[5] = this;
    if (___ZN40IOServiceStateNotificationDispatchSource28SetEnableWithCompletion_ImplEbU13block_pointerFvvE_block_invoke)
    {
      v8 = ___ZN40IOServiceStateNotificationDispatchSource28SetEnableWithCompletion_ImplEbU13block_pointerFvvE_block_invoke;
    }

    else
    {
      v8 = 0;
    }

    IODispatchQueue::DispatchSync_f(v7, context, v8);
  }

  return v6;
}

uint64_t ___ZN40IOServiceStateNotificationDispatchSource28SetEnableWithCompletion_ImplEbU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 48) + 17) = *(a1 + 48);
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

kern_return_t IOServiceStateNotificationDispatchSource::Cancel_Impl(IOServiceStateNotificationDispatchSource *this, IODispatchSourceCancelHandler handler)
{
  v2 = **(*this->ivars + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = ___ZN40IOServiceStateNotificationDispatchSource11Cancel_ImplEU13block_pointerFvvE_block_invoke;
  v4[3] = &__block_descriptor_tmp_164;
  v4[4] = handler;
  v4[5] = this;
  dispatch_async(v2, v4);
  return 0;
}

uint64_t ___ZN40IOServiceStateNotificationDispatchSource11Cancel_ImplEU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(v1 + 48) + 16) = 1;
  *(*(v1 + 48) + 17) = 0;
  return (*(*(a1 + 32) + 16))();
}

BOOL IOThread::init(IOThread *this)
{
  v2 = IOMallocZeroTyped(0x88uLL, 0x10A004045ED1EA6uLL);
  *(this + 5) = v2;
  return v2 != 0;
}

BOOL non-virtual thunk toIOThread::init(IOThread *this)
{
  v2 = IOMallocZeroTyped(0x88uLL, 0x10A004045ED1EA6uLL);
  *(this + 2) = v2;
  return v2 != 0;
}

void IOThread::free(OSMetaClassBase *this)
{
  meta = this[1].meta;
  if (meta)
  {
    pthread_mutex_destroy(&meta->metaClassPrivate);
    pthread_cond_destroy(&this[1].meta[2].metaClassPrivate);
    IOFree(this[1].meta, 0x88uLL);
  }

  OSObjectFree(this);
}

uint64_t IOThread::Create(IOThread *this, void (__cdecl *a2)(const OSObject *__hidden this), void (__cdecl *a3)(const OSObject *__hidden this), OSObject **a4, IOThread **a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v5 = 3758097090;
  if (a2 && a4)
  {
    v17 = 0;
    v9 = OSObjectAllocate(gIOThreadMetaClass, 0, &v18);
    v10 = v18;
    if (v9)
    {
      v5 = v9;
      if (!v18)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v5 = 3758097084;
      if ((v18->init)(v18))
      {
        v11 = v10[1].OSMetaClassBase::__vftable;
        v11->isEqualTo = 850045863;
        *&v11->Dispatch = 0u;
        *&v11->free = 0u;
        *&v11[1].retain = 0u;
        v11[1].isEqualTo = 0;
        v12 = v10[1].OSMetaClassBase::__vftable;
        v12[1].Dispatch = 1018212795;
        *&v12[1].init = 0u;
        *&v12[2].getMetaClass = 0u;
        v12[2].release = 0;
        v10[1].retain = a2;
        v10[1].release = a3;
        v5 = pthread_attr_init(&v19);
        if (!v5)
        {
          v13 = pthread_attr_setschedpolicy(&v19, 2);
          if (v13 || (v13 = pthread_attr_getschedparam(&v19, &v16), v13) || (v16.sched_priority = 63, v13 = pthread_attr_setschedparam(&v19, &v16), v13) || (v13 = pthread_attr_setdetachstate(&v19, 1), v13))
          {
            v5 = v13;
          }

          else
          {
            (v10->retain)(v10);
            v5 = pthread_create(&v17, &v19, IOThreadStart, v10);
            if (!v5)
            {
              pthread_mutex_lock(&v10[1].isEqualTo);
              v10[1].getMetaClass = v17;
              pthread_cond_signal(&v10[1].OSMetaClassBase::__vftable[1].Dispatch);
              pthread_mutex_unlock(&v10[1].isEqualTo);
              pthread_attr_destroy(&v19);
              *a4 = v10;
              goto LABEL_15;
            }

            (v10->release)(v10);
          }

          pthread_attr_destroy(&v19);
        }
      }
    }

    (v10->release)(v10);
  }

LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t IOThreadStart(void *a1)
{
  if (!a1)
  {
    IOThreadStart();
  }

  v2 = a1[2];
  if (v2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[2];
  }

  v4 = v3 != 0;
  if (v3)
  {
    v5 = v3 == gIOThreadMetaClass;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    do
    {
      v2 = *(v2[3] + 8);
      v4 = v2 != 0;
      if (v2)
      {
        v6 = v2 == gIOThreadMetaClass;
      }

      else
      {
        v6 = 1;
      }
    }

    while (!v6);
  }

  if (!v4)
  {
    IOThreadStart();
  }

  if (pthread_setspecific(gIOThreadTLSKey, a1))
  {
    IOThreadStart();
  }

  pthread_mutex_lock((a1[5] + 24));
  while (1)
  {
    v7 = *a1[5];
    if (v7 == pthread_self())
    {
      break;
    }

    pthread_cond_wait((a1[5] + 88), (a1[5] + 24));
  }

  pthread_mutex_unlock((a1[5] + 24));
  v8 = (*(a1[5] + 8))(*(a1[5] + 16));
  (*(*a1 + 16))(a1);
  return v8;
}

uint64_t IOThread::Join(IOThread *this, void **a2)
{
  v3 = 3758097084;
  v4 = **(this + 5);
  if (!v4)
  {
    return 3758097112;
  }

  if (!pthread_join(v4, a2))
  {
    v3 = 0;
    **(this + 5) = 0;
  }

  return v3;
}

uint64_t IOThread::CopyCurrentThread(IOThread *this, IOThread **a2)
{
  v3 = pthread_getspecific(gIOThreadTLSKey);
  if (!v3)
  {
    IOThread::CopyCurrentThread();
  }

  v4 = v3;
  v5 = v3[2];
  if (v5 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3[2];
  }

  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6 == gIOThreadMetaClass;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    do
    {
      v5 = *(v5[3] + 8);
      v7 = v5 != 0;
      if (v5)
      {
        v9 = v5 == gIOThreadMetaClass;
      }

      else
      {
        v9 = 1;
      }
    }

    while (!v9);
  }

  if (!v7)
  {
    IOThread::CopyCurrentThread();
  }

  if (!this)
  {
    return 3758097090;
  }

  (*(*v3 + 8))(v3);
  result = 0;
  *this = v4;
  return result;
}

uint64_t IOThread::GetTimeConstraint(pthread_t **this, unsigned int *a2, unsigned int *a3, unsigned int *a4, BOOL *a5, BOOL *a6)
{
  policy_infoCnt = 4;
  result = 3758097090;
  if (a2 && a3 && a4 && a5 && a6)
  {
    get_default = *a6;
    v13 = pthread_mach_thread_np(*this[5]);
    result = thread_policy_get(v13, 2u, policy_info, &policy_infoCnt, &get_default);
    if (!result)
    {
      v14 = policy_info[1];
      *a2 = policy_info[0];
      *a3 = v14;
      v15 = policy_info[3];
      *a4 = policy_info[2];
      *a5 = v15 != 0;
      *a6 = get_default != 0;
    }
  }

  return result;
}

uint64_t IOThread::SetTimeConstraint(pthread_t **this, integer_t a2, integer_t a3, integer_t a4, integer_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v5 = pthread_mach_thread_np(*this[5]);
  return thread_policy_set(v5, 2u, v7, 4u);
}

BOOL IOWorkGroup::init(IOWorkGroup *this)
{
  v2 = IOMallocZeroTyped(0x18uLL, 0x20040960023A9uLL);
  *(this + 5) = v2;
  return v2 != 0;
}

BOOL non-virtual thunk toIOWorkGroup::init(IOWorkGroup *this)
{
  v2 = IOMallocZeroTyped(0x18uLL, 0x20040960023A9uLL);
  *(this + 2) = v2;
  return v2 != 0;
}

void IOWorkGroup::free(OSMetaClassBase *this)
{
  meta = this[1].meta;
  if (meta)
  {
    if (meta->__vftable)
    {
      (*(meta->getMetaClass + 2))(meta->__vftable);
      this[1].meta->__vftable = 0;
      meta = this[1].meta;
    }

    v3 = *&meta->refcount;
    if (v3)
    {
      (*(*v3 + 16))(*&meta->refcount);
      *&this[1].meta->refcount = 0;
      meta = this[1].meta;
    }

    if (meta->meta)
    {
      os_release(meta->meta);
      meta = this[1].meta;
    }

    IOFree(meta, 0x18uLL);
  }

  OSObjectFree(this);
}

uint64_t IOWorkGroup::Create(const OSMetaClassBase *this, OSString *a2, IOUserClient *a3, IOWorkGroup **a4)
{
  v10 = 0;
  v7 = IOWorkGroup::Create_Call(this, a2, &v10, a4);
  if (!v7)
  {
    v7 = 3758097085;
    if (!v10)
    {
      return v7;
    }

    if (a3)
    {
      **(v10 + 40) = this;
      (*(***(v10 + 40) + 8))(**(v10 + 40));
      v8 = v10;
      *(*(v10 + 40) + 8) = a2;
      (*(**(*(v8 + 40) + 8) + 8))(*(*(v8 + 40) + 8));
      v7 = 0;
      a3->IOService::OSObject::OSMetaClassBase::__vftable = v10;
      return v7;
    }

    v7 = 3758097090;
    goto LABEL_3;
  }

  if (v10)
  {
LABEL_3:
    (*(*v10 + 16))();
  }

  return v7;
}