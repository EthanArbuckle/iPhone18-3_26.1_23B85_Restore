Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner.scanValue()()
{
  v1 = v0[3];
  v2 = v0[4];
  if (v1 >= v2)
  {
LABEL_31:
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    v13 = 1;
    goto LABEL_33;
  }

  while (1)
  {
    v3 = *v1;
    if (v3 < 0x41)
    {
      if (v3 == 64)
      {
        v15 = 64;
        goto LABEL_36;
      }

      if (((1 << v3) & 0x100003E00) != 0)
      {
        goto LABEL_7;
      }
    }

    if (v3 != 47)
    {
      break;
    }

    if ((v1 + 1) >= v2)
    {
      goto LABEL_35;
    }

    v4 = v1[1];
    if (v4 == 42)
    {
      v8 = v1 + 3;
      if ((v1 + 3) < v2)
      {
        v9 = v1 + 2;
        do
        {
          v11 = *v8;
          if (*v9 == 42)
          {
            if (v11 != 42)
            {
              if (v11 == 47)
              {
                v1 = v9 + 2;
                goto LABEL_8;
              }

LABEL_30:
              v10 = 2;
              goto LABEL_24;
            }
          }

          else if (v11 != 42)
          {
            goto LABEL_30;
          }

          v10 = 1;
LABEL_24:
          v9 += v10;
          v8 = v9 + 1;
        }

        while ((v9 + 1) < v2);
      }

      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v13 = 3;
LABEL_33:
      *v12 = v13;
      *(v12 + 8) = 0u;
      *(v12 + 24) = 0u;
      *(v12 + 40) = 0;
      v14 = 12;
LABEL_34:
      *(v12 + 48) = v14;
      swift_willThrow();
      return;
    }

    if (v4 != 47)
    {
LABEL_35:
      v15 = 47;
LABEL_36:
      v0[3] = v1;
      goto LABEL_37;
    }

    if ((v1 + 2) < v2)
    {
      v5 = v2 - 2 - v1;
      v1 += 3;
      while (1)
      {
        v6 = *(v1 - 1);
        if (v6 == 13 || v6 == 10)
        {
          break;
        }

        ++v1;
        if (!--v5)
        {
          goto LABEL_31;
        }
      }

LABEL_8:
      if (v1 < v2)
      {
        continue;
      }
    }

    goto LABEL_31;
  }

  if (v3 == 160)
  {
LABEL_7:
    ++v1;
    goto LABEL_8;
  }

  v0[3] = v1;
  if (v3 <= 90)
  {
    if (v3 > 42)
    {
      goto LABEL_55;
    }

    if (v3 == 34)
    {
      v21 = 34;
    }

    else
    {
      v15 = v3;
      if (v3 != 39)
      {
        goto LABEL_37;
      }

      v21 = 39;
    }

    JSON5Scanner.scanString(withQuote:)(v21);
  }

  else
  {
    if (v3 > 109)
    {
      if (v3 == 110)
      {
        JSON5Scanner.scanNull()();
        return;
      }

      if (v3 != 116)
      {
        v15 = v3;
        if (v3 != 123)
        {
          goto LABEL_37;
        }

        JSON5Scanner.scanObject()();
        return;
      }

LABEL_60:
      JSON5Scanner.scanBool()();
      return;
    }

    if (v3 == 91)
    {
      JSON5Scanner.scanArray()();
      return;
    }

    v15 = v3;
    if (v3 == 102)
    {
      goto LABEL_60;
    }

LABEL_37:
    while (v15 - 58 <= 0xFFFFFFF5)
    {
      if (v15 > 0x2E)
      {
        goto LABEL_40;
      }

      if (v15 == 46)
      {
        break;
      }

      if (((1 << v15) & 0x100002600) == 0)
      {
LABEL_40:
        if (v15 != 78 && v15 != 73)
        {
          v16 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v1, v0[1], v0[2]);
          v18 = v17;
          v20 = v19;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v12 = 0;
          *(v12 + 8) = 0;
          *(v12 + 16) = v3;
          *(v12 + 24) = v16;
          *(v12 + 32) = v18;
          *(v12 + 40) = v20;
          v14 = 1;
          goto LABEL_34;
        }

        break;
      }

      __break(1u);
LABEL_55:
      if (v3 != 43)
      {
        v15 = v3;
        if (v3 != 45)
        {
          continue;
        }
      }

      break;
    }

    JSON5Scanner.scanNumber()();
  }
}

Swift::UInt8 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner.DocumentReader.consumeWhitespace()()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v2 >= v1)
  {
    v3 = 1;
    goto LABEL_36;
  }

  v3 = 1;
  while (1)
  {
    v4 = *v2;
    if (v4 <= 0x3F && ((1 << v4) & 0x100003E00) != 0)
    {
      goto LABEL_10;
    }

    if (v4 != 47)
    {
      break;
    }

    if ((v2 + 1) >= v1)
    {
      goto LABEL_37;
    }

    v6 = v2[1];
    if (v6 == 42)
    {
      v10 = v2 + 3;
      if ((v2 + 3) < v1)
      {
        v11 = v2 + 2;
        do
        {
          v13 = *v10;
          if (*v11 == 42)
          {
            if (v13 != 42)
            {
              if (v13 == 47)
              {
                v2 = v11 + 2;
                goto LABEL_11;
              }

LABEL_33:
              v12 = 2;
              goto LABEL_27;
            }
          }

          else if (v13 != 42)
          {
            goto LABEL_33;
          }

          v12 = 1;
LABEL_27:
          v11 += v12;
          v10 = v11 + 1;
        }

        while ((v11 + 1) < v1);
      }

      v3 = 3;
LABEL_36:
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v14 = v3;
      *(v14 + 8) = 0u;
      *(v14 + 24) = 0u;
      *(v14 + 40) = 0;
      *(v14 + 48) = 12;
      swift_willThrow();
      LOBYTE(v4) = 0;
      return v4;
    }

    if (v6 != 47)
    {
      goto LABEL_37;
    }

    if ((v2 + 2) < v1)
    {
      v7 = v1 - 2 - v2;
      v2 += 3;
      while (1)
      {
        v8 = *(v2 - 1);
        if (v8 == 13 || v8 == 10)
        {
          break;
        }

        ++v2;
        if (!--v7)
        {
          goto LABEL_36;
        }
      }

LABEL_11:
      if (v2 < v1)
      {
        continue;
      }
    }

    goto LABEL_36;
  }

  if (v4 == 160)
  {
LABEL_10:
    ++v2;
    goto LABEL_11;
  }

LABEL_37:
  *(v0 + 16) = v2;
  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner.scanString(withQuote:)(Swift::UInt8_optional withQuote)
{
  v13 = 0;
  v4 = JSON5Scanner.DocumentReader.skipUTF8StringTillNextUnescapedQuote(isSimple:quote:)(&v13, *&withQuote & 0x1FF);
  if (v2)
  {
    return;
  }

  v5 = *(v1 + 24);
  if ((*&withQuote & 0x100) == 0)
  {
    if (*(v1 + 32) == v5)
    {
      __break(1u);
    }

    else
    {
      v6 = (v5 + 1);
      v7 = *v5;
      *(v1 + 24) = v5 + 1;
      if (v7 == withQuote.value)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    return;
  }

  v6 = *(v1 + 24);
LABEL_6:
  v8 = v13;
  v9 = v5 - v4;
  v10 = &v4[-*(v1 + 8)];
  JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v1 + 8), *(v1 + 16), v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18121D6B0;
  v12 = 8;
  if (!v8)
  {
    v12 = 0;
  }

  *(inited + 32) = v12;
  *(inited + 40) = v9;
  *(inited + 48) = v10;
  specialized Array.append<A>(contentsOf:)(inited);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner.scanArray()()
{
  v6 = v1[3];
  v7 = v1[4];
  if (v7 == v6)
  {
    __break(1u);
    goto LABEL_112;
  }

  v0 = v1;
  v8 = (v6 + 1);
  v9 = *v6;
  v1[3] = v6 + 1;
  if (v9 != 91)
  {
LABEL_112:
    __break(1u);
LABEL_113:
    v66 = v6;
    v67 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v0[3], v0[1], v0[2]);
    v69 = v68;
    v71 = v70;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v72 = 0;
    *(v72 + 8) = 0;
    *(v72 + 16) = v66;
    *(v72 + 24) = v67;
    *(v72 + 32) = v69;
    *(v72 + 40) = v71;
    *(v72 + 48) = 1;
    swift_willThrow();
LABEL_103:
    JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(v0[1], v0[2], v0[3]);
    v52 = v0[6];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
    }

    v61 = *(v52 + 2);
    v60 = *(v52 + 3);
    v62 = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v52);
      v62 = v61 + 1;
      v52 = v74;
    }

    *(v52 + 2) = v62;
    *&v52[8 * v61 + 32] = 7;
    *&v52[8 * v5 + 32] = v62;
    *&v52[8 * v3 + 48] = v4;
    goto LABEL_108;
  }

  v3 = v1[5];
  if (v3 > 511)
  {
    v20 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v6, v1[1], v1[2]);
    v22 = v21;
    v24 = v23;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v25 = v20;
    *(v25 + 8) = v22;
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0;
    *(v25 + 48) = 2;
    swift_willThrow();
    return;
  }

  v1[5] = v3 + 1;
  if (v8 >= v7)
  {
    v10 = 1;
    goto LABEL_38;
  }

  v10 = 1;
  while (1)
  {
    v11 = *v8;
    if (v11 < 0x41)
    {
      if (v11 == 64)
      {
        goto LABEL_39;
      }

      if (((1 << v11) & 0x100003E00) != 0)
      {
        goto LABEL_11;
      }
    }

    if (v11 != 47)
    {
      break;
    }

    if ((v8 + 1) >= v7)
    {
      goto LABEL_39;
    }

    v12 = v8[1];
    if (v12 == 42)
    {
      v16 = v8 + 3;
      if ((v8 + 3) < v7)
      {
        v17 = v8 + 2;
        do
        {
          v19 = *v16;
          if (*v17 == 42)
          {
            if (v19 != 42)
            {
              if (v19 == 47)
              {
                v8 = v17 + 2;
                goto LABEL_12;
              }

LABEL_34:
              v18 = 2;
              goto LABEL_28;
            }
          }

          else if (v19 != 42)
          {
            goto LABEL_34;
          }

          v18 = 1;
LABEL_28:
          v17 += v18;
          v16 = v17 + 1;
        }

        while ((v17 + 1) < v7);
      }

      v10 = 3;
LABEL_38:
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v26 = v10;
      *(v26 + 8) = 0u;
      *(v26 + 24) = 0u;
      *(v26 + 40) = 0;
      *(v26 + 48) = 12;
      swift_willThrow();
      v1[5] = v3;
      return;
    }

    if (v12 != 47)
    {
LABEL_39:
      v1[3] = v8;
LABEL_40:
      JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(v0[1], v0[2], v8);
      v27 = v0[6];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
      }

      v3 = *(v27 + 2);
      v28 = *(v27 + 3);
      v5 = v3 + 1;
      if (v3 >= v28 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v3 + 1, 1, v27);
      }

      *(v27 + 2) = v5;
      *&v27[8 * v3 + 32] = 6;
      v0[6] = v27;
      specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of JSON5Scanner.scanArray());
      v29 = 0;
      while (1)
      {
        v4 = v29;
        LOBYTE(v6) = JSON5Scanner.DocumentReader.consumeWhitespace()();
        if (v2)
        {
          goto LABEL_103;
        }

        if (v6 <= 0x5Au)
        {
          if (v6 > 0x2Au)
          {
            if (v6 != 43 && v6 != 45)
            {
LABEL_71:
              if ((v6 - 58) <= 0xF5u)
              {
                if (v6 > 0x2Eu)
                {
                  goto LABEL_73;
                }

                if (v6 != 46)
                {
                  if (((1 << v6) & 0x100002600) != 0)
                  {
                    __break(1u);
                    goto LABEL_85;
                  }

LABEL_73:
                  if (v6 != 73 && v6 != 78)
                  {
                    goto LABEL_113;
                  }
                }
              }
            }

            JSON5Scanner.scanNumber()();
            goto LABEL_78;
          }

          if (v6 == 34)
          {
            v31 = 34;
          }

          else
          {
            if (v6 != 39)
            {
              goto LABEL_71;
            }

            v31 = 39;
          }

          JSON5Scanner.scanString(withQuote:)(v31);
          if (v33)
          {
            goto LABEL_103;
          }
        }

        else if (v6 <= 0x6Du)
        {
          if (v6 != 91)
          {
            if (v6 != 102)
            {
              goto LABEL_71;
            }

LABEL_62:
            JSON5Scanner.scanBool()();
            if (v32)
            {
              goto LABEL_103;
            }

            goto LABEL_78;
          }

          JSON5Scanner.scanArray()();
          if (v35)
          {
            goto LABEL_103;
          }
        }

        else
        {
          switch(v6)
          {
            case 'n':
              JSON5Scanner.scanNull()();
              if (v34)
              {
                goto LABEL_103;
              }

              break;
            case 't':
              goto LABEL_62;
            case '{':
              JSON5Scanner.scanObject()();
              if (v30)
              {
                goto LABEL_103;
              }

              break;
            default:
              goto LABEL_71;
          }
        }

LABEL_78:
        v36 = JSON5Scanner.DocumentReader.consumeWhitespace()();
        if (v37)
        {
          goto LABEL_89;
        }

        v38 = v36;
        if (v36 != 44)
        {
          if (v36 == 93)
          {
LABEL_97:
            v42 = v0[2];
            v43 = v0[3] + 1;
            v0[3] = v43;
            v41 = v0[1];
            goto LABEL_98;
          }

          v77 = v3 + 1;
          if (v36 <= 0x20u && ((1 << v36) & 0x100002600) != 0)
          {
            __break(1u);
            return;
          }

          v44 = v0[1];
          v45 = v0[2];
          v46 = v0[3];
          v76 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v46, v44, v45);
          v48 = v47;
          v50 = v49;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v51 = xmmword_181237540;
          *(v51 + 16) = v38;
          *(v51 + 24) = v76;
          *(v51 + 32) = v48;
          *(v51 + 40) = v50;
          *(v51 + 48) = 1;
          swift_willThrow();
          JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(v44, v45, v46);
          v52 = v0[6];
          v53 = v4 + 1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_115;
          }

          goto LABEL_94;
        }

        ++v0[3];
        v39 = JSON5Scanner.DocumentReader.consumeWhitespace()();
        if (v40)
        {
          goto LABEL_89;
        }

        v29 = v4 + 1;
        if (v39 == 93)
        {
          goto LABEL_97;
        }
      }
    }

    if ((v8 + 2) < v7)
    {
      v13 = v7 - 2 - v8;
      v8 += 3;
      while (1)
      {
        v14 = *(v8 - 1);
        if (v14 == 13 || v14 == 10)
        {
          break;
        }

        ++v8;
        if (!--v13)
        {
          goto LABEL_38;
        }
      }

LABEL_12:
      if (v8 < v7)
      {
        continue;
      }
    }

    goto LABEL_38;
  }

  if (v11 == 160)
  {
LABEL_11:
    ++v8;
    goto LABEL_12;
  }

LABEL_85:
  v0[3] = v8;
  if (v11 != 93)
  {
    if (v11 <= 0x20 && ((1 << v11) & 0x100002600) != 0)
    {
      __break(1u);
LABEL_89:
      v41 = v0[1];
      v42 = v0[2];
      v43 = v0[3];
LABEL_98:
      JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(v41, v42, v43);
      v52 = v0[6];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
      }

      v58 = *(v52 + 2);
      v57 = *(v52 + 3);
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v52);
        v59 = v58 + 1;
        v52 = v73;
      }

      *(v52 + 2) = v59;
      *&v52[8 * v58 + 32] = 7;
      *&v52[8 * v5 + 32] = v59;
      *&v52[8 * v3 + 48] = v4 + 1;
LABEL_108:
      --v0[5];
      v0[6] = v52;
      return;
    }

    goto LABEL_40;
  }

  v53 = v2;
  v63 = (v8 + 1);
  v0[3] = v63;
  JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(v0[1], v0[2], v63);
  v64 = *(v0[6] + 16);
  v52 = (v64 + 4);
  if (__OFADD__(v64, 4))
  {
    __break(1u);
LABEL_115:
    v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
LABEL_94:
    v55 = *(v52 + 2);
    v54 = *(v52 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v52);
      v56 = v55 + 1;
      v52 = v75;
    }

    *(v52 + 2) = v56;
    *&v52[8 * v55 + 32] = 7;
    *&v52[8 * v77 + 32] = v56;
    *&v52[8 * v3 + 48] = v53;
    goto LABEL_108;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18121D6C0;
  *(inited + 32) = 6;
  *(inited + 40) = v52;
  *(inited + 48) = xmmword_181237530;
  specialized Array.append<A>(contentsOf:)(inited);
  v0[5] = v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner.scanNull()()
{
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  if (v3 < v2)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v3 - v2) <= 3)
  {
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0;
    v5 = 12;
LABEL_22:
    *(v4 + 48) = v5;
    swift_willThrow();
    return;
  }

  if (*v2 != 1819047278)
  {
    v6 = *(v0 + 1);
    v7 = *(v0 + 2);
    if ((((v6 + v7 - v3) | &v2[-v6]) & 0x8000000000000000) == 0)
    {
      if (v2 < v3 && *v2 == 110)
      {
        if (v2[1] == 117)
        {
          if (v2[2] == 108)
          {
            v8 = 3;
            if (v2[3] == 108)
            {
              v8 = 0;
            }
          }

          else
          {
            v8 = 2;
          }
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 0;
      }

      v9 = &v2[v8];
      if (&v2[v8] >= v3)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v9;
      }

      v14 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v9, v6, v7);
      v16 = v15;
      v18 = v17;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v4 = 0xD000000000000016;
      *(v4 + 8) = 0x8000000181481BD0;
      *(v4 + 16) = v10;
      *(v4 + 24) = v14;
      *(v4 + 32) = v16;
      *(v4 + 40) = v18;
      v5 = 1;
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  *(v0 + 3) = v2 + 4;
  v1 = v0;
  JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v0 + 1), *(v0 + 2), (v2 + 4));
  v0 = *(v0 + 6);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_27:
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 2) + 1, 1, v0);
  }

  v12 = *(v0 + 2);
  v11 = *(v0 + 3);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v0);
    v13 = v12 + 1;
    v0 = v19;
  }

  *(v0 + 2) = v13;
  *&v0[8 * v12 + 32] = 2;
  *(v1 + 6) = v0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner.scanBool()()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  if (v2 != v1)
  {
    v4 = (v1 + 1);
    v3 = *v1;
    *(v0 + 3) = v1 + 1;
    if (v3 == 116)
    {
      if (v2 >= v4)
      {
        if (v2 - v4 > 2)
        {
          if (*v4 == 30066 && v1[3] == 101)
          {
            *(v0 + 3) = v1 + 4;
            v2 = v0;
            JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v0 + 1), *(v0 + 2), (v1 + 4));
            v0 = *(v0 + 6);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_35:
              v25 = *(v0 + 2);
              v24 = *(v0 + 3);
              if (v25 >= v24 >> 1)
              {
                v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v0);
              }

              *(v0 + 2) = v25 + 1;
              v26 = &v0[8 * v25];
              v27 = 3;
LABEL_43:
              *(v26 + 4) = v27;
              *(v2 + 6) = v0;
              return;
            }

LABEL_56:
            v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 2) + 1, 1, v0);
            goto LABEL_35;
          }

          v6 = *(v0 + 1);
          v7 = *(v0 + 2);
          if ((((v6 + v7 - v2) | &v4[-v6]) & 0x8000000000000000) == 0)
          {
            if (v4 < v2 && *v4 == 114)
            {
              if (v1[2] == 117)
              {
                v8 = 2 * (v1[3] != 101);
              }

              else
              {
                v8 = 1;
              }
            }

            else
            {
              v8 = 0;
            }

            v14 = &v4[v8];
            if (&v4[v8] >= v2)
            {
              v15 = 0;
            }

            else
            {
              v15 = *v14;
            }

            v19 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v14, v6, v7);
            v21 = v30;
            v23 = v31;
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v9 = 0xD000000000000019;
            *(v9 + 8) = 0x8000000181481BB0;
            *(v9 + 16) = v15;
LABEL_46:
            *(v9 + 24) = v19;
            *(v9 + 32) = v21;
            *(v9 + 40) = v23;
            v10 = 1;
            goto LABEL_47;
          }

          goto LABEL_54;
        }

LABEL_17:
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v9 = 1;
        *(v9 + 8) = 0u;
        *(v9 + 24) = 0u;
        *(v9 + 40) = 0;
        v10 = 12;
LABEL_47:
        *(v9 + 48) = v10;
        swift_willThrow();
        return;
      }
    }

    else
    {
      if (v3 == 102)
      {
        if (v2 >= v4)
        {
          if (v2 - v4 > 3)
          {
            if (*v4 == 1702063201)
            {
              *(v0 + 3) = v1 + 5;
              v2 = v0;
              JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(*(v0 + 1), *(v0 + 2), (v1 + 5));
              v0 = *(v0 + 6);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 2) + 1, 1, v0);
              }

              v29 = *(v0 + 2);
              v28 = *(v0 + 3);
              if (v29 >= v28 >> 1)
              {
                v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v0);
              }

              *(v0 + 2) = v29 + 1;
              v26 = &v0[8 * v29];
              v27 = 4;
              goto LABEL_43;
            }

            v11 = *(v0 + 1);
            v12 = *(v0 + 2);
            if ((((v11 + v12 - v2) | &v4[-v11]) & 0x8000000000000000) == 0)
            {
              if (v4 < v2 && *v4 == 97)
              {
                if (v1[2] == 108)
                {
                  if (v1[3] == 115)
                  {
                    if (v1[4] == 101)
                    {
                      v13 = 0;
                    }

                    else
                    {
                      v13 = 3;
                    }
                  }

                  else
                  {
                    v13 = 2;
                  }
                }

                else
                {
                  v13 = 1;
                }
              }

              else
              {
                v13 = 0;
              }

              _StringGuts.grow(_:)(20);

              strcpy(v32, "in expected ");
              BYTE5(v32[1]) = 0;
              HIWORD(v32[1]) = -5120;
              MEMORY[0x1865CB0E0](0x6E61656C6F6F62, 0xE700000000000000);
              MEMORY[0x1865CB0E0](0x65756C617620, 0xE600000000000000);
              v16 = 0;
              v17 = v32[1];
              v18 = &v4[v13];
              if (&v4[v13] < v2)
              {
                v16 = *v18;
              }

              v19 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v18, v11, v12);
              v21 = v20;
              v23 = v22;
              lazy protocol witness table accessor for type JSONError and conformance JSONError();
              swift_allocError();
              *v9 = v32[0];
              *(v9 + 8) = v17;
              *(v9 + 16) = v16;
              goto LABEL_46;
            }

            goto LABEL_55;
          }

          goto LABEL_17;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_53;
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner.scanNumber()()
{
  v1 = v0[3];
  JSON5Scanner.DocumentReader.skipNumber()();
  v2 = v0[3];
  v3 = v2 - v1;
  v4 = v0[1];
  v5 = v1 - v4;
  JSON5Scanner.JSONPartialMapData.resizeIfNecessary(with:)(v4, v0[2], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18121D6B0;
  *(inited + 32) = 1;
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  specialized Array.append<A>(contentsOf:)(inited);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner._scanObjectLoop(withoutBraces:count:done:)(Swift::Bool withoutBraces, Swift::Int *count, Swift::Bool *done)
{
  v4 = v3;
  JSON5Scanner.scanKey()();
  if (v8)
  {
    return;
  }

  v9 = v3[3];
  v10 = v3[4];
  if (v9 >= v10)
  {
LABEL_32:
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    v21 = 1;
    goto LABEL_34;
  }

  while (1)
  {
    v11 = *v9;
    if (v11 < 0x41)
    {
      if (v11 == 64)
      {
        goto LABEL_37;
      }

      if (((1 << v11) & 0x100003E00) != 0)
      {
        goto LABEL_8;
      }
    }

    if (v11 != 47)
    {
      break;
    }

    if ((v9 + 1) >= v10)
    {
      goto LABEL_37;
    }

    v12 = v9[1];
    if (v12 == 42)
    {
      v16 = v9 + 3;
      if ((v9 + 3) < v10)
      {
        v17 = v9 + 2;
        do
        {
          v19 = *v16;
          if (*v17 == 42)
          {
            if (v19 != 42)
            {
              if (v19 == 47)
              {
                v9 = v17 + 2;
                goto LABEL_9;
              }

LABEL_31:
              v18 = 2;
              goto LABEL_25;
            }
          }

          else if (v19 != 42)
          {
            goto LABEL_31;
          }

          v18 = 1;
LABEL_25:
          v17 += v18;
          v16 = v17 + 1;
        }

        while ((v17 + 1) < v10);
      }

      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v21 = 3;
LABEL_34:
      *v20 = v21;
      *(v20 + 8) = 0u;
      *(v20 + 24) = 0u;
      *(v20 + 40) = 0;
      v22 = 12;
LABEL_35:
      *(v20 + 48) = v22;
      swift_willThrow();
      return;
    }

    if (v12 != 47)
    {
LABEL_37:
      v3[3] = v9;
LABEL_49:
      v29 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v9, v3[1], v3[2]);
      v31 = v34;
      v33 = v35;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v20 = xmmword_181237550;
      *(v20 + 16) = v11;
      goto LABEL_50;
    }

    if ((v9 + 2) < v10)
    {
      v13 = v10 - 2 - v9;
      v9 += 3;
      while (1)
      {
        v14 = *(v9 - 1);
        if (v14 == 13 || v14 == 10)
        {
          break;
        }

        ++v9;
        if (!--v13)
        {
          goto LABEL_32;
        }
      }

LABEL_9:
      if (v9 < v10)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if (v11 == 160)
  {
LABEL_8:
    ++v9;
    goto LABEL_9;
  }

  v3[3] = v9;
  if (v11 != 58)
  {
    goto LABEL_49;
  }

  v3[3] = v9 + 1;
  JSON5Scanner.scanValue()();
  if (!v23)
  {
    *count += 2;
    v24 = JSON5Scanner.DocumentReader.consumeWhitespace(allowingEOF:)(withoutBraces);
    if (!v25)
    {
      value = v24.value;
      if ((*&v24 & 0x100) != 0)
      {
        if (!withoutBraces)
        {
          __break(1u);
          return;
        }

        goto LABEL_53;
      }

      if (v24.value == 125)
      {
        goto LABEL_47;
      }

      if (v24.value != 44)
      {
        v36 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v4[3], v4[1], v4[2]);
        v38 = v37;
        v40 = v39;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v20 = xmmword_181237550;
        *(v20 + 16) = value;
        *(v20 + 24) = v36;
        *(v20 + 32) = v38;
        *(v20 + 40) = v40;
        goto LABEL_51;
      }

      ++v4[3];
      v27 = JSON5Scanner.DocumentReader.consumeWhitespace(allowingEOF:)(withoutBraces);
      if (!v28)
      {
        if ((*&v27 & 0x100) != 0)
        {
          goto LABEL_53;
        }

        if (v27.value == 125)
        {
LABEL_47:
          if (withoutBraces)
          {
            v29 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v4[3], v4[1], v4[2]);
            v31 = v30;
            v33 = v32;
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v20 = 0;
            *(v20 + 8) = 0;
            *(v20 + 16) = 125;
LABEL_50:
            *(v20 + 24) = v29;
            *(v20 + 32) = v31;
            *(v20 + 40) = v33;
LABEL_51:
            v22 = 1;
            goto LABEL_35;
          }

          ++v4[3];
LABEL_53:
          *done = 1;
        }
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner.scanKey()()
{
  v2 = type metadata accessor for Unicode.GeneralCategory();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Unicode.Scalar.Properties();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0[3];
  v11 = v0[4];
  if (v12 >= v11)
  {
    goto LABEL_13;
  }

  v13 = *v12;
  v14 = (v13 - 34);
  if (v14 <= 0x3D)
  {
    if (((1 << (v13 - 34)) & 0x2400001F80000004) != 0)
    {
LABEL_8:
      v15 = 256;
      goto LABEL_9;
    }

    if (v13 == 34)
    {
      v15 = 34;
      goto LABEL_9;
    }

    if (v14 == 5)
    {
      v15 = 39;
LABEL_9:
      JSON5Scanner.scanString(withQuote:)(v15);
      return;
    }
  }

  if ((v13 - 97) < 6)
  {
    goto LABEL_8;
  }

  v35 = v8;
  v16 = v0[2];
  v36 = v0[1];
  v34 = v16;
  JSON5Scanner.DocumentReader.peekU32()(v36, v16, v12, v11);
  if (!v1)
  {
    v18 = v36;
    if (v17)
    {
LABEL_13:
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v19 = 1;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 40) = 0;
      *(v19 + 48) = 12;
      swift_willThrow();
      return;
    }

    v33[1] = v0;
    v33[2] = 0;
    Unicode.Scalar.properties.getter();
    Unicode.Scalar.Properties.generalCategory.getter();
    (*(v7 + 8))(v10, v35);
    v20 = (*(v3 + 88))(v5, v2);
    if (v20 == *MEMORY[0x1E69E78A0] || v20 == *MEMORY[0x1E69E7888] || v20 == *MEMORY[0x1E69E7898] || v20 == *MEMORY[0x1E69E7860] || v20 == *MEMORY[0x1E69E7818] || v20 == *MEMORY[0x1E69E7838])
    {
      v26 = 256;
      JSON5Scanner.scanString(withQuote:)(v26);
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v27 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v12, v18, v34);
      v29 = v28;
      v31 = v30;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v32 = 0xD000000000000022;
      *(v32 + 8) = 0x8000000181481B80;
      *(v32 + 16) = v13;
      *(v32 + 24) = v27;
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      *(v32 + 48) = 1;
      swift_willThrow();
    }
  }
}

unint64_t JSON5Scanner.DocumentReader.peekU32()(unint64_t result, uint64_t a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a3 >= a4)
  {
    return 0;
  }

  if (*a3 != 92)
  {
    v18 = result;
    result = BufferView<A>._decodeScalar()(a3, a4 - a3);
    if ((result & 0x100000000) == 0)
    {
      return result;
    }

    v21 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(a3, v18, a2);
    v23 = v22;
    v25 = v24;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v26 = v21;
    *(v26 + 8) = v23;
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    return swift_willThrow();
  }

  if ((a3 + 1) >= a4)
  {
    goto LABEL_25;
  }

  v4 = a3[1];
  if (v4 != 120)
  {
    if (v4 != 117)
    {
      v27 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)((a3 + 1), result, a2);
      v29 = v28;
      v31 = v30;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = v4;
      *(v16 + 24) = v27;
      *(v16 + 32) = v29;
      *(v16 + 40) = v31;
      v17 = 1;
      goto LABEL_26;
    }

    if ((a4 - a3) > 5)
    {
      v5 = (a3 + 2);
      v6 = result + a2 - (a3 + 2);
      if (((&a3[-result + 2] | v6) & 0x8000000000000000) == 0)
      {
        if (v6 >= 4)
        {
          v7 = 0;
          v8 = a3 + 2;
          while (1)
          {
            v9 = *v8;
            v10 = v9 - 48;
            if ((v9 - 48) >= 0xA)
            {
              if ((v9 - 65) < 6)
              {
                v10 = v9 - 55;
              }

              else
              {
                if ((v9 - 97) > 5)
                {
                  break;
                }

                v10 = v9 - 87;
              }
            }

            if (v7 > 0xFFFu)
            {
              break;
            }

            v7 = 16 * v7 + v10;
            if (++v8 >= a3 + 6)
            {
              if (!v7)
              {
                goto LABEL_42;
              }

              if (v7 >> 11 == 27)
              {
                v11 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(a3, result, a2);
                v13 = v12;
                v15 = v14;
                lazy protocol witness table accessor for type JSONError and conformance JSONError();
                swift_allocError();
                *v16 = v11;
                *(v16 + 8) = v13;
                *(v16 + 16) = v15;
                *(v16 + 24) = v7;
                *(v16 + 32) = 0;
                *(v16 + 40) = 0;
                v17 = 9;
                goto LABEL_26;
              }

              return v7;
            }
          }

LABEL_41:
          v37 = result;
          v39 = static String._fromUTF8Repairing(_:)();
          v41 = v40;
          v42 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v5, v37, a2);
          v44 = v43;
          v46 = v45;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v16 = v39;
          *(v16 + 8) = v41;
          *(v16 + 16) = v42;
          *(v16 + 24) = v44;
          *(v16 + 32) = v46;
          *(v16 + 40) = 0;
          v17 = 3;
          goto LABEL_26;
        }

        goto LABEL_46;
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_25:
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v16 = 1;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0;
    v17 = 12;
LABEL_26:
    *(v16 + 48) = v17;
    return swift_willThrow();
  }

  if ((a4 - a3) <= 3)
  {
    goto LABEL_25;
  }

  v5 = (a3 + 2);
  v32 = result + a2 - (a3 + 2);
  if (((&a3[-result + 2] | v32) & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (v32 >= 2)
  {
    v33 = 0;
    v34 = a3 + 2;
    while (1)
    {
      v35 = *v34;
      v36 = v35 - 48;
      if ((v35 - 48) >= 0xA)
      {
        if ((v35 - 65) < 6)
        {
          v36 = v35 - 55;
        }

        else
        {
          if ((v35 - 97) > 5)
          {
            goto LABEL_41;
          }

          v36 = v35 - 87;
        }
      }

      if (v33 > 0xFu)
      {
        goto LABEL_41;
      }

      v33 = v36 + 16 * v33;
      if (++v34 >= a3 + 4)
      {
        if (v33)
        {
          return v33;
        }

LABEL_42:
        v47 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v5, result, a2);
        v49 = v48;
        v51 = v50;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v16 = v47;
        *(v16 + 8) = v49;
        *(v16 + 16) = v51;
        *(v16 + 24) = 0;
        *(v16 + 32) = 0;
        *(v16 + 40) = 0;
        v17 = 4;
        goto LABEL_26;
      }
    }
  }

LABEL_47:
  __break(1u);
  return result;
}

unsigned __int8 *JSON5Scanner.DocumentReader.skipUTF8StringTillNextUnescapedQuote(isSimple:quote:)(_BYTE *a1, __int16 quote)
{
  v5 = v2[2];
  if ((quote & 0x100) != 0)
  {
    v15 = specialized JSON5Scanner.DocumentReader.skipUTF8StringTillEndOfUnquotedKey(orEscapeSequence:)();
    if (!v3)
    {
      if (v15 != 92)
      {
        goto LABEL_12;
      }

      *a1 = 0;
      specialized JSON5Scanner.DocumentReader.skipUTF8StringTillEndOfUnquotedKey(orEscapeSequence:)();
    }

    return v5;
  }

  v6 = v2[3];
  if (v6 == v5)
  {
    goto LABEL_34;
  }

  v8 = *v5++;
  v7 = v8;
  v2[2] = v5;
  if (v8 != quote)
  {
    v5 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v5, *v2, v2[1]);
    v17 = v16;
    v19 = v18;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = v7;
    *(v20 + 24) = v5;
    *(v20 + 32) = v17;
    *(v20 + 40) = v19;
    *(v20 + 48) = 1;
    swift_willThrow();
    return v5;
  }

  v9 = quote;
  result = JSON5Scanner.DocumentReader.skipUTF8StringTillQuoteOrBackslashOrInvalidCharacter(quote:)(quote);
  if (v11)
  {
    return v5;
  }

  if (result == v9)
  {
LABEL_12:
    *a1 = 1;
    return v5;
  }

  *a1 = 0;
  v12 = v2[2];
  if (v12 >= v6)
  {
LABEL_34:
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    v5 = swift_allocError();
    *v31 = 1;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0;
    *(v31 + 48) = 12;
LABEL_35:
    swift_willThrow();
    return v5;
  }

  v13 = v9;
  v14 = 16843009 * v9;
  while (1)
  {
    v23 = *v12;
    if (v23 == v13)
    {
      return v5;
    }

    if (v23 != 92)
    {
      v21 = 1;
      goto LABEL_14;
    }

    if (v6 == v12)
    {
      break;
    }

    v2[2] = (v12 + 1);
    if (v6 == v12 + 1)
    {
      goto LABEL_34;
    }

    v24 = v12[1];
    v22 = (v12 + 2);
    v2[2] = (v12 + 2);
    if (v24 == 120)
    {
      if (&v6[-v22] <= 1)
      {
LABEL_37:
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        v32 = swift_allocError();
        *v33 = 1;
        *(v33 + 8) = 0u;
        *(v33 + 24) = 0u;
        *(v33 + 40) = 0;
        v34 = 12;
LABEL_39:
        *(v33 + 48) = v34;
        v5 = v32;
        goto LABEL_35;
      }

      v25 = *v2;
      v29 = v22 - *v2;
      v30 = v29 + 2;
      if (__OFADD__(v29, 2))
      {
        goto LABEL_42;
      }

      v28 = v2[1];
      if (v28 < v30 || (((v25 + v30 - v22) | v29) & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if ((~((((v14 ^ *(v25 + v29)) & 0x7F7F7F7F) + 2139062143) | *(v25 + v29)) & 0x80808080) != 0)
      {
LABEL_38:
        v35 = static String._fromUTF8Repairing(_:)();
        v37 = v36;
        v38 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v22, v25, v28);
        v40 = v39;
        v42 = v41;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        v32 = swift_allocError();
        *v33 = v35;
        *(v33 + 8) = v37;
        *(v33 + 16) = v38;
        *(v33 + 24) = v40;
        *(v33 + 32) = v42;
        *(v33 + 40) = 0;
        v34 = 3;
        goto LABEL_39;
      }

      v21 = 4;
    }

    else
    {
      if (v24 != 117)
      {
        goto LABEL_15;
      }

      if (&v6[-v22] <= 3)
      {
        goto LABEL_37;
      }

      v25 = *v2;
      v26 = v22 - *v2;
      v27 = v26 + 4;
      if (__OFADD__(v26, 4))
      {
        goto LABEL_41;
      }

      v28 = v2[1];
      if (v28 < v27 || (((v25 + v27 - v22) | v26) & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if ((~((((*(v25 + v26) ^ v14) & 0x7F7F7F7F) + 2139062143) | *(v25 + v26)) & 0x80808080) != 0)
      {
        goto LABEL_38;
      }

      v21 = 6;
    }

LABEL_14:
    v22 = &v12[v21];
    v2[2] = &v12[v21];
LABEL_15:
    v12 = v22;
    if (v22 >= v6)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

Swift::Void __swiftcall JSON5Scanner.DocumentReader.skipNumber()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == v1)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v5 = *v1;
  v3 = v1 + 1;
  v4 = v5;
  *(v0 + 16) = v3;
  if ((v5 - 58) <= 0xFFFFFFF5)
  {
    v6 = v4 - 43;
    v7 = v6 > 0x23;
    v8 = (1 << v6) & 0x84000000DLL;
    if (v7 || v8 == 0)
    {
      goto LABEL_19;
    }
  }

  for (; v3 < v2; *(v0 + 16) = ++v3)
  {
    v10 = *v3;
    if (v10 - 58 <= 0xFFFFFFF5)
    {
      v11 = v10 > 0x2E || ((1 << v10) & 0x680000000000) == 0;
      if (v11 && (v10 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6)
      {
        break;
      }
    }
  }
}

Swift::UInt8 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSON5Scanner.DocumentReader.skipUTF8StringTillQuoteOrBackslashOrInvalidCharacter(quote:)(Swift::UInt8 quote)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v2 >= v3)
  {
LABEL_9:
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 40) = 0;
    *(v7 + 48) = 12;
    swift_willThrow();
    LOBYTE(v5) = 0;
  }

  else
  {
    v4 = quote;
    while (1)
    {
      v5 = *v2;
      v6 = v5 < 0x20 || v5 == v4;
      if (v6 || v5 == 92)
      {
        break;
      }

      *(v1 + 16) = ++v2;
      if (v2 == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return v5;
}

uint64_t static JSON5Scanner.stringValue(from:fullSource:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = (a1 + a2);
  v9 = a1;
  if (a2 >= 1)
  {
    do
    {
      v10 = *v9;
      if (v10 == 92)
      {
        break;
      }

      if (v10 < 0x20)
      {
        break;
      }

      ++v9;
    }

    while (v9 < v8);
    if (v9 < a1)
    {
      __break(1u);
      return v19[0];
    }
  }

  result = static String._tryFromUTF8(_:)();
  if (v12)
  {
    v19[0] = result;
    v19[1] = v12;
    if (v8 != v9)
    {
      if (v8 < v9)
      {
        __break(1u);
        return result;
      }

      specialized static JSON5Scanner._slowpath_stringValue(from:appendingTo:fullSource:)(v9, v8 - v9, v19, a3, a4);
      if (v4)
      {
      }

      return v19[0];
    }
  }

  else
  {
    v13 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(a1, a3, a4);
    v15 = v14;
    v17 = v16;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v18 = v13;
    *(v18 + 8) = v15;
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t specialized _parseHexIntegerDigits<A>(_:isNegative:)(unsigned __int8 *a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a2 < 1)
    {
      return 0;
    }

    v3 = 0;
    v4 = &a1[a2];
    while (1)
    {
      v5 = *a1;
      v6 = v5 - 48;
      if ((v5 - 48) >= 0xA)
      {
        if ((v5 - 65) < 6)
        {
          v6 = v5 - 55;
        }

        else
        {
          if ((v5 - 97) > 5)
          {
            return 0;
          }

          v6 = v5 - 87;
        }
      }

      v7 = v6;
      v8 = 16 * v3 >= v6;
      v9 = 16 * v3 - v6;
      v10 = !v8;
      if (v3 >> 60 || (a3 & v10 & 1) != 0)
      {
        break;
      }

      v3 = 16 * v3 + v7;
      if (a3)
      {
        v3 = v9;
      }

      if (++a1 >= v4)
      {
        return v3;
      }
    }
  }

  return 0;
}

uint64_t specialized _parseHexIntegerDigits<A>(_:isNegative:)(unsigned __int8 *a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = &a1[a2];
  do
  {
    v6 = *a1;
    v7 = v6 - 48;
    if ((v6 - 48) >= 0xA)
    {
      if ((v6 - 65) < 6)
      {
        v7 = v6 - 55;
      }

      else
      {
        if ((v6 - 97) > 5)
        {
          return 0;
        }

        v7 = v6 - 87;
      }
    }

    v8 = 16 * result;
    v9 = 16 * result + v7;
    v10 = __OFADD__(16 * result, v7);
    v11 = __OFSUB__(v8, v7);
    v12 = v8 - v7;
    v13 = v11;
    if ((a3 & 1) == 0)
    {
      v13 = v10;
    }

    v14 = (result - 0x800000000000000) >> 60;
    result = 0;
    if (v14 < 0xF || (v13 & 1) != 0)
    {
      break;
    }

    result = (a3 & 1) != 0 ? v12 : v9;
    ++a1;
  }

  while (a1 < v5);
  return result;
}

{
  if (!a2)
  {
    v10 = 0;
    v12 = 1;
    return v10 | (v12 << 8);
  }

  if (a2 >= 1)
  {
    v3 = 0;
    v4 = &a1[a2];
    while (1)
    {
      v5 = *a1;
      v6 = v5 - 48;
      if ((v5 - 48) < 0xA)
      {
        goto LABEL_8;
      }

      if ((v5 - 65) >= 6)
      {
        break;
      }

      v6 = v5 - 55;
      v7 = 16 * v3;
      if (a3)
      {
LABEL_9:
        v8 = v7 - v6;
        v9 = (v8 & 0xFFFFFF00) != 0;
        goto LABEL_12;
      }

LABEL_11:
      v9 = 0;
      v8 = v6 + v7;
LABEL_12:
      v10 = 0;
      v11 = v3;
      v12 = 1;
      if (v11 > 0xF || v9)
      {
        return v10 | (v12 << 8);
      }

      ++a1;
      v3 = v8;
      if (a1 >= v4)
      {
        v12 = 0;
        v10 = v8;
        return v10 | (v12 << 8);
      }
    }

    if ((v5 - 97) > 5)
    {
      v10 = 0;
      v12 = 1;
      return v10 | (v12 << 8);
    }

    v6 = v5 - 87;
LABEL_8:
    v7 = 16 * v3;
    if (a3)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v10 = 0;
  v12 = 0;
  return v10 | (v12 << 8);
}

{
  if (!a2)
  {
    return 0x10000;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = &a1[a2];
  while (1)
  {
    v5 = *a1;
    v6 = v5 - 48;
    if ((v5 - 48) >= 0xA)
    {
      break;
    }

LABEL_9:
    if (a3)
    {
      v7 = (16 * v3) - v6;
      v8 = (v7 & 0xFFFF0000) != 0;
    }

    else
    {
      v8 = 0;
      v7 = 16 * v3 + v6;
    }

    v9 = 0;
    v10 = v3;
    v11 = 1;
    if (v10 > 0xFFF || v8)
    {
      return v9 | (v11 << 16);
    }

    ++a1;
    v3 = v7;
    if (a1 >= v4)
    {
      v11 = 0;
      v9 = v7;
      return v9 | (v11 << 16);
    }
  }

  if ((v5 - 65) < 6)
  {
    v6 = v5 - 55;
    goto LABEL_9;
  }

  if ((v5 - 97) <= 5)
  {
    v6 = v5 - 87;
    goto LABEL_9;
  }

  v9 = 0;
  v11 = 1;
  return v9 | (v11 << 16);
}

{
  if (!a2)
  {
    v9 = 0;
    v11 = 1;
    return v9 | (v11 << 8);
  }

  if (a2 >= 1)
  {
    v3 = 0;
    v4 = &a1[a2];
    while (1)
    {
      v5 = *a1;
      v6 = v5 - 48;
      if ((v5 - 48) >= 0xA)
      {
        if ((v5 - 65) < 6)
        {
          v6 = v5 - 55;
        }

        else
        {
          if ((v5 - 97) > 5)
          {
            v9 = 0;
            v11 = 1;
            return v9 | (v11 << 8);
          }

          v6 = v5 - 87;
        }
      }

      v7 = (16 * v3);
      if (a3)
      {
        v8 = v7 - v6;
      }

      else
      {
        v8 = v7 + v6;
      }

      v9 = 0;
      v10 = (v3 - 8);
      v11 = 1;
      if (v10 < 0xF0 || v8 != v8)
      {
        return v9 | (v11 << 8);
      }

      ++a1;
      v3 = v8;
      if (a1 >= v4)
      {
        v11 = 0;
        v9 = v8;
        return v9 | (v11 << 8);
      }
    }
  }

  v9 = 0;
  v11 = 0;
  return v9 | (v11 << 8);
}

{
  if (!a2)
  {
    return 0x10000;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = &a1[a2];
  while (1)
  {
    v5 = *a1;
    v6 = v5 - 48;
    if ((v5 - 48) >= 0xA)
    {
      break;
    }

LABEL_9:
    v7 = v6;
    v8 = 16 * v3;
    if (a3)
    {
      v9 = v8 - v7;
    }

    else
    {
      v9 = v7 + v8;
    }

    v10 = 0;
    v11 = (v3 - 2048);
    v12 = 1;
    if (v11 < 0xF000 || v9 != v9)
    {
      return v10 | (v12 << 16);
    }

    ++a1;
    v3 = v9;
    if (a1 >= v4)
    {
      v12 = 0;
      v10 = v9;
      return v10 | (v12 << 16);
    }
  }

  if ((v5 - 65) < 6)
  {
    v6 = v5 - 55;
    goto LABEL_9;
  }

  if ((v5 - 97) <= 5)
  {
    v6 = v5 - 87;
    goto LABEL_9;
  }

  v10 = 0;
  v12 = 1;
  return v10 | (v12 << 16);
}

{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &a1[a2];
    while (1)
    {
      v6 = *a1;
      v7 = v6 - 48;
      if ((v6 - 48) >= 0xA)
      {
        if ((v6 - 65) < 6)
        {
          v7 = v6 - 55;
        }

        else
        {
          if ((v6 - 97) > 5)
          {
            return 0;
          }

          v7 = v6 - 87;
        }
      }

      v8 = 16 * v3;
      *(&v10 + 1) = v4;
      *&v10 = v3;
      v9 = v10 >> 60;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__PAIR128__(v4, v3) < __PAIR128__(0xF000000000000000, 1))
      {
        goto LABEL_14;
      }

      LOBYTE(v11) = v8 != 0;
      if (a3)
      {
LABEL_15:
        v4 = (__PAIR128__(v9, v8) - v7) >> 64;
        v3 = v8 - v7;
        v12 = __OFSUB__(__PAIR128__(v9, v8), v7);
        goto LABEL_16;
      }

LABEL_12:
      v3 = v8 + v7;
      v12 = __OFADD__(__CFADD__(v8, v7), v9);
      v4 = __CFADD__(v8, v7) + v9;
LABEL_16:
      v13 = v12;
      v14 = 0;
      if (v11 & 1) != 0 || (v13)
      {
        return v14;
      }

      if (++a1 >= v5)
      {
        return v3;
      }
    }

    if (!(v4 >> 60))
    {
      v11 = v9 >> 63;
      if (a3)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

LABEL_14:
    LOBYTE(v11) = 1;
    if (a3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  return 0;
}

unint64_t specialized _parseHexIntegerDigits<A>(_:isNegative:)(unsigned __int8 *a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    v3 = 0;
    v15 = 1;
    return v3 | (v15 << 32);
  }

  if (a2 < 1)
  {
    v3 = 0;
    v15 = 0;
    return v3 | (v15 << 32);
  }

  LODWORD(v3) = 0;
  v4 = &a1[a2];
  while (1)
  {
    v5 = *a1;
    v6 = v5 - 48;
    if ((v5 - 48) >= 0xA)
    {
      break;
    }

LABEL_9:
    v7 = v6;
    v8 = 16 * v3;
    v9 = v3 - 0x8000000;
    v10 = v8 + v6;
    v11 = __OFADD__(v8, v7);
    v12 = __OFSUB__(v8, v7);
    v13 = v8 - v7;
    v14 = v12;
    if (a3)
    {
      v11 = v14;
    }

    v15 = 1;
    v16 = v9 >> 28;
    LODWORD(v3) = 0;
    if (v16 < 0xF || v11)
    {
      goto LABEL_26;
    }

    if (a3)
    {
      LODWORD(v3) = v13;
    }

    else
    {
      LODWORD(v3) = v10;
    }

    if (++a1 >= v4)
    {
      v15 = 0;
      goto LABEL_26;
    }
  }

  if ((v5 - 65) < 6)
  {
    v6 = v5 - 55;
    goto LABEL_9;
  }

  if ((v5 - 97) <= 5)
  {
    v6 = v5 - 87;
    goto LABEL_9;
  }

  LODWORD(v3) = 0;
  v15 = 1;
LABEL_26:
  v3 = v3;
  return v3 | (v15 << 32);
}

unint64_t specialized _parseHexIntegerDigits<A>(_:isNegative:)(unsigned __int8 *a1, uint64_t a2, unsigned __int8 a3)
{
  if (!a2)
  {
    v10 = 0;
    v9 = 1;
    return v10 | (v9 << 32);
  }

  if (a2 < 1)
  {
    v10 = 0;
    v9 = 0;
    return v10 | (v9 << 32);
  }

  v3 = 0;
  v4 = &a1[a2];
  while (1)
  {
    v5 = *a1;
    v6 = v5 - 48;
    if ((v5 - 48) < 0xA)
    {
      goto LABEL_9;
    }

    if ((v5 - 65) >= 6)
    {
      break;
    }

    v6 = v5 - 55;
LABEL_9:
    v7 = 0;
    v8 = 16 * v3 - v6;
    v9 = 1;
    if (v3 >> 28 || (a3 & (16 * v3 < v6)) != 0)
    {
      goto LABEL_17;
    }

    v3 = 16 * v3 + v6;
    if (a3)
    {
      v3 = v8;
    }

    if (++a1 >= v4)
    {
      v9 = 0;
      v7 = v3;
      goto LABEL_17;
    }
  }

  if ((v5 - 97) <= 5)
  {
    v6 = v5 - 87;
    goto LABEL_9;
  }

  v7 = 0;
  v9 = 1;
LABEL_17:
  v10 = v7;
  return v10 | (v9 << 32);
}

uint64_t specialized _parseHexIntegerDigits<A>(_:isNegative:)(unsigned __int8 *a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 1)
  {
    result = 0;
    v6 = 0;
    v7 = &a1[a2];
    while (1)
    {
      v8 = *a1;
      v9 = v8 - 48;
      if ((v8 - 48) >= 0xA)
      {
        if ((v8 - 65) < 6)
        {
          v9 = v8 - 55;
        }

        else
        {
          if ((v8 - 97) > 5)
          {
            return 0;
          }

          v9 = v8 - 87;
        }
      }

      *(&v11 + 1) = v6;
      *&v11 = result;
      v10 = v11 >> 60;
      v12 = 16 * result;
      v13 = v11 * 16 - v9;
      v14 = v11 * 16 < v9;
      result = 0;
      if (!(v6 >> 60) && (a3 & v14 & 1) == 0)
      {
        v15 = v12 + v9;
        v16 = __CFADD__(v12, v9) ? v10 + 1 : v10;
        result = (a3 & 1) != 0 ? v13 : v15;
        v6 = (a3 & 1) != 0 ? *(&v13 + 1) : v16;
        if (++a1 < v7)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

unint64_t specialized JSON5Scanner.DocumentReader.skipUTF8StringTillEndOfUnquotedKey(orEscapeSequence:)()
{
  v3 = v0;
  v4 = type metadata accessor for Unicode.GeneralCategory();
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Unicode.Scalar.Properties();
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[2];
  v11 = JSON5Scanner.DocumentReader.peekU32()(*v3, v3[1], v10, v3[3]);
  if (!v1)
  {
    v2 = v11;
    v14 = v12;
    v46 = v7;
    v47 = v4;
    v15 = (v45 + 8);
    v16 = (v37 + 88);
    v17 = *MEMORY[0x1E69E78A0];
    v44 = *MEMORY[0x1E69E7888];
    LODWORD(v45) = v17;
    v18 = *MEMORY[0x1E69E7898];
    v42 = *MEMORY[0x1E69E7860];
    v43 = v18;
    v19 = *MEMORY[0x1E69E7818];
    v40 = *MEMORY[0x1E69E7870];
    v41 = v19;
    v20 = *MEMORY[0x1E69E7830];
    v38 = *MEMORY[0x1E69E7840];
    v39 = v20;
    v35 = (v37 + 8);
    LODWORD(v37) = *MEMORY[0x1E69E7838];
    v36 = *MEMORY[0x1E69E78D0];
    while ((v13 & 1) == 0)
    {
      Unicode.Scalar.properties.getter();
      Unicode.Scalar.Properties.generalCategory.getter();
      (*v15)(v9, v46);
      v22 = (*v16)(v6, v47);
      if (v22 != v45 && v22 != v44 && v22 != v43 && v22 != v42 && v22 != v41 && v22 != v40 && v22 != v39 && v22 != v38 && v22 != v37 && v22 != v36)
      {
        if (((v2 - 36) > 0x3B || ((1 << (v2 - 36)) & 0x900000000000001) == 0) && (v2 - 8204) >= 2)
        {
          (*v35)(v6, v47);
          return v2;
        }

        (*v35)(v6, v47);
      }

      v10 += v14;
      v3[2] = v10;
      v2 = JSON5Scanner.DocumentReader.peekU32()(*v3, v3[1], v10, v3[3]);
      v14 = v21;
    }

    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v32 = 1;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    *(v32 + 40) = 0;
    *(v32 + 48) = 12;
    swift_willThrow();
  }

  return v2;
}

unint64_t specialized static JSON5Scanner.parseEscapeSequence(from:into:fullSource:)(unint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = result;
    result = *result;
    switch(result)
    {
      case 10:
      case 110:
        result = 10;
        goto LABEL_36;
      case 13:
        if (a2 < 2 || *(v5 + 1) != 10)
        {
          goto LABEL_33;
        }

        MEMORY[0x1865CB0E0](2573, 0xE200000000000000);
        return v5 + 2;
      case 34:
        goto LABEL_36;
      case 39:
        result = 39;
        goto LABEL_36;
      case 47:
        result = 47;
        goto LABEL_36;
      case 92:
        result = 92;
        goto LABEL_36;
      case 98:
        result = 8;
        goto LABEL_36;
      case 102:
        result = 12;
        goto LABEL_36;
      case 114:
LABEL_33:
        result = 13;
        goto LABEL_36;
      case 116:
        result = 9;
LABEL_36:
        MEMORY[0x1865CB0E0](result, 0xE100000000000000);
        return v5 + 1;
      case 117:
        if (a2 >= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = a2;
        }

        return specialized static JSONScanner.parseUnicodeSequence(from:into:fullSource:allowNulls:)(v5 + v17, a2 - v17, a3, a4, a5, 0);
      case 120:
        if (a2 >= 1)
        {
          v6 = 1;
        }

        else
        {
          v6 = a2;
        }

        v7 = a2 - v6 < 2;
        if (a2 - v6 >= 2)
        {
          v8 = 2;
        }

        else
        {
          v8 = a2 - v6;
        }

        if (v7)
        {
          goto LABEL_41;
        }

        v9 = 0;
        v10 = v5 + v6;
        v11 = v5 + v6 + v8;
        v12 = v10;
        break;
      default:
        v18 = result;
        v19 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v5, a4, a5);
        v21 = v20;
        v23 = v22;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v24 = v18;
        *(v24 + 8) = v19;
        *(v24 + 16) = v21;
        *(v24 + 24) = v23;
        *(v24 + 32) = 0;
        *(v24 + 40) = 0;
        v25 = 6;
        goto LABEL_38;
    }

    do
    {
      v13 = *v12;
      v14 = v13 - 48;
      if ((v13 - 48) >= 0xA)
      {
        if ((v13 - 65) < 6)
        {
          v14 = v13 - 55;
        }

        else
        {
          if ((v13 - 97) > 5)
          {
            goto LABEL_37;
          }

          v14 = v13 - 87;
        }
      }

      if (v9 > 0xFu)
      {
LABEL_37:
        v28 = static String._fromUTF8Repairing(_:)();
        v30 = v29;
        v31 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v10, a4, a5);
        v33 = v32;
        v35 = v34;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v24 = v28;
        *(v24 + 8) = v30;
        *(v24 + 16) = v31;
        *(v24 + 24) = v33;
        *(v24 + 32) = v35;
        *(v24 + 40) = 0;
        v25 = 3;
        goto LABEL_38;
      }

      v9 = v14 + 16 * v9;
      ++v12;
    }

    while (v12 < v11);
    if (v9)
    {
      v41 = *a3;
      v42 = a3[1];
      v15 = v11;
      String.UnicodeScalarView.append(_:)();
      result = v15;
      *a3 = v41;
      a3[1] = v42;
      return result;
    }

    v36 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v10, a4, a5);
    v38 = v37;
    v40 = v39;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v24 = v36;
    *(v24 + 8) = v38;
    *(v24 + 16) = v40;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0;
    v25 = 4;
LABEL_38:
    *(v24 + 48) = v25;
    return swift_willThrow();
  }

  else
  {
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

unint64_t specialized static JSON5Scanner._slowpath_stringValue(from:appendingTo:fullSource:)(unint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v10 = a1 + a2;
    v11 = a1;
    v12 = a1;
    do
    {
      while (1)
      {
        v13 = *v12;
        if (v13 == 92)
        {
          break;
        }

        if (v13 < 0x20)
        {
          goto LABEL_20;
        }

        if (++v12 >= v10)
        {
          goto LABEL_12;
        }
      }

      if (v12 < v11)
      {
        __break(1u);
LABEL_20:
        v26 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v12, a4, a5);
        v28 = v27;
        v30 = v29;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v31 = v13;
        *(v31 + 8) = v26;
        *(v31 + 16) = v28;
        *(v31 + 24) = v30;
        *(v31 + 32) = 0;
        *(v31 + 40) = 0;
        *(v31 + 48) = 7;
        return swift_willThrow();
      }

      v14 = static String._tryFromUTF8(_:)();
      if (!v15)
      {
        goto LABEL_17;
      }

      MEMORY[0x1865CB0E0](v14);

      result = (v12 + 1);
      v17 = v10 - (v12 + 1);
      if (((&v12[-a1 + 1] | v17) & 0x8000000000000000) != 0)
      {
        __break(1u);
        return result;
      }

      result = specialized static JSON5Scanner.parseEscapeSequence(from:into:fullSource:)(result, v17, a3, a4, a5);
      if (v5)
      {
        return result;
      }

      v11 = result;
      v12 = result;
    }

    while (result < v10);
LABEL_12:
    if (v12 >= v11)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v11 = a1;
LABEL_15:
  v18 = static String._tryFromUTF8(_:)();
  if (v19)
  {
    MEMORY[0x1865CB0E0](v18);
  }

  else
  {
LABEL_17:
    v20 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v11, a4, a5);
    v22 = v21;
    v24 = v23;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v25 = v20;
    *(v25 + 8) = v22;
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    return swift_willThrow();
  }
}

unsigned __int8 *specialized static JSON5Scanner.validateLeadingZero(in:zero:fullSource:)(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return a3;
  }

  v5 = *result;
  if (*result <= 0x57u)
  {
    if (v5 == 46 || v5 == 69)
    {
      return a3;
    }

LABEL_15:
    v8 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(result, a4, a5);
    v10 = v9;
    v12 = v11;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    if ((v5 - 58) >= 0xFFFFFFF6)
    {
      *v13 = v8;
      *(v13 + 8) = v10;
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      v14 = 10;
    }

    else
    {
      *v13 = xmmword_181237560;
      *(v13 + 16) = v5;
      *(v13 + 24) = v8;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      v14 = 1;
    }

    *(v13 + 48) = v14;
LABEL_19:
    swift_willThrow();
    return a3;
  }

  if (v5 != 120)
  {
    if (v5 == 101)
    {
      return a3;
    }

    if (v5 != 88)
    {
      goto LABEL_15;
    }
  }

  if (a2 >= 1)
  {
    a3 = result + 1;
    v6 = result[1];
    if ((v6 - 58) > 0xF5u)
    {
      return a3;
    }

    if (result[1] - 65 <= 0x25 && ((1 << (v6 - 65)) & 0x3F0000003FLL) != 0)
    {
      return a3;
    }

    v15 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)((result + 1), a4, a5);
    v17 = v16;
    v19 = v18;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v20 = xmmword_181237560;
    *(v20 + 16) = v6;
    *(v20 + 24) = v15;
    *(v20 + 32) = v17;
    *(v20 + 40) = v19;
    *(v20 + 48) = 1;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t specialized static JSON5Scanner.validateInfinity(from:fullSource:)(char *__s1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 < 8 || (result = strncmp(__s1, "Infinity", 8uLL), result))
  {
    v8 = StaticString.description.getter();
    v10 = v9;
    v11 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(__s1, a3, a4);
    v13 = v12;
    v15 = v14;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v16 = v8;
    *(v16 + 8) = v10;
    *(v16 + 16) = v11;
    *(v16 + 24) = v13;
    *(v16 + 32) = v15;
    *(v16 + 40) = 0;
    *(v16 + 48) = 5;
    return swift_willThrow();
  }

  return result;
}

_BYTE *specialized static JSON5Scanner.validateNaN(from:fullSource:)(_BYTE *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  if (a2 <= 2 || *result != 78 || result[1] != 97 || result[2] != 78)
  {
    v7 = StaticString.description.getter();
    v9 = v8;
    v10 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v6, a3, a4);
    v12 = v11;
    v14 = v13;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v15 = v7;
    *(v15 + 8) = v9;
    *(v15 + 16) = v10;
    *(v15 + 24) = v12;
    *(v15 + 32) = v14;
    *(v15 + 40) = 0;
    *(v15 + 48) = 5;
    return swift_willThrow();
  }

  return result;
}

unsigned __int8 *specialized static JSON5Scanner.validateLeadingDecimal(from:fullSource:)(unsigned __int8 *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = *result;
    if ((v4 - 58) >= 0xFFFFFFF6)
    {
      return result;
    }

    v5 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(result, a3, a4);
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v10 = 0xD000000000000013;
    *(v10 + 8) = 0x8000000181481B40;
    *(v10 + 16) = v4;
  }

  else
  {
    v5 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(result, a3, a4);
    v7 = v11;
    v9 = v12;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 46;
  }

  *(v10 + 24) = v5;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  *(v10 + 48) = 1;
  return swift_willThrow();
}

unsigned __int8 *specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(unsigned __int8 *__s1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v8 = __s1;
  v9 = *__s1;
  if (v9 == 48)
  {
    if (a2 >= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a2;
    }

    v11 = a2 - v10;
    v12 = &__s1[v10];
    v13 = v8;
LABEL_7:
    __s1 = specialized static JSON5Scanner.validateLeadingZero(in:zero:fullSource:)(v12, v11, v13, a3, a4);
    if (v4 || (v14 & 1) != 0)
    {
      return __s1;
    }

    goto LABEL_31;
  }

  if ((v9 - 58) > 0xFFFFFFF6)
  {
LABEL_30:
    __s1 = v8;
LABEL_31:
    v9 = v8[a2 - 1];
    if ((v9 | 0x20) != 0x65)
    {
      return __s1;
    }

    __s1 = &v8[a2 - 1];
    goto LABEL_33;
  }

  if (*__s1 <= 0x2Du)
  {
    if (v9 != 43 && v9 != 45)
    {
      goto LABEL_51;
    }

    v11 = a2 - 2;
    if (a2 >= 2)
    {
      ++__s1;
      v15 = v8[1];
      if (v15 != 48)
      {
        if ((v15 - 58) <= 0xFFFFFFF6)
        {
          if (v15 == 46)
          {
            __s1 = specialized static JSON5Scanner.validateLeadingDecimal(from:fullSource:)(v8 + 2, v11, a3, a4);
            if (v4)
            {
              return __s1;
            }

            __s1 = v8 + 1;
          }

          else
          {
            if (v15 == 78)
            {
              v23 = v8 + 1;
              __s1 = specialized static JSON5Scanner.validateNaN(from:fullSource:)(__s1, a2 - 1, a3, a4);
              if (v4)
              {
                return __s1;
              }
            }

            else
            {
              if (v15 != 73)
              {
                _StringGuts.grow(_:)(20);

                v24 = static String._uncheckedFromUTF8(_:)();
                MEMORY[0x1865CB0E0](v24);

                MEMORY[0x1865CB0E0](0x6D756E206E692027, 0xEB00000000726562);
                v17 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)((v8 + 1), a3, a4);
                v19 = v25;
                v21 = v26;
                lazy protocol witness table accessor for type JSONError and conformance JSONError();
                swift_allocError();
                *v22 = 0x27207265746661;
                *(v22 + 8) = 0xE700000000000000;
                *(v22 + 16) = v15;
                goto LABEL_34;
              }

              v23 = v8 + 1;
              __s1 = specialized static JSON5Scanner.validateInfinity(from:fullSource:)(__s1, a2 - 1, a3, a4);
              if (v4)
              {
                return __s1;
              }
            }

            __s1 = v23;
          }
        }

        goto LABEL_31;
      }

      v13 = v8 + 1;
      v12 = v8 + 2;
      goto LABEL_7;
    }

    if (a2 == 1)
    {
LABEL_33:
      v17 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(__s1, a3, a4);
      v19 = v18;
      v21 = v20;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v22 = 0xD000000000000010;
      *(v22 + 8) = 0x8000000181481B20;
      *(v22 + 16) = v9;
LABEL_34:
      *(v22 + 24) = v17;
      *(v22 + 32) = v19;
      *(v22 + 40) = v21;
      *(v22 + 48) = 1;
      return swift_willThrow();
    }

    goto LABEL_50;
  }

  if (v9 == 73)
  {
    __s1 = specialized static JSON5Scanner.validateInfinity(from:fullSource:)(__s1, a2, a3, a4);
    if (v4)
    {
      return __s1;
    }

    goto LABEL_30;
  }

  if (v9 == 78)
  {
    __s1 = specialized static JSON5Scanner.validateNaN(from:fullSource:)(__s1, a2, a3, a4);
    if (v4)
    {
      return __s1;
    }

    goto LABEL_30;
  }

  if (v9 != 46)
  {
LABEL_51:
    __break(1u);
    return __s1;
  }

  if (a2 >= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a2;
  }

  __s1 = specialized static JSON5Scanner.validateLeadingDecimal(from:fullSource:)(&__s1[v16], a2 - v16, a3, a4);
  if (!v4)
  {
    goto LABEL_30;
  }

  return __s1;
}

const char *specialized static JSON5Scanner.validateNumber(from:fullSource:)@<X0>(const char *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 < 1)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v8 = result;
  v10 = &result[a2];
  v11 = *result;
  if (v11 == 45 || (v12 = result, v11 == 43))
  {
    v12 = result + 1;
  }

  if (v10 < v12)
  {
    goto LABEL_54;
  }

  v13 = v12 - result;
  if (v12 - result < 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v14 = v10 - v12;
  if (v10 - v12 < 0)
  {
LABEL_56:
    __break(1u);
    return result;
  }

  if (v14 >= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = v10 - v12;
  }

  result = _stringshims_strncasecmp_clocale(v12, "0x", v15);
  if (result)
  {
    if (v12 >= v10)
    {
LABEL_50:
      __break(1u);
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0x65626D756E206E69;
      while ((v13 & 0x8000000000000000) == 0 && v14 >= 1)
      {
        LODWORD(v8) = *v12;
        if ((v8 - 58) >= 0xF6u)
        {
          if (__OFADD__(v17++, 1))
          {
            goto LABEL_52;
          }
        }

        else
        {
          v20 = 0xE900000000000072;
          if (*v12 <= 0x2Du)
          {
            if (v8 != 43 && v8 != 45 || v17 || v16 != 2)
            {
              goto LABEL_49;
            }

            v17 = 0;
            v16 = 3;
          }

          else if (v8 == 101 || v8 == 69)
          {
            if (v16 != 1 && (v16 || v17 <= 0))
            {
              goto LABEL_49;
            }

            v17 = 0;
            v16 = 2;
          }

          else
          {
            if (v8 != 46)
            {
              goto LABEL_49;
            }

            if (v16)
            {
              LOBYTE(v8) = 46;
              goto LABEL_49;
            }

            v17 = 0;
            v16 = 1;
          }
        }

        ++v12;
        ++v13;
        if (!--v14)
        {
          goto LABEL_50;
        }
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v21 = v12 + 2;
  if (v10 - (v12 + 2) < 1 || v21 >= v10 || v21 - v8 < 0)
  {
LABEL_46:
    __break(1u);
  }

  else
  {
    v22 = &v8[a2] - v12 - 3;
    v23 = v13 + 3;
    v12 += 2;
    while (1)
    {
      v24 = v23;
      LOBYTE(v8) = *v12;
      if ((*v12 - 58) <= 0xF5u && (*v12 - 65 > 0x25 || ((1 << (v8 - 65)) & 0x3F0000003FLL) == 0))
      {
        break;
      }

      if (v22-- >= 1 && ++v12 < v10)
      {
        ++v23;
        if ((v24 & 0x8000000000000000) == 0)
        {
          continue;
        }
      }

      goto LABEL_46;
    }
  }

  v20 = 0xED00007265626D75;
  v18 = 0x6E20786568206E69;
LABEL_49:
  result = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v12, a3, a4);
  *a5 = v18;
  *(a5 + 8) = v20;
  *(a5 + 16) = v8;
  *(a5 + 24) = result;
  *(a5 + 32) = v27;
  *(a5 + 40) = v28;
  *(a5 + 48) = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for JSON5Scanner(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for JSON5Scanner(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSON5Scanner.DocumentReader(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for JSON5Scanner.DocumentReader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSON5Scanner.Options(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t _sSd7exactlySdSgx_tcSzRzlufCs6UInt64V_Tt0g5Tm(unint64_t result)
{
  v1 = result;
  if (result >= 1.84467441e19)
  {
    *&result = 0.0;
  }

  else if ((~*&v1 & 0x7FF0000000000000) != 0)
  {
    if (v1 == result)
    {
      *&result = result;
    }

    else
    {
      *&result = 0.0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSo9NSDecimala10FoundationE7exactlyABSgx_tcSzRzlufCs5Int64V_Tt0g5(uint64_t result)
{
  if (result)
  {
    if (result >= 0)
    {
      v1 = result;
    }

    else
    {
      v1 = -result;
    }

    v2 = result >> 63;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v1, 1) <= 0x1999999999999999uLL)
    {
      v4 = 0;
      do
      {
        v3 = v4 + 1;
        v1 /= 0xAuLL;
        if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v1, 1) > 0x1999999999999999uLL)
        {
          break;
        }
      }

      while (v4++ < 0x7E);
    }

    else
    {
      v3 = 0;
    }

    *&v7[4] = v1;
    v6 = (79 - __clz(v1)) >> 4;
    _So9NSDecimala__exponent_setter(v3, v7);
    _So9NSDecimala__length_setter(v6, v7);
    _So9NSDecimala__isNegative_setter(v2, v7);
    _So9NSDecimala__isCompact_setter_0(1, v7);
    _So9NSDecimala__reserved_setter(v7);
    return *v7;
  }

  return result;
}

unint64_t _sSo9NSDecimala10FoundationE7exactlyABSgx_tcSzRzlufCs6UInt64V_Tt0g5(unint64_t result)
{
  if (result)
  {
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * result, 1) <= 0x1999999999999999uLL)
    {
      v2 = 0;
      do
      {
        v1 = v2 + 1;
        result /= 0xAuLL;
        if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * result, 1) > 0x1999999999999999uLL)
        {
          break;
        }
      }

      while (v2++ < 0x7E);
    }

    else
    {
      v1 = 0;
    }

    *&v5[4] = result;
    v4 = (79 - __clz(result)) >> 4;
    _So9NSDecimala__exponent_setter(v1, v5);
    _So9NSDecimala__length_setter(v4, v5);
    _So9NSDecimala__isNegative_setter(0, v5);
    _So9NSDecimala__isCompact_setter_0(1, v5);
    _So9NSDecimala__reserved_setter(v5);
    return *v5;
  }

  return result;
}

uint64_t specialized _parseJSON5Integer<A>(_:isHex:)(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t (*a4)(unsigned __int8 *, uint64_t, uint64_t), uint64_t (*a5)(unsigned __int8 *, uint64_t, uint64_t))
{
  if (!a2)
  {
    return 0;
  }

  v5 = *a1;
  if (v5 == 43)
  {
    v6 = 0;
    goto LABEL_6;
  }

  if (v5 == 45)
  {
    v6 = 1;
LABEL_6:
    if (a2 >= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = a2;
    }

    a1 += v7;
    a2 -= v7;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_11:
  if ((a3 & 1) == 0)
  {
    return a5(a1, a2, v6);
  }

  v8 = 2;
  if (a2 < 2)
  {
    v8 = a2;
  }

  return a4(&a1[v8], a2 - v8, v6);
}

{
  if (!a2)
  {
    return 0;
  }

  v5 = *a1;
  if (v5 == 43)
  {
    v6 = 0;
    goto LABEL_6;
  }

  if (v5 == 45)
  {
    v6 = 1;
LABEL_6:
    if (a2 >= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = a2;
    }

    a1 += v7;
    a2 -= v7;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_11:
  if ((a3 & 1) == 0)
  {
    return a5(a1, a2, v6);
  }

  v8 = 2;
  if (a2 < 2)
  {
    v8 = a2;
  }

  return a4(&a1[v8], a2 - v8, v6);
}

uint64_t specialized _parseJSON5Integer<A>(_:isHex:)(unsigned __int8 *a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    LOBYTE(v7) = 0;
    v8 = 1;
    return v7 | (v8 << 8);
  }

  v3 = *a1;
  if (v3 == 43)
  {
    v4 = 0;
    goto LABEL_6;
  }

  if (v3 == 45)
  {
    v4 = 1;
LABEL_6:
    if (a2 >= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2;
    }

    a1 += v5;
    a2 -= v5;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:
  if (a3)
  {
    v6 = 2;
    if (a2 < 2)
    {
      v6 = a2;
    }

    v7 = specialized _parseHexIntegerDigits<A>(_:isNegative:)(&a1[v6], a2 - v6, v4);
  }

  else
  {
    v7 = specialized _parseIntegerDigits<A>(_:isNegative:)(a1, a2, v4);
  }

  v8 = (v7 >> 8) & 1;
  return v7 | (v8 << 8);
}

{
  if (!a2)
  {
    LOBYTE(v7) = 0;
    v8 = 1;
    return v7 | (v8 << 8);
  }

  v3 = *a1;
  if (v3 == 43)
  {
    v4 = 0;
    goto LABEL_6;
  }

  if (v3 == 45)
  {
    v4 = 1;
LABEL_6:
    if (a2 >= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2;
    }

    a1 += v5;
    a2 -= v5;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:
  if (a3)
  {
    v6 = 2;
    if (a2 < 2)
    {
      v6 = a2;
    }

    v7 = specialized _parseHexIntegerDigits<A>(_:isNegative:)(&a1[v6], a2 - v6, v4);
  }

  else
  {
    v7 = specialized _parseIntegerDigits<A>(_:isNegative:)(a1, a2, v4);
  }

  v8 = (v7 >> 8) & 1;
  return v7 | (v8 << 8);
}

uint64_t specialized _parseJSON5Integer<A>(_:isHex:)(_BYTE *a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    LOWORD(v7) = 0;
    v8 = 1;
    return v7 | (v8 << 16);
  }

  v3 = *a1;
  if (v3 == 43)
  {
    v4 = 0;
    goto LABEL_6;
  }

  if (v3 == 45)
  {
    v4 = 1;
LABEL_6:
    if (a2 >= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2;
    }

    a1 += v5;
    a2 -= v5;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:
  if (a3)
  {
    v6 = 2;
    if (a2 < 2)
    {
      v6 = a2;
    }

    v7 = specialized _parseHexIntegerDigits<A>(_:isNegative:)(&a1[v6], a2 - v6, v4);
  }

  else
  {
    v7 = specialized _parseIntegerDigits<A>(_:isNegative:)(a1, a2, v4);
  }

  v8 = HIWORD(v7) & 1;
  return v7 | (v8 << 16);
}

{
  if (!a2)
  {
    LOWORD(v7) = 0;
    v8 = 1;
    return v7 | (v8 << 16);
  }

  v3 = *a1;
  if (v3 == 43)
  {
    v4 = 0;
    goto LABEL_6;
  }

  if (v3 == 45)
  {
    v4 = 1;
LABEL_6:
    if (a2 >= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2;
    }

    a1 += v5;
    a2 -= v5;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:
  if (a3)
  {
    v6 = 2;
    if (a2 < 2)
    {
      v6 = a2;
    }

    v7 = specialized _parseHexIntegerDigits<A>(_:isNegative:)(&a1[v6], a2 - v6, v4);
  }

  else
  {
    v7 = specialized _parseIntegerDigits<A>(_:isNegative:)(a1, a2, v4);
  }

  v8 = HIWORD(v7) & 1;
  return v7 | (v8 << 16);
}

unint64_t specialized _parseJSON5Integer<A>(_:isHex:)(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t (*a4)(unsigned __int8 *, uint64_t, uint64_t), uint64_t (*a5)(unsigned __int8 *, uint64_t, uint64_t))
{
  if (!a2)
  {
    LODWORD(v9) = 0;
    LOBYTE(v10) = 1;
    return v9 | (v10 << 32);
  }

  v5 = *a1;
  if (v5 == 43)
  {
    v6 = 0;
  }

  else
  {
    if (v5 != 45)
    {
      v6 = 0;
      if (a3)
      {
        goto LABEL_10;
      }

LABEL_14:
      v9 = a5(a1, a2, v6);
      v10 = HIDWORD(v9) & 1;
      return v9 | (v10 << 32);
    }

    v6 = 1;
  }

  if (a2 >= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  a1 += v7;
  a2 -= v7;
  if ((a3 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v8 = 2;
  if (a2 < 2)
  {
    v8 = a2;
  }

  v9 = a4(&a1[v8], a2 - v8, v6);
  v10 = HIDWORD(v9) & 1;
  return v9 | (v10 << 32);
}

unint64_t specialized _parseIntegerDigits<A>(_:isNegative:)(_BYTE *a1, uint64_t a2, char a3)
{
  if (a2)
  {
    if (a2 < 1)
    {
      return 0;
    }

    result = 0;
    v5 = &a1[a2];
    while (*a1 - 48 <= 9)
    {
      v6 = (*a1 - 48);
      v7 = !is_mul_ok(result, 0xAuLL);
      v8 = 10 * result;
      v9 = 10 * result + v6;
      v10 = __CFADD__(10 * result, v6);
      v11 = v8 >= v6;
      v12 = v8 - v6;
      v13 = !v11;
      if ((a3 & 1) == 0)
      {
        v13 = v10;
      }

      result = 0;
      if (!v7 && (v13 & 1) == 0)
      {
        result = (a3 & 1) != 0 ? v12 : v9;
        if (++a1 < v5)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

{
  if (a2)
  {
    if (a2 < 1)
    {
      v3 = 0;
      v12 = 0;
    }

    else
    {
      LODWORD(v3) = 0;
      v4 = &a1[a2];
      while (*a1 - 48 <= 9)
      {
        v5 = (*a1 - 48);
        v6 = 10 * v3;
        v7 = v6 != v6;
        v8 = v6 + v5;
        v9 = __OFADD__(v6, v5);
        v10 = v6 - v5;
        v11 = __OFSUB__(v6, v5);
        if (a3)
        {
          v9 = v11;
        }

        v12 = 1;
        LODWORD(v3) = 0;
        if (v7 || v9)
        {
          goto LABEL_21;
        }

        if (a3)
        {
          LODWORD(v3) = v10;
        }

        else
        {
          LODWORD(v3) = v8;
        }

        if (++a1 >= v4)
        {
          v12 = 0;
          goto LABEL_21;
        }
      }

      LODWORD(v3) = 0;
      v12 = 1;
LABEL_21:
      v3 = v3;
    }
  }

  else
  {
    v3 = 0;
    v12 = 1;
  }

  return v3 | (v12 << 32);
}

{
  if (a2)
  {
    if (a2 < 1)
    {
      v3 = 0;
      v12 = 0;
    }

    else
    {
      LODWORD(v3) = 0;
      v4 = &a1[a2];
      while (*a1 - 48 <= 9)
      {
        v5 = (*a1 - 48);
        v6 = 10 * v3;
        v7 = (v6 & 0xFFFFFFFF00000000) != 0;
        v8 = v6 + v5;
        v9 = __CFADD__(v6, v5);
        v10 = v6 - v5;
        v11 = v6 < v5;
        if (a3)
        {
          v9 = v11;
        }

        v12 = 1;
        LODWORD(v3) = 0;
        if (v7 || v9)
        {
          goto LABEL_18;
        }

        if (a3)
        {
          LODWORD(v3) = v10;
        }

        else
        {
          LODWORD(v3) = v8;
        }

        if (++a1 >= v4)
        {
          v12 = 0;
          goto LABEL_18;
        }
      }

      LODWORD(v3) = 0;
      v12 = 1;
LABEL_18:
      v3 = v3;
    }
  }

  else
  {
    v3 = 0;
    v12 = 1;
  }

  return v3 | (v12 << 32);
}

{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  v6 = 0;
  v7 = &a1[a2];
  while (*a1 - 48 < 0xA)
  {
    v8 = (*a1 - 48);
    v9 = !is_mul_ok(v6, 0xAuLL);
    v10 = (__PAIR128__(v6, result) * 0xA) >> 64;
    v11 = __CFADD__((result * 0xAuLL) >> 64, 10 * v6) || v9;
    v12 = 10 * result;
    v13 = __PAIR128__(v6, result) * 0xA + (*a1 - 48);
    v14 = __CFADD__(__CFADD__(10 * result, v8), v10);
    v15 = v12 >= v8;
    v16 = v12 - v8;
    v18 = v15;
    v15 = v10 >= !v15;
    v17 = v10 - !v18;
    v19 = !v15;
    if (a3)
    {
      v14 = v19;
    }

    result = 0;
    if ((v11 & 1) == 0 && !v14)
    {
      v6 = (a3 & 1) != 0 ? v17 : *(&v13 + 1);
      result = (a3 & 1) != 0 ? v16 : v13;
      if (++a1 < v7)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

uint64_t specialized _parseIntegerDigits<A>(_:isNegative:)(_BYTE *a1, uint64_t a2, char a3)
{
  if (a2)
  {
    if (a2 < 1)
    {
      return 0;
    }

    result = 0;
    v5 = &a1[a2];
    while (*a1 - 48 <= 9)
    {
      v6 = (*a1 - 48);
      v7 = 10 * result;
      v8 = (result * 10) >> 64 != (10 * result) >> 63;
      v9 = 10 * result + v6;
      v10 = __OFADD__(10 * result, v6);
      v11 = __OFSUB__(v7, v6);
      v12 = v7 - v6;
      v13 = v11;
      if ((a3 & 1) == 0)
      {
        v13 = v10;
      }

      result = 0;
      if (!v8 && (v13 & 1) == 0)
      {
        result = (a3 & 1) != 0 ? v12 : v9;
        if (++a1 < v5)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

{
  if (!a2)
  {
    return 0x10000;
  }

  if (a2 < 1)
  {
    return 0;
  }

  LOWORD(v3) = 0;
  v4 = &a1[a2];
  while (*a1 - 48 <= 9)
  {
    v5 = (*a1 - 48);
    v6 = 10 * v3;
    v7 = (v6 & 0xF0000) != 0;
    if (a3)
    {
      v3 = v6 - v5;
      if (v7 || (v3 & 0xFFFF0000) != 0)
      {
        break;
      }
    }

    else
    {
      v3 = v5 + v6;
      if ((v7 | HIWORD(v3)))
      {
        break;
      }
    }

    if (++a1 >= v4)
    {
      v8 = 0;
      return v3 | (v8 << 16);
    }
  }

  LOWORD(v3) = 0;
  v8 = 1;
  return v3 | (v8 << 16);
}

{
  if (!a2)
  {
    return 0x10000;
  }

  if (a2 < 1)
  {
    return 0;
  }

  LOWORD(v3) = 0;
  v4 = &a1[a2];
  while (*a1 - 48 <= 9)
  {
    v5 = (*a1 - 48);
    v6 = 10 * v3;
    v7 = v6 != v6;
    v3 = (a3 & 1) != 0 ? v6 - v5 : v5 + v6;
    if (v7 || v3 != v3)
    {
      break;
    }

    if (++a1 >= v4)
    {
      v8 = 0;
      return v3 | (v8 << 16);
    }
  }

  LOWORD(v3) = 0;
  v8 = 1;
  return v3 | (v8 << 16);
}

uint64_t specialized _parseIntegerDigits<A>(_:isNegative:)(unsigned __int8 *a1, uint64_t a2, char a3)
{
  if (a2)
  {
    if (a2 < 1)
    {
      LOBYTE(v3) = 0;
      v8 = 0;
    }

    else
    {
      LOBYTE(v3) = 0;
      v4 = &a1[a2];
      while (1)
      {
        v5 = *a1 - 48;
        if (v5 > 9)
        {
          break;
        }

        v6 = 10 * v3;
        v7 = (v6 & 0xF00) != 0;
        if (a3)
        {
          v3 = v6 - v5;
          if (v7 || (v3 & 0xFFFFFF00) != 0)
          {
            break;
          }
        }

        else
        {
          v3 = v6 + v5;
          if ((v7 | (v3 >> 8)))
          {
            break;
          }
        }

        v8 = 0;
        if (++a1 >= v4)
        {
          return v3 | (v8 << 8);
        }
      }

      LOBYTE(v3) = 0;
      v8 = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
    v8 = 1;
  }

  return v3 | (v8 << 8);
}

{
  if (a2)
  {
    if (a2 < 1)
    {
      LOBYTE(v3) = 0;
      v8 = 0;
    }

    else
    {
      LOBYTE(v3) = 0;
      v4 = &a1[a2];
      while (1)
      {
        v5 = *a1 - 48;
        if (v5 > 9)
        {
          break;
        }

        v6 = 10 * v3;
        v7 = v6 != v6;
        v3 = (a3 & 1) != 0 ? v6 - v5 : v6 + v5;
        if (v7 || v3 != v3)
        {
          break;
        }

        v8 = 0;
        if (++a1 >= v4)
        {
          return v3 | (v8 << 8);
        }
      }

      LOBYTE(v3) = 0;
      v8 = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
    v8 = 1;
  }

  return v3 | (v8 << 8);
}

{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = &a1[a2];
  while (1)
  {
    v6 = *a1 - 48;
    if (v6 >= 0xA)
    {
      return 0;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = !is_mul_ok(v4, 0xAuLL);
      v8 = __CFADD__((v3 * 0xAuLL) >> 64, 10 * v4);
      v9 = (__PAIR128__(v4, v3) * 0xA) >> 64;
      if (v8)
      {
        v7 = 1;
      }

      v10 = 10 * v3;
      if (!v7)
      {
        v11 = v9 >> 63;
        if (a3)
        {
          goto LABEL_17;
        }

        goto LABEL_11;
      }

LABEL_16:
      LOBYTE(v11) = 1;
      if (a3)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v8 = v3 == 0;
    v13 = -v3;
    v14 = -(v4 + !v8);
    v15 = !is_mul_ok(v14, 0xAuLL);
    v8 = __CFADD__((v13 * 0xAuLL) >> 64, 10 * v14);
    v16 = (__PAIR128__(v14, v13) * 0xA) >> 64;
    if (v8)
    {
      v15 = 1;
    }

    v8 = 10 * v13 == 0;
    v10 = -10 * v13;
    v9 = -(v16 + !v8);
    if (v15)
    {
      goto LABEL_16;
    }

    LOBYTE(v11) = v10 != 0;
    if (a3)
    {
LABEL_17:
      v12 = __OFSUB__(__PAIR128__(v9, v10), v6);
      v4 = (__PAIR128__(v9, v10) - v6) >> 64;
      v3 = v10 - v6;
      goto LABEL_18;
    }

LABEL_11:
    v12 = __OFADD__(__CFADD__(v10, v6), v9);
    v4 = (__PAIR128__(v9, v10) + v6) >> 64;
    v3 = v10 + v6;
LABEL_18:
    v17 = v12;
    v18 = 0;
    if (v11 & 1) != 0 || (v17)
    {
      return v18;
    }

    if (++a1 >= v5)
    {
      return v3;
    }
  }
}

uint64_t key path setter for JSONDecoder.dateDecodingStrategy : JSONDecoder(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = v4;
  v5 = *(*v3 + 112);
  outlined copy of JSONDecoder.DateDecodingStrategy(v7[0], v2, v4);
  return v5(v7);
}

uint64_t JSONDecoder.dateDecodingStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  v4 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v6 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options);
  v7 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *(v5 + 16);
  *(a1 + 16) = v8;
  v9 = *(v1 + v3);
  outlined copy of JSONDecoder.DateDecodingStrategy(v6, v7, v8);

  os_unfair_lock_unlock(v9 + 4);
}

id outlined copy of JSONDecoder.DateDecodingStrategy(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

void (*JSONDecoder.dateDecodingStrategy.modify(uint64_t *a1))(void ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = *(v1 + v5);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  *(v4 + 40) = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v8 = v1 + v7;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  *v4 = *v8;
  *(v4 + 8) = v10;
  *(v4 + 16) = v11;
  outlined copy of JSONDecoder.DateDecodingStrategy(v9, v10, v11);
  return JSONDecoder.dateDecodingStrategy.modify;
}

void JSONDecoder.dateDecodingStrategy.modify(void ***a1)
{
  v1 = *a1;
  v2 = (*a1)[4];
  v3 = (*a1)[3];
  v4 = (*a1)[5] + v3;
  v5 = **a1;
  v6 = v1[1];
  v7 = *v4;
  v8 = *(v4 + 1);
  v9 = *(v1 + 16);
  *v4 = v5;
  *(v4 + 1) = v6;
  v10 = v4[16];
  v4[16] = v9;
  outlined copy of JSONDecoder.DateDecodingStrategy(v5, v6, v9);
  outlined consume of JSONDecoder.DateDecodingStrategy(v7, v8, v10);
  v11 = *&v2[v3];

  os_unfair_lock_unlock(v11 + 4);

  outlined consume of JSONDecoder.DateDecodingStrategy(*v1, v1[1], *(v1 + 16));

  free(v1);
}

uint64_t JSONDecoder.dataDecodingStrategy.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  v4 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 24);
  v6 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 32);
  *a1 = v5;
  a1[1] = v6;
  v7 = *(v1 + v3);
  sub_1807A98E4(v5);

  os_unfair_lock_unlock(v7 + 4);
}

void (*JSONDecoder.dataDecodingStrategy.modify(uint64_t *a1))(unint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v4[4] = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v8 = v1 + v7;
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  *v4 = v9;
  v4[1] = v10;
  sub_1807A98E4(v9);
  return JSONDecoder.dataDecodingStrategy.modify;
}

void JSONDecoder.dataDecodingStrategy.modify(unint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = v4 + (*a1)[4];
  v6 = **a1;
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;
  *(v5 + 32) = v3;
  sub_1807A98E4(v6);
  sub_1807A5C7C(v7);
  v8 = *(v4 + v2);

  os_unfair_lock_unlock(v8 + 4);

  sub_1807A5C7C(*v1);

  free(v1);
}

uint64_t key path setter for JSONDecoder.nonConformingFloatDecodingStrategy : JSONDecoder(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *a2;
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v8 = *(*v7 + 160);
  outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(v10[0], v2);
  return v8(v10);
}

uint64_t JSONDecoder.nonConformingFloatDecodingStrategy.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  v4 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 40);
  v6 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 48);
  v7 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 56);
  v8 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 64);
  v9 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 72);
  v10 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 80);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v10;
  v11 = *(v1 + v3);
  outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(v5, v6);

  os_unfair_lock_unlock(v11 + 4);
}

uint64_t outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void (*JSONDecoder.nonConformingFloatDecodingStrategy.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  v6 = *(v1 + v5);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v4[8] = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v8 = (v1 + v7);
  v9 = v8[5];
  v10 = v8[6];
  v11 = v8[7];
  v12 = v8[8];
  v13 = v8[9];
  v14 = v8[10];
  *v4 = v9;
  v4[1] = v10;
  v4[2] = v11;
  v4[3] = v12;
  v4[4] = v13;
  v4[5] = v14;
  outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(v9, v10);
  return JSONDecoder.nonConformingFloatDecodingStrategy.modify;
}

void JSONDecoder.nonConformingFloatDecodingStrategy.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[7];
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (v4 + (*a1)[8]);
  v6 = **a1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v5[5];
  v12 = v5[6];
  v5[5] = v6;
  v5[6] = v7;
  v5[7] = v8;
  v5[8] = v9;
  v5[9] = v10;
  v5[10] = v3;
  outlined copy of JSONDecoder.NonConformingFloatDecodingStrategy(v6, v7);
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v11, v12);
  v13 = *(v4 + v2);

  os_unfair_lock_unlock(v13 + 4);

  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(*v1, v1[1]);

  free(v1);
}

uint64_t JSONDecoder.keyDecodingStrategy.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  v4 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 88);
  v6 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 96);
  *a1 = v5;
  a1[1] = v6;
  v7 = *(v1 + v3);
  sub_1807A98E4(v5);

  os_unfair_lock_unlock(v7 + 4);
}

void (*JSONDecoder.keyDecodingStrategy.modify(uint64_t *a1))(unint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v4[4] = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v8 = v1 + v7;
  v9 = *(v8 + 88);
  v10 = *(v8 + 96);
  *v4 = v9;
  v4[1] = v10;
  sub_1807A98E4(v9);
  return JSONDecoder.keyDecodingStrategy.modify;
}

void JSONDecoder.keyDecodingStrategy.modify(unint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = v4 + (*a1)[4];
  v6 = **a1;
  v7 = *(v5 + 88);
  *(v5 + 88) = v6;
  *(v5 + 96) = v3;
  sub_1807A98E4(v6);
  sub_1807A5C7C(v7);
  v8 = *(v4 + v2);

  os_unfair_lock_unlock(v8 + 4);

  sub_1807A5C7C(*v1);

  free(v1);
}

uint64_t JSONDecoder.keyDecodingStrategy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  v5 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v7 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 88);
  *(v6 + 88) = v2;
  *(v6 + 96) = v3;
  sub_1807A5C7C(v7);
  v8 = *(v1 + v4);

  os_unfair_lock_unlock(v8 + 4);
}

uint64_t JSONDecoder.userInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  v4 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock);

  os_unfair_lock_lock(v4 + 4);

  *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 104) = a1;

  v5 = *(v1 + v3);

  os_unfair_lock_unlock(v5 + 4);
}

uint64_t (*JSONDecoder.allowsJSON5.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2 + 112);
  return JSONDecoder.allowsJSON5.modify;
}

void *JSONDecoder.assumesTopLevelDictionary.setter(char a1)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - v10;
  v56 = *(v5 + 16);
  v57 = v12;
  v56(&v48 - v10, v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_assumesTopLevelDictionaryKey, v9);
  v64 = MEMORY[0x1E69E6370];
  LOBYTE(v63) = a1;
  v13 = (*(*v1 + 216))(v62);
  v15 = v14;
  outlined init with take of Any(&v63, &v60);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v15;
  v17 = v59;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    v2 = v19;
    if (*(v17 + 24) < v23)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
      v24 = v59;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if ((v2 & 1) == (v25 & 1))
      {
        goto LABEL_7;
      }

      v18 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v24 = v17;
LABEL_7:
      v26 = v57;
      if (v2)
      {
LABEL_8:
        v27 = (*(v24 + 56) + 32 * v18);
        __swift_destroy_boxed_opaque_existential_1(v27);
        outlined init with take of Any(&v60, v27);
LABEL_30:
        (*(v5 + 8))(v11, v26);
        *v15 = v24;
        return v13(v62, 0);
      }

LABEL_29:
      v42 = v18;
      (v56)(v7, v11, v26);
      v43 = __swift_mutable_project_boxed_opaque_existential_1(&v60, v61);
      v44 = MEMORY[0x1EEE9AC00](v43);
      v46 = &v48 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = v57;
      (*(v47 + 16))(v46, v44);
      specialized _NativeDictionary._insert(at:key:value:)(v42, v7, *v46, v24);
      __swift_destroy_boxed_opaque_existential_1(&v60);
      goto LABEL_30;
    }
  }

  v49 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd);
  v28 = static _DictionaryStorage.copy(original:)();
  v24 = v28;
  if (!*(v17 + 16))
  {
LABEL_28:

    v18 = v49;
    v26 = v57;
    if (v2)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  result = (v28 + 64);
  v30 = ((1 << *(v24 + 32)) + 63) >> 6;
  v50 = (v17 + 64);
  if (v24 != v17 || result >= v17 + 64 + 8 * v30)
  {
    result = memmove(result, v50, 8 * v30);
  }

  v32 = 0;
  *(v24 + 16) = *(v17 + 16);
  v33 = 1 << *(v17 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v17 + 64);
  v36 = (v33 + 63) >> 6;
  v51 = v5 + 32;
  v52 = v36;
  if (v35)
  {
    do
    {
      v37 = __clz(__rbit64(v35));
      v55 = (v35 - 1) & v35;
LABEL_26:
      v53 = v37 | (v32 << 6);
      v40 = *(v17 + 48);
      v54 = *(v5 + 72) * v53;
      (v56)(v7, v40 + v54, v57);
      v41 = *(v17 + 56);
      v53 *= 32;
      outlined init with copy of Any(v41 + v53, v58);
      (*(v5 + 32))(*(v24 + 48) + v54, v7, v57);
      result = outlined init with take of Any(v58, (*(v24 + 56) + v53));
      v36 = v52;
      v35 = v55;
    }

    while (v55);
  }

  v38 = v32;
  while (1)
  {
    v32 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v32 >= v36)
    {
      goto LABEL_28;
    }

    v39 = *(v50 + v32);
    ++v38;
    if (v39)
    {
      v37 = __clz(__rbit64(v39));
      v55 = (v39 - 1) & v39;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

void (*JSONDecoder.assumesTopLevelDictionary.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1B8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 384) = v1;
  v6 = type metadata accessor for CodingUserInfoKey();
  *(v5 + 392) = v6;
  v7 = *(v6 - 8);
  *(v5 + 400) = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    *(v5 + 408) = swift_coroFrameAlloc();
    *(v5 + 416) = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 408) = malloc(*(v7 + 64));
    *(v5 + 416) = malloc(v8);
    v9 = malloc(v8);
  }

  *(v5 + 424) = v9;
  *(v5 + 432) = JSONDecoder.assumesTopLevelDictionary.getter() & 1;
  return JSONDecoder.assumesTopLevelDictionary.modify;
}

void JSONDecoder.assumesTopLevelDictionary.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 392);
  v4 = *(*a1 + 432);
  v5 = *(*(*a1 + 400) + 16);
  v6 = *(*a1 + 384);
  v7 = MEMORY[0x1E69E6370];
  if ((a2 & 1) == 0)
  {
    v8 = v2 + 224;
    (v5)(*(v2 + 424), v6 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_assumesTopLevelDictionaryKey, v3);
    *(v2 + 216) = v7;
    *(v2 + 192) = v4;
    v9 = (*(*v6 + 216))(v2 + 224);
    v11 = v25;
    v12 = *(v2 + 424);
    if (!*(v2 + 216))
    {
      outlined destroy of TermOfAddress?(v2 + 192, &_ss8Sendable_pSgMd);
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if (v46)
      {
        v47 = v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = *v11;
        if (isUniquelyReferenced_nonNull_native)
        {
          v50 = *v11;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd);
          v121 = static _DictionaryStorage.copy(original:)();
          v50 = v121;
          v122 = *(v49 + 16);
          if (v122)
          {
            v123 = (v121 + 64);
            v124 = ((1 << *(v50 + 32)) + 63) >> 6;
            v140 = (v49 + 64);
            if (v50 != v49 || v123 >= v49 + 64 + 8 * v124)
            {
              memmove(v123, v140, 8 * v124);
              v122 = *(v49 + 16);
            }

            v126 = 0;
            v127 = *(v2 + 400);
            *(v50 + 16) = v122;
            v128 = 1 << *(v49 + 32);
            v129 = -1;
            if (v128 < 64)
            {
              v129 = ~(-1 << v128);
            }

            v130 = v129 & *(v49 + 64);
            v146 = v127;
            v147 = v130;
            v139 = (v128 + 63) >> 6;
            v141 = v127 + 32;
            for (i = v130; v147; i = v147)
            {
LABEL_108:
              v133 = __clz(__rbit64(i));
              v147 = (i - 1) & i;
              v134 = *(v2 + 392);
              v144 = *(v2 + 416);
              v145 = v134;
              v135 = *(v146 + 72) * (v133 | (v126 << 6));
              v142 = v133 | (v126 << 6);
              v143 = v135;
              v5();
              v136 = *(v49 + 56);
              v142 *= 32;
              outlined init with copy of Any(v136 + v142, v2 + 288);
              (*(v146 + 32))(*(v50 + 48) + v143, v144, v145);
              outlined init with take of Any((v2 + 288), (*(v50 + 56) + v142));
            }

            v132 = v126;
            while (1)
            {
              v126 = v132 + 1;
              if (__OFADD__(v132, 1))
              {
                goto LABEL_115;
              }

              if (v126 >= v139)
              {
                break;
              }

              i = *(v140 + v126);
              ++v132;
              if (i)
              {
                goto LABEL_108;
              }
            }
          }
        }

        v51 = *(v2 + 424);
        v52 = *(v2 + 392);
        v53 = *(v2 + 400);
        v54 = *(v53 + 8);
        v54(*(v50 + 48) + *(v53 + 72) * v47, v52);
        outlined init with take of Any((*(v50 + 56) + 32 * v47), (v2 + 256));
        specialized _NativeDictionary._delete(at:)(v47, v50);
        v54(v51, v52);
        *v11 = v50;
      }

      else
      {
        (*(*(v2 + 400) + 8))(*(v2 + 424), *(v2 + 392));
        *(v2 + 256) = 0u;
        *(v2 + 272) = 0u;
      }

      outlined destroy of TermOfAddress?(v2 + 256, &_ss8Sendable_pSgMd);
      goto LABEL_35;
    }

    outlined init with take of Any((v2 + 192), (v2 + 320));
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v148 = *v11;
    v14 = v148;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    v28 = v148[2];
    v29 = (v27 & 1) == 0;
    v19 = __OFADD__(v28, v29);
    v30 = v28 + v29;
    if (v19)
    {
      goto LABEL_37;
    }

    v31 = v27;
    if (v148[3] >= v30)
    {
      if (v26)
      {
        v22 = v148;
        if (v27)
        {
LABEL_13:
          v34 = (v22[7] + 32 * v15);
          __swift_destroy_boxed_opaque_existential_1(v34);
          outlined init with take of Any((v2 + 320), v34);
LABEL_29:
          v62 = *(v2 + 424);
          goto LABEL_30;
        }
      }

      else
      {
        v139 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd);
        v89 = static _DictionaryStorage.copy(original:)();
        v22 = v89;
        v90 = v148[2];
        if (v90)
        {
          v91 = (v89 + 64);
          v92 = ((1 << *(v22 + 32)) + 63) >> 6;
          v140 = v148 + 8;
          if (v22 != v148 || v91 >= &v148[v92 + 8])
          {
            memmove(v91, v140, 8 * v92);
            v90 = v148[2];
          }

          v94 = 0;
          v95 = *(v2 + 400);
          v22[2] = v90;
          v96 = 1 << *(v14 + 32);
          v97 = -1;
          if (v96 < 64)
          {
            v97 = ~(-1 << v96);
          }

          v98 = v97 & v14[8];
          v146 = v95;
          v147 = v98;
          v138 = (v96 + 63) >> 6;
          v141 = v95 + 32;
          for (j = v98; v147; j = v147)
          {
LABEL_70:
            v101 = __clz(__rbit64(j));
            v147 = (j - 1) & j;
            v102 = *(v2 + 392);
            v144 = *(v2 + 416);
            v145 = v102;
            v103 = *(v146 + 72) * (v101 | (v94 << 6));
            v142 = v101 | (v94 << 6);
            v143 = v103;
            v5();
            v104 = v14[7];
            v142 *= 32;
            outlined init with copy of Any(v104 + v142, v2 + 352);
            (*(v146 + 32))(v22[6] + v143, v144, v145);
            outlined init with take of Any((v2 + 352), (v22[7] + v142));
          }

          v100 = v94;
          while (1)
          {
            v94 = v100 + 1;
            if (__OFADD__(v100, 1))
            {
              break;
            }

            if (v94 >= v138)
            {
              goto LABEL_74;
            }

            j = *(v140 + v94);
            ++v100;
            if (j)
            {
              goto LABEL_70;
            }
          }

LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

LABEL_74:

        v15 = v139;
        if (v31)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v32 = *(v2 + 424);
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, v26);
      v22 = v148;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_116;
      }

      if (v31)
      {
        goto LABEL_13;
      }
    }

    v63 = *(v2 + 416);
    v64 = v15;
    (v5)(v63, *(v2 + 424), *(v2 + 392));
    v65 = __swift_mutable_project_boxed_opaque_existential_1(v2 + 320, *(v2 + 344));
    v66 = MEMORY[0x1EEE9AC00](v65);
    v68 = &v137 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v69 + 16))(v68, v66);
    specialized _NativeDictionary._insert(at:key:value:)(v64, v63, *v68, v22);
    __swift_destroy_boxed_opaque_existential_1(v2 + 320);
    goto LABEL_29;
  }

  v8 = v2 + 32;
  (v5)(*(v2 + 408), v6 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_assumesTopLevelDictionaryKey, v3);
  *(v2 + 24) = v7;
  *v2 = v4;
  v9 = (*(*v6 + 216))(v2 + 32);
  v11 = v10;
  v12 = *(v2 + 408);
  if (!*(v2 + 24))
  {
    outlined destroy of TermOfAddress?(v2, &_ss8Sendable_pSgMd);
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if (v36)
    {
      v37 = v35;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      if (v38)
      {
        v40 = *v11;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd);
        v105 = static _DictionaryStorage.copy(original:)();
        v40 = v105;
        v106 = *(v39 + 16);
        if (v106)
        {
          v107 = (v105 + 64);
          v108 = ((1 << *(v40 + 32)) + 63) >> 6;
          v140 = (v39 + 64);
          if (v40 != v39 || v107 >= v39 + 64 + 8 * v108)
          {
            memmove(v107, v140, 8 * v108);
            v106 = *(v39 + 16);
          }

          v110 = 0;
          v111 = *(v2 + 400);
          *(v40 + 16) = v106;
          v112 = 1 << *(v39 + 32);
          v113 = -1;
          if (v112 < 64)
          {
            v113 = ~(-1 << v112);
          }

          v114 = v113 & *(v39 + 64);
          v146 = v111;
          v147 = v114;
          v139 = (v112 + 63) >> 6;
          v141 = v111 + 32;
          for (k = v114; v147; k = v147)
          {
LABEL_91:
            v117 = __clz(__rbit64(k));
            v147 = (k - 1) & k;
            v118 = *(v2 + 392);
            v144 = *(v2 + 416);
            v145 = v118;
            v119 = *(v146 + 72) * (v117 | (v110 << 6));
            v142 = v117 | (v110 << 6);
            v143 = v119;
            v5();
            v120 = *(v39 + 56);
            v142 *= 32;
            outlined init with copy of Any(v120 + v142, v2 + 96);
            (*(v146 + 32))(*(v40 + 48) + v143, v144, v145);
            outlined init with take of Any((v2 + 96), (*(v40 + 56) + v142));
          }

          v116 = v110;
          while (1)
          {
            v110 = v116 + 1;
            if (__OFADD__(v116, 1))
            {
              goto LABEL_114;
            }

            if (v110 >= v139)
            {
              break;
            }

            k = *(v140 + v110);
            ++v116;
            if (k)
            {
              goto LABEL_91;
            }
          }
        }
      }

      v42 = *(v2 + 400);
      v41 = *(v2 + 408);
      v43 = *(v2 + 392);
      v44 = *(v42 + 8);
      v44(*(v40 + 48) + *(v42 + 72) * v37, v43);
      outlined init with take of Any((*(v40 + 56) + 32 * v37), (v2 + 64));
      specialized _NativeDictionary._delete(at:)(v37, v40);
      v44(v41, v43);
      *v11 = v40;
    }

    else
    {
      (*(*(v2 + 400) + 8))(*(v2 + 408), *(v2 + 392));
      *(v2 + 64) = 0u;
      *(v2 + 80) = 0u;
    }

    outlined destroy of TermOfAddress?(v2 + 64, &_ss8Sendable_pSgMd);
    goto LABEL_35;
  }

  outlined init with take of Any(v2, (v2 + 128));
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v11;
  v14 = v148;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
  v17 = v148[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v139 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd);
    v73 = static _DictionaryStorage.copy(original:)();
    v22 = v73;
    v74 = v14[2];
    if (!v74)
    {
LABEL_72:

      v15 = v139;
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

    v75 = (v73 + 64);
    v76 = ((1 << *(v22 + 32)) + 63) >> 6;
    v140 = v14 + 8;
    if (v22 != v14 || v75 >= &v14[v76 + 8])
    {
      memmove(v75, v140, 8 * v76);
      v74 = v14[2];
    }

    v78 = 0;
    v79 = *(v2 + 400);
    v22[2] = v74;
    v80 = 1 << *(v14 + 32);
    v81 = -1;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    v82 = v81 & v14[8];
    v146 = v79;
    v147 = v82;
    v138 = (v80 + 63) >> 6;
    v141 = v79 + 32;
    for (m = v82; v147; m = v147)
    {
LABEL_53:
      v85 = __clz(__rbit64(m));
      v147 = (m - 1) & m;
      v86 = *(v2 + 392);
      v144 = *(v2 + 416);
      v145 = v86;
      v87 = *(v146 + 72) * (v85 | (v78 << 6));
      v142 = v85 | (v78 << 6);
      v143 = v87;
      v5();
      v88 = v14[7];
      v142 *= 32;
      outlined init with copy of Any(v88 + v142, v2 + 160);
      (*(v146 + 32))(v22[6] + v143, v144, v145);
      outlined init with take of Any((v2 + 160), (v22[7] + v142));
    }

    v84 = v78;
    while (1)
    {
      v78 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        break;
      }

      if (v78 >= v138)
      {
        goto LABEL_72;
      }

      m = *(v140 + v78);
      ++v84;
      if (m)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_113;
  }

  LOBYTE(v12) = v16;
  if (v148[3] >= v20)
  {
    if (v13)
    {
      v22 = v148;
      if (v16)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

    goto LABEL_38;
  }

  v21 = *(v2 + 408);
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, v13);
  v22 = v148;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
  if ((v12 & 1) == (v23 & 1))
  {
    if (v12)
    {
LABEL_7:
      v24 = (v22[7] + 32 * v15);
      __swift_destroy_boxed_opaque_existential_1(v24);
      outlined init with take of Any((v2 + 128), v24);
LABEL_25:
      v62 = *(v2 + 408);
LABEL_30:
      (*(*(v2 + 400) + 8))(v62, *(v2 + 392));
      *v11 = v22;
LABEL_35:
      v71 = *(v2 + 416);
      v70 = *(v2 + 424);
      v72 = *(v2 + 408);
      v9(v8, 0);
      free(v70);
      free(v71);
      free(v72);
      free(v2);
      return;
    }

LABEL_24:
    v55 = *(v2 + 416);
    v56 = v15;
    (v5)(v55, *(v2 + 408), *(v2 + 392));
    v57 = __swift_mutable_project_boxed_opaque_existential_1(v2 + 128, *(v2 + 152));
    v58 = MEMORY[0x1EEE9AC00](v57);
    v60 = &v137 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v61 + 16))(v60, v58);
    specialized _NativeDictionary._insert(at:key:value:)(v56, v55, *v60, v22);
    __swift_destroy_boxed_opaque_existential_1(v2 + 128);
    goto LABEL_25;
  }

LABEL_116:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t JSONDecoder.deinit()
{
  v1 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_assumesTopLevelDictionaryKey;
  v2 = type metadata accessor for CodingUserInfoKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 24);
  v4 = *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 40);
  v5 = *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 48);
  v6 = *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 88);
  outlined consume of JSONDecoder.DateDecodingStrategy(*(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options), *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 8), *(v0 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 16));
  sub_1807A5C7C(v3);
  outlined consume of JSONDecoder.NonConformingFloatDecodingStrategy(v4, v5);
  sub_1807A5C7C(v6);

  return v0;
}

uint64_t specialized JSONDecoderImpl.unwrapURL<A>(from:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>)
{
  v16 = (a3 & 0xE0) == 0xA0 && (a2 | a1) == 0;
  if (v16 && a3 == 160)
  {
    v23 = type metadata accessor for DecodingError();
    swift_allocError();
    v25 = v24;
    *v24 = &type metadata for URL;
    _CodingPathNode.path.getter(a4);
    if (a8 != -1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v26 = a5;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v28 = swift_allocObject();
      *(inited + 32) = v28;
      *(v28 + 16) = v26;
      *(v28 + 24) = a6;
      *(v28 + 32) = a7;
      *(v28 + 40) = a8;
      outlined copy of _CodingKey(v26, a6, a7, a8);
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
    MEMORY[0x1865CB0E0](5001813, 0xE300000000000000);
    MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v29 = MEMORY[0x1E69E6B08];
  }

  else
  {
    result = specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
    if (v9)
    {
      return result;
    }

    v19 = v18;
    if (one-time initialization token for compatibility2 != -1)
    {
      v37 = result;
      swift_once();
      result = v37;
    }

    v20 = result;
    v40 = a7;
    v38 = a5;
    v39 = a6;
    if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
    {
      v21 = type metadata accessor for _BridgedURL();
      v22 = &protocol witness table for _BridgedURL;
    }

    else
    {
      v21 = type metadata accessor for _SwiftURL();
      v22 = &protocol witness table for _SwiftURL;
    }

    v30 = v22[1];

    if (v30(v20, v19, v21, v22))
    {
      v31 = (v22[56])(v21, v22);
      v33 = v32;

      result = swift_unknownObjectRelease();
      *a9 = v31;
      a9[1] = v33;
      return result;
    }

    v23 = type metadata accessor for DecodingError();
    swift_allocError();
    v25 = v34;
    _CodingPathNode.path.getter(a4);
    if (a8 != -1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v35 = swift_initStackObject();
      *(v35 + 16) = xmmword_181218E20;
      *(v35 + 56) = &type metadata for _CodingKey;
      *(v35 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v36 = swift_allocObject();
      *(v35 + 32) = v36;
      *(v36 + 16) = v38;
      *(v36 + 24) = v39;
      *(v36 + 32) = v40;
      *(v36 + 40) = a8;
      outlined copy of _CodingKey(v38, v39, v40, a8);
      specialized Array.append<A>(contentsOf:)(v35);
    }

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v29 = MEMORY[0x1E69E6B00];
  }

  (*(*(v23 - 8) + 104))(v25, *v29, v23);
  return swift_willThrow();
}

uint64_t specialized JSONDecoderImpl.unwrapDecimal<A>(from:for:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  type metadata accessor for NSDecimal(0);
  v17 = a3 >> 5;
  if (v17 == 1)
  {
    MEMORY[0x1EEE9AC00](v16);
    v29 = *(*(v8 + 32) + 24);
    MEMORY[0x1EEE9AC00](v30);

    os_unfair_lock_lock((v29 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v29 + 16));
    os_unfair_lock_unlock((v29 + 40));

    if (!v9)
    {
      return v32;
    }
  }

  else
  {
    v18 = v16;
    if (v17 == 5 && !(a2 | a1) && a3 == 160)
    {
      v19 = type metadata accessor for DecodingError();
      swift_allocError();
      v21 = v20;
      *v20 = v18;
      _CodingPathNode.path.getter(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v23 = swift_allocObject();
        *(inited + 32) = v23;
        *(v23 + 16) = a5;
        *(v23 + 24) = a6;
        *(v23 + 32) = a7;
        *(v23 + 40) = a8;
        outlined copy of _CodingKey(a5, a6, a7, a8);
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x616D69636544534ELL, 0xE90000000000006CLL);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v24 = MEMORY[0x1E69E6B08];
    }

    else
    {
      v19 = type metadata accessor for DecodingError();
      swift_allocError();
      v21 = v25;
      *v25 = v18;
      _CodingPathNode.path.getter(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_181218E20;
        *(v26 + 56) = &type metadata for _CodingKey;
        *(v26 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v27 = swift_allocObject();
        *(v26 + 32) = v27;
        *(v27 + 16) = a5;
        *(v27 + 24) = a6;
        *(v27 + 32) = a7;
        *(v27 + 40) = a8;
        outlined copy of _CodingKey(a5, a6, a7, a8);
        specialized Array.append<A>(contentsOf:)(v26);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v24 = MEMORY[0x1E69E6AF8];
    }

    (*(*(v19 - 8) + 104))(v21, *v24, v19);
    return swift_willThrow();
  }

  return result;
}

uint64_t JSONDecoderImpl.unwrapDecimal<A>(from:for:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v65 = a7;
  v66 = a5;
  v73 = a4;
  *(&v70 + 1) = a2;
  *&v70 = a1;
  v67 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v62 - v14;
  v69 = type metadata accessor for Optional();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  type metadata accessor for NSDecimal(0);
  v27 = a3 >> 5;
  if (v27 == 1)
  {
    MEMORY[0x1EEE9AC00](v26);
    *(&v62 - 16) = v43;
    *(&v62 - 15) = a3 & 1;
    v44 = *(*(v8 + 32) + 24);
    MEMORY[0x1EEE9AC00](v45);
    *(&v62 - 4) = closure #1 in JSONDecoderImpl.unwrapDecimal<A>(from:for:_:)partial apply;
    *(&v62 - 3) = v46;
    v47 = *(&v70 + 1);
    *(&v62 - 2) = v70;
    *(&v62 - 1) = v47;

    os_unfair_lock_lock((v44 + 40));
    v48 = v64;
    closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply((v44 + 16));
    os_unfair_lock_unlock((v44 + 40));

    if (!v48)
    {
      return v71;
    }
  }

  else
  {
    v28 = v26;
    if (v27 == 5 && v70 == 0 && a3 == 160)
    {
      *(&v70 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      *v29 = v28;
      v31 = v68;
      v32 = *(v68 + 16);
      v33 = v69;
      v32(v25, v66, v69);
      v32(v22, v25, v33);
      v34 = v67;
      if ((*(v67 + 48))(v22, 1, a6) == 1)
      {
        v35 = *(v31 + 8);
        v35(v22, v33);
        _CodingPathNode.path.getter(v73);
        v35(v25, v33);
      }

      else
      {
        v55 = *(v34 + 32);
        *&v70 = v30;
        v56 = v63;
        v55(v63, v22, a6);
        v57 = _CodingPathNode.path.getter(v73);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v59 = v65;
        *(inited + 56) = a6;
        *(inited + 64) = v59;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(v34 + 16))(boxed_opaque_existential_0, v56, a6);
        v71 = v57;
        specialized Array.append<A>(contentsOf:)(inited);
        v61 = v56;
        v30 = v70;
        (*(v34 + 8))(v61, a6);
        (*(v31 + 8))(v25, v33);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v71 = 0;
      v72 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x616D69636544534ELL, 0xE90000000000006CLL);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v70 + 1) - 8) + 104))(v30, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      *&v70 = type metadata accessor for DecodingError();
      *(&v70 + 1) = swift_allocError();
      v37 = v36;
      *v36 = v28;
      v38 = v68;
      v39 = *(v68 + 16);
      v40 = v69;
      v39(v19, v66, v69);
      v39(v16, v19, v40);
      v41 = v67;
      if ((*(v67 + 48))(v16, 1, a6) == 1)
      {
        v42 = *(v38 + 8);
        v42(v16, v40);
        _CodingPathNode.path.getter(v73);
        v42(v19, v40);
      }

      else
      {
        (*(v41 + 32))(v12, v16, a6);
        v50 = _CodingPathNode.path.getter(v73);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = v40;
        v52 = swift_initStackObject();
        *(v52 + 16) = xmmword_181218E20;
        v53 = v65;
        *(v52 + 56) = a6;
        *(v52 + 64) = v53;
        v54 = __swift_allocate_boxed_opaque_existential_0((v52 + 32));
        (*(v41 + 16))(v54, v12, a6);
        v71 = v50;
        specialized Array.append<A>(contentsOf:)(v52);
        (*(v41 + 8))(v12, a6);
        (*(v38 + 8))(v19, v51);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v70 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8]);
    }

    return swift_willThrow();
  }

  return result;
}

void closure #1 in JSONDecoderImpl.unwrapDecimal<A>(from:for:_:)(char *__s1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (a5)
  {
    v13 = specialized static JSON5Scanner.prevalidateJSONNumber(from:fullSource:)(__s1, a2, a3, a4);
    if (v7)
    {
      return;
    }

    if (v14)
    {
      if (a2)
      {
        if (*__s1 == 45)
        {
          v15 = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
          if (v16)
          {
            goto LABEL_29;
          }

          v17 = _sSo9NSDecimala10FoundationE7exactlyABSgx_tcSzRzlufCs5Int64V_Tt0g5(v15);
          if ((v19 & 0x100000000) != 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v33 = specialized _parseJSON5Integer<A>(_:isHex:)(__s1, a2, 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
          if (v34)
          {
            goto LABEL_29;
          }

          v17 = _sSo9NSDecimala10FoundationE7exactlyABSgx_tcSzRzlufCs6UInt64V_Tt0g5(v33);
          if ((v19 & 0x100000000) != 0)
          {
            goto LABEL_29;
          }
        }

        *a7 = v17;
        *(a7 + 8) = v18;
        *(a7 + 16) = v19;
        return;
      }

      __break(1u);
      goto LABEL_36;
    }

    if ((v14 & 0x100) != 0)
    {
      *&v44[4] = 0uLL;
      _So9NSDecimala__exponent_setter(0, v44);
      _So9NSDecimala__length_setter(0, v44);
      _So9NSDecimala__isNegative_setter(1, v44);
      _So9NSDecimala__isCompact_setter_0(0, v44);
      _So9NSDecimala__reserved_setter(v44);
      *a7 = *v44;
      *(a7 + 16) = *&v44[16];
      return;
    }

    v26 = v13;
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v45);
      v23 = v45[1];
      v22 = v45[2];
      v24 = v45[0];
      if (v46 == 1)
      {
        v27 = v45[3];
LABEL_28:
        if (!(v22 | v27 | v24 | v23))
        {
          v39 = &__s1[a2] - v26;
          if ((((v26 - __s1) | v39) & 0x8000000000000000) == 0)
          {
            specialized static JSON5Scanner.validateNumber(from:fullSource:)(v26, v39, a3, a4, v49);
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            v40 = v49[2];
            v42 = v49[0];
            v41 = v49[1];
            *(v43 + 48) = v50;
            *(v43 + 16) = v41;
            *(v43 + 32) = v40;
            *v43 = v42;
            goto LABEL_30;
          }

          goto LABEL_37;
        }

        goto LABEL_29;
      }
    }

    else
    {
      specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 46, 0xE100000000000000, 1, v47);
      v23 = v47[1];
      v22 = v47[2];
      v24 = v47[0];
      if (v48)
      {
        v27 = v47[3];
        goto LABEL_28;
      }
    }

    goto LABEL_31;
  }

  v20 = specialized static JSONScanner.prevalidateJSONNumber(from:hasExponent:fullSource:)(__s1, a2, a6 & 1, a3, a4);
  if (v7)
  {
    return;
  }

  v21 = v20;
  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation10BufferViewVys5UInt8VGMd) == MEMORY[0x1E69E6108])
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 0x2EuLL, 0xE100000000000000, 1, v51);
    v23 = v51[1];
    v22 = v51[2];
    v24 = v51[0];
    if (v52 == 1)
    {
      v25 = v51[3];
LABEL_19:
      if (!(v22 | v25 | v24 | v23))
      {
        v28 = &__s1[a2] - v21;
        if ((((v21 - __s1) | v28) & 0x8000000000000000) == 0)
        {
          specialized static JSONScanner.validateNumber(from:fullSource:)(v21, v28, a3, a4, v55);
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          v29 = v55[1];
          v30 = v55[2];
          v31 = v55[0];
          *(v32 + 48) = v56;
          *(v32 + 16) = v29;
          *(v32 + 32) = v30;
          *v32 = v31;
LABEL_30:
          swift_willThrow();
          return;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

LABEL_29:
      v35 = static String._fromUTF8Repairing(_:)();
      v37 = v36;
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      *v38 = v35;
      *(v38 + 8) = v37;
      *(v38 + 16) = 0u;
      *(v38 + 32) = 0u;
      *(v38 + 48) = 11;
      goto LABEL_30;
    }
  }

  else
  {
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(__s1, a2, 46, 0xE100000000000000, 1, v53);
    v23 = v53[1];
    v22 = v53[2];
    v24 = v53[0];
    if (v54)
    {
      v25 = v53[3];
      goto LABEL_19;
    }
  }

LABEL_31:
  *a7 = v24;
  *(a7 + 8) = v23;
  *(a7 + 16) = v22;
}

uint64_t specialized closure #1 in closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(void *__s1, size_t __n, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  v10 = a3[1];
  if ((v10 & 0x1000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((v10 & 0x2000000000000000) == 0)
  {
    do
    {
      if ((v9 & 0x1000000000000000) != 0)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v9 & 0xFFFFFFFFFFFFLL) != __n)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v29 = _StringObject.sharedUTF8.getter();
        v31 = v30;
        v11 = v29;
        if (v31 != __n)
        {
          goto LABEL_11;
        }
      }

      if (v11)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_7:
      v12 = a3;
      v13 = static String._copying(_:)();
      v15 = v14;

      v9 = v13;
      *v12 = v13;
      v12[1] = v15;
      v10 = v15;
    }

    while ((v15 & 0x2000000000000000) == 0);
  }

  v38 = v9;
  v39 = v10 & 0xFFFFFFFFFFFFFFLL;
  if ((HIBYTE(v10) & 0xF) == __n)
  {
    v11 = &v38;
LABEL_10:
    if (!memcmp(__s1, v11, __n))
    {
      return 0x7FF0000000000000;
    }
  }

LABEL_11:
  v16 = *a4;
  v17 = a4[1];
  if ((v17 & 0x1000000000000000) != 0)
  {
    v20 = static String._copying(_:)();
    v22 = v21;

    v16 = v20;
    *a4 = v20;
    a4[1] = v22;
    v17 = v22;
    if ((v22 & 0x2000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v38 = v16;
    v39 = v17 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v17) & 0xF) != __n)
    {
      goto LABEL_22;
    }

    v18 = &v38;
    goto LABEL_21;
  }

  if ((v17 & 0x2000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if ((v16 & 0x1000000000000000) != 0)
  {
    v18 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
    if ((v16 & 0xFFFFFFFFFFFFLL) != __n)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v32 = _StringObject.sharedUTF8.getter();
    v34 = v33;
    v18 = v32;
    if (v34 != __n)
    {
      goto LABEL_22;
    }
  }

  if (!v18)
  {
    __break(1u);
    return 0x7FF0000000000000;
  }

LABEL_21:
  if (!memcmp(__s1, v18, __n))
  {
    return 0xFFF0000000000000;
  }

LABEL_22:
  v23 = *a5;
  v24 = a5[1];
  if ((v24 & 0x1000000000000000) != 0)
  {
    v26 = static String._copying(_:)();
    v28 = v27;

    v23 = v26;
    *a5 = v26;
    a5[1] = v28;
    v24 = v28;
    if ((v28 & 0x2000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_30:
    v38 = v23;
    v39 = v24 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v24) & 0xF) != __n)
    {
      return 0;
    }

    v25 = &v38;
    goto LABEL_32;
  }

  if ((v24 & 0x2000000000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  if ((v23 & 0x1000000000000000) != 0)
  {
    v25 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
    if ((v23 & 0xFFFFFFFFFFFFLL) != __n)
    {
      return 0;
    }
  }

  else
  {
    v35 = _StringObject.sharedUTF8.getter();
    v37 = v36;
    v25 = v35;
    if (v37 != __n)
    {
      return 0;
    }
  }

  if (!v25)
  {
    __break(1u);
    return 0xFFF0000000000000;
  }

LABEL_32:
  if (!memcmp(__s1, v25, __n))
  {
    return 0x7FF8000000000000;
  }

  return 0;
}

unint64_t specialized closure #1 in closure #2 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(void *__s1, size_t __n, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  v10 = a3[1];
  if ((v10 & 0x1000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((v10 & 0x2000000000000000) == 0)
  {
    do
    {
      if ((v9 & 0x1000000000000000) != 0)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v9 & 0xFFFFFFFFFFFFLL) != __n)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v31 = _StringObject.sharedUTF8.getter();
        v33 = v32;
        v11 = v31;
        if (v33 != __n)
        {
          goto LABEL_11;
        }
      }

      if (v11)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_7:
      v12 = a3;
      v13 = static String._copying(_:)();
      v15 = v14;

      v9 = v13;
      *v12 = v13;
      v12[1] = v15;
      v10 = v15;
    }

    while ((v15 & 0x2000000000000000) == 0);
  }

  v40 = v9;
  v41 = v10 & 0xFFFFFFFFFFFFFFLL;
  if ((HIBYTE(v10) & 0xF) == __n)
  {
    v11 = &v40;
LABEL_10:
    if (!memcmp(__s1, v11, __n))
    {
      goto LABEL_17;
    }
  }

LABEL_11:
  v16 = *a4;
  v17 = a4[1];
  if ((v17 & 0x1000000000000000) == 0)
  {
    if ((v17 & 0x2000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v40 = v16;
    v41 = v17 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v17) & 0xF) != __n)
    {
      goto LABEL_22;
    }

    v18 = &v40;
    goto LABEL_21;
  }

  v21 = static String._copying(_:)();
  v23 = v22;

  v16 = v21;
  *a4 = v21;
  a4[1] = v23;
  v17 = v23;
  if ((v23 & 0x2000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if ((v16 & 0x1000000000000000) != 0)
  {
    v18 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
    if ((v16 & 0xFFFFFFFFFFFFLL) != __n)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v34 = _StringObject.sharedUTF8.getter();
    v36 = v35;
    v18 = v34;
    if (v36 != __n)
    {
      goto LABEL_22;
    }
  }

  if (v18)
  {
LABEL_21:
    if (!memcmp(__s1, v18, __n))
    {
LABEL_28:
      v19 = 0;
      v20 = 4286578688;
      goto LABEL_34;
    }

LABEL_22:
    v24 = *a5;
    v25 = a5[1];
    if ((v25 & 0x1000000000000000) != 0)
    {
      v27 = static String._copying(_:)();
      v29 = v28;

      v24 = v27;
      *a5 = v27;
      a5[1] = v29;
      v25 = v29;
      if ((v29 & 0x2000000000000000) == 0)
      {
LABEL_24:
        if ((v24 & 0x1000000000000000) != 0)
        {
          v26 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v24 & 0xFFFFFFFFFFFFLL) == __n)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v37 = _StringObject.sharedUTF8.getter();
          v39 = v38;
          v26 = v37;
          if (v39 == __n)
          {
LABEL_26:
            if (!v26)
            {
              __break(1u);
              goto LABEL_28;
            }

            goto LABEL_32;
          }
        }

LABEL_33:
        v20 = 0;
        v19 = 1;
        goto LABEL_34;
      }
    }

    else if ((v25 & 0x2000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v40 = v24;
    v41 = v25 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v25) & 0xF) == __n)
    {
      v26 = &v40;
LABEL_32:
      if (!memcmp(__s1, v26, __n))
      {
        v19 = 0;
        v20 = 2143289344;
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    goto LABEL_33;
  }

  __break(1u);
LABEL_17:
  v19 = 0;
  v20 = 2139095040;
LABEL_34:
  LOBYTE(v40) = v19;
  return v20 | (v19 << 32);
}

unint64_t *specialized JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v73 = a7;
  v74 = a5;
  v77 = a4;
  *(&v72 + 1) = a2;
  *&v72 = a1;
  v68 = *v7;
  v70 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v66 - v13;
  v71 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v71);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66 - v26;
  v28 = a3 >> 5;
  if (v28 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v40 = v73;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = v40;
    *(&v66 - 32) = v41;
    *(&v66 - 31) = a3 & 1;
    v42 = v74;
    *(&v66 - 3) = v77;
    *(&v66 - 2) = v42;
    *(&v66 - 1) = v68;
    v43 = *(v7[4] + 24);
    MEMORY[0x1EEE9AC00](v44);
    v45 = (&v66 - 6);
    *(&v66 - 4) = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    *(&v66 - 3) = v46;
    v47 = *(&v72 + 1);
    *(&v66 - 2) = v72;
    *(&v66 - 1) = v47;

    os_unfair_lock_lock((v43 + 40));
    v48 = v69;
    closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply((v43 + 16), &v75);
    os_unfair_lock_unlock((v43 + 40));

    if (!v48)
    {
      v45 = v75;
    }
  }

  else
  {
    if (v28 == 5 && v72 == 0 && a3 == 160)
    {
      v29 = v24;
      *(&v72 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      *&v72 = v30;
      *v30 = MEMORY[0x1E69E7570];
      v31 = *(v29 + 16);
      v32 = v71;
      v31(v27, v74, v71);
      v31(v21, v27, v32);
      v33 = v70;
      if ((*(v70 + 48))(v21, 1, a6) == 1)
      {
        v34 = *(v29 + 8);
        v34(v21, v32);
        _CodingPathNode.path.getter(v77);
        v34(v27, v32);
      }

      else
      {
        (*(v33 + 32))(v67, v21, a6);
        v57 = v33;
        v58 = _CodingPathNode.path.getter(v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v60 = v73;
        *(inited + 56) = a6;
        *(inited + 64) = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v62 = v67;
        (*(v57 + 16))(boxed_opaque_existential_0, v67, a6);
        v75 = v58;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v57 + 8))(v62, a6);
        (*(v29 + 8))(v27, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v75 = 0;
      v76 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x383231746E49, 0xE600000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      v45 = v72;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v72 + 1) - 8) + 104))(v45, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      v35 = *(v24 + 16);
      v36 = v71;
      v37 = v24;
      v35(v18, v74, v71, v25);
      (v35)(v15, v18, v36);
      v38 = v70;
      if ((*(v70 + 48))(v15, 1, a6) == 1)
      {
        v39 = *(v37 + 8);
        v39(v15, v36);
        _CodingPathNode.path.getter(v77);
        v39(v18, v36);
      }

      else
      {
        (*(v38 + 32))(v11, v15, a6);
        v49 = v38;
        v50 = _CodingPathNode.path.getter(v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_181218E20;
        v52 = v73;
        *(v51 + 56) = a6;
        *(v51 + 64) = v52;
        v53 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
        (*(v49 + 16))(v53, v11, a6);
        v75 = v50;
        specialized Array.append<A>(contentsOf:)(v51);
        (*(v49 + 8))(v11, a6);
        (*(v37 + 8))(v18, v36);
      }

      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      *v55 = MEMORY[0x1E69E7570];
      v75 = 0;
      v76 = 0xE000000000000000;
      v45 = &v75;
      _StringGuts.grow(_:)(43);

      v75 = 0xD000000000000024;
      v76 = 0x80000001814820D0;
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v63 = 0xEC0000007972616ELL;
          v64 = 0x6F69746369642061;
        }

        else if (v28 == 4)
        {
          v63 = 0xE800000000000000;
          v64 = 0x7961727261206E61;
        }

        else
        {
          v63 = 0xE400000000000000;
          v64 = 1819047278;
        }
      }

      else if (v28)
      {
        v63 = 0xE400000000000000;
        v64 = 1819242338;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v64, v63);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8]);
    }

    swift_willThrow();
  }

  return v45;
}

{
  v73 = a7;
  v74 = a5;
  v77 = a4;
  *(&v72 + 1) = a2;
  *&v72 = a1;
  v68 = *v7;
  v70 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v66 - v13;
  v71 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v71);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v27 = &v66 - v26;
  v28 = a3 >> 5;
  if (v28 == 1)
  {
    MEMORY[0x1EEE9AC00](v23);
    v40 = v73;
    *(&v66 - 6) = a6;
    *(&v66 - 5) = v40;
    *(&v66 - 32) = v41;
    *(&v66 - 31) = a3 & 1;
    v42 = v74;
    *(&v66 - 3) = v77;
    *(&v66 - 2) = v42;
    *(&v66 - 1) = v68;
    v43 = *(v7[4] + 24);
    MEMORY[0x1EEE9AC00](v44);
    v45 = (&v66 - 6);
    *(&v66 - 4) = partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFixedWidthInteger<A, B>(from:as:for:_:);
    *(&v66 - 3) = v46;
    v47 = *(&v72 + 1);
    *(&v66 - 2) = v72;
    *(&v66 - 1) = v47;

    os_unfair_lock_lock((v43 + 40));
    v48 = v69;
    closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply((v43 + 16), &v75);
    os_unfair_lock_unlock((v43 + 40));

    if (!v48)
    {
      v45 = v75;
    }
  }

  else
  {
    if (v28 == 5 && v72 == 0 && a3 == 160)
    {
      v29 = v24;
      *(&v72 + 1) = type metadata accessor for DecodingError();
      swift_allocError();
      *&v72 = v30;
      *v30 = MEMORY[0x1E69E77B8];
      v31 = *(v29 + 16);
      v32 = v71;
      v31(v27, v74, v71);
      v31(v21, v27, v32);
      v33 = v70;
      if ((*(v70 + 48))(v21, 1, a6) == 1)
      {
        v34 = *(v29 + 8);
        v34(v21, v32);
        _CodingPathNode.path.getter(v77);
        v34(v27, v32);
      }

      else
      {
        (*(v33 + 32))(v67, v21, a6);
        v57 = v33;
        v58 = _CodingPathNode.path.getter(v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v60 = v73;
        *(inited + 56) = a6;
        *(inited + 64) = v60;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        v62 = v67;
        (*(v57 + 16))(boxed_opaque_existential_0, v67, a6);
        v75 = v58;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v57 + 8))(v62, a6);
        (*(v29 + 8))(v27, v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v75 = 0;
      v76 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x383231746E4955, 0xE700000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      v45 = v72;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v72 + 1) - 8) + 104))(v45, *MEMORY[0x1E69E6B08]);
    }

    else
    {
      v35 = *(v24 + 16);
      v36 = v71;
      v37 = v24;
      v35(v18, v74, v71, v25);
      (v35)(v15, v18, v36);
      v38 = v70;
      if ((*(v70 + 48))(v15, 1, a6) == 1)
      {
        v39 = *(v37 + 8);
        v39(v15, v36);
        _CodingPathNode.path.getter(v77);
        v39(v18, v36);
      }

      else
      {
        (*(v38 + 32))(v11, v15, a6);
        v49 = v38;
        v50 = _CodingPathNode.path.getter(v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_181218E20;
        v52 = v73;
        *(v51 + 56) = a6;
        *(v51 + 64) = v52;
        v53 = __swift_allocate_boxed_opaque_existential_0((v51 + 32));
        (*(v49 + 16))(v53, v11, a6);
        v75 = v50;
        specialized Array.append<A>(contentsOf:)(v51);
        (*(v49 + 8))(v11, a6);
        (*(v37 + 8))(v18, v36);
      }

      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v56 = v55;
      *v55 = MEMORY[0x1E69E77B8];
      v75 = 0;
      v76 = 0xE000000000000000;
      v45 = &v75;
      _StringGuts.grow(_:)(43);

      v75 = 0xD000000000000025;
      v76 = 0x8000000181481FB0;
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v63 = 0xEC0000007972616ELL;
          v64 = 0x6F69746369642061;
        }

        else if (v28 == 4)
        {
          v63 = 0xE800000000000000;
          v64 = 0x7961727261206E61;
        }

        else
        {
          v63 = 0xE400000000000000;
          v64 = 1819047278;
        }
      }

      else if (v28)
      {
        v63 = 0xE400000000000000;
        v64 = 1819242338;
      }

      else
      {
        v63 = 0xE800000000000000;
        v64 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v64, v63);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8]);
    }

    swift_willThrow();
  }

  return v45;
}

uint64_t _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs4Int8V_Tt1g5(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v35[0] = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v8 = a2 >> 16;
  v35[1] = a2;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v11 = HIWORD(a3);
  v36 = a3;
  isNegative_getter = _So9NSDecimala__isNegative_getter(v35);
  LODWORD(v35[0]) = a1;
  WORD2(v35[0]) = v6;
  HIWORD(v35[0]) = v7;
  LOWORD(v35[1]) = a2;
  WORD1(v35[1]) = v8;
  WORD2(v35[1]) = v9;
  HIWORD(v35[1]) = v10;
  LOWORD(v36) = v3;
  HIWORD(v36) = v11;
  if (!_So9NSDecimala__length_getter(v35) && isNegative_getter)
  {
LABEL_28:
    v27 = 0;
    v28 = 1;
    return v27 | (v28 << 8);
  }

  v34 = isNegative_getter;
  v13 = a2;
  LODWORD(v35[0]) = a1;
  v14 = WORD1(a2);
  WORD2(v35[0]) = v6;
  v15 = WORD2(a2);
  HIWORD(v35[0]) = v7;
  LOWORD(v35[1]) = v13;
  WORD1(v35[1]) = v14;
  WORD2(v35[1]) = v15;
  HIWORD(v35[1]) = v10;
  LOWORD(v36) = v3;
  HIWORD(v36) = v11;
  v16 = _So9NSDecimala__length_getter(v35);
  if (v16)
  {
    v17 = v16 - 1;
    if (v16 == 1)
    {
      v21 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        if (v17 + 1 <= 4)
        {
          v20 = v7;
          if (v17 != 1)
          {
            v20 = v13;
            if (v17 != 2)
            {
              v20 = v14;
              if (v17 != 3)
              {
                goto LABEL_49;
              }
            }
          }
        }

        else if (v17 + 1 > 6)
        {
          v20 = v3;
          if (v17 != 6)
          {
            v20 = v11;
            if (v17 != 7)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          v20 = v15;
          if (v17 != 4)
          {
            v20 = v10;
            if (v17 != 5)
            {
              goto LABEL_49;
            }
          }
        }

        if (v18)
        {
          goto LABEL_28;
        }

        v21 = (v19 | v20) << 16;
        v18 = HIWORD(v19) != 0;
        v19 = v21;
        --v17;
      }

      while (v17);
      if (v18)
      {
        goto LABEL_28;
      }
    }

    v22 = v21 | WORD2(a1);
  }

  else
  {
    v22 = 0;
  }

  LODWORD(v35[0]) = a1;
  WORD2(v35[0]) = v6;
  HIWORD(v35[0]) = v7;
  LOWORD(v35[1]) = v13;
  WORD1(v35[1]) = v14;
  WORD2(v35[1]) = v15;
  HIWORD(v35[1]) = v10;
  LOWORD(v36) = v3;
  HIWORD(v36) = v11;
  if ((_So9NSDecimala__exponent_getter(v35) & 0x80000000) == 0)
  {
    LODWORD(v35[0]) = a1;
    WORD2(v35[0]) = v6;
    HIWORD(v35[0]) = v7;
    LOWORD(v35[1]) = v13;
    WORD1(v35[1]) = v14;
    WORD2(v35[1]) = v15;
    HIWORD(v35[1]) = v10;
    LOWORD(v36) = v3;
    HIWORD(v36) = v11;
    v23 = _So9NSDecimala__exponent_getter(v35);
    if ((v23 & 0x80000000) == 0)
    {
      v24 = v23 + 1;
      v25 = v34;
      while (--v24)
      {
        v26 = (v22 * 0xAuLL) >> 64;
        v22 *= 10;
        if (v26)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_47;
  }

  LODWORD(v35[0]) = a1;
  WORD2(v35[0]) = v6;
  HIWORD(v35[0]) = v7;
  LOWORD(v35[1]) = v13;
  WORD1(v35[1]) = v14;
  WORD2(v35[1]) = v15;
  HIWORD(v35[1]) = v10;
  LOWORD(v36) = v3;
  HIWORD(v36) = v11;
  v30 = _So9NSDecimala__exponent_getter(v35);
  if (v30 > 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v25 = v34;
  if (!v30)
  {
LABEL_36:
    v28 = v22 > 0x7F;
    if (v22 < 0x80)
    {
      v32 = -v22;
    }

    else
    {
      LOBYTE(v32) = 0;
    }

    if (v22 <= 0x7F)
    {
      v27 = v22;
    }

    else
    {
      v27 = 0;
    }

    if (v25)
    {
      v27 = v32;
      v28 = v22 >= 0x80;
    }

    return v27 | (v28 << 8);
  }

  if (__CFADD__(v30, -v30 & ~(-v30 >> 31)))
  {
    do
    {
      v22 /= 0xAuLL;
    }

    while (!__CFADD__(v30++, 1));
    goto LABEL_36;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  strcpy(v35, "Invalid index ");
  HIBYTE(v35[1]) = -18;
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v33);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs5Int16V_Tt1g5(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v35[0] = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v8 = a2 >> 16;
  v35[1] = a2;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v11 = HIWORD(a3);
  v36 = a3;
  isNegative_getter = _So9NSDecimala__isNegative_getter(v35);
  LODWORD(v35[0]) = a1;
  WORD2(v35[0]) = v6;
  HIWORD(v35[0]) = v7;
  LOWORD(v35[1]) = a2;
  WORD1(v35[1]) = v8;
  WORD2(v35[1]) = v9;
  HIWORD(v35[1]) = v10;
  LOWORD(v36) = v3;
  HIWORD(v36) = v11;
  if (!_So9NSDecimala__length_getter(v35) && isNegative_getter)
  {
LABEL_28:
    v27 = 0;
    v28 = 1;
    return v27 | (v28 << 16);
  }

  v34 = isNegative_getter;
  v13 = a2;
  LODWORD(v35[0]) = a1;
  v14 = WORD1(a2);
  WORD2(v35[0]) = v6;
  v15 = WORD2(a2);
  HIWORD(v35[0]) = v7;
  LOWORD(v35[1]) = v13;
  WORD1(v35[1]) = v14;
  WORD2(v35[1]) = v15;
  HIWORD(v35[1]) = v10;
  LOWORD(v36) = v3;
  HIWORD(v36) = v11;
  v16 = _So9NSDecimala__length_getter(v35);
  if (v16)
  {
    v17 = v16 - 1;
    if (v16 == 1)
    {
      v21 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        if (v17 + 1 <= 4)
        {
          v20 = v7;
          if (v17 != 1)
          {
            v20 = v13;
            if (v17 != 2)
            {
              v20 = v14;
              if (v17 != 3)
              {
                goto LABEL_49;
              }
            }
          }
        }

        else if (v17 + 1 > 6)
        {
          v20 = v3;
          if (v17 != 6)
          {
            v20 = v11;
            if (v17 != 7)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          v20 = v15;
          if (v17 != 4)
          {
            v20 = v10;
            if (v17 != 5)
            {
              goto LABEL_49;
            }
          }
        }

        if (v18)
        {
          goto LABEL_28;
        }

        v21 = (v19 | v20) << 16;
        v18 = HIWORD(v19) != 0;
        v19 = v21;
        --v17;
      }

      while (v17);
      if (v18)
      {
        goto LABEL_28;
      }
    }

    v22 = v21 | WORD2(a1);
  }

  else
  {
    v22 = 0;
  }

  LODWORD(v35[0]) = a1;
  WORD2(v35[0]) = v6;
  HIWORD(v35[0]) = v7;
  LOWORD(v35[1]) = v13;
  WORD1(v35[1]) = v14;
  WORD2(v35[1]) = v15;
  HIWORD(v35[1]) = v10;
  LOWORD(v36) = v3;
  HIWORD(v36) = v11;
  if ((_So9NSDecimala__exponent_getter(v35) & 0x80000000) == 0)
  {
    LODWORD(v35[0]) = a1;
    WORD2(v35[0]) = v6;
    HIWORD(v35[0]) = v7;
    LOWORD(v35[1]) = v13;
    WORD1(v35[1]) = v14;
    WORD2(v35[1]) = v15;
    HIWORD(v35[1]) = v10;
    LOWORD(v36) = v3;
    HIWORD(v36) = v11;
    v23 = _So9NSDecimala__exponent_getter(v35);
    if ((v23 & 0x80000000) == 0)
    {
      v24 = v23 + 1;
      v25 = v34;
      while (--v24)
      {
        v26 = (v22 * 0xAuLL) >> 64;
        v22 *= 10;
        if (v26)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_47;
  }

  LODWORD(v35[0]) = a1;
  WORD2(v35[0]) = v6;
  HIWORD(v35[0]) = v7;
  LOWORD(v35[1]) = v13;
  WORD1(v35[1]) = v14;
  WORD2(v35[1]) = v15;
  HIWORD(v35[1]) = v10;
  LOWORD(v36) = v3;
  HIWORD(v36) = v11;
  v30 = _So9NSDecimala__exponent_getter(v35);
  if (v30 > 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v25 = v34;
  if (!v30)
  {
LABEL_36:
    v28 = (v22 & 0xFFFFFFFFFFFF8000) != 0;
    if (v22 < 0x8000)
    {
      v32 = -v22;
    }

    else
    {
      LOWORD(v32) = 0;
    }

    if (v22 >> 15)
    {
      v27 = 0;
    }

    else
    {
      v27 = v22;
    }

    if (v25)
    {
      v27 = v32;
      v28 = v22 >= 0x8000;
    }

    return v27 | (v28 << 16);
  }

  if (__CFADD__(v30, -v30 & ~(-v30 >> 31)))
  {
    do
    {
      v22 /= 0xAuLL;
    }

    while (!__CFADD__(v30++, 1));
    goto LABEL_36;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  strcpy(v35, "Invalid index ");
  HIBYTE(v35[1]) = -18;
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v33);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs5Int32V_Tt1g5(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v35[0] = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v8 = a2 >> 16;
  v35[1] = a2;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v11 = HIWORD(a3);
  v36 = a3;
  isNegative_getter = _So9NSDecimala__isNegative_getter(v35);
  LODWORD(v35[0]) = a1;
  WORD2(v35[0]) = v6;
  HIWORD(v35[0]) = v7;
  LOWORD(v35[1]) = a2;
  WORD1(v35[1]) = v8;
  WORD2(v35[1]) = v9;
  HIWORD(v35[1]) = v10;
  LOWORD(v36) = v3;
  HIWORD(v36) = v11;
  if (!_So9NSDecimala__length_getter(v35) && isNegative_getter)
  {
LABEL_28:
    LODWORD(v27) = 0;
    v28 = 1;
LABEL_29:
    LOBYTE(v35[0]) = v28;
    return v27 | (v28 << 32);
  }

  v34 = isNegative_getter;
  v13 = a2;
  LODWORD(v35[0]) = a1;
  v14 = WORD1(a2);
  WORD2(v35[0]) = v6;
  v15 = WORD2(a2);
  HIWORD(v35[0]) = v7;
  LOWORD(v35[1]) = v13;
  WORD1(v35[1]) = v14;
  WORD2(v35[1]) = v15;
  HIWORD(v35[1]) = v10;
  LOWORD(v36) = v3;
  HIWORD(v36) = v11;
  v16 = _So9NSDecimala__length_getter(v35);
  if (v16)
  {
    v17 = v16 - 1;
    if (v16 == 1)
    {
      v21 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        if (v17 + 1 <= 4)
        {
          v20 = v7;
          if (v17 != 1)
          {
            v20 = v13;
            if (v17 != 2)
            {
              v20 = v14;
              if (v17 != 3)
              {
                goto LABEL_49;
              }
            }
          }
        }

        else if (v17 + 1 > 6)
        {
          v20 = v3;
          if (v17 != 6)
          {
            v20 = v11;
            if (v17 != 7)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          v20 = v15;
          if (v17 != 4)
          {
            v20 = v10;
            if (v17 != 5)
            {
              goto LABEL_49;
            }
          }
        }

        if (v18)
        {
          goto LABEL_28;
        }

        v21 = (v19 | v20) << 16;
        v18 = HIWORD(v19) != 0;
        v19 = v21;
        --v17;
      }

      while (v17);
      if (v18)
      {
        goto LABEL_28;
      }
    }

    v22 = v21 | WORD2(a1);
  }

  else
  {
    v22 = 0;
  }

  LODWORD(v35[0]) = a1;
  WORD2(v35[0]) = v6;
  HIWORD(v35[0]) = v7;
  LOWORD(v35[1]) = v13;
  WORD1(v35[1]) = v14;
  WORD2(v35[1]) = v15;
  HIWORD(v35[1]) = v10;
  LOWORD(v36) = v3;
  HIWORD(v36) = v11;
  if ((_So9NSDecimala__exponent_getter(v35) & 0x80000000) == 0)
  {
    LODWORD(v35[0]) = a1;
    WORD2(v35[0]) = v6;
    HIWORD(v35[0]) = v7;
    LOWORD(v35[1]) = v13;
    WORD1(v35[1]) = v14;
    WORD2(v35[1]) = v15;
    HIWORD(v35[1]) = v10;
    LOWORD(v36) = v3;
    HIWORD(v36) = v11;
    v23 = _So9NSDecimala__exponent_getter(v35);
    if ((v23 & 0x80000000) == 0)
    {
      v24 = v23 + 1;
      v25 = v34;
      while (--v24)
      {
        v26 = (v22 * 0xAuLL) >> 64;
        v22 *= 10;
        if (v26)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_47;
  }

  LODWORD(v35[0]) = a1;
  WORD2(v35[0]) = v6;
  HIWORD(v35[0]) = v7;
  LOWORD(v35[1]) = v13;
  WORD1(v35[1]) = v14;
  WORD2(v35[1]) = v15;
  HIWORD(v35[1]) = v10;
  LOWORD(v36) = v3;
  HIWORD(v36) = v11;
  v30 = _So9NSDecimala__exponent_getter(v35);
  if (v30 > 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v25 = v34;
  if (!v30)
  {
LABEL_36:
    v28 = (v22 & 0xFFFFFFFF80000000) != 0;
    if (v22 >> 31)
    {
      LODWORD(v27) = 0;
    }

    else
    {
      v27 = -v22;
    }

    if (v22 >> 31)
    {
      v32 = 0;
    }

    else
    {
      v32 = v22;
    }

    if (!v25)
    {
      LODWORD(v27) = v32;
    }

    goto LABEL_29;
  }

  if (__CFADD__(v30, -v30 & ~(-v30 >> 31)))
  {
    do
    {
      v22 /= 0xAuLL;
    }

    while (!__CFADD__(v30++, 1));
    goto LABEL_36;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  strcpy(v35, "Invalid index ");
  HIBYTE(v35[1]) = -18;
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v33);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCSi_Tt1g5Tm(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v31[0] = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v8 = a2 >> 16;
  v31[1] = a2;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v11 = HIWORD(a3);
  v32 = a3;
  isNegative_getter = _So9NSDecimala__isNegative_getter(v31);
  LODWORD(v31[0]) = a1;
  WORD2(v31[0]) = v6;
  HIWORD(v31[0]) = v7;
  LOWORD(v31[1]) = a2;
  WORD1(v31[1]) = v8;
  WORD2(v31[1]) = v9;
  HIWORD(v31[1]) = v10;
  LOWORD(v32) = v3;
  HIWORD(v32) = v11;
  if (!_So9NSDecimala__length_getter(v31) && isNegative_getter)
  {
    return 0;
  }

  v12 = a2;
  LODWORD(v31[0]) = a1;
  v13 = WORD1(a2);
  WORD2(v31[0]) = v6;
  v14 = WORD2(a2);
  HIWORD(v31[0]) = v7;
  LOWORD(v31[1]) = v12;
  WORD1(v31[1]) = v13;
  WORD2(v31[1]) = v14;
  HIWORD(v31[1]) = v10;
  LOWORD(v32) = v3;
  HIWORD(v32) = v11;
  v15 = _So9NSDecimala__length_getter(v31);
  if (v15)
  {
    v16 = v15 - 1;
    if (v15 == 1)
    {
      v20 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      do
      {
        if (v16 + 1 <= 4)
        {
          v19 = v7;
          if (v16 != 1)
          {
            v19 = v12;
            if (v16 != 2)
            {
              v19 = v13;
              if (v16 != 3)
              {
                goto LABEL_45;
              }
            }
          }
        }

        else if (v16 + 1 > 6)
        {
          v19 = v3;
          if (v16 != 6)
          {
            v19 = v11;
            if (v16 != 7)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          v19 = v14;
          if (v16 != 4)
          {
            v19 = v10;
            if (v16 != 5)
            {
              goto LABEL_45;
            }
          }
        }

        if (v17)
        {
          return 0;
        }

        v20 = (v18 | v19) << 16;
        v17 = HIWORD(v18) != 0;
        v18 = v20;
        --v16;
      }

      while (v16);
      if (v17)
      {
        return 0;
      }
    }

    v21 = v20 | WORD2(a1);
  }

  else
  {
    v21 = 0;
  }

  LODWORD(v31[0]) = a1;
  WORD2(v31[0]) = v6;
  HIWORD(v31[0]) = v7;
  LOWORD(v31[1]) = v12;
  WORD1(v31[1]) = v13;
  WORD2(v31[1]) = v14;
  HIWORD(v31[1]) = v10;
  LOWORD(v32) = v3;
  HIWORD(v32) = v11;
  if ((_So9NSDecimala__exponent_getter(v31) & 0x80000000) == 0)
  {
    LODWORD(v31[0]) = a1;
    WORD2(v31[0]) = v6;
    HIWORD(v31[0]) = v7;
    LOWORD(v31[1]) = v12;
    WORD1(v31[1]) = v13;
    WORD2(v31[1]) = v14;
    HIWORD(v31[1]) = v10;
    LOWORD(v32) = v3;
    HIWORD(v32) = v11;
    v22 = _So9NSDecimala__exponent_getter(v31);
    if ((v22 & 0x80000000) == 0)
    {
      v23 = v22 + 1;
      result = v21;
      while (--v23)
      {
        v25 = (result * 0xAuLL) >> 64;
        result *= 10;
        if (v25)
        {
          return 0;
        }
      }

LABEL_35:
      if (isNegative_getter)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          return -result;
        }
      }

      else if ((result & 0x8000000000000000) == 0)
      {
        return result;
      }

      return 0;
    }

    __break(1u);
    goto LABEL_43;
  }

  LODWORD(v31[0]) = a1;
  WORD2(v31[0]) = v6;
  HIWORD(v31[0]) = v7;
  LOWORD(v31[1]) = v12;
  WORD1(v31[1]) = v13;
  WORD2(v31[1]) = v14;
  HIWORD(v31[1]) = v10;
  LOWORD(v32) = v3;
  HIWORD(v32) = v11;
  v26 = _So9NSDecimala__exponent_getter(v31);
  if (v26 > 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v27 = v26;
  result = v21;
  if (!v27)
  {
    goto LABEL_35;
  }

  if (__CFADD__(v27, -v27 & ~(-v27 >> 31)))
  {
    do
    {
      result /= 0xAuLL;
    }

    while (!__CFADD__(v27++, 1));
    goto LABEL_35;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  strcpy(v31, "Invalid index ");
  HIBYTE(v31[1]) = -18;
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v29);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs6Int128V_Tt1g5(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v32[0] = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v8 = a2 >> 16;
  v32[1] = a2;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v11 = HIWORD(a3);
  v33 = a3;
  isNegative_getter = _So9NSDecimala__isNegative_getter(v32);
  LODWORD(v32[0]) = a1;
  WORD2(v32[0]) = v6;
  HIWORD(v32[0]) = v7;
  LOWORD(v32[1]) = a2;
  WORD1(v32[1]) = v8;
  WORD2(v32[1]) = v9;
  HIWORD(v32[1]) = v10;
  LOWORD(v33) = v3;
  HIWORD(v33) = v11;
  if (!_So9NSDecimala__length_getter(v32) && isNegative_getter)
  {
    return 0;
  }

  v31 = isNegative_getter;
  v13 = a2;
  LODWORD(v32[0]) = a1;
  v14 = WORD1(a2);
  WORD2(v32[0]) = v6;
  v15 = WORD2(a2);
  HIWORD(v32[0]) = v7;
  LOWORD(v32[1]) = v13;
  WORD1(v32[1]) = v14;
  WORD2(v32[1]) = v15;
  HIWORD(v32[1]) = v10;
  LOWORD(v33) = v3;
  HIWORD(v33) = v11;
  v16 = _So9NSDecimala__length_getter(v32);
  if (v16)
  {
    v17 = v16 - 1;
    if (v16 == 1)
    {
      v21 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        if (v17 + 1 <= 4)
        {
          v20 = v7;
          if (v17 != 1)
          {
            v20 = v13;
            if (v17 != 2)
            {
              v20 = v14;
              if (v17 != 3)
              {
                goto LABEL_42;
              }
            }
          }
        }

        else if (v17 + 1 > 6)
        {
          v20 = v3;
          if (v17 != 6)
          {
            v20 = v11;
            if (v17 != 7)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v20 = v15;
          if (v17 != 4)
          {
            v20 = v10;
            if (v17 != 5)
            {
              goto LABEL_42;
            }
          }
        }

        if (v18)
        {
          return 0;
        }

        v21 = (v19 | v20) << 16;
        v18 = HIWORD(v19) != 0;
        v19 = v21;
        --v17;
      }

      while (v17);
      if (v18)
      {
        return 0;
      }
    }

    v22 = v21 | WORD2(a1);
  }

  else
  {
    v22 = 0;
  }

  LODWORD(v32[0]) = a1;
  WORD2(v32[0]) = v6;
  HIWORD(v32[0]) = v7;
  LOWORD(v32[1]) = v13;
  WORD1(v32[1]) = v14;
  WORD2(v32[1]) = v15;
  HIWORD(v32[1]) = v10;
  LOWORD(v33) = v3;
  HIWORD(v33) = v11;
  if ((_So9NSDecimala__exponent_getter(v32) & 0x80000000) == 0)
  {
    LODWORD(v32[0]) = a1;
    WORD2(v32[0]) = v6;
    HIWORD(v32[0]) = v7;
    LOWORD(v32[1]) = v13;
    WORD1(v32[1]) = v14;
    WORD2(v32[1]) = v15;
    HIWORD(v32[1]) = v10;
    LOWORD(v33) = v3;
    HIWORD(v33) = v11;
    v23 = _So9NSDecimala__exponent_getter(v32);
    if ((v23 & 0x80000000) == 0)
    {
      v24 = v23 + 1;
      v25 = v31;
      while (--v24)
      {
        v26 = (v22 * 0xAuLL) >> 64;
        v22 *= 10;
        if (v26)
        {
          return 0;
        }
      }

      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_40;
  }

  LODWORD(v32[0]) = a1;
  WORD2(v32[0]) = v6;
  HIWORD(v32[0]) = v7;
  LOWORD(v32[1]) = v13;
  WORD1(v32[1]) = v14;
  WORD2(v32[1]) = v15;
  HIWORD(v32[1]) = v10;
  LOWORD(v33) = v3;
  HIWORD(v33) = v11;
  v28 = _So9NSDecimala__exponent_getter(v32);
  if (v28 > 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v25 = v31;
  if (!v28)
  {
LABEL_35:
    if (v25)
    {
      return -v22;
    }

    else
    {
      return v22;
    }
  }

  if (__CFADD__(v28, -v28 & ~(-v28 >> 31)))
  {
    do
    {
      v22 /= 0xAuLL;
    }

    while (!__CFADD__(v28++, 1));
    goto LABEL_35;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  strcpy(v32, "Invalid index ");
  HIBYTE(v32[1]) = -18;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v30);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs5UInt8V_Tt1g5(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v29[0] = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v29[1] = a2;
  v8 = HIWORD(a2);
  v9 = HIWORD(a3);
  v30 = a3;
  if (_So9NSDecimala__isNegative_getter(v29))
  {
LABEL_2:
    v10 = 0;
    v11 = 1;
    return v10 | (v11 << 8);
  }

  v13 = a2;
  LODWORD(v29[0]) = a1;
  v14 = WORD1(a2);
  WORD2(v29[0]) = v6;
  v15 = WORD2(a2);
  HIWORD(v29[0]) = v7;
  LOWORD(v29[1]) = v13;
  WORD1(v29[1]) = v14;
  WORD2(v29[1]) = v15;
  HIWORD(v29[1]) = v8;
  LOWORD(v30) = v3;
  HIWORD(v30) = v9;
  v16 = _So9NSDecimala__length_getter(v29);
  if (v16)
  {
    v17 = v16 - 1;
    if (v16 == 1)
    {
      v21 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        if (v17 + 1 <= 4)
        {
          v20 = v7;
          if (v17 != 1)
          {
            v20 = v13;
            if (v17 != 2)
            {
              v20 = v14;
              if (v17 != 3)
              {
                goto LABEL_43;
              }
            }
          }
        }

        else if (v17 + 1 > 6)
        {
          v20 = v3;
          if (v17 != 6)
          {
            v20 = v9;
            if (v17 != 7)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
          v20 = v15;
          if (v17 != 4)
          {
            v20 = v8;
            if (v17 != 5)
            {
              goto LABEL_43;
            }
          }
        }

        if (v18)
        {
          goto LABEL_2;
        }

        v21 = (v19 | v20) << 16;
        v18 = HIWORD(v19) != 0;
        v19 = v21;
        --v17;
      }

      while (v17);
      if (v18)
      {
        goto LABEL_2;
      }
    }

    v22 = v21 | WORD2(a1);
  }

  else
  {
    v22 = 0;
  }

  LODWORD(v29[0]) = a1;
  WORD2(v29[0]) = v6;
  HIWORD(v29[0]) = v7;
  LOWORD(v29[1]) = v13;
  WORD1(v29[1]) = v14;
  WORD2(v29[1]) = v15;
  HIWORD(v29[1]) = v8;
  LOWORD(v30) = v3;
  HIWORD(v30) = v9;
  if ((_So9NSDecimala__exponent_getter(v29) & 0x80000000) == 0)
  {
    LODWORD(v29[0]) = a1;
    WORD2(v29[0]) = v6;
    HIWORD(v29[0]) = v7;
    LOWORD(v29[1]) = v13;
    WORD1(v29[1]) = v14;
    WORD2(v29[1]) = v15;
    HIWORD(v29[1]) = v8;
    LOWORD(v30) = v3;
    HIWORD(v30) = v9;
    v23 = _So9NSDecimala__exponent_getter(v29);
    if ((v23 & 0x80000000) == 0)
    {
      v24 = v23 + 1;
      while (--v24)
      {
        v25 = (v22 * 0xAuLL) >> 64;
        v22 *= 10;
        if (v25)
        {
          goto LABEL_2;
        }
      }

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_41;
  }

  LODWORD(v29[0]) = a1;
  WORD2(v29[0]) = v6;
  HIWORD(v29[0]) = v7;
  LOWORD(v29[1]) = v13;
  WORD1(v29[1]) = v14;
  WORD2(v29[1]) = v15;
  HIWORD(v29[1]) = v8;
  LOWORD(v30) = v3;
  HIWORD(v30) = v9;
  v26 = _So9NSDecimala__exponent_getter(v29);
  if (v26 > 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v26)
  {
LABEL_36:
    v11 = v22 > 0xFF;
    if (v22 <= 0xFF)
    {
      v10 = v22;
    }

    else
    {
      v10 = 0;
    }

    return v10 | (v11 << 8);
  }

  if (__CFADD__(v26, -v26 & ~(-v26 >> 31)))
  {
    do
    {
      v22 /= 0xAuLL;
    }

    while (!__CFADD__(v26++, 1));
    goto LABEL_36;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  strcpy(v29, "Invalid index ");
  HIBYTE(v29[1]) = -18;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v28);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs6UInt16V_Tt1g5(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v29[0] = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v29[1] = a2;
  v8 = HIWORD(a2);
  v9 = HIWORD(a3);
  v30 = a3;
  if (_So9NSDecimala__isNegative_getter(v29))
  {
LABEL_2:
    v10 = 0;
    v11 = 1;
    return v10 | (v11 << 16);
  }

  v13 = a2;
  LODWORD(v29[0]) = a1;
  v14 = WORD1(a2);
  WORD2(v29[0]) = v6;
  v15 = WORD2(a2);
  HIWORD(v29[0]) = v7;
  LOWORD(v29[1]) = v13;
  WORD1(v29[1]) = v14;
  WORD2(v29[1]) = v15;
  HIWORD(v29[1]) = v8;
  LOWORD(v30) = v3;
  HIWORD(v30) = v9;
  v16 = _So9NSDecimala__length_getter(v29);
  if (v16)
  {
    v17 = v16 - 1;
    if (v16 == 1)
    {
      v21 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        if (v17 + 1 <= 4)
        {
          v20 = v7;
          if (v17 != 1)
          {
            v20 = v13;
            if (v17 != 2)
            {
              v20 = v14;
              if (v17 != 3)
              {
                goto LABEL_43;
              }
            }
          }
        }

        else if (v17 + 1 > 6)
        {
          v20 = v3;
          if (v17 != 6)
          {
            v20 = v9;
            if (v17 != 7)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
          v20 = v15;
          if (v17 != 4)
          {
            v20 = v8;
            if (v17 != 5)
            {
              goto LABEL_43;
            }
          }
        }

        if (v18)
        {
          goto LABEL_2;
        }

        v21 = (v19 | v20) << 16;
        v18 = HIWORD(v19) != 0;
        v19 = v21;
        --v17;
      }

      while (v17);
      if (v18)
      {
        goto LABEL_2;
      }
    }

    v22 = v21 | WORD2(a1);
  }

  else
  {
    v22 = 0;
  }

  LODWORD(v29[0]) = a1;
  WORD2(v29[0]) = v6;
  HIWORD(v29[0]) = v7;
  LOWORD(v29[1]) = v13;
  WORD1(v29[1]) = v14;
  WORD2(v29[1]) = v15;
  HIWORD(v29[1]) = v8;
  LOWORD(v30) = v3;
  HIWORD(v30) = v9;
  if ((_So9NSDecimala__exponent_getter(v29) & 0x80000000) == 0)
  {
    LODWORD(v29[0]) = a1;
    WORD2(v29[0]) = v6;
    HIWORD(v29[0]) = v7;
    LOWORD(v29[1]) = v13;
    WORD1(v29[1]) = v14;
    WORD2(v29[1]) = v15;
    HIWORD(v29[1]) = v8;
    LOWORD(v30) = v3;
    HIWORD(v30) = v9;
    v23 = _So9NSDecimala__exponent_getter(v29);
    if ((v23 & 0x80000000) == 0)
    {
      v24 = v23 + 1;
      while (--v24)
      {
        v25 = (v22 * 0xAuLL) >> 64;
        v22 *= 10;
        if (v25)
        {
          goto LABEL_2;
        }
      }

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_41;
  }

  LODWORD(v29[0]) = a1;
  WORD2(v29[0]) = v6;
  HIWORD(v29[0]) = v7;
  LOWORD(v29[1]) = v13;
  WORD1(v29[1]) = v14;
  WORD2(v29[1]) = v15;
  HIWORD(v29[1]) = v8;
  LOWORD(v30) = v3;
  HIWORD(v30) = v9;
  v26 = _So9NSDecimala__exponent_getter(v29);
  if (v26 > 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v26)
  {
LABEL_36:
    v11 = v22 >> 16 != 0;
    v10 = v22;
    if (v22 >> 16)
    {
      v10 = 0;
    }

    return v10 | (v11 << 16);
  }

  if (__CFADD__(v26, -v26 & ~(-v26 >> 31)))
  {
    do
    {
      v22 /= 0xAuLL;
    }

    while (!__CFADD__(v26++, 1));
    goto LABEL_36;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  strcpy(v29, "Invalid index ");
  HIBYTE(v29[1]) = -18;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v28);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCs6UInt32V_Tt1g5(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v29[0] = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v29[1] = a2;
  v8 = HIWORD(a2);
  v9 = HIWORD(a3);
  v30 = a3;
  if (_So9NSDecimala__isNegative_getter(v29))
  {
LABEL_2:
    v10 = 0;
    v11 = 1;
LABEL_3:
    LOBYTE(v29[0]) = v11;
    return v10 | (v11 << 32);
  }

  v13 = a2;
  LODWORD(v29[0]) = a1;
  v14 = WORD1(a2);
  WORD2(v29[0]) = v6;
  v15 = WORD2(a2);
  HIWORD(v29[0]) = v7;
  LOWORD(v29[1]) = v13;
  WORD1(v29[1]) = v14;
  WORD2(v29[1]) = v15;
  HIWORD(v29[1]) = v8;
  LOWORD(v30) = v3;
  HIWORD(v30) = v9;
  v16 = _So9NSDecimala__length_getter(v29);
  if (v16)
  {
    v17 = v16 - 1;
    if (v16 == 1)
    {
      v21 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        if (v17 + 1 <= 4)
        {
          v20 = v7;
          if (v17 != 1)
          {
            v20 = v13;
            if (v17 != 2)
            {
              v20 = v14;
              if (v17 != 3)
              {
                goto LABEL_43;
              }
            }
          }
        }

        else if (v17 + 1 > 6)
        {
          v20 = v3;
          if (v17 != 6)
          {
            v20 = v9;
            if (v17 != 7)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
          v20 = v15;
          if (v17 != 4)
          {
            v20 = v8;
            if (v17 != 5)
            {
              goto LABEL_43;
            }
          }
        }

        if (v18)
        {
          goto LABEL_2;
        }

        v21 = (v19 | v20) << 16;
        v18 = HIWORD(v19) != 0;
        v19 = v21;
        --v17;
      }

      while (v17);
      if (v18)
      {
        goto LABEL_2;
      }
    }

    v22 = v21 | WORD2(a1);
  }

  else
  {
    v22 = 0;
  }

  LODWORD(v29[0]) = a1;
  WORD2(v29[0]) = v6;
  HIWORD(v29[0]) = v7;
  LOWORD(v29[1]) = v13;
  WORD1(v29[1]) = v14;
  WORD2(v29[1]) = v15;
  HIWORD(v29[1]) = v8;
  LOWORD(v30) = v3;
  HIWORD(v30) = v9;
  if ((_So9NSDecimala__exponent_getter(v29) & 0x80000000) == 0)
  {
    LODWORD(v29[0]) = a1;
    WORD2(v29[0]) = v6;
    HIWORD(v29[0]) = v7;
    LOWORD(v29[1]) = v13;
    WORD1(v29[1]) = v14;
    WORD2(v29[1]) = v15;
    HIWORD(v29[1]) = v8;
    LOWORD(v30) = v3;
    HIWORD(v30) = v9;
    v23 = _So9NSDecimala__exponent_getter(v29);
    if ((v23 & 0x80000000) == 0)
    {
      v24 = v23 + 1;
      while (--v24)
      {
        v25 = (v22 * 0xAuLL) >> 64;
        v22 *= 10;
        if (v25)
        {
          goto LABEL_2;
        }
      }

      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_41;
  }

  LODWORD(v29[0]) = a1;
  WORD2(v29[0]) = v6;
  HIWORD(v29[0]) = v7;
  LOWORD(v29[1]) = v13;
  WORD1(v29[1]) = v14;
  WORD2(v29[1]) = v15;
  HIWORD(v29[1]) = v8;
  LOWORD(v30) = v3;
  HIWORD(v30) = v9;
  v26 = _So9NSDecimala__exponent_getter(v29);
  if (v26 > 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v26)
  {
LABEL_36:
    v11 = HIDWORD(v22) != 0;
    v10 = v22;
    if (HIDWORD(v22))
    {
      v10 = 0;
    }

    goto LABEL_3;
  }

  if (__CFADD__(v26, -v26 & ~(-v26 >> 31)))
  {
    do
    {
      v22 /= 0xAuLL;
    }

    while (!__CFADD__(v26++, 1));
    goto LABEL_36;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  strcpy(v29, "Invalid index ");
  HIBYTE(v29[1]) = -18;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v28);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _ss17FixedWidthIntegerP10FoundationEyxSgSo9NSDecimalacfCSu_Tt1g5Tm(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v28[0] = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v28[1] = a2;
  v8 = HIWORD(a2);
  v9 = HIWORD(a3);
  v29 = a3;
  if (_So9NSDecimala__isNegative_getter(v28))
  {
    return 0;
  }

  v11 = a2;
  LODWORD(v28[0]) = a1;
  v12 = WORD1(a2);
  WORD2(v28[0]) = v6;
  v13 = WORD2(a2);
  HIWORD(v28[0]) = v7;
  LOWORD(v28[1]) = v11;
  WORD1(v28[1]) = v12;
  WORD2(v28[1]) = v13;
  HIWORD(v28[1]) = v8;
  LOWORD(v29) = v3;
  HIWORD(v29) = v9;
  v14 = _So9NSDecimala__length_getter(v28);
  if (v14)
  {
    v15 = v14 - 1;
    if (v14 == 1)
    {
      v19 = 0;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      do
      {
        if (v15 + 1 <= 4)
        {
          v18 = v7;
          if (v15 != 1)
          {
            v18 = v11;
            if (v15 != 2)
            {
              v18 = v12;
              if (v15 != 3)
              {
                goto LABEL_42;
              }
            }
          }
        }

        else if (v15 + 1 > 6)
        {
          v18 = v3;
          if (v15 != 6)
          {
            v18 = v9;
            if (v15 != 7)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v18 = v13;
          if (v15 != 4)
          {
            v18 = v8;
            if (v15 != 5)
            {
              goto LABEL_42;
            }
          }
        }

        if (v16)
        {
          return 0;
        }

        v19 = (v17 | v18) << 16;
        v16 = HIWORD(v17) != 0;
        v17 = v19;
        --v15;
      }

      while (v15);
      if (v16)
      {
        return 0;
      }
    }

    v20 = v19 | WORD2(a1);
  }

  else
  {
    v20 = 0;
  }

  LODWORD(v28[0]) = a1;
  WORD2(v28[0]) = v6;
  HIWORD(v28[0]) = v7;
  LOWORD(v28[1]) = v11;
  WORD1(v28[1]) = v12;
  WORD2(v28[1]) = v13;
  HIWORD(v28[1]) = v8;
  LOWORD(v29) = v3;
  HIWORD(v29) = v9;
  if ((_So9NSDecimala__exponent_getter(v28) & 0x80000000) != 0)
  {
    LODWORD(v28[0]) = a1;
    WORD2(v28[0]) = v6;
    HIWORD(v28[0]) = v7;
    LOWORD(v28[1]) = v11;
    WORD1(v28[1]) = v12;
    WORD2(v28[1]) = v13;
    HIWORD(v28[1]) = v8;
    LOWORD(v29) = v3;
    HIWORD(v29) = v9;
    v24 = _So9NSDecimala__exponent_getter(v28);
    if (v24 <= 0)
    {
      v25 = v24;
      result = v20;
      if (!v25)
      {
        return result;
      }

      if (__CFADD__(v25, -v25 & ~(-v25 >> 31)))
      {
        do
        {
          result /= 0xAuLL;
        }

        while (!__CFADD__(v25++, 1));
        return result;
      }

      goto LABEL_41;
    }
  }

  else
  {
    LODWORD(v28[0]) = a1;
    WORD2(v28[0]) = v6;
    HIWORD(v28[0]) = v7;
    LOWORD(v28[1]) = v11;
    WORD1(v28[1]) = v12;
    WORD2(v28[1]) = v13;
    HIWORD(v28[1]) = v8;
    LOWORD(v29) = v3;
    HIWORD(v29) = v9;
    v21 = _So9NSDecimala__exponent_getter(v28);
    if ((v21 & 0x80000000) == 0)
    {
      v22 = v21 + 1;
      result = v20;
      while (--v22)
      {
        v23 = (result * 0xAuLL) >> 64;
        result *= 10;
        if (v23)
        {
          return 0;
        }
      }

      return result;
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  strcpy(v28, "Invalid index ");
  HIBYTE(v28[1]) = -18;
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v27);

  MEMORY[0x1865CB0E0](0x616D5F20726F6620, 0xEE0061737369746ELL);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}