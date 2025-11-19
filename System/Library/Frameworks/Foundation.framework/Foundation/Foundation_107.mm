void *destructiveInjectEnumTag for BPlistMap.Value(void *result, uint64_t a2)
{
  if (a2 < 9)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 9)) | 0x9000000000000000;
  }

  return result;
}

void parsePlistObject(_:requireObject:depth:)(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 >= 0x201)
  {
    _StringGuts.grow(_:)(49);

    v6 = a1[3];
    specialized lineNumberStrings(_:)(*a1, a1[1], a1[2]);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v7);

    lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
    v8 = swift_allocError();
    *v9 = 0xD00000000000002FLL;
    v9[1] = 0x8000000181484B80;
    v10 = v6;
LABEL_3:

    a1[3] = v8;
LABEL_4:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  if ((advanceToNonSpace(_:)(a1) & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_4;
    }

    lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
    v8 = swift_allocError();
    *v19 = 0xD000000000000022;
    v19[1] = 0x8000000181484B30;
    v10 = a1[3];
    goto LABEL_3;
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = specialized _ParseInfo.currChar.getter(*a1, v14, a1[2]);
  _ParseInfo.advance()();
  if (v15 > 0x27u)
  {
    switch(v15)
    {
      case '(':
        v22 = parsePlistArray(_:depth:)(a1, a3);
        if (!v22)
        {
          goto LABEL_4;
        }

        v17 = v22;
        v18 = &_sSayypGMd;
LABEL_20:
        *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v18);
        *a4 = v17;
        return;
      case '<':
        v20 = parsePlistData(_:)(a1);
        if (v21 >> 60 == 15)
        {
          goto LABEL_4;
        }

        v23 = &type metadata for Data;
        goto LABEL_29;
      case '{':
        v16 = parsePlistDict(_:depth:)(a1);
        if (!v16)
        {
          goto LABEL_4;
        }

        v17 = v16;
        v18 = &_sSDySSypGMd;
        goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (v15 != 34 && v15 != 39)
  {
LABEL_23:
    if ((v15 - 58) <= 0xFFF5u && ((v15 & 0xFFDF) - 91) <= 0xFFE5u && (v15 - 36 > 0x3B || ((1 << (v15 - 36)) & 0x800000000400E01) == 0))
    {
      _ParseInfo.retreat()();
      if ((a2 & 1) == 0)
      {
        goto LABEL_4;
      }

      _StringGuts.grow(_:)(38);

      lazy protocol witness table accessor for type UInt16 and conformance UInt16();
      v24 = String.init<A>(_:radix:uppercase:)();
      MEMORY[0x1865CB0E0](v24);

      MEMORY[0x1865CB0E0](0x6E696C2074612027, 0xEA00000000002065);
      v25 = a1[3];
      specialized lineNumberStrings(_:)(v13, v14, a1[2]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v26);

      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v8 = swift_allocError();
      *v27 = 0xD000000000000018;
      v27[1] = 0x8000000181484B60;
      v10 = v25;
      goto LABEL_3;
    }

    _ParseInfo.retreat()();
    v20 = parseUnquotedPlistString(_:)(a1);
    if (!v21)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  v20 = parseQuotedPlistString(_:quote:)(a1, v15);
  if (!v21)
  {
    goto LABEL_4;
  }

LABEL_28:
  v23 = MEMORY[0x1E69E6158];
LABEL_29:
  *(a4 + 24) = v23;
  *a4 = v20;
  *(a4 + 8) = v21;
}

BOOL depthIsValid(_:depth:)(uint64_t *a1, unsigned int a2)
{
  if (a2 >= 0x201)
  {
    _StringGuts.grow(_:)(49);

    v4 = a1[3];
    specialized lineNumberStrings(_:)(*a1, a1[1], a1[2]);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v5);

    lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
    v6 = swift_allocError();
    *v7 = 0xD00000000000002FLL;
    v7[1] = 0x8000000181484B80;

    a1[3] = v6;
  }

  return a2 < 0x201;
}

uint64_t *parsePlistArray(_:depth:)(uint64_t *result, int a2)
{
  v2 = (a2 + 1);
  if (a2 == -1)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    parsePlistObject(_:requireObject:depth:)(result, 0, v2, &v16);
    if (v17)
    {
      v4 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        outlined init with take of Any(&v16, v18);
        outlined init with copy of Any(v18, &v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        if (v6 >= v5 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
        }

        *(v4 + 2) = v6 + 1;
        outlined init with take of Any(&v16, &v4[32 * v6 + 32]);
        if ((advanceToNonSpace(_:)(v3) & 1) == 0)
        {

          *&v16 = 0;
          *(&v16 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(33);

          *&v16 = 0xD00000000000001FLL;
          *(&v16 + 1) = 0x80000001814849C0;
          v7 = v3[3];
          specialized lineNumberStrings(_:)(*v3, v3[1], v3[2]);
          v8 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v8);

          v9 = v16;
          lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
          v10 = swift_allocError();
          *v11 = v9;
          __swift_destroy_boxed_opaque_existential_1(v18);
          goto LABEL_20;
        }

        if (specialized _ParseInfo.currChar.getter(*v3, v3[1], v3[2]) != 44)
        {
          break;
        }

        _ParseInfo.advance()();
        __swift_destroy_boxed_opaque_existential_1(v18);
        parsePlistObject(_:requireObject:depth:)(v3, 0, v2, &v16);
        if (!v17)
        {
          goto LABEL_13;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
LABEL_13:
      outlined destroy of Any?(&v16);
    }

    if ((advanceToNonSpace(_:)(v3) & 1) != 0 && (v12 = v3[3], specialized _ParseInfo.currChar.getter(*v3, v3[1], v3[2]) == 41))
    {

      v3[3] = 0;
      _ParseInfo.advance()();
    }

    else
    {

      *&v18[0] = 0;
      *(&v18[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      *&v18[0] = 0xD00000000000002BLL;
      *(&v18[0] + 1) = 0x8000000181484990;
      v7 = v3[3];
      *&v16 = specialized lineNumberStrings(_:)(*v3, v3[1], v3[2]);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v13);

      v14 = v18[0];
      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v10 = swift_allocError();
      *v15 = v14;
LABEL_20:

      v4 = 0;
      v3[3] = v10;
    }

    return v4;
  }

  return result;
}

uint64_t parsePlistData(_:)(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v35 = xmmword_181234410;
  v2 = getDataBytes(_:bytes:)(a1, v34, 400);
  if (v2 >= 1)
  {
    v3 = lazy protocol witness table accessor for type Slice<UnsafeMutableBufferPointer<UInt8>> and conformance <> Slice<A>();
    do
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySrys5UInt8VGGMd);
      v32 = v4;
      v33 = v3;
      v5 = swift_allocObject();
      v30 = v5;
      v5[2] = 0;
      v5[3] = v2;
      v5[4] = v34;
      v5[5] = 400;
      v6 = __swift_project_boxed_opaque_existential_1(&v30, v4);
      v7 = v6[2];
      if (v7)
      {
        v8 = (v7 + v6[1]);
      }

      else
      {
        v8 = 0;
      }

      if (v7)
      {
        v9 = (v7 + *v6);
      }

      else
      {
        v9 = 0;
      }

      Data._Representation.append(contentsOf:)(v9, v8);
      __swift_destroy_boxed_opaque_existential_1(&v30);
      v2 = getDataBytes(_:bytes:)(a1, v34, 400);
    }

    while (v2 > 0);
  }

  if (v2 == -2)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x1865CB0E0](0xD000000000000023, 0x8000000181484A10);
    v10 = *(a1 + 24);
    specialized lineNumberStrings(_:)(*a1, *(a1 + 8), *(a1 + 16));
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v11);

    v12 = 0x6E6576656E75203BLL;
    v13 = 0xEF6874676E656C20;
LABEL_20:
    MEMORY[0x1865CB0E0](v12, v13);
    v25 = v30;
    v26 = v31;
    lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
    v27 = swift_allocError();
    *v28 = v25;
    v28[1] = v26;

    v18 = 0;
    *(a1 + 24) = v27;
    goto LABEL_21;
  }

  if (v2 < 0)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v30 = 0xD000000000000023;
    v31 = 0x8000000181484A10;
    v10 = *(a1 + 24);
    specialized lineNumberStrings(_:)(*a1, *(a1 + 8), *(a1 + 16));
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v24);

    v12 = 0x696C61766E69203BLL;
    v13 = 0xED00007865682064;
    goto LABEL_20;
  }

  *(a1 + 24) = 0;
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 >> 14 < 4 * v17 && specialized _ParseInfo.currChar.getter(*a1, *(a1 + 8), *(a1 + 16)) == 62)
  {
    _ParseInfo.advance()();
    v18 = v35;
    outlined copy of Data._Representation(v35, *(&v35 + 1));
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v30 = 0xD00000000000002BLL;
    v31 = 0x80000001814849E0;
    specialized lineNumberStrings(_:)(v14, v15, v16);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v19);

    v20 = v30;
    v21 = v31;
    lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
    v22 = swift_allocError();
    v18 = 0;
    *v23 = v20;
    v23[1] = v21;
    *(a1 + 24) = v22;
  }

LABEL_21:
  outlined consume of Data._Representation(v35, *(&v35 + 1));
  return v18;
}

uint64_t isValidUnquotedStringCharacter(_:)(__int16 a1)
{
  v1 = 0x800000000400E01uLL >> (a1 - 36);
  if ((a1 - 36) > 0x3Bu)
  {
    LOBYTE(v1) = 0;
  }

  if (((a1 & 0xFFDF) - 91) <= 0xFFE5u)
  {
    v2 = v1;
  }

  else
  {
    v2 = 1;
  }

  if ((a1 - 58) > 0xFFF5u)
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t parseUnquotedPlistString(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = v3 >> 14;
  if (v3 >> 14 >= 4 * v5)
  {
LABEL_27:
    lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
    v11 = swift_allocError();
    *v12 = 0xD000000000000023;
    v12[1] = 0x8000000181484AC0;

    result = 0;
    *(a1 + 24) = v11;
    return result;
  }

  v7 = (v4 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v15 = v3 >> 14;
  v16 = *(a1 + 16);
  do
  {
    v9 = v3;
    if ((v3 & 0xC) == v8)
    {
      v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v3, v4, v2);
    }

    result = v9 >> 16;
    if (v9 >> 16 >= v5)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      LOWORD(result) = String.UTF16View._foreignSubscript(position:)();
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        _StringGuts.scalarAlignSlow(_:)(v9, v4, v2);
      }

      result = _StringGuts.fastUTF8Scalar(startingAt:)();
      if ((v9 & 0xC000) == 0x4000)
      {
        if (result < 0x10000)
        {
          goto LABEL_32;
        }

        LOWORD(result) = result & 0x3FF | 0xDC00;
      }

      else if (WORD1(result))
      {
        result = ((result + 67043328) >> 10) + 55296;
        if ((result & 0x10000) != 0)
        {
          goto LABEL_33;
        }
      }
    }

    if ((result - 58) <= 0xFFF5u && ((result & 0xFFDF) - 91) <= 0xFFE5u && (result - 36 > 0x3B || ((1 << (result - 36)) & 0x800000000400E01) == 0))
    {
      break;
    }

    _ParseInfo.advance()();
    v3 = *(a1 + 16);
    v6 = v3 >> 14;
  }

  while (v3 >> 14 < 4 * v5);
  result = v16;
  if (v6 == v15)
  {
    goto LABEL_27;
  }

  if (v6 < v15)
  {
    goto LABEL_34;
  }

  v13 = MEMORY[0x1865CB250](v16, v3, v4, v2);
  result = MEMORY[0x1865CB2D0](v13);
  if (v14)
  {
    return result;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t parseOctal(startingWith:_:)(int a1, unint64_t *a2)
{
  v9 = (a1 - 48);
  if ((a1 - 48) > 0xFFu)
  {
    __break(1u);
    goto LABEL_38;
  }

  v2 = a2;
  v4 = *a2;
  v3 = a2[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = *a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  v10 = (v4 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v5 = a2[2];
  if (v7 <= v5 >> 14)
  {
    goto LABEL_34;
  }

  v8 = 4 << v10;
  if ((a2[2] & 0xC) == 4 << v10)
  {
    goto LABEL_39;
  }

  while (1)
  {
    if (v5 >> 16 >= v6)
    {
      goto LABEL_38;
    }

    if ((v3 & 0x1000000000000000) != 0)
    {
      v13 = String.UTF16View._foreignSubscript(position:)();
      goto LABEL_20;
    }

    if ((v5 & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(v5, v4, v3);
    }

    v11 = _StringGuts.fastUTF8Scalar(startingAt:)();
    v12 = v11;
    if ((v5 & 0xC000) == 0x4000)
    {
      if (v11 >= 0x10000)
      {
        v13 = v11 & 0x3FF | 0xFFFFDC00;
        goto LABEL_20;
      }

      goto LABEL_41;
    }

    if (!HIWORD(v11))
    {
      goto LABEL_19;
    }

    v12 = (v11 + 67043328) >> 10;
    v13 = v12 + 55296;
    if ((v13 & 0x10000) != 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    if ((v13 - 56) < 0xFFF8u)
    {
      goto LABEL_34;
    }

    v9 = (v13 + 8 * v9 - 48);
    _ParseInfo.advance()();
    v5 = v2[2];
    if (v7 <= v5 >> 14)
    {
      goto LABEL_34;
    }

    if ((v2[2] & 0xC) == v8)
    {
      goto LABEL_42;
    }

LABEL_23:
    if (v5 >> 16 < v6)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    v5 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5, v4, v3);
  }

  if ((v3 & 0x1000000000000000) == 0)
  {
    if ((v5 & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(v5, v4, v3);
    }

    v14 = _StringGuts.fastUTF8Scalar(startingAt:)();
    if ((v5 & 0xC000) == 0x4000)
    {
      if (v14 >= 0x10000)
      {
        v14 = v14 & 0x3FF | 0xFFFFDC00;
        goto LABEL_32;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      v5 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5, v4, v3);
      goto LABEL_23;
    }

    if (!HIWORD(v14))
    {
      goto LABEL_32;
    }

    v12 = (v14 + 67043328) >> 10;
    v14 = v12 + 55296;
    if ((v14 & 0x10000) == 0)
    {
      goto LABEL_32;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    v13 = v12;
    goto LABEL_20;
  }

  v14 = String.UTF16View._foreignSubscript(position:)();
LABEL_32:
  if ((v14 - 56) >= 0xFFF8u)
  {
    v9 = v14 + 8 * v9 - 48;
    _ParseInfo.advance()();
  }

LABEL_34:

  return specialized UInt16.init(nextStep:)(v9);
}

unint64_t parseU16Scalar(_:)(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = a1[2];
  if (4 * v3 <= v4 >> 14)
  {
    return 0;
  }

  v6 = 0;
  v7 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4;
  v9 = 4 << v7;
  while (1)
  {
    if ((v4 & 0xC) == v9)
    {
      v4 = _StringGuts._slowEnsureMatchingEncoding(_:)(v4, v1, v2);
    }

    result = v4 >> 16;
    if (v4 >> 16 >= v3)
    {
      break;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      LODWORD(result) = String.UTF16View._foreignSubscript(position:)();
LABEL_19:
      if (result <= 0x7Fu)
      {
        v11 = result;
        if (isxdigit(result))
        {
          result = _ParseInfo.advance()();
          if (v11 <= 0x39u)
          {
            v6 = (16 * v6) + (v11 - 48);
            if ((v6 & 0x10000) != 0)
            {
              goto LABEL_37;
            }
          }

          else if (v11 <= 0x46u)
          {
            v6 = (16 * v6 + v11 - 55);
          }

          else
          {
            v6 = (16 * v6) + (v11 - 87);
            if ((v6 & 0x10000) != 0)
            {
              goto LABEL_38;
            }
          }
        }
      }

      goto LABEL_28;
    }

    if ((v4 & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(v4, v1, v2);
    }

    result = _StringGuts.fastUTF8Scalar(startingAt:)();
    if ((v4 & 0xC000) != 0x4000)
    {
      if (result >= 0x10000)
      {
        result = ((result + 67043328) >> 10) + 55296;
        if ((result & 0x10000) != 0)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_19;
    }

    if (result < 0x10000)
    {
      goto LABEL_35;
    }

LABEL_28:
    v4 = a1[2];
    if (4 * v3 > v4 >> 14 && v8-- > 1)
    {
      continue;
    }

    return v6;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t getDataBytes(_:bytes:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  if ((v4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v5 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = 4 * v5;
  v7 = a1[2];
  if (4 * v5 <= v7 >> 14 || a3 < 1)
  {
    return 0;
  }

  v9 = 0;
  v12 = (v3 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  while (1)
  {
    if ((v7 & 0xC) == v13)
    {
      v7 = _StringGuts._slowEnsureMatchingEncoding(_:)(v7, v3, v4);
    }

    result = v7 >> 16;
    if (v7 >> 16 >= v5)
    {
      break;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      LOWORD(result) = String.UTF16View._foreignSubscript(position:)();
LABEL_29:
      LOWORD(v14) = result;
      goto LABEL_30;
    }

    if ((v7 & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(v7, v3, v4);
    }

    result = _StringGuts.fastUTF8Scalar(startingAt:)();
    if ((v7 & 0xC000) == 0x4000)
    {
      if (result < 0x10000)
      {
        goto LABEL_55;
      }

      LOWORD(v14) = result & 0x3FF | 0xDC00;
LABEL_35:
      if ((v14 > 0x20u || ((1 << v14) & 0x100002400) == 0) && v14 - 8232 >= 2)
      {
        return -1;
      }

      _ParseInfo.advance()();
      v7 = a1[2];
      if (v6 <= v7 >> 14)
      {
        return v9;
      }
    }

    else
    {
      if (!WORD1(result))
      {
        goto LABEL_29;
      }

      v14 = ((result + 67043328) >> 10) + 55296;
      if ((v14 & 0x10000) != 0)
      {
        goto LABEL_56;
      }

LABEL_30:
      if (v14 == 62)
      {
        return v9;
      }

      if (v14 > 0xFFu)
      {
        goto LABEL_35;
      }

      if (v14 - 58 > 0xFFFFFFF5)
      {
        v15 = -48;
      }

      else if ((v14 - 103) > 0xF9u)
      {
        v15 = -87;
      }

      else
      {
        if ((v14 - 71) < 0xFAu)
        {
          goto LABEL_35;
        }

        v15 = -55;
      }

      v19 = v15;
      _ParseInfo.advance()();
      v16 = a1[2];
      if (v6 <= v16 >> 14)
      {
        return -2;
      }

      result = specialized _ParseInfo.currChar.getter(v3, v4, v16);
      if (result > 0xFFu)
      {
        return -2;
      }

      if (result - 58 > 0xFFFFFFF5)
      {
        v17 = -48;
      }

      else if ((result - 103) > 0xF9u)
      {
        v17 = -87;
      }

      else
      {
        if ((result - 71) < 0xFAu)
        {
          return -2;
        }

        v17 = -55;
      }

      v18 = 16 * ((v19 + v14) & 0xF) + (v17 + result);
      if ((v18 >> 8))
      {
        goto LABEL_57;
      }

      *(a2 + v9++) = v18;
      _ParseInfo.advance()();
      v7 = a1[2];
      if (v6 <= v7 >> 14 || v9 >= a3)
      {
        return v9;
      }
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

unint64_t specialized lineNumberStrings(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v6 = 0;
    v7 = 4 * v3;
    v8 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v8) = 1;
    }

    v9 = 4 << v8;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10 = (a2 & 0x4000000000000000) != 0;
    }

    else
    {
      v10 = a1 < 0;
    }

    v29 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v30 = a2 & 0xFFFFFFFFFFFFFFLL;
    v31 = a3 >> 14;
    if (v7 >= a3 >> 14)
    {
      v11 = a3 >> 14;
    }

    else
    {
      v11 = 4 * v3;
    }

    v28 = v11;
    v12 = 1;
    v13 = 15;
    while (1)
    {
      if (v6 >= v31)
      {
        return v12;
      }

      v14 = v13 & 0xC;
      v15 = v13;
      if (v14 == v9)
      {
        v15 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a1, a2);
      }

      result = v15 >> 16;
      if (v15 >> 16 >= v3)
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
        return result;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = String.UTF16View._foreignSubscript(position:)();
      }

      else
      {
        if ((v15 & 1) == 0)
        {
          _StringGuts.scalarAlignSlow(_:)(v15, a1, a2);
        }

        result = _StringGuts.fastUTF8Scalar(startingAt:)();
        if ((v15 & 0xC000) == 0x4000)
        {
          if (result < 0x10000)
          {
            goto LABEL_115;
          }

          goto LABEL_36;
        }

        if (result >= 0x10000)
        {
          result = ((result + 67043328) >> 10) + 55296;
          if ((result & 0x10000) != 0)
          {
            goto LABEL_119;
          }
        }
      }

      if (result == 13)
      {
        v17 = __OFADD__(v12++, 1);
        if (v17)
        {
          goto LABEL_117;
        }

        v18 = v13;
        if (v14 == v9)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a1, a2);
          v18 = result;
        }

        v19 = v18 >> 16;
        if (v18 >> 16 >= v3)
        {
          goto LABEL_118;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          result = MEMORY[0x1865CB1C0](v18, a1, a2);
          v20 = result;
        }

        else
        {
          if (v10)
          {
            v20 = (v18 & 0xFFFFFFFFFFFF0000) + 65549;
            goto LABEL_87;
          }

          if ((v18 & 0xC001) != 0)
          {
            if ((a2 & 0x2000000000000000) == 0)
            {
              goto LABEL_64;
            }

LABEL_83:
            v32 = a1;
            v33 = v30;
            LODWORD(v24) = *(&v32 + v19);
            if ((v24 & 0x80) == 0)
            {
LABEL_84:
              v24 = 1;
LABEL_85:
              v18 += v24 << 16;
              v25 = 5;
              goto LABEL_86;
            }
          }

          else
          {
            result = _StringGuts.scalarAlignSlow(_:)(v18, a1, a2);
            v18 = result;
            v19 = result >> 16;
            if ((a2 & 0x2000000000000000) != 0)
            {
              goto LABEL_83;
            }

LABEL_64:
            result = v29;
            if ((a1 & 0x1000000000000000) != 0)
            {
              LODWORD(v24) = *(v29 + v19);
              if ((v24 & 0x80) == 0)
              {
                goto LABEL_84;
              }
            }

            else
            {
              result = _StringObject.sharedUTF8.getter();
              LODWORD(v24) = *(result + v19);
              if ((v24 & 0x80) == 0)
              {
                goto LABEL_84;
              }
            }
          }

          LODWORD(v24) = __clz(v24 ^ 0xFF) - 24;
          if (v24 != 4)
          {
            v24 = v24;
            goto LABEL_85;
          }

          if ((v18 & 0xC000) != 0)
          {
            v24 = 4;
            goto LABEL_85;
          }

          v25 = 16388;
LABEL_86:
          v20 = v18 & 0xFFFFFFFFFFFF0000 | v25;
        }

LABEL_87:
        if (v28 <= v20 >> 14)
        {
          goto LABEL_103;
        }

        v26 = v20;
        if ((v20 & 0xC) == v9)
        {
          v26 = _StringGuts._slowEnsureMatchingEncoding(_:)(v20, a1, a2);
        }

        result = v26 >> 16;
        if (v26 >> 16 >= v3)
        {
          goto LABEL_121;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          LOWORD(result) = String.UTF16View._foreignSubscript(position:)();
        }

        else
        {
          if ((v26 & 1) == 0)
          {
            _StringGuts.scalarAlignSlow(_:)(v26, a1, a2);
          }

          result = _StringGuts.fastUTF8Scalar(startingAt:)();
          if ((v26 & 0xC000) == 0x4000)
          {
            if (result < 0x10000)
            {
              goto LABEL_123;
            }

            LOWORD(v27) = result & 0x3FF | 0xDC00;
            goto LABEL_99;
          }

          if (WORD1(result))
          {
            v27 = ((result + 67043328) >> 10) + 55296;
            if ((v27 & 0x10000) != 0)
            {
              goto LABEL_124;
            }

LABEL_99:
            result = _ss17FixedWidthIntegerPsEyxSgSScfCs6UInt16V_Tt1g5(10, 0xE100000000000000);
            if ((result & 0x10000) == 0)
            {
              if (v27 == result)
              {
                v13 = v20;
              }

              v14 = v13 & 0xC;
            }

LABEL_103:
            v7 = 4 * v3;
            if (v14 != v9)
            {
              goto LABEL_49;
            }

            goto LABEL_104;
          }
        }

        LOWORD(v27) = result;
        goto LABEL_99;
      }

LABEL_36:
      v21 = v13;
      if (v14 == v9)
      {
        v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a1, a2);
      }

      result = v21 >> 16;
      if (v21 >> 16 >= v3)
      {
        goto LABEL_114;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = String.UTF16View._foreignSubscript(position:)();
      }

      else
      {
        if ((v21 & 1) == 0)
        {
          _StringGuts.scalarAlignSlow(_:)(v21, a1, a2);
        }

        result = _StringGuts.fastUTF8Scalar(startingAt:)();
        if ((v21 & 0xC000) == 0x4000)
        {
          if (result < 0x10000)
          {
            goto LABEL_120;
          }

          goto LABEL_48;
        }

        if (result >= 0x10000)
        {
          result = ((result + 67043328) >> 10) + 55296;
          if ((result & 0x10000) != 0)
          {
            goto LABEL_122;
          }
        }
      }

      if (result == 10)
      {
        v17 = __OFADD__(v12++, 1);
        if (v17)
        {
          goto LABEL_116;
        }
      }

LABEL_48:
      if (v14 != v9)
      {
        goto LABEL_49;
      }

LABEL_104:
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, a1, a2);
      v13 = result;
LABEL_49:
      v22 = v13 >> 16;
      if (v13 >> 16 >= v3)
      {
        goto LABEL_113;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = MEMORY[0x1865CB1C0](v13, a1, a2);
        goto LABEL_15;
      }

      if (v10)
      {
        v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65549;
        goto LABEL_15;
      }

      if ((v13 & 0xC001) != 0)
      {
        if ((a2 & 0x2000000000000000) == 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v13 = _StringGuts.scalarAlignSlow(_:)(v13, a1, a2);
        v22 = v13 >> 16;
        if ((a2 & 0x2000000000000000) == 0)
        {
LABEL_54:
          if ((a1 & 0x1000000000000000) != 0)
          {
            LODWORD(v23) = *(v29 + v22);
            if ((v23 & 0x80) == 0)
            {
              goto LABEL_78;
            }
          }

          else
          {
            LODWORD(v23) = *(_StringObject.sharedUTF8.getter() + v22);
            if ((v23 & 0x80) == 0)
            {
LABEL_78:
              v23 = 1;
              goto LABEL_79;
            }
          }

          goto LABEL_56;
        }
      }

      v32 = a1;
      v33 = v30;
      LODWORD(v23) = *(&v32 + v22);
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_78;
      }

LABEL_56:
      LODWORD(v23) = __clz(v23 ^ 0xFF) - 24;
      if (v23 != 4)
      {
        v23 = v23;
        goto LABEL_79;
      }

      if ((v13 & 0xC000) != 0)
      {
        v23 = 4;
LABEL_79:
        v13 = (v13 + (v23 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        goto LABEL_15;
      }

      v13 = v13 & 0xFFFFFFFFFFFF0000 | 0x4004;
LABEL_15:
      v6 = v13 >> 14;
      if (v13 >> 14 >= v7)
      {
        return v12;
      }
    }
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeMutableBufferPointer<UInt8>> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableBufferPointer<UInt8>> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableBufferPointer<UInt8>> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySrys5UInt8VGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableBufferPointer<UInt8>> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t PropertyListDecoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t PropertyListDecoder.userInfo.getter()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  os_unfair_lock_unlock(v3 + 4);

  return v2;
}

uint64_t PropertyListDecoder.decode<A, B>(_:from:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v22 = a2;
  v23 = a3;
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v20 - v17;
  (*(a8 + 16))(a6, a8, v16);
  (*(*v9 + 168))(v21, v22, v23, v18, a5, a7);
  return (*(v15 + 8))(v18, AssociatedTypeWitness);
}

uint64_t PropertyListDecoder.decode<A, B>(_:from:format:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v22 = a3;
  v23 = a4;
  v20 = a1;
  v21 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v20 - v17;
  (*(a9 + 16))(a7, a9, v16);
  (*(*v10 + 192))(v20, v21, v22, v23, v18, a6, a8);
  return (*(v15 + 8))(v18, AssociatedTypeWitness);
}

uint64_t PropertyListDecoder.decode<A>(_:from:format:configuration:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  v28 = a6;
  v29 = a7;
  v30 = a1;
  v31 = a5;
  v22 = a6;
  v23 = v7;
  v24 = partial apply for closure #1 in PropertyListDecoder.decode<A>(_:from:format:configuration:);
  v25 = v27;
  v26 = a4;
  v16 = a6;
  v17 = v7;
  v18 = partial apply for closure #1 in PropertyListDecoder.decode<A>(_:from:format:configuration:);
  v19 = v27;
  v20 = a4;
  v10[2] = a6;
  v11 = v7;
  v12 = a4;
  v13 = partial apply for closure #1 in PropertyListDecoder.decode<A>(_:from:format:configuration:);
  v14 = v27;
  v37 = a6;
  v38 = closure #1 in PropertyListDecoder._decode<A>(_:from:format:)partial apply;
  v39 = &v21;
  v40 = v8;
  v41 = closure #2 in PropertyListDecoder._decode<A>(_:from:format:)partial apply;
  v42 = &v15;
  v43 = closure #3 in PropertyListDecoder._decode<A>(_:from:format:)partial apply;
  v44 = v10;
  v45 = v8;
  v33 = a6;
  v34 = partial apply for closure #1 in static PropertyListDecoder.detectFormatAndConvertEncoding<A>(for:binaryPlist:xml:openstep:);
  v35 = &v36;
  return Data._Representation.withUnsafeBytes<A>(_:)(partial apply for closure #1 in Data.withBufferView<A>(_:), v32, a2, a3);
}

uint64_t partial apply for closure #1 in PropertyListDecoder.decode<A>(_:from:format:configuration:)(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  return (*(v7 + 16))(v5, v4, v2, v3, v6, v7);
}

uint64_t _s10Foundation19PropertyListDecoderC22withUTF8Representation2of14sourceEncoding_xAA10BufferViewVys5UInt8VG_SSAAE0J0VxAKKXEtKlFZyt_Tt3B5016_s10Foundation19bcd78C30detectFormatAndConvertEncoding3for11binaryPlist3xml8openstepxAA4DataV_xAA10kl4Vys5M82VGKXExAOKXExSS05UTF16Q0VKXEtKlFZxAOKXEfU_yAOKXEfU_AA23LocalizedStringResourceV_Tg5AA23LocalizedStringResourceVSgAKxs5Error_pRi_zRi0_zlyAPIsgyrzo_Tf1nnnc_n(char *a1, unint64_t a2, uint64_t a3, __int128 *a4, void (*a5)(_OWORD *__return_ptr, unsigned __int8 *, uint64_t))
{
  if (a3 != 4)
  {
    v20 = _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA10BufferViewVyAHG_Tt1B5(a1, a2, a3);
    if (!v21)
    {
      v33 = type metadata accessor for DecodingError();
      swift_allocError();
      v35 = v34;
      _CodingPathNode.path.getter(0x8000000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6B00], v33);
      return swift_willThrow();
    }

    v22 = v21;
    if ((v21 & 0x1000000000000000) != 0)
    {
      v36 = static String._copying(_:)();
      v6 = v37;

      v20 = v36;
      v22 = v6;
      if ((v6 & 0x2000000000000000) == 0)
      {
LABEL_8:
        if ((v20 & 0x1000000000000000) != 0)
        {
          v23 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v6 = v20 & 0xFFFFFFFFFFFFLL;
          goto LABEL_10;
        }

        v42 = _StringObject.sharedUTF8.getter();
        if (v42)
        {
          v6 = v43;
          if ((v43 & 0x8000000000000000) == 0)
          {
LABEL_25:
            v23 = v42;
LABEL_10:
            if ((specialized static XMLPlistScanner.detectPossibleXMLPlist(for:)(v23, v6) & 1) == 0)
            {
            }

            a5(v46, v23, v6);
            if (v5)
            {
            }

            v24 = a4[5];
            v52 = a4[4];
            v53 = v24;
            v54 = *(a4 + 12);
            v25 = a4[1];
            v48 = *a4;
            v49 = v25;
            v26 = a4[3];
            v50 = a4[2];
            v51 = v26;
            v27 = v46[1];
            *a4 = v46[0];
            a4[1] = v27;
            v28 = v46[2];
            v29 = v46[3];
            v30 = v46[4];
            v31 = v46[5];
            v32 = v47;
LABEL_18:
            *(a4 + 12) = v32;
            a4[4] = v30;
            a4[5] = v31;
            a4[2] = v28;
            a4[3] = v29;
            outlined destroy of TermOfAddress?(&v48, &_s10Foundation23LocalizedStringResourceVSgMd);
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_25;
      }
    }

    else if ((v21 & 0x2000000000000000) == 0)
    {
      goto LABEL_8;
    }

    v57[0] = v20;
    v57[1] = v22 & 0xFFFFFFFFFFFFFFLL;
    if ((specialized static XMLPlistScanner.detectPossibleXMLPlist(for:)(v57, HIBYTE(v22) & 0xF) & 1) == 0)
    {
    }

    a5(v55, v57, HIBYTE(v22) & 0xF);
    if (v5)
    {
    }

    v38 = a4[5];
    v52 = a4[4];
    v53 = v38;
    v54 = *(a4 + 12);
    v39 = a4[1];
    v48 = *a4;
    v49 = v39;
    v40 = a4[3];
    v50 = a4[2];
    v51 = v40;
    v41 = v55[1];
    *a4 = v55[0];
    a4[1] = v41;
    v28 = v55[2];
    v29 = v55[3];
    v30 = v55[4];
    v31 = v55[5];
    v32 = v56;
    goto LABEL_18;
  }

  result = specialized static XMLPlistScanner.detectPossibleXMLPlist(for:)(a1, a2);
  if (result)
  {
    result = (a5)(v44, a1, a2);
    if (!v5)
    {
      v12 = a4[5];
      v52 = a4[4];
      v53 = v12;
      v54 = *(a4 + 12);
      v13 = a4[1];
      v48 = *a4;
      v49 = v13;
      v14 = a4[3];
      v50 = a4[2];
      v51 = v14;
      v15 = v44[1];
      *a4 = v44[0];
      a4[1] = v15;
      v16 = v44[2];
      v17 = v44[3];
      v18 = v44[4];
      v19 = v44[5];
      *(a4 + 12) = v45;
      a4[4] = v18;
      a4[5] = v19;
      a4[2] = v16;
      a4[3] = v17;
      return outlined destroy of TermOfAddress?(&v48, &_s10Foundation23LocalizedStringResourceVSgMd);
    }
  }

  return result;
}

uint64_t PropertyListDecoder.deinit()
{

  return v0;
}

uint64_t outlined consume of XMLPlistError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 5 || a5 == 3)
  {
  }

  return result;
}

void *_PlistDecoder.init(referencing:options:codingPathNode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  v19 = v6;
  v20 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v17 - v9;
  _swift_isClassOrObjCExistentialType();
  v3[2] = MEMORY[0x1E69E7CC0];
  v3[3] = a1;
  v11 = *(AssociatedConformanceWitness + 72);
  swift_unknownObjectRetain();
  v12 = swift_checkMetadataState();
  v13 = v21;
  v11(v12, AssociatedConformanceWitness);
  if (v13)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    type metadata accessor for _PlistDecoder();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = type metadata accessor for _PlistDecodingStorage();
    specialized _PlistDecodingStorage.push(container:)(v10, v14);
    (*(v18 + 8))(v10, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v15 = v23;
    v3[4] = v22;
    v3[5] = v15;
  }

  return v3;
}

uint64_t _PlistDecoder.decode<A>(_:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a2;
  v51 = a5;
  v52 = a1;
  v6 = *v5;
  v55 = a4;
  v53 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = v41 - v7;
  v8 = *(v6 + 88);
  v9 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  v44 = v9;
  v45 = v8;
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v41 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v43 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v50 = v41 - v22;
  v23 = *(v5 + 2);
  v56[7] = v5 + 16;

  if (!MEMORY[0x1865CB560](v24, v10))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v42 = v5;
  v56[0] = v23;
  v25 = type metadata accessor for Array();
  v26 = v18;
  v18 = v14;
  v27 = v12;
  v28 = v11;
  v29 = v26;
  v30 = v25;
  v41[0] = swift_getWitnessTable();
  v41[1] = v30;
  v31 = v29;
  v14 = v28;
  v12 = v27;
  v32 = v10;
  BidirectionalCollection.last.getter();
  (*(v12 + 16))(v18, v17, v14);
  if ((*(v31 + 6))(v18, 1, v10) != 1)
  {

    (*(v12 + 8))(v17, v14);
    v33 = v50;
    (*(v31 + 4))(v50, v18, v10);
    v18 = v42;
    v14 = *(v42 + 5);
    v34 = type metadata accessor for _PlistDecodingStorage();
    swift_retain_n();
    specialized _PlistDecodingStorage.push(container:)(v33, v34);
    v56[3] = type metadata accessor for _PlistDecoder();
    v56[4] = swift_getWitnessTable();
    v56[0] = v18;
    v35 = v47;
    (*(v46 + 16))(v47, v49, AssociatedTypeWitness);
    v36 = v55;
    v12 = *(v55 + 16);

    v37 = v54;
    (v12)(v56, v35, v53, v36);
    if (v37)
    {
      *(v18 + 5) = v14;

      if (MEMORY[0x1865CB560](*(v18 + 2), v32))
      {
LABEL_7:
        swift_getWitnessTable();
        v38 = v43;
        RangeReplaceableCollection<>.removeLast()();

        v39 = *(v31 + 1);
        v39(v38, v32);
        return (v39)(v33, v32);
      }

      __break(1u);
    }

    *(v18 + 5) = v14;

    if (MEMORY[0x1865CB560](*(v18 + 2), v32))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_10:
  result = (*(v12 + 8))(v18, v14);
  __break(1u);
  return result;
}

float specialized _PlistDecoder.unwrapFloatingPoint<A, B>(from:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E6448];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 80);
    v24 = lazy protocol witness table accessor for type Float and conformance Float();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E6448], &type metadata for _CodingKey, v24, v25, v15, v16);
    swift_unknownObjectRelease();
    if (!v27)
    {
      return *&v30;
    }
  }

  return result;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _PlistDecoder<A1>()
{
  return SingleValueDecodingContainer.decode(_:)();
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

uint64_t _PlistKeyedDecodingContainer.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v91 = a3;
  v92 = a6;
  v88 = a4;
  v85 = a2;
  v93 = a1;
  v78 = a7;
  v77 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v70 - v12;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = *(AssociatedTypeWitness - 8);
  v82 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v70 - v18;
  v80 = AssociatedConformanceWitness;
  v19 = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v70 - v22;
  v89 = v19;
  v90 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v72 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v84 = &v70 - v27;
  v86 = type metadata accessor for _PlistUnkeyedDecodingContainer();
  v87 = a5;
  v28 = dispatch thunk of CodingKey.stringValue.getter();
  v30 = v91;
  if (!*(v91 + 16))
  {

    goto LABEL_6;
  }

  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v29);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_6:
    (*(v90 + 56))(v23, 1, 1, v89);
    (*(v21 + 8))(v23, v20);
    type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    MetatypeMetadata = swift_getMetatypeMetadata();
    _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v93, v88, v87, MetatypeMetadata, v44, v92);
    return swift_willThrow();
  }

  v34 = v81;
  v35 = v82;
  v36 = v16;
  (*(v81 + 16))(v16, *(v30 + 56) + *(v81 + 72) * v31, v82);
  v37 = v79;
  (*(v34 + 32))(v79, v36, v35);
  v38 = v80;
  v39 = *(v80 + 80);
  swift_unknownObjectRetain();
  v40 = swift_checkMetadataState();
  v41 = v83;
  v39(v37, v40, v38);
  if (v41)
  {
    (*(v34 + 8))(v37, v35);
    return swift_unknownObjectRelease();
  }

  (*(v34 + 8))(v37, v35);
  swift_unknownObjectRelease();
  v47 = v89;
  v46 = v90;
  (*(v90 + 56))(v23, 0, 1, v89);
  (*(v46 + 32))(v84, v23, v47);
  v48 = v77;
  v49 = v74;
  v50 = v87;
  (*(v77 + 16))(v74, v93, v87);
  (*(v48 + 56))(v49, 0, 1, v50);
  v51 = v75;
  v52 = v76;
  v53 = v73;
  (*(v75 + 16))(v73, v49, v76);
  if ((*(v48 + 48))(v53, 1, v50) == 1)
  {
    v54 = *(v51 + 8);
    v54(v49, v52);
    v54(v53, v52);
    v55 = v88;

    v56 = v78;
    v57 = v47;
    goto LABEL_17;
  }

  v58 = *(v48 + 32);
  v59 = v71;
  v58(v71, v53, v50);
  v55 = swift_allocObject();
  v60 = v92;
  v55[5] = v50;
  v55[6] = v60;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v55 + 2);
  v58(boxed_opaque_existential_0, v59, v50);
  result = (*(v51 + 8))(v49, v52);
  v62 = v88;
  v55[7] = v88;
  v56 = v78;
  if (v62 >> 62)
  {
    if (v62 >> 62 != 1)
    {
      v64 = 0;
      v57 = v89;
      goto LABEL_15;
    }

    v63 = ((v62 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v63 = (v62 + 64);
  }

  v57 = v89;
  v64 = *v63;

LABEL_15:
  if (__OFADD__(v64, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v55[8] = v64 + 1;
LABEL_17:
  v65 = v85;
  v66 = *(v85 + 40);
  *(v85 + 40) = v55;
  v67 = type metadata accessor for _PlistDecodingStorage();

  specialized _PlistDecodingStorage.push(container:)(v84, v67);
  _PlistDecoder.unkeyedContainer()(v56);
  *(v65 + 40) = v66;

  result = MEMORY[0x1865CB560](*(v65 + 16), v57);
  if (result)
  {
    type metadata accessor for Array();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v68 = v72;
    RangeReplaceableCollection<>.removeLast()();

    v69 = *(v90 + 8);
    v69(v68, v57);
    return (v69)(v84, v57);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t _PlistKeyedDecodingContainer._superDecoder(forKey:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v82 = a2;
  v79 = a4;
  v71 = a7;
  swift_getAssociatedTypeWitness();
  v77 = a5;
  v78 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  v76 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v80 = *(v18 - 8);
  v81 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v84 = &v70 - v22;
  v23 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v24 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_6;
  }

  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_6:
    swift_checkMetadataState();
    (*(AssociatedConformanceWitness + 56))();
    v33 = v82;
    goto LABEL_7;
  }

  v29 = *(a3 + 56);
  v30 = v75;
  v31 = v29 + *(v75 + 9) * v26;
  v32 = v76;
  (*(v75 + 2))(v14, v31, v76);
  (*(v30 + 4))(v17, v14, v32);
  v33 = v82;
  v34 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v35 = swift_checkMetadataState();
  v36 = v83;
  v34(v17, v35, AssociatedConformanceWitness);
  v37 = v36;
  if (v36)
  {
    (*(v30 + 1))(v17, v76);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v85);
  }

  while (1)
  {
    v83 = v37;
    (*(v30 + 1))(v17, v76);
    swift_unknownObjectRelease();
    (*(v80 + 32))(v84, v20, v81);
LABEL_7:
    v38 = *(v33 + 32);
    v82 = *(v33 + 24);
    v76 = v38;
    v70 = *(v85 + 3);
    v39 = v70;
    v40 = __swift_project_boxed_opaque_existential_1(v85, v70);
    v17 = type metadata accessor for Optional();
    v73 = &v70;
    v74 = *(v17 - 1);
    v41 = *(v74 + 64);
    v42.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
    v43 = &v70 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = *(v39 - 8);
    (*(v44 + 16))(v43, v40, v39, v42);
    v45 = (*(v44 + 56))(v43, 0, 1, v39);
    v72 = &v70;
    MEMORY[0x1EEE9AC00](v45);
    v47 = &v70 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = &v70;
    v49 = MEMORY[0x1EEE9AC00](v48);
    v50 = v74;
    v51 = *(v74 + 16);
    v75 = v17;
    v51(v43, v43, v17, v49);
    if ((*(v44 + 48))(v43, 1, v39) == 1)
    {
      v52 = *(v50 + 8);
      v53 = v82;
      swift_unknownObjectRetain();
      v33 = v76;

      v54 = v75;
      v52(v43, v75);
      v52(v43, v54);
      v55 = v79;

      v37 = v83;
      goto LABEL_15;
    }

    v56 = *(v44 + 32);
    v56(v47, v43, v39);
    v20 = swift_allocObject();
    *(v20 + 40) = v70;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20 + 2);
    v56(boxed_opaque_existential_0, v47, v39);
    v58 = *(v50 + 8);
    v53 = v82;
    swift_unknownObjectRetain();
    v33 = v76;

    v58(v43, v75);
    v59 = v79;
    *(v20 + 7) = v79;
    if (v59 >> 62)
    {
      break;
    }

    v60 = (v59 + 64);
LABEL_13:
    v37 = v83;
    v61 = *v60;

    v62 = v61 + 1;
    if (!__OFADD__(v61, 1))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v59 >> 62 == 1)
  {
    v60 = ((v59 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_13;
  }

  v37 = v83;
  v62 = 1;
LABEL_14:
  *(v20 + 8) = v62;
  v55 = v20;
LABEL_15:
  v63 = type metadata accessor for _PlistDecoder();
  v64 = swift_allocObject();
  _PlistDecoder.init(referencing:options:codingPathNode:)(v53, v33, v55);
  if (v37)
  {
    (*(v80 + 8))(v84, v81);
  }

  else
  {
    v65 = v81;
    v66 = type metadata accessor for _PlistDecodingStorage();
    v67 = v84;
    specialized _PlistDecodingStorage.push(container:)(v84, v66);
    v68 = v71;
    v71[3] = v63;
    v68[4] = swift_getWitnessTable();
    *v68 = v64;
    (*(v80 + 8))(v67, v65);
  }

  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t _PlistKeyedDecodingContainer.superDecoder()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v14[3] = &type metadata for _CodingKey;
  v14[4] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v12 = swift_allocObject();
  v14[0] = v12;
  *(v12 + 16) = xmmword_181237FF0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  return _PlistKeyedDecodingContainer._superDecoder(forKey:)(v14, a1, a2, a3, a4, a5, a6);
}

uint64_t _PlistKeyedDecodingContainer.superDecoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v19[3] = a5;
  v19[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  return _PlistKeyedDecodingContainer._superDecoder(forKey:)(v19, a2, a3, a4, a6, a8, a9);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>()
{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

uint64_t specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  v17 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pmMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (v5 == __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd))
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

uint64_t specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = MEMORY[0x1E69E6158];
  v17 = MEMORY[0x1E69E6158];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E6530];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSimMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E7508];
  v17 = MEMORY[0x1E69E7508];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8VmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E75F8];
  v17 = MEMORY[0x1E69E75F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt16VmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E73E0];
  v17 = MEMORY[0x1E69E73E0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5NeverOmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E6370];
  v17 = MEMORY[0x1E69E6370];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E63B0];
  v17 = MEMORY[0x1E69E63B0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E6448];
  v17 = MEMORY[0x1E69E6448];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E7230];
  v17 = MEMORY[0x1E69E7230];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss4Int8VmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E7290];
  v17 = MEMORY[0x1E69E7290];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int16VmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E72F0];
  v17 = MEMORY[0x1E69E72F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E7360];
  v17 = MEMORY[0x1E69E7360];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E6810];
  v17 = MEMORY[0x1E69E6810];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSumMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E7668];
  v17 = MEMORY[0x1E69E7668];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

{
  v5 = MEMORY[0x1E69E76D8];
  v17 = MEMORY[0x1E69E76D8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64VmMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == v5)
  {
  }

  v6 = _CodingPathNode.path.getter(*(v2 + *(a1 + 52)));
  v7 = *(v2 + *(a1 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v15 = &type metadata for _CodingKey;
  v16 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v10 = swift_allocObject();
  *&v14 = v10;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *(v10 + 40) = 2;
  v6[2] = v9 + 1;
  outlined init with take of Equatable(&v14, &v6[5 * v9 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a2 = v5;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6B08];
  v12 = type metadata accessor for DecodingError();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

uint64_t _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20 = a3;
  swift_getMetatypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss7Decoder_pMd) == a3)
  {
  }

  v9 = _CodingPathNode.path.getter(*(v4 + *(a2 + 52)));
  v10 = *(v4 + *(a2 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
  }

  v18 = &type metadata for _CodingKey;
  v19 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v13 = swift_allocObject();
  *&v17 = v13;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 16) = v10;
  *(v13 + 40) = 2;
  v9[2] = v12 + 1;
  outlined init with take of Equatable(&v17, &v9[5 * v12 + 4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *a4 = a1;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v14 = *MEMORY[0x1E69E6B08];
  v15 = type metadata accessor for DecodingError();
  return (*(*(v15 - 8) + 104))(a4, v14, v15);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _PlistUnkeyedDecodingContainer.decodeNil()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = v3;
  v65 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v55 - v9;
  v68 = v7;
  v75 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v55 - v11;
  v71 = AssociatedConformanceWitness;
  v72 = AssociatedTypeWitness;
  v12 = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v63 = &v55 - v28;
  v29 = *(v2 + 40);
  v30 = *(v14 + 16);
  v76 = v1;
  v59 = v29;
  v30(v16, v1 + v29, v13, v27);
  v69 = *(v20 + 48);
  v31 = v69(v16, 1, v12);
  v73 = v13;
  v67 = v14;
  if (v31 == 1)
  {
    v57 = v19;
    v32 = *(v14 + 8);
    v55 = v20 + 48;
    v56 = v32;
    v32(v16, v13);
    v58 = v2;
    swift_getAssociatedTypeWitness();
    v33 = swift_getAssociatedConformanceWitness();
    LOBYTE(v25) = v33 + 16;
    v34 = *(v33 + 16);
    v35 = swift_checkMetadataState();
    v36 = v74;
    v34(v35, v33);
    v37 = v36;
    v38 = v68;
    if ((*(v75 + 48))(v37, 1, v68) == 1)
    {
      (*(v60 + 8))(v74, v61);
      v39 = v57;
      (*(v20 + 56))(v57, 1, 1, v12);
      v2 = v58;
      v56(v39, v73);
LABEL_7:
      type metadata accessor for DecodingError();
      swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v2, v42);
      swift_willThrow();
      return v25 & 1;
    }

    v46 = v62;
    (*(v75 + 32))(v62, v74, v38);
    v47 = v71;
    LOBYTE(v25) = v71 + 80;
    v48 = *(v71 + 80);
    swift_unknownObjectRetain();
    v49 = swift_checkMetadataState();
    v50 = v70;
    v48(v46, v49, v47);
    if (v50)
    {
      (*(v75 + 8))(v46, v38);
      swift_unknownObjectRelease();
      return v25 & 1;
    }

    v70 = 0;
    (*(v75 + 8))(v46, v38);
    swift_unknownObjectRelease();
    v52 = v76;
    v53 = v59;
    v56((v76 + v59), v73);
    v54 = v66;
    (*(v20 + 16))(v52 + v53, v66, v12);
    LOBYTE(v25) = v20 + 56;
    v41 = *(v20 + 56);
    v41(v52 + v53, 0, 1, v12);
    v40 = *(v20 + 32);
    v19 = v57;
    v40(v57, v54, v12);
    v41(v19, 0, 1, v12);
    v2 = v58;
  }

  else
  {
    v40 = *(v20 + 32);
    v40(v25, v16, v12);
    v40(v19, v25, v12);
    v41 = *(v20 + 56);
    v41(v19, 0, 1, v12);
  }

  if (v69(v19, 1, v12) == 1)
  {
    (*(v67 + 8))(v19, v73);
    goto LABEL_7;
  }

  v43 = v63;
  v40(v63, v19, v12);
  LOBYTE(v25) = (*(v65 + 40))(v43);
  (*(v20 + 8))(v43, v12);
  if (v25)
  {
    v44 = v76;
    ++*(v76 + *(v2 + 48));
    v45 = v59;
    (*(v67 + 8))(v44 + v59, v73);
    v41(v44 + v45, 1, 1, v12);
  }

  return v25 & 1;
}

uint64_t _PlistUnkeyedDecodingContainer.decodeIfPresent(_:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = v3;
  v76 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v79 = v66 - v9;
  v81 = v7;
  v86 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v74 = v66 - v11;
  v85 = AssociatedConformanceWitness;
  v80 = AssociatedTypeWitness;
  v12 = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v66 - v18;
  v20 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v71 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v66 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v84 = v66 - v28;
  v29 = *(a1 + 40);
  v30 = *(v14 + 16);
  v87 = v1;
  v78 = v29;
  v30(v16, v1 + v29, v13, v27);
  v83 = v20[6];
  v31 = v83(v16, 1, v12);
  v77 = a1;
  v82 = v14;
  if (v31 == 1)
  {
    v66[1] = v20 + 6;
    v67 = v20;
    v68 = v19;
    v69 = v12;
    v70 = v13;
    v32 = *(v14 + 8);
    v32(v16, v13);
    swift_getAssociatedTypeWitness();
    v33 = swift_getAssociatedConformanceWitness();
    v34 = *(v33 + 16);
    v35 = swift_checkMetadataState();
    v36 = v79;
    v34(v35, v33);
    v37 = v81;
    if ((*(v86 + 48))(v36, 1, v81) == 1)
    {
      (*(v72 + 8))(v36, v73);
      v38 = v68;
      (v67[7])(v68, 1, 1, v69);
      v32(v38, v70);
      return 2;
    }

    v50 = v74;
    (*(v86 + 32))(v74, v36, v37);
    v51 = v85;
    v52 = *(v85 + 80);
    swift_unknownObjectRetain();
    v53 = v50;
    v54 = swift_checkMetadataState();
    v55 = v71;
    v56 = v88;
    v52(v53, v54, v51);
    v88 = v56;
    if (v56)
    {
      (*(v86 + 8))(v53, v37);
      return swift_unknownObjectRelease();
    }

    (*(v86 + 8))(v53, v37);
    swift_unknownObjectRelease();
    v59 = v32;
    v60 = v55;
    v61 = v87;
    v62 = v78;
    v13 = v70;
    v59(v87 + v78, v70);
    v42 = v67;
    v41 = v69;
    (v67[2])(v61 + v62, v60, v69);
    v40 = v42[7];
    v40(v61 + v62, 0, 1, v41);
    v39 = v42[4];
    v19 = v68;
    v39(v68, v60, v41);
    v40(v19, 0, 1, v41);
  }

  else
  {
    v39 = v20[4];
    v39(v25, v16, v12);
    v39(v19, v25, v12);
    v40 = v20[7];
    v40(v19, 0, 1, v12);
    v41 = v12;
    v42 = v20;
  }

  v43 = v83(v19, 1, v41);
  v44 = v84;
  if (v43 == 1)
  {
    (*(v82 + 8))(v19, v13);
    return 2;
  }

  v39(v84, v19, v41);
  v46 = v75;
  v47 = v76;
  if ((*(v76 + 40))(v44, v75, v76))
  {
    v48 = 2;
    v49 = v77;
  }

  else
  {
    v49 = v77;
    v57 = v88;
    v58 = specialized _PlistDecoder.unwrapBool<A>(from:for:_:)(v44, *(v87 + *(v77 + 52)), *(v87 + *(v77 + 48)), 0, 0, 2, v46, v47);
    v88 = v57;
    if (v57)
    {
      return (v42[1])(v44, v41);
    }

    v48 = v58 & 1;
  }

  (v42[1])(v44, v41);
  v63 = *(v49 + 48);
  v64 = v87;
  ++*(v87 + v63);
  v65 = v78;
  (*(v82 + 8))(v64 + v78, v13);
  v40(v64 + v65, 1, 1, v41);
  return v48;
}

{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = v4;
  v71 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v60 - v9;
  v77 = v7;
  v75 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v60 - v11;
  v76 = AssociatedConformanceWitness;
  v73 = AssociatedTypeWitness;
  v12 = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  v19 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v69 = &v60 - v27;
  v82 = a1;
  v29 = v28;
  v30 = *(v28 + 16);
  v72 = *(a1 + 40);
  v30(v15, v1 + v72, v13, v26);
  v79 = v19[6];
  v80 = v19 + 6;
  v31 = v79(v15, 1, v12);
  v78 = v29;
  v81 = v1;
  if (v31 == 1)
  {
    v62 = v12;
    v61 = v18;
    v63 = v19;
    v64 = v13;
    v32 = v29 + 8;
    v60 = *(v29 + 8);
    v60(v15, v13);
    v33 = v76;
    swift_getAssociatedTypeWitness();
    v34 = swift_getAssociatedConformanceWitness();
    v35 = *(v34 + 16);
    v36 = swift_checkMetadataState();
    v37 = v74;
    v35(v36, v34);
    v38 = v75;
    v39 = v77;
    if ((*(v75 + 48))(v37, 1, v77) == 1)
    {
      (*(v66 + 8))(v37, v67);
      v40 = v61;
      (v63[7])(v61, 1, 1, v62);
      v60(v40, v64);
      return 0;
    }

    v67 = v32;
    v50 = v68;
    (*(v38 + 32))(v68, v37, v39);
    v51 = *(v33 + 80);
    swift_unknownObjectRetain();
    v52 = swift_checkMetadataState();
    v53 = v65;
    v54 = v83;
    v51(v50, v52, v33);
    v83 = v54;
    if (v54)
    {
      (*(v38 + 8))(v50, v39);
      return swift_unknownObjectRelease();
    }

    (*(v38 + 8))(v50, v39);
    swift_unknownObjectRelease();
    v57 = v72;
    v58 = v81;
    v13 = v64;
    v60((v81 + v72), v64);
    v12 = v62;
    v43 = v63;
    (v63[2])(v58 + v57, v53, v62);
    v42 = v43[7];
    v42(v58 + v57, 0, 1, v12);
    v41 = v43[4];
    v18 = v61;
    (v41)(v61, v53, v12);
    v42(v18, 0, 1, v12);
  }

  else
  {
    v41 = v19[4];
    (v41)(v24, v15, v12);
    (v41)(v18, v24, v12);
    v42 = v19[7];
    v42(v18, 0, 1, v12);
    v43 = v19;
  }

  if (v79(v18, 1, v12) == 1)
  {
    (*(v78 + 8))(v18, v13);
    return 0;
  }

  v45 = v12;
  v46 = v69;
  v41();
  if ((*(v71 + 40))(v46))
  {
    v47 = 0;
    v49 = v81;
    v48 = v82;
  }

  else
  {
    v49 = v81;
    v48 = v82;
    v55 = v83;
    v56 = specialized _PlistDecoder.unwrapString<A>(from:for:_:)(v46, *(v81 + *(v82 + 52)), *(v81 + *(v82 + 48)), 0, 0, 2);
    v83 = v55;
    if (v55)
    {
      return (v43[1])(v46, v45);
    }

    v47 = v56;
  }

  (v43[1])(v46, v45);
  ++*(v49 + *(v48 + 48));
  v59 = v72;
  (*(v78 + 8))(v49 + v72, v13);
  v42(v49 + v59, 1, 1, v45);
  return v47;
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = v3;
  v99 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v85 = type metadata accessor for Optional();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v94 = &v80 - v7;
  v96 = v6;
  v95 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v80 - v9;
  v100 = AssociatedConformanceWitness;
  v101 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v80 - v26;
  v28 = *(v12 + 16);
  v87 = *(a1 + 40);
  v28(v14, &v103[v87], v11, v25);
  v29 = *(v18 + 48);
  v98 = v18 + 48;
  v97 = v29;
  v30 = v29(v14, 1, v10);
  v91 = a1;
  v93 = v12;
  if (v30 == 1)
  {
    v82 = v17;
    v80 = v27;
    v89 = v18;
    v83 = v10;
    v31 = *(v12 + 8);
    v90 = v11;
    v81 = v31;
    v31(v14, v11);
    swift_getAssociatedTypeWitness();
    v32 = swift_getAssociatedConformanceWitness();
    v33 = *(v32 + 16);
    v34 = swift_checkMetadataState();
    v35 = v103;
    v36 = v94;
    v33(v34, v32);
    v37 = v95;
    v38 = v96;
    if ((*(v95 + 48))(v36, 1, v96) == 1)
    {
      (*(v84 + 8))(v36, v85);
      v39 = v82;
      (*(v89 + 56))(v82, 1, 1, v83);
      v81(v39, v90);
      return 0;
    }

    v53 = v86;
    (*(v37 + 32))(v86, v36, v38);
    v54 = v100;
    v55 = *(v100 + 80);
    swift_unknownObjectRetain();
    v56 = swift_checkMetadataState();
    v57 = v102;
    v55(v53, v56, v54);
    v18 = v89;
    v102 = v57;
    if (v57)
    {
      (*(v37 + 8))(v53, v38);
      return swift_unknownObjectRelease();
    }

    (*(v37 + 8))(v53, v38);
    swift_unknownObjectRelease();
    v72 = v87;
    v11 = v90;
    v81(&v35[v87], v90);
    v73 = v92;
    v10 = v83;
    (*(v18 + 16))(&v35[v72], v92, v83);
    v41 = *(v18 + 56);
    v41(&v35[v72], 0, 1, v10);
    v40 = *(v18 + 32);
    v17 = v82;
    v40(v82, v73, v10);
    v41(v17, 0, 1, v10);
    v27 = v80;
  }

  else
  {
    v40 = *(v18 + 32);
    v40(v23, v14, v10);
    v40(v17, v23, v10);
    v41 = *(v18 + 56);
    v41(v17, 0, 1, v10);
  }

  v42 = v97(v17, 1, v10);
  v43 = v99;
  if (v42 == 1)
  {
    (*(v93 + 8))(v17, v11);
    return 0;
  }

  v90 = v11;
  v40(v27, v17, v10);
  v45 = v88;
  v46 = v18;
  v47 = *(v88 + 40);
  v48 = v47(v27, v43, v88);
  if (v48)
  {
    (*(v46 + 8))(v27, v10);
    v106 = 0;
LABEL_10:
    v49 = *(v91 + 48);
    v50 = v103;
    v51 = *&v103[v49];
    v107 = v48 & 1;
    *&v103[v49] = v51 + 1;
    v52 = v87;
    (*(v93 + 8))(&v50[v87], v90);
    v41(&v50[v52], 1, 1, v10);
    return v106;
  }

  v89 = v46;
  v83 = v10;
  v58 = *(v91 + 48);
  v101 = *&v103[*(v91 + 52)];
  v59 = *&v103[v58];
  v60 = v45;
  v61 = *v103;
  v104[1] = 0;
  v104[2] = 0;
  v104[0] = v59;
  v105 = 2;
  if (v47(v27, v43, v60))
  {
    v62 = v27;
    v63 = type metadata accessor for DecodingError();
    v64 = swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v66 = MEMORY[0x1E69E63B0];
    v67 = _CodingPathNode.path.getter(v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v69 = swift_allocObject();
    *(inited + 32) = v69;
    *(v69 + 16) = v59;
    *(v69 + 24) = 0;
    *(v69 + 32) = 0;
    *(v69 + 40) = 2;
    v108 = v67;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v63 - 8) + 104))(v66, *MEMORY[0x1E69E6B08], v63);
    v102 = v64;
    swift_willThrow();
    v70 = v83;
    v71 = v89;
  }

  else
  {
    v74 = *(v61 + 24);
    v75 = *(v60 + 80);
    v76 = lazy protocol witness table accessor for type Double and conformance Double();
    v77 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v78 = v77;
    v79 = v102;
    v75(&v106, v27, v74, v101, v104, MEMORY[0x1E69E63B0], &type metadata for _CodingKey, v76, v78, v43, v60);
    v71 = v89;
    v102 = v79;
    if (!v79)
    {
      swift_unknownObjectRelease();
      v10 = v83;
      (*(v71 + 8))(v27, v83);
      goto LABEL_10;
    }

    v62 = v27;
    swift_unknownObjectRelease();
    v70 = v83;
  }

  return (*(v71 + 8))(v62, v70);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = v3;
  v99 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v85 = type metadata accessor for Optional();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v94 = &v80 - v7;
  v96 = v6;
  v95 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v80 - v9;
  v100 = AssociatedConformanceWitness;
  v101 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v80 - v26;
  v28 = *(v12 + 16);
  v87 = *(a1 + 40);
  v28(v14, &v103[v87], v11, v25);
  v29 = *(v18 + 48);
  v98 = v18 + 48;
  v97 = v29;
  v30 = v29(v14, 1, v10);
  v91 = a1;
  v93 = v12;
  if (v30 == 1)
  {
    v82 = v17;
    v80 = v27;
    v89 = v18;
    v83 = v10;
    v31 = *(v12 + 8);
    v90 = v11;
    v81 = v31;
    v31(v14, v11);
    swift_getAssociatedTypeWitness();
    v32 = swift_getAssociatedConformanceWitness();
    v33 = *(v32 + 16);
    v34 = swift_checkMetadataState();
    v35 = v103;
    v36 = v94;
    v33(v34, v32);
    v37 = v95;
    v38 = v96;
    if ((*(v95 + 48))(v36, 1, v96) == 1)
    {
      (*(v84 + 8))(v36, v85);
      v39 = v82;
      (*(v89 + 56))(v82, 1, 1, v83);
      v81(v39, v90);
      return 0;
    }

    v53 = v86;
    (*(v37 + 32))(v86, v36, v38);
    v54 = v100;
    v55 = *(v100 + 80);
    swift_unknownObjectRetain();
    v56 = swift_checkMetadataState();
    v57 = v102;
    v55(v53, v56, v54);
    v18 = v89;
    v102 = v57;
    if (v57)
    {
      (*(v37 + 8))(v53, v38);
      return swift_unknownObjectRelease();
    }

    (*(v37 + 8))(v53, v38);
    swift_unknownObjectRelease();
    v72 = v87;
    v11 = v90;
    v81(&v35[v87], v90);
    v73 = v92;
    v10 = v83;
    (*(v18 + 16))(&v35[v72], v92, v83);
    v41 = *(v18 + 56);
    v41(&v35[v72], 0, 1, v10);
    v40 = *(v18 + 32);
    v17 = v82;
    v40(v82, v73, v10);
    v41(v17, 0, 1, v10);
    v27 = v80;
  }

  else
  {
    v40 = *(v18 + 32);
    v40(v23, v14, v10);
    v40(v17, v23, v10);
    v41 = *(v18 + 56);
    v41(v17, 0, 1, v10);
  }

  v42 = v97(v17, 1, v10);
  v43 = v99;
  if (v42 == 1)
  {
    (*(v93 + 8))(v17, v11);
    return 0;
  }

  v90 = v11;
  v40(v27, v17, v10);
  v45 = v88;
  v46 = v18;
  v47 = *(v88 + 40);
  v48 = v47(v27, v43, v88);
  if (v48)
  {
    (*(v46 + 8))(v27, v10);
    v106 = 0;
LABEL_10:
    v49 = *(v91 + 48);
    v50 = v103;
    v51 = *&v103[v49];
    v107 = v48 & 1;
    *&v103[v49] = v51 + 1;
    v52 = v87;
    (*(v93 + 8))(&v50[v87], v90);
    v41(&v50[v52], 1, 1, v10);
    return v106;
  }

  v89 = v46;
  v83 = v10;
  v58 = *(v91 + 48);
  v101 = *&v103[*(v91 + 52)];
  v59 = *&v103[v58];
  v60 = v45;
  v61 = *v103;
  v104[1] = 0;
  v104[2] = 0;
  v104[0] = v59;
  v105 = 2;
  if (v47(v27, v43, v60))
  {
    v62 = v27;
    v63 = type metadata accessor for DecodingError();
    v64 = swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v66 = MEMORY[0x1E69E6530];
    v67 = _CodingPathNode.path.getter(v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v69 = swift_allocObject();
    *(inited + 32) = v69;
    *(v69 + 16) = v59;
    *(v69 + 24) = 0;
    *(v69 + 32) = 0;
    *(v69 + 40) = 2;
    v108 = v67;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v63 - 8) + 104))(v66, *MEMORY[0x1E69E6B08], v63);
    v102 = v64;
    swift_willThrow();
    v70 = v83;
    v71 = v89;
  }

  else
  {
    v74 = *(v61 + 24);
    v75 = *(v60 + 88);
    v76 = lazy protocol witness table accessor for type Int and conformance Int();
    v77 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v78 = v77;
    v79 = v102;
    v75(&v106, v27, v74, v101, v104, MEMORY[0x1E69E6530], &type metadata for _CodingKey, v76, v78, v43, v60);
    v71 = v89;
    v102 = v79;
    if (!v79)
    {
      swift_unknownObjectRelease();
      v10 = v83;
      (*(v71 + 8))(v27, v83);
      goto LABEL_10;
    }

    v62 = v27;
    swift_unknownObjectRelease();
    v70 = v83;
  }

  return (*(v71 + 8))(v62, v70);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v87 = type metadata accessor for Optional();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v96 = &v81 - v7;
  v98 = v6;
  v97 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v81 - v9;
  v102 = AssociatedConformanceWitness;
  v103 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v81 - v26;
  v28 = *(v12 + 16);
  v89 = *(a1 + 40);
  v28(v14, &v105[v89], v11, v25);
  v99 = *(v18 + 48);
  v100 = v18 + 48;
  v29 = v99(v14, 1, v10);
  v93 = a1;
  v95 = v12;
  if (v29 != 1)
  {
    v39 = *(v18 + 32);
    v39(v23, v14, v10);
    v39(v17, v23, v10);
    v40 = *(v18 + 56);
    v40(v17, 0, 1, v10);
    goto LABEL_5;
  }

  v84 = v17;
  v82 = v27;
  v91 = v18;
  v85 = v10;
  v30 = *(v12 + 8);
  v92 = v11;
  v83 = v30;
  v30(v14, v11);
  swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v32 = *(v31 + 16);
  v33 = swift_checkMetadataState();
  v34 = v105;
  v35 = v96;
  v32(v33, v31);
  v36 = v97;
  v37 = v98;
  if ((*(v97 + 48))(v35, 1, v98) != 1)
  {
    v54 = v88;
    (*(v36 + 32))(v88, v35, v37);
    v55 = v102;
    v56 = *(v102 + 80);
    swift_unknownObjectRetain();
    v57 = swift_checkMetadataState();
    v58 = v104;
    v56(v54, v57, v55);
    v18 = v91;
    v104 = v58;
    if (v58)
    {
      (*(v36 + 8))(v54, v37);
      return swift_unknownObjectRelease();
    }

    (*(v36 + 8))(v54, v37);
    swift_unknownObjectRelease();
    v73 = v89;
    v11 = v92;
    v83(&v34[v89], v92);
    v74 = v94;
    v10 = v85;
    (*(v18 + 16))(&v34[v73], v94, v85);
    v40 = *(v18 + 56);
    v40(&v34[v73], 0, 1, v10);
    v39 = *(v18 + 32);
    v17 = v84;
    v39(v84, v74, v10);
    v40(v17, 0, 1, v10);
    v27 = v82;
LABEL_5:
    v41 = v99(v17, 1, v10);
    v42 = v101;
    if (v41 == 1)
    {
      (*(v95 + 8))(v17, v11);
      goto LABEL_7;
    }

    v92 = v11;
    v39(v27, v17, v10);
    v45 = v90;
    v46 = v18;
    v47 = *(v90 + 40);
    v48 = v47(v27, v42, v90);
    if (v48)
    {
      (*(v46 + 8))(v27, v10);
      LOBYTE(v109) = 0;
LABEL_10:
      v49 = *(v93 + 48);
      v50 = v105;
      v51 = *&v105[v49];
      BYTE1(v109) = v48 & 1;
      *&v105[v49] = v51 + 1;
      v52 = v89;
      (*(v95 + 8))(&v50[v89], v92);
      v40(&v50[v52], 1, 1, v10);
      v43 = v109;
      v44 = BYTE1(v109);
      return v43 | (v44 << 8);
    }

    v91 = v46;
    v85 = v10;
    v59 = *(v93 + 48);
    v103 = *&v105[*(v93 + 52)];
    v60 = *&v105[v59];
    v61 = v45;
    v62 = *v105;
    v107[1] = 0;
    v107[2] = 0;
    v107[0] = v60;
    v108 = 2;
    if (v47(v27, v42, v61))
    {
      v63 = v27;
      v64 = type metadata accessor for DecodingError();
      v65 = swift_allocError();
      v67 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v67 = MEMORY[0x1E69E7230];
      v68 = _CodingPathNode.path.getter(v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v70 = swift_allocObject();
      *(inited + 32) = v70;
      *(v70 + 16) = v60;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0;
      *(v70 + 40) = 2;
      v106 = v68;
      specialized Array.append<A>(contentsOf:)(inited);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v64 - 8) + 104))(v67, *MEMORY[0x1E69E6B08], v64);
      v104 = v65;
      swift_willThrow();
      v71 = v85;
      v72 = v91;
    }

    else
    {
      v75 = *(v62 + 24);
      v76 = *(v61 + 88);
      v77 = lazy protocol witness table accessor for type Int8 and conformance Int8();
      v78 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      swift_unknownObjectRetain();
      v79 = v78;
      v80 = v104;
      v76(&v109, v27, v75, v103, v107, MEMORY[0x1E69E7230], &type metadata for _CodingKey, v77, v79, v42, v61);
      v72 = v91;
      v104 = v80;
      if (!v80)
      {
        swift_unknownObjectRelease();
        v10 = v85;
        (*(v72 + 8))(v27, v85);
        goto LABEL_10;
      }

      v63 = v27;
      swift_unknownObjectRelease();
      v71 = v85;
    }

    return (*(v72 + 8))(v63, v71);
  }

  (*(v86 + 8))(v35, v87);
  v38 = v84;
  (*(v91 + 56))(v84, 1, 1, v85);
  v83(v38, v92);
LABEL_7:
  v43 = 0;
  v44 = 1;
  return v43 | (v44 << 8);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v87 = type metadata accessor for Optional();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v96 = &v81 - v7;
  v98 = v6;
  v97 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v81 - v9;
  v102 = AssociatedConformanceWitness;
  v103 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v81 - v26;
  v28 = *(v12 + 16);
  v89 = *(a1 + 40);
  v28(v14, &v105[v89], v11, v25);
  v99 = *(v18 + 48);
  v100 = v18 + 48;
  v29 = v99(v14, 1, v10);
  v93 = a1;
  v95 = v12;
  if (v29 != 1)
  {
    v39 = *(v18 + 32);
    v39(v23, v14, v10);
    v39(v17, v23, v10);
    v40 = *(v18 + 56);
    v40(v17, 0, 1, v10);
    goto LABEL_5;
  }

  v84 = v17;
  v82 = v27;
  v91 = v18;
  v85 = v10;
  v30 = *(v12 + 8);
  v92 = v11;
  v83 = v30;
  v30(v14, v11);
  swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v32 = *(v31 + 16);
  v33 = swift_checkMetadataState();
  v34 = v105;
  v35 = v96;
  v32(v33, v31);
  v36 = v97;
  v37 = v98;
  if ((*(v97 + 48))(v35, 1, v98) != 1)
  {
    v54 = v88;
    (*(v36 + 32))(v88, v35, v37);
    v55 = v102;
    v56 = *(v102 + 80);
    swift_unknownObjectRetain();
    v57 = swift_checkMetadataState();
    v58 = v104;
    v56(v54, v57, v55);
    v18 = v91;
    v104 = v58;
    if (v58)
    {
      (*(v36 + 8))(v54, v37);
      return swift_unknownObjectRelease();
    }

    (*(v36 + 8))(v54, v37);
    swift_unknownObjectRelease();
    v73 = v89;
    v11 = v92;
    v83(&v34[v89], v92);
    v74 = v94;
    v10 = v85;
    (*(v18 + 16))(&v34[v73], v94, v85);
    v40 = *(v18 + 56);
    v40(&v34[v73], 0, 1, v10);
    v39 = *(v18 + 32);
    v17 = v84;
    v39(v84, v74, v10);
    v40(v17, 0, 1, v10);
    v27 = v82;
LABEL_5:
    v41 = v99(v17, 1, v10);
    v42 = v101;
    if (v41 == 1)
    {
      (*(v95 + 8))(v17, v11);
      goto LABEL_7;
    }

    v92 = v11;
    v39(v27, v17, v10);
    v45 = v90;
    v46 = v18;
    v47 = *(v90 + 40);
    v48 = v47(v27, v42, v90);
    if (v48)
    {
      (*(v46 + 8))(v27, v10);
      LOWORD(v109) = 0;
LABEL_10:
      v49 = *(v93 + 48);
      v50 = v105;
      v51 = *&v105[v49];
      BYTE2(v109) = v48 & 1;
      *&v105[v49] = v51 + 1;
      v52 = v89;
      (*(v95 + 8))(&v50[v89], v92);
      v40(&v50[v52], 1, 1, v10);
      v43 = v109;
      v44 = BYTE2(v109);
      return v43 | (v44 << 16);
    }

    v91 = v46;
    v85 = v10;
    v59 = *(v93 + 48);
    v103 = *&v105[*(v93 + 52)];
    v60 = *&v105[v59];
    v61 = v45;
    v62 = *v105;
    v107[1] = 0;
    v107[2] = 0;
    v107[0] = v60;
    v108 = 2;
    if (v47(v27, v42, v61))
    {
      v63 = v27;
      v64 = type metadata accessor for DecodingError();
      v65 = swift_allocError();
      v67 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v67 = MEMORY[0x1E69E7290];
      v68 = _CodingPathNode.path.getter(v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v70 = swift_allocObject();
      *(inited + 32) = v70;
      *(v70 + 16) = v60;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0;
      *(v70 + 40) = 2;
      v106 = v68;
      specialized Array.append<A>(contentsOf:)(inited);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v64 - 8) + 104))(v67, *MEMORY[0x1E69E6B08], v64);
      v104 = v65;
      swift_willThrow();
      v71 = v85;
      v72 = v91;
    }

    else
    {
      v75 = *(v62 + 24);
      v76 = *(v61 + 88);
      v77 = lazy protocol witness table accessor for type Int16 and conformance Int16();
      v78 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      swift_unknownObjectRetain();
      v79 = v78;
      v80 = v104;
      v76(&v109, v27, v75, v103, v107, MEMORY[0x1E69E7290], &type metadata for _CodingKey, v77, v79, v42, v61);
      v72 = v91;
      v104 = v80;
      if (!v80)
      {
        swift_unknownObjectRelease();
        v10 = v85;
        (*(v72 + 8))(v27, v85);
        goto LABEL_10;
      }

      v63 = v27;
      swift_unknownObjectRelease();
      v71 = v85;
    }

    return (*(v72 + 8))(v63, v71);
  }

  (*(v86 + 8))(v35, v87);
  v38 = v84;
  (*(v91 + 56))(v84, 1, 1, v85);
  v83(v38, v92);
LABEL_7:
  v43 = 0;
  v44 = 1;
  return v43 | (v44 << 16);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = v3;
  v99 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v85 = type metadata accessor for Optional();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v94 = &v80 - v7;
  v96 = v6;
  v95 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v80 - v9;
  v100 = AssociatedConformanceWitness;
  v101 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v80 - v26;
  v28 = *(v12 + 16);
  v87 = *(a1 + 40);
  v28(v14, &v103[v87], v11, v25);
  v29 = *(v18 + 48);
  v98 = v18 + 48;
  v97 = v29;
  v30 = v29(v14, 1, v10);
  v91 = a1;
  v93 = v12;
  if (v30 == 1)
  {
    v82 = v17;
    v80 = v27;
    v89 = v18;
    v83 = v10;
    v31 = *(v12 + 8);
    v90 = v11;
    v81 = v31;
    v31(v14, v11);
    swift_getAssociatedTypeWitness();
    v32 = swift_getAssociatedConformanceWitness();
    v33 = *(v32 + 16);
    v34 = swift_checkMetadataState();
    v35 = v103;
    v36 = v94;
    v33(v34, v32);
    v37 = v95;
    v38 = v96;
    if ((*(v95 + 48))(v36, 1, v96) == 1)
    {
      (*(v84 + 8))(v36, v85);
      v39 = v82;
      (*(v89 + 56))(v82, 1, 1, v83);
      v81(v39, v90);
      return 0;
    }

    v53 = v86;
    (*(v37 + 32))(v86, v36, v38);
    v54 = v100;
    v55 = *(v100 + 80);
    swift_unknownObjectRetain();
    v56 = swift_checkMetadataState();
    v57 = v102;
    v55(v53, v56, v54);
    v18 = v89;
    v102 = v57;
    if (v57)
    {
      (*(v37 + 8))(v53, v38);
      return swift_unknownObjectRelease();
    }

    (*(v37 + 8))(v53, v38);
    swift_unknownObjectRelease();
    v72 = v87;
    v11 = v90;
    v81(&v35[v87], v90);
    v73 = v92;
    v10 = v83;
    (*(v18 + 16))(&v35[v72], v92, v83);
    v41 = *(v18 + 56);
    v41(&v35[v72], 0, 1, v10);
    v40 = *(v18 + 32);
    v17 = v82;
    v40(v82, v73, v10);
    v41(v17, 0, 1, v10);
    v27 = v80;
  }

  else
  {
    v40 = *(v18 + 32);
    v40(v23, v14, v10);
    v40(v17, v23, v10);
    v41 = *(v18 + 56);
    v41(v17, 0, 1, v10);
  }

  v42 = v97(v17, 1, v10);
  v43 = v99;
  if (v42 == 1)
  {
    (*(v93 + 8))(v17, v11);
    return 0;
  }

  v90 = v11;
  v40(v27, v17, v10);
  v45 = v88;
  v46 = v18;
  v47 = *(v88 + 40);
  v48 = v47(v27, v43, v88);
  if (v48)
  {
    (*(v46 + 8))(v27, v10);
    v106 = 0;
LABEL_10:
    v49 = *(v91 + 48);
    v50 = v103;
    v51 = *&v103[v49];
    v107 = v48 & 1;
    *&v103[v49] = v51 + 1;
    v52 = v87;
    (*(v93 + 8))(&v50[v87], v90);
    v41(&v50[v52], 1, 1, v10);
    return v106;
  }

  v89 = v46;
  v83 = v10;
  v58 = *(v91 + 48);
  v101 = *&v103[*(v91 + 52)];
  v59 = *&v103[v58];
  v60 = v45;
  v61 = *v103;
  v104[1] = 0;
  v104[2] = 0;
  v104[0] = v59;
  v105 = 2;
  if (v47(v27, v43, v60))
  {
    v62 = v27;
    v63 = type metadata accessor for DecodingError();
    v64 = swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v66 = MEMORY[0x1E69E7360];
    v67 = _CodingPathNode.path.getter(v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v69 = swift_allocObject();
    *(inited + 32) = v69;
    *(v69 + 16) = v59;
    *(v69 + 24) = 0;
    *(v69 + 32) = 0;
    *(v69 + 40) = 2;
    v108 = v67;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v63 - 8) + 104))(v66, *MEMORY[0x1E69E6B08], v63);
    v102 = v64;
    swift_willThrow();
    v70 = v83;
    v71 = v89;
  }

  else
  {
    v74 = *(v61 + 24);
    v75 = *(v60 + 88);
    v76 = lazy protocol witness table accessor for type Int64 and conformance Int64();
    v77 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v78 = v77;
    v79 = v102;
    v75(&v106, v27, v74, v101, v104, MEMORY[0x1E69E7360], &type metadata for _CodingKey, v76, v78, v43, v60);
    v71 = v89;
    v102 = v79;
    if (!v79)
    {
      swift_unknownObjectRelease();
      v10 = v83;
      (*(v71 + 8))(v27, v83);
      goto LABEL_10;
    }

    v62 = v27;
    swift_unknownObjectRelease();
    v70 = v83;
  }

  return (*(v71 + 8))(v62, v70);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = v3;
  v99 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v85 = type metadata accessor for Optional();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v94 = &v80 - v7;
  v96 = v6;
  v95 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v80 - v9;
  v100 = AssociatedConformanceWitness;
  v101 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v80 - v26;
  v28 = *(v12 + 16);
  v87 = *(a1 + 40);
  v28(v14, &v103[v87], v11, v25);
  v29 = *(v18 + 48);
  v98 = v18 + 48;
  v97 = v29;
  v30 = v29(v14, 1, v10);
  v91 = a1;
  v93 = v12;
  if (v30 == 1)
  {
    v82 = v17;
    v80 = v27;
    v89 = v18;
    v83 = v10;
    v31 = *(v12 + 8);
    v90 = v11;
    v81 = v31;
    v31(v14, v11);
    swift_getAssociatedTypeWitness();
    v32 = swift_getAssociatedConformanceWitness();
    v33 = *(v32 + 16);
    v34 = swift_checkMetadataState();
    v35 = v103;
    v36 = v94;
    v33(v34, v32);
    v37 = v95;
    v38 = v96;
    if ((*(v95 + 48))(v36, 1, v96) == 1)
    {
      (*(v84 + 8))(v36, v85);
      v39 = v82;
      (*(v89 + 56))(v82, 1, 1, v83);
      v81(v39, v90);
      return 0;
    }

    v53 = v86;
    (*(v37 + 32))(v86, v36, v38);
    v54 = v100;
    v55 = *(v100 + 80);
    swift_unknownObjectRetain();
    v56 = swift_checkMetadataState();
    v57 = v102;
    v55(v53, v56, v54);
    v18 = v89;
    v102 = v57;
    if (v57)
    {
      (*(v37 + 8))(v53, v38);
      return swift_unknownObjectRelease();
    }

    (*(v37 + 8))(v53, v38);
    swift_unknownObjectRelease();
    v72 = v87;
    v11 = v90;
    v81(&v35[v87], v90);
    v73 = v92;
    v10 = v83;
    (*(v18 + 16))(&v35[v72], v92, v83);
    v41 = *(v18 + 56);
    v41(&v35[v72], 0, 1, v10);
    v40 = *(v18 + 32);
    v17 = v82;
    v40(v82, v73, v10);
    v41(v17, 0, 1, v10);
    v27 = v80;
  }

  else
  {
    v40 = *(v18 + 32);
    v40(v23, v14, v10);
    v40(v17, v23, v10);
    v41 = *(v18 + 56);
    v41(v17, 0, 1, v10);
  }

  v42 = v97(v17, 1, v10);
  v43 = v99;
  if (v42 == 1)
  {
    (*(v93 + 8))(v17, v11);
    return 0;
  }

  v90 = v11;
  v40(v27, v17, v10);
  v45 = v88;
  v46 = v18;
  v47 = *(v88 + 40);
  v48 = v47(v27, v43, v88);
  if (v48)
  {
    (*(v46 + 8))(v27, v10);
    v106 = 0;
LABEL_10:
    v49 = *(v91 + 48);
    v50 = v103;
    v51 = *&v103[v49];
    v107 = v48 & 1;
    *&v103[v49] = v51 + 1;
    v52 = v87;
    (*(v93 + 8))(&v50[v87], v90);
    v41(&v50[v52], 1, 1, v10);
    return v106;
  }

  v89 = v46;
  v83 = v10;
  v58 = *(v91 + 48);
  v101 = *&v103[*(v91 + 52)];
  v59 = *&v103[v58];
  v60 = v45;
  v61 = *v103;
  v104[1] = 0;
  v104[2] = 0;
  v104[0] = v59;
  v105 = 2;
  if (v47(v27, v43, v60))
  {
    v62 = v27;
    v63 = type metadata accessor for DecodingError();
    v64 = swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v66 = MEMORY[0x1E69E6810];
    v67 = _CodingPathNode.path.getter(v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v69 = swift_allocObject();
    *(inited + 32) = v69;
    *(v69 + 16) = v59;
    *(v69 + 24) = 0;
    *(v69 + 32) = 0;
    *(v69 + 40) = 2;
    v108 = v67;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v63 - 8) + 104))(v66, *MEMORY[0x1E69E6B08], v63);
    v102 = v64;
    swift_willThrow();
    v70 = v83;
    v71 = v89;
  }

  else
  {
    v74 = *(v61 + 24);
    v75 = *(v60 + 88);
    v76 = lazy protocol witness table accessor for type UInt and conformance UInt();
    v77 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v78 = v77;
    v79 = v102;
    v75(&v106, v27, v74, v101, v104, MEMORY[0x1E69E6810], &type metadata for _CodingKey, v76, v78, v43, v60);
    v71 = v89;
    v102 = v79;
    if (!v79)
    {
      swift_unknownObjectRelease();
      v10 = v83;
      (*(v71 + 8))(v27, v83);
      goto LABEL_10;
    }

    v62 = v27;
    swift_unknownObjectRelease();
    v70 = v83;
  }

  return (*(v71 + 8))(v62, v70);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v87 = type metadata accessor for Optional();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v96 = &v81 - v7;
  v98 = v6;
  v97 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v81 - v9;
  v102 = AssociatedConformanceWitness;
  v103 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v81 - v26;
  v28 = *(v12 + 16);
  v89 = *(a1 + 40);
  v28(v14, &v105[v89], v11, v25);
  v99 = *(v18 + 48);
  v100 = v18 + 48;
  v29 = v99(v14, 1, v10);
  v93 = a1;
  v95 = v12;
  if (v29 != 1)
  {
    v39 = *(v18 + 32);
    v39(v23, v14, v10);
    v39(v17, v23, v10);
    v40 = *(v18 + 56);
    v40(v17, 0, 1, v10);
    goto LABEL_5;
  }

  v84 = v17;
  v82 = v27;
  v91 = v18;
  v85 = v10;
  v30 = *(v12 + 8);
  v92 = v11;
  v83 = v30;
  v30(v14, v11);
  swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v32 = *(v31 + 16);
  v33 = swift_checkMetadataState();
  v34 = v105;
  v35 = v96;
  v32(v33, v31);
  v36 = v97;
  v37 = v98;
  if ((*(v97 + 48))(v35, 1, v98) != 1)
  {
    v54 = v88;
    (*(v36 + 32))(v88, v35, v37);
    v55 = v102;
    v56 = *(v102 + 80);
    swift_unknownObjectRetain();
    v57 = swift_checkMetadataState();
    v58 = v104;
    v56(v54, v57, v55);
    v18 = v91;
    v104 = v58;
    if (v58)
    {
      (*(v36 + 8))(v54, v37);
      return swift_unknownObjectRelease();
    }

    (*(v36 + 8))(v54, v37);
    swift_unknownObjectRelease();
    v73 = v89;
    v11 = v92;
    v83(&v34[v89], v92);
    v74 = v94;
    v10 = v85;
    (*(v18 + 16))(&v34[v73], v94, v85);
    v40 = *(v18 + 56);
    v40(&v34[v73], 0, 1, v10);
    v39 = *(v18 + 32);
    v17 = v84;
    v39(v84, v74, v10);
    v40(v17, 0, 1, v10);
    v27 = v82;
LABEL_5:
    v41 = v99(v17, 1, v10);
    v42 = v101;
    if (v41 == 1)
    {
      (*(v95 + 8))(v17, v11);
      goto LABEL_7;
    }

    v92 = v11;
    v39(v27, v17, v10);
    v45 = v90;
    v46 = v18;
    v47 = *(v90 + 40);
    v48 = v47(v27, v42, v90);
    if (v48)
    {
      (*(v46 + 8))(v27, v10);
      LOBYTE(v109) = 0;
LABEL_10:
      v49 = *(v93 + 48);
      v50 = v105;
      v51 = *&v105[v49];
      BYTE1(v109) = v48 & 1;
      *&v105[v49] = v51 + 1;
      v52 = v89;
      (*(v95 + 8))(&v50[v89], v92);
      v40(&v50[v52], 1, 1, v10);
      v43 = v109;
      v44 = BYTE1(v109);
      return v43 | (v44 << 8);
    }

    v91 = v46;
    v85 = v10;
    v59 = *(v93 + 48);
    v103 = *&v105[*(v93 + 52)];
    v60 = *&v105[v59];
    v61 = v45;
    v62 = *v105;
    v107[1] = 0;
    v107[2] = 0;
    v107[0] = v60;
    v108 = 2;
    if (v47(v27, v42, v61))
    {
      v63 = v27;
      v64 = type metadata accessor for DecodingError();
      v65 = swift_allocError();
      v67 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v67 = MEMORY[0x1E69E7508];
      v68 = _CodingPathNode.path.getter(v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v70 = swift_allocObject();
      *(inited + 32) = v70;
      *(v70 + 16) = v60;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0;
      *(v70 + 40) = 2;
      v106 = v68;
      specialized Array.append<A>(contentsOf:)(inited);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v64 - 8) + 104))(v67, *MEMORY[0x1E69E6B08], v64);
      v104 = v65;
      swift_willThrow();
      v71 = v85;
      v72 = v91;
    }

    else
    {
      v75 = *(v62 + 24);
      v76 = *(v61 + 88);
      v77 = lazy protocol witness table accessor for type UInt8 and conformance UInt8();
      v78 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      swift_unknownObjectRetain();
      v79 = v78;
      v80 = v104;
      v76(&v109, v27, v75, v103, v107, MEMORY[0x1E69E7508], &type metadata for _CodingKey, v77, v79, v42, v61);
      v72 = v91;
      v104 = v80;
      if (!v80)
      {
        swift_unknownObjectRelease();
        v10 = v85;
        (*(v72 + 8))(v27, v85);
        goto LABEL_10;
      }

      v63 = v27;
      swift_unknownObjectRelease();
      v71 = v85;
    }

    return (*(v72 + 8))(v63, v71);
  }

  (*(v86 + 8))(v35, v87);
  v38 = v84;
  (*(v91 + 56))(v84, 1, 1, v85);
  v83(v38, v92);
LABEL_7:
  v43 = 0;
  v44 = 1;
  return v43 | (v44 << 8);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v87 = type metadata accessor for Optional();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v96 = &v81 - v7;
  v98 = v6;
  v97 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v81 - v9;
  v102 = AssociatedConformanceWitness;
  v103 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v81 - v26;
  v28 = *(v12 + 16);
  v89 = *(a1 + 40);
  v28(v14, &v105[v89], v11, v25);
  v99 = *(v18 + 48);
  v100 = v18 + 48;
  v29 = v99(v14, 1, v10);
  v93 = a1;
  v95 = v12;
  if (v29 != 1)
  {
    v39 = *(v18 + 32);
    v39(v23, v14, v10);
    v39(v17, v23, v10);
    v40 = *(v18 + 56);
    v40(v17, 0, 1, v10);
    goto LABEL_5;
  }

  v84 = v17;
  v82 = v27;
  v91 = v18;
  v85 = v10;
  v30 = *(v12 + 8);
  v92 = v11;
  v83 = v30;
  v30(v14, v11);
  swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v32 = *(v31 + 16);
  v33 = swift_checkMetadataState();
  v34 = v105;
  v35 = v96;
  v32(v33, v31);
  v36 = v97;
  v37 = v98;
  if ((*(v97 + 48))(v35, 1, v98) != 1)
  {
    v54 = v88;
    (*(v36 + 32))(v88, v35, v37);
    v55 = v102;
    v56 = *(v102 + 80);
    swift_unknownObjectRetain();
    v57 = swift_checkMetadataState();
    v58 = v104;
    v56(v54, v57, v55);
    v18 = v91;
    v104 = v58;
    if (v58)
    {
      (*(v36 + 8))(v54, v37);
      return swift_unknownObjectRelease();
    }

    (*(v36 + 8))(v54, v37);
    swift_unknownObjectRelease();
    v73 = v89;
    v11 = v92;
    v83(&v34[v89], v92);
    v74 = v94;
    v10 = v85;
    (*(v18 + 16))(&v34[v73], v94, v85);
    v40 = *(v18 + 56);
    v40(&v34[v73], 0, 1, v10);
    v39 = *(v18 + 32);
    v17 = v84;
    v39(v84, v74, v10);
    v40(v17, 0, 1, v10);
    v27 = v82;
LABEL_5:
    v41 = v99(v17, 1, v10);
    v42 = v101;
    if (v41 == 1)
    {
      (*(v95 + 8))(v17, v11);
      goto LABEL_7;
    }

    v92 = v11;
    v39(v27, v17, v10);
    v45 = v90;
    v46 = v18;
    v47 = *(v90 + 40);
    v48 = v47(v27, v42, v90);
    if (v48)
    {
      (*(v46 + 8))(v27, v10);
      LOWORD(v109) = 0;
LABEL_10:
      v49 = *(v93 + 48);
      v50 = v105;
      v51 = *&v105[v49];
      BYTE2(v109) = v48 & 1;
      *&v105[v49] = v51 + 1;
      v52 = v89;
      (*(v95 + 8))(&v50[v89], v92);
      v40(&v50[v52], 1, 1, v10);
      v43 = v109;
      v44 = BYTE2(v109);
      return v43 | (v44 << 16);
    }

    v91 = v46;
    v85 = v10;
    v59 = *(v93 + 48);
    v103 = *&v105[*(v93 + 52)];
    v60 = *&v105[v59];
    v61 = v45;
    v62 = *v105;
    v107[1] = 0;
    v107[2] = 0;
    v107[0] = v60;
    v108 = 2;
    if (v47(v27, v42, v61))
    {
      v63 = v27;
      v64 = type metadata accessor for DecodingError();
      v65 = swift_allocError();
      v67 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v67 = MEMORY[0x1E69E75F8];
      v68 = _CodingPathNode.path.getter(v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v70 = swift_allocObject();
      *(inited + 32) = v70;
      *(v70 + 16) = v60;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0;
      *(v70 + 40) = 2;
      v106 = v68;
      specialized Array.append<A>(contentsOf:)(inited);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v64 - 8) + 104))(v67, *MEMORY[0x1E69E6B08], v64);
      v104 = v65;
      swift_willThrow();
      v71 = v85;
      v72 = v91;
    }

    else
    {
      v75 = *(v62 + 24);
      v76 = *(v61 + 88);
      v77 = lazy protocol witness table accessor for type UInt16 and conformance UInt16();
      v78 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      swift_unknownObjectRetain();
      v79 = v78;
      v80 = v104;
      v76(&v109, v27, v75, v103, v107, MEMORY[0x1E69E75F8], &type metadata for _CodingKey, v77, v79, v42, v61);
      v72 = v91;
      v104 = v80;
      if (!v80)
      {
        swift_unknownObjectRelease();
        v10 = v85;
        (*(v72 + 8))(v27, v85);
        goto LABEL_10;
      }

      v63 = v27;
      swift_unknownObjectRelease();
      v71 = v85;
    }

    return (*(v72 + 8))(v63, v71);
  }

  (*(v86 + 8))(v35, v87);
  v38 = v84;
  (*(v91 + 56))(v84, 1, 1, v85);
  v83(v38, v92);
LABEL_7:
  v43 = 0;
  v44 = 1;
  return v43 | (v44 << 16);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = v3;
  v99 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v85 = type metadata accessor for Optional();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v94 = &v80 - v7;
  v96 = v6;
  v95 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v80 - v9;
  v100 = AssociatedConformanceWitness;
  v101 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v80 - v26;
  v28 = *(v12 + 16);
  v87 = *(a1 + 40);
  v28(v14, &v103[v87], v11, v25);
  v29 = *(v18 + 48);
  v98 = v18 + 48;
  v97 = v29;
  v30 = v29(v14, 1, v10);
  v91 = a1;
  v93 = v12;
  if (v30 == 1)
  {
    v82 = v17;
    v80 = v27;
    v89 = v18;
    v83 = v10;
    v31 = *(v12 + 8);
    v90 = v11;
    v81 = v31;
    v31(v14, v11);
    swift_getAssociatedTypeWitness();
    v32 = swift_getAssociatedConformanceWitness();
    v33 = *(v32 + 16);
    v34 = swift_checkMetadataState();
    v35 = v103;
    v36 = v94;
    v33(v34, v32);
    v37 = v95;
    v38 = v96;
    if ((*(v95 + 48))(v36, 1, v96) == 1)
    {
      (*(v84 + 8))(v36, v85);
      v39 = v82;
      (*(v89 + 56))(v82, 1, 1, v83);
      v81(v39, v90);
      return 0;
    }

    v53 = v86;
    (*(v37 + 32))(v86, v36, v38);
    v54 = v100;
    v55 = *(v100 + 80);
    swift_unknownObjectRetain();
    v56 = swift_checkMetadataState();
    v57 = v102;
    v55(v53, v56, v54);
    v18 = v89;
    v102 = v57;
    if (v57)
    {
      (*(v37 + 8))(v53, v38);
      return swift_unknownObjectRelease();
    }

    (*(v37 + 8))(v53, v38);
    swift_unknownObjectRelease();
    v72 = v87;
    v11 = v90;
    v81(&v35[v87], v90);
    v73 = v92;
    v10 = v83;
    (*(v18 + 16))(&v35[v72], v92, v83);
    v41 = *(v18 + 56);
    v41(&v35[v72], 0, 1, v10);
    v40 = *(v18 + 32);
    v17 = v82;
    v40(v82, v73, v10);
    v41(v17, 0, 1, v10);
    v27 = v80;
  }

  else
  {
    v40 = *(v18 + 32);
    v40(v23, v14, v10);
    v40(v17, v23, v10);
    v41 = *(v18 + 56);
    v41(v17, 0, 1, v10);
  }

  v42 = v97(v17, 1, v10);
  v43 = v99;
  if (v42 == 1)
  {
    (*(v93 + 8))(v17, v11);
    return 0;
  }

  v90 = v11;
  v40(v27, v17, v10);
  v45 = v88;
  v46 = v18;
  v47 = *(v88 + 40);
  v48 = v47(v27, v43, v88);
  if (v48)
  {
    (*(v46 + 8))(v27, v10);
    v106 = 0;
LABEL_10:
    v49 = *(v91 + 48);
    v50 = v103;
    v51 = *&v103[v49];
    v107 = v48 & 1;
    *&v103[v49] = v51 + 1;
    v52 = v87;
    (*(v93 + 8))(&v50[v87], v90);
    v41(&v50[v52], 1, 1, v10);
    return v106;
  }

  v89 = v46;
  v83 = v10;
  v58 = *(v91 + 48);
  v101 = *&v103[*(v91 + 52)];
  v59 = *&v103[v58];
  v60 = v45;
  v61 = *v103;
  v104[1] = 0;
  v104[2] = 0;
  v104[0] = v59;
  v105 = 2;
  if (v47(v27, v43, v60))
  {
    v62 = v27;
    v63 = type metadata accessor for DecodingError();
    v64 = swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v66 = MEMORY[0x1E69E76D8];
    v67 = _CodingPathNode.path.getter(v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v69 = swift_allocObject();
    *(inited + 32) = v69;
    *(v69 + 16) = v59;
    *(v69 + 24) = 0;
    *(v69 + 32) = 0;
    *(v69 + 40) = 2;
    v108 = v67;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v63 - 8) + 104))(v66, *MEMORY[0x1E69E6B08], v63);
    v102 = v64;
    swift_willThrow();
    v70 = v83;
    v71 = v89;
  }

  else
  {
    v74 = *(v61 + 24);
    v75 = *(v60 + 88);
    v76 = lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    v77 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v78 = v77;
    v79 = v102;
    v75(&v106, v27, v74, v101, v104, MEMORY[0x1E69E76D8], &type metadata for _CodingKey, v76, v78, v43, v60);
    v71 = v89;
    v102 = v79;
    if (!v79)
    {
      swift_unknownObjectRelease();
      v10 = v83;
      (*(v71 + 8))(v27, v83);
      goto LABEL_10;
    }

    v62 = v27;
    swift_unknownObjectRelease();
    v70 = v83;
  }

  return (*(v71 + 8))(v62, v70);
}

double _PlistUnkeyedDecodingContainer.decode(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v94 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v86 - v6;
  v98 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v102 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v25;
  v26 = *(v11 + 16);
  v88 = *(a1 + 40);
  v26(v13, &v107[v88], v10, v24);
  v27 = v17[6];
  v100 = v17 + 6;
  v99 = v27;
  v28 = v27(v13, 1, v9);
  v104 = a1;
  v96 = v11;
  if (v28 == 1)
  {
    v86 = v16;
    v97 = v17;
    v95 = v9;
    v29 = *(v11 + 8);
    v89 = v10;
    v87 = v29;
    v29(v13, v10);
    v30 = v107;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v30;
    v35 = v105;
    v32(v33, v31);
    v36 = v35;
    v37 = v98;
    if ((*(v106 + 48))(v36, 1, v98) == 1)
    {
      (*(v91 + 8))(v105, v92);
      v38 = v86;
      (v97[7])(v86, 1, 1, v95);
      v39 = v104;
      v87(v38, v89);
LABEL_7:
      type metadata accessor for DecodingError();
      v48 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v39, v49);
      v108 = v48;
      swift_willThrow();
      return result;
    }

    v63 = v93;
    (*(v106 + 32))(v93, v105, v37);
    v64 = v34;
    v65 = v102;
    v66 = *(v102 + 80);
    swift_unknownObjectRetain();
    v67 = v63;
    v68 = swift_checkMetadataState();
    v69 = v90;
    v70 = v108;
    v66(v67, v68, v65);
    v9 = v95;
    v108 = v70;
    if (v70)
    {
      (*(v106 + 8))(v67, v37);
      swift_unknownObjectRelease();
      return result;
    }

    (*(v106 + 8))(v67, v37);
    swift_unknownObjectRelease();
    v77 = v88;
    v78 = v64;
    v10 = v89;
    v87(v64 + v88, v89);
    v17 = v97;
    (v97[2])(v64 + v77, v69, v9);
    v79 = v17[7];
    v79(v64 + v77, 0, 1, v9);
    v80 = v79;
    v40 = v17[4];
    v81 = v86;
    v40(v86, v69, v9);
    v82 = v80;
    v80(v81, 0, 1, v9);
    v43 = v81;
    v42 = v78;
    v41 = v82;
  }

  else
  {
    v40 = v17[4];
    v40(v22, v13, v9);
    v40(v16, v22, v9);
    v41 = v17[7];
    v41(v16, 0, 1, v9);
    v42 = v107;
    v43 = v16;
  }

  v44 = v99(v43, 1, v9);
  v45 = v103;
  v39 = v104;
  v46 = v43;
  v47 = v101;
  if (v44 == 1)
  {
    (*(v96 + 8))(v46, v10);
    goto LABEL_7;
  }

  v89 = v10;
  v97 = v17;
  v40(v103, v46, v9);
  v51 = *v42;
  v52 = v42;
  v53 = *(v42 + *(v39 + 52));
  v106 = *(v39 + 48);
  v54 = *(v52 + v106);
  v110[1] = 0;
  v110[2] = 0;
  v110[0] = v54;
  v111 = 2;
  v55 = v94;
  if ((*(v94 + 40))(v45, v47, v94))
  {
    v56 = type metadata accessor for DecodingError();
    v57 = swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v59 = MEMORY[0x1E69E63B0];
    v60 = _CodingPathNode.path.getter(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v62 = swift_allocObject();
    *(inited + 32) = v62;
    *(v62 + 16) = v54;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 2;
    v109 = v60;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x1E69E6B08], v56);
    v108 = v57;
    swift_willThrow();
  }

  else
  {
    v71 = v45;
    v95 = v9;
    v72 = *(v51 + 24);
    v105 = *(v55 + 80);
    v73 = lazy protocol witness table accessor for type Double and conformance Double();
    v74 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v75 = v74;
    v76 = v108;
    (v105)(&v112, v71, v72, v53, v110, MEMORY[0x1E69E63B0], &type metadata for _CodingKey, v73, v75, v47, v55);
    v108 = v76;
    if (!v76)
    {
      swift_unknownObjectRelease();
      v83 = v95;
      (v97[1])(v71, v95);
      v84 = v107;
      *&v107[v106] = v54 + 1;
      v85 = v88;
      (*(v96 + 8))(&v84[v88], v89);
      v41(&v84[v85], 1, 1, v83);
      return v112;
    }

    swift_unknownObjectRelease();
    v9 = v95;
  }

  (v97[1])(v103, v9);
  return result;
}

float _PlistUnkeyedDecodingContainer.decode(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v94 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v86 - v6;
  v98 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v102 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v25;
  v26 = *(v11 + 16);
  v88 = *(a1 + 40);
  v26(v13, &v107[v88], v10, v24);
  v27 = v17[6];
  v100 = v17 + 6;
  v99 = v27;
  v28 = v27(v13, 1, v9);
  v104 = a1;
  v96 = v11;
  if (v28 == 1)
  {
    v86 = v16;
    v97 = v17;
    v95 = v9;
    v29 = *(v11 + 8);
    v89 = v10;
    v87 = v29;
    v29(v13, v10);
    v30 = v107;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v30;
    v35 = v105;
    v32(v33, v31);
    v36 = v35;
    v37 = v98;
    if ((*(v106 + 48))(v36, 1, v98) == 1)
    {
      (*(v91 + 8))(v105, v92);
      v38 = v86;
      (v97[7])(v86, 1, 1, v95);
      v39 = v104;
      v87(v38, v89);
LABEL_7:
      type metadata accessor for DecodingError();
      v48 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v39, v49);
      v108 = v48;
      swift_willThrow();
      return result;
    }

    v63 = v93;
    (*(v106 + 32))(v93, v105, v37);
    v64 = v34;
    v65 = v102;
    v66 = *(v102 + 80);
    swift_unknownObjectRetain();
    v67 = v63;
    v68 = swift_checkMetadataState();
    v69 = v90;
    v70 = v108;
    v66(v67, v68, v65);
    v9 = v95;
    v108 = v70;
    if (v70)
    {
      (*(v106 + 8))(v67, v37);
      swift_unknownObjectRelease();
      return result;
    }

    (*(v106 + 8))(v67, v37);
    swift_unknownObjectRelease();
    v77 = v88;
    v78 = v64;
    v10 = v89;
    v87(v64 + v88, v89);
    v17 = v97;
    (v97[2])(v64 + v77, v69, v9);
    v79 = v17[7];
    v79(v64 + v77, 0, 1, v9);
    v80 = v79;
    v40 = v17[4];
    v81 = v86;
    v40(v86, v69, v9);
    v82 = v80;
    v80(v81, 0, 1, v9);
    v43 = v81;
    v42 = v78;
    v41 = v82;
  }

  else
  {
    v40 = v17[4];
    v40(v22, v13, v9);
    v40(v16, v22, v9);
    v41 = v17[7];
    v41(v16, 0, 1, v9);
    v42 = v107;
    v43 = v16;
  }

  v44 = v99(v43, 1, v9);
  v45 = v103;
  v39 = v104;
  v46 = v43;
  v47 = v101;
  if (v44 == 1)
  {
    (*(v96 + 8))(v46, v10);
    goto LABEL_7;
  }

  v89 = v10;
  v97 = v17;
  v40(v103, v46, v9);
  v51 = *v42;
  v52 = v42;
  v53 = *(v42 + *(v39 + 52));
  v106 = *(v39 + 48);
  v54 = *(v52 + v106);
  v110[1] = 0;
  v110[2] = 0;
  v110[0] = v54;
  v111 = 2;
  v55 = v94;
  if ((*(v94 + 40))(v45, v47, v94))
  {
    v56 = type metadata accessor for DecodingError();
    v57 = swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v59 = MEMORY[0x1E69E6448];
    v60 = _CodingPathNode.path.getter(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v62 = swift_allocObject();
    *(inited + 32) = v62;
    *(v62 + 16) = v54;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 2;
    v109 = v60;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x1E69E6B08], v56);
    v108 = v57;
    swift_willThrow();
  }

  else
  {
    v71 = v45;
    v95 = v9;
    v72 = *(v51 + 24);
    v105 = *(v55 + 80);
    v73 = lazy protocol witness table accessor for type Float and conformance Float();
    v74 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v75 = v74;
    v76 = v108;
    (v105)(&v112, v71, v72, v53, v110, MEMORY[0x1E69E6448], &type metadata for _CodingKey, v73, v75, v47, v55);
    v108 = v76;
    if (!v76)
    {
      swift_unknownObjectRelease();
      v83 = v95;
      (v97[1])(v71, v95);
      v84 = v107;
      *&v107[v106] = v54 + 1;
      v85 = v88;
      (*(v96 + 8))(&v84[v88], v89);
      v41(&v84[v85], 1, 1, v83);
      return *&v112;
    }

    swift_unknownObjectRelease();
    v9 = v95;
  }

  (v97[1])(v103, v9);
  return result;
}

unint64_t _PlistUnkeyedDecodingContainer.decodeIfPresent(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v87 = type metadata accessor for Optional();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v96 = &v81 - v7;
  v98 = v6;
  v97 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v81 - v9;
  v102 = AssociatedConformanceWitness;
  v103 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v81 - v26;
  v28 = *(v12 + 16);
  v89 = *(a1 + 40);
  v28(v14, &v105[v89], v11, v25);
  v99 = *(v18 + 48);
  v100 = v18 + 48;
  v29 = v99(v14, 1, v10);
  v93 = a1;
  v95 = v12;
  if (v29 != 1)
  {
    v39 = *(v18 + 32);
    v39(v23, v14, v10);
    v39(v17, v23, v10);
    v40 = *(v18 + 56);
    v40(v17, 0, 1, v10);
    goto LABEL_5;
  }

  v84 = v17;
  v82 = v27;
  v91 = v18;
  v85 = v10;
  v30 = *(v12 + 8);
  v92 = v11;
  v83 = v30;
  v30(v14, v11);
  swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v32 = *(v31 + 16);
  v33 = swift_checkMetadataState();
  v34 = v105;
  v35 = v96;
  v32(v33, v31);
  v36 = v97;
  v37 = v98;
  if ((*(v97 + 48))(v35, 1, v98) != 1)
  {
    v54 = v88;
    (*(v36 + 32))(v88, v35, v37);
    v55 = v102;
    v56 = *(v102 + 80);
    swift_unknownObjectRetain();
    v57 = swift_checkMetadataState();
    v58 = v104;
    v56(v54, v57, v55);
    v18 = v91;
    v104 = v58;
    if (v58)
    {
      (*(v36 + 8))(v54, v37);
      return swift_unknownObjectRelease();
    }

    (*(v36 + 8))(v54, v37);
    swift_unknownObjectRelease();
    v73 = v89;
    v11 = v92;
    v83(&v34[v89], v92);
    v74 = v94;
    v10 = v85;
    (*(v18 + 16))(&v34[v73], v94, v85);
    v40 = *(v18 + 56);
    v40(&v34[v73], 0, 1, v10);
    v39 = *(v18 + 32);
    v17 = v84;
    v39(v84, v74, v10);
    v40(v17, 0, 1, v10);
    v27 = v82;
LABEL_5:
    v41 = v99(v17, 1, v10);
    v42 = v101;
    if (v41 == 1)
    {
      (*(v95 + 8))(v17, v11);
      goto LABEL_7;
    }

    v92 = v11;
    v39(v27, v17, v10);
    v45 = v90;
    v46 = v18;
    v47 = *(v90 + 40);
    v48 = v47(v27, v42, v90);
    if (v48)
    {
      (*(v46 + 8))(v27, v10);
      LODWORD(v109) = 0;
LABEL_10:
      v49 = *(v93 + 48);
      v50 = v105;
      v51 = *&v105[v49];
      BYTE4(v109) = v48 & 1;
      *&v105[v49] = v51 + 1;
      v52 = v89;
      (*(v95 + 8))(&v50[v89], v92);
      v40(&v50[v52], 1, 1, v10);
      v43 = v109;
      v44 = BYTE4(v109);
      goto LABEL_11;
    }

    v91 = v46;
    v85 = v10;
    v59 = *(v93 + 48);
    v103 = *&v105[*(v93 + 52)];
    v60 = *&v105[v59];
    v61 = v45;
    v62 = *v105;
    v107[1] = 0;
    v107[2] = 0;
    v107[0] = v60;
    v108 = 2;
    if (v47(v27, v42, v61))
    {
      v63 = v27;
      v64 = type metadata accessor for DecodingError();
      v65 = swift_allocError();
      v67 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v67 = MEMORY[0x1E69E6448];
      v68 = _CodingPathNode.path.getter(v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v70 = swift_allocObject();
      *(inited + 32) = v70;
      *(v70 + 16) = v60;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0;
      *(v70 + 40) = 2;
      v106 = v68;
      specialized Array.append<A>(contentsOf:)(inited);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v64 - 8) + 104))(v67, *MEMORY[0x1E69E6B08], v64);
      v104 = v65;
      swift_willThrow();
      v71 = v85;
      v72 = v91;
    }

    else
    {
      v75 = *(v62 + 24);
      v76 = *(v61 + 80);
      v77 = lazy protocol witness table accessor for type Float and conformance Float();
      v78 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      swift_unknownObjectRetain();
      v79 = v78;
      v80 = v104;
      v76(&v109, v27, v75, v103, v107, MEMORY[0x1E69E6448], &type metadata for _CodingKey, v77, v79, v42, v61);
      v72 = v91;
      v104 = v80;
      if (!v80)
      {
        swift_unknownObjectRelease();
        v10 = v85;
        (*(v72 + 8))(v27, v85);
        goto LABEL_10;
      }

      v63 = v27;
      swift_unknownObjectRelease();
      v71 = v85;
    }

    return (*(v72 + 8))(v63, v71);
  }

  (*(v86 + 8))(v35, v87);
  v38 = v84;
  (*(v91 + 56))(v84, 1, 1, v85);
  v83(v38, v92);
LABEL_7:
  v43 = 0;
  v44 = 1;
LABEL_11:
  LOBYTE(v107[0]) = v44;
  return v43 | (v44 << 32);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v87 = type metadata accessor for Optional();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v96 = &v81 - v7;
  v98 = v6;
  v97 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v81 - v9;
  v102 = AssociatedConformanceWitness;
  v103 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v81 - v26;
  v28 = *(v12 + 16);
  v89 = *(a1 + 40);
  v28(v14, &v105[v89], v11, v25);
  v99 = *(v18 + 48);
  v100 = v18 + 48;
  v29 = v99(v14, 1, v10);
  v93 = a1;
  v95 = v12;
  if (v29 != 1)
  {
    v39 = *(v18 + 32);
    v39(v23, v14, v10);
    v39(v17, v23, v10);
    v40 = *(v18 + 56);
    v40(v17, 0, 1, v10);
    goto LABEL_5;
  }

  v84 = v17;
  v82 = v27;
  v91 = v18;
  v85 = v10;
  v30 = *(v12 + 8);
  v92 = v11;
  v83 = v30;
  v30(v14, v11);
  swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v32 = *(v31 + 16);
  v33 = swift_checkMetadataState();
  v34 = v105;
  v35 = v96;
  v32(v33, v31);
  v36 = v97;
  v37 = v98;
  if ((*(v97 + 48))(v35, 1, v98) != 1)
  {
    v54 = v88;
    (*(v36 + 32))(v88, v35, v37);
    v55 = v102;
    v56 = *(v102 + 80);
    swift_unknownObjectRetain();
    v57 = swift_checkMetadataState();
    v58 = v104;
    v56(v54, v57, v55);
    v18 = v91;
    v104 = v58;
    if (v58)
    {
      (*(v36 + 8))(v54, v37);
      return swift_unknownObjectRelease();
    }

    (*(v36 + 8))(v54, v37);
    swift_unknownObjectRelease();
    v73 = v89;
    v11 = v92;
    v83(&v34[v89], v92);
    v74 = v94;
    v10 = v85;
    (*(v18 + 16))(&v34[v73], v94, v85);
    v40 = *(v18 + 56);
    v40(&v34[v73], 0, 1, v10);
    v39 = *(v18 + 32);
    v17 = v84;
    v39(v84, v74, v10);
    v40(v17, 0, 1, v10);
    v27 = v82;
LABEL_5:
    v41 = v99(v17, 1, v10);
    v42 = v101;
    if (v41 == 1)
    {
      (*(v95 + 8))(v17, v11);
      goto LABEL_7;
    }

    v92 = v11;
    v39(v27, v17, v10);
    v45 = v90;
    v46 = v18;
    v47 = *(v90 + 40);
    v48 = v47(v27, v42, v90);
    if (v48)
    {
      (*(v46 + 8))(v27, v10);
      LODWORD(v109) = 0;
LABEL_10:
      v49 = *(v93 + 48);
      v50 = v105;
      v51 = *&v105[v49];
      BYTE4(v109) = v48 & 1;
      *&v105[v49] = v51 + 1;
      v52 = v89;
      (*(v95 + 8))(&v50[v89], v92);
      v40(&v50[v52], 1, 1, v10);
      v43 = v109;
      v44 = BYTE4(v109);
      goto LABEL_11;
    }

    v91 = v46;
    v85 = v10;
    v59 = *(v93 + 48);
    v103 = *&v105[*(v93 + 52)];
    v60 = *&v105[v59];
    v61 = v45;
    v62 = *v105;
    v107[1] = 0;
    v107[2] = 0;
    v107[0] = v60;
    v108 = 2;
    if (v47(v27, v42, v61))
    {
      v63 = v27;
      v64 = type metadata accessor for DecodingError();
      v65 = swift_allocError();
      v67 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v67 = MEMORY[0x1E69E72F0];
      v68 = _CodingPathNode.path.getter(v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v70 = swift_allocObject();
      *(inited + 32) = v70;
      *(v70 + 16) = v60;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0;
      *(v70 + 40) = 2;
      v106 = v68;
      specialized Array.append<A>(contentsOf:)(inited);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v64 - 8) + 104))(v67, *MEMORY[0x1E69E6B08], v64);
      v104 = v65;
      swift_willThrow();
      v71 = v85;
      v72 = v91;
    }

    else
    {
      v75 = *(v62 + 24);
      v76 = *(v61 + 88);
      v77 = lazy protocol witness table accessor for type Int32 and conformance Int32();
      v78 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      swift_unknownObjectRetain();
      v79 = v78;
      v80 = v104;
      v76(&v109, v27, v75, v103, v107, MEMORY[0x1E69E72F0], &type metadata for _CodingKey, v77, v79, v42, v61);
      v72 = v91;
      v104 = v80;
      if (!v80)
      {
        swift_unknownObjectRelease();
        v10 = v85;
        (*(v72 + 8))(v27, v85);
        goto LABEL_10;
      }

      v63 = v27;
      swift_unknownObjectRelease();
      v71 = v85;
    }

    return (*(v72 + 8))(v63, v71);
  }

  (*(v86 + 8))(v35, v87);
  v38 = v84;
  (*(v91 + 56))(v84, 1, 1, v85);
  v83(v38, v92);
LABEL_7:
  v43 = 0;
  v44 = 1;
LABEL_11:
  LOBYTE(v107[0]) = v44;
  return v43 | (v44 << 32);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v87 = type metadata accessor for Optional();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v96 = &v81 - v7;
  v98 = v6;
  v97 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v81 - v9;
  v102 = AssociatedConformanceWitness;
  v103 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v81 - v26;
  v28 = *(v12 + 16);
  v89 = *(a1 + 40);
  v28(v14, &v105[v89], v11, v25);
  v99 = *(v18 + 48);
  v100 = v18 + 48;
  v29 = v99(v14, 1, v10);
  v93 = a1;
  v95 = v12;
  if (v29 != 1)
  {
    v39 = *(v18 + 32);
    v39(v23, v14, v10);
    v39(v17, v23, v10);
    v40 = *(v18 + 56);
    v40(v17, 0, 1, v10);
    goto LABEL_5;
  }

  v84 = v17;
  v82 = v27;
  v91 = v18;
  v85 = v10;
  v30 = *(v12 + 8);
  v92 = v11;
  v83 = v30;
  v30(v14, v11);
  swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v32 = *(v31 + 16);
  v33 = swift_checkMetadataState();
  v34 = v105;
  v35 = v96;
  v32(v33, v31);
  v36 = v97;
  v37 = v98;
  if ((*(v97 + 48))(v35, 1, v98) != 1)
  {
    v54 = v88;
    (*(v36 + 32))(v88, v35, v37);
    v55 = v102;
    v56 = *(v102 + 80);
    swift_unknownObjectRetain();
    v57 = swift_checkMetadataState();
    v58 = v104;
    v56(v54, v57, v55);
    v18 = v91;
    v104 = v58;
    if (v58)
    {
      (*(v36 + 8))(v54, v37);
      return swift_unknownObjectRelease();
    }

    (*(v36 + 8))(v54, v37);
    swift_unknownObjectRelease();
    v73 = v89;
    v11 = v92;
    v83(&v34[v89], v92);
    v74 = v94;
    v10 = v85;
    (*(v18 + 16))(&v34[v73], v94, v85);
    v40 = *(v18 + 56);
    v40(&v34[v73], 0, 1, v10);
    v39 = *(v18 + 32);
    v17 = v84;
    v39(v84, v74, v10);
    v40(v17, 0, 1, v10);
    v27 = v82;
LABEL_5:
    v41 = v99(v17, 1, v10);
    v42 = v101;
    if (v41 == 1)
    {
      (*(v95 + 8))(v17, v11);
      goto LABEL_7;
    }

    v92 = v11;
    v39(v27, v17, v10);
    v45 = v90;
    v46 = v18;
    v47 = *(v90 + 40);
    v48 = v47(v27, v42, v90);
    if (v48)
    {
      (*(v46 + 8))(v27, v10);
      LODWORD(v109) = 0;
LABEL_10:
      v49 = *(v93 + 48);
      v50 = v105;
      v51 = *&v105[v49];
      BYTE4(v109) = v48 & 1;
      *&v105[v49] = v51 + 1;
      v52 = v89;
      (*(v95 + 8))(&v50[v89], v92);
      v40(&v50[v52], 1, 1, v10);
      v43 = v109;
      v44 = BYTE4(v109);
      goto LABEL_11;
    }

    v91 = v46;
    v85 = v10;
    v59 = *(v93 + 48);
    v103 = *&v105[*(v93 + 52)];
    v60 = *&v105[v59];
    v61 = v45;
    v62 = *v105;
    v107[1] = 0;
    v107[2] = 0;
    v107[0] = v60;
    v108 = 2;
    if (v47(v27, v42, v61))
    {
      v63 = v27;
      v64 = type metadata accessor for DecodingError();
      v65 = swift_allocError();
      v67 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v67 = MEMORY[0x1E69E7668];
      v68 = _CodingPathNode.path.getter(v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v70 = swift_allocObject();
      *(inited + 32) = v70;
      *(v70 + 16) = v60;
      *(v70 + 24) = 0;
      *(v70 + 32) = 0;
      *(v70 + 40) = 2;
      v106 = v68;
      specialized Array.append<A>(contentsOf:)(inited);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v64 - 8) + 104))(v67, *MEMORY[0x1E69E6B08], v64);
      v104 = v65;
      swift_willThrow();
      v71 = v85;
      v72 = v91;
    }

    else
    {
      v75 = *(v62 + 24);
      v76 = *(v61 + 88);
      v77 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v78 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      swift_unknownObjectRetain();
      v79 = v78;
      v80 = v104;
      v76(&v109, v27, v75, v103, v107, MEMORY[0x1E69E7668], &type metadata for _CodingKey, v77, v79, v42, v61);
      v72 = v91;
      v104 = v80;
      if (!v80)
      {
        swift_unknownObjectRelease();
        v10 = v85;
        (*(v72 + 8))(v27, v85);
        goto LABEL_10;
      }

      v63 = v27;
      swift_unknownObjectRelease();
      v71 = v85;
    }

    return (*(v72 + 8))(v63, v71);
  }

  (*(v86 + 8))(v35, v87);
  v38 = v84;
  (*(v91 + 56))(v84, 1, 1, v85);
  v83(v38, v92);
LABEL_7:
  v43 = 0;
  v44 = 1;
LABEL_11:
  LOBYTE(v107[0]) = v44;
  return v43 | (v44 << 32);
}

uint64_t _PlistUnkeyedDecodingContainer.decodeIfPresent<A>(_:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a4;
  v75 = a1;
  v95 = a3;
  v96 = a5;
  v77 = type metadata accessor for Optional();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v87 = v68 - v7;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = v9;
  v84 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v79 = *(v13 - 8);
  v80 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v88 = v68 - v14;
  v90 = v12;
  v89 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = v68 - v16;
  v93 = AssociatedTypeWitness;
  v94 = AssociatedConformanceWitness;
  v17 = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v68 - v23;
  v25 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v78 = v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v68 - v29;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v82 = v68 - v33;
  v34 = *(a2 + 40);
  v35 = *(v19 + 16);
  v97 = v5;
  v86 = v34;
  v35(v21, v5 + v34, v18, v32);
  v92 = v25[6];
  v36 = v92(v21, 1, v17);
  v85 = a2;
  v91 = v19;
  if (v36 == 1)
  {
    v68[1] = v25 + 6;
    v70 = v24;
    v72 = v25;
    v73 = v17;
    v37 = *(v19 + 8);
    v71 = v18;
    v69 = v37;
    v37(v21, v18);
    swift_getAssociatedTypeWitness();
    v38 = swift_getAssociatedConformanceWitness();
    v39 = *(v38 + 16);
    v40 = swift_checkMetadataState();
    v41 = v88;
    v39(v40, v38);
    v43 = v89;
    v42 = v90;
    if ((*(v89 + 48))(v41, 1, v90) == 1)
    {
      (*(v79 + 8))(v41, v80);
      v44 = v70;
      (v72[7])(v70, 1, 1, v73);
      v46 = v95;
      v45 = v96;
      v69(v44, v71);
      return (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
    }

    v54 = v81;
    (*(v43 + 32))(v81, v41, v42);
    v55 = v94;
    v56 = v94[10];
    swift_unknownObjectRetain();
    v57 = swift_checkMetadataState();
    v58 = v78;
    v59 = v98;
    v56(v54, v57, v55);
    v98 = v59;
    v17 = v73;
    v49 = v72;
    if (v59)
    {
      (*(v43 + 8))(v54, v42);
      return swift_unknownObjectRelease();
    }

    (*(v43 + 8))(v54, v42);
    swift_unknownObjectRelease();
    v61 = v97;
    v62 = v58;
    v63 = v86;
    v48 = v71;
    v69((v97 + v86), v71);
    (v49[2])(v61 + v63, v62, v17);
    v64 = v49[7];
    (v64)(v61 + v63, 0, 1, v17);
    v47 = v49[4];
    v24 = v70;
    (v47)(v70, v62, v17);
    v94 = v64;
    (v64)(v24, 0, 1, v17);
    v46 = v95;
    v45 = v96;
  }

  else
  {
    v47 = v25[4];
    (v47)(v30, v21, v17);
    (v47)(v24, v30, v17);
    v94 = v25[7];
    (v94)(v24, 0, 1, v17);
    v48 = v18;
    v46 = v95;
    v45 = v96;
    v49 = v25;
  }

  if (v92(v24, 1, v17) == 1)
  {
    (*(v91 + 8))(v24, v48);
    return (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  }

  v51 = v82;
  v47();
  if ((*(v84 + 40))(v51))
  {
    v52 = 1;
    v53 = v85;
  }

  else
  {
    v53 = v85;
    v60 = v98;
    specialized _PlistDecoder.unwrapGeneric<A, B>(_:as:for:_:)(v51, v75, *(v97 + *(v85 + 52)), *(v97 + *(v85 + 48)), 0, 0, 2u, v46, v87, v74);
    v98 = v60;
    if (v60)
    {
      return (v49[1])(v51, v17);
    }

    v52 = 0;
  }

  (v49[1])(v51, v17);
  v65 = v87;
  (*(*(v46 - 8) + 56))(v87, v52, 1, v46);
  v66 = v97;
  ++*(v97 + *(v53 + 48));
  v67 = v86;
  (*(v91 + 8))(v66 + v86, v48);
  (v94)(v66 + v67, 1, 1, v17);
  return (*(v76 + 32))(v45, v65, v77);
}

uint64_t _PlistUnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a3;
  v97 = a4;
  v80 = a5;
  v81 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v77 = type metadata accessor for Optional();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v84 = &v71 - v9;
  v86 = v8;
  v95 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v71 - v11;
  v89 = AssociatedConformanceWitness;
  v85 = AssociatedTypeWitness;
  v12 = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v20 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v79 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v82 = &v71 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v71 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v93 = &v71 - v29;
  v87 = type metadata accessor for KeyedDecodingContainer();
  v30 = *(v14 + 16);
  v75 = *(a2 + 40);
  v30(v16, &v98[v75], v13);
  v88 = v20[6];
  v31 = v88(v16, 1, v12);
  v94 = v20;
  v90 = v13;
  v91 = a2;
  v83 = v14;
  if (v31 == 1)
  {
    v73 = v19;
    v74 = v12;
    v72 = *(v14 + 8);
    v72(v16, v13);
    swift_getAssociatedTypeWitness();
    v32 = swift_getAssociatedConformanceWitness();
    v33 = *(v32 + 16);
    v34 = swift_checkMetadataState();
    v35 = v84;
    v33(v34, v32);
    v36 = v86;
    if ((*(v95 + 48))(v35, 1, v86) == 1)
    {
      (*(v76 + 8))(v35, v77);
      v37 = v73;
      (v94[7])(v73, 1, 1, v74);
      v38 = v91;
      v72(v37, v90);
LABEL_7:
      type metadata accessor for DecodingError();
      swift_allocError();
      _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v87, v38, v87, v43);
      return swift_willThrow();
    }

    v52 = v78;
    (*(v95 + 32))(v78, v35, v36);
    v53 = v89;
    v54 = *(v89 + 80);
    swift_unknownObjectRetain();
    v55 = swift_checkMetadataState();
    v56 = v92;
    v54(v52, v55, v53);
    if (v56)
    {
      (*(v95 + 8))(v52, v36);
      return swift_unknownObjectRelease();
    }

    v92 = 0;
    (*(v95 + 8))(v52, v36);
    swift_unknownObjectRelease();
    v67 = v75;
    v68 = v98;
    v72(&v98[v75], v90);
    v69 = v94;
    v70 = v82;
    v41 = v74;
    (v94[2])(&v68[v67], v82, v74);
    v40 = v69[7];
    v40(&v68[v67], 0, 1, v41);
    v39 = v69[4];
    v19 = v73;
    v39(v73, v70, v41);
    v40(v19, 0, 1, v41);
  }

  else
  {
    v39 = v20[4];
    v39(v27, v16, v12);
    v39(v19, v27, v12);
    v40 = v20[7];
    v40(v19, 0, 1, v12);
    v41 = v12;
  }

  v42 = v88(v19, 1, v41);
  v38 = v91;
  if (v42 == 1)
  {
    (*(v83 + 8))(v19, v90);
    goto LABEL_7;
  }

  v39(v93, v19, v41);
  v45 = *v98;
  v46 = *(v38 + 48);
  v47 = *&v98[*(v38 + 52)];
  v48 = *&v98[v46];
  v49 = swift_allocObject();
  v49[5] = &type metadata for _CodingKey;
  v49[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  result = swift_allocObject();
  v49[2] = result;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = v48;
  *(result + 40) = 2;
  v49[7] = v47;
  if (v47 >> 62)
  {
    v50 = 0;
    if (v47 >> 62 != 1)
    {
      goto LABEL_15;
    }

    v51 = ((v47 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v51 = (v47 + 64);
  }

  v50 = *v51;

LABEL_15:
  if (__OFADD__(v50, 1))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v49[8] = v50 + 1;
  v57 = *(v45 + 40);
  *(v45 + 40) = v49;
  v58 = type metadata accessor for _PlistDecodingStorage();

  specialized _PlistDecodingStorage.push(container:)(v93, v58);

  v59 = v92;
  _PlistDecoder.container<A>(keyedBy:)(v81, v96, v97, v80);
  if (v59)
  {

    *(v45 + 40) = v57;

    result = MEMORY[0x1865CB560](*(v45 + 16), v41);
    if (result)
    {
      type metadata accessor for Array();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v60 = v79;
      RangeReplaceableCollection<>.removeLast()();

      v61 = v94[1];
      v61(v60, v41);
      return (v61)(v93, v41);
    }

    goto LABEL_24;
  }

  v96 = v48;
  v97 = v46;
  v92 = 0;

  *(v45 + 40) = v57;

  result = MEMORY[0x1865CB560](*(v45 + 16), v41);
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  type metadata accessor for Array();
  v62 = v41;
  swift_getWitnessTable();
  swift_getWitnessTable();
  v63 = v79;
  RangeReplaceableCollection<>.removeLast()();

  v64 = v94[1];
  v64(v63, v41);
  v64(v93, v41);
  v65 = v98;
  *&v98[v97] = v96 + 1;
  v66 = v75;
  (*(v83 + 8))(&v65[v75], v90);
  return v40(&v65[v66], 1, 1, v62);
}

uint64_t _PlistUnkeyedDecodingContainer.nestedUnkeyedContainer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v75 - v6;
  v88 = AssociatedTypeWitness;
  v97 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v75 - v8;
  v91 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v80 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v75 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v95 = &v75 - v27;
  v28 = *(v11 + 16);
  v79 = *(a1 + 40);
  v28(v13, &v98[v79], v10, v26);
  v89 = *(v17 + 48);
  v90 = v17 + 48;
  v29 = v89(v13, 1, v9);
  v96 = v17;
  v92 = v10;
  v93 = a1;
  v86 = v11;
  if (v29 == 1)
  {
    v76 = v16;
    v78 = v9;
    v77 = *(v11 + 8);
    v77(v13, v10);
    v30 = v98;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v87;
    v32(v33, v31);
    v35 = v88;
    if ((*(v97 + 48))(v34, 1, v88) == 1)
    {
      (*(v81 + 8))(v34, v82);
      v36 = v76;
      (*(v96 + 56))(v76, 1, 1, v78);
      v37 = v93;
      v77(v36, v92);
LABEL_7:
      type metadata accessor for DecodingError();
      swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v37, v43);
      return swift_willThrow();
    }

    v53 = v30;
    v54 = v83;
    (*(v97 + 32))(v83, v34, v35);
    v55 = v53;
    v56 = v91;
    v57 = *(v91 + 80);
    swift_unknownObjectRetain();
    v58 = v54;
    v59 = swift_checkMetadataState();
    v60 = v80;
    v61 = v94;
    v57(v58, v59, v56);
    if (v61)
    {
      (*(v97 + 8))(v58, v35);
      return swift_unknownObjectRelease();
    }

    v94 = 0;
    (*(v97 + 8))(v58, v35);
    swift_unknownObjectRelease();
    v72 = v79;
    v73 = v53;
    v77(&v53[v79], v92);
    v74 = v96;
    v9 = v78;
    (*(v96 + 16))(&v55[v72], v60, v78);
    v40 = *(v74 + 56);
    v40(&v55[v72], 0, 1, v9);
    v39 = *(v74 + 32);
    v16 = v76;
    v39(v76, v60, v9);
    v40(v16, 0, 1, v9);
    v41 = v73;
  }

  else
  {
    v38 = v17;
    v39 = *(v17 + 32);
    v39(v24, v13, v9);
    v39(v16, v24, v9);
    v40 = *(v38 + 56);
    v40(v16, 0, 1, v9);
    v41 = v98;
  }

  v42 = v89(v16, 1, v9);
  v37 = v93;
  if (v42 == 1)
  {
    (*(v86 + 8))(v16, v92);
    goto LABEL_7;
  }

  v39(v95, v16, v9);
  v45 = v41;
  v46 = *v41;
  v47 = *(v37 + 48);
  v48 = *(v45 + *(v37 + 52));
  v49 = *(v45 + v47);
  v50 = swift_allocObject();
  v50[5] = &type metadata for _CodingKey;
  v50[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  result = swift_allocObject();
  v50[2] = result;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = v49;
  *(result + 40) = 2;
  v50[7] = v48;
  if (v48 >> 62)
  {
    v51 = 0;
    if (v48 >> 62 != 1)
    {
      goto LABEL_15;
    }

    v52 = ((v48 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v52 = (v48 + 64);
  }

  v51 = *v52;

LABEL_15:
  if (__OFADD__(v51, 1))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v50[8] = v51 + 1;
  v62 = *(v46 + 40);
  *(v46 + 40) = v50;
  v63 = type metadata accessor for _PlistDecodingStorage();

  specialized _PlistDecodingStorage.push(container:)(v95, v63);

  v64 = v94;
  _PlistDecoder.unkeyedContainer()(v85);
  if (v64)
  {

    *(v46 + 40) = v62;

    result = MEMORY[0x1865CB560](*(v46 + 16), v9);
    if (result)
    {
      type metadata accessor for Array();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v65 = v84;
      RangeReplaceableCollection<>.removeLast()();

      v66 = *(v96 + 8);
      v66(v65, v9);
      return (v66)(v95, v9);
    }

    goto LABEL_24;
  }

  v93 = v49;
  v94 = 0;
  v97 = v47;

  *(v46 + 40) = v62;

  result = MEMORY[0x1865CB560](*(v46 + 16), v9);
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v67 = v84;
  RangeReplaceableCollection<>.removeLast()();

  v68 = *(v96 + 8);
  v68(v67, v9);
  v68(v95, v9);
  v69 = v92;
  v70 = v98;
  *&v98[v97] = v93 + 1;
  v71 = v79;
  (*(v86 + 8))(&v70[v79], v69);
  return (v40)(&v70[v71], 1, 1, v9);
}

uint64_t _PlistUnkeyedDecodingContainer.superDecoder()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = v4;
  v80 = v5;
  v7 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v70 - v11;
  v83 = v9;
  v93 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v70 - v13;
  v88 = AssociatedConformanceWitness;
  v89 = AssociatedTypeWitness;
  v14 = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - v20;
  v22 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v81 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v70 - v26;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v84 = &v70 - v30;
  v31 = *(v16 + 16);
  v75 = *(v7 + 40);
  v31(v18, &v2[v75], v15, v29);
  v85 = *(v22 + 48);
  v86 = v22 + 48;
  v32 = v85(v18, 1, v14);
  v90 = v15;
  v91 = v7;
  v82 = v16;
  if (v32 != 1)
  {
    v41 = *(v22 + 32);
    v41(v27, v18, v14);
    v41(v21, v27, v14);
    v42 = *(v22 + 56);
    v42(v21, 0, 1, v14);
    v33 = v2;
    goto LABEL_5;
  }

  v72 = v14;
  v73 = v21;
  v71 = *(v16 + 8);
  v71(v18, v15);
  v33 = v2;
  swift_getAssociatedTypeWitness();
  v34 = swift_getAssociatedConformanceWitness();
  v35 = *(v34 + 16);
  v36 = swift_checkMetadataState();
  v37 = v92;
  v35(v36, v34);
  v38 = v83;
  if ((*(v93 + 48))(v37, 1, v83) == 1)
  {
    (*(v76 + 8))(v92, v77);
    v39 = v73;
    (*(v22 + 56))(v73, 1, 1, v72);
    v40 = v91;
    v71(v39, v90);
LABEL_7:
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v40, v44);
    return swift_willThrow();
  }

  v48 = v78;
  (*(v93 + 32))(v78, v92, v38);
  v52 = v88;
  v53 = *(v88 + 80);
  swift_unknownObjectRetain();
  v54 = swift_checkMetadataState();
  v55 = v87;
  v53(v48, v54, v52);
  v46 = v55;
  v21 = v73;
  if (v55)
  {
    (*(v93 + 8))(v48, v38);
    return swift_unknownObjectRelease();
  }

  while (1)
  {
    v87 = v46;
    (*(v93 + 8))(v48, v38);
    swift_unknownObjectRelease();
    v68 = v75;
    v71((v33 + v75), v90);
    v69 = v81;
    v14 = v72;
    (*(v22 + 16))(v33 + v68, v81, v72);
    v42 = *(v22 + 56);
    v42((v33 + v68), 0, 1, v14);
    v41 = *(v22 + 32);
    v41(v21, v69, v14);
    v42(v21, 0, 1, v14);
LABEL_5:
    v43 = v85(v21, 1, v14);
    v40 = v91;
    if (v43 == 1)
    {
      (*(v82 + 8))(v21, v90);
      goto LABEL_7;
    }

    v89 = v42;
    v93 = v22;
    v38 = v14;
    v41(v84, v21, v14);
    v46 = *(*v33 + 24);
    v47 = *(*v33 + 32);
    v48 = *(v40 + 48);
    v49 = v33;
    v33 = *(v33 + *(v40 + 52));
    v92 = v49;
    v22 = *&v48[v49];
    v50 = swift_allocObject();
    *(v50 + 16) = v22;
    *(v50 + 24) = v33;
    if (v33 >> 62)
    {
      break;
    }

    v51 = (v33 + 64);
LABEL_14:
    v56 = *v51;

    v57 = v56 + 1;
    if (!__OFADD__(v56, 1))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v33 >> 62 == 1)
  {
    v51 = ((v33 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_14;
  }

  v57 = 1;
LABEL_15:
  *(v50 + 32) = v57;
  v58 = type metadata accessor for _PlistDecoder();
  v59 = swift_allocObject();
  swift_unknownObjectRetain();

  v60 = v87;
  _PlistDecoder.init(referencing:options:codingPathNode:)(v46, v47, v50 | 0x4000000000000000);
  if (v60)
  {
    return (*(v93 + 8))(v84, v14);
  }

  v61 = v14;
  v62 = type metadata accessor for _PlistDecodingStorage();
  v63 = v84;
  specialized _PlistDecodingStorage.push(container:)(v84, v62);
  v64 = v92;
  *&v48[v92] = v22 + 1;
  v65 = v75;
  (*(v82 + 8))(&v64[v75], v90);
  v66 = v93;
  v89(&v64[v65], 1, 1, v61);
  v67 = v74;
  v74[3] = v58;
  v67[4] = swift_getWitnessTable();
  *v67 = v59;
  return (*(v66 + 8))(v63, v61);
}

uint64_t protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _PlistUnkeyedDecodingContainer<A>()
{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistUnkeyedDecodingContainer<A>(uint64_t a1)
{
  return _PlistUnkeyedDecodingContainer.decodeIfPresent(_:)(a1);
}

{
  return _PlistUnkeyedDecodingContainer.decodeIfPresent(_:)(a1);
}

{
  result = _PlistUnkeyedDecodingContainer.decodeIfPresent(_:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

{
  result = _PlistUnkeyedDecodingContainer.decodeIfPresent(_:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

{
  result = _PlistUnkeyedDecodingContainer.decodeIfPresent(_:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

{
  result = _PlistUnkeyedDecodingContainer.decodeIfPresent(_:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

{
  result = _PlistUnkeyedDecodingContainer.decodeIfPresent(_:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistUnkeyedDecodingContainer<A>(uint64_t a1, uint64_t a2)
{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistUnkeyedDecodingContainer<A>(a1, a2, _PlistUnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistUnkeyedDecodingContainer<A>(a1, a2, _PlistUnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistUnkeyedDecodingContainer<A>(a1, a2, _PlistUnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistUnkeyedDecodingContainer<A>(a1, a2, _PlistUnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistUnkeyedDecodingContainer<A>(a1, a2, _PlistUnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistUnkeyedDecodingContainer<A>(a1, a2, _PlistUnkeyedDecodingContainer.decodeIfPresent(_:));
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistUnkeyedDecodingContainer<A>(a1, a2, _PlistUnkeyedDecodingContainer.decodeIfPresent(_:));
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance _PlistUnkeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  return a3() & 0x1FF;
}

{
  return a3() & 0x1FFFF;
}

{
  v3 = a3();
  return v3 | ((HIDWORD(v3) & 1) << 32);
}

unint64_t lazy protocol witness table accessor for type Int16 and conformance Int16()
{
  result = lazy protocol witness table cache variable for type Int16 and conformance Int16;
  if (!lazy protocol witness table cache variable for type Int16 and conformance Int16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int16 and conformance Int16);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int16 and conformance Int16;
  if (!lazy protocol witness table cache variable for type Int16 and conformance Int16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int16 and conformance Int16);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _PlistUnkeyedDecodingContainer(_DWORD *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = 23;
  if (!v9)
  {
    v17 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (v12 < a2)
  {
    v18 = ((((v17 + v16 + ((v14 + v15 + ((v13 + 8) & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v12 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (v23)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v22)
    {
      v23 = *(a1 + v18);
      if (v23)
      {
LABEL_27:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          LODWORD(v19) = *a1;
        }

        return v12 + (v19 | v24) + 1;
      }
    }
  }

  if ((v11 & 0x80000000) == 0)
  {
    v26 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  v27 = (a1 + v13 + 8) & ~v13;
  if (v6 != v12)
  {
    if (v9 >= 2)
    {
      v29 = (*(v8 + 48))((v27 + v14 + v15) & ~v15);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(v5 + 48);

  return v28(v27, v6, AssociatedTypeWitness);
}

void storeEnumTagSinglePayload for _PlistUnkeyedDecodingContainer(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  if (v8 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v8;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (!v12)
  {
    ++v17;
  }

  v20 = ((((v17 + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v19 < a3)
  {
    if (((((v17 + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a3 - v19 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v9 = v22;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v19)
  {
    if (v20)
    {
      v23 = 1;
    }

    else
    {
      v23 = a2 - v19;
    }

    if (v20)
    {
      v24 = ~v19 + a2;
      bzero(a1, v20);
      *a1 = v24;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v20) = v23;
      }

      else
      {
        *(a1 + v20) = v23;
      }
    }

    else if (v9)
    {
      *(a1 + v20) = v23;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v20) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v9)
  {
    goto LABEL_41;
  }

  *(a1 + v20) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v18 & 0x80000000) != 0)
  {
    v26 = (a1 + v14 + 8) & ~v14;
    if (v8 == v19)
    {
      v27 = *(v7 + 56);

      v27(v26, a2, v8, AssociatedTypeWitness);
    }

    else if (v12 >= 2)
    {
      v28 = *(v11 + 56);
      v29 = (v26 + v15 + v16) & ~v16;

      v28(v29, (a2 + 1));
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = (a2 - 1);
    }

    *a1 = v25;
  }
}

uint64_t __PlistDictionaryDecoder.unkeyedContainer()@<X0>(void *a1@<X8>)
{
  if (__PlistDictionaryDecoder.topValueIsNull.getter())
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
  }

  else
  {

    specialized _PlistDecodingStorage.topContainer.getter(v6, v17);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
    if (swift_dynamicCast())
    {
      v8 = *(v1 + 32);
      a1[3] = &unk_1EEEECCD0;
      a1[4] = lazy protocol witness table accessor for type _PlistDictionaryUnkeyedDecodingContainer and conformance _PlistDictionaryUnkeyedDecodingContainer();
      v9 = swift_allocObject();
      *a1 = v9;
      v9[2] = v1;
      v9[3] = v16;
      v9[4] = v8;
      v9[5] = 0;
    }

    specialized _PlistDecodingStorage.topContainer.getter(v11, v17);

    v12 = type metadata accessor for DecodingError();
    swift_allocError();
    v14 = v13;
    _StringGuts.grow(_:)(43);

    v15 = specialized static DecodingError._typeDescription(of:)(v17);
    MEMORY[0x1865CB0E0](v15);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v14 = v7;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6AF8], v12);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return swift_willThrow();
}

uint64_t __PlistDictionaryDecoder.decode<A>(_:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v32[0] = a5;
  v41 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v32 - v9;
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v32 - v12;
  v14 = (v5 + 16);

  specialized _PlistDecodingStorage.topContainer.getter(v15, &v36);

  if (swift_dynamicCast())
  {
    if (v40[0] == __PAIR128__(0xE500000000000000, 0x6C6C756E24))
    {

LABEL_5:
      v17 = type metadata accessor for DecodingError();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v19 = a1;
      *&v36 = 0;
      *(&v36 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(41);

      *&v36 = 0x6465746365707845;
      *(&v36 + 1) = 0xE900000000000020;
      v20 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v20);

      MEMORY[0x1865CB0E0](0xD00000000000001ELL, 0x80000001814853B0);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
      return swift_willThrow();
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_5;
    }
  }

  specialized _PlistDecodingStorage.topContainer.getter(v22, v40);

  outlined init with copy of Any(v40, &v36);
  outlined init with copy of Any(&v36, v39);
  v23 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v23;
  v32[1] = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    *v14 = v23;
  }

  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v26 >= v25 >> 1)
  {
    *v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(&v36);
  v27 = *(v5 + 16);
  *(v27 + 16) = v26 + 1;
  outlined init with take of Any(v39, (v27 + 32 * v26 + 32));
  *(v5 + 16) = v27;
  v37 = type metadata accessor for __PlistDictionaryDecoder();
  v38 = lazy protocol witness table accessor for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder(&lazy protocol witness table cache variable for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder);
  *&v36 = v5;
  (*(v8 + 16))(v10, v34, AssociatedTypeWitness);
  v28 = v41;
  v29 = *(v41 + 16);

  v30 = v35;
  v29(&v36, v10, a3, v28);
  if (v30)
  {
    specialized _PlistDecodingStorage.popContainer()();
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    v31 = *(a3 - 8);
    (*(v31 + 56))(v13, 0, 1, a3);
    specialized _PlistDecodingStorage.popContainer()();
    __swift_destroy_boxed_opaque_existential_1(v40);
    result = (*(v31 + 48))(v13, 1, a3);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v31 + 32))(v32[0], v13, a3);
    }
  }

  return result;
}

uint64_t _PlistDictionaryKeyedDecodingContainer.allKeys.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v52 = type metadata accessor for Optional();
  v7 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v44 - v8;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v44 - v14;
  _swift_isClassOrObjCExistentialType();
  v15 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = (v10 + 48);
  v47 = v10;
  v48 = (v10 + 32);
  v21 = (v7 + 8);
  v54 = a2;

  v23 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v24 = v23;
    if (!v18)
    {
      break;
    }

LABEL_8:
    v18 &= v18 - 1;

    dispatch thunk of CodingKey.init(stringValue:)();
    if ((*v20)(v9, 1, a4) == 1)
    {
      result = (*v21)(v9, v52);
    }

    else
    {
      v25 = *v48;
      (*v48)(v49, v9, a4);
      v46 = v25;
      v25(v50, v49, a4);
      if (_swift_isClassOrObjCExistentialType())
      {
        v26 = v51;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v55 = v26;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if ((_swift_isClassOrObjCExistentialType() & 1) == 0)
          {
            goto LABEL_24;
          }

          v26 = v51;
          if ((v51 & 0x8000000000000000) == 0 && (v51 & 0x4000000000000000) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        v26 = v51;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v26;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }
      }

      if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v26 < 0 || (v26 & 0x4000000000000000) != 0))
      {
        specialized _ArrayBuffer._nonNative.getter(v26);
        v31 = __CocoaSet.count.getter();
      }

      else
      {
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v30 = v26 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v30 = v26;
        }

        v31 = *(v30 + 16);
      }

      v51 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 + 1, 1, v26, a4);
      v55 = v51;
LABEL_24:
      v32 = _swift_isClassOrObjCExistentialType();
      v33 = v51;
      v34 = v51 & 0xFFFFFFFFFFFFFF8;
      v45 = v51 & 0xFFFFFFFFFFFFFF8;
      if ((v32 & 1) == 0)
      {
        v34 = v51;
      }

      v35 = *(v34 + 16);
      v36 = _swift_isClassOrObjCExistentialType();
      v37 = v45;
      if ((v36 & 1) == 0)
      {
        v37 = v33;
      }

      v38 = *(v37 + 24);
      v45 = v35;
      v39 = v35 + 1;
      if (v39 > (v38 >> 1))
      {
        LODWORD(v51) = v38 > 1;
        type metadata accessor for Array();
        Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51, v39, 1);
        v51 = v55;
      }

      if (_swift_isClassOrObjCExistentialType())
      {
        v40 = v51;
        v41 = v39;
        v42 = v51 & 0xFFFFFFFFFFFFFF8;
        *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) = v41;
      }

      else
      {
        v40 = v51;
        *(v51 + 16) = v39;
        v42 = v40 & 0xFFFFFFFFFFFFFF8;
      }

      if (_swift_isClassOrObjCExistentialType())
      {
        v43 = v42;
      }

      else
      {
        v43 = v40;
      }

      result = (v46)(v43 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v45, v50, a4);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return v51;
    }

    v18 = *(v15 + 8 * v23);
    ++v24;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t _PlistDictionaryKeyedDecodingContainer.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_5;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v6, v11);
  v9 = 1;
LABEL_6:
  outlined destroy of TermOfAddress?(v11, &_sypSgMd);
  return v9;
}

uint64_t _PlistDictionaryKeyedDecodingContainer.decodeNil(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_8;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_8:
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v18[3] = a5;
    v18[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);

    _StringGuts.grow(_:)(39);

    *&v26[0] = 0xD00000000000001DLL;
    *(&v26[0] + 1) = 0x8000000181482300;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v20);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v21 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x1865CB0E0](v21);

    v15 = v26;
    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF0], v16);
    swift_willThrow();
    return v15 & 1;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v12, v25);
  outlined init with take of Any(v25, v26);
  outlined init with copy of Any(v26, v25);
  if (swift_dynamicCast())
  {
    if (v23 == 0x6C6C756E24 && v24 == 0xE500000000000000)
    {

      LOBYTE(v15) = 1;
    }

    else
    {
      LOBYTE(v15) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    LOBYTE(v15) = 0;
  }

  return v15 & 1;
}

uint64_t _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_12;
  }

  v37[1] = a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_12:
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v32[3] = a5;
    v32[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    (*(v11 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v39 = 0xD00000000000001DLL;
    *(&v39 + 1) = 0x8000000181482300;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v34);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v35 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = &v39;
    MEMORY[0x1865CB0E0](v35);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF0], v30);
    swift_willThrow();
    return v20 & 1;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v16, &v39);
  outlined init with take of Any(&v39, v42);
  v37[0] = *(v11 + 16);
  (v37[0])(v13, a1, a5);
  v19 = v43;
  v20 = *(v43 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 32) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
    *(v19 + 32) = v20;
  }

  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  if (v23 >= v22 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
    *(v43 + 32) = v20;
  }

  v40 = a5;
  v41 = a6;
  v24 = __swift_allocate_boxed_opaque_existential_0(&v39);
  (v37[0])(v24, v13, a5);
  *(v20 + 16) = v23 + 1;
  outlined init with take of Equatable(&v39, v20 + 40 * v23 + 32);
  (*(v11 + 8))(v13, a5);
  v25 = v43;
  LOBYTE(v20) = v43;
  v26 = v38;
  v27 = specialized __PlistDictionaryDecoder.unbox(_:as:)(v42);
  if (!v26)
  {
    LOBYTE(v20) = v27;
    if (v27 == 2)
    {
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v29 = MEMORY[0x1E69E6370];

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v20 - 8) + 104))(v29, *MEMORY[0x1E69E6B08], v20);
      swift_willThrow();
    }
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v20 & 1;
}

float _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a2;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_11;
  }

  v41 = a4;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_11:
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v31[3] = a5;
    v31[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    (*(v12 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v44 = 0xD00000000000001DLL;
    *(&v44 + 1) = 0x8000000181482300;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v33);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v34 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x1865CB0E0](v34);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF0], v29);
    swift_willThrow();
    return v6;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v17, &v44);
  outlined init with take of Any(&v44, v47);
  v40 = *(v12 + 16);
  v40(v14, a1, a5);
  v20 = v43;
  v21 = *(v43 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 32) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    *(v20 + 32) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
    *(v43 + 32) = v21;
  }

  v45 = a5;
  v46 = a6;
  v25 = __swift_allocate_boxed_opaque_existential_0(&v44);
  v40(v25, v14, a5);
  v21[2] = v24 + 1;
  outlined init with take of Equatable(&v44, &v21[5 * v24 + 4]);
  (*(v12 + 8))(v14, a5);
  v26 = v42;
  v27 = v43;
  _s10Foundation24__PlistDictionaryDecoderC18unboxFloatingPoint33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKSBRzlFSf_Tt1g5(v47);
  if (v26)
  {
    goto LABEL_13;
  }

  if ((v28 & 0x100000000) != 0)
  {
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v37 = MEMORY[0x1E69E6448];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6B08], v35);
    swift_willThrow();
LABEL_13:
    $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v27);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return v6;
  }

  v6 = *&v28;
  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v27);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return v6;
}

double _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a2;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_12;
  }

  v42 = a4;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_12:
    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v35[3] = a5;
    v35[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
    (*(v12 + 16))(boxed_opaque_existential_0, a1, a5);
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v45 = 0xD00000000000001DLL;
    *(&v45 + 1) = 0x8000000181482300;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v37);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v38 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x1865CB0E0](v38);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF0], v33);
    swift_willThrow();
    return v6;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v17, &v45);
  outlined init with take of Any(&v45, v48);
  v41 = *(v12 + 16);
  v41(v14, a1, a5);
  v20 = v44;
  v21 = *(v44 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 32) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    *(v20 + 32) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
    *(v44 + 32) = v21;
  }

  v46 = a5;
  v47 = a6;
  v25 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v41(v25, v14, a5);
  v21[2] = v24 + 1;
  outlined init with take of Equatable(&v45, &v21[5 * v24 + 4]);
  (*(v12 + 8))(v14, a5);
  v26 = v43;
  v27 = v44;
  _s10Foundation24__PlistDictionaryDecoderC18unboxFloatingPoint33_8021A410F55B102F42DB1E9F81CCF966LL_2asxSgyp_xmtKSBRzlFSd_Tt1g5(v48);
  if (!v26)
  {
    if ((v29 & 1) == 0)
    {
      v6 = v28;
      $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v27);
      __swift_destroy_boxed_opaque_existential_1(v48);
      return v6;
    }

    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v32 = MEMORY[0x1E69E63B0];

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6B08], v30);
    swift_willThrow();
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v27);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v6;
}

uint64_t _PlistDictionaryKeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v57 = a9;
  v65 = a3;
  v59 = a7;
  v16 = type metadata accessor for Optional();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v60 = v51 - v17;
  v18 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    goto LABEL_10;
  }

  v53 = a1;
  v54 = a5;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_10:
    v39 = type metadata accessor for DecodingError();
    v60 = swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd);
    v41[3] = a6;
    v41[4] = a8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
    (*(v18 + 16))(boxed_opaque_existential_0, a2, a6);
    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    *&v61 = 0xD00000000000001DLL;
    *(&v61 + 1) = 0x8000000181482300;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v43);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v44 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x1865CB0E0](v44);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF0], v39);
    return swift_willThrow();
  }

  v51[1] = a10;
  v51[2] = a4;
  outlined init with copy of Any(*(a4 + 56) + 32 * v24, &v61);
  outlined init with take of Any(&v61, v64);
  v51[0] = *(v18 + 16);
  (v51[0])(v21, a2, a6);
  v27 = v65;
  v28 = *(v65 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 32) = v28;
  v52 = a8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
    *(v65 + 32) = v28;
  }

  v30 = v53;
  v32 = v28[2];
  v31 = v28[3];
  if (v32 >= v31 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v28);
    *(v65 + 32) = v28;
  }

  v62 = a6;
  v63 = v52;
  v33 = __swift_allocate_boxed_opaque_existential_0(&v61);
  (v51[0])(v33, v21, a6);
  v28[2] = v32 + 1;
  outlined init with take of Equatable(&v61, &v28[5 * v32 + 4]);
  (*(v18 + 8))(v21, a6);
  v34 = v59;
  v35 = v60;
  v36 = v65;
  v37 = v58;
  __PlistDictionaryDecoder.unbox<A>(_:as:)(v64, v30, v59, v60);
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v46 = *(v34 - 8);
    if ((*(v46 + 48))(v35, 1, v34) == 1)
    {
      (*(v55 + 8))(v35, v56);
      v47 = type metadata accessor for DecodingError();
      v60 = swift_allocError();
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v49 = v30;
      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(41);

      *&v61 = 0x6465746365707845;
      *(&v61 + 1) = 0xE900000000000020;
      v50 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v50);

      MEMORY[0x1865CB0E0](0xD00000000000001ELL, 0x8000000181485A80);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6B08], v47);
      swift_willThrow();
    }

    else
    {
      (*(v46 + 32))(v57, v35, v34);
    }

    v38 = v36;
  }

  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v38);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t _PlistDictionaryKeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v48 = a6;
  v49 = a5;
  v42[0] = a8;
  v42[1] = a4;
  v45 = a3;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 16);
  v44 = v16;
  v15(v14, v12);
  v17 = *(a2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = a2;
  *(a2 + 32) = v17;
  v19 = a7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *(v43 + 32) = v17;
  }

  v46 = a9;
  v21 = v17[2];
  v20 = v17[3];
  if (v21 >= v20 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v17);
    *(v43 + 32) = v17;
  }

  v22 = v49;
  v53 = v49;
  v54 = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v52);
  (v15)(boxed_opaque_existential_0, v14, v22);
  v17[2] = v21 + 1;
  outlined init with take of Equatable(&v52, &v17[5 * v21 + 4]);
  (*(v11 + 8))(v14, v22);
  v24 = dispatch thunk of CodingKey.stringValue.getter();
  v26 = v45;
  if (!*(v45 + 16))
  {

    goto LABEL_10;
  }

  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_10:
    v34 = type metadata accessor for DecodingError();
    v47 = swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v36 = type metadata accessor for KeyedDecodingContainer();
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(64);
    MEMORY[0x1865CB0E0](0xD00000000000003DLL, 0x8000000181485330);
    v37 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x1865CB0E0](v37);

    MEMORY[0x1865CB0E0](34, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6B08], v34);
    swift_willThrow();
    return $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v43);
  }

  v44 = v19;
  outlined init with copy of Any(*(v26 + 56) + 32 * v27, &v50);
  outlined init with take of Any(&v50, &v52);
  outlined init with copy of Any(&v52, &v50);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  if (swift_dynamicCast())
  {
    v31 = v43;
    v32 = *(v43 + 32);
    *&v50 = v43;
    *(&v50 + 1) = v55;
    v51 = v32;
    type metadata accessor for _PlistDictionaryKeyedDecodingContainer();

    swift_getWitnessTable();
    KeyedDecodingContainer.init<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(&v52);
    return $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
  }

  v38 = type metadata accessor for DecodingError();
  v47 = swift_allocError();
  v40 = v39;
  *&v50 = 0;
  *(&v50 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v50 = 0xD000000000000035;
  *(&v50 + 1) = 0x8000000181481DA0;
  v41 = specialized static DecodingError._typeDescription(of:)(&v52);
  MEMORY[0x1865CB0E0](v41);

  MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v40 = v30;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(&v52);
  return $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v43);
}

uint64_t _PlistDictionaryKeyedDecodingContainer.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v44 = a7;
  v47 = a4;
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v45 = v15;
  v49 = v16;
  v14(v13, v11);
  v17 = *(a2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 32) = v17;
  v48 = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    *(a2 + 32) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  v46 = a2;
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    *(a2 + 32) = v17;
  }

  v21 = v49;
  v52 = v49;
  v53 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v51);
  (v14)(boxed_opaque_existential_0, v13, v21);
  v17[2] = v20 + 1;
  outlined init with take of Equatable(&v51, &v17[5 * v20 + 4]);
  (*(v10 + 8))(v13, v21);
  v23 = dispatch thunk of CodingKey.stringValue.getter();
  v25 = v48;
  if (!*(v48 + 16))
  {

    goto LABEL_10;
  }

  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_10:
    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(66);
    MEMORY[0x1865CB0E0](0xD00000000000003FLL, 0x80000001814852F0);
    v39 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x1865CB0E0](v39);

    MEMORY[0x1865CB0E0](34, 0xE100000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6B08], v36);
    swift_willThrow();
    return $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v46);
  }

  v45 = a6;
  outlined init with copy of Any(*(v25 + 56) + 32 * v26, v50);
  outlined init with take of Any(v50, &v51);
  outlined init with copy of Any(&v51, v50);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
  if (swift_dynamicCast())
  {
    v30 = v54;
    v31 = v46;
    v32 = *(v46 + 32);
    v33 = v44;
    v44[3] = &unk_1EEEECCD0;
    v33[4] = lazy protocol witness table accessor for type _PlistDictionaryUnkeyedDecodingContainer and conformance _PlistDictionaryUnkeyedDecodingContainer();
    v34 = swift_allocObject();
    *v33 = v34;
    v34[2] = v31;
    v34[3] = v30;
    v34[4] = v32;
    v34[5] = 0;

    __swift_destroy_boxed_opaque_existential_1(&v51);
    return $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v31);
  }

  v40 = type metadata accessor for DecodingError();
  swift_allocError();
  v42 = v41;
  *&v50[0] = 0;
  *(&v50[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v50[0] = 0xD000000000000028;
  *(&v50[0] + 1) = 0x8000000181481D20;
  v43 = specialized static DecodingError._typeDescription(of:)(&v51);
  MEMORY[0x1865CB0E0](v43);

  MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  *v42 = v29;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(&v51);
  return $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(v46);
}

uint64_t _PlistDictionaryKeyedDecodingContainer._superDecoder(forKey:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  outlined init with copy of Hashable & Sendable(a1, &v28);
  v8 = *(a2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 32) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(a2 + 32) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    *(a2 + 32) = v8;
  }

  v26 = v29;
  v12 = v29;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v29);
  *&v27[3] = v26;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v13, v12);
  v8[2] = v11 + 1;
  outlined init with take of Equatable(v27, &v8[5 * v11 + 4]);
  __swift_destroy_boxed_opaque_existential_1(&v28);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a3 + 16))
  {

    goto LABEL_9;
  }

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_9:
    *&v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
    v20 = swift_allocObject();
    *&v28 = v20;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v17, v27);
  outlined init with take of Any(v27, &v28);
LABEL_10:
  outlined init with copy of Any(&v28, v27);
  v22 = *(a2 + 24);
  v21 = *(a2 + 32);
  v23 = type metadata accessor for __PlistDictionaryDecoder();
  v24 = swift_allocObject();

  __PlistDictionaryDecoder.init(referencing:at:options:)(v27, v21, v22);
  a4[3] = v23;
  a4[4] = lazy protocol witness table accessor for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder(&lazy protocol witness table cache variable for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder);
  *a4 = v24;
  __swift_destroy_boxed_opaque_existential_1(&v28);
  $defer #1 <A>() in _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _PlistDictionaryKeyedDecodingContainer.superDecoder()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8[3] = &type metadata for _CodingKey;
  v8[4] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v6 = swift_allocObject();
  v8[0] = v6;
  *(v6 + 16) = xmmword_181237FF0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  return _PlistDictionaryKeyedDecodingContainer._superDecoder(forKey:)(v8, a1, a2, a3);
}

uint64_t _PlistDictionaryKeyedDecodingContainer.superDecoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  return _PlistDictionaryKeyedDecodingContainer._superDecoder(forKey:)(v13, a2, a3, a6);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeNil(forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:)) & 1;
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, _PlistDictionaryKeyedDecodingContainer.decode(_:forKey:));
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void, void, void))
{
  return a4(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24));
}

{
  return a4(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24));
}

{
  return a4(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24));
}

{
  return a4(a1, *v4, v4[1], v4[2], *(a2 + 16), *(a2 + 24));
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7100]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7118]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7120]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7128]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7138]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7148]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7150]);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistDictionaryKeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  return a4() & 0x1FF;
}

{
  return a4() & 0x1FFFF;
}

{
  v4 = a4();
  return v4 | ((HIDWORD(v4) & 1) << 32);
}

void _PlistDictionaryUnkeyedDecodingContainer.decodeNil()()
{
  v1 = v0[1];
  v2 = v0[3];
  if (v2 >= *(v1 + 16))
  {
    v3 = type metadata accessor for DecodingError();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
    v6 = *(*v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v8 = swift_allocObject();
    *(inited + 32) = v8;
    *(v8 + 16) = v2;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 2;
    v12[0] = v6;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B08], v3);
    swift_willThrow();
    return;
  }

  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of Any(v1 + 32 * v2 + 32, v12);
    if (swift_dynamicCast())
    {
      if (v10 == 0x6C6C756E24 && v11 == 0xE500000000000000)
      {

LABEL_9:
        v0[3] = v2 + 1;
        return;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  if (!v2[2])
  {
    __break(1u);
LABEL_8:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = v2[2];
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  v5 = v4 - 1;
  __swift_destroy_boxed_opaque_existential_1(&v2[5 * v4 - 1]);
  v2[2] = v5;
  *(v1 + 32) = v2;
}

uint64_t _PlistDictionaryUnkeyedDecodingContainer.decode<A>(_:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = v6[1];
  v17 = v6[3];
  if (v17 >= *(v16 + 16))
  {
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v32 = a1;
    v33 = *(*v6 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v35 = swift_allocObject();
    *(inited + 32) = v35;
    *(v35 + 16) = v17;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0;
    *(v35 + 40) = 2;
    *&v63 = v33;

    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6B08], v30);
    return swift_willThrow();
  }

  v59 = a3;
  v60 = v5;
  v56 = v13;
  v57 = a4;
  v58 = v12;
  v18 = *v6;
  v19 = *(*v6 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v18 + 32) = v19;
  v66 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    *(v18 + 32) = v19;
  }

  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  if (v22 >= v21 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
  }

  v64 = &type metadata for _CodingKey;
  v55 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v65 = v55;
  v23 = swift_allocObject();
  *&v63 = v23;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  *(v23 + 16) = v17;
  *(v23 + 40) = 2;
  *(v19 + 2) = v22 + 1;
  outlined init with take of Equatable(&v63, &v19[40 * v22 + 32]);
  *(v18 + 32) = v19;
  if (v17 < 0)
  {
    __break(1u);
  }

  else if (v17 < *(v16 + 16))
  {
    outlined init with copy of Any(v16 + 32 * v17 + 32, v62);
    v24 = v66;
    if (v66 == &type metadata for Date)
    {
      v37 = v60;
      __PlistDictionaryDecoder.unbox(_:as:)(v62, &v63);
      if (v37)
      {
        goto LABEL_19;
      }

      __swift_destroy_boxed_opaque_existential_1(v62);
      *&v61[0] = v63;
      BYTE8(v61[0]) = BYTE8(v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    }

    else
    {
      if (v66 != &type metadata for Data)
      {
        v54 = v6;
        outlined init with copy of Any(v62, &v63);
        outlined init with copy of Any(&v63, v61);
        v6 = (v18 + 16);
        v19 = *(v18 + 16);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        *(v18 + 16) = v19;
        if (v25)
        {
          goto LABEL_11;
        }

        goto LABEL_29;
      }

      v38 = v60;
      v39 = specialized __PlistDictionaryDecoder.unbox(_:as:)(v62);
      if (v38)
      {
LABEL_19:
        __swift_destroy_boxed_opaque_existential_1(v62);
        return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v6);
      }

      v42 = v39;
      v43 = v40;
      __swift_destroy_boxed_opaque_existential_1(v62);
      *&v63 = v42;
      *(&v63 + 1) = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
    }

    v44 = swift_dynamicCast();
    v41 = *(a2 - 8);
    (*(v41 + 56))(v15, v44 ^ 1u, 1, a2);
LABEL_23:
    if ((*(v41 + 48))(v15, 1, a2) == 1)
    {
      (*(v56 + 8))(v15, v58);
      v45 = type metadata accessor for DecodingError();
      swift_allocError();
      v47 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v47 = v24;
      v48 = *(v18 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_181218E20;
      v50 = v55;
      *(v49 + 56) = &type metadata for _CodingKey;
      *(v49 + 64) = v50;
      v51 = swift_allocObject();
      *(v49 + 32) = v51;
      *(v51 + 16) = v17;
      *(v51 + 24) = 0;
      *(v51 + 32) = 0;
      *(v51 + 40) = 2;
      *&v63 = v48;

      specialized Array.append<A>(contentsOf:)(v49);
      *&v63 = 0;
      *(&v63 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      *&v63 = 0x6465746365707845;
      *(&v63 + 1) = 0xE900000000000020;
      v52 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v52);

      MEMORY[0x1865CB0E0](0xD000000000000018, 0x80000001814857C0);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6B08], v45);
      swift_willThrow();
    }

    else
    {
      (*(v41 + 32))(v57, v15, a2);
      v6[3] = v17 + 1;
    }

    return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v6);
  }

  __break(1u);
LABEL_29:
  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
  *v6 = v19;
LABEL_11:
  v27 = *(v19 + 2);
  v26 = *(v19 + 3);
  if (v27 >= v26 >> 1)
  {
    *v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v19);
  }

  __swift_destroy_boxed_opaque_existential_1(&v63);
  v28 = *(v18 + 16);
  *(v28 + 16) = v27 + 1;
  outlined init with take of Any(v61, (v28 + 32 * v27 + 32));
  *(v18 + 16) = v28;
  v64 = type metadata accessor for __PlistDictionaryDecoder();
  v65 = lazy protocol witness table accessor for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder(&lazy protocol witness table cache variable for type __PlistDictionaryDecoder and conformance __PlistDictionaryDecoder);
  *&v63 = v18;

  v24 = v66;
  v29 = v60;
  dispatch thunk of Decodable.init(from:)();
  if (!v29)
  {
    v41 = *(a2 - 8);
    (*(v41 + 56))(v15, 0, 1, a2);
    specialized _PlistDecodingStorage.popContainer()();
    __swift_destroy_boxed_opaque_existential_1(v62);
    v6 = v54;
    goto LABEL_23;
  }

  specialized _PlistDecodingStorage.popContainer()();
  __swift_destroy_boxed_opaque_existential_1(v62);
  v6 = v54;
  return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v6);
}

uint64_t _PlistDictionaryUnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = *v1;
  v3 = v1[3];
  v4 = *(*v1 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 32) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    *(v2 + 32) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  v30 = &type metadata for _CodingKey;
  v31 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v8 = swift_allocObject();
  *&v29 = v8;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = v3;
  *(v8 + 40) = 2;
  v4[2] = v7 + 1;
  result = outlined init with take of Equatable(&v29, &v4[5 * v7 + 4]);
  *(v2 + 32) = v4;
  v10 = v1[1];
  if (v3 >= *(v10 + 16))
  {
    v11 = type metadata accessor for DecodingError();
    swift_allocError();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v13 = type metadata accessor for KeyedDecodingContainer();

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B08], v11);
    swift_willThrow();
    return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v1);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    outlined init with copy of Any(v10 + 32 * v3 + 32, &v29);
    outlined init with copy of Any(&v29, &v26);
    if (swift_dynamicCast())
    {
      if (v24 == 0x6C6C756E24 && v25 == 0xE500000000000000)
      {

LABEL_13:
        v15 = type metadata accessor for DecodingError();
        swift_allocError();
        v17 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
        *v17 = type metadata accessor for KeyedDecodingContainer();

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B08], v15);
        goto LABEL_17;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_13;
      }
    }

    outlined init with copy of Any(&v29, &v26);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    if (swift_dynamicCast())
    {
      v1[3] = v3 + 1;
      v19 = *(v2 + 32);
      v26 = v2;
      v27 = v24;
      v28 = v19;
      type metadata accessor for _PlistDictionaryKeyedDecodingContainer();

      swift_getWitnessTable();
      KeyedDecodingContainer.init<A>(_:)();
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(&v29);
      return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v1);
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v26 = 0xD000000000000035;
    v27 = 0x8000000181481DA0;
    v23 = specialized static DecodingError._typeDescription(of:)(&v29);
    MEMORY[0x1865CB0E0](v23);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v22 = v18;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t _PlistDictionaryUnkeyedDecodingContainer.nestedUnkeyedContainer()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = *(*v1 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 32) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
    *(v3 + 32) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
  }

  v31 = &type metadata for _CodingKey;
  v32 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
  v9 = swift_allocObject();
  *&v30 = v9;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = v4;
  *(v9 + 40) = 2;
  v5[2] = v8 + 1;
  result = outlined init with take of Equatable(&v30, &v5[5 * v8 + 4]);
  *(v3 + 32) = v5;
  v11 = v1[1];
  if (v4 >= *(v11 + 16))
  {
    v12 = type metadata accessor for DecodingError();
    swift_allocError();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6B08], v12);
    swift_willThrow();
    return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v1);
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    outlined init with copy of Any(v11 + 32 * v4 + 32, &v30);
    outlined init with copy of Any(&v30, &v28);
    if (swift_dynamicCast())
    {
      if (v26 == 0x6C6C756E24 && v27 == 0xE500000000000000)
      {

LABEL_13:
        v16 = type metadata accessor for DecodingError();
        swift_allocError();
        v18 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
        *v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss24UnkeyedDecodingContainer_pMd);

        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
        goto LABEL_17;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_13;
      }
    }

    outlined init with copy of Any(&v30, &v28);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
    if (swift_dynamicCast())
    {
      v1[3] = v4 + 1;
      v20 = *(v3 + 32);
      a1[3] = &unk_1EEEECCD0;
      a1[4] = lazy protocol witness table accessor for type _PlistDictionaryUnkeyedDecodingContainer and conformance _PlistDictionaryUnkeyedDecodingContainer();
      v21 = swift_allocObject();
      *a1 = v21;
      v21[2] = v3;
      v21[3] = v26;
      v21[4] = v20;
      v21[5] = 0;

LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(&v30);
      return $defer #1 () in _PlistDictionaryUnkeyedDecodingContainer.decode(_:)(v1);
    }

    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v28 = 0xD000000000000028;
    v29 = 0x8000000181481D20;
    v25 = specialized static DecodingError._typeDescription(of:)(&v30);
    MEMORY[0x1865CB0E0](v25);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v24 = v19;

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

  __break(1u);
  return result;
}